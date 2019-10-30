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