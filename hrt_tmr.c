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
#include "libheart.h"
extern gba_system __hrt_system;

void hrt_ConfigTimer(u8 channel, u8 scale, u8 irq, u8 enable, u16 start)
{
    if (__hrt_system.hrt_start) {
        REG_TMxCNT_H(channel) = 0x80 * enable | 0x40 * irq | 0x01 * scale;
        REG_TMxCNT_L(channel) = start;
    }
}