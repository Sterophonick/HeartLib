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
#include "libheart.h"
extern gba_system __hrt_system;

void hrt_ConfigSIONormal(u8 sc, u8 isc, u8 si_state, u8 soinact, u8 start, u8 length, u8 mode, u8 irq)
{
    if (__hrt_system.hrt_start) {
        REG_SIOCNT = sc*BIT00 | isc*BIT01 | si_state*BIT02 | soinact*BIT03 | start*BIT07 | length*BIT12 | mode*BIT13 | irq*BIT14;
    }
}

void hrt_ConfigSIOMultiplayer(u8 baudrate, u8 busy, u8 irq)
{
	if (__hrt_system.hrt_start) {
		REG_SIOCNT = baudrate*BIT00 | busy*BIT07 | 0*BIT12 | 1*BIT13 | irq*BIT14;
	}
}

void hrt_ConfigLowSCCNT(u8 baudrate, u8 cts, u8 paritycnt, u8 length, u8 fifo, u8 parityenable, u8 send, u8 receive, u8 irq)
{
	if (__hrt_system.hrt_start) {
		REG_SIOCNT = BIT_SET(baudrate, 0) | BIT_SET(cts, 2) | BIT_SET(paritycnt, 3) | BIT_SET(length, 7) | BIT_SET(fifo, 8) | BIT_SET(parityenable, 9) | BIT_SET(send, 10) | BIT_SET(receive, 11) | BIT_SET(1, 12) | BIT_SET(1, 13) | BIT_SET(irq, 14);
	}
}

void hrt_ConfigJOYCNT(u8 reset, u8 receive, u8 send, u8 irq)
{
	if (__hrt_system.hrt_start) {
		REG_JOYCNT = BIT_SET(reset, 0) | BIT_SET(receive, 1) | BIT_SET(send, 2) | BIT_SET(irq, 6);
	}
}