#pragma once
//File: libheart.h
//Main file for HeartGBA Lib

//Use this file often if you're a beginner, even a pro, as it makes GBA development easier, like any other lib. Edit this if you want.
#include <stdio.h>
#include <stdlib.h>

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;

typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned long vu32;

typedef volatile signed char vs8;
typedef volatile signed short vs16;
typedef volatile signed long vs32;

typedef const signed char cs8;
typedef const signed short cs16;
typedef const signed long cs32;

typedef const volatile signed char cvs8;
typedef const volatile signed short cvs16;
typedef const volatile signed long cvs32;

typedef const volatile unsigned char cvu8;
typedef const volatile unsigned short cvu16;
typedef const volatile unsigned long cvu32;

typedef const signed char cu8;
typedef const signed short cu16;
typedef const signed long cu32;

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;

typedef unsigned char byte;
typedef unsigned short hword;
typedef unsigned long word;
typedef void (*fp)(void);

typedef float int8;
typedef double int16;
typedef volatile int vint; 
typedef volatile double vint16;
typedef volatile float vint8;

u32* OAMmem;
u16* VideoBuffer;
u8* VideoBuffer4;
u16* OAMData;
u16* BGPaletteMem;
u16* OBJPaletteMem;
u16* BGTileMem;
unsigned short *v_buffer;    // this is the buffer adress
int vframe;              // this is the buffer frame
int	offsetOAM;
int 	hrt_offsetOAMPal;
u16* OAM;
int loop;

u16* FrontBuffer;
u16* BackBuffer;
u16* videoBuffer;
u16* paletteMem;
volatile u16* ScanlineCounter;
u8 hrt_start;

//gates
#define NOT  !
#define AND  &&
#define NOR  !|
#define OR   |
#define NAND !&
#define XOR  ^
#define XNOR !^

#define us   (void*)


#define REG_SOUNDCNT1_H  *(volatile unsigned short *) 0x04000082
#define REG_SOUNDCNT1_X  *(volatile unsigned short *) 0x04000084
#define REG_SD1SAD      *(volatile unsigned long  *) 0x040000BC
#define REG_SD1DAD      *(volatile unsigned long  *) 0x040000C0
#define REG_SD1CNT_H    *(volatile unsigned short *) 0x040000C6
#define REG_TM0SD        *(volatile unsigned short *) 0x04000100
#define REG_TMSDCNT      *(volatile unsigned short *) 0x04000102 

//colors
#define WHITE 0xFFFF
#define RED 0x001F
#define BLUE 0x7C00
#define CYAN 0x7FE0
#define GREEN 0x03E0
#define MAGENTA 0x7c1f
#define BROWN 0x0110
#define BLACK 0x0000
#define BRICK 0x011B
#define PINK 0x7EDD
#define ORANGE 0x029F
#define YELLOW 0x03FF
#define GREY 0x4210

//bios calls
#define SoftReset 0x00
#define RegisterRamReset 0x01
#define Halt 0x02
#define Stop 0x03
#define IntrWait 0x04
#define VBlankIntrWait 0x05
#define Div 0x06
#define DivArm 0x07
#define Sqrt 0x08
#define ArcTan 0x09
#define ArcTan2 0x0A
#define CPUSet 0x0B
#define CPUFastSet 0x0C
#define BiosChecksum 0x0D
#define BgAffineSet 0x0E
#define OBJAffineSet 0x0F
#define BitUnPack 0x10
#define LZ77UnCompWRAM 0x11
#define LZ77UnCompVRAM 0x12
#define HuffUnComp 0x13
#define RLUnConpWRAM 0x14
#define RLUnConpVRAM 0x15
#define Diff8bitUnFilterWRAM 0x16
#define Diff8bitUnFilterVRAM 0x17
#define Diff16bitUnFilter 0x18
#define SoundBiasChange 0x19
#define SoundDriverInit 0x1A
#define SoundDriverMode 0x1B
#define SoundDriverMain 0x1C
#define SoundDriverVSync 0x1D
#define SoundChannelClear 0x1E
#define MIDIKey2Freq 0x1F
#define MusicPlayerOpen 0x20
#define MusicPlayerStart 0x21
#define MusicPlayerStop 0x22
#define MusicPlayerContinue 0x23
#define MusicPlayerFadeOut 0x24
#define MultiBoot 0x25
#define HardReset 0x26
#define CustomHalt 0x27
#define SoundDriverVSyncOff 0x28
#define SoundDriverVSyncOn 0x29
#define GetJumpList 0x2A

//registries
#define hrt_SetMode(mode) REG_DISPCNT = (mode) 

#define hrt_MULTIBOOT const int __gba_multiboot; //Type 'MULTIBOOT' at the beginning of a project, and the file will be compiled as a multiboot ROM.

#define W 1
#define BIT00 1
#define BIT01 2
#define BIT02 4
#define BIT03 8
#define BIT04 16
#define BIT05 32
#define BIT06 64
#define BIT07 128
#define BIT08 256
#define BIT09 512
#define BIT10 1024
#define BIT11 2048
#define BIT12 4096
#define BIT13 8192
#define BIT14 16384
#define BIT15 32768

