#include "libheart.h"
extern gba_system __hrt_system;

void hrt_ConfigSOUNDCNT(u8 psgmasvol, u8 loudA, u8 loudB, u8 enablear, u8 enableal, u8 atimer, u8 areset, u8 enablebr, u8 enablebl, u8 btimer, u8 breset)
{
	if (__hrt_system.hrt_start == 1) {
		REG_SOUNDCNT_H = 0x01 * psgmasvol | 0x04 * loudA | 0x08 * loudB | 0x100 * enablear | 0x200 * enableal | 0x400 * atimer | 0x800 * areset | 0x1000 * enablebr | 0x2000 * enablebl | 0x4000 * btimer | 0x8000 * breset;
		REG_SOUNDCNT_X = 0x80;
	}
}

void hrt_SoundDriverMain()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(28);
	}
}

void hrt_SoundDriverVsync()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(29);
	}
}

void hrt_SoundChannelClear()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(30);
	}
}

void hrt_SoundDriverVsyncOff()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(40);
	}
}

void hrt_SoundDriverVsyncOn()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(41);
	}
}

void hrt_SoundWhatever0()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(0x20);
	}
}

void hrt_SoundWhatever1()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(0x21);
	}
}

void hrt_SoundWhatever2()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(0x22);
	}
}

void hrt_SoundWhatever3()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(0x23);
	}
}

void hrt_SoundWhatever4()
{
	if (__hrt_system.hrt_start == 1) {
		hrt_SystemCall(0x24);
	}
}