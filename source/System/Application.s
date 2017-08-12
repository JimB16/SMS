
.globl mountStageArchive__12TApplicationFv
mountStageArchive__12TApplicationFv: # 0x802a5998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    li      r31, 0x0
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    stw     r28, 0xa8(sp)
    lwz     r6, 0x30(r3)
    lwz     r0, 0x10(r6)
    addi    r5, r6, 0xc
    cmplwi  r0, 0x0
    bne-    branch_0x802a59d4
    li      r0, 0x0
    b       branch_0x802a59e8

branch_0x802a59d4:
    lwz     r4, 0x4(r5)
    lwz     r0, 0x8(r5)
    subf    r0, r4, r0
    srawi   r0, r0, 2
    addze   r0, r0
branch_0x802a59e8:
    lbz     r5, 0xe(r3)
    cmplw   r5, r0
    bge-    branch_0x802a5b20
    lwz     r4, 0x10(r6)
    slwi    r0, r5, 2
    lwzx    r5, r4, r0
    lwz     r4, 0x10(r5)
    cmplwi  r4, 0x0
    bne-    branch_0x802a5a14
    li      r0, 0x0
    b       branch_0x802a5a24

branch_0x802a5a14:
    lwz     r0, 0x14(r5)
    subf    r0, r4, r0
    srawi   r0, r0, 4
    addze   r0, r0
branch_0x802a5a24:
    lbz     r3, 0xf(r3)
    cmplw   r3, r0
    bge-    branch_0x802a5b20
    slwi    r3, r3, 4
    lwz     r4, 0x10(r5)
    addi    r0, r3, 0xc
    lis     r3, unk_803a4030@h
    lwzx    r28, r4, r0
    addi    r3, r3, unk_803a4030@l
    bl      DVDChangeDir
    lwz     r29, R13Off_m0x5f2c(r13)
    addi    r4, r28, 0x0
    addi    r3, sp, 0x54
    li      r30, 0x0
    bl      strcpy
    addi    r3, sp, 0x54
    addi    r4, r2, R2Off_m0x414
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802a5ab4
    addi    r4, r2, R2Off_m0x40c
    bl      strcpy
    addi    r3, sp, 0x54
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x802a5ab4
    addi    r7, r29, 0x0
    addi    r3, sp, 0x54
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r30, r3
branch_0x802a5ab4:
    cmplwi  r30, 0x0
    bne-    branch_0x802a5ae4
    addi    r3, r28, 0x0
    addi    r7, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r30, r3
branch_0x802a5ae4:
    mr.     r28, r30
    beq-    branch_0x802a5b18
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a5b04
    mr      r3, r29
    bl      __ct__13JKRMemArchiveFv
branch_0x802a5b04:
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    mr      r31, r29
branch_0x802a5b18:
    addi    r3, r2, R2Off_m0x404
    bl      DVDChangeDir
branch_0x802a5b20:
    lwz     r0, 0xbc(sp)
    mr      r3, r31
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    lwz     r28, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl drawDVDErr__12TApplicationFv
drawDVDErr__12TApplicationFv: # 0x802a5b44
    mflr    r0
    lis     r4, unk_803a4010@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x318(sp)
    stw     r31, 0x314(sp)
    li      r31, 0x0
    stw     r30, 0x310(sp)
    addi    r30, r4, unk_803a4010@l
    stw     r29, 0x30c(sp)
    addi    r29, r3, 0x0
    bl      DVDGetDriveStatus
    addi    r0, r3, 0x1
    cmplwi  r0, 0xc
    bgt-    branch_0x802a5c5c
    lis     r3, unk_803df3f0@ha
    addi    r3, r3, unk_803df3f0@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x802a5b94:
    addi    r3, sp, 0xf8
    crxor   6, 6, 6
    addi    r5, r30, 0x2c
    li      r4, 0x200
    bl      snprintf
    lis     r3, unk_656d5f31@h
    addi    r31, r3, unk_656d5f31@l
    b       branch_0x802a5c5c

branch_0x802a5bb4:
    addi    r3, sp, 0xf8
    crxor   6, 6, 6
    addi    r5, r30, 0xa8
    li      r4, 0x200
    bl      snprintf
    lis     r3, unk_656d5f32@h
    addi    r31, r3, unk_656d5f32@l
    b       branch_0x802a5c5c

branch_0x802a5bd4:
    bl      DVDCheckDisk
    cmpwi   r3, 0x0
    bne-    branch_0x802a5c5c
    addi    r3, sp, 0xf8
    crxor   6, 6, 6
    addi    r5, r30, 0x114
    li      r4, 0x200
    bl      snprintf
    lis     r3, unk_656d5f33@h
    addi    r31, r3, unk_656d5f33@l
    b       branch_0x802a5c5c

branch_0x802a5c00:
    addi    r3, sp, 0xf8
    crxor   6, 6, 6
    addi    r5, r30, 0x124
    li      r4, 0x200
    bl      snprintf
    lis     r3, unk_656d5f34@h
    addi    r31, r3, unk_656d5f34@l
    b       branch_0x802a5c5c

branch_0x802a5c20:
    addi    r3, sp, 0xf8
    crxor   6, 6, 6
    addi    r5, r30, 0x170
    li      r4, 0x200
    bl      snprintf
    lis     r3, unk_656d5f35@h
    addi    r31, r3, unk_656d5f35@l
    b       branch_0x802a5c5c

branch_0x802a5c40:
    addi    r3, sp, 0xf8
    crxor   6, 6, 6
    addi    r5, r30, 0x1a0
    li      r4, 0x200
    bl      snprintf
    lis     r3, unk_656d5f36@h
    addi    r31, r3, unk_656d5f36@l
