In archive ./libheart.a:

aplib.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <aP_depack>:
   0:	b5f0      	push	{r4, r5, r6, r7, lr}
   2:	46de      	mov	lr, fp
   4:	4657      	mov	r7, sl
   6:	464e      	mov	r6, r9
   8:	4645      	mov	r5, r8
   a:	2440      	movs	r4, #64	@ 0x40
   c:	b5e0      	push	{r5, r6, r7, lr}
   e:	7803      	ldrb	r3, [r0, #0]
  10:	2501      	movs	r5, #1
  12:	46a4      	mov	ip, r4
  14:	b085      	sub	sp, #20
  16:	1c47      	adds	r7, r0, #1
  18:	700b      	strb	r3, [r1, #0]
  1a:	2000      	movs	r0, #0
  1c:	2300      	movs	r3, #0
  1e:	2601      	movs	r6, #1
  20:	4644      	mov	r4, r8
  22:	468b      	mov	fp, r1
  24:	1c4a      	adds	r2, r1, #1
  26:	426d      	negs	r5, r5
  28:	2b00      	cmp	r3, #0
  2a:	d000      	beq.n	2e <aP_depack+0x2e>
  2c:	e287      	b.n	53e <aP_depack+0x53e>
  2e:	783b      	ldrb	r3, [r7, #0]
  30:	469a      	mov	sl, r3
  32:	005b      	lsls	r3, r3, #1
  34:	4698      	mov	r8, r3
  36:	4653      	mov	r3, sl
  38:	061b      	lsls	r3, r3, #24
  3a:	d525      	bpl.n	88 <aP_depack+0x88>
  3c:	4653      	mov	r3, sl
  3e:	1c79      	adds	r1, r7, #1
  40:	4644      	mov	r4, r8
  42:	009f      	lsls	r7, r3, #2
  44:	2380      	movs	r3, #128	@ 0x80
  46:	4223      	tst	r3, r4
  48:	d000      	beq.n	4c <aP_depack+0x4c>
  4a:	e271      	b.n	530 <aP_depack+0x530>
  4c:	3b7a      	subs	r3, #122	@ 0x7a
  4e:	4690      	mov	r8, r2
  50:	2401      	movs	r4, #1
  52:	001a      	movs	r2, r3
  54:	003b      	movs	r3, r7
  56:	1c4f      	adds	r7, r1, #1
  58:	46b9      	mov	r9, r7
  5a:	0064      	lsls	r4, r4, #1
  5c:	2a00      	cmp	r2, #0
  5e:	d000      	beq.n	62 <aP_depack+0x62>
  60:	e181      	b.n	366 <aP_depack+0x366>
  62:	4662      	mov	r2, ip
  64:	780b      	ldrb	r3, [r1, #0]
  66:	09d9      	lsrs	r1, r3, #7
  68:	190c      	adds	r4, r1, r4
  6a:	009f      	lsls	r7, r3, #2
  6c:	421a      	tst	r2, r3
  6e:	d052      	beq.n	116 <aP_depack+0x116>
  70:	2206      	movs	r2, #6
  72:	09fb      	lsrs	r3, r7, #7
  74:	0064      	lsls	r4, r4, #1
  76:	4033      	ands	r3, r6
  78:	191c      	adds	r4, r3, r4
  7a:	3a02      	subs	r2, #2
  7c:	00bb      	lsls	r3, r7, #2
  7e:	067f      	lsls	r7, r7, #25
  80:	d400      	bmi.n	84 <aP_depack+0x84>
  82:	e278      	b.n	576 <aP_depack+0x576>
  84:	4649      	mov	r1, r9
  86:	e7e6      	b.n	56 <aP_depack+0x56>
  88:	787b      	ldrb	r3, [r7, #1]
  8a:	7013      	strb	r3, [r2, #0]
  8c:	4653      	mov	r3, sl
  8e:	4640      	mov	r0, r8
  90:	009c      	lsls	r4, r3, #2
  92:	4641      	mov	r1, r8
  94:	2380      	movs	r3, #128	@ 0x80
  96:	4018      	ands	r0, r3
  98:	420b      	tst	r3, r1
  9a:	d000      	beq.n	9e <aP_depack+0x9e>
  9c:	e1e9      	b.n	472 <aP_depack+0x472>
  9e:	1cfb      	adds	r3, r7, #3
  a0:	4699      	mov	r9, r3
  a2:	1c93      	adds	r3, r2, #2
  a4:	4698      	mov	r8, r3
  a6:	78bb      	ldrb	r3, [r7, #2]
  a8:	7053      	strb	r3, [r2, #1]
  aa:	2306      	movs	r3, #6
  ac:	469a      	mov	sl, r3
  ae:	0062      	lsls	r2, r4, #1
  b0:	4653      	mov	r3, sl
  b2:	9200      	str	r2, [sp, #0]
  b4:	2280      	movs	r2, #128	@ 0x80
  b6:	3b01      	subs	r3, #1
  b8:	4222      	tst	r2, r4
  ba:	d100      	bne.n	be <aP_depack+0xbe>
  bc:	e224      	b.n	508 <aP_depack+0x508>
  be:	4649      	mov	r1, r9
  c0:	3101      	adds	r1, #1
  c2:	2b00      	cmp	r3, #0
  c4:	d000      	beq.n	c8 <aP_depack+0xc8>
  c6:	e202      	b.n	4ce <aP_depack+0x4ce>
  c8:	464b      	mov	r3, r9
  ca:	781b      	ldrb	r3, [r3, #0]
  cc:	005f      	lsls	r7, r3, #1
  ce:	061c      	lsls	r4, r3, #24
  d0:	d51e      	bpl.n	110 <aP_depack+0x110>
  d2:	009c      	lsls	r4, r3, #2
  d4:	423a      	tst	r2, r7
  d6:	d000      	beq.n	da <aP_depack+0xda>
  d8:	e18f      	b.n	3fa <aP_depack+0x3fa>
  da:	2306      	movs	r3, #6
  dc:	780d      	ldrb	r5, [r1, #0]
  de:	1c4f      	adds	r7, r1, #1
  e0:	0031      	movs	r1, r6
  e2:	4029      	ands	r1, r5
  e4:	1c8a      	adds	r2, r1, #2
  e6:	086d      	lsrs	r5, r5, #1
  e8:	d100      	bne.n	ec <aP_depack+0xec>
  ea:	e115      	b.n	318 <aP_depack+0x318>
  ec:	4268      	negs	r0, r5
  ee:	4681      	mov	r9, r0
  f0:	4640      	mov	r0, r8
  f2:	3002      	adds	r0, #2
  f4:	1840      	adds	r0, r0, r1
  f6:	469a      	mov	sl, r3
  f8:	4641      	mov	r1, r8
  fa:	0003      	movs	r3, r0
  fc:	4648      	mov	r0, r9
  fe:	5c08      	ldrb	r0, [r1, r0]
 100:	7008      	strb	r0, [r1, #0]
 102:	3101      	adds	r1, #1
 104:	4299      	cmp	r1, r3
 106:	d1f9      	bne.n	fc <aP_depack+0xfc>
 108:	4653      	mov	r3, sl
 10a:	2001      	movs	r0, #1
 10c:	4442      	add	r2, r8
 10e:	e78b      	b.n	28 <aP_depack+0x28>
 110:	4642      	mov	r2, r8
 112:	2307      	movs	r3, #7
 114:	e79b      	b.n	4e <aP_depack+0x4e>
 116:	4642      	mov	r2, r8
 118:	2306      	movs	r3, #6
 11a:	46b8      	mov	r8, r7
 11c:	0031      	movs	r1, r6
 11e:	4381      	bics	r1, r0
 120:	d01f      	beq.n	162 <aP_depack+0x162>
 122:	2c02      	cmp	r4, #2
 124:	d11d      	bne.n	162 <aP_depack+0x162>
 126:	001f      	movs	r7, r3
 128:	2101      	movs	r1, #1
 12a:	464b      	mov	r3, r9
 12c:	1c58      	adds	r0, r3, #1
 12e:	4681      	mov	r9, r0
 130:	0049      	lsls	r1, r1, #1
 132:	2f00      	cmp	r7, #0
 134:	d000      	beq.n	138 <aP_depack+0x138>
 136:	e13e      	b.n	3b6 <aP_depack+0x3b6>
 138:	781b      	ldrb	r3, [r3, #0]
 13a:	09d8      	lsrs	r0, r3, #7
 13c:	1841      	adds	r1, r0, r1
 13e:	4660      	mov	r0, ip
 140:	009c      	lsls	r4, r3, #2
 142:	4218      	tst	r0, r3
 144:	d100      	bne.n	148 <aP_depack+0x148>
 146:	e09b      	b.n	280 <aP_depack+0x280>
 148:	09e3      	lsrs	r3, r4, #7
 14a:	0049      	lsls	r1, r1, #1
 14c:	4033      	ands	r3, r6
 14e:	1859      	adds	r1, r3, r1
 150:	3706      	adds	r7, #6
 152:	00a3      	lsls	r3, r4, #2
 154:	4698      	mov	r8, r3
 156:	3f02      	subs	r7, #2
 158:	0664      	lsls	r4, r4, #25
 15a:	d400      	bmi.n	15e <aP_depack+0x15e>
 15c:	e143      	b.n	3e6 <aP_depack+0x3e6>
 15e:	464b      	mov	r3, r9
 160:	e7e4      	b.n	12c <aP_depack+0x12c>
 162:	1e41      	subs	r1, r0, #1
 164:	4188      	sbcs	r0, r1
 166:	1900      	adds	r0, r0, r4
 168:	464c      	mov	r4, r9
 16a:	3803      	subs	r0, #3
 16c:	7825      	ldrb	r5, [r4, #0]
 16e:	0201      	lsls	r1, r0, #8
 170:	4648      	mov	r0, r9
 172:	186d      	adds	r5, r5, r1
 174:	001f      	movs	r7, r3
 176:	2101      	movs	r1, #1
 178:	3001      	adds	r0, #1
 17a:	1c43      	adds	r3, r0, #1
 17c:	4699      	mov	r9, r3
 17e:	0049      	lsls	r1, r1, #1
 180:	2f00      	cmp	r7, #0
 182:	d000      	beq.n	186 <aP_depack+0x186>
 184:	e102      	b.n	38c <aP_depack+0x38c>
 186:	7803      	ldrb	r3, [r0, #0]
 188:	09d8      	lsrs	r0, r3, #7
 18a:	1841      	adds	r1, r0, r1
 18c:	4660      	mov	r0, ip
 18e:	009c      	lsls	r4, r3, #2
 190:	4218      	tst	r0, r3
 192:	d00c      	beq.n	1ae <aP_depack+0x1ae>
 194:	09e3      	lsrs	r3, r4, #7
 196:	0049      	lsls	r1, r1, #1
 198:	4033      	ands	r3, r6
 19a:	1859      	adds	r1, r3, r1
 19c:	3706      	adds	r7, #6
 19e:	00a3      	lsls	r3, r4, #2
 1a0:	4698      	mov	r8, r3
 1a2:	3f02      	subs	r7, #2
 1a4:	0664      	lsls	r4, r4, #25
 1a6:	d400      	bmi.n	1aa <aP_depack+0x1aa>
 1a8:	e122      	b.n	3f0 <aP_depack+0x3f0>
 1aa:	4648      	mov	r0, r9
 1ac:	e7e5      	b.n	17a <aP_depack+0x17a>
 1ae:	464f      	mov	r7, r9
 1b0:	2306      	movs	r3, #6
 1b2:	9100      	str	r1, [sp, #0]
 1b4:	20fa      	movs	r0, #250	@ 0xfa
 1b6:	01c0      	lsls	r0, r0, #7
 1b8:	4285      	cmp	r5, r0
 1ba:	d259      	bcs.n	270 <aP_depack+0x270>
 1bc:	21a0      	movs	r1, #160	@ 0xa0
 1be:	00c9      	lsls	r1, r1, #3
 1c0:	428d      	cmp	r5, r1
 1c2:	d353      	bcc.n	26c <aP_depack+0x26c>
 1c4:	9900      	ldr	r1, [sp, #0]
 1c6:	3101      	adds	r1, #1
 1c8:	9100      	str	r1, [sp, #0]
 1ca:	9900      	ldr	r1, [sp, #0]
 1cc:	2900      	cmp	r1, #0
 1ce:	d055      	beq.n	27c <aP_depack+0x27c>
 1d0:	4268      	negs	r0, r5
 1d2:	4682      	mov	sl, r0
 1d4:	1e48      	subs	r0, r1, #1
 1d6:	2806      	cmp	r0, #6
 1d8:	d800      	bhi.n	1dc <aP_depack+0x1dc>
 1da:	e0a9      	b.n	330 <aP_depack+0x330>
 1dc:	4691      	mov	r9, r2
 1de:	2102      	movs	r1, #2
 1e0:	44d1      	add	r9, sl
 1e2:	1ba8      	subs	r0, r5, r6
 1e4:	4281      	cmp	r1, r0
 1e6:	d300      	bcc.n	1ea <aP_depack+0x1ea>
 1e8:	e0a2      	b.n	330 <aP_depack+0x330>
 1ea:	4648      	mov	r0, r9
 1ec:	3101      	adds	r1, #1
 1ee:	4310      	orrs	r0, r2
 1f0:	4201      	tst	r1, r0
 1f2:	d000      	beq.n	1f6 <aP_depack+0x1f6>
 1f4:	e09c      	b.n	330 <aP_depack+0x330>
 1f6:	9900      	ldr	r1, [sp, #0]
 1f8:	0888      	lsrs	r0, r1, #2
 1fa:	0081      	lsls	r1, r0, #2
 1fc:	4688      	mov	r8, r1
 1fe:	9501      	str	r5, [sp, #4]
 200:	9d00      	ldr	r5, [sp, #0]
 202:	4649      	mov	r1, r9
 204:	2000      	movs	r0, #0
 206:	4699      	mov	r9, r3
 208:	4643      	mov	r3, r8
 20a:	46a8      	mov	r8, r5
 20c:	580d      	ldr	r5, [r1, r0]
 20e:	5015      	str	r5, [r2, r0]
 210:	3004      	adds	r0, #4
 212:	4283      	cmp	r3, r0
 214:	d1fa      	bne.n	20c <aP_depack+0x20c>
 216:	4641      	mov	r1, r8
 218:	4698      	mov	r8, r3
 21a:	9100      	str	r1, [sp, #0]
 21c:	4641      	mov	r1, r8
 21e:	1851      	adds	r1, r2, r1
 220:	9d01      	ldr	r5, [sp, #4]
 222:	9101      	str	r1, [sp, #4]
 224:	4641      	mov	r1, r8
 226:	9800      	ldr	r0, [sp, #0]
 228:	1a40      	subs	r0, r0, r1
 22a:	9002      	str	r0, [sp, #8]
 22c:	9003      	str	r0, [sp, #12]
 22e:	9901      	ldr	r1, [sp, #4]
 230:	9800      	ldr	r0, [sp, #0]
 232:	464b      	mov	r3, r9
 234:	4689      	mov	r9, r1
 236:	4540      	cmp	r0, r8
 238:	d015      	beq.n	266 <aP_depack+0x266>
 23a:	4648      	mov	r0, r9
 23c:	4651      	mov	r1, sl
 23e:	5c41      	ldrb	r1, [r0, r1]
 240:	7001      	strb	r1, [r0, #0]
 242:	9802      	ldr	r0, [sp, #8]
 244:	2801      	cmp	r0, #1
 246:	d00a      	beq.n	25e <aP_depack+0x25e>
 248:	9801      	ldr	r0, [sp, #4]
 24a:	1b71      	subs	r1, r6, r5
 24c:	5c41      	ldrb	r1, [r0, r1]
 24e:	7041      	strb	r1, [r0, #1]
 250:	9903      	ldr	r1, [sp, #12]
 252:	2902      	cmp	r1, #2
 254:	d003      	beq.n	25e <aP_depack+0x25e>
 256:	2102      	movs	r1, #2
 258:	1b49      	subs	r1, r1, r5
 25a:	5c41      	ldrb	r1, [r0, r1]
 25c:	7081      	strb	r1, [r0, #2]
 25e:	4691      	mov	r9, r2
 260:	9a00      	ldr	r2, [sp, #0]
 262:	4690      	mov	r8, r2
 264:	44c1      	add	r9, r8
 266:	464a      	mov	r2, r9
 268:	2001      	movs	r0, #1
 26a:	e6dd      	b.n	28 <aP_depack+0x28>
 26c:	2d7f      	cmp	r5, #127	@ 0x7f
 26e:	d8ac      	bhi.n	1ca <aP_depack+0x1ca>
 270:	9900      	ldr	r1, [sp, #0]
 272:	3102      	adds	r1, #2
 274:	9100      	str	r1, [sp, #0]
 276:	9900      	ldr	r1, [sp, #0]
 278:	2900      	cmp	r1, #0
 27a:	d1a9      	bne.n	1d0 <aP_depack+0x1d0>
 27c:	2001      	movs	r0, #1
 27e:	e6d3      	b.n	28 <aP_depack+0x28>
 280:	464f      	mov	r7, r9
 282:	2306      	movs	r3, #6
 284:	9100      	str	r1, [sp, #0]
 286:	2900      	cmp	r1, #0
 288:	d0f8      	beq.n	27c <aP_depack+0x27c>
 28a:	4268      	negs	r0, r5
 28c:	4682      	mov	sl, r0
 28e:	1e48      	subs	r0, r1, #1
 290:	2806      	cmp	r0, #6
 292:	d95d      	bls.n	350 <aP_depack+0x350>
 294:	4691      	mov	r9, r2
 296:	2102      	movs	r1, #2
 298:	44d1      	add	r9, sl
 29a:	1ba8      	subs	r0, r5, r6
 29c:	4281      	cmp	r1, r0
 29e:	d257      	bcs.n	350 <aP_depack+0x350>
 2a0:	4648      	mov	r0, r9
 2a2:	3101      	adds	r1, #1
 2a4:	4310      	orrs	r0, r2
 2a6:	4201      	tst	r1, r0
 2a8:	d152      	bne.n	350 <aP_depack+0x350>
 2aa:	9900      	ldr	r1, [sp, #0]
 2ac:	0888      	lsrs	r0, r1, #2
 2ae:	0081      	lsls	r1, r0, #2
 2b0:	9301      	str	r3, [sp, #4]
 2b2:	000b      	movs	r3, r1
 2b4:	0021      	movs	r1, r4
 2b6:	464c      	mov	r4, r9
 2b8:	4689      	mov	r9, r1
 2ba:	9901      	ldr	r1, [sp, #4]
 2bc:	2000      	movs	r0, #0
 2be:	4688      	mov	r8, r1
 2c0:	5821      	ldr	r1, [r4, r0]
 2c2:	5011      	str	r1, [r2, r0]
 2c4:	3004      	adds	r0, #4
 2c6:	4298      	cmp	r0, r3
 2c8:	d1fa      	bne.n	2c0 <aP_depack+0x2c0>
 2ca:	9900      	ldr	r1, [sp, #0]
 2cc:	4643      	mov	r3, r8
 2ce:	464c      	mov	r4, r9
 2d0:	4288      	cmp	r0, r1
 2d2:	d03b      	beq.n	34c <aP_depack+0x34c>
 2d4:	1811      	adds	r1, r2, r0
 2d6:	4688      	mov	r8, r1
 2d8:	9900      	ldr	r1, [sp, #0]
 2da:	1a09      	subs	r1, r1, r0
 2dc:	9101      	str	r1, [sp, #4]
 2de:	4650      	mov	r0, sl
 2e0:	4641      	mov	r1, r8
 2e2:	5c09      	ldrb	r1, [r1, r0]
 2e4:	4689      	mov	r9, r1
 2e6:	4641      	mov	r1, r8
 2e8:	4648      	mov	r0, r9
 2ea:	7008      	strb	r0, [r1, #0]
 2ec:	9901      	ldr	r1, [sp, #4]
 2ee:	2901      	cmp	r1, #1
 2f0:	d00d      	beq.n	30e <aP_depack+0x30e>
 2f2:	4641      	mov	r1, r8
 2f4:	1b49      	subs	r1, r1, r5
 2f6:	7849      	ldrb	r1, [r1, #1]
 2f8:	4689      	mov	r9, r1
 2fa:	4641      	mov	r1, r8
 2fc:	4648      	mov	r0, r9
 2fe:	7048      	strb	r0, [r1, #1]
 300:	9901      	ldr	r1, [sp, #4]
 302:	2902      	cmp	r1, #2
 304:	d003      	beq.n	30e <aP_depack+0x30e>
 306:	4641      	mov	r1, r8
 308:	1b48      	subs	r0, r1, r5
 30a:	7880      	ldrb	r0, [r0, #2]
 30c:	7088      	strb	r0, [r1, #2]
 30e:	9900      	ldr	r1, [sp, #0]
 310:	1851      	adds	r1, r2, r1
 312:	000a      	movs	r2, r1
 314:	2001      	movs	r0, #1
 316:	e687      	b.n	28 <aP_depack+0x28>
 318:	4643      	mov	r3, r8
 31a:	4659      	mov	r1, fp
 31c:	1a58      	subs	r0, r3, r1
 31e:	b005      	add	sp, #20
 320:	bcf0      	pop	{r4, r5, r6, r7}
 322:	46bb      	mov	fp, r7
 324:	46b2      	mov	sl, r6
 326:	46a9      	mov	r9, r5
 328:	46a0      	mov	r8, r4
 32a:	bcf0      	pop	{r4, r5, r6, r7}
 32c:	bc02      	pop	{r1}
 32e:	4708      	bx	r1
 330:	9900      	ldr	r1, [sp, #0]
 332:	4689      	mov	r9, r1
 334:	4491      	add	r9, r2
 336:	4698      	mov	r8, r3
 338:	4650      	mov	r0, sl
 33a:	464b      	mov	r3, r9
 33c:	5c11      	ldrb	r1, [r2, r0]
 33e:	7011      	strb	r1, [r2, #0]
 340:	3201      	adds	r2, #1
 342:	4293      	cmp	r3, r2
 344:	d1fa      	bne.n	33c <aP_depack+0x33c>
 346:	4699      	mov	r9, r3
 348:	4643      	mov	r3, r8
 34a:	e78c      	b.n	266 <aP_depack+0x266>
 34c:	1811      	adds	r1, r2, r0
 34e:	e7e0      	b.n	312 <aP_depack+0x312>
 350:	4698      	mov	r8, r3
 352:	4653      	mov	r3, sl
 354:	9900      	ldr	r1, [sp, #0]
 356:	1851      	adds	r1, r2, r1
 358:	5cd0      	ldrb	r0, [r2, r3]
 35a:	7010      	strb	r0, [r2, #0]
 35c:	3201      	adds	r2, #1
 35e:	4291      	cmp	r1, r2
 360:	d1fa      	bne.n	358 <aP_depack+0x358>
 362:	4643      	mov	r3, r8
 364:	e7d5      	b.n	312 <aP_depack+0x312>
 366:	061f      	lsls	r7, r3, #24
 368:	0fff      	lsrs	r7, r7, #31
 36a:	193c      	adds	r4, r7, r4
 36c:	2a01      	cmp	r2, #1
 36e:	d137      	bne.n	3e0 <aP_depack+0x3e0>
 370:	7809      	ldrb	r1, [r1, #0]
 372:	004f      	lsls	r7, r1, #1
 374:	0609      	lsls	r1, r1, #24
 376:	d505      	bpl.n	384 <aP_depack+0x384>
 378:	09fb      	lsrs	r3, r7, #7
 37a:	4013      	ands	r3, r2
 37c:	0064      	lsls	r4, r4, #1
 37e:	2207      	movs	r2, #7
 380:	191c      	adds	r4, r3, r4
 382:	e67a      	b.n	7a <aP_depack+0x7a>
 384:	4642      	mov	r2, r8
 386:	2307      	movs	r3, #7
 388:	46b8      	mov	r8, r7
 38a:	e6c7      	b.n	11c <aP_depack+0x11c>
 38c:	4643      	mov	r3, r8
 38e:	061b      	lsls	r3, r3, #24
 390:	0fdb      	lsrs	r3, r3, #31
 392:	1859      	adds	r1, r3, r1
 394:	2f01      	cmp	r7, #1
 396:	d000      	beq.n	39a <aP_depack+0x39a>
 398:	e0c7      	b.n	52a <aP_depack+0x52a>
 39a:	7800      	ldrb	r0, [r0, #0]
 39c:	0044      	lsls	r4, r0, #1
 39e:	0600      	lsls	r0, r0, #24
 3a0:	d505      	bpl.n	3ae <aP_depack+0x3ae>
 3a2:	09e3      	lsrs	r3, r4, #7
 3a4:	403b      	ands	r3, r7
 3a6:	0049      	lsls	r1, r1, #1
 3a8:	2707      	movs	r7, #7
 3aa:	1859      	adds	r1, r3, r1
 3ac:	e6f7      	b.n	19e <aP_depack+0x19e>
 3ae:	464f      	mov	r7, r9
 3b0:	2307      	movs	r3, #7
 3b2:	9100      	str	r1, [sp, #0]
 3b4:	e6fe      	b.n	1b4 <aP_depack+0x1b4>
 3b6:	4640      	mov	r0, r8
 3b8:	0600      	lsls	r0, r0, #24
 3ba:	0fc0      	lsrs	r0, r0, #31
 3bc:	1841      	adds	r1, r0, r1
 3be:	2f01      	cmp	r7, #1
 3c0:	d000      	beq.n	3c4 <aP_depack+0x3c4>
 3c2:	e0af      	b.n	524 <aP_depack+0x524>
 3c4:	7818      	ldrb	r0, [r3, #0]
 3c6:	0044      	lsls	r4, r0, #1
 3c8:	0600      	lsls	r0, r0, #24
 3ca:	d505      	bpl.n	3d8 <aP_depack+0x3d8>
 3cc:	09e3      	lsrs	r3, r4, #7
 3ce:	403b      	ands	r3, r7
 3d0:	0049      	lsls	r1, r1, #1
 3d2:	2707      	movs	r7, #7
 3d4:	1859      	adds	r1, r3, r1
 3d6:	e6bc      	b.n	152 <aP_depack+0x152>
 3d8:	464f      	mov	r7, r9
 3da:	2307      	movs	r3, #7
 3dc:	9100      	str	r1, [sp, #0]
 3de:	e752      	b.n	286 <aP_depack+0x286>
 3e0:	4689      	mov	r9, r1
 3e2:	001f      	movs	r7, r3
 3e4:	e649      	b.n	7a <aP_depack+0x7a>
 3e6:	003b      	movs	r3, r7
 3e8:	4644      	mov	r4, r8
 3ea:	464f      	mov	r7, r9
 3ec:	9100      	str	r1, [sp, #0]
 3ee:	e74a      	b.n	286 <aP_depack+0x286>
 3f0:	003b      	movs	r3, r7
 3f2:	4644      	mov	r4, r8
 3f4:	464f      	mov	r7, r9
 3f6:	9100      	str	r1, [sp, #0]
 3f8:	e6dc      	b.n	1b4 <aP_depack+0x1b4>
 3fa:	2002      	movs	r0, #2
 3fc:	00da      	lsls	r2, r3, #3
 3fe:	09a4      	lsrs	r4, r4, #6
 400:	06db      	lsls	r3, r3, #27
 402:	0fdb      	lsrs	r3, r3, #31
 404:	4004      	ands	r4, r0
 406:	431c      	orrs	r4, r3
 408:	2303      	movs	r3, #3
 40a:	4699      	mov	r9, r3
 40c:	1c4b      	adds	r3, r1, #1
 40e:	469a      	mov	sl, r3
 410:	0064      	lsls	r4, r4, #1
 412:	0050      	lsls	r0, r2, #1
 414:	0652      	lsls	r2, r2, #25
 416:	0fd2      	lsrs	r2, r2, #31
 418:	1912      	adds	r2, r2, r4
 41a:	464b      	mov	r3, r9
 41c:	464c      	mov	r4, r9
 41e:	4657      	mov	r7, sl
 420:	3b01      	subs	r3, #1
 422:	0052      	lsls	r2, r2, #1
 424:	2c00      	cmp	r4, #0
 426:	d121      	bne.n	46c <aP_depack+0x46c>
 428:	2307      	movs	r3, #7
 42a:	7808      	ldrb	r0, [r1, #0]
 42c:	09c1      	lsrs	r1, r0, #7
 42e:	4031      	ands	r1, r6
 430:	188a      	adds	r2, r1, r2
 432:	2100      	movs	r1, #0
 434:	2a00      	cmp	r2, #0
 436:	d002      	beq.n	43e <aP_depack+0x43e>
 438:	4641      	mov	r1, r8
 43a:	1a8a      	subs	r2, r1, r2
 43c:	7811      	ldrb	r1, [r2, #0]
 43e:	4642      	mov	r2, r8
 440:	0044      	lsls	r4, r0, #1
 442:	4640      	mov	r0, r8
 444:	3201      	adds	r2, #1
 446:	7001      	strb	r1, [r0, #0]
 448:	2000      	movs	r0, #0
 44a:	e5ed      	b.n	28 <aP_depack+0x28>
 44c:	2b00      	cmp	r3, #0
 44e:	d124      	bne.n	49a <aP_depack+0x49a>
 450:	464b      	mov	r3, r9
 452:	781b      	ldrb	r3, [r3, #0]
 454:	099c      	lsrs	r4, r3, #6
 456:	09da      	lsrs	r2, r3, #7
 458:	0052      	lsls	r2, r2, #1
 45a:	4034      	ands	r4, r6
 45c:	4314      	orrs	r4, r2
 45e:	0098      	lsls	r0, r3, #2
 460:	095a      	lsrs	r2, r3, #5
 462:	2304      	movs	r3, #4
 464:	0064      	lsls	r4, r4, #1
 466:	4032      	ands	r2, r6
 468:	1912      	adds	r2, r2, r4
 46a:	0052      	lsls	r2, r2, #1
 46c:	000f      	movs	r7, r1
 46e:	0040      	lsls	r0, r0, #1
 470:	e7dc      	b.n	42c <aP_depack+0x42c>
 472:	3201      	adds	r2, #1
 474:	4690      	mov	r8, r2
 476:	4652      	mov	r2, sl
 478:	1cb9      	adds	r1, r7, #2
 47a:	4689      	mov	r9, r1
 47c:	0020      	movs	r0, r4
 47e:	1cf9      	adds	r1, r7, #3
 480:	00d7      	lsls	r7, r2, #3
 482:	2207      	movs	r2, #7
 484:	4018      	ands	r0, r3
 486:	4692      	mov	sl, r2
 488:	421c      	tst	r4, r3
 48a:	d01c      	beq.n	4c6 <aP_depack+0x4c6>
 48c:	4653      	mov	r3, sl
 48e:	007c      	lsls	r4, r7, #1
 490:	3b03      	subs	r3, #3
 492:	063f      	lsls	r7, r7, #24
 494:	d4da      	bmi.n	44c <aP_depack+0x44c>
 496:	4649      	mov	r1, r9
 498:	e620      	b.n	dc <aP_depack+0xdc>
 49a:	4653      	mov	r3, sl
 49c:	2202      	movs	r2, #2
 49e:	1f18      	subs	r0, r3, #4
 4a0:	09a3      	lsrs	r3, r4, #6
 4a2:	4013      	ands	r3, r2
 4a4:	464a      	mov	r2, r9
 4a6:	1c57      	adds	r7, r2, #1
 4a8:	4652      	mov	r2, sl
 4aa:	4649      	mov	r1, r9
 4ac:	2a04      	cmp	r2, #4
 4ae:	d14f      	bne.n	550 <aP_depack+0x550>
 4b0:	780a      	ldrb	r2, [r1, #0]
 4b2:	09d1      	lsrs	r1, r2, #7
 4b4:	430b      	orrs	r3, r1
 4b6:	0090      	lsls	r0, r2, #2
 4b8:	0992      	lsrs	r2, r2, #6
 4ba:	005b      	lsls	r3, r3, #1
 4bc:	4032      	ands	r2, r6
 4be:	18d2      	adds	r2, r2, r3
 4c0:	0052      	lsls	r2, r2, #1
 4c2:	2305      	movs	r3, #5
 4c4:	e7b2      	b.n	42c <aP_depack+0x42c>
 4c6:	4642      	mov	r2, r8
 4c8:	4649      	mov	r1, r9
 4ca:	2305      	movs	r3, #5
 4cc:	e5bf      	b.n	4e <aP_depack+0x4e>
 4ce:	4653      	mov	r3, sl
 4d0:	00a7      	lsls	r7, r4, #2
 4d2:	9c00      	ldr	r4, [sp, #0]
 4d4:	3b02      	subs	r3, #2
 4d6:	4214      	tst	r4, r2
 4d8:	d021      	beq.n	51e <aP_depack+0x51e>
 4da:	2b00      	cmp	r3, #0
 4dc:	d1d6      	bne.n	48c <aP_depack+0x48c>
 4de:	464b      	mov	r3, r9
 4e0:	781a      	ldrb	r2, [r3, #0]
 4e2:	2307      	movs	r3, #7
 4e4:	0054      	lsls	r4, r2, #1
 4e6:	0610      	lsls	r0, r2, #24
 4e8:	d400      	bmi.n	4ec <aP_depack+0x4ec>
 4ea:	e5f7      	b.n	dc <aP_depack+0xdc>
 4ec:	2002      	movs	r0, #2
 4ee:	0953      	lsrs	r3, r2, #5
 4f0:	09a4      	lsrs	r4, r4, #6
 4f2:	4004      	ands	r4, r0
 4f4:	4033      	ands	r3, r6
 4f6:	4323      	orrs	r3, r4
 4f8:	00d0      	lsls	r0, r2, #3
 4fa:	0912      	lsrs	r2, r2, #4
 4fc:	005b      	lsls	r3, r3, #1
 4fe:	4032      	ands	r2, r6
 500:	18d2      	adds	r2, r2, r3
 502:	0052      	lsls	r2, r2, #1
 504:	2303      	movs	r3, #3
 506:	e7b1      	b.n	46c <aP_depack+0x46c>
 508:	464a      	mov	r2, r9
 50a:	4649      	mov	r1, r9
 50c:	4640      	mov	r0, r8
 50e:	1c57      	adds	r7, r2, #1
 510:	4642      	mov	r2, r8
 512:	7809      	ldrb	r1, [r1, #0]
 514:	9c00      	ldr	r4, [sp, #0]
 516:	7001      	strb	r1, [r0, #0]
 518:	3201      	adds	r2, #1
 51a:	2000      	movs	r0, #0
 51c:	e584      	b.n	28 <aP_depack+0x28>
 51e:	4642      	mov	r2, r8
 520:	4649      	mov	r1, r9
 522:	e594      	b.n	4e <aP_depack+0x4e>
 524:	4644      	mov	r4, r8
 526:	4699      	mov	r9, r3
 528:	e613      	b.n	152 <aP_depack+0x152>
 52a:	4644      	mov	r4, r8
 52c:	4681      	mov	r9, r0
 52e:	e636      	b.n	19e <aP_depack+0x19e>
 530:	4650      	mov	r0, sl
 532:	00c4      	lsls	r4, r0, #3
 534:	421f      	tst	r7, r3
 536:	d106      	bne.n	546 <aP_depack+0x546>
 538:	4690      	mov	r8, r2
 53a:	2305      	movs	r3, #5
 53c:	e5ce      	b.n	dc <aP_depack+0xdc>
 53e:	469a      	mov	sl, r3
 540:	46b9      	mov	r9, r7
 542:	4690      	mov	r8, r2
 544:	e5b3      	b.n	ae <aP_depack+0xae>
 546:	2002      	movs	r0, #2
 548:	4690      	mov	r8, r2
 54a:	09a3      	lsrs	r3, r4, #6
 54c:	4003      	ands	r3, r0
 54e:	1800      	adds	r0, r0, r0
 550:	0062      	lsls	r2, r4, #1
 552:	0664      	lsls	r4, r4, #25
 554:	1e87      	subs	r7, r0, #2
 556:	0fe4      	lsrs	r4, r4, #31
 558:	46b9      	mov	r9, r7
 55a:	431c      	orrs	r4, r3
 55c:	1c4f      	adds	r7, r1, #1
 55e:	46ba      	mov	sl, r7
 560:	0064      	lsls	r4, r4, #1
 562:	2801      	cmp	r0, #1
 564:	d000      	beq.n	568 <aP_depack+0x568>
 566:	e754      	b.n	412 <aP_depack+0x412>
 568:	780a      	ldrb	r2, [r1, #0]
 56a:	0050      	lsls	r0, r2, #1
 56c:	09d2      	lsrs	r2, r2, #7
 56e:	1912      	adds	r2, r2, r4
 570:	2306      	movs	r3, #6
 572:	0052      	lsls	r2, r2, #1
 574:	e75a      	b.n	42c <aP_depack+0x42c>
 576:	001f      	movs	r7, r3
 578:	0013      	movs	r3, r2
 57a:	4642      	mov	r2, r8
 57c:	46b8      	mov	r8, r7
 57e:	e5cd      	b.n	11c <aP_depack+0x11c>

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


debug.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <AssertImplementation>:
   0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   2:	000e      	movs	r6, r1
   4:	0015      	movs	r5, r2
   6:	001c      	movs	r4, r3
   8:	2800      	cmp	r0, #0
   a:	d002      	beq.n	12 <AssertImplementation+0x12>
   c:	bcf8      	pop	{r3, r4, r5, r6, r7}
   e:	bc01      	pop	{r0}
  10:	4700      	bx	r0
  12:	2780      	movs	r7, #128	@ 0x80
  14:	f7ff fffe 	bl	0 <hrt_InitTextEngine>
  18:	2307      	movs	r3, #7
  1a:	04ff      	lsls	r7, r7, #19
  1c:	883a      	ldrh	r2, [r7, #0]
  1e:	439a      	bics	r2, r3
  20:	33f9      	adds	r3, #249	@ 0xf9
  22:	4313      	orrs	r3, r2
  24:	803b      	strh	r3, [r7, #0]
  26:	f7ff fffe 	bl	0 <hrt_InitIRQ>
  2a:	2001      	movs	r0, #1
  2c:	f7ff fffe 	bl	0 <hrt_EnableIRQ>
  30:	491e      	ldr	r1, [pc, #120]	@ (ac <AssertImplementation+0xac>)
  32:	2001      	movs	r0, #1
  34:	f7ff fffe 	bl	0 <hrt_SetIRQ>
  38:	2280      	movs	r2, #128	@ 0x80
  3a:	883b      	ldrh	r3, [r7, #0]
  3c:	4393      	bics	r3, r2
  3e:	2100      	movs	r1, #0
  40:	2000      	movs	r0, #0
  42:	803b      	strh	r3, [r7, #0]
  44:	4a1a      	ldr	r2, [pc, #104]	@ (b0 <AssertImplementation+0xb0>)
  46:	f7ff fffe 	bl	0 <hrt_Print>
  4a:	002b      	movs	r3, r5
  4c:	2101      	movs	r1, #1
  4e:	2000      	movs	r0, #0
  50:	4a18      	ldr	r2, [pc, #96]	@ (b4 <AssertImplementation+0xb4>)
  52:	f7ff fffe 	bl	0 <hrt_Print>
  56:	2102      	movs	r1, #2
  58:	2000      	movs	r0, #0
  5a:	4a17      	ldr	r2, [pc, #92]	@ (b8 <AssertImplementation+0xb8>)
  5c:	9b06      	ldr	r3, [sp, #24]
  5e:	f7ff fffe 	bl	0 <hrt_Print>
  62:	0023      	movs	r3, r4
  64:	2103      	movs	r1, #3
  66:	2000      	movs	r0, #0
  68:	4a14      	ldr	r2, [pc, #80]	@ (bc <AssertImplementation+0xbc>)
  6a:	f7ff fffe 	bl	0 <hrt_Print>
  6e:	2105      	movs	r1, #5
  70:	2000      	movs	r0, #0
  72:	4a13      	ldr	r2, [pc, #76]	@ (c0 <AssertImplementation+0xc0>)
  74:	f7ff fffe 	bl	0 <hrt_Print>
  78:	2106      	movs	r1, #6
  7a:	2000      	movs	r0, #0
  7c:	4a11      	ldr	r2, [pc, #68]	@ (c4 <AssertImplementation+0xc4>)
  7e:	f7ff fffe 	bl	0 <hrt_Print>
  82:	4c11      	ldr	r4, [pc, #68]	@ (c8 <AssertImplementation+0xc8>)
  84:	2107      	movs	r1, #7
  86:	2000      	movs	r0, #0
  88:	4a10      	ldr	r2, [pc, #64]	@ (cc <AssertImplementation+0xcc>)
  8a:	f7ff fffe 	bl	0 <hrt_Print>
  8e:	0032      	movs	r2, r6
  90:	210a      	movs	r1, #10
  92:	2000      	movs	r0, #0
  94:	f7ff fffe 	bl	0 <hrt_Print>
  98:	8823      	ldrh	r3, [r4, #0]
  9a:	059b      	lsls	r3, r3, #22
  9c:	d1b6      	bne.n	c <AssertImplementation+0xc>
  9e:	f7ff fffe 	bl	0 <hrt_VBlankIntrWait>
  a2:	8823      	ldrh	r3, [r4, #0]
  a4:	059b      	lsls	r3, r3, #22
  a6:	d0fa      	beq.n	9e <AssertImplementation+0x9e>
  a8:	e7b0      	b.n	c <AssertImplementation+0xc>
  aa:	46c0      	nop			@ (mov r8, r8)
	...
  b4:	00000014 	andeq	r0, r0, r4, lsl r0
  b8:	00000020 	andeq	r0, r0, r0, lsr #32
  bc:	0000002c 	andeq	r0, r0, ip, lsr #32
  c0:	0000003c 	andeq	r0, r0, ip, lsr r0
  c4:	00000058 	andeq	r0, r0, r8, asr r0
  c8:	04000130 	streq	r0, [r0], #-304	@ 0xfffffed0
  cc:	00000070 	andeq	r0, r0, r0, ror r0

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	65737341 	ldrbvs	r7, [r3, #-833]!	@ 0xfffffcbf
   4:	6f697472 	svcvs	0x00697472
   8:	6166206e 	cmnvs	r6, lr, rrx
   c:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
  10:	00000021 	andeq	r0, r0, r1, lsr #32
  14:	656c6946 	strbvs	r6, [ip, #-2374]!	@ 0xfffff6ba
  18:	7325203a 			@ <UNDEFINED> instruction: 0x7325203a
  1c:	00000000 	andeq	r0, r0, r0
  20:	656e694c 	strbvs	r6, [lr, #-2380]!	@ 0xfffff6b4
  24:	6425203a 	strtvs	r2, [r5], #-58	@ 0xffffffc6
  28:	00000000 	andeq	r0, r0, r0
  2c:	636e7546 	cmnvs	lr, #293601280	@ 0x11800000
  30:	6e6f6974 			@ <UNDEFINED> instruction: 0x6e6f6974
  34:	7325203a 			@ <UNDEFINED> instruction: 0x7325203a
  38:	00000000 	andeq	r0, r0, r0
  3c:	73657250 	cmnvc	r5, #80, 4
  40:	6e612073 	mcrvs	0, 3, r2, cr1, cr3, {3}
  44:	656b2079 	strbvs	r2, [fp, #-121]!	@ 0xffffff87
  48:	6f742079 	svcvs	0x00742079
  4c:	6e676920 	vmulvs.f16	s13, s14, s1	@ <UNPREDICTABLE>
  50:	2c65726f 	sfmcs	f7, 2, [r5], #-444	@ 0xfffffe44
  54:	00000000 	andeq	r0, r0, r0
  58:	20747562 	rsbscs	r7, r4, r2, ror #10
  5c:	61206562 			@ <UNDEFINED> instruction: 0x61206562
  60:	65726177 	ldrbvs	r6, [r2, #-375]!	@ 0xfffffe89
  64:	61687420 	cmnvs	r8, r0, lsr #8
  68:	52562074 	subspl	r2, r6, #116	@ 0x74
  6c:	00004d41 	andeq	r4, r0, r1, asr #26
  70:	6f636572 	svcvs	0x00636572
  74:	79726576 	ldmdbvc	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
  78:	20736920 	rsbscs	r6, r3, r0, lsr #18
  7c:	696c6e75 	stmdbvs	ip!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  80:	796c656b 	stmdbvc	ip!, {r0, r1, r3, r5, r6, r8, sl, sp, lr}^
  84:	Address 0x84 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


drawer.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_ConfigDrawer>:
   0:	b510      	push	{r4, lr}
   2:	4c07      	ldr	r4, [pc, #28]	@ (20 <hrt_ConfigDrawer+0x20>)
   4:	8063      	strh	r3, [r4, #2]
   6:	9b04      	ldr	r3, [sp, #16]
   8:	7220      	strb	r0, [r4, #8]
   a:	6223      	str	r3, [r4, #32]
   c:	9802      	ldr	r0, [sp, #8]
   e:	9b03      	ldr	r3, [sp, #12]
  10:	60e0      	str	r0, [r4, #12]
  12:	8022      	strh	r2, [r4, #0]
  14:	61e3      	str	r3, [r4, #28]
  16:	6061      	str	r1, [r4, #4]
  18:	bc10      	pop	{r4}
  1a:	bc01      	pop	{r0}
  1c:	4700      	bx	r0
  1e:	46c0      	nop			@ (mov r8, r8)
  20:	00000000 	andeq	r0, r0, r0

00000024 <hrt_SetDrawerScrollMapX>:
  24:	004a      	lsls	r2, r1, #1
  26:	4b03      	ldr	r3, [pc, #12]	@ (34 <hrt_SetDrawerScrollMapX+0x10>)
  28:	1852      	adds	r2, r2, r1
  2a:	0092      	lsls	r2, r2, #2
  2c:	189b      	adds	r3, r3, r2
  2e:	6118      	str	r0, [r3, #16]
  30:	4770      	bx	lr
  32:	46c0      	nop			@ (mov r8, r8)
  34:	00000000 	andeq	r0, r0, r0

00000038 <hrt_SetDrawerScrollMapY>:
  38:	004a      	lsls	r2, r1, #1
  3a:	4b03      	ldr	r3, [pc, #12]	@ (48 <hrt_SetDrawerScrollMapY+0x10>)
  3c:	1852      	adds	r2, r2, r1
  3e:	0092      	lsls	r2, r2, #2
  40:	189b      	adds	r3, r3, r2
  42:	6158      	str	r0, [r3, #20]
  44:	4770      	bx	lr
  46:	46c0      	nop			@ (mov r8, r8)
  48:	00000000 	andeq	r0, r0, r0

0000004c <hrt_DrawMapLayerStripH>:
  4c:	b5f0      	push	{r4, r5, r6, r7, lr}
  4e:	4646      	mov	r6, r8
  50:	46d6      	mov	lr, sl
  52:	464f      	mov	r7, r9
  54:	b5c0      	push	{r6, r7, lr}
  56:	0042      	lsls	r2, r0, #1
  58:	4d1e      	ldr	r5, [pc, #120]	@ (d4 <hrt_DrawMapLayerStripH+0x88>)
  5a:	1812      	adds	r2, r2, r0
  5c:	0092      	lsls	r2, r2, #2
  5e:	18aa      	adds	r2, r5, r2
  60:	68d3      	ldr	r3, [r2, #12]
  62:	2600      	movs	r6, #0
  64:	5fac      	ldrsh	r4, [r5, r6]
  66:	4698      	mov	r8, r3
  68:	104b      	asrs	r3, r1, #1
  6a:	435c      	muls	r4, r3
  6c:	23c0      	movs	r3, #192	@ 0xc0
  6e:	261f      	movs	r6, #31
  70:	04db      	lsls	r3, r3, #19
  72:	469c      	mov	ip, r3
  74:	400e      	ands	r6, r1
  76:	004b      	lsls	r3, r1, #1
  78:	2102      	movs	r1, #2
  7a:	4019      	ands	r1, r3
  7c:	2320      	movs	r3, #32
  7e:	01b6      	lsls	r6, r6, #6
  80:	4466      	add	r6, ip
  82:	469c      	mov	ip, r3
  84:	3b01      	subs	r3, #1
  86:	2701      	movs	r7, #1
  88:	469a      	mov	sl, r3
  8a:	6912      	ldr	r2, [r2, #16]
  8c:	301c      	adds	r0, #28
  8e:	02c0      	lsls	r0, r0, #11
  90:	12d2      	asrs	r2, r2, #11
  92:	1830      	adds	r0, r6, r0
  94:	4494      	add	ip, r2
  96:	4646      	mov	r6, r8
  98:	1053      	asrs	r3, r2, #1
  9a:	191b      	adds	r3, r3, r4
  9c:	005b      	lsls	r3, r3, #1
  9e:	5b9b      	ldrh	r3, [r3, r6]
  a0:	003e      	movs	r6, r7
  a2:	4016      	ands	r6, r2
  a4:	46b1      	mov	r9, r6
  a6:	009b      	lsls	r3, r3, #2
  a8:	18cb      	adds	r3, r1, r3
  aa:	686e      	ldr	r6, [r5, #4]
  ac:	444b      	add	r3, r9
  ae:	005b      	lsls	r3, r3, #1
  b0:	5b9b      	ldrh	r3, [r3, r6]
  b2:	4699      	mov	r9, r3
  b4:	4653      	mov	r3, sl
  b6:	464e      	mov	r6, r9
  b8:	4013      	ands	r3, r2
  ba:	005b      	lsls	r3, r3, #1
  bc:	3201      	adds	r2, #1
  be:	521e      	strh	r6, [r3, r0]
  c0:	4562      	cmp	r2, ip
  c2:	d1e8      	bne.n	96 <hrt_DrawMapLayerStripH+0x4a>
  c4:	bce0      	pop	{r5, r6, r7}
  c6:	46ba      	mov	sl, r7
  c8:	46b1      	mov	r9, r6
  ca:	46a8      	mov	r8, r5
  cc:	bcf0      	pop	{r4, r5, r6, r7}
  ce:	bc01      	pop	{r0}
  d0:	4700      	bx	r0
  d2:	46c0      	nop			@ (mov r8, r8)
  d4:	00000000 	andeq	r0, r0, r0

000000d8 <hrt_DrawFullDrawerScrollMap>:
  d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  da:	4f0c      	ldr	r7, [pc, #48]	@ (10c <hrt_DrawFullDrawerScrollMap+0x34>)
  dc:	7a3b      	ldrb	r3, [r7, #8]
  de:	2b00      	cmp	r3, #0
  e0:	d010      	beq.n	104 <hrt_DrawFullDrawerScrollMap+0x2c>
  e2:	003e      	movs	r6, r7
  e4:	2500      	movs	r5, #0
  e6:	2400      	movs	r4, #0
  e8:	6971      	ldr	r1, [r6, #20]
  ea:	12c9      	asrs	r1, r1, #11
  ec:	1909      	adds	r1, r1, r4
  ee:	0028      	movs	r0, r5
  f0:	3401      	adds	r4, #1
  f2:	f7ff fffe 	bl	4c <hrt_DrawMapLayerStripH>
  f6:	2c20      	cmp	r4, #32
  f8:	d1f6      	bne.n	e8 <hrt_DrawFullDrawerScrollMap+0x10>
  fa:	7a3b      	ldrb	r3, [r7, #8]
  fc:	3501      	adds	r5, #1
  fe:	360c      	adds	r6, #12
 100:	42ab      	cmp	r3, r5
 102:	d8f0      	bhi.n	e6 <hrt_DrawFullDrawerScrollMap+0xe>
 104:	bcf8      	pop	{r3, r4, r5, r6, r7}
 106:	bc01      	pop	{r0}
 108:	4700      	bx	r0
 10a:	46c0      	nop			@ (mov r8, r8)
 10c:	00000000 	andeq	r0, r0, r0

00000110 <hrt_DrawMapLayerStripV>:
 110:	b5f0      	push	{r4, r5, r6, r7, lr}
 112:	464f      	mov	r7, r9
 114:	4646      	mov	r6, r8
 116:	46d6      	mov	lr, sl
 118:	b5c0      	push	{r6, r7, lr}
 11a:	0042      	lsls	r2, r0, #1
 11c:	1812      	adds	r2, r2, r0
 11e:	4c1f      	ldr	r4, [pc, #124]	@ (19c <hrt_DrawMapLayerStripV+0x8c>)
 120:	0092      	lsls	r2, r2, #2
 122:	18a2      	adds	r2, r4, r2
 124:	68d3      	ldr	r3, [r2, #12]
 126:	4698      	mov	r8, r3
 128:	104b      	asrs	r3, r1, #1
 12a:	469c      	mov	ip, r3
 12c:	23c0      	movs	r3, #192	@ 0xc0
 12e:	251f      	movs	r5, #31
 130:	04db      	lsls	r3, r3, #19
 132:	000e      	movs	r6, r1
 134:	4699      	mov	r9, r3
 136:	400d      	ands	r5, r1
 138:	231f      	movs	r3, #31
 13a:	2101      	movs	r1, #1
 13c:	6952      	ldr	r2, [r2, #20]
 13e:	12d2      	asrs	r2, r2, #11
 140:	0017      	movs	r7, r2
 142:	4031      	ands	r1, r6
 144:	469a      	mov	sl, r3
 146:	2602      	movs	r6, #2
 148:	006d      	lsls	r5, r5, #1
 14a:	301c      	adds	r0, #28
 14c:	444d      	add	r5, r9
 14e:	02c0      	lsls	r0, r0, #11
 150:	1828      	adds	r0, r5, r0
 152:	3720      	adds	r7, #32
 154:	1053      	asrs	r3, r2, #1
 156:	4699      	mov	r9, r3
 158:	2500      	movs	r5, #0
 15a:	5f63      	ldrsh	r3, [r4, r5]
 15c:	001d      	movs	r5, r3
 15e:	464b      	mov	r3, r9
 160:	436b      	muls	r3, r5
 162:	4645      	mov	r5, r8
 164:	4463      	add	r3, ip
 166:	005b      	lsls	r3, r3, #1
 168:	5b5b      	ldrh	r3, [r3, r5]
 16a:	0055      	lsls	r5, r2, #1
 16c:	4035      	ands	r5, r6
 16e:	46a9      	mov	r9, r5
 170:	009b      	lsls	r3, r3, #2
 172:	18cb      	adds	r3, r1, r3
 174:	6865      	ldr	r5, [r4, #4]
 176:	444b      	add	r3, r9
 178:	005b      	lsls	r3, r3, #1
 17a:	5b5b      	ldrh	r3, [r3, r5]
 17c:	4699      	mov	r9, r3
 17e:	4653      	mov	r3, sl
 180:	464d      	mov	r5, r9
 182:	4013      	ands	r3, r2
 184:	019b      	lsls	r3, r3, #6
 186:	3201      	adds	r2, #1
 188:	521d      	strh	r5, [r3, r0]
 18a:	42ba      	cmp	r2, r7
 18c:	d1e2      	bne.n	154 <hrt_DrawMapLayerStripV+0x44>
 18e:	bce0      	pop	{r5, r6, r7}
 190:	46ba      	mov	sl, r7
 192:	46b1      	mov	r9, r6
 194:	46a8      	mov	r8, r5
 196:	bcf0      	pop	{r4, r5, r6, r7}
 198:	bc01      	pop	{r0}
 19a:	4700      	bx	r0
 19c:	00000000 	andeq	r0, r0, r0

000001a0 <hrt_SetDrawerMapXY>:
 1a0:	4b01      	ldr	r3, [pc, #4]	@ (1a8 <hrt_SetDrawerMapXY+0x8>)
 1a2:	6219      	str	r1, [r3, #32]
 1a4:	61d8      	str	r0, [r3, #28]
 1a6:	4770      	bx	lr
 1a8:	00000000 	andeq	r0, r0, r0

000001ac <hrt_GetDrawerMapX>:
 1ac:	0042      	lsls	r2, r0, #1
 1ae:	4b03      	ldr	r3, [pc, #12]	@ (1bc <hrt_GetDrawerMapX+0x10>)
 1b0:	1812      	adds	r2, r2, r0
 1b2:	0092      	lsls	r2, r2, #2
 1b4:	189b      	adds	r3, r3, r2
 1b6:	6918      	ldr	r0, [r3, #16]
 1b8:	4770      	bx	lr
 1ba:	46c0      	nop			@ (mov r8, r8)
 1bc:	00000000 	andeq	r0, r0, r0

000001c0 <hrt_GetDrawerMapY>:
 1c0:	0042      	lsls	r2, r0, #1
 1c2:	4b03      	ldr	r3, [pc, #12]	@ (1d0 <hrt_GetDrawerMapY+0x10>)
 1c4:	1812      	adds	r2, r2, r0
 1c6:	0092      	lsls	r2, r2, #2
 1c8:	189b      	adds	r3, r3, r2
 1ca:	6958      	ldr	r0, [r3, #20]
 1cc:	4770      	bx	lr
 1ce:	46c0      	nop			@ (mov r8, r8)
 1d0:	00000000 	andeq	r0, r0, r0

000001d4 <hrt_GetDrawerLayers>:
 1d4:	4b01      	ldr	r3, [pc, #4]	@ (1dc <hrt_GetDrawerLayers+0x8>)
 1d6:	7a18      	ldrb	r0, [r3, #8]
 1d8:	4770      	bx	lr
 1da:	46c0      	nop			@ (mov r8, r8)
 1dc:	00000000 	andeq	r0, r0, r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


flash.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SetFlashPointer>:
   0:	4b01      	ldr	r3, [pc, #4]	@ (8 <hrt_SetFlashPointer+0x8>)
   2:	6018      	str	r0, [r3, #0]
   4:	4770      	bx	lr
   6:	46c0      	nop			@ (mov r8, r8)
   8:	00000000 	andeq	r0, r0, r0

0000000c <hrt_SaveToFlash>:
   c:	b510      	push	{r4, lr}
   e:	4b06      	ldr	r3, [pc, #24]	@ (28 <hrt_SaveToFlash+0x1c>)
  10:	7818      	ldrb	r0, [r3, #0]
  12:	2800      	cmp	r0, #0
  14:	d004      	beq.n	20 <hrt_SaveToFlash+0x14>
  16:	4b05      	ldr	r3, [pc, #20]	@ (2c <hrt_SaveToFlash+0x20>)
  18:	6819      	ldr	r1, [r3, #0]
  1a:	4b05      	ldr	r3, [pc, #20]	@ (30 <hrt_SaveToFlash+0x24>)
  1c:	f000 f80a 	bl	34 <hrt_SaveToFlash+0x28>
  20:	bc10      	pop	{r4}
  22:	bc01      	pop	{r0}
  24:	4700      	bx	r0
  26:	46c0      	nop			@ (mov r8, r8)
	...
  34:	4718      	bx	r3
  36:	46c0      	nop			@ (mov r8, r8)

Disassembly of section .data:

00000000 <flash_sram_area>:
   0:	006acfc0 	rsbeq	ip, sl, r0, asr #31

Disassembly of section .ewram:

00000000 <hrt_GetFlashType>:
   0:	b5f0      	push	{r4, r5, r6, r7, lr}
   2:	4b2a      	ldr	r3, [pc, #168]	@ (ac <hrt_GetFlashType+0xac>)
   4:	8819      	ldrh	r1, [r3, #0]
   6:	2201      	movs	r2, #1
   8:	0008      	movs	r0, r1
   a:	4390      	bics	r0, r2
   c:	8018      	strh	r0, [r3, #0]
   e:	2380      	movs	r3, #128	@ 0x80
  10:	20ff      	movs	r0, #255	@ 0xff
  12:	051b      	lsls	r3, r3, #20
  14:	681a      	ldr	r2, [r3, #0]
  16:	8018      	strh	r0, [r3, #0]
  18:	46c0      	nop			@ (mov r8, r8)
  1a:	2490      	movs	r4, #144	@ 0x90
  1c:	801c      	strh	r4, [r3, #0]
  1e:	46c0      	nop			@ (mov r8, r8)
  20:	681d      	ldr	r5, [r3, #0]
  22:	8018      	strh	r0, [r3, #0]
  24:	46c0      	nop			@ (mov r8, r8)
  26:	42aa      	cmp	r2, r5
  28:	d017      	beq.n	5a <hrt_GetFlashType+0x5a>
  2a:	2242      	movs	r2, #66	@ 0x42
  2c:	4c20      	ldr	r4, [pc, #128]	@ (b0 <hrt_GetFlashType+0xb0>)
  2e:	8022      	strh	r2, [r4, #0]
  30:	46c0      	nop			@ (mov r8, r8)
  32:	2596      	movs	r5, #150	@ 0x96
  34:	4a1f      	ldr	r2, [pc, #124]	@ (b4 <hrt_GetFlashType+0xb4>)
  36:	7812      	ldrb	r2, [r2, #0]
  38:	8025      	strh	r5, [r4, #0]
  3a:	46c0      	nop			@ (mov r8, r8)
  3c:	8018      	strh	r0, [r3, #0]
  3e:	46c0      	nop			@ (mov r8, r8)
  40:	0013      	movs	r3, r2
  42:	3b96      	subs	r3, #150	@ 0x96
  44:	1e5a      	subs	r2, r3, #1
  46:	4193      	sbcs	r3, r2
  48:	38fc      	subs	r0, #252	@ 0xfc
  4a:	425b      	negs	r3, r3
  4c:	4018      	ands	r0, r3
  4e:	3001      	adds	r0, #1
  50:	4b16      	ldr	r3, [pc, #88]	@ (ac <hrt_GetFlashType+0xac>)
  52:	8019      	strh	r1, [r3, #0]
  54:	bcf0      	pop	{r4, r5, r6, r7}
  56:	bc02      	pop	{r1}
  58:	4708      	bx	r1
  5a:	20f0      	movs	r0, #240	@ 0xf0
  5c:	8018      	strh	r0, [r3, #0]
  5e:	46c0      	nop			@ (mov r8, r8)
  60:	26a9      	movs	r6, #169	@ 0xa9
  62:	4d15      	ldr	r5, [pc, #84]	@ (b8 <hrt_GetFlashType+0xb8>)
  64:	802e      	strh	r6, [r5, #0]
  66:	46c0      	nop			@ (mov r8, r8)
  68:	2756      	movs	r7, #86	@ 0x56
  6a:	4e14      	ldr	r6, [pc, #80]	@ (bc <hrt_GetFlashType+0xbc>)
  6c:	8037      	strh	r7, [r6, #0]
  6e:	46c0      	nop			@ (mov r8, r8)
  70:	802c      	strh	r4, [r5, #0]
  72:	46c0      	nop			@ (mov r8, r8)
  74:	681f      	ldr	r7, [r3, #0]
  76:	8018      	strh	r0, [r3, #0]
  78:	46c0      	nop			@ (mov r8, r8)
  7a:	42ba      	cmp	r2, r7
  7c:	d113      	bne.n	a6 <hrt_GetFlashType+0xa6>
  7e:	8018      	strh	r0, [r3, #0]
  80:	46c0      	nop			@ (mov r8, r8)
  82:	27aa      	movs	r7, #170	@ 0xaa
  84:	802f      	strh	r7, [r5, #0]
  86:	46c0      	nop			@ (mov r8, r8)
  88:	3f55      	subs	r7, #85	@ 0x55
  8a:	8037      	strh	r7, [r6, #0]
  8c:	46c0      	nop			@ (mov r8, r8)
  8e:	802c      	strh	r4, [r5, #0]
  90:	46c0      	nop			@ (mov r8, r8)
  92:	681c      	ldr	r4, [r3, #0]
  94:	8018      	strh	r0, [r3, #0]
  96:	46c0      	nop			@ (mov r8, r8)
  98:	1b12      	subs	r2, r2, r4
  9a:	1e53      	subs	r3, r2, #1
  9c:	419a      	sbcs	r2, r3
  9e:	38ed      	subs	r0, #237	@ 0xed
  a0:	4252      	negs	r2, r2
  a2:	4010      	ands	r0, r2
  a4:	e7d4      	b.n	50 <hrt_GetFlashType+0x50>
  a6:	2002      	movs	r0, #2
  a8:	e7d2      	b.n	50 <hrt_GetFlashType+0x50>
  aa:	46c0      	nop			@ (mov r8, r8)
  ac:	04000200 	streq	r0, [r0], #-512	@ 0xfffffe00
  b0:	08000058 	stmdaeq	r0, {r3, r4, r6}
  b4:	080000b2 	stmdaeq	r0, {r1, r4, r5, r7}
  b8:	08000aaa 	stmdaeq	r0, {r1, r3, r5, r7, r9, fp}
  bc:	08000554 	stmdaeq	r0, {r2, r4, r6, r8, sl}

000000c0 <__hrt_FlashWrite>:
  c0:	b5f0      	push	{r4, r5, r6, r7, lr}
  c2:	46de      	mov	lr, fp
  c4:	4657      	mov	r7, sl
  c6:	464e      	mov	r6, r9
  c8:	4645      	mov	r5, r8
  ca:	b5e0      	push	{r5, r6, r7, lr}
  cc:	0003      	movs	r3, r0
  ce:	b085      	sub	sp, #20
  d0:	0008      	movs	r0, r1
  d2:	2b00      	cmp	r3, #0
  d4:	d100      	bne.n	d8 <__hrt_FlashWrite+0x18>
  d6:	e09b      	b.n	210 <__hrt_FlashWrite+0x150>
  d8:	4cae      	ldr	r4, [pc, #696]	@ (394 <__hrt_FlashWrite+0x2d4>)
  da:	8822      	ldrh	r2, [r4, #0]
  dc:	2101      	movs	r1, #1
  de:	0015      	movs	r5, r2
  e0:	438d      	bics	r5, r1
  e2:	9202      	str	r2, [sp, #8]
  e4:	8025      	strh	r5, [r4, #0]
  e6:	2b01      	cmp	r3, #1
  e8:	d052      	beq.n	190 <__hrt_FlashWrite+0xd0>
  ea:	2b02      	cmp	r3, #2
  ec:	d100      	bne.n	f0 <__hrt_FlashWrite+0x30>
  ee:	e0f3      	b.n	2d8 <__hrt_FlashWrite+0x218>
  f0:	2b03      	cmp	r3, #3
  f2:	d100      	bne.n	f6 <__hrt_FlashWrite+0x36>
  f4:	e095      	b.n	222 <__hrt_FlashWrite+0x162>
  f6:	2b04      	cmp	r3, #4
  f8:	d000      	beq.n	fc <__hrt_FlashWrite+0x3c>
  fa:	e086      	b.n	20a <__hrt_FlashWrite+0x14a>
  fc:	2380      	movs	r3, #128	@ 0x80
  fe:	0005      	movs	r5, r0
 100:	051b      	lsls	r3, r3, #20
 102:	469c      	mov	ip, r3
 104:	23ff      	movs	r3, #255	@ 0xff
 106:	438d      	bics	r5, r1
 108:	4465      	add	r5, ip
 10a:	802b      	strh	r3, [r5, #0]
 10c:	46c0      	nop			@ (mov r8, r8)
 10e:	3b9f      	subs	r3, #159	@ 0x9f
 110:	802b      	strh	r3, [r5, #0]
 112:	46c0      	nop			@ (mov r8, r8)
 114:	3370      	adds	r3, #112	@ 0x70
 116:	802b      	strh	r3, [r5, #0]
 118:	46c0      	nop			@ (mov r8, r8)
 11a:	2120      	movs	r1, #32
 11c:	8029      	strh	r1, [r5, #0]
 11e:	46c0      	nop			@ (mov r8, r8)
 120:	802b      	strh	r3, [r5, #0]
 122:	46c0      	nop			@ (mov r8, r8)
 124:	3160      	adds	r1, #96	@ 0x60
 126:	46c0      	nop			@ (mov r8, r8)
 128:	882b      	ldrh	r3, [r5, #0]
 12a:	4219      	tst	r1, r3
 12c:	d0fb      	beq.n	126 <__hrt_FlashWrite+0x66>
 12e:	23ff      	movs	r3, #255	@ 0xff
 130:	802b      	strh	r3, [r5, #0]
 132:	46c0      	nop			@ (mov r8, r8)
 134:	3b15      	subs	r3, #21
 136:	802b      	strh	r3, [r5, #0]
 138:	46c0      	nop			@ (mov r8, r8)
 13a:	2180      	movs	r1, #128	@ 0x80
 13c:	46c0      	nop			@ (mov r8, r8)
 13e:	882b      	ldrh	r3, [r5, #0]
 140:	4219      	tst	r1, r3
 142:	d0fb      	beq.n	13c <__hrt_FlashWrite+0x7c>
 144:	4b94      	ldr	r3, [pc, #592]	@ (398 <__hrt_FlashWrite+0x2d8>)
 146:	802b      	strh	r3, [r5, #0]
 148:	46c0      	nop			@ (mov r8, r8)
 14a:	4a94      	ldr	r2, [pc, #592]	@ (39c <__hrt_FlashWrite+0x2dc>)
 14c:	4694      	mov	ip, r2
 14e:	2780      	movs	r7, #128	@ 0x80
 150:	4460      	add	r0, ip
 152:	2201      	movs	r2, #1
 154:	46ac      	mov	ip, r5
 156:	0005      	movs	r5, r0
 158:	4b91      	ldr	r3, [pc, #580]	@ (3a0 <__hrt_FlashWrite+0x2e0>)
 15a:	4e92      	ldr	r6, [pc, #584]	@ (3a4 <__hrt_FlashWrite+0x2e4>)
 15c:	053f      	lsls	r7, r7, #20
 15e:	7818      	ldrb	r0, [r3, #0]
 160:	1e5c      	subs	r4, r3, #1
 162:	7824      	ldrb	r4, [r4, #0]
 164:	18e9      	adds	r1, r5, r3
 166:	0200      	lsls	r0, r0, #8
 168:	4391      	bics	r1, r2
 16a:	4304      	orrs	r4, r0
 16c:	53cc      	strh	r4, [r1, r7]
 16e:	46c0      	nop			@ (mov r8, r8)
 170:	3302      	adds	r3, #2
 172:	42b3      	cmp	r3, r6
 174:	d1f3      	bne.n	15e <__hrt_FlashWrite+0x9e>
 176:	4665      	mov	r5, ip
 178:	23d0      	movs	r3, #208	@ 0xd0
 17a:	802b      	strh	r3, [r5, #0]
 17c:	46c0      	nop			@ (mov r8, r8)
 17e:	2180      	movs	r1, #128	@ 0x80
 180:	46c0      	nop			@ (mov r8, r8)
 182:	882b      	ldrh	r3, [r5, #0]
 184:	4219      	tst	r1, r3
 186:	d0fb      	beq.n	180 <__hrt_FlashWrite+0xc0>
 188:	23ff      	movs	r3, #255	@ 0xff
 18a:	802b      	strh	r3, [r5, #0]
 18c:	46c0      	nop			@ (mov r8, r8)
 18e:	e03c      	b.n	20a <__hrt_FlashWrite+0x14a>
 190:	0004      	movs	r4, r0
 192:	439c      	bics	r4, r3
 194:	2380      	movs	r3, #128	@ 0x80
 196:	051b      	lsls	r3, r3, #20
 198:	469c      	mov	ip, r3
 19a:	23ff      	movs	r3, #255	@ 0xff
 19c:	4464      	add	r4, ip
 19e:	8023      	strh	r3, [r4, #0]
 1a0:	46c0      	nop			@ (mov r8, r8)
 1a2:	3b9f      	subs	r3, #159	@ 0x9f
 1a4:	8023      	strh	r3, [r4, #0]
 1a6:	46c0      	nop			@ (mov r8, r8)
 1a8:	3370      	adds	r3, #112	@ 0x70
 1aa:	8023      	strh	r3, [r4, #0]
 1ac:	46c0      	nop			@ (mov r8, r8)
 1ae:	311f      	adds	r1, #31
 1b0:	8021      	strh	r1, [r4, #0]
 1b2:	46c0      	nop			@ (mov r8, r8)
 1b4:	8023      	strh	r3, [r4, #0]
 1b6:	46c0      	nop			@ (mov r8, r8)
 1b8:	46c0      	nop			@ (mov r8, r8)
 1ba:	8823      	ldrh	r3, [r4, #0]
 1bc:	2b80      	cmp	r3, #128	@ 0x80
 1be:	d1fb      	bne.n	1b8 <__hrt_FlashWrite+0xf8>
 1c0:	337f      	adds	r3, #127	@ 0x7f
 1c2:	8023      	strh	r3, [r4, #0]
 1c4:	46c0      	nop			@ (mov r8, r8)
 1c6:	4b75      	ldr	r3, [pc, #468]	@ (39c <__hrt_FlashWrite+0x2dc>)
 1c8:	469c      	mov	ip, r3
 1ca:	2301      	movs	r3, #1
 1cc:	4460      	add	r0, ip
 1ce:	2740      	movs	r7, #64	@ 0x40
 1d0:	469c      	mov	ip, r3
 1d2:	4d73      	ldr	r5, [pc, #460]	@ (3a0 <__hrt_FlashWrite+0x2e0>)
 1d4:	4e73      	ldr	r6, [pc, #460]	@ (3a4 <__hrt_FlashWrite+0x2e4>)
 1d6:	4662      	mov	r2, ip
 1d8:	1943      	adds	r3, r0, r5
 1da:	4393      	bics	r3, r2
 1dc:	2280      	movs	r2, #128	@ 0x80
 1de:	0512      	lsls	r2, r2, #20
 1e0:	4690      	mov	r8, r2
 1e2:	4443      	add	r3, r8
 1e4:	801f      	strh	r7, [r3, #0]
 1e6:	46c0      	nop			@ (mov r8, r8)
 1e8:	7829      	ldrb	r1, [r5, #0]
 1ea:	1e6a      	subs	r2, r5, #1
 1ec:	7812      	ldrb	r2, [r2, #0]
 1ee:	0209      	lsls	r1, r1, #8
 1f0:	430a      	orrs	r2, r1
 1f2:	801a      	strh	r2, [r3, #0]
 1f4:	46c0      	nop			@ (mov r8, r8)
 1f6:	46c0      	nop			@ (mov r8, r8)
 1f8:	8823      	ldrh	r3, [r4, #0]
 1fa:	2b80      	cmp	r3, #128	@ 0x80
 1fc:	d1fb      	bne.n	1f6 <__hrt_FlashWrite+0x136>
 1fe:	3502      	adds	r5, #2
 200:	42b5      	cmp	r5, r6
 202:	d1e8      	bne.n	1d6 <__hrt_FlashWrite+0x116>
 204:	337f      	adds	r3, #127	@ 0x7f
 206:	8023      	strh	r3, [r4, #0]
 208:	46c0      	nop			@ (mov r8, r8)
 20a:	4b62      	ldr	r3, [pc, #392]	@ (394 <__hrt_FlashWrite+0x2d4>)
 20c:	9a02      	ldr	r2, [sp, #8]
 20e:	801a      	strh	r2, [r3, #0]
 210:	b005      	add	sp, #20
 212:	bcf0      	pop	{r4, r5, r6, r7}
 214:	46bb      	mov	fp, r7
 216:	46b2      	mov	sl, r6
 218:	46a9      	mov	r9, r5
 21a:	46a0      	mov	r8, r4
 21c:	bcf0      	pop	{r4, r5, r6, r7}
 21e:	bc01      	pop	{r0}
 220:	4700      	bx	r0
 222:	0003      	movs	r3, r0
 224:	438b      	bics	r3, r1
 226:	0019      	movs	r1, r3
 228:	2380      	movs	r3, #128	@ 0x80
 22a:	051b      	lsls	r3, r3, #20
 22c:	469c      	mov	ip, r3
 22e:	23f0      	movs	r3, #240	@ 0xf0
 230:	4461      	add	r1, ip
 232:	800b      	strh	r3, [r1, #0]
 234:	46c0      	nop			@ (mov r8, r8)
 236:	26aa      	movs	r6, #170	@ 0xaa
 238:	4b5b      	ldr	r3, [pc, #364]	@ (3a8 <__hrt_FlashWrite+0x2e8>)
 23a:	801e      	strh	r6, [r3, #0]
 23c:	46c0      	nop			@ (mov r8, r8)
 23e:	2555      	movs	r5, #85	@ 0x55
 240:	4c5a      	ldr	r4, [pc, #360]	@ (3ac <__hrt_FlashWrite+0x2ec>)
 242:	8025      	strh	r5, [r4, #0]
 244:	46c0      	nop			@ (mov r8, r8)
 246:	2780      	movs	r7, #128	@ 0x80
 248:	801f      	strh	r7, [r3, #0]
 24a:	46c0      	nop			@ (mov r8, r8)
 24c:	801e      	strh	r6, [r3, #0]
 24e:	46c0      	nop			@ (mov r8, r8)
 250:	8025      	strh	r5, [r4, #0]
 252:	46c0      	nop			@ (mov r8, r8)
 254:	2330      	movs	r3, #48	@ 0x30
 256:	800b      	strh	r3, [r1, #0]
 258:	46c0      	nop			@ (mov r8, r8)
 25a:	4c55      	ldr	r4, [pc, #340]	@ (3b0 <__hrt_FlashWrite+0x2f0>)
 25c:	46c0      	nop			@ (mov r8, r8)
 25e:	880b      	ldrh	r3, [r1, #0]
 260:	42a3      	cmp	r3, r4
 262:	d1fb      	bne.n	25c <__hrt_FlashWrite+0x19c>
 264:	23f0      	movs	r3, #240	@ 0xf0
 266:	800b      	strh	r3, [r1, #0]
 268:	46c0      	nop			@ (mov r8, r8)
 26a:	4b4c      	ldr	r3, [pc, #304]	@ (39c <__hrt_FlashWrite+0x2dc>)
 26c:	469c      	mov	ip, r3
 26e:	23aa      	movs	r3, #170	@ 0xaa
 270:	469b      	mov	fp, r3
 272:	2355      	movs	r3, #85	@ 0x55
 274:	469a      	mov	sl, r3
 276:	23a0      	movs	r3, #160	@ 0xa0
 278:	4699      	mov	r9, r3
 27a:	3b9f      	subs	r3, #159	@ 0x9f
 27c:	4698      	mov	r8, r3
 27e:	4c48      	ldr	r4, [pc, #288]	@ (3a0 <__hrt_FlashWrite+0x2e0>)
 280:	4e49      	ldr	r6, [pc, #292]	@ (3a8 <__hrt_FlashWrite+0x2e8>)
 282:	4460      	add	r0, ip
 284:	465b      	mov	r3, fp
 286:	8033      	strh	r3, [r6, #0]
 288:	46c0      	nop			@ (mov r8, r8)
 28a:	4652      	mov	r2, sl
 28c:	4b47      	ldr	r3, [pc, #284]	@ (3ac <__hrt_FlashWrite+0x2ec>)
 28e:	801a      	strh	r2, [r3, #0]
 290:	46c0      	nop			@ (mov r8, r8)
 292:	464b      	mov	r3, r9
 294:	8033      	strh	r3, [r6, #0]
 296:	46c0      	nop			@ (mov r8, r8)
 298:	4643      	mov	r3, r8
 29a:	1905      	adds	r5, r0, r4
 29c:	439d      	bics	r5, r3
 29e:	2380      	movs	r3, #128	@ 0x80
 2a0:	051b      	lsls	r3, r3, #20
 2a2:	469c      	mov	ip, r3
 2a4:	7822      	ldrb	r2, [r4, #0]
 2a6:	1e67      	subs	r7, r4, #1
 2a8:	783b      	ldrb	r3, [r7, #0]
 2aa:	0212      	lsls	r2, r2, #8
 2ac:	4465      	add	r5, ip
 2ae:	4313      	orrs	r3, r2
 2b0:	802b      	strh	r3, [r5, #0]
 2b2:	46c0      	nop			@ (mov r8, r8)
 2b4:	468c      	mov	ip, r1
 2b6:	46c0      	nop			@ (mov r8, r8)
 2b8:	7823      	ldrb	r3, [r4, #0]
 2ba:	7839      	ldrb	r1, [r7, #0]
 2bc:	882a      	ldrh	r2, [r5, #0]
 2be:	021b      	lsls	r3, r3, #8
 2c0:	430b      	orrs	r3, r1
 2c2:	429a      	cmp	r2, r3
 2c4:	d1f7      	bne.n	2b6 <__hrt_FlashWrite+0x1f6>
 2c6:	4b37      	ldr	r3, [pc, #220]	@ (3a4 <__hrt_FlashWrite+0x2e4>)
 2c8:	3402      	adds	r4, #2
 2ca:	4661      	mov	r1, ip
 2cc:	429c      	cmp	r4, r3
 2ce:	d1d9      	bne.n	284 <__hrt_FlashWrite+0x1c4>
 2d0:	23f0      	movs	r3, #240	@ 0xf0
 2d2:	800b      	strh	r3, [r1, #0]
 2d4:	46c0      	nop			@ (mov r8, r8)
 2d6:	e798      	b.n	20a <__hrt_FlashWrite+0x14a>
 2d8:	2380      	movs	r3, #128	@ 0x80
 2da:	0005      	movs	r5, r0
 2dc:	051b      	lsls	r3, r3, #20
 2de:	469c      	mov	ip, r3
 2e0:	23f0      	movs	r3, #240	@ 0xf0
 2e2:	438d      	bics	r5, r1
 2e4:	4465      	add	r5, ip
 2e6:	802b      	strh	r3, [r5, #0]
 2e8:	46c0      	nop			@ (mov r8, r8)
 2ea:	26a9      	movs	r6, #169	@ 0xa9
 2ec:	4b2e      	ldr	r3, [pc, #184]	@ (3a8 <__hrt_FlashWrite+0x2e8>)
 2ee:	801e      	strh	r6, [r3, #0]
 2f0:	46c0      	nop			@ (mov r8, r8)
 2f2:	2456      	movs	r4, #86	@ 0x56
 2f4:	492d      	ldr	r1, [pc, #180]	@ (3ac <__hrt_FlashWrite+0x2ec>)
 2f6:	800c      	strh	r4, [r1, #0]
 2f8:	46c0      	nop			@ (mov r8, r8)
 2fa:	2780      	movs	r7, #128	@ 0x80
 2fc:	801f      	strh	r7, [r3, #0]
 2fe:	46c0      	nop			@ (mov r8, r8)
 300:	801e      	strh	r6, [r3, #0]
 302:	46c0      	nop			@ (mov r8, r8)
 304:	800c      	strh	r4, [r1, #0]
 306:	46c0      	nop			@ (mov r8, r8)
 308:	2330      	movs	r3, #48	@ 0x30
 30a:	802b      	strh	r3, [r5, #0]
 30c:	46c0      	nop			@ (mov r8, r8)
 30e:	4928      	ldr	r1, [pc, #160]	@ (3b0 <__hrt_FlashWrite+0x2f0>)
 310:	46c0      	nop			@ (mov r8, r8)
 312:	882b      	ldrh	r3, [r5, #0]
 314:	428b      	cmp	r3, r1
 316:	d1fb      	bne.n	310 <__hrt_FlashWrite+0x250>
 318:	23f0      	movs	r3, #240	@ 0xf0
 31a:	802b      	strh	r3, [r5, #0]
 31c:	46c0      	nop			@ (mov r8, r8)
 31e:	4b1f      	ldr	r3, [pc, #124]	@ (39c <__hrt_FlashWrite+0x2dc>)
 320:	469c      	mov	ip, r3
 322:	23a9      	movs	r3, #169	@ 0xa9
 324:	469a      	mov	sl, r3
 326:	2356      	movs	r3, #86	@ 0x56
 328:	4699      	mov	r9, r3
 32a:	23a0      	movs	r3, #160	@ 0xa0
 32c:	4698      	mov	r8, r3
 32e:	3b9f      	subs	r3, #159	@ 0x9f
 330:	9300      	str	r3, [sp, #0]
 332:	4b1c      	ldr	r3, [pc, #112]	@ (3a4 <__hrt_FlashWrite+0x2e4>)
 334:	469b      	mov	fp, r3
 336:	4460      	add	r0, ip
 338:	4919      	ldr	r1, [pc, #100]	@ (3a0 <__hrt_FlashWrite+0x2e0>)
 33a:	4e1b      	ldr	r6, [pc, #108]	@ (3a8 <__hrt_FlashWrite+0x2e8>)
 33c:	4f1b      	ldr	r7, [pc, #108]	@ (3ac <__hrt_FlashWrite+0x2ec>)
 33e:	9503      	str	r5, [sp, #12]
 340:	9001      	str	r0, [sp, #4]
 342:	4653      	mov	r3, sl
 344:	8033      	strh	r3, [r6, #0]
 346:	46c0      	nop			@ (mov r8, r8)
 348:	464b      	mov	r3, r9
 34a:	803b      	strh	r3, [r7, #0]
 34c:	46c0      	nop			@ (mov r8, r8)
 34e:	4643      	mov	r3, r8
 350:	8033      	strh	r3, [r6, #0]
 352:	46c0      	nop			@ (mov r8, r8)
 354:	9b01      	ldr	r3, [sp, #4]
 356:	185c      	adds	r4, r3, r1
 358:	9b00      	ldr	r3, [sp, #0]
 35a:	439c      	bics	r4, r3
 35c:	2380      	movs	r3, #128	@ 0x80
 35e:	051b      	lsls	r3, r3, #20
 360:	469c      	mov	ip, r3
 362:	780a      	ldrb	r2, [r1, #0]
 364:	1e4d      	subs	r5, r1, #1
 366:	782b      	ldrb	r3, [r5, #0]
 368:	0212      	lsls	r2, r2, #8
 36a:	4464      	add	r4, ip
 36c:	4313      	orrs	r3, r2
 36e:	8023      	strh	r3, [r4, #0]
 370:	46c0      	nop			@ (mov r8, r8)
 372:	46c0      	nop			@ (mov r8, r8)
 374:	780b      	ldrb	r3, [r1, #0]
 376:	7828      	ldrb	r0, [r5, #0]
 378:	8822      	ldrh	r2, [r4, #0]
 37a:	021b      	lsls	r3, r3, #8
 37c:	4303      	orrs	r3, r0
 37e:	429a      	cmp	r2, r3
 380:	d1f7      	bne.n	372 <__hrt_FlashWrite+0x2b2>
 382:	3102      	adds	r1, #2
 384:	4559      	cmp	r1, fp
 386:	d1dc      	bne.n	342 <__hrt_FlashWrite+0x282>
 388:	23f0      	movs	r3, #240	@ 0xf0
 38a:	9d03      	ldr	r5, [sp, #12]
 38c:	802b      	strh	r3, [r5, #0]
 38e:	46c0      	nop			@ (mov r8, r8)
 390:	e73b      	b.n	20a <__hrt_FlashWrite+0x14a>
 392:	46c0      	nop			@ (mov r8, r8)
 394:	04000200 	streq	r0, [r0], #-512	@ 0xfffffe00
 398:	000001ff 	strdeq	r0, [r0], -pc	@ <UNPREDICTABLE>
 39c:	f1ffffff 			@ <UNDEFINED> instruction: 0xf1ffffff
 3a0:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
 3a4:	0e000401 	cdpeq	4, 0, cr0, cr0, cr1, {0}
 3a8:	08000aaa 	stmdaeq	r0, {r1, r3, r5, r7, r9, fp}
 3ac:	08000554 	stmdaeq	r0, {r2, r4, r6, r8, sl}
 3b0:	0000ffff 	strdeq	pc, [r0], -pc	@ <UNPREDICTABLE>

000003b4 <hrt_InitFlash>:
 3b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 3b6:	46c6      	mov	lr, r8
 3b8:	b500      	push	{lr}
 3ba:	4b33      	ldr	r3, [pc, #204]	@ (488 <hrt_InitFlash+0xd4>)
 3bc:	881c      	ldrh	r4, [r3, #0]
 3be:	2201      	movs	r2, #1
 3c0:	0025      	movs	r5, r4
 3c2:	4395      	bics	r5, r2
 3c4:	b082      	sub	sp, #8
 3c6:	801d      	strh	r5, [r3, #0]
 3c8:	2380      	movs	r3, #128	@ 0x80
 3ca:	25ff      	movs	r5, #255	@ 0xff
 3cc:	051b      	lsls	r3, r3, #20
 3ce:	681a      	ldr	r2, [r3, #0]
 3d0:	801d      	strh	r5, [r3, #0]
 3d2:	46c0      	nop			@ (mov r8, r8)
 3d4:	2690      	movs	r6, #144	@ 0x90
 3d6:	801e      	strh	r6, [r3, #0]
 3d8:	46c0      	nop			@ (mov r8, r8)
 3da:	681f      	ldr	r7, [r3, #0]
 3dc:	801d      	strh	r5, [r3, #0]
 3de:	46c0      	nop			@ (mov r8, r8)
 3e0:	42ba      	cmp	r2, r7
 3e2:	d01f      	beq.n	424 <hrt_InitFlash+0x70>
 3e4:	2242      	movs	r2, #66	@ 0x42
 3e6:	4e29      	ldr	r6, [pc, #164]	@ (48c <hrt_InitFlash+0xd8>)
 3e8:	8032      	strh	r2, [r6, #0]
 3ea:	46c0      	nop			@ (mov r8, r8)
 3ec:	2796      	movs	r7, #150	@ 0x96
 3ee:	4a28      	ldr	r2, [pc, #160]	@ (490 <hrt_InitFlash+0xdc>)
 3f0:	7812      	ldrb	r2, [r2, #0]
 3f2:	8037      	strh	r7, [r6, #0]
 3f4:	46c0      	nop			@ (mov r8, r8)
 3f6:	801d      	strh	r5, [r3, #0]
 3f8:	46c0      	nop			@ (mov r8, r8)
 3fa:	0013      	movs	r3, r2
 3fc:	3b96      	subs	r3, #150	@ 0x96
 3fe:	1e5a      	subs	r2, r3, #1
 400:	4193      	sbcs	r3, r2
 402:	2203      	movs	r2, #3
 404:	425b      	negs	r3, r3
 406:	4013      	ands	r3, r2
 408:	3301      	adds	r3, #1
 40a:	4a1f      	ldr	r2, [pc, #124]	@ (488 <hrt_InitFlash+0xd4>)
 40c:	8014      	strh	r4, [r2, #0]
 40e:	4a21      	ldr	r2, [pc, #132]	@ (494 <hrt_InitFlash+0xe0>)
 410:	7013      	strb	r3, [r2, #0]
 412:	4b21      	ldr	r3, [pc, #132]	@ (498 <hrt_InitFlash+0xe4>)
 414:	6051      	str	r1, [r2, #4]
 416:	6018      	str	r0, [r3, #0]
 418:	b002      	add	sp, #8
 41a:	bc80      	pop	{r7}
 41c:	46b8      	mov	r8, r7
 41e:	bcf0      	pop	{r4, r5, r6, r7}
 420:	bc01      	pop	{r0}
 422:	4700      	bx	r0
 424:	25f0      	movs	r5, #240	@ 0xf0
 426:	46ac      	mov	ip, r5
 428:	801d      	strh	r5, [r3, #0]
 42a:	46c0      	nop			@ (mov r8, r8)
 42c:	27a9      	movs	r7, #169	@ 0xa9
 42e:	4d1b      	ldr	r5, [pc, #108]	@ (49c <hrt_InitFlash+0xe8>)
 430:	802f      	strh	r7, [r5, #0]
 432:	46c0      	nop			@ (mov r8, r8)
 434:	4d1a      	ldr	r5, [pc, #104]	@ (4a0 <hrt_InitFlash+0xec>)
 436:	3f53      	subs	r7, #83	@ 0x53
 438:	9501      	str	r5, [sp, #4]
 43a:	802f      	strh	r7, [r5, #0]
 43c:	46c0      	nop			@ (mov r8, r8)
 43e:	4f17      	ldr	r7, [pc, #92]	@ (49c <hrt_InitFlash+0xe8>)
 440:	803e      	strh	r6, [r7, #0]
 442:	46c0      	nop			@ (mov r8, r8)
 444:	681f      	ldr	r7, [r3, #0]
 446:	46b8      	mov	r8, r7
 448:	4667      	mov	r7, ip
 44a:	801f      	strh	r7, [r3, #0]
 44c:	46c0      	nop			@ (mov r8, r8)
 44e:	4542      	cmp	r2, r8
 450:	d117      	bne.n	482 <hrt_InitFlash+0xce>
 452:	801f      	strh	r7, [r3, #0]
 454:	46c0      	nop			@ (mov r8, r8)
 456:	4d11      	ldr	r5, [pc, #68]	@ (49c <hrt_InitFlash+0xe8>)
 458:	3f46      	subs	r7, #70	@ 0x46
 45a:	802f      	strh	r7, [r5, #0]
 45c:	46c0      	nop			@ (mov r8, r8)
 45e:	4d10      	ldr	r5, [pc, #64]	@ (4a0 <hrt_InitFlash+0xec>)
 460:	3f55      	subs	r7, #85	@ 0x55
 462:	802f      	strh	r7, [r5, #0]
 464:	46c0      	nop			@ (mov r8, r8)
 466:	4d0d      	ldr	r5, [pc, #52]	@ (49c <hrt_InitFlash+0xe8>)
 468:	802e      	strh	r6, [r5, #0]
 46a:	46c0      	nop			@ (mov r8, r8)
 46c:	4666      	mov	r6, ip
 46e:	681d      	ldr	r5, [r3, #0]
 470:	801e      	strh	r6, [r3, #0]
 472:	46c0      	nop			@ (mov r8, r8)
 474:	1b52      	subs	r2, r2, r5
 476:	1e53      	subs	r3, r2, #1
 478:	419a      	sbcs	r2, r3
 47a:	2303      	movs	r3, #3
 47c:	4252      	negs	r2, r2
 47e:	4013      	ands	r3, r2
 480:	e7c3      	b.n	40a <hrt_InitFlash+0x56>
 482:	2302      	movs	r3, #2
 484:	e7c1      	b.n	40a <hrt_InitFlash+0x56>
 486:	46c0      	nop			@ (mov r8, r8)
 488:	04000200 	streq	r0, [r0], #-512	@ 0xfffffe00
 48c:	08000058 	stmdaeq	r0, {r3, r4, r6}
 490:	080000b2 	stmdaeq	r0, {r1, r4, r5, r7}
	...
 49c:	08000aaa 	stmdaeq	r0, {r1, r3, r5, r7, r9, fp}
 4a0:	08000554 	stmdaeq	r0, {r2, r4, r6, r8, sl}

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


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
      d0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
      d4:	01020202 	tsteq	r2, r2, lsl #4
      d8:	01020100 	mrseq	r0, (UNDEF: 18)
      dc:	00010201 	andeq	r0, r1, r1, lsl #4
      e0:	01020100 	mrseq	r0, (UNDEF: 18)
      e4:	00010201 	andeq	r0, r1, r1, lsl #4
      e8:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     288:	02010201 	andeq	r0, r1, #268435456	@ 0x10000000
     28c:	00010201 	andeq	r0, r1, r1, lsl #4
     290:	02020100 	andeq	r0, r2, #0, 2
     294:	00000102 	andeq	r0, r0, r2, lsl #2
     298:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     29c:	00010202 	andeq	r0, r1, r2, lsl #4
     2a0:	02020100 	andeq	r0, r2, #0, 2
     2a4:	00000102 	andeq	r0, r0, r2, lsl #2
     2a8:	02010201 	andeq	r0, r1, #268435456	@ 0x10000000
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
     2d8:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     420:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     4b0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     520:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     524:	01020202 	tsteq	r2, r2, lsl #4
     528:	01010100 	mrseq	r0, (UNDEF: 17)
     52c:	01020201 	tsteq	r2, r1, lsl #4
     530:	00000000 	andeq	r0, r0, r0
     534:	01020201 	tsteq	r2, r1, lsl #4
     538:	00000000 	andeq	r0, r0, r0
     53c:	00010100 	andeq	r0, r1, r0, lsl #2
     540:	01010100 	mrseq	r0, (UNDEF: 17)
     544:	00000101 	andeq	r0, r0, r1, lsl #2
     548:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     54c:	00010202 	andeq	r0, r1, r2, lsl #4
     550:	01020201 	tsteq	r2, r1, lsl #4
     554:	00000101 	andeq	r0, r0, r1, lsl #2
     558:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     598:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     718:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     71c:	00010101 	andeq	r0, r1, r1, lsl #2
     720:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     790:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     794:	00010102 	andeq	r0, r1, r2, lsl #2
     798:	01010100 	mrseq	r0, (UNDEF: 17)
     79c:	01020202 	tsteq	r2, r2, lsl #4
     7a0:	01010100 	mrseq	r0, (UNDEF: 17)
     7a4:	01020202 	tsteq	r2, r2, lsl #4
     7a8:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     818:	02010201 	andeq	r0, r1, #268435456	@ 0x10000000
     81c:	01020102 	tsteq	r2, r2, lsl #2
     820:	02010201 	andeq	r0, r1, #268435456	@ 0x10000000
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
     860:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     864:	01020202 	tsteq	r2, r2, lsl #4
     868:	01020201 	tsteq	r2, r1, lsl #4
     86c:	01020201 	tsteq	r2, r1, lsl #4
     870:	01020201 	tsteq	r2, r1, lsl #4
     874:	01020201 	tsteq	r2, r1, lsl #4
     878:	00010100 	andeq	r0, r1, r0, lsl #2
     87c:	00010100 	andeq	r0, r1, r0, lsl #2
     880:	01010101 	tsteq	r1, r1, lsl #2
     884:	00000101 	andeq	r0, r0, r1, lsl #2
     888:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     88c:	00010202 	andeq	r0, r1, r2, lsl #4
     890:	01020201 	tsteq	r2, r1, lsl #4
     894:	01020201 	tsteq	r2, r1, lsl #4
     898:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     89c:	00010202 	andeq	r0, r1, r2, lsl #4
     8a0:	01020201 	tsteq	r2, r1, lsl #4
     8a4:	01020201 	tsteq	r2, r1, lsl #4
     8a8:	01020201 	tsteq	r2, r1, lsl #4
     8ac:	01020201 	tsteq	r2, r1, lsl #4
     8b0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     908:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     90c:	00000102 	andeq	r0, r0, r2, lsl #2
     910:	01020201 	tsteq	r2, r1, lsl #4
     914:	00010201 	andeq	r0, r1, r1, lsl #4
     918:	01020201 	tsteq	r2, r1, lsl #4
     91c:	01020201 	tsteq	r2, r1, lsl #4
     920:	01020201 	tsteq	r2, r1, lsl #4
     924:	01020201 	tsteq	r2, r1, lsl #4
     928:	01020201 	tsteq	r2, r1, lsl #4
     92c:	00010201 	andeq	r0, r1, r1, lsl #4
     930:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     934:	00000102 	andeq	r0, r0, r2, lsl #2
     938:	01010100 	mrseq	r0, (UNDEF: 17)
     93c:	00000001 	andeq	r0, r0, r1
     940:	01010100 	mrseq	r0, (UNDEF: 17)
     944:	00010101 	andeq	r0, r1, r1, lsl #2
     948:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     94c:	01020202 	tsteq	r2, r2, lsl #4
     950:	01020201 	tsteq	r2, r1, lsl #4
     954:	00010101 	andeq	r0, r1, r1, lsl #2
     958:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     95c:	00010202 	andeq	r0, r1, r2, lsl #4
     960:	01020201 	tsteq	r2, r1, lsl #4
     964:	00000101 	andeq	r0, r0, r1, lsl #2
     968:	01020201 	tsteq	r2, r1, lsl #4
     96c:	00010101 	andeq	r0, r1, r1, lsl #2
     970:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     974:	01020202 	tsteq	r2, r2, lsl #4
     978:	01010100 	mrseq	r0, (UNDEF: 17)
     97c:	00010101 	andeq	r0, r1, r1, lsl #2
     980:	01010100 	mrseq	r0, (UNDEF: 17)
     984:	00010101 	andeq	r0, r1, r1, lsl #2
     988:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     98c:	01020202 	tsteq	r2, r2, lsl #4
     990:	01020201 	tsteq	r2, r1, lsl #4
     994:	00010101 	andeq	r0, r1, r1, lsl #2
     998:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     a18:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     ad8:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     b30:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     b34:	01020202 	tsteq	r2, r2, lsl #4
     b38:	01010100 	mrseq	r0, (UNDEF: 17)
     b3c:	00010101 	andeq	r0, r1, r1, lsl #2
     b40:	00010100 	andeq	r0, r1, r0, lsl #2
     b44:	00010000 	andeq	r0, r1, r0
     b48:	01020201 	tsteq	r2, r1, lsl #4
     b4c:	01020100 	mrseq	r0, (UNDEF: 18)
     b50:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     b54:	01020201 	tsteq	r2, r1, lsl #4
     b58:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     b90:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     b94:	01020101 	tsteq	r2, r1, lsl #2
     b98:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     c08:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     c0c:	00010202 	andeq	r0, r1, r2, lsl #4
     c10:	01020201 	tsteq	r2, r1, lsl #4
     c14:	01020201 	tsteq	r2, r1, lsl #4
     c18:	01020201 	tsteq	r2, r1, lsl #4
     c1c:	01020201 	tsteq	r2, r1, lsl #4
     c20:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     c88:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     c8c:	00010202 	andeq	r0, r1, r2, lsl #4
     c90:	01020201 	tsteq	r2, r1, lsl #4
     c94:	01020201 	tsteq	r2, r1, lsl #4
     c98:	01020201 	tsteq	r2, r1, lsl #4
     c9c:	01020201 	tsteq	r2, r1, lsl #4
     ca0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     d08:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     de8:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     dec:	01020202 	tsteq	r2, r2, lsl #4
     df0:	02020100 	andeq	r0, r2, #0, 2
     df4:	00010201 	andeq	r0, r1, r1, lsl #4
     df8:	01010000 	mrseq	r0, (UNDEF: 1)
     dfc:	00000100 	andeq	r0, r0, r0, lsl #2
     e00:	00010100 	andeq	r0, r1, r0, lsl #2
     e04:	00010000 	andeq	r0, r1, r0
     e08:	01020201 	tsteq	r2, r1, lsl #4
     e0c:	01020100 	mrseq	r0, (UNDEF: 18)
     e10:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     e88:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
     e8c:	01020202 	tsteq	r2, r2, lsl #4
     e90:	01010100 	mrseq	r0, (UNDEF: 17)
     e94:	01020201 	tsteq	r2, r1, lsl #4
     e98:	01010000 	mrseq	r0, (UNDEF: 1)
     e9c:	00010202 	andeq	r0, r1, r2, lsl #4
     ea0:	02020100 	andeq	r0, r2, #0, 2
     ea4:	00000101 	andeq	r0, r0, r1, lsl #2
     ea8:	01020201 	tsteq	r2, r1, lsl #4
     eac:	00010101 	andeq	r0, r1, r1, lsl #2
     eb0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
     ff0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1090:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    1094:	00010202 	andeq	r0, r1, r2, lsl #4
    1098:	01020201 	tsteq	r2, r1, lsl #4
    109c:	01020201 	tsteq	r2, r1, lsl #4
    10a0:	01020201 	tsteq	r2, r1, lsl #4
    10a4:	01020201 	tsteq	r2, r1, lsl #4
    10a8:	01020201 	tsteq	r2, r1, lsl #4
    10ac:	01020201 	tsteq	r2, r1, lsl #4
    10b0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1160:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1198:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    11f0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    11f4:	00010202 	andeq	r0, r1, r2, lsl #4
    11f8:	01010100 	mrseq	r0, (UNDEF: 17)
    11fc:	00000101 	andeq	r0, r0, r1, lsl #2
    1200:	01010100 	mrseq	r0, (UNDEF: 17)
    1204:	00000000 	andeq	r0, r0, r0
    1208:	01020201 	tsteq	r2, r1, lsl #4
    120c:	00000101 	andeq	r0, r0, r1, lsl #2
    1210:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    12b0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    12e0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1350:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    1354:	00010201 	andeq	r0, r1, r1, lsl #4
    1358:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1390:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1410:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    1414:	00010202 	andeq	r0, r1, r2, lsl #4
    1418:	01020201 	tsteq	r2, r1, lsl #4
    141c:	01020201 	tsteq	r2, r1, lsl #4
    1420:	01020201 	tsteq	r2, r1, lsl #4
    1424:	01020201 	tsteq	r2, r1, lsl #4
    1428:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1490:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    14f0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    14f4:	00010202 	andeq	r0, r1, r2, lsl #4
    14f8:	01010100 	mrseq	r0, (UNDEF: 17)
    14fc:	00000101 	andeq	r0, r0, r1, lsl #2
    1500:	01010000 	mrseq	r0, (UNDEF: 1)
    1504:	00000000 	andeq	r0, r0, r0
    1508:	02020100 	andeq	r0, r2, #0, 2
    150c:	00000101 	andeq	r0, r0, r1, lsl #2
    1510:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    15e8:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1670:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    1674:	00000001 	andeq	r0, r0, r1
    1678:	01010100 	mrseq	r0, (UNDEF: 17)
	...
    1688:	01010100 	mrseq	r0, (UNDEF: 17)
    168c:	00010101 	andeq	r0, r1, r1, lsl #2
    1690:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    1694:	01020202 	tsteq	r2, r2, lsl #4
    1698:	01010100 	mrseq	r0, (UNDEF: 17)
    169c:	00010202 	andeq	r0, r1, r2, lsl #4
    16a0:	02010000 	andeq	r0, r1, #0
    16a4:	00000102 	andeq	r0, r0, r2, lsl #2
    16a8:	02020100 	andeq	r0, r2, #0, 2
    16ac:	00010101 	andeq	r0, r1, r1, lsl #2
    16b0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    16b4:	01020202 	tsteq	r2, r2, lsl #4
    16b8:	01010100 	mrseq	r0, (UNDEF: 17)
    16bc:	00010101 	andeq	r0, r1, r1, lsl #2
    16c0:	01000000 	mrseq	r0, (UNDEF: 0)
    16c4:	00000101 	andeq	r0, r0, r1, lsl #2
    16c8:	02010000 	andeq	r0, r1, #0
    16cc:	00010202 	andeq	r0, r1, r2, lsl #4
    16d0:	02010100 	andeq	r0, r1, #0, 2
    16d4:	00000102 	andeq	r0, r0, r2, lsl #2
    16d8:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    16dc:	00000102 	andeq	r0, r0, r2, lsl #2
    16e0:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
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
    1798:	02020201 	andeq	r0, r2, #268435456	@ 0x10000000
    179c:	01020202 	tsteq	r2, r2, lsl #4
    17a0:	01010201 	tsteq	r1, r1, lsl #4
    17a4:	00010202 	andeq	r0, r1, r2, lsl #4
    17a8:	00000100 	andeq	r0, r0, r0, lsl #2
    17ac:	00000101 	andeq	r0, r0, r1, lsl #2
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


fx.o:     file format elf32-littlearm


Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


gbfs.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <namecmp>:
   0:	b510      	push	{r4, lr}
   2:	2218      	movs	r2, #24
   4:	f7ff fffe 	bl	0 <memcmp>
   8:	bc10      	pop	{r4}
   a:	bc02      	pop	{r1}
   c:	4708      	bx	r1
   e:	46c0      	nop			@ (mov r8, r8)

00000010 <find_first_gbfs_file>:
  10:	b570      	push	{r4, r5, r6, lr}
  12:	23ff      	movs	r3, #255	@ 0xff
  14:	b084      	sub	sp, #16
  16:	466a      	mov	r2, sp
  18:	4398      	bics	r0, r3
  1a:	4b12      	ldr	r3, [pc, #72]	@ (64 <find_first_gbfs_file+0x54>)
  1c:	cb62      	ldmia	r3!, {r1, r5, r6}
  1e:	c262      	stmia	r2!, {r1, r5, r6}
  20:	781b      	ldrb	r3, [r3, #0]
  22:	7013      	strb	r3, [r2, #0]
  24:	22a0      	movs	r2, #160	@ 0xa0
  26:	466c      	mov	r4, sp
  28:	0512      	lsls	r2, r2, #20
  2a:	4290      	cmp	r0, r2
  2c:	d218      	bcs.n	60 <find_first_gbfs_file+0x50>
  2e:	490e      	ldr	r1, [pc, #56]	@ (68 <find_first_gbfs_file+0x58>)
  30:	e003      	b.n	3a <find_first_gbfs_file+0x2a>
  32:	3001      	adds	r0, #1
  34:	30ff      	adds	r0, #255	@ 0xff
  36:	4290      	cmp	r0, r2
  38:	d212      	bcs.n	60 <find_first_gbfs_file+0x50>
  3a:	6803      	ldr	r3, [r0, #0]
  3c:	428b      	cmp	r3, r1
  3e:	d1f8      	bne.n	32 <find_first_gbfs_file+0x22>
  40:	6845      	ldr	r5, [r0, #4]
  42:	6823      	ldr	r3, [r4, #0]
  44:	429d      	cmp	r5, r3
  46:	d1f4      	bne.n	32 <find_first_gbfs_file+0x22>
  48:	6885      	ldr	r5, [r0, #8]
  4a:	6863      	ldr	r3, [r4, #4]
  4c:	429d      	cmp	r5, r3
  4e:	d1f0      	bne.n	32 <find_first_gbfs_file+0x22>
  50:	68c5      	ldr	r5, [r0, #12]
  52:	68a3      	ldr	r3, [r4, #8]
  54:	429d      	cmp	r5, r3
  56:	d1ec      	bne.n	32 <find_first_gbfs_file+0x22>
  58:	b004      	add	sp, #16
  5a:	bc70      	pop	{r4, r5, r6}
  5c:	bc02      	pop	{r1}
  5e:	4708      	bx	r1
  60:	2000      	movs	r0, #0
  62:	e7f9      	b.n	58 <find_first_gbfs_file+0x48>
  64:	00000000 	andeq	r0, r0, r0
  68:	456e6950 	strbmi	r6, [lr, #-2384]!	@ 0xfffff6b0

0000006c <skip_gbfs_file>:
  6c:	6903      	ldr	r3, [r0, #16]
  6e:	18c0      	adds	r0, r0, r3
  70:	4770      	bx	lr
  72:	46c0      	nop			@ (mov r8, r8)

00000074 <gbfs_get_obj>:
  74:	b5f0      	push	{r4, r5, r6, r7, lr}
  76:	8a86      	ldrh	r6, [r0, #20]
  78:	b089      	sub	sp, #36	@ 0x24
  7a:	8ac7      	ldrh	r7, [r0, #22]
  7c:	1986      	adds	r6, r0, r6
  7e:	0004      	movs	r4, r0
  80:	0015      	movs	r5, r2
  82:	a802      	add	r0, sp, #8
  84:	2218      	movs	r2, #24
  86:	f7ff fffe 	bl	0 <strncpy>
  8a:	4b0a      	ldr	r3, [pc, #40]	@ (b4 <gbfs_get_obj+0x40>)
  8c:	003a      	movs	r2, r7
  8e:	9300      	str	r3, [sp, #0]
  90:	0031      	movs	r1, r6
  92:	2320      	movs	r3, #32
  94:	a802      	add	r0, sp, #8
  96:	f7ff fffe 	bl	0 <bsearch>
  9a:	2800      	cmp	r0, #0
  9c:	d005      	beq.n	aa <gbfs_get_obj+0x36>
  9e:	2d00      	cmp	r5, #0
  a0:	d001      	beq.n	a6 <gbfs_get_obj+0x32>
  a2:	6983      	ldr	r3, [r0, #24]
  a4:	602b      	str	r3, [r5, #0]
  a6:	69c0      	ldr	r0, [r0, #28]
  a8:	1820      	adds	r0, r4, r0
  aa:	b009      	add	sp, #36	@ 0x24
  ac:	bcf0      	pop	{r4, r5, r6, r7}
  ae:	bc02      	pop	{r1}
  b0:	4708      	bx	r1
  b2:	46c0      	nop			@ (mov r8, r8)
  b4:	00000000 	andeq	r0, r0, r0

000000b8 <gbfs_copy_obj>:
  b8:	b5f0      	push	{r4, r5, r6, r7, lr}
  ba:	000c      	movs	r4, r1
  bc:	b089      	sub	sp, #36	@ 0x24
  be:	0011      	movs	r1, r2
  c0:	8aa6      	ldrh	r6, [r4, #20]
  c2:	2218      	movs	r2, #24
  c4:	0005      	movs	r5, r0
  c6:	a802      	add	r0, sp, #8
  c8:	8ae7      	ldrh	r7, [r4, #22]
  ca:	f7ff fffe 	bl	0 <strncpy>
  ce:	4b0b      	ldr	r3, [pc, #44]	@ (fc <gbfs_copy_obj+0x44>)
  d0:	19a6      	adds	r6, r4, r6
  d2:	9300      	str	r3, [sp, #0]
  d4:	003a      	movs	r2, r7
  d6:	2320      	movs	r3, #32
  d8:	0031      	movs	r1, r6
  da:	a802      	add	r0, sp, #8
  dc:	f7ff fffe 	bl	0 <bsearch>
  e0:	2800      	cmp	r0, #0
  e2:	d006      	beq.n	f2 <gbfs_copy_obj+0x3a>
  e4:	69c1      	ldr	r1, [r0, #28]
  e6:	6982      	ldr	r2, [r0, #24]
  e8:	1861      	adds	r1, r4, r1
  ea:	0028      	movs	r0, r5
  ec:	f7ff fffe 	bl	0 <memcpy>
  f0:	0028      	movs	r0, r5
  f2:	b009      	add	sp, #36	@ 0x24
  f4:	bcf0      	pop	{r4, r5, r6, r7}
  f6:	bc02      	pop	{r1}
  f8:	4708      	bx	r1
  fa:	46c0      	nop			@ (mov r8, r8)
  fc:	00000000 	andeq	r0, r0, r0

00000100 <gbfs_get_nth_obj>:
 100:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 102:	8a85      	ldrh	r5, [r0, #20]
 104:	001f      	movs	r7, r3
 106:	014b      	lsls	r3, r1, #5
 108:	18ed      	adds	r5, r5, r3
 10a:	8ac3      	ldrh	r3, [r0, #22]
 10c:	0004      	movs	r4, r0
 10e:	0016      	movs	r6, r2
 110:	1945      	adds	r5, r0, r5
 112:	428b      	cmp	r3, r1
 114:	d911      	bls.n	13a <gbfs_get_nth_obj+0x3a>
 116:	2a00      	cmp	r2, #0
 118:	d006      	beq.n	128 <gbfs_get_nth_obj+0x28>
 11a:	2218      	movs	r2, #24
 11c:	0029      	movs	r1, r5
 11e:	0030      	movs	r0, r6
 120:	f7ff fffe 	bl	0 <strncpy>
 124:	2300      	movs	r3, #0
 126:	7633      	strb	r3, [r6, #24]
 128:	2f00      	cmp	r7, #0
 12a:	d001      	beq.n	130 <gbfs_get_nth_obj+0x30>
 12c:	69ab      	ldr	r3, [r5, #24]
 12e:	603b      	str	r3, [r7, #0]
 130:	69e8      	ldr	r0, [r5, #28]
 132:	1820      	adds	r0, r4, r0
 134:	bcf8      	pop	{r3, r4, r5, r6, r7}
 136:	bc02      	pop	{r1}
 138:	4708      	bx	r1
 13a:	2000      	movs	r0, #0
 13c:	e7fa      	b.n	134 <gbfs_get_nth_obj+0x34>
 13e:	46c0      	nop			@ (mov r8, r8)

00000140 <gbfs_count_objs>:
 140:	2800      	cmp	r0, #0
 142:	d001      	beq.n	148 <gbfs_count_objs+0x8>
 144:	8ac0      	ldrh	r0, [r0, #22]
 146:	4770      	bx	lr
 148:	2000      	movs	r0, #0
 14a:	e7fc      	b.n	146 <gbfs_count_objs+0x6>

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	74686769 	strbtvc	r6, [r8], #-1897	@ 0xfffff897
   4:	53464247 	movtpl	r4, #25159	@ 0x6247
   8:	0a1a0a0d 	beq	682844 <gbfs_count_objs+0x682704>
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


input.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SetInputRepeat>:
   0:	4b01      	ldr	r3, [pc, #4]	@ (8 <hrt_SetInputRepeat+0x8>)
   2:	7018      	strb	r0, [r3, #0]
   4:	7059      	strb	r1, [r3, #1]
   6:	4770      	bx	lr
   8:	00000000 	andeq	r0, r0, r0

0000000c <hrt_ScanKeys>:
   c:	b5f0      	push	{r4, r5, r6, r7, lr}
   e:	4919      	ldr	r1, [pc, #100]	@ (74 <hrt_ScanKeys+0x68>)
  10:	888e      	ldrh	r6, [r1, #4]
  12:	4b19      	ldr	r3, [pc, #100]	@ (78 <hrt_ScanKeys+0x6c>)
  14:	80ce      	strh	r6, [r1, #6]
  16:	881a      	ldrh	r2, [r3, #0]
  18:	43d0      	mvns	r0, r2
  1a:	4032      	ands	r2, r6
  1c:	0592      	lsls	r2, r2, #22
  1e:	0d92      	lsrs	r2, r2, #22
  20:	43d3      	mvns	r3, r2
  22:	880d      	ldrh	r5, [r1, #0]
  24:	4c15      	ldr	r4, [pc, #84]	@ (7c <hrt_ScanKeys+0x70>)
  26:	0580      	lsls	r0, r0, #22
  28:	890f      	ldrh	r7, [r1, #8]
  2a:	0d80      	lsrs	r0, r0, #22
  2c:	4315      	orrs	r5, r2
  2e:	4074      	eors	r4, r6
  30:	884a      	ldrh	r2, [r1, #2]
  32:	4004      	ands	r4, r0
  34:	041b      	lsls	r3, r3, #16
  36:	4327      	orrs	r7, r4
  38:	0c1b      	lsrs	r3, r3, #16
  3a:	4322      	orrs	r2, r4
  3c:	43a5      	bics	r5, r4
  3e:	4c10      	ldr	r4, [pc, #64]	@ (80 <hrt_ScanKeys+0x74>)
  40:	401a      	ands	r2, r3
  42:	403b      	ands	r3, r7
  44:	804a      	strh	r2, [r1, #2]
  46:	8088      	strh	r0, [r1, #4]
  48:	810b      	strh	r3, [r1, #8]
  4a:	800d      	strh	r5, [r1, #0]
  4c:	7822      	ldrb	r2, [r4, #0]
  4e:	4286      	cmp	r6, r0
  50:	d000      	beq.n	54 <hrt_ScanKeys+0x48>
  52:	70a2      	strb	r2, [r4, #2]
  54:	2a00      	cmp	r2, #0
  56:	d009      	beq.n	6c <hrt_ScanKeys+0x60>
  58:	78a2      	ldrb	r2, [r4, #2]
  5a:	3a01      	subs	r2, #1
  5c:	0612      	lsls	r2, r2, #24
  5e:	0e12      	lsrs	r2, r2, #24
  60:	70a2      	strb	r2, [r4, #2]
  62:	d103      	bne.n	6c <hrt_ScanKeys+0x60>
  64:	7862      	ldrb	r2, [r4, #1]
  66:	4318      	orrs	r0, r3
  68:	70a2      	strb	r2, [r4, #2]
  6a:	8108      	strh	r0, [r1, #8]
  6c:	bcf0      	pop	{r4, r5, r6, r7}
  6e:	bc01      	pop	{r0}
  70:	4700      	bx	r0
  72:	46c0      	nop			@ (mov r8, r8)
  74:	00000000 	andeq	r0, r0, r0
  78:	04000130 	streq	r0, [r0], #-304	@ 0xfffffed0
  7c:	000003ff 	strdeq	r0, [r0], -pc	@ <UNPREDICTABLE>
  80:	00000000 	andeq	r0, r0, r0

00000084 <hrt_KeysDownRepeat>:
  84:	2200      	movs	r2, #0
  86:	4b02      	ldr	r3, [pc, #8]	@ (90 <hrt_KeysDownRepeat+0xc>)
  88:	8918      	ldrh	r0, [r3, #8]
  8a:	811a      	strh	r2, [r3, #8]
  8c:	4770      	bx	lr
  8e:	46c0      	nop			@ (mov r8, r8)
  90:	00000000 	andeq	r0, r0, r0

00000094 <hrt_KeysDown>:
  94:	2200      	movs	r2, #0
  96:	4b02      	ldr	r3, [pc, #8]	@ (a0 <hrt_KeysDown+0xc>)
  98:	8858      	ldrh	r0, [r3, #2]
  9a:	805a      	strh	r2, [r3, #2]
  9c:	4770      	bx	lr
  9e:	46c0      	nop			@ (mov r8, r8)
  a0:	00000000 	andeq	r0, r0, r0

000000a4 <hrt_KeysUp>:
  a4:	2200      	movs	r2, #0
  a6:	4b02      	ldr	r3, [pc, #8]	@ (b0 <hrt_KeysUp+0xc>)
  a8:	8818      	ldrh	r0, [r3, #0]
  aa:	801a      	strh	r2, [r3, #0]
  ac:	4770      	bx	lr
  ae:	46c0      	nop			@ (mov r8, r8)
  b0:	00000000 	andeq	r0, r0, r0

000000b4 <hrt_KeysHeld>:
  b4:	4b01      	ldr	r3, [pc, #4]	@ (bc <hrt_KeysHeld+0x8>)
  b6:	8898      	ldrh	r0, [r3, #4]
  b8:	4770      	bx	lr
  ba:	46c0      	nop			@ (mov r8, r8)
  bc:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <__hrt_delay>:
   0:	Address 0x0 is out of bounds.


00000001 <__hrt_repeat>:
   1:	Address 0x1 is out of bounds.


00000002 <__hrt_count>:
   2:	Address 0x2 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


interrupt.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <dummy>:
   0:	4770      	bx	lr
   2:	46c0      	nop			@ (mov r8, r8)

00000004 <hrt_InitIRQ>:
   4:	2200      	movs	r2, #0
   6:	4b12      	ldr	r3, [pc, #72]	@ (50 <hrt_InitIRQ+0x4c>)
   8:	4912      	ldr	r1, [pc, #72]	@ (54 <hrt_InitIRQ+0x50>)
   a:	605a      	str	r2, [r3, #4]
   c:	6019      	str	r1, [r3, #0]
   e:	6099      	str	r1, [r3, #8]
  10:	60da      	str	r2, [r3, #12]
  12:	6119      	str	r1, [r3, #16]
  14:	615a      	str	r2, [r3, #20]
  16:	6199      	str	r1, [r3, #24]
  18:	61da      	str	r2, [r3, #28]
  1a:	6219      	str	r1, [r3, #32]
  1c:	625a      	str	r2, [r3, #36]	@ 0x24
  1e:	6299      	str	r1, [r3, #40]	@ 0x28
  20:	62da      	str	r2, [r3, #44]	@ 0x2c
  22:	6319      	str	r1, [r3, #48]	@ 0x30
  24:	635a      	str	r2, [r3, #52]	@ 0x34
  26:	6399      	str	r1, [r3, #56]	@ 0x38
  28:	63da      	str	r2, [r3, #60]	@ 0x3c
  2a:	6419      	str	r1, [r3, #64]	@ 0x40
  2c:	645a      	str	r2, [r3, #68]	@ 0x44
  2e:	6499      	str	r1, [r3, #72]	@ 0x48
  30:	64da      	str	r2, [r3, #76]	@ 0x4c
  32:	6519      	str	r1, [r3, #80]	@ 0x50
  34:	655a      	str	r2, [r3, #84]	@ 0x54
  36:	6599      	str	r1, [r3, #88]	@ 0x58
  38:	65da      	str	r2, [r3, #92]	@ 0x5c
  3a:	6619      	str	r1, [r3, #96]	@ 0x60
  3c:	665a      	str	r2, [r3, #100]	@ 0x64
  3e:	6699      	str	r1, [r3, #104]	@ 0x68
  40:	66da      	str	r2, [r3, #108]	@ 0x6c
  42:	6719      	str	r1, [r3, #112]	@ 0x70
  44:	675a      	str	r2, [r3, #116]	@ 0x74
  46:	4b04      	ldr	r3, [pc, #16]	@ (58 <hrt_InitIRQ+0x54>)
  48:	4a04      	ldr	r2, [pc, #16]	@ (5c <hrt_InitIRQ+0x58>)
  4a:	6013      	str	r3, [r2, #0]
  4c:	4770      	bx	lr
  4e:	46c0      	nop			@ (mov r8, r8)
	...
  5c:	03007ffc 	movweq	r7, #4092	@ 0xffc

00000060 <hrt_SetIRQ>:
  60:	b510      	push	{r4, lr}
  62:	4b38      	ldr	r3, [pc, #224]	@ (144 <hrt_SetIRQ+0xe4>)
  64:	0002      	movs	r2, r0
  66:	6858      	ldr	r0, [r3, #4]
  68:	2800      	cmp	r0, #0
  6a:	d057      	beq.n	11c <hrt_SetIRQ+0xbc>
  6c:	4290      	cmp	r0, r2
  6e:	d058      	beq.n	122 <hrt_SetIRQ+0xc2>
  70:	68d8      	ldr	r0, [r3, #12]
  72:	2800      	cmp	r0, #0
  74:	d048      	beq.n	108 <hrt_SetIRQ+0xa8>
  76:	4290      	cmp	r0, r2
  78:	d046      	beq.n	108 <hrt_SetIRQ+0xa8>
  7a:	6958      	ldr	r0, [r3, #20]
  7c:	2800      	cmp	r0, #0
  7e:	d045      	beq.n	10c <hrt_SetIRQ+0xac>
  80:	4290      	cmp	r0, r2
  82:	d043      	beq.n	10c <hrt_SetIRQ+0xac>
  84:	69d8      	ldr	r0, [r3, #28]
  86:	2800      	cmp	r0, #0
  88:	d042      	beq.n	110 <hrt_SetIRQ+0xb0>
  8a:	4290      	cmp	r0, r2
  8c:	d040      	beq.n	110 <hrt_SetIRQ+0xb0>
  8e:	6a58      	ldr	r0, [r3, #36]	@ 0x24
  90:	2800      	cmp	r0, #0
  92:	d03f      	beq.n	114 <hrt_SetIRQ+0xb4>
  94:	4282      	cmp	r2, r0
  96:	d03d      	beq.n	114 <hrt_SetIRQ+0xb4>
  98:	6ad8      	ldr	r0, [r3, #44]	@ 0x2c
  9a:	2800      	cmp	r0, #0
  9c:	d03c      	beq.n	118 <hrt_SetIRQ+0xb8>
  9e:	4282      	cmp	r2, r0
  a0:	d03a      	beq.n	118 <hrt_SetIRQ+0xb8>
  a2:	6b58      	ldr	r0, [r3, #52]	@ 0x34
  a4:	2800      	cmp	r0, #0
  a6:	d02d      	beq.n	104 <hrt_SetIRQ+0xa4>
  a8:	4282      	cmp	r2, r0
  aa:	d02b      	beq.n	104 <hrt_SetIRQ+0xa4>
  ac:	6bd8      	ldr	r0, [r3, #60]	@ 0x3c
  ae:	2800      	cmp	r0, #0
  b0:	d039      	beq.n	126 <hrt_SetIRQ+0xc6>
  b2:	4282      	cmp	r2, r0
  b4:	d037      	beq.n	126 <hrt_SetIRQ+0xc6>
  b6:	6c58      	ldr	r0, [r3, #68]	@ 0x44
  b8:	2800      	cmp	r0, #0
  ba:	d036      	beq.n	12a <hrt_SetIRQ+0xca>
  bc:	4282      	cmp	r2, r0
  be:	d034      	beq.n	12a <hrt_SetIRQ+0xca>
  c0:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
  c2:	2800      	cmp	r0, #0
  c4:	d033      	beq.n	12e <hrt_SetIRQ+0xce>
  c6:	4282      	cmp	r2, r0
  c8:	d031      	beq.n	12e <hrt_SetIRQ+0xce>
  ca:	6d58      	ldr	r0, [r3, #84]	@ 0x54
  cc:	2800      	cmp	r0, #0
  ce:	d030      	beq.n	132 <hrt_SetIRQ+0xd2>
  d0:	4282      	cmp	r2, r0
  d2:	d02e      	beq.n	132 <hrt_SetIRQ+0xd2>
  d4:	6dd8      	ldr	r0, [r3, #92]	@ 0x5c
  d6:	2800      	cmp	r0, #0
  d8:	d02d      	beq.n	136 <hrt_SetIRQ+0xd6>
  da:	4282      	cmp	r2, r0
  dc:	d02b      	beq.n	136 <hrt_SetIRQ+0xd6>
  de:	6e58      	ldr	r0, [r3, #100]	@ 0x64
  e0:	2800      	cmp	r0, #0
  e2:	d02a      	beq.n	13a <hrt_SetIRQ+0xda>
  e4:	4282      	cmp	r2, r0
  e6:	d028      	beq.n	13a <hrt_SetIRQ+0xda>
  e8:	6ed8      	ldr	r0, [r3, #108]	@ 0x6c
  ea:	2800      	cmp	r0, #0
  ec:	d027      	beq.n	13e <hrt_SetIRQ+0xde>
  ee:	4282      	cmp	r2, r0
  f0:	d025      	beq.n	13e <hrt_SetIRQ+0xde>
  f2:	240e      	movs	r4, #14
  f4:	00e4      	lsls	r4, r4, #3
  f6:	1918      	adds	r0, r3, r4
  f8:	5119      	str	r1, [r3, r4]
  fa:	191b      	adds	r3, r3, r4
  fc:	605a      	str	r2, [r3, #4]
  fe:	bc10      	pop	{r4}
 100:	bc02      	pop	{r1}
 102:	4708      	bx	r1
 104:	2406      	movs	r4, #6
 106:	e7f5      	b.n	f4 <hrt_SetIRQ+0x94>
 108:	2401      	movs	r4, #1
 10a:	e7f3      	b.n	f4 <hrt_SetIRQ+0x94>
 10c:	2402      	movs	r4, #2
 10e:	e7f1      	b.n	f4 <hrt_SetIRQ+0x94>
 110:	2403      	movs	r4, #3
 112:	e7ef      	b.n	f4 <hrt_SetIRQ+0x94>
 114:	2404      	movs	r4, #4
 116:	e7ed      	b.n	f4 <hrt_SetIRQ+0x94>
 118:	2405      	movs	r4, #5
 11a:	e7eb      	b.n	f4 <hrt_SetIRQ+0x94>
 11c:	0018      	movs	r0, r3
 11e:	2400      	movs	r4, #0
 120:	e7ea      	b.n	f8 <hrt_SetIRQ+0x98>
 122:	2400      	movs	r4, #0
 124:	e7e6      	b.n	f4 <hrt_SetIRQ+0x94>
 126:	2407      	movs	r4, #7
 128:	e7e4      	b.n	f4 <hrt_SetIRQ+0x94>
 12a:	2408      	movs	r4, #8
 12c:	e7e2      	b.n	f4 <hrt_SetIRQ+0x94>
 12e:	2409      	movs	r4, #9
 130:	e7e0      	b.n	f4 <hrt_SetIRQ+0x94>
 132:	240a      	movs	r4, #10
 134:	e7de      	b.n	f4 <hrt_SetIRQ+0x94>
 136:	240b      	movs	r4, #11
 138:	e7dc      	b.n	f4 <hrt_SetIRQ+0x94>
 13a:	240c      	movs	r4, #12
 13c:	e7da      	b.n	f4 <hrt_SetIRQ+0x94>
 13e:	240d      	movs	r4, #13
 140:	e7d8      	b.n	f4 <hrt_SetIRQ+0x94>
 142:	46c0      	nop			@ (mov r8, r8)
 144:	00000000 	andeq	r0, r0, r0

00000148 <hrt_EnableIRQ>:
 148:	07c3      	lsls	r3, r0, #31
 14a:	d504      	bpl.n	156 <hrt_EnableIRQ+0xe>
 14c:	2108      	movs	r1, #8
 14e:	4a0d      	ldr	r2, [pc, #52]	@ (184 <hrt_EnableIRQ+0x3c>)
 150:	8813      	ldrh	r3, [r2, #0]
 152:	430b      	orrs	r3, r1
 154:	8013      	strh	r3, [r2, #0]
 156:	0783      	lsls	r3, r0, #30
 158:	d504      	bpl.n	164 <hrt_EnableIRQ+0x1c>
 15a:	2110      	movs	r1, #16
 15c:	4a09      	ldr	r2, [pc, #36]	@ (184 <hrt_EnableIRQ+0x3c>)
 15e:	8813      	ldrh	r3, [r2, #0]
 160:	430b      	orrs	r3, r1
 162:	8013      	strh	r3, [r2, #0]
 164:	0743      	lsls	r3, r0, #29
 166:	d504      	bpl.n	172 <hrt_EnableIRQ+0x2a>
 168:	2120      	movs	r1, #32
 16a:	4a06      	ldr	r2, [pc, #24]	@ (184 <hrt_EnableIRQ+0x3c>)
 16c:	8813      	ldrh	r3, [r2, #0]
 16e:	430b      	orrs	r3, r1
 170:	8013      	strh	r3, [r2, #0]
 172:	4a05      	ldr	r2, [pc, #20]	@ (188 <hrt_EnableIRQ+0x40>)
 174:	8813      	ldrh	r3, [r2, #0]
 176:	4303      	orrs	r3, r0
 178:	8013      	strh	r3, [r2, #0]
 17a:	2201      	movs	r2, #1
 17c:	4b03      	ldr	r3, [pc, #12]	@ (18c <hrt_EnableIRQ+0x44>)
 17e:	801a      	strh	r2, [r3, #0]
 180:	4770      	bx	lr
 182:	46c0      	nop			@ (mov r8, r8)
 184:	04000004 	streq	r0, [r0], #-4
 188:	04000200 	streq	r0, [r0], #-512	@ 0xfffffe00
 18c:	04000208 	streq	r0, [r0], #-520	@ 0xfffffdf8

00000190 <hrt_ToggleIRQ>:
 190:	07c3      	lsls	r3, r0, #31
 192:	d504      	bpl.n	19e <hrt_ToggleIRQ+0xe>
 194:	2108      	movs	r1, #8
 196:	4a0d      	ldr	r2, [pc, #52]	@ (1cc <hrt_ToggleIRQ+0x3c>)
 198:	8813      	ldrh	r3, [r2, #0]
 19a:	404b      	eors	r3, r1
 19c:	8013      	strh	r3, [r2, #0]
 19e:	0783      	lsls	r3, r0, #30
 1a0:	d504      	bpl.n	1ac <hrt_ToggleIRQ+0x1c>
 1a2:	2110      	movs	r1, #16
 1a4:	4a09      	ldr	r2, [pc, #36]	@ (1cc <hrt_ToggleIRQ+0x3c>)
 1a6:	8813      	ldrh	r3, [r2, #0]
 1a8:	404b      	eors	r3, r1
 1aa:	8013      	strh	r3, [r2, #0]
 1ac:	0743      	lsls	r3, r0, #29
 1ae:	d504      	bpl.n	1ba <hrt_ToggleIRQ+0x2a>
 1b0:	2120      	movs	r1, #32
 1b2:	4a06      	ldr	r2, [pc, #24]	@ (1cc <hrt_ToggleIRQ+0x3c>)
 1b4:	8813      	ldrh	r3, [r2, #0]
 1b6:	404b      	eors	r3, r1
 1b8:	8013      	strh	r3, [r2, #0]
 1ba:	4a05      	ldr	r2, [pc, #20]	@ (1d0 <hrt_ToggleIRQ+0x40>)
 1bc:	8813      	ldrh	r3, [r2, #0]
 1be:	4043      	eors	r3, r0
 1c0:	8013      	strh	r3, [r2, #0]
 1c2:	2201      	movs	r2, #1
 1c4:	4b03      	ldr	r3, [pc, #12]	@ (1d4 <hrt_ToggleIRQ+0x44>)
 1c6:	801a      	strh	r2, [r3, #0]
 1c8:	4770      	bx	lr
 1ca:	46c0      	nop			@ (mov r8, r8)
 1cc:	04000004 	streq	r0, [r0], #-4
 1d0:	04000200 	streq	r0, [r0], #-512	@ 0xfffffe00
 1d4:	04000208 	streq	r0, [r0], #-520	@ 0xfffffdf8

000001d8 <hrt_IsIRQEnabled>:
 1d8:	4b01      	ldr	r3, [pc, #4]	@ (1e0 <hrt_IsIRQEnabled+0x8>)
 1da:	781b      	ldrb	r3, [r3, #0]
 1dc:	4018      	ands	r0, r3
 1de:	4770      	bx	lr
 1e0:	04000200 	streq	r0, [r0], #-512	@ 0xfffffe00

000001e4 <hrt_DisableIRQ>:
 1e4:	07c3      	lsls	r3, r0, #31
 1e6:	d504      	bpl.n	1f2 <hrt_DisableIRQ+0xe>
 1e8:	2108      	movs	r1, #8
 1ea:	4a0d      	ldr	r2, [pc, #52]	@ (220 <hrt_DisableIRQ+0x3c>)
 1ec:	8813      	ldrh	r3, [r2, #0]
 1ee:	438b      	bics	r3, r1
 1f0:	8013      	strh	r3, [r2, #0]
 1f2:	0783      	lsls	r3, r0, #30
 1f4:	d504      	bpl.n	200 <hrt_DisableIRQ+0x1c>
 1f6:	2110      	movs	r1, #16
 1f8:	4a09      	ldr	r2, [pc, #36]	@ (220 <hrt_DisableIRQ+0x3c>)
 1fa:	8813      	ldrh	r3, [r2, #0]
 1fc:	438b      	bics	r3, r1
 1fe:	8013      	strh	r3, [r2, #0]
 200:	0743      	lsls	r3, r0, #29
 202:	d504      	bpl.n	20e <hrt_DisableIRQ+0x2a>
 204:	2120      	movs	r1, #32
 206:	4a06      	ldr	r2, [pc, #24]	@ (220 <hrt_DisableIRQ+0x3c>)
 208:	8813      	ldrh	r3, [r2, #0]
 20a:	438b      	bics	r3, r1
 20c:	8013      	strh	r3, [r2, #0]
 20e:	4a05      	ldr	r2, [pc, #20]	@ (224 <hrt_DisableIRQ+0x40>)
 210:	8813      	ldrh	r3, [r2, #0]
 212:	4383      	bics	r3, r0
 214:	8013      	strh	r3, [r2, #0]
 216:	2201      	movs	r2, #1
 218:	4b03      	ldr	r3, [pc, #12]	@ (228 <hrt_DisableIRQ+0x44>)
 21a:	801a      	strh	r2, [r3, #0]
 21c:	4770      	bx	lr
 21e:	46c0      	nop			@ (mov r8, r8)
 220:	04000004 	streq	r0, [r0], #-4
 224:	04000200 	streq	r0, [r0], #-512	@ 0xfffffe00
 228:	04000208 	streq	r0, [r0], #-520	@ 0xfffffdf8

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


jpg.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <JPEG_IDCT_Columns>:
       0:	2320      	movs	r3, #32
       2:	469c      	mov	ip, r3
       4:	2280      	movs	r2, #128	@ 0x80
       6:	b5f0      	push	{r4, r5, r6, r7, lr}
       8:	46de      	mov	lr, fp
       a:	4657      	mov	r7, sl
       c:	464e      	mov	r6, r9
       e:	4645      	mov	r5, r8
      10:	4484      	add	ip, r0
      12:	4663      	mov	r3, ip
      14:	4693      	mov	fp, r2
      16:	b5e0      	push	{r5, r6, r7, lr}
      18:	b083      	sub	sp, #12
      1a:	9301      	str	r3, [sp, #4]
      1c:	6803      	ldr	r3, [r0, #0]
      1e:	24c0      	movs	r4, #192	@ 0xc0
      20:	6c02      	ldr	r2, [r0, #64]	@ 0x40
      22:	5905      	ldr	r5, [r0, r4]
      24:	1954      	adds	r4, r2, r5
      26:	1b52      	subs	r2, r2, r5
      28:	25b5      	movs	r5, #181	@ 0xb5
      2a:	4659      	mov	r1, fp
      2c:	006d      	lsls	r5, r5, #1
      2e:	4355      	muls	r5, r2
      30:	5841      	ldr	r1, [r0, r1]
      32:	122a      	asrs	r2, r5, #8
      34:	1a5d      	subs	r5, r3, r1
      36:	18cb      	adds	r3, r1, r3
      38:	1b12      	subs	r2, r2, r4
      3a:	1919      	adds	r1, r3, r4
      3c:	468a      	mov	sl, r1
      3e:	18a9      	adds	r1, r5, r2
      40:	468c      	mov	ip, r1
      42:	26e0      	movs	r6, #224	@ 0xe0
      44:	21a0      	movs	r1, #160	@ 0xa0
      46:	6e07      	ldr	r7, [r0, #96]	@ 0x60
      48:	1b1b      	subs	r3, r3, r4
      4a:	1aad      	subs	r5, r5, r2
      4c:	5844      	ldr	r4, [r0, r1]
      4e:	6a02      	ldr	r2, [r0, #32]
      50:	5981      	ldr	r1, [r0, r6]
      52:	9300      	str	r3, [sp, #0]
      54:	1a56      	subs	r6, r2, r1
      56:	193b      	adds	r3, r7, r4
      58:	1851      	adds	r1, r2, r1
      5a:	4699      	mov	r9, r3
      5c:	4688      	mov	r8, r1
      5e:	44c8      	add	r8, r9
      60:	4643      	mov	r3, r8
      62:	1be7      	subs	r7, r4, r7
      64:	19f2      	adds	r2, r6, r7
      66:	0114      	lsls	r4, r2, #4
      68:	1aa4      	subs	r4, r4, r2
      6a:	00a4      	lsls	r4, r4, #2
      6c:	1aa4      	subs	r4, r4, r2
      6e:	00e4      	lsls	r4, r4, #3
      70:	18a4      	adds	r4, r4, r2
      72:	05fa      	lsls	r2, r7, #23
      74:	1bd2      	subs	r2, r2, r7
      76:	0092      	lsls	r2, r2, #2
      78:	1bd2      	subs	r2, r2, r7
      7a:	0092      	lsls	r2, r2, #2
      7c:	1bd2      	subs	r2, r2, r7
      7e:	00d2      	lsls	r2, r2, #3
      80:	19d2      	adds	r2, r2, r7
      82:	0092      	lsls	r2, r2, #2
      84:	1224      	asrs	r4, r4, #8
      86:	1212      	asrs	r2, r2, #8
      88:	1912      	adds	r2, r2, r4
      8a:	1ad2      	subs	r2, r2, r3
      8c:	464b      	mov	r3, r9
      8e:	1ac9      	subs	r1, r1, r3
      90:	0133      	lsls	r3, r6, #4
      92:	4699      	mov	r9, r3
      94:	44b1      	add	r9, r6
      96:	464b      	mov	r3, r9
      98:	009b      	lsls	r3, r3, #2
      9a:	4699      	mov	r9, r3
      9c:	44b1      	add	r9, r6
      9e:	464b      	mov	r3, r9
      a0:	27b5      	movs	r7, #181	@ 0xb5
      a2:	009b      	lsls	r3, r3, #2
      a4:	4699      	mov	r9, r3
      a6:	4653      	mov	r3, sl
      a8:	007f      	lsls	r7, r7, #1
      aa:	434f      	muls	r7, r1
      ac:	4443      	add	r3, r8
      ae:	6003      	str	r3, [r0, #0]
      b0:	4663      	mov	r3, ip
      b2:	1239      	asrs	r1, r7, #8
      b4:	465f      	mov	r7, fp
      b6:	444e      	add	r6, r9
      b8:	1236      	asrs	r6, r6, #8
      ba:	1a89      	subs	r1, r1, r2
      bc:	1b34      	subs	r4, r6, r4
      be:	189e      	adds	r6, r3, r2
      c0:	9b00      	ldr	r3, [sp, #0]
      c2:	6206      	str	r6, [r0, #32]
      c4:	1864      	adds	r4, r4, r1
      c6:	186e      	adds	r6, r5, r1
      c8:	6406      	str	r6, [r0, #64]	@ 0x40
      ca:	1b1e      	subs	r6, r3, r4
      cc:	191b      	adds	r3, r3, r4
      ce:	6606      	str	r6, [r0, #96]	@ 0x60
      d0:	51c3      	str	r3, [r0, r7]
      d2:	4663      	mov	r3, ip
      d4:	1a6d      	subs	r5, r5, r1
      d6:	24c0      	movs	r4, #192	@ 0xc0
      d8:	21a0      	movs	r1, #160	@ 0xa0
      da:	1a9a      	subs	r2, r3, r2
      dc:	5045      	str	r5, [r0, r1]
      de:	4653      	mov	r3, sl
      e0:	5102      	str	r2, [r0, r4]
      e2:	4642      	mov	r2, r8
      e4:	26e0      	movs	r6, #224	@ 0xe0
      e6:	1a9f      	subs	r7, r3, r2
      e8:	0002      	movs	r2, r0
      ea:	9b01      	ldr	r3, [sp, #4]
      ec:	5187      	str	r7, [r0, r6]
      ee:	3004      	adds	r0, #4
      f0:	3284      	adds	r2, #132	@ 0x84
      f2:	4283      	cmp	r3, r0
      f4:	d91d      	bls.n	132 <JPEG_IDCT_Columns+0x132>
      f6:	6803      	ldr	r3, [r0, #0]
      f8:	2b00      	cmp	r3, #0
      fa:	d190      	bne.n	1e <JPEG_IDCT_Columns+0x1e>
      fc:	6a01      	ldr	r1, [r0, #32]
      fe:	2900      	cmp	r1, #0
     100:	d18d      	bne.n	1e <JPEG_IDCT_Columns+0x1e>
     102:	6c03      	ldr	r3, [r0, #64]	@ 0x40
     104:	2b00      	cmp	r3, #0
     106:	d11d      	bne.n	144 <JPEG_IDCT_Columns+0x144>
     108:	6e01      	ldr	r1, [r0, #96]	@ 0x60
     10a:	2900      	cmp	r1, #0
     10c:	d187      	bne.n	1e <JPEG_IDCT_Columns+0x1e>
     10e:	6813      	ldr	r3, [r2, #0]
     110:	2b00      	cmp	r3, #0
     112:	d117      	bne.n	144 <JPEG_IDCT_Columns+0x144>
     114:	6a11      	ldr	r1, [r2, #32]
     116:	2900      	cmp	r1, #0
     118:	d181      	bne.n	1e <JPEG_IDCT_Columns+0x1e>
     11a:	6c13      	ldr	r3, [r2, #64]	@ 0x40
     11c:	2b00      	cmp	r3, #0
     11e:	d111      	bne.n	144 <JPEG_IDCT_Columns+0x144>
     120:	6e11      	ldr	r1, [r2, #96]	@ 0x60
     122:	3204      	adds	r2, #4
     124:	2900      	cmp	r1, #0
     126:	d000      	beq.n	12a <JPEG_IDCT_Columns+0x12a>
     128:	e779      	b.n	1e <JPEG_IDCT_Columns+0x1e>
     12a:	9b01      	ldr	r3, [sp, #4]
     12c:	3004      	adds	r0, #4
     12e:	4283      	cmp	r3, r0
     130:	d8e1      	bhi.n	f6 <JPEG_IDCT_Columns+0xf6>
     132:	b003      	add	sp, #12
     134:	bcf0      	pop	{r4, r5, r6, r7}
     136:	46bb      	mov	fp, r7
     138:	46b2      	mov	sl, r6
     13a:	46a9      	mov	r9, r5
     13c:	46a0      	mov	r8, r4
     13e:	bcf0      	pop	{r4, r5, r6, r7}
     140:	bc01      	pop	{r0}
     142:	4700      	bx	r0
     144:	2300      	movs	r3, #0
     146:	e76a      	b.n	1e <JPEG_IDCT_Columns+0x1e>

00000148 <JPEG_IDCT_Rows>:
     148:	b5f0      	push	{r4, r5, r6, r7, lr}
     14a:	46de      	mov	lr, fp
     14c:	4657      	mov	r7, sl
     14e:	464e      	mov	r6, r9
     150:	4645      	mov	r5, r8
     152:	b5e0      	push	{r5, r6, r7, lr}
     154:	1c43      	adds	r3, r0, #1
     156:	b083      	sub	sp, #12
     158:	33ff      	adds	r3, #255	@ 0xff
     15a:	9201      	str	r2, [sp, #4]
     15c:	9300      	str	r3, [sp, #0]
     15e:	6903      	ldr	r3, [r0, #16]
     160:	6804      	ldr	r4, [r0, #0]
     162:	6985      	ldr	r5, [r0, #24]
     164:	18e6      	adds	r6, r4, r3
     166:	1ae4      	subs	r4, r4, r3
     168:	6883      	ldr	r3, [r0, #8]
     16a:	195a      	adds	r2, r3, r5
     16c:	1b5b      	subs	r3, r3, r5
     16e:	25b5      	movs	r5, #181	@ 0xb5
     170:	006d      	lsls	r5, r5, #1
     172:	435d      	muls	r5, r3
     174:	122b      	asrs	r3, r5, #8
     176:	1a9b      	subs	r3, r3, r2
     178:	6947      	ldr	r7, [r0, #20]
     17a:	18b5      	adds	r5, r6, r2
     17c:	1ab6      	subs	r6, r6, r2
     17e:	18e2      	adds	r2, r4, r3
     180:	1ae4      	subs	r4, r4, r3
     182:	68c3      	ldr	r3, [r0, #12]
     184:	4691      	mov	r9, r2
     186:	18fa      	adds	r2, r7, r3
     188:	4693      	mov	fp, r2
     18a:	1aff      	subs	r7, r7, r3
     18c:	6842      	ldr	r2, [r0, #4]
     18e:	69c3      	ldr	r3, [r0, #28]
     190:	46a8      	mov	r8, r5
     192:	18d5      	adds	r5, r2, r3
     194:	46aa      	mov	sl, r5
     196:	1ad3      	subs	r3, r2, r3
     198:	469c      	mov	ip, r3
     19a:	18fb      	adds	r3, r7, r3
     19c:	011a      	lsls	r2, r3, #4
     19e:	1ad2      	subs	r2, r2, r3
     1a0:	0092      	lsls	r2, r2, #2
     1a2:	1ad2      	subs	r2, r2, r3
     1a4:	00d2      	lsls	r2, r2, #3
     1a6:	18d2      	adds	r2, r2, r3
     1a8:	05fb      	lsls	r3, r7, #23
     1aa:	1bdb      	subs	r3, r3, r7
     1ac:	009b      	lsls	r3, r3, #2
     1ae:	1bdb      	subs	r3, r3, r7
     1b0:	009b      	lsls	r3, r3, #2
     1b2:	1bdb      	subs	r3, r3, r7
     1b4:	44da      	add	sl, fp
     1b6:	00db      	lsls	r3, r3, #3
     1b8:	19db      	adds	r3, r3, r7
     1ba:	4657      	mov	r7, sl
     1bc:	009b      	lsls	r3, r3, #2
     1be:	1212      	asrs	r2, r2, #8
     1c0:	121b      	asrs	r3, r3, #8
     1c2:	189b      	adds	r3, r3, r2
     1c4:	1bdb      	subs	r3, r3, r7
     1c6:	465f      	mov	r7, fp
     1c8:	1bed      	subs	r5, r5, r7
     1ca:	27b5      	movs	r7, #181	@ 0xb5
     1cc:	007f      	lsls	r7, r7, #1
     1ce:	436f      	muls	r7, r5
     1d0:	123d      	asrs	r5, r7, #8
     1d2:	4667      	mov	r7, ip
     1d4:	013f      	lsls	r7, r7, #4
     1d6:	4467      	add	r7, ip
     1d8:	00bf      	lsls	r7, r7, #2
     1da:	4467      	add	r7, ip
     1dc:	00bf      	lsls	r7, r7, #2
     1de:	4467      	add	r7, ip
     1e0:	123f      	asrs	r7, r7, #8
     1e2:	1abf      	subs	r7, r7, r2
     1e4:	4642      	mov	r2, r8
     1e6:	4452      	add	r2, sl
     1e8:	1312      	asrs	r2, r2, #12
     1ea:	700a      	strb	r2, [r1, #0]
     1ec:	464a      	mov	r2, r9
     1ee:	18d2      	adds	r2, r2, r3
     1f0:	1aed      	subs	r5, r5, r3
     1f2:	1312      	asrs	r2, r2, #12
     1f4:	704a      	strb	r2, [r1, #1]
     1f6:	1962      	adds	r2, r4, r5
     1f8:	197f      	adds	r7, r7, r5
     1fa:	1312      	asrs	r2, r2, #12
     1fc:	708a      	strb	r2, [r1, #2]
     1fe:	1bf2      	subs	r2, r6, r7
     200:	1312      	asrs	r2, r2, #12
     202:	70ca      	strb	r2, [r1, #3]
     204:	464a      	mov	r2, r9
     206:	1ad3      	subs	r3, r2, r3
     208:	131b      	asrs	r3, r3, #12
     20a:	718b      	strb	r3, [r1, #6]
     20c:	4652      	mov	r2, sl
     20e:	4643      	mov	r3, r8
     210:	1a9b      	subs	r3, r3, r2
     212:	131b      	asrs	r3, r3, #12
     214:	71cb      	strb	r3, [r1, #7]
     216:	9b01      	ldr	r3, [sp, #4]
     218:	469c      	mov	ip, r3
     21a:	19f6      	adds	r6, r6, r7
     21c:	1b64      	subs	r4, r4, r5
     21e:	9b00      	ldr	r3, [sp, #0]
     220:	1336      	asrs	r6, r6, #12
     222:	1324      	asrs	r4, r4, #12
     224:	3020      	adds	r0, #32
     226:	710e      	strb	r6, [r1, #4]
     228:	714c      	strb	r4, [r1, #5]
     22a:	4461      	add	r1, ip
     22c:	4298      	cmp	r0, r3
     22e:	d196      	bne.n	15e <JPEG_IDCT_Rows+0x16>
     230:	b003      	add	sp, #12
     232:	bcf0      	pop	{r4, r5, r6, r7}
     234:	46bb      	mov	fp, r7
     236:	46b2      	mov	sl, r6
     238:	46a9      	mov	r9, r5
     23a:	46a0      	mov	r8, r4
     23c:	bcf0      	pop	{r4, r5, r6, r7}
     23e:	bc01      	pop	{r0}
     240:	4700      	bx	r0
     242:	46c0      	nop			@ (mov r8, r8)

00000244 <JPEG_IDCT>:
     244:	b570      	push	{r4, r5, r6, lr}
     246:	000d      	movs	r5, r1
     248:	0016      	movs	r6, r2
     24a:	0004      	movs	r4, r0
     24c:	f7ff fed8 	bl	0 <JPEG_IDCT_Columns>
     250:	0032      	movs	r2, r6
     252:	0029      	movs	r1, r5
     254:	0020      	movs	r0, r4
     256:	f7ff ff77 	bl	148 <JPEG_IDCT_Rows>
     25a:	bc70      	pop	{r4, r5, r6}
     25c:	bc01      	pop	{r0}
     25e:	4700      	bx	r0

00000260 <JPEG_FrameHeader_Read>:
     260:	b5f0      	push	{r4, r5, r6, r7, lr}
     262:	2407      	movs	r4, #7
     264:	680b      	ldr	r3, [r1, #0]
     266:	8002      	strh	r2, [r0, #0]
     268:	3240      	adds	r2, #64	@ 0x40
     26a:	0412      	lsls	r2, r2, #16
     26c:	0c12      	lsrs	r2, r2, #16
     26e:	4294      	cmp	r4, r2
     270:	4192      	sbcs	r2, r2
     272:	4252      	negs	r2, r2
     274:	6042      	str	r2, [r0, #4]
     276:	2201      	movs	r2, #1
     278:	001e      	movs	r6, r3
     27a:	7202      	strb	r2, [r0, #8]
     27c:	789a      	ldrb	r2, [r3, #2]
     27e:	7242      	strb	r2, [r0, #9]
     280:	791a      	ldrb	r2, [r3, #4]
     282:	78dc      	ldrb	r4, [r3, #3]
     284:	0212      	lsls	r2, r2, #8
     286:	4314      	orrs	r4, r2
     288:	0224      	lsls	r4, r4, #8
     28a:	0a12      	lsrs	r2, r2, #8
     28c:	4322      	orrs	r2, r4
     28e:	8142      	strh	r2, [r0, #10]
     290:	799a      	ldrb	r2, [r3, #6]
     292:	795c      	ldrb	r4, [r3, #5]
     294:	0212      	lsls	r2, r2, #8
     296:	4314      	orrs	r4, r2
     298:	0224      	lsls	r4, r4, #8
     29a:	0a12      	lsrs	r2, r2, #8
     29c:	4322      	orrs	r2, r4
     29e:	8182      	strh	r2, [r0, #12]
     2a0:	79da      	ldrb	r2, [r3, #7]
     2a2:	3608      	adds	r6, #8
     2a4:	6202      	str	r2, [r0, #32]
     2a6:	2a00      	cmp	r2, #0
     2a8:	d02d      	beq.n	306 <JPEG_FrameHeader_Read+0xa6>
     2aa:	7a1c      	ldrb	r4, [r3, #8]
     2ac:	7384      	strb	r4, [r0, #14]
     2ae:	7a5c      	ldrb	r4, [r3, #9]
     2b0:	0925      	lsrs	r5, r4, #4
     2b2:	73c5      	strb	r5, [r0, #15]
     2b4:	250f      	movs	r5, #15
     2b6:	402c      	ands	r4, r5
     2b8:	7404      	strb	r4, [r0, #16]
     2ba:	7a9c      	ldrb	r4, [r3, #10]
     2bc:	7444      	strb	r4, [r0, #17]
     2be:	2a01      	cmp	r2, #1
     2c0:	d01e      	beq.n	300 <JPEG_FrameHeader_Read+0xa0>
     2c2:	7adc      	ldrb	r4, [r3, #11]
     2c4:	7484      	strb	r4, [r0, #18]
     2c6:	7b1c      	ldrb	r4, [r3, #12]
     2c8:	0927      	lsrs	r7, r4, #4
     2ca:	402c      	ands	r4, r5
     2cc:	74c7      	strb	r7, [r0, #19]
     2ce:	7504      	strb	r4, [r0, #20]
     2d0:	7b5c      	ldrb	r4, [r3, #13]
     2d2:	7544      	strb	r4, [r0, #21]
     2d4:	2a02      	cmp	r2, #2
     2d6:	d013      	beq.n	300 <JPEG_FrameHeader_Read+0xa0>
     2d8:	7b9c      	ldrb	r4, [r3, #14]
     2da:	7584      	strb	r4, [r0, #22]
     2dc:	7bdc      	ldrb	r4, [r3, #15]
     2de:	0927      	lsrs	r7, r4, #4
     2e0:	402c      	ands	r4, r5
     2e2:	75c7      	strb	r7, [r0, #23]
     2e4:	7604      	strb	r4, [r0, #24]
     2e6:	7c1c      	ldrb	r4, [r3, #16]
     2e8:	7644      	strb	r4, [r0, #25]
     2ea:	2a03      	cmp	r2, #3
     2ec:	d008      	beq.n	300 <JPEG_FrameHeader_Read+0xa0>
     2ee:	7c5c      	ldrb	r4, [r3, #17]
     2f0:	7684      	strb	r4, [r0, #26]
     2f2:	7c9c      	ldrb	r4, [r3, #18]
     2f4:	0927      	lsrs	r7, r4, #4
     2f6:	4025      	ands	r5, r4
     2f8:	76c7      	strb	r7, [r0, #27]
     2fa:	7705      	strb	r5, [r0, #28]
     2fc:	7cdb      	ldrb	r3, [r3, #19]
     2fe:	7743      	strb	r3, [r0, #29]
     300:	0053      	lsls	r3, r2, #1
     302:	189b      	adds	r3, r3, r2
     304:	18f6      	adds	r6, r6, r3
     306:	2001      	movs	r0, #1
     308:	600e      	str	r6, [r1, #0]
     30a:	bcf0      	pop	{r4, r5, r6, r7}
     30c:	bc02      	pop	{r1}
     30e:	4708      	bx	r1

00000310 <JPEG_ScanHeader_Read>:
     310:	b5f0      	push	{r4, r5, r6, r7, lr}
     312:	680b      	ldr	r3, [r1, #0]
     314:	789a      	ldrb	r2, [r3, #2]
     316:	0056      	lsls	r6, r2, #1
     318:	18b6      	adds	r6, r6, r2
     31a:	1986      	adds	r6, r0, r6
     31c:	1cdc      	adds	r4, r3, #3
     31e:	60c2      	str	r2, [r0, #12]
     320:	0003      	movs	r3, r0
     322:	42b0      	cmp	r0, r6
     324:	d20b      	bcs.n	33e <JPEG_ScanHeader_Read+0x2e>
     326:	270f      	movs	r7, #15
     328:	7825      	ldrb	r5, [r4, #0]
     32a:	701d      	strb	r5, [r3, #0]
     32c:	7862      	ldrb	r2, [r4, #1]
     32e:	0915      	lsrs	r5, r2, #4
     330:	403a      	ands	r2, r7
     332:	705d      	strb	r5, [r3, #1]
     334:	709a      	strb	r2, [r3, #2]
     336:	3303      	adds	r3, #3
     338:	3402      	adds	r4, #2
     33a:	429e      	cmp	r6, r3
     33c:	d8f4      	bhi.n	328 <JPEG_ScanHeader_Read+0x18>
     33e:	7823      	ldrb	r3, [r4, #0]
     340:	7403      	strb	r3, [r0, #16]
     342:	7863      	ldrb	r3, [r4, #1]
     344:	7443      	strb	r3, [r0, #17]
     346:	78a2      	ldrb	r2, [r4, #2]
     348:	0913      	lsrs	r3, r2, #4
     34a:	7483      	strb	r3, [r0, #18]
     34c:	230f      	movs	r3, #15
     34e:	3403      	adds	r4, #3
     350:	4013      	ands	r3, r2
     352:	74c3      	strb	r3, [r0, #19]
     354:	2001      	movs	r0, #1
     356:	600c      	str	r4, [r1, #0]
     358:	bcf0      	pop	{r4, r5, r6, r7}
     35a:	bc02      	pop	{r1}
     35c:	4708      	bx	r1
     35e:	46c0      	nop			@ (mov r8, r8)

00000360 <JPEG_Decoder_ReadHeaders>:
     360:	b5f0      	push	{r4, r5, r6, r7, lr}
     362:	4657      	mov	r7, sl
     364:	464e      	mov	r6, r9
     366:	4645      	mov	r5, r8
     368:	46de      	mov	lr, fp
     36a:	b5e0      	push	{r5, r6, r7, lr}
     36c:	b08b      	sub	sp, #44	@ 0x2c
     36e:	0003      	movs	r3, r0
     370:	9006      	str	r0, [sp, #24]
     372:	2084      	movs	r0, #132	@ 0x84
     374:	2200      	movs	r2, #0
     376:	00c0      	lsls	r0, r0, #3
     378:	680d      	ldr	r5, [r1, #0]
     37a:	501a      	str	r2, [r3, r0]
     37c:	48cd      	ldr	r0, [pc, #820]	@ (6b4 <JPEG_Decoder_ReadHeaders+0x354>)
     37e:	469c      	mov	ip, r3
     380:	000f      	movs	r7, r1
     382:	0006      	movs	r6, r0
     384:	4acc      	ldr	r2, [pc, #816]	@ (6b8 <JPEG_Decoder_ReadHeaders+0x358>)
     386:	3502      	adds	r5, #2
     388:	4462      	add	r2, ip
     38a:	786b      	ldrb	r3, [r5, #1]
     38c:	7828      	ldrb	r0, [r5, #0]
     38e:	021b      	lsls	r3, r3, #8
     390:	4318      	orrs	r0, r3
     392:	0a19      	lsrs	r1, r3, #8
     394:	0200      	lsls	r0, r0, #8
     396:	4301      	orrs	r1, r0
     398:	2080      	movs	r0, #128	@ 0x80
     39a:	03c0      	lsls	r0, r0, #15
     39c:	4684      	mov	ip, r0
     39e:	0409      	lsls	r1, r1, #16
     3a0:	4461      	add	r1, ip
     3a2:	002b      	movs	r3, r5
     3a4:	0c09      	lsrs	r1, r1, #16
     3a6:	3502      	adds	r5, #2
     3a8:	293e      	cmp	r1, #62	@ 0x3e
     3aa:	d8ee      	bhi.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     3ac:	0089      	lsls	r1, r1, #2
     3ae:	5871      	ldr	r1, [r6, r1]
     3b0:	468f      	mov	pc, r1
     3b2:	786b      	ldrb	r3, [r5, #1]
     3b4:	7829      	ldrb	r1, [r5, #0]
     3b6:	021b      	lsls	r3, r3, #8
     3b8:	4319      	orrs	r1, r3
     3ba:	0209      	lsls	r1, r1, #8
     3bc:	0a1b      	lsrs	r3, r3, #8
     3be:	430b      	orrs	r3, r1
     3c0:	041b      	lsls	r3, r3, #16
     3c2:	0c1b      	lsrs	r3, r3, #16
     3c4:	18ed      	adds	r5, r5, r3
     3c6:	e7e0      	b.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     3c8:	2484      	movs	r4, #132	@ 0x84
     3ca:	78e9      	ldrb	r1, [r5, #3]
     3cc:	78a8      	ldrb	r0, [r5, #2]
     3ce:	0209      	lsls	r1, r1, #8
     3d0:	4308      	orrs	r0, r1
     3d2:	0200      	lsls	r0, r0, #8
     3d4:	0a09      	lsrs	r1, r1, #8
     3d6:	4301      	orrs	r1, r0
     3d8:	0409      	lsls	r1, r1, #16
     3da:	9806      	ldr	r0, [sp, #24]
     3dc:	0c09      	lsrs	r1, r1, #16
     3de:	00e4      	lsls	r4, r4, #3
     3e0:	5101      	str	r1, [r0, r4]
     3e2:	1d9d      	adds	r5, r3, #6
     3e4:	e7d1      	b.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     3e6:	7869      	ldrb	r1, [r5, #1]
     3e8:	7828      	ldrb	r0, [r5, #0]
     3ea:	0209      	lsls	r1, r1, #8
     3ec:	4308      	orrs	r0, r1
     3ee:	0200      	lsls	r0, r0, #8
     3f0:	0a09      	lsrs	r1, r1, #8
     3f2:	4301      	orrs	r1, r0
     3f4:	0409      	lsls	r1, r1, #16
     3f6:	0c09      	lsrs	r1, r1, #16
     3f8:	1869      	adds	r1, r5, r1
     3fa:	1d1d      	adds	r5, r3, #4
     3fc:	9107      	str	r1, [sp, #28]
     3fe:	428d      	cmp	r5, r1
     400:	d2c3      	bcs.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     402:	0019      	movs	r1, r3
     404:	3305      	adds	r3, #5
     406:	9302      	str	r3, [sp, #8]
     408:	4bac      	ldr	r3, [pc, #688]	@ (6bc <JPEG_Decoder_ReadHeaders+0x35c>)
     40a:	9308      	str	r3, [sp, #32]
     40c:	4bac      	ldr	r3, [pc, #688]	@ (6c0 <JPEG_Decoder_ReadHeaders+0x360>)
     40e:	3145      	adds	r1, #69	@ 0x45
     410:	9501      	str	r5, [sp, #4]
     412:	9103      	str	r1, [sp, #12]
     414:	001d      	movs	r5, r3
     416:	0031      	movs	r1, r6
     418:	4693      	mov	fp, r2
     41a:	9709      	str	r7, [sp, #36]	@ 0x24
     41c:	220f      	movs	r2, #15
     41e:	9b01      	ldr	r3, [sp, #4]
     420:	781b      	ldrb	r3, [r3, #0]
     422:	4013      	ands	r3, r2
     424:	9a06      	ldr	r2, [sp, #24]
     426:	4694      	mov	ip, r2
     428:	021b      	lsls	r3, r3, #8
     42a:	3320      	adds	r3, #32
     42c:	4463      	add	r3, ip
     42e:	001c      	movs	r4, r3
     430:	9a02      	ldr	r2, [sp, #8]
     432:	9e03      	ldr	r6, [sp, #12]
     434:	7810      	ldrb	r0, [r2, #0]
     436:	3201      	adds	r2, #1
     438:	0200      	lsls	r0, r0, #8
     43a:	c401      	stmia	r4!, {r0}
     43c:	42b2      	cmp	r2, r6
     43e:	d1f9      	bne.n	434 <JPEG_Decoder_ReadHeaders+0xd4>
     440:	20d0      	movs	r0, #208	@ 0xd0
     442:	30ff      	adds	r0, #255	@ 0xff
     444:	4682      	mov	sl, r0
     446:	202e      	movs	r0, #46	@ 0x2e
     448:	30ff      	adds	r0, #255	@ 0xff
     44a:	4681      	mov	r9, r0
     44c:	30bf      	adds	r0, #191	@ 0xbf
     44e:	24a7      	movs	r4, #167	@ 0xa7
     450:	4680      	mov	r8, r0
     452:	2064      	movs	r0, #100	@ 0x64
     454:	2680      	movs	r6, #128	@ 0x80
     456:	9a01      	ldr	r2, [sp, #4]
     458:	0064      	lsls	r4, r4, #1
     45a:	3241      	adds	r2, #65	@ 0x41
     45c:	30ff      	adds	r0, #255	@ 0xff
     45e:	9201      	str	r2, [sp, #4]
     460:	46a4      	mov	ip, r4
     462:	0007      	movs	r7, r0
     464:	9a08      	ldr	r2, [sp, #32]
     466:	9405      	str	r4, [sp, #20]
     468:	9104      	str	r1, [sp, #16]
     46a:	0076      	lsls	r6, r6, #1
     46c:	e01b      	b.n	4a6 <JPEG_Decoder_ReadHeaders+0x146>
     46e:	7811      	ldrb	r1, [r2, #0]
     470:	0089      	lsls	r1, r1, #2
     472:	594e      	ldr	r6, [r1, r5]
     474:	7851      	ldrb	r1, [r2, #1]
     476:	0089      	lsls	r1, r1, #2
     478:	594f      	ldr	r7, [r1, r5]
     47a:	7891      	ldrb	r1, [r2, #2]
     47c:	0089      	lsls	r1, r1, #2
     47e:	5948      	ldr	r0, [r1, r5]
     480:	78d1      	ldrb	r1, [r2, #3]
     482:	0089      	lsls	r1, r1, #2
     484:	594c      	ldr	r4, [r1, r5]
     486:	7911      	ldrb	r1, [r2, #4]
     488:	0089      	lsls	r1, r1, #2
     48a:	5949      	ldr	r1, [r1, r5]
     48c:	4688      	mov	r8, r1
     48e:	7951      	ldrb	r1, [r2, #5]
     490:	0089      	lsls	r1, r1, #2
     492:	5949      	ldr	r1, [r1, r5]
     494:	468c      	mov	ip, r1
     496:	7991      	ldrb	r1, [r2, #6]
     498:	0089      	lsls	r1, r1, #2
     49a:	5949      	ldr	r1, [r1, r5]
     49c:	4689      	mov	r9, r1
     49e:	79d1      	ldrb	r1, [r2, #7]
     4a0:	0089      	lsls	r1, r1, #2
     4a2:	5949      	ldr	r1, [r1, r5]
     4a4:	468a      	mov	sl, r1
     4a6:	6819      	ldr	r1, [r3, #0]
     4a8:	4371      	muls	r1, r6
     4aa:	1209      	asrs	r1, r1, #8
     4ac:	6019      	str	r1, [r3, #0]
     4ae:	6859      	ldr	r1, [r3, #4]
     4b0:	4379      	muls	r1, r7
     4b2:	1209      	asrs	r1, r1, #8
     4b4:	6059      	str	r1, [r3, #4]
     4b6:	6899      	ldr	r1, [r3, #8]
     4b8:	4341      	muls	r1, r0
     4ba:	1209      	asrs	r1, r1, #8
     4bc:	6099      	str	r1, [r3, #8]
     4be:	68d9      	ldr	r1, [r3, #12]
     4c0:	4361      	muls	r1, r4
     4c2:	1209      	asrs	r1, r1, #8
     4c4:	60d9      	str	r1, [r3, #12]
     4c6:	6919      	ldr	r1, [r3, #16]
     4c8:	0008      	movs	r0, r1
     4ca:	4641      	mov	r1, r8
     4cc:	4341      	muls	r1, r0
     4ce:	1209      	asrs	r1, r1, #8
     4d0:	6119      	str	r1, [r3, #16]
     4d2:	6959      	ldr	r1, [r3, #20]
     4d4:	0008      	movs	r0, r1
     4d6:	4661      	mov	r1, ip
     4d8:	4341      	muls	r1, r0
     4da:	1209      	asrs	r1, r1, #8
     4dc:	6159      	str	r1, [r3, #20]
     4de:	6999      	ldr	r1, [r3, #24]
     4e0:	0008      	movs	r0, r1
     4e2:	4649      	mov	r1, r9
     4e4:	4341      	muls	r1, r0
     4e6:	1209      	asrs	r1, r1, #8
     4e8:	6199      	str	r1, [r3, #24]
     4ea:	69d9      	ldr	r1, [r3, #28]
     4ec:	0008      	movs	r0, r1
     4ee:	4651      	mov	r1, sl
     4f0:	4341      	muls	r1, r0
     4f2:	1209      	asrs	r1, r1, #8
     4f4:	61d9      	str	r1, [r3, #28]
     4f6:	4973      	ldr	r1, [pc, #460]	@ (6c4 <JPEG_Decoder_ReadHeaders+0x364>)
     4f8:	3208      	adds	r2, #8
     4fa:	3320      	adds	r3, #32
     4fc:	428a      	cmp	r2, r1
     4fe:	d1b6      	bne.n	46e <JPEG_Decoder_ReadHeaders+0x10e>
     500:	9b03      	ldr	r3, [sp, #12]
     502:	3341      	adds	r3, #65	@ 0x41
     504:	9303      	str	r3, [sp, #12]
     506:	9b02      	ldr	r3, [sp, #8]
     508:	3341      	adds	r3, #65	@ 0x41
     50a:	9302      	str	r3, [sp, #8]
     50c:	9a07      	ldr	r2, [sp, #28]
     50e:	9b01      	ldr	r3, [sp, #4]
     510:	9904      	ldr	r1, [sp, #16]
     512:	4293      	cmp	r3, r2
     514:	d382      	bcc.n	41c <JPEG_Decoder_ReadHeaders+0xbc>
     516:	001d      	movs	r5, r3
     518:	000e      	movs	r6, r1
     51a:	465a      	mov	r2, fp
     51c:	9f09      	ldr	r7, [sp, #36]	@ 0x24
     51e:	e734      	b.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     520:	2289      	movs	r2, #137	@ 0x89
     522:	00d2      	lsls	r2, r2, #3
     524:	4694      	mov	ip, r2
     526:	78a8      	ldrb	r0, [r5, #2]
     528:	9c06      	ldr	r4, [sp, #24]
     52a:	0045      	lsls	r5, r0, #1
     52c:	4464      	add	r4, ip
     52e:	182d      	adds	r5, r5, r0
     530:	1965      	adds	r5, r4, r5
     532:	0039      	movs	r1, r7
     534:	0022      	movs	r2, r4
     536:	60e0      	str	r0, [r4, #12]
     538:	3305      	adds	r3, #5
     53a:	42ac      	cmp	r4, r5
     53c:	d20b      	bcs.n	556 <JPEG_Decoder_ReadHeaders+0x1f6>
     53e:	260f      	movs	r6, #15
     540:	781f      	ldrb	r7, [r3, #0]
     542:	7017      	strb	r7, [r2, #0]
     544:	7858      	ldrb	r0, [r3, #1]
     546:	0907      	lsrs	r7, r0, #4
     548:	4030      	ands	r0, r6
     54a:	7057      	strb	r7, [r2, #1]
     54c:	7090      	strb	r0, [r2, #2]
     54e:	3203      	adds	r2, #3
     550:	3302      	adds	r3, #2
     552:	4295      	cmp	r5, r2
     554:	d8f4      	bhi.n	540 <JPEG_Decoder_ReadHeaders+0x1e0>
     556:	781a      	ldrb	r2, [r3, #0]
     558:	7422      	strb	r2, [r4, #16]
     55a:	785a      	ldrb	r2, [r3, #1]
     55c:	7462      	strb	r2, [r4, #17]
     55e:	7898      	ldrb	r0, [r3, #2]
     560:	0902      	lsrs	r2, r0, #4
     562:	74a2      	strb	r2, [r4, #18]
     564:	220f      	movs	r2, #15
     566:	4002      	ands	r2, r0
     568:	2001      	movs	r0, #1
     56a:	3303      	adds	r3, #3
     56c:	74e2      	strb	r2, [r4, #19]
     56e:	600b      	str	r3, [r1, #0]
     570:	b00b      	add	sp, #44	@ 0x2c
     572:	bcf0      	pop	{r4, r5, r6, r7}
     574:	46bb      	mov	fp, r7
     576:	46b2      	mov	sl, r6
     578:	46a9      	mov	r9, r5
     57a:	46a0      	mov	r8, r4
     57c:	bcf0      	pop	{r4, r5, r6, r7}
     57e:	bc02      	pop	{r1}
     580:	4708      	bx	r1
     582:	7869      	ldrb	r1, [r5, #1]
     584:	7828      	ldrb	r0, [r5, #0]
     586:	0209      	lsls	r1, r1, #8
     588:	4308      	orrs	r0, r1
     58a:	0a0c      	lsrs	r4, r1, #8
     58c:	0200      	lsls	r0, r0, #8
     58e:	4304      	orrs	r4, r0
     590:	0424      	lsls	r4, r4, #16
     592:	0c24      	lsrs	r4, r4, #16
     594:	192c      	adds	r4, r5, r4
     596:	1d1d      	adds	r5, r3, #4
     598:	42a5      	cmp	r5, r4
     59a:	d300      	bcc.n	59e <JPEG_Decoder_ReadHeaders+0x23e>
     59c:	e6f5      	b.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     59e:	230f      	movs	r3, #15
     5a0:	4690      	mov	r8, r2
     5a2:	469c      	mov	ip, r3
     5a4:	9a06      	ldr	r2, [sp, #24]
     5a6:	e025      	b.n	5f4 <JPEG_Decoder_ReadHeaders+0x294>
     5a8:	3104      	adds	r1, #4
     5aa:	0089      	lsls	r1, r1, #2
     5ac:	5088      	str	r0, [r1, r2]
     5ae:	786b      	ldrb	r3, [r5, #1]
     5b0:	78a9      	ldrb	r1, [r5, #2]
     5b2:	3310      	adds	r3, #16
     5b4:	18c9      	adds	r1, r1, r3
     5b6:	78eb      	ldrb	r3, [r5, #3]
     5b8:	185b      	adds	r3, r3, r1
     5ba:	7929      	ldrb	r1, [r5, #4]
     5bc:	18c9      	adds	r1, r1, r3
     5be:	796b      	ldrb	r3, [r5, #5]
     5c0:	185b      	adds	r3, r3, r1
     5c2:	79a9      	ldrb	r1, [r5, #6]
     5c4:	18c9      	adds	r1, r1, r3
     5c6:	79eb      	ldrb	r3, [r5, #7]
     5c8:	185b      	adds	r3, r3, r1
     5ca:	7a29      	ldrb	r1, [r5, #8]
     5cc:	18c9      	adds	r1, r1, r3
     5ce:	7a6b      	ldrb	r3, [r5, #9]
     5d0:	185b      	adds	r3, r3, r1
     5d2:	7aa9      	ldrb	r1, [r5, #10]
     5d4:	18c9      	adds	r1, r1, r3
     5d6:	7aeb      	ldrb	r3, [r5, #11]
     5d8:	185b      	adds	r3, r3, r1
     5da:	7b29      	ldrb	r1, [r5, #12]
     5dc:	18c9      	adds	r1, r1, r3
     5de:	7b6b      	ldrb	r3, [r5, #13]
     5e0:	185b      	adds	r3, r3, r1
     5e2:	7ba9      	ldrb	r1, [r5, #14]
     5e4:	18c9      	adds	r1, r1, r3
     5e6:	7beb      	ldrb	r3, [r5, #15]
     5e8:	7c2d      	ldrb	r5, [r5, #16]
     5ea:	185b      	adds	r3, r3, r1
     5ec:	18ed      	adds	r5, r5, r3
     5ee:	1945      	adds	r5, r0, r5
     5f0:	42ac      	cmp	r4, r5
     5f2:	d95c      	bls.n	6ae <JPEG_Decoder_ReadHeaders+0x34e>
     5f4:	4661      	mov	r1, ip
     5f6:	782b      	ldrb	r3, [r5, #0]
     5f8:	1c68      	adds	r0, r5, #1
     5fa:	4019      	ands	r1, r3
     5fc:	091b      	lsrs	r3, r3, #4
     5fe:	d0d3      	beq.n	5a8 <JPEG_Decoder_ReadHeaders+0x248>
     600:	0089      	lsls	r1, r1, #2
     602:	5088      	str	r0, [r1, r2]
     604:	e7d3      	b.n	5ae <JPEG_Decoder_ReadHeaders+0x24e>
     606:	2440      	movs	r4, #64	@ 0x40
     608:	9906      	ldr	r1, [sp, #24]
     60a:	482b      	ldr	r0, [pc, #172]	@ (6b8 <JPEG_Decoder_ReadHeaders+0x358>)
     60c:	4264      	negs	r4, r4
     60e:	520c      	strh	r4, [r1, r0]
     610:	2100      	movs	r1, #0
     612:	6051      	str	r1, [r2, #4]
     614:	3101      	adds	r1, #1
     616:	7211      	strb	r1, [r2, #8]
     618:	78a9      	ldrb	r1, [r5, #2]
     61a:	7251      	strb	r1, [r2, #9]
     61c:	7929      	ldrb	r1, [r5, #4]
     61e:	78e8      	ldrb	r0, [r5, #3]
     620:	0209      	lsls	r1, r1, #8
     622:	4308      	orrs	r0, r1
     624:	0200      	lsls	r0, r0, #8
     626:	0a09      	lsrs	r1, r1, #8
     628:	4301      	orrs	r1, r0
     62a:	8151      	strh	r1, [r2, #10]
     62c:	79a9      	ldrb	r1, [r5, #6]
     62e:	7968      	ldrb	r0, [r5, #5]
     630:	0209      	lsls	r1, r1, #8
     632:	4308      	orrs	r0, r1
     634:	0200      	lsls	r0, r0, #8
     636:	0a09      	lsrs	r1, r1, #8
     638:	4301      	orrs	r1, r0
     63a:	8191      	strh	r1, [r2, #12]
     63c:	210a      	movs	r1, #10
     63e:	468c      	mov	ip, r1
     640:	79e9      	ldrb	r1, [r5, #7]
     642:	449c      	add	ip, r3
     644:	4665      	mov	r5, ip
     646:	6211      	str	r1, [r2, #32]
     648:	2900      	cmp	r1, #0
     64a:	d100      	bne.n	64e <JPEG_Decoder_ReadHeaders+0x2ee>
     64c:	e69d      	b.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     64e:	7a98      	ldrb	r0, [r3, #10]
     650:	7390      	strb	r0, [r2, #14]
     652:	7adc      	ldrb	r4, [r3, #11]
     654:	0920      	lsrs	r0, r4, #4
     656:	73d0      	strb	r0, [r2, #15]
     658:	200f      	movs	r0, #15
     65a:	4004      	ands	r4, r0
     65c:	7414      	strb	r4, [r2, #16]
     65e:	7b1c      	ldrb	r4, [r3, #12]
     660:	7454      	strb	r4, [r2, #17]
     662:	2901      	cmp	r1, #1
     664:	d01e      	beq.n	6a4 <JPEG_Decoder_ReadHeaders+0x344>
     666:	7b5c      	ldrb	r4, [r3, #13]
     668:	7494      	strb	r4, [r2, #18]
     66a:	7b9c      	ldrb	r4, [r3, #14]
     66c:	0925      	lsrs	r5, r4, #4
     66e:	4004      	ands	r4, r0
     670:	74d5      	strb	r5, [r2, #19]
     672:	7514      	strb	r4, [r2, #20]
     674:	7bdc      	ldrb	r4, [r3, #15]
     676:	7554      	strb	r4, [r2, #21]
     678:	2902      	cmp	r1, #2
     67a:	d013      	beq.n	6a4 <JPEG_Decoder_ReadHeaders+0x344>
     67c:	7c1c      	ldrb	r4, [r3, #16]
     67e:	7594      	strb	r4, [r2, #22]
     680:	7c5c      	ldrb	r4, [r3, #17]
     682:	0925      	lsrs	r5, r4, #4
     684:	4004      	ands	r4, r0
     686:	75d5      	strb	r5, [r2, #23]
     688:	7614      	strb	r4, [r2, #24]
     68a:	7c9c      	ldrb	r4, [r3, #18]
     68c:	7654      	strb	r4, [r2, #25]
     68e:	2903      	cmp	r1, #3
     690:	d008      	beq.n	6a4 <JPEG_Decoder_ReadHeaders+0x344>
     692:	7cdc      	ldrb	r4, [r3, #19]
     694:	7694      	strb	r4, [r2, #26]
     696:	7d1c      	ldrb	r4, [r3, #20]
     698:	0925      	lsrs	r5, r4, #4
     69a:	4020      	ands	r0, r4
     69c:	76d5      	strb	r5, [r2, #27]
     69e:	7710      	strb	r0, [r2, #28]
     6a0:	7d5b      	ldrb	r3, [r3, #21]
     6a2:	7753      	strb	r3, [r2, #29]
     6a4:	004b      	lsls	r3, r1, #1
     6a6:	185b      	adds	r3, r3, r1
     6a8:	4463      	add	r3, ip
     6aa:	001d      	movs	r5, r3
     6ac:	e66d      	b.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     6ae:	4642      	mov	r2, r8
     6b0:	e66b      	b.n	38a <JPEG_Decoder_ReadHeaders+0x2a>
     6b2:	46c0      	nop			@ (mov r8, r8)
     6b4:	00000000 	andeq	r0, r0, r0
     6b8:	00000424 	andeq	r0, r0, r4, lsr #8
     6bc:	000000fc 	strdeq	r0, [r0], -ip
     6c0:	00000000 	andeq	r0, r0, r0
     6c4:	0000013c 	andeq	r0, r0, ip, lsr r1

000006c8 <JPEG_HuffmanTable_Skip>:
     6c8:	6803      	ldr	r3, [r0, #0]
     6ca:	7819      	ldrb	r1, [r3, #0]
     6cc:	785a      	ldrb	r2, [r3, #1]
     6ce:	3110      	adds	r1, #16
     6d0:	1852      	adds	r2, r2, r1
     6d2:	7899      	ldrb	r1, [r3, #2]
     6d4:	1889      	adds	r1, r1, r2
     6d6:	78da      	ldrb	r2, [r3, #3]
     6d8:	1852      	adds	r2, r2, r1
     6da:	7919      	ldrb	r1, [r3, #4]
     6dc:	1889      	adds	r1, r1, r2
     6de:	795a      	ldrb	r2, [r3, #5]
     6e0:	1852      	adds	r2, r2, r1
     6e2:	7999      	ldrb	r1, [r3, #6]
     6e4:	1889      	adds	r1, r1, r2
     6e6:	79da      	ldrb	r2, [r3, #7]
     6e8:	1852      	adds	r2, r2, r1
     6ea:	7a19      	ldrb	r1, [r3, #8]
     6ec:	1889      	adds	r1, r1, r2
     6ee:	7a5a      	ldrb	r2, [r3, #9]
     6f0:	1852      	adds	r2, r2, r1
     6f2:	7a99      	ldrb	r1, [r3, #10]
     6f4:	1889      	adds	r1, r1, r2
     6f6:	7ada      	ldrb	r2, [r3, #11]
     6f8:	1852      	adds	r2, r2, r1
     6fa:	7b19      	ldrb	r1, [r3, #12]
     6fc:	1889      	adds	r1, r1, r2
     6fe:	7b5a      	ldrb	r2, [r3, #13]
     700:	1852      	adds	r2, r2, r1
     702:	7b99      	ldrb	r1, [r3, #14]
     704:	1889      	adds	r1, r1, r2
     706:	7bda      	ldrb	r2, [r3, #15]
     708:	1852      	adds	r2, r2, r1
     70a:	189b      	adds	r3, r3, r2
     70c:	6003      	str	r3, [r0, #0]
     70e:	2001      	movs	r0, #1
     710:	4770      	bx	lr
     712:	46c0      	nop			@ (mov r8, r8)

00000714 <JPEG_HuffmanTable_Read>:
     714:	b5f0      	push	{r4, r5, r6, r7, lr}
     716:	4657      	mov	r7, sl
     718:	4645      	mov	r5, r8
     71a:	46de      	mov	lr, fp
     71c:	464e      	mov	r6, r9
     71e:	b5e0      	push	{r5, r6, r7, lr}
     720:	4c2a      	ldr	r4, [pc, #168]	@ (7cc <JPEG_HuffmanTable_Read+0xb8>)
     722:	4683      	mov	fp, r0
     724:	44a5      	add	sp, r4
     726:	680c      	ldr	r4, [r1, #0]
     728:	7862      	ldrb	r2, [r4, #1]
     72a:	7823      	ldrb	r3, [r4, #0]
     72c:	189b      	adds	r3, r3, r2
     72e:	78a2      	ldrb	r2, [r4, #2]
     730:	18d2      	adds	r2, r2, r3
     732:	78e3      	ldrb	r3, [r4, #3]
     734:	189b      	adds	r3, r3, r2
     736:	7922      	ldrb	r2, [r4, #4]
     738:	18d2      	adds	r2, r2, r3
     73a:	7963      	ldrb	r3, [r4, #5]
     73c:	189b      	adds	r3, r3, r2
     73e:	79a2      	ldrb	r2, [r4, #6]
     740:	18d2      	adds	r2, r2, r3
     742:	79e3      	ldrb	r3, [r4, #7]
     744:	189b      	adds	r3, r3, r2
     746:	7a22      	ldrb	r2, [r4, #8]
     748:	18d2      	adds	r2, r2, r3
     74a:	7a63      	ldrb	r3, [r4, #9]
     74c:	189b      	adds	r3, r3, r2
     74e:	7aa2      	ldrb	r2, [r4, #10]
     750:	18d2      	adds	r2, r2, r3
     752:	7ae3      	ldrb	r3, [r4, #11]
     754:	189b      	adds	r3, r3, r2
     756:	7b22      	ldrb	r2, [r4, #12]
     758:	18d2      	adds	r2, r2, r3
     75a:	7b63      	ldrb	r3, [r4, #13]
     75c:	189b      	adds	r3, r3, r2
     75e:	7ba2      	ldrb	r2, [r4, #14]
     760:	18d2      	adds	r2, r2, r3
     762:	7be3      	ldrb	r3, [r4, #15]
     764:	0020      	movs	r0, r4
     766:	189b      	adds	r3, r3, r2
     768:	465a      	mov	r2, fp
     76a:	4698      	mov	r8, r3
     76c:	3010      	adds	r0, #16
     76e:	6010      	str	r0, [r2, #0]
     770:	468a      	mov	sl, r1
     772:	2301      	movs	r3, #1
     774:	2201      	movs	r2, #1
     776:	2500      	movs	r5, #0
     778:	4480      	add	r8, r0
     77a:	af10      	add	r7, sp, #64	@ 0x40
     77c:	1c66      	adds	r6, r4, #1
     77e:	1e71      	subs	r1, r6, #1
     780:	7809      	ldrb	r1, [r1, #0]
     782:	4299      	cmp	r1, r3
     784:	da08      	bge.n	798 <JPEG_HuffmanTable_Read+0x84>
     786:	2a0f      	cmp	r2, #15
     788:	dc0a      	bgt.n	7a0 <JPEG_HuffmanTable_Read+0x8c>
     78a:	2301      	movs	r3, #1
     78c:	3201      	adds	r2, #1
     78e:	18a6      	adds	r6, r4, r2
     790:	1e71      	subs	r1, r6, #1
     792:	7809      	ldrb	r1, [r1, #0]
     794:	4299      	cmp	r1, r3
     796:	dbf6      	blt.n	786 <JPEG_HuffmanTable_Read+0x72>
     798:	557a      	strb	r2, [r7, r5]
     79a:	3301      	adds	r3, #1
     79c:	3501      	adds	r5, #1
     79e:	e7ee      	b.n	77e <JPEG_HuffmanTable_Read+0x6a>
     7a0:	2300      	movs	r3, #0
     7a2:	2100      	movs	r1, #0
     7a4:	557b      	strb	r3, [r7, r5]
     7a6:	aa10      	add	r2, sp, #64	@ 0x40
     7a8:	783b      	ldrb	r3, [r7, #0]
     7aa:	ae50      	add	r6, sp, #320	@ 0x140
     7ac:	1c55      	adds	r5, r2, #1
     7ae:	6031      	str	r1, [r6, #0]
     7b0:	1c4a      	adds	r2, r1, #1
     7b2:	7829      	ldrb	r1, [r5, #0]
     7b4:	4299      	cmp	r1, r3
     7b6:	d005      	beq.n	7c4 <JPEG_HuffmanTable_Read+0xb0>
     7b8:	2900      	cmp	r1, #0
     7ba:	d009      	beq.n	7d0 <JPEG_HuffmanTable_Read+0xbc>
     7bc:	3301      	adds	r3, #1
     7be:	0052      	lsls	r2, r2, #1
     7c0:	4299      	cmp	r1, r3
     7c2:	d1fb      	bne.n	7bc <JPEG_HuffmanTable_Read+0xa8>
     7c4:	0011      	movs	r1, r2
     7c6:	3604      	adds	r6, #4
     7c8:	3501      	adds	r5, #1
     7ca:	e7f0      	b.n	7ae <JPEG_HuffmanTable_Read+0x9a>
     7cc:	fffffabc 			@ <UNDEFINED> instruction: 0xfffffabc
     7d0:	7823      	ldrb	r3, [r4, #0]
     7d2:	2b00      	cmp	r3, #0
     7d4:	d100      	bne.n	7d8 <JPEG_HuffmanTable_Read+0xc4>
     7d6:	e242      	b.n	c5e <JPEG_HuffmanTable_Read+0x54a>
     7d8:	465a      	mov	r2, fp
     7da:	9b50      	ldr	r3, [sp, #320]	@ 0x140
     7dc:	1ac3      	subs	r3, r0, r3
     7de:	6453      	str	r3, [r2, #68]	@ 0x44
     7e0:	7823      	ldrb	r3, [r4, #0]
     7e2:	1e5a      	subs	r2, r3, #1
     7e4:	a950      	add	r1, sp, #320	@ 0x140
     7e6:	0092      	lsls	r2, r2, #2
     7e8:	588a      	ldr	r2, [r1, r2]
     7ea:	4659      	mov	r1, fp
     7ec:	604a      	str	r2, [r1, #4]
     7ee:	7862      	ldrb	r2, [r4, #1]
     7f0:	2a00      	cmp	r2, #0
     7f2:	d100      	bne.n	7f6 <JPEG_HuffmanTable_Read+0xe2>
     7f4:	e23c      	b.n	c70 <JPEG_HuffmanTable_Read+0x55c>
     7f6:	009a      	lsls	r2, r3, #2
     7f8:	a950      	add	r1, sp, #320	@ 0x140
     7fa:	588a      	ldr	r2, [r1, r2]
     7fc:	4659      	mov	r1, fp
     7fe:	1a9a      	subs	r2, r3, r2
     800:	1882      	adds	r2, r0, r2
     802:	648a      	str	r2, [r1, #72]	@ 0x48
     804:	7862      	ldrb	r2, [r4, #1]
     806:	189b      	adds	r3, r3, r2
     808:	1e5a      	subs	r2, r3, #1
     80a:	a950      	add	r1, sp, #320	@ 0x140
     80c:	0092      	lsls	r2, r2, #2
     80e:	588a      	ldr	r2, [r1, r2]
     810:	4659      	mov	r1, fp
     812:	608a      	str	r2, [r1, #8]
     814:	78a2      	ldrb	r2, [r4, #2]
     816:	2a00      	cmp	r2, #0
     818:	d100      	bne.n	81c <JPEG_HuffmanTable_Read+0x108>
     81a:	e231      	b.n	c80 <JPEG_HuffmanTable_Read+0x56c>
     81c:	009a      	lsls	r2, r3, #2
     81e:	a950      	add	r1, sp, #320	@ 0x140
     820:	588a      	ldr	r2, [r1, r2]
     822:	4659      	mov	r1, fp
     824:	1a9a      	subs	r2, r3, r2
     826:	1882      	adds	r2, r0, r2
     828:	64ca      	str	r2, [r1, #76]	@ 0x4c
     82a:	78a2      	ldrb	r2, [r4, #2]
     82c:	189b      	adds	r3, r3, r2
     82e:	1e5a      	subs	r2, r3, #1
     830:	a950      	add	r1, sp, #320	@ 0x140
     832:	0092      	lsls	r2, r2, #2
     834:	588a      	ldr	r2, [r1, r2]
     836:	4659      	mov	r1, fp
     838:	60ca      	str	r2, [r1, #12]
     83a:	78e2      	ldrb	r2, [r4, #3]
     83c:	2a00      	cmp	r2, #0
     83e:	d100      	bne.n	842 <JPEG_HuffmanTable_Read+0x12e>
     840:	e226      	b.n	c90 <JPEG_HuffmanTable_Read+0x57c>
     842:	009a      	lsls	r2, r3, #2
     844:	a950      	add	r1, sp, #320	@ 0x140
     846:	588a      	ldr	r2, [r1, r2]
     848:	4659      	mov	r1, fp
     84a:	1a9a      	subs	r2, r3, r2
     84c:	1882      	adds	r2, r0, r2
     84e:	650a      	str	r2, [r1, #80]	@ 0x50
     850:	78e2      	ldrb	r2, [r4, #3]
     852:	189b      	adds	r3, r3, r2
     854:	1e5a      	subs	r2, r3, #1
     856:	a950      	add	r1, sp, #320	@ 0x140
     858:	0092      	lsls	r2, r2, #2
     85a:	588a      	ldr	r2, [r1, r2]
     85c:	4659      	mov	r1, fp
     85e:	610a      	str	r2, [r1, #16]
     860:	7922      	ldrb	r2, [r4, #4]
     862:	2a00      	cmp	r2, #0
     864:	d100      	bne.n	868 <JPEG_HuffmanTable_Read+0x154>
     866:	e21b      	b.n	ca0 <JPEG_HuffmanTable_Read+0x58c>
     868:	009a      	lsls	r2, r3, #2
     86a:	a950      	add	r1, sp, #320	@ 0x140
     86c:	588a      	ldr	r2, [r1, r2]
     86e:	4659      	mov	r1, fp
     870:	1a9a      	subs	r2, r3, r2
     872:	1882      	adds	r2, r0, r2
     874:	654a      	str	r2, [r1, #84]	@ 0x54
     876:	7922      	ldrb	r2, [r4, #4]
     878:	189b      	adds	r3, r3, r2
     87a:	1e5a      	subs	r2, r3, #1
     87c:	a950      	add	r1, sp, #320	@ 0x140
     87e:	0092      	lsls	r2, r2, #2
     880:	588a      	ldr	r2, [r1, r2]
     882:	4659      	mov	r1, fp
     884:	614a      	str	r2, [r1, #20]
     886:	7962      	ldrb	r2, [r4, #5]
     888:	2a00      	cmp	r2, #0
     88a:	d100      	bne.n	88e <JPEG_HuffmanTable_Read+0x17a>
     88c:	e210      	b.n	cb0 <JPEG_HuffmanTable_Read+0x59c>
     88e:	009a      	lsls	r2, r3, #2
     890:	a950      	add	r1, sp, #320	@ 0x140
     892:	588a      	ldr	r2, [r1, r2]
     894:	4659      	mov	r1, fp
     896:	1a9a      	subs	r2, r3, r2
     898:	1882      	adds	r2, r0, r2
     89a:	658a      	str	r2, [r1, #88]	@ 0x58
     89c:	7962      	ldrb	r2, [r4, #5]
     89e:	189b      	adds	r3, r3, r2
     8a0:	1e5a      	subs	r2, r3, #1
     8a2:	a950      	add	r1, sp, #320	@ 0x140
     8a4:	0092      	lsls	r2, r2, #2
     8a6:	588a      	ldr	r2, [r1, r2]
     8a8:	4659      	mov	r1, fp
     8aa:	618a      	str	r2, [r1, #24]
     8ac:	79a2      	ldrb	r2, [r4, #6]
     8ae:	2a00      	cmp	r2, #0
     8b0:	d100      	bne.n	8b4 <JPEG_HuffmanTable_Read+0x1a0>
     8b2:	e205      	b.n	cc0 <JPEG_HuffmanTable_Read+0x5ac>
     8b4:	009a      	lsls	r2, r3, #2
     8b6:	a950      	add	r1, sp, #320	@ 0x140
     8b8:	588a      	ldr	r2, [r1, r2]
     8ba:	4659      	mov	r1, fp
     8bc:	1a9a      	subs	r2, r3, r2
     8be:	1882      	adds	r2, r0, r2
     8c0:	65ca      	str	r2, [r1, #92]	@ 0x5c
     8c2:	79a2      	ldrb	r2, [r4, #6]
     8c4:	189b      	adds	r3, r3, r2
     8c6:	1e5a      	subs	r2, r3, #1
     8c8:	a950      	add	r1, sp, #320	@ 0x140
     8ca:	0092      	lsls	r2, r2, #2
     8cc:	588a      	ldr	r2, [r1, r2]
     8ce:	4659      	mov	r1, fp
     8d0:	61ca      	str	r2, [r1, #28]
     8d2:	79e2      	ldrb	r2, [r4, #7]
     8d4:	2a00      	cmp	r2, #0
     8d6:	d100      	bne.n	8da <JPEG_HuffmanTable_Read+0x1c6>
     8d8:	e1fa      	b.n	cd0 <JPEG_HuffmanTable_Read+0x5bc>
     8da:	009a      	lsls	r2, r3, #2
     8dc:	a950      	add	r1, sp, #320	@ 0x140
     8de:	588a      	ldr	r2, [r1, r2]
     8e0:	4659      	mov	r1, fp
     8e2:	1a9a      	subs	r2, r3, r2
     8e4:	1882      	adds	r2, r0, r2
     8e6:	660a      	str	r2, [r1, #96]	@ 0x60
     8e8:	79e2      	ldrb	r2, [r4, #7]
     8ea:	189b      	adds	r3, r3, r2
     8ec:	1e5a      	subs	r2, r3, #1
     8ee:	a950      	add	r1, sp, #320	@ 0x140
     8f0:	0092      	lsls	r2, r2, #2
     8f2:	588a      	ldr	r2, [r1, r2]
     8f4:	4659      	mov	r1, fp
     8f6:	620a      	str	r2, [r1, #32]
     8f8:	7a22      	ldrb	r2, [r4, #8]
     8fa:	2a00      	cmp	r2, #0
     8fc:	d100      	bne.n	900 <JPEG_HuffmanTable_Read+0x1ec>
     8fe:	e1ef      	b.n	ce0 <JPEG_HuffmanTable_Read+0x5cc>
     900:	009a      	lsls	r2, r3, #2
     902:	a950      	add	r1, sp, #320	@ 0x140
     904:	588a      	ldr	r2, [r1, r2]
     906:	4659      	mov	r1, fp
     908:	1a9a      	subs	r2, r3, r2
     90a:	1882      	adds	r2, r0, r2
     90c:	664a      	str	r2, [r1, #100]	@ 0x64
     90e:	7a22      	ldrb	r2, [r4, #8]
     910:	189b      	adds	r3, r3, r2
     912:	1e5a      	subs	r2, r3, #1
     914:	a950      	add	r1, sp, #320	@ 0x140
     916:	0092      	lsls	r2, r2, #2
     918:	588a      	ldr	r2, [r1, r2]
     91a:	4659      	mov	r1, fp
     91c:	624a      	str	r2, [r1, #36]	@ 0x24
     91e:	7a62      	ldrb	r2, [r4, #9]
     920:	2a00      	cmp	r2, #0
     922:	d100      	bne.n	926 <JPEG_HuffmanTable_Read+0x212>
     924:	e1e4      	b.n	cf0 <JPEG_HuffmanTable_Read+0x5dc>
     926:	009a      	lsls	r2, r3, #2
     928:	a950      	add	r1, sp, #320	@ 0x140
     92a:	588a      	ldr	r2, [r1, r2]
     92c:	4659      	mov	r1, fp
     92e:	1a9a      	subs	r2, r3, r2
     930:	1882      	adds	r2, r0, r2
     932:	668a      	str	r2, [r1, #104]	@ 0x68
     934:	7a62      	ldrb	r2, [r4, #9]
     936:	189b      	adds	r3, r3, r2
     938:	1e5a      	subs	r2, r3, #1
     93a:	a950      	add	r1, sp, #320	@ 0x140
     93c:	0092      	lsls	r2, r2, #2
     93e:	588a      	ldr	r2, [r1, r2]
     940:	4659      	mov	r1, fp
     942:	628a      	str	r2, [r1, #40]	@ 0x28
     944:	7aa2      	ldrb	r2, [r4, #10]
     946:	2a00      	cmp	r2, #0
     948:	d100      	bne.n	94c <JPEG_HuffmanTable_Read+0x238>
     94a:	e1d9      	b.n	d00 <JPEG_HuffmanTable_Read+0x5ec>
     94c:	009a      	lsls	r2, r3, #2
     94e:	a950      	add	r1, sp, #320	@ 0x140
     950:	588a      	ldr	r2, [r1, r2]
     952:	4659      	mov	r1, fp
     954:	1a9a      	subs	r2, r3, r2
     956:	1882      	adds	r2, r0, r2
     958:	66ca      	str	r2, [r1, #108]	@ 0x6c
     95a:	7aa2      	ldrb	r2, [r4, #10]
     95c:	189b      	adds	r3, r3, r2
     95e:	1e5a      	subs	r2, r3, #1
     960:	a950      	add	r1, sp, #320	@ 0x140
     962:	0092      	lsls	r2, r2, #2
     964:	588a      	ldr	r2, [r1, r2]
     966:	4659      	mov	r1, fp
     968:	62ca      	str	r2, [r1, #44]	@ 0x2c
     96a:	7ae2      	ldrb	r2, [r4, #11]
     96c:	2a00      	cmp	r2, #0
     96e:	d100      	bne.n	972 <JPEG_HuffmanTable_Read+0x25e>
     970:	e1ce      	b.n	d10 <JPEG_HuffmanTable_Read+0x5fc>
     972:	009a      	lsls	r2, r3, #2
     974:	a950      	add	r1, sp, #320	@ 0x140
     976:	588a      	ldr	r2, [r1, r2]
     978:	4659      	mov	r1, fp
     97a:	1a9a      	subs	r2, r3, r2
     97c:	1882      	adds	r2, r0, r2
     97e:	670a      	str	r2, [r1, #112]	@ 0x70
     980:	7ae2      	ldrb	r2, [r4, #11]
     982:	189b      	adds	r3, r3, r2
     984:	1e5a      	subs	r2, r3, #1
     986:	a950      	add	r1, sp, #320	@ 0x140
     988:	0092      	lsls	r2, r2, #2
     98a:	588a      	ldr	r2, [r1, r2]
     98c:	4659      	mov	r1, fp
     98e:	630a      	str	r2, [r1, #48]	@ 0x30
     990:	7b22      	ldrb	r2, [r4, #12]
     992:	2a00      	cmp	r2, #0
     994:	d100      	bne.n	998 <JPEG_HuffmanTable_Read+0x284>
     996:	e1c3      	b.n	d20 <JPEG_HuffmanTable_Read+0x60c>
     998:	009a      	lsls	r2, r3, #2
     99a:	a950      	add	r1, sp, #320	@ 0x140
     99c:	588a      	ldr	r2, [r1, r2]
     99e:	4659      	mov	r1, fp
     9a0:	1a9a      	subs	r2, r3, r2
     9a2:	1882      	adds	r2, r0, r2
     9a4:	674a      	str	r2, [r1, #116]	@ 0x74
     9a6:	7b22      	ldrb	r2, [r4, #12]
     9a8:	189b      	adds	r3, r3, r2
     9aa:	1e5a      	subs	r2, r3, #1
     9ac:	a950      	add	r1, sp, #320	@ 0x140
     9ae:	0092      	lsls	r2, r2, #2
     9b0:	588a      	ldr	r2, [r1, r2]
     9b2:	4659      	mov	r1, fp
     9b4:	634a      	str	r2, [r1, #52]	@ 0x34
     9b6:	7b62      	ldrb	r2, [r4, #13]
     9b8:	2a00      	cmp	r2, #0
     9ba:	d100      	bne.n	9be <JPEG_HuffmanTable_Read+0x2aa>
     9bc:	e1b8      	b.n	d30 <JPEG_HuffmanTable_Read+0x61c>
     9be:	009a      	lsls	r2, r3, #2
     9c0:	a950      	add	r1, sp, #320	@ 0x140
     9c2:	588a      	ldr	r2, [r1, r2]
     9c4:	4659      	mov	r1, fp
     9c6:	1a9a      	subs	r2, r3, r2
     9c8:	1882      	adds	r2, r0, r2
     9ca:	678a      	str	r2, [r1, #120]	@ 0x78
     9cc:	7b62      	ldrb	r2, [r4, #13]
     9ce:	189b      	adds	r3, r3, r2
     9d0:	1e5a      	subs	r2, r3, #1
     9d2:	a950      	add	r1, sp, #320	@ 0x140
     9d4:	0092      	lsls	r2, r2, #2
     9d6:	588a      	ldr	r2, [r1, r2]
     9d8:	4659      	mov	r1, fp
     9da:	638a      	str	r2, [r1, #56]	@ 0x38
     9dc:	7ba2      	ldrb	r2, [r4, #14]
     9de:	2a00      	cmp	r2, #0
     9e0:	d100      	bne.n	9e4 <JPEG_HuffmanTable_Read+0x2d0>
     9e2:	e1ad      	b.n	d40 <JPEG_HuffmanTable_Read+0x62c>
     9e4:	009a      	lsls	r2, r3, #2
     9e6:	a950      	add	r1, sp, #320	@ 0x140
     9e8:	588a      	ldr	r2, [r1, r2]
     9ea:	4659      	mov	r1, fp
     9ec:	1a9a      	subs	r2, r3, r2
     9ee:	1882      	adds	r2, r0, r2
     9f0:	67ca      	str	r2, [r1, #124]	@ 0x7c
     9f2:	7ba2      	ldrb	r2, [r4, #14]
     9f4:	189b      	adds	r3, r3, r2
     9f6:	1e5a      	subs	r2, r3, #1
     9f8:	a950      	add	r1, sp, #320	@ 0x140
     9fa:	0092      	lsls	r2, r2, #2
     9fc:	588a      	ldr	r2, [r1, r2]
     9fe:	4659      	mov	r1, fp
     a00:	63ca      	str	r2, [r1, #60]	@ 0x3c
     a02:	7be2      	ldrb	r2, [r4, #15]
     a04:	2a00      	cmp	r2, #0
     a06:	d100      	bne.n	a0a <JPEG_HuffmanTable_Read+0x2f6>
     a08:	e1a2      	b.n	d50 <JPEG_HuffmanTable_Read+0x63c>
     a0a:	009a      	lsls	r2, r3, #2
     a0c:	a950      	add	r1, sp, #320	@ 0x140
     a0e:	588a      	ldr	r2, [r1, r2]
     a10:	1a9a      	subs	r2, r3, r2
     a12:	1880      	adds	r0, r0, r2
     a14:	4659      	mov	r1, fp
     a16:	2280      	movs	r2, #128	@ 0x80
     a18:	5088      	str	r0, [r1, r2]
     a1a:	7be2      	ldrb	r2, [r4, #15]
     a1c:	189b      	adds	r3, r3, r2
     a1e:	3b01      	subs	r3, #1
     a20:	009b      	lsls	r3, r3, #2
     a22:	aa50      	add	r2, sp, #320	@ 0x140
     a24:	58d3      	ldr	r3, [r2, r3]
     a26:	465a      	mov	r2, fp
     a28:	6413      	str	r3, [r2, #64]	@ 0x40
     a2a:	2384      	movs	r3, #132	@ 0x84
     a2c:	2280      	movs	r2, #128	@ 0x80
     a2e:	445b      	add	r3, fp
     a30:	0018      	movs	r0, r3
     a32:	2100      	movs	r1, #0
     a34:	0052      	lsls	r2, r2, #1
     a36:	9309      	str	r3, [sp, #36]	@ 0x24
     a38:	f7ff fffe 	bl	0 <memset>
     a3c:	2301      	movs	r3, #1
     a3e:	1b1b      	subs	r3, r3, r4
     a40:	930b      	str	r3, [sp, #44]	@ 0x2c
     a42:	4643      	mov	r3, r8
     a44:	0025      	movs	r5, r4
     a46:	930e      	str	r3, [sp, #56]	@ 0x38
     a48:	4653      	mov	r3, sl
     a4a:	2000      	movs	r0, #0
     a4c:	465f      	mov	r7, fp
     a4e:	3508      	adds	r5, #8
     a50:	1de6      	adds	r6, r4, #7
     a52:	9405      	str	r4, [sp, #20]
     a54:	940c      	str	r4, [sp, #48]	@ 0x30
     a56:	950a      	str	r5, [sp, #40]	@ 0x28
     a58:	930f      	str	r3, [sp, #60]	@ 0x3c
     a5a:	960d      	str	r6, [sp, #52]	@ 0x34
     a5c:	9b05      	ldr	r3, [sp, #20]
     a5e:	781b      	ldrb	r3, [r3, #0]
     a60:	2b00      	cmp	r3, #0
     a62:	d100      	bne.n	a66 <JPEG_HuffmanTable_Read+0x352>
     a64:	e0c8      	b.n	bf8 <JPEG_HuffmanTable_Read+0x4e4>
     a66:	2101      	movs	r1, #1
     a68:	9a05      	ldr	r2, [sp, #20]
     a6a:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
     a6c:	1a9b      	subs	r3, r3, r2
     a6e:	4099      	lsls	r1, r3
     a70:	4694      	mov	ip, r2
     a72:	468a      	mov	sl, r1
     a74:	a950      	add	r1, sp, #320	@ 0x140
     a76:	4689      	mov	r9, r1
     a78:	9306      	str	r3, [sp, #24]
     a7a:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
     a7c:	4463      	add	r3, ip
     a7e:	061b      	lsls	r3, r3, #24
     a80:	0e1a      	lsrs	r2, r3, #24
     a82:	4694      	mov	ip, r2
     a84:	0082      	lsls	r2, r0, #2
     a86:	4491      	add	r9, r2
     a88:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
     a8a:	4690      	mov	r8, r2
     a8c:	4652      	mov	r2, sl
     a8e:	0006      	movs	r6, r0
     a90:	3a01      	subs	r2, #1
     a92:	9204      	str	r2, [sp, #16]
     a94:	2201      	movs	r2, #1
     a96:	3610      	adds	r6, #16
     a98:	4446      	add	r6, r8
     a9a:	4690      	mov	r8, r2
     a9c:	4662      	mov	r2, ip
     a9e:	0c1b      	lsrs	r3, r3, #16
     aa0:	4313      	orrs	r3, r2
     aa2:	0412      	lsls	r2, r2, #16
     aa4:	4313      	orrs	r3, r2
     aa6:	9307      	str	r3, [sp, #28]
     aa8:	4643      	mov	r3, r8
     aaa:	46d0      	mov	r8, sl
     aac:	469a      	mov	sl, r3
     aae:	9008      	str	r0, [sp, #32]
     ab0:	464b      	mov	r3, r9
     ab2:	9a06      	ldr	r2, [sp, #24]
     ab4:	681b      	ldr	r3, [r3, #0]
     ab6:	4093      	lsls	r3, r2
     ab8:	9a04      	ldr	r2, [sp, #16]
     aba:	2a08      	cmp	r2, #8
     abc:	dc00      	bgt.n	ac0 <JPEG_HuffmanTable_Read+0x3ac>
     abe:	e0b8      	b.n	c32 <JPEG_HuffmanTable_Read+0x51e>
     ac0:	4641      	mov	r1, r8
     ac2:	2200      	movs	r2, #0
     ac4:	3185      	adds	r1, #133	@ 0x85
     ac6:	31ff      	adds	r1, #255	@ 0xff
     ac8:	18c9      	adds	r1, r1, r3
     aca:	1879      	adds	r1, r7, r1
     acc:	428e      	cmp	r6, r1
     ace:	4152      	adcs	r2, r2
     ad0:	2a00      	cmp	r2, #0
     ad2:	d000      	beq.n	ad6 <JPEG_HuffmanTable_Read+0x3c2>
     ad4:	e0a7      	b.n	c26 <JPEG_HuffmanTable_Read+0x512>
     ad6:	001a      	movs	r2, r3
     ad8:	3284      	adds	r2, #132	@ 0x84
     ada:	1c71      	adds	r1, r6, #1
     adc:	18ba      	adds	r2, r7, r2
     ade:	9103      	str	r1, [sp, #12]
     ae0:	428a      	cmp	r2, r1
     ae2:	d200      	bcs.n	ae6 <JPEG_HuffmanTable_Read+0x3d2>
     ae4:	e0a7      	b.n	c36 <JPEG_HuffmanTable_Read+0x522>
     ae6:	2003      	movs	r0, #3
     ae8:	0019      	movs	r1, r3
     aea:	0002      	movs	r2, r0
     aec:	3185      	adds	r1, #133	@ 0x85
     aee:	31ff      	adds	r1, #255	@ 0xff
     af0:	1879      	adds	r1, r7, r1
     af2:	4249      	negs	r1, r1
     af4:	400a      	ands	r2, r1
     af6:	4208      	tst	r0, r1
     af8:	d100      	bne.n	afc <JPEG_HuffmanTable_Read+0x3e8>
     afa:	e097      	b.n	c2c <JPEG_HuffmanTable_Read+0x518>
     afc:	18f8      	adds	r0, r7, r3
     afe:	0004      	movs	r4, r0
     b00:	4665      	mov	r5, ip
     b02:	3484      	adds	r4, #132	@ 0x84
     b04:	7025      	strb	r5, [r4, #0]
     b06:	3085      	adds	r0, #133	@ 0x85
     b08:	7834      	ldrb	r4, [r6, #0]
     b0a:	30ff      	adds	r0, #255	@ 0xff
     b0c:	7004      	strb	r4, [r0, #0]
     b0e:	9c04      	ldr	r4, [sp, #16]
     b10:	1c58      	adds	r0, r3, #1
     b12:	46a3      	mov	fp, r4
     b14:	9002      	str	r0, [sp, #8]
     b16:	0789      	lsls	r1, r1, #30
     b18:	d51b      	bpl.n	b52 <JPEG_HuffmanTable_Read+0x43e>
     b1a:	1838      	adds	r0, r7, r0
     b1c:	0001      	movs	r1, r0
     b1e:	3184      	adds	r1, #132	@ 0x84
     b20:	700d      	strb	r5, [r1, #0]
     b22:	3085      	adds	r0, #133	@ 0x85
     b24:	7831      	ldrb	r1, [r6, #0]
     b26:	30ff      	adds	r0, #255	@ 0xff
     b28:	7001      	strb	r1, [r0, #0]
     b2a:	1c99      	adds	r1, r3, #2
     b2c:	9102      	str	r1, [sp, #8]
     b2e:	2a03      	cmp	r2, #3
     b30:	d000      	beq.n	b34 <JPEG_HuffmanTable_Read+0x420>
     b32:	e08f      	b.n	c54 <JPEG_HuffmanTable_Read+0x540>
     b34:	1c99      	adds	r1, r3, #2
     b36:	1878      	adds	r0, r7, r1
     b38:	0001      	movs	r1, r0
     b3a:	3184      	adds	r1, #132	@ 0x84
     b3c:	700d      	strb	r5, [r1, #0]
     b3e:	3085      	adds	r0, #133	@ 0x85
     b40:	7831      	ldrb	r1, [r6, #0]
     b42:	30ff      	adds	r0, #255	@ 0xff
     b44:	7001      	strb	r1, [r0, #0]
     b46:	1cd9      	adds	r1, r3, #3
     b48:	9102      	str	r1, [sp, #8]
     b4a:	2103      	movs	r1, #3
     b4c:	4249      	negs	r1, r1
     b4e:	4441      	add	r1, r8
     b50:	468b      	mov	fp, r1
     b52:	4641      	mov	r1, r8
     b54:	4660      	mov	r0, ip
     b56:	1a89      	subs	r1, r1, r2
     b58:	18d2      	adds	r2, r2, r3
     b5a:	7833      	ldrb	r3, [r6, #0]
     b5c:	0605      	lsls	r5, r0, #24
     b5e:	9807      	ldr	r0, [sp, #28]
     b60:	9101      	str	r1, [sp, #4]
     b62:	0219      	lsls	r1, r3, #8
     b64:	4319      	orrs	r1, r3
     b66:	4305      	orrs	r5, r0
     b68:	0418      	lsls	r0, r3, #16
     b6a:	4301      	orrs	r1, r0
     b6c:	061b      	lsls	r3, r3, #24
     b6e:	0014      	movs	r4, r2
     b70:	4319      	orrs	r1, r3
     b72:	9b01      	ldr	r3, [sp, #4]
     b74:	0898      	lsrs	r0, r3, #2
     b76:	2300      	movs	r3, #0
     b78:	3285      	adds	r2, #133	@ 0x85
     b7a:	3484      	adds	r4, #132	@ 0x84
     b7c:	32ff      	adds	r2, #255	@ 0xff
     b7e:	193c      	adds	r4, r7, r4
     b80:	18ba      	adds	r2, r7, r2
     b82:	0080      	lsls	r0, r0, #2
     b84:	50e5      	str	r5, [r4, r3]
     b86:	50d1      	str	r1, [r2, r3]
     b88:	3304      	adds	r3, #4
     b8a:	4283      	cmp	r3, r0
     b8c:	d1fa      	bne.n	b84 <JPEG_HuffmanTable_Read+0x470>
     b8e:	9a02      	ldr	r2, [sp, #8]
     b90:	18d0      	adds	r0, r2, r3
     b92:	465a      	mov	r2, fp
     b94:	9901      	ldr	r1, [sp, #4]
     b96:	1ad2      	subs	r2, r2, r3
     b98:	4299      	cmp	r1, r3
     b9a:	d01e      	beq.n	bda <JPEG_HuffmanTable_Read+0x4c6>
     b9c:	183b      	adds	r3, r7, r0
     b9e:	0019      	movs	r1, r3
     ba0:	4664      	mov	r4, ip
     ba2:	3184      	adds	r1, #132	@ 0x84
     ba4:	700c      	strb	r4, [r1, #0]
     ba6:	3385      	adds	r3, #133	@ 0x85
     ba8:	7831      	ldrb	r1, [r6, #0]
     baa:	33ff      	adds	r3, #255	@ 0xff
     bac:	7019      	strb	r1, [r3, #0]
     bae:	2a01      	cmp	r2, #1
     bb0:	d013      	beq.n	bda <JPEG_HuffmanTable_Read+0x4c6>
     bb2:	1c43      	adds	r3, r0, #1
     bb4:	18fb      	adds	r3, r7, r3
     bb6:	0019      	movs	r1, r3
     bb8:	3184      	adds	r1, #132	@ 0x84
     bba:	700c      	strb	r4, [r1, #0]
     bbc:	3385      	adds	r3, #133	@ 0x85
     bbe:	7831      	ldrb	r1, [r6, #0]
     bc0:	33ff      	adds	r3, #255	@ 0xff
     bc2:	7019      	strb	r1, [r3, #0]
     bc4:	2a02      	cmp	r2, #2
     bc6:	d008      	beq.n	bda <JPEG_HuffmanTable_Read+0x4c6>
     bc8:	3002      	adds	r0, #2
     bca:	1838      	adds	r0, r7, r0
     bcc:	0003      	movs	r3, r0
     bce:	3384      	adds	r3, #132	@ 0x84
     bd0:	701c      	strb	r4, [r3, #0]
     bd2:	3085      	adds	r0, #133	@ 0x85
     bd4:	7833      	ldrb	r3, [r6, #0]
     bd6:	30ff      	adds	r0, #255	@ 0xff
     bd8:	7003      	strb	r3, [r0, #0]
     bda:	2301      	movs	r3, #1
     bdc:	469b      	mov	fp, r3
     bde:	3303      	adds	r3, #3
     be0:	44da      	add	sl, fp
     be2:	469b      	mov	fp, r3
     be4:	9b05      	ldr	r3, [sp, #20]
     be6:	781b      	ldrb	r3, [r3, #0]
     be8:	9e03      	ldr	r6, [sp, #12]
     bea:	44d9      	add	r9, fp
     bec:	4553      	cmp	r3, sl
     bee:	db00      	blt.n	bf2 <JPEG_HuffmanTable_Read+0x4de>
     bf0:	e75e      	b.n	ab0 <JPEG_HuffmanTable_Read+0x39c>
     bf2:	9808      	ldr	r0, [sp, #32]
     bf4:	3801      	subs	r0, #1
     bf6:	4450      	add	r0, sl
     bf8:	9b05      	ldr	r3, [sp, #20]
     bfa:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
     bfc:	3301      	adds	r3, #1
     bfe:	9305      	str	r3, [sp, #20]
     c00:	4293      	cmp	r3, r2
     c02:	d000      	beq.n	c06 <JPEG_HuffmanTable_Read+0x4f2>
     c04:	e72a      	b.n	a5c <JPEG_HuffmanTable_Read+0x348>
     c06:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
     c08:	4698      	mov	r8, r3
     c0a:	2001      	movs	r0, #1
     c0c:	4642      	mov	r2, r8
     c0e:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
     c10:	601a      	str	r2, [r3, #0]
     c12:	4b51      	ldr	r3, [pc, #324]	@ (d58 <JPEG_HuffmanTable_Read+0x644>)
     c14:	449d      	add	sp, r3
     c16:	bcf0      	pop	{r4, r5, r6, r7}
     c18:	46bb      	mov	fp, r7
     c1a:	46b2      	mov	sl, r6
     c1c:	46a9      	mov	r9, r5
     c1e:	46a0      	mov	r8, r4
     c20:	bcf0      	pop	{r4, r5, r6, r7}
     c22:	bc02      	pop	{r1}
     c24:	4708      	bx	r1
     c26:	1c72      	adds	r2, r6, #1
     c28:	9203      	str	r2, [sp, #12]
     c2a:	e75c      	b.n	ae6 <JPEG_HuffmanTable_Read+0x3d2>
     c2c:	46c3      	mov	fp, r8
     c2e:	9302      	str	r3, [sp, #8]
     c30:	e78f      	b.n	b52 <JPEG_HuffmanTable_Read+0x43e>
     c32:	1c72      	adds	r2, r6, #1
     c34:	9203      	str	r2, [sp, #12]
     c36:	0039      	movs	r1, r7
     c38:	4642      	mov	r2, r8
     c3a:	4665      	mov	r5, ip
     c3c:	3185      	adds	r1, #133	@ 0x85
     c3e:	9c09      	ldr	r4, [sp, #36]	@ 0x24
     c40:	18d0      	adds	r0, r2, r3
     c42:	31ff      	adds	r1, #255	@ 0xff
     c44:	54e5      	strb	r5, [r4, r3]
     c46:	7832      	ldrb	r2, [r6, #0]
     c48:	54ca      	strb	r2, [r1, r3]
     c4a:	3301      	adds	r3, #1
     c4c:	4298      	cmp	r0, r3
     c4e:	d1f9      	bne.n	c44 <JPEG_HuffmanTable_Read+0x530>
     c50:	46ac      	mov	ip, r5
     c52:	e7c2      	b.n	bda <JPEG_HuffmanTable_Read+0x4c6>
     c54:	2102      	movs	r1, #2
     c56:	4249      	negs	r1, r1
     c58:	4441      	add	r1, r8
     c5a:	468b      	mov	fp, r1
     c5c:	e779      	b.n	b52 <JPEG_HuffmanTable_Read+0x43e>
     c5e:	2201      	movs	r2, #1
     c60:	4659      	mov	r1, fp
     c62:	4252      	negs	r2, r2
     c64:	604a      	str	r2, [r1, #4]
     c66:	7862      	ldrb	r2, [r4, #1]
     c68:	2300      	movs	r3, #0
     c6a:	2a00      	cmp	r2, #0
     c6c:	d000      	beq.n	c70 <JPEG_HuffmanTable_Read+0x55c>
     c6e:	e5c2      	b.n	7f6 <JPEG_HuffmanTable_Read+0xe2>
     c70:	2201      	movs	r2, #1
     c72:	4659      	mov	r1, fp
     c74:	4252      	negs	r2, r2
     c76:	608a      	str	r2, [r1, #8]
     c78:	78a2      	ldrb	r2, [r4, #2]
     c7a:	2a00      	cmp	r2, #0
     c7c:	d000      	beq.n	c80 <JPEG_HuffmanTable_Read+0x56c>
     c7e:	e5cd      	b.n	81c <JPEG_HuffmanTable_Read+0x108>
     c80:	2201      	movs	r2, #1
     c82:	4659      	mov	r1, fp
     c84:	4252      	negs	r2, r2
     c86:	60ca      	str	r2, [r1, #12]
     c88:	78e2      	ldrb	r2, [r4, #3]
     c8a:	2a00      	cmp	r2, #0
     c8c:	d000      	beq.n	c90 <JPEG_HuffmanTable_Read+0x57c>
     c8e:	e5d8      	b.n	842 <JPEG_HuffmanTable_Read+0x12e>
     c90:	2201      	movs	r2, #1
     c92:	4659      	mov	r1, fp
     c94:	4252      	negs	r2, r2
     c96:	610a      	str	r2, [r1, #16]
     c98:	7922      	ldrb	r2, [r4, #4]
     c9a:	2a00      	cmp	r2, #0
     c9c:	d000      	beq.n	ca0 <JPEG_HuffmanTable_Read+0x58c>
     c9e:	e5e3      	b.n	868 <JPEG_HuffmanTable_Read+0x154>
     ca0:	2201      	movs	r2, #1
     ca2:	4659      	mov	r1, fp
     ca4:	4252      	negs	r2, r2
     ca6:	614a      	str	r2, [r1, #20]
     ca8:	7962      	ldrb	r2, [r4, #5]
     caa:	2a00      	cmp	r2, #0
     cac:	d000      	beq.n	cb0 <JPEG_HuffmanTable_Read+0x59c>
     cae:	e5ee      	b.n	88e <JPEG_HuffmanTable_Read+0x17a>
     cb0:	2201      	movs	r2, #1
     cb2:	4659      	mov	r1, fp
     cb4:	4252      	negs	r2, r2
     cb6:	618a      	str	r2, [r1, #24]
     cb8:	79a2      	ldrb	r2, [r4, #6]
     cba:	2a00      	cmp	r2, #0
     cbc:	d000      	beq.n	cc0 <JPEG_HuffmanTable_Read+0x5ac>
     cbe:	e5f9      	b.n	8b4 <JPEG_HuffmanTable_Read+0x1a0>
     cc0:	2201      	movs	r2, #1
     cc2:	4659      	mov	r1, fp
     cc4:	4252      	negs	r2, r2
     cc6:	61ca      	str	r2, [r1, #28]
     cc8:	79e2      	ldrb	r2, [r4, #7]
     cca:	2a00      	cmp	r2, #0
     ccc:	d000      	beq.n	cd0 <JPEG_HuffmanTable_Read+0x5bc>
     cce:	e604      	b.n	8da <JPEG_HuffmanTable_Read+0x1c6>
     cd0:	2201      	movs	r2, #1
     cd2:	4659      	mov	r1, fp
     cd4:	4252      	negs	r2, r2
     cd6:	620a      	str	r2, [r1, #32]
     cd8:	7a22      	ldrb	r2, [r4, #8]
     cda:	2a00      	cmp	r2, #0
     cdc:	d000      	beq.n	ce0 <JPEG_HuffmanTable_Read+0x5cc>
     cde:	e60f      	b.n	900 <JPEG_HuffmanTable_Read+0x1ec>
     ce0:	2201      	movs	r2, #1
     ce2:	4659      	mov	r1, fp
     ce4:	4252      	negs	r2, r2
     ce6:	624a      	str	r2, [r1, #36]	@ 0x24
     ce8:	7a62      	ldrb	r2, [r4, #9]
     cea:	2a00      	cmp	r2, #0
     cec:	d000      	beq.n	cf0 <JPEG_HuffmanTable_Read+0x5dc>
     cee:	e61a      	b.n	926 <JPEG_HuffmanTable_Read+0x212>
     cf0:	2201      	movs	r2, #1
     cf2:	4659      	mov	r1, fp
     cf4:	4252      	negs	r2, r2
     cf6:	628a      	str	r2, [r1, #40]	@ 0x28
     cf8:	7aa2      	ldrb	r2, [r4, #10]
     cfa:	2a00      	cmp	r2, #0
     cfc:	d000      	beq.n	d00 <JPEG_HuffmanTable_Read+0x5ec>
     cfe:	e625      	b.n	94c <JPEG_HuffmanTable_Read+0x238>
     d00:	2201      	movs	r2, #1
     d02:	4659      	mov	r1, fp
     d04:	4252      	negs	r2, r2
     d06:	62ca      	str	r2, [r1, #44]	@ 0x2c
     d08:	7ae2      	ldrb	r2, [r4, #11]
     d0a:	2a00      	cmp	r2, #0
     d0c:	d000      	beq.n	d10 <JPEG_HuffmanTable_Read+0x5fc>
     d0e:	e630      	b.n	972 <JPEG_HuffmanTable_Read+0x25e>
     d10:	2201      	movs	r2, #1
     d12:	4659      	mov	r1, fp
     d14:	4252      	negs	r2, r2
     d16:	630a      	str	r2, [r1, #48]	@ 0x30
     d18:	7b22      	ldrb	r2, [r4, #12]
     d1a:	2a00      	cmp	r2, #0
     d1c:	d000      	beq.n	d20 <JPEG_HuffmanTable_Read+0x60c>
     d1e:	e63b      	b.n	998 <JPEG_HuffmanTable_Read+0x284>
     d20:	2201      	movs	r2, #1
     d22:	4659      	mov	r1, fp
     d24:	4252      	negs	r2, r2
     d26:	634a      	str	r2, [r1, #52]	@ 0x34
     d28:	7b62      	ldrb	r2, [r4, #13]
     d2a:	2a00      	cmp	r2, #0
     d2c:	d000      	beq.n	d30 <JPEG_HuffmanTable_Read+0x61c>
     d2e:	e646      	b.n	9be <JPEG_HuffmanTable_Read+0x2aa>
     d30:	2201      	movs	r2, #1
     d32:	4659      	mov	r1, fp
     d34:	4252      	negs	r2, r2
     d36:	638a      	str	r2, [r1, #56]	@ 0x38
     d38:	7ba2      	ldrb	r2, [r4, #14]
     d3a:	2a00      	cmp	r2, #0
     d3c:	d000      	beq.n	d40 <JPEG_HuffmanTable_Read+0x62c>
     d3e:	e651      	b.n	9e4 <JPEG_HuffmanTable_Read+0x2d0>
     d40:	2201      	movs	r2, #1
     d42:	4659      	mov	r1, fp
     d44:	4252      	negs	r2, r2
     d46:	63ca      	str	r2, [r1, #60]	@ 0x3c
     d48:	7be2      	ldrb	r2, [r4, #15]
     d4a:	2a00      	cmp	r2, #0
     d4c:	d000      	beq.n	d50 <JPEG_HuffmanTable_Read+0x63c>
     d4e:	e65c      	b.n	a0a <JPEG_HuffmanTable_Read+0x2f6>
     d50:	2301      	movs	r3, #1
     d52:	425b      	negs	r3, r3
     d54:	e667      	b.n	a26 <JPEG_HuffmanTable_Read+0x312>
     d56:	46c0      	nop			@ (mov r8, r8)
     d58:	00000544 	andeq	r0, r0, r4, asr #10

00000d5c <JPEG_Decoder_ReadImage>:
     d5c:	b5f0      	push	{r4, r5, r6, r7, lr}
     d5e:	4657      	mov	r7, sl
     d60:	464e      	mov	r6, r9
     d62:	4645      	mov	r5, r8
     d64:	46de      	mov	lr, fp
     d66:	b5e0      	push	{r5, r6, r7, lr}
     d68:	4c20      	ldr	r4, [pc, #128]	@ (dec <JPEG_Decoder_ReadImage+0x90>)
     d6a:	44a5      	add	sp, r4
     d6c:	0016      	movs	r6, r2
     d6e:	9018      	str	r0, [sp, #96]	@ 0x60
     d70:	0002      	movs	r2, r0
     d72:	9325      	str	r3, [sp, #148]	@ 0x94
     d74:	0003      	movs	r3, r0
     d76:	481e      	ldr	r0, [pc, #120]	@ (df0 <JPEG_Decoder_ReadImage+0x94>)
     d78:	4684      	mov	ip, r0
     d7a:	4463      	add	r3, ip
     d7c:	4698      	mov	r8, r3
     d7e:	4b1d      	ldr	r3, [pc, #116]	@ (df4 <JPEG_Decoder_ReadImage+0x98>)
     d80:	469c      	mov	ip, r3
     d82:	0010      	movs	r0, r2
     d84:	4462      	add	r2, ip
     d86:	6a13      	ldr	r3, [r2, #32]
     d88:	009b      	lsls	r3, r3, #2
     d8a:	001c      	movs	r4, r3
     d8c:	2384      	movs	r3, #132	@ 0x84
     d8e:	00db      	lsls	r3, r3, #3
     d90:	58c3      	ldr	r3, [r0, r3]
     d92:	4444      	add	r4, r8
     d94:	9134      	str	r1, [sp, #208]	@ 0xd0
     d96:	9221      	str	r2, [sp, #132]	@ 0x84
     d98:	9404      	str	r4, [sp, #16]
     d9a:	680f      	ldr	r7, [r1, #0]
     d9c:	9320      	str	r3, [sp, #128]	@ 0x80
     d9e:	45a0      	cmp	r8, r4
     da0:	d301      	bcc.n	da6 <JPEG_Decoder_ReadImage+0x4a>
     da2:	f000 fe86 	bl	1ab2 <JPEG_Decoder_ReadImage+0xd56>
     da6:	2100      	movs	r1, #0
     da8:	4689      	mov	r9, r1
     daa:	9101      	str	r1, [sp, #4]
     dac:	3101      	adds	r1, #1
     dae:	2389      	movs	r3, #137	@ 0x89
     db0:	9112      	str	r1, [sp, #72]	@ 0x48
     db2:	9110      	str	r1, [sp, #64]	@ 0x40
     db4:	910f      	str	r1, [sp, #60]	@ 0x3c
     db6:	910d      	str	r1, [sp, #52]	@ 0x34
     db8:	2100      	movs	r1, #0
     dba:	00db      	lsls	r3, r3, #3
     dbc:	9111      	str	r1, [sp, #68]	@ 0x44
     dbe:	910e      	str	r1, [sp, #56]	@ 0x38
     dc0:	a982      	add	r1, sp, #520	@ 0x208
     dc2:	5cc3      	ldrb	r3, [r0, r3]
     dc4:	9115      	str	r1, [sp, #84]	@ 0x54
     dc6:	a93e      	add	r1, sp, #248	@ 0xf8
     dc8:	9106      	str	r1, [sp, #24]
     dca:	2189      	movs	r1, #137	@ 0x89
     dcc:	4684      	mov	ip, r0
     dce:	9305      	str	r3, [sp, #20]
     dd0:	2301      	movs	r3, #1
     dd2:	00c9      	lsls	r1, r1, #3
     dd4:	425b      	negs	r3, r3
     dd6:	4461      	add	r1, ip
     dd8:	4644      	mov	r4, r8
     dda:	469b      	mov	fp, r3
     ddc:	46b8      	mov	r8, r7
     dde:	46b2      	mov	sl, r6
     de0:	001f      	movs	r7, r3
     de2:	931c      	str	r3, [sp, #112]	@ 0x70
     de4:	9319      	str	r3, [sp, #100]	@ 0x64
     de6:	9107      	str	r1, [sp, #28]
     de8:	e011      	b.n	e0e <JPEG_Decoder_ReadImage+0xb2>
     dea:	46c0      	nop			@ (mov r8, r8)
     dec:	fffff164 			@ <UNDEFINED> instruction: 0xfffff164
     df0:	00000432 	andeq	r0, r0, r2, lsr r4
     df4:	00000424 	andeq	r0, r0, r4, lsr #8
     df8:	2d02      	cmp	r5, #2
     dfa:	d100      	bne.n	dfe <JPEG_Decoder_ReadImage+0xa2>
     dfc:	e261      	b.n	12c2 <JPEG_Decoder_ReadImage+0x566>
     dfe:	2d03      	cmp	r5, #3
     e00:	d101      	bne.n	e06 <JPEG_Decoder_ReadImage+0xaa>
     e02:	9212      	str	r2, [sp, #72]	@ 0x48
     e04:	9310      	str	r3, [sp, #64]	@ 0x40
     e06:	9b04      	ldr	r3, [sp, #16]
     e08:	3404      	adds	r4, #4
     e0a:	42a3      	cmp	r3, r4
     e0c:	d953      	bls.n	eb6 <JPEG_Decoder_ReadImage+0x15a>
     e0e:	7825      	ldrb	r5, [r4, #0]
     e10:	9b05      	ldr	r3, [sp, #20]
     e12:	429d      	cmp	r5, r3
     e14:	d100      	bne.n	e18 <JPEG_Decoder_ReadImage+0xbc>
     e16:	e25b      	b.n	12d0 <JPEG_Decoder_ReadImage+0x574>
     e18:	9a07      	ldr	r2, [sp, #28]
     e1a:	78d3      	ldrb	r3, [r2, #3]
     e1c:	42ab      	cmp	r3, r5
     e1e:	d100      	bne.n	e22 <JPEG_Decoder_ReadImage+0xc6>
     e20:	e252      	b.n	12c8 <JPEG_Decoder_ReadImage+0x56c>
     e22:	7993      	ldrb	r3, [r2, #6]
     e24:	1b5b      	subs	r3, r3, r5
     e26:	1e5a      	subs	r2, r3, #1
     e28:	4193      	sbcs	r3, r2
     e2a:	3302      	adds	r3, #2
     e2c:	001a      	movs	r2, r3
     e2e:	9302      	str	r3, [sp, #8]
     e30:	4694      	mov	ip, r2
     e32:	9918      	ldr	r1, [sp, #96]	@ 0x60
     e34:	0053      	lsls	r3, r2, #1
     e36:	4463      	add	r3, ip
     e38:	468c      	mov	ip, r1
     e3a:	4463      	add	r3, ip
     e3c:	001a      	movs	r2, r3
     e3e:	9303      	str	r3, [sp, #12]
     e40:	4bb8      	ldr	r3, [pc, #736]	@ (1124 <JPEG_Decoder_ReadImage+0x3c8>)
     e42:	5cd6      	ldrb	r6, [r2, r3]
     e44:	455e      	cmp	r6, fp
     e46:	d00e      	beq.n	e66 <JPEG_Decoder_ReadImage+0x10a>
     e48:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
     e4a:	429e      	cmp	r6, r3
     e4c:	d00b      	beq.n	e66 <JPEG_Decoder_ReadImage+0x10a>
     e4e:	1d33      	adds	r3, r6, #4
     e50:	009b      	lsls	r3, r3, #2
     e52:	585b      	ldr	r3, [r3, r1]
     e54:	9382      	str	r3, [sp, #520]	@ 0x208
     e56:	465b      	mov	r3, fp
     e58:	3301      	adds	r3, #1
     e5a:	d100      	bne.n	e5e <JPEG_Decoder_ReadImage+0x102>
     e5c:	e245      	b.n	12ea <JPEG_Decoder_ReadImage+0x58e>
     e5e:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
     e60:	3301      	adds	r3, #1
     e62:	d100      	bne.n	e66 <JPEG_Decoder_ReadImage+0x10a>
     e64:	e238      	b.n	12d8 <JPEG_Decoder_ReadImage+0x57c>
     e66:	4bb0      	ldr	r3, [pc, #704]	@ (1128 <JPEG_Decoder_ReadImage+0x3cc>)
     e68:	9a03      	ldr	r2, [sp, #12]
     e6a:	5cd6      	ldrb	r6, [r2, r3]
     e6c:	42be      	cmp	r6, r7
     e6e:	d00d      	beq.n	e8c <JPEG_Decoder_ReadImage+0x130>
     e70:	9b19      	ldr	r3, [sp, #100]	@ 0x64
     e72:	429e      	cmp	r6, r3
     e74:	d00a      	beq.n	e8c <JPEG_Decoder_ReadImage+0x130>
     e76:	9a18      	ldr	r2, [sp, #96]	@ 0x60
     e78:	00b3      	lsls	r3, r6, #2
     e7a:	589b      	ldr	r3, [r3, r2]
     e7c:	9382      	str	r3, [sp, #520]	@ 0x208
     e7e:	1c7b      	adds	r3, r7, #1
     e80:	d100      	bne.n	e84 <JPEG_Decoder_ReadImage+0x128>
     e82:	e244      	b.n	130e <JPEG_Decoder_ReadImage+0x5b2>
     e84:	9b19      	ldr	r3, [sp, #100]	@ 0x64
     e86:	3301      	adds	r3, #1
     e88:	d100      	bne.n	e8c <JPEG_Decoder_ReadImage+0x130>
     e8a:	e237      	b.n	12fc <JPEG_Decoder_ReadImage+0x5a0>
     e8c:	9b02      	ldr	r3, [sp, #8]
     e8e:	9a06      	ldr	r2, [sp, #24]
     e90:	009b      	lsls	r3, r3, #2
     e92:	50d4      	str	r4, [r2, r3]
     e94:	7863      	ldrb	r3, [r4, #1]
     e96:	78a2      	ldrb	r2, [r4, #2]
     e98:	4599      	cmp	r9, r3
     e9a:	da00      	bge.n	e9e <JPEG_Decoder_ReadImage+0x142>
     e9c:	4699      	mov	r9, r3
     e9e:	9901      	ldr	r1, [sp, #4]
     ea0:	4291      	cmp	r1, r2
     ea2:	da00      	bge.n	ea6 <JPEG_Decoder_ReadImage+0x14a>
     ea4:	9201      	str	r2, [sp, #4]
     ea6:	2d01      	cmp	r5, #1
     ea8:	d1a6      	bne.n	df8 <JPEG_Decoder_ReadImage+0x9c>
     eaa:	930e      	str	r3, [sp, #56]	@ 0x38
     eac:	9b04      	ldr	r3, [sp, #16]
     eae:	3404      	adds	r4, #4
     eb0:	9211      	str	r2, [sp, #68]	@ 0x44
     eb2:	42a3      	cmp	r3, r4
     eb4:	d8ab      	bhi.n	e0e <JPEG_Decoder_ReadImage+0xb2>
     eb6:	9b11      	ldr	r3, [sp, #68]	@ 0x44
     eb8:	469c      	mov	ip, r3
     eba:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
     ebc:	4663      	mov	r3, ip
     ebe:	4353      	muls	r3, r2
     ec0:	9a15      	ldr	r2, [sp, #84]	@ 0x54
     ec2:	4694      	mov	ip, r2
     ec4:	019b      	lsls	r3, r3, #6
     ec6:	4463      	add	r3, ip
     ec8:	001a      	movs	r2, r3
     eca:	931a      	str	r3, [sp, #104]	@ 0x68
     ecc:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
     ece:	469c      	mov	ip, r3
     ed0:	990d      	ldr	r1, [sp, #52]	@ 0x34
     ed2:	4663      	mov	r3, ip
     ed4:	434b      	muls	r3, r1
     ed6:	4694      	mov	ip, r2
     ed8:	019b      	lsls	r3, r3, #6
     eda:	4463      	add	r3, ip
     edc:	931b      	str	r3, [sp, #108]	@ 0x6c
     ede:	464b      	mov	r3, r9
     ee0:	4647      	mov	r7, r8
     ee2:	4656      	mov	r6, sl
     ee4:	2b01      	cmp	r3, #1
     ee6:	d100      	bne.n	eea <JPEG_Decoder_ReadImage+0x18e>
     ee8:	e23f      	b.n	136a <JPEG_Decoder_ReadImage+0x60e>
     eea:	2b02      	cmp	r3, #2
     eec:	d100      	bne.n	ef0 <JPEG_Decoder_ReadImage+0x194>
     eee:	e215      	b.n	131c <JPEG_Decoder_ReadImage+0x5c0>
     ef0:	464a      	mov	r2, r9
     ef2:	2300      	movs	r3, #0
     ef4:	2a04      	cmp	r2, #4
     ef6:	d000      	beq.n	efa <JPEG_Decoder_ReadImage+0x19e>
     ef8:	e21d      	b.n	1336 <JPEG_Decoder_ReadImage+0x5da>
     efa:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
     efc:	019b      	lsls	r3, r3, #6
     efe:	930e      	str	r3, [sp, #56]	@ 0x38
     f00:	3b01      	subs	r3, #1
     f02:	3bff      	subs	r3, #255	@ 0xff
     f04:	425a      	negs	r2, r3
     f06:	4153      	adcs	r3, r2
     f08:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
     f0a:	0192      	lsls	r2, r2, #6
     f0c:	920d      	str	r2, [sp, #52]	@ 0x34
     f0e:	9a10      	ldr	r2, [sp, #64]	@ 0x40
     f10:	0192      	lsls	r2, r2, #6
     f12:	9210      	str	r2, [sp, #64]	@ 0x40
     f14:	9a01      	ldr	r2, [sp, #4]
     f16:	2a01      	cmp	r2, #1
     f18:	d000      	beq.n	f1c <JPEG_Decoder_ReadImage+0x1c0>
     f1a:	e210      	b.n	133e <JPEG_Decoder_ReadImage+0x5e2>
     f1c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
     f1e:	0212      	lsls	r2, r2, #8
     f20:	1e54      	subs	r4, r2, #1
     f22:	3cff      	subs	r4, #255	@ 0xff
     f24:	9211      	str	r2, [sp, #68]	@ 0x44
     f26:	4262      	negs	r2, r4
     f28:	4154      	adcs	r4, r2
     f2a:	401c      	ands	r4, r3
     f2c:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
     f2e:	021b      	lsls	r3, r3, #8
     f30:	930f      	str	r3, [sp, #60]	@ 0x3c
     f32:	9b12      	ldr	r3, [sp, #72]	@ 0x48
     f34:	021b      	lsls	r3, r3, #8
     f36:	9312      	str	r3, [sp, #72]	@ 0x48
     f38:	2240      	movs	r2, #64	@ 0x40
     f3a:	2100      	movs	r1, #0
     f3c:	981a      	ldr	r0, [sp, #104]	@ 0x68
     f3e:	f7ff fffe 	bl	0 <memset>
     f42:	2240      	movs	r2, #64	@ 0x40
     f44:	2100      	movs	r1, #0
     f46:	981b      	ldr	r0, [sp, #108]	@ 0x6c
     f48:	f7ff fffe 	bl	0 <memset>
     f4c:	2300      	movs	r3, #0
     f4e:	931f      	str	r3, [sp, #124]	@ 0x7c
     f50:	2c00      	cmp	r4, #0
     f52:	d013      	beq.n	f7c <JPEG_Decoder_ReadImage+0x220>
     f54:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
     f56:	2b80      	cmp	r3, #128	@ 0x80
     f58:	d001      	beq.n	f5e <JPEG_Decoder_ReadImage+0x202>
     f5a:	f000 fd94 	bl	1a86 <JPEG_Decoder_ReadImage+0xd2a>
     f5e:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
     f60:	2b80      	cmp	r3, #128	@ 0x80
     f62:	d001      	beq.n	f68 <JPEG_Decoder_ReadImage+0x20c>
     f64:	f000 fd8f 	bl	1a86 <JPEG_Decoder_ReadImage+0xd2a>
     f68:	9b10      	ldr	r3, [sp, #64]	@ 0x40
     f6a:	3b80      	subs	r3, #128	@ 0x80
     f6c:	425a      	negs	r2, r3
     f6e:	4153      	adcs	r3, r2
     f70:	9a12      	ldr	r2, [sp, #72]	@ 0x48
     f72:	3a80      	subs	r2, #128	@ 0x80
     f74:	4251      	negs	r1, r2
     f76:	414a      	adcs	r2, r1
     f78:	401a      	ands	r2, r3
     f7a:	921f      	str	r2, [sp, #124]	@ 0x7c
     f7c:	2300      	movs	r3, #0
     f7e:	2200      	movs	r2, #0
     f80:	923a      	str	r2, [sp, #232]	@ 0xe8
     f82:	933b      	str	r3, [sp, #236]	@ 0xec
     f84:	923c      	str	r2, [sp, #240]	@ 0xf0
     f86:	933d      	str	r3, [sp, #244]	@ 0xf4
     f88:	9921      	ldr	r1, [sp, #132]	@ 0x84
     f8a:	894b      	ldrh	r3, [r1, #10]
     f8c:	2b00      	cmp	r3, #0
     f8e:	d100      	bne.n	f92 <JPEG_Decoder_ReadImage+0x236>
     f90:	e3df      	b.n	1752 <JPEG_Decoder_ReadImage+0x9f6>
     f92:	9801      	ldr	r0, [sp, #4]
     f94:	00c4      	lsls	r4, r0, #3
     f96:	980e      	ldr	r0, [sp, #56]	@ 0x38
     f98:	464a      	mov	r2, r9
     f9a:	4684      	mov	ip, r0
     f9c:	00d2      	lsls	r2, r2, #3
     f9e:	4660      	mov	r0, ip
     fa0:	4350      	muls	r0, r2
     fa2:	902b      	str	r0, [sp, #172]	@ 0xac
     fa4:	980d      	ldr	r0, [sp, #52]	@ 0x34
     fa6:	4684      	mov	ip, r0
     fa8:	4660      	mov	r0, ip
     faa:	4350      	muls	r0, r2
     fac:	902c      	str	r0, [sp, #176]	@ 0xb0
     fae:	9810      	ldr	r0, [sp, #64]	@ 0x40
     fb0:	4684      	mov	ip, r0
     fb2:	4660      	mov	r0, ip
     fb4:	4350      	muls	r0, r2
     fb6:	9223      	str	r2, [sp, #140]	@ 0x8c
     fb8:	9a25      	ldr	r2, [sp, #148]	@ 0x94
     fba:	941e      	str	r4, [sp, #120]	@ 0x78
     fbc:	902d      	str	r0, [sp, #180]	@ 0xb4
     fbe:	0050      	lsls	r0, r2, #1
     fc0:	8989      	ldrh	r1, [r1, #12]
     fc2:	902f      	str	r0, [sp, #188]	@ 0xbc
     fc4:	4648      	mov	r0, r9
     fc6:	4694      	mov	ip, r2
     fc8:	0092      	lsls	r2, r2, #2
     fca:	922e      	str	r2, [sp, #184]	@ 0xb8
     fcc:	2200      	movs	r2, #0
     fce:	0100      	lsls	r0, r0, #4
     fd0:	4665      	mov	r5, ip
     fd2:	4365      	muls	r5, r4
     fd4:	9030      	str	r0, [sp, #192]	@ 0xc0
     fd6:	1a34      	subs	r4, r6, r0
     fd8:	4854      	ldr	r0, [pc, #336]	@ (112c <JPEG_Decoder_ReadImage+0x3d0>)
     fda:	9701      	str	r7, [sp, #4]
     fdc:	4680      	mov	r8, r0
     fde:	0037      	movs	r7, r6
     fe0:	0026      	movs	r6, r4
     fe2:	0014      	movs	r4, r2
     fe4:	9208      	str	r2, [sp, #32]
     fe6:	9203      	str	r2, [sp, #12]
     fe8:	2900      	cmp	r1, #0
     fea:	d101      	bne.n	ff0 <JPEG_Decoder_ReadImage+0x294>
     fec:	f000 fc5a 	bl	18a4 <JPEG_Decoder_ReadImage+0xb48>
     ff0:	991e      	ldr	r1, [sp, #120]	@ 0x78
     ff2:	0013      	movs	r3, r2
     ff4:	468c      	mov	ip, r1
     ff6:	4463      	add	r3, ip
     ff8:	9322      	str	r3, [sp, #136]	@ 0x88
     ffa:	0063      	lsls	r3, r4, #1
     ffc:	18fa      	adds	r2, r7, r3
     ffe:	9232      	str	r2, [sp, #200]	@ 0xc8
    1000:	2289      	movs	r2, #137	@ 0x89
    1002:	199b      	adds	r3, r3, r6
    1004:	9333      	str	r3, [sp, #204]	@ 0xcc
    1006:	2300      	movs	r3, #0
    1008:	00d2      	lsls	r2, r2, #3
    100a:	4694      	mov	ip, r2
    100c:	469a      	mov	sl, r3
    100e:	9b18      	ldr	r3, [sp, #96]	@ 0x60
    1010:	4463      	add	r3, ip
    1012:	469b      	mov	fp, r3
    1014:	4653      	mov	r3, sl
    1016:	931d      	str	r3, [sp, #116]	@ 0x74
    1018:	465b      	mov	r3, fp
    101a:	9736      	str	r7, [sp, #216]	@ 0xd8
    101c:	46a2      	mov	sl, r4
    101e:	46a9      	mov	r9, r5
    1020:	0037      	movs	r7, r6
    1022:	9327      	str	r3, [sp, #156]	@ 0x9c
    1024:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    1026:	68db      	ldr	r3, [r3, #12]
    1028:	2b00      	cmp	r3, #0
    102a:	dc00      	bgt.n	102e <JPEG_Decoder_ReadImage+0x2d2>
    102c:	e26e      	b.n	150c <JPEG_Decoder_ReadImage+0x7b0>
    102e:	4b3d      	ldr	r3, [pc, #244]	@ (1124 <JPEG_Decoder_ReadImage+0x3c8>)
    1030:	469c      	mov	ip, r3
    1032:	2300      	movs	r3, #0
    1034:	469b      	mov	fp, r3
    1036:	ab3e      	add	r3, sp, #248	@ 0xf8
    1038:	9337      	str	r3, [sp, #220]	@ 0xdc
    103a:	464b      	mov	r3, r9
    103c:	46d9      	mov	r9, fp
    103e:	9c18      	ldr	r4, [sp, #96]	@ 0x60
    1040:	9739      	str	r7, [sp, #228]	@ 0xe4
    1042:	9e01      	ldr	r6, [sp, #4]
    1044:	9d03      	ldr	r5, [sp, #12]
    1046:	9338      	str	r3, [sp, #224]	@ 0xe0
    1048:	9f08      	ldr	r7, [sp, #32]
    104a:	4464      	add	r4, ip
    104c:	464b      	mov	r3, r9
    104e:	9a37      	ldr	r2, [sp, #220]	@ 0xdc
    1050:	009b      	lsls	r3, r3, #2
    1052:	58d1      	ldr	r1, [r2, r3]
    1054:	9a18      	ldr	r2, [sp, #96]	@ 0x60
    1056:	4693      	mov	fp, r2
    1058:	9109      	str	r1, [sp, #36]	@ 0x24
    105a:	930a      	str	r3, [sp, #40]	@ 0x28
    105c:	78cb      	ldrb	r3, [r1, #3]
    105e:	021b      	lsls	r3, r3, #8
    1060:	3320      	adds	r3, #32
    1062:	449b      	add	fp, r3
    1064:	784b      	ldrb	r3, [r1, #1]
    1066:	00da      	lsls	r2, r3, #3
    1068:	981c      	ldr	r0, [sp, #112]	@ 0x70
    106a:	9214      	str	r2, [sp, #80]	@ 0x50
    106c:	7822      	ldrb	r2, [r4, #0]
    106e:	1a12      	subs	r2, r2, r0
    1070:	4250      	negs	r0, r2
    1072:	4150      	adcs	r0, r2
    1074:	7862      	ldrb	r2, [r4, #1]
    1076:	9026      	str	r0, [sp, #152]	@ 0x98
    1078:	9819      	ldr	r0, [sp, #100]	@ 0x64
    107a:	1a12      	subs	r2, r2, r0
    107c:	4250      	negs	r0, r2
    107e:	4150      	adcs	r0, r2
    1080:	780a      	ldrb	r2, [r1, #0]
    1082:	9915      	ldr	r1, [sp, #84]	@ 0x54
    1084:	900b      	str	r0, [sp, #44]	@ 0x2c
    1086:	9108      	str	r1, [sp, #32]
    1088:	2a01      	cmp	r2, #1
    108a:	d00a      	beq.n	10a2 <JPEG_Decoder_ReadImage+0x346>
    108c:	991a      	ldr	r1, [sp, #104]	@ 0x68
    108e:	9108      	str	r1, [sp, #32]
    1090:	2a02      	cmp	r2, #2
    1092:	d006      	beq.n	10a2 <JPEG_Decoder_ReadImage+0x346>
    1094:	3a03      	subs	r2, #3
    1096:	4251      	negs	r1, r2
    1098:	414a      	adcs	r2, r1
    109a:	991b      	ldr	r1, [sp, #108]	@ 0x6c
    109c:	4252      	negs	r2, r2
    109e:	4011      	ands	r1, r2
    10a0:	9108      	str	r1, [sp, #32]
    10a2:	9a09      	ldr	r2, [sp, #36]	@ 0x24
    10a4:	7892      	ldrb	r2, [r2, #2]
    10a6:	2a00      	cmp	r2, #0
    10a8:	d100      	bne.n	10ac <JPEG_Decoder_ReadImage+0x350>
    10aa:	e220      	b.n	14ee <JPEG_Decoder_ReadImage+0x792>
    10ac:	00da      	lsls	r2, r3, #3
    10ae:	9926      	ldr	r1, [sp, #152]	@ 0x98
    10b0:	00d2      	lsls	r2, r2, #3
    10b2:	9231      	str	r2, [sp, #196]	@ 0xc4
    10b4:	2200      	movs	r2, #0
    10b6:	468c      	mov	ip, r1
    10b8:	9213      	str	r2, [sp, #76]	@ 0x4c
    10ba:	9224      	str	r2, [sp, #144]	@ 0x90
    10bc:	008a      	lsls	r2, r1, #2
    10be:	4462      	add	r2, ip
    10c0:	0152      	lsls	r2, r2, #5
    10c2:	9235      	str	r2, [sp, #212]	@ 0xd4
    10c4:	464a      	mov	r2, r9
    10c6:	9228      	str	r2, [sp, #160]	@ 0xa0
    10c8:	4652      	mov	r2, sl
    10ca:	922a      	str	r2, [sp, #168]	@ 0xa8
    10cc:	4642      	mov	r2, r8
    10ce:	9429      	str	r4, [sp, #164]	@ 0xa4
    10d0:	9202      	str	r2, [sp, #8]
    10d2:	2b00      	cmp	r3, #0
    10d4:	d100      	bne.n	10d8 <JPEG_Decoder_ReadImage+0x37c>
    10d6:	e203      	b.n	14e0 <JPEG_Decoder_ReadImage+0x784>
    10d8:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
    10da:	ab3a      	add	r3, sp, #232	@ 0xe8
    10dc:	589b      	ldr	r3, [r3, r2]
    10de:	9305      	str	r3, [sp, #20]
    10e0:	2300      	movs	r3, #0
    10e2:	9306      	str	r3, [sp, #24]
    10e4:	ab3a      	add	r3, sp, #232	@ 0xe8
    10e6:	469c      	mov	ip, r3
    10e8:	abff      	add	r3, sp, #1020	@ 0x3fc
    10ea:	338c      	adds	r3, #140	@ 0x8c
    10ec:	9303      	str	r3, [sp, #12]
    10ee:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
    10f0:	009b      	lsls	r3, r3, #2
    10f2:	4a0f      	ldr	r2, [pc, #60]	@ (1130 <JPEG_Decoder_ReadImage+0x3d4>)
    10f4:	930c      	str	r3, [sp, #48]	@ 0x30
    10f6:	9926      	ldr	r1, [sp, #152]	@ 0x98
    10f8:	23ff      	movs	r3, #255	@ 0xff
    10fa:	4462      	add	r2, ip
    10fc:	468c      	mov	ip, r1
    10fe:	4692      	mov	sl, r2
    1100:	4699      	mov	r9, r3
    1102:	9b35      	ldr	r3, [sp, #212]	@ 0xd4
    1104:	4463      	add	r3, ip
    1106:	9316      	str	r3, [sp, #88]	@ 0x58
    1108:	009b      	lsls	r3, r3, #2
    110a:	449a      	add	sl, r3
    110c:	230f      	movs	r3, #15
    110e:	4698      	mov	r8, r3
    1110:	9217      	str	r2, [sp, #92]	@ 0x5c
    1112:	22fc      	movs	r2, #252	@ 0xfc
    1114:	2100      	movs	r1, #0
    1116:	a843      	add	r0, sp, #268	@ 0x10c
    1118:	f7ff fffe 	bl	0 <memset>
    111c:	2d18      	cmp	r5, #24
    111e:	d900      	bls.n	1122 <JPEG_Decoder_ReadImage+0x3c6>
    1120:	e395      	b.n	184e <JPEG_Decoder_ReadImage+0xaf2>
    1122:	e007      	b.n	1134 <JPEG_Decoder_ReadImage+0x3d8>
    1124:	00000449 	andeq	r0, r0, r9, asr #8
    1128:	0000044a 	andeq	r0, r0, sl, asr #8
    112c:	000000fc 	strdeq	r0, [r0], -ip
    1130:	000008a8 	andeq	r0, r0, r8, lsr #17
    1134:	7833      	ldrb	r3, [r6, #0]
    1136:	023f      	lsls	r7, r7, #8
    1138:	431f      	orrs	r7, r3
    113a:	3bff      	subs	r3, #255	@ 0xff
    113c:	425a      	negs	r2, r3
    113e:	4153      	adcs	r3, r2
    1140:	002a      	movs	r2, r5
    1142:	18f3      	adds	r3, r6, r3
    1144:	3208      	adds	r2, #8
    1146:	1c5e      	adds	r6, r3, #1
    1148:	2a18      	cmp	r2, #24
    114a:	d81d      	bhi.n	1188 <JPEG_Decoder_ReadImage+0x42c>
    114c:	785b      	ldrb	r3, [r3, #1]
    114e:	023f      	lsls	r7, r7, #8
    1150:	431f      	orrs	r7, r3
    1152:	3bff      	subs	r3, #255	@ 0xff
    1154:	425a      	negs	r2, r3
    1156:	4153      	adcs	r3, r2
    1158:	002a      	movs	r2, r5
    115a:	18f3      	adds	r3, r6, r3
    115c:	3210      	adds	r2, #16
    115e:	1c5e      	adds	r6, r3, #1
    1160:	2a18      	cmp	r2, #24
    1162:	d811      	bhi.n	1188 <JPEG_Decoder_ReadImage+0x42c>
    1164:	785b      	ldrb	r3, [r3, #1]
    1166:	023f      	lsls	r7, r7, #8
    1168:	431f      	orrs	r7, r3
    116a:	3bff      	subs	r3, #255	@ 0xff
    116c:	425a      	negs	r2, r3
    116e:	4153      	adcs	r3, r2
    1170:	18f3      	adds	r3, r6, r3
    1172:	1c5e      	adds	r6, r3, #1
    1174:	2d00      	cmp	r5, #0
    1176:	d107      	bne.n	1188 <JPEG_Decoder_ReadImage+0x42c>
    1178:	785b      	ldrb	r3, [r3, #1]
    117a:	023f      	lsls	r7, r7, #8
    117c:	431f      	orrs	r7, r3
    117e:	3bff      	subs	r3, #255	@ 0xff
    1180:	425a      	negs	r2, r3
    1182:	4153      	adcs	r3, r2
    1184:	18f3      	adds	r3, r6, r3
    1186:	1c5e      	adds	r6, r3, #1
    1188:	2218      	movs	r2, #24
    118a:	2307      	movs	r3, #7
    118c:	1b52      	subs	r2, r2, r5
    118e:	439a      	bics	r2, r3
    1190:	1952      	adds	r2, r2, r5
    1192:	0015      	movs	r5, r2
    1194:	3508      	adds	r5, #8
    1196:	0039      	movs	r1, r7
    1198:	464b      	mov	r3, r9
    119a:	40d1      	lsrs	r1, r2
    119c:	4019      	ands	r1, r3
    119e:	4653      	mov	r3, sl
    11a0:	185b      	adds	r3, r3, r1
    11a2:	0018      	movs	r0, r3
    11a4:	3084      	adds	r0, #132	@ 0x84
    11a6:	7800      	ldrb	r0, [r0, #0]
    11a8:	2800      	cmp	r0, #0
    11aa:	d100      	bne.n	11ae <JPEG_Decoder_ReadImage+0x452>
    11ac:	e2e5      	b.n	177a <JPEG_Decoder_ReadImage+0xa1e>
    11ae:	3385      	adds	r3, #133	@ 0x85
    11b0:	33ff      	adds	r3, #255	@ 0xff
    11b2:	7819      	ldrb	r1, [r3, #0]
    11b4:	1a2d      	subs	r5, r5, r0
    11b6:	2201      	movs	r2, #1
    11b8:	003b      	movs	r3, r7
    11ba:	408a      	lsls	r2, r1
    11bc:	1a6d      	subs	r5, r5, r1
    11be:	40eb      	lsrs	r3, r5
    11c0:	2401      	movs	r4, #1
    11c2:	3a01      	subs	r2, #1
    11c4:	4013      	ands	r3, r2
    11c6:	1e4a      	subs	r2, r1, #1
    11c8:	4094      	lsls	r4, r2
    11ca:	42a3      	cmp	r3, r4
    11cc:	d204      	bcs.n	11d8 <JPEG_Decoder_ReadImage+0x47c>
    11ce:	2201      	movs	r2, #1
    11d0:	4252      	negs	r2, r2
    11d2:	408a      	lsls	r2, r1
    11d4:	3201      	adds	r2, #1
    11d6:	189b      	adds	r3, r3, r2
    11d8:	9a05      	ldr	r2, [sp, #20]
    11da:	4694      	mov	ip, r2
    11dc:	449c      	add	ip, r3
    11de:	4662      	mov	r2, ip
    11e0:	990a      	ldr	r1, [sp, #40]	@ 0x28
    11e2:	ab3a      	add	r3, sp, #232	@ 0xe8
    11e4:	505a      	str	r2, [r3, r1]
    11e6:	465b      	mov	r3, fp
    11e8:	681b      	ldr	r3, [r3, #0]
    11ea:	9205      	str	r2, [sp, #20]
    11ec:	435a      	muls	r2, r3
    11ee:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
    11f0:	469c      	mov	ip, r3
    11f2:	980c      	ldr	r0, [sp, #48]	@ 0x30
    11f4:	9b03      	ldr	r3, [sp, #12]
    11f6:	4460      	add	r0, ip
    11f8:	0140      	lsls	r0, r0, #5
    11fa:	4460      	add	r0, ip
    11fc:	9242      	str	r2, [sp, #264]	@ 0x108
    11fe:	469c      	mov	ip, r3
    1200:	2201      	movs	r2, #1
    1202:	4653      	mov	r3, sl
    1204:	0081      	lsls	r1, r0, #2
    1206:	9004      	str	r0, [sp, #16]
    1208:	9201      	str	r2, [sp, #4]
    120a:	9307      	str	r3, [sp, #28]
    120c:	4461      	add	r1, ip
    120e:	2d18      	cmp	r5, #24
    1210:	d94d      	bls.n	12ae <JPEG_Decoder_ReadImage+0x552>
    1212:	002b      	movs	r3, r5
    1214:	0038      	movs	r0, r7
    1216:	3b08      	subs	r3, #8
    1218:	40d8      	lsrs	r0, r3
    121a:	2484      	movs	r4, #132	@ 0x84
    121c:	0003      	movs	r3, r0
    121e:	4648      	mov	r0, r9
    1220:	46a4      	mov	ip, r4
    1222:	4003      	ands	r3, r0
    1224:	18c8      	adds	r0, r1, r3
    1226:	4484      	add	ip, r0
    1228:	4664      	mov	r4, ip
    122a:	7824      	ldrb	r4, [r4, #0]
    122c:	2c00      	cmp	r4, #0
    122e:	d100      	bne.n	1232 <JPEG_Decoder_ReadImage+0x4d6>
    1230:	e0af      	b.n	1392 <JPEG_Decoder_ReadImage+0x636>
    1232:	3085      	adds	r0, #133	@ 0x85
    1234:	30ff      	adds	r0, #255	@ 0xff
    1236:	7803      	ldrb	r3, [r0, #0]
    1238:	469c      	mov	ip, r3
    123a:	1b2d      	subs	r5, r5, r4
    123c:	4664      	mov	r4, ip
    123e:	4640      	mov	r0, r8
    1240:	4663      	mov	r3, ip
    1242:	4020      	ands	r0, r4
    1244:	4662      	mov	r2, ip
    1246:	4644      	mov	r4, r8
    1248:	111b      	asrs	r3, r3, #4
    124a:	4214      	tst	r4, r2
    124c:	d100      	bne.n	1250 <JPEG_Decoder_ReadImage+0x4f4>
    124e:	e099      	b.n	1384 <JPEG_Decoder_ReadImage+0x628>
    1250:	9a01      	ldr	r2, [sp, #4]
    1252:	4694      	mov	ip, r2
    1254:	2201      	movs	r2, #1
    1256:	003c      	movs	r4, r7
    1258:	4082      	lsls	r2, r0
    125a:	1a2d      	subs	r5, r5, r0
    125c:	40ec      	lsrs	r4, r5
    125e:	3a01      	subs	r2, #1
    1260:	4014      	ands	r4, r2
    1262:	4463      	add	r3, ip
    1264:	46a4      	mov	ip, r4
    1266:	2401      	movs	r4, #1
    1268:	1e42      	subs	r2, r0, #1
    126a:	4094      	lsls	r4, r2
    126c:	45a4      	cmp	ip, r4
    126e:	d204      	bcs.n	127a <JPEG_Decoder_ReadImage+0x51e>
    1270:	2201      	movs	r2, #1
    1272:	4252      	negs	r2, r2
    1274:	4082      	lsls	r2, r0
    1276:	3201      	adds	r2, #1
    1278:	4494      	add	ip, r2
    127a:	20db      	movs	r0, #219	@ 0xdb
    127c:	9a02      	ldr	r2, [sp, #8]
    127e:	5cd2      	ldrb	r2, [r2, r3]
    1280:	0100      	lsls	r0, r0, #4
    1282:	0092      	lsls	r2, r2, #2
    1284:	1812      	adds	r2, r2, r0
    1286:	a83a      	add	r0, sp, #232	@ 0xe8
    1288:	4682      	mov	sl, r0
    128a:	465c      	mov	r4, fp
    128c:	487a      	ldr	r0, [pc, #488]	@ (1478 <JPEG_Decoder_ReadImage+0x71c>)
    128e:	4452      	add	r2, sl
    1290:	4682      	mov	sl, r0
    1292:	0098      	lsls	r0, r3, #2
    1294:	5900      	ldr	r0, [r0, r4]
    1296:	0004      	movs	r4, r0
    1298:	4660      	mov	r0, ip
    129a:	4360      	muls	r0, r4
    129c:	4452      	add	r2, sl
    129e:	6010      	str	r0, [r2, #0]
    12a0:	2b3f      	cmp	r3, #63	@ 0x3f
    12a2:	d100      	bne.n	12a6 <JPEG_Decoder_ReadImage+0x54a>
    12a4:	e0f0      	b.n	1488 <JPEG_Decoder_ReadImage+0x72c>
    12a6:	3301      	adds	r3, #1
    12a8:	9301      	str	r3, [sp, #4]
    12aa:	2d18      	cmp	r5, #24
    12ac:	d8b1      	bhi.n	1212 <JPEG_Decoder_ReadImage+0x4b6>
    12ae:	7833      	ldrb	r3, [r6, #0]
    12b0:	023f      	lsls	r7, r7, #8
    12b2:	431f      	orrs	r7, r3
    12b4:	3bff      	subs	r3, #255	@ 0xff
    12b6:	4258      	negs	r0, r3
    12b8:	4143      	adcs	r3, r0
    12ba:	18f3      	adds	r3, r6, r3
    12bc:	1c5e      	adds	r6, r3, #1
    12be:	3508      	adds	r5, #8
    12c0:	e7a5      	b.n	120e <JPEG_Decoder_ReadImage+0x4b2>
    12c2:	920f      	str	r2, [sp, #60]	@ 0x3c
    12c4:	930d      	str	r3, [sp, #52]	@ 0x34
    12c6:	e59e      	b.n	e06 <JPEG_Decoder_ReadImage+0xaa>
    12c8:	2301      	movs	r3, #1
    12ca:	001a      	movs	r2, r3
    12cc:	9302      	str	r3, [sp, #8]
    12ce:	e5af      	b.n	e30 <JPEG_Decoder_ReadImage+0xd4>
    12d0:	2300      	movs	r3, #0
    12d2:	001a      	movs	r2, r3
    12d4:	9302      	str	r3, [sp, #8]
    12d6:	e5ab      	b.n	e30 <JPEG_Decoder_ReadImage+0xd4>
    12d8:	ab3a      	add	r3, sp, #232	@ 0xe8
    12da:	469c      	mov	ip, r3
    12dc:	4867      	ldr	r0, [pc, #412]	@ (147c <JPEG_Decoder_ReadImage+0x720>)
    12de:	9915      	ldr	r1, [sp, #84]	@ 0x54
    12e0:	4460      	add	r0, ip
    12e2:	f7ff fffe 	bl	714 <JPEG_HuffmanTable_Read>
    12e6:	961c      	str	r6, [sp, #112]	@ 0x70
    12e8:	e5bd      	b.n	e66 <JPEG_Decoder_ReadImage+0x10a>
    12ea:	ab3a      	add	r3, sp, #232	@ 0xe8
    12ec:	469c      	mov	ip, r3
    12ee:	4864      	ldr	r0, [pc, #400]	@ (1480 <JPEG_Decoder_ReadImage+0x724>)
    12f0:	9915      	ldr	r1, [sp, #84]	@ 0x54
    12f2:	4460      	add	r0, ip
    12f4:	f7ff fffe 	bl	714 <JPEG_HuffmanTable_Read>
    12f8:	46b3      	mov	fp, r6
    12fa:	e5b4      	b.n	e66 <JPEG_Decoder_ReadImage+0x10a>
    12fc:	ab3a      	add	r3, sp, #232	@ 0xe8
    12fe:	469c      	mov	ip, r3
    1300:	4860      	ldr	r0, [pc, #384]	@ (1484 <JPEG_Decoder_ReadImage+0x728>)
    1302:	9915      	ldr	r1, [sp, #84]	@ 0x54
    1304:	4460      	add	r0, ip
    1306:	f7ff fffe 	bl	714 <JPEG_HuffmanTable_Read>
    130a:	9619      	str	r6, [sp, #100]	@ 0x64
    130c:	e5be      	b.n	e8c <JPEG_Decoder_ReadImage+0x130>
    130e:	a8ff      	add	r0, sp, #1020	@ 0x3fc
    1310:	9915      	ldr	r1, [sp, #84]	@ 0x54
    1312:	308c      	adds	r0, #140	@ 0x8c
    1314:	f7ff fffe 	bl	714 <JPEG_HuffmanTable_Read>
    1318:	0037      	movs	r7, r6
    131a:	e5b7      	b.n	e8c <JPEG_Decoder_ReadImage+0x130>
    131c:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
    131e:	01db      	lsls	r3, r3, #7
    1320:	930e      	str	r3, [sp, #56]	@ 0x38
    1322:	3b01      	subs	r3, #1
    1324:	3bff      	subs	r3, #255	@ 0xff
    1326:	425a      	negs	r2, r3
    1328:	4153      	adcs	r3, r2
    132a:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
    132c:	01d2      	lsls	r2, r2, #7
    132e:	920d      	str	r2, [sp, #52]	@ 0x34
    1330:	9a10      	ldr	r2, [sp, #64]	@ 0x40
    1332:	01d2      	lsls	r2, r2, #7
    1334:	9210      	str	r2, [sp, #64]	@ 0x40
    1336:	9a01      	ldr	r2, [sp, #4]
    1338:	2a01      	cmp	r2, #1
    133a:	d100      	bne.n	133e <JPEG_Decoder_ReadImage+0x5e2>
    133c:	e5ee      	b.n	f1c <JPEG_Decoder_ReadImage+0x1c0>
    133e:	2a02      	cmp	r2, #2
    1340:	d100      	bne.n	1344 <JPEG_Decoder_ReadImage+0x5e8>
    1342:	e3a4      	b.n	1a8e <JPEG_Decoder_ReadImage+0xd32>
    1344:	2400      	movs	r4, #0
    1346:	2a04      	cmp	r2, #4
    1348:	d000      	beq.n	134c <JPEG_Decoder_ReadImage+0x5f0>
    134a:	e5f5      	b.n	f38 <JPEG_Decoder_ReadImage+0x1dc>
    134c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
    134e:	0192      	lsls	r2, r2, #6
    1350:	1e54      	subs	r4, r2, #1
    1352:	3cff      	subs	r4, #255	@ 0xff
    1354:	9211      	str	r2, [sp, #68]	@ 0x44
    1356:	4262      	negs	r2, r4
    1358:	4154      	adcs	r4, r2
    135a:	401c      	ands	r4, r3
    135c:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    135e:	019b      	lsls	r3, r3, #6
    1360:	930f      	str	r3, [sp, #60]	@ 0x3c
    1362:	9b12      	ldr	r3, [sp, #72]	@ 0x48
    1364:	019b      	lsls	r3, r3, #6
    1366:	9312      	str	r3, [sp, #72]	@ 0x48
    1368:	e5e6      	b.n	f38 <JPEG_Decoder_ReadImage+0x1dc>
    136a:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
    136c:	021b      	lsls	r3, r3, #8
    136e:	930e      	str	r3, [sp, #56]	@ 0x38
    1370:	3b01      	subs	r3, #1
    1372:	3bff      	subs	r3, #255	@ 0xff
    1374:	425a      	negs	r2, r3
    1376:	4153      	adcs	r3, r2
    1378:	020a      	lsls	r2, r1, #8
    137a:	920d      	str	r2, [sp, #52]	@ 0x34
    137c:	9a10      	ldr	r2, [sp, #64]	@ 0x40
    137e:	0212      	lsls	r2, r2, #8
    1380:	9210      	str	r2, [sp, #64]	@ 0x40
    1382:	e7d8      	b.n	1336 <JPEG_Decoder_ReadImage+0x5da>
    1384:	2b0f      	cmp	r3, #15
    1386:	d000      	beq.n	138a <JPEG_Decoder_ReadImage+0x62e>
    1388:	e07e      	b.n	1488 <JPEG_Decoder_ReadImage+0x72c>
    138a:	9b01      	ldr	r3, [sp, #4]
    138c:	3310      	adds	r3, #16
    138e:	9301      	str	r3, [sp, #4]
    1390:	e73d      	b.n	120e <JPEG_Decoder_ReadImage+0x4b2>
    1392:	0028      	movs	r0, r5
    1394:	003a      	movs	r2, r7
    1396:	3809      	subs	r0, #9
    1398:	40c2      	lsrs	r2, r0
    139a:	2401      	movs	r4, #1
    139c:	005b      	lsls	r3, r3, #1
    139e:	4022      	ands	r2, r4
    13a0:	4313      	orrs	r3, r2
    13a2:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
    13a4:	4293      	cmp	r3, r2
    13a6:	dc00      	bgt.n	13aa <JPEG_Decoder_ReadImage+0x64e>
    13a8:	e1e1      	b.n	176e <JPEG_Decoder_ReadImage+0xa12>
    13aa:	220a      	movs	r2, #10
    13ac:	4252      	negs	r2, r2
    13ae:	4694      	mov	ip, r2
    13b0:	44ac      	add	ip, r5
    13b2:	0038      	movs	r0, r7
    13b4:	4662      	mov	r2, ip
    13b6:	40d0      	lsrs	r0, r2
    13b8:	005b      	lsls	r3, r3, #1
    13ba:	4020      	ands	r0, r4
    13bc:	4303      	orrs	r3, r0
    13be:	6a88      	ldr	r0, [r1, #40]	@ 0x28
    13c0:	4298      	cmp	r0, r3
    13c2:	db00      	blt.n	13c6 <JPEG_Decoder_ReadImage+0x66a>
    13c4:	e1d6      	b.n	1774 <JPEG_Decoder_ReadImage+0xa18>
    13c6:	220b      	movs	r2, #11
    13c8:	4252      	negs	r2, r2
    13ca:	4694      	mov	ip, r2
    13cc:	44ac      	add	ip, r5
    13ce:	0038      	movs	r0, r7
    13d0:	4662      	mov	r2, ip
    13d2:	40d0      	lsrs	r0, r2
    13d4:	005b      	lsls	r3, r3, #1
    13d6:	4020      	ands	r0, r4
    13d8:	4303      	orrs	r3, r0
    13da:	6ac8      	ldr	r0, [r1, #44]	@ 0x2c
    13dc:	4283      	cmp	r3, r0
    13de:	dc00      	bgt.n	13e2 <JPEG_Decoder_ReadImage+0x686>
    13e0:	e238      	b.n	1854 <JPEG_Decoder_ReadImage+0xaf8>
    13e2:	220c      	movs	r2, #12
    13e4:	4252      	negs	r2, r2
    13e6:	4694      	mov	ip, r2
    13e8:	44ac      	add	ip, r5
    13ea:	0038      	movs	r0, r7
    13ec:	4662      	mov	r2, ip
    13ee:	40d0      	lsrs	r0, r2
    13f0:	005b      	lsls	r3, r3, #1
    13f2:	4020      	ands	r0, r4
    13f4:	4303      	orrs	r3, r0
    13f6:	6b08      	ldr	r0, [r1, #48]	@ 0x30
    13f8:	4298      	cmp	r0, r3
    13fa:	db00      	blt.n	13fe <JPEG_Decoder_ReadImage+0x6a2>
    13fc:	e22d      	b.n	185a <JPEG_Decoder_ReadImage+0xafe>
    13fe:	220d      	movs	r2, #13
    1400:	4252      	negs	r2, r2
    1402:	4694      	mov	ip, r2
    1404:	44ac      	add	ip, r5
    1406:	0038      	movs	r0, r7
    1408:	4662      	mov	r2, ip
    140a:	40d0      	lsrs	r0, r2
    140c:	005b      	lsls	r3, r3, #1
    140e:	4020      	ands	r0, r4
    1410:	4303      	orrs	r3, r0
    1412:	6b48      	ldr	r0, [r1, #52]	@ 0x34
    1414:	4298      	cmp	r0, r3
    1416:	db00      	blt.n	141a <JPEG_Decoder_ReadImage+0x6be>
    1418:	e222      	b.n	1860 <JPEG_Decoder_ReadImage+0xb04>
    141a:	220e      	movs	r2, #14
    141c:	4252      	negs	r2, r2
    141e:	4694      	mov	ip, r2
    1420:	44ac      	add	ip, r5
    1422:	0038      	movs	r0, r7
    1424:	4662      	mov	r2, ip
    1426:	40d0      	lsrs	r0, r2
    1428:	005b      	lsls	r3, r3, #1
    142a:	4020      	ands	r0, r4
    142c:	4303      	orrs	r3, r0
    142e:	6b88      	ldr	r0, [r1, #56]	@ 0x38
    1430:	4298      	cmp	r0, r3
    1432:	db00      	blt.n	1436 <JPEG_Decoder_ReadImage+0x6da>
    1434:	e217      	b.n	1866 <JPEG_Decoder_ReadImage+0xb0a>
    1436:	220f      	movs	r2, #15
    1438:	4252      	negs	r2, r2
    143a:	4694      	mov	ip, r2
    143c:	44ac      	add	ip, r5
    143e:	0038      	movs	r0, r7
    1440:	4662      	mov	r2, ip
    1442:	40d0      	lsrs	r0, r2
    1444:	005b      	lsls	r3, r3, #1
    1446:	4020      	ands	r0, r4
    1448:	4303      	orrs	r3, r0
    144a:	6bc8      	ldr	r0, [r1, #60]	@ 0x3c
    144c:	4298      	cmp	r0, r3
    144e:	db00      	blt.n	1452 <JPEG_Decoder_ReadImage+0x6f6>
    1450:	e20c      	b.n	186c <JPEG_Decoder_ReadImage+0xb10>
    1452:	0038      	movs	r0, r7
    1454:	3d10      	subs	r5, #16
    1456:	40e8      	lsrs	r0, r5
    1458:	005b      	lsls	r3, r3, #1
    145a:	4020      	ands	r0, r4
    145c:	4303      	orrs	r3, r0
    145e:	200f      	movs	r0, #15
    1460:	9a04      	ldr	r2, [sp, #16]
    1462:	4694      	mov	ip, r2
    1464:	9a03      	ldr	r2, [sp, #12]
    1466:	4460      	add	r0, ip
    1468:	4694      	mov	ip, r2
    146a:	0080      	lsls	r0, r0, #2
    146c:	4460      	add	r0, ip
    146e:	6c40      	ldr	r0, [r0, #68]	@ 0x44
    1470:	5cc3      	ldrb	r3, [r0, r3]
    1472:	469c      	mov	ip, r3
    1474:	e6e2      	b.n	123c <JPEG_Decoder_ReadImage+0x4e0>
    1476:	46c0      	nop			@ (mov r8, r8)
    1478:	fffff270 			@ <UNDEFINED> instruction: 0xfffff270
    147c:	00000b2c 	andeq	r0, r0, ip, lsr #22
    1480:	000008a8 	andeq	r0, r0, r8, lsr #17
    1484:	00000624 	andeq	r0, r0, r4, lsr #12
    1488:	9b07      	ldr	r3, [sp, #28]
    148a:	9c08      	ldr	r4, [sp, #32]
    148c:	469a      	mov	sl, r3
    148e:	2c00      	cmp	r4, #0
    1490:	d100      	bne.n	1494 <JPEG_Decoder_ReadImage+0x738>
    1492:	e1cb      	b.n	182c <JPEG_Decoder_ReadImage+0xad0>
    1494:	a842      	add	r0, sp, #264	@ 0x108
    1496:	f7fe fdb3 	bl	0 <JPEG_IDCT_Columns>
    149a:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
    149c:	0021      	movs	r1, r4
    149e:	469c      	mov	ip, r3
    14a0:	9c06      	ldr	r4, [sp, #24]
    14a2:	4461      	add	r1, ip
    14a4:	46a4      	mov	ip, r4
    14a6:	9a14      	ldr	r2, [sp, #80]	@ 0x50
    14a8:	4461      	add	r1, ip
    14aa:	a842      	add	r0, sp, #264	@ 0x108
    14ac:	3408      	adds	r4, #8
    14ae:	f7fe fe4b 	bl	148 <JPEG_IDCT_Rows>
    14b2:	9406      	str	r4, [sp, #24]
    14b4:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    14b6:	785b      	ldrb	r3, [r3, #1]
    14b8:	00da      	lsls	r2, r3, #3
    14ba:	4294      	cmp	r4, r2
    14bc:	da00      	bge.n	14c0 <JPEG_Decoder_ReadImage+0x764>
    14be:	e628      	b.n	1112 <JPEG_Decoder_ReadImage+0x3b6>
    14c0:	9924      	ldr	r1, [sp, #144]	@ 0x90
    14c2:	3108      	adds	r1, #8
    14c4:	9124      	str	r1, [sp, #144]	@ 0x90
    14c6:	9a09      	ldr	r2, [sp, #36]	@ 0x24
    14c8:	7892      	ldrb	r2, [r2, #2]
    14ca:	00d2      	lsls	r2, r2, #3
    14cc:	428a      	cmp	r2, r1
    14ce:	dd07      	ble.n	14e0 <JPEG_Decoder_ReadImage+0x784>
    14d0:	9931      	ldr	r1, [sp, #196]	@ 0xc4
    14d2:	468c      	mov	ip, r1
    14d4:	9a13      	ldr	r2, [sp, #76]	@ 0x4c
    14d6:	4462      	add	r2, ip
    14d8:	9213      	str	r2, [sp, #76]	@ 0x4c
    14da:	2b00      	cmp	r3, #0
    14dc:	d000      	beq.n	14e0 <JPEG_Decoder_ReadImage+0x784>
    14de:	e5fb      	b.n	10d8 <JPEG_Decoder_ReadImage+0x37c>
    14e0:	9b28      	ldr	r3, [sp, #160]	@ 0xa0
    14e2:	4699      	mov	r9, r3
    14e4:	9b2a      	ldr	r3, [sp, #168]	@ 0xa8
    14e6:	469a      	mov	sl, r3
    14e8:	9b02      	ldr	r3, [sp, #8]
    14ea:	4698      	mov	r8, r3
    14ec:	9c29      	ldr	r4, [sp, #164]	@ 0xa4
    14ee:	2301      	movs	r3, #1
    14f0:	469c      	mov	ip, r3
    14f2:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    14f4:	68db      	ldr	r3, [r3, #12]
    14f6:	44e1      	add	r9, ip
    14f8:	3403      	adds	r4, #3
    14fa:	454b      	cmp	r3, r9
    14fc:	dd00      	ble.n	1500 <JPEG_Decoder_ReadImage+0x7a4>
    14fe:	e5a5      	b.n	104c <JPEG_Decoder_ReadImage+0x2f0>
    1500:	9b38      	ldr	r3, [sp, #224]	@ 0xe0
    1502:	4699      	mov	r9, r3
    1504:	9708      	str	r7, [sp, #32]
    1506:	9601      	str	r6, [sp, #4]
    1508:	9503      	str	r5, [sp, #12]
    150a:	9f39      	ldr	r7, [sp, #228]	@ 0xe4
    150c:	9a23      	ldr	r2, [sp, #140]	@ 0x8c
    150e:	4694      	mov	ip, r2
    1510:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
    1512:	9a25      	ldr	r2, [sp, #148]	@ 0x94
    1514:	4463      	add	r3, ip
    1516:	931d      	str	r3, [sp, #116]	@ 0x74
    1518:	4293      	cmp	r3, r2
    151a:	dd00      	ble.n	151e <JPEG_Decoder_ReadImage+0x7c2>
    151c:	e0f7      	b.n	170e <JPEG_Decoder_ReadImage+0x9b2>
    151e:	aa3a      	add	r2, sp, #232	@ 0xe8
    1520:	4694      	mov	ip, r2
    1522:	4bd6      	ldr	r3, [pc, #856]	@ (187c <JPEG_Decoder_ReadImage+0xb20>)
    1524:	4463      	add	r3, ip
    1526:	681b      	ldr	r3, [r3, #0]
    1528:	9a22      	ldr	r2, [sp, #136]	@ 0x88
    152a:	4293      	cmp	r3, r2
    152c:	da00      	bge.n	1530 <JPEG_Decoder_ReadImage+0x7d4>
    152e:	e0ee      	b.n	170e <JPEG_Decoder_ReadImage+0x9b2>
    1530:	9b1f      	ldr	r3, [sp, #124]	@ 0x7c
    1532:	2b00      	cmp	r3, #0
    1534:	d000      	beq.n	1538 <JPEG_Decoder_ReadImage+0x7dc>
    1536:	e1c0      	b.n	18ba <JPEG_Decoder_ReadImage+0xb5e>
    1538:	9b1e      	ldr	r3, [sp, #120]	@ 0x78
    153a:	2b00      	cmp	r3, #0
    153c:	d100      	bne.n	1540 <JPEG_Decoder_ReadImage+0x7e4>
    153e:	e0b4      	b.n	16aa <JPEG_Decoder_ReadImage+0x94e>
    1540:	9b2b      	ldr	r3, [sp, #172]	@ 0xac
    1542:	121b      	asrs	r3, r3, #8
    1544:	9309      	str	r3, [sp, #36]	@ 0x24
    1546:	9b2c      	ldr	r3, [sp, #176]	@ 0xb0
    1548:	121b      	asrs	r3, r3, #8
    154a:	930a      	str	r3, [sp, #40]	@ 0x28
    154c:	9b2d      	ldr	r3, [sp, #180]	@ 0xb4
    154e:	121b      	asrs	r3, r3, #8
    1550:	930b      	str	r3, [sp, #44]	@ 0x2c
    1552:	9b23      	ldr	r3, [sp, #140]	@ 0x8c
    1554:	2b00      	cmp	r3, #0
    1556:	d100      	bne.n	155a <JPEG_Decoder_ReadImage+0x7fe>
    1558:	e0a7      	b.n	16aa <JPEG_Decoder_ReadImage+0x94e>
    155a:	9a32      	ldr	r2, [sp, #200]	@ 0xc8
    155c:	4693      	mov	fp, r2
    155e:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
    1560:	005b      	lsls	r3, r3, #1
    1562:	449b      	add	fp, r3
    1564:	2300      	movs	r3, #0
    1566:	2100      	movs	r1, #0
    1568:	9307      	str	r3, [sp, #28]
    156a:	4bc5      	ldr	r3, [pc, #788]	@ (1880 <JPEG_Decoder_ReadImage+0xb24>)
    156c:	000d      	movs	r5, r1
    156e:	2200      	movs	r2, #0
    1570:	2600      	movs	r6, #0
    1572:	469c      	mov	ip, r3
    1574:	4659      	mov	r1, fp
    1576:	9b07      	ldr	r3, [sp, #28]
    1578:	121c      	asrs	r4, r3, #8
    157a:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    157c:	4363      	muls	r3, r4
    157e:	001c      	movs	r4, r3
    1580:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    1582:	1228      	asrs	r0, r5, #8
    1584:	4343      	muls	r3, r0
    1586:	980b      	ldr	r0, [sp, #44]	@ 0x2c
    1588:	469b      	mov	fp, r3
    158a:	1213      	asrs	r3, r2, #8
    158c:	4358      	muls	r0, r3
    158e:	9002      	str	r0, [sp, #8]
    1590:	9830      	ldr	r0, [sp, #192]	@ 0xc0
    1592:	1a08      	subs	r0, r1, r0
    1594:	900c      	str	r0, [sp, #48]	@ 0x30
    1596:	2000      	movs	r0, #0
    1598:	9006      	str	r0, [sp, #24]
    159a:	9005      	str	r0, [sp, #20]
    159c:	9004      	str	r0, [sp, #16]
    159e:	981a      	ldr	r0, [sp, #104]	@ 0x68
    15a0:	465b      	mov	r3, fp
    15a2:	4683      	mov	fp, r0
    15a4:	981b      	ldr	r0, [sp, #108]	@ 0x6c
    15a6:	445b      	add	r3, fp
    15a8:	4683      	mov	fp, r0
    15aa:	9314      	str	r3, [sp, #80]	@ 0x50
    15ac:	9b02      	ldr	r3, [sp, #8]
    15ae:	445b      	add	r3, fp
    15b0:	9316      	str	r3, [sp, #88]	@ 0x58
    15b2:	23db      	movs	r3, #219	@ 0xdb
    15b4:	a83a      	add	r0, sp, #232	@ 0xe8
    15b6:	4683      	mov	fp, r0
    15b8:	011b      	lsls	r3, r3, #4
    15ba:	18e3      	adds	r3, r4, r3
    15bc:	445b      	add	r3, fp
    15be:	9313      	str	r3, [sp, #76]	@ 0x4c
    15c0:	0013      	movs	r3, r2
    15c2:	4640      	mov	r0, r8
    15c4:	469b      	mov	fp, r3
    15c6:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
    15c8:	9517      	str	r5, [sp, #92]	@ 0x5c
    15ca:	9024      	str	r0, [sp, #144]	@ 0x90
    15cc:	9b05      	ldr	r3, [sp, #20]
    15ce:	9814      	ldr	r0, [sp, #80]	@ 0x50
    15d0:	121b      	asrs	r3, r3, #8
    15d2:	56c5      	ldrsb	r5, [r0, r3]
    15d4:	9806      	ldr	r0, [sp, #24]
    15d6:	9c16      	ldr	r4, [sp, #88]	@ 0x58
    15d8:	1203      	asrs	r3, r0, #8
    15da:	56e0      	ldrsb	r0, [r4, r3]
    15dc:	9c04      	ldr	r4, [sp, #16]
    15de:	1223      	asrs	r3, r4, #8
    15e0:	9c13      	ldr	r4, [sp, #76]	@ 0x4c
    15e2:	46a0      	mov	r8, r4
    15e4:	4ca7      	ldr	r4, [pc, #668]	@ (1884 <JPEG_Decoder_ReadImage+0xb28>)
    15e6:	4443      	add	r3, r8
    15e8:	46a0      	mov	r8, r4
    15ea:	4443      	add	r3, r8
    15ec:	781b      	ldrb	r3, [r3, #0]
    15ee:	061b      	lsls	r3, r3, #24
    15f0:	161b      	asrs	r3, r3, #24
    15f2:	333f      	adds	r3, #63	@ 0x3f
    15f4:	001c      	movs	r4, r3
    15f6:	23e3      	movs	r3, #227	@ 0xe3
    15f8:	005b      	lsls	r3, r3, #1
    15fa:	4698      	mov	r8, r3
    15fc:	4643      	mov	r3, r8
    15fe:	436b      	muls	r3, r5
    1600:	46a0      	mov	r8, r4
    1602:	121b      	asrs	r3, r3, #8
    1604:	4443      	add	r3, r8
    1606:	109b      	asrs	r3, r3, #2
    1608:	4463      	add	r3, ip
    160a:	3360      	adds	r3, #96	@ 0x60
    160c:	781b      	ldrb	r3, [r3, #0]
    160e:	9402      	str	r4, [sp, #8]
    1610:	0044      	lsls	r4, r0, #1
    1612:	1824      	adds	r4, r4, r0
    1614:	029b      	lsls	r3, r3, #10
    1616:	930c      	str	r3, [sp, #48]	@ 0x30
    1618:	0123      	lsls	r3, r4, #4
    161a:	1b1b      	subs	r3, r3, r4
    161c:	00db      	lsls	r3, r3, #3
    161e:	1a1b      	subs	r3, r3, r0
    1620:	121b      	asrs	r3, r3, #8
    1622:	4443      	add	r3, r8
    1624:	109b      	asrs	r3, r3, #2
    1626:	4463      	add	r3, ip
    1628:	3360      	adds	r3, #96	@ 0x60
    162a:	781c      	ldrb	r4, [r3, #0]
    162c:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
    162e:	431c      	orrs	r4, r3
    1630:	2358      	movs	r3, #88	@ 0x58
    1632:	4698      	mov	r8, r3
    1634:	4643      	mov	r3, r8
    1636:	436b      	muls	r3, r5
    1638:	9d02      	ldr	r5, [sp, #8]
    163a:	121b      	asrs	r3, r3, #8
    163c:	1aeb      	subs	r3, r5, r3
    163e:	25b7      	movs	r5, #183	@ 0xb7
    1640:	4345      	muls	r5, r0
    1642:	1228      	asrs	r0, r5, #8
    1644:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
    1646:	46a8      	mov	r8, r5
    1648:	1a1b      	subs	r3, r3, r0
    164a:	109b      	asrs	r3, r3, #2
    164c:	4463      	add	r3, ip
    164e:	3360      	adds	r3, #96	@ 0x60
    1650:	781b      	ldrb	r3, [r3, #0]
    1652:	015b      	lsls	r3, r3, #5
    1654:	4323      	orrs	r3, r4
    1656:	9c04      	ldr	r4, [sp, #16]
    1658:	4444      	add	r4, r8
    165a:	9404      	str	r4, [sp, #16]
    165c:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
    165e:	46a0      	mov	r8, r4
    1660:	041b      	lsls	r3, r3, #16
    1662:	0c1b      	lsrs	r3, r3, #16
    1664:	8013      	strh	r3, [r2, #0]
    1666:	9810      	ldr	r0, [sp, #64]	@ 0x40
    1668:	9b05      	ldr	r3, [sp, #20]
    166a:	4443      	add	r3, r8
    166c:	4680      	mov	r8, r0
    166e:	9305      	str	r3, [sp, #20]
    1670:	9b06      	ldr	r3, [sp, #24]
    1672:	3202      	adds	r2, #2
    1674:	4443      	add	r3, r8
    1676:	9306      	str	r3, [sp, #24]
    1678:	428a      	cmp	r2, r1
    167a:	d1a7      	bne.n	15cc <JPEG_Decoder_ReadImage+0x870>
    167c:	9811      	ldr	r0, [sp, #68]	@ 0x44
    167e:	465a      	mov	r2, fp
    1680:	4683      	mov	fp, r0
    1682:	9b24      	ldr	r3, [sp, #144]	@ 0x90
    1684:	4698      	mov	r8, r3
    1686:	9b07      	ldr	r3, [sp, #28]
    1688:	445b      	add	r3, fp
    168a:	9307      	str	r3, [sp, #28]
    168c:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    168e:	469b      	mov	fp, r3
    1690:	9d17      	ldr	r5, [sp, #92]	@ 0x5c
    1692:	9b12      	ldr	r3, [sp, #72]	@ 0x48
    1694:	445d      	add	r5, fp
    1696:	469b      	mov	fp, r3
    1698:	9b2f      	ldr	r3, [sp, #188]	@ 0xbc
    169a:	445a      	add	r2, fp
    169c:	469b      	mov	fp, r3
    169e:	9b1e      	ldr	r3, [sp, #120]	@ 0x78
    16a0:	3601      	adds	r6, #1
    16a2:	4459      	add	r1, fp
    16a4:	42b3      	cmp	r3, r6
    16a6:	d000      	beq.n	16aa <JPEG_Decoder_ReadImage+0x94e>
    16a8:	e765      	b.n	1576 <JPEG_Decoder_ReadImage+0x81a>
    16aa:	2384      	movs	r3, #132	@ 0x84
    16ac:	9a18      	ldr	r2, [sp, #96]	@ 0x60
    16ae:	00db      	lsls	r3, r3, #3
    16b0:	58d3      	ldr	r3, [r2, r3]
    16b2:	2b00      	cmp	r3, #0
    16b4:	d02b      	beq.n	170e <JPEG_Decoder_ReadImage+0x9b2>
    16b6:	9a20      	ldr	r2, [sp, #128]	@ 0x80
    16b8:	3a01      	subs	r2, #1
    16ba:	9220      	str	r2, [sp, #128]	@ 0x80
    16bc:	2a00      	cmp	r2, #0
    16be:	d126      	bne.n	170e <JPEG_Decoder_ReadImage+0x9b2>
    16c0:	9320      	str	r3, [sp, #128]	@ 0x80
    16c2:	9b03      	ldr	r3, [sp, #12]
    16c4:	08dd      	lsrs	r5, r3, #3
    16c6:	1e6b      	subs	r3, r5, #1
    16c8:	2d00      	cmp	r5, #0
    16ca:	d00c      	beq.n	16e6 <JPEG_Decoder_ReadImage+0x98a>
    16cc:	9a01      	ldr	r2, [sp, #4]
    16ce:	e002      	b.n	16d6 <JPEG_Decoder_ReadImage+0x97a>
    16d0:	3a01      	subs	r2, #1
    16d2:	3b01      	subs	r3, #1
    16d4:	d306      	bcc.n	16e4 <JPEG_Decoder_ReadImage+0x988>
    16d6:	1e91      	subs	r1, r2, #2
    16d8:	7808      	ldrb	r0, [r1, #0]
    16da:	28ff      	cmp	r0, #255	@ 0xff
    16dc:	d1f8      	bne.n	16d0 <JPEG_Decoder_ReadImage+0x974>
    16de:	000a      	movs	r2, r1
    16e0:	3b01      	subs	r3, #1
    16e2:	d2f8      	bcs.n	16d6 <JPEG_Decoder_ReadImage+0x97a>
    16e4:	9201      	str	r2, [sp, #4]
    16e6:	9901      	ldr	r1, [sp, #4]
    16e8:	784b      	ldrb	r3, [r1, #1]
    16ea:	780a      	ldrb	r2, [r1, #0]
    16ec:	021b      	lsls	r3, r3, #8
    16ee:	4313      	orrs	r3, r2
    16f0:	4a65      	ldr	r2, [pc, #404]	@ (1888 <JPEG_Decoder_ReadImage+0xb2c>)
    16f2:	4293      	cmp	r3, r2
    16f4:	d100      	bne.n	16f8 <JPEG_Decoder_ReadImage+0x99c>
    16f6:	e1da      	b.n	1aae <JPEG_Decoder_ReadImage+0xd52>
    16f8:	2300      	movs	r3, #0
    16fa:	2200      	movs	r2, #0
    16fc:	923a      	str	r2, [sp, #232]	@ 0xe8
    16fe:	933b      	str	r3, [sp, #236]	@ 0xec
    1700:	923c      	str	r2, [sp, #240]	@ 0xf0
    1702:	933d      	str	r3, [sp, #244]	@ 0xf4
    1704:	2300      	movs	r3, #0
    1706:	3102      	adds	r1, #2
    1708:	9101      	str	r1, [sp, #4]
    170a:	9308      	str	r3, [sp, #32]
    170c:	9303      	str	r3, [sp, #12]
    170e:	9b21      	ldr	r3, [sp, #132]	@ 0x84
    1710:	8999      	ldrh	r1, [r3, #12]
    1712:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
    1714:	428b      	cmp	r3, r1
    1716:	da00      	bge.n	171a <JPEG_Decoder_ReadImage+0x9be>
    1718:	e484      	b.n	1024 <JPEG_Decoder_ReadImage+0x2c8>
    171a:	4654      	mov	r4, sl
    171c:	464d      	mov	r5, r9
    171e:	9b21      	ldr	r3, [sp, #132]	@ 0x84
    1720:	9a22      	ldr	r2, [sp, #136]	@ 0x88
    1722:	895b      	ldrh	r3, [r3, #10]
    1724:	003e      	movs	r6, r7
    1726:	1964      	adds	r4, r4, r5
    1728:	9f36      	ldr	r7, [sp, #216]	@ 0xd8
    172a:	4293      	cmp	r3, r2
    172c:	dd00      	ble.n	1730 <JPEG_Decoder_ReadImage+0x9d4>
    172e:	e45b      	b.n	fe8 <JPEG_Decoder_ReadImage+0x28c>
    1730:	9b03      	ldr	r3, [sp, #12]
    1732:	08db      	lsrs	r3, r3, #3
    1734:	9f01      	ldr	r7, [sp, #4]
    1736:	1e5a      	subs	r2, r3, #1
    1738:	2b00      	cmp	r3, #0
    173a:	d103      	bne.n	1744 <JPEG_Decoder_ReadImage+0x9e8>
    173c:	e009      	b.n	1752 <JPEG_Decoder_ReadImage+0x9f6>
    173e:	3f01      	subs	r7, #1
    1740:	3a01      	subs	r2, #1
    1742:	d306      	bcc.n	1752 <JPEG_Decoder_ReadImage+0x9f6>
    1744:	1ebb      	subs	r3, r7, #2
    1746:	7819      	ldrb	r1, [r3, #0]
    1748:	29ff      	cmp	r1, #255	@ 0xff
    174a:	d1f8      	bne.n	173e <JPEG_Decoder_ReadImage+0x9e2>
    174c:	001f      	movs	r7, r3
    174e:	3a01      	subs	r2, #1
    1750:	d2f8      	bcs.n	1744 <JPEG_Decoder_ReadImage+0x9e8>
    1752:	2001      	movs	r0, #1
    1754:	9a34      	ldr	r2, [sp, #208]	@ 0xd0
    1756:	1cbb      	adds	r3, r7, #2
    1758:	6013      	str	r3, [r2, #0]
    175a:	4b4c      	ldr	r3, [pc, #304]	@ (188c <JPEG_Decoder_ReadImage+0xb30>)
    175c:	449d      	add	sp, r3
    175e:	bcf0      	pop	{r4, r5, r6, r7}
    1760:	46bb      	mov	fp, r7
    1762:	46b2      	mov	sl, r6
    1764:	46a9      	mov	r9, r5
    1766:	46a0      	mov	r8, r4
    1768:	bcf0      	pop	{r4, r5, r6, r7}
    176a:	bc02      	pop	{r1}
    176c:	4708      	bx	r1
    176e:	0005      	movs	r5, r0
    1770:	2008      	movs	r0, #8
    1772:	e675      	b.n	1460 <JPEG_Decoder_ReadImage+0x704>
    1774:	4665      	mov	r5, ip
    1776:	2009      	movs	r0, #9
    1778:	e672      	b.n	1460 <JPEG_Decoder_ReadImage+0x704>
    177a:	003b      	movs	r3, r7
    177c:	1e55      	subs	r5, r2, #1
    177e:	40eb      	lsrs	r3, r5
    1780:	2001      	movs	r0, #1
    1782:	0049      	lsls	r1, r1, #1
    1784:	4003      	ands	r3, r0
    1786:	430b      	orrs	r3, r1
    1788:	4651      	mov	r1, sl
    178a:	6a49      	ldr	r1, [r1, #36]	@ 0x24
    178c:	4299      	cmp	r1, r3
    178e:	da70      	bge.n	1872 <JPEG_Decoder_ReadImage+0xb16>
    1790:	0039      	movs	r1, r7
    1792:	1e95      	subs	r5, r2, #2
    1794:	40e9      	lsrs	r1, r5
    1796:	005b      	lsls	r3, r3, #1
    1798:	4001      	ands	r1, r0
    179a:	430b      	orrs	r3, r1
    179c:	4651      	mov	r1, sl
    179e:	6a89      	ldr	r1, [r1, #40]	@ 0x28
    17a0:	428b      	cmp	r3, r1
    17a2:	dd68      	ble.n	1876 <JPEG_Decoder_ReadImage+0xb1a>
    17a4:	0039      	movs	r1, r7
    17a6:	1ed5      	subs	r5, r2, #3
    17a8:	40e9      	lsrs	r1, r5
    17aa:	005b      	lsls	r3, r3, #1
    17ac:	4001      	ands	r1, r0
    17ae:	430b      	orrs	r3, r1
    17b0:	4651      	mov	r1, sl
    17b2:	6ac9      	ldr	r1, [r1, #44]	@ 0x2c
    17b4:	4299      	cmp	r1, r3
    17b6:	da6d      	bge.n	1894 <JPEG_Decoder_ReadImage+0xb38>
    17b8:	0039      	movs	r1, r7
    17ba:	1f15      	subs	r5, r2, #4
    17bc:	40e9      	lsrs	r1, r5
    17be:	005b      	lsls	r3, r3, #1
    17c0:	4001      	ands	r1, r0
    17c2:	430b      	orrs	r3, r1
    17c4:	4651      	mov	r1, sl
    17c6:	6b09      	ldr	r1, [r1, #48]	@ 0x30
    17c8:	428b      	cmp	r3, r1
    17ca:	dd61      	ble.n	1890 <JPEG_Decoder_ReadImage+0xb34>
    17cc:	0039      	movs	r1, r7
    17ce:	1f55      	subs	r5, r2, #5
    17d0:	40e9      	lsrs	r1, r5
    17d2:	005b      	lsls	r3, r3, #1
    17d4:	4001      	ands	r1, r0
    17d6:	430b      	orrs	r3, r1
    17d8:	4651      	mov	r1, sl
    17da:	6b49      	ldr	r1, [r1, #52]	@ 0x34
    17dc:	4299      	cmp	r1, r3
    17de:	da5b      	bge.n	1898 <JPEG_Decoder_ReadImage+0xb3c>
    17e0:	0039      	movs	r1, r7
    17e2:	1f95      	subs	r5, r2, #6
    17e4:	40e9      	lsrs	r1, r5
    17e6:	005b      	lsls	r3, r3, #1
    17e8:	4001      	ands	r1, r0
    17ea:	430b      	orrs	r3, r1
    17ec:	4651      	mov	r1, sl
    17ee:	6b89      	ldr	r1, [r1, #56]	@ 0x38
    17f0:	4299      	cmp	r1, r3
    17f2:	da53      	bge.n	189c <JPEG_Decoder_ReadImage+0xb40>
    17f4:	0039      	movs	r1, r7
    17f6:	1fd5      	subs	r5, r2, #7
    17f8:	40e9      	lsrs	r1, r5
    17fa:	005b      	lsls	r3, r3, #1
    17fc:	4001      	ands	r1, r0
    17fe:	430b      	orrs	r3, r1
    1800:	4651      	mov	r1, sl
    1802:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
    1804:	4299      	cmp	r1, r3
    1806:	da4b      	bge.n	18a0 <JPEG_Decoder_ReadImage+0xb44>
    1808:	3a08      	subs	r2, #8
    180a:	0015      	movs	r5, r2
    180c:	003a      	movs	r2, r7
    180e:	40ea      	lsrs	r2, r5
    1810:	005b      	lsls	r3, r3, #1
    1812:	4002      	ands	r2, r0
    1814:	4313      	orrs	r3, r2
    1816:	220f      	movs	r2, #15
    1818:	9916      	ldr	r1, [sp, #88]	@ 0x58
    181a:	468c      	mov	ip, r1
    181c:	9917      	ldr	r1, [sp, #92]	@ 0x5c
    181e:	4462      	add	r2, ip
    1820:	468c      	mov	ip, r1
    1822:	0092      	lsls	r2, r2, #2
    1824:	4462      	add	r2, ip
    1826:	6c52      	ldr	r2, [r2, #68]	@ 0x44
    1828:	5cd1      	ldrb	r1, [r2, r3]
    182a:	e4c4      	b.n	11b6 <JPEG_Decoder_ReadImage+0x45a>
    182c:	9906      	ldr	r1, [sp, #24]
    182e:	3108      	adds	r1, #8
    1830:	9106      	str	r1, [sp, #24]
    1832:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    1834:	785b      	ldrb	r3, [r3, #1]
    1836:	00da      	lsls	r2, r3, #3
    1838:	428a      	cmp	r2, r1
    183a:	dc00      	bgt.n	183e <JPEG_Decoder_ReadImage+0xae2>
    183c:	e640      	b.n	14c0 <JPEG_Decoder_ReadImage+0x764>
    183e:	22fc      	movs	r2, #252	@ 0xfc
    1840:	2100      	movs	r1, #0
    1842:	a843      	add	r0, sp, #268	@ 0x10c
    1844:	f7ff fffe 	bl	0 <memset>
    1848:	2d18      	cmp	r5, #24
    184a:	d800      	bhi.n	184e <JPEG_Decoder_ReadImage+0xaf2>
    184c:	e472      	b.n	1134 <JPEG_Decoder_ReadImage+0x3d8>
    184e:	002a      	movs	r2, r5
    1850:	3a08      	subs	r2, #8
    1852:	e4a0      	b.n	1196 <JPEG_Decoder_ReadImage+0x43a>
    1854:	4665      	mov	r5, ip
    1856:	200a      	movs	r0, #10
    1858:	e602      	b.n	1460 <JPEG_Decoder_ReadImage+0x704>
    185a:	4665      	mov	r5, ip
    185c:	200b      	movs	r0, #11
    185e:	e5ff      	b.n	1460 <JPEG_Decoder_ReadImage+0x704>
    1860:	4665      	mov	r5, ip
    1862:	200c      	movs	r0, #12
    1864:	e5fc      	b.n	1460 <JPEG_Decoder_ReadImage+0x704>
    1866:	4665      	mov	r5, ip
    1868:	200d      	movs	r0, #13
    186a:	e5f9      	b.n	1460 <JPEG_Decoder_ReadImage+0x704>
    186c:	4665      	mov	r5, ip
    186e:	200e      	movs	r0, #14
    1870:	e5f6      	b.n	1460 <JPEG_Decoder_ReadImage+0x704>
    1872:	2208      	movs	r2, #8
    1874:	e7d0      	b.n	1818 <JPEG_Decoder_ReadImage+0xabc>
    1876:	2209      	movs	r2, #9
    1878:	e7ce      	b.n	1818 <JPEG_Decoder_ReadImage+0xabc>
    187a:	46c0      	nop			@ (mov r8, r8)
    187c:	00000dd8 	ldrdeq	r0, [r0], -r8
    1880:	000000fc 	strdeq	r0, [r0], -ip
    1884:	fffff370 			@ <UNDEFINED> instruction: 0xfffff370
    1888:	0000d9ff 	strdeq	sp, [r0], -pc	@ <UNPREDICTABLE>
    188c:	00000e9c 	muleq	r0, ip, lr
    1890:	220b      	movs	r2, #11
    1892:	e7c1      	b.n	1818 <JPEG_Decoder_ReadImage+0xabc>
    1894:	220a      	movs	r2, #10
    1896:	e7bf      	b.n	1818 <JPEG_Decoder_ReadImage+0xabc>
    1898:	220c      	movs	r2, #12
    189a:	e7bd      	b.n	1818 <JPEG_Decoder_ReadImage+0xabc>
    189c:	220d      	movs	r2, #13
    189e:	e7bb      	b.n	1818 <JPEG_Decoder_ReadImage+0xabc>
    18a0:	220e      	movs	r2, #14
    18a2:	e7b9      	b.n	1818 <JPEG_Decoder_ReadImage+0xabc>
    18a4:	981e      	ldr	r0, [sp, #120]	@ 0x78
    18a6:	4684      	mov	ip, r0
    18a8:	4462      	add	r2, ip
    18aa:	9222      	str	r2, [sp, #136]	@ 0x88
    18ac:	9a22      	ldr	r2, [sp, #136]	@ 0x88
    18ae:	1964      	adds	r4, r4, r5
    18b0:	4293      	cmp	r3, r2
    18b2:	dd01      	ble.n	18b8 <JPEG_Decoder_ReadImage+0xb5c>
    18b4:	f7ff fb98 	bl	fe8 <JPEG_Decoder_ReadImage+0x28c>
    18b8:	e73a      	b.n	1730 <JPEG_Decoder_ReadImage+0x9d4>
    18ba:	2108      	movs	r1, #8
    18bc:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
    18be:	468c      	mov	ip, r1
    18c0:	001a      	movs	r2, r3
    18c2:	9933      	ldr	r1, [sp, #204]	@ 0xcc
    18c4:	4462      	add	r2, ip
    18c6:	468c      	mov	ip, r1
    18c8:	4693      	mov	fp, r2
    18ca:	3348      	adds	r3, #72	@ 0x48
    18cc:	9a1d      	ldr	r2, [sp, #116]	@ 0x74
    18ce:	930b      	str	r3, [sp, #44]	@ 0x2c
    18d0:	4b84      	ldr	r3, [pc, #528]	@ (1ae4 <JPEG_Decoder_ReadImage+0xd88>)
    18d2:	0052      	lsls	r2, r2, #1
    18d4:	4462      	add	r2, ip
    18d6:	469c      	mov	ip, r3
    18d8:	991b      	ldr	r1, [sp, #108]	@ 0x6c
    18da:	4654      	mov	r4, sl
    18dc:	000b      	movs	r3, r1
    18de:	46ba      	mov	sl, r7
    18e0:	4659      	mov	r1, fp
    18e2:	4666      	mov	r6, ip
    18e4:	9815      	ldr	r0, [sp, #84]	@ 0x54
    18e6:	2508      	movs	r5, #8
    18e8:	426d      	negs	r5, r5
    18ea:	46ac      	mov	ip, r5
    18ec:	448c      	add	ip, r1
    18ee:	4665      	mov	r5, ip
    18f0:	9204      	str	r2, [sp, #16]
    18f2:	9509      	str	r5, [sp, #36]	@ 0x24
    18f4:	9002      	str	r0, [sp, #8]
    18f6:	930a      	str	r3, [sp, #40]	@ 0x28
    18f8:	930c      	str	r3, [sp, #48]	@ 0x30
    18fa:	9213      	str	r2, [sp, #76]	@ 0x4c
    18fc:	2200      	movs	r2, #0
    18fe:	273f      	movs	r7, #63	@ 0x3f
    1900:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    1902:	569a      	ldrsb	r2, [r3, r2]
    1904:	2300      	movs	r3, #0
    1906:	46bb      	mov	fp, r7
    1908:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
    190a:	56eb      	ldrsb	r3, [r5, r3]
    190c:	9d02      	ldr	r5, [sp, #8]
    190e:	782d      	ldrb	r5, [r5, #0]
    1910:	005f      	lsls	r7, r3, #1
    1912:	062d      	lsls	r5, r5, #24
    1914:	18ff      	adds	r7, r7, r3
    1916:	162d      	asrs	r5, r5, #24
    1918:	44ab      	add	fp, r5
    191a:	013d      	lsls	r5, r7, #4
    191c:	1bed      	subs	r5, r5, r7
    191e:	00ed      	lsls	r5, r5, #3
    1920:	1aed      	subs	r5, r5, r3
    1922:	122f      	asrs	r7, r5, #8
    1924:	9705      	str	r7, [sp, #20]
    1926:	2758      	movs	r7, #88	@ 0x58
    1928:	46bc      	mov	ip, r7
    192a:	375f      	adds	r7, #95	@ 0x5f
    192c:	435f      	muls	r7, r3
    192e:	123f      	asrs	r7, r7, #8
    1930:	9707      	str	r7, [sp, #28]
    1932:	27e3      	movs	r7, #227	@ 0xe3
    1934:	007f      	lsls	r7, r7, #1
    1936:	4665      	mov	r5, ip
    1938:	4355      	muls	r5, r2
    193a:	46bc      	mov	ip, r7
    193c:	465f      	mov	r7, fp
    193e:	122d      	asrs	r5, r5, #8
    1940:	9506      	str	r5, [sp, #24]
    1942:	4665      	mov	r5, ip
    1944:	4355      	muls	r5, r2
    1946:	465a      	mov	r2, fp
    1948:	122d      	asrs	r5, r5, #8
    194a:	197b      	adds	r3, r7, r5
    194c:	109b      	asrs	r3, r3, #2
    194e:	18f3      	adds	r3, r6, r3
    1950:	3360      	adds	r3, #96	@ 0x60
    1952:	781f      	ldrb	r7, [r3, #0]
    1954:	9b05      	ldr	r3, [sp, #20]
    1956:	445b      	add	r3, fp
    1958:	109b      	asrs	r3, r3, #2
    195a:	18f3      	adds	r3, r6, r3
    195c:	3360      	adds	r3, #96	@ 0x60
    195e:	781b      	ldrb	r3, [r3, #0]
    1960:	02bf      	lsls	r7, r7, #10
    1962:	431f      	orrs	r7, r3
    1964:	9b06      	ldr	r3, [sp, #24]
    1966:	1ad3      	subs	r3, r2, r3
    1968:	9a07      	ldr	r2, [sp, #28]
    196a:	1a9b      	subs	r3, r3, r2
    196c:	109b      	asrs	r3, r3, #2
    196e:	18f3      	adds	r3, r6, r3
    1970:	3360      	adds	r3, #96	@ 0x60
    1972:	781b      	ldrb	r3, [r3, #0]
    1974:	015b      	lsls	r3, r3, #5
    1976:	433b      	orrs	r3, r7
    1978:	041b      	lsls	r3, r3, #16
    197a:	9f04      	ldr	r7, [sp, #16]
    197c:	0c1b      	lsrs	r3, r3, #16
    197e:	803b      	strh	r3, [r7, #0]
    1980:	2701      	movs	r7, #1
    1982:	9b02      	ldr	r3, [sp, #8]
    1984:	57df      	ldrsb	r7, [r3, r7]
    1986:	373f      	adds	r7, #63	@ 0x3f
    1988:	19eb      	adds	r3, r5, r7
    198a:	109b      	asrs	r3, r3, #2
    198c:	18f3      	adds	r3, r6, r3
    198e:	3360      	adds	r3, #96	@ 0x60
    1990:	781b      	ldrb	r3, [r3, #0]
    1992:	029a      	lsls	r2, r3, #10
    1994:	9b05      	ldr	r3, [sp, #20]
    1996:	19db      	adds	r3, r3, r7
    1998:	109b      	asrs	r3, r3, #2
    199a:	18f3      	adds	r3, r6, r3
    199c:	3360      	adds	r3, #96	@ 0x60
    199e:	781b      	ldrb	r3, [r3, #0]
    19a0:	431a      	orrs	r2, r3
    19a2:	4693      	mov	fp, r2
    19a4:	9b06      	ldr	r3, [sp, #24]
    19a6:	9a07      	ldr	r2, [sp, #28]
    19a8:	1afb      	subs	r3, r7, r3
    19aa:	1a9b      	subs	r3, r3, r2
    19ac:	465a      	mov	r2, fp
    19ae:	109b      	asrs	r3, r3, #2
    19b0:	18f3      	adds	r3, r6, r3
    19b2:	3360      	adds	r3, #96	@ 0x60
    19b4:	781b      	ldrb	r3, [r3, #0]
    19b6:	015b      	lsls	r3, r3, #5
    19b8:	4313      	orrs	r3, r2
    19ba:	9f04      	ldr	r7, [sp, #16]
    19bc:	041b      	lsls	r3, r3, #16
    19be:	0c1b      	lsrs	r3, r3, #16
    19c0:	807b      	strh	r3, [r7, #2]
    19c2:	2710      	movs	r7, #16
    19c4:	9b02      	ldr	r3, [sp, #8]
    19c6:	57df      	ldrsb	r7, [r3, r7]
    19c8:	373f      	adds	r7, #63	@ 0x3f
    19ca:	19eb      	adds	r3, r5, r7
    19cc:	109b      	asrs	r3, r3, #2
    19ce:	18f3      	adds	r3, r6, r3
    19d0:	3360      	adds	r3, #96	@ 0x60
    19d2:	781b      	ldrb	r3, [r3, #0]
    19d4:	029a      	lsls	r2, r3, #10
    19d6:	9b05      	ldr	r3, [sp, #20]
    19d8:	19db      	adds	r3, r3, r7
    19da:	109b      	asrs	r3, r3, #2
    19dc:	18f3      	adds	r3, r6, r3
    19de:	3360      	adds	r3, #96	@ 0x60
    19e0:	781b      	ldrb	r3, [r3, #0]
    19e2:	431a      	orrs	r2, r3
    19e4:	4693      	mov	fp, r2
    19e6:	9b06      	ldr	r3, [sp, #24]
    19e8:	9a07      	ldr	r2, [sp, #28]
    19ea:	1afb      	subs	r3, r7, r3
    19ec:	1a9b      	subs	r3, r3, r2
    19ee:	465a      	mov	r2, fp
    19f0:	109b      	asrs	r3, r3, #2
    19f2:	18f3      	adds	r3, r6, r3
    19f4:	3360      	adds	r3, #96	@ 0x60
    19f6:	781b      	ldrb	r3, [r3, #0]
    19f8:	015b      	lsls	r3, r3, #5
    19fa:	4313      	orrs	r3, r2
    19fc:	22f0      	movs	r2, #240	@ 0xf0
    19fe:	9f04      	ldr	r7, [sp, #16]
    1a00:	041b      	lsls	r3, r3, #16
    1a02:	0c1b      	lsrs	r3, r3, #16
    1a04:	0052      	lsls	r2, r2, #1
    1a06:	52bb      	strh	r3, [r7, r2]
    1a08:	9b02      	ldr	r3, [sp, #8]
    1a0a:	7c5b      	ldrb	r3, [r3, #17]
    1a0c:	061b      	lsls	r3, r3, #24
    1a0e:	161b      	asrs	r3, r3, #24
    1a10:	333f      	adds	r3, #63	@ 0x3f
    1a12:	9f05      	ldr	r7, [sp, #20]
    1a14:	18ed      	adds	r5, r5, r3
    1a16:	18ff      	adds	r7, r7, r3
    1a18:	10ad      	asrs	r5, r5, #2
    1a1a:	1975      	adds	r5, r6, r5
    1a1c:	10bf      	asrs	r7, r7, #2
    1a1e:	3560      	adds	r5, #96	@ 0x60
    1a20:	19f7      	adds	r7, r6, r7
    1a22:	782d      	ldrb	r5, [r5, #0]
    1a24:	3760      	adds	r7, #96	@ 0x60
    1a26:	783f      	ldrb	r7, [r7, #0]
    1a28:	02ad      	lsls	r5, r5, #10
    1a2a:	432f      	orrs	r7, r5
    1a2c:	9d06      	ldr	r5, [sp, #24]
    1a2e:	9a07      	ldr	r2, [sp, #28]
    1a30:	1b5b      	subs	r3, r3, r5
    1a32:	1a9b      	subs	r3, r3, r2
    1a34:	22f1      	movs	r2, #241	@ 0xf1
    1a36:	109b      	asrs	r3, r3, #2
    1a38:	18f3      	adds	r3, r6, r3
    1a3a:	3360      	adds	r3, #96	@ 0x60
    1a3c:	781b      	ldrb	r3, [r3, #0]
    1a3e:	015b      	lsls	r3, r3, #5
    1a40:	433b      	orrs	r3, r7
    1a42:	041b      	lsls	r3, r3, #16
    1a44:	9f04      	ldr	r7, [sp, #16]
    1a46:	0c1b      	lsrs	r3, r3, #16
    1a48:	0052      	lsls	r2, r2, #1
    1a4a:	52bb      	strh	r3, [r7, r2]
    1a4c:	9b02      	ldr	r3, [sp, #8]
    1a4e:	1d3a      	adds	r2, r7, #4
    1a50:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
    1a52:	9204      	str	r2, [sp, #16]
    1a54:	1c9a      	adds	r2, r3, #2
    1a56:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    1a58:	9202      	str	r2, [sp, #8]
    1a5a:	3301      	adds	r3, #1
    1a5c:	1c6a      	adds	r2, r5, #1
    1a5e:	9309      	str	r3, [sp, #36]	@ 0x24
    1a60:	920a      	str	r2, [sp, #40]	@ 0x28
    1a62:	428b      	cmp	r3, r1
    1a64:	d000      	beq.n	1a68 <JPEG_Decoder_ReadImage+0xd0c>
    1a66:	e749      	b.n	18fc <JPEG_Decoder_ReadImage+0xba0>
    1a68:	9d2e      	ldr	r5, [sp, #184]	@ 0xb8
    1a6a:	46ac      	mov	ip, r5
    1a6c:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
    1a6e:	9a13      	ldr	r2, [sp, #76]	@ 0x4c
    1a70:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
    1a72:	3108      	adds	r1, #8
    1a74:	3308      	adds	r3, #8
    1a76:	3020      	adds	r0, #32
    1a78:	4462      	add	r2, ip
    1a7a:	42a9      	cmp	r1, r5
    1a7c:	d000      	beq.n	1a80 <JPEG_Decoder_ReadImage+0xd24>
    1a7e:	e732      	b.n	18e6 <JPEG_Decoder_ReadImage+0xb8a>
    1a80:	4657      	mov	r7, sl
    1a82:	46a2      	mov	sl, r4
    1a84:	e611      	b.n	16aa <JPEG_Decoder_ReadImage+0x94e>
    1a86:	2300      	movs	r3, #0
    1a88:	931f      	str	r3, [sp, #124]	@ 0x7c
    1a8a:	f7ff fa77 	bl	f7c <JPEG_Decoder_ReadImage+0x220>
    1a8e:	9a11      	ldr	r2, [sp, #68]	@ 0x44
    1a90:	01d2      	lsls	r2, r2, #7
    1a92:	1e54      	subs	r4, r2, #1
    1a94:	3cff      	subs	r4, #255	@ 0xff
    1a96:	9211      	str	r2, [sp, #68]	@ 0x44
    1a98:	4262      	negs	r2, r4
    1a9a:	4154      	adcs	r4, r2
    1a9c:	401c      	ands	r4, r3
    1a9e:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    1aa0:	01db      	lsls	r3, r3, #7
    1aa2:	930f      	str	r3, [sp, #60]	@ 0x3c
    1aa4:	9b12      	ldr	r3, [sp, #72]	@ 0x48
    1aa6:	01db      	lsls	r3, r3, #7
    1aa8:	9312      	str	r3, [sp, #72]	@ 0x48
    1aaa:	f7ff fa45 	bl	f38 <JPEG_Decoder_ReadImage+0x1dc>
    1aae:	000f      	movs	r7, r1
    1ab0:	e64f      	b.n	1752 <JPEG_Decoder_ReadImage+0x9f6>
    1ab2:	2301      	movs	r3, #1
    1ab4:	9310      	str	r3, [sp, #64]	@ 0x40
    1ab6:	930d      	str	r3, [sp, #52]	@ 0x34
    1ab8:	2300      	movs	r3, #0
    1aba:	930e      	str	r3, [sp, #56]	@ 0x38
    1abc:	3b01      	subs	r3, #1
    1abe:	931c      	str	r3, [sp, #112]	@ 0x70
    1ac0:	9319      	str	r3, [sp, #100]	@ 0x64
    1ac2:	ab92      	add	r3, sp, #584	@ 0x248
    1ac4:	931b      	str	r3, [sp, #108]	@ 0x6c
    1ac6:	2300      	movs	r3, #0
    1ac8:	2200      	movs	r2, #0
    1aca:	4699      	mov	r9, r3
    1acc:	3301      	adds	r3, #1
    1ace:	9312      	str	r3, [sp, #72]	@ 0x48
    1ad0:	930f      	str	r3, [sp, #60]	@ 0x3c
    1ad2:	2300      	movs	r3, #0
    1ad4:	9201      	str	r2, [sp, #4]
    1ad6:	aa82      	add	r2, sp, #520	@ 0x208
    1ad8:	2400      	movs	r4, #0
    1ada:	9215      	str	r2, [sp, #84]	@ 0x54
    1adc:	921a      	str	r2, [sp, #104]	@ 0x68
    1ade:	9311      	str	r3, [sp, #68]	@ 0x44
    1ae0:	f7ff fa2a 	bl	f38 <JPEG_Decoder_ReadImage+0x1dc>
    1ae4:	000000fc 	strdeq	r0, [r0], -ip

00001ae8 <hrt_DecodeJPEG>:
    1ae8:	b570      	push	{r4, r5, r6, lr}
    1aea:	4c0c      	ldr	r4, [pc, #48]	@ (1b1c <hrt_DecodeJPEG+0x34>)
    1aec:	0015      	movs	r5, r2
    1aee:	44a5      	add	sp, r4
    1af0:	001e      	movs	r6, r3
    1af2:	000c      	movs	r4, r1
    1af4:	9003      	str	r0, [sp, #12]
    1af6:	a903      	add	r1, sp, #12
    1af8:	a805      	add	r0, sp, #20
    1afa:	f7ff fffe 	bl	360 <JPEG_Decoder_ReadHeaders>
    1afe:	002b      	movs	r3, r5
    1b00:	0022      	movs	r2, r4
    1b02:	9600      	str	r6, [sp, #0]
    1b04:	a903      	add	r1, sp, #12
    1b06:	a805      	add	r0, sp, #20
    1b08:	f7ff fffe 	bl	d5c <JPEG_Decoder_ReadImage>
    1b0c:	2001      	movs	r0, #1
    1b0e:	238e      	movs	r3, #142	@ 0x8e
    1b10:	00db      	lsls	r3, r3, #3
    1b12:	449d      	add	sp, r3
    1b14:	bc70      	pop	{r4, r5, r6}
    1b16:	bc02      	pop	{r1}
    1b18:	4708      	bx	r1
    1b1a:	46c0      	nop			@ (mov r8, r8)
    1b1c:	fffffb90 			@ <UNDEFINED> instruction: 0xfffffb90

00001b20 <JPEG_Match>:
    1b20:	0003      	movs	r3, r0
    1b22:	2900      	cmp	r1, #0
    1b24:	d00a      	beq.n	1b3c <JPEG_Match+0x1c>
    1b26:	7802      	ldrb	r2, [r0, #0]
    1b28:	2000      	movs	r0, #0
    1b2a:	2aff      	cmp	r2, #255	@ 0xff
    1b2c:	d105      	bne.n	1b3a <JPEG_Match+0x1a>
    1b2e:	2901      	cmp	r1, #1
    1b30:	d006      	beq.n	1b40 <JPEG_Match+0x20>
    1b32:	7858      	ldrb	r0, [r3, #1]
    1b34:	38d8      	subs	r0, #216	@ 0xd8
    1b36:	4243      	negs	r3, r0
    1b38:	4158      	adcs	r0, r3
    1b3a:	4770      	bx	lr
    1b3c:	2000      	movs	r0, #0
    1b3e:	e7fc      	b.n	1b3a <JPEG_Match+0x1a>
    1b40:	2001      	movs	r0, #1
    1b42:	e7fa      	b.n	1b3a <JPEG_Match+0x1a>

Disassembly of section .rodata:

00000000 <JPEG_ToZigZag-0xfc>:
   0:	00000606 	andeq	r0, r0, r6, lsl #12
   4:	0000038a 	andeq	r0, r0, sl, lsl #7
   8:	0000038a 	andeq	r0, r0, sl, lsl #7
   c:	0000038a 	andeq	r0, r0, sl, lsl #7
  10:	00000582 	andeq	r0, r0, r2, lsl #11
  14:	0000038a 	andeq	r0, r0, sl, lsl #7
  18:	0000038a 	andeq	r0, r0, sl, lsl #7
  1c:	0000038a 	andeq	r0, r0, sl, lsl #7
  20:	0000038a 	andeq	r0, r0, sl, lsl #7
  24:	0000038a 	andeq	r0, r0, sl, lsl #7
  28:	0000038a 	andeq	r0, r0, sl, lsl #7
  2c:	0000038a 	andeq	r0, r0, sl, lsl #7
  30:	0000038a 	andeq	r0, r0, sl, lsl #7
  34:	0000038a 	andeq	r0, r0, sl, lsl #7
  38:	0000038a 	andeq	r0, r0, sl, lsl #7
  3c:	0000038a 	andeq	r0, r0, sl, lsl #7
  40:	0000038a 	andeq	r0, r0, sl, lsl #7
  44:	0000038a 	andeq	r0, r0, sl, lsl #7
  48:	0000038a 	andeq	r0, r0, sl, lsl #7
  4c:	0000038a 	andeq	r0, r0, sl, lsl #7
  50:	0000038a 	andeq	r0, r0, sl, lsl #7
  54:	0000038a 	andeq	r0, r0, sl, lsl #7
  58:	0000038a 	andeq	r0, r0, sl, lsl #7
  5c:	0000038a 	andeq	r0, r0, sl, lsl #7
  60:	0000038a 	andeq	r0, r0, sl, lsl #7
  64:	0000038a 	andeq	r0, r0, sl, lsl #7
  68:	00000520 	andeq	r0, r0, r0, lsr #10
  6c:	000003e6 	andeq	r0, r0, r6, ror #7
  70:	0000038a 	andeq	r0, r0, sl, lsl #7
  74:	000003c8 	andeq	r0, r0, r8, asr #7
  78:	0000038a 	andeq	r0, r0, sl, lsl #7
  7c:	0000038a 	andeq	r0, r0, sl, lsl #7
  80:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  84:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  88:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  8c:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  90:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  94:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  98:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  9c:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  a0:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  a4:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  a8:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  ac:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  b0:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  b4:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  b8:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  bc:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2
  c0:	0000038a 	andeq	r0, r0, sl, lsl #7
  c4:	0000038a 	andeq	r0, r0, sl, lsl #7
  c8:	0000038a 	andeq	r0, r0, sl, lsl #7
  cc:	0000038a 	andeq	r0, r0, sl, lsl #7
  d0:	0000038a 	andeq	r0, r0, sl, lsl #7
  d4:	0000038a 	andeq	r0, r0, sl, lsl #7
  d8:	0000038a 	andeq	r0, r0, sl, lsl #7
  dc:	0000038a 	andeq	r0, r0, sl, lsl #7
  e0:	0000038a 	andeq	r0, r0, sl, lsl #7
  e4:	0000038a 	andeq	r0, r0, sl, lsl #7
  e8:	0000038a 	andeq	r0, r0, sl, lsl #7
  ec:	0000038a 	andeq	r0, r0, sl, lsl #7
  f0:	0000038a 	andeq	r0, r0, sl, lsl #7
  f4:	0000038a 	andeq	r0, r0, sl, lsl #7
  f8:	000003b2 			@ <UNDEFINED> instruction: 0x000003b2

000000fc <JPEG_ToZigZag>:
  fc:	10080100 	andne	r0, r8, r0, lsl #2
 100:	0a030209 	beq	c092c <JPEG_Match+0xbee0c>
 104:	19201811 	stmdbne	r0!, {r0, r4, fp, ip}
 108:	05040b12 	streq	r0, [r4, #-2834]	@ 0xfffff4ee
 10c:	211a130c 	tstcs	sl, ip, lsl #6
 110:	22293028 	eorcs	r3, r9, #40	@ 0x28
 114:	060d141b 			@ <UNDEFINED> instruction: 0x060d141b
 118:	1c150e07 	ldcne	14, cr0, [r5], {7}
 11c:	38312a23 	ldmdacc	r1!, {r0, r1, r5, r9, fp, sp}
 120:	242b3239 	strtcs	r3, [fp], #-569	@ 0xfffffdc7
 124:	170f161d 	smladne	pc, sp, r6, r1	@ <UNPREDICTABLE>
 128:	332c251e 			@ <UNDEFINED> instruction: 0x332c251e
 12c:	2d343b3a 	vldmdbcs	r4!, {d3-d31}
 130:	2e271f26 	cdpcs	15, 2, cr1, cr7, cr6, {1}
 134:	363d3c35 			@ <UNDEFINED> instruction: 0x363d3c35
 138:	3f3e372f 	svccc	0x003e372f

0000013c <JPEG_ComponentRange>:
	...
 15c:	03020100 	movweq	r0, #8448	@ 0x2100
 160:	07060504 	streq	r0, [r6, -r4, lsl #10]
 164:	0b0a0908 	bleq	28258c <JPEG_Match+0x280a6c>
 168:	0f0e0d0c 	svceq	0x000e0d0c
 16c:	13121110 	tstne	r2, #16, 2
 170:	17161514 			@ <UNDEFINED> instruction: 0x17161514
 174:	1b1a1918 	blne	6865dc <JPEG_Match+0x684abc>
 178:	1f1e1d1c 	svcne	0x001e1d1c
 17c:	1f1f1f1f 	svcne	0x001f1f1f
 180:	1f1f1f1f 	svcne	0x001f1f1f
 184:	1f1f1f1f 	svcne	0x001f1f1f
 188:	1f1f1f1f 	svcne	0x001f1f1f
 18c:	1f1f1f1f 	svcne	0x001f1f1f
 190:	1f1f1f1f 	svcne	0x001f1f1f
 194:	1f1f1f1f 	svcne	0x001f1f1f
 198:	1f1f1f1f 	svcne	0x001f1f1f

0000019c <JPEG_AANScaleFactor>:
 19c:	00000100 	andeq	r0, r0, r0, lsl #2
 1a0:	00000163 	andeq	r0, r0, r3, ror #2
 1a4:	0000014e 	andeq	r0, r0, lr, asr #2
 1a8:	0000012d 	andeq	r0, r0, sp, lsr #2
 1ac:	00000100 	andeq	r0, r0, r0, lsl #2
 1b0:	000000c9 	andeq	r0, r0, r9, asr #1
 1b4:	0000008a 	andeq	r0, r0, sl, lsl #1
 1b8:	00000046 	andeq	r0, r0, r6, asr #32
 1bc:	00000163 	andeq	r0, r0, r3, ror #2
 1c0:	000001ec 	andeq	r0, r0, ip, ror #3
 1c4:	000001cf 	andeq	r0, r0, pc, asr #3
 1c8:	000001a1 	andeq	r0, r0, r1, lsr #3
 1cc:	00000163 	andeq	r0, r0, r3, ror #2
 1d0:	00000116 	andeq	r0, r0, r6, lsl r1
 1d4:	000000c0 	andeq	r0, r0, r0, asr #1
 1d8:	00000061 	andeq	r0, r0, r1, rrx
 1dc:	0000014e 	andeq	r0, r0, lr, asr #2
 1e0:	000001cf 	andeq	r0, r0, pc, asr #3
 1e4:	000001b5 			@ <UNDEFINED> instruction: 0x000001b5
 1e8:	00000189 	andeq	r0, r0, r9, lsl #3
 1ec:	0000014e 	andeq	r0, r0, lr, asr #2
 1f0:	00000106 	andeq	r0, r0, r6, lsl #2
 1f4:	000000b5 	strheq	r0, [r0], -r5
 1f8:	0000005c 	andeq	r0, r0, ip, asr r0
 1fc:	0000012d 	andeq	r0, r0, sp, lsr #2
 200:	000001a1 	andeq	r0, r0, r1, lsr #3
 204:	00000189 	andeq	r0, r0, r9, lsl #3
 208:	00000161 	andeq	r0, r0, r1, ror #2
 20c:	0000012d 	andeq	r0, r0, sp, lsr #2
 210:	000000ec 	andeq	r0, r0, ip, ror #1
 214:	000000a2 	andeq	r0, r0, r2, lsr #1
 218:	00000053 	andeq	r0, r0, r3, asr r0
 21c:	00000100 	andeq	r0, r0, r0, lsl #2
 220:	00000163 	andeq	r0, r0, r3, ror #2
 224:	0000014e 	andeq	r0, r0, lr, asr #2
 228:	0000012d 	andeq	r0, r0, sp, lsr #2
 22c:	00000100 	andeq	r0, r0, r0, lsl #2
 230:	000000c9 	andeq	r0, r0, r9, asr #1
 234:	0000008a 	andeq	r0, r0, sl, lsl #1
 238:	00000046 	andeq	r0, r0, r6, asr #32
 23c:	000000c9 	andeq	r0, r0, r9, asr #1
 240:	00000116 	andeq	r0, r0, r6, lsl r1
 244:	00000106 	andeq	r0, r0, r6, lsl #2
 248:	000000ec 	andeq	r0, r0, ip, ror #1
 24c:	000000c9 	andeq	r0, r0, r9, asr #1
 250:	0000009e 	muleq	r0, lr, r0
 254:	0000006c 	andeq	r0, r0, ip, rrx
 258:	00000037 	andeq	r0, r0, r7, lsr r0
 25c:	0000008a 	andeq	r0, r0, sl, lsl #1
 260:	000000c0 	andeq	r0, r0, r0, asr #1
 264:	000000b5 	strheq	r0, [r0], -r5
 268:	000000a2 	andeq	r0, r0, r2, lsr #1
 26c:	0000008a 	andeq	r0, r0, sl, lsl #1
 270:	0000006c 	andeq	r0, r0, ip, rrx
 274:	0000004a 	andeq	r0, r0, sl, asr #32
 278:	00000026 	andeq	r0, r0, r6, lsr #32
 27c:	00000046 	andeq	r0, r0, r6, asr #32
 280:	00000061 	andeq	r0, r0, r1, rrx
 284:	0000005c 	andeq	r0, r0, ip, asr r0
 288:	00000053 	andeq	r0, r0, r3, asr r0
 28c:	00000046 	andeq	r0, r0, r6, asr #32
 290:	00000037 	andeq	r0, r0, r7, lsr r0
 294:	00000026 	andeq	r0, r0, r6, lsr #32
 298:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


misc.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_PrintRTCTimeIntoString>:
   0:	b530      	push	{r4, r5, lr}
   2:	b085      	sub	sp, #20
   4:	ac01      	add	r4, sp, #4
   6:	0022      	movs	r2, r4
   8:	4b14      	ldr	r3, [pc, #80]	@ (5c <hrt_PrintRTCTimeIntoString+0x5c>)
   a:	0005      	movs	r5, r0
   c:	cb03      	ldmia	r3!, {r0, r1}
   e:	c203      	stmia	r2!, {r0, r1}
  10:	781b      	ldrb	r3, [r3, #0]
  12:	7013      	strb	r3, [r2, #0]
  14:	f7ff fffe 	bl	0 <gettime>
  18:	210f      	movs	r1, #15
  1a:	0682      	lsls	r2, r0, #26
  1c:	0f92      	lsrs	r2, r2, #30
  1e:	3230      	adds	r2, #48	@ 0x30
  20:	7022      	strb	r2, [r4, #0]
  22:	000a      	movs	r2, r1
  24:	4002      	ands	r2, r0
  26:	3230      	adds	r2, #48	@ 0x30
  28:	7062      	strb	r2, [r4, #1]
  2a:	1302      	asrs	r2, r0, #12
  2c:	400a      	ands	r2, r1
  2e:	3230      	adds	r2, #48	@ 0x30
  30:	70e2      	strb	r2, [r4, #3]
  32:	1202      	asrs	r2, r0, #8
  34:	400a      	ands	r2, r1
  36:	3230      	adds	r2, #48	@ 0x30
  38:	7122      	strb	r2, [r4, #4]
  3a:	1502      	asrs	r2, r0, #20
  3c:	400a      	ands	r2, r1
  3e:	1403      	asrs	r3, r0, #16
  40:	3230      	adds	r2, #48	@ 0x30
  42:	400b      	ands	r3, r1
  44:	71a2      	strb	r2, [r4, #6]
  46:	3330      	adds	r3, #48	@ 0x30
  48:	2209      	movs	r2, #9
  4a:	0021      	movs	r1, r4
  4c:	0028      	movs	r0, r5
  4e:	71e3      	strb	r3, [r4, #7]
  50:	f7ff fffe 	bl	0 <memcpy>
  54:	b005      	add	sp, #20
  56:	bc30      	pop	{r4, r5}
  58:	bc01      	pop	{r0}
  5a:	4700      	bx	r0
  5c:	00000000 	andeq	r0, r0, r0

00000060 <hrt_DMATransfer>:
  60:	0042      	lsls	r2, r0, #1
  62:	1810      	adds	r0, r2, r0
  64:	4a07      	ldr	r2, [pc, #28]	@ (84 <hrt_DMATransfer+0x24>)
  66:	4694      	mov	ip, r2
  68:	2200      	movs	r2, #0
  6a:	0080      	lsls	r0, r0, #2
  6c:	b082      	sub	sp, #8
  6e:	4460      	add	r0, ip
  70:	6082      	str	r2, [r0, #8]
  72:	aa01      	add	r2, sp, #4
  74:	6002      	str	r2, [r0, #0]
  76:	466a      	mov	r2, sp
  78:	6042      	str	r2, [r0, #4]
  7a:	9a02      	ldr	r2, [sp, #8]
  7c:	4313      	orrs	r3, r2
  7e:	6083      	str	r3, [r0, #8]
  80:	b002      	add	sp, #8
  82:	4770      	bx	lr
  84:	040000b0 	streq	r0, [r0], #-176	@ 0xffffff50

00000088 <hrt_DMAClear>:
  88:	0043      	lsls	r3, r0, #1
  8a:	1818      	adds	r0, r3, r0
  8c:	4b05      	ldr	r3, [pc, #20]	@ (a4 <hrt_DMAClear+0x1c>)
  8e:	469c      	mov	ip, r3
  90:	2300      	movs	r3, #0
  92:	0080      	lsls	r0, r0, #2
  94:	4460      	add	r0, ip
  96:	6083      	str	r3, [r0, #8]
  98:	6003      	str	r3, [r0, #0]
  9a:	6043      	str	r3, [r0, #4]
  9c:	4b02      	ldr	r3, [pc, #8]	@ (a8 <hrt_DMAClear+0x20>)
  9e:	6083      	str	r3, [r0, #8]
  a0:	4770      	bx	lr
  a2:	46c0      	nop			@ (mov r8, r8)
  a4:	040000b0 	streq	r0, [r0], #-176	@ 0xffffff50
  a8:	81600000 	cmnhi	r0, r0

000000ac <hrt_GetHeartLibVersion>:
  ac:	2064      	movs	r0, #100	@ 0x64
  ae:	4770      	bx	lr

Disassembly of section .data:

00000000 <pogoHeader>:
   0:	0203fbf8 	andeq	pc, r3, #248, 22	@ 0x3e000

00000004 <SRAM>:
   4:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}

00000008 <OAM>:
   8:	07000000 	streq	r0, [r0, -r0]

0000000c <PALETTE>:
   c:	05000000 	streq	r0, [r0, #-0]

00000010 <VRAM>:
  10:	06000000 	streq	r0, [r0], -r0

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	303a3030 	eorscc	r3, sl, r0, lsr r0
   4:	30303a30 	eorscc	r3, r0, r0, lsr sl
	...

Disassembly of section .iwram:

00000000 <hrt_EZFSetRompage>:
   0:	4a08      	ldr	r2, [pc, #32]	@ (24 <hrt_EZFSetRompage+0x24>)
   2:	4b09      	ldr	r3, [pc, #36]	@ (28 <hrt_EZFSetRompage+0x28>)
   4:	2180      	movs	r1, #128	@ 0x80
   6:	801a      	strh	r2, [r3, #0]
   8:	23a8      	movs	r3, #168	@ 0xa8
   a:	0509      	lsls	r1, r1, #20
   c:	015b      	lsls	r3, r3, #5
   e:	800b      	strh	r3, [r1, #0]
  10:	4906      	ldr	r1, [pc, #24]	@ (2c <hrt_EZFSetRompage+0x2c>)
  12:	800a      	strh	r2, [r1, #0]
  14:	4a06      	ldr	r2, [pc, #24]	@ (30 <hrt_EZFSetRompage+0x30>)
  16:	8013      	strh	r3, [r2, #0]
  18:	4a06      	ldr	r2, [pc, #24]	@ (34 <hrt_EZFSetRompage+0x34>)
  1a:	8010      	strh	r0, [r2, #0]
  1c:	4a06      	ldr	r2, [pc, #24]	@ (38 <hrt_EZFSetRompage+0x38>)
  1e:	8013      	strh	r3, [r2, #0]
  20:	4770      	bx	lr
  22:	46c0      	nop			@ (mov r8, r8)
  24:	ffffd200 			@ <UNDEFINED> instruction: 0xffffd200
  28:	09fe0000 	ldmibeq	lr!, {}^	@ <UNPREDICTABLE>
  2c:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
  30:	08040000 	stmdaeq	r4, {}	@ <UNPREDICTABLE>
  34:	09880000 	stmibeq	r8, {}	@ <UNPREDICTABLE>
  38:	09fc0000 	ldmibeq	ip!, {}^	@ <UNPREDICTABLE>

0000003c <hrt_ExitToEZFlash>:
  3c:	4a09      	ldr	r2, [pc, #36]	@ (64 <hrt_ExitToEZFlash+0x28>)
  3e:	4b0a      	ldr	r3, [pc, #40]	@ (68 <hrt_ExitToEZFlash+0x2c>)
  40:	2180      	movs	r1, #128	@ 0x80
  42:	801a      	strh	r2, [r3, #0]
  44:	23a8      	movs	r3, #168	@ 0xa8
  46:	0509      	lsls	r1, r1, #20
  48:	015b      	lsls	r3, r3, #5
  4a:	800b      	strh	r3, [r1, #0]
  4c:	4907      	ldr	r1, [pc, #28]	@ (6c <hrt_ExitToEZFlash+0x30>)
  4e:	800a      	strh	r2, [r1, #0]
  50:	4a07      	ldr	r2, [pc, #28]	@ (70 <hrt_ExitToEZFlash+0x34>)
  52:	4908      	ldr	r1, [pc, #32]	@ (74 <hrt_ExitToEZFlash+0x38>)
  54:	8013      	strh	r3, [r2, #0]
  56:	4a08      	ldr	r2, [pc, #32]	@ (78 <hrt_ExitToEZFlash+0x3c>)
  58:	8011      	strh	r1, [r2, #0]
  5a:	4a08      	ldr	r2, [pc, #32]	@ (7c <hrt_ExitToEZFlash+0x40>)
  5c:	8013      	strh	r3, [r2, #0]
  5e:	df01      	svc	1
  60:	df00      	svc	0
  62:	4770      	bx	lr
  64:	ffffd200 			@ <UNDEFINED> instruction: 0xffffd200
  68:	09fe0000 	ldmibeq	lr!, {}^	@ <UNPREDICTABLE>
  6c:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
  70:	08040000 	stmdaeq	r4, {}	@ <UNPREDICTABLE>
  74:	ffff8000 			@ <UNDEFINED> instruction: 0xffff8000
  78:	09880000 	stmibeq	r8, {}	@ <UNPREDICTABLE>
  7c:	09fc0000 	ldmibeq	ip!, {}^	@ <UNPREDICTABLE>

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


oam.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SetOBJX>:
   0:	b510      	push	{r4, lr}
   2:	0603      	lsls	r3, r0, #24
   4:	000c      	movs	r4, r1
   6:	2b00      	cmp	r3, #0
   8:	db07      	blt.n	1a <hrt_SetOBJX+0x1a>
   a:	4a05      	ldr	r2, [pc, #20]	@ (20 <hrt_SetOBJX+0x20>)
   c:	00c0      	lsls	r0, r0, #3
   e:	1812      	adds	r2, r2, r0
  10:	8853      	ldrh	r3, [r2, #2]
  12:	0a5b      	lsrs	r3, r3, #9
  14:	0259      	lsls	r1, r3, #9
  16:	4321      	orrs	r1, r4
  18:	8051      	strh	r1, [r2, #2]
  1a:	bc10      	pop	{r4}
  1c:	bc01      	pop	{r0}
  1e:	4700      	bx	r0
  20:	00000000 	andeq	r0, r0, r0

00000024 <hrt_SetOBJY>:
  24:	000b      	movs	r3, r1
  26:	b510      	push	{r4, lr}
  28:	0602      	lsls	r2, r0, #24
  2a:	d406      	bmi.n	3a <hrt_SetOBJY+0x16>
  2c:	24ff      	movs	r4, #255	@ 0xff
  2e:	4a04      	ldr	r2, [pc, #16]	@ (40 <hrt_SetOBJY+0x1c>)
  30:	00c0      	lsls	r0, r0, #3
  32:	5a81      	ldrh	r1, [r0, r2]
  34:	43a1      	bics	r1, r4
  36:	4319      	orrs	r1, r3
  38:	5281      	strh	r1, [r0, r2]
  3a:	bc10      	pop	{r4}
  3c:	bc01      	pop	{r0}
  3e:	4700      	bx	r0
  40:	00000000 	andeq	r0, r0, r0

00000044 <hrt_CreateOBJ>:
  44:	b5f0      	push	{r4, r5, r6, r7, lr}
  46:	4657      	mov	r7, sl
  48:	464e      	mov	r6, r9
  4a:	4645      	mov	r5, r8
  4c:	46de      	mov	lr, fp
  4e:	0004      	movs	r4, r0
  50:	b5e0      	push	{r5, r6, r7, lr}
  52:	b085      	sub	sp, #20
  54:	9301      	str	r3, [sp, #4]
  56:	ab0e      	add	r3, sp, #56	@ 0x38
  58:	7818      	ldrb	r0, [r3, #0]
  5a:	ab0f      	add	r3, sp, #60	@ 0x3c
  5c:	4684      	mov	ip, r0
  5e:	7818      	ldrb	r0, [r3, #0]
  60:	ab10      	add	r3, sp, #64	@ 0x40
  62:	9002      	str	r0, [sp, #8]
  64:	7818      	ldrb	r0, [r3, #0]
  66:	ab11      	add	r3, sp, #68	@ 0x44
  68:	4680      	mov	r8, r0
  6a:	7818      	ldrb	r0, [r3, #0]
  6c:	ab12      	add	r3, sp, #72	@ 0x48
  6e:	781f      	ldrb	r7, [r3, #0]
  70:	ab13      	add	r3, sp, #76	@ 0x4c
  72:	781e      	ldrb	r6, [r3, #0]
  74:	ab14      	add	r3, sp, #80	@ 0x50
  76:	781d      	ldrb	r5, [r3, #0]
  78:	ab15      	add	r3, sp, #84	@ 0x54
  7a:	4682      	mov	sl, r0
  7c:	7818      	ldrb	r0, [r3, #0]
  7e:	ab16      	add	r3, sp, #88	@ 0x58
  80:	4681      	mov	r9, r0
  82:	a817      	add	r0, sp, #92	@ 0x5c
  84:	9503      	str	r5, [sp, #12]
  86:	9100      	str	r1, [sp, #0]
  88:	781b      	ldrb	r3, [r3, #0]
  8a:	7800      	ldrb	r0, [r0, #0]
  8c:	0625      	lsls	r5, r4, #24
  8e:	d432      	bmi.n	f6 <hrt_CreateOBJ+0xb2>
  90:	00e1      	lsls	r1, r4, #3
  92:	468b      	mov	fp, r1
  94:	4661      	mov	r1, ip
  96:	027f      	lsls	r7, r7, #9
  98:	4317      	orrs	r7, r2
  9a:	020a      	lsls	r2, r1, #8
  9c:	4651      	mov	r1, sl
  9e:	433a      	orrs	r2, r7
  a0:	0336      	lsls	r6, r6, #12
  a2:	4316      	orrs	r6, r2
  a4:	038a      	lsls	r2, r1, #14
  a6:	4649      	mov	r1, r9
  a8:	029b      	lsls	r3, r3, #10
  aa:	4333      	orrs	r3, r6
  ac:	4313      	orrs	r3, r2
  ae:	034a      	lsls	r2, r1, #13
  b0:	4659      	mov	r1, fp
  b2:	4d21      	ldr	r5, [pc, #132]	@ (138 <hrt_CreateOBJ+0xf4>)
  b4:	4313      	orrs	r3, r2
  b6:	534b      	strh	r3, [r1, r5]
  b8:	4641      	mov	r1, r8
  ba:	9a02      	ldr	r2, [sp, #8]
  bc:	034b      	lsls	r3, r1, #13
  be:	9900      	ldr	r1, [sp, #0]
  c0:	4319      	orrs	r1, r3
  c2:	0313      	lsls	r3, r2, #12
  c4:	9a01      	ldr	r2, [sp, #4]
  c6:	4319      	orrs	r1, r3
  c8:	0393      	lsls	r3, r2, #14
  ca:	4319      	orrs	r1, r3
  cc:	0263      	lsls	r3, r4, #9
  ce:	001a      	movs	r2, r3
  d0:	4663      	mov	r3, ip
  d2:	4353      	muls	r3, r2
  d4:	2280      	movs	r2, #128	@ 0x80
  d6:	0092      	lsls	r2, r2, #2
  d8:	4690      	mov	r8, r2
  da:	4319      	orrs	r1, r3
  dc:	9b03      	ldr	r3, [sp, #12]
  de:	0280      	lsls	r0, r0, #10
  e0:	031b      	lsls	r3, r3, #12
  e2:	4318      	orrs	r0, r3
  e4:	9b18      	ldr	r3, [sp, #96]	@ 0x60
  e6:	4443      	add	r3, r8
  e8:	4318      	orrs	r0, r3
  ea:	4663      	mov	r3, ip
  ec:	445d      	add	r5, fp
  ee:	8069      	strh	r1, [r5, #2]
  f0:	80a8      	strh	r0, [r5, #4]
  f2:	2b00      	cmp	r3, #0
  f4:	d108      	bne.n	108 <hrt_CreateOBJ+0xc4>
  f6:	b005      	add	sp, #20
  f8:	bcf0      	pop	{r4, r5, r6, r7}
  fa:	46bb      	mov	fp, r7
  fc:	46b2      	mov	sl, r6
  fe:	46a9      	mov	r9, r5
 100:	46a0      	mov	r8, r4
 102:	bcf0      	pop	{r4, r5, r6, r7}
 104:	bc01      	pop	{r0}
 106:	4700      	bx	r0
 108:	21b4      	movs	r1, #180	@ 0xb4
 10a:	2000      	movs	r0, #0
 10c:	0049      	lsls	r1, r1, #1
 10e:	f7ff fffe 	bl	0 <hrt_DivMod>
 112:	4a0a      	ldr	r2, [pc, #40]	@ (13c <hrt_CreateOBJ+0xf8>)
 114:	2100      	movs	r1, #0
 116:	5e51      	ldrsh	r1, [r2, r1]
 118:	4a09      	ldr	r2, [pc, #36]	@ (140 <hrt_CreateOBJ+0xfc>)
 11a:	4b0a      	ldr	r3, [pc, #40]	@ (144 <hrt_CreateOBJ+0x100>)
 11c:	2000      	movs	r0, #0
 11e:	5e10      	ldrsh	r0, [r2, r0]
 120:	681b      	ldr	r3, [r3, #0]
 122:	0202      	lsls	r2, r0, #8
 124:	0164      	lsls	r4, r4, #5
 126:	4252      	negs	r2, r2
 128:	191b      	adds	r3, r3, r4
 12a:	1212      	asrs	r2, r2, #8
 12c:	80d9      	strh	r1, [r3, #6]
 12e:	81d8      	strh	r0, [r3, #14]
 130:	82da      	strh	r2, [r3, #22]
 132:	83d9      	strh	r1, [r3, #30]
 134:	e7df      	b.n	f6 <hrt_CreateOBJ+0xb2>
 136:	46c0      	nop			@ (mov r8, r8)
	...

00000148 <hrt_AffineOBJ>:
 148:	b570      	push	{r4, r5, r6, lr}
 14a:	0006      	movs	r6, r0
 14c:	001c      	movs	r4, r3
 14e:	0008      	movs	r0, r1
 150:	0015      	movs	r5, r2
 152:	0633      	lsls	r3, r6, #24
 154:	d41c      	bmi.n	190 <hrt_AffineOBJ+0x48>
 156:	21b4      	movs	r1, #180	@ 0xb4
 158:	0049      	lsls	r1, r1, #1
 15a:	f7ff fffe 	bl	0 <hrt_DivMod>
 15e:	4b0e      	ldr	r3, [pc, #56]	@ (198 <hrt_AffineOBJ+0x50>)
 160:	2000      	movs	r0, #0
 162:	5e18      	ldrsh	r0, [r3, r0]
 164:	002a      	movs	r2, r5
 166:	4342      	muls	r2, r0
 168:	4b0c      	ldr	r3, [pc, #48]	@ (19c <hrt_AffineOBJ+0x54>)
 16a:	681b      	ldr	r3, [r3, #0]
 16c:	0176      	lsls	r6, r6, #5
 16e:	199b      	adds	r3, r3, r6
 170:	1212      	asrs	r2, r2, #8
 172:	80da      	strh	r2, [r3, #6]
 174:	4a0a      	ldr	r2, [pc, #40]	@ (1a0 <hrt_AffineOBJ+0x58>)
 176:	2100      	movs	r1, #0
 178:	5e52      	ldrsh	r2, [r2, r1]
 17a:	0021      	movs	r1, r4
 17c:	4351      	muls	r1, r2
 17e:	4252      	negs	r2, r2
 180:	4355      	muls	r5, r2
 182:	4344      	muls	r4, r0
 184:	1209      	asrs	r1, r1, #8
 186:	122d      	asrs	r5, r5, #8
 188:	1224      	asrs	r4, r4, #8
 18a:	81d9      	strh	r1, [r3, #14]
 18c:	82dd      	strh	r5, [r3, #22]
 18e:	83dc      	strh	r4, [r3, #30]
 190:	bc70      	pop	{r4, r5, r6}
 192:	bc01      	pop	{r0}
 194:	4700      	bx	r0
 196:	46c0      	nop			@ (mov r8, r8)
	...

000001a4 <hrt_CloneOBJ>:
 1a4:	000b      	movs	r3, r1
 1a6:	4303      	orrs	r3, r0
 1a8:	b530      	push	{r4, r5, lr}
 1aa:	061b      	lsls	r3, r3, #24
 1ac:	d41a      	bmi.n	1e4 <hrt_CloneOBJ+0x40>
 1ae:	4c0f      	ldr	r4, [pc, #60]	@ (1ec <hrt_CloneOBJ+0x48>)
 1b0:	00c2      	lsls	r2, r0, #3
 1b2:	1912      	adds	r2, r2, r4
 1b4:	6815      	ldr	r5, [r2, #0]
 1b6:	00cb      	lsls	r3, r1, #3
 1b8:	191b      	adds	r3, r3, r4
 1ba:	601d      	str	r5, [r3, #0]
 1bc:	8892      	ldrh	r2, [r2, #4]
 1be:	809a      	strh	r2, [r3, #4]
 1c0:	4b0b      	ldr	r3, [pc, #44]	@ (1f0 <hrt_CloneOBJ+0x4c>)
 1c2:	681b      	ldr	r3, [r3, #0]
 1c4:	0140      	lsls	r0, r0, #5
 1c6:	1818      	adds	r0, r3, r0
 1c8:	0149      	lsls	r1, r1, #5
 1ca:	1859      	adds	r1, r3, r1
 1cc:	2206      	movs	r2, #6
 1ce:	5e83      	ldrsh	r3, [r0, r2]
 1d0:	80cb      	strh	r3, [r1, #6]
 1d2:	220e      	movs	r2, #14
 1d4:	5e83      	ldrsh	r3, [r0, r2]
 1d6:	81cb      	strh	r3, [r1, #14]
 1d8:	2216      	movs	r2, #22
 1da:	5e83      	ldrsh	r3, [r0, r2]
 1dc:	82cb      	strh	r3, [r1, #22]
 1de:	221e      	movs	r2, #30
 1e0:	5e83      	ldrsh	r3, [r0, r2]
 1e2:	83cb      	strh	r3, [r1, #30]
 1e4:	bc30      	pop	{r4, r5}
 1e6:	bc01      	pop	{r0}
 1e8:	4700      	bx	r0
 1ea:	46c0      	nop			@ (mov r8, r8)
	...

000001f4 <hrt_MoveOBJTowardsDirection>:
 1f4:	b5f0      	push	{r4, r5, r6, r7, lr}
 1f6:	46c6      	mov	lr, r8
 1f8:	0603      	lsls	r3, r0, #24
 1fa:	b500      	push	{lr}
 1fc:	2b00      	cmp	r3, #0
 1fe:	db1a      	blt.n	236 <hrt_MoveOBJTowardsDirection+0x42>
 200:	4c0f      	ldr	r4, [pc, #60]	@ (240 <hrt_MoveOBJTowardsDirection+0x4c>)
 202:	00c0      	lsls	r0, r0, #3
 204:	1826      	adds	r6, r4, r0
 206:	434a      	muls	r2, r1
 208:	8871      	ldrh	r1, [r6, #2]
 20a:	05cf      	lsls	r7, r1, #23
 20c:	15fb      	asrs	r3, r7, #23
 20e:	4698      	mov	r8, r3
 210:	5b03      	ldrh	r3, [r0, r4]
 212:	061d      	lsls	r5, r3, #24
 214:	162d      	asrs	r5, r5, #24
 216:	46ac      	mov	ip, r5
 218:	4d0a      	ldr	r5, [pc, #40]	@ (244 <hrt_MoveOBJTowardsDirection+0x50>)
 21a:	0052      	lsls	r2, r2, #1
 21c:	5f55      	ldrsh	r5, [r2, r5]
 21e:	4f0a      	ldr	r7, [pc, #40]	@ (248 <hrt_MoveOBJTowardsDirection+0x54>)
 220:	5fd2      	ldrsh	r2, [r2, r7]
 222:	0a49      	lsrs	r1, r1, #9
 224:	4442      	add	r2, r8
 226:	0249      	lsls	r1, r1, #9
 228:	430a      	orrs	r2, r1
 22a:	8072      	strh	r2, [r6, #2]
 22c:	22ff      	movs	r2, #255	@ 0xff
 22e:	4465      	add	r5, ip
 230:	4393      	bics	r3, r2
 232:	432b      	orrs	r3, r5
 234:	5303      	strh	r3, [r0, r4]
 236:	bc80      	pop	{r7}
 238:	46b8      	mov	r8, r7
 23a:	bcf0      	pop	{r4, r5, r6, r7}
 23c:	bc01      	pop	{r0}
 23e:	4700      	bx	r0
	...

0000024c <hrt_PointSpriteTowardsPostition>:
 24c:	4770      	bx	lr
 24e:	46c0      	nop			@ (mov r8, r8)

00000250 <hrt_SetOBJXY>:
 250:	b530      	push	{r4, r5, lr}
 252:	0603      	lsls	r3, r0, #24
 254:	d40a      	bmi.n	26c <hrt_SetOBJXY+0x1c>
 256:	4c07      	ldr	r4, [pc, #28]	@ (274 <hrt_SetOBJXY+0x24>)
 258:	00c0      	lsls	r0, r0, #3
 25a:	5823      	ldr	r3, [r4, r0]
 25c:	4d06      	ldr	r5, [pc, #24]	@ (278 <hrt_SetOBJXY+0x28>)
 25e:	0412      	lsls	r2, r2, #16
 260:	0409      	lsls	r1, r1, #16
 262:	0c12      	lsrs	r2, r2, #16
 264:	402b      	ands	r3, r5
 266:	430a      	orrs	r2, r1
 268:	4313      	orrs	r3, r2
 26a:	5023      	str	r3, [r4, r0]
 26c:	bc30      	pop	{r4, r5}
 26e:	bc01      	pop	{r0}
 270:	4700      	bx	r0
 272:	46c0      	nop			@ (mov r8, r8)
 274:	00000000 	andeq	r0, r0, r0
 278:	fe00ff00 	cdp2	15, 0, cr15, cr0, cr0, {0}

0000027c <hrt_CopyOBJToOAM>:
 27c:	2080      	movs	r0, #128	@ 0x80
 27e:	2380      	movs	r3, #128	@ 0x80
 280:	b500      	push	{lr}
 282:	4a06      	ldr	r2, [pc, #24]	@ (29c <hrt_CopyOBJToOAM+0x20>)
 284:	b083      	sub	sp, #12
 286:	0600      	lsls	r0, r0, #24
 288:	6812      	ldr	r2, [r2, #0]
 28a:	4905      	ldr	r1, [pc, #20]	@ (2a0 <hrt_CopyOBJToOAM+0x24>)
 28c:	9000      	str	r0, [sp, #0]
 28e:	009b      	lsls	r3, r3, #2
 290:	2003      	movs	r0, #3
 292:	f7ff fffe 	bl	0 <hrt_DMATransfer>
 296:	b003      	add	sp, #12
 298:	bc01      	pop	{r0}
 29a:	4700      	bx	r0
	...

000002a4 <hrt_SetOBJOffset>:
 2a4:	0603      	lsls	r3, r0, #24
 2a6:	d407      	bmi.n	2b8 <hrt_SetOBJOffset+0x14>
 2a8:	4b04      	ldr	r3, [pc, #16]	@ (2bc <hrt_SetOBJOffset+0x18>)
 2aa:	00c0      	lsls	r0, r0, #3
 2ac:	181b      	adds	r3, r3, r0
 2ae:	889a      	ldrh	r2, [r3, #4]
 2b0:	0a52      	lsrs	r2, r2, #9
 2b2:	0252      	lsls	r2, r2, #9
 2b4:	4311      	orrs	r1, r2
 2b6:	8099      	strh	r1, [r3, #4]
 2b8:	4770      	bx	lr
 2ba:	46c0      	nop			@ (mov r8, r8)
 2bc:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <OAMAffineBuffer>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata:

00000000 <COS>:
   0:	00ff0100 	rscseq	r0, pc, r0, lsl #2
   4:	00ff00ff 	ldrshteq	r0, [pc], #15
   8:	00ff00ff 	ldrshteq	r0, [pc], #15
   c:	00fe00fe 	ldrshteq	r0, [lr], #14
  10:	00fc00fd 	ldrshteq	r0, [ip], #13
  14:	00fb00fc 	ldrshteq	r0, [fp], #12
  18:	00f900fa 	ldrshteq	r0, [r9], #10
  1c:	00f700f8 	ldrshteq	r0, [r7], #8
  20:	00f400f6 	ldrshteq	r0, [r4], #6
  24:	00f200f3 	ldrshteq	r0, [r2], #3
  28:	00ee00f0 	strdeq	r0, [lr], #0	@ <UNPREDICTABLE>
  2c:	00eb00ed 	rsceq	r0, fp, sp, ror #1
  30:	00e800e9 	rsceq	r0, r8, r9, ror #1
  34:	00e400e6 	rsceq	r0, r4, r6, ror #1
  38:	00df00e2 	sbcseq	r0, pc, r2, ror #1
  3c:	00db00dd 	ldrsbeq	r0, [fp], #13
  40:	00d600d9 	ldrsbeq	r0, [r6], #9
  44:	00d100d4 	ldrsbeq	r0, [r1], #4
  48:	00cc00cf 	sbceq	r0, ip, pc, asr #1
  4c:	00c600c9 	sbceq	r0, r6, r9, asr #1
  50:	00c100c4 	sbceq	r0, r1, r4, asr #1
  54:	00bb00be 	ldrhteq	r0, [fp], lr
  58:	00b500b8 	ldrhteq	r0, [r5], r8
  5c:	00ae00b1 	strhteq	r0, [lr], r1
  60:	00a700ab 	adceq	r0, r7, fp, lsr #1
  64:	00a100a4 	adceq	r0, r1, r4, lsr #1
  68:	009a009d 	umullseq	r0, sl, sp, r0
  6c:	00920096 	umullseq	r0, r2, r6, r0
  70:	008b008f 	addeq	r0, fp, pc, lsl #1
  74:	00830087 	addeq	r0, r3, r7, lsl #1
  78:	007c0080 	rsbseq	r0, ip, r0, lsl #1
  7c:	00740078 	rsbseq	r0, r4, r8, ror r0
  80:	006c0070 	rsbeq	r0, ip, r0, ror r0
  84:	00640068 	rsbeq	r0, r4, r8, rrx
  88:	005b005f 	subseq	r0, fp, pc, asr r0
  8c:	00530057 	subseq	r0, r3, r7, asr r0
  90:	004a004f 	subeq	r0, sl, pc, asr #32
  94:	00420046 	subeq	r0, r2, r6, asr #32
  98:	0039003d 	eorseq	r0, r9, sp, lsr r0
  9c:	00300035 	eorseq	r0, r0, r5, lsr r0
  a0:	0028002c 	eoreq	r0, r8, ip, lsr #32
  a4:	001f0023 	andseq	r0, pc, r3, lsr #32
  a8:	0016001a 	andseq	r0, r6, sl, lsl r0
  ac:	000d0011 	andeq	r0, sp, r1, lsl r0
  b0:	00040008 	andeq	r0, r4, r8
  b4:	fffc0000 			@ <UNDEFINED> instruction: 0xfffc0000
  b8:	fff3fff8 			@ <UNDEFINED> instruction: 0xfff3fff8
  bc:	ffeaffef 			@ <UNDEFINED> instruction: 0xffeaffef
  c0:	ffe1ffe6 			@ <UNDEFINED> instruction: 0xffe1ffe6
  c4:	ffd8ffdd 			@ <UNDEFINED> instruction: 0xffd8ffdd
  c8:	ffd0ffd4 			@ <UNDEFINED> instruction: 0xffd0ffd4
  cc:	ffc7ffcb 			@ <UNDEFINED> instruction: 0xffc7ffcb
  d0:	ffbeffc3 			@ <UNDEFINED> instruction: 0xffbeffc3
  d4:	ffb6ffba 			@ <UNDEFINED> instruction: 0xffb6ffba
  d8:	ffadffb1 			@ <UNDEFINED> instruction: 0xffadffb1
  dc:	ffa5ffa9 			@ <UNDEFINED> instruction: 0xffa5ffa9
  e0:	ff9cffa1 			@ <UNDEFINED> instruction: 0xff9cffa1
  e4:	ff94ff98 			@ <UNDEFINED> instruction: 0xff94ff98
  e8:	ff8cff90 			@ <UNDEFINED> instruction: 0xff8cff90
  ec:	ff84ff88 			@ <UNDEFINED> instruction: 0xff84ff88
  f0:	ff7dff81 			@ <UNDEFINED> instruction: 0xff7dff81
  f4:	ff75ff79 			@ <UNDEFINED> instruction: 0xff75ff79
  f8:	ff6eff71 			@ <UNDEFINED> instruction: 0xff6eff71
  fc:	ff66ff6a 			@ <UNDEFINED> instruction: 0xff66ff6a
 100:	ff5fff63 			@ <UNDEFINED> instruction: 0xff5fff63
 104:	ff59ff5c 			@ <UNDEFINED> instruction: 0xff59ff5c
 108:	ff52ff55 			@ <UNDEFINED> instruction: 0xff52ff55
 10c:	ff4bff4f 			@ <UNDEFINED> instruction: 0xff4bff4f
 110:	ff45ff48 			@ <UNDEFINED> instruction: 0xff45ff48
 114:	ff3fff42 			@ <UNDEFINED> instruction: 0xff3fff42
 118:	ff3aff3c 			@ <UNDEFINED> instruction: 0xff3aff3c
 11c:	ff34ff37 			@ <UNDEFINED> instruction: 0xff34ff37
 120:	ff2fff31 			@ <UNDEFINED> instruction: 0xff2fff31
 124:	ff2aff2c 			@ <UNDEFINED> instruction: 0xff2aff2c
 128:	ff25ff27 			@ <UNDEFINED> instruction: 0xff25ff27
 12c:	ff21ff23 			@ <UNDEFINED> instruction: 0xff21ff23
 130:	ff1cff1e 			@ <UNDEFINED> instruction: 0xff1cff1e
 134:	ff18ff1a 			@ <UNDEFINED> instruction: 0xff18ff1a
 138:	ff15ff17 			@ <UNDEFINED> instruction: 0xff15ff17
 13c:	ff12ff13 			@ <UNDEFINED> instruction: 0xff12ff13
 140:	ff0eff10 			@ <UNDEFINED> instruction: 0xff0eff10
 144:	ff0cff0d 			@ <UNDEFINED> instruction: 0xff0cff0d
 148:	ff09ff0a 			@ <UNDEFINED> instruction: 0xff09ff0a
 14c:	ff07ff08 			@ <UNDEFINED> instruction: 0xff07ff08
 150:	ff05ff06 			@ <UNDEFINED> instruction: 0xff05ff06
 154:	ff04ff04 			@ <UNDEFINED> instruction: 0xff04ff04
 158:	ff02ff03 			@ <UNDEFINED> instruction: 0xff02ff03
 15c:	ff01ff02 			@ <UNDEFINED> instruction: 0xff01ff02
 160:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 164:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 168:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 16c:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 170:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 174:	ff02ff02 			@ <UNDEFINED> instruction: 0xff02ff02
 178:	ff04ff03 			@ <UNDEFINED> instruction: 0xff04ff03
 17c:	ff05ff04 			@ <UNDEFINED> instruction: 0xff05ff04
 180:	ff07ff06 			@ <UNDEFINED> instruction: 0xff07ff06
 184:	ff09ff08 			@ <UNDEFINED> instruction: 0xff09ff08
 188:	ff0cff0a 			@ <UNDEFINED> instruction: 0xff0cff0a
 18c:	ff0eff0d 			@ <UNDEFINED> instruction: 0xff0eff0d
 190:	ff12ff10 			@ <UNDEFINED> instruction: 0xff12ff10
 194:	ff15ff13 			@ <UNDEFINED> instruction: 0xff15ff13
 198:	ff18ff17 			@ <UNDEFINED> instruction: 0xff18ff17
 19c:	ff1cff1a 			@ <UNDEFINED> instruction: 0xff1cff1a
 1a0:	ff21ff1e 			@ <UNDEFINED> instruction: 0xff21ff1e
 1a4:	ff25ff23 			@ <UNDEFINED> instruction: 0xff25ff23
 1a8:	ff2aff27 			@ <UNDEFINED> instruction: 0xff2aff27
 1ac:	ff2fff2c 			@ <UNDEFINED> instruction: 0xff2fff2c
 1b0:	ff34ff31 			@ <UNDEFINED> instruction: 0xff34ff31
 1b4:	ff3aff37 			@ <UNDEFINED> instruction: 0xff3aff37
 1b8:	ff3fff3c 			@ <UNDEFINED> instruction: 0xff3fff3c
 1bc:	ff45ff42 			@ <UNDEFINED> instruction: 0xff45ff42
 1c0:	ff4bff48 			@ <UNDEFINED> instruction: 0xff4bff48
 1c4:	ff52ff4f 			@ <UNDEFINED> instruction: 0xff52ff4f
 1c8:	ff59ff55 			@ <UNDEFINED> instruction: 0xff59ff55
 1cc:	ff5fff5c 			@ <UNDEFINED> instruction: 0xff5fff5c
 1d0:	ff66ff63 			@ <UNDEFINED> instruction: 0xff66ff63
 1d4:	ff6eff6a 			@ <UNDEFINED> instruction: 0xff6eff6a
 1d8:	ff75ff71 			@ <UNDEFINED> instruction: 0xff75ff71
 1dc:	ff7dff79 			@ <UNDEFINED> instruction: 0xff7dff79
 1e0:	ff84ff80 			@ <UNDEFINED> instruction: 0xff84ff80
 1e4:	ff8cff88 			@ <UNDEFINED> instruction: 0xff8cff88
 1e8:	ff94ff90 			@ <UNDEFINED> instruction: 0xff94ff90
 1ec:	ff9cff98 			@ <UNDEFINED> instruction: 0xff9cff98
 1f0:	ffa5ffa1 			@ <UNDEFINED> instruction: 0xffa5ffa1
 1f4:	ffadffa9 			@ <UNDEFINED> instruction: 0xffadffa9
 1f8:	ffb6ffb1 			@ <UNDEFINED> instruction: 0xffb6ffb1
 1fc:	ffbeffba 			@ <UNDEFINED> instruction: 0xffbeffba
 200:	ffc7ffc3 			@ <UNDEFINED> instruction: 0xffc7ffc3
 204:	ffd0ffcb 			@ <UNDEFINED> instruction: 0xffd0ffcb
 208:	ffd8ffd4 			@ <UNDEFINED> instruction: 0xffd8ffd4
 20c:	ffe1ffdd 			@ <UNDEFINED> instruction: 0xffe1ffdd
 210:	ffeaffe6 			@ <UNDEFINED> instruction: 0xffeaffe6
 214:	fff3ffef 			@ <UNDEFINED> instruction: 0xfff3ffef
 218:	fffcfff8 			@ <UNDEFINED> instruction: 0xfffcfff8
 21c:	00040000 	andeq	r0, r4, r0
 220:	000d0008 	andeq	r0, sp, r8
 224:	00160011 	andseq	r0, r6, r1, lsl r0
 228:	001f001a 	andseq	r0, pc, sl, lsl r0	@ <UNPREDICTABLE>
 22c:	00280023 	eoreq	r0, r8, r3, lsr #32
 230:	0030002c 	eorseq	r0, r0, ip, lsr #32
 234:	00390035 	eorseq	r0, r9, r5, lsr r0
 238:	0042003d 	subeq	r0, r2, sp, lsr r0
 23c:	004a0046 	subeq	r0, sl, r6, asr #32
 240:	0053004f 	subseq	r0, r3, pc, asr #32
 244:	005b0057 	subseq	r0, fp, r7, asr r0
 248:	0064005f 	rsbeq	r0, r4, pc, asr r0
 24c:	006c0068 	rsbeq	r0, ip, r8, rrx
 250:	00740070 	rsbseq	r0, r4, r0, ror r0
 254:	007c0078 	rsbseq	r0, ip, r8, ror r0
 258:	0083007f 	addeq	r0, r3, pc, ror r0
 25c:	008b0087 	addeq	r0, fp, r7, lsl #1
 260:	0092008f 	addseq	r0, r2, pc, lsl #1
 264:	009a0096 	umullseq	r0, sl, r6, r0
 268:	00a1009d 	umlaleq	r0, r1, sp, r0
 26c:	00a700a4 	adceq	r0, r7, r4, lsr #1
 270:	00ae00ab 	adceq	r0, lr, fp, lsr #1
 274:	00b500b1 	ldrhteq	r0, [r5], r1
 278:	00bb00b8 	ldrhteq	r0, [fp], r8
 27c:	00c100be 	strheq	r0, [r1], #14
 280:	00c600c4 	sbceq	r0, r6, r4, asr #1
 284:	00cc00c9 	sbceq	r0, ip, r9, asr #1
 288:	00d100cf 	sbcseq	r0, r1, pc, asr #1
 28c:	00d600d4 	ldrsbeq	r0, [r6], #4
 290:	00db00d9 	ldrsbeq	r0, [fp], #9
 294:	00df00dd 	ldrsbeq	r0, [pc], #13	@ <UNPREDICTABLE>
 298:	00e400e2 	rsceq	r0, r4, r2, ror #1
 29c:	00e800e6 	rsceq	r0, r8, r6, ror #1
 2a0:	00eb00e9 	rsceq	r0, fp, r9, ror #1
 2a4:	00ee00ed 	rsceq	r0, lr, sp, ror #1
 2a8:	00f200f0 	ldrshteq	r0, [r2], #0
 2ac:	00f400f3 	ldrshteq	r0, [r4], #3
 2b0:	00f700f6 	ldrshteq	r0, [r7], #6
 2b4:	00f900f8 	ldrshteq	r0, [r9], #8
 2b8:	00fb00fa 	ldrshteq	r0, [fp], #10
 2bc:	00fc00fc 	ldrshteq	r0, [ip], #12
 2c0:	00fe00fd 	ldrshteq	r0, [lr], #13
 2c4:	00ff00fe 	ldrshteq	r0, [pc], #14
 2c8:	00ff00ff 	ldrshteq	r0, [pc], #15
 2cc:	00ff00ff 	ldrshteq	r0, [pc], #15

000002d0 <SIN>:
 2d0:	00040000 	andeq	r0, r4, r0
 2d4:	000d0008 	andeq	r0, sp, r8
 2d8:	00160011 	andseq	r0, r6, r1, lsl r0
 2dc:	001f001a 	andseq	r0, pc, sl, lsl r0	@ <UNPREDICTABLE>
 2e0:	00280023 	eoreq	r0, r8, r3, lsr #32
 2e4:	0030002c 	eorseq	r0, r0, ip, lsr #32
 2e8:	00390035 	eorseq	r0, r9, r5, lsr r0
 2ec:	0042003d 	subeq	r0, r2, sp, lsr r0
 2f0:	004a0046 	subeq	r0, sl, r6, asr #32
 2f4:	0053004f 	subseq	r0, r3, pc, asr #32
 2f8:	005b0057 	subseq	r0, fp, r7, asr r0
 2fc:	0064005f 	rsbeq	r0, r4, pc, asr r0
 300:	006c0068 	rsbeq	r0, ip, r8, rrx
 304:	00740070 	rsbseq	r0, r4, r0, ror r0
 308:	007c0078 	rsbseq	r0, ip, r8, ror r0
 30c:	0083007f 	addeq	r0, r3, pc, ror r0
 310:	008b0087 	addeq	r0, fp, r7, lsl #1
 314:	0092008f 	addseq	r0, r2, pc, lsl #1
 318:	009a0096 	umullseq	r0, sl, r6, r0
 31c:	00a1009d 	umlaleq	r0, r1, sp, r0
 320:	00a700a4 	adceq	r0, r7, r4, lsr #1
 324:	00ae00ab 	adceq	r0, lr, fp, lsr #1
 328:	00b500b1 	ldrhteq	r0, [r5], r1
 32c:	00bb00b8 	ldrhteq	r0, [fp], r8
 330:	00c100be 	strheq	r0, [r1], #14
 334:	00c600c4 	sbceq	r0, r6, r4, asr #1
 338:	00cc00c9 	sbceq	r0, ip, r9, asr #1
 33c:	00d100cf 	sbcseq	r0, r1, pc, asr #1
 340:	00d600d4 	ldrsbeq	r0, [r6], #4
 344:	00db00d9 	ldrsbeq	r0, [fp], #9
 348:	00df00dd 	ldrsbeq	r0, [pc], #13	@ <UNPREDICTABLE>
 34c:	00e400e2 	rsceq	r0, r4, r2, ror #1
 350:	00e800e6 	rsceq	r0, r8, r6, ror #1
 354:	00eb00e9 	rsceq	r0, fp, r9, ror #1
 358:	00ee00ed 	rsceq	r0, lr, sp, ror #1
 35c:	00f200f0 	ldrshteq	r0, [r2], #0
 360:	00f400f3 	ldrshteq	r0, [r4], #3
 364:	00f700f6 	ldrshteq	r0, [r7], #6
 368:	00f900f8 	ldrshteq	r0, [r9], #8
 36c:	00fb00fa 	ldrshteq	r0, [fp], #10
 370:	00fc00fc 	ldrshteq	r0, [ip], #12
 374:	00fe00fd 	ldrshteq	r0, [lr], #13
 378:	00ff00fe 	ldrshteq	r0, [pc], #14
 37c:	00ff00ff 	ldrshteq	r0, [pc], #15
 380:	00ff00ff 	ldrshteq	r0, [pc], #15
 384:	00ff00ff 	ldrshteq	r0, [pc], #15
 388:	00ff00ff 	ldrshteq	r0, [pc], #15
 38c:	00ff00ff 	ldrshteq	r0, [pc], #15
 390:	00fe00fe 	ldrshteq	r0, [lr], #14
 394:	00fc00fd 	ldrshteq	r0, [ip], #13
 398:	00fb00fc 	ldrshteq	r0, [fp], #12
 39c:	00f900fa 	ldrshteq	r0, [r9], #10
 3a0:	00f700f8 	ldrshteq	r0, [r7], #8
 3a4:	00f400f6 	ldrshteq	r0, [r4], #6
 3a8:	00f200f3 	ldrshteq	r0, [r2], #3
 3ac:	00ee00f0 	strdeq	r0, [lr], #0	@ <UNPREDICTABLE>
 3b0:	00eb00ed 	rsceq	r0, fp, sp, ror #1
 3b4:	00e800e9 	rsceq	r0, r8, r9, ror #1
 3b8:	00e400e6 	rsceq	r0, r4, r6, ror #1
 3bc:	00df00e2 	sbcseq	r0, pc, r2, ror #1
 3c0:	00db00dd 	ldrsbeq	r0, [fp], #13
 3c4:	00d600d9 	ldrsbeq	r0, [r6], #9
 3c8:	00d100d4 	ldrsbeq	r0, [r1], #4
 3cc:	00cc00cf 	sbceq	r0, ip, pc, asr #1
 3d0:	00c600c9 	sbceq	r0, r6, r9, asr #1
 3d4:	00c100c4 	sbceq	r0, r1, r4, asr #1
 3d8:	00bb00be 	ldrhteq	r0, [fp], lr
 3dc:	00b500b8 	ldrhteq	r0, [r5], r8
 3e0:	00ae00b1 	strhteq	r0, [lr], r1
 3e4:	00a700ab 	adceq	r0, r7, fp, lsr #1
 3e8:	00a100a4 	adceq	r0, r1, r4, lsr #1
 3ec:	009a009d 	umullseq	r0, sl, sp, r0
 3f0:	00920096 	umullseq	r0, r2, r6, r0
 3f4:	008b008f 	addeq	r0, fp, pc, lsl #1
 3f8:	00830087 	addeq	r0, r3, r7, lsl #1
 3fc:	007c0080 	rsbseq	r0, ip, r0, lsl #1
 400:	00740078 	rsbseq	r0, r4, r8, ror r0
 404:	006c0070 	rsbeq	r0, ip, r0, ror r0
 408:	00640068 	rsbeq	r0, r4, r8, rrx
 40c:	005b005f 	subseq	r0, fp, pc, asr r0
 410:	00530057 	subseq	r0, r3, r7, asr r0
 414:	004a004f 	subeq	r0, sl, pc, asr #32
 418:	00420046 	subeq	r0, r2, r6, asr #32
 41c:	0039003d 	eorseq	r0, r9, sp, lsr r0
 420:	00300035 	eorseq	r0, r0, r5, lsr r0
 424:	0028002c 	eoreq	r0, r8, ip, lsr #32
 428:	001f0023 	andseq	r0, pc, r3, lsr #32
 42c:	0016001a 	andseq	r0, r6, sl, lsl r0
 430:	000d0011 	andeq	r0, sp, r1, lsl r0
 434:	00040008 	andeq	r0, r4, r8
 438:	fffc0000 			@ <UNDEFINED> instruction: 0xfffc0000
 43c:	fff3fff8 			@ <UNDEFINED> instruction: 0xfff3fff8
 440:	ffeaffef 			@ <UNDEFINED> instruction: 0xffeaffef
 444:	ffe1ffe6 			@ <UNDEFINED> instruction: 0xffe1ffe6
 448:	ffd8ffdd 			@ <UNDEFINED> instruction: 0xffd8ffdd
 44c:	ffd0ffd4 			@ <UNDEFINED> instruction: 0xffd0ffd4
 450:	ffc7ffcb 			@ <UNDEFINED> instruction: 0xffc7ffcb
 454:	ffbeffc3 			@ <UNDEFINED> instruction: 0xffbeffc3
 458:	ffb6ffba 			@ <UNDEFINED> instruction: 0xffb6ffba
 45c:	ffadffb1 			@ <UNDEFINED> instruction: 0xffadffb1
 460:	ffa5ffa9 			@ <UNDEFINED> instruction: 0xffa5ffa9
 464:	ff9cffa1 			@ <UNDEFINED> instruction: 0xff9cffa1
 468:	ff94ff98 			@ <UNDEFINED> instruction: 0xff94ff98
 46c:	ff8cff90 			@ <UNDEFINED> instruction: 0xff8cff90
 470:	ff84ff88 			@ <UNDEFINED> instruction: 0xff84ff88
 474:	ff7dff81 			@ <UNDEFINED> instruction: 0xff7dff81
 478:	ff75ff79 			@ <UNDEFINED> instruction: 0xff75ff79
 47c:	ff6eff71 			@ <UNDEFINED> instruction: 0xff6eff71
 480:	ff66ff6a 			@ <UNDEFINED> instruction: 0xff66ff6a
 484:	ff5fff63 			@ <UNDEFINED> instruction: 0xff5fff63
 488:	ff59ff5c 			@ <UNDEFINED> instruction: 0xff59ff5c
 48c:	ff52ff55 			@ <UNDEFINED> instruction: 0xff52ff55
 490:	ff4bff4f 			@ <UNDEFINED> instruction: 0xff4bff4f
 494:	ff45ff48 			@ <UNDEFINED> instruction: 0xff45ff48
 498:	ff3fff42 			@ <UNDEFINED> instruction: 0xff3fff42
 49c:	ff3aff3c 			@ <UNDEFINED> instruction: 0xff3aff3c
 4a0:	ff34ff37 			@ <UNDEFINED> instruction: 0xff34ff37
 4a4:	ff2fff31 			@ <UNDEFINED> instruction: 0xff2fff31
 4a8:	ff2aff2c 			@ <UNDEFINED> instruction: 0xff2aff2c
 4ac:	ff25ff27 			@ <UNDEFINED> instruction: 0xff25ff27
 4b0:	ff21ff23 			@ <UNDEFINED> instruction: 0xff21ff23
 4b4:	ff1cff1e 			@ <UNDEFINED> instruction: 0xff1cff1e
 4b8:	ff18ff1a 			@ <UNDEFINED> instruction: 0xff18ff1a
 4bc:	ff15ff17 			@ <UNDEFINED> instruction: 0xff15ff17
 4c0:	ff12ff13 			@ <UNDEFINED> instruction: 0xff12ff13
 4c4:	ff0eff10 			@ <UNDEFINED> instruction: 0xff0eff10
 4c8:	ff0cff0d 			@ <UNDEFINED> instruction: 0xff0cff0d
 4cc:	ff09ff0a 			@ <UNDEFINED> instruction: 0xff09ff0a
 4d0:	ff07ff08 			@ <UNDEFINED> instruction: 0xff07ff08
 4d4:	ff05ff06 			@ <UNDEFINED> instruction: 0xff05ff06
 4d8:	ff04ff04 			@ <UNDEFINED> instruction: 0xff04ff04
 4dc:	ff02ff03 			@ <UNDEFINED> instruction: 0xff02ff03
 4e0:	ff01ff02 			@ <UNDEFINED> instruction: 0xff01ff02
 4e4:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 4e8:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 4ec:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 4f0:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 4f4:	ff01ff01 			@ <UNDEFINED> instruction: 0xff01ff01
 4f8:	ff02ff02 			@ <UNDEFINED> instruction: 0xff02ff02
 4fc:	ff04ff03 			@ <UNDEFINED> instruction: 0xff04ff03
 500:	ff05ff04 			@ <UNDEFINED> instruction: 0xff05ff04
 504:	ff07ff06 			@ <UNDEFINED> instruction: 0xff07ff06
 508:	ff09ff08 			@ <UNDEFINED> instruction: 0xff09ff08
 50c:	ff0cff0a 			@ <UNDEFINED> instruction: 0xff0cff0a
 510:	ff0eff0d 			@ <UNDEFINED> instruction: 0xff0eff0d
 514:	ff12ff10 			@ <UNDEFINED> instruction: 0xff12ff10
 518:	ff15ff13 			@ <UNDEFINED> instruction: 0xff15ff13
 51c:	ff18ff17 			@ <UNDEFINED> instruction: 0xff18ff17
 520:	ff1cff1a 			@ <UNDEFINED> instruction: 0xff1cff1a
 524:	ff21ff1e 			@ <UNDEFINED> instruction: 0xff21ff1e
 528:	ff25ff23 			@ <UNDEFINED> instruction: 0xff25ff23
 52c:	ff2aff27 			@ <UNDEFINED> instruction: 0xff2aff27
 530:	ff2fff2c 			@ <UNDEFINED> instruction: 0xff2fff2c
 534:	ff34ff31 			@ <UNDEFINED> instruction: 0xff34ff31
 538:	ff3aff37 			@ <UNDEFINED> instruction: 0xff3aff37
 53c:	ff3fff3c 			@ <UNDEFINED> instruction: 0xff3fff3c
 540:	ff45ff42 			@ <UNDEFINED> instruction: 0xff45ff42
 544:	ff4bff48 			@ <UNDEFINED> instruction: 0xff4bff48
 548:	ff52ff4f 			@ <UNDEFINED> instruction: 0xff52ff4f
 54c:	ff59ff55 			@ <UNDEFINED> instruction: 0xff59ff55
 550:	ff5fff5c 			@ <UNDEFINED> instruction: 0xff5fff5c
 554:	ff66ff63 			@ <UNDEFINED> instruction: 0xff66ff63
 558:	ff6eff6a 			@ <UNDEFINED> instruction: 0xff6eff6a
 55c:	ff75ff71 			@ <UNDEFINED> instruction: 0xff75ff71
 560:	ff7dff79 			@ <UNDEFINED> instruction: 0xff7dff79
 564:	ff84ff80 			@ <UNDEFINED> instruction: 0xff84ff80
 568:	ff8cff88 			@ <UNDEFINED> instruction: 0xff8cff88
 56c:	ff94ff90 			@ <UNDEFINED> instruction: 0xff94ff90
 570:	ff9cff98 			@ <UNDEFINED> instruction: 0xff9cff98
 574:	ffa5ffa1 			@ <UNDEFINED> instruction: 0xffa5ffa1
 578:	ffadffa9 			@ <UNDEFINED> instruction: 0xffadffa9
 57c:	ffb6ffb1 			@ <UNDEFINED> instruction: 0xffb6ffb1
 580:	ffbeffba 			@ <UNDEFINED> instruction: 0xffbeffba
 584:	ffc7ffc3 			@ <UNDEFINED> instruction: 0xffc7ffc3
 588:	ffd0ffcb 			@ <UNDEFINED> instruction: 0xffd0ffcb
 58c:	ffd8ffd4 			@ <UNDEFINED> instruction: 0xffd8ffd4
 590:	ffe1ffdd 			@ <UNDEFINED> instruction: 0xffe1ffdd
 594:	ffeaffe6 			@ <UNDEFINED> instruction: 0xffeaffe6
 598:	fff3ffef 			@ <UNDEFINED> instruction: 0xfff3ffef
 59c:	fffcfff8 			@ <UNDEFINED> instruction: 0xfffcfff8

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


pcx.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_DecodePCX>:
   0:	b5f0      	push	{r4, r5, r6, r7, lr}
   2:	4657      	mov	r7, sl
   4:	4645      	mov	r5, r8
   6:	46de      	mov	lr, fp
   8:	464e      	mov	r6, r9
   a:	0004      	movs	r4, r0
   c:	b5e0      	push	{r5, r6, r7, lr}
   e:	0015      	movs	r5, r2
  10:	7ac2      	ldrb	r2, [r0, #11]
  12:	7a83      	ldrb	r3, [r0, #10]
  14:	0212      	lsls	r2, r2, #8
  16:	431a      	orrs	r2, r3
  18:	79c3      	ldrb	r3, [r0, #7]
  1a:	468a      	mov	sl, r1
  1c:	7981      	ldrb	r1, [r0, #6]
  1e:	021b      	lsls	r3, r3, #8
  20:	430b      	orrs	r3, r1
  22:	0412      	lsls	r2, r2, #16
  24:	041b      	lsls	r3, r3, #16
  26:	1412      	asrs	r2, r2, #16
  28:	141b      	asrs	r3, r3, #16
  2a:	7a67      	ldrb	r7, [r4, #9]
  2c:	1ad0      	subs	r0, r2, r3
  2e:	7a23      	ldrb	r3, [r4, #8]
  30:	023f      	lsls	r7, r7, #8
  32:	431f      	orrs	r7, r3
  34:	7963      	ldrb	r3, [r4, #5]
  36:	7921      	ldrb	r1, [r4, #4]
  38:	021b      	lsls	r3, r3, #8
  3a:	430b      	orrs	r3, r1
  3c:	043f      	lsls	r7, r7, #16
  3e:	041b      	lsls	r3, r3, #16
  40:	141b      	asrs	r3, r3, #16
  42:	143f      	asrs	r7, r7, #16
  44:	1aff      	subs	r7, r7, r3
  46:	2301      	movs	r3, #1
  48:	3702      	adds	r7, #2
  4a:	b0c1      	sub	sp, #260	@ 0x104
  4c:	1c42      	adds	r2, r0, #1
  4e:	439f      	bics	r7, r3
  50:	2ff0      	cmp	r7, #240	@ 0xf0
  52:	dc00      	bgt.n	56 <hrt_DecodePCX+0x56>
  54:	2300      	movs	r3, #0
  56:	061b      	lsls	r3, r3, #24
  58:	d15b      	bne.n	112 <hrt_DecodePCX+0x112>
  5a:	2301      	movs	r3, #1
  5c:	2aa0      	cmp	r2, #160	@ 0xa0
  5e:	dd61      	ble.n	124 <hrt_DecodePCX+0x124>
  60:	061b      	lsls	r3, r3, #24
  62:	d156      	bne.n	112 <hrt_DecodePCX+0x112>
  64:	3480      	adds	r4, #128	@ 0x80
  66:	2a00      	cmp	r2, #0
  68:	dd40      	ble.n	ec <hrt_DecodePCX+0xec>
  6a:	2f00      	cmp	r7, #0
  6c:	dc05      	bgt.n	7a <hrt_DecodePCX+0x7a>
  6e:	1c5a      	adds	r2, r3, #1
  70:	4298      	cmp	r0, r3
  72:	d03b      	beq.n	ec <hrt_DecodePCX+0xec>
  74:	0013      	movs	r3, r2
  76:	2f00      	cmp	r7, #0
  78:	ddf9      	ble.n	6e <hrt_DecodePCX+0x6e>
  7a:	469b      	mov	fp, r3
  7c:	233f      	movs	r3, #63	@ 0x3f
  7e:	107a      	asrs	r2, r7, #1
  80:	4698      	mov	r8, r3
  82:	0053      	lsls	r3, r2, #1
  84:	46d9      	mov	r9, fp
  86:	469b      	mov	fp, r3
  88:	9002      	str	r0, [sp, #8]
  8a:	9503      	str	r5, [sp, #12]
  8c:	2500      	movs	r5, #0
  8e:	0023      	movs	r3, r4
  90:	ae04      	add	r6, sp, #16
  92:	e005      	b.n	a0 <hrt_DecodePCX+0xa0>
  94:	3501      	adds	r5, #1
  96:	7032      	strb	r2, [r6, #0]
  98:	0003      	movs	r3, r0
  9a:	3601      	adds	r6, #1
  9c:	42bd      	cmp	r5, r7
  9e:	da16      	bge.n	ce <hrt_DecodePCX+0xce>
  a0:	781a      	ldrb	r2, [r3, #0]
  a2:	4644      	mov	r4, r8
  a4:	0011      	movs	r1, r2
  a6:	1c58      	adds	r0, r3, #1
  a8:	43a1      	bics	r1, r4
  aa:	29c0      	cmp	r1, #192	@ 0xc0
  ac:	d1f2      	bne.n	94 <hrt_DecodePCX+0x94>
  ae:	1c99      	adds	r1, r3, #2
  b0:	9101      	str	r1, [sp, #4]
  b2:	7859      	ldrb	r1, [r3, #1]
  b4:	4643      	mov	r3, r8
  b6:	4014      	ands	r4, r2
  b8:	4213      	tst	r3, r2
  ba:	d004      	beq.n	c6 <hrt_DecodePCX+0xc6>
  bc:	0030      	movs	r0, r6
  be:	0022      	movs	r2, r4
  c0:	f7ff fffe 	bl	0 <memset>
  c4:	1936      	adds	r6, r6, r4
  c6:	192d      	adds	r5, r5, r4
  c8:	9b01      	ldr	r3, [sp, #4]
  ca:	42bd      	cmp	r5, r7
  cc:	dbe8      	blt.n	a0 <hrt_DecodePCX+0xa0>
  ce:	465a      	mov	r2, fp
  d0:	4650      	mov	r0, sl
  d2:	a904      	add	r1, sp, #16
  d4:	001c      	movs	r4, r3
  d6:	f7ff fffe 	bl	0 <memcpy>
  da:	464b      	mov	r3, r9
  dc:	9a02      	ldr	r2, [sp, #8]
  de:	44da      	add	sl, fp
  e0:	3301      	adds	r3, #1
  e2:	454a      	cmp	r2, r9
  e4:	d001      	beq.n	ea <hrt_DecodePCX+0xea>
  e6:	4699      	mov	r9, r3
  e8:	e7d0      	b.n	8c <hrt_DecodePCX+0x8c>
  ea:	9d03      	ldr	r5, [sp, #12]
  ec:	4b0e      	ldr	r3, [pc, #56]	@ (128 <hrt_DecodePCX+0x128>)
  ee:	469c      	mov	ip, r3
  f0:	1c62      	adds	r2, r4, #1
  f2:	4464      	add	r4, ip
  f4:	7853      	ldrb	r3, [r2, #1]
  f6:	7891      	ldrb	r1, [r2, #2]
  f8:	10db      	asrs	r3, r3, #3
  fa:	10c9      	asrs	r1, r1, #3
  fc:	0289      	lsls	r1, r1, #10
  fe:	015b      	lsls	r3, r3, #5
 100:	430b      	orrs	r3, r1
 102:	7811      	ldrb	r1, [r2, #0]
 104:	10c9      	asrs	r1, r1, #3
 106:	430b      	orrs	r3, r1
 108:	3203      	adds	r2, #3
 10a:	802b      	strh	r3, [r5, #0]
 10c:	3502      	adds	r5, #2
 10e:	4294      	cmp	r4, r2
 110:	d1f0      	bne.n	f4 <hrt_DecodePCX+0xf4>
 112:	b041      	add	sp, #260	@ 0x104
 114:	bcf0      	pop	{r4, r5, r6, r7}
 116:	46bb      	mov	fp, r7
 118:	46b2      	mov	sl, r6
 11a:	46a9      	mov	r9, r5
 11c:	46a0      	mov	r8, r4
 11e:	bcf0      	pop	{r4, r5, r6, r7}
 120:	bc01      	pop	{r0}
 122:	4700      	bx	r0
 124:	2300      	movs	r3, #0
 126:	e79b      	b.n	60 <hrt_DecodePCX+0x60>
 128:	00000301 	andeq	r0, r0, r1, lsl #6

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


rng.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SeedRNG>:
   0:	2301      	movs	r3, #1
   2:	2200      	movs	r2, #0
   4:	219c      	movs	r1, #156	@ 0x9c
   6:	4318      	orrs	r0, r3
   8:	4b06      	ldr	r3, [pc, #24]	@ (24 <hrt_SeedRNG+0x24>)
   a:	601a      	str	r2, [r3, #0]
   c:	4a06      	ldr	r2, [pc, #24]	@ (28 <hrt_SeedRNG+0x28>)
   e:	0109      	lsls	r1, r1, #4
  10:	0013      	movs	r3, r2
  12:	468c      	mov	ip, r1
  14:	c301      	stmia	r3!, {r0}
  16:	4905      	ldr	r1, [pc, #20]	@ (2c <hrt_SeedRNG+0x2c>)
  18:	4462      	add	r2, ip
  1a:	4348      	muls	r0, r1
  1c:	c301      	stmia	r3!, {r0}
  1e:	4293      	cmp	r3, r2
  20:	d1fb      	bne.n	1a <hrt_SeedRNG+0x1a>
  22:	4770      	bx	lr
  24:	00000000 	andeq	r0, r0, r0
  28:	00000004 	andeq	r0, r0, r4
  2c:	00010dcd 	andeq	r0, r1, sp, asr #27

00000030 <hrt_ReloadRNG>:
  30:	b5f0      	push	{r4, r5, r6, r7, lr}
  32:	46d6      	mov	lr, sl
  34:	464f      	mov	r7, r9
  36:	4646      	mov	r6, r8
  38:	b5c0      	push	{r6, r7, lr}
  3a:	4c3d      	ldr	r4, [pc, #244]	@ (130 <hrt_ReloadRNG+0x100>)
  3c:	6823      	ldr	r3, [r4, #0]
  3e:	3301      	adds	r3, #1
  40:	db68      	blt.n	114 <hrt_ReloadRNG+0xe4>
  42:	4b3c      	ldr	r3, [pc, #240]	@ (134 <hrt_ReloadRNG+0x104>)
  44:	469c      	mov	ip, r3
  46:	4b3c      	ldr	r3, [pc, #240]	@ (138 <hrt_ReloadRNG+0x108>)
  48:	4d3c      	ldr	r5, [pc, #240]	@ (13c <hrt_ReloadRNG+0x10c>)
  4a:	6023      	str	r3, [r4, #0]
  4c:	4b3c      	ldr	r3, [pc, #240]	@ (140 <hrt_ReloadRNG+0x110>)
  4e:	601d      	str	r5, [r3, #0]
  50:	1f2b      	subs	r3, r5, #4
  52:	4698      	mov	r8, r3
  54:	4642      	mov	r2, r8
  56:	6851      	ldr	r1, [r2, #4]
  58:	22c6      	movs	r2, #198	@ 0xc6
  5a:	00d2      	lsls	r2, r2, #3
  5c:	18a8      	adds	r0, r5, r2
  5e:	22e2      	movs	r2, #226	@ 0xe2
  60:	0092      	lsls	r2, r2, #2
  62:	4691      	mov	r9, r2
  64:	444d      	add	r5, r9
  66:	4644      	mov	r4, r8
  68:	46aa      	mov	sl, r5
  6a:	4642      	mov	r2, r8
  6c:	2601      	movs	r6, #1
  6e:	681b      	ldr	r3, [r3, #0]
  70:	4f34      	ldr	r7, [pc, #208]	@ (144 <hrt_ReloadRNG+0x114>)
  72:	004d      	lsls	r5, r1, #1
  74:	0fdb      	lsrs	r3, r3, #31
  76:	086d      	lsrs	r5, r5, #1
  78:	07db      	lsls	r3, r3, #31
  7a:	432b      	orrs	r3, r5
  7c:	c820      	ldmia	r0!, {r5}
  7e:	085b      	lsrs	r3, r3, #1
  80:	406b      	eors	r3, r5
  82:	0035      	movs	r5, r6
  84:	400d      	ands	r5, r1
  86:	426d      	negs	r5, r5
  88:	403d      	ands	r5, r7
  8a:	406b      	eors	r3, r5
  8c:	6013      	str	r3, [r2, #0]
  8e:	000b      	movs	r3, r1
  90:	3204      	adds	r2, #4
  92:	6851      	ldr	r1, [r2, #4]
  94:	4552      	cmp	r2, sl
  96:	d1ec      	bne.n	72 <hrt_ReloadRNG+0x42>
  98:	2501      	movs	r5, #1
  9a:	4e2b      	ldr	r6, [pc, #172]	@ (148 <hrt_ReloadRNG+0x118>)
  9c:	482b      	ldr	r0, [pc, #172]	@ (14c <hrt_ReloadRNG+0x11c>)
  9e:	4f29      	ldr	r7, [pc, #164]	@ (144 <hrt_ReloadRNG+0x114>)
  a0:	4446      	add	r6, r8
  a2:	004a      	lsls	r2, r1, #1
  a4:	0fdb      	lsrs	r3, r3, #31
  a6:	0852      	lsrs	r2, r2, #1
  a8:	07db      	lsls	r3, r3, #31
  aa:	4313      	orrs	r3, r2
  ac:	cc04      	ldmia	r4!, {r2}
  ae:	085b      	lsrs	r3, r3, #1
  b0:	4053      	eors	r3, r2
  b2:	002a      	movs	r2, r5
  b4:	400a      	ands	r2, r1
  b6:	4252      	negs	r2, r2
  b8:	403a      	ands	r2, r7
  ba:	4053      	eors	r3, r2
  bc:	6003      	str	r3, [r0, #0]
  be:	000b      	movs	r3, r1
  c0:	3004      	adds	r0, #4
  c2:	6841      	ldr	r1, [r0, #4]
  c4:	4286      	cmp	r6, r0
  c6:	d1ec      	bne.n	a2 <hrt_ReloadRNG+0x72>
  c8:	4662      	mov	r2, ip
  ca:	6812      	ldr	r2, [r2, #0]
  cc:	0fdb      	lsrs	r3, r3, #31
  ce:	0051      	lsls	r1, r2, #1
  d0:	0849      	lsrs	r1, r1, #1
  d2:	07db      	lsls	r3, r3, #31
  d4:	430b      	orrs	r3, r1
  d6:	21c6      	movs	r1, #198	@ 0xc6
  d8:	4660      	mov	r0, ip
  da:	00c9      	lsls	r1, r1, #3
  dc:	5841      	ldr	r1, [r0, r1]
  de:	4015      	ands	r5, r2
  e0:	085b      	lsrs	r3, r3, #1
  e2:	426d      	negs	r5, r5
  e4:	403d      	ands	r5, r7
  e6:	404b      	eors	r3, r1
  e8:	4917      	ldr	r1, [pc, #92]	@ (148 <hrt_ReloadRNG+0x118>)
  ea:	406b      	eors	r3, r5
  ec:	5043      	str	r3, [r0, r1]
  ee:	0ad3      	lsrs	r3, r2, #11
  f0:	4053      	eors	r3, r2
  f2:	4917      	ldr	r1, [pc, #92]	@ (150 <hrt_ReloadRNG+0x120>)
  f4:	01da      	lsls	r2, r3, #7
  f6:	400a      	ands	r2, r1
  f8:	405a      	eors	r2, r3
  fa:	4916      	ldr	r1, [pc, #88]	@ (154 <hrt_ReloadRNG+0x124>)
  fc:	03d3      	lsls	r3, r2, #15
  fe:	400b      	ands	r3, r1
 100:	4053      	eors	r3, r2
 102:	0c98      	lsrs	r0, r3, #18
 104:	4058      	eors	r0, r3
 106:	bce0      	pop	{r5, r6, r7}
 108:	46ba      	mov	sl, r7
 10a:	46b1      	mov	r9, r6
 10c:	46a8      	mov	r8, r5
 10e:	bcf0      	pop	{r4, r5, r6, r7}
 110:	bc02      	pop	{r1}
 112:	4708      	bx	r1
 114:	4b07      	ldr	r3, [pc, #28]	@ (134 <hrt_ReloadRNG+0x104>)
 116:	469c      	mov	ip, r3
 118:	209c      	movs	r0, #156	@ 0x9c
 11a:	4662      	mov	r2, ip
 11c:	4b0e      	ldr	r3, [pc, #56]	@ (158 <hrt_ReloadRNG+0x128>)
 11e:	0100      	lsls	r0, r0, #4
 120:	c208      	stmia	r2!, {r3}
 122:	490e      	ldr	r1, [pc, #56]	@ (15c <hrt_ReloadRNG+0x12c>)
 124:	4460      	add	r0, ip
 126:	434b      	muls	r3, r1
 128:	c208      	stmia	r2!, {r3}
 12a:	4290      	cmp	r0, r2
 12c:	d1fb      	bne.n	126 <hrt_ReloadRNG+0xf6>
 12e:	e78a      	b.n	46 <hrt_ReloadRNG+0x16>
 130:	00000000 	andeq	r0, r0, r0
 134:	00000004 	andeq	r0, r0, r4
 138:	0000026f 	andeq	r0, r0, pc, ror #4
 13c:	00000008 	andeq	r0, r0, r8
 140:	00000000 	andeq	r0, r0, r0
 144:	9908b0df 	stmdbls	r8, {r0, r1, r2, r3, r4, r6, r7, ip, sp, pc}
 148:	000009bc 			@ <UNDEFINED> instruction: 0x000009bc
 14c:	00000390 	muleq	r0, r0, r3
 150:	9d2c5680 	stcls	6, cr5, [ip, #-512]!	@ 0xfffffe00
 154:	efc60000 	svc	0x00c60000
 158:	00001105 	andeq	r1, r0, r5, lsl #2
 15c:	00010dcd 	andeq	r0, r1, sp, asr #27

00000160 <hrt_CreateRNG>:
 160:	b510      	push	{r4, lr}
 162:	4a0e      	ldr	r2, [pc, #56]	@ (19c <hrt_CreateRNG+0x3c>)
 164:	6813      	ldr	r3, [r2, #0]
 166:	3b01      	subs	r3, #1
 168:	6013      	str	r3, [r2, #0]
 16a:	2b00      	cmp	r3, #0
 16c:	db13      	blt.n	196 <hrt_CreateRNG+0x36>
 16e:	4a0c      	ldr	r2, [pc, #48]	@ (1a0 <hrt_CreateRNG+0x40>)
 170:	6813      	ldr	r3, [r2, #0]
 172:	1d19      	adds	r1, r3, #4
 174:	6011      	str	r1, [r2, #0]
 176:	681a      	ldr	r2, [r3, #0]
 178:	0ad3      	lsrs	r3, r2, #11
 17a:	4053      	eors	r3, r2
 17c:	4909      	ldr	r1, [pc, #36]	@ (1a4 <hrt_CreateRNG+0x44>)
 17e:	01da      	lsls	r2, r3, #7
 180:	400a      	ands	r2, r1
 182:	405a      	eors	r2, r3
 184:	4908      	ldr	r1, [pc, #32]	@ (1a8 <hrt_CreateRNG+0x48>)
 186:	03d3      	lsls	r3, r2, #15
 188:	400b      	ands	r3, r1
 18a:	4053      	eors	r3, r2
 18c:	0c98      	lsrs	r0, r3, #18
 18e:	4058      	eors	r0, r3
 190:	bc10      	pop	{r4}
 192:	bc02      	pop	{r1}
 194:	4708      	bx	r1
 196:	f7ff fffe 	bl	30 <hrt_ReloadRNG>
 19a:	e7f9      	b.n	190 <hrt_CreateRNG+0x30>
	...
 1a4:	9d2c5680 	stcls	6, cr5, [ip, #-512]!	@ 0xfffffe00
 1a8:	efc60000 	svc	0x00c60000

000001ac <hrt_RNGRange>:
 1ac:	b570      	push	{r4, r5, r6, lr}
 1ae:	4a11      	ldr	r2, [pc, #68]	@ (1f4 <hrt_RNGRange+0x48>)
 1b0:	6813      	ldr	r3, [r2, #0]
 1b2:	3b01      	subs	r3, #1
 1b4:	0004      	movs	r4, r0
 1b6:	000d      	movs	r5, r1
 1b8:	6013      	str	r3, [r2, #0]
 1ba:	2b00      	cmp	r3, #0
 1bc:	db17      	blt.n	1ee <hrt_RNGRange+0x42>
 1be:	4a0e      	ldr	r2, [pc, #56]	@ (1f8 <hrt_RNGRange+0x4c>)
 1c0:	6813      	ldr	r3, [r2, #0]
 1c2:	1d19      	adds	r1, r3, #4
 1c4:	681b      	ldr	r3, [r3, #0]
 1c6:	6011      	str	r1, [r2, #0]
 1c8:	0ada      	lsrs	r2, r3, #11
 1ca:	490c      	ldr	r1, [pc, #48]	@ (1fc <hrt_RNGRange+0x50>)
 1cc:	4053      	eors	r3, r2
 1ce:	01da      	lsls	r2, r3, #7
 1d0:	400a      	ands	r2, r1
 1d2:	4053      	eors	r3, r2
 1d4:	490a      	ldr	r1, [pc, #40]	@ (200 <hrt_RNGRange+0x54>)
 1d6:	03da      	lsls	r2, r3, #15
 1d8:	400a      	ands	r2, r1
 1da:	4053      	eors	r3, r2
 1dc:	0c98      	lsrs	r0, r3, #18
 1de:	4058      	eors	r0, r3
 1e0:	0029      	movs	r1, r5
 1e2:	f7ff fffe 	bl	0 <__aeabi_uidivmod>
 1e6:	1908      	adds	r0, r1, r4
 1e8:	bc70      	pop	{r4, r5, r6}
 1ea:	bc02      	pop	{r1}
 1ec:	4708      	bx	r1
 1ee:	f7ff fffe 	bl	30 <hrt_ReloadRNG>
 1f2:	e7f5      	b.n	1e0 <hrt_RNGRange+0x34>
	...
 1fc:	9d2c5680 	stcls	6, cr5, [ip, #-512]!	@ 0xfffffe00
 200:	efc60000 	svc	0x00c60000

Disassembly of section .data:

00000000 <left>:
   0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


rumble.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_RumbleInit>:
   0:	2208      	movs	r2, #8
   2:	4b03      	ldr	r3, [pc, #12]	@ (10 <hrt_RumbleInit+0x10>)
   4:	801a      	strh	r2, [r3, #0]
   6:	4b03      	ldr	r3, [pc, #12]	@ (14 <hrt_RumbleInit+0x14>)
   8:	3a07      	subs	r2, #7
   a:	801a      	strh	r2, [r3, #0]
   c:	4770      	bx	lr
   e:	46c0      	nop			@ (mov r8, r8)
  10:	080000c6 	stmdaeq	r0, {r1, r2, r6, r7}
  14:	080000c8 	stmdaeq	r0, {r3, r6, r7}

00000018 <hrt_IsRumbleActive>:
  18:	4b01      	ldr	r3, [pc, #4]	@ (20 <hrt_IsRumbleActive+0x8>)
  1a:	7818      	ldrb	r0, [r3, #0]
  1c:	4770      	bx	lr
  1e:	46c0      	nop			@ (mov r8, r8)
  20:	00000000 	andeq	r0, r0, r0

00000024 <hrt_RumbleStart>:
  24:	2108      	movs	r1, #8
  26:	4a04      	ldr	r2, [pc, #16]	@ (38 <hrt_RumbleStart+0x14>)
  28:	8813      	ldrh	r3, [r2, #0]
  2a:	430b      	orrs	r3, r1
  2c:	8013      	strh	r3, [r2, #0]
  2e:	2201      	movs	r2, #1
  30:	4b02      	ldr	r3, [pc, #8]	@ (3c <hrt_RumbleStart+0x18>)
  32:	701a      	strb	r2, [r3, #0]
  34:	4770      	bx	lr
  36:	46c0      	nop			@ (mov r8, r8)
  38:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  3c:	00000000 	andeq	r0, r0, r0

00000040 <hrt_RumbleStop>:
  40:	2108      	movs	r1, #8
  42:	4a05      	ldr	r2, [pc, #20]	@ (58 <hrt_RumbleStop+0x18>)
  44:	8813      	ldrh	r3, [r2, #0]
  46:	438b      	bics	r3, r1
  48:	8013      	strh	r3, [r2, #0]
  4a:	2200      	movs	r2, #0
  4c:	4b03      	ldr	r3, [pc, #12]	@ (5c <hrt_RumbleStop+0x1c>)
  4e:	701a      	strb	r2, [r3, #0]
  50:	705a      	strb	r2, [r3, #1]
  52:	605a      	str	r2, [r3, #4]
  54:	4770      	bx	lr
  56:	46c0      	nop			@ (mov r8, r8)
  58:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  5c:	00000000 	andeq	r0, r0, r0

00000060 <hrt_RumbleToggle>:
  60:	4b0a      	ldr	r3, [pc, #40]	@ (8c <hrt_RumbleToggle+0x2c>)
  62:	781a      	ldrb	r2, [r3, #0]
  64:	490a      	ldr	r1, [pc, #40]	@ (90 <hrt_RumbleToggle+0x30>)
  66:	2a00      	cmp	r2, #0
  68:	d008      	beq.n	7c <hrt_RumbleToggle+0x1c>
  6a:	2008      	movs	r0, #8
  6c:	880a      	ldrh	r2, [r1, #0]
  6e:	4382      	bics	r2, r0
  70:	800a      	strh	r2, [r1, #0]
  72:	2200      	movs	r2, #0
  74:	701a      	strb	r2, [r3, #0]
  76:	705a      	strb	r2, [r3, #1]
  78:	605a      	str	r2, [r3, #4]
  7a:	4770      	bx	lr
  7c:	2008      	movs	r0, #8
  7e:	880a      	ldrh	r2, [r1, #0]
  80:	4302      	orrs	r2, r0
  82:	800a      	strh	r2, [r1, #0]
  84:	2201      	movs	r2, #1
  86:	701a      	strb	r2, [r3, #0]
  88:	e7f7      	b.n	7a <hrt_RumbleToggle+0x1a>
  8a:	46c0      	nop			@ (mov r8, r8)
  8c:	00000000 	andeq	r0, r0, r0
  90:	080000c4 	stmdaeq	r0, {r2, r6, r7}

00000094 <hrt_SetRumbleTimer>:
  94:	2108      	movs	r1, #8
  96:	4a05      	ldr	r2, [pc, #20]	@ (ac <hrt_SetRumbleTimer+0x18>)
  98:	8813      	ldrh	r3, [r2, #0]
  9a:	430b      	orrs	r3, r1
  9c:	8013      	strh	r3, [r2, #0]
  9e:	2201      	movs	r2, #1
  a0:	4b03      	ldr	r3, [pc, #12]	@ (b0 <hrt_SetRumbleTimer+0x1c>)
  a2:	701a      	strb	r2, [r3, #0]
  a4:	6058      	str	r0, [r3, #4]
  a6:	705a      	strb	r2, [r3, #1]
  a8:	4770      	bx	lr
  aa:	46c0      	nop			@ (mov r8, r8)
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	00000000 	andeq	r0, r0, r0

000000b4 <hrt_UpdateRumbleTimer>:
  b4:	4b09      	ldr	r3, [pc, #36]	@ (dc <hrt_UpdateRumbleTimer+0x28>)
  b6:	785a      	ldrb	r2, [r3, #1]
  b8:	2a00      	cmp	r2, #0
  ba:	d004      	beq.n	c6 <hrt_UpdateRumbleTimer+0x12>
  bc:	685a      	ldr	r2, [r3, #4]
  be:	2a00      	cmp	r2, #0
  c0:	dd02      	ble.n	c8 <hrt_UpdateRumbleTimer+0x14>
  c2:	3a01      	subs	r2, #1
  c4:	605a      	str	r2, [r3, #4]
  c6:	4770      	bx	lr
  c8:	2008      	movs	r0, #8
  ca:	4905      	ldr	r1, [pc, #20]	@ (e0 <hrt_UpdateRumbleTimer+0x2c>)
  cc:	880a      	ldrh	r2, [r1, #0]
  ce:	4382      	bics	r2, r0
  d0:	800a      	strh	r2, [r1, #0]
  d2:	2200      	movs	r2, #0
  d4:	701a      	strb	r2, [r3, #0]
  d6:	705a      	strb	r2, [r3, #1]
  d8:	605a      	str	r2, [r3, #4]
  da:	e7f4      	b.n	c6 <hrt_UpdateRumbleTimer+0x12>
  dc:	00000000 	andeq	r0, r0, r0
  e0:	080000c4 	stmdaeq	r0, {r2, r6, r7}

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


text.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_SetTextColors>:
   0:	4b02      	ldr	r3, [pc, #8]	@ (c <hrt_SetTextColors+0xc>)
   2:	681a      	ldr	r2, [r3, #0]
   4:	8050      	strh	r0, [r2, #2]
   6:	681b      	ldr	r3, [r3, #0]
   8:	8099      	strh	r1, [r3, #4]
   a:	4770      	bx	lr
   c:	00000000 	andeq	r0, r0, r0

00000010 <hrt_ClearText>:
  10:	2180      	movs	r1, #128	@ 0x80
  12:	2300      	movs	r3, #0
  14:	2040      	movs	r0, #64	@ 0x40
  16:	b510      	push	{r4, lr}
  18:	4c04      	ldr	r4, [pc, #16]	@ (2c <hrt_ClearText+0x1c>)
  1a:	0109      	lsls	r1, r1, #4
  1c:	6822      	ldr	r2, [r4, #0]
  1e:	52d0      	strh	r0, [r2, r3]
  20:	3302      	adds	r3, #2
  22:	428b      	cmp	r3, r1
  24:	d1fa      	bne.n	1c <hrt_ClearText+0xc>
  26:	bc10      	pop	{r4}
  28:	bc01      	pop	{r0}
  2a:	4700      	bx	r0
  2c:	00000000 	andeq	r0, r0, r0

00000030 <hrt_InitTextEngine>:
  30:	b530      	push	{r4, r5, lr}
  32:	2500      	movs	r5, #0
  34:	b083      	sub	sp, #12
  36:	4b12      	ldr	r3, [pc, #72]	@ (80 <hrt_InitTextEngine+0x50>)
  38:	0004      	movs	r4, r0
  3a:	466a      	mov	r2, sp
  3c:	4811      	ldr	r0, [pc, #68]	@ (84 <hrt_InitTextEngine+0x54>)
  3e:	4912      	ldr	r1, [pc, #72]	@ (88 <hrt_InitTextEngine+0x58>)
  40:	9300      	str	r3, [sp, #0]
  42:	9501      	str	r5, [sp, #4]
  44:	f7ff fffe 	bl	0 <hrt_BitUnPack>
  48:	4b10      	ldr	r3, [pc, #64]	@ (8c <hrt_InitTextEngine+0x5c>)
  4a:	681a      	ldr	r2, [r3, #0]
  4c:	8015      	strh	r5, [r2, #0]
  4e:	4910      	ldr	r1, [pc, #64]	@ (90 <hrt_InitTextEngine+0x60>)
  50:	681a      	ldr	r2, [r3, #0]
  52:	8051      	strh	r1, [r2, #2]
  54:	4a0f      	ldr	r2, [pc, #60]	@ (94 <hrt_InitTextEngine+0x64>)
  56:	681b      	ldr	r3, [r3, #0]
  58:	809a      	strh	r2, [r3, #4]
  5a:	4b0f      	ldr	r3, [pc, #60]	@ (98 <hrt_InitTextEngine+0x68>)
  5c:	469c      	mov	ip, r3
  5e:	2180      	movs	r1, #128	@ 0x80
  60:	2300      	movs	r3, #0
  62:	2040      	movs	r0, #64	@ 0x40
  64:	4464      	add	r4, ip
  66:	0064      	lsls	r4, r4, #1
  68:	8025      	strh	r5, [r4, #0]
  6a:	4c0c      	ldr	r4, [pc, #48]	@ (9c <hrt_InitTextEngine+0x6c>)
  6c:	0109      	lsls	r1, r1, #4
  6e:	6822      	ldr	r2, [r4, #0]
  70:	52d0      	strh	r0, [r2, r3]
  72:	3302      	adds	r3, #2
  74:	428b      	cmp	r3, r1
  76:	d1fa      	bne.n	6e <hrt_InitTextEngine+0x3e>
  78:	b003      	add	sp, #12
  7a:	bc30      	pop	{r4, r5}
  7c:	bc01      	pop	{r0}
  7e:	4700      	bx	r0
  80:	040817c0 	streq	r1, [r8], #-1984	@ 0xfffff840
  84:	00000000 	andeq	r0, r0, r0
  88:	06000800 	streq	r0, [r0], -r0, lsl #16
  8c:	00000000 	andeq	r0, r0, r0
  90:	00000421 	andeq	r0, r0, r1, lsr #8
  94:	00007fff 	strdeq	r7, [r0], -pc	@ <UNPREDICTABLE>
  98:	02000004 	andeq	r0, r0, #4
  9c:	00000000 	andeq	r0, r0, r0

000000a0 <hrt_Print>:
  a0:	b40c      	push	{r2, r3}
  a2:	b5f0      	push	{r4, r5, r6, r7, lr}
  a4:	b083      	sub	sp, #12
  a6:	4d11      	ldr	r5, [pc, #68]	@ (ec <hrt_Print+0x4c>)
  a8:	aa08      	add	r2, sp, #32
  aa:	000e      	movs	r6, r1
  ac:	ca02      	ldmia	r2!, {r1}
  ae:	0007      	movs	r7, r0
  b0:	0028      	movs	r0, r5
  b2:	9201      	str	r2, [sp, #4]
  b4:	f7ff fffe 	bl	0 <vsprintf>
  b8:	782c      	ldrb	r4, [r5, #0]
  ba:	2c00      	cmp	r4, #0
  bc:	d010      	beq.n	e0 <hrt_Print+0x40>
  be:	2200      	movs	r2, #0
  c0:	0176      	lsls	r6, r6, #5
  c2:	19f7      	adds	r7, r6, r7
  c4:	4e0a      	ldr	r6, [pc, #40]	@ (f0 <hrt_Print+0x50>)
  c6:	19d3      	adds	r3, r2, r7
  c8:	6831      	ldr	r1, [r6, #0]
  ca:	059b      	lsls	r3, r3, #22
  cc:	0d5b      	lsrs	r3, r3, #21
  ce:	52cc      	strh	r4, [r1, r3]
  d0:	6834      	ldr	r4, [r6, #0]
  d2:	5ae1      	ldrh	r1, [r4, r3]
  d4:	3120      	adds	r1, #32
  d6:	52e1      	strh	r1, [r4, r3]
  d8:	3201      	adds	r2, #1
  da:	5cac      	ldrb	r4, [r5, r2]
  dc:	2c00      	cmp	r4, #0
  de:	d1f2      	bne.n	c6 <hrt_Print+0x26>
  e0:	b003      	add	sp, #12
  e2:	bcf0      	pop	{r4, r5, r6, r7}
  e4:	bc08      	pop	{r3}
  e6:	b002      	add	sp, #8
  e8:	4718      	bx	r3
  ea:	46c0      	nop			@ (mov r8, r8)
	...

Disassembly of section .data:

00000000 <_____colors>:
   0:	04210000 	strteq	r0, [r1], #-0
   4:	Address 0x4 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


video.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_InvertPalette>:
   0:	b570      	push	{r4, r5, r6, lr}
   2:	2900      	cmp	r1, #0
   4:	d00b      	beq.n	1e <hrt_InvertPalette+0x1e>
   6:	2200      	movs	r2, #0
   8:	2501      	movs	r5, #1
   a:	4e06      	ldr	r6, [pc, #24]	@ (24 <hrt_InvertPalette+0x24>)
   c:	0040      	lsls	r0, r0, #1
   e:	6834      	ldr	r4, [r6, #0]
  10:	5a23      	ldrh	r3, [r4, r0]
  12:	3201      	adds	r2, #1
  14:	406b      	eors	r3, r5
  16:	5223      	strh	r3, [r4, r0]
  18:	3002      	adds	r0, #2
  1a:	428a      	cmp	r2, r1
  1c:	dbf7      	blt.n	e <hrt_InvertPalette+0xe>
  1e:	bc70      	pop	{r4, r5, r6}
  20:	bc01      	pop	{r0}
  22:	4700      	bx	r0
  24:	00000000 	andeq	r0, r0, r0

00000028 <hrt_DrawLine3>:
  28:	b5f0      	push	{r4, r5, r6, r7, lr}
  2a:	4645      	mov	r5, r8
  2c:	4657      	mov	r7, sl
  2e:	46de      	mov	lr, fp
  30:	464e      	mov	r6, r9
  32:	b5e0      	push	{r5, r6, r7, lr}
  34:	b087      	sub	sp, #28
  36:	ac10      	add	r4, sp, #64	@ 0x40
  38:	8824      	ldrh	r4, [r4, #0]
  3a:	1a17      	subs	r7, r2, r0
  3c:	46a0      	mov	r8, r4
  3e:	17fc      	asrs	r4, r7, #31
  40:	193f      	adds	r7, r7, r4
  42:	1a5d      	subs	r5, r3, r1
  44:	4067      	eors	r7, r4
  46:	17ec      	asrs	r4, r5, #31
  48:	192d      	adds	r5, r5, r4
  4a:	4065      	eors	r5, r4
  4c:	42af      	cmp	r7, r5
  4e:	db4a      	blt.n	e6 <hrt_DrawLine3+0xbe>
  50:	1c7c      	adds	r4, r7, #1
  52:	006e      	lsls	r6, r5, #1
  54:	46a4      	mov	ip, r4
  56:	1bf4      	subs	r4, r6, r7
  58:	1bef      	subs	r7, r5, r7
  5a:	9603      	str	r6, [sp, #12]
  5c:	007f      	lsls	r7, r7, #1
  5e:	4282      	cmp	r2, r0
  60:	db5f      	blt.n	122 <hrt_DrawLine3+0xfa>
  62:	2201      	movs	r2, #1
  64:	4693      	mov	fp, r2
  66:	9205      	str	r2, [sp, #20]
  68:	428b      	cmp	r3, r1
  6a:	db60      	blt.n	12e <hrt_DrawLine3+0x106>
  6c:	2301      	movs	r3, #1
  6e:	469a      	mov	sl, r3
  70:	2300      	movs	r3, #0
  72:	9304      	str	r3, [sp, #16]
  74:	4663      	mov	r3, ip
  76:	2b01      	cmp	r3, #1
  78:	d02c      	beq.n	d4 <hrt_DrawLine3+0xac>
  7a:	4666      	mov	r6, ip
  7c:	4b35      	ldr	r3, [pc, #212]	@ (154 <hrt_DrawLine3+0x12c>)
  7e:	2201      	movs	r2, #1
  80:	4699      	mov	r9, r3
  82:	25ff      	movs	r5, #255	@ 0xff
  84:	9601      	str	r6, [sp, #4]
  86:	9702      	str	r7, [sp, #8]
  88:	e008      	b.n	9c <hrt_DrawLine3+0x74>
  8a:	9b02      	ldr	r3, [sp, #8]
  8c:	469c      	mov	ip, r3
  8e:	9b01      	ldr	r3, [sp, #4]
  90:	3201      	adds	r2, #1
  92:	4464      	add	r4, ip
  94:	4458      	add	r0, fp
  96:	4451      	add	r1, sl
  98:	4293      	cmp	r3, r2
  9a:	d01b      	beq.n	d4 <hrt_DrawLine3+0xac>
  9c:	002b      	movs	r3, r5
  9e:	400b      	ands	r3, r1
  a0:	011e      	lsls	r6, r3, #4
  a2:	1af6      	subs	r6, r6, r3
  a4:	002b      	movs	r3, r5
  a6:	0136      	lsls	r6, r6, #4
  a8:	4003      	ands	r3, r0
  aa:	18f3      	adds	r3, r6, r3
  ac:	464e      	mov	r6, r9
  ae:	4647      	mov	r7, r8
  b0:	6836      	ldr	r6, [r6, #0]
  b2:	005b      	lsls	r3, r3, #1
  b4:	539f      	strh	r7, [r3, r6]
  b6:	2c00      	cmp	r4, #0
  b8:	dae7      	bge.n	8a <hrt_DrawLine3+0x62>
  ba:	9b03      	ldr	r3, [sp, #12]
  bc:	469c      	mov	ip, r3
  be:	9b05      	ldr	r3, [sp, #20]
  c0:	4464      	add	r4, ip
  c2:	469c      	mov	ip, r3
  c4:	9b04      	ldr	r3, [sp, #16]
  c6:	4460      	add	r0, ip
  c8:	469c      	mov	ip, r3
  ca:	9b01      	ldr	r3, [sp, #4]
  cc:	3201      	adds	r2, #1
  ce:	4461      	add	r1, ip
  d0:	4293      	cmp	r3, r2
  d2:	d1e3      	bne.n	9c <hrt_DrawLine3+0x74>
  d4:	b007      	add	sp, #28
  d6:	bcf0      	pop	{r4, r5, r6, r7}
  d8:	46bb      	mov	fp, r7
  da:	46b2      	mov	sl, r6
  dc:	46a9      	mov	r9, r5
  de:	46a0      	mov	r8, r4
  e0:	bcf0      	pop	{r4, r5, r6, r7}
  e2:	bc01      	pop	{r0}
  e4:	4700      	bx	r0
  e6:	007e      	lsls	r6, r7, #1
  e8:	1c6c      	adds	r4, r5, #1
  ea:	1b7f      	subs	r7, r7, r5
  ec:	46a4      	mov	ip, r4
  ee:	9603      	str	r6, [sp, #12]
  f0:	1b74      	subs	r4, r6, r5
  f2:	007f      	lsls	r7, r7, #1
  f4:	4282      	cmp	r2, r0
  f6:	da09      	bge.n	10c <hrt_DrawLine3+0xe4>
  f8:	428b      	cmp	r3, r1
  fa:	da1c      	bge.n	136 <hrt_DrawLine3+0x10e>
  fc:	2301      	movs	r3, #1
  fe:	425b      	negs	r3, r3
 100:	469a      	mov	sl, r3
 102:	469b      	mov	fp, r3
 104:	9304      	str	r3, [sp, #16]
 106:	2300      	movs	r3, #0
 108:	9305      	str	r3, [sp, #20]
 10a:	e7b6      	b.n	7a <hrt_DrawLine3+0x52>
 10c:	428b      	cmp	r3, r1
 10e:	da1a      	bge.n	146 <hrt_DrawLine3+0x11e>
 110:	2301      	movs	r3, #1
 112:	425b      	negs	r3, r3
 114:	469a      	mov	sl, r3
 116:	9304      	str	r3, [sp, #16]
 118:	3302      	adds	r3, #2
 11a:	469b      	mov	fp, r3
 11c:	2300      	movs	r3, #0
 11e:	9305      	str	r3, [sp, #20]
 120:	e7ab      	b.n	7a <hrt_DrawLine3+0x52>
 122:	2201      	movs	r2, #1
 124:	4252      	negs	r2, r2
 126:	4693      	mov	fp, r2
 128:	9205      	str	r2, [sp, #20]
 12a:	428b      	cmp	r3, r1
 12c:	da9e      	bge.n	6c <hrt_DrawLine3+0x44>
 12e:	2301      	movs	r3, #1
 130:	425b      	negs	r3, r3
 132:	469a      	mov	sl, r3
 134:	e79c      	b.n	70 <hrt_DrawLine3+0x48>
 136:	2301      	movs	r3, #1
 138:	469a      	mov	sl, r3
 13a:	9304      	str	r3, [sp, #16]
 13c:	3b02      	subs	r3, #2
 13e:	469b      	mov	fp, r3
 140:	2300      	movs	r3, #0
 142:	9305      	str	r3, [sp, #20]
 144:	e799      	b.n	7a <hrt_DrawLine3+0x52>
 146:	2301      	movs	r3, #1
 148:	469a      	mov	sl, r3
 14a:	469b      	mov	fp, r3
 14c:	9304      	str	r3, [sp, #16]
 14e:	2300      	movs	r3, #0
 150:	9305      	str	r3, [sp, #20]
 152:	e792      	b.n	7a <hrt_DrawLine3+0x52>
 154:	00000000 	andeq	r0, r0, r0

00000158 <hrt_FlipBGBuffer>:
 158:	2280      	movs	r2, #128	@ 0x80
 15a:	2110      	movs	r1, #16
 15c:	04d2      	lsls	r2, r2, #19
 15e:	8813      	ldrh	r3, [r2, #0]
 160:	4219      	tst	r1, r3
 162:	d006      	beq.n	172 <hrt_FlipBGBuffer+0x1a>
 164:	438b      	bics	r3, r1
 166:	8013      	strh	r3, [r2, #0]
 168:	4b05      	ldr	r3, [pc, #20]	@ (180 <hrt_FlipBGBuffer+0x28>)
 16a:	681a      	ldr	r2, [r3, #0]
 16c:	4b05      	ldr	r3, [pc, #20]	@ (184 <hrt_FlipBGBuffer+0x2c>)
 16e:	601a      	str	r2, [r3, #0]
 170:	4770      	bx	lr
 172:	2110      	movs	r1, #16
 174:	430b      	orrs	r3, r1
 176:	8013      	strh	r3, [r2, #0]
 178:	4b01      	ldr	r3, [pc, #4]	@ (180 <hrt_FlipBGBuffer+0x28>)
 17a:	685a      	ldr	r2, [r3, #4]
 17c:	e7f6      	b.n	16c <hrt_FlipBGBuffer+0x14>
 17e:	46c0      	nop			@ (mov r8, r8)
	...

00000188 <hrt_CyclePalette>:
 188:	b530      	push	{r4, r5, lr}
 18a:	4d0c      	ldr	r5, [pc, #48]	@ (1bc <hrt_CyclePalette+0x34>)
 18c:	682a      	ldr	r2, [r5, #0]
 18e:	0043      	lsls	r3, r0, #1
 190:	5a9c      	ldrh	r4, [r3, r2]
 192:	1843      	adds	r3, r0, r1
 194:	005b      	lsls	r3, r3, #1
 196:	529c      	strh	r4, [r3, r2]
 198:	2900      	cmp	r1, #0
 19a:	d00b      	beq.n	1b4 <hrt_CyclePalette+0x2c>
 19c:	3001      	adds	r0, #1
 19e:	0042      	lsls	r2, r0, #1
 1a0:	2000      	movs	r0, #0
 1a2:	682b      	ldr	r3, [r5, #0]
 1a4:	5a9c      	ldrh	r4, [r3, r2]
 1a6:	189b      	adds	r3, r3, r2
 1a8:	3b02      	subs	r3, #2
 1aa:	3001      	adds	r0, #1
 1ac:	801c      	strh	r4, [r3, #0]
 1ae:	3202      	adds	r2, #2
 1b0:	4281      	cmp	r1, r0
 1b2:	dcf6      	bgt.n	1a2 <hrt_CyclePalette+0x1a>
 1b4:	bc30      	pop	{r4, r5}
 1b6:	bc01      	pop	{r0}
 1b8:	4700      	bx	r0
 1ba:	46c0      	nop			@ (mov r8, r8)
 1bc:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <BackBuffer>:
   0:	0600a000 	streq	sl, [r0], -r0

00000004 <FrontBuffer>:
   4:	06000000 	streq	r0, [r0], -r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	6428203a 	strtvs	r2, [r8], #-58	@ 0xffffffc6
   8:	696b7665 	stmdbvs	fp!, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^
   c:	4d524174 	ldfmie	f4, [r2, #-464]	@ 0xfffffe30
  10:	6c657220 	sfmvs	f7, 2, [r5], #-128	@ 0xffffff80
  14:	65736165 	ldrbvs	r6, [r3, #-357]!	@ 0xfffffe9b
  18:	29343620 	ldmdbcs	r4!, {r5, r9, sl, ip, sp}
  1c:	2e343120 	rsfcssp	f3, f4, f0
  20:	00302e31 	eorseq	r2, r0, r1, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.


asm_misc.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <hrt_PlotPixelInMode4>:
   0:	e92d00f8 	push	{r3, r4, r5, r6, r7}
   4:	e3a03301 	mov	r3, #67108864	@ 0x4000000
   8:	e5934000 	ldr	r4, [r3]
   c:	e204400a 	and	r4, r4, #10
  10:	e1a04224 	lsr	r4, r4, #4
  14:	e3540001 	cmp	r4, #1
  18:	1a000004 	bne	30 <.CalcVRAMAddr2>

0000001c <.CalcVRAMAddr1>:
  1c:	e1a03401 	lsl	r3, r1, #8
  20:	e0433201 	sub	r3, r3, r1, lsl #4
  24:	e0833000 	add	r3, r3, r0
  28:	e2833406 	add	r3, r3, #100663296	@ 0x6000000
  2c:	ea000004 	b	44 <.PrepareColor>

00000030 <.CalcVRAMAddr2>:
  30:	e1a03401 	lsl	r3, r1, #8
  34:	e0433201 	sub	r3, r3, r1, lsl #4
  38:	e0833000 	add	r3, r3, r0
  3c:	e2833406 	add	r3, r3, #100663296	@ 0x6000000
  40:	e2833a0a 	add	r3, r3, #40960	@ 0xa000

00000044 <.PrepareColor>:
  44:	e1d350b0 	ldrh	r5, [r3]
  48:	e1a06425 	lsr	r6, r5, #8
  4c:	e1a07005 	mov	r7, r5
  50:	e2005001 	and	r5, r0, #1
  54:	e3150000 	tst	r5, #0
  58:	1a000002 	bne	68 <.MakeValue2>

0000005c <.MakeValue1>:
  5c:	e1a04402 	lsl	r4, r2, #8
  60:	e1872004 	orr	r2, r7, r4
  64:	ea000001 	b	70 <.StoreColor>

00000068 <.MakeValue2>:
  68:	e1a06406 	lsl	r6, r6, #8
  6c:	e1862002 	orr	r2, r6, r2

00000070 <.StoreColor>:
  70:	e1c320b0 	strh	r2, [r3]
  74:	e8bd00f8 	pop	{r3, r4, r5, r6, r7}
  78:	e12fff1e 	bx	lr

0000007c <hrt_SleepMode>:
  7c:	e3a03301 	mov	r3, #67108864	@ 0x4000000
  80:	e1c33bba 	strh	r3, [r3, #186]	@ 0xba
  84:	e1c33cb6 	strh	r3, [r3, #198]	@ 0xc6
  88:	e1c33dbe 	strh	r3, [r3, #222]	@ 0xde
  8c:	e59f1044 	ldr	r1, [pc, #68]	@ d8 <hrt_ByteCopy+0x14>
  90:	e59f0044 	ldr	r0, [pc, #68]	@ dc <hrt_ByteCopy+0x18>
  94:	e18300b1 	strh	r0, [r3, r1]
  98:	e1d318b0 	ldrh	r1, [r3, #128]	@ 0x80
  9c:	e1c338b0 	strh	r3, [r3, #128]	@ 0x80
  a0:	e1d300b0 	ldrh	r0, [r3]
  a4:	e3800080 	orr	r0, r0, #128	@ 0x80
  a8:	e1c300b0 	strh	r0, [r3]
  ac:	ef030000 	svc	0x00030000
  b0:	e1d300b0 	ldrh	r0, [r3]
  b4:	e3c00080 	bic	r0, r0, #128	@ 0x80
  b8:	e1c300b0 	strh	r0, [r3]
  bc:	e1c318b0 	strh	r1, [r3, #128]	@ 0x80
  c0:	e12fff1e 	bx	lr

000000c4 <hrt_ByteCopy>:
  c4:	e4d1c001 	ldrb	ip, [r1], #1
  c8:	e4c0c001 	strb	ip, [r0], #1
  cc:	e2522001 	subs	r2, r2, #1
  d0:	cafffffe 	bgt	0 <bytecopy>
  d4:	e12fff1e 	bx	lr
  d8:	00000132 	andeq	r0, r0, r2, lsr r1
  dc:	0000c00c 	andeq	ip, r0, ip

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001941 	andeq	r1, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000f 	andeq	r0, r0, pc
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	Address 0x18 is out of bounds.


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

00000014 <hrt_VBlankIntrWait>:
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

0000005c <hrt_LZ77UnCompWRAM>:
  5c:	df11      	svc	17
  5e:	4770      	bx	lr

00000060 <hrt_LZ77UnCompVRAM>:
  60:	df12      	svc	18
  62:	4770      	bx	lr

00000064 <hrt_HuffUnComp>:
  64:	df13      	svc	19
  66:	4770      	bx	lr

00000068 <hrt_RLUnCompWRAM>:
  68:	df14      	svc	20
  6a:	4770      	bx	lr

0000006c <hrt_RLUnCompVRAM>:
  6c:	df15      	svc	21
  6e:	4770      	bx	lr

00000070 <hrt_Diff8bitUnFilterWRAM>:
  70:	df16      	svc	22
  72:	4770      	bx	lr

00000074 <hrt_Diff8bitUnFilterVRAM>:
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
  98:	df21      	svc	33	@ 0x21
  9a:	4770      	bx	lr

0000009c <hrt_SoundWhatever2>:
  9c:	df22      	svc	34	@ 0x22
  9e:	4770      	bx	lr

000000a0 <hrt_SoundWhatever3>:
  a0:	df23      	svc	35	@ 0x23
  a2:	4770      	bx	lr

000000a4 <hrt_SoundWhatever4>:
  a4:	df24      	svc	36	@ 0x24
  a6:	4770      	bx	lr

000000a8 <hrt_MultiBoot>:
  a8:	df25      	svc	37	@ 0x25
  aa:	4770      	bx	lr

000000ac <hrt_HardReset>:
  ac:	df26      	svc	38	@ 0x26
  ae:	4770      	bx	lr

000000b0 <hrt_CustomHalt>:
  b0:	df27      	svc	39	@ 0x27
  b2:	4770      	bx	lr

000000b4 <hrt_SoundDriverVSyncOff>:
  b4:	df28      	svc	40	@ 0x28
  b6:	4770      	bx	lr

000000b8 <hrt_SoundDriverVSyncOn>:
  b8:	df29      	svc	41	@ 0x29
  ba:	4770      	bx	lr

000000bc <hrt_SoundGetJumpList>:
  bc:	df2a      	svc	42	@ 0x2a
  be:	4770      	bx	lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001941 	andeq	r1, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000f 	andeq	r0, r0, pc
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	Address 0x18 is out of bounds.


intdispatch.o:     file format elf32-littlearm


Disassembly of section .iwram:

00000000 <IntrMain>:
   0:	e3a03301 	mov	r3, #67108864	@ 0x4000000
   4:	e5932200 	ldr	r2, [r3, #512]	@ 0x200
   8:	e5931208 	ldr	r1, [r3, #520]	@ 0x208
   c:	e5833208 	str	r3, [r3, #520]	@ 0x208
  10:	e14f0000 	mrs	r0, SPSR
  14:	e92d400b 	push	{r0, r1, r3, lr}
  18:	e0021822 	and	r1, r2, r2, lsr #16
  1c:	e15320b8 	ldrh	r2, [r3, #-8]
  20:	e1822001 	orr	r2, r2, r1
  24:	e14320b8 	strh	r2, [r3, #-8]
  28:	e59f2084 	ldr	r2, [pc, #132]	@ b4 <IntrRet+0x2c>
  2c:	e2833c02 	add	r3, r3, #512	@ 0x200

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
  54:	e5831208 	str	r1, [r3, #520]	@ 0x208
  58:	e1a0f00e 	mov	pc, lr

0000005c <jump_intr>:
  5c:	e5922000 	ldr	r2, [r2]
  60:	e3520000 	cmp	r2, #0
  64:	0afffff8 	beq	4c <no_handler>

00000068 <got_handler>:
  68:	e10f1000 	mrs	r1, CPSR
  6c:	e3c110df 	bic	r1, r1, #223	@ 0xdf
  70:	e381101f 	orr	r1, r1, #31
  74:	e129f001 	msr	CPSR_fc, r1
  78:	e1c300b2 	strh	r0, [r3, #2]
  7c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  80:	e28fe000 	add	lr, pc, #0
  84:	e12fff12 	bx	r2

00000088 <IntrRet>:
  88:	e49de004 	pop	{lr}		@ (ldr lr, [sp], #4)
  8c:	e3a03301 	mov	r3, #67108864	@ 0x4000000
  90:	e5833208 	str	r3, [r3, #520]	@ 0x208
  94:	e10f3000 	mrs	r3, CPSR
  98:	e3c330df 	bic	r3, r3, #223	@ 0xdf
  9c:	e3833092 	orr	r3, r3, #146	@ 0x92
  a0:	e129f003 	msr	CPSR_fc, r3
  a4:	e8bd400b 	pop	{r0, r1, r3, lr}
  a8:	e5831208 	str	r1, [r3, #520]	@ 0x208
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
  18:	Address 0x18 is out of bounds.


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
  40:	e59f3030 	ldr	r3, [pc, #48]	@ 78 <hrt_Memcpy16+0x78>
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
  6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  70:	e49d3004 	pop	{r3}		@ (ldr r3, [sp], #4)
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
  18:	Address 0x18 is out of bounds.


pucrunch.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <UnpackPUC>:
   0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
   4:	e24dd044 	sub	sp, sp, #68	@ 0x44
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
  5c:	e3a09024 	mov	r9, #36	@ 0x24

00000060 <_tablop>:
  60:	e4d05001 	ldrb	r5, [r0], #1
  64:	e7cd5009 	strb	r5, [sp, r9]
  68:	e2899001 	add	r9, r9, #1
  6c:	e2588001 	subs	r8, r8, #1
  70:	1afffffa 	bne	60 <_tablop>
  74:	e3a08080 	mov	r8, #128	@ 0x80
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
  a0:	e20550ff 	and	r5, r5, #255	@ 0xff
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
 120:	e285c023 	add	ip, r5, #35	@ 0x23
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
 148:	e20550ff 	and	r5, r5, #255	@ 0xff

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
 18c:	e20560ff 	and	r6, r5, #255	@ 0xff
 190:	e5dd9004 	ldrb	r9, [sp, #4]
 194:	e1a07001 	mov	r7, r1
 198:	e207c0ff 	and	ip, r7, #255	@ 0xff
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
 1f8:	e31800ff 	tst	r8, #255	@ 0xff
 1fc:	1a000002 	bne	20c <_loop1>
 200:	e4d08001 	ldrb	r8, [r0], #1
 204:	e1500000 	cmp	r0, r0
 208:	e0a88008 	adc	r8, r8, r8

0000020c <_loop1>:
 20c:	e3180c01 	tst	r8, #256	@ 0x100
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
 238:	e31800ff 	tst	r8, #255	@ 0xff
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
 268:	e28dd044 	add	sp, sp, #68	@ 0x44
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
  18:	Address 0x18 is out of bounds.


rtc.o:     file format elf32-littlearm


Disassembly of section .iwram:

00000000 <gettime>:
   0:	e59f30b8 	ldr	r3, [pc, #184]	@ c0 <RTCLoop3+0x2c>
   4:	e3a01001 	mov	r1, #1
   8:	e1c310b4 	strh	r1, [r3, #4]
   c:	e3a01007 	mov	r1, #7
  10:	e1c310b2 	strh	r1, [r3, #2]
  14:	e3a01001 	mov	r1, #1
  18:	e1c310b0 	strh	r1, [r3]
  1c:	e3a01005 	mov	r1, #5
  20:	e1c310b0 	strh	r1, [r3]
  24:	e3a02065 	mov	r2, #101	@ 0x65
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
  18:	Address 0x18 is out of bounds.

