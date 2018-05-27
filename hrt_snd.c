#include "libheart.h"
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

void hrt_ConfigSOUNDCNT(u8 psgmasvol, u8 loudA, u8 loudB, u8 enablear, u8 enableal, u8 atimer, u8 areset, u8 enablebr, u8 enablebl, u8 btimer, u8 breset)
{
	if (hrt_start == 1) {
		REG_SOUNDCNT_H = 0x01 * psgmasvol | 0x04 * loudA | 0x08 * loudB | 0x100 * enablear | 0x200 * enableal | 0x400 * atimer | 0x800 * areset | 0x1000 * enablebr | 0x2000 * enablebl | 0x4000 * btimer | 0x8000 * breset;
		REG_SOUNDCNT_X = 0x80;
	}
}