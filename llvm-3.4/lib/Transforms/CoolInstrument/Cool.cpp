#include <cassert>
#include <stdlib.h>
#include "llvm/ADT/StringRef.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Pass.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/DebugInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/LegacyPassManager.h"
#include <unordered_map>
#include <string>
#include <iostream>
#include <sstream>
#include <fstream>
#include <vector>
#include <map>
#include <regex>
#include <set>
#include <memory>

using namespace llvm;
using std::string;
using std::vector;
using std::unordered_map;
using std::map;
using std::pair;
using std::regex;
using std::set;
using std::unique_ptr;
using std::endl;
using std::ofstream;
using std::stringstream;

#define DEBUG_TYPE "Cool"
#ifdef DEBUG_OUTPUT
#define COOL_DEBUG(stmt) stmt
#else
#define COOL_DEBUG(stmt) 
#endif


namespace {

enum class IPoint {
  Before, After, Nowhere
};

enum AddressSpace{
  GENERIC = 0,
  GLOBAL  = 1,
  CONSTANT = 2,
  SHARED   = 3,
  PARAM    = 4,
  LOCAL    = 5,
  NUM_ADDRESSSPACES
};


inline void println(string msg, Value * v) {
  #ifdef DEBUG_OUTPUT
  errs()<< msg;
  v->print(errs());
  errs()<< "\n"; 
  #endif
}

inline void println(string msg) {
  COOL_DEBUG(errs() << msg << "\n");
}

inline void println(stringstream ss) {
  COOL_DEBUG(errs() << ss.str() << "\n");
}


class AtomicsSearcher {
  unique_ptr<ofstream> logger;
  int nvvmAtomicsFound;
  int llvmAtomicsFound;
public:
  static const regex RegexOfAtomics;
  AtomicsSearcher(const string & moduleFileName): 
    logger(new ofstream(moduleFileName+".atomics")),  
    nvvmAtomicsFound(0), llvmAtomicsFound(0) {
  } 
  ~AtomicsSearcher() {
    std::cerr << "Found " << nvvmAtomicsFound << " nvvm atomic calls\n";
    *logger <<  "Found " << nvvmAtomicsFound << " nvvm atomic calls\n";
    std::cerr << "Found " << llvmAtomicsFound << " llvm atomic calls\n";
    *logger <<  "Found " << llvmAtomicsFound << " llvm atomic calls\n";

  }
  template<typename InstType>
  void inspect(const InstType * _inst) {
    llvmAtomicsFound += _inst -> isAtomic(); 
  }
  void inspect(const CallInst * _callInst) {
    auto _func = _callInst->getCalledFunction();
    if (!_func) {
      //std::cerr << "Encountered a call to null function" << endl;
      return;
    }
    string funcName = _func->getName();
    if (regex_match(funcName, RegexOfAtomics)) {
      *logger << "found atomic call to " << funcName << endl;
      std::cerr << "found atomic call to " << funcName << endl;
      nvvmAtomicsFound++;
    }
  }
};


struct MemHooks{
  Function * rdHook;
  Function * wrHook;

  MemHooks():rdHook(nullptr), wrHook(nullptr) {
  }
  MemHooks( Function * rh, Function * wh ): rdHook(rh), wrHook( wh) {
  }
  void init(Function * rh, Function *wh ){
    rdHook = rh;
    wrHook = wh;
  }
};

std::string to_string(const IPoint & ip) {
  switch(ip) {
  case IPoint::Before:
    return "before";
  case IPoint::After:
    return "after";
  case IPoint::Nowhere:
  default:
    return "nowhere";
  }
}

std::istream & operator>>( std::istream & is, IPoint & ip) {
  string str="";
  is>>str;
  if(str=="before") {
    ip=IPoint::Before;
  } else if (str=="after") {
    ip=IPoint::After;
  } else {
    ip=IPoint::Nowhere;
  }
  return is;
}

llvm::raw_ostream & operator<<( llvm::raw_ostream & os, IPoint & ip) {
  os<<to_string(ip);
  return os;
}

bool matchesAny(set<std::pair<string, IPoint>> & s, string & str, IPoint ip) {
  for(auto it=s.begin(); it != s.end(); it++) {
    if(it->second==ip && std::regex_match(str, regex(it->first, std::regex_constants::basic))) {
      return true;
    }
  }
  return false;
}
bool matchesAny(set<std::pair<string, IPoint>> & s, std::pair< string, IPoint> & p ) {
  return matchesAny(s, p.first, p.second);
}

struct FunctionStats{
  vector<size_t> rdHooksInserted;
  vector<size_t> wrHooksInserted;
  FunctionStats(): rdHooksInserted(NUM_ADDRESSSPACES), wrHooksInserted(NUM_ADDRESSSPACES) {
  }
};

// Some terminologies:
//  Target Function : a function to be instrumented
//  Hook Function   : a function to be inserted at the call site of a target function   
//  FptrParamIndex  : the index of some (parameter with a function pointer type ) of a function 

class Cool : public ModulePass {
 public:
  static char ID; // Pass identification, replacement for typeid
 private:
  // analysis to list all calls to atomic functions
  unique_ptr<AtomicsSearcher> atomicsSearcher;

