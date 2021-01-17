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
# 39 "support/common.h"

# 39 "support/common.h"
struct flowvector;
# 49 "support/partitioner.h"
struct Partitioner;
# 128 "/usr/include/c++/5/bits/cpp_type_traits.h" 3

# 128 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_voidIvEUt_E {
# 128 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt9__is_voidIvE7__valueE = 1};
# 149 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIbEUt_E {
# 149 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIbE7__valueE = 1};
# 156 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIcEUt_E {
# 156 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIcE7__valueE = 1};
# 163 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIaEUt_E {
# 163 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIaE7__valueE = 1};
# 170 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIhEUt_E {
# 170 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIhE7__valueE = 1};
# 178 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIwEUt_E {
# 178 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIwE7__valueE = 1};
# 202 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIsEUt_E {
# 202 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIsE7__valueE = 1};
# 209 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerItEUt_E {
# 209 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerItE7__valueE = 1};
# 216 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIiEUt_E {
# 216 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIiE7__valueE = 1};
# 223 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIjEUt_E {
# 223 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIjE7__valueE = 1};
# 230 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIlEUt_E {
# 230 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIlE7__valueE = 1};
# 237 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerImEUt_E {
# 237 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerImE7__valueE = 1};
# 244 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIxEUt_E {
# 244 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIxE7__valueE = 1};
# 251 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIyEUt_E {
# 251 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIyE7__valueE = 1};
# 270 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerInEUt_E {
# 270 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerInE7__valueE = 1};
# 270 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIoEUt_E {
# 270 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIoE7__valueE = 1};
# 298 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIfEUt_E {
# 298 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIfE7__valueE = 1};
# 305 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIdEUt_E {
# 305 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIdE7__valueE = 1};
# 312 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIeEUt_E {
# 312 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt13__is_floatingIeE7__valueE = 1};
# 380 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIcEUt_E {
# 380 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt9__is_charIcE7__valueE = 1};
# 388 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIwEUt_E {
# 388 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt9__is_charIwE7__valueE = 1};
# 403 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIcEUt_E {
# 403 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIcE7__valueE = 1};
# 410 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIaEUt_E {
# 410 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIaE7__valueE = 1};
# 417 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIhEUt_E {
# 417 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt9__is_byteIhE7__valueE = 1};
# 138 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIeEUt_E {
# 138 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIeE7__valueE};
# 138 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIdEUt_E {
# 138 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIdE7__valueE};
# 138 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIfEUt_E {
# 138 "/usr/include/c++/5/bits/cpp_type_traits.h" 3
_ZNSt12__is_integerIfE7__valueE};
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3
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
# 218 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 2 3
# 39 "support/common.h"

# 39 "support/common.h"
struct flowvector {
# 40 "support/common.h"
int x;
# 41 "support/common.h"
int y;
# 42 "support/common.h"
int vx;
# 43 "support/common.h"
int vy;};
# 44 "support/common.h"
typedef struct flowvector flowvector;
# 49 "support/partitioner.h"
struct Partitioner {
# 51 "support/partitioner.h"
int n_tasks;
# 52 "support/partitioner.h"
int cut;
# 53 "support/partitioner.h"
int current;};
# 71 "support/partitioner.h"
typedef struct Partitioner Partitioner;
# 111 "/opt/nvidia8/bin/..//include/cuda_device_runtime_api.h"
extern 
# 111 "/opt/nvidia8/bin/..//include/cuda_device_runtime_api.h" 3
__attribute__((device)) 
# 111 "/opt/nvidia8/bin/..//include/cuda_device_runtime_api.h"
                              enum cudaError cudaGetLastError(void);
# 168 "/opt/nvidia8/bin/..//include/device_functions.h"
 
# 168 "/opt/nvidia8/bin/..//include/device_functions.h" 3
__attribute__((device_builtin)) 
# 168 "/opt/nvidia8/bin/..//include/device_functions.h"
                   extern 
# 168 "/opt/nvidia8/bin/..//include/device_functions.h" 3
                   __attribute__((device)) 
# 168 "/opt/nvidia8/bin/..//include/device_functions.h"
                                                  void __syncthreads(void);
# 81 "/opt/nvidia8/bin/..//include/device_atomic_functions.h"
 
# 81 "/opt/nvidia8/bin/..//include/device_atomic_functions.h" 3
__attribute__((device_builtin)) 
# 81 "/opt/nvidia8/bin/..//include/device_atomic_functions.h"
                   extern 
# 81 "/opt/nvidia8/bin/..//include/device_atomic_functions.h" 3
                   __attribute__((device)) 
