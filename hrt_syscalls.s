 .align
 .pool
 .text
.code 16
.global	hrt_MultiBoot
.global	__hrt_version
.thumb
hrt_MultiBoot:
 swi 37
 bx lr

 .arm
 __hrt_version:
 	ldr r0,=0x5AB07A6E		@Fool proofing
	mov r12,#0
	swi 0x0D0000			@GetBIOSChecksum
	ldr r1,=0xABBE687E		@Proto GBA
	cmp r0,r1
	moveq r12,#1
	ldr r1,=0xBAAE187F		@Normal GBA
	cmp r0,r1
	moveq r12,#2
	ldr r1,=0xBAAE1880		@Nintendo DS
	cmp r0,r1
	moveq r12,#4
	mov r0,r12
	bx lr
