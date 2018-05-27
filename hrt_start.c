#include "libheart.h"
u8 hrt_start;
int	hrt_offsetOAMData;
int hrt_offsetOAMPal;
int hrt_offsetBGMap;
int hrt_offsetBGTile;
int hrt_offsetBGPal;
void hrt_dummy(void);

void hrt_Init(void)
{
	hrt_start = 1;
	hrt_irqInit();
	hrt_irqEnable(IRQ_VBLANK);
	REG_IME = 1;
	hrt_SetDSPBGMode(0);
	hrt_FillScreen(0x0000);
	hrt_FillPalette(1, 0x0000);
	hrt_FillPalette(0, 0x0000);
	hrt_VblankIntrWait();
}