#include "libheart.h"
pRotData rotData = (pRotData)sprites;
//updates the horizontal offset (HOFS) and vertical offset (VOFS) from BG

void WaitForVblank()
{
	while (REG_VCOUNT >= 160);
}

void hrt_DMA_Copy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode)
{
	switch (channel)
	{
	case 0:
		REG_DM0SAD = (u32)source;
		REG_DM0DAD = (u32)dest;
		REG_DM0CNT = WordCount | mode;
		break;
	case 1:
		REG_DM1SAD = (u32)source;
		REG_DM1DAD = (u32)dest;
		REG_DM1CNT = WordCount | mode;
		break;
	case 2:
		REG_DM2SAD = (u32)source;
		REG_DM2DAD = (u32)dest;
		REG_DM2CNT = WordCount | mode;
		break;

	case 3:
		REG_DM3SAD = (u32)source;
		REG_DM3DAD = (u32)dest;
		REG_DM3CNT = WordCount | mode;
		break;

	}
}

void hrt_EditBG(BG *bg)
{
	switch(bg->n)
	{
	case 0:
		REG_BG0HOFS = bg->x;
		REG_BG0VOFS = bg->y;
		break;
	case 1:
		REG_BG1HOFS = bg->x;
		REG_BG1VOFS = bg->y;
		break;
	case 2:
		REG_BG2HOFS = bg->x;
		REG_BG2VOFS = bg->y;
		REG_BG2PA = ((bg->x_size) * (s32)COS[bg->angle%360])>>8;    //(do my fixed point multiplies and shift back down)
		REG_BG2PB = ((bg->y_size) * (s32)SIN[bg->angle%360])>>8;
		REG_BG2PC = ((bg->x_size) * (s32)-SIN[bg->angle%360])>>8;
		REG_BG2PD = ((bg->y_size) * (s32)COS[bg->angle%360])>>8;
		break;
	case 3:
		REG_BG3HOFS = bg->x;
		REG_BG3VOFS = bg->y;
		REG_BG3PA = ((bg->x_size) * (s32)COS[bg->angle%360])>>8;    //(do my fixed point multiplies and shift back down)
		REG_BG3PB = ((bg->y_size) * (s32)SIN[bg->angle%360])>>8;
		REG_BG3PC = ((bg->x_size) * (s32)-SIN[bg->angle%360])>>8;
		REG_BG3PD = ((bg->y_size) * (s32)COS[bg->angle%360])>>8;
		break;
	default:
		break;
	}
}

#define swi_call(x)   asm volatile("swi\t"#x"<<16" ::: "r0", "r1", "r2", "r3")
inline void hrt_Diff8bitUnFilterWram(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x16\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}
inline void hrt_Diff8bitUnFilterVram(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x17\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}

inline void hrt_Diff16bitUnFilter(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x18\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}
inline void hrt_HuffUnComp(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x13\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}
inline void hrt_LZ77UnCompWRAM(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x11\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}
inline void hrt_LZ77UnCompVRAM(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x12\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}
inline void hrt_RLUnCompVram(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x15\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}
inline void hrt_RLUnCompWram(u32 source, u32 dest) {
asm("mov r0, %0\n"
"mov r1, %1\n"
"swi 0x14\n"
:
:"r" (source), "r" (dest)
:"r0", "r1" );
}

void hrt_initsound16(int a, int f, int e, u16* d)
{
	sound[a].song=(void*)d; sound[a].frequency=f; sound[a].end=e; sound[a].tic=0;	
}

void htr_initsound32(int a, int f, int e, u32* d)
{
	sound[a].song=(void*)d; sound[a].frequency=f; sound[a].end=e; sound[a].tic=0;	
}

void hrt_initsound8(int a, int f, int e, u8* d)
{
	sound[a].song=d; sound[a].frequency=f; sound[a].end=e; sound[a].tic=0;
}
void hrt_playSoundUntilDone(int s, int end) {
 REG_SOUNDCNT1_H = 0x0B04;                                                       //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
 REG_SOUNDCNT1_X = 0x0080;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
 REG_SD1SAD      = (unsigned long) sound[s].song;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
 REG_SD1DAD      = 0x040000A0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
 REG_SD1CNT_H    = 0xB640;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
 REG_TM0SD       = 65536-(16777216/sound[s].frequency);                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
 REG_TMSDCNT     = 0x00C0;  
 Sleep(end);
 REG_SOUNDCNT1_H = 0;                                                       //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
 REG_SOUNDCNT1_X = 0;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
 REG_SD1SAD      = 0;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
 REG_SD1DAD      = 0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
 REG_SD1CNT_H    = 0;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
 REG_TM0SD       = 0;                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
 REG_TMSDCNT     = 0;  
}
void playSound(int s) {
 REG_SOUNDCNT1_H = 0x0B04;                                                       //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
 REG_SOUNDCNT1_X = 0x0080;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
 REG_SD1SAD      = (unsigned long) sound[s].song;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
 REG_SD1DAD      = 0x040000A0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
 REG_SD1CNT_H    = 0xB640;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
 REG_TM0SD       = 65536-(16777216/sound[s].frequency);                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
 REG_TMSDCNT     = 0x00C0;  
}

