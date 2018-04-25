 .align
 .pool
 .cpu arm7tdmi
 .align
 .pool
 .arm
addy		.req r12
.global __gettime
__gettime:	@called from ui.c
	ldr r3,=0x080000c4		@base address for RTC
	mov r1,#1
	strh r1,[r3,#4]			@enable RTC
	mov r1,#7
	strh r1,[r3,#2]			@enable write

	mov r1,#1
	strh r1,[r3]
	mov r1,#5
	strh r1,[r3]			@State=Command

	mov r2,#0x65			@r2=Command, YY:MM:DD 00 hh:mm:ss
	mov addy,#8
RTCLoop1:
	mov r1,#2
	and r1,r1,r2,lsr#6
	orr r1,r1,#4
	strh r1,[r3]
	mov r1,r2,lsr#6
	orr r1,r1,#5
	strh r1,[r3]
	mov r2,r2,lsl#1
	subs addy,addy,#1
	bne RTCLoop1

	mov r1,#5
	strh r1,[r3,#2]			@enable read
	mov r2,#0
	mov addy,#32
RTCLoop2:
	mov r1,#4
	strh r1,[r3]
	mov r1,#5
	strh r1,[r3]
	ldrh r1,[r3]
	and r1,r1,#2
	mov r2,r2,lsr#1
	orr r2,r2,r1,lsl#30
	subs addy,addy,#1
	bne RTCLoop2

	mov r0,#0
	mov addy,#24
RTCLoop3:
	mov r1,#4
	strh r1,[r3]
	mov r1,#5
	strh r1,[r3]
	ldrh r1,[r3]
	and r1,r1,#2
	mov r0,r0,lsr#1
	orr r0,r0,r1,lsl#22
	subs addy,addy,#1
	bne RTCLoop3

	bx lr
