/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo� Game Boy Advance�
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/

#include <string.h>
#include <stdbool.h>
#include "hrt_misc.h"
extern int gettime(void);
u16* VRAM 	=(u16*)0x6000000;
u16* PALETTE = (u16*)0x5000000;
OBJ_ATTR* OAM = (OBJ_ATTR*)0x7000000;
//OBJ_AFFINE* OAMAff = (OBJ_AFFINE*)0x7000000;
u8* SRAM = (u8*)0xE000000;

void hrt_PrintRTCTimeIntoString(char* ptr)
{
	char str[9];
	register char *s=str;
	register int timer,mod;
	strcpy(str,"00:00:00");
	timer=gettime();
	mod=(timer>>4)&3;				//Hours.
	*(s++)=(mod+'0');
	mod=(timer&15);
	*(s++)=(mod+'0');
	s++;
	mod=(timer>>12)&15;				//Minutes.
	*(s++)=(mod+'0');
	mod=(timer>>8)&15;
	*(s++)=(mod+'0');
	s++;
	mod=(timer>>20)&15;				//Seconds.
	*(s++)=(mod+'0');
	mod=(timer>>16)&15;
	*(s++)=(mod+'0');
	strcpy(ptr,str);
}

void IWRAM_CODE hrt_EZFSetRompage(u16 page)
{
	*(vu16 *)0x9fe0000 = 0xd200;
	*(vu16 *)0x8000000 = 0x1500;
	*(vu16 *)0x8020000 = 0xd200;
	*(vu16 *)0x8040000 = 0x1500;
	*(vu16 *)0x9880000 = page;//C4
	*(vu16 *)0x9fc0000 = 0x1500;
}

void IWRAM_CODE hrt_ExitToEZFlash()
{
	hrt_EZFSetRompage(0x8000);
	asm("swi 1");
	asm("swi 0");
}

void hrt_DMATransfer(u8 channel, void* source, void* dest, u32 WordCount, u32 mode)
{
	REG_DMA[channel].cnt = 0; //Shut off any previous transfer
    REG_DMA[channel].src = (u32)source;
    REG_DMA[channel].dst = (u32)dest;
	REG_DMA[channel].cnt = WordCount | mode;
}


void hrt_DMAClear(u8 channel)
{
	REG_DMA[channel].cnt = 0; //Shut off any previous transfer
    REG_DMA[channel].src = 0;
    REG_DMA[channel].dst = 0;
	REG_DMA[channel].cnt = 0x81600000;
}

u32 hrt_GetHeartLibVersion(void)
{
	return 100;
}