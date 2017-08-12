
.globl __dt__8TShimmerFv
__dt__8TShimmerFv: # 0x8019f3f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8019f444
    lis     r3, __vvt__8TShimmer@h
    addi    r3, r3, __vvt__8TShimmer@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x8019f444
    mr      r3, r30
    bl      __dl__FPv
branch_0x8019f444:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__8TShimmerFPCc
__ct__8TShimmerFPCc: # 0x8019f460
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    stw     r31, 0x10(sp)
    stw     r31, 0x14(sp)
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r30, 0x14(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x10
    lfs     f1, -0x4150(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8019f59c
    li      r5, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r5, 0x1c(r30)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage6TActor@h
    stw     r0, 0x20(r31)
    addi    r0, r3, __vvt__Q26JStage6TActor@l
    lis     r3, __vvt__Q26JDrama6TActor@h
    stw     r0, 0x20(r31)
    addi    r3, r3, __vvt__Q26JDrama6TActor@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__8TShimmer@h
    stw     r0, 0x20(r31)
    addi    r4, r3, __vvt__8TShimmer@l
    addi    r0, r4, 0x24
    lfs     f1, -0x414c(r2)
    li      r3, 0x14
    stfs    f1, 0x24(r31)
    fmr     f0, f1
    stfs    f1, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x4150(r2)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x44(r31)
    stw     r5, 0x48(r31)
    stw     r5, 0x54(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8019f574
    lis     r3, __vvt__12J3DFrameCtrl@ha
    addi    r0, r3, __vvt__12J3DFrameCtrl@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
branch_0x8019f574:
    lwz     r3, 0x8(sp)
    li      r0, 0x0
    stw     r30, 0x58(r3)
    sth     r0, 0x7c(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8019f59c
set_f___Q29JGeometry8TVec3_f_Ffff_8019f59c: # 0x8019f59c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl load__8TShimmerFR20JSUMemoryInputStream
load__8TShimmerFR20JSUMemoryInputStream: # 0x8019f5ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stmw    r27, 0xbc(sp)
    addi    r31, r3, 0x0
    addi    r28, r4, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r28, 0x0
    addi    r4, sp, 0x94
    li      r5, 0x20
    bl      readString__14JSUInputStreamFPcUs
    lis     r3, unk_8038a1c8@ha
    crxor   6, 6, 6
    addi    r5, r3, unk_8038a1c8@l
    addi    r3, sp, 0x54
    addi    r6, sp, 0x94
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x54
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1101
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x44(r31)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8019f62c
    lwz     r4, 0x44(r31)
    addi    r3, r28, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8019f62c:
    lis     r3, unk_8038a1e0@ha
    stw     r28, 0x48(r31)
    addi    r5, r3, unk_8038a1e0@l
    crxor   6, 6, 6
    addi    r3, sp, 0x54
    addi    r6, sp, 0x94
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x54
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x54(r31)
    lwz     r3, 0x54(r31)
    lwz     r4, 0x44(r31)
    bl      searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
    lis     r3, __vvt__14J3DMaterialAnm@h
    addi    r30, r3, __vvt__14J3DMaterialAnm@l
    li      r28, 0x0
    b       branch_0x8019f6bc

branch_0x8019f678:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8019f694
    stw     r30, 0x0(r27)
    mr      r3, r27
    bl      initialize__14J3DMaterialAnmFv
branch_0x8019f694:
    lwz     r3, 0x44(r31)
    clrlslwi  r29, r28, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r29
    bl      change__11J3DMaterialFv
    lwz     r3, 0x44(r31)
    addi    r28, r28, 0x1
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r29
    stw     r27, 0x38(r3)
branch_0x8019f6bc:
    lwz     r3, 0x44(r31)
    clrlwi  r0, r28, 16
    lhz     r4, 0x24(r3)
    cmplw   r0, r4
    blt+    branch_0x8019f678
    lwz     r4, 0x54(r31)
    bl      entryTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey
    li      r5, 0x0
    b       branch_0x8019f6fc

branch_0x8019f6e0:
    lwz     r3, 0x28(r4)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x1c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x1c(r3)
branch_0x8019f6fc:
    lwz     r4, 0x44(r31)
    clrlwi  r0, r5, 16
    lhz     r3, 0x24(r4)
    cmplw   r0, r3
    blt+    branch_0x8019f6e0
    lwz     r4, 0x54(r31)
    lwz     r3, 0x58(r31)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x58(r31)
    li      r0, 0x2
    stb     r0, 0x4(r3)
    lwz     r0, 0xd4(sp)
    lmw     r27, 0xbc(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl loadAfter__8TShimmerFv
loadAfter__8TShimmerFv: # 0x8019f740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_8038a1f8@ha
    addi    r31, r3, unk_8038a1f8@l
    lwz     r30, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    lwz     r3, 0x44(r29)
    lwz     r5, 0x20(r4)
    lwz     r6, 0xac(r3)
    lwz     r3, 0x0(r5)
    lwz     r4, 0x4(r6)
    lwz     r0, 0x4(r5)
    stw     r3, 0x20(r4)
    stw     r0, 0x24(r4)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x28(r4)
    stw     r0, 0x2c(r4)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r3, 0x30(r4)
    stw     r0, 0x34(r4)
    lwz     r3, 0x18(r5)
    lwz     r0, 0x1c(r5)
    stw     r3, 0x38(r4)
    stw     r0, 0x3c(r4)
    lwz     r3, 0x4(r6)
    addi    r4, r3, 0x3c
    lwz     r0, 0x3c(r3)
    addi    r3, r3, 0x20
    add     r0, r5, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, 0x4(r6)
    addi    r4, r3, 0x2c
    lwz     r0, 0x2c(r3)
    addi    r3, r3, 0x20
    add     r0, r5, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl perform__8TShimmerFUlPQ26JDrama9TGraphics
perform__8TShimmerFUlPQ26JDrama9TGraphics: # 0x8019f83c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x198(sp)
    stw     r31, 0x194(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x190(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x18c(sp)
    addi    r29, r3, 0x0
    lwz     r6, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r6)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x8019f878
    li      r0, 0x1
    b       branch_0x8019f87c

branch_0x8019f878:
    li      r0, 0x0
branch_0x8019f87c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019faa8
    clrlwi. r0, r30, 31
    beq-    branch_0x8019f8a4
    lwz     r4, 0x58(r29)
    lwz     r3, 0x54(r29)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x58(r29)
    bl      update__12J3DFrameCtrlFv
branch_0x8019f8a4:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x8019fa68
    lwz     r3, R13Off_m0x60d8(r13)
    bl      isWearingCap__6TMarioFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8019f960
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0xe0(r3)
    lhz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x8019f8d8
    li      r0, 0x1
    b       branch_0x8019f8dc

branch_0x8019f8d8:
    li      r0, 0x0
branch_0x8019f8dc:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019f960
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x106
    beq-    branch_0x8019f908
    cmplwi  r3, 0x105
    beq-    branch_0x8019f908
    addi    r0, r3, -0x108
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    bgt-    branch_0x8019f910
branch_0x8019f908:
    li      r0, 0x1
    b       branch_0x8019f914

branch_0x8019f910:
    li      r0, 0x0
branch_0x8019f914:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019f960
    cmplwi  r3, 0x104
    beq-    branch_0x8019f934
    cmplwi  r3, 0x105
    beq-    branch_0x8019f934
    cmplwi  r3, 0x4104
    bne-    branch_0x8019f93c
branch_0x8019f934:
    li      r0, 0x1
    b       branch_0x8019f940

branch_0x8019f93c:
    li      r0, 0x0
branch_0x8019f940:
    clrlwi. r0, r0, 24
    bne-    branch_0x8019f960
    lfs     f0, -0x4150(r2)
    stfs    f0, 0x10(r29)
    stfs    f0, 0x14(r29)
    lfs     f0, -0x4148(r2)
    stfs    f0, 0x18(r29)
    b       branch_0x8019f970

branch_0x8019f960:
    lfs     f0, -0x4150(r2)
    stfs    f0, 0x10(r29)
    stfs    f0, 0x14(r29)
    stfs    f0, 0x18(r29)
branch_0x8019f970:
    addi    r3, sp, 0x148
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    lwz     r3, 0x48(r29)
    li      r4, 0x1
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x148
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    lfs     f0, -0x414c(r2)
    li      r0, 0x0
    addi    r31, r31, 0xb4
    stfs    f0, 0x98(sp)
    addi    r3, sp, 0x98
    addi    r4, sp, 0xe8
    stfs    f0, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    sth     r0, 0xa4(sp)
    sth     r0, 0xa6(sp)
    sth     r0, 0xa8(sp)
    lfs     f0, 0x10(r29)
    stfs    f0, 0xac(sp)
    lfs     f0, 0x14(r29)
    stfs    f0, 0xb0(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0xb4(sp)
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    lfs     f1, 0x24(r29)
    addi    r3, sp, 0xb8
    lfs     f2, 0x28(r29)
    lfs     f3, 0x2c(r29)
    bl      PSMTXScale
    addi    r3, r31, 0x0
    addi    r4, sp, 0x118
    bl      PSMTXInverse
    addi    r3, sp, 0x118
    addi    r5, r3, 0x0
    addi    r4, sp, 0xe8
    bl      PSMTXConcat
    addi    r3, sp, 0x118
    addi    r5, r3, 0x0
    addi    r4, sp, 0xb8
    bl      PSMTXConcat
    lwz     r4, 0x48(r29)
    addi    r3, sp, 0x118
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x48(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x8019fa68:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x8019faa8
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x8019fa94
    lwz     r3, R13Off_m0x7118(r13)
    lfs     f0, -0x4150(r2)
    lfs     f1, 0x128(r3)
    fcmpo   cr0, f1, f0
    blt-    branch_0x8019faa8
branch_0x8019fa94:
    lwz     r3, 0x48(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8019faa8:
    lwz     r0, 0x19c(sp)
    lwz     r31, 0x194(sp)
    lwz     r30, 0x190(sp)
    mtlr    r0
    lwz     r29, 0x18c(sp)
    addi    sp, sp, 0x198
    blr


.globl __sinit_Shimmer_cpp
__sinit_Shimmer_cpp: # 0x8019fac4
    mflr    r0
    lis     r3, unk_803f8818@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f8818@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fb0c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8019fb0c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fb3c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8019fb3c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fb6c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8019fb6c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fb9c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8019fb9c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fbcc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8019fbcc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fbfc
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8019fbfc:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fc2c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8019fc2c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fc5c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8019fc5c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fc8c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8019fc8c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fcbc
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8019fcbc:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fcec
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8019fcec:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fd1c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8019fd1c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fd4c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8019fd4c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fd7c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8019fd7c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019fdac
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8019fdac:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8019fdc0
unk_8019fdc0: # 0x8019fdc0
    addi    r3, r3, -0x20
    b       __dt__8TShimmerFv

