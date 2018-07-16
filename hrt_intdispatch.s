	.section	.iwram,"ax",%progbits
	.extern	IntrTable
	.code 32
	.global	hrt_IntrMain
	.align
	
hrt_IntrMain:
	mov	r3, #0x4000000		@ REG_BASE
	ldr	r2, [r3,#0x200]		@ Read	REG_IE
	ldr	r1, [r3, #0x208]	@ r1 = IME
	str	r3, [r3, #0x208]	@ disable IME
	mrs	r0, spsr
	stmfd	sp!, {r0-r1,r3,lr}	@ {spsr, IME, REG_BASE, lr_irq}
	and	r1, r2,	r2, lsr #16	@ r1 =	IE & IF
	ldrh	r2, [r3, #-8]		@\mix up with BIOS irq flags at 3007FF8h,
	orr	r2, r2, r1		@ aka mirrored at 3FFFFF8h, this is required
	strh	r2, [r3, #-8]		@/when using the (VBlank)IntrWait functions
	ldr	r2,=IntrTable
	add	r3,r3,#0x200

hrt_findIRQ:
	ldr	r0, [r2, #4]		@ Interrupt mask
	cmp	r0,#0
	beq	hrt_no_handler
	ands	r0, r0, r1
	bne	hrt_jump_intr
	add	r2, r2, #8
	b	hrt_findIRQ

hrt_no_handler:
	strh	r1, [r3, #0x02]		@ IF Clear
	ldmfd	sp!, {r0-r1,r3,lr}	@ {spsr, IME, REG_BASE, lr_irq}
	str	r1, [r3, #0x208]	@ restore REG_IME
	mov	pc,lr

hrt_jump_intr:
	ldr	r2, [r2]		@ user IRQ handler address
	cmp	r2, #0
	beq	hrt_no_handler

hrt_got_handler:
	mrs	r1, cpsr
	bic	r1, r1, #0xdf		@ \__
	orr	r1, r1, #0x1f		@ /  --> Enable IRQ & FIQ. Set CPU mode to System.
	msr	cpsr,r1

	strh	r0, [r3, #0x02]		@ IF Clear
	
	push	{lr}
	adr	lr, hrt_IntrRet
	bx	r2

hrt_IntrRet:
	pop	{lr}
	mov	r3, #0x4000000		@ REG_BASE
	str	r3, [r3, #0x208]	@ disable IME

	mrs	r3, cpsr
	bic	r3, r3, #0xdf		@ \__
	orr	r3, r3, #0x92		@ /  --> Disable IRQ. Enable FIQ. Set CPU mode to IRQ.
	msr	cpsr, r3

	ldmfd   sp!, {r0-r1,r3,lr}	@ {spsr, IME, REG_BASE, lr_irq}
	str	r1, [r3, #0x208]	@ restore REG_IME
	msr	spsr, r0		@ restore spsr
	mov	pc,lr

	.pool
	