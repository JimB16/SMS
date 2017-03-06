
.globl tanf
tanf: # 0x8033c5cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stfd    f31, 0x18(sp)
    stfd    f30, 0x10(sp)
    fmr     f30, f1
    bl      cos__Ff
    fmr     f31, f1
    fmr     f1, f30
    bl      sin__Ff
    fdivs   f1, f1, f31
    lwz     r0, 0x24(sp)
    lfd     f31, 0x18(sp)
    lfd     f30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl cos__Ff
cos__Ff: # 0x8033c610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      cosf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl sin__Ff
sin__Ff: # 0x8033c630
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      sinf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cosf
cosf: # 0x8033c650
    mflr    r0
    lis     r3, 0x803e
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x67c8
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    stfs    f1, 0x8(sp)
    lfs     f0, 0xa88(rtoc)
    lwz     r0, 0x8(sp)
    lfs     f6, 0x8(sp)
    clrrwi. r0, r0, 31
    fmuls   f1, f0, f6
    beq-    branch_0x8033c6a0
    lfs     f0, 0xa8c(rtoc)
    fsubs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r4, 0x14(sp)
    b       branch_0x8033c6b4

branch_0x8033c6a0:
    lfs     f0, 0xa8c(rtoc)
    fadds   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r4, 0x14(sp)
