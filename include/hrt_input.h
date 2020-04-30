#ifndef HRT_INPUT
#define HRT_INPUT

//includes
#include "hrt_types.h"
#include "hrt_memmap.h"

//Structs
typedef enum KEYPAD_BITS {
	KEY_A = (1 << 0),	/*!< keypad A button */
	KEY_B = (1 << 1),	/*!< keypad B button */
	KEY_SELECT = (1 << 2),	/*!< keypad SELECT button */
	KEY_START = (1 << 3),	/*!< keypad START button */
	KEY_RIGHT = (1 << 4),	/*!< dpad RIGHT */
	KEY_LEFT = (1 << 5),	/*!< dpad LEFT */
	KEY_UP = (1 << 6),	/*!< dpad UP */
	KEY_DOWN = (1 << 7),	/*!< dpad DOWN */
	KEY_R = (1 << 8),	/*!< Right shoulder button */
	KEY_L = (1 << 9),	/*!< Left shoulder button */
	DPAD = (KEY_UP | KEY_DOWN | KEY_LEFT | KEY_RIGHT) /*!< mask all dpad buttons */
} KEYPAD_BITS;

//Functions
HEART_API void hrt_SetInputRepeat(int SetDelay, int SetRepeat);
HEART_API void hrt_ScanKeys(void);
HEART_API u16  hrt_KeysDownRepeat(void);
HEART_API u16  hrt_KeysDown(void);
HEART_API u16  hrt_KeysUp(void);
HEART_API u16  hrt_KeysHeld(void);

#endif