 .align
 .pool
 .text
.code 16
.global hrt_Crash
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
.arm

hrt_Crash:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  swi 255 << 16
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
  
MidiKey2Freq:
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
  
hrt_SoftReset:
    ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
	ldr		r3, =0x03007FFA
	strb	r0,[r3, #0]
	ldr		r3, =0x04000208
	mov		r2, #0
	strb	r2, [r3, #0]
	ldr		r1, =0x03007f00
	mov		sp, r1
	swi		1
	swi		0
  bx		lr
  
hrt_CustomHalt:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  swi		39 << 16
  bx		lr

hrt_start:
  .word __hrt_system
  