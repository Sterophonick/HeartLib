#include "libheart.h"
extern u8 hrt_start;
extern const unsigned short hrt_logoBitmap[2716];
extern const unsigned short hrt_logoPal[256];
extern const unsigned short hrt_objTiles[164];
extern const unsigned short hrt_objPal[14];
u16* temp = (u16*)0x6014000;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

void hrt_Init(int mode) {
	int i;
    if((mode==1)OR(hrt_start == 0)) {
		hrt_start = 1;
		hrt_irqInit();
		hrt_irqEnable(IRQ_VBLANK);
		REG_IME = 1;
		hrt_offsetOAMData = 0;
		hrt_offsetOAMPal = 0;
		hrt_offsetBGMap = 0;
		hrt_offsetBGPal = 0;
        u8 fade;
		u8 dir;
		u16 angle;
        u8 fadecnt;
        int frames = 0;
        u8 bx, by, bsy, bsx;
        int ys1;
		REG_BLDCNT = 0x00B4;
		REG_BLDY = 17;
		REG_DISPCNT = 0x1444;
		hrt_LZ77UnCompVRAM((u32)hrt_logoBitmap, (u32)VRAM);
        hrt_LoadBGPal((void*)hrt_logoPal, 159);
		hrt_LZ77UnCompVRAM((u32)hrt_objTiles, (u32)temp);
        hrt_LoadOBJPal((void*)hrt_objPal, 14);
        hrt_CreateOBJ(0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
        hrt_CloneOBJ(0, 1);
        hrt_SetOBJXY(&sprites[1], 0, 128);
        hrt_CloneOBJ(0, 2);
        hrt_SetOBJXY(&sprites[2], 208, 128);
        hrt_CloneOBJ(0, 3);
        hrt_SetOBJXY(&sprites[3], 208, 0);
        hrt_CreateOBJ(4, 112, 72, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 32);
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
        for (i = 0; i < 17 * 4; i++) {
            hrt_VblankIntrWait();
            frames++;
            hrt_SetOBJXY(&sprites[4], bx, by);
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
            if ((!(frames % 4))AND(fadecnt < 17)) {
				REG_BLDY = 16 - i / 4;
                fadecnt++;
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
        }
        frames = 0;
        for (i = 0; i < 220; i++) {
            frames++;
            hrt_CopyOAM();
            hrt_VblankIntrWait();
            hrt_SetOBJXY(&sprites[4], bx, by);
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
        }
        frames = 0;
        fadecnt = 0;
        for (i = 0; i < 17 * 4; i++) {
            hrt_VblankIntrWait();
            frames++;
            hrt_SetOBJXY(&sprites[4], bx, by);
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
            if ((!(frames % 4))AND(fadecnt < 17)) {
				REG_BLDY = i / 4;
                fadecnt++;
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
        }
    }
	hrt_start = 1;
	REG_DISPCNT = 0x0080;
	REG_BLDCNT = 0;
	REG_BLDY = 0;
	hrt_FillScreen(0x0000, 3);
	memcpy(VRAM, (char*)0x06000ED0, 98304);
	for (i = 0; i < 255; i++) {
		BGPaletteMem[i] = 0x0000;
	}
	for (i = 0; i < 255; i++) {
		OBJPaletteMem[i] = 0x0000;
	}
	hrt_SetOBJXY(&sprites[0], 220, 160);
	hrt_SetOBJXY(&sprites[1], 220, 160);
	hrt_SetOBJXY(&sprites[2], 220, 160);
	hrt_SetOBJXY(&sprites[3], 220, 160);
	hrt_SetOBJXY(&sprites[4], 220, 160);
	hrt_CopyOAM();
	hrt_offsetOAMData = 0;
	hrt_offsetOAMPal = 0;
	hrt_offsetBGMap = 0;
	hrt_offsetBGPal = 0;
}