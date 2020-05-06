/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/

#include <math.h>
#include "hrt_video.h"
#include "hrt_misc.h"

u16* BackBuffer = (u16*)0x600A000;
u16* FrontBuffer = (u16*)0x6000000;

void hrt_DSPConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color, u8 mapbase, u8 wraparound, u8 dimensions)
{
	REG_BGxCNT(bg) = 0x01 * priority | 0x04 * tilebase | 0x40 * mosaic | 0x80 * color | 0x100 * mapbase | 0x2000 * wraparound | 0x4000 * dimensions;
}

void hrt_InvertPalette(u16 start, u16 amount)
{
	register int i;
	for (i = 0; i < amount; i++) {
		PALETTE[start + i] ^= 1;
	}
}

void hrt_DrawLine3(int x1, int y1, int x2, int y2, unsigned short color)
{
	int i, deltax, deltay, numpixels;
	int d, dinc1, dinc2;
	int x, xinc1, xinc2;
	int y, yinc1, yinc2;
	//calculate deltaX and deltaY
	deltax = abs(x2 - x1);
	deltay = abs(y2 - y1);
	//initialize
	if (deltax >= deltay) {
		//If x is independent variable
		numpixels = deltax + 1;
		d = (2 * deltay) - deltax;
		dinc1 = deltay << 1;
		dinc2 = (deltay - deltax) << 1;
		xinc1 = 1;
		xinc2 = 1;
		yinc1 = 0;
		yinc2 = 1;
	}
	else {
		//if y is independent variable
		numpixels = deltay + 1;
		d = (2 * deltax) - deltay;
		dinc1 = deltax << 1;
		dinc2 = (deltax - deltay) << 1;
		xinc1 = 0;
		xinc2 = 1;
		yinc1 = 1;
		yinc2 = 1;
	}
	//move the right direction
	if (x1 > x2) {
		xinc1 = -xinc1;
		xinc2 = -xinc2;
	}
	if (y1 > y2) {
		yinc1 = -yinc1;
		yinc2 = -yinc2;
	}
	x = x1;
	y = y1;
	//draw the pixels
	for (i = 1; i < numpixels; i++) {
		hrt_PlotPixelInMode3(x, y, color);
		if (d < 0) {
			d = d + dinc1;
			x = x + xinc1;
			y = y + yinc1;
		}
		else {
			d = d + dinc2;
			x = x + xinc2;
			y = y + yinc2;
		}
	}
}


void hrt_DestroyBG(u8 bg)
{
	REG_BGxCNT(bg) = 0;
	REG_BGxVOFS(bg) = 0;
	REG_BGxHOFS(bg) = 0;
	hrt_DSPDisableBG(bg);
}

void hrt_FlipBGBuffer(void)
{
	if (REG_DISPCNT & 0x10) {                                                 //back buffer is current buffer, switch to font buffer
		REG_DISPCNT &= ~0x10;                                                   //flip active buffer to front buffer
		VRAM = BackBuffer;                                                     //point drawing buffer to the back buffer
	}
	else {                                                                         //front buffer is active so switch it to backbuffer
		REG_DISPCNT |= 0x10;                                                    //flip active buffer to back buffer by setting back buffer bit
		VRAM = FrontBuffer;                                                    //now we point our drawing buffer to the front buffer
	}
}

void hrt_CyclePalette(u16 start, u16 amount)
{
	register int i;
	PALETTE[start + amount] = PALETTE[start];
	for (i = 0; i < amount; i++) {
		PALETTE[i + start] = PALETTE[i + 1 + start];
	}
}