u16* OBJPaletteMem 	=(u16*)0x5000200;
u16* OAMData		=(u16*)0x6010000;
u16* OAM = (u16*)0x7000000;
u32* OAMmem  		=(u32*)0x7000000;
s32 angle = 0;
s32 zoom = 1<<8;
const double SIN[360] = { 0 , 4.46781 , 8.93426 , 13.398 , 17.8576 , 22.3119 , 26.7593 , 31.1985 , 35.6283 , 40.0472 , 44.4539 ,
		48.8471 , 53.2253 , 57.5874 , 61.932 , 66.2576 , 70.5631 , 74.8471 , 79.1083 , 83.3454 , 87.5571 ,
		91.7421 , 95.8992 , 100.027 , 104.124 , 108.19 , 112.223 , 116.221 , 120.185 , 124.111 , 128 ,
		131.85 , 135.659 , 139.427 , 143.153 , 146.835 , 150.473 , 154.065 , 157.609 , 161.106 , 164.554 ,
		167.951 , 171.297 , 174.591 , 177.832 , 181.019 , 184.151 , 187.226 , 190.245 , 193.206 , 196.107 ,
		198.949 , 201.731 , 204.451 , 207.108 , 209.703 , 212.234 , 214.7 , 217.1 , 219.435 , 221.702 ,
		223.903 , 226.034 , 228.098 , 230.091 , 232.015 , 233.868 , 235.649 , 237.359 , 238.996 , 240.561 ,
		242.053 , 243.47 , 244.814 , 246.083 , 247.277 , 248.396 , 249.439 , 250.406 , 251.297 , 252.111 ,
		252.848 , 253.509 , 254.092 , 254.598 , 255.026 , 255.376 , 255.649 , 255.844 , 255.961 , 256 ,
		255.961 , 255.844 , 255.649 , 255.376 , 255.026 , 254.598 , 254.092 , 253.509 , 252.848 , 252.111 ,
		251.297 , 250.406 , 249.439 , 248.396 , 247.277 , 246.083 , 244.814 , 243.471 , 242.053 , 240.561 ,
		238.997 , 237.359 , 235.649 , 233.868 , 232.015 , 230.091 , 228.098 , 226.035 , 223.903 , 221.703 ,
		219.435 , 217.101 , 214.7 , 212.234 , 209.703 , 207.109 , 204.451 , 201.731 , 198.95 , 196.108 ,
		193.206 , 190.245 , 187.227 , 184.151 , 181.02 , 177.833 , 174.592 , 171.298 , 167.952 , 164.554 ,
		161.106 , 157.61 , 154.065 , 150.473 , 146.836 , 143.154 , 139.428 , 135.66 , 131.85 , 128 ,
		124.112 , 120.185 , 116.222 , 112.224 , 108.191 , 104.125 , 100.028 , 95.8998 , 91.7428 , 87.5577 ,
		83.346 , 79.1089 , 74.8477 , 70.5638 , 66.2583 , 61.9326 , 57.5881 , 53.226 , 48.8477 , 44.4546 ,
		40.0479 , 35.629 , 31.1992 , 26.7599 , 22.3125 , 17.8583 , 13.3987 , 8.93494 , 4.46849 , 0.000679319 ,
		-4.46713 , -8.93358 , -13.3973 , -17.857 , -22.3112 , -26.7586 , -31.1979 , -35.6276 , -40.0465 , -44.4532 ,
		-48.8464 , -53.2247 , -57.5868 , -61.9313 , -66.257 , -70.5625 , -74.8464 , -79.1076 , -83.3447 , -87.5564 ,
		-91.7415 , -95.8986 , -100.026 , -104.124 , -108.19 , -112.222 , -116.221 , -120.184 , -124.111 , -127.999 ,
		-131.849 , -135.659 , -139.427 , -143.153 , -146.835 , -150.472 , -154.064 , -157.609 , -161.105 , -164.553 ,
		-167.95 , -171.297 , -174.591 , -177.832 , -181.019 , -184.15 , -187.226 , -190.244 , -193.205 , -196.107 ,
		-198.949 , -201.73 , -204.45 , -207.108 , -209.702 , -212.233 , -214.699 , -217.1 , -219.434 , -221.702 ,
		-223.902 , -226.034 , -228.097 , -230.091 , -232.014 , -233.867 , -235.649 , -237.359 , -238.996 , -240.561 ,
		-242.052 , -243.47 , -244.814 , -246.083 , -247.277 , -248.395 , -249.439 , -250.406 , -251.296 , -252.111 ,
		-252.848 , -253.508 , -254.092 , -254.598 , -255.026 , -255.376 , -255.649 , -255.844 , -255.961 , -256 ,
		-255.961 , -255.844 , -255.649 , -255.376 , -255.026 , -254.598 , -254.092 , -253.509 , -252.848 , -252.111 ,
		-251.297 , -250.406 , -249.439 , -248.396 , -247.277 , -246.083 , -244.814 , -243.471 , -242.053 , -240.562 ,
		-238.997 , -237.359 , -235.65 , -233.868 , -232.015 , -230.092 , -228.098 , -226.035 , -223.903 , -221.703 ,
		-219.435 , -217.101 , -214.7 , -212.234 , -209.704 , -207.109 , -204.451 , -201.731 , -198.95 , -196.108 ,
		-193.206 , -190.246 , -187.227 , -184.152 , -181.02 , -177.833 , -174.592 , -171.298 , -167.952 , -164.555 ,
		-161.107 , -157.61 , -154.066 , -150.474 , -146.837 , -143.154 , -139.429 , -135.66 , -131.851 , -128.001 ,
		-124.112 , -120.186 , -116.223 , -112.224 , -108.191 , -104.126 , -100.028 , -95.9005 , -91.7434 , -87.5584 ,
		-83.3467 , -79.1096 , -74.8484 , -70.5644 , -66.2589 , -61.9333 , -57.5887 , -53.2267 , -48.8484 , -44.4552 ,
		-40.0485 , -35.6296 , -31.1999 , -26.7606 , -22.3132 , -17.859 , -13.3994 , -8.93562 , -4.46917 ,  };

