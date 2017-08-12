
.globl GXDrawSphere
GXDrawSphere: # 0x80362268
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
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
    stmw    r21, 0x3c(sp)
    mr      r22, r3
    clrlwi  r3, r3, 24
    stw     r3, 0x34(sp)
    lis     r3, 0x4330
    mr      r21, r4
    stw     r0, 0x2c(sp)
    lis     r4, vcd@h
    addi    r26, r4, vcd@l
    stw     r3, 0x30(sp)
    addi    r4, sp, 0x10
    stw     r3, 0x28(sp)
    li      r3, 0xd
    lfd     f2, 0x30(sp)
    lfd     f0, 0x28(sp)
    lfd     f3, 0xbf8(r2)
    lfs     f4, 0xbe8(r2)
    fsubs   f2, f2, f3
    lfs     f1, 0xc00(r2)
    fsubs   f0, f0, f3
    fdivs   f25, f4, f2
    fdivs   f24, f1, f0
    bl      GXGetVtxDesc
    mr      r3, r26
    bl      GXGetVtxDescv
    li      r3, 0x3
    addi    r4, r26, 0xd8
    bl      GXGetVtxAttrFmtv
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xa
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x3
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x3
    li      r4, 0xa
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    lwz     r0, 0x10(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x80362398
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x3
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
branch_0x80362398:
    clrlwi  r23, r21, 24
    lfd     f26, 0xbf0(r2)
    addi    r0, r23, 0x1
    lfs     f28, 0xbe4(r2)
    lfd     f30, 0xbf8(r2)
    slwi    r25, r0, 1
    clrlwi  r24, r22, 24
    li      r22, 0x0
    lis     r29, 0x4330
    lis     r30, 0xcc01
    b       branch_0x80362580

branch_0x803623c4:
    xoris   r27, r22, 0x8000
    stw     r27, 0x2c(sp)
    stw     r29, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f26
    fmuls   f20, f0, f25
    fmr     f1, f20
    fadds   f27, f20, f25
    bl      sinf
    fmuls   f23, f28, f1
    fmr     f1, f27
    bl      sinf
    fmuls   f22, f28, f1
    fmr     f1, f20
    bl      cosf
    fmuls   f21, f28, f1
    fmr     f1, f27
    bl      cosf
    fmuls   f20, f28, f1
    clrlwi  r5, r25, 16
    li      r3, 0x98
    li      r4, 0x3
    bl      GXBegin
    fdivs   f29, f20, f28
    addi    r0, r22, 0x1
    xoris   r31, r0, 0x8000
    li      r21, 0x0
    fdivs   f31, f21, f28
    b       branch_0x80362574

branch_0x80362438:
    xoris   r28, r21, 0x8000
    stw     r28, 0x2c(sp)
    stw     r29, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f26
    fmuls   f19, f0, f24
    fmr     f1, f19
    bl      cosf
    fmr     f27, f1
    fmr     f1, f19
    bl      sinf
    fmuls   f0, f27, f22
    lwz     r0, 0x10(sp)
    fmuls   f3, f1, f22
    cmpwi   r0, 0x0
    fdivs   f2, f0, f28
    stfs    f0, -0x8000(r30)
    stfs    f3, -0x8000(r30)
    stfs    f20, -0x8000(r30)
    fdivs   f0, f3, f28
    stfs    f2, -0x8000(r30)
    stfs    f0, -0x8000(r30)
    stfs    f29, -0x8000(r30)
    beq-    branch_0x803624e8
    stw     r28, 0x2c(sp)
    stw     r23, 0x34(sp)
    stw     r29, 0x28(sp)
    stw     r29, 0x30(sp)
    lfd     f2, 0x28(sp)
    stw     r31, 0x24(sp)
    lfd     f0, 0x30(sp)
    fsubs   f2, f2, f26
    stw     r24, 0x1c(sp)
    fsubs   f0, f0, f30
    stw     r29, 0x20(sp)
    stw     r29, 0x18(sp)
    fdivs   f3, f2, f0
    lfd     f2, 0x20(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f2, f26
    stfs    f3, -0x8000(r30)
    fsubs   f0, f0, f30
    fdivs   f0, f2, f0
    stfs    f0, -0x8000(r30)
branch_0x803624e8:
    fmuls   f0, f27, f23
    lwz     r0, 0x10(sp)
    fmuls   f2, f1, f23
    cmpwi   r0, 0x0
    fdivs   f1, f0, f28
    stfs    f0, -0x8000(r30)
    stfs    f2, -0x8000(r30)
    stfs    f21, -0x8000(r30)
    fdivs   f0, f2, f28
    stfs    f1, -0x8000(r30)
    stfs    f0, -0x8000(r30)
    stfs    f31, -0x8000(r30)
    beq-    branch_0x80362570
    xoris   r0, r21, 0x8000
    stw     r23, 0x24(sp)
    stw     r0, 0x1c(sp)
    stw     r29, 0x18(sp)
    stw     r29, 0x20(sp)
    lfd     f1, 0x18(sp)
    stw     r27, 0x2c(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f1, f26
    stw     r24, 0x34(sp)
    fsubs   f0, f0, f30
    stw     r29, 0x28(sp)
    stw     r29, 0x30(sp)
    fdivs   f2, f1, f0
    lfd     f1, 0x28(sp)
    lfd     f0, 0x30(sp)
    fsubs   f1, f1, f26
    stfs    f2, -0x8000(r30)
    fsubs   f0, f0, f30
    fdivs   f0, f1, f0
    stfs    f0, -0x8000(r30)
branch_0x80362570:
    addi    r21, r21, 0x1
branch_0x80362574:
    cmpw    r21, r23
    ble+    branch_0x80362438
    addi    r22, r22, 0x1
branch_0x80362580:
    cmpw    r22, r24
    blt+    branch_0x803623c4
    mr      r3, r26
    bl      GXSetVtxDescv
    li      r3, 0x3
    addi    r4, r26, 0xd8
    bl      GXSetVtxAttrFmtv
    lmw     r21, 0x3c(sp)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
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
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl GXDrawCubeFace
GXDrawCubeFace: # 0x803625e4
    stwu    sp, -0x58(sp)
    fadds   f9, f2, f5
    fadds   f0, f1, f4
    lis     r5, 0xcc01
    stfd    f31, 0x50(sp)
    fadds   f10, f3, f6
    stfd    f30, 0x48(sp)
    lfs     f11, 0x60(sp)
    fadds   f30, f7, f0
    stfd    f29, 0x40(sp)
    fadds   f13, f8, f9
    cmpwi   r3, 0x0
    stfd    f28, 0x38(sp)
    fadds   f12, f11, f10
    stfd    f27, 0x30(sp)
    lfs     f31, 0xc04(r2)
    fmuls   f30, f31, f30
    fmuls   f13, f31, f13
    fmuls   f12, f31, f12
    stfs    f30, -0x8000(r5)
    stfs    f13, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    beq-    branch_0x80362664
    stfs    f4, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f6, -0x8000(r5)
    stfs    f7, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f11, -0x8000(r5)
branch_0x80362664:
    cmpwi   r4, 0x0
    beq-    branch_0x8036267c
    li      r0, 0x1
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    stb     r0, -0x8000(r5)
branch_0x8036267c:
    fsubs   f29, f1, f4
    lfs     f31, 0xc04(r2)
    fsubs   f28, f2, f5
    lis     r5, 0xcc01
    fsubs   f27, f3, f6
    fadds   f30, f7, f29
    cmpwi   r3, 0x0
    fadds   f13, f8, f28
    fadds   f12, f11, f27
    fmuls   f30, f31, f30
    fmuls   f13, f31, f13
    fmuls   f12, f31, f12
    stfs    f30, -0x8000(r5)
    stfs    f13, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    beq-    branch_0x803626e0
    stfs    f4, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f6, -0x8000(r5)
    stfs    f7, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f11, -0x8000(r5)
branch_0x803626e0:
    cmpwi   r4, 0x0
    beq-    branch_0x803626fc
    li      r0, 0x0
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x1
    stb     r0, -0x8000(r5)
branch_0x803626fc:
    fsubs   f31, f29, f7
    lfs     f30, 0xc04(r2)
    fsubs   f13, f28, f8
    lis     r5, 0xcc01
    fsubs   f12, f27, f11
    fmuls   f31, f30, f31
    cmpwi   r3, 0x0
    fmuls   f13, f30, f13
    fmuls   f12, f30, f12
    stfs    f31, -0x8000(r5)
    stfs    f13, -0x8000(r5)
    stfs    f12, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    beq-    branch_0x80362754
    stfs    f4, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f6, -0x8000(r5)
    stfs    f7, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f11, -0x8000(r5)
branch_0x80362754:
    cmpwi   r4, 0x0
    beq-    branch_0x8036276c
    li      r0, 0x0
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    stb     r0, -0x8000(r5)
branch_0x8036276c:
    fsubs   f12, f0, f7
    lfs     f13, 0xc04(r2)
    fsubs   f9, f9, f8
    lis     r5, 0xcc01
    fsubs   f0, f10, f11
    fmuls   f10, f13, f12
    cmpwi   r3, 0x0
    fmuls   f9, f13, f9
    fmuls   f0, f13, f0
    stfs    f10, -0x8000(r5)
    stfs    f9, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    stfs    f3, -0x8000(r5)
    beq-    branch_0x803627c4
    stfs    f4, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f6, -0x8000(r5)
    stfs    f7, -0x8000(r5)
    stfs    f8, -0x8000(r5)
    stfs    f11, -0x8000(r5)
branch_0x803627c4:
    cmpwi   r4, 0x0
    beq-    branch_0x803627e0
    li      r0, 0x1
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    li      r0, 0x0
    stb     r0, -0x8000(r3)
branch_0x803627e0:
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    lfd     f29, 0x40(sp)
    lfd     f28, 0x38(sp)
    lfd     f27, 0x30(sp)
    addi    sp, sp, 0x58
    blr


.globl GXDrawCube
GXDrawCube: # 0x803627fc
    mflr    r0
    lis     r3, vcd@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, vcd@l
    addi    r4, sp, 0x14
    li      r3, 0x19
    bl      GXGetVtxDesc
    li      r3, 0xd
    addi    r4, sp, 0x10
    bl      GXGetVtxDesc
    mr      r3, r31
    bl      GXGetVtxDescv
    li      r3, 0x3
    addi    r4, r31, 0xd8
    bl      GXGetVtxAttrFmtv
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xa
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x3
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x3
    li      r4, 0xa
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    lwz     r0, 0x14(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x803628bc
    li      r3, 0x19
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x3
    li      r4, 0x19
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
branch_0x803628bc:
    lwz     r0, 0x10(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x803628ec
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x3
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
branch_0x803628ec:
    li      r3, 0x80
    li      r4, 0x3
    li      r5, 0x18
    bl      GXBegin
    lfs     f2, 0xbe0(r2)
    stfs    f2, 0x8(sp)
    fmr     f3, f2
    fmr     f4, f2
    lfs     f1, 0xbec(r2)
    fmr     f5, f2
    fmr     f7, f2
    fmr     f6, f1
    lfs     f8, 0xbe4(r2)
    lwz     r3, 0x14(sp)
    lwz     r4, 0x10(sp)
    bl      GXDrawCubeFace
    lfs     f0, 0xbec(r2)
    stfs    f0, 0x8(sp)
    lfs     f2, 0xbe0(r2)
    lfs     f1, 0xbe4(r2)
    fmr     f3, f2
    lwz     r3, 0x14(sp)
    fmr     f4, f2
    lwz     r4, 0x10(sp)
    fmr     f5, f1
    fmr     f6, f2
    fmr     f7, f2
    fmr     f8, f2
    bl      GXDrawCubeFace
    lfs     f0, 0xbe4(r2)
    stfs    f0, 0x8(sp)
    lfs     f1, 0xbe0(r2)
    lfs     f2, 0xbec(r2)
    fmr     f3, f1
    lwz     r3, 0x14(sp)
    fmr     f4, f2
    lwz     r4, 0x10(sp)
    fmr     f5, f1
    fmr     f6, f1
    fmr     f7, f1
    fmr     f8, f1
    bl      GXDrawCubeFace
    lfs     f1, 0xbe0(r2)
    stfs    f1, 0x8(sp)
    fmr     f3, f1
    fmr     f4, f1
    lfs     f2, 0xbe4(r2)
    fmr     f5, f1
    fmr     f8, f1
    fmr     f6, f2
    lfs     f7, 0xbec(r2)
    lwz     r3, 0x14(sp)
    lwz     r4, 0x10(sp)
    bl      GXDrawCubeFace
    lfs     f1, 0xbe0(r2)
    stfs    f1, 0x8(sp)
    fmr     f2, f1
    fmr     f4, f1
    lfs     f3, 0xbec(r2)
    fmr     f6, f1
    fmr     f8, f1
    fmr     f5, f3
    lfs     f7, 0xbe4(r2)
    lwz     r3, 0x14(sp)
    lwz     r4, 0x10(sp)
    bl      GXDrawCubeFace
    lfs     f1, 0xbe0(r2)
    stfs    f1, 0x8(sp)
    fmr     f2, f1
    fmr     f5, f1
    lfs     f3, 0xbe4(r2)
    fmr     f6, f1
    fmr     f7, f1
    fmr     f4, f3
    lfs     f8, 0xbec(r2)
    lwz     r3, 0x14(sp)
    lwz     r4, 0x10(sp)
    bl      GXDrawCubeFace
    mr      r3, r31
    bl      GXSetVtxDescv
    li      r3, 0x3
    addi    r4, r31, 0xd8
    bl      GXSetVtxAttrFmtv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