# 81 "/opt/nvidia8/bin/..//include/device_atomic_functions.h"
                                                  int __iAtomicAdd(int *, int);
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
static 
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp" 3
__attribute__((device)) 
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
                              __inline__ int _Z9atomicAddPii(int *, int);
# 47 "kernel_cuda.cu"
extern 
# 47 "kernel_cuda.cu" 3
__attribute__((device)) 
# 47 "kernel_cuda.cu"
                              int _Z18gen_model_paramGPUiiiiiiiiPf(int, int, int, int, int, int, int, int, float *);
# 72 "kernel_cuda.cu"

# 72 "kernel_cuda.cu" 3
__attribute__((global)) 
# 72 "kernel_cuda.cu"
                       extern void _Z19RANSAC_kernel_blockiiififPfP10flowvectorPiS2_S2_S2_(int, int, int, float, int, float, float *, flowvector *, int *, int *, int *, int *);
# 81 "kernel_cuda.cu"
extern 
# 81 "kernel_cuda.cu" 3
       __attribute__((shared)) 
# 81 "kernel_cuda.cu"
                  int l_mem[];
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
# 83 "kernel_cuda.cu" 2
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
static 
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp" 3
__attribute__((device)) 
# 76 "/opt/nvidia8/bin/..//include/device_atomic_functions.hpp"
                              __inline__ int _Z9atomicAddPii(
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
# 47 "kernel_cuda.cu"
 
# 47 "kernel_cuda.cu" 3
__attribute__((device)) 
# 47 "kernel_cuda.cu"
                       int _Z18gen_model_paramGPUiiiiiiiiPf(
# 47 "kernel_cuda.cu"
int x1,
# 47 "kernel_cuda.cu"
int y1,
# 47 "kernel_cuda.cu"
int vx1,
# 47 "kernel_cuda.cu"
int vy1,
# 47 "kernel_cuda.cu"
int x2,
# 47 "kernel_cuda.cu"
int y2,
# 47 "kernel_cuda.cu"
int vx2,
# 47 "kernel_cuda.cu"
int vy2,
# 47 "kernel_cuda.cu"
float *model_param){
# 47 "kernel_cuda.cu"
{
# 48 "kernel_cuda.cu"
 float __cuda_local_var_16940_11_non_const_temp;
# 50 "kernel_cuda.cu"
__cuda_local_var_16940_11_non_const_temp = ((float)((((vx1 * (vx1 - (2 * vx2))) + (vx2 * vx2)) + (vy1 * vy1)) - (vy2 * ((2 * vy1) - vy2))));
# 51 "kernel_cuda.cu"
if (__cuda_local_var_16940_11_non_const_temp == (0.0F))
# 51 "kernel_cuda.cu"
{
# 52 "kernel_cuda.cu"
return 0;
# 53 "kernel_cuda.cu"
}
# 54 "kernel_cuda.cu"
(model_param[0]) = ( fdividef(((float)(((vx1 * ((((((-vx2) * x1) + (vx1 * x2)) - (vx2 * x2)) + (vy2 * y1)) - (vy2 * y2))) + (vy1 * ((((((-vy2) * x1) + (vy1 * x2)) - (vy2 * x2)) - (vx2 * y1)) + (vx2 * y2)))) + (x1 * ((vy2 * vy2) + (vx2 * vx2))))) , __cuda_local_var_16940_11_non_const_temp));
# 58 "kernel_cuda.cu"
(model_param[1]) = ( fdividef(((float)(((vx2 * (((((vy1 * x1) - (vy1 * x2)) - (vx1 * y1)) + (vx2 * y1)) - (vx1 * y2))) + (vy2 * ((((((-vx1) * x1) + (vx1 * x2)) - (vy1 * y1)) + (vy2 * y1)) - (vy1 * y2)))) + (y2 * ((vx1 * vx1) + (vy1 * vy1))))) , __cuda_local_var_16940_11_non_const_temp));
# 63 "kernel_cuda.cu"
__cuda_local_var_16940_11_non_const_temp = ((float)((((x1 * (x1 - (2 * x2))) + (x2 * x2)) + (y1 * (y1 - (2 * y2)))) + (y2 * y2)));
# 64 "kernel_cuda.cu"
if (__cuda_local_var_16940_11_non_const_temp == (0.0F))
# 64 "kernel_cuda.cu"
{
# 65 "kernel_cuda.cu"
return 0;
# 66 "kernel_cuda.cu"
}
# 67 "kernel_cuda.cu"
(model_param[2]) = ( fdividef(((float)(((x1 - x2) * (vx1 - vx2)) + ((y1 - y2) * (vy1 - vy2)))) , __cuda_local_var_16940_11_non_const_temp));
# 68 "kernel_cuda.cu"
(model_param[3]) = ( fdividef(((float)(((x1 - x2) * (vy1 - vy2)) + ((y2 - y1) * (vx1 - vx2)))) , __cuda_local_var_16940_11_non_const_temp));
# 69 "kernel_cuda.cu"
return 1;
# 70 "kernel_cuda.cu"
}}
# 72 "kernel_cuda.cu"

# 72 "kernel_cuda.cu" 3
__attribute__((global)) 
# 72 "kernel_cuda.cu"
                       void _Z19RANSAC_kernel_blockiiififPfP10flowvectorPiS2_S2_S2_(
# 72 "kernel_cuda.cu"
int flowvector_count,
# 72 "kernel_cuda.cu"
int max_iter,
# 72 "kernel_cuda.cu"
int error_threshold,
# 72 "kernel_cuda.cu"
float convergence_threshold,
# 73 "kernel_cuda.cu"
int n_tasks,
# 73 "kernel_cuda.cu"
float alpha,
# 73 "kernel_cuda.cu"
float *model_param_local,
# 73 "kernel_cuda.cu"
flowvector *flowvectors,
# 74 "kernel_cuda.cu"
int *random_numbers,
# 74 "kernel_cuda.cu"
int *model_candidate,
# 74 "kernel_cuda.cu"
int *outliers_candidate,
# 75 "kernel_cuda.cu"
int *g_out_id){
# 79 "kernel_cuda.cu"
{ Partitioner __T20;
# 82 "kernel_cuda.cu"
 int *__cuda_local_var_16974_10_non_const_outlier_block_count;
# 90 "kernel_cuda.cu"
 Partitioner __cuda_local_var_16982_17_non_const_p;
# 93 "kernel_cuda.cu"
 int __cuda_local_var_16985_15_non_const_tx;
# 94 "kernel_cuda.cu"
 int __cuda_local_var_16986_15_non_const_bx;
# 95 "kernel_cuda.cu"
 int __cuda_local_var_16987_15_non_const_num_blocks;
# 97 "kernel_cuda.cu"
 float __cuda_local_var_16989_11_non_const_vx_error;
# 97 "kernel_cuda.cu"
 float __cuda_local_var_16989_21_non_const_vy_error;
# 98 "kernel_cuda.cu"
 int __cuda_local_var_16990_9_non_const_outlier_local_count;
# 82 "kernel_cuda.cu"
__cuda_local_var_16974_10_non_const_outlier_block_count = l_mem;
# 90 "kernel_cuda.cu"
memset((char *)&__cuda_local_var_16982_17_non_const_p, 0,sizeof(__cuda_local_var_16982_17_non_const_p));
# 90 "kernel_cuda.cu"
__cuda_local_var_16982_17_non_const_p = ((((__T20.n_tasks) = n_tasks) , (void)(((((double)alpha) >= (0.0)) && (((double)alpha) <= (1.0))) ? ((void)((__T20.cut) = ((int)__float2int_rz((float)((((float)(__T20.n_tasks)) * alpha)))))) : ((void)0))) , __T20);
# 93 "kernel_cuda.cu"
__cuda_local_var_16985_15_non_const_tx = ((int)(threadIdx.x));
# 94 "kernel_cuda.cu"
__cuda_local_var_16986_15_non_const_bx = ((int)(blockIdx.x));
# 95 "kernel_cuda.cu"
__cuda_local_var_16987_15_non_const_num_blocks = ((int)(gridDim.x));
# 98 "kernel_cuda.cu"
__cuda_local_var_16990_9_non_const_outlier_local_count = 0; {
# 101 "kernel_cuda.cu"
 int iter;
# 101 "kernel_cuda.cu"
iter = (((__cuda_local_var_16982_17_non_const_p.current) = ((int)(((unsigned)(__cuda_local_var_16982_17_non_const_p.cut)) + (blockIdx.x)))) , (__cuda_local_var_16982_17_non_const_p.current));
# 101 "kernel_cuda.cu"
for (; ((__nv_bool)((((const Partitioner *)(&__cuda_local_var_16982_17_non_const_p))->current) < (((const Partitioner *)(&__cuda_local_var_16982_17_non_const_p))->n_tasks))); iter = (((__cuda_local_var_16982_17_non_const_p.current) = ((int)(((unsigned)(__cuda_local_var_16982_17_non_const_p.current)) + (gridDim.x)))) , (__cuda_local_var_16982_17_non_const_p.current))) {
# 101 "kernel_cuda.cu"
{
# 103 "kernel_cuda.cu"
 float *__cuda_local_var_16995_16_non_const_model_param;
# 103 "kernel_cuda.cu"
__cuda_local_var_16995_16_non_const_model_param = (model_param_local + (4 * iter));
# 107 "kernel_cuda.cu"
if (__cuda_local_var_16985_15_non_const_tx == 0)
# 107 "kernel_cuda.cu"
{
# 110 "kernel_cuda.cu"
 int __cuda_local_var_17002_17_non_const_rand_num;
# 111 "kernel_cuda.cu"
 flowvector __cuda_local_var_17003_24_non_const_fv[2];
# 116 "kernel_cuda.cu"
 int __cuda_local_var_17008_17_non_const_ret;
# 117 "kernel_cuda.cu"
 int __cuda_local_var_17009_17_non_const_vx1;
# 118 "kernel_cuda.cu"
 int __cuda_local_var_17010_17_non_const_vy1;
# 119 "kernel_cuda.cu"
 int __cuda_local_var_17011_17_non_const_vx2;
# 120 "kernel_cuda.cu"
 int __cuda_local_var_17012_17_non_const_vy2;
# 108 "kernel_cuda.cu"
(__cuda_local_var_16974_10_non_const_outlier_block_count[0]) = 0;
# 110 "kernel_cuda.cu"
__cuda_local_var_17002_17_non_const_rand_num = (random_numbers[((iter * 2) + 0)]);
# 112 "kernel_cuda.cu"
((__cuda_local_var_17003_24_non_const_fv)[0]) = (flowvectors[__cuda_local_var_17002_17_non_const_rand_num]);
# 113 "kernel_cuda.cu"
__cuda_local_var_17002_17_non_const_rand_num = (random_numbers[((iter * 2) + 1)]);
# 114 "kernel_cuda.cu"
((__cuda_local_var_17003_24_non_const_fv)[1]) = (flowvectors[__cuda_local_var_17002_17_non_const_rand_num]);
# 116 "kernel_cuda.cu"
__cuda_local_var_17008_17_non_const_ret = 0;
# 117 "kernel_cuda.cu"
__cuda_local_var_17009_17_non_const_vx1 = ((((__cuda_local_var_17003_24_non_const_fv)[0]).vx) - (((__cuda_local_var_17003_24_non_const_fv)[0]).x));
# 118 "kernel_cuda.cu"
__cuda_local_var_17010_17_non_const_vy1 = ((((__cuda_local_var_17003_24_non_const_fv)[0]).vy) - (((__cuda_local_var_17003_24_non_const_fv)[0]).y));
# 119 "kernel_cuda.cu"
__cuda_local_var_17011_17_non_const_vx2 = ((((__cuda_local_var_17003_24_non_const_fv)[1]).vx) - (((__cuda_local_var_17003_24_non_const_fv)[1]).x));
# 120 "kernel_cuda.cu"
__cuda_local_var_17012_17_non_const_vy2 = ((((__cuda_local_var_17003_24_non_const_fv)[1]).vy) - (((__cuda_local_var_17003_24_non_const_fv)[1]).y));
# 123 "kernel_cuda.cu"
__cuda_local_var_17008_17_non_const_ret = (_Z18gen_model_paramGPUiiiiiiiiPf((((__cuda_local_var_17003_24_non_const_fv)[0]).x), (((__cuda_local_var_17003_24_non_const_fv)[0]).y), __cuda_local_var_17009_17_non_const_vx1, __cuda_local_var_17010_17_non_const_vy1, (((__cuda_local_var_17003_24_non_const_fv)[1]).x), (((__cuda_local_var_17003_24_non_const_fv)[1]).y), __cuda_local_var_17011_17_non_const_vx2, __cuda_local_var_17012_17_non_const_vy2, __cuda_local_var_16995_16_non_const_model_param));
# 124 "kernel_cuda.cu"
if (__cuda_local_var_17008_17_non_const_ret == 0) {
# 125 "kernel_cuda.cu"
(__cuda_local_var_16995_16_non_const_model_param[0]) = (-2011.0F); }
# 126 "kernel_cuda.cu"
}
# 127 "kernel_cuda.cu"
__syncthreads();
# 129 "kernel_cuda.cu"
if ((__cuda_local_var_16995_16_non_const_model_param[0]) == (-2011.0F)) {
# 130 "kernel_cuda.cu"
goto __T21; }
# 134 "kernel_cuda.cu"
__cuda_local_var_16990_9_non_const_outlier_local_count = 0; {
# 137 "kernel_cuda.cu"
 int i;
# 137 "kernel_cuda.cu"
i = __cuda_local_var_16985_15_non_const_tx;
# 137 "kernel_cuda.cu"
for (; (i < flowvector_count); i += (blockDim.x))
# 137 "kernel_cuda.cu"
{
# 138 "kernel_cuda.cu"
 flowvector __cuda_local_var_17030_24_non_const_fvreg;
# 138 "kernel_cuda.cu"
memset((char *)&__cuda_local_var_17030_24_non_const_fvreg, 0,sizeof(__cuda_local_var_17030_24_non_const_fvreg));
# 138 "kernel_cuda.cu"
__cuda_local_var_17030_24_non_const_fvreg = (flowvectors[i]);
# 139 "kernel_cuda.cu"
__cuda_local_var_16989_11_non_const_vx_error = ((float)(((__cuda_local_var_17030_24_non_const_fvreg.x) + (((int)__float2int_rz((float)(((((float)(__cuda_local_var_17030_24_non_const_fvreg.x)) - (__cuda_local_var_16995_16_non_const_model_param[0])) * (__cuda_local_var_16995_16_non_const_model_param[2]))))) - ((int)__float2int_rz((float)(((((float)(__cuda_local_var_17030_24_non_const_fvreg.y)) - (__cuda_local_var_16995_16_non_const_model_param[1])) * (__cuda_local_var_16995_16_non_const_model_param[3]))))))) - (__cuda_local_var_17030_24_non_const_fvreg.vx)));
# 142 "kernel_cuda.cu"
__cuda_local_var_16989_21_non_const_vy_error = ((float)(((__cuda_local_var_17030_24_non_const_fvreg.y) + (((int)__float2int_rz((float)(((((float)(__cuda_local_var_17030_24_non_const_fvreg.y)) - (__cuda_local_var_16995_16_non_const_model_param[1])) * (__cuda_local_var_16995_16_non_const_model_param[2]))))) + ((int)__float2int_rz((float)(((((float)(__cuda_local_var_17030_24_non_const_fvreg.x)) - (__cuda_local_var_16995_16_non_const_model_param[0])) * (__cuda_local_var_16995_16_non_const_model_param[3]))))))) - (__cuda_local_var_17030_24_non_const_fvreg.vy)));
# 145 "kernel_cuda.cu"
if (((fabsf(__cuda_local_var_16989_11_non_const_vx_error)) >= ((float)error_threshold)) || ((fabsf(__cuda_local_var_16989_21_non_const_vy_error)) >= ((float)error_threshold)))
# 145 "kernel_cuda.cu"
{
# 146 "kernel_cuda.cu"
__cuda_local_var_16990_9_non_const_outlier_local_count++;
# 147 "kernel_cuda.cu"
}
# 148 "kernel_cuda.cu"
} }
# 152 "kernel_cuda.cu"
_Z9atomicAddPii((__cuda_local_var_16974_10_non_const_outlier_block_count + 0), __cuda_local_var_16990_9_non_const_outlier_local_count);
# 155 "kernel_cuda.cu"
__syncthreads();
# 156 "kernel_cuda.cu"
if (__cuda_local_var_16985_15_non_const_tx == 0)
# 156 "kernel_cuda.cu"
{
# 165 "kernel_cuda.cu"
if (((float)(__cuda_local_var_16974_10_non_const_outlier_block_count[0])) < (((float)flowvector_count) * convergence_threshold))
# 165 "kernel_cuda.cu"
{
# 166 "kernel_cuda.cu"
 int __cuda_local_var_17051_21_non_const_index;
# 166 "kernel_cuda.cu"
__cuda_local_var_17051_21_non_const_index = (__iAtomicAdd(g_out_id, 1));
# 167 "kernel_cuda.cu"
(outliers_candidate[__cuda_local_var_17051_21_non_const_index]) = (__cuda_local_var_16974_10_non_const_outlier_block_count[0]);
# 168 "kernel_cuda.cu"
(model_candidate[__cuda_local_var_17051_21_non_const_index]) = iter;
# 169 "kernel_cuda.cu"
}
# 171 "kernel_cuda.cu"
}
# 172 "kernel_cuda.cu"
} __T21:; } }
# 173 "kernel_cuda.cu"
}}