const double COS[360] = { 256 , 255.961 , 255.844 , 255.649 , 255.376 , 255.026 , 254.598 , 254.092 , 253.509 , 252.848 , 252.111 ,
		251.297 , 250.406 , 249.439 , 248.396 , 247.277 , 246.083 , 244.814 , 243.47 , 242.053 , 240.561 ,
		238.997 , 237.359 , 235.649 , 233.868 , 232.015 , 230.091 , 228.098 , 226.035 , 223.903 , 221.703 ,
		219.435 , 217.1 , 214.7 , 212.234 , 209.703 , 207.108 , 204.451 , 201.731 , 198.949 , 196.107 ,
		193.206 , 190.245 , 187.227 , 184.151 , 181.019 , 177.833 , 174.592 , 171.298 , 167.951 , 164.554 ,
		161.106 , 157.609 , 154.065 , 150.473 , 146.836 , 143.154 , 139.428 , 135.66 , 131.85 , 128 ,
		124.111 , 120.185 , 116.222 , 112.223 , 108.19 , 104.125 , 100.027 , 95.8995 , 91.7424 , 87.5574 ,
		83.3457 , 79.1086 , 74.8474 , 70.5634 , 66.2579 , 61.9323 , 57.5878 , 53.2257 , 48.8474 , 44.4542 ,
		40.0475 , 35.6286 , 31.1989 , 26.7596 , 22.3122 , 17.858 , 13.3983 , 8.9346 , 4.46815 , 0.000339659 ,
		-4.46747 , -8.93392 , -13.3977 , -17.8573 , -22.3115 , -26.7589 , -31.1982 , -35.6279 , -40.0469 , -44.4536 ,
		-48.8467 , -53.225 , -57.5871 , -61.9316 , -66.2573 , -70.5628 , -74.8468 , -79.108 , -83.3451 , -87.5568 ,
		-91.7418 , -95.8989 , -100.027 , -104.124 , -108.19 , -112.223 , -116.221 , -120.184 , -124.111 , -128 ,
		-131.849 , -135.659 , -139.427 , -143.153 , -146.835 , -150.473 , -154.064 , -157.609 , -161.106 , -164.553 ,
		-167.951 , -171.297 , -174.591 , -177.832 , -181.019 , -184.151 , -187.226 , -190.245 , -193.205 , -196.107 ,
		-198.949 , -201.73 , -204.45 , -207.108 , -209.703 , -212.233 , -214.699 , -217.1 , -219.435 , -221.702 ,
		-223.902 , -226.034 , -228.097 , -230.091 , -232.015 , -233.867 , -235.649 , -237.359 , -238.996 , -240.561 ,
		-242.053 , -243.47 , -244.814 , -246.083 , -247.277 , -248.396 , -249.439 , -250.406 , -251.296 , -252.111 ,
		-252.848 , -253.509 , -254.092 , -254.598 , -255.026 , -255.376 , -255.649 , -255.844 , -255.961 , -256 ,
		-255.961 , -255.844 , -255.649 , -255.376 , -255.026 , -254.598 , -254.092 , -253.509 , -252.848 , -252.111 ,
		-251.297 , -250.406 , -249.439 , -248.396 , -247.277 , -246.083 , -244.814 , -243.471 , -242.053 , -240.562 ,
		-238.997 , -237.359 , -235.65 , -233.868 , -232.015 , -230.092 , -228.098 , -226.035 , -223.903 , -221.703 ,
		-219.435 , -217.101 , -214.7 , -212.234 , -209.703 , -207.109 , -204.451 , -201.731 , -198.95 , -196.108 ,
		-193.206 , -190.246 , -187.227 , -184.152 , -181.02 , -177.833 , -174.592 , -171.298 , -167.952 , -164.554 ,
		-161.107 , -157.61 , -154.065 , -150.474 , -146.836 , -143.154 , -139.428 , -135.66 , -131.851 , -128.001 ,
		-124.112 , -120.186 , -116.222 , -112.224 , -108.191 , -104.125 , -100.028 , -95.9002 , -91.7431 , -87.558 ,
		-83.3463 , -79.1093 , -74.8481 , -70.5641 , -66.2586 , -61.9329 , -57.5884 , -53.2263 , -48.8481 , -44.4549 ,
		-40.0482 , -35.6293 , -31.1995 , -26.7603 , -22.3129 , -17.8587 , -13.399 , -8.93528 , -4.46883 , -0.00101898 ,
		4.46679 , 8.93325 , 13.397 , 17.8566 , 22.3108 , 26.7583 , 31.1975 , 35.6273 , 40.0462 , 44.4529 ,
		48.8461 , 53.2244 , 57.5864 , 61.931 , 66.2566 , 70.5621 , 74.8461 , 79.1073 , 83.3444 , 87.5561 ,
		91.7412 , 95.8983 , 100.026 , 104.124 , 108.189 , 112.222 , 116.221 , 120.184 , 124.11 , 127.999 ,
		131.849 , 135.658 , 139.427 , 143.152 , 146.835 , 150.472 , 154.064 , 157.608 , 161.105 , 164.553 ,
		167.95 , 171.297 , 174.591 , 177.832 , 181.018 , 184.15 , 187.226 , 190.244 , 193.205 , 196.107 ,
		198.949 , 201.73 , 204.45 , 207.108 , 209.702 , 212.233 , 214.699 , 217.1 , 219.434 , 221.702 ,
		223.902 , 226.034 , 228.097 , 230.091 , 232.014 , 233.867 , 235.649 , 237.359 , 238.996 , 240.561 ,
		242.052 , 243.47 , 244.814 , 246.083 , 247.277 , 248.395 , 249.438 , 250.406 , 251.296 , 252.111 ,
		252.848 , 253.508 , 254.092 , 254.597 , 255.026 , 255.376 , 255.649 , 255.844 , 255.961 ,  };

