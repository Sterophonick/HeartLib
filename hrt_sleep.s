.global hrt_Suspend
 .align
 .pool
 .text
 .align
 .pool
 REG_BASE      = 0x4000000 
 REG_DISPCNT      = 0x00 
 REG_P1CNT      = 0x132 
  REG_DM0CNT_H   = 0xBA 
  REG_DM1CNT_H   = 0xC6 
  REG_DM3CNT_H   = 0xDE
   REG_SGCNT_L      = 0x80 
   .arm
hrt_Suspend:
	mov r3,#REG_BASE
	strh r3,[r3,#REG_DM0CNT_H]		@DMA0 stop
	strh r3,[r3,#REG_DM1CNT_H]		@DMA1 stop
	strh r3,[r3,#REG_DM3CNT_H]		@DMA3 stop
	ldr r1,=REG_P1CNT
	ldr r0,=0xc00c			@interrupt on start+sel
	strh r0,[r3,r1]
	ldrh r1,[r3,#REG_SGCNT_L]
	strh r3,[r3,#REG_SGCNT_L]	@sound off
	ldrh r0,[r3,#REG_DISPCNT]
	orr r0,r0,#0x80
	strh r0,[r3,#REG_DISPCNT]	@LCD off
	swi 0x030000
	ldrh r0,[r3,#REG_DISPCNT]
	bic r0,r0,#0x80
	strh r0,[r3,#REG_DISPCNT]	@LCD on
	strh r1,[r3,#REG_SGCNT_L]	@sound on
	bx lr
