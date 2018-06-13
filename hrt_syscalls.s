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
.arm

hrt_Crash:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  SWI 255 << 16
  bx lr
  
hrt_Sqrt:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne sqrtexit
  SWI 8 << 16
  
sqrtexit:
  bx lr 


hrt_RegisterRamReset:
  ldr r3, hrt_start
  ldrb r3, [r3]
  cmp r3, #1
  bxne lr
  SWI 1 << 16
  bx lr

hrt_ArcTan:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne arctexit
  SWI 9 << 16
  
arctexit:
  bx lr 

hrt_ArcTan2:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne arct2exit
  SWI 10 << 16
  
arct2exit:
  bx lr 

hrt_DivMod:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divmodexit
  SWI 6 << 16
  mov r0, r1
  
divmodexit:
  bx lr 

hrt_DivAbs:
  ldr r3, hrt_start 
  ldrb r3, [r3]
  cmp r3, #1
  bne divabsexit
  SWI 6 << 16
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
  
hrt_start:
  .word __hrt_system
  