const double RAD[360] = { 0 , 0.0174533 , 0.0349066 , 0.0523598 , 0.0698131 , 0.0872664 , 0.10472 , 0.122173 , 0.139626 , 0.15708 , 0.174533 ,
		0.191986 , 0.209439 , 0.226893 , 0.244346 , 0.261799 , 0.279252 , 0.296706 , 0.314159 , 0.331612 , 0.349066 ,
		0.366519 , 0.383972 , 0.401425 , 0.418879 , 0.436332 , 0.453785 , 0.471238 , 0.488692 , 0.506145 , 0.523598 ,
		0.541052 , 0.558505 , 0.575958 , 0.593411 , 0.610865 , 0.628318 , 0.645771 , 0.663225 , 0.680678 , 0.698131 ,
		0.715584 , 0.733038 , 0.750491 , 0.767944 , 0.785397 , 0.802851 , 0.820304 , 0.837757 , 0.855211 , 0.872664 ,
		0.890117 , 0.90757 , 0.925024 , 0.942477 , 0.95993 , 0.977384 , 0.994837 , 1.01229 , 1.02974 , 1.0472 ,
		1.06465 , 1.0821 , 1.09956 , 1.11701 , 1.13446 , 1.15192 , 1.16937 , 1.18682 , 1.20428 , 1.22173 ,
		1.23918 , 1.25664 , 1.27409 , 1.29154 , 1.309 , 1.32645 , 1.3439 , 1.36136 , 1.37881 , 1.39626 ,
		1.41372 , 1.43117 , 1.44862 , 1.46608 , 1.48353 , 1.50098 , 1.51844 , 1.53589 , 1.55334 , 1.57079 ,
		1.58825 , 1.6057 , 1.62315 , 1.64061 , 1.65806 , 1.67551 , 1.69297 , 1.71042 , 1.72787 , 1.74533 ,
		1.76278 , 1.78023 , 1.79769 , 1.81514 , 1.83259 , 1.85005 , 1.8675 , 1.88495 , 1.90241 , 1.91986 ,
		1.93731 , 1.95477 , 1.97222 , 1.98967 , 2.00713 , 2.02458 , 2.04203 , 2.05949 , 2.07694 , 2.09439 ,
		2.11185 , 2.1293 , 2.14675 , 2.16421 , 2.18166 , 2.19911 , 2.21657 , 2.23402 , 2.25147 , 2.26893 ,
		2.28638 , 2.30383 , 2.32129 , 2.33874 , 2.35619 , 2.37365 , 2.3911 , 2.40855 , 2.42601 , 2.44346 ,
		2.46091 , 2.47837 , 2.49582 , 2.51327 , 2.53073 , 2.54818 , 2.56563 , 2.58309 , 2.60054 , 2.61799 ,
		2.63544 , 2.6529 , 2.67035 , 2.6878 , 2.70526 , 2.72271 , 2.74016 , 2.75762 , 2.77507 , 2.79252 ,
		2.80998 , 2.82743 , 2.84488 , 2.86234 , 2.87979 , 2.89724 , 2.9147 , 2.93215 , 2.9496 , 2.96706 ,
		2.98451 , 3.00196 , 3.01942 , 3.03687 , 3.05432 , 3.07178 , 3.08923 , 3.10668 , 3.12414 , 3.14159 ,
		3.15904 , 3.1765 , 3.19395 , 3.2114 , 3.22886 , 3.24631 , 3.26376 , 3.28122 , 3.29867 , 3.31612 ,
		3.33358 , 3.35103 , 3.36848 , 3.38594 , 3.40339 , 3.42084 , 3.4383 , 3.45575 , 3.4732 , 3.49066 ,
		3.50811 , 3.52556 , 3.54302 , 3.56047 , 3.57792 , 3.59538 , 3.61283 , 3.63028 , 3.64774 , 3.66519 ,
		3.68264 , 3.70009 , 3.71755 , 3.735 , 3.75245 , 3.76991 , 3.78736 , 3.80481 , 3.82227 , 3.83972 ,
		3.85717 , 3.87463 , 3.89208 , 3.90953 , 3.92699 , 3.94444 , 3.96189 , 3.97935 , 3.9968 , 4.01425 ,
		4.03171 , 4.04916 , 4.06661 , 4.08407 , 4.10152 , 4.11897 , 4.13643 , 4.15388 , 4.17133 , 4.18879 ,
		4.20624 , 4.22369 , 4.24115 , 4.2586 , 4.27605 , 4.29351 , 4.31096 , 4.32841 , 4.34587 , 4.36332 ,
		4.38077 , 4.39823 , 4.41568 , 4.43313 , 4.45059 , 4.46804 , 4.48549 , 4.50295 , 4.5204 , 4.53785 ,
		4.55531 , 4.57276 , 4.59021 , 4.60767 , 4.62512 , 4.64257 , 4.66003 , 4.67748 , 4.69493 , 4.71238 ,
		4.72984 , 4.74729 , 4.76474 , 4.7822 , 4.79965 , 4.8171 , 4.83456 , 4.85201 , 4.86946 , 4.88692 ,
		4.90437 , 4.92182 , 4.93928 , 4.95673 , 4.97418 , 4.99164 , 5.00909 , 5.02654 , 5.044 , 5.06145 ,
		5.0789 , 5.09636 , 5.11381 , 5.13126 , 5.14872 , 5.16617 , 5.18362 , 5.20108 , 5.21853 , 5.23598 ,
		5.25344 , 5.27089 , 5.28834 , 5.3058 , 5.32325 , 5.3407 , 5.35816 , 5.37561 , 5.39306 , 5.41052 ,
		5.42797 , 5.44542 , 5.46288 , 5.48033 , 5.49778 , 5.51524 , 5.53269 , 5.55014 , 5.5676 , 5.58505 ,
		5.6025 , 5.61996 , 5.63741 , 5.65486 , 5.67232 , 5.68977 , 5.70722 , 5.72468 , 5.74213 , 5.75958 ,
		5.77703 , 5.79449 , 5.81194 , 5.82939 , 5.84685 , 5.8643 , 5.88175 , 5.89921 , 5.91666 , 5.93411 ,
		5.95157 , 5.96902 , 5.98647 , 6.00393 , 6.02138 , 6.03883 , 6.05629 , 6.07374 , 6.09119 , 6.10865 ,
		6.1261 , 6.14355 , 6.16101 , 6.17846 , 6.19591 , 6.21337 , 6.23082 , 6.24827 , 6.26573 ,  };

void hrt_CopyOAM()
{
	u16 loop;
	u16* temp;
	temp = (u16*)sprites;
	for(loop = 0; loop < 128*4; loop++)
	{
		OAM[loop] = temp[loop];
	}
}
void hrt_CreateOBJ(int spr, int stx, int sty, int size, int affine, int hflip, int vflip, int shape, int dblsize, int mosaic, int pal, int color, int alpha, int mode, int offset)
{
	if(affine==1){
		// set sprite offscreen, and set it up (size,etc)
		sprites[spr].attribute0 = color*8192 | shape*0x4000 | mode*0x400 | mosaic*0x1000 | ROTATION_FLAG | dblsize*0x200 | stx;
		sprites[spr].attribute1 = size*16384 | ROTDATA(spr) | hflip*4096 | vflip*8192 | sty;
		sprites[spr].attribute2 = 512 + offset;
	}else{
		// set sprite offscreen, and set it up (size,etc)
		sprites[spr].attribute0 = color*8192 | shape*0x4000 | mode*0x400 | mosaic*0x1000 | dblsize*0x200 | stx;
		sprites[spr].attribute1 = size*16384 | hflip*4096 | vflip*8192 | sty;
		sprites[spr].attribute2 = 512 + offset;
	}
}
void hrt_updateSprite(int spr,int offset,int sprsize, int ani)
{
	int frame;
	int size;

	size = sprsize * 2;

	frame = size * ani;

	sprites[spr].attribute2 = (512 + offset) + frame;
}

