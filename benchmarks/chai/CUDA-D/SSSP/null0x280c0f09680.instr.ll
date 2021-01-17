; ModuleID = 'null0x280c0f09680.instr'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.cudaFuncAttributes = type opaque
%struct.Node = type { i32, i32 }
%struct.Edge = type { i32, i32 }

@l_mem = external addrspace(3) global [0 x i32]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Node*, %struct.Edge*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii to i8*)], section "llvm.metadata"
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

define void @_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii(%struct.Node* %graph_nodes_av, %struct.Edge* %graph_edges_av, i32* %cost, i32* %color, i32* %q1, i32* %q2, i32* %n_t, i32* %head, i32* %tail, i32* %threads_end, i32* %threads_run, i32* %overflow, i32* %gray_shade, i32* %iter, i32 %LIMIT, i32 %CPU) {
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
  %gray_shade.addr = alloca i32*, align 8
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
  %__cuda_local_var_42766_9_non_const_gray_shade_local = alloca i32, align 4
  %__cuda_local_var_42778_9_non_const_my_base = alloca i32, align 4
  %__cuda_local_var_42846_9_non_const_local_shift = alloca i32, align 4
  %predef_tmp_comp = alloca i32, align 4
  %predef_tmp_comp1 = alloca i32, align 4
  %predef_tmp_comp2 = alloca i32, align 4
  %predef_tmp_comp3 = alloca i32, align 4
  %predef_tmp_comp4 = alloca i32, align 4
  %predef_tmp_comp5 = alloca i32, align 4
  %__cuda_local_var_42788_17_non_const_local_shift = alloca i32, align 4
  %__T23 = alloca i32, align 4
  %__cuda_local_var_42804_17_non_const_pid = alloca i32, align 4
  %__cuda_local_var_42807_17_non_const_cur_cost = alloca i32, align 4
  %__cuda_local_var_42808_18_non_const_cur_node = alloca %struct.Node, align 4
  %__cuda_local_var_42811_18_non_const_cur_edge = alloca %struct.Edge, align 4
  %i = alloca i32, align 4
  %__cuda_local_var_42816_21_non_const_id = alloca i32, align 4
  %__cuda_local_var_42817_21_non_const_cost_local = alloca i32, align 4
  %__cuda_local_var_42819_21_non_const_orig_cost = alloca i32, align 4
  %__cuda_local_var_42821_25_non_const_old_color = alloca i32, align 4
  %__cuda_local_var_42824_29_non_const_tail_index = alloca i32, align 4
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
  %13 = ptrtoint i32** %gray_shade.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %13, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %gray_shade, i32** %gray_shade.addr, align 8
  %14 = ptrtoint i32** %iter.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %14, i8 8, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32* %iter, i32** %iter.addr, align 8
  %15 = ptrtoint i32* %LIMIT.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %15, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %LIMIT, i32* %LIMIT.addr, align 4
  %16 = ptrtoint i32* %CPU.addr to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %16, i8 4, i32 0, i8* getelementptr inbounds ([1 x i8]* @0, i32 0, i32 0))
  store i32 %CPU, i32* %CPU.addr, align 4
  %17 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %17, i8 8, i32 51, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* addrspacecast ([0 x i32] addrspace(3)* @l_mem to i32*), i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !55
  %18 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %18, i8 8, i32 52, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %19 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !59
  %20 = getelementptr inbounds i32* %19, i32 1, !dbg !59
  %21 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %21, i8 8, i32 52, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* %20, i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !59
  %22 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %22, i8 8, i32 53, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %23 = load i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !60
  %24 = getelementptr inbounds i32* %23, i32 1600, !dbg !60
  %25 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %25, i8 8, i32 53, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* %24, i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !60
  %26 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %26, i8 8, i32 54, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %27 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !61
  %28 = getelementptr inbounds i32* %27, i32 1, !dbg !61
  %29 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %29, i8 8, i32 54, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32* %28, i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !61
  %30 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !62
  %31 = ptrtoint i32* %predef_tmp_comp to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %31, i8 4, i32 56, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %30, i32* %predef_tmp_comp, align 4, !dbg !62
  %32 = ptrtoint i32* %predef_tmp_comp to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %32, i8 4, i32 56, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %33 = load i32* %predef_tmp_comp, align 4, !dbg !62
  %34 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %34, i8 4, i32 56, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %33, i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !62
  %35 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !63
  %36 = ptrtoint i32* %predef_tmp_comp1 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %36, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %35, i32* %predef_tmp_comp1, align 4, !dbg !63
  %37 = ptrtoint i32* %predef_tmp_comp1 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %37, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %38 = load i32* %predef_tmp_comp1, align 4, !dbg !63
  %39 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !dbg !63
  %40 = ptrtoint i32* %predef_tmp_comp2 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %40, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %39, i32* %predef_tmp_comp2, align 4, !dbg !63
  %41 = ptrtoint i32* %predef_tmp_comp2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %41, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %42 = load i32* %predef_tmp_comp2, align 4, !dbg !63
  %43 = mul i32 %38, %42, !dbg !63
  %44 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !63
  %45 = ptrtoint i32* %predef_tmp_comp3 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %45, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %44, i32* %predef_tmp_comp3, align 4, !dbg !63
  %46 = ptrtoint i32* %predef_tmp_comp3 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %46, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %47 = load i32* %predef_tmp_comp3, align 4, !dbg !63
  %48 = add i32 %43, %47, !dbg !63
  %49 = ptrtoint i32* %__cuda_local_var_42758_15_non_const_gtid to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %49, i8 4, i32 57, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %48, i32* %__cuda_local_var_42758_15_non_const_gtid, align 4, !dbg !63
  %50 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !64
  %51 = ptrtoint i32* %predef_tmp_comp4 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %51, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %50, i32* %predef_tmp_comp4, align 4, !dbg !64
  %52 = ptrtoint i32* %predef_tmp_comp4 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %52, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %53 = load i32* %predef_tmp_comp4, align 4, !dbg !64
  %54 = ptrtoint i32* %__cuda_local_var_42759_15_non_const_MAXWG to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %54, i8 4, i32 58, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %53, i32* %__cuda_local_var_42759_15_non_const_MAXWG, align 4, !dbg !64
  %55 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !dbg !65
  %56 = ptrtoint i32* %predef_tmp_comp5 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %56, i8 4, i32 59, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %55, i32* %predef_tmp_comp5, align 4, !dbg !65
  %57 = ptrtoint i32* %predef_tmp_comp5 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %57, i8 4, i32 59, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %58 = load i32* %predef_tmp_comp5, align 4, !dbg !65
  %59 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %59, i8 4, i32 59, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %58, i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !65
  %60 = ptrtoint i32** %iter.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %60, i8 8, i32 61, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %61 = load i32** %iter.addr, align 8, !dbg !66
  %62 = getelementptr inbounds i32* %61, i32 0, !dbg !66
  %call = call i32 @__iAtomicAdd(i32* %62, i32 0), !dbg !67
  %63 = ptrtoint i32* %__cuda_local_var_42762_9_non_const_iter_local to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %63, i8 4, i32 61, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call, i32* %__cuda_local_var_42762_9_non_const_iter_local, align 4, !dbg !67
  %64 = ptrtoint i32** %n_t.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %64, i8 8, i32 63, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %65 = load i32** %n_t.addr, align 8, !dbg !68
  %call6 = call i32 @__iAtomicAdd(i32* %65, i32 0), !dbg !69
  %66 = ptrtoint i32* %__cuda_local_var_42764_9_non_const_n_t_local to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %66, i8 4, i32 63, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call6, i32* %__cuda_local_var_42764_9_non_const_n_t_local, align 4, !dbg !69
  %67 = ptrtoint i32** %gray_shade.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %67, i8 8, i32 65, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %68 = load i32** %gray_shade.addr, align 8, !dbg !70
  %69 = getelementptr inbounds i32* %68, i32 0, !dbg !70
  %call7 = call i32 @__iAtomicAdd(i32* %69, i32 0), !dbg !71
  %70 = ptrtoint i32* %__cuda_local_var_42766_9_non_const_gray_shade_local to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %70, i8 4, i32 65, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call7, i32* %__cuda_local_var_42766_9_non_const_gray_shade_local, align 4, !dbg !71
  %71 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %71, i8 4, i32 67, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %72 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !72
  %73 = icmp eq i32 %72, 0, !dbg !72
  br i1 %73, label %74, label %78, !dbg !72

