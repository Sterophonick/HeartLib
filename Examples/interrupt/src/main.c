#include <string.h>
#include <math.h>
#include "hrt_oam.h"
#include "hrt_video.h"
#include "hrt_interrupt.h"
#include "hrt_bios.h"
extern unsigned char suchBitmap[38400];
extern unsigned short ballsTiles[576];
extern unsigned short ballsMap[1024];
extern unsigned short ballsPal[16];
u16  X, Y, Pos_X, Pos_Y;

void hblank()
{
	u16 Flags;
	REG_IME = 0;
	Flags = REG_IF;
	if (++Y >= 360) Y = 0;
		REG_BG0HOFS = Pos_X + (COS[Y] >> 5);
		REG_BG0VOFS = Pos_Y + (SIN[Y] >> 5);

  REG_IF = Flags;
  REG_IME = 1;
}


int main()
{
	hrt_DSPSetMode(DSP_MODE(0) | ENABLE_BG(0));
	hrt_DMACopy(3, ballsPal, PALETTE, 16, 0x80000000);
	hrt_DMACopy(3, ballsTiles, CHAR_BASE_ADR(1), 567, 0x80000000);
	hrt_DMACopy(3, ballsMap, VRAM, 1024, 0x80000000);
	REG_BG0CNT = 0x0088;
	hrt_irqInit();
	hrt_irqEnable(IRQ_HBLANK);
	hrt_irqSet(IRQ_HBLANK, hblank);
	hrt_irqEnable(IRQ_VBLANK);
	for(;;)
	{
      if (++X >= 360) X = 0;
      Y = X;
      if ((REG_KEYINPUT & 0x0010) == 0x00) Pos_X++; 
      if ((REG_KEYINPUT & 0x0020) == 0x00) Pos_X--; 
      if ((REG_KEYINPUT & 0x0040) == 0x00) Pos_Y--; 
      if ((REG_KEYINPUT & 0x0080) == 0x00) Pos_Y++; 
	  hrt_VblankIntrWait();
	}
}