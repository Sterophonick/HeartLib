#include "libheart.h"
extern gba_system __hrt_system;

struct IntTable IntrTable[MAX_INTS];
void hrt_IntrMain(void);
void hrt_dummy(void) {};

void hrt_InitInterrupt(void) {
	if (__hrt_system.hrt_start == 1) {
		hrt_irqInit();
	}
}

void hrt_irqInit(void) {
	if (__hrt_system.hrt_start == 1) {
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
	if (__hrt_system.hrt_start == 1) {
		return hrt_irqSet(mask, function);
	}
    return 0;
}

IntFn* hrt_irqSet(irqMASK mask, IntFn function) {
	if (__hrt_system.hrt_start == 1) {
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
	if (__hrt_system.hrt_start == 1) {
		hrt_irqEnable(mask);
	}
}

void hrt_irqEnable(int mask) {
	if (__hrt_system.hrt_start == 1) {
		REG_IME = 0;

		if (mask & IRQ_VBLANK) REG_DISPSTAT |= LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT |= LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT |= LCDC_VCNT;
		REG_IE |= mask;
		REG_IME = 1;
	}
}

void hrt_irqToggle(int mask) {
	if (__hrt_system.hrt_start == 1) {
		REG_IME = 0;

		if (mask & IRQ_VBLANK) REG_DISPSTAT ^= LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT ^= LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT ^= LCDC_VCNT;
		REG_IE ^= mask;
		REG_IME ^= 1;
	}
}

void hrt_DisableInterrupt(irqMASK mask) {
	if (__hrt_system.hrt_start == 1) {
		hrt_irqDisable(mask);
	}
}

void hrt_irqDisable(int mask) {
	if (__hrt_system.hrt_start == 1) {
		REG_IME = 0;
		if (mask & IRQ_VBLANK) REG_DISPSTAT &= ~LCDC_VBL;
		if (mask & IRQ_HBLANK) REG_DISPSTAT &= ~LCDC_HBL;
		if (mask & IRQ_VCOUNT) REG_DISPSTAT &= ~LCDC_VCNT;
		REG_IE &= ~mask;
		REG_IME = 1;
	}
}
