#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_FLASH
#define HRT_FLASH

#include "hrt_types.h"
#include "hrt_memmap.h"
#include "hrt_misc.h"

//Functions
HEART_API u32 hrt_GetFlashType(); //Queries the cartridge to find one of four different flash chip types.
HEART_API void hrt_SaveToFlash(); //Saves the contents of SRAM to the Flash
HEART_API void hrt_InitFlash(u32* ptr, u32 size); //Initializes the flash support
HEART_API void hrt_SetFlashPointer(u32* ptr); //sets the offset of the flash. Defaults to 0x6ACFC0 (0x80x6ACFC0).

//Inlines

#endif

#ifdef __cplusplus
}
#endif
