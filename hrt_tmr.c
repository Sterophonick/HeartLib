#include "libheart.h"

void hrt_ConfigTimer(u8 channel, u8 scale, u8 irq, u8 enable, u16 start)
{
	switch (channel)
	{
		case 0:
			REG_TM0CNT_H = 0x80 * enable | 0x40 * irq | 0x01 * scale;
			REG_TM0CNT_L = start;
		case 1:
			REG_TM1CNT_H = 0x80 * enable | 0x40 * irq | 0x01 * scale;
			REG_TM1CNT_L = start;
		case 2:
			REG_TM2CNT_H = 0x80 * enable | 0x40 * irq | 0x01 * scale;
			REG_TM2CNT_L = start;
		case 3:
			REG_TM3CNT_H = 0x80 * enable | 0x40 * irq | 0x01 * scale;
			REG_TM3CNT_L = start;
	}
}