; <label>:74                                      ; preds = %0
  %75 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %75, i8 8, i32 69, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %76 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !74
  %77 = ptrtoint i32* %76 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %77, i8 4, i32 69, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 0, i32* %76, align 4, !dbg !74
  br label %78, !dbg !74

; <label>:78                                      ; preds = %74, %0
  %79 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %79, i8 4, i32 73, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %80 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !76
  %81 = icmp eq i32 %80, 0, !dbg !76
  br i1 %81, label %82, label %91, !dbg !76

; <label>:82                                      ; preds = %78
  %83 = ptrtoint i32** %head.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %83, i8 8, i32 74, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %84 = load i32** %head.addr, align 8, !dbg !78
  %85 = getelementptr inbounds i32* %84, i32 0, !dbg !78
  %86 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %86, i8 4, i32 74, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %87 = load i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !78
  %call8 = call i32 @__iAtomicAdd(i32* %85, i32 %87), !dbg !80
  %88 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %88, i8 8, i32 74, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %89 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !80
  %90 = ptrtoint i32* %89 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %90, i8 4, i32 74, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call8, i32* %89, align 4, !dbg !80
  br label %91, !dbg !80

; <label>:91                                      ; preds = %82, %78
  call void @llvm.cuda.syncthreads(), !dbg !81
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %92 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %92, i8 8, i32 77, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %93 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !82
  %94 = ptrtoint i32* %93 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %94, i8 4, i32 77, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %95 = load i32* %93, align 4, !dbg !82
  %96 = ptrtoint i32* %__cuda_local_var_42778_9_non_const_my_base to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %96, i8 4, i32 77, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %95, i32* %__cuda_local_var_42778_9_non_const_my_base, align 4, !dbg !82
  br label %97, !dbg !83

; <label>:97                                      ; preds = %352, %91
  %98 = ptrtoint i32* %__cuda_local_var_42778_9_non_const_my_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %98, i8 4, i32 78, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %99 = load i32* %__cuda_local_var_42778_9_non_const_my_base, align 4, !dbg !83
  %100 = ptrtoint i32* %__cuda_local_var_42764_9_non_const_n_t_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %100, i8 4, i32 78, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %101 = load i32* %__cuda_local_var_42764_9_non_const_n_t_local, align 4, !dbg !83
  %102 = icmp slt i32 %99, %101, !dbg !83
  br i1 %102, label %103, label %358, !dbg !83

; <label>:103                                     ; preds = %97
  %104 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %104, i8 8, i32 81, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %105 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !85
  %106 = ptrtoint i32* %105 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %106, i8 4, i32 81, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %107 = load i32* %105, align 4, !dbg !85
  %108 = icmp sge i32 %107, 800, !dbg !85
  br i1 %108, label %109, label %173, !dbg !85

; <label>:109                                     ; preds = %103
  %110 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %110, i8 4, i32 82, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %111 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !88
  %112 = icmp eq i32 %111, 0, !dbg !88
  br i1 %112, label %113, label %127, !dbg !88

; <label>:113                                     ; preds = %109
  %114 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %114, i8 8, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %115 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !91
  %116 = ptrtoint i32* %115 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %116, i8 4, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %117 = load i32* %115, align 4, !dbg !91
  %118 = ptrtoint i32* %__T23 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %118, i8 4, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %117, i32* %__T23, align 4, !dbg !91
  %119 = ptrtoint i32** %tail.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %119, i8 8, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %120 = load i32** %tail.addr, align 8, !dbg !91
  %121 = getelementptr inbounds i32* %120, i32 0, !dbg !91
  %122 = ptrtoint i32* %__T23 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %122, i8 4, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %123 = load i32* %__T23, align 4, !dbg !91
  %call9 = call i32 @__iAtomicAdd(i32* %121, i32 %123), !dbg !93
  %124 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %124, i8 8, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %125 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !93
  %126 = ptrtoint i32* %125 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %126, i8 4, i32 84, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call9, i32* %125, align 4, !dbg !93
  br label %127, !dbg !93

; <label>:127                                     ; preds = %113, %109
  call void @llvm.cuda.syncthreads(), !dbg !94
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %128 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %128, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %129 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !95
  %130 = ptrtoint i32* %__cuda_local_var_42788_17_non_const_local_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %130, i8 4, i32 87, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %129, i32* %__cuda_local_var_42788_17_non_const_local_shift, align 4, !dbg !95
  br label %131, !dbg !96

