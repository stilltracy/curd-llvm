# 1 "kernel_cuda.cudafe1.gpu"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "kernel_cuda.cudafe1.gpu"
typedef char __nv_bool;
# 1482 "/opt/nvidia8/bin/..//include/driver_types.h"
struct CUstream_st;
# 54 "/opt/nvidia8/bin/..//include/library_types.h"
enum cudaDataType_t {
# 56 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_R_16F = 2,
# 57 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_C_16F = 6,
# 58 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_R_32F = 0,
# 59 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_C_32F = 4,
# 60 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_R_64F = 1,
# 61 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_C_64F = 5,
# 62 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_R_8I = 3,
# 63 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_C_8I = 7,
# 64 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_R_8U,
# 65 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_C_8U,
# 66 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_R_32I,
# 67 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_C_32I,
# 68 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_R_32U,
# 69 "/opt/nvidia8/bin/..//include/library_types.h"
CUDA_C_32U};
# 73 "/opt/nvidia8/bin/..//include/library_types.h"
enum libraryPropertyType_t {
# 75 "/opt/nvidia8/bin/..//include/library_types.h"
MAJOR_VERSION,
# 76 "/opt/nvidia8/bin/..//include/library_types.h"
MINOR_VERSION,
# 77 "/opt/nvidia8/bin/..//include/library_types.h"
PATCH_LEVEL};
# 176 "/usr/include/libio.h" 3
enum __codecvt_result {
# 178 "/usr/include/libio.h" 3
__codecvt_ok,
# 179 "/usr/include/libio.h" 3
__codecvt_partial,
# 180 "/usr/include/libio.h" 3
__codecvt_error,
# 181 "/usr/include/libio.h" 3
__codecvt_noconv};
# 51 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
enum idtype_t {
# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
P_ALL,
# 53 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
P_PID,
# 54 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
P_PGID};
# 210 "/usr/include/math.h" 3
enum _ZUt_ {
# 211 "/usr/include/math.h" 3
FP_NAN,
# 214 "/usr/include/math.h" 3
FP_INFINITE,
# 217 "/usr/include/math.h" 3
FP_ZERO,
# 220 "/usr/include/math.h" 3
FP_SUBNORMAL,
# 223 "/usr/include/math.h" 3
FP_NORMAL};
# 348 "/usr/include/math.h" 3
enum _LIB_VERSION_TYPE {
# 349 "/usr/include/math.h" 3
_IEEE_ = (-1),
# 350 "/usr/include/math.h" 3
_SVID_,
# 351 "/usr/include/math.h" 3
_XOPEN_,
# 352 "/usr/include/math.h" 3
_POSIX_,
# 353 "/usr/include/math.h" 3
_ISOC_};
# 51 "support/common.h"
struct Node;
# 55 "support/common.h"
struct Edge;
# 128 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_voidIvEUt_E {
# 128 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt9__is_voidIvE7__valueE = 1};
# 148 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIbEUt_E {
# 148 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIbE7__valueE = 1};
# 155 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIcEUt_E {
# 155 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIcE7__valueE = 1};
# 162 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIaEUt_E {
# 162 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIaE7__valueE = 1};
# 169 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIhEUt_E {
# 169 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIhE7__valueE = 1};
# 177 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIwEUt_E {
# 177 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIwE7__valueE = 1};
# 201 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIsEUt_E {
# 201 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIsE7__valueE = 1};
# 208 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerItEUt_E {
# 208 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerItE7__valueE = 1};
# 215 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIiEUt_E {
# 215 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIiE7__valueE = 1};
# 222 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIjEUt_E {
# 222 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIjE7__valueE = 1};
# 229 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIlEUt_E {
# 229 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIlE7__valueE = 1};
# 236 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerImEUt_E {
# 236 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerImE7__valueE = 1};
# 243 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIxEUt_E {
# 243 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIxE7__valueE = 1};
# 250 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIyEUt_E {
# 250 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIyE7__valueE = 1};
# 268 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIfEUt_E {
# 268 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIfE7__valueE = 1};
# 275 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIdEUt_E {
# 275 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIdE7__valueE = 1};
# 282 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIeEUt_E {
# 282 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIeE7__valueE = 1};
# 350 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIcEUt_E {
# 350 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt9__is_charIcE7__valueE = 1};
# 358 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIwEUt_E {
# 358 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt9__is_charIwE7__valueE = 1};
# 373 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIcEUt_E {
# 373 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIcE7__valueE = 1};
# 380 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIaEUt_E {
# 380 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIaE7__valueE = 1};
# 387 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIhEUt_E {
# 387 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIhE7__valueE = 1};
# 138 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIeEUt_E {
# 138 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIeE7__valueE};
# 138 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIdEUt_E {
# 138 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIdE7__valueE};
# 138 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIfEUt_E {
# 138 "/usr/include/c++/4.9/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIfE7__valueE};
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h" 3
typedef unsigned long size_t;
# 1 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 1 3
# 38 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 3
# 1 "/opt/nvidia8/bin/..//include/host_defines.h" 1 3
# 39 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 2 3





typedef __attribute__((device_builtin_texture_type)) unsigned long long __texture_type__;
typedef __attribute__((device_builtin_surface_type)) unsigned long long __surface_type__;
# 196 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 3
extern __attribute__((device)) __attribute__((used)) void* malloc(size_t);
extern __attribute__((device)) __attribute__((used)) void free(void*);


static __attribute__((device)) void __nv_sized_free(void *p, size_t sz) { free(p); }
static __attribute__((device)) void __nv_sized_array_free(void *p, size_t sz) { free(p); }


extern __attribute__((device)) void __assertfail(
  const void *message,
  const void *file,
  unsigned int line,
  const void *function,
  size_t charsize);
# 254 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 3
static __attribute__((device)) void __assert_fail(
  const char *__assertion,
  const char *__file,
  unsigned int __line,
  const char *__function)
{
  __assertfail(
    (const void *)__assertion,
    (const void *)__file,
                  __line,
    (const void *)__function,
    sizeof(char));
}
# 284 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 3
# 1 "/opt/nvidia8/bin/..//include/builtin_types.h" 1 3
# 56 "/opt/nvidia8/bin/..//include/builtin_types.h" 3
# 1 "/opt/nvidia8/include/device_types.h" 1 3
# 53 "/opt/nvidia8/include/device_types.h" 3
# 1 "/opt/nvidia8/include/host_defines.h" 1 3
# 54 "/opt/nvidia8/include/device_types.h" 2 3







enum __attribute__((device_builtin)) cudaRoundMode
{
    cudaRoundNearest,
    cudaRoundZero,
    cudaRoundPosInf,
    cudaRoundMinInf
};
# 57 "/opt/nvidia8/bin/..//include/builtin_types.h" 2 3


# 1 "/opt/nvidia8/include/driver_types.h" 1 3
# 156 "/opt/nvidia8/include/driver_types.h" 3
enum __attribute__((device_builtin)) cudaError
{





    cudaSuccess = 0,





    cudaErrorMissingConfiguration = 1,





    cudaErrorMemoryAllocation = 2,





    cudaErrorInitializationError = 3,
# 191 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorLaunchFailure = 4,
# 200 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorPriorLaunchFailure = 5,
# 210 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorLaunchTimeout = 6,
# 219 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorLaunchOutOfResources = 7,





    cudaErrorInvalidDeviceFunction = 8,
# 234 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorInvalidConfiguration = 9,





    cudaErrorInvalidDevice = 10,





    cudaErrorInvalidValue = 11,





    cudaErrorInvalidPitchValue = 12,





    cudaErrorInvalidSymbol = 13,




    cudaErrorMapBufferObjectFailed = 14,




    cudaErrorUnmapBufferObjectFailed = 15,





    cudaErrorInvalidHostPointer = 16,





    cudaErrorInvalidDevicePointer = 17,





    cudaErrorInvalidTexture = 18,





    cudaErrorInvalidTextureBinding = 19,






    cudaErrorInvalidChannelDescriptor = 20,





    cudaErrorInvalidMemcpyDirection = 21,
# 315 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorAddressOfConstant = 22,
# 324 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorTextureFetchFailed = 23,
# 333 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorTextureNotBound = 24,
# 342 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorSynchronizationError = 25,





    cudaErrorInvalidFilterSetting = 26,





    cudaErrorInvalidNormSetting = 27,







    cudaErrorMixedDeviceExecution = 28,






    cudaErrorCudartUnloading = 29,




    cudaErrorUnknown = 30,







    cudaErrorNotYetImplemented = 31,
# 391 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorMemoryValueTooLarge = 32,






    cudaErrorInvalidResourceHandle = 33,







    cudaErrorNotReady = 34,






    cudaErrorInsufficientDriver = 35,
# 426 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorSetOnActiveProcess = 36,





    cudaErrorInvalidSurface = 37,





    cudaErrorNoDevice = 38,





    cudaErrorECCUncorrectable = 39,




    cudaErrorSharedObjectSymbolNotFound = 40,




    cudaErrorSharedObjectInitFailed = 41,





    cudaErrorUnsupportedLimit = 42,





    cudaErrorDuplicateVariableName = 43,





    cudaErrorDuplicateTextureName = 44,





    cudaErrorDuplicateSurfaceName = 45,
# 488 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorDevicesUnavailable = 46,




    cudaErrorInvalidKernelImage = 47,







    cudaErrorNoKernelImageForDevice = 48,
# 514 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorIncompatibleDriverContext = 49,






    cudaErrorPeerAccessAlreadyEnabled = 50,






    cudaErrorPeerAccessNotEnabled = 51,





    cudaErrorDeviceAlreadyInUse = 54,






    cudaErrorProfilerDisabled = 55,







    cudaErrorProfilerNotInitialized = 56,






    cudaErrorProfilerAlreadyStarted = 57,






     cudaErrorProfilerAlreadyStopped = 58,







    cudaErrorAssert = 59,






    cudaErrorTooManyPeers = 60,





    cudaErrorHostMemoryAlreadyRegistered = 61,





    cudaErrorHostMemoryNotRegistered = 62,




    cudaErrorOperatingSystem = 63,





    cudaErrorPeerAccessUnsupported = 64,






    cudaErrorLaunchMaxDepthExceeded = 65,







    cudaErrorLaunchFileScopedTex = 66,







    cudaErrorLaunchFileScopedSurf = 67,
# 639 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorSyncDepthExceeded = 68,
# 651 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorLaunchPendingCountExceeded = 69,




    cudaErrorNotPermitted = 70,





    cudaErrorNotSupported = 71,
# 671 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorHardwareStackError = 72,







    cudaErrorIllegalInstruction = 73,
# 688 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorMisalignedAddress = 74,
# 699 "/opt/nvidia8/include/driver_types.h" 3
    cudaErrorInvalidAddressSpace = 75,







    cudaErrorInvalidPc = 76,







    cudaErrorIllegalAddress = 77,





    cudaErrorInvalidPtx = 78,




    cudaErrorInvalidGraphicsContext = 79,





    cudaErrorNvlinkUncorrectable = 80,




    cudaErrorStartupFailure = 0x7f,







    cudaErrorApiFailureBase = 10000
};




enum __attribute__((device_builtin)) cudaChannelFormatKind
{
    cudaChannelFormatKindSigned = 0,
    cudaChannelFormatKindUnsigned = 1,
    cudaChannelFormatKindFloat = 2,
    cudaChannelFormatKindNone = 3
};




struct __attribute__((device_builtin)) cudaChannelFormatDesc
{
    int x;
    int y;
    int z;
    int w;
    enum cudaChannelFormatKind f;
};




typedef struct cudaArray *cudaArray_t;




typedef const struct cudaArray *cudaArray_const_t;

struct cudaArray;




typedef struct cudaMipmappedArray *cudaMipmappedArray_t;




typedef const struct cudaMipmappedArray *cudaMipmappedArray_const_t;

struct cudaMipmappedArray;




enum __attribute__((device_builtin)) cudaMemoryType
{
    cudaMemoryTypeHost = 1,
    cudaMemoryTypeDevice = 2
};




enum __attribute__((device_builtin)) cudaMemcpyKind
{
    cudaMemcpyHostToHost = 0,
    cudaMemcpyHostToDevice = 1,
    cudaMemcpyDeviceToHost = 2,
    cudaMemcpyDeviceToDevice = 3,
    cudaMemcpyDefault = 4
};






struct __attribute__((device_builtin)) cudaPitchedPtr
{
    void *ptr;
    size_t pitch;
    size_t xsize;
    size_t ysize;
};






struct __attribute__((device_builtin)) cudaExtent
{
    size_t width;
    size_t height;
    size_t depth;
};






struct __attribute__((device_builtin)) cudaPos
{
    size_t x;
    size_t y;
    size_t z;
};




struct __attribute__((device_builtin)) cudaMemcpy3DParms
{
    cudaArray_t srcArray;
    struct cudaPos srcPos;
    struct cudaPitchedPtr srcPtr;

    cudaArray_t dstArray;
    struct cudaPos dstPos;
    struct cudaPitchedPtr dstPtr;

    struct cudaExtent extent;
    enum cudaMemcpyKind kind;
};




struct __attribute__((device_builtin)) cudaMemcpy3DPeerParms
{
    cudaArray_t srcArray;
    struct cudaPos srcPos;
    struct cudaPitchedPtr srcPtr;
    int srcDevice;

    cudaArray_t dstArray;
    struct cudaPos dstPos;
    struct cudaPitchedPtr dstPtr;
    int dstDevice;

    struct cudaExtent extent;
};




struct cudaGraphicsResource;




enum __attribute__((device_builtin)) cudaGraphicsRegisterFlags
{
    cudaGraphicsRegisterFlagsNone = 0,
    cudaGraphicsRegisterFlagsReadOnly = 1,
    cudaGraphicsRegisterFlagsWriteDiscard = 2,
    cudaGraphicsRegisterFlagsSurfaceLoadStore = 4,
    cudaGraphicsRegisterFlagsTextureGather = 8
};




enum __attribute__((device_builtin)) cudaGraphicsMapFlags
{
    cudaGraphicsMapFlagsNone = 0,
    cudaGraphicsMapFlagsReadOnly = 1,
    cudaGraphicsMapFlagsWriteDiscard = 2
};




enum __attribute__((device_builtin)) cudaGraphicsCubeFace
{
    cudaGraphicsCubeFacePositiveX = 0x00,
    cudaGraphicsCubeFaceNegativeX = 0x01,
    cudaGraphicsCubeFacePositiveY = 0x02,
    cudaGraphicsCubeFaceNegativeY = 0x03,
    cudaGraphicsCubeFacePositiveZ = 0x04,
    cudaGraphicsCubeFaceNegativeZ = 0x05
};




enum __attribute__((device_builtin)) cudaResourceType
{
    cudaResourceTypeArray = 0x00,
    cudaResourceTypeMipmappedArray = 0x01,
    cudaResourceTypeLinear = 0x02,
    cudaResourceTypePitch2D = 0x03
};




