
.globl SMS_CreateMinimumSDLModel__FPCc
SMS_CreateMinimumSDLModel__FPCc: # 0x80233d7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r31, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80233dbc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x80233dbc:
    addi    r31, r30, 0x0
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80233de4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x3
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x80233de4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl SMS_CreatePartsModel__FPcUl
SMS_CreatePartsModel__FPcUl: # 0x80233e00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r30
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r31, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80233e50
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80233e50:
    lwz     r0, 0x2c(sp)
    mr      r3, r29
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl SMS_RideMoveCalcLocalPos__FP11TRidingInfoRCQ29JGeometry8TVec3_f_
SMS_RideMoveCalcLocalPos__FP11TRidingInfoRCQ29JGeometry8TVec3_f_: # 0x80233e70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r3
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80233ef8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80233ec0
    lwz     r3, 0x0(r30)
    addi    r4, sp, 0x10
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80233edc

branch_0x80233ec0:
    lwz     r3, 0x0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x10
    bl      PSMTXCopy
branch_0x80233edc:
    addi    r3, sp, 0x10
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    addi    r4, r31, 0x0
    addi    r3, sp, 0x10
    addi    r5, r30, 0x4
    bl      PSMTXMultVec
branch_0x80233ef8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl SMS_RideMoveByGroundActor__FP11TRidingInfoPQ29JGeometry8TVec3_f_Pf
SMS_RideMoveByGroundActor__FP11TRidingInfoPQ29JGeometry8TVec3_f_Pf: # 0x80233f10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r5
    stw     r30, 0x98(sp)
    mr      r30, r4
    stw     r29, 0x94(sp)
    mr      r29, r3
    lfs     f1, -0x15d0(rtoc)
    lfs     f0, 0x4(r4)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r4)
    lfs     f3, 0x8(r30)
    addi    r4, sp, 0x88
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x88(sp)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80234080
    lfs     f2, 0x4(r30)
    lfs     f0, -0x15cc(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80234080
    lwz     r3, 0x0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80233f8c
    cmplw   r3, r0
    beq-    branch_0x80234000
branch_0x80233f8c:
    stw     r0, 0x0(r29)
    lwz     r3, 0x0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80234088
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80233fc4
    lwz     r3, 0x0(r29)
    addi    r4, sp, 0x20
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80233fe0

branch_0x80233fc4:
    lwz     r3, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x20
    bl      PSMTXCopy
branch_0x80233fe0:
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    addi    r4, r30, 0x0
    addi    r3, sp, 0x20
    addi    r5, r29, 0x4
    bl      PSMTXMultVec
    b       branch_0x80234088

branch_0x80234000:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80234028
    lwz     r3, 0x0(r29)
    addi    r4, sp, 0x58
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80234044

branch_0x80234028:
    lwz     r3, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x58
    bl      PSMTXCopy
branch_0x80234044:
    addi    r5, r30, 0x0
    addi    r3, sp, 0x58
    addi    r4, r29, 0x4
    bl      PSMTXMultVec
    lwz     r3, 0x0(r29)
    lfs     f2, 0x0(r31)
    lfs     f1, 0x34(r3)
    lfs     f0, 0x10(r29)
    fadds   f1, f2, f1
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r31)
    lwz     r3, 0x0(r29)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x10(r29)
    b       branch_0x80234088

branch_0x80234080:
    li      r0, 0x0
    stw     r0, 0x0(r29)
branch_0x80234088:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl update__9TMultiBtkFv
update__9TMultiBtkFv: # 0x802340a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    li      r30, 0x0
    stw     r29, 0x24(sp)
    li      r29, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    b       branch_0x80234104

branch_0x802340d4:
    lwz     r0, 0xc(r28)
    add     r3, r0, r30
    bl      update__12J3DFrameCtrlFv
    lwz     r3, 0x4(r28)
    addi    r0, r30, 0x10
    lwz     r4, 0xc(r28)
    addi    r29, r29, 0x1
    lwzx    r3, r3, r31
    lfsx    f0, r4, r0
    addi    r31, r31, 0x4
    addi    r30, r30, 0x14
    stfs    f0, 0x4(r3)
branch_0x80234104:
    lwz     r0, 0x0(r28)
    cmpw    r29, r0
    blt+    branch_0x802340d4
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl setNthData__9TMultiBtkFiP19J3DAnmTextureSRTKey
setNthData__9TMultiBtkFiP19J3DAnmTextureSRTKey: # 0x80234130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r29, r3, 0x0
    slwi    r31, r4, 2
    addi    r30, r4, 0x0
    lwz     r3, 0x4(r3)
    stwx    r5, r3, r31
    lwz     r3, 0x4(r29)
    lwz     r4, 0x8(r29)
    lwzx    r3, r3, r31
    bl      searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
    cmpwi   r30, 0x0
    bne-    branch_0x802341d4
    lis     r3, 0x803e
    addi    r28, r3, 0x1798
    li      r26, 0x0
    b       branch_0x802341c0

branch_0x8023417c:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80234198
    stw     r28, 0x0(r25)
    mr      r3, r25
    bl      initialize__14J3DMaterialAnmFv
branch_0x80234198:
    lwz     r3, 0x8(r29)
    clrlslwi  r27, r26, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r27
    bl      change__11J3DMaterialFv
    lwz     r3, 0x8(r29)
    addi    r26, r26, 0x1
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r27
    stw     r25, 0x38(r3)
branch_0x802341c0:
    lwz     r3, 0x8(r29)
    clrlwi  r4, r26, 16
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x8023417c
branch_0x802341d4:
    lwz     r4, 0x4(r29)
    lwz     r3, 0x8(r29)
    lwzx    r4, r4, r31
    bl      entryTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey
    lwz     r4, 0x4(r29)
    mulli   r27, r30, 0x14
    lwz     r3, 0xc(r29)
    lwzx    r4, r4, r31
    addi    r0, r27, 0x8
    lha     r4, 0x2(r4)
    sthx    r4, r3, r0
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x15c8(rtoc)
    addi    r0, r27, 0xc
    lwz     r3, 0xc(r29)
    fmuls   f0, f0, f1
    stfsx   f0, r3, r0
    lwz     r0, 0x74(sp)
    lmw     r25, 0x54(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__9TMultiBtkFiP12J3DModelData
__ct__9TMultiBtkFiP12J3DModelData: # 0x8023422c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    stw     r31, 0x0(r3)
    slwi    r3, r4, 2
    bl      __nwa__FUl
    stw     r3, 0x4(r29)
    mulli   r3, r31, 0x14
    stw     r30, 0x8(r29)
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8004
    lis     r5, 0x8003
    addi    r4, r4, 0x4b1c
    subi    r5, r5, 0x1e58
    addi    r7, r31, 0x0
    li      r6, 0x14
    bl      __construct_new_array
    stw     r3, 0xc(r29)
    mr      r3, r29
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr

