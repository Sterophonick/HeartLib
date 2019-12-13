#ifndef HRT_FX
#define HRT_FX

#include "hrt_types.h"
#include "hrt_memmap.h"

//Functions
HEART_API void hrt_SetFXMode(u16 mode);
HEART_API void hrt_SetFXLevel(u8 level);
HEART_API void hrt_FXSetBlendMode(u8 mode);
HEART_API void hrt_SetFXAlphaLevel(u8 src, u8 dst);
HEART_API void hrt_FXToggleBackdrop(u8 target);
HEART_API void hrt_FXToggleOBJ(u8 target);
HEART_API void hrt_FXToggleBG(u8 layer, u8 target);

//Macros
#define FX_LAYER_BG(bg, target) 	1UL << (bg + (target*8))
#define FX_LAYER_OBJ(target)	 	1UL << (4 + (target*8))
#define FX_LAYER_BACKDROP(target) 	1UL << (5 + (target*8))

//Inline function definitions

#endif