/*****************************************************\
*    								8       8                                            8     8            8  8                                          *
*    								8       8                                            8     8                8                                          *
*    								88888    888       888    8  88    888  8            8  8  88                                   *
*    								8       8  8       8           8  88    8    8     8            8  88    8                                 *
*    								8       8  88888    8888  8             8     8            8  8      8                                 *
*    								8       8  8           8       8  8             8     8            8  8      8                                 *
*    								8       8    8888    8888  8               8    88888  8  8888                                  *
*    																		HeartLib                                                                   *
*    A comprehensive game/app engine for the Nintendo® Game Boy Advance™        *
*    												Licensed under the GNU GPL v3.0                                             *
*                                               View the LICENSE file for details                                         *
*    														2017-2019 Sterophonick                                                    *
*    																	For Tubooboo                                                               *
\*****************************************************/
//Some code was borrowed from HAMLib
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
.global ham_FadePal
.global ham_HexToChar
.global mm_vblank_function
.global mmClearVBlankHandler
.global hrt_ToggleBitInVar
.global hrt_EnableBitInVar
.global hrt_DisableBitInVar
.global __hrt_system
.global ham_PutLine
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
  
 //Comes Directly from an assembly dump of the HAMLib.
ham_FadePal:
	and r0,r0,#255
	lsl r0,r0,#9
	lsl r1,r1,#24
	push {r4-r8, lr}
	add r8,r0,#0x5000000
	mov r4,#0
	asr r0,r1,#24
	.Loop:
		lsl r6,r4,#1
		ldrh r3,[r6,r8]
		and lr,r3,#31
		and r2,r3,#0x7C00
		and r3,r3,#0x3E0
		rsb r1,r0,lr
		lsr r3,r3,#5
		lsl ip,r3,#16
		cmp lr,r0
		lsl r5,r1,#16
		rsb r3,r0,r3
		lsl r1,r2,#16
		asrgt lr,r5,#16
		cmp r0,ip,lsr #16
		lsllt ip,r3,#16
		rsb r7,r0,r2
		cmp r0,r1,lsr #16
		lsllt r1,r7,#16
		add r4,r4,#1
		orr r2,lr,ip,lsr #1
		orr r3,r2,r1,lsr #6
		cmp r4,#255
		strh r3,[r6,r8]
		bls .Loop
		pop {r4-r8,lr}
		bx lr
		
ham_HexToChar:
	push {r4, lr}
	ldr r4,[pc,#92]
	mov lr, #0
	strb lr,[r4,#8]
	strb lr,[r4,#9]
	mov ip,#7
	mov r1,#0xF0000000
	.Loop2:
		lsl r2, ip, #2
		and r3,r0,r1
		lsr r3,r3,r2
		and r3,r3,#15
		cmp r3,#9
		add r2,r3,#55
		lsr r1,r1,#4
		add r3,r3,#48
		strhib	r2, [r4, lr]
		strlsb r3,[r4,lr]
		add r2,lr,#1
		sub r3,ip,#1
		cmp r1,#0
		and ip,r3,#0xFF
		and lr,r2,#0xFF
		bne .Loop2
		ldr r0,[pc,#4]
		pop {r4,lr}
		bx lr
		andeq r0,r0,r0
		
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