#define TMR_PRESCALER_1CK       0x0000  // Prescaler 1 Clock
#define TMR_PRESCALER_64CK      0x0001  //            64 clocks
#define TMR_PRESCALER_256CK     0x0002  //          256 clocks
#define TMR_PRESCALER_1024CK    0x0003  //        1024 clocks
#define TMR_IF_ENABLE           0x0040  // Interrupt Request Enable
#define TMR_ENABLE              0x0080  // Run Timer

#define REG_TM0D       *(vu16*) 0x04000100

#define INT_VBLANK 0x0001
#define INT_HBLANK 0x0002
#define INT_VCOUNT 0x0004 //you can set the display to generate an interrupt when it reaches a particular line on the screen
#define INT_TIMER0 0x0008
#define INT_TIMER1 0x0010
#define INT_TIMER2 0x0020
#define INT_TIMER3 0x0040
#define INT_COMUNICATION 0x0080 //serial communication interupt
#define INT_DMA0 0x0100
#define INT_DMA1 0x0200
#define INT_DMA2 0x0400
#define INT_DMA3 0x0800
#define INT_KEYBOARD 0x1000
#define INT_CART 0x2000 //the cart can actually generate an interupt
#define INT_ALL 0x4000 //this is just a flag we can set to allow the my function to enable or disable all interrupts. Doesn't actually correspond to a bit in REG_IE

#define SOUNDINIT			0x8000	// makes the sound restart
#define SOUNDDUTY87			0x0000	//87.5% wave duty
#define SOUNDDUTY75			0x0040	//75% wave duty
#define SOUNDDUTY50			0x0080	//50% wave duty
#define SOUNDDUTY25			0x00C0	//25% wave duty

#define SOUND1PLAYONCE		0x4000	// play sound once
#define SOUND1PLAYLOOP		0x0000	// play sound looped
#define SOUND1INIT			0x8000	// makes the sound restart
#define SOUND1SWEEPSHIFTS(n)	n	// number of sweep shifts (0-7)
#define SOUND1SWEEPINC		0x0000	// sweep add (freq increase)
#define SOUND1SWEEPDEC		0x0008	// sweep dec (freq decrese)
#define SOUND1SWEEPTIME(n)	(n<<4)	// time of sweep (0-7)
#define SOUND1ENVSTEPS(n)	(n<<8)	// envelope steps (0-7)
#define SOUND1ENVINC		0x0800	// envellope increase
#define SOUND1ENVDEC		0x0000	// envellope decrease
#define SOUND1ENVINIT(n)	(n<<12) // initial envelope volume (0-15)


#define SOUND2PLAYONCE		0x4000	// play sound once
#define SOUND2PLAYLOOP		0x0000	// play sound looped
#define SOUND2INIT			0x8000	// makes the sound restart
#define SOUND2ENVSTEPS(n)	(n<<8)	// envelope steps (0-7)
#define SOUND2ENVINC		0x0800	// envellope increase
#define SOUND2ENVDEC		0x0000	// envellope decrease
#define SOUND2ENVINIT(n)	(n<<12) // initial envelope volume (0-15)



#define SOUND3BANK32		0x0000	// Use two banks of 32 steps each
#define SOUND3BANK64		0x0020	// Use one bank of 64 steps
#define SOUND3SETBANK0		0x0000	// Bank to play 0 or 1 (non set bank is written to)
#define SOUND3SETBANK1		0x0040
#define SOUND3PLAY			0x0080	// Output sound

#define SOUND3OUTPUT0		0x0000	// Mute output
#define SOUND3OUTPUT1		0x2000	// Output unmodified
#define SOUND3OUTPUT12		0x4000	// Output 1/2 
#define SOUND3OUTPUT14		0x6000	// Output 1/4 
#define SOUND3OUTPUT34		0x8000  // Output 3/4

#define SOUND3PLAYONCE		0x4000	// Play sound once
#define SOUND3PLAYLOOP		0x0000	// Play sound looped
#define SOUND3INIT			0x8000	// Makes the sound restart


#define SOUND4PLAYONCE		0x4000	// play sound once
#define SOUND4PLAYLOOP		0x0000	// play sound looped
#define SOUND4INIT			0x8000	// makes the sound restart
#define SOUND4ENVSTEPS(n)	(n<<8)	// envelope steps (0-7)
#define SOUND4ENVINC		0x0800	// envellope increase
#define SOUND4ENVDEC		0x0000	// envellope decrease
#define SOUND4ENVINIT(n)	(n<<12) // initial envelope volume (0-15)


#define SOUND4STEPS7		0x0004
#define SOUND4STEPS15		0x0000
#define SOUND4PLAYONCE		0x4000
#define SOUND4PLAYLOOP		0x0000
#define SOUND4INIT			0x8000

