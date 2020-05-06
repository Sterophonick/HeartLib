#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_DEBUG
#define HRT_DEBUG

//Includes
#include <stdbool.h>
#include "hrt_types.h"

//Structs
#define __FILENAME__ (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : __FILE__)

//Macros
#define hrt_GetROMBuildDate() __DATE__
#define hrt_GetROMBuildTime() __TIME__
#define hrt_Assert(expr, error) AssertImplementation(expr, error, __FILENAME__, __LINE__)

//Functions
HEART_API void AssertImplementation(bool expression, char* error, char* file, u32 line); //Assertion, designed for debugging.

//Inlines

#endif

#ifdef __cplusplus
}
#endif