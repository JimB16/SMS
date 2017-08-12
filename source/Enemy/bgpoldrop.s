
.globl __dt__10TBGPolDropFv
__dt__10TBGPolDropFv: # 0x800ff5cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ff61c
    lis     r3, __vvt__10TBGPolDrop@ha
    addi    r3, r3, __vvt__10TBGPolDrop@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x800ff61c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ff61c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__10TBGPolDropFUlPQ26JDrama9TGraphics
perform__10TBGPolDropFUlPQ26JDrama9TGraphics: # 0x800ff638
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stmw    r27, 0xbc(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x58(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x800ff858
    clrlwi. r0, r28, 31
    beq-    branch_0x800ff670
    mr      r3, r27
    bl      move__10TBGPolDropFv
branch_0x800ff670:
    rlwinm. r31, r28, 0, 30, 30
    beq-    branch_0x800ff814
    lwz     r3, 0x50(r27)
    lwz     r0, 0x58(r27)
    lwz     r3, 0x4(r3)
    cmpwi   r0, 0x1
    addi    r30, r3, 0x20
    bne-    branch_0x800ff794
    lis     r3, unk_0000c000@ha
    lwz     r0, R13Off_m0x5eac(r13)
    addi    r3, r3, unk_0000c000@l
    lwz     r5, R13Off_m0x5ea8(r13)
    sraw    r0, r3, r0
    lwz     r4, R13Off_m0x5ea4(r13)
    slwi    r0, r0, 2
    lfs     f0, -0x56f0(r2)
    lfsx    f2, r5, r0
    addi    r3, sp, 0x64
    lfsx    f3, r4, r0
    addi    r4, r27, 0x44
    lfs     f1, -0x56ec(r2)
    stfs    f0, 0x70(sp)
    fneg    f0, f2
    stfs    f1, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x80(sp)
    stfs    f3, 0x84(sp)
    stfs    f0, 0x88(sp)
    stfs    f1, 0x8c(sp)
    stfs    f1, 0x90(sp)
    stfs    f2, 0x94(sp)
    stfs    f3, 0x98(sp)
    stfs    f1, 0x9c(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r4, 0x64(sp)
    mr      r3, r30
    lwz     r0, 0x68(sp)
    stw     r4, 0x30(r27)
    stw     r0, 0x34(r27)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x38(r27)
    lfs     f0, 0x38(r27)
    lfs     f2, -0x56e8(r2)
    lfs     f1, 0x34(r27)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r27)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r27)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r27)
    fctiwz  f5, f2
    lfs     f2, 0x14(r27)
    fctiwz  f0, f0
    stfd    f4, 0xa8(sp)
    stfd    f5, 0xb0(sp)
    lwz     r5, 0xac(sp)
    stfd    f0, 0xa0(sp)
    lwz     r4, 0xb4(sp)
    lwz     r6, 0xa4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x70
    bl      PSMTXConcat
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r27, 0x0
    addi    r5, r27, 0x10
    li      r4, 0x13a
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800ff7b4

branch_0x800ff794:
    mr      r3, r30
    bl      PSMTXIdentity
    lfs     f0, 0x10(r27)
    stfs    f0, 0xc(r30)
    lfs     f0, 0x14(r27)
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x18(r27)
    stfs    f0, 0x2c(r30)
