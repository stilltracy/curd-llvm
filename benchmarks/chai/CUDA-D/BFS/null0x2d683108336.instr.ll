; ModuleID = 'null0x2d683108336.instr'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.cudaFuncAttributes = type opaque
%struct.Node = type { i32, i32 }
%struct.Edge = type { i32, i32 }

@l_mem = external addrspace(3) global [0 x i32]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Node*, %struct.Edge*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii to i8*)], section "llvm.metadata"
@0 = linker_private constant [1 x i8] zeroinitializer
@1 = linker_private constant [54 x i8] c"/usr/local/cuda-7.5/include/cuda_device_runtime_api.h\00"
@2 = linker_private constant [49 x i8] c"/usr/local/cuda-7.5/include/device_functions.hpp\00"
@3 = linker_private constant [60 x i8] c"/usr/local/cuda/bin/..//include/device_atomic_functions.hpp\00"
@4 = linker_private constant [15 x i8] c"kernel_cuda.cu\00"

define weak i32 @cudaMalloc(i8** %p, i64 %s) {
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %s.addr = alloca i64, align 8
  %1 = ptrtoint i8*** %p.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i8** %p, i8*** %p.addr, align 8
  %2 = ptrtoint i64* %s.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i64 %s, i64* %s.addr, align 8
  %3 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %3, i8 4, i32 66, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  store i32 30, i32* %retval, align 4, !dbg !27
  %4 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %4, i8 4, i32 66, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  %5 = load i32* %retval, align 4, !dbg !27
  ret i32 %5, !dbg !27
}

define weak i32 @cudaFuncGetAttributes(%struct.cudaFuncAttributes* %p, i8* %c) {
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.cudaFuncAttributes*, align 8
  %c.addr = alloca i8*, align 8
  %1 = ptrtoint %struct.cudaFuncAttributes** %p.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store %struct.cudaFuncAttributes* %p, %struct.cudaFuncAttributes** %p.addr, align 8
  %2 = ptrtoint i8** %c.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i8* %c, i8** %c.addr, align 8
  %3 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %3, i8 4, i32 71, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  store i32 30, i32* %retval, align 4, !dbg !29
  %4 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %4, i8 4, i32 71, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  %5 = load i32* %retval, align 4, !dbg !29
  ret i32 %5, !dbg !29
}

define weak i32 @cudaDeviceGetAttribute(i32* %value, i32 %attr, i32 %device) {
  %retval = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  %attr.addr = alloca i32, align 4
  %device.addr = alloca i32, align 4
  %1 = ptrtoint i32** %value.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %value, i32** %value.addr, align 8
  %2 = ptrtoint i32* %attr.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %attr, i32* %attr.addr, align 4
  %3 = ptrtoint i32* %device.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %3, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %device, i32* %device.addr, align 4
  %4 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %4, i8 4, i32 76, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  store i32 30, i32* %retval, align 4, !dbg !31
  %5 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %5, i8 4, i32 76, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  %6 = load i32* %retval, align 4, !dbg !31
  ret i32 %6, !dbg !31
}

define weak i32 @cudaGetDevice(i32* %device) {
  %retval = alloca i32, align 4
  %device.addr = alloca i32*, align 8
  %1 = ptrtoint i32** %device.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %device, i32** %device.addr, align 8
  %2 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 4, i32 81, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  store i32 30, i32* %retval, align 4, !dbg !33
  %3 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %3, i8 4, i32 81, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  %4 = load i32* %retval, align 4, !dbg !33
  ret i32 %4, !dbg !33
}

define weak i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessor(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize) {
  %retval = alloca i32, align 4
  %numBlocks.addr = alloca i32*, align 8
  %func.addr = alloca i8*, align 8
  %blockSize.addr = alloca i32, align 4
  %dynamicSmemSize.addr = alloca i64, align 8
  %1 = ptrtoint i32** %numBlocks.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %numBlocks, i32** %numBlocks.addr, align 8
  %2 = ptrtoint i8** %func.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i8* %func, i8** %func.addr, align 8
  %3 = ptrtoint i32* %blockSize.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %3, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %blockSize, i32* %blockSize.addr, align 4
  %4 = ptrtoint i64* %dynamicSmemSize.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %4, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i64 %dynamicSmemSize, i64* %dynamicSmemSize.addr, align 8
  %5 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %5, i8 4, i32 86, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  store i32 30, i32* %retval, align 4, !dbg !35
  %6 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %6, i8 4, i32 86, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  %7 = load i32* %retval, align 4, !dbg !35
  ret i32 %7, !dbg !35
}

define weak i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize, i32 %flags) {
  %retval = alloca i32, align 4
  %numBlocks.addr = alloca i32*, align 8
  %func.addr = alloca i8*, align 8
  %blockSize.addr = alloca i32, align 4
  %dynamicSmemSize.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %1 = ptrtoint i32** %numBlocks.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %numBlocks, i32** %numBlocks.addr, align 8
  %2 = ptrtoint i8** %func.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i8* %func, i8** %func.addr, align 8
  %3 = ptrtoint i32* %blockSize.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %3, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %blockSize, i32* %blockSize.addr, align 4
  %4 = ptrtoint i64* %dynamicSmemSize.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %4, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i64 %dynamicSmemSize, i64* %dynamicSmemSize.addr, align 8
  %5 = ptrtoint i32* %flags.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %5, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %flags, i32* %flags.addr, align 4
  %6 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %6, i8 4, i32 91, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  store i32 30, i32* %retval, align 4, !dbg !37
  %7 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %7, i8 4, i32 91, i8* getelementptr inbounds ([54 x i8]* @1, i32 0, i32 0))
  %8 = load i32* %retval, align 4, !dbg !37
  ret i32 %8, !dbg !37
}

; Function Attrs: alwaysinline inlinehint
define internal i32 @__iAtomicAdd(i32* %p, i32 %val) #0 {
  %retval = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  %1 = ptrtoint i32** %p.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %p, i32** %p.addr, align 8
  %2 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %val, i32* %val.addr, align 4
  %3 = ptrtoint i32** %p.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %3, i8 8, i32 1544, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %4 = load i32** %p.addr, align 8, !dbg !39
  %5 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %5, i8 4, i32 1544, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %6 = load i32* %val.addr, align 4, !dbg !39
  %7 = atomicrmw add i32* %4, i32 %6 seq_cst, !dbg !39
  %8 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %8, i8 4, i32 1544, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  store i32 %7, i32* %retval, align 4, !dbg !39
  %9 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %9, i8 4, i32 1544, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %10 = load i32* %retval, align 4, !dbg !39
  ret i32 %10, !dbg !39
}

