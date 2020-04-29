#include "hrt_input.h"

typedef struct {
	u16 Up,
		Down,
		Held,
		Last,
		DownRepeat;
}__attribute__((packed)) KeyInput;
static KeyInput __hrt_Keys = { 0,0,0,0,0 };
static u8 __hrt_delay = 60, __hrt_repeat = 30, __hrt_count = 60;

void hrt_SetInputRepeat(int SetDelay, int SetRepeat)
{
	__hrt_delay = SetDelay;
	__hrt_repeat = SetRepeat;
}

void hrt_ScanKeys(void)
{
	__hrt_Keys.Last = __hrt_Keys.Held;
	__hrt_Keys.Held = (REG_KEYINPUT & 0x03ff) ^ 0x03ff; // upper 6 bits clear on hw not emulated
	u16 pressed = __hrt_Keys.Held & (__hrt_Keys.Last ^ 0x03ff);
	__hrt_Keys.DownRepeat |= pressed;
	__hrt_Keys.Down |= pressed;
	u16 released = ((__hrt_Keys.Held ^ 0x03ff) & __hrt_Keys.Last);
	__hrt_Keys.Up |= released;
	__hrt_Keys.Down &= ~released;
	__hrt_Keys.DownRepeat &= ~released;
	__hrt_Keys.Up &= ~pressed;
	if (__hrt_Keys.Last != __hrt_Keys.Held) __hrt_count = __hrt_delay;
	if (__hrt_delay != 0)
	{
		__hrt_count--;
		if (__hrt_count == 0)
		{
			__hrt_count = __hrt_repeat;
			__hrt_Keys.DownRepeat |= __hrt_Keys.Held;
		}
	}
}

u16 hrt_KeysDownRepeat(void)
{
	u16 tmp = __hrt_Keys.DownRepeat;
	__hrt_Keys.DownRepeat = 0;
	return tmp;
}

u16 hrt_KeysDown(void)
{
	u16 tmp = __hrt_Keys.Down;
	__hrt_Keys.Down = 0;
	return tmp;
}

u16 hrt_KeysUp(void)
{
	u16 tmp = __hrt_Keys.Up;
	__hrt_Keys.Up = 0;
	return tmp;
}

u16 hrt_KeysHeld(void)
{
	return __hrt_Keys.Held;
}