#define REG_INTERUPT   *(u32*)0x3007FFC		//Interrupt Register
#define REG_DISPCNT    *(u32*)0x4000000		//Display Control (Mode)
#define REG_DISPCNT_L  *(u16*)0x4000000		//???
#define REG_DISPCNT_H  *(u16*)0x4000002		//???
#define REG_DISPSTAT   *(u16*)0x4000004		//???
#define REG_VCOUNT     *(vu16*)0x4000006		//Vertical Control (Sync)
#define REG_BG0CNT     *(u16*)0x4000008		//Background 0
#define REG_BG1CNT     *(u16*)0x400000A		//Background 1
#define REG_BG2CNT     *(u16*)0x400000C		//Background 2
#define REG_BG3CNT     *(u16*)0x400000E		//Background 3
#define REG_BG0HOFS    *(u16*)0x4000010		//Background 0 Horizontal Offset
#define REG_BG0VOFS    *(u16*)0x4000012		//Background 0 Vertical Offset
#define REG_BG1HOFS    *(u16*)0x4000014		//Background 1 Horizontal Offset
#define REG_BG1VOFS    *(u16*)0x4000016		//Background 1 Vertical Offset
#define REG_BG2HOFS    *(u16*)0x4000018		//Background 2 Horizontal Offset
#define REG_BG2VOFS    *(u16*)0x400001A		//Background 2 Vertical Offset
#define REG_BG3HOFS    *(u16*)0x400001C		//Background 3 Horizontal Offset
#define REG_BG3VOFS    *(u16*)0x400001E		//Background 3 Vertical Offset
#define REG_BG2PA      *(u16*)0x4000020		//Background 2 PA Rotation (pa = x_scale * cos(angle);)
#define REG_BG2PB      *(u16*)0x4000022		//Background 2 PB Rotation (pb = y_scale * sin(angle);)
#define REG_BG2PC      *(u16*)0x4000024		//Background 2 PC Rotation (pc = x_scale * -sin(angle);)
#define REG_BG2PD      *(u16*)0x4000026		//Background 2 PD Rotation (pd = y_scale * cos(angle);)
#define REG_BG2X       *(u32*)0x4000028		//Background 2 X Location
#define REG_BG2X_L     *(u16*)0x4000028		//???
#define REG_BG2X_H     *(u16*)0x400002A		//???
#define REG_BG2Y       *(u32*)0x400002C		//Background 2 Y Location
#define REG_BG2Y_L     *(u16*)0x400002C		//???
#define REG_BG2Y_H     *(u16*)0x400002E		//???
#define REG_BG3PA      *(u16*)0x4000030		//Background 3 PA Rotation (pa = x_scale * cos(angle);)
#define REG_BG3PB      *(u16*)0x4000032		//Background 3 PB Rotation (pb = y_scale * sin(angle);)
#define REG_BG3PC      *(u16*)0x4000034		//Background 3 PC Rotation (pc = x_scale * -sin(angle);)
#define REG_BG3PD      *(u16*)0x4000036		//Background 3 PD Rotation (pd = y_scale * cos(angle);)
#define REG_BG3X       *(u32*)0x4000038		//Background 3 X Location
#define REG_BG3X_L     *(u16*)0x4000038		//???
#define REG_BG3X_H     *(u16*)0x400003A		//???
#define REG_BG3Y       *(u32*)0x400003C		//Background 3 Y Location
#define REG_BG3Y_L     *(u16*)0x400003C		//???
#define REG_BG3Y_H     *(u16*)0x400003E		//???
#define REG_WIN0H      *(u16*)0x4000040		//Window 0 X coords (bits 0-7 right, bits 8-16 left)
#define REG_WIN1H      *(u16*)0x4000042		//Window 1 X coords (bits 0-7 right, bits 8-16 left)
#define REG_WIN0V      *(u16*)0x4000044		//Window 0 Y coords (bits 0-7 bottom, bits 8-16 top)
#define REG_WIN1V      *(u16*)0x4000046		//Window 1 Y coords (bits 0-7 bottom, bits 8-16 top)
#define REG_WININ      *(u16*)0x4000048		//Inside Window Settings
#define REG_WINOUT     *(u16*)0x400004A		//Outside Window Settings
#define REG_MOSAIC     *(u32*)0x400004C		//Mosaic Mode
#define REG_MOSAIC_L   *(u32*)0x400004C		//???
#define REG_MOSAIC_H   *(u32*)0x400004E		//???
#define REG_BLDMOD     *(u16*)0x4000050		//Blend Mode
#define REG_COLEV      *(u16*)0x4000052		//???
#define REG_COLEY      *(u16*)0x4000054		//???

#define REG_SOUND1CNT   *(vu32*)0x4000060	//sound 1
#define REG_SOUND1CNT_L *(vu16*)0x4000060	//
#define REG_SOUND1CNT_H *(vu16*)0x4000062	//
#define REG_SOUND1CNT_X *(vu16*)0x4000064	//

#define REG_SOUND2CNT_L *(vu16*)0x4000068		//sound 2 lenght & wave duty
#define REG_SOUND2CNT_H *(vu16*)0x400006C		//sound 2 frequency+loop+reset