branch_0x802a5c5c:
    cmplwi  r31, 0x0
    beq-    branch_0x802a5f30
    bl      ReInitializeGX
    bl      SMS_DrawInit__Fv
    lwz     r4, 0x1c(r29)
    lis     r3, 0x4330
    lfs     f1, -0x400(r2)
    lwz     r4, 0x60(r4)
    lfd     f4, -0x3e0(r2)
    fmr     f2, f1
    addi    r5, r4, 0x3c
    fmr     f5, f1
    lhz     r4, 0x40(r4)
    lhz     r0, 0x6(r5)
    stw     r4, 0x304(sp)
    lfs     f6, -0x3fc(r2)
    stw     r0, 0x2fc(sp)
    stw     r3, 0x300(sp)
    stw     r3, 0x2f8(sp)
    lfd     f3, 0x300(sp)
    lfd     f0, 0x2f8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      GXSetViewport
    lfs     f1, -0x3f8(r2)
    addi    r3, sp, 0xb8
    lfs     f2, -0x3f4(r2)
    lfs     f3, -0x400(r2)
    lfs     f4, -0x3f0(r2)
    lfs     f5, -0x3ec(r2)
    lfs     f6, -0x3fc(r2)
    bl      C_MTXOrtho
    addi    r3, sp, 0xb8
    li      r4, 0x1
    bl      GXSetProjection
    addi    r3, sp, 0xb8
    bl      PSMTXIdentity
    addi    r3, sp, 0xb8
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x2
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
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, R2Off_m0x420(r2)
    addi    r4, sp, 0x48
    li      r3, 0x4
    stw     r0, 0x44(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    bl      GXSetChanAmbColor
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x90
    li      r4, 0x0
    li      r5, 0x6
    bl      GXBegin
    li      r9, 0x0
    lwz     r10, R13Off_m0x6038(r13)
    lis     r8, 0xcc01
    lwz     r4, R13Off_m0x6034(r13)
    sth     r9, -0x8000(r8)
    li      r7, 0xa6
    li      r6, 0xff
    sth     r7, -0x8000(r8)
    li      r5, 0xc8
    li      r3, 0x258
    stb     r6, -0x8000(r8)
    li      r0, 0x13c
    cmplwi  r10, 0x0
    stb     r9, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r5, -0x8000(r8)
    sth     r3, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stb     r6, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r5, -0x8000(r8)
    sth     r3, -0x8000(r8)
    sth     r0, -0x8000(r8)
    stb     r6, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r5, -0x8000(r8)
    sth     r9, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stb     r6, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r5, -0x8000(r8)
    sth     r3, -0x8000(r8)
    sth     r0, -0x8000(r8)
    stb     r6, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r5, -0x8000(r8)
    sth     r9, -0x8000(r8)
    sth     r0, -0x8000(r8)
    stb     r6, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stb     r5, -0x8000(r8)
    beq-    branch_0x802a5ea8
    mr      r4, r10
branch_0x802a5ea8:
    addi    r3, sp, 0x54
    li      r5, 0x0
    bl      __ct__8J2DPrintFP7JUTFonti
    lwz     r5, R2Off_m0x41c(r2)
    addi    r3, sp, 0x54
    lwz     r0, R2Off_m0x418(r2)
    addi    r4, sp, 0xf8
    stw     r5, 0x3c(sp)
    crxor   6, 6, 6
    stw     r0, 0x40(sp)
    lwz     r5, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r5, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r5, 0x98(sp)
    stw     r0, 0x9c(sp)
    bl      getWidth__8J2DPrintFPCce
    lfs     f0, -0x3f0(r2)
    addi    r3, sp, 0x54
    lfs     f2, -0x3e8(r2)
    addi    r6, sp, 0xf8
    fsubs   f0, f0, f1
    crxor   6, 6, 6
    li      r5, 0xe6
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x2f8(sp)
    lwz     r4, 0x2fc(sp)
    bl      print__8J2DPrintFiiPCce
    addi    r3, sp, 0x54
    li      r4, -0x1
    bl      __dt__8J2DPrintFv
branch_0x802a5f30:
    lwz     r0, 0x31c(sp)
    mr      r3, r31
    lwz     r31, 0x314(sp)
    lwz     r30, 0x310(sp)
    mtlr    r0
    lwz     r29, 0x30c(sp)
    addi    sp, sp, 0x318
    blr


.globl gameLoop__12TApplicationFv
gameLoop__12TApplicationFv: # 0x802a5f50
    mflr    r0
    lis     r4, gSetupThread@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x268(sp)
    stfd    f31, 0x260(sp)
    stmw    r19, 0x22c(sp)
    addi    r30, r4, gSetupThread@l
    addi    r31, r3, 0x0
    addi    r23, sp, 0x140
    addi    r24, sp, 0x150
    addi    r25, sp, 0x160
    addi    r26, sp, 0x170
    addi    r27, sp, 0x1b0
    addi    r22, sp, 0xac
    li      r29, 0x1
    lis     r28, 0x4330
    lfd     f31, -0x3e0(r2)
    b       branch_0x802a635c

branch_0x802a5f98:
    lwz     r3, 0x1c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1c(r31)
    lwz     r20, R13Off_m0x5ff8(r13)
    lwz     r3, 0x60(r3)
    cmplwi  r20, 0x0
    lwz     r21, 0x80(r3)
    beq-    branch_0x802a5ff8
    lwz     r0, 0x814(r20)
    addi    r4, r21, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r20, r3
    bl      append__10TTimeArrayFUlUl
    mr      r3, r20
    bl      crTimeAry__8TTimeRecFv
    addi    r4, r21, 0x0
    li      r5, 0x0
    addi    r3, r3, 0x204
    bl      append__10TTimeArrayFUlUl
branch_0x802a5ff8:
    lwz     r3, R13Off_m0x5ff8(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802a600c
    li      r4, 0x0
    bl      snapGXTime__8TTimeRecFUl
branch_0x802a600c:
    bl      read__13TMarioGamePadFv
    li      r19, 0x0
    li      r21, 0x0
branch_0x802a6018:
    addi    r20, r21, 0x20
    add     r20, r31, r20
    lwz     r3, 0x0(r20)
    bl      updateMeaning__13TMarioGamePadFv
    lwz     r3, 0x0(r20)
    addi    r19, r19, 0x1
    cmpwi   r19, 0x4
    lhz     r0, 0xe2(r3)
    addi    r21, r21, 0x4
    ori     r0, r0, 0x40
    sth     r0, 0xe2(r3)
    blt+    branch_0x802a6018
    mr      r3, r31
    bl      drawDVDErr__12TApplicationFv
    mr.     r21, r3
    beq-    branch_0x802a60a0
    lwz     r3, R13Off_m0x60f0(r13)
    bl      reset__9RumbleMgrFv
    addis   r0, r21, 0x9a93
    cmplwi  r0, 0x5f31
    beq-    branch_0x802a62e0
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x802a62e0
    lhz     r0, 0x44(r31)
    li      r29, 0x7
    ori     r0, r0, 0x2
    sth     r0, 0x44(r31)
    b       branch_0x802a62e0

branch_0x802a60a0:
    lbz     r0, 0x8(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x802a60d4
    li      r29, 0x0
    addi    r3, r30, 0x0
    bl      OSIsThreadTerminated
    cmpwi   r3, 0x0
    beq-    branch_0x802a6174
    addi    r3, r30, 0x0
    addi    r4, sp, 0x200
    bl      OSJoinThread
    li      r29, 0x3
    b       branch_0x802a6174

branch_0x802a60d4:
    cmplwi  r0, 0x3
    bne-    branch_0x802a615c
    lwz     r0, R13Off_m0x6030(r13)
    li      r29, 0x0
    clrlwi. r0, r0, 31
    bne-    branch_0x802a6114
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x4
    bne-    branch_0x802a6114
    lwz     r0, R13Off_m0x6030(r13)
    ori     r0, r0, 0x1
    stw     r0, R13Off_m0x6030(r13)
branch_0x802a6114:
    lwz     r0, R13Off_m0x6030(r13)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x802a6148
    mr      r3, r30
    bl      OSIsThreadTerminated
    cmpwi   r3, 0x0
    beq-    branch_0x802a6148
    addi    r3, r30, 0x0
    addi    r4, sp, 0x1fc
    bl      OSJoinThread
    lwz     r0, R13Off_m0x6030(r13)
    ori     r0, r0, 0x2
    stw     r0, R13Off_m0x6030(r13)
branch_0x802a6148:
    lwz     r0, R13Off_m0x6030(r13)
    cmpwi   r0, 0x3
    bne-    branch_0x802a6174
    li      r29, 0x4
    b       branch_0x802a6174

branch_0x802a615c:
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    mr      r29, r3
branch_0x802a6174:
    addi    r3, r23, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r24, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r25, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    mr      r3, r26
    bl      __ct__Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f__Fv
    mr      r3, r27
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    li      r0, -0x1
    stw     r0, 0x1f0(sp)
    li      r0, 0x0
    sth     r0, 0x1f8(sp)
    lfs     f1, -0x400(r2)
    sth     r0, 0xfc(sp)
    fmr     f2, f1
    lfs     f6, -0x3fc(r2)
    lwz     r3, 0x1c(r31)
    fmr     f5, f1
    lwz     r3, 0x60(r3)
    addi    r21, r3, 0x3c
    lhz     r3, 0x40(r3)
    lhz     r0, 0x6(r21)
    stw     r3, 0x224(sp)
    stw     r0, 0x21c(sp)
    stw     r28, 0x220(sp)
    stw     r28, 0x218(sp)
    lfd     f3, 0x220(sp)
    lfd     f0, 0x218(sp)
    fsubs   f3, f3, f31
    fsubs   f4, f0, f31
    bl      GXSetViewport
    lhz     r5, 0x4(r21)
    li      r3, 0x0
    lhz     r6, 0x6(r21)
    li      r4, 0x0
    bl      GXSetScissor
    lhz     r4, 0x6(r21)
    addi    r3, sp, 0xbc
    lhz     r0, 0x4(r21)
    stw     r4, 0x214(sp)
    lfs     f1, -0x400(r2)
    stw     r0, 0x20c(sp)
    fmr     f3, f1
    lfs     f5, -0x3ec(r2)
    stw     r28, 0x210(sp)
    lfs     f6, -0x3fc(r2)
    stw     r28, 0x208(sp)
    lfd     f2, 0x210(sp)
    lfd     f0, 0x208(sp)
    fsubs   f2, f2, f31
    fsubs   f4, f0, f31
    bl      C_MTXOrtho
    addi    r3, sp, 0xbc
    li      r4, 0x1
    bl      GXSetProjection
    lwz     r3, 0x34(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lhz     r7, 0x6(r21)
    addi    r3, sp, 0xac
    lhz     r6, 0x4(r21)
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x34(r31)
    mr      r4, r22
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r0, R13Off_m0x6044(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802a62e0
    lwz     r3, R13Off_m0x6044(r13)
    bl      mainLoop__6MSoundFv
branch_0x802a62e0:
    lwz     r20, R13Off_m0x5ff8(r13)
    cmplwi  r20, 0x0
    beq-    branch_0x802a630c
    bl      OSGetTick
    lwz     r0, 0x814(r20)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r20, r3
    bl      append__10TTimeArrayFUlUl
branch_0x802a630c:
    bl      THPPlayerDrawDone
    lwz     r3, 0x1c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x5ff8(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802a6334
    bl      flip__8TTimeRecFv
branch_0x802a6334:
    lwz     r3, 0x1c(r31)
    lwz     r6, 0x60(r3)
    lwz     r4, 0x78(r6)
    cmplwi  r4, 0x0
    beq-    branch_0x802a635c
    lhz     r5, 0x4(r6)
    lwz     r3, R13Off_m0x5ee8(r13)
    lhz     r6, 0x8(r6)
    bl      changeFrameBuffer__14JUTDirectPrintFPvUsUs
    bl      flushMessage__12JUTAssertionFv
branch_0x802a635c:
    cmplwi  r29, 0x1
    ble+    branch_0x802a5f98
    mr      r3, r29
    lmw     r19, 0x22c(sp)
    lwz     r0, 0x26c(sp)
    lfd     f31, 0x260(sp)
    addi    sp, sp, 0x268
    mtlr    r0
    blr


.globl crTimeAry__8TTimeRecFv
crTimeAry__8TTimeRecFv: # 0x802a6380
    mr      r4, r3
    lwz     r0, 0x814(r3)
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r4, r3
    blr


.globl proc__12TApplicationFv
proc__12TApplicationFv: # 0x802a6398
    mflr    r0
    lis     r4, gpApplication@ha
    stw     r0, 0x4(sp)
    lis     r5, unk_803df424@ha
    stwu    sp, -0xc8(sp)
    stmw    r25, 0xac(sp)
    addi    r31, r3, 0x0
    addi    r26, r4, gpApplication@l
    addi    r28, r5, unk_803df424@l
    lis     r27, unk_00020001@h
    b       branch_0x802a67c8

branch_0x802a63c4:
    cmplwi  r0, 0x9
    li      r30, 0x1
    li      r29, 0x0
    bgt-    branch_0x802a6644
    slwi    r0, r0, 2
    lwzx    r0, r28, r0
    mtctr   r0
    bctr       
branch_0x802a63e4:
    lwz     r3, 0x1c(r31)
    bl      SMSSetupGCLogoRenderingInfo__FPQ26JDrama8TDisplay
    b       branch_0x802a6644

branch_0x802a63f0:
    lwz     r3, 0x1c(r31)
    bl      SMSSetupGCLogoRenderingInfo__FPQ26JDrama8TDisplay
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802a6410
    mr      r3, r25
    bl      __ct__10TGCLogoDirFv
branch_0x802a6410:
    stw     r25, 0x4(r31)
    mr      r3, r25
    lwz     r4, 0x1c(r31)
    lwz     r5, 0x20(r31)
    bl      setup__10TGCLogoDirFPQ26JDrama8TDisplayP13TMarioGamePad
    b       branch_0x802a6644

branch_0x802a6428:
    lwz     r3, 0x1c(r31)
    bl      SMSSetupTitleRenderingInfo__FPQ26JDrama8TDisplay
    bl      SMSGetTitleRenderHeight__Fv
    clrlwi  r25, r3, 16
    bl      SMSGetTitleRenderWidth__Fv
    clrlwi  r4, r3, 16
    lwz     r3, 0x34(r31)
    mr      r5, r25
    bl      setDisplaySize__9TSMSFaderFii
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802a6464
    mr      r3, r25
    bl      __ct__13TMenuDirectorFv
branch_0x802a6464:
    stw     r25, 0x4(r31)
    mr      r3, r25
    lwz     r4, 0x1c(r31)
    lwz     r5, 0x20(r31)
    bl      setup__13TMenuDirectorFPQ26JDrama8TDisplayP13TMarioGamePad
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r27, unk_00020001@l
    li      r5, 0x3
    bl      setFlag__12TFlagManagerFUll
    li      r0, 0x1
    stb     r0, 0xe(r31)
    li      r0, 0x0
    stb     r0, 0xf(r31)
    sth     r0, 0x10(r31)
    b       branch_0x802a6644

branch_0x802a64a0:
    mr      r3, r31
    bl      checkAdditionalMovie__12TApplicationFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802a6504
    lwz     r3, 0x1c(r31)
    bl      SMSSetupMovieRenderingInfo__FPQ26JDrama8TDisplay
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r25, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r4, r3, 16
    lwz     r3, 0x34(r31)
    mr      r5, r25
    bl      setDisplaySize__9TSMSFaderFii
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802a64ec
    mr      r3, r25
    bl      __ct__14TMovieDirectorFv
branch_0x802a64ec:
    stw     r25, 0x4(r31)
    mr      r3, r25
    lwz     r4, 0x1c(r31)
    lwz     r5, 0x20(r31)
    bl      setup__14TMovieDirectorFPQ26JDrama8TDisplayP13TMarioGamePad
    b       branch_0x802a6644

branch_0x802a6504:
    lhz     r0, 0x44(r31)
    lwz     r3, 0x1c(r31)
    clrlwi  r0, r0, 31
    neg     r4, r0
    subic   r0, r4, 0x1
    subfe   r4, r0, r4
    bl      SMSSetupGameRenderingInfo__FPQ26JDrama8TDisplayb
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r25, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r4, r3, 16
    lwz     r3, 0x34(r31)
    mr      r5, r25
    bl      setDisplaySize__9TSMSFaderFii
    li      r3, 0x268
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802a6554
    mr      r3, r25
    bl      __ct__12TMarDirectorFv
branch_0x802a6554:
    stw     r25, 0x4(r31)
    mr      r3, r25
    addi    r5, r31, 0x20
    lbz     r7, 0xf(r31)
    lbz     r6, 0xe(r31)
    lwz     r4, 0x1c(r31)
    bl      setup__12TMarDirectorFPQ26JDrama8TDisplayPP13TMarioGamePadUcUc
    mr.     r29, r3
    beq-    branch_0x802a6644
    li      r30, 0x4
    b       branch_0x802a6644

branch_0x802a6580:
    lwz     r3, 0x1c(r31)
    bl      SMSSetupTitleRenderingInfo__FPQ26JDrama8TDisplay
    bl      SMSGetTitleRenderHeight__Fv
    clrlwi  r25, r3, 16
    bl      SMSGetTitleRenderWidth__Fv
    clrlwi  r4, r3, 16
    lwz     r3, 0x34(r31)
    mr      r5, r25
    bl      setDisplaySize__9TSMSFaderFii
    li      r3, 0x50
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802a65bc
    mr      r3, r25
    bl      __ct__10TSelectDirFv
branch_0x802a65bc:
    stw     r25, 0x4(r31)
    mr      r3, r25
    lbz     r6, 0xe(r31)
    lwz     r4, 0x1c(r31)
    lwz     r5, 0x20(r31)
    bl      setup__10TSelectDirFPQ26JDrama8TDisplayP13TMarioGamePadUc
    b       branch_0x802a6644

branch_0x802a65d8:
    li      r0, 0x9
    stw     r0, 0x18(r26)
    li      r3, 0xf
    li      r0, 0x0
    stb     r3, 0x12(r31)
    stb     r0, 0x13(r31)
    sth     r0, 0x14(r31)
    lwz     r3, 0x1c(r31)
    bl      SMSSetupMovieRenderingInfo__FPQ26JDrama8TDisplay
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r25, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r4, r3, 16
    lwz     r3, 0x34(r31)
    mr      r5, r25
    bl      setDisplaySize__9TSMSFaderFii
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802a6630
    mr      r3, r25
    bl      __ct__14TMovieDirectorFv
branch_0x802a6630:
    stw     r25, 0x4(r31)
    mr      r3, r25
    lwz     r4, 0x1c(r31)
    lwz     r5, 0x20(r31)
    bl      setup__14TMovieDirectorFPQ26JDrama8TDisplayP13TMarioGamePad
branch_0x802a6644:
    cmpwi   r29, 0x0
    bne-    branch_0x802a6658
    mr      r3, r31
    bl      gameLoop__12TApplicationFv
    clrlwi  r30, r3, 24
branch_0x802a6658:
    lwz     r3, 0x4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802a6678
    lwz     r12, 0x0(r3)
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802a6678:
    li      r0, 0x0
    stw     r0, 0x4(r31)
    lbz     r0, 0x8(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x802a66c8
    bge-    branch_0x802a66f4
    cmpwi   r0, 0x2
    bge-    branch_0x802a669c
    b       branch_0x802a66f4

branch_0x802a669c:
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    bne-    branch_0x802a6708
    mr      r3, r31
    bl      initialize_bootAfter__12TApplicationFv
    b       branch_0x802a6708

branch_0x802a66c8:
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    bne-    branch_0x802a6708
    mr      r3, r31
    bl      initialize_nlogoAfter__12TApplicationFv
    b       branch_0x802a6708

branch_0x802a66f4:
    lwz     r3, 0x40(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x802a6708:
    lwz     r3, R13Off_m0x60f0(r13)
    bl      reset__9RumbleMgrFv
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x802a6794
    li      r0, 0x0
    sth     r0, -0x6008(r13)
    lis     r3, 0xf000
    bl      recalibrate__10JUTGamePadFUl
    bl      DVDCheckDisk
    cmpwi   r3, 0x0
    bne-    branch_0x802a6760
    lhz     r0, 0x44(r31)
    li      r30, 0x7
    ori     r0, r0, 0x2
    sth     r0, 0x44(r31)
    b       branch_0x802a6794

branch_0x802a6760:
    lbz     r0, 0x8(r31)
    cmplwi  r0, 0x2
    beq-    branch_0x802a6774
    cmplwi  r0, 0x3
    bne-    branch_0x802a677c
branch_0x802a6774:
    li      r30, 0x7
    b       branch_0x802a6794

branch_0x802a677c:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x7
    beq-    branch_0x802a6794
    li      r30, 0x4
    lwz     r3, R13Off_m0x603c(r13)
    bl      unmount__12TCardManagerFv
branch_0x802a6794:
    stb     r30, 0x8(r31)
    lhz     r4, 0x10(r31)
    lbz     r3, 0xf(r31)
    lbz     r0, 0xe(r31)
    stb     r0, 0xa(r31)
    stb     r3, 0xb(r31)
    sth     r4, 0xc(r31)
    lhz     r4, 0x14(r31)
    lbz     r3, 0x13(r31)
    lbz     r0, 0x12(r31)
    stb     r0, 0xe(r31)
    stb     r3, 0xf(r31)
    sth     r4, 0x10(r31)
branch_0x802a67c8:
    lbz     r0, 0x8(r31)
    cmplwi  r0, 0x7
    bne+    branch_0x802a63c4
    lmw     r25, 0xac(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl checkAdditionalMovie__12TApplicationFv
checkAdditionalMovie__12TApplicationFv: # 0x802a67e8
    mflr    r0
    lis     r4, gpApplication@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, gpApplication@l
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    li      r31, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r4, 0xe
    lbz     r0, 0xe(r4)
    mr      r3, r0
    bl      SMS_getShineIDofExStage__FUc
    clrlwi  r0, r3, 24
    cmplwi  r0, 0xff
    beq-    branch_0x802a687c
    lwz     r0, R13Off_m0x6060(r13)
    addi    r4, r3, 0x0
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    bne-    branch_0x802a69ac
    lis     r29, unk_0003000d@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, unk_0003000d@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802a69ac
    li      r0, 0x5
    stw     r0, 0x18(r30)
    addi    r5, r29, 0xd
    li      r4, 0x1
    lwz     r3, R13Off_m0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    li      r31, 0x1
    b       branch_0x802a69ac

branch_0x802a687c:
    lbz     r0, 0x0(r29)
    cmpwi   r0, 0x1
    beq-    branch_0x802a68e8
    bge-    branch_0x802a6898
    cmpwi   r0, 0x0
    bge-    branch_0x802a68a4
    b       branch_0x802a69ac

branch_0x802a6898:
    cmpwi   r0, 0x8
    beq-    branch_0x802a696c
    b       branch_0x802a69ac

branch_0x802a68a4:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x802a69ac
    lis     r29, unk_00030009@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, unk_00030009@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802a69ac
    li      r0, 0x1
    stw     r0, 0x18(r30)
    addi    r5, r29, 0x9
    li      r4, 0x1
    lwz     r3, R13Off_m0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    li      r31, 0x1
    b       branch_0x802a69ac

branch_0x802a68e8:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x802a692c
    lis     r29, unk_0003000b@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, unk_0003000b@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802a69ac
    li      r0, 0x3
    stw     r0, 0x18(r30)
    addi    r5, r29, 0xb
    li      r4, 0x1
    lwz     r3, R13Off_m0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    li      r31, 0x1
    b       branch_0x802a69ac

branch_0x802a692c:
    cmplwi  r0, 0x1
    bne-    branch_0x802a69ac
    lis     r29, unk_0003000c@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, unk_0003000c@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802a69ac
    li      r0, 0x4
    stw     r0, 0x18(r30)
    addi    r5, r29, 0xc
    li      r4, 0x1
    lwz     r3, R13Off_m0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    li      r31, 0x1
    b       branch_0x802a69ac

branch_0x802a696c:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x2
    bne-    branch_0x802a69ac
    lis     r29, unk_0003000d@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, unk_0003000d@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802a69ac
    li      r0, 0x5
    stw     r0, 0x18(r30)
    addi    r5, r29, 0xd
    li      r4, 0x1
    lwz     r3, R13Off_m0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    li      r31, 0x1
branch_0x802a69ac:
    lwz     r0, 0x5c(sp)
    mr      r3, r31
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl finalize__12TApplicationFv
finalize__12TApplicationFv: # 0x802a69cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, R13Off_m0x60f0(r13)
    bl      reset__9RumbleMgrFv
    lwz     r3, R13Off_m0x6044(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802a69fc
    li      r4, 0x3c
    bl      resetAudioAll__6MSoundFUs
branch_0x802a69fc:
    bl      clearForReset__10JUTGamePadFv
    lwz     r3, R13Off_m0x603c(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802a6a14
    li      r4, -0x1
    bl      __dt__12TCardManagerFv
branch_0x802a6a14:
    li      r3, 0x1
    bl      VISetBlack
    bl      VIFlush
    bl      VIWaitForRetrace
    lwz     r0, R13Off_m0x6044(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802a6a4c
    b       branch_0x802a6a38

branch_0x802a6a34:
    bl      VIWaitForRetrace
branch_0x802a6a38:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3c
    bl      resetAudioAll__6MSoundFUs
    clrlwi. r0, r3, 24
    beq+    branch_0x802a6a34
branch_0x802a6a4c:
    lhz     r0, 0x44(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802a6a60
    li      r3, 0x1
    b       branch_0x802a6a64

branch_0x802a6a60:
    li      r3, 0x0
branch_0x802a6a64:
    li      r4, 0x0
    li      r5, 0x0
    bl      OSResetSystem
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initialize_nlogoAfter__12TApplicationFv
initialize_nlogoAfter__12TApplicationFv: # 0x802a6a84
    mflr    r0
    lis     r4, unk_803a4010@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r24, 0x80(sp)
    addi    r30, r4, unk_803a4010@l
    addi    r31, r3, 0x0
    addi    r3, r30, 0x1f8
    bl      getVolume__13JKRFileLoaderFPCc
    mr      r24, r3
    bl      unmountFixed__13JKRMemArchiveFv
    cmplwi  r24, 0x0
    addi    r3, r24, 0x0
    beq-    branch_0x802a6ad0
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802a6ad0:
    lwz     r3, R13Off_m0x5f28(r13)
    bl      becomeCurrentHeap__7JKRHeapFv
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x802a6afc
    lwz     r4, R13Off_m0x6024(r13)
    addi    r3, r24, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
branch_0x802a6afc:
    lwz     r4, R13Off_m0x5f30(r13)
    addi    r27, r24, 0x0
    li      r3, 0x8
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802a6b30
    lis     r4, __vvt__Q26JDrama11TNameRefGen@h
    addi    r0, r4, __vvt__Q26JDrama11TNameRefGen@l
    lis     r4, __vvt__14TMarNameRefGen@ha
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__14TMarNameRefGen@l
    stw     r0, 0x0(r3)
branch_0x802a6b30:
    lwz     r0, R13Off_m0x5f28(r13)
    stw     r3, R13Off_m0x5db8(r13)
    mr      r3, r0
    lwz     r4, R13Off_m0x6020(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r28, sp, 0x68
    lwz     r4, R13Off_m0x6020(r13)
    stw     r28, 0x4c(sp)
    lis     r5, __vvt__10JSUIosBase@ha
    addi    r0, r5, __vvt__10JSUIosBase@l
    lwz     r7, 0x4c(sp)
    lis     r5, __vvt__20JSURandomInputStream@h
    addi    r25, r5, __vvt__20JSURandomInputStream@l
    stw     r0, 0x0(r7)
    li      r29, 0x0
    lis     r6, __vvt__14JSUInputStream@h
    stb     r29, 0x4(r7)
    addi    r0, r6, __vvt__14JSUInputStream@l
    lis     r6, __vvt__20JSUMemoryInputStream@h
    stw     r0, 0x0(r7)
    addi    r5, r3, 0x0
    addi    r26, r6, __vvt__20JSUMemoryInputStream@l
    stw     r25, 0x0(r7)
    addi    r3, r7, 0x0
    stw     r26, 0x0(r7)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r3, R13Off_m0x5db8(r13)
    mr      r4, r28
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x204
    lwz     r24, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r24)
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x204
    mtlr    r12
    blrl
    stw     r3, 0x30(r31)
    lwz     r3, R13Off_m0x5db8(r13)
    bl      __dl__FPv
    stw     r26, 0x68(sp)
    addi    r3, r28, 0x0
    li      r4, 0x0
    stw     r29, R13Off_m0x5db8(r13)
    stw     r25, 0x68(sp)
    bl      __dt__14JSUInputStreamFv
    stw     r29, R13Off_m0x6034(r13)
    lwz     r3, 0x40(r31)
    bl      destroy__10JKRExpHeapFv
    lwz     r3, R13Off_m0x5f28(r13)
    lwz     r4, R13Off_m0x601c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r3, 0x6c
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802a6c50
    lwz     r4, R13Off_m0x6028(r13)
    li      r5, 0x0
    li      r6, 0x0
    bl      __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
branch_0x802a6c50:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    addi    r4, r30, 0x228
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x603c(r13)
    addi    r0, r3, 0x20
    addi    r3, r27, 0x0
    stw     r0, 0x4(r4)
    addi    r4, r30, 0x240
    lwz     r12, 0x0(r27)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x603c(r13)
    addi    r0, r3, 0x20
    stw     r0, 0x8(r4)
    b       branch_0x802a6ca0

branch_0x802a6c9c:
    bl      OSYieldThread
branch_0x802a6ca0:
    lwz     r3, R13Off_m0x603c(r13)
    bl      getLastStatus__12TCardManagerFv
    cmpwi   r3, -0x1
    beq+    branch_0x802a6c9c
    cmpwi   r3, 0x0
    bne-    branch_0x802a6d34
    addi    r29, sp, 0x54
    stw     r29, 0x40(sp)
    lis     r4, __vvt__10JSUIosBase@ha
    addi    r0, r4, __vvt__10JSUIosBase@l
    lwz     r3, 0x40(sp)
    lis     r5, __vvt__20JSURandomInputStream@h
    addi    r28, r5, __vvt__20JSURandomInputStream@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    lis     r4, __vvt__20JSUMemoryInputStream@h
    lis     r6, __vvt__14JSUInputStream@h
    stb     r0, 0x4(r3)
    addi    r0, r6, __vvt__14JSUInputStream@l
    stw     r0, 0x0(r3)
    addi    r27, r4, __vvt__20JSUMemoryInputStream@l
    li      r4, 0x0
    stw     r28, 0x0(r3)
    li      r5, 0x0
    stw     r27, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r3, R13Off_m0x603c(r13)
    mr      r4, r29
    bl      getOptionReadStream__12TCardManagerFP20JSUMemoryInputStream
    lwz     r3, R13Off_m0x6060(r13)
    mr      r4, r29
    bl      loadOption__12TFlagManagerFR20JSUMemoryInputStream
    stw     r27, 0x54(sp)
    addi    r3, r29, 0x0
    li      r4, 0x0
    stw     r28, 0x54(sp)
    bl      __dt__14JSUInputStreamFv
branch_0x802a6d34:
    lwz     r3, R13Off_m0x603c(r13)
    bl      unmount__12TCardManagerFv
    lwz     r3, R13Off_m0x6060(r13)
    li      r24, 0x1
    lis     r4, 0xa
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x1
    beq-    branch_0x802a6d7c
    bge-    branch_0x802a6d64
    cmpwi   r3, 0x0
    bge-    branch_0x802a6d70
    b       branch_0x802a6d7c

branch_0x802a6d64:
    cmpwi   r3, 0x3
    bge-    branch_0x802a6d7c
    b       branch_0x802a6d78

branch_0x802a6d70:
    li      r24, 0x0
    b       branch_0x802a6d7c

branch_0x802a6d78:
    li      r24, 0x2
branch_0x802a6d7c:
    mr      r3, r24
    bl      setParamSoundOutputMode__18JAIGlobalParameterFUl
    li      r3, 0xc
    bl      JMANewSinTable__FUc
    lwz     r24, R13Off_m0x5f2c(r13)
    lwz     r12, 0x0(r24)
    mr      r3, r24
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r4, r24, 0x0
    li      r5, 0x1
    bl      create__12JKRSolidHeapFUlP7JKRHeapb
    stw     r3, 0x40(r31)
    lwz     r3, 0x40(r31)
    bl      becomeCurrentHeap__7JKRHeapFv
    lmw     r24, 0x80(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl initialize_bootAfter__12TApplicationFv
initialize_bootAfter__12TApplicationFv: # 0x802a6dd0
    mflr    r0
    lis     r4, unk_803a4010@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r30, r4, unk_803a4010@l
    lwz     r0, R13Off_m0x5f28(r13)
    mr      r3, r0
    bl      becomeCurrentHeap__7JKRHeapFv
    lwz     r4, R13Off_m0x5f30(r13)
    li      r3, 0x6c
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802a6e14
    bl      __ct__13JKRMemArchiveFv
branch_0x802a6e14:
    lwz     r4, R13Off_m0x602c(r13)
    mr      r29, r3
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r2, R2Off_m0x3d8
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r30, 0x254
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r29)
    addi    r0, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x30(r12)
    mr      r4, r0
    mtlr    r12
    blrl
    addi    r28, r3, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    addi    r0, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    mr      r27, r0
    addi    r4, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x0
    addi    r6, r30, 0x254
    mtlr    r12
    blrl
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802a6ec4
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    bl      __ct__10JUTResFontFPC7ResFONTP10JKRArchive
branch_0x802a6ec4:
    stw     r28, R13Off_m0x6038(r13)
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x3d0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r30, 0x268
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r29)
    addi    r0, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x30(r12)
    mr      r4, r0
    mtlr    r12
    blrl
    mr      r27, r3
    bl      __nwa__FUl
    addi    r0, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    mr      r28, r0
    addi    r4, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r27, 0x0
    addi    r6, r30, 0x268
    mtlr    r12
    blrl
    lwz     r27, R13Off_m0x5f2c(r13)
    li      r3, 0xd8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a6f78
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    addi    r7, r28, 0x0
    li      r5, 0x0
    lis     r6, 0xf4
    li      r8, 0x0
    lis     r9, 0xb0
    bl      __ct__6MSoundFP7JKRHeapP7JKRHeapUlPUcPUcUl
branch_0x802a6f78:
    stw     r29, R13Off_m0x6044(r13)
    bl      OSGetSoundMode
    cmplwi  r3, 0x0
    bne-    branch_0x802a6f90
    li      r3, 0x0
    b       branch_0x802a6f94

branch_0x802a6f90:
    li      r3, 0x1
branch_0x802a6f94:
    bl      setParamSoundOutputMode__18JAIGlobalParameterFUl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      loadWave__6MSoundF13MS_SCENE_WAVE
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x210
    bl      loadWave__6MSoundF13MS_SCENE_WAVE
    mr      r3, r27
    bl      becomeCurrentHeap__7JKRHeapFv
    bl      CARDInit
    li      r3, 0x2000
    li      r4, 0x20
    bl      __nwa__FUli
    lis     r4, unk_0000a000@ha
    addi    r27, r3, 0x0
    addi    r3, r4, unk_0000a000@l
    li      r4, 0x20
    bl      __nwa__FUli
    addi    r28, r3, 0x0
    li      r3, 0x1000
    li      r4, 0x20
    bl      __nwa__FUli
    addi    r29, r3, 0x0
    li      r3, 0x478
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a7020
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r8, r29, 0x0
    li      r6, 0x0
    li      r7, 0xe
    li      r9, 0x1000
    bl      __ct__12TCardManagerFPvPvllPvUl
branch_0x802a7020:
    stw     r30, R13Off_m0x603c(r13)
    lwz     r3, R13Off_m0x603c(r13)
    bl      readOptionBlock__12TCardManagerFv
    lwz     r3, 0x40(r31)
    bl      becomeCurrentHeap__7JKRHeapFv
    lwz     r6, R13Off_m0x6040(r13)
    lis     r4, gSetupThread@ha
    lis     r3, SetupThreadFuncLogo__FPv@h
    addi    r30, r4, gSetupThread@l
    addi    r4, r3, SetupThreadFuncLogo__FPv@l
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addis   r6, r6, 0x1
    lis     r7, 0x1
    li      r8, 0x11
    li      r9, 0x0
    bl      OSCreateThread
    mr      r3, r30
    bl      OSResumeThread
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl SetupThreadFuncLogo__FPv
SetupThreadFuncLogo__FPv: # 0x802a7080
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setupThreadFuncLogo__12TApplicationFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setupThreadFuncLogo__12TApplicationFv
setupThreadFuncLogo__12TApplicationFv: # 0x802a70a0
    mflr    r0
    lis     r4, unk_803a4010@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stw     r31, 0x13c(sp)
    addi    r31, r4, unk_803a4010@l
    stw     r30, 0x138(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x134(sp)
    stw     r28, 0x130(sp)
    b       branch_0x802a70d0

branch_0x802a70cc:
    bl      OSYieldThread
branch_0x802a70d0:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      checkWaveOnAram__6MSoundF13MS_SCENE_WAVE
    clrlwi. r0, r3, 24
    beq+    branch_0x802a70cc
    b       branch_0x802a70ec

branch_0x802a70e8:
    bl      OSYieldThread
branch_0x802a70ec:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x210
    bl      checkWaveOnAram__6MSoundF13MS_SCENE_WAVE
    clrlwi. r0, r3, 24
    beq+    branch_0x802a70e8
    lwz     r28, R13Off_m0x5f28(r13)
    cmplwi  r28, 0x0
    bne-    branch_0x802a7110
    lwz     r28, R13Off_m0x5f2c(r13)
branch_0x802a7110:
    addi    r3, sp, 0xe8
    addi    r4, r31, 0x274
    li      r29, 0x0
    bl      strcpy
    addi    r3, sp, 0xe8
    addi    r4, r2, R2Off_m0x414
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802a7174
    addi    r4, r2, R2Off_m0x40c
    bl      strcpy
    addi    r3, sp, 0xe8
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x802a7174
    addi    r7, r28, 0x0
    addi    r3, sp, 0xe8
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r29, r3
branch_0x802a7174:
    cmplwi  r29, 0x0
    bne-    branch_0x802a71a4
    addi    r7, r28, 0x0
    addi    r3, r31, 0x274
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r29, r3
branch_0x802a71a4:
    lwz     r28, R13Off_m0x5f28(r13)
    stw     r29, R13Off_m0x6028(r13)
    cmplwi  r28, 0x0
    bne-    branch_0x802a71b8
    lwz     r28, R13Off_m0x5f2c(r13)
branch_0x802a71b8:
    addi    r3, sp, 0xa4
    addi    r4, r31, 0x284
    li      r29, 0x0
    bl      strcpy
    addi    r3, sp, 0xa4
    addi    r4, r2, R2Off_m0x414
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802a721c
    addi    r4, r2, R2Off_m0x40c
    bl      strcpy
    addi    r3, sp, 0xa4
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x802a721c
    addi    r7, r28, 0x0
    addi    r3, sp, 0xa4
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r29, r3
branch_0x802a721c:
    cmplwi  r29, 0x0
    bne-    branch_0x802a724c
    addi    r7, r28, 0x0
    addi    r3, r31, 0x284
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r29, r3
branch_0x802a724c:
    stw     r29, R13Off_m0x6024(r13)
    addi    r3, r31, 0x298
    li      r4, 0x0
    lwz     r7, 0x40(r30)
    li      r5, 0x0
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    stw     r3, R13Off_m0x6020(r13)
    addi    r3, sp, 0x64
    addi    r4, r31, 0x2ac
    bl      strcpy
    addi    r3, sp, 0x64
    addi    r4, r2, R2Off_m0x414
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802a72d8
    addi    r4, r2, R2Off_m0x40c
    bl      strcpy
    addi    r3, sp, 0x64
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x802a72d8
    addi    r3, sp, 0x64
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      loadToAram__16JKRDvdAramRipperFPcUl15JKRExpandSwitchUlUl
    stw     r3, R13Off_m0x6018(r13)
    li      r0, 0x1
    addi    r3, r13, R13Off_m0x6018
    stb     r0, 0x4(r3)
branch_0x802a72d8:
    lwz     r0, R13Off_m0x6018(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802a730c
    addi    r3, r31, 0x2ac
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      loadToAram__16JKRDvdAramRipperFPcUl15JKRExpandSwitchUlUl
    stw     r3, R13Off_m0x6018(r13)
    li      r0, 0x0
    addi    r3, r13, R13Off_m0x6018
    stb     r0, 0x4(r3)
branch_0x802a730c:
    addi    r3, sp, 0x24
    addi    r4, r31, 0x2c0
    bl      strcpy
    addi    r3, sp, 0x24
    addi    r4, r2, R2Off_m0x414
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802a736c
    addi    r4, r2, R2Off_m0x40c
    bl      strcpy
    addi    r3, sp, 0x24
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x802a736c
    addi    r3, sp, 0x24
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      loadToAram__16JKRDvdAramRipperFPcUl15JKRExpandSwitchUlUl
    stw     r3, R13Off_m0x6010(r13)
    li      r0, 0x1
    addi    r3, r13, R13Off_m0x6010
    stb     r0, 0x4(r3)
branch_0x802a736c:
    lwz     r0, R13Off_m0x6010(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802a73a0
    addi    r3, r31, 0x2c0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      loadToAram__16JKRDvdAramRipperFPcUl15JKRExpandSwitchUlUl
    stw     r3, R13Off_m0x6010(r13)
    li      r0, 0x0
    addi    r3, r13, R13Off_m0x6010
    stb     r0, 0x4(r3)
branch_0x802a73a0:
    lwz     r0, 0x144(sp)
    li      r3, 0x0
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    mtlr    r0
    lwz     r29, 0x134(sp)
    lwz     r28, 0x130(sp)
    addi    sp, sp, 0x140
    blr


.globl initialize__12TApplicationFv
initialize__12TApplicationFv: # 0x802a73c4
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    lis     r5, 0x8000
    li      r6, 0x0
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    bl      OSProtectRange
    li      r3, 0x1
    lis     r4, 0x8300
    lis     r5, 0x7d00
    li      r6, 0x0
    bl      OSProtectRange
    li      r3, 0x4
    oris    r3, r3, 0x4
    mtspr   914, r3
    li      r3, 0x5
    oris    r3, r3, 0x5
    mtspr   915, r3
    li      r3, 0x6
    oris    r3, r3, 0x6
    mtspr   916, r3
    li      r3, 0x7
    oris    r3, r3, 0x7
    mtspr   917, r3
    li      r0, 0x1000
    stw     r0, R13Off_m0x7594(r13)
    li      r3, 0x1
    li      r4, 0x0
    stw     r0, R13Off_m0x758c(r13)
    bl      createRoot__10JKRExpHeapFib
    lwz     r4, R13Off_m0x5f28(r13)
    lis     r3, 0x2
    li      r5, 0x0
    bl      create__10JKRExpHeapFUlP7JKRHeapb
    bl      becomeSystemHeap__7JKRHeapFv
    lwz     r3, R13Off_m0x5f28(r13)
    bl      becomeCurrentHeap__7JKRHeapFv
    bl      DVDInit
    bl      MarErrInit__Fv
    bl      VIInit
    bl      init__10JUTGamePadFv
    lis     r3, unk_00080000@h
    li      r4, 0x20
    li      r5, 0x0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    lis     r4, 0x8
    bl      GXInit
    bl      SMS_ResetTexCacheRegion__Fv
    li      r3, 0x2
    bl      GXPokeAlphaRead
    lis     r4, unk_000a5000@h
    addi    r3, r4, unk_000a5000@l
    li      r4, 0x20
    bl      __nwa__FUli
    addi    r30, r3, unk_00080000@l
    addi    r3, sp, 0x28
    bl      SMSSetupTitleRenderMode__FP16_GXRenderModeObj
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a74e4
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r30, 0x0
    addi    r7, sp, 0x28
    li      r4, 0x2
    bl      __ct__Q26JDrama8TDisplayFUsPvPvRC16_GXRenderModeObj
branch_0x802a74e4:
    stw     r29, 0x1c(r31)
    lis     r3, 0x50
    li      r4, -0x20
    lwz     r30, R13Off_m0x5f2c(r13)
    bl      __nwa__FUli
    stw     r3, R13Off_m0x601c(r13)
    lis     r4, 0x50
    lwz     r5, R13Off_m0x5f2c(r13)
    li      r6, 0x1
    lwz     r3, R13Off_m0x601c(r13)
    bl      create__10JKRExpHeapFPvUlP7JKRHeapb
    stw     r3, 0x40(r31)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a7530
    lwz     r4, R13Off_m0x5f2c(r13)
    mr      r3, r29
    bl      __ct__10JUTRomFontFP7JKRHeap
branch_0x802a7530:
    stw     r29, R13Off_m0x6034(r13)
    mr      r3, r30
    bl      becomeCurrentHeap__7JKRHeapFv
    lis     r3, 0xf4
    li      r4, -0x1
    li      r5, 0x8
    li      r6, 0x8
    li      r7, 0x8
    bl      create__7JKRAramFUlUllll
    lis     r30, unk_00008000@ha
    addi    r3, r30, unk_00008000@l
    li      r4, 0x20
    bl      __nwa__FUli
    addi    r4, r30, -0x8000
    li      r5, 0x0
    bl      setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
    li      r3, 0x5
    li      r4, 0x28
    li      r5, 0xf
    bl      start__16TDrawSyncManagerFUlUll
    lis     r4, drawSyncCallback__16TDrawSyncManagerFUs@ha
    addi    r3, r4, drawSyncCallback__16TDrawSyncManagerFUs@l
    bl      GXSetDrawSyncCallback
    li      r3, 0xf0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a75e0
    stw     r29, 0x1c(sp)
    li      r4, 0x0
    lwz     r3, 0x1c(sp)
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    lis     r4, __vvt__13TMarioGamePad@ha
    lwz     r3, 0x1c(sp)
    addi    r0, r4, __vvt__13TMarioGamePad@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0xd0(r3)
    stw     r0, 0xd4(r3)
    stw     r0, 0xd8(r3)
    sth     r0, 0xdc(r3)
    sth     r0, 0xde(r3)
    sth     r0, 0xe0(r3)
    sth     r0, 0xe2(r3)
    bl      reset__13TMarioGamePadFv
branch_0x802a75e0:
    stw     r29, 0x20(r31)
    li      r3, 0xf0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a7638
    stw     r29, 0x18(sp)
    li      r4, 0x1
    lwz     r3, 0x18(sp)
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    lis     r4, __vvt__13TMarioGamePad@ha
    lwz     r3, 0x18(sp)
    addi    r0, r4, __vvt__13TMarioGamePad@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0xd0(r3)
    stw     r0, 0xd4(r3)
    stw     r0, 0xd8(r3)
    sth     r0, 0xdc(r3)
    sth     r0, 0xde(r3)
    sth     r0, 0xe0(r3)
    sth     r0, 0xe2(r3)
    bl      reset__13TMarioGamePadFv
branch_0x802a7638:
    stw     r29, 0x24(r31)
    li      r3, 0xf0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a7690
    stw     r29, 0x14(sp)
    li      r4, 0x2
    lwz     r3, 0x14(sp)
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    lis     r4, __vvt__13TMarioGamePad@ha
    lwz     r3, 0x14(sp)
    addi    r0, r4, __vvt__13TMarioGamePad@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0xd0(r3)
    stw     r0, 0xd4(r3)
    stw     r0, 0xd8(r3)
    sth     r0, 0xdc(r3)
    sth     r0, 0xde(r3)
    sth     r0, 0xe0(r3)
    sth     r0, 0xe2(r3)
    bl      reset__13TMarioGamePadFv
branch_0x802a7690:
    stw     r29, 0x28(r31)
    li      r3, 0xf0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a76e8
    stw     r29, 0x10(sp)
    li      r4, 0x3
    lwz     r3, 0x10(sp)
    bl      __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
    lis     r4, __vvt__13TMarioGamePad@ha
    lwz     r3, 0x10(sp)
    addi    r0, r4, __vvt__13TMarioGamePad@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0xd0(r3)
    stw     r0, 0xd4(r3)
    stw     r0, 0xd8(r3)
    sth     r0, 0xdc(r3)
    sth     r0, 0xde(r3)
    sth     r0, 0xe0(r3)
    sth     r0, 0xe2(r3)
    bl      reset__13TMarioGamePadFv
branch_0x802a76e8:
    stw     r29, 0x2c(r31)
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a7714
    addi    r3, r29, 0x0
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x1
    bl      __ct__9RumbleMgrFbbbb
branch_0x802a7714:
    stw     r29, R13Off_m0x60f0(r13)
    lwz     r3, R13Off_m0x60f0(r13)
    bl      init__9RumbleMgrFv
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a777c
    bl      SMSGetVSyncTimesPerSec__Fv
    li      r0, 0x0
    stb     r0, 0x20(sp)
    lis     r5, unk_803a42e0@h
    addi    r4, sp, 0xc
    stb     r0, 0x21(sp)
    addi    r5, r5, unk_803a42e0@l
    mr      r3, r29
    stb     r0, 0x22(sp)
    li      r0, 0xff
    stb     r0, 0x23(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0xc(sp)
    bl      __ct__9TSMSFaderFQ28JUtility6TColorfPCc
    lis     r4, __vvt__10TSmplFader@h
    addi    r0, r4, __vvt__10TSmplFader@l
    stw     r0, 0x0(r29)
branch_0x802a777c:
    stw     r29, 0x34(r31)
    bl      SMSGetGCLogoRenderHeight__Fv
    clrlwi  r30, r3, 16
    bl      SMSGetGCLogoRenderWidth__Fv
    clrlwi  r4, r3, 16
    lwz     r3, 0x34(r31)
    mr      r5, r30
    bl      setDisplaySize__9TSMSFaderFii
    lwz     r3, R13Off_m0x5f2c(r13)
    bl      start__12TFlagManagerFP7JKRHeap
    lis     r30, unk_0000dfc0@ha
    addi    r3, r30, unk_0000dfc0@l
    bl      start__8TTimeRecFUs
    lwz     r4, R13Off_m0x5ff8(r13)
    addi    r5, r30, -0x2040
    addi    r6, r30, -0x2001
    lhz     r0, 0x81c(r4)
    addi    r7, r4, 0x81c
    li      r4, 0x0
    ori     r0, r0, 0x1
    sth     r0, 0x0(r7)
    lwz     r7, R13Off_m0x5ff8(r13)
    lwz     r3, R13Off_m0x5ff0(r13)
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a77f8
    addi    r3, r29, 0x0
    li      r4, 0x2
    bl      __ct__13TProcessMeterFl
branch_0x802a77f8:
    stw     r29, 0x48(r31)
    bl      OSGetTick
    bl      srand
    lis     r3, 0x1
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, R13Off_m0x6040(r13)
    li      r0, 0x2
    stb     r0, 0x8(r31)
    lwz     r3, 0x40(r31)
    bl      becomeCurrentHeap__7JKRHeapFv
    lwz     r6, R13Off_m0x6040(r13)
    lis     r5, gSetupThread@ha
    addi    r30, r5, gSetupThread@l
    lis     r4, SetupThreadFuncBoot__FPv@h
    addi    r4, r4, SetupThreadFuncBoot__FPv@l
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addis   r6, r6, 0x1
    lis     r7, 0x1
    li      r8, 0x11
    li      r9, 0x0
    bl      OSCreateThread
    mr      r3, r30
    bl      OSResumeThread
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl SetupThreadFuncBoot__FPv
SetupThreadFuncBoot__FPv: # 0x802a7878
    mflr    r0
    lis     r3, unk_803a42f4@h
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_803a42f4@l
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    li      r5, 0x0
    li      r6, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    stw     r3, R13Off_m0x602c(r13)
    li      r3, 0x0
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMSSwitch2DArchive__FPCcR10TARAMBlock
SMSSwitch2DArchive__FPCcR10TARAMBlock: # 0x802a78b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r4
    bl      getVolume__13JKRFileLoaderFPCc
    mr      r31, r3
    bl      unmountFixed__13JKRMemArchiveFv
    lbz     r0, 0x4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802a791c
    lwz     r4, R13Off_m0x6048(r13)
    lis     r3, unk_00064000@h
    li      r0, 0x0
    lwz     r4, 0xd4(r4)
    addi    r8, r3, unk_00064000@l
    li      r5, 0x0
    stw     r0, 0x8(sp)
    li      r6, 0x0
    li      r7, 0x1
    lwz     r3, 0x0(r30)
    li      r9, 0x0
    li      r10, -0x1
    bl      aramToMainRam__7JKRAramFP12JKRAramBlockPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl
    b       branch_0x802a794c

branch_0x802a791c:
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x0
    li      r5, 0x0
    lwz     r4, 0xd4(r3)
    li      r6, 0x0
    li      r7, 0x0
    stw     r0, 0x8(sp)
    li      r8, 0x0
    li      r9, 0x0
    lwz     r3, 0x0(r30)
    li      r10, -0x1
    bl      aramToMainRam__7JKRAramFP12JKRAramBlockPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl
branch_0x802a794c:
    lwz     r4, R13Off_m0x6048(r13)
    addi    r3, r31, 0x0
    li      r5, 0x0
    lwz     r4, 0xd4(r4)
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    lwz     r0, 0x5c(sp)
    mr      r3, r31
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl SMSMountAramArchive__FP13JKRMemArchiveR10TARAMBlock
SMSMountAramArchive__FP13JKRMemArchiveR10TARAMBlock: # 0x802a797c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    lbz     r0, 0x4(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802a79d8
    lwz     r5, R13Off_m0x6048(r13)
    lis     r3, unk_00064000@h
    li      r0, 0x0
    lwz     r9, 0xd4(r5)
    addi    r8, r3, unk_00064000@l
    li      r5, 0x0
    stw     r0, 0x8(sp)
    li      r6, 0x0
    li      r7, 0x1
    lwz     r3, 0x0(r4)
    addi    r4, r9, 0x0
    li      r9, 0x0
    li      r10, -0x1
    bl      aramToMainRam__7JKRAramFP12JKRAramBlockPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl
    b       branch_0x802a7a0c

branch_0x802a79d8:
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x0
    li      r5, 0x0
    lwz     r10, 0xd4(r3)
    li      r6, 0x0
    li      r7, 0x0
    stw     r0, 0x8(sp)
    li      r8, 0x0
    li      r9, 0x0
    lwz     r3, 0x0(r4)
    addi    r4, r10, 0x0
    li      r10, -0x1
    bl      aramToMainRam__7JKRAramFP12JKRAramBlockPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl
branch_0x802a7a0c:
    lwz     r4, R13Off_m0x6048(r13)
    addi    r3, r31, 0x0
    li      r5, 0x0
    lwz     r4, 0xd4(r4)
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl SMSLoadArchive__FPCcPvUlP7JKRHeap
SMSLoadArchive__FPCcPvUlP7JKRHeap: # 0x802a7a34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r27, 0x64(sp)
    mr.     r30, r6
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bne-    branch_0x802a7a5c
    lwz     r30, R13Off_m0x5f2c(r13)
branch_0x802a7a5c:
    addi    r4, r27, 0x0
    addi    r3, sp, 0x1c
    li      r31, 0x0
    bl      strcpy
    addi    r3, sp, 0x1c
    addi    r4, r2, R2Off_m0x414
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802a7ac0
    addi    r4, r2, R2Off_m0x40c
    bl      strcpy
    addi    r3, sp, 0x1c
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, -0x1
    beq-    branch_0x802a7ac0
    addi    r4, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r3, sp, 0x1c
    li      r5, 0x1
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r31, r3
branch_0x802a7ac0:
    cmplwi  r31, 0x0
    bne-    branch_0x802a7af0
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    li      r5, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r31, r3
branch_0x802a7af0:
    mr      r3, r31
    lmw     r27, 0x64(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl __ct__12TApplicationFv
__ct__12TApplicationFv: # 0x802a7b08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    addi    r4, sp, 0x28
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r30, 0x0(r3)
    addi    r3, sp, 0x1c
    stw     r31, 0x4(r30)
    sth     r31, 0xc(r30)
    sth     r31, 0x28(sp)
    stb     r31, 0xa(r30)
    stb     r31, 0xb(r30)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    addi    r3, r30, 0xc
    lhz     r4, 0x1c(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    sth     r31, 0x10(r30)
    addi    r3, sp, 0x18
    addi    r4, sp, 0x24
    sth     r31, 0x24(sp)
    stb     r31, 0xe(r30)
    stb     r31, 0xf(r30)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    addi    r3, r30, 0x10
    lhz     r4, 0x18(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    sth     r31, 0x14(r30)
    addi    r3, sp, 0x14
    addi    r4, sp, 0x20
    sth     r31, 0x20(sp)
    stb     r31, 0x12(r30)
    stb     r31, 0x13(r30)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    addi    r3, r30, 0x14
    lhz     r4, 0x14(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    stw     r31, 0x1c(r30)
    mr      r3, r30
    stw     r31, 0x30(r30)
    stw     r31, 0x3c(r30)
    stw     r31, 0x40(r30)
    sth     r31, 0x44(r30)
    sth     r31, 0x46(r30)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl SMSGetAnmFrameRate__Fv
SMSGetAnmFrameRate__Fv: # 0x802a7bd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    lfs     f31, -0x3c8(r2)
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x802a7c18
    bge-    branch_0x802a7c0c
    cmpwi   r3, 0x0
    beq-    branch_0x802a7c18
    bge-    branch_0x802a7c20
    b       branch_0x802a7c24

branch_0x802a7c0c:
    cmpwi   r3, 0x5
    beq-    branch_0x802a7c18
    b       branch_0x802a7c24

branch_0x802a7c18:
    lfs     f31, -0x3c8(r2)
    b       branch_0x802a7c24

branch_0x802a7c20:
    lfs     f31, -0x3c4(r2)
branch_0x802a7c24:
    lfs     f0, -0x3e8(r2)
    lfs     f1, -0x3c8(r2)
    fmuls   f0, f31, f0
    fdivs   f1, f1, f0
    lwz     r0, 0x1c(sp)
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SMSGetVSyncTimesPerSec__Fv
SMSGetVSyncTimesPerSec__Fv: # 0x802a7c48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stfd    f31, 0x8(sp)
    lfs     f31, -0x3c8(r2)
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x802a7c88
    bge-    branch_0x802a7c7c
    cmpwi   r3, 0x0
    beq-    branch_0x802a7c88
    bge-    branch_0x802a7c90
    b       branch_0x802a7c94

branch_0x802a7c7c:
    cmpwi   r3, 0x5
    beq-    branch_0x802a7c88
    b       branch_0x802a7c94

branch_0x802a7c88:
    lfs     f31, -0x3c8(r2)
    b       branch_0x802a7c94

branch_0x802a7c90:
    lfs     f31, -0x3c4(r2)
branch_0x802a7c94:
    lfs     f0, -0x3e8(r2)
    lwz     r0, 0x14(sp)
    fmuls   f1, f31, f0
    lfd     f31, 0x8(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr


.globl __dt__13TMarioGamePadFv
__dt__13TMarioGamePadFv: # 0x802a7cb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a7cf8
    lis     r3, __vvt__13TMarioGamePad@ha
    addi    r0, r3, __vvt__13TMarioGamePad@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JUTGamePadFv
    extsh.  r0, r31
    ble-    branch_0x802a7cf8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a7cf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_Application_cpp
__sinit_Application_cpp: # 0x802a7d14
    mflr    r0
    lis     r3, gSetupThread@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, gSetupThread@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7d5c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x310
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x802a7d5c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7d8c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x31c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x802a7d8c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7dbc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x328
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x802a7dbc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7dec
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x334
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x802a7dec:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7e1c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x340
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x802a7e1c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7e4c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x34c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x802a7e4c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7e7c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x358
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x802a7e7c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7eac
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x364
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x802a7eac:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7edc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x370
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x802a7edc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7f0c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x37c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x802a7f0c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7f3c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x388
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x802a7f3c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7f6c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x394
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x802a7f6c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7f9c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x3a0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x802a7f9c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7fcc
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x3ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x802a7fcc:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802a7ffc
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x3b8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x802a7ffc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