enum __attribute__((device_builtin)) cudaResourceViewFormat
{
    cudaResViewFormatNone = 0x00,
    cudaResViewFormatUnsignedChar1 = 0x01,
    cudaResViewFormatUnsignedChar2 = 0x02,
    cudaResViewFormatUnsignedChar4 = 0x03,
    cudaResViewFormatSignedChar1 = 0x04,
    cudaResViewFormatSignedChar2 = 0x05,
    cudaResViewFormatSignedChar4 = 0x06,
    cudaResViewFormatUnsignedShort1 = 0x07,
    cudaResViewFormatUnsignedShort2 = 0x08,
    cudaResViewFormatUnsignedShort4 = 0x09,
    cudaResViewFormatSignedShort1 = 0x0a,
    cudaResViewFormatSignedShort2 = 0x0b,
    cudaResViewFormatSignedShort4 = 0x0c,
    cudaResViewFormatUnsignedInt1 = 0x0d,
    cudaResViewFormatUnsignedInt2 = 0x0e,
    cudaResViewFormatUnsignedInt4 = 0x0f,
    cudaResViewFormatSignedInt1 = 0x10,
    cudaResViewFormatSignedInt2 = 0x11,
    cudaResViewFormatSignedInt4 = 0x12,
    cudaResViewFormatHalf1 = 0x13,
    cudaResViewFormatHalf2 = 0x14,
    cudaResViewFormatHalf4 = 0x15,
    cudaResViewFormatFloat1 = 0x16,
    cudaResViewFormatFloat2 = 0x17,
    cudaResViewFormatFloat4 = 0x18,
    cudaResViewFormatUnsignedBlockCompressed1 = 0x19,
    cudaResViewFormatUnsignedBlockCompressed2 = 0x1a,
    cudaResViewFormatUnsignedBlockCompressed3 = 0x1b,
    cudaResViewFormatUnsignedBlockCompressed4 = 0x1c,
    cudaResViewFormatSignedBlockCompressed4 = 0x1d,
    cudaResViewFormatUnsignedBlockCompressed5 = 0x1e,
    cudaResViewFormatSignedBlockCompressed5 = 0x1f,
    cudaResViewFormatUnsignedBlockCompressed6H = 0x20,
    cudaResViewFormatSignedBlockCompressed6H = 0x21,
    cudaResViewFormatUnsignedBlockCompressed7 = 0x22
};




struct __attribute__((device_builtin)) cudaResourceDesc {
 enum cudaResourceType resType;

 union {
  struct {
   cudaArray_t array;
  } array;
        struct {
            cudaMipmappedArray_t mipmap;
        } mipmap;
  struct {
   void *devPtr;
   struct cudaChannelFormatDesc desc;
   size_t sizeInBytes;
  } linear;
  struct {
   void *devPtr;
   struct cudaChannelFormatDesc desc;
   size_t width;
   size_t height;
   size_t pitchInBytes;
  } pitch2D;
 } res;
};




struct __attribute__((device_builtin)) cudaResourceViewDesc
{
    enum cudaResourceViewFormat format;
    size_t width;
    size_t height;
    size_t depth;
    unsigned int firstMipmapLevel;
    unsigned int lastMipmapLevel;
    unsigned int firstLayer;
    unsigned int lastLayer;
};




struct __attribute__((device_builtin)) cudaPointerAttributes
{




    enum cudaMemoryType memoryType;
# 1044 "/opt/nvidia8/include/driver_types.h" 3
    int device;





    void *devicePointer;





    void *hostPointer;




    int isManaged;
};




struct __attribute__((device_builtin)) cudaFuncAttributes
{





   size_t sharedSizeBytes;





   size_t constSizeBytes;




   size_t localSizeBytes;






   int maxThreadsPerBlock;




   int numRegs;






   int ptxVersion;






   int binaryVersion;





   int cacheModeCA;
};




enum __attribute__((device_builtin)) cudaFuncCache
{
    cudaFuncCachePreferNone = 0,
    cudaFuncCachePreferShared = 1,
    cudaFuncCachePreferL1 = 2,
    cudaFuncCachePreferEqual = 3
};





enum __attribute__((device_builtin)) cudaSharedMemConfig
{
    cudaSharedMemBankSizeDefault = 0,
    cudaSharedMemBankSizeFourByte = 1,
    cudaSharedMemBankSizeEightByte = 2
};




enum __attribute__((device_builtin)) cudaComputeMode
{
    cudaComputeModeDefault = 0,
    cudaComputeModeExclusive = 1,
    cudaComputeModeProhibited = 2,
    cudaComputeModeExclusiveProcess = 3
};




enum __attribute__((device_builtin)) cudaLimit
{
    cudaLimitStackSize = 0x00,
    cudaLimitPrintfFifoSize = 0x01,
    cudaLimitMallocHeapSize = 0x02,
    cudaLimitDevRuntimeSyncDepth = 0x03,
    cudaLimitDevRuntimePendingLaunchCount = 0x04
};




enum __attribute__((device_builtin)) cudaMemoryAdvise
{
    cudaMemAdviseSetReadMostly = 1,
    cudaMemAdviseUnsetReadMostly = 2,
    cudaMemAdviseSetPreferredLocation = 3,
    cudaMemAdviseUnsetPreferredLocation = 4,
    cudaMemAdviseSetAccessedBy = 5,
    cudaMemAdviseUnsetAccessedBy = 6
};




enum __attribute__((device_builtin)) cudaMemRangeAttribute
{
    cudaMemRangeAttributeReadMostly = 1,
    cudaMemRangeAttributePreferredLocation = 2,
    cudaMemRangeAttributeAccessedBy = 3,
    cudaMemRangeAttributeLastPrefetchLocation = 4
};




enum __attribute__((device_builtin)) cudaOutputMode
{
    cudaKeyValuePair = 0x00,
    cudaCSV = 0x01
};




enum __attribute__((device_builtin)) cudaDeviceAttr
{
    cudaDevAttrMaxThreadsPerBlock = 1,
    cudaDevAttrMaxBlockDimX = 2,
    cudaDevAttrMaxBlockDimY = 3,
    cudaDevAttrMaxBlockDimZ = 4,
    cudaDevAttrMaxGridDimX = 5,
    cudaDevAttrMaxGridDimY = 6,
    cudaDevAttrMaxGridDimZ = 7,
    cudaDevAttrMaxSharedMemoryPerBlock = 8,
    cudaDevAttrTotalConstantMemory = 9,
    cudaDevAttrWarpSize = 10,
    cudaDevAttrMaxPitch = 11,
    cudaDevAttrMaxRegistersPerBlock = 12,
    cudaDevAttrClockRate = 13,
    cudaDevAttrTextureAlignment = 14,
    cudaDevAttrGpuOverlap = 15,
    cudaDevAttrMultiProcessorCount = 16,
    cudaDevAttrKernelExecTimeout = 17,
    cudaDevAttrIntegrated = 18,
    cudaDevAttrCanMapHostMemory = 19,
    cudaDevAttrComputeMode = 20,
    cudaDevAttrMaxTexture1DWidth = 21,
    cudaDevAttrMaxTexture2DWidth = 22,
    cudaDevAttrMaxTexture2DHeight = 23,
    cudaDevAttrMaxTexture3DWidth = 24,
    cudaDevAttrMaxTexture3DHeight = 25,
    cudaDevAttrMaxTexture3DDepth = 26,
    cudaDevAttrMaxTexture2DLayeredWidth = 27,
    cudaDevAttrMaxTexture2DLayeredHeight = 28,
    cudaDevAttrMaxTexture2DLayeredLayers = 29,
    cudaDevAttrSurfaceAlignment = 30,
    cudaDevAttrConcurrentKernels = 31,
    cudaDevAttrEccEnabled = 32,
    cudaDevAttrPciBusId = 33,
    cudaDevAttrPciDeviceId = 34,
    cudaDevAttrTccDriver = 35,
    cudaDevAttrMemoryClockRate = 36,
    cudaDevAttrGlobalMemoryBusWidth = 37,
    cudaDevAttrL2CacheSize = 38,
    cudaDevAttrMaxThreadsPerMultiProcessor = 39,
    cudaDevAttrAsyncEngineCount = 40,
    cudaDevAttrUnifiedAddressing = 41,
    cudaDevAttrMaxTexture1DLayeredWidth = 42,
    cudaDevAttrMaxTexture1DLayeredLayers = 43,
    cudaDevAttrMaxTexture2DGatherWidth = 45,
    cudaDevAttrMaxTexture2DGatherHeight = 46,
    cudaDevAttrMaxTexture3DWidthAlt = 47,
    cudaDevAttrMaxTexture3DHeightAlt = 48,
    cudaDevAttrMaxTexture3DDepthAlt = 49,
    cudaDevAttrPciDomainId = 50,
    cudaDevAttrTexturePitchAlignment = 51,
    cudaDevAttrMaxTextureCubemapWidth = 52,
    cudaDevAttrMaxTextureCubemapLayeredWidth = 53,
    cudaDevAttrMaxTextureCubemapLayeredLayers = 54,
    cudaDevAttrMaxSurface1DWidth = 55,
    cudaDevAttrMaxSurface2DWidth = 56,
    cudaDevAttrMaxSurface2DHeight = 57,
    cudaDevAttrMaxSurface3DWidth = 58,
    cudaDevAttrMaxSurface3DHeight = 59,
    cudaDevAttrMaxSurface3DDepth = 60,
    cudaDevAttrMaxSurface1DLayeredWidth = 61,
    cudaDevAttrMaxSurface1DLayeredLayers = 62,
    cudaDevAttrMaxSurface2DLayeredWidth = 63,
    cudaDevAttrMaxSurface2DLayeredHeight = 64,
    cudaDevAttrMaxSurface2DLayeredLayers = 65,
    cudaDevAttrMaxSurfaceCubemapWidth = 66,
    cudaDevAttrMaxSurfaceCubemapLayeredWidth = 67,
    cudaDevAttrMaxSurfaceCubemapLayeredLayers = 68,
    cudaDevAttrMaxTexture1DLinearWidth = 69,
    cudaDevAttrMaxTexture2DLinearWidth = 70,
    cudaDevAttrMaxTexture2DLinearHeight = 71,
    cudaDevAttrMaxTexture2DLinearPitch = 72,
    cudaDevAttrMaxTexture2DMipmappedWidth = 73,
    cudaDevAttrMaxTexture2DMipmappedHeight = 74,
    cudaDevAttrComputeCapabilityMajor = 75,
    cudaDevAttrComputeCapabilityMinor = 76,
    cudaDevAttrMaxTexture1DMipmappedWidth = 77,
    cudaDevAttrStreamPrioritiesSupported = 78,
    cudaDevAttrGlobalL1CacheSupported = 79,
    cudaDevAttrLocalL1CacheSupported = 80,
    cudaDevAttrMaxSharedMemoryPerMultiprocessor = 81,
    cudaDevAttrMaxRegistersPerMultiprocessor = 82,
    cudaDevAttrManagedMemory = 83,
    cudaDevAttrIsMultiGpuBoard = 84,
    cudaDevAttrMultiGpuBoardGroupID = 85,
    cudaDevAttrHostNativeAtomicSupported = 86,
    cudaDevAttrSingleToDoublePrecisionPerfRatio = 87,
    cudaDevAttrPageableMemoryAccess = 88,
    cudaDevAttrConcurrentManagedAccess = 89,
    cudaDevAttrComputePreemptionSupported = 90,
    cudaDevAttrCanUseHostPointerForRegisteredMem = 91
};





enum __attribute__((device_builtin)) cudaDeviceP2PAttr {
    cudaDevP2PAttrPerformanceRank = 1,
    cudaDevP2PAttrAccessSupported = 2,
    cudaDevP2PAttrNativeAtomicSupported = 3
};



struct __attribute__((device_builtin)) cudaDeviceProp
{
    char name[256];
    size_t totalGlobalMem;
    size_t sharedMemPerBlock;
    int regsPerBlock;
    int warpSize;
    size_t memPitch;
    int maxThreadsPerBlock;
    int maxThreadsDim[3];
    int maxGridSize[3];
    int clockRate;
    size_t totalConstMem;
    int major;
    int minor;
    size_t textureAlignment;
    size_t texturePitchAlignment;
    int deviceOverlap;
    int multiProcessorCount;
    int kernelExecTimeoutEnabled;
    int integrated;
    int canMapHostMemory;
    int computeMode;
    int maxTexture1D;
    int maxTexture1DMipmap;
    int maxTexture1DLinear;
    int maxTexture2D[2];
    int maxTexture2DMipmap[2];
    int maxTexture2DLinear[3];
    int maxTexture2DGather[2];
    int maxTexture3D[3];
    int maxTexture3DAlt[3];
    int maxTextureCubemap;
    int maxTexture1DLayered[2];
    int maxTexture2DLayered[3];
    int maxTextureCubemapLayered[2];
    int maxSurface1D;
    int maxSurface2D[2];
    int maxSurface3D[3];
    int maxSurface1DLayered[2];
    int maxSurface2DLayered[3];
    int maxSurfaceCubemap;
    int maxSurfaceCubemapLayered[2];
    size_t surfaceAlignment;
    int concurrentKernels;
    int ECCEnabled;
    int pciBusID;
    int pciDeviceID;
    int pciDomainID;
    int tccDriver;
    int asyncEngineCount;
    int unifiedAddressing;
    int memoryClockRate;
    int memoryBusWidth;
    int l2CacheSize;
    int maxThreadsPerMultiProcessor;
    int streamPrioritiesSupported;
    int globalL1CacheSupported;
    int localL1CacheSupported;
    size_t sharedMemPerMultiprocessor;
    int regsPerMultiprocessor;
    int managedMemory;
    int isMultiGpuBoard;
    int multiGpuBoardGroupID;
    int hostNativeAtomicSupported;
    int singleToDoublePrecisionPerfRatio;
    int pageableMemoryAccess;
    int concurrentManagedAccess;
};
# 1455 "/opt/nvidia8/include/driver_types.h" 3
typedef __attribute__((device_builtin)) struct __attribute__((device_builtin)) cudaIpcEventHandle_st
{
    char reserved[64];
}cudaIpcEventHandle_t;




typedef __attribute__((device_builtin)) struct __attribute__((device_builtin)) cudaIpcMemHandle_st
{
    char reserved[64];
}cudaIpcMemHandle_t;
# 1477 "/opt/nvidia8/include/driver_types.h" 3
typedef __attribute__((device_builtin)) enum cudaError cudaError_t;




typedef __attribute__((device_builtin)) struct CUstream_st *cudaStream_t;




typedef __attribute__((device_builtin)) struct CUevent_st *cudaEvent_t;




typedef __attribute__((device_builtin)) struct cudaGraphicsResource *cudaGraphicsResource_t;




typedef __attribute__((device_builtin)) struct CUuuid_st cudaUUID_t;




