#ifndef HRT_BIOS
#define HRT_BIOS

//Includes
#include <stdbool.h>
#include "hrt_types.h"

//Structs

//Macros
#define hrt_GetROMBuildDate() __DATE__
#define hrt_GetROMBuildTime() __TIME__
#define hrt_Assert(expr, error) AssertImplementation(expr, error, __FILE__, __LINE__)

//Functions
HEART_API void AssertImplementation(bool expression, char* error, char* file, u32 line); //Assertion, designed for debugging.

//Inlines

#endif