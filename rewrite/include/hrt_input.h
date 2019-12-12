#ifndef HRT_INPUT
#define HRT_INPUT

//includes
#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs
typedef struct hrt_Pad {
	u8 A;
	u8 B;
	u8 L;
	u8 R;
	u8 UP;
	u8 DOWN;
	u8 LEFT;
	u8 RIGHT;
	u8 SELECT;
	u8 START;
} PAD;
struct hrt_Pad *ptr_pad;

//Macros
#define KEY_A 1
#define KEY_B 2
#define KEY_SELECT 4
#define KEY_START 8
#define KEY_RIGHT 16
#define KEY_LEFT 32
#define KEY_UP 64
#define KEY_DOWN 128
#define KEY_R 256
#define KEY_L 512
#define KEY_ANY 0x03FF

#define hrt_SetKeyStructPointer(struct) ptr_pad = &struct;
#define hrt_IsKeyPressed(key) (*ptr_pad).key

#define keyDown(k)  (~REG_KEYCNT & k)

//Functions
HEART_API void hrt_GetPad(PAD* pad); //Gets the keypad values, and places them into an array

#endif