  // special hook functions
  Function *VolatileMemReadHook;
  Function *VolatileMemWriteHook;
  Function *GlobalMemReadHook;
  Function *GlobalMemWriteHook;
  Function *SharedMemReadHook;
  Function *SharedMemWriteHook;
  Function *GenericMemReadHook;
  Function *GenericMemWriteHook;

 Function *InitHook;
  Function *FinishHook;
  Function *ThreadStartHook;
  MemHooks memHooks[NUM_ADDRESSSPACES];
  map< string, GlobalVariable * > fnameGVs;
  // which function calls need to be instrumented and where to insert the hooks
  // e.g. < "foo", IPoint::Before > means a hook needs to be inserted before 
  // each call to foo()
  set< std::pair<string, IPoint> > insertionPoints; 
  // mapping from a target function(f)'s name fname to a FptrParamIndex idx 
  // we'll resolve the function f' correponding to idx in each 
  // call of fname and replace the fptr to f' with a fptr to a wrapper
  // function of f', such that the wrapper function calls 
  // ThreadStartHook before calling f      
  // FIXME: do we need a ThreadExitHook as well? 
  map< string, int > fptrParamIndicesToWrap;
  // hooks to be inserted at each insertion point 
  map<std::pair<string, IPoint>, Function * > hooksMap;
  static const vector<regex> IgnoredFiles;
  static const vector<regex> IgnoredFunctions;
  static const string HOOK_PREFIX;
  static const string HOOK_SUFFIX;
  static const int SAMPLING_RATIO;
  map<string, FunctionStats> functionStats;
  map<string, size_t> fileStats;
  size_t nAccesses;
  typedef unordered_map<Value *, AddressSpace> AddressSpaceMap;
  AddressSpaceMap globalAddrSpaceInfo;
  unordered_map<Function *, AddressSpaceMap> functionsAddrSpaceInfo;
  inline void analyzeAddressSpace(Module & M) {
    for (auto & g : M.getGlobalList()) {
      auto ptrType = g.getType();
      auto addrSpace = ptrType->getAddressSpace();
      globalAddrSpaceInfo[&g] = static_cast<AddressSpace>(addrSpace);
      COOL_DEBUG(errs() << "v:" << g.getName() << ", " << addrSpace << "\n");
    }

    for (auto F = M.begin(), E = M.end(); F != E; F++) {
      analyzeAddressSpace(*F);
    }
  }
  inline Value * findSrc(Value * v) {
    auto p = v;
    while (isa<ConstantExpr>(p)) {
      auto expr = dyn_cast<ConstantExpr>(p);
      auto op = expr->getOpcode();
      switch(op) {
        case Instruction::GetElementPtr:
        case Instruction::AddrSpaceCast:
          p = expr->getOperand(0);
          break;
        default:
          println("unsupported op:", p);
          return p;
      } 
    }
    println("found src:", p);
    return p;
  }
  inline void analyzeAddressSpace(Function & F) {
    assert(!functionsAddrSpaceInfo.count(&F));
    functionsAddrSpaceInfo[&F] = AddressSpaceMap();
    auto & fAddrSpaceMap = functionsAddrSpaceInfo[&F];
    for (auto BB = F.begin(), BE = F.end(); BB != BE; BB++) {
      for (auto BI = BB->begin(), BIE = BB->end(); BI != BIE; BI++) {
        if (isa<AllocaInst>(*BI)) { 
          auto _allocaInst = dyn_cast<AllocaInst>(&*BI);
          auto addressSpace = static_cast<AddressSpace>(
            _allocaInst -> getType()->getAddressSpace()
          );
          // NB: local allocated memory shouldn't be generic; they should be local instead
          if (addressSpace == GENERIC) {
            addressSpace = LOCAL;
          }
          fAddrSpaceMap[_allocaInst] = addressSpace;
          COOL_DEBUG(errs()<< "lv:" << _allocaInst -> getName() << ", " << addressSpace << "\n");
        } else if (isa<GetElementPtrInst>(*BI)) {
          auto _gepInst = dyn_cast<GetElementPtrInst>(&*BI);
          auto ptr = _gepInst->getPointerOperand();
          ptr = findSrc(ptr);
          auto addrS = ptr->getType()->getPointerAddressSpace();
          auto addressSpace = lookupAddressSpace(F, ptr, addrS);
          fAddrSpaceMap[_gepInst] = addressSpace;
         
          COOL_DEBUG(errs()<< "gep:" <<_gepInst->getName() << ", " << addressSpace);
          println(" from ", ptr);
          println("gep insn:", &*BI);
        } else if (isa<AddrSpaceCastInst>(*BI)) {
          auto _castInst = dyn_cast<AddrSpaceCastInst>(&*BI);
          auto destAddrS = _castInst->getDestTy()->getPointerAddressSpace();
          auto ptr = _castInst->getOperand(0);
          ptr = findSrc(ptr);
          auto srcAddrS = ptr->getType()->getPointerAddressSpace();
          COOL_DEBUG(errs()<< "found addrspacecast:" << _castInst->getName() << ", " << ptr->getName() << "\n");
          if (destAddrS == GENERIC) { // recover potentially more specific address space info
            fAddrSpaceMap[_castInst] = static_cast<AddressSpace>(srcAddrS);
            COOL_DEBUG(errs()<< "addrspacecast:" << srcAddrS << ", from " << ptr->getName() << "; would be " << destAddrS << "\n");
          }
        }
        
      }
    }
  }