; Function Attrs: alwaysinline inlinehint
define internal i32 @__iAtomicExch(i32* %p, i32 %val) #0 {
  %retval = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  %1 = ptrtoint i32** %p.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %p, i32** %p.addr, align 8
  %2 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %val, i32* %val.addr, align 4
  %3 = ptrtoint i32** %p.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %3, i8 8, i32 1578, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %4 = load i32** %p.addr, align 8, !dbg !41
  %5 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %5, i8 4, i32 1578, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %6 = load i32* %val.addr, align 4, !dbg !41
  %7 = atomicrmw xchg i32* %4, i32 %6 seq_cst, !dbg !41
  %8 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %8, i8 4, i32 1578, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  store i32 %7, i32* %retval, align 4, !dbg !41
  %9 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %9, i8 4, i32 1578, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %10 = load i32* %retval, align 4, !dbg !41
  ret i32 %10, !dbg !41
}

; Function Attrs: alwaysinline inlinehint
define internal i32 @__iAtomicMax(i32* %p, i32 %val) #0 {
  %retval = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  %1 = ptrtoint i32** %p.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %p, i32** %p.addr, align 8
  %2 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %val, i32* %val.addr, align 4
  %3 = ptrtoint i32** %p.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %3, i8 8, i32 1632, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %4 = load i32** %p.addr, align 8, !dbg !43
  %5 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %5, i8 4, i32 1632, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %6 = load i32* %val.addr, align 4, !dbg !43
  %7 = atomicrmw max i32* %4, i32 %6 seq_cst, !dbg !43
  %8 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %8, i8 4, i32 1632, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  store i32 %7, i32* %retval, align 4, !dbg !43
  %9 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %9, i8 4, i32 1632, i8* getelementptr inbounds ([49 x i8]* @2, i32 0, i32 0))
  %10 = load i32* %retval, align 4, !dbg !43
  ret i32 %10, !dbg !43
}

; Function Attrs: inlinehint
define internal i32 @_Z9atomicAddPii(i32* %address, i32 %val) #1 {
  %retval = alloca i32, align 4
  %address.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  %1 = ptrtoint i32** %address.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %address, i32** %address.addr, align 8
  %2 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %val, i32* %val.addr, align 4
  %3 = ptrtoint i32** %address.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %3, i8 8, i32 80, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  %4 = load i32** %address.addr, align 8, !dbg !45
  %5 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %5, i8 4, i32 80, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  %6 = load i32* %val.addr, align 4, !dbg !45
  %call = call i32 @__iAtomicAdd(i32* %4, i32 %6), !dbg !49
  %7 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %7, i8 4, i32 80, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  store i32 %call, i32* %retval, align 4, !dbg !49
  %8 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %8, i8 4, i32 80, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  %9 = load i32* %retval, align 4, !dbg !49
  ret i32 %9, !dbg !49
}

; Function Attrs: inlinehint
define internal i32 @_Z10atomicExchPii(i32* %address, i32 %val) #1 {
  %retval = alloca i32, align 4
  %address.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  %1 = ptrtoint i32** %address.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %address, i32** %address.addr, align 8
  %2 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %val, i32* %val.addr, align 4
  %3 = ptrtoint i32** %address.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %3, i8 8, i32 100, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  %4 = load i32** %address.addr, align 8, !dbg !50
  %5 = ptrtoint i32* %val.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %5, i8 4, i32 100, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  %6 = load i32* %val.addr, align 4, !dbg !50
  %call = call i32 @__iAtomicExch(i32* %4, i32 %6), !dbg !54
  %7 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %7, i8 4, i32 100, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  store i32 %call, i32* %retval, align 4, !dbg !54
  %8 = ptrtoint i32* %retval to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %8, i8 4, i32 100, i8* getelementptr inbounds ([60 x i8]* @3, i32 0, i32 0))
  %9 = load i32* %retval, align 4, !dbg !54
  ret i32 %9, !dbg !54
}

