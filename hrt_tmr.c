#include "libheart.h"
extern gba_system __hrt_system;

void hrt_ConfigTimer(u8 channel, u8 scale, u8 irq, u8 enable, u16 start)
{
    if (__hrt_system.hrt_start == 1) {
        REG_TMxCNT_H(channel) = 0x80 * enable | 0x40 * irq | 0x01 * scale;
        REG_TMxCNT_L(channel) = start;
    }
}