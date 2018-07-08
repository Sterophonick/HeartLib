 .align
 .pool
 .section .iwram, "ax", %progbits 
 .align
 .pool
 .arm
 .global __hrt_exittoez4
 __hrt_exittoez4:
  ldr r2, ez4exit_addresses
  ldr r3, ez4exit_addresses+4
  movs r1, #128
  strh r2, [r3]
  movs r3, #168
  lsls r1, r1, #20
  lsls r3, r3, #5
  strh r3, [r1]
  ldr r1, ez4exit_addresses+8
  strh r2, [r1]
  ldr r2, ez4exit_addresses+12
  ldr r1, ez4exit_addresses+16
  strh r3, [r2]
  ldr r2, ez4exit_addresses+20
  strh r1, [r2]
  ldr r2, ez4exit_addresses+24
  strh r3, [r2]
  swi 0
  bx lr
ez4exit_addresses:
  .word -11776
  .word 167641088
  .word 134348800
  .word 134479872
  .word -32768
  .word 159907840
  .word 167510016
