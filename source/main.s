
.globl main
main: # 0x80005600
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6900
    addi    r3, r31, 0x0
    bl      initialize__12TApplicationFv
    mr      r3, r31
    bl      proc__12TApplicationFv
    mr      r3, r31
    bl      finalize__12TApplicationFv
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __sinit_main_cpp
__sinit_main_cpp: # 0x80005644
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x6900
    stwu    sp, -0x8(sp)
    bl      __ct__12TApplicationFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr
