#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_TEXT
#define HRT_TEXT

//Includes
#include <stdarg.h>
#include <stdio.h>
#include "hrt_types.h"

//Functions
HEART_API void hrt_ClearText(); //Clear text on screen
HEART_API void hrt_InitTextEngine(u8 bg); //Initialize text
HEART_API void hrt_Print(u8 tx, u8 ty, char* str, ...); //Print, can be used with printf-esque escape characters to inject ints or strings and whatnot.
HEART_API void hrt_PrintFast(u8 tx, u8 ty, char* str); //Print without setting up a va_list every single time. Less flexible, but speeds up printing.
HEART_API void hrt_SetTextColors(u16 out, u16 in); //Sets the colors of the text

#endif

#ifdef __cplusplus
}
#endif
