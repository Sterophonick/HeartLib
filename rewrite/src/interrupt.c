#include <stddef.h>
#include "hrt_interrupt.h"
#include "hrt_memmap.h"

#define MAX_INTS 15

struct IntTable IntrTable[MAX_INTS];
void dummy(void) {};
void IntrMain();


void InitInterrupt(void) {
	hrt_irqInit();
}

void hrt_irqInit() {
	int i;
	// Set all interrupts to dummy functions.
	for(i = 0; i < MAX_INTS; i ++)
	{
		IntrTable[i].handler = dummy;
		IntrTable[i].mask = 0;
	}
	INT_VECTOR = IntrMain;
}

IntFn* SetInterrupt(irqMASK mask, IntFn function) {
	return hrt_irqSet(mask,function);
}

IntFn* hrt_irqSet(irqMASK mask, IntFn function) {
	int i;
	for	(i=0;;i++) {
		if	(!IntrTable[i].mask || IntrTable[i].mask == mask) break;
	}
	if ( i >= MAX_INTS) return NULL;
	IntrTable[i].handler	= function;
	IntrTable[i].mask		= mask;
	return &IntrTable[i].handler;
}

void EnableInterrupt(irqMASK mask) {
	hrt_irqEnable(mask);
}

void hrt_irqEnable ( int mask ) {
	REG_IME	= 0;
	if (mask & IRQ_VBLANK) REG_DISPSTAT |= LCDC_VBL;
	if (mask & IRQ_HBLANK) REG_DISPSTAT |= LCDC_HBL;
	if (mask & IRQ_VCOUNT) REG_DISPSTAT |= LCDC_VCNT;
	REG_IE |= mask;
	REG_IME	= 1;
}

void DisableInterrupt(irqMASK mask) {
	hrt_irqDisable(mask);
}

void hrt_irqDisable(int mask) {
	REG_IME	= 0;
	if (mask & IRQ_VBLANK) REG_DISPSTAT &= ~LCDC_VBL;
	if (mask & IRQ_HBLANK) REG_DISPSTAT &= ~LCDC_HBL;
	if (mask & IRQ_VCOUNT) REG_DISPSTAT &= ~LCDC_VCNT;
	REG_IE &= ~mask;
	REG_IME	= 1;

}