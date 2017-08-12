
.globl __dt__18TMapObjWaterFilterFv
__dt__18TMapObjWaterFilterFv: # 0x801ea680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ea6d0
    lis     r3, __vvt__18TMapObjWaterFilter@h
    addi    r3, r3, __vvt__18TMapObjWaterFilter@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x801ea6d0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ea6d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__18TMapObjWaterFilterFPCc
__ct__18TMapObjWaterFilterFPCc: # 0x801ea6ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
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
    lfs     f1, -0x22b0(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801ea7e4
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
    lis     r3, __vvt__18TMapObjWaterFilter@h
    stw     r0, 0x20(r31)
    addi    r4, r3, __vvt__18TMapObjWaterFilter@l
    addi    r0, r4, 0x24
    lfs     f0, -0x22ac(r2)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x22b0(r2)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x44(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801ea7e4
set_f___Q29JGeometry8TVec3_f_Ffff_801ea7e4: # 0x801ea7e4
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl init__18TMapObjWaterFilterFv
init__18TMapObjWaterFilterFv: # 0x801ea7f4
    mflr    r0
    lis     r4, unk_80393100@h
    stw     r0, 0x4(sp)
    addi    r0, r4, unk_80393100@l
    lis     r6, 0x1121
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    mr      r3, r0
    lwz     r5, R13Off_m0x62b8(r13)
    lwz     r4, 0x40(r5)
    li      r5, 0x3
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x44(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl perform__18TMapObjWaterFilterFUlPQ26JDrama9TGraphics
perform__18TMapObjWaterFilterFUlPQ26JDrama9TGraphics: # 0x801ea840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stmw    r27, 0x114(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ea9c0
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ea9c0
    lwz     r28, R13Off_m0x7118(r13)
    li      r27, 0x1
    addi    r3, r28, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801ea8b4
    lwz     r0, 0x50(r28)
    cmpwi   r0, 0x49
    bne-    branch_0x801ea8a4
    mr      r0, r27
    b       branch_0x801ea8a8

branch_0x801ea8a4:
    li      r0, 0x0
branch_0x801ea8a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ea8b4
    li      r27, 0x0
branch_0x801ea8b4:
    clrlwi. r0, r27, 24
    beq-    branch_0x801ea8c4
    li      r0, 0x1
    b       branch_0x801ea8c8

branch_0x801ea8c4:
    li      r0, 0x0
branch_0x801ea8c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ea9c0
    lwz     r3, R13Off_m0x7118(r13)
    lfs     f0, -0x22b0(r2)
    addi    r27, r3, 0x124
    lfs     f2, 0x128(r3)
    fcmpo   cr0, f2, f0
    ble-    branch_0x801ea90c
    lwz     r3, R13Off_m0x626c(r13)
    lfs     f1, 0x0(r27)
    lfs     f3, 0x8(r27)
    bl      getHeight__11TMapObjWaveCFfff
    lfs     f0, 0x4(r27)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801ea90c
    b       branch_0x801ea9c0

branch_0x801ea90c:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x801ea9b0
    lfs     f0, -0x22ac(r2)
    li      r0, 0x0
    addi    r27, r31, 0xb4
    stfs    f0, 0x60(sp)
    addi    r3, sp, 0x60
    addi    r4, sp, 0xb0
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    sth     r0, 0x6c(sp)
    sth     r0, 0x6e(sp)
    sth     r0, 0x70(sp)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x74(sp)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x78(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x7c(sp)
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    lfs     f1, 0x24(r29)
    addi    r3, sp, 0x80
    lfs     f2, 0x28(r29)
    lfs     f3, 0x2c(r29)
    bl      PSMTXScale
    addi    r3, r27, 0x0
    addi    r4, sp, 0xe0
    bl      PSMTXInverse
    addi    r3, sp, 0xe0
    addi    r5, r3, 0x0
    addi    r4, sp, 0xb0
    bl      PSMTXConcat
    addi    r3, sp, 0xe0
    addi    r5, r3, 0x0
    addi    r4, sp, 0x80
    bl      PSMTXConcat
    lwz     r4, 0x44(r29)
    addi    r3, sp, 0xe0
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x801ea9b0:
    lwz     r3, 0x44(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x801ea9c0:
    lmw     r27, 0x114(sp)
    lwz     r0, 0x12c(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl __ct__18TMapObjSeaIndirectFPCc
__ct__18TMapObjSeaIndirectFPCc: # 0x801ea9d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
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
    lfs     f1, -0x22b0(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801ea7e4
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
    lis     r3, __vvt__18TMapObjSeaIndirect@h
    stw     r0, 0x20(r31)
    addi    r4, r3, __vvt__18TMapObjSeaIndirect@l
    addi    r0, r4, 0x24
    lfs     f0, -0x22ac(r2)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x22b0(r2)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x44(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl init__18TMapObjSeaIndirectFv
init__18TMapObjSeaIndirectFv: # 0x801eaacc
    mflr    r0
    lis     r5, unk_80393008@h
    stw     r0, 0x4(sp)
    lis     r6, 0x1121
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, unk_80393008@l
    li      r5, 0x3
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x11c
    lwz     r4, R13Off_m0x62b8(r13)
    lwz     r4, 0x40(r4)
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x44(r29)
    addi    r4, r31, 0x138
    lwz     r3, 0x44(r29)
    bl      setBtk__6MActorFPCc
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x144
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x144
    mtlr    r12
    blrl
    lwz     r4, 0x44(r29)
    lwz     r5, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r5, 0x20(r5)
    lwz     r4, 0x4(r3)
    lwz     r3, 0x0(r5)
    lwz     r6, 0xac(r4)
    lwz     r0, 0x4(r5)
    lwz     r4, 0x4(r6)
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
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl perform__18TMapObjSeaIndirectFUlPQ26JDrama9TGraphics
perform__18TMapObjSeaIndirectFUlPQ26JDrama9TGraphics: # 0x801eabf4
    blr


.globl __dt__18TMapObjSeaIndirectFv
__dt__18TMapObjSeaIndirectFv: # 0x801eabf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801eac48
    lis     r3, __vvt__18TMapObjSeaIndirect@h
    addi    r3, r3, __vvt__18TMapObjSeaIndirect@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x801eac48
    mr      r3, r30
    bl      __dl__FPv
branch_0x801eac48:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjWater_cpp
__sinit_MapObjWater_cpp: # 0x801eac64
    mflr    r0
    lis     r3, unk_803fa420@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fa420@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801eacac
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801eacac:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801eacdc
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801eacdc:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801ead0c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801ead0c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ead3c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801ead3c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ead6c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801ead6c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ead9c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801ead9c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801eadcc
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801eadcc:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801eadfc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801eadfc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801eae2c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801eae2c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801eae5c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801eae5c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801eae8c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801eae8c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801eaebc
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801eaebc:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801eaeec
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801eaeec:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801eaf1c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801eaf1c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801eaf4c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801eaf4c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801eaf60
unk_801eaf60: # 0x801eaf60
    addi    r3, r3, -0x20
    b       __dt__18TMapObjSeaIndirectFv


.globl unk_801eaf68
unk_801eaf68: # 0x801eaf68
    addi    r3, r3, -0x20
    b       __dt__18TMapObjWaterFilterFv

