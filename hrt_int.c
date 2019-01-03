/*****************************************************\
*    								8       8                                            8     8            8  8                                          *
*    								8       8                                            8     8                8                                          *
*    								88888    888       888    8  88    888  8            8  8  88                                   *
*    								8       8  8       8           8  88    8    8     8            8  88    8                                 *
*    								8       8  88888    8888  8             8     8            8  8      8                                 *
*    								8       8  8           8       8  8             8     8            8  8      8                                 *
*    								8       8    8888    8888  8               8    88888  8  8888                                  *
*    																		HeartLib                                                                   *
*    A comprehensive game/app engine for the Nintendo® Game Boy Advance™        *
*    												Licensed under the GNU GPL v3.0                                             *
*                                               View the LICENSE file for details                                         *
*    														2017-2019 Sterophonick                                                    *
*    																	For Tubooboo                                                               *
\*****************************************************/
//This code mostly comes from LibGBA so shoutouts to them

#include "libheart.h"
extern gba_system __hrt_system;

struct IntTable IntrTable[MAX_INTS];
void hrt_IntrMain(void);
void hrt_dummy(void) {};

void hrt_InitInterrupt(void) {
	if (__hrt_system.hrt_start) {
		hrt_irqInit();
	}
}

void hrt_irqInit(void) {
	if (__hrt_system.hrt_start) {
		register int i;
		for (i = 0; i < MAX_INTS; i++)
		{
			IntrTable[i].handler = hrt_dummy;
			IntrTable[i].mask = 0;
		}
		INT_VECTOR = hrt_IntrMain;
	}
}

IntFn* hrt_SetInterrupt(irqMASK mask, IntFn function) {
	if (__hrt_system.hrt_start) {
		return hrt_irqSet(mask, function);
	}
    return 0;
}

IntFn* hrt_irqSet(irqMASK mask, IntFn function) {
	if (__hrt_system.hrt_start) {
		register int i;
		for (i = 0;; i++) {
			if (!IntrTable[i].mask || IntrTable[i].mask == mask) break;
		}
		if (i >= MAX_INTS) return NULL;
		IntrTable[i].handler = function;
		IntrTable[i].mask = mask;
		return &IntrTable[i].handler;
	}
    return 0;
}

void hrt_EnableInterrupt(irqMASK mask) {
	if (__hrt_system.hrt_start) {
		hrt_irqEnable(mask);
	}
}

void hrt_irqEnable(int mask) {
	if (__hrt_system.hrt_start) {
		REG_IME = 0;

		if (mask & IRQ_VBLANK) REG_DISPSTAT |= LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT |= LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT |= LCDC_VCNT;
		REG_IE |= mask;
		REG_IME = 1;
	}
}

void hrt_irqToggle(int mask) {
	if (__hrt_system.hrt_start) {
		REG_IME = 0;

		if (mask & IRQ_VBLANK) REG_DISPSTAT ^= LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT ^= LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT ^= LCDC_VCNT;
		REG_IE ^= mask;
		REG_IME ^= 1;
	}
}

void hrt_DisableInterrupt(irqMASK mask) {
	if (__hrt_system.hrt_start) {
		hrt_irqDisable(mask);
	}
}

void hrt_irqDisable(int mask) {
	if (__hrt_system.hrt_start) {
		REG_IME = 0;
		if (mask & IRQ_VBLANK) REG_DISPSTAT &= ~LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT &= ~LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT &= ~LCDC_VCNT;
		REG_IE &= ~mask;
		REG_IME = 1;
	}
}

void hrt_ClearIRQTable(void)
{
	if (__hrt_system.hrt_start) {
		for (register int i = 0; i < MAX_INTS; i++)
		{
			IntrTable[i].handler = hrt_dummy;
			IntrTable[i].mask = 0;
		}	
	}
}