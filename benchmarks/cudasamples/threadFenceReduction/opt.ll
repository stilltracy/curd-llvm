; ModuleID = 'tmpxft_0000561b_00000000-8_threadFenceReduction.opt.bc'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.cudaFuncAttributes = type { i64, i64, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8 }

@_ZTV18StopWatchInterface = weak_odr addrspace(1) constant [9 x i64] zeroinitializer, align 8
@_ZTV14StopWatchLinux = weak_odr addrspace(1) constant [9 x i64] zeroinitializer, align 8
@retirementCount = addrspace(1) global i32 0, align 4
@sdata = external addrspace(3) global [0 x float]
@_ZZ16reduceSinglePassILj512ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@smem = external addrspace(3) global [0 x float]
@_ZZ16reduceSinglePassILj256ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj64ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj32ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj16ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj8ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj4ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj2ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj1ELb1EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj512ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj256ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj128ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj64ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj32ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj16ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj8ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj4ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj2ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@_ZZ16reduceSinglePassILj1ELb0EEvPKfPfjE6amLast = linkonce_odr addrspace(3) global i8 0, align 1
@llvm.used = appending global [61 x i8*] [i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb1EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb1EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb1EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb1EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb1EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb0EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb0EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb1EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb0EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb1EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb0EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb1EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb1EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb0EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb0EEvPKfPfjE6amLast to i8*), i8* addrspacecast (i32 addrspace(1)* @retirementCount to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb0EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb0EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb0EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb1EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb1EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb1EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb0EEvPKfPfj to i8*), i8* addrspacecast (i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb0EEvPKfPfjE6amLast to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb1EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb0EEvPKfPfj to i8*), i8* bitcast (void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb1EEvPKfPfj to i8*)], section "llvm.metadata"
@0 = private constant [121 x i8] c"/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReductionthreadFenceReduction_kernel.cuh\00", align 1

define weak i32 @cudaMalloc(i8** %p, i64 %s) {
entry:
  ret i32 30, !dbg !222
}

define weak i32 @cudaFuncGetAttributes(%struct.cudaFuncAttributes* %p, i8* %c) {
entry:
  ret i32 30, !dbg !224
}

define weak i32 @cudaDeviceGetAttribute(i32* %value, i32 %attr, i32 %device) {
entry:
  ret i32 30, !dbg !226
}

define weak i32 @cudaGetDevice(i32* %device) {
entry:
  ret i32 30, !dbg !228
}

define weak i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessor(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize) {
entry:
  ret i32 30, !dbg !230
}

define weak i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize, i32 %flags) {
entry:
  ret i32 30, !dbg !232
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #0

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #0

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #0

; Function Attrs: nounwind
declare void @llvm.cuda.syncthreads() #1

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj512ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !234
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !234
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !234
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !238
  %mul.i = shl i32 %3, 10, !dbg !238
  %add.i = add i32 %mul.i, %2, !dbg !238
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !239
  %mul7.i = shl i32 %4, 10, !dbg !239
  %cmp.i22 = icmp ult i32 %add.i, %n, !dbg !240
  br i1 %cmp.i22, label %while.body.i, label %while.end.i, !dbg !240

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i24 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i23 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i23 to i64, !dbg !241
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !241
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !241
  %add14.i = fadd float %mySum.0.i24, %tmp12.i, !dbg !241
  %add17.i = add i32 %i.0.i23, 512, !dbg !243
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !243
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !243
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !243
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !243
  %add25.i = add i32 %i.0.i23, %mul7.i, !dbg !245
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !240
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !240

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !246
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !246
  tail call void @llvm.cuda.syncthreads(), !dbg !249
  call void @__curd__barrierHook() #1
  %cmp.i.i = icmp ult i32 %2, 256, !dbg !250
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i, !dbg !250

if.then4.i.i:                                     ; preds = %while.end.i
  %add.i.i = add i32 %2, 256, !dbg !252
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add.i.i, !dbg !252
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp10.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !252
  %add11.i.i = fadd float %mySum.0.i.lcssa, %tmp10.i.i, !dbg !252
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add11.i.i, float addrspace(3)* %getElem2, align 4, !dbg !252
  br label %if.end.i.i, !dbg !252

if.end.i.i:                                       ; preds = %if.then4.i.i, %while.end.i
  %mySum.addr.0.i.i = phi float [ %add11.i.i, %if.then4.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !254
  tail call void @llvm.cuda.syncthreads(), !dbg !254
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !255
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !255

if.then21.i.i:                                    ; preds = %if.end.i.i
  %add25.i.i = add i32 %2, 128, !dbg !257
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !257
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !257
  %add29.i.i = fadd float %mySum.addr.0.i.i, %tmp28.i.i, !dbg !257
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem2, align 4, !dbg !257
  br label %if.end35.i.i, !dbg !257

if.end35.i.i:                                     ; preds = %if.then21.i.i, %if.end.i.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.addr.0.i.i, %if.end.i.i ], !dbg !259
  tail call void @llvm.cuda.syncthreads(), !dbg !259
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !260
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !260

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !262
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !262
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !262
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !262
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem2, align 4, !dbg !262
  br label %if.end54.i.i, !dbg !262

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !264
  tail call void @llvm.cuda.syncthreads(), !dbg !264
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !265
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !265

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !266
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !266
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !266
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !266
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !266
  %add78.i.i = add i32 %2, 16, !dbg !269
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !269
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !269
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !269
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !269
  %add93.i.i = add i32 %2, 8, !dbg !271
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !271
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !271
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !271
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !271
  %add108.i.i = add i32 %2, 4, !dbg !273
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !273
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !273
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !273
  %35 = ptrtoint float addrspace(3)* %getElem2 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !273
  %add123.i.i = add i32 %2, 2, !dbg !275
  %getElem17 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !275
  %37 = ptrtoint float addrspace(3)* %getElem17 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem17, align 4, !dbg !275
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !275
  %39 = ptrtoint float addrspace(3)* %getElem2 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !275
  %add138.i.i = add i32 %2, 1, !dbg !277
  %getElem19 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !277
  %41 = ptrtoint float addrspace(3)* %getElem19 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemReadHook(i64 %42, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem19, align 4, !dbg !277
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !277
  %43 = ptrtoint float addrspace(3)* %getElem2 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemWriteHook(i64 %44, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !277
  br label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !277

_Z11reduceBlockILj512EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !279
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit, !dbg !279

if.then30.i:                                      ; preds = %_Z11reduceBlockILj512EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !280
  %idxprom35.i = zext i32 %3 to i64, !dbg !280
  %getElem21 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !280
  %45 = ptrtoint float addrspace(1)* %getElem21 to i64
  call void @__curd__glmemWriteHook(i64 %45, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem21, align 4, !dbg !280
  br label %_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit, !dbg !280

_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit:         ; preds = %if.then30.i, %_Z11reduceBlockILj512EEvPVffj.exit.i
  ret void, !dbg !282
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj256ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !283
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !283
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !283
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !287
  %mul.i = shl i32 %3, 9, !dbg !287
  %add.i = add i32 %mul.i, %2, !dbg !287
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !288
  %mul7.i = shl i32 %4, 9, !dbg !288
  %cmp.i20 = icmp ult i32 %add.i, %n, !dbg !289
  br i1 %cmp.i20, label %while.body.i, label %while.end.i, !dbg !289

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i22 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i21 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i21 to i64, !dbg !290
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !290
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !290
  %add14.i = fadd float %mySum.0.i22, %tmp12.i, !dbg !290
  %add17.i = add i32 %i.0.i21, 256, !dbg !292
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !292
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !292
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !292
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !292
  %add25.i = add i32 %i.0.i21, %mul7.i, !dbg !294
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !289
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !289

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !295
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !295
  tail call void @llvm.cuda.syncthreads(), !dbg !298
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !299
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !299

if.then21.i.i:                                    ; preds = %while.end.i
  %add25.i.i = add i32 %2, 128, !dbg !301
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !301
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !301
  %add29.i.i = fadd float %mySum.0.i.lcssa, %tmp28.i.i, !dbg !301
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem2, align 4, !dbg !301
  br label %if.end35.i.i, !dbg !301

if.end35.i.i:                                     ; preds = %if.then21.i.i, %while.end.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !303
  tail call void @llvm.cuda.syncthreads(), !dbg !303
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !304
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !304

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !306
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !306
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !306
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !306
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem2, align 4, !dbg !306
  br label %if.end54.i.i, !dbg !306

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !308
  tail call void @llvm.cuda.syncthreads(), !dbg !308
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !309
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !309

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !310
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !310
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !310
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !310
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !310
  %add78.i.i = add i32 %2, 16, !dbg !313
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !313
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !313
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !313
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !313
  %add93.i.i = add i32 %2, 8, !dbg !315
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !315
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !315
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !315
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !315
  %add108.i.i = add i32 %2, 4, !dbg !317
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !317
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !317
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !317
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !317
  %add123.i.i = add i32 %2, 2, !dbg !319
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !319
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !319
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !319
  %35 = ptrtoint float addrspace(3)* %getElem2 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !319
  %add138.i.i = add i32 %2, 1, !dbg !321
  %getElem17 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !321
  %37 = ptrtoint float addrspace(3)* %getElem17 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem17, align 4, !dbg !321
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !321
  %39 = ptrtoint float addrspace(3)* %getElem2 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !321
  br label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !321

_Z11reduceBlockILj256EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !323
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit, !dbg !323

if.then30.i:                                      ; preds = %_Z11reduceBlockILj256EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !324
  %idxprom35.i = zext i32 %3 to i64, !dbg !324
  %getElem19 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !324
  %41 = ptrtoint float addrspace(1)* %getElem19 to i64
  call void @__curd__glmemWriteHook(i64 %41, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem19, align 4, !dbg !324
  br label %_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit, !dbg !324

_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit:         ; preds = %if.then30.i, %_Z11reduceBlockILj256EEvPVffj.exit.i
  ret void, !dbg !326
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj128ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !327
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !327
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !327
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !331
  %mul.i = shl i32 %3, 8, !dbg !331
  %add.i = add i32 %mul.i, %2, !dbg !331
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !332
  %mul7.i = shl i32 %4, 8, !dbg !332
  %cmp.i18 = icmp ult i32 %add.i, %n, !dbg !333
  br i1 %cmp.i18, label %while.body.i, label %while.end.i, !dbg !333

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i20 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i19 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i19 to i64, !dbg !334
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !334
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !334
  %add14.i = fadd float %mySum.0.i20, %tmp12.i, !dbg !334
  %add17.i = add i32 %i.0.i19, 128, !dbg !336
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !336
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !336
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !336
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !336
  %add25.i = add i32 %i.0.i19, %mul7.i, !dbg !338
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !333
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !333

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !339
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !339
  tail call void @llvm.cuda.syncthreads(), !dbg !342
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !343
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !343

if.then40.i.i:                                    ; preds = %while.end.i
  %add44.i.i = add i32 %2, 64, !dbg !345
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !345
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !345
  %add48.i.i = fadd float %mySum.0.i.lcssa, %tmp47.i.i, !dbg !345
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem2, align 4, !dbg !345
  br label %if.end54.i.i, !dbg !345

if.end54.i.i:                                     ; preds = %if.then40.i.i, %while.end.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !347
  tail call void @llvm.cuda.syncthreads(), !dbg !347
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !348
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !348

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !349
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !349
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !349
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !349
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !349
  %add78.i.i = add i32 %2, 16, !dbg !352
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !352
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !352
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !352
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !352
  %add93.i.i = add i32 %2, 8, !dbg !354
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !354
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !354
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !354
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !354
  %add108.i.i = add i32 %2, 4, !dbg !356
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !356
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !356
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !356
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !356
  %add123.i.i = add i32 %2, 2, !dbg !358
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !358
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !358
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !358
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !358
  %add138.i.i = add i32 %2, 1, !dbg !360
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !360
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !360
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !360
  %35 = ptrtoint float addrspace(3)* %getElem2 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !360
  br label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !360

_Z11reduceBlockILj128EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !362
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit, !dbg !362

if.then30.i:                                      ; preds = %_Z11reduceBlockILj128EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !363
  %idxprom35.i = zext i32 %3 to i64, !dbg !363
  %getElem17 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !363
  %37 = ptrtoint float addrspace(1)* %getElem17 to i64
  call void @__curd__glmemWriteHook(i64 %37, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem17, align 4, !dbg !363
  br label %_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit, !dbg !363

_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit:         ; preds = %if.then30.i, %_Z11reduceBlockILj128EEvPVffj.exit.i
  ret void, !dbg !365
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj64ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !366
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !366
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !366
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !370
  %mul.i = shl i32 %3, 7, !dbg !370
  %add.i = add i32 %mul.i, %2, !dbg !370
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !371
  %mul7.i = shl i32 %4, 7, !dbg !371
  %cmp.i16 = icmp ult i32 %add.i, %n, !dbg !372
  br i1 %cmp.i16, label %while.body.i, label %while.end.i, !dbg !372

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i18 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i17 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i17 to i64, !dbg !373
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !373
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !373
  %add14.i = fadd float %mySum.0.i18, %tmp12.i, !dbg !373
  %add17.i = add i32 %i.0.i17, 64, !dbg !375
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !375
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !375
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !375
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !375
  %add25.i = add i32 %i.0.i17, %mul7.i, !dbg !377
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !372
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !372

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !378
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !378
  tail call void @llvm.cuda.syncthreads(), !dbg !381
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !382
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !382

if.then58.i.i:                                    ; preds = %while.end.i
  %add63.i.i = add i32 %2, 32, !dbg !383
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !383
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !383
  %add67.i.i = fadd float %mySum.0.i.lcssa, %tmp66.i.i, !dbg !383
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !383
  %add78.i.i = add i32 %2, 16, !dbg !386
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !386
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !386
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !386
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !386
  %add93.i.i = add i32 %2, 8, !dbg !388
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !388
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !388
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !388
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !388
  %add108.i.i = add i32 %2, 4, !dbg !390
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !390
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !390
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !390
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !390
  %add123.i.i = add i32 %2, 2, !dbg !392
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !392
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !392
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !392
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !392
  %add138.i.i = add i32 %2, 1, !dbg !394
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !394
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !394
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !394
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !394
  br label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !394

_Z11reduceBlockILj64EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !396
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit, !dbg !396

if.then30.i:                                      ; preds = %_Z11reduceBlockILj64EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !397
  %idxprom35.i = zext i32 %3 to i64, !dbg !397
  %getElem15 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !397
  %33 = ptrtoint float addrspace(1)* %getElem15 to i64
  call void @__curd__glmemWriteHook(i64 %33, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem15, align 4, !dbg !397
  br label %_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit, !dbg !397

_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit:          ; preds = %if.then30.i, %_Z11reduceBlockILj64EEvPVffj.exit.i
  ret void, !dbg !399
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj32ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !400
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !400
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !400
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !404
  %mul.i = shl i32 %3, 6, !dbg !404
  %add.i = add i32 %mul.i, %2, !dbg !404
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !405
  %mul7.i = shl i32 %4, 6, !dbg !405
  %cmp.i14 = icmp ult i32 %add.i, %n, !dbg !406
  br i1 %cmp.i14, label %while.body.i, label %while.end.i, !dbg !406

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i16 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i15 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i15 to i64, !dbg !407
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !407
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !407
  %add14.i = fadd float %mySum.0.i16, %tmp12.i, !dbg !407
  %add17.i = add i32 %i.0.i15, 32, !dbg !409
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !409
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !409
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !409
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !409
  %add25.i = add i32 %i.0.i15, %mul7.i, !dbg !411
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !406
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !406

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !412
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !412
  tail call void @llvm.cuda.syncthreads(), !dbg !415
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !416
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !416

if.then58.i.i:                                    ; preds = %while.end.i
  %add78.i.i = add i32 %2, 16, !dbg !417
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !417
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !417
  %add82.i.i = fadd float %mySum.0.i.lcssa, %tmp81.i.i, !dbg !417
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !417
  %add93.i.i = add i32 %2, 8, !dbg !420
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !420
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !420
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !420
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !420
  %add108.i.i = add i32 %2, 4, !dbg !422
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !422
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !422
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !422
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !422
  %add123.i.i = add i32 %2, 2, !dbg !424
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !424
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !424
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !424
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !424
  %add138.i.i = add i32 %2, 1, !dbg !426
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !426
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !426
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !426
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !426
  br label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !426

_Z11reduceBlockILj32EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !428
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit, !dbg !428

if.then30.i:                                      ; preds = %_Z11reduceBlockILj32EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !429
  %idxprom35.i = zext i32 %3 to i64, !dbg !429
  %getElem13 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !429
  %29 = ptrtoint float addrspace(1)* %getElem13 to i64
  call void @__curd__glmemWriteHook(i64 %29, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem13, align 4, !dbg !429
  br label %_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit, !dbg !429

_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit:          ; preds = %if.then30.i, %_Z11reduceBlockILj32EEvPVffj.exit.i
  ret void, !dbg !431
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj16ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !432
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !432
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !432
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !436
  %mul.i = shl i32 %3, 5, !dbg !436
  %add.i = add i32 %mul.i, %2, !dbg !436
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !437
  %mul7.i = shl i32 %4, 5, !dbg !437
  %cmp.i12 = icmp ult i32 %add.i, %n, !dbg !438
  br i1 %cmp.i12, label %while.body.i, label %while.end.i, !dbg !438

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i14 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i13 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i13 to i64, !dbg !439
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !439
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !439
  %add14.i = fadd float %mySum.0.i14, %tmp12.i, !dbg !439
  %add17.i = add i32 %i.0.i13, 16, !dbg !441
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !441
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !441
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !441
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !441
  %add25.i = add i32 %i.0.i13, %mul7.i, !dbg !443
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !438
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !438

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !444
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !444
  tail call void @llvm.cuda.syncthreads(), !dbg !447
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !448
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !448

if.then58.i.i:                                    ; preds = %while.end.i
  %add93.i.i = add i32 %2, 8, !dbg !449
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !449
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !449
  %add97.i.i = fadd float %mySum.0.i.lcssa, %tmp96.i.i, !dbg !449
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !449
  %add108.i.i = add i32 %2, 4, !dbg !452
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !452
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !452
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !452
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !452
  %add123.i.i = add i32 %2, 2, !dbg !454
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !454
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !454
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !454
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !454
  %add138.i.i = add i32 %2, 1, !dbg !456
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !456
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !456
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !456
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !456
  br label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !456

_Z11reduceBlockILj16EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !458
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit, !dbg !458

if.then30.i:                                      ; preds = %_Z11reduceBlockILj16EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !459
  %idxprom35.i = zext i32 %3 to i64, !dbg !459
  %getElem11 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !459
  %25 = ptrtoint float addrspace(1)* %getElem11 to i64
  call void @__curd__glmemWriteHook(i64 %25, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem11, align 4, !dbg !459
  br label %_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit, !dbg !459

_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit:          ; preds = %if.then30.i, %_Z11reduceBlockILj16EEvPVffj.exit.i
  ret void, !dbg !461
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj8ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !462
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !462
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !462
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !466
  %mul.i = shl i32 %3, 4, !dbg !466
  %add.i = add i32 %mul.i, %2, !dbg !466
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !467
  %mul7.i = shl i32 %4, 4, !dbg !467
  %cmp.i10 = icmp ult i32 %add.i, %n, !dbg !468
  br i1 %cmp.i10, label %while.body.i, label %while.end.i, !dbg !468

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i12 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i11 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i11 to i64, !dbg !469
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !469
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !469
  %add14.i = fadd float %mySum.0.i12, %tmp12.i, !dbg !469
  %add17.i = add i32 %i.0.i11, 8, !dbg !471
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !471
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !471
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !471
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !471
  %add25.i = add i32 %i.0.i11, %mul7.i, !dbg !473
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !468
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !468

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !474
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !474
  tail call void @llvm.cuda.syncthreads(), !dbg !477
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !478
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !478

if.then58.i.i:                                    ; preds = %while.end.i
  %add108.i.i = add i32 %2, 4, !dbg !479
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !479
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !479
  %add112.i.i = fadd float %mySum.0.i.lcssa, %tmp111.i.i, !dbg !479
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !479
  %add123.i.i = add i32 %2, 2, !dbg !482
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !482
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !482
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !482
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !482
  %add138.i.i = add i32 %2, 1, !dbg !484
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !484
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !484
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !484
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !484
  br label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !484

_Z11reduceBlockILj8EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !486
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit, !dbg !486

if.then30.i:                                      ; preds = %_Z11reduceBlockILj8EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !487
  %idxprom35.i = zext i32 %3 to i64, !dbg !487
  %getElem9 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !487
  %21 = ptrtoint float addrspace(1)* %getElem9 to i64
  call void @__curd__glmemWriteHook(i64 %21, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem9, align 4, !dbg !487
  br label %_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit, !dbg !487

_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %_Z11reduceBlockILj8EEvPVffj.exit.i
  ret void, !dbg !489
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj4ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !490
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !490
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !490
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !494
  %mul.i = shl i32 %3, 3, !dbg !494
  %add.i = add i32 %mul.i, %2, !dbg !494
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !495
  %mul7.i = shl i32 %4, 3, !dbg !495
  %cmp.i8 = icmp ult i32 %add.i, %n, !dbg !496
  br i1 %cmp.i8, label %while.body.i, label %while.end.i, !dbg !496

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i10 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i9 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i9 to i64, !dbg !497
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !497
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !497
  %add14.i = fadd float %mySum.0.i10, %tmp12.i, !dbg !497
  %add17.i = add i32 %i.0.i9, 4, !dbg !499
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !499
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !499
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !499
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !499
  %add25.i = add i32 %i.0.i9, %mul7.i, !dbg !501
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !496
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !496

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !502
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !502
  tail call void @llvm.cuda.syncthreads(), !dbg !505
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !506
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !506

if.then58.i.i:                                    ; preds = %while.end.i
  %add123.i.i = add i32 %2, 2, !dbg !507
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !507
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !507
  %add127.i.i = fadd float %mySum.0.i.lcssa, %tmp126.i.i, !dbg !507
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !507
  %add138.i.i = add i32 %2, 1, !dbg !510
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !510
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !510
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !510
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !510
  br label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !510

_Z11reduceBlockILj4EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !512
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit, !dbg !512

if.then30.i:                                      ; preds = %_Z11reduceBlockILj4EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !513
  %idxprom35.i = zext i32 %3 to i64, !dbg !513
  %getElem7 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !513
  %17 = ptrtoint float addrspace(1)* %getElem7 to i64
  call void @__curd__glmemWriteHook(i64 %17, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem7, align 4, !dbg !513
  br label %_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit, !dbg !513

_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %_Z11reduceBlockILj4EEvPVffj.exit.i
  ret void, !dbg !515
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj2ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !516
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !516
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !516
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !520
  %mul.i = shl i32 %3, 2, !dbg !520
  %add.i = add i32 %mul.i, %2, !dbg !520
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !521
  %mul7.i = shl i32 %4, 2, !dbg !521
  %cmp.i6 = icmp ult i32 %add.i, %n, !dbg !522
  br i1 %cmp.i6, label %while.body.i, label %while.end.i, !dbg !522

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i8 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i7 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i7 to i64, !dbg !523
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !523
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !523
  %add14.i = fadd float %mySum.0.i8, %tmp12.i, !dbg !523
  %add17.i = add i32 %i.0.i7, 2, !dbg !525
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !525
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !525
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !525
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !525
  %add25.i = add i32 %i.0.i7, %mul7.i, !dbg !527
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !522
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !522

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !528
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !528
  tail call void @llvm.cuda.syncthreads(), !dbg !531
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !532
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !532

if.then58.i.i:                                    ; preds = %while.end.i
  %add138.i.i = add i32 %2, 1, !dbg !533
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !533
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !533
  %add142.i.i = fadd float %mySum.0.i.lcssa, %tmp141.i.i, !dbg !533
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !533
  br label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !533

_Z11reduceBlockILj2EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !536
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit, !dbg !536

if.then30.i:                                      ; preds = %_Z11reduceBlockILj2EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !537
  %idxprom35.i = zext i32 %3 to i64, !dbg !537
  %getElem5 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !537
  %13 = ptrtoint float addrspace(1)* %getElem5 to i64
  call void @__curd__glmemWriteHook(i64 %13, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem5, align 4, !dbg !537
  br label %_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit, !dbg !537

_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %_Z11reduceBlockILj2EEvPVffj.exit.i
  ret void, !dbg !539
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj1ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !540
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !540
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !540
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !544
  %mul.i = shl i32 %3, 1, !dbg !544
  %add.i = add i32 %mul.i, %2, !dbg !544
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !545
  %mul7.i = shl i32 %4, 1, !dbg !545
  %cmp.i4 = icmp ult i32 %add.i, %n, !dbg !546
  br i1 %cmp.i4, label %while.body.i, label %while.end.i, !dbg !546

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i6 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i5 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i5 to i64, !dbg !547
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !547
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !547
  %add14.i = fadd float %mySum.0.i6, %tmp12.i, !dbg !547
  %add17.i = add i32 %i.0.i5, 1, !dbg !549
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !549
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !549
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem1, align 4, !dbg !549
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !549
  %add25.i = add i32 %i.0.i5, %mul7.i, !dbg !551
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !546
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !546

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !552
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !552
  tail call void @llvm.cuda.syncthreads(), !dbg !555
  call void @__curd__barrierHook() #1
  %cmp29.i = icmp eq i32 %2, 0, !dbg !556
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit, !dbg !556

if.then30.i:                                      ; preds = %while.end.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !557
  %idxprom35.i = zext i32 %3 to i64, !dbg !557
  %getElem3 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !557
  %9 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemWriteHook(i64 %9, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem3, align 4, !dbg !557
  br label %_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit, !dbg !557

_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %while.end.i
  ret void, !dbg !559
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj512ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !560
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !560
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !560
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !564
  %mul.i = shl i32 %3, 10, !dbg !564
  %add.i = add i32 %mul.i, %2, !dbg !564
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !565
  %mul7.i = shl i32 %4, 10, !dbg !565
  %cmp.i22 = icmp ult i32 %add.i, %n, !dbg !566
  br i1 %cmp.i22, label %while.body.i, label %while.end.i, !dbg !566

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i24 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i23 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i23 to i64, !dbg !567
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !567
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !567
  %add14.i = fadd float %mySum.0.i24, %tmp12.i, !dbg !567
  %add16.i = add i32 %i.0.i23, 512, !dbg !569
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !569
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !569

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !570
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !570
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !570
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !570
  br label %if.end.i, !dbg !570

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !572
  %add29.i = add i32 %i.0.i23, %mul7.i, !dbg !572
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !566
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !566

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !573
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !573
  tail call void @llvm.cuda.syncthreads(), !dbg !575
  call void @__curd__barrierHook() #1
  %cmp.i.i = icmp ult i32 %2, 256, !dbg !576
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i, !dbg !576

if.then4.i.i:                                     ; preds = %while.end.i
  %add.i.i = add i32 %2, 256, !dbg !577
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add.i.i, !dbg !577
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp10.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !577
  %add11.i.i = fadd float %mySum.0.i.lcssa, %tmp10.i.i, !dbg !577
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add11.i.i, float addrspace(3)* %getElem2, align 4, !dbg !577
  br label %if.end.i.i, !dbg !577

if.end.i.i:                                       ; preds = %if.then4.i.i, %while.end.i
  %mySum.addr.0.i.i = phi float [ %add11.i.i, %if.then4.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !578
  tail call void @llvm.cuda.syncthreads(), !dbg !578
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !579
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !579

if.then21.i.i:                                    ; preds = %if.end.i.i
  %add25.i.i = add i32 %2, 128, !dbg !580
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !580
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !580
  %add29.i.i = fadd float %mySum.addr.0.i.i, %tmp28.i.i, !dbg !580
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem2, align 4, !dbg !580
  br label %if.end35.i.i, !dbg !580

if.end35.i.i:                                     ; preds = %if.then21.i.i, %if.end.i.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.addr.0.i.i, %if.end.i.i ], !dbg !581
  tail call void @llvm.cuda.syncthreads(), !dbg !581
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !582
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !582

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !583
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !583
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !583
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !583
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem2, align 4, !dbg !583
  br label %if.end54.i.i, !dbg !583

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !584
  tail call void @llvm.cuda.syncthreads(), !dbg !584
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !585
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !585

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !586
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !586
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !586
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !586
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !586
  %add78.i.i = add i32 %2, 16, !dbg !587
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !587
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !587
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !587
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !587
  %add93.i.i = add i32 %2, 8, !dbg !588
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !588
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !588
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !588
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !588
  %add108.i.i = add i32 %2, 4, !dbg !589
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !589
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !589
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !589
  %35 = ptrtoint float addrspace(3)* %getElem2 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !589
  %add123.i.i = add i32 %2, 2, !dbg !590
  %getElem17 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !590
  %37 = ptrtoint float addrspace(3)* %getElem17 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem17, align 4, !dbg !590
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !590
  %39 = ptrtoint float addrspace(3)* %getElem2 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !590
  %add138.i.i = add i32 %2, 1, !dbg !591
  %getElem19 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !591
  %41 = ptrtoint float addrspace(3)* %getElem19 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemReadHook(i64 %42, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem19, align 4, !dbg !591
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !591
  %43 = ptrtoint float addrspace(3)* %getElem2 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemWriteHook(i64 %44, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !591
  br label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !591

_Z11reduceBlockILj512EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !592
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit, !dbg !592

if.then34.i:                                      ; preds = %_Z11reduceBlockILj512EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !593
  %idxprom39.i = zext i32 %3 to i64, !dbg !593
  %getElem21 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !593
  %45 = ptrtoint float addrspace(1)* %getElem21 to i64
  call void @__curd__glmemWriteHook(i64 %45, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem21, align 4, !dbg !593
  br label %_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit, !dbg !593

_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit:         ; preds = %if.then34.i, %_Z11reduceBlockILj512EEvPVffj.exit.i
  ret void, !dbg !595
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj256ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !596
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !596
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !596
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !600
  %mul.i = shl i32 %3, 9, !dbg !600
  %add.i = add i32 %mul.i, %2, !dbg !600
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !601
  %mul7.i = shl i32 %4, 9, !dbg !601
  %cmp.i20 = icmp ult i32 %add.i, %n, !dbg !602
  br i1 %cmp.i20, label %while.body.i, label %while.end.i, !dbg !602

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i22 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i21 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i21 to i64, !dbg !603
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !603
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !603
  %add14.i = fadd float %mySum.0.i22, %tmp12.i, !dbg !603
  %add16.i = add i32 %i.0.i21, 256, !dbg !605
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !605
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !605

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !606
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !606
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !606
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !606
  br label %if.end.i, !dbg !606

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !608
  %add29.i = add i32 %i.0.i21, %mul7.i, !dbg !608
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !602
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !602

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !609
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !609
  tail call void @llvm.cuda.syncthreads(), !dbg !611
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !612
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !612

if.then21.i.i:                                    ; preds = %while.end.i
  %add25.i.i = add i32 %2, 128, !dbg !613
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !613
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !613
  %add29.i.i = fadd float %mySum.0.i.lcssa, %tmp28.i.i, !dbg !613
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem2, align 4, !dbg !613
  br label %if.end35.i.i, !dbg !613

if.end35.i.i:                                     ; preds = %if.then21.i.i, %while.end.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !614
  tail call void @llvm.cuda.syncthreads(), !dbg !614
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !615
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !615

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !616
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !616
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !616
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !616
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem2, align 4, !dbg !616
  br label %if.end54.i.i, !dbg !616

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !617
  tail call void @llvm.cuda.syncthreads(), !dbg !617
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !618
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !618

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !619
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !619
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !619
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !619
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !619
  %add78.i.i = add i32 %2, 16, !dbg !620
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !620
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !620
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !620
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !620
  %add93.i.i = add i32 %2, 8, !dbg !621
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !621
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !621
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !621
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !621
  %add108.i.i = add i32 %2, 4, !dbg !622
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !622
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !622
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !622
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !622
  %add123.i.i = add i32 %2, 2, !dbg !623
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !623
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !623
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !623
  %35 = ptrtoint float addrspace(3)* %getElem2 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !623
  %add138.i.i = add i32 %2, 1, !dbg !624
  %getElem17 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !624
  %37 = ptrtoint float addrspace(3)* %getElem17 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem17, align 4, !dbg !624
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !624
  %39 = ptrtoint float addrspace(3)* %getElem2 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !624
  br label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !624

_Z11reduceBlockILj256EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !625
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit, !dbg !625

if.then34.i:                                      ; preds = %_Z11reduceBlockILj256EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !626
  %idxprom39.i = zext i32 %3 to i64, !dbg !626
  %getElem19 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !626
  %41 = ptrtoint float addrspace(1)* %getElem19 to i64
  call void @__curd__glmemWriteHook(i64 %41, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem19, align 4, !dbg !626
  br label %_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit, !dbg !626

_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit:         ; preds = %if.then34.i, %_Z11reduceBlockILj256EEvPVffj.exit.i
  ret void, !dbg !628
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj128ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !629
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !629
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !629
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !633
  %mul.i = shl i32 %3, 8, !dbg !633
  %add.i = add i32 %mul.i, %2, !dbg !633
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !634
  %mul7.i = shl i32 %4, 8, !dbg !634
  %cmp.i18 = icmp ult i32 %add.i, %n, !dbg !635
  br i1 %cmp.i18, label %while.body.i, label %while.end.i, !dbg !635

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i20 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i19 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i19 to i64, !dbg !636
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !636
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !636
  %add14.i = fadd float %mySum.0.i20, %tmp12.i, !dbg !636
  %add16.i = add i32 %i.0.i19, 128, !dbg !638
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !638
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !638

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !639
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !639
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !639
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !639
  br label %if.end.i, !dbg !639

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !641
  %add29.i = add i32 %i.0.i19, %mul7.i, !dbg !641
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !635
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !635

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !642
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !642
  tail call void @llvm.cuda.syncthreads(), !dbg !644
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !645
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !645

if.then40.i.i:                                    ; preds = %while.end.i
  %add44.i.i = add i32 %2, 64, !dbg !646
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !646
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !646
  %add48.i.i = fadd float %mySum.0.i.lcssa, %tmp47.i.i, !dbg !646
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem2, align 4, !dbg !646
  br label %if.end54.i.i, !dbg !646

if.end54.i.i:                                     ; preds = %if.then40.i.i, %while.end.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !647
  tail call void @llvm.cuda.syncthreads(), !dbg !647
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !648
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !648

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !649
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !649
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !649
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !649
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !649
  %add78.i.i = add i32 %2, 16, !dbg !650
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !650
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !650
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !650
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !650
  %add93.i.i = add i32 %2, 8, !dbg !651
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !651
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !651
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !651
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !651
  %add108.i.i = add i32 %2, 4, !dbg !652
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !652
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !652
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !652
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !652
  %add123.i.i = add i32 %2, 2, !dbg !653
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !653
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !653
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !653
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !653
  %add138.i.i = add i32 %2, 1, !dbg !654
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !654
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !654
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !654
  %35 = ptrtoint float addrspace(3)* %getElem2 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !654
  br label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !654

_Z11reduceBlockILj128EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !655
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit, !dbg !655

if.then34.i:                                      ; preds = %_Z11reduceBlockILj128EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !656
  %idxprom39.i = zext i32 %3 to i64, !dbg !656
  %getElem17 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !656
  %37 = ptrtoint float addrspace(1)* %getElem17 to i64
  call void @__curd__glmemWriteHook(i64 %37, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem17, align 4, !dbg !656
  br label %_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit, !dbg !656

_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit:         ; preds = %if.then34.i, %_Z11reduceBlockILj128EEvPVffj.exit.i
  ret void, !dbg !658
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj64ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !659
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !659
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !659
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !663
  %mul.i = shl i32 %3, 7, !dbg !663
  %add.i = add i32 %mul.i, %2, !dbg !663
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !664
  %mul7.i = shl i32 %4, 7, !dbg !664
  %cmp.i16 = icmp ult i32 %add.i, %n, !dbg !665
  br i1 %cmp.i16, label %while.body.i, label %while.end.i, !dbg !665

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i18 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i17 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i17 to i64, !dbg !666
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !666
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !666
  %add14.i = fadd float %mySum.0.i18, %tmp12.i, !dbg !666
  %add16.i = add i32 %i.0.i17, 64, !dbg !668
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !668
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !668

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !669
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !669
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !669
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !669
  br label %if.end.i, !dbg !669

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !671
  %add29.i = add i32 %i.0.i17, %mul7.i, !dbg !671
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !665
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !665

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !672
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !672
  tail call void @llvm.cuda.syncthreads(), !dbg !674
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !675
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !675

if.then58.i.i:                                    ; preds = %while.end.i
  %add63.i.i = add i32 %2, 32, !dbg !676
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !676
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !676
  %add67.i.i = fadd float %mySum.0.i.lcssa, %tmp66.i.i, !dbg !676
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem2, align 4, !dbg !676
  %add78.i.i = add i32 %2, 16, !dbg !677
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !677
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !677
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !677
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !677
  %add93.i.i = add i32 %2, 8, !dbg !678
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !678
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !678
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !678
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !678
  %add108.i.i = add i32 %2, 4, !dbg !679
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !679
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !679
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !679
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !679
  %add123.i.i = add i32 %2, 2, !dbg !680
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !680
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !680
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !680
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !680
  %add138.i.i = add i32 %2, 1, !dbg !681
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !681
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !681
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !681
  %31 = ptrtoint float addrspace(3)* %getElem2 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !681
  br label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !681

_Z11reduceBlockILj64EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !682
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit, !dbg !682

if.then34.i:                                      ; preds = %_Z11reduceBlockILj64EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !683
  %idxprom39.i = zext i32 %3 to i64, !dbg !683
  %getElem15 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !683
  %33 = ptrtoint float addrspace(1)* %getElem15 to i64
  call void @__curd__glmemWriteHook(i64 %33, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem15, align 4, !dbg !683
  br label %_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit, !dbg !683

_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit:          ; preds = %if.then34.i, %_Z11reduceBlockILj64EEvPVffj.exit.i
  ret void, !dbg !685
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj32ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !686
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !686
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !686
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !690
  %mul.i = shl i32 %3, 6, !dbg !690
  %add.i = add i32 %mul.i, %2, !dbg !690
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !691
  %mul7.i = shl i32 %4, 6, !dbg !691
  %cmp.i14 = icmp ult i32 %add.i, %n, !dbg !692
  br i1 %cmp.i14, label %while.body.i, label %while.end.i, !dbg !692

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i16 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i15 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i15 to i64, !dbg !693
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !693
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !693
  %add14.i = fadd float %mySum.0.i16, %tmp12.i, !dbg !693
  %add16.i = add i32 %i.0.i15, 32, !dbg !695
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !695
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !695

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !696
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !696
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !696
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !696
  br label %if.end.i, !dbg !696

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !698
  %add29.i = add i32 %i.0.i15, %mul7.i, !dbg !698
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !692
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !692

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !699
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !699
  tail call void @llvm.cuda.syncthreads(), !dbg !701
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !702
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !702

if.then58.i.i:                                    ; preds = %while.end.i
  %add78.i.i = add i32 %2, 16, !dbg !703
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !703
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !703
  %add82.i.i = fadd float %mySum.0.i.lcssa, %tmp81.i.i, !dbg !703
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem2, align 4, !dbg !703
  %add93.i.i = add i32 %2, 8, !dbg !704
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !704
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !704
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !704
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !704
  %add108.i.i = add i32 %2, 4, !dbg !705
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !705
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !705
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !705
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !705
  %add123.i.i = add i32 %2, 2, !dbg !706
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !706
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !706
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !706
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !706
  %add138.i.i = add i32 %2, 1, !dbg !707
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !707
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !707
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !707
  %27 = ptrtoint float addrspace(3)* %getElem2 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !707
  br label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !707

_Z11reduceBlockILj32EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !708
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit, !dbg !708

if.then34.i:                                      ; preds = %_Z11reduceBlockILj32EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !709
  %idxprom39.i = zext i32 %3 to i64, !dbg !709
  %getElem13 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !709
  %29 = ptrtoint float addrspace(1)* %getElem13 to i64
  call void @__curd__glmemWriteHook(i64 %29, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem13, align 4, !dbg !709
  br label %_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit, !dbg !709

_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit:          ; preds = %if.then34.i, %_Z11reduceBlockILj32EEvPVffj.exit.i
  ret void, !dbg !711
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj16ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !712
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !712
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !712
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !716
  %mul.i = shl i32 %3, 5, !dbg !716
  %add.i = add i32 %mul.i, %2, !dbg !716
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !717
  %mul7.i = shl i32 %4, 5, !dbg !717
  %cmp.i12 = icmp ult i32 %add.i, %n, !dbg !718
  br i1 %cmp.i12, label %while.body.i, label %while.end.i, !dbg !718

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i14 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i13 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i13 to i64, !dbg !719
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !719
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !719
  %add14.i = fadd float %mySum.0.i14, %tmp12.i, !dbg !719
  %add16.i = add i32 %i.0.i13, 16, !dbg !721
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !721
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !721

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !722
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !722
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !722
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !722
  br label %if.end.i, !dbg !722

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !724
  %add29.i = add i32 %i.0.i13, %mul7.i, !dbg !724
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !718
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !718

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !725
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !725
  tail call void @llvm.cuda.syncthreads(), !dbg !727
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !728
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !728

if.then58.i.i:                                    ; preds = %while.end.i
  %add93.i.i = add i32 %2, 8, !dbg !729
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !729
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !729
  %add97.i.i = fadd float %mySum.0.i.lcssa, %tmp96.i.i, !dbg !729
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem2, align 4, !dbg !729
  %add108.i.i = add i32 %2, 4, !dbg !730
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !730
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !730
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !730
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !730
  %add123.i.i = add i32 %2, 2, !dbg !731
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !731
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !731
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !731
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !731
  %add138.i.i = add i32 %2, 1, !dbg !732
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !732
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !732
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !732
  %23 = ptrtoint float addrspace(3)* %getElem2 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !732
  br label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !732

_Z11reduceBlockILj16EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !733
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit, !dbg !733

if.then34.i:                                      ; preds = %_Z11reduceBlockILj16EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !734
  %idxprom39.i = zext i32 %3 to i64, !dbg !734
  %getElem11 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !734
  %25 = ptrtoint float addrspace(1)* %getElem11 to i64
  call void @__curd__glmemWriteHook(i64 %25, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem11, align 4, !dbg !734
  br label %_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit, !dbg !734

_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit:          ; preds = %if.then34.i, %_Z11reduceBlockILj16EEvPVffj.exit.i
  ret void, !dbg !736
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj8ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !737
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !737
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !737
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !741
  %mul.i = shl i32 %3, 4, !dbg !741
  %add.i = add i32 %mul.i, %2, !dbg !741
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !742
  %mul7.i = shl i32 %4, 4, !dbg !742
  %cmp.i10 = icmp ult i32 %add.i, %n, !dbg !743
  br i1 %cmp.i10, label %while.body.i, label %while.end.i, !dbg !743

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i12 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i11 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i11 to i64, !dbg !744
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !744
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !744
  %add14.i = fadd float %mySum.0.i12, %tmp12.i, !dbg !744
  %add16.i = add i32 %i.0.i11, 8, !dbg !746
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !746
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !746

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !747
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !747
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !747
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !747
  br label %if.end.i, !dbg !747

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !749
  %add29.i = add i32 %i.0.i11, %mul7.i, !dbg !749
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !743
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !743

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !750
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !750
  tail call void @llvm.cuda.syncthreads(), !dbg !752
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !753
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !753

if.then58.i.i:                                    ; preds = %while.end.i
  %add108.i.i = add i32 %2, 4, !dbg !754
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !754
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !754
  %add112.i.i = fadd float %mySum.0.i.lcssa, %tmp111.i.i, !dbg !754
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem2, align 4, !dbg !754
  %add123.i.i = add i32 %2, 2, !dbg !755
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !755
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !755
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !755
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !755
  %add138.i.i = add i32 %2, 1, !dbg !756
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !756
  %17 = ptrtoint float addrspace(3)* %getElem7 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !756
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !756
  %19 = ptrtoint float addrspace(3)* %getElem2 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !756
  br label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !756

_Z11reduceBlockILj8EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !757
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit, !dbg !757

if.then34.i:                                      ; preds = %_Z11reduceBlockILj8EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !758
  %idxprom39.i = zext i32 %3 to i64, !dbg !758
  %getElem9 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !758
  %21 = ptrtoint float addrspace(1)* %getElem9 to i64
  call void @__curd__glmemWriteHook(i64 %21, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem9, align 4, !dbg !758
  br label %_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit, !dbg !758

_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %_Z11reduceBlockILj8EEvPVffj.exit.i
  ret void, !dbg !760
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj4ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !761
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !761
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !761
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !765
  %mul.i = shl i32 %3, 3, !dbg !765
  %add.i = add i32 %mul.i, %2, !dbg !765
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !766
  %mul7.i = shl i32 %4, 3, !dbg !766
  %cmp.i8 = icmp ult i32 %add.i, %n, !dbg !767
  br i1 %cmp.i8, label %while.body.i, label %while.end.i, !dbg !767

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i10 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i9 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i9 to i64, !dbg !768
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !768
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !768
  %add14.i = fadd float %mySum.0.i10, %tmp12.i, !dbg !768
  %add16.i = add i32 %i.0.i9, 4, !dbg !770
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !770
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !770

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !771
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !771
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !771
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !771
  br label %if.end.i, !dbg !771

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !773
  %add29.i = add i32 %i.0.i9, %mul7.i, !dbg !773
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !767
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !767

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !774
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !774
  tail call void @llvm.cuda.syncthreads(), !dbg !776
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !777
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !777

if.then58.i.i:                                    ; preds = %while.end.i
  %add123.i.i = add i32 %2, 2, !dbg !778
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !778
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !778
  %add127.i.i = fadd float %mySum.0.i.lcssa, %tmp126.i.i, !dbg !778
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem2, align 4, !dbg !778
  %add138.i.i = add i32 %2, 1, !dbg !779
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !779
  %13 = ptrtoint float addrspace(3)* %getElem5 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !779
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !779
  %15 = ptrtoint float addrspace(3)* %getElem2 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !779
  br label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !779

_Z11reduceBlockILj4EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !780
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit, !dbg !780

if.then34.i:                                      ; preds = %_Z11reduceBlockILj4EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !781
  %idxprom39.i = zext i32 %3 to i64, !dbg !781
  %getElem7 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !781
  %17 = ptrtoint float addrspace(1)* %getElem7 to i64
  call void @__curd__glmemWriteHook(i64 %17, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem7, align 4, !dbg !781
  br label %_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit, !dbg !781

_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %_Z11reduceBlockILj4EEvPVffj.exit.i
  ret void, !dbg !783
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj2ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !784
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !784
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !784
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !788
  %mul.i = shl i32 %3, 2, !dbg !788
  %add.i = add i32 %mul.i, %2, !dbg !788
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !789
  %mul7.i = shl i32 %4, 2, !dbg !789
  %cmp.i6 = icmp ult i32 %add.i, %n, !dbg !790
  br i1 %cmp.i6, label %while.body.i, label %while.end.i, !dbg !790

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i8 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i7 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i7 to i64, !dbg !791
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !791
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !791
  %add14.i = fadd float %mySum.0.i8, %tmp12.i, !dbg !791
  %add16.i = add i32 %i.0.i7, 2, !dbg !793
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !793
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !793

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !794
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !794
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !794
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !794
  br label %if.end.i, !dbg !794

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !796
  %add29.i = add i32 %i.0.i7, %mul7.i, !dbg !796
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !790
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !790

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !797
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !797
  tail call void @llvm.cuda.syncthreads(), !dbg !799
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !800
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !800

if.then58.i.i:                                    ; preds = %while.end.i
  %add138.i.i = add i32 %2, 1, !dbg !801
  %getElem3 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !801
  %9 = ptrtoint float addrspace(3)* %getElem3 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem3, align 4, !dbg !801
  %add142.i.i = fadd float %mySum.0.i.lcssa, %tmp141.i.i, !dbg !801
  %11 = ptrtoint float addrspace(3)* %getElem2 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem2, align 4, !dbg !801
  br label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !801

_Z11reduceBlockILj2EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !802
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit, !dbg !802

if.then34.i:                                      ; preds = %_Z11reduceBlockILj2EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !803
  %idxprom39.i = zext i32 %3 to i64, !dbg !803
  %getElem5 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !803
  %13 = ptrtoint float addrspace(1)* %getElem5 to i64
  call void @__curd__glmemWriteHook(i64 %13, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem5, align 4, !dbg !803
  br label %_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit, !dbg !803

_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %_Z11reduceBlockILj2EEvPVffj.exit.i
  ret void, !dbg !805
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z15reduceMultiPassILj1ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !806
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !806
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !806
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !810
  %mul.i = shl i32 %3, 1, !dbg !810
  %add.i = add i32 %mul.i, %2, !dbg !810
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !811
  %mul7.i = shl i32 %4, 1, !dbg !811
  %cmp.i4 = icmp ult i32 %add.i, %n, !dbg !812
  br i1 %cmp.i4, label %while.body.i, label %while.end.i, !dbg !812

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i6 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i5 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i5 to i64, !dbg !813
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !813
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !813
  %add14.i = fadd float %mySum.0.i6, %tmp12.i, !dbg !813
  %add16.i = add i32 %i.0.i5, 1, !dbg !815
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !815
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !815

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !816
  %getElem1 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !816
  %6 = ptrtoint float addrspace(1)* %getElem1 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem1, align 4, !dbg !816
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !816
  br label %if.end.i, !dbg !816

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !818
  %add29.i = add i32 %i.0.i5, %mul7.i, !dbg !818
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !812
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !812

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem2 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !819
  %7 = ptrtoint float addrspace(3)* %getElem2 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem2, align 4, !dbg !819
  tail call void @llvm.cuda.syncthreads(), !dbg !821
  call void @__curd__barrierHook() #1
  %cmp33.i = icmp eq i32 %2, 0, !dbg !822
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit, !dbg !822

if.then34.i:                                      ; preds = %while.end.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !823
  %idxprom39.i = zext i32 %3 to i64, !dbg !823
  %getElem3 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !823
  %9 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemWriteHook(i64 %9, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem3, align 4, !dbg !823
  br label %_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit, !dbg !823

_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %while.end.i
  ret void, !dbg !825
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj512ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !826
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !826
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !826
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !829
  %mul.i = shl i32 %3, 10, !dbg !829
  %add.i = add i32 %mul.i, %2, !dbg !829
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !830
  %mul7.i = shl i32 %4, 10, !dbg !830
  %cmp.i50 = icmp ult i32 %add.i, %n, !dbg !831
  br i1 %cmp.i50, label %while.body.i, label %while.end.i, !dbg !831

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i52 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i51 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i51 to i64, !dbg !832
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !832
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !832
  %add14.i = fadd float %mySum.0.i52, %tmp12.i, !dbg !832
  %add17.i = add i32 %i.0.i51, 512, !dbg !833
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !833
  %getElem6 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !833
  %6 = ptrtoint float addrspace(1)* %getElem6 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem6, align 4, !dbg !833
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !833
  %add25.i = add i32 %i.0.i51, %mul7.i, !dbg !834
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !831
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !831

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !835
  %7 = ptrtoint float addrspace(3)* %getElem7 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem7, align 4, !dbg !835
  tail call void @llvm.cuda.syncthreads(), !dbg !837
  call void @__curd__barrierHook() #1
  %cmp.i.i = icmp ult i32 %2, 256, !dbg !838
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i, !dbg !838

if.then4.i.i:                                     ; preds = %while.end.i
  %add.i.i = add i32 %2, 256, !dbg !839
  %getElem8 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add.i.i, !dbg !839
  %9 = ptrtoint float addrspace(3)* %getElem8 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp10.i.i = load volatile float addrspace(3)* %getElem8, align 4, !dbg !839
  %add11.i.i = fadd float %mySum.0.i.lcssa, %tmp10.i.i, !dbg !839
  %11 = ptrtoint float addrspace(3)* %getElem7 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add11.i.i, float addrspace(3)* %getElem7, align 4, !dbg !839
  br label %if.end.i.i, !dbg !839

if.end.i.i:                                       ; preds = %if.then4.i.i, %while.end.i
  %mySum.addr.0.i.i = phi float [ %add11.i.i, %if.then4.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !840
  tail call void @llvm.cuda.syncthreads(), !dbg !840
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !841
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !841

if.then21.i.i:                                    ; preds = %if.end.i.i
  %add25.i.i = add i32 %2, 128, !dbg !842
  %getElem10 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !842
  %13 = ptrtoint float addrspace(3)* %getElem10 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem10, align 4, !dbg !842
  %add29.i.i = fadd float %mySum.addr.0.i.i, %tmp28.i.i, !dbg !842
  %15 = ptrtoint float addrspace(3)* %getElem7 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem7, align 4, !dbg !842
  br label %if.end35.i.i, !dbg !842

if.end35.i.i:                                     ; preds = %if.then21.i.i, %if.end.i.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.addr.0.i.i, %if.end.i.i ], !dbg !843
  tail call void @llvm.cuda.syncthreads(), !dbg !843
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !844
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !844

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !845
  %getElem12 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !845
  %17 = ptrtoint float addrspace(3)* %getElem12 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem12, align 4, !dbg !845
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !845
  %19 = ptrtoint float addrspace(3)* %getElem7 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem7, align 4, !dbg !845
  br label %if.end54.i.i, !dbg !845

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !846
  tail call void @llvm.cuda.syncthreads(), !dbg !846
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !847
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !847

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !848
  %getElem14 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !848
  %21 = ptrtoint float addrspace(3)* %getElem14 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !848
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !848
  %23 = ptrtoint float addrspace(3)* %getElem7 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem7, align 4, !dbg !848
  %add78.i.i = add i32 %2, 16, !dbg !849
  %getElem16 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !849
  %25 = ptrtoint float addrspace(3)* %getElem16 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !849
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !849
  %27 = ptrtoint float addrspace(3)* %getElem7 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem7, align 4, !dbg !849
  %add93.i.i = add i32 %2, 8, !dbg !850
  %getElem18 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !850
  %29 = ptrtoint float addrspace(3)* %getElem18 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !850
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !850
  %31 = ptrtoint float addrspace(3)* %getElem7 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem7, align 4, !dbg !850
  %add108.i.i = add i32 %2, 4, !dbg !851
  %getElem20 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !851
  %33 = ptrtoint float addrspace(3)* %getElem20 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !851
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !851
  %35 = ptrtoint float addrspace(3)* %getElem7 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem7, align 4, !dbg !851
  %add123.i.i = add i32 %2, 2, !dbg !852
  %getElem22 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !852
  %37 = ptrtoint float addrspace(3)* %getElem22 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !852
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !852
  %39 = ptrtoint float addrspace(3)* %getElem7 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem7, align 4, !dbg !852
  %add138.i.i = add i32 %2, 1, !dbg !853
  %getElem24 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !853
  %41 = ptrtoint float addrspace(3)* %getElem24 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemReadHook(i64 %42, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !853
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !853
  %43 = ptrtoint float addrspace(3)* %getElem7 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemWriteHook(i64 %44, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem7, align 4, !dbg !853
  br label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !853

_Z11reduceBlockILj512EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !854
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit, !dbg !854

if.then30.i:                                      ; preds = %_Z11reduceBlockILj512EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !855
  %idxprom35.i = zext i32 %3 to i64, !dbg !855
  %getElem26 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !855
  %45 = ptrtoint float addrspace(1)* %getElem26 to i64
  call void @__curd__glmemWriteHook(i64 %45, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem26, align 4, !dbg !855
  br label %_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit, !dbg !855

_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit:         ; preds = %if.then30.i, %_Z11reduceBlockILj512EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !856
  br i1 %cmp, label %if.then, label %if.end42, !dbg !856

if.then:                                          ; preds = %_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !857
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !859

if.then8:                                         ; preds = %if.then
  %46 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !860
  %sub = add i32 %4, -1, !dbg !864
  %cmp15 = icmp eq i32 %46, %sub, !dbg !864
  %conv16 = zext i1 %cmp15 to i8, !dbg !864
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb1EEvPKfPfjE6amLast, align 1, !dbg !864
  br label %if.end, !dbg !864

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !866
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb1EEvPKfPfjE6amLast, align 1, !dbg !867
  %tobool = icmp eq i8 %tmp17, 0, !dbg !867
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !867

while.cond.preheader:                             ; preds = %if.end
  %cmp2347 = icmp ult i32 %2, %4, !dbg !868
  br i1 %cmp2347, label %while.body, label %while.end, !dbg !868

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.049 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.048 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %47 = sext i32 %i.048 to i64, !dbg !870
  %getElem27 = getelementptr float addrspace(1)* %0, i64 %47, !dbg !870
  %48 = ptrtoint float addrspace(1)* %getElem27 to i64
  call void @__curd__glmemReadHook(i64 %48, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem27, align 4, !dbg !870
  %add = fadd float %mySum.049, %tmp27, !dbg !870
  %add30 = add i32 %i.048, 512, !dbg !872
  %cmp23 = icmp ult i32 %add30, %4, !dbg !868
  br i1 %cmp23, label %while.body, label %while.end, !dbg !868

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem28 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !873
  %49 = ptrtoint float addrspace(3)* %getElem28 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem28, align 4, !dbg !873
  tail call void @llvm.cuda.syncthreads(), !dbg !875
  call void @__curd__barrierHook() #1
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i, !dbg !876

if.then4.i:                                       ; preds = %while.end
  %add.i4 = add i32 %2, 256, !dbg !877
  %getElem29 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add.i4, !dbg !877
  %51 = ptrtoint float addrspace(3)* %getElem29 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp10.i = load volatile float addrspace(3)* %getElem29, align 4, !dbg !877
  %add11.i = fadd float %mySum.0.lcssa, %tmp10.i, !dbg !877
  %53 = ptrtoint float addrspace(3)* %getElem28 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add11.i, float addrspace(3)* %getElem28, align 4, !dbg !877
  br label %if.end.i, !dbg !877

if.end.i:                                         ; preds = %if.then4.i, %while.end
  %mySum.addr.0.i = phi float [ %add11.i, %if.then4.i ], [ %mySum.0.lcssa, %while.end ], !dbg !878
  tail call void @llvm.cuda.syncthreads(), !dbg !878
  call void @__curd__barrierHook() #1
  br i1 %cmp20.i.i, label %if.then21.i, label %if.end35.i, !dbg !879

if.then21.i:                                      ; preds = %if.end.i
  %add25.i5 = add i32 %2, 128, !dbg !880
  %getElem31 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add25.i5, !dbg !880
  %55 = ptrtoint float addrspace(3)* %getElem31 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i = load volatile float addrspace(3)* %getElem31, align 4, !dbg !880
  %add29.i = fadd float %mySum.addr.0.i, %tmp28.i, !dbg !880
  %57 = ptrtoint float addrspace(3)* %getElem28 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i, float addrspace(3)* %getElem28, align 4, !dbg !880
  br label %if.end35.i, !dbg !880

if.end35.i:                                       ; preds = %if.then21.i, %if.end.i
  %mySum.addr.2.i = phi float [ %add29.i, %if.then21.i ], [ %mySum.addr.0.i, %if.end.i ], !dbg !881
  tail call void @llvm.cuda.syncthreads(), !dbg !881
  call void @__curd__barrierHook() #1
  br i1 %cmp39.i.i, label %if.then40.i, label %if.end54.i, !dbg !882

if.then40.i:                                      ; preds = %if.end35.i
  %add44.i = add i32 %2, 64, !dbg !883
  %getElem33 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add44.i, !dbg !883
  %59 = ptrtoint float addrspace(3)* %getElem33 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i = load volatile float addrspace(3)* %getElem33, align 4, !dbg !883
  %add48.i = fadd float %mySum.addr.2.i, %tmp47.i, !dbg !883
  %61 = ptrtoint float addrspace(3)* %getElem28 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i, float addrspace(3)* %getElem28, align 4, !dbg !883
  br label %if.end54.i, !dbg !883

if.end54.i:                                       ; preds = %if.then40.i, %if.end35.i
  %mySum.addr.4.i = phi float [ %add48.i, %if.then40.i ], [ %mySum.addr.2.i, %if.end35.i ], !dbg !884
  tail call void @llvm.cuda.syncthreads(), !dbg !884
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj512EEvPVffj.exit, !dbg !885

if.then58.i:                                      ; preds = %if.end54.i
  %add63.i = add i32 %2, 32, !dbg !886
  %getElem35 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !886
  %63 = ptrtoint float addrspace(3)* %getElem35 to i32
  %64 = zext i32 %63 to i64
  call void @__curd__shmemReadHook(i64 %64, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem35, align 4, !dbg !886
  %add67.i = fadd float %mySum.addr.4.i, %tmp66.i, !dbg !886
  %65 = ptrtoint float addrspace(3)* %getElem28 to i32
  %66 = zext i32 %65 to i64
  call void @__curd__shmemWriteHook(i64 %66, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem28, align 4, !dbg !886
  %add78.i = add i32 %2, 16, !dbg !887
  %getElem37 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !887
  %67 = ptrtoint float addrspace(3)* %getElem37 to i32
  %68 = zext i32 %67 to i64
  call void @__curd__shmemReadHook(i64 %68, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem37, align 4, !dbg !887
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !887
  %69 = ptrtoint float addrspace(3)* %getElem28 to i32
  %70 = zext i32 %69 to i64
  call void @__curd__shmemWriteHook(i64 %70, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem28, align 4, !dbg !887
  %add93.i = add i32 %2, 8, !dbg !888
  %getElem39 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !888
  %71 = ptrtoint float addrspace(3)* %getElem39 to i32
  %72 = zext i32 %71 to i64
  call void @__curd__shmemReadHook(i64 %72, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem39, align 4, !dbg !888
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !888
  %73 = ptrtoint float addrspace(3)* %getElem28 to i32
  %74 = zext i32 %73 to i64
  call void @__curd__shmemWriteHook(i64 %74, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem28, align 4, !dbg !888
  %add108.i = add i32 %2, 4, !dbg !889
  %getElem41 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !889
  %75 = ptrtoint float addrspace(3)* %getElem41 to i32
  %76 = zext i32 %75 to i64
  call void @__curd__shmemReadHook(i64 %76, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem41, align 4, !dbg !889
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !889
  %77 = ptrtoint float addrspace(3)* %getElem28 to i32
  %78 = zext i32 %77 to i64
  call void @__curd__shmemWriteHook(i64 %78, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem28, align 4, !dbg !889
  %add123.i = add i32 %2, 2, !dbg !890
  %getElem43 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !890
  %79 = ptrtoint float addrspace(3)* %getElem43 to i32
  %80 = zext i32 %79 to i64
  call void @__curd__shmemReadHook(i64 %80, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem43, align 4, !dbg !890
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !890
  %81 = ptrtoint float addrspace(3)* %getElem28 to i32
  %82 = zext i32 %81 to i64
  call void @__curd__shmemWriteHook(i64 %82, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem28, align 4, !dbg !890
  %add138.i = add i32 %2, 1, !dbg !891
  %getElem45 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !891
  %83 = ptrtoint float addrspace(3)* %getElem45 to i32
  %84 = zext i32 %83 to i64
  call void @__curd__shmemReadHook(i64 %84, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem45, align 4, !dbg !891
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !891
  %85 = ptrtoint float addrspace(3)* %getElem28 to i32
  %86 = zext i32 %85 to i64
  call void @__curd__shmemWriteHook(i64 %86, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem28, align 4, !dbg !891
  br label %_Z11reduceBlockILj512EEvPVffj.exit, !dbg !891

_Z11reduceBlockILj512EEvPVffj.exit:               ; preds = %if.then58.i, %if.end54.i
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !892

if.then36:                                        ; preds = %_Z11reduceBlockILj512EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !893
  %87 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %87, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !893
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !895
  br label %if.end42, !dbg !895

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj512EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj512ELb1EEvPKfPfj.exit
  ret void, !dbg !896
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj256ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !897
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !897
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !897
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !900
  %mul.i = shl i32 %3, 9, !dbg !900
  %add.i = add i32 %mul.i, %2, !dbg !900
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !901
  %mul7.i = shl i32 %4, 9, !dbg !901
  %cmp.i44 = icmp ult i32 %add.i, %n, !dbg !902
  br i1 %cmp.i44, label %while.body.i, label %while.end.i, !dbg !902

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i46 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i45 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i45 to i64, !dbg !903
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !903
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !903
  %add14.i = fadd float %mySum.0.i46, %tmp12.i, !dbg !903
  %add17.i = add i32 %i.0.i45, 256, !dbg !904
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !904
  %getElem4 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !904
  %6 = ptrtoint float addrspace(1)* %getElem4 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem4, align 4, !dbg !904
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !904
  %add25.i = add i32 %i.0.i45, %mul7.i, !dbg !905
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !902
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !902

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !906
  %7 = ptrtoint float addrspace(3)* %getElem5 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem5, align 4, !dbg !906
  tail call void @llvm.cuda.syncthreads(), !dbg !908
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !909
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !909

if.then21.i.i:                                    ; preds = %while.end.i
  %add25.i.i = add i32 %2, 128, !dbg !910
  %getElem6 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !910
  %9 = ptrtoint float addrspace(3)* %getElem6 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem6, align 4, !dbg !910
  %add29.i.i = fadd float %mySum.0.i.lcssa, %tmp28.i.i, !dbg !910
  %11 = ptrtoint float addrspace(3)* %getElem5 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem5, align 4, !dbg !910
  br label %if.end35.i.i, !dbg !910

if.end35.i.i:                                     ; preds = %if.then21.i.i, %while.end.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !911
  tail call void @llvm.cuda.syncthreads(), !dbg !911
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !912
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !912

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !913
  %getElem8 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !913
  %13 = ptrtoint float addrspace(3)* %getElem8 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem8, align 4, !dbg !913
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !913
  %15 = ptrtoint float addrspace(3)* %getElem5 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem5, align 4, !dbg !913
  br label %if.end54.i.i, !dbg !913

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !914
  tail call void @llvm.cuda.syncthreads(), !dbg !914
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !915
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !915

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !916
  %getElem10 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !916
  %17 = ptrtoint float addrspace(3)* %getElem10 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem10, align 4, !dbg !916
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !916
  %19 = ptrtoint float addrspace(3)* %getElem5 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem5, align 4, !dbg !916
  %add78.i.i = add i32 %2, 16, !dbg !917
  %getElem12 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !917
  %21 = ptrtoint float addrspace(3)* %getElem12 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem12, align 4, !dbg !917
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !917
  %23 = ptrtoint float addrspace(3)* %getElem5 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem5, align 4, !dbg !917
  %add93.i.i = add i32 %2, 8, !dbg !918
  %getElem14 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !918
  %25 = ptrtoint float addrspace(3)* %getElem14 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !918
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !918
  %27 = ptrtoint float addrspace(3)* %getElem5 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem5, align 4, !dbg !918
  %add108.i.i = add i32 %2, 4, !dbg !919
  %getElem16 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !919
  %29 = ptrtoint float addrspace(3)* %getElem16 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !919
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !919
  %31 = ptrtoint float addrspace(3)* %getElem5 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem5, align 4, !dbg !919
  %add123.i.i = add i32 %2, 2, !dbg !920
  %getElem18 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !920
  %33 = ptrtoint float addrspace(3)* %getElem18 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !920
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !920
  %35 = ptrtoint float addrspace(3)* %getElem5 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem5, align 4, !dbg !920
  %add138.i.i = add i32 %2, 1, !dbg !921
  %getElem20 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !921
  %37 = ptrtoint float addrspace(3)* %getElem20 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !921
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !921
  %39 = ptrtoint float addrspace(3)* %getElem5 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem5, align 4, !dbg !921
  br label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !921

_Z11reduceBlockILj256EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !922
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit, !dbg !922

if.then30.i:                                      ; preds = %_Z11reduceBlockILj256EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !923
  %idxprom35.i = zext i32 %3 to i64, !dbg !923
  %getElem22 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !923
  %41 = ptrtoint float addrspace(1)* %getElem22 to i64
  call void @__curd__glmemWriteHook(i64 %41, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem22, align 4, !dbg !923
  br label %_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit, !dbg !923

_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit:         ; preds = %if.then30.i, %_Z11reduceBlockILj256EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !924
  br i1 %cmp, label %if.then, label %if.end42, !dbg !924

if.then:                                          ; preds = %_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !925
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !927

if.then8:                                         ; preds = %if.then
  %42 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !928
  %sub = add i32 %4, -1, !dbg !931
  %cmp15 = icmp eq i32 %42, %sub, !dbg !931
  %conv16 = zext i1 %cmp15 to i8, !dbg !931
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb1EEvPKfPfjE6amLast, align 1, !dbg !931
  br label %if.end, !dbg !931

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !933
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb1EEvPKfPfjE6amLast, align 1, !dbg !934
  %tobool = icmp eq i8 %tmp17, 0, !dbg !934
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !934

while.cond.preheader:                             ; preds = %if.end
  %cmp2341 = icmp ult i32 %2, %4, !dbg !935
  br i1 %cmp2341, label %while.body, label %while.end, !dbg !935

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.043 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.042 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %43 = sext i32 %i.042 to i64, !dbg !937
  %getElem23 = getelementptr float addrspace(1)* %0, i64 %43, !dbg !937
  %44 = ptrtoint float addrspace(1)* %getElem23 to i64
  call void @__curd__glmemReadHook(i64 %44, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem23, align 4, !dbg !937
  %add = fadd float %mySum.043, %tmp27, !dbg !937
  %add30 = add i32 %i.042, 256, !dbg !939
  %cmp23 = icmp ult i32 %add30, %4, !dbg !935
  br i1 %cmp23, label %while.body, label %while.end, !dbg !935

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !940
  %45 = ptrtoint float addrspace(3)* %getElem24 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem24, align 4, !dbg !940
  tail call void @llvm.cuda.syncthreads(), !dbg !942
  call void @__curd__barrierHook() #1
  br i1 %cmp20.i.i, label %if.then21.i, label %if.end35.i, !dbg !943

if.then21.i:                                      ; preds = %while.end
  %add25.i3 = add i32 %2, 128, !dbg !944
  %getElem25 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add25.i3, !dbg !944
  %47 = ptrtoint float addrspace(3)* %getElem25 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i = load volatile float addrspace(3)* %getElem25, align 4, !dbg !944
  %add29.i = fadd float %mySum.0.lcssa, %tmp28.i, !dbg !944
  %49 = ptrtoint float addrspace(3)* %getElem24 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i, float addrspace(3)* %getElem24, align 4, !dbg !944
  br label %if.end35.i, !dbg !944

if.end35.i:                                       ; preds = %if.then21.i, %while.end
  %mySum.addr.2.i = phi float [ %add29.i, %if.then21.i ], [ %mySum.0.lcssa, %while.end ], !dbg !945
  tail call void @llvm.cuda.syncthreads(), !dbg !945
  call void @__curd__barrierHook() #1
  br i1 %cmp39.i.i, label %if.then40.i, label %if.end54.i, !dbg !946

if.then40.i:                                      ; preds = %if.end35.i
  %add44.i = add i32 %2, 64, !dbg !947
  %getElem27 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add44.i, !dbg !947
  %51 = ptrtoint float addrspace(3)* %getElem27 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i = load volatile float addrspace(3)* %getElem27, align 4, !dbg !947
  %add48.i = fadd float %mySum.addr.2.i, %tmp47.i, !dbg !947
  %53 = ptrtoint float addrspace(3)* %getElem24 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i, float addrspace(3)* %getElem24, align 4, !dbg !947
  br label %if.end54.i, !dbg !947

if.end54.i:                                       ; preds = %if.then40.i, %if.end35.i
  %mySum.addr.4.i = phi float [ %add48.i, %if.then40.i ], [ %mySum.addr.2.i, %if.end35.i ], !dbg !948
  tail call void @llvm.cuda.syncthreads(), !dbg !948
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj256EEvPVffj.exit, !dbg !949

if.then58.i:                                      ; preds = %if.end54.i
  %add63.i = add i32 %2, 32, !dbg !950
  %getElem29 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !950
  %55 = ptrtoint float addrspace(3)* %getElem29 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem29, align 4, !dbg !950
  %add67.i = fadd float %mySum.addr.4.i, %tmp66.i, !dbg !950
  %57 = ptrtoint float addrspace(3)* %getElem24 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem24, align 4, !dbg !950
  %add78.i = add i32 %2, 16, !dbg !951
  %getElem31 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !951
  %59 = ptrtoint float addrspace(3)* %getElem31 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem31, align 4, !dbg !951
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !951
  %61 = ptrtoint float addrspace(3)* %getElem24 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem24, align 4, !dbg !951
  %add93.i = add i32 %2, 8, !dbg !952
  %getElem33 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !952
  %63 = ptrtoint float addrspace(3)* %getElem33 to i32
  %64 = zext i32 %63 to i64
  call void @__curd__shmemReadHook(i64 %64, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem33, align 4, !dbg !952
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !952
  %65 = ptrtoint float addrspace(3)* %getElem24 to i32
  %66 = zext i32 %65 to i64
  call void @__curd__shmemWriteHook(i64 %66, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem24, align 4, !dbg !952
  %add108.i = add i32 %2, 4, !dbg !953
  %getElem35 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !953
  %67 = ptrtoint float addrspace(3)* %getElem35 to i32
  %68 = zext i32 %67 to i64
  call void @__curd__shmemReadHook(i64 %68, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem35, align 4, !dbg !953
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !953
  %69 = ptrtoint float addrspace(3)* %getElem24 to i32
  %70 = zext i32 %69 to i64
  call void @__curd__shmemWriteHook(i64 %70, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem24, align 4, !dbg !953
  %add123.i = add i32 %2, 2, !dbg !954
  %getElem37 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !954
  %71 = ptrtoint float addrspace(3)* %getElem37 to i32
  %72 = zext i32 %71 to i64
  call void @__curd__shmemReadHook(i64 %72, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem37, align 4, !dbg !954
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !954
  %73 = ptrtoint float addrspace(3)* %getElem24 to i32
  %74 = zext i32 %73 to i64
  call void @__curd__shmemWriteHook(i64 %74, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem24, align 4, !dbg !954
  %add138.i = add i32 %2, 1, !dbg !955
  %getElem39 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !955
  %75 = ptrtoint float addrspace(3)* %getElem39 to i32
  %76 = zext i32 %75 to i64
  call void @__curd__shmemReadHook(i64 %76, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem39, align 4, !dbg !955
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !955
  %77 = ptrtoint float addrspace(3)* %getElem24 to i32
  %78 = zext i32 %77 to i64
  call void @__curd__shmemWriteHook(i64 %78, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem24, align 4, !dbg !955
  br label %_Z11reduceBlockILj256EEvPVffj.exit, !dbg !955

_Z11reduceBlockILj256EEvPVffj.exit:               ; preds = %if.then58.i, %if.end54.i
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !956

if.then36:                                        ; preds = %_Z11reduceBlockILj256EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !957
  %79 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %79, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !957
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !959
  br label %if.end42, !dbg !959

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj256EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj256ELb1EEvPKfPfj.exit
  ret void, !dbg !960
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj128ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !961
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !961
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !961
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !964
  %mul.i = shl i32 %3, 8, !dbg !964
  %add.i = add i32 %mul.i, %2, !dbg !964
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !965
  %mul7.i = shl i32 %4, 8, !dbg !965
  %cmp.i39 = icmp ult i32 %add.i, %n, !dbg !966
  br i1 %cmp.i39, label %while.body.i, label %while.end.i, !dbg !966

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i41 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i40 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i40 to i64, !dbg !967
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !967
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !967
  %add14.i = fadd float %mySum.0.i41, %tmp12.i, !dbg !967
  %add17.i = add i32 %i.0.i40, 128, !dbg !968
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !968
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !968
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !968
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !968
  %add25.i = add i32 %i.0.i40, %mul7.i, !dbg !969
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !966
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !966

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !970
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !970
  tail call void @llvm.cuda.syncthreads(), !dbg !972
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !973
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !973

if.then40.i.i:                                    ; preds = %while.end.i
  %add44.i.i = add i32 %2, 64, !dbg !974
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !974
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !974
  %add48.i.i = fadd float %mySum.0.i.lcssa, %tmp47.i.i, !dbg !974
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem4, align 4, !dbg !974
  br label %if.end54.i.i, !dbg !974

if.end54.i.i:                                     ; preds = %if.then40.i.i, %while.end.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !975
  tail call void @llvm.cuda.syncthreads(), !dbg !975
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !976
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !976

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !977
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !977
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !977
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !977
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem4, align 4, !dbg !977
  %add78.i.i = add i32 %2, 16, !dbg !978
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !978
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !978
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !978
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem4, align 4, !dbg !978
  %add93.i.i = add i32 %2, 8, !dbg !979
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !979
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !979
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !979
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !979
  %add108.i.i = add i32 %2, 4, !dbg !980
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !980
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !980
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !980
  %27 = ptrtoint float addrspace(3)* %getElem4 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !980
  %add123.i.i = add i32 %2, 2, !dbg !981
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !981
  %29 = ptrtoint float addrspace(3)* %getElem15 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !981
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !981
  %31 = ptrtoint float addrspace(3)* %getElem4 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !981
  %add138.i.i = add i32 %2, 1, !dbg !982
  %getElem17 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !982
  %33 = ptrtoint float addrspace(3)* %getElem17 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem17, align 4, !dbg !982
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !982
  %35 = ptrtoint float addrspace(3)* %getElem4 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !982
  br label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !982

_Z11reduceBlockILj128EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !983
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit, !dbg !983

if.then30.i:                                      ; preds = %_Z11reduceBlockILj128EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !984
  %idxprom35.i = zext i32 %3 to i64, !dbg !984
  %getElem19 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !984
  %37 = ptrtoint float addrspace(1)* %getElem19 to i64
  call void @__curd__glmemWriteHook(i64 %37, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem19, align 4, !dbg !984
  br label %_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit, !dbg !984

_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit:         ; preds = %if.then30.i, %_Z11reduceBlockILj128EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !985
  br i1 %cmp, label %if.then, label %if.end42, !dbg !985

if.then:                                          ; preds = %_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !986
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !988

if.then8:                                         ; preds = %if.then
  %38 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !989
  %sub = add i32 %4, -1, !dbg !992
  %cmp15 = icmp eq i32 %38, %sub, !dbg !992
  %conv16 = zext i1 %cmp15 to i8, !dbg !992
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, align 1, !dbg !992
  br label %if.end, !dbg !992

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !994
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb1EEvPKfPfjE6amLast, align 1, !dbg !995
  %tobool = icmp eq i8 %tmp17, 0, !dbg !995
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !995

while.cond.preheader:                             ; preds = %if.end
  %cmp2336 = icmp ult i32 %2, %4, !dbg !996
  br i1 %cmp2336, label %while.body, label %while.end, !dbg !996

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.038 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.037 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %39 = sext i32 %i.037 to i64, !dbg !998
  %getElem20 = getelementptr float addrspace(1)* %0, i64 %39, !dbg !998
  %40 = ptrtoint float addrspace(1)* %getElem20 to i64
  call void @__curd__glmemReadHook(i64 %40, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem20, align 4, !dbg !998
  %add = fadd float %mySum.038, %tmp27, !dbg !998
  %add30 = add i32 %i.037, 128, !dbg !1000
  %cmp23 = icmp ult i32 %add30, %4, !dbg !996
  br i1 %cmp23, label %while.body, label %while.end, !dbg !996

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem21 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1001
  %41 = ptrtoint float addrspace(3)* %getElem21 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem21, align 4, !dbg !1001
  tail call void @llvm.cuda.syncthreads(), !dbg !1003
  call void @__curd__barrierHook() #1
  br i1 %cmp39.i.i, label %if.then40.i, label %if.end54.i, !dbg !1004

if.then40.i:                                      ; preds = %while.end
  %add44.i = add i32 %2, 64, !dbg !1005
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add44.i, !dbg !1005
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1005
  %add48.i = fadd float %mySum.0.lcssa, %tmp47.i, !dbg !1005
  %45 = ptrtoint float addrspace(3)* %getElem21 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i, float addrspace(3)* %getElem21, align 4, !dbg !1005
  br label %if.end54.i, !dbg !1005

if.end54.i:                                       ; preds = %if.then40.i, %while.end
  %mySum.addr.4.i = phi float [ %add48.i, %if.then40.i ], [ %mySum.0.lcssa, %while.end ], !dbg !1006
  tail call void @llvm.cuda.syncthreads(), !dbg !1006
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj128EEvPVffj.exit, !dbg !1007

if.then58.i:                                      ; preds = %if.end54.i
  %add63.i = add i32 %2, 32, !dbg !1008
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !1008
  %47 = ptrtoint float addrspace(3)* %getElem24 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !1008
  %add67.i = fadd float %mySum.addr.4.i, %tmp66.i, !dbg !1008
  %49 = ptrtoint float addrspace(3)* %getElem21 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem21, align 4, !dbg !1008
  %add78.i = add i32 %2, 16, !dbg !1009
  %getElem26 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1009
  %51 = ptrtoint float addrspace(3)* %getElem26 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem26, align 4, !dbg !1009
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !1009
  %53 = ptrtoint float addrspace(3)* %getElem21 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem21, align 4, !dbg !1009
  %add93.i = add i32 %2, 8, !dbg !1010
  %getElem28 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1010
  %55 = ptrtoint float addrspace(3)* %getElem28 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem28, align 4, !dbg !1010
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1010
  %57 = ptrtoint float addrspace(3)* %getElem21 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem21, align 4, !dbg !1010
  %add108.i = add i32 %2, 4, !dbg !1011
  %getElem30 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1011
  %59 = ptrtoint float addrspace(3)* %getElem30 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem30, align 4, !dbg !1011
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1011
  %61 = ptrtoint float addrspace(3)* %getElem21 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem21, align 4, !dbg !1011
  %add123.i = add i32 %2, 2, !dbg !1012
  %getElem32 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1012
  %63 = ptrtoint float addrspace(3)* %getElem32 to i32
  %64 = zext i32 %63 to i64
  call void @__curd__shmemReadHook(i64 %64, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem32, align 4, !dbg !1012
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1012
  %65 = ptrtoint float addrspace(3)* %getElem21 to i32
  %66 = zext i32 %65 to i64
  call void @__curd__shmemWriteHook(i64 %66, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem21, align 4, !dbg !1012
  %add138.i = add i32 %2, 1, !dbg !1013
  %getElem34 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1013
  %67 = ptrtoint float addrspace(3)* %getElem34 to i32
  %68 = zext i32 %67 to i64
  call void @__curd__shmemReadHook(i64 %68, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem34, align 4, !dbg !1013
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1013
  %69 = ptrtoint float addrspace(3)* %getElem21 to i32
  %70 = zext i32 %69 to i64
  call void @__curd__shmemWriteHook(i64 %70, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem21, align 4, !dbg !1013
  br label %_Z11reduceBlockILj128EEvPVffj.exit, !dbg !1013

_Z11reduceBlockILj128EEvPVffj.exit:               ; preds = %if.then58.i, %if.end54.i
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1014

if.then36:                                        ; preds = %_Z11reduceBlockILj128EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1015
  %71 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %71, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1015
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1017
  br label %if.end42, !dbg !1017

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj128EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj128ELb1EEvPKfPfj.exit
  ret void, !dbg !1018
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj64ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1019
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1019
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1019
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1022
  %mul.i = shl i32 %3, 7, !dbg !1022
  %add.i = add i32 %mul.i, %2, !dbg !1022
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1023
  %mul7.i = shl i32 %4, 7, !dbg !1023
  %cmp.i35 = icmp ult i32 %add.i, %n, !dbg !1024
  br i1 %cmp.i35, label %while.body.i, label %while.end.i, !dbg !1024

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i37 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i36 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i36 to i64, !dbg !1025
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1025
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1025
  %add14.i = fadd float %mySum.0.i37, %tmp12.i, !dbg !1025
  %add17.i = add i32 %i.0.i36, 64, !dbg !1026
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !1026
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !1026
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !1026
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !1026
  %add25.i = add i32 %i.0.i36, %mul7.i, !dbg !1027
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !1024
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1024

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1028
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1028
  tail call void @llvm.cuda.syncthreads(), !dbg !1030
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1031
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !1031

if.then58.i.i:                                    ; preds = %while.end.i
  %add63.i.i = add i32 %2, 32, !dbg !1032
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !1032
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1032
  %add67.i.i = fadd float %mySum.0.i.lcssa, %tmp66.i.i, !dbg !1032
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1032
  %add78.i.i = add i32 %2, 16, !dbg !1033
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !1033
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1033
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !1033
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1033
  %add93.i.i = add i32 %2, 8, !dbg !1034
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1034
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1034
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !1034
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1034
  %add108.i.i = add i32 %2, 4, !dbg !1035
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1035
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !1035
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1035
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1035
  %add123.i.i = add i32 %2, 2, !dbg !1036
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1036
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !1036
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1036
  %27 = ptrtoint float addrspace(3)* %getElem4 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1036
  %add138.i.i = add i32 %2, 1, !dbg !1037
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1037
  %29 = ptrtoint float addrspace(3)* %getElem15 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !1037
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1037
  %31 = ptrtoint float addrspace(3)* %getElem4 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1037
  br label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !1037

_Z11reduceBlockILj64EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !1038
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit, !dbg !1038

if.then30.i:                                      ; preds = %_Z11reduceBlockILj64EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1039
  %idxprom35.i = zext i32 %3 to i64, !dbg !1039
  %getElem17 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !1039
  %33 = ptrtoint float addrspace(1)* %getElem17 to i64
  call void @__curd__glmemWriteHook(i64 %33, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem17, align 4, !dbg !1039
  br label %_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit, !dbg !1039

_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit:          ; preds = %if.then30.i, %_Z11reduceBlockILj64EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1040
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1040

if.then:                                          ; preds = %_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1041
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !1043

if.then8:                                         ; preds = %if.then
  %34 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1044
  %sub = add i32 %4, -1, !dbg !1047
  %cmp15 = icmp eq i32 %34, %sub, !dbg !1047
  %conv16 = zext i1 %cmp15 to i8, !dbg !1047
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb1EEvPKfPfjE6amLast, align 1, !dbg !1047
  br label %if.end, !dbg !1047

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1049
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb1EEvPKfPfjE6amLast, align 1, !dbg !1050
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1050
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1050

while.cond.preheader:                             ; preds = %if.end
  %cmp2332 = icmp ult i32 %2, %4, !dbg !1051
  br i1 %cmp2332, label %while.body, label %while.end, !dbg !1051

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.034 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.033 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %35 = sext i32 %i.033 to i64, !dbg !1053
  %getElem18 = getelementptr float addrspace(1)* %0, i64 %35, !dbg !1053
  %36 = ptrtoint float addrspace(1)* %getElem18 to i64
  call void @__curd__glmemReadHook(i64 %36, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem18, align 4, !dbg !1053
  %add = fadd float %mySum.034, %tmp27, !dbg !1053
  %add30 = add i32 %i.033, 64, !dbg !1055
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1051
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1051

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem19 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1056
  %37 = ptrtoint float addrspace(3)* %getElem19 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem19, align 4, !dbg !1056
  tail call void @llvm.cuda.syncthreads(), !dbg !1058
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj64EEvPVffj.exit, !dbg !1059

if.then58.i:                                      ; preds = %while.end
  %add63.i = add i32 %2, 32, !dbg !1060
  %getElem20 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !1060
  %39 = ptrtoint float addrspace(3)* %getElem20 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemReadHook(i64 %40, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1060
  %add67.i = fadd float %mySum.0.lcssa, %tmp66.i, !dbg !1060
  %41 = ptrtoint float addrspace(3)* %getElem19 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem19, align 4, !dbg !1060
  %add78.i = add i32 %2, 16, !dbg !1061
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1061
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1061
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !1061
  %45 = ptrtoint float addrspace(3)* %getElem19 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem19, align 4, !dbg !1061
  %add93.i = add i32 %2, 8, !dbg !1062
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1062
  %47 = ptrtoint float addrspace(3)* %getElem24 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !1062
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1062
  %49 = ptrtoint float addrspace(3)* %getElem19 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem19, align 4, !dbg !1062
  %add108.i = add i32 %2, 4, !dbg !1063
  %getElem26 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1063
  %51 = ptrtoint float addrspace(3)* %getElem26 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem26, align 4, !dbg !1063
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1063
  %53 = ptrtoint float addrspace(3)* %getElem19 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem19, align 4, !dbg !1063
  %add123.i = add i32 %2, 2, !dbg !1064
  %getElem28 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1064
  %55 = ptrtoint float addrspace(3)* %getElem28 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem28, align 4, !dbg !1064
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1064
  %57 = ptrtoint float addrspace(3)* %getElem19 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem19, align 4, !dbg !1064
  %add138.i = add i32 %2, 1, !dbg !1065
  %getElem30 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1065
  %59 = ptrtoint float addrspace(3)* %getElem30 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem30, align 4, !dbg !1065
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1065
  %61 = ptrtoint float addrspace(3)* %getElem19 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem19, align 4, !dbg !1065
  br label %_Z11reduceBlockILj64EEvPVffj.exit, !dbg !1065

_Z11reduceBlockILj64EEvPVffj.exit:                ; preds = %if.then58.i, %while.end
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1066

if.then36:                                        ; preds = %_Z11reduceBlockILj64EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1067
  %63 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %63, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1067
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1069
  br label %if.end42, !dbg !1069

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj64EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj64ELb1EEvPKfPfj.exit
  ret void, !dbg !1070
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj32ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1071
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1071
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1071
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1074
  %mul.i = shl i32 %3, 6, !dbg !1074
  %add.i = add i32 %mul.i, %2, !dbg !1074
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1075
  %mul7.i = shl i32 %4, 6, !dbg !1075
  %cmp.i31 = icmp ult i32 %add.i, %n, !dbg !1076
  br i1 %cmp.i31, label %while.body.i, label %while.end.i, !dbg !1076

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i33 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i32 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i32 to i64, !dbg !1077
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1077
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1077
  %add14.i = fadd float %mySum.0.i33, %tmp12.i, !dbg !1077
  %add17.i = add i32 %i.0.i32, 32, !dbg !1078
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !1078
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !1078
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !1078
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !1078
  %add25.i = add i32 %i.0.i32, %mul7.i, !dbg !1079
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !1076
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1076

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1080
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1080
  tail call void @llvm.cuda.syncthreads(), !dbg !1082
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1083
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !1083

if.then58.i.i:                                    ; preds = %while.end.i
  %add78.i.i = add i32 %2, 16, !dbg !1084
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !1084
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1084
  %add82.i.i = fadd float %mySum.0.i.lcssa, %tmp81.i.i, !dbg !1084
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1084
  %add93.i.i = add i32 %2, 8, !dbg !1085
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1085
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1085
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !1085
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1085
  %add108.i.i = add i32 %2, 4, !dbg !1086
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1086
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1086
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1086
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1086
  %add123.i.i = add i32 %2, 2, !dbg !1087
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1087
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !1087
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1087
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1087
  %add138.i.i = add i32 %2, 1, !dbg !1088
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1088
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !1088
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1088
  %27 = ptrtoint float addrspace(3)* %getElem4 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1088
  br label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !1088

_Z11reduceBlockILj32EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !1089
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit, !dbg !1089

if.then30.i:                                      ; preds = %_Z11reduceBlockILj32EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1090
  %idxprom35.i = zext i32 %3 to i64, !dbg !1090
  %getElem15 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !1090
  %29 = ptrtoint float addrspace(1)* %getElem15 to i64
  call void @__curd__glmemWriteHook(i64 %29, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem15, align 4, !dbg !1090
  br label %_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit, !dbg !1090

_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit:          ; preds = %if.then30.i, %_Z11reduceBlockILj32EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1091
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1091

if.then:                                          ; preds = %_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1092
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !1094

if.then8:                                         ; preds = %if.then
  %30 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1095
  %sub = add i32 %4, -1, !dbg !1098
  %cmp15 = icmp eq i32 %30, %sub, !dbg !1098
  %conv16 = zext i1 %cmp15 to i8, !dbg !1098
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb1EEvPKfPfjE6amLast, align 1, !dbg !1098
  br label %if.end, !dbg !1098

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1100
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb1EEvPKfPfjE6amLast, align 1, !dbg !1101
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1101
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1101

while.cond.preheader:                             ; preds = %if.end
  %cmp2328 = icmp ult i32 %2, %4, !dbg !1102
  br i1 %cmp2328, label %while.body, label %while.end, !dbg !1102

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.030 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.029 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %31 = sext i32 %i.029 to i64, !dbg !1104
  %getElem16 = getelementptr float addrspace(1)* %0, i64 %31, !dbg !1104
  %32 = ptrtoint float addrspace(1)* %getElem16 to i64
  call void @__curd__glmemReadHook(i64 %32, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem16, align 4, !dbg !1104
  %add = fadd float %mySum.030, %tmp27, !dbg !1104
  %add30 = add i32 %i.029, 32, !dbg !1106
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1102
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1102

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem17 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1107
  %33 = ptrtoint float addrspace(3)* %getElem17 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemWriteHook(i64 %34, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem17, align 4, !dbg !1107
  tail call void @llvm.cuda.syncthreads(), !dbg !1109
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj32EEvPVffj.exit, !dbg !1110

if.then58.i:                                      ; preds = %while.end
  %add78.i = add i32 %2, 16, !dbg !1111
  %getElem18 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1111
  %35 = ptrtoint float addrspace(3)* %getElem18 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemReadHook(i64 %36, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1111
  %add82.i = fadd float %mySum.0.lcssa, %tmp81.i, !dbg !1111
  %37 = ptrtoint float addrspace(3)* %getElem17 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem17, align 4, !dbg !1111
  %add93.i = add i32 %2, 8, !dbg !1112
  %getElem20 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1112
  %39 = ptrtoint float addrspace(3)* %getElem20 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemReadHook(i64 %40, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1112
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1112
  %41 = ptrtoint float addrspace(3)* %getElem17 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem17, align 4, !dbg !1112
  %add108.i = add i32 %2, 4, !dbg !1113
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1113
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1113
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1113
  %45 = ptrtoint float addrspace(3)* %getElem17 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem17, align 4, !dbg !1113
  %add123.i = add i32 %2, 2, !dbg !1114
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1114
  %47 = ptrtoint float addrspace(3)* %getElem24 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !1114
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1114
  %49 = ptrtoint float addrspace(3)* %getElem17 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem17, align 4, !dbg !1114
  %add138.i = add i32 %2, 1, !dbg !1115
  %getElem26 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1115
  %51 = ptrtoint float addrspace(3)* %getElem26 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem26, align 4, !dbg !1115
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1115
  %53 = ptrtoint float addrspace(3)* %getElem17 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem17, align 4, !dbg !1115
  br label %_Z11reduceBlockILj32EEvPVffj.exit, !dbg !1115

_Z11reduceBlockILj32EEvPVffj.exit:                ; preds = %if.then58.i, %while.end
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1116

if.then36:                                        ; preds = %_Z11reduceBlockILj32EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1117
  %55 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %55, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1117
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1119
  br label %if.end42, !dbg !1119

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj32EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj32ELb1EEvPKfPfj.exit
  ret void, !dbg !1120
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj16ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1121
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1121
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1121
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1124
  %mul.i = shl i32 %3, 5, !dbg !1124
  %add.i = add i32 %mul.i, %2, !dbg !1124
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1125
  %mul7.i = shl i32 %4, 5, !dbg !1125
  %cmp.i27 = icmp ult i32 %add.i, %n, !dbg !1126
  br i1 %cmp.i27, label %while.body.i, label %while.end.i, !dbg !1126

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i29 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i28 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i28 to i64, !dbg !1127
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1127
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1127
  %add14.i = fadd float %mySum.0.i29, %tmp12.i, !dbg !1127
  %add17.i = add i32 %i.0.i28, 16, !dbg !1128
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !1128
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !1128
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !1128
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !1128
  %add25.i = add i32 %i.0.i28, %mul7.i, !dbg !1129
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !1126
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1126

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1130
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1130
  tail call void @llvm.cuda.syncthreads(), !dbg !1132
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1133
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !1133

if.then58.i.i:                                    ; preds = %while.end.i
  %add93.i.i = add i32 %2, 8, !dbg !1134
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1134
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1134
  %add97.i.i = fadd float %mySum.0.i.lcssa, %tmp96.i.i, !dbg !1134
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1134
  %add108.i.i = add i32 %2, 4, !dbg !1135
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1135
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1135
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1135
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1135
  %add123.i.i = add i32 %2, 2, !dbg !1136
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1136
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1136
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1136
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1136
  %add138.i.i = add i32 %2, 1, !dbg !1137
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1137
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !1137
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1137
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1137
  br label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !1137

_Z11reduceBlockILj16EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !1138
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit, !dbg !1138

if.then30.i:                                      ; preds = %_Z11reduceBlockILj16EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1139
  %idxprom35.i = zext i32 %3 to i64, !dbg !1139
  %getElem13 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !1139
  %25 = ptrtoint float addrspace(1)* %getElem13 to i64
  call void @__curd__glmemWriteHook(i64 %25, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem13, align 4, !dbg !1139
  br label %_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit, !dbg !1139

_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit:          ; preds = %if.then30.i, %_Z11reduceBlockILj16EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1140
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1140

if.then:                                          ; preds = %_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1141
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !1143

if.then8:                                         ; preds = %if.then
  %26 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1144
  %sub = add i32 %4, -1, !dbg !1147
  %cmp15 = icmp eq i32 %26, %sub, !dbg !1147
  %conv16 = zext i1 %cmp15 to i8, !dbg !1147
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb1EEvPKfPfjE6amLast, align 1, !dbg !1147
  br label %if.end, !dbg !1147

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1149
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb1EEvPKfPfjE6amLast, align 1, !dbg !1150
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1150
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1150

while.cond.preheader:                             ; preds = %if.end
  %cmp2324 = icmp ult i32 %2, %4, !dbg !1151
  br i1 %cmp2324, label %while.body, label %while.end, !dbg !1151

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.026 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.025 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %27 = sext i32 %i.025 to i64, !dbg !1153
  %getElem14 = getelementptr float addrspace(1)* %0, i64 %27, !dbg !1153
  %28 = ptrtoint float addrspace(1)* %getElem14 to i64
  call void @__curd__glmemReadHook(i64 %28, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem14, align 4, !dbg !1153
  %add = fadd float %mySum.026, %tmp27, !dbg !1153
  %add30 = add i32 %i.025, 16, !dbg !1155
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1151
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1151

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem15 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1156
  %29 = ptrtoint float addrspace(3)* %getElem15 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemWriteHook(i64 %30, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem15, align 4, !dbg !1156
  tail call void @llvm.cuda.syncthreads(), !dbg !1158
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj16EEvPVffj.exit, !dbg !1159

if.then58.i:                                      ; preds = %while.end
  %add93.i = add i32 %2, 8, !dbg !1160
  %getElem16 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1160
  %31 = ptrtoint float addrspace(3)* %getElem16 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemReadHook(i64 %32, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !1160
  %add97.i = fadd float %mySum.0.lcssa, %tmp96.i, !dbg !1160
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemWriteHook(i64 %34, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem15, align 4, !dbg !1160
  %add108.i = add i32 %2, 4, !dbg !1161
  %getElem18 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1161
  %35 = ptrtoint float addrspace(3)* %getElem18 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemReadHook(i64 %36, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1161
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1161
  %37 = ptrtoint float addrspace(3)* %getElem15 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem15, align 4, !dbg !1161
  %add123.i = add i32 %2, 2, !dbg !1162
  %getElem20 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1162
  %39 = ptrtoint float addrspace(3)* %getElem20 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemReadHook(i64 %40, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1162
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1162
  %41 = ptrtoint float addrspace(3)* %getElem15 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem15, align 4, !dbg !1162
  %add138.i = add i32 %2, 1, !dbg !1163
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1163
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1163
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1163
  %45 = ptrtoint float addrspace(3)* %getElem15 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem15, align 4, !dbg !1163
  br label %_Z11reduceBlockILj16EEvPVffj.exit, !dbg !1163

_Z11reduceBlockILj16EEvPVffj.exit:                ; preds = %if.then58.i, %while.end
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1164

if.then36:                                        ; preds = %_Z11reduceBlockILj16EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1165
  %47 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %47, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1165
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1167
  br label %if.end42, !dbg !1167

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj16EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj16ELb1EEvPKfPfj.exit
  ret void, !dbg !1168
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj8ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1169
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1169
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1169
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1172
  %mul.i = shl i32 %3, 4, !dbg !1172
  %add.i = add i32 %mul.i, %2, !dbg !1172
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1173
  %mul7.i = shl i32 %4, 4, !dbg !1173
  %cmp.i23 = icmp ult i32 %add.i, %n, !dbg !1174
  br i1 %cmp.i23, label %while.body.i, label %while.end.i, !dbg !1174

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i25 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i24 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i24 to i64, !dbg !1175
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1175
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1175
  %add14.i = fadd float %mySum.0.i25, %tmp12.i, !dbg !1175
  %add17.i = add i32 %i.0.i24, 8, !dbg !1176
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !1176
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !1176
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !1176
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !1176
  %add25.i = add i32 %i.0.i24, %mul7.i, !dbg !1177
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !1174
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1174

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1178
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1178
  tail call void @llvm.cuda.syncthreads(), !dbg !1180
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1181
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !1181

if.then58.i.i:                                    ; preds = %while.end.i
  %add108.i.i = add i32 %2, 4, !dbg !1182
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1182
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1182
  %add112.i.i = fadd float %mySum.0.i.lcssa, %tmp111.i.i, !dbg !1182
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1182
  %add123.i.i = add i32 %2, 2, !dbg !1183
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1183
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1183
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1183
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1183
  %add138.i.i = add i32 %2, 1, !dbg !1184
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1184
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1184
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1184
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1184
  br label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !1184

_Z11reduceBlockILj8EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !1185
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit, !dbg !1185

if.then30.i:                                      ; preds = %_Z11reduceBlockILj8EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1186
  %idxprom35.i = zext i32 %3 to i64, !dbg !1186
  %getElem11 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !1186
  %21 = ptrtoint float addrspace(1)* %getElem11 to i64
  call void @__curd__glmemWriteHook(i64 %21, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem11, align 4, !dbg !1186
  br label %_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit, !dbg !1186

_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %_Z11reduceBlockILj8EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1187
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1187

if.then:                                          ; preds = %_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1188
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !1190

if.then8:                                         ; preds = %if.then
  %22 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1191
  %sub = add i32 %4, -1, !dbg !1194
  %cmp15 = icmp eq i32 %22, %sub, !dbg !1194
  %conv16 = zext i1 %cmp15 to i8, !dbg !1194
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb1EEvPKfPfjE6amLast, align 1, !dbg !1194
  br label %if.end, !dbg !1194

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1196
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb1EEvPKfPfjE6amLast, align 1, !dbg !1197
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1197
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1197

while.cond.preheader:                             ; preds = %if.end
  %cmp2320 = icmp ult i32 %2, %4, !dbg !1198
  br i1 %cmp2320, label %while.body, label %while.end, !dbg !1198

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.022 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.021 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %23 = sext i32 %i.021 to i64, !dbg !1200
  %getElem12 = getelementptr float addrspace(1)* %0, i64 %23, !dbg !1200
  %24 = ptrtoint float addrspace(1)* %getElem12 to i64
  call void @__curd__glmemReadHook(i64 %24, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem12, align 4, !dbg !1200
  %add = fadd float %mySum.022, %tmp27, !dbg !1200
  %add30 = add i32 %i.021, 8, !dbg !1202
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1198
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1198

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem13 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1203
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemWriteHook(i64 %26, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem13, align 4, !dbg !1203
  tail call void @llvm.cuda.syncthreads(), !dbg !1205
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj8EEvPVffj.exit, !dbg !1206

if.then58.i:                                      ; preds = %while.end
  %add108.i = add i32 %2, 4, !dbg !1207
  %getElem14 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1207
  %27 = ptrtoint float addrspace(3)* %getElem14 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemReadHook(i64 %28, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !1207
  %add112.i = fadd float %mySum.0.lcssa, %tmp111.i, !dbg !1207
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemWriteHook(i64 %30, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem13, align 4, !dbg !1207
  %add123.i = add i32 %2, 2, !dbg !1208
  %getElem16 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1208
  %31 = ptrtoint float addrspace(3)* %getElem16 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemReadHook(i64 %32, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !1208
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1208
  %33 = ptrtoint float addrspace(3)* %getElem13 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemWriteHook(i64 %34, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem13, align 4, !dbg !1208
  %add138.i = add i32 %2, 1, !dbg !1209
  %getElem18 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1209
  %35 = ptrtoint float addrspace(3)* %getElem18 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemReadHook(i64 %36, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1209
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1209
  %37 = ptrtoint float addrspace(3)* %getElem13 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem13, align 4, !dbg !1209
  br label %_Z11reduceBlockILj8EEvPVffj.exit, !dbg !1209

_Z11reduceBlockILj8EEvPVffj.exit:                 ; preds = %if.then58.i, %while.end
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1210

if.then36:                                        ; preds = %_Z11reduceBlockILj8EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1211
  %39 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %39, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1211
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1213
  br label %if.end42, !dbg !1213

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj8EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj8ELb1EEvPKfPfj.exit
  ret void, !dbg !1214
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj4ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1215
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1215
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1215
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1218
  %mul.i = shl i32 %3, 3, !dbg !1218
  %add.i = add i32 %mul.i, %2, !dbg !1218
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1219
  %mul7.i = shl i32 %4, 3, !dbg !1219
  %cmp.i19 = icmp ult i32 %add.i, %n, !dbg !1220
  br i1 %cmp.i19, label %while.body.i, label %while.end.i, !dbg !1220

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i21 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i20 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i20 to i64, !dbg !1221
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1221
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1221
  %add14.i = fadd float %mySum.0.i21, %tmp12.i, !dbg !1221
  %add17.i = add i32 %i.0.i20, 4, !dbg !1222
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !1222
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !1222
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !1222
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !1222
  %add25.i = add i32 %i.0.i20, %mul7.i, !dbg !1223
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !1220
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1220

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1224
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1224
  tail call void @llvm.cuda.syncthreads(), !dbg !1226
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1227
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !1227

if.then58.i.i:                                    ; preds = %while.end.i
  %add123.i.i = add i32 %2, 2, !dbg !1228
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1228
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1228
  %add127.i.i = fadd float %mySum.0.i.lcssa, %tmp126.i.i, !dbg !1228
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1228
  %add138.i.i = add i32 %2, 1, !dbg !1229
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1229
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1229
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1229
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1229
  br label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !1229

_Z11reduceBlockILj4EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !1230
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit, !dbg !1230

if.then30.i:                                      ; preds = %_Z11reduceBlockILj4EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1231
  %idxprom35.i = zext i32 %3 to i64, !dbg !1231
  %getElem9 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !1231
  %17 = ptrtoint float addrspace(1)* %getElem9 to i64
  call void @__curd__glmemWriteHook(i64 %17, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem9, align 4, !dbg !1231
  br label %_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit, !dbg !1231

_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %_Z11reduceBlockILj4EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1232
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1232

if.then:                                          ; preds = %_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1233
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !1235

if.then8:                                         ; preds = %if.then
  %18 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1236
  %sub = add i32 %4, -1, !dbg !1239
  %cmp15 = icmp eq i32 %18, %sub, !dbg !1239
  %conv16 = zext i1 %cmp15 to i8, !dbg !1239
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb1EEvPKfPfjE6amLast, align 1, !dbg !1239
  br label %if.end, !dbg !1239

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1241
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb1EEvPKfPfjE6amLast, align 1, !dbg !1242
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1242
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1242

while.cond.preheader:                             ; preds = %if.end
  %cmp2316 = icmp ult i32 %2, %4, !dbg !1243
  br i1 %cmp2316, label %while.body, label %while.end, !dbg !1243

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.018 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.017 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %19 = sext i32 %i.017 to i64, !dbg !1245
  %getElem10 = getelementptr float addrspace(1)* %0, i64 %19, !dbg !1245
  %20 = ptrtoint float addrspace(1)* %getElem10 to i64
  call void @__curd__glmemReadHook(i64 %20, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem10, align 4, !dbg !1245
  %add = fadd float %mySum.018, %tmp27, !dbg !1245
  %add30 = add i32 %i.017, 4, !dbg !1247
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1243
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1243

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem11 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1248
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemWriteHook(i64 %22, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem11, align 4, !dbg !1248
  tail call void @llvm.cuda.syncthreads(), !dbg !1250
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj4EEvPVffj.exit, !dbg !1251

if.then58.i:                                      ; preds = %while.end
  %add123.i = add i32 %2, 2, !dbg !1252
  %getElem12 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1252
  %23 = ptrtoint float addrspace(3)* %getElem12 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemReadHook(i64 %24, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem12, align 4, !dbg !1252
  %add127.i = fadd float %mySum.0.lcssa, %tmp126.i, !dbg !1252
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemWriteHook(i64 %26, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem11, align 4, !dbg !1252
  %add138.i = add i32 %2, 1, !dbg !1253
  %getElem14 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1253
  %27 = ptrtoint float addrspace(3)* %getElem14 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemReadHook(i64 %28, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !1253
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1253
  %29 = ptrtoint float addrspace(3)* %getElem11 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemWriteHook(i64 %30, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem11, align 4, !dbg !1253
  br label %_Z11reduceBlockILj4EEvPVffj.exit, !dbg !1253

_Z11reduceBlockILj4EEvPVffj.exit:                 ; preds = %if.then58.i, %while.end
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1254

if.then36:                                        ; preds = %_Z11reduceBlockILj4EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1255
  %31 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %31, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1255
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1257
  br label %if.end42, !dbg !1257

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj4EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj4ELb1EEvPKfPfj.exit
  ret void, !dbg !1258
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj2ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1259
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1259
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1259
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1262
  %mul.i = shl i32 %3, 2, !dbg !1262
  %add.i = add i32 %mul.i, %2, !dbg !1262
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1263
  %mul7.i = shl i32 %4, 2, !dbg !1263
  %cmp.i15 = icmp ult i32 %add.i, %n, !dbg !1264
  br i1 %cmp.i15, label %while.body.i, label %while.end.i, !dbg !1264

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i17 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i16 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i16 to i64, !dbg !1265
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1265
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1265
  %add14.i = fadd float %mySum.0.i17, %tmp12.i, !dbg !1265
  %add17.i = add i32 %i.0.i16, 2, !dbg !1266
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !1266
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !1266
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !1266
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !1266
  %add25.i = add i32 %i.0.i16, %mul7.i, !dbg !1267
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !1264
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1264

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1268
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1268
  tail call void @llvm.cuda.syncthreads(), !dbg !1270
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1271
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !1271

if.then58.i.i:                                    ; preds = %while.end.i
  %add138.i.i = add i32 %2, 1, !dbg !1272
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1272
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1272
  %add142.i.i = fadd float %mySum.0.i.lcssa, %tmp141.i.i, !dbg !1272
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1272
  br label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !1272

_Z11reduceBlockILj2EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp29.i = icmp eq i32 %2, 0, !dbg !1273
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit, !dbg !1273

if.then30.i:                                      ; preds = %_Z11reduceBlockILj2EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1274
  %idxprom35.i = zext i32 %3 to i64, !dbg !1274
  %getElem7 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !1274
  %13 = ptrtoint float addrspace(1)* %getElem7 to i64
  call void @__curd__glmemWriteHook(i64 %13, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem7, align 4, !dbg !1274
  br label %_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit, !dbg !1274

_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %_Z11reduceBlockILj2EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1275
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1275

if.then:                                          ; preds = %_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1276
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !1278

if.then8:                                         ; preds = %if.then
  %14 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1279
  %sub = add i32 %4, -1, !dbg !1282
  %cmp15 = icmp eq i32 %14, %sub, !dbg !1282
  %conv16 = zext i1 %cmp15 to i8, !dbg !1282
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb1EEvPKfPfjE6amLast, align 1, !dbg !1282
  br label %if.end, !dbg !1282

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1284
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb1EEvPKfPfjE6amLast, align 1, !dbg !1285
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1285
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1285

while.cond.preheader:                             ; preds = %if.end
  %cmp2312 = icmp ult i32 %2, %4, !dbg !1286
  br i1 %cmp2312, label %while.body, label %while.end, !dbg !1286

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.014 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.013 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %15 = sext i32 %i.013 to i64, !dbg !1288
  %getElem8 = getelementptr float addrspace(1)* %0, i64 %15, !dbg !1288
  %16 = ptrtoint float addrspace(1)* %getElem8 to i64
  call void @__curd__glmemReadHook(i64 %16, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem8, align 4, !dbg !1288
  %add = fadd float %mySum.014, %tmp27, !dbg !1288
  %add30 = add i32 %i.013, 2, !dbg !1290
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1286
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1286

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem9 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1291
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemWriteHook(i64 %18, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem9, align 4, !dbg !1291
  tail call void @llvm.cuda.syncthreads(), !dbg !1293
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj2EEvPVffj.exit, !dbg !1294

if.then58.i:                                      ; preds = %while.end
  %add138.i = add i32 %2, 1, !dbg !1295
  %getElem10 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1295
  %19 = ptrtoint float addrspace(3)* %getElem10 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemReadHook(i64 %20, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem10, align 4, !dbg !1295
  %add142.i = fadd float %mySum.0.lcssa, %tmp141.i, !dbg !1295
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemWriteHook(i64 %22, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem9, align 4, !dbg !1295
  br label %_Z11reduceBlockILj2EEvPVffj.exit, !dbg !1295

_Z11reduceBlockILj2EEvPVffj.exit:                 ; preds = %if.then58.i, %while.end
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1296

if.then36:                                        ; preds = %_Z11reduceBlockILj2EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1297
  %23 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %23, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1297
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1299
  br label %if.end42, !dbg !1299

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj2EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj2ELb1EEvPKfPfj.exit
  ret void, !dbg !1300
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj1ELb1EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1301
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1301
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1301
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1304
  %mul.i = shl i32 %3, 1, !dbg !1304
  %add.i = add i32 %mul.i, %2, !dbg !1304
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1305
  %mul7.i = shl i32 %4, 1, !dbg !1305
  %cmp.i11 = icmp ult i32 %add.i, %n, !dbg !1306
  br i1 %cmp.i11, label %while.body.i, label %while.end.i, !dbg !1306

while.body.i:                                     ; preds = %while.body.i, %entry
  %mySum.0.i13 = phi float [ %add22.i, %while.body.i ], [ 0.000000e+00, %entry ]
  %i.0.i12 = phi i32 [ %add25.i, %while.body.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i12 to i64, !dbg !1307
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1307
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1307
  %add14.i = fadd float %mySum.0.i13, %tmp12.i, !dbg !1307
  %add17.i = add i32 %i.0.i12, 1, !dbg !1308
  %idxprom18.i = zext i32 %add17.i to i64, !dbg !1308
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom18.i, !dbg !1308
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp20.i = load float addrspace(1)* %getElem3, align 4, !dbg !1308
  %add22.i = fadd float %add14.i, %tmp20.i, !dbg !1308
  %add25.i = add i32 %i.0.i12, %mul7.i, !dbg !1309
  %cmp.i = icmp ult i32 %add25.i, %n, !dbg !1306
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1306

while.end.i:                                      ; preds = %while.body.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %add22.i, %while.body.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1310
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1310
  tail call void @llvm.cuda.syncthreads(), !dbg !1312
  call void @__curd__barrierHook() #1
  %cmp29.i = icmp eq i32 %2, 0, !dbg !1313
  br i1 %cmp29.i, label %if.then30.i, label %_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit, !dbg !1313

if.then30.i:                                      ; preds = %while.end.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp31.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1314
  %idxprom35.i = zext i32 %3 to i64, !dbg !1314
  %getElem5 = getelementptr float addrspace(1)* %0, i64 %idxprom35.i, !dbg !1314
  %9 = ptrtoint float addrspace(1)* %getElem5 to i64
  call void @__curd__glmemWriteHook(i64 %9, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp31.i, float addrspace(1)* %getElem5, align 4, !dbg !1314
  br label %_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit, !dbg !1314

_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit:           ; preds = %if.then30.i, %while.end.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1315
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1315

if.then:                                          ; preds = %_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1316
  br i1 %cmp29.i, label %if.then8, label %if.end, !dbg !1318

if.then8:                                         ; preds = %if.then
  %10 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1319
  %sub = add i32 %4, -1, !dbg !1322
  %cmp15 = icmp eq i32 %10, %sub, !dbg !1322
  %conv16 = zext i1 %cmp15 to i8, !dbg !1322
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb1EEvPKfPfjE6amLast, align 1, !dbg !1322
  br label %if.end, !dbg !1322

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1324
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb1EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb1EEvPKfPfjE6amLast, align 1, !dbg !1325
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1325
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1325

while.cond.preheader:                             ; preds = %if.end
  %cmp238 = icmp ugt i32 %4, %2, !dbg !1326
  br i1 %cmp238, label %while.body.preheader, label %while.end, !dbg !1326

while.body.preheader:                             ; preds = %while.cond.preheader
  %11 = sub i32 %4, %2
  %xtraiter = and i32 %11, 3
  %lcmp = icmp eq i32 %xtraiter, 0
  br i1 %lcmp, label %while.body.preheader.split, label %unr.cmp29

unr.cmp29:                                        ; preds = %while.body.preheader
  %un.tmp30 = icmp eq i32 %xtraiter, 1
  br i1 %un.tmp30, label %while.body.unr21, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp29
  %un.tmp = icmp eq i32 %xtraiter, 2
  br i1 %un.tmp, label %while.body.unr15, label %while.body.unr

while.body.unr:                                   ; preds = %unr.cmp
  %12 = sext i32 %2 to i64, !dbg !1328
  %getElem6.unr = getelementptr float addrspace(1)* %0, i64 %12, !dbg !1328
  %13 = ptrtoint float addrspace(1)* %getElem6.unr to i64
  call void @__curd__glmemReadHook(i64 %13, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.unr = load float addrspace(1)* %getElem6.unr, align 4, !dbg !1328
  %add.unr = fadd float %tmp27.unr, 0.000000e+00, !dbg !1328
  %add30.unr = add i32 %2, 1, !dbg !1330
  br label %while.body.unr15

while.body.unr15:                                 ; preds = %while.body.unr, %unr.cmp
  %mySum.010.unr = phi float [ %add.unr, %while.body.unr ], [ 0.000000e+00, %unr.cmp ]
  %i.09.unr = phi i32 [ %add30.unr, %while.body.unr ], [ %2, %unr.cmp ]
  %14 = sext i32 %i.09.unr to i64, !dbg !1328
  %getElem6.unr16 = getelementptr float addrspace(1)* %0, i64 %14, !dbg !1328
  %15 = ptrtoint float addrspace(1)* %getElem6.unr16 to i64
  call void @__curd__glmemReadHook(i64 %15, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.unr17 = load float addrspace(1)* %getElem6.unr16, align 4, !dbg !1328
  %add.unr18 = fadd float %mySum.010.unr, %tmp27.unr17, !dbg !1328
  %add30.unr19 = add i32 %i.09.unr, 1, !dbg !1330
  br label %while.body.unr21

while.body.unr21:                                 ; preds = %while.body.unr15, %unr.cmp29
  %mySum.010.unr22 = phi float [ %add.unr18, %while.body.unr15 ], [ 0.000000e+00, %unr.cmp29 ]
  %i.09.unr23 = phi i32 [ %add30.unr19, %while.body.unr15 ], [ %2, %unr.cmp29 ]
  %16 = sext i32 %i.09.unr23 to i64, !dbg !1328
  %getElem6.unr24 = getelementptr float addrspace(1)* %0, i64 %16, !dbg !1328
  %17 = ptrtoint float addrspace(1)* %getElem6.unr24 to i64
  call void @__curd__glmemReadHook(i64 %17, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.unr25 = load float addrspace(1)* %getElem6.unr24, align 4, !dbg !1328
  %add.unr26 = fadd float %mySum.010.unr22, %tmp27.unr25, !dbg !1328
  %add30.unr27 = add i32 %i.09.unr23, 1, !dbg !1330
  br label %while.body.preheader.split

while.body.preheader.split:                       ; preds = %while.body.unr21, %while.body.preheader
  %mySum.010.unr31 = phi float [ 0.000000e+00, %while.body.preheader ], [ %add.unr26, %while.body.unr21 ]
  %i.09.unr32 = phi i32 [ %2, %while.body.preheader ], [ %add30.unr27, %while.body.unr21 ]
  %18 = icmp ult i32 %11, 4
  br i1 %18, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader.split
  %mySum.010 = phi float [ %add.3, %while.body ], [ %mySum.010.unr31, %while.body.preheader.split ]
  %i.09 = phi i32 [ %add30.3, %while.body ], [ %i.09.unr32, %while.body.preheader.split ]
  %19 = sext i32 %i.09 to i64, !dbg !1328
  %getElem6 = getelementptr float addrspace(1)* %0, i64 %19, !dbg !1328
  %20 = ptrtoint float addrspace(1)* %getElem6 to i64
  call void @__curd__glmemReadHook(i64 %20, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem6, align 4, !dbg !1328
  %add = fadd float %mySum.010, %tmp27, !dbg !1328
  %add30 = add i32 %i.09, 1, !dbg !1330
  %21 = sext i32 %add30 to i64, !dbg !1328
  %getElem6.1 = getelementptr float addrspace(1)* %0, i64 %21, !dbg !1328
  %22 = ptrtoint float addrspace(1)* %getElem6.1 to i64
  call void @__curd__glmemReadHook(i64 %22, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.1 = load float addrspace(1)* %getElem6.1, align 4, !dbg !1328
  %add.1 = fadd float %add, %tmp27.1, !dbg !1328
  %add30.1 = add i32 %i.09, 2, !dbg !1330
  %23 = sext i32 %add30.1 to i64, !dbg !1328
  %getElem6.2 = getelementptr float addrspace(1)* %0, i64 %23, !dbg !1328
  %24 = ptrtoint float addrspace(1)* %getElem6.2 to i64
  call void @__curd__glmemReadHook(i64 %24, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.2 = load float addrspace(1)* %getElem6.2, align 4, !dbg !1328
  %add.2 = fadd float %add.1, %tmp27.2, !dbg !1328
  %add30.2 = add i32 %i.09, 3, !dbg !1330
  %25 = sext i32 %add30.2 to i64, !dbg !1328
  %getElem6.3 = getelementptr float addrspace(1)* %0, i64 %25, !dbg !1328
  %26 = ptrtoint float addrspace(1)* %getElem6.3 to i64
  call void @__curd__glmemReadHook(i64 %26, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.3 = load float addrspace(1)* %getElem6.3, align 4, !dbg !1328
  %add.3 = fadd float %add.2, %tmp27.3, !dbg !1328
  %add30.3 = add i32 %i.09, 4, !dbg !1330
  %cmp23.3 = icmp ult i32 %add30.3, %4, !dbg !1326
  br i1 %cmp23.3, label %while.body, label %while.end, !dbg !1326

while.end:                                        ; preds = %while.body, %while.body.preheader.split, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %mySum.010.unr31, %while.body.preheader.split ], [ %add.3, %while.body ]
  %getElem7 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1331
  %27 = ptrtoint float addrspace(3)* %getElem7 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem7, align 4, !dbg !1331
  tail call void @llvm.cuda.syncthreads(), !dbg !1333
  call void @__curd__barrierHook() #1
  br i1 %cmp29.i, label %if.then36, label %if.end42, !dbg !1334

if.then36:                                        ; preds = %while.end
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1335
  %29 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %29, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1335
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1337
  br label %if.end42, !dbg !1337

if.end42:                                         ; preds = %if.then36, %while.end, %if.end, %_Z12reduceBlocksILj1ELb1EEvPKfPfj.exit
  ret void, !dbg !1338
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj512ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1339
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1339
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1339
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1342
  %mul.i = shl i32 %3, 10, !dbg !1342
  %add.i = add i32 %mul.i, %2, !dbg !1342
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1343
  %mul7.i = shl i32 %4, 10, !dbg !1343
  %cmp.i52 = icmp ult i32 %add.i, %n, !dbg !1344
  br i1 %cmp.i52, label %while.body.i, label %while.end.i, !dbg !1344

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i54 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i53 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i53 to i64, !dbg !1345
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1345
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1345
  %add14.i = fadd float %mySum.0.i54, %tmp12.i, !dbg !1345
  %add16.i = add i32 %i.0.i53, 512, !dbg !1346
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1346
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1346

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1347
  %getElem8 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1347
  %6 = ptrtoint float addrspace(1)* %getElem8 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem8, align 4, !dbg !1347
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1347
  br label %if.end.i, !dbg !1347

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1348
  %add29.i = add i32 %i.0.i53, %mul7.i, !dbg !1348
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1344
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1344

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1349
  %7 = ptrtoint float addrspace(3)* %getElem9 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem9, align 4, !dbg !1349
  tail call void @llvm.cuda.syncthreads(), !dbg !1351
  call void @__curd__barrierHook() #1
  %cmp.i.i = icmp ult i32 %2, 256, !dbg !1352
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i, !dbg !1352

if.then4.i.i:                                     ; preds = %while.end.i
  %add.i.i = add i32 %2, 256, !dbg !1353
  %getElem10 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add.i.i, !dbg !1353
  %9 = ptrtoint float addrspace(3)* %getElem10 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp10.i.i = load volatile float addrspace(3)* %getElem10, align 4, !dbg !1353
  %add11.i.i = fadd float %mySum.0.i.lcssa, %tmp10.i.i, !dbg !1353
  %11 = ptrtoint float addrspace(3)* %getElem9 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add11.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1353
  br label %if.end.i.i, !dbg !1353

if.end.i.i:                                       ; preds = %if.then4.i.i, %while.end.i
  %mySum.addr.0.i.i = phi float [ %add11.i.i, %if.then4.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !1354
  tail call void @llvm.cuda.syncthreads(), !dbg !1354
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !1355
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !1355

if.then21.i.i:                                    ; preds = %if.end.i.i
  %add25.i.i = add i32 %2, 128, !dbg !1356
  %getElem12 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !1356
  %13 = ptrtoint float addrspace(3)* %getElem12 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem12, align 4, !dbg !1356
  %add29.i.i = fadd float %mySum.addr.0.i.i, %tmp28.i.i, !dbg !1356
  %15 = ptrtoint float addrspace(3)* %getElem9 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1356
  br label %if.end35.i.i, !dbg !1356

if.end35.i.i:                                     ; preds = %if.then21.i.i, %if.end.i.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.addr.0.i.i, %if.end.i.i ], !dbg !1357
  tail call void @llvm.cuda.syncthreads(), !dbg !1357
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !1358
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !1358

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !1359
  %getElem14 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !1359
  %17 = ptrtoint float addrspace(3)* %getElem14 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !1359
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !1359
  %19 = ptrtoint float addrspace(3)* %getElem9 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1359
  br label %if.end54.i.i, !dbg !1359

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !1360
  tail call void @llvm.cuda.syncthreads(), !dbg !1360
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1361
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !1361

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !1362
  %getElem16 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !1362
  %21 = ptrtoint float addrspace(3)* %getElem16 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !1362
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !1362
  %23 = ptrtoint float addrspace(3)* %getElem9 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1362
  %add78.i.i = add i32 %2, 16, !dbg !1363
  %getElem18 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !1363
  %25 = ptrtoint float addrspace(3)* %getElem18 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1363
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !1363
  %27 = ptrtoint float addrspace(3)* %getElem9 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1363
  %add93.i.i = add i32 %2, 8, !dbg !1364
  %getElem20 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1364
  %29 = ptrtoint float addrspace(3)* %getElem20 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1364
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !1364
  %31 = ptrtoint float addrspace(3)* %getElem9 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1364
  %add108.i.i = add i32 %2, 4, !dbg !1365
  %getElem22 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1365
  %33 = ptrtoint float addrspace(3)* %getElem22 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1365
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1365
  %35 = ptrtoint float addrspace(3)* %getElem9 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1365
  %add123.i.i = add i32 %2, 2, !dbg !1366
  %getElem24 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1366
  %37 = ptrtoint float addrspace(3)* %getElem24 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !1366
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1366
  %39 = ptrtoint float addrspace(3)* %getElem9 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1366
  %add138.i.i = add i32 %2, 1, !dbg !1367
  %getElem26 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1367
  %41 = ptrtoint float addrspace(3)* %getElem26 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemReadHook(i64 %42, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem26, align 4, !dbg !1367
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1367
  %43 = ptrtoint float addrspace(3)* %getElem9 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemWriteHook(i64 %44, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem9, align 4, !dbg !1367
  br label %_Z11reduceBlockILj512EEvPVffj.exit.i, !dbg !1367

_Z11reduceBlockILj512EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1368
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit, !dbg !1368

if.then34.i:                                      ; preds = %_Z11reduceBlockILj512EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1369
  %idxprom39.i = zext i32 %3 to i64, !dbg !1369
  %getElem28 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1369
  %45 = ptrtoint float addrspace(1)* %getElem28 to i64
  call void @__curd__glmemWriteHook(i64 %45, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem28, align 4, !dbg !1369
  br label %_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit, !dbg !1369

_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit:         ; preds = %if.then34.i, %_Z11reduceBlockILj512EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1370
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1370

if.then:                                          ; preds = %_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1371
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1373

if.then8:                                         ; preds = %if.then
  %46 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1374
  %sub = add i32 %4, -1, !dbg !1377
  %cmp15 = icmp eq i32 %46, %sub, !dbg !1377
  %conv16 = zext i1 %cmp15 to i8, !dbg !1377
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb0EEvPKfPfjE6amLast, align 1, !dbg !1377
  br label %if.end, !dbg !1377

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1379
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj512ELb0EEvPKfPfjE6amLast, align 1, !dbg !1380
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1380
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1380

while.cond.preheader:                             ; preds = %if.end
  %cmp2349 = icmp ult i32 %2, %4, !dbg !1381
  br i1 %cmp2349, label %while.body, label %while.end, !dbg !1381

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.051 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.050 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %47 = sext i32 %i.050 to i64, !dbg !1383
  %getElem29 = getelementptr float addrspace(1)* %0, i64 %47, !dbg !1383
  %48 = ptrtoint float addrspace(1)* %getElem29 to i64
  call void @__curd__glmemReadHook(i64 %48, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem29, align 4, !dbg !1383
  %add = fadd float %mySum.051, %tmp27, !dbg !1383
  %add30 = add i32 %i.050, 512, !dbg !1385
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1381
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1381

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem30 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1386
  %49 = ptrtoint float addrspace(3)* %getElem30 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem30, align 4, !dbg !1386
  tail call void @llvm.cuda.syncthreads(), !dbg !1388
  call void @__curd__barrierHook() #1
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i6, !dbg !1389

if.then4.i:                                       ; preds = %while.end
  %add.i5 = add i32 %2, 256, !dbg !1390
  %getElem31 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add.i5, !dbg !1390
  %51 = ptrtoint float addrspace(3)* %getElem31 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp10.i = load volatile float addrspace(3)* %getElem31, align 4, !dbg !1390
  %add11.i = fadd float %mySum.0.lcssa, %tmp10.i, !dbg !1390
  %53 = ptrtoint float addrspace(3)* %getElem30 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 46, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add11.i, float addrspace(3)* %getElem30, align 4, !dbg !1390
  br label %if.end.i6, !dbg !1390

if.end.i6:                                        ; preds = %if.then4.i, %while.end
  %mySum.addr.0.i = phi float [ %add11.i, %if.then4.i ], [ %mySum.0.lcssa, %while.end ], !dbg !1391
  tail call void @llvm.cuda.syncthreads(), !dbg !1391
  call void @__curd__barrierHook() #1
  br i1 %cmp20.i.i, label %if.then21.i, label %if.end35.i, !dbg !1392

if.then21.i:                                      ; preds = %if.end.i6
  %add25.i = add i32 %2, 128, !dbg !1393
  %getElem33 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add25.i, !dbg !1393
  %55 = ptrtoint float addrspace(3)* %getElem33 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i = load volatile float addrspace(3)* %getElem33, align 4, !dbg !1393
  %add29.i7 = fadd float %mySum.addr.0.i, %tmp28.i, !dbg !1393
  %57 = ptrtoint float addrspace(3)* %getElem30 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i7, float addrspace(3)* %getElem30, align 4, !dbg !1393
  br label %if.end35.i, !dbg !1393

if.end35.i:                                       ; preds = %if.then21.i, %if.end.i6
  %mySum.addr.2.i = phi float [ %add29.i7, %if.then21.i ], [ %mySum.addr.0.i, %if.end.i6 ], !dbg !1394
  tail call void @llvm.cuda.syncthreads(), !dbg !1394
  call void @__curd__barrierHook() #1
  br i1 %cmp39.i.i, label %if.then40.i, label %if.end54.i, !dbg !1395

if.then40.i:                                      ; preds = %if.end35.i
  %add44.i = add i32 %2, 64, !dbg !1396
  %getElem35 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add44.i, !dbg !1396
  %59 = ptrtoint float addrspace(3)* %getElem35 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i = load volatile float addrspace(3)* %getElem35, align 4, !dbg !1396
  %add48.i = fadd float %mySum.addr.2.i, %tmp47.i, !dbg !1396
  %61 = ptrtoint float addrspace(3)* %getElem30 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i, float addrspace(3)* %getElem30, align 4, !dbg !1396
  br label %if.end54.i, !dbg !1396

if.end54.i:                                       ; preds = %if.then40.i, %if.end35.i
  %mySum.addr.4.i = phi float [ %add48.i, %if.then40.i ], [ %mySum.addr.2.i, %if.end35.i ], !dbg !1397
  tail call void @llvm.cuda.syncthreads(), !dbg !1397
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj512EEvPVffj.exit, !dbg !1398

if.then58.i:                                      ; preds = %if.end54.i
  %add63.i = add i32 %2, 32, !dbg !1399
  %getElem37 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !1399
  %63 = ptrtoint float addrspace(3)* %getElem37 to i32
  %64 = zext i32 %63 to i64
  call void @__curd__shmemReadHook(i64 %64, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem37, align 4, !dbg !1399
  %add67.i = fadd float %mySum.addr.4.i, %tmp66.i, !dbg !1399
  %65 = ptrtoint float addrspace(3)* %getElem30 to i32
  %66 = zext i32 %65 to i64
  call void @__curd__shmemWriteHook(i64 %66, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem30, align 4, !dbg !1399
  %add78.i = add i32 %2, 16, !dbg !1400
  %getElem39 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1400
  %67 = ptrtoint float addrspace(3)* %getElem39 to i32
  %68 = zext i32 %67 to i64
  call void @__curd__shmemReadHook(i64 %68, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem39, align 4, !dbg !1400
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !1400
  %69 = ptrtoint float addrspace(3)* %getElem30 to i32
  %70 = zext i32 %69 to i64
  call void @__curd__shmemWriteHook(i64 %70, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem30, align 4, !dbg !1400
  %add93.i = add i32 %2, 8, !dbg !1401
  %getElem41 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1401
  %71 = ptrtoint float addrspace(3)* %getElem41 to i32
  %72 = zext i32 %71 to i64
  call void @__curd__shmemReadHook(i64 %72, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem41, align 4, !dbg !1401
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1401
  %73 = ptrtoint float addrspace(3)* %getElem30 to i32
  %74 = zext i32 %73 to i64
  call void @__curd__shmemWriteHook(i64 %74, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem30, align 4, !dbg !1401
  %add108.i = add i32 %2, 4, !dbg !1402
  %getElem43 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1402
  %75 = ptrtoint float addrspace(3)* %getElem43 to i32
  %76 = zext i32 %75 to i64
  call void @__curd__shmemReadHook(i64 %76, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem43, align 4, !dbg !1402
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1402
  %77 = ptrtoint float addrspace(3)* %getElem30 to i32
  %78 = zext i32 %77 to i64
  call void @__curd__shmemWriteHook(i64 %78, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem30, align 4, !dbg !1402
  %add123.i = add i32 %2, 2, !dbg !1403
  %getElem45 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1403
  %79 = ptrtoint float addrspace(3)* %getElem45 to i32
  %80 = zext i32 %79 to i64
  call void @__curd__shmemReadHook(i64 %80, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem45, align 4, !dbg !1403
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1403
  %81 = ptrtoint float addrspace(3)* %getElem30 to i32
  %82 = zext i32 %81 to i64
  call void @__curd__shmemWriteHook(i64 %82, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem30, align 4, !dbg !1403
  %add138.i = add i32 %2, 1, !dbg !1404
  %getElem47 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1404
  %83 = ptrtoint float addrspace(3)* %getElem47 to i32
  %84 = zext i32 %83 to i64
  call void @__curd__shmemReadHook(i64 %84, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem47, align 4, !dbg !1404
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1404
  %85 = ptrtoint float addrspace(3)* %getElem30 to i32
  %86 = zext i32 %85 to i64
  call void @__curd__shmemWriteHook(i64 %86, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem30, align 4, !dbg !1404
  br label %_Z11reduceBlockILj512EEvPVffj.exit, !dbg !1404

_Z11reduceBlockILj512EEvPVffj.exit:               ; preds = %if.then58.i, %if.end54.i
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1405

if.then36:                                        ; preds = %_Z11reduceBlockILj512EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1406
  %87 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %87, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1406
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1408
  br label %if.end42, !dbg !1408

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj512EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj512ELb0EEvPKfPfj.exit
  ret void, !dbg !1409
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj256ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1410
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1410
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1410
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1413
  %mul.i = shl i32 %3, 9, !dbg !1413
  %add.i = add i32 %mul.i, %2, !dbg !1413
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1414
  %mul7.i = shl i32 %4, 9, !dbg !1414
  %cmp.i44 = icmp ult i32 %add.i, %n, !dbg !1415
  br i1 %cmp.i44, label %while.body.i, label %while.end.i, !dbg !1415

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i46 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i45 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i45 to i64, !dbg !1416
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1416
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1416
  %add14.i = fadd float %mySum.0.i46, %tmp12.i, !dbg !1416
  %add16.i = add i32 %i.0.i45, 256, !dbg !1417
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1417
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1417

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1418
  %getElem4 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1418
  %6 = ptrtoint float addrspace(1)* %getElem4 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem4, align 4, !dbg !1418
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1418
  br label %if.end.i, !dbg !1418

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1419
  %add29.i = add i32 %i.0.i45, %mul7.i, !dbg !1419
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1415
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1415

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1420
  %7 = ptrtoint float addrspace(3)* %getElem5 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem5, align 4, !dbg !1420
  tail call void @llvm.cuda.syncthreads(), !dbg !1422
  call void @__curd__barrierHook() #1
  %cmp20.i.i = icmp ult i32 %2, 128, !dbg !1423
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end35.i.i, !dbg !1423

if.then21.i.i:                                    ; preds = %while.end.i
  %add25.i.i = add i32 %2, 128, !dbg !1424
  %getElem6 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add25.i.i, !dbg !1424
  %9 = ptrtoint float addrspace(3)* %getElem6 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i.i = load volatile float addrspace(3)* %getElem6, align 4, !dbg !1424
  %add29.i.i = fadd float %mySum.0.i.lcssa, %tmp28.i.i, !dbg !1424
  %11 = ptrtoint float addrspace(3)* %getElem5 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1424
  br label %if.end35.i.i, !dbg !1424

if.end35.i.i:                                     ; preds = %if.then21.i.i, %while.end.i
  %mySum.addr.2.i.i = phi float [ %add29.i.i, %if.then21.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !1425
  tail call void @llvm.cuda.syncthreads(), !dbg !1425
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !1426
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !1426

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %add44.i.i = add i32 %2, 64, !dbg !1427
  %getElem8 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !1427
  %13 = ptrtoint float addrspace(3)* %getElem8 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem8, align 4, !dbg !1427
  %add48.i.i = fadd float %mySum.addr.2.i.i, %tmp47.i.i, !dbg !1427
  %15 = ptrtoint float addrspace(3)* %getElem5 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1427
  br label %if.end54.i.i, !dbg !1427

if.end54.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.addr.2.i.i, %if.end35.i.i ], !dbg !1428
  tail call void @llvm.cuda.syncthreads(), !dbg !1428
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1429
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !1429

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !1430
  %getElem10 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !1430
  %17 = ptrtoint float addrspace(3)* %getElem10 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem10, align 4, !dbg !1430
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !1430
  %19 = ptrtoint float addrspace(3)* %getElem5 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1430
  %add78.i.i = add i32 %2, 16, !dbg !1431
  %getElem12 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !1431
  %21 = ptrtoint float addrspace(3)* %getElem12 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem12, align 4, !dbg !1431
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !1431
  %23 = ptrtoint float addrspace(3)* %getElem5 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1431
  %add93.i.i = add i32 %2, 8, !dbg !1432
  %getElem14 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1432
  %25 = ptrtoint float addrspace(3)* %getElem14 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !1432
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !1432
  %27 = ptrtoint float addrspace(3)* %getElem5 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1432
  %add108.i.i = add i32 %2, 4, !dbg !1433
  %getElem16 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1433
  %29 = ptrtoint float addrspace(3)* %getElem16 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !1433
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1433
  %31 = ptrtoint float addrspace(3)* %getElem5 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1433
  %add123.i.i = add i32 %2, 2, !dbg !1434
  %getElem18 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1434
  %33 = ptrtoint float addrspace(3)* %getElem18 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1434
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1434
  %35 = ptrtoint float addrspace(3)* %getElem5 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1434
  %add138.i.i = add i32 %2, 1, !dbg !1435
  %getElem20 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1435
  %37 = ptrtoint float addrspace(3)* %getElem20 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemReadHook(i64 %38, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1435
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1435
  %39 = ptrtoint float addrspace(3)* %getElem5 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemWriteHook(i64 %40, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem5, align 4, !dbg !1435
  br label %_Z11reduceBlockILj256EEvPVffj.exit.i, !dbg !1435

_Z11reduceBlockILj256EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1436
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit, !dbg !1436

if.then34.i:                                      ; preds = %_Z11reduceBlockILj256EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1437
  %idxprom39.i = zext i32 %3 to i64, !dbg !1437
  %getElem22 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1437
  %41 = ptrtoint float addrspace(1)* %getElem22 to i64
  call void @__curd__glmemWriteHook(i64 %41, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem22, align 4, !dbg !1437
  br label %_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit, !dbg !1437

_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit:         ; preds = %if.then34.i, %_Z11reduceBlockILj256EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1438
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1438

if.then:                                          ; preds = %_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1439
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1441

if.then8:                                         ; preds = %if.then
  %42 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1442
  %sub = add i32 %4, -1, !dbg !1445
  %cmp15 = icmp eq i32 %42, %sub, !dbg !1445
  %conv16 = zext i1 %cmp15 to i8, !dbg !1445
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb0EEvPKfPfjE6amLast, align 1, !dbg !1445
  br label %if.end, !dbg !1445

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1447
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj256ELb0EEvPKfPfjE6amLast, align 1, !dbg !1448
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1448
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1448

while.cond.preheader:                             ; preds = %if.end
  %cmp2341 = icmp ult i32 %2, %4, !dbg !1449
  br i1 %cmp2341, label %while.body, label %while.end, !dbg !1449

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.043 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.042 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %43 = sext i32 %i.042 to i64, !dbg !1451
  %getElem23 = getelementptr float addrspace(1)* %0, i64 %43, !dbg !1451
  %44 = ptrtoint float addrspace(1)* %getElem23 to i64
  call void @__curd__glmemReadHook(i64 %44, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem23, align 4, !dbg !1451
  %add = fadd float %mySum.043, %tmp27, !dbg !1451
  %add30 = add i32 %i.042, 256, !dbg !1453
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1449
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1449

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1454
  %45 = ptrtoint float addrspace(3)* %getElem24 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem24, align 4, !dbg !1454
  tail call void @llvm.cuda.syncthreads(), !dbg !1456
  call void @__curd__barrierHook() #1
  br i1 %cmp20.i.i, label %if.then21.i, label %if.end35.i, !dbg !1457

if.then21.i:                                      ; preds = %while.end
  %add25.i = add i32 %2, 128, !dbg !1458
  %getElem25 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add25.i, !dbg !1458
  %47 = ptrtoint float addrspace(3)* %getElem25 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp28.i = load volatile float addrspace(3)* %getElem25, align 4, !dbg !1458
  %add29.i3 = fadd float %mySum.0.lcssa, %tmp28.i, !dbg !1458
  %49 = ptrtoint float addrspace(3)* %getElem24 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 56, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add29.i3, float addrspace(3)* %getElem24, align 4, !dbg !1458
  br label %if.end35.i, !dbg !1458

if.end35.i:                                       ; preds = %if.then21.i, %while.end
  %mySum.addr.2.i = phi float [ %add29.i3, %if.then21.i ], [ %mySum.0.lcssa, %while.end ], !dbg !1459
  tail call void @llvm.cuda.syncthreads(), !dbg !1459
  call void @__curd__barrierHook() #1
  br i1 %cmp39.i.i, label %if.then40.i, label %if.end54.i, !dbg !1460

if.then40.i:                                      ; preds = %if.end35.i
  %add44.i = add i32 %2, 64, !dbg !1461
  %getElem27 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add44.i, !dbg !1461
  %51 = ptrtoint float addrspace(3)* %getElem27 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i = load volatile float addrspace(3)* %getElem27, align 4, !dbg !1461
  %add48.i = fadd float %mySum.addr.2.i, %tmp47.i, !dbg !1461
  %53 = ptrtoint float addrspace(3)* %getElem24 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i, float addrspace(3)* %getElem24, align 4, !dbg !1461
  br label %if.end54.i, !dbg !1461

if.end54.i:                                       ; preds = %if.then40.i, %if.end35.i
  %mySum.addr.4.i = phi float [ %add48.i, %if.then40.i ], [ %mySum.addr.2.i, %if.end35.i ], !dbg !1462
  tail call void @llvm.cuda.syncthreads(), !dbg !1462
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj256EEvPVffj.exit, !dbg !1463

if.then58.i:                                      ; preds = %if.end54.i
  %add63.i = add i32 %2, 32, !dbg !1464
  %getElem29 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !1464
  %55 = ptrtoint float addrspace(3)* %getElem29 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem29, align 4, !dbg !1464
  %add67.i = fadd float %mySum.addr.4.i, %tmp66.i, !dbg !1464
  %57 = ptrtoint float addrspace(3)* %getElem24 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem24, align 4, !dbg !1464
  %add78.i = add i32 %2, 16, !dbg !1465
  %getElem31 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1465
  %59 = ptrtoint float addrspace(3)* %getElem31 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem31, align 4, !dbg !1465
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !1465
  %61 = ptrtoint float addrspace(3)* %getElem24 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem24, align 4, !dbg !1465
  %add93.i = add i32 %2, 8, !dbg !1466
  %getElem33 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1466
  %63 = ptrtoint float addrspace(3)* %getElem33 to i32
  %64 = zext i32 %63 to i64
  call void @__curd__shmemReadHook(i64 %64, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem33, align 4, !dbg !1466
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1466
  %65 = ptrtoint float addrspace(3)* %getElem24 to i32
  %66 = zext i32 %65 to i64
  call void @__curd__shmemWriteHook(i64 %66, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem24, align 4, !dbg !1466
  %add108.i = add i32 %2, 4, !dbg !1467
  %getElem35 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1467
  %67 = ptrtoint float addrspace(3)* %getElem35 to i32
  %68 = zext i32 %67 to i64
  call void @__curd__shmemReadHook(i64 %68, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem35, align 4, !dbg !1467
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1467
  %69 = ptrtoint float addrspace(3)* %getElem24 to i32
  %70 = zext i32 %69 to i64
  call void @__curd__shmemWriteHook(i64 %70, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem24, align 4, !dbg !1467
  %add123.i = add i32 %2, 2, !dbg !1468
  %getElem37 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1468
  %71 = ptrtoint float addrspace(3)* %getElem37 to i32
  %72 = zext i32 %71 to i64
  call void @__curd__shmemReadHook(i64 %72, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem37, align 4, !dbg !1468
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1468
  %73 = ptrtoint float addrspace(3)* %getElem24 to i32
  %74 = zext i32 %73 to i64
  call void @__curd__shmemWriteHook(i64 %74, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem24, align 4, !dbg !1468
  %add138.i = add i32 %2, 1, !dbg !1469
  %getElem39 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1469
  %75 = ptrtoint float addrspace(3)* %getElem39 to i32
  %76 = zext i32 %75 to i64
  call void @__curd__shmemReadHook(i64 %76, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem39, align 4, !dbg !1469
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1469
  %77 = ptrtoint float addrspace(3)* %getElem24 to i32
  %78 = zext i32 %77 to i64
  call void @__curd__shmemWriteHook(i64 %78, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem24, align 4, !dbg !1469
  br label %_Z11reduceBlockILj256EEvPVffj.exit, !dbg !1469

_Z11reduceBlockILj256EEvPVffj.exit:               ; preds = %if.then58.i, %if.end54.i
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1470

if.then36:                                        ; preds = %_Z11reduceBlockILj256EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1471
  %79 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %79, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1471
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1473
  br label %if.end42, !dbg !1473

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj256EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj256ELb0EEvPKfPfj.exit
  ret void, !dbg !1474
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj128ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1475
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1475
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1475
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1478
  %mul.i = shl i32 %3, 8, !dbg !1478
  %add.i = add i32 %mul.i, %2, !dbg !1478
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1479
  %mul7.i = shl i32 %4, 8, !dbg !1479
  %cmp.i39 = icmp ult i32 %add.i, %n, !dbg !1480
  br i1 %cmp.i39, label %while.body.i, label %while.end.i, !dbg !1480

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i41 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i40 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i40 to i64, !dbg !1481
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1481
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1481
  %add14.i = fadd float %mySum.0.i41, %tmp12.i, !dbg !1481
  %add16.i = add i32 %i.0.i40, 128, !dbg !1482
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1482
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1482

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1483
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1483
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1483
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1483
  br label %if.end.i, !dbg !1483

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1484
  %add29.i = add i32 %i.0.i40, %mul7.i, !dbg !1484
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1480
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1480

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1485
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1485
  tail call void @llvm.cuda.syncthreads(), !dbg !1487
  call void @__curd__barrierHook() #1
  %cmp39.i.i = icmp ult i32 %2, 64, !dbg !1488
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end54.i.i, !dbg !1488

if.then40.i.i:                                    ; preds = %while.end.i
  %add44.i.i = add i32 %2, 64, !dbg !1489
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add44.i.i, !dbg !1489
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1489
  %add48.i.i = fadd float %mySum.0.i.lcssa, %tmp47.i.i, !dbg !1489
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1489
  br label %if.end54.i.i, !dbg !1489

if.end54.i.i:                                     ; preds = %if.then40.i.i, %while.end.i
  %mySum.addr.4.i.i = phi float [ %add48.i.i, %if.then40.i.i ], [ %mySum.0.i.lcssa, %while.end.i ], !dbg !1490
  tail call void @llvm.cuda.syncthreads(), !dbg !1490
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1491
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !1491

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %add63.i.i = add i32 %2, 32, !dbg !1492
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !1492
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1492
  %add67.i.i = fadd float %mySum.addr.4.i.i, %tmp66.i.i, !dbg !1492
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1492
  %add78.i.i = add i32 %2, 16, !dbg !1493
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !1493
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1493
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !1493
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1493
  %add93.i.i = add i32 %2, 8, !dbg !1494
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1494
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !1494
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !1494
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1494
  %add108.i.i = add i32 %2, 4, !dbg !1495
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1495
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !1495
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1495
  %27 = ptrtoint float addrspace(3)* %getElem4 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1495
  %add123.i.i = add i32 %2, 2, !dbg !1496
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1496
  %29 = ptrtoint float addrspace(3)* %getElem15 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !1496
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1496
  %31 = ptrtoint float addrspace(3)* %getElem4 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1496
  %add138.i.i = add i32 %2, 1, !dbg !1497
  %getElem17 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1497
  %33 = ptrtoint float addrspace(3)* %getElem17 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemReadHook(i64 %34, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem17, align 4, !dbg !1497
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1497
  %35 = ptrtoint float addrspace(3)* %getElem4 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemWriteHook(i64 %36, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1497
  br label %_Z11reduceBlockILj128EEvPVffj.exit.i, !dbg !1497

_Z11reduceBlockILj128EEvPVffj.exit.i:             ; preds = %if.then58.i.i, %if.end54.i.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1498
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit, !dbg !1498

if.then34.i:                                      ; preds = %_Z11reduceBlockILj128EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1499
  %idxprom39.i = zext i32 %3 to i64, !dbg !1499
  %getElem19 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1499
  %37 = ptrtoint float addrspace(1)* %getElem19 to i64
  call void @__curd__glmemWriteHook(i64 %37, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem19, align 4, !dbg !1499
  br label %_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit, !dbg !1499

_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit:         ; preds = %if.then34.i, %_Z11reduceBlockILj128EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1500
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1500

if.then:                                          ; preds = %_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1501
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1503

if.then8:                                         ; preds = %if.then
  %38 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1504
  %sub = add i32 %4, -1, !dbg !1507
  %cmp15 = icmp eq i32 %38, %sub, !dbg !1507
  %conv16 = zext i1 %cmp15 to i8, !dbg !1507
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb0EEvPKfPfjE6amLast, align 1, !dbg !1507
  br label %if.end, !dbg !1507

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1509
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj128ELb0EEvPKfPfjE6amLast, align 1, !dbg !1510
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1510
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1510

while.cond.preheader:                             ; preds = %if.end
  %cmp2336 = icmp ult i32 %2, %4, !dbg !1511
  br i1 %cmp2336, label %while.body, label %while.end, !dbg !1511

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.038 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.037 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %39 = sext i32 %i.037 to i64, !dbg !1513
  %getElem20 = getelementptr float addrspace(1)* %0, i64 %39, !dbg !1513
  %40 = ptrtoint float addrspace(1)* %getElem20 to i64
  call void @__curd__glmemReadHook(i64 %40, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem20, align 4, !dbg !1513
  %add = fadd float %mySum.038, %tmp27, !dbg !1513
  %add30 = add i32 %i.037, 128, !dbg !1515
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1511
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1511

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem21 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1516
  %41 = ptrtoint float addrspace(3)* %getElem21 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem21, align 4, !dbg !1516
  tail call void @llvm.cuda.syncthreads(), !dbg !1518
  call void @__curd__barrierHook() #1
  br i1 %cmp39.i.i, label %if.then40.i, label %if.end54.i, !dbg !1519

if.then40.i:                                      ; preds = %while.end
  %add44.i = add i32 %2, 64, !dbg !1520
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add44.i, !dbg !1520
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp47.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1520
  %add48.i = fadd float %mySum.0.lcssa, %tmp47.i, !dbg !1520
  %45 = ptrtoint float addrspace(3)* %getElem21 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 66, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add48.i, float addrspace(3)* %getElem21, align 4, !dbg !1520
  br label %if.end54.i, !dbg !1520

if.end54.i:                                       ; preds = %if.then40.i, %while.end
  %mySum.addr.4.i = phi float [ %add48.i, %if.then40.i ], [ %mySum.0.lcssa, %while.end ], !dbg !1521
  tail call void @llvm.cuda.syncthreads(), !dbg !1521
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj128EEvPVffj.exit, !dbg !1522

if.then58.i:                                      ; preds = %if.end54.i
  %add63.i = add i32 %2, 32, !dbg !1523
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !1523
  %47 = ptrtoint float addrspace(3)* %getElem24 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !1523
  %add67.i = fadd float %mySum.addr.4.i, %tmp66.i, !dbg !1523
  %49 = ptrtoint float addrspace(3)* %getElem21 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem21, align 4, !dbg !1523
  %add78.i = add i32 %2, 16, !dbg !1524
  %getElem26 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1524
  %51 = ptrtoint float addrspace(3)* %getElem26 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem26, align 4, !dbg !1524
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !1524
  %53 = ptrtoint float addrspace(3)* %getElem21 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem21, align 4, !dbg !1524
  %add93.i = add i32 %2, 8, !dbg !1525
  %getElem28 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1525
  %55 = ptrtoint float addrspace(3)* %getElem28 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem28, align 4, !dbg !1525
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1525
  %57 = ptrtoint float addrspace(3)* %getElem21 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem21, align 4, !dbg !1525
  %add108.i = add i32 %2, 4, !dbg !1526
  %getElem30 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1526
  %59 = ptrtoint float addrspace(3)* %getElem30 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem30, align 4, !dbg !1526
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1526
  %61 = ptrtoint float addrspace(3)* %getElem21 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem21, align 4, !dbg !1526
  %add123.i = add i32 %2, 2, !dbg !1527
  %getElem32 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1527
  %63 = ptrtoint float addrspace(3)* %getElem32 to i32
  %64 = zext i32 %63 to i64
  call void @__curd__shmemReadHook(i64 %64, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem32, align 4, !dbg !1527
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1527
  %65 = ptrtoint float addrspace(3)* %getElem21 to i32
  %66 = zext i32 %65 to i64
  call void @__curd__shmemWriteHook(i64 %66, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem21, align 4, !dbg !1527
  %add138.i = add i32 %2, 1, !dbg !1528
  %getElem34 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1528
  %67 = ptrtoint float addrspace(3)* %getElem34 to i32
  %68 = zext i32 %67 to i64
  call void @__curd__shmemReadHook(i64 %68, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem34, align 4, !dbg !1528
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1528
  %69 = ptrtoint float addrspace(3)* %getElem21 to i32
  %70 = zext i32 %69 to i64
  call void @__curd__shmemWriteHook(i64 %70, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem21, align 4, !dbg !1528
  br label %_Z11reduceBlockILj128EEvPVffj.exit, !dbg !1528

_Z11reduceBlockILj128EEvPVffj.exit:               ; preds = %if.then58.i, %if.end54.i
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1529

if.then36:                                        ; preds = %_Z11reduceBlockILj128EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1530
  %71 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %71, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1530
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1532
  br label %if.end42, !dbg !1532

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj128EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj128ELb0EEvPKfPfj.exit
  ret void, !dbg !1533
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj64ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1534
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1534
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1534
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1537
  %mul.i = shl i32 %3, 7, !dbg !1537
  %add.i = add i32 %mul.i, %2, !dbg !1537
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1538
  %mul7.i = shl i32 %4, 7, !dbg !1538
  %cmp.i35 = icmp ult i32 %add.i, %n, !dbg !1539
  br i1 %cmp.i35, label %while.body.i, label %while.end.i, !dbg !1539

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i37 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i36 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i36 to i64, !dbg !1540
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1540
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1540
  %add14.i = fadd float %mySum.0.i37, %tmp12.i, !dbg !1540
  %add16.i = add i32 %i.0.i36, 64, !dbg !1541
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1541
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1541

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1542
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1542
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1542
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1542
  br label %if.end.i, !dbg !1542

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1543
  %add29.i = add i32 %i.0.i36, %mul7.i, !dbg !1543
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1539
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1539

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1544
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1544
  tail call void @llvm.cuda.syncthreads(), !dbg !1546
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1547
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !1547

if.then58.i.i:                                    ; preds = %while.end.i
  %add63.i.i = add i32 %2, 32, !dbg !1548
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add63.i.i, !dbg !1548
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1548
  %add67.i.i = fadd float %mySum.0.i.lcssa, %tmp66.i.i, !dbg !1548
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1548
  %add78.i.i = add i32 %2, 16, !dbg !1549
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !1549
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1549
  %add82.i.i = fadd float %add67.i.i, %tmp81.i.i, !dbg !1549
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1549
  %add93.i.i = add i32 %2, 8, !dbg !1550
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1550
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1550
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !1550
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1550
  %add108.i.i = add i32 %2, 4, !dbg !1551
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1551
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !1551
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1551
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1551
  %add123.i.i = add i32 %2, 2, !dbg !1552
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1552
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !1552
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1552
  %27 = ptrtoint float addrspace(3)* %getElem4 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1552
  %add138.i.i = add i32 %2, 1, !dbg !1553
  %getElem15 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1553
  %29 = ptrtoint float addrspace(3)* %getElem15 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemReadHook(i64 %30, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem15, align 4, !dbg !1553
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1553
  %31 = ptrtoint float addrspace(3)* %getElem4 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemWriteHook(i64 %32, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1553
  br label %_Z11reduceBlockILj64EEvPVffj.exit.i, !dbg !1553

_Z11reduceBlockILj64EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1554
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit, !dbg !1554

if.then34.i:                                      ; preds = %_Z11reduceBlockILj64EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1555
  %idxprom39.i = zext i32 %3 to i64, !dbg !1555
  %getElem17 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1555
  %33 = ptrtoint float addrspace(1)* %getElem17 to i64
  call void @__curd__glmemWriteHook(i64 %33, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem17, align 4, !dbg !1555
  br label %_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit, !dbg !1555

_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit:          ; preds = %if.then34.i, %_Z11reduceBlockILj64EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1556
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1556

if.then:                                          ; preds = %_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1557
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1559

if.then8:                                         ; preds = %if.then
  %34 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1560
  %sub = add i32 %4, -1, !dbg !1563
  %cmp15 = icmp eq i32 %34, %sub, !dbg !1563
  %conv16 = zext i1 %cmp15 to i8, !dbg !1563
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb0EEvPKfPfjE6amLast, align 1, !dbg !1563
  br label %if.end, !dbg !1563

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1565
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj64ELb0EEvPKfPfjE6amLast, align 1, !dbg !1566
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1566
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1566

while.cond.preheader:                             ; preds = %if.end
  %cmp2332 = icmp ult i32 %2, %4, !dbg !1567
  br i1 %cmp2332, label %while.body, label %while.end, !dbg !1567

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.034 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.033 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %35 = sext i32 %i.033 to i64, !dbg !1569
  %getElem18 = getelementptr float addrspace(1)* %0, i64 %35, !dbg !1569
  %36 = ptrtoint float addrspace(1)* %getElem18 to i64
  call void @__curd__glmemReadHook(i64 %36, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem18, align 4, !dbg !1569
  %add = fadd float %mySum.034, %tmp27, !dbg !1569
  %add30 = add i32 %i.033, 64, !dbg !1571
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1567
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1567

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem19 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1572
  %37 = ptrtoint float addrspace(3)* %getElem19 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem19, align 4, !dbg !1572
  tail call void @llvm.cuda.syncthreads(), !dbg !1574
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj64EEvPVffj.exit, !dbg !1575

if.then58.i:                                      ; preds = %while.end
  %add63.i = add i32 %2, 32, !dbg !1576
  %getElem20 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add63.i, !dbg !1576
  %39 = ptrtoint float addrspace(3)* %getElem20 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemReadHook(i64 %40, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp66.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1576
  %add67.i = fadd float %mySum.0.lcssa, %tmp66.i, !dbg !1576
  %41 = ptrtoint float addrspace(3)* %getElem19 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 76, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add67.i, float addrspace(3)* %getElem19, align 4, !dbg !1576
  %add78.i = add i32 %2, 16, !dbg !1577
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1577
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1577
  %add82.i = fadd float %add67.i, %tmp81.i, !dbg !1577
  %45 = ptrtoint float addrspace(3)* %getElem19 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem19, align 4, !dbg !1577
  %add93.i = add i32 %2, 8, !dbg !1578
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1578
  %47 = ptrtoint float addrspace(3)* %getElem24 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !1578
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1578
  %49 = ptrtoint float addrspace(3)* %getElem19 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem19, align 4, !dbg !1578
  %add108.i = add i32 %2, 4, !dbg !1579
  %getElem26 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1579
  %51 = ptrtoint float addrspace(3)* %getElem26 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem26, align 4, !dbg !1579
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1579
  %53 = ptrtoint float addrspace(3)* %getElem19 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem19, align 4, !dbg !1579
  %add123.i = add i32 %2, 2, !dbg !1580
  %getElem28 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1580
  %55 = ptrtoint float addrspace(3)* %getElem28 to i32
  %56 = zext i32 %55 to i64
  call void @__curd__shmemReadHook(i64 %56, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem28, align 4, !dbg !1580
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1580
  %57 = ptrtoint float addrspace(3)* %getElem19 to i32
  %58 = zext i32 %57 to i64
  call void @__curd__shmemWriteHook(i64 %58, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem19, align 4, !dbg !1580
  %add138.i = add i32 %2, 1, !dbg !1581
  %getElem30 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1581
  %59 = ptrtoint float addrspace(3)* %getElem30 to i32
  %60 = zext i32 %59 to i64
  call void @__curd__shmemReadHook(i64 %60, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem30, align 4, !dbg !1581
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1581
  %61 = ptrtoint float addrspace(3)* %getElem19 to i32
  %62 = zext i32 %61 to i64
  call void @__curd__shmemWriteHook(i64 %62, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem19, align 4, !dbg !1581
  br label %_Z11reduceBlockILj64EEvPVffj.exit, !dbg !1581

_Z11reduceBlockILj64EEvPVffj.exit:                ; preds = %if.then58.i, %while.end
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1582

if.then36:                                        ; preds = %_Z11reduceBlockILj64EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1583
  %63 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %63, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1583
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1585
  br label %if.end42, !dbg !1585

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj64EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj64ELb0EEvPKfPfj.exit
  ret void, !dbg !1586
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj32ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1587
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1587
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1587
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1590
  %mul.i = shl i32 %3, 6, !dbg !1590
  %add.i = add i32 %mul.i, %2, !dbg !1590
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1591
  %mul7.i = shl i32 %4, 6, !dbg !1591
  %cmp.i31 = icmp ult i32 %add.i, %n, !dbg !1592
  br i1 %cmp.i31, label %while.body.i, label %while.end.i, !dbg !1592

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i33 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i32 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i32 to i64, !dbg !1593
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1593
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1593
  %add14.i = fadd float %mySum.0.i33, %tmp12.i, !dbg !1593
  %add16.i = add i32 %i.0.i32, 32, !dbg !1594
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1594
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1594

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1595
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1595
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1595
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1595
  br label %if.end.i, !dbg !1595

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1596
  %add29.i = add i32 %i.0.i32, %mul7.i, !dbg !1596
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1592
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1592

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1597
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1597
  tail call void @llvm.cuda.syncthreads(), !dbg !1599
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1600
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !1600

if.then58.i.i:                                    ; preds = %while.end.i
  %add78.i.i = add i32 %2, 16, !dbg !1601
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add78.i.i, !dbg !1601
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1601
  %add82.i.i = fadd float %mySum.0.i.lcssa, %tmp81.i.i, !dbg !1601
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1601
  %add93.i.i = add i32 %2, 8, !dbg !1602
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1602
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1602
  %add97.i.i = fadd float %add82.i.i, %tmp96.i.i, !dbg !1602
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1602
  %add108.i.i = add i32 %2, 4, !dbg !1603
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1603
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1603
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1603
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1603
  %add123.i.i = add i32 %2, 2, !dbg !1604
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1604
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !1604
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1604
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1604
  %add138.i.i = add i32 %2, 1, !dbg !1605
  %getElem13 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1605
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemReadHook(i64 %26, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem13, align 4, !dbg !1605
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1605
  %27 = ptrtoint float addrspace(3)* %getElem4 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1605
  br label %_Z11reduceBlockILj32EEvPVffj.exit.i, !dbg !1605

_Z11reduceBlockILj32EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1606
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit, !dbg !1606

if.then34.i:                                      ; preds = %_Z11reduceBlockILj32EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1607
  %idxprom39.i = zext i32 %3 to i64, !dbg !1607
  %getElem15 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1607
  %29 = ptrtoint float addrspace(1)* %getElem15 to i64
  call void @__curd__glmemWriteHook(i64 %29, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem15, align 4, !dbg !1607
  br label %_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit, !dbg !1607

_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit:          ; preds = %if.then34.i, %_Z11reduceBlockILj32EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1608
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1608

if.then:                                          ; preds = %_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1609
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1611

if.then8:                                         ; preds = %if.then
  %30 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1612
  %sub = add i32 %4, -1, !dbg !1615
  %cmp15 = icmp eq i32 %30, %sub, !dbg !1615
  %conv16 = zext i1 %cmp15 to i8, !dbg !1615
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb0EEvPKfPfjE6amLast, align 1, !dbg !1615
  br label %if.end, !dbg !1615

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1617
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj32ELb0EEvPKfPfjE6amLast, align 1, !dbg !1618
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1618
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1618

while.cond.preheader:                             ; preds = %if.end
  %cmp2328 = icmp ult i32 %2, %4, !dbg !1619
  br i1 %cmp2328, label %while.body, label %while.end, !dbg !1619

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.030 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.029 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %31 = sext i32 %i.029 to i64, !dbg !1621
  %getElem16 = getelementptr float addrspace(1)* %0, i64 %31, !dbg !1621
  %32 = ptrtoint float addrspace(1)* %getElem16 to i64
  call void @__curd__glmemReadHook(i64 %32, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem16, align 4, !dbg !1621
  %add = fadd float %mySum.030, %tmp27, !dbg !1621
  %add30 = add i32 %i.029, 32, !dbg !1623
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1619
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1619

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem17 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1624
  %33 = ptrtoint float addrspace(3)* %getElem17 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemWriteHook(i64 %34, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem17, align 4, !dbg !1624
  tail call void @llvm.cuda.syncthreads(), !dbg !1626
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj32EEvPVffj.exit, !dbg !1627

if.then58.i:                                      ; preds = %while.end
  %add78.i = add i32 %2, 16, !dbg !1628
  %getElem18 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add78.i, !dbg !1628
  %35 = ptrtoint float addrspace(3)* %getElem18 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemReadHook(i64 %36, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp81.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1628
  %add82.i = fadd float %mySum.0.lcssa, %tmp81.i, !dbg !1628
  %37 = ptrtoint float addrspace(3)* %getElem17 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 81, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add82.i, float addrspace(3)* %getElem17, align 4, !dbg !1628
  %add93.i = add i32 %2, 8, !dbg !1629
  %getElem20 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1629
  %39 = ptrtoint float addrspace(3)* %getElem20 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemReadHook(i64 %40, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1629
  %add97.i = fadd float %add82.i, %tmp96.i, !dbg !1629
  %41 = ptrtoint float addrspace(3)* %getElem17 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem17, align 4, !dbg !1629
  %add108.i = add i32 %2, 4, !dbg !1630
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1630
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1630
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1630
  %45 = ptrtoint float addrspace(3)* %getElem17 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem17, align 4, !dbg !1630
  %add123.i = add i32 %2, 2, !dbg !1631
  %getElem24 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1631
  %47 = ptrtoint float addrspace(3)* %getElem24 to i32
  %48 = zext i32 %47 to i64
  call void @__curd__shmemReadHook(i64 %48, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem24, align 4, !dbg !1631
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1631
  %49 = ptrtoint float addrspace(3)* %getElem17 to i32
  %50 = zext i32 %49 to i64
  call void @__curd__shmemWriteHook(i64 %50, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem17, align 4, !dbg !1631
  %add138.i = add i32 %2, 1, !dbg !1632
  %getElem26 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1632
  %51 = ptrtoint float addrspace(3)* %getElem26 to i32
  %52 = zext i32 %51 to i64
  call void @__curd__shmemReadHook(i64 %52, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem26, align 4, !dbg !1632
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1632
  %53 = ptrtoint float addrspace(3)* %getElem17 to i32
  %54 = zext i32 %53 to i64
  call void @__curd__shmemWriteHook(i64 %54, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem17, align 4, !dbg !1632
  br label %_Z11reduceBlockILj32EEvPVffj.exit, !dbg !1632

_Z11reduceBlockILj32EEvPVffj.exit:                ; preds = %if.then58.i, %while.end
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1633

if.then36:                                        ; preds = %_Z11reduceBlockILj32EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1634
  %55 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %55, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1634
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1636
  br label %if.end42, !dbg !1636

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj32EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj32ELb0EEvPKfPfj.exit
  ret void, !dbg !1637
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj16ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1638
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1638
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1638
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1641
  %mul.i = shl i32 %3, 5, !dbg !1641
  %add.i = add i32 %mul.i, %2, !dbg !1641
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1642
  %mul7.i = shl i32 %4, 5, !dbg !1642
  %cmp.i27 = icmp ult i32 %add.i, %n, !dbg !1643
  br i1 %cmp.i27, label %while.body.i, label %while.end.i, !dbg !1643

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i29 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i28 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i28 to i64, !dbg !1644
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1644
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1644
  %add14.i = fadd float %mySum.0.i29, %tmp12.i, !dbg !1644
  %add16.i = add i32 %i.0.i28, 16, !dbg !1645
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1645
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1645

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1646
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1646
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1646
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1646
  br label %if.end.i, !dbg !1646

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1647
  %add29.i = add i32 %i.0.i28, %mul7.i, !dbg !1647
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1643
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1643

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1648
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1648
  tail call void @llvm.cuda.syncthreads(), !dbg !1650
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1651
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !1651

if.then58.i.i:                                    ; preds = %while.end.i
  %add93.i.i = add i32 %2, 8, !dbg !1652
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add93.i.i, !dbg !1652
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1652
  %add97.i.i = fadd float %mySum.0.i.lcssa, %tmp96.i.i, !dbg !1652
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1652
  %add108.i.i = add i32 %2, 4, !dbg !1653
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1653
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1653
  %add112.i.i = fadd float %add97.i.i, %tmp111.i.i, !dbg !1653
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1653
  %add123.i.i = add i32 %2, 2, !dbg !1654
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1654
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1654
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1654
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1654
  %add138.i.i = add i32 %2, 1, !dbg !1655
  %getElem11 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1655
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemReadHook(i64 %22, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem11, align 4, !dbg !1655
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1655
  %23 = ptrtoint float addrspace(3)* %getElem4 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemWriteHook(i64 %24, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1655
  br label %_Z11reduceBlockILj16EEvPVffj.exit.i, !dbg !1655

_Z11reduceBlockILj16EEvPVffj.exit.i:              ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1656
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit, !dbg !1656

if.then34.i:                                      ; preds = %_Z11reduceBlockILj16EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1657
  %idxprom39.i = zext i32 %3 to i64, !dbg !1657
  %getElem13 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1657
  %25 = ptrtoint float addrspace(1)* %getElem13 to i64
  call void @__curd__glmemWriteHook(i64 %25, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem13, align 4, !dbg !1657
  br label %_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit, !dbg !1657

_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit:          ; preds = %if.then34.i, %_Z11reduceBlockILj16EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1658
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1658

if.then:                                          ; preds = %_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1659
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1661

if.then8:                                         ; preds = %if.then
  %26 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1662
  %sub = add i32 %4, -1, !dbg !1665
  %cmp15 = icmp eq i32 %26, %sub, !dbg !1665
  %conv16 = zext i1 %cmp15 to i8, !dbg !1665
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb0EEvPKfPfjE6amLast, align 1, !dbg !1665
  br label %if.end, !dbg !1665

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1667
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj16ELb0EEvPKfPfjE6amLast, align 1, !dbg !1668
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1668
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1668

while.cond.preheader:                             ; preds = %if.end
  %cmp2324 = icmp ult i32 %2, %4, !dbg !1669
  br i1 %cmp2324, label %while.body, label %while.end, !dbg !1669

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.026 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.025 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %27 = sext i32 %i.025 to i64, !dbg !1671
  %getElem14 = getelementptr float addrspace(1)* %0, i64 %27, !dbg !1671
  %28 = ptrtoint float addrspace(1)* %getElem14 to i64
  call void @__curd__glmemReadHook(i64 %28, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem14, align 4, !dbg !1671
  %add = fadd float %mySum.026, %tmp27, !dbg !1671
  %add30 = add i32 %i.025, 16, !dbg !1673
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1669
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1669

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem15 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1674
  %29 = ptrtoint float addrspace(3)* %getElem15 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemWriteHook(i64 %30, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem15, align 4, !dbg !1674
  tail call void @llvm.cuda.syncthreads(), !dbg !1676
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj16EEvPVffj.exit, !dbg !1677

if.then58.i:                                      ; preds = %while.end
  %add93.i = add i32 %2, 8, !dbg !1678
  %getElem16 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add93.i, !dbg !1678
  %31 = ptrtoint float addrspace(3)* %getElem16 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemReadHook(i64 %32, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp96.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !1678
  %add97.i = fadd float %mySum.0.lcssa, %tmp96.i, !dbg !1678
  %33 = ptrtoint float addrspace(3)* %getElem15 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemWriteHook(i64 %34, i8 4, i32 86, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add97.i, float addrspace(3)* %getElem15, align 4, !dbg !1678
  %add108.i = add i32 %2, 4, !dbg !1679
  %getElem18 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1679
  %35 = ptrtoint float addrspace(3)* %getElem18 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemReadHook(i64 %36, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1679
  %add112.i = fadd float %add97.i, %tmp111.i, !dbg !1679
  %37 = ptrtoint float addrspace(3)* %getElem15 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem15, align 4, !dbg !1679
  %add123.i = add i32 %2, 2, !dbg !1680
  %getElem20 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1680
  %39 = ptrtoint float addrspace(3)* %getElem20 to i32
  %40 = zext i32 %39 to i64
  call void @__curd__shmemReadHook(i64 %40, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem20, align 4, !dbg !1680
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1680
  %41 = ptrtoint float addrspace(3)* %getElem15 to i32
  %42 = zext i32 %41 to i64
  call void @__curd__shmemWriteHook(i64 %42, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem15, align 4, !dbg !1680
  %add138.i = add i32 %2, 1, !dbg !1681
  %getElem22 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1681
  %43 = ptrtoint float addrspace(3)* %getElem22 to i32
  %44 = zext i32 %43 to i64
  call void @__curd__shmemReadHook(i64 %44, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem22, align 4, !dbg !1681
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1681
  %45 = ptrtoint float addrspace(3)* %getElem15 to i32
  %46 = zext i32 %45 to i64
  call void @__curd__shmemWriteHook(i64 %46, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem15, align 4, !dbg !1681
  br label %_Z11reduceBlockILj16EEvPVffj.exit, !dbg !1681

_Z11reduceBlockILj16EEvPVffj.exit:                ; preds = %if.then58.i, %while.end
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1682

if.then36:                                        ; preds = %_Z11reduceBlockILj16EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1683
  %47 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %47, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1683
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1685
  br label %if.end42, !dbg !1685

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj16EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj16ELb0EEvPKfPfj.exit
  ret void, !dbg !1686
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj8ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1687
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1687
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1687
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1690
  %mul.i = shl i32 %3, 4, !dbg !1690
  %add.i = add i32 %mul.i, %2, !dbg !1690
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1691
  %mul7.i = shl i32 %4, 4, !dbg !1691
  %cmp.i23 = icmp ult i32 %add.i, %n, !dbg !1692
  br i1 %cmp.i23, label %while.body.i, label %while.end.i, !dbg !1692

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i25 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i24 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i24 to i64, !dbg !1693
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1693
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1693
  %add14.i = fadd float %mySum.0.i25, %tmp12.i, !dbg !1693
  %add16.i = add i32 %i.0.i24, 8, !dbg !1694
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1694
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1694

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1695
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1695
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1695
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1695
  br label %if.end.i, !dbg !1695

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1696
  %add29.i = add i32 %i.0.i24, %mul7.i, !dbg !1696
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1692
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1692

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1697
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1697
  tail call void @llvm.cuda.syncthreads(), !dbg !1699
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1700
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !1700

if.then58.i.i:                                    ; preds = %while.end.i
  %add108.i.i = add i32 %2, 4, !dbg !1701
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add108.i.i, !dbg !1701
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1701
  %add112.i.i = fadd float %mySum.0.i.lcssa, %tmp111.i.i, !dbg !1701
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1701
  %add123.i.i = add i32 %2, 2, !dbg !1702
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1702
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1702
  %add127.i.i = fadd float %add112.i.i, %tmp126.i.i, !dbg !1702
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1702
  %add138.i.i = add i32 %2, 1, !dbg !1703
  %getElem9 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1703
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemReadHook(i64 %18, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem9, align 4, !dbg !1703
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1703
  %19 = ptrtoint float addrspace(3)* %getElem4 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemWriteHook(i64 %20, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1703
  br label %_Z11reduceBlockILj8EEvPVffj.exit.i, !dbg !1703

_Z11reduceBlockILj8EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1704
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit, !dbg !1704

if.then34.i:                                      ; preds = %_Z11reduceBlockILj8EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1705
  %idxprom39.i = zext i32 %3 to i64, !dbg !1705
  %getElem11 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1705
  %21 = ptrtoint float addrspace(1)* %getElem11 to i64
  call void @__curd__glmemWriteHook(i64 %21, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem11, align 4, !dbg !1705
  br label %_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit, !dbg !1705

_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %_Z11reduceBlockILj8EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1706
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1706

if.then:                                          ; preds = %_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1707
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1709

if.then8:                                         ; preds = %if.then
  %22 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1710
  %sub = add i32 %4, -1, !dbg !1713
  %cmp15 = icmp eq i32 %22, %sub, !dbg !1713
  %conv16 = zext i1 %cmp15 to i8, !dbg !1713
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb0EEvPKfPfjE6amLast, align 1, !dbg !1713
  br label %if.end, !dbg !1713

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1715
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj8ELb0EEvPKfPfjE6amLast, align 1, !dbg !1716
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1716
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1716

while.cond.preheader:                             ; preds = %if.end
  %cmp2320 = icmp ult i32 %2, %4, !dbg !1717
  br i1 %cmp2320, label %while.body, label %while.end, !dbg !1717

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.022 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.021 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %23 = sext i32 %i.021 to i64, !dbg !1719
  %getElem12 = getelementptr float addrspace(1)* %0, i64 %23, !dbg !1719
  %24 = ptrtoint float addrspace(1)* %getElem12 to i64
  call void @__curd__glmemReadHook(i64 %24, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem12, align 4, !dbg !1719
  %add = fadd float %mySum.022, %tmp27, !dbg !1719
  %add30 = add i32 %i.021, 8, !dbg !1721
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1717
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1717

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem13 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1722
  %25 = ptrtoint float addrspace(3)* %getElem13 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemWriteHook(i64 %26, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem13, align 4, !dbg !1722
  tail call void @llvm.cuda.syncthreads(), !dbg !1724
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj8EEvPVffj.exit, !dbg !1725

if.then58.i:                                      ; preds = %while.end
  %add108.i = add i32 %2, 4, !dbg !1726
  %getElem14 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add108.i, !dbg !1726
  %27 = ptrtoint float addrspace(3)* %getElem14 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemReadHook(i64 %28, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp111.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !1726
  %add112.i = fadd float %mySum.0.lcssa, %tmp111.i, !dbg !1726
  %29 = ptrtoint float addrspace(3)* %getElem13 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemWriteHook(i64 %30, i8 4, i32 91, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add112.i, float addrspace(3)* %getElem13, align 4, !dbg !1726
  %add123.i = add i32 %2, 2, !dbg !1727
  %getElem16 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1727
  %31 = ptrtoint float addrspace(3)* %getElem16 to i32
  %32 = zext i32 %31 to i64
  call void @__curd__shmemReadHook(i64 %32, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem16, align 4, !dbg !1727
  %add127.i = fadd float %add112.i, %tmp126.i, !dbg !1727
  %33 = ptrtoint float addrspace(3)* %getElem13 to i32
  %34 = zext i32 %33 to i64
  call void @__curd__shmemWriteHook(i64 %34, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem13, align 4, !dbg !1727
  %add138.i = add i32 %2, 1, !dbg !1728
  %getElem18 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1728
  %35 = ptrtoint float addrspace(3)* %getElem18 to i32
  %36 = zext i32 %35 to i64
  call void @__curd__shmemReadHook(i64 %36, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem18, align 4, !dbg !1728
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1728
  %37 = ptrtoint float addrspace(3)* %getElem13 to i32
  %38 = zext i32 %37 to i64
  call void @__curd__shmemWriteHook(i64 %38, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem13, align 4, !dbg !1728
  br label %_Z11reduceBlockILj8EEvPVffj.exit, !dbg !1728

_Z11reduceBlockILj8EEvPVffj.exit:                 ; preds = %if.then58.i, %while.end
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1729

if.then36:                                        ; preds = %_Z11reduceBlockILj8EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1730
  %39 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %39, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1730
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1732
  br label %if.end42, !dbg !1732

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj8EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj8ELb0EEvPKfPfj.exit
  ret void, !dbg !1733
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj4ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1734
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1734
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1734
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1737
  %mul.i = shl i32 %3, 3, !dbg !1737
  %add.i = add i32 %mul.i, %2, !dbg !1737
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1738
  %mul7.i = shl i32 %4, 3, !dbg !1738
  %cmp.i19 = icmp ult i32 %add.i, %n, !dbg !1739
  br i1 %cmp.i19, label %while.body.i, label %while.end.i, !dbg !1739

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i21 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i20 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i20 to i64, !dbg !1740
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1740
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1740
  %add14.i = fadd float %mySum.0.i21, %tmp12.i, !dbg !1740
  %add16.i = add i32 %i.0.i20, 4, !dbg !1741
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1741
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1741

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1742
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1742
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1742
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1742
  br label %if.end.i, !dbg !1742

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1743
  %add29.i = add i32 %i.0.i20, %mul7.i, !dbg !1743
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1739
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1739

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1744
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1744
  tail call void @llvm.cuda.syncthreads(), !dbg !1746
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1747
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !1747

if.then58.i.i:                                    ; preds = %while.end.i
  %add123.i.i = add i32 %2, 2, !dbg !1748
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add123.i.i, !dbg !1748
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1748
  %add127.i.i = fadd float %mySum.0.i.lcssa, %tmp126.i.i, !dbg !1748
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1748
  %add138.i.i = add i32 %2, 1, !dbg !1749
  %getElem7 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1749
  %13 = ptrtoint float addrspace(3)* %getElem7 to i32
  %14 = zext i32 %13 to i64
  call void @__curd__shmemReadHook(i64 %14, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem7, align 4, !dbg !1749
  %add142.i.i = fadd float %add127.i.i, %tmp141.i.i, !dbg !1749
  %15 = ptrtoint float addrspace(3)* %getElem4 to i32
  %16 = zext i32 %15 to i64
  call void @__curd__shmemWriteHook(i64 %16, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1749
  br label %_Z11reduceBlockILj4EEvPVffj.exit.i, !dbg !1749

_Z11reduceBlockILj4EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1750
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit, !dbg !1750

if.then34.i:                                      ; preds = %_Z11reduceBlockILj4EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1751
  %idxprom39.i = zext i32 %3 to i64, !dbg !1751
  %getElem9 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1751
  %17 = ptrtoint float addrspace(1)* %getElem9 to i64
  call void @__curd__glmemWriteHook(i64 %17, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem9, align 4, !dbg !1751
  br label %_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit, !dbg !1751

_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %_Z11reduceBlockILj4EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1752
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1752

if.then:                                          ; preds = %_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1753
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1755

if.then8:                                         ; preds = %if.then
  %18 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1756
  %sub = add i32 %4, -1, !dbg !1759
  %cmp15 = icmp eq i32 %18, %sub, !dbg !1759
  %conv16 = zext i1 %cmp15 to i8, !dbg !1759
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb0EEvPKfPfjE6amLast, align 1, !dbg !1759
  br label %if.end, !dbg !1759

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1761
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj4ELb0EEvPKfPfjE6amLast, align 1, !dbg !1762
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1762
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1762

while.cond.preheader:                             ; preds = %if.end
  %cmp2316 = icmp ult i32 %2, %4, !dbg !1763
  br i1 %cmp2316, label %while.body, label %while.end, !dbg !1763

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.018 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.017 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %19 = sext i32 %i.017 to i64, !dbg !1765
  %getElem10 = getelementptr float addrspace(1)* %0, i64 %19, !dbg !1765
  %20 = ptrtoint float addrspace(1)* %getElem10 to i64
  call void @__curd__glmemReadHook(i64 %20, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem10, align 4, !dbg !1765
  %add = fadd float %mySum.018, %tmp27, !dbg !1765
  %add30 = add i32 %i.017, 4, !dbg !1767
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1763
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1763

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem11 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1768
  %21 = ptrtoint float addrspace(3)* %getElem11 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemWriteHook(i64 %22, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem11, align 4, !dbg !1768
  tail call void @llvm.cuda.syncthreads(), !dbg !1770
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj4EEvPVffj.exit, !dbg !1771

if.then58.i:                                      ; preds = %while.end
  %add123.i = add i32 %2, 2, !dbg !1772
  %getElem12 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add123.i, !dbg !1772
  %23 = ptrtoint float addrspace(3)* %getElem12 to i32
  %24 = zext i32 %23 to i64
  call void @__curd__shmemReadHook(i64 %24, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp126.i = load volatile float addrspace(3)* %getElem12, align 4, !dbg !1772
  %add127.i = fadd float %mySum.0.lcssa, %tmp126.i, !dbg !1772
  %25 = ptrtoint float addrspace(3)* %getElem11 to i32
  %26 = zext i32 %25 to i64
  call void @__curd__shmemWriteHook(i64 %26, i8 4, i32 96, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add127.i, float addrspace(3)* %getElem11, align 4, !dbg !1772
  %add138.i = add i32 %2, 1, !dbg !1773
  %getElem14 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1773
  %27 = ptrtoint float addrspace(3)* %getElem14 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemReadHook(i64 %28, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem14, align 4, !dbg !1773
  %add142.i = fadd float %add127.i, %tmp141.i, !dbg !1773
  %29 = ptrtoint float addrspace(3)* %getElem11 to i32
  %30 = zext i32 %29 to i64
  call void @__curd__shmemWriteHook(i64 %30, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem11, align 4, !dbg !1773
  br label %_Z11reduceBlockILj4EEvPVffj.exit, !dbg !1773

_Z11reduceBlockILj4EEvPVffj.exit:                 ; preds = %if.then58.i, %while.end
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1774

if.then36:                                        ; preds = %_Z11reduceBlockILj4EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1775
  %31 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %31, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1775
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1777
  br label %if.end42, !dbg !1777

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj4EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj4ELb0EEvPKfPfj.exit
  ret void, !dbg !1778
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj2ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1779
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1779
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1779
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1782
  %mul.i = shl i32 %3, 2, !dbg !1782
  %add.i = add i32 %mul.i, %2, !dbg !1782
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1783
  %mul7.i = shl i32 %4, 2, !dbg !1783
  %cmp.i15 = icmp ult i32 %add.i, %n, !dbg !1784
  br i1 %cmp.i15, label %while.body.i, label %while.end.i, !dbg !1784

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i17 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i16 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i16 to i64, !dbg !1785
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1785
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1785
  %add14.i = fadd float %mySum.0.i17, %tmp12.i, !dbg !1785
  %add16.i = add i32 %i.0.i16, 2, !dbg !1786
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1786
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1786

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1787
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1787
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1787
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1787
  br label %if.end.i, !dbg !1787

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1788
  %add29.i = add i32 %i.0.i16, %mul7.i, !dbg !1788
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1784
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1784

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1789
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1789
  tail call void @llvm.cuda.syncthreads(), !dbg !1791
  call void @__curd__barrierHook() #1
  %cmp57.i.i = icmp ult i32 %2, 32, !dbg !1792
  br i1 %cmp57.i.i, label %if.then58.i.i, label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !1792

if.then58.i.i:                                    ; preds = %while.end.i
  %add138.i.i = add i32 %2, 1, !dbg !1793
  %getElem5 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %add138.i.i, !dbg !1793
  %9 = ptrtoint float addrspace(3)* %getElem5 to i32
  %10 = zext i32 %9 to i64
  call void @__curd__shmemReadHook(i64 %10, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i.i = load volatile float addrspace(3)* %getElem5, align 4, !dbg !1793
  %add142.i.i = fadd float %mySum.0.i.lcssa, %tmp141.i.i, !dbg !1793
  %11 = ptrtoint float addrspace(3)* %getElem4 to i32
  %12 = zext i32 %11 to i64
  call void @__curd__shmemWriteHook(i64 %12, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i.i, float addrspace(3)* %getElem4, align 4, !dbg !1793
  br label %_Z11reduceBlockILj2EEvPVffj.exit.i, !dbg !1793

_Z11reduceBlockILj2EEvPVffj.exit.i:               ; preds = %if.then58.i.i, %while.end.i
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1794
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit, !dbg !1794

if.then34.i:                                      ; preds = %_Z11reduceBlockILj2EEvPVffj.exit.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1795
  %idxprom39.i = zext i32 %3 to i64, !dbg !1795
  %getElem7 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1795
  %13 = ptrtoint float addrspace(1)* %getElem7 to i64
  call void @__curd__glmemWriteHook(i64 %13, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem7, align 4, !dbg !1795
  br label %_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit, !dbg !1795

_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %_Z11reduceBlockILj2EEvPVffj.exit.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1796
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1796

if.then:                                          ; preds = %_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1797
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1799

if.then8:                                         ; preds = %if.then
  %14 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1800
  %sub = add i32 %4, -1, !dbg !1803
  %cmp15 = icmp eq i32 %14, %sub, !dbg !1803
  %conv16 = zext i1 %cmp15 to i8, !dbg !1803
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb0EEvPKfPfjE6amLast, align 1, !dbg !1803
  br label %if.end, !dbg !1803

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1805
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj2ELb0EEvPKfPfjE6amLast, align 1, !dbg !1806
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1806
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1806

while.cond.preheader:                             ; preds = %if.end
  %cmp2312 = icmp ult i32 %2, %4, !dbg !1807
  br i1 %cmp2312, label %while.body, label %while.end, !dbg !1807

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %mySum.014 = phi float [ %add, %while.body ], [ 0.000000e+00, %while.cond.preheader ]
  %i.013 = phi i32 [ %add30, %while.body ], [ %2, %while.cond.preheader ]
  %15 = sext i32 %i.013 to i64, !dbg !1809
  %getElem8 = getelementptr float addrspace(1)* %0, i64 %15, !dbg !1809
  %16 = ptrtoint float addrspace(1)* %getElem8 to i64
  call void @__curd__glmemReadHook(i64 %16, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem8, align 4, !dbg !1809
  %add = fadd float %mySum.014, %tmp27, !dbg !1809
  %add30 = add i32 %i.013, 2, !dbg !1811
  %cmp23 = icmp ult i32 %add30, %4, !dbg !1807
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1807

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %add, %while.body ]
  %getElem9 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1812
  %17 = ptrtoint float addrspace(3)* %getElem9 to i32
  %18 = zext i32 %17 to i64
  call void @__curd__shmemWriteHook(i64 %18, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem9, align 4, !dbg !1812
  tail call void @llvm.cuda.syncthreads(), !dbg !1814
  call void @__curd__barrierHook() #1
  br i1 %cmp57.i.i, label %if.then58.i, label %_Z11reduceBlockILj2EEvPVffj.exit, !dbg !1815

if.then58.i:                                      ; preds = %while.end
  %add138.i = add i32 %2, 1, !dbg !1816
  %getElem10 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %add138.i, !dbg !1816
  %19 = ptrtoint float addrspace(3)* %getElem10 to i32
  %20 = zext i32 %19 to i64
  call void @__curd__shmemReadHook(i64 %20, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp141.i = load volatile float addrspace(3)* %getElem10, align 4, !dbg !1816
  %add142.i = fadd float %mySum.0.lcssa, %tmp141.i, !dbg !1816
  %21 = ptrtoint float addrspace(3)* %getElem9 to i32
  %22 = zext i32 %21 to i64
  call void @__curd__shmemWriteHook(i64 %22, i8 4, i32 101, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %add142.i, float addrspace(3)* %getElem9, align 4, !dbg !1816
  br label %_Z11reduceBlockILj2EEvPVffj.exit, !dbg !1816

_Z11reduceBlockILj2EEvPVffj.exit:                 ; preds = %if.then58.i, %while.end
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1817

if.then36:                                        ; preds = %_Z11reduceBlockILj2EEvPVffj.exit
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1818
  %23 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %23, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1818
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1820
  br label %if.end42, !dbg !1820

if.end42:                                         ; preds = %if.then36, %_Z11reduceBlockILj2EEvPVffj.exit, %if.end, %_Z12reduceBlocksILj2ELb0EEvPKfPfj.exit
  ret void, !dbg !1821
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr void @_Z16reduceSinglePassILj1ELb0EEvPKfPfj(float* nocapture %g_idata, float* nocapture %g_odata, i32 %n) #2 {
entry:
  %0 = addrspacecast float* %g_odata to float addrspace(1)*, !dbg !1822
  %1 = addrspacecast float* %g_idata to float addrspace(1)*, !dbg !1822
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !dbg !1822
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !dbg !1825
  %mul.i = shl i32 %3, 1, !dbg !1825
  %add.i = add i32 %mul.i, %2, !dbg !1825
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x(), !dbg !1826
  %mul7.i = shl i32 %4, 1, !dbg !1826
  %cmp.i11 = icmp ult i32 %add.i, %n, !dbg !1827
  br i1 %cmp.i11, label %while.body.i, label %while.end.i, !dbg !1827

while.body.i:                                     ; preds = %if.end.i, %entry
  %mySum.0.i13 = phi float [ %mySum.1.i, %if.end.i ], [ 0.000000e+00, %entry ]
  %i.0.i12 = phi i32 [ %add29.i, %if.end.i ], [ %add.i, %entry ]
  %idxprom.i = zext i32 %i.0.i12 to i64, !dbg !1828
  %getElem = getelementptr float addrspace(1)* %1, i64 %idxprom.i, !dbg !1828
  %5 = ptrtoint float addrspace(1)* %getElem to i64
  call void @__curd__glmemReadHook(i64 %5, i8 4, i32 124, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp12.i = load float addrspace(1)* %getElem, align 4, !dbg !1828
  %add14.i = fadd float %mySum.0.i13, %tmp12.i, !dbg !1828
  %add16.i = add i32 %i.0.i12, 1, !dbg !1829
  %cmp18.i = icmp ult i32 %add16.i, %n, !dbg !1829
  br i1 %cmp18.i, label %if.then.i, label %if.end.i, !dbg !1829

if.then.i:                                        ; preds = %while.body.i
  %idxprom22.i = zext i32 %add16.i to i64, !dbg !1830
  %getElem3 = getelementptr float addrspace(1)* %1, i64 %idxprom22.i, !dbg !1830
  %6 = ptrtoint float addrspace(1)* %getElem3 to i64
  call void @__curd__glmemReadHook(i64 %6, i8 4, i32 128, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp24.i = load float addrspace(1)* %getElem3, align 4, !dbg !1830
  %add26.i = fadd float %add14.i, %tmp24.i, !dbg !1830
  br label %if.end.i, !dbg !1830

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %mySum.1.i = phi float [ %add26.i, %if.then.i ], [ %add14.i, %while.body.i ], !dbg !1831
  %add29.i = add i32 %i.0.i12, %mul7.i, !dbg !1831
  %cmp.i = icmp ult i32 %add29.i, %n, !dbg !1827
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1827

while.end.i:                                      ; preds = %if.end.i, %entry
  %mySum.0.i.lcssa = phi float [ 0.000000e+00, %entry ], [ %mySum.1.i, %if.end.i ]
  %getElem4 = getelementptr [0 x float] addrspace(3)* @sdata, i32 0, i32 %2, !dbg !1832
  %7 = ptrtoint float addrspace(3)* %getElem4 to i32
  %8 = zext i32 %7 to i64
  call void @__curd__shmemWriteHook(i64 %8, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.i.lcssa, float addrspace(3)* %getElem4, align 4, !dbg !1832
  tail call void @llvm.cuda.syncthreads(), !dbg !1834
  call void @__curd__barrierHook() #1
  %cmp33.i = icmp eq i32 %2, 0, !dbg !1835
  br i1 %cmp33.i, label %if.then34.i, label %_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit, !dbg !1835

if.then34.i:                                      ; preds = %while.end.i
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @sdata to i64), i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp35.i = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @sdata, i32 0, i32 0), align 4, !dbg !1836
  %idxprom39.i = zext i32 %3 to i64, !dbg !1836
  %getElem5 = getelementptr float addrspace(1)* %0, i64 %idxprom39.i, !dbg !1836
  %9 = ptrtoint float addrspace(1)* %getElem5 to i64
  call void @__curd__glmemWriteHook(i64 %9, i8 4, i32 137, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp35.i, float addrspace(1)* %getElem5, align 4, !dbg !1836
  br label %_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit, !dbg !1836

_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit:           ; preds = %if.then34.i, %while.end.i
  %cmp = icmp ugt i32 %4, 1, !dbg !1837
  br i1 %cmp, label %if.then, label %if.end42, !dbg !1837

if.then:                                          ; preds = %_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit
  tail call void @llvm.nvvm.membar.gl(), !dbg !1838
  br i1 %cmp33.i, label %if.then8, label %if.end, !dbg !1840

if.then8:                                         ; preds = %if.then
  %10 = tail call i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* @retirementCount, i32 %4), !dbg !1841
  %sub = add i32 %4, -1, !dbg !1844
  %cmp15 = icmp eq i32 %10, %sub, !dbg !1844
  %conv16 = zext i1 %cmp15 to i8, !dbg !1844
  call void @__curd__shmemWriteHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 199, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i8 %conv16, i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb0EEvPKfPfjE6amLast, align 1, !dbg !1844
  br label %if.end, !dbg !1844

if.end:                                           ; preds = %if.then8, %if.then
  tail call void @llvm.cuda.syncthreads(), !dbg !1846
  call void @__curd__barrierHook() #1
  call void @__curd__shmemReadHook(i64 ptrtoint (i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb0EEvPKfPfjE6amLast to i64), i8 1, i32 205, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp17 = load i8 addrspace(3)* @_ZZ16reduceSinglePassILj1ELb0EEvPKfPfjE6amLast, align 1, !dbg !1847
  %tobool = icmp eq i8 %tmp17, 0, !dbg !1847
  br i1 %tobool, label %if.end42, label %while.cond.preheader, !dbg !1847

while.cond.preheader:                             ; preds = %if.end
  %cmp238 = icmp ugt i32 %4, %2, !dbg !1848
  br i1 %cmp238, label %while.body.preheader, label %while.end, !dbg !1848

while.body.preheader:                             ; preds = %while.cond.preheader
  %11 = sub i32 %4, %2
  %xtraiter = and i32 %11, 3
  %lcmp = icmp eq i32 %xtraiter, 0
  br i1 %lcmp, label %while.body.preheader.split, label %unr.cmp29

unr.cmp29:                                        ; preds = %while.body.preheader
  %un.tmp30 = icmp eq i32 %xtraiter, 1
  br i1 %un.tmp30, label %while.body.unr21, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp29
  %un.tmp = icmp eq i32 %xtraiter, 2
  br i1 %un.tmp, label %while.body.unr15, label %while.body.unr

while.body.unr:                                   ; preds = %unr.cmp
  %12 = sext i32 %2 to i64, !dbg !1850
  %getElem6.unr = getelementptr float addrspace(1)* %0, i64 %12, !dbg !1850
  %13 = ptrtoint float addrspace(1)* %getElem6.unr to i64
  call void @__curd__glmemReadHook(i64 %13, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.unr = load float addrspace(1)* %getElem6.unr, align 4, !dbg !1850
  %add.unr = fadd float %tmp27.unr, 0.000000e+00, !dbg !1850
  %add30.unr = add i32 %2, 1, !dbg !1852
  br label %while.body.unr15

while.body.unr15:                                 ; preds = %while.body.unr, %unr.cmp
  %mySum.010.unr = phi float [ %add.unr, %while.body.unr ], [ 0.000000e+00, %unr.cmp ]
  %i.09.unr = phi i32 [ %add30.unr, %while.body.unr ], [ %2, %unr.cmp ]
  %14 = sext i32 %i.09.unr to i64, !dbg !1850
  %getElem6.unr16 = getelementptr float addrspace(1)* %0, i64 %14, !dbg !1850
  %15 = ptrtoint float addrspace(1)* %getElem6.unr16 to i64
  call void @__curd__glmemReadHook(i64 %15, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.unr17 = load float addrspace(1)* %getElem6.unr16, align 4, !dbg !1850
  %add.unr18 = fadd float %mySum.010.unr, %tmp27.unr17, !dbg !1850
  %add30.unr19 = add i32 %i.09.unr, 1, !dbg !1852
  br label %while.body.unr21

while.body.unr21:                                 ; preds = %while.body.unr15, %unr.cmp29
  %mySum.010.unr22 = phi float [ %add.unr18, %while.body.unr15 ], [ 0.000000e+00, %unr.cmp29 ]
  %i.09.unr23 = phi i32 [ %add30.unr19, %while.body.unr15 ], [ %2, %unr.cmp29 ]
  %16 = sext i32 %i.09.unr23 to i64, !dbg !1850
  %getElem6.unr24 = getelementptr float addrspace(1)* %0, i64 %16, !dbg !1850
  %17 = ptrtoint float addrspace(1)* %getElem6.unr24 to i64
  call void @__curd__glmemReadHook(i64 %17, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.unr25 = load float addrspace(1)* %getElem6.unr24, align 4, !dbg !1850
  %add.unr26 = fadd float %mySum.010.unr22, %tmp27.unr25, !dbg !1850
  %add30.unr27 = add i32 %i.09.unr23, 1, !dbg !1852
  br label %while.body.preheader.split

while.body.preheader.split:                       ; preds = %while.body.unr21, %while.body.preheader
  %mySum.010.unr31 = phi float [ 0.000000e+00, %while.body.preheader ], [ %add.unr26, %while.body.unr21 ]
  %i.09.unr32 = phi i32 [ %2, %while.body.preheader ], [ %add30.unr27, %while.body.unr21 ]
  %18 = icmp ult i32 %11, 4
  br i1 %18, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader.split
  %mySum.010 = phi float [ %add.3, %while.body ], [ %mySum.010.unr31, %while.body.preheader.split ]
  %i.09 = phi i32 [ %add30.3, %while.body ], [ %i.09.unr32, %while.body.preheader.split ]
  %19 = sext i32 %i.09 to i64, !dbg !1850
  %getElem6 = getelementptr float addrspace(1)* %0, i64 %19, !dbg !1850
  %20 = ptrtoint float addrspace(1)* %getElem6 to i64
  call void @__curd__glmemReadHook(i64 %20, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27 = load float addrspace(1)* %getElem6, align 4, !dbg !1850
  %add = fadd float %mySum.010, %tmp27, !dbg !1850
  %add30 = add i32 %i.09, 1, !dbg !1852
  %21 = sext i32 %add30 to i64, !dbg !1850
  %getElem6.1 = getelementptr float addrspace(1)* %0, i64 %21, !dbg !1850
  %22 = ptrtoint float addrspace(1)* %getElem6.1 to i64
  call void @__curd__glmemReadHook(i64 %22, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.1 = load float addrspace(1)* %getElem6.1, align 4, !dbg !1850
  %add.1 = fadd float %add, %tmp27.1, !dbg !1850
  %add30.1 = add i32 %i.09, 2, !dbg !1852
  %23 = sext i32 %add30.1 to i64, !dbg !1850
  %getElem6.2 = getelementptr float addrspace(1)* %0, i64 %23, !dbg !1850
  %24 = ptrtoint float addrspace(1)* %getElem6.2 to i64
  call void @__curd__glmemReadHook(i64 %24, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.2 = load float addrspace(1)* %getElem6.2, align 4, !dbg !1850
  %add.2 = fadd float %add.1, %tmp27.2, !dbg !1850
  %add30.2 = add i32 %i.09, 3, !dbg !1852
  %25 = sext i32 %add30.2 to i64, !dbg !1850
  %getElem6.3 = getelementptr float addrspace(1)* %0, i64 %25, !dbg !1850
  %26 = ptrtoint float addrspace(1)* %getElem6.3 to i64
  call void @__curd__glmemReadHook(i64 %26, i8 4, i32 212, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp27.3 = load float addrspace(1)* %getElem6.3, align 4, !dbg !1850
  %add.3 = fadd float %add.2, %tmp27.3, !dbg !1850
  %add30.3 = add i32 %i.09, 4, !dbg !1852
  %cmp23.3 = icmp ult i32 %add30.3, %4, !dbg !1848
  br i1 %cmp23.3, label %while.body, label %while.end, !dbg !1848

while.end:                                        ; preds = %while.body, %while.body.preheader.split, %while.cond.preheader
  %mySum.0.lcssa = phi float [ 0.000000e+00, %while.cond.preheader ], [ %mySum.010.unr31, %while.body.preheader.split ], [ %add.3, %while.body ]
  %getElem7 = getelementptr [0 x float] addrspace(3)* @smem, i32 0, i32 %2, !dbg !1853
  %27 = ptrtoint float addrspace(3)* %getElem7 to i32
  %28 = zext i32 %27 to i64
  call void @__curd__shmemWriteHook(i64 %28, i8 4, i32 38, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store volatile float %mySum.0.lcssa, float addrspace(3)* %getElem7, align 4, !dbg !1853
  tail call void @llvm.cuda.syncthreads(), !dbg !1855
  call void @__curd__barrierHook() #1
  br i1 %cmp33.i, label %if.then36, label %if.end42, !dbg !1856

if.then36:                                        ; preds = %while.end
  call void @__curd__shmemReadHook(i64 ptrtoint ([0 x float] addrspace(3)* @smem to i64), i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  %tmp37 = load float addrspace(3)* getelementptr inbounds ([0 x float] addrspace(3)* @smem, i32 0, i32 0), align 4, !dbg !1857
  %29 = ptrtoint float addrspace(1)* %0 to i64
  call void @__curd__glmemWriteHook(i64 %29, i8 4, i32 220, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store float %tmp37, float addrspace(1)* %0, align 4, !dbg !1857
  call void @__curd__glmemWriteHook(i64 ptrtoint (i32 addrspace(1)* @retirementCount to i64), i8 4, i32 223, i8* getelementptr inbounds ([121 x i8]* @0, i64 0, i64 0)) #1
  store i32 0, i32 addrspace(1)* @retirementCount, align 4, !dbg !1859
  br label %if.end42, !dbg !1859

if.end42:                                         ; preds = %if.then36, %while.end, %if.end, %_Z12reduceBlocksILj1ELb0EEvPKfPfj.exit
  ret void, !dbg !1860
}

; Function Attrs: nounwind
declare void @llvm.nvvm.membar.gl() #1

; Function Attrs: nounwind
declare i32 @llvm.nvvm.atomic.load.inc.32.p1i32(i32 addrspace(1)* nocapture, i32) #1

declare void @__curd__shmemReadHook(i64, i8, i32, i8*)

declare void @__curd__shmemWriteHook(i64, i8, i32, i8*)

declare void @__curd__glmemReadHook(i64, i8, i32, i8*)

declare void @__curd__glmemWriteHook(i64, i8, i32, i8*)

declare void @__curd__genericMemReadHook(i64, i8, i32, i8*)

declare void @__curd__genericMemWriteHook(i64, i8, i32, i8*)

declare void @__curd__barrierHook()

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { alwaysinline nounwind }

!llvm.dbg.cu = !{!0}
!nvvmir.version = !{!85, !86, !86, !86}
!nvvm.annotations = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !128, !129, !130, !131, !132, !133, !134, !132, !133, !134, !131, !132, !133, !134, !132, !133, !134, !135, !136, !137, !138, !136, !137, !138, !135, !136, !137, !138, !136, !137, !138, !127, !128, !129, !130, !128, !129, !130, !131, !132, !133, !134, !132, !133, !134, !131, !132, !133, !134, !132, !133, !134, !135, !136, !137, !138, !136, !137, !138, !135, !136, !137, !138, !136, !137, !138, !127, !128, !129, !130, !128, !129, !130, !131, !132, !133, !134, !132, !133, !134, !131, !132, !133, !134, !132, !133, !134, !135, !136, !137, !138, !136, !137, !138, !135, !136, !137, !138, !136, !137, !138, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !140, !140, !140, !140, !140, !140, !140, !140, !140, !140, !140, !140, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !139, !141, !141, !141, !142, !142, !142, !141, !141, !141, !142, !142, !142, !141, !141, !141, !141, !141, !141, !142, !142, !142, !143, !144, !144, !145, !145, !146, !146, !143, !144, !144, !145, !145, !146, !146, !143, !144, !144, !145, !145, !146, !146, !143, !144, !144, !145, !145, !146, !146, !143, !144, !144, !145, !145, !146, !146, !147, !148, !148, !149, !149, !150, !150, !147, !148, !148, !149, !149, !150, !150, !147, !148, !148, !149, !149, !150, !150, !147, !148, !148, !149, !149, !150, !150, !147, !148, !148, !149, !149, !150, !150, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !146, !146, !146, !146, !146, !146, !146, !139, !139, !139, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !140, !140, !140, !144, !144, !144, !144, !144, !144, !144, !144, !144, !144, !144, !145, !145, !145, !145, !145, !145, !145, !145, !145, !145, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !146, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !139, !139, !139, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !141, !141, !141, !151, !151, !151, !151, !151, !151, !152, !152, !153, !153, !151, !151, !151, !151, !153, !153, !154, !154, !151, !151, !151, !151, !154, !154, !155, !155, !151, !151, !151, !151, !154, !154, !155, !155, !151, !151, !154, !155, !151, !151, !151, !151, !151, !151, !154, !154, !155, !155, !151, !151, !151, !151, !154, !154, !155, !155, !142, !142, !142, !156, !156, !156, !156, !156, !156, !157, !157, !158, !158, !156, !156, !156, !156, !158, !158, !159, !159, !156, !156, !156, !156, !159, !159, !160, !160, !156, !156, !156, !156, !159, !159, !160, !160, !156, !156, !159, !160, !156, !156, !156, !156, !156, !156, !159, !159, !160, !160, !156, !156, !156, !156, !159, !159, !160, !160, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !161, !161, !161, !161, !161, !161, !162, !162, !163, !163, !161, !161, !161, !161, !163, !163, !164, !164, !161, !161, !161, !161, !164, !164, !165, !165, !161, !161, !161, !161, !164, !164, !165, !165, !161, !161, !164, !165, !161, !161, !161, !161, !161, !161, !164, !164, !165, !165, !161, !161, !161, !161, !164, !164, !165, !165, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !145, !145, !146, !146, !145, !146, !145, !145, !146, !146, !145, !145, !146, !146, !166, !166, !166, !166, !166, !166, !167, !167, !168, !168, !166, !166, !166, !166, !168, !168, !169, !169, !166, !166, !166, !166, !169, !169, !170, !170, !166, !166, !166, !166, !169, !169, !170, !170, !166, !166, !169, !170, !166, !166, !166, !166, !166, !166, !169, !169, !170, !170, !166, !166, !166, !166, !169, !169, !170, !170, !151, !151, !151, !151, !151, !151, !152, !152, !153, !153, !151, !151, !151, !151, !153, !153, !154, !154, !151, !151, !151, !151, !154, !154, !155, !155, !151, !151, !151, !151, !154, !154, !155, !155, !151, !151, !154, !155, !151, !151, !151, !151, !151, !151, !154, !154, !155, !155, !151, !151, !151, !151, !154, !154, !155, !155, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !146, !146, !145, !145, !146, !146, !145, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !146, !146, !145, !145, !146, !146, !145, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !146, !146, !145, !145, !146, !146, !145, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !146, !146, !145, !145, !146, !146, !145, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !146, !146, !145, !145, !146, !146, !145, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !146, !146, !145, !145, !146, !146, !145, !146, !143, !143, !144, !144, !144, !144, !145, !145, !145, !145, !146, !146, !146, !146, !145, !145, !146, !146, !145, !146, !147, !147, !148, !148, !148, !148, !149, !149, !149, !149, !150, !150, !150, !150, !149, !149, !150, !150, !149, !150, !147, !147, !148, !148, !148, !148, !149, !149, !149, !149, !150, !150, !150, !150, !149, !149, !150, !150, !149, !150, !147, !147, !148, !148, !148, !148, !149, !149, !149, !149, !150, !150, !150, !150, !149, !149, !150, !150, !149, !150, !147, !147, !148, !148, !148, !148, !149, !149, !149, !149, !150, !150, !150, !150, !149, !149, !150, !150, !149, !150, !147, !147, !148, !148, !148, !148, !149, !149, !149, !149, !150, !150, !150, !150, !149, !149, !150, !150, !149, !150, !147, !147, !148, !148, !148, !148, !149, !149, !149, !149, !150, !150, !150, !150, !149, !149, !150, !150, !149, !150, !147, !147, !148, !148, !148, !148, !149, !149, !149, !149, !150, !150, !150, !150, !149, !149, !150, !150, !149, !150, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !166, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !156, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !171, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !172, !147, !147, !148, !148, !149, !149, !150, !150, !149, !148, !148, !149, !149, !150, !150, !150, !147, !147, !148, !148, !149, !149, !150, !150, !149, !148, !148, !149, !149, !150, !150, !150, !147, !147, !148, !148, !149, !149, !150, !150, !149, !148, !148, !149, !149, !150, !150, !150, !147, !147, !148, !148, !149, !149, !150, !150, !149, !148, !148, !149, !149, !150, !150, !150, !147, !147, !148, !148, !149, !149, !150, !150, !149, !148, !148, !149, !149, !150, !150, !150, !147, !147, !148, !148, !149, !149, !150, !150, !149, !148, !148, !149, !149, !150, !150, !150, !147, !147, !148, !148, !149, !149, !150, !150, !149, !148, !148, !149, !149, !150, !150, !150, !145, !173, !145, !146, !146, !146, !146, !174, !174, !146}
!llvm.module.flags = !{!175}
!nvvm.internalize.after.link = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj512ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj512EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj256ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj256EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj128ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj128EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj64ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj64EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj32ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj32EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj16ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj16EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj8ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj8EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj4ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj4EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj2ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj2EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj1ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z11reduceBlockILj1EEvPVffj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj512ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj256ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj128ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj64ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj32ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj16ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj8ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj4ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj2ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z12reduceBlocksILj1ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj1ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj1ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj2ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj2ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj4ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj4ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj8ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj8ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj16ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj16ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj32ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj32ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj64ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj64ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj128ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj128ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj256ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj256ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj512ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj512ELb0EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj1ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj1ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj2ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj2ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj4ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj4ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj8ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj8ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj16ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj16ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj32ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj32ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj64ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj64ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj128ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj128ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj256ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj256ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z16reduceSinglePassILj512ELb1EEvPKfPfj = !{}
!nvvm.func.with.64bit.index._Z15reduceMultiPassILj512ELb1EEvPKfPfj = !{}
!function\20completed\20restrict\20processing = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"lgenfe: EDG 4.12", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction.cu] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"threadFenceReduction.cu", metadata !"/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaMalloc", metadata !"cudaMalloc", metadata !"cudaMalloc", i32 75, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i8**, i64)* @cudaMalloc, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 0] [cudaMalloc]
!5 = metadata !{metadata !"/home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h", metadata !"/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaFuncGetAttributes", metadata !"cudaFuncGetAttributes", metadata !"cudaFuncGetAttributes", i32 80, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (%struct.cudaFuncAttributes*, i8*)* @cudaFuncGetAttributes, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 0] [cudaFuncGetAttributes]
!9 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaDeviceGetAttribute", metadata !"cudaDeviceGetAttribute", metadata !"cudaDeviceGetAttribute", i32 85, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i32, i32)* @cudaDeviceGetAttribute, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 0] [cudaDeviceGetAttribute]
!10 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaGetDevice", metadata !"cudaGetDevice", metadata !"cudaGetDevice", i32 90, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*)* @cudaGetDevice, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 0] [cudaGetDevice]
!11 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessor", i32 95, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i8*, i32, i64)* @cudaOccupancyMaxActiveBlocksPerMultiprocessor, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 0] [cudaOccupancyMaxActiveBlocksPerMultiprocessor]
!12 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", metadata !"cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags", i32 100, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32*, i8*, i32, i64, i32)* @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 0] [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags]
!13 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj512ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj512ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj512ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj512ELb1EEvPKfPfj]
!14 = metadata !{metadata !"threadFenceReduction_kernel.cuh", metadata !"/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction"}
!15 = metadata !{i32 786473, metadata !14}        ; [ DW_TAG_file_type ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!16 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj512EEvPVffj", metadata !"_Z11reduceBlockILj512EEvPVffj", metadata !"_Z11reduceBlockILj512EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj512EEvPVffj]
!17 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj256ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj256ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj256ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj256ELb1EEvPKfPfj]
!18 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj256EEvPVffj", metadata !"_Z11reduceBlockILj256EEvPVffj", metadata !"_Z11reduceBlockILj256EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj256EEvPVffj]
!19 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj128ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj128ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj128ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj128ELb1EEvPKfPfj]
!20 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj128EEvPVffj", metadata !"_Z11reduceBlockILj128EEvPVffj", metadata !"_Z11reduceBlockILj128EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj128EEvPVffj]
!21 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj64ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj64ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj64ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj64ELb1EEvPKfPfj]
!22 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj64EEvPVffj", metadata !"_Z11reduceBlockILj64EEvPVffj", metadata !"_Z11reduceBlockILj64EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj64EEvPVffj]
!23 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj32ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj32ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj32ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj32ELb1EEvPKfPfj]
!24 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj32EEvPVffj", metadata !"_Z11reduceBlockILj32EEvPVffj", metadata !"_Z11reduceBlockILj32EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj32EEvPVffj]
!25 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj16ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj16ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj16ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj16ELb1EEvPKfPfj]
!26 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj16EEvPVffj", metadata !"_Z11reduceBlockILj16EEvPVffj", metadata !"_Z11reduceBlockILj16EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj16EEvPVffj]
!27 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj8ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj8ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj8ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj8ELb1EEvPKfPfj]
!28 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj8EEvPVffj", metadata !"_Z11reduceBlockILj8EEvPVffj", metadata !"_Z11reduceBlockILj8EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj8EEvPVffj]
!29 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj4ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj4ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj4ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj4ELb1EEvPKfPfj]
!30 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj4EEvPVffj", metadata !"_Z11reduceBlockILj4EEvPVffj", metadata !"_Z11reduceBlockILj4EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj4EEvPVffj]
!31 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj2ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj2ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj2ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj2ELb1EEvPKfPfj]
!32 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj2EEvPVffj", metadata !"_Z11reduceBlockILj2EEvPVffj", metadata !"_Z11reduceBlockILj2EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj2EEvPVffj]
!33 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj1ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj1ELb1EEvPKfPfj", metadata !"_Z12reduceBlocksILj1ELb1EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj1ELb1EEvPKfPfj]
!34 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z11reduceBlockILj1EEvPVffj", metadata !"_Z11reduceBlockILj1EEvPVffj", metadata !"_Z11reduceBlockILj1EEvPVffj", i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 0] [_Z11reduceBlockILj1EEvPVffj]
!35 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj512ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj512ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj512ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj512ELb0EEvPKfPfj]
!36 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj256ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj256ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj256ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj256ELb0EEvPKfPfj]
!37 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj128ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj128ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj128ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj128ELb0EEvPKfPfj]
!38 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj64ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj64ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj64ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj64ELb0EEvPKfPfj]
!39 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj32ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj32ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj32ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj32ELb0EEvPKfPfj]
!40 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj16ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj16ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj16ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj16ELb0EEvPKfPfj]
!41 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj8ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj8ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj8ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj8ELb0EEvPKfPfj]
!42 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj4ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj4ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj4ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj4ELb0EEvPKfPfj]
!43 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj2ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj2ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj2ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj2ELb0EEvPKfPfj]
!44 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z12reduceBlocksILj1ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj1ELb0EEvPKfPfj", metadata !"_Z12reduceBlocksILj1ELb0EEvPKfPfj", i32 108, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 0] [_Z12reduceBlocksILj1ELb0EEvPKfPfj]
!45 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj512ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj512ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj512ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj512ELb1EEvPKfPfj]
!46 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj256ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj256ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj256ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj256ELb1EEvPKfPfj]
!47 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj128ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj128ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj128ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj128ELb1EEvPKfPfj]
!48 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj64ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj64ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj64ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj64ELb1EEvPKfPfj]
!49 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj32ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj32ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj32ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj32ELb1EEvPKfPfj]
!50 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj16ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj16ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj16ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj16ELb1EEvPKfPfj]
!51 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj8ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj8ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj8ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj8ELb1EEvPKfPfj]
!52 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj4ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj4ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj4ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj4ELb1EEvPKfPfj]
!53 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj2ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj2ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj2ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj2ELb1EEvPKfPfj]
!54 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj1ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj1ELb1EEvPKfPfj", metadata !"_Z15reduceMultiPassILj1ELb1EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj1ELb1EEvPKfPfj]
!55 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj512ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj512ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj512ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj512ELb0EEvPKfPfj]
!56 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj256ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj256ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj256ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj256ELb0EEvPKfPfj]
!57 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj128ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj128ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj128ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj128ELb0EEvPKfPfj]
!58 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj64ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj64ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj64ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj64ELb0EEvPKfPfj]
!59 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj32ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj32ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj32ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj32ELb0EEvPKfPfj]
!60 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj16ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj16ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj16ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj16ELb0EEvPKfPfj]
!61 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj8ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj8ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj8ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj8ELb0EEvPKfPfj]
!62 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj4ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj4ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj4ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj4ELb0EEvPKfPfj]
!63 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj2ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj2ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj2ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj2ELb0EEvPKfPfj]
!64 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z15reduceMultiPassILj1ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj1ELb0EEvPKfPfj", metadata !"_Z15reduceMultiPassILj1ELb0EEvPKfPfj", i32 143, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 0] [_Z15reduceMultiPassILj1ELb0EEvPKfPfj]
!65 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj512ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj512ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj512ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj512ELb1EEvPKfPfj]
!66 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj256ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj256ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj256ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj256ELb1EEvPKfPfj]
!67 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj128ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj128ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj128ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj128ELb1EEvPKfPfj]
!68 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj64ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj64ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj64ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj64ELb1EEvPKfPfj]
!69 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj32ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj32ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj32ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj32ELb1EEvPKfPfj]
!70 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj16ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj16ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj16ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj16ELb1EEvPKfPfj]
!71 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj8ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj8ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj8ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj8ELb1EEvPKfPfj]
!72 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj4ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj4ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj4ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj4ELb1EEvPKfPfj]
!73 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj2ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj2ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj2ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj2ELb1EEvPKfPfj]
!74 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj1ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj1ELb1EEvPKfPfj", metadata !"_Z16reduceSinglePassILj1ELb1EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb1EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj1ELb1EEvPKfPfj]
!75 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj512ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj512ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj512ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj512ELb0EEvPKfPfj]
!76 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj256ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj256ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj256ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj256ELb0EEvPKfPfj]
!77 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj128ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj128ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj128ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj128ELb0EEvPKfPfj]
!78 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj64ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj64ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj64ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj64ELb0EEvPKfPfj]
!79 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj32ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj32ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj32ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj32ELb0EEvPKfPfj]
!80 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj16ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj16ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj16ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj16ELb0EEvPKfPfj]
!81 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj8ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj8ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj8ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj8ELb0EEvPKfPfj]
!82 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj4ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj4ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj4ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj4ELb0EEvPKfPfj]
!83 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj2ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj2ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj2ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj2ELb0EEvPKfPfj]
!84 = metadata !{i32 786478, metadata !14, metadata !15, metadata !"_Z16reduceSinglePassILj1ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj1ELb0EEvPKfPfj", metadata !"_Z16reduceSinglePassILj1ELb0EEvPKfPfj", i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb0EEvPKfPfj, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 0] [_Z16reduceSinglePassILj1ELb0EEvPKfPfj]
!85 = metadata !{i32 1, i32 2, i32 2, i32 0}
!86 = metadata !{i32 1, i32 2}
!87 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!88 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!89 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!90 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!91 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!92 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!93 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!94 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!95 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!96 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!97 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!98 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!99 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!100 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!101 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!102 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!103 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!104 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!105 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!106 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!107 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!108 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!109 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!110 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!111 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!112 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!113 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!114 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!115 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!116 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb1EEvPKfPfj, metadata !"kernel", i32 1}
!117 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!118 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!119 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!120 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!121 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!122 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!123 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!124 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!125 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!126 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb0EEvPKfPfj, metadata !"kernel", i32 1}
!127 = metadata !{null, metadata !"align", i32 196610}
!128 = metadata !{null, metadata !"align", i32 196612}
!129 = metadata !{null, metadata !"align", i32 196616}
!130 = metadata !{null, metadata !"align", i32 196624}
!131 = metadata !{null, metadata !"align", i32 262146}
!132 = metadata !{null, metadata !"align", i32 262148}
!133 = metadata !{null, metadata !"align", i32 262152}
!134 = metadata !{null, metadata !"align", i32 262160}
!135 = metadata !{null, metadata !"align", i32 327682}
!136 = metadata !{null, metadata !"align", i32 327684}
!137 = metadata !{null, metadata !"align", i32 327688}
!138 = metadata !{null, metadata !"align", i32 327696}
!139 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 131088}
!140 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 131080}
!141 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 131088, metadata !"align", i32 196624, metadata !"align", i32 262160}
!142 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 131088, metadata !"align", i32 262160, metadata !"align", i32 327696}
!143 = metadata !{null, metadata !"align", i32 2}
!144 = metadata !{null, metadata !"align", i32 4}
!145 = metadata !{null, metadata !"align", i32 8}
!146 = metadata !{null, metadata !"align", i32 16}
!147 = metadata !{null, metadata !"align", i32 65538}
!148 = metadata !{null, metadata !"align", i32 65540}
!149 = metadata !{null, metadata !"align", i32 65544}
!150 = metadata !{null, metadata !"align", i32 65552}
!151 = metadata !{null, metadata !"align", i32 327696, metadata !"align", i32 393232}
!152 = metadata !{null, metadata !"align", i32 2, metadata !"align", i32 327696, metadata !"align", i32 393232}
!153 = metadata !{null, metadata !"align", i32 4, metadata !"align", i32 327696, metadata !"align", i32 393232}
!154 = metadata !{null, metadata !"align", i32 8, metadata !"align", i32 327696, metadata !"align", i32 393232}
!155 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 327696, metadata !"align", i32 393232}
!156 = metadata !{null, metadata !"align", i32 393232, metadata !"align", i32 458768}
!157 = metadata !{null, metadata !"align", i32 2, metadata !"align", i32 393232, metadata !"align", i32 458768}
!158 = metadata !{null, metadata !"align", i32 4, metadata !"align", i32 393232, metadata !"align", i32 458768}
!159 = metadata !{null, metadata !"align", i32 8, metadata !"align", i32 393232, metadata !"align", i32 458768}
!160 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 393232, metadata !"align", i32 458768}
!161 = metadata !{null, metadata !"align", i32 262152, metadata !"align", i32 327688}
!162 = metadata !{null, metadata !"align", i32 2, metadata !"align", i32 262152, metadata !"align", i32 327688}
!163 = metadata !{null, metadata !"align", i32 4, metadata !"align", i32 262152, metadata !"align", i32 327688}
!164 = metadata !{null, metadata !"align", i32 8, metadata !"align", i32 262152, metadata !"align", i32 327688}
!165 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 262152, metadata !"align", i32 327688}
!166 = metadata !{null, metadata !"align", i32 327688, metadata !"align", i32 393224}
!167 = metadata !{null, metadata !"align", i32 2, metadata !"align", i32 327688, metadata !"align", i32 393224}
!168 = metadata !{null, metadata !"align", i32 4, metadata !"align", i32 327688, metadata !"align", i32 393224}
!169 = metadata !{null, metadata !"align", i32 8, metadata !"align", i32 327688, metadata !"align", i32 393224}
!170 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 327688, metadata !"align", i32 393224}
!171 = metadata !{null, metadata !"align", i32 393224, metadata !"align", i32 458760}
!172 = metadata !{null, metadata !"align", i32 458768, metadata !"align", i32 524304}
!173 = metadata !{null, metadata !"align", i32 8, metadata !"align", i32 65544, metadata !"align", i32 131080}
!174 = metadata !{null, metadata !"align", i32 16, metadata !"align", i32 65552, metadata !"align", i32 131088}
!175 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!176 = metadata !{i32 (i8**, i64)* @cudaMalloc}
!177 = metadata !{i32 (%struct.cudaFuncAttributes*, i8*)* @cudaFuncGetAttributes}
!178 = metadata !{i32 (i32*, i32, i32)* @cudaDeviceGetAttribute}
!179 = metadata !{i32 (i32*)* @cudaGetDevice}
!180 = metadata !{i32 (i32*, i8*, i32, i64)* @cudaOccupancyMaxActiveBlocksPerMultiprocessor}
!181 = metadata !{i32 (i32*, i8*, i32, i64, i32)* @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags}
!182 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb1EEvPKfPfj}
!183 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb1EEvPKfPfj}
!184 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb1EEvPKfPfj}
!185 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb1EEvPKfPfj}
!186 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb1EEvPKfPfj}
!187 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb1EEvPKfPfj}
!188 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb1EEvPKfPfj}
!189 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb1EEvPKfPfj}
!190 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb1EEvPKfPfj}
!191 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb1EEvPKfPfj}
!192 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj512ELb0EEvPKfPfj}
!193 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj256ELb0EEvPKfPfj}
!194 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj128ELb0EEvPKfPfj}
!195 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj64ELb0EEvPKfPfj}
!196 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj32ELb0EEvPKfPfj}
!197 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj16ELb0EEvPKfPfj}
!198 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj8ELb0EEvPKfPfj}
!199 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj4ELb0EEvPKfPfj}
!200 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj2ELb0EEvPKfPfj}
!201 = metadata !{void (float*, float*, i32)* @_Z15reduceMultiPassILj1ELb0EEvPKfPfj}
!202 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb1EEvPKfPfj}
!203 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb1EEvPKfPfj}
!204 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb1EEvPKfPfj}
!205 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb1EEvPKfPfj}
!206 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb1EEvPKfPfj}
!207 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb1EEvPKfPfj}
!208 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb1EEvPKfPfj}
!209 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb1EEvPKfPfj}
!210 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb1EEvPKfPfj}
!211 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb1EEvPKfPfj}
!212 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj512ELb0EEvPKfPfj}
!213 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj256ELb0EEvPKfPfj}
!214 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj128ELb0EEvPKfPfj}
!215 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj64ELb0EEvPKfPfj}
!216 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj32ELb0EEvPKfPfj}
!217 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj16ELb0EEvPKfPfj}
!218 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj8ELb0EEvPKfPfj}
!219 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj4ELb0EEvPKfPfj}
!220 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj2ELb0EEvPKfPfj}
!221 = metadata !{void (float*, float*, i32)* @_Z16reduceSinglePassILj1ELb0EEvPKfPfj}
!222 = metadata !{i32 77, i32 3, metadata !223, null}
!223 = metadata !{i32 786443, metadata !5, metadata !4, i32 76, i32 1, i32 0} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h]
!224 = metadata !{i32 82, i32 3, metadata !225, null}
!225 = metadata !{i32 786443, metadata !5, metadata !8, i32 81, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h]
!226 = metadata !{i32 87, i32 3, metadata !227, null}
!227 = metadata !{i32 786443, metadata !5, metadata !9, i32 86, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h]
!228 = metadata !{i32 92, i32 3, metadata !229, null}
!229 = metadata !{i32 786443, metadata !5, metadata !10, i32 91, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h]
!230 = metadata !{i32 97, i32 3, metadata !231, null}
!231 = metadata !{i32 786443, metadata !5, metadata !11, i32 96, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h]
!232 = metadata !{i32 102, i32 3, metadata !233, null}
!233 = metadata !{i32 786443, metadata !5, metadata !12, i32 101, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/../cnprt/cuda_device_runtime_api.h]
!234 = metadata !{i32 114, i32 22, metadata !235, metadata !236}
!235 = metadata !{i32 786443, metadata !14, metadata !13, i32 109, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!236 = metadata !{i32 145, i32 5, metadata !237, null}
!237 = metadata !{i32 786443, metadata !14, metadata !45, i32 144, i32 1, i32 226} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!238 = metadata !{i32 115, i32 20, metadata !235, metadata !236}
!239 = metadata !{i32 116, i32 27, metadata !235, metadata !236}
!240 = metadata !{i32 122, i32 5, metadata !235, metadata !236}
!241 = metadata !{i32 124, i32 9, metadata !242, metadata !236}
!242 = metadata !{i32 786443, metadata !14, metadata !235, i32 123, i32 5, i32 7} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!243 = metadata !{i32 128, i32 13, metadata !244, metadata !236}
!244 = metadata !{i32 786443, metadata !14, metadata !242, i32 127, i32 9, i32 8} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!245 = metadata !{i32 130, i32 9, metadata !242, metadata !236}
!246 = metadata !{i32 38, i32 5, metadata !247, metadata !248}
!247 = metadata !{i32 786443, metadata !14, metadata !16, i32 37, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!248 = metadata !{i32 134, i32 5, metadata !235, metadata !236}
!249 = metadata !{i32 39, i32 5, metadata !247, metadata !248}
!250 = metadata !{i32 44, i32 9, metadata !251, metadata !248}
!251 = metadata !{i32 786443, metadata !14, metadata !247, i32 43, i32 5, i32 11} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!252 = metadata !{i32 46, i32 13, metadata !253, metadata !248}
!253 = metadata !{i32 786443, metadata !14, metadata !251, i32 45, i32 9, i32 12} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!254 = metadata !{i32 49, i32 9, metadata !251, metadata !248}
!255 = metadata !{i32 54, i32 9, metadata !256, metadata !248}
!256 = metadata !{i32 786443, metadata !14, metadata !247, i32 53, i32 5, i32 13} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!257 = metadata !{i32 56, i32 13, metadata !258, metadata !248}
!258 = metadata !{i32 786443, metadata !14, metadata !256, i32 55, i32 9, i32 14} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!259 = metadata !{i32 59, i32 9, metadata !256, metadata !248}
!260 = metadata !{i32 64, i32 9, metadata !261, metadata !248}
!261 = metadata !{i32 786443, metadata !14, metadata !247, i32 63, i32 5, i32 15} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!262 = metadata !{i32 66, i32 13, metadata !263, metadata !248}
!263 = metadata !{i32 786443, metadata !14, metadata !261, i32 65, i32 9, i32 16} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!264 = metadata !{i32 69, i32 9, metadata !261, metadata !248}
!265 = metadata !{i32 72, i32 5, metadata !247, metadata !248}
!266 = metadata !{i32 76, i32 13, metadata !267, metadata !248}
!267 = metadata !{i32 786443, metadata !14, metadata !268, i32 75, i32 9, i32 18} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!268 = metadata !{i32 786443, metadata !14, metadata !247, i32 73, i32 5, i32 17} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!269 = metadata !{i32 81, i32 13, metadata !270, metadata !248}
!270 = metadata !{i32 786443, metadata !14, metadata !268, i32 80, i32 9, i32 19} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!271 = metadata !{i32 86, i32 13, metadata !272, metadata !248}
!272 = metadata !{i32 786443, metadata !14, metadata !268, i32 85, i32 9, i32 20} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!273 = metadata !{i32 91, i32 13, metadata !274, metadata !248}
!274 = metadata !{i32 786443, metadata !14, metadata !268, i32 90, i32 9, i32 21} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!275 = metadata !{i32 96, i32 13, metadata !276, metadata !248}
!276 = metadata !{i32 786443, metadata !14, metadata !268, i32 95, i32 9, i32 22} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!277 = metadata !{i32 101, i32 13, metadata !278, metadata !248}
!278 = metadata !{i32 786443, metadata !14, metadata !268, i32 100, i32 9, i32 23} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!279 = metadata !{i32 137, i32 5, metadata !235, metadata !236}
!280 = metadata !{i32 137, i32 19, metadata !281, metadata !236}
!281 = metadata !{i32 786443, metadata !14, metadata !235, i32 137, i32 5, i32 9} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!282 = metadata !{i32 146, i32 1, metadata !237, null}
!283 = metadata !{i32 114, i32 22, metadata !284, metadata !285}
!284 = metadata !{i32 786443, metadata !14, metadata !17, i32 109, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!285 = metadata !{i32 145, i32 5, metadata !286, null}
!286 = metadata !{i32 786443, metadata !14, metadata !46, i32 144, i32 1, i32 227} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!287 = metadata !{i32 115, i32 20, metadata !284, metadata !285}
!288 = metadata !{i32 116, i32 27, metadata !284, metadata !285}
!289 = metadata !{i32 122, i32 5, metadata !284, metadata !285}
!290 = metadata !{i32 124, i32 9, metadata !291, metadata !285}
!291 = metadata !{i32 786443, metadata !14, metadata !284, i32 123, i32 5, i32 25} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!292 = metadata !{i32 128, i32 13, metadata !293, metadata !285}
!293 = metadata !{i32 786443, metadata !14, metadata !291, i32 127, i32 9, i32 26} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!294 = metadata !{i32 130, i32 9, metadata !291, metadata !285}
!295 = metadata !{i32 38, i32 5, metadata !296, metadata !297}
!296 = metadata !{i32 786443, metadata !14, metadata !18, i32 37, i32 1, i32 28} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!297 = metadata !{i32 134, i32 5, metadata !284, metadata !285}
!298 = metadata !{i32 39, i32 5, metadata !296, metadata !297}
!299 = metadata !{i32 54, i32 9, metadata !300, metadata !297}
!300 = metadata !{i32 786443, metadata !14, metadata !296, i32 53, i32 5, i32 31} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!301 = metadata !{i32 56, i32 13, metadata !302, metadata !297}
!302 = metadata !{i32 786443, metadata !14, metadata !300, i32 55, i32 9, i32 32} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!303 = metadata !{i32 59, i32 9, metadata !300, metadata !297}
!304 = metadata !{i32 64, i32 9, metadata !305, metadata !297}
!305 = metadata !{i32 786443, metadata !14, metadata !296, i32 63, i32 5, i32 33} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!306 = metadata !{i32 66, i32 13, metadata !307, metadata !297}
!307 = metadata !{i32 786443, metadata !14, metadata !305, i32 65, i32 9, i32 34} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!308 = metadata !{i32 69, i32 9, metadata !305, metadata !297}
!309 = metadata !{i32 72, i32 5, metadata !296, metadata !297}
!310 = metadata !{i32 76, i32 13, metadata !311, metadata !297}
!311 = metadata !{i32 786443, metadata !14, metadata !312, i32 75, i32 9, i32 36} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!312 = metadata !{i32 786443, metadata !14, metadata !296, i32 73, i32 5, i32 35} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!313 = metadata !{i32 81, i32 13, metadata !314, metadata !297}
!314 = metadata !{i32 786443, metadata !14, metadata !312, i32 80, i32 9, i32 37} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!315 = metadata !{i32 86, i32 13, metadata !316, metadata !297}
!316 = metadata !{i32 786443, metadata !14, metadata !312, i32 85, i32 9, i32 38} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!317 = metadata !{i32 91, i32 13, metadata !318, metadata !297}
!318 = metadata !{i32 786443, metadata !14, metadata !312, i32 90, i32 9, i32 39} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!319 = metadata !{i32 96, i32 13, metadata !320, metadata !297}
!320 = metadata !{i32 786443, metadata !14, metadata !312, i32 95, i32 9, i32 40} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!321 = metadata !{i32 101, i32 13, metadata !322, metadata !297}
!322 = metadata !{i32 786443, metadata !14, metadata !312, i32 100, i32 9, i32 41} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!323 = metadata !{i32 137, i32 5, metadata !284, metadata !285}
!324 = metadata !{i32 137, i32 19, metadata !325, metadata !285}
!325 = metadata !{i32 786443, metadata !14, metadata !284, i32 137, i32 5, i32 27} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!326 = metadata !{i32 146, i32 1, metadata !286, null}
!327 = metadata !{i32 114, i32 22, metadata !328, metadata !329}
!328 = metadata !{i32 786443, metadata !14, metadata !19, i32 109, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!329 = metadata !{i32 145, i32 5, metadata !330, null}
!330 = metadata !{i32 786443, metadata !14, metadata !47, i32 144, i32 1, i32 228} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!331 = metadata !{i32 115, i32 20, metadata !328, metadata !329}
!332 = metadata !{i32 116, i32 27, metadata !328, metadata !329}
!333 = metadata !{i32 122, i32 5, metadata !328, metadata !329}
!334 = metadata !{i32 124, i32 9, metadata !335, metadata !329}
!335 = metadata !{i32 786443, metadata !14, metadata !328, i32 123, i32 5, i32 43} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!336 = metadata !{i32 128, i32 13, metadata !337, metadata !329}
!337 = metadata !{i32 786443, metadata !14, metadata !335, i32 127, i32 9, i32 44} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!338 = metadata !{i32 130, i32 9, metadata !335, metadata !329}
!339 = metadata !{i32 38, i32 5, metadata !340, metadata !341}
!340 = metadata !{i32 786443, metadata !14, metadata !20, i32 37, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!341 = metadata !{i32 134, i32 5, metadata !328, metadata !329}
!342 = metadata !{i32 39, i32 5, metadata !340, metadata !341}
!343 = metadata !{i32 64, i32 9, metadata !344, metadata !341}
!344 = metadata !{i32 786443, metadata !14, metadata !340, i32 63, i32 5, i32 51} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!345 = metadata !{i32 66, i32 13, metadata !346, metadata !341}
!346 = metadata !{i32 786443, metadata !14, metadata !344, i32 65, i32 9, i32 52} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!347 = metadata !{i32 69, i32 9, metadata !344, metadata !341}
!348 = metadata !{i32 72, i32 5, metadata !340, metadata !341}
!349 = metadata !{i32 76, i32 13, metadata !350, metadata !341}
!350 = metadata !{i32 786443, metadata !14, metadata !351, i32 75, i32 9, i32 54} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!351 = metadata !{i32 786443, metadata !14, metadata !340, i32 73, i32 5, i32 53} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!352 = metadata !{i32 81, i32 13, metadata !353, metadata !341}
!353 = metadata !{i32 786443, metadata !14, metadata !351, i32 80, i32 9, i32 55} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!354 = metadata !{i32 86, i32 13, metadata !355, metadata !341}
!355 = metadata !{i32 786443, metadata !14, metadata !351, i32 85, i32 9, i32 56} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!356 = metadata !{i32 91, i32 13, metadata !357, metadata !341}
!357 = metadata !{i32 786443, metadata !14, metadata !351, i32 90, i32 9, i32 57} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!358 = metadata !{i32 96, i32 13, metadata !359, metadata !341}
!359 = metadata !{i32 786443, metadata !14, metadata !351, i32 95, i32 9, i32 58} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!360 = metadata !{i32 101, i32 13, metadata !361, metadata !341}
!361 = metadata !{i32 786443, metadata !14, metadata !351, i32 100, i32 9, i32 59} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!362 = metadata !{i32 137, i32 5, metadata !328, metadata !329}
!363 = metadata !{i32 137, i32 19, metadata !364, metadata !329}
!364 = metadata !{i32 786443, metadata !14, metadata !328, i32 137, i32 5, i32 45} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!365 = metadata !{i32 146, i32 1, metadata !330, null}
!366 = metadata !{i32 114, i32 22, metadata !367, metadata !368}
!367 = metadata !{i32 786443, metadata !14, metadata !21, i32 109, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!368 = metadata !{i32 145, i32 5, metadata !369, null}
!369 = metadata !{i32 786443, metadata !14, metadata !48, i32 144, i32 1, i32 229} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!370 = metadata !{i32 115, i32 20, metadata !367, metadata !368}
!371 = metadata !{i32 116, i32 27, metadata !367, metadata !368}
!372 = metadata !{i32 122, i32 5, metadata !367, metadata !368}
!373 = metadata !{i32 124, i32 9, metadata !374, metadata !368}
!374 = metadata !{i32 786443, metadata !14, metadata !367, i32 123, i32 5, i32 61} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!375 = metadata !{i32 128, i32 13, metadata !376, metadata !368}
!376 = metadata !{i32 786443, metadata !14, metadata !374, i32 127, i32 9, i32 62} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!377 = metadata !{i32 130, i32 9, metadata !374, metadata !368}
!378 = metadata !{i32 38, i32 5, metadata !379, metadata !380}
!379 = metadata !{i32 786443, metadata !14, metadata !22, i32 37, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!380 = metadata !{i32 134, i32 5, metadata !367, metadata !368}
!381 = metadata !{i32 39, i32 5, metadata !379, metadata !380}
!382 = metadata !{i32 72, i32 5, metadata !379, metadata !380}
!383 = metadata !{i32 76, i32 13, metadata !384, metadata !380}
!384 = metadata !{i32 786443, metadata !14, metadata !385, i32 75, i32 9, i32 72} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!385 = metadata !{i32 786443, metadata !14, metadata !379, i32 73, i32 5, i32 71} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!386 = metadata !{i32 81, i32 13, metadata !387, metadata !380}
!387 = metadata !{i32 786443, metadata !14, metadata !385, i32 80, i32 9, i32 73} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!388 = metadata !{i32 86, i32 13, metadata !389, metadata !380}
!389 = metadata !{i32 786443, metadata !14, metadata !385, i32 85, i32 9, i32 74} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!390 = metadata !{i32 91, i32 13, metadata !391, metadata !380}
!391 = metadata !{i32 786443, metadata !14, metadata !385, i32 90, i32 9, i32 75} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!392 = metadata !{i32 96, i32 13, metadata !393, metadata !380}
!393 = metadata !{i32 786443, metadata !14, metadata !385, i32 95, i32 9, i32 76} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!394 = metadata !{i32 101, i32 13, metadata !395, metadata !380}
!395 = metadata !{i32 786443, metadata !14, metadata !385, i32 100, i32 9, i32 77} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!396 = metadata !{i32 137, i32 5, metadata !367, metadata !368}
!397 = metadata !{i32 137, i32 19, metadata !398, metadata !368}
!398 = metadata !{i32 786443, metadata !14, metadata !367, i32 137, i32 5, i32 63} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!399 = metadata !{i32 146, i32 1, metadata !369, null}
!400 = metadata !{i32 114, i32 22, metadata !401, metadata !402}
!401 = metadata !{i32 786443, metadata !14, metadata !23, i32 109, i32 1, i32 78} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!402 = metadata !{i32 145, i32 5, metadata !403, null}
!403 = metadata !{i32 786443, metadata !14, metadata !49, i32 144, i32 1, i32 230} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!404 = metadata !{i32 115, i32 20, metadata !401, metadata !402}
!405 = metadata !{i32 116, i32 27, metadata !401, metadata !402}
!406 = metadata !{i32 122, i32 5, metadata !401, metadata !402}
!407 = metadata !{i32 124, i32 9, metadata !408, metadata !402}
!408 = metadata !{i32 786443, metadata !14, metadata !401, i32 123, i32 5, i32 79} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!409 = metadata !{i32 128, i32 13, metadata !410, metadata !402}
!410 = metadata !{i32 786443, metadata !14, metadata !408, i32 127, i32 9, i32 80} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!411 = metadata !{i32 130, i32 9, metadata !408, metadata !402}
!412 = metadata !{i32 38, i32 5, metadata !413, metadata !414}
!413 = metadata !{i32 786443, metadata !14, metadata !24, i32 37, i32 1, i32 82} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!414 = metadata !{i32 134, i32 5, metadata !401, metadata !402}
!415 = metadata !{i32 39, i32 5, metadata !413, metadata !414}
!416 = metadata !{i32 72, i32 5, metadata !413, metadata !414}
!417 = metadata !{i32 81, i32 13, metadata !418, metadata !414}
!418 = metadata !{i32 786443, metadata !14, metadata !419, i32 80, i32 9, i32 91} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!419 = metadata !{i32 786443, metadata !14, metadata !413, i32 73, i32 5, i32 89} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!420 = metadata !{i32 86, i32 13, metadata !421, metadata !414}
!421 = metadata !{i32 786443, metadata !14, metadata !419, i32 85, i32 9, i32 92} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!422 = metadata !{i32 91, i32 13, metadata !423, metadata !414}
!423 = metadata !{i32 786443, metadata !14, metadata !419, i32 90, i32 9, i32 93} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!424 = metadata !{i32 96, i32 13, metadata !425, metadata !414}
!425 = metadata !{i32 786443, metadata !14, metadata !419, i32 95, i32 9, i32 94} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!426 = metadata !{i32 101, i32 13, metadata !427, metadata !414}
!427 = metadata !{i32 786443, metadata !14, metadata !419, i32 100, i32 9, i32 95} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!428 = metadata !{i32 137, i32 5, metadata !401, metadata !402}
!429 = metadata !{i32 137, i32 19, metadata !430, metadata !402}
!430 = metadata !{i32 786443, metadata !14, metadata !401, i32 137, i32 5, i32 81} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!431 = metadata !{i32 146, i32 1, metadata !403, null}
!432 = metadata !{i32 114, i32 22, metadata !433, metadata !434}
!433 = metadata !{i32 786443, metadata !14, metadata !25, i32 109, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!434 = metadata !{i32 145, i32 5, metadata !435, null}
!435 = metadata !{i32 786443, metadata !14, metadata !50, i32 144, i32 1, i32 231} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!436 = metadata !{i32 115, i32 20, metadata !433, metadata !434}
!437 = metadata !{i32 116, i32 27, metadata !433, metadata !434}
!438 = metadata !{i32 122, i32 5, metadata !433, metadata !434}
!439 = metadata !{i32 124, i32 9, metadata !440, metadata !434}
!440 = metadata !{i32 786443, metadata !14, metadata !433, i32 123, i32 5, i32 97} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!441 = metadata !{i32 128, i32 13, metadata !442, metadata !434}
!442 = metadata !{i32 786443, metadata !14, metadata !440, i32 127, i32 9, i32 98} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!443 = metadata !{i32 130, i32 9, metadata !440, metadata !434}
!444 = metadata !{i32 38, i32 5, metadata !445, metadata !446}
!445 = metadata !{i32 786443, metadata !14, metadata !26, i32 37, i32 1, i32 100} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!446 = metadata !{i32 134, i32 5, metadata !433, metadata !434}
!447 = metadata !{i32 39, i32 5, metadata !445, metadata !446}
!448 = metadata !{i32 72, i32 5, metadata !445, metadata !446}
!449 = metadata !{i32 86, i32 13, metadata !450, metadata !446}
!450 = metadata !{i32 786443, metadata !14, metadata !451, i32 85, i32 9, i32 110} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!451 = metadata !{i32 786443, metadata !14, metadata !445, i32 73, i32 5, i32 107} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!452 = metadata !{i32 91, i32 13, metadata !453, metadata !446}
!453 = metadata !{i32 786443, metadata !14, metadata !451, i32 90, i32 9, i32 111} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!454 = metadata !{i32 96, i32 13, metadata !455, metadata !446}
!455 = metadata !{i32 786443, metadata !14, metadata !451, i32 95, i32 9, i32 112} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!456 = metadata !{i32 101, i32 13, metadata !457, metadata !446}
!457 = metadata !{i32 786443, metadata !14, metadata !451, i32 100, i32 9, i32 113} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!458 = metadata !{i32 137, i32 5, metadata !433, metadata !434}
!459 = metadata !{i32 137, i32 19, metadata !460, metadata !434}
!460 = metadata !{i32 786443, metadata !14, metadata !433, i32 137, i32 5, i32 99} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!461 = metadata !{i32 146, i32 1, metadata !435, null}
!462 = metadata !{i32 114, i32 22, metadata !463, metadata !464}
!463 = metadata !{i32 786443, metadata !14, metadata !27, i32 109, i32 1, i32 114} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!464 = metadata !{i32 145, i32 5, metadata !465, null}
!465 = metadata !{i32 786443, metadata !14, metadata !51, i32 144, i32 1, i32 232} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!466 = metadata !{i32 115, i32 20, metadata !463, metadata !464}
!467 = metadata !{i32 116, i32 27, metadata !463, metadata !464}
!468 = metadata !{i32 122, i32 5, metadata !463, metadata !464}
!469 = metadata !{i32 124, i32 9, metadata !470, metadata !464}
!470 = metadata !{i32 786443, metadata !14, metadata !463, i32 123, i32 5, i32 115} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!471 = metadata !{i32 128, i32 13, metadata !472, metadata !464}
!472 = metadata !{i32 786443, metadata !14, metadata !470, i32 127, i32 9, i32 116} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!473 = metadata !{i32 130, i32 9, metadata !470, metadata !464}
!474 = metadata !{i32 38, i32 5, metadata !475, metadata !476}
!475 = metadata !{i32 786443, metadata !14, metadata !28, i32 37, i32 1, i32 118} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!476 = metadata !{i32 134, i32 5, metadata !463, metadata !464}
!477 = metadata !{i32 39, i32 5, metadata !475, metadata !476}
!478 = metadata !{i32 72, i32 5, metadata !475, metadata !476}
!479 = metadata !{i32 91, i32 13, metadata !480, metadata !476}
!480 = metadata !{i32 786443, metadata !14, metadata !481, i32 90, i32 9, i32 129} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!481 = metadata !{i32 786443, metadata !14, metadata !475, i32 73, i32 5, i32 125} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!482 = metadata !{i32 96, i32 13, metadata !483, metadata !476}
!483 = metadata !{i32 786443, metadata !14, metadata !481, i32 95, i32 9, i32 130} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!484 = metadata !{i32 101, i32 13, metadata !485, metadata !476}
!485 = metadata !{i32 786443, metadata !14, metadata !481, i32 100, i32 9, i32 131} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!486 = metadata !{i32 137, i32 5, metadata !463, metadata !464}
!487 = metadata !{i32 137, i32 19, metadata !488, metadata !464}
!488 = metadata !{i32 786443, metadata !14, metadata !463, i32 137, i32 5, i32 117} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!489 = metadata !{i32 146, i32 1, metadata !465, null}
!490 = metadata !{i32 114, i32 22, metadata !491, metadata !492}
!491 = metadata !{i32 786443, metadata !14, metadata !29, i32 109, i32 1, i32 132} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!492 = metadata !{i32 145, i32 5, metadata !493, null}
!493 = metadata !{i32 786443, metadata !14, metadata !52, i32 144, i32 1, i32 233} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!494 = metadata !{i32 115, i32 20, metadata !491, metadata !492}
!495 = metadata !{i32 116, i32 27, metadata !491, metadata !492}
!496 = metadata !{i32 122, i32 5, metadata !491, metadata !492}
!497 = metadata !{i32 124, i32 9, metadata !498, metadata !492}
!498 = metadata !{i32 786443, metadata !14, metadata !491, i32 123, i32 5, i32 133} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!499 = metadata !{i32 128, i32 13, metadata !500, metadata !492}
!500 = metadata !{i32 786443, metadata !14, metadata !498, i32 127, i32 9, i32 134} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!501 = metadata !{i32 130, i32 9, metadata !498, metadata !492}
!502 = metadata !{i32 38, i32 5, metadata !503, metadata !504}
!503 = metadata !{i32 786443, metadata !14, metadata !30, i32 37, i32 1, i32 136} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!504 = metadata !{i32 134, i32 5, metadata !491, metadata !492}
!505 = metadata !{i32 39, i32 5, metadata !503, metadata !504}
!506 = metadata !{i32 72, i32 5, metadata !503, metadata !504}
!507 = metadata !{i32 96, i32 13, metadata !508, metadata !504}
!508 = metadata !{i32 786443, metadata !14, metadata !509, i32 95, i32 9, i32 148} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!509 = metadata !{i32 786443, metadata !14, metadata !503, i32 73, i32 5, i32 143} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!510 = metadata !{i32 101, i32 13, metadata !511, metadata !504}
!511 = metadata !{i32 786443, metadata !14, metadata !509, i32 100, i32 9, i32 149} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!512 = metadata !{i32 137, i32 5, metadata !491, metadata !492}
!513 = metadata !{i32 137, i32 19, metadata !514, metadata !492}
!514 = metadata !{i32 786443, metadata !14, metadata !491, i32 137, i32 5, i32 135} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!515 = metadata !{i32 146, i32 1, metadata !493, null}
!516 = metadata !{i32 114, i32 22, metadata !517, metadata !518}
!517 = metadata !{i32 786443, metadata !14, metadata !31, i32 109, i32 1, i32 150} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!518 = metadata !{i32 145, i32 5, metadata !519, null}
!519 = metadata !{i32 786443, metadata !14, metadata !53, i32 144, i32 1, i32 234} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!520 = metadata !{i32 115, i32 20, metadata !517, metadata !518}
!521 = metadata !{i32 116, i32 27, metadata !517, metadata !518}
!522 = metadata !{i32 122, i32 5, metadata !517, metadata !518}
!523 = metadata !{i32 124, i32 9, metadata !524, metadata !518}
!524 = metadata !{i32 786443, metadata !14, metadata !517, i32 123, i32 5, i32 151} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!525 = metadata !{i32 128, i32 13, metadata !526, metadata !518}
!526 = metadata !{i32 786443, metadata !14, metadata !524, i32 127, i32 9, i32 152} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!527 = metadata !{i32 130, i32 9, metadata !524, metadata !518}
!528 = metadata !{i32 38, i32 5, metadata !529, metadata !530}
!529 = metadata !{i32 786443, metadata !14, metadata !32, i32 37, i32 1, i32 154} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!530 = metadata !{i32 134, i32 5, metadata !517, metadata !518}
!531 = metadata !{i32 39, i32 5, metadata !529, metadata !530}
!532 = metadata !{i32 72, i32 5, metadata !529, metadata !530}
!533 = metadata !{i32 101, i32 13, metadata !534, metadata !530}
!534 = metadata !{i32 786443, metadata !14, metadata !535, i32 100, i32 9, i32 167} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!535 = metadata !{i32 786443, metadata !14, metadata !529, i32 73, i32 5, i32 161} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!536 = metadata !{i32 137, i32 5, metadata !517, metadata !518}
!537 = metadata !{i32 137, i32 19, metadata !538, metadata !518}
!538 = metadata !{i32 786443, metadata !14, metadata !517, i32 137, i32 5, i32 153} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!539 = metadata !{i32 146, i32 1, metadata !519, null}
!540 = metadata !{i32 114, i32 22, metadata !541, metadata !542}
!541 = metadata !{i32 786443, metadata !14, metadata !33, i32 109, i32 1, i32 168} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!542 = metadata !{i32 145, i32 5, metadata !543, null}
!543 = metadata !{i32 786443, metadata !14, metadata !54, i32 144, i32 1, i32 235} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!544 = metadata !{i32 115, i32 20, metadata !541, metadata !542}
!545 = metadata !{i32 116, i32 27, metadata !541, metadata !542}
!546 = metadata !{i32 122, i32 5, metadata !541, metadata !542}
!547 = metadata !{i32 124, i32 9, metadata !548, metadata !542}
!548 = metadata !{i32 786443, metadata !14, metadata !541, i32 123, i32 5, i32 169} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!549 = metadata !{i32 128, i32 13, metadata !550, metadata !542}
!550 = metadata !{i32 786443, metadata !14, metadata !548, i32 127, i32 9, i32 170} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!551 = metadata !{i32 130, i32 9, metadata !548, metadata !542}
!552 = metadata !{i32 38, i32 5, metadata !553, metadata !554}
!553 = metadata !{i32 786443, metadata !14, metadata !34, i32 37, i32 1, i32 172} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!554 = metadata !{i32 134, i32 5, metadata !541, metadata !542}
!555 = metadata !{i32 39, i32 5, metadata !553, metadata !554}
!556 = metadata !{i32 137, i32 5, metadata !541, metadata !542}
!557 = metadata !{i32 137, i32 19, metadata !558, metadata !542}
!558 = metadata !{i32 786443, metadata !14, metadata !541, i32 137, i32 5, i32 171} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!559 = metadata !{i32 146, i32 1, metadata !543, null}
!560 = metadata !{i32 114, i32 22, metadata !561, metadata !562}
!561 = metadata !{i32 786443, metadata !14, metadata !35, i32 109, i32 1, i32 186} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!562 = metadata !{i32 145, i32 5, metadata !563, null}
!563 = metadata !{i32 786443, metadata !14, metadata !55, i32 144, i32 1, i32 236} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!564 = metadata !{i32 115, i32 20, metadata !561, metadata !562}
!565 = metadata !{i32 116, i32 27, metadata !561, metadata !562}
!566 = metadata !{i32 122, i32 5, metadata !561, metadata !562}
!567 = metadata !{i32 124, i32 9, metadata !568, metadata !562}
!568 = metadata !{i32 786443, metadata !14, metadata !561, i32 123, i32 5, i32 187} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!569 = metadata !{i32 127, i32 9, metadata !568, metadata !562}
!570 = metadata !{i32 128, i32 13, metadata !571, metadata !562}
!571 = metadata !{i32 786443, metadata !14, metadata !568, i32 127, i32 9, i32 188} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!572 = metadata !{i32 130, i32 9, metadata !568, metadata !562}
!573 = metadata !{i32 38, i32 5, metadata !247, metadata !574}
!574 = metadata !{i32 134, i32 5, metadata !561, metadata !562}
!575 = metadata !{i32 39, i32 5, metadata !247, metadata !574}
!576 = metadata !{i32 44, i32 9, metadata !251, metadata !574}
!577 = metadata !{i32 46, i32 13, metadata !253, metadata !574}
!578 = metadata !{i32 49, i32 9, metadata !251, metadata !574}
!579 = metadata !{i32 54, i32 9, metadata !256, metadata !574}
!580 = metadata !{i32 56, i32 13, metadata !258, metadata !574}
!581 = metadata !{i32 59, i32 9, metadata !256, metadata !574}
!582 = metadata !{i32 64, i32 9, metadata !261, metadata !574}
!583 = metadata !{i32 66, i32 13, metadata !263, metadata !574}
!584 = metadata !{i32 69, i32 9, metadata !261, metadata !574}
!585 = metadata !{i32 72, i32 5, metadata !247, metadata !574}
!586 = metadata !{i32 76, i32 13, metadata !267, metadata !574}
!587 = metadata !{i32 81, i32 13, metadata !270, metadata !574}
!588 = metadata !{i32 86, i32 13, metadata !272, metadata !574}
!589 = metadata !{i32 91, i32 13, metadata !274, metadata !574}
!590 = metadata !{i32 96, i32 13, metadata !276, metadata !574}
!591 = metadata !{i32 101, i32 13, metadata !278, metadata !574}
!592 = metadata !{i32 137, i32 5, metadata !561, metadata !562}
!593 = metadata !{i32 137, i32 19, metadata !594, metadata !562}
!594 = metadata !{i32 786443, metadata !14, metadata !561, i32 137, i32 5, i32 189} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!595 = metadata !{i32 146, i32 1, metadata !563, null}
!596 = metadata !{i32 114, i32 22, metadata !597, metadata !598}
!597 = metadata !{i32 786443, metadata !14, metadata !36, i32 109, i32 1, i32 190} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!598 = metadata !{i32 145, i32 5, metadata !599, null}
!599 = metadata !{i32 786443, metadata !14, metadata !56, i32 144, i32 1, i32 237} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!600 = metadata !{i32 115, i32 20, metadata !597, metadata !598}
!601 = metadata !{i32 116, i32 27, metadata !597, metadata !598}
!602 = metadata !{i32 122, i32 5, metadata !597, metadata !598}
!603 = metadata !{i32 124, i32 9, metadata !604, metadata !598}
!604 = metadata !{i32 786443, metadata !14, metadata !597, i32 123, i32 5, i32 191} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!605 = metadata !{i32 127, i32 9, metadata !604, metadata !598}
!606 = metadata !{i32 128, i32 13, metadata !607, metadata !598}
!607 = metadata !{i32 786443, metadata !14, metadata !604, i32 127, i32 9, i32 192} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!608 = metadata !{i32 130, i32 9, metadata !604, metadata !598}
!609 = metadata !{i32 38, i32 5, metadata !296, metadata !610}
!610 = metadata !{i32 134, i32 5, metadata !597, metadata !598}
!611 = metadata !{i32 39, i32 5, metadata !296, metadata !610}
!612 = metadata !{i32 54, i32 9, metadata !300, metadata !610}
!613 = metadata !{i32 56, i32 13, metadata !302, metadata !610}
!614 = metadata !{i32 59, i32 9, metadata !300, metadata !610}
!615 = metadata !{i32 64, i32 9, metadata !305, metadata !610}
!616 = metadata !{i32 66, i32 13, metadata !307, metadata !610}
!617 = metadata !{i32 69, i32 9, metadata !305, metadata !610}
!618 = metadata !{i32 72, i32 5, metadata !296, metadata !610}
!619 = metadata !{i32 76, i32 13, metadata !311, metadata !610}
!620 = metadata !{i32 81, i32 13, metadata !314, metadata !610}
!621 = metadata !{i32 86, i32 13, metadata !316, metadata !610}
!622 = metadata !{i32 91, i32 13, metadata !318, metadata !610}
!623 = metadata !{i32 96, i32 13, metadata !320, metadata !610}
!624 = metadata !{i32 101, i32 13, metadata !322, metadata !610}
!625 = metadata !{i32 137, i32 5, metadata !597, metadata !598}
!626 = metadata !{i32 137, i32 19, metadata !627, metadata !598}
!627 = metadata !{i32 786443, metadata !14, metadata !597, i32 137, i32 5, i32 193} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!628 = metadata !{i32 146, i32 1, metadata !599, null}
!629 = metadata !{i32 114, i32 22, metadata !630, metadata !631}
!630 = metadata !{i32 786443, metadata !14, metadata !37, i32 109, i32 1, i32 194} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!631 = metadata !{i32 145, i32 5, metadata !632, null}
!632 = metadata !{i32 786443, metadata !14, metadata !57, i32 144, i32 1, i32 238} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!633 = metadata !{i32 115, i32 20, metadata !630, metadata !631}
!634 = metadata !{i32 116, i32 27, metadata !630, metadata !631}
!635 = metadata !{i32 122, i32 5, metadata !630, metadata !631}
!636 = metadata !{i32 124, i32 9, metadata !637, metadata !631}
!637 = metadata !{i32 786443, metadata !14, metadata !630, i32 123, i32 5, i32 195} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!638 = metadata !{i32 127, i32 9, metadata !637, metadata !631}
!639 = metadata !{i32 128, i32 13, metadata !640, metadata !631}
!640 = metadata !{i32 786443, metadata !14, metadata !637, i32 127, i32 9, i32 196} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!641 = metadata !{i32 130, i32 9, metadata !637, metadata !631}
!642 = metadata !{i32 38, i32 5, metadata !340, metadata !643}
!643 = metadata !{i32 134, i32 5, metadata !630, metadata !631}
!644 = metadata !{i32 39, i32 5, metadata !340, metadata !643}
!645 = metadata !{i32 64, i32 9, metadata !344, metadata !643}
!646 = metadata !{i32 66, i32 13, metadata !346, metadata !643}
!647 = metadata !{i32 69, i32 9, metadata !344, metadata !643}
!648 = metadata !{i32 72, i32 5, metadata !340, metadata !643}
!649 = metadata !{i32 76, i32 13, metadata !350, metadata !643}
!650 = metadata !{i32 81, i32 13, metadata !353, metadata !643}
!651 = metadata !{i32 86, i32 13, metadata !355, metadata !643}
!652 = metadata !{i32 91, i32 13, metadata !357, metadata !643}
!653 = metadata !{i32 96, i32 13, metadata !359, metadata !643}
!654 = metadata !{i32 101, i32 13, metadata !361, metadata !643}
!655 = metadata !{i32 137, i32 5, metadata !630, metadata !631}
!656 = metadata !{i32 137, i32 19, metadata !657, metadata !631}
!657 = metadata !{i32 786443, metadata !14, metadata !630, i32 137, i32 5, i32 197} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!658 = metadata !{i32 146, i32 1, metadata !632, null}
!659 = metadata !{i32 114, i32 22, metadata !660, metadata !661}
!660 = metadata !{i32 786443, metadata !14, metadata !38, i32 109, i32 1, i32 198} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!661 = metadata !{i32 145, i32 5, metadata !662, null}
!662 = metadata !{i32 786443, metadata !14, metadata !58, i32 144, i32 1, i32 239} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!663 = metadata !{i32 115, i32 20, metadata !660, metadata !661}
!664 = metadata !{i32 116, i32 27, metadata !660, metadata !661}
!665 = metadata !{i32 122, i32 5, metadata !660, metadata !661}
!666 = metadata !{i32 124, i32 9, metadata !667, metadata !661}
!667 = metadata !{i32 786443, metadata !14, metadata !660, i32 123, i32 5, i32 199} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!668 = metadata !{i32 127, i32 9, metadata !667, metadata !661}
!669 = metadata !{i32 128, i32 13, metadata !670, metadata !661}
!670 = metadata !{i32 786443, metadata !14, metadata !667, i32 127, i32 9, i32 200} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!671 = metadata !{i32 130, i32 9, metadata !667, metadata !661}
!672 = metadata !{i32 38, i32 5, metadata !379, metadata !673}
!673 = metadata !{i32 134, i32 5, metadata !660, metadata !661}
!674 = metadata !{i32 39, i32 5, metadata !379, metadata !673}
!675 = metadata !{i32 72, i32 5, metadata !379, metadata !673}
!676 = metadata !{i32 76, i32 13, metadata !384, metadata !673}
!677 = metadata !{i32 81, i32 13, metadata !387, metadata !673}
!678 = metadata !{i32 86, i32 13, metadata !389, metadata !673}
!679 = metadata !{i32 91, i32 13, metadata !391, metadata !673}
!680 = metadata !{i32 96, i32 13, metadata !393, metadata !673}
!681 = metadata !{i32 101, i32 13, metadata !395, metadata !673}
!682 = metadata !{i32 137, i32 5, metadata !660, metadata !661}
!683 = metadata !{i32 137, i32 19, metadata !684, metadata !661}
!684 = metadata !{i32 786443, metadata !14, metadata !660, i32 137, i32 5, i32 201} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!685 = metadata !{i32 146, i32 1, metadata !662, null}
!686 = metadata !{i32 114, i32 22, metadata !687, metadata !688}
!687 = metadata !{i32 786443, metadata !14, metadata !39, i32 109, i32 1, i32 202} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!688 = metadata !{i32 145, i32 5, metadata !689, null}
!689 = metadata !{i32 786443, metadata !14, metadata !59, i32 144, i32 1, i32 240} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!690 = metadata !{i32 115, i32 20, metadata !687, metadata !688}
!691 = metadata !{i32 116, i32 27, metadata !687, metadata !688}
!692 = metadata !{i32 122, i32 5, metadata !687, metadata !688}
!693 = metadata !{i32 124, i32 9, metadata !694, metadata !688}
!694 = metadata !{i32 786443, metadata !14, metadata !687, i32 123, i32 5, i32 203} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!695 = metadata !{i32 127, i32 9, metadata !694, metadata !688}
!696 = metadata !{i32 128, i32 13, metadata !697, metadata !688}
!697 = metadata !{i32 786443, metadata !14, metadata !694, i32 127, i32 9, i32 204} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!698 = metadata !{i32 130, i32 9, metadata !694, metadata !688}
!699 = metadata !{i32 38, i32 5, metadata !413, metadata !700}
!700 = metadata !{i32 134, i32 5, metadata !687, metadata !688}
!701 = metadata !{i32 39, i32 5, metadata !413, metadata !700}
!702 = metadata !{i32 72, i32 5, metadata !413, metadata !700}
!703 = metadata !{i32 81, i32 13, metadata !418, metadata !700}
!704 = metadata !{i32 86, i32 13, metadata !421, metadata !700}
!705 = metadata !{i32 91, i32 13, metadata !423, metadata !700}
!706 = metadata !{i32 96, i32 13, metadata !425, metadata !700}
!707 = metadata !{i32 101, i32 13, metadata !427, metadata !700}
!708 = metadata !{i32 137, i32 5, metadata !687, metadata !688}
!709 = metadata !{i32 137, i32 19, metadata !710, metadata !688}
!710 = metadata !{i32 786443, metadata !14, metadata !687, i32 137, i32 5, i32 205} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!711 = metadata !{i32 146, i32 1, metadata !689, null}
!712 = metadata !{i32 114, i32 22, metadata !713, metadata !714}
!713 = metadata !{i32 786443, metadata !14, metadata !40, i32 109, i32 1, i32 206} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!714 = metadata !{i32 145, i32 5, metadata !715, null}
!715 = metadata !{i32 786443, metadata !14, metadata !60, i32 144, i32 1, i32 241} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!716 = metadata !{i32 115, i32 20, metadata !713, metadata !714}
!717 = metadata !{i32 116, i32 27, metadata !713, metadata !714}
!718 = metadata !{i32 122, i32 5, metadata !713, metadata !714}
!719 = metadata !{i32 124, i32 9, metadata !720, metadata !714}
!720 = metadata !{i32 786443, metadata !14, metadata !713, i32 123, i32 5, i32 207} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!721 = metadata !{i32 127, i32 9, metadata !720, metadata !714}
!722 = metadata !{i32 128, i32 13, metadata !723, metadata !714}
!723 = metadata !{i32 786443, metadata !14, metadata !720, i32 127, i32 9, i32 208} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!724 = metadata !{i32 130, i32 9, metadata !720, metadata !714}
!725 = metadata !{i32 38, i32 5, metadata !445, metadata !726}
!726 = metadata !{i32 134, i32 5, metadata !713, metadata !714}
!727 = metadata !{i32 39, i32 5, metadata !445, metadata !726}
!728 = metadata !{i32 72, i32 5, metadata !445, metadata !726}
!729 = metadata !{i32 86, i32 13, metadata !450, metadata !726}
!730 = metadata !{i32 91, i32 13, metadata !453, metadata !726}
!731 = metadata !{i32 96, i32 13, metadata !455, metadata !726}
!732 = metadata !{i32 101, i32 13, metadata !457, metadata !726}
!733 = metadata !{i32 137, i32 5, metadata !713, metadata !714}
!734 = metadata !{i32 137, i32 19, metadata !735, metadata !714}
!735 = metadata !{i32 786443, metadata !14, metadata !713, i32 137, i32 5, i32 209} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!736 = metadata !{i32 146, i32 1, metadata !715, null}
!737 = metadata !{i32 114, i32 22, metadata !738, metadata !739}
!738 = metadata !{i32 786443, metadata !14, metadata !41, i32 109, i32 1, i32 210} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!739 = metadata !{i32 145, i32 5, metadata !740, null}
!740 = metadata !{i32 786443, metadata !14, metadata !61, i32 144, i32 1, i32 242} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!741 = metadata !{i32 115, i32 20, metadata !738, metadata !739}
!742 = metadata !{i32 116, i32 27, metadata !738, metadata !739}
!743 = metadata !{i32 122, i32 5, metadata !738, metadata !739}
!744 = metadata !{i32 124, i32 9, metadata !745, metadata !739}
!745 = metadata !{i32 786443, metadata !14, metadata !738, i32 123, i32 5, i32 211} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!746 = metadata !{i32 127, i32 9, metadata !745, metadata !739}
!747 = metadata !{i32 128, i32 13, metadata !748, metadata !739}
!748 = metadata !{i32 786443, metadata !14, metadata !745, i32 127, i32 9, i32 212} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!749 = metadata !{i32 130, i32 9, metadata !745, metadata !739}
!750 = metadata !{i32 38, i32 5, metadata !475, metadata !751}
!751 = metadata !{i32 134, i32 5, metadata !738, metadata !739}
!752 = metadata !{i32 39, i32 5, metadata !475, metadata !751}
!753 = metadata !{i32 72, i32 5, metadata !475, metadata !751}
!754 = metadata !{i32 91, i32 13, metadata !480, metadata !751}
!755 = metadata !{i32 96, i32 13, metadata !483, metadata !751}
!756 = metadata !{i32 101, i32 13, metadata !485, metadata !751}
!757 = metadata !{i32 137, i32 5, metadata !738, metadata !739}
!758 = metadata !{i32 137, i32 19, metadata !759, metadata !739}
!759 = metadata !{i32 786443, metadata !14, metadata !738, i32 137, i32 5, i32 213} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!760 = metadata !{i32 146, i32 1, metadata !740, null}
!761 = metadata !{i32 114, i32 22, metadata !762, metadata !763}
!762 = metadata !{i32 786443, metadata !14, metadata !42, i32 109, i32 1, i32 214} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!763 = metadata !{i32 145, i32 5, metadata !764, null}
!764 = metadata !{i32 786443, metadata !14, metadata !62, i32 144, i32 1, i32 243} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!765 = metadata !{i32 115, i32 20, metadata !762, metadata !763}
!766 = metadata !{i32 116, i32 27, metadata !762, metadata !763}
!767 = metadata !{i32 122, i32 5, metadata !762, metadata !763}
!768 = metadata !{i32 124, i32 9, metadata !769, metadata !763}
!769 = metadata !{i32 786443, metadata !14, metadata !762, i32 123, i32 5, i32 215} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!770 = metadata !{i32 127, i32 9, metadata !769, metadata !763}
!771 = metadata !{i32 128, i32 13, metadata !772, metadata !763}
!772 = metadata !{i32 786443, metadata !14, metadata !769, i32 127, i32 9, i32 216} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!773 = metadata !{i32 130, i32 9, metadata !769, metadata !763}
!774 = metadata !{i32 38, i32 5, metadata !503, metadata !775}
!775 = metadata !{i32 134, i32 5, metadata !762, metadata !763}
!776 = metadata !{i32 39, i32 5, metadata !503, metadata !775}
!777 = metadata !{i32 72, i32 5, metadata !503, metadata !775}
!778 = metadata !{i32 96, i32 13, metadata !508, metadata !775}
!779 = metadata !{i32 101, i32 13, metadata !511, metadata !775}
!780 = metadata !{i32 137, i32 5, metadata !762, metadata !763}
!781 = metadata !{i32 137, i32 19, metadata !782, metadata !763}
!782 = metadata !{i32 786443, metadata !14, metadata !762, i32 137, i32 5, i32 217} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!783 = metadata !{i32 146, i32 1, metadata !764, null}
!784 = metadata !{i32 114, i32 22, metadata !785, metadata !786}
!785 = metadata !{i32 786443, metadata !14, metadata !43, i32 109, i32 1, i32 218} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!786 = metadata !{i32 145, i32 5, metadata !787, null}
!787 = metadata !{i32 786443, metadata !14, metadata !63, i32 144, i32 1, i32 244} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!788 = metadata !{i32 115, i32 20, metadata !785, metadata !786}
!789 = metadata !{i32 116, i32 27, metadata !785, metadata !786}
!790 = metadata !{i32 122, i32 5, metadata !785, metadata !786}
!791 = metadata !{i32 124, i32 9, metadata !792, metadata !786}
!792 = metadata !{i32 786443, metadata !14, metadata !785, i32 123, i32 5, i32 219} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!793 = metadata !{i32 127, i32 9, metadata !792, metadata !786}
!794 = metadata !{i32 128, i32 13, metadata !795, metadata !786}
!795 = metadata !{i32 786443, metadata !14, metadata !792, i32 127, i32 9, i32 220} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!796 = metadata !{i32 130, i32 9, metadata !792, metadata !786}
!797 = metadata !{i32 38, i32 5, metadata !529, metadata !798}
!798 = metadata !{i32 134, i32 5, metadata !785, metadata !786}
!799 = metadata !{i32 39, i32 5, metadata !529, metadata !798}
!800 = metadata !{i32 72, i32 5, metadata !529, metadata !798}
!801 = metadata !{i32 101, i32 13, metadata !534, metadata !798}
!802 = metadata !{i32 137, i32 5, metadata !785, metadata !786}
!803 = metadata !{i32 137, i32 19, metadata !804, metadata !786}
!804 = metadata !{i32 786443, metadata !14, metadata !785, i32 137, i32 5, i32 221} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!805 = metadata !{i32 146, i32 1, metadata !787, null}
!806 = metadata !{i32 114, i32 22, metadata !807, metadata !808}
!807 = metadata !{i32 786443, metadata !14, metadata !44, i32 109, i32 1, i32 222} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!808 = metadata !{i32 145, i32 5, metadata !809, null}
!809 = metadata !{i32 786443, metadata !14, metadata !64, i32 144, i32 1, i32 245} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!810 = metadata !{i32 115, i32 20, metadata !807, metadata !808}
!811 = metadata !{i32 116, i32 27, metadata !807, metadata !808}
!812 = metadata !{i32 122, i32 5, metadata !807, metadata !808}
!813 = metadata !{i32 124, i32 9, metadata !814, metadata !808}
!814 = metadata !{i32 786443, metadata !14, metadata !807, i32 123, i32 5, i32 223} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!815 = metadata !{i32 127, i32 9, metadata !814, metadata !808}
!816 = metadata !{i32 128, i32 13, metadata !817, metadata !808}
!817 = metadata !{i32 786443, metadata !14, metadata !814, i32 127, i32 9, i32 224} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!818 = metadata !{i32 130, i32 9, metadata !814, metadata !808}
!819 = metadata !{i32 38, i32 5, metadata !553, metadata !820}
!820 = metadata !{i32 134, i32 5, metadata !807, metadata !808}
!821 = metadata !{i32 39, i32 5, metadata !553, metadata !820}
!822 = metadata !{i32 137, i32 5, metadata !807, metadata !808}
!823 = metadata !{i32 137, i32 19, metadata !824, metadata !808}
!824 = metadata !{i32 786443, metadata !14, metadata !807, i32 137, i32 5, i32 225} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!825 = metadata !{i32 146, i32 1, metadata !809, null}
!826 = metadata !{i32 114, i32 22, metadata !235, metadata !827}
!827 = metadata !{i32 179, i32 5, metadata !828, null}
!828 = metadata !{i32 786443, metadata !14, metadata !65, i32 173, i32 1, i32 246} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!829 = metadata !{i32 115, i32 20, metadata !235, metadata !827}
!830 = metadata !{i32 116, i32 27, metadata !235, metadata !827}
!831 = metadata !{i32 122, i32 5, metadata !235, metadata !827}
!832 = metadata !{i32 124, i32 9, metadata !242, metadata !827}
!833 = metadata !{i32 128, i32 13, metadata !244, metadata !827}
!834 = metadata !{i32 130, i32 9, metadata !242, metadata !827}
!835 = metadata !{i32 38, i32 5, metadata !247, metadata !836}
!836 = metadata !{i32 134, i32 5, metadata !235, metadata !827}
!837 = metadata !{i32 39, i32 5, metadata !247, metadata !836}
!838 = metadata !{i32 44, i32 9, metadata !251, metadata !836}
!839 = metadata !{i32 46, i32 13, metadata !253, metadata !836}
!840 = metadata !{i32 49, i32 9, metadata !251, metadata !836}
!841 = metadata !{i32 54, i32 9, metadata !256, metadata !836}
!842 = metadata !{i32 56, i32 13, metadata !258, metadata !836}
!843 = metadata !{i32 59, i32 9, metadata !256, metadata !836}
!844 = metadata !{i32 64, i32 9, metadata !261, metadata !836}
!845 = metadata !{i32 66, i32 13, metadata !263, metadata !836}
!846 = metadata !{i32 69, i32 9, metadata !261, metadata !836}
!847 = metadata !{i32 72, i32 5, metadata !247, metadata !836}
!848 = metadata !{i32 76, i32 13, metadata !267, metadata !836}
!849 = metadata !{i32 81, i32 13, metadata !270, metadata !836}
!850 = metadata !{i32 86, i32 13, metadata !272, metadata !836}
!851 = metadata !{i32 91, i32 13, metadata !274, metadata !836}
!852 = metadata !{i32 96, i32 13, metadata !276, metadata !836}
!853 = metadata !{i32 101, i32 13, metadata !278, metadata !836}
!854 = metadata !{i32 137, i32 5, metadata !235, metadata !827}
!855 = metadata !{i32 137, i32 19, metadata !281, metadata !827}
!856 = metadata !{i32 185, i32 5, metadata !828, null}
!857 = metadata !{i32 192, i32 9, metadata !858, null}
!858 = metadata !{i32 786443, metadata !14, metadata !828, i32 186, i32 5, i32 247} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!859 = metadata !{i32 195, i32 9, metadata !858, null}
!860 = metadata !{i32 133, i32 10, metadata !861, null}
!861 = metadata !{i32 786443, metadata !862, metadata !863} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!862 = metadata !{metadata !"/home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp", metadata !"/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction"}
!863 = metadata !{i32 786443, metadata !14, metadata !858, i32 196, i32 9, i32 248} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!864 = metadata !{i32 199, i32 13, metadata !865, null}
!865 = metadata !{i32 786443, metadata !14, metadata !863} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!866 = metadata !{i32 202, i32 9, metadata !858, null}
!867 = metadata !{i32 205, i32 9, metadata !858, null}
!868 = metadata !{i32 210, i32 13, metadata !869, null}
!869 = metadata !{i32 786443, metadata !14, metadata !858, i32 206, i32 9, i32 249} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!870 = metadata !{i32 212, i32 17, metadata !871, null}
!871 = metadata !{i32 786443, metadata !14, metadata !869, i32 211, i32 13, i32 250} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!872 = metadata !{i32 213, i32 17, metadata !871, null}
!873 = metadata !{i32 38, i32 5, metadata !247, metadata !874}
!874 = metadata !{i32 216, i32 13, metadata !869, null}
!875 = metadata !{i32 39, i32 5, metadata !247, metadata !874}
!876 = metadata !{i32 44, i32 9, metadata !251, metadata !874}
!877 = metadata !{i32 46, i32 13, metadata !253, metadata !874}
!878 = metadata !{i32 49, i32 9, metadata !251, metadata !874}
!879 = metadata !{i32 54, i32 9, metadata !256, metadata !874}
!880 = metadata !{i32 56, i32 13, metadata !258, metadata !874}
!881 = metadata !{i32 59, i32 9, metadata !256, metadata !874}
!882 = metadata !{i32 64, i32 9, metadata !261, metadata !874}
!883 = metadata !{i32 66, i32 13, metadata !263, metadata !874}
!884 = metadata !{i32 69, i32 9, metadata !261, metadata !874}
!885 = metadata !{i32 72, i32 5, metadata !247, metadata !874}
!886 = metadata !{i32 76, i32 13, metadata !267, metadata !874}
!887 = metadata !{i32 81, i32 13, metadata !270, metadata !874}
!888 = metadata !{i32 86, i32 13, metadata !272, metadata !874}
!889 = metadata !{i32 91, i32 13, metadata !274, metadata !874}
!890 = metadata !{i32 96, i32 13, metadata !276, metadata !874}
!891 = metadata !{i32 101, i32 13, metadata !278, metadata !874}
!892 = metadata !{i32 218, i32 13, metadata !869, null}
!893 = metadata !{i32 220, i32 17, metadata !894, null}
!894 = metadata !{i32 786443, metadata !14, metadata !869, i32 219, i32 13, i32 251} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!895 = metadata !{i32 223, i32 17, metadata !894, null}
!896 = metadata !{i32 227, i32 1, metadata !828, null}
!897 = metadata !{i32 114, i32 22, metadata !284, metadata !898}
!898 = metadata !{i32 179, i32 5, metadata !899, null}
!899 = metadata !{i32 786443, metadata !14, metadata !66, i32 173, i32 1, i32 252} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!900 = metadata !{i32 115, i32 20, metadata !284, metadata !898}
!901 = metadata !{i32 116, i32 27, metadata !284, metadata !898}
!902 = metadata !{i32 122, i32 5, metadata !284, metadata !898}
!903 = metadata !{i32 124, i32 9, metadata !291, metadata !898}
!904 = metadata !{i32 128, i32 13, metadata !293, metadata !898}
!905 = metadata !{i32 130, i32 9, metadata !291, metadata !898}
!906 = metadata !{i32 38, i32 5, metadata !296, metadata !907}
!907 = metadata !{i32 134, i32 5, metadata !284, metadata !898}
!908 = metadata !{i32 39, i32 5, metadata !296, metadata !907}
!909 = metadata !{i32 54, i32 9, metadata !300, metadata !907}
!910 = metadata !{i32 56, i32 13, metadata !302, metadata !907}
!911 = metadata !{i32 59, i32 9, metadata !300, metadata !907}
!912 = metadata !{i32 64, i32 9, metadata !305, metadata !907}
!913 = metadata !{i32 66, i32 13, metadata !307, metadata !907}
!914 = metadata !{i32 69, i32 9, metadata !305, metadata !907}
!915 = metadata !{i32 72, i32 5, metadata !296, metadata !907}
!916 = metadata !{i32 76, i32 13, metadata !311, metadata !907}
!917 = metadata !{i32 81, i32 13, metadata !314, metadata !907}
!918 = metadata !{i32 86, i32 13, metadata !316, metadata !907}
!919 = metadata !{i32 91, i32 13, metadata !318, metadata !907}
!920 = metadata !{i32 96, i32 13, metadata !320, metadata !907}
!921 = metadata !{i32 101, i32 13, metadata !322, metadata !907}
!922 = metadata !{i32 137, i32 5, metadata !284, metadata !898}
!923 = metadata !{i32 137, i32 19, metadata !325, metadata !898}
!924 = metadata !{i32 185, i32 5, metadata !899, null}
!925 = metadata !{i32 192, i32 9, metadata !926, null}
!926 = metadata !{i32 786443, metadata !14, metadata !899, i32 186, i32 5, i32 253} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!927 = metadata !{i32 195, i32 9, metadata !926, null}
!928 = metadata !{i32 133, i32 10, metadata !929, null}
!929 = metadata !{i32 786443, metadata !862, metadata !930} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!930 = metadata !{i32 786443, metadata !14, metadata !926, i32 196, i32 9, i32 254} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!931 = metadata !{i32 199, i32 13, metadata !932, null}
!932 = metadata !{i32 786443, metadata !14, metadata !930} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!933 = metadata !{i32 202, i32 9, metadata !926, null}
!934 = metadata !{i32 205, i32 9, metadata !926, null}
!935 = metadata !{i32 210, i32 13, metadata !936, null}
!936 = metadata !{i32 786443, metadata !14, metadata !926, i32 206, i32 9, i32 255} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!937 = metadata !{i32 212, i32 17, metadata !938, null}
!938 = metadata !{i32 786443, metadata !14, metadata !936, i32 211, i32 13, i32 256} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!939 = metadata !{i32 213, i32 17, metadata !938, null}
!940 = metadata !{i32 38, i32 5, metadata !296, metadata !941}
!941 = metadata !{i32 216, i32 13, metadata !936, null}
!942 = metadata !{i32 39, i32 5, metadata !296, metadata !941}
!943 = metadata !{i32 54, i32 9, metadata !300, metadata !941}
!944 = metadata !{i32 56, i32 13, metadata !302, metadata !941}
!945 = metadata !{i32 59, i32 9, metadata !300, metadata !941}
!946 = metadata !{i32 64, i32 9, metadata !305, metadata !941}
!947 = metadata !{i32 66, i32 13, metadata !307, metadata !941}
!948 = metadata !{i32 69, i32 9, metadata !305, metadata !941}
!949 = metadata !{i32 72, i32 5, metadata !296, metadata !941}
!950 = metadata !{i32 76, i32 13, metadata !311, metadata !941}
!951 = metadata !{i32 81, i32 13, metadata !314, metadata !941}
!952 = metadata !{i32 86, i32 13, metadata !316, metadata !941}
!953 = metadata !{i32 91, i32 13, metadata !318, metadata !941}
!954 = metadata !{i32 96, i32 13, metadata !320, metadata !941}
!955 = metadata !{i32 101, i32 13, metadata !322, metadata !941}
!956 = metadata !{i32 218, i32 13, metadata !936, null}
!957 = metadata !{i32 220, i32 17, metadata !958, null}
!958 = metadata !{i32 786443, metadata !14, metadata !936, i32 219, i32 13, i32 257} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!959 = metadata !{i32 223, i32 17, metadata !958, null}
!960 = metadata !{i32 227, i32 1, metadata !899, null}
!961 = metadata !{i32 114, i32 22, metadata !328, metadata !962}
!962 = metadata !{i32 179, i32 5, metadata !963, null}
!963 = metadata !{i32 786443, metadata !14, metadata !67, i32 173, i32 1, i32 258} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!964 = metadata !{i32 115, i32 20, metadata !328, metadata !962}
!965 = metadata !{i32 116, i32 27, metadata !328, metadata !962}
!966 = metadata !{i32 122, i32 5, metadata !328, metadata !962}
!967 = metadata !{i32 124, i32 9, metadata !335, metadata !962}
!968 = metadata !{i32 128, i32 13, metadata !337, metadata !962}
!969 = metadata !{i32 130, i32 9, metadata !335, metadata !962}
!970 = metadata !{i32 38, i32 5, metadata !340, metadata !971}
!971 = metadata !{i32 134, i32 5, metadata !328, metadata !962}
!972 = metadata !{i32 39, i32 5, metadata !340, metadata !971}
!973 = metadata !{i32 64, i32 9, metadata !344, metadata !971}
!974 = metadata !{i32 66, i32 13, metadata !346, metadata !971}
!975 = metadata !{i32 69, i32 9, metadata !344, metadata !971}
!976 = metadata !{i32 72, i32 5, metadata !340, metadata !971}
!977 = metadata !{i32 76, i32 13, metadata !350, metadata !971}
!978 = metadata !{i32 81, i32 13, metadata !353, metadata !971}
!979 = metadata !{i32 86, i32 13, metadata !355, metadata !971}
!980 = metadata !{i32 91, i32 13, metadata !357, metadata !971}
!981 = metadata !{i32 96, i32 13, metadata !359, metadata !971}
!982 = metadata !{i32 101, i32 13, metadata !361, metadata !971}
!983 = metadata !{i32 137, i32 5, metadata !328, metadata !962}
!984 = metadata !{i32 137, i32 19, metadata !364, metadata !962}
!985 = metadata !{i32 185, i32 5, metadata !963, null}
!986 = metadata !{i32 192, i32 9, metadata !987, null}
!987 = metadata !{i32 786443, metadata !14, metadata !963, i32 186, i32 5, i32 259} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!988 = metadata !{i32 195, i32 9, metadata !987, null}
!989 = metadata !{i32 133, i32 10, metadata !990, null}
!990 = metadata !{i32 786443, metadata !862, metadata !991} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!991 = metadata !{i32 786443, metadata !14, metadata !987, i32 196, i32 9, i32 260} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!992 = metadata !{i32 199, i32 13, metadata !993, null}
!993 = metadata !{i32 786443, metadata !14, metadata !991} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!994 = metadata !{i32 202, i32 9, metadata !987, null}
!995 = metadata !{i32 205, i32 9, metadata !987, null}
!996 = metadata !{i32 210, i32 13, metadata !997, null}
!997 = metadata !{i32 786443, metadata !14, metadata !987, i32 206, i32 9, i32 261} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!998 = metadata !{i32 212, i32 17, metadata !999, null}
!999 = metadata !{i32 786443, metadata !14, metadata !997, i32 211, i32 13, i32 262} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1000 = metadata !{i32 213, i32 17, metadata !999, null}
!1001 = metadata !{i32 38, i32 5, metadata !340, metadata !1002}
!1002 = metadata !{i32 216, i32 13, metadata !997, null}
!1003 = metadata !{i32 39, i32 5, metadata !340, metadata !1002}
!1004 = metadata !{i32 64, i32 9, metadata !344, metadata !1002}
!1005 = metadata !{i32 66, i32 13, metadata !346, metadata !1002}
!1006 = metadata !{i32 69, i32 9, metadata !344, metadata !1002}
!1007 = metadata !{i32 72, i32 5, metadata !340, metadata !1002}
!1008 = metadata !{i32 76, i32 13, metadata !350, metadata !1002}
!1009 = metadata !{i32 81, i32 13, metadata !353, metadata !1002}
!1010 = metadata !{i32 86, i32 13, metadata !355, metadata !1002}
!1011 = metadata !{i32 91, i32 13, metadata !357, metadata !1002}
!1012 = metadata !{i32 96, i32 13, metadata !359, metadata !1002}
!1013 = metadata !{i32 101, i32 13, metadata !361, metadata !1002}
!1014 = metadata !{i32 218, i32 13, metadata !997, null}
!1015 = metadata !{i32 220, i32 17, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !14, metadata !997, i32 219, i32 13, i32 263} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1017 = metadata !{i32 223, i32 17, metadata !1016, null}
!1018 = metadata !{i32 227, i32 1, metadata !963, null}
!1019 = metadata !{i32 114, i32 22, metadata !367, metadata !1020}
!1020 = metadata !{i32 179, i32 5, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !14, metadata !68, i32 173, i32 1, i32 264} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1022 = metadata !{i32 115, i32 20, metadata !367, metadata !1020}
!1023 = metadata !{i32 116, i32 27, metadata !367, metadata !1020}
!1024 = metadata !{i32 122, i32 5, metadata !367, metadata !1020}
!1025 = metadata !{i32 124, i32 9, metadata !374, metadata !1020}
!1026 = metadata !{i32 128, i32 13, metadata !376, metadata !1020}
!1027 = metadata !{i32 130, i32 9, metadata !374, metadata !1020}
!1028 = metadata !{i32 38, i32 5, metadata !379, metadata !1029}
!1029 = metadata !{i32 134, i32 5, metadata !367, metadata !1020}
!1030 = metadata !{i32 39, i32 5, metadata !379, metadata !1029}
!1031 = metadata !{i32 72, i32 5, metadata !379, metadata !1029}
!1032 = metadata !{i32 76, i32 13, metadata !384, metadata !1029}
!1033 = metadata !{i32 81, i32 13, metadata !387, metadata !1029}
!1034 = metadata !{i32 86, i32 13, metadata !389, metadata !1029}
!1035 = metadata !{i32 91, i32 13, metadata !391, metadata !1029}
!1036 = metadata !{i32 96, i32 13, metadata !393, metadata !1029}
!1037 = metadata !{i32 101, i32 13, metadata !395, metadata !1029}
!1038 = metadata !{i32 137, i32 5, metadata !367, metadata !1020}
!1039 = metadata !{i32 137, i32 19, metadata !398, metadata !1020}
!1040 = metadata !{i32 185, i32 5, metadata !1021, null}
!1041 = metadata !{i32 192, i32 9, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !14, metadata !1021, i32 186, i32 5, i32 265} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1043 = metadata !{i32 195, i32 9, metadata !1042, null}
!1044 = metadata !{i32 133, i32 10, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !862, metadata !1046} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1046 = metadata !{i32 786443, metadata !14, metadata !1042, i32 196, i32 9, i32 266} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1047 = metadata !{i32 199, i32 13, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !14, metadata !1046} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1049 = metadata !{i32 202, i32 9, metadata !1042, null}
!1050 = metadata !{i32 205, i32 9, metadata !1042, null}
!1051 = metadata !{i32 210, i32 13, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !14, metadata !1042, i32 206, i32 9, i32 267} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1053 = metadata !{i32 212, i32 17, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !14, metadata !1052, i32 211, i32 13, i32 268} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1055 = metadata !{i32 213, i32 17, metadata !1054, null}
!1056 = metadata !{i32 38, i32 5, metadata !379, metadata !1057}
!1057 = metadata !{i32 216, i32 13, metadata !1052, null}
!1058 = metadata !{i32 39, i32 5, metadata !379, metadata !1057}
!1059 = metadata !{i32 72, i32 5, metadata !379, metadata !1057}
!1060 = metadata !{i32 76, i32 13, metadata !384, metadata !1057}
!1061 = metadata !{i32 81, i32 13, metadata !387, metadata !1057}
!1062 = metadata !{i32 86, i32 13, metadata !389, metadata !1057}
!1063 = metadata !{i32 91, i32 13, metadata !391, metadata !1057}
!1064 = metadata !{i32 96, i32 13, metadata !393, metadata !1057}
!1065 = metadata !{i32 101, i32 13, metadata !395, metadata !1057}
!1066 = metadata !{i32 218, i32 13, metadata !1052, null}
!1067 = metadata !{i32 220, i32 17, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !14, metadata !1052, i32 219, i32 13, i32 269} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1069 = metadata !{i32 223, i32 17, metadata !1068, null}
!1070 = metadata !{i32 227, i32 1, metadata !1021, null}
!1071 = metadata !{i32 114, i32 22, metadata !401, metadata !1072}
!1072 = metadata !{i32 179, i32 5, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !14, metadata !69, i32 173, i32 1, i32 270} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1074 = metadata !{i32 115, i32 20, metadata !401, metadata !1072}
!1075 = metadata !{i32 116, i32 27, metadata !401, metadata !1072}
!1076 = metadata !{i32 122, i32 5, metadata !401, metadata !1072}
!1077 = metadata !{i32 124, i32 9, metadata !408, metadata !1072}
!1078 = metadata !{i32 128, i32 13, metadata !410, metadata !1072}
!1079 = metadata !{i32 130, i32 9, metadata !408, metadata !1072}
!1080 = metadata !{i32 38, i32 5, metadata !413, metadata !1081}
!1081 = metadata !{i32 134, i32 5, metadata !401, metadata !1072}
!1082 = metadata !{i32 39, i32 5, metadata !413, metadata !1081}
!1083 = metadata !{i32 72, i32 5, metadata !413, metadata !1081}
!1084 = metadata !{i32 81, i32 13, metadata !418, metadata !1081}
!1085 = metadata !{i32 86, i32 13, metadata !421, metadata !1081}
!1086 = metadata !{i32 91, i32 13, metadata !423, metadata !1081}
!1087 = metadata !{i32 96, i32 13, metadata !425, metadata !1081}
!1088 = metadata !{i32 101, i32 13, metadata !427, metadata !1081}
!1089 = metadata !{i32 137, i32 5, metadata !401, metadata !1072}
!1090 = metadata !{i32 137, i32 19, metadata !430, metadata !1072}
!1091 = metadata !{i32 185, i32 5, metadata !1073, null}
!1092 = metadata !{i32 192, i32 9, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !14, metadata !1073, i32 186, i32 5, i32 271} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1094 = metadata !{i32 195, i32 9, metadata !1093, null}
!1095 = metadata !{i32 133, i32 10, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !862, metadata !1097} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1097 = metadata !{i32 786443, metadata !14, metadata !1093, i32 196, i32 9, i32 272} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1098 = metadata !{i32 199, i32 13, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !14, metadata !1097} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1100 = metadata !{i32 202, i32 9, metadata !1093, null}
!1101 = metadata !{i32 205, i32 9, metadata !1093, null}
!1102 = metadata !{i32 210, i32 13, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !14, metadata !1093, i32 206, i32 9, i32 273} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1104 = metadata !{i32 212, i32 17, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !14, metadata !1103, i32 211, i32 13, i32 274} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1106 = metadata !{i32 213, i32 17, metadata !1105, null}
!1107 = metadata !{i32 38, i32 5, metadata !413, metadata !1108}
!1108 = metadata !{i32 216, i32 13, metadata !1103, null}
!1109 = metadata !{i32 39, i32 5, metadata !413, metadata !1108}
!1110 = metadata !{i32 72, i32 5, metadata !413, metadata !1108}
!1111 = metadata !{i32 81, i32 13, metadata !418, metadata !1108}
!1112 = metadata !{i32 86, i32 13, metadata !421, metadata !1108}
!1113 = metadata !{i32 91, i32 13, metadata !423, metadata !1108}
!1114 = metadata !{i32 96, i32 13, metadata !425, metadata !1108}
!1115 = metadata !{i32 101, i32 13, metadata !427, metadata !1108}
!1116 = metadata !{i32 218, i32 13, metadata !1103, null}
!1117 = metadata !{i32 220, i32 17, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !14, metadata !1103, i32 219, i32 13, i32 275} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1119 = metadata !{i32 223, i32 17, metadata !1118, null}
!1120 = metadata !{i32 227, i32 1, metadata !1073, null}
!1121 = metadata !{i32 114, i32 22, metadata !433, metadata !1122}
!1122 = metadata !{i32 179, i32 5, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !14, metadata !70, i32 173, i32 1, i32 276} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1124 = metadata !{i32 115, i32 20, metadata !433, metadata !1122}
!1125 = metadata !{i32 116, i32 27, metadata !433, metadata !1122}
!1126 = metadata !{i32 122, i32 5, metadata !433, metadata !1122}
!1127 = metadata !{i32 124, i32 9, metadata !440, metadata !1122}
!1128 = metadata !{i32 128, i32 13, metadata !442, metadata !1122}
!1129 = metadata !{i32 130, i32 9, metadata !440, metadata !1122}
!1130 = metadata !{i32 38, i32 5, metadata !445, metadata !1131}
!1131 = metadata !{i32 134, i32 5, metadata !433, metadata !1122}
!1132 = metadata !{i32 39, i32 5, metadata !445, metadata !1131}
!1133 = metadata !{i32 72, i32 5, metadata !445, metadata !1131}
!1134 = metadata !{i32 86, i32 13, metadata !450, metadata !1131}
!1135 = metadata !{i32 91, i32 13, metadata !453, metadata !1131}
!1136 = metadata !{i32 96, i32 13, metadata !455, metadata !1131}
!1137 = metadata !{i32 101, i32 13, metadata !457, metadata !1131}
!1138 = metadata !{i32 137, i32 5, metadata !433, metadata !1122}
!1139 = metadata !{i32 137, i32 19, metadata !460, metadata !1122}
!1140 = metadata !{i32 185, i32 5, metadata !1123, null}
!1141 = metadata !{i32 192, i32 9, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !14, metadata !1123, i32 186, i32 5, i32 277} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1143 = metadata !{i32 195, i32 9, metadata !1142, null}
!1144 = metadata !{i32 133, i32 10, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !862, metadata !1146} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1146 = metadata !{i32 786443, metadata !14, metadata !1142, i32 196, i32 9, i32 278} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1147 = metadata !{i32 199, i32 13, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !14, metadata !1146} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1149 = metadata !{i32 202, i32 9, metadata !1142, null}
!1150 = metadata !{i32 205, i32 9, metadata !1142, null}
!1151 = metadata !{i32 210, i32 13, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !14, metadata !1142, i32 206, i32 9, i32 279} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1153 = metadata !{i32 212, i32 17, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !14, metadata !1152, i32 211, i32 13, i32 280} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1155 = metadata !{i32 213, i32 17, metadata !1154, null}
!1156 = metadata !{i32 38, i32 5, metadata !445, metadata !1157}
!1157 = metadata !{i32 216, i32 13, metadata !1152, null}
!1158 = metadata !{i32 39, i32 5, metadata !445, metadata !1157}
!1159 = metadata !{i32 72, i32 5, metadata !445, metadata !1157}
!1160 = metadata !{i32 86, i32 13, metadata !450, metadata !1157}
!1161 = metadata !{i32 91, i32 13, metadata !453, metadata !1157}
!1162 = metadata !{i32 96, i32 13, metadata !455, metadata !1157}
!1163 = metadata !{i32 101, i32 13, metadata !457, metadata !1157}
!1164 = metadata !{i32 218, i32 13, metadata !1152, null}
!1165 = metadata !{i32 220, i32 17, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !14, metadata !1152, i32 219, i32 13, i32 281} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1167 = metadata !{i32 223, i32 17, metadata !1166, null}
!1168 = metadata !{i32 227, i32 1, metadata !1123, null}
!1169 = metadata !{i32 114, i32 22, metadata !463, metadata !1170}
!1170 = metadata !{i32 179, i32 5, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !14, metadata !71, i32 173, i32 1, i32 282} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1172 = metadata !{i32 115, i32 20, metadata !463, metadata !1170}
!1173 = metadata !{i32 116, i32 27, metadata !463, metadata !1170}
!1174 = metadata !{i32 122, i32 5, metadata !463, metadata !1170}
!1175 = metadata !{i32 124, i32 9, metadata !470, metadata !1170}
!1176 = metadata !{i32 128, i32 13, metadata !472, metadata !1170}
!1177 = metadata !{i32 130, i32 9, metadata !470, metadata !1170}
!1178 = metadata !{i32 38, i32 5, metadata !475, metadata !1179}
!1179 = metadata !{i32 134, i32 5, metadata !463, metadata !1170}
!1180 = metadata !{i32 39, i32 5, metadata !475, metadata !1179}
!1181 = metadata !{i32 72, i32 5, metadata !475, metadata !1179}
!1182 = metadata !{i32 91, i32 13, metadata !480, metadata !1179}
!1183 = metadata !{i32 96, i32 13, metadata !483, metadata !1179}
!1184 = metadata !{i32 101, i32 13, metadata !485, metadata !1179}
!1185 = metadata !{i32 137, i32 5, metadata !463, metadata !1170}
!1186 = metadata !{i32 137, i32 19, metadata !488, metadata !1170}
!1187 = metadata !{i32 185, i32 5, metadata !1171, null}
!1188 = metadata !{i32 192, i32 9, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !14, metadata !1171, i32 186, i32 5, i32 283} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1190 = metadata !{i32 195, i32 9, metadata !1189, null}
!1191 = metadata !{i32 133, i32 10, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !862, metadata !1193} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1193 = metadata !{i32 786443, metadata !14, metadata !1189, i32 196, i32 9, i32 284} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1194 = metadata !{i32 199, i32 13, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !14, metadata !1193} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1196 = metadata !{i32 202, i32 9, metadata !1189, null}
!1197 = metadata !{i32 205, i32 9, metadata !1189, null}
!1198 = metadata !{i32 210, i32 13, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !14, metadata !1189, i32 206, i32 9, i32 285} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1200 = metadata !{i32 212, i32 17, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !14, metadata !1199, i32 211, i32 13, i32 286} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1202 = metadata !{i32 213, i32 17, metadata !1201, null}
!1203 = metadata !{i32 38, i32 5, metadata !475, metadata !1204}
!1204 = metadata !{i32 216, i32 13, metadata !1199, null}
!1205 = metadata !{i32 39, i32 5, metadata !475, metadata !1204}
!1206 = metadata !{i32 72, i32 5, metadata !475, metadata !1204}
!1207 = metadata !{i32 91, i32 13, metadata !480, metadata !1204}
!1208 = metadata !{i32 96, i32 13, metadata !483, metadata !1204}
!1209 = metadata !{i32 101, i32 13, metadata !485, metadata !1204}
!1210 = metadata !{i32 218, i32 13, metadata !1199, null}
!1211 = metadata !{i32 220, i32 17, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !14, metadata !1199, i32 219, i32 13, i32 287} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1213 = metadata !{i32 223, i32 17, metadata !1212, null}
!1214 = metadata !{i32 227, i32 1, metadata !1171, null}
!1215 = metadata !{i32 114, i32 22, metadata !491, metadata !1216}
!1216 = metadata !{i32 179, i32 5, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !14, metadata !72, i32 173, i32 1, i32 288} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1218 = metadata !{i32 115, i32 20, metadata !491, metadata !1216}
!1219 = metadata !{i32 116, i32 27, metadata !491, metadata !1216}
!1220 = metadata !{i32 122, i32 5, metadata !491, metadata !1216}
!1221 = metadata !{i32 124, i32 9, metadata !498, metadata !1216}
!1222 = metadata !{i32 128, i32 13, metadata !500, metadata !1216}
!1223 = metadata !{i32 130, i32 9, metadata !498, metadata !1216}
!1224 = metadata !{i32 38, i32 5, metadata !503, metadata !1225}
!1225 = metadata !{i32 134, i32 5, metadata !491, metadata !1216}
!1226 = metadata !{i32 39, i32 5, metadata !503, metadata !1225}
!1227 = metadata !{i32 72, i32 5, metadata !503, metadata !1225}
!1228 = metadata !{i32 96, i32 13, metadata !508, metadata !1225}
!1229 = metadata !{i32 101, i32 13, metadata !511, metadata !1225}
!1230 = metadata !{i32 137, i32 5, metadata !491, metadata !1216}
!1231 = metadata !{i32 137, i32 19, metadata !514, metadata !1216}
!1232 = metadata !{i32 185, i32 5, metadata !1217, null}
!1233 = metadata !{i32 192, i32 9, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !14, metadata !1217, i32 186, i32 5, i32 289} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1235 = metadata !{i32 195, i32 9, metadata !1234, null}
!1236 = metadata !{i32 133, i32 10, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !862, metadata !1238} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1238 = metadata !{i32 786443, metadata !14, metadata !1234, i32 196, i32 9, i32 290} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1239 = metadata !{i32 199, i32 13, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !14, metadata !1238} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1241 = metadata !{i32 202, i32 9, metadata !1234, null}
!1242 = metadata !{i32 205, i32 9, metadata !1234, null}
!1243 = metadata !{i32 210, i32 13, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !14, metadata !1234, i32 206, i32 9, i32 291} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1245 = metadata !{i32 212, i32 17, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !14, metadata !1244, i32 211, i32 13, i32 292} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1247 = metadata !{i32 213, i32 17, metadata !1246, null}
!1248 = metadata !{i32 38, i32 5, metadata !503, metadata !1249}
!1249 = metadata !{i32 216, i32 13, metadata !1244, null}
!1250 = metadata !{i32 39, i32 5, metadata !503, metadata !1249}
!1251 = metadata !{i32 72, i32 5, metadata !503, metadata !1249}
!1252 = metadata !{i32 96, i32 13, metadata !508, metadata !1249}
!1253 = metadata !{i32 101, i32 13, metadata !511, metadata !1249}
!1254 = metadata !{i32 218, i32 13, metadata !1244, null}
!1255 = metadata !{i32 220, i32 17, metadata !1256, null}
!1256 = metadata !{i32 786443, metadata !14, metadata !1244, i32 219, i32 13, i32 293} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1257 = metadata !{i32 223, i32 17, metadata !1256, null}
!1258 = metadata !{i32 227, i32 1, metadata !1217, null}
!1259 = metadata !{i32 114, i32 22, metadata !517, metadata !1260}
!1260 = metadata !{i32 179, i32 5, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !14, metadata !73, i32 173, i32 1, i32 294} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1262 = metadata !{i32 115, i32 20, metadata !517, metadata !1260}
!1263 = metadata !{i32 116, i32 27, metadata !517, metadata !1260}
!1264 = metadata !{i32 122, i32 5, metadata !517, metadata !1260}
!1265 = metadata !{i32 124, i32 9, metadata !524, metadata !1260}
!1266 = metadata !{i32 128, i32 13, metadata !526, metadata !1260}
!1267 = metadata !{i32 130, i32 9, metadata !524, metadata !1260}
!1268 = metadata !{i32 38, i32 5, metadata !529, metadata !1269}
!1269 = metadata !{i32 134, i32 5, metadata !517, metadata !1260}
!1270 = metadata !{i32 39, i32 5, metadata !529, metadata !1269}
!1271 = metadata !{i32 72, i32 5, metadata !529, metadata !1269}
!1272 = metadata !{i32 101, i32 13, metadata !534, metadata !1269}
!1273 = metadata !{i32 137, i32 5, metadata !517, metadata !1260}
!1274 = metadata !{i32 137, i32 19, metadata !538, metadata !1260}
!1275 = metadata !{i32 185, i32 5, metadata !1261, null}
!1276 = metadata !{i32 192, i32 9, metadata !1277, null}
!1277 = metadata !{i32 786443, metadata !14, metadata !1261, i32 186, i32 5, i32 295} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1278 = metadata !{i32 195, i32 9, metadata !1277, null}
!1279 = metadata !{i32 133, i32 10, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !862, metadata !1281} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1281 = metadata !{i32 786443, metadata !14, metadata !1277, i32 196, i32 9, i32 296} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1282 = metadata !{i32 199, i32 13, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !14, metadata !1281} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1284 = metadata !{i32 202, i32 9, metadata !1277, null}
!1285 = metadata !{i32 205, i32 9, metadata !1277, null}
!1286 = metadata !{i32 210, i32 13, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !14, metadata !1277, i32 206, i32 9, i32 297} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1288 = metadata !{i32 212, i32 17, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !14, metadata !1287, i32 211, i32 13, i32 298} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1290 = metadata !{i32 213, i32 17, metadata !1289, null}
!1291 = metadata !{i32 38, i32 5, metadata !529, metadata !1292}
!1292 = metadata !{i32 216, i32 13, metadata !1287, null}
!1293 = metadata !{i32 39, i32 5, metadata !529, metadata !1292}
!1294 = metadata !{i32 72, i32 5, metadata !529, metadata !1292}
!1295 = metadata !{i32 101, i32 13, metadata !534, metadata !1292}
!1296 = metadata !{i32 218, i32 13, metadata !1287, null}
!1297 = metadata !{i32 220, i32 17, metadata !1298, null}
!1298 = metadata !{i32 786443, metadata !14, metadata !1287, i32 219, i32 13, i32 299} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1299 = metadata !{i32 223, i32 17, metadata !1298, null}
!1300 = metadata !{i32 227, i32 1, metadata !1261, null}
!1301 = metadata !{i32 114, i32 22, metadata !541, metadata !1302}
!1302 = metadata !{i32 179, i32 5, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !14, metadata !74, i32 173, i32 1, i32 300} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1304 = metadata !{i32 115, i32 20, metadata !541, metadata !1302}
!1305 = metadata !{i32 116, i32 27, metadata !541, metadata !1302}
!1306 = metadata !{i32 122, i32 5, metadata !541, metadata !1302}
!1307 = metadata !{i32 124, i32 9, metadata !548, metadata !1302}
!1308 = metadata !{i32 128, i32 13, metadata !550, metadata !1302}
!1309 = metadata !{i32 130, i32 9, metadata !548, metadata !1302}
!1310 = metadata !{i32 38, i32 5, metadata !553, metadata !1311}
!1311 = metadata !{i32 134, i32 5, metadata !541, metadata !1302}
!1312 = metadata !{i32 39, i32 5, metadata !553, metadata !1311}
!1313 = metadata !{i32 137, i32 5, metadata !541, metadata !1302}
!1314 = metadata !{i32 137, i32 19, metadata !558, metadata !1302}
!1315 = metadata !{i32 185, i32 5, metadata !1303, null}
!1316 = metadata !{i32 192, i32 9, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !14, metadata !1303, i32 186, i32 5, i32 301} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1318 = metadata !{i32 195, i32 9, metadata !1317, null}
!1319 = metadata !{i32 133, i32 10, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !862, metadata !1321} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1321 = metadata !{i32 786443, metadata !14, metadata !1317, i32 196, i32 9, i32 302} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1322 = metadata !{i32 199, i32 13, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !14, metadata !1321} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1324 = metadata !{i32 202, i32 9, metadata !1317, null}
!1325 = metadata !{i32 205, i32 9, metadata !1317, null}
!1326 = metadata !{i32 210, i32 13, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !14, metadata !1317, i32 206, i32 9, i32 303} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1328 = metadata !{i32 212, i32 17, metadata !1329, null}
!1329 = metadata !{i32 786443, metadata !14, metadata !1327, i32 211, i32 13, i32 304} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1330 = metadata !{i32 213, i32 17, metadata !1329, null}
!1331 = metadata !{i32 38, i32 5, metadata !553, metadata !1332}
!1332 = metadata !{i32 216, i32 13, metadata !1327, null}
!1333 = metadata !{i32 39, i32 5, metadata !553, metadata !1332}
!1334 = metadata !{i32 218, i32 13, metadata !1327, null}
!1335 = metadata !{i32 220, i32 17, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !14, metadata !1327, i32 219, i32 13, i32 305} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1337 = metadata !{i32 223, i32 17, metadata !1336, null}
!1338 = metadata !{i32 227, i32 1, metadata !1303, null}
!1339 = metadata !{i32 114, i32 22, metadata !561, metadata !1340}
!1340 = metadata !{i32 179, i32 5, metadata !1341, null}
!1341 = metadata !{i32 786443, metadata !14, metadata !75, i32 173, i32 1, i32 306} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1342 = metadata !{i32 115, i32 20, metadata !561, metadata !1340}
!1343 = metadata !{i32 116, i32 27, metadata !561, metadata !1340}
!1344 = metadata !{i32 122, i32 5, metadata !561, metadata !1340}
!1345 = metadata !{i32 124, i32 9, metadata !568, metadata !1340}
!1346 = metadata !{i32 127, i32 9, metadata !568, metadata !1340}
!1347 = metadata !{i32 128, i32 13, metadata !571, metadata !1340}
!1348 = metadata !{i32 130, i32 9, metadata !568, metadata !1340}
!1349 = metadata !{i32 38, i32 5, metadata !247, metadata !1350}
!1350 = metadata !{i32 134, i32 5, metadata !561, metadata !1340}
!1351 = metadata !{i32 39, i32 5, metadata !247, metadata !1350}
!1352 = metadata !{i32 44, i32 9, metadata !251, metadata !1350}
!1353 = metadata !{i32 46, i32 13, metadata !253, metadata !1350}
!1354 = metadata !{i32 49, i32 9, metadata !251, metadata !1350}
!1355 = metadata !{i32 54, i32 9, metadata !256, metadata !1350}
!1356 = metadata !{i32 56, i32 13, metadata !258, metadata !1350}
!1357 = metadata !{i32 59, i32 9, metadata !256, metadata !1350}
!1358 = metadata !{i32 64, i32 9, metadata !261, metadata !1350}
!1359 = metadata !{i32 66, i32 13, metadata !263, metadata !1350}
!1360 = metadata !{i32 69, i32 9, metadata !261, metadata !1350}
!1361 = metadata !{i32 72, i32 5, metadata !247, metadata !1350}
!1362 = metadata !{i32 76, i32 13, metadata !267, metadata !1350}
!1363 = metadata !{i32 81, i32 13, metadata !270, metadata !1350}
!1364 = metadata !{i32 86, i32 13, metadata !272, metadata !1350}
!1365 = metadata !{i32 91, i32 13, metadata !274, metadata !1350}
!1366 = metadata !{i32 96, i32 13, metadata !276, metadata !1350}
!1367 = metadata !{i32 101, i32 13, metadata !278, metadata !1350}
!1368 = metadata !{i32 137, i32 5, metadata !561, metadata !1340}
!1369 = metadata !{i32 137, i32 19, metadata !594, metadata !1340}
!1370 = metadata !{i32 185, i32 5, metadata !1341, null}
!1371 = metadata !{i32 192, i32 9, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !14, metadata !1341, i32 186, i32 5, i32 307} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1373 = metadata !{i32 195, i32 9, metadata !1372, null}
!1374 = metadata !{i32 133, i32 10, metadata !1375, null}
!1375 = metadata !{i32 786443, metadata !862, metadata !1376} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1376 = metadata !{i32 786443, metadata !14, metadata !1372, i32 196, i32 9, i32 308} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1377 = metadata !{i32 199, i32 13, metadata !1378, null}
!1378 = metadata !{i32 786443, metadata !14, metadata !1376} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1379 = metadata !{i32 202, i32 9, metadata !1372, null}
!1380 = metadata !{i32 205, i32 9, metadata !1372, null}
!1381 = metadata !{i32 210, i32 13, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !14, metadata !1372, i32 206, i32 9, i32 309} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1383 = metadata !{i32 212, i32 17, metadata !1384, null}
!1384 = metadata !{i32 786443, metadata !14, metadata !1382, i32 211, i32 13, i32 310} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1385 = metadata !{i32 213, i32 17, metadata !1384, null}
!1386 = metadata !{i32 38, i32 5, metadata !247, metadata !1387}
!1387 = metadata !{i32 216, i32 13, metadata !1382, null}
!1388 = metadata !{i32 39, i32 5, metadata !247, metadata !1387}
!1389 = metadata !{i32 44, i32 9, metadata !251, metadata !1387}
!1390 = metadata !{i32 46, i32 13, metadata !253, metadata !1387}
!1391 = metadata !{i32 49, i32 9, metadata !251, metadata !1387}
!1392 = metadata !{i32 54, i32 9, metadata !256, metadata !1387}
!1393 = metadata !{i32 56, i32 13, metadata !258, metadata !1387}
!1394 = metadata !{i32 59, i32 9, metadata !256, metadata !1387}
!1395 = metadata !{i32 64, i32 9, metadata !261, metadata !1387}
!1396 = metadata !{i32 66, i32 13, metadata !263, metadata !1387}
!1397 = metadata !{i32 69, i32 9, metadata !261, metadata !1387}
!1398 = metadata !{i32 72, i32 5, metadata !247, metadata !1387}
!1399 = metadata !{i32 76, i32 13, metadata !267, metadata !1387}
!1400 = metadata !{i32 81, i32 13, metadata !270, metadata !1387}
!1401 = metadata !{i32 86, i32 13, metadata !272, metadata !1387}
!1402 = metadata !{i32 91, i32 13, metadata !274, metadata !1387}
!1403 = metadata !{i32 96, i32 13, metadata !276, metadata !1387}
!1404 = metadata !{i32 101, i32 13, metadata !278, metadata !1387}
!1405 = metadata !{i32 218, i32 13, metadata !1382, null}
!1406 = metadata !{i32 220, i32 17, metadata !1407, null}
!1407 = metadata !{i32 786443, metadata !14, metadata !1382, i32 219, i32 13, i32 311} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1408 = metadata !{i32 223, i32 17, metadata !1407, null}
!1409 = metadata !{i32 227, i32 1, metadata !1341, null}
!1410 = metadata !{i32 114, i32 22, metadata !597, metadata !1411}
!1411 = metadata !{i32 179, i32 5, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !14, metadata !76, i32 173, i32 1, i32 312} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1413 = metadata !{i32 115, i32 20, metadata !597, metadata !1411}
!1414 = metadata !{i32 116, i32 27, metadata !597, metadata !1411}
!1415 = metadata !{i32 122, i32 5, metadata !597, metadata !1411}
!1416 = metadata !{i32 124, i32 9, metadata !604, metadata !1411}
!1417 = metadata !{i32 127, i32 9, metadata !604, metadata !1411}
!1418 = metadata !{i32 128, i32 13, metadata !607, metadata !1411}
!1419 = metadata !{i32 130, i32 9, metadata !604, metadata !1411}
!1420 = metadata !{i32 38, i32 5, metadata !296, metadata !1421}
!1421 = metadata !{i32 134, i32 5, metadata !597, metadata !1411}
!1422 = metadata !{i32 39, i32 5, metadata !296, metadata !1421}
!1423 = metadata !{i32 54, i32 9, metadata !300, metadata !1421}
!1424 = metadata !{i32 56, i32 13, metadata !302, metadata !1421}
!1425 = metadata !{i32 59, i32 9, metadata !300, metadata !1421}
!1426 = metadata !{i32 64, i32 9, metadata !305, metadata !1421}
!1427 = metadata !{i32 66, i32 13, metadata !307, metadata !1421}
!1428 = metadata !{i32 69, i32 9, metadata !305, metadata !1421}
!1429 = metadata !{i32 72, i32 5, metadata !296, metadata !1421}
!1430 = metadata !{i32 76, i32 13, metadata !311, metadata !1421}
!1431 = metadata !{i32 81, i32 13, metadata !314, metadata !1421}
!1432 = metadata !{i32 86, i32 13, metadata !316, metadata !1421}
!1433 = metadata !{i32 91, i32 13, metadata !318, metadata !1421}
!1434 = metadata !{i32 96, i32 13, metadata !320, metadata !1421}
!1435 = metadata !{i32 101, i32 13, metadata !322, metadata !1421}
!1436 = metadata !{i32 137, i32 5, metadata !597, metadata !1411}
!1437 = metadata !{i32 137, i32 19, metadata !627, metadata !1411}
!1438 = metadata !{i32 185, i32 5, metadata !1412, null}
!1439 = metadata !{i32 192, i32 9, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !14, metadata !1412, i32 186, i32 5, i32 313} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1441 = metadata !{i32 195, i32 9, metadata !1440, null}
!1442 = metadata !{i32 133, i32 10, metadata !1443, null}
!1443 = metadata !{i32 786443, metadata !862, metadata !1444} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1444 = metadata !{i32 786443, metadata !14, metadata !1440, i32 196, i32 9, i32 314} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1445 = metadata !{i32 199, i32 13, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !14, metadata !1444} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1447 = metadata !{i32 202, i32 9, metadata !1440, null}
!1448 = metadata !{i32 205, i32 9, metadata !1440, null}
!1449 = metadata !{i32 210, i32 13, metadata !1450, null}
!1450 = metadata !{i32 786443, metadata !14, metadata !1440, i32 206, i32 9, i32 315} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1451 = metadata !{i32 212, i32 17, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !14, metadata !1450, i32 211, i32 13, i32 316} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1453 = metadata !{i32 213, i32 17, metadata !1452, null}
!1454 = metadata !{i32 38, i32 5, metadata !296, metadata !1455}
!1455 = metadata !{i32 216, i32 13, metadata !1450, null}
!1456 = metadata !{i32 39, i32 5, metadata !296, metadata !1455}
!1457 = metadata !{i32 54, i32 9, metadata !300, metadata !1455}
!1458 = metadata !{i32 56, i32 13, metadata !302, metadata !1455}
!1459 = metadata !{i32 59, i32 9, metadata !300, metadata !1455}
!1460 = metadata !{i32 64, i32 9, metadata !305, metadata !1455}
!1461 = metadata !{i32 66, i32 13, metadata !307, metadata !1455}
!1462 = metadata !{i32 69, i32 9, metadata !305, metadata !1455}
!1463 = metadata !{i32 72, i32 5, metadata !296, metadata !1455}
!1464 = metadata !{i32 76, i32 13, metadata !311, metadata !1455}
!1465 = metadata !{i32 81, i32 13, metadata !314, metadata !1455}
!1466 = metadata !{i32 86, i32 13, metadata !316, metadata !1455}
!1467 = metadata !{i32 91, i32 13, metadata !318, metadata !1455}
!1468 = metadata !{i32 96, i32 13, metadata !320, metadata !1455}
!1469 = metadata !{i32 101, i32 13, metadata !322, metadata !1455}
!1470 = metadata !{i32 218, i32 13, metadata !1450, null}
!1471 = metadata !{i32 220, i32 17, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !14, metadata !1450, i32 219, i32 13, i32 317} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1473 = metadata !{i32 223, i32 17, metadata !1472, null}
!1474 = metadata !{i32 227, i32 1, metadata !1412, null}
!1475 = metadata !{i32 114, i32 22, metadata !630, metadata !1476}
!1476 = metadata !{i32 179, i32 5, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !14, metadata !77, i32 173, i32 1, i32 318} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1478 = metadata !{i32 115, i32 20, metadata !630, metadata !1476}
!1479 = metadata !{i32 116, i32 27, metadata !630, metadata !1476}
!1480 = metadata !{i32 122, i32 5, metadata !630, metadata !1476}
!1481 = metadata !{i32 124, i32 9, metadata !637, metadata !1476}
!1482 = metadata !{i32 127, i32 9, metadata !637, metadata !1476}
!1483 = metadata !{i32 128, i32 13, metadata !640, metadata !1476}
!1484 = metadata !{i32 130, i32 9, metadata !637, metadata !1476}
!1485 = metadata !{i32 38, i32 5, metadata !340, metadata !1486}
!1486 = metadata !{i32 134, i32 5, metadata !630, metadata !1476}
!1487 = metadata !{i32 39, i32 5, metadata !340, metadata !1486}
!1488 = metadata !{i32 64, i32 9, metadata !344, metadata !1486}
!1489 = metadata !{i32 66, i32 13, metadata !346, metadata !1486}
!1490 = metadata !{i32 69, i32 9, metadata !344, metadata !1486}
!1491 = metadata !{i32 72, i32 5, metadata !340, metadata !1486}
!1492 = metadata !{i32 76, i32 13, metadata !350, metadata !1486}
!1493 = metadata !{i32 81, i32 13, metadata !353, metadata !1486}
!1494 = metadata !{i32 86, i32 13, metadata !355, metadata !1486}
!1495 = metadata !{i32 91, i32 13, metadata !357, metadata !1486}
!1496 = metadata !{i32 96, i32 13, metadata !359, metadata !1486}
!1497 = metadata !{i32 101, i32 13, metadata !361, metadata !1486}
!1498 = metadata !{i32 137, i32 5, metadata !630, metadata !1476}
!1499 = metadata !{i32 137, i32 19, metadata !657, metadata !1476}
!1500 = metadata !{i32 185, i32 5, metadata !1477, null}
!1501 = metadata !{i32 192, i32 9, metadata !1502, null}
!1502 = metadata !{i32 786443, metadata !14, metadata !1477, i32 186, i32 5, i32 319} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1503 = metadata !{i32 195, i32 9, metadata !1502, null}
!1504 = metadata !{i32 133, i32 10, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !862, metadata !1506} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1506 = metadata !{i32 786443, metadata !14, metadata !1502, i32 196, i32 9, i32 320} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1507 = metadata !{i32 199, i32 13, metadata !1508, null}
!1508 = metadata !{i32 786443, metadata !14, metadata !1506} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1509 = metadata !{i32 202, i32 9, metadata !1502, null}
!1510 = metadata !{i32 205, i32 9, metadata !1502, null}
!1511 = metadata !{i32 210, i32 13, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !14, metadata !1502, i32 206, i32 9, i32 321} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1513 = metadata !{i32 212, i32 17, metadata !1514, null}
!1514 = metadata !{i32 786443, metadata !14, metadata !1512, i32 211, i32 13, i32 322} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1515 = metadata !{i32 213, i32 17, metadata !1514, null}
!1516 = metadata !{i32 38, i32 5, metadata !340, metadata !1517}
!1517 = metadata !{i32 216, i32 13, metadata !1512, null}
!1518 = metadata !{i32 39, i32 5, metadata !340, metadata !1517}
!1519 = metadata !{i32 64, i32 9, metadata !344, metadata !1517}
!1520 = metadata !{i32 66, i32 13, metadata !346, metadata !1517}
!1521 = metadata !{i32 69, i32 9, metadata !344, metadata !1517}
!1522 = metadata !{i32 72, i32 5, metadata !340, metadata !1517}
!1523 = metadata !{i32 76, i32 13, metadata !350, metadata !1517}
!1524 = metadata !{i32 81, i32 13, metadata !353, metadata !1517}
!1525 = metadata !{i32 86, i32 13, metadata !355, metadata !1517}
!1526 = metadata !{i32 91, i32 13, metadata !357, metadata !1517}
!1527 = metadata !{i32 96, i32 13, metadata !359, metadata !1517}
!1528 = metadata !{i32 101, i32 13, metadata !361, metadata !1517}
!1529 = metadata !{i32 218, i32 13, metadata !1512, null}
!1530 = metadata !{i32 220, i32 17, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !14, metadata !1512, i32 219, i32 13, i32 323} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1532 = metadata !{i32 223, i32 17, metadata !1531, null}
!1533 = metadata !{i32 227, i32 1, metadata !1477, null}
!1534 = metadata !{i32 114, i32 22, metadata !660, metadata !1535}
!1535 = metadata !{i32 179, i32 5, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !14, metadata !78, i32 173, i32 1, i32 324} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1537 = metadata !{i32 115, i32 20, metadata !660, metadata !1535}
!1538 = metadata !{i32 116, i32 27, metadata !660, metadata !1535}
!1539 = metadata !{i32 122, i32 5, metadata !660, metadata !1535}
!1540 = metadata !{i32 124, i32 9, metadata !667, metadata !1535}
!1541 = metadata !{i32 127, i32 9, metadata !667, metadata !1535}
!1542 = metadata !{i32 128, i32 13, metadata !670, metadata !1535}
!1543 = metadata !{i32 130, i32 9, metadata !667, metadata !1535}
!1544 = metadata !{i32 38, i32 5, metadata !379, metadata !1545}
!1545 = metadata !{i32 134, i32 5, metadata !660, metadata !1535}
!1546 = metadata !{i32 39, i32 5, metadata !379, metadata !1545}
!1547 = metadata !{i32 72, i32 5, metadata !379, metadata !1545}
!1548 = metadata !{i32 76, i32 13, metadata !384, metadata !1545}
!1549 = metadata !{i32 81, i32 13, metadata !387, metadata !1545}
!1550 = metadata !{i32 86, i32 13, metadata !389, metadata !1545}
!1551 = metadata !{i32 91, i32 13, metadata !391, metadata !1545}
!1552 = metadata !{i32 96, i32 13, metadata !393, metadata !1545}
!1553 = metadata !{i32 101, i32 13, metadata !395, metadata !1545}
!1554 = metadata !{i32 137, i32 5, metadata !660, metadata !1535}
!1555 = metadata !{i32 137, i32 19, metadata !684, metadata !1535}
!1556 = metadata !{i32 185, i32 5, metadata !1536, null}
!1557 = metadata !{i32 192, i32 9, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !14, metadata !1536, i32 186, i32 5, i32 325} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1559 = metadata !{i32 195, i32 9, metadata !1558, null}
!1560 = metadata !{i32 133, i32 10, metadata !1561, null}
!1561 = metadata !{i32 786443, metadata !862, metadata !1562} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1562 = metadata !{i32 786443, metadata !14, metadata !1558, i32 196, i32 9, i32 326} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1563 = metadata !{i32 199, i32 13, metadata !1564, null}
!1564 = metadata !{i32 786443, metadata !14, metadata !1562} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1565 = metadata !{i32 202, i32 9, metadata !1558, null}
!1566 = metadata !{i32 205, i32 9, metadata !1558, null}
!1567 = metadata !{i32 210, i32 13, metadata !1568, null}
!1568 = metadata !{i32 786443, metadata !14, metadata !1558, i32 206, i32 9, i32 327} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1569 = metadata !{i32 212, i32 17, metadata !1570, null}
!1570 = metadata !{i32 786443, metadata !14, metadata !1568, i32 211, i32 13, i32 328} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1571 = metadata !{i32 213, i32 17, metadata !1570, null}
!1572 = metadata !{i32 38, i32 5, metadata !379, metadata !1573}
!1573 = metadata !{i32 216, i32 13, metadata !1568, null}
!1574 = metadata !{i32 39, i32 5, metadata !379, metadata !1573}
!1575 = metadata !{i32 72, i32 5, metadata !379, metadata !1573}
!1576 = metadata !{i32 76, i32 13, metadata !384, metadata !1573}
!1577 = metadata !{i32 81, i32 13, metadata !387, metadata !1573}
!1578 = metadata !{i32 86, i32 13, metadata !389, metadata !1573}
!1579 = metadata !{i32 91, i32 13, metadata !391, metadata !1573}
!1580 = metadata !{i32 96, i32 13, metadata !393, metadata !1573}
!1581 = metadata !{i32 101, i32 13, metadata !395, metadata !1573}
!1582 = metadata !{i32 218, i32 13, metadata !1568, null}
!1583 = metadata !{i32 220, i32 17, metadata !1584, null}
!1584 = metadata !{i32 786443, metadata !14, metadata !1568, i32 219, i32 13, i32 329} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1585 = metadata !{i32 223, i32 17, metadata !1584, null}
!1586 = metadata !{i32 227, i32 1, metadata !1536, null}
!1587 = metadata !{i32 114, i32 22, metadata !687, metadata !1588}
!1588 = metadata !{i32 179, i32 5, metadata !1589, null}
!1589 = metadata !{i32 786443, metadata !14, metadata !79, i32 173, i32 1, i32 330} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1590 = metadata !{i32 115, i32 20, metadata !687, metadata !1588}
!1591 = metadata !{i32 116, i32 27, metadata !687, metadata !1588}
!1592 = metadata !{i32 122, i32 5, metadata !687, metadata !1588}
!1593 = metadata !{i32 124, i32 9, metadata !694, metadata !1588}
!1594 = metadata !{i32 127, i32 9, metadata !694, metadata !1588}
!1595 = metadata !{i32 128, i32 13, metadata !697, metadata !1588}
!1596 = metadata !{i32 130, i32 9, metadata !694, metadata !1588}
!1597 = metadata !{i32 38, i32 5, metadata !413, metadata !1598}
!1598 = metadata !{i32 134, i32 5, metadata !687, metadata !1588}
!1599 = metadata !{i32 39, i32 5, metadata !413, metadata !1598}
!1600 = metadata !{i32 72, i32 5, metadata !413, metadata !1598}
!1601 = metadata !{i32 81, i32 13, metadata !418, metadata !1598}
!1602 = metadata !{i32 86, i32 13, metadata !421, metadata !1598}
!1603 = metadata !{i32 91, i32 13, metadata !423, metadata !1598}
!1604 = metadata !{i32 96, i32 13, metadata !425, metadata !1598}
!1605 = metadata !{i32 101, i32 13, metadata !427, metadata !1598}
!1606 = metadata !{i32 137, i32 5, metadata !687, metadata !1588}
!1607 = metadata !{i32 137, i32 19, metadata !710, metadata !1588}
!1608 = metadata !{i32 185, i32 5, metadata !1589, null}
!1609 = metadata !{i32 192, i32 9, metadata !1610, null}
!1610 = metadata !{i32 786443, metadata !14, metadata !1589, i32 186, i32 5, i32 331} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1611 = metadata !{i32 195, i32 9, metadata !1610, null}
!1612 = metadata !{i32 133, i32 10, metadata !1613, null}
!1613 = metadata !{i32 786443, metadata !862, metadata !1614} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1614 = metadata !{i32 786443, metadata !14, metadata !1610, i32 196, i32 9, i32 332} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1615 = metadata !{i32 199, i32 13, metadata !1616, null}
!1616 = metadata !{i32 786443, metadata !14, metadata !1614} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1617 = metadata !{i32 202, i32 9, metadata !1610, null}
!1618 = metadata !{i32 205, i32 9, metadata !1610, null}
!1619 = metadata !{i32 210, i32 13, metadata !1620, null}
!1620 = metadata !{i32 786443, metadata !14, metadata !1610, i32 206, i32 9, i32 333} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1621 = metadata !{i32 212, i32 17, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !14, metadata !1620, i32 211, i32 13, i32 334} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1623 = metadata !{i32 213, i32 17, metadata !1622, null}
!1624 = metadata !{i32 38, i32 5, metadata !413, metadata !1625}
!1625 = metadata !{i32 216, i32 13, metadata !1620, null}
!1626 = metadata !{i32 39, i32 5, metadata !413, metadata !1625}
!1627 = metadata !{i32 72, i32 5, metadata !413, metadata !1625}
!1628 = metadata !{i32 81, i32 13, metadata !418, metadata !1625}
!1629 = metadata !{i32 86, i32 13, metadata !421, metadata !1625}
!1630 = metadata !{i32 91, i32 13, metadata !423, metadata !1625}
!1631 = metadata !{i32 96, i32 13, metadata !425, metadata !1625}
!1632 = metadata !{i32 101, i32 13, metadata !427, metadata !1625}
!1633 = metadata !{i32 218, i32 13, metadata !1620, null}
!1634 = metadata !{i32 220, i32 17, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !14, metadata !1620, i32 219, i32 13, i32 335} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1636 = metadata !{i32 223, i32 17, metadata !1635, null}
!1637 = metadata !{i32 227, i32 1, metadata !1589, null}
!1638 = metadata !{i32 114, i32 22, metadata !713, metadata !1639}
!1639 = metadata !{i32 179, i32 5, metadata !1640, null}
!1640 = metadata !{i32 786443, metadata !14, metadata !80, i32 173, i32 1, i32 336} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1641 = metadata !{i32 115, i32 20, metadata !713, metadata !1639}
!1642 = metadata !{i32 116, i32 27, metadata !713, metadata !1639}
!1643 = metadata !{i32 122, i32 5, metadata !713, metadata !1639}
!1644 = metadata !{i32 124, i32 9, metadata !720, metadata !1639}
!1645 = metadata !{i32 127, i32 9, metadata !720, metadata !1639}
!1646 = metadata !{i32 128, i32 13, metadata !723, metadata !1639}
!1647 = metadata !{i32 130, i32 9, metadata !720, metadata !1639}
!1648 = metadata !{i32 38, i32 5, metadata !445, metadata !1649}
!1649 = metadata !{i32 134, i32 5, metadata !713, metadata !1639}
!1650 = metadata !{i32 39, i32 5, metadata !445, metadata !1649}
!1651 = metadata !{i32 72, i32 5, metadata !445, metadata !1649}
!1652 = metadata !{i32 86, i32 13, metadata !450, metadata !1649}
!1653 = metadata !{i32 91, i32 13, metadata !453, metadata !1649}
!1654 = metadata !{i32 96, i32 13, metadata !455, metadata !1649}
!1655 = metadata !{i32 101, i32 13, metadata !457, metadata !1649}
!1656 = metadata !{i32 137, i32 5, metadata !713, metadata !1639}
!1657 = metadata !{i32 137, i32 19, metadata !735, metadata !1639}
!1658 = metadata !{i32 185, i32 5, metadata !1640, null}
!1659 = metadata !{i32 192, i32 9, metadata !1660, null}
!1660 = metadata !{i32 786443, metadata !14, metadata !1640, i32 186, i32 5, i32 337} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1661 = metadata !{i32 195, i32 9, metadata !1660, null}
!1662 = metadata !{i32 133, i32 10, metadata !1663, null}
!1663 = metadata !{i32 786443, metadata !862, metadata !1664} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1664 = metadata !{i32 786443, metadata !14, metadata !1660, i32 196, i32 9, i32 338} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1665 = metadata !{i32 199, i32 13, metadata !1666, null}
!1666 = metadata !{i32 786443, metadata !14, metadata !1664} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1667 = metadata !{i32 202, i32 9, metadata !1660, null}
!1668 = metadata !{i32 205, i32 9, metadata !1660, null}
!1669 = metadata !{i32 210, i32 13, metadata !1670, null}
!1670 = metadata !{i32 786443, metadata !14, metadata !1660, i32 206, i32 9, i32 339} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1671 = metadata !{i32 212, i32 17, metadata !1672, null}
!1672 = metadata !{i32 786443, metadata !14, metadata !1670, i32 211, i32 13, i32 340} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1673 = metadata !{i32 213, i32 17, metadata !1672, null}
!1674 = metadata !{i32 38, i32 5, metadata !445, metadata !1675}
!1675 = metadata !{i32 216, i32 13, metadata !1670, null}
!1676 = metadata !{i32 39, i32 5, metadata !445, metadata !1675}
!1677 = metadata !{i32 72, i32 5, metadata !445, metadata !1675}
!1678 = metadata !{i32 86, i32 13, metadata !450, metadata !1675}
!1679 = metadata !{i32 91, i32 13, metadata !453, metadata !1675}
!1680 = metadata !{i32 96, i32 13, metadata !455, metadata !1675}
!1681 = metadata !{i32 101, i32 13, metadata !457, metadata !1675}
!1682 = metadata !{i32 218, i32 13, metadata !1670, null}
!1683 = metadata !{i32 220, i32 17, metadata !1684, null}
!1684 = metadata !{i32 786443, metadata !14, metadata !1670, i32 219, i32 13, i32 341} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1685 = metadata !{i32 223, i32 17, metadata !1684, null}
!1686 = metadata !{i32 227, i32 1, metadata !1640, null}
!1687 = metadata !{i32 114, i32 22, metadata !738, metadata !1688}
!1688 = metadata !{i32 179, i32 5, metadata !1689, null}
!1689 = metadata !{i32 786443, metadata !14, metadata !81, i32 173, i32 1, i32 342} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1690 = metadata !{i32 115, i32 20, metadata !738, metadata !1688}
!1691 = metadata !{i32 116, i32 27, metadata !738, metadata !1688}
!1692 = metadata !{i32 122, i32 5, metadata !738, metadata !1688}
!1693 = metadata !{i32 124, i32 9, metadata !745, metadata !1688}
!1694 = metadata !{i32 127, i32 9, metadata !745, metadata !1688}
!1695 = metadata !{i32 128, i32 13, metadata !748, metadata !1688}
!1696 = metadata !{i32 130, i32 9, metadata !745, metadata !1688}
!1697 = metadata !{i32 38, i32 5, metadata !475, metadata !1698}
!1698 = metadata !{i32 134, i32 5, metadata !738, metadata !1688}
!1699 = metadata !{i32 39, i32 5, metadata !475, metadata !1698}
!1700 = metadata !{i32 72, i32 5, metadata !475, metadata !1698}
!1701 = metadata !{i32 91, i32 13, metadata !480, metadata !1698}
!1702 = metadata !{i32 96, i32 13, metadata !483, metadata !1698}
!1703 = metadata !{i32 101, i32 13, metadata !485, metadata !1698}
!1704 = metadata !{i32 137, i32 5, metadata !738, metadata !1688}
!1705 = metadata !{i32 137, i32 19, metadata !759, metadata !1688}
!1706 = metadata !{i32 185, i32 5, metadata !1689, null}
!1707 = metadata !{i32 192, i32 9, metadata !1708, null}
!1708 = metadata !{i32 786443, metadata !14, metadata !1689, i32 186, i32 5, i32 343} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1709 = metadata !{i32 195, i32 9, metadata !1708, null}
!1710 = metadata !{i32 133, i32 10, metadata !1711, null}
!1711 = metadata !{i32 786443, metadata !862, metadata !1712} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1712 = metadata !{i32 786443, metadata !14, metadata !1708, i32 196, i32 9, i32 344} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1713 = metadata !{i32 199, i32 13, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !14, metadata !1712} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1715 = metadata !{i32 202, i32 9, metadata !1708, null}
!1716 = metadata !{i32 205, i32 9, metadata !1708, null}
!1717 = metadata !{i32 210, i32 13, metadata !1718, null}
!1718 = metadata !{i32 786443, metadata !14, metadata !1708, i32 206, i32 9, i32 345} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1719 = metadata !{i32 212, i32 17, metadata !1720, null}
!1720 = metadata !{i32 786443, metadata !14, metadata !1718, i32 211, i32 13, i32 346} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1721 = metadata !{i32 213, i32 17, metadata !1720, null}
!1722 = metadata !{i32 38, i32 5, metadata !475, metadata !1723}
!1723 = metadata !{i32 216, i32 13, metadata !1718, null}
!1724 = metadata !{i32 39, i32 5, metadata !475, metadata !1723}
!1725 = metadata !{i32 72, i32 5, metadata !475, metadata !1723}
!1726 = metadata !{i32 91, i32 13, metadata !480, metadata !1723}
!1727 = metadata !{i32 96, i32 13, metadata !483, metadata !1723}
!1728 = metadata !{i32 101, i32 13, metadata !485, metadata !1723}
!1729 = metadata !{i32 218, i32 13, metadata !1718, null}
!1730 = metadata !{i32 220, i32 17, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !14, metadata !1718, i32 219, i32 13, i32 347} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1732 = metadata !{i32 223, i32 17, metadata !1731, null}
!1733 = metadata !{i32 227, i32 1, metadata !1689, null}
!1734 = metadata !{i32 114, i32 22, metadata !762, metadata !1735}
!1735 = metadata !{i32 179, i32 5, metadata !1736, null}
!1736 = metadata !{i32 786443, metadata !14, metadata !82, i32 173, i32 1, i32 348} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1737 = metadata !{i32 115, i32 20, metadata !762, metadata !1735}
!1738 = metadata !{i32 116, i32 27, metadata !762, metadata !1735}
!1739 = metadata !{i32 122, i32 5, metadata !762, metadata !1735}
!1740 = metadata !{i32 124, i32 9, metadata !769, metadata !1735}
!1741 = metadata !{i32 127, i32 9, metadata !769, metadata !1735}
!1742 = metadata !{i32 128, i32 13, metadata !772, metadata !1735}
!1743 = metadata !{i32 130, i32 9, metadata !769, metadata !1735}
!1744 = metadata !{i32 38, i32 5, metadata !503, metadata !1745}
!1745 = metadata !{i32 134, i32 5, metadata !762, metadata !1735}
!1746 = metadata !{i32 39, i32 5, metadata !503, metadata !1745}
!1747 = metadata !{i32 72, i32 5, metadata !503, metadata !1745}
!1748 = metadata !{i32 96, i32 13, metadata !508, metadata !1745}
!1749 = metadata !{i32 101, i32 13, metadata !511, metadata !1745}
!1750 = metadata !{i32 137, i32 5, metadata !762, metadata !1735}
!1751 = metadata !{i32 137, i32 19, metadata !782, metadata !1735}
!1752 = metadata !{i32 185, i32 5, metadata !1736, null}
!1753 = metadata !{i32 192, i32 9, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !14, metadata !1736, i32 186, i32 5, i32 349} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1755 = metadata !{i32 195, i32 9, metadata !1754, null}
!1756 = metadata !{i32 133, i32 10, metadata !1757, null}
!1757 = metadata !{i32 786443, metadata !862, metadata !1758} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1758 = metadata !{i32 786443, metadata !14, metadata !1754, i32 196, i32 9, i32 350} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1759 = metadata !{i32 199, i32 13, metadata !1760, null}
!1760 = metadata !{i32 786443, metadata !14, metadata !1758} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1761 = metadata !{i32 202, i32 9, metadata !1754, null}
!1762 = metadata !{i32 205, i32 9, metadata !1754, null}
!1763 = metadata !{i32 210, i32 13, metadata !1764, null}
!1764 = metadata !{i32 786443, metadata !14, metadata !1754, i32 206, i32 9, i32 351} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1765 = metadata !{i32 212, i32 17, metadata !1766, null}
!1766 = metadata !{i32 786443, metadata !14, metadata !1764, i32 211, i32 13, i32 352} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1767 = metadata !{i32 213, i32 17, metadata !1766, null}
!1768 = metadata !{i32 38, i32 5, metadata !503, metadata !1769}
!1769 = metadata !{i32 216, i32 13, metadata !1764, null}
!1770 = metadata !{i32 39, i32 5, metadata !503, metadata !1769}
!1771 = metadata !{i32 72, i32 5, metadata !503, metadata !1769}
!1772 = metadata !{i32 96, i32 13, metadata !508, metadata !1769}
!1773 = metadata !{i32 101, i32 13, metadata !511, metadata !1769}
!1774 = metadata !{i32 218, i32 13, metadata !1764, null}
!1775 = metadata !{i32 220, i32 17, metadata !1776, null}
!1776 = metadata !{i32 786443, metadata !14, metadata !1764, i32 219, i32 13, i32 353} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1777 = metadata !{i32 223, i32 17, metadata !1776, null}
!1778 = metadata !{i32 227, i32 1, metadata !1736, null}
!1779 = metadata !{i32 114, i32 22, metadata !785, metadata !1780}
!1780 = metadata !{i32 179, i32 5, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !14, metadata !83, i32 173, i32 1, i32 354} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1782 = metadata !{i32 115, i32 20, metadata !785, metadata !1780}
!1783 = metadata !{i32 116, i32 27, metadata !785, metadata !1780}
!1784 = metadata !{i32 122, i32 5, metadata !785, metadata !1780}
!1785 = metadata !{i32 124, i32 9, metadata !792, metadata !1780}
!1786 = metadata !{i32 127, i32 9, metadata !792, metadata !1780}
!1787 = metadata !{i32 128, i32 13, metadata !795, metadata !1780}
!1788 = metadata !{i32 130, i32 9, metadata !792, metadata !1780}
!1789 = metadata !{i32 38, i32 5, metadata !529, metadata !1790}
!1790 = metadata !{i32 134, i32 5, metadata !785, metadata !1780}
!1791 = metadata !{i32 39, i32 5, metadata !529, metadata !1790}
!1792 = metadata !{i32 72, i32 5, metadata !529, metadata !1790}
!1793 = metadata !{i32 101, i32 13, metadata !534, metadata !1790}
!1794 = metadata !{i32 137, i32 5, metadata !785, metadata !1780}
!1795 = metadata !{i32 137, i32 19, metadata !804, metadata !1780}
!1796 = metadata !{i32 185, i32 5, metadata !1781, null}
!1797 = metadata !{i32 192, i32 9, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !14, metadata !1781, i32 186, i32 5, i32 355} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1799 = metadata !{i32 195, i32 9, metadata !1798, null}
!1800 = metadata !{i32 133, i32 10, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !862, metadata !1802} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1802 = metadata !{i32 786443, metadata !14, metadata !1798, i32 196, i32 9, i32 356} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1803 = metadata !{i32 199, i32 13, metadata !1804, null}
!1804 = metadata !{i32 786443, metadata !14, metadata !1802} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1805 = metadata !{i32 202, i32 9, metadata !1798, null}
!1806 = metadata !{i32 205, i32 9, metadata !1798, null}
!1807 = metadata !{i32 210, i32 13, metadata !1808, null}
!1808 = metadata !{i32 786443, metadata !14, metadata !1798, i32 206, i32 9, i32 357} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1809 = metadata !{i32 212, i32 17, metadata !1810, null}
!1810 = metadata !{i32 786443, metadata !14, metadata !1808, i32 211, i32 13, i32 358} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1811 = metadata !{i32 213, i32 17, metadata !1810, null}
!1812 = metadata !{i32 38, i32 5, metadata !529, metadata !1813}
!1813 = metadata !{i32 216, i32 13, metadata !1808, null}
!1814 = metadata !{i32 39, i32 5, metadata !529, metadata !1813}
!1815 = metadata !{i32 72, i32 5, metadata !529, metadata !1813}
!1816 = metadata !{i32 101, i32 13, metadata !534, metadata !1813}
!1817 = metadata !{i32 218, i32 13, metadata !1808, null}
!1818 = metadata !{i32 220, i32 17, metadata !1819, null}
!1819 = metadata !{i32 786443, metadata !14, metadata !1808, i32 219, i32 13, i32 359} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1820 = metadata !{i32 223, i32 17, metadata !1819, null}
!1821 = metadata !{i32 227, i32 1, metadata !1781, null}
!1822 = metadata !{i32 114, i32 22, metadata !807, metadata !1823}
!1823 = metadata !{i32 179, i32 5, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !14, metadata !84, i32 173, i32 1, i32 360} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1825 = metadata !{i32 115, i32 20, metadata !807, metadata !1823}
!1826 = metadata !{i32 116, i32 27, metadata !807, metadata !1823}
!1827 = metadata !{i32 122, i32 5, metadata !807, metadata !1823}
!1828 = metadata !{i32 124, i32 9, metadata !814, metadata !1823}
!1829 = metadata !{i32 127, i32 9, metadata !814, metadata !1823}
!1830 = metadata !{i32 128, i32 13, metadata !817, metadata !1823}
!1831 = metadata !{i32 130, i32 9, metadata !814, metadata !1823}
!1832 = metadata !{i32 38, i32 5, metadata !553, metadata !1833}
!1833 = metadata !{i32 134, i32 5, metadata !807, metadata !1823}
!1834 = metadata !{i32 39, i32 5, metadata !553, metadata !1833}
!1835 = metadata !{i32 137, i32 5, metadata !807, metadata !1823}
!1836 = metadata !{i32 137, i32 19, metadata !824, metadata !1823}
!1837 = metadata !{i32 185, i32 5, metadata !1824, null}
!1838 = metadata !{i32 192, i32 9, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !14, metadata !1824, i32 186, i32 5, i32 361} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1840 = metadata !{i32 195, i32 9, metadata !1839, null}
!1841 = metadata !{i32 133, i32 10, metadata !1842, null}
!1842 = metadata !{i32 786443, metadata !862, metadata !1843} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction//home/yuanfengp/clients/sw/gpgpu/bin/x86_64_Linux_debug/../../cuda/tools/cudart/device_atomic_functions.hpp]
!1843 = metadata !{i32 786443, metadata !14, metadata !1839, i32 196, i32 9, i32 362} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1844 = metadata !{i32 199, i32 13, metadata !1845, null}
!1845 = metadata !{i32 786443, metadata !14, metadata !1843} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1846 = metadata !{i32 202, i32 9, metadata !1839, null}
!1847 = metadata !{i32 205, i32 9, metadata !1839, null}
!1848 = metadata !{i32 210, i32 13, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !14, metadata !1839, i32 206, i32 9, i32 363} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1850 = metadata !{i32 212, i32 17, metadata !1851, null}
!1851 = metadata !{i32 786443, metadata !14, metadata !1849, i32 211, i32 13, i32 364} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1852 = metadata !{i32 213, i32 17, metadata !1851, null}
!1853 = metadata !{i32 38, i32 5, metadata !553, metadata !1854}
!1854 = metadata !{i32 216, i32 13, metadata !1849, null}
!1855 = metadata !{i32 39, i32 5, metadata !553, metadata !1854}
!1856 = metadata !{i32 218, i32 13, metadata !1849, null}
!1857 = metadata !{i32 220, i32 17, metadata !1858, null}
!1858 = metadata !{i32 786443, metadata !14, metadata !1849, i32 219, i32 13, i32 365} ; [ DW_TAG_lexical_block ] [/home/yuanfengp/clients/sw/pvt/yuanfengp/curd/benchmarks/cudasamples/threadFenceReduction/threadFenceReduction_kernel.cuh]
!1859 = metadata !{i32 223, i32 17, metadata !1858, null}
!1860 = metadata !{i32 227, i32 1, metadata !1824, null}