typedef __attribute__((device_builtin)) enum cudaOutputMode cudaOutputMode_t;
# 60 "/opt/nvidia8/bin/..//include/builtin_types.h" 2 3


# 1 "/opt/nvidia8/include/surface_types.h" 1 3
# 59 "/opt/nvidia8/include/surface_types.h" 3
# 1 "/opt/nvidia8/include/driver_types.h" 1 3
# 60 "/opt/nvidia8/include/surface_types.h" 2 3
# 84 "/opt/nvidia8/include/surface_types.h" 3
enum __attribute__((device_builtin)) cudaSurfaceBoundaryMode
{
    cudaBoundaryModeZero = 0,
    cudaBoundaryModeClamp = 1,
    cudaBoundaryModeTrap = 2
};




enum __attribute__((device_builtin)) cudaSurfaceFormatMode
{
    cudaFormatModeForced = 0,
    cudaFormatModeAuto = 1
};




struct __attribute__((device_builtin)) surfaceReference
{



    struct cudaChannelFormatDesc channelDesc;
};




typedef __attribute__((device_builtin)) unsigned long long cudaSurfaceObject_t;
# 63 "/opt/nvidia8/bin/..//include/builtin_types.h" 2 3
# 1 "/opt/nvidia8/include/texture_types.h" 1 3
# 84 "/opt/nvidia8/include/texture_types.h" 3
enum __attribute__((device_builtin)) cudaTextureAddressMode
{
    cudaAddressModeWrap = 0,
    cudaAddressModeClamp = 1,
    cudaAddressModeMirror = 2,
    cudaAddressModeBorder = 3
};




enum __attribute__((device_builtin)) cudaTextureFilterMode
{
    cudaFilterModePoint = 0,
    cudaFilterModeLinear = 1
};




enum __attribute__((device_builtin)) cudaTextureReadMode
{
    cudaReadModeElementType = 0,
    cudaReadModeNormalizedFloat = 1
};




struct __attribute__((device_builtin)) textureReference
{



    int normalized;



    enum cudaTextureFilterMode filterMode;



    enum cudaTextureAddressMode addressMode[3];



    struct cudaChannelFormatDesc channelDesc;



    int sRGB;



    unsigned int maxAnisotropy;



    enum cudaTextureFilterMode mipmapFilterMode;



    float mipmapLevelBias;



    float minMipmapLevelClamp;



    float maxMipmapLevelClamp;
    int __cudaReserved[15];
};




struct __attribute__((device_builtin)) cudaTextureDesc
{



    enum cudaTextureAddressMode addressMode[3];



    enum cudaTextureFilterMode filterMode;



    enum cudaTextureReadMode readMode;



    int sRGB;



    float borderColor[4];



    int normalizedCoords;



    unsigned int maxAnisotropy;



    enum cudaTextureFilterMode mipmapFilterMode;



    float mipmapLevelBias;



    float minMipmapLevelClamp;



    float maxMipmapLevelClamp;
};




typedef __attribute__((device_builtin)) unsigned long long cudaTextureObject_t;
# 64 "/opt/nvidia8/bin/..//include/builtin_types.h" 2 3
# 1 "/opt/nvidia8/include/vector_types.h" 1 3
# 61 "/opt/nvidia8/include/vector_types.h" 3
# 1 "/opt/nvidia8/include/builtin_types.h" 1 3
# 56 "/opt/nvidia8/include/builtin_types.h" 3
# 1 "/opt/nvidia8/include/device_types.h" 1 3
# 57 "/opt/nvidia8/include/builtin_types.h" 2 3





# 1 "/opt/nvidia8/include/surface_types.h" 1 3
# 63 "/opt/nvidia8/include/builtin_types.h" 2 3
# 1 "/opt/nvidia8/include/texture_types.h" 1 3
# 64 "/opt/nvidia8/include/builtin_types.h" 2 3
# 1 "/opt/nvidia8/include/vector_types.h" 1 3
# 64 "/opt/nvidia8/include/builtin_types.h" 2 3
# 62 "/opt/nvidia8/include/vector_types.h" 2 3
# 98 "/opt/nvidia8/include/vector_types.h" 3
struct __attribute__((device_builtin)) char1
{
    signed char x;
};

struct __attribute__((device_builtin)) uchar1
{
    unsigned char x;
};


struct __attribute__((device_builtin)) __attribute__((aligned(2))) char2
{
    signed char x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(2))) uchar2
{
    unsigned char x, y;
};

struct __attribute__((device_builtin)) char3
{
    signed char x, y, z;
};

struct __attribute__((device_builtin)) uchar3
{
    unsigned char x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) char4
{
    signed char x, y, z, w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) uchar4
{
    unsigned char x, y, z, w;
};

struct __attribute__((device_builtin)) short1
{
    short x;
};

struct __attribute__((device_builtin)) ushort1
{
    unsigned short x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) short2
{
    short x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(4))) ushort2
{
    unsigned short x, y;
};

struct __attribute__((device_builtin)) short3
{
    short x, y, z;
};

struct __attribute__((device_builtin)) ushort3
{
    unsigned short x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(8))) short4 { short x; short y; short z; short w; };
struct __attribute__((device_builtin)) __attribute__((aligned(8))) ushort4 { unsigned short x; unsigned short y; unsigned short z; unsigned short w; };

struct __attribute__((device_builtin)) int1
{
    int x;
};

struct __attribute__((device_builtin)) uint1
{
    unsigned int x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(8))) int2 { int x; int y; };
struct __attribute__((device_builtin)) __attribute__((aligned(8))) uint2 { unsigned int x; unsigned int y; };

struct __attribute__((device_builtin)) int3
{
    int x, y, z;
};

struct __attribute__((device_builtin)) uint3
{
    unsigned int x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) int4
{
    int x, y, z, w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) uint4
{
    unsigned int x, y, z, w;
};

struct __attribute__((device_builtin)) long1
{
    long int x;
};

struct __attribute__((device_builtin)) ulong1
{
    unsigned long x;
};






struct __attribute__((device_builtin)) __attribute__((aligned(2*sizeof(long int)))) long2
{
    long int x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(2*sizeof(unsigned long int)))) ulong2
{
    unsigned long int x, y;
};



struct __attribute__((device_builtin)) long3
{
    long int x, y, z;
};

struct __attribute__((device_builtin)) ulong3
{
    unsigned long int x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) long4
{
    long int x, y, z, w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) ulong4
{
    unsigned long int x, y, z, w;
};

struct __attribute__((device_builtin)) float1
{
    float x;
};
# 274 "/opt/nvidia8/include/vector_types.h" 3
struct __attribute__((device_builtin)) __attribute__((aligned(8))) float2 { float x; float y; };




struct __attribute__((device_builtin)) float3
{
    float x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) float4
{
    float x, y, z, w;
};

struct __attribute__((device_builtin)) longlong1
{
    long long int x;
};

struct __attribute__((device_builtin)) ulonglong1
{
    unsigned long long int x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) longlong2
{
    long long int x, y;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) ulonglong2
{
    unsigned long long int x, y;
};

struct __attribute__((device_builtin)) longlong3
{
    long long int x, y, z;
};

struct __attribute__((device_builtin)) ulonglong3
{
    unsigned long long int x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) longlong4
{
    long long int x, y, z ,w;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) ulonglong4
{
    unsigned long long int x, y, z, w;
};

struct __attribute__((device_builtin)) double1
{
    double x;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) double2
{
    double x, y;
};

struct __attribute__((device_builtin)) double3
{
    double x, y, z;
};

