In archive libheart.a:

oam.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SetOBJX>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <hrt_SetOBJX+0x1c>
   4:	e0830180 	add	r0, r3, r0, lsl #3
   8:	e1d030b2 	ldrh	r3, [r0, #2]
   c:	e2033cfe 	and	r3, r3, #65024	; 0xfe00
  10:	e1831001 	orr	r1, r3, r1
  14:	e1c010b2 	strh	r1, [r0, #2]
  18:	e12fff1e 	bx	lr
  1c:	00000000 	andeq	r0, r0, r0

00000020 <hrt_SetOBJY>:
  20:	e59f2014 	ldr	r2, [pc, #20]	; 3c <hrt_SetOBJY+0x1c>
  24:	e1a00180 	lsl	r0, r0, #3
  28:	e19230b0 	ldrh	r3, [r2, r0]
  2c:	e3c330ff 	bic	r3, r3, #255	; 0xff
  30:	e1831001 	orr	r1, r3, r1
  34:	e18210b0 	strh	r1, [r2, r0]
  38:	e12fff1e 	bx	lr
  3c:	00000000 	andeq	r0, r0, r0

00000040 <hrt_CreateOBJ>:
  40:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  44:	e59fe018 	ldr	lr, [pc, #24]	; 64 <hrt_CreateOBJ+0x24>
  48:	e1a00180 	lsl	r0, r0, #3
  4c:	e08ec000 	add	ip, lr, r0
  50:	e18e10b0 	strh	r1, [lr, r0]
  54:	e1cc20b2 	strh	r2, [ip, #2]
  58:	e1cc30b4 	strh	r3, [ip, #4]
  5c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  60:	e12fff1e 	bx	lr
  64:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <OAMAffineBuffer>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	; 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	; 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	; 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  18:	29393420 	ldmdbcs	r9!, {r5, sl, ip, sp}
  1c:	312e3820 			; <UNDEFINED> instruction: 0x312e3820
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


memcpy.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_Memcpy16>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3520005 	cmp	r2, #5
   8:	9a000010 	bls	50 <hrt_Memcpy16+0x50>
   c:	e1a03000 	mov	r3, r0
  10:	e0233001 	eor	r3, r3, r1
  14:	e1a03f83 	lsl	r3, r3, #31
  18:	2a00000c 	bcs	50 <hrt_Memcpy16+0x50>
  1c:	e1a03f80 	lsl	r3, r0, #31
  20:	3a000004 	bcc	38 <hrt_Memcpy16+0x38>
  24:	e1d130b0 	ldrh	r3, [r1]
  28:	e1c030b0 	strh	r3, [r0]
  2c:	e2800002 	add	r0, r0, #2
  30:	e2811002 	add	r1, r1, #2
  34:	e2422001 	sub	r2, r2, #1
  38:	e1a04f82 	lsl	r4, r2, #31
  3c:	e1a020a2 	lsr	r2, r2, #1
  40:	e59f3030 	ldr	r3, [pc, #48]	; 78 <hrt_Memcpy16+0x78>
  44:	eb00000a 	bl	74 <hrt_Memcpy16+0x74>
  48:	e1a02fa4 	lsr	r2, r4, #31
  4c:	0a000006 	beq	6c <hrt_Memcpy16+0x6c>
  50:	e2422001 	sub	r2, r2, #1
  54:	3a000004 	bcc	6c <hrt_Memcpy16+0x6c>
  58:	e1a02082 	lsl	r2, r2, #1
  5c:	e19130b2 	ldrh	r3, [r1, r2]
  60:	e18030b2 	strh	r3, [r0, r2]
  64:	e2422002 	sub	r2, r2, #2
  68:	2afffffb 	bcs	5c <hrt_Memcpy16+0x5c>
  6c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
  70:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
  74:	e12fff13 	bx	r3
  78:	00000000 	andeq	r0, r0, r0

Disassembly of section .iwram:

00000000 <hrt_Memcpy32>:
   0:	e202c007 	and	ip, r2, #7
   4:	e1b021a2 	lsrs	r2, r2, #3
   8:	0a000005 	beq	24 <hrt_Memcpy32+0x24>
   c:	e92d07f0 	push	{r4, r5, r6, r7, r8, r9, sl}
  10:	e8b107f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, r9, sl}
  14:	e8a007f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, r9, sl}
  18:	e2522001 	subs	r2, r2, #1
  1c:	8afffffb 	bhi	10 <hrt_Memcpy32+0x10>
  20:	e8bd07f0 	pop	{r4, r5, r6, r7, r8, r9, sl}
  24:	e25cc001 	subs	ip, ip, #1
  28:	28b10008 	ldmcs	r1!, {r3}
  2c:	28a00008 	stmiacs	r0!, {r3}
  30:	8afffffb 	bhi	24 <hrt_Memcpy32+0x24>
  34:	e12fff1e 	bx	lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001941 	andeq	r1, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000f 	andeq	r0, r0, pc
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	Address 0x0000000000000018 is out of bounds.


fx.o:     file format elf32-littlearm


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
   0:	00002b41 	andeq	r2, r0, r1, asr #22
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000021 	andeq	r0, r0, r1, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	02060049 	andeq	r0, r6, #73	; 0x49
  1c:	01090108 	tsteq	r9, r8, lsl #2
  20:	01170412 	tsteq	r7, r2, lsl r4
  24:	01190118 	tsteq	r9, r8, lsl r1
  28:	041e011a 	ldreq	r0, [lr], #-282	; 0xfffffee6

font.o:     file format elf32-littlearm


Disassembly of section .rodata:

00000000 <font_matrixBitmap>:
	...
      40:	01000000 	mrseq	r0, (UNDEF: 0)
      44:	00000001 	andeq	r0, r0, r1
      48:	02010000 	andeq	r0, r1, #0
      4c:	00000102 	andeq	r0, r0, r2, lsl #2
      50:	02010000 	andeq	r0, r1, #0
      54:	00000102 	andeq	r0, r0, r2, lsl #2
      58:	02010000 	andeq	r0, r1, #0
      5c:	00000102 	andeq	r0, r0, r2, lsl #2
      60:	02010000 	andeq	r0, r1, #0
      64:	00000102 	andeq	r0, r0, r2, lsl #2
      68:	01000000 	mrseq	r0, (UNDEF: 0)
      6c:	00000001 	andeq	r0, r0, r1
      70:	02010000 	andeq	r0, r1, #0
      74:	00000102 	andeq	r0, r0, r2, lsl #2
      78:	01000000 	mrseq	r0, (UNDEF: 0)
      7c:	00000001 	andeq	r0, r0, r1
      80:	01000000 	mrseq	r0, (UNDEF: 0)
      84:	00000100 	andeq	r0, r0, r0, lsl #2
      88:	02010000 	andeq	r0, r1, #0
      8c:	00010201 	andeq	r0, r1, r1, lsl #4
      90:	01020100 	mrseq	r0, (UNDEF: 18)
      94:	00000102 	andeq	r0, r0, r2, lsl #2
      98:	00010000 	andeq	r0, r1, r0
      9c:	00000001 	andeq	r0, r0, r1
	...
      c0:	00010000 	andeq	r0, r1, r0
      c4:	00000100 	andeq	r0, r0, r0, lsl #2
      c8:	01020100 	mrseq	r0, (UNDEF: 18)
      cc:	00010201 	andeq	r0, r1, r1, lsl #4
      d0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
      d4:	01020202 	tsteq	r2, r2, lsl #4
      d8:	01020100 	mrseq	r0, (UNDEF: 18)
      dc:	00010201 	andeq	r0, r1, r1, lsl #4
      e0:	01020100 	mrseq	r0, (UNDEF: 18)
      e4:	00010201 	andeq	r0, r1, r1, lsl #4
      e8:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
      ec:	01020202 	tsteq	r2, r2, lsl #4
      f0:	01020100 	mrseq	r0, (UNDEF: 18)
      f4:	00010201 	andeq	r0, r1, r1, lsl #4
      f8:	00010000 	andeq	r0, r1, r0
      fc:	00000100 	andeq	r0, r0, r0, lsl #2
     100:	01010000 	mrseq	r0, (UNDEF: 1)
     104:	00000101 	andeq	r0, r0, r1, lsl #2
     108:	02020100 	andeq	r0, r2, #0, 2
     10c:	00010202 	andeq	r0, r1, r2, lsl #4
     110:	01020201 	tsteq	r2, r1, lsl #4
     114:	00000101 	andeq	r0, r0, r1, lsl #2
     118:	02020100 	andeq	r0, r2, #0, 2
     11c:	00010202 	andeq	r0, r1, r2, lsl #4
     120:	01010100 	mrseq	r0, (UNDEF: 17)
     124:	01020102 	tsteq	r2, r2, lsl #2
     128:	01020201 	tsteq	r2, r1, lsl #4
     12c:	01020102 	tsteq	r2, r2, lsl #2
     130:	02020100 	andeq	r0, r2, #0, 2
     134:	00010202 	andeq	r0, r1, r2, lsl #4
     138:	01010000 	mrseq	r0, (UNDEF: 1)
     13c:	00000101 	andeq	r0, r0, r1, lsl #2
     140:	00010100 	andeq	r0, r1, r0, lsl #2
     144:	00010101 	andeq	r0, r1, r1, lsl #2
     148:	01020201 	tsteq	r2, r1, lsl #4
     14c:	00010202 	andeq	r0, r1, r2, lsl #4
     150:	01020201 	tsteq	r2, r1, lsl #4
     154:	00010202 	andeq	r0, r1, r2, lsl #4
     158:	02010100 	andeq	r0, r1, #0, 2
     15c:	00000102 	andeq	r0, r0, r2, lsl #2
     160:	02020100 	andeq	r0, r2, #0, 2
     164:	00000101 	andeq	r0, r0, r1, lsl #2
     168:	01020201 	tsteq	r2, r1, lsl #4
     16c:	00010202 	andeq	r0, r1, r2, lsl #4
     170:	01020201 	tsteq	r2, r1, lsl #4
     174:	00010202 	andeq	r0, r1, r2, lsl #4
     178:	00010101 	andeq	r0, r1, r1, lsl #2
     17c:	00000101 	andeq	r0, r0, r1, lsl #2
     180:	01010000 	mrseq	r0, (UNDEF: 1)
     184:	00000001 	andeq	r0, r0, r1
     188:	02020100 	andeq	r0, r2, #0, 2
     18c:	00000102 	andeq	r0, r0, r2, lsl #2
     190:	01020201 	tsteq	r2, r1, lsl #4
     194:	00010202 	andeq	r0, r1, r2, lsl #4
     198:	02020100 	andeq	r0, r2, #0, 2
     19c:	00010102 	andeq	r0, r1, r2, lsl #2
     1a0:	01020201 	tsteq	r2, r1, lsl #4
     1a4:	01020202 	tsteq	r2, r2, lsl #4
     1a8:	01020201 	tsteq	r2, r1, lsl #4
     1ac:	00010201 	andeq	r0, r1, r1, lsl #4
     1b0:	02020100 	andeq	r0, r2, #0, 2
     1b4:	01020102 	tsteq	r2, r2, lsl #2
     1b8:	01010000 	mrseq	r0, (UNDEF: 1)
     1bc:	00010001 	andeq	r0, r1, r1
     1c0:	00000000 	andeq	r0, r0, r0
     1c4:	00000001 	andeq	r0, r0, r1
     1c8:	01000000 	mrseq	r0, (UNDEF: 0)
     1cc:	00000102 	andeq	r0, r0, r2, lsl #2
     1d0:	02010000 	andeq	r0, r1, #0
     1d4:	00000001 	andeq	r0, r0, r1
     1d8:	01000000 	mrseq	r0, (UNDEF: 0)
	...
     200:	01000000 	mrseq	r0, (UNDEF: 0)
     204:	00000001 	andeq	r0, r0, r1
     208:	02010000 	andeq	r0, r1, #0
     20c:	00000102 	andeq	r0, r0, r2, lsl #2
     210:	02020100 	andeq	r0, r2, #0, 2
     214:	00000001 	andeq	r0, r0, r1
     218:	02020100 	andeq	r0, r2, #0, 2
     21c:	00000001 	andeq	r0, r0, r1
     220:	02020100 	andeq	r0, r2, #0, 2
     224:	00000001 	andeq	r0, r0, r1
     228:	02020100 	andeq	r0, r2, #0, 2
     22c:	00000001 	andeq	r0, r0, r1
     230:	02010000 	andeq	r0, r1, #0
     234:	00000102 	andeq	r0, r0, r2, lsl #2
     238:	01000000 	mrseq	r0, (UNDEF: 0)
     23c:	00000001 	andeq	r0, r0, r1
     240:	01000000 	mrseq	r0, (UNDEF: 0)
     244:	00000001 	andeq	r0, r0, r1
     248:	02010000 	andeq	r0, r1, #0
     24c:	00000102 	andeq	r0, r0, r2, lsl #2
     250:	01000000 	mrseq	r0, (UNDEF: 0)
     254:	00010202 	andeq	r0, r1, r2, lsl #4
     258:	01000000 	mrseq	r0, (UNDEF: 0)
     25c:	00010202 	andeq	r0, r1, r2, lsl #4
     260:	01000000 	mrseq	r0, (UNDEF: 0)
     264:	00010202 	andeq	r0, r1, r2, lsl #4
     268:	01000000 	mrseq	r0, (UNDEF: 0)
     26c:	00010202 	andeq	r0, r1, r2, lsl #4
     270:	02010000 	andeq	r0, r1, #0
     274:	00000102 	andeq	r0, r0, r2, lsl #2
     278:	01000000 	mrseq	r0, (UNDEF: 0)
     27c:	00000001 	andeq	r0, r0, r1
     280:	01000100 	mrseq	r0, (UNDEF: 16)
     284:	00000100 	andeq	r0, r0, r0, lsl #2
     288:	02010201 	andeq	r0, r1, #268435456	; 0x10000000
     28c:	00010201 	andeq	r0, r1, r1, lsl #4
     290:	02020100 	andeq	r0, r2, #0, 2
     294:	00000102 	andeq	r0, r0, r2, lsl #2
     298:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     29c:	00010202 	andeq	r0, r1, r2, lsl #4
     2a0:	02020100 	andeq	r0, r2, #0, 2
     2a4:	00000102 	andeq	r0, r0, r2, lsl #2
     2a8:	02010201 	andeq	r0, r1, #268435456	; 0x10000000
     2ac:	00010201 	andeq	r0, r1, r1, lsl #4
     2b0:	01000100 	mrseq	r0, (UNDEF: 16)
     2b4:	00000100 	andeq	r0, r0, r0, lsl #2
	...
     2c0:	01000000 	mrseq	r0, (UNDEF: 0)
     2c4:	00000000 	andeq	r0, r0, r0
     2c8:	02010000 	andeq	r0, r1, #0
     2cc:	00000001 	andeq	r0, r0, r1
     2d0:	02010100 	andeq	r0, r1, #0, 2
     2d4:	00000101 	andeq	r0, r0, r1, lsl #2
     2d8:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     2dc:	00010202 	andeq	r0, r1, r2, lsl #4
     2e0:	02010100 	andeq	r0, r1, #0, 2
     2e4:	00000101 	andeq	r0, r0, r1, lsl #2
     2e8:	02010000 	andeq	r0, r1, #0
     2ec:	00000001 	andeq	r0, r0, r1
     2f0:	01000000 	mrseq	r0, (UNDEF: 0)
	...
     320:	00010000 	andeq	r0, r1, r0
     324:	00000000 	andeq	r0, r0, r0
     328:	01020100 	mrseq	r0, (UNDEF: 18)
     32c:	00000000 	andeq	r0, r0, r0
     330:	00010201 	andeq	r0, r1, r1, lsl #4
     334:	00000000 	andeq	r0, r0, r0
     338:	00000100 	andeq	r0, r0, r0, lsl #2
	...
     350:	01010000 	mrseq	r0, (UNDEF: 1)
     354:	00000101 	andeq	r0, r0, r1, lsl #2
     358:	02020100 	andeq	r0, r2, #0, 2
     35c:	00010202 	andeq	r0, r1, r2, lsl #4
     360:	01010000 	mrseq	r0, (UNDEF: 1)
     364:	00000101 	andeq	r0, r0, r1, lsl #2
	...
     3a8:	01000000 	mrseq	r0, (UNDEF: 0)
     3ac:	00000000 	andeq	r0, r0, r0
     3b0:	02010000 	andeq	r0, r1, #0
     3b4:	00000001 	andeq	r0, r0, r1
     3b8:	01000000 	mrseq	r0, (UNDEF: 0)
	...
     3c4:	00000101 	andeq	r0, r0, r1, lsl #2
     3c8:	01000000 	mrseq	r0, (UNDEF: 0)
     3cc:	00010202 	andeq	r0, r1, r2, lsl #4
     3d0:	01000000 	mrseq	r0, (UNDEF: 0)
     3d4:	00010202 	andeq	r0, r1, r2, lsl #4
     3d8:	02010000 	andeq	r0, r1, #0
     3dc:	00000102 	andeq	r0, r0, r2, lsl #2
     3e0:	02020100 	andeq	r0, r2, #0, 2
     3e4:	00000001 	andeq	r0, r0, r1
     3e8:	01020201 	tsteq	r2, r1, lsl #4
     3ec:	00000000 	andeq	r0, r0, r0
     3f0:	01020201 	tsteq	r2, r1, lsl #4
     3f4:	00000000 	andeq	r0, r0, r0
     3f8:	00010100 	andeq	r0, r1, r0, lsl #2
     3fc:	00000000 	andeq	r0, r0, r0
     400:	01010000 	mrseq	r0, (UNDEF: 1)
     404:	00000101 	andeq	r0, r0, r1, lsl #2
     408:	02020100 	andeq	r0, r2, #0, 2
     40c:	00010202 	andeq	r0, r1, r2, lsl #4
     410:	01020201 	tsteq	r2, r1, lsl #4
     414:	01020201 	tsteq	r2, r1, lsl #4
     418:	01020201 	tsteq	r2, r1, lsl #4
     41c:	01020202 	tsteq	r2, r2, lsl #4
     420:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     424:	01020201 	tsteq	r2, r1, lsl #4
     428:	01020201 	tsteq	r2, r1, lsl #4
     42c:	01020201 	tsteq	r2, r1, lsl #4
     430:	02020100 	andeq	r0, r2, #0, 2
     434:	00010202 	andeq	r0, r1, r2, lsl #4
     438:	01010000 	mrseq	r0, (UNDEF: 1)
     43c:	00000101 	andeq	r0, r0, r1, lsl #2
     440:	01000000 	mrseq	r0, (UNDEF: 0)
     444:	00000001 	andeq	r0, r0, r1
     448:	02010000 	andeq	r0, r1, #0
     44c:	00000102 	andeq	r0, r0, r2, lsl #2
     450:	02020100 	andeq	r0, r2, #0, 2
     454:	00000102 	andeq	r0, r0, r2, lsl #2
     458:	02010000 	andeq	r0, r1, #0
     45c:	00000102 	andeq	r0, r0, r2, lsl #2
     460:	02010000 	andeq	r0, r1, #0
     464:	00000102 	andeq	r0, r0, r2, lsl #2
     468:	02010000 	andeq	r0, r1, #0
     46c:	00000102 	andeq	r0, r0, r2, lsl #2
     470:	02020100 	andeq	r0, r2, #0, 2
     474:	00010202 	andeq	r0, r1, r2, lsl #4
     478:	01010000 	mrseq	r0, (UNDEF: 1)
     47c:	00000101 	andeq	r0, r0, r1, lsl #2
     480:	01010000 	mrseq	r0, (UNDEF: 1)
     484:	00000101 	andeq	r0, r0, r1, lsl #2
     488:	02020100 	andeq	r0, r2, #0, 2
     48c:	00010202 	andeq	r0, r1, r2, lsl #4
     490:	01020201 	tsteq	r2, r1, lsl #4
     494:	01020201 	tsteq	r2, r1, lsl #4
     498:	01010100 	mrseq	r0, (UNDEF: 17)
     49c:	01020201 	tsteq	r2, r1, lsl #4
     4a0:	02020100 	andeq	r0, r2, #0, 2
     4a4:	00010202 	andeq	r0, r1, r2, lsl #4
     4a8:	01020201 	tsteq	r2, r1, lsl #4
     4ac:	00010101 	andeq	r0, r1, r1, lsl #2
     4b0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     4b4:	01020202 	tsteq	r2, r2, lsl #4
     4b8:	01010100 	mrseq	r0, (UNDEF: 17)
     4bc:	00010101 	andeq	r0, r1, r1, lsl #2
     4c0:	01010000 	mrseq	r0, (UNDEF: 1)
     4c4:	00000101 	andeq	r0, r0, r1, lsl #2
     4c8:	02020100 	andeq	r0, r2, #0, 2
     4cc:	00010202 	andeq	r0, r1, r2, lsl #4
     4d0:	01020201 	tsteq	r2, r1, lsl #4
     4d4:	01020201 	tsteq	r2, r1, lsl #4
     4d8:	02010100 	andeq	r0, r1, #0, 2
     4dc:	00010202 	andeq	r0, r1, r2, lsl #4
     4e0:	01010100 	mrseq	r0, (UNDEF: 17)
     4e4:	01020201 	tsteq	r2, r1, lsl #4
     4e8:	01020201 	tsteq	r2, r1, lsl #4
     4ec:	01020201 	tsteq	r2, r1, lsl #4
     4f0:	02020100 	andeq	r0, r2, #0, 2
     4f4:	00010202 	andeq	r0, r1, r2, lsl #4
     4f8:	01010000 	mrseq	r0, (UNDEF: 1)
     4fc:	00000101 	andeq	r0, r0, r1, lsl #2
     500:	00010000 	andeq	r0, r1, r0
     504:	00010100 	andeq	r0, r1, r0, lsl #2
     508:	01020100 	mrseq	r0, (UNDEF: 18)
     50c:	01020201 	tsteq	r2, r1, lsl #4
     510:	01020201 	tsteq	r2, r1, lsl #4
     514:	01020201 	tsteq	r2, r1, lsl #4
     518:	01020201 	tsteq	r2, r1, lsl #4
     51c:	01020201 	tsteq	r2, r1, lsl #4
     520:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     524:	01020202 	tsteq	r2, r2, lsl #4
     528:	01010100 	mrseq	r0, (UNDEF: 17)
     52c:	01020201 	tsteq	r2, r1, lsl #4
     530:	00000000 	andeq	r0, r0, r0
     534:	01020201 	tsteq	r2, r1, lsl #4
     538:	00000000 	andeq	r0, r0, r0
     53c:	00010100 	andeq	r0, r1, r0, lsl #2
     540:	01010100 	mrseq	r0, (UNDEF: 17)
     544:	00000101 	andeq	r0, r0, r1, lsl #2
     548:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     54c:	00010202 	andeq	r0, r1, r2, lsl #4
     550:	01020201 	tsteq	r2, r1, lsl #4
     554:	00000101 	andeq	r0, r0, r1, lsl #2
     558:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     55c:	00010202 	andeq	r0, r1, r2, lsl #4
     560:	01010100 	mrseq	r0, (UNDEF: 17)
     564:	01020201 	tsteq	r2, r1, lsl #4
     568:	01020201 	tsteq	r2, r1, lsl #4
     56c:	01020201 	tsteq	r2, r1, lsl #4
     570:	02020100 	andeq	r0, r2, #0, 2
     574:	00010202 	andeq	r0, r1, r2, lsl #4
     578:	01010000 	mrseq	r0, (UNDEF: 1)
     57c:	00000101 	andeq	r0, r0, r1, lsl #2
     580:	01010000 	mrseq	r0, (UNDEF: 1)
     584:	00000101 	andeq	r0, r0, r1, lsl #2
     588:	02020100 	andeq	r0, r2, #0, 2
     58c:	00010202 	andeq	r0, r1, r2, lsl #4
     590:	01020201 	tsteq	r2, r1, lsl #4
     594:	00000101 	andeq	r0, r0, r1, lsl #2
     598:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     59c:	00010202 	andeq	r0, r1, r2, lsl #4
     5a0:	01020201 	tsteq	r2, r1, lsl #4
     5a4:	01020201 	tsteq	r2, r1, lsl #4
     5a8:	01020201 	tsteq	r2, r1, lsl #4
     5ac:	01020201 	tsteq	r2, r1, lsl #4
     5b0:	02020100 	andeq	r0, r2, #0, 2
     5b4:	00010202 	andeq	r0, r1, r2, lsl #4
     5b8:	01010000 	mrseq	r0, (UNDEF: 1)
     5bc:	00000101 	andeq	r0, r0, r1, lsl #2
     5c0:	01010000 	mrseq	r0, (UNDEF: 1)
     5c4:	00010101 	andeq	r0, r1, r1, lsl #2
     5c8:	02020100 	andeq	r0, r2, #0, 2
     5cc:	01020202 	tsteq	r2, r2, lsl #4
     5d0:	01010000 	mrseq	r0, (UNDEF: 1)
     5d4:	01020201 	tsteq	r2, r1, lsl #4
     5d8:	00000000 	andeq	r0, r0, r0
     5dc:	01020201 	tsteq	r2, r1, lsl #4
     5e0:	01000000 	mrseq	r0, (UNDEF: 0)
     5e4:	00010202 	andeq	r0, r1, r2, lsl #4
     5e8:	01000000 	mrseq	r0, (UNDEF: 0)
     5ec:	00010202 	andeq	r0, r1, r2, lsl #4
     5f0:	01000000 	mrseq	r0, (UNDEF: 0)
     5f4:	00010202 	andeq	r0, r1, r2, lsl #4
     5f8:	00000000 	andeq	r0, r0, r0
     5fc:	00000101 	andeq	r0, r0, r1, lsl #2
     600:	01010000 	mrseq	r0, (UNDEF: 1)
     604:	00000101 	andeq	r0, r0, r1, lsl #2
     608:	02020100 	andeq	r0, r2, #0, 2
     60c:	00010202 	andeq	r0, r1, r2, lsl #4
     610:	01020201 	tsteq	r2, r1, lsl #4
     614:	01020201 	tsteq	r2, r1, lsl #4
     618:	02020100 	andeq	r0, r2, #0, 2
     61c:	00010202 	andeq	r0, r1, r2, lsl #4
     620:	01020201 	tsteq	r2, r1, lsl #4
     624:	01020201 	tsteq	r2, r1, lsl #4
     628:	01020201 	tsteq	r2, r1, lsl #4
     62c:	01020201 	tsteq	r2, r1, lsl #4
     630:	02020100 	andeq	r0, r2, #0, 2
     634:	00010202 	andeq	r0, r1, r2, lsl #4
     638:	01010000 	mrseq	r0, (UNDEF: 1)
     63c:	00000101 	andeq	r0, r0, r1, lsl #2
     640:	01010000 	mrseq	r0, (UNDEF: 1)
     644:	00010101 	andeq	r0, r1, r1, lsl #2
     648:	02020100 	andeq	r0, r2, #0, 2
     64c:	01020202 	tsteq	r2, r2, lsl #4
     650:	01020201 	tsteq	r2, r1, lsl #4
     654:	01020201 	tsteq	r2, r1, lsl #4
     658:	01020201 	tsteq	r2, r1, lsl #4
     65c:	01020201 	tsteq	r2, r1, lsl #4
     660:	02020100 	andeq	r0, r2, #0, 2
     664:	01020202 	tsteq	r2, r2, lsl #4
     668:	01010000 	mrseq	r0, (UNDEF: 1)
     66c:	01020201 	tsteq	r2, r1, lsl #4
     670:	00000000 	andeq	r0, r0, r0
     674:	01020201 	tsteq	r2, r1, lsl #4
     678:	00000000 	andeq	r0, r0, r0
     67c:	00010100 	andeq	r0, r1, r0, lsl #2
     680:	01000000 	mrseq	r0, (UNDEF: 0)
     684:	00000001 	andeq	r0, r0, r1
     688:	02010000 	andeq	r0, r1, #0
     68c:	00000102 	andeq	r0, r0, r2, lsl #2
     690:	02010000 	andeq	r0, r1, #0
     694:	00000102 	andeq	r0, r0, r2, lsl #2
     698:	01000000 	mrseq	r0, (UNDEF: 0)
     69c:	00000001 	andeq	r0, r0, r1
     6a0:	01000000 	mrseq	r0, (UNDEF: 0)
     6a4:	00000001 	andeq	r0, r0, r1
     6a8:	02010000 	andeq	r0, r1, #0
     6ac:	00000102 	andeq	r0, r0, r2, lsl #2
     6b0:	02010000 	andeq	r0, r1, #0
     6b4:	00000102 	andeq	r0, r0, r2, lsl #2
     6b8:	01000000 	mrseq	r0, (UNDEF: 0)
     6bc:	00000001 	andeq	r0, r0, r1
     6c0:	01000000 	mrseq	r0, (UNDEF: 0)
     6c4:	00000001 	andeq	r0, r0, r1
     6c8:	02010000 	andeq	r0, r1, #0
     6cc:	00000102 	andeq	r0, r0, r2, lsl #2
     6d0:	02010000 	andeq	r0, r1, #0
     6d4:	00000102 	andeq	r0, r0, r2, lsl #2
     6d8:	01000000 	mrseq	r0, (UNDEF: 0)
     6dc:	00000001 	andeq	r0, r0, r1
     6e0:	01000000 	mrseq	r0, (UNDEF: 0)
     6e4:	00000001 	andeq	r0, r0, r1
     6e8:	02010000 	andeq	r0, r1, #0
     6ec:	00000102 	andeq	r0, r0, r2, lsl #2
     6f0:	01010000 	mrseq	r0, (UNDEF: 1)
     6f4:	00000102 	andeq	r0, r0, r2, lsl #2
     6f8:	01000000 	mrseq	r0, (UNDEF: 0)
     6fc:	00000001 	andeq	r0, r0, r1
     700:	00000000 	andeq	r0, r0, r0
     704:	01010100 	mrseq	r0, (UNDEF: 17)
     708:	01000000 	mrseq	r0, (UNDEF: 0)
     70c:	01020201 	tsteq	r2, r1, lsl #4
     710:	02010100 	andeq	r0, r1, #0, 2
     714:	01020202 	tsteq	r2, r2, lsl #4
     718:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     71c:	00010101 	andeq	r0, r1, r1, lsl #2
     720:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     724:	00010101 	andeq	r0, r1, r1, lsl #2
     728:	02010100 	andeq	r0, r1, #0, 2
     72c:	01020202 	tsteq	r2, r2, lsl #4
     730:	01000000 	mrseq	r0, (UNDEF: 0)
     734:	01020201 	tsteq	r2, r1, lsl #4
     738:	00000000 	andeq	r0, r0, r0
     73c:	01010100 	mrseq	r0, (UNDEF: 17)
	...
     748:	01010000 	mrseq	r0, (UNDEF: 1)
     74c:	00000101 	andeq	r0, r0, r1, lsl #2
     750:	02020100 	andeq	r0, r2, #0, 2
     754:	00010202 	andeq	r0, r1, r2, lsl #4
     758:	01010000 	mrseq	r0, (UNDEF: 1)
     75c:	00000101 	andeq	r0, r0, r1, lsl #2
     760:	01010000 	mrseq	r0, (UNDEF: 1)
     764:	00000101 	andeq	r0, r0, r1, lsl #2
     768:	02020100 	andeq	r0, r2, #0, 2
     76c:	00010202 	andeq	r0, r1, r2, lsl #4
     770:	01010000 	mrseq	r0, (UNDEF: 1)
     774:	00000101 	andeq	r0, r0, r1, lsl #2
	...
     780:	00010101 	andeq	r0, r1, r1, lsl #2
     784:	00000000 	andeq	r0, r0, r0
     788:	01020201 	tsteq	r2, r1, lsl #4
     78c:	00000001 	andeq	r0, r0, r1
     790:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     794:	00010102 	andeq	r0, r1, r2, lsl #2
     798:	01010100 	mrseq	r0, (UNDEF: 17)
     79c:	01020202 	tsteq	r2, r2, lsl #4
     7a0:	01010100 	mrseq	r0, (UNDEF: 17)
     7a4:	01020202 	tsteq	r2, r2, lsl #4
     7a8:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     7ac:	00010102 	andeq	r0, r1, r2, lsl #2
     7b0:	01020201 	tsteq	r2, r1, lsl #4
     7b4:	00000001 	andeq	r0, r0, r1
     7b8:	00010101 	andeq	r0, r1, r1, lsl #2
     7bc:	00000000 	andeq	r0, r0, r0
     7c0:	01010000 	mrseq	r0, (UNDEF: 1)
     7c4:	00000101 	andeq	r0, r0, r1, lsl #2
     7c8:	02020100 	andeq	r0, r2, #0, 2
     7cc:	00010202 	andeq	r0, r1, r2, lsl #4
     7d0:	01020201 	tsteq	r2, r1, lsl #4
     7d4:	01020201 	tsteq	r2, r1, lsl #4
     7d8:	01010100 	mrseq	r0, (UNDEF: 17)
     7dc:	01020201 	tsteq	r2, r1, lsl #4
     7e0:	02010000 	andeq	r0, r1, #0
     7e4:	00010202 	andeq	r0, r1, r2, lsl #4
     7e8:	01000000 	mrseq	r0, (UNDEF: 0)
     7ec:	00000101 	andeq	r0, r0, r1, lsl #2
     7f0:	02010000 	andeq	r0, r1, #0
     7f4:	00000102 	andeq	r0, r0, r2, lsl #2
     7f8:	01000000 	mrseq	r0, (UNDEF: 0)
     7fc:	00000001 	andeq	r0, r0, r1
     800:	01010000 	mrseq	r0, (UNDEF: 1)
     804:	00000101 	andeq	r0, r0, r1, lsl #2
     808:	02020100 	andeq	r0, r2, #0, 2
     80c:	00010202 	andeq	r0, r1, r2, lsl #4
     810:	01010201 	tsteq	r1, r1, lsl #4
     814:	01020101 	tsteq	r2, r1, lsl #2
     818:	02010201 	andeq	r0, r1, #268435456	; 0x10000000
     81c:	01020102 	tsteq	r2, r2, lsl #2
     820:	02010201 	andeq	r0, r1, #268435456	; 0x10000000
     824:	01020202 	tsteq	r2, r2, lsl #4
     828:	01010201 	tsteq	r1, r1, lsl #4
     82c:	01010101 	tsteq	r1, r1, lsl #2
     830:	02020100 	andeq	r0, r2, #0, 2
     834:	00010202 	andeq	r0, r1, r2, lsl #4
     838:	01010000 	mrseq	r0, (UNDEF: 1)
     83c:	00000101 	andeq	r0, r0, r1, lsl #2
     840:	01000000 	mrseq	r0, (UNDEF: 0)
     844:	00000001 	andeq	r0, r0, r1
     848:	02010000 	andeq	r0, r1, #0
     84c:	00000102 	andeq	r0, r0, r2, lsl #2
     850:	01020100 	mrseq	r0, (UNDEF: 18)
     854:	00010201 	andeq	r0, r1, r1, lsl #4
     858:	01020201 	tsteq	r2, r1, lsl #4
     85c:	01020201 	tsteq	r2, r1, lsl #4
     860:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     864:	01020202 	tsteq	r2, r2, lsl #4
     868:	01020201 	tsteq	r2, r1, lsl #4
     86c:	01020201 	tsteq	r2, r1, lsl #4
     870:	01020201 	tsteq	r2, r1, lsl #4
     874:	01020201 	tsteq	r2, r1, lsl #4
     878:	00010100 	andeq	r0, r1, r0, lsl #2
     87c:	00010100 	andeq	r0, r1, r0, lsl #2
     880:	01010101 	tsteq	r1, r1, lsl #2
     884:	00000101 	andeq	r0, r0, r1, lsl #2
     888:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     88c:	00010202 	andeq	r0, r1, r2, lsl #4
     890:	01020201 	tsteq	r2, r1, lsl #4
     894:	01020201 	tsteq	r2, r1, lsl #4
     898:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     89c:	00010202 	andeq	r0, r1, r2, lsl #4
     8a0:	01020201 	tsteq	r2, r1, lsl #4
     8a4:	01020201 	tsteq	r2, r1, lsl #4
     8a8:	01020201 	tsteq	r2, r1, lsl #4
     8ac:	01020201 	tsteq	r2, r1, lsl #4
     8b0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     8b4:	00010202 	andeq	r0, r1, r2, lsl #4
     8b8:	01010101 	tsteq	r1, r1, lsl #2
     8bc:	00000101 	andeq	r0, r0, r1, lsl #2
     8c0:	01010000 	mrseq	r0, (UNDEF: 1)
     8c4:	00000101 	andeq	r0, r0, r1, lsl #2
     8c8:	02020100 	andeq	r0, r2, #0, 2
     8cc:	00010202 	andeq	r0, r1, r2, lsl #4
     8d0:	01020201 	tsteq	r2, r1, lsl #4
     8d4:	01020201 	tsteq	r2, r1, lsl #4
     8d8:	01020201 	tsteq	r2, r1, lsl #4
     8dc:	00010101 	andeq	r0, r1, r1, lsl #2
     8e0:	01020201 	tsteq	r2, r1, lsl #4
     8e4:	00010101 	andeq	r0, r1, r1, lsl #2
     8e8:	01020201 	tsteq	r2, r1, lsl #4
     8ec:	01020201 	tsteq	r2, r1, lsl #4
     8f0:	02020100 	andeq	r0, r2, #0, 2
     8f4:	00010202 	andeq	r0, r1, r2, lsl #4
     8f8:	01010000 	mrseq	r0, (UNDEF: 1)
     8fc:	00000101 	andeq	r0, r0, r1, lsl #2
     900:	01010100 	mrseq	r0, (UNDEF: 17)
     904:	00000001 	andeq	r0, r0, r1
     908:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     90c:	00000102 	andeq	r0, r0, r2, lsl #2
     910:	01020201 	tsteq	r2, r1, lsl #4
     914:	00010201 	andeq	r0, r1, r1, lsl #4
     918:	01020201 	tsteq	r2, r1, lsl #4
     91c:	01020201 	tsteq	r2, r1, lsl #4
     920:	01020201 	tsteq	r2, r1, lsl #4
     924:	01020201 	tsteq	r2, r1, lsl #4
     928:	01020201 	tsteq	r2, r1, lsl #4
     92c:	00010201 	andeq	r0, r1, r1, lsl #4
     930:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     934:	00000102 	andeq	r0, r0, r2, lsl #2
     938:	01010100 	mrseq	r0, (UNDEF: 17)
     93c:	00000001 	andeq	r0, r0, r1
     940:	01010100 	mrseq	r0, (UNDEF: 17)
     944:	00010101 	andeq	r0, r1, r1, lsl #2
     948:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     94c:	01020202 	tsteq	r2, r2, lsl #4
     950:	01020201 	tsteq	r2, r1, lsl #4
     954:	00010101 	andeq	r0, r1, r1, lsl #2
     958:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     95c:	00010202 	andeq	r0, r1, r2, lsl #4
     960:	01020201 	tsteq	r2, r1, lsl #4
     964:	00000101 	andeq	r0, r0, r1, lsl #2
     968:	01020201 	tsteq	r2, r1, lsl #4
     96c:	00010101 	andeq	r0, r1, r1, lsl #2
     970:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     974:	01020202 	tsteq	r2, r2, lsl #4
     978:	01010100 	mrseq	r0, (UNDEF: 17)
     97c:	00010101 	andeq	r0, r1, r1, lsl #2
     980:	01010100 	mrseq	r0, (UNDEF: 17)
     984:	00010101 	andeq	r0, r1, r1, lsl #2
     988:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     98c:	01020202 	tsteq	r2, r2, lsl #4
     990:	01020201 	tsteq	r2, r1, lsl #4
     994:	00010101 	andeq	r0, r1, r1, lsl #2
     998:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     99c:	00010202 	andeq	r0, r1, r2, lsl #4
     9a0:	01020201 	tsteq	r2, r1, lsl #4
     9a4:	00000101 	andeq	r0, r0, r1, lsl #2
     9a8:	01020201 	tsteq	r2, r1, lsl #4
     9ac:	00000000 	andeq	r0, r0, r0
     9b0:	01020201 	tsteq	r2, r1, lsl #4
     9b4:	00000000 	andeq	r0, r0, r0
     9b8:	00010100 	andeq	r0, r1, r0, lsl #2
     9bc:	00000000 	andeq	r0, r0, r0
     9c0:	01010000 	mrseq	r0, (UNDEF: 1)
     9c4:	00000101 	andeq	r0, r0, r1, lsl #2
     9c8:	02020100 	andeq	r0, r2, #0, 2
     9cc:	00010202 	andeq	r0, r1, r2, lsl #4
     9d0:	01020201 	tsteq	r2, r1, lsl #4
     9d4:	01020201 	tsteq	r2, r1, lsl #4
     9d8:	01020201 	tsteq	r2, r1, lsl #4
     9dc:	00010101 	andeq	r0, r1, r1, lsl #2
     9e0:	01020201 	tsteq	r2, r1, lsl #4
     9e4:	01020202 	tsteq	r2, r2, lsl #4
     9e8:	01020201 	tsteq	r2, r1, lsl #4
     9ec:	01020201 	tsteq	r2, r1, lsl #4
     9f0:	02020100 	andeq	r0, r2, #0, 2
     9f4:	01020202 	tsteq	r2, r2, lsl #4
     9f8:	01010000 	mrseq	r0, (UNDEF: 1)
     9fc:	00010101 	andeq	r0, r1, r1, lsl #2
     a00:	00010100 	andeq	r0, r1, r0, lsl #2
     a04:	00010100 	andeq	r0, r1, r0, lsl #2
     a08:	01020201 	tsteq	r2, r1, lsl #4
     a0c:	01020201 	tsteq	r2, r1, lsl #4
     a10:	01020201 	tsteq	r2, r1, lsl #4
     a14:	01020201 	tsteq	r2, r1, lsl #4
     a18:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     a1c:	01020202 	tsteq	r2, r2, lsl #4
     a20:	01020201 	tsteq	r2, r1, lsl #4
     a24:	01020201 	tsteq	r2, r1, lsl #4
     a28:	01020201 	tsteq	r2, r1, lsl #4
     a2c:	01020201 	tsteq	r2, r1, lsl #4
     a30:	01020201 	tsteq	r2, r1, lsl #4
     a34:	01020201 	tsteq	r2, r1, lsl #4
     a38:	00010100 	andeq	r0, r1, r0, lsl #2
     a3c:	00010100 	andeq	r0, r1, r0, lsl #2
     a40:	01010000 	mrseq	r0, (UNDEF: 1)
     a44:	00010101 	andeq	r0, r1, r1, lsl #2
     a48:	02020100 	andeq	r0, r2, #0, 2
     a4c:	00010202 	andeq	r0, r1, r2, lsl #4
     a50:	02010000 	andeq	r0, r1, #0
     a54:	00000102 	andeq	r0, r0, r2, lsl #2
     a58:	02010000 	andeq	r0, r1, #0
     a5c:	00000102 	andeq	r0, r0, r2, lsl #2
     a60:	02010000 	andeq	r0, r1, #0
     a64:	00000102 	andeq	r0, r0, r2, lsl #2
     a68:	02010000 	andeq	r0, r1, #0
     a6c:	00000102 	andeq	r0, r0, r2, lsl #2
     a70:	02020100 	andeq	r0, r2, #0, 2
     a74:	00010202 	andeq	r0, r1, r2, lsl #4
     a78:	01010000 	mrseq	r0, (UNDEF: 1)
     a7c:	00000101 	andeq	r0, r0, r1, lsl #2
     a80:	01000000 	mrseq	r0, (UNDEF: 0)
     a84:	00010101 	andeq	r0, r1, r1, lsl #2
     a88:	02010000 	andeq	r0, r1, #0
     a8c:	01020202 	tsteq	r2, r2, lsl #4
     a90:	01000000 	mrseq	r0, (UNDEF: 0)
     a94:	00010202 	andeq	r0, r1, r2, lsl #4
     a98:	01000000 	mrseq	r0, (UNDEF: 0)
     a9c:	00010202 	andeq	r0, r1, r2, lsl #4
     aa0:	01010100 	mrseq	r0, (UNDEF: 17)
     aa4:	00010202 	andeq	r0, r1, r2, lsl #4
     aa8:	01020201 	tsteq	r2, r1, lsl #4
     aac:	00010202 	andeq	r0, r1, r2, lsl #4
     ab0:	02020100 	andeq	r0, r2, #0, 2
     ab4:	00000102 	andeq	r0, r0, r2, lsl #2
     ab8:	01010000 	mrseq	r0, (UNDEF: 1)
     abc:	00000001 	andeq	r0, r0, r1
     ac0:	00010100 	andeq	r0, r1, r0, lsl #2
     ac4:	00010100 	andeq	r0, r1, r0, lsl #2
     ac8:	01020201 	tsteq	r2, r1, lsl #4
     acc:	01020201 	tsteq	r2, r1, lsl #4
     ad0:	01020201 	tsteq	r2, r1, lsl #4
     ad4:	00010202 	andeq	r0, r1, r2, lsl #4
     ad8:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     adc:	00000102 	andeq	r0, r0, r2, lsl #2
     ae0:	01020201 	tsteq	r2, r1, lsl #4
     ae4:	00010202 	andeq	r0, r1, r2, lsl #4
     ae8:	01020201 	tsteq	r2, r1, lsl #4
     aec:	01020201 	tsteq	r2, r1, lsl #4
     af0:	01020201 	tsteq	r2, r1, lsl #4
     af4:	01020201 	tsteq	r2, r1, lsl #4
     af8:	00010100 	andeq	r0, r1, r0, lsl #2
     afc:	00010100 	andeq	r0, r1, r0, lsl #2
     b00:	00010100 	andeq	r0, r1, r0, lsl #2
     b04:	00000000 	andeq	r0, r0, r0
     b08:	01020201 	tsteq	r2, r1, lsl #4
     b0c:	00000000 	andeq	r0, r0, r0
     b10:	01020201 	tsteq	r2, r1, lsl #4
     b14:	00000000 	andeq	r0, r0, r0
     b18:	01020201 	tsteq	r2, r1, lsl #4
     b1c:	00000000 	andeq	r0, r0, r0
     b20:	01020201 	tsteq	r2, r1, lsl #4
     b24:	00000000 	andeq	r0, r0, r0
     b28:	01020201 	tsteq	r2, r1, lsl #4
     b2c:	00010101 	andeq	r0, r1, r1, lsl #2
     b30:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     b34:	01020202 	tsteq	r2, r2, lsl #4
     b38:	01010100 	mrseq	r0, (UNDEF: 17)
     b3c:	00010101 	andeq	r0, r1, r1, lsl #2
     b40:	00010100 	andeq	r0, r1, r0, lsl #2
     b44:	00010000 	andeq	r0, r1, r0
     b48:	01020201 	tsteq	r2, r1, lsl #4
     b4c:	01020100 	mrseq	r0, (UNDEF: 18)
     b50:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     b54:	01020201 	tsteq	r2, r1, lsl #4
     b58:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     b5c:	01020202 	tsteq	r2, r2, lsl #4
     b60:	01020201 	tsteq	r2, r1, lsl #4
     b64:	01020102 	tsteq	r2, r2, lsl #2
     b68:	01020201 	tsteq	r2, r1, lsl #4
     b6c:	01020101 	tsteq	r2, r1, lsl #2
     b70:	01020201 	tsteq	r2, r1, lsl #4
     b74:	01020100 	mrseq	r0, (UNDEF: 18)
     b78:	00010100 	andeq	r0, r1, r0, lsl #2
     b7c:	00010000 	andeq	r0, r1, r0
     b80:	00010100 	andeq	r0, r1, r0, lsl #2
     b84:	00010000 	andeq	r0, r1, r0
     b88:	01020201 	tsteq	r2, r1, lsl #4
     b8c:	01020100 	mrseq	r0, (UNDEF: 18)
     b90:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     b94:	01020101 	tsteq	r2, r1, lsl #2
     b98:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     b9c:	01020102 	tsteq	r2, r2, lsl #2
     ba0:	01020201 	tsteq	r2, r1, lsl #4
     ba4:	01020202 	tsteq	r2, r2, lsl #4
     ba8:	01020201 	tsteq	r2, r1, lsl #4
     bac:	01020201 	tsteq	r2, r1, lsl #4
     bb0:	01020201 	tsteq	r2, r1, lsl #4
     bb4:	01020100 	mrseq	r0, (UNDEF: 18)
     bb8:	00010100 	andeq	r0, r1, r0, lsl #2
     bbc:	00010000 	andeq	r0, r1, r0
     bc0:	01010000 	mrseq	r0, (UNDEF: 1)
     bc4:	00000101 	andeq	r0, r0, r1, lsl #2
     bc8:	02020100 	andeq	r0, r2, #0, 2
     bcc:	00010202 	andeq	r0, r1, r2, lsl #4
     bd0:	01020201 	tsteq	r2, r1, lsl #4
     bd4:	01020201 	tsteq	r2, r1, lsl #4
     bd8:	01020201 	tsteq	r2, r1, lsl #4
     bdc:	01020201 	tsteq	r2, r1, lsl #4
     be0:	01020201 	tsteq	r2, r1, lsl #4
     be4:	01020201 	tsteq	r2, r1, lsl #4
     be8:	01020201 	tsteq	r2, r1, lsl #4
     bec:	01020201 	tsteq	r2, r1, lsl #4
     bf0:	02020100 	andeq	r0, r2, #0, 2
     bf4:	00010202 	andeq	r0, r1, r2, lsl #4
     bf8:	01010000 	mrseq	r0, (UNDEF: 1)
     bfc:	00000101 	andeq	r0, r0, r1, lsl #2
     c00:	01010100 	mrseq	r0, (UNDEF: 17)
     c04:	00000101 	andeq	r0, r0, r1, lsl #2
     c08:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     c0c:	00010202 	andeq	r0, r1, r2, lsl #4
     c10:	01020201 	tsteq	r2, r1, lsl #4
     c14:	01020201 	tsteq	r2, r1, lsl #4
     c18:	01020201 	tsteq	r2, r1, lsl #4
     c1c:	01020201 	tsteq	r2, r1, lsl #4
     c20:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     c24:	00010202 	andeq	r0, r1, r2, lsl #4
     c28:	01020201 	tsteq	r2, r1, lsl #4
     c2c:	00000101 	andeq	r0, r0, r1, lsl #2
     c30:	01020201 	tsteq	r2, r1, lsl #4
     c34:	00000000 	andeq	r0, r0, r0
     c38:	00010100 	andeq	r0, r1, r0, lsl #2
     c3c:	00000000 	andeq	r0, r0, r0
     c40:	01010000 	mrseq	r0, (UNDEF: 1)
     c44:	00000101 	andeq	r0, r0, r1, lsl #2
     c48:	02020100 	andeq	r0, r2, #0, 2
     c4c:	00010202 	andeq	r0, r1, r2, lsl #4
     c50:	01020201 	tsteq	r2, r1, lsl #4
     c54:	01020201 	tsteq	r2, r1, lsl #4
     c58:	01020201 	tsteq	r2, r1, lsl #4
     c5c:	01020201 	tsteq	r2, r1, lsl #4
     c60:	01020201 	tsteq	r2, r1, lsl #4
     c64:	01020202 	tsteq	r2, r2, lsl #4
     c68:	01020201 	tsteq	r2, r1, lsl #4
     c6c:	01010202 	tsteq	r1, r2, lsl #4
     c70:	02020100 	andeq	r0, r2, #0, 2
     c74:	01020102 	tsteq	r2, r2, lsl #2
     c78:	01010000 	mrseq	r0, (UNDEF: 1)
     c7c:	00010001 	andeq	r0, r1, r1
     c80:	01010100 	mrseq	r0, (UNDEF: 17)
     c84:	00000101 	andeq	r0, r0, r1, lsl #2
     c88:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     c8c:	00010202 	andeq	r0, r1, r2, lsl #4
     c90:	01020201 	tsteq	r2, r1, lsl #4
     c94:	01020201 	tsteq	r2, r1, lsl #4
     c98:	01020201 	tsteq	r2, r1, lsl #4
     c9c:	01020201 	tsteq	r2, r1, lsl #4
     ca0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     ca4:	00010202 	andeq	r0, r1, r2, lsl #4
     ca8:	01020201 	tsteq	r2, r1, lsl #4
     cac:	01020201 	tsteq	r2, r1, lsl #4
     cb0:	01020201 	tsteq	r2, r1, lsl #4
     cb4:	01020201 	tsteq	r2, r1, lsl #4
     cb8:	00010100 	andeq	r0, r1, r0, lsl #2
     cbc:	00010100 	andeq	r0, r1, r0, lsl #2
     cc0:	01010000 	mrseq	r0, (UNDEF: 1)
     cc4:	00000101 	andeq	r0, r0, r1, lsl #2
     cc8:	02020100 	andeq	r0, r2, #0, 2
     ccc:	00010202 	andeq	r0, r1, r2, lsl #4
     cd0:	01020201 	tsteq	r2, r1, lsl #4
     cd4:	00000101 	andeq	r0, r0, r1, lsl #2
     cd8:	02020100 	andeq	r0, r2, #0, 2
     cdc:	00010202 	andeq	r0, r1, r2, lsl #4
     ce0:	01010100 	mrseq	r0, (UNDEF: 17)
     ce4:	01020201 	tsteq	r2, r1, lsl #4
     ce8:	01010201 	tsteq	r1, r1, lsl #4
     cec:	01020201 	tsteq	r2, r1, lsl #4
     cf0:	02020100 	andeq	r0, r2, #0, 2
     cf4:	00010202 	andeq	r0, r1, r2, lsl #4
     cf8:	01010000 	mrseq	r0, (UNDEF: 1)
     cfc:	00000101 	andeq	r0, r0, r1, lsl #2
     d00:	01010100 	mrseq	r0, (UNDEF: 17)
     d04:	00010101 	andeq	r0, r1, r1, lsl #2
     d08:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     d0c:	01020202 	tsteq	r2, r2, lsl #4
     d10:	02010100 	andeq	r0, r1, #0, 2
     d14:	00010102 	andeq	r0, r1, r2, lsl #2
     d18:	02010000 	andeq	r0, r1, #0
     d1c:	00000102 	andeq	r0, r0, r2, lsl #2
     d20:	02010000 	andeq	r0, r1, #0
     d24:	00000102 	andeq	r0, r0, r2, lsl #2
     d28:	02010000 	andeq	r0, r1, #0
     d2c:	00000102 	andeq	r0, r0, r2, lsl #2
     d30:	02010000 	andeq	r0, r1, #0
     d34:	00000102 	andeq	r0, r0, r2, lsl #2
     d38:	01000000 	mrseq	r0, (UNDEF: 0)
     d3c:	00000001 	andeq	r0, r0, r1
     d40:	00010100 	andeq	r0, r1, r0, lsl #2
     d44:	00010100 	andeq	r0, r1, r0, lsl #2
     d48:	01020201 	tsteq	r2, r1, lsl #4
     d4c:	01020201 	tsteq	r2, r1, lsl #4
     d50:	01020201 	tsteq	r2, r1, lsl #4
     d54:	01020201 	tsteq	r2, r1, lsl #4
     d58:	01020201 	tsteq	r2, r1, lsl #4
     d5c:	01020201 	tsteq	r2, r1, lsl #4
     d60:	01020201 	tsteq	r2, r1, lsl #4
     d64:	01020201 	tsteq	r2, r1, lsl #4
     d68:	01020201 	tsteq	r2, r1, lsl #4
     d6c:	01020201 	tsteq	r2, r1, lsl #4
     d70:	02020100 	andeq	r0, r2, #0, 2
     d74:	00010202 	andeq	r0, r1, r2, lsl #4
     d78:	01010000 	mrseq	r0, (UNDEF: 1)
     d7c:	00000101 	andeq	r0, r0, r1, lsl #2
     d80:	00010100 	andeq	r0, r1, r0, lsl #2
     d84:	00010100 	andeq	r0, r1, r0, lsl #2
     d88:	01020201 	tsteq	r2, r1, lsl #4
     d8c:	01020201 	tsteq	r2, r1, lsl #4
     d90:	01020201 	tsteq	r2, r1, lsl #4
     d94:	01020201 	tsteq	r2, r1, lsl #4
     d98:	01020201 	tsteq	r2, r1, lsl #4
     d9c:	01020201 	tsteq	r2, r1, lsl #4
     da0:	01020100 	mrseq	r0, (UNDEF: 18)
     da4:	00010201 	andeq	r0, r1, r1, lsl #4
     da8:	02020100 	andeq	r0, r2, #0, 2
     dac:	00010202 	andeq	r0, r1, r2, lsl #4
     db0:	02010000 	andeq	r0, r1, #0
     db4:	00000102 	andeq	r0, r0, r2, lsl #2
     db8:	01000000 	mrseq	r0, (UNDEF: 0)
     dbc:	00000001 	andeq	r0, r0, r1
     dc0:	00010100 	andeq	r0, r1, r0, lsl #2
     dc4:	00010001 	andeq	r0, r1, r1
     dc8:	01020201 	tsteq	r2, r1, lsl #4
     dcc:	01020102 	tsteq	r2, r2, lsl #2
     dd0:	01020201 	tsteq	r2, r1, lsl #4
     dd4:	01020102 	tsteq	r2, r2, lsl #2
     dd8:	01020201 	tsteq	r2, r1, lsl #4
     ddc:	01020102 	tsteq	r2, r2, lsl #2
     de0:	01020201 	tsteq	r2, r1, lsl #4
     de4:	01020102 	tsteq	r2, r2, lsl #2
     de8:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     dec:	01020202 	tsteq	r2, r2, lsl #4
     df0:	02020100 	andeq	r0, r2, #0, 2
     df4:	00010201 	andeq	r0, r1, r1, lsl #4
     df8:	01010000 	mrseq	r0, (UNDEF: 1)
     dfc:	00000100 	andeq	r0, r0, r0, lsl #2
     e00:	00010100 	andeq	r0, r1, r0, lsl #2
     e04:	00010000 	andeq	r0, r1, r0
     e08:	01020201 	tsteq	r2, r1, lsl #4
     e0c:	01020100 	mrseq	r0, (UNDEF: 18)
     e10:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     e14:	00010201 	andeq	r0, r1, r1, lsl #4
     e18:	02020100 	andeq	r0, r2, #0, 2
     e1c:	00000102 	andeq	r0, r0, r2, lsl #2
     e20:	02010000 	andeq	r0, r1, #0
     e24:	00010202 	andeq	r0, r1, r2, lsl #4
     e28:	01020100 	mrseq	r0, (UNDEF: 18)
     e2c:	01020202 	tsteq	r2, r2, lsl #4
     e30:	00010201 	andeq	r0, r1, r1, lsl #4
     e34:	01020201 	tsteq	r2, r1, lsl #4
     e38:	00000100 	andeq	r0, r0, r0, lsl #2
     e3c:	00010100 	andeq	r0, r1, r0, lsl #2
     e40:	00010100 	andeq	r0, r1, r0, lsl #2
     e44:	00010100 	andeq	r0, r1, r0, lsl #2
     e48:	01020201 	tsteq	r2, r1, lsl #4
     e4c:	01020201 	tsteq	r2, r1, lsl #4
     e50:	01020201 	tsteq	r2, r1, lsl #4
     e54:	01020201 	tsteq	r2, r1, lsl #4
     e58:	02020100 	andeq	r0, r2, #0, 2
     e5c:	00010202 	andeq	r0, r1, r2, lsl #4
     e60:	02010000 	andeq	r0, r1, #0
     e64:	00000102 	andeq	r0, r0, r2, lsl #2
     e68:	02010000 	andeq	r0, r1, #0
     e6c:	00000102 	andeq	r0, r0, r2, lsl #2
     e70:	02010000 	andeq	r0, r1, #0
     e74:	00000102 	andeq	r0, r0, r2, lsl #2
     e78:	01000000 	mrseq	r0, (UNDEF: 0)
     e7c:	00000001 	andeq	r0, r0, r1
     e80:	01010100 	mrseq	r0, (UNDEF: 17)
     e84:	00010101 	andeq	r0, r1, r1, lsl #2
     e88:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     e8c:	01020202 	tsteq	r2, r2, lsl #4
     e90:	01010100 	mrseq	r0, (UNDEF: 17)
     e94:	01020201 	tsteq	r2, r1, lsl #4
     e98:	01010000 	mrseq	r0, (UNDEF: 1)
     e9c:	00010202 	andeq	r0, r1, r2, lsl #4
     ea0:	02020100 	andeq	r0, r2, #0, 2
     ea4:	00000101 	andeq	r0, r0, r1, lsl #2
     ea8:	01020201 	tsteq	r2, r1, lsl #4
     eac:	00010101 	andeq	r0, r1, r1, lsl #2
     eb0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     eb4:	01020202 	tsteq	r2, r2, lsl #4
     eb8:	01010100 	mrseq	r0, (UNDEF: 17)
     ebc:	00010101 	andeq	r0, r1, r1, lsl #2
     ec0:	01010000 	mrseq	r0, (UNDEF: 1)
     ec4:	00000001 	andeq	r0, r0, r1
     ec8:	02020100 	andeq	r0, r2, #0, 2
     ecc:	00000102 	andeq	r0, r0, r2, lsl #2
     ed0:	02020100 	andeq	r0, r2, #0, 2
     ed4:	00000001 	andeq	r0, r0, r1
     ed8:	02020100 	andeq	r0, r2, #0, 2
     edc:	00000001 	andeq	r0, r0, r1
     ee0:	02020100 	andeq	r0, r2, #0, 2
     ee4:	00000001 	andeq	r0, r0, r1
     ee8:	02020100 	andeq	r0, r2, #0, 2
     eec:	00000001 	andeq	r0, r0, r1
     ef0:	02020100 	andeq	r0, r2, #0, 2
     ef4:	00000102 	andeq	r0, r0, r2, lsl #2
     ef8:	01010000 	mrseq	r0, (UNDEF: 1)
     efc:	00000001 	andeq	r0, r0, r1
     f00:	00010100 	andeq	r0, r1, r0, lsl #2
     f04:	00000000 	andeq	r0, r0, r0
     f08:	01020201 	tsteq	r2, r1, lsl #4
     f0c:	00000000 	andeq	r0, r0, r0
     f10:	01020201 	tsteq	r2, r1, lsl #4
     f14:	00000000 	andeq	r0, r0, r0
     f18:	02020100 	andeq	r0, r2, #0, 2
     f1c:	00000001 	andeq	r0, r0, r1
     f20:	02010000 	andeq	r0, r1, #0
     f24:	00000102 	andeq	r0, r0, r2, lsl #2
     f28:	01000000 	mrseq	r0, (UNDEF: 0)
     f2c:	00010202 	andeq	r0, r1, r2, lsl #4
     f30:	01000000 	mrseq	r0, (UNDEF: 0)
     f34:	00010202 	andeq	r0, r1, r2, lsl #4
     f38:	00000000 	andeq	r0, r0, r0
     f3c:	00000101 	andeq	r0, r0, r1, lsl #2
     f40:	01000000 	mrseq	r0, (UNDEF: 0)
     f44:	00000101 	andeq	r0, r0, r1, lsl #2
     f48:	02010000 	andeq	r0, r1, #0
     f4c:	00010202 	andeq	r0, r1, r2, lsl #4
     f50:	01000000 	mrseq	r0, (UNDEF: 0)
     f54:	00010202 	andeq	r0, r1, r2, lsl #4
     f58:	01000000 	mrseq	r0, (UNDEF: 0)
     f5c:	00010202 	andeq	r0, r1, r2, lsl #4
     f60:	01000000 	mrseq	r0, (UNDEF: 0)
     f64:	00010202 	andeq	r0, r1, r2, lsl #4
     f68:	01000000 	mrseq	r0, (UNDEF: 0)
     f6c:	00010202 	andeq	r0, r1, r2, lsl #4
     f70:	02010000 	andeq	r0, r1, #0
     f74:	00010202 	andeq	r0, r1, r2, lsl #4
     f78:	01000000 	mrseq	r0, (UNDEF: 0)
     f7c:	00000101 	andeq	r0, r0, r1, lsl #2
     f80:	01000000 	mrseq	r0, (UNDEF: 0)
     f84:	00000000 	andeq	r0, r0, r0
     f88:	02010000 	andeq	r0, r1, #0
     f8c:	00000001 	andeq	r0, r0, r1
     f90:	02020100 	andeq	r0, r2, #0, 2
     f94:	00000102 	andeq	r0, r0, r2, lsl #2
     f98:	01010000 	mrseq	r0, (UNDEF: 1)
     f9c:	00000001 	andeq	r0, r0, r1
	...
     fe8:	01010100 	mrseq	r0, (UNDEF: 17)
     fec:	00010101 	andeq	r0, r1, r1, lsl #2
     ff0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
     ff4:	01020202 	tsteq	r2, r2, lsl #4
     ff8:	01010100 	mrseq	r0, (UNDEF: 17)
     ffc:	00010101 	andeq	r0, r1, r1, lsl #2
    1000:	01000000 	mrseq	r0, (UNDEF: 0)
    1004:	00000001 	andeq	r0, r0, r1
    1008:	02010000 	andeq	r0, r1, #0
    100c:	00000102 	andeq	r0, r0, r2, lsl #2
    1010:	02010000 	andeq	r0, r1, #0
    1014:	00000001 	andeq	r0, r0, r1
    1018:	01000000 	mrseq	r0, (UNDEF: 0)
	...
    1048:	01010000 	mrseq	r0, (UNDEF: 1)
    104c:	00000101 	andeq	r0, r0, r1, lsl #2
    1050:	02020100 	andeq	r0, r2, #0, 2
    1054:	00010202 	andeq	r0, r1, r2, lsl #4
    1058:	01010000 	mrseq	r0, (UNDEF: 1)
    105c:	01020201 	tsteq	r2, r1, lsl #4
    1060:	02020100 	andeq	r0, r2, #0, 2
    1064:	01020202 	tsteq	r2, r2, lsl #4
    1068:	01020201 	tsteq	r2, r1, lsl #4
    106c:	01020201 	tsteq	r2, r1, lsl #4
    1070:	02020100 	andeq	r0, r2, #0, 2
    1074:	01020202 	tsteq	r2, r2, lsl #4
    1078:	01010000 	mrseq	r0, (UNDEF: 1)
    107c:	00010101 	andeq	r0, r1, r1, lsl #2
    1080:	00010100 	andeq	r0, r1, r0, lsl #2
    1084:	00000000 	andeq	r0, r0, r0
    1088:	01020201 	tsteq	r2, r1, lsl #4
    108c:	00000101 	andeq	r0, r0, r1, lsl #2
    1090:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1094:	00010202 	andeq	r0, r1, r2, lsl #4
    1098:	01020201 	tsteq	r2, r1, lsl #4
    109c:	01020201 	tsteq	r2, r1, lsl #4
    10a0:	01020201 	tsteq	r2, r1, lsl #4
    10a4:	01020201 	tsteq	r2, r1, lsl #4
    10a8:	01020201 	tsteq	r2, r1, lsl #4
    10ac:	01020201 	tsteq	r2, r1, lsl #4
    10b0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    10b4:	00010202 	andeq	r0, r1, r2, lsl #4
    10b8:	01010100 	mrseq	r0, (UNDEF: 17)
    10bc:	00000101 	andeq	r0, r0, r1, lsl #2
	...
    10c8:	01010000 	mrseq	r0, (UNDEF: 1)
    10cc:	00000101 	andeq	r0, r0, r1, lsl #2
    10d0:	02020100 	andeq	r0, r2, #0, 2
    10d4:	00010202 	andeq	r0, r1, r2, lsl #4
    10d8:	01020201 	tsteq	r2, r1, lsl #4
    10dc:	00000101 	andeq	r0, r0, r1, lsl #2
    10e0:	01020201 	tsteq	r2, r1, lsl #4
    10e4:	00000000 	andeq	r0, r0, r0
    10e8:	01020201 	tsteq	r2, r1, lsl #4
    10ec:	00000101 	andeq	r0, r0, r1, lsl #2
    10f0:	02020100 	andeq	r0, r2, #0, 2
    10f4:	00010202 	andeq	r0, r1, r2, lsl #4
    10f8:	01010000 	mrseq	r0, (UNDEF: 1)
    10fc:	00000101 	andeq	r0, r0, r1, lsl #2
    1100:	00000000 	andeq	r0, r0, r0
    1104:	00010100 	andeq	r0, r1, r0, lsl #2
    1108:	01010000 	mrseq	r0, (UNDEF: 1)
    110c:	01020101 	tsteq	r2, r1, lsl #2
    1110:	02020100 	andeq	r0, r2, #0, 2
    1114:	01020202 	tsteq	r2, r2, lsl #4
    1118:	01020201 	tsteq	r2, r1, lsl #4
    111c:	01020201 	tsteq	r2, r1, lsl #4
    1120:	01020201 	tsteq	r2, r1, lsl #4
    1124:	01020201 	tsteq	r2, r1, lsl #4
    1128:	01020201 	tsteq	r2, r1, lsl #4
    112c:	01020201 	tsteq	r2, r1, lsl #4
    1130:	02020100 	andeq	r0, r2, #0, 2
    1134:	01020202 	tsteq	r2, r2, lsl #4
    1138:	01010000 	mrseq	r0, (UNDEF: 1)
    113c:	00010101 	andeq	r0, r1, r1, lsl #2
	...
    1148:	01010000 	mrseq	r0, (UNDEF: 1)
    114c:	00000101 	andeq	r0, r0, r1, lsl #2
    1150:	02020100 	andeq	r0, r2, #0, 2
    1154:	00010202 	andeq	r0, r1, r2, lsl #4
    1158:	01020201 	tsteq	r2, r1, lsl #4
    115c:	01020201 	tsteq	r2, r1, lsl #4
    1160:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1164:	01020202 	tsteq	r2, r2, lsl #4
    1168:	01020201 	tsteq	r2, r1, lsl #4
    116c:	00010101 	andeq	r0, r1, r1, lsl #2
    1170:	02020100 	andeq	r0, r2, #0, 2
    1174:	00010202 	andeq	r0, r1, r2, lsl #4
    1178:	01010000 	mrseq	r0, (UNDEF: 1)
    117c:	00000101 	andeq	r0, r0, r1, lsl #2
    1180:	01000000 	mrseq	r0, (UNDEF: 0)
    1184:	00000101 	andeq	r0, r0, r1, lsl #2
    1188:	02010000 	andeq	r0, r1, #0
    118c:	00010202 	andeq	r0, r1, r2, lsl #4
    1190:	02020100 	andeq	r0, r2, #0, 2
    1194:	00000101 	andeq	r0, r0, r1, lsl #2
    1198:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    119c:	00010202 	andeq	r0, r1, r2, lsl #4
    11a0:	02020100 	andeq	r0, r2, #0, 2
    11a4:	00000101 	andeq	r0, r0, r1, lsl #2
    11a8:	02020100 	andeq	r0, r2, #0, 2
    11ac:	00000001 	andeq	r0, r0, r1
    11b0:	02020100 	andeq	r0, r2, #0, 2
    11b4:	00000001 	andeq	r0, r0, r1
    11b8:	01010000 	mrseq	r0, (UNDEF: 1)
	...
    11c8:	01010000 	mrseq	r0, (UNDEF: 1)
    11cc:	00010101 	andeq	r0, r1, r1, lsl #2
    11d0:	02020100 	andeq	r0, r2, #0, 2
    11d4:	01020202 	tsteq	r2, r2, lsl #4
    11d8:	01020201 	tsteq	r2, r1, lsl #4
    11dc:	01020201 	tsteq	r2, r1, lsl #4
    11e0:	02020100 	andeq	r0, r2, #0, 2
    11e4:	01020202 	tsteq	r2, r2, lsl #4
    11e8:	01010100 	mrseq	r0, (UNDEF: 17)
    11ec:	01020201 	tsteq	r2, r1, lsl #4
    11f0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    11f4:	00010202 	andeq	r0, r1, r2, lsl #4
    11f8:	01010100 	mrseq	r0, (UNDEF: 17)
    11fc:	00000101 	andeq	r0, r0, r1, lsl #2
    1200:	01010100 	mrseq	r0, (UNDEF: 17)
    1204:	00000000 	andeq	r0, r0, r0
    1208:	01020201 	tsteq	r2, r1, lsl #4
    120c:	00000101 	andeq	r0, r0, r1, lsl #2
    1210:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1214:	00010202 	andeq	r0, r1, r2, lsl #4
    1218:	01020201 	tsteq	r2, r1, lsl #4
    121c:	01020201 	tsteq	r2, r1, lsl #4
    1220:	01020201 	tsteq	r2, r1, lsl #4
    1224:	01020201 	tsteq	r2, r1, lsl #4
    1228:	01020201 	tsteq	r2, r1, lsl #4
    122c:	01020201 	tsteq	r2, r1, lsl #4
    1230:	01020201 	tsteq	r2, r1, lsl #4
    1234:	01020201 	tsteq	r2, r1, lsl #4
    1238:	01010100 	mrseq	r0, (UNDEF: 17)
    123c:	00010101 	andeq	r0, r1, r1, lsl #2
    1240:	01000000 	mrseq	r0, (UNDEF: 0)
    1244:	00000001 	andeq	r0, r0, r1
    1248:	02010000 	andeq	r0, r1, #0
    124c:	00000102 	andeq	r0, r0, r2, lsl #2
    1250:	01000000 	mrseq	r0, (UNDEF: 0)
    1254:	00000001 	andeq	r0, r0, r1
    1258:	02010000 	andeq	r0, r1, #0
    125c:	00000102 	andeq	r0, r0, r2, lsl #2
    1260:	02010000 	andeq	r0, r1, #0
    1264:	00000102 	andeq	r0, r0, r2, lsl #2
    1268:	02010000 	andeq	r0, r1, #0
    126c:	00000102 	andeq	r0, r0, r2, lsl #2
    1270:	01000000 	mrseq	r0, (UNDEF: 0)
    1274:	00010202 	andeq	r0, r1, r2, lsl #4
    1278:	00000000 	andeq	r0, r0, r0
    127c:	00000101 	andeq	r0, r0, r1, lsl #2
    1280:	00000000 	andeq	r0, r0, r0
    1284:	00000101 	andeq	r0, r0, r1, lsl #2
    1288:	01000000 	mrseq	r0, (UNDEF: 0)
    128c:	00010202 	andeq	r0, r1, r2, lsl #4
    1290:	00000000 	andeq	r0, r0, r0
    1294:	00000101 	andeq	r0, r0, r1, lsl #2
    1298:	01000000 	mrseq	r0, (UNDEF: 0)
    129c:	00010202 	andeq	r0, r1, r2, lsl #4
    12a0:	01000000 	mrseq	r0, (UNDEF: 0)
    12a4:	00010202 	andeq	r0, r1, r2, lsl #4
    12a8:	01010100 	mrseq	r0, (UNDEF: 17)
    12ac:	00010202 	andeq	r0, r1, r2, lsl #4
    12b0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    12b4:	00000102 	andeq	r0, r0, r2, lsl #2
    12b8:	01010100 	mrseq	r0, (UNDEF: 17)
    12bc:	00000001 	andeq	r0, r0, r1
    12c0:	00010100 	andeq	r0, r1, r0, lsl #2
    12c4:	00000000 	andeq	r0, r0, r0
    12c8:	01020201 	tsteq	r2, r1, lsl #4
    12cc:	00010100 	andeq	r0, r1, r0, lsl #2
    12d0:	01020201 	tsteq	r2, r1, lsl #4
    12d4:	01020201 	tsteq	r2, r1, lsl #4
    12d8:	01020201 	tsteq	r2, r1, lsl #4
    12dc:	00010202 	andeq	r0, r1, r2, lsl #4
    12e0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    12e4:	00000102 	andeq	r0, r0, r2, lsl #2
    12e8:	01020201 	tsteq	r2, r1, lsl #4
    12ec:	00010202 	andeq	r0, r1, r2, lsl #4
    12f0:	01020201 	tsteq	r2, r1, lsl #4
    12f4:	01020201 	tsteq	r2, r1, lsl #4
    12f8:	01010100 	mrseq	r0, (UNDEF: 17)
    12fc:	00010100 	andeq	r0, r1, r0, lsl #2
    1300:	01000000 	mrseq	r0, (UNDEF: 0)
    1304:	00000001 	andeq	r0, r0, r1
    1308:	02010000 	andeq	r0, r1, #0
    130c:	00000102 	andeq	r0, r0, r2, lsl #2
    1310:	02010000 	andeq	r0, r1, #0
    1314:	00000102 	andeq	r0, r0, r2, lsl #2
    1318:	02010000 	andeq	r0, r1, #0
    131c:	00000102 	andeq	r0, r0, r2, lsl #2
    1320:	02010000 	andeq	r0, r1, #0
    1324:	00000102 	andeq	r0, r0, r2, lsl #2
    1328:	02010000 	andeq	r0, r1, #0
    132c:	00000102 	andeq	r0, r0, r2, lsl #2
    1330:	01000000 	mrseq	r0, (UNDEF: 0)
    1334:	00010202 	andeq	r0, r1, r2, lsl #4
    1338:	00000000 	andeq	r0, r0, r0
    133c:	00000101 	andeq	r0, r0, r1, lsl #2
	...
    1348:	01010100 	mrseq	r0, (UNDEF: 17)
    134c:	00000100 	andeq	r0, r0, r0, lsl #2
    1350:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1354:	00010201 	andeq	r0, r1, r1, lsl #4
    1358:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    135c:	01020202 	tsteq	r2, r2, lsl #4
    1360:	01020201 	tsteq	r2, r1, lsl #4
    1364:	01020102 	tsteq	r2, r2, lsl #2
    1368:	01020201 	tsteq	r2, r1, lsl #4
    136c:	01020102 	tsteq	r2, r2, lsl #2
    1370:	01020201 	tsteq	r2, r1, lsl #4
    1374:	01020102 	tsteq	r2, r2, lsl #2
    1378:	00010100 	andeq	r0, r1, r0, lsl #2
    137c:	00010001 	andeq	r0, r1, r1
	...
    1388:	01010100 	mrseq	r0, (UNDEF: 17)
    138c:	00000101 	andeq	r0, r0, r1, lsl #2
    1390:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1394:	00010202 	andeq	r0, r1, r2, lsl #4
    1398:	01020201 	tsteq	r2, r1, lsl #4
    139c:	01020201 	tsteq	r2, r1, lsl #4
    13a0:	01020201 	tsteq	r2, r1, lsl #4
    13a4:	01020201 	tsteq	r2, r1, lsl #4
    13a8:	01020201 	tsteq	r2, r1, lsl #4
    13ac:	01020201 	tsteq	r2, r1, lsl #4
    13b0:	01020201 	tsteq	r2, r1, lsl #4
    13b4:	01020201 	tsteq	r2, r1, lsl #4
    13b8:	00010100 	andeq	r0, r1, r0, lsl #2
    13bc:	00010100 	andeq	r0, r1, r0, lsl #2
	...
    13c8:	01010000 	mrseq	r0, (UNDEF: 1)
    13cc:	00000101 	andeq	r0, r0, r1, lsl #2
    13d0:	02020100 	andeq	r0, r2, #0, 2
    13d4:	00010202 	andeq	r0, r1, r2, lsl #4
    13d8:	01020201 	tsteq	r2, r1, lsl #4
    13dc:	01020201 	tsteq	r2, r1, lsl #4
    13e0:	01020201 	tsteq	r2, r1, lsl #4
    13e4:	01020201 	tsteq	r2, r1, lsl #4
    13e8:	01020201 	tsteq	r2, r1, lsl #4
    13ec:	01020201 	tsteq	r2, r1, lsl #4
    13f0:	02020100 	andeq	r0, r2, #0, 2
    13f4:	00010202 	andeq	r0, r1, r2, lsl #4
    13f8:	01010000 	mrseq	r0, (UNDEF: 1)
    13fc:	00000101 	andeq	r0, r0, r1, lsl #2
	...
    1408:	01010100 	mrseq	r0, (UNDEF: 17)
    140c:	00000101 	andeq	r0, r0, r1, lsl #2
    1410:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1414:	00010202 	andeq	r0, r1, r2, lsl #4
    1418:	01020201 	tsteq	r2, r1, lsl #4
    141c:	01020201 	tsteq	r2, r1, lsl #4
    1420:	01020201 	tsteq	r2, r1, lsl #4
    1424:	01020201 	tsteq	r2, r1, lsl #4
    1428:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    142c:	00010202 	andeq	r0, r1, r2, lsl #4
    1430:	01020201 	tsteq	r2, r1, lsl #4
    1434:	00000101 	andeq	r0, r0, r1, lsl #2
    1438:	00010100 	andeq	r0, r1, r0, lsl #2
	...
    1448:	01010000 	mrseq	r0, (UNDEF: 1)
    144c:	00010101 	andeq	r0, r1, r1, lsl #2
    1450:	02020100 	andeq	r0, r2, #0, 2
    1454:	01020202 	tsteq	r2, r2, lsl #4
    1458:	01020201 	tsteq	r2, r1, lsl #4
    145c:	01020201 	tsteq	r2, r1, lsl #4
    1460:	01020201 	tsteq	r2, r1, lsl #4
    1464:	01020201 	tsteq	r2, r1, lsl #4
    1468:	02020100 	andeq	r0, r2, #0, 2
    146c:	01020202 	tsteq	r2, r2, lsl #4
    1470:	01010000 	mrseq	r0, (UNDEF: 1)
    1474:	01020201 	tsteq	r2, r1, lsl #4
    1478:	00000000 	andeq	r0, r0, r0
    147c:	00010100 	andeq	r0, r1, r0, lsl #2
	...
    1488:	01010100 	mrseq	r0, (UNDEF: 17)
    148c:	00000101 	andeq	r0, r0, r1, lsl #2
    1490:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1494:	00010202 	andeq	r0, r1, r2, lsl #4
    1498:	01020201 	tsteq	r2, r1, lsl #4
    149c:	01020201 	tsteq	r2, r1, lsl #4
    14a0:	01020201 	tsteq	r2, r1, lsl #4
    14a4:	00010100 	andeq	r0, r1, r0, lsl #2
    14a8:	01020201 	tsteq	r2, r1, lsl #4
    14ac:	00000000 	andeq	r0, r0, r0
    14b0:	01020201 	tsteq	r2, r1, lsl #4
    14b4:	00000000 	andeq	r0, r0, r0
    14b8:	00010100 	andeq	r0, r1, r0, lsl #2
	...
    14c8:	01010000 	mrseq	r0, (UNDEF: 1)
    14cc:	00000101 	andeq	r0, r0, r1, lsl #2
    14d0:	02020100 	andeq	r0, r2, #0, 2
    14d4:	00010202 	andeq	r0, r1, r2, lsl #4
    14d8:	01020201 	tsteq	r2, r1, lsl #4
    14dc:	00000101 	andeq	r0, r0, r1, lsl #2
    14e0:	02020100 	andeq	r0, r2, #0, 2
    14e4:	00010202 	andeq	r0, r1, r2, lsl #4
    14e8:	01010000 	mrseq	r0, (UNDEF: 1)
    14ec:	01020201 	tsteq	r2, r1, lsl #4
    14f0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    14f4:	00010202 	andeq	r0, r1, r2, lsl #4
    14f8:	01010100 	mrseq	r0, (UNDEF: 17)
    14fc:	00000101 	andeq	r0, r0, r1, lsl #2
    1500:	01010000 	mrseq	r0, (UNDEF: 1)
    1504:	00000000 	andeq	r0, r0, r0
    1508:	02020100 	andeq	r0, r2, #0, 2
    150c:	00000101 	andeq	r0, r0, r1, lsl #2
    1510:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1514:	00010202 	andeq	r0, r1, r2, lsl #4
    1518:	02020100 	andeq	r0, r2, #0, 2
    151c:	00000101 	andeq	r0, r0, r1, lsl #2
    1520:	02020100 	andeq	r0, r2, #0, 2
    1524:	00000001 	andeq	r0, r0, r1
    1528:	02020100 	andeq	r0, r2, #0, 2
    152c:	00000101 	andeq	r0, r0, r1, lsl #2
    1530:	02010000 	andeq	r0, r1, #0
    1534:	00010202 	andeq	r0, r1, r2, lsl #4
    1538:	01000000 	mrseq	r0, (UNDEF: 0)
    153c:	00000101 	andeq	r0, r0, r1, lsl #2
	...
    1548:	00010100 	andeq	r0, r1, r0, lsl #2
    154c:	00010100 	andeq	r0, r1, r0, lsl #2
    1550:	01020201 	tsteq	r2, r1, lsl #4
    1554:	01020201 	tsteq	r2, r1, lsl #4
    1558:	01020201 	tsteq	r2, r1, lsl #4
    155c:	01020201 	tsteq	r2, r1, lsl #4
    1560:	01020201 	tsteq	r2, r1, lsl #4
    1564:	01020201 	tsteq	r2, r1, lsl #4
    1568:	01020201 	tsteq	r2, r1, lsl #4
    156c:	01020201 	tsteq	r2, r1, lsl #4
    1570:	02020100 	andeq	r0, r2, #0, 2
    1574:	01020202 	tsteq	r2, r2, lsl #4
    1578:	01010000 	mrseq	r0, (UNDEF: 1)
    157c:	00010101 	andeq	r0, r1, r1, lsl #2
	...
    1588:	00010100 	andeq	r0, r1, r0, lsl #2
    158c:	00010100 	andeq	r0, r1, r0, lsl #2
    1590:	01020201 	tsteq	r2, r1, lsl #4
    1594:	01020201 	tsteq	r2, r1, lsl #4
    1598:	01020201 	tsteq	r2, r1, lsl #4
    159c:	01020201 	tsteq	r2, r1, lsl #4
    15a0:	01020201 	tsteq	r2, r1, lsl #4
    15a4:	01020201 	tsteq	r2, r1, lsl #4
    15a8:	02020100 	andeq	r0, r2, #0, 2
    15ac:	00010202 	andeq	r0, r1, r2, lsl #4
    15b0:	02010000 	andeq	r0, r1, #0
    15b4:	00000102 	andeq	r0, r0, r2, lsl #2
    15b8:	01000000 	mrseq	r0, (UNDEF: 0)
    15bc:	00000001 	andeq	r0, r0, r1
	...
    15c8:	00010100 	andeq	r0, r1, r0, lsl #2
    15cc:	00010001 	andeq	r0, r1, r1
    15d0:	01020201 	tsteq	r2, r1, lsl #4
    15d4:	01020102 	tsteq	r2, r2, lsl #2
    15d8:	01020201 	tsteq	r2, r1, lsl #4
    15dc:	01020102 	tsteq	r2, r2, lsl #2
    15e0:	01020201 	tsteq	r2, r1, lsl #4
    15e4:	01020102 	tsteq	r2, r2, lsl #2
    15e8:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    15ec:	01020202 	tsteq	r2, r2, lsl #4
    15f0:	02020100 	andeq	r0, r2, #0, 2
    15f4:	00010201 	andeq	r0, r1, r1, lsl #4
    15f8:	01010000 	mrseq	r0, (UNDEF: 1)
    15fc:	00000101 	andeq	r0, r0, r1, lsl #2
	...
    1608:	00010100 	andeq	r0, r1, r0, lsl #2
    160c:	00010100 	andeq	r0, r1, r0, lsl #2
    1610:	01020201 	tsteq	r2, r1, lsl #4
    1614:	01020201 	tsteq	r2, r1, lsl #4
    1618:	02020100 	andeq	r0, r2, #0, 2
    161c:	00010202 	andeq	r0, r1, r2, lsl #4
    1620:	02010000 	andeq	r0, r1, #0
    1624:	00000102 	andeq	r0, r0, r2, lsl #2
    1628:	02020100 	andeq	r0, r2, #0, 2
    162c:	00010202 	andeq	r0, r1, r2, lsl #4
    1630:	01020201 	tsteq	r2, r1, lsl #4
    1634:	01020201 	tsteq	r2, r1, lsl #4
    1638:	00010100 	andeq	r0, r1, r0, lsl #2
    163c:	00010100 	andeq	r0, r1, r0, lsl #2
	...
    1648:	00010100 	andeq	r0, r1, r0, lsl #2
    164c:	00010100 	andeq	r0, r1, r0, lsl #2
    1650:	01020201 	tsteq	r2, r1, lsl #4
    1654:	01020201 	tsteq	r2, r1, lsl #4
    1658:	01020201 	tsteq	r2, r1, lsl #4
    165c:	01020201 	tsteq	r2, r1, lsl #4
    1660:	02020100 	andeq	r0, r2, #0, 2
    1664:	00010202 	andeq	r0, r1, r2, lsl #4
    1668:	02010100 	andeq	r0, r1, #0, 2
    166c:	00000102 	andeq	r0, r0, r2, lsl #2
    1670:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1674:	00000001 	andeq	r0, r0, r1
    1678:	01010100 	mrseq	r0, (UNDEF: 17)
	...
    1688:	01010100 	mrseq	r0, (UNDEF: 17)
    168c:	00010101 	andeq	r0, r1, r1, lsl #2
    1690:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    1694:	01020202 	tsteq	r2, r2, lsl #4
    1698:	01010100 	mrseq	r0, (UNDEF: 17)
    169c:	00010202 	andeq	r0, r1, r2, lsl #4
    16a0:	02010000 	andeq	r0, r1, #0
    16a4:	00000102 	andeq	r0, r0, r2, lsl #2
    16a8:	02020100 	andeq	r0, r2, #0, 2
    16ac:	00010101 	andeq	r0, r1, r1, lsl #2
    16b0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    16b4:	01020202 	tsteq	r2, r2, lsl #4
    16b8:	01010100 	mrseq	r0, (UNDEF: 17)
    16bc:	00010101 	andeq	r0, r1, r1, lsl #2
    16c0:	01000000 	mrseq	r0, (UNDEF: 0)
    16c4:	00000101 	andeq	r0, r0, r1, lsl #2
    16c8:	02010000 	andeq	r0, r1, #0
    16cc:	00010202 	andeq	r0, r1, r2, lsl #4
    16d0:	02010100 	andeq	r0, r1, #0, 2
    16d4:	00000102 	andeq	r0, r0, r2, lsl #2
    16d8:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    16dc:	00000102 	andeq	r0, r0, r2, lsl #2
    16e0:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    16e4:	00000102 	andeq	r0, r0, r2, lsl #2
    16e8:	02010100 	andeq	r0, r1, #0, 2
    16ec:	00000102 	andeq	r0, r0, r2, lsl #2
    16f0:	02010000 	andeq	r0, r1, #0
    16f4:	00010202 	andeq	r0, r1, r2, lsl #4
    16f8:	01000000 	mrseq	r0, (UNDEF: 0)
    16fc:	00000101 	andeq	r0, r0, r1, lsl #2
    1700:	01000000 	mrseq	r0, (UNDEF: 0)
    1704:	00000001 	andeq	r0, r0, r1
    1708:	02010000 	andeq	r0, r1, #0
    170c:	00000102 	andeq	r0, r0, r2, lsl #2
    1710:	02010000 	andeq	r0, r1, #0
    1714:	00000102 	andeq	r0, r0, r2, lsl #2
    1718:	02010000 	andeq	r0, r1, #0
    171c:	00000001 	andeq	r0, r0, r1
    1720:	01000000 	mrseq	r0, (UNDEF: 0)
    1724:	00000102 	andeq	r0, r0, r2, lsl #2
    1728:	02010000 	andeq	r0, r1, #0
    172c:	00000102 	andeq	r0, r0, r2, lsl #2
    1730:	02010000 	andeq	r0, r1, #0
    1734:	00000102 	andeq	r0, r0, r2, lsl #2
    1738:	01000000 	mrseq	r0, (UNDEF: 0)
    173c:	00000001 	andeq	r0, r0, r1
    1740:	01010000 	mrseq	r0, (UNDEF: 1)
    1744:	00000001 	andeq	r0, r0, r1
    1748:	02020100 	andeq	r0, r2, #0, 2
    174c:	00000102 	andeq	r0, r0, r2, lsl #2
    1750:	02010000 	andeq	r0, r1, #0
    1754:	00010102 	andeq	r0, r1, r2, lsl #2
    1758:	02010000 	andeq	r0, r1, #0
    175c:	01020202 	tsteq	r2, r2, lsl #4
    1760:	02010000 	andeq	r0, r1, #0
    1764:	01020202 	tsteq	r2, r2, lsl #4
    1768:	02010000 	andeq	r0, r1, #0
    176c:	00010102 	andeq	r0, r1, r2, lsl #2
    1770:	02020100 	andeq	r0, r2, #0, 2
    1774:	00000102 	andeq	r0, r0, r2, lsl #2
    1778:	01010000 	mrseq	r0, (UNDEF: 1)
    177c:	00000001 	andeq	r0, r0, r1
	...
    1788:	01010000 	mrseq	r0, (UNDEF: 1)
    178c:	00010000 	andeq	r0, r1, r0
    1790:	02020100 	andeq	r0, r2, #0, 2
    1794:	01020101 	tsteq	r2, r1, lsl #2
    1798:	02020201 	andeq	r0, r2, #268435456	; 0x10000000
    179c:	01020202 	tsteq	r2, r2, lsl #4
    17a0:	01010201 	tsteq	r1, r1, lsl #4
    17a4:	00010202 	andeq	r0, r1, r2, lsl #4
    17a8:	00000100 	andeq	r0, r0, r0, lsl #2
    17ac:	00000101 	andeq	r0, r0, r1, lsl #2
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
   0:	00002b41 	andeq	r2, r0, r1, asr #22
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000021 	andeq	r0, r0, r1, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	02060049 	andeq	r0, r6, #73	; 0x49
  1c:	01090108 	tsteq	r9, r8, lsl #2
  20:	01170412 	tsteq	r7, r2, lsl r4
  24:	01190118 	tsteq	r9, r8, lsl r1
  28:	041e011a 	ldreq	r0, [lr], #-282	; 0xfffffee6

gbfs.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <namecmp>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02018 	mov	r2, #24
   8:	e59f300c 	ldr	r3, [pc, #12]	; 1c <namecmp+0x1c>
   c:	e1a0e00f 	mov	lr, pc
  10:	e12fff13 	bx	r3
  14:	e8bd4010 	pop	{r4, lr}
  18:	e12fff1e 	bx	lr
  1c:	00000000 	andeq	r0, r0, r0

00000020 <find_first_gbfs_file>:
  20:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
  24:	e3a0200d 	mov	r2, #13
  28:	e59f1064 	ldr	r1, [pc, #100]	; 94 <find_first_gbfs_file+0x74>
  2c:	e59f3064 	ldr	r3, [pc, #100]	; 98 <find_first_gbfs_file+0x78>
  30:	e3c040ff 	bic	r4, r0, #255	; 0xff
  34:	e1a0000d 	mov	r0, sp
  38:	e1a0e00f 	mov	lr, pc
  3c:	e12fff13 	bx	r3
  40:	e59f5054 	ldr	r5, [pc, #84]	; 9c <find_first_gbfs_file+0x7c>
  44:	e59f6054 	ldr	r6, [pc, #84]	; a0 <find_first_gbfs_file+0x80>
  48:	e354040a 	cmp	r4, #167772160	; 0xa000000
  4c:	3a000004 	bcc	64 <find_first_gbfs_file+0x44>
  50:	e3a04000 	mov	r4, #0
  54:	e1a00004 	mov	r0, r4
  58:	e28dd010 	add	sp, sp, #16
  5c:	e8bd4070 	pop	{r4, r5, r6, lr}
  60:	e12fff1e 	bx	lr
  64:	e5943000 	ldr	r3, [r4]
  68:	e1530005 	cmp	r3, r5
  6c:	1a000006 	bne	8c <find_first_gbfs_file+0x6c>
  70:	e3a0200c 	mov	r2, #12
  74:	e1a0100d 	mov	r1, sp
  78:	e2840004 	add	r0, r4, #4
  7c:	e1a0e00f 	mov	lr, pc
  80:	e12fff16 	bx	r6
  84:	e3500000 	cmp	r0, #0
  88:	0afffff1 	beq	54 <find_first_gbfs_file+0x34>
  8c:	e2844c01 	add	r4, r4, #256	; 0x100
  90:	eaffffec 	b	48 <find_first_gbfs_file+0x28>
	...
  9c:	456e6950 	strbmi	r6, [lr, #-2384]!	; 0xfffff6b0
  a0:	00000000 	andeq	r0, r0, r0

000000a4 <skip_gbfs_file>:
  a4:	e5903010 	ldr	r3, [r0, #16]
  a8:	e0800003 	add	r0, r0, r3
  ac:	e12fff1e 	bx	lr

000000b0 <gbfs_get_obj>:
  b0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  b4:	e1d061b4 	ldrh	r6, [r0, #20]
  b8:	e24dd024 	sub	sp, sp, #36	; 0x24
  bc:	e1d071b6 	ldrh	r7, [r0, #22]
  c0:	e0806006 	add	r6, r0, r6
  c4:	e59f3060 	ldr	r3, [pc, #96]	; 12c <gbfs_get_obj+0x7c>
  c8:	e1a04000 	mov	r4, r0
  cc:	e1a05002 	mov	r5, r2
  d0:	e28d0008 	add	r0, sp, #8
  d4:	e3a02018 	mov	r2, #24
  d8:	e1a0e00f 	mov	lr, pc
  dc:	e12fff13 	bx	r3
  e0:	e59f3048 	ldr	r3, [pc, #72]	; 130 <gbfs_get_obj+0x80>
  e4:	e1a01006 	mov	r1, r6
  e8:	e58d3000 	str	r3, [sp]
  ec:	e1a02007 	mov	r2, r7
  f0:	e3a03020 	mov	r3, #32
  f4:	e59f6038 	ldr	r6, [pc, #56]	; 134 <gbfs_get_obj+0x84>
  f8:	e28d0008 	add	r0, sp, #8
  fc:	e1a0e00f 	mov	lr, pc
 100:	e12fff16 	bx	r6
 104:	e3500000 	cmp	r0, #0
 108:	0a000004 	beq	120 <gbfs_get_obj+0x70>
 10c:	e3550000 	cmp	r5, #0
 110:	15903018 	ldrne	r3, [r0, #24]
 114:	15853000 	strne	r3, [r5]
 118:	e590301c 	ldr	r3, [r0, #28]
 11c:	e0840003 	add	r0, r4, r3
 120:	e28dd024 	add	sp, sp, #36	; 0x24
 124:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 128:	e12fff1e 	bx	lr
	...

00000138 <gbfs_copy_obj>:
 138:	e92d4013 	push	{r0, r1, r4, lr}
 13c:	e1a04000 	mov	r4, r0
 140:	e1a00001 	mov	r0, r1
 144:	e1a01002 	mov	r1, r2
 148:	e28d2004 	add	r2, sp, #4
 14c:	ebfffffe 	bl	b0 <gbfs_get_obj>
 150:	e3500000 	cmp	r0, #0
 154:	0a000006 	beq	174 <gbfs_copy_obj+0x3c>
 158:	e1a01000 	mov	r1, r0
 15c:	e59d2004 	ldr	r2, [sp, #4]
 160:	e1a00004 	mov	r0, r4
 164:	e59f3014 	ldr	r3, [pc, #20]	; 180 <gbfs_copy_obj+0x48>
 168:	e1a0e00f 	mov	lr, pc
 16c:	e12fff13 	bx	r3
 170:	e1a00004 	mov	r0, r4
 174:	e28dd008 	add	sp, sp, #8
 178:	e8bd4010 	pop	{r4, lr}
 17c:	e12fff1e 	bx	lr
 180:	00000000 	andeq	r0, r0, r0

00000184 <gbfs_get_nth_obj>:
 184:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 188:	e1d051b4 	ldrh	r5, [r0, #20]
 18c:	e1a07003 	mov	r7, r3
 190:	e1d031b6 	ldrh	r3, [r0, #22]
 194:	e0855281 	add	r5, r5, r1, lsl #5
 198:	e1530001 	cmp	r3, r1
 19c:	e0805005 	add	r5, r0, r5
 1a0:	93a00000 	movls	r0, #0
 1a4:	9a000010 	bls	1ec <gbfs_get_nth_obj+0x68>
 1a8:	e3520000 	cmp	r2, #0
 1ac:	e1a04000 	mov	r4, r0
 1b0:	e1a06002 	mov	r6, r2
 1b4:	0a000007 	beq	1d8 <gbfs_get_nth_obj+0x54>
 1b8:	e59f3034 	ldr	r3, [pc, #52]	; 1f4 <gbfs_get_nth_obj+0x70>
 1bc:	e3a02018 	mov	r2, #24
 1c0:	e1a01005 	mov	r1, r5
 1c4:	e1a00006 	mov	r0, r6
 1c8:	e1a0e00f 	mov	lr, pc
 1cc:	e12fff13 	bx	r3
 1d0:	e3a03000 	mov	r3, #0
 1d4:	e5c63018 	strb	r3, [r6, #24]
 1d8:	e3570000 	cmp	r7, #0
 1dc:	15953018 	ldrne	r3, [r5, #24]
 1e0:	15873000 	strne	r3, [r7]
 1e4:	e595001c 	ldr	r0, [r5, #28]
 1e8:	e0840000 	add	r0, r4, r0
 1ec:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 1f0:	e12fff1e 	bx	lr
 1f4:	00000000 	andeq	r0, r0, r0

000001f8 <gbfs_count_objs>:
 1f8:	e3500000 	cmp	r0, #0
 1fc:	11d001b6 	ldrhne	r0, [r0, #22]
 200:	e12fff1e 	bx	lr

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	74686769 	strbtvc	r6, [r8], #-1897	; 0xfffff897
   4:	53464247 	movtpl	r4, #25159	; 0x6247
   8:	0a1a0a0d 	beq	682844 <gbfs_count_objs+0x68264c>
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


aplib.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <aP_getbit>:
   0:	e590300c 	ldr	r3, [r0, #12]
   4:	e2432001 	sub	r2, r3, #1
   8:	e3530000 	cmp	r3, #0
   c:	e580200c 	str	r2, [r0, #12]
  10:	1a000006 	bne	30 <aP_getbit+0x30>
  14:	e5903000 	ldr	r3, [r0]
  18:	e2832001 	add	r2, r3, #1
  1c:	e5802000 	str	r2, [r0]
  20:	e5d33000 	ldrb	r3, [r3]
  24:	e5803008 	str	r3, [r0, #8]
  28:	e3a03007 	mov	r3, #7
  2c:	e580300c 	str	r3, [r0, #12]
  30:	e5903008 	ldr	r3, [r0, #8]
  34:	e1a02083 	lsl	r2, r3, #1
  38:	e5802008 	str	r2, [r0, #8]
  3c:	e1a003a3 	lsr	r0, r3, #7
  40:	e2000001 	and	r0, r0, #1
  44:	e12fff1e 	bx	lr

00000048 <aP_getgamma>:
  48:	e92d4010 	push	{r4, lr}
  4c:	e3a01001 	mov	r1, #1
  50:	e1a04000 	mov	r4, r0
  54:	e1a00004 	mov	r0, r4
  58:	e1a01081 	lsl	r1, r1, #1
  5c:	ebffffe7 	bl	0 <aP_getbit>
  60:	e0811000 	add	r1, r1, r0
  64:	e1a00004 	mov	r0, r4
  68:	ebffffe4 	bl	0 <aP_getbit>
  6c:	e3500000 	cmp	r0, #0
  70:	1afffff7 	bne	54 <aP_getgamma+0xc>
  74:	e1a00001 	mov	r0, r1
  78:	e8bd4010 	pop	{r4, lr}
  7c:	e12fff1e 	bx	lr

00000080 <hrt_aPlibUnpack>:
  80:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  84:	e3a07000 	mov	r7, #0
  88:	e1a06001 	mov	r6, r1
  8c:	e3e05000 	mvn	r5, #0
  90:	e24dd014 	sub	sp, sp, #20
  94:	e2803001 	add	r3, r0, #1
  98:	e58d3000 	str	r3, [sp]
  9c:	e2813001 	add	r3, r1, #1
  a0:	e58d3004 	str	r3, [sp, #4]
  a4:	e5d03000 	ldrb	r3, [r0]
  a8:	e58d700c 	str	r7, [sp, #12]
  ac:	e5c13000 	strb	r3, [r1]
  b0:	e1a0000d 	mov	r0, sp
  b4:	ebffffd1 	bl	0 <aP_getbit>
  b8:	e2504000 	subs	r4, r0, #0
  bc:	0a000062 	beq	24c <hrt_aPlibUnpack+0x1cc>
  c0:	e1a0000d 	mov	r0, sp
  c4:	ebffffcd 	bl	0 <aP_getbit>
  c8:	e3500000 	cmp	r0, #0
  cc:	e1a0000d 	mov	r0, sp
  d0:	0a00002b 	beq	184 <hrt_aPlibUnpack+0x104>
  d4:	ebffffc9 	bl	0 <aP_getbit>
  d8:	e3500000 	cmp	r0, #0
  dc:	0a000015 	beq	138 <hrt_aPlibUnpack+0xb8>
  e0:	e3a04004 	mov	r4, #4
  e4:	e3a00000 	mov	r0, #0
  e8:	e1a01080 	lsl	r1, r0, #1
  ec:	e1a0000d 	mov	r0, sp
  f0:	ebffffc2 	bl	0 <aP_getbit>
  f4:	e2544001 	subs	r4, r4, #1
  f8:	e0810000 	add	r0, r1, r0
  fc:	1afffff9 	bne	e8 <hrt_aPlibUnpack+0x68>
 100:	e59d3004 	ldr	r3, [sp, #4]
 104:	e3500000 	cmp	r0, #0
 108:	02832001 	addeq	r2, r3, #1
 10c:	058d2004 	streq	r2, [sp, #4]
 110:	05c34000 	strbeq	r4, [r3]
 114:	0a000005 	beq	130 <hrt_aPlibUnpack+0xb0>
 118:	e0430000 	sub	r0, r3, r0
 11c:	e5d02000 	ldrb	r2, [r0]
 120:	e5c32000 	strb	r2, [r3]
 124:	e59d3004 	ldr	r3, [sp, #4]
 128:	e2833001 	add	r3, r3, #1
 12c:	e58d3004 	str	r3, [sp, #4]
 130:	e1a07004 	mov	r7, r4
 134:	eaffffdd 	b	b0 <hrt_aPlibUnpack+0x30>
 138:	e59d3000 	ldr	r3, [sp]
 13c:	e2832001 	add	r2, r3, #1
 140:	e58d2000 	str	r2, [sp]
 144:	e5d33000 	ldrb	r3, [r3]
 148:	e1b050a3 	lsrs	r5, r3, #1
 14c:	0a000047 	beq	270 <hrt_aPlibUnpack+0x1f0>
 150:	e2033001 	and	r3, r3, #1
 154:	e59d2004 	ldr	r2, [sp, #4]
 158:	e0421005 	sub	r1, r2, r5
 15c:	e5d11000 	ldrb	r1, [r1]
 160:	e5c21000 	strb	r1, [r2]
 164:	e59d2004 	ldr	r2, [sp, #4]
 168:	e2433001 	sub	r3, r3, #1
 16c:	e2822001 	add	r2, r2, #1
 170:	e3730002 	cmn	r3, #2
 174:	e58d2004 	str	r2, [sp, #4]
 178:	1afffff5 	bne	154 <hrt_aPlibUnpack+0xd4>
 17c:	e3a04001 	mov	r4, #1
 180:	eaffffea 	b	130 <hrt_aPlibUnpack+0xb0>
 184:	ebffffaf 	bl	48 <aP_getgamma>
 188:	e2273001 	eor	r3, r7, #1
 18c:	e3500002 	cmp	r0, #2
 190:	13a03000 	movne	r3, #0
 194:	02033001 	andeq	r3, r3, #1
 198:	e3530000 	cmp	r3, #0
 19c:	0a00000c 	beq	1d4 <hrt_aPlibUnpack+0x154>
 1a0:	e1a0000d 	mov	r0, sp
 1a4:	ebffffa7 	bl	48 <aP_getgamma>
 1a8:	e3500000 	cmp	r0, #0
 1ac:	0afffff2 	beq	17c <hrt_aPlibUnpack+0xfc>
 1b0:	e59d3004 	ldr	r3, [sp, #4]
 1b4:	e0432005 	sub	r2, r3, r5
 1b8:	e5d22000 	ldrb	r2, [r2]
 1bc:	e5c32000 	strb	r2, [r3]
 1c0:	e59d3004 	ldr	r3, [sp, #4]
 1c4:	e2833001 	add	r3, r3, #1
 1c8:	e58d3004 	str	r3, [sp, #4]
 1cc:	e2400001 	sub	r0, r0, #1
 1d0:	eafffff4 	b	1a8 <hrt_aPlibUnpack+0x128>
 1d4:	e59d3000 	ldr	r3, [sp]
 1d8:	e2832001 	add	r2, r3, #1
 1dc:	e58d2000 	str	r2, [sp]
 1e0:	e3570000 	cmp	r7, #0
 1e4:	e5d35000 	ldrb	r5, [r3]
 1e8:	02400003 	subeq	r0, r0, #3
 1ec:	12400002 	subne	r0, r0, #2
 1f0:	e0855400 	add	r5, r5, r0, lsl #8
 1f4:	e1a0000d 	mov	r0, sp
 1f8:	ebffff92 	bl	48 <aP_getgamma>
 1fc:	e3550c7d 	cmp	r5, #32000	; 0x7d00
 200:	22800001 	addcs	r0, r0, #1
 204:	2a000001 	bcs	210 <hrt_aPlibUnpack+0x190>
 208:	e3550c05 	cmp	r5, #1280	; 0x500
 20c:	3a00000b 	bcc	240 <hrt_aPlibUnpack+0x1c0>
 210:	e2800001 	add	r0, r0, #1
 214:	e3500000 	cmp	r0, #0
 218:	0affffd7 	beq	17c <hrt_aPlibUnpack+0xfc>
 21c:	e59d3004 	ldr	r3, [sp, #4]
 220:	e0432005 	sub	r2, r3, r5
 224:	e5d22000 	ldrb	r2, [r2]
 228:	e5c32000 	strb	r2, [r3]
 22c:	e59d3004 	ldr	r3, [sp, #4]
 230:	e2833001 	add	r3, r3, #1
 234:	e58d3004 	str	r3, [sp, #4]
 238:	e2400001 	sub	r0, r0, #1
 23c:	eafffff4 	b	214 <hrt_aPlibUnpack+0x194>
 240:	e355007f 	cmp	r5, #127	; 0x7f
 244:	92800002 	addls	r0, r0, #2
 248:	eafffff1 	b	214 <hrt_aPlibUnpack+0x194>
 24c:	e59d2000 	ldr	r2, [sp]
 250:	e2823001 	add	r3, r2, #1
 254:	e58d3000 	str	r3, [sp]
 258:	e59d3004 	ldr	r3, [sp, #4]
 25c:	e2831001 	add	r1, r3, #1
 260:	e58d1004 	str	r1, [sp, #4]
 264:	e5d22000 	ldrb	r2, [r2]
 268:	e5c32000 	strb	r2, [r3]
 26c:	eaffffaf 	b	130 <hrt_aPlibUnpack+0xb0>
 270:	e59d0004 	ldr	r0, [sp, #4]
 274:	e0400006 	sub	r0, r0, r6
 278:	e28dd014 	add	sp, sp, #20
 27c:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 280:	e12fff1e 	bx	lr

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


jpg.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <JPEG_IDCT_Columns>:
       0:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
       4:	e2803020 	add	r3, r0, #32
       8:	e58d3004 	str	r3, [sp, #4]
       c:	e59f8160 	ldr	r8, [pc, #352]	; 174 <JPEG_IDCT_Columns+0x174>
      10:	e59fa160 	ldr	sl, [pc, #352]	; 178 <JPEG_IDCT_Columns+0x178>
      14:	e59fb160 	ldr	fp, [pc, #352]	; 17c <JPEG_IDCT_Columns+0x17c>
      18:	e59030c0 	ldr	r3, [r0, #192]	; 0xc0
      1c:	e590e040 	ldr	lr, [r0, #64]	; 0x40
      20:	e08e1003 	add	r1, lr, r3
      24:	e04ee003 	sub	lr, lr, r3
      28:	e00e0e98 	mul	lr, r8, lr
      2c:	e5902000 	ldr	r2, [r0]
      30:	e590c080 	ldr	ip, [r0, #128]	; 0x80
      34:	e061344e 	rsb	r3, r1, lr, asr #8
      38:	e042e00c 	sub	lr, r2, ip
      3c:	e5907020 	ldr	r7, [r0, #32]
      40:	e59060a0 	ldr	r6, [r0, #160]	; 0xa0
      44:	e08e5003 	add	r5, lr, r3
      48:	e082c00c 	add	ip, r2, ip
      4c:	e04ee003 	sub	lr, lr, r3
      50:	e59020e0 	ldr	r2, [r0, #224]	; 0xe0
      54:	e5903060 	ldr	r3, [r0, #96]	; 0x60
      58:	e08c4001 	add	r4, ip, r1
      5c:	e0839006 	add	r9, r3, r6
      60:	e04cc001 	sub	ip, ip, r1
      64:	e0471002 	sub	r1, r7, r2
      68:	e0872002 	add	r2, r7, r2
      6c:	e0897002 	add	r7, r9, r2
      70:	e0463003 	sub	r3, r6, r3
      74:	e0422009 	sub	r2, r2, r9
      78:	e59f9100 	ldr	r9, [pc, #256]	; 180 <JPEG_IDCT_Columns+0x180>
      7c:	e0816003 	add	r6, r1, r3
      80:	e003039b 	mul	r3, fp, r3
      84:	e006069a 	mul	r6, sl, r6
      88:	e0090991 	mul	r9, r1, r9
      8c:	e0020298 	mul	r2, r8, r2
      90:	e1a03443 	asr	r3, r3, #8
      94:	e0833446 	add	r3, r3, r6, asr #8
      98:	e1a01449 	asr	r1, r9, #8
      9c:	e0433007 	sub	r3, r3, r7
      a0:	e0416446 	sub	r6, r1, r6, asr #8
      a4:	e0841007 	add	r1, r4, r7
      a8:	e0632442 	rsb	r2, r3, r2, asr #8
      ac:	e5801000 	str	r1, [r0]
      b0:	e0851003 	add	r1, r5, r3
      b4:	e0866002 	add	r6, r6, r2
      b8:	e5801020 	str	r1, [r0, #32]
      bc:	e08e1002 	add	r1, lr, r2
      c0:	e0453003 	sub	r3, r5, r3
      c4:	e5801040 	str	r1, [r0, #64]	; 0x40
      c8:	e04ee002 	sub	lr, lr, r2
      cc:	e04c1006 	sub	r1, ip, r6
      d0:	e0444007 	sub	r4, r4, r7
      d4:	e08c6006 	add	r6, ip, r6
      d8:	e58030c0 	str	r3, [r0, #192]	; 0xc0
      dc:	e5801060 	str	r1, [r0, #96]	; 0x60
      e0:	e5806080 	str	r6, [r0, #128]	; 0x80
      e4:	e580e0a0 	str	lr, [r0, #160]	; 0xa0
      e8:	e58040e0 	str	r4, [r0, #224]	; 0xe0
      ec:	e2803004 	add	r3, r0, #4
      f0:	ea000018 	b	158 <JPEG_IDCT_Columns+0x158>
      f4:	e5902000 	ldr	r2, [r0]
      f8:	e3520000 	cmp	r2, #0
      fc:	e2833004 	add	r3, r3, #4
     100:	1affffc4 	bne	18 <JPEG_IDCT_Columns+0x18>
     104:	e593201c 	ldr	r2, [r3, #28]
     108:	e3520000 	cmp	r2, #0
     10c:	1affffc1 	bne	18 <JPEG_IDCT_Columns+0x18>
     110:	e593203c 	ldr	r2, [r3, #60]	; 0x3c
     114:	e3520000 	cmp	r2, #0
     118:	1affffbe 	bne	18 <JPEG_IDCT_Columns+0x18>
     11c:	e593205c 	ldr	r2, [r3, #92]	; 0x5c
     120:	e3520000 	cmp	r2, #0
     124:	1affffbb 	bne	18 <JPEG_IDCT_Columns+0x18>
     128:	e593207c 	ldr	r2, [r3, #124]	; 0x7c
     12c:	e3520000 	cmp	r2, #0
     130:	1affffb8 	bne	18 <JPEG_IDCT_Columns+0x18>
     134:	e593209c 	ldr	r2, [r3, #156]	; 0x9c
     138:	e3520000 	cmp	r2, #0
     13c:	1affffb5 	bne	18 <JPEG_IDCT_Columns+0x18>
     140:	e59320bc 	ldr	r2, [r3, #188]	; 0xbc
     144:	e3520000 	cmp	r2, #0
     148:	1affffb2 	bne	18 <JPEG_IDCT_Columns+0x18>
     14c:	e59320dc 	ldr	r2, [r3, #220]	; 0xdc
     150:	e3520000 	cmp	r2, #0
     154:	1affffaf 	bne	18 <JPEG_IDCT_Columns+0x18>
     158:	e59d2004 	ldr	r2, [sp, #4]
     15c:	e1520003 	cmp	r2, r3
     160:	e1a00003 	mov	r0, r3
     164:	8affffe2 	bhi	f4 <JPEG_IDCT_Columns+0xf4>
     168:	e28dd00c 	add	sp, sp, #12
     16c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     170:	e12fff1e 	bx	lr
     174:	0000016a 	andeq	r0, r0, sl, ror #2
     178:	000001d9 	ldrdeq	r0, [r0], -r9
     17c:	fffffd64 			; <UNDEFINED> instruction: 0xfffffd64
     180:	00000115 	andeq	r0, r0, r5, lsl r1

00000184 <JPEG_IDCT_Rows>:
     184:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     188:	e2803e12 	add	r3, r0, #288	; 0x120
     18c:	e2804020 	add	r4, r0, #32
     190:	e58d2004 	str	r2, [sp, #4]
     194:	e58d3000 	str	r3, [sp]
     198:	e59f0124 	ldr	r0, [pc, #292]	; 2c4 <JPEG_IDCT_Rows+0x140>
     19c:	e514e020 	ldr	lr, [r4, #-32]	; 0xffffffe0
     1a0:	e5143010 	ldr	r3, [r4, #-16]
     1a4:	e04ec003 	sub	ip, lr, r3
     1a8:	e08e6003 	add	r6, lr, r3
     1ac:	e514e008 	ldr	lr, [r4, #-8]
     1b0:	e5143018 	ldr	r3, [r4, #-24]	; 0xffffffe8
     1b4:	e083500e 	add	r5, r3, lr
     1b8:	e043300e 	sub	r3, r3, lr
     1bc:	e0030390 	mul	r3, r0, r3
     1c0:	e0653443 	rsb	r3, r5, r3, asr #8
     1c4:	e08c8003 	add	r8, ip, r3
     1c8:	e04ce003 	sub	lr, ip, r3
     1cc:	e514c00c 	ldr	ip, [r4, #-12]
     1d0:	e5143014 	ldr	r3, [r4, #-20]	; 0xffffffec
     1d4:	e514901c 	ldr	r9, [r4, #-28]	; 0xffffffe4
     1d8:	e08cb003 	add	fp, ip, r3
     1dc:	e04c3003 	sub	r3, ip, r3
     1e0:	e514c004 	ldr	ip, [r4, #-4]
     1e4:	e0867005 	add	r7, r6, r5
     1e8:	e0466005 	sub	r6, r6, r5
     1ec:	e089500c 	add	r5, r9, ip
     1f0:	e049c00c 	sub	ip, r9, ip
     1f4:	e083900c 	add	r9, r3, ip
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e59f30c4 	ldr	r3, [pc, #196]	; 2c8 <JPEG_IDCT_Rows+0x144>
     200:	e0030399 	mul	r3, r9, r3
     204:	e1a09003 	mov	r9, r3
     208:	e08ba005 	add	sl, fp, r5
     20c:	e59f30b8 	ldr	r3, [pc, #184]	; 2cc <JPEG_IDCT_Rows+0x148>
     210:	e045500b 	sub	r5, r5, fp
     214:	e59fb0b4 	ldr	fp, [pc, #180]	; 2d0 <JPEG_IDCT_Rows+0x14c>
     218:	e0020293 	mul	r2, r3, r2
     21c:	e00b0b9c 	mul	fp, ip, fp
     220:	e0050590 	mul	r5, r0, r5
     224:	e1a0c44b 	asr	ip, fp, #8
     228:	e1a03442 	asr	r3, r2, #8
     22c:	e0833449 	add	r3, r3, r9, asr #8
     230:	e04c9449 	sub	r9, ip, r9, asr #8
     234:	e087c00a 	add	ip, r7, sl
     238:	e043300a 	sub	r3, r3, sl
     23c:	e1a0c64c 	asr	ip, ip, #12
     240:	e5c1c000 	strb	ip, [r1]
     244:	e088c003 	add	ip, r8, r3
     248:	e0635445 	rsb	r5, r3, r5, asr #8
     24c:	e1a0c64c 	asr	ip, ip, #12
     250:	e5c1c001 	strb	ip, [r1, #1]
     254:	e0483003 	sub	r3, r8, r3
     258:	e08ec005 	add	ip, lr, r5
     25c:	e0899005 	add	r9, r9, r5
     260:	e1a0c64c 	asr	ip, ip, #12
     264:	e1a03643 	asr	r3, r3, #12
     268:	e5c1c002 	strb	ip, [r1, #2]
     26c:	e5c13006 	strb	r3, [r1, #6]
     270:	e046c009 	sub	ip, r6, r9
     274:	e59d3004 	ldr	r3, [sp, #4]
     278:	e0869009 	add	r9, r6, r9
     27c:	e04ee005 	sub	lr, lr, r5
     280:	e047700a 	sub	r7, r7, sl
     284:	e1a0c64c 	asr	ip, ip, #12
     288:	e1a09649 	asr	r9, r9, #12
     28c:	e1a0e64e 	asr	lr, lr, #12
     290:	e1a07647 	asr	r7, r7, #12
     294:	e5c1c003 	strb	ip, [r1, #3]
     298:	e5c19004 	strb	r9, [r1, #4]
     29c:	e5c1e005 	strb	lr, [r1, #5]
     2a0:	e5c17007 	strb	r7, [r1, #7]
     2a4:	e0811003 	add	r1, r1, r3
     2a8:	e59d3000 	ldr	r3, [sp]
     2ac:	e2844020 	add	r4, r4, #32
     2b0:	e1530004 	cmp	r3, r4
     2b4:	1affffb8 	bne	19c <JPEG_IDCT_Rows+0x18>
     2b8:	e28dd00c 	add	sp, sp, #12
     2bc:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     2c0:	e12fff1e 	bx	lr
     2c4:	0000016a 	andeq	r0, r0, sl, ror #2
     2c8:	000001d9 	ldrdeq	r0, [r0], -r9
     2cc:	fffffd64 			; <UNDEFINED> instruction: 0xfffffd64
     2d0:	00000115 	andeq	r0, r0, r5, lsl r1

000002d4 <JPEG_IDCT>:
     2d4:	e92d4070 	push	{r4, r5, r6, lr}
     2d8:	e1a04000 	mov	r4, r0
     2dc:	e1a05001 	mov	r5, r1
     2e0:	e1a06002 	mov	r6, r2
     2e4:	ebffff45 	bl	0 <JPEG_IDCT_Columns>
     2e8:	e1a02006 	mov	r2, r6
     2ec:	e1a01005 	mov	r1, r5
     2f0:	e1a00004 	mov	r0, r4
     2f4:	e8bd4070 	pop	{r4, r5, r6, lr}
     2f8:	eaffffa1 	b	184 <JPEG_IDCT_Rows>

000002fc <JPEG_FrameHeader_Read>:
     2fc:	e92d4030 	push	{r4, r5, lr}
     300:	e5913000 	ldr	r3, [r1]
     304:	e1c020b0 	strh	r2, [r0]
     308:	e2822040 	add	r2, r2, #64	; 0x40
     30c:	e1a02802 	lsl	r2, r2, #16
     310:	e1a02822 	lsr	r2, r2, #16
     314:	e3520007 	cmp	r2, #7
     318:	93a02000 	movls	r2, #0
     31c:	83a02001 	movhi	r2, #1
     320:	e5802004 	str	r2, [r0, #4]
     324:	e3a02001 	mov	r2, #1
     328:	e5c02008 	strb	r2, [r0, #8]
     32c:	e5d32002 	ldrb	r2, [r3, #2]
     330:	e5c02009 	strb	r2, [r0, #9]
     334:	e5d3c003 	ldrb	ip, [r3, #3]
     338:	e5d32004 	ldrb	r2, [r3, #4]
     33c:	e182240c 	orr	r2, r2, ip, lsl #8
     340:	e1c020ba 	strh	r2, [r0, #10]
     344:	e5d3c005 	ldrb	ip, [r3, #5]
     348:	e5d32006 	ldrb	r2, [r3, #6]
     34c:	e182240c 	orr	r2, r2, ip, lsl #8
     350:	e283c008 	add	ip, r3, #8
     354:	e1c020bc 	strh	r2, [r0, #12]
     358:	e1a0200c 	mov	r2, ip
     35c:	e5d33007 	ldrb	r3, [r3, #7]
     360:	e5803020 	str	r3, [r0, #32]
     364:	e0804103 	add	r4, r0, r3, lsl #2
     368:	e1500004 	cmp	r0, r4
     36c:	e2822003 	add	r2, r2, #3
     370:	1a000005 	bne	38c <JPEG_FrameHeader_Read+0x90>
     374:	e0833083 	add	r3, r3, r3, lsl #1
     378:	e08c3003 	add	r3, ip, r3
     37c:	e3a00001 	mov	r0, #1
     380:	e5813000 	str	r3, [r1]
     384:	e8bd4030 	pop	{r4, r5, lr}
     388:	e12fff1e 	bx	lr
     38c:	e552e003 	ldrb	lr, [r2, #-3]
     390:	e5c0e00e 	strb	lr, [r0, #14]
     394:	e552e002 	ldrb	lr, [r2, #-2]
     398:	e1a0522e 	lsr	r5, lr, #4
     39c:	e20ee00f 	and	lr, lr, #15
     3a0:	e5c0500f 	strb	r5, [r0, #15]
     3a4:	e5c0e010 	strb	lr, [r0, #16]
     3a8:	e552e001 	ldrb	lr, [r2, #-1]
     3ac:	e2800004 	add	r0, r0, #4
     3b0:	e5c0e00d 	strb	lr, [r0, #13]
     3b4:	eaffffeb 	b	368 <JPEG_FrameHeader_Read+0x6c>

000003b8 <JPEG_ScanHeader_Read>:
     3b8:	e1a0c000 	mov	ip, r0
     3bc:	e92d4010 	push	{r4, lr}
     3c0:	e5912000 	ldr	r2, [r1]
     3c4:	e2823003 	add	r3, r2, #3
     3c8:	e5d22002 	ldrb	r2, [r2, #2]
     3cc:	e580200c 	str	r2, [r0, #12]
     3d0:	e0822082 	add	r2, r2, r2, lsl #1
     3d4:	e0802002 	add	r2, r0, r2
     3d8:	e15c0002 	cmp	ip, r2
     3dc:	e5d3e000 	ldrb	lr, [r3]
     3e0:	3a00000c 	bcc	418 <JPEG_ScanHeader_Read+0x60>
     3e4:	e5c0e010 	strb	lr, [r0, #16]
     3e8:	e5d32001 	ldrb	r2, [r3, #1]
     3ec:	e5c02011 	strb	r2, [r0, #17]
     3f0:	e5d32002 	ldrb	r2, [r3, #2]
     3f4:	e1a0c222 	lsr	ip, r2, #4
     3f8:	e202200f 	and	r2, r2, #15
     3fc:	e5c0c012 	strb	ip, [r0, #18]
     400:	e5c02013 	strb	r2, [r0, #19]
     404:	e2833003 	add	r3, r3, #3
     408:	e3a00001 	mov	r0, #1
     40c:	e5813000 	str	r3, [r1]
     410:	e8bd4010 	pop	{r4, lr}
     414:	e12fff1e 	bx	lr
     418:	e5cce000 	strb	lr, [ip]
     41c:	e5d3e001 	ldrb	lr, [r3, #1]
     420:	e1a0422e 	lsr	r4, lr, #4
     424:	e20ee00f 	and	lr, lr, #15
     428:	e5cc4001 	strb	r4, [ip, #1]
     42c:	e5cce002 	strb	lr, [ip, #2]
     430:	e2833002 	add	r3, r3, #2
     434:	e28cc003 	add	ip, ip, #3
     438:	eaffffe6 	b	3d8 <JPEG_ScanHeader_Read+0x20>

0000043c <JPEG_HuffmanTable_Skip>:
     43c:	e5903000 	ldr	r3, [r0]
     440:	e3a02010 	mov	r2, #16
     444:	e1a01003 	mov	r1, r3
     448:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     44c:	e283c010 	add	ip, r3, #16
     450:	e4d1e001 	ldrb	lr, [r1], #1
     454:	e151000c 	cmp	r1, ip
     458:	e082200e 	add	r2, r2, lr
     45c:	1afffffb 	bne	450 <JPEG_HuffmanTable_Skip+0x14>
     460:	e0833002 	add	r3, r3, r2
     464:	e5803000 	str	r3, [r0]
     468:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     46c:	e3a00001 	mov	r0, #1
     470:	e12fff1e 	bx	lr

00000474 <JPEG_Decoder_ReadHeaders>:
     474:	e3a02000 	mov	r2, #0
     478:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
     47c:	e1a04000 	mov	r4, r0
     480:	e1a05001 	mov	r5, r1
     484:	e5913000 	ldr	r3, [r1]
     488:	e2833002 	add	r3, r3, #2
     48c:	e5802420 	str	r2, [r0, #1056]	; 0x420
     490:	e58d3004 	str	r3, [sp, #4]
     494:	e59f6218 	ldr	r6, [pc, #536]	; 6b4 <JPEG_Decoder_ReadHeaders+0x240>
     498:	e59f7218 	ldr	r7, [pc, #536]	; 6b8 <JPEG_Decoder_ReadHeaders+0x244>
     49c:	e59f0218 	ldr	r0, [pc, #536]	; 6bc <JPEG_Decoder_ReadHeaders+0x248>
     4a0:	e59fe218 	ldr	lr, [pc, #536]	; 6c0 <JPEG_Decoder_ReadHeaders+0x24c>
     4a4:	e59f8218 	ldr	r8, [pc, #536]	; 6c4 <JPEG_Decoder_ReadHeaders+0x250>
     4a8:	e59f9218 	ldr	r9, [pc, #536]	; 6c8 <JPEG_Decoder_ReadHeaders+0x254>
     4ac:	e59fa218 	ldr	sl, [pc, #536]	; 6cc <JPEG_Decoder_ReadHeaders+0x258>
     4b0:	e59f2218 	ldr	r2, [pc, #536]	; 6d0 <JPEG_Decoder_ReadHeaders+0x25c>
     4b4:	e59d3004 	ldr	r3, [sp, #4]
     4b8:	e5d31000 	ldrb	r1, [r3]
     4bc:	e5d3c001 	ldrb	ip, [r3, #1]
     4c0:	e18cc401 	orr	ip, ip, r1, lsl #8
     4c4:	e15c0006 	cmp	ip, r6
     4c8:	e2831002 	add	r1, r3, #2
     4cc:	e58d1004 	str	r1, [sp, #4]
     4d0:	0a000041 	beq	5dc <JPEG_Decoder_ReadHeaders+0x168>
     4d4:	8a00000c 	bhi	50c <JPEG_Decoder_ReadHeaders+0x98>
     4d8:	e15c0009 	cmp	ip, r9
     4dc:	0a000026 	beq	57c <JPEG_Decoder_ReadHeaders+0x108>
     4e0:	e15c000a 	cmp	ip, sl
     4e4:	0a000068 	beq	68c <JPEG_Decoder_ReadHeaders+0x218>
     4e8:	e15c0002 	cmp	ip, r2
     4ec:	1afffff0 	bne	4b4 <JPEG_Decoder_ReadHeaders+0x40>
     4f0:	e2840e42 	add	r0, r4, #1056	; 0x420
     4f4:	e28d1004 	add	r1, sp, #4
     4f8:	e2800004 	add	r0, r0, #4
     4fc:	ebfffffe 	bl	2fc <JPEG_FrameHeader_Read>
     500:	e3500000 	cmp	r0, #0
     504:	1affffe4 	bne	49c <JPEG_Decoder_ReadHeaders+0x28>
     508:	ea00002f 	b	5cc <JPEG_Decoder_ReadHeaders+0x158>
     50c:	e15c0007 	cmp	ip, r7
     510:	8a00000d 	bhi	54c <JPEG_Decoder_ReadHeaders+0xd8>
     514:	e15c000e 	cmp	ip, lr
     518:	8a00000d 	bhi	554 <JPEG_Decoder_ReadHeaders+0xe0>
     51c:	e15c0008 	cmp	ip, r8
     520:	1affffe3 	bne	4b4 <JPEG_Decoder_ReadHeaders+0x40>
     524:	e5d32004 	ldrb	r2, [r3, #4]
     528:	e5d31005 	ldrb	r1, [r3, #5]
     52c:	e1821401 	orr	r1, r2, r1, lsl #8
     530:	e1a02421 	lsr	r2, r1, #8
     534:	e1822401 	orr	r2, r2, r1, lsl #8
     538:	e1a02802 	lsl	r2, r2, #16
     53c:	e1a02822 	lsr	r2, r2, #16
     540:	e5842420 	str	r2, [r4, #1056]	; 0x420
     544:	e2833006 	add	r3, r3, #6
     548:	ea000009 	b	574 <JPEG_Decoder_ReadHeaders+0x100>
     54c:	e15c0000 	cmp	ip, r0
     550:	1affffd7 	bne	4b4 <JPEG_Decoder_ReadHeaders+0x40>
     554:	e5d32002 	ldrb	r2, [r3, #2]
     558:	e5d33003 	ldrb	r3, [r3, #3]
     55c:	e1822403 	orr	r2, r2, r3, lsl #8
     560:	e1a03422 	lsr	r3, r2, #8
     564:	e1833402 	orr	r3, r3, r2, lsl #8
     568:	e1a03803 	lsl	r3, r3, #16
     56c:	e1a03823 	lsr	r3, r3, #16
     570:	e0813003 	add	r3, r1, r3
     574:	e58d3004 	str	r3, [sp, #4]
     578:	eaffffc7 	b	49c <JPEG_Decoder_ReadHeaders+0x28>
     57c:	e5d32002 	ldrb	r2, [r3, #2]
     580:	e5d38003 	ldrb	r8, [r3, #3]
     584:	e2833004 	add	r3, r3, #4
     588:	e1888402 	orr	r8, r8, r2, lsl #8
     58c:	e58d3004 	str	r3, [sp, #4]
     590:	e0818008 	add	r8, r1, r8
     594:	e59d3004 	ldr	r3, [sp, #4]
     598:	e1530008 	cmp	r3, r8
     59c:	2affffbe 	bcs	49c <JPEG_Decoder_ReadHeaders+0x28>
     5a0:	e2832001 	add	r2, r3, #1
     5a4:	e58d2004 	str	r2, [sp, #4]
     5a8:	e5d31000 	ldrb	r1, [r3]
     5ac:	e201300f 	and	r3, r1, #15
     5b0:	e1b01221 	lsrs	r1, r1, #4
     5b4:	02833004 	addeq	r3, r3, #4
     5b8:	e7842103 	str	r2, [r4, r3, lsl #2]
     5bc:	e28d0004 	add	r0, sp, #4
     5c0:	ebfffffe 	bl	43c <JPEG_HuffmanTable_Skip>
     5c4:	e3500000 	cmp	r0, #0
     5c8:	1afffff1 	bne	594 <JPEG_Decoder_ReadHeaders+0x120>
     5cc:	e3a00000 	mov	r0, #0
     5d0:	e28dd008 	add	sp, sp, #8
     5d4:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
     5d8:	e12fff1e 	bx	lr
     5dc:	e5d30002 	ldrb	r0, [r3, #2]
     5e0:	e5d32003 	ldrb	r2, [r3, #3]
     5e4:	e2833004 	add	r3, r3, #4
     5e8:	e1822400 	orr	r2, r2, r0, lsl #8
     5ec:	e59f00e0 	ldr	r0, [pc, #224]	; 6d4 <JPEG_Decoder_ReadHeaders+0x260>
     5f0:	e58d3004 	str	r3, [sp, #4]
     5f4:	e0812002 	add	r2, r1, r2
     5f8:	e240cc01 	sub	ip, r0, #256	; 0x100
     5fc:	e59d3004 	ldr	r3, [sp, #4]
     600:	e1530002 	cmp	r3, r2
     604:	2affffa4 	bcs	49c <JPEG_Decoder_ReadHeaders+0x28>
     608:	e2831001 	add	r1, r3, #1
     60c:	e58d1004 	str	r1, [sp, #4]
     610:	e5d33000 	ldrb	r3, [r3]
     614:	e203300f 	and	r3, r3, #15
     618:	e0843403 	add	r3, r4, r3, lsl #8
     61c:	e2838020 	add	r8, r3, #32
     620:	e283e01c 	add	lr, r3, #28
     624:	e2833f47 	add	r3, r3, #284	; 0x11c
     628:	e59d1004 	ldr	r1, [sp, #4]
     62c:	e2819001 	add	r9, r1, #1
     630:	e58d9004 	str	r9, [sp, #4]
     634:	e5d11000 	ldrb	r1, [r1]
     638:	e1a01401 	lsl	r1, r1, #8
     63c:	e5ae1004 	str	r1, [lr, #4]!
     640:	e153000e 	cmp	r3, lr
     644:	1afffff7 	bne	628 <JPEG_Decoder_ReadHeaders+0x1b4>
     648:	e3a0e000 	mov	lr, #0
     64c:	e2883020 	add	r3, r8, #32
     650:	e2438020 	sub	r8, r3, #32
     654:	e080900e 	add	r9, r0, lr
     658:	e4d9a001 	ldrb	sl, [r9], #1
     65c:	e5981000 	ldr	r1, [r8]
     660:	e79ca10a 	ldr	sl, [ip, sl, lsl #2]
     664:	e001019a 	mul	r1, sl, r1
     668:	e1a01441 	asr	r1, r1, #8
     66c:	e4881004 	str	r1, [r8], #4
     670:	e1530008 	cmp	r3, r8
     674:	1afffff7 	bne	658 <JPEG_Decoder_ReadHeaders+0x1e4>
     678:	e28ee008 	add	lr, lr, #8
     67c:	e35e0040 	cmp	lr, #64	; 0x40
     680:	e2833020 	add	r3, r3, #32
     684:	1afffff1 	bne	650 <JPEG_Decoder_ReadHeaders+0x1dc>
     688:	eaffffdb 	b	5fc <JPEG_Decoder_ReadHeaders+0x188>
     68c:	e2840d11 	add	r0, r4, #1088	; 0x440
     690:	e28d1004 	add	r1, sp, #4
     694:	e2800008 	add	r0, r0, #8
     698:	ebfffffe 	bl	3b8 <JPEG_ScanHeader_Read>
     69c:	e3500000 	cmp	r0, #0
     6a0:	0affffc9 	beq	5cc <JPEG_Decoder_ReadHeaders+0x158>
     6a4:	e59d3004 	ldr	r3, [sp, #4]
     6a8:	e3a00001 	mov	r0, #1
     6ac:	e5853000 	str	r3, [r5]
     6b0:	eaffffc6 	b	5d0 <JPEG_Decoder_ReadHeaders+0x15c>
     6b4:	0000ffdb 	ldrdeq	pc, [r0], -fp
     6b8:	0000ffef 	andeq	pc, r0, pc, ror #31
     6bc:	0000fffe 	strdeq	pc, [r0], -lr
     6c0:	0000ffdf 	ldrdeq	pc, [r0], -pc	; <UNPREDICTABLE>
     6c4:	0000ffdd 	ldrdeq	pc, [r0], -sp
     6c8:	0000ffc4 	andeq	pc, r0, r4, asr #31
     6cc:	0000ffda 	ldrdeq	pc, [r0], -sl
     6d0:	0000ffc0 	andeq	pc, r0, r0, asr #31
     6d4:	00000100 	andeq	r0, r0, r0, lsl #2

000006d8 <JPEG_HuffmanTable_Read>:
     6d8:	e5912000 	ldr	r2, [r1]
     6dc:	e3a0c000 	mov	ip, #0
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     6e8:	e24ddc05 	sub	sp, sp, #1280	; 0x500
     6ec:	e24dd00c 	sub	sp, sp, #12
     6f0:	e282e010 	add	lr, r2, #16
     6f4:	e4d34001 	ldrb	r4, [r3], #1
     6f8:	e153000e 	cmp	r3, lr
     6fc:	e08cc004 	add	ip, ip, r4
     700:	1afffffb 	bne	6f4 <JPEG_HuffmanTable_Read+0x1c>
     704:	e3a0e001 	mov	lr, #1
     708:	e5803000 	str	r3, [r0]
     70c:	e083300c 	add	r3, r3, ip
     710:	e58d3004 	str	r3, [sp, #4]
     714:	e1a0c00e 	mov	ip, lr
     718:	e3a03000 	mov	r3, #0
     71c:	e082400c 	add	r4, r2, ip
     720:	e5544001 	ldrb	r4, [r4, #-1]
     724:	e154000e 	cmp	r4, lr
     728:	aa000018 	bge	790 <JPEG_HuffmanTable_Read+0xb8>
     72c:	e28cc001 	add	ip, ip, #1
     730:	e35c0010 	cmp	ip, #16
     734:	da00001c 	ble	7ac <JPEG_HuffmanTable_Read+0xd4>
     738:	e28dcc05 	add	ip, sp, #1280	; 0x500
     73c:	e28cc008 	add	ip, ip, #8
     740:	e08cc003 	add	ip, ip, r3
     744:	e3a03000 	mov	r3, #0
     748:	e28d4f42 	add	r4, sp, #264	; 0x108
     74c:	e1a0a004 	mov	sl, r4
     750:	e54c3500 	strb	r3, [ip, #-1280]	; 0xfffffb00
     754:	e5ddc008 	ldrb	ip, [sp, #8]
     758:	e28d5009 	add	r5, sp, #9
     75c:	e4843004 	str	r3, [r4], #4
     760:	e283e001 	add	lr, r3, #1
     764:	e4d53001 	ldrb	r3, [r5], #1
     768:	e153000c 	cmp	r3, ip
     76c:	0a000005 	beq	788 <JPEG_HuffmanTable_Read+0xb0>
     770:	e3530000 	cmp	r3, #0
     774:	0a00000e 	beq	7b4 <JPEG_HuffmanTable_Read+0xdc>
     778:	e28cc001 	add	ip, ip, #1
     77c:	e153000c 	cmp	r3, ip
     780:	e1a0e08e 	lsl	lr, lr, #1
     784:	1afffffb 	bne	778 <JPEG_HuffmanTable_Read+0xa0>
     788:	e1a0300e 	mov	r3, lr
     78c:	eafffff2 	b	75c <JPEG_HuffmanTable_Read+0x84>
     790:	e28d4c05 	add	r4, sp, #1280	; 0x500
     794:	e2844008 	add	r4, r4, #8
     798:	e0844003 	add	r4, r4, r3
     79c:	e544c500 	strb	ip, [r4, #-1280]	; 0xfffffb00
     7a0:	e28ee001 	add	lr, lr, #1
     7a4:	e2833001 	add	r3, r3, #1
     7a8:	eaffffdb 	b	71c <JPEG_HuffmanTable_Read+0x44>
     7ac:	e3a0e001 	mov	lr, #1
     7b0:	eaffffd9 	b	71c <JPEG_HuffmanTable_Read+0x44>
     7b4:	e3e07000 	mvn	r7, #0
     7b8:	e242e001 	sub	lr, r2, #1
     7bc:	e280c004 	add	ip, r0, #4
     7c0:	e2806044 	add	r6, r0, #68	; 0x44
     7c4:	e5fe4001 	ldrb	r4, [lr, #1]!
     7c8:	e3540000 	cmp	r4, #0
     7cc:	058c7000 	streq	r7, [ip]
     7d0:	0a00000e 	beq	810 <JPEG_HuffmanTable_Read+0x138>
     7d4:	e28d4c05 	add	r4, sp, #1280	; 0x500
     7d8:	e2844008 	add	r4, r4, #8
     7dc:	e0844103 	add	r4, r4, r3, lsl #2
     7e0:	e5144400 	ldr	r4, [r4, #-1024]	; 0xfffffc00
     7e4:	e0435004 	sub	r5, r3, r4
     7e8:	e5904000 	ldr	r4, [r0]
     7ec:	e0844005 	add	r4, r4, r5
     7f0:	e58c4040 	str	r4, [ip, #64]	; 0x40
     7f4:	e5de4000 	ldrb	r4, [lr]
     7f8:	e0833004 	add	r3, r3, r4
     7fc:	e28d4c05 	add	r4, sp, #1280	; 0x500
     800:	e2844008 	add	r4, r4, #8
     804:	e0844103 	add	r4, r4, r3, lsl #2
     808:	e5144404 	ldr	r4, [r4, #-1028]	; 0xfffffbfc
     80c:	e58c4000 	str	r4, [ip]
     810:	e28cc004 	add	ip, ip, #4
     814:	e15c0006 	cmp	ip, r6
     818:	1affffe9 	bne	7c4 <JPEG_HuffmanTable_Read+0xec>
     81c:	e3a0e000 	mov	lr, #0
     820:	e2803084 	add	r3, r0, #132	; 0x84
     824:	e280cf61 	add	ip, r0, #388	; 0x184
     828:	e4c3e001 	strb	lr, [r3], #1
     82c:	e153000c 	cmp	r3, ip
     830:	1afffffc 	bne	828 <JPEG_HuffmanTable_Read+0x150>
     834:	e3a0e001 	mov	lr, #1
     838:	e3a03000 	mov	r3, #0
     83c:	e1a0900e 	mov	r9, lr
     840:	e26e6008 	rsb	r6, lr, #8
     844:	e1a08619 	lsl	r8, r9, r6
     848:	e2637001 	rsb	r7, r3, #1
     84c:	ea00000b 	b	880 <JPEG_HuffmanTable_Read+0x1a8>
     850:	e1a04008 	mov	r4, r8
     854:	e79ac103 	ldr	ip, [sl, r3, lsl #2]
     858:	e5905000 	ldr	r5, [r0]
     85c:	e080c61c 	add	ip, r0, ip, lsl r6
     860:	e0855003 	add	r5, r5, r3
     864:	e28cc084 	add	ip, ip, #132	; 0x84
     868:	e4cce001 	strb	lr, [ip], #1
     86c:	e5d5b000 	ldrb	fp, [r5]
     870:	e2544001 	subs	r4, r4, #1
     874:	e5ccb0ff 	strb	fp, [ip, #255]	; 0xff
     878:	1afffffa 	bne	868 <JPEG_HuffmanTable_Read+0x190>
     87c:	e2833001 	add	r3, r3, #1
     880:	e5d24000 	ldrb	r4, [r2]
     884:	e087c003 	add	ip, r7, r3
     888:	e154000c 	cmp	r4, ip
     88c:	aaffffef 	bge	850 <JPEG_HuffmanTable_Read+0x178>
     890:	e28ee001 	add	lr, lr, #1
     894:	e35e0009 	cmp	lr, #9
     898:	e2822001 	add	r2, r2, #1
     89c:	1affffe7 	bne	840 <JPEG_HuffmanTable_Read+0x168>
     8a0:	e3a00001 	mov	r0, #1
     8a4:	e59d3004 	ldr	r3, [sp, #4]
     8a8:	e5813000 	str	r3, [r1]
     8ac:	e28ddc05 	add	sp, sp, #1280	; 0x500
     8b0:	e28dd00c 	add	sp, sp, #12
     8b4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     8b8:	e12fff1e 	bx	lr

000008bc <JPEG_Decoder_ReadImage>:
     8bc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     8c0:	e3a05000 	mov	r5, #0
     8c4:	e24ddee6 	sub	sp, sp, #3680	; 0xe60
     8c8:	e24dd00c 	sub	sp, sp, #12
     8cc:	e58d303c 	str	r3, [sp, #60]	; 0x3c
     8d0:	e2804e43 	add	r4, r0, #1072	; 0x430
     8d4:	e5903444 	ldr	r3, [r0, #1092]	; 0x444
     8d8:	e2844002 	add	r4, r4, #2
     8dc:	e0843103 	add	r3, r4, r3, lsl #2
     8e0:	e58d302c 	str	r3, [sp, #44]	; 0x2c
     8e4:	e5903420 	ldr	r3, [r0, #1056]	; 0x420
     8e8:	e58d3048 	str	r3, [sp, #72]	; 0x48
     8ec:	e3e03000 	mvn	r3, #0
     8f0:	e3a07001 	mov	r7, #1
     8f4:	e1a09005 	mov	r9, r5
     8f8:	e1a0a003 	mov	sl, r3
     8fc:	e58d3030 	str	r3, [sp, #48]	; 0x30
     900:	e58d3010 	str	r3, [sp, #16]
     904:	e58d3024 	str	r3, [sp, #36]	; 0x24
     908:	e2803d11 	add	r3, r0, #1088	; 0x440
     90c:	e2833008 	add	r3, r3, #8
     910:	e58d0004 	str	r0, [sp, #4]
     914:	e58d1080 	str	r1, [sp, #128]	; 0x80
     918:	e58d20a4 	str	r2, [sp, #164]	; 0xa4
     91c:	e591b000 	ldr	fp, [r1]
     920:	e58d7020 	str	r7, [sp, #32]
     924:	e58d701c 	str	r7, [sp, #28]
     928:	e58d7018 	str	r7, [sp, #24]
     92c:	e58d500c 	str	r5, [sp, #12]
     930:	e58d5008 	str	r5, [sp, #8]
     934:	e58d3014 	str	r3, [sp, #20]
     938:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
     93c:	e1540003 	cmp	r4, r3
     940:	2a000056 	bcs	aa0 <JPEG_Decoder_ReadImage+0x1e4>
     944:	e3a06000 	mov	r6, #0
     948:	e5d42000 	ldrb	r2, [r4]
     94c:	e59d3014 	ldr	r3, [sp, #20]
     950:	e0868086 	add	r8, r6, r6, lsl #1
     954:	e7d31008 	ldrb	r1, [r3, r8]
     958:	e1510002 	cmp	r1, r2
     95c:	12866001 	addne	r6, r6, #1
     960:	1afffff9 	bne	94c <JPEG_Decoder_ReadImage+0x90>
     964:	e59d3004 	ldr	r3, [sp, #4]
     968:	e0833008 	add	r3, r3, r8
     96c:	e5d38449 	ldrb	r8, [r3, #1097]	; 0x449
     970:	e58d3028 	str	r3, [sp, #40]	; 0x28
     974:	e59d2010 	ldr	r2, [sp, #16]
     978:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
     97c:	e1580003 	cmp	r8, r3
     980:	11580002 	cmpne	r8, r2
     984:	0a000009 	beq	9b0 <JPEG_Decoder_ReadImage+0xf4>
     988:	e59d3004 	ldr	r3, [sp, #4]
     98c:	e2881004 	add	r1, r8, #4
     990:	e7931101 	ldr	r1, [r3, r1, lsl #2]
     994:	e3720001 	cmn	r2, #1
     998:	e58d11d8 	str	r1, [sp, #472]	; 0x1d8
     99c:	1a00002d 	bne	a58 <JPEG_Decoder_ReadImage+0x19c>
     9a0:	e28d1f76 	add	r1, sp, #472	; 0x1d8
     9a4:	e28d0e96 	add	r0, sp, #2400	; 0x960
     9a8:	ebfffffe 	bl	6d8 <JPEG_HuffmanTable_Read>
     9ac:	e58d8010 	str	r8, [sp, #16]
     9b0:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
     9b4:	e5d3844a 	ldrb	r8, [r3, #1098]	; 0x44a
     9b8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
     9bc:	e1580003 	cmp	r8, r3
     9c0:	1158000a 	cmpne	r8, sl
     9c4:	0a000009 	beq	9f0 <JPEG_Decoder_ReadImage+0x134>
     9c8:	e59d3004 	ldr	r3, [sp, #4]
     9cc:	e7932108 	ldr	r2, [r3, r8, lsl #2]
     9d0:	e37a0001 	cmn	sl, #1
     9d4:	e58d21d8 	str	r2, [sp, #472]	; 0x1d8
     9d8:	1a000027 	bne	a7c <JPEG_Decoder_ReadImage+0x1c0>
     9dc:	e28d0e45 	add	r0, sp, #1104	; 0x450
     9e0:	e28d1f76 	add	r1, sp, #472	; 0x1d8
     9e4:	e2800008 	add	r0, r0, #8
     9e8:	ebfffffe 	bl	6d8 <JPEG_HuffmanTable_Read>
     9ec:	e1a0a008 	mov	sl, r8
     9f0:	e5d42001 	ldrb	r2, [r4, #1]
     9f4:	e5d41002 	ldrb	r1, [r4, #2]
     9f8:	e1590002 	cmp	r9, r2
     9fc:	e5d40000 	ldrb	r0, [r4]
     a00:	e28d3ee6 	add	r3, sp, #3680	; 0xe60
     a04:	b1a09002 	movlt	r9, r2
     a08:	e2833008 	add	r3, r3, #8
     a0c:	e1550001 	cmp	r5, r1
     a10:	b1a05001 	movlt	r5, r1
     a14:	e0836106 	add	r6, r3, r6, lsl #2
     a18:	e3500001 	cmp	r0, #1
     a1c:	e5064db0 	str	r4, [r6, #-3504]	; 0xfffff250
     a20:	058d100c 	streq	r1, [sp, #12]
     a24:	058d2008 	streq	r2, [sp, #8]
     a28:	0a000008 	beq	a50 <JPEG_Decoder_ReadImage+0x194>
     a2c:	e3500002 	cmp	r0, #2
     a30:	058d101c 	streq	r1, [sp, #28]
     a34:	058d2018 	streq	r2, [sp, #24]
     a38:	0a000004 	beq	a50 <JPEG_Decoder_ReadImage+0x194>
     a3c:	e3500003 	cmp	r0, #3
     a40:	e59d3020 	ldr	r3, [sp, #32]
     a44:	01a03002 	moveq	r3, r2
     a48:	01a07001 	moveq	r7, r1
     a4c:	e58d3020 	str	r3, [sp, #32]
     a50:	e2844004 	add	r4, r4, #4
     a54:	eaffffb7 	b	938 <JPEG_Decoder_ReadImage+0x7c>
     a58:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
     a5c:	e3730001 	cmn	r3, #1
     a60:	1affffd2 	bne	9b0 <JPEG_Decoder_ReadImage+0xf4>
     a64:	e28d0ebe 	add	r0, sp, #3040	; 0xbe0
     a68:	e28d1f76 	add	r1, sp, #472	; 0x1d8
     a6c:	e2800004 	add	r0, r0, #4
     a70:	ebfffffe 	bl	6d8 <JPEG_HuffmanTable_Read>
     a74:	e58d8030 	str	r8, [sp, #48]	; 0x30
     a78:	eaffffcc 	b	9b0 <JPEG_Decoder_ReadImage+0xf4>
     a7c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
     a80:	e3730001 	cmn	r3, #1
     a84:	1affffd9 	bne	9f0 <JPEG_Decoder_ReadImage+0x134>
     a88:	e28d0e6d 	add	r0, sp, #1744	; 0x6d0
     a8c:	e28d1f76 	add	r1, sp, #472	; 0x1d8
     a90:	e280000c 	add	r0, r0, #12
     a94:	ebfffffe 	bl	6d8 <JPEG_HuffmanTable_Read>
     a98:	e58d8024 	str	r8, [sp, #36]	; 0x24
     a9c:	eaffffd3 	b	9f0 <JPEG_Decoder_ReadImage+0x134>
     aa0:	e28d2008 	add	r2, sp, #8
     aa4:	e892000c 	ldm	r2, {r2, r3}
     aa8:	e0020293 	mul	r2, r3, r2
     aac:	e28d3f76 	add	r3, sp, #472	; 0x1d8
     ab0:	e0833302 	add	r3, r3, r2, lsl #6
     ab4:	e28d2018 	add	r2, sp, #24
     ab8:	e58d3010 	str	r3, [sp, #16]
     abc:	e892000c 	ldm	r2, {r2, r3}
     ac0:	e0020293 	mul	r2, r3, r2
     ac4:	e59d3010 	ldr	r3, [sp, #16]
     ac8:	e3590001 	cmp	r9, #1
     acc:	e0833302 	add	r3, r3, r2, lsl #6
     ad0:	03a01008 	moveq	r1, #8
     ad4:	e58d3014 	str	r3, [sp, #20]
     ad8:	0a000005 	beq	af4 <JPEG_Decoder_ReadImage+0x238>
     adc:	e3590002 	cmp	r9, #2
     ae0:	03a01007 	moveq	r1, #7
     ae4:	0a000002 	beq	af4 <JPEG_Decoder_ReadImage+0x238>
     ae8:	e3590004 	cmp	r9, #4
     aec:	13a01000 	movne	r1, #0
     af0:	03a01006 	moveq	r1, #6
     af4:	e3550001 	cmp	r5, #1
     af8:	03a02008 	moveq	r2, #8
     afc:	0a000005 	beq	b18 <JPEG_Decoder_ReadImage+0x25c>
     b00:	e3550002 	cmp	r5, #2
     b04:	03a02007 	moveq	r2, #7
     b08:	0a000002 	beq	b18 <JPEG_Decoder_ReadImage+0x25c>
     b0c:	e3550004 	cmp	r5, #4
     b10:	13a02000 	movne	r2, #0
     b14:	03a02006 	moveq	r2, #6
     b18:	e59d3008 	ldr	r3, [sp, #8]
     b1c:	e1a03113 	lsl	r3, r3, r1
     b20:	e58d304c 	str	r3, [sp, #76]	; 0x4c
     b24:	e59d300c 	ldr	r3, [sp, #12]
     b28:	e1a03213 	lsl	r3, r3, r2
     b2c:	e58d306c 	str	r3, [sp, #108]	; 0x6c
     b30:	e59d3018 	ldr	r3, [sp, #24]
     b34:	e1a03113 	lsl	r3, r3, r1
     b38:	e58d3050 	str	r3, [sp, #80]	; 0x50
     b3c:	e59d301c 	ldr	r3, [sp, #28]
     b40:	e1a03213 	lsl	r3, r3, r2
     b44:	e58d3070 	str	r3, [sp, #112]	; 0x70
     b48:	e59d3020 	ldr	r3, [sp, #32]
     b4c:	e1a03113 	lsl	r3, r3, r1
     b50:	e3a01000 	mov	r1, #0
     b54:	e58d3054 	str	r3, [sp, #84]	; 0x54
     b58:	e1a03217 	lsl	r3, r7, r2
     b5c:	e58d3074 	str	r3, [sp, #116]	; 0x74
     b60:	e59d3010 	ldr	r3, [sp, #16]
     b64:	e2832040 	add	r2, r3, #64	; 0x40
     b68:	e5621001 	strb	r1, [r2, #-1]!
     b6c:	e59d3010 	ldr	r3, [sp, #16]
     b70:	e1530002 	cmp	r3, r2
     b74:	1afffffb 	bne	b68 <JPEG_Decoder_ReadImage+0x2ac>
     b78:	e3a01000 	mov	r1, #0
     b7c:	e59d3014 	ldr	r3, [sp, #20]
     b80:	e2832040 	add	r2, r3, #64	; 0x40
     b84:	e5621001 	strb	r1, [r2, #-1]!
     b88:	e59d3014 	ldr	r3, [sp, #20]
     b8c:	e1530002 	cmp	r3, r2
     b90:	1afffffb 	bne	b84 <JPEG_Decoder_ReadImage+0x2c8>
     b94:	e59d206c 	ldr	r2, [sp, #108]	; 0x6c
     b98:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
     b9c:	e3530c01 	cmp	r3, #256	; 0x100
     ba0:	03520c01 	cmpeq	r2, #256	; 0x100
     ba4:	03a02001 	moveq	r2, #1
     ba8:	13a02000 	movne	r2, #0
     bac:	1a000044 	bne	cc4 <JPEG_Decoder_ReadImage+0x408>
     bb0:	e59d2070 	ldr	r2, [sp, #112]	; 0x70
     bb4:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
     bb8:	e3530080 	cmp	r3, #128	; 0x80
     bbc:	03520080 	cmpeq	r2, #128	; 0x80
     bc0:	03a02001 	moveq	r2, #1
     bc4:	13a02000 	movne	r2, #0
     bc8:	1a00003d 	bne	cc4 <JPEG_Decoder_ReadImage+0x408>
     bcc:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
     bd0:	e59d2074 	ldr	r2, [sp, #116]	; 0x74
     bd4:	e3530080 	cmp	r3, #128	; 0x80
     bd8:	03520080 	cmpeq	r2, #128	; 0x80
     bdc:	03a03001 	moveq	r3, #1
     be0:	13a03000 	movne	r3, #0
     be4:	e58d300c 	str	r3, [sp, #12]
     be8:	e1a03185 	lsl	r3, r5, #3
     bec:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
     bf0:	e58d3018 	str	r3, [sp, #24]
     bf4:	e1a03189 	lsl	r3, r9, #3
     bf8:	e0010193 	mul	r1, r3, r1
     bfc:	e3a02000 	mov	r2, #0
     c00:	e58d3068 	str	r3, [sp, #104]	; 0x68
     c04:	e1a03441 	asr	r3, r1, #8
     c08:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
     c0c:	e58d3084 	str	r3, [sp, #132]	; 0x84
     c10:	e1a03189 	lsl	r3, r9, #3
     c14:	e0010193 	mul	r1, r3, r1
     c18:	e1a03441 	asr	r3, r1, #8
     c1c:	e59d1054 	ldr	r1, [sp, #84]	; 0x54
     c20:	e58d3088 	str	r3, [sp, #136]	; 0x88
     c24:	e1a03189 	lsl	r3, r9, #3
     c28:	e0010193 	mul	r1, r3, r1
     c2c:	e1a06002 	mov	r6, r2
     c30:	e1a03441 	asr	r3, r1, #8
     c34:	e58d308c 	str	r3, [sp, #140]	; 0x8c
     c38:	e59d1018 	ldr	r1, [sp, #24]
     c3c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
     c40:	e0030391 	mul	r3, r1, r3
     c44:	e58d3090 	str	r3, [sp, #144]	; 0x90
     c48:	e1a03209 	lsl	r3, r9, #4
     c4c:	e58d3094 	str	r3, [sp, #148]	; 0x94
     c50:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
     c54:	e1a03083 	lsl	r3, r3, #1
     c58:	e58d309c 	str	r3, [sp, #156]	; 0x9c
     c5c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
     c60:	e1a03103 	lsl	r3, r3, #2
     c64:	e58d20c8 	str	r2, [sp, #200]	; 0xc8
     c68:	e58d20cc 	str	r2, [sp, #204]	; 0xcc
     c6c:	e58d20d0 	str	r2, [sp, #208]	; 0xd0
     c70:	e58d20d4 	str	r2, [sp, #212]	; 0xd4
     c74:	e58d30a0 	str	r3, [sp, #160]	; 0xa0
     c78:	e58d1034 	str	r1, [sp, #52]	; 0x34
     c7c:	e58d201c 	str	r2, [sp, #28]
     c80:	e58d2008 	str	r2, [sp, #8]
     c84:	e59f58e8 	ldr	r5, [pc, #2280]	; 1574 <JPEG_Decoder_ReadImage+0xcb8>
     c88:	e59d3004 	ldr	r3, [sp, #4]
     c8c:	e2833e42 	add	r3, r3, #1056	; 0x420
     c90:	e1d320be 	ldrh	r2, [r3, #14]
     c94:	e59d1018 	ldr	r1, [sp, #24]
     c98:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
     c9c:	e0433001 	sub	r3, r3, r1
     ca0:	e1520003 	cmp	r2, r3
     ca4:	da000222 	ble	1534 <JPEG_Decoder_ReadImage+0xc78>
     ca8:	e59d30a4 	ldr	r3, [sp, #164]	; 0xa4
     cac:	e59d201c 	ldr	r2, [sp, #28]
     cb0:	e0833082 	add	r3, r3, r2, lsl #1
     cb4:	e58d3038 	str	r3, [sp, #56]	; 0x38
     cb8:	e3a03000 	mov	r3, #0
     cbc:	e58d3020 	str	r3, [sp, #32]
     cc0:	ea000162 	b	1250 <JPEG_Decoder_ReadImage+0x994>
     cc4:	e58d200c 	str	r2, [sp, #12]
     cc8:	eaffffc6 	b	be8 <JPEG_Decoder_ReadImage+0x32c>
     ccc:	e28d30b8 	add	r3, sp, #184	; 0xb8
     cd0:	e7934109 	ldr	r4, [r3, r9, lsl #2]
     cd4:	e59d2004 	ldr	r2, [sp, #4]
     cd8:	e5d43003 	ldrb	r3, [r4, #3]
     cdc:	e0823403 	add	r3, r2, r3, lsl #8
     ce0:	e5d42001 	ldrb	r2, [r4, #1]
     ce4:	e2833020 	add	r3, r3, #32
     ce8:	e58d3078 	str	r3, [sp, #120]	; 0x78
     cec:	e1a03182 	lsl	r3, r2, #3
     cf0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
     cf4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
     cf8:	e5d73449 	ldrb	r3, [r7, #1097]	; 0x449
     cfc:	e0432002 	sub	r2, r3, r2
     d00:	e2723000 	rsbs	r3, r2, #0
     d04:	e0a33002 	adc	r3, r3, r2
     d08:	e58d3064 	str	r3, [sp, #100]	; 0x64
     d0c:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
     d10:	e5d7344a 	ldrb	r3, [r7, #1098]	; 0x44a
     d14:	e0431002 	sub	r1, r3, r2
     d18:	e2713000 	rsbs	r3, r1, #0
     d1c:	e0a33001 	adc	r3, r3, r1
     d20:	e58d3040 	str	r3, [sp, #64]	; 0x40
     d24:	e5d43000 	ldrb	r3, [r4]
     d28:	e3530001 	cmp	r3, #1
     d2c:	028d3f76 	addeq	r3, sp, #472	; 0x1d8
     d30:	0a000005 	beq	d4c <JPEG_Decoder_ReadImage+0x490>
     d34:	e3530002 	cmp	r3, #2
     d38:	059d3010 	ldreq	r3, [sp, #16]
     d3c:	0a000002 	beq	d4c <JPEG_Decoder_ReadImage+0x490>
     d40:	e3530003 	cmp	r3, #3
     d44:	e59d3014 	ldr	r3, [sp, #20]
     d48:	13a03000 	movne	r3, #0
     d4c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
     d50:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
     d54:	e1a03183 	lsl	r3, r3, #3
     d58:	e58d3098 	str	r3, [sp, #152]	; 0x98
     d5c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
     d60:	e58d3058 	str	r3, [sp, #88]	; 0x58
     d64:	e3a03fa1 	mov	r3, #644	; 0x284
     d68:	e59d2064 	ldr	r2, [sp, #100]	; 0x64
     d6c:	e0020293 	mul	r2, r3, r2
     d70:	e28d1ee6 	add	r1, sp, #3680	; 0xe60
     d74:	e2811008 	add	r1, r1, #8
     d78:	e0811002 	add	r1, r1, r2
     d7c:	e2411e4e 	sub	r1, r1, #1248	; 0x4e0
     d80:	e2411004 	sub	r1, r1, #4
     d84:	e58d105c 	str	r1, [sp, #92]	; 0x5c
     d88:	e28d0ee6 	add	r0, sp, #3680	; 0xe60
     d8c:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
     d90:	e2800008 	add	r0, r0, #8
     d94:	e0210193 	mla	r1, r3, r1, r0
     d98:	e2411e9e 	sub	r1, r1, #2528	; 0x9e0
     d9c:	e241100c 	sub	r1, r1, #12
     da0:	e58d1060 	str	r1, [sp, #96]	; 0x60
     da4:	e3a01000 	mov	r1, #0
     da8:	e58d30b0 	str	r3, [sp, #176]	; 0xb0
     dac:	e0803002 	add	r3, r0, r2
     db0:	e58d1044 	str	r1, [sp, #68]	; 0x44
     db4:	e58d30b4 	str	r3, [sp, #180]	; 0xb4
     db8:	e5d43002 	ldrb	r3, [r4, #2]
     dbc:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
     dc0:	e1520183 	cmp	r2, r3, lsl #3
     dc4:	ba0000fa 	blt	11b4 <JPEG_Decoder_ReadImage+0x8f8>
     dc8:	e2899001 	add	r9, r9, #1
     dcc:	e2888004 	add	r8, r8, #4
     dd0:	e2877003 	add	r7, r7, #3
     dd4:	e59d3004 	ldr	r3, [sp, #4]
     dd8:	e5933454 	ldr	r3, [r3, #1108]	; 0x454
     ddc:	e1530009 	cmp	r3, r9
     de0:	caffffb9 	bgt	ccc <JPEG_Decoder_ReadImage+0x410>
     de4:	e59d3020 	ldr	r3, [sp, #32]
     de8:	e59d2068 	ldr	r2, [sp, #104]	; 0x68
     dec:	e0833002 	add	r3, r3, r2
     df0:	e59d203c 	ldr	r2, [sp, #60]	; 0x3c
     df4:	e1530002 	cmp	r3, r2
     df8:	e58d3020 	str	r3, [sp, #32]
     dfc:	ca00010f 	bgt	1240 <JPEG_Decoder_ReadImage+0x984>
     e00:	e59d3e90 	ldr	r3, [sp, #3728]	; 0xe90
     e04:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
     e08:	e1530002 	cmp	r3, r2
     e0c:	ba00010b 	blt	1240 <JPEG_Decoder_ReadImage+0x984>
     e10:	e59d300c 	ldr	r3, [sp, #12]
     e14:	e3530000 	cmp	r3, #0
     e18:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
     e1c:	1a0000e6 	bne	11bc <JPEG_Decoder_ReadImage+0x900>
     e20:	e58d3040 	str	r3, [sp, #64]	; 0x40
     e24:	e59d300c 	ldr	r3, [sp, #12]
     e28:	e1a07003 	mov	r7, r3
     e2c:	e1a04003 	mov	r4, r3
     e30:	e58d3028 	str	r3, [sp, #40]	; 0x28
     e34:	e58d302c 	str	r3, [sp, #44]	; 0x2c
     e38:	e59d3018 	ldr	r3, [sp, #24]
     e3c:	e1530004 	cmp	r3, r4
     e40:	da0000fa 	ble	1230 <JPEG_Decoder_ReadImage+0x974>
     e44:	e3a00000 	mov	r0, #0
     e48:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
     e4c:	e59de088 	ldr	lr, [sp, #136]	; 0x88
     e50:	e59da010 	ldr	sl, [sp, #16]
     e54:	e1a01442 	asr	r1, r2, #8
     e58:	e02eae91 	mla	lr, r1, lr, sl
     e5c:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
     e60:	e58de058 	str	lr, [sp, #88]	; 0x58
     e64:	e59d108c 	ldr	r1, [sp, #140]	; 0x8c
     e68:	e59de014 	ldr	lr, [sp, #20]
     e6c:	e1a02442 	asr	r2, r2, #8
     e70:	e021e192 	mla	r1, r2, r1, lr
     e74:	e1a08000 	mov	r8, r0
     e78:	e1a09000 	mov	r9, r0
     e7c:	e1a0c000 	mov	ip, r0
     e80:	e58d105c 	str	r1, [sp, #92]	; 0x5c
     e84:	e59d2084 	ldr	r2, [sp, #132]	; 0x84
     e88:	e28d1ee6 	add	r1, sp, #3680	; 0xe60
     e8c:	e1a03447 	asr	r3, r7, #8
     e90:	e2811008 	add	r1, r1, #8
     e94:	e0221293 	mla	r2, r3, r2, r1
     e98:	e58d2060 	str	r2, [sp, #96]	; 0x60
     e9c:	e1a0308c 	lsl	r3, ip, #1
     ea0:	e58d3044 	str	r3, [sp, #68]	; 0x44
     ea4:	e59d3068 	ldr	r3, [sp, #104]	; 0x68
     ea8:	e153000c 	cmp	r3, ip
     eac:	ca00014a 	bgt	13dc <JPEG_Decoder_ReadImage+0xb20>
     eb0:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
     eb4:	e59d209c 	ldr	r2, [sp, #156]	; 0x9c
     eb8:	e0833002 	add	r3, r3, r2
     ebc:	e58d3040 	str	r3, [sp, #64]	; 0x40
     ec0:	e59d306c 	ldr	r3, [sp, #108]	; 0x6c
     ec4:	e59d2070 	ldr	r2, [sp, #112]	; 0x70
     ec8:	e0877003 	add	r7, r7, r3
     ecc:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
     ed0:	e0833002 	add	r3, r3, r2
     ed4:	e58d302c 	str	r3, [sp, #44]	; 0x2c
     ed8:	e59d2074 	ldr	r2, [sp, #116]	; 0x74
     edc:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
     ee0:	e0833002 	add	r3, r3, r2
     ee4:	e58d3028 	str	r3, [sp, #40]	; 0x28
     ee8:	e2844001 	add	r4, r4, #1
     eec:	eaffffd1 	b	e38 <JPEG_Decoder_ReadImage+0x57c>
     ef0:	e3a0303f 	mov	r3, #63	; 0x3f
     ef4:	e3a01000 	mov	r1, #0
     ef8:	e28d20d8 	add	r2, sp, #216	; 0xd8
     efc:	e7821103 	str	r1, [r2, r3, lsl #2]
     f00:	e2533001 	subs	r3, r3, #1
     f04:	2afffffc 	bcs	efc <JPEG_Decoder_ReadImage+0x640>
     f08:	e3560018 	cmp	r6, #24
     f0c:	9a000078 	bls	10f4 <JPEG_Decoder_ReadImage+0x838>
     f10:	e59d3008 	ldr	r3, [sp, #8]
     f14:	e2462008 	sub	r2, r6, #8
     f18:	e1a02233 	lsr	r2, r3, r2
     f1c:	e59d30b4 	ldr	r3, [sp, #180]	; 0xb4
     f20:	e20220ff 	and	r2, r2, #255	; 0xff
     f24:	e0831002 	add	r1, r3, r2
     f28:	e5513484 	ldrb	r3, [r1, #-1156]	; 0xfffffb7c
     f2c:	e3530000 	cmp	r3, #0
     f30:	15511384 	ldrbne	r1, [r1, #-900]	; 0xfffffc7c
     f34:	10463003 	subne	r3, r6, r3
     f38:	1a000013 	bne	f8c <JPEG_Decoder_ReadImage+0x6d0>
     f3c:	e3a01007 	mov	r1, #7
     f40:	e59dc05c 	ldr	ip, [sp, #92]	; 0x5c
     f44:	e246e002 	sub	lr, r6, #2
     f48:	e59d0008 	ldr	r0, [sp, #8]
     f4c:	e04e3001 	sub	r3, lr, r1
     f50:	e1a00330 	lsr	r0, r0, r3
     f54:	e2000001 	and	r0, r0, #1
     f58:	e1802082 	orr	r2, r0, r2, lsl #1
     f5c:	e49c0004 	ldr	r0, [ip], #4
     f60:	e1520000 	cmp	r2, r0
     f64:	e2811001 	add	r1, r1, #1
     f68:	cafffff6 	bgt	f48 <JPEG_Decoder_ReadImage+0x68c>
     f6c:	e3a000a1 	mov	r0, #161	; 0xa1
     f70:	e59dc064 	ldr	ip, [sp, #100]	; 0x64
     f74:	e02c1c90 	mla	ip, r0, ip, r1
     f78:	e28d0ee6 	add	r0, sp, #3680	; 0xe60
     f7c:	e2800008 	add	r0, r0, #8
     f80:	e080110c 	add	r1, r0, ip, lsl #2
     f84:	e51114c4 	ldr	r1, [r1, #-1220]	; 0xfffffb3c
     f88:	e7d11002 	ldrb	r1, [r1, r2]
     f8c:	e3a00001 	mov	r0, #1
     f90:	e59dc008 	ldr	ip, [sp, #8]
     f94:	e1a02110 	lsl	r2, r0, r1
     f98:	e0433001 	sub	r3, r3, r1
     f9c:	e2422001 	sub	r2, r2, #1
     fa0:	e002233c 	and	r2, r2, ip, lsr r3
     fa4:	e241c001 	sub	ip, r1, #1
     fa8:	e1520c10 	cmp	r2, r0, lsl ip
     fac:	33e00000 	mvncc	r0, #0
     fb0:	30822110 	addcc	r2, r2, r0, lsl r1
     fb4:	e5981000 	ldr	r1, [r8]
     fb8:	32822001 	addcc	r2, r2, #1
     fbc:	e0822001 	add	r2, r2, r1
     fc0:	e59d1078 	ldr	r1, [sp, #120]	; 0x78
     fc4:	e5911000 	ldr	r1, [r1]
     fc8:	e5882000 	str	r2, [r8]
     fcc:	e0020291 	mul	r2, r1, r2
     fd0:	e28dcee6 	add	ip, sp, #3680	; 0xe60
     fd4:	e59d10b0 	ldr	r1, [sp, #176]	; 0xb0
     fd8:	e58d20d8 	str	r2, [sp, #216]	; 0xd8
     fdc:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
     fe0:	e28cc008 	add	ip, ip, #8
     fe4:	e022c291 	mla	r2, r1, r2, ip
     fe8:	e3a00001 	mov	r0, #1
     fec:	e58d20a8 	str	r2, [sp, #168]	; 0xa8
     ff0:	e3a020a1 	mov	r2, #161	; 0xa1
     ff4:	e1a0e000 	mov	lr, r0
     ff8:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
     ffc:	e0010192 	mul	r1, r2, r1
    1000:	e58d10ac 	str	r1, [sp, #172]	; 0xac
    1004:	e3530018 	cmp	r3, #24
    1008:	9a000042 	bls	1118 <JPEG_Decoder_ReadImage+0x85c>
    100c:	e59d1008 	ldr	r1, [sp, #8]
    1010:	e2432008 	sub	r2, r3, #8
    1014:	e1a02231 	lsr	r2, r1, r2
    1018:	e59d10a8 	ldr	r1, [sp, #168]	; 0xa8
    101c:	e20220ff 	and	r2, r2, #255	; 0xff
    1020:	e0811002 	add	r1, r1, r2
    1024:	e551c98c 	ldrb	ip, [r1, #-2444]	; 0xfffff674
    1028:	e35c0000 	cmp	ip, #0
    102c:	1043600c 	subne	r6, r3, ip
    1030:	1551388c 	ldrbne	r3, [r1, #-2188]	; 0xfffff774
    1034:	1a000013 	bne	1088 <JPEG_Decoder_ReadImage+0x7cc>
    1038:	e59d1060 	ldr	r1, [sp, #96]	; 0x60
    103c:	e1a0a001 	mov	sl, r1
    1040:	e3a01007 	mov	r1, #7
    1044:	e2433002 	sub	r3, r3, #2
    1048:	e59dc008 	ldr	ip, [sp, #8]
    104c:	e0436001 	sub	r6, r3, r1
    1050:	e1a0c63c 	lsr	ip, ip, r6
    1054:	e20cc001 	and	ip, ip, #1
    1058:	e18c2082 	orr	r2, ip, r2, lsl #1
    105c:	e49ac004 	ldr	ip, [sl], #4
    1060:	e152000c 	cmp	r2, ip
    1064:	e2811001 	add	r1, r1, #1
    1068:	cafffff6 	bgt	1048 <JPEG_Decoder_ReadImage+0x78c>
    106c:	e59d30ac 	ldr	r3, [sp, #172]	; 0xac
    1070:	e0831001 	add	r1, r3, r1
    1074:	e28d3ee6 	add	r3, sp, #3680	; 0xe60
    1078:	e2833008 	add	r3, r3, #8
    107c:	e0831101 	add	r1, r3, r1, lsl #2
    1080:	e51139cc 	ldr	r3, [r1, #-2508]	; 0xfffff634
    1084:	e7d33002 	ldrb	r3, [r3, r2]
    1088:	e1a02243 	asr	r2, r3, #4
    108c:	e213300f 	ands	r3, r3, #15
    1090:	0a00002a 	beq	1140 <JPEG_Decoder_ReadImage+0x884>
    1094:	e0820000 	add	r0, r2, r0
    1098:	e59d1008 	ldr	r1, [sp, #8]
    109c:	e1a0231e 	lsl	r2, lr, r3
    10a0:	e0466003 	sub	r6, r6, r3
    10a4:	e2422001 	sub	r2, r2, #1
    10a8:	e0022631 	and	r2, r2, r1, lsr r6
    10ac:	e2431001 	sub	r1, r3, #1
    10b0:	e152011e 	cmp	r2, lr, lsl r1
    10b4:	33e01000 	mvncc	r1, #0
    10b8:	30822311 	addcc	r2, r2, r1, lsl r3
    10bc:	e0853000 	add	r3, r5, r0
    10c0:	e5d31100 	ldrb	r1, [r3, #256]	; 0x100
    10c4:	e28d3ee6 	add	r3, sp, #3680	; 0xe60
    10c8:	e2833008 	add	r3, r3, #8
    10cc:	e0831101 	add	r1, r3, r1, lsl #2
    10d0:	e59d3078 	ldr	r3, [sp, #120]	; 0x78
    10d4:	e7933100 	ldr	r3, [r3, r0, lsl #2]
    10d8:	32822001 	addcc	r2, r2, #1
    10dc:	e0030392 	mul	r3, r2, r3
    10e0:	e350003f 	cmp	r0, #63	; 0x3f
    10e4:	e5013d90 	str	r3, [r1, #-3472]	; 0xfffff270
    10e8:	0a000017 	beq	114c <JPEG_Decoder_ReadImage+0x890>
    10ec:	e2800001 	add	r0, r0, #1
    10f0:	ea000010 	b	1138 <JPEG_Decoder_ReadImage+0x87c>
    10f4:	e5db3000 	ldrb	r3, [fp]
    10f8:	e59d2008 	ldr	r2, [sp, #8]
    10fc:	e35300ff 	cmp	r3, #255	; 0xff
    1100:	e1832402 	orr	r2, r3, r2, lsl #8
    1104:	e58d2008 	str	r2, [sp, #8]
    1108:	128bb001 	addne	fp, fp, #1
    110c:	028bb002 	addeq	fp, fp, #2
    1110:	e2866008 	add	r6, r6, #8
    1114:	eaffff7b 	b	f08 <JPEG_Decoder_ReadImage+0x64c>
    1118:	e5db2000 	ldrb	r2, [fp]
    111c:	e59d1008 	ldr	r1, [sp, #8]
    1120:	e1821401 	orr	r1, r2, r1, lsl #8
    1124:	e35200ff 	cmp	r2, #255	; 0xff
    1128:	e58d1008 	str	r1, [sp, #8]
    112c:	128bb001 	addne	fp, fp, #1
    1130:	028bb002 	addeq	fp, fp, #2
    1134:	e2836008 	add	r6, r3, #8
    1138:	e1a03006 	mov	r3, r6
    113c:	eaffffb0 	b	1004 <JPEG_Decoder_ReadImage+0x748>
    1140:	e352000f 	cmp	r2, #15
    1144:	02800010 	addeq	r0, r0, #16
    1148:	0afffffa 	beq	1138 <JPEG_Decoder_ReadImage+0x87c>
    114c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    1150:	e3530000 	cmp	r3, #0
    1154:	0a000007 	beq	1178 <JPEG_Decoder_ReadImage+0x8bc>
    1158:	e28d00d8 	add	r0, sp, #216	; 0xd8
    115c:	ebfffba7 	bl	0 <JPEG_IDCT_Columns>
    1160:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    1164:	e59d1058 	ldr	r1, [sp, #88]	; 0x58
    1168:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
    116c:	e0831001 	add	r1, r3, r1
    1170:	e28d00d8 	add	r0, sp, #216	; 0xd8
    1174:	ebfffc02 	bl	184 <JPEG_IDCT_Rows>
    1178:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    117c:	e2833008 	add	r3, r3, #8
    1180:	e58d3028 	str	r3, [sp, #40]	; 0x28
    1184:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
    1188:	e5d43001 	ldrb	r3, [r4, #1]
    118c:	e1520183 	cmp	r2, r3, lsl #3
    1190:	baffff56 	blt	ef0 <JPEG_Decoder_ReadImage+0x634>
    1194:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
    1198:	e2833008 	add	r3, r3, #8
    119c:	e58d3044 	str	r3, [sp, #68]	; 0x44
    11a0:	e59d2098 	ldr	r2, [sp, #152]	; 0x98
    11a4:	e59d3058 	ldr	r3, [sp, #88]	; 0x58
    11a8:	e0833002 	add	r3, r3, r2
    11ac:	e58d3058 	str	r3, [sp, #88]	; 0x58
    11b0:	eaffff00 	b	db8 <JPEG_Decoder_ReadImage+0x4fc>
    11b4:	e3a03000 	mov	r3, #0
    11b8:	eafffff0 	b	1180 <JPEG_Decoder_ReadImage+0x8c4>
    11bc:	e3a04000 	mov	r4, #0
    11c0:	e58d3028 	str	r3, [sp, #40]	; 0x28
    11c4:	e28d3f76 	add	r3, sp, #472	; 0x1d8
    11c8:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    11cc:	e3a00000 	mov	r0, #0
    11d0:	e59d3014 	ldr	r3, [sp, #20]
    11d4:	e0833004 	add	r3, r3, r4
    11d8:	e58d3044 	str	r3, [sp, #68]	; 0x44
    11dc:	e59d3010 	ldr	r3, [sp, #16]
    11e0:	e0833004 	add	r3, r3, r4
    11e4:	e58d3058 	str	r3, [sp, #88]	; 0x58
    11e8:	e59de02c 	ldr	lr, [sp, #44]	; 0x2c
    11ec:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    11f0:	e3500008 	cmp	r0, #8
    11f4:	e0833100 	add	r3, r3, r0, lsl #2
    11f8:	e58d3040 	str	r3, [sp, #64]	; 0x40
    11fc:	e1a08100 	lsl	r8, r0, #2
    1200:	e28ee002 	add	lr, lr, #2
    1204:	1a00001c 	bne	127c <JPEG_Decoder_ReadImage+0x9c0>
    1208:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    120c:	e2833020 	add	r3, r3, #32
    1210:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    1214:	e59d20a0 	ldr	r2, [sp, #160]	; 0xa0
    1218:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    121c:	e2844008 	add	r4, r4, #8
    1220:	e0833002 	add	r3, r3, r2
    1224:	e3540040 	cmp	r4, #64	; 0x40
    1228:	e58d3028 	str	r3, [sp, #40]	; 0x28
    122c:	1affffe6 	bne	11cc <JPEG_Decoder_ReadImage+0x910>
    1230:	e59d3004 	ldr	r3, [sp, #4]
    1234:	e5933420 	ldr	r3, [r3, #1056]	; 0x420
    1238:	e3530000 	cmp	r3, #0
    123c:	1a000092 	bne	148c <JPEG_Decoder_ReadImage+0xbd0>
    1240:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
    1244:	e59d2094 	ldr	r2, [sp, #148]	; 0x94
    1248:	e0833002 	add	r3, r3, r2
    124c:	e58d3038 	str	r3, [sp, #56]	; 0x38
    1250:	e59d3004 	ldr	r3, [sp, #4]
    1254:	e2833e42 	add	r3, r3, #1056	; 0x420
    1258:	e2833004 	add	r3, r3, #4
    125c:	e1d330bc 	ldrh	r3, [r3, #12]
    1260:	e59d2020 	ldr	r2, [sp, #32]
    1264:	e1530002 	cmp	r3, r2
    1268:	da0000a7 	ble	150c <JPEG_Decoder_ReadImage+0xc50>
    126c:	e3a09000 	mov	r9, #0
    1270:	e59d7004 	ldr	r7, [sp, #4]
    1274:	e28d80c8 	add	r8, sp, #200	; 0xc8
    1278:	eafffed5 	b	dd4 <JPEG_Decoder_ReadImage+0x518>
    127c:	e3a090b7 	mov	r9, #183	; 0xb7
    1280:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
    1284:	e192c0d0 	ldrsb	ip, [r2, r0]
    1288:	e009099c 	mul	r9, ip, r9
    128c:	e3a02058 	mov	r2, #88	; 0x58
    1290:	e59d3058 	ldr	r3, [sp, #88]	; 0x58
    1294:	e59f72dc 	ldr	r7, [pc, #732]	; 1578 <JPEG_Decoder_ReadImage+0xcbc>
    1298:	e19330d0 	ldrsb	r3, [r3, r0]
    129c:	e007079c 	mul	r7, ip, r7
    12a0:	e1a0c009 	mov	ip, r9
    12a4:	e59f92d0 	ldr	r9, [pc, #720]	; 157c <JPEG_Decoder_ReadImage+0xcc0>
    12a8:	e0090993 	mul	r9, r3, r9
    12ac:	e0020293 	mul	r2, r3, r2
    12b0:	e1a03009 	mov	r3, r9
    12b4:	e15e10d2 	ldrsb	r1, [lr, #-2]
    12b8:	e281103f 	add	r1, r1, #63	; 0x3f
    12bc:	e0419442 	sub	r9, r1, r2, asr #8
    12c0:	e081a443 	add	sl, r1, r3, asr #8
    12c4:	e0811447 	add	r1, r1, r7, asr #8
    12c8:	e049944c 	sub	r9, r9, ip, asr #8
    12cc:	e085a14a 	add	sl, r5, sl, asr #2
    12d0:	e0851141 	add	r1, r5, r1, asr #2
    12d4:	e5daa160 	ldrb	sl, [sl, #352]	; 0x160
    12d8:	e5d11160 	ldrb	r1, [r1, #352]	; 0x160
    12dc:	e0859149 	add	r9, r5, r9, asr #2
    12e0:	e5d99160 	ldrb	r9, [r9, #352]	; 0x160
    12e4:	e181150a 	orr	r1, r1, sl, lsl #10
    12e8:	e1811289 	orr	r1, r1, r9, lsl #5
    12ec:	e1a01801 	lsl	r1, r1, #16
    12f0:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
    12f4:	e1a01821 	lsr	r1, r1, #16
    12f8:	e18810b9 	strh	r1, [r8, r9]
    12fc:	e15e10d1 	ldrsb	r1, [lr, #-1]
    1300:	e281103f 	add	r1, r1, #63	; 0x3f
    1304:	e0418442 	sub	r8, r1, r2, asr #8
    1308:	e0819443 	add	r9, r1, r3, asr #8
    130c:	e0811447 	add	r1, r1, r7, asr #8
    1310:	e048844c 	sub	r8, r8, ip, asr #8
    1314:	e0859149 	add	r9, r5, r9, asr #2
    1318:	e0851141 	add	r1, r5, r1, asr #2
    131c:	e5d99160 	ldrb	r9, [r9, #352]	; 0x160
    1320:	e5d11160 	ldrb	r1, [r1, #352]	; 0x160
    1324:	e0858148 	add	r8, r5, r8, asr #2
    1328:	e5d88160 	ldrb	r8, [r8, #352]	; 0x160
    132c:	e1811509 	orr	r1, r1, r9, lsl #10
    1330:	e1811288 	orr	r1, r1, r8, lsl #5
    1334:	e1a01801 	lsl	r1, r1, #16
    1338:	e59d8040 	ldr	r8, [sp, #64]	; 0x40
    133c:	e1a01821 	lsr	r1, r1, #16
    1340:	e1c810b2 	strh	r1, [r8, #2]
    1344:	e1de10de 	ldrsb	r1, [lr, #14]
    1348:	e281103f 	add	r1, r1, #63	; 0x3f
    134c:	e0418442 	sub	r8, r1, r2, asr #8
    1350:	e0819443 	add	r9, r1, r3, asr #8
    1354:	e0811447 	add	r1, r1, r7, asr #8
    1358:	e048844c 	sub	r8, r8, ip, asr #8
    135c:	e0859149 	add	r9, r5, r9, asr #2
    1360:	e0851141 	add	r1, r5, r1, asr #2
    1364:	e5d99160 	ldrb	r9, [r9, #352]	; 0x160
    1368:	e5d11160 	ldrb	r1, [r1, #352]	; 0x160
    136c:	e0858148 	add	r8, r5, r8, asr #2
    1370:	e5d88160 	ldrb	r8, [r8, #352]	; 0x160
    1374:	e1811509 	orr	r1, r1, r9, lsl #10
    1378:	e1811288 	orr	r1, r1, r8, lsl #5
    137c:	e59d8040 	ldr	r8, [sp, #64]	; 0x40
    1380:	e1a01801 	lsl	r1, r1, #16
    1384:	e1a01821 	lsr	r1, r1, #16
    1388:	e2888e1e 	add	r8, r8, #480	; 0x1e0
    138c:	e1c810b0 	strh	r1, [r8]
    1390:	e1de10df 	ldrsb	r1, [lr, #15]
    1394:	e281103f 	add	r1, r1, #63	; 0x3f
    1398:	e0412442 	sub	r2, r1, r2, asr #8
    139c:	e0813443 	add	r3, r1, r3, asr #8
    13a0:	e0817447 	add	r7, r1, r7, asr #8
    13a4:	e042244c 	sub	r2, r2, ip, asr #8
    13a8:	e0853143 	add	r3, r5, r3, asr #2
    13ac:	e0857147 	add	r7, r5, r7, asr #2
    13b0:	e5d33160 	ldrb	r3, [r3, #352]	; 0x160
    13b4:	e5d71160 	ldrb	r1, [r7, #352]	; 0x160
    13b8:	e0852142 	add	r2, r5, r2, asr #2
    13bc:	e5d22160 	ldrb	r2, [r2, #352]	; 0x160
    13c0:	e1813503 	orr	r3, r1, r3, lsl #10
    13c4:	e1833282 	orr	r3, r3, r2, lsl #5
    13c8:	e1a03803 	lsl	r3, r3, #16
    13cc:	e1a03823 	lsr	r3, r3, #16
    13d0:	e1c830b2 	strh	r3, [r8, #2]
    13d4:	e2800001 	add	r0, r0, #1
    13d8:	eaffff83 	b	11ec <JPEG_Decoder_ReadImage+0x930>
    13dc:	e59d2058 	ldr	r2, [sp, #88]	; 0x58
    13e0:	e1a03448 	asr	r3, r8, #8
    13e4:	e59d105c 	ldr	r1, [sp, #92]	; 0x5c
    13e8:	e19220d3 	ldrsb	r2, [r2, r3]
    13ec:	e1a03440 	asr	r3, r0, #8
    13f0:	e191e0d3 	ldrsb	lr, [r1, r3]
    13f4:	e3a01058 	mov	r1, #88	; 0x58
    13f8:	e3a0a0b7 	mov	sl, #183	; 0xb7
    13fc:	e0010192 	mul	r1, r2, r1
    1400:	e00a0a9e 	mul	sl, lr, sl
    1404:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    1408:	e0833449 	add	r3, r3, r9, asr #8
    140c:	e2433ec9 	sub	r3, r3, #3216	; 0xc90
    1410:	e1d330d0 	ldrsb	r3, [r3]
    1414:	e283303f 	add	r3, r3, #63	; 0x3f
    1418:	e0431441 	sub	r1, r3, r1, asr #8
    141c:	e041144a 	sub	r1, r1, sl, asr #8
    1420:	e59fa154 	ldr	sl, [pc, #340]	; 157c <JPEG_Decoder_ReadImage+0xcc0>
    1424:	e00a0a92 	mul	sl, r2, sl
    1428:	e083244a 	add	r2, r3, sl, asr #8
    142c:	e59fa144 	ldr	sl, [pc, #324]	; 1578 <JPEG_Decoder_ReadImage+0xcbc>
    1430:	e00a0a9e 	mul	sl, lr, sl
    1434:	e083e44a 	add	lr, r3, sl, asr #8
    1438:	e0852142 	add	r2, r5, r2, asr #2
    143c:	e085e14e 	add	lr, r5, lr, asr #2
    1440:	e5de3160 	ldrb	r3, [lr, #352]	; 0x160
    1444:	e5d22160 	ldrb	r2, [r2, #352]	; 0x160
    1448:	e0851141 	add	r1, r5, r1, asr #2
    144c:	e5d11160 	ldrb	r1, [r1, #352]	; 0x160
    1450:	e1832502 	orr	r2, r3, r2, lsl #10
    1454:	e1822281 	orr	r2, r2, r1, lsl #5
    1458:	e28d1040 	add	r1, sp, #64	; 0x40
    145c:	e891000a 	ldm	r1, {r1, r3}
    1460:	e1a02802 	lsl	r2, r2, #16
    1464:	e1a02822 	lsr	r2, r2, #16
    1468:	e18320b1 	strh	r2, [r3, r1]
    146c:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    1470:	e0899003 	add	r9, r9, r3
    1474:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
    1478:	e0888003 	add	r8, r8, r3
    147c:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    1480:	e28cc001 	add	ip, ip, #1
    1484:	e0800003 	add	r0, r0, r3
    1488:	eafffe83 	b	e9c <JPEG_Decoder_ReadImage+0x5e0>
    148c:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    1490:	e2522001 	subs	r2, r2, #1
    1494:	e58d2048 	str	r2, [sp, #72]	; 0x48
    1498:	058d3048 	streq	r3, [sp, #72]	; 0x48
    149c:	01a031a6 	lsreq	r3, r6, #3
    14a0:	1affff66 	bne	1240 <JPEG_Decoder_ReadImage+0x984>
    14a4:	e2533001 	subs	r3, r3, #1
    14a8:	2a000012 	bcs	14f8 <JPEG_Decoder_ReadImage+0xc3c>
    14ac:	e5db3000 	ldrb	r3, [fp]
    14b0:	e5db2001 	ldrb	r2, [fp, #1]
    14b4:	e1832402 	orr	r2, r3, r2, lsl #8
    14b8:	e1a03422 	lsr	r3, r2, #8
    14bc:	e1833402 	orr	r3, r3, r2, lsl #8
    14c0:	e1a03803 	lsl	r3, r3, #16
    14c4:	e59f20b4 	ldr	r2, [pc, #180]	; 1580 <JPEG_Decoder_ReadImage+0xcc4>
    14c8:	e1a03823 	lsr	r3, r3, #16
    14cc:	e1530002 	cmp	r3, r2
    14d0:	e3a03000 	mov	r3, #0
    14d4:	0a000015 	beq	1530 <JPEG_Decoder_ReadImage+0xc74>
    14d8:	e1a06003 	mov	r6, r3
    14dc:	e58d30c8 	str	r3, [sp, #200]	; 0xc8
    14e0:	e58d30cc 	str	r3, [sp, #204]	; 0xcc
    14e4:	e58d30d0 	str	r3, [sp, #208]	; 0xd0
    14e8:	e58d30d4 	str	r3, [sp, #212]	; 0xd4
    14ec:	e58d3008 	str	r3, [sp, #8]
    14f0:	e28bb002 	add	fp, fp, #2
    14f4:	eaffff51 	b	1240 <JPEG_Decoder_ReadImage+0x984>
    14f8:	e55b2002 	ldrb	r2, [fp, #-2]
    14fc:	e35200ff 	cmp	r2, #255	; 0xff
    1500:	124bb001 	subne	fp, fp, #1
    1504:	024bb002 	subeq	fp, fp, #2
    1508:	eaffffe5 	b	14a4 <JPEG_Decoder_ReadImage+0xbe8>
    150c:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
    1510:	e59d2018 	ldr	r2, [sp, #24]
    1514:	e0833002 	add	r3, r3, r2
    1518:	e58d3034 	str	r3, [sp, #52]	; 0x34
    151c:	e59d2090 	ldr	r2, [sp, #144]	; 0x90
    1520:	e59d301c 	ldr	r3, [sp, #28]
    1524:	e0833002 	add	r3, r3, r2
    1528:	e58d301c 	str	r3, [sp, #28]
    152c:	eafffdd5 	b	c88 <JPEG_Decoder_ReadImage+0x3cc>
    1530:	e1a06003 	mov	r6, r3
    1534:	e1a031a6 	lsr	r3, r6, #3
    1538:	e2533001 	subs	r3, r3, #1
    153c:	2a000007 	bcs	1560 <JPEG_Decoder_ReadImage+0xca4>
    1540:	e3a00001 	mov	r0, #1
    1544:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
    1548:	e28b3002 	add	r3, fp, #2
    154c:	e5823000 	str	r3, [r2]
    1550:	e28ddee6 	add	sp, sp, #3680	; 0xe60
    1554:	e28dd00c 	add	sp, sp, #12
    1558:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    155c:	e12fff1e 	bx	lr
    1560:	e55b2002 	ldrb	r2, [fp, #-2]
    1564:	e35200ff 	cmp	r2, #255	; 0xff
    1568:	124bb001 	subne	fp, fp, #1
    156c:	024bb002 	subeq	fp, fp, #2
    1570:	eafffff0 	b	1538 <JPEG_Decoder_ReadImage+0xc7c>
    1574:	00000000 	andeq	r0, r0, r0
    1578:	00000167 	andeq	r0, r0, r7, ror #2
    157c:	000001c6 	andeq	r0, r0, r6, asr #3
    1580:	0000ffd9 	ldrdeq	pc, [r0], -r9

00001584 <hrt_DecodeJPEG>:
    1584:	e92d4070 	push	{r4, r5, r6, lr}
    1588:	e24dde47 	sub	sp, sp, #1136	; 0x470
    158c:	e58d000c 	str	r0, [sp, #12]
    1590:	e1a04001 	mov	r4, r1
    1594:	e28d0014 	add	r0, sp, #20
    1598:	e28d100c 	add	r1, sp, #12
    159c:	e1a05002 	mov	r5, r2
    15a0:	e1a06003 	mov	r6, r3
    15a4:	ebfffffe 	bl	474 <JPEG_Decoder_ReadHeaders>
    15a8:	e3500000 	cmp	r0, #0
    15ac:	0a000007 	beq	15d0 <hrt_DecodeJPEG+0x4c>
    15b0:	e1a03005 	mov	r3, r5
    15b4:	e1a02004 	mov	r2, r4
    15b8:	e58d6000 	str	r6, [sp]
    15bc:	e28d100c 	add	r1, sp, #12
    15c0:	e28d0014 	add	r0, sp, #20
    15c4:	ebfffffe 	bl	8bc <JPEG_Decoder_ReadImage>
    15c8:	e2500000 	subs	r0, r0, #0
    15cc:	13a00001 	movne	r0, #1
    15d0:	e28dde47 	add	sp, sp, #1136	; 0x470
    15d4:	e8bd4070 	pop	{r4, r5, r6, lr}
    15d8:	e12fff1e 	bx	lr

000015dc <JPEG_Match>:
    15dc:	e1a03000 	mov	r3, r0
    15e0:	e2510000 	subs	r0, r1, #0
    15e4:	012fff1e 	bxeq	lr
    15e8:	e5d32000 	ldrb	r2, [r3]
    15ec:	e35200ff 	cmp	r2, #255	; 0xff
    15f0:	1a000006 	bne	1610 <JPEG_Match+0x34>
    15f4:	e3500001 	cmp	r0, #1
    15f8:	012fff1e 	bxeq	lr
    15fc:	e5d30001 	ldrb	r0, [r3, #1]
    1600:	e24030d8 	sub	r3, r0, #216	; 0xd8
    1604:	e2730000 	rsbs	r0, r3, #0
    1608:	e0a00003 	adc	r0, r0, r3
    160c:	e12fff1e 	bx	lr
    1610:	e3a00000 	mov	r0, #0
    1614:	e12fff1e 	bx	lr

Disassembly of section .rodata:

00000000 <JPEG_AANScaleFactor>:
   0:	00000100 	andeq	r0, r0, r0, lsl #2
   4:	00000163 	andeq	r0, r0, r3, ror #2
   8:	0000014e 	andeq	r0, r0, lr, asr #2
   c:	0000012d 	andeq	r0, r0, sp, lsr #2
  10:	00000100 	andeq	r0, r0, r0, lsl #2
  14:	000000c9 	andeq	r0, r0, r9, asr #1
  18:	0000008a 	andeq	r0, r0, sl, lsl #1
  1c:	00000046 	andeq	r0, r0, r6, asr #32
  20:	00000163 	andeq	r0, r0, r3, ror #2
  24:	000001ec 	andeq	r0, r0, ip, ror #3
  28:	000001cf 	andeq	r0, r0, pc, asr #3
  2c:	000001a1 	andeq	r0, r0, r1, lsr #3
  30:	00000163 	andeq	r0, r0, r3, ror #2
  34:	00000116 	andeq	r0, r0, r6, lsl r1
  38:	000000c0 	andeq	r0, r0, r0, asr #1
  3c:	00000061 	andeq	r0, r0, r1, rrx
  40:	0000014e 	andeq	r0, r0, lr, asr #2
  44:	000001cf 	andeq	r0, r0, pc, asr #3
  48:	000001b5 			; <UNDEFINED> instruction: 0x000001b5
  4c:	00000189 	andeq	r0, r0, r9, lsl #3
  50:	0000014e 	andeq	r0, r0, lr, asr #2
  54:	00000106 	andeq	r0, r0, r6, lsl #2
  58:	000000b5 	strheq	r0, [r0], -r5
  5c:	0000005c 	andeq	r0, r0, ip, asr r0
  60:	0000012d 	andeq	r0, r0, sp, lsr #2
  64:	000001a1 	andeq	r0, r0, r1, lsr #3
  68:	00000189 	andeq	r0, r0, r9, lsl #3
  6c:	00000161 	andeq	r0, r0, r1, ror #2
  70:	0000012d 	andeq	r0, r0, sp, lsr #2
  74:	000000ec 	andeq	r0, r0, ip, ror #1
  78:	000000a2 	andeq	r0, r0, r2, lsr #1
  7c:	00000053 	andeq	r0, r0, r3, asr r0
  80:	00000100 	andeq	r0, r0, r0, lsl #2
  84:	00000163 	andeq	r0, r0, r3, ror #2
  88:	0000014e 	andeq	r0, r0, lr, asr #2
  8c:	0000012d 	andeq	r0, r0, sp, lsr #2
  90:	00000100 	andeq	r0, r0, r0, lsl #2
  94:	000000c9 	andeq	r0, r0, r9, asr #1
  98:	0000008a 	andeq	r0, r0, sl, lsl #1
  9c:	00000046 	andeq	r0, r0, r6, asr #32
  a0:	000000c9 	andeq	r0, r0, r9, asr #1
  a4:	00000116 	andeq	r0, r0, r6, lsl r1
  a8:	00000106 	andeq	r0, r0, r6, lsl #2
  ac:	000000ec 	andeq	r0, r0, ip, ror #1
  b0:	000000c9 	andeq	r0, r0, r9, asr #1
  b4:	0000009e 	muleq	r0, lr, r0
  b8:	0000006c 	andeq	r0, r0, ip, rrx
  bc:	00000037 	andeq	r0, r0, r7, lsr r0
  c0:	0000008a 	andeq	r0, r0, sl, lsl #1
  c4:	000000c0 	andeq	r0, r0, r0, asr #1
  c8:	000000b5 	strheq	r0, [r0], -r5
  cc:	000000a2 	andeq	r0, r0, r2, lsr #1
  d0:	0000008a 	andeq	r0, r0, sl, lsl #1
  d4:	0000006c 	andeq	r0, r0, ip, rrx
  d8:	0000004a 	andeq	r0, r0, sl, asr #32
  dc:	00000026 	andeq	r0, r0, r6, lsr #32
  e0:	00000046 	andeq	r0, r0, r6, asr #32
  e4:	00000061 	andeq	r0, r0, r1, rrx
  e8:	0000005c 	andeq	r0, r0, ip, asr r0
  ec:	00000053 	andeq	r0, r0, r3, asr r0
  f0:	00000046 	andeq	r0, r0, r6, asr #32
  f4:	00000037 	andeq	r0, r0, r7, lsr r0
  f8:	00000026 	andeq	r0, r0, r6, lsr #32
  fc:	00000013 	andeq	r0, r0, r3, lsl r0

00000100 <JPEG_ToZigZag>:
 100:	10080100 	andne	r0, r8, r0, lsl #2
 104:	0a030209 	beq	c0930 <JPEG_Match+0xbf354>
 108:	19201811 	stmdbne	r0!, {r0, r4, fp, ip}
 10c:	05040b12 	streq	r0, [r4, #-2834]	; 0xfffff4ee
 110:	211a130c 	tstcs	sl, ip, lsl #6
 114:	22293028 	eorcs	r3, r9, #40	; 0x28
 118:	060d141b 			; <UNDEFINED> instruction: 0x060d141b
 11c:	1c150e07 	ldcne	14, cr0, [r5], {7}
 120:	38312a23 	ldmdacc	r1!, {r0, r1, r5, r9, fp, sp}
 124:	242b3239 	strtcs	r3, [fp], #-569	; 0xfffffdc7
 128:	170f161d 	smladne	pc, sp, r6, r1	; <UNPREDICTABLE>
 12c:	332c251e 			; <UNDEFINED> instruction: 0x332c251e
 130:	2d343b3a 	vldmdbcs	r4!, {d3-d31}
 134:	2e271f26 	cdpcs	15, 2, cr1, cr7, cr6, {1}
 138:	363d3c35 			; <UNDEFINED> instruction: 0x363d3c35
 13c:	3f3e372f 	svccc	0x003e372f

00000140 <JPEG_ComponentRange>:
	...
 160:	03020100 	movweq	r0, #8448	; 0x2100
 164:	07060504 	streq	r0, [r6, -r4, lsl #10]
 168:	0b0a0908 	bleq	282590 <JPEG_Match+0x280fb4>
 16c:	0f0e0d0c 	svceq	0x000e0d0c
 170:	13121110 	tstne	r2, #16, 2
 174:	17161514 			; <UNDEFINED> instruction: 0x17161514
 178:	1b1a1918 	blne	6865e0 <JPEG_Match+0x685004>
 17c:	1f1e1d1c 	svcne	0x001e1d1c
 180:	1f1f1f1f 	svcne	0x001f1f1f
 184:	1f1f1f1f 	svcne	0x001f1f1f
 188:	1f1f1f1f 	svcne	0x001f1f1f
 18c:	1f1f1f1f 	svcne	0x001f1f1f
 190:	1f1f1f1f 	svcne	0x001f1f1f
 194:	1f1f1f1f 	svcne	0x001f1f1f
 198:	1f1f1f1f 	svcne	0x001f1f1f
 19c:	1f1f1f1f 	svcne	0x001f1f1f

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


rng.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SeedRNG>:
   0:	e3a03000 	mov	r3, #0
   4:	e59f2028 	ldr	r2, [pc, #40]	; 34 <hrt_SeedRNG+0x34>
   8:	e5823000 	str	r3, [r2]
   c:	e59f2024 	ldr	r2, [pc, #36]	; 38 <hrt_SeedRNG+0x38>
  10:	e3800001 	orr	r0, r0, #1
  14:	e5820000 	str	r0, [r2]
  18:	e59f101c 	ldr	r1, [pc, #28]	; 3c <hrt_SeedRNG+0x3c>
  1c:	e2833001 	add	r3, r3, #1
  20:	e3530e27 	cmp	r3, #624	; 0x270
  24:	012fff1e 	bxeq	lr
  28:	e0000091 	mul	r0, r1, r0
  2c:	e7820103 	str	r0, [r2, r3, lsl #2]
  30:	eafffff9 	b	1c <hrt_SeedRNG+0x1c>
	...
  3c:	00010dcd 	andeq	r0, r1, sp, asr #27

00000040 <hrt_ReloadRNG>:
  40:	e59f3100 	ldr	r3, [pc, #256]	; 148 <hrt_ReloadRNG+0x108>
  44:	e5932000 	ldr	r2, [r3]
  48:	e3720001 	cmn	r2, #1
  4c:	e92d4070 	push	{r4, r5, r6, lr}
  50:	e1a04003 	mov	r4, r3
  54:	b59f00f0 	ldrlt	r0, [pc, #240]	; 14c <hrt_ReloadRNG+0x10c>
  58:	bbfffffe 	bllt	0 <hrt_SeedRNG>
  5c:	e59f30ec 	ldr	r3, [pc, #236]	; 150 <hrt_ReloadRNG+0x110>
  60:	e5843000 	str	r3, [r4]
  64:	e59f30e8 	ldr	r3, [pc, #232]	; 154 <hrt_ReloadRNG+0x114>
  68:	e3a000e4 	mov	r0, #228	; 0xe4
  6c:	e1a0c003 	mov	ip, r3
  70:	e2832004 	add	r2, r3, #4
  74:	e58329c4 	str	r2, [r3, #2500]	; 0x9c4
  78:	e59f40d8 	ldr	r4, [pc, #216]	; 158 <hrt_ReloadRNG+0x118>
  7c:	e8930006 	ldm	r3, {r1, r2}
  80:	e2500001 	subs	r0, r0, #1
  84:	e201e102 	and	lr, r1, #-2147483648	; 0x80000000
  88:	1a000019 	bne	f4 <hrt_ReloadRNG+0xb4>
  8c:	e59f00c0 	ldr	r0, [pc, #192]	; 154 <hrt_ReloadRNG+0x114>
  90:	e59fe0c4 	ldr	lr, [pc, #196]	; 15c <hrt_ReloadRNG+0x11c>
  94:	e59f50bc 	ldr	r5, [pc, #188]	; 158 <hrt_ReloadRNG+0x118>
  98:	e25ee001 	subs	lr, lr, #1
  9c:	e4903004 	ldr	r3, [r0], #4
  a0:	e2011102 	and	r1, r1, #-2147483648	; 0x80000000
  a4:	1a00001d 	bne	120 <hrt_ReloadRNG+0xe0>
  a8:	e59c0000 	ldr	r0, [ip]
  ac:	e3c02102 	bic	r2, r0, #-2147483648	; 0x80000000
  b0:	e1821001 	orr	r1, r2, r1
  b4:	e02330a1 	eor	r3, r3, r1, lsr #1
  b8:	e59f1098 	ldr	r1, [pc, #152]	; 158 <hrt_ReloadRNG+0x118>
  bc:	e2102001 	ands	r2, r0, #1
  c0:	11a02001 	movne	r2, r1
  c4:	e0233002 	eor	r3, r3, r2
  c8:	e58c39bc 	str	r3, [ip, #2492]	; 0x9bc
  cc:	e59f308c 	ldr	r3, [pc, #140]	; 160 <hrt_ReloadRNG+0x120>
  d0:	e02005a0 	eor	r0, r0, r0, lsr #11
  d4:	e0033380 	and	r3, r3, r0, lsl #7
  d8:	e0233000 	eor	r3, r3, r0
  dc:	e59f0080 	ldr	r0, [pc, #128]	; 164 <hrt_ReloadRNG+0x124>
  e0:	e0000783 	and	r0, r0, r3, lsl #15
  e4:	e0200003 	eor	r0, r0, r3
  e8:	e0200920 	eor	r0, r0, r0, lsr #18
  ec:	e8bd4070 	pop	{r4, r5, r6, lr}
  f0:	e12fff1e 	bx	lr
  f4:	e3c21102 	bic	r1, r2, #-2147483648	; 0x80000000
  f8:	e181e00e 	orr	lr, r1, lr
  fc:	e5931634 	ldr	r1, [r3, #1588]	; 0x634
 100:	e02110ae 	eor	r1, r1, lr, lsr #1
 104:	e212e001 	ands	lr, r2, #1
 108:	11a0e004 	movne	lr, r4
 10c:	e021100e 	eor	r1, r1, lr
 110:	e4831004 	str	r1, [r3], #4
 114:	e1a01002 	mov	r1, r2
 118:	e5932004 	ldr	r2, [r3, #4]
 11c:	eaffffd7 	b	80 <hrt_ReloadRNG+0x40>
 120:	e3c24102 	bic	r4, r2, #-2147483648	; 0x80000000
 124:	e1841001 	orr	r1, r4, r1
 128:	e02330a1 	eor	r3, r3, r1, lsr #1
 12c:	e2121001 	ands	r1, r2, #1
 130:	11a01005 	movne	r1, r5
 134:	e0233001 	eor	r3, r3, r1
 138:	e5803388 	str	r3, [r0, #904]	; 0x388
 13c:	e1a01002 	mov	r1, r2
 140:	e5902390 	ldr	r2, [r0, #912]	; 0x390
 144:	eaffffd3 	b	98 <hrt_ReloadRNG+0x58>
 148:	00000000 	andeq	r0, r0, r0
 14c:	00001105 	andeq	r1, r0, r5, lsl #2
 150:	0000026f 	andeq	r0, r0, pc, ror #4
 154:	00000000 	andeq	r0, r0, r0
 158:	9908b0df 	stmdbls	r8, {r0, r1, r2, r3, r4, r6, r7, ip, sp, pc}
 15c:	0000018d 	andeq	r0, r0, sp, lsl #3
 160:	9d2c5680 	stcls	6, cr5, [ip, #-512]!	; 0xfffffe00
 164:	efc60000 	svc	0x00c60000

00000168 <hrt_CreateRNG>:
 168:	e59f2048 	ldr	r2, [pc, #72]	; 1b8 <hrt_CreateRNG+0x50>
 16c:	e5923000 	ldr	r3, [r2]
 170:	e2433001 	sub	r3, r3, #1
 174:	e3530000 	cmp	r3, #0
 178:	e5823000 	str	r3, [r2]
 17c:	bafffffe 	blt	40 <hrt_ReloadRNG>
 180:	e59f2034 	ldr	r2, [pc, #52]	; 1bc <hrt_CreateRNG+0x54>
 184:	e59239c4 	ldr	r3, [r2, #2500]	; 0x9c4
 188:	e2831004 	add	r1, r3, #4
 18c:	e5933000 	ldr	r3, [r3]
 190:	e59f0028 	ldr	r0, [pc, #40]	; 1c0 <hrt_CreateRNG+0x58>
 194:	e02335a3 	eor	r3, r3, r3, lsr #11
 198:	e0000383 	and	r0, r0, r3, lsl #7
 19c:	e0233000 	eor	r3, r3, r0
 1a0:	e59f001c 	ldr	r0, [pc, #28]	; 1c4 <hrt_CreateRNG+0x5c>
 1a4:	e0000783 	and	r0, r0, r3, lsl #15
 1a8:	e0200003 	eor	r0, r0, r3
 1ac:	e58219c4 	str	r1, [r2, #2500]	; 0x9c4
 1b0:	e0200920 	eor	r0, r0, r0, lsr #18
 1b4:	e12fff1e 	bx	lr
	...
 1c0:	9d2c5680 	stcls	6, cr5, [ip, #-512]!	; 0xfffffe00
 1c4:	efc60000 	svc	0x00c60000

000001c8 <hrt_RNGRange>:
 1c8:	e92d4070 	push	{r4, r5, r6, lr}
 1cc:	e1a05001 	mov	r5, r1
 1d0:	e1a04000 	mov	r4, r0
 1d4:	ebfffffe 	bl	168 <hrt_CreateRNG>
 1d8:	e1a01005 	mov	r1, r5
 1dc:	e59f3010 	ldr	r3, [pc, #16]	; 1f4 <hrt_RNGRange+0x2c>
 1e0:	e1a0e00f 	mov	lr, pc
 1e4:	e12fff13 	bx	r3
 1e8:	e0810004 	add	r0, r1, r4
 1ec:	e8bd4070 	pop	{r4, r5, r6, lr}
 1f0:	e12fff1e 	bx	lr
 1f4:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <left>:
   0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

Disassembly of section .bss:

00000000 <state>:
	...

000009c4 <next>:
 9c4:	00000000 	andeq	r0, r0, r0

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


rtc.o:     file format elf32-littlearm


Disassembly of section .iwram:

00000000 <gettime>:
   0:	e59f30b8 	ldr	r3, [pc, #184]	; c0 <RTCLoop3+0x2c>
   4:	e3a01001 	mov	r1, #1
   8:	e1c310b4 	strh	r1, [r3, #4]
   c:	e3a01007 	mov	r1, #7
  10:	e1c310b2 	strh	r1, [r3, #2]
  14:	e3a01001 	mov	r1, #1
  18:	e1c310b0 	strh	r1, [r3]
  1c:	e3a01005 	mov	r1, #5
  20:	e1c310b0 	strh	r1, [r3]
  24:	e3a02065 	mov	r2, #101	; 0x65
  28:	e3a0c008 	mov	ip, #8

0000002c <RTCLoop1>:
  2c:	e3a01002 	mov	r1, #2
  30:	e0011322 	and	r1, r1, r2, lsr #6
  34:	e3811004 	orr	r1, r1, #4
  38:	e1c310b0 	strh	r1, [r3]
  3c:	e1a01322 	lsr	r1, r2, #6
  40:	e3811005 	orr	r1, r1, #5
  44:	e1c310b0 	strh	r1, [r3]
  48:	e1a02082 	lsl	r2, r2, #1
  4c:	e25cc001 	subs	ip, ip, #1
  50:	1afffff5 	bne	2c <RTCLoop1>
  54:	e3a01005 	mov	r1, #5
  58:	e1c310b2 	strh	r1, [r3, #2]
  5c:	e3a02000 	mov	r2, #0
  60:	e3a0c020 	mov	ip, #32

00000064 <RTCLoop2>:
  64:	e3a01004 	mov	r1, #4
  68:	e1c310b0 	strh	r1, [r3]
  6c:	e3a01005 	mov	r1, #5
  70:	e1c310b0 	strh	r1, [r3]
  74:	e1d310b0 	ldrh	r1, [r3]
  78:	e2011002 	and	r1, r1, #2
  7c:	e1a020a2 	lsr	r2, r2, #1
  80:	e1822f01 	orr	r2, r2, r1, lsl #30
  84:	e25cc001 	subs	ip, ip, #1
  88:	1afffff5 	bne	64 <RTCLoop2>
  8c:	e3a00000 	mov	r0, #0
  90:	e3a0c018 	mov	ip, #24

00000094 <RTCLoop3>:
  94:	e3a01004 	mov	r1, #4
  98:	e1c310b0 	strh	r1, [r3]
  9c:	e3a01005 	mov	r1, #5
  a0:	e1c310b0 	strh	r1, [r3]
  a4:	e1d310b0 	ldrh	r1, [r3]
  a8:	e2011002 	and	r1, r1, #2
  ac:	e1a000a0 	lsr	r0, r0, #1
  b0:	e1800b01 	orr	r0, r0, r1, lsl #22
  b4:	e25cc001 	subs	ip, ip, #1
  b8:	1afffff5 	bne	94 <RTCLoop3>
  bc:	e12fff1e 	bx	lr
  c0:	080000c4 	stmdaeq	r0, {r2, r6, r7}

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001941 	andeq	r1, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000f 	andeq	r0, r0, pc
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	Address 0x0000000000000018 is out of bounds.


misc.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_PrintRTCTimeIntoString>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd014 	sub	sp, sp, #20
   8:	e1a04000 	mov	r4, r0
   c:	e59f1090 	ldr	r1, [pc, #144]	; a4 <hrt_PrintRTCTimeIntoString+0xa4>
  10:	e59f5090 	ldr	r5, [pc, #144]	; a8 <hrt_PrintRTCTimeIntoString+0xa8>
  14:	e28d0004 	add	r0, sp, #4
  18:	e1a0e00f 	mov	lr, pc
  1c:	e12fff15 	bx	r5
  20:	e59f3084 	ldr	r3, [pc, #132]	; ac <hrt_PrintRTCTimeIntoString+0xac>
  24:	e1a0e00f 	mov	lr, pc
  28:	e12fff13 	bx	r3
  2c:	e1a03240 	asr	r3, r0, #4
  30:	e2033003 	and	r3, r3, #3
  34:	e2833030 	add	r3, r3, #48	; 0x30
  38:	e5cd3004 	strb	r3, [sp, #4]
  3c:	e200300f 	and	r3, r0, #15
  40:	e2833030 	add	r3, r3, #48	; 0x30
  44:	e5cd3005 	strb	r3, [sp, #5]
  48:	e1a03640 	asr	r3, r0, #12
  4c:	e203300f 	and	r3, r3, #15
  50:	e2833030 	add	r3, r3, #48	; 0x30
  54:	e5cd3007 	strb	r3, [sp, #7]
  58:	e1a03440 	asr	r3, r0, #8
  5c:	e203300f 	and	r3, r3, #15
  60:	e2833030 	add	r3, r3, #48	; 0x30
  64:	e5cd3008 	strb	r3, [sp, #8]
  68:	e1a03a40 	asr	r3, r0, #20
  6c:	e203300f 	and	r3, r3, #15
  70:	e2833030 	add	r3, r3, #48	; 0x30
  74:	e5cd300a 	strb	r3, [sp, #10]
  78:	e1a03840 	asr	r3, r0, #16
  7c:	e203300f 	and	r3, r3, #15
  80:	e2833030 	add	r3, r3, #48	; 0x30
  84:	e1a00004 	mov	r0, r4
  88:	e28d1004 	add	r1, sp, #4
  8c:	e5cd300b 	strb	r3, [sp, #11]
  90:	e1a0e00f 	mov	lr, pc
  94:	e12fff15 	bx	r5
  98:	e28dd014 	add	sp, sp, #20
  9c:	e8bd4030 	pop	{r4, r5, lr}
  a0:	e12fff1e 	bx	lr
	...

000000b0 <hrt_DMACopy>:
  b0:	e3a0c00c 	mov	ip, #12
  b4:	e000009c 	mul	r0, ip, r0
  b8:	e2800301 	add	r0, r0, #67108864	; 0x4000000
  bc:	e58010b0 	str	r1, [r0, #176]	; 0xb0
  c0:	e58020b4 	str	r2, [r0, #180]	; 0xb4
  c4:	e59d2000 	ldr	r2, [sp]
  c8:	e1833002 	orr	r3, r3, r2
  cc:	e58030b8 	str	r3, [r0, #184]	; 0xb8
  d0:	e12fff1e 	bx	lr

Disassembly of section .data:

00000000 <SRAM>:
   0:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}

00000004 <OAMAff>:
   4:	07000000 	streq	r0, [r0, -r0]

00000008 <OAM>:
   8:	07000000 	streq	r0, [r0, -r0]

0000000c <PALETTE>:
   c:	05000000 	streq	r0, [r0, #-0]

00000010 <VRAM>:
  10:	06000000 	streq	r0, [r0], -r0

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	303a3030 	eorscc	r3, sl, r0, lsr r0
   4:	30303a30 	eorscc	r3, r0, r0, lsr sl
	...

Disassembly of section .iwram:

00000000 <hrt_EZFSetRompage>:
   0:	e3a02cd2 	mov	r2, #53760	; 0xd200
   4:	e59f3030 	ldr	r3, [pc, #48]	; 3c <hrt_EZFSetRompage+0x3c>
   8:	e3a01302 	mov	r1, #134217728	; 0x8000000
   c:	e1c320b0 	strh	r2, [r3]
  10:	e3a03c15 	mov	r3, #5376	; 0x1500
  14:	e1c130b0 	strh	r3, [r1]
  18:	e2811802 	add	r1, r1, #131072	; 0x20000
  1c:	e1c120b0 	strh	r2, [r1]
  20:	e59f2018 	ldr	r2, [pc, #24]	; 40 <hrt_EZFSetRompage+0x40>
  24:	e1c230b0 	strh	r3, [r2]
  28:	e2822761 	add	r2, r2, #25427968	; 0x1840000
  2c:	e1c200b0 	strh	r0, [r2]
  30:	e282271d 	add	r2, r2, #7602176	; 0x740000
  34:	e1c230b0 	strh	r3, [r2]
  38:	e12fff1e 	bx	lr
  3c:	09fe0000 	ldmibeq	lr!, {}^	; <UNPREDICTABLE>
  40:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>

00000044 <hrt_ExitToEZFlash>:
  44:	e92d4010 	push	{r4, lr}
  48:	e3a00902 	mov	r0, #32768	; 0x8000
  4c:	ebfffffe 	bl	0 <hrt_EZFSetRompage>
  50:	ef000001 	svc	0x00000001
  54:	ef000000 	svc	0x00000000
  58:	e8bd4010 	pop	{r4, lr}
  5c:	e12fff1e 	bx	lr

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


intdispatch.o:     file format elf32-littlearm


Disassembly of section .iwram:

00000000 <IntrMain>:
   0:	e3a03301 	mov	r3, #67108864	; 0x4000000
   4:	e5932200 	ldr	r2, [r3, #512]	; 0x200
   8:	e5931208 	ldr	r1, [r3, #520]	; 0x208
   c:	e5833208 	str	r3, [r3, #520]	; 0x208
  10:	e14f0000 	mrs	r0, SPSR
  14:	e92d400b 	push	{r0, r1, r3, lr}
  18:	e0021822 	and	r1, r2, r2, lsr #16
  1c:	e15320b8 	ldrh	r2, [r3, #-8]
  20:	e1822001 	orr	r2, r2, r1
  24:	e14320b8 	strh	r2, [r3, #-8]
  28:	e59f2084 	ldr	r2, [pc, #132]	; b4 <IntrRet+0x2c>
  2c:	e2833c02 	add	r3, r3, #512	; 0x200

00000030 <findIRQ>:
  30:	e5920004 	ldr	r0, [r2, #4]
  34:	e3500000 	cmp	r0, #0
  38:	0a000003 	beq	4c <no_handler>
  3c:	e0100001 	ands	r0, r0, r1
  40:	1a000005 	bne	5c <jump_intr>
  44:	e2822008 	add	r2, r2, #8
  48:	eafffff8 	b	30 <findIRQ>

0000004c <no_handler>:
  4c:	e1c310b2 	strh	r1, [r3, #2]
  50:	e8bd400b 	pop	{r0, r1, r3, lr}
  54:	e5831208 	str	r1, [r3, #520]	; 0x208
  58:	e1a0f00e 	mov	pc, lr

0000005c <jump_intr>:
  5c:	e5922000 	ldr	r2, [r2]
  60:	e3520000 	cmp	r2, #0
  64:	0afffff8 	beq	4c <no_handler>

00000068 <got_handler>:
  68:	e10f1000 	mrs	r1, CPSR
  6c:	e3c110df 	bic	r1, r1, #223	; 0xdf
  70:	e381101f 	orr	r1, r1, #31
  74:	e129f001 	msr	CPSR_fc, r1
  78:	e1c300b2 	strh	r0, [r3, #2]
  7c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  80:	e28fe000 	add	lr, pc, #0
  84:	e12fff12 	bx	r2

00000088 <IntrRet>:
  88:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  8c:	e3a03301 	mov	r3, #67108864	; 0x4000000
  90:	e5833208 	str	r3, [r3, #520]	; 0x208
  94:	e10f3000 	mrs	r3, CPSR
  98:	e3c330df 	bic	r3, r3, #223	; 0xdf
  9c:	e3833092 	orr	r3, r3, #146	; 0x92
  a0:	e129f003 	msr	CPSR_fc, r3
  a4:	e8bd400b 	pop	{r0, r1, r3, lr}
  a8:	e5831208 	str	r1, [r3, #520]	; 0x208
  ac:	e169f000 	msr	SPSR_fc, r0
  b0:	e1a0f00e 	mov	pc, lr
  b4:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001941 	andeq	r1, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000f 	andeq	r0, r0, pc
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	Address 0x0000000000000018 is out of bounds.


interrupt.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <dummy>:
   0:	e12fff1e 	bx	lr

00000004 <hrt_irqInit>:
   4:	e3a03000 	mov	r3, #0
   8:	e1a01003 	mov	r1, r3
   c:	e59f2024 	ldr	r2, [pc, #36]	; 38 <hrt_irqInit+0x34>
  10:	e59f0024 	ldr	r0, [pc, #36]	; 3c <hrt_irqInit+0x38>
  14:	e2833001 	add	r3, r3, #1
  18:	e353000f 	cmp	r3, #15
  1c:	e8820003 	stm	r2, {r0, r1}
  20:	e2822008 	add	r2, r2, #8
  24:	1afffffa 	bne	14 <hrt_irqInit+0x10>
  28:	e59f3010 	ldr	r3, [pc, #16]	; 40 <hrt_irqInit+0x3c>
  2c:	e59f2010 	ldr	r2, [pc, #16]	; 44 <hrt_irqInit+0x40>
  30:	e5832ffc 	str	r2, [r3, #4092]	; 0xffc
  34:	e12fff1e 	bx	lr
	...
  40:	03007000 	movweq	r7, #0
  44:	00000000 	andeq	r0, r0, r0

00000048 <InitInterrupt>:
  48:	eafffffe 	b	4 <hrt_irqInit>

0000004c <hrt_irqSet>:
  4c:	e3a03000 	mov	r3, #0
  50:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  54:	e59fe034 	ldr	lr, [pc, #52]	; 90 <hrt_irqSet+0x44>
  58:	e79e2183 	ldr	r2, [lr, r3, lsl #3]
  5c:	e3520000 	cmp	r2, #0
  60:	e1a0c183 	lsl	ip, r3, #3
  64:	0a000002 	beq	74 <hrt_irqSet+0x28>
  68:	e1520000 	cmp	r2, r0
  6c:	12833001 	addne	r3, r3, #1
  70:	1afffff8 	bne	58 <hrt_irqSet+0xc>
  74:	e59f2018 	ldr	r2, [pc, #24]	; 94 <hrt_irqSet+0x48>
  78:	e7821183 	str	r1, [r2, r3, lsl #3]
  7c:	e082100c 	add	r1, r2, ip
  80:	e5810004 	str	r0, [r1, #4]
  84:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  88:	e0820183 	add	r0, r2, r3, lsl #3
  8c:	e12fff1e 	bx	lr
  90:	00000004 	andeq	r0, r0, r4
  94:	00000000 	andeq	r0, r0, r0

00000098 <SetInterrupt>:
  98:	eafffffe 	b	4c <hrt_irqSet>

0000009c <hrt_irqEnable>:
  9c:	e3100001 	tst	r0, #1
  a0:	13a02301 	movne	r2, #67108864	; 0x4000000
  a4:	11d230b4 	ldrhne	r3, [r2, #4]
  a8:	13833008 	orrne	r3, r3, #8
  ac:	11c230b4 	strhne	r3, [r2, #4]
  b0:	e3100002 	tst	r0, #2
  b4:	13a02301 	movne	r2, #67108864	; 0x4000000
  b8:	11d230b4 	ldrhne	r3, [r2, #4]
  bc:	13833010 	orrne	r3, r3, #16
  c0:	11c230b4 	strhne	r3, [r2, #4]
  c4:	e3100004 	tst	r0, #4
  c8:	13a02301 	movne	r2, #67108864	; 0x4000000
  cc:	11d230b4 	ldrhne	r3, [r2, #4]
  d0:	13833020 	orrne	r3, r3, #32
  d4:	11c230b4 	strhne	r3, [r2, #4]
  d8:	e59f3014 	ldr	r3, [pc, #20]	; f4 <hrt_irqEnable+0x58>
  dc:	e1d320b0 	ldrh	r2, [r3]
  e0:	e1820000 	orr	r0, r2, r0
  e4:	e3a02001 	mov	r2, #1
  e8:	e1c300b0 	strh	r0, [r3]
  ec:	e1c320b8 	strh	r2, [r3, #8]
  f0:	e12fff1e 	bx	lr
  f4:	04000200 	streq	r0, [r0], #-512	; 0xfffffe00

000000f8 <EnableInterrupt>:
  f8:	eafffffe 	b	9c <hrt_irqEnable>

000000fc <hrt_irqDisable>:
  fc:	e3100001 	tst	r0, #1
 100:	13a02301 	movne	r2, #67108864	; 0x4000000
 104:	11d230b4 	ldrhne	r3, [r2, #4]
 108:	13c33008 	bicne	r3, r3, #8
 10c:	11c230b4 	strhne	r3, [r2, #4]
 110:	e3100002 	tst	r0, #2
 114:	13a02301 	movne	r2, #67108864	; 0x4000000
 118:	11d230b4 	ldrhne	r3, [r2, #4]
 11c:	13c33010 	bicne	r3, r3, #16
 120:	11c230b4 	strhne	r3, [r2, #4]
 124:	e3100004 	tst	r0, #4
 128:	13a02301 	movne	r2, #67108864	; 0x4000000
 12c:	11d230b4 	ldrhne	r3, [r2, #4]
 130:	13c33020 	bicne	r3, r3, #32
 134:	11c230b4 	strhne	r3, [r2, #4]
 138:	e59f3014 	ldr	r3, [pc, #20]	; 154 <hrt_irqDisable+0x58>
 13c:	e1d320b0 	ldrh	r2, [r3]
 140:	e1c20000 	bic	r0, r2, r0
 144:	e3a02001 	mov	r2, #1
 148:	e1c300b0 	strh	r0, [r3]
 14c:	e1c320b8 	strh	r2, [r3, #8]
 150:	e12fff1e 	bx	lr
 154:	04000200 	streq	r0, [r0], #-512	; 0xfffffe00

00000158 <DisableInterrupt>:
 158:	eafffffe 	b	fc <hrt_irqDisable>

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


bios.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SoftReset>:
   0:	df00      	svc	0
   2:	4770      	bx	lr

00000004 <hrt_RegisterRamReset>:
   4:	df01      	svc	1
   6:	4770      	bx	lr

00000008 <hrt_Halt>:
   8:	df02      	svc	2
   a:	4770      	bx	lr

0000000c <hrt_Stop>:
   c:	df03      	svc	3
   e:	4770      	bx	lr

00000010 <hrt_IntrWait>:
  10:	df04      	svc	4
  12:	4770      	bx	lr

00000014 <hrt_VblankIntrWait>:
  14:	df05      	svc	5
  16:	4770      	bx	lr

00000018 <hrt_Div>:
  18:	df06      	svc	6
  1a:	4770      	bx	lr

0000001c <hrt_DivMod>:
  1c:	df06      	svc	6
  1e:	1c08      	adds	r0, r1, #0
  20:	4770      	bx	lr

00000022 <hrt_DivAbs>:
  22:	df06      	svc	6
  24:	1c18      	adds	r0, r3, #0
  26:	4770      	bx	lr

00000028 <hrt_DivArm>:
  28:	df07      	svc	7
  2a:	4770      	bx	lr

0000002c <hrt_DivArmMod>:
  2c:	df07      	svc	7
  2e:	1c08      	adds	r0, r1, #0
  30:	4770      	bx	lr

00000032 <hrt_DivArmAbs>:
  32:	df07      	svc	7
  34:	1c18      	adds	r0, r3, #0
  36:	4770      	bx	lr

00000038 <hrt_Sqrt>:
  38:	df08      	svc	8
  3a:	4770      	bx	lr

0000003c <hrt_ArcTan>:
  3c:	df09      	svc	9
  3e:	4770      	bx	lr

00000040 <hrt_ArcTan2>:
  40:	df0a      	svc	10
  42:	4770      	bx	lr

00000044 <hrt_CpuSet>:
  44:	df0b      	svc	11
  46:	4770      	bx	lr

00000048 <hrt_CpuFastSet>:
  48:	df0c      	svc	12
  4a:	4770      	bx	lr

0000004c <hrt_GetBiosChecksum>:
  4c:	df0d      	svc	13
  4e:	4770      	bx	lr

00000050 <hrt_BgAffineSet>:
  50:	df0e      	svc	14
  52:	4770      	bx	lr

00000054 <hrt_ObjAffineSet>:
  54:	df0f      	svc	15
  56:	4770      	bx	lr

00000058 <hrt_BitUnPack>:
  58:	df10      	svc	16
  5a:	4770      	bx	lr

0000005c <hrt_LZ77UnCompWram>:
  5c:	df11      	svc	17
  5e:	4770      	bx	lr

00000060 <hrt_LZ77UnCompVram>:
  60:	df12      	svc	18
  62:	4770      	bx	lr

00000064 <hrt_HuffUnComp>:
  64:	df13      	svc	19
  66:	4770      	bx	lr

00000068 <hrt_RLUnCompWram>:
  68:	df14      	svc	20
  6a:	4770      	bx	lr

0000006c <hrt_RLUnCompVram>:
  6c:	df15      	svc	21
  6e:	4770      	bx	lr

00000070 <hrt_Diff8bitUnFilterWram>:
  70:	df16      	svc	22
  72:	4770      	bx	lr

00000074 <hrt_Diff8bitUnFilterVram>:
  74:	df17      	svc	23
  76:	4770      	bx	lr

00000078 <hrt_Diff16bitUnFilter>:
  78:	df18      	svc	24
  7a:	4770      	bx	lr

0000007c <hrt_SoundDriverInit>:
  7c:	df1a      	svc	26
  7e:	4770      	bx	lr

00000080 <hrt_SoundDriverMode>:
  80:	df1b      	svc	27
  82:	4770      	bx	lr

00000084 <hrt_SoundDriverMain>:
  84:	df1c      	svc	28
  86:	4770      	bx	lr

00000088 <hrt_SoundDriverVSync>:
  88:	df1d      	svc	29
  8a:	4770      	bx	lr

0000008c <hrt_SoundChannelClear>:
  8c:	df1e      	svc	30
  8e:	4770      	bx	lr

00000090 <hrt_MidiKey2Freq>:
  90:	df1f      	svc	31
  92:	4770      	bx	lr

00000094 <hrt_SoundWhatever0>:
  94:	df20      	svc	32
  96:	4770      	bx	lr

00000098 <hrt_SoundWhatever1>:
  98:	df21      	svc	33	; 0x21
  9a:	4770      	bx	lr

0000009c <hrt_SoundWhatever2>:
  9c:	df22      	svc	34	; 0x22
  9e:	4770      	bx	lr

000000a0 <hrt_SoundWhatever3>:
  a0:	df23      	svc	35	; 0x23
  a2:	4770      	bx	lr

000000a4 <hrt_SoundWhatever4>:
  a4:	df24      	svc	36	; 0x24
  a6:	4770      	bx	lr

000000a8 <hrt_MultiBoot>:
  a8:	df25      	svc	37	; 0x25
  aa:	4770      	bx	lr

000000ac <hrt_HardReset>:
  ac:	df26      	svc	38	; 0x26
  ae:	4770      	bx	lr

000000b0 <hrt_CustomHalt>:
  b0:	df27      	svc	39	; 0x27
  b2:	4770      	bx	lr

000000b4 <hrt_SoundDriverVSyncOff>:
  b4:	df28      	svc	40	; 0x28
  b6:	4770      	bx	lr

000000b8 <hrt_SoundDriverVSyncOn>:
  b8:	df29      	svc	41	; 0x29
  ba:	4770      	bx	lr

000000bc <hrt_SoundGetJumpList>:
  bc:	df2a      	svc	42	; 0x2a
  be:	4770      	bx	lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001941 	andeq	r1, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000f 	andeq	r0, r0, pc
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	Address 0x0000000000000018 is out of bounds.


text.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_InitTextEngine>:
   0:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   4:	e3a05000 	mov	r5, #0
   8:	e59f3054 	ldr	r3, [pc, #84]	; 64 <hrt_InitTextEngine+0x64>
   c:	e1a04000 	mov	r4, r0
  10:	e1a0200d 	mov	r2, sp
  14:	e88d0028 	stm	sp, {r3, r5}
  18:	e59f1048 	ldr	r1, [pc, #72]	; 68 <hrt_InitTextEngine+0x68>
  1c:	e59f0048 	ldr	r0, [pc, #72]	; 6c <hrt_InitTextEngine+0x6c>
  20:	e59f3048 	ldr	r3, [pc, #72]	; 70 <hrt_InitTextEngine+0x70>
  24:	e1a0e00f 	mov	lr, pc
  28:	e12fff13 	bx	r3
  2c:	e59f3040 	ldr	r3, [pc, #64]	; 74 <hrt_InitTextEngine+0x74>
  30:	e59f2040 	ldr	r2, [pc, #64]	; 78 <hrt_InitTextEngine+0x78>
  34:	e5933000 	ldr	r3, [r3]
  38:	e1c320b2 	strh	r2, [r3, #2]
  3c:	e3e02902 	mvn	r2, #32768	; 0x8000
  40:	e2840402 	add	r0, r4, #33554432	; 0x2000000
  44:	e2800004 	add	r0, r0, #4
  48:	e1a00080 	lsl	r0, r0, #1
  4c:	e1c350b0 	strh	r5, [r3]
  50:	e1c320b4 	strh	r2, [r3, #4]
  54:	e1c050b0 	strh	r5, [r0]
  58:	e28dd00c 	add	sp, sp, #12
  5c:	e8bd4030 	pop	{r4, r5, lr}
  60:	e12fff1e 	bx	lr
  64:	040817c0 	streq	r1, [r8], #-1984	; 0xfffff840
  68:	06000800 	streq	r0, [r0], -r0, lsl #16
	...
  78:	00000421 	andeq	r0, r0, r1, lsr #8

0000007c <hrt_Print>:
  7c:	e92d000c 	push	{r2, r3}
  80:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
  84:	e1a04000 	mov	r4, r0
  88:	e1a05001 	mov	r5, r1
  8c:	e28d201c 	add	r2, sp, #28
  90:	e59d1018 	ldr	r1, [sp, #24]
  94:	e59f3054 	ldr	r3, [pc, #84]	; f0 <hrt_Print+0x74>
  98:	e58d2004 	str	r2, [sp, #4]
  9c:	e59f0050 	ldr	r0, [pc, #80]	; f4 <hrt_Print+0x78>
  a0:	e1a0e00f 	mov	lr, pc
  a4:	e12fff13 	bx	r3
  a8:	e59f3048 	ldr	r3, [pc, #72]	; f8 <hrt_Print+0x7c>
  ac:	e59f0040 	ldr	r0, [pc, #64]	; f4 <hrt_Print+0x78>
  b0:	e593c000 	ldr	ip, [r3]
  b4:	e59fe040 	ldr	lr, [pc, #64]	; fc <hrt_Print+0x80>
  b8:	e0841285 	add	r1, r4, r5, lsl #5
  bc:	e4d03001 	ldrb	r3, [r0], #1
  c0:	e3530000 	cmp	r3, #0
  c4:	1a000003 	bne	d8 <hrt_Print+0x5c>
  c8:	e28dd00c 	add	sp, sp, #12
  cc:	e8bd4030 	pop	{r4, r5, lr}
  d0:	e28dd008 	add	sp, sp, #8
  d4:	e12fff1e 	bx	lr
  d8:	e001200e 	and	r2, r1, lr
  dc:	e1a02082 	lsl	r2, r2, #1
  e0:	e2833020 	add	r3, r3, #32
  e4:	e18c30b2 	strh	r3, [ip, r2]
  e8:	e2811001 	add	r1, r1, #1
  ec:	eafffff2 	b	bc <hrt_Print+0x40>
	...
  fc:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

Disassembly of section .data:

00000000 <_____colors>:
   0:	04210000 	strteq	r0, [r1], #-0
   4:	Address 0x0000000000000004 is out of bounds.


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


video.o:     file format elf32-littlearm


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
   0:	00002b41 	andeq	r2, r0, r1, asr #22
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000021 	andeq	r0, r0, r1, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	02060049 	andeq	r0, r6, #73	; 0x49
  1c:	01090108 	tsteq	r9, r8, lsl #2
  20:	01170412 	tsteq	r7, r2, lsl r4
  24:	01190118 	tsteq	r9, r8, lsl r1
  28:	041e011a 	ldreq	r0, [lr], #-282	; 0xfffffee6

debug.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <AssertImplementation>:
   0:	e3500000 	cmp	r0, #0
   4:	112fff1e 	bxne	lr
   8:	e92d4010 	push	{r4, lr}
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <AssertImplementation+0x34>
  10:	e1a0e00f 	mov	lr, pc
  14:	e12fff13 	bx	r3
  18:	e3a03301 	mov	r3, #67108864	; 0x4000000
  1c:	e3a02c01 	mov	r2, #256	; 0x100
  20:	e59f4010 	ldr	r4, [pc, #16]	; 38 <AssertImplementation+0x38>
  24:	e1c320b0 	strh	r2, [r3]
  28:	e1a0e00f 	mov	lr, pc
  2c:	e12fff14 	bx	r4
  30:	eafffffc 	b	28 <AssertImplementation+0x28>
	...

Disassembly of section .rodata:

00000000 <hrt_lang_assert_vram2>:
   0:	6f636572 	svcvs	0x00636572
   4:	79726576 	ldmdbvc	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
   8:	20736920 	rsbscs	r6, r3, r0, lsr #18
   c:	696c6e75 	stmdbvs	ip!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  10:	796c656b 	stmdbvc	ip!, {r0, r1, r3, r5, r6, r8, sl, sp, lr}^
  14:	 	strbvc	r0, [r2, #-46]!	; 0xffffffd2

00000016 <hrt_lang_assert_vram>:
  16:	20747562 	rsbscs	r7, r4, r2, ror #10
  1a:	61206562 			; <UNDEFINED> instruction: 0x61206562
  1e:	65726177 	ldrbvs	r6, [r2, #-375]!	; 0xfffffe89
  22:	61687420 	cmnvs	r8, r0, lsr #8
  26:	52562074 	subspl	r2, r6, #116	; 0x74
  2a:	 	andpl	r4, r0, r1, asr #26

0000002d <hrt_lang_assert_key>:
  2d:	73657250 	cmnvc	r5, #80, 4
  31:	6e612073 	mcrvs	0, 3, r2, cr1, cr3, {3}
  35:	656b2079 	strbvs	r2, [fp, #-121]!	; 0xffffff87
  39:	6f742079 	svcvs	0x00742079
  3d:	6e676920 	vmulvs.f16	s13, s14, s1	; <UNPREDICTABLE>
  41:	2c65726f 	sfmcs	f7, 2, [r5], #-444	; 0xfffffe44
	...

00000046 <hrt_lang_assert_line>:
  46:	656e694c 	strbvs	r6, [lr, #-2380]!	; 0xfffff6b4
  4a:	6425203a 	strtvs	r2, [r5], #-58	; 0xffffffc6
	...

0000004f <hrt_lang_assert_file>:
  4f:	656c6946 	strbvs	r6, [ip, #-2374]!	; 0xfffff6ba
  53:	7325203a 			; <UNDEFINED> instruction: 0x7325203a
	...

00000058 <hrt_lang_assert>:
  58:	65737341 	ldrbvs	r7, [r3, #-833]!	; 0xfffffcbf
  5c:	6f697472 	svcvs	0x00697472
  60:	6166206e 	cmnvs	r6, lr, rrx
  64:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xfffff397
  68:	Address 0x0000000000000068 is out of bounds.


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


drawer.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_ConfigDrawer>:
   0:	e59fc028 	ldr	ip, [pc, #40]	; 30 <hrt_ConfigDrawer+0x30>
   4:	e1cc30b2 	strh	r3, [ip, #2]
   8:	e59d3008 	ldr	r3, [sp, #8]
   c:	e5cc0008 	strb	r0, [ip, #8]
  10:	e58c3020 	str	r3, [ip, #32]
  14:	e59d0000 	ldr	r0, [sp]
  18:	e59d3004 	ldr	r3, [sp, #4]
  1c:	e58c000c 	str	r0, [ip, #12]
  20:	e1cc20b0 	strh	r2, [ip]
  24:	e58c301c 	str	r3, [ip, #28]
  28:	e58c1004 	str	r1, [ip, #4]
  2c:	e12fff1e 	bx	lr
  30:	00000000 	andeq	r0, r0, r0

00000034 <hrt_SetDrawerScrollMapX>:
  34:	e3a0300c 	mov	r3, #12
  38:	e59f2008 	ldr	r2, [pc, #8]	; 48 <hrt_SetDrawerScrollMapX+0x14>
  3c:	e02c2193 	mla	ip, r3, r1, r2
  40:	e58c0010 	str	r0, [ip, #16]
  44:	e12fff1e 	bx	lr
  48:	00000000 	andeq	r0, r0, r0

0000004c <hrt_SetDrawerScrollMapY>:
  4c:	e3a0300c 	mov	r3, #12
  50:	e59f2008 	ldr	r2, [pc, #8]	; 60 <hrt_SetDrawerScrollMapY+0x14>
  54:	e02c2193 	mla	ip, r3, r1, r2
  58:	e58c0014 	str	r0, [ip, #20]
  5c:	e12fff1e 	bx	lr
  60:	00000000 	andeq	r0, r0, r0

00000064 <hrt_DrawMapLayerStripH>:
  64:	e3a0200c 	mov	r2, #12
  68:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  6c:	e59f407c 	ldr	r4, [pc, #124]	; f0 <hrt_DrawMapLayerStripH+0x8c>
  70:	e0254290 	mla	r5, r0, r2, r4
  74:	e1d430f0 	ldrsh	r3, [r4]
  78:	e1a0c0c1 	asr	ip, r1, #1
  7c:	e0070c93 	mul	r7, r3, ip
  80:	e201301f 	and	r3, r1, #31
  84:	e1a03303 	lsl	r3, r3, #6
  88:	e0830580 	add	r0, r3, r0, lsl #11
  8c:	e5953010 	ldr	r3, [r5, #16]
  90:	e2800406 	add	r0, r0, #100663296	; 0x6000000
  94:	e1a01081 	lsl	r1, r1, #1
  98:	e1a035c3 	asr	r3, r3, #11
  9c:	e5944004 	ldr	r4, [r4, #4]
  a0:	e595e00c 	ldr	lr, [r5, #12]
  a4:	e2800a0e 	add	r0, r0, #57344	; 0xe000
  a8:	e2011002 	and	r1, r1, #2
  ac:	e2835020 	add	r5, r3, #32
  b0:	e08720c3 	add	r2, r7, r3, asr #1
  b4:	e1a02082 	lsl	r2, r2, #1
  b8:	e19e20b2 	ldrh	r2, [lr, r2]
  bc:	e2036001 	and	r6, r3, #1
  c0:	e0812102 	add	r2, r1, r2, lsl #2
  c4:	e0822006 	add	r2, r2, r6
  c8:	e1a02082 	lsl	r2, r2, #1
  cc:	e19460b2 	ldrh	r6, [r4, r2]
  d0:	e203201f 	and	r2, r3, #31
  d4:	e2833001 	add	r3, r3, #1
  d8:	e1a02082 	lsl	r2, r2, #1
  dc:	e1550003 	cmp	r5, r3
  e0:	e18060b2 	strh	r6, [r0, r2]
  e4:	1afffff1 	bne	b0 <hrt_DrawMapLayerStripH+0x4c>
  e8:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
  ec:	e12fff1e 	bx	lr
  f0:	00000000 	andeq	r0, r0, r0

000000f4 <hrt_DrawFullDrawerScrollMap>:
  f4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  f8:	e59f5044 	ldr	r5, [pc, #68]	; 144 <hrt_DrawFullDrawerScrollMap+0x50>
  fc:	e3a04000 	mov	r4, #0
 100:	e1a07005 	mov	r7, r5
 104:	e5d73008 	ldrb	r3, [r7, #8]
 108:	e1530004 	cmp	r3, r4
 10c:	8a000001 	bhi	118 <hrt_DrawFullDrawerScrollMap+0x24>
 110:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 114:	e12fff1e 	bx	lr
 118:	e3a06000 	mov	r6, #0
 11c:	e5951014 	ldr	r1, [r5, #20]
 120:	e1a00004 	mov	r0, r4
 124:	e08615c1 	add	r1, r6, r1, asr #11
 128:	e2866001 	add	r6, r6, #1
 12c:	ebfffffe 	bl	64 <hrt_DrawMapLayerStripH>
 130:	e3560020 	cmp	r6, #32
 134:	1afffff8 	bne	11c <hrt_DrawFullDrawerScrollMap+0x28>
 138:	e2844001 	add	r4, r4, #1
 13c:	e285500c 	add	r5, r5, #12
 140:	eaffffef 	b	104 <hrt_DrawFullDrawerScrollMap+0x10>
 144:	00000000 	andeq	r0, r0, r0

00000148 <hrt_DrawMapLayerStripV>:
 148:	e3a0200c 	mov	r2, #12
 14c:	e59fc080 	ldr	ip, [pc, #128]	; 1d4 <hrt_DrawMapLayerStripV+0x8c>
 150:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 154:	e02ec290 	mla	lr, r0, r2, ip
 158:	e201301f 	and	r3, r1, #31
 15c:	e1a03083 	lsl	r3, r3, #1
 160:	e0830580 	add	r0, r3, r0, lsl #11
 164:	e59e3014 	ldr	r3, [lr, #20]
 168:	e2800406 	add	r0, r0, #100663296	; 0x6000000
 16c:	e1a035c3 	asr	r3, r3, #11
 170:	e59c4004 	ldr	r4, [ip, #4]
 174:	e59e500c 	ldr	r5, [lr, #12]
 178:	e1a060c1 	asr	r6, r1, #1
 17c:	e2800a0e 	add	r0, r0, #57344	; 0xe000
 180:	e2011001 	and	r1, r1, #1
 184:	e283e020 	add	lr, r3, #32
 188:	e1dc70f0 	ldrsh	r7, [ip]
 18c:	e1a080c3 	asr	r8, r3, #1
 190:	e0226897 	mla	r2, r7, r8, r6
 194:	e1a02082 	lsl	r2, r2, #1
 198:	e19520b2 	ldrh	r2, [r5, r2]
 19c:	e1a07083 	lsl	r7, r3, #1
 1a0:	e2077002 	and	r7, r7, #2
 1a4:	e0812102 	add	r2, r1, r2, lsl #2
 1a8:	e0822007 	add	r2, r2, r7
 1ac:	e1a02082 	lsl	r2, r2, #1
 1b0:	e19470b2 	ldrh	r7, [r4, r2]
 1b4:	e203201f 	and	r2, r3, #31
 1b8:	e2833001 	add	r3, r3, #1
 1bc:	e1a02302 	lsl	r2, r2, #6
 1c0:	e15e0003 	cmp	lr, r3
 1c4:	e18070b2 	strh	r7, [r0, r2]
 1c8:	1affffee 	bne	188 <hrt_DrawMapLayerStripV+0x40>
 1cc:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 1d0:	e12fff1e 	bx	lr
 1d4:	00000000 	andeq	r0, r0, r0

000001d8 <hrt_SetDrawerMapXY>:
 1d8:	e59f3008 	ldr	r3, [pc, #8]	; 1e8 <hrt_SetDrawerMapXY+0x10>
 1dc:	e5831020 	str	r1, [r3, #32]
 1e0:	e583001c 	str	r0, [r3, #28]
 1e4:	e12fff1e 	bx	lr
 1e8:	00000000 	andeq	r0, r0, r0

000001ec <hrt_GetDrawerMapX>:
 1ec:	e3a0300c 	mov	r3, #12
 1f0:	e59f2008 	ldr	r2, [pc, #8]	; 200 <hrt_GetDrawerMapX+0x14>
 1f4:	e0212093 	mla	r1, r3, r0, r2
 1f8:	e5910010 	ldr	r0, [r1, #16]
 1fc:	e12fff1e 	bx	lr
 200:	00000000 	andeq	r0, r0, r0

00000204 <hrt_GetDrawerMapY>:
 204:	e3a0300c 	mov	r3, #12
 208:	e59f2008 	ldr	r2, [pc, #8]	; 218 <hrt_GetDrawerMapY+0x14>
 20c:	e0212093 	mla	r1, r3, r0, r2
 210:	e5910014 	ldr	r0, [r1, #20]
 214:	e12fff1e 	bx	lr
 218:	00000000 	andeq	r0, r0, r0

0000021c <hrt_GetDrawerLayers>:
 21c:	e59f3004 	ldr	r3, [pc, #4]	; 228 <hrt_GetDrawerLayers+0xc>
 220:	e5d30008 	ldrb	r0, [r3, #8]
 224:	e12fff1e 	bx	lr
 228:	00000000 	andeq	r0, r0, r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	; 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	; 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	; 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  18:	29393420 	ldmdbcs	r9!, {r5, sl, ip, sp}
  1c:	312e3820 			; <UNDEFINED> instruction: 0x312e3820
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