; <label>:131                                     ; preds = %139, %127
  %132 = ptrtoint i32* %__cuda_local_var_42788_17_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %132, i8 4, i32 88, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %133 = load i32* %__cuda_local_var_42788_17_non_const_local_shift, align 4, !dbg !96
  %134 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %134, i8 8, i32 88, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %135 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !96
  %136 = ptrtoint i32* %135 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %136, i8 4, i32 88, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %137 = load i32* %135, align 4, !dbg !96
  %138 = icmp slt i32 %133, %137, !dbg !96
  br i1 %138, label %139, label %164, !dbg !96

; <label>:139                                     ; preds = %131
  %140 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %140, i8 8, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %141 = load i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !98
  %142 = ptrtoint i32* %__cuda_local_var_42788_17_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %142, i8 4, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %143 = load i32* %__cuda_local_var_42788_17_non_const_local_shift, align 4, !dbg !98
  %144 = getelementptr inbounds i32* %141, i32 %143, !dbg !98
  %145 = ptrtoint i32* %144 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %145, i8 4, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %146 = load i32* %144, align 4, !dbg !98
  %147 = ptrtoint i32** %q2.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %147, i8 8, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %148 = load i32** %q2.addr, align 8, !dbg !98
  %149 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %149, i8 8, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %150 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !98
  %151 = ptrtoint i32* %150 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %151, i8 4, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %152 = load i32* %150, align 4, !dbg !98
  %153 = ptrtoint i32* %__cuda_local_var_42788_17_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %153, i8 4, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %154 = load i32* %__cuda_local_var_42788_17_non_const_local_shift, align 4, !dbg !98
  %155 = add nsw i32 %152, %154, !dbg !98
  %156 = getelementptr inbounds i32* %148, i32 %155, !dbg !98
  %157 = ptrtoint i32* %156 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %157, i8 4, i32 89, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %146, i32* %156, align 4, !dbg !98
  %158 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %158, i8 4, i32 91, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %159 = load i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !100
  %160 = ptrtoint i32* %__cuda_local_var_42788_17_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %160, i8 4, i32 91, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %161 = load i32* %__cuda_local_var_42788_17_non_const_local_shift, align 4, !dbg !100
  %162 = add nsw i32 %161, %159, !dbg !100
  %163 = ptrtoint i32* %__cuda_local_var_42788_17_non_const_local_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %163, i8 4, i32 91, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %162, i32* %__cuda_local_var_42788_17_non_const_local_shift, align 4, !dbg !100
  br label %131, !dbg !100

; <label>:164                                     ; preds = %131
  call void @llvm.cuda.syncthreads(), !dbg !101
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %165 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %165, i8 4, i32 94, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %166 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !102
  %167 = icmp eq i32 %166, 0, !dbg !102
  br i1 %167, label %168, label %172, !dbg !102

; <label>:168                                     ; preds = %164
  %169 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %169, i8 8, i32 96, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %170 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !104
  %171 = ptrtoint i32* %170 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %171, i8 4, i32 96, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 0, i32* %170, align 4, !dbg !104
  br label %172, !dbg !104

; <label>:172                                     ; preds = %168, %164
  call void @llvm.cuda.syncthreads(), !dbg !106
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  br label %173, !dbg !106

; <label>:173                                     ; preds = %172, %103
  %174 = ptrtoint i32* %__cuda_local_var_42778_9_non_const_my_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %174, i8 4, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %175 = load i32* %__cuda_local_var_42778_9_non_const_my_base, align 4, !dbg !107
  %176 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %176, i8 4, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %177 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !107
  %178 = add nsw i32 %175, %177, !dbg !107
  %179 = ptrtoint i32* %__cuda_local_var_42764_9_non_const_n_t_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %179, i8 4, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %180 = load i32* %__cuda_local_var_42764_9_non_const_n_t_local, align 4, !dbg !107
  %181 = icmp slt i32 %178, %180, !dbg !107
  br i1 %181, label %182, label %188, !dbg !107

; <label>:182                                     ; preds = %173
  %183 = ptrtoint i32** %overflow.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %183, i8 8, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %184 = load i32** %overflow.addr, align 8, !dbg !107
  %185 = ptrtoint i32* %184 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %185, i8 4, i32 101, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %186 = load i32* %184, align 4, !dbg !107
  %187 = icmp eq i32 %186, 0, !dbg !107
  br label %188, !dbg !107

; <label>:188                                     ; preds = %182, %173
  %189 = phi i1 [ false, %173 ], [ %187, %182 ]
  br i1 %189, label %190, label %339, !dbg !107

