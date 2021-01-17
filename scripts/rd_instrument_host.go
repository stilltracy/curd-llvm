package main
import(
  "os"
  "fmt"
  "path/filepath"
  "regexp"
  "bufio"
  "io/ioutil"
  "strconv"
  "os/exec"
  "strings"
  "unicode"
)

func genCondCompileStub(ifBranch string, elseBranch string) string{
  return "#ifdef ENABLE_CURD\n" + ifBranch + "\n#else\n" + elseBranch + "\n#endif\n";
}

const INCLUDE_STUB = "#include<curd_lib_host.h>"
const ALLOC_MACRO_STUB ="#define CURD_ALLOC(a, b) allocateReadWriteSets(a, b)"
const FREE_MACRO_STUB ="#define CURD_FREE(a, b) freeReadWriteSets(a, b)"
const NOOP_STUB ="#define CURD_ALLOC(a, b) \n#define CURD_FREE(a, b) \n"
var HOOKS_DEF_STUB = genCondCompileStub(ALLOC_MACRO_STUB + "\n" + FREE_MACRO_STUB, NOOP_STUB)

func findLastToken(str string, i int) int {
  j := i - 1
  for ;j >= 0; j-- {
    if !unicode.IsSpace(int32(str[j])) {
      return int(str[j])
    }
  }
  return 0
}

func parseParams(params string) []string {
  // we assume commas only appear in parens 
  parsedParams := make([]string, 0)
  sIdx := 0
  level := 0
  for i, elem := range params {
    if elem == '(' {
      level++
    } else if elem == ',' && level == 0 {
      // a comma is considered to be part of the next parameter
      parsedParams = append(parsedParams, params[sIdx: i])
      sIdx = i
    } else if elem == ')' {
      level--
    }
  }
  if sIdx < len(params) {
    parsedParams = append(parsedParams, params[sIdx: len(params)])
  }
  return parsedParams
}

func instrumentCudaFile(fileName string) {
  fmt.Print("instrumenting :"+ fileName +"\n")
  srcData, err1 := ioutil.ReadFile(fileName)
  check(err1)
  srcString := string(srcData)
  //fmt.Print(srcString)
  KERNELLAUNCH_REGEX := regexp.MustCompile(`([^{};]+\s*<\s*<\s*<)([^;]+)(\s*>\s*>\s*>[^;]+;)`)
  //KERNELLAUNCH_REGEX := regexp.MustCompile(`(.*)(<<<)(.*,.*)(\s*[,|>>>])`)
  callStmts := KERNELLAUNCH_REGEX.FindAllString(srcString, -1)
  callTrans := make(map[string]string)
  for i :=0; i< len(callStmts) ; i++ {
    stmt := callStmts[i]
    submatches := KERNELLAUNCH_REGEX.FindStringSubmatch(stmt)
    params := submatches[2]
    parsedParams := parseParams(params)
    curdParams :=  parsedParams[0] + parsedParams[1]
    callTrans[stmt] = KERNELLAUNCH_REGEX.ReplaceAllString(stmt, "\n{CURD_ALLOC(" + curdParams + ");\n$0\nCURD_FREE(" + curdParams + ");}\n")
    fmt.Printf("Found kernel-launching stmt %v: %s\n params: %s => %q\n", strconv.Itoa(i), stmt, params, parsedParams)
  }
  srcString = strings.Replace(srcString, HOOKS_DEF_STUB, "", -1)
  ALLOCCALL_REGEX := regexp.MustCompile(`(allocateReadWriteSets\([^;]+\);)|(CURD_ALLOC\([^;]+\);)`)
  srcString = ALLOCCALL_REGEX.ReplaceAllString( srcString, "" );
  FREECALL_REGEX := regexp.MustCompile(`(freeReadWriteSets\([^;]+\);)|(CURD_FREE\([^;]+\);)`)
  srcString = FREECALL_REGEX.ReplaceAllString( srcString, "" );
  srcString = strings.Replace( srcString, INCLUDE_STUB, "", -1 )
  //destString := KERNELLAUNCH_REGEX.ReplaceAllString(srcString, "#ifdef ENABLE_CURD\n allocateReadWriteSets($2);\n#endif\n$1$2$3\n#ifdef ENABLE_CURD\nfreeReadWriteSets($2);\n#endif")
  //destString := KERNELLAUNCH_REGEX.ReplaceAllString(srcString, "\n{CURD_ALLOC($2);\n$1$2$3\nCURD_FREE($2);}\n")
  for stmt, newStmt := range callTrans {
    srcString = strings.Replace(srcString, stmt, newStmt, -1)
  }
  destString := srcString
  instrumentedFileName := fileName + ".inst.nb"
  destFile, err2 := os.Create(instrumentedFileName)
  check(err2)
  defer destFile.Close()
  writer := bufio.NewWriter(destFile)
  //writer.WriteString("#ifdef ENABLE_CURD\n#include<curd_lib_host.h>\n#endif\n")
  writer.WriteString(genCondCompileStub(INCLUDE_STUB, ""))
  writer.WriteString(HOOKS_DEF_STUB)
  writer.WriteString(destString)
  writer.Flush()
  overwriterCmd := exec.Command("cp", instrumentedFileName, fileName)
  overwriteResult, overwriteErr := overwriterCmd.Output()
  check(overwriteErr)
  fmt.Println("overwrite complete: "+string(overwriteResult))
}

func processFile(path string, info os.FileInfo, err error) error{
  CUDAFILES_REGEX := regexp.MustCompile(`.+\.cu[h]{0,1}$`)
  if !info.IsDir() && CUDAFILES_REGEX.MatchString(path) {
    instrumentCudaFile(path)
  }
  return err
}
func main(){
  argsNum := len( os.Args)
  if argsNum != 2 {
    fmt.Print("wrong number of arguments: should've passed 1 argument.\n")
    return
  }
  rootDir := os.Args[1]
  filepath.Walk(rootDir, processFile)
}
