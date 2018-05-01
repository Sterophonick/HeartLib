#include "libheart.h"
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

void hrt_ConfigTimer(u8 channel, u8 scale, u8 irq, u8 enable, u16 start)
{
    if (hrt_start == 1) {
        switch (channel) {
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
}