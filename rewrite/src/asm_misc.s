.arm
.text

.global hrt_PlotPixelInMode4
hrt_PlotPixelInMode4:
	push {r3-r7}
	mov r3,#0x4000000
	ldr r4,[r3]
	and r4,r4,#10
	mov r4,r4,lsr #4
	cmp r4, #1
	bne .CalcVRAMAddr2
	
  .CalcVRAMAddr1:
	mov r3, r1, lsl #8
	sub r3,r3,r1,lsl #4
	add r3,r3,r0
	add r3,r3,#0x6000000
	b .PrepareColor
	
  .CalcVRAMAddr2:
	mov r3,r1,lsl #8
	sub r3,r3,r1,lsl #4
	add r3,r3,r0
	add r3,r3,#0x6000000
	add r3,r3,#0xA000
	
  .PrepareColor:
	ldrh r5,[r3]
	mov r6,r5,lsr #8
	mov r7,r5
	and r5,r0,#1
	tst r5,#0
	bne .MakeValue2
	
  .MakeValue1:
	mov r4,r2,lsl #8
	orr r2,r7,r4
	b .StoreColor
	
  .MakeValue2:
	mov r6,r6,lsl #8
	orr r2,r6,r2
	
  .StoreColor:
	strh r2,[r3]
	pop {r3-r7}
	bx lr
	
.global hrt_irqEnable
.global hrt_SleepMode
hrt_SleepMode:
	mov r3,#0x4000000
	@stop HDMA so we don't get the crawling scanlines (and possible GBC MODE reboot) anymore
	strh r3,[r3,#0xBA]		@DMA0 stop
	strh r3,[r3,#0xC6]		@DMA1 stop
	strh r3,[r3,#0xDE]		@DMA3 stop
	ldr r1,=0x132
	ldr r0,=0xc00c			@interrupt on start+sel
	strh r0,[r3,r1]
	ldrh r1,[r3,#0x80]
	strh r3,[r3,#0x80]	@sound off
	ldrh r0,[r3,#0x00]
	orr r0,r0,#0x80
	strh r0,[r3,#0x00]	@LCD off
	swi 0x030000
	ldrh r0,[r3,#0x00]
	bic r0,r0,#0x80
	strh r0,[r3,#0x00]	@LCD on
	strh r1,[r3,#0x80]	@sound on
	bx lr