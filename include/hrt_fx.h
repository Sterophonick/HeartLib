#ifndef HRT_FX
#define HRT_FX

#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs

//Macros
#define FX_MODE_NONE 		0
#define FX_MODE_ALPHA 		1
#define FX_MODE_BRIGHTEN	2
#define FX_MODE_DARKEN		3
#define FX_LAYER_BG(bg, target) 	1UL << (bg + (target*8))
#define FX_LAYER_OBJ(target)	 	1UL << (4 + (target*8))
#define FX_LAYER_BACKDROP(target) 	1UL << (5 + (target*8))

//Functions
HEART_API void hrt_SetFXMode(u16 mode);
HEART_API void hrt_SetFXLevel(u8 level);
HEART_API void hrt_FXSetBlendMode(u8 mode);
HEART_API void hrt_SetFXAlphaLevel(u8 src, u8 dst);
HEART_API void hrt_FXToggleBackdrop(u8 target);
HEART_API void hrt_FXToggleOBJ(u8 target);
HEART_API void hrt_FXToggleBG(u8 layer, u8 target);
HEART_API void hrt_FXEnableBackdrop(u8 target);
HEART_API void hrt_FXDisableBackdrop(u8 target);
HEART_API void hrt_FXEnableBG(u8 layer, u8 target);
HEART_API void hrt_FXDisableBG(u8 layer, u8 target);
HEART_API void hrt_FXEnableOBJ(u8 target);
HEART_API void hrt_FXDisableOBJ(u8 target);

//Inlines

#endif