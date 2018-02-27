#include "libheart.h"
//NOTE: TAKEN FROM LIBGBA. COULDN'T FIND ANY OTHER WAY TO PULL IT OFF.
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

struct IntTable IntrTable[MAX_INTS];

void hrt_dummy(void) {};
void hrt_InitInterrupt(void) {
	if (hrt_start == 1) {
		hrt_irqInit();
	}
}

void hrt_irqInit() {
	if (hrt_start == 1) {
		int i;
		for (i = 0; i < MAX_INTS; i++)
		{
			IntrTable[i].handler = hrt_dummy;
			IntrTable[i].mask = 0;
		}
		INT_VECTOR = hrt_IntrMain;
	}
}

IntFn* hrt_SetInterrupt(irqMASK mask, IntFn function) {
	if (hrt_start == 1) {
		return hrt_irqSet(mask, function);
	}
}

IntFn* hrt_irqSet(irqMASK mask, IntFn function) {
	if (hrt_start == 1) {
		int i;
		for (i = 0;; i++) {
			if (!IntrTable[i].mask || IntrTable[i].mask == mask) break;
		}
		if (i >= MAX_INTS) return NULL;
		IntrTable[i].handler = function;
		IntrTable[i].mask = mask;
		return &IntrTable[i].handler;
	}
}

void hrt_EnableInterrupt(irqMASK mask) {
	if (hrt_start == 1) {
		hrt_irqEnable(mask);
	}
}

void hrt_irqEnable(int mask) {
	if (hrt_start == 1) {
		REG_IME = 0;

		if (mask & IRQ_VBLANK) REG_DISPSTAT |= LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT |= LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT |= LCDC_VCNT;
		REG_IE |= mask;
		REG_IME = 1;
	}
}

void hrt_DisableInterrupt(irqMASK mask) {
	if (hrt_start == 1) {
		hrt_irqDisable(mask);
	}
}

void hrt_irqDisable(int mask) {
	if (hrt_start == 1) {
		REG_IME = 0;
		if (mask & IRQ_VBLANK) REG_DISPSTAT &= ~LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT &= ~LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT &= ~LCDC_VCNT;
		REG_IE &= ~mask;
		REG_IME = 1;
	}
}
