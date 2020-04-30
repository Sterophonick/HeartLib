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

#include "hrt_interrupt.h"
#include "hrt_memmap.h"

#define MAX_INTS 15

struct IntTable IntrTable[MAX_INTS];
void dummy(void) {};
void IntrMain();

void hrt_InitIRQ() {
	int i;
	// Set all interrupts to dummy functions.
	for(i = 0; i < MAX_INTS; i ++)
	{
		IntrTable[i].handler = dummy;
		IntrTable[i].mask = 0;
	}
	INT_VECTOR = IntrMain;
}

IntFn* hrt_SetIRQ(irqMASK mask, IntFn function) {
	int i;
	for	(i=0;;i++) {
		if	(!IntrTable[i].mask || IntrTable[i].mask == mask) break;
	}
	if ( i >= MAX_INTS) return 0;
	IntrTable[i].handler	= function;
	IntrTable[i].mask		= mask;
	return &IntrTable[i].handler;
}


void hrt_EnableIRQ( int mask ) {
	REG_IME	= 0;
	if (mask & IRQ_VBLANK) REG_DISPSTAT |= LCDC_VBL;
	if (mask & IRQ_HBLANK) REG_DISPSTAT |= LCDC_HBL;
	if (mask & IRQ_VCOUNT) REG_DISPSTAT |= LCDC_VCNT;
	REG_IE |= mask;
	REG_IME	= 1;
}

void hrt_ToggleIRQ(int mask) {
	REG_IME = 0;
	if (mask & IRQ_VBLANK) REG_DISPSTAT ^= LCDC_VBL;
	if (mask & IRQ_HBLANK) REG_DISPSTAT ^= LCDC_HBL;
	if (mask & IRQ_VCOUNT) REG_DISPSTAT ^= LCDC_VCNT;
	REG_IE ^= mask;
	REG_IME = 1;
}

u8 hrt_IsIRQEnabled(int mask)
{
	return REG_IE & mask;
}

void hrt_DisableIRQ(int mask) {
	REG_IME	= 0;
	if (mask & IRQ_VBLANK) REG_DISPSTAT &= ~LCDC_VBL;
	if (mask & IRQ_HBLANK) REG_DISPSTAT &= ~LCDC_HBL;
	if (mask & IRQ_VCOUNT) REG_DISPSTAT &= ~LCDC_VCNT;
	REG_IE &= ~mask;
	REG_IME	= 1;
}