  inline AddressSpace lookupAddressSpace(Function &F, Value * val, unsigned int addrS) {
    auto addrSpace = static_cast<AddressSpace>(addrS);
    auto itFmap = functionsAddrSpaceInfo.find(&F);
    assert(itFmap != functionsAddrSpaceInfo.end());
    auto & fAddrSpaceMap = itFmap->second;
    auto it = globalAddrSpaceInfo.find(val);
    auto result = (it == globalAddrSpaceInfo.end() || addrSpace > it->second)? addrSpace: it->second;
    it = fAddrSpaceMap.find(val);
    result = (it == fAddrSpaceMap.end() || result > it->second)? result: it->second;
    if (result != addrSpace) {
      COOL_DEBUG(errs() << "found a different addrSpace for " << val->getName() << ":" << result << "\n");
    }
    return result;
  }
  
  template<bool isRd = true>
  inline void recordFuncStat(string funcName, unsigned int addrSpace) {
    if (!functionStats.count(funcName)) {
      functionStats[funcName] = FunctionStats();
    }
    if (isRd) {
      functionStats[funcName].rdHooksInserted[addrSpace]++;
    } else {
      functionStats[funcName].wrHooksInserted[addrSpace]++;
    }
  }

  inline void recordFileStat(string fileName) {
    if (!fileStats.count(fileName)) {
      fileStats[fileName] = 0;
    }
    fileStats[fileName]++;
  }

  inline void printFuncStats() {
    auto tag = "__nb__funcStats";
    errs() << tag << ",\tFunction,\tSMemRdHooks,\tSMemWrHooks,\tGMemRdHooks,\tGMemWrHooks,\tGenMemRdHooks,\tGenMemWrHooks,\tOthers\n";
    for (auto it = functionStats.begin(), e = functionStats.end(); 
      it != e; it++) {
      size_t all = 0;
      for (auto as = 0; as < NUM_ADDRESSSPACES; as++) {
        all += it -> second.rdHooksInserted[as] + it -> second.wrHooksInserted[as];
      }
      auto smRds = it -> second.rdHooksInserted[SHARED];
      auto smWrs = it -> second.wrHooksInserted[SHARED];
      auto gmRds = it -> second.rdHooksInserted[GLOBAL];
      auto gmWrs = it -> second.wrHooksInserted[GLOBAL];
      auto genRds = it -> second.rdHooksInserted[GENERIC];
      auto genWrs = it -> second.wrHooksInserted[GENERIC];
      auto others = all - smRds - smWrs - gmRds - gmWrs - genRds - genWrs;
      errs() << tag << ",\t" << it->first <<",\t" << smRds << ",\t" << smWrs << ",\t" 
        << gmRds << ",\t" << gmWrs << ",\t" << genRds << ",\t" << genWrs << ",\t"<< others << "\n"; 
    }
  }
  
