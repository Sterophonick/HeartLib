 .align
 .pool
 .text
.code 16
.global	hrt_MultiBoot
.thumb
hrt_MultiBoot:
 swi 37
 bx lr
