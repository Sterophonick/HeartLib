 .align
 .pool
 .text
.code 16
.global	hrt_MultiBoot
.global	__hrt_version
.thumb
hrt_MultiBoot:
 swi 37
 bx lr

 .arm