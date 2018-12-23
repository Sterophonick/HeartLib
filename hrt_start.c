#include "libheart.h"
gba_system __hrt_system;

void hrt_Init(void)
{
	if(__hrt_system.hrt_start == 0)
	{
		__hrt_system.hrt_start++;
		hrt_irqInit();
		hrt_irqEnable(IRQ_VBLANK);
		hrt_irqEnable(IRQ_KEYPAD);
		REG_IME = 1;
		hrt_SeedRNG(0xDEADDEAD);
		hrt_FillScreen(0x0000);
		hrt_FillPalette(0, 0);
		hrt_FillPalette(1, 0);
	}
}