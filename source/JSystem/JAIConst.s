
.globl __sinit_JAIConst_cpp
__sinit_JAIConst_cpp: # 0x803031dc
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    addi    r5, r3, 0x74f8
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    subi    r3, r13, 0x5d80
    li      r4, 0x0
    stw     r0, 0x0(r5)
    stw     r0, 0x4(r5)
    stw     r0, 0x8(r5)
    stw     r0, 0xc(r5)
    bl      __ct__Q25JMath13TRandom_fast_FUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

