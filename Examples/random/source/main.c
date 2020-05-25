#include <libheart.h>
#include <hrt_video.h>
u16 keys_pressed;
u16 keys_released;

int main(void) {
	hrt_InitIRQ();
	hrt_DSPSetBGMode(0);
	hrt_DSPEnableBG(0);
	hrt_DSPDisableForceBlank();
	hrt_InitTextEngine(0);
	hrt_EnableIRQ(IRQ_VBLANK);
	hrt_Print(0, 0, "HeartLib RNG Demo");
	hrt_Print(0, 1, "Press A to Generate a number");
	while(1)
	{
		hrt_VblankIntrWait();
		hrt_ScanKeys();
		keys_pressed = hrt_KeysDown();
		if(keys_pressed & KEY_A)
			hrt_Print(0, 2, "%d", hrt_CreateRNG());
	}
}