; <label>:190                                     ; preds = %188
  %191 = ptrtoint i32** %q1.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %191, i8 8, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %192 = load i32** %q1.addr, align 8, !dbg !109
  %193 = ptrtoint i32* %__cuda_local_var_42778_9_non_const_my_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %193, i8 4, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %194 = load i32* %__cuda_local_var_42778_9_non_const_my_base, align 4, !dbg !109
  %195 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %195, i8 4, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %196 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !109
  %197 = add nsw i32 %194, %196, !dbg !109
  %198 = getelementptr inbounds i32* %192, i32 %197, !dbg !109
  %199 = ptrtoint i32* %198 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %199, i8 4, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %200 = load i32* %198, align 4, !dbg !109
  %201 = ptrtoint i32* %__cuda_local_var_42804_17_non_const_pid to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %201, i8 4, i32 103, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %200, i32* %__cuda_local_var_42804_17_non_const_pid, align 4, !dbg !109
  %202 = ptrtoint i32** %color.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %202, i8 8, i32 105, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %203 = load i32** %color.addr, align 8, !dbg !111
  %204 = ptrtoint i32* %__cuda_local_var_42804_17_non_const_pid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %204, i8 4, i32 105, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %205 = load i32* %__cuda_local_var_42804_17_non_const_pid, align 4, !dbg !111
  %206 = getelementptr inbounds i32* %203, i32 %205, !dbg !111
  %call10 = call i32 @_Z10atomicExchPii(i32* %206, i32 16677221), !dbg !111
  %207 = ptrtoint i32** %cost.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %207, i8 8, i32 106, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %208 = load i32** %cost.addr, align 8, !dbg !112
  %209 = ptrtoint i32* %__cuda_local_var_42804_17_non_const_pid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %209, i8 4, i32 106, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %210 = load i32* %__cuda_local_var_42804_17_non_const_pid, align 4, !dbg !112
  %211 = getelementptr inbounds i32* %208, i32 %210, !dbg !112
  %call11 = call i32 @__iAtomicAdd(i32* %211, i32 0), !dbg !113
  %212 = ptrtoint i32* %__cuda_local_var_42807_17_non_const_cur_cost to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %212, i8 4, i32 106, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call11, i32* %__cuda_local_var_42807_17_non_const_cur_cost, align 4, !dbg !113
  %213 = ptrtoint %struct.Node** %graph_nodes_av.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %213, i8 8, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %214 = load %struct.Node** %graph_nodes_av.addr, align 8, !dbg !114
  %215 = ptrtoint i32* %__cuda_local_var_42804_17_non_const_pid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %215, i8 4, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %216 = load i32* %__cuda_local_var_42804_17_non_const_pid, align 4, !dbg !114
  %217 = getelementptr inbounds %struct.Node* %214, i32 %216, !dbg !114
  %218 = getelementptr inbounds %struct.Node* %217, i32 0, i32 0, !dbg !114
  %219 = ptrtoint i32* %218 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %219, i8 4, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %220 = load i32* %218, align 4, !dbg !114
  %221 = getelementptr inbounds %struct.Node* %__cuda_local_var_42808_18_non_const_cur_node, i32 0, i32 0, !dbg !114
  %222 = ptrtoint i32* %221 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %222, i8 4, i32 108, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %220, i32* %221, align 4, !dbg !114
  %223 = ptrtoint %struct.Node** %graph_nodes_av.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %223, i8 8, i32 109, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %224 = load %struct.Node** %graph_nodes_av.addr, align 8, !dbg !115
  %225 = ptrtoint i32* %__cuda_local_var_42804_17_non_const_pid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %225, i8 4, i32 109, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %226 = load i32* %__cuda_local_var_42804_17_non_const_pid, align 4, !dbg !115
  %227 = getelementptr inbounds %struct.Node* %224, i32 %226, !dbg !115
  %228 = getelementptr inbounds %struct.Node* %227, i32 0, i32 1, !dbg !115
  %229 = ptrtoint i32* %228 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %229, i8 4, i32 109, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %230 = load i32* %228, align 4, !dbg !115
  %231 = getelementptr inbounds %struct.Node* %__cuda_local_var_42808_18_non_const_cur_node, i32 0, i32 1, !dbg !115
  %232 = ptrtoint i32* %231 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %232, i8 4, i32 109, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %230, i32* %231, align 4, !dbg !115
  %233 = getelementptr inbounds %struct.Node* %__cuda_local_var_42808_18_non_const_cur_node, i32 0, i32 0, !dbg !116
  %234 = ptrtoint i32* %233 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %234, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %235 = load i32* %233, align 4, !dbg !116
  %236 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %236, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %235, i32* %i, align 4, !dbg !116
  br label %237, !dbg !118

; <label>:237                                     ; preds = %333, %190
  %238 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %238, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %239 = load i32* %i, align 4, !dbg !118
  %240 = getelementptr inbounds %struct.Node* %__cuda_local_var_42808_18_non_const_cur_node, i32 0, i32 1, !dbg !118
  %241 = ptrtoint i32* %240 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %241, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %242 = load i32* %240, align 4, !dbg !118
  %243 = getelementptr inbounds %struct.Node* %__cuda_local_var_42808_18_non_const_cur_node, i32 0, i32 0, !dbg !118
  %244 = ptrtoint i32* %243 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %244, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %245 = load i32* %243, align 4, !dbg !118
  %246 = add nsw i32 %242, %245, !dbg !118
  %247 = icmp slt i32 %239, %246, !dbg !118
  br i1 %247, label %248, label %338, !dbg !118

; <label>:248                                     ; preds = %237
  %249 = ptrtoint %struct.Edge** %graph_edges_av.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %249, i8 8, i32 113, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %250 = load %struct.Edge** %graph_edges_av.addr, align 8, !dbg !120
  %251 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %251, i8 4, i32 113, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %252 = load i32* %i, align 4, !dbg !120
  %253 = getelementptr inbounds %struct.Edge* %250, i32 %252, !dbg !120
  %254 = getelementptr inbounds %struct.Edge* %253, i32 0, i32 0, !dbg !120
  %255 = ptrtoint i32* %254 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %255, i8 4, i32 113, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %256 = load i32* %254, align 4, !dbg !120
  %257 = getelementptr inbounds %struct.Edge* %__cuda_local_var_42811_18_non_const_cur_edge, i32 0, i32 0, !dbg !120
  %258 = ptrtoint i32* %257 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %258, i8 4, i32 113, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %256, i32* %257, align 4, !dbg !120
  %259 = ptrtoint %struct.Edge** %graph_edges_av.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %259, i8 8, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %260 = load %struct.Edge** %graph_edges_av.addr, align 8, !dbg !123
  %261 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %261, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %262 = load i32* %i, align 4, !dbg !123
  %263 = getelementptr inbounds %struct.Edge* %260, i32 %262, !dbg !123
  %264 = getelementptr inbounds %struct.Edge* %263, i32 0, i32 1, !dbg !123
  %265 = ptrtoint i32* %264 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %265, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %266 = load i32* %264, align 4, !dbg !123
  %267 = getelementptr inbounds %struct.Edge* %__cuda_local_var_42811_18_non_const_cur_edge, i32 0, i32 1, !dbg !123
  %268 = ptrtoint i32* %267 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %268, i8 4, i32 114, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %266, i32* %267, align 4, !dbg !123
  %269 = getelementptr inbounds %struct.Edge* %__cuda_local_var_42811_18_non_const_cur_edge, i32 0, i32 0, !dbg !124
  %270 = ptrtoint i32* %269 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %270, i8 4, i32 115, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %271 = load i32* %269, align 4, !dbg !124
  %272 = ptrtoint i32* %__cuda_local_var_42816_21_non_const_id to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %272, i8 4, i32 115, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %271, i32* %__cuda_local_var_42816_21_non_const_id, align 4, !dbg !124
  %273 = getelementptr inbounds %struct.Edge* %__cuda_local_var_42811_18_non_const_cur_edge, i32 0, i32 1, !dbg !125
  %274 = ptrtoint i32* %273 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %274, i8 4, i32 116, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %275 = load i32* %273, align 4, !dbg !125
  %276 = ptrtoint i32* %__cuda_local_var_42817_21_non_const_cost_local to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %276, i8 4, i32 116, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %275, i32* %__cuda_local_var_42817_21_non_const_cost_local, align 4, !dbg !125
  %277 = ptrtoint i32* %__cuda_local_var_42807_17_non_const_cur_cost to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %277, i8 4, i32 117, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %278 = load i32* %__cuda_local_var_42807_17_non_const_cur_cost, align 4, !dbg !126
  %279 = ptrtoint i32* %__cuda_local_var_42817_21_non_const_cost_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %279, i8 4, i32 117, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %280 = load i32* %__cuda_local_var_42817_21_non_const_cost_local, align 4, !dbg !126
  %281 = add nsw i32 %280, %278, !dbg !126
  %282 = ptrtoint i32* %__cuda_local_var_42817_21_non_const_cost_local to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %282, i8 4, i32 117, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %281, i32* %__cuda_local_var_42817_21_non_const_cost_local, align 4, !dbg !126
  %283 = ptrtoint i32** %cost.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %283, i8 8, i32 118, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %284 = load i32** %cost.addr, align 8, !dbg !127
  %285 = ptrtoint i32* %__cuda_local_var_42816_21_non_const_id to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %285, i8 4, i32 118, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %286 = load i32* %__cuda_local_var_42816_21_non_const_id, align 4, !dbg !127
  %287 = getelementptr inbounds i32* %284, i32 %286, !dbg !127
  %288 = ptrtoint i32* %__cuda_local_var_42817_21_non_const_cost_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %288, i8 4, i32 118, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %289 = load i32* %__cuda_local_var_42817_21_non_const_cost_local, align 4, !dbg !127
  %call12 = call i32 @__iAtomicMax(i32* %287, i32 %289), !dbg !128
  %290 = ptrtoint i32* %__cuda_local_var_42819_21_non_const_orig_cost to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %290, i8 4, i32 118, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call12, i32* %__cuda_local_var_42819_21_non_const_orig_cost, align 4, !dbg !128
  %291 = ptrtoint i32* %__cuda_local_var_42819_21_non_const_orig_cost to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %291, i8 4, i32 119, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %292 = load i32* %__cuda_local_var_42819_21_non_const_orig_cost, align 4, !dbg !129
  %293 = ptrtoint i32* %__cuda_local_var_42817_21_non_const_cost_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %293, i8 4, i32 119, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %294 = load i32* %__cuda_local_var_42817_21_non_const_cost_local, align 4, !dbg !129
  %295 = icmp slt i32 %292, %294, !dbg !129
  br i1 %295, label %296, label %332, !dbg !129

