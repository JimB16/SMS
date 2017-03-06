
.globl extend8to16__Q28JASystem6PlayerFUc
extend8to16__Q28JASystem6PlayerFUc: # 0x80319e10
    rlwinm. r0, r3, 0, 24, 24
    clrlwi  r4, r3, 24
    beq-    branch_0x80319e28
    addis   r3, r4, 0x1
    subi    r3, r3, 0x100
    blr

branch_0x80319e28:
    mr      r3, r4
    blr


.globl pitchToCent__Q28JASystem6PlayerFff
pitchToCent__Q28JASystem6PlayerFff: # 0x80319e30
    stwu    sp, -0x30(sp)
    lis     r0, 0x4330
    lfs     f0, 0x760(rtoc)
    lfd     f3, 0x770(rtoc)
    fmuls   f1, f0, f1
    lfs     f0, 0x764(rtoc)
    fmuls   f2, f1, f2
    fctiwz  f1, f2
    fcmpo   cr0, f2, f0
    stfd    f1, 0x20(sp)
    lwz     r3, 0x24(sp)
    stfd    f1, 0x28(sp)
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    lwz     r4, 0x2c(sp)
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f3
    fsubs   f1, f2, f1
    bge-    branch_0x80319e98
    fcmpu   cr0, f0, f1
    beq-    branch_0x80319e98
    lfs     f0, 0x768(rtoc)
    subi    r4, r4, 0x1
    fadds   f1, f1, f0
branch_0x80319e98:
    lfs     f0, 0x768(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80319eb0
    fsubs   f1, f1, f0
    addi    r4, r4, 0x1
branch_0x80319eb0:
    lfs     f0, 0x76c(rtoc)
    extsh   r0, r4
    lis     r3, 0x803e
    fmuls   f0, f0, f1
    lis     r4, 0x803e
    addi    r3, r3, 0x2880
    slwi    r0, r0, 2
    fctiwz  f0, f0
    add     r3, r3, r0
    addi    r4, r4, 0x3488
    stfd    f0, 0x18(sp)
    lfs     f0, 0xf0(r3)
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x30
    clrlslwi  r0, r0, 16, 2
    add     r3, r4, r0
    lfs     f1, 0x0(r3)
    fmuls   f1, f1, f0
    blr


.globl getRandomS32__Q28JASystem6PlayerFv
getRandomS32__Q28JASystem6PlayerFv: # 0x80319efc
    lis     r3, 0x1358
    lwz     r4, -0x73b0(r13)
    subi    r0, r3, 0x6422
    lwz     r5, -0x73ac(r13)
    lis     r3, 0x9876
    addi    r3, r3, 0x5432
    stw     r5, -0x73b0(r13)
    mullw   r0, r4, r0
    mullw   r3, r5, r3
    srawi   r0, r0, 4
    add     r3, r3, r0
    addi    r3, r3, 0x1
    stw     r3, -0x73ac(r13)
    blr

