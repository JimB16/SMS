
.globl atanf
atanf: # 0x8033c22c
    stwu    sp, -0x10(sp)
    lis     r3, 0x803b
    subi    r4, r3, 0x52d0
    stfs    f1, 0x8(sp)
    li      r6, -0x1
    lfs     f0, 0xa68(rtoc)
    li      r7, 0x0
    lwz     r3, 0x8(sp)
    clrlwi  r0, r3, 1
    stw     r0, 0x8(sp)
    clrrwi  r8, r3, 31
    lfs     f2, 0x8(sp)
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8033c27c
    lfs     f0, 0xa6c(rtoc)
    li      r7, 0x1
    fdivs   f0, f0, f2
    stfs    f0, 0xc(sp)
    b       branch_0x8033c36c

branch_0x8033c27c:
    lfs     f0, 0xa70(rtoc)
    fcmpo   cr0, f0, f2
    bge-    branch_0x8033c368
    lwz     r5, 0x8(sp)
    lis     r0, 0x3f80
    li      r6, 0x0
    rlwinm  r3, r5, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x8033c2f0
    bge-    branch_0x8033c2b4
    lis     r0, 0x3f00
    cmpw    r3, r0
    beq-    branch_0x8033c2c4
    b       branch_0x8033c324

branch_0x8033c2b4:
    lis     r0, 0x4000
    cmpw    r3, r0
    beq-    branch_0x8033c320
    b       branch_0x8033c324

branch_0x8033c2c4:
    lis     r3, 0x3f09
    subi    r0, r3, 0x2a47
    cmpw    r5, r0
    blt-    branch_0x8033c2d8
    li      r6, 0x1
branch_0x8033c2d8:
    lis     r3, 0x3f52
    addi    r0, r3, 0x1801
    cmpw    r5, r0
    blt-    branch_0x8033c324
    addi    r6, r6, 0x1
    b       branch_0x8033c324

branch_0x8033c2f0:
    lis     r3, 0x3f9c
    subi    r0, r3, 0x814
    cmpw    r5, r0
    li      r6, 0x2
    blt-    branch_0x8033c308
    li      r6, 0x3
branch_0x8033c308:
    lis     r3, 0x3fef
    addi    r0, r3, 0x789e
    cmpw    r5, r0
    blt-    branch_0x8033c324
    addi    r6, r6, 0x1
    b       branch_0x8033c324

branch_0x8033c320:
    li      r6, 0x4
branch_0x8033c324:
    slwi    r0, r6, 2
    lfs     f1, 0xa6c(rtoc)
    add     r3, r4, r0
    lfs     f3, 0x9c(r3)
    lfs     f4, 0x84(r3)
    fadds   f0, f2, f3
    fadds   f0, f4, f0
    fdivs   f0, f1, f0
    stfs    f0, 0xc(sp)
    lfs     f2, 0xc(sp)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0x34(r3)
    fnmsubs  f1, f2, f1, f4
    fnmsubs  f0, f2, f0, f3
    fadds   f0, f1, f0
    stfs    f0, 0xc(sp)
    b       branch_0x8033c36c

branch_0x8033c368:
    stfs    f2, 0xc(sp)
