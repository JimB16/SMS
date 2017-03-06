
.globl JMANewSinTable__FUc
JMANewSinTable__FUc: # 0x802caa8c
    mflr    r0
    clrlwi  r5, r3, 24
    stw     r0, 0x4(sp)
    subfic  r4, r5, 0x10
    li      r0, 0x1
    stwu    sp, -0x40(sp)
    cmplwi  r5, 0x0
    li      r6, 0x0
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r4, -0x5eac(r13)
    sth     r0, -0x5eb0(r13)
    ble-    branch_0x802cab74
    cmplwi  r5, 0x8
    subi    r0, r3, 0x8
    ble-    branch_0x802cab50
    clrlwi  r0, r0, 24
    b       branch_0x802cab44

branch_0x802caae0:
    lhz     r4, -0x5eb0(r13)
    addi    r6, r6, 0x8
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
    lhz     r4, -0x5eb0(r13)
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
    lhz     r4, -0x5eb0(r13)
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
    lhz     r4, -0x5eb0(r13)
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
    lhz     r4, -0x5eb0(r13)
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
    lhz     r4, -0x5eb0(r13)
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
    lhz     r4, -0x5eb0(r13)
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
    lhz     r4, -0x5eb0(r13)
    slwi    r4, r4, 1
    sth     r4, -0x5eb0(r13)
branch_0x802cab44:
    clrlwi  r4, r6, 24
    cmplw   r4, r0
    blt+    branch_0x802caae0
branch_0x802cab50:
    clrlwi  r0, r3, 24
    b       branch_0x802cab68

branch_0x802cab58:
    lhz     r3, -0x5eb0(r13)
    addi    r6, r6, 0x1
    slwi    r3, r3, 1
    sth     r3, -0x5eb0(r13)
branch_0x802cab68:
    clrlwi  r3, r6, 24
    cmplw   r3, r0
    blt+    branch_0x802cab58
branch_0x802cab74:
    lhz     r3, -0x5eb0(r13)
    srawi   r0, r3, 2
    addze   r0, r0
    add     r0, r3, r0
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, -0x5ea8(r13)
    lwz     r0, -0x5ea8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802caba4
    li      r3, 0x0
    b       branch_0x802cac28

branch_0x802caba4:
    lfs     f30, 0x148(rtoc)
    li      r29, 0x0
    lfd     f31, 0x150(rtoc)
    lis     r30, 0x4330
    b       branch_0x802cabf8

branch_0x802cabb8:
    stw     r4, 0x1c(sp)
    clrlwi  r31, r29, 16
    stw     r30, 0x18(sp)
    lfd     f0, 0x18(sp)
    stw     r31, 0x14(sp)
    fsubs   f0, f0, f31
    stw     r30, 0x10(sp)
    fdivs   f1, f30, f0
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f31
    fmuls   f1, f1, f0
    bl      sinf
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r31, 2
    addi    r29, r29, 0x1
    stfsx   f1, r3, r0
branch_0x802cabf8:
    lhz     r4, -0x5eb0(r13)
    clrlwi  r3, r29, 16
    srawi   r5, r4, 2
    addze   r5, r5
    add     r0, r4, r5
    cmpw    r3, r0
    blt+    branch_0x802cabb8
    lwz     r4, -0x5ea8(r13)
    slwi    r0, r5, 2
    li      r3, 0x1
    add     r0, r4, r0
    stw     r0, -0x5ea4(r13)
branch_0x802cac28:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x40
    blr