branch_0x8033c6b4:
    slwi    r0, r4, 1
    lfd     f1, 0xa98(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, 0x0(r3)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f3, 0x4(r3)
    clrlwi  r31, r4, 30
    stw     r0, 0x10(sp)
    lfs     f4, 0x8(r3)
    lfd     f0, 0x10(sp)
    lfs     f5, 0xc(r3)
    fsubs   f0, f0, f1
    fsubs   f0, f6, f0
    fmadds  f0, f2, f6, f0
    fmadds  f0, f3, f6, f0
    fmadds  f0, f4, f6, f0
    fmadds  f31, f5, f6, f0
    fmr     f1, f31
    bl      fabsf__Ff
    lfs     f0, 0xa90(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8033c730
    lis     r3, 0x803b
    slwi    r4, r31, 3
    subi    r0, r3, 0x4d3c
    add     r3, r0, r4
    lfs     f1, 0x0(r3)
    lfs     f0, 0x4(r3)
    fnmsubs  f1, f31, f1, f0
    b       branch_0x8033c7cc

branch_0x8033c730:
    clrlwi. r0, r31, 31
    fmuls   f4, f31, f31
    beq-    branch_0x8033c788
    lis     r3, 0x803b
    subi    r4, r3, 0x4d1c
    lfs     f2, 0x4(r4)
    lis     r3, 0x803b
    lfs     f1, 0xc(r4)
    subi    r0, r3, 0x4d3c
    lfs     f0, 0x14(r4)
    fmadds  f3, f2, f4, f1
    lfs     f2, 0x1c(r4)
    lfs     f1, 0x24(r4)
    slwi    r4, r31, 3
    add     r3, r0, r4
    fmadds  f3, f4, f3, f0
    lfs     f0, 0x0(r3)
    fmadds  f2, f4, f3, f2
    fnmadds  f1, f4, f2, f1
    fmuls   f1, f31, f1
    fmuls   f1, f1, f0
    b       branch_0x8033c7cc

branch_0x8033c788:
    lis     r3, 0x803b
    subi    r4, r3, 0x4d1c
    lfs     f2, 0x0(r4)
    lis     r3, 0x803b
    lfs     f1, 0x8(r4)
    subi    r3, r3, 0x4d3c
    slwi    r0, r31, 3
    fmadds  f3, f2, f4, f1
    lfs     f0, 0x10(r4)
    lfs     f2, 0x18(r4)
    add     r3, r3, r0
    lfs     f1, 0x20(r4)
    fmadds  f3, f4, f3, f0
    lfs     f0, 0x4(r3)
    fmadds  f2, f4, f3, f2
    fmadds  f1, f4, f2, f1
    fmuls   f1, f1, f0
branch_0x8033c7cc:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl sinf
sinf: # 0x8033c7e4
    mflr    r0
    lis     r3, 0x803e
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x67c8
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    stfs    f1, 0x8(sp)
    lfs     f0, 0xa88(rtoc)
    lwz     r0, 0x8(sp)
    lfs     f6, 0x8(sp)
    clrrwi. r0, r0, 31
    fmuls   f1, f0, f6
    beq-    branch_0x8033c834
    lfs     f0, 0xa8c(rtoc)
    fsubs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r4, 0x14(sp)
    b       branch_0x8033c848

branch_0x8033c834:
    lfs     f0, 0xa8c(rtoc)
    fadds   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r4, 0x14(sp)
branch_0x8033c848:
    slwi    r0, r4, 1
    lfd     f1, 0xa98(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, 0x0(r3)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f3, 0x4(r3)
    clrlwi  r31, r4, 30
    stw     r0, 0x10(sp)
    lfs     f4, 0x8(r3)
    lfd     f0, 0x10(sp)
    lfs     f5, 0xc(r3)
    fsubs   f0, f0, f1
    fsubs   f0, f6, f0
    fmadds  f0, f2, f6, f0
    fmadds  f0, f3, f6, f0
    fmadds  f0, f4, f6, f0
    fmadds  f31, f5, f6, f0
    fmr     f1, f31
    bl      fabsf__Ff
    lfs     f0, 0xa90(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8033c8d4
    lis     r3, 0x803b
    slwi    r4, r31, 3
    subi    r0, r3, 0x4d3c
    add     r3, r0, r4
    lfs     f1, 0x4(r3)
    lis     r4, 0x803b
    subi    r4, r4, 0x4d1c
    lfs     f0, 0x0(r3)
    fmuls   f1, f31, f1
    lfs     f2, 0x24(r4)
    fmadds  f1, f2, f1, f0
    b       branch_0x8033c970

branch_0x8033c8d4:
    clrlwi. r0, r31, 31
    fmuls   f4, f31, f31
    beq-    branch_0x8033c928
    lis     r3, 0x803b
    subi    r4, r3, 0x4d1c
    lfs     f2, 0x0(r4)
    lis     r3, 0x803b
    lfs     f1, 0x8(r4)
    subi    r0, r3, 0x4d3c
    lfs     f0, 0x10(r4)
    fmadds  f3, f2, f4, f1
    lfs     f2, 0x18(r4)
    lfs     f1, 0x20(r4)
    slwi    r4, r31, 3
    add     r3, r0, r4
    fmadds  f3, f4, f3, f0
    lfs     f0, 0x0(r3)
    fmadds  f2, f4, f3, f2
    fmadds  f1, f4, f2, f1
    fmuls   f1, f1, f0
    b       branch_0x8033c970

branch_0x8033c928:
    lis     r3, 0x803b
    subi    r4, r3, 0x4d1c
    lfs     f2, 0x4(r4)
    lis     r3, 0x803b
    lfs     f1, 0xc(r4)
    subi    r3, r3, 0x4d3c
    slwi    r0, r31, 3
    fmadds  f3, f2, f4, f1
    lfs     f0, 0x14(r4)
    lfs     f2, 0x1c(r4)
    add     r3, r3, r0
    lfs     f1, 0x24(r4)
    fmadds  f3, f4, f3, f0
    lfs     f0, 0x4(r3)
    fmadds  f2, f4, f3, f2
    fmadds  f1, f4, f2, f1
    fmuls   f1, f31, f1
    fmuls   f1, f1, f0
branch_0x8033c970:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __sinit_trigf_c
__sinit_trigf_c: # 0x8033c988
    lis     r3, 0x803b
    subi    r4, r3, 0x5218
    lfs     f0, 0x0(r4)
    lis     r3, 0x803e
    stfsu   f0, 0x67c8(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r3)
    blr

