.text
.thumb

.global hrt_VblankIntrWait
hrt_VblankIntrWait:
	swi 0x5
	bx lr
	
.global hrt_SoftReset
hrt_SoftReset:
	swi 0
	bx lr

.global hrt_ColdReset
hrt_ColdReset:
	swi 0x26
	bx lr
	
.global hrt_CpuFastSet
hrt_CpuFastSet:
	swi 12
	bx lr
