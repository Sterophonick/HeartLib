#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_TYPES
#define HRT_TYPES

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;
typedef unsigned int uint;

typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned long vu32;
typedef volatile unsigned long long vu64;
typedef volatile unsigned int vuint;

typedef volatile signed char vs8;
typedef volatile signed short vs16;
typedef volatile signed long vs32;
typedef volatile signed long long vs64;
typedef volatile signed int vsint;

typedef const signed char cs8;
typedef const signed short cs16;
typedef const signed long cs32;
typedef const signed long long cs64;
typedef const signed int csint;

typedef const volatile signed char cvs8;
typedef const volatile signed short cvs16;
typedef const volatile signed long cvs32;
typedef const volatile signed long long cvs64;
typedef const volatile signed int cvsint;

typedef const volatile unsigned char cvu8;
typedef const volatile unsigned short cvu16;
typedef const volatile unsigned long cvu32;
typedef const volatile unsigned long long cvu64;
typedef const volatile unsigned int cvuint;

typedef const unsigned char cu8;
typedef const unsigned short cu16;
typedef const unsigned long cu32;
typedef const unsigned long long cu64;
typedef const unsigned int cuint;

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef signed int sint;

typedef void ( * IntFn)(void);

typedef float f16;
typedef double f32;
typedef long double lf32;

typedef long long int qword;
typedef long int dword;
typedef short int word;
typedef char byte;

#define sivoid static inline void
#define svoid static void
#define ivoid inline void

#define EWRAM_DATA					__attribute__((section(".ewram")))
#define IWRAM_DATA					__attribute__((section(".iwram")))
#define EWRAM_BSS					__attribute__((section(".sbss")))
#define EWRAM_CODE					__attribute__((section(".ewram"), long_call))
#define IWRAM_CODE					__attribute__((section(".iwram"), long_call))

#define ATTR_ALIGNED(n)             __attribute__ ((aligned(n)))
#define ATTR_PACKED                 __attribute__ ((packed))
#define ATTR_SECTION(name)          __attribute__ ((section(name)))
#define ATTR_DEPRECATED             __attribute__ ((deprecated))
#define ATTR_NOINLINE               __attribute__ ((noinline))
#define ATTR_FORCEINLINE            __attribute__ ((always_inline))
#define ATTR_USED                   __attribute__ ((used))
#define ATTR_WEAK                   __attribute__ ((weak))
#define ATTR_NORETURN               __attribute__ ((noreturn))
#define ATTR_PURE                   __attribute__ ((pure))
#define ATTR_UNUSED                 __attribute__ ((unused))
#define ATTR_COMMON                 __attribute__ ((common))
#define ATTR_NOCOMMON               __attribute__ ((nocommon))
#define ATTR_NOINSTRUMENT			__attribute__ ((no_instrument_function))
#define ATTR_COLD					__attribute__ ((cold))

#define HEART_API extern

#endif

#ifdef __cplusplus
}
#endif