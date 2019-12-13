/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
//Various functions that perform various system calls and other miscellaneous assembly functions


.align 4
.pool
.text
.global hrt_Crash
.global hrt_Assert
.global	hrt_Sqrt
.global hrt_RegisterRamReset
.global	hrt_ArcTan
.global	hrt_ArcTan2
.global hrt_DivMod
.global hrt_DivAbs
.global hrt_Div
.global hrt_DivArm
.global hrt_DivArmMod
.global hrt_DivArmAbs
.global	hrt_SoundDriverMode
.global	hrt_SoundDriverInit
.global	hrt_MidiKey2Freq
.global hrt_SoundGetJumpList
.global hrt_SoftReset
.global hrt_CustomHalt
.global hrt_JumpExecutionToAddress
.global _start
.global _exit
.global hrt_CopyOAM
.global sprites
.global VRAM
.global mm_vblank_function
.global mmClearVBlankHandler
.global hrt_ToggleBitInVar
.global hrt_EnableBitInVar
.global hrt_DisableBitInVar
.global __hrt_system
.global hrt_memcpy16
.arm

hrt_JumpExecutionToAddress:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  bx r0

hrt_Crash:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  movne r0,#0x40000000
  bxne r0
  bx lr
  
hrt_Sqrt:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine 8 << 16
  bx lr

hrt_RegisterRamReset:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine 1 << 16
  bx lr

hrt_ArcTan:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine 9 << 16
  bx lr 

hrt_ArcTan2:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine 10 << 16
  bx lr 

hrt_DivMod:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine 6 << 16
  movne r0, r1
  bx lr 

hrt_DivAbs:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine 6 << 16
  movne	r0, r3
  bx lr 

hrt_Div:	
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine	6 << 16
  bx lr 
  
hrt_DivArm:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine	7 << 16
  bx lr 

hrt_DivArmMod:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine	7 << 16
  movne	r0, r1
  bx lr 


hrt_DivArmAbs:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine	7 << 16
  movne	r0, r3
  bx	lr
  
hrt_SoundDriverMode:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine		27 << 16
  bx		lr
  
hrt_SoundDriverInit:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine		26 << 16
  bx		lr
  
hrt_MidiKey2Freq:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine 31<< 16
  bx lr
	
hrt_SoundGetJumpList:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  swine		42 << 16
  bx		lr
  
hrt_CustomHalt:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #1
  swieq		39 << 16
  bx lr
 
_exit:
  b _start

mmClearVBlankHandler:
	push {r0-r1}
	ldr r1,=mm_vblank_function
	mov r0,#0
	str r0,[r1]
	pop {r0-r1}
	bx lr
	
hrt_ToggleBitInVar:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  movne r3, #1
  eorne r0, r0, r3, lsl r1
  bx lr
  
hrt_EnableBitInVar:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  movne r3, #1
  orrne r0, r0, r3, lsl r1
  bx lr
  
hrt_DisableBitInVar:
  ldr r3,=__hrt_system
  ldrb r3, [r3]
  cmp r3, #0
  movne r3, #1
  bicne r0, r0, r3, lsl r1
  bx lr
  
hrt_memcpy32:
	and		r12, r2, #7
	movs	r2, r2, lsr #3
	beq		.Lres_cpy32
	push	{r4-r10}
	@ copy 32byte chunks with 8fold xxmia
.Lmain_cpy32:
		ldmia	r1!, {r3-r10}	
		stmia	r0!, {r3-r10}
		subs	r2, r2, #1
		bhi		.Lmain_cpy32
	pop		{r4-r10}
	@ and the residual 0-7 words
.Lres_cpy32:
		subs	r12, r12, #1
		ldmcsia	r1!, {r3}
		stmcsia	r0!, {r3}
		bhi		.Lres_cpy32
	bx	lr
  
hrt_memcpy16:
  	push	{r4, lr}
	@ under 5 hwords -> std cpy
	cmp		r2, #5
	bls		.Ltail_cpy16
	@ unreconcilable alignment -> std cpy
	@ if (dst^src)&2 -> alignment impossible
	mov		r3, r0
	eor		r3, r1
	lsl		r3, r3, #31		@ (dst^src), bit 1 into carry
	bcs		.Ltail_cpy16	@ (dst^src)&2 : must copy by halfword
	@ src and dst have same alignment -> word align
	lsl		r3, r0, #31
	bcc		.Lmain_cpy16	@ ~src&2 : already word aligned
	@ aligning is necessary: copy 1 hword and align
		ldrh	r3, [r1]
		strh	r3, [r0]
		add		r0, #2
		add		r1, #2
		sub		r2, r2, #1
	@ right, and for the REAL work, we're gonna use memcpy32
.Lmain_cpy16:
	lsl		r4, r2, #31
	lsr		r2, r2, #1
	ldr		r3, =hrt_memcpy32
	bl		.Llong_bl
	@ NOTE: r0,r1 are altered by memcpy32, but in exactly the right 
	@ way, so we can use them as is.
	lsr		r2, r4, #31
	beq		.Lend_cpy16
.Ltail_cpy16:
	sub		r2, #1
	bcc		.Lend_cpy16		@ r2 was 0, bug out
	lsl		r2, r2, #1
.Lres_cpy16:
		ldrh	r3, [r1, r2]
		strh	r3, [r0, r2]
		sub		r2, r2, #2
		bcs		.Lres_cpy16
.Lend_cpy16:
	pop		{r4}
	pop		{r3}
.Llong_bl:
	bx	r3