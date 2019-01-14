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
  
ham_PutPixel:
	push {lr}
	mov ip,#0x4000000
	ldrh r3,[ip]
	and r3,r3,#7
	cmp r3,#4
	mov lr,r2
	beq .L1
	bgt .L2
	cmp r3,#3
	beq .L3
.L4:
	pop {lr}
	bx lr
.L3:
	lsl r3,r1,#4
	rsb r3,r3,r1,lsl #8
	add r3,r3,r0
.L5:
	ldr r2,[pc,#160]
	ldr r1,[r2]
	lsl r3,r3,#1
	strh lr,[r3,r1]
	b .L4
.L2:
	cmp r3,#5
	bne .L4
	ldrh r3,[ip]
	tst r3,#16
	addne r3,r1,r1,lsl #2
	addne r3,r0,r3,lsl #5
	bne .L5
	add r3,r1,r1,lsl #2
	ldr r1,[pc,#108]
	ldr r2,[r1]
	add r3,r0,r3,lsl #5
	add r2,r2,r3,lsl #1
	add r2,r2,#0x14000
	strh lr,[r2]
	b .L4
.L1:
	ldrh r3,[ip]
	tst r3,#16
	lsleq r3,r1,#4
	lslne r3,r1,#4
	rsbeq r3,r3,r1,lsl #8
	ldrne ip,[pc,#60]
	ldreq ip,[pc,#56]
	rsbne r3,r3,r1,lsl #8
	addeq r3,r3,r0
	addne r3,r3,r0
	addeq r3,r3,#40960
	ldr r2,[ip]
	bic r1,r3,#1
	ldrh r2,[r1,r2]
	tst r0,#1
	andne r3,r2,#255
	andeq r3,r2,#0xFF00
	orrne r2,r3,lr,lsl #8
	orreq r2,r3,lr
	ldr r3,[ip]
	strh r2,[r1,r3]
	b .L4
	andeq r0,r0,r0
  
ham_PutLine:
	mov ip,sp
	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	lsl	r0, r0, #16
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsl	r1, r1, #16
	sub	fp, ip, #4
	asr	r5, r2, #16
	asr	ip, r0, #16
	asr	r7, r3, #16
	asr	lr, r1, #16
	rsb	r3, ip, r5
	rsb	r2, lr, r7
	cmp	r3, #0
	rsblt r3,r3,#0
	cmp r2,#0
	rsblt r2,r2,#0
	lsl r3,r3,#16
	lsl r2,r2,#16
	sub sp,sp,#20
	asr r4,r3,#16
	asr r0,r2,#16
	cmp r4,r0
	ldrsh sl,[fp,#4]
	blt .L6
	rsb r1,r4,r0
	rsb r2,r4,r0,lsl #1
	add r3,r4,#1
	lsl r0,r0,#17
	asr r0,r0,#16
	lsl r3,r3,#16
	lsl r2,r2,#16
	lsl r1,r1,#17
	mov r4,#1
	str r0,[fp,#-44]
	asr r8,r3,#16
	mov r0,#0
	asr r6,r2,#16
	asr r9,r1,#16
	str r4,[fp,#-52]
	str r4,[fp,#-48]
	str r0,[fp,#-56]
	str r4,[fp,#-60]
.L12:
	cmp ip,r5
	ble .L7
	ldr r4,[fp,#-48]
	rsb r3,r4,#0
	lsl r3,r3,#16
	asr r3,r3,#16
	mvn r5,#0
	str r3,[fp,#-48]
	str r5,[fp,#-52]
.L7: //2Dc
	cmp lr,r7
	ble .L8
	ldr r0,[fp,#-56]
	rsb r3,r0,#0
	lsl r3,r3,#16
	asr r3,r3,#16
	mvn r1,#0
	str r3,[fp,#-56]
	str r1,[fp,#-60]
.L8: //300
	mov r7,#1
	cmp r7,r8
	mov r5,ip
	mov r4,lr
	bge .L9
	lsl sl,sl,#16
.L11:
	mov r0,r5
	mov r1,r4
	lsr r2,sl,#16
	bl ham_PutPixel
	ldr r1,[fp,#-56]
	ldr r3,[fp,#-48]
	add lr,r4,r1
	ldr r2,[fp,#-44]
	ldr r1,[fp,#-52]
	add ip,r5,r3
	add r3,r6,r9
	cmp r6,#0
	add r0,r6,r2
	lsl r3,r3,#16
	add r2,r5,r1
	ldr r5,[fp,#-60]
	asrge r6,r3,#16
	add r3,r7,#1
	add r1,r4,r5
	lsl r3,r3,#16
	lsl r4,r0,#16
	lsl ip,ip,#16
	lsl lr,lr,#16
	lsl r0,r2,#16
	lsl r1,r1,#16
	asr r7,r3,#16
	asrlt r6,r4,#16
	asrlt r5,ip,#16
	asrlt r4,lr,#16
	asrge r5,r0,#16
	asrge r4,r1,#16
	cmp r7,r8
	blt .L11
.L9:
	ldmdb	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx lr	
.L6: //3a4
	rsb r1,r0,r4
	add r3,r0,#1
	rsb r2,r0,r4,lsl #1
	mov r0,#1
	lsl r2,r2,#16
	lsl r1,r1,#17
	str r0,[fp,#-52]
	lsl r0,r4,#17
	asr r6,r2,#16
	asr r0,r0,#16
	mov r1,#1
	asr r9,r1,#16
	mov r1,#0
	lsl r3,r3,#16
	str r0,[fp,#-44]
	str r1,[fp,#-48]
	str r2,[fp,#-56]
	str r2,[fp,#-60]
	asr r8,r3,#16
	b .L12