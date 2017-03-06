
.globl getY__Q28JASystem9TInstRandCFii
getY__Q28JASystem9TInstRandCFii: # 0x80310070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x5c90(r13)
    extsb.  r0, r0
    bne-    branch_0x803100a4
    subi    r3, r13, 0x5c8c
    li      r4, 0x0
    bl      __ct__Q25JMath13TRandom_fast_FUl
    li      r0, 0x1
    stb     r0, -0x5c90(r13)
branch_0x803100a4:
    lis     r3, 0x19
    lwz     r4, -0x5c8c(r13)
    addi    r0, r3, 0x660d
    lfs     f0, 0x664(rtoc)
    mullw   r3, r4, r0
    lfs     f4, 0x660(rtoc)
    lfs     f1, 0x668(rtoc)
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5c8c(r13)
    lwz     r0, -0x5c8c(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x2c(sp)
    lfs     f3, 0x2c(sp)
    lwz     r0, 0x3c(sp)
    fsubs   f3, f3, f0
    lfs     f2, 0xc(r31)
    lfs     f0, 0x8(r31)
    mtlr    r0
    lwz     r31, 0x34(sp)
    fmuls   f3, f4, f3
    addi    sp, sp, 0x38
    fsubs   f1, f3, f1
    fmuls   f1, f1, f2
    fadds   f1, f1, f0
    blr