#define REG_SG30       *(vu32*)0x4000070		//???
#define REG_SOUND3CNT  *(vu32*)0x4000070		//???
#define REG_SG30_L     *(vu16*)0x4000070		//???
#define REG_SOUND3CNT_L *(vu16*)0x4000070	//???
#define REG_SG30_H     *(vu16*)0x4000072		//???
#define REG_SOUND3CNT_H *(vu16*)0x4000072	//???
#define REG_SG31       *(vu16*)0x4000074		//???
#define REG_SOUND3CNT_X *(vu16*)0x4000074	//???

#define REG_SOUND4CNT_L *(vu16*)0x4000078		//???
#define REG_SOUND4CNT_H *(vu16*)0x400007C		//???

#define REG_SGCNT0     *(vu32*)0x4000080		
#define REG_SGCNT0_L   *(vu16*)0x4000080		
#define REG_SOUNDCNT   *(vu32*)0x4000080
#define REG_SOUNDCNT_L *(vu16*)0x4000080		//DMG sound control

#define REG_SGCNT0_H   *(vu16*)0x4000082		
#define REG_SOUNDCNT_H *(vu16*)0x4000082		//Direct sound control

#define REG_SGCNT1     *(vu16*)0x4000084		
#define REG_SOUNDCNT_X *(vu16*)0x4000084	    //Extended sound control

#define REG_SGBIAS     *(vu16*)0x4000088		
#define REG_SOUNDBIAS  *(vu16*)0x4000088		//bit rate+sound bias

#define REG_WAVE_RAM0  *(vu32*)0x4000090		//???
#define REG_SGWR0_L    *(vu16*)0x4000090		//???
#define REG_SGWR0_H    *(vu16*)0x4000092		//???
#define REG_WAVE_RAM1  *(vu32*)0x4000094		//???
#define REG_SGWR1_L    *(vu16*)0x4000094		//???
#define REG_SGWR1_H    *(vu16*)0x4000096		//???
#define REG_WAVE_RAM2  *(vu32*)0x4000098		//???
#define REG_SGWR2_L    *(vu16*)0x4000098		//???
#define REG_SGWR2_H    *(vu16*)0x400009A		//???
#define REG_WAVE_RAM3  *(vu32*)0x400009C		//???
#define REG_SGWR3_L    *(vu16*)0x400009C		//???
#define REG_SGWR3_H    *(vu16*)0x400009E		//???

#define REG_SGFIFOA    *(vu32*)0x40000A0		//???
#define REG_SGFIFOA_L  *(vu16*)0x40000A0		//???
#define REG_SGFIFOA_H  *(vu16*)0x40000A2		//???
#define REG_SGFIFOB    *(vu32*)0x40000A4		//???
#define REG_SGFIFOB_L  *(vu16*)0x40000A4		//???
#define REG_SGFIFOB_H  *(vu16*)0x40000A6		//???
#define REG_DM0SAD     *(u32*)0x40000B0	//DMA0 Source Address
#define REG_DM0SAD_L   *(u16*)0x40000B0	//DMA0 Source Address Low Value
#define REG_DM0SAD_H   *(u16*)0x40000B2	//DMA0 Source Address High Value
#define REG_DM0DAD     *(u32*)0x40000B4	//DMA0 Destination Address
#define REG_DM0DAD_L   *(u16*)0x40000B4	//DMA0 Destination Address Low Value
#define REG_DM0DAD_H   *(u16*)0x40000B6	//DMA0 Destination Address High Value
#define REG_DM0CNT     *(u32*)0x40000B8	//DMA0 Control (Amount)
#define REG_DM0CNT_L   *(u16*)0x40000B8	//DMA0 Control Low Value
#define REG_DM0CNT_H   *(u16*)0x40000BA	//DMA0 Control High Value

#define REG_DM1SAD     *(u32*)0x40000BC	//DMA1 Source Address
#define REG_DM1SAD_L   *(u16*)0x40000BC	//DMA1 Source Address Low Value
#define REG_DM1SAD_H   *(u16*)0x40000BE	//DMA1 Source Address High Value
#define REG_DM1DAD     *(u32*)0x40000C0	//DMA1 Desination Address
#define REG_DM1DAD_L   *(u16*)0x40000C0	//DMA1 Destination Address Low Value
#define REG_DM1DAD_H   *(u16*)0x40000C2	//DMA1 Destination Address High Value
#define REG_DM1CNT     *(u32*)0x40000C4	//DMA1 Control (Amount)
#define REG_DM1CNT_L   *(u16*)0x40000C4	//DMA1 Control Low Value
#define REG_DM1CNT_H   *(u16*)0x40000C6	//DMA1 Control High Value

#define REG_DM2SAD     *(u32*)0x40000C8	//DMA2 Source Address
#define REG_DM2SAD_L   *(u16*)0x40000C8	//DMA2 Source Address Low Value
#define REG_DM2SAD_H   *(u16*)0x40000CA	//DMA2 Source Address High Value
#define REG_DM2DAD     *(u32*)0x40000CC	//DMA2 Destination Address
#define REG_DM2DAD_L   *(u16*)0x40000CC	//DMA2 Destination Address Low Value
#define REG_DM2DAD_H   *(u16*)0x40000CE	//DMA2 Destination Address High Value
#define REG_DM2CNT     *(u32*)0x40000D0	//DMA2 Control (Amount)
#define REG_DM2CNT_L   *(u16*)0x40000D0	//DMA2 Control Low Value
#define REG_DM2CNT_H   *(u16*)0x40000D2	//DMA2 Control High Value

