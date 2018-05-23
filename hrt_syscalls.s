 .align
 .pool
 .text
.code 16
.global	hrt_MultiBoot
.global hrt_Crash
.global	hrt_Sqrt
.global hrt_RegisterRamReset
.global	hrt_ArcTan
.global	hrt_ArcTan2
.global hrt_DivMod
.global hrt_DivAbs
.global hrt_Div
.global hrt_DivArm
.global hrt_DivArmMod
.global hrt_DivArmAbs
.thumb
hrt_MultiBoot:
 swi 37
 bx lr

hrt_Crash:
swi 255
bx lr

hrt_Sqrt:
	swi		8
	bx		lr

hrt_RegisterRamReset:
	swi		1
	bx		lr

hrt_ArcTan:
	swi		9
	bx		lr

hrt_ArcTan2:
	swi		10
	bx		lr

hrt_DivMod:
	swi	6
	mov	r0, r1
	bx	lr

DivAbs:
	swi	6
	mov	r0, r3
	bx	lr

hrt_Div:	
	swi	6
	bx	lr

hrt_DivArm:
	swi	7
	bx	lr

hrt_DivArmMod:
	swi	7
	mov	r0, r1
	bx	lr

hrt_DivArmAbs:
	swi	7
	mov	r0, r3
	bx	lr
