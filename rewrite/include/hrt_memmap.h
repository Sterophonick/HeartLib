//All GBA Registers - Copied from GBATek
#define REG_DISPCNT		*(u16*)0x04000000 //Display Control
#define REG_UNKNOWN0	*(u16*)0x04000002 //Undocumented - Green Swap?
#define REG_DISPSTAT	*(u16*)0x04000004 //General LCD Status
#define REG_VCOUNT		*(vu16*)0x04000006 //Vertical Counter
#define REG_BG0CNT		*(u16*)0x04000008 //BG0 Control
#define REG_BG1CNT		*(u16*)0x0400000A //BG1 Control
#define REG_BG2CNT		*(u16*)0x0400000C //BG2 Control
#define REG_BG3CNT		*(u16*)0x0400000E //BG3 Control
#define REG_BG0HOFS		*(u16*)0x04000010 //BG0 X-Offset
#define REG_BG0VOFS		*(u16*)0x04000012 //BG0 Y-Offset
#define REG_BG1HOFS		*(u16*)0x04000014 //BG1 X-Offset
#define REG_BG1VOFS		*(u16*)0x04000016 //BG1 Y-Offset
#define REG_BG2HOFS		*(u16*)0x04000018 //BG2 X-Offset
#define REG_BG2VOFS		*(u16*)0x0400001A //BG2 Y-Offset
#define REG_BG3HOFS		*(u16*)0x0400001C //BG3 X-Offset
#define REG_BG3VOFS		*(u16*)0x0400001E //BG3 Y-Offset
#define REG_BG2PA		*(u16*)0x04000020 //BG2 Rotation/Scaling Paramater A
#define REG_BG2PB		*(u16*)0x04000022 //BG2 Rotation/Scaling Paramater B
#define REG_BG2PC		*(u16*)0x04000024 //BG2 Rotation/Scaling Paramater C
#define REG_BG2PD		*(u16*)0x04000026 //BG2 Rotation/Scaling Paramater D
#define REG_BG2X		*(u32*)0x04000028 //BG2 Reference Point X-Coordinate
#define REG_BG2Y		*(u32*)0x0400002C //BG2 Reference Point Y-Coordinate
#define REG_BG3PA		*(u16*)0x04000030 //BG3 Rotation/Scaling Paramater A
#define REG_BG3PB		*(u16*)0x04000032 //BG3 Rotation/Scaling Paramater B
#define REG_BG3PC		*(u16*)0x04000034 //BG3 Rotation/Scaling Paramater C
#define REG_BG3PD		*(u16*)0x04000036 //BG3 Rotation/Scaling Paramater D
#define REG_BG3X		*(u32*)0x04000038 //BG3 Reference Point X-Coordinate
#define REG_BG3Y		*(u32*)0x0400003C //BG3 Reference Point Y-Coordinate
#define REG_WIN0H		*(u16*)0x04000040 //Window 0 Horizontal Dimensions
#define REG_WIN1H		*(u16*)0x04000042 //Window 1 Horizontal Dimensions
#define REG_WIN0V		*(u16*)0x04000044 //Window 0 Vertical Dimensions
#define REG_WIN1V		*(u16*)0x04000046 //Window 1 Vertical Dimensions
#define REG_WININ		*(u16*)0x04000048 //Inside of Window 0 and 1
#define REG_WINOUT		*(u16*)0x0400004A //Inside of OBJ Window and Outside of Windows
#define REG_MOSAIC		*(u16*)0x0400004C //Mosaic Size
#define REG_UNKNOWN1	*(u16*)0x0400004E //Not Used
#define REG_BLDCNT		*(u16*)0x04000050 //Color Special Effects Selection
#define REG_BLDALPHA_H	*(u8*)0x04000052 //Alpha Blending Coefficient High
#define REG_BLDALPHA_L	*(u8*)0x04000053 //Alpha Blending Coefficient Low
#define REG_BLDY		*(u16*)0x04000054 //Brightness Coefficient
#define REG_UNKNOWN2	*(u16*)0x04000056 //Not Used
#define REG_SOUND1CNT_L *(u16*)0x04000060 //Channel 1 Sweep Register
#define REG_SOUND1CNT_H *(u16*)0x04000062 //Channel 1 Duty/Length/Envelope
#define REG_SOUND1CNT_X *(u16*)0x04000064 //Channel 1 Frequency / Control
#define REG_UNKNOWN3	*(u16*)0x04000066 //Not Used
#define REG_SOUND2CNT_L *(u16*)0x04000068 //Channel 2 Duty/Length/Envelope
#define REG_UNKNOWN4	*(u16*)0x0400006A //Not Used
#define REG_SOUND2CNT_H *(u16*)0x0400006C //Channel 2 Frequency/Control
#define REG_UNKNOWN24	*(u16*)0x0400006E //Not Used
#define REG_SOUND3CNT_L *(u16*)0x04000070 //Channel 3 Stop/Wave RAM Select
#define REG_SOUND3CNT_H *(u16*)0x04000072 //Channel 3 Length/Volume
#define REG_SOUND3CNT_X *(u16*)0x04000074 //Channel 3 Frequency / Control
#define REG_UNKNOWN5	*(u16*)0x04000076 //Not Used
#define REG_SOUND4CNT_L *(u16*)0x04000078 //Channel 4 Length/Envelope
#define REG_UNKNOWN6	*(u16*)0x0400007A //Not Used
#define REG_SOUND4CNT_H *(u16*)0x0400007C //Channel 4 Frequency/Control
#define REG_UNKNOWN7	*(u16*)0x0400007E //Not Used
#define REG_SOUNDCNT_L  *(u16*)0x04000080 //Control Stero/Volume/Enable
#define REG_SOUNDCNT_H  *(u16*)0x04000082 //Control Mixing/DMA Control
#define REG_SOUNDCNT_X  *(u16*)0x04000084 //Control Sound on/off
#define REG_UNKNOWN8	*(u16*)0x04000086 //Not Used
#define REG_SOUNDBIAS	*(u16*)0x04000088 //Sound PWM Control ****CONTROLLED BY BIOS****
#define REG_UNKNOWN9	*(u16*)0x0400008A //Not Used
#define REG_SGWR0_L		*(vu16*)0x4000090		//???
#define REG_SGWR0_H		*(vu16*)0x4000092		//???
#define REG_WAVE_RAM1	*(vu32*)0x4000094		//???
#define REG_SGWR1_L		*(vu16*)0x4000094		//???
#define REG_SGWR1_H		*(vu16*)0x4000096		//???
#define REG_WAVE_RAM2	*(vu32*)0x4000098		//???
#define REG_SGWR2_L		*(vu16*)0x4000098		//???
#define REG_SGWR2_H		*(vu16*)0x400009A		//???
#define REG_WAVE_RAM3	*(vu32*)0x400009C		//???
#define REG_SGWR3_L		*(vu16*)0x400009C		//???
#define REG_SGWR3_H		*(vu16*)0x400009E		//???
#define REG_FIFO_A      *(vu32*)0x040000A0 //Channel A FIFO, Data 0-3
#define REG_FIFO_B      *(vu32*)0x040000A4 //Channel B FIFO, Data 0-3
#define REG_UNKNOWN10	*(u16*)0x040000A8 //Not Used
#define REG_DMA0SAD     *(u32*)0x40000B0	//DMA0 Source Address
#define REG_DMA0DAD     *(u32*)0x40000B4	//DMA0 Destination Address
#define REG_DMA0CNT     *(u32*)0x40000B8	//DMA0 Control (Amount)
#define REG_DMA0CNT_L   *(u16*)0x40000B8	//DMA0 Control Low Value
#define REG_DMA0CNT_H   *(u16*)0x40000BA	//DMA0 Control High Value
#define REG_DMA1SAD     *(u32*)0x40000BC	//DMA1 Source Address
#define REG_DMA1DAD     *(u32*)0x40000C0	//DMA1 Desination Address
#define REG_DMA1CNT     *(u32*)0x40000C4	//DMA1 Control (Amount)
#define REG_DMA1CNT_L   *(u16*)0x40000C4	//DMA1 Control Low Value
#define REG_DMA1CNT_H   *(u16*)0x40000C6	//DMA1 Control High Value
#define REG_DMA2SAD     *(u32*)0x40000C8	//DMA2 Source Address
#define REG_DMA2DAD     *(u32*)0x40000CC	//DMA2 Destination Address
#define REG_DMA2CNT     *(u32*)0x40000D0	//DMA2 Control (Amount)
#define REG_DMA2CNT_L   *(u16*)0x40000D0	//DMA2 Control Low Value
#define REG_DMA2CNT_H   *(u16*)0x40000D2	//DMA2 Control High Value
#define REG_DMA3SAD     *(u32*)0x40000D4	//DMA3 Source Address
#define REG_DMA3DAD     *(u32*)0x40000D8	//DMA3 Destination Address
#define REG_DMA3CNT     *(u32*)0x40000DC	//DMA3 Control (Amount)
#define REG_DMA3CNT_L   *(u16*)0x40000DC	//DMA3 Control Low Value
#define REG_DMA3CNT_H   *(u16*)0x40000DE	//DMA3 Control High Value
#define REG_UNKNOWN11	*(u16*)0x040000E0 // Not Used
#define REG_TM0CNT_L	*(u16*)0x04000100 //Timer 0 Counter/Reload
#define REG_TM0CNT_H	*(u16*)0x04000102 //Timer 0 Control
#define REG_TM1CNT_L	*(u16*)0x04000104 //Timer 1 Counter/Reload
#define REG_TM1CNT_H	*(u16*)0x04000106 //Timer 1 Control
#define REG_TM2CNT_L	*(u16*)0x04000108 //Timer 2 Counter/Reload
#define REG_TM2CNT_H	*(u16*)0x0400010A //Timer 2 Control
#define REG_TM3CNT_L	*(u16*)0x0400010C //Timer 3 Counter/Reload
#define REG_TM3CNT_H	*(u16*)0x0400010E //Timer 3 Control
#define REG_UNKNOWN12	*(u16*)0x04000110 // Not Used
#define REG_SIODATA32	*(u32*)0x04000120
#define REG_SIOMULTI0	*(u16*)0x04000120 //Data 0
#define REG_SIOMULTI1	*(u16*)0x04000122 //Data 1
#define REG_SIOMULTI2	*(u16*)0x04000124 //Data 2
#define REG_SIOMULTI3	*(u16*)0x04000126 //Data 3
#define REG_SIOCNT		*(u16*)0x04000128 //SIO Control Register
#define REG_SIOMLT_SEND *(u16*)0x0400012A //SIO Data
#define REG_SIODATA8	*(u16*)0x0400012A //SIO Data
#define REG_UNKNOWN13	*(u16*)0x0400012C //Not Used
#define REG_KEYINPUT	*(u16*)0x04000130 //Key Status
#define REG_KEYCNT		*(u16*)0x04000132 //Key Interrupt Control
#define REG_RCNT		*(u16*)0x04000134 //SIO Mode Select/General Purpose Data
#define REG_IR			*(u16*)0x04000136 //Ancient - Infrared Register (Prototypes Only)
#define REG_UNKNOWN14   *(u16*)0x04000138 //Not Used
#define REG_JOYCNT		*(u16*)0x04000140 //SIO Joy Bus Control
#define REG_UNKNOWN15	*(u16*)0x04000142 //Not Used
#define REG_JOY_RECV	*(u32*)0x04000150 //SIO JOY Bus Recieve Data
#define REG_JOY_TRANS	*(u32*)0x04000154 //SIO JOY Bus Transmit Data
#define REG_JOYSTAT		*(u16*)0x04000158 //SIO JOY Bus Recieve Status
#define REG_UNKNOWN16	*(u16*)0x0400015A //Not Used
#define REG_IE			*(u16*)0x04000200 //Interrupt Enable Register
#define REG_IF			*(u16*)0x04000202 //Interrupt Request Flags / IRQ Acknowledge
#define REG_WAITCNT		*(u16*)0x04000204 //Game Pak Waitstate Control
#define REG_UNKNOWN17	*(u16*)0x04000206 //Not Used
#define REG_IME			*(u16*)0x04000208 //Interrupt Master Enable Register
#define REG_UNKNOWN18	*(u16*)0x0400020A //Not Used
#define REG_POSTFLG		*(u8*)0x04000300 //Undocumented - Post Boot Flag
#define REG_HALTCNT		*(u8*)0x04000301 //Undocumented - Power Down Control
#define REG_UNKNOWN19	*(u16*)0x04000302 //Not Used
#define REG_UNKNOWN20	*(u16*)0x04000410 //Undocumented - Purpose Unknown / Bug ??? 0FFh
#define REG_UNKNOWN21	*(u16*)0x04000411 //Not Used
#define REG_UNKNOWN22	*(u32*)0x04000800 //Undocumented - Internal Memory Control(R/W)
#define REG_UNKNOWN23	*(u16*)0x04000804 //Not Used
#define REG_POGOFILEPTR *(u8**)0x0203FBFC //Pogoshell File Pointer

