
.globl __dt__19TMapObjGrassManagerFv
__dt__19TMapObjGrassManagerFv: # 0x801e8f84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e8fdc
    lis     r3, 0x803d
    addi    r0, r3, 0x3d08
    stw     r0, 0x0(r30)
    beq-    branch_0x801e8fcc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801e8fcc:
    extsh.  r0, r31
    ble-    branch_0x801e8fdc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e8fdc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__19TMapObjGrassManagerFPCc
__ct__19TMapObjGrassManagerFPCc: # 0x801e8ff8
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    lis     r5, 0x8040
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r5, 0x5d58
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    addi    r3, r4, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    li      r7, 0x0
    lis     r3, 0x803d
    sth     r7, 0xc(r30)
    addi    r0, r3, 0x3d08
    li      r6, 0x28
    stw     r0, 0x0(r30)
    li      r5, 0x96
    subi    r4, r13, 0x6250
    stw     r7, 0x10(r30)
    li      r0, 0xff
    addi    r3, r30, 0x0
    stw     r7, 0x14(r30)
    lfs     f0, -0x22e4(rtoc)
    stfs    f0, 0x18(r30)
    stw     r7, 0x1c(r30)
    stw     r7, 0x20(r30)
    stw     r7, 0x24(r30)
    stw     r30, -0x6244(r13)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    stb     r6, -0x6250(r13)
    stb     r5, 0x1(r4)
    stb     r6, 0x2(r4)
    stb     r0, 0x3(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__19TMapObjGrassManagerFR20JSUMemoryInputStream
load__19TMapObjGrassManagerFR20JSUMemoryInputStream: # 0x801e90bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r3, 0x7d0
    bl      __nwa__FUl
    stw     r3, 0x14(r31)
    li      r3, 0x28
    bl      __nwa__FUl
    stw     r3, 0x20(r31)
    li      r3, 0x14
    bl      __nwa__FUl
    stw     r3, 0x24(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__19TMapObjGrassManagerFUlPQ26JDrama9TGraphics
perform__19TMapObjGrassManagerFUlPQ26JDrama9TGraphics: # 0x801e910c
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stmw    r27, 0x64(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    beq-    branch_0x801e9278
    lfs     f31, -0x22e4(rtoc)
    li      r27, 0x0
    li      r29, 0x0
    li      r28, 0x0
branch_0x801e9140:
    lfs     f0, 0x18(r30)
    fadds   f1, f0, f31
    bl      sinf
    lfs     f0, -0x787c(r13)
    addi    r27, r27, 0x1
    lwz     r3, 0x20(r30)
    cmpwi   r27, 0xa
    fmuls   f0, f0, f1
    stfsx   f0, r3, r28
    lwz     r4, 0x20(r30)
    lwz     r3, 0x24(r30)
    lfsx    f0, r4, r28
    addi    r28, r28, 0x4
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    sthx    r0, r3, r29
    addi    r29, r29, 0x2
    lfs     f0, -0x786c(r13)
    fadds   f31, f31, f0
    blt+    branch_0x801e9140
    lfs     f1, 0x18(r30)
    lfs     f0, -0x7878(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, -0x22e0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e91bc
    lfs     f0, -0x22e4(rtoc)
    stfs    f0, 0x18(r30)
branch_0x801e91bc:
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x801e926c

branch_0x801e91c8:
    lwz     r3, -0x6048(r13)
    lwz     r4, 0x14(r30)
    lbz     r0, 0x7c(r3)
    lwzx    r28, r4, r29
    cmplwi  r0, 0x2
    bne-    branch_0x801e91ec
    li      r0, 0x0
    stw     r0, 0x78(r28)
    b       branch_0x801e9264

branch_0x801e91ec:
    lwz     r3, -0x7118(r13)
    lfsu    f2, 0x124(r3)
    lfs     f3, 0x10(r28)
    lfs     f1, 0x14(r28)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r3)
    lfs     f2, 0x18(r28)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r3)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7874(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e9244
    li      r0, 0x0
    stw     r0, 0x78(r28)
    b       branch_0x801e9264

branch_0x801e9244:
    lfs     f0, -0x7870(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e925c
    li      r0, 0x1
    stw     r0, 0x78(r28)
    b       branch_0x801e9264

branch_0x801e925c:
    li      r0, 0x1
    stw     r0, 0x78(r28)
branch_0x801e9264:
    addi    r27, r27, 0x1
    addi    r29, r29, 0x4
branch_0x801e926c:
    lwz     r0, 0x10(r30)
    cmpw    r27, r0
    blt+    branch_0x801e91c8
branch_0x801e9278:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x801e932c
    mr      r3, r30
    bl      initDrawNear__19TMapObjGrassManagerCFv
    li      r28, 0x0
    li      r31, 0x0
    b       branch_0x801e92a8

branch_0x801e9294:
    lwz     r3, 0x14(r30)
    lwzx    r3, r3, r31
    bl      drawNear__17TMapObjGrassGroupCFv
    addi    r28, r28, 0x1
    addi    r31, r31, 0x4
branch_0x801e92a8:
    lwz     r0, 0x10(r30)
    cmpw    r28, r0
    blt+    branch_0x801e9294
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x2
    bl      GXSetVtxDesc
    li      r28, 0x0
    li      r31, 0x0
    b       branch_0x801e9320

branch_0x801e930c:
    lwz     r3, 0x14(r30)
    lwzx    r3, r3, r31
    bl      drawFar__17TMapObjGrassGroupCFv
    addi    r28, r28, 0x1
    addi    r31, r31, 0x4
branch_0x801e9320:
    lwz     r0, 0x10(r30)
    cmpw    r28, r0
    blt+    branch_0x801e930c
branch_0x801e932c:
    lmw     r27, 0x64(sp)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl initDrawNear__19TMapObjGrassManagerCFv
initDrawNear__19TMapObjGrassManagerCFv: # 0x801e9344
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    addi    r3, r3, 0x45dc
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    subi    r31, r4, 0x5d58
    addi    r4, sp, 0x44
    bl      PSMTXInverse
    lfs     f1, 0x44(sp)
    subi    r8, r13, 0x624c
    lfs     f0, -0x7880(r13)
    li      r3, 0x0
    lfs     f2, 0x54(sp)
    fmuls   f1, f1, f0
    lfs     f3, 0x64(sp)
    fmuls   f2, f2, f0
    li      r4, 0x9
    fmuls   f3, f3, f0
    fctiwz  f0, f1
    stfs    f1, 0x0(r31)
    fctiwz  f1, f2
    li      r5, 0x1
    stfs    f2, 0x4(r31)
    stfd    f0, 0x88(sp)
    fctiwz  f0, f3
    li      r6, 0x4
    stfd    f1, 0x80(sp)
    li      r7, 0x0
    lwz     r9, 0x8c(sp)
    stfs    f3, 0x8(r31)
    lwz     r0, 0x84(sp)
    sth     r9, -0x624c(r13)
    stfd    f0, 0x78(sp)
    sth     r0, 0x2(r8)
    lwz     r0, 0x7c(sp)
    sth     r0, 0x4(r8)
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x2
    bl      GXSetVtxDesc
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0xb
    subi    r4, r13, 0x7860
    li      r5, 0x4
    bl      GXSetArray
    li      r3, 0x1
    bl      GXSetNumChans
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
    lwz     r0, -0x22e8(rtoc)
    addi    r4, sp, 0x34
    li      r3, 0x4
    stw     r0, 0x30(sp)
    lwz     r0, 0x30(sp)
    stw     r0, 0x34(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x5
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
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl __ct__17TMapObjGrassGroupFv
__ct__17TMapObjGrassGroupFv: # 0x801e9590
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x2ff8
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x3d2c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x68(r31)
    stw     r0, 0x6c(r31)
    stw     r0, 0x70(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__17TMapObjGrassGroupFR20JSUMemoryInputStream
load__17TMapObjGrassGroupFR20JSUMemoryInputStream: # 0x801e95f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stfd    f28, 0x98(sp)
    stfd    f27, 0x90(sp)
    stfd    f26, 0x88(sp)
    stfd    f25, 0x80(sp)
    stmw    r25, 0x64(sp)
    addi    r28, r3, 0x0
    addi    r25, r4, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r25, 0x0
    addi    r4, r28, 0x68
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r25, 0x68(r28)
    mulli   r3, r25, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8002
    addi    r4, r4, 0x10dc
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x6c(r28)
    lwz     r25, 0x68(r28)
    mulli   r3, r25, 0x6
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x801f
    subi    r4, r4, 0x6784
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x6
    bl      __construct_new_array
    stw     r3, 0x70(r28)
    lwz     r0, 0x68(r28)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x74(r28)
    li      r29, 0x0
    li      r27, 0x0
    lfs     f28, -0x22dc(rtoc)
    li      r26, 0x0
    lfs     f0, 0x24(r28)
    li      r25, 0x0
    lfs     f2, 0x2c(r28)
    lfs     f1, -0x22d8(rtoc)
    fmuls   f27, f28, f0
    lfs     f0, 0x28(r28)
    fmuls   f26, f28, f2
    lfd     f29, -0x22c8(rtoc)
    fmuls   f25, f1, f0
    lfs     f30, -0x22d4(rtoc)
    lis     r30, 0x4330
    lfs     f31, -0x22d0(rtoc)
    b       branch_0x801e9814

branch_0x801e96e8:
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x10(r28)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x6c(r28)
    stw     r30, 0x58(sp)
    lfd     f1, 0x58(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fmuls   f1, f27, f1
    fmadds  f0, f31, f1, f0
    fsubs   f0, f0, f27
    stfsx   f0, r3, r25
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x18(r28)
    stw     r0, 0x54(sp)
    addi    r31, r25, 0x8
    lwz     r3, 0x6c(r28)
    stw     r30, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fmuls   f1, f26, f1
    fmadds  f0, f31, f1, f0
    fsubs   f0, f0, f26
    stfsx   f0, r3, r31
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x14(r28)
    stw     r0, 0x4c(sp)
    addi    r6, r25, 0x4
    lwz     r4, 0x6c(r28)
    addi    r3, r26, 0x2
    stw     r30, 0x48(sp)
    addi    r0, r26, 0x4
    lfd     f1, 0x48(sp)
    addi    r29, r29, 0x1
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fmadds  f0, f25, f1, f0
    fadds   f0, f28, f0
    stfsx   f0, r4, r6
    lwz     r5, 0x6c(r28)
    lwz     r4, 0x70(r28)
    lfsx    f0, r5, r25
    addi    r25, r25, 0xc
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r5, 0x44(sp)
    sthx    r5, r4, r26
    addi    r26, r26, 0x6
    lfs     f0, 0x14(r28)
    lwz     r4, 0x70(r28)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r5, 0x3c(sp)
    sthx    r5, r4, r3
    lwz     r4, 0x6c(r28)
    lwz     r3, 0x70(r28)
    lfsx    f0, r4, r31
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r4, 0x34(sp)
    sthx    r4, r3, r0
    lwz     r3, 0x6c(r28)
    lfs     f1, 0x14(r28)
    lfsx    f0, r3, r6
    lwz     r3, 0x74(r28)
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    sthx    r0, r3, r27
    addi    r27, r27, 0x2
branch_0x801e9814:
    lwz     r4, 0x68(r28)
    cmpw    r29, r4
    blt+    branch_0x801e96e8
    lwz     r5, -0x6244(r13)
    lwz     r0, 0x10(r5)
    lwz     r3, 0x14(r5)
    slwi    r0, r0, 2
    stwx    r28, r3, r0
    lwz     r0, 0x1c(r5)
    add     r0, r0, r4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x10(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r5)
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    lfd     f29, 0xa0(sp)
    lfd     f28, 0x98(sp)
    lfd     f27, 0x90(sp)
    lfd     f26, 0x88(sp)
    lfd     f25, 0x80(sp)
    lmw     r25, 0x64(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl __ct__Q29JGeometry8TVec3_s_Fv
__ct__Q29JGeometry8TVec3_s_Fv: # 0x801e987c
    blr


.globl drawFar__17TMapObjGrassGroupCFv
drawFar__17TMapObjGrassGroupCFv: # 0x801e9880
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r23, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x78(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x801e98a8
    li      r0, 0x1
    b       branch_0x801e98ac

branch_0x801e98a8:
    li      r0, 0x0
branch_0x801e98ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e9994
    lwz     r0, 0x68(r31)
    li      r3, 0x90
    li      r4, 0x0
    mulli   r5, r0, 0x3
    bl      GXBegin
    lwz     r11, -0x6244(r13)
    li      r28, 0x0
    subi    r27, r13, 0x624c
    li      r26, 0x0
    li      r3, 0x0
    li      r4, 0x0
    lis     r9, 0xcc01
    b       branch_0x801e9988

branch_0x801e98e8:
    lwz     r12, 0x70(r31)
    slwi    r0, r28, 1
    lwz     r5, 0x24(r11)
    addi    r28, r28, 0x1
    add     r29, r12, r4
    lha     r25, 0x0(r29)
    li      r8, 0x1
    lhax    r5, r5, r0
    li      r6, 0x0
    lha     r7, 0x0(r27)
    lha     r24, 0x4(r29)
    add     r23, r25, r5
    lha     r10, 0x4(r27)
    subf    r0, r7, r25
    lha     r30, 0x2(r29)
    subf    r29, r10, r24
    sth     r0, -0x8000(r9)
    add     r0, r25, r7
    addi    r5, r4, 0x2
    sth     r30, -0x8000(r9)
    add     r10, r24, r10
    cmpwi   r28, 0xa
    sth     r29, -0x8000(r9)
    stb     r8, -0x8000(r9)
    lwz     r7, 0x74(r31)
    lhax    r7, r7, r3
    sth     r23, -0x8000(r9)
    sth     r7, -0x8000(r9)
    sth     r24, -0x8000(r9)
    stb     r6, -0x8000(r9)
    lhax    r5, r12, r5
    sth     r0, -0x8000(r9)
    sth     r5, -0x8000(r9)
    sth     r10, -0x8000(r9)
    stb     r8, -0x8000(r9)
    bne-    branch_0x801e997c
    li      r28, 0x0
branch_0x801e997c:
    addi    r26, r26, 0x1
    addi    r3, r3, 0x2
    addi    r4, r4, 0x6
branch_0x801e9988:
    lwz     r0, 0x68(r31)
    cmpw    r26, r0
    blt+    branch_0x801e98e8
branch_0x801e9994:
    lmw     r23, 0x14(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl drawNear__17TMapObjGrassGroupCFv
drawNear__17TMapObjGrassGroupCFv: # 0x801e99a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    lwz     r0, 0x78(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801e99d4
    li      r0, 0x1
    b       branch_0x801e99d8

branch_0x801e99d4:
    li      r0, 0x0
branch_0x801e99d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e9ab4
    lwz     r0, 0x68(r31)
    li      r3, 0x90
    li      r4, 0x0
    mulli   r5, r0, 0x3
    bl      GXBegin
    lis     r3, 0x8040
    lwz     r8, -0x6244(r13)
    subi    r10, r3, 0x5d58
    li      r12, 0x0
    li      r30, 0x0
    li      r3, 0x0
    lis     r6, 0xcc01
    b       branch_0x801e9aa8

branch_0x801e9a14:
    lwz     r9, 0x6c(r31)
    slwi    r0, r12, 2
    lwz     r7, 0x20(r8)
    addi    r12, r12, 0x1
    add     r11, r9, r3
    lfs     f5, 0x0(r11)
    li      r5, 0x1
    lfsx    f3, r7, r0
    addi    r4, r3, 0x4
    lfs     f1, 0x0(r10)
    fadds   f7, f5, f3
    lfs     f6, 0x8(r11)
    lfs     f2, 0x8(r10)
    fsubs   f0, f5, f1
    lfs     f3, 0x14(r31)
    stfs    f0, -0x8000(r6)
    fsubs   f4, f6, f2
    fadds   f0, f5, f1
    li      r0, 0x0
    stfs    f3, -0x8000(r6)
    fadds   f2, f6, f2
    stfs    f4, -0x8000(r6)
    cmpwi   r12, 0xa
    stb     r5, -0x8000(r6)
    lfsx    f1, r9, r4
    stfs    f7, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f6, -0x8000(r6)
    stb     r0, -0x8000(r6)
    stfs    f0, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    stfs    f2, -0x8000(r6)
    stb     r5, -0x8000(r6)
    bne-    branch_0x801e9aa0
    li      r12, 0x0
branch_0x801e9aa0:
    addi    r30, r30, 0x1
    addi    r3, r3, 0xc
branch_0x801e9aa8:
    lwz     r0, 0x68(r31)
    cmpw    r30, r0
    blt+    branch_0x801e9a14
branch_0x801e9ab4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__17TMapObjGrassGroupFv
__dt__17TMapObjGrassGroupFv: # 0x801e9acc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e9b34
    lis     r3, 0x803d
    addi    r3, r3, 0x3d2c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e9b24
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801e9b24:
    extsh.  r0, r31
    ble-    branch_0x801e9b34
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e9b34:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjGrass_cpp
__sinit_MapObjGrass_cpp: # 0x801e9b50
    mflr    r0
    li      r3, -0x1
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r4, 0x5d58
    lbz     r0, -0x7204(r13)
    stw     r3, -0x6258(r13)
    extsb.  r0, r0
    stw     r3, -0x6254(r13)
    stw     r3, -0x6250(r13)
    bne-    branch_0x801e9ba8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801e9ba8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9bd8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801e9bd8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9c08
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801e9c08:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9c38
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801e9c38:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9c68
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801e9c68:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9c98
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801e9c98:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9cc8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801e9cc8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9cf8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801e9cf8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9d28
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801e9d28:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9d58
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801e9d58:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9d88
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801e9d88:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9db8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801e9db8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9de8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801e9de8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9e18
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801e9e18:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801e9e48
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801e9e48:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__17TMapObjGrassGroupFv
_32___dt__17TMapObjGrassGroupFv: # 0x801e9e5c
    subi    r3, r3, 0x20
    b       __dt__17TMapObjGrassGroupFv

