
.globl execSecureView___15CPolarSubCameraFsP3Vec
execSecureView___15CPolarSubCameraFsP3Vec: # 0x80033bb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x90(sp)
    mr      r30, r3
    stw     r29, 0x8c(sp)
    stw     r28, 0x88(sp)
    mr      r28, r4
    lwz     r6, -0x60ac(r13)
    lwz     r7, 0x68(r3)
    lha     r3, 0x0(r6)
    lfs     f1, 0x3c(r7)
    subi    r0, r3, 0x8000
    lfs     f2, 0x44(r7)
    lfs     f3, 0xa8(r30)
    extsh   r29, r0
    bl      CLBLinearInbetween_f___Ffff
    subf    r3, r29, r28
    lwz     r0, -0x5eac(r13)
    clrlwi  r28, r3, 16
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r28, r0
    lfs     f0, -0x7528(rtoc)
    slwi    r0, r0, 2
    fmr     f31, f1
    lfsx    f30, r3, r0
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    bne-    branch_0x80033c40
    b       branch_0x80033c58

branch_0x80033c40:
    lwz     r3, 0x68(r30)
    lfs     f3, 0xa8(r30)
    lfs     f1, 0x40(r3)
    lfs     f2, 0x48(r3)
    bl      CLBLinearInbetween_f___Ffff
    fmr     f0, f1
branch_0x80033c58:
    lwz     r3, -0x5eac(r13)
    fmuls   f3, f0, f30
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r28, r3
    lfs     f0, -0x7528(rtoc)
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fmadds  f1, f31, f2, f3
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80033c88
    b       branch_0x80033c8c

branch_0x80033c88:
    fnmadds  f1, f31, f2, f3
branch_0x80033c8c:
    clrlwi  r0, r29, 16
    lwz     r4, MarioActor(r13)
    sraw    r0, r0, r3
    lwz     r3, -0x60ac(r13)
    slwi    r0, r0, 2
    lwz     r5, -0x5ea4(r13)
    fneg    f2, f1
    lfsx    f1, r6, r0
    lfsx    f0, r5, r0
    lha     r4, MarioActor_9c(r4)
    lha     r3, 0x0(r3)
    fmuls   f1, f2, f1
    fmuls   f30, f2, f0
    subf.   r0, r4, r3
    blt-    branch_0x80033cd0
    subf    r0, r4, r3
    b       branch_0x80033cd8

branch_0x80033cd0:
    subf    r0, r4, r3
    neg     r0, r0
branch_0x80033cd8:
    extsh   r0, r0
    lfd     f3, -0x7518(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f4, -0x7524(rtoc)
    stw     r0, 0x84(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7520(rtoc)
    stw     r0, 0x80(sp)
    lfd     f2, 0x80(sp)
    fsubs   f2, f2, f3
    fmuls   f2, f4, f2
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80033d18
    fmr     f3, f0
    b       branch_0x80033d1c

branch_0x80033d18:
    fdivs   f3, f0, f2
branch_0x80033d1c:
    lwz     r3, 0x68(r30)
    lfs     f0, -0x7520(rtoc)
    lfs     f2, 0x38(r3)
    fmuls   f2, f2, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x80033d3c
    fmr     f2, f0
    b       branch_0x80033d4c

branch_0x80033d3c:
    lfs     f0, -0x7528(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80033d4c
    fmr     f2, f0
branch_0x80033d4c:
    fmr     f31, f2
    lfs     f3, -0x7528(rtoc)
    addi    r3, r30, 0x294
    bl      CLBChaseDecrease__FPffff
    fmr     f1, f30
    lfs     f3, -0x7528(rtoc)
    fmr     f2, f31
    addi    r3, r30, 0x298
    bl      CLBChaseDecrease__FPffff
    lfs     f1, 0x0(r31)
    lfs     f0, 0x294(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x298(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    lwz     r28, 0x88(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl calcSecureViewTarget___15CPolarSubCameraFsPfPf
calcSecureViewTarget___15CPolarSubCameraFsPfPf: # 0x80033db8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r27, r3
    mr      r29, r4
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    lwz     r7, -0x60ac(r13)
    lwz     r8, 0x68(r3)
    lha     r3, 0x0(r7)
    lfs     f1, 0x3c(r8)
    subi    r0, r3, 0x8000
    lfs     f2, 0x44(r8)
    lfs     f3, 0xa8(r27)
    extsh   r28, r0
    bl      CLBLinearInbetween_f___Ffff
    subf    r3, r28, r29
    lwz     r0, -0x5eac(r13)
    clrlwi  r29, r3, 16
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r29, r0
    lfs     f0, -0x7528(rtoc)
    slwi    r0, r0, 2
    fmr     f31, f1
    lfsx    f30, r3, r0
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    bne-    branch_0x80033e3c
    fmr     f1, f0
    b       branch_0x80033e50

branch_0x80033e3c:
    lwz     r3, 0x68(r27)
    lfs     f3, 0xa8(r27)
    lfs     f1, 0x40(r3)
    lfs     f2, 0x48(r3)
    bl      CLBLinearInbetween_f___Ffff
branch_0x80033e50:
    lwz     r3, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r29, r3
    lfs     f0, -0x7528(rtoc)
    slwi    r0, r0, 2
    lfsx    f2, r4, r0
    fmuls   f2, f31, f2
    fmadds  f1, f1, f30, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80033e80
    b       branch_0x80033e84

branch_0x80033e80:
    fneg    f1, f1
branch_0x80033e84:
    clrlwi  r5, r28, 16
    fneg    f1, f1
    sraw    r0, r5, r3
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r31)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    lmw     r27, 0x44(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr

