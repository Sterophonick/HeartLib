#include "hrt_asminc.h"

.global hrt_Memcpy32
.arm
.section .iwram, "ax", %progbits
hrt_Memcpy32:
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

.global hrt_Memcpy16
.arm
.text
hrt_Memcpy16:
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
	ldr		r3, =hrt_Memcpy32
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
