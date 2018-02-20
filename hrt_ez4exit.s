 .align
 .pool
 .text
 .align
 .pool
 .global hrt_EZ4Exit
 REG_BASE      = 0x4000000 
 REG_DISPCNT      = 0x00 
 REG_P1CNT      = 0x132 
  REG_DM0CNT_H   = 0xBA 
  REG_DM1CNT_H   = 0xC6 
    REG_DM2CNT_H   = 0xD2
  REG_DM3CNT_H   = 0xDE
   REG_SGCNT_L      = 0x80 
   .arm
hrt_EZ4Exit:
	mov r1,#REG_BASE
	mov r0,#0
	strh r0,[r1,#REG_DM0CNT_H]	@stop all DMA
	strh r0,[r1,#REG_DM1CNT_H]
	strh r0,[r1,#REG_DM2CNT_H]
	strh r0,[r1,#REG_DM3CNT_H]
	add r1,r1,#0x200
	str r0,[r1,#8]		@interrupts off
	mov		r0, #0
	ldr		r1,=0x3007ffa	@must be 0 before swi 0x00 is run, otherwise it tries to start from 0x02000000.
	strh		r0,[r1]
	mov		r0, #8		@VRAM clear
	swi		0x01
	swi		0x00
	bx lr
