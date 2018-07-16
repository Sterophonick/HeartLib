#include "libheart.h"
gba_system __hrt_system;

void hrt_Init(void)
{
	if(__hrt_system.hrt_start == 0)
	{
		hrt_RegisterRamReset(253);
		__hrt_system.hrt_start++;
		hrt_irqInit();
		hrt_irqEnable(IRQ_VBLANK);
		REG_IME = 1;
		hrt_SeedRNG(0xDEADDEAD);
	}
}