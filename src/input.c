#include "hrt_input.h"

void hrt_GetPad(PAD* pad)
{
	pad->A = keyDown(KEY_A);
	pad->B = (keyDown(KEY_B)) ? 1 : 0;
	pad->UP = keyDown(KEY_UP) ? 1 : 0;
	pad->DOWN = keyDown(KEY_DOWN) ? 1 : 0;
	pad->LEFT = keyDown(KEY_LEFT) ? 1 : 0;
	pad->RIGHT = keyDown(KEY_RIGHT) ? 1 : 0;
	pad->L = keyDown(KEY_L) ? 1 : 0;
	pad->R = keyDown(KEY_R) ? 1 : 0;
	pad->SELECT = keyDown(KEY_SELECT) ? 1 : 0;
	pad->START = keyDown(KEY_START) ? 1 : 0;	
}