define void @_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii(%struct.Node* %graph_nodes_av, %struct.Edge* %graph_edges_av, i32* %cost, i32* %color, i32* %q1, i32* %q2, i32* %n_t, i32* %head, i32* %tail, i32* %threads_end, i32* %threads_run, i32* %overflow, i32* %iter, i32 %LIMIT, i32 %CPU) {
  %graph_nodes_av.addr = alloca %struct.Node*, align 8
  %graph_edges_av.addr = alloca %struct.Edge*, align 8
  %cost.addr = alloca i32*, align 8
  %color.addr = alloca i32*, align 8
  %q1.addr = alloca i32*, align 8
  %q2.addr = alloca i32*, align 8
  %n_t.addr = alloca i32*, align 8
  %head.addr = alloca i32*, align 8
  %tail.addr = alloca i32*, align 8
  %threads_end.addr = alloca i32*, align 8
  %threads_run.addr = alloca i32*, align 8
  %overflow.addr = alloca i32*, align 8
  %iter.addr = alloca i32*, align 8
  %LIMIT.addr = alloca i32, align 4
  %CPU.addr = alloca i32, align 4
  %__T22 = alloca i32, align 4
  %__cuda_local_var_42752_10_non_const_tail_bin = alloca i32*, align 8
  %__cuda_local_var_42753_10_non_const_l_q2 = alloca i32*, align 8
  %__cuda_local_var_42754_10_non_const_shift = alloca i32*, align 8
  %__cuda_local_var_42755_10_non_const_base = alloca i32*, align 8
  %__cuda_local_var_42757_15_non_const_tid = alloca i32, align 4
  %__cuda_local_var_42758_15_non_const_gtid = alloca i32, align 4
  %__cuda_local_var_42759_15_non_const_MAXWG = alloca i32, align 4
  %__cuda_local_var_42760_15_non_const_WG_SIZE = alloca i32, align 4
  %__cuda_local_var_42762_9_non_const_iter_local = alloca i32, align 4
  %__cuda_local_var_42764_9_non_const_n_t_local = alloca i32, align 4
  %__cuda_local_var_42776_9_non_const_my_base = alloca i32, align 4
  %__cuda_local_var_42812_9_non_const_local_shift = alloca i32, align 4
  %predef_tmp_comp = alloca i32, align 4
  %predef_tmp_comp1 = alloca i32, align 4
  %predef_tmp_comp2 = alloca i32, align 4
  %predef_tmp_comp3 = alloca i32, align 4
  %predef_tmp_comp4 = alloca i32, align 4
  %predef_tmp_comp5 = alloca i32, align 4
  %__cuda_local_var_42780_17_non_const_pid = alloca i32, align 4
  %__cuda_local_var_42783_18_non_const_cur_node = alloca %struct.Node, align 4
  %i = alloca i32, align 4
  %__cuda_local_var_42788_21_non_const_id = alloca i32, align 4
  %__cuda_local_var_42789_21_non_const_old_color = alloca i32, align 4
  %__cuda_local_var_42792_25_non_const_tail_index = alloca i32, align 4
  %1 = ptrtoint %struct.Node** %graph_nodes_av.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %1, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store %struct.Node* %graph_nodes_av, %struct.Node** %graph_nodes_av.addr, align 8
  %2 = ptrtoint %struct.Edge** %graph_edges_av.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %2, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store %struct.Edge* %graph_edges_av, %struct.Edge** %graph_edges_av.addr, align 8
  %3 = ptrtoint i32** %cost.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %3, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %cost, i32** %cost.addr, align 8
  %4 = ptrtoint i32** %color.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %4, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %color, i32** %color.addr, align 8
  %5 = ptrtoint i32** %q1.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %5, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %q1, i32** %q1.addr, align 8
  %6 = ptrtoint i32** %q2.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %6, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %q2, i32** %q2.addr, align 8
  %7 = ptrtoint i32** %n_t.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %7, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %n_t, i32** %n_t.addr, align 8
  %8 = ptrtoint i32** %head.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %8, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %head, i32** %head.addr, align 8
  %9 = ptrtoint i32** %tail.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %9, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %tail, i32** %tail.addr, align 8
  %10 = ptrtoint i32** %threads_end.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %10, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %threads_end, i32** %threads_end.addr, align 8
  %11 = ptrtoint i32** %threads_run.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %11, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %threads_run, i32** %threads_run.addr, align 8
  %12 = ptrtoint i32** %overflow.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %12, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %overflow, i32** %overflow.addr, align 8
  %13 = ptrtoint i32** %iter.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %13, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %iter, i32** %iter.addr, align 8
  %14 = ptrtoint i32* %LIMIT.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %14, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %LIMIT, i32* %LIMIT.addr, align 4
  %15 = ptrtoint i32* %CPU.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %15, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %CPU, i32* %CPU.addr, align 4
  %16 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %16, i8 8, i32 52, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* addrspacecast ([0 x i32] addrspace(3)* @l_mem to i32*), i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !55
  %17 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %17, i8 8, i32 53, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %18 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !59
  %19 = getelementptr inbounds i32* %18, i32 1, !dbg !59
  %20 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %20, i8 8, i32 53, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* %19, i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !59
  %21 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %21, i8 8, i32 54, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %22 = load i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !60
  %23 = getelementptr inbounds i32* %22, i32 1600, !dbg !60
  %24 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %24, i8 8, i32 54, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* %23, i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !60
  %25 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %25, i8 8, i32 55, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %26 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !61
  %27 = getelementptr inbounds i32* %26, i32 1, !dbg !61
  %28 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %28, i8 8, i32 55, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* %27, i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !61
  %29 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !62
  %30 = ptrtoint i32* %predef_tmp_comp to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %30, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %29, i32* %predef_tmp_comp, align 4, !dbg !62
  %31 = ptrtoint i32* %predef_tmp_comp to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %31, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %32 = load i32* %predef_tmp_comp, align 4, !dbg !62
  %33 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %33, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %32, i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !62
  %34 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !63
  %35 = ptrtoint i32* %predef_tmp_comp1 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %35, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %34, i32* %predef_tmp_comp1, align 4, !dbg !63
  %36 = ptrtoint i32* %predef_tmp_comp1 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %36, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %37 = load i32* %predef_tmp_comp1, align 4, !dbg !63
  %38 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !dbg !63
  %39 = ptrtoint i32* %predef_tmp_comp2 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %39, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %38, i32* %predef_tmp_comp2, align 4, !dbg !63
  %40 = ptrtoint i32* %predef_tmp_comp2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %40, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %41 = load i32* %predef_tmp_comp2, align 4, !dbg !63
  %42 = mul i32 %37, %41, !dbg !63
  %43 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !63
  %44 = ptrtoint i32* %predef_tmp_comp3 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %44, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %43, i32* %predef_tmp_comp3, align 4, !dbg !63
  %45 = ptrtoint i32* %predef_tmp_comp3 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %45, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %46 = load i32* %predef_tmp_comp3, align 4, !dbg !63
  %47 = add i32 %42, %46, !dbg !63
  %48 = ptrtoint i32* %__cuda_local_var_42758_15_non_const_gtid to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %48, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %47, i32* %__cuda_local_var_42758_15_non_const_gtid, align 4, !dbg !63
  %49 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !64
  %50 = ptrtoint i32* %predef_tmp_comp4 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %50, i8 4, i32 59, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %49, i32* %predef_tmp_comp4, align 4, !dbg !64
  %51 = ptrtoint i32* %predef_tmp_comp4 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %51, i8 4, i32 59, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %52 = load i32* %predef_tmp_comp4, align 4, !dbg !64
  %53 = ptrtoint i32* %__cuda_local_var_42759_15_non_const_MAXWG to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %53, i8 4, i32 59, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %52, i32* %__cuda_local_var_42759_15_non_const_MAXWG, align 4, !dbg !64
  %54 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !dbg !65
  %55 = ptrtoint i32* %predef_tmp_comp5 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %55, i8 4, i32 60, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %54, i32* %predef_tmp_comp5, align 4, !dbg !65
  %56 = ptrtoint i32* %predef_tmp_comp5 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %56, i8 4, i32 60, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %57 = load i32* %predef_tmp_comp5, align 4, !dbg !65
  %58 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %58, i8 4, i32 60, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %57, i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !65
  %59 = ptrtoint i32** %iter.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %59, i8 8, i32 62, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %60 = load i32** %iter.addr, align 8, !dbg !66
  %61 = getelementptr inbounds i32* %60, i32 0, !dbg !66
  %call = call i32 @__iAtomicAdd(i32* %61, i32 0), !dbg !67
  %62 = ptrtoint i32* %__cuda_local_var_42762_9_non_const_iter_local to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %62, i8 4, i32 62, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call, i32* %__cuda_local_var_42762_9_non_const_iter_local, align 4, !dbg !67
  %63 = ptrtoint i32** %n_t.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %63, i8 8, i32 64, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %64 = load i32** %n_t.addr, align 8, !dbg !68
  %call6 = call i32 @__iAtomicAdd(i32* %64, i32 0), !dbg !69
  %65 = ptrtoint i32* %__cuda_local_var_42764_9_non_const_n_t_local to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %65, i8 4, i32 64, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call6, i32* %__cuda_local_var_42764_9_non_const_n_t_local, align 4, !dbg !69
  %66 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %66, i8 4, i32 66, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %67 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !70
  %68 = icmp eq i32 %67, 0, !dbg !70
  br i1 %68, label %69, label %73, !dbg !70

; <label>:69                                      ; preds = %0
  %70 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %70, i8 8, i32 68, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %71 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !72
  %72 = ptrtoint i32* %71 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %72, i8 4, i32 68, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 0, i32* %71, align 4, !dbg !72
  br label %73, !dbg !72

; <label>:73                                      ; preds = %69, %0
  %74 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %74, i8 4, i32 72, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %75 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !74
  %76 = icmp eq i32 %75, 0, !dbg !74
  br i1 %76, label %77, label %86, !dbg !74

; <label>:77                                      ; preds = %73
  %78 = ptrtoint i32** %head.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %78, i8 8, i32 73, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %79 = load i32** %head.addr, align 8, !dbg !76
  %80 = getelementptr inbounds i32* %79, i32 0, !dbg !76
  %81 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %81, i8 4, i32 73, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %82 = load i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !76
  %call7 = call i32 @__iAtomicAdd(i32* %80, i32 %82), !dbg !78
  %83 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %83, i8 8, i32 73, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %84 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !78
  %85 = ptrtoint i32* %84 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %85, i8 4, i32 73, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call7, i32* %84, align 4, !dbg !78
  br label %86, !dbg !78

; <label>:86                                      ; preds = %77, %73
  call void @llvm.cuda.syncthreads(), !dbg !79
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %87 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %87, i8 8, i32 76, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %88 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !80
  %89 = ptrtoint i32* %88 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %89, i8 4, i32 76, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %90 = load i32* %88, align 4, !dbg !80
  %91 = ptrtoint i32* %__cuda_local_var_42776_9_non_const_my_base to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %91, i8 4, i32 76, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %90, i32* %__cuda_local_var_42776_9_non_const_my_base, align 4, !dbg !80
  br label %92, !dbg !81

; <label>:92                                      ; preds = %229, %86
  %93 = ptrtoint i32* %__cuda_local_var_42776_9_non_const_my_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %93, i8 4, i32 77, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %94 = load i32* %__cuda_local_var_42776_9_non_const_my_base, align 4, !dbg !81
  %95 = ptrtoint i32* %__cuda_local_var_42764_9_non_const_n_t_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %95, i8 4, i32 77, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %96 = load i32* %__cuda_local_var_42764_9_non_const_n_t_local, align 4, !dbg !81
  %97 = icmp slt i32 %94, %96, !dbg !81
  br i1 %97, label %98, label %235, !dbg !81

; <label>:98                                      ; preds = %92
  %99 = ptrtoint i32* %__cuda_local_var_42776_9_non_const_my_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %99, i8 4, i32 78, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %100 = load i32* %__cuda_local_var_42776_9_non_const_my_base, align 4, !dbg !83
  %101 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %101, i8 4, i32 78, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %102 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !83
  %103 = add nsw i32 %100, %102, !dbg !83
  %104 = ptrtoint i32* %__cuda_local_var_42764_9_non_const_n_t_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %104, i8 4, i32 78, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %105 = load i32* %__cuda_local_var_42764_9_non_const_n_t_local, align 4, !dbg !83
  %106 = icmp slt i32 %103, %105, !dbg !83
  br i1 %106, label %107, label %113, !dbg !83

; <label>:107                                     ; preds = %98
  %108 = ptrtoint i32** %overflow.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %108, i8 8, i32 78, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %109 = load i32** %overflow.addr, align 8, !dbg !83
  %110 = ptrtoint i32* %109 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %110, i8 4, i32 78, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %111 = load i32* %109, align 4, !dbg !83
  %112 = icmp eq i32 %111, 0, !dbg !83
  br label %113, !dbg !83

; <label>:113                                     ; preds = %107, %98
  %114 = phi i1 [ false, %98 ], [ %112, %107 ]
  br i1 %114, label %115, label %216, !dbg !83

; <label>:115                                     ; preds = %113
  %116 = ptrtoint i32** %q1.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %116, i8 8, i32 80, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %117 = load i32** %q1.addr, align 8, !dbg !86
  %118 = ptrtoint i32* %__cuda_local_var_42776_9_non_const_my_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %118, i8 4, i32 80, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %119 = load i32* %__cuda_local_var_42776_9_non_const_my_base, align 4, !dbg !86
  %120 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %120, i8 4, i32 80, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %121 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !86
  %122 = add nsw i32 %119, %121, !dbg !86
  %123 = getelementptr inbounds i32* %117, i32 %122, !dbg !86
  %124 = ptrtoint i32* %123 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %124, i8 4, i32 80, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %125 = load i32* %123, align 4, !dbg !86
  %126 = ptrtoint i32* %__cuda_local_var_42780_17_non_const_pid to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %126, i8 4, i32 80, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %125, i32* %__cuda_local_var_42780_17_non_const_pid, align 4, !dbg !86
  %127 = ptrtoint i32** %cost.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %127, i8 8, i32 82, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %128 = load i32** %cost.addr, align 8, !dbg !88
  %129 = ptrtoint i32* %__cuda_local_var_42780_17_non_const_pid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %129, i8 4, i32 82, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %130 = load i32* %__cuda_local_var_42780_17_non_const_pid, align 4, !dbg !88
  %131 = getelementptr inbounds i32* %128, i32 %130, !dbg !88
  %132 = ptrtoint i32* %__cuda_local_var_42762_9_non_const_iter_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %132, i8 4, i32 82, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %133 = load i32* %__cuda_local_var_42762_9_non_const_iter_local, align 4, !dbg !88
  %call8 = call i32 @_Z10atomicExchPii(i32* %131, i32 %133), !dbg !88
  %134 = ptrtoint %struct.Node** %graph_nodes_av.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %134, i8 8, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %135 = load %struct.Node** %graph_nodes_av.addr, align 8, !dbg !89
  %136 = ptrtoint i32* %__cuda_local_var_42780_17_non_const_pid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %136, i8 4, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %137 = load i32* %__cuda_local_var_42780_17_non_const_pid, align 4, !dbg !89
  %138 = getelementptr inbounds %struct.Node* %135, i32 %137, !dbg !89
  %139 = getelementptr inbounds %struct.Node* %138, i32 0, i32 0, !dbg !89
  %140 = ptrtoint i32* %139 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %140, i8 4, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %141 = load i32* %139, align 4, !dbg !89
  %142 = getelementptr inbounds %struct.Node* %__cuda_local_var_42783_18_non_const_cur_node, i32 0, i32 0, !dbg !89
  %143 = ptrtoint i32* %142 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %143, i8 4, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %141, i32* %142, align 4, !dbg !89
  %144 = ptrtoint %struct.Node** %graph_nodes_av.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %144, i8 8, i32 85, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %145 = load %struct.Node** %graph_nodes_av.addr, align 8, !dbg !90
  %146 = ptrtoint i32* %__cuda_local_var_42780_17_non_const_pid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %146, i8 4, i32 85, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %147 = load i32* %__cuda_local_var_42780_17_non_const_pid, align 4, !dbg !90
  %148 = getelementptr inbounds %struct.Node* %145, i32 %147, !dbg !90
  %149 = getelementptr inbounds %struct.Node* %148, i32 0, i32 1, !dbg !90
  %150 = ptrtoint i32* %149 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %150, i8 4, i32 85, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %151 = load i32* %149, align 4, !dbg !90
  %152 = getelementptr inbounds %struct.Node* %__cuda_local_var_42783_18_non_const_cur_node, i32 0, i32 1, !dbg !90
  %153 = ptrtoint i32* %152 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %153, i8 4, i32 85, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %151, i32* %152, align 4, !dbg !90
  %154 = getelementptr inbounds %struct.Node* %__cuda_local_var_42783_18_non_const_cur_node, i32 0, i32 0, !dbg !91
  %155 = ptrtoint i32* %154 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %155, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %156 = load i32* %154, align 4, !dbg !91
  %157 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %157, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %156, i32* %i, align 4, !dbg !91
  br label %158, !dbg !93

; <label>:158                                     ; preds = %210, %115
  %159 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %159, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %160 = load i32* %i, align 4, !dbg !93
  %161 = getelementptr inbounds %struct.Node* %__cuda_local_var_42783_18_non_const_cur_node, i32 0, i32 1, !dbg !93
  %162 = ptrtoint i32* %161 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %162, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %163 = load i32* %161, align 4, !dbg !93
  %164 = getelementptr inbounds %struct.Node* %__cuda_local_var_42783_18_non_const_cur_node, i32 0, i32 0, !dbg !93
  %165 = ptrtoint i32* %164 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %165, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %166 = load i32* %164, align 4, !dbg !93
  %167 = add nsw i32 %163, %166, !dbg !93
  %168 = icmp slt i32 %160, %167, !dbg !93
  br i1 %168, label %169, label %215, !dbg !93

; <label>:169                                     ; preds = %158
  %170 = ptrtoint %struct.Edge** %graph_edges_av.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %170, i8 8, i32 88, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %171 = load %struct.Edge** %graph_edges_av.addr, align 8, !dbg !95
  %172 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %172, i8 4, i32 88, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %173 = load i32* %i, align 4, !dbg !95
  %174 = getelementptr inbounds %struct.Edge* %171, i32 %173, !dbg !95
  %175 = getelementptr inbounds %struct.Edge* %174, i32 0, i32 0, !dbg !95
  %176 = ptrtoint i32* %175 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %176, i8 4, i32 88, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %177 = load i32* %175, align 4, !dbg !95
  %178 = ptrtoint i32* %__cuda_local_var_42788_21_non_const_id to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %178, i8 4, i32 88, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %177, i32* %__cuda_local_var_42788_21_non_const_id, align 4, !dbg !95
  %179 = ptrtoint i32** %color.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %179, i8 8, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %180 = load i32** %color.addr, align 8, !dbg !98
  %181 = ptrtoint i32* %__cuda_local_var_42788_21_non_const_id to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %181, i8 4, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %182 = load i32* %__cuda_local_var_42788_21_non_const_id, align 4, !dbg !98
  %183 = getelementptr inbounds i32* %180, i32 %182, !dbg !98
  %call9 = call i32 @__iAtomicMax(i32* %183, i32 16677221), !dbg !99
  %184 = ptrtoint i32* %__cuda_local_var_42789_21_non_const_old_color to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %184, i8 4, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call9, i32* %__cuda_local_var_42789_21_non_const_old_color, align 4, !dbg !99
  %185 = ptrtoint i32* %__cuda_local_var_42789_21_non_const_old_color to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %185, i8 4, i32 90, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %186 = load i32* %__cuda_local_var_42789_21_non_const_old_color, align 4, !dbg !100
  %187 = icmp slt i32 %186, 16677221, !dbg !100
  br i1 %187, label %188, label %209, !dbg !100

; <label>:188                                     ; preds = %169
  %189 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %189, i8 8, i32 92, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %190 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !102
  %call10 = call i32 @__iAtomicAdd(i32* %190, i32 1), !dbg !104
  %191 = ptrtoint i32* %__cuda_local_var_42792_25_non_const_tail_index to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %191, i8 4, i32 92, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call10, i32* %__cuda_local_var_42792_25_non_const_tail_index, align 4, !dbg !104
  %192 = ptrtoint i32* %__cuda_local_var_42792_25_non_const_tail_index to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %192, i8 4, i32 93, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %193 = load i32* %__cuda_local_var_42792_25_non_const_tail_index, align 4, !dbg !105
  %194 = icmp sge i32 %193, 1600, !dbg !105
  br i1 %194, label %195, label %199, !dbg !105

; <label>:195                                     ; preds = %188
  %196 = ptrtoint i32** %overflow.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %196, i8 8, i32 94, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %197 = load i32** %overflow.addr, align 8, !dbg !107
  %198 = ptrtoint i32* %197 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %198, i8 4, i32 94, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 1, i32* %197, align 4, !dbg !107
  br label %208, !dbg !107

; <label>:199                                     ; preds = %188
  %200 = ptrtoint i32* %__cuda_local_var_42788_21_non_const_id to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %200, i8 4, i32 96, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %201 = load i32* %__cuda_local_var_42788_21_non_const_id, align 4, !dbg !109
  %202 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %202, i8 8, i32 96, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %203 = load i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !109
  %204 = ptrtoint i32* %__cuda_local_var_42792_25_non_const_tail_index to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %204, i8 4, i32 96, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %205 = load i32* %__cuda_local_var_42792_25_non_const_tail_index, align 4, !dbg !109
  %206 = getelementptr inbounds i32* %203, i32 %205, !dbg !109
  %207 = ptrtoint i32* %206 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %207, i8 4, i32 96, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %201, i32* %206, align 4, !dbg !109
  br label %208, !dbg !109

; <label>:208                                     ; preds = %199, %195
  br label %209, !dbg !109

; <label>:209                                     ; preds = %208, %169
  br label %210, !dbg !111

; <label>:210                                     ; preds = %209
  %211 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %211, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %212 = load i32* %i, align 4, !dbg !111
  %213 = add nsw i32 %212, 1, !dbg !111
  %214 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %214, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %213, i32* %i, align 4, !dbg !111
  br label %158, !dbg !111

; <label>:215                                     ; preds = %158
  br label %216, !dbg !111

; <label>:216                                     ; preds = %215, %113
  %217 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %217, i8 4, i32 100, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %218 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !112
  %219 = icmp eq i32 %218, 0, !dbg !112
  br i1 %219, label %220, label %229, !dbg !112

; <label>:220                                     ; preds = %216
  %221 = ptrtoint i32** %head.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %221, i8 8, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %222 = load i32** %head.addr, align 8, !dbg !114
  %223 = getelementptr inbounds i32* %222, i32 0, !dbg !114
  %224 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %224, i8 4, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %225 = load i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !114
  %call11 = call i32 @__iAtomicAdd(i32* %223, i32 %225), !dbg !116
  %226 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %226, i8 8, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %227 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !116
  %228 = ptrtoint i32* %227 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %228, i8 4, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call11, i32* %227, align 4, !dbg !116
  br label %229, !dbg !116

; <label>:229                                     ; preds = %220, %216
  call void @llvm.cuda.syncthreads(), !dbg !117
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %230 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %230, i8 8, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %231 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !118
  %232 = ptrtoint i32* %231 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %232, i8 4, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %233 = load i32* %231, align 4, !dbg !118
  %234 = ptrtoint i32* %__cuda_local_var_42776_9_non_const_my_base to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %234, i8 4, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %233, i32* %__cuda_local_var_42776_9_non_const_my_base, align 4, !dbg !118
  br label %92, !dbg !118

; <label>:235                                     ; preds = %92
  %236 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %236, i8 4, i32 107, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %237 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !119
  %238 = icmp eq i32 %237, 0, !dbg !119
  br i1 %238, label %239, label %253, !dbg !119

; <label>:239                                     ; preds = %235
  %240 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %240, i8 8, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %241 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !121
  %242 = ptrtoint i32* %241 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %242, i8 4, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %243 = load i32* %241, align 4, !dbg !121
  %244 = ptrtoint i32* %__T22 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %244, i8 4, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %243, i32* %__T22, align 4, !dbg !121
  %245 = ptrtoint i32** %tail.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %245, i8 8, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %246 = load i32** %tail.addr, align 8, !dbg !121
  %247 = getelementptr inbounds i32* %246, i32 0, !dbg !121
  %248 = ptrtoint i32* %__T22 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %248, i8 4, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %249 = load i32* %__T22, align 4, !dbg !121
  %call12 = call i32 @__iAtomicAdd(i32* %247, i32 %249), !dbg !123
  %250 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %250, i8 8, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %251 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !123
  %252 = ptrtoint i32* %251 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %252, i8 4, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call12, i32* %251, align 4, !dbg !123
  br label %253, !dbg !123

; <label>:253                                     ; preds = %239, %235
  call void @llvm.cuda.syncthreads(), !dbg !124
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %254 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %254, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %255 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !125
  %256 = ptrtoint i32* %__cuda_local_var_42812_9_non_const_local_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %256, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %255, i32* %__cuda_local_var_42812_9_non_const_local_shift, align 4, !dbg !125
  br label %257, !dbg !126

; <label>:257                                     ; preds = %265, %253
  %258 = ptrtoint i32* %__cuda_local_var_42812_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %258, i8 4, i32 113, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %259 = load i32* %__cuda_local_var_42812_9_non_const_local_shift, align 4, !dbg !126
  %260 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %260, i8 8, i32 113, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %261 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !126
  %262 = ptrtoint i32* %261 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %262, i8 4, i32 113, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %263 = load i32* %261, align 4, !dbg !126
  %264 = icmp slt i32 %259, %263, !dbg !126
  br i1 %264, label %265, label %290, !dbg !126

; <label>:265                                     ; preds = %257
  %266 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %266, i8 8, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %267 = load i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !128
  %268 = ptrtoint i32* %__cuda_local_var_42812_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %268, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %269 = load i32* %__cuda_local_var_42812_9_non_const_local_shift, align 4, !dbg !128
  %270 = getelementptr inbounds i32* %267, i32 %269, !dbg !128
  %271 = ptrtoint i32* %270 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %271, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %272 = load i32* %270, align 4, !dbg !128
  %273 = ptrtoint i32** %q2.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %273, i8 8, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %274 = load i32** %q2.addr, align 8, !dbg !128
  %275 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %275, i8 8, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %276 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !128
  %277 = ptrtoint i32* %276 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %277, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %278 = load i32* %276, align 4, !dbg !128
  %279 = ptrtoint i32* %__cuda_local_var_42812_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %279, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %280 = load i32* %__cuda_local_var_42812_9_non_const_local_shift, align 4, !dbg !128
  %281 = add nsw i32 %278, %280, !dbg !128
  %282 = getelementptr inbounds i32* %274, i32 %281, !dbg !128
  %283 = ptrtoint i32* %282 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %283, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %272, i32* %282, align 4, !dbg !128
  %284 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %284, i8 4, i32 116, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %285 = load i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !130
  %286 = ptrtoint i32* %__cuda_local_var_42812_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %286, i8 4, i32 116, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %287 = load i32* %__cuda_local_var_42812_9_non_const_local_shift, align 4, !dbg !130
  %288 = add nsw i32 %287, %285, !dbg !130
  %289 = ptrtoint i32* %__cuda_local_var_42812_9_non_const_local_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %289, i8 4, i32 116, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %288, i32* %__cuda_local_var_42812_9_non_const_local_shift, align 4, !dbg !130
  br label %257, !dbg !130

; <label>:290                                     ; preds = %257
  %291 = ptrtoint i32* %__cuda_local_var_42758_15_non_const_gtid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %291, i8 4, i32 120, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %292 = load i32* %__cuda_local_var_42758_15_non_const_gtid, align 4, !dbg !131
  %293 = icmp eq i32 %292, 0, !dbg !131
  br i1 %293, label %294, label %298, !dbg !131

; <label>:294                                     ; preds = %290
  %295 = ptrtoint i32** %iter.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %295, i8 8, i32 121, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %296 = load i32** %iter.addr, align 8, !dbg !133
  %297 = getelementptr inbounds i32* %296, i32 0, !dbg !133
  %call13 = call i32 @_Z9atomicAddPii(i32* %297, i32 1), !dbg !133
  br label %298, !dbg !133

; <label>:298                                     ; preds = %294, %290
  ret void, !dbg !135
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #2

; Function Attrs: nounwind
declare void @llvm.cuda.syncthreads() #3

declare void @__curd__VolatileMemRead_beforeHook(i64, i64)

declare void @__curd__VolatileMemWrite_beforeHook(i64, i64)

declare void @__curd__GlobalMemRead_beforeHook(i64, i8, i32, i8*)

declare void @__curd__GlobalMemWrite_beforeHook(i64, i8, i32, i8*)

declare void @__curd__SharedMemRead_beforeHook(i64, i8, i32, i8*)

declare void @__curd__SharedMemWrite_beforeHook(i64, i8, i32, i8*)

declare void @__curd__GenericMemRead_beforeHook(i64, i8, i32, i8*)

declare void @__curd__GenericMemWrite_beforeHook(i64, i8, i32, i8*)

declare void @__curd__Init_beforeHook()

declare void @__curd__Finish_afterHook()

declare void @__curd__ThreadStart_beforeHook()

declare void @__curd__llvm_cuda_syncthreads_afterHook()

attributes #0 = { alwaysinline inlinehint }
attributes #1 = { inlinehint }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!nvvmir.version = !{!24}
!nvvm.annotations = !{!25}
!llvm.module.flags = !{!26}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"lgenfe: EDG 4.9", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"kernel_cuda.cu", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !16, metadata !17, metadata !18, metadata !21, metadata !22}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaMalloc", metadata !"cudaMalloc", metadata !"cudaMalloc", i32 64, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i8**, i64)* @cudaMalloc, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 0] [cudaMalloc]
!5 = metadata !{metadata !"/usr/local/cuda-7.5/include/cuda_device_runtime_api.h", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaFuncGetAttributes", metadata !"cudaFuncGetAttributes", metadata !"cudaFuncGetAttributes", i32 69, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (%struct.cudaFuncAttributes*, i8*)* @cudaFuncGetAttributes, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 0] [cudaFuncGetAttributes]
!9 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaDeviceGetAttribute", metadata !"cudaDeviceGetAttribute", metadata !"cudaDeviceGetAttribute", i32 74, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32, i32)* @cudaDeviceGetAttribute, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 0] [cudaDeviceGetAttribute]
!10 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaGetDevice", metadata !"cudaGetDevice", metadata !"cudaGetDevice", i32 79, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*)* @cudaGetDevice, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 0] [cudaGetDevice]
!11 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", i32 84, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i8*, i32, i64)* @cudaOccupancyMaxActiveBlocksPerMultiprocessor, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 0] [cudaOccupancyMaxActiveBlocksPerMultiprocessor]
!12 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", i32 89, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i8*, i32, i64, i32)* @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 0] [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags]
!13 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"__iAtomicAdd", metadata !"__iAtomicAdd", metadata !"__iAtomicAdd", i32 1542, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @__iAtomicAdd, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 1542] [local] [def] [scope 0] [__iAtomicAdd]
!14 = metadata !{metadata !"/usr/local/cuda-7.5/include/device_functions.hpp", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS"}
!15 = metadata !{i32 786473, metadata !14}        ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/device_functions.hpp]
!16 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"__iAtomicExch", metadata !"__iAtomicExch", metadata !"__iAtomicExch", i32 1576, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @__iAtomicExch, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 1576] [local] [def] [scope 0] [__iAtomicExch]
!17 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"__iAtomicMax", metadata !"__iAtomicMax", metadata !"__iAtomicMax", i32 1630, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @__iAtomicMax, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 1630] [local] [def] [scope 0] [__iAtomicMax]
!18 = metadata !{i32 786478, metadata !19, metadata !20, metadata !"_Z9atomicAddPii", metadata !"_Z9atomicAddPii", metadata !"_Z9atomicAddPii", i32 78, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @_Z9atomicAddPii, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 78] [local] [def] [scope 0] [_Z9atomicAddPii]
!19 = metadata !{metadata !"/usr/local/cuda/bin/..//include/device_atomic_functions.hpp", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS"}
!20 = metadata !{i32 786473, metadata !19}        ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!21 = metadata !{i32 786478, metadata !19, metadata !20, metadata !"_Z10atomicExchPii", metadata !"_Z10atomicExchPii", metadata !"_Z10atomicExchPii", i32 98, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @_Z10atomicExchPii, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 98] [local] [def] [scope 0] [_Z10atomicExchPii]
!22 = metadata !{i32 786478, metadata !1, metadata !23, metadata !"_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii", metadata !"_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii", metadata !"_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii", i32 46, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (%struct.Node*, %struct.Edge*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 0] [_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii]
!23 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!24 = metadata !{i32 1, i32 2, i32 2, i32 0}
!25 = metadata !{void (%struct.Node*, %struct.Edge*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z7BFS_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii, metadata !"kernel", i32 1}
!26 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!27 = metadata !{i32 66, i32 3, metadata !28, null}
!28 = metadata !{i32 786443, metadata !5, metadata !4, i32 65, i32 1, i32 0} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!29 = metadata !{i32 71, i32 3, metadata !30, null}
!30 = metadata !{i32 786443, metadata !5, metadata !8, i32 70, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!31 = metadata !{i32 76, i32 3, metadata !32, null}
!32 = metadata !{i32 786443, metadata !5, metadata !9, i32 75, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!33 = metadata !{i32 81, i32 3, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, metadata !10, i32 80, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!35 = metadata !{i32 86, i32 3, metadata !36, null}
!36 = metadata !{i32 786443, metadata !5, metadata !11, i32 85, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!37 = metadata !{i32 91, i32 3, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, metadata !12, i32 90, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!39 = metadata !{i32 1544, i32 3, metadata !40, null}
!40 = metadata !{i32 786443, metadata !14, metadata !13, i32 1543, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/device_functions.hpp]
!41 = metadata !{i32 1578, i32 3, metadata !42, null}
!42 = metadata !{i32 786443, metadata !14, metadata !16, i32 1577, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/device_functions.hpp]
!43 = metadata !{i32 1632, i32 3, metadata !44, null}
!44 = metadata !{i32 786443, metadata !14, metadata !17, i32 1631, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda-7.5/include/device_functions.hpp]
!45 = metadata !{i32 80, i32 1, metadata !46, null}
!46 = metadata !{i32 786443, metadata !19, metadata !47, i32 79, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!47 = metadata !{i32 786443, metadata !19, metadata !48, i32 78, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!48 = metadata !{i32 786443, metadata !19, metadata !18, i32 78, i32 9, i32 9} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!49 = metadata !{i32 80, i32 8, metadata !46, null}
!50 = metadata !{i32 100, i32 1, metadata !51, null}
!51 = metadata !{i32 786443, metadata !19, metadata !52, i32 99, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!52 = metadata !{i32 786443, metadata !19, metadata !53, i32 98, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!53 = metadata !{i32 786443, metadata !19, metadata !21, i32 98, i32 9, i32 12} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!54 = metadata !{i32 100, i32 8, metadata !51, null}
!55 = metadata !{i32 52, i32 1, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 49, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 49, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!58 = metadata !{i32 786443, metadata !1, metadata !22, i32 49, i32 15, i32 15} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!59 = metadata !{i32 53, i32 1, metadata !56, null}
!60 = metadata !{i32 54, i32 1, metadata !56, null}
!61 = metadata !{i32 55, i32 1, metadata !56, null}
!62 = metadata !{i32 57, i32 1, metadata !56, null}
!63 = metadata !{i32 58, i32 1, metadata !56, null} ; [ DW_TAG_imported_module ]
!64 = metadata !{i32 59, i32 1, metadata !56, null}
!65 = metadata !{i32 60, i32 1, metadata !56, null}
!66 = metadata !{i32 62, i32 1, metadata !56, null}
!67 = metadata !{i32 62, i32 50, metadata !56, null}
!68 = metadata !{i32 64, i32 1, metadata !56, null}
!69 = metadata !{i32 64, i32 49, metadata !56, null}
!70 = metadata !{i32 66, i32 1, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !56, i32 64, i32 49, i32 18} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!72 = metadata !{i32 68, i32 1, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !71, i32 66, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!74 = metadata !{i32 72, i32 1, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !56, i32 68, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!76 = metadata !{i32 73, i32 1, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !75, i32 72, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!78 = metadata !{i32 73, i32 48, metadata !77, null}
!79 = metadata !{i32 74, i32 1, metadata !56, null}
!80 = metadata !{i32 76, i32 1, metadata !56, null}
!81 = metadata !{i32 77, i32 1, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !56, i32 76, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!83 = metadata !{i32 78, i32 1, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 77, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!85 = metadata !{i32 786443, metadata !1, metadata !82, i32 77, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!86 = metadata !{i32 80, i32 1, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !84, i32 78, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!88 = metadata !{i32 82, i32 1, metadata !87, null}
!89 = metadata !{i32 84, i32 1, metadata !87, null}
!90 = metadata !{i32 85, i32 1, metadata !87, null}
!91 = metadata !{i32 87, i32 1, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !87, i32 85, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!93 = metadata !{i32 87, i32 1, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !92, i32 87, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!95 = metadata !{i32 88, i32 1, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !97, i32 87, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!97 = metadata !{i32 786443, metadata !1, metadata !94, i32 87, i32 1, i32 28} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!98 = metadata !{i32 89, i32 1, metadata !96, null}
!99 = metadata !{i32 89, i32 50, metadata !96, null}
!100 = metadata !{i32 90, i32 1, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !96, i32 89, i32 50, i32 30} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!102 = metadata !{i32 92, i32 1, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !101, i32 90, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!104 = metadata !{i32 92, i32 51, metadata !103, null}
!105 = metadata !{i32 93, i32 1, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !103, i32 92, i32 51, i32 32} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!107 = metadata !{i32 94, i32 1, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !106, i32 93, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!109 = metadata !{i32 96, i32 1, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !106, i32 95, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!111 = metadata !{i32 87, i32 117, metadata !97, null}
!112 = metadata !{i32 100, i32 1, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !85, i32 87, i32 117, i32 35} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!114 = metadata !{i32 101, i32 1, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !113, i32 100, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!116 = metadata !{i32 101, i32 48, metadata !115, null}
!117 = metadata !{i32 102, i32 1, metadata !85, null}
!118 = metadata !{i32 103, i32 1, metadata !85, null}
!119 = metadata !{i32 107, i32 1, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !56, i32 103, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!121 = metadata !{i32 108, i32 1, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !120, i32 107, i32 1, i32 38} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!123 = metadata !{i32 108, i32 110, metadata !122, null}
!124 = metadata !{i32 110, i32 1, metadata !56, null}
!125 = metadata !{i32 112, i32 1, metadata !56, null}
!126 = metadata !{i32 113, i32 1, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !56, i32 112, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!128 = metadata !{i32 114, i32 1, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !127, i32 113, i32 1, i32 40} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!130 = metadata !{i32 116, i32 1, metadata !129, null}
!131 = metadata !{i32 120, i32 1, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !56, i32 116, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!133 = metadata !{i32 121, i32 1, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !132, i32 120, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/BFS/kernel_cuda.cu]
!135 = metadata !{i32 123, i32 2, metadata !58, null}
