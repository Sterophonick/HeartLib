#include "libheart.h"
gba_system __hrt_system;

void hrt_Init(void)
{
	u8 i;
	__hrt_system.hrt_start = 1;
	hrt_irqInit();
	hrt_irqEnable(IRQ_VBLANK);
	REG_IME = 1;
	hrt_FillScreen(0x0000);
	for(i=0;i<128;i++)
	{
		hrt_DestroyOBJ(i);
	}
	hrt_CopyOAM();
	hrt_DSPSetBGMode(0);
	hrt_DSPEnableForceBlank();
	for(i=0;i<3;i++)
	{
		hrt_DSPDisableBG(i);
	}
	hrt_SetFXLevel(0);
	REG_BLDCNT = 0;
}