#define REG_DM3SAD     *(u32*)0x40000D4	//DMA3 Source Address
#define REG_DM3SAD_L   *(u16*)0x40000D4	//DMA3 Source Address Low Value
#define REG_DM3SAD_H   *(u16*)0x40000D6	//DMA3 Source Address High Value
#define REG_DM3DAD     *(u32*)0x40000D8	//DMA3 Destination Address
#define REG_DM3DAD_L   *(u16*)0x40000D8	//DMA3 Destination Address Low Value
#define REG_DM3DAD_H   *(u16*)0x40000DA	//DMA3 Destination Address High Value
#define REG_DM3CNT     *(u32*)0x40000DC	//DMA3 Control (Amount)
#define REG_DM3CNT_L   *(u16*)0x40000DC	//DMA3 Control Low Value
#define REG_DM3CNT_H   *(u16*)0x40000DE	//DMA3 Control High Value

#define REG_TM0CNT      *(u32*)0x4000100	//Timer 0
#define REG_TM0CNT_L	*(u16*)0x4000100	//Timer 0 count value
#define REG_TM0CNT_H    *(u16*)0x4000102	//Timer 0 Control

#define REG_TM1CNT     *(u32*)0x4000104		//Timer 2
#define REG_TM1CNT_L   *(u16*)0x4000104		//Timer 2 count value
#define REG_TM1CNT_H   *(u16*)0x4000106		//Timer 2 control

#define REG_TM2D       *(u16*)0x4000108		//Timer 3?
#define REG_TM2CNT     *(u16*)0x400010A		//Timer 3 Control

#define REG_TM3D       *(u16*)0x400010C		//Timer 4?
#define REG_TM3CNT     *(u16*)0x400010E		//Timer 4 Control
#define DMA_ENABLE		0x80000000
#define DMA_IMMEDIATE	0x00000000

#define DMA_16			0x00000000
#define DMA_32			0x04000000
#define REG_SCD0       *(u16*)0x4000120		//32-bit Normal Serial Communication Data 0 / Multi-play
#define REG_SCD1       *(u16*)0x4000122		//32-bit Normal Serial Communication Data 1 /Multi-play
#define REG_SCD2       *(u16*)0x4000124		//Multi-play Communication Data 2
#define REG_SCD3       *(u16*)0x4000126		//Multi-play Communication Data 3
#define REG_SCCNT      *(u32*)0x4000128		//???
#define REG_SCCNT_L    *(u16*)0x4000128		//???
#define REG_SCCNT_H    *(u16*)0x400012A		//???
#define REG_P1         *(vu16*)0x4000130		//Player 1 Input
#define REG_KEYPAD     *(vu16*)0x4000130		//Player 1 Input
#define REG_P1CNT      *(vu16*)0x4000132		//Player 1 Input Interrupt Status
#define REG_R          *(u16*)0x4000134		//???
#define REG_HS_CTRL    *(u16*)0x4000140		//???
#define REG_JOYRE      *(u32*)0x4000150		//???
#define REG_JOYRE_L    *(u16*)0x4000150		//???
#define REG_JOYRE_H    *(u16*)0x4000152		//???
#define REG_JOYTR      *(u32*)0x4000154		//???
#define REG_JOYTR_L    *(u16*)0x4000154		//???
#define REG_JOYTR_H    *(u16*)0x4000156		//???
#define REG_JSTAT      *(u32*)0x4000158		//???
#define REG_JSTAT_L    *(u16*)0x4000158		//???
#define REG_JSTAT_H    *(u16*)0x400015A		//???
#define REG_IE         *(u16*)0x4000200		//Interrupt Enable
#define REG_IF         *(vu16*)0x4000202		//Interrupt Flags
#define REG_WSCNT      *(u16*)0x4000204		//???
#define REG_IME        *(u16*)0x4000208		//Interrupt Master Enable
#define REG_PAUSE      *(u16*)0x4000300		//Pause

#define MULTIBOOT_NCHILD 3              // Maximum number of slaves
#define MULTIBOOT_HEADER_SIZE 0xc0      // Header size
#define MULTIBOOT_SEND_SIZE_MIN 0x100   // Minimum transmission size
#define MULTIBOOT_SEND_SIZE_MAX 0x40000 // Maximum transmission size
#define MULTIBOOT_ERROR_04                0x04
#define MULTIBOOT_ERROR_08                0x08
#define MULTIBOOT_ERROR_0c                0x0c
#define MULTIBOOT_ERROR_40                0x40
#define MULTIBOOT_ERROR_44                0x44
#define MULTIBOOT_ERROR_48                0x48
#define MULTIBOOT_ERROR_4c                0x4c
#define MULTIBOOT_ERROR_80                0x80
#define MULTIBOOT_ERROR_84                0x84
#define MULTIBOOT_ERROR_88                0x88
#define MULTIBOOT_ERROR_8c                0x8c
#define MULTIBOOT_ERROR_NO_PROBE_TARGET   0x50
#define MULTIBOOT_ERROR_NO_DLREADY        0x60
#define MULTIBOOT_ERROR_BOOT_FAILURE      0x70
#define MULTIBOOT_ERROR_HANDSHAKE_FAILURE 0x71