.globl JMAEulerToQuat__FsssP10Quaternion
JMAEulerToQuat__FsssP10Quaternion: # 0x802cac4c
    extsh   r0, r3
    lwz     r8, -0x5eac(r13)
    srawi   r0, r0, 1
    lwz     r10, -0x5ea8(r13)
    addze   r0, r0
    lwz     r9, -0x5ea4(r13)
    clrlwi  r0, r0, 16
    sraw    r7, r0, r8
    extsh   r0, r4
    srawi   r0, r0, 1
    addze   r0, r0
    clrlwi  r0, r0, 16
    sraw    r3, r0, r8
    extsh   r0, r5
    srawi   r0, r0, 1
    slwi    r3, r3, 2
    addze   r0, r0
    lfsx    f3, r10, r3
    clrlwi  r0, r0, 16
    lfsx    f7, r9, r3
    sraw    r0, r0, r8
    slwi    r3, r0, 2
    slwi    r0, r7, 2
    lfsx    f10, r10, r3
    lfsx    f9, r10, r0
    fmuls   f4, f3, f10
    lfsx    f8, r9, r3
    lfsx    f6, r9, r0
    fmuls   f1, f9, f7
    fmuls   f11, f7, f8
    fmuls   f2, f9, f4
    fmuls   f0, f9, f3
    fmuls   f4, f6, f4
    fmadds  f5, f6, f11, f2
    fmuls   f2, f10, f1
    fmuls   f3, f6, f3
    fmsubs  f4, f9, f11, f4
    stfs    f5, 0xc(r6)
    fmuls   f1, f6, f7
    fmuls   f0, f8, f0
    fmadds  f2, f8, f3, f2
    stfs    f4, 0x0(r6)
    fmsubs  f0, f10, f1, f0
    stfs    f2, 0x4(r6)
    stfs    f0, 0x8(r6)
    blr


.globl JMAQuatLerp__FP10QuaternionP10QuaternionfP10Quaternion
JMAQuatLerp__FP10QuaternionP10QuaternionfP10Quaternion: # 0x802cad04
    lfs     f0, 0x4(r3)
    lfs     f5, 0x4(r4)
    lfs     f8, 0x0(r3)
    fmuls   f0, f0, f5
    lfs     f4, 0x0(r4)
    lfs     f2, 0x8(r3)
    lfs     f6, 0x8(r4)
    fmadds  f0, f8, f4, f0
    lfs     f3, 0xc(r3)
    lfs     f7, 0xc(r4)
    fmadds  f2, f2, f6, f0
    lfd     f0, 0x158(rtoc)
    fmadds  f2, f3, f7, f2
    fcmpo   cr0, f2, f0
    bge-    branch_0x802cad50
    fneg    f4, f4
    fneg    f5, f5
    fneg    f6, f6
    fneg    f7, f7
branch_0x802cad50:
    lfd     f2, 0x160(rtoc)
    fmul    f0, f1, f4
    fsub    f9, f2, f1
    fmul    f3, f1, f5
    fmadd    f0, f9, f8, f0
    fmul    f2, f1, f6
    frsp    f4, f0
    fmul    f0, f1, f7
    stfs    f4, 0x0(r5)
    lfs     f1, 0x4(r3)
    fmadd    f1, f9, f1, f3
    frsp    f1, f1
    stfs    f1, 0x4(r5)
    lfs     f1, 0x8(r3)
    fmadd    f1, f9, f1, f2
    frsp    f1, f1
    stfs    f1, 0x8(r5)
    lfs     f1, 0xc(r3)
    fmadd    f0, f9, f1, f0
    frsp    f0, f0
    stfs    f0, 0xc(r5)
    blr


.globl JMAHermiteInterpolation__Ffffffff
JMAHermiteInterpolation__Ffffffff: # 0x802cada8
    stwu    sp, -0x30(sp)
    fsubs   f0, f5, f2
    fsubs   f11, f1, f2
    stfd    f31, 0x28(sp)
    lfs     f9, 0x168(rtoc)
    fmuls   f2, f11, f11
    lfs     f1, 0x170(rtoc)
    fdivs   f8, f9, f0
    lfs     f5, 0x16c(rtoc)
    lfs     f0, 0x174(rtoc)
    fmuls   f12, f8, f2
    fmuls   f2, f12, f8
    fmuls   f13, f11, f2
    fmuls   f10, f1, f2
    fmuls   f31, f13, f8
    fnmsubs  f2, f5, f12, f13
    fsubs   f8, f13, f12
    fmsubs  f1, f5, f31, f10
    fmadds  f0, f0, f31, f10
    lfd     f31, 0x28(sp)
    fadds   f2, f11, f2
    fadds   f1, f9, f1
    fmuls   f0, f6, f0
    addi    sp, sp, 0x30
    fmadds  f0, f3, f1, f0
    fmadds  f0, f4, f2, f0
    fmadds  f1, f7, f8, f0
    blr

