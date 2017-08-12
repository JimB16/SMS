
.globl Hx_Test5
Hx_Test5: # 0x8017df74
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stfd    f30, 0x100(sp)
    stfd    f29, 0xf8(sp)
    stfd    f28, 0xf0(sp)
    stfd    f27, 0xe8(sp)
    stfd    f26, 0xe0(sp)
    stfd    f25, 0xd8(sp)
    stfd    f24, 0xd0(sp)
    stfd    f23, 0xc8(sp)
    stfd    f22, 0xc0(sp)
    stfd    f21, 0xb8(sp)
    stfd    f20, 0xb0(sp)
    stfd    f19, 0xa8(sp)
    stfd    f18, 0xa0(sp)
    stfd    f17, 0x98(sp)
    stfd    f16, 0x90(sp)
    stfd    f15, 0x88(sp)
    stmw    r24, 0x68(sp)
    addi    r31, r3, hx@l
    addi    r29, r31, 0x80
    bl      Hx_CameraInit
    li      r3, 0x1
    li      r4, 0x0
    bl      Hx_GxInit
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    addi    r30, r31, 0x38
    lwz     r0, 0x38(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8017e08c
    bge-    branch_0x8017e40c
    cmpwi   r0, 0x0
    bge-    branch_0x8017e078
    b       branch_0x8017e40c

branch_0x8017e074:
    b       branch_0x8017e40c

branch_0x8017e078:
    li      r0, 0x14
    stw     r0, 0x3c(r31)
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
branch_0x8017e08c:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x3
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x0
    bl      GXSetBlendMode
    addi    r4, r29, 0x0
    addi    r3, sp, 0xc
    li      r5, 0x40
    li      r6, 0x40
    li      r7, 0x4
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x4620(r2)
    addi    r3, sp, 0xc
    lfs     f2, -0x461c(r2)
    li      r4, 0x1
    fmr     f3, f1
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXInitTexObjLOD
    lwz     r0, 0x3c(r31)
    lis     r27, 0x4330
    lfd     f19, -0x45f0(r2)
    li      r25, 0x0
    stw     r0, 0x64(sp)
    lfs     f1, -0x4614(r2)
    lis     r28, 0xcc01
    stw     r27, 0x60(sp)
    lfs     f2, -0x4610(r2)
    lfd     f0, 0x60(sp)
    lfs     f28, -0x460c(r2)
    fsubs   f3, f0, f19
    lfs     f0, -0x4618(r2)
    lfs     f23, -0x45f4(r2)
    lfs     f31, -0x4600(r2)
    fdivs   f3, f3, f1
    lfs     f1, -0x45f8(r2)
    lfs     f17, -0x4608(r2)
    stfd    f1, 0x50(sp)
    lfs     f15, -0x45fc(r2)
    fmuls   f1, f0, f3
    lfs     f22, -0x4604(r2)
    lfs     f18, -0x4620(r2)
    fsubs   f0, f0, f1
    stfs    f0, 0x48(sp)
    fadds   f0, f2, f1
    stfs    f0, 0x44(sp)
    b       branch_0x8017e3dc

branch_0x8017e1a8:
    li      r26, 0x0
    b       branch_0x8017e3cc

branch_0x8017e1b0:
    stw     r26, 0x64(sp)
    addi    r3, r29, 0x0
    addi    r4, r26, 0x0
    stw     r25, 0x5c(sp)
    addi    r5, r25, 0x0
    li      r6, 0x40
    stw     r27, 0x60(sp)
    li      r7, 0x40
    stw     r27, 0x58(sp)
    lfd     f1, 0x60(sp)
    lfd     f0, 0x58(sp)
    fsubs   f20, f1, f19
    fsubs   f21, f0, f19
    bl      Hx_GetFrBuffer
    bl      GXInvalidateTexAll
    addi    r3, sp, 0xc
    li      r4, 0x0
    bl      GXLoadTexObj
    lbz     r0, 0x12(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8017e20c
    lfs     f26, 0x48(sp)
    b       branch_0x8017e210

branch_0x8017e20c:
    lfs     f26, 0x44(sp)
branch_0x8017e210:
    fcmpo   cr0, f26, f28
    bge-    branch_0x8017e224
    fsubs   f0, f28, f26
    fmuls   f16, f17, f0
    b       branch_0x8017e228

branch_0x8017e224:
    lfs     f16, -0x4620(r2)
branch_0x8017e228:
    fadds   f20, f22, f20
    li      r3, 0xa0
    fadds   f21, f22, f21
    li      r4, 0x0
    li      r5, 0x12
    bl      GXBegin
    stfs    f20, -0x8000(r28)
    li      r0, 0x0
    li      r24, 0x0
    stfs    f21, -0x8000(r28)
    stfs    f18, -0x8000(r28)
    stw     r0, -0x8000(r28)
    stfs    f31, -0x8000(r28)
    stfs    f31, -0x8000(r28)
branch_0x8017e260:
    stw     r24, 0x5c(sp)
    stw     r27, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f19
    fmuls   f0, f15, f0
    fmuls   f1, f17, f0
    lfd     f0, 0x50(sp)
    fmuls   f27, f1, f0
    fmr     f1, f27
    bl      sinf
    fmadds  f24, f31, f1, f31
    fmr     f1, f27
    bl      cosf
    fadds   f30, f27, f16
    fmadds  f25, f31, f1, f31
    fmr     f1, f30
    bl      sinf
    fmuls   f29, f26, f1
    fmr     f1, f30
    bl      cosf
    fcmpo   cr0, f26, f28
    fmuls   f30, f26, f1
    cror    2, 1, 2
    bne-    branch_0x8017e2e0
    fmr     f1, f27
    bl      sinf
    fmuls   f0, f26, f1
    fmr     f1, f27
    fmadds  f24, f0, f31, f31
    bl      cosf
    fmuls   f0, f26, f1
    fmadds  f25, f0, f31, f31
branch_0x8017e2e0:
    fcmpo   cr0, f29, f23
    bge-    branch_0x8017e2fc
    fneg    f0, f30
    lfs     f24, -0x4620(r2)
    fdivs   f30, f0, f29
    fmr     f29, f23
    fmadds  f25, f31, f30, f31
branch_0x8017e2fc:
    fcmpo   cr0, f29, f28
    ble-    branch_0x8017e314
    fdivs   f30, f30, f29
    fmr     f29, f28
    fmr     f24, f28
    fmadds  f25, f31, f30, f31
branch_0x8017e314:
    fcmpo   cr0, f30, f23
    bge-    branch_0x8017e330
    fneg    f0, f29
    lfs     f25, -0x4620(r2)
    fdivs   f29, f0, f30
    fmr     f30, f23
    fmadds  f24, f31, f29, f31
branch_0x8017e330:
    fcmpo   cr0, f30, f28
    ble-    branch_0x8017e348
    fdivs   f29, f29, f30
    fmr     f30, f28
    fmr     f25, f28
    fmadds  f24, f31, f29, f31
branch_0x8017e348:
    cmplwi  r24, 0x0
    fmuls   f29, f29, f22
    fmuls   f30, f30, f22
    bne-    branch_0x8017e368
    stfs    f29, 0x38(sp)
    stfs    f30, 0x34(sp)
    stfs    f24, 0x40(sp)
    stfs    f25, 0x3c(sp)
branch_0x8017e368:
    fadds   f0, f29, f20
    addi    r24, r24, 0x1
    fadds   f1, f30, f21
    li      r0, 0x0
    cmplwi  r24, 0x10
    stfs    f0, -0x8000(r28)
    stfs    f1, -0x8000(r28)
    stfs    f18, -0x8000(r28)
    stw     r0, -0x8000(r28)
    stfs    f24, -0x8000(r28)
    stfs    f25, -0x8000(r28)
    blt+    branch_0x8017e260
    lfs     f0, 0x38(sp)
    addi    r26, r26, 0x40
    fadds   f1, f0, f20
    lfs     f0, 0x34(sp)
    fadds   f0, f0, f21
    stfs    f1, -0x8000(r28)
    stfs    f0, -0x8000(r28)
    lfs     f0, 0x40(sp)
    stfs    f18, -0x8000(r28)
    stw     r0, -0x8000(r28)
    stfs    f0, -0x8000(r28)
    lfs     f0, 0x3c(sp)
    stfs    f0, -0x8000(r28)
branch_0x8017e3cc:
    lwz     r0, 0x0(r31)
    cmplw   r26, r0
    blt+    branch_0x8017e1b0
    addi    r25, r25, 0x40
branch_0x8017e3dc:
    lwz     r0, 0x4(r31)
    cmplw   r25, r0
    blt+    branch_0x8017e1a8
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017e414
    lwz     r3, 0x0(r30)
    li      r0, 0x3
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stb     r0, 0x10(r31)
    b       branch_0x8017e414

branch_0x8017e40c:
    li      r0, 0x3
    stb     r0, 0x10(r31)
branch_0x8017e414:
    lmw     r24, 0x68(sp)
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    mtlr    r0
    lfd     f29, 0xf8(sp)
    lfd     f28, 0xf0(sp)
    lfd     f27, 0xe8(sp)
    lfd     f26, 0xe0(sp)
    lfd     f25, 0xd8(sp)
    lfd     f24, 0xd0(sp)
    lfd     f23, 0xc8(sp)
    lfd     f22, 0xc0(sp)
    lfd     f21, 0xb8(sp)
    lfd     f20, 0xb0(sp)
    lfd     f19, 0xa8(sp)
    lfd     f18, 0xa0(sp)
    lfd     f17, 0x98(sp)
    lfd     f16, 0x90(sp)
    lfd     f15, 0x88(sp)
    addi    sp, sp, 0x110
    blr


.globl Hx_Test4
Hx_Test4: # 0x8017e46c
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stfd    f28, 0xb0(sp)
    stfd    f27, 0xa8(sp)
    stfd    f26, 0xa0(sp)
    stfd    f25, 0x98(sp)
    stfd    f24, 0x90(sp)
    stfd    f23, 0x88(sp)
    stfd    f22, 0x80(sp)
    stfd    f21, 0x78(sp)
    stfd    f20, 0x70(sp)
    stfd    f19, 0x68(sp)
    stfd    f18, 0x60(sp)
    stmw    r25, 0x44(sp)
    addi    r31, r3, hx@l
    addi    r30, r31, 0x38
    lwz     r0, 0x38(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8017e554
    bge-    branch_0x8017e7c4
    cmpwi   r0, 0x0
    bge-    branch_0x8017e4e0
    b       branch_0x8017e7c4

branch_0x8017e4dc:
    b       branch_0x8017e7c4

branch_0x8017e4e0:
    lbz     r0, 0x12(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8017e520
    bge-    branch_0x8017e540
    cmpwi   r0, 0x0
    bge-    branch_0x8017e4fc
    b       branch_0x8017e540

branch_0x8017e4fc:
    lfs     f2, -0x45e8(r2)
    li      r0, 0x0
    lfs     f1, -0x45e4(r2)
    lfs     f0, -0x45e0(r2)
    stw     r0, R13Off_m0x6338(r13)
    stfs    f2, -0x633c(r13)
    stfs    f1, -0x6330(r13)
    stfs    f0, -0x6334(r13)
    b       branch_0x8017e540

branch_0x8017e520:
    lfs     f2, -0x45dc(r2)
    li      r0, 0xe6
    lfs     f1, -0x45d8(r2)
    lfs     f0, -0x45d4(r2)
    stw     r0, R13Off_m0x6338(r13)
    stfs    f2, -0x633c(r13)
    stfs    f1, -0x6330(r13)
    stfs    f0, -0x6334(r13)
branch_0x8017e540:
    li      r0, 0x26
    stw     r0, 0x3c(r31)
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
branch_0x8017e554:
    lwz     r0, R13Off_m0x6338(r13)
    lis     r28, 0x4330
    lfd     f2, -0x45f0(r2)
    stw     r0, 0x3c(sp)
    lfs     f0, -0x6330(r13)
    stw     r28, 0x38(sp)
    lfd     f1, 0x38(sp)
    fsubs   f1, f1, f2
    fadds   f1, f1, f0
    bl      __cvt_fp2unsigned
    lfs     f1, -0x633c(r13)
    lfs     f0, -0x6334(r13)
    lfs     f27, -0x4620(r2)
    fadds   f0, f1, f0
    stw     r3, R13Off_m0x6338(r13)
    lfd     f3, -0x45f0(r2)
    fmr     f1, f27
    stfs    f0, -0x633c(r13)
    lwz     r0, 0x0(r31)
    lfs     f0, -0x633c(r13)
    srwi    r3, r0, 1
    addi    r0, r3, 0xc8
    stw     r0, 0x34(sp)
    stw     r28, 0x30(sp)
    lfd     f2, 0x30(sp)
    fsubs   f21, f2, f3
    fadds   f18, f21, f0
    bl      sinf
    addi    r27, r31, 0x8
    lfd     f2, -0x45f0(r2)
    lwz     r0, 0x8(r31)
    stw     r0, 0x2c(sp)
    stw     r28, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f2
    fmadds  f26, f18, f1, f0
    fmr     f1, f27
    bl      cosf
    addi    r26, r31, 0xc
    lfs     f0, -0x633c(r13)
    lwz     r0, 0xc(r31)
    lfd     f2, -0x45f0(r2)
    fsubs   f19, f21, f0
    stw     r0, 0x24(sp)
    stw     r28, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f2
    fmadds  f25, f18, f1, f0
    fmr     f1, f27
    bl      sinf
    lwz     r0, 0x0(r27)
    lfd     f2, -0x45f0(r2)
    stw     r0, 0x1c(sp)
    stw     r28, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fmadds  f24, f19, f1, f0
    fmr     f1, f27
    bl      cosf
    lwz     r0, 0x0(r26)
    lfd     f2, -0x45f0(r2)
    stw     r0, 0x14(sp)
    lfs     f28, -0x4620(r2)
    stw     r28, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fmadds  f23, f19, f1, f0
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x1
    bl      Hx_GxInit
    lfs     f29, -0x45d0(r2)
    li      r25, 0x0
    lfs     f30, -0x45cc(r2)
    lis     r29, 0xcc01
    lfd     f31, -0x45f0(r2)
    lfs     f20, -0x4620(r2)
    b       branch_0x8017e798

branch_0x8017e68c:
    fsubs   f21, f21, f29
    lfs     f0, -0x633c(r13)
    fcmpo   cr0, f21, f0
    fadds   f19, f21, f0
    bge-    branch_0x8017e6a8
    lfs     f27, -0x4620(r2)
    b       branch_0x8017e6ac

branch_0x8017e6a8:
    fsubs   f27, f21, f0
branch_0x8017e6ac:
    fadds   f28, f28, f30
    fmr     f1, f28
    bl      sinf
    lwz     r0, 0x0(r27)
    stw     r0, 0x14(sp)
    stw     r28, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f31
    fmadds  f22, f19, f1, f0
    fmr     f1, f28
    bl      cosf
    lwz     r0, 0x0(r26)
    stw     r0, 0x1c(sp)
    stw     r28, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f31
    fmadds  f19, f19, f1, f0
    fmr     f1, f28
    bl      sinf
    lwz     r0, 0x0(r27)
    stw     r0, 0x24(sp)
    stw     r28, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f31
    fmadds  f18, f27, f1, f0
    fmr     f1, f28
    bl      cosf
    lwz     r0, 0x0(r26)
    li      r3, 0x80
    li      r4, 0x0
    stw     r0, 0x2c(sp)
    li      r5, 0x4
    stw     r28, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f31
    fmadds  f27, f27, f1, f0
    bl      GXBegin
    stfs    f26, -0x8000(r29)
    li      r0, 0xff
    fmr     f26, f22
    addi    r25, r25, 0x1
    stfs    f25, -0x8000(r29)
    fmr     f25, f19
    stfs    f20, -0x8000(r29)
    stw     r0, -0x8000(r29)
    stfs    f22, -0x8000(r29)
    stfs    f19, -0x8000(r29)
    stfs    f20, -0x8000(r29)
    stw     r0, -0x8000(r29)
    stfs    f18, -0x8000(r29)
    stfs    f27, -0x8000(r29)
    stfs    f20, -0x8000(r29)
    stw     r0, -0x8000(r29)
    stfs    f24, -0x8000(r29)
    fmr     f24, f18
    stfs    f23, -0x8000(r29)
    fmr     f23, f27
    stfs    f20, -0x8000(r29)
    stw     r0, -0x8000(r29)
branch_0x8017e798:
    lwz     r0, R13Off_m0x6338(r13)
    cmplw   r25, r0
    blt+    branch_0x8017e68c
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017e7c4
    li      r0, 0x3
    stb     r0, 0x10(r31)
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
branch_0x8017e7c4:
    lmw     r25, 0x44(sp)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lfd     f29, 0xb8(sp)
    lfd     f28, 0xb0(sp)
    lfd     f27, 0xa8(sp)
    lfd     f26, 0xa0(sp)
    lfd     f25, 0x98(sp)
    lfd     f24, 0x90(sp)
    lfd     f23, 0x88(sp)
    lfd     f22, 0x80(sp)
    lfd     f21, 0x78(sp)
    lfd     f20, 0x70(sp)
    lfd     f19, 0x68(sp)
    lfd     f18, 0x60(sp)
    addi    sp, sp, 0xd0
    blr


.globl Hxs1_Test2
Hxs1_Test2: # 0x8017e810
    mflr    r0
    lis     r5, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stfd    f30, 0xf8(sp)
    stfd    f29, 0xf0(sp)
    stfd    f28, 0xe8(sp)
    stfd    f27, 0xe0(sp)
    stfd    f26, 0xd8(sp)
    stfd    f25, 0xd0(sp)
    stfd    f24, 0xc8(sp)
    stfd    f23, 0xc0(sp)
    fmr     f23, f2
    stfd    f22, 0xb8(sp)
    fmr     f22, f1
    stfd    f21, 0xb0(sp)
    stfd    f20, 0xa8(sp)
    fmr     f20, f3
    stfd    f19, 0xa0(sp)
    fmr     f19, f4
    stmw    r25, 0x84(sp)
    mr      r31, r3
    addi    r25, r4, 0x0
    addi    r28, r5, hx@l
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x1
    bl      Hx_GxInit
    cmplwi  r25, 0x0
    fmuls   f25, f20, f20
    fmuls   f24, f19, f19
    bne-    branch_0x8017e8b8
    fneg    f1, f23
    li      r25, 0x1
    fctiwz  f0, f20
    fctiwz  f1, f1
    stfd    f0, 0x70(sp)
    stfd    f1, 0x78(sp)
    lwz     r26, 0x74(sp)
    lwz     r0, 0x7c(sp)
    b       branch_0x8017e8d8

branch_0x8017e8b8:
    fneg    f0, f23
    li      r25, -0x1
    fctiwz  f1, f20
    fctiwz  f0, f0
    stfd    f1, 0x70(sp)
    stfd    f0, 0x78(sp)
    lwz     r0, 0x74(sp)
    lwz     r26, 0x7c(sp)
branch_0x8017e8d8:
    lfd     f27, -0x45c8(r2)
    mr      r27, r0
    lfd     f28, -0x45c0(r2)
    lis     r29, 0x4330
    lfd     f29, -0x45b8(r2)
    lfs     f30, -0x4620(r2)
    lis     r30, 0xcc01
    lfd     f31, -0x45f0(r2)
    lfs     f21, -0x460c(r2)
    b       branch_0x8017eaa0

branch_0x8017e900:
    xoris   r0, r27, 0x8000
    stw     r0, 0x74(sp)
    stw     r29, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f29
    fadds   f26, f23, f0
    fcmpo   cr0, f26, f30
    blt-    branch_0x8017ea9c
    lwz     r0, 0x4(r28)
    stw     r0, 0x74(sp)
    stw     r29, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f31
    fcmpo   cr0, f26, f0
    bgt-    branch_0x8017ea9c
    cmplwi  r31, 0x0
    beq-    branch_0x8017eaa8
    mullw   r3, r27, r27
    xoris   r0, r3, 0x8000
    stw     r0, 0x74(sp)
    addi    r31, r31, -0x1
    stw     r29, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f29
    fsubs   f0, f25, f0
    fcmpo   cr0, f0, f30
    ble-    branch_0x8017e9b0
    frsqrte f2, f0
    fmul    f1, f2, f2
    fmul    f2, f27, f2
    fnmsub   f1, f0, f1, f28
    fmul    f2, f2, f1
    fmul    f1, f2, f2
    fmul    f2, f27, f2
    fnmsub   f1, f0, f1, f28
    fmul    f2, f2, f1
    fmul    f1, f2, f2
    fmul    f2, f27, f2
    fnmsub   f1, f0, f1, f28
    fmul    f1, f2, f1
    fmul    f0, f0, f1
    frsp    f0, f0
    stfs    f0, 0x48(sp)
    lfs     f0, 0x48(sp)
branch_0x8017e9b0:
    xoris   r0, r3, 0x8000
    stw     r0, 0x74(sp)
    stw     r29, 0x70(sp)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f29
    fsubs   f3, f24, f1
    fcmpo   cr0, f3, f30
    ble-    branch_0x8017ea14
    frsqrte f2, f3
    fmul    f1, f2, f2
    fmul    f2, f27, f2
    fnmsub   f1, f3, f1, f28
    fmul    f2, f2, f1
    fmul    f1, f2, f2
    fmul    f2, f27, f2
    fnmsub   f1, f3, f1, f28
    fmul    f2, f2, f1
    fmul    f1, f2, f2
    fmul    f2, f27, f2
    fnmsub   f1, f3, f1, f28
    fmul    f1, f2, f1
    fmul    f1, f3, f1
    frsp    f1, f1
    stfs    f1, 0x44(sp)
    lfs     f3, 0x44(sp)
branch_0x8017ea14:
    lwz     r0, 0x8(r28)
    stw     r0, 0x74(sp)
    stw     r29, 0x70(sp)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f31
    fcmpo   cr0, f22, f1
    bge-    branch_0x8017ea44
    fadds   f20, f22, f0
    fadds   f19, f22, f3
    fcmpo   cr0, f20, f30
    blt-    branch_0x8017ea9c
    b       branch_0x8017ea68

branch_0x8017ea44:
    lwz     r0, 0x0(r28)
    fsubs   f19, f22, f0
    fsubs   f20, f22, f3
    stw     r0, 0x74(sp)
    stw     r29, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f31
    fcmpo   cr0, f19, f0
    bgt-    branch_0x8017ea9c
branch_0x8017ea68:
    li      r3, 0xa8
    li      r4, 0x0
    li      r5, 0x2
    bl      GXBegin
    stfs    f19, -0x8000(r30)
    li      r0, 0xff
    stfs    f26, -0x8000(r30)
    stfs    f21, -0x8000(r30)
    stw     r0, -0x8000(r30)
    stfs    f20, -0x8000(r30)
    stfs    f26, -0x8000(r30)
    stfs    f21, -0x8000(r30)
    stw     r0, -0x8000(r30)
branch_0x8017ea9c:
    add     r27, r27, r25
branch_0x8017eaa0:
    cmpw    r27, r26
    bne+    branch_0x8017e900
branch_0x8017eaa8:
    lmw     r25, 0x84(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    lfd     f28, 0xe8(sp)
    lfd     f27, 0xe0(sp)
    lfd     f26, 0xd8(sp)
    lfd     f25, 0xd0(sp)
    lfd     f24, 0xc8(sp)
    lfd     f23, 0xc0(sp)
    lfd     f22, 0xb8(sp)
    lfd     f21, 0xb0(sp)
    lfd     f20, 0xa8(sp)
    lfd     f19, 0xa0(sp)
    addi    sp, sp, 0x108
    blr


.globl Hx_Test2R
Hx_Test2R: # 0x8017eaf0
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, hx@l
    stw     r30, 0x30(sp)
    addi    r30, r31, 0x38
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    lwz     r0, 0x38(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8017ecac
    bge-    branch_0x8017eb38
    cmpwi   r0, 0x0
    beq-    branch_0x8017eb48
    bge-    branch_0x8017eb78
    b       branch_0x8017eef4

branch_0x8017eb38:
    cmpwi   r0, 0x4
    beq-    branch_0x8017ee78
    bge-    branch_0x8017eef4
    b       branch_0x8017edac

branch_0x8017eb48:
    lfs     f4, -0x460c(r2)
    addi    r3, r31, 0x40
    lfs     f1, -0x45b0(r2)
    stfs    f4, -0x6340(r13)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x45ac(r2)
    bl      Hx_MotionSet
    lwz     r3, 0x0(r30)
    li      r0, 0xb
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stw     r0, 0x3c(r31)
branch_0x8017eb78:
    lwz     r4, 0x0(r31)
    lis     r29, 0x4330
    lfd     f1, -0x45f0(r2)
    li      r3, 0x258
    addi    r0, r4, 0xc8
    stw     r0, 0x24(sp)
    li      r4, 0x0
    lfs     f2, -0x45a8(r2)
    stw     r29, 0x20(sp)
    lfs     f3, -0x45a4(r2)
    lfd     f0, 0x20(sp)
    lfs     f4, -0x45a0(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    lwz     r5, 0x0(r31)
    li      r3, 0x258
    lfd     f1, -0x45f0(r2)
    li      r4, 0x1
    addi    r0, r5, 0xfa
    stw     r0, 0x1c(sp)
    lfs     f2, -0x459c(r2)
    stw     r29, 0x18(sp)
    lfs     f3, -0x4598(r2)
    lfd     f0, 0x18(sp)
    lfs     f4, -0x4594(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    lwz     r5, 0x0(r31)
    li      r3, 0x258
    lfd     f1, -0x45f0(r2)
    li      r4, 0x0
    addi    r0, r5, 0xfa
    stw     r0, 0x14(sp)
    lfs     f2, -0x4590(r2)
    stw     r29, 0x10(sp)
    lfs     f3, -0x458c(r2)
    lfd     f0, 0x10(sp)
    lfs     f4, -0x4588(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    addi    r28, r31, 0x40
    addi    r3, r28, 0x0
    bl      Hx_MotionUpdate
    stfs    f1, -0x6340(r13)
    lfs     f1, -0x45b0(r2)
    lfs     f0, -0x6340(r13)
    fsubs   f0, f1, f0
    stfs    f0, -0x6340(r13)
    lfs     f1, -0x6340(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lfd     f1, -0x45f0(r2)
    addi    r0, r4, 0xc8
    lfs     f2, -0x4590(r2)
    stw     r0, 0xc(sp)
    li      r4, 0x0
    lfs     f3, -0x4584(r2)
    stw     r29, 0x8(sp)
    lfs     f4, -0x4598(r2)
    lfd     f0, 0x8(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017eefc
    lwz     r4, 0x0(r30)
    li      r0, 0xb
    addi    r3, r28, 0x0
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r0, 0x3c(r31)
    lfs     f1, -0x45b0(r2)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x45ac(r2)
    lfs     f4, -0x460c(r2)
    bl      Hx_MotionSet
    b       branch_0x8017eefc

branch_0x8017ecac:
    lwz     r4, 0x0(r31)
    lis     r29, 0x4330
    lfd     f1, -0x45f0(r2)
    li      r3, 0x258
    addi    r0, r4, 0xfa
    stw     r0, 0xc(sp)
    li      r4, 0x1
    lfs     f2, -0x459c(r2)
    stw     r29, 0x8(sp)
    lfs     f3, -0x4598(r2)
    lfd     f0, 0x8(sp)
    lfs     f4, -0x4594(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    lwz     r5, 0x0(r31)
    li      r3, 0x258
    lfd     f1, -0x45f0(r2)
    li      r4, 0x0
    addi    r0, r5, 0xfa
    stw     r0, 0x14(sp)
    lfs     f2, -0x4590(r2)
    stw     r29, 0x10(sp)
    lfs     f3, -0x458c(r2)
    lfd     f0, 0x10(sp)
    lfs     f4, -0x4588(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    addi    r28, r31, 0x40
    addi    r3, r28, 0x0
    bl      Hx_MotionUpdate
    stfs    f1, -0x6340(r13)
    lfs     f1, -0x45b0(r2)
    lfs     f0, -0x6340(r13)
    fsubs   f0, f1, f0
    stfs    f0, -0x6340(r13)
    lfs     f1, -0x6340(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lfd     f1, -0x45f0(r2)
    addi    r0, r4, 0xc8
    lfs     f2, -0x45a8(r2)
    stw     r0, 0x1c(sp)
    li      r4, 0x1
    lfs     f3, -0x45a4(r2)
    stw     r29, 0x18(sp)
    lfs     f4, -0x45a0(r2)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017eefc
    lwz     r4, 0x0(r30)
    li      r0, 0xa
    addi    r3, r28, 0x0
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r0, 0x3c(r31)
    lfs     f1, -0x45b0(r2)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x4580(r2)
    lfs     f4, -0x460c(r2)
    bl      Hx_MotionSet
    b       branch_0x8017eefc

branch_0x8017edac:
    lwz     r4, 0x0(r31)
    lis     r29, 0x4330
    lfd     f1, -0x45f0(r2)
    li      r3, 0x258
    addi    r0, r4, 0xfa
    stw     r0, 0xc(sp)
    li      r4, 0x0
    lfs     f2, -0x4590(r2)
    stw     r29, 0x8(sp)
    lfs     f3, -0x458c(r2)
    lfd     f0, 0x8(sp)
    lfs     f4, -0x4588(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    addi    r28, r31, 0x40
    addi    r3, r28, 0x0
    bl      Hx_MotionUpdate
    stfs    f1, -0x6340(r13)
    lfs     f1, -0x45b0(r2)
    lfs     f0, -0x6340(r13)
    fsubs   f0, f1, f0
    stfs    f0, -0x6340(r13)
    lfs     f1, -0x6340(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lfd     f1, -0x45f0(r2)
    addi    r0, r4, 0xfa
    lfs     f2, -0x459c(r2)
    stw     r0, 0x14(sp)
    li      r4, 0x0
    lfs     f3, -0x4598(r2)
    stw     r29, 0x10(sp)
    lfs     f4, -0x4594(r2)
    lfd     f0, 0x10(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017eefc
    lwz     r4, 0x0(r30)
    li      r0, 0xc
    addi    r3, r28, 0x0
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r0, 0x3c(r31)
    lfs     f1, -0x45b0(r2)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x457c(r2)
    lfs     f4, -0x460c(r2)
    bl      Hx_MotionSet
    b       branch_0x8017eefc

branch_0x8017ee78:
    addi    r3, r31, 0x40
    bl      Hx_MotionUpdate
    stfs    f1, -0x6340(r13)
    lfs     f1, -0x45b0(r2)
    lfs     f0, -0x6340(r13)
    fsubs   f0, f1, f0
    stfs    f0, -0x6340(r13)
    lfs     f1, -0x6340(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lis     r0, unk_43300001@h
    lfd     f1, -0x45f0(r2)
    addi    r4, r4, 0xfa
    lfs     f2, -0x4590(r2)
    stw     r4, 0xc(sp)
    addi    r4, r0, unk_43300001@l
    lfs     f3, -0x458c(r2)
    stw     r0, 0x8(sp)
    lfs     f4, -0x4588(r2)
    lfd     f0, 0x8(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017eefc
    lwz     r3, 0x0(r30)
    li      r0, 0x3
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stb     r0, 0x10(r31)
    b       branch_0x8017eefc

branch_0x8017eef4:
    li      r0, 0x3
    stb     r0, 0x10(r31)
branch_0x8017eefc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl Hx_Test2
Hx_Test2: # 0x8017ef1c
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, hx@l
    stw     r30, 0x30(sp)
    addi    r30, r31, 0x38
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    lwz     r0, 0x38(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8017f030
    bge-    branch_0x8017ef64
    cmpwi   r0, 0x0
    beq-    branch_0x8017ef74
    bge-    branch_0x8017efa8
    b       branch_0x8017f2e4

branch_0x8017ef64:
    cmpwi   r0, 0x4
    beq-    branch_0x8017f1dc
    bge-    branch_0x8017f2e4
    b       branch_0x8017f0ec

branch_0x8017ef74:
    lfs     f4, -0x460c(r2)
    addi    r3, r31, 0x40
    lfs     f1, -0x45b0(r2)
    stfs    f4, -0x6344(r13)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x45ac(r2)
    bl      Hx_MotionSet
    lwz     r3, 0x0(r30)
    li      r0, 0xb
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stw     r0, 0x3c(r31)
    b       branch_0x8017f2ec

branch_0x8017efa8:
    addi    r29, r31, 0x40
    addi    r3, r29, 0x0
    bl      Hx_MotionUpdate
    stfs    f1, -0x6344(r13)
    lfs     f1, -0x6344(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lis     r0, unk_43300001@h
    lfd     f1, -0x45f0(r2)
    addi    r4, r4, 0xc8
    lfs     f2, -0x4590(r2)
    stw     r4, 0x24(sp)
    addi    r4, r0, unk_43300001@l
    lfs     f3, -0x4584(r2)
    stw     r0, 0x20(sp)
    lfs     f4, -0x4598(r2)
    lfd     f0, 0x20(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017f2ec
    lwz     r4, 0x0(r30)
    li      r0, 0xb
    addi    r3, r29, 0x0
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r0, 0x3c(r31)
    lfs     f1, -0x45b0(r2)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x45ac(r2)
    lfs     f4, -0x460c(r2)
    bl      Hx_MotionSet
    b       branch_0x8017f2ec

branch_0x8017f030:
    lwz     r4, 0x0(r31)
    lis     r29, 0x4330
    lfd     f1, -0x45f0(r2)
    li      r3, 0x258
    addi    r0, r4, 0xc8
    stw     r0, 0x24(sp)
    li      r4, 0x0
    lfs     f2, -0x4590(r2)
    stw     r29, 0x20(sp)
    lfs     f3, -0x4584(r2)
    lfd     f0, 0x20(sp)
    lfs     f4, -0x4598(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    addi    r28, r31, 0x40
    addi    r3, r28, 0x0
    bl      Hx_MotionUpdate
    stfs    f1, -0x6344(r13)
    lfs     f1, -0x6344(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lfd     f1, -0x45f0(r2)
    addi    r0, r4, 0xc8
    lfs     f2, -0x45a8(r2)
    stw     r0, 0x1c(sp)
    li      r4, 0x0
    lfs     f3, -0x45a4(r2)
    stw     r29, 0x18(sp)
    lfs     f4, -0x45a0(r2)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017f2ec
    lwz     r4, 0x0(r30)
    li      r0, 0xa
    addi    r3, r28, 0x0
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r0, 0x3c(r31)
    lfs     f1, -0x45b0(r2)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x4580(r2)
    lfs     f4, -0x460c(r2)
    bl      Hx_MotionSet
    b       branch_0x8017f2ec

branch_0x8017f0ec:
    lwz     r4, 0x0(r31)
    lis     r29, 0x4330
    lfd     f1, -0x45f0(r2)
    li      r3, 0x258
    addi    r0, r4, 0xc8
    stw     r0, 0x1c(sp)
    li      r4, 0x0
    lfs     f2, -0x4590(r2)
    stw     r29, 0x18(sp)
    lfs     f3, -0x4584(r2)
    lfd     f0, 0x18(sp)
    lfs     f4, -0x4598(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    lwz     r5, 0x0(r31)
    li      r3, 0x258
    lfd     f1, -0x45f0(r2)
    li      r4, 0x0
    addi    r0, r5, 0xc8
    stw     r0, 0x24(sp)
    lfs     f2, -0x45a8(r2)
    stw     r29, 0x20(sp)
    lfs     f3, -0x45a4(r2)
    lfd     f0, 0x20(sp)
    lfs     f4, -0x45a0(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    addi    r28, r31, 0x40
    addi    r3, r28, 0x0
    bl      Hx_MotionUpdate
    stfs    f1, -0x6344(r13)
    lfs     f1, -0x6344(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lfd     f1, -0x45f0(r2)
    addi    r0, r4, 0xfa
    lfs     f2, -0x459c(r2)
    stw     r0, 0x14(sp)
    li      r4, 0x1
    lfs     f3, -0x4598(r2)
    stw     r29, 0x10(sp)
    lfs     f4, -0x4594(r2)
    lfd     f0, 0x10(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017f2ec
    lwz     r4, 0x0(r30)
    li      r0, 0xc
    addi    r3, r28, 0x0
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r0, 0x3c(r31)
    lfs     f1, -0x45b0(r2)
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x457c(r2)
    lfs     f4, -0x460c(r2)
    bl      Hx_MotionSet
    b       branch_0x8017f2ec

branch_0x8017f1dc:
    lwz     r4, 0x0(r31)
    lis     r29, 0x4330
    lfd     f1, -0x45f0(r2)
    li      r3, 0x258
    addi    r0, r4, 0xc8
    stw     r0, 0x14(sp)
    li      r4, 0x0
    lfs     f2, -0x4590(r2)
    stw     r29, 0x10(sp)
    lfs     f3, -0x4584(r2)
    lfd     f0, 0x10(sp)
    lfs     f4, -0x4598(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    lwz     r5, 0x0(r31)
    li      r3, 0x258
    lfd     f1, -0x45f0(r2)
    li      r4, 0x0
    addi    r0, r5, 0xc8
    stw     r0, 0x1c(sp)
    lfs     f2, -0x45a8(r2)
    stw     r29, 0x18(sp)
    lfs     f3, -0x45a4(r2)
    lfd     f0, 0x18(sp)
    lfs     f4, -0x45a0(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    lwz     r5, 0x0(r31)
    li      r3, 0x258
    lfd     f1, -0x45f0(r2)
    li      r4, 0x1
    addi    r0, r5, 0xfa
    stw     r0, 0x24(sp)
    lfs     f2, -0x459c(r2)
    stw     r29, 0x20(sp)
    lfs     f3, -0x4598(r2)
    lfd     f0, 0x20(sp)
    lfs     f4, -0x4594(r2)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    addi    r3, r31, 0x40
    bl      Hx_MotionUpdate
    stfs    f1, -0x6344(r13)
    lfs     f1, -0x6344(r13)
    bl      __cvt_fp2unsigned
    lwz     r4, 0x0(r31)
    lfd     f1, -0x45f0(r2)
    addi    r0, r4, 0xfa
    lfs     f2, -0x4590(r2)
    stw     r0, 0xc(sp)
    li      r4, 0x0
    lfs     f3, -0x458c(r2)
    stw     r29, 0x8(sp)
    lfs     f4, -0x4588(r2)
    lfd     f0, 0x8(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test2
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017f2ec
    lwz     r3, 0x0(r30)
    li      r0, 0x3
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stb     r0, 0x10(r31)
    b       branch_0x8017f2ec

branch_0x8017f2e4:
    li      r0, 0x3
    stb     r0, 0x10(r31)
branch_0x8017f2ec:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl Hxs1_Test1
Hxs1_Test1: # 0x8017f30c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stfd    f30, 0xb0(sp)
    stfd    f29, 0xa8(sp)
    stfd    f28, 0xa0(sp)
    stfd    f27, 0x98(sp)
    stfd    f26, 0x90(sp)
    fmr     f26, f3
    stfd    f25, 0x88(sp)
    fmr     f25, f2
    stfd    f24, 0x80(sp)
    fmr     f24, f1
    stfd    f23, 0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x1
    bl      Hx_GxInit
    li      r3, 0x7
    li      r4, 0x0
    bl      GXSetLineWidth
    fmuls   f27, f26, f26
    fmr     f1, f26
    bl      __cvt_fp2unsigned
    slwi    r3, r3, 1
    addi    r5, r3, 0x2
    li      r3, 0xa8
    li      r4, 0x0
    bl      GXBegin
    lis     r3, hx@h
    lfd     f28, -0x45f0(r2)
    lfs     f29, -0x4620(r2)
    addi    r30, r3, hx@l
    lfd     f30, -0x45c8(r2)
    li      r28, 0x0
    lfd     f31, -0x45c0(r2)
    lfs     f23, -0x460c(r2)
    lis     r29, 0x4330
    lis     r31, 0xcc01
    b       branch_0x8017f4cc

branch_0x8017f3c0:
    mullw   r0, r28, r28
    stw     r0, 0x64(sp)
    stw     r29, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fsubs   f2, f27, f0
    fcmpo   cr0, f2, f29
    ble-    branch_0x8017f424
    frsqrte f1, f2
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f0, f1, f0
    fmul    f0, f2, f0
    frsp    f0, f0
    stfs    f0, 0x34(sp)
    lfs     f2, 0x34(sp)
branch_0x8017f424:
    lwz     r0, 0xc(r30)
    stw     r0, 0x64(sp)
    stw     r29, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fcmpo   cr0, f25, f0
    bge-    branch_0x8017f45c
    stw     r28, 0x64(sp)
    stw     r29, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fadds   f3, f25, f0
    fmr     f1, f3
    b       branch_0x8017f474

branch_0x8017f45c:
    stw     r28, 0x64(sp)
    stw     r29, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fsubs   f3, f25, f0
    fmr     f1, f3
branch_0x8017f474:
    lwz     r0, 0x8(r30)
    stw     r0, 0x64(sp)
    stw     r29, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fcmpo   cr0, f24, f0
    bge-    branch_0x8017f49c
    fmr     f0, f24
    fadds   f2, f24, f2
    b       branch_0x8017f4a4

branch_0x8017f49c:
    fsubs   f0, f24, f2
    fmr     f2, f24
branch_0x8017f4a4:
    stfs    f0, -0x8000(r31)
    li      r0, 0xff
    addi    r28, r28, 0x1
    stfs    f3, -0x8000(r31)
    stfs    f23, -0x8000(r31)
    stw     r0, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f23, -0x8000(r31)
    stw     r0, -0x8000(r31)
branch_0x8017f4cc:
    fmr     f1, f26
    bl      __cvt_fp2unsigned
    cmplw   r28, r3
    ble+    branch_0x8017f3c0
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lfd     f30, 0xb0(sp)
    mtlr    r0
    lfd     f29, 0xa8(sp)
    lfd     f28, 0xa0(sp)
    lfd     f27, 0x98(sp)
    lfd     f26, 0x90(sp)
    lfd     f25, 0x88(sp)
    lfd     f24, 0x80(sp)
    lfd     f23, 0x78(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0xc0
    blr


.globl Hx_Test1
Hx_Test1: # 0x8017f520
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, hx@l
    addi    r31, r30, 0x38
    stw     r29, 0x2c(sp)
    lwz     r0, 0x38(r30)
    cmpwi   r0, 0x1
    beq-    branch_0x8017f5c4
    bge-    branch_0x8017f608
    cmpwi   r0, 0x0
    bge-    branch_0x8017f560
    b       branch_0x8017f608

branch_0x8017f560:
    lbz     r0, 0x12(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x8017f58c
    lfs     f1, -0x4594(r2)
    addi    r3, r30, 0x40
    lfs     f2, -0x461c(r2)
    stfs    f1, -0x6348(r13)
    lfs     f3, -0x4578(r2)
    lfs     f4, -0x45ac(r2)
    bl      Hx_MotionSet
    b       branch_0x8017f5ac

branch_0x8017f58c:
    lfs     f3, -0x461c(r2)
    addi    r3, r30, 0x40
    lfs     f0, -0x460c(r2)
    fmr     f4, f3
    lfs     f1, -0x4594(r2)
    stfs    f0, -0x6348(r13)
    lfs     f2, -0x45e4(r2)
    bl      Hx_MotionSet
branch_0x8017f5ac:
    lwz     r3, 0x0(r31)
    li      r0, 0x19
    addi    r3, r3, 0x1
    stw     r3, 0x0(r31)
    stw     r0, 0x3c(r30)
    b       branch_0x8017f610

branch_0x8017f5c4:
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017f5dc
    lwz     r3, 0x0(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r31)
branch_0x8017f5dc:
    addi    r3, r30, 0x40
    bl      Hx_MotionUpdate
    stfs    f1, -0x6348(r13)
    lbz     r0, 0x12(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x8017f610
    lfs     f1, -0x4594(r2)
    lfs     f0, -0x6348(r13)
    fsubs   f0, f1, f0
    stfs    f0, -0x6348(r13)
    b       branch_0x8017f610

branch_0x8017f608:
    li      r0, 0x3
    stb     r0, 0x10(r30)
branch_0x8017f610:
    lfs     f1, -0x4620(r2)
    lfs     f3, -0x6348(r13)
    fmr     f2, f1
    bl      Hxs1_Test1
    lwz     r0, 0x0(r30)
    lis     r31, 0x4330
    lfd     f1, -0x45f0(r2)
    stw     r0, 0x24(sp)
    lfs     f2, -0x4620(r2)
    stw     r31, 0x20(sp)
    lfs     f3, -0x6348(r13)
    lfd     f0, 0x20(sp)
    fsubs   f1, f0, f1
    bl      Hxs1_Test1
    addi    r29, r30, 0x4
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r3, 0x1c(sp)
    lfd     f2, -0x45f0(r2)
    stw     r0, 0x14(sp)
    lfs     f3, -0x6348(r13)
    stw     r31, 0x18(sp)
    stw     r31, 0x10(sp)
    lfd     f1, 0x18(sp)
    lfd     f0, 0x10(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      Hxs1_Test1
    lwz     r0, 0x0(r29)
    lfd     f2, -0x45f0(r2)
    stw     r0, 0xc(sp)
    lfs     f1, -0x4620(r2)
    stw     r31, 0x8(sp)
    lfs     f3, -0x6348(r13)
    lfd     f0, 0x8(sp)
    fsubs   f2, f0, f2
    bl      Hxs1_Test1
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl Hx_MovieStartSyncEx
Hx_MovieStartSyncEx: # 0x8017f6c0
    lis     r3, hx@h
    addi    r3, r3, hx@l
    lbz     r0, 0x11(r3)
    cmplwi  r0, 0xc
    beq-    branch_0x8017f6dc
    li      r3, 0x0
    blr

branch_0x8017f6dc:
    lwz     r4, 0x38(r3)
    cmplwi  r4, 0x2
    blt-    branch_0x8017f714
    cmplwi  r4, 0x5
    bgt-    branch_0x8017f714
    lwz     r0, R13Off_m0x635c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8017f704
    li      r3, 0x0
    blr

branch_0x8017f704:
    li      r0, 0x0
    stw     r0, R13Off_m0x635c(r13)
    li      r3, 0x1
    blr

branch_0x8017f714:
    cmplwi  r4, 0x6
    blt-    branch_0x8017f75c
    lwz     r0, R13Off_m0x6360(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8017f730
    li      r3, 0x0
    blr

branch_0x8017f730:
    cmplwi  r4, 0x6
    bne-    branch_0x8017f74c
    lwz     r0, 0x3c(r3)
    cmplwi  r0, 0xc0
    ble-    branch_0x8017f74c
    li      r3, 0x0
    blr

branch_0x8017f74c:
    li      r0, 0x0
    stw     r0, R13Off_m0x6360(r13)
    li      r3, 0x2
    blr

branch_0x8017f75c:
    li      r3, 0x0
    blr


.globl Hx_Logo
Hx_Logo: # 0x8017f764
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, hx@l
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    lwz     r5, 0x28(r31)
    lwz     r29, 0x2c(r31)
    cmpwi   r5, 0x0
    beq-    branch_0x8017f7a0
    lwz     r4, 0x30(r31)
    b       branch_0x8017f7a4

branch_0x8017f7a0:
    addi    r4, r31, 0x80
branch_0x8017f7a4:
    addi    r30, r31, 0x38
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x8
    bgt-    branch_0x8017fb30
    lis     r3, unk_803c1464@h
    addi    r3, r3, unk_803c1464@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8017f7cc:
    cmpwi   r5, 0x0
    bne-    branch_0x8017f7e0
    lis     r3, unk_803888f8@ha
    addi    r3, r3, unk_803888f8@l
    bl      Hgx_ReadTexture
branch_0x8017f7e0:
    lwz     r4, 0x0(r30)
    lis     r3, drawpath_table@h
    addi    r0, r3, drawpath_table@l
    addi    r3, r4, 0x1
    stw     r3, 0x0(r30)
    li      r4, 0x0
    li      r3, 0x100
    stw     r0, R13Off_m0x6358(r13)
    li      r0, 0x1
    stw     r4, R13Off_m0x634c(r13)
    stw     r3, 0x3c(r31)
    stw     r0, R13Off_m0x6360(r13)
    stw     r0, R13Off_m0x635c(r13)
    b       branch_0x8017fb30

branch_0x8017f818:
    lwz     r0, 0x3c(r31)
    cmplwi  r0, 0xc0
    bgt-    branch_0x8017f830
    li      r3, 0xff
    bl      Hxs_Logo_ExtraDraw
    b       branch_0x8017f83c

branch_0x8017f830:
    subfic  r0, r0, 0x100
    clrlslwi  r3, r0, 26, 2
    bl      Hxs_Logo_ExtraDraw
branch_0x8017f83c:
    bl      Hx_TimerCountDown
    bl      Hx_TimerCountDown
    bl      Hx_TimerCountDown
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017fb30
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    b       branch_0x8017fb30

branch_0x8017f864:
    lwz     r6, R13Off_m0x6358(r13)
    lwz     r0, 0x8(r6)
    cmpwi   r0, -0x1
    bne-    branch_0x8017f880
    li      r0, 0x3
    stw     r0, 0x0(r30)
    b       branch_0x8017f930

branch_0x8017f880:
    cmpwi   r0, 0x0
    bne-    branch_0x8017f8ac
    lfs     f0, 0x0(r6)
    addi    r5, r6, 0xc
    lwz     r3, R13Off_m0x634c(r13)
    stfs    f0, -0x6354(r13)
    addi    r0, r3, 0x1
    lfs     f0, 0x4(r6)
    stfs    f0, -0x6350(r13)
    stw     r5, R13Off_m0x6358(r13)
    stw     r0, R13Off_m0x634c(r13)
branch_0x8017f8ac:
    lwz     r3, R13Off_m0x6358(r13)
    lwz     r0, 0x8(r3)
    stw     r0, 0x3c(r31)
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    li      r3, 0xff
    bl      Hxs_Logo_ExtraDraw
    addi    r5, r29, 0x0
    li      r3, 0xff
    li      r4, 0xff
    bl      Hxs_Logo_TexSetup
    lfs     f1, -0x6354(r13)
    lfs     f2, -0x6350(r13)
    lwz     r3, R13Off_m0x634c(r13)
    lwz     r4, R13Off_m0x6358(r13)
    bl      Hxs_PenDraw
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017fb30
    lwz     r4, R13Off_m0x6358(r13)
    li      r0, 0x2
    lfs     f0, 0x0(r4)
    addi    r3, r4, 0xc
    stfs    f0, -0x6354(r13)
    lfs     f0, 0x4(r4)
    stfs    f0, -0x6350(r13)
    stw     r3, R13Off_m0x6358(r13)
    stw     r0, 0x0(r30)
    lwz     r3, R13Off_m0x634c(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x634c(r13)
    b       branch_0x8017fb30

branch_0x8017f930:
    li      r0, 0x5
    stw     r0, 0x3c(r31)
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    li      r3, 0xff
    bl      Hxs_Logo_ExtraDraw
    addi    r5, r29, 0x0
    li      r3, 0xff
    li      r4, 0xff
    bl      Hxs_Logo_TexSetup
    lfs     f1, -0x6354(r13)
    lfs     f2, -0x6350(r13)
    lwz     r3, R13Off_m0x634c(r13)
    lwz     r4, R13Off_m0x6358(r13)
    bl      Hxs_PenDraw
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017fb30
    li      r0, 0xff
    stw     r0, 0x3c(r31)
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    b       branch_0x8017fb30

branch_0x8017f994:
    addi    r28, r31, 0x3c
    lwz     r0, 0x3c(r31)
    cmplwi  r0, 0xc0
    blt-    branch_0x8017fa20
    li      r3, 0xff
    bl      Hxs_Logo_ExtraDraw
    lwz     r0, 0x0(r28)
    addi    r5, r29, 0x0
    clrlwi  r3, r0, 24
    addi    r4, r3, 0x0
    bl      Hxs_Logo_TexSetup
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0xf8
    ble-    branch_0x8017f9e4
    lfs     f1, -0x6354(r13)
    lfs     f2, -0x6350(r13)
    lwz     r3, R13Off_m0x634c(r13)
    lwz     r4, R13Off_m0x6358(r13)
    bl      Hxs_PenDraw
    b       branch_0x8017fa68

branch_0x8017f9e4:
    lhz     r4, -0x63a0(r13)
    lis     r3, 0x4330
    lhz     r0, -0x639e(r13)
    stw     r4, 0x1c(sp)
    lfd     f3, -0x45f0(r2)
    stw     r0, 0x14(sp)
    lfs     f1, -0x460c(r2)
    stw     r3, 0x18(sp)
    stw     r3, 0x10(sp)
    lfd     f2, 0x18(sp)
    lfd     f0, 0x10(sp)
    fsubs   f2, f2, f3
    fsubs   f3, f0, f3
    bl      Hxs_Logo_MagDraw
    b       branch_0x8017fa68

branch_0x8017fa20:
    clrlwi  r3, r0, 24
    addi    r4, r3, 0x0
    addi    r5, r29, 0x0
    bl      Hxs_Logo_TexSetup
    lhz     r4, -0x63a0(r13)
    lis     r3, 0x4330
    lhz     r0, -0x639e(r13)
    stw     r4, 0x14(sp)
    lfd     f3, -0x45f0(r2)
    stw     r0, 0x1c(sp)
    lfs     f1, -0x460c(r2)
    stw     r3, 0x10(sp)
    stw     r3, 0x18(sp)
    lfd     f2, 0x10(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f2, f3
    fsubs   f3, f0, f3
    bl      Hxs_Logo_MagDraw
branch_0x8017fa68:
    li      r29, 0x0
branch_0x8017fa6c:
    bl      Hx_TimerCountDown
    addi    r29, r29, 0x1
    cmplwi  r29, 0x3
    blt+    branch_0x8017fa6c
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017fb30
    li      r0, 0x19
    stw     r0, 0x0(r28)
    addi    r3, r31, 0x40
    lfs     f1, -0x4574(r2)
    lfs     f2, -0x4578(r2)
    lfs     f3, -0x45ac(r2)
    lfs     f4, -0x45e4(r2)
    bl      Hx_MotionSet
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    b       branch_0x8017fb30

branch_0x8017fab8:
    addi    r5, r29, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      Hxs_Logo_TexSetup
    addi    r3, r31, 0x40
    bl      Hx_MotionUpdate
    lhz     r4, -0x63a0(r13)
    lis     r3, 0x4330
    lhz     r0, -0x639e(r13)
    stw     r4, 0x14(sp)
    lfs     f0, -0x460c(r2)
    stw     r0, 0x1c(sp)
    fadds   f1, f0, f1
    lfd     f3, -0x45f0(r2)
    stw     r3, 0x10(sp)
    stw     r3, 0x18(sp)
    lfd     f2, 0x10(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f2, f3
    fsubs   f3, f0, f3
    bl      Hxs_Logo_MagDraw
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x8017fb30
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    b       branch_0x8017fb30

branch_0x8017fb28:
    li      r0, 0x3
    stb     r0, 0x10(r31)
branch_0x8017fb30:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl Hxs_PenDraw
Hxs_PenDraw: # 0x8017fb50
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    lis     r5, camLoc_96@h
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    fmr     f31, f2
    stfd    f30, 0x88(sp)
    fmr     f30, f1
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    stfd    f27, 0x70(sp)
    stfd    f26, 0x68(sp)
    stfd    f25, 0x60(sp)
    stmw    r26, 0x48(sp)
    addi    r26, r4, 0x0
    addi    r28, r5, camLoc_96@l
    beq-    branch_0x8017fc64
    lfs     f28, 0xa8(r28)
    addi    r30, r3, -0x1
    lfs     f26, 0xac(r28)
    li      r27, 0x0
    lfd     f29, -0x45f0(r2)
    li      r31, 0x0
    lis     r29, 0x4330
    b       branch_0x8017fc5c

branch_0x8017fbb8:
    add     r3, r28, r31
    lwz     r0, 0xbc(r3)
    addi    r3, r3, 0xa8
    cmpwi   r0, -0x1
    beq-    branch_0x8017fc64
    cmpwi   r0, 0x0
    lfs     f27, 0xc(r3)
    lfs     f25, 0x10(r3)
    beq-    branch_0x8017fc4c
    fsubs   f1, f27, f28
    addi    r3, sp, 0x18
    fsubs   f0, f25, f26
    mr      r4, r3
    stfs    f1, 0x18(sp)
    stfs    f0, 0x1c(sp)
    bl      PSVECNormalize
    addi    r3, sp, 0x18
    lfs     f1, -0x4570(r2)
    mr      r4, r3
    bl      PSVECScale
    lhz     r3, -0x63a0(r13)
    lhz     r0, -0x639e(r13)
    stw     r3, 0x44(sp)
    lfs     f0, 0x1c(sp)
    stw     r0, 0x3c(sp)
    lfs     f3, 0x18(sp)
    fsubs   f2, f26, f0
    stw     r29, 0x40(sp)
    fadds   f4, f25, f0
    fsubs   f1, f28, f3
    stw     r29, 0x38(sp)
    lfd     f5, 0x40(sp)
    fadds   f3, f27, f3
    lfd     f0, 0x38(sp)
    fsubs   f5, f5, f29
    fsubs   f6, f0, f29
    bl      Hxs_Logo_TexDraw
branch_0x8017fc4c:
    fmr     f28, f27
    addi    r31, r31, 0xc
    fmr     f26, f25
    addi    r27, r27, 0x1
branch_0x8017fc5c:
    cmplw   r27, r30
    blt+    branch_0x8017fbb8
branch_0x8017fc64:
    lis     r3, hx@h
    lwz     r5, 0x8(r26)
    addi    r3, r3, hx@l
    lfs     f0, 0x4(r26)
    lwz     r3, 0x3c(r3)
    xoris   r0, r5, 0x8000
    stw     r0, 0x44(sp)
    lis     r4, 0x4330
    subf    r3, r3, r5
    stw     r3, 0x3c(sp)
    fsubs   f4, f0, f31
    lhz     r3, -0x63a0(r13)
    fmr     f2, f31
    stw     r4, 0x38(sp)
    lhz     r0, -0x639e(r13)
    stw     r4, 0x40(sp)
    lfd     f7, -0x45f0(r2)
    lfd     f6, 0x38(sp)
    lfd     f5, -0x45b8(r2)
    lfd     f0, 0x40(sp)
    fsubs   f6, f6, f7
    stw     r3, 0x34(sp)
    fsubs   f0, f0, f5
    lfs     f1, 0x0(r26)
    stw     r0, 0x2c(sp)
    fsubs   f3, f1, f30
    fdivs   f6, f6, f0
    stw     r4, 0x30(sp)
    stw     r4, 0x28(sp)
    lfd     f5, 0x30(sp)
    lfd     f0, 0x28(sp)
    fmr     f1, f30
    fmadds  f3, f6, f3, f30
    fmadds  f4, f6, f4, f31
    fsubs   f5, f5, f7
    fsubs   f6, f0, f7
    bl      Hxs_Logo_TexDraw
    lmw     r26, 0x48(sp)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    lfd     f27, 0x70(sp)
    lfd     f26, 0x68(sp)
    lfd     f25, 0x60(sp)
    addi    sp, sp, 0x98
    blr


.globl Hxs_Logo_MagDraw
Hxs_Logo_MagDraw: # 0x8017fd28
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    li      r4, 0x0
    li      r5, 0x4
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stw     r31, 0x64(sp)
    lis     r31, 0x4330
    stw     r30, 0x60(sp)
    addi    r30, r3, hx@l
    stw     r29, 0x5c(sp)
    addi    r29, r30, 0x4
    lfs     f4, -0x456c(r2)
    lfs     f0, -0x4568(r2)
    fdivs   f2, f2, f4
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    srwi    r3, r3, 1
    lfd     f4, -0x45f0(r2)
    fdivs   f0, f3, f0
    stw     r3, 0x54(sp)
    srwi    r0, r0, 1
    stw     r0, 0x4c(sp)
    li      r3, 0x80
    fmuls   f3, f2, f1
    lfs     f2, -0x4600(r2)
    fmuls   f0, f0, f1
    stw     r31, 0x50(sp)
    fmuls   f1, f3, f2
    fmuls   f2, f0, f2
    lfd     f0, 0x50(sp)
    stw     r31, 0x48(sp)
    fsubs   f5, f0, f4
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f4
    fsubs   f3, f5, f1
    fadds   f1, f5, f1
    fsubs   f4, f0, f2
    fadds   f0, f0, f2
    fsubs   f1, f3, f1
    fsubs   f0, f4, f0
    fdivs   f31, f3, f1
    fdivs   f30, f4, f0
    bl      GXBegin
    lfs     f3, -0x4620(r2)
    lis     r5, 0xcc01
    lfs     f0, -0x460c(r2)
    li      r4, 0x0
    stfs    f3, -0x8000(r5)
    lfs     f2, -0x4564(r2)
    fsubs   f4, f0, f31
    lfd     f1, -0x45f0(r2)
    fsubs   f5, f0, f30
    stfs    f2, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stfs    f31, -0x8000(r5)
    stfs    f30, -0x8000(r5)
    lwz     r0, 0x0(r30)
    stw     r0, 0x44(sp)
    stw     r31, 0x40(sp)
    lfd     f0, 0x40(sp)
    stw     r0, 0x34(sp)
    fsubs   f0, f0, f1
    stw     r31, 0x30(sp)
    stfs    f0, -0x8000(r5)
    lfd     f0, 0x30(sp)
    stfs    f2, -0x8000(r5)
    fsubs   f0, f0, f1
    stfs    f3, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stfs    f4, -0x8000(r5)
    stfs    f30, -0x8000(r5)
    lwz     r3, 0x0(r29)
    addi    r0, r3, -0x20
    stfs    f0, -0x8000(r5)
    stw     r0, 0x3c(sp)
    stw     r31, 0x38(sp)
    lfd     f0, 0x38(sp)
    stw     r0, 0x2c(sp)
    fsubs   f0, f0, f1
    stw     r31, 0x28(sp)
    stfs    f0, -0x8000(r5)
    lfd     f0, 0x28(sp)
    stfs    f3, -0x8000(r5)
    fsubs   f0, f0, f1
    stw     r4, -0x8000(r5)
    stfs    f4, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stfs    f31, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl Hxs_Logo_TexDraw
Hxs_Logo_TexDraw: # 0x8017fed0
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    addi    r4, r3, hx@l
    lis     r3, 0x4330
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stfd    f28, 0x98(sp)
    stfd    f27, 0x90(sp)
    stfd    f26, 0x88(sp)
    stfd    f25, 0x80(sp)
    stfd    f24, 0x78(sp)
    stfd    f23, 0x70(sp)
    stfd    f22, 0x68(sp)
    stfd    f21, 0x60(sp)
    stfd    f20, 0x58(sp)
    lfs     f0, -0x4568(r2)
    lfs     f7, -0x456c(r2)
    fdivs   f27, f6, f0
    lwz     r0, 0x4(r4)
    lwz     r4, 0x0(r4)
    srwi    r0, r0, 1
    lfd     f6, -0x45f0(r2)
    fdivs   f26, f5, f7
    stw     r0, 0x4c(sp)
    srwi    r0, r4, 1
    lfs     f7, -0x4600(r2)
    stw     r0, 0x54(sp)
    fdivs   f23, f2, f27
    lfs     f2, -0x4604(r2)
    stw     r3, 0x50(sp)
    stw     r3, 0x48(sp)
    lfd     f5, 0x50(sp)
    fdivs   f25, f4, f27
    lfd     f4, 0x48(sp)
    fsubs   f0, f25, f23
    fsubs   f5, f5, f6
    fdivs   f22, f1, f26
    fdivs   f24, f3, f26
    fsubs   f1, f24, f22
    fsubs   f4, f4, f6
    fneg    f0, f0
    stfs    f1, 0x3c(sp)
    fnmsubs  f29, f26, f7, f5
    fnmsubs  f3, f27, f7, f4
    stfs    f0, 0x38(sp)
    lfs     f1, -0x4620(r2)
    fsubs   f28, f3, f2
    stfs    f1, 0x40(sp)
    lfs     f0, 0x3c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8017ffb4
    lfs     f0, 0x38(sp)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801800bc
branch_0x8017ffb4:
    addi    r3, sp, 0x38
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    addi    r3, sp, 0x38
    lfs     f1, -0x4560(r2)
    mr      r4, r3
    bl      PSVECScale
    lfs     f31, 0x38(sp)
    li      r3, 0x80
    lfs     f30, 0x3c(sp)
    li      r4, 0x0
    fadds   f1, f22, f31
    fadds   f0, f23, f30
    li      r5, 0x4
    fmadds  f21, f26, f1, f29
    fmadds  f20, f27, f0, f28
    bl      GXBegin
    lfs     f8, 0x3c(sp)
    lis     r3, 0xcc01
    lfs     f7, 0x38(sp)
    fadds   f4, f24, f31
    stfs    f21, -0x8000(r3)
    fadds   f0, f25, f30
    lfs     f6, -0x4620(r2)
    stfs    f20, -0x8000(r3)
    fsubs   f3, f24, f31
    li      r0, 0x0
    stfs    f6, -0x8000(r3)
    fadds   f5, f22, f7
    fsubs   f2, f25, f30
    stw     r0, -0x8000(r3)
    fadds   f9, f23, f8
    fsubs   f1, f22, f31
    stfs    f5, -0x8000(r3)
    fmadds  f5, f26, f4, f29
    stfs    f9, -0x8000(r3)
    fmadds  f4, f27, f0, f28
    fsubs   f0, f23, f30
    stfs    f5, -0x8000(r3)
    fadds   f5, f24, f7
    stfs    f4, -0x8000(r3)
    fadds   f4, f25, f8
    fmadds  f3, f26, f3, f29
    stfs    f6, -0x8000(r3)
    fmadds  f2, f27, f2, f28
    stw     r0, -0x8000(r3)
    fsubs   f9, f24, f7
    fsubs   f10, f25, f8
    stfs    f5, -0x8000(r3)
    fmadds  f1, f26, f1, f29
    stfs    f4, -0x8000(r3)
    fmadds  f0, f27, f0, f28
    fsubs   f4, f22, f7
    stfs    f3, -0x8000(r3)
    fsubs   f3, f23, f8
    stfs    f2, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f3, -0x8000(r3)
branch_0x801800bc:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lfd     f28, 0x98(sp)
    lfd     f27, 0x90(sp)
    lfd     f26, 0x88(sp)
    lfd     f25, 0x80(sp)
    lfd     f24, 0x78(sp)
    lfd     f23, 0x70(sp)
    lfd     f22, 0x68(sp)
    lfd     f21, 0x60(sp)
    lfd     f20, 0x58(sp)
    addi    sp, sp, 0xb8
    blr


.globl Hxs_Logo_TexSetup
Hxs_Logo_TexSetup: # 0x801800fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    bl      Hx_CameraInit
    li      r3, 0x1
    li      r4, 0x1
    bl      Hx_GxInit
    addi    r3, sp, 0x1c
    addi    r4, r31, 0x0
    bl      Hgx_init_tobj_resource
    lwz     r3, R2Off_m0x4624(r2)
    clrlwi  r0, r30, 24
    cmplwi  r0, 0xc0
    stw     r3, 0x18(sp)
    stb     r29, 0x18(sp)
    stb     r30, 0x1b(sp)
    ble-    branch_0x80180164
    li      r0, 0xff
    stb     r0, 0x1b(sp)
    b       branch_0x80180194

branch_0x80180164:
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x45f0(r2)
    stw     r0, 0x48(sp)
    lfd     f2, -0x4558(r2)
    lfd     f0, 0x48(sp)
    fsub    f0, f0, f1
    fmul    f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    stb     r0, 0x1b(sp)
branch_0x80180194:
    lwz     r0, 0x18(sp)
    addi    r4, sp, 0x14
    li      r3, 0x1
    stw     r0, 0x14(sp)
    bl      GXSetTevColor
    clrlwi  r0, r30, 24
    cmplwi  r0, 0xc0
    ble-    branch_0x801801c4
    subfic  r0, r0, 0xff
    clrlslwi  r0, r0, 26, 2
    stb     r0, 0x1b(sp)
    b       branch_0x801801cc

branch_0x801801c4:
    li      r0, 0xff
    stb     r0, 0x1b(sp)
branch_0x801801cc:
    lwz     r0, 0x18(sp)
    addi    r4, sp, 0x10
    li      r3, 0x2
    stw     r0, 0x10(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x2
    li      r6, 0x9
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r3, sp, 0x1c
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x0
    bl      GXSetBlendMode
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl Hxs_Logo_ExtraDraw
Hxs_Logo_ExtraDraw: # 0x80180284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    bl      Hx_CameraInit
    li      r3, 0x1
    li      r4, 0x1
    bl      Hx_GxInit
    addi    r3, sp, 0x18
    addi    r4, r31, 0x0
    bl      Hgx_init_tobj_resource
    lwz     r0, R2Off_m0x4628(r2)
    addi    r4, sp, 0x10
    li      r3, 0x1
    stw     r0, 0x14(sp)
    stb     r30, 0x17(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x10(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r3, sp, 0x18
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x0
    bl      GXSetBlendMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f5, -0x4550(r2)
    lis     r3, 0xcc01
    lfs     f4, -0x454c(r2)
    li      r0, 0x0
    stfs    f5, -0x8000(r3)
    lfs     f3, -0x4620(r2)
    stfs    f4, -0x8000(r3)
    lfs     f2, -0x4548(r2)
    stfs    f3, -0x8000(r3)
    lfs     f1, -0x460c(r2)
    stw     r0, -0x8000(r3)
    lfs     f0, -0x4544(r2)
    stfs    f3, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl Hx_GameOver
Hx_GameOver: # 0x8018040c
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, hx@l
    lis     r3, camLoc_96@h
    stw     r30, 0x20(sp)
    addi    r30, r31, 0x38
    stw     r29, 0x1c(sp)
    addi    r29, r3, camLoc_96@l
    lwz     r0, 0x38(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x80180564
    bge-    branch_0x80180468
    cmpwi   r0, 0x1
    beq-    branch_0x801804cc
    bge-    branch_0x8018051c
    cmpwi   r0, 0x0
    bge-    branch_0x80180478
    b       branch_0x801807ac

branch_0x80180468:
    cmpwi   r0, 0x5
    beq-    branch_0x801806dc
    bge-    branch_0x801807ac
    b       branch_0x80180600

branch_0x80180478:
    lis     r3, unk_80388910@ha
    lwz     r4, R13Off_m0x7b08(r13)
    addi    r3, r3, unk_80388910@l
    bl      Hgx_ReadTexture
    lfs     f0, -0x4620(r2)
    li      r0, 0x32
    lfs     f1, -0x4540(r2)
    addi    r3, r31, 0x40
    stfs    f0, -0x6378(r13)
    stfs    f1, -0x7b04(r13)
    stfs    f0, -0x6374(r13)
    lwz     r4, 0x0(r30)
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r0, 0x3c(r31)
    lfs     f1, -0x453c(r2)
    lfs     f2, -0x461c(r2)
    lfs     f3, -0x4538(r2)
    lfs     f4, -0x4534(r2)
    bl      Hx_MotionSet
    b       branch_0x801807b4

branch_0x801804cc:
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x801804ec
    lwz     r3, 0x0(r30)
    li      r0, 0xa
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stw     r0, 0x3c(r31)
branch_0x801804ec:
    lfs     f1, -0x4530(r2)
    addi    r3, r31, 0x40
    lfs     f0, -0x7b04(r13)
    fadds   f0, f1, f0
    stfs    f0, -0x7b04(r13)
    bl      Hx_MotionUpdate
    lfs     f2, -0x452c(r2)
    lfs     f0, -0x6374(r13)
    stfs    f1, -0x6378(r13)
    fadds   f0, f2, f0
    stfs    f0, -0x6374(r13)
    b       branch_0x801807b4

branch_0x8018051c:
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x80180550
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    lfs     f0, 0x70(r29)
    stfs    f0, -0x6368(r13)
    lfs     f1, 0x74(r29)
    bl      __cvt_fp2unsigned
    li      r0, 0x2
    stw     r3, R13Off_m0x636c(r13)
    stw     r0, R13Off_m0x6370(r13)
branch_0x80180550:
    lfs     f1, -0x7b04(r13)
    lfs     f0, -0x4610(r2)
    fsubs   f0, f1, f0
    stfs    f0, -0x7b04(r13)
    b       branch_0x801807b4

branch_0x80180564:
    lwz     r3, R13Off_m0x636c(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80180578
    addi    r0, r3, -0x1
    stw     r0, R13Off_m0x636c(r13)
branch_0x80180578:
    lwz     r0, R13Off_m0x636c(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x801805ec
    lwz     r3, R13Off_m0x6370(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x6370(r13)
    slwi    r0, r3, 2
    add     r4, r29, r0
    lwz     r3, R13Off_m0x6370(r13)
    lfs     f0, 0x70(r4)
    addi    r4, r3, 0x1
    slwi    r0, r3, 2
    stfs    f0, -0x6368(r13)
    add     r3, r29, r0
    stw     r4, R13Off_m0x6370(r13)
    lfs     f1, 0x70(r3)
    bl      __cvt_fp2unsigned
    stw     r3, R13Off_m0x636c(r13)
    lwz     r0, R13Off_m0x636c(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x801805ec
    lwz     r4, 0x0(r30)
    li      r3, 0x20
    li      r0, 0xff
    addi    r4, r4, 0x1
    stw     r4, 0x0(r30)
    stw     r3, 0x3c(r31)
    stb     r0, R13Off_m0x6364(r13)
    b       branch_0x801807b4

branch_0x801805ec:
    lfs     f1, -0x7b04(r13)
    lfs     f0, -0x6368(r13)
    fadds   f0, f1, f0
    stfs    f0, -0x7b04(r13)
    b       branch_0x801807b4

branch_0x80180600:
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x80180620
    li      r0, 0x64
    stw     r0, 0x3c(r31)
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
branch_0x80180620:
    lbz     r3, R13Off_m0x6364(r13)
    addi    r0, r3, 0x8
    stb     r0, R13Off_m0x6364(r13)
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x1
    bl      Hx_GxInit
    lwz     r5, 0x4(r31)
    lis     r6, 0x4330
    lwz     r4, 0x0(r31)
    li      r3, 0x80
    addi    r5, r5, -0x64
    addi    r0, r4, -0x64
    stw     r5, 0x14(sp)
    lbz     r7, R13Off_m0x6364(r13)
    li      r4, 0x0
    stw     r0, 0xc(sp)
    li      r5, 0x4
    lfd     f2, -0x45f0(r2)
    stw     r6, 0x10(sp)
    oris    r29, r7, 0xff00
    stw     r6, 0x8(sp)
    lfd     f1, 0x10(sp)
    lfd     f0, 0x8(sp)
    fsubs   f30, f1, f2
    fsubs   f31, f0, f2
    bl      GXBegin
    lfs     f1, -0x45dc(r2)
    lis     r3, 0xcc01
    lfs     f0, -0x4620(r2)
    stfs    f1, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r29, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r29, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r29, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r29, -0x8000(r3)
    b       branch_0x801807b4

branch_0x801806dc:
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x1
    bl      Hx_GxInit
    lwz     r5, 0x4(r31)
    lis     r6, 0x4330
    lwz     r4, 0x0(r31)
    li      r3, 0x80
    addi    r5, r5, -0x64
    addi    r0, r4, -0x64
    stw     r5, 0xc(sp)
    lfd     f2, -0x45f0(r2)
    li      r4, 0x0
    stw     r0, 0x14(sp)
    li      r5, 0x4
    stw     r6, 0x8(sp)
    stw     r6, 0x10(sp)
    lfd     f1, 0x8(sp)
    lfd     f0, 0x10(sp)
    fsubs   f31, f1, f2
    fsubs   f30, f0, f2
    bl      GXBegin
    lfs     f1, -0x45dc(r2)
    lis     r4, 0xcc01
    lis     r3, unk_ff0000ff@h
    lfs     f0, -0x4620(r2)
    stfs    f1, -0x8000(r4)
    addi    r0, r3, unk_ff0000ff@l
    stfs    f1, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stw     r0, -0x8000(r4)
    stfs    f30, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stw     r0, -0x8000(r4)
    stfs    f30, -0x8000(r4)
    stfs    f31, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stw     r0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f31, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stw     r0, -0x8000(r4)
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x801807b4
    lwz     r3, 0x0(r30)
    li      r0, 0x3
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stb     r0, 0x10(r31)
    b       branch_0x801807b4

branch_0x801807ac:
    li      r0, 0x3
    stb     r0, 0x10(r31)
branch_0x801807b4:
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x2
    blt-    branch_0x801807dc
    lfs     f1, -0x45fc(r2)
    li      r3, 0xff
    lfs     f0, -0x7b04(r13)
    lfs     f2, -0x6378(r13)
    fmuls   f1, f1, f0
    bl      Hxs_GameOver
    b       branch_0x80180800

branch_0x801807dc:
    lfs     f0, -0x6374(r13)
    lfs     f3, -0x45fc(r2)
    fctiwz  f0, f0
    lfs     f1, -0x7b04(r13)
    lfs     f2, -0x6378(r13)
    fmuls   f1, f3, f1
    stfd    f0, 0x8(sp)
    lwz     r3, 0xc(sp)
    bl      Hxs_GameOver
branch_0x80180800:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x38
    blr


.globl Hxs_GameOver
Hxs_GameOver: # 0x80180824
    mflr    r0
    lis     r4, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stfd    f31, 0x180(sp)
    stfd    f30, 0x178(sp)
    stfd    f29, 0x170(sp)
    stfd    f28, 0x168(sp)
    stfd    f27, 0x160(sp)
    stfd    f26, 0x158(sp)
    fmr     f26, f2
    stfd    f25, 0x150(sp)
    fmr     f25, f1
    stfd    f24, 0x148(sp)
    stw     r31, 0x144(sp)
    stw     r30, 0x140(sp)
    addi    r30, r4, hx@l
    stw     r29, 0x13c(sp)
    addi    r29, r3, 0x0
    bl      Hx_CameraInit
    lwz     r0, 0x2c(r30)
    addi    r3, sp, 0xe0
    stw     r0, R13Off_m0x7b08(r13)
    lwz     r4, R13Off_m0x7b08(r13)
    bl      Hgx_init_tobj_resource
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r0, R2Off_m0x462c(r2)
    addi    r4, sp, 0x54
    li      r3, 0x1
    stw     r0, 0xac(sp)
    stb     r29, 0xaf(sp)
    lwz     r0, 0xac(sp)
    stw     r0, 0x54(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    addi    r3, sp, 0xe0
    li      r4, 0x0
    bl      GXLoadTexObj
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x0
    bl      GXSetBlendMode
    lwz     r6, 0x0(r30)
    lis     r31, 0x4330
    lwz     r5, 0x4(r30)
    addi    r3, sp, 0xa0
    lhz     r4, -0x63a0(r13)
    divwu   r5, r6, r5
    lhz     r0, -0x639e(r13)
    stw     r4, 0x12c(sp)
    lfs     f0, -0x4600(r2)
    stw     r0, 0x124(sp)
    stw     r31, 0x128(sp)
    addi    r29, r30, 0x4
    lfd     f4, -0x45f0(r2)
    mr      r4, r3
    stw     r31, 0x120(sp)
    lfd     f2, 0x128(sp)
    lfd     f1, 0x120(sp)
    stw     r5, 0x134(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f0, 0xa0(sp)
    stw     r31, 0x130(sp)
    fdivs   f1, f2, f1
    stfs    f0, 0xa4(sp)
    lfd     f3, 0x130(sp)
    lfs     f0, -0x4620(r2)
    stfs    f0, 0xa8(sp)
    fsubs   f0, f3, f4
    fdivs   f24, f0, f1
    bl      PSVECNormalize
    fmr     f1, f26
    addi    r3, sp, 0x58
    li      r4, 0x5a
    bl      PSMTXRotRad
    addi    r4, sp, 0xa0
    addi    r5, r4, 0x0
    addi    r3, sp, 0x58
    bl      PSMTXMultVec
    lfs     f4, -0x4600(r2)
    li      r3, 0x80
    lfs     f1, 0xa0(sp)
    li      r4, 0x0
    fmuls   f5, f4, f4
    lfd     f3, -0x45c8(r2)
    fneg    f0, f1
    lfd     f2, -0x45c0(r2)
    li      r5, 0x4
    fmadds  f6, f4, f4, f5
    frsqrte f8, f6
    frsqrte f9, f6
    frsqrte f11, f6
    fmul    f5, f8, f8
    frsqrte f12, f6
    fmul    f7, f9, f9
    fmul    f8, f3, f8
    fnmsub   f5, f4, f5, f2
    fmul    f6, f11, f11
    fmul    f13, f8, f5
    fmul    f5, f12, f12
    fmul    f10, f13, f13
    fmul    f9, f3, f9
    fnmsub   f8, f4, f7, f2
    fmul    f7, f3, f11
    fmul    f26, f9, f8
    fnmsub   f6, f4, f6, f2
    fmul    f8, f26, f26
    fmul    f27, f7, f6
    fmul    f9, f3, f13
    fnmsub   f6, f4, f10, f2
    fmul    f7, f27, f27
    fmul    f11, f9, f6
    fmul    f6, f3, f12
    fnmsub   f5, f4, f5, f2
    fmul    f10, f11, f11
    fmul    f28, f6, f5
    fmul    f9, f3, f26
    fnmsub   f6, f4, f8, f2
    fmul    f5, f28, f28
    fmul    f12, f9, f6
    fmul    f8, f3, f27
    fnmsub   f6, f4, f7, f2
    fmul    f9, f12, f12
    fmul    f13, f8, f6
    fmul    f8, f3, f11
    fnmsub   f6, f4, f10, f2
    fmul    f7, f13, f13
    fmul    f8, f8, f6
    fmul    f6, f3, f28
    fnmsub   f5, f4, f5, f2
    fmul    f8, f4, f8
    fmul    f26, f6, f5
    frsp    f5, f8
    fmul    f8, f3, f12
    stfs    f5, 0x50(sp)
    fnmsub   f6, f4, f9, f2
    fmul    f5, f26, f26
    lfs     f9, 0x50(sp)
    lfs     f11, 0xa4(sp)
    fmul    f6, f8, f6
    fmuls   f27, f25, f9
    fneg    f10, f11
    fmul    f9, f4, f6
    fmuls   f12, f0, f27
    fmul    f8, f3, f13
    fnmsub   f6, f4, f7, f2
    frsp    f7, f9
    fmul    f3, f3, f26
    fmul    f6, f8, f6
    stfs    f7, 0x4c(sp)
    fnmsub   f2, f4, f5, f2
    lfs     f5, 0x4c(sp)
    fmuls   f7, f25, f5
    fmul    f5, f4, f6
    fmul    f2, f3, f2
    frsp    f3, f5
    fmuls   f5, f11, f7
    fmul    f2, f4, f2
    stfs    f3, 0x48(sp)
    fmadds  f31, f24, f12, f4
    lfs     f3, 0x48(sp)
    fmadds  f30, f10, f27, f4
    fmuls   f6, f25, f3
    frsp    f2, f2
    fmadds  f29, f24, f5, f4
    fmuls   f3, f1, f6
    stfs    f2, 0x44(sp)
    fmadds  f28, f0, f7, f4
    fmadds  f26, f11, f6, f4
    lfs     f0, 0x44(sp)
    fmadds  f27, f24, f3, f4
    fmuls   f2, f25, f0
    fmuls   f0, f10, f2
    fmadds  f25, f1, f2, f4
    fmadds  f24, f24, f0, f4
    bl      GXBegin
    lfs     f3, -0x4620(r2)
    lis     r8, 0xcc01
    li      r7, 0x0
    lfd     f2, -0x45f0(r2)
    stfs    f3, -0x8000(r8)
    li      r3, 0x0
    stfs    f3, -0x8000(r8)
    li      r4, 0x4
    li      r5, 0x1
    stfs    f3, -0x8000(r8)
    li      r6, 0x0
    stw     r7, -0x8000(r8)
    stfs    f31, -0x8000(r8)
    stfs    f30, -0x8000(r8)
    lwz     r0, 0x0(r30)
    stw     r0, 0x11c(sp)
    stw     r31, 0x118(sp)
    lfd     f0, 0x118(sp)
    stw     r0, 0x10c(sp)
    fsubs   f0, f0, f2
    stw     r31, 0x108(sp)
    stfs    f0, -0x8000(r8)
    lfd     f0, 0x108(sp)
    stfs    f3, -0x8000(r8)
    fsubs   f0, f0, f2
    stfs    f3, -0x8000(r8)
    stw     r7, -0x8000(r8)
    stfs    f29, -0x8000(r8)
    stfs    f28, -0x8000(r8)
    lwz     r0, 0x0(r29)
    stw     r0, 0x114(sp)
    stw     r31, 0x110(sp)
    lfd     f1, 0x110(sp)
    stw     r0, 0x104(sp)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r8)
    stfs    f1, -0x8000(r8)
    stfs    f3, -0x8000(r8)
    stw     r7, -0x8000(r8)
    stw     r31, 0x100(sp)
    stfs    f27, -0x8000(r8)
    lfd     f0, 0x100(sp)
    stfs    f26, -0x8000(r8)
    fsubs   f0, f0, f2
    stfs    f3, -0x8000(r8)
    stfs    f0, -0x8000(r8)
    stfs    f3, -0x8000(r8)
    stw     r7, -0x8000(r8)
    stfs    f24, -0x8000(r8)
    stfs    f25, -0x8000(r8)
    bl      GXSetBlendMode
    lwz     r0, 0x18c(sp)
    lfd     f31, 0x180(sp)
    lfd     f30, 0x178(sp)
    mtlr    r0
    lfd     f29, 0x170(sp)
    lfd     f28, 0x168(sp)
    lfd     f27, 0x160(sp)
    lfd     f26, 0x158(sp)
    lfd     f25, 0x150(sp)
    lfd     f24, 0x148(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    lwz     r29, 0x13c(sp)
    addi    sp, sp, 0x188
    blr


.globl Hx_Door
Hx_Door: # 0x80180d80
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r27, 0x2c(sp)
    addi    r31, r3, hx@l
    addi    r30, r31, 0x38
    lwz     r3, 0x38(r31)
    cmpwi   r3, 0x2
    beq-    branch_0x80180e90
    bge-    branch_0x80180dbc
    cmpwi   r3, 0x0
    beq-    branch_0x80180dc8
    bge-    branch_0x80180e08
    b       branch_0x80180f50

branch_0x80180dbc:
    cmpwi   r3, 0x4
    bge-    branch_0x80180f50
    b       branch_0x80180f04

branch_0x80180dc8:
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    lis     r0, 0x4330
    addi    r3, r31, 0x40
    lwz     r4, 0x0(r31)
    lfs     f2, -0x45e4(r2)
    srwi    r4, r4, 1
    lfd     f1, -0x45f0(r2)
    stw     r4, 0x24(sp)
    fmr     f4, f2
    lfs     f3, -0x4570(r2)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f0, f1
    bl      Hx_MotionSet
    b       branch_0x80180f50

branch_0x80180e08:
    addi    r28, r31, 0x40
    addi    r3, r28, 0x0
    bl      Hx_MotionUpdate
    fctiwz  f0, f1
    lis     r29, 0x4330
    lfd     f1, -0x45b8(r2)
    stfd    f0, 0x20(sp)
    lwz     r27, 0x24(sp)
    xoris   r0, r27, 0x8000
    stw     r0, 0x1c(sp)
    stw     r29, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      Hxs_FrBufferMorf2
    lwz     r0, 0x0(r31)
    srwi    r0, r0, 1
    cmplw   r27, r0
    blt-    branch_0x80180f50
    lwz     r4, 0x0(r30)
    addi    r3, r28, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x0(r30)
    lwz     r0, 0x0(r31)
    lfs     f2, -0x45e4(r2)
    srwi    r0, r0, 1
    lfd     f1, -0x45f0(r2)
    stw     r0, 0x1c(sp)
    fmr     f4, f2
    lfs     f3, -0x4570(r2)
    stw     r29, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      Hx_MotionSet
    b       branch_0x80180f50

branch_0x80180e90:
    lwz     r0, 0x0(r31)
    lis     r29, 0x4330
    lfd     f1, -0x45f0(r2)
    srwi    r0, r0, 1
    stw     r0, 0x1c(sp)
    stw     r29, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      Hxs_FrBufferMorf2
    addi    r3, r31, 0x40
    bl      Hx_MotionUpdate
    fctiwz  f0, f1
    lfd     f1, -0x45b8(r2)
    stfd    f0, 0x20(sp)
    lwz     r28, 0x24(sp)
    xoris   r0, r28, 0x8000
    stw     r0, 0x14(sp)
    stw     r29, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f1, f0, f1
    bl      Hxs_FrBufferMorf2B
    lwz     r0, 0x0(r31)
    srwi    r0, r0, 1
    cmplw   r28, r0
    blt-    branch_0x80180f50
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    b       branch_0x80180f50

branch_0x80180f04:
    lwz     r0, 0x0(r31)
    lis     r30, 0x4330
    lfd     f1, -0x45f0(r2)
    srwi    r0, r0, 1
    stw     r0, 0x14(sp)
    stw     r30, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f1, f0, f1
    bl      Hxs_FrBufferMorf2
    lwz     r0, 0x0(r31)
    lfd     f1, -0x45f0(r2)
    srwi    r0, r0, 1
    stw     r0, 0x1c(sp)
    stw     r30, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      Hxs_FrBufferMorf2B
    li      r0, 0x3
    stb     r0, 0x10(r31)
branch_0x80180f50:
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl Hxs_FrBufferMorf2B
Hxs_FrBufferMorf2B: # 0x80180f64
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stfd    f27, 0x68(sp)
    stfd    f26, 0x60(sp)
    stfd    f25, 0x58(sp)
    fmr     f25, f1
    stmw    r27, 0x44(sp)
    addi    r28, r3, hx@l
    addi    r3, sp, 0xc
    lwz     r0, 0x0(r28)
    srwi    r4, r0, 1
    srwi    r0, r0, 2
    add     r27, r4, r0
    bl      Frb2_InitGx
    lwz     r3, 0x0(r28)
    lis     r29, 0x4330
    lfd     f27, -0x45f0(r2)
    srwi    r0, r3, 2
    stw     r3, 0x3c(sp)
    stw     r0, 0x34(sp)
    stw     r29, 0x30(sp)
    stw     r29, 0x38(sp)
    lfd     f0, 0x30(sp)
    lfd     f1, 0x38(sp)
    fsubs   f0, f0, f27
    fsubs   f1, f1, f27
    fcmpo   cr0, f25, f0
    fsubs   f26, f1, f25
    bge-    branch_0x801810fc
    lfs     f25, -0x4620(r2)
    xoris   r30, r27, 0x8000
    lfd     f28, -0x45b8(r2)
    lis     r31, 0xcc01
    fmr     f29, f25
    lfs     f30, -0x460c(r2)
    lfs     f31, -0x4528(r2)
    b       branch_0x801810e0

branch_0x80181010:
    fmr     f1, f25
    bl      __cvt_fp2unsigned
    mr      r5, r3
    lwz     r3, R13Off_m0x7b0c(r13)
    addi    r4, r27, 0x0
    li      r6, 0xa0
    li      r7, 0x10
    bl      Hx_GetFrBuffer
    bl      GXInvalidateTexAll
    addi    r3, sp, 0xc
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    stw     r30, 0x34(sp)
    li      r0, 0x0
    fadds   f1, f31, f25
    stw     r29, 0x30(sp)
    lfd     f0, 0x30(sp)
    stw     r30, 0x3c(sp)
    fsubs   f0, f0, f28
    stw     r29, 0x38(sp)
    stfs    f0, -0x8000(r31)
    lfd     f0, 0x38(sp)
    stfs    f25, -0x8000(r31)
    fsubs   f0, f0, f28
    stfs    f29, -0x8000(r31)
    stw     r0, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stw     r0, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stw     r0, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stw     r0, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    bl      GXDrawDone
    fadds   f25, f25, f31
branch_0x801810e0:
    lwz     r0, 0x4(r28)
    stw     r0, 0x34(sp)
    stw     r29, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f27
    fcmpo   cr0, f25, f0
    blt+    branch_0x80181010
branch_0x801810fc:
    bl      Frb2_InitBlackBox
    lwz     r3, 0x0(r28)
    lis     r4, 0x4330
    lwz     r0, 0x4(r28)
    fmr     f1, f26
    stw     r3, 0x34(sp)
    lfd     f4, -0x45f0(r2)
    li      r3, 0xff
    stw     r0, 0x3c(sp)
    lfs     f2, -0x4620(r2)
    stw     r4, 0x30(sp)
    stw     r4, 0x38(sp)
    lfd     f3, 0x30(sp)
    lfd     f0, 0x38(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      Frb2_RendBox
    lmw     r27, 0x44(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lfd     f27, 0x68(sp)
    lfd     f26, 0x60(sp)
    lfd     f25, 0x58(sp)
    addi    sp, sp, 0x90
    blr


.globl Hxs_FrBufferMorf2
Hxs_FrBufferMorf2: # 0x80181170
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    fmr     f31, f1
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stfd    f27, 0x68(sp)
    stfd    f26, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    addi    r29, r3, hx@l
    addi    r3, sp, 0x14
    bl      Frb2_InitGx
    lwz     r0, 0x0(r29)
    lis     r30, 0x4330
    lfd     f27, -0x45f0(r2)
    srwi    r0, r0, 2
    stw     r0, 0x4c(sp)
    stw     r30, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f27
    fcmpo   cr0, f31, f0
    bge-    branch_0x801812e8
    lfs     f26, -0x4620(r2)
    lis     r31, 0xcc01
    lfs     f29, -0x460c(r2)
    fmr     f28, f26
    lfs     f30, -0x4528(r2)
    b       branch_0x801812cc

branch_0x801811f4:
    fmr     f1, f26
    bl      __cvt_fp2unsigned
    mr      r5, r3
    lwz     r3, R13Off_m0x7b0c(r13)
    li      r4, 0x0
    li      r6, 0xa0
    li      r7, 0x10
    bl      Hx_GetFrBuffer
    bl      GXInvalidateTexAll
    addi    r3, sp, 0x14
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    stfs    f31, -0x8000(r31)
    li      r3, 0x0
    fadds   f1, f30, f26
    stfs    f26, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stw     r3, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    lwz     r0, 0x0(r29)
    srwi    r0, r0, 2
    stw     r0, 0x4c(sp)
    stw     r30, 0x48(sp)
    lfd     f0, 0x48(sp)
    stw     r0, 0x44(sp)
    fsubs   f0, f0, f27
    stw     r30, 0x40(sp)
    stfs    f0, -0x8000(r31)
    lfd     f0, 0x40(sp)
    stfs    f26, -0x8000(r31)
    fsubs   f0, f0, f27
    stfs    f28, -0x8000(r31)
    stw     r3, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stw     r3, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stw     r3, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    bl      GXDrawDone
    fadds   f26, f26, f30
branch_0x801812cc:
    lwz     r0, 0x4(r29)
    stw     r0, 0x44(sp)
    stw     r30, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f27
    fcmpo   cr0, f26, f0
    blt+    branch_0x801811f4
branch_0x801812e8:
    bl      Frb2_InitBlackBox
    lwzu    r0, 0x4(r29)
    lis     r31, 0x4330
    lfs     f1, -0x4620(r2)
    fmr     f3, f31
    stw     r0, 0x44(sp)
    lfd     f4, -0x45f0(r2)
    fmr     f2, f1
    stw     r31, 0x40(sp)
    li      r3, 0xff
    lfd     f0, 0x40(sp)
    fsubs   f4, f0, f4
    bl      Frb2_RendBox
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f2, -0x4620(r2)
    lis     r4, 0xcc01
    li      r3, 0xff
    lfd     f1, -0x45f0(r2)
    stfs    f2, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stw     r3, -0x8000(r4)
    stfs    f31, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stw     r3, -0x8000(r4)
    lwz     r0, 0x0(r29)
    stw     r0, 0x4c(sp)
    stw     r31, 0x48(sp)
    lfd     f0, 0x48(sp)
    stw     r0, 0x3c(sp)
    fsubs   f0, f0, f1
    stfs    f31, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stw     r31, 0x38(sp)
    stfs    f2, -0x8000(r4)
    lfd     f0, 0x38(sp)
    stw     r3, -0x8000(r4)
    fsubs   f0, f0, f1
    stfs    f2, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stw     r3, -0x8000(r4)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lfd     f27, 0x68(sp)
    lfd     f26, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl Hxs2_Circle
Hxs2_Circle: # 0x801813d4
    mflr    r0
    lis     r4, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x198(sp)
    stfd    f31, 0x190(sp)
    stfd    f30, 0x188(sp)
    stfd    f29, 0x180(sp)
    stfd    f28, 0x178(sp)
    stfd    f27, 0x170(sp)
    stfd    f26, 0x168(sp)
    stfd    f25, 0x160(sp)
    stfd    f24, 0x158(sp)
    stfd    f23, 0x150(sp)
    fmr     f23, f2
    stfd    f22, 0x148(sp)
    stfd    f21, 0x140(sp)
    stfd    f20, 0x138(sp)
    fmr     f20, f1
    stmw    r25, 0x11c(sp)
    addi    r25, r3, 0x0
    addi    r29, r4, hx@l
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x1
    bl      Hx_GxInit
    addi    r26, r29, 0xc
    lfd     f1, -0x45f0(r2)
    lwz     r0, 0xc(r29)
    lis     r30, 0x4330
    fmuls   f22, f20, f20
    clrlwi  r28, r25, 24
    stw     r0, 0x114(sp)
    fmuls   f21, f23, f23
    stw     r30, 0x110(sp)
    lfd     f0, 0x110(sp)
    fsubs   f0, f0, f1
    fsubs   f1, f0, f23
    bl      __cvt_fp2unsigned
    lfs     f27, -0x4620(r2)
    mr      r25, r3
    lfd     f28, -0x45c8(r2)
    addi    r27, r29, 0x8
    lfd     f29, -0x45c0(r2)
    lfd     f30, -0x45f0(r2)
    lis     r31, 0xcc01
    lfs     f31, -0x460c(r2)
    b       branch_0x80181754

branch_0x80181490:
    subf    r0, r25, r0
    stw     r0, 0x114(sp)
    stw     r30, 0x110(sp)
    lfd     f0, 0x110(sp)
    fsubs   f3, f0, f30
    fmuls   f2, f3, f3
    fsubs   f24, f21, f2
    fcmpo   cr0, f24, f27
    ble-    branch_0x801814f8
    frsqrte f1, f24
    fmul    f0, f1, f1
    fmul    f1, f28, f1
    fnmsub   f0, f24, f0, f29
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f28, f1
    fnmsub   f0, f24, f0, f29
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f28, f1
    fnmsub   f0, f24, f0, f29
    fmul    f0, f1, f0
    fmul    f0, f24, f0
    frsp    f0, f0
    stfs    f0, 0xb0(sp)
    lfs     f24, 0xb0(sp)
branch_0x801814f8:
    stw     r25, 0x114(sp)
    fcmpo   cr0, f3, f20
    stw     r25, 0x10c(sp)
    stw     r30, 0x110(sp)
    cror    2, 1, 2
    stw     r30, 0x108(sp)
    lfd     f1, 0x110(sp)
    lfd     f0, 0x108(sp)
    fsubs   f26, f1, f30
    fsubs   f25, f0, f30
    bne-    branch_0x801815cc
    li      r3, 0xa8
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x8(r29)
    stw     r0, 0x10c(sp)
    stw     r30, 0x108(sp)
    lfd     f0, 0x108(sp)
    stw     r0, 0x114(sp)
    fsubs   f0, f0, f30
    stw     r30, 0x110(sp)
    fsubs   f1, f0, f24
    lfd     f0, 0x110(sp)
    fsubs   f0, f0, f30
    stfs    f1, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    fadds   f2, f0, f24
    stfs    f31, -0x8000(r31)
    stw     r28, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stw     r28, -0x8000(r31)
    lwz     r0, 0x4(r29)
    subf    r0, r25, r0
    stfs    f1, -0x8000(r31)
    stw     r0, 0x104(sp)
    stw     r30, 0x100(sp)
    lfd     f0, 0x100(sp)
    stw     r0, 0xfc(sp)
    fsubs   f0, f0, f30
    stw     r30, 0xf8(sp)
    stfs    f0, -0x8000(r31)
    lfd     f0, 0xf8(sp)
    stfs    f31, -0x8000(r31)
    fsubs   f0, f0, f30
    stw     r28, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stw     r28, -0x8000(r31)
    b       branch_0x80181750

branch_0x801815cc:
    fsubs   f23, f22, f2
    fcmpo   cr0, f23, f27
    ble-    branch_0x8018161c
    frsqrte f1, f23
    fmul    f0, f1, f1
    fmul    f1, f28, f1
    fnmsub   f0, f23, f0, f29
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f28, f1
    fnmsub   f0, f23, f0, f29
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f28, f1
    fnmsub   f0, f23, f0, f29
    fmul    f0, f1, f0
    fmul    f0, f23, f0
    frsp    f0, f0
    stfs    f0, 0xac(sp)
    lfs     f23, 0xac(sp)
branch_0x8018161c:
    li      r3, 0xa8
    li      r4, 0x0
    li      r5, 0x8
    bl      GXBegin
    lwz     r3, 0x0(r27)
    stw     r3, 0xfc(sp)
    stw     r30, 0xf8(sp)
    lfd     f0, 0xf8(sp)
    stw     r3, 0x104(sp)
    fsubs   f0, f0, f30
    stw     r30, 0x100(sp)
    fsubs   f1, f0, f24
    lfd     f0, 0x100(sp)
    stw     r3, 0x10c(sp)
    fsubs   f0, f0, f30
    stfs    f1, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    fsubs   f0, f0, f23
    stfs    f31, -0x8000(r31)
    stw     r28, -0x8000(r31)
    stw     r30, 0x108(sp)
    stfs    f0, -0x8000(r31)
    lfd     f0, 0x108(sp)
    stfs    f25, -0x8000(r31)
    fsubs   f0, f0, f30
    stfs    f31, -0x8000(r31)
    stw     r3, 0x114(sp)
    fadds   f2, f0, f23
    stw     r28, -0x8000(r31)
    stw     r30, 0x110(sp)
    stfs    f2, -0x8000(r31)
    lfd     f0, 0x110(sp)
    stfs    f26, -0x8000(r31)
    fsubs   f0, f0, f30
    stfs    f31, -0x8000(r31)
    fadds   f4, f0, f24
    stw     r28, -0x8000(r31)
    stw     r3, 0xe4(sp)
    stfs    f4, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stw     r28, -0x8000(r31)
    lwz     r0, 0x4(r29)
    stw     r30, 0xe0(sp)
    subf    r0, r25, r0
    stw     r0, 0xf4(sp)
    lfd     f0, 0xe0(sp)
    stw     r30, 0xf0(sp)
    fsubs   f0, f0, f30
    lfd     f1, 0xf0(sp)
    stw     r0, 0xec(sp)
    fsubs   f1, f1, f30
    stfs    f2, -0x8000(r31)
    fsubs   f3, f0, f24
    stfs    f1, -0x8000(r31)
    stw     r30, 0xe8(sp)
    stfs    f31, -0x8000(r31)
    lfd     f0, 0xe8(sp)
    stw     r28, -0x8000(r31)
    fsubs   f2, f0, f30
    stfs    f4, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stw     r3, 0xdc(sp)
    stw     r28, -0x8000(r31)
    stw     r30, 0xd8(sp)
    stfs    f3, -0x8000(r31)
    lfd     f0, 0xd8(sp)
    stfs    f1, -0x8000(r31)
    fsubs   f0, f0, f30
    stfs    f31, -0x8000(r31)
    fsubs   f0, f0, f23
    stw     r28, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stw     r28, -0x8000(r31)
branch_0x80181750:
    addi    r25, r25, 0x1
branch_0x80181754:
    lwz     r0, 0x0(r26)
    cmplw   r25, r0
    ble+    branch_0x80181490
    lmw     r25, 0x11c(sp)
    lwz     r0, 0x19c(sp)
    lfd     f31, 0x190(sp)
    lfd     f30, 0x188(sp)
    mtlr    r0
    lfd     f29, 0x180(sp)
    lfd     f28, 0x178(sp)
    lfd     f27, 0x170(sp)
    lfd     f26, 0x168(sp)
    lfd     f25, 0x160(sp)
    lfd     f24, 0x158(sp)
    lfd     f23, 0x150(sp)
    lfd     f22, 0x148(sp)
    lfd     f21, 0x140(sp)
    lfd     f20, 0x138(sp)
    addi    sp, sp, 0x198
    blr


.globl Hxs1_Circle
Hxs1_Circle: # 0x801817a4
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stfd    f31, 0x160(sp)
    stfd    f30, 0x158(sp)
    stfd    f29, 0x150(sp)
    stfd    f28, 0x148(sp)
    stfd    f27, 0x140(sp)
    stfd    f26, 0x138(sp)
    stfd    f25, 0x130(sp)
    stfd    f24, 0x128(sp)
    stfd    f23, 0x120(sp)
    fmr     f23, f1
    stfd    f22, 0x118(sp)
    stmw    r27, 0x104(sp)
    addi    r29, r3, hx@l
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x1
    bl      Hx_GxInit
    fmuls   f24, f23, f23
    lfs     f28, -0x4620(r2)
    lfd     f29, -0x45c8(r2)
    addi    r28, r29, 0x8
    lfd     f30, -0x45c0(r2)
    lfd     f31, -0x45f0(r2)
    li      r27, 0x0
    lfs     f22, -0x460c(r2)
    lis     r30, 0x4330
    lis     r31, 0xcc01
    b       branch_0x80181a6c

branch_0x80181824:
    subf    r0, r27, r0
    stw     r27, 0xf4(sp)
    stw     r0, 0xe4(sp)
    stw     r30, 0xe0(sp)
    lfd     f0, 0xe0(sp)
    stw     r0, 0xfc(sp)
    fsubs   f0, f0, f31
    stw     r27, 0xec(sp)
    stw     r30, 0xf8(sp)
    fcmpo   cr0, f0, f23
    stw     r30, 0xf0(sp)
    lfd     f0, 0xf8(sp)
    stw     r30, 0xe8(sp)
    lfd     f1, 0xf0(sp)
    fsubs   f2, f0, f31
    lfd     f0, 0xe8(sp)
    cror    2, 1, 2
    fsubs   f27, f1, f31
    fsubs   f26, f0, f31
    bne-    branch_0x80181908
    li      r3, 0xa8
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x0(r29)
    li      r3, 0xff
    stw     r0, 0xe4(sp)
    stfs    f28, -0x8000(r31)
    stw     r30, 0xe0(sp)
    stfs    f27, -0x8000(r31)
    lfd     f0, 0xe0(sp)
    stfs    f22, -0x8000(r31)
    fsubs   f1, f0, f31
    stw     r3, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f22, -0x8000(r31)
    stw     r3, -0x8000(r31)
    lwz     r0, 0x4(r29)
    subf    r0, r27, r0
    stfs    f28, -0x8000(r31)
    stw     r0, 0xec(sp)
    stw     r30, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    stw     r0, 0xf4(sp)
    fsubs   f0, f0, f31
    stw     r30, 0xf0(sp)
    stfs    f0, -0x8000(r31)
    lfd     f0, 0xf0(sp)
    stfs    f22, -0x8000(r31)
    fsubs   f0, f0, f31
    stw     r3, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f22, -0x8000(r31)
    stw     r3, -0x8000(r31)
    b       branch_0x80181a68

branch_0x80181908:
    fnmsubs  f25, f2, f2, f24
    fcmpo   cr0, f25, f28
    ble-    branch_0x80181958
    frsqrte f1, f25
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f25, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f25, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f25, f0, f30
    fmul    f0, f1, f0
    fmul    f0, f25, f0
    frsp    f0, f0
    stfs    f0, 0xa4(sp)
    lfs     f25, 0xa4(sp)
branch_0x80181958:
    li      r3, 0xa8
    li      r4, 0x0
    li      r5, 0x8
    bl      GXBegin
    lwz     r4, 0x0(r28)
    li      r3, 0xff
    stw     r4, 0xe4(sp)
    stw     r30, 0xe0(sp)
    stfs    f28, -0x8000(r31)
    lfd     f0, 0xe0(sp)
    stfs    f27, -0x8000(r31)
    fsubs   f0, f0, f31
    stfs    f22, -0x8000(r31)
    fsubs   f0, f0, f25
    stw     r3, -0x8000(r31)
    stw     r4, 0xec(sp)
    stfs    f0, -0x8000(r31)
    stw     r30, 0xe8(sp)
    stfs    f26, -0x8000(r31)
    lfd     f0, 0xe8(sp)
    stfs    f22, -0x8000(r31)
    fsubs   f0, f0, f31
    stw     r3, -0x8000(r31)
    lwz     r0, 0x0(r29)
    fadds   f2, f0, f25
    stw     r4, 0xd4(sp)
    stw     r0, 0xf4(sp)
    stfs    f2, -0x8000(r31)
    stw     r30, 0xf0(sp)
    stfs    f27, -0x8000(r31)
    lfd     f0, 0xf0(sp)
    stfs    f22, -0x8000(r31)
    fsubs   f3, f0, f31
    stw     r3, -0x8000(r31)
    stfs    f3, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f22, -0x8000(r31)
    stw     r3, -0x8000(r31)
    lwz     r0, 0x4(r29)
    stw     r30, 0xd0(sp)
    subf    r0, r27, r0
    stw     r0, 0xfc(sp)
    lfd     f0, 0xd0(sp)
    stw     r30, 0xf8(sp)
    fsubs   f0, f0, f31
    lfd     f1, 0xf8(sp)
    stw     r0, 0xdc(sp)
    fsubs   f1, f1, f31
    stfs    f2, -0x8000(r31)
    fsubs   f2, f0, f25
    stfs    f1, -0x8000(r31)
    stw     r30, 0xd8(sp)
    stfs    f22, -0x8000(r31)
    lfd     f0, 0xd8(sp)
    stw     r3, -0x8000(r31)
    fsubs   f0, f0, f31
    stfs    f3, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f22, -0x8000(r31)
    stw     r3, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f22, -0x8000(r31)
    stw     r3, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f22, -0x8000(r31)
    stw     r3, -0x8000(r31)
branch_0x80181a68:
    addi    r27, r27, 0x1
branch_0x80181a6c:
    lwz     r0, 0xc(r29)
    cmplw   r27, r0
    ble+    branch_0x80181824
    lmw     r27, 0x104(sp)
    lwz     r0, 0x16c(sp)
    lfd     f31, 0x160(sp)
    lfd     f30, 0x158(sp)
    mtlr    r0
    lfd     f29, 0x150(sp)
    lfd     f28, 0x148(sp)
    lfd     f27, 0x140(sp)
    lfd     f26, 0x138(sp)
    lfd     f25, 0x130(sp)
    lfd     f24, 0x128(sp)
    lfd     f23, 0x120(sp)
    lfd     f22, 0x118(sp)
    addi    sp, sp, 0x168
    blr


.globl Hx_Circle
Hx_Circle: # 0x80181ab4
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, hx@l
    stw     r30, 0x8(sp)
    addi    r30, r31, 0x38
    lwz     r0, 0x38(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80181b88
    bge-    branch_0x80181c30
    cmpwi   r0, 0x0
    bge-    branch_0x80181af0
    b       branch_0x80181c30

branch_0x80181af0:
    lfs     f1, -0x4620(r2)
    li      r0, 0x0
    lfs     f0, -0x460c(r2)
    stfs    f1, -0x6388(r13)
    stfs    f1, -0x638c(r13)
    stfs    f1, -0x6390(r13)
    sth     r0, -0x6380(r13)
    sth     r0, -0x6382(r13)
    sth     r0, -0x6384(r13)
    stfs    f0, -0x6394(r13)
    stfs    f1, -0x637c(r13)
    lbz     r0, 0x12(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80181b5c
    bge-    branch_0x80181b7c
    cmpwi   r0, 0x0
    bge-    branch_0x80181b38
    b       branch_0x80181b7c

branch_0x80181b38:
    lfs     f1, -0x4594(r2)
    addi    r3, r31, 0x40
    lfs     f2, -0x45fc(r2)
    lfs     f3, -0x4524(r2)
    lfs     f4, -0x461c(r2)
    bl      Hx_MotionSet
    li      r0, 0x19
    stw     r0, 0x3c(r31)
    b       branch_0x80181b7c

branch_0x80181b5c:
    lfs     f1, -0x4594(r2)
    addi    r3, r31, 0x40
    lfs     f2, -0x45e4(r2)
    lfs     f3, -0x461c(r2)
    lfs     f4, -0x4538(r2)
    bl      Hx_MotionSet
    li      r0, 0x1e
    stw     r0, 0x3c(r31)
branch_0x80181b7c:
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
branch_0x80181b88:
    addi    r3, r31, 0x40
    bl      Hx_MotionUpdate
    stfs    f1, -0x6394(r13)
    lbz     r0, 0x12(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80181bb0
    bge-    branch_0x80181c0c
    cmpwi   r0, 0x0
    bge-    branch_0x80181be8
    b       branch_0x80181c0c

branch_0x80181bb0:
    lfs     f2, -0x637c(r13)
    lfs     f1, -0x4520(r2)
    lfs     f0, -0x460c(r2)
    fadds   f1, f2, f1
    stfs    f1, -0x637c(r13)
    lfs     f1, -0x637c(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80181bd4
    stfs    f0, -0x637c(r13)
branch_0x80181bd4:
    lfs     f1, -0x637c(r13)
    bl      Hx_FrBufferMorf
    lfs     f1, -0x460c(r2)
    bl      Hx_SetVFilter
    b       branch_0x80181c0c

branch_0x80181be8:
    lfs     f2, -0x4594(r2)
    lfs     f1, -0x6394(r13)
    lfs     f0, -0x4620(r2)
    fsubs   f1, f2, f1
    stfs    f1, -0x6394(r13)
    lfs     f1, -0x6394(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80181c0c
    stfs    f0, -0x6394(r13)
branch_0x80181c0c:
    bl      Hx_TimerCountDown
    cmplwi  r3, 0x0
    bne-    branch_0x80181c38
    lwz     r3, 0x0(r30)
    li      r0, 0x3
    addi    r3, r3, 0x1
    stw     r3, 0x0(r30)
    stb     r0, 0x10(r31)
    b       branch_0x80181c38

branch_0x80181c30:
    li      r0, 0x3
    stb     r0, 0x10(r31)
branch_0x80181c38:
    lfs     f1, -0x6394(r13)
    bl      Hxs1_Circle
    lfs     f2, -0x6394(r13)
    lfs     f0, -0x451c(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x80181c94
    lfs     f0, -0x4614(r2)
    lhz     r0, -0x6384(r13)
    fsubs   f1, f2, f0
    lfs     f0, -0x6390(r13)
    srawi   r0, r0, 8
    clrlwi  r3, r0, 24
    fadds   f1, f1, f0
    bl      Hxs2_Circle
    lfs     f1, -0x6390(r13)
    lfs     f0, -0x4518(r2)
    lhz     r3, -0x6384(r13)
    fadds   f0, f1, f0
    cmplwi  r3, 0xff00
    stfs    f0, -0x6390(r13)
    bge-    branch_0x80181c94
    addi    r0, r3, 0x180
    sth     r0, -0x6384(r13)
branch_0x80181c94:
    lfs     f2, -0x6394(r13)
    lfs     f0, -0x4514(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x80181cf8
    lfs     f1, -0x4510(r2)
    lfs     f0, -0x4614(r2)
    fsubs   f3, f2, f1
    lfs     f1, -0x638c(r13)
    fsubs   f2, f2, f0
    lfs     f0, -0x6390(r13)
    lhz     r0, -0x6382(r13)
    srawi   r0, r0, 8
    fadds   f1, f3, f1
    fadds   f2, f2, f0
    clrlwi  r3, r0, 24
    bl      Hxs2_Circle
    lfs     f1, -0x638c(r13)
    lfs     f0, -0x45cc(r2)
    lhz     r3, -0x6382(r13)
    fadds   f0, f1, f0
    cmplwi  r3, 0xff00
    stfs    f0, -0x638c(r13)
    bge-    branch_0x80181cf8
    addi    r0, r3, 0xc0
    sth     r0, -0x6382(r13)
branch_0x80181cf8:
    lfs     f2, -0x6394(r13)
    lfs     f0, -0x450c(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x80181d5c
    lfs     f1, -0x4508(r2)
    lfs     f0, -0x4510(r2)
    fsubs   f3, f2, f1
    lfs     f1, -0x6388(r13)
    fsubs   f2, f2, f0
    lfs     f0, -0x638c(r13)
    lhz     r0, -0x6380(r13)
    srawi   r0, r0, 8
    fadds   f1, f3, f1
    fadds   f2, f2, f0
    clrlwi  r3, r0, 24
    bl      Hxs2_Circle
    lfs     f1, -0x6388(r13)
    lfs     f0, -0x4504(r2)
    lhz     r3, -0x6380(r13)
    fadds   f0, f1, f0
    cmplwi  r3, 0xff00
    stfs    f0, -0x6388(r13)
    bge-    branch_0x80181d5c
    addi    r0, r3, 0x80
    sth     r0, -0x6380(r13)
branch_0x80181d5c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr


.globl Hx_MotionUpdate
Hx_MotionUpdate: # 0x80181d74
    lfs     f0, 0x0(r3)
    lfs     f1, 0x1c(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80181d98
    lfs     f1, 0x18(r3)
    lfs     f0, 0xc(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    b       branch_0x80181db8

branch_0x80181d98:
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x80181db8
    lfs     f1, 0x18(r3)
    lfs     f0, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
branch_0x80181db8:
    lfs     f1, 0x1c(r3)
    lfs     f0, -0x460c(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r3)
    lfs     f1, 0x20(r3)
    lfs     f0, 0x18(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x20(r3)
    blr


.globl Hx_MotionSet
Hx_MotionSet: # 0x80181de0
    stfs    f2, 0x0(r3)
    fadds   f0, f2, f3
    lfs     f5, 0x0(r3)
    fadds   f0, f3, f0
    fadds   f5, f5, f3
    fadds   f3, f4, f0
    stfs    f5, 0x4(r3)
    lfs     f0, 0x4(r3)
    fadds   f0, f0, f4
    stfs    f0, 0x8(r3)
    lfs     f5, -0x45fc(r2)
    lfs     f0, -0x4620(r2)
    fmuls   f1, f5, f1
    fcmpu   cr0, f0, f2
    fdivs   f1, f1, f3
    beq-    branch_0x80181e28
    fdivs   f0, f1, f2
    stfs    f0, 0xc(r3)
branch_0x80181e28:
    lfs     f0, -0x4620(r2)
    fcmpu   cr0, f0, f4
    beq-    branch_0x80181e40
    fneg    f0, f1
    fdivs   f0, f0, f4
    stfs    f0, 0x14(r3)
branch_0x80181e40:
    lfs     f0, -0x4620(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x1c(r3)
    blr


.globl Hx_TimerCountDown
Hx_TimerCountDown: # 0x80181e58
    lis     r3, hx@h
    addi    r3, r3, hx@l
    addi    r4, r3, 0x3c
    lwz     r3, 0x3c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80181e78
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x80181e78:
    lwz     r3, 0x0(r4)
    blr


.globl Hx_UpdateWipe
Hx_UpdateWipe: # 0x80181e80
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r3, hx@l
    stw     r30, 0x20(sp)
    bl      ReInitializeGX
    addi    r30, r31, 0x10
    lbz     r0, 0x10(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x80181f7c
    bge-    branch_0x80181ecc
    cmpwi   r0, 0x0
    beq-    branch_0x80181fa0
    bge-    branch_0x80181f38
    b       branch_0x80181fa0

branch_0x80181ecc:
    cmpwi   r0, 0x4
    bge-    branch_0x80181fa0
    lbz     r0, 0x12(r31)
    cmplwi  r0, 0x1
    beq-    branch_0x80181fa0
    bl      Hx_CameraInit
    li      r3, 0x0
    li      r4, 0x0
    bl      Hx_GxInit
    bl      Frb2_InitBlackBox
    lwz     r5, 0x0(r31)
    lis     r4, 0x4330
    lwz     r0, 0x4(r31)
    li      r3, 0xff
    stw     r5, 0x1c(sp)
    lfs     f1, -0x4620(r2)
    stw     r0, 0x14(sp)
    lfd     f4, -0x45f0(r2)
    fmr     f2, f1
    stw     r4, 0x18(sp)
    stw     r4, 0x10(sp)
    lfd     f3, 0x18(sp)
    lfd     f0, 0x10(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      Frb2_RendBox
    b       branch_0x80181fa0

branch_0x80181f38:
    lbz     r0, 0x11(r31)
    lis     r4, handle_table@h
    lis     r3, handle_type@h
    slwi    r5, r0, 2
    addi    r0, r4, handle_table@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    addi    r4, r3, handle_type@l
    li      r3, 0x2
    stw     r0, 0x20(r31)
    li      r0, 0x0
    lbz     r5, 0x11(r31)
    add     r4, r4, r5
    lbz     r4, 0x0(r4)
    stb     r4, 0x12(r31)
    stb     r3, 0x0(r30)
    stw     r0, 0x38(r31)
branch_0x80181f7c:
    stfs    f31, 0x18(r31)
    bl      GXDrawDone
    lwz     r12, 0x20(r31)
    mtlr    r12
    blrl
    bl      GXDrawDone
    lfs     f0, 0x14(r31)
    fadds   f0, f0, f31
    stfs    f0, 0x14(r31)
branch_0x80181fa0:
    lwz     r0, 0x34(sp)
    lbz     r3, 0x0(r30)
    lfd     f31, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl Hx_GetWipeType
Hx_GetWipeType: # 0x80181fc0
    lis     r4, handle_type@h
    addi    r0, r4, handle_type@l
    add     r3, r0, r3
    lbz     r3, 0x0(r3)
    blr


.globl dummy_handler
dummy_handler: # 0x80181fd4
    blr


.globl Hx_StartWipe
Hx_StartWipe: # 0x80181fd8
    mflr    r0
    lis     r5, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, hx@l
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80182020
    addi    r0, r31, 0x80
    stw     r0, 0x2c(r31)
    li      r0, 0x3300
    stw     r0, 0x34(r31)
branch_0x80182020:
    addi    r30, r31, 0x10
    lbz     r0, 0x10(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x80182034
    b       branch_0x8018203c

branch_0x80182034:
    li      r3, 0x1
    bl      Hx_Warning
branch_0x8018203c:
    li      r0, 0x1
    stb     r0, 0x0(r30)
    stb     r28, 0x11(r31)
    lfs     f0, -0x4620(r2)
    stfs    f0, 0x14(r31)
    stw     r29, 0x1c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl Hx_RemoveResource
Hx_RemoveResource: # 0x80182074
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, hx@l
    stw     r30, 0x8(sp)
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x801820a4
    li      r3, 0x1
    bl      Hx_Warning
branch_0x801820a4:
    addi    r30, r31, 0x24
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801820bc
    li      r3, 0x2
    bl      Hx_Warning
branch_0x801820bc:
    li      r0, 0x0
    stw     r0, 0x0(r30)
    stw     r0, 0x28(r31)
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl Hx_ProvideResourceEx
Hx_ProvideResourceEx: # 0x801820e0
    mflr    r0
    lis     r4, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, hx@l
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x80182114
    li      r3, 0x1
    bl      Hx_Warning
branch_0x80182114:
    li      r0, 0x1
    stw     r0, 0x28(r31)
    stw     r30, 0x30(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl Hx_ProvideResource
Hx_ProvideResource: # 0x80182138
    mflr    r0
    lis     r5, hx@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, hx@l
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x80182178
    li      r3, 0x1
    bl      Hx_Warning
branch_0x80182178:
    addi    r30, r31, 0x24
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80182190
    li      r3, 0x3
    bl      Hx_Warning
branch_0x80182190:
    li      r0, 0x1
    stw     r0, 0x0(r30)
    stw     r28, 0x2c(r31)
    stw     r29, 0x34(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl Hx_ResetWipe
Hx_ResetWipe: # 0x801821c0
    lis     r5, hx@h
    addi    r6, r5, hx@l
    li      r5, 0x0
    stb     r5, 0x10(r6)
    stw     r3, 0x0(r6)
    stw     r4, 0x4(r6)
    lwz     r0, 0x0(r6)
    srwi    r0, r0, 1
    stw     r0, 0x8(r6)
    lwz     r0, 0x4(r6)
    srwi    r0, r0, 1
    stw     r0, 0xc(r6)
    stw     r5, 0x24(r6)
    stw     r5, 0x28(r6)
    blr


.globl Hx_Warning
Hx_Warning: # 0x801821fc
    blr


.globl Frb2_RendBox
Frb2_RendBox: # 0x80182200
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x4
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    fmr     f31, f4
    stfd    f30, 0x38(sp)
    fmr     f30, f3
    stfd    f29, 0x30(sp)
    fmr     f29, f2
    stfd    f28, 0x28(sp)
    fmr     f28, f1
    stw     r31, 0x24(sp)
    mr      r31, r3
    li      r3, 0x80
    bl      GXBegin
    lis     r3, 0xcc01
    lfs     f0, -0x4620(r2)
    stfs    f28, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r31, -0x8000(r3)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    lfd     f29, 0x30(sp)
    lfd     f28, 0x28(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl Frb2_InitBlackBox
Frb2_InitBlackBox: # 0x801822b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0x100
    li      r6, 0x4
    bl      GXSetTevOrder
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl Frb2_InitGx
Frb2_InitGx: # 0x80182338
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      Hx_CameraInit
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    lfs     f1, -0x460c(r2)
    bl      Hx_SetVFilter
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x3
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x0
    bl      GXSetBlendMode
    lwz     r4, R13Off_m0x7b0c(r13)
    addi    r3, r31, 0x0
    li      r5, 0xa0
    li      r6, 0x10
    li      r7, 0x4
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x4620(r2)
    mr      r3, r31
    lfs     f2, -0x461c(r2)
    li      r4, 0x1
    fmr     f3, f1
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXLoadTexObj
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl Hx_FrBufferMorf
Hx_FrBufferMorf: # 0x80182478
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      Hx_SetVFilter
    lis     r3, hx@h
    addi    r4, r3, hx@l
    lwz     r3, 0x8(r4)
    lwz     r4, 0xc(r4)
    addi    r3, r3, -0x18
    addi    r4, r4, -0x18
    bl      __Hx_FrBufferMorf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __Hx_FrBufferMorf
__Hx_FrBufferMorf: # 0x801824b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    bl      Hx_CameraInit
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    lwz     r3, R13Off_m0x7b20(r13)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x30
    li      r7, 0x30
    bl      Hx_GetFrBuffer
    bl      GXInvalidateTexAll
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x3
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x0
    bl      GXSetBlendMode
    lwz     r4, R13Off_m0x7b20(r13)
    addi    r3, sp, 0x10
    li      r5, 0x30
    li      r6, 0x30
    li      r7, 0x4
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x4620(r2)
    addi    r3, sp, 0x10
    lfs     f2, -0x461c(r2)
    li      r4, 0x1
    fmr     f3, f1
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x10
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    stw     r30, 0x6c(sp)
    addi    r3, r30, 0x30
    lis     r6, 0x4330
    lfd     f4, -0x45f0(r2)
    stw     r6, 0x68(sp)
    addi    r0, r31, 0x30
    lfs     f3, -0x4620(r2)
    stw     r31, 0x64(sp)
    lis     r5, 0xcc01
    lfd     f0, 0x68(sp)
    li      r4, 0x0
    stw     r6, 0x60(sp)
    fsubs   f1, f0, f4
    lfs     f2, -0x460c(r2)
    lfd     f0, 0x60(sp)
    stw     r3, 0x5c(sp)
    fsubs   f0, f0, f4
    stfs    f1, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stw     r6, 0x58(sp)
    stw     r31, 0x54(sp)
    lfd     f0, 0x58(sp)
    stw     r4, -0x8000(r5)
    fsubs   f1, f0, f4
    stw     r6, 0x50(sp)
    stfs    f3, -0x8000(r5)
    lfd     f0, 0x50(sp)
    stfs    f3, -0x8000(r5)
    fsubs   f0, f0, f4
    stfs    f1, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stw     r3, 0x4c(sp)
    stfs    f3, -0x8000(r5)
    stw     r6, 0x48(sp)
    stw     r0, 0x44(sp)
    lfd     f0, 0x48(sp)
    stw     r4, -0x8000(r5)
    fsubs   f1, f0, f4
    stw     r6, 0x40(sp)
    stfs    f2, -0x8000(r5)
    lfd     f0, 0x40(sp)
    stfs    f3, -0x8000(r5)
    fsubs   f0, f0, f4
    stfs    f1, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stw     r30, 0x3c(sp)
    stfs    f3, -0x8000(r5)
    stw     r6, 0x38(sp)
    stw     r0, 0x34(sp)
    lfd     f0, 0x38(sp)
    stw     r4, -0x8000(r5)
    fsubs   f1, f0, f4
    stw     r6, 0x30(sp)
    stfs    f2, -0x8000(r5)
    lfd     f0, 0x30(sp)
    stfs    f2, -0x8000(r5)
    fsubs   f0, f0, f4
    stfs    f1, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl Hx_SetVFilter
Hx_SetVFilter: # 0x80182724
    mflr    r0
    addi    r4, r13, R13Off_m0x7b1c
    stw     r0, 0x4(sp)
    addi    r3, r13, R13Off_m0x639c
    li      r7, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lbz     r0, R13Off_m0x7b1c(r13)
    lfs     f0, -0x4500(r2)
    stb     r0, R13Off_m0x639c(r13)
    fmuls   f0, f0, f1
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    fctiwz  f0, f0
    lbz     r0, 0x2(r4)
    stfd    f0, 0x18(sp)
    stb     r0, 0x2(r3)
    lwz     r5, 0x1c(sp)
    lbz     r0, 0x3(r4)
    clrlwi  r6, r5, 24
    stb     r0, 0x3(r3)
    cmplwi  r6, 0x0
    lbz     r0, 0x4(r4)
    stb     r0, 0x4(r3)
    lbz     r0, 0x5(r4)
    stb     r0, 0x5(r3)
    lbz     r0, 0x6(r4)
    stb     r0, 0x6(r3)
    ble-    branch_0x801829f0
    cmplwi  r6, 0x8
    addi    r4, r6, -0x8
    ble-    branch_0x80182990
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    lis     r3, unk_aaaaaaab@ha
    mtctr   r0
    cmplwi  r4, 0x0
    addi    r0, r3, unk_aaaaaaab@l
    ble-    branch_0x80182990
branch_0x801827c0:
    mulhwu  r3, r0, r7
    srwi    r3, r3, 1
    mulli   r3, r3, 0x3
    clrlwi  r4, r7, 30
    addi    r5, r13, R13Off_m0x7b14
    lbzx    r10, r5, r4
    addi    r4, r13, R13Off_m0x639c
    subf    r9, r3, r7
    addi    r31, r7, 0x1
    lbzx    r3, r4, r10
    mulhwu  r8, r0, r31
    addi    r3, r3, -0x1
    srwi    r8, r8, 1
    stbx    r3, r4, r10
    addi    r3, r13, R13Off_m0x7b10
    lbzx    r11, r3, r9
    mulli   r9, r8, 0x3
    lbzx    r8, r4, r11
    clrlwi  r10, r31, 30
    addi    r8, r8, 0x1
    addi    r12, r7, 0x2
    stbx    r8, r4, r11
    mulhwu  r8, r0, r12
    lbzx    r11, r5, r10
    lbzx    r10, r4, r11
    addi    r10, r10, -0x1
    srwi    r8, r8, 1
    stbx    r10, r4, r11
    subf    r9, r9, r31
    lbzx    r11, r3, r9
    mulli   r9, r8, 0x3
    lbzx    r8, r4, r11
    clrlwi  r10, r12, 30
    addi    r8, r8, 0x1
    addi    r31, r7, 0x3
    stbx    r8, r4, r11
    mulhwu  r8, r0, r31
    lbzx    r11, r5, r10
    lbzx    r10, r4, r11
    addi    r10, r10, -0x1
    srwi    r8, r8, 1
    stbx    r10, r4, r11
    subf    r9, r9, r12
    lbzx    r12, r3, r9
    mulli   r9, r8, 0x3
    lbzx    r8, r4, r12
    clrlwi  r11, r31, 30
    addi    r8, r8, 0x1
    addi    r10, r7, 0x4
    stbx    r8, r4, r12
    mulhwu  r8, r0, r10
    lbzx    r12, r5, r11
    lbzx    r11, r4, r12
    addi    r11, r11, -0x1
    srwi    r8, r8, 1
    stbx    r11, r4, r12
    subf    r9, r9, r31
    lbzx    r12, r3, r9
    mulli   r8, r8, 0x3
    lbzx    r11, r4, r12
    clrlwi  r9, r10, 30
    addi    r11, r11, 0x1
    stbx    r11, r4, r12
    subf    r8, r8, r10
    lbzx    r10, r5, r9
    lbzx    r9, r4, r10
    addi    r9, r9, -0x1
    stbx    r9, r4, r10
    lbzx    r9, r3, r8
    lbzx    r8, r4, r9
    addi    r8, r8, 0x1
    stbx    r8, r4, r9
    addi    r11, r7, 0x5
    mulhwu  r8, r0, r11
    clrlwi  r9, r11, 30
    lbzx    r10, r5, r9
    srwi    r8, r8, 1
    mulli   r8, r8, 0x3
    lbzx    r9, r4, r10
    addi    r9, r9, -0x1
    subf    r8, r8, r11
    stbx    r9, r4, r10
    addi    r31, r7, 0x6
    lbzx    r10, r3, r8
    mulhwu  r8, r0, r31
    lbzx    r9, r4, r10
    addi    r9, r9, 0x1
    stbx    r9, r4, r10
    clrlwi  r9, r31, 30
    srwi    r8, r8, 1
    lbzx    r12, r5, r9
    mulli   r8, r8, 0x3
    lbzx    r10, r4, r12
    subf    r9, r8, r31
    addi    r8, r10, -0x1
    stbx    r8, r4, r12
    addi    r11, r7, 0x7
    mulhwu  r8, r0, r11
    lbzx    r12, r3, r9
    lbzx    r10, r4, r12
    addi    r10, r10, 0x1
    srwi    r8, r8, 1
    stbx    r10, r4, r12
    clrlwi  r9, r11, 30
    lbzx    r10, r5, r9
    mulli   r8, r8, 0x3
    lbzx    r9, r4, r10
    subf    r5, r8, r11
    addi    r8, r9, -0x1
    stbx    r8, r4, r10
    addi    r7, r7, 0x8
    lbzx    r5, r3, r5
    lbzx    r3, r4, r5
    addi    r3, r3, 0x1
    stbx    r3, r4, r5
    bdnz+      branch_0x801827c0
branch_0x80182990:
    subf    r0, r7, r6
    lis     r3, unk_aaaaaaab@ha
    mtctr   r0
    cmplw   r7, r6
    addi    r6, r3, unk_aaaaaaab@l
    addi    r9, r13, R13Off_m0x7b14
    addi    r8, r13, R13Off_m0x639c
    addi    r5, r13, R13Off_m0x7b10
    bge-    branch_0x801829f0
branch_0x801829b4:
    mulhwu  r0, r6, r7
    clrlwi  r3, r7, 30
    lbzx    r4, r9, r3
    srwi    r0, r0, 1
    mulli   r0, r0, 0x3
    lbzx    r3, r8, r4
    addi    r3, r3, -0x1
    subf    r0, r0, r7
    stbx    r3, r8, r4
    addi    r7, r7, 0x1
    lbzx    r4, r5, r0
    lbzx    r3, r8, r4
    addi    r0, r3, 0x1
    stbx    r0, r8, r4
    bdnz+      branch_0x801829b4
branch_0x801829f0:
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    addi    r6, r13, R13Off_m0x639c
    bl      GXSetCopyFilter
    b       branch_0x80182a0c

branch_0x80182a08:
    b       branch_0x80182990

branch_0x80182a0c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl Hx_GetFrBuffer
Hx_GetFrBuffer: # 0x80182a20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r7, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    clrlwi  r3, r4, 16
    lwz     r0, R2Off_m0x4630(r2)
    clrlwi  r4, r5, 16
    clrlwi  r5, r6, 16
    stw     r0, 0x20(sp)
    clrlwi  r6, r7, 16
    bl      GXSetTexCopySrc
    clrlwi  r3, r30, 16
    clrlwi  r4, r31, 16
    li      r5, 0x4
    li      r6, 0x0
    bl      GXSetTexCopyDst
    clrlwi  r3, r30, 16
    clrlwi  r4, r31, 16
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0x0
    bl      GXGetTexBufferSize
    lwz     r0, 0x20(sp)
    lis     r4, unk_00ffffff@ha
    addi    r3, sp, 0x1c
    stw     r0, 0x1c(sp)
    addi    r4, r4, unk_00ffffff@l
    bl      GXSetCopyClear
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      GXCopyTex
    bl      GXPixModeSync
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl Hgx_ReadTexture
Hgx_ReadTexture: # 0x80182ad0
    mflr    r0
    lis     r5, hx@h
    stw     r0, 0x4(sp)
    addi    r5, r5, hx@l
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x24(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x80182b00
    b       branch_0x80182b40

branch_0x80182b00:
    addi    r4, sp, 0x10
    bl      DVDOpen
    cmpwi   r3, 0x0
    beq-    branch_0x80182b40
    lwz     r5, 0x44(sp)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x10
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    addi    r31, r3, 0x0
    addi    r3, sp, 0x10
    bl      DVDClose
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      DCStoreRange
branch_0x80182b40:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl Hgx_init_tobj_resource
Hgx_init_tobj_resource: # 0x80182b58
    mflr    r0
    li      r10, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r5, 0x1c(r4)
    lbz     r7, 0x0(r4)
    lbz     r8, 0x6(r4)
    add     r5, r4, r5
    lbz     r9, 0x7(r4)
    lbz     r31, 0x14(r4)
    lbz     r30, 0x15(r4)
    lhz     r0, 0x2(r4)
    sth     r0, -0x63a0(r13)
    lhz     r0, 0x4(r4)
    mr      r4, r5
    lhz     r5, -0x63a0(r13)
    sth     r0, -0x639e(r13)
    lhz     r6, -0x639e(r13)
    bl      GXInitTexObj
    lfs     f1, -0x4620(r2)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    fmr     f2, f1
    mr      r5, r30
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl Hx_GxInit
Hx_GxInit: # 0x80182bf8
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    beq-    branch_0x80182c58
    bge-    branch_0x80182d08
    cmpwi   r3, 0x0
    bge-    branch_0x80182c24
    b       branch_0x80182d08

branch_0x80182c24:
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    b       branch_0x80182d08

branch_0x80182c58:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
branch_0x80182d08:
    cmpwi   r31, 0x1
    beq-    branch_0x80182d20
    bge-    branch_0x80182d4c
    cmpwi   r31, 0x0
    bge-    branch_0x80182d38
    b       branch_0x80182d4c

branch_0x80182d20:
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x0
    bl      GXSetBlendMode
    b       branch_0x80182d4c

branch_0x80182d38:
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x0
    bl      GXSetBlendMode
branch_0x80182d4c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl Hx_CameraInit
Hx_CameraInit: # 0x80182d60
    mflr    r0
    lis     r3, hx@h
    stw     r0, 0x4(sp)
    addi    r4, r3, hx@l
    lis     r5, camLoc_96@h
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r5, camLoc_96@l
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lis     r4, 0x4330
    srwi    r3, r3, 1
    lfd     f1, -0x45f0(r2)
    stw     r3, 0x84(sp)
    srwi    r0, r0, 1
    lfs     f5, -0x4620(r2)
    stw     r4, 0x80(sp)
    addi    r3, sp, 0x38
    lfs     f6, -0x45dc(r2)
    stw     r0, 0x7c(sp)
    lfd     f0, 0x80(sp)
    stw     r4, 0x78(sp)
    fsubs   f4, f0, f1
    lfd     f0, 0x78(sp)
    fsubs   f1, f0, f1
    stfs    f4, 0x0(r31)
    fneg    f3, f4
    stfs    f1, 0x4(r31)
    fneg    f2, f1
    stfs    f4, 0xc(r31)
    stfs    f1, 0x10(r31)
    bl      C_MTXOrtho
    addi    r3, sp, 0x38
    li      r4, 0x1
    bl      GXSetProjection
    lfs     f1, -0x4620(r2)
    lfs     f3, -0x44fc(r2)
    fmr     f2, f1
    lfs     f4, -0x4548(r2)
    fmr     f5, f1
    lfs     f6, -0x460c(r2)
    bl      GXSetViewport
    addi    r4, r31, 0x0
    addi    r3, sp, 0x8
    addi    r5, r31, 0x18
    addi    r6, r31, 0xc
    bl      C_MTXLookAt
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetCoPlanar
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    bl      GXSetNumIndStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x6
    li      r4, 0x0
    bl      GXSetLineWidth
    addi    r3, sp, 0x8
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x1
    bl      GXSetNumChans
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr

