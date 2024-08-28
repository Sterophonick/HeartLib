#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_BIOS
#define HRT_BIOS

#include <hrt_types.h>

//Structs
typedef struct t_BGAffineSource {
     s32 x;				/*!< Original data's center X coordinate (8bit fractional portion)			*/
     s32 y;				/*!< Original data's center Y coordinate (8bit fractional portion)			*/
     s16 tX;			/*!< Display's center X coordinate																			*/
     s16 tY;			/*!< Display's center Y coordinate																			*/
     s16 sX;			/*!< Scaling ratio in X direction (8bit fractional portion)							*/
     s16 sY;			/*!< Scaling ratio in Y direction (8bit fractional portion)							*/
     u16 theta;		/*!< Angle of rotation (8bit fractional portion) Effective Range 0-FFFF	*/
} BGAffineSource;

typedef struct t_BGAffineDest {
     s16 pa;		/*!< Difference in X coordinate along same line	*/
     s16 pb;		/*!< Difference in X coordinate along next line	*/
     s16 pc;		/*!< Difference in Y coordinate along same line	*/
     s16 pd;		/*!< Difference in Y coordinate along next line	*/
     s32 x;			/*!< Start X coordinate													*/
     s32 y;			/*!< Start Y coordinate													*/
} BGAffineDest;

typedef struct t_ObjAffineSource {
     s16 sX;			/*!< Scaling ratio in X direction (8bit fractional portion)							*/
     s16 sY;			/*!< Scaling ratio in Y direction (8bit fractional portion)							*/
     u16 theta;		/*!< Angle of rotation (8bit fractional portion) Effective Range 0-FFFF	*/
} ObjAffineSource;

typedef struct t_ObjAffineDest {
     s16 pa;		/*!< Difference in X coordinate along same line */
     s16 pb;		/*!< Difference in X coordinate along next line */
     s16 pc;		/*!< Difference in Y coordinate along same line */
     s16 pd;		/*!< Difference in Y coordinate along next line */
} ObjAffineDest;

typedef struct {
	u16 SrcNum;				// Source Data Byte Size
	u8  SrcBitNum;			// 1 Source Data Bit Number
	u8  DestBitNum;			// 1 Destination Data Bit Number
	u32 DestOffset:31;		// Number added to Source Data
	u32 DestOffset0_On:1;	// Flag to add/not add Offset to 0 Data
} BUP; //BitUnPack

typedef struct {
	u16 type;
	u16 stat;
	u32 freq;
	u32 loop;
	u32 size;
	s8 data[1];
} WaveData;

typedef struct {
	u8 Status;
	u8 reserved1;
	u8 RightVol;
	u8 LeftVol;
	u8 Attack;
	u8 Decay;
	u8 Sustain;
	u8 Release;
	u8 reserved2[24];
	u32 fr;
	WaveData *wp;
	u32 reserved3[6];
} SoundChannel;

typedef struct {
	u32 ident;
	vu8 DmaCount;
	u8 reverb;
	u8 maxchn;
	u8 masvol;
	u8 freq;
	u8 mode;
	u8 r2[6];
	u32 r3[16];
	SoundChannel vchn[12];
	s8 pcmbuf[1584*2];
} SoundArea;

typedef	struct {
	u32	reserved1[5];
	u8	handshake_data;
	u8	padding;
	u16	handshake_timeout;
	u8	probe_count;
	u8	client_data[3];
	u8	palette_data;
	u8	response_bit;
	u8	client_bit;
	u8	reserved2;
	u8	*boot_srcp;
	u8	*boot_endp;
	u8	*masterp;
	u8	*reserved3[3];
	u32	system_work2[4];
	u8	sendflag;
	u8	probe_target_bit;
	u8	check_wait;
	u8	server_type;
} MultiBootParam;

enum MULTIBOOT_MODES { MODE32_NORMAL, MODE16_MULTI, MODE32_2MHZ};

//Macros + Helpers
#define RESTART_ROM 0
#define RESTART_RAM 1

#if	defined	( __thumb__ )
#define	hrt_SystemCall(Number)	 __asm ("SWI	  "#Number"\n" :::  "r0", "r1", "r2", "r3")
#else
#define	hrt_SystemCall(Number)	 __asm ("SWI	  "#Number"	<< 16\n" :::"r0", "r1", "r2", "r3")
#endif

#define BIOS_CHK_GBA 0xBAAE187F //GBA / GBA SP BIOS Checksum
#define BIOS_CHK_NDS 0xBAAE1880 //3DS / NDS GBA BIOS Checksum
// #define BIOS_CHK_PRO


//Functions
HEART_API void hrt_SoftReset(u8 RestartFlag);
HEART_API void hrt_RegisterRamReset(u8 ResetFlag);
HEART_API void hrt_Halt(void); //SWI 2
HEART_API void hrt_Stop(void); //SWI 3
HEART_API void hrt_IntrWait(u32 ReturnFlag, u32 IntFlag); //Waits for an Interrupt
HEART_API void hrt_VBlankIntrWait(void); //Turns off CPU until frame is finished drawing. Must have IRQ_VBLANK enabled.
HEART_API s32  hrt_Div(s32 Number, s32 Divisor); //Performs signed integer division
HEART_API s32  hrt_DivMod(s32 Number, s32 Divisor); //Performs signed integer division, returns modulus
HEART_API u32  hrt_DivAbs(s32 Number, s32 Divisor); //Performs signed integer division, returns unsigned
HEART_API s32  hrt_DivArm(s32 Divisor, s32 Number);  //SWI 0x07
HEART_API s32  hrt_DivArmMod(s32 Divisor, s32 Number); //SWI 0x07
HEART_API u32  hrt_DivArmAbs(s32 Divisor, s32 Number); //SWI 0x07
HEART_API u16  hrt_Sqrt(u32 X); //Calculates unsigned integer square root
HEART_API s16  hrt_ArcTan(s16 Tan); //Calculates signed integer square root
HEART_API u16  hrt_ArcTan2(s16 X, s16 Y); //Calculates unsigned square root, use this in most situations
HEART_API void hrt_CpuSet(const void *source, void *dest, u32 mode); //memcpy in units of four or two bytes
HEART_API void hrt_CpuFastSet(const void *source, void *dest, u32 mode); //memcpy in units of 32 bytes
HEART_API u32  hrt_GetBiosChecksum(void); //returns BIOS checksum.
HEART_API void hrt_BgAffineSet(BGAffineSource *source, BGAffineDest *dest, s32 num); //Creates a set of sprite affine data
HEART_API void hrt_ObjAffineSet(ObjAffineSource *source, void *dest, s32 num, s32 offset); //Creates a set of sprite affine data
HEART_API void hrt_BitUnPack(void* source, void* destination, BUP* data); //Bitunpack
HEART_API void hrt_LZ77UnCompWRAM(const void *source, void *dest); //8-bit LZ77 Decompress
HEART_API void hrt_LZ77UnCompVRAM(const void *source, void *dest); //16-bit LZ77 Decompress
HEART_API void hrt_HuffUnComp(const void *source, void *dest); //32-bit Huffman Table decoding
HEART_API void hrt_RLUnCompWRAM(const void *source, void *dest); //8-bit RLE Decompress
HEART_API void hrt_RLUnCompVRAM(const void *source, void *dest); //16-bit RLE Decompress
HEART_API void hrt_Diff8bitUnFilterWRAM(const void *source, void *dest); //8-bit Differential filter decode
HEART_API void hrt_Diff8bitUnFilterVRAM(const void *source, void *dest); //16-bit 8-bit Differential filter decode
HEART_API void hrt_Diff16bitUnFilter(const void *source, void *dest); //16-bit decode of 16-bit differential filter
HEART_API void hrt_SoundDriverInit(SoundArea *sa); //Initializes the BIOS sound driver
HEART_API void hrt_SoundDriverMode(u32 mode); //Set BIOS Sound driver operation mode
HEART_API void hrt_SoundDriverMain(void); //Main of the BIOS sound driver
HEART_API void hrt_SoundDriverVsync(void); //Resets the sound DMA, call this after every 1/60 of a second
HEART_API void hrt_SoundChannelClear(void); //Stops sound and clears the FIFO registers
HEART_API u32  hrt_MidiKey2Freq(WaveData *wa, u8 mk, u8 fp); //Calculates the value of the assignment to ((SoundArea)sa).vchn[x].fr when playing the wave data, wa, with the interval (MIDI KEY) mk and the fine adjustment value (halftones=256) fp. 
HEART_API void hrt_SoundWhatever0(void); //Undocumented - Unknown
HEART_API void hrt_SoundWhatever1(void); //Undocumented - Unknown
HEART_API void hrt_SoundWhatever2(void); //Undocumented - Unknown
HEART_API void hrt_SoundWhatever3(void); //Undocumented - Unknown
HEART_API void hrt_SoundWhatever4(void); //Undocumented - Unknown
HEART_API u32  hrt_MultiBoot(MultiBootParam *mp, u32 mode); //Start uploading program code to slave GBA.
HEART_API void hrt_HardReset(void); //Resets the Console with the GBA Startup Sequence
HEART_API void hrt_CustomHalt(u8 reserved1, u8 reserved2, u8 param); //performs the customhalt SWI
HEART_API void hrt_SoundDriverVSyncOff(void); //Used to stop sound DMA.
HEART_API void hrt_SoundDriverVSyncOn(void); //Restarts the sound DMA.
HEART_API void hrt_SoundGetJumpList(void* dest); //Undocumented - receives pointers to 36 additional sound-related  BIOS functions

#endif

#ifdef __cplusplus
}
#endif
