
.globl __dt__16TQuestionManagerFv
__dt__16TQuestionManagerFv: # 0x802237c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80223818
    lis     r3, __vvt__16TQuestionManager@ha
    addi    r0, r3, __vvt__16TQuestionManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80223808
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80223808:
    extsh.  r0, r31
    ble-    branch_0x80223818
    mr      r3, r30
    bl      __dl__FPv
branch_0x80223818:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__16TQuestionManagerFUlPQ26JDrama9TGraphics
perform__16TQuestionManagerFUlPQ26JDrama9TGraphics: # 0x80223834
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 29, 29
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x802238cc
    lwz     r3, R13Off_m0x6130(r13)
    lfs     f0, -0x1840(r2)
    lfs     f1, 0x48(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8022387c
    li      r0, 0x1
    b       branch_0x80223880

branch_0x8022387c:
    li      r0, 0x0
branch_0x80223880:
    clrlwi. r0, r0, 24
    beq-    branch_0x802238b8
    lwz     r3, 0x20(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      makeDL__16TQuestionManagerCFPQ26JDrama9TGraphics
    lhz     r0, 0x10(r29)
    ori     r0, r0, 0x2
    sth     r0, 0x10(r29)
    b       branch_0x802238c4

branch_0x802238b8:
    lhz     r0, 0x10(r29)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x10(r29)
branch_0x802238c4:
    li      r0, 0x0
    sth     r0, 0x12(r29)
branch_0x802238cc:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x80223910
    lwz     r3, R13Off_m0x6130(r13)
    lfs     f0, -0x1840(r2)
    lfs     f1, 0x48(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802238f0
    li      r0, 0x1
    b       branch_0x802238f4

branch_0x802238f0:
    li      r0, 0x0
branch_0x802238f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80223910
    lhz     r0, 0x10(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80223910
    mr      r3, r29
    bl      draw__16TQuestionManagerCFv
branch_0x80223910:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl reset__10TDLTexQuadFv
reset__10TDLTexQuadFv: # 0x8022392c
    li      r0, 0x0
    sth     r0, 0x8(r3)
    lhz     r0, 0x4(r3)
    subfic  r0, r0, 0x1
    sth     r0, 0x4(r3)
    blr


.globl draw__16TQuestionManagerCFv
draw__16TQuestionManagerCFv: # 0x80223944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x3
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x2
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    addi    r3, sp, 0xc
    bl      PSMTXIdentity
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0xc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0xc
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTevOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    bl      GXSetClipMode
    lwz     r3, 0x20(r31)
    bl      draw__10TDLTexQuadFv
    li      r3, 0x0
    bl      GXSetClipMode
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl makeDL__16TQuestionManagerCFPQ26JDrama9TGraphics
makeDL__16TQuestionManagerCFPQ26JDrama9TGraphics: # 0x80223ab8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stw     r31, 0x9c(sp)
    li      r31, 0x0
    stw     r30, 0x98(sp)
    addi    r30, r4, 0xb4
    stw     r29, 0x94(sp)
    li      r29, 0x0
    stw     r28, 0x90(sp)
    addi    r28, r3, 0x0
    b       branch_0x80223b9c

branch_0x80223aec:
    lwz     r0, 0x1c(r28)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x44
    add     r7, r0, r31
    lwz     r6, 0x0(r7)
    addi    r5, sp, 0x50
    lwz     r0, 0x4(r7)
    stw     r6, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x4c(sp)
    lfs     f31, 0xc(r7)
    lfs     f0, 0x48(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x48(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x50(sp)
    addi    r4, sp, 0x5c
    lfs     f3, 0x54(sp)
    fsubs   f4, f1, f31
    lfs     f0, 0x58(sp)
    fadds   f2, f3, f31
    fadds   f0, f0, f31
    stfs    f4, 0x5c(sp)
    fadds   f1, f1, f31
    stfs    f2, 0x60(sp)
    fsubs   f3, f3, f31
    stfs    f0, 0x64(sp)
    stfs    f1, 0x68(sp)
    stfs    f2, 0x6c(sp)
    stfs    f0, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f3, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f4, 0x80(sp)
    stfs    f3, 0x84(sp)
    stfs    f0, 0x88(sp)
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r31, r31, 0x10
branch_0x80223b9c:
    lhz     r0, 0x12(r28)
    cmpw    r29, r0
    blt+    branch_0x80223aec
    lwz     r3, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    mtlr    r0
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa8
    blr


.globl request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
request__16TQuestionManagerFQ29JGeometry8TVec3_f_f: # 0x80223be0
    lhz     r0, 0x12(r3)
    cmplwi  r0, 0x20
    bge-    branch_0x80223c6c
    lwz     r5, R13Off_m0x60b4(r13)
    lfs     f0, 0x14(r3)
    lfs     f3, 0x8(r5)
    lfs     f2, 0x8(r4)
    fmuls   f0, f0, f0
    lfs     f4, 0x0(r5)
    fsubs   f5, f3, f2
    lfs     f2, 0x0(r4)
    fsubs   f3, f4, f2
    fmuls   f2, f5, f5
    fmadds  f2, f3, f3, f2
    fcmpo   cr0, f2, f0
    bge-    branch_0x80223c6c
    lwz     r7, 0x1c(r3)
    slwi    r6, r0, 4
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    add     r6, r7, r6
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r6)
    lhz     r0, 0x12(r3)
    lwz     r4, 0x1c(r3)
    slwi    r0, r0, 4
    add     r4, r4, r0
    stfs    f1, 0xc(r4)
    lhz     r4, 0x12(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x12(r3)
    li      r3, 0x1
    blr

branch_0x80223c6c:
    li      r3, 0x0
    blr


.globl load__16TQuestionManagerFR20JSUMemoryInputStream
load__16TQuestionManagerFR20JSUMemoryInputStream: # 0x80223c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    stw     r28, 0x10(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r31, 0x0
    sth     r31, 0x10(r29)
    lis     r3, unk_8039d6e0@ha
    addi    r3, r3, unk_8039d6e0@l
    sth     r31, 0x12(r29)
    lfs     f0, -0x183c(r2)
    stfs    f0, 0x14(r29)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r30, r3, 0x0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80223ce0
    stw     r31, 0x28(r28)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x50(r28)
branch_0x80223ce0:
    stw     r28, 0x18(r29)
    li      r3, 0x208
    bl      __nwa__FUl
    lis     r4, __ct__16TQuestionRequestFv@h
    addi    r4, r4, __ct__16TQuestionRequestFv@l
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x20
    bl      __construct_new_array
    stw     r3, 0x1c(r29)
    li      r3, 0x20
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80223d24
    lis     r4, __vvt__10TDLTexQuad@ha
    addi    r0, r4, __vvt__10TDLTexQuad@l
    stw     r0, 0x0(r3)
branch_0x80223d24:
    stw     r3, 0x20(r29)
    li      r4, 0x20
    lwz     r3, 0x20(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r29, R13Off_m0x6138(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__16TQuestionRequestFv
__ct__16TQuestionRequestFv: # 0x80223d64
    blr