; <label>:296                                     ; preds = %248
  %297 = ptrtoint i32** %color.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %297, i8 8, i32 120, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %298 = load i32** %color.addr, align 8, !dbg !131
  %299 = ptrtoint i32* %__cuda_local_var_42816_21_non_const_id to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %299, i8 4, i32 120, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %300 = load i32* %__cuda_local_var_42816_21_non_const_id, align 4, !dbg !131
  %301 = getelementptr inbounds i32* %298, i32 %300, !dbg !131
  %302 = ptrtoint i32* %__cuda_local_var_42766_9_non_const_gray_shade_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %302, i8 4, i32 120, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %303 = load i32* %__cuda_local_var_42766_9_non_const_gray_shade_local, align 4, !dbg !131
  %call13 = call i32 @__iAtomicMax(i32* %301, i32 %303), !dbg !133
  %304 = ptrtoint i32* %__cuda_local_var_42821_25_non_const_old_color to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %304, i8 4, i32 120, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call13, i32* %__cuda_local_var_42821_25_non_const_old_color, align 4, !dbg !133
  %305 = ptrtoint i32* %__cuda_local_var_42821_25_non_const_old_color to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %305, i8 4, i32 121, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %306 = load i32* %__cuda_local_var_42821_25_non_const_old_color, align 4, !dbg !134
  %307 = ptrtoint i32* %__cuda_local_var_42766_9_non_const_gray_shade_local to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %307, i8 4, i32 121, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %308 = load i32* %__cuda_local_var_42766_9_non_const_gray_shade_local, align 4, !dbg !134
  %309 = icmp ne i32 %306, %308, !dbg !134
  br i1 %309, label %310, label %331, !dbg !134

; <label>:310                                     ; preds = %296
  %311 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %311, i8 8, i32 123, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %312 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !136
  %call14 = call i32 @__iAtomicAdd(i32* %312, i32 1), !dbg !138
  %313 = ptrtoint i32* %__cuda_local_var_42824_29_non_const_tail_index to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %313, i8 4, i32 123, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call14, i32* %__cuda_local_var_42824_29_non_const_tail_index, align 4, !dbg !138
  %314 = ptrtoint i32* %__cuda_local_var_42824_29_non_const_tail_index to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %314, i8 4, i32 124, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %315 = load i32* %__cuda_local_var_42824_29_non_const_tail_index, align 4, !dbg !139
  %316 = icmp sge i32 %315, 1600, !dbg !139
  br i1 %316, label %317, label %321, !dbg !139

; <label>:317                                     ; preds = %310
  %318 = ptrtoint i32** %overflow.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %318, i8 8, i32 125, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %319 = load i32** %overflow.addr, align 8, !dbg !141
  %320 = ptrtoint i32* %319 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %320, i8 4, i32 125, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 1, i32* %319, align 4, !dbg !141
  br label %330, !dbg !141

; <label>:321                                     ; preds = %310
  %322 = ptrtoint i32* %__cuda_local_var_42816_21_non_const_id to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %322, i8 4, i32 127, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %323 = load i32* %__cuda_local_var_42816_21_non_const_id, align 4, !dbg !143
  %324 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %324, i8 8, i32 127, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %325 = load i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !143
  %326 = ptrtoint i32* %__cuda_local_var_42824_29_non_const_tail_index to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %326, i8 4, i32 127, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %327 = load i32* %__cuda_local_var_42824_29_non_const_tail_index, align 4, !dbg !143
  %328 = getelementptr inbounds i32* %325, i32 %327, !dbg !143
  %329 = ptrtoint i32* %328 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %329, i8 4, i32 127, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %323, i32* %328, align 4, !dbg !143
  br label %330, !dbg !143

; <label>:330                                     ; preds = %321, %317
  br label %331, !dbg !143

; <label>:331                                     ; preds = %330, %296
  br label %332, !dbg !143

; <label>:332                                     ; preds = %331, %248
  br label %333, !dbg !145

; <label>:333                                     ; preds = %332
  %334 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %334, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %335 = load i32* %i, align 4, !dbg !145
  %336 = add nsw i32 %335, 1, !dbg !145
  %337 = ptrtoint i32* %i to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %337, i8 4, i32 112, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %336, i32* %i, align 4, !dbg !145
  br label %237, !dbg !145

; <label>:338                                     ; preds = %237
  br label %339, !dbg !145

; <label>:339                                     ; preds = %338, %188
  %340 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %340, i8 4, i32 133, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %341 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !146
  %342 = icmp eq i32 %341, 0, !dbg !146
  br i1 %342, label %343, label %352, !dbg !146