  inline void printFileStats() {
    auto tag = "__nb__fileStats";
    errs() << tag << ",\tFile,\tMemHooksInserted\n";
    for (auto it = fileStats.begin(), e = fileStats.end(); it != e; it++) {
      errs() << tag << ",\t" << it -> first << ",\t" << it -> second << "\n";
    }
  }
  
  // load the list of insertion points from file 
  void loadInsertionPoints() {
    using namespace std;
    ifstream configFile( CONFIG_FILENAME);
    if(configFile.is_open()) {
      while(!configFile.eof()) {
        string functionName = "";
        IPoint position = IPoint::Nowhere;
        // used only for instrumenting func in pthread_create( func )
        // specialFptrIndex specifies an index of the arguments.
        // args[specialFptrIndex] should be a valid function pointer.
        // the function pointed to will also be instrumented, but with a pre-defined handler.
        // if specialFptrIndex < 0, it will be ignored.

        int specialFptrIndex = -1;
        configFile >> functionName >> position >> specialFptrIndex;
        if( functionName.empty() || position == IPoint::Nowhere ) continue;
        pair< string, IPoint> insertionPoint = make_pair( functionName, position );
        assert( !insertionPoints.count( insertionPoint ) ); //don't allow duplicate functions
        insertionPoints.insert( insertionPoint );
        if( specialFptrIndex > 0 ) { // save ( funcName, argIndex ) to indicate the Fptr
          fptrParamIndicesToWrap[functionName] = specialFptrIndex;
          errs() << "need to resolve " << functionName << " : "<< specialFptrIndex << "\n";
        }
        errs()<<"need to add hook "<<position<<" "<<functionName<<"\n";
      }
      configFile.close();
    } else {
      errs()<<"cannot open file: "<<CONFIG_FILENAME<<"\n";
    }
  }
  static const std::string CONFIG_FILENAME;

  // load the special hooks from module M.
  void loadSpecialHooks(Module &M) {
    VolatileMemReadHook = getOrInsertSpecialHook(M, "VolatileMemRead", IPoint::Before, 2);
    VolatileMemWriteHook = getOrInsertSpecialHook(M, "VolatileMemWrite", IPoint::Before, 2);
    GlobalMemReadHook = getOrInsertMemHook(M, "GlobalMemRead", IPoint::Before);
    GlobalMemWriteHook = getOrInsertMemHook(M, "GlobalMemWrite", IPoint::Before);
    SharedMemReadHook  = getOrInsertMemHook(M, "SharedMemRead", IPoint::Before);
    SharedMemWriteHook = getOrInsertMemHook(M, "SharedMemWrite", IPoint::Before);
    GenericMemReadHook  = getOrInsertMemHook(M, "GenericMemRead", IPoint::Before);
    GenericMemWriteHook = getOrInsertMemHook(M, "GenericMemWrite", IPoint::Before);

    InitHook = getOrInsertSpecialHook(M, "Init", IPoint::Before, 0);
    FinishHook = getOrInsertSpecialHook(M, "Finish", IPoint::After, 0);
    ThreadStartHook = getOrInsertSpecialHook(M, "ThreadStart", IPoint::Before, 0 );
    memHooks[GENERIC].init(GenericMemReadHook, GenericMemWriteHook );
    memHooks[GLOBAL].init(GlobalMemReadHook, GlobalMemWriteHook );
    memHooks[SHARED].init(SharedMemReadHook, SharedMemWriteHook );
  }
  // find the hook function to be inserted before/after( depending on ipoint) 
  // calling originalName in module M.  If no such function is found in M, 
  // the hook function will be declared in M.  The hook function takes argc 
  // uint64_t arguments.   
  inline Function * getOrInsertSpecialHook(Module & M, string originalName,
    IPoint ipoint, size_t argc) {
    string functionName = getHookName( std::make_pair(originalName, ipoint));
    vector<Type *> argsVec;
    ArrayRef<Type *> args = buildUint64ArgsArray( M, argsVec, argc);
    Constant *InstFuncConst = M.getOrInsertFunction(functionName,
      FunctionType::get(Type::getVoidTy(M.getContext()), args, false));
    assert(InstFuncConst );
    Function * f = dyn_cast<Function>(InstFuncConst);
    assert( f );
    return f;
  }
  inline Function * getOrInsertMemHook(Module & M, string originalName,
    IPoint ipoint ) {
    auto & context = M.getContext();
    string functionName = getHookName( std::make_pair(originalName, ipoint));
    vector<Type *> argsVec={Type::getInt64Ty(context), Type::getInt8Ty(context),
      Type::getInt32Ty(context), Type::getInt8PtrTy(context) };
    ArrayRef<Type *> args( argsVec );
    Constant *InstFuncConst = M.getOrInsertFunction(functionName,
      FunctionType::get(Type::getVoidTy(context), args, false));
    assert(InstFuncConst );
    Function * f = dyn_cast<Function>(InstFuncConst);
    assert( f );
    return f;
  }
 
