#ifndef HRT_BIOS
#define HRT_BIOS

//Macros
#if	defined	( __thumb__ )
#define	hrt_SystemCall(Number)	 __asm ("SWI	  "#Number"\n" :::  "r0", "r1", "r2", "r3")
#else
#define	hrt_SystemCall(Number)	 __asm ("SWI	  "#Number"	<< 16\n" :::"r0", "r1", "r2", "r3")
#endif

//Functions
HEART_API void hrt_VblankIntrWait(void);
HEART_API void hrt_SoftReset(void);
HEART_API void hrt_ColdReset(void);
HEART_API void hrt_CpuFastSet(const void *source, void *dest, u32 mode);

#endif