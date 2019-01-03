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

void hrt_ConfigSOUNDCNT(u8 psgmasvol, u8 loudA, u8 loudB, u8 enablear, u8 enableal, u8 atimer, u8 areset, u8 enablebr, u8 enablebl, u8 btimer, u8 breset)
{
	if (__hrt_system.hrt_start) {
		REG_SOUNDCNT_H = 0x01 * psgmasvol | 0x04 * loudA | 0x08 * loudB | 0x100 * enablear | 0x200 * enableal | 0x400 * atimer | 0x800 * areset | 0x1000 * enablebr | 0x2000 * enablebl | 0x4000 * btimer | 0x8000 * breset;
		REG_SOUNDCNT_X = 0x80;
	}
}

void hrt_SoundDriverMain(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(28);
	}
}

void hrt_SoundDriverVsync(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(29);
	}
}

void hrt_SoundChannelClear(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(30);
	}
}

void hrt_SoundDriverVsyncOff(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(40);
	}
}

void hrt_SoundDriverVsyncOn(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(41);
	}
}

void hrt_SoundWhatever0(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(0x20);
	}
}

void hrt_SoundWhatever1(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(0x21);
	}
}

void hrt_SoundWhatever2(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(0x22);
	}
}

void hrt_SoundWhatever3(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(0x23);
	}
}

void hrt_SoundWhatever4(void)
{
	if (__hrt_system.hrt_start) {
		hrt_SystemCall(0x24);
	}
}