  // returns an ArrayRef to argc uint64 types 
  inline ArrayRef<Type*>  buildUint64ArgsArray(Module &M, 
    vector<Type *> & argsVec, size_t argc) {
    for(size_t i=0; i<argc; i++) {
      argsVec.push_back( Type::getInt64Ty(M.getContext()));
    }
    ArrayRef<Type*> args( argsVec );
    return args;
  }
  // get the name of a hook function as described by funcId 
  inline std::string getHookName(const std::pair<std::string,IPoint> & funcId) const {
    std::string mangledFuncName = funcId.first;
    // possible dots in the mangled name may get us in trouble
    std::replace( mangledFuncName.begin(), mangledFuncName.end(), '.', '_');
    return HOOK_PREFIX + mangledFuncName + "_" 
      + to_string( funcId.second ) + HOOK_SUFFIX;
  }
  inline static std::vector<Type *>  getParamsTypes( FunctionType * ft){
    std::vector<Type * > v;
    for(unsigned int i = 0; i < ft -> getNumParams(); i++ ){
      v.push_back( ft -> getParamType( i ) );
    }
    return v;
  }
  // get the type of the hook function of F
  inline FunctionType * getHookType( Module & M, Function & F, bool retValAsParam = false ){
    //std::vector<Type *> allParamsTypes = F.getFunctionType()->params().vec();
    std::vector<Type * > allParamsTypes = getParamsTypes( F.getFunctionType() );
    Type * retType = F.getFunctionType()->getReturnType();
    if(retValAsParam && !retType->isVoidTy()) {
      allParamsTypes.push_back(retType);
    }
    FunctionType * _funcType=FunctionType::get( Type::getVoidTy( M.getContext() ),
      ArrayRef<Type *>(allParamsTypes), false);
    return _funcType;
  }
  // find the hook function of F in the module and load it into hooksMap
  // if the hook function is not found, declare it in the module 
  void loadHook(Module& M, Function & F, string & funcName, 
    IPoint ip, bool retValAsParam=false) {
    pair<string,IPoint> funcId = make_pair(funcName, ip);
    if(// F needs to be instrumented
       matchesAny( insertionPoints, funcName, ip) 
      // the hook function for F hasn't been loaded 
      && hooksMap.count(funcId) == 0) {
      Constant * InstFuncConst = M.getOrInsertFunction( getHookName(funcId),
        getHookType( M, F, retValAsParam ));
      assert( InstFuncConst );
      Function * _hook = dyn_cast<Function> (InstFuncConst);
      hooksMap[funcId] = _hook;
      COOL_DEBUG(errs() << "loaded " << getHookName(funcId) << ": " << *(_hook->getFunctionType()) <<"\n");
    }
  }
 public:
  Cool() : ModulePass(ID), atomicsSearcher(nullptr) {
  }
  bool runOnModule(Module &M) {
    using namespace std;
    size_t prefixLen=HOOK_PREFIX.size();
    size_t suffixLen=HOOK_SUFFIX.size();
    bool modified = false;
    this->analyzeAddressSpace(M);
    this->atomicsSearcher.reset(new AtomicsSearcher(M.getModuleIdentifier()));
    // read the list of function calls to instrument from file
    loadInsertionPoints();
    // load the pre-defined special hook functions (e.g. MemRead/Write, Init )
    loadSpecialHooks(M);
    // first pass : load all hook functions for the target functions
    // since functions to instrument are specified via regexes,
    // we go over all functions in the module and match them against each regex
    // complexity : O( #F * |insertionPoints| )
    for(auto F = M.begin(), E = M.end(); F != E; F++) {
      string funcName=F->getName();
      
      loadHook(M, *F, funcName, IPoint::Before);
      loadHook(M, *F, funcName, IPoint::After, true);
    }
    // second pass : go over all functions and instrument at the call sites
    // of target functions
    for(auto F = M.begin(), E = M.end(); F != E; F++) {
      string funcName=F->getName();
      size_t funcNameSize=funcName.size();
      pair<string,IPoint> funcIdBefore=make_pair(funcName, IPoint::Before);
      pair<string,IPoint> funcIdAfter=make_pair(funcName, IPoint::After);
      // do not go inside the body of the functions that we want to intercept
      if(matchesAny( insertionPoints, funcIdBefore)
          ||matchesAny( insertionPoints, funcIdAfter)>0
          // ignore functions of our runtime library,
          // although normally they shouldn't be present in any user module
          ||funcName.substr(0,prefixLen)==HOOK_PREFIX
          ||(funcNameSize>suffixLen&&funcName.substr(funcNameSize-suffixLen,suffixLen)==HOOK_SUFFIX)) {
        continue;
      }
      auto skip = false;
      // filter out functions that shouldn't be instrumented
      for (auto it = IgnoredFunctions.begin(), e = IgnoredFunctions.end(); 
        it != e; it++) {
        if (regex_match(funcName, *it)) {
          skip = true;
          break;
        }
      }
      if (skip) {
        continue;
      }
      // instrument each nomral function
      for(auto BB = F->begin(), BE = F->end(); BB != BE; ++BB) {
        modified |= instrumentBasicBlock(M, *F, *BB);
      }

      // insert initializer/finalizer to the body of  main()
      // FIXME: what if main() is executed multiple times in the program
      //  (e.g. recursive main)?
      // for initializers, we can ensure initialization is only done once, while
      // counting the times main() is called and how many calls to main()
      // have not returned; for finalizers, we can update the count
      // but cannot know whether main() will be called in the future.
      // So we shouldn't allow multiple calles to main() if
      // the finalizer is non-empty?
      if( funcName == "main" ) {
        IRBuilder<> Builder(M.getContext());
        // the first basic block inside main()
        auto BB = F->begin();
        // the first instruction in BB
        auto BI = BB->begin();
        Builder.SetInsertPoint(&(*BB),BI);
        Builder.CreateCall(InitHook);

        auto BE = F->end();
        // the last basic block inside main()
        BE--;
        BI=BE->end();
        // the last instruction of BE
        // what if main() is empty? this shouldn't happen, as a well-formed
        // function in LLVM IR needs to at least have a ret instruction.
        BI--;
        Builder.SetInsertPoint(&(*BE),BI);
        Builder.CreateCall(FinishHook);
      }
    }
    
    printFuncStats(); 
    printFileStats();

    return modified;
  }
  // insert a call to _hook at block::BI
  inline void addMemHook(Value * addr, size_t width, Function * _hook, Module & M, 
    BasicBlock & block, BasicBlock::iterator & BI) {
    nAccesses++;
    if (nAccesses % SAMPLING_RATIO != 0) {
      return;
    }
    auto & context = M.getContext();
    IRBuilder<> Builder( context );
    Builder.SetInsertPoint( &block, BI);
    // convert the memory address into an uint64_t
    Value *castResult = Builder.CreatePtrToInt( addr,Type::getInt64Ty(context));
    assert( castResult );
    Constant * c = ConstantInt::get( Type::getInt8Ty(context), width );
    MDNode * _md = BI -> getMetadata("dbg");
    string fname;
    int lineNo = 0;
    if (_md ){
      DILocation diLoc(_md);
      fname =  diLoc.getFilename();
      lineNo = diLoc.getLineNumber();
      recordFileStat(fname);
    } 
    if( !fnameGVs.count( fname )){
      Constant * strVal = ConstantDataArray::getString( context, fname);
      fnameGVs[fname] = new GlobalVariable( M, strVal -> getType(), true,
        GlobalValue::LinkerPrivateLinkage, strVal, "" );
    }
    auto lnc = ConstantInt::get( Type::getInt32Ty( context ), lineNo );
    auto cast = Builder.CreatePointerCast( fnameGVs[fname], Builder.getInt8PtrTy() );
    vector<Value *> args ={ castResult, c, lnc, cast };
    Builder.CreateCall( _hook, ArrayRef<Value*>(args) );
  }
  // build arguments for a hook function : copy the arguments of the callInst
  // first, then append the return value of callInst as the last argument,
  // if the return value is requested and is not of void type
  inline ArrayRef<Value *> buildHookArgs( Module & M, CallInst * callInst, 
    vector<Value *> & argsVec, bool retValAsParam) {
    //Type * retType = callInst -> getFunctionType() -> getReturnType();
    Type * retType = callInst -> getCalledFunction() -> getFunctionType() ->getReturnType();
    unsigned int argc = callInst -> getNumArgOperands();
    for(unsigned int i=0; i<argc; i++) {
      argsVec.push_back( callInst->getArgOperand(i) );
    }
    // add the return value of the callInst as the last argument
    if( retValAsParam && !retType->isVoidTy()) {
      argsVec.push_back( callInst);
    }
    ArrayRef<Value *> args( argsVec );
    return args;
  }

