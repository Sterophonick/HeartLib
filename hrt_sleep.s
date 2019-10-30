/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
.global sleep12
.align
.pool
.text
REG_BASE      = 0x4000000 
REG_DISPCNT      = 0x00 
REG_P1CNT      = 0x132 
REG_DM0CNT_H   = 0xBA 
REG_DM1CNT_H   = 0xC6 
REG_DM3CNT_H   = 0xDE
REG_SGCNT_L      = 0x80 
.arm
sleep12:
	mov r3,#REG_BASE
	@stop HDMA so we don't get the crawling scanlines (and possible GBC MODE reboot) anymore
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
