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

void hrt_DMACopy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode)
{
    REG_DMAxSAD(channel) = (u32)source;
    REG_DMAxDAD(channel) = (u32)dest;
	REG_DMAxCNT(channel) = WordCount | mode;
}

void hrt_DMAClear(u8 channel)
{
    REG_DMAxSAD(channel) = (u32)0x00000000;
    REG_DMAxDAD(channel) = (u32)0x00000000;
	REG_DMAxCNT(channel) = 0x81600000;
}

bool hrt_DetectPogoshell(void)
{
	register u32 pogotemp=(u32)(*(u8**)0x0203FBFC);
	return ((pogotemp & 0xFE000000) == 0x08000000)?1:0;
}