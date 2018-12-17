 .section .iwram, "ax", %progbits 
 .align
 .pool
 .arm
 .global __hrt_exittoez4
__hrt_exittoez4:
	mov r0, #0xd200
	ldr r1,=#0x9FE0000
	strh r0,[r1]
	mov r0, #0x1500
	ldr r1,=#0x8000000
	strh r0,[r1]
	mov r0, #0xd200
	ldr r1,=#0x8020000
	strh r0,[r1]
	mov r0, #0x1500
	ldr r1,=#0x8040000
	strh r0,[r1]
	mov r0, #0x8000
	ldr r1,=#0x9880000
	strh r0,[r1]
	mov r0, #0x1500
	ldr r1,=#0x9fc0000
	strh r0,[r1]
	swi 1
	swi 0
	bx lr
  