  // if a hook for F needs to be inserted before/after calling F, insert it.
  void insertHook(Module & M, Function & F, BasicBlock & block,
    CallInst * _callInst, BasicBlock::iterator BI, StringRef funcName,
    IPoint ipoint, bool retValAsParam=false) {
    using namespace std;
    pair<string,IPoint> insertPoint = make_pair(funcName, ipoint);
    auto it = hooksMap.find( insertPoint );
    if(it!= hooksMap.end()) {
      Function * _hook =it->second;
     
      //NB: insert before/after the current callInst
      IRBuilder<> Builder( M.getContext() );
      Builder.SetInsertPoint( &block, BI);
      vector< Value *> argsVec;
      Builder.CreateCall( _hook, 
        buildHookArgs( M, _callInst, argsVec, retValAsParam) );
      // check whether any FptrParamIndex exists and needs to be wrapped 
      auto it = fptrParamIndicesToWrap.find( funcName );
      if( it != fptrParamIndicesToWrap.end() ) {
        int idx = it -> second;
        assert( idx >= 0 );
        Value * _v = _callInst -> getArgOperand( idx );
        assert( _v );
        Function * _wrapper = loadWrapperFor( M, _v -> getName() );
        // replace the original Fptr with ptr to the wrapper
        _callInst -> setArgOperand( idx, _wrapper );
      }
    }
  }
  // load the wrapper function for funcName in M  
  Function * loadWrapperFor( Module & M, const string & funcName ){
    COOL_DEBUG(errs() << "loading wrapper for  " << funcName << "\n");
    // find/create the wrapper for specialFunc
    string wrapperName = "_Wrapper_" + funcName;
    Function * _wrapper = M.getFunction( wrapperName );
    // define the wrapper in M if it's not found
    if(!_wrapper ) {
      // get the target function to be replaced  
      Function * _func = M.getFunction( funcName );
      // the target function must have been declared in M: otherwise it 
      // cannot have been referencedly without error 
      assert( _func );
     /* std::vector<Type *> allParamsTypes= _specialFunc -> getFunctionType()->params().vec();
      Type * retType= _specialFunc -> getFunctionType()->getReturnType();*/
      // the wrapper has the same type signature as the original function
      FunctionType * _funcType = _func -> getFunctionType(); 
    //FunctionType::get( retType, ArrayRef<Type *>(allParamsTypes), false);
      _wrapper = Function::Create( _funcType,
        Function::InternalLinkage, wrapperName, &M );
      BasicBlock * _block = BasicBlock::Create( M.getContext(), "entry", _wrapper );
      vector< Value *> wrapperArgsVec ;
      // forward the args of the wrapper to the target function 
      for( auto arg = _wrapper -> arg_begin(); _wrapper -> arg_end() != arg; arg++) {
        wrapperArgsVec.push_back( &*arg );
      }
      ArrayRef<Value *> wrapperArgs( wrapperArgsVec );
      IRBuilder<> Builder( M.getContext() );
      Builder.SetInsertPoint( _block );
      Builder.CreateCall( ThreadStartHook );
      // call the target function 
      CallInst * _sfCallInst = Builder.CreateCall( _func, wrapperArgs   );
      Builder.CreateRet( _sfCallInst );
    }
    return _wrapper;
  }
  inline bool shouldInstrument(AddressSpace addrSpace) {
    if (addrSpace != GENERIC && addrSpace != GLOBAL && addrSpace != SHARED) {
      COOL_DEBUG(errs() << "Ignored address space:" << addrSpace << "\n");
      return false;
    }
    return true;
  }
  // instrument block in function F of module M
  bool instrumentBasicBlock(Module &M, Function &F, BasicBlock &block) {
    using namespace std;
    bool modified = false;
    string funcName = F.getName();
    DataLayout dataLayout( &M );
    for(auto BI=block.begin(), BE=block.end(); BI != BE; ++BI) {
      MDNode * _md = BI -> getMetadata("dbg");
      DILocation diLoc(_md);
      string fname =  diLoc.getFilename();
      // filter out files that shouldn't be instrumented
      for (auto it = IgnoredFiles.begin(), e = IgnoredFiles.end(); 
        it != e; it++) {
        if (regex_match(fname, *it)) {
          return modified;
        }     
      }

      Instruction * _ins = &(*BI);
      if(isa<LoadInst>( _ins )) { // insert hooks for read events
        LoadInst *loadInst = dyn_cast<LoadInst>( _ins);
        this->atomicsSearcher->inspect(loadInst);
        Value *addr = loadInst->getPointerOperand();
        size_t width = dataLayout.getTypeAllocSize( addr -> getType()
          -> getPointerElementType() );
        //ignore "volatile" for now
       /*Function * _hook = loadInst -> isVolatile() ? VolatileMemReadHook : MemReadHook;*/
        
        //auto addrSpace = static_cast<AddressSpace>(loadInst -> getPointerAddressSpace());
        auto srcAddr = findSrc(addr);
        auto addrSpace = static_cast<AddressSpace>(srcAddr->getType()->getPointerAddressSpace());
        addrSpace = this->lookupAddressSpace(F, addr, addrSpace);
        if (!shouldInstrument(addrSpace)) {
          continue;
        }
        Function * _hook = memHooks[addrSpace].rdHook; 
        recordFuncStat(funcName, addrSpace);
        
        addMemHook(addr, width, _hook, M, block, BI);
      } else if(isa<StoreInst>( _ins )) { // insert hooks for write events
        StoreInst *storeInst = dyn_cast<StoreInst>( _ins );
        this->atomicsSearcher->inspect(storeInst);
        Value *addr = storeInst->getPointerOperand();
        size_t width = dataLayout.getTypeAllocSize( addr -> getType()
          -> getPointerElementType() );
        //ignore "volatile" for now
       /* Function * _hook = storeInst -> isVolatile() 
          ? VolatileMemWriteHook : MemWriteHook;*/
        //auto addrSpace = static_cast<AddressSpace>(storeInst -> getPointerAddressSpace());
        auto srcAddr = findSrc(addr);
        auto addrSpace = static_cast<AddressSpace>(srcAddr->getType()->getPointerAddressSpace());
        addrSpace = this->lookupAddressSpace(F, addr, addrSpace);
        if (!shouldInstrument(addrSpace)) {
          continue;
        }
        Function * _hook = memHooks[addrSpace].wrHook;
        recordFuncStat<false>(funcName, addrSpace);
        addMemHook(addr, width, _hook, M, block, BI);
      } else if(isa<CallInst>( _ins )) {
        CallInst *_callInst = dyn_cast<CallInst>( _ins );
        this->atomicsSearcher->inspect(_callInst);
        Function *function = _callInst->getCalledFunction();
        if( function ) {
          // insert hooks before/after the call site 
          insertHook(M, F, block, _callInst, BI, 
            function->getName(), IPoint::Before);
          BasicBlock::iterator BIN=BI;
          BIN++;
          insertHook(M, F, block, _callInst, BIN,
            function->getName(), IPoint::After, true);
        }
      } else {
        //ignore other instructions
      }
    }
    return modified;
  }
};// end class Cool


// register this pass with the legacy PassManager, so that we can have 
// clang automatically apply this pass if we want
static void registerCool(const PassManagerBuilder &,
                         legacy::PassManagerBase &PM) {
  PM.add(new Cool());
}

static RegisterStandardPasses RegisterCool( 
  PassManagerBuilder::EP_EnabledOnOptLevel0, registerCool);

const regex AtomicsSearcher::RegexOfAtomics= regex("llvm\\.nvvm\\.(atomic|membar)\\..*");
const vector<regex> Cool::IgnoredFunctions = {
  regex("cudaMalloc|cudaFree"),
  regex("cudaGetDevice|cudaDeviceGetAttribute"),
  regex("cudaFuncGetAttributes"),
  regex("cudaOccupancyMaxActiveBlocksPerMultiprocessor.*")/*,
  regex("__.*")*/
};

const vector<regex> Cool::IgnoredFiles = {
  regex("/usr/include/c++.*"),
  regex("/usr/local/cuda.*"),
  regex("/opt/nvidia8/.*"),
};

const string Cool::HOOK_PREFIX="__curd__";
const string Cool::HOOK_SUFFIX="Hook";
const string Cool::CONFIG_FILENAME="functions.config";
const int Cool::SAMPLING_RATIO = 1;
char Cool::ID = 0;
static RegisterPass<Cool> X("Cool", "Cool Compiler Pass");

}// end namespace  