void hrt_loadOBJPal(unsigned int * pal)
{
	int 	x;

	for(x = 0; x < 256; x++)
		OBJPaletteMem[x] = ((unsigned short*)pal)[x];
}

void hrt_loadOBJGFX(unsigned int * gfx,int size)
{ 
	int 	x;

	//offset = size * place;

	for(x = 0; x < size; x++)
      	OAMData[(8192 + offsetOAM) + x] = ((unsigned short*)gfx)[x];

	offsetOAM +=size;
}	


void hrt_AffineOBJ(int rotDataIndex, s32 angle, s32 x_scale,s32 y_scale)
{

	s32 pa,pb,pc,pd;

	pa = ((x_scale) * (s32)COS[angle%360])>>8;    //(do my fixed point multiplies and shift back down)
	pb = ((y_scale) * (s32)SIN[angle%360])>>8;
	pc = ((x_scale) * (s32)-SIN[angle%360])>>8;
	pd = ((y_scale) * (s32)COS[angle%360])>>8;

	rotData[rotDataIndex].pa = pa;  //put them in my data struct
	rotData[rotDataIndex].pb = pb;
	rotData[rotDataIndex].pc = pc;
	rotData[rotDataIndex].pd = pd;
}

void hrt_SetOBJXY(OAMEntry* sp, int x, int y)
{
	if(x < 0)			
		x = 512 + x;
	if(y < 0)			
		y = 256 + y;

	sp->attribute1 = sp->attribute1 & 0xFE00;  
	sp->attribute1 = sp->attribute1 | x;

	sp->attribute0 = sp->attribute0 & 0xFF00;  
	sp->attribute0 = sp->attribute0 | y;
}

void hrt_resetOffset(void)
{
	offsetOAM = 0;
}
void hrt_cloneOBJ(int ospr, int nspr) //duplicates a Sprite
{
	// set sprite offscreen, and set it up (size,etc)
	sprites[nspr].attribute0 = sprites[ospr].attribute0;
	sprites[nspr].attribute1 = sprites[ospr].attribute1;
	sprites[nspr].attribute2 = sprites[ospr].attribute2; // NOTE: mode4 doesn't support the first tiles, so offset of 512 is requirerd
}
void hrt_glideSpritetoPos(int spr, int x1, int y1, int x2, int y2, u32 frames)
{
	hrt_SetOBJXY(&sprites[spr], x1, y1);
int i, deltax, deltay, numpixels;
int d, dinc1, dinc2;
int x, xinc1, xinc2;
int y, yinc1, yinc2;
//calculate deltaX and deltaY
deltax = abs(x2 - x1);
deltay = abs(y2 - y1);
//initialize
if(deltax >= deltay)
{
//If x is independent variable
numpixels = deltax + 1;
d = (2 * deltay) - deltax;
dinc1 = deltay << 1;
dinc2 = (deltay - deltax) << 1;
xinc1 = 1;
xinc2 = 1;
yinc1 = 0;
yinc2 = 1;
}
else{
//if y is independent variable
numpixels = deltay + 1;
d = (2 * deltax) - deltay;
dinc1 = deltax << 1;
dinc2 = (deltax - deltay) << 1;
xinc1 = 0;
xinc2 = 1;
yinc1 = 1;
yinc2 = 1;
}
//move the right direction
if(x1 > x2)
{
xinc1 = -xinc1;
xinc2 = -xinc2;
}
if(y1 > y2)
{
yinc1 = -yinc1;
yinc2 = -yinc2;
}
x = x1;
y = y1;
//draw the pixels
for(i = 1; i < numpixels; i++)
{
	while(REG_VCOUNT>160);
	hrt_CopyOAM();
hrt_SetOBJXY(&sprites[spr], x, y);
if(d < 0)
{d = d + dinc1;
x = x + xinc1;
y = y + yinc1;
}
else
{
d = d + dinc2;
x = x + xinc2;
y = y + yinc2;
}
}
Sleep(frames);
}

void hrt_SaveInt(u16 offset, int value) //saves to SRAM
{
	int i;
	char string[7];
	sprintf(string, "%d", value);
	for(i=0; i < 32768; i++)
	{
		if(string[i] == 0)
		{
			break;
		}
		*(u8 *)(SRAM + offset + i) = string[i];
	}
}
int hrt_LoadInt(u16 offset) //Loads from SRAM
{
	int  i;
	char string[7];
	for(i = 0; i != 7; i++)
	{
		string[i] = *(u8 *)(SRAM + offset + i);
	}
	return atoi(string);
}

void SleepF(double i)
{ 
   int x, y; 
   int c; 
   for (y = 0; y < i; y++) 
   { 
      for (x = 0; x < 4000; x++) 
         c = c + 2; // do something to slow things down 
   } 
} 
void Sleep(u32 frames)
{
	int i;
	i = frames;
	while (i--)
		WaitForVblank();
}

void SleepQ(int i)
{ 
   int x, y; 
   int c; 
   for (y = 0; y < i; y++) 
   { 
      for (x = 0; x < 4000; x++) 
         c = c + 2; // do something to slow things down 
   } 
} 

