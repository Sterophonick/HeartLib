 .align
 .pool
 .text
.code 16
.global	hrt_MultiBoot
.global	hrt_ColdReset
.global hrt_SoftReset
.global hrt_VblankIntrWait
.global hrt_RegisterRamReset
.thumb
hrt_MultiBoot:
 swi 37
 bx lr

 .arm
hrt_SoftReset:
 swi 0x00
 bx lr

hrt_VblankIntrWait:
 swi 0x05
 bx lr

hrt_RegisterRamReset:
 swi 0x01
 bx lr
