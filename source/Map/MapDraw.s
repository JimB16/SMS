
.globl __dt__12TMapDrawWallFv
__dt__12TMapDrawWallFv: # 0x8018e658
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8018e6b0
    lis     r3, __vvt__12TMapDrawWall@h
    addi    r0, r3, __vvt__12TMapDrawWall@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8018e6a0
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8018e6a0:
    extsh.  r0, r31
    ble-    branch_0x8018e6b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8018e6b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl draw__4TMapCFUlPQ26JDrama9TGraphics
draw__4TMapCFUlPQ26JDrama9TGraphics: # 0x8018e6cc
    blr


.globl __ct__12TMapDrawWallFPCc
__ct__12TMapDrawWallFPCc: # 0x8018e6d0
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__12TMapDrawWall@h
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__12TMapDrawWall@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    lwz     r0, R2Off_m0x43d4(r2)
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0x14(r31)
    stw     r4, 0x18(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__12TMapDrawWallFR20JSUMemoryInputStream
load__12TMapDrawWallFR20JSUMemoryInputStream: # 0x8018e750
    mflr    r0
    lis     r4, unk_80388f50@ha
    stw     r0, 0x4(sp)
    addi    r0, r4, unk_80388f50@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    mr      r3, r0
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x10(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__12TMapDrawWallFUlPQ26JDrama9TGraphics
perform__12TMapDrawWallFUlPQ26JDrama9TGraphics: # 0x8018e78c
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0xc8(sp)
    stmw    r26, 0xb0(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8018eaa0
    lwz     r3, R13Off_m0x7118(r13)
    lha     r0, 0x2c8(r3)
    cmpwi   r0, -0x1
    bne-    branch_0x8018e7e4
    lwz     r3, 0x18(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x8018e7fc
    addi    r0, r3, -0x5
    stw     r0, 0x18(r30)
    lwz     r0, 0x18(r30)
    cmpwi   r0, 0x0
    bge-    branch_0x8018e7fc
    li      r0, 0x0
    stw     r0, 0x18(r30)
    b       branch_0x8018e7fc

branch_0x8018e7e4:
    lbz     r0, 0x17(r30)
    lwz     r3, 0x18(r30)
    cmpw    r0, r3
    ble-    branch_0x8018e7fc
    addi    r0, r3, 0x3
    stw     r0, 0x18(r30)
branch_0x8018e7fc:
    lwz     r4, 0x18(r30)
    cmpwi   r4, 0x0
    beq-    branch_0x8018eaa0
    lbz     r0, 0x17(r30)
    addi    r3, sp, 0x7c
    subf    r31, r4, r0
    bl      PSMTXIdentity
    addi    r3, sp, 0x7c
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
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
    lwz     r0, R2Off_m0x43d8(r2)
    addi    r4, sp, 0x24
    li      r3, 0x4
    stw     r0, 0x20(sp)
    lbz     r0, 0x14(r30)
    stb     r0, 0x20(sp)
    lbz     r0, 0x15(r30)
    stb     r0, 0x21(sp)
    lbz     r0, 0x16(r30)
    stb     r0, 0x22(sp)
    lwz     r0, 0x18(r30)
    stb     r0, 0x23(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r4, 0x10(r30)
    li      r27, 0x0
    addi    r3, sp, 0x28
    stw     r27, 0x50(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x78(sp)
    addi    r3, sp, 0x28
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
    li      r4, 0x7
    li      r5, 0x5
    li      r6, 0x4
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
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    bl      GXSetZCompLoc
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    neg     r0, r31
    extsh   r28, r0
    lis     r29, 0xcc01
    sth     r28, -0x8000(r29)
    sth     r28, -0x8000(r29)
    sth     r27, -0x8000(r29)
    sth     r27, -0x8000(r29)
    bl      SMSGetGameRenderWidth__Fv
    add     r0, r31, r3
    sth     r0, -0x8000(r29)
    li      r30, 0x1
    sth     r28, -0x8000(r29)
    sth     r30, -0x8000(r29)
    sth     r27, -0x8000(r29)
    bl      SMSGetGameRenderHeight__Fv
    add     r26, r31, r3
    bl      SMSGetGameRenderWidth__Fv
    add     r0, r31, r3
    sth     r0, -0x8000(r29)
    sth     r26, -0x8000(r29)
    sth     r30, -0x8000(r29)
    sth     r30, -0x8000(r29)
    bl      SMSGetGameRenderHeight__Fv
    sth     r28, -0x8000(r29)
    add     r0, r31, r3
    addi    r3, sp, 0x28
    sth     r0, -0x8000(r29)
    li      r4, -0x1
    sth     r27, -0x8000(r29)
    sth     r30, -0x8000(r29)
    bl      __dt__10JUTTextureFv
branch_0x8018eaa0:
    lmw     r26, 0xb0(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl __sinit_MapDraw_cpp
__sinit_MapDraw_cpp: # 0x8018eab4
    mflr    r0
    lis     r3, unk_803f7c98@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f7c98@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8018eafc
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8018eafc:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8018eb2c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8018eb2c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8018eb5c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8018eb5c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8018eb8c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8018eb8c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ebbc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8018ebbc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ebec
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8018ebec:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ec1c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8018ec1c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ec4c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8018ec4c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ec7c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8018ec7c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ecac
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8018ecac:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ecdc
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8018ecdc:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ed0c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8018ed0c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ed3c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8018ed3c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ed6c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8018ed6c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ed9c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8018ed9c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