int vframe = 1;              // this is the buffer frame
int	offsetOAM=0;
u16* VideoBuffer 	=(u16*)0x6000000;
u16* BGPaletteMem 	=(u16*)0x5000000;
u16* BGTileMem = (u16*)0x6004000;
u8* VideoBuffer4 	=(u8*)0x6000000;
u16* FrontBuffer = (u16*)0x6000000;
u16* BackBuffer = (u16*)0x600A000;
volatile u16* ScanlineCounter = (u16*)0x4000006;
const unsigned char font_matrix[] =
{
// (space) 32
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
// ! 33
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
// " 34
    0,0,0,0,0,0,0,0,
    0,W,W,0,W,W,0,0,
    0,W,W,0,W,W,0,0,
    0,0,W,0,0,W,0,0,
    0,0,W,0,0,W,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
// # 35
    0,0,0,0,0,0,0,0,
    0,0,W,0,0,W,0,0,
    0,W,W,W,W,W,W,0,
    0,0,W,0,0,W,0,0,
    0,0,W,0,0,W,0,0,
    0,W,W,W,W,W,W,0,
    0,0,W,0,0,W,0,0,
    0,0,0,0,0,0,0,0,
// $ 36
    0,0,0,W,0,0,0,0,
    0,0,W,W,W,W,0,0,
    0,W,0,W,0,0,0,0,
    0,0,W,W,W,0,0,0,
    0,0,0,W,0,W,0,0,
    0,W,W,W,W,0,0,0,
    0,0,0,W,0,0,0,0,
    0,0,0,0,0,0,0,0,
// % 37
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,W,W,0,0,W,0,0,
    0,W,W,0,W,0,0,0,
    0,0,0,W,0,0,0,0,
    0,0,W,0,W,W,0,0,
    0,W,0,0,W,W,0,0,
    0,0,0,0,0,0,0,0,
// & 38
    0,0,0,0,0,0,0,0,
    0,0,W,W,W,0,0,0,
    0,W,0,0,0,W,0,0,
    0,0,W,W,W,0,0,0,
    0,W,0,W,0,0,0,0,
    0,W,0,0,W,0,W,0,
    0,0,W,W,W,W,0,0,
    0,0,0,0,0,0,W,0,
// ' 39
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,0,W,0,0,0,
    0,0,0,0,W,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
// ( 40
    0,0,0,0,0,0,W,0,
    0,0,0,0,0,W,0,0,
    0,0,0,0,0,W,0,0,
    0,0,0,0,0,W,0,0,
    0,0,0,0,0,W,0,0,
    0,0,0,0,0,W,0,0,
    0,0,0,0,0,W,0,0,
    0,0,0,0,0,0,W,0,
// ) 41
    0,W,0,0,0,0,0,0,
    0,0,W,0,0,0,0,0,
    0,0,W,0,0,0,0,0,
    0,0,W,0,0,0,0,0,
    0,0,W,0,0,0,0,0,
    0,0,W,0,0,0,0,0,
    0,0,W,0,0,0,0,0,
    0,W,0,0,0,0,0,0,
// *
    0,0,0,0,0,0,0,0,
    0,0,0,W,0,0,0,0,
    0,W,0,W,0,W,0,0,
    0,0,W,W,W,0,0,0,
    0,0,W,W,W,0,0,0,
    0,0,W,W,W,0,0,0,
    0,W,0,0,0,W,0,0,
    0,0,0,0,0,0,0,0,
// +
    0,0,0,0,0,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,0,0,0,0,0,
// ,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,0,0,0,0,0,
// -
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
// .
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,0,0,0,0,0,
// /
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,W,0,
    0,0,0,0,0,W,W,0,
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,0,0,0,0,0,0,
// 0
    0,0,W,W,W,W,0,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,W,W,0,
    0,W,W,0,W,0,W,0,
    0,W,W,W,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// 1
    0,0,0,0,W,0,0,0,
    0,0,W,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,W,W,0,0,
// 2
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,0,0,0,0,W,0,
    0,0,0,0,0,W,W,0,
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,0,0,0,0,
    0,W,W,W,W,W,W,0,
// 3
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,0,0,0,0,W,0,
    0,0,0,0,0,0,W,0,
    0,0,0,W,W,W,0,0,
    0,0,0,0,0,0,W,0,
    0,W,0,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// 4
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,W,0,0,
    0,0,W,W,0,W,0,0,
    0,W,W,0,0,W,0,0,
    0,W,W,W,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
// 5
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,0,W,W,W,W,0,0,
    0,0,0,0,0,0,W,0,
    0,W,0,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// 6
    0,0,0,W,W,W,W,0,
    0,0,W,W,W,W,W,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,W,W,W,0,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// 7
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,W,0,0,0,W,W,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,0,0,0,0,
// 8
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// 9
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,W,0,
    0,0,0,0,0,W,W,0,
    0,0,0,0,0,W,W,0,
    0,0,0,0,0,W,W,0,
// :
    0,0,0,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,0,0,0,0,0,
// ;
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
// <
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,0,W,W,0,0,
// =
    0,0,0,0,0,0,0,0,
    0,W,W,W,W,W,0,0,
    0,W,W,W,W,W,0,0,
    0,0,0,0,0,0,0,0,
    0,W,W,W,W,W,0,0,
    0,W,W,W,W,W,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,
// >
    0,W,W,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,0,0,0,0,
    0,W,W,0,0,0,0,0,
// ?
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,0,0,0,W,W,0,
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,0,0,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
// @
    0,0,0,0,0,0,0,0,
    0,0,W,W,W,0,0,0,
    0,W,0,0,0,W,0,0,
    0,W,0,W,W,0,0,0,
    0,W,0,W,W,0,0,0,
    0,W,0,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
    0,0,0,0,0,0,0,0,
// A 65
    0,0,W,W,W,0,0,0,
    0,W,W,W,W,W,0,0,
    0,W,W,0,0,W,0,0,
    0,W,W,0,0,W,0,0,
    0,W,W,W,W,W,0,0,
    0,W,W,W,W,W,0,0,
    0,W,W,0,0,W,0,0,
    0,W,W,0,0,W,0,0,
// B 66
    0,W,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,W,W,0,
    0,W,W,0,0,W,0,0,
    0,W,W,W,W,W,0,0,
    0,W,W,0,0,W,W,0,
    0,W,W,0,0,W,W,0,
    0,W,W,W,W,W,0,0,
// C 67
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// D 68
    0,W,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,W,W,W,0,0,
// E 69
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,W,W,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,W,W,W,W,0,
// F 70
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,W,W,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
// G 71
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// H 72
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
// I 73
    0,0,W,W,W,W,0,0,
    0,0,W,W,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,W,W,0,0,
// J 74
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,W,0,0,W,W,0,0,
    0,W,W,W,W,W,0,0,
    0,0,W,W,W,0,0,0,
// K 75
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,W,W,0,
    0,W,W,0,W,W,0,0,
    0,W,W,W,W,0,0,0,
    0,W,W,W,W,0,0,0,
    0,W,W,0,W,W,0,0,
    0,W,W,0,0,W,W,0,
    0,W,W,0,0,0,W,0,
// L 76
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,W,W,W,W,0,
// M 77
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,W,0,W,W,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,W,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
// N 78
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,W,0,0,W,0,
    0,W,W,W,W,0,W,0,
    0,W,W,0,W,W,W,0,
    0,W,W,0,0,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
// O 79
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// P 80
    0,W,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,W,W,W,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
// Q 81
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,W,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,W,
// R 82
    0,W,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,W,0,0,
    0,W,W,W,W,0,0,0,
    0,W,W,0,W,W,0,0,
    0,W,W,0,0,W,W,0,
// S 83
    0,0,W,W,W,W,0,0,
    0,W,W,W,W,W,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,0,0,
    0,0,W,W,W,W,0,0,
    0,0,0,0,0,0,W,0,
    0,W,0,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// T 84
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
// U 85
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
// V 86
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,0,W,0,0,
    0,0,W,W,0,W,0,0,
    0,0,W,W,0,W,0,0,
    0,0,0,W,W,0,0,0,
// W 87
    0,W,W,0,0,0,0,W,
    0,W,W,0,0,0,0,W,
    0,W,W,0,0,0,0,W,
    0,W,W,0,0,0,0,W,
    0,W,W,0,W,W,0,W,
    0,0,W,W,0,0,W,0,
    0,0,W,W,0,0,W,0,
    0,0,W,W,0,0,W,0,
// X 88
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,0,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,0,W,0,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
// Y 89
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,W,W,0,0,0,W,0,
    0,0,W,W,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
// Z 90
    0,W,W,W,W,W,W,0,
    0,W,W,W,W,W,W,0,
    0,0,0,0,0,W,W,0,
    0,0,0,0,W,W,0,0,
    0,0,0,W,W,0,0,0,
    0,0,W,W,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,W,W,W,W,W,W,0,
// [ 91
    0,0,0,0,W,W,W,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,W,0,
// \ 92
    0,W,W,0,0,0,0,0,
    0,W,W,0,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,W,W,0,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,W,W,0,0,0,
    0,0,0,0,W,W,0,0,
    0,0,0,0,W,W,0,0,
// ] 93
    0,W,W,W,0,0,0,0,
    0,W,W,W,0,0,0,0,
    0,0,0,W,0,0,0,0,
    0,0,0,W,0,0,0,0,
    0,0,0,W,0,0,0,0,
    0,0,0,W,0,0,0,0,
    0,0,0,W,0,0,0,0,
    0,W,W,W,0,0,0,0,
};
void hrt_DrawPixel(int Mode, int x, int y, unsigned short color)
{
	if(Mode==3)
     	{
		VideoBuffer[y * 240 + x] = color;
	}else if(Mode==4)
	{
		VideoBuffer4[y * 120 + x] = color;
	}else if(Mode==5)
	{
		VideoBuffer[y * 120 + x] = color;
	}
}
int hrt_GetPixel(u8 mode, int x, int y)
{
	u16 temp;
	switch (mode)
	{
		case 3:
			return VideoBuffer[y*240+x]; //returns the pixel color at the position given
			break;
		case 4:
			temp = VideoBuffer4[y*120+x]; //returns the pixel color at the position given
			return BGPaletteMem[temp];
			break;
		case 5:
			return VideoBuffer[y*120+x]; //returns the pixel color at the position given
			break;
	}
	return 0;
} 
void hrt_CycleBGPalette(void)
{
	int i;
/*
    Output from gfx2gba:

    Saving masterpalette to..: master.pal.c ... ok

    Total files read & converted.:   1
    Colors used before converting: 240
    Colors used after converting.: 187
    Colors saved.................:  53
*/
    #define COLORS_AFTER_CONVERTING 255
    
    
    // Save the last colorvalue
    ACCESS_16(MEM_PAL_COL_PTR(COLORS_AFTER_CONVERTING))=ACCESS_16(MEM_PAL_COL_PTR(1));
    
    // go trough all indices
    for(i=0; i<COLORS_AFTER_CONVERTING; i++)
    {
        // Swap color of index
        ACCESS_16(MEM_PAL_COL_PTR(i))=ACCESS_16(MEM_PAL_COL_PTR((i+1)));
    }

    return;
}
void hrt_InvertBGPalette(void)
{
    int i;

    // go trough all 256 colors
    for(i=0; i<256; i++)
    {
        // Invert color of index i
        u16 Color = ACCESS_16(MEM_PAL_COL_PTR(i));

        // Calc new R,G,B Values
        u8 R = 255-RGB_GET_R_VALUE(Color);
        u8 G = 255-RGB_GET_G_VALUE(Color);
        u8 B = 255-RGB_GET_B_VALUE(Color);

        // Set new color
        ACCESS_16(MEM_PAL_COL_PTR(i)) = RGB(R, G, B);
    }

    return;
}
void hrt_drawRect(int r, int c, int width, int height, u16 color, int mode) { //draws rectangle
	int i,j;
	for (i = 0; i < height; i++) {
		for (j = 0; j < width; j++) {
			hrt_DrawPixel(mode, r + i, c + j, color);
		}
	}
}
void hrt_fillscreen(u16 color, int mode) //fills screen with a solid color in mode 3
{
	int x1,y1;
	for(y1=0;y1<160;y1++)
	{
		for(x1=0;x1<240;x1++)
		{
			hrt_DrawPixel(mode, x1, y1, color);
		}
	}
}
void hrt_DrawLine(int x1, int y1, int x2, int y2, unsigned short color, int mode)
{
int i, deltax, deltay, numpixels;
int d, dinc1, dinc2;
int x, xinc1, xinc2;
int y, yinc1, yinc2;
//calculate deltaX and deltaY
deltax = abs(x2 - x1);
deltay = abs(y2 - y1);
//initialize
if(deltax >= deltay)
{
//If x is independent variable
numpixels = deltax + 1;
d = (2 * deltay) - deltax;
dinc1 = deltay << 1;
dinc2 = (deltay - deltax) << 1;
xinc1 = 1;
xinc2 = 1;
yinc1 = 0;
yinc2 = 1;
}
else{
//if y is independent variable
numpixels = deltay + 1;
d = (2 * deltax) - deltay;
dinc1 = deltax << 1;
dinc2 = (deltax - deltay) << 1;
xinc1 = 0;
xinc2 = 1;
yinc1 = 1;
yinc2 = 1;
}
//move the right direction
if(x1 > x2)
{
xinc1 = -xinc1;
xinc2 = -xinc2;
}
if(y1 > y2)
{
yinc1 = -yinc1;
yinc2 = -yinc2;
}
x = x1;
y = y1;
//draw the pixels
for(i = 1; i < numpixels; i++)
{
hrt_DrawPixel(mode, x, y, color);
if(d < 0)
{d = d + dinc1;
x = x + xinc1;
y = y + yinc1;
}
else
{
d = d + dinc2;
x = x + xinc2;
y = y + yinc2;
}
}
}
void hrt_DrawCircle(int xCenter, int yCenter, int radius, u16 color, int mode)
{
	int x = 0;
	int y = radius;
	int p = 3 - 2 * radius;
	while (x <= y)
	{
		hrt_DrawPixel(mode, xCenter + x, yCenter + y, color);
		hrt_DrawPixel(mode, xCenter - x, yCenter + y, color);
		hrt_DrawPixel(mode, xCenter + x, yCenter - y, color);
		hrt_DrawPixel(mode, xCenter - x, yCenter - y, color);
		hrt_DrawPixel(mode, xCenter + y, yCenter + x, color);
		hrt_DrawPixel(mode, xCenter - y, yCenter + x, color);
		hrt_DrawPixel(mode, xCenter + y, yCenter - x, color);
		hrt_DrawPixel(mode, xCenter - y, yCenter - x, color);
		if (p < 0)
			p += 4 * x++ + 6;
		else
			p += 4 * (x++ - y--) + 10;
	}
}
void hrt_scanlines(u16 color, float time, int mode)
{
	int x,y;
	
	for(x=0; x<240; x+=2)
	{
		while(REG_VCOUNT>160);
		for(y=0;y<160;y+=2)
		{
			hrt_DrawPixel(mode, x-1,y,color);	
			hrt_DrawPixel(mode, x,y,color);
			hrt_DrawPixel(mode, 240-x+1,y-1,color);	
			hrt_DrawPixel(mode, 240-x,y-1,color);
		}
		SleepF(time);
	}
}
void hrt_leftwipe(u16 color, float time, int mode)
{int x1,y1;
	for(x1=0;x1<240;x1++)
	{
		for(y1=0;y1<160;y1++)
		{
			hrt_DrawPixel(mode, x1,y1,color);
		}
		SleepF(time);
	}
}

void hrt_rightwipe(u16 color, float time, int mode)
{int x1,y1;
	for(x1=240;x1>0;x1--)
	{
		for(y1=0;y1<160;y1++)
		{
			hrt_DrawPixel(mode, x1,y1,color);
		}
		SleepF(time);
	}
}
void hrt_topwipe(u16 color, float time, int mode)
{int x1,y1;
	for(y1=0;y1<160;y1++)
	{
		for(x1=240;x1!=-1;x1--)
		{
			hrt_DrawPixel(mode, x1,y1,color);
		}
		SleepF(time);
	}
}
void hrt_bottomwipe(u16 color, float time, int mode)
{int x1,y1;
	for(y1=160;y1>0;y1--)
	{
		for(x1=240;x1>0;x1--)
		{
			hrt_DrawPixel(mode, x1,y1,color);
		}
		SleepF(time);
	}
}
void hrt_circlewipe(u16 color, float time, int mode)
{int r;
	for(r=0;r<120;r++)
	{
		hrt_DrawCircle(mode, 120, 80, r, color);
		SleepF(time);
	}
}

void hrt_coolscanlines(u16 color, float time, int mode)
{int i;
	for(i=1;i<160;i+=2)
	{
		hrt_DrawLine(0,i,240,i,color, mode);
		SleepF(time);
	}
	for(i=240;i>0;i-=2)
	{
		hrt_DrawLine(0,i,240,i,color, mode);
		SleepF(time);
	}
}
int hrt_GetBGPalEntry(int slot)
{
	return BGPaletteMem[slot];
}