#define MODE_0 0x0
#define MODE_1 0x1
#define MODE_2 0x2
#define MODE_3 0x3
#define MODE_4 0x4
#define MODE_5 0x5

#define BACKBUFFER 0x10
#define H_BLANK_OAM 0x20 

#define OBJ_MAP_2D 0x0
#define OBJ_MAP_1D 0x40

#define FORCE_BLANK 0x80 //Makes the screen white

#define BG0_ENABLE 0x100
#define BG1_ENABLE 0x200 
#define BG2_ENABLE 0x400
#define BG3_ENABLE 0x800
#define OBJ_ENABLE 0x1000 
#define BG_MOSAIC_ENABLE		0x40
#define MOS_BG_H(x)					(x)
#define MOS_BG_V(x)					(x<<4)
#define MOS_OBJ_H(x)				(x<<8)
#define MOS_OBJ_V(x)				(x<<12)

#define WIN1_ENABLE 0x2000 
#define WIN2_ENABLE 0x4000
#define WINOBJ_ENABLE 0x8000

#define  fixedfont_WIDTH   128
#define  fixedfont_HEIGHT  128
#define SET_MOSAIC(bh,bv,oh,ov)		REG_MOSAIC = ((bh)+(bv<<4)+(oh<<8)+(ov<<12))

#define KEY_A 1
#define KEY_B 2
#define KEY_SELECT 4
#define KEY_START 8
#define KEY_RIGHT 16
#define KEY_LEFT 32
#define KEY_UP 64
#define KEY_DOWN 128
#define KEY_R 256
#define KEY_L 512
#define KEY_ALL 0x03FF

#define KEYS        *(volatile u16*)0x04000130

#define keyDown(k)  (~KEYS & k)
#define KEY_ANY_PRESSED (keyDown(KEY_A))OR(keyDown(KEY_B))OR(keyDown(KEY_L))OR(keyDown(KEY_R))OR(keyDown(KEY_SELECT))OR(keyDown(KEY_START))OR(keyDown(KEY_UP))OR(keyDown(KEY_DOWN))OR(keyDown(KEY_LEFT))OR(keyDown(KEY_RIGHT))


#define WIN_H(r, l)		(r | l<<8) //calculates REG_WINxH value, r=right coor, l=left coor
#define WIN_V(b, t)		(b | t<<8) //calculates REG_WINxV value, b=bottom coor, t=top coor

#define	IWRAM		0x03000000
#define	EWRAM		0x02000000
#define	EWRAM_END	0x02040000
#define	SRAM		0x0E000000
#define	REG_BASE	0x04000000
#define	VRAM		0x06000000
#define	REG_BLDALPHA	*((vu16 *)(REG_BASE + 0x52))
#define ROM    ((u8 *)0x08000000)   /* up to 32 megabytes */

/*Winodws*/
#define WIN0_ENABLE      0x2000 
#define WINOBJ_ENABLE    0x8000
#define RIGHT(n)    (n)
#define LEFT(n)     (n) << 8
#define BOTTOM(n)   (n)
#define TOP(n)      (n) << 8

// définition de l'intérieur des fenêtres
#define WIN0_BG0      1
#define WIN0_BG1      2
#define WIN0_BG2      4
#define WIN0_BG3      8
#define WIN0_SPRITES  16
#define WIN0_BLENDS   32
#define WIN1_BG0      256
#define WIN1_BG1      512
#define WIN1_BG2      1024
#define WIN1_BG3      2048
#define WIN1_SPRITES  4096
#define WIN1_BLENDS   8192

// définition de l'extérieur des fenêtres
#define WINOUT_BG0        1
#define WINOUT_BG1        2
#define WINOUT_BG2        4
#define WINOUT_BG3        8
#define WINOUT_SPRITES    16
#define WINOUT_BLENDS     32
#define WINOBJ_BG0        256
#define WINOBJ_BG1        512
#define WINOBJ_BG2        1024
#define WINOBJ_BG3        2048
#define WINOBJ_SPRITES    4096
#define WINOBJ_BLENDS     8192

// rotations
#define PI                    3.14159
#define RADIAN(n)             (((float) n)/ (float) 180 * PI)

#define BLD_BG0			0x0001	//!< Blend bg 0
#define BLD_BG1			0x0002	//!< Blend bg 1
#define BLD_BG2			0x0004	//!< Blend bg 2
#define BLD_BG3			0x0008	//!< Blend bg 3
#define BLD_OBJ			0x0010	//!< Blend objects
#define BLD_ALL			0x001F	//!< All layers (except backdrop)
#define BLD_BACKDROP	0x0020	//!< Blend backdrop
#define BLD_OFF				 0	//!< Blend mode is off
#define BLD_STD			0x0040	//!< Normal alpha blend (with REG_EV)
#define BLD_WHITE		*(u16*)0x0080	//!< Fade to white (with REG_Y)
#define BLD_BLACK		*(u16*)0x00C0	//!< Fade to black (with REG_Y)

