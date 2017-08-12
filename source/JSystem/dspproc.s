
.globl DSPReleaseHalt__Fv
DSPReleaseHalt__Fv: # 0x803372e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stmw    r30, 0x18(sp)
    bl      DSP_CreateMap__Fv
    addi    r30, r4, 0x0
    li      r5, 0x20
    bl      __shr2u
    stw     r4, 0x8(sp)
    li      r0, -0x1
    and     r0, r30, r0
    addi    r3, sp, 0x8
    stw     r0, 0xc(sp)
    li      r4, 0x0
    li      r5, 0x0
    bl      DSPSendCommands2__FPUlUlPFUs_v
    lwz     r0, 0x24(sp)
    lmw     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

branch_0x80337334:
    .long 0x0
    .long 0x0
    .long 0x0

.globl setup_callback__FUs
setup_callback__FUs: # 0x80337340
    li      r0, 0x0
    stw     r0, R13Off_m0x5ad0(r13)
    blr

branch_0x8033734c:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0

.globl DsetupTable__FUlUlUlUlUl
DsetupTable__FUlUlUlUlUl: # 0x80337360
    mflr    r0
    li      r8, 0x1
    stw     r0, 0x4(sp)
    clrlwi  r0, r3, 16
    oris    r0, r0, 0x8100
    lis     r3, setup_callback__FUs@h
    stwu    sp, -0x30(sp)
    stw     r0, 0x1c(sp)
    addi    r0, r3, setup_callback__FUs@l
    addi    r3, sp, 0x1c
    stw     r4, 0x20(sp)
    li      r4, 0x5
    stw     r5, 0x24(sp)
    mr      r5, r0
    stw     r6, 0x28(sp)
    stw     r7, 0x2c(sp)
    stw     r8, R13Off_m0x5ad0(r13)
    bl      DSPSendCommands2__FPUlUlPFUs_v
branch_0x803373a8:
    lwz     r0, R13Off_m0x5ad0(r13)
    cmpwi   r0, 0x0
    bne+    branch_0x803373a8
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

branch_0x803373c4:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0

.globl DsetMixerLevel__Ff
DsetMixerLevel__Ff: # 0x803373e0
    stwu    sp, -0x18(sp)
    lfs     f0, 0x9a8(r2)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    sth     r0, -0x73a8(r13)
    addi    sp, sp, 0x18
    blr

branch_0x80337404:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0

.globl DsyncFrame__FUlUlUl
DsyncFrame__FUlUlUl: # 0x80337420
    mflr    r0
    clrlslwi  r6, r3, 24, 16
    stw     r0, 0x4(sp)
    oris    r6, r6, 0x8200
    stwu    sp, -0x28(sp)
    lhz     r0, -0x73a8(r13)
    addi    r3, sp, 0x18
    or      r0, r6, r0
    stw     r0, 0x18(sp)
    stw     r4, 0x1c(sp)
    li      r4, 0x3
    stw     r5, 0x20(sp)
    li      r5, 0x0
    bl      DSPSendCommands2__FPUlUlPFUs_v
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

branch_0x80337468:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