; <label>:343                                     ; preds = %339
  %344 = ptrtoint i32** %head.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %344, i8 8, i32 134, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %345 = load i32** %head.addr, align 8, !dbg !148
  %346 = getelementptr inbounds i32* %345, i32 0, !dbg !148
  %347 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %347, i8 4, i32 134, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %348 = load i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !148
  %call15 = call i32 @__iAtomicAdd(i32* %346, i32 %348), !dbg !150
  %349 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %349, i8 8, i32 134, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %350 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !150
  %351 = ptrtoint i32* %350 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %351, i8 4, i32 134, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call15, i32* %350, align 4, !dbg !150
  br label %352, !dbg !150

; <label>:352                                     ; preds = %343, %339
  call void @llvm.cuda.syncthreads(), !dbg !151
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %353 = ptrtoint i32** %__cuda_local_var_42755_10_non_const_base to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %353, i8 8, i32 136, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %354 = load i32** %__cuda_local_var_42755_10_non_const_base, align 8, !dbg !152
  %355 = ptrtoint i32* %354 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %355, i8 4, i32 136, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %356 = load i32* %354, align 4, !dbg !152
  %357 = ptrtoint i32* %__cuda_local_var_42778_9_non_const_my_base to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %357, i8 4, i32 136, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %356, i32* %__cuda_local_var_42778_9_non_const_my_base, align 4, !dbg !152
  br label %97, !dbg !152

; <label>:358                                     ; preds = %97
  %359 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %359, i8 4, i32 140, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %360 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !153
  %361 = icmp eq i32 %360, 0, !dbg !153
  br i1 %361, label %362, label %376, !dbg !153

; <label>:362                                     ; preds = %358
  %363 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %363, i8 8, i32 141, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %364 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !155
  %365 = ptrtoint i32* %364 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %365, i8 4, i32 141, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %366 = load i32* %364, align 4, !dbg !155
  %367 = ptrtoint i32* %__T22 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %367, i8 4, i32 141, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %366, i32* %__T22, align 4, !dbg !155
  %368 = ptrtoint i32** %tail.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %368, i8 8, i32 141, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %369 = load i32** %tail.addr, align 8, !dbg !155
  %370 = getelementptr inbounds i32* %369, i32 0, !dbg !155
  %371 = ptrtoint i32* %__T22 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %371, i8 4, i32 141, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %372 = load i32* %__T22, align 4, !dbg !155
  %call16 = call i32 @__iAtomicAdd(i32* %370, i32 %372), !dbg !157
  %373 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %373, i8 8, i32 141, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %374 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !157
  %375 = ptrtoint i32* %374 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %375, i8 4, i32 141, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %call16, i32* %374, align 4, !dbg !157
  br label %376, !dbg !157

; <label>:376                                     ; preds = %362, %358
  call void @llvm.cuda.syncthreads(), !dbg !158
  call void @__curd__llvm_cuda_syncthreads_afterHook()
  %377 = ptrtoint i32* %__cuda_local_var_42757_15_non_const_tid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %377, i8 4, i32 145, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %378 = load i32* %__cuda_local_var_42757_15_non_const_tid, align 4, !dbg !159
  %379 = ptrtoint i32* %__cuda_local_var_42846_9_non_const_local_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %379, i8 4, i32 145, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %378, i32* %__cuda_local_var_42846_9_non_const_local_shift, align 4, !dbg !159
  br label %380, !dbg !160

; <label>:380                                     ; preds = %388, %376
  %381 = ptrtoint i32* %__cuda_local_var_42846_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %381, i8 4, i32 146, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %382 = load i32* %__cuda_local_var_42846_9_non_const_local_shift, align 4, !dbg !160
  %383 = ptrtoint i32** %__cuda_local_var_42752_10_non_const_tail_bin to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %383, i8 8, i32 146, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %384 = load i32** %__cuda_local_var_42752_10_non_const_tail_bin, align 8, !dbg !160
  %385 = ptrtoint i32* %384 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %385, i8 4, i32 146, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %386 = load i32* %384, align 4, !dbg !160
  %387 = icmp slt i32 %382, %386, !dbg !160
  br i1 %387, label %388, label %413, !dbg !160

