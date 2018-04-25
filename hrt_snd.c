#include "libheart.h"
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

void hrt_InitSound(int a, int f, int e, u8* d)
{
	if (hrt_start == 1) {
		sound[a].song = d; sound[a].frequency = f; sound[a].end = e; sound[a].tic = 0;
	}
}

void hrt_PlaySoundFIFO(int s) {
	if (hrt_start == 1) {
		REG_DMA1SAD = (unsigned long)sound[s].song;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
		REG_DMA1DAD = 0x040000A0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
		REG_DMA1CNT_H = 0xB640;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
		REG_TM0CNT_L = 65536 - (16777216 / sound[s].frequency);                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
		REG_TM0CNT_H = 0x00C0;
	}
}

void hrt_PlaySoundFIFOB(int s) {
	if (hrt_start == 1) {
		REG_DMA2SAD = (unsigned long)sound[s].song;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
		REG_DMA2DAD = 0x040000A4;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
		REG_DMA2CNT_H = 0xB640;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
		REG_TM1CNT_L = 65536 - (16777216 / sound[s].frequency);                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
		REG_TM1CNT_H = 0x00C0;
	}
}

void hrt_StopSoundFIFO()
{
	REG_DMA1SAD = 0;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
	REG_DMA1DAD = 0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
	REG_DMA1CNT_H = 0;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
	REG_TM0CNT_L = 0;                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
	REG_TM0CNT_H = 0;
}

void hrt_ConfigSOUNDCNT(u8 psgmasvol, u8 loudA, u8 loudB, u8 enablear, u8 enableal, u8 atimer, u8 areset, u8 enablebr, u8 enablebl, u8 btimer, u8 breset)
{
	if (hrt_start == 1) {
		REG_SOUNDCNT_H = 0x01 * psgmasvol | 0x04 * loudA | 0x08 * loudB | 0x100 * enablear | 0x200 * enableal | 0x400 * atimer | 0x800 * areset | 0x1000 * enablebr | 0x2000 * enablebl | 0x4000 * btimer | 0x8000 * breset;
		REG_SOUNDCNT_X = 0x80;
	}
}