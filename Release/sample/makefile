## HeartLib API compliant makefile
## Use this to automate your compilation

CFLAGS = -Wall -O3 -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm 
CPPFLAGS = 
SOURCES = main.c
HEADERS = inc/soundbank.h
ASMFLAGS = -mcpu=arm7tdmi
ASMINC = 
PATH = 
LIBS = 
PROGNAME = sample
CDATA = smp.c such.s soundbank.s
COMPFILES = build/soundbank.bin data/such.bin
OBJECTS = build/main.o build/smp.o build/soundbank.out build/such.out
INTERNALNAME = SAMPLE
GAME_CODE = SMPL
VERSION = 1
LIBDIRS = 
HRT_CFLAGS = -DHRT_USE_MBV2LIB -DHRT_BITFIELD_TYPES -DHRT_ADMIN
USE_MULTIBOOT = yes

include C:\devkitPro\devkitARM\hrt_standard_targets.mak

# CUSTOM MAKEFILE TARGETS START HERE

