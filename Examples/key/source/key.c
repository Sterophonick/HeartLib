#include <libheart.h>
u16 keys_pressed;
u16 keys_released;

void keysTextRoutine(void)
{
	if(keys_pressed & KEY_A)
		hrt_Print(0, 1, "A: Yes");
	else
		hrt_Print(0, 1, "A: No ");
	
	if(keys_pressed & KEY_B)
		hrt_Print(0, 2, "B: Yes");
	else
		hrt_Print(0, 2, "B: No ");
	
	if(keys_pressed & KEY_UP)
		hrt_Print(0, 3, "Up: Yes");
	else
		hrt_Print(0, 3, "Up: No ");
	
	if(keys_pressed & KEY_DOWN)
		hrt_Print(0, 4, "Down: Yes");
	else
		hrt_Print(0, 4, "Down: No ");
	
	if(keys_pressed & KEY_LEFT)
		hrt_Print(0, 5, "Left: Yes");
	else
		hrt_Print(0, 5, "Left: No ");
	
	if(keys_pressed & KEY_RIGHT)
		hrt_Print(0, 6, "Right: Yes");
	else
		hrt_Print(0, 6, "Right: No ");
	
	if(keys_pressed & KEY_SELECT)
		hrt_Print(0, 7, "Select: Yes");
	else
		hrt_Print(0, 7, "Select: No ");
	
	if(keys_pressed & KEY_START)
		hrt_Print(0, 8, "Start: Yes");
	else
		hrt_Print(0, 8, "Start: No ");
	
	if(keys_pressed & KEY_L)
		hrt_Print(0, 9, "L: Yes");
	else
		hrt_Print(0, 9, "L: No ");
	
	if(keys_pressed & KEY_R)
		hrt_Print(0, 10, "R: Yes");
	else
		hrt_Print(0, 10, "R: No ");
}

int main(void) {
	hrt_InitIRQ();
	hrt_DSPSetBGMode(0);
	hrt_DSPEnableBG(0);
	hrt_DSPDisableForceBlank();
	hrt_InitTextEngine(0);
	hrt_EnableIRQ(IRQ_VBLANK);
	hrt_Print(0, 0, "HeartLib Keypad Demo");
	while(1)
	{
		hrt_VblankIntrWait();
		hrt_ScanKeys();
		keys_pressed = hrt_KeysHeld();
		keys_released = hrt_KeysUp();
		keysTextRoutine();
	}
}


