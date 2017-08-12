
.globl intersectLine__17TMapCollisionDataCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
intersectLine__17TMapCollisionDataCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_: # 0x8018b264
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x510(sp)
    stfd    f31, 0x508(sp)
    stfd    f30, 0x500(sp)
    stfd    f29, 0x4f8(sp)
    stfd    f28, 0x4f0(sp)
    stfd    f27, 0x4e8(sp)
    stfd    f26, 0x4e0(sp)
    stfd    f25, 0x4d8(sp)
    stfd    f24, 0x4d0(sp)
    stfd    f23, 0x4c8(sp)
    stmw    r18, 0x490(sp)
    mr      r24, r3
    addi    r26, r5, 0x0
    mr      r27, r6
    addi    r25, r4, 0x0
    mr      r28, r7
    lfs     f25, 0x0(r4)
    lfs     f26, 0x0(r5)
    fctiwz  f3, f25
    lfs     f24, 0x8(r4)
    fctiwz  f1, f26
    lfs     f23, 0x8(r5)
    fctiwz  f2, f24
    stfd    f3, 0x468(sp)
    fctiwz  f0, f23
    stfd    f1, 0x460(sp)
    lwz     r3, 0x46c(sp)
    lwz     r0, 0x464(sp)
    stfd    f1, 0x478(sp)
    cmpw    r3, r0
    stfd    f3, 0x488(sp)
    lwz     r5, 0x47c(sp)
    stfd    f2, 0x480(sp)
    lwz     r3, 0x48c(sp)
    stfd    f0, 0x470(sp)
    lwz     r0, 0x484(sp)
    lwz     r6, 0x474(sp)
    ble-    branch_0x8018b310
    addi    r4, r3, 0x0
    addi    r3, r5, 0x0
    addi    r5, r4, 0x0
branch_0x8018b310:
    cmpw    r0, r6
    ble-    branch_0x8018b324
    mr      r4, r0
    addi    r0, r6, 0x0
    addi    r6, r4, 0x0
branch_0x8018b324:
    xoris   r0, r0, 0x8000
    lfd     f29, -0x4440(r2)
    stw     r0, 0x474(sp)
    xoris   r4, r3, 0x8000
    xoris   r3, r5, 0x8000
    lfs     f6, 0x4(r24)
    xoris   r0, r6, 0x8000
    lis     r31, 0x4330
    stw     r4, 0x464(sp)
    lfs     f5, 0x0(r24)
    stw     r3, 0x484(sp)
    lfs     f4, -0x4450(r2)
    stw     r0, 0x45c(sp)
    lfs     f30, -0x444c(r2)
    stw     r31, 0x470(sp)
    lfs     f31, -0x4448(r2)
    stw     r31, 0x460(sp)
    lfd     f0, 0x470(sp)
    stw     r31, 0x480(sp)
    lfd     f3, 0x460(sp)
    fsubs   f2, f0, f29
    stw     r31, 0x458(sp)
    lfd     f1, 0x480(sp)
    fsubs   f3, f3, f29
    lfd     f0, 0x458(sp)
    fsubs   f1, f1, f29
    fsubs   f0, f0, f29
    fadds   f2, f2, f6
    fadds   f3, f3, f5
    fadds   f1, f1, f5
    fadds   f0, f0, f6
    fmuls   f2, f4, f2
    fmuls   f3, f4, f3
    fmuls   f1, f4, f1
    fmuls   f0, f4, f0
    fctiwz  f2, f2
    fctiwz  f3, f3
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f2, 0x478(sp)
    stfd    f3, 0x468(sp)
    lwz     r22, 0x47c(sp)
    stfd    f1, 0x488(sp)
    lwz     r23, 0x46c(sp)
    mr      r29, r22
    stfd    f0, 0x450(sp)
    lwz     r21, 0x48c(sp)
    lwz     r20, 0x454(sp)
    b       branch_0x8018bd80

branch_0x8018b3e8:
    addi    r0, r29, 0x1
    xoris   r3, r29, 0x8000
    xoris   r0, r0, 0x8000
    stw     r3, 0x454(sp)
    mr      r30, r23
    stw     r0, 0x45c(sp)
    stw     r31, 0x450(sp)
    stw     r31, 0x458(sp)
    lfd     f1, 0x450(sp)
    lfd     f0, 0x458(sp)
    fsubs   f1, f1, f29
    fsubs   f0, f0, f29
    fmuls   f28, f30, f1
    fmuls   f27, f30, f0
    b       branch_0x8018bd74

branch_0x8018b424:
    cmpw    r30, r23
    bne-    branch_0x8018b434
    cmpw    r29, r22
    beq-    branch_0x8018bc38