branch_0x8033c36c:
    lfs     f5, 0xc(sp)
    slwi    r0, r6, 2
    lfs     f2, 0x18(r4)
    add     r3, r4, r0
    fmuls   f6, f5, f5
    lfs     f1, 0x14(r4)
    cmpwi   r7, 0x0
    lfs     f0, 0x10(r4)
    fmadds  f3, f6, f2, f1
    lfs     f2, 0xc(r4)
    fmuls   f4, f5, f6
    lfs     f1, 0x8(r4)
    fmadds  f3, f6, f3, f0
    lfs     f0, 0x4(r4)
    fmadds  f2, f6, f3, f2
    fmadds  f1, f6, f2, f1
    fmadds  f0, f6, f1, f0
    fmadds  f0, f4, f0, f5
    stfs    f0, 0xc(sp)
    lfs     f1, 0xc(sp)
    lfs     f0, 0x6c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0xc(sp)
    lfs     f1, 0xc(sp)
    lfs     f0, 0x50(r3)
    fadds   f0, f1, f0
    stfs    f0, 0xc(sp)
    beq-    branch_0x8033c408
    lfs     f1, 0xc(sp)
    cmpwi   r8, 0x0
    lfs     f0, 0xa74(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0xc(sp)
    beq-    branch_0x8033c3fc
    lfs     f1, 0xc(sp)
    b       branch_0x8033c418

branch_0x8033c3fc:
    lfs     f0, 0xc(sp)
    fneg    f1, f0
    b       branch_0x8033c418

branch_0x8033c408:
    lwz     r0, 0xc(sp)
    or      r0, r0, r8
    stw     r0, 0xc(sp)
    lfs     f1, 0xc(sp)
branch_0x8033c418:
    addi    sp, sp, 0x10
    blr


.globl atan__Ff
atan__Ff: # 0x8033c420
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      atanf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl _inv_sqrtf
_inv_sqrtf: # 0x8033c440
    lfs     f0, 0xa78(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8033c490
    frsqrte f2, f1
    lfs     f4, 0xa7c(rtoc)
    lfs     f3, 0xa80(rtoc)
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f4, f2
    fnmsubs  f0, f1, f0, f3
    fmuls   f2, f2, f0
    fmuls   f0, f2, f2
    fmuls   f2, f4, f2
    fnmsubs  f0, f1, f0, f3
    fmuls   f2, f2, f0
    fmuls   f0, f2, f2
    fmuls   f2, f4, f2
    fnmsubs  f0, f1, f0, f3
    fmuls   f1, f2, f0
    blr

branch_0x8033c490:
    fcmpu   cr0, f1, f0
    beq-    branch_0x8033c4a4
    lis     r3, 0x803e
    lfs     f1, 0x67c0(r3)
    blr

branch_0x8033c4a4:
    lis     r3, 0x803e
    lfs     f1, 0x67c4(r3)
    blr


.globl acosf
acosf: # 0x8033c4b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    fmr     f31, f1
    lfs     f0, 0xa6c(rtoc)
    fnmsubs  f1, f31, f31, f0
    bl      _inv_sqrtf
    fmuls   f1, f31, f1
    bl      atan__Ff
    lfs     f0, 0xa74(rtoc)
    lwz     r0, 0x1c(sp)
    fsubs   f1, f0, f1
    lfd     f31, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl atan2f
atan2f: # 0x8033c4f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stfs    f1, 0x8(sp)
    stfs    f2, 0xc(sp)
    lwz     r0, 0x8(sp)
    lwz     r3, 0xc(sp)
    clrrwi  r4, r0, 31
    clrrwi  r0, r3, 31
    cmpw    r0, r4
    bne-    branch_0x8033c56c
    cmpwi   r0, 0x0
    beq-    branch_0x8033c544
    lfs     f1, 0x8(sp)
    lfs     f0, 0xc(sp)
    fdivs   f1, f1, f0
    bl      atanf
    lfs     f0, 0xa84(rtoc)
    fsubs   f1, f1, f0
    b       branch_0x8033c5bc

branch_0x8033c544:
    lfs     f1, 0xc(sp)
    lfs     f0, 0xa78(rtoc)
    fcmpu   cr0, f1, f0
    beq-    branch_0x8033c564
    lfs     f0, 0x8(sp)
    fdivs   f1, f0, f1
    bl      atanf
    b       branch_0x8033c5bc

branch_0x8033c564:
    lfs     f1, 0xa74(rtoc)
    b       branch_0x8033c5bc

branch_0x8033c56c:
    lfs     f1, 0xc(sp)
    lfs     f0, 0xa78(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8033c594
    lfs     f0, 0x8(sp)
    fdivs   f1, f0, f1
    bl      atanf
    lfs     f0, 0xa84(rtoc)
    fadds   f1, f0, f1
    b       branch_0x8033c5bc

branch_0x8033c594:
    fcmpu   cr0, f1, f0
    beq-    branch_0x8033c5ac
    lfs     f0, 0x8(sp)
    fdivs   f1, f0, f1
    bl      atanf
    b       branch_0x8033c5bc

branch_0x8033c5ac:
    addis   r3, r4, 0x3fc9
    addi    r0, r3, 0xfdb
    stw     r0, 0x8(sp)
    lfs     f1, 0x8(sp)
branch_0x8033c5bc:
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