branch_0x800ff7b4:
    lwz     r4, 0x50(r27)
    lwz     r3, 0x24(r27)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r27)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r27)
    stw     r0, 0x1c(r4)
    lwz     r0, 0x58(r27)
    cmpwi   r0, 0x2
    bne-    branch_0x800ff814
    lwz     r5, 0x54(r27)
    mr      r3, r30
    lwz     r4, 0x24(r27)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x28(r27)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x2c(r27)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x54(r27)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x800ff814:
    lwz     r3, 0x50(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x58(r27)
    cmpwi   r0, 0x2
    bne-    branch_0x800ff858
    cmplwi  r31, 0x0
    beq-    branch_0x800ff840
    lwz     r3, 0x54(r27)
    bl      calcAnm__6MActorFv
branch_0x800ff840:
    rlwinm. r0, r28, 0, 22, 22
    beq-    branch_0x800ff858
    lwz     r4, 0x54(r27)
    lwz     r3, R13Off_m0x62f0(r13)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x800ff858:
    lmw     r27, 0xbc(sp)
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl launch__10TBGPolDropFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
launch__10TBGPolDropFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x800ff86c
    lwz     r7, 0x0(r5)
    li      r0, 0x1
    lwz     r6, 0x4(r5)
    stw     r7, 0x44(r3)
    stw     r6, 0x48(r3)
    lwz     r5, 0x8(r5)
    stw     r5, 0x4c(r3)
    lwz     r6, 0x0(r4)
    lwz     r5, 0x4(r4)
    stw     r6, 0x10(r3)
    stw     r5, 0x14(r3)
    lwz     r4, 0x8(r4)
    stw     r4, 0x18(r3)
    lfs     f0, -0x56f0(r2)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x2c(r3)
    lfs     f0, -0x56ec(r2)
    stfs    f0, 0x38(r3)
    stfs    f0, 0x34(r3)
    stfs    f0, 0x30(r3)
    stw     r0, 0x58(r3)
    blr


.globl move__10TBGPolDropFv
move__10TBGPolDropFv: # 0x800ff8c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    lwz     r0, 0x58(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x800ffb00
    lwz     r3, 0x10(r31)
    addi    r30, sp, 0x2c
    lwz     r0, 0x14(r31)
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x2c(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x44(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x48(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x4c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lwz     r0, 0x58(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800ffac0
    lfs     f1, 0x48(r31)
    addi    r4, sp, 0x20
    lfs     f0, -0x56e4(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(r31)
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x24(sp)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x2c(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x20(sp)
    lfs     f0, -0x56f0(r2)
    lhz     r0, 0x4(r3)
    fadds   f1, f1, f0
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800ff98c
    li      r0, 0x1
    b       branch_0x800ff990

branch_0x800ff98c:
    li      r0, 0x0
branch_0x800ff990:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ff9a4
    li      r0, 0x0
    stw     r0, 0x58(r31)
    b       branch_0x800ffb00

branch_0x800ff9a4:
    lfs     f0, 0x28(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800ffa5c
    li      r0, 0x2
    stw     r0, 0x58(r31)
    li      r4, 0xc
    stfs    f1, 0x28(sp)
    lfs     f0, -0x56ec(r2)
    stfs    f0, 0x4c(r31)
    stfs    f0, 0x48(r31)
    stfs    f0, 0x44(r31)
    lwz     r3, 0x50(r31)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800ff9f8
    lwz     r3, 0x50(r31)
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x54(r31)
    li      r4, 0xd
    bl      setBckFromIndex__6MActorFi
branch_0x800ff9f8:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, sp, 0x24
    li      r4, 0x9e
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, sp, 0x24
    li      r4, 0x9f
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2871
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ffa94
    addi    r4, r31, 0x10
    li      r3, 0x2871
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800ffa94

branch_0x800ffa5c:
    lwz     r3, 0x50(r31)
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800ffa88
    lwz     r3, 0x50(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800ffa94
branch_0x800ffa88:
    lwz     r3, 0x50(r31)
    li      r4, 0xb
    bl      setBckFromIndex__6MActorFi
branch_0x800ffa94:
    lwz     r3, R13Off_m0x6328(r13)
    mr      r5, r30
    lfs     f1, 0x28(sp)
    addi    r4, sp, 0x24
    lfs     f2, -0x56e0(r2)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    beq-    branch_0x800ffae8
    li      r0, 0x0
    stw     r0, 0x58(r31)
    b       branch_0x800ffae8

branch_0x800ffac0:
    cmpwi   r0, 0x2
    bne-    branch_0x800ffae8
    lwz     r3, 0x50(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800ffae8
    li      r0, 0x0
    stw     r0, 0x58(r31)
branch_0x800ffae8:
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x18(r31)
branch_0x800ffb00:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __ct__10TBGPolDropFPCc
__ct__10TBGPolDropFPCc: # 0x800ffb18
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
    lfs     f1, -0x56ec(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800ffc24
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
    lis     r3, __vvt__10TBGPolDrop@ha
    stw     r0, 0x20(r31)
    addi    r4, r3, __vvt__10TBGPolDrop@l
    addi    r0, r4, 0x24
    lfs     f0, -0x56f0(r2)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x56ec(r2)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x50(r31)
    stw     r5, 0x54(r31)
    stw     r5, 0x58(r31)
    stfs    f0, 0x4c(r31)
    stfs    f0, 0x48(r31)
    stfs    f0, 0x44(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800ffc24
set_f___Q29JGeometry8TVec3_f_Ffff_800ffc24: # 0x800ffc24
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __sinit_bgpoldrop_cpp
__sinit_bgpoldrop_cpp: # 0x800ffc34
    mflr    r0
    lis     r3, unk_803f2ae8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2ae8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffc7c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800ffc7c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffcac
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800ffcac:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffcdc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800ffcdc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffd0c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x800ffd0c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffd3c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800ffd3c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffd6c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800ffd6c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffd9c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800ffd9c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffdcc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800ffdcc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffdfc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800ffdfc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffe2c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800ffe2c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffe5c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800ffe5c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffe8c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800ffe8c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffebc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800ffebc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800ffeec
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800ffeec:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800fff1c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800fff1c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_800fff30
unk_800fff30: # 0x800fff30
    addi    r3, r3, -0x20
    b       __dt__10TBGPolDropFv

