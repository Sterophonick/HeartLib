#include "libheart.h"
const unsigned short hrt_logoBitmap[4286];
const unsigned short hrt_logoPal[256];
extern const unsigned short hrt_objTiles[164];
extern const unsigned short hrt_objPal[14];
u16* temp = (u16*)0x6014000;
u8 hrt_start;
int	hrt_offsetOAMData;
int hrt_offsetOAMPal;
int hrt_offsetBGMap;
int hrt_offsetBGTile;
int hrt_offsetBGPal;

void hrt_InitNoIntro()
{
	hrt_start = 1;
	hrt_irqInit();
	hrt_irqEnable(IRQ_VBLANK);
	REG_IME = 1;
}

void hrt_Init(void) {
	int i;
	hrt_start = 1;
	hrt_irqInit();
	hrt_irqEnable(IRQ_VBLANK);
	REG_IME = 1;
	hrt_offsetOAMData = 0;
	hrt_offsetOAMPal = 0;
	hrt_offsetBGMap = 0;
	hrt_offsetBGPal = 0;
	u8 dir = 0;
	u16 angle = 0;
	int frames = 0;
	u8 bx = 0, by = 0, bsy = 0, bsx = 0;
	REG_BLDCNT = 0x00B4;
	REG_BLDY = 17;
	REG_DISPCNT = 0x1444;
	hrt_LZ77UnCompVRAM((u32)hrt_logoBitmap, (u32)VRAM);
	hrt_LZ77UnCompVRAM((u32)hrt_objTiles, (u32)temp);
	hrt_LoadOBJPal((void*)hrt_objPal, 14);
	hrt_LoadBGPal((void*)hrt_logoPal, 256);
	hrt_CreateOBJ(0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	hrt_CloneOBJ(0, 1);
	hrt_SetOBJXY(1, 0, 128);
	hrt_CloneOBJ(0, 2);
	hrt_SetOBJXY(2, 208, 128);
	hrt_CloneOBJ(0, 3);
	hrt_SetOBJXY(3, 208, 0);
	hrt_CreateOBJ(4, 112, 72, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16);
	hrt_AffineOBJ(0, 0, 256, 256);
	hrt_AffineOBJ(1, 0, 256, 256);
	hrt_AffineOBJ(2, 0, 256, 256);
	hrt_AffineOBJ(3, 0, 256, 256);
	hrt_AffineOBJ(4, 0, 256, 256);
	hrt_CopyOAM();
	bx = 112;
	by = 72;
	bsy = 10;
	bsx = 10;
	for (i = 0; i < 180; i++) {
		frames++;
		if (frames < 17)
		{
			REG_BLDY = 16 - frames;
		}
		if (frames > 163)
		{
			REG_BLDY = frames - 163;
		}
		hrt_SetOBJXY(4, bx, by);
		bx += bsx;
		by += bsy;

		if (by >= 144) {
			bsy = -2;
		}
		if (by <= 0) {
			bsy = 2;
		}

		if (bx >= 224) {
			bsx = -2;
			dir = 1;
		}
		if (bx <= 0) {
			bsx = 2;
			dir = 0;
		}
		hrt_AffineOBJ(4, angle, 256, 256);
		if (!(frames % 1))
		{
			if (dir == 0)
			{
				angle += 4;
			}
			if (dir == 1)
			{
				angle -= 4;
			}
		}
		if (!(frames % 10)) {
			hrt_AffineOBJ(0, 0, 220, 220);
			hrt_AffineOBJ(3, 0, 256, 256);
		}
		if (!(frames % 15)) {
			hrt_AffineOBJ(1, 0, 220, 220);
			hrt_AffineOBJ(0, 0, 256, 256);
		}
		if (!(frames % 20)) {
			hrt_AffineOBJ(2, 0, 220, 220);
			hrt_AffineOBJ(1, 0, 256, 256);
		}
		if (!(frames % 25)) {
			hrt_AffineOBJ(3, 0, 220, 220);
			hrt_AffineOBJ(2, 0, 256, 256);
		}
		hrt_CopyOAM();
		asm volatile("swi 0x05"::);
	}
	hrt_start = 1;
	REG_DISPCNT = 0x0080;
	REG_BLDCNT = 0;
	REG_BLDY = 0;
	hrt_DMA_Copy(3, (u8*)0x02000000, (u8*)VRAM, 0xFfff, 0x80800000);
	hrt_DMA_Copy(3, (u8*)0x02000000, (u8*)BGPaletteMem, 0x200, 0x80800000);
	hrt_DMA_Copy(3, (u8*)0x02000000, (u8*)&sprites, 0x3FF, 0x80800000);
	hrt_CopyOAM();
	hrt_offsetOAMData = 0;
	hrt_offsetOAMPal = 0;
	hrt_offsetBGMap = 0;
	hrt_offsetBGPal = 0;
}