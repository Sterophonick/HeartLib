.text
.code 16
.thumb

.global hrt_SoftReset
hrt_SoftReset:
	swi 0
	bx lr

.global hrt_RegisterRamReset
hrt_RegisterRamReset:
	swi 1
	bx lr
	
.global hrt_Halt
hrt_Halt:
	swi 2
	bx lr
	
.global hrt_Stop
hrt_Stop:
	swi 3
	bx lr
	
.global hrt_IntrWait
hrt_IntrWait:
	swi 4
	bx lr

.global hrt_VblankIntrWait
hrt_VblankIntrWait:
	swi 5
	bx lr
	
.global hrt_Div
hrt_Div:
	swi 6
	bx lr
	
.global hrt_DivMod
hrt_DivMod:
	swi 6
	mov r0,r1
	bx lr

.global hrt_DivAbs
hrt_DivAbs:
	swi 6
	mov r0,r3
	bx lr

.global	hrt_DivArm
hrt_DivArm:
	swi	7
	bx	lr

.global	hrt_DivArmMod
hrt_DivArmMod:
	swi	7
	mov	r0, r1
	bx	lr

.global	hrt_DivArmAbs
hrt_DivArmAbs:
	swi	7
	mov	r0, r3
	bx	lr
	
.global hrt_Sqrt
hrt_Sqrt:
	swi 8
	bx lr

.global	ArcTan	
hrt_ArcTan:
	swi		9
	bx		lr

.global	ArcTan2
hrt_ArcTan2:
	swi		10
	bx		lr

.global hrt_CpuSet
hrt_CpuSet:
	swi 11
	bx lr
	
.global hrt_CpuFastSet
hrt_CpuFastSet:
	swi 12
	bx lr

.global hrt_GetBiosChecksum
hrt_GetBiosChecksum:
	swi 13
	bx lr

.global hrt_BgAffineSet
hrt_BgAffineSet:
	swi 14
	bx lr

.global hrt_ObjAffineSet
hrt_ObjAffineSet:
	swi 15
	bx lr

.global hrt_BitUnPack
hrt_BitUnPack:
	swi 16
	bx lr
	
.global hrt_LZ77UnCompWram
hrt_LZ77UnCompWram:
	swi 17
	bx lr

.global hrt_LZ77UnCompVram
hrt_LZ77UnCompVram:
	swi 18
	bx lr

.global hrt_HuffUnComp
hrt_HuffUnComp:
	swi 19
	bx lr
	
.global hrt_RLUnCompWram
hrt_RLUnCompWram:
	swi 20
	bx lr
	
.global hrt_RLUnCompVram
hrt_RLUnCompVram:
	swi 21
	bx lr
	
.global hrt_Diff8bitUnFilterWram
hrt_Diff8bitUnFilterWram:
	swi 22
	bx lr
	
.global hrt_Diff8bitUnFilterVram
hrt_Diff8bitUnFilterVram:
	swi 23
	bx lr

.global hrt_Diff16bitUnFilter
hrt_Diff16bitUnFilter:
	swi 24
	bx lr
	
.global hrt_SoundDriverInit
hrt_SoundDriverInit:
	swi 26
	bx lr	

.global hrt_SoundDriverMode
hrt_SoundDriverMode:
	swi 27
	bx lr

.global hrt_SoundDriverMain
hrt_SoundDriverMain:
	swi 28
	bx lr
	
.global hrt_SoundDriverVSync
hrt_SoundDriverVSync:
	swi 29
	bx lr
	
.global hrt_SoundChannelClear
hrt_SoundChannelClear:
	swi 30
	bx lr
	
.global hrt_MidiKey2Freq
hrt_MidiKey2Freq:
	swi 31
	bx lr
	
.global hrt_SoundWhatever0
hrt_SoundWhatever0:
	swi 32
	bx lr
	
.global hrt_SoundWhatever1
hrt_SoundWhatever1:
	swi 33
	bx lr
	
.global hrt_SoundWhatever2
hrt_SoundWhatever2:
	swi 34
	bx lr

.global hrt_SoundWhatever3
hrt_SoundWhatever3:
	swi 35
	bx lr
	
.global hrt_SoundWhatever4
hrt_SoundWhatever4:
	swi 36
	bx lr
	
.global hrt_MultiBoot
hrt_MultiBoot:
	swi 37
	bx lr
	
.global hrt_HardReset
hrt_HardReset:
	swi 38
	bx lr

.global hrt_CustomHalt
hrt_CustomHalt:
	swi 39
	bx lr
	
.global hrt_SoundDriverVSyncOff
hrt_SoundDriverVSyncOff:
	swi 40
	bx lr
	
.global hrt_SoundDriverVSyncOn
hrt_SoundDriverVSyncOn:
	swi 41
	bx lr
	
.global hrt_SoundGetJumpList
hrt_SoundGetJumpList:
	swi 42
	bx lr