; <label>:388                                     ; preds = %380
  %389 = ptrtoint i32** %__cuda_local_var_42753_10_non_const_l_q2 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %389, i8 8, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %390 = load i32** %__cuda_local_var_42753_10_non_const_l_q2, align 8, !dbg !162
  %391 = ptrtoint i32* %__cuda_local_var_42846_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %391, i8 4, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %392 = load i32* %__cuda_local_var_42846_9_non_const_local_shift, align 4, !dbg !162
  %393 = getelementptr inbounds i32* %390, i32 %392, !dbg !162
  %394 = ptrtoint i32* %393 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %394, i8 4, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %395 = load i32* %393, align 4, !dbg !162
  %396 = ptrtoint i32** %q2.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %396, i8 8, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %397 = load i32** %q2.addr, align 8, !dbg !162
  %398 = ptrtoint i32** %__cuda_local_var_42754_10_non_const_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %398, i8 8, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %399 = load i32** %__cuda_local_var_42754_10_non_const_shift, align 8, !dbg !162
  %400 = ptrtoint i32* %399 to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %400, i8 4, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %401 = load i32* %399, align 4, !dbg !162
  %402 = ptrtoint i32* %__cuda_local_var_42846_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %402, i8 4, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %403 = load i32* %__cuda_local_var_42846_9_non_const_local_shift, align 4, !dbg !162
  %404 = add nsw i32 %401, %403, !dbg !162
  %405 = getelementptr inbounds i32* %397, i32 %404, !dbg !162
  %406 = ptrtoint i32* %405 to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %406, i8 4, i32 147, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %395, i32* %405, align 4, !dbg !162
  %407 = ptrtoint i32* %__cuda_local_var_42760_15_non_const_WG_SIZE to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %407, i8 4, i32 149, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %408 = load i32* %__cuda_local_var_42760_15_non_const_WG_SIZE, align 4, !dbg !164
  %409 = ptrtoint i32* %__cuda_local_var_42846_9_non_const_local_shift to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %409, i8 4, i32 149, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %410 = load i32* %__cuda_local_var_42846_9_non_const_local_shift, align 4, !dbg !164
  %411 = add nsw i32 %410, %408, !dbg !164
  %412 = ptrtoint i32* %__cuda_local_var_42846_9_non_const_local_shift to i64
  call void @__curd__GenericMemWrite_beforeHook(i64 %412, i8 4, i32 149, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  store i32 %411, i32* %__cuda_local_var_42846_9_non_const_local_shift, align 4, !dbg !164
  br label %380, !dbg !164

; <label>:413                                     ; preds = %380
  %414 = ptrtoint i32* %__cuda_local_var_42758_15_non_const_gtid to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %414, i8 4, i32 153, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %415 = load i32* %__cuda_local_var_42758_15_non_const_gtid, align 4, !dbg !165
  %416 = icmp eq i32 %415, 0, !dbg !165
  br i1 %416, label %417, label %421, !dbg !165

; <label>:417                                     ; preds = %413
  %418 = ptrtoint i32** %iter.addr to i64
  call void @__curd__GenericMemRead_beforeHook(i64 %418, i8 8, i32 154, i8* getelementptr inbounds ([15 x i8]* @4, i32 0, i32 0))
  %419 = load i32** %iter.addr, align 8, !dbg !167
  %420 = getelementptr inbounds i32* %419, i32 0, !dbg !167
  %call17 = call i32 @_Z9atomicAddPii(i32* %420, i32 1), !dbg !167
  br label %421, !dbg !167

; <label>:421                                     ; preds = %417, %413
  ret void, !dbg !169
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

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"lgenfe: EDG 4.9", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"kernel_cuda.cu", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !16, metadata !17, metadata !18, metadata !21, metadata !22}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaMalloc", metadata !"cudaMalloc", metadata !"cudaMalloc", i32 64, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i8**, i64)* @cudaMalloc, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 0] [cudaMalloc]
!5 = metadata !{metadata !"/usr/local/cuda-7.5/include/cuda_device_runtime_api.h", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaFuncGetAttributes", metadata !"cudaFuncGetAttributes", metadata !"cudaFuncGetAttributes", i32 69, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (%struct.cudaFuncAttributes*, i8*)* @cudaFuncGetAttributes, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 0] [cudaFuncGetAttributes]
!9 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaDeviceGetAttribute", metadata !"cudaDeviceGetAttribute", metadata !"cudaDeviceGetAttribute", i32 74, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32, i32)* @cudaDeviceGetAttribute, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 0] [cudaDeviceGetAttribute]
!10 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaGetDevice", metadata !"cudaGetDevice", metadata !"cudaGetDevice", i32 79, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*)* @cudaGetDevice, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 0] [cudaGetDevice]
!11 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", i32 84, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i8*, i32, i64)* @cudaOccupancyMaxActiveBlocksPerMultiprocessor, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 0] [cudaOccupancyMaxActiveBlocksPerMultiprocessor]
!12 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", i32 89, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i8*, i32, i64, i32)* @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 0] [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags]
!13 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"__iAtomicAdd", metadata !"__iAtomicAdd", metadata !"__iAtomicAdd", i32 1542, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @__iAtomicAdd, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 1542] [local] [def] [scope 0] [__iAtomicAdd]
!14 = metadata !{metadata !"/usr/local/cuda-7.5/include/device_functions.hpp", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP"}
!15 = metadata !{i32 786473, metadata !14}        ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/device_functions.hpp]
!16 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"__iAtomicExch", metadata !"__iAtomicExch", metadata !"__iAtomicExch", i32 1576, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @__iAtomicExch, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 1576] [local] [def] [scope 0] [__iAtomicExch]
!17 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"__iAtomicMax", metadata !"__iAtomicMax", metadata !"__iAtomicMax", i32 1630, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @__iAtomicMax, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 1630] [local] [def] [scope 0] [__iAtomicMax]
!18 = metadata !{i32 786478, metadata !19, metadata !20, metadata !"_Z9atomicAddPii", metadata !"_Z9atomicAddPii", metadata !"_Z9atomicAddPii", i32 78, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @_Z9atomicAddPii, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 78] [local] [def] [scope 0] [_Z9atomicAddPii]
!19 = metadata !{metadata !"/usr/local/cuda/bin/..//include/device_atomic_functions.hpp", metadata !"/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP"}
!20 = metadata !{i32 786473, metadata !19}        ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!21 = metadata !{i32 786478, metadata !19, metadata !20, metadata !"_Z10atomicExchPii", metadata !"_Z10atomicExchPii", metadata !"_Z10atomicExchPii", i32 98, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32)* @_Z10atomicExchPii, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 98] [local] [def] [scope 0] [_Z10atomicExchPii]
!22 = metadata !{i32 786478, metadata !1, metadata !23, metadata !"_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii", metadata !"_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii", metadata !"_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii", i32 45, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (%struct.Node*, %struct.Edge*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 0] [_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii]
!23 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!24 = metadata !{i32 1, i32 2, i32 2, i32 0}
!25 = metadata !{void (%struct.Node*, %struct.Edge*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii, metadata !"kernel", i32 1}
!26 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!27 = metadata !{i32 66, i32 3, metadata !28, null}
!28 = metadata !{i32 786443, metadata !5, metadata !4, i32 65, i32 1, i32 0} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!29 = metadata !{i32 71, i32 3, metadata !30, null}
!30 = metadata !{i32 786443, metadata !5, metadata !8, i32 70, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!31 = metadata !{i32 76, i32 3, metadata !32, null}
!32 = metadata !{i32 786443, metadata !5, metadata !9, i32 75, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!33 = metadata !{i32 81, i32 3, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, metadata !10, i32 80, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!35 = metadata !{i32 86, i32 3, metadata !36, null}
!36 = metadata !{i32 786443, metadata !5, metadata !11, i32 85, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!37 = metadata !{i32 91, i32 3, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, metadata !12, i32 90, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/cuda_device_runtime_api.h]
!39 = metadata !{i32 1544, i32 3, metadata !40, null}
!40 = metadata !{i32 786443, metadata !14, metadata !13, i32 1543, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/device_functions.hpp]
!41 = metadata !{i32 1578, i32 3, metadata !42, null}
!42 = metadata !{i32 786443, metadata !14, metadata !16, i32 1577, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/device_functions.hpp]
!43 = metadata !{i32 1632, i32 3, metadata !44, null}
!44 = metadata !{i32 786443, metadata !14, metadata !17, i32 1631, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda-7.5/include/device_functions.hpp]
!45 = metadata !{i32 80, i32 1, metadata !46, null}
!46 = metadata !{i32 786443, metadata !19, metadata !47, i32 79, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!47 = metadata !{i32 786443, metadata !19, metadata !48, i32 78, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!48 = metadata !{i32 786443, metadata !19, metadata !18, i32 78, i32 9, i32 9} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!49 = metadata !{i32 80, i32 8, metadata !46, null}
!50 = metadata !{i32 100, i32 1, metadata !51, null}
!51 = metadata !{i32 786443, metadata !19, metadata !52, i32 99, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!52 = metadata !{i32 786443, metadata !19, metadata !53, i32 98, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!53 = metadata !{i32 786443, metadata !19, metadata !21, i32 98, i32 9, i32 12} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP//usr/local/cuda/bin/..//include/device_atomic_functions.hpp]
!54 = metadata !{i32 100, i32 8, metadata !51, null}
!55 = metadata !{i32 51, i32 1, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 48, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 48, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!58 = metadata !{i32 786443, metadata !1, metadata !22, i32 48, i32 15, i32 15} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!59 = metadata !{i32 52, i32 1, metadata !56, null}
!60 = metadata !{i32 53, i32 1, metadata !56, null}
!61 = metadata !{i32 54, i32 1, metadata !56, null}
!62 = metadata !{i32 56, i32 1, metadata !56, null}
!63 = metadata !{i32 57, i32 1, metadata !56, null}
!64 = metadata !{i32 58, i32 1, metadata !56, null} ; [ DW_TAG_imported_module ]
!65 = metadata !{i32 59, i32 1, metadata !56, null}
!66 = metadata !{i32 61, i32 1, metadata !56, null}
!67 = metadata !{i32 61, i32 50, metadata !56, null}
!68 = metadata !{i32 63, i32 1, metadata !56, null}
!69 = metadata !{i32 63, i32 49, metadata !56, null}
!70 = metadata !{i32 65, i32 1, metadata !56, null}
!71 = metadata !{i32 65, i32 56, metadata !56, null}
!72 = metadata !{i32 67, i32 1, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !56, i32 65, i32 56, i32 18} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!74 = metadata !{i32 69, i32 1, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !73, i32 67, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!76 = metadata !{i32 73, i32 1, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !56, i32 69, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!78 = metadata !{i32 74, i32 1, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !77, i32 73, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!80 = metadata !{i32 74, i32 48, metadata !79, null}
!81 = metadata !{i32 75, i32 1, metadata !56, null}
!82 = metadata !{i32 77, i32 1, metadata !56, null}
!83 = metadata !{i32 78, i32 1, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !56, i32 77, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!85 = metadata !{i32 81, i32 1, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 78, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!87 = metadata !{i32 786443, metadata !1, metadata !84, i32 78, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!88 = metadata !{i32 82, i32 1, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 87, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!90 = metadata !{i32 786443, metadata !1, metadata !86, i32 81, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!91 = metadata !{i32 84, i32 1, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !89, i32 82, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!93 = metadata !{i32 84, i32 110, metadata !92, null}
!94 = metadata !{i32 86, i32 1, metadata !90, null}
!95 = metadata !{i32 87, i32 1, metadata !90, null}
!96 = metadata !{i32 88, i32 1, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !90, i32 87, i32 1, i32 28} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!98 = metadata !{i32 89, i32 1, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !97, i32 88, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!100 = metadata !{i32 91, i32 1, metadata !99, null}
!101 = metadata !{i32 93, i32 1, metadata !90, null}
!102 = metadata !{i32 94, i32 1, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !90, i32 93, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!104 = metadata !{i32 96, i32 1, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !103, i32 94, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!106 = metadata !{i32 98, i32 1, metadata !90, null}
!107 = metadata !{i32 101, i32 1, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !87, i32 98, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!109 = metadata !{i32 103, i32 1, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !108, i32 101, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!111 = metadata !{i32 105, i32 1, metadata !110, null}
!112 = metadata !{i32 106, i32 1, metadata !110, null}
!113 = metadata !{i32 106, i32 49, metadata !110, null}
!114 = metadata !{i32 108, i32 1, metadata !110, null}
!115 = metadata !{i32 109, i32 1, metadata !110, null}
!116 = metadata !{i32 112, i32 1, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !110, i32 109, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!118 = metadata !{i32 112, i32 1, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !117, i32 112, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!120 = metadata !{i32 113, i32 1, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !122, i32 112, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!122 = metadata !{i32 786443, metadata !1, metadata !119, i32 112, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!123 = metadata !{i32 114, i32 1, metadata !121, null}
!124 = metadata !{i32 115, i32 1, metadata !121, null}
!125 = metadata !{i32 116, i32 1, metadata !121, null}
!126 = metadata !{i32 117, i32 1, metadata !121, null}
!127 = metadata !{i32 118, i32 1, metadata !121, null}
!128 = metadata !{i32 118, i32 50, metadata !121, null}
!129 = metadata !{i32 119, i32 1, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !121, i32 118, i32 50, i32 38} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!131 = metadata !{i32 120, i32 1, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !130, i32 119, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!133 = metadata !{i32 120, i32 50, metadata !132, null}
!134 = metadata !{i32 121, i32 1, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !132, i32 120, i32 50, i32 40} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!136 = metadata !{i32 123, i32 1, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !135, i32 121, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!138 = metadata !{i32 123, i32 51, metadata !137, null}
!139 = metadata !{i32 124, i32 1, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !137, i32 123, i32 51, i32 42} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!141 = metadata !{i32 125, i32 1, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !140, i32 124, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!143 = metadata !{i32 127, i32 1, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !140, i32 126, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!145 = metadata !{i32 112, i32 117, metadata !122, null}
!146 = metadata !{i32 133, i32 1, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !87, i32 112, i32 117, i32 45} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!148 = metadata !{i32 134, i32 1, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !147, i32 133, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!150 = metadata !{i32 134, i32 48, metadata !149, null}
!151 = metadata !{i32 135, i32 1, metadata !87, null}
!152 = metadata !{i32 136, i32 1, metadata !87, null}
!153 = metadata !{i32 140, i32 1, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !56, i32 136, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!155 = metadata !{i32 141, i32 1, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !154, i32 140, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!157 = metadata !{i32 141, i32 110, metadata !156, null}
!158 = metadata !{i32 143, i32 1, metadata !56, null}
!159 = metadata !{i32 145, i32 1, metadata !56, null}
!160 = metadata !{i32 146, i32 1, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !56, i32 145, i32 1, i32 49} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!162 = metadata !{i32 147, i32 1, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !161, i32 146, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!164 = metadata !{i32 149, i32 1, metadata !163, null}
!165 = metadata !{i32 153, i32 1, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !56, i32 149, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!167 = metadata !{i32 154, i32 1, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !166, i32 153, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [/home/acg/new-curd/benchmarks/chai/CUDA-D/SSSP/kernel_cuda.cu]
!169 = metadata !{i32 156, i32 2, metadata !58, null}