#define BLD_TOP_MASK	0x003F
#define BLD_TOP_SHIFT		 0
#define BLD_TOP(n)		((n)<<BLD_TOP_SHIFT)

#define BLD_MODE_MASK	0x00C0
#define BLD_MODE_SHIFT		 6
#define BLD_MODE(n)		((n)<<BLD_MODE_SHIFT)

#define BLD_BOT_MASK	0x3F00
#define BLD_BOT_SHIFT		 8
#define BLD_BOT(n)		((n)<<BLD_BOT_SHIFT)

#define BLD_BUILD(top, bot, mode)		\
	( (((bot)&63)<<8) | (((mode)&3)<<6) | ((top)&63) )

//\}

//attribute0 #defines
#define ROTATION_FLAG		0x100
#define SIZE_DOUBLE			0x200
#define MODE_NORMAL			0x0
#define MODE_TRANSPARENT	0x400
#define MODE_WINDOWED		0x800
#define MOSAIC				0x1000
#define COLOR_16			0x0000
#define COLOR_256			0x2000
#define SQUARE				0x0
#define WIDE                  		0x4000
#define TALL                  		0x8000

//attribute1 #defines
#define ROTDATA(n)			((n)<<9)
#define HORIZONTAL_FLIP		0x1000
#define VERTICAL_FLIP		0x2000
#define SIZE_8				0x0
#define SIZE_16				0x4000
#define SIZE_32				0x8000
#define SIZE_64				0xC000               


//atrribute2 #defines
#define PRIORITY(n)	        ((n)<<10)
#define PALETTE(n)			((n)<<12)


// --------------------------------------------------------------------
// GLOBALS 
// --------------------------------------------------------------------
// --------------------------------------------------------------------
// PROTOTYPES 
// --------------------------------------------------------------------
// --------------------------------------------------------------------
// INLINES 
// --------------------------------------------------------------------


#ifndef RGB_GET_R_VALUE
 #define RGB_GET_R_VALUE(rgb)    ((rgb & 0x001f) << 3)
#endif
#ifndef RGB_GET_G_VALUE
 #define RGB_GET_G_VALUE(rgb)    (((rgb >> 5) & 0x001f) << 3)
#endif
#ifndef RGB_GET_B_VALUE
 #define RGB_GET_B_VALUE(rgb)    (((rgb >> 10) & 0x001f) << 3)
#endif

#define ACCESS_8(location)		*(volatile u8 *)  (location)
#define ACCESS_16(location)		*(volatile u16 *) (location)
#define ACCESS_32(location)		*(volatile u32 *) (location)
#define MEM_PAL_COL_PTR(x)		 (u16*) (0x05000000+(x<<1))	// Palette color pointer
#define RGB(r,g,b) ((((b)>>3)<<10)+(((g)>>3)<<5)+((r)>>3))

#define fBG "bg"
#define fOBJ "obj"

#define INT_VBLANK    		0x0001
#define INT_HBLANK		0x0002	
#define INT_VCOUNT		0x0004	
#define INT_TIMMER0		0x0008
#define INT_TIMMER1		0x0010
#define INT_TIMMER2		0x0020	
#define INT_TIMMER3		0x0040
#define INT_COMUNICATION	0x0080
#define INT_DMA0		0x0100
#define INT_DMA1		0x0200
#define INT_DMA2		0x0400
#define INT_DMA3		0x0800
#define INT_KEYBOARD		0x1000
#define INT_CART		0x2000
#define INT_ALL			0x4000

#define DMA_ENABLE				0x80000000
#define DMA_INTERUPT_ENABLE			0x40000000
#define DMA_TIMEING_IMMEDIATE			0x00000000
#define DMA_TIMEING_VBLANK			0x10000000
#define DMA_TIMEING_HBLANK			0x20000000
#define DMA_TIMEING_SYNC_TO_DISPLAY		0x30000000
#define DMA_16					0x00000000
#define DMA_32					0x04000000
#define DMA_REPEATE				0x02000000
#define DMA_SOURCE_INCREMENT			0x00000000
#define DMA_SOURCE_DECREMENT			0x00800000
#define DMA_SOURCE_FIXED			0x01000000
#define DMA_DEST_INCREMENT			0x00000000
#define DMA_DEST_DECREMENT			0x00200000
#define DMA_DEST_FIXED				0x00400000
#define DMA_DEST_RELOAD				0x00600000
#define hrt_SetFXMode(mode) REG_BLDMOD = mode
#define hrt_SetFXLevel(lvl) REG_COLEY = lvl
#define WRAPAROUND		0x2000
#define CHAR_BASE(n)		n<<2
#define BG_COLOR_256		0x80

typedef struct tagOAMEntry
{

	u16 attribute0;
	u16 attribute1;
	u16 attribute2;
	u16 attribute3;

}OAMEntry, *pOAMEntry;

//create the array of sprites (128 is the maximum)

