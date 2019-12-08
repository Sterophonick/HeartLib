#include <string.h>
#include "hrt_misc.h"
extern int gettime(void);
u16* VRAM 	=(u16*)0x6000000;

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

void hrt_DMACopy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode)
{
    REG_DMAxSAD(channel) = (u32)source;
    REG_DMAxDAD(channel) = (u32)dest;
	REG_DMAxCNT(channel) = WordCount | mode;
}