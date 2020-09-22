#include <libheart.h>
#include <hrt_interrupt.h>
u16 keys_pressed;

int main(void) {
	hrt_InitIRQ();
	hrt_DSPSetBGMode(0);
	hrt_DSPEnableBG(0);
	hrt_DSPDisableForceBlank();
	hrt_InitTextEngine(0);
	hrt_EnableIRQ(IRQ_VBLANK);
	hrt_Print(0, 0, "Press A To Exit To EZ-Flash");
	while(!(keys_pressed & KEY_A))
	{
		hrt_VblankIntrWait();
		hrt_ScanKeys();
		keys_pressed = hrt_KeysDown();
	}
	hrt_ExitToEZFlash();
}