typedef struct
{

	u16 x;
	u16 y;
	u16 OAMSpriteNum;
	u16 *SpriteData;

}Sprite, *pSprite;

typedef struct tagRotData
{

	u16 filler1[3];
	u16 pa;
	u16 filler2[3];
	u16 pb;
	u16 filler3[3];
	u16 pc;
	u16 filler4[3];
	u16 pd;

}RotData, *pRotData;

OAMEntry sprites[128];

//create the rotation and scaling array (overlaps the OAMEntry array memory)

#define DMA_32NOW              DMA_ENABLE | DMA_TIMEING_IMMEDIATE |DMA_32 
#define DMA_16NOW	   DMA_ENABLE | DMA_TIMEING_IMMEDIATE |DMA_16 

#define swi_call(x)   asm volatile("swi\t"#x"<<16" ::: "r0", "r1", "r2", "r3")

typedef struct BG
{
	int x,y,n,angle,x_size,y_size;
}BG;
typedef struct                                                                  //sound variables
{
 const unsigned char* song;                                                     //pointer to sound's data array	
 int frequency;                                                                 //sound frequency
 int tic;                                                                       //increase up to sounds end
 int end;                                                                       //end of sound
}sounds; sounds sound[25];
const double SIN[360];
const double COS[360];
const double RAD[360];
const unsigned char font_matrix[3968];

void hrt_EditBG(BG *bg);
void hrt_Diff8bitUnFilterWram(u32 source, u32 dest);
void hrt_Diff8bitUnFilterVram(u32 source, u32 dest);
void hrt_Diff16bitUnFilter(u32 source, u32 dest);
void hrt_HuffUnComp(u32 source, u32 dest);
void hrt_LZ77UnCompWRAM(u32 source, u32 dest);
void hrt_LZ77UnCompVRAM(u32 source, u32 dest);
void hrt_RLUnCompVram(u32 source, u32 dest);
void hrt_initsound16(int a, int f, int e, u16* d);
void htr_initsound32(int a, int f, int e, u32* d);
void hrt_initsound8(int a, int f, int e, u8* d);
void hrt_playSoundUntilDone(int s, int end);
void hrt_playSound(int s);
void hrt_CopyOAM();
void hrt_CreateOBJ(int spr, int stx, int sty, int size, int affine, int hflip, int vflip, int shape, int dblsize, int mosaic, int pal, int color, int mode, int offset);
void hrt_updateSprite(int spr,int offset,int sprsize, int ani);
void hrt_loadOBJPal(unsigned int * pal, int size);
void hrt_loadOBJGFX(unsigned int * gfx,int size);
void hrt_AffineOBJ(int rotDataIndex, s32 angle, s32 x_scale,s32 y_scale);
void hrt_SetOBJXY(OAMEntry* sp, int x, int y);
void hrt_resetOffset(void);
void hrt_cloneOBJ(int ospr, int nspr);
void hrt_glideSpritetoPos(int spr, int x1, int y1, int x2, int y2, u32 frames);
void hrt_SaveInt(u16 offset, int value);
int hrt_LoadInt(u16 offset);
void hrt_DrawChar(int mode, int left, int top, char letter, unsigned short color1, unsigned short color2);
void hrt_Print(int mode, int left, int top, char *str, unsigned short color1, unsigned short color2);
void hrt_Sleep(double i);
void hrt_SleepF(u32 frames);
void hrt_SleepQ(int i);
void hrt_DrawPixel(int Mode, int x, int y, unsigned short color);
int hrt_GetPixel(u8 mode, int x, int y);
void hrt_CycleBGPalette(void);
void hrt_loadBGMap(u16* data, int length);
void hrt_loadBGPal(u16* data);
void hrt_InvertBGPalette(void);
void hrt_drawRect(int r, int c, int width, int height, u16 color, int mode);
void hrt_fillscreen(u16 color, int mode);
void hrt_DrawLine(int x1, int y1, int x2, int y2, unsigned short color, int mode);
void hrt_DrawCircle(int xCenter, int yCenter, int radius, u16 color, int mode);
void hrt_scanlines(u16 color, float time, int mode);
void hrt_leftwipe(u16 color, float time, int mode);
void hrt_rightwipe(u16 color, float time, int mode);
void hrt_topwipe(u16 color, float time, int mode);
void hrt_bottomwipe(u16 color, float time, int mode);
void hrt_circlewipe(u16 color, float time, int mode);
void hrt_coolscanlines(u16 color, float time, int mode);
int hrt_GetBGPalEntry(int slot);
int hrt_GetOBJPalEntry(int slot);
void hrt_SetBGPalEntry(int slot, u16 color);
void hrt_SetOBJPalEntry(int slot, u16 color);
void hrt_loadBGTiles(u16* data, int length);
void hrt_ColdReset();
void hrt_SoftReset();
void hrt_FadeOut(u32 frames);
void hrt_FadeIn(u32 frames);
void hrt_FadeOutWhite(u32 frames);
void hrt_FadeInWhite(u32 frames);
extern u32 hrt_GetBiosChecksum();
void hrt_WaitForVblank();
void hrt_Init();