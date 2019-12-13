@********************************************
@ PUCRUNCH Unpacking Lib for ARM/Thumb GCC  *
@   Modeled after Pasi Ojala's C64 code.    *
@  by Jeff Frohwein                         *
@   http://www.devrs.com                    *
@                                           *
@ PUCrunch main website:                    *
@ http://www.cs.tut.fi/~albert/Dev/pucrunch *
@********************************************
@ v1.0302 - Original release
@ v1.0612 - Changed stmed/ldmed to the proper stmfd/ldmfd opcodes.

@  Destination RAM area must be an even number of bytes
@ if WRITE16 flag is set. Add 1 extra byte than needed
@ if necessary.

@  Destination pointer must be 2 byte aligned if
@ dest ptr >= 0x6000000 and WRITE16 flag is set. An abort
@ will occur at the start if not properly aligned.

@ Unpack PUCrunch data using ARM Asm
@ Entry:  srcptr = Source packed data pointer
@        destptr = Destination RAM pointer for unpacked data
@ (void) PUCrunch (u8 *srcptr, u8 *destptr);

@ Uncomment the next line to support unpacking to 16-bit GBA VRAM.
@ It slows unpacking down to do that but that's the only way.
@.equ _WRITE16,1

@ EXAMPLE USAGE:
@  test.c -
@     typedef  unsigned char  u8;
@     #define _VRAM (u8 *)0x6000000
@     extern void UnpackPUC(u8 *srcadr, u8 *dstadr);
@     extern u8 pudata[];
@
@     UnpackPUC(&pudata[0], _VRAM);
@
@  data.s -
@         .GLOBL  pudata
@     pudata:
@         .byte 82,78,67,2,0,0,16,0,0,0,11,104,57,236,160,19
@         .....
@         .byte 5,1,30,0,7,0,5,56,56,108,108,196,3,0,236,236
@
@  ( To convert raw binary data to a format that can be used
@    in a .h or .s file, get B2X for DOS/linux from
@    http://www.devrs.com/gba/  [Apps/Misc section] )

@ Pucrunch file format

@;; db INPOS low     (endAddr + overlap - size) & 0xff
@;; db INPOS high    (endAddr + overlap - size) >> 8
@;; db 'p'
@;; db 'u'
@;; db (endAddr - 0x100) & 0xff
@;; db (endAddr - 0x100) >> 8
@ db escape>>(8-escBits)
@;; db (start & 0xff) (OUTPOS low)
@;; db (start >> 8) (OUTPOS high)
@ db escBits
@ db maxGamma + 1
@ db (1<<maxGamma); /* Short/Long RLE */
@ db extraLZPosBits;
@;; db (exec & 0xff)
@;; db (exec >> 8)
@ db rleUsed (31)  ;needed
@ ds rleUsed
@  ....data....

@ Local Stack Variables
.equ escPu,     0
.equ lzpos,     4
.equ EscBits,   8
.equ Esc8Bits,  12
.equ MaxGamma,  16
.equ Max1Gamma, 20
.equ Max2Gamma, 24
.equ Max8Gamma, 28
.equ ExtraBits, 32
.equ tablePu,   36   @ DS      31
.equ STACK_VAR_SIZE, 36+32

@@@@regy            DB

@ Register Usage:
@  r0 = src packed data
@  r1 = dest unpacked data
@  r2 = store data
@  r3 = Carry Flag
@  r4 = 0x80000000
@  r5 = A
@  r6 = B
@  r7 = C
@  r8 = D
@  r9 = E
@  r10 = temp used by STORE
@  r11 = regy?
@  r12 = temp

@ HL = InPtr
@ D = bitstr
@ E = X
@ BC = temps

        .ARM
        .ALIGN
        .GLOBL  UnpackPUC

@ store byte in r5 @ r1
 .ifdef _WRITE16
  .MACRO STORE
         cmps    r10,#0           @ Is this the first byte?
         addeq   r10,r5,r4        @ Yes, store it
         addne   r10,r10,r5,lsl #8
         strneh  r10,[r1],#2
         movne   r10,#0
         .ENDM
 .else
  .MACRO STORE
         strb    r5,[r1],#1
        .ENDM
 .endif

@ Bit8 of A -> Bit0 of r3
 .MACRO PROCESS_CARRY
         mov     r3,r5,lsr #8
         ands    r3,r3,#1
        .ENDM

@@@ START OF CODE @@@


UnpackPUC:
        stmfd   r13!,{r0-r12,r14}

        sub     sp,sp,#STACK_VAR_SIZE

 .ifdef _WRITE16
        mov     r10,#0          @ Init no data to store
        mov     r4,#0x80000000

   @ If writing to VRAM, exit if not 2 byte aligned
        cmps    r1,#0x6000000   @ is dest address to work ram?
        bcc    _notest          @ yes, skip align test

        tsts    r1,#1           @ Is dest pointer aligned ?
        bne     _exit           @ no, so exit
_notest:
 .endif

        str     r1,[sp,#lzpos]  @ Set the upper half word for later

@ Read the file header & setup variables

        add     r0,r0,#6

        ldrb    r5,[r0],#3      @ ld      a,[hl+]
        strb    r5,[sp,#escPu]  @ ld      [escPu],a
                                @ inc     hl
                                @ inc     hl
        ldrb    r5,[r0],#1      @ ld      a,[hl+]
        strb    r5,[sp,#EscBits] @ld      [EscBits],a
                                @ ld      b,a
                                @ ld      a,8
        rsb     r5,r5,#8        @ sub     b
        strb    r5,[sp,#Esc8Bits] @ ld      [Esc8Bits],a

        ldrb    r5,[r0],#1      @ ld      a,[hl+]
        strb    r5,[sp,#MaxGamma] @ ld      [MaxGamma],a

                                @ dec     a     M8G=8-(MG-1)
                                @ ld      b,a
                                @ ld      a,8
        rsb     r5,r5,#9        @ sub     b
        strb    r5,[sp,#Max8Gamma] @ ld      [Max8Gamma],a

        ldrb    r5,[r0],#1      @ ld      a,[hl+]
        strb    r5,[sp,#Max1Gamma] @ ld      [Max1Gamma],a
        add     r5,r5,r5        @ add     a
        sub     r5,r5,#1        @ dec     a
        strb    r5,[sp,#Max2Gamma] @ ld      [Max2Gamma],a

        ldrb    r5,[r0],#3      @ ld      a,[hl+]
        strb    r5,[sp,#ExtraBits] @ ld      [ExtraBits],a
                                @ inc     hl
                                @ inc     hl
        ldrb    r5,[r0],#1      @ ld      a,[hl+]
        mov     r8,r5           @ ld      b,a

        mov     r9,#tablePu     @ ld      de,tablePu

@ Copy the RLE table (maximum of 31 bytes) to RAM

                                @ inc     b
                                @ srl     b
                                @ jr      nc,.orleloop

                                @.rleloop:
                                @ ld      a,[hl+]
                                @ ld      [de],a
                                @ inc     de

_tablop:                        @ .orleloop:
        ldrb    r5,[r0],#1      @ ld      a,[hl+]
        strb    r5,[sp,r9]      @ ld      [de],a
        add     r9,r9,#1        @ inc     de

        subs    r8,r8,#1        @ dec     b
        bne     _tablop         @ jr      nz,.rleloop

        mov     r8,#0x80        @ ld      d,$80

        b       _main           @ jr      .main

_newesc:
                                @ ld      b,a
        ldrb    r11,[sp,#escPu] @ ld      a,[escPu]
                                @ ld      [regy],a

        ldrb    r9,[sp,#EscBits] @ ld      a,[EscBits]
                                @ ld      e,a
                                @ ld      a,b

        add     r9,r9,#1        @ inc     e

        bl      _getchk         @ call    .getchk
        strb    r5,[sp,#escPu]  @ ld      [escPu],a

        mov     r5,r11          @ ld      a,[regy]

        @ Fall through and get the rest of the bits.

_noesc:
                                @ ld      b,a

        ldrb    r9,[sp,#Esc8Bits] @ ld      a,[Esc8Bits]
                                @ ld      e,a

                                @ ld      a,b

        add     r9,r9,#1        @ inc     e

        bl      _getchk         @ call    .getchk

        and     r5,r5,#0xff

@ Write out the escaped/normal byte

        STORE                   @ ld16    bc,OutPtr
                                @ ld      [bc],a
                                @ inc     bc
                                @ ld16r   OutPtr,bc

       @ Fall through and check the escape bits again
_main:
@        bl    DebugCode

        ldrb    r9,[sp,#EscBits] @ ld      a,[EscBits]
                                @ ld      e,a

        mov     r5,#0           @ xor     a               ; A = 0
        mov     r11,r5          @ ld      [regy],a

        add     r9,r9,#1        @ inc     e

        bl      _getchk         @ call    .getchk         ; X=2 -> X=0

                                @ ld      b,a
        ldrb    r12,[sp,#escPu] @ ld      a,[escPu]
        cmps    r5,r12          @ cp      b
                                @ ld      a,b

        bne     _noesc          @ jr      nz,.noesc       ; Not the escape code -> get the rest of the byte

        @ Fall through to packed code

        bl      _getval         @ call    .getval         ; X=0 -> X=0
        strb    r5,[sp,#lzpos]  @ ld      [lzpos],a       ; xstore - save the length for a later time

        movs    r5,r5,lsr #1    @ srl     a               ; cmp #1        ; LEN == 2 ? (A is never 0)
        bne     _lz77           @ jp      nz,.lz77        ; LEN != 2      -> LZ77

        bl      _get1bit        @ call    .get1bit        ; X=0 -> X=0

        movs    r5,r5,lsr #1    @ srl     a               ; bit -> C, A = 0

        bcc     _lz77_2         @ jp      nc,.lz77_2      ; A=0 -> LZPOS+1        LZ77, len=2

        @ e..e01
        bl      _get1bit        @ call    .get1bit        ; X=0 -> X=0
        movs    r5,r5,lsr #1    @ srl     a               ; bit -> C, A = 0
        bcc     _newesc         @ jp      nc,.newesc      ; e..e010               New Escape

        @ e..e011                               Short/Long RLE

        bl      _getval         @ call    .getval         ; Y is 1, get len,  X=0 -> X=0
        strb    r5,[sp,#lzpos]  @ ld      [lzpos],a       ; xstore - Save length LSB

                                @ ld      c,a
        ldrb    r6,[sp,#Max1Gamma] @ ld      a,[Max1Gamma]
                                @ ld      b,a
                                @ ld      a,c

        cmps    r5,r6           @ cp      b               ; ** PARAMETER 63-64 -> C set, 64-64 -> C clear..
        bcc     _chrcode        @ jr      c,.chrcode      ; short RLE, get bytecode

        @ Otherwise it's long RLE
@@@_longrle:
                                @ ld      b,a
        ldrb    r9,[sp,#Max8Gamma] @ ld      a,[Max8Gamma]
                                @ ld      e,a             ; ** PARAMETER  111111xxxxxx
                                @ ld      a,b

        bl      _getbits        @ call    .getbits        ; get 3/2/1 more bits to get a full byte,  X=2 -> X=0
        strb    r5,[sp,#lzpos]  @ ld      [lzpos],a       ; xstore - Save length LSB

        bl      _getval         @ call    .getval         ; length MSB, X=0 -> X=0

        sub     r11,r5,#1       @ ld      [regy],a        ;

_chrcode:
        bl      _getval         @ call    .getval         ; Byte Code,  X=0 -> X=0

        mov     r9,r5           @ ld      e,a

        add     r12,r5,#tablePu-1

                                @ ld      c,(tablePu-1)%256
                                @ add     c
                                @ ld      c,a
                                @ ld      a,(tablePu-1)/256
                                @ adc     0
                                @ ld      b,a

                                @ ld      a,e
        cmps    r5,#32          @ cp      32              ; 31-32 -> C set, 32-32 -> C clear..
        ldrb    r5,[sp,r12]     @ ld      a,[bc]
        bcc     _less32         @ jr      c,.less32       ; 1..31

        @ Not ranks 1..31, -> 11111°xxxxx (32..64), get byte..

        mov     r5,r9           @ ld      a,e        ; get back the value (5 valid bits)

        mov     r9,#3           @ ld      e,3

        bl      _getbits        @ call    .getbits        ; get 3 more bits to get a full byte, X=3 -> X=0

_less32:
                                @ push    hl
                                @ push    af

        ldrb    r9,[sp,#lzpos]  @ ld      a,[lzpos]
                                @ ld      e,a          ; xstore - get length LSB

        add     r6,r9,#1        @ ld      b,e
                                @ inc     b               ; adjust for cpx#$ff;bne -> bne

                                @ ld      a,[regy]
                                @ ld      c,a
@        sub     r7,r11,#1
        add     r6,r6,r11,lsl #8
                                @ ld16r   hl,OutPtr

                                @ pop     af
        and     r5,r5,#0xff

_dorle:
        STORE                   @ ld      [hl+],a
        subs    r6,r6,#1        @ dec     b
        bne     _dorle          @ jr      nz,.dorle       ; xstore 0..255 -> 1..256

                                @ ld16r   OutPtr,hl

                                @ pop     hl
        b       _main           @ jp      .main

_lz77:
        bl      _getval         @ call    .getval         ; X=0 -> X=0

        mov     r6,r5           @ ld      b,a

        ldrb    r5,[sp,#Max2Gamma] @ ld      a,[Max2Gamma]
        cmps    r5,r6           @ cp      b               ; end of file ?
        beq     _done           @ ret     z               ; yes, exit

        ldrb    r9,[sp,#ExtraBits] @ ld      a,[ExtraBits]   ; ** PARAMETER (more bits to get)
                                @ ld      e,a
        sub     r5,r6,#1        @ ld      a,b
                                @ dec     a               ; subtract 1  (1..126 -> 0..125)

        add     r9,r9,#1        @ inc     e

        bl      _getchk         @ call    .getchk ;f        ; clears Carry, X=0 -> X=0

_lz77_2:
        strb    r5,[sp,#lzpos+1] @ ld      [lzpos+1],a     ; offset MSB

        mov     r9,#8           @ ld      e,8

        bl      _getbits        @ call    .getbits        ; clears Carry, X=8 -> X=0

                        @ Note: Already eor:ed in the compressor..
        and     r6,r5,#0xff     @ ld      b,a

        ldrb    r9,[sp,#lzpos]  @ ld      a,[lzpos]
                                @ ld      e,a             ; xstore - LZLEN (read before it's overwritten)
        mov     r7,r1
 .ifdef _WRITE16
        cmps    r10,#0          @ Do we have an output byte in cache?
        addne   r7,r7,#1        @ Yes, effectively update the out pointer
 .endif

        and     r12,r7,#0xff

        adds    r5,r12,r6       @ ld      a,[OutPtr]
                                @ add     b               ; -offset -1 + curpos (C is clear)

        mov     r3,r5,lsr #8    @ copy r5/bit8 to r3
        and     r3,r3,#1
        eor     r3,r3,#1

        strb    r5,[sp,#lzpos]  @ ld      [lzpos],a

        ldrb    r6,[sp,#lzpos+1] @ ld      a,[lzpos+1]
                                 @ ld      b,a

        mov     r5,r7,lsr #8    @ ld      a,[OutPtr+1]
        sub     r5,r5,r6        @ sbc     b
        sub     r5,r5,r3
        strb    r5,[sp,#lzpos+1] @ld      [lzpos+1],a     ; copy X+1 number of chars from LZPOS to OUTPOS
        mov     r12,r5,lsr #8
        strb    r12,[sp,#lzpos+2]

        add     r9,r9,#1        @ inc     e               ; adjust for cpx#$ff;bne -> bne

@ Write decompressed bytes out to RAM
        mov     r6,r9           @ ld      b,e

                                @ push    de
                                @ push    hl
        ldr     r12,[sp,#lzpos] @ ld16r   hl,lzpos
                                @ ld16r   de,OutPtr

 .ifdef _WRITE16
        add     r12,r12,#1
        cmps    r12,r7          @ Is this a fill type operation?
        sub     r12,r12,#1
        beq     _mfill          @ yes
 .endif
_lzlp:

_lzloop:
        ldrb    r5,[r12],#1     @ ld      a,[hl+]         ; Note: Must be copied forward
        STORE
                                @ inc     de
        subs    r6,r6,#1        @ dec     b
        bne     _lzloop         @ jr      nz,.lzloop      ; X loops, (256,1..255)

                                @ ld16r   OutPtr,de

                                @ pop     hl
                                @ pop     de
        b       _main           @ jp      .main

 .ifdef _WRITE16

@ A repeat copy [r1-1] to [r1] operation is requested.
@ i.e. fill memory with a byte

_mfill:
        cmps    r10,#0          @ Is there a byte in cache to be written?
        bne     _mfill2

        ldrb    r5,[r12],#1     @ ld      a,[hl+]         ; Note: Must be copied forward
_mfill1:
        STORE
        subs    r6,r6,#1
        bne     _mfill1

        b       _main

_mfill2:
        and     r5,r10,#0xff
_mfill3:
        STORE
        subs    r6,r6,#1
        bne     _mfill3

        b       _main


 .endif

@ getval : Gets a 'static huffman coded' value
@ ** Scratches X, returns the value in A **
_getval:                        @ X must be 0 when called!
        mov     r5,#1           @ ld      a,1
        mov     r9,r5           @ ld      e,a
_loop0:
        add     r8,r8,r8        @ sla     d

        tsts    r8,#0xff        @ jr      nz,.loop1
        bne     _loop1

        ldrb    r8,[r0],#1      @ ld      d,[hl]
                                @ inc     hl

        cmps    r0,r0           @ Set carry flag
        adc     r8,r8,r8        @ rl      d               ; Shift in C=1 (last bit marker)
                                @ bitstr initial value = $80 == empty
_loop1:
        tsts    r8,#0x100       @ jr      nc,.getchk      ; got 0-bit
        beq     _getchk         @ got 0-bit

        add     r9,r9,#1        @ inc     e

                                @ ld      b,a             ; save a
        ldrb    r12,[sp,#MaxGamma] @ ld      a,[MaxGamma]
        cmps    r12,r9          @ cp      e
                                @ ld      a,b             ; restore a

        bne     _loop0          @ jr      nz,.loop0

        b       _getchk         @ jr      .getchk


@ getbits: Gets E bits from the stream
@ ** returns the value in A **

_get1bit:
        add     r9,r9,#1        @ inc     e
_getbits:
        add     r8,r8,r8        @ sla     d

        mov     r3,r8,lsr #8    @ copy r8/bit8 to r3
        and     r3,r3,#1

        tsts    r8,#0xff
        bne     _loop3          @ jr      nz,.loop3

        ldrb    r8,[r0],#1      @ ld      d,[hl]
                                @ inc     hl

        cmps    r0,r0           @ Set carry flag
        adc     r8,r8,r8        @ rl      d               ; Shift in C=1 (last bit marker)
                                @ bitstr initial value = $80 == empty
        mov     r3,r8,lsr #8    @ copy r8/bit8 to r3
        and     r3,r3,#1
_loop3:
        add     r5,r5,r5        @ rla
        add     r5,r5,r3

_getchk:
        subs    r9,r9,#1        @ dec     e

        bne     _getbits        @ jr      nz,.getbits
        bx      lr              @ ret

_done:
  .ifdef _WRITE16
@ Is there one byte to store in the cache?
        cmps    r10,#0           @ Is there 1 byte left?
        andne   r10,r10,#0xff    @ yes, write byte in cache
        strneh  r10,[r1],#2      @
 .endif

_exit:
@ b _exit
        add     sp,sp,#STACK_VAR_SIZE
        ldmfd   r13!,{r0-r12,r14}
        bx      r14

@DebugCode:
@        mov     r12,#0x96  @8e
@        add     r12,r12,#0x100  @000
@        add     r12,r12,#0x6000000
@        cmps    r12,r1
@        bxne    lr
@
@        add     r12,r12,r12
@        add     r12,r12,r12
@        add     r12,r12,r12
@        add     r12,r12,r12
@        bx      lr
@
@        .GLOBL  pudata
@pudata:
@@ .include "decomp/pudata.s"
@  .include "decomp/zpu.s"
@
@        .GLOBL  pugood
@pugood:
@@ .include "decomp/orig.s"
@  .include "decomp/ztil.s"

@   for (i=0; i<4096; i++)
@      {
@      if (pugood[i] != (*(u8 *)(0x6000000+i)) ) z=0;
@      }
@
@   if (z)
@      for (i=20; i<160; i++)
@         gfxLine(0,i,239,i,RGB(0,255,0),VRAM);
@   else
@      for (i=20; i<160; i++)
@         gfxLine(0,i,239,i,RGB(255,0,0),VRAM);

         .globl  jpgdata
@jpgdata:
@  .include "subs/gs.s"
@  .include "subs/mk5.inc"


