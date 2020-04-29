
input.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SetInputRepeat>:
   0:	e59f3008 	ldr	r3, [pc, #8]	; 10 <hrt_SetInputRepeat+0x10>
   4:	e5c30000 	strb	r0, [r3]
   8:	e5c31001 	strb	r1, [r3, #1]
   c:	e12fff1e 	bx	lr
  10:	00000000 	andeq	r0, r0, r0

00000014 <hrt_ScanKeys>:
  14:	e92d4070 	push	{r4, r5, r6, lr}
  18:	e59f30f8 	ldr	r3, [pc, #248]	; 118 <hrt_ScanKeys+0x104>
  1c:	e5d32005 	ldrb	r2, [r3, #5]
  20:	e5d3e004 	ldrb	lr, [r3, #4]
  24:	e18ee402 	orr	lr, lr, r2, lsl #8
  28:	e1a0242e 	lsr	r2, lr, #8
  2c:	e5c32007 	strb	r2, [r3, #7]
  30:	e5c3e006 	strb	lr, [r3, #6]
  34:	e59f20e0 	ldr	r2, [pc, #224]	; 11c <hrt_ScanKeys+0x108>
  38:	e59f60e0 	ldr	r6, [pc, #224]	; 120 <hrt_ScanKeys+0x10c>
  3c:	e1d253b0 	ldrh	r5, [r2, #48]	; 0x30
  40:	e1c62005 	bic	r2, r6, r5
  44:	e1a01422 	lsr	r1, r2, #8
  48:	e5d30009 	ldrb	r0, [r3, #9]
  4c:	e5c31005 	strb	r1, [r3, #5]
  50:	e5d31008 	ldrb	r1, [r3, #8]
  54:	e02e4006 	eor	r4, lr, r6
  58:	e0044002 	and	r4, r4, r2
  5c:	e1811400 	orr	r1, r1, r0, lsl #8
  60:	e1840001 	orr	r0, r4, r1
  64:	e5d3c000 	ldrb	ip, [r3]
  68:	e5d31001 	ldrb	r1, [r3, #1]
  6c:	e005500e 	and	r5, r5, lr
  70:	e0055006 	and	r5, r5, r6
  74:	e18cc401 	orr	ip, ip, r1, lsl #8
  78:	e5d36003 	ldrb	r6, [r3, #3]
  7c:	e5d31002 	ldrb	r1, [r3, #2]
  80:	e1811406 	orr	r1, r1, r6, lsl #8
  84:	e1841001 	orr	r1, r4, r1
  88:	e1c11005 	bic	r1, r1, r5
  8c:	e5c31002 	strb	r1, [r3, #2]
  90:	e1a01421 	lsr	r1, r1, #8
  94:	e5c31003 	strb	r1, [r3, #3]
  98:	e1c01005 	bic	r1, r0, r5
  9c:	e1a01801 	lsl	r1, r1, #16
  a0:	e185c00c 	orr	ip, r5, ip
  a4:	e1a05821 	lsr	r5, r1, #16
  a8:	e1a01c21 	lsr	r1, r1, #24
  ac:	e5c31009 	strb	r1, [r3, #9]
  b0:	e59f106c 	ldr	r1, [pc, #108]	; 124 <hrt_ScanKeys+0x110>
  b4:	e5d10000 	ldrb	r0, [r1]
  b8:	e1ccc004 	bic	ip, ip, r4
  bc:	e15e0002 	cmp	lr, r2
  c0:	e5c3c000 	strb	ip, [r3]
  c4:	15c10002 	strbne	r0, [r1, #2]
  c8:	e1a0c42c 	lsr	ip, ip, #8
  cc:	e3500000 	cmp	r0, #0
  d0:	e5c32004 	strb	r2, [r3, #4]
  d4:	e5c35008 	strb	r5, [r3, #8]
  d8:	e5c3c001 	strb	ip, [r3, #1]
  dc:	0a00000b 	beq	110 <hrt_ScanKeys+0xfc>
  e0:	e5d10002 	ldrb	r0, [r1, #2]
  e4:	e2400001 	sub	r0, r0, #1
  e8:	e20000ff 	and	r0, r0, #255	; 0xff
  ec:	e3500000 	cmp	r0, #0
  f0:	e5c10002 	strb	r0, [r1, #2]
  f4:	1a000005 	bne	110 <hrt_ScanKeys+0xfc>
  f8:	e1822005 	orr	r2, r2, r5
  fc:	e5d10001 	ldrb	r0, [r1, #1]
 100:	e5c32008 	strb	r2, [r3, #8]
 104:	e1a02422 	lsr	r2, r2, #8
 108:	e5c10002 	strb	r0, [r1, #2]
 10c:	e5c32009 	strb	r2, [r3, #9]
 110:	e8bd4070 	pop	{r4, r5, r6, lr}
 114:	e12fff1e 	bx	lr
 118:	00000000 	andeq	r0, r0, r0
 11c:	04000100 	streq	r0, [r0], #-256	; 0xffffff00
 120:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
 124:	00000000 	andeq	r0, r0, r0

00000128 <hrt_KeysDownRepeat>:
 128:	e3a02000 	mov	r2, #0
 12c:	e59f3014 	ldr	r3, [pc, #20]	; 148 <hrt_KeysDownRepeat+0x20>
 130:	e5d31008 	ldrb	r1, [r3, #8]
 134:	e5d30009 	ldrb	r0, [r3, #9]
 138:	e5c32008 	strb	r2, [r3, #8]
 13c:	e5c32009 	strb	r2, [r3, #9]
 140:	e1810400 	orr	r0, r1, r0, lsl #8
 144:	e12fff1e 	bx	lr
 148:	00000000 	andeq	r0, r0, r0

0000014c <hrt_KeysDown>:
 14c:	e3a02000 	mov	r2, #0
 150:	e59f3014 	ldr	r3, [pc, #20]	; 16c <hrt_KeysDown+0x20>
 154:	e5d31002 	ldrb	r1, [r3, #2]
 158:	e5d30003 	ldrb	r0, [r3, #3]
 15c:	e5c32002 	strb	r2, [r3, #2]
 160:	e5c32003 	strb	r2, [r3, #3]
 164:	e1810400 	orr	r0, r1, r0, lsl #8
 168:	e12fff1e 	bx	lr
 16c:	00000000 	andeq	r0, r0, r0

00000170 <hrt_KeysUp>:
 170:	e3a02000 	mov	r2, #0
 174:	e59f3014 	ldr	r3, [pc, #20]	; 190 <hrt_KeysUp+0x20>
 178:	e5d31000 	ldrb	r1, [r3]
 17c:	e5d30001 	ldrb	r0, [r3, #1]
 180:	e5c32000 	strb	r2, [r3]
 184:	e5c32001 	strb	r2, [r3, #1]
 188:	e1810400 	orr	r0, r1, r0, lsl #8
 18c:	e12fff1e 	bx	lr
 190:	00000000 	andeq	r0, r0, r0

00000194 <hrt_KeysHeld>:
 194:	e59f300c 	ldr	r3, [pc, #12]	; 1a8 <hrt_KeysHeld+0x14>
 198:	e5d32004 	ldrb	r2, [r3, #4]
 19c:	e5d30005 	ldrb	r0, [r3, #5]
 1a0:	e1820400 	orr	r0, r2, r0, lsl #8
 1a4:	e12fff1e 	bx	lr
 1a8:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <__hrt_delay>:
   0:	Address 0x0000000000000000 is out of bounds.


00000001 <__hrt_repeat>:
   1:	Address 0x0000000000000001 is out of bounds.


00000002 <__hrt_count>:
   2:	Address 0x0000000000000002 is out of bounds.


Disassembly of section .bss:

00000000 <__hrt_Keys>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	; 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	; 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	; 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  18:	29333520 	ldmdbcs	r3!, {r5, r8, sl, ip, sp}
  1c:	312e3920 			; <UNDEFINED> instruction: 0x312e3920
  20:	Address 0x0000000000000020 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002541 	andeq	r2, r0, r1, asr #10
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001b 	andeq	r0, r0, fp, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	; 0xfffffef7
  1c:	01180117 	tsteq	r8, r7, lsl r1
  20:	011a0119 	tsteq	sl, r9, lsl r1
  24:	Address 0x0000000000000024 is out of bounds.

