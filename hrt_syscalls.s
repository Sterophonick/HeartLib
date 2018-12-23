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
.arm

hrt_JumpExecutionToAddress:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  bx r0

hrt_Crash:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  mov r0,#0x40000000
  mov r14,pc
  bx r0
  bx lr
  
hrt_Sqrt:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne sqrtexit
  swi 8 << 16
  
sqrtexit:
  bx lr 

hrt_RegisterRamReset:
  ldr r8, .L2
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  swi 1 << 16
  bx lr

hrt_ArcTan:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne arctexit
  swi 9 << 16
  
arctexit:
  bx lr 

hrt_ArcTan2:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne arct2exit
  swi 10 << 16
  
arct2exit:
  bx lr 

hrt_DivMod:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divmodexit
  swi 6 << 16
  mov r0, r1
  
divmodexit:
  bx lr 

hrt_DivAbs:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divabsexit
  swi 6 << 16
  mov	r0, r3

divabsexit:
  bx lr 

hrt_Div:	
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divexit
  swi	6 << 16
	
divexit:
  bx lr 
  
hrt_DivArm:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divarmexit
  swi	7 << 16
	
divarmexit:
  bx lr 

hrt_DivArmMod:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divarmmodexit
  swi	7 << 16
  mov	r0, r1
 
divarmmodexit:
  bx lr 


hrt_DivArmAbs:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divarmmodexit
  swi	7 << 16
	mov	r0, r3
	
divarmmodeexit:
  bx	lr
  
hrt_SoundDriverMode:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  swi		27 << 16
  bx		lr
  
hrt_SoundDriverInit:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  swi		26 << 16
  bx		lr
  
hrt_MidiKey2Freq:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne mk2fexit
  swi 31<< 16
  
mk2fexit:
	bx lr
	
hrt_SoundGetJumpList:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  swi		42 << 16
  bx		lr
  
hrt_CustomHalt:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  swi		39 << 16
  bx		lr
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


hrt_start:
  .word __hrt_system
  
 .LC0:
        .ascii  "This ROM was created using HeartLib.\000"
.L2:
        .word   .LC0
