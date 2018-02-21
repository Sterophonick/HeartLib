	.cpu arm7tdmi
	.eabi_attribute 23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"main.c"
@ GNU C11 (devkitARM release 47) version 7.1.0 (arm-none-eabi)
@	compiled by GNU C version 4.9.2, GMP version 6.0.0, MPFR version 3.1.2, MPC version 1.0.2, isl version none
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib thumb
@ -iprefix c:\devkitpro\devkitarm\bin\../lib/gcc/arm-none-eabi/7.1.0/
@ -MMD main.d -MF -Wall -MP -D__USES_INITFINI__ main.c -mlong-calls
@ -mcpu=arm7tdmi -mtune=arm7tdmi -marm -mthumb -mthumb-interwork -g -O3
@ -ffast-math -fomit-frame-pointer -faggressive-loop-optimizations
@ -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -falign-jumps
@ -falign-labels -falign-loops -fassociative-math -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
@ -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
@ -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
@ -fchkp-use-static-bounds -fchkp-use-static-const-bounds
@ -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments -fcommon
@ -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
@ -fcx-limited-range -fdefer-pop -fdelete-null-pointer-checks
@ -fdevirtualize -fdevirtualize-speculatively -fdwarf2-cfi-asm
@ -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
@ -ffinite-math-only -fforward-propagate -ffp-int-builtin-inexact
@ -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
@ -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
@ -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
@ -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2 -fplt
@ -fpredictive-commoning -fprefetch-loop-arrays -freciprocal-math
@ -freg-struct-return -freorder-blocks -freorder-functions
@ -frerun-cse-after-loop -fsched-critical-path-heuristic
@ -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
@ -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
@ -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate
@ -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
@ -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
@ -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
@ -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
@ -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
@ -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
@ -funit-at-a-time -funsafe-math-optimizations -funswitch-loops
@ -fvar-tracking -fvar-tracking-assignments -fverbose-asm
@ -fzero-initialized-in-bss -mlittle-endian -mlong-calls
@ -mpic-data-is-text-relative -msched-prolog -mthumb -mthumb-interwork
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_idivmod
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
.LFB1:
	.file 1 "main.c"
	.loc 1 15 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	lr, fp	@,
	mov	r7, r10	@,
	mov	r5, r8	@,
	mov	r6, r9	@,
	push	{r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 36
	.cfi_offset 8, -36
	.cfi_offset 9, -32
	.cfi_offset 10, -28
	.cfi_offset 11, -24
@ main.c:16: 	hrt_Init(1); //Initializes Heartlib. If number is set to 1 it plays an intro. REQUIRED FOR USING THIS LIBRARY. IF THIS IS NOT EXECUTED IT WILL NOT WORK!!!!
	.loc 1 16 0
	ldr	r3, .L132	@ tmp397,
@ main.c:15: {
	.loc 1 15 0
	sub	sp, sp, #76	@,,
	.cfi_def_cfa_offset 112
@ main.c:16: 	hrt_Init(1); //Initializes Heartlib. If number is set to 1 it plays an intro. REQUIRED FOR USING THIS LIBRARY. IF THIS IS NOT EXECUTED IT WILL NOT WORK!!!!
	.loc 1 16 0
	movs	r0, #1	@,
	bl	.L142	@
.LVL0:
@ main.c:17: 	p[0] = hrt_LoadByte(0x00);
	.loc 1 17 0
	ldr	r6, .L132+4	@ tmp1785,
	ldr	r4, .L132+8	@ tmp399,
	movs	r0, #0	@,
	ldr	r5, [r6]	@ p.0_1, p
	bl	.L143	@
.LVL1:
	strb	r0, [r5]	@ tmp400, *p.0_1
@ main.c:18: 	p[1] = hrt_LoadByte(0x01);
	.loc 1 18 0
	movs	r0, #1	@,
	ldr	r5, [r6]	@ p.1_3, p
	bl	.L143	@
.LVL2:
	strb	r0, [r5, #1]	@ tmp405, MEM[(unsigned char *)p.1_3 + 1B]
@ main.c:19: 	p[2] = hrt_LoadByte(0x02);
	.loc 1 19 0
	movs	r0, #2	@,
	ldr	r5, [r6]	@ p.2_5, p
	bl	.L143	@
.LVL3:
	strb	r0, [r5, #2]	@ tmp410, MEM[(unsigned char *)p.2_5 + 2B]
@ main.c:20: 	p[3] = hrt_LoadByte(0x03);
	.loc 1 20 0
	movs	r0, #3	@,
	ldr	r5, [r6]	@ p.3_7, p
	bl	.L143	@
.LVL4:
@ main.c:21: 	const GBFS_FILE *dat = find_first_gbfs_file(find_first_gbfs_file); //defines GBFS file
	.loc 1 21 0
	ldr	r3, .L132+12	@ tmp418,
@ main.c:20: 	p[3] = hrt_LoadByte(0x03);
	.loc 1 20 0
	strb	r0, [r5, #3]	@ tmp415, MEM[(unsigned char *)p.3_7 + 3B]
@ main.c:21: 	const GBFS_FILE *dat = find_first_gbfs_file(find_first_gbfs_file); //defines GBFS file
	.loc 1 21 0
	movs	r0, r3	@, tmp418
	bl	.L142	@
.LVL5:
@ main.c:22: 	hrt_InitSound(0, 22050, 5252832, (void*)hrt_snd); //initialises sound
	.loc 1 22 0
	ldr	r3, .L132+16	@,
@ main.c:21: 	const GBFS_FILE *dat = find_first_gbfs_file(find_first_gbfs_file); //defines GBFS file
	.loc 1 21 0
	str	r0, [sp, #52]	@, %sfp
.LVL6:
@ main.c:22: 	hrt_InitSound(0, 22050, 5252832, (void*)hrt_snd); //initialises sound
	.loc 1 22 0
	ldr	r2, .L132+20	@,
	ldr	r1, .L132+24	@,
	movs	r0, #0	@,
.LVL7:
	ldr	r4, .L132+28	@ tmp423,
	bl	.L143	@
.LVL8:
@ main.c:24: 	hrt_SetDSPMode(3, //Mode
	.loc 1 24 0
	movs	r7, #1	@ tmp427,
	movs	r4, #0	@ tmp424,
	movs	r3, #0	@,
	str	r4, [sp, #36]	@ tmp424,
	str	r4, [sp, #32]	@ tmp424,
	str	r4, [sp, #28]	@ tmp424,
	str	r4, [sp, #20]	@ tmp424,
	str	r4, [sp, #12]	@ tmp424,
	str	r4, [sp, #8]	@ tmp424,
	str	r4, [sp, #4]	@ tmp424,
	movs	r2, #0	@,
	movs	r1, #0	@,
	movs	r0, #3	@,
	ldr	r5, .L132+32	@ tmp1899,
	str	r7, [sp, #24]	@ tmp427,
	str	r7, [sp, #16]	@ tmp427,
	str	r7, [sp]	@ tmp427,
	bl	.L144	@
.LVL9:
@ main.c:39: 	hrt_CreateOBJ(0,   //Sprite ID
	.loc 1 39 0
	movs	r2, #0	@,
	str	r4, [sp, #40]	@ tmp424,
	str	r4, [sp, #36]	@ tmp424,
	str	r4, [sp, #32]	@ tmp424,
	str	r4, [sp, #24]	@ tmp424,
	str	r4, [sp, #20]	@ tmp424,
	str	r4, [sp, #16]	@ tmp424,
	str	r4, [sp, #12]	@ tmp424,
	str	r4, [sp, #8]	@ tmp424,
	str	r4, [sp, #4]	@ tmp424,
	str	r4, [sp]	@ tmp424,
	movs	r3, #0	@,
	movs	r1, #0	@,
	movs	r0, #0	@,
	ldr	r5, .L132+36	@ tmp1901,
	str	r7, [sp, #28]	@ tmp427,
	bl	.L144	@
.LVL10:
@ main.c:55: 	hrt_LoadOBJGFX((void*)arrowTiles, 32); //loads Sprite Graphics
	.loc 1 55 0
	movs	r1, #32	@,
	ldr	r0, .L132+40	@,
	ldr	r3, .L132+44	@ tmp1903,
	bl	.L142	@
.LVL11:
@ main.c:56: 	hrt_LoadOBJPal((void*)arrowPal, 255); //loads Sprite palette
	.loc 1 56 0
	movs	r1, #255	@,
	ldr	r0, .L132+48	@,
	ldr	r3, .L132+52	@ tmp1905,
	bl	.L142	@
.LVL12:
@ main.c:58: 	arpos = 0; //Sets arrow position to 0
	.loc 1 58 0
	ldr	r3, .L132+56	@ tmp1780,
@ main.c:57: 	frames = 0; //Sets frames to 0
	.loc 1 57 0
	ldr	r5, .L132+60	@ tmp1779,
@ main.c:58: 	arpos = 0; //Sets arrow position to 0
	.loc 1 58 0
	str	r4, [r3]	@ tmp424, arpos
@ main.c:60: 	hrt_PrintOnBitmap(56, //X position
	.loc 1 60 0
	ldr	r2, .L132+64	@,
	movs	r1, #152	@,
	movs	r0, #56	@,
@ main.c:58: 	arpos = 0; //Sets arrow position to 0
	.loc 1 58 0
	mov	r8, r3	@ tmp1780, tmp1780
@ main.c:60: 	hrt_PrintOnBitmap(56, //X position
	.loc 1 60 0
	ldr	r3, .L132+68	@ tmp1909,
@ main.c:57: 	frames = 0; //Sets frames to 0
	.loc 1 57 0
	str	r4, [r5]	@ tmp424, frames
@ main.c:60: 	hrt_PrintOnBitmap(56, //X position
	.loc 1 60 0
	bl	.L142	@
.LVL13:
@ main.c:64: 	hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0); //Sets REG_DISPCNT, like above
	.loc 1 64 0
	str	r4, [sp, #36]	@ tmp424,
	str	r4, [sp, #32]	@ tmp424,
	str	r4, [sp, #28]	@ tmp424,
	str	r4, [sp, #20]	@ tmp424,
	str	r4, [sp, #12]	@ tmp424,
	str	r4, [sp, #8]	@ tmp424,
	str	r4, [sp, #4]	@ tmp424,
	movs	r3, #0	@,
	movs	r2, #0	@,
	movs	r1, #0	@,
	movs	r0, #3	@,
	str	r7, [sp, #24]	@ tmp427,
	str	r7, [sp, #16]	@ tmp427,
	str	r7, [sp]	@ tmp427,
	ldr	r4, .L132+32	@ tmp1911,
	bl	.L143	@
.LVL14:
@ main.c:65: 	hrt_PrintOnBitmap(8, 0, "Sprite"); //draws text
	.loc 1 65 0
	ldr	r2, .L132+72	@,
	movs	r1, #0	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1913,
	bl	.L142	@
.LVL15:
@ main.c:66: 	hrt_PrintOnBitmap(8, 9, "Scroll");//draws text
	.loc 1 66 0
	ldr	r2, .L132+76	@,
	movs	r1, #9	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1915,
	bl	.L142	@
.LVL16:
@ main.c:67: 	hrt_PrintOnBitmap(8, 18, "Fade");//draws text
	.loc 1 67 0
	ldr	r2, .L132+80	@,
	movs	r1, #18	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1917,
	bl	.L142	@
.LVL17:
@ main.c:68: 	hrt_PrintOnBitmap(8, 27, "LZ77 Compression");//draws text
	.loc 1 68 0
	ldr	r2, .L132+84	@,
	movs	r1, #27	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1919,
	bl	.L142	@
.LVL18:
@ main.c:69: 	hrt_PrintOnBitmap(8, 36, "Palette Cycle");//draws text
	.loc 1 69 0
	ldr	r2, .L132+88	@,
	movs	r1, #36	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1921,
	bl	.L142	@
.LVL19:
@ main.c:70: 	hrt_PrintOnBitmap(8, 45, "DMA Transfer");//draws text
	.loc 1 70 0
	ldr	r2, .L132+92	@,
	movs	r1, #45	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1923,
	bl	.L142	@
.LVL20:
@ main.c:71: 	hrt_PrintOnBitmap(8, 54, "GetPixel");//draws text
	.loc 1 71 0
	ldr	r2, .L132+96	@,
	movs	r1, #54	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1925,
	bl	.L142	@
.LVL21:
@ main.c:72: 	hrt_PrintOnBitmap(8, 63, "DMA Sound");//draws text
	.loc 1 72 0
	ldr	r2, .L132+100	@,
	movs	r1, #63	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1927,
	bl	.L142	@
.LVL22:
@ main.c:73: 	hrt_PrintOnBitmap(8, 72, "Mode 3 Wipes");//draws text
	.loc 1 73 0
	ldr	r2, .L132+104	@,
	movs	r1, #72	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1929,
	bl	.L142	@
.LVL23:
@ main.c:74: 	hrt_PrintOnBitmap(8, 81, "Alpha Blending");//draws text
	.loc 1 74 0
	ldr	r2, .L132+108	@,
	movs	r1, #81	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1931,
	bl	.L142	@
.LVL24:
@ main.c:75: 	hrt_PrintOnBitmap(8, 90, "SRAM");//draws text
	.loc 1 75 0
	ldr	r2, .L132+112	@,
	movs	r1, #90	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1933,
	bl	.L142	@
.LVL25:
@ main.c:76: 	hrt_PrintOnBitmap(8, 99, "Assert");//draws text
	.loc 1 76 0
	ldr	r2, .L132+116	@,
	movs	r1, #99	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1935,
	bl	.L142	@
.LVL26:
@ main.c:77: 	hrt_PrintOnBitmap(8, 108, "AGBPrint");//draws text
	.loc 1 77 0
	ldr	r2, .L132+120	@,
	movs	r1, #108	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1937,
	bl	.L142	@
.LVL27:
@ main.c:78: 	hrt_PrintOnBitmap(8, 117, "Sleep");//draws text
	.loc 1 78 0
	ldr	r2, .L132+124	@,
	movs	r1, #117	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1939,
	bl	.L142	@
.LVL28:
@ main.c:79: 	hrt_PrintOnBitmap(8, 126, "EZ-Flash IV Exit");//draws text
	.loc 1 79 0
	ldr	r2, .L132+128	@,
	movs	r1, #126	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1941,
	bl	.L142	@
.LVL29:
@ main.c:80: 	hrt_PrintOnBitmap(8, 135, "Cold Reset");//draws text
	.loc 1 80 0
	ldr	r2, .L132+132	@,
	movs	r1, #135	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1943,
	bl	.L142	@
.LVL30:
@ main.c:81: 	hrt_PrintOnBitmap(8, 144, "Parallax Scrolling");//draws text
	.loc 1 81 0
	ldr	r2, .L132+136	@,
	movs	r1, #144	@,
	movs	r0, #8	@,
	ldr	r3, .L132+68	@ tmp1945,
	bl	.L142	@
.LVL31:
@ main.c:82: 	hrt_CopyOAM(); //Copies OBJ Data to OAM
	.loc 1 82 0
	ldr	r3, .L132+140	@ tmp1947,
	bl	.L142	@
.LVL32:
	ldr	r3, .L132+144	@ tmp1772,
	mov	r10, r3	@ tmp1772, tmp1772
@ main.c:85: 		if (keyDown(KEY_UP))
	.loc 1 85 0
	ldr	r3, .L132+148	@ tmp503,
	mov	fp, r3	@ tmp503, tmp503
	b	.L80	@
.L2:
@ main.c:95: 		if (keyDown(KEY_DOWN))
	.loc 1 95 0
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #24	@ tmp1870, MEM[(volatile u16 *)67109168B],
	bpl	.L109	@,
.L6:
	lsls	r3, r2, #3	@ tmp558, pretmp_600,
	adds	r2, r3, r2	@ prephitmp_637, tmp558, pretmp_600
.L10:
@ main.c:105: 		hrt_SetOBJXY(&sprites[0], //Sprite
	.loc 1 105 0
	ldr	r3, .L132+152	@ tmp1962,
	movs	r1, #0	@,
	ldr	r0, .L132+156	@,
	bl	.L142	@
.LVL33:
@ main.c:109: 		if (keyDown(KEY_A))
	.loc 1 109 0
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r4, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	movs	r3, #1	@ tmp567,
	mov	r9, r3	@ tmp567, tmp567
	ands	r4, r3	@ tmp571, tmp567
	bne	.L11	@,
@ main.c:111: 			if (arpos == 16)
	.loc 1 111 0
	mov	r3, r8	@ tmp1780, tmp1780
	ldr	r7, [r3]	@ arpos.9_27, arpos
	cmp	r7, #16	@ arpos.9_27,
	bne	.LCB302	@
	b	.L110	@long jump	@
.LCB302:
@ main.c:156: 			if (arpos == 15)
	.loc 1 156 0
	cmp	r7, #15	@ arpos.9_27,
	bne	.LCB304	@
	b	.L111	@long jump	@
.LCB304:
.L21:
@ main.c:160: 			if (arpos == 14)
	.loc 1 160 0
	cmp	r7, #14	@ arpos.9_27,
	bne	.LCB307	@
	b	.L112	@long jump	@
.LCB307:
.L22:
@ main.c:164: 			if (arpos == 13)
	.loc 1 164 0
	cmp	r7, #13	@ arpos.9_27,
	bne	.LCB310	@
	b	.L113	@long jump	@
.LCB310:
@ main.c:171: 			if (arpos == 12)
	.loc 1 171 0
	cmp	r7, #12	@ arpos.9_27,
	bne	.LCB312	@
	b	.L114	@long jump	@
.LCB312:
.L26:
@ main.c:175: 			if (arpos == 11)
	.loc 1 175 0
	cmp	r7, #11	@ arpos.9_27,
	bne	.LCB315	@
	b	.L115	@long jump	@
.LCB315:
@ main.c:179: 			if (arpos == 9)
	.loc 1 179 0
	cmp	r7, #9	@ arpos.9_27,
	bne	.LCB317	@
	b	.L116	@long jump	@
.LCB317:
.L28:
@ main.c:248: 			if (arpos == 8)
	.loc 1 248 0
	cmp	r7, #8	@ arpos.9_27,
	bne	.LCB320	@
	b	.L117	@long jump	@
.LCB320:
@ main.c:264: 			if (arpos == 6)
	.loc 1 264 0
	cmp	r7, #6	@ arpos.9_27,
	beq	.L118	@,
@ main.c:272: 			if (arpos == 7)
	.loc 1 272 0
	cmp	r7, #7	@ arpos.9_27,
	beq	.L119	@,
.L36:
@ main.c:289: 			if (arpos == 5)
	.loc 1 289 0
	cmp	r7, #5	@ arpos.9_27,
	bne	.LCB327	@
	bl	.L120	@far jump	@
.LCB327:
@ main.c:302: 			if (arpos == 3)
	.loc 1 302 0
	cmp	r7, #3	@ arpos.9_27,
	bne	.LCB329	@
	bl	.L121	@far jump	@
.LCB329:
@ main.c:315: 			if (arpos == 4)
	.loc 1 315 0
	cmp	r7, #4	@ arpos.9_27,
	bne	.LCB331	@
	bl	.L122	@far jump	@
.LCB331:
@ main.c:330: 			if (arpos == 2)
	.loc 1 330 0
	cmp	r7, #2	@ arpos.9_27,
	bne	.LCB333	@
	bl	.L123	@far jump	@
.LCB333:
@ main.c:373: 			if (arpos == 1)
	.loc 1 373 0
	cmp	r7, #1	@ arpos.9_27,
	bne	.LCB335	@
	bl	.L124	@far jump	@
.LCB335:
@ main.c:412: 			if (arpos == 0)
	.loc 1 412 0
	cmp	r7, #0	@ arpos.9_27,
	bne	.LCB337	@
	bl	.L125	@far jump	@
.LCB337:
@ main.c:483: 			if (arpos == 10)
	.loc 1 483 0
	cmp	r7, #10	@ arpos.9_27,
	bne	.LCB339	@
	b	.L126	@long jump	@
.LCB339:
.L11:
@ main.c:519: 		hrt_CopyOAM();
	.loc 1 519 0
	ldr	r3, .L132+140	@ tmp2306,
	bl	.L142	@
.LVL34:
@ main.c:520: 		hrt_VblankIntrWait();
	.loc 1 520 0
	ldr	r3, .L132+160	@ tmp2308,
	bl	.L142	@
.LVL35:
.L80:
@ main.c:85: 		if (keyDown(KEY_UP))
	.loc 1 85 0
	mov	r3, fp	@ tmp503, tmp503
	mov	r2, r8	@ tmp1780, tmp1780
	movs	r1, #64	@ tmp1953,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldr	r2, [r2]	@ pretmp_600, arpos
	ands	r3, r1	@ tmp513, tmp1953
	bne	.L2	@,
@ main.c:88: 			if (arpos == -1)
	.loc 1 88 0
	subs	r2, r2, #1	@ pretmp_600, pretmp_600
	bcc	.L3	@,
@ main.c:87: 			arpos--;
	.loc 1 87 0
	mov	r3, r8	@ tmp1780, tmp1780
	str	r2, [r3]	@ pretmp_600, arpos
.L5:
@ main.c:93: 			while (keyDown(KEY_UP));
	.loc 1 93 0 discriminator 1
	mov	r3, fp	@ tmp503, tmp503
	movs	r1, #64	@ tmp1957,
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	tst	r1, r3	@ tmp1957, MEM[(volatile u16 *)67109168B]
	beq	.L5	@,
@ main.c:95: 		if (keyDown(KEY_DOWN))
	.loc 1 95 0
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #24	@ tmp1870, MEM[(volatile u16 *)67109168B],
	bmi	.L6	@,
.L109:
@ main.c:97: 			arpos++;
	.loc 1 97 0
	adds	r2, r2, #1	@ _19,
@ main.c:98: 			if (arpos == 17)
	.loc 1 98 0
	cmp	r2, #17	@ _19,
	beq	.L7	@,
@ main.c:97: 			arpos++;
	.loc 1 97 0
	mov	r3, r8	@ tmp1780, tmp1780
	str	r2, [r3]	@ _19, arpos
	lsls	r3, r2, #3	@ tmp542, _19,
	adds	r2, r3, r2	@ prephitmp_637, tmp542, _19
.L8:
@ main.c:102: 			while (keyDown(KEY_DOWN));
	.loc 1 102 0 discriminator 1
	movs	r1, #128	@ tmp553,
.L9:
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	tst	r1, r3	@ tmp553, MEM[(volatile u16 *)67109168B]
	beq	.L9	@,
	b	.L10	@
.L7:
@ main.c:100: 				arpos = 16;
	.loc 1 100 0
	mov	r2, r8	@ tmp1780, tmp1780
	movs	r3, #16	@ tmp545,
	str	r3, [r2]	@ tmp545, arpos
	movs	r2, #144	@ prephitmp_637,
	b	.L8	@
.L3:
@ main.c:90: 				arpos = 0;
	.loc 1 90 0
	mov	r2, r8	@ tmp1780, tmp1780
	str	r3, [r2]	@ tmp513, arpos
	movs	r2, #0	@ pretmp_600,
	b	.L5	@
.L118:
@ main.c:266: 				hrt_DrawPixel(3, 120, 80, 0xFFFF);
	.loc 1 266 0
	ldr	r4, .L132+164	@ tmp1073,
	movs	r2, #80	@,
	movs	r3, r4	@, tmp1073
	movs	r1, #120	@,
	movs	r0, #3	@,
	ldr	r7, .L132+168	@ tmp2141,
	bl	.L145	@
.LVL36:
@ main.c:267: 				if (hrt_GetPixel(3 ,120, 80) == 0xFFFF)
	.loc 1 267 0
	movs	r2, #80	@,
	movs	r1, #120	@,
	movs	r0, #3	@,
	ldr	r3, .L132+172	@ tmp2143,
	bl	.L142	@
.LVL37:
	cmp	r0, r4	@ tmp1076, tmp1073
	bne	.LCB438	@
	b	.L35	@long jump	@
.LCB438:
.L107:
	mov	r3, r8	@ tmp1780, tmp1780
	ldr	r7, [r3]	@ arpos.9_27, arpos
@ main.c:272: 			if (arpos == 7)
	.loc 1 272 0
	cmp	r7, #7	@ arpos.9_27,
	bne	.L36	@,
.L119:
@ main.c:274: 				frames = 0;
	.loc 1 274 0
	movs	r4, #0	@ tmp1084,
@ main.c:275: 				hrt_PlaySoundFIFO(0);
	.loc 1 275 0
	ldr	r6, .L132+176	@ tmp1764,
	movs	r0, r4	@, tmp1084
@ main.c:274: 				frames = 0;
	.loc 1 274 0
	str	r4, [r5]	@ tmp1084, frames
@ main.c:279: 					REG_SOUNDCNT1_H = 0;                                                       //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
	.loc 1 279 0
	ldr	r7, .L132+180	@ tmp1088,
@ main.c:275: 				hrt_PlaySoundFIFO(0);
	.loc 1 275 0
	bl	.L146	@
.LVL38:
	ldr	r5, .L132+184	@ tmp1765,
.L37:
@ main.c:278: 					hrt_SleepF(14280);
	.loc 1 278 0 discriminator 1
	ldr	r0, .L132+188	@,
	bl	.L144	@
.LVL39:
@ main.c:280: 					REG_SOUNDCNT1_X = 0;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
	.loc 1 280 0 discriminator 1
	ldr	r3, .L132+192	@ tmp1091,
@ main.c:279: 					REG_SOUNDCNT1_H = 0;                                                       //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
	.loc 1 279 0 discriminator 1
	strh	r4, [r7]	@ tmp1089, MEM[(volatile short unsigned int *)67108994B]
@ main.c:280: 					REG_SOUNDCNT1_X = 0;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
	.loc 1 280 0 discriminator 1
	strh	r4, [r3]	@ tmp1089, MEM[(volatile short unsigned int *)67108996B]
@ main.c:281: 					REG_SD1SAD = 0;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
	.loc 1 281 0 discriminator 1
	ldr	r3, .L132+196	@ tmp1094,
	str	r4, [r3]	@ tmp1089, MEM[(volatile long unsigned int *)67109052B]
@ main.c:282: 					REG_SD1DAD = 0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
	.loc 1 282 0 discriminator 1
	ldr	r3, .L132+200	@ tmp1096,
	str	r4, [r3]	@ tmp1089, MEM[(volatile long unsigned int *)67109056B]
@ main.c:283: 					REG_SD1CNT_H = 0;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
	.loc 1 283 0 discriminator 1
	ldr	r3, .L132+204	@ tmp1098,
	strh	r4, [r3]	@ tmp1089, MEM[(volatile short unsigned int *)67109062B]
@ main.c:284: 					REG_TM0SD = 0;                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
	.loc 1 284 0 discriminator 1
	ldr	r3, .L132+208	@ tmp1101,
	strh	r4, [r3]	@ tmp1089, MEM[(volatile short unsigned int *)67109120B]
@ main.c:285: 					REG_TMSDCNT = 0;
	.loc 1 285 0 discriminator 1
	ldr	r3, .L132+212	@ tmp1104,
@ main.c:286: 					hrt_PlaySoundFIFO(0);
	.loc 1 286 0 discriminator 1
	movs	r0, #0	@,
@ main.c:285: 					REG_TMSDCNT = 0;
	.loc 1 285 0 discriminator 1
	strh	r4, [r3]	@ tmp1089, MEM[(volatile short unsigned int *)67109122B]
@ main.c:286: 					hrt_PlaySoundFIFO(0);
	.loc 1 286 0 discriminator 1
	bl	.L146	@
.LVL40:
	b	.L37	@
.L133:
	.align	2
.L132:
	.word	hrt_Init
	.word	.LANCHOR0
	.word	hrt_LoadByte
	.word	find_first_gbfs_file
	.word	hrt_snd
	.word	5252832
	.word	22050
	.word	hrt_InitSound
	.word	hrt_SetDSPMode
	.word	hrt_CreateOBJ
	.word	arrowTiles
	.word	hrt_LoadOBJGFX
	.word	arrowPal
	.word	hrt_LoadOBJPal
	.word	arpos
	.word	frames
	.word	.LC14
	.word	hrt_PrintOnBitmap
	.word	.LC17
	.word	.LC19
	.word	.LC21
	.word	.LC23
	.word	.LC25
	.word	.LC27
	.word	.LC29
	.word	.LC31
	.word	.LC33
	.word	.LC35
	.word	.LC37
	.word	.LC39
	.word	.LC41
	.word	.LC43
	.word	.LC45
	.word	.LC47
	.word	.LC49
	.word	hrt_CopyOAM
	.word	hrt_ConfigBG
	.word	67109168
	.word	hrt_SetOBJXY
	.word	sprites
	.word	hrt_VblankIntrWait
	.word	65535
	.word	hrt_DrawPixel
	.word	hrt_GetPixel
	.word	hrt_PlaySoundFIFO
	.word	67108994
	.word	hrt_SleepF
	.word	14280
	.word	67108996
	.word	67109052
	.word	67109056
	.word	67109062
	.word	67109120
	.word	67109122
.L115:
@ main.c:177: 				hrt_ConfigBG(5, 0, 1, 1, 1, 0, 1, 0);
	.loc 1 177 0
	movs	r3, #1	@ tmp937,
	movs	r2, #0	@ tmp936,
	str	r3, [sp, #8]	@ tmp937,
	str	r2, [sp, #12]	@ tmp936,
	str	r2, [sp, #4]	@ tmp936,
	str	r3, [sp]	@ tmp937,
	adds	r2, r2, #1	@,
	movs	r1, #0	@,
	movs	r0, #5	@,
	bl	.L147	@
.LVL41:
	mov	r3, r8	@ tmp1780, tmp1780
	ldr	r7, [r3]	@ arpos.9_27, arpos
@ main.c:179: 			if (arpos == 9)
	.loc 1 179 0
	cmp	r7, #9	@ arpos.9_27,
	beq	.LCB551	@
	b	.L28	@long jump	@
.LCB551:
.L116:
.LBB2:
@ main.c:181: 				hrt_FillPalette(1, 0x0000);
	.loc 1 181 0
	movs	r1, #0	@,
	movs	r0, #1	@,
	ldr	r3, .L134	@ tmp942,
	bl	.L142	@
.LVL42:
@ main.c:182: 				hrt_SetDSPMode(0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
	.loc 1 182 0
	movs	r3, #0	@ tmp943,
	mov	r9, r3	@ tmp943, tmp943
	str	r3, [sp, #36]	@ tmp943,
	str	r3, [sp, #32]	@ tmp943,
	str	r3, [sp, #28]	@ tmp943,
	adds	r3, r3, #1	@ tmp946,
	mov	r8, r3	@ tmp946, tmp946
	str	r3, [sp, #24]	@ tmp946,
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [sp, #20]	@ tmp943,
	mov	r3, r8	@ tmp946, tmp946
	str	r3, [sp, #16]	@ tmp946,
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [sp, #12]	@ tmp943,
	str	r3, [sp, #8]	@ tmp943,
	str	r3, [sp, #4]	@ tmp943,
	mov	r3, r8	@ tmp946, tmp946
	mov	r2, r9	@, tmp943
	str	r3, [sp]	@ tmp946,
	mov	r1, r9	@, tmp943
	mov	r3, r9	@, tmp943
	mov	r0, r9	@, tmp943
	ldr	r4, .L134+4	@ tmp2084,
	bl	.L143	@
.LVL43:
@ main.c:183: 				hrt_offsetOAMData = 0;
	.loc 1 183 0
	mov	r2, r9	@ tmp943, tmp943
	ldr	r3, .L134+8	@ tmp954,
	str	r2, [r3]	@ tmp943, hrt_offsetOAMData
@ main.c:184: 				hrt_offsetOAMPal = 0;
	.loc 1 184 0
	ldr	r3, .L134+12	@ tmp956,
	str	r2, [r3]	@ tmp943, hrt_offsetOAMPal
@ main.c:185: 				hrt_offsetBGMap = 0;
	.loc 1 185 0
	ldr	r3, .L134+16	@ tmp958,
	str	r2, [r3]	@ tmp943, hrt_offsetBGMap
@ main.c:186: 				hrt_offsetBGPal = 0;
	.loc 1 186 0
	ldr	r3, .L134+20	@ tmp960,
	str	r2, [r3]	@ tmp943, hrt_offsetBGPal
@ main.c:187: 				hrt_offsetBGTile = 0;
	.loc 1 187 0
	ldr	r3, .L134+24	@ tmp962,
	str	r2, [r3]	@ tmp943, hrt_offsetBGTile
@ main.c:188: 				hrt_ConfigBG(2, 0, 1, 0, 0, 0, 1, 0);
	.loc 1 188 0
	mov	r3, r8	@ tmp946, tmp946
	str	r2, [sp, #12]	@ tmp943,
	str	r3, [sp, #8]	@ tmp946,
	str	r2, [sp, #4]	@ tmp943,
	mov	r3, r9	@ tmp943, tmp943
	str	r2, [sp]	@ tmp943,
	mov	r1, r9	@, tmp943
	mov	r2, r8	@, tmp946
	movs	r0, #2	@,
	bl	.L147	@
.LVL44:
@ main.c:189: 				hrt_SetFXMode(0, //BG 0 Target 1
	.loc 1 189 0
	mov	r3, r8	@ tmp946, tmp946
	str	r3, [sp, #32]	@ tmp946,
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [sp, #28]	@ tmp943,
	str	r3, [sp, #24]	@ tmp943,
	mov	r3, r8	@ tmp946, tmp946
	str	r3, [sp, #20]	@ tmp946,
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [sp, #16]	@ tmp943,
	str	r3, [sp, #12]	@ tmp943,
	mov	r3, r8	@ tmp946, tmp946
	str	r3, [sp, #8]	@ tmp946,
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [sp, #4]	@ tmp943,
	mov	r3, r8	@ tmp946, tmp946
	mov	r2, r9	@, tmp943
	str	r3, [sp]	@ tmp946,
	mov	r1, r9	@, tmp943
	mov	r3, r9	@, tmp943
	mov	r0, r9	@, tmp943
	ldr	r6, .L134+28	@ tmp978,
	bl	.L146	@
.LVL45:
@ main.c:202: 				hrt_FillScreen(0x0000, 3);
	.loc 1 202 0
	movs	r1, #3	@,
	mov	r0, r9	@, tmp943
	ldr	r3, .L134+32	@ tmp979,
	bl	.L142	@
.LVL46:
@ main.c:203: 				hrt_LoadBGPal((void*)balls_Palette, 16);
	.loc 1 203 0
	movs	r1, #16	@,
	ldr	r0, .L134+36	@,
	ldr	r3, .L134+40	@ tmp981,
	bl	.L142	@
.LVL47:
@ main.c:204: 				hrt_LoadBGTiles((void*)balls_Tiles, 1088);
	.loc 1 204 0
	movs	r1, #136	@,
	ldr	r0, .L134+44	@,
	lsls	r1, r1, #3	@,,
	ldr	r3, .L134+48	@ tmp984,
	bl	.L142	@
.LVL48:
@ main.c:205: 				hrt_LoadBGMap((void*)balls_Map, 2048);
	.loc 1 205 0
	movs	r1, #128	@,
	ldr	r0, .L134+52	@,
	lsls	r1, r1, #4	@,,
	ldr	r3, .L134+56	@ tmp987,
	bl	.L142	@
.LVL49:
@ main.c:206: 				hrt_LoadOBJGFX((void*)busterTiles, 512); //loads Sprite Graphics
	.loc 1 206 0
	movs	r1, #128	@,
	ldr	r0, .L134+60	@,
	lsls	r1, r1, #2	@,,
	ldr	r3, .L134+64	@ tmp2104,
	bl	.L142	@
.LVL50:
@ main.c:207: 				hrt_LoadOBJPal((void*)busterPal, 16); //loads Sprite palette
	.loc 1 207 0
	movs	r1, #16	@,
	ldr	r0, .L134+68	@,
	ldr	r3, .L134+72	@ tmp2106,
	bl	.L142	@
.LVL51:
@ main.c:208: 				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 208 0
	movs	r3, #128	@ tmp993,
	mov	r2, r9	@ tmp943, tmp943
	lsls	r3, r3, #1	@ tmp993, tmp993,
	str	r3, [sp]	@ tmp993,
	str	r2, [sp, #4]	@ tmp943,
	ldr	r7, .L134+76	@ tmp1773,
	ldr	r6, .L134+80	@ tmp1774,
	ldr	r4, .L134+84	@ tmp1775,
	ldr	r2, [r7]	@, bgy
	ldr	r1, [r6]	@, bgx
	movs	r0, #2	@,
	bl	.L143	@
.LVL52:
@ main.c:209: 				hrt_CreateOBJ(0,   //Sprite ID
	.loc 1 209 0
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [sp, #40]	@ tmp943,
	str	r3, [sp, #36]	@ tmp943,
	mov	r3, r8	@ tmp946, tmp946
	str	r3, [sp, #32]	@ tmp946,
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [sp, #28]	@ tmp943,
	str	r3, [sp, #24]	@ tmp943,
	str	r3, [sp, #20]	@ tmp943,
	str	r3, [sp, #16]	@ tmp943,
	adds	r3, r3, #2	@ tmp1006,
	str	r3, [sp, #12]	@ tmp1006,
	mov	r3, r9	@ tmp943, tmp943
	mov	r2, r9	@, tmp943
	str	r3, [sp, #8]	@ tmp943,
	str	r3, [sp, #4]	@ tmp943,
	str	r3, [sp]	@ tmp943,
	mov	r1, r9	@, tmp943
	adds	r3, r3, #3	@,
	mov	r0, r9	@, tmp943
@ main.c:208: 				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 208 0
	mov	r10, r4	@ tmp1775, tmp1775
@ main.c:209: 				hrt_CreateOBJ(0,   //Sprite ID
	.loc 1 209 0
	ldr	r4, .L134+88	@ tmp2120,
	bl	.L143	@
.LVL53:
@ main.c:224: 				hrt_CopyOAM();
	.loc 1 224 0
	ldr	r3, .L134+92	@ tmp2122,
	bl	.L142	@
.LVL54:
@ main.c:225: 				frames = 0;
	.loc 1 225 0
	mov	r3, r9	@ tmp943, tmp943
	str	r3, [r5]	@ tmp943, frames
.LVL55:
	ldr	r3, .L134+96	@ tmp1746,
@ main.c:226: 				u8 g_EffectValueA = 0;
	.loc 1 226 0
	mov	r5, r9	@ g_EffectValueA, g_EffectIncrease
	mov	fp, r3	@ tmp1746, tmp1746
.LVL56:
.L29:
@ main.c:231: 					bgx++;
	.loc 1 231 0
	ldr	r3, [r6]	@ tmp2126, bgx
	adds	r1, r3, #1	@ _180, tmp2126,
@ main.c:232: 					bgy++;
	.loc 1 232 0
	ldr	r3, [r7]	@ tmp2127, bgy
	adds	r2, r3, #1	@ _182, tmp2127,
@ main.c:231: 					bgx++;
	.loc 1 231 0
	str	r1, [r6]	@ _180, bgx
@ main.c:232: 					bgy++;
	.loc 1 232 0
	str	r2, [r7]	@ _182, bgy
@ main.c:233: 					if (16 == g_EffectValueA) g_EffectIncrease = -1;
	.loc 1 233 0
	cmp	r5, #16	@ g_EffectValueA,
	beq	.L81	@,
.L128:
@ main.c:234: 					if (0 == g_EffectValueA) g_EffectIncrease = 1;
	.loc 1 234 0
	cmp	r5, #0	@ g_EffectValueA,
	beq	.LCB737	@
	b	.L127	@long jump	@
.LCB737:
	movs	r3, #1	@ g_EffectIncrease,
	movs	r4, #1	@ _632,
	mov	r9, r3	@ g_EffectIncrease, g_EffectIncrease
.LVL57:
.L30:
@ main.c:235: 					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 235 0
	movs	r3, #128	@ tmp1021,
	movs	r0, #0	@ tmp1022,
	lsls	r3, r3, #1	@ tmp1021, tmp1021,
	str	r0, [sp, #4]	@ tmp1022,
	str	r3, [sp]	@ tmp1021,
	adds	r0, r0, #2	@,
	bl	.L147	@
.LVL58:
@ main.c:236: 					hrt_VblankIntrWait();
	.loc 1 236 0
	ldr	r3, .L134+100	@ tmp2131,
	bl	.L142	@
.LVL59:
@ main.c:237: 					hrt_SetFXAlphaLevel(g_EffectValueA,             // Source intensity
	.loc 1 237 0
	movs	r1, #16	@ tmp1026,
	subs	r1, r1, r5	@ tmp1028, tmp1026, g_EffectValueA
	lsls	r1, r1, #24	@ tmp1030, tmp1028,
	movs	r0, r5	@, g_EffectValueA
	lsrs	r1, r1, #24	@ tmp1029, tmp1030,
	bl	.L148	@
.LVL60:
@ main.c:241: 					hrt_CopyOAM();
	.loc 1 241 0
	ldr	r3, .L134+92	@ tmp2133,
	bl	.L142	@
.LVL61:
@ main.c:242: 					if (keyDown(KEY_START))
	.loc 1 242 0
	ldr	r3, .L134+104	@ tmp1035,
@ main.c:239: 					g_EffectValueA += g_EffectIncrease;
	.loc 1 239 0
	adds	r5, r5, r4	@ tmp1032, g_EffectValueA, _632
.LVL62:
@ main.c:242: 					if (keyDown(KEY_START))
	.loc 1 242 0
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
@ main.c:239: 					g_EffectValueA += g_EffectIncrease;
	.loc 1 239 0
	lsls	r5, r5, #24	@ tmp1033, tmp1032,
	lsrs	r5, r5, #24	@ g_EffectValueA, tmp1033,
.LVL63:
@ main.c:242: 					if (keyDown(KEY_START))
	.loc 1 242 0
	lsls	r3, r3, #28	@ tmp1877, MEM[(volatile u16 *)67109168B],
	bmi	.L29	@,
@ main.c:244: 						asm volatile("swi 0x00"::);
	.loc 1 244 0
	.syntax divided
@ 244 "main.c" 1
	swi 0x00
@ 0 "" 2
@ main.c:231: 					bgx++;
	.loc 1 231 0
	.thumb
	.syntax unified
	ldr	r3, [r6]	@ tmp2126, bgx
	adds	r1, r3, #1	@ _180, tmp2126,
@ main.c:232: 					bgy++;
	.loc 1 232 0
	ldr	r3, [r7]	@ tmp2127, bgy
	adds	r2, r3, #1	@ _182, tmp2127,
@ main.c:231: 					bgx++;
	.loc 1 231 0
	str	r1, [r6]	@ _180, bgx
@ main.c:232: 					bgy++;
	.loc 1 232 0
	str	r2, [r7]	@ _182, bgy
@ main.c:233: 					if (16 == g_EffectValueA) g_EffectIncrease = -1;
	.loc 1 233 0
	cmp	r5, #16	@ g_EffectValueA,
	bne	.L128	@,
.L81:
	movs	r3, #1	@ g_EffectIncrease,
	rsbs	r3, r3, #0	@ g_EffectIncrease, g_EffectIncrease
	movs	r4, #255	@ _632,
	mov	r9, r3	@ g_EffectIncrease, g_EffectIncrease
.LVL64:
	b	.L30	@
.LVL65:
.L113:
.LBE2:
@ main.c:166: 				hrt_Suspend();
	.loc 1 166 0
	ldr	r3, .L134+108	@ tmp2009,
	bl	.L142	@
.LVL66:
.L24:
@ main.c:167: 				while (KEY_ANY_PRESSED);
	.loc 1 167 0 discriminator 1
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r2, fp	@ tmp503, tmp503
	mov	r9, r3	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r2, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	ip, r2	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r2, fp	@ tmp503, tmp503
	ldrh	r2, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r7, fp	@ tmp503, tmp503
	str	r2, [sp, #56]	@ MEM[(volatile u16 *)67109168B], %sfp
	mov	r2, fp	@ tmp503, tmp503
	ldrh	r4, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r0, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r1, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r2, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r7, [r7]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	str	r7, [sp, #64]	@ MEM[(volatile u16 *)67109168B], %sfp
	mov	r7, fp	@ tmp503, tmp503
	ldrh	r7, [r7]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	str	r2, [sp, #60]	@ MEM[(volatile u16 *)67109168B], %sfp
	str	r7, [sp, #68]	@ MEM[(volatile u16 *)67109168B], %sfp
	mov	r2, r9	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	movs	r7, #1	@ tmp809,
	bics	r7, r2	@ tmp809, MEM[(volatile u16 *)67109168B]
	mov	r9, r7	@ tmp809, tmp809
	movs	r7, #2	@ tmp813,
	bics	r7, r3	@ tmp813, MEM[(volatile u16 *)67109168B]
	movs	r3, r7	@ tmp813, tmp813
	mov	r2, r9	@ tmp809, tmp809
	movs	r7, #128	@ tmp816,
	orrs	r3, r2	@ tmp814, tmp809
	mov	r2, ip	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r7, r7, #2	@ tmp816, tmp816,
	bics	r7, r2	@ tmp816, MEM[(volatile u16 *)67109168B]
	orrs	r3, r7	@ tmp818, tmp816
	movs	r7, #128	@ tmp820,
	ldr	r2, [sp, #56]	@ MEM[(volatile u16 *)67109168B], %sfp
	lsls	r7, r7, #1	@ tmp820, tmp820,
	bics	r7, r2	@ tmp820, MEM[(volatile u16 *)67109168B]
	orrs	r3, r7	@ tmp822, tmp820
	movs	r7, #4	@ tmp825,
	bics	r7, r4	@ tmp825, MEM[(volatile u16 *)67109168B]
	movs	r4, #8	@ tmp829,
	bics	r4, r0	@ tmp829, MEM[(volatile u16 *)67109168B]
	movs	r0, #64	@ tmp833,
	bics	r0, r1	@ tmp833, MEM[(volatile u16 *)67109168B]
	movs	r1, #128	@ tmp836,
	ldr	r2, [sp, #60]	@ MEM[(volatile u16 *)67109168B], %sfp
	bics	r1, r2	@ tmp837, MEM[(volatile u16 *)67109168B]
	movs	r2, #32	@ tmp840,
	orrs	r3, r7	@ tmp826, tmp825
	orrs	r3, r4	@ tmp830, tmp829
	ldr	r7, [sp, #64]	@ MEM[(volatile u16 *)67109168B], %sfp
	orrs	r3, r0	@ tmp834, tmp833
	bics	r2, r7	@ tmp841, MEM[(volatile u16 *)67109168B]
	orrs	r3, r1	@ tmp838, tmp837
	orrs	r3, r2	@ tmp842, tmp841
	movs	r2, #16	@ tmp844,
	ldr	r7, [sp, #68]	@ MEM[(volatile u16 *)67109168B], %sfp
	bics	r2, r7	@ tmp845, MEM[(volatile u16 *)67109168B]
	orrs	r3, r2	@ tmp846, tmp845
	bne	.L24	@,
.L25:
@ main.c:168: 				while (!(KEY_ANY_PRESSED));
	.loc 1 168 0 discriminator 1
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r2, fp	@ tmp503, tmp503
	mov	r9, r3	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r3, fp	@ tmp503, tmp503
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r2, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	ip, r2	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r2, fp	@ tmp503, tmp503
	ldrh	r2, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	mov	r7, fp	@ tmp503, tmp503
	str	r2, [sp, #56]	@ MEM[(volatile u16 *)67109168B], %sfp
	mov	r2, fp	@ tmp503, tmp503
	ldrh	r4, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r0, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r1, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r2, [r2]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldrh	r7, [r7]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	str	r7, [sp, #64]	@ MEM[(volatile u16 *)67109168B], %sfp
	mov	r7, fp	@ tmp503, tmp503
	ldrh	r7, [r7]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	str	r2, [sp, #60]	@ MEM[(volatile u16 *)67109168B], %sfp
	str	r7, [sp, #68]	@ MEM[(volatile u16 *)67109168B], %sfp
	mov	r2, r9	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	movs	r7, #1	@ tmp893,
	bics	r7, r2	@ tmp893, MEM[(volatile u16 *)67109168B]
	mov	r9, r7	@ tmp893, tmp893
	movs	r7, #2	@ tmp897,
	bics	r7, r3	@ tmp897, MEM[(volatile u16 *)67109168B]
	movs	r3, r7	@ tmp897, tmp897
	mov	r2, r9	@ tmp893, tmp893
	movs	r7, #128	@ tmp900,
	orrs	r3, r2	@ tmp898, tmp893
	mov	r2, ip	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r7, r7, #2	@ tmp900, tmp900,
	bics	r7, r2	@ tmp900, MEM[(volatile u16 *)67109168B]
	orrs	r3, r7	@ tmp902, tmp900
	movs	r7, #128	@ tmp904,
	ldr	r2, [sp, #56]	@ MEM[(volatile u16 *)67109168B], %sfp
	lsls	r7, r7, #1	@ tmp904, tmp904,
	bics	r7, r2	@ tmp904, MEM[(volatile u16 *)67109168B]
	orrs	r3, r7	@ tmp906, tmp904
	movs	r7, #4	@ tmp909,
	bics	r7, r4	@ tmp909, MEM[(volatile u16 *)67109168B]
	movs	r4, #8	@ tmp913,
	bics	r4, r0	@ tmp913, MEM[(volatile u16 *)67109168B]
	movs	r0, #64	@ tmp917,
	bics	r0, r1	@ tmp917, MEM[(volatile u16 *)67109168B]
	movs	r1, #128	@ tmp920,
	ldr	r2, [sp, #60]	@ MEM[(volatile u16 *)67109168B], %sfp
	bics	r1, r2	@ tmp921, MEM[(volatile u16 *)67109168B]
	movs	r2, #32	@ tmp924,
	orrs	r3, r7	@ tmp910, tmp909
	orrs	r3, r4	@ tmp914, tmp913
	ldr	r7, [sp, #64]	@ MEM[(volatile u16 *)67109168B], %sfp
	orrs	r3, r0	@ tmp918, tmp917
	bics	r2, r7	@ tmp925, MEM[(volatile u16 *)67109168B]
	orrs	r3, r1	@ tmp922, tmp921
	orrs	r3, r2	@ tmp926, tmp925
	movs	r2, #16	@ tmp928,
	ldr	r7, [sp, #68]	@ MEM[(volatile u16 *)67109168B], %sfp
	bics	r2, r7	@ tmp929, MEM[(volatile u16 *)67109168B]
	orrs	r3, r2	@ tmp930, tmp929
	beq	.L25	@,
@ main.c:169: 				hrt_Suspend();
	.loc 1 169 0
	ldr	r3, .L134+108	@ tmp2065,
	bl	.L142	@
.LVL67:
	mov	r3, r8	@ tmp1780, tmp1780
	ldr	r7, [r3]	@ arpos.9_27, arpos
@ main.c:171: 			if (arpos == 12)
	.loc 1 171 0
	cmp	r7, #12	@ arpos.9_27,
	beq	.LCB1042	@
	b	.L26	@long jump	@
.LCB1042:
.L114:
@ main.c:173: 				hrt_AGBPrint("Hello. This is a test for AGBPrint in HeartLib. Kudos to DevKitPro for getting this function.");
	.loc 1 173 0
	ldr	r3, .L134+112	@ tmp2068,
	ldr	r0, .L134+116	@,
	bl	.L142	@
.LVL68:
	mov	r3, r8	@ tmp1780, tmp1780
	ldr	r7, [r3]	@ arpos.9_27, arpos
	b	.L26	@
.L112:
@ main.c:162: 				hrt_EZ4Exit();
	.loc 1 162 0
	ldr	r3, .L134+120	@ tmp2006,
	bl	.L142	@
.LVL69:
	mov	r3, r8	@ tmp1780, tmp1780
	ldr	r7, [r3]	@ arpos.9_27, arpos
	b	.L22	@
.L111:
@ main.c:158: 				hrt_ColdReset();
	.loc 1 158 0
	ldr	r3, .L134+124	@ tmp2003,
	bl	.L142	@
.LVL70:
	mov	r3, r8	@ tmp1780, tmp1780
	ldr	r7, [r3]	@ arpos.9_27, arpos
	b	.L21	@
.L135:
	.align	2
.L134:
	.word	hrt_FillPalette
	.word	hrt_SetDSPMode
	.word	hrt_offsetOAMData
	.word	hrt_offsetOAMPal
	.word	hrt_offsetBGMap
	.word	hrt_offsetBGPal
	.word	hrt_offsetBGTile
	.word	hrt_SetFXMode
	.word	hrt_FillScreen
	.word	balls_Palette
	.word	hrt_LoadBGPal
	.word	balls_Tiles
	.word	hrt_LoadBGTiles
	.word	balls_Map
	.word	hrt_LoadBGMap
	.word	busterTiles
	.word	hrt_LoadOBJGFX
	.word	busterPal
	.word	hrt_LoadOBJPal
	.word	bgy
	.word	bgx
	.word	hrt_EditBG
	.word	hrt_CreateOBJ
	.word	hrt_CopyOAM
	.word	hrt_SetFXAlphaLevel
	.word	hrt_VblankIntrWait
	.word	67109168
	.word	hrt_Suspend
	.word	hrt_AGBPrint
	.word	.LC72
	.word	hrt_EZ4Exit
	.word	hrt_ColdReset
.L110:
@ main.c:113: 				hrt_offsetOAMData = 0;
	.loc 1 113 0
	ldr	r3, .L136	@ tmp574,
	str	r4, [r3]	@ tmp571, hrt_offsetOAMData
@ main.c:114: 				hrt_ConfigBG(2, 0, 1, 0, 1, 0, 0, 0);
	.loc 1 114 0
	mov	r3, r9	@ tmp567, tmp567
	str	r3, [sp]	@ tmp567,
	movs	r3, #0	@,
	mov	r2, r9	@, tmp567
	movs	r1, r3	@,
	str	r4, [sp, #12]	@ tmp571,
	str	r4, [sp, #8]	@ tmp571,
	str	r4, [sp, #4]	@ tmp571,
	movs	r0, #2	@,
	bl	.L147	@
.LVL71:
@ main.c:115: 				hrt_ConfigBG(3, 0, 2, 0, 1, 1, 0, 0);
	.loc 1 115 0
	mov	r3, r9	@ tmp567, tmp567
	str	r3, [sp, #4]	@ tmp567,
	str	r3, [sp]	@ tmp567,
	movs	r3, #0	@,
	str	r4, [sp, #12]	@ tmp571,
	movs	r1, r3	@,
	str	r4, [sp, #8]	@ tmp571,
	movs	r2, #2	@,
	movs	r0, #3	@,
	bl	.L147	@
.LVL72:
@ main.c:116: 				hrt_SetDSPMode(0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0);
	.loc 1 116 0
	mov	r3, r9	@ tmp567, tmp567
	str	r3, [sp, #20]	@ tmp567,
	str	r3, [sp, #16]	@ tmp567,
	movs	r3, #0	@,
	str	r4, [sp, #36]	@ tmp571,
	movs	r2, r3	@,
	movs	r1, r3	@, tmp2
	movs	r0, r3	@, tmp1
	str	r4, [sp, #32]	@ tmp571,
	str	r4, [sp, #28]	@ tmp571,
	str	r4, [sp, #24]	@ tmp571,
	str	r4, [sp, #12]	@ tmp571,
	str	r4, [sp, #8]	@ tmp571,
	str	r4, [sp, #4]	@ tmp571,
	str	r4, [sp]	@ tmp571,
	ldr	r6, .L136+4	@ tmp1973,
	bl	.L146	@
.LVL73:
@ main.c:117: 				hrt_LoadBGPal((void*)master_Palette, 255);
	.loc 1 117 0
	ldr	r3, .L136+8	@ tmp598,
	movs	r1, #255	@,
	ldr	r0, .L136+12	@,
	bl	.L142	@
.LVL74:
@ main.c:118: 				hrt_LoadBGTiles((void*)l1_Tiles, 1664);
	.loc 1 118 0
	movs	r1, #208	@,
	ldr	r6, .L136+16	@ tmp601,
	lsls	r1, r1, #3	@,,
	ldr	r0, .L136+20	@,
	bl	.L146	@
.LVL75:
@ main.c:119: 				hrt_offsetBGTile = 0x2000;
	.loc 1 119 0
	movs	r2, #128	@ tmp603,
@ main.c:120: 				hrt_LoadBGTiles((void*)l2_Tiles, 1664);
	.loc 1 120 0
	movs	r1, #208	@,
@ main.c:119: 				hrt_offsetBGTile = 0x2000;
	.loc 1 119 0
	ldr	r3, .L136+24	@ tmp602,
	lsls	r2, r2, #6	@ tmp603, tmp603,
@ main.c:120: 				hrt_LoadBGTiles((void*)l2_Tiles, 1664);
	.loc 1 120 0
	lsls	r1, r1, #3	@,,
	ldr	r0, .L136+28	@,
@ main.c:119: 				hrt_offsetBGTile = 0x2000;
	.loc 1 119 0
	str	r2, [r3]	@ tmp603, hrt_offsetBGTile
@ main.c:120: 				hrt_LoadBGTiles((void*)l2_Tiles, 1664);
	.loc 1 120 0
	bl	.L146	@
.LVL76:
@ main.c:121: 				hrt_LoadBGMap((void*)l1_Map, 1024);
	.loc 1 121 0
	movs	r1, #128	@,
	ldr	r6, .L136+32	@ tmp609,
	lsls	r1, r1, #3	@,,
	ldr	r0, .L136+36	@,
	bl	.L146	@
.LVL77:
@ main.c:122: 				hrt_LoadBGMap((void*)l2_Map, 1024);
	.loc 1 122 0
	movs	r1, #128	@,
	ldr	r0, .L136+40	@,
	lsls	r1, r1, #3	@,,
	bl	.L146	@
.LVL78:
@ main.c:123: 				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 123 0
	movs	r3, #128	@ tmp613,
	lsls	r3, r3, #1	@ tmp613, tmp613,
	mov	r8, r3	@ tmp613, tmp613
	ldr	r6, .L136+44	@ tmp1774,
	str	r4, [sp, #4]	@ tmp571,
	str	r3, [sp]	@ tmp613,
	ldr	r7, .L136+48	@ tmp1773,
	ldr	r1, [r6]	@, bgx
	ldr	r2, [r7]	@, bgy
	str	r6, [sp, #52]	@ tmp1774, %sfp
.LVL79:
	movs	r0, #2	@,
	ldr	r6, .L136+52	@ tmp1775,
	bl	.L146	@
.LVL80:
@ main.c:124: 				hrt_EditBG(3, bgx/2, bgy/2, 256, 256, 0);
	.loc 1 124 0
	ldr	r3, [r7]	@ bgy, bgy
@ main.c:123: 				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 123 0
	mov	r10, r6	@ tmp1775, tmp1775
@ main.c:124: 				hrt_EditBG(3, bgx/2, bgy/2, 256, 256, 0);
	.loc 1 124 0
	ldr	r6, [sp, #52]	@ tmp1774, %sfp
	lsrs	r2, r3, #31	@ tmp623, bgy,
	adds	r2, r2, r3	@ tmp624, tmp623, bgy
	ldr	r3, [r6]	@ bgx, bgx
	lsrs	r1, r3, #31	@ tmp629, bgx,
	adds	r1, r1, r3	@ tmp630, tmp629, bgx
	mov	r3, r8	@ tmp613, tmp613
	asrs	r2, r2, #1	@ tmp625, tmp624,
	asrs	r1, r1, #1	@ tmp631, tmp630,
	str	r4, [sp, #4]	@ tmp571,
	str	r3, [sp]	@ tmp613,
	movs	r0, #3	@,
	bl	.L147	@
.LVL81:
@ main.c:125: 				hrt_VblankIntrWait();
	.loc 1 125 0
	ldr	r3, .L136+56	@ tmp1979,
	bl	.L142	@
.LVL82:
@ main.c:130: 					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 130 0
	movs	r3, #0	@ tmp646,
@ main.c:132: 					if (keyDown(KEY_LEFT))
	.loc 1 132 0
	mov	fp, r6	@ tmp1774, tmp1774
@ main.c:130: 					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 130 0
	mov	r9, r3	@ tmp646, tmp646
@ main.c:132: 					if (keyDown(KEY_LEFT))
	.loc 1 132 0
	ldr	r4, .L136+60	@ tmp665,
.L20:
@ main.c:130: 					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 130 0
	movs	r3, #128	@ tmp641,
	lsls	r3, r3, #1	@ tmp641, tmp641,
	mov	r8, r3	@ tmp641, tmp641
	mov	r6, fp	@ tmp1774, tmp1774
.L13:
@ main.c:128: 					frames++;
	.loc 1 128 0
	ldr	r3, [r5]	@ tmp1983, frames
	adds	r3, r3, #1	@ tmp638,
	str	r3, [r5]	@ tmp638, frames
@ main.c:129: 					hrt_VblankIntrWait();
	.loc 1 129 0
	ldr	r3, .L136+56	@ tmp1984,
	bl	.L142	@
.LVL83:
@ main.c:130: 					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 130 0
	mov	r3, r9	@ tmp646, tmp646
	ldr	r2, [r7]	@ bgy, bgy
	ldr	r1, [r6]	@ bgx, bgx
	str	r3, [sp, #4]	@ tmp646,
	mov	r3, r8	@ tmp641, tmp641
	str	r3, [sp]	@ tmp641,
	movs	r3, #128	@,
	movs	r0, #2	@,
	lsls	r3, r3, #1	@,,
	bl	.L147	@
.LVL84:
@ main.c:131: 					hrt_EditBG(3, bgx / 2, bgy / 2, 256, 256, 0);
	.loc 1 131 0
	ldr	r3, [r7]	@ bgy, bgy
	lsrs	r2, r3, #31	@ tmp653, bgy,
	adds	r2, r2, r3	@ tmp654, tmp653, bgy
	ldr	r3, [r6]	@ bgx, bgx
	lsrs	r1, r3, #31	@ tmp659, bgx,
	adds	r1, r1, r3	@ tmp660, tmp659, bgx
	mov	r3, r9	@ tmp646, tmp646
	str	r3, [sp, #4]	@ tmp646,
	mov	r3, r8	@ tmp641, tmp641
	str	r3, [sp]	@ tmp641,
	movs	r3, #128	@,
	asrs	r2, r2, #1	@ tmp655, tmp654,
	lsls	r3, r3, #1	@,,
	asrs	r1, r1, #1	@ tmp661, tmp660,
	movs	r0, #3	@,
	bl	.L147	@
.LVL85:
@ main.c:132: 					if (keyDown(KEY_LEFT))
	.loc 1 132 0
	ldrh	r3, [r4]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #26	@ tmp1871, MEM[(volatile u16 *)67109168B],
	bmi	.L14	@,
@ main.c:134: 						bgx--;
	.loc 1 134 0
	ldr	r3, [r6]	@ tmp1990, bgx
	subs	r3, r3, #1	@ tmp678,
	str	r3, [r6]	@ tmp678, bgx
.L14:
@ main.c:136: 					if (keyDown(KEY_RIGHT))
	.loc 1 136 0
	ldrh	r3, [r4]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #27	@ tmp1872, MEM[(volatile u16 *)67109168B],
	bmi	.L15	@,
@ main.c:138: 						bgx++;
	.loc 1 138 0
	ldr	r3, [r6]	@ tmp1991, bgx
	adds	r3, r3, #1	@ tmp693,
	str	r3, [r6]	@ tmp693, bgx
.L15:
@ main.c:140: 					if (keyDown(KEY_UP))
	.loc 1 140 0
	ldrh	r3, [r4]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #25	@ tmp1873, MEM[(volatile u16 *)67109168B],
	bmi	.L16	@,
@ main.c:142: 						bgy--;
	.loc 1 142 0
	ldr	r3, [r7]	@ tmp1992, bgy
	subs	r3, r3, #1	@ tmp708,
	str	r3, [r7]	@ tmp708, bgy
.L16:
@ main.c:144: 					if (keyDown(KEY_DOWN))
	.loc 1 144 0
	ldrh	r3, [r4]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #24	@ tmp1874, MEM[(volatile u16 *)67109168B],
	bmi	.L17	@,
@ main.c:146: 						bgy++;
	.loc 1 146 0
	ldr	r3, [r7]	@ tmp1993, bgy
	adds	r3, r3, #1	@ tmp723,
	str	r3, [r7]	@ tmp723, bgy
@ main.c:148: 					if (keyDown(KEY_START))
	.loc 1 148 0
	ldrh	r3, [r4]	@ MEM[(volatile u16 *)67109168B],
	lsls	r3, r3, #28	@ tmp1875, MEM[(volatile u16 *)67109168B],
	bmi	.L13	@,
.L106:
@ main.c:150: 						hrt_SetDSPMode(4, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
	.loc 1 150 0
	mov	r3, r9	@ tmp646, tmp646
	mov	r2, r9	@ tmp646, tmp646
	str	r3, [sp, #36]	@ tmp646,
	str	r3, [sp, #32]	@ tmp646,
	str	r3, [sp, #28]	@ tmp646,
	movs	r3, #1	@ tmp750,
	str	r2, [sp, #20]	@ tmp646,
	str	r3, [sp, #24]	@ tmp750,
	str	r3, [sp, #16]	@ tmp750,
	str	r2, [sp, #12]	@ tmp646,
	str	r2, [sp, #8]	@ tmp646,
	str	r2, [sp, #4]	@ tmp646,
	str	r3, [sp]	@ tmp750,
	mov	fp, r6	@ tmp1774, tmp1774
	movs	r3, #0	@,
	movs	r2, #0	@,
	movs	r1, #0	@,
	movs	r0, #4	@,
	ldr	r6, .L136+4	@ tmp2001,
	bl	.L146	@
.LVL86:
@ main.c:151: 						asm volatile("swi 0x01"::);
	.loc 1 151 0
	.syntax divided
@ 151 "main.c" 1
	swi 0x01
@ 0 "" 2
@ main.c:152: 						asm volatile("swi 0x00"::);
	.loc 1 152 0
@ 152 "main.c" 1
	swi 0x00
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L20	@
.L17:
@ main.c:148: 					if (keyDown(KEY_START))
	.loc 1 148 0
	ldrh	r3, [r4]	@ MEM[(volatile u16 *)67109168B],
	lsls	r3, r3, #28	@ tmp1876, MEM[(volatile u16 *)67109168B],
	bmi	.L13	@,
	b	.L106	@
.LVL87:
.L35:
@ main.c:269: 					hrt_DrawPixel(3, 121, 81, 0x07FF);
	.loc 1 269 0
	ldr	r3, .L136+64	@,
	movs	r2, #81	@,
	movs	r1, #121	@,
	movs	r0, #3	@,
	ldr	r4, .L136+68	@ tmp2146,
	bl	.L143	@
.LVL88:
	b	.L107	@
.L117:
@ main.c:250: 				hrt_FillScreen(0xFFFF, 3); //Fills Screen with white in mode 3.
	.loc 1 250 0
	movs	r1, #3	@,
	ldr	r0, .L136+72	@,
	ldr	r3, .L136+76	@ tmp1047,
	bl	.L142	@
.LVL89:
@ main.c:251: 				hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0); //Sets REG_DISPCNT, like above
	.loc 1 251 0
	movs	r1, #0	@ tmp1048,
	movs	r3, #1	@ tmp1053,
	ldr	r4, .L136+4	@ tmp2135,
	str	r3, [sp, #16]	@ tmp1053,
	str	r3, [sp]	@ tmp1053,
	str	r1, [sp, #36]	@ tmp1048,
	movs	r3, r1	@, tmp1048
	str	r1, [sp, #32]	@ tmp1048,
	str	r1, [sp, #28]	@ tmp1048,
	str	r1, [sp, #24]	@ tmp1048,
	str	r1, [sp, #20]	@ tmp1048,
	str	r1, [sp, #12]	@ tmp1048,
	str	r1, [sp, #8]	@ tmp1048,
	str	r1, [sp, #4]	@ tmp1048,
	movs	r2, r1	@, tmp1048
	movs	r0, #3	@,
	bl	.L143	@
.LVL90:
	ldr	r3, .L136+80	@ tmp1747,
	mov	fp, r3	@ tmp1747, tmp1747
	ldr	r3, .L136+84	@ tmp1748,
	mov	r10, r3	@ tmp1748, tmp1748
	ldr	r3, .L136+88	@ tmp1749,
	mov	r9, r3	@ tmp1749, tmp1749
	ldr	r3, .L136+92	@ tmp1757,
	mov	r8, r3	@ tmp1757, tmp1757
	ldr	r7, .L136+96	@ tmp1758,
	ldr	r6, .L136+100	@ tmp1759,
	ldr	r5, .L136+104	@ tmp1760,
	ldr	r4, .L136+108	@ tmp1761,
.L33:
@ main.c:254: 					hrt_ScanLines(0x0000, 1, 3);
	.loc 1 254 0 discriminator 1
	movs	r2, #3	@,
	movs	r1, #1	@,
	movs	r0, #0	@,
	bl	.L148	@
.LVL91:
@ main.c:255: 					hrt_LeftWipe(RED, 1, 3);
	.loc 1 255 0 discriminator 1
	movs	r2, #3	@,
	movs	r1, #1	@,
	movs	r0, #31	@,
	bl	.L147	@
.LVL92:
@ main.c:256: 					hrt_RightWipe(BLUE, 1, 3);
	.loc 1 256 0 discriminator 1
	movs	r0, #248	@,
	movs	r2, #3	@,
	movs	r1, #1	@,
	lsls	r0, r0, #7	@,,
	bl	.L149	@
.LVL93:
@ main.c:257: 					hrt_BottomWipe(BROWN, 1, 3);
	.loc 1 257 0 discriminator 1
	movs	r0, #136	@,
	movs	r2, #3	@,
	movs	r1, #1	@,
	lsls	r0, r0, #1	@,,
	bl	.L150	@
.LVL94:
@ main.c:258: 					hrt_TopWipe(GREEN, 1, 3);
	.loc 1 258 0 discriminator 1
	movs	r0, #248	@,
	movs	r2, #3	@,
	movs	r1, #1	@,
	lsls	r0, r0, #2	@,,
	bl	.L145	@
.LVL95:
@ main.c:259: 					hrt_CoolScanLines(MAGENTA, 1, 3);
	.loc 1 259 0 discriminator 1
	movs	r2, #3	@,
	movs	r1, #1	@,
	ldr	r0, .L136+112	@,
	bl	.L146	@
.LVL96:
@ main.c:260: 					hrt_CircleWipe(ORANGE, 1, 3);
	.loc 1 260 0 discriminator 1
	movs	r2, #3	@,
	movs	r1, #1	@,
	ldr	r0, .L136+116	@,
	bl	.L144	@
.LVL97:
@ main.c:261: 					hrt_LineWipe(CYAN, 0, 3);
	.loc 1 261 0 discriminator 1
	movs	r2, #3	@,
	movs	r1, #0	@,
	ldr	r0, .L136+120	@,
	bl	.L143	@
.LVL98:
	b	.L33	@
.LVL99:
.L127:
	mov	r3, r9	@ g_EffectIncrease, g_EffectIncrease
	lsls	r4, r3, #24	@ tmp1020, g_EffectIncrease,
	lsrs	r4, r4, #24	@ _632, tmp1020,
	b	.L30	@
.LVL100:
.L126:
@ main.c:485: 				hrt_FillScreen(0x0000, 3);
	.loc 1 485 0
	movs	r1, #3	@,
	movs	r0, #0	@,
	ldr	r3, .L136+76	@ tmp1618,
	bl	.L142	@
.LVL101:
@ main.c:486: 				sprintf((char*)buf, "%d", g_sram);
	.loc 1 486 0
	ldr	r3, .L136+124	@ tmp1753,
	mov	r8, r3	@ tmp1753, tmp1753
	ldr	r3, .L136+128	@ tmp1755,
	mov	r9, r3	@ tmp1755, tmp1755
	mov	r3, r8	@ tmp1753, tmp1753
	ldr	r4, .L136+132	@ tmp1754,
	ldr	r2, [r3]	@, g_sram
	movs	r1, r4	@, tmp1754
	ldr	r3, .L136+136	@ tmp2271,
	mov	r0, r9	@, tmp1755
	bl	.L142	@
.LVL102:
@ main.c:487: 				hrt_PrintOnBitmap(0, 0, (char*)buf);
	.loc 1 487 0
	movs	r1, #0	@,
	mov	r2, r9	@, tmp1755
	movs	r0, r1	@,
	ldr	r3, .L136+140	@ tmp2273,
	bl	.L142	@
.LVL103:
@ main.c:488: 				hrt_SetDSPMode(3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
	.loc 1 488 0
	movs	r1, #0	@ tmp1625,
	movs	r3, #1	@ tmp1630,
	ldr	r5, .L136+4	@ tmp2275,
	str	r3, [sp, #16]	@ tmp1630,
	str	r1, [sp, #36]	@ tmp1625,
	movs	r3, r1	@, tmp1625
	str	r1, [sp, #32]	@ tmp1625,
	str	r1, [sp, #28]	@ tmp1625,
	str	r1, [sp, #24]	@ tmp1625,
	str	r1, [sp, #20]	@ tmp1625,
	str	r1, [sp, #12]	@ tmp1625,
	str	r1, [sp, #8]	@ tmp1625,
	str	r1, [sp, #4]	@ tmp1625,
	str	r1, [sp]	@ tmp1625,
	movs	r2, r1	@, tmp1625
	movs	r0, #3	@,
	bl	.L144	@
.LVL104:
	ldr	r3, .L136+144	@ tmp1766,
	ldr	r7, .L136+148	@ tmp1767,
	mov	fp, r3	@ tmp1766, tmp1766
@ main.c:495: 					if (keyDown(KEY_UP))
	.loc 1 495 0
	ldr	r5, .L136+60	@ tmp1652,
	b	.L79	@
.L74:
@ main.c:503: 					if (keyDown(KEY_DOWN))
	.loc 1 503 0
	ldrh	r3, [r5]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #24	@ tmp1897, MEM[(volatile u16 *)67109168B],
	bpl	.L129	@,
.L76:
@ main.c:511: 					if (keyDown(KEY_START))
	.loc 1 511 0
	ldrh	r3, [r5]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #28	@ tmp1898, MEM[(volatile u16 *)67109168B],
	bmi	.L78	@,
@ main.c:513: 						asm volatile("swi 0x00"::);
	.loc 1 513 0
	.syntax divided
@ 513 "main.c" 1
	swi 0x00
@ 0 "" 2
	.thumb
	.syntax unified
.L78:
@ main.c:515: 					hrt_VblankIntrWait();
	.loc 1 515 0
	ldr	r3, .L136+56	@ tmp2304,
	bl	.L142	@
.LVL105:
.L79:
@ main.c:491: 					hrt_SaveByte(0x00, p[0]);
	.loc 1 491 0
	ldr	r3, [r6]	@ tmp2278, p
	movs	r0, #0	@,
	ldrb	r1, [r3]	@ *p.85_285, *p.85_285
	bl	.L145	@
.LVL106:
@ main.c:492: 					hrt_SaveByte(0x01, p[1]);
	.loc 1 492 0
	ldr	r3, [r6]	@ tmp2279, p
	movs	r0, #1	@,
	ldrb	r1, [r3, #1]	@ MEM[(unsigned char *)p.86_287 + 1B], MEM[(unsigned char *)p.86_287 + 1B]
	bl	.L145	@
.LVL107:
@ main.c:493: 					hrt_SaveByte(0x02, p[2]);
	.loc 1 493 0
	ldr	r3, [r6]	@ tmp2280, p
	movs	r0, #2	@,
	ldrb	r1, [r3, #2]	@ MEM[(unsigned char *)p.87_289 + 2B], MEM[(unsigned char *)p.87_289 + 2B]
	bl	.L145	@
.LVL108:
@ main.c:494: 					hrt_SaveByte(0x03, p[3]);
	.loc 1 494 0
	ldr	r3, [r6]	@ tmp2281, p
	movs	r0, #3	@,
	ldrb	r1, [r3, #3]	@ MEM[(unsigned char *)p.88_291 + 3B], MEM[(unsigned char *)p.88_291 + 3B]
	bl	.L145	@
.LVL109:
@ main.c:495: 					if (keyDown(KEY_UP))
	.loc 1 495 0
	ldrh	r3, [r5]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #25	@ tmp1896, MEM[(volatile u16 *)67109168B],
	bmi	.L74	@,
@ main.c:497: 						g_sram++;
	.loc 1 497 0
	mov	r3, r8	@ tmp1753, tmp1753
	mov	r2, r8	@ tmp1753, tmp1753
	ldr	r3, [r3]	@ tmp2283, g_sram
	adds	r3, r3, #1	@ tmp1665,
	str	r3, [r2]	@ tmp1665, g_sram
@ main.c:498: 						hrt_Memcpy(VRAM, (char*)0x06000ED0, 240 * 16);
	.loc 1 498 0
	mov	r3, fp	@ tmp1766, tmp1766
	movs	r2, #240	@,
	ldr	r1, .L136+152	@,
	lsls	r2, r2, #4	@,,
	ldr	r0, [r3]	@, VRAM
	ldr	r3, .L136+156	@ tmp2286,
	bl	.L142	@
.LVL110:
@ main.c:499: 						sprintf((char*)buf, "%d", g_sram);
	.loc 1 499 0
	mov	r3, r8	@ tmp1753, tmp1753
	movs	r1, r4	@, tmp1754
	ldr	r2, [r3]	@, g_sram
	mov	r0, r9	@, tmp1755
	ldr	r3, .L136+136	@ tmp2289,
	bl	.L142	@
.LVL111:
@ main.c:500: 						hrt_PrintOnBitmap(0, 0, (char*)buf);
	.loc 1 500 0
	mov	r2, r9	@, tmp1755
	movs	r1, #0	@,
	movs	r0, #0	@,
	ldr	r3, .L136+140	@ tmp2291,
	bl	.L142	@
.LVL112:
@ main.c:501: 						while(keyDown(KEY_UP));
	.loc 1 501 0
	movs	r2, #64	@ tmp1686,
.L75:
@ main.c:501: 						while(keyDown(KEY_UP));
	.loc 1 501 0 is_stmt 0 discriminator 1
	ldrh	r3, [r5]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	tst	r2, r3	@ tmp1686, MEM[(volatile u16 *)67109168B]
	beq	.L75	@,
@ main.c:503: 					if (keyDown(KEY_DOWN))
	.loc 1 503 0 is_stmt 1
	ldrh	r3, [r5]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #24	@ tmp1897, MEM[(volatile u16 *)67109168B],
	bmi	.L76	@,
.L129:
@ main.c:505: 						g_sram--;
	.loc 1 505 0
	mov	r3, r8	@ tmp1753, tmp1753
	mov	r2, r8	@ tmp1753, tmp1753
	ldr	r3, [r3]	@ tmp2294, g_sram
	subs	r3, r3, #1	@ tmp1703,
	str	r3, [r2]	@ tmp1703, g_sram
@ main.c:506: 						hrt_Memcpy(VRAM, (char*)0x06000ED0, 240 * 16);
	.loc 1 506 0
	mov	r3, fp	@ tmp1766, tmp1766
	movs	r2, #240	@,
	ldr	r1, .L136+152	@,
	lsls	r2, r2, #4	@,,
	ldr	r0, [r3]	@, VRAM
	ldr	r3, .L136+156	@ tmp2297,
	bl	.L142	@
.LVL113:
@ main.c:507: 						sprintf((char*)buf, "%d", g_sram);
	.loc 1 507 0
	mov	r3, r8	@ tmp1753, tmp1753
	movs	r1, r4	@, tmp1754
	ldr	r2, [r3]	@, g_sram
	mov	r0, r9	@, tmp1755
	ldr	r3, .L136+136	@ tmp2300,
	bl	.L142	@
.LVL114:
@ main.c:508: 						hrt_PrintOnBitmap(0, 0, (char*)buf);
	.loc 1 508 0
	mov	r2, r9	@, tmp1755
	movs	r1, #0	@,
	movs	r0, #0	@,
	ldr	r3, .L136+140	@ tmp2302,
	bl	.L142	@
.LVL115:
@ main.c:509: 						while (keyDown(KEY_DOWN));
	.loc 1 509 0
	movs	r2, #128	@ tmp1724,
.L77:
@ main.c:509: 						while (keyDown(KEY_DOWN));
	.loc 1 509 0 is_stmt 0 discriminator 1
	ldrh	r3, [r5]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	tst	r2, r3	@ tmp1724, MEM[(volatile u16 *)67109168B]
	beq	.L77	@,
	b	.L76	@
.L137:
	.align	2
.L136:
	.word	hrt_offsetOAMData
	.word	hrt_SetDSPMode
	.word	hrt_LoadBGPal
	.word	master_Palette
	.word	hrt_LoadBGTiles
	.word	l1_Tiles
	.word	hrt_offsetBGTile
	.word	l2_Tiles
	.word	hrt_LoadBGMap
	.word	l1_Map
	.word	l2_Map
	.word	bgx
	.word	bgy
	.word	hrt_EditBG
	.word	hrt_VblankIntrWait
	.word	67109168
	.word	2047
	.word	hrt_DrawPixel
	.word	65535
	.word	hrt_FillScreen
	.word	hrt_ScanLines
	.word	hrt_LeftWipe
	.word	hrt_RightWipe
	.word	hrt_BottomWipe
	.word	hrt_TopWipe
	.word	hrt_CoolScanLines
	.word	hrt_CircleWipe
	.word	hrt_LineWipe
	.word	31775
	.word	671
	.word	32736
	.word	.LANCHOR1
	.word	buf
	.word	.LC136
	.word	sprintf
	.word	hrt_PrintOnBitmap
	.word	VRAM
	.word	hrt_SaveByte
	.word	100667088
	.word	hrt_Memcpy
.L121:
@ main.c:304: 				hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
	.loc 1 304 0 is_stmt 1
	movs	r4, #0	@ tmp1137,
	movs	r3, #1	@ tmp1142,
	movs	r2, r4	@, tmp1137
	str	r3, [sp, #16]	@ tmp1142,
	movs	r1, r4	@, tmp1137
	movs	r3, r4	@, tmp1137
	movs	r0, #4	@,
	ldr	r5, .L138	@ tmp2151,
	str	r4, [sp, #36]	@ tmp1137,
	str	r4, [sp, #32]	@ tmp1137,
	str	r4, [sp, #28]	@ tmp1137,
	str	r4, [sp, #24]	@ tmp1137,
	str	r4, [sp, #20]	@ tmp1137,
	str	r4, [sp, #12]	@ tmp1137,
	str	r4, [sp, #8]	@ tmp1137,
	str	r4, [sp, #4]	@ tmp1137,
	str	r4, [sp]	@ tmp1137,
	bl	.L144	@
.LVL116:
@ main.c:305: 				hrt_LZ77UnCompVRAM((u32)gbfs_get_obj(dat, "imadog.img.lz", NULL), (u32)VRAM); //LZ77 decompresses file "sramc.img.lz" to VRAM
	.loc 1 305 0
	ldr	r7, [sp, #52]	@ dat, %sfp
	movs	r2, r4	@, tmp1137
	ldr	r1, .L138+4	@,
	ldr	r6, .L138+8	@ tmp1149,
	movs	r0, r7	@, dat
	bl	.L146	@
.LVL117:
	ldr	r3, .L138+12	@ tmp1150,
	ldr	r5, .L138+16	@ tmp1151,
	ldr	r1, [r3]	@, VRAM
	bl	.L144	@
.LVL118:
@ main.c:306: 				hrt_LZ77UnCompVRAM((u32)gbfs_get_obj(dat, "imadog.pal.lz", NULL), (u32)BGPaletteMem); //LZ77 decompresses file "sramc.pal.lz" to BGPaletteMem
	.loc 1 306 0
	movs	r2, r4	@, tmp1137
	ldr	r1, .L138+20	@,
	movs	r0, r7	@, dat
	bl	.L146	@
.LVL119:
	ldr	r3, .L138+24	@ tmp1154,
	ldr	r1, [r3]	@, BGPaletteMem
	bl	.L144	@
.LVL120:
@ main.c:309: 					if (keyDown(KEY_START))
	.loc 1 309 0
	movs	r2, #8	@ tmp1163,
	ldr	r1, .L138+28	@ tmp1156,
.L42:
	ldrh	r3, [r1]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	tst	r2, r3	@ tmp1163, MEM[(volatile u16 *)67109168B]
	bne	.L42	@,
@ main.c:311: 						asm volatile("swi 0x00"::);
	.loc 1 311 0
	.syntax divided
@ 311 "main.c" 1
	swi 0x00
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L42	@
.L120:
@ main.c:291: 				hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
	.loc 1 291 0
	movs	r1, #0	@ tmp1108,
	movs	r3, #1	@ tmp1113,
	movs	r2, r1	@, tmp1108
	str	r1, [sp, #36]	@ tmp1108,
	str	r1, [sp, #32]	@ tmp1108,
	str	r1, [sp, #28]	@ tmp1108,
	str	r1, [sp, #24]	@ tmp1108,
	str	r1, [sp, #20]	@ tmp1108,
	str	r3, [sp, #16]	@ tmp1113,
	str	r1, [sp, #12]	@ tmp1108,
	movs	r3, r1	@, tmp1108
	str	r1, [sp, #8]	@ tmp1108,
	str	r1, [sp, #4]	@ tmp1108,
	str	r1, [sp]	@ tmp1108,
	movs	r0, #4	@,
	ldr	r4, .L138	@ tmp2149,
	bl	.L143	@
.LVL121:
@ main.c:292: 				hrt_DMA_Copy(3, (u16*)conceptBitmap, VRAM, 19200, 0x80000000);
	.loc 1 292 0
	movs	r3, #128	@ tmp1122,
	lsls	r3, r3, #24	@ tmp1122, tmp1122,
	str	r3, [sp]	@ tmp1122,
	movs	r3, #150	@,
	ldr	r2, .L138+12	@ tmp1120,
	lsls	r3, r3, #7	@,,
	ldr	r2, [r2]	@, VRAM
	ldr	r1, .L138+32	@,
	movs	r0, #3	@,
	ldr	r4, .L138+36	@ tmp1123,
	bl	.L143	@
.LVL122:
@ main.c:293: 				hrt_LoadBGPal((void*)conceptPal, 255);
	.loc 1 293 0
	movs	r1, #255	@,
	ldr	r0, .L138+40	@,
	ldr	r3, .L138+44	@ tmp1125,
	bl	.L142	@
.LVL123:
@ main.c:296: 					if (keyDown(KEY_START))
	.loc 1 296 0
	movs	r2, #8	@ tmp1133,
	ldr	r1, .L138+28	@ tmp1126,
.L39:
	ldrh	r3, [r1]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	tst	r2, r3	@ tmp1133, MEM[(volatile u16 *)67109168B]
	bne	.L39	@,
@ main.c:298: 						asm volatile("swi 0x00"::);
	.loc 1 298 0
	.syntax divided
@ 298 "main.c" 1
	swi 0x00
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L39	@
.L125:
@ main.c:416: 				hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);
	.loc 1 416 0
	movs	r6, #1	@ tmp1429,
@ main.c:414: 				hrt_offsetOAMPal = 0;
	.loc 1 414 0
	ldr	r3, .L138+48	@ tmp1422,
	str	r7, [r3]	@ arpos.9_27, hrt_offsetOAMPal
@ main.c:415: 				hrt_offsetOAMData = 0;
	.loc 1 415 0
	ldr	r3, .L138+52	@ tmp1424,
@ main.c:416: 				hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);
	.loc 1 416 0
	movs	r2, #80	@,
@ main.c:415: 				hrt_offsetOAMData = 0;
	.loc 1 415 0
	str	r7, [r3]	@ arpos.9_27, hrt_offsetOAMData
@ main.c:416: 				hrt_CreateOBJ(0, 120, 80, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);
	.loc 1 416 0
	movs	r1, #120	@,
	str	r7, [sp, #40]	@ arpos.9_27,
	str	r7, [sp, #36]	@ arpos.9_27,
	str	r7, [sp, #32]	@ arpos.9_27,
	str	r6, [sp, #28]	@ tmp1429,
	str	r7, [sp, #24]	@ arpos.9_27,
	str	r7, [sp, #20]	@ arpos.9_27,
	str	r6, [sp, #16]	@ tmp1429,
	str	r7, [sp, #12]	@ arpos.9_27,
	str	r7, [sp, #8]	@ arpos.9_27,
	str	r7, [sp, #4]	@ arpos.9_27,
	str	r6, [sp]	@ tmp1429,
	movs	r3, #2	@,
	movs	r0, #0	@,
	ldr	r4, .L138+56	@ tmp2213,
	bl	.L143	@
.LVL124:
@ main.c:417: 				hrt_SetDSPMode(3, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
	.loc 1 417 0
	movs	r3, #0	@,
	str	r7, [sp, #36]	@ arpos.9_27,
	movs	r2, r3	@,
	movs	r1, r3	@, tmp2
	str	r7, [sp, #32]	@ arpos.9_27,
	str	r7, [sp, #28]	@ arpos.9_27,
	str	r6, [sp, #24]	@ tmp1429,
	str	r7, [sp, #20]	@ arpos.9_27,
	str	r6, [sp, #16]	@ tmp1429,
	str	r7, [sp, #12]	@ arpos.9_27,
	str	r7, [sp, #8]	@ arpos.9_27,
	str	r7, [sp, #4]	@ arpos.9_27,
	str	r6, [sp]	@ tmp1429,
	movs	r0, #3	@,
	ldr	r4, .L138	@ tmp2215,
	bl	.L143	@
.LVL125:
@ main.c:418: 				hrt_LoadOBJGFX((void*)blockTiles, 2048);
	.loc 1 418 0
	movs	r1, #128	@,
	ldr	r0, .L138+60	@,
	lsls	r1, r1, #4	@,,
	ldr	r3, .L138+64	@ tmp2217,
	bl	.L142	@
.LVL126:
@ main.c:419: 				hrt_LoadOBJPal((void*)blockPal, 255);
	.loc 1 419 0
	movs	r1, #255	@,
	ldr	r0, .L138+68	@,
	ldr	r3, .L138+72	@ tmp2219,
	bl	.L142	@
.LVL127:
@ main.c:420: 				hrt_CopyOAM();
	.loc 1 420 0
	ldr	r3, .L138+76	@ tmp2221,
	bl	.L142	@
.LVL128:
@ main.c:421: 				x = 120;
	.loc 1 421 0
	ldr	r3, .L138+80	@ tmp1742,
	mov	fp, r3	@ tmp1742, tmp1742
	movs	r3, #120	@ tmp1456,
	mov	r2, fp	@ tmp1742, tmp1742
	str	r3, [r2]	@ tmp1456, x
@ main.c:422: 				y = 80;
	.loc 1 422 0
	ldr	r3, .L138+84	@ tmp1743,
	mov	r10, r3	@ tmp1743, tmp1743
	movs	r3, #80	@ tmp1458,
	mov	r2, r10	@ tmp1743, tmp1743
@ main.c:423: 				hrt_AffineOBJ(0, 0, 255, 255);
	.loc 1 423 0
	movs	r1, #0	@,
@ main.c:422: 				y = 80;
	.loc 1 422 0
	str	r3, [r2]	@ tmp1458, y
@ main.c:423: 				hrt_AffineOBJ(0, 0, 255, 255);
	.loc 1 423 0
	adds	r3, r3, #175	@,
	movs	r2, r3	@,
	movs	r0, r1	@,
	ldr	r4, .L138+88	@ tmp2227,
	bl	.L143	@
.LVL129:
@ main.c:424: 				x_scale = 255;
	.loc 1 424 0
	ldr	r3, .L138+92	@ tmp1745,
	mov	r9, r3	@ tmp1745, tmp1745
	movs	r3, #255	@ tmp1461,
	mov	r2, r9	@ tmp1745, tmp1745
	str	r3, [r2]	@ tmp1461, x_scale
@ main.c:425: 				g_newframe = 1;
	.loc 1 425 0
	ldr	r3, .L138+96	@ tmp1462,
@ main.c:426: 				hrt_FillScreen(0x0000, 3);
	.loc 1 426 0
	movs	r1, #3	@,
@ main.c:425: 				g_newframe = 1;
	.loc 1 425 0
	strb	r6, [r3]	@ tmp1429, g_newframe
@ main.c:426: 				hrt_FillScreen(0x0000, 3);
	.loc 1 426 0
	movs	r0, #0	@,
	ldr	r3, .L138+100	@ tmp1465,
	bl	.L142	@
.LVL130:
@ main.c:427: 				hrt_PrintOnBitmap(0, 0, "HeartLib Sprite Demo");
	.loc 1 427 0
	movs	r1, #0	@,
	ldr	r3, .L138+104	@ tmp2231,
	ldr	r2, .L138+108	@,
	movs	r0, r1	@,
	bl	.L142	@
.LVL131:
	ldr	r3, .L138+112	@ tmp1751,
	ldr	r7, .L138+116	@ tmp1784,
	mov	r8, r3	@ tmp1751, tmp1751
@ main.c:431: 						if (keyDown(KEY_SELECT))
	.loc 1 431 0
	ldr	r6, .L138+28	@ tmp1472,
	b	.L73	@
.LVL132:
.L62:
	mov	r3, r8	@ tmp1751, tmp1751
@ main.c:437: 						if (keyDown(KEY_R))
	.loc 1 437 0
	ldrh	r2, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldr	r3, [r3]	@ pretmp_620, rot
	lsls	r2, r2, #23	@ tmp1886, MEM[(volatile u16 *)67109168B],
	bmi	.L63	@,
@ main.c:439: 							rot++;
	.loc 1 439 0
	mov	r2, r8	@ tmp1751, tmp1751
	adds	r3, r3, #1	@ pretmp_620,
	str	r3, [r2]	@ pretmp_620, rot
.L63:
@ main.c:441: 						if (keyDown(KEY_L))
	.loc 1 441 0
	ldrh	r2, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r2, r2, #22	@ tmp1887, MEM[(volatile u16 *)67109168B],
	bmi	.L64	@,
@ main.c:443: 							rot--;
	.loc 1 443 0
	mov	r2, r8	@ tmp1751, tmp1751
	subs	r3, r3, #1	@ pretmp_620,
	str	r3, [r2]	@ pretmp_620, rot
.L64:
@ main.c:445: 						if (keyDown(KEY_A))
	.loc 1 445 0
	ldrh	r2, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r2, r2, #31	@ tmp1888, MEM[(volatile u16 *)67109168B],
	bmi	.L65	@,
@ main.c:447: 							x_scale++;
	.loc 1 447 0
	mov	r2, r9	@ tmp1745, tmp1745
	mov	r1, r9	@ tmp1745, tmp1745
	ldr	r2, [r2]	@ tmp2243, x_scale
	adds	r2, r2, #1	@ tmp1523,
	str	r2, [r1]	@ tmp1523, x_scale
.L65:
@ main.c:449: 						if (keyDown(KEY_B))
	.loc 1 449 0
	ldrh	r2, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r2, r2, #30	@ tmp1889, MEM[(volatile u16 *)67109168B],
	bmi	.L66	@,
@ main.c:451: 							x_scale--;
	.loc 1 451 0
	mov	r2, r9	@ tmp1745, tmp1745
	mov	r1, r9	@ tmp1745, tmp1745
	ldr	r2, [r2]	@ tmp2246, x_scale
	subs	r2, r2, #1	@ tmp1538,
	str	r2, [r1]	@ tmp1538, x_scale
.L66:
	mov	r2, r10	@ tmp1743, tmp1743
@ main.c:453: 						if (keyDown(KEY_UP))
	.loc 1 453 0
	ldrh	r1, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldr	r2, [r2]	@ pretmp_623, y
	lsls	r1, r1, #25	@ tmp1890, MEM[(volatile u16 *)67109168B],
	bmi	.L67	@,
@ main.c:455: 							y--;
	.loc 1 455 0
	mov	r1, r10	@ tmp1743, tmp1743
	subs	r2, r2, #1	@ pretmp_623,
	str	r2, [r1]	@ pretmp_623, y
.L67:
@ main.c:457: 						if (keyDown(KEY_DOWN))
	.loc 1 457 0
	ldrh	r1, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r1, r1, #24	@ tmp1891, MEM[(volatile u16 *)67109168B],
	bmi	.L68	@,
@ main.c:459: 							y++;
	.loc 1 459 0
	mov	r1, r10	@ tmp1743, tmp1743
	adds	r2, r2, #1	@ pretmp_623,
	str	r2, [r1]	@ pretmp_623, y
.L68:
	mov	r1, fp	@ tmp1742, tmp1742
@ main.c:461: 						if (keyDown(KEY_LEFT))
	.loc 1 461 0
	ldrh	r0, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ldr	r1, [r1]	@ pretmp_626, x
	lsls	r0, r0, #26	@ tmp1892, MEM[(volatile u16 *)67109168B],
	bmi	.L69	@,
@ main.c:463: 							x--;
	.loc 1 463 0
	mov	r0, fp	@ tmp1742, tmp1742
	subs	r1, r1, #1	@ pretmp_626,
	str	r1, [r0]	@ pretmp_626, x
.L69:
@ main.c:465: 						if (keyDown(KEY_RIGHT))
	.loc 1 465 0
	ldrh	r0, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r0, r0, #27	@ tmp1893, MEM[(volatile u16 *)67109168B],
	bmi	.L70	@,
@ main.c:467: 							x++;
	.loc 1 467 0
	mov	r0, fp	@ tmp1742, tmp1742
	adds	r1, r1, #1	@ pretmp_626,
	str	r1, [r0]	@ pretmp_626, x
.L70:
@ main.c:469: 						if (rot == -1)
	.loc 1 469 0
	adds	r3, r3, #1	@ tmp1894, pretmp_620,
	bne	.L71	@,
@ main.c:471: 							rot = 0;
	.loc 1 471 0
	mov	r3, r8	@ tmp1751, tmp1751
	movs	r0, #0	@ tmp2255,
	str	r0, [r3]	@ tmp2255, rot
.L71:
@ main.c:473: 						if (keyDown(KEY_START))
	.loc 1 473 0
	ldrh	r3, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #28	@ tmp1895, MEM[(volatile u16 *)67109168B],
	bmi	.L72	@,
@ main.c:475: 							asm volatile("swi 0x00"::);
	.loc 1 475 0
	.syntax divided
@ 475 "main.c" 1
	swi 0x00
@ 0 "" 2
	.thumb
	.syntax unified
.L72:
@ main.c:477: 						hrt_SetOBJXY(&sprites[0], x, y);
	.loc 1 477 0
	ldr	r0, .L138+120	@,
	ldr	r3, .L138+124	@ tmp2256,
	bl	.L142	@
.LVL133:
@ main.c:478: 						hrt_AffineOBJ(0, rot % 360, x_scale, x_scale);
	.loc 1 478 0
	mov	r3, r9	@ tmp1745, tmp1745
	movs	r1, #180	@,
	ldr	r4, [r3]	@ x_scale.81_283, x_scale
	mov	r3, r8	@ tmp1751, tmp1751
	lsls	r1, r1, #1	@,,
	ldr	r0, [r3]	@, rot
	ldr	r3, .L138+128	@ tmp2260,
	bl	.L142	@
.LVL134:
	movs	r3, r4	@, x_scale.81_283
	movs	r2, r4	@, x_scale.81_283
	movs	r0, #0	@,
	ldr	r4, .L138+88	@ tmp2262,
	bl	.L143	@
.LVL135:
@ main.c:479: 						hrt_VblankIntrWait();
	.loc 1 479 0
	ldr	r3, .L138+132	@ tmp2264,
	bl	.L142	@
.LVL136:
@ main.c:480: 						hrt_CopyOAM();
	.loc 1 480 0
	ldr	r3, .L138+76	@ tmp2266,
	bl	.L142	@
.LVL137:
.L73:
@ main.c:430: 						frames++;
	.loc 1 430 0
	ldr	r3, [r5]	@ tmp2234, frames
	adds	r3, r3, #1	@ tmp1470,
	str	r3, [r5]	@ tmp1470, frames
@ main.c:431: 						if (keyDown(KEY_SELECT))
	.loc 1 431 0
	ldrh	r3, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #29	@ tmp1885, MEM[(volatile u16 *)67109168B],
	bmi	.L62	@,
@ main.c:433: 							fxlevel++;
	.loc 1 433 0
	ldr	r3, .L138+136	@ tmp2235,
	ldr	r3, [r3]	@ fxlevel, fxlevel
	adds	r0, r3, #1	@ _243, fxlevel,
	str	r3, [sp, #52]	@ fxlevel, %sfp
	ldr	r3, .L138+136	@ tmp2238,
	str	r0, [r3]	@ _243, fxlevel
@ main.c:434: 							hrt_SetFXLevel(fxlevel);
	.loc 1 434 0
	lsls	r0, r0, #24	@ tmp1487, _243,
	lsrs	r0, r0, #24	@ tmp1486, tmp1487,
	bl	.L145	@
.LVL138:
	b	.L62	@
.LVL139:
.L124:
@ main.c:375: 				hrt_offsetOAMData = 0;
	.loc 1 375 0
	movs	r3, #0	@ tmp1284,
	mov	r9, r3	@ tmp1284, tmp1284
	mov	r2, r9	@ tmp1284, tmp1284
	ldr	r3, .L138+52	@ tmp1283,
	str	r2, [r3]	@ tmp1284, hrt_offsetOAMData
@ main.c:376: 				hrt_ConfigBG(2, 0, 1, 1, 1, 0, 1, 0);
	.loc 1 376 0
	mov	r3, r9	@ tmp1284, tmp1284
	adds	r3, r3, #1	@,
	str	r2, [sp, #12]	@ tmp1284,
	str	r7, [sp, #8]	@ arpos.9_27,
	str	r2, [sp, #4]	@ tmp1284,
	str	r7, [sp]	@ arpos.9_27,
	movs	r2, r3	@,
	mov	r1, r9	@, tmp1284
	movs	r0, #2	@,
	bl	.L147	@
.LVL140:
@ main.c:377: 				hrt_SetDSPMode(0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
	.loc 1 377 0
	mov	r3, r9	@ tmp1284, tmp1284
	mov	r2, r9	@, tmp1284
	str	r3, [sp, #36]	@ tmp1284,
	str	r3, [sp, #32]	@ tmp1284,
	str	r3, [sp, #28]	@ tmp1284,
	str	r3, [sp, #24]	@ tmp1284,
	str	r3, [sp, #20]	@ tmp1284,
	str	r7, [sp, #16]	@ arpos.9_27,
	str	r3, [sp, #12]	@ tmp1284,
	str	r3, [sp, #8]	@ tmp1284,
	str	r3, [sp, #4]	@ tmp1284,
	str	r3, [sp]	@ tmp1284,
	mov	r1, r9	@, tmp1284
	mov	r0, r9	@, tmp1284
	ldr	r4, .L138	@ tmp2183,
	bl	.L143	@
.LVL141:
@ main.c:378: 				hrt_LoadBGPal((void*)bg_hillPal, 255);
	.loc 1 378 0
	movs	r1, #255	@,
	ldr	r0, .L138+140	@,
	ldr	r3, .L138+44	@ tmp1302,
	bl	.L142	@
.LVL142:
@ main.c:379: 				hrt_LoadBGTiles((void*)bg_hillTiles, 32800);
	.loc 1 379 0
	ldr	r1, .L138+144	@,
	ldr	r0, .L138+148	@,
	ldr	r3, .L138+152	@ tmp1305,
	bl	.L142	@
.LVL143:
@ main.c:380: 				hrt_LoadBGMap((void*)bg_hillMap, 2048);
	.loc 1 380 0
	movs	r1, #128	@,
	ldr	r0, .L138+156	@,
	lsls	r1, r1, #4	@,,
	ldr	r3, .L138+160	@ tmp1308,
	bl	.L142	@
.LVL144:
@ main.c:381: 				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 381 0
	movs	r3, #128	@ tmp1309,
	mov	r2, r9	@ tmp1284, tmp1284
	lsls	r3, r3, #1	@ tmp1309, tmp1309,
	str	r3, [sp]	@ tmp1309,
	str	r2, [sp, #4]	@ tmp1284,
	ldr	r7, .L138+164	@ tmp1773,
	ldr	r6, .L138+168	@ tmp1774,
	ldr	r2, [r7]	@, bgy
	ldr	r1, [r6]	@, bgx
	movs	r0, #2	@,
	ldr	r4, .L138+172	@ tmp1775,
	bl	.L143	@
.LVL145:
@ main.c:382: 				hrt_VblankIntrWait();
	.loc 1 382 0
	ldr	r3, .L138+132	@ tmp2187,
	bl	.L142	@
.LVL146:
@ main.c:388: 					if (keyDown(KEY_LEFT))
	.loc 1 388 0
	ldr	r3, .L138+28	@ tmp1329,
@ main.c:381: 				hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 381 0
	mov	r10, r4	@ tmp1775, tmp1775
@ main.c:388: 					if (keyDown(KEY_LEFT))
	.loc 1 388 0
	mov	r8, r3	@ tmp1329, tmp1329
.L60:
@ main.c:387: 					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 387 0
	movs	r4, #128	@ tmp1321,
	lsls	r4, r4, #1	@ tmp1321, tmp1321,
.L53:
@ main.c:385: 					frames++;
	.loc 1 385 0
	ldr	r3, [r5]	@ tmp2190, frames
	adds	r3, r3, #1	@ tmp1318,
	str	r3, [r5]	@ tmp1318, frames
@ main.c:386: 					hrt_VblankIntrWait();
	.loc 1 386 0
	ldr	r3, .L138+132	@ tmp2191,
	bl	.L142	@
.LVL147:
@ main.c:387: 					hrt_EditBG(2, bgx, bgy, 256, 256, 0);
	.loc 1 387 0
	mov	r3, r9	@ tmp1326, tmp1326
	ldr	r2, [r7]	@ bgy, bgy
	ldr	r1, [r6]	@ bgx, bgx
	str	r3, [sp, #4]	@ tmp1326,
	movs	r3, #128	@,
	str	r4, [sp]	@ tmp1321,
	lsls	r3, r3, #1	@,,
	movs	r0, #2	@,
	bl	.L147	@
.LVL148:
@ main.c:388: 					if (keyDown(KEY_LEFT))
	.loc 1 388 0
	mov	r3, r8	@ tmp1329, tmp1329
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #26	@ tmp1879, MEM[(volatile u16 *)67109168B],
	bmi	.L54	@,
@ main.c:390: 						bgx--;
	.loc 1 390 0
	ldr	r3, [r6]	@ tmp2195, bgx
	subs	r3, r3, #1	@ tmp1342,
	str	r3, [r6]	@ tmp1342, bgx
.L54:
@ main.c:392: 					if (keyDown(KEY_RIGHT))
	.loc 1 392 0
	mov	r3, r8	@ tmp1329, tmp1329
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #27	@ tmp1880, MEM[(volatile u16 *)67109168B],
	bmi	.L55	@,
@ main.c:394: 						bgx++;
	.loc 1 394 0
	ldr	r3, [r6]	@ tmp2197, bgx
	adds	r3, r3, #1	@ tmp1357,
	str	r3, [r6]	@ tmp1357, bgx
.L55:
@ main.c:396: 					if (keyDown(KEY_UP))
	.loc 1 396 0
	mov	r3, r8	@ tmp1329, tmp1329
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #25	@ tmp1881, MEM[(volatile u16 *)67109168B],
	bmi	.L56	@,
@ main.c:398: 						bgy--;
	.loc 1 398 0
	ldr	r3, [r7]	@ tmp2199, bgy
	subs	r3, r3, #1	@ tmp1372,
	str	r3, [r7]	@ tmp1372, bgy
.L56:
@ main.c:400: 					if (keyDown(KEY_DOWN))
	.loc 1 400 0
	mov	r3, r8	@ tmp1329, tmp1329
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #24	@ tmp1882, MEM[(volatile u16 *)67109168B],
	bmi	.L57	@,
@ main.c:402: 						bgy++;
	.loc 1 402 0
	ldr	r3, [r7]	@ tmp2201, bgy
	adds	r3, r3, #1	@ tmp1387,
	str	r3, [r7]	@ tmp1387, bgy
@ main.c:404: 					if (keyDown(KEY_START))
	.loc 1 404 0
	mov	r3, r8	@ tmp1329, tmp1329
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B],
	lsls	r3, r3, #28	@ tmp1883, MEM[(volatile u16 *)67109168B],
	bmi	.L53	@,
.L58:
@ main.c:406: 						hrt_SetDSPMode(4, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0);
	.loc 1 406 0
	mov	r3, r9	@ tmp1326, tmp1326
	mov	r2, r9	@ tmp1326, tmp1326
	str	r3, [sp, #36]	@ tmp1326,
	str	r3, [sp, #32]	@ tmp1326,
	str	r3, [sp, #28]	@ tmp1326,
	movs	r3, #1	@ tmp1414,
	str	r2, [sp, #20]	@ tmp1326,
	str	r3, [sp, #24]	@ tmp1414,
	str	r3, [sp, #16]	@ tmp1414,
	str	r2, [sp, #12]	@ tmp1326,
	str	r2, [sp, #8]	@ tmp1326,
	str	r2, [sp, #4]	@ tmp1326,
	str	r3, [sp]	@ tmp1414,
	movs	r2, #0	@,
	movs	r3, #0	@,
	movs	r1, #0	@,
	movs	r0, #4	@,
	ldr	r4, .L138	@ tmp2211,
	bl	.L143	@
.LVL149:
@ main.c:407: 						asm volatile("swi 0x01"::);
	.loc 1 407 0
	.syntax divided
@ 407 "main.c" 1
	swi 0x01
@ 0 "" 2
@ main.c:408: 						asm volatile("swi 0x00"::);
	.loc 1 408 0
@ 408 "main.c" 1
	swi 0x00
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L60	@
.L57:
@ main.c:404: 					if (keyDown(KEY_START))
	.loc 1 404 0
	mov	r3, r8	@ tmp1329, tmp1329
	ldrh	r3, [r3]	@ MEM[(volatile u16 *)67109168B],
	lsls	r3, r3, #28	@ tmp1884, MEM[(volatile u16 *)67109168B],
	bmi	.L53	@,
	b	.L58	@
.L139:
	.align	2
.L138:
	.word	hrt_SetDSPMode
	.word	.LC103
	.word	gbfs_get_obj
	.word	VRAM
	.word	hrt_LZ77UnCompVRAM
	.word	.LC107
	.word	BGPaletteMem
	.word	67109168
	.word	conceptBitmap
	.word	hrt_DMA_Copy
	.word	conceptPal
	.word	hrt_LoadBGPal
	.word	hrt_offsetOAMPal
	.word	hrt_offsetOAMData
	.word	hrt_CreateOBJ
	.word	blockTiles
	.word	hrt_LoadOBJGFX
	.word	blockPal
	.word	hrt_LoadOBJPal
	.word	hrt_CopyOAM
	.word	x
	.word	y
	.word	hrt_AffineOBJ
	.word	x_scale
	.word	g_newframe
	.word	hrt_FillScreen
	.word	hrt_PrintOnBitmap
	.word	.LC130
	.word	rot
	.word	hrt_SetFXLevel
	.word	sprites
	.word	hrt_SetOBJXY
	.word	__aeabi_idivmod
	.word	hrt_VblankIntrWait
	.word	fxlevel
	.word	bg_hillPal
	.word	32800
	.word	bg_hillTiles
	.word	hrt_LoadBGTiles
	.word	bg_hillMap
	.word	hrt_LoadBGMap
	.word	bgy
	.word	bgx
	.word	hrt_EditBG
.L123:
@ main.c:332: 				hrt_DMA_Copy(3, (u16*)suchBitmap, VRAM,  38400, 0x80000000);
	.loc 1 332 0
	movs	r3, #128	@ tmp1201,
	lsls	r3, r3, #24	@ tmp1201, tmp1201,
	str	r3, [sp]	@ tmp1201,
	movs	r3, #150	@,
	ldr	r2, .L140	@ tmp1199,
	lsls	r3, r3, #8	@,,
	ldr	r2, [r2]	@, VRAM
	ldr	r1, .L140+4	@,
	movs	r0, #3	@,
	ldr	r4, .L140+8	@ tmp1202,
	bl	.L143	@
.LVL150:
@ main.c:333: 				hrt_SetDSPMode(3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
	.loc 1 333 0
	movs	r3, #1	@ tmp1208,
	movs	r4, #0	@ tmp1203,
	mov	r9, r3	@ tmp1208, tmp1208
	movs	r2, r4	@, tmp1203
	movs	r1, r4	@, tmp1203
	str	r4, [sp, #36]	@ tmp1203,
	str	r4, [sp, #32]	@ tmp1203,
	str	r4, [sp, #28]	@ tmp1203,
	str	r4, [sp, #24]	@ tmp1203,
	str	r4, [sp, #20]	@ tmp1203,
	str	r3, [sp, #16]	@ tmp1208,
	str	r4, [sp, #12]	@ tmp1203,
	movs	r3, r4	@, tmp1203
	str	r4, [sp, #8]	@ tmp1203,
	str	r4, [sp, #4]	@ tmp1203,
	str	r4, [sp]	@ tmp1203,
	movs	r0, #3	@,
	ldr	r5, .L140+12	@ tmp2159,
	bl	.L144	@
.LVL151:
@ main.c:334: 				hrt_SetFXMode(0, //BG 0 Target 1
	.loc 1 334 0
	movs	r3, r4	@, tmp1203
	movs	r1, r4	@, tmp1203
	movs	r0, r4	@, tmp1203
	str	r4, [sp, #32]	@ tmp1203,
	str	r4, [sp, #28]	@ tmp1203,
	str	r4, [sp, #24]	@ tmp1203,
	str	r4, [sp, #20]	@ tmp1203,
	str	r4, [sp, #16]	@ tmp1203,
	str	r4, [sp, #12]	@ tmp1203,
	str	r7, [sp, #8]	@ arpos.9_27,
	str	r4, [sp, #4]	@ tmp1203,
	str	r4, [sp]	@ tmp1203,
	mov	r2, r9	@, tmp1208
	ldr	r5, .L140+16	@ tmp1223,
	bl	.L144	@
.LVL152:
@ main.c:347: 				hrt_PrintOnBitmap(0, 144, "HeartLib Fade Demo");
	.loc 1 347 0
	movs	r0, r4	@, tmp1203
	ldr	r2, .L140+20	@,
	movs	r1, #144	@,
	ldr	r3, .L140+24	@ tmp2161,
	bl	.L142	@
.LVL153:
@ main.c:348: 				hrt_PrintOnBitmap(0, 152, "A to Fade Out, B to Fade In ");
	.loc 1 348 0
	movs	r0, r4	@, tmp1203
	ldr	r2, .L140+28	@,
	movs	r1, #152	@,
	ldr	r3, .L140+24	@ tmp2163,
	bl	.L142	@
.LVL154:
@ main.c:351: 					if (keyDown(KEY_A))
	.loc 1 351 0
	ldr	r6, .L140+32	@ tmp1228,
	ldr	r5, .L140+36	@ tmp1765,
	ldr	r4, .L140+40	@ tmp1783,
	ldr	r7, .L140+44	@ tmp1784,
.L98:
	mov	r2, r9	@ tmp1235, tmp1235
	ldrh	r3, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ands	r3, r2	@ tmp1237, tmp1235
	beq	.L130	@,
.L47:
@ main.c:359: 					if (keyDown(KEY_B))
	.loc 1 359 0
	movs	r3, #2	@ tmp1255,
	ldrh	r2, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ands	r3, r2	@ tmp1257, MEM[(volatile u16 *)67109168B]
	beq	.L131	@,
.L49:
@ main.c:367: 					if (keyDown(KEY_START))
	.loc 1 367 0
	ldrh	r3, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	lsls	r3, r3, #28	@ tmp1878, MEM[(volatile u16 *)67109168B],
	bmi	.L98	@,
@ main.c:369: 						asm volatile("swi 0x00"::);
	.loc 1 369 0
	.syntax divided
@ 369 "main.c" 1
	swi 0x00
@ 0 "" 2
@ main.c:351: 					if (keyDown(KEY_A))
	.loc 1 351 0
	.thumb
	.syntax unified
	mov	r2, r9	@ tmp1235, tmp1235
	ldrh	r3, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ands	r3, r2	@ tmp1237, tmp1235
	bne	.L47	@,
.L130:
@ main.c:353: 						for (i = 0; i < 17; i++)
	.loc 1 353 0
	movs	r0, #0	@ i.51_118,
	str	r3, [r4]	@ tmp1237, i
.L48:
@ main.c:355: 							hrt_SetFXLevel(i);
	.loc 1 355 0 discriminator 3
	lsls	r0, r0, #24	@ tmp1242, i.51_118,
	lsrs	r0, r0, #24	@ tmp1241, tmp1242,
	bl	.L145	@
.LVL155:
@ main.c:356: 							hrt_SleepF(5);
	.loc 1 356 0 discriminator 3
	movs	r0, #5	@,
	bl	.L144	@
.LVL156:
@ main.c:353: 						for (i = 0; i < 17; i++)
	.loc 1 353 0 discriminator 3
	ldr	r3, [r4]	@ tmp2166, i
	adds	r0, r3, #1	@ i.51_118, tmp2166,
	str	r0, [r4]	@ i.51_118, i
	cmp	r0, #16	@ i.51_118,
	ble	.L48	@,
@ main.c:359: 					if (keyDown(KEY_B))
	.loc 1 359 0
	movs	r3, #2	@ tmp1255,
	ldrh	r2, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	ands	r3, r2	@ tmp1257, MEM[(volatile u16 *)67109168B]
	bne	.L49	@,
.L131:
@ main.c:361: 						for (i = 0; i < 17; i++)
	.loc 1 361 0
	str	r3, [r4]	@ tmp1257, i
@ main.c:363: 							hrt_SetFXLevel(16-i);
	.loc 1 363 0
	movs	r3, #16	@ tmp1261,
@ main.c:361: 						for (i = 0; i < 17; i++)
	.loc 1 361 0
	movs	r0, #0	@ _216,
@ main.c:363: 							hrt_SetFXLevel(16-i);
	.loc 1 363 0
	mov	r8, r3	@ tmp1261, tmp1261
.L50:
@ main.c:363: 							hrt_SetFXLevel(16-i);
	.loc 1 363 0 is_stmt 0 discriminator 3
	mov	r3, r8	@ tmp2168, tmp1261
	subs	r0, r3, r0	@ tmp1264, tmp2168, _216
	lsls	r0, r0, #24	@ tmp1266, tmp1264,
	lsrs	r0, r0, #24	@ tmp1265, tmp1266,
	bl	.L145	@
.LVL157:
@ main.c:364: 							hrt_SleepF(5);
	.loc 1 364 0 is_stmt 1 discriminator 3
	movs	r0, #5	@,
	bl	.L144	@
.LVL158:
@ main.c:361: 						for (i = 0; i < 17; i++)
	.loc 1 361 0 discriminator 3
	ldr	r3, [r4]	@ tmp2169, i
	adds	r0, r3, #1	@ _216, tmp2169,
	str	r0, [r4]	@ _216, i
	cmp	r0, #16	@ _216,
	ble	.L50	@,
	b	.L49	@
.L122:
@ main.c:317: 				hrt_SetDSPMode(4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
	.loc 1 317 0
	movs	r1, #0	@ tmp1167,
	movs	r3, #1	@ tmp1172,
	movs	r2, r1	@, tmp1167
	str	r1, [sp, #36]	@ tmp1167,
	str	r1, [sp, #32]	@ tmp1167,
	str	r1, [sp, #28]	@ tmp1167,
	str	r1, [sp, #24]	@ tmp1167,
	str	r1, [sp, #20]	@ tmp1167,
	str	r3, [sp, #16]	@ tmp1172,
	str	r1, [sp, #12]	@ tmp1167,
	movs	r3, r1	@, tmp1167
	str	r1, [sp, #8]	@ tmp1167,
	str	r1, [sp, #4]	@ tmp1167,
	str	r1, [sp]	@ tmp1167,
	movs	r0, #4	@,
	ldr	r4, .L140+12	@ tmp2153,
	bl	.L143	@
.LVL159:
@ main.c:318: 				hrt_DMA_Copy(3, (u16*)plasmaBitmap, VRAM, 19200, 0x80000000); //DMA Copy
	.loc 1 318 0
	movs	r3, #128	@ tmp1181,
	lsls	r3, r3, #24	@ tmp1181, tmp1181,
	str	r3, [sp]	@ tmp1181,
	movs	r3, #150	@,
	ldr	r2, .L140	@ tmp1179,
	lsls	r3, r3, #7	@,,
	ldr	r2, [r2]	@, VRAM
	ldr	r1, .L140+48	@,
	movs	r0, #3	@,
	ldr	r5, .L140+8	@ tmp1182,
	bl	.L144	@
.LVL160:
@ main.c:324: 					if (keyDown(KEY_START))
	.loc 1 324 0
	movs	r5, #8	@ tmp1194,
@ main.c:319: 				hrt_LoadBGPal((void*)plasmaPalette, 255);
	.loc 1 319 0
	movs	r1, #255	@,
	ldr	r0, .L140+52	@,
	ldr	r3, .L140+56	@ tmp1184,
	bl	.L142	@
.LVL161:
@ main.c:324: 					if (keyDown(KEY_START))
	.loc 1 324 0
	ldr	r6, .L140+32	@ tmp1187,
	ldr	r7, .L140+60	@ tmp1782,
.L97:
@ main.c:322: 					hrt_VblankIntrWait();
	.loc 1 322 0
	ldr	r3, .L140+64	@ tmp2155,
	bl	.L142	@
.LVL162:
@ main.c:323: 					hrt_CyclePalette(0, 187, 0);
	.loc 1 323 0
	movs	r2, #0	@,
	movs	r1, #187	@,
	movs	r0, #0	@,
	bl	.L145	@
.LVL163:
@ main.c:324: 					if (keyDown(KEY_START))
	.loc 1 324 0
	ldrh	r3, [r6]	@ MEM[(volatile u16 *)67109168B], MEM[(volatile u16 *)67109168B]
	tst	r5, r3	@ tmp1194, MEM[(volatile u16 *)67109168B]
	bne	.L97	@,
@ main.c:326: 						asm volatile("swi 0x00"::);
	.loc 1 326 0
	.syntax divided
@ 326 "main.c" 1
	swi 0x00
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L97	@
.L141:
	.align	2
.L140:
	.word	VRAM
	.word	suchBitmap
	.word	hrt_DMA_Copy
	.word	hrt_SetDSPMode
	.word	hrt_SetFXMode
	.word	.LC114
	.word	hrt_PrintOnBitmap
	.word	.LC116
	.word	67109168
	.word	hrt_SleepF
	.word	i
	.word	hrt_SetFXLevel
	.word	plasmaBitmap
	.word	plasmaPalette
	.word	hrt_LoadBGPal
	.word	hrt_CyclePalette
	.word	hrt_VblankIntrWait
.L142:
	bx	r3
.L143:
	bx	r4
.L144:
	bx	r5
.L146:
	bx	r6
.L145:
	bx	r7
.L150:
	bx	r8
.L149:
	bx	r9
.L147:
	bx	r10
.L148:
	bx	fp
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.global	p
	.comm	buf,1024,4
	.global	g_sram
	.comm	g_newframe,1,1
	.comm	bgy,4,4
	.comm	bgx,4,4
	.comm	boix,4,4
	.comm	boiy,4,4
	.comm	phase,1,1
	.comm	i,4,4
	.comm	frames,4,4
	.comm	arpos,4,4
	.comm	fxmode,4,4
	.comm	fxlevel,4,4
	.comm	y_scale,4,4
	.comm	x_scale,4,4
	.comm	rot,4,4
	.comm	y,4,4
	.comm	x,4,4
	.comm	font_matrixBitmap,9216,4
	.comm	font_milkbottlePal,8,4
	.comm	font_milkbottleTiles,6144,4
	.comm	font_matrix,12160,4
	.comm	RAD,2880,8
	.comm	COS,2880,8
	.comm	SIN,2880,8
	.comm	sound,400,4
	.comm	sprites,1024,4
	.comm	hrt_start,1,1
	.comm	BackBuffer,4,4
	.comm	FrontBuffer,4,4
	.comm	loop,4,4
	.comm	OAM,4,4
	.comm	hrt_offsetBGPal,4,4
	.comm	hrt_offsetBGTile,4,4
	.comm	hrt_offsetBGMap,4,4
	.comm	hrt_offsetOAMPal,4,4
	.comm	hrt_offsetOAMData,4,4
	.comm	SaveData,4,4
	.comm	BGTileMem,4,4
	.comm	OBJPaletteMem,4,4
	.comm	BGPaletteMem,4,4
	.comm	OAMData,4,4
	.comm	VRAM,4,4
	.comm	OAMmem,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	p, %object
	.size	p, 4
p:
	.word	g_sram
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_sram, %object
	.size	g_sram, 4
g_sram:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC14:
	.ascii	"HeartLib Demo v1.0\000"
	.space	1
.LC17:
	.ascii	"Sprite\000"
	.space	1
.LC19:
	.ascii	"Scroll\000"
	.space	1
.LC21:
	.ascii	"Fade\000"
	.space	3
.LC23:
	.ascii	"LZ77 Compression\000"
	.space	3
.LC25:
	.ascii	"Palette Cycle\000"
	.space	2
.LC27:
	.ascii	"DMA Transfer\000"
	.space	3
.LC29:
	.ascii	"GetPixel\000"
	.space	3
.LC31:
	.ascii	"DMA Sound\000"
	.space	2
.LC33:
	.ascii	"Mode 3 Wipes\000"
	.space	3
.LC35:
	.ascii	"Alpha Blending\000"
	.space	1
.LC37:
	.ascii	"SRAM\000"
	.space	3
.LC39:
	.ascii	"Assert\000"
	.space	1
.LC41:
	.ascii	"AGBPrint\000"
	.space	3
.LC43:
	.ascii	"Sleep\000"
	.space	2
.LC45:
	.ascii	"EZ-Flash IV Exit\000"
	.space	3
.LC47:
	.ascii	"Cold Reset\000"
	.space	1
.LC49:
	.ascii	"Parallax Scrolling\000"
	.space	1
.LC72:
	.ascii	"Hello. This is a test for AGBPrint in HeartLib. Kud"
	.ascii	"os to DevKitPro for getting this function.\000"
	.space	2
.LC103:
	.ascii	"imadog.img.lz\000"
	.space	2
.LC107:
	.ascii	"imadog.pal.lz\000"
	.space	2
.LC114:
	.ascii	"HeartLib Fade Demo\000"
	.space	1
.LC116:
	.ascii	"A to Fade Out, B to Fade In \000"
	.space	3
.LC130:
	.ascii	"HeartLib Sprite Demo\000"
	.space	3
.LC136:
	.ascii	"%d\000"
	.text
.Letext0:
	.file 2 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_types.h"
	.file 4 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h"
	.file 6 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\7.1.0\\include\\stddef.h"
	.file 7 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h"
	.file 8 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h"
	.file 9 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.file 10 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\math.h"
	.file 11 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\ctype.h"
	.file 12 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\time.h"
	.file 13 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\7.1.0\\include\\libheart.h"
	.file 14 "defs.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2826
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF267
	.byte	0xc
	.4byte	.LASF268
	.4byte	.LASF269
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x3f
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.4byte	0x56
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x67
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x7
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x4b
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x7
	.4byte	0xb5
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0xc
	.byte	0x5
	.byte	0x9
	.4byte	0x107
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa
	.4byte	0xcb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0xb
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc
	.4byte	0xc0
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0xf
	.4byte	0xd6
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x165
	.4byte	0x8f
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.4byte	0x13d
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x7
	.byte	0xa8
	.4byte	0x112
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa9
	.4byte	0x13d
	.byte	0
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x14d
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.4byte	0x16e
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0xa5
	.4byte	0x88
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7
	.byte	0xaa
	.4byte	0x11e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0xab
	.4byte	0x14d
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x7
	.byte	0xaf
	.4byte	0x107
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x8
	.byte	0x16
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x18
	.byte	0x8
	.byte	0x2f
	.4byte	0x1e2
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x8
	.byte	0x31
	.4byte	0x1e2
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x8
	.byte	0x32
	.4byte	0x88
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x8
	.byte	0x32
	.4byte	0x88
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x8
	.byte	0x32
	.4byte	0x88
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.byte	0x32
	.4byte	0x88
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x8
	.byte	0x33
	.4byte	0x1e8
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x18f
	.uleb128 0xc
	.4byte	0x184
	.4byte	0x1f8
	.uleb128 0xd
	.4byte	0x8f
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x24
	.byte	0x8
	.byte	0x37
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x8
	.byte	0x39
	.4byte	0x88
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x3a
	.4byte	0x88
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3b
	.4byte	0x88
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x8
	.byte	0x3c
	.4byte	0x88
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x8
	.byte	0x3d
	.4byte	0x88
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x8
	.byte	0x3e
	.4byte	0x88
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x8
	.byte	0x3f
	.4byte	0x88
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x8
	.byte	0x40
	.4byte	0x88
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0x41
	.4byte	0x88
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.2byte	0x108
	.byte	0x8
	.byte	0x4a
	.4byte	0x2b1
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x4b
	.4byte	0x2b1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x8
	.byte	0x4c
	.4byte	0x2b1
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x8
	.byte	0x4e
	.4byte	0x184
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x51
	.4byte	0x184
	.2byte	0x104
	.byte	0
	.uleb128 0xc
	.4byte	0x9d
	.4byte	0x2c1
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF51
	.2byte	0x190
	.byte	0x8
	.byte	0x5d
	.4byte	0x2ff
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5e
	.4byte	0x2ff
	.byte	0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x8
	.byte	0x5f
	.4byte	0x88
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x8
	.byte	0x61
	.4byte	0x305
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x8
	.byte	0x62
	.4byte	0x271
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c1
	.uleb128 0xc
	.4byte	0x315
	.4byte	0x315
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x31b
	.uleb128 0x13
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8
	.byte	0x75
	.4byte	0x341
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x8
	.byte	0x76
	.4byte	0x341
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x8
	.byte	0x77
	.4byte	0x88
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x78
	.byte	0x8
	.byte	0xb5
	.4byte	0x471
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x8
	.byte	0xb6
	.4byte	0x341
	.byte	0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x8
	.byte	0xb7
	.4byte	0x88
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x8
	.byte	0xb8
	.4byte	0x88
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x8
	.byte	0xb9
	.4byte	0x38
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x8
	.byte	0xba
	.4byte	0x38
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x8
	.byte	0xbb
	.4byte	0x31c
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x8
	.byte	0xbc
	.4byte	0x88
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x8
	.byte	0xc3
	.4byte	0x9d
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x8
	.byte	0xc5
	.4byte	0x5ec
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x8
	.byte	0xc7
	.4byte	0x616
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x8
	.byte	0xca
	.4byte	0x63a
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x8
	.byte	0xcb
	.4byte	0x654
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x8
	.byte	0xce
	.4byte	0x31c
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x8
	.byte	0xcf
	.4byte	0x341
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x8
	.byte	0xd0
	.4byte	0x88
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x8
	.byte	0xd3
	.4byte	0x65a
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x8
	.byte	0xd4
	.4byte	0x66a
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x8
	.byte	0xd7
	.4byte	0x31c
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x8
	.byte	0xda
	.4byte	0x88
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x8
	.byte	0xdb
	.4byte	0x9f
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x8
	.byte	0xde
	.4byte	0x48f
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x8
	.byte	0xe2
	.4byte	0x179
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x8
	.byte	0xe4
	.4byte	0x16e
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x8
	.byte	0xe5
	.4byte	0x88
	.byte	0x70
	.byte	0
	.uleb128 0x14
	.4byte	0x88
	.4byte	0x48f
	.uleb128 0x15
	.4byte	0x48f
	.uleb128 0x15
	.4byte	0x9d
	.uleb128 0x15
	.4byte	0x5da
	.uleb128 0x15
	.4byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x49a
	.uleb128 0x3
	.4byte	0x48f
	.uleb128 0x16
	.4byte	.LASF74
	.2byte	0x460
	.byte	0x8
	.2byte	0x23b
	.4byte	0x5da
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x23d
	.4byte	0x88
	.byte	0
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x242
	.4byte	0x6c1
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x242
	.4byte	0x6c1
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x242
	.4byte	0x6c1
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x244
	.4byte	0x88
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x245
	.4byte	0x8a3
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x248
	.4byte	0x88
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x249
	.4byte	0x8b8
	.byte	0x34
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x24b
	.4byte	0x88
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x24d
	.4byte	0x8c9
	.byte	0x3c
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x250
	.4byte	0x1e2
	.byte	0x40
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x251
	.4byte	0x88
	.byte	0x44
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x252
	.4byte	0x1e2
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x253
	.4byte	0x8cf
	.byte	0x4c
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x256
	.4byte	0x88
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x257
	.4byte	0x5da
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x27a
	.4byte	0x881
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x8
	.2byte	0x27e
	.4byte	0x2ff
	.2byte	0x148
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x27f
	.4byte	0x2c1
	.2byte	0x14c
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x283
	.4byte	0x8e0
	.2byte	0x2dc
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x288
	.4byte	0x686
	.2byte	0x2e0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x289
	.4byte	0x8ec
	.2byte	0x2f0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x28a
	.4byte	0x9d
	.2byte	0x458
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF97
	.uleb128 0x3
	.4byte	0x5e0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x471
	.uleb128 0x14
	.4byte	0x88
	.4byte	0x610
	.uleb128 0x15
	.4byte	0x48f
	.uleb128 0x15
	.4byte	0x9d
	.uleb128 0x15
	.4byte	0x610
	.uleb128 0x15
	.4byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5e7
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5f2
	.uleb128 0x14
	.4byte	0xaa
	.4byte	0x63a
	.uleb128 0x15
	.4byte	0x48f
	.uleb128 0x15
	.4byte	0x9d
	.uleb128 0x15
	.4byte	0xaa
	.uleb128 0x15
	.4byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x14
	.4byte	0x88
	.4byte	0x654
	.uleb128 0x15
	.4byte	0x48f
	.uleb128 0x15
	.4byte	0x9d
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x640
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x66a
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x67a
	.uleb128 0xd
	.4byte	0x8f
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x11f
	.4byte	0x347
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0xc
	.byte	0x8
	.2byte	0x123
	.4byte	0x6bb
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x125
	.4byte	0x6bb
	.byte	0
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x126
	.4byte	0x88
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x127
	.4byte	0x6c1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x686
	.uleb128 0x10
	.byte	0x4
	.4byte	0x67a
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0xe
	.byte	0x8
	.2byte	0x13f
	.4byte	0x6fc
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x140
	.4byte	0x6fc
	.byte	0
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x141
	.4byte	0x6fc
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x142
	.4byte	0x3f
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	0x3f
	.4byte	0x70c
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x8
	.2byte	0x25b
	.4byte	0x80d
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x25d
	.4byte	0x8f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x25e
	.4byte	0x5da
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x25f
	.4byte	0x80d
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x260
	.4byte	0x1f8
	.byte	0x24
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x261
	.4byte	0x88
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x262
	.4byte	0x81
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x263
	.4byte	0x6c7
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x264
	.4byte	0x16e
	.byte	0x68
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x265
	.4byte	0x16e
	.byte	0x70
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x266
	.4byte	0x16e
	.byte	0x78
	.uleb128 0x17
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x267
	.4byte	0x81d
	.byte	0x80
	.uleb128 0x17
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x268
	.4byte	0x82d
	.byte	0x88
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x269
	.4byte	0x88
	.byte	0xa0
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x26a
	.4byte	0x16e
	.byte	0xa4
	.uleb128 0x17
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x26b
	.4byte	0x16e
	.byte	0xac
	.uleb128 0x17
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x26c
	.4byte	0x16e
	.byte	0xb4
	.uleb128 0x17
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x26d
	.4byte	0x16e
	.byte	0xbc
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x26e
	.4byte	0x16e
	.byte	0xc4
	.uleb128 0x17
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x26f
	.4byte	0x88
	.byte	0xcc
	.byte	0
	.uleb128 0xc
	.4byte	0x5e0
	.4byte	0x81d
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.4byte	0x5e0
	.4byte	0x82d
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x5e0
	.4byte	0x83d
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x8
	.2byte	0x274
	.4byte	0x861
	.uleb128 0x17
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x277
	.4byte	0x861
	.byte	0
	.uleb128 0x17
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x278
	.4byte	0x871
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.4byte	0x341
	.4byte	0x871
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	0x8f
	.4byte	0x881
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x8
	.2byte	0x259
	.4byte	0x8a3
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x270
	.4byte	0x70c
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x279
	.4byte	0x83d
	.byte	0
	.uleb128 0xc
	.4byte	0x5e0
	.4byte	0x8b3
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF270
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8b3
	.uleb128 0x1e
	.4byte	0x8c9
	.uleb128 0x15
	.4byte	0x48f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8be
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0x1e
	.4byte	0x8e0
	.uleb128 0x15
	.4byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8e6
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0xc
	.4byte	0x67a
	.4byte	0x8fc
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x301
	.4byte	0x48f
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x302
	.4byte	0x495
	.uleb128 0x20
	.4byte	.LASF130
	.byte	0x9
	.byte	0x63
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF131
	.uleb128 0x3
	.4byte	0x91f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF132
	.uleb128 0x21
	.4byte	.LASF271
	.byte	0x5
	.byte	0x1
	.4byte	0x25
	.byte	0xa
	.2byte	0x299
	.4byte	0x95d
	.uleb128 0x22
	.4byte	.LASF133
	.sleb128 -1
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x2a4
	.4byte	0x932
	.uleb128 0xc
	.4byte	0x5e7
	.4byte	0x974
	.uleb128 0x24
	.byte	0
	.uleb128 0x3
	.4byte	0x969
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0xb
	.byte	0xa5
	.4byte	0x974
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0xc
	.byte	0x9a
	.4byte	0x56
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0xc
	.byte	0x9b
	.4byte	0x88
	.uleb128 0xc
	.4byte	0x5da
	.4byte	0x9aa
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0xc
	.byte	0x9e
	.4byte	0x99a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF142
	.uleb128 0x25
	.ascii	"u8\000"
	.byte	0xd
	.byte	0x46
	.4byte	0x2c
	.uleb128 0x25
	.ascii	"u16\000"
	.byte	0xd
	.byte	0x47
	.4byte	0x3f
	.uleb128 0x25
	.ascii	"u32\000"
	.byte	0xd
	.byte	0x48
	.4byte	0x68
	.uleb128 0x25
	.ascii	"s8\000"
	.byte	0xd
	.byte	0x62
	.4byte	0x25
	.uleb128 0x26
	.4byte	.LASF143
	.byte	0xd
	.byte	0x66
	.4byte	0x9f7
	.uleb128 0x5
	.byte	0x3
	.4byte	OAMmem
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9d1
	.uleb128 0x26
	.4byte	.LASF144
	.byte	0xd
	.byte	0x67
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	VRAM
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9c6
	.uleb128 0x26
	.4byte	.LASF145
	.byte	0xd
	.byte	0x68
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	OAMData
	.uleb128 0x26
	.4byte	.LASF146
	.byte	0xd
	.byte	0x69
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	BGPaletteMem
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0xd
	.byte	0x6a
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	OBJPaletteMem
	.uleb128 0x26
	.4byte	.LASF148
	.byte	0xd
	.byte	0x6b
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	BGTileMem
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0xd
	.byte	0x6c
	.4byte	0xa69
	.uleb128 0x5
	.byte	0x3
	.4byte	SaveData
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9bc
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0xd
	.byte	0x6d
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	hrt_offsetOAMData
	.uleb128 0x26
	.4byte	.LASF151
	.byte	0xd
	.byte	0x6e
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	hrt_offsetOAMPal
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0xd
	.byte	0x6f
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	hrt_offsetBGMap
	.uleb128 0x26
	.4byte	.LASF153
	.byte	0xd
	.byte	0x70
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	hrt_offsetBGTile
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0xd
	.byte	0x71
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	hrt_offsetBGPal
	.uleb128 0x27
	.ascii	"OAM\000"
	.byte	0xd
	.byte	0x72
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	OAM
	.uleb128 0x26
	.4byte	.LASF155
	.byte	0xd
	.byte	0x73
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	loop
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0xd
	.byte	0x75
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	FrontBuffer
	.uleb128 0x26
	.4byte	.LASF157
	.byte	0xd
	.byte	0x76
	.4byte	0xa0e
	.uleb128 0x5
	.byte	0x3
	.4byte	BackBuffer
	.uleb128 0x26
	.4byte	.LASF158
	.byte	0xd
	.byte	0x77
	.4byte	0x9bc
	.uleb128 0x5
	.byte	0x3
	.4byte	hrt_start
	.uleb128 0x19
	.4byte	.LASF159
	.byte	0x8
	.byte	0xd
	.2byte	0x1f0
	.4byte	0xb5b
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0xd
	.2byte	0x1f3
	.4byte	0x9c6
	.byte	0
	.uleb128 0x17
	.4byte	.LASF161
	.byte	0xd
	.2byte	0x1f4
	.4byte	0x9c6
	.byte	0x2
	.uleb128 0x17
	.4byte	.LASF162
	.byte	0xd
	.2byte	0x1f5
	.4byte	0x9c6
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF163
	.byte	0xd
	.2byte	0x1f6
	.4byte	0x9c6
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x1f8
	.4byte	0xb19
	.uleb128 0xc
	.4byte	0xb5b
	.4byte	0xb77
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x7f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF165
	.byte	0xd
	.2byte	0x214
	.4byte	0xb67
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.uleb128 0x1a
	.byte	0x10
	.byte	0xd
	.2byte	0x216
	.4byte	0xbc7
	.uleb128 0x17
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x218
	.4byte	0xbc7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF167
	.byte	0xd
	.2byte	0x219
	.4byte	0x88
	.byte	0x4
	.uleb128 0x29
	.ascii	"tic\000"
	.byte	0xd
	.2byte	0x21a
	.4byte	0x88
	.byte	0x8
	.uleb128 0x29
	.ascii	"end\000"
	.byte	0xd
	.2byte	0x21b
	.4byte	0x88
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x33
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x21c
	.4byte	0xb89
	.uleb128 0xc
	.4byte	0xbcd
	.4byte	0xbe9
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x18
	.byte	0
	.uleb128 0x28
	.4byte	.LASF169
	.byte	0xd
	.2byte	0x21c
	.4byte	0xbd9
	.uleb128 0x5
	.byte	0x3
	.4byte	sound
	.uleb128 0xc
	.4byte	0x926
	.4byte	0xc0c
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x167
	.byte	0
	.uleb128 0x3
	.4byte	0xbfb
	.uleb128 0x2b
	.ascii	"SIN\000"
	.byte	0xd
	.2byte	0x21d
	.4byte	0xc0c
	.uleb128 0x5
	.byte	0x3
	.4byte	SIN
	.uleb128 0x2b
	.ascii	"COS\000"
	.byte	0xd
	.2byte	0x21e
	.4byte	0xc0c
	.uleb128 0x5
	.byte	0x3
	.4byte	COS
	.uleb128 0x2b
	.ascii	"RAD\000"
	.byte	0xd
	.2byte	0x21f
	.4byte	0xc0c
	.uleb128 0x5
	.byte	0x3
	.4byte	RAD
	.uleb128 0xc
	.4byte	0x33
	.4byte	0xc58
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x2f7f
	.byte	0
	.uleb128 0x3
	.4byte	0xc47
	.uleb128 0x28
	.4byte	.LASF170
	.byte	0xd
	.2byte	0x220
	.4byte	0xc58
	.uleb128 0x5
	.byte	0x3
	.4byte	font_matrix
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xc80
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0xbff
	.byte	0
	.uleb128 0x3
	.4byte	0xc6f
	.uleb128 0x28
	.4byte	.LASF171
	.byte	0xd
	.2byte	0x221
	.4byte	0xc80
	.uleb128 0x5
	.byte	0x3
	.4byte	font_milkbottleTiles
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xca7
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0xc97
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0xd
	.2byte	0x222
	.4byte	0xca7
	.uleb128 0x5
	.byte	0x3
	.4byte	font_milkbottlePal
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0xd
	.2byte	0x223
	.4byte	0x315
	.uleb128 0x19
	.4byte	.LASF174
	.byte	0x8
	.byte	0xd
	.2byte	0x224
	.4byte	0xcf2
	.uleb128 0x17
	.4byte	.LASF175
	.byte	0xd
	.2byte	0x224
	.4byte	0xcbe
	.byte	0
	.uleb128 0x17
	.4byte	.LASF176
	.byte	0xd
	.2byte	0x224
	.4byte	0x9d1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0xcca
	.4byte	0xcfd
	.uleb128 0x24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0xd
	.2byte	0x237
	.4byte	0xcf2
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xd1a
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x11ff
	.byte	0
	.uleb128 0x3
	.4byte	0xd09
	.uleb128 0x28
	.4byte	.LASF178
	.byte	0xd
	.2byte	0x238
	.4byte	0xd1a
	.uleb128 0x5
	.byte	0x3
	.4byte	font_matrixBitmap
	.uleb128 0x19
	.4byte	.LASF179
	.byte	0x20
	.byte	0xd
	.2byte	0x23a
	.4byte	0xd80
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0xd
	.2byte	0x23c
	.4byte	0xd80
	.byte	0
	.uleb128 0x17
	.4byte	.LASF181
	.byte	0xd
	.2byte	0x23d
	.4byte	0x9d1
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF182
	.byte	0xd
	.2byte	0x23e
	.4byte	0x9c6
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF183
	.byte	0xd
	.2byte	0x23f
	.4byte	0x9c6
	.byte	0x16
	.uleb128 0x17
	.4byte	.LASF184
	.byte	0xd
	.2byte	0x240
	.4byte	0x81d
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	0x5e0
	.4byte	0xd90
	.uleb128 0xd
	.4byte	0x8f
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0xd
	.2byte	0x241
	.4byte	0xd31
	.uleb128 0x3
	.4byte	0xd90
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xdb2
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x1ff
	.byte	0
	.uleb128 0x3
	.4byte	0xda1
	.uleb128 0x20
	.4byte	.LASF185
	.byte	0xe
	.byte	0x1
	.4byte	0xdb2
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xdd2
	.uleb128 0xd
	.4byte	0x8f
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	0xdc2
	.uleb128 0x20
	.4byte	.LASF186
	.byte	0xe
	.byte	0x2
	.4byte	0xdd2
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xdf2
	.uleb128 0xd
	.4byte	0x8f
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	0xde2
	.uleb128 0x20
	.4byte	.LASF187
	.byte	0xe
	.byte	0x3
	.4byte	0xdf2
	.uleb128 0x20
	.4byte	.LASF188
	.byte	0xe
	.byte	0x4
	.4byte	0xdd2
	.uleb128 0x27
	.ascii	"x\000"
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	x
	.uleb128 0x27
	.ascii	"y\000"
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	y
	.uleb128 0x27
	.ascii	"rot\000"
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	rot
	.uleb128 0x26
	.4byte	.LASF189
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	x_scale
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	y_scale
	.uleb128 0x26
	.4byte	.LASF191
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	fxlevel
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	fxmode
	.uleb128 0x26
	.4byte	.LASF193
	.byte	0xe
	.byte	0x5
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	arpos
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0xe
	.byte	0x6
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	frames
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xeb3
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x801f
	.byte	0
	.uleb128 0x3
	.4byte	0xea2
	.uleb128 0x20
	.4byte	.LASF195
	.byte	0xe
	.byte	0x7
	.4byte	0xeb3
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xed4
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x7ff
	.byte	0
	.uleb128 0x3
	.4byte	0xec3
	.uleb128 0x20
	.4byte	.LASF196
	.byte	0xe
	.byte	0x8
	.4byte	0xed4
	.uleb128 0x20
	.4byte	.LASF197
	.byte	0xe
	.byte	0x9
	.4byte	0xdd2
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xf00
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x95ff
	.byte	0
	.uleb128 0x3
	.4byte	0xeef
	.uleb128 0x20
	.4byte	.LASF198
	.byte	0xe
	.byte	0xa
	.4byte	0xf00
	.uleb128 0x20
	.4byte	.LASF199
	.byte	0xe
	.byte	0xb
	.4byte	0xf00
	.uleb128 0x20
	.4byte	.LASF200
	.byte	0xe
	.byte	0xc
	.4byte	0xdd2
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xf39
	.uleb128 0x2c
	.4byte	0x8f
	.4byte	0x5026df
	.byte	0
	.uleb128 0x3
	.4byte	0xf26
	.uleb128 0x20
	.4byte	.LASF201
	.byte	0xe
	.byte	0xd
	.4byte	0xf39
	.uleb128 0x20
	.4byte	.LASF202
	.byte	0xe
	.byte	0xe
	.4byte	0xf00
	.uleb128 0x20
	.4byte	.LASF203
	.byte	0xe
	.byte	0xf
	.4byte	0xdd2
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xf70
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x43f
	.byte	0
	.uleb128 0x3
	.4byte	0xf5f
	.uleb128 0x20
	.4byte	.LASF204
	.byte	0xe
	.byte	0x10
	.4byte	0xf70
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xf91
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x3ff
	.byte	0
	.uleb128 0x3
	.4byte	0xf80
	.uleb128 0x20
	.4byte	.LASF205
	.byte	0xe
	.byte	0x11
	.4byte	0xf91
	.uleb128 0x20
	.4byte	.LASF206
	.byte	0xe
	.byte	0x12
	.4byte	0xdd2
	.uleb128 0x20
	.4byte	.LASF207
	.byte	0xe
	.byte	0x13
	.4byte	0xdb2
	.uleb128 0xc
	.4byte	0x46
	.4byte	0xfc7
	.uleb128 0xd
	.4byte	0x8f
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0xfb7
	.uleb128 0x20
	.4byte	.LASF208
	.byte	0xe
	.byte	0x14
	.4byte	0xfc7
	.uleb128 0x20
	.4byte	.LASF209
	.byte	0xe
	.byte	0x15
	.4byte	0xf91
	.uleb128 0x20
	.4byte	.LASF210
	.byte	0xe
	.byte	0x16
	.4byte	0xf91
	.uleb128 0xc
	.4byte	0x33
	.4byte	0xffe
	.uleb128 0x2a
	.4byte	0x8f
	.2byte	0x67f
	.byte	0
	.uleb128 0x3
	.4byte	0xfed
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0xe
	.byte	0x17
	.4byte	0xffe
	.uleb128 0x20
	.4byte	.LASF212
	.byte	0xe
	.byte	0x18
	.4byte	0xffe
	.uleb128 0x20
	.4byte	.LASF213
	.byte	0xe
	.byte	0x19
	.4byte	0xdd2
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x26
	.4byte	.LASF214
	.byte	0x1
	.byte	0x5
	.4byte	0x9dc
	.uleb128 0x5
	.byte	0x3
	.4byte	phase
	.uleb128 0x26
	.4byte	.LASF215
	.byte	0x1
	.byte	0x6
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	boiy
	.uleb128 0x26
	.4byte	.LASF216
	.byte	0x1
	.byte	0x6
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	boix
	.uleb128 0x27
	.ascii	"bgx\000"
	.byte	0x1
	.byte	0x7
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	bgx
	.uleb128 0x27
	.ascii	"bgy\000"
	.byte	0x1
	.byte	0x7
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	bgy
	.uleb128 0x26
	.4byte	.LASF217
	.byte	0x1
	.byte	0x8
	.4byte	0x9bc
	.uleb128 0x5
	.byte	0x3
	.4byte	g_newframe
	.uleb128 0x26
	.4byte	.LASF218
	.byte	0x1
	.byte	0xa
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	g_sram
	.uleb128 0xc
	.4byte	0x5da
	.4byte	0x10ba
	.uleb128 0xd
	.4byte	0x8f
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.ascii	"buf\000"
	.byte	0x1
	.byte	0xb
	.4byte	0x10aa
	.uleb128 0x5
	.byte	0x3
	.4byte	buf
	.uleb128 0x27
	.ascii	"p\000"
	.byte	0x1
	.byte	0xc
	.4byte	0x341
	.uleb128 0x5
	.byte	0x3
	.4byte	p
	.uleb128 0x2d
	.4byte	.LASF272
	.byte	0x1
	.byte	0xe
	.4byte	0x88
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f8
	.uleb128 0x2e
	.ascii	"dat\000"
	.byte	0x1
	.byte	0x15
	.4byte	0x25f8
	.4byte	.LLST0
	.uleb128 0x2f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x13d8
	.uleb128 0x30
	.4byte	.LASF219
	.byte	0x1
	.byte	0xe2
	.4byte	0x9bc
	.4byte	.LLST1
	.uleb128 0x30
	.4byte	.LASF220
	.byte	0x1
	.byte	0xe3
	.4byte	0x9bc
	.4byte	.LLST1
	.uleb128 0x30
	.4byte	.LASF221
	.byte	0x1
	.byte	0xe4
	.4byte	0x88
	.4byte	.LLST3
	.uleb128 0x31
	.4byte	.LVL42
	.4byte	0x25fe
	.4byte	0x1154
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL43
	.4byte	0x260a
	.4byte	0x11c0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL44
	.4byte	0x2616
	.4byte	0x1201
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL45
	.4byte	0x2622
	.4byte	0x1266
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL46
	.4byte	0x262e
	.4byte	0x127f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL47
	.4byte	0x263a
	.4byte	0x1292
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL48
	.4byte	0x2646
	.4byte	0x12a7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x440
	.byte	0
	.uleb128 0x31
	.4byte	.LVL49
	.4byte	0x2652
	.4byte	0x12bc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x31
	.4byte	.LVL50
	.4byte	0x265e
	.4byte	0x12d1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.uleb128 0x31
	.4byte	.LVL51
	.4byte	0x266a
	.4byte	0x12e4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x31
	.4byte	.LVL52
	.4byte	0x2676
	.4byte	0x130d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL53
	.4byte	0x2682
	.4byte	0x1380
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 3
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 2
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 40
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL54
	.4byte	0x268e
	.uleb128 0x31
	.4byte	.LVL58
	.4byte	0x2676
	.4byte	0x13b1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL59
	.4byte	0x269a
	.uleb128 0x31
	.4byte	.LVL60
	.4byte	0x26a6
	.4byte	0x13ce
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL61
	.4byte	0x268e
	.byte	0
	.uleb128 0x31
	.4byte	.LVL0
	.4byte	0x26b2
	.4byte	0x13eb
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL1
	.4byte	0x26be
	.4byte	0x13fe
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL2
	.4byte	0x26be
	.4byte	0x1411
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL3
	.4byte	0x26be
	.4byte	0x1424
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x31
	.4byte	.LVL4
	.4byte	0x26be
	.4byte	0x1437
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x33
	.4byte	.LVL5
	.4byte	0x26ca
	.uleb128 0x31
	.4byte	.LVL8
	.4byte	0x26d6
	.4byte	0x1463
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5622
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.4byte	0x5026e0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL9
	.4byte	0x260a
	.4byte	0x14ce
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL10
	.4byte	0x2682
	.4byte	0x1541
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 40
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL11
	.4byte	0x265e
	.4byte	0x1555
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x31
	.4byte	.LVL12
	.4byte	0x266a
	.4byte	0x1569
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL13
	.4byte	0x26e2
	.4byte	0x158c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x98
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x31
	.4byte	.LVL14
	.4byte	0x260a
	.4byte	0x15ed
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL15
	.4byte	0x26e2
	.4byte	0x160e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x31
	.4byte	.LVL16
	.4byte	0x26e2
	.4byte	0x162f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x31
	.4byte	.LVL17
	.4byte	0x26e2
	.4byte	0x1650
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x31
	.4byte	.LVL18
	.4byte	0x26e2
	.4byte	0x1671
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x31
	.4byte	.LVL19
	.4byte	0x26e2
	.4byte	0x1693
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x31
	.4byte	.LVL20
	.4byte	0x26e2
	.4byte	0x16b5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x31
	.4byte	.LVL21
	.4byte	0x26e2
	.4byte	0x16d7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x31
	.4byte	.LVL22
	.4byte	0x26e2
	.4byte	0x16f9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL23
	.4byte	0x26e2
	.4byte	0x171b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL24
	.4byte	0x26e2
	.4byte	0x173d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x31
	.4byte	.LVL25
	.4byte	0x26e2
	.4byte	0x175f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x5a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.uleb128 0x31
	.4byte	.LVL26
	.4byte	0x26e2
	.4byte	0x1781
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x63
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.uleb128 0x31
	.4byte	.LVL27
	.4byte	0x26e2
	.4byte	0x17a3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x31
	.4byte	.LVL28
	.4byte	0x26e2
	.4byte	0x17c5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x31
	.4byte	.LVL29
	.4byte	0x26e2
	.4byte	0x17e7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x31
	.4byte	.LVL30
	.4byte	0x26e2
	.4byte	0x1809
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x87
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x31
	.4byte	.LVL31
	.4byte	0x26e2
	.4byte	0x182b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x90
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x33
	.4byte	.LVL32
	.4byte	0x268e
	.uleb128 0x31
	.4byte	.LVL33
	.4byte	0x26ee
	.4byte	0x1850
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL34
	.4byte	0x268e
	.uleb128 0x33
	.4byte	.LVL35
	.4byte	0x269a
	.uleb128 0x31
	.4byte	.LVL36
	.4byte	0x26fa
	.4byte	0x1887
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL37
	.4byte	0x2706
	.4byte	0x18a6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x31
	.4byte	.LVL38
	.4byte	0x2712
	.4byte	0x18ba
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL39
	.4byte	0x271e
	.4byte	0x18cf
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x37c8
	.byte	0
	.uleb128 0x31
	.4byte	.LVL40
	.4byte	0x2712
	.4byte	0x18e3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL41
	.4byte	0x2616
	.4byte	0x191d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL66
	.4byte	0x272a
	.uleb128 0x33
	.4byte	.LVL67
	.4byte	0x272a
	.uleb128 0x31
	.4byte	.LVL68
	.4byte	0x2736
	.4byte	0x1946
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.byte	0
	.uleb128 0x33
	.4byte	.LVL69
	.4byte	0x2742
	.uleb128 0x33
	.4byte	.LVL70
	.4byte	0x274e
	.uleb128 0x31
	.4byte	.LVL71
	.4byte	0x2616
	.4byte	0x1997
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL72
	.4byte	0x2616
	.4byte	0x19d5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL73
	.4byte	0x260a
	.4byte	0x1a3d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL74
	.4byte	0x263a
	.4byte	0x1a51
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL75
	.4byte	0x2646
	.4byte	0x1a66
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x680
	.byte	0
	.uleb128 0x31
	.4byte	.LVL76
	.4byte	0x2646
	.4byte	0x1a7b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x680
	.byte	0
	.uleb128 0x31
	.4byte	.LVL77
	.4byte	0x2652
	.4byte	0x1a90
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x31
	.4byte	.LVL78
	.4byte	0x2652
	.4byte	0x1aa5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x31
	.4byte	.LVL80
	.4byte	0x2676
	.4byte	0x1acc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL81
	.4byte	0x2676
	.4byte	0x1af3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL82
	.4byte	0x269a
	.uleb128 0x33
	.4byte	.LVL83
	.4byte	0x269a
	.uleb128 0x31
	.4byte	.LVL84
	.4byte	0x2676
	.4byte	0x1b2d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL85
	.4byte	0x2676
	.4byte	0x1b55
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL86
	.4byte	0x260a
	.4byte	0x1bbd
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL88
	.4byte	0x26fa
	.4byte	0x1be3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x79
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7ff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL89
	.4byte	0x262e
	.4byte	0x1bfc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL90
	.4byte	0x260a
	.4byte	0x1c5a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL91
	.4byte	0x275a
	.4byte	0x1c77
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL92
	.4byte	0x2766
	.4byte	0x1c94
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL93
	.4byte	0x2772
	.4byte	0x1cb3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7c00
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL94
	.4byte	0x277e
	.4byte	0x1cd2
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL95
	.4byte	0x278a
	.4byte	0x1cf1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL96
	.4byte	0x2796
	.4byte	0x1d10
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7c1f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL97
	.4byte	0x27a2
	.4byte	0x1d2f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x29f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL98
	.4byte	0x27ae
	.4byte	0x1d4e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7fe0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL101
	.4byte	0x262e
	.4byte	0x1d66
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL102
	.4byte	0x27ba
	.4byte	0x1d80
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL103
	.4byte	0x26e2
	.4byte	0x1d9e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL104
	.4byte	0x260a
	.4byte	0x1dfc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL105
	.4byte	0x269a
	.uleb128 0x31
	.4byte	.LVL106
	.4byte	0x27c9
	.4byte	0x1e18
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL107
	.4byte	0x27c9
	.4byte	0x1e2b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL108
	.4byte	0x27c9
	.4byte	0x1e3e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x31
	.4byte	.LVL109
	.4byte	0x27c9
	.4byte	0x1e51
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL110
	.4byte	0x27d5
	.4byte	0x1e6f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.4byte	0x6000ed0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0xf00
	.byte	0
	.uleb128 0x31
	.4byte	.LVL111
	.4byte	0x27ba
	.4byte	0x1e89
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL112
	.4byte	0x26e2
	.4byte	0x1ea7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL113
	.4byte	0x27d5
	.4byte	0x1ec5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.4byte	0x6000ed0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0xf00
	.byte	0
	.uleb128 0x31
	.4byte	.LVL114
	.4byte	0x27ba
	.4byte	0x1edf
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL115
	.4byte	0x26e2
	.4byte	0x1efd
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL116
	.4byte	0x260a
	.4byte	0x1f67
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL117
	.4byte	0x27e1
	.4byte	0x1f8a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC103
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL118
	.4byte	0x27ed
	.uleb128 0x31
	.4byte	.LVL119
	.4byte	0x27e1
	.4byte	0x1fb6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL120
	.4byte	0x27ed
	.uleb128 0x31
	.4byte	.LVL121
	.4byte	0x260a
	.4byte	0x201d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL122
	.4byte	0x27f9
	.4byte	0x2040
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.4byte	.LVL123
	.4byte	0x263a
	.4byte	0x2054
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL124
	.4byte	0x2682
	.4byte	0x20c5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 40
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL125
	.4byte	0x260a
	.4byte	0x212d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL126
	.4byte	0x265e
	.4byte	0x2142
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x31
	.4byte	.LVL127
	.4byte	0x266a
	.4byte	0x2156
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL128
	.4byte	0x268e
	.uleb128 0x31
	.4byte	.LVL129
	.4byte	0x2805
	.4byte	0x2183
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL130
	.4byte	0x262e
	.4byte	0x219b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL131
	.4byte	0x26e2
	.4byte	0x21bc
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC130
	.byte	0
	.uleb128 0x31
	.4byte	.LVL133
	.4byte	0x26ee
	.4byte	0x21d3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	sprites
	.byte	0
	.uleb128 0x34
	.4byte	.LVL134
	.uleb128 0x31
	.4byte	.LVL135
	.4byte	0x2805
	.4byte	0x21eb
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL136
	.4byte	0x269a
	.uleb128 0x33
	.4byte	.LVL137
	.4byte	0x268e
	.uleb128 0x31
	.4byte	.LVL138
	.4byte	0x2811
	.4byte	0x2218
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0
	.uleb128 0x31
	.4byte	.LVL140
	.4byte	0x2616
	.4byte	0x2259
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 1
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL141
	.4byte	0x260a
	.4byte	0x22c5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL142
	.4byte	0x263a
	.4byte	0x22d9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL143
	.4byte	0x2646
	.4byte	0x22ee
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8020
	.byte	0
	.uleb128 0x31
	.4byte	.LVL144
	.4byte	0x2652
	.4byte	0x2303
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x31
	.4byte	.LVL145
	.4byte	0x2676
	.4byte	0x232c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL146
	.4byte	0x269a
	.uleb128 0x33
	.4byte	.LVL147
	.4byte	0x269a
	.uleb128 0x31
	.4byte	.LVL148
	.4byte	0x2676
	.4byte	0x2366
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL149
	.4byte	0x260a
	.4byte	0x23ce
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL150
	.4byte	0x27f9
	.4byte	0x23f1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9600
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.4byte	.LVL151
	.4byte	0x260a
	.4byte	0x245c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL152
	.4byte	0x2622
	.4byte	0x24c1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL153
	.4byte	0x26e2
	.4byte	0x24e4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x90
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC114
	.byte	0
	.uleb128 0x31
	.4byte	.LVL154
	.4byte	0x26e2
	.4byte	0x2507
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x98
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.byte	0
	.uleb128 0x33
	.4byte	.LVL155
	.4byte	0x2811
	.uleb128 0x31
	.4byte	.LVL156
	.4byte	0x271e
	.4byte	0x2523
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x33
	.4byte	.LVL157
	.4byte	0x2811
	.uleb128 0x31
	.4byte	.LVL158
	.4byte	0x271e
	.4byte	0x253f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x31
	.4byte	.LVL159
	.4byte	0x260a
	.4byte	0x259d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL160
	.4byte	0x27f9
	.4byte	0x25c0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.4byte	.LVL161
	.4byte	0x263a
	.4byte	0x25d4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL162
	.4byte	0x269a
	.uleb128 0x35
	.4byte	.LVL163
	.4byte	0x281d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xbb
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xd9c
	.uleb128 0x36
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0xd
	.2byte	0x2b5
	.uleb128 0x36
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xd
	.2byte	0x2aa
	.uleb128 0x36
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xd
	.2byte	0x2ac
	.uleb128 0x36
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0xd
	.2byte	0x2a9
	.uleb128 0x36
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xd
	.2byte	0x294
	.uleb128 0x36
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xd
	.2byte	0x291
	.uleb128 0x36
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xd
	.2byte	0x2a2
	.uleb128 0x36
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xd
	.2byte	0x290
	.uleb128 0x36
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xd
	.2byte	0x281
	.uleb128 0x36
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xd
	.2byte	0x280
	.uleb128 0x36
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0xd
	.2byte	0x274
	.uleb128 0x36
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xd
	.2byte	0x27f
	.uleb128 0x36
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xd
	.2byte	0x27e
	.uleb128 0x36
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xd
	.2byte	0x2b8
	.uleb128 0x36
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0xd
	.2byte	0x2b2
	.uleb128 0x36
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xd
	.2byte	0x2a6
	.uleb128 0x36
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xd
	.2byte	0x2c0
	.uleb128 0x36
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0xd
	.2byte	0x248
	.uleb128 0x36
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0xd
	.2byte	0x27c
	.uleb128 0x36
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xd
	.2byte	0x28a
	.uleb128 0x36
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xd
	.2byte	0x283
	.uleb128 0x36
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xd
	.2byte	0x28d
	.uleb128 0x36
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0xd
	.2byte	0x28e
	.uleb128 0x36
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0xd
	.2byte	0x27d
	.uleb128 0x36
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0xd
	.2byte	0x28c
	.uleb128 0x36
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0xd
	.2byte	0x2bc
	.uleb128 0x36
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0xd
	.2byte	0x2b6
	.uleb128 0x36
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0xd
	.2byte	0x2bd
	.uleb128 0x36
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0xd
	.2byte	0x2b9
	.uleb128 0x36
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0xd
	.2byte	0x297
	.uleb128 0x36
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0xd
	.2byte	0x298
	.uleb128 0x36
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0xd
	.2byte	0x299
	.uleb128 0x36
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0xd
	.2byte	0x29b
	.uleb128 0x36
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0xd
	.2byte	0x29a
	.uleb128 0x36
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xd
	.2byte	0x29d
	.uleb128 0x36
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xd
	.2byte	0x29c
	.uleb128 0x36
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0xd
	.2byte	0x2ad
	.uleb128 0x37
	.4byte	.LASF273
	.4byte	.LASF274
	.byte	0xf
	.byte	0
	.4byte	.LASF273
	.uleb128 0x36
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0xd
	.2byte	0x2bf
	.uleb128 0x36
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0xd
	.2byte	0x2b7
	.uleb128 0x36
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0xd
	.2byte	0x24a
	.uleb128 0x36
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0xd
	.2byte	0x27a
	.uleb128 0x36
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0xd
	.2byte	0x2a7
	.uleb128 0x36
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0xd
	.2byte	0x282
	.uleb128 0x36
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0xd
	.2byte	0x2a8
	.uleb128 0x36
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0xd
	.2byte	0x28f
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL87
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL139
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF268:
	.ascii	"main.c\000"
.LASF135:
	.ascii	"__fdlibm_xopen\000"
.LASF171:
	.ascii	"font_milkbottleTiles\000"
.LASF214:
	.ascii	"phase\000"
.LASF165:
	.ascii	"sprites\000"
.LASF46:
	.ascii	"_on_exit_args\000"
.LASF143:
	.ascii	"OAMmem\000"
.LASF140:
	.ascii	"_daylight\000"
.LASF198:
	.ascii	"suchBitmap\000"
.LASF144:
	.ascii	"VRAM\000"
.LASF115:
	.ascii	"_wctomb_state\000"
.LASF112:
	.ascii	"_r48\000"
.LASF164:
	.ascii	"OAMEntry\000"
.LASF218:
	.ascii	"g_sram\000"
.LASF246:
	.ascii	"hrt_SleepF\000"
.LASF117:
	.ascii	"_signal_buf\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF251:
	.ascii	"hrt_ScanLines\000"
.LASF60:
	.ascii	"_lbfsize\000"
.LASF58:
	.ascii	"_flags\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF267:
	.ascii	"GNU C11 7.1.0 -mlong-calls -mcpu=arm7tdmi -mtune=ar"
	.ascii	"m7tdmi -marm -mthumb -mthumb-interwork -g -O3 -ffas"
	.ascii	"t-math -fomit-frame-pointer -faggressive-loop-optim"
	.ascii	"izations\000"
.LASF75:
	.ascii	"_errno\000"
.LASF253:
	.ascii	"hrt_RightWipe\000"
.LASF212:
	.ascii	"l1_Tiles\000"
.LASF244:
	.ascii	"hrt_GetPixel\000"
.LASF209:
	.ascii	"l1_Map\000"
.LASF175:
	.ascii	"handler\000"
.LASF242:
	.ascii	"hrt_SetOBJXY\000"
.LASF21:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF62:
	.ascii	"_read\000"
.LASF187:
	.ascii	"arrowTiles\000"
.LASF119:
	.ascii	"_mbrlen_state\000"
.LASF215:
	.ascii	"boiy\000"
.LASF225:
	.ascii	"hrt_SetFXMode\000"
.LASF166:
	.ascii	"song\000"
.LASF77:
	.ascii	"_stdout\000"
.LASF222:
	.ascii	"hrt_FillPalette\000"
.LASF14:
	.ascii	"_fpos_t\000"
.LASF53:
	.ascii	"_fns\000"
.LASF61:
	.ascii	"_cookie\000"
.LASF191:
	.ascii	"fxlevel\000"
.LASF154:
	.ascii	"hrt_offsetBGPal\000"
.LASF31:
	.ascii	"_Bigint\000"
.LASF257:
	.ascii	"hrt_CircleWipe\000"
.LASF43:
	.ascii	"__tm_wday\000"
.LASF217:
	.ascii	"g_newframe\000"
.LASF269:
	.ascii	"C:\\Users\\nickm\\Desktop\\Code\\Game Boy Advance\\"
	.ascii	"Heart GBA Lib\\demo\000"
.LASF85:
	.ascii	"_result\000"
.LASF190:
	.ascii	"y_scale\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF39:
	.ascii	"__tm_hour\000"
.LASF25:
	.ascii	"__count\000"
.LASF132:
	.ascii	"float\000"
.LASF38:
	.ascii	"__tm_min\000"
.LASF128:
	.ascii	"_impure_ptr\000"
.LASF255:
	.ascii	"hrt_TopWipe\000"
.LASF125:
	.ascii	"_nextf\000"
.LASF200:
	.ascii	"plasmaPalette\000"
.LASF102:
	.ascii	"_rand48\000"
.LASF168:
	.ascii	"sounds\000"
.LASF86:
	.ascii	"_result_k\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF241:
	.ascii	"hrt_PrintOnBitmap\000"
.LASF108:
	.ascii	"_asctime_buf\000"
.LASF57:
	.ascii	"__sFILE\000"
.LASF35:
	.ascii	"_wds\000"
.LASF210:
	.ascii	"l2_Map\000"
.LASF98:
	.ascii	"__FILE\000"
.LASF136:
	.ascii	"__fdlibm_posix\000"
.LASF69:
	.ascii	"_offset\000"
.LASF243:
	.ascii	"hrt_DrawPixel\000"
.LASF155:
	.ascii	"loop\000"
.LASF80:
	.ascii	"_emergency\000"
.LASF20:
	.ascii	"counter\000"
.LASF177:
	.ascii	"IntrTable\000"
.LASF37:
	.ascii	"__tm_sec\000"
.LASF230:
	.ascii	"hrt_LoadOBJGFX\000"
.LASF130:
	.ascii	"suboptarg\000"
.LASF44:
	.ascii	"__tm_yday\000"
.LASF79:
	.ascii	"_inc\000"
.LASF52:
	.ascii	"_ind\000"
.LASF32:
	.ascii	"_next\000"
.LASF121:
	.ascii	"_mbsrtowcs_state\000"
.LASF141:
	.ascii	"_tzname\000"
.LASF158:
	.ascii	"hrt_start\000"
.LASF240:
	.ascii	"hrt_InitSound\000"
.LASF26:
	.ascii	"__value\000"
.LASF87:
	.ascii	"_p5s\000"
.LASF149:
	.ascii	"SaveData\000"
.LASF233:
	.ascii	"hrt_CreateOBJ\000"
.LASF19:
	.ascii	"thread_tag\000"
.LASF123:
	.ascii	"_wcsrtombs_state\000"
.LASF113:
	.ascii	"_mblen_state\000"
.LASF97:
	.ascii	"char\000"
.LASF40:
	.ascii	"__tm_mday\000"
.LASF219:
	.ascii	"g_EffectValueA\000"
.LASF93:
	.ascii	"_sig_func\000"
.LASF120:
	.ascii	"_mbrtowc_state\000"
.LASF92:
	.ascii	"_atexit0\000"
.LASF188:
	.ascii	"arrowPal\000"
.LASF262:
	.ascii	"hrt_LZ77UnCompVRAM\000"
.LASF266:
	.ascii	"hrt_CyclePalette\000"
.LASF153:
	.ascii	"hrt_offsetBGTile\000"
.LASF28:
	.ascii	"_flock_t\000"
.LASF194:
	.ascii	"frames\000"
.LASF156:
	.ascii	"FrontBuffer\000"
.LASF23:
	.ascii	"__wch\000"
.LASF101:
	.ascii	"_iobs\000"
.LASF199:
	.ascii	"plasmaBitmap\000"
.LASF220:
	.ascii	"g_EffectValueB\000"
.LASF258:
	.ascii	"hrt_LineWipe\000"
.LASF65:
	.ascii	"_close\000"
.LASF83:
	.ascii	"__sdidinit\000"
.LASF265:
	.ascii	"hrt_SetFXLevel\000"
.LASF170:
	.ascii	"font_matrix\000"
.LASF236:
	.ascii	"hrt_SetFXAlphaLevel\000"
.LASF139:
	.ascii	"_timezone\000"
.LASF76:
	.ascii	"_stdin\000"
.LASF110:
	.ascii	"_gamma_signgam\000"
.LASF30:
	.ascii	"__lock_t\000"
.LASF9:
	.ascii	"long long int\000"
.LASF195:
	.ascii	"bg_hillTiles\000"
.LASF145:
	.ascii	"OAMData\000"
.LASF228:
	.ascii	"hrt_LoadBGTiles\000"
.LASF55:
	.ascii	"_base\000"
.LASF18:
	.ascii	"lock\000"
.LASF88:
	.ascii	"_freelist\000"
.LASF96:
	.ascii	"deviceData\000"
.LASF104:
	.ascii	"_mult\000"
.LASF29:
	.ascii	"__ULong\000"
.LASF134:
	.ascii	"__fdlibm_svid\000"
.LASF122:
	.ascii	"_wcrtomb_state\000"
.LASF59:
	.ascii	"_file\000"
.LASF169:
	.ascii	"sound\000"
.LASF147:
	.ascii	"OBJPaletteMem\000"
.LASF226:
	.ascii	"hrt_FillScreen\000"
.LASF221:
	.ascii	"g_EffectIncrease\000"
.LASF84:
	.ascii	"__cleanup\000"
.LASF137:
	.ascii	"__fdlib_version\000"
.LASF27:
	.ascii	"_mbstate_t\000"
.LASF157:
	.ascii	"BackBuffer\000"
.LASF45:
	.ascii	"__tm_isdst\000"
.LASF229:
	.ascii	"hrt_LoadBGMap\000"
.LASF176:
	.ascii	"mask\000"
.LASF232:
	.ascii	"hrt_EditBG\000"
.LASF261:
	.ascii	"gbfs_get_obj\000"
.LASF124:
	.ascii	"_h_errno\000"
.LASF273:
	.ascii	"sprintf\000"
.LASF204:
	.ascii	"balls_Tiles\000"
.LASF142:
	.ascii	"_Bool\000"
.LASF179:
	.ascii	"GBFS_FILE\000"
.LASF41:
	.ascii	"__tm_mon\000"
.LASF8:
	.ascii	"__int64_t\000"
.LASF185:
	.ascii	"blockTiles\000"
.LASF234:
	.ascii	"hrt_CopyOAM\000"
.LASF12:
	.ascii	"long double\000"
.LASF247:
	.ascii	"hrt_Suspend\000"
.LASF17:
	.ascii	"_LOCK_T\000"
.LASF189:
	.ascii	"x_scale\000"
.LASF151:
	.ascii	"hrt_offsetOAMPal\000"
.LASF272:
	.ascii	"main\000"
.LASF63:
	.ascii	"_write\000"
.LASF216:
	.ascii	"boix\000"
.LASF51:
	.ascii	"_atexit\000"
.LASF72:
	.ascii	"_mbstate\000"
.LASF183:
	.ascii	"dir_nmemb\000"
.LASF2:
	.ascii	"short int\000"
.LASF263:
	.ascii	"hrt_DMA_Copy\000"
.LASF239:
	.ascii	"find_first_gbfs_file\000"
.LASF4:
	.ascii	"long int\000"
.LASF173:
	.ascii	"IntFn\000"
.LASF205:
	.ascii	"balls_Map\000"
.LASF231:
	.ascii	"hrt_LoadOBJPal\000"
.LASF237:
	.ascii	"hrt_Init\000"
.LASF95:
	.ascii	"__sf\000"
.LASF34:
	.ascii	"_sign\000"
.LASF208:
	.ascii	"busterPal\000"
.LASF70:
	.ascii	"_data\000"
.LASF24:
	.ascii	"__wchb\000"
.LASF129:
	.ascii	"_global_impure_ptr\000"
.LASF182:
	.ascii	"dir_off\000"
.LASF227:
	.ascii	"hrt_LoadBGPal\000"
.LASF42:
	.ascii	"__tm_year\000"
.LASF250:
	.ascii	"hrt_ColdReset\000"
.LASF196:
	.ascii	"bg_hillMap\000"
.LASF193:
	.ascii	"arpos\000"
.LASF133:
	.ascii	"__fdlibm_ieee\000"
.LASF248:
	.ascii	"hrt_AGBPrint\000"
.LASF109:
	.ascii	"_localtime_buf\000"
.LASF127:
	.ascii	"_unused\000"
.LASF91:
	.ascii	"_new\000"
.LASF252:
	.ascii	"hrt_LeftWipe\000"
.LASF89:
	.ascii	"_cvtlen\000"
.LASF33:
	.ascii	"_maxwds\000"
.LASF116:
	.ascii	"_l64a_buf\000"
.LASF260:
	.ascii	"hrt_Memcpy\000"
.LASF180:
	.ascii	"magic\000"
.LASF224:
	.ascii	"hrt_ConfigBG\000"
.LASF68:
	.ascii	"_blksize\000"
.LASF36:
	.ascii	"__tm\000"
.LASF71:
	.ascii	"_lock\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF160:
	.ascii	"attribute0\000"
.LASF161:
	.ascii	"attribute1\000"
.LASF162:
	.ascii	"attribute2\000"
.LASF163:
	.ascii	"attribute3\000"
.LASF150:
	.ascii	"hrt_offsetOAMData\000"
.LASF100:
	.ascii	"_niobs\000"
.LASF22:
	.ascii	"wint_t\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF181:
	.ascii	"total_len\000"
.LASF146:
	.ascii	"BGPaletteMem\000"
.LASF48:
	.ascii	"_dso_handle\000"
.LASF238:
	.ascii	"hrt_LoadByte\000"
.LASF254:
	.ascii	"hrt_BottomWipe\000"
.LASF223:
	.ascii	"hrt_SetDSPMode\000"
.LASF201:
	.ascii	"hrt_snd\000"
.LASF90:
	.ascii	"_cvtbuf\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF118:
	.ascii	"_getdate_err\000"
.LASF213:
	.ascii	"master_Palette\000"
.LASF105:
	.ascii	"_add\000"
.LASF235:
	.ascii	"hrt_VblankIntrWait\000"
.LASF211:
	.ascii	"l2_Tiles\000"
.LASF178:
	.ascii	"font_matrixBitmap\000"
.LASF186:
	.ascii	"blockPal\000"
.LASF167:
	.ascii	"frequency\000"
.LASF54:
	.ascii	"__sbuf\000"
.LASF148:
	.ascii	"BGTileMem\000"
.LASF99:
	.ascii	"_glue\000"
.LASF271:
	.ascii	"__fdlibm_version\000"
.LASF202:
	.ascii	"conceptBitmap\000"
.LASF94:
	.ascii	"__sglue\000"
.LASF107:
	.ascii	"_strtok_last\000"
.LASF114:
	.ascii	"_mbtowc_state\000"
.LASF82:
	.ascii	"_locale\000"
.LASF138:
	.ascii	"_ctype_\000"
.LASF47:
	.ascii	"_fnargs\000"
.LASF245:
	.ascii	"hrt_PlaySoundFIFO\000"
.LASF0:
	.ascii	"signed char\000"
.LASF174:
	.ascii	"IntTable\000"
.LASF206:
	.ascii	"balls_Palette\000"
.LASF74:
	.ascii	"_reent\000"
.LASF203:
	.ascii	"conceptPal\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF256:
	.ascii	"hrt_CoolScanLines\000"
.LASF172:
	.ascii	"font_milkbottlePal\000"
.LASF197:
	.ascii	"bg_hillPal\000"
.LASF159:
	.ascii	"tagOAMEntry\000"
.LASF249:
	.ascii	"hrt_EZ4Exit\000"
.LASF184:
	.ascii	"reserved\000"
.LASF49:
	.ascii	"_fntypes\000"
.LASF56:
	.ascii	"_size\000"
.LASF131:
	.ascii	"double\000"
.LASF13:
	.ascii	"_off_t\000"
.LASF67:
	.ascii	"_nbuf\000"
.LASF106:
	.ascii	"_unused_rand\000"
.LASF207:
	.ascii	"busterTiles\000"
.LASF81:
	.ascii	"_unspecified_locale_info\000"
.LASF274:
	.ascii	"__builtin_sprintf\000"
.LASF73:
	.ascii	"_flags2\000"
.LASF259:
	.ascii	"hrt_SaveByte\000"
.LASF50:
	.ascii	"_is_cxa\000"
.LASF103:
	.ascii	"_seed\000"
.LASF111:
	.ascii	"_rand_next\000"
.LASF270:
	.ascii	"__locale_t\000"
.LASF264:
	.ascii	"hrt_AffineOBJ\000"
.LASF64:
	.ascii	"_seek\000"
.LASF152:
	.ascii	"hrt_offsetBGMap\000"
.LASF78:
	.ascii	"_stderr\000"
.LASF126:
	.ascii	"_nmalloc\000"
.LASF66:
	.ascii	"_ubuf\000"
.LASF192:
	.ascii	"fxmode\000"
	.ident	"GCC: (devkitARM release 47) 7.1.0"
