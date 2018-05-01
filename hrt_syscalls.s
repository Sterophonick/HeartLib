 .align
 .pool
 .text
.code 16
.global	hrt_MultiBoot
.global hrt_Crash
.thumb
hrt_MultiBoot:
 swi 37
 bx lr

 .arm