branch_0x8018b434:
    xoris   r0, r30, 0x8000
    lfs     f0, 0x4(r24)
    stw     r0, 0x464(sp)
    addi    r0, r30, 0x1
    fsubs   f1, f28, f0
    xoris   r0, r0, 0x8000
    stw     r31, 0x460(sp)
    lfs     f2, 0x0(r24)
    lfd     f0, 0x460(sp)
    fctiwz  f1, f1
    stw     r0, 0x48c(sp)
    fsubs   f0, f0, f29
    stw     r31, 0x488(sp)
    fmuls   f0, f30, f0
    stfd    f1, 0x450(sp)
    lfd     f1, 0x488(sp)
    lwz     r0, 0x454(sp)
    fsubs   f2, f0, f2
    xoris   r0, r0, 0x8000
    fsubs   f1, f1, f29
    stw     r0, 0x45c(sp)
    fctiwz  f2, f2
    stw     r31, 0x458(sp)
    fmuls   f1, f30, f1
    stfd    f2, 0x468(sp)
    lfd     f2, 0x458(sp)
    lwz     r0, 0x46c(sp)
    fsubs   f3, f2, f29
    xoris   r0, r0, 0x8000
    stw     r0, 0x474(sp)
    stw     r31, 0x470(sp)
    lfd     f2, 0x470(sp)
    fsubs   f2, f2, f29
    stfs    f2, 0x3c0(sp)
    stfs    f3, 0x3c4(sp)
    lfs     f2, 0x0(r24)
    lfs     f3, 0x4(r24)
    fsubs   f2, f1, f2
    fsubs   f3, f28, f3
    fctiwz  f2, f2
    fctiwz  f3, f3
    stfd    f2, 0x448(sp)
    stfd    f3, 0x478(sp)
    lwz     r0, 0x44c(sp)
    lwz     r3, 0x47c(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x444(sp)
    xoris   r0, r3, 0x8000
    stw     r0, 0x484(sp)
    stw     r31, 0x440(sp)
    stw     r31, 0x480(sp)
    lfd     f2, 0x440(sp)
    lfd     f3, 0x480(sp)
    fsubs   f4, f2, f29
    fsubs   f2, f3, f29
    stfs    f4, 0x3c8(sp)
    stfs    f2, 0x3cc(sp)
    lfs     f2, 0x0(r24)
    lfs     f3, 0x4(r24)
    fsubs   f0, f0, f2
    fsubs   f2, f27, f3
    fctiwz  f0, f0
    fctiwz  f2, f2
    stfd    f0, 0x428(sp)
    stfd    f2, 0x438(sp)
    lwz     r0, 0x42c(sp)
    lwz     r3, 0x43c(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x424(sp)
    xoris   r0, r3, 0x8000
    stw     r0, 0x434(sp)
    stw     r31, 0x420(sp)
    stw     r31, 0x430(sp)
    lfd     f0, 0x420(sp)
    lfd     f2, 0x430(sp)
    fsubs   f0, f0, f29
    fsubs   f2, f2, f29
    stfs    f0, 0x3d0(sp)
    stfs    f2, 0x3d4(sp)
    lfs     f0, 0x0(r24)
    lfs     f2, 0x4(r24)
    fsubs   f0, f1, f0
    fsubs   f1, f27, f2
    fctiwz  f0, f0
    fctiwz  f1, f1
    stfd    f0, 0x408(sp)
    stfd    f1, 0x418(sp)
    lwz     r0, 0x40c(sp)
    lwz     r3, 0x41c(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x404(sp)
    xoris   r0, r3, 0x8000
    stw     r0, 0x414(sp)
    stw     r31, 0x400(sp)
    stw     r31, 0x410(sp)
    lfd     f0, 0x400(sp)
    lfd     f1, 0x410(sp)
    fsubs   f0, f0, f29
    fsubs   f1, f1, f29
    stfs    f0, 0x3d8(sp)
    stfs    f1, 0x3dc(sp)
    stfs    f26, 0x360(sp)
    stfs    f23, 0x364(sp)
    lfs     f0, 0x3c8(sp)
    stfs    f0, 0x368(sp)
    lfs     f1, 0x3cc(sp)
    stfs    f1, 0x36c(sp)
    lfs     f2, 0x360(sp)
    fsubs   f2, f2, f25
    stfs    f2, 0x360(sp)
    lfs     f2, 0x364(sp)
    fsubs   f2, f2, f24
    stfs    f2, 0x364(sp)
    lfs     f2, 0x368(sp)
    fsubs   f2, f2, f25
    stfs    f2, 0x368(sp)
    lfs     f2, 0x36c(sp)
    fsubs   f2, f2, f24
    stfs    f2, 0x36c(sp)
    lfs     f4, 0x36c(sp)
    lfs     f3, 0x364(sp)
    lfs     f2, 0x368(sp)
    stfs    f26, 0x370(sp)
    lfs     f5, 0x360(sp)
    fmuls   f2, f3, f2
    stfs    f23, 0x374(sp)
    fmsubs  f7, f5, f4, f2
    lfs     f2, 0x3c0(sp)
    stfs    f2, 0x378(sp)
    lfs     f3, 0x3c4(sp)
    stfs    f3, 0x37c(sp)
    lfs     f4, 0x370(sp)
    fsubs   f4, f4, f25
    stfs    f4, 0x370(sp)
    lfs     f4, 0x374(sp)
    fsubs   f4, f4, f24
    stfs    f4, 0x374(sp)
    lfs     f4, 0x378(sp)
    fsubs   f4, f4, f25
    stfs    f4, 0x378(sp)
    lfs     f4, 0x37c(sp)
    fsubs   f4, f4, f24
    stfs    f4, 0x37c(sp)
    lfs     f5, 0x374(sp)
    lfs     f4, 0x378(sp)
    lfs     f6, 0x370(sp)
    fmuls   f4, f5, f4
    lfs     f5, 0x37c(sp)
    fmsubs  f4, f6, f5, f4
    fmuls   f4, f4, f7
    fcmpo   cr0, f4, f31
    cror    2, 0, 2
    bne-    branch_0x8018b760
    stfs    f0, 0x340(sp)
    stfs    f1, 0x344(sp)
    stfs    f26, 0x348(sp)
    stfs    f23, 0x34c(sp)
    lfs     f4, 0x340(sp)
    fsubs   f4, f4, f2
    stfs    f4, 0x340(sp)
    lfs     f4, 0x344(sp)
    fsubs   f4, f4, f3
    stfs    f4, 0x344(sp)
    lfs     f4, 0x348(sp)
    fsubs   f4, f4, f2
    stfs    f4, 0x348(sp)
    lfs     f4, 0x34c(sp)
    fsubs   f4, f4, f3
    stfs    f4, 0x34c(sp)
    lfs     f6, 0x34c(sp)
    lfs     f5, 0x344(sp)
    lfs     f4, 0x348(sp)
    stfs    f0, 0x350(sp)
    lfs     f7, 0x340(sp)
    fmuls   f4, f5, f4
    stfs    f1, 0x354(sp)
    fmsubs  f7, f7, f6, f4
    stfs    f25, 0x358(sp)
    stfs    f24, 0x35c(sp)
    lfs     f4, 0x350(sp)
    fsubs   f4, f4, f2
    stfs    f4, 0x350(sp)
    lfs     f4, 0x354(sp)
    fsubs   f4, f4, f3
    stfs    f4, 0x354(sp)
    lfs     f4, 0x358(sp)
    fsubs   f4, f4, f2
    stfs    f4, 0x358(sp)
    lfs     f4, 0x35c(sp)
    fsubs   f4, f4, f3
    stfs    f4, 0x35c(sp)
    lfs     f5, 0x354(sp)
    lfs     f4, 0x358(sp)
    lfs     f6, 0x350(sp)
    fmuls   f4, f5, f4
    lfs     f5, 0x35c(sp)
    fmsubs  f4, f6, f5, f4
    fmuls   f4, f4, f7
    fcmpo   cr0, f4, f31
    cror    2, 0, 2
    bne-    branch_0x8018b760
    li      r0, 0x1
    b       branch_0x8018b764

branch_0x8018b760:
    li      r0, 0x0
branch_0x8018b764:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018bc38
    stfs    f26, 0x320(sp)
    stfs    f23, 0x324(sp)
    lfs     f4, 0x3d0(sp)
    stfs    f4, 0x328(sp)
    lfs     f5, 0x3d4(sp)
    stfs    f5, 0x32c(sp)
    lfs     f6, 0x320(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x320(sp)
    lfs     f6, 0x324(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x324(sp)
    lfs     f6, 0x328(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x328(sp)
    lfs     f6, 0x32c(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x32c(sp)
    lfs     f8, 0x32c(sp)
    lfs     f7, 0x324(sp)
    lfs     f6, 0x328(sp)
    stfs    f26, 0x330(sp)
    lfs     f9, 0x320(sp)
    fmuls   f6, f7, f6
    stfs    f23, 0x334(sp)
    fmsubs  f9, f9, f8, f6
    stfs    f2, 0x338(sp)
    stfs    f3, 0x33c(sp)
    lfs     f6, 0x330(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x330(sp)
    lfs     f6, 0x334(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x334(sp)
    lfs     f6, 0x338(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x338(sp)
    lfs     f6, 0x33c(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x33c(sp)
    lfs     f7, 0x334(sp)
    lfs     f6, 0x338(sp)
    lfs     f8, 0x330(sp)
    fmuls   f6, f7, f6
    lfs     f7, 0x33c(sp)
    fmsubs  f6, f8, f7, f6
    fmuls   f6, f6, f9
    fcmpo   cr0, f6, f31
    cror    2, 0, 2
    bne-    branch_0x8018b8fc
    stfs    f4, 0x300(sp)
    stfs    f5, 0x304(sp)
    stfs    f26, 0x308(sp)
    stfs    f23, 0x30c(sp)
    lfs     f6, 0x300(sp)
    fsubs   f6, f6, f2
    stfs    f6, 0x300(sp)
    lfs     f6, 0x304(sp)
    fsubs   f6, f6, f3
    stfs    f6, 0x304(sp)
    lfs     f6, 0x308(sp)
    fsubs   f6, f6, f2
    stfs    f6, 0x308(sp)
    lfs     f6, 0x30c(sp)
    fsubs   f6, f6, f3
    stfs    f6, 0x30c(sp)
    lfs     f8, 0x30c(sp)
    lfs     f7, 0x304(sp)
    lfs     f6, 0x308(sp)
    stfs    f4, 0x310(sp)
    lfs     f9, 0x300(sp)
    fmuls   f6, f7, f6
    stfs    f5, 0x314(sp)
    fmsubs  f7, f9, f8, f6
    stfs    f25, 0x318(sp)
    stfs    f24, 0x31c(sp)
    lfs     f6, 0x310(sp)
    fsubs   f6, f6, f2
    stfs    f6, 0x310(sp)
    lfs     f6, 0x314(sp)
    fsubs   f6, f6, f3
    stfs    f6, 0x314(sp)
    lfs     f6, 0x318(sp)
    fsubs   f2, f6, f2
    stfs    f2, 0x318(sp)
    lfs     f2, 0x31c(sp)
    fsubs   f2, f2, f3
    stfs    f2, 0x31c(sp)
    lfs     f3, 0x314(sp)
    lfs     f2, 0x318(sp)
    lfs     f6, 0x310(sp)
    fmuls   f2, f3, f2
    lfs     f3, 0x31c(sp)
    fmsubs  f2, f6, f3, f2
    fmuls   f2, f2, f7
    fcmpo   cr0, f2, f31
    cror    2, 0, 2
    bne-    branch_0x8018b8fc
    li      r0, 0x1
    b       branch_0x8018b900

branch_0x8018b8fc:
    li      r0, 0x0
branch_0x8018b900:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018bc38
    stfs    f26, 0x2e0(sp)
    stfs    f23, 0x2e4(sp)
    lfs     f2, 0x3d8(sp)
    stfs    f2, 0x2e8(sp)
    lfs     f3, 0x3dc(sp)
    stfs    f3, 0x2ec(sp)
    lfs     f6, 0x2e0(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x2e0(sp)
    lfs     f6, 0x2e4(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x2e4(sp)
    lfs     f6, 0x2e8(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x2e8(sp)
    lfs     f6, 0x2ec(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x2ec(sp)
    lfs     f8, 0x2ec(sp)
    lfs     f7, 0x2e4(sp)
    lfs     f6, 0x2e8(sp)
    stfs    f26, 0x2f0(sp)
    lfs     f9, 0x2e0(sp)
    fmuls   f6, f7, f6
    stfs    f23, 0x2f4(sp)
    fmsubs  f9, f9, f8, f6
    stfs    f0, 0x2f8(sp)
    stfs    f1, 0x2fc(sp)
    lfs     f6, 0x2f0(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x2f0(sp)
    lfs     f6, 0x2f4(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x2f4(sp)
    lfs     f6, 0x2f8(sp)
    fsubs   f6, f6, f25
    stfs    f6, 0x2f8(sp)
    lfs     f6, 0x2fc(sp)
    fsubs   f6, f6, f24
    stfs    f6, 0x2fc(sp)
    lfs     f7, 0x2f4(sp)
    lfs     f6, 0x2f8(sp)
    lfs     f8, 0x2f0(sp)
    fmuls   f6, f7, f6
    lfs     f7, 0x2fc(sp)
    fmsubs  f6, f8, f7, f6
    fmuls   f6, f6, f9
    fcmpo   cr0, f6, f31
    cror    2, 0, 2
    bne-    branch_0x8018ba98
    stfs    f2, 0x2c0(sp)
    stfs    f3, 0x2c4(sp)
    stfs    f26, 0x2c8(sp)
    stfs    f23, 0x2cc(sp)
    lfs     f6, 0x2c0(sp)
    fsubs   f6, f6, f0
    stfs    f6, 0x2c0(sp)
    lfs     f6, 0x2c4(sp)
    fsubs   f6, f6, f1
    stfs    f6, 0x2c4(sp)
    lfs     f6, 0x2c8(sp)
    fsubs   f6, f6, f0
    stfs    f6, 0x2c8(sp)
    lfs     f6, 0x2cc(sp)
    fsubs   f6, f6, f1
    stfs    f6, 0x2cc(sp)
    lfs     f8, 0x2cc(sp)
    lfs     f7, 0x2c4(sp)
    lfs     f6, 0x2c8(sp)
    stfs    f2, 0x2d0(sp)
    lfs     f9, 0x2c0(sp)
    fmuls   f6, f7, f6
    stfs    f3, 0x2d4(sp)
    fmsubs  f7, f9, f8, f6
    stfs    f25, 0x2d8(sp)
    stfs    f24, 0x2dc(sp)
    lfs     f6, 0x2d0(sp)
    fsubs   f6, f6, f0
    stfs    f6, 0x2d0(sp)
    lfs     f6, 0x2d4(sp)
    fsubs   f6, f6, f1
    stfs    f6, 0x2d4(sp)
    lfs     f6, 0x2d8(sp)
    fsubs   f0, f6, f0
    stfs    f0, 0x2d8(sp)
    lfs     f0, 0x2dc(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x2dc(sp)
    lfs     f1, 0x2d4(sp)
    lfs     f0, 0x2d8(sp)
    lfs     f6, 0x2d0(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x2dc(sp)
    fmsubs  f0, f6, f1, f0
    fmuls   f0, f0, f7
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8018ba98
    li      r0, 0x1
    b       branch_0x8018ba9c

branch_0x8018ba98:
    li      r0, 0x0
branch_0x8018ba9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018bc38
    stfs    f26, 0x2a0(sp)
    stfs    f23, 0x2a4(sp)
    stfs    f2, 0x2a8(sp)
    stfs    f3, 0x2ac(sp)
    lfs     f0, 0x2a0(sp)
    fsubs   f0, f0, f25
    stfs    f0, 0x2a0(sp)
    lfs     f0, 0x2a4(sp)
    fsubs   f0, f0, f24
    stfs    f0, 0x2a4(sp)
    lfs     f0, 0x2a8(sp)
    fsubs   f0, f0, f25
    stfs    f0, 0x2a8(sp)
    lfs     f0, 0x2ac(sp)
    fsubs   f0, f0, f24
    stfs    f0, 0x2ac(sp)
    lfs     f6, 0x2ac(sp)
    lfs     f1, 0x2a4(sp)
    lfs     f0, 0x2a8(sp)
    stfs    f26, 0x2b0(sp)
    lfs     f7, 0x2a0(sp)
    fmuls   f0, f1, f0
    stfs    f23, 0x2b4(sp)
    fmsubs  f7, f7, f6, f0
    stfs    f4, 0x2b8(sp)
    stfs    f5, 0x2bc(sp)
    lfs     f0, 0x2b0(sp)
    fsubs   f0, f0, f25
    stfs    f0, 0x2b0(sp)
    lfs     f0, 0x2b4(sp)
    fsubs   f0, f0, f24
    stfs    f0, 0x2b4(sp)
    lfs     f0, 0x2b8(sp)
    fsubs   f0, f0, f25
    stfs    f0, 0x2b8(sp)
    lfs     f0, 0x2bc(sp)
    fsubs   f0, f0, f24
    stfs    f0, 0x2bc(sp)
    lfs     f1, 0x2b4(sp)
    lfs     f0, 0x2b8(sp)
    lfs     f6, 0x2b0(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x2bc(sp)
    fmsubs  f0, f6, f1, f0
    fmuls   f0, f0, f7
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8018bc2c
    stfs    f2, 0x280(sp)
    stfs    f3, 0x284(sp)
    stfs    f26, 0x288(sp)
    stfs    f23, 0x28c(sp)
    lfs     f0, 0x280(sp)
    fsubs   f0, f0, f4
    stfs    f0, 0x280(sp)
    lfs     f0, 0x284(sp)
    fsubs   f0, f0, f5
    stfs    f0, 0x284(sp)
    lfs     f0, 0x288(sp)
    fsubs   f0, f0, f4
    stfs    f0, 0x288(sp)
    lfs     f0, 0x28c(sp)
    fsubs   f0, f0, f5
    stfs    f0, 0x28c(sp)
    lfs     f6, 0x28c(sp)
    lfs     f1, 0x284(sp)
    lfs     f0, 0x288(sp)
    stfs    f2, 0x290(sp)
    lfs     f2, 0x280(sp)
    fmuls   f0, f1, f0
    stfs    f3, 0x294(sp)
    fmsubs  f3, f2, f6, f0
    stfs    f25, 0x298(sp)
    stfs    f24, 0x29c(sp)
    lfs     f0, 0x290(sp)
    fsubs   f0, f0, f4
    stfs    f0, 0x290(sp)
    lfs     f0, 0x294(sp)
    fsubs   f0, f0, f5
    stfs    f0, 0x294(sp)
    lfs     f0, 0x298(sp)
    fsubs   f0, f0, f4
    stfs    f0, 0x298(sp)
    lfs     f0, 0x29c(sp)
    fsubs   f0, f0, f5
    stfs    f0, 0x29c(sp)
    lfs     f1, 0x294(sp)
    lfs     f0, 0x298(sp)
    lfs     f2, 0x290(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x29c(sp)
    fmsubs  f0, f2, f1, f0
    fmuls   f0, f0, f3
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8018bc2c
    li      r0, 0x1
    b       branch_0x8018bc30

branch_0x8018bc2c:
    li      r0, 0x0
branch_0x8018bc30:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018bd70
branch_0x8018bc38:
    lwz     r0, 0x8(r24)
    lwz     r4, 0x14(r24)
    mullw   r0, r29, r0
    add     r0, r30, r0
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x4
    lwzx    r19, r4, r0
    b       branch_0x8018bc84

branch_0x8018bc58:
    lwz     r3, 0x8(r19)
    mr      r4, r25
    lwz     r19, 0x4(r19)
    addi    r5, r26, 0x0
    addi    r18, r3, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    bl      bgIntersectLine__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8018bc84
    b       branch_0x8018bc90

branch_0x8018bc84:
    cmplwi  r19, 0x0
    bne+    branch_0x8018bc58
    li      r18, 0x0
branch_0x8018bc90:
    cmplwi  r18, 0x0
    beq-    branch_0x8018bca0
    mr      r3, r18
    b       branch_0x8018bd8c

branch_0x8018bca0:
    lwz     r0, 0x8(r24)
    lwz     r4, 0x14(r24)
    mullw   r0, r29, r0
    add     r0, r30, r0
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x1c
    lwzx    r19, r4, r0
    b       branch_0x8018bcec

branch_0x8018bcc0:
    lwz     r3, 0x8(r19)
    mr      r4, r25
    lwz     r19, 0x4(r19)
    addi    r5, r26, 0x0
    addi    r18, r3, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    bl      bgIntersectLine__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8018bcec
    b       branch_0x8018bcf8

branch_0x8018bcec:
    cmplwi  r19, 0x0
    bne+    branch_0x8018bcc0
    li      r18, 0x0
branch_0x8018bcf8:
    cmplwi  r18, 0x0
    beq-    branch_0x8018bd08
    mr      r3, r18
    b       branch_0x8018bd8c

branch_0x8018bd08:
    lwz     r0, 0x8(r24)
    lwz     r4, 0x14(r24)
    mullw   r0, r29, r0
    add     r0, r30, r0
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x10
    lwzx    r19, r4, r0
    b       branch_0x8018bd54

branch_0x8018bd28:
    lwz     r3, 0x8(r19)
    mr      r4, r25
    lwz     r19, 0x4(r19)
    addi    r5, r26, 0x0
    addi    r18, r3, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    bl      bgIntersectLine__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8018bd54
    b       branch_0x8018bd60

branch_0x8018bd54:
    cmplwi  r19, 0x0
    bne+    branch_0x8018bd28
    li      r18, 0x0
branch_0x8018bd60:
    cmplwi  r18, 0x0
    beq-    branch_0x8018bd70
    mr      r3, r18
    b       branch_0x8018bd8c

branch_0x8018bd70:
    addi    r30, r30, 0x1
branch_0x8018bd74:
    cmpw    r30, r21
    ble+    branch_0x8018b424
    addi    r29, r29, 0x1
branch_0x8018bd80:
    cmpw    r29, r20
    ble+    branch_0x8018b3e8
    li      r3, 0x0
branch_0x8018bd8c:
    lmw     r18, 0x490(sp)
    lwz     r0, 0x514(sp)
    lfd     f31, 0x508(sp)
    lfd     f30, 0x500(sp)
    mtlr    r0
    lfd     f29, 0x4f8(sp)
    lfd     f28, 0x4f0(sp)
    lfd     f27, 0x4e8(sp)
    lfd     f26, 0x4e0(sp)
    lfd     f25, 0x4d8(sp)
    lfd     f24, 0x4d0(sp)
    lfd     f23, 0x4c8(sp)
    addi    sp, sp, 0x510
    blr


.globl bgIntersectLine__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
bgIntersectLine__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_: # 0x8018bdc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1d8(sp)
    stfd    f31, 0x1d0(sp)
    stfd    f30, 0x1c8(sp)
    stfd    f29, 0x1c0(sp)
    stfd    f28, 0x1b8(sp)
    stfd    f27, 0x1b0(sp)
    stfd    f26, 0x1a8(sp)
    stfd    f25, 0x1a0(sp)
    stfd    f24, 0x198(sp)
    stfd    f23, 0x190(sp)
    stfd    f22, 0x188(sp)
    stw     r31, 0x184(sp)
    addi    r31, r7, 0x0
    stw     r30, 0x180(sp)
    mr.     r30, r3
    bne-    branch_0x8018be14
    li      r3, 0x0
    b       branch_0x8018c14c

branch_0x8018be14:
    lhz     r3, 0x0(r30)
    cmplwi  r3, 0x400
    beq-    branch_0x8018be58
    cmplwi  r3, 0x8400
    beq-    branch_0x8018be58
    addi    r0, r3, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8018be58
    addi    r0, r3, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x8018be58
    cmplwi  r3, 0x201
    beq-    branch_0x8018be58
    cmplwi  r3, 0x203
    bne-    branch_0x8018be60
branch_0x8018be58:
    li      r0, 0x1
    b       branch_0x8018be64

branch_0x8018be60:
    li      r0, 0x0
branch_0x8018be64:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018be74
    li      r3, 0x0
    b       branch_0x8018c14c

branch_0x8018be74:
    lwz     r7, 0x34(r30)
    clrlwi. r0, r6, 24
    lwz     r3, 0x38(r30)
    stw     r7, 0x174(sp)
    stw     r3, 0x178(sp)
    lwz     r0, 0x3c(r30)
    stw     r0, 0x17c(sp)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x168(sp)
    stw     r0, 0x16c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x170(sp)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x168(sp)
    lfs     f1, 0x16c(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x16c(sp)
    lfs     f1, 0x170(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x170(sp)
    lfs     f4, 0x178(sp)
    lfs     f0, 0x16c(sp)
    lfs     f2, 0x174(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x168(sp)
    lfs     f6, 0x17c(sp)
    lfs     f3, 0x170(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f5, f6, f3, f0
    beq-    branch_0x8018bf18
    lfs     f0, -0x4448(r2)
    fcmpo   cr0, f5, f0
    cror    2, 1, 2
    bne-    branch_0x8018bf18
    li      r3, 0x0
    b       branch_0x8018c14c

branch_0x8018bf18:
    fabs    f1, f5
    lfs     f0, -0x4438(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8018bf30
    li      r3, 0x0
    b       branch_0x8018c14c

branch_0x8018bf30:
    lfs     f0, 0x4(r4)
    lfs     f2, 0x174(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x0(r4)
    lfs     f3, 0x8(r4)
    lfs     f4, 0x40(r30)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x4448(r2)
    fmadds  f1, f6, f3, f1
    fadds   f1, f4, f1
    fneg    f1, f1
    fdivs   f1, f1, f5
    fcmpo   cr0, f1, f0
    bge-    branch_0x8018bf70
    li      r3, 0x0
    b       branch_0x8018c14c

branch_0x8018bf70:
    lfs     f0, -0x4434(r2)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8018bf84
    li      r3, 0x0
    b       branch_0x8018c14c

branch_0x8018bf84:
    lfs     f0, 0x168(sp)
    addi    r3, sp, 0xc8
    fmuls   f0, f0, f1
    stfs    f0, 0x168(sp)
    lfs     f0, 0x16c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(sp)
    lfs     f0, 0x170(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x170(sp)
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r0, 0x8(r4)
    addi    r4, sp, 0x168
    stw     r0, 0xd0(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc8(sp)
    lwz     r3, 0xcc(sp)
    stw     r0, 0x138(sp)
    lwz     r0, 0xd0(sp)
    stw     r3, 0x13c(sp)
    lfs     f25, -0x4448(r2)
    stw     r0, 0x140(sp)
    lfs     f30, 0x10(r30)
    lfs     f3, 0x138(sp)
    lfs     f24, 0x24(r30)
    lfs     f5, 0x140(sp)
    fsubs   f30, f30, f3
    lfs     f28, 0x18(r30)
    fsubs   f24, f24, f5
    lfs     f23, 0x1c(r30)
    lfs     f22, 0x20(r30)
    lfs     f4, 0x13c(sp)
    fsubs   f28, f28, f5
    fsubs   f22, f22, f4
    lfs     f29, 0x14(r30)
    fsubs   f23, f23, f3
    lfs     f27, 0x28(r30)
    fmuls   f0, f30, f24
    fsubs   f29, f29, f4
    lfs     f26, 0x2c(r30)
    fmuls   f2, f28, f22
    lfs     f31, 0x30(r30)
    fmsubs  f0, f28, f23, f0
    fmuls   f1, f29, f23
    fmsubs  f2, f29, f24, f2
    fmuls   f0, f0, f0
    fmsubs  f1, f30, f22, f1
    fsubs   f27, f27, f3
    fmadds  f0, f2, f2, f0
    fsubs   f26, f26, f4
    fsubs   f31, f31, f5
    fmadds  f1, f1, f1, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f29, f22
    fmadds  f0, f30, f23, f0
    fmadds  f2, f28, f24, f0
    bl      atan2f
    fmuls   f0, f23, f31
    fmuls   f3, f24, f26
    fmuls   f2, f22, f27
    fmsubs  f0, f24, f27, f0
    fabs    f1, f1
    fmsubs  f3, f22, f31, f3
    fmuls   f0, f0, f0
    fabs    f1, f1
    fmsubs  f2, f23, f26, f2
    fmadds  f0, f3, f3, f0
    fadds   f25, f25, f1
    fmadds  f1, f2, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f22, f26
    fmadds  f0, f23, f27, f0
    fmadds  f2, f24, f31, f0
    bl      atan2f
    fmuls   f0, f27, f28
    fmuls   f3, f31, f29
    fmuls   f2, f26, f30
    fmsubs  f0, f31, f30, f0
    fabs    f1, f1
    fmsubs  f3, f26, f28, f3
    fmuls   f0, f0, f0
    fabs    f1, f1
    fmsubs  f2, f27, f29, f2
    fmadds  f0, f3, f3, f0
    fadds   f25, f25, f1
    fmadds  f1, f2, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f26, f29
    fmadds  f0, f27, f30, f0
    fmadds  f2, f31, f28, f0
    bl      atan2f
    fabs    f2, f1
    lfs     f1, -0x4430(r2)
    lfs     f0, -0x442c(r2)
    fabs    f2, f2
    fadds   f25, f25, f2
    fsubs   f1, f1, f25
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8018c128
    li      r3, 0x0
    b       branch_0x8018c14c

branch_0x8018c128:
    cmplwi  r31, 0x0
    beq-    branch_0x8018c148
    lwz     r3, 0x138(sp)
    lwz     r0, 0x13c(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x140(sp)
    stw     r0, 0x8(r31)
branch_0x8018c148:
    li      r3, 0x1
branch_0x8018c14c:
    lwz     r0, 0x1dc(sp)
    lfd     f31, 0x1d0(sp)
    lfd     f30, 0x1c8(sp)
    mtlr    r0
    lfd     f29, 0x1c0(sp)
    lfd     f28, 0x1b8(sp)
    lfd     f27, 0x1b0(sp)
    lfd     f26, 0x1a8(sp)
    lfd     f25, 0x1a0(sp)
    lfd     f24, 0x198(sp)
    lfd     f23, 0x190(sp)
    lfd     f22, 0x188(sp)
    lwz     r31, 0x184(sp)
    lwz     r30, 0x180(sp)
    addi    sp, sp, 0x1d8
    blr


.globl checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData
checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData: # 0x8018c18c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    fmr     f29, f3
    stfd    f28, 0x88(sp)
    fmr     f28, f2
    stfd    f27, 0x80(sp)
    fmr     f27, f1
    stmw    r27, 0x6c(sp)
    mr      r29, r3
    mr      r30, r4
    mr      r31, r5
    lfs     f1, 0x0(r3)
    fneg    f0, f1
    fcmpo   cr0, f27, f0
    blt-    branch_0x8018c200
    fcmpo   cr0, f1, f27
    cror    2, 0, 2
    beq-    branch_0x8018c200
    lfs     f2, 0x4(r29)
    fneg    f0, f2
    fcmpo   cr0, f29, f0
    blt-    branch_0x8018c200
    fcmpo   cr0, f2, f29
    cror    2, 0, 2
    bne-    branch_0x8018c214
branch_0x8018c200:
    lis     r3, mIllegalCheckData__17TMapCollisionData@h
    addi    r0, r3, mIllegalCheckData__17TMapCollisionData@l
    stw     r0, 0x0(r31)
    lfs     f1, -0x4428(r2)
    b       branch_0x8018c30c

branch_0x8018c214:
    fadds   f0, f29, f2
    lfs     f2, -0x4450(r2)
    fadds   f1, f27, f1
    lwz     r0, 0x8(r29)
    lwz     r6, 0x18(r29)
    fmuls   f0, f2, f0
    mr      r3, r30
    fmuls   f2, f2, f1
    addi    r5, sp, 0x48
    fmr     f1, f27
    fctiwz  f0, f0
    fctiwz  f4, f2
    fmr     f2, f28
    stfd    f0, 0x58(sp)
    fmr     f3, f29
    lwz     r27, 0x5c(sp)
    stfd    f4, 0x60(sp)
    mullw   r0, r27, r0
    lwz     r28, 0x64(sp)
    add     r0, r28, r0
    mulli   r4, r0, 0x24
    addi    r0, r4, 0x4
    lwzx    r4, r6, r0
    bl      checkGroundList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData
    lwz     r0, 0x8(r29)
    fmr     f0, f1
    lwz     r4, 0x14(r29)
    fmr     f1, f27
    mullw   r0, r27, r0
    fmr     f31, f0
    fmr     f2, f28
    fmr     f3, f29
    add     r0, r28, r0
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x4
    lwzx    r4, r4, r0
    addi    r3, r30, 0x0
    addi    r5, sp, 0x44
    bl      checkGroundList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData
    lwz     r3, 0x244(r29)
    fmr     f30, f1
    cmplwi  r3, 0x0
    beq-    branch_0x8018c2e8
    fmr     f1, f27
    addi    r4, sp, 0x40
    fmr     f2, f28
    fmr     f3, f29
    bl      checkPlaneGround__20TMapCheckGroundPlaneFfffPPC12TBGCheckData
    fcmpo   cr0, f1, f30
    ble-    branch_0x8018c2e8
    lwz     r0, 0x40(sp)
    fmr     f30, f1
    stw     r0, 0x44(sp)
branch_0x8018c2e8:
    fcmpo   cr0, f31, f30
    ble-    branch_0x8018c300
    lwz     r0, 0x48(sp)
    fmr     f1, f31
    stw     r0, 0x0(r31)
    b       branch_0x8018c30c

branch_0x8018c300:
    lwz     r0, 0x44(sp)
    fmr     f1, f30
    stw     r0, 0x0(r31)
branch_0x8018c30c:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    addi    sp, sp, 0xa8
    blr


.globl checkGroundList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData
checkGroundList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData: # 0x8018c334
    stwu    sp, -0x78(sp)
    rlwinm  r6, r3, 0, 29, 29
    clrlwi  r7, r3, 31
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    b       branch_0x8018c498

branch_0x8018c34c:
    lwz     r3, 0x8(r4)
    lwz     r4, 0x4(r4)
    lfs     f4, 0x8(r3)
    fcmpo   cr0, f4, f2
    bgt-    branch_0x8018c4a4
    cmpwi   r6, 0x0
    beq-    branch_0x8018c3a0
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x401
    beq-    branch_0x8018c38c
    cmplwi  r0, 0x801
    beq-    branch_0x8018c38c
    cmplwi  r0, 0x10a
    beq-    branch_0x8018c38c
    cmplwi  r0, 0x8400
    bne-    branch_0x8018c394
branch_0x8018c38c:
    li      r0, 0x1
    b       branch_0x8018c398

branch_0x8018c394:
    li      r0, 0x0
branch_0x8018c398:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018c4a4
branch_0x8018c3a0:
    cmpwi   r7, 0x0
    beq-    branch_0x8018c3e0
    lhz     r8, 0x0(r3)
    cmplwi  r8, 0x100
    beq-    branch_0x8018c3cc
    addi    r0, r8, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8018c3cc
    cmplwi  r8, 0x4104
    bne-    branch_0x8018c3d4
branch_0x8018c3cc:
    li      r0, 0x1
    b       branch_0x8018c3d8

branch_0x8018c3d4:
    li      r0, 0x0
branch_0x8018c3d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018c4a4
branch_0x8018c3e0:
    lfs     f31, 0x10(r3)
    lfs     f30, 0x18(r3)
    lfs     f10, 0x24(r3)
    fsubs   f6, f31, f1
    lfs     f11, 0x1c(r3)
    fsubs   f8, f30, f3
    fsubs   f4, f10, f30
    fsubs   f7, f11, f31
    fmuls   f4, f6, f4
    fmsubs  f4, f8, f7, f4
    fcmpo   cr0, f4, f9
    blt-    branch_0x8018c4a4
    lfs     f12, 0x30(r3)
    fsubs   f6, f11, f1
    lfs     f13, 0x28(r3)
    fsubs   f8, f10, f3
    fsubs   f4, f12, f10
    fsubs   f7, f13, f11
    fmuls   f4, f6, f4
    fmsubs  f4, f8, f7, f4
    fcmpo   cr0, f4, f9
    blt-    branch_0x8018c4a4
    fsubs   f6, f13, f1
    fsubs   f4, f30, f12
    fsubs   f8, f12, f3
    fsubs   f7, f31, f13
    fmuls   f4, f6, f4
    fmsubs  f4, f8, f7, f4
    fcmpo   cr0, f4, f9
    blt-    branch_0x8018c4a4
    lfs     f4, 0x3c(r3)
    lfs     f7, 0x34(r3)
    fmuls   f6, f3, f4
    lfs     f8, 0x40(r3)
    lfs     f4, 0x38(r3)
    fmadds  f6, f1, f7, f6
    fadds   f6, f8, f6
    fneg    f6, f6
    fdivs   f6, f6, f4
    fadds   f4, f5, f6
    fsubs   f4, f2, f4
    fcmpo   cr0, f4, f0
    blt-    branch_0x8018c4a4
    fmr     f1, f6
    stw     r3, 0x0(r5)
    b       branch_0x8018c4bc

branch_0x8018c498:
    lfs     f9, -0x4424(r2)
    lfs     f5, -0x4420(r2)
    lfs     f0, -0x4448(r2)
branch_0x8018c4a4:
    cmplwi  r4, 0x0
    bne+    branch_0x8018c34c
    lis     r3, mIllegalCheckData__17TMapCollisionData@h
    addi    r0, r3, mIllegalCheckData__17TMapCollisionData@l
    stw     r0, 0x0(r5)
    lfs     f1, -0x4428(r2)
branch_0x8018c4bc:
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl checkRoof__17TMapCollisionDataCFfffUcPPC12TBGCheckData
checkRoof__17TMapCollisionDataCFfffUcPPC12TBGCheckData: # 0x8018c4cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    fmr     f31, f1
    stfd    f30, 0x80(sp)
    fmr     f30, f3
    stfd    f29, 0x78(sp)
    fmr     f29, f2
    stmw    r27, 0x64(sp)
    mr      r27, r3
    mr      r30, r4
    mr      r31, r5
    lfs     f1, 0x0(r3)
    fneg    f0, f1
    fcmpo   cr0, f31, f0
    blt-    branch_0x8018c538
    fcmpo   cr0, f1, f31
    cror    2, 0, 2
    beq-    branch_0x8018c538
    lfs     f2, 0x4(r27)
    fneg    f0, f2
    fcmpo   cr0, f30, f0
    blt-    branch_0x8018c538
    fcmpo   cr0, f2, f30
    cror    2, 0, 2
    bne-    branch_0x8018c54c
branch_0x8018c538:
    lis     r3, mIllegalCheckData__17TMapCollisionData@h
    addi    r0, r3, mIllegalCheckData__17TMapCollisionData@l
    stw     r0, 0x0(r31)
    lfs     f1, -0x441c(r2)
    b       branch_0x8018c608

branch_0x8018c54c:
    fadds   f0, f30, f2
    lfs     f2, -0x4450(r2)
    fadds   f1, f31, f1
    lwz     r0, 0x8(r27)
    lwz     r6, 0x18(r27)
    fmuls   f0, f2, f0
    mr      r3, r30
    fmuls   f2, f2, f1
    addi    r5, sp, 0x44
    fmr     f1, f31
    fctiwz  f0, f0
    fctiwz  f4, f2
    fmr     f2, f29
    stfd    f0, 0x50(sp)
    fmr     f3, f30
    lwz     r28, 0x54(sp)
    stfd    f4, 0x58(sp)
    mullw   r0, r28, r0
    lwz     r29, 0x5c(sp)
    add     r0, r29, r0
    mulli   r4, r0, 0x24
    addi    r0, r4, 0x10
    lwzx    r4, r6, r0
    bl      checkRoofList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData
    lwz     r0, 0x8(r27)
    fmr     f0, f1
    fmr     f1, f31
    lwz     r4, 0x14(r27)
    mullw   r0, r28, r0
    fmr     f31, f0
    fmr     f2, f29
    fmr     f3, f30
    add     r0, r29, r0
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x10
    lwzx    r4, r4, r0
    addi    r3, r30, 0x0
    addi    r5, sp, 0x40
    bl      checkRoofList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData
    fcmpo   cr0, f31, f1
    bge-    branch_0x8018c600
    lwz     r0, 0x44(sp)
    fmr     f1, f31
    stw     r0, 0x0(r31)
    b       branch_0x8018c608

branch_0x8018c600:
    lwz     r0, 0x40(sp)
    stw     r0, 0x0(r31)
branch_0x8018c608:
    lmw     r27, 0x64(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    addi    sp, sp, 0x90
    blr


.globl checkRoofList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData
checkRoofList__17TMapCollisionDataFfffUcPC12TBGCheckListPPC12TBGCheckData: # 0x8018c628
    stwu    sp, -0x70(sp)
    rlwinm  r6, r3, 0, 29, 29
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    b       branch_0x8018c73c

branch_0x8018c63c:
    cmpwi   r6, 0x0
    lwz     r3, 0x8(r4)
    lwz     r4, 0x4(r4)
    beq-    branch_0x8018c684
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x401
    beq-    branch_0x8018c670
    cmplwi  r0, 0x801
    beq-    branch_0x8018c670
    cmplwi  r0, 0x10a
    beq-    branch_0x8018c670
    cmplwi  r0, 0x8400
    bne-    branch_0x8018c678
branch_0x8018c670:
    li      r0, 0x1
    b       branch_0x8018c67c

branch_0x8018c678:
    li      r0, 0x0
branch_0x8018c67c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018c748
branch_0x8018c684:
    lfs     f31, 0x10(r3)
    lfs     f30, 0x18(r3)
    lfs     f10, 0x24(r3)
    fsubs   f6, f31, f1
    lfs     f11, 0x1c(r3)
    fsubs   f8, f30, f3
    fsubs   f4, f10, f30
    fsubs   f7, f11, f31
    fmuls   f4, f6, f4
    fmsubs  f4, f8, f7, f4
    fcmpo   cr0, f4, f9
    bgt-    branch_0x8018c748
    lfs     f12, 0x30(r3)
    fsubs   f6, f11, f1
    lfs     f13, 0x28(r3)
    fsubs   f8, f10, f3
    fsubs   f4, f12, f10
    fsubs   f7, f13, f11
    fmuls   f4, f6, f4
    fmsubs  f4, f8, f7, f4
    fcmpo   cr0, f4, f9
    bgt-    branch_0x8018c748
    fsubs   f6, f13, f1
    fsubs   f4, f30, f12
    fsubs   f8, f12, f3
    fsubs   f7, f31, f13
    fmuls   f4, f6, f4
    fmsubs  f4, f8, f7, f4
    fcmpo   cr0, f4, f9
    bgt-    branch_0x8018c748
    lfs     f4, 0x3c(r3)
    lfs     f7, 0x34(r3)
    fmuls   f6, f3, f4
    lfs     f8, 0x40(r3)
    lfs     f4, 0x38(r3)
    fmadds  f6, f1, f7, f6
    fadds   f6, f8, f6
    fneg    f6, f6
    fdivs   f6, f6, f4
    fsubs   f4, f6, f5
    fsubs   f4, f2, f4
    fcmpo   cr0, f4, f0
    bgt-    branch_0x8018c748
    fmr     f1, f6
    stw     r3, 0x0(r5)
    b       branch_0x8018c760

branch_0x8018c73c:
    lfs     f9, -0x4434(r2)
    lfs     f5, -0x4420(r2)
    lfs     f0, -0x4448(r2)
branch_0x8018c748:
    cmplwi  r4, 0x0
    bne+    branch_0x8018c63c
    lis     r3, mIllegalCheckData__17TMapCollisionData@h
    addi    r0, r3, mIllegalCheckData__17TMapCollisionData@l
    stw     r0, 0x0(r5)
    lfs     f1, -0x441c(r2)
branch_0x8018c760:
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl checkWalls__17TMapCollisionDataCFP18TBGWallCheckRecord
checkWalls__17TMapCollisionDataCFP18TBGWallCheckRecord: # 0x8018c770
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r31, r4, 0x0
    mr      r30, r3
    stw     r0, 0x14(r4)
    lfs     f3, 0x0(r3)
    lfs     f1, 0x0(r4)
    fneg    f0, f3
    fcmpo   cr0, f1, f0
    blt-    branch_0x8018c7d0
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    beq-    branch_0x8018c7d0
    lfs     f4, 0x4(r30)
    lfs     f2, 0x8(r31)
    fneg    f0, f4
    fcmpo   cr0, f2, f0
    blt-    branch_0x8018c7d0
    fcmpo   cr0, f4, f2
    cror    2, 0, 2
    bne-    branch_0x8018c7d8
branch_0x8018c7d0:
    li      r3, 0x0
    b       branch_0x8018c87c

branch_0x8018c7d8:
    fadds   f0, f2, f4
    lfs     f2, -0x4450(r2)
    fadds   f1, f1, f3
    lwz     r0, 0x8(r30)
    lwz     r5, 0x18(r30)
    fmuls   f0, f2, f0
    mr      r4, r31
    fmuls   f1, f2, f1
    fctiwz  f0, f0
    fctiwz  f1, f1
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    stfd    f1, 0x80(sp)
    mullw   r0, r3, r0
    stfd    f1, 0x70(sp)
    lwz     r29, 0x84(sp)
    lwz     r3, 0x74(sp)
    stfd    f0, 0x78(sp)
    add     r0, r3, r0
    lwz     r28, 0x7c(sp)
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x1c
    lwzx    r3, r5, r0
    bl      checkWallList__17TMapCollisionDataFPC12TBGCheckListP18TBGWallCheckRecord
    lwz     r0, 0x10(r31)
    addi    r27, r3, 0x0
    cmpw    r27, r0
    blt-    branch_0x8018c850
    mr      r3, r27
    b       branch_0x8018c87c

branch_0x8018c850:
    lwz     r0, 0x8(r30)
    mr      r4, r31
    lwz     r5, 0x14(r30)
    mullw   r0, r28, r0
    add     r0, r29, r0
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x1c
    lwzx    r3, r5, r0
    bl      checkWallList__17TMapCollisionDataFPC12TBGCheckListP18TBGWallCheckRecord
    add     r27, r27, r3
    addi    r3, r27, 0x0
branch_0x8018c87c:
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl checkWallList__17TMapCollisionDataFPC12TBGCheckListP18TBGWallCheckRecord
checkWallList__17TMapCollisionDataFPC12TBGCheckListP18TBGWallCheckRecord: # 0x8018c890
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x310(sp)
    stfd    f31, 0x308(sp)
    stfd    f30, 0x300(sp)
    stfd    f29, 0x2f8(sp)
    stfd    f28, 0x2f0(sp)
    stfd    f27, 0x2e8(sp)
    stmw    r27, 0x2d4(sp)
    mr.     r28, r3
    addi    r29, r4, 0x0
    bne-    branch_0x8018c8c8
    li      r3, 0x0
    b       branch_0x8018cca4

branch_0x8018c8c8:
    lfs     f27, 0x4(r29)
    li      r30, 0x0
    b       branch_0x8018cc8c

branch_0x8018c8d4:
    lwz     r31, 0x8(r28)
    lwz     r28, 0x4(r28)
    lfs     f0, 0x8(r31)
    mr      r3, r31
    fcmpo   cr0, f0, f27
    bgt-    branch_0x8018cc98
    lfs     f0, 0xc(r31)
    fcmpo   cr0, f0, f27
    bge-    branch_0x8018c900
    mr      r3, r30
    b       branch_0x8018cca4

branch_0x8018c900:
    lwz     r27, 0x18(r29)
    lfs     f28, 0xc(r29)
    rlwinm. r0, r27, 0, 29, 29
    beq-    branch_0x8018c950
    lhz     r0, 0x0(r31)
    cmplwi  r0, 0x401
    beq-    branch_0x8018c934
    cmplwi  r0, 0x801
    beq-    branch_0x8018c934
    cmplwi  r0, 0x10a
    beq-    branch_0x8018c934
    cmplwi  r0, 0x8400
    bne-    branch_0x8018c93c
branch_0x8018c934:
    li      r0, 0x1
    b       branch_0x8018c940

branch_0x8018c93c:
    li      r0, 0x0
branch_0x8018c940:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018c950
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018c950:
    clrlwi. r0, r27, 31
    beq-    branch_0x8018c96c
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8018c96c
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018c96c:
    lfs     f5, 0x4(r29)
    fneg    f0, f28
    lfs     f1, 0x38(r31)
    lfs     f6, 0x0(r29)
    fmuls   f1, f5, f1
    lfs     f4, 0x34(r31)
    lfs     f7, 0x8(r29)
    lfs     f8, 0x3c(r31)
    fmadds  f1, f6, f4, f1
    lfs     f2, 0x40(r31)
    fmadds  f1, f7, f8, f1
    fadds   f3, f2, f1
    fcmpo   cr0, f3, f0
    blt-    branch_0x8018c9ac
    fcmpo   cr0, f28, f3
    bge-    branch_0x8018c9b4
branch_0x8018c9ac:
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018c9b4:
    lhz     r0, 0x4(r31)
    lfs     f2, 0x14(r31)
    rlwinm. r0, r0, 0, 28, 28
    lfs     f1, 0x20(r31)
    lfs     f0, 0x2c(r31)
    beq-    branch_0x8018c9d4
    li      r0, 0x1
    b       branch_0x8018c9d8

branch_0x8018c9d4:
    li      r0, 0x0
branch_0x8018c9d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018cb10
    fcmpo   cr0, f4, f29
    ble-    branch_0x8018ca7c
    lfs     f8, 0x18(r31)
    fneg    f12, f7
    lfs     f7, 0x24(r31)
    fsubs   f6, f1, f2
    fneg    f11, f8
    fneg    f13, f7
    lfs     f10, 0x30(r31)
    fsubs   f9, f2, f5
    fsubs   f7, f11, f12
    fsubs   f8, f13, f11
    fneg    f10, f10
    fmuls   f6, f7, f6
    fmsubs  f6, f9, f8, f6
    fcmpo   cr0, f6, f30
    ble-    branch_0x8018ca2c
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018ca2c:
    fsubs   f7, f13, f12
    fsubs   f6, f0, f1
    fsubs   f9, f1, f5
    fsubs   f8, f10, f13
    fmuls   f1, f7, f6
    fmsubs  f1, f9, f8, f1
    fcmpo   cr0, f1, f30
    ble-    branch_0x8018ca54
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018ca54:
    fsubs   f6, f10, f12
    fsubs   f1, f2, f0
    fsubs   f5, f0, f5
    fsubs   f2, f11, f10
    fmuls   f0, f6, f1
    fmsubs  f0, f5, f2, f0
    fcmpo   cr0, f0, f30
    ble-    branch_0x8018cc20
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018ca7c:
    lfs     f8, 0x18(r31)
    fneg    f11, f7
    lfs     f7, 0x24(r31)
    fsubs   f6, f1, f2
    fneg    f13, f8
    fneg    f12, f7
    lfs     f10, 0x30(r31)
    fsubs   f9, f2, f5
    fsubs   f7, f13, f11
    fsubs   f8, f12, f13
    fneg    f10, f10
    fmuls   f6, f7, f6
    fmsubs  f6, f9, f8, f6
    fcmpo   cr0, f6, f31
    bge-    branch_0x8018cac0
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cac0:
    fsubs   f7, f12, f11
    fsubs   f6, f0, f1
    fsubs   f9, f1, f5
    fsubs   f8, f10, f12
    fmuls   f1, f7, f6
    fmsubs  f1, f9, f8, f1
    fcmpo   cr0, f1, f31
    bge-    branch_0x8018cae8
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cae8:
    fsubs   f6, f10, f11
    fsubs   f1, f2, f0
    fsubs   f5, f0, f5
    fsubs   f2, f13, f10
    fmuls   f0, f6, f1
    fmsubs  f0, f5, f2, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x8018cc20
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cb10:
    fcmpo   cr0, f8, f29
    ble-    branch_0x8018cb9c
    lfs     f12, 0x10(r31)
    fsubs   f7, f1, f2
    lfs     f11, 0x1c(r31)
    fsubs   f10, f2, f5
    fsubs   f8, f12, f6
    fsubs   f9, f11, f12
    lfs     f13, 0x28(r31)
    fmuls   f7, f8, f7
    fmsubs  f7, f10, f9, f7
    fcmpo   cr0, f7, f30
    ble-    branch_0x8018cb4c
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cb4c:
    fsubs   f8, f11, f6
    fsubs   f7, f0, f1
    fsubs   f10, f1, f5
    fsubs   f9, f13, f11
    fmuls   f1, f8, f7
    fmsubs  f1, f10, f9, f1
    fcmpo   cr0, f1, f30
    ble-    branch_0x8018cb74
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cb74:
    fsubs   f6, f13, f6
    fsubs   f1, f2, f0
    fsubs   f5, f0, f5
    fsubs   f2, f12, f13
    fmuls   f0, f6, f1
    fmsubs  f0, f5, f2, f0
    fcmpo   cr0, f0, f30
    ble-    branch_0x8018cc20
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cb9c:
    lfs     f12, 0x10(r31)
    fsubs   f7, f1, f2
    lfs     f11, 0x1c(r31)
    fsubs   f10, f2, f5
    fsubs   f8, f12, f6
    fsubs   f9, f11, f12
    lfs     f13, 0x28(r31)
    fmuls   f7, f8, f7
    fmsubs  f7, f10, f9, f7
    fcmpo   cr0, f7, f31
    bge-    branch_0x8018cbd0
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cbd0:
    fsubs   f8, f11, f6
    fsubs   f7, f0, f1
    fsubs   f10, f1, f5
    fsubs   f9, f13, f11
    fmuls   f1, f8, f7
    fmsubs  f1, f10, f9, f1
    fcmpo   cr0, f1, f31
    bge-    branch_0x8018cbf8
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cbf8:
    fsubs   f6, f13, f6
    fsubs   f1, f2, f0
    fsubs   f5, f0, f5
    fsubs   f2, f12, f13
    fmuls   f0, f6, f1
    fmsubs  f0, f5, f2, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x8018cc20
    li      r0, 0x0
    b       branch_0x8018cc4c

branch_0x8018cc20:
    rlwinm. r0, r27, 0, 30, 30
    bne-    branch_0x8018cc48
    fsubs   f2, f28, f3
    lfs     f0, 0x0(r29)
    fmadds  f0, f2, f4, f0
    stfs    f0, 0x0(r29)
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x8(r29)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x8(r29)
branch_0x8018cc48:
    li      r0, 0x1
branch_0x8018cc4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018cc98
    lwz     r0, 0x14(r29)
    addi    r30, r30, 0x1
    slwi    r3, r0, 2
    addi    r0, r3, 0x1c
    stwx    r31, r29, r0
    lwz     r3, 0x14(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r29)
    lwz     r3, 0x14(r29)
    lwz     r0, 0x10(r29)
    cmpw    r3, r0
    blt-    branch_0x8018cc98
    mr      r3, r30
    b       branch_0x8018cca4

branch_0x8018cc8c:
    lfs     f31, -0x4424(r2)
    lfs     f29, -0x4448(r2)
    lfs     f30, -0x4434(r2)
branch_0x8018cc98:
    cmplwi  r28, 0x0
    bne+    branch_0x8018c8d4
    mr      r3, r30
branch_0x8018cca4:
    lmw     r27, 0x2d4(sp)
    lwz     r0, 0x314(sp)
    lfd     f31, 0x308(sp)
    lfd     f30, 0x300(sp)
    mtlr    r0
    lfd     f29, 0x2f8(sp)
    lfd     f28, 0x2f0(sp)
    lfd     f27, 0x2e8(sp)
    addi    sp, sp, 0x310
    blr


.globl __sinit_MapCheck_cpp
__sinit_MapCheck_cpp: # 0x8018cccc
    mflr    r0
    lis     r3, unk_803f7ae0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f7ae0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cd14
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8018cd14:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cd44
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8018cd44:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cd74
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8018cd74:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cda4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8018cda4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cdd4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8018cdd4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ce04
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8018ce04:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ce34
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8018ce34:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ce64
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8018ce64:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ce94
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8018ce94:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cec4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8018cec4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cef4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8018cef4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cf24
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8018cf24:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cf54
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8018cf54:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cf84
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8018cf84:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8018cfb4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8018cfb4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

