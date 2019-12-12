
pucrunch.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <UnpackPUC>:
   0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
   4:	e24dd044 	sub	sp, sp, #68	; 0x44
   8:	e58d1004 	str	r1, [sp, #4]
   c:	e2800006 	add	r0, r0, #6
  10:	e4d05003 	ldrb	r5, [r0], #3
  14:	e5cd5000 	strb	r5, [sp]
  18:	e4d05001 	ldrb	r5, [r0], #1
  1c:	e5cd5008 	strb	r5, [sp, #8]
  20:	e2655008 	rsb	r5, r5, #8
  24:	e5cd500c 	strb	r5, [sp, #12]
  28:	e4d05001 	ldrb	r5, [r0], #1
  2c:	e5cd5010 	strb	r5, [sp, #16]
  30:	e2655009 	rsb	r5, r5, #9
  34:	e5cd501c 	strb	r5, [sp, #28]
  38:	e4d05001 	ldrb	r5, [r0], #1
  3c:	e5cd5014 	strb	r5, [sp, #20]
  40:	e0855005 	add	r5, r5, r5
  44:	e2455001 	sub	r5, r5, #1
  48:	e5cd5018 	strb	r5, [sp, #24]
  4c:	e4d05003 	ldrb	r5, [r0], #3
  50:	e5cd5020 	strb	r5, [sp, #32]
  54:	e4d05001 	ldrb	r5, [r0], #1
  58:	e1a08005 	mov	r8, r5
  5c:	e3a09024 	mov	r9, #36	; 0x24

00000060 <_tablop>:
  60:	e4d05001 	ldrb	r5, [r0], #1
  64:	e7cd5009 	strb	r5, [sp, r9]
  68:	e2899001 	add	r9, r9, #1
  6c:	e2588001 	subs	r8, r8, #1
  70:	1afffffa 	bne	60 <_tablop>
  74:	e3a08080 	mov	r8, #128	; 0x80
  78:	ea00000a 	b	a8 <_main>

0000007c <_newesc>:
  7c:	e5ddb000 	ldrb	fp, [sp]
  80:	e5dd9008 	ldrb	r9, [sp, #8]
  84:	e2899001 	add	r9, r9, #1
  88:	eb000073 	bl	25c <_getchk>
  8c:	e5cd5000 	strb	r5, [sp]
  90:	e1a0500b 	mov	r5, fp

00000094 <_noesc>:
  94:	e5dd900c 	ldrb	r9, [sp, #12]
  98:	e2899001 	add	r9, r9, #1
  9c:	eb00006e 	bl	25c <_getchk>
  a0:	e20550ff 	and	r5, r5, #255	; 0xff
  a4:	e4c15001 	strb	r5, [r1], #1

000000a8 <_main>:
  a8:	e5dd9008 	ldrb	r9, [sp, #8]
  ac:	e3a05000 	mov	r5, #0
  b0:	e1a0b005 	mov	fp, r5
  b4:	e2899001 	add	r9, r9, #1
  b8:	eb000067 	bl	25c <_getchk>
  bc:	e5ddc000 	ldrb	ip, [sp]
  c0:	e155000c 	cmp	r5, ip
  c4:	1afffff2 	bne	94 <_noesc>
  c8:	eb000047 	bl	1ec <_getval>
  cc:	e5cd5004 	strb	r5, [sp, #4]
  d0:	e1b050a5 	lsrs	r5, r5, #1
  d4:	1a000020 	bne	15c <_lz77>
  d8:	eb000052 	bl	228 <_get1bit>
  dc:	e1b050a5 	lsrs	r5, r5, #1
  e0:	3a000026 	bcc	180 <_lz77_2>
  e4:	eb00004f 	bl	228 <_get1bit>
  e8:	e1b050a5 	lsrs	r5, r5, #1
  ec:	3affffe2 	bcc	7c <_newesc>
  f0:	eb00003d 	bl	1ec <_getval>
  f4:	e5cd5004 	strb	r5, [sp, #4]
  f8:	e5dd6014 	ldrb	r6, [sp, #20]
  fc:	e1550006 	cmp	r5, r6
 100:	3a000004 	bcc	118 <_chrcode>
 104:	e5dd901c 	ldrb	r9, [sp, #28]
 108:	eb000047 	bl	22c <_getbits>
 10c:	e5cd5004 	strb	r5, [sp, #4]
 110:	eb000035 	bl	1ec <_getval>
 114:	e245b001 	sub	fp, r5, #1

00000118 <_chrcode>:
 118:	eb000033 	bl	1ec <_getval>
 11c:	e1a09005 	mov	r9, r5
 120:	e285c023 	add	ip, r5, #35	; 0x23
 124:	e3550020 	cmp	r5, #32
 128:	e7dd500c 	ldrb	r5, [sp, ip]
 12c:	3a000002 	bcc	13c <_less32>
 130:	e1a05009 	mov	r5, r9
 134:	e3a09003 	mov	r9, #3
 138:	eb00003b 	bl	22c <_getbits>

0000013c <_less32>:
 13c:	e5dd9004 	ldrb	r9, [sp, #4]
 140:	e2896001 	add	r6, r9, #1
 144:	e086640b 	add	r6, r6, fp, lsl #8
 148:	e20550ff 	and	r5, r5, #255	; 0xff

0000014c <_dorle>:
 14c:	e4c15001 	strb	r5, [r1], #1
 150:	e2566001 	subs	r6, r6, #1
 154:	1afffffc 	bne	14c <_dorle>
 158:	eaffffd2 	b	a8 <_main>

0000015c <_lz77>:
 15c:	eb000022 	bl	1ec <_getval>
 160:	e1a06005 	mov	r6, r5
 164:	e5dd5018 	ldrb	r5, [sp, #24]
 168:	e1550006 	cmp	r5, r6
 16c:	0a00003d 	beq	268 <_done>
 170:	e5dd9020 	ldrb	r9, [sp, #32]
 174:	e2465001 	sub	r5, r6, #1
 178:	e2899001 	add	r9, r9, #1
 17c:	eb000036 	bl	25c <_getchk>

00000180 <_lz77_2>:
 180:	e5cd5005 	strb	r5, [sp, #5]
 184:	e3a09008 	mov	r9, #8
 188:	eb000027 	bl	22c <_getbits>
 18c:	e20560ff 	and	r6, r5, #255	; 0xff
 190:	e5dd9004 	ldrb	r9, [sp, #4]
 194:	e1a07001 	mov	r7, r1
 198:	e207c0ff 	and	ip, r7, #255	; 0xff
 19c:	e09c5006 	adds	r5, ip, r6
 1a0:	e1a03425 	lsr	r3, r5, #8
 1a4:	e2033001 	and	r3, r3, #1
 1a8:	e2233001 	eor	r3, r3, #1
 1ac:	e5cd5004 	strb	r5, [sp, #4]
 1b0:	e5dd6005 	ldrb	r6, [sp, #5]
 1b4:	e1a05427 	lsr	r5, r7, #8
 1b8:	e0455006 	sub	r5, r5, r6
 1bc:	e0455003 	sub	r5, r5, r3
 1c0:	e5cd5005 	strb	r5, [sp, #5]
 1c4:	e1a0c425 	lsr	ip, r5, #8
 1c8:	e5cdc006 	strb	ip, [sp, #6]
 1cc:	e2899001 	add	r9, r9, #1
 1d0:	e1a06009 	mov	r6, r9
 1d4:	e59dc004 	ldr	ip, [sp, #4]

000001d8 <_lzloop>:
 1d8:	e4dc5001 	ldrb	r5, [ip], #1
 1dc:	e4c15001 	strb	r5, [r1], #1
 1e0:	e2566001 	subs	r6, r6, #1
 1e4:	1afffffb 	bne	1d8 <_lzloop>
 1e8:	eaffffae 	b	a8 <_main>

000001ec <_getval>:
 1ec:	e3a05001 	mov	r5, #1
 1f0:	e1a09005 	mov	r9, r5

000001f4 <_loop0>:
 1f4:	e0888008 	add	r8, r8, r8
 1f8:	e31800ff 	tst	r8, #255	; 0xff
 1fc:	1a000002 	bne	20c <_loop1>
 200:	e4d08001 	ldrb	r8, [r0], #1
 204:	e1500000 	cmp	r0, r0
 208:	e0a88008 	adc	r8, r8, r8

0000020c <_loop1>:
 20c:	e3180c01 	tst	r8, #256	; 0x100
 210:	0a000011 	beq	25c <_getchk>
 214:	e2899001 	add	r9, r9, #1
 218:	e5ddc010 	ldrb	ip, [sp, #16]
 21c:	e15c0009 	cmp	ip, r9
 220:	1afffff3 	bne	1f4 <_loop0>
 224:	ea00000c 	b	25c <_getchk>

00000228 <_get1bit>:
 228:	e2899001 	add	r9, r9, #1

0000022c <_getbits>:
 22c:	e0888008 	add	r8, r8, r8
 230:	e1a03428 	lsr	r3, r8, #8
 234:	e2033001 	and	r3, r3, #1
 238:	e31800ff 	tst	r8, #255	; 0xff
 23c:	1a000004 	bne	254 <_loop3>
 240:	e4d08001 	ldrb	r8, [r0], #1
 244:	e1500000 	cmp	r0, r0
 248:	e0a88008 	adc	r8, r8, r8
 24c:	e1a03428 	lsr	r3, r8, #8
 250:	e2033001 	and	r3, r3, #1

00000254 <_loop3>:
 254:	e0855005 	add	r5, r5, r5
 258:	e0855003 	add	r5, r5, r3

0000025c <_getchk>:
 25c:	e2599001 	subs	r9, r9, #1
 260:	1afffff1 	bne	22c <_getbits>
 264:	e12fff1e 	bx	lr

00000268 <_done>:
 268:	e28dd044 	add	sp, sp, #68	; 0x44
 26c:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 270:	e12fff1e 	bx	lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001941 	andeq	r1, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000f 	andeq	r0, r0, pc
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	Address 0x0000000000000018 is out of bounds.