int hrt_GetVCOUNT()
{
	return REG_VCOUNT;
}

int GetOBJPalPoint(int slot)
{
	return OBJPaletteMem[slot];
}

void hrt_SetBGPalEntry(int slot, u16 color)
{
	BGPaletteMem[slot]=color;
}

void hrt_SetOBJPalEntry(int slot, u16 color)
{
	OBJPaletteMem[slot]=color;
}
void hrt_loadBGTiles(u16* data, int length)
{
int i;
	for(i=0;i!=length;i++)
	{
		data++;
		BGTileMem[i]=data[i];
	}
}

void hrt_loadBGMap(u16* data, int length)
{
	int i;
	for (i = 0; i != length; i++)
	{
		data++;
		videoBuffer[i] = data[i];
	}
}

void hrt_DrawChar(int mode, int left, int top, char letter, unsigned short color1, unsigned short color2)
{
	int x, y;
	char draw;

	for (y = 0; y < 8; y++)
		for (x = 0; x < 8; x++)
		{
			draw = font_matrix[(letter - 32) * 64 + y * 8 + x];
			if (draw)
				hrt_DrawPixel(mode, left + x, top + y, color1);
			else
				hrt_DrawPixel(mode, left + x, top + y, color2);
		}
}

void hrt_Print(int mode, int left, int top, char *str, unsigned short color1, unsigned short color2)
{
    int pos = 0;
    while (*str)
    {
        hrt_DrawChar(mode, left + pos, top, *str++, color1, color2);
        pos += 8;
    }
}

void hrt_loadBGPal(u16* data)
{
	int i;
	for (i = 0; i > 255; i++)
	{
		BGPaletteMem[i] = data[i];
	}
}