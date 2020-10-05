#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_FX
#define HRT_FX

#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs

//Macros

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

#ifdef __cplusplus
}
#endif