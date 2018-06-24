## HeartLib API compliant makefile
## Use this to automate your compilation

CFLAGS = -Wall -O3 -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm 
CPPFLAGS = 
SOURCES = src/main.c data\smp.c data\soundbank.s
HEADERS = inc\soundbank.h
ASMFLAGS = -mcpu=arm7tdmi
ASMINC = 
LIBS = 
PROGNAME = sample
COMPFILES = build\soundbank.bin data\such.bin
OBJECTS = build/main.o build/smp.o build/soundbank.out 
INTERNALNAME = SAMPLE
MAXMODFILES = data\complete2.wav data/franky.s3m
MMDATAFILE = soundbank
GAME_CODE = SMPL
VERSION = 1
LIBDIRS = 
HRT_FLAGS = -DHRT_USE_MBV2LIB  -DHRT_ADMIN
USE_MULTIBOOT = no
MORECLEAN = data/soundbank.s inc/soundbank.h

include C:\devkitPro\devkitARM\hrt_system\hrt_standard_targets.mak

# CUSTOM MAKEFILE TARGETS START HERE