struct __attribute__((device_builtin)) __attribute__((aligned(16))) double4
{
    double x, y, z, w;
};
# 362 "/opt/nvidia8/include/vector_types.h" 3
typedef __attribute__((device_builtin)) struct char1 char1;
typedef __attribute__((device_builtin)) struct uchar1 uchar1;
typedef __attribute__((device_builtin)) struct char2 char2;
typedef __attribute__((device_builtin)) struct uchar2 uchar2;
typedef __attribute__((device_builtin)) struct char3 char3;
typedef __attribute__((device_builtin)) struct uchar3 uchar3;
typedef __attribute__((device_builtin)) struct char4 char4;
typedef __attribute__((device_builtin)) struct uchar4 uchar4;
typedef __attribute__((device_builtin)) struct short1 short1;
typedef __attribute__((device_builtin)) struct ushort1 ushort1;
typedef __attribute__((device_builtin)) struct short2 short2;
typedef __attribute__((device_builtin)) struct ushort2 ushort2;
typedef __attribute__((device_builtin)) struct short3 short3;
typedef __attribute__((device_builtin)) struct ushort3 ushort3;
typedef __attribute__((device_builtin)) struct short4 short4;
typedef __attribute__((device_builtin)) struct ushort4 ushort4;
typedef __attribute__((device_builtin)) struct int1 int1;
typedef __attribute__((device_builtin)) struct uint1 uint1;
typedef __attribute__((device_builtin)) struct int2 int2;
typedef __attribute__((device_builtin)) struct uint2 uint2;
typedef __attribute__((device_builtin)) struct int3 int3;
typedef __attribute__((device_builtin)) struct uint3 uint3;
typedef __attribute__((device_builtin)) struct int4 int4;
typedef __attribute__((device_builtin)) struct uint4 uint4;
typedef __attribute__((device_builtin)) struct long1 long1;
typedef __attribute__((device_builtin)) struct ulong1 ulong1;
typedef __attribute__((device_builtin)) struct long2 long2;
typedef __attribute__((device_builtin)) struct ulong2 ulong2;
typedef __attribute__((device_builtin)) struct long3 long3;
typedef __attribute__((device_builtin)) struct ulong3 ulong3;
typedef __attribute__((device_builtin)) struct long4 long4;
typedef __attribute__((device_builtin)) struct ulong4 ulong4;
typedef __attribute__((device_builtin)) struct float1 float1;
typedef __attribute__((device_builtin)) struct float2 float2;
typedef __attribute__((device_builtin)) struct float3 float3;
typedef __attribute__((device_builtin)) struct float4 float4;
typedef __attribute__((device_builtin)) struct longlong1 longlong1;
typedef __attribute__((device_builtin)) struct ulonglong1 ulonglong1;
typedef __attribute__((device_builtin)) struct longlong2 longlong2;
typedef __attribute__((device_builtin)) struct ulonglong2 ulonglong2;
typedef __attribute__((device_builtin)) struct longlong3 longlong3;
typedef __attribute__((device_builtin)) struct ulonglong3 ulonglong3;
typedef __attribute__((device_builtin)) struct longlong4 longlong4;
typedef __attribute__((device_builtin)) struct ulonglong4 ulonglong4;
typedef __attribute__((device_builtin)) struct double1 double1;
typedef __attribute__((device_builtin)) struct double2 double2;
typedef __attribute__((device_builtin)) struct double3 double3;
typedef __attribute__((device_builtin)) struct double4 double4;







struct __attribute__((device_builtin)) dim3
{
    unsigned int x, y, z;





};

typedef __attribute__((device_builtin)) struct dim3 dim3;
# 64 "/opt/nvidia8/bin/..//include/builtin_types.h" 2 3
# 285 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 2 3
# 1 "/opt/nvidia8/bin/..//include/device_launch_parameters.h" 1 3
# 71 "/opt/nvidia8/bin/..//include/device_launch_parameters.h" 3
uint3 __attribute__((device_builtin)) extern const threadIdx;
uint3 __attribute__((device_builtin)) extern const blockIdx;
dim3 __attribute__((device_builtin)) extern const blockDim;
dim3 __attribute__((device_builtin)) extern const gridDim;
int __attribute__((device_builtin)) extern const warpSize;
# 286 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 2 3
# 1 "/opt/nvidia8/include/crt/storage_class.h" 1 3
# 286 "/opt/nvidia8/bin/..//include/crt/device_runtime.h" 2 3
# 214 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h" 2 3
# 51 "support/common.h"
struct Node {
# 52 "support/common.h"
int x;
# 53 "support/common.h"
int y;};
# 54 "support/common.h"
typedef struct Node Node;
# 55 "support/common.h"
struct Edge {
# 56 "support/common.h"
int x;
# 57 "support/common.h"
int y;};
# 58 "support/common.h"
typedef struct Edge Edge;
# 111 "/opt/nvidia8/bin/..//include/cuda_device_runtime_api.h"
extern __attribute__((device)) enum cudaError cudaGetLastError(void);
# 168 "/opt/nvidia8/bin/..//include/device_functions.h"
 __attribute__((device_builtin)) extern __attribute__((device)) void __syncthreads(void);
# 81 "/opt/nvidia8/bin/..//include/device_atomic_functions.h"
 __attribute__((device_builtin)) extern __attribute__((device)) int __iAtomicAdd(int *, int);
# 83 "/opt/nvidia8/bin/..//include/device_atomic_functions.h"
 __attribute__((device_builtin)) extern __attribute__((device)) int __iAtomicExch(int *, int);
# 88 "/opt/nvidia8/bin/..//include/device_atomic_functions.h"
 __attribute__((device_builtin)) extern __attribute__((device)) int __iAtomicMax(int *, int);
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
static __attribute__((device)) __inline__ int _Z9atomicAddPii(int *, int);
# 96 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
static __attribute__((device)) __inline__ int _Z10atomicExchPii(int *, int);
# 45 "kernel_cuda.cu"
__attribute__((global)) extern void _Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii(Node *, Edge *, int *, int *, int *, int *, int *, int *, int *, int *, int *, int *, int *, int *, int, const int);
# 50 "kernel_cuda.cu"
extern __attribute__((shared)) int l_mem[];
# 1 "/opt/nvidia8/bin/..//include/common_functions.h" 1
# 249 "/opt/nvidia8/bin/..//include/common_functions.h"
# 1 "/opt/nvidia8/include/math_functions.h" 1 3
# 10327 "/opt/nvidia8/include/math_functions.h" 3
# 1 "/opt/nvidia8/include/math_functions.hpp" 1 3
# 10328 "/opt/nvidia8/include/math_functions.h" 2 3



