	.section	.code,"ax"


@;--------------------------------------------------------------
	.code 16
	.global	hrt_EZFlashRumble
hrt_EZFlashRumble:
	 LSL	R4, R3, #1
	 ADD  R2, R4

	push {r1-r5}
	ldr 	r1,=0xD200
	ldr 	r2,=0x1500
	ldr 	r3,=0x9fe0000
	strh 	r1,[r3]
	ldr 	r3,=0x8000000
	strh  r2,[r3]
	ldr 	r3,=0x8020000
	strh 	r1,[r3]
	ldr 	r3,=0x8040000
	strh  r2,[r3]
	ldr 	r3,=0x9E20000
	mov 	r1,#0xF1
	strh  r1,[r3]
	ldr 	r3,=0x9FC0000
	strh  r2,[r3]
	LDR		R4, =0x8001000
	
	mov		r5,#2
	strb  r5,[r4]	
	nop
	nop
	nop
	nop
__rset_off:
	mov		r5,#0
	strb  r5,[r4]

	
__rexit:
	pop {r1-r5}
	bx  lr