# 1 "/opt/nvidia8/include/math_functions_dbl_ptx3.h" 1 3
# 270 "/opt/nvidia8/include/math_functions_dbl_ptx3.h" 3
# 1 "/opt/nvidia8/include/math_functions_dbl_ptx3.hpp" 1 3
# 271 "/opt/nvidia8/include/math_functions_dbl_ptx3.h" 2 3
# 10332 "/opt/nvidia8/include/math_functions.h" 2 3
# 250 "/opt/nvidia8/bin/..//include/common_functions.h" 2
# 52 "kernel_cuda.cu" 2
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
static __attribute__((device)) __inline__ int _Z9atomicAddPii(
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
int *address,
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
int val){
# 77 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
{
# 78 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
return __iAtomicAdd(address, val);
# 79 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
}}
# 96 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
static __attribute__((device)) __inline__ int _Z10atomicExchPii(
# 96 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
int *address,
# 96 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
int val){
# 97 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
{
# 98 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
return __iAtomicExch(address, val);
# 99 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
}}
# 45 "kernel_cuda.cu"
__attribute__((global)) void _Z8SSSP_gpuP4NodeP4EdgePiS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_ii(
# 45 "kernel_cuda.cu"
Node *graph_nodes_av,
# 45 "kernel_cuda.cu"
Edge *graph_edges_av,
# 45 "kernel_cuda.cu"
int *cost,
# 46 "kernel_cuda.cu"
int *color,
# 46 "kernel_cuda.cu"
int *q1,
# 46 "kernel_cuda.cu"
int *q2,
# 46 "kernel_cuda.cu"
int *n_t,
# 47 "kernel_cuda.cu"
int *head,
# 47 "kernel_cuda.cu"
int *tail,
# 47 "kernel_cuda.cu"
int *threads_end,
# 47 "kernel_cuda.cu"
int *threads_run,
# 48 "kernel_cuda.cu"
int *overflow,
# 48 "kernel_cuda.cu"
int *gray_shade,
# 48 "kernel_cuda.cu"
int *iter,
# 48 "kernel_cuda.cu"
int LIMIT,
# 48 "kernel_cuda.cu"
const int CPU){
# 48 "kernel_cuda.cu"
{ int __T20;
# 51 "kernel_cuda.cu"
 int *__cuda_local_var_16150_10_non_const_tail_bin;
# 52 "kernel_cuda.cu"
 int *__cuda_local_var_16151_10_non_const_l_q2;
# 53 "kernel_cuda.cu"
 int *__cuda_local_var_16152_10_non_const_shift;
# 54 "kernel_cuda.cu"
 int *__cuda_local_var_16153_10_non_const_base;
# 56 "kernel_cuda.cu"
 int __cuda_local_var_16155_15_non_const_tid;
# 57 "kernel_cuda.cu"
 int __cuda_local_var_16156_15_non_const_gtid;
# 58 "kernel_cuda.cu"
 int __cuda_local_var_16157_15_non_const_MAXWG;
# 59 "kernel_cuda.cu"
 int __cuda_local_var_16158_15_non_const_WG_SIZE;
# 61 "kernel_cuda.cu"
 int __cuda_local_var_16160_9_non_const_iter_local;
# 63 "kernel_cuda.cu"
 int __cuda_local_var_16162_9_non_const_n_t_local;
# 65 "kernel_cuda.cu"
 int __cuda_local_var_16164_9_non_const_gray_shade_local;
# 77 "kernel_cuda.cu"
 int __cuda_local_var_16176_9_non_const_my_base;
# 145 "kernel_cuda.cu"
 int __cuda_local_var_16244_9_non_const_local_shift;
# 51 "kernel_cuda.cu"
__cuda_local_var_16150_10_non_const_tail_bin = l_mem;
# 52 "kernel_cuda.cu"
__cuda_local_var_16151_10_non_const_l_q2 = ((int *)(__cuda_local_var_16150_10_non_const_tail_bin + 1));
# 53 "kernel_cuda.cu"
__cuda_local_var_16152_10_non_const_shift = ((int *)(__cuda_local_var_16151_10_non_const_l_q2 + 1600));
# 54 "kernel_cuda.cu"
__cuda_local_var_16153_10_non_const_base = ((int *)(__cuda_local_var_16152_10_non_const_shift + 1));
# 56 "kernel_cuda.cu"
__cuda_local_var_16155_15_non_const_tid = ((int)(threadIdx.x));
# 57 "kernel_cuda.cu"
__cuda_local_var_16156_15_non_const_gtid = ((int)(((blockIdx.x) * (blockDim.x)) + (threadIdx.x)));
# 58 "kernel_cuda.cu"
__cuda_local_var_16157_15_non_const_MAXWG = ((int)(gridDim.x));
# 59 "kernel_cuda.cu"
__cuda_local_var_16158_15_non_const_WG_SIZE = ((int)(blockDim.x));
# 61 "kernel_cuda.cu"
__cuda_local_var_16160_9_non_const_iter_local = (__iAtomicAdd((iter + 0), 0));
# 63 "kernel_cuda.cu"
__cuda_local_var_16162_9_non_const_n_t_local = (__iAtomicAdd(n_t, 0));
# 65 "kernel_cuda.cu"
__cuda_local_var_16164_9_non_const_gray_shade_local = (__iAtomicAdd((gray_shade + 0), 0));
# 67 "kernel_cuda.cu"
if (__cuda_local_var_16155_15_non_const_tid == 0)
# 67 "kernel_cuda.cu"
{
# 69 "kernel_cuda.cu"
(*__cuda_local_var_16150_10_non_const_tail_bin) = 0;
# 70 "kernel_cuda.cu"
}
# 73 "kernel_cuda.cu"
if (__cuda_local_var_16155_15_non_const_tid == 0) {
# 74 "kernel_cuda.cu"
(*__cuda_local_var_16153_10_non_const_base) = (__iAtomicAdd((head + 0), __cuda_local_var_16158_15_non_const_WG_SIZE)); }
# 75 "kernel_cuda.cu"
__syncthreads();
# 77 "kernel_cuda.cu"
__cuda_local_var_16176_9_non_const_my_base = (*__cuda_local_var_16153_10_non_const_base);
# 78 "kernel_cuda.cu"
while (__cuda_local_var_16176_9_non_const_my_base < __cuda_local_var_16162_9_non_const_n_t_local)
# 78 "kernel_cuda.cu"
{
# 81 "kernel_cuda.cu"
if ((*__cuda_local_var_16150_10_non_const_tail_bin) >= 800)
# 81 "kernel_cuda.cu"
{
# 87 "kernel_cuda.cu"
 int __cuda_local_var_16186_17_non_const_local_shift;
# 82 "kernel_cuda.cu"
if (__cuda_local_var_16155_15_non_const_tid == 0)
# 82 "kernel_cuda.cu"
{ int __T21;
# 84 "kernel_cuda.cu"
(*__cuda_local_var_16152_10_non_const_shift) = ((__T21 = (*__cuda_local_var_16150_10_non_const_tail_bin)) , (__iAtomicAdd((tail + 0), __T21)));
# 85 "kernel_cuda.cu"
}
# 86 "kernel_cuda.cu"
__syncthreads();
# 87 "kernel_cuda.cu"
__cuda_local_var_16186_17_non_const_local_shift = __cuda_local_var_16155_15_non_const_tid;
# 88 "kernel_cuda.cu"
while (__cuda_local_var_16186_17_non_const_local_shift < (*__cuda_local_var_16150_10_non_const_tail_bin))
# 88 "kernel_cuda.cu"
{
# 89 "kernel_cuda.cu"
(q2[((*__cuda_local_var_16152_10_non_const_shift) + __cuda_local_var_16186_17_non_const_local_shift)]) = (__cuda_local_var_16151_10_non_const_l_q2[__cuda_local_var_16186_17_non_const_local_shift]);
# 91 "kernel_cuda.cu"
__cuda_local_var_16186_17_non_const_local_shift += __cuda_local_var_16158_15_non_const_WG_SIZE;
# 92 "kernel_cuda.cu"
}
# 93 "kernel_cuda.cu"
__syncthreads();
# 94 "kernel_cuda.cu"
if (__cuda_local_var_16155_15_non_const_tid == 0)
# 94 "kernel_cuda.cu"
{
# 96 "kernel_cuda.cu"
(*__cuda_local_var_16150_10_non_const_tail_bin) = 0;
# 97 "kernel_cuda.cu"
}
# 98 "kernel_cuda.cu"
__syncthreads();
# 99 "kernel_cuda.cu"
}
# 101 "kernel_cuda.cu"
if (((__cuda_local_var_16176_9_non_const_my_base + __cuda_local_var_16155_15_non_const_tid) < __cuda_local_var_16162_9_non_const_n_t_local) && ((*overflow) == 0))
# 101 "kernel_cuda.cu"
{
# 103 "kernel_cuda.cu"
 int __cuda_local_var_16202_17_non_const_pid;
# 106 "kernel_cuda.cu"
 int __cuda_local_var_16205_17_non_const_cur_cost;
# 107 "kernel_cuda.cu"
 Node __cuda_local_var_16206_18_non_const_cur_node;
# 110 "kernel_cuda.cu"
 Edge __cuda_local_var_16209_18_non_const_cur_edge;
# 103 "kernel_cuda.cu"
__cuda_local_var_16202_17_non_const_pid = (q1[(__cuda_local_var_16176_9_non_const_my_base + __cuda_local_var_16155_15_non_const_tid)]);
# 105 "kernel_cuda.cu"
_Z10atomicExchPii((color + __cuda_local_var_16202_17_non_const_pid), 16677221);
# 106 "kernel_cuda.cu"
__cuda_local_var_16205_17_non_const_cur_cost = (__iAtomicAdd((cost + __cuda_local_var_16202_17_non_const_pid), 0));
# 108 "kernel_cuda.cu"
(__cuda_local_var_16206_18_non_const_cur_node.x) = ((graph_nodes_av[__cuda_local_var_16202_17_non_const_pid]).x);
# 109 "kernel_cuda.cu"
(__cuda_local_var_16206_18_non_const_cur_node.y) = ((graph_nodes_av[__cuda_local_var_16202_17_non_const_pid]).y); {
# 112 "kernel_cuda.cu"
 int i;
# 112 "kernel_cuda.cu"
i = (__cuda_local_var_16206_18_non_const_cur_node.x);
# 112 "kernel_cuda.cu"
for (; (i < ((__cuda_local_var_16206_18_non_const_cur_node.y) + (__cuda_local_var_16206_18_non_const_cur_node.x))); i++)
# 112 "kernel_cuda.cu"
{
# 115 "kernel_cuda.cu"
 int __cuda_local_var_16214_21_non_const_id;
# 116 "kernel_cuda.cu"
 int __cuda_local_var_16215_21_non_const_cost_local;
# 118 "kernel_cuda.cu"
 int __cuda_local_var_16217_21_non_const_orig_cost;
# 113 "kernel_cuda.cu"
(__cuda_local_var_16209_18_non_const_cur_edge.x) = ((graph_edges_av[i]).x);
# 114 "kernel_cuda.cu"
(__cuda_local_var_16209_18_non_const_cur_edge.y) = ((graph_edges_av[i]).y);
# 115 "kernel_cuda.cu"
__cuda_local_var_16214_21_non_const_id = (__cuda_local_var_16209_18_non_const_cur_edge.x);
# 116 "kernel_cuda.cu"
__cuda_local_var_16215_21_non_const_cost_local = (__cuda_local_var_16209_18_non_const_cur_edge.y);
# 117 "kernel_cuda.cu"
__cuda_local_var_16215_21_non_const_cost_local += __cuda_local_var_16205_17_non_const_cur_cost;
# 118 "kernel_cuda.cu"
__cuda_local_var_16217_21_non_const_orig_cost = (__iAtomicMax((cost + __cuda_local_var_16214_21_non_const_id), __cuda_local_var_16215_21_non_const_cost_local));
# 119 "kernel_cuda.cu"
if (__cuda_local_var_16217_21_non_const_orig_cost < __cuda_local_var_16215_21_non_const_cost_local)
# 119 "kernel_cuda.cu"
{
# 120 "kernel_cuda.cu"
 int __cuda_local_var_16219_25_non_const_old_color;
# 120 "kernel_cuda.cu"
__cuda_local_var_16219_25_non_const_old_color = (__iAtomicMax((color + __cuda_local_var_16214_21_non_const_id), __cuda_local_var_16164_9_non_const_gray_shade_local));
# 121 "kernel_cuda.cu"
if (__cuda_local_var_16219_25_non_const_old_color != __cuda_local_var_16164_9_non_const_gray_shade_local)
# 121 "kernel_cuda.cu"
{
# 123 "kernel_cuda.cu"
 int __cuda_local_var_16222_29_non_const_tail_index;
# 123 "kernel_cuda.cu"
__cuda_local_var_16222_29_non_const_tail_index = (__iAtomicAdd(__cuda_local_var_16150_10_non_const_tail_bin, 1));
# 124 "kernel_cuda.cu"
if (__cuda_local_var_16222_29_non_const_tail_index >= 1600)
# 124 "kernel_cuda.cu"
{
# 125 "kernel_cuda.cu"
(*overflow) = 1;
# 126 "kernel_cuda.cu"
} else {
# 127 "kernel_cuda.cu"
(__cuda_local_var_16151_10_non_const_l_q2[__cuda_local_var_16222_29_non_const_tail_index]) = __cuda_local_var_16214_21_non_const_id; }
# 128 "kernel_cuda.cu"
}
# 129 "kernel_cuda.cu"
}
# 130 "kernel_cuda.cu"
} }
# 131 "kernel_cuda.cu"
}
# 133 "kernel_cuda.cu"
if (__cuda_local_var_16155_15_non_const_tid == 0) {
# 134 "kernel_cuda.cu"
(*__cuda_local_var_16153_10_non_const_base) = (__iAtomicAdd((head + 0), __cuda_local_var_16158_15_non_const_WG_SIZE)); }
# 135 "kernel_cuda.cu"
__syncthreads();
# 136 "kernel_cuda.cu"
__cuda_local_var_16176_9_non_const_my_base = (*__cuda_local_var_16153_10_non_const_base);
# 137 "kernel_cuda.cu"
}
# 140 "kernel_cuda.cu"
if (__cuda_local_var_16155_15_non_const_tid == 0)
# 140 "kernel_cuda.cu"
{
# 141 "kernel_cuda.cu"
(*__cuda_local_var_16152_10_non_const_shift) = ((__T20 = (*__cuda_local_var_16150_10_non_const_tail_bin)) , (__iAtomicAdd((tail + 0), __T20)));
# 142 "kernel_cuda.cu"
}
# 143 "kernel_cuda.cu"
__syncthreads();
# 145 "kernel_cuda.cu"
__cuda_local_var_16244_9_non_const_local_shift = __cuda_local_var_16155_15_non_const_tid;
# 146 "kernel_cuda.cu"
while (__cuda_local_var_16244_9_non_const_local_shift < (*__cuda_local_var_16150_10_non_const_tail_bin))
# 146 "kernel_cuda.cu"
{
# 147 "kernel_cuda.cu"
(q2[((*__cuda_local_var_16152_10_non_const_shift) + __cuda_local_var_16244_9_non_const_local_shift)]) = (__cuda_local_var_16151_10_non_const_l_q2[__cuda_local_var_16244_9_non_const_local_shift]);
# 149 "kernel_cuda.cu"
__cuda_local_var_16244_9_non_const_local_shift += __cuda_local_var_16158_15_non_const_WG_SIZE;
# 150 "kernel_cuda.cu"
}
# 153 "kernel_cuda.cu"
if (__cuda_local_var_16156_15_non_const_gtid == 0)
# 153 "kernel_cuda.cu"
{
# 154 "kernel_cuda.cu"
_Z9atomicAddPii((iter + 0), 1);
# 155 "kernel_cuda.cu"
}
# 156 "kernel_cuda.cu"
}}
