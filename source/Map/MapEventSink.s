
.globl __dt__24TMapEventSinkShadowMarioFv
__dt__24TMapEventSinkShadowMarioFv: # 0x8018f3c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8018f440
    lis     r3, 0x803c
    addi    r0, r3, 0x17d0
    stw     r0, 0x0(r30)
    beq-    branch_0x8018f430
    lis     r3, 0x803c
    addi    r0, r3, 0x1920
    stw     r0, 0x0(r30)
    beq-    branch_0x8018f430
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r30)
    beq-    branch_0x8018f430
    lis     r3, 0x803e
    subi    r0, r3, 0x1298
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TViewObjFv
branch_0x8018f430:
    extsh.  r0, r31
    ble-    branch_0x8018f440
    mr      r3, r30
    bl      __dl__FPv
branch_0x8018f440:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl watch__13TMapEventSinkFv
watch__13TMapEventSinkFv: # 0x8018f45c
    li      r3, 0x0
    blr


.globl initWithBuildingNum__24TMapEventSinkShadowMarioFR20JSUMemoryInputStream
initWithBuildingNum__24TMapEventSinkShadowMarioFR20JSUMemoryInputStream: # 0x8018f464
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    addi    r4, sp, 0x18
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    stw     r0, 0x24(r30)
    lwz     r31, 0x20(r30)
    mulli   r3, r31, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8002
    addi    r4, r4, 0x10dc
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x50(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x58(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x5c(r30)
    lwz     r3, 0x20(r30)
    bl      __nwa__FUl
    stw     r3, 0x54(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x60(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x64(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x68(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl initBuilding__24TMapEventSinkShadowMarioFiR20JSUMemoryInputStream
initBuilding__24TMapEventSinkShadowMarioFiR20JSUMemoryInputStream: # 0x8018f534
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x4
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    addi    r4, sp, 0x14
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x14(sp)
    slwi    r31, r29, 2
    lwz     r4, 0x60(r28)
    mr      r3, r30
    li      r5, 0x4
    sthx    r0, r4, r31
    addi    r4, sp, 0x14
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x60(r28)
    addi    r3, r29, 0x1
    lwz     r6, 0x14(sp)
    li      r4, 0x0
    add     r5, r0, r31
    sth     r6, 0x2(r5)
    bl      newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
    lwz     r5, 0x58(r28)
    li      r4, 0x0
    stwx    r3, r5, r31
    addi    r3, r29, 0x1
    bl      newAndInitBuildingCollisionMove__11TMapObjBaseFiP10TLiveActor
    lwz     r4, 0x5c(r28)
    stwx    r3, r4, r31
    mr      r3, r30
    bl      readString__14JSUInputStreamFv
    lwz     r4, 0x68(r28)
    stwx    r3, r4, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl loadAfter__24TMapEventSinkShadowMarioFv
loadAfter__24TMapEventSinkShadowMarioFv: # 0x8018f5f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    mr      r27, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r28, 0x0
    li      r31, 0x0
    b       branch_0x8018f69c

branch_0x8018f618:
    lwz     r4, 0x68(r27)
    lwz     r3, -0x5db8(r13)
    lwzx    r30, r4, r31
    lwz     r29, 0x4(r3)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    lwz     r4, 0x64(r27)
    addi    r0, r3, 0x0
    addi    r3, r27, 0x0
    stwx    r0, r4, r31
    mr      r4, r28
    lwz     r12, 0x0(r27)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r4, 0xc(r3)
    addi    r28, r28, 0x1
    lwz     r3, 0x64(r27)
    lfs     f1, 0x50(r4)
    lwzx    r3, r3, r31
    addi    r31, r31, 0x4
    lfs     f0, 0x44(r4)
    lfs     f2, 0x14(r3)
    fsubs   f0, f1, f0
    fsubs   f0, f2, f0
    stfs    f0, 0x14(r3)
branch_0x8018f69c:
    lwz     r0, 0x20(r27)
    cmpw    r28, r0
    blt+    branch_0x8018f618
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl raiseBuilding__24TMapEventSinkShadowMarioFi
raiseBuilding__24TMapEventSinkShadowMarioFi: # 0x8018f6bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stw     r4, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl rising__24TMapEventSinkShadowMarioFv
rising__24TMapEventSinkShadowMarioFv: # 0x8018f6ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x30(r3)
    lfs     f0, 0x3c(r31)
    addi    r3, r3, 0x1c
    lfs     f1, 0x18(r3)
    mr      r4, r3
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    lwz     r3, 0x30(r31)
    addi    r3, r3, 0x1c
    bl      __as__16J3DTransformInfoFRC16J3DTransformInfo
    lwz     r3, 0x1c(r31)
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x28(r31)
    lwz     r3, 0x64(r31)
    slwi    r0, r0, 2
    lfs     f0, 0x3c(r31)
    lwzx    r3, r3, r0
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __as__16J3DTransformInfoFRC16J3DTransformInfo
__as__16J3DTransformInfoFRC16J3DTransformInfo: # 0x8018f778
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lha     r0, 0xc(r4)
    sth     r0, 0xc(r3)
    lha     r0, 0xe(r4)
    sth     r0, 0xe(r3)
    lha     r0, 0x10(r4)
    sth     r0, 0x10(r3)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x18(r4)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x1c(r3)
    blr


.globl load__19TMapEventSinkBiancoFR20JSUMemoryInputStream
load__19TMapEventSinkBiancoFR20JSUMemoryInputStream: # 0x8018f7c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      load__13TMapEventSinkFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    addi    r3, r31, 0x0
    addi    r4, r30, 0x6c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x70
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x74
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x78
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x59
    lbz     r0, 0x59(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018f870
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    subi    r4, r4, 0x6fa0
    li      r5, 0x59
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x8018f870:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x1e1
    lbz     r0, 0x1e1(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018f8a4
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    subi    r4, r4, 0x6f7c
    li      r5, 0x1e1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x8018f8a4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl loadAfter__19TMapEventSinkBiancoFv
loadAfter__19TMapEventSinkBiancoFv: # 0x8018f8bc
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stw     r31, 0xf4(sp)
    subi    r31, r4, 0x7098
    stw     r30, 0xf0(sp)
    stw     r29, 0xec(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xe8(sp)
    bl      loadAfter__24TMapEventSinkInPollutionFv
    li      r30, 0x0
    addi    r28, r30, 0x0
    b       branch_0x8018f978

branch_0x8018f8f4:
    lwz     r0, 0x60(r29)
    lwz     r3, gpPollution(r13)
    add     r5, r0, r28
    lhz     r0, 0x0(r5)
    lwz     r4, 0x14(r3)
    slwi    r3, r0, 2
    lhz     r0, 0x2(r5)
    lwzx    r3, r4, r3
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x60(r29)
    lwz     r3, gpPollution(r13)
    add     r5, r0, r28
    lhz     r0, 0x0(r5)
    lwz     r4, 0x14(r3)
    slwi    r0, r0, 2
    lhz     r3, 0x2(r5)
    lwzx    r4, r4, r0
    addi    r0, r3, 0x1
    lwz     r3, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x8018f978:
    lwz     r0, 0x20(r29)
    cmpw    r30, r0
    blt+    branch_0x8018f8f4
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x140
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x140
    mtlr    r12
    blrl
    bl      getModelData__13TMapStaticObjCFv
    lwz     r3, 0x20(r3)
    lwz     r0, 0x8(r3)
    stw     r0, 0x64(r29)
    lfs     f1, -0x43d0(rtoc)
    lwz     r3, 0x64(r29)
    fmr     f3, f1
    lfs     f2, -0x43cc(rtoc)
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lwz     r3, 0x64(r29)
    li      r4, 0x0
    lwz     r3, 0x60(r3)
    bl      SMS_ShowJoint__FP11J3DMaterialb
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x14c
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x14c
    mtlr    r12
    blrl
    stw     r3, 0x68(r29)
    lwz     r0, 0xfc(sp)
    lwz     r31, 0xf4(sp)
    lwz     r30, 0xf0(sp)
    mtlr    r0
    lwz     r29, 0xec(sp)
    lwz     r28, 0xe8(sp)
    addi    sp, sp, 0xf8
    blr


.globl watch__19TMapEventSinkBiancoFv
watch__19TMapEventSinkBiancoFv: # 0x8018fa34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    lwz     r3, 0x54(r3)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018fab4
    lwz     r3, 0x68(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8018fab4
    li      r4, 0x0
    stw     r4, 0x28(r31)
    li      r6, 0x0
    lwz     r5, gpPollution(r13)
    b       branch_0x8018faa0

branch_0x8018fa84:
    lwz     r3, 0x14(r5)
    addi    r6, r6, 0x1
    lwzx    r3, r3, r4
    addi    r4, r4, 0x4
    lhz     r0, 0x32(r3)
    ori     r0, r0, 0x2
    sth     r0, 0x32(r3)
branch_0x8018faa0:
    lwz     r0, 0x10(r5)
    cmpw    r6, r0
    blt+    branch_0x8018fa84
    li      r3, 0x1
    b       branch_0x8018fb2c

branch_0x8018fab4:
    li      r29, 0x1
    li      r30, 0x4
    b       branch_0x8018fb1c

branch_0x8018fac0:
    lwz     r3, 0x54(r31)
    lbzx    r0, r3, r29
    cmplwi  r0, 0x0
    bne-    branch_0x8018fb14
    lwz     r0, 0x60(r31)
    lwz     r3, gpPollution(r13)
    add     r5, r0, r30
    lhz     r0, 0x0(r5)
    lwz     r4, 0x14(r3)
    slwi    r3, r0, 2
    lhz     r0, 0x2(r5)
    lwzx    r3, r4, r3
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    bl      isCleaned__13TPollutionObjCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8018fb14
    stw     r29, 0x28(r31)
    li      r3, 0x1
    b       branch_0x8018fb2c

branch_0x8018fb14:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8018fb1c:
    lwz     r0, 0x20(r31)
    cmpw    r29, r0
    blt+    branch_0x8018fac0
    li      r3, 0x0
branch_0x8018fb2c:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl startControl__19TMapEventSinkBiancoFv
startControl__19TMapEventSinkBiancoFv: # 0x8018fb48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r0, 0x28(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8018fbe4
    bge-    branch_0x8018fc00
    cmpwi   r0, 0x0
    bge-    branch_0x8018fb78
    b       branch_0x8018fc00

branch_0x8018fb78:
    li      r0, 0x528
    stw     r0, 0x40(r31)
    li      r0, 0x78
    li      r3, 0x258
    stw     r0, 0x44(r31)
    li      r0, 0x168
    addi    r5, sp, 0x2c
    stw     r3, 0x48(r31)
    li      r4, 0x59
    li      r6, 0x0
    lfs     f0, -0x43c8(rtoc)
    li      r7, 0x0
    stfs    f0, 0x38(r31)
    lfs     f0, -0x43d0(rtoc)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x34(sp)
    stw     r0, 0x7c(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, sp, 0x2c
    li      r4, 0x1e1
    li      r6, 0x2
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x8018fc00

branch_0x8018fbe4:
    li      r0, 0x258
    stw     r0, 0x40(r31)
    li      r0, 0x78
    stw     r0, 0x44(r31)
    stw     r0, 0x48(r31)
    lfs     f0, -0x43c4(rtoc)
    stfs    f0, 0x38(r31)
branch_0x8018fc00:
    mr      r3, r31
    bl      startControl__13TMapEventSinkFv
    lwz     r0, 0x28(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8018fcbc
    lwz     r3, 0x64(r31)
    li      r4, 0x1
    lwz     r3, 0x60(r3)
    bl      SMS_ShowJoint__FP11J3DMaterialb
    addi    r3, r31, 0x6c
    lfs     f1, 0x78(r31)
    bl      SMS_MarioWarpRequest__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, gpMSound(r13)
    li      r4, 0x484d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8018fc58
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8018fc58:
    lwz     r0, 0x28(r31)
    lis     r3, 0x8039
    subi    r4, r3, 0x6f3c
    lwz     r3, 0x50(r31)
    mulli   r0, r0, 0xc
    lfs     f0, -0x43c0(rtoc)
    add     r3, r3, r0
    stfs    f0, 0x0(r3)
    li      r0, 0x0
    addi    r11, sp, 0x28
    lfs     f0, -0x43bc(rtoc)
    li      r5, 0x0
    li      r6, -0x1
    stfs    f0, 0x4(r3)
    li      r7, 0x1
    li      r8, 0x0
    lfs     f0, -0x43b8(rtoc)
    li      r9, 0x0
    li      r10, 0x0
    stfs    f0, 0x8(r3)
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x28(sp)
    stw     r11, 0x8(sp)
    lfs     f1, -0x43d0(rtoc)
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x8018fcbc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl control__19TMapEventSinkBiancoFv
control__19TMapEventSinkBiancoFv: # 0x8018fcd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r4, 0x28(r3)
    cmpwi   r4, 0x0
    bne-    branch_0x8018fd38
    lwz     r3, 0x4c(r31)
    lwz     r0, 0x7c(r31)
    cmpw    r3, r0
    bne-    branch_0x8018fd38
    mulli   r0, r4, 0xc
    lwz     r4, 0x50(r31)
    lwz     r3, gpItemManager(r13)
    add     r5, r4, r0
    lfsx    f1, r4, r0
    lis     r4, 0x8039
    lfs     f2, 0x4(r5)
    lfs     f3, 0x8(r5)
    subi    r4, r4, 0x6f2c
    li      r5, 0x12c
    li      r6, 0x0
    li      r7, 0x3c
    li      r8, 0x3c
    bl      makeShineAppearWithTime__12TItemManagerFPCcifffiii
branch_0x8018fd38:
    mr      r3, r31
    bl      control__13TMapEventSinkFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl rising__19TMapEventSinkBiancoFv
rising__19TMapEventSinkBiancoFv: # 0x8018fd54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x30(r3)
    lfs     f0, 0x3c(r31)
    addi    r3, r3, 0x1c
    lfs     f1, 0x18(r3)
    mr      r4, r3
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    lwz     r3, 0x30(r31)
    addi    r3, r3, 0x1c
    bl      __as__16J3DTransformInfoFRC16J3DTransformInfo
    lwz     r3, 0x1c(r31)
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x28(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8018fdcc
    lfs     f1, -0x43d0(rtoc)
    lwz     r3, 0x64(r31)
    fmr     f3, f1
    lfs     f2, 0x3c(r31)
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
branch_0x8018fdcc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl finishControl__19TMapEventSinkBiancoFv
finishControl__19TMapEventSinkBiancoFv: # 0x8018fde0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    mr      r30, r3
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    lwz     r0, 0x28(r3)
    lis     r3, 0x8039
    subi    r31, r3, 0x7098
    cmpwi   r0, 0x0
    bne-    branch_0x8018ff00
    lwz     r3, 0x64(r30)
    lfs     f1, -0x43d0(rtoc)
    bl      setJointTransY__11TMapObjBaseFP8J3DJointf
    li      r28, 0x0
branch_0x8018fe24:
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x6c
    addi    r5, r31, 0x184
    li      r4, 0x40
    bl      snprintf
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x6c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x6c
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    li      r5, 0xf
    lwz     r4, gpModelWaterManager(r13)
    lwz     r12, 0xa0(r12)
    lwz     r4, 0x2514(r4)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    cmpwi   r28, 0x6
    blt+    branch_0x8018fe24
    li      r28, 0x0
branch_0x8018fe94:
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x6c
    addi    r5, r31, 0x1a0
    li      r4, 0x40
    bl      snprintf
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x6c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x6c
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    li      r5, 0xf
    lwz     r4, gpModelWaterManager(r13)
    lwz     r12, 0xa0(r12)
    lwz     r4, 0x2514(r4)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    cmpwi   r28, 0x7
    blt+    branch_0x8018fe94
branch_0x8018ff00:
    mr      r3, r30
    lwz     r4, 0x28(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x50(r12)
    mtlr    r12
    blrl
    li      r4, 0x0
    stw     r4, 0x2c(r30)
    li      r0, -0x1
    addi    r3, r31, 0x1b0
    stw     r4, 0x30(r30)
    stw     r0, 0x28(r30)
    lwz     r4, 0x4(r30)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8018ff4c
    li      r3, 0x0
    bl      setBossLivesFlag2__10MSMainProcFb
    b       branch_0x8018ff54

branch_0x8018ff4c:
    li      r3, 0x0
    bl      setBossLivesFlag__10MSMainProcFb
branch_0x8018ff54:
    mr      r3, r30
    bl      finishControl__9TMapEventFv
    lwz     r5, gpPollution(r13)
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x8018ff88

branch_0x8018ff6c:
    lwz     r4, 0x14(r5)
    addi    r6, r6, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x32(r4)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x32(r4)
branch_0x8018ff88:
    lwz     r0, 0x10(r5)
    cmpw    r6, r0
    blt+    branch_0x8018ff6c
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc0
    blr


.globl loadAfter__29TMapEventSinkInPollutionResetFv
loadAfter__29TMapEventSinkInPollutionResetFv: # 0x8018ffb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    stw     r30, 0x150(sp)
    mr      r30, r3
    stw     r29, 0x14c(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r31, 0x0
    addi    r29, r31, 0x0
    b       branch_0x80190024

branch_0x8018ffe0:
    lwz     r0, 0x60(r30)
    lwz     r4, gpPollution(r13)
    add     r5, r0, r29
    lhz     r0, 0x0(r5)
    addi    r3, r4, 0x1ec
    lwz     r4, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    lhz     r0, 0x2(r5)
    lwz     r4, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r5, r4, r0
    addi    r4, r5, 0x0
    addi    r5, r5, 0x30
    bl      registerPollutionObj__20TPollutionCounterObjFP13TPollutionObjPUl
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x80190024:
    lwz     r0, 0x20(r30)
    cmpw    r31, r0
    blt+    branch_0x8018ffe0
    li      r31, 0x0
    li      r29, 0x0
    b       branch_0x801900c0

branch_0x8019003c:
    lwz     r0, 0x60(r30)
    lwz     r3, gpPollution(r13)
    add     r5, r0, r29
    lhz     r0, 0x0(r5)
    lwz     r4, 0x14(r3)
    slwi    r3, r0, 2
    lhz     r0, 0x2(r5)
    lwzx    r3, r4, r3
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x60(r30)
    lwz     r3, gpPollution(r13)
    add     r5, r0, r29
    lhz     r0, 0x0(r5)
    lwz     r4, 0x14(r3)
    slwi    r0, r0, 2
    lhz     r3, 0x2(r5)
    lwzx    r4, r4, r0
    addi    r0, r3, 0x1
    lwz     r3, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x801900c0:
    lwz     r0, 0x20(r30)
    cmpw    r31, r0
    blt+    branch_0x8019003c
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    lwz     r29, 0x14c(sp)
    addi    sp, sp, 0x158
    blr


.globl makeBuildingRecovered__29TMapEventSinkInPollutionResetFi
makeBuildingRecovered__29TMapEventSinkInPollutionResetFi: # 0x801900e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    mr      r30, r3
    stw     r29, 0xdc(sp)
    mr      r29, r4
    lwz     r12, 0x0(r30)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r29
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r5, 0xc(r3)
    mr      r3, r30
    lfs     f0, 0x34(r30)
    addi    r4, r29, 0x0
    addi    r31, r5, 0x1c
    stfs    f0, 0x34(r5)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r3, r3, 0x1c
    bl      __as__16J3DTransformInfoFRC16J3DTransformInfo
    lwz     r3, 0x5c(r30)
    slwi    r31, r29, 2
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x58(r30)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x54(r30)
    li      r0, 0x1
    stbx    r0, r3, r29
    lwz     r3, 0x60(r30)
    lwz     r4, gpPollution(r13)
    lhzx    r0, r3, r31
    add     r3, r3, r31
    lwz     r5, 0x14(r4)
    slwi    r4, r0, 2
    lhz     r0, 0x2(r3)
    lwzx    r3, r5, r4
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x60(r30)
    lwz     r4, gpPollution(r13)
    lhzx    r0, r3, r31
    add     r3, r3, r31
    lwz     r4, 0x14(r4)
    slwi    r0, r0, 2
    lhz     r3, 0x2(r3)
    lwzx    r4, r4, r0
    addi    r0, r3, 0x1
    lwz     r3, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x60(r30)
    lwz     r4, gpPollution(r13)
    lhzx    r0, r3, r31
    add     r3, r3, r31
    lwz     r4, 0x14(r4)
    slwi    r0, r0, 2
    lhz     r3, 0x2(r3)
    lwzx    r4, r4, r0
    addi    r0, r3, 0x1
    lwz     r3, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      updateDepthMap__13TPollutionObjFv
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    addi    sp, sp, 0xe8
    blr


.globl loadAfter__24TMapEventSinkInPollutionFv
loadAfter__24TMapEventSinkInPollutionFv: # 0x80190284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    mr      r29, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x801902f4

branch_0x801902b0:
    lwz     r0, 0x60(r29)
    lwz     r4, gpPollution(r13)
    add     r5, r0, r31
    lhz     r0, 0x0(r5)
    addi    r3, r4, 0x1ec
    lwz     r4, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    lhz     r0, 0x2(r5)
    lwz     r4, 0x14(r4)
    slwi    r0, r0, 2
    lwzx    r5, r4, r0
    addi    r4, r5, 0x0
    addi    r5, r5, 0x30
    bl      registerPollutionObj__20TPollutionCounterObjFP13TPollutionObjPUl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801902f4:
    lwz     r0, 0x20(r29)
    cmpw    r30, r0
    blt+    branch_0x801902b0
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xb8
    blr


.globl initBuriedBuilding__24TMapEventSinkInPollutionFv
initBuriedBuilding__24TMapEventSinkInPollutionFv: # 0x8019031c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    li      r31, 0x0
    stw     r30, 0x50(sp)
    li      r30, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    b       branch_0x8019039c

branch_0x80190344:
    lwz     r0, 0x60(r29)
    lwz     r3, gpPollution(r13)
    add     r5, r0, r31
    lhz     r0, 0x0(r5)
    lwz     r4, 0x14(r3)
    slwi    r3, r0, 2
    lhz     r0, 0x2(r5)
    lwzx    r3, r4, r3
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    bl      isCleaned__13TPollutionObjCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80190394
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x50(r12)
    mtlr    r12
    blrl
branch_0x80190394:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8019039c:
    lwz     r0, 0x20(r29)
    cmpw    r30, r0
    blt+    branch_0x80190344
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl watch__24TMapEventSinkInPollutionFv
watch__24TMapEventSinkInPollutionFv: # 0x801903c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    li      r31, 0x0
    stw     r30, 0x50(sp)
    li      r30, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    b       branch_0x80190448

branch_0x801903ec:
    lwz     r3, 0x54(r29)
    lbzx    r0, r3, r30
    cmplwi  r0, 0x0
    bne-    branch_0x80190440
    lwz     r0, 0x60(r29)
    lwz     r3, gpPollution(r13)
    add     r5, r0, r31
    lhz     r0, 0x0(r5)
    lwz     r4, 0x14(r3)
    slwi    r3, r0, 2
    lhz     r0, 0x2(r5)
    lwzx    r3, r4, r3
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    bl      isCleaned__13TPollutionObjCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80190440
    stw     r30, 0x28(r29)
    li      r3, 0x1
    b       branch_0x80190458

branch_0x80190440:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80190448:
    lwz     r0, 0x20(r29)
    cmpw    r30, r0
    blt+    branch_0x801903ec
    li      r3, 0x0
branch_0x80190458:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl __ct__13TMapEventSinkFPCc
__ct__13TMapEventSinkFPCc: # 0x80190474
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9TMapEventFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x1920
    stw     r0, 0x0(r31)
    li      r6, 0x0
    li      r5, -0x1
    stw     r6, 0x20(r31)
    li      r4, 0x258
    li      r0, 0xa
    stw     r6, 0x24(r31)
    mr      r3, r31
    stw     r5, 0x28(r31)
    stw     r6, 0x2c(r31)
    stw     r6, 0x30(r31)
    lfs     f0, -0x43d0(rtoc)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    lfs     f0, -0x43b4(rtoc)
    stfs    f0, 0x3c(r31)
    stw     r4, 0x40(r31)
    stw     r6, 0x44(r31)
    stw     r6, 0x48(r31)
    stw     r6, 0x4c(r31)
    stw     r6, 0x50(r31)
    stw     r6, 0x54(r31)
    stw     r6, 0x58(r31)
    stw     r6, 0x5c(r31)
    stw     r6, 0x60(r31)
    stw     r0, -0x7b00(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TMapEventSinkFR20JSUMemoryInputStream
load__13TMapEventSinkFR20JSUMemoryInputStream: # 0x80190510
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r3, 0x0
    bl      load__9TMapEventFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x30
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x30(sp)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    stw     r0, 0x20(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    li      r31, 0x0
    b       branch_0x801905c0

branch_0x8019056c:
    lwz     r4, 0x54(r29)
    li      r0, 0x0
    addi    r3, r29, 0x0
    stbx    r0, r4, r31
    mr      r4, r31
    lwz     r12, 0x0(r29)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
branch_0x801905c0:
    lwz     r0, 0x20(r29)
    cmpw    r31, r0
    blt+    branch_0x8019056c
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801905f0
    li      r0, 0x1e
    lfs     f0, -0x43b0(rtoc)
    stw     r0, -0x7b00(r13)
    stfs    f0, 0x38(r29)
    b       branch_0x80190600

branch_0x801905f0:
    cmplwi  r0, 0x2
    bne-    branch_0x80190600
    li      r0, 0x1e
    stw     r0, -0x7b00(r13)
branch_0x80190600:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl initWithBuildingNum__13TMapEventSinkFR20JSUMemoryInputStream
initWithBuildingNum__13TMapEventSinkFR20JSUMemoryInputStream: # 0x8019061c
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    addi    r4, sp, 0x18
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    stw     r0, 0x24(r30)
    lwz     r31, 0x20(r30)
    mulli   r3, r31, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8002
    addi    r4, r4, 0x10dc
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x50(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x58(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x5c(r30)
    lwz     r3, 0x20(r30)
    bl      __nwa__FUl
    stw     r3, 0x54(r30)
    lwz     r0, 0x20(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x60(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl initBuilding__13TMapEventSinkFiR20JSUMemoryInputStream
initBuilding__13TMapEventSinkFiR20JSUMemoryInputStream: # 0x801906cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x4
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    addi    r4, sp, 0x14
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x14(sp)
    slwi    r31, r29, 2
    lwz     r4, 0x60(r28)
    mr      r3, r30
    li      r5, 0x4
    sthx    r0, r4, r31
    addi    r4, sp, 0x14
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x60(r28)
    addi    r3, r29, 0x1
    lwz     r6, 0x14(sp)
    li      r4, 0x0
    add     r5, r0, r31
    sth     r6, 0x2(r5)
    bl      newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
    lwz     r5, 0x58(r28)
    li      r4, 0x0
    stwx    r3, r5, r31
    addi    r3, r29, 0x1
    bl      newAndInitBuildingCollisionMove__11TMapObjBaseFiP10TLiveActor
    lwz     r4, 0x5c(r28)
    stwx    r3, r4, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl startControl__13TMapEventSinkFv
startControl__13TMapEventSinkFv: # 0x8019077c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    stw     r0, 0x18(r3)
    lwz     r12, 0x0(r31)
    lwz     r4, 0x28(r31)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2c(r31)
    lwz     r3, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r4, 0x28(r31)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(r3)
    stw     r0, 0x30(r31)
    lwz     r3, 0x30(r31)
    addi    r30, r3, 0x1c
    lfs     f0, 0x34(r3)
    stfs    f0, 0x34(r31)
    lfs     f0, -0x43d0(rtoc)
    lfs     f1, 0x38(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80190814
    fmr     f31, f1
    b       branch_0x8019082c

branch_0x80190814:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    fmr     f31, f1
branch_0x8019082c:
    lfs     f0, 0x18(r30)
    fsubs   f0, f0, f31
    stfs    f0, 0x18(r30)
    lwz     r3, 0x30(r31)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x24(r3)
    lha     r0, 0xc(r30)
    sth     r0, 0x28(r3)
    lha     r0, 0xe(r30)
    sth     r0, 0x2a(r3)
    lha     r0, 0x10(r30)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x1c(r30)
    stfs    f0, 0x38(r3)
    lwz     r3, 0x1c(r31)
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x44(r31)
    lis     r0, 0x4330
    lwz     r3, 0x40(r31)
    addi    r4, sp, 0x3c
    lwz     r6, 0x48(r31)
    subf    r3, r5, r3
    lfd     f1, -0x43a8(rtoc)
    subf    r3, r6, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f31, f0
    stfs    f0, 0x3c(r31)
    lwz     r0, 0x40(r31)
    stw     r0, 0x4c(r31)
    lfs     f2, 0x1c(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f2, 0x44(sp)
    lwz     r0, 0x28(r31)
    lwz     r3, 0x5c(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl control__13TMapEventSinkFv
control__13TMapEventSinkFv: # 0x80190938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    lwz     r3, 0x44(r3)
    lwz     r0, 0x40(r31)
    lwz     r4, 0x4c(r31)
    subf    r0, r3, r0
    cmpw    r4, r0
    bge-    branch_0x80190988
    lwz     r0, 0x48(r31)
    cmpw    r4, r0
    ble-    branch_0x80190988
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
branch_0x80190988:
    lwz     r3, 0x30(r31)
    addi    r4, sp, 0x30
    addi    r3, r3, 0x1c
    lfs     f2, 0x1c(r3)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x30(sp)
    stfs    f1, 0x34(sp)
    stfs    f2, 0x38(sp)
    lwz     r0, 0x28(r31)
    lwz     r3, 0x5c(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4c(r31)
    lwz     r0, 0x48(r31)
    cmpw    r3, r0
    ble-    branch_0x80190a60
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80190a10
    lwz     r0, 0x24(r31)
    lwz     r3, 0x54(r31)
    subfic  r0, r0, 0x1
    lbzx    r0, r3, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80190a10
    lwz     r0, 0x28(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80190a60
branch_0x80190a10:
    lwz     r3, -0x60f0(r13)
    li      r4, 0x13
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    lwz     r0, 0x28(r31)
    li      r4, 0x3008
    lwz     r5, 0x50(r31)
    mulli   r0, r0, 0xc
    lwz     r3, gpMSound(r13)
    add     r30, r5, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80190a60
    addi    r4, r30, 0x0
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80190a60:
    lwz     r3, 0x4c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80190a7c
    subi    r0, r3, 0x1
    stw     r0, 0x4c(r31)
    li      r3, 0x0
    b       branch_0x80190a80

branch_0x80190a7c:
    li      r3, 0x1
branch_0x80190a80:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl rising__13TMapEventSinkFv
rising__13TMapEventSinkFv: # 0x80190a98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x30(r3)
    lfs     f0, 0x3c(r3)
    lfs     f1, 0x34(r4)
    addi    r5, r4, 0x1c
    fadds   f0, f1, f0
    stfs    f0, 0x34(r4)
    lwz     r4, 0x30(r3)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x1c(r4)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x20(r4)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x24(r4)
    lha     r0, 0xc(r5)
    sth     r0, 0x28(r4)
    lha     r0, 0xe(r5)
    sth     r0, 0x2a(r4)
    lha     r0, 0x10(r5)
    sth     r0, 0x2c(r4)
    lfs     f0, 0x14(r5)
    stfs    f0, 0x30(r4)
    lfs     f0, 0x18(r5)
    stfs    f0, 0x34(r4)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x38(r4)
    lwz     r3, 0x1c(r3)
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl finishControl__13TMapEventSinkFv
finishControl__13TMapEventSinkFv: # 0x80190b34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r4, 0x28(r31)
    lwz     r12, 0x50(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x2c(r31)
    lis     r3, 0x8039
    subi    r3, r3, 0x6ee8
    stw     r0, 0x30(r31)
    li      r0, -0x1
    stw     r0, 0x28(r31)
    lwz     r4, 0x4(r31)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80190b94
    li      r3, 0x0
    bl      setBossLivesFlag2__10MSMainProcFb
    b       branch_0x80190b9c

branch_0x80190b94:
    li      r3, 0x0
    bl      setBossLivesFlag__10MSMainProcFb
branch_0x80190b9c:
    mr      r3, r31
    bl      finishControl__9TMapEventFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeBuildingRecovered__13TMapEventSinkFi
makeBuildingRecovered__13TMapEventSinkFi: # 0x80190bb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r4
    stw     r28, 0x30(sp)
    mr      r28, r3
    lwz     r12, 0x0(r28)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    lwz     r12, 0x0(r28)
    mr      r4, r29
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r5, 0xc(r3)
    mr      r3, r28
    lfs     f0, 0x34(r28)
    addi    r4, r29, 0x0
    addi    r31, r5, 0x1c
    stfs    f0, 0x34(r5)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xc(r3)
    slwi    r30, r29, 2
    lfs     f0, 0x0(r31)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x24(r3)
    lha     r0, 0xc(r31)
    sth     r0, 0x28(r3)
    lha     r0, 0xe(r31)
    sth     r0, 0x2a(r3)
    lha     r0, 0x10(r31)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x1c(r31)
    stfs    f0, 0x38(r3)
    lwz     r3, 0x5c(r28)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x58(r28)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x54(r28)
    li      r0, 0x1
    stbx    r0, r3, r29
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl isFinishedAll__13TMapEventSinkCFv
isFinishedAll__13TMapEventSinkCFv: # 0x80190ce8
    lwz     r0, 0x20(r3)
    li      r5, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x80190d1c
branch_0x80190cfc:
    lwz     r4, 0x54(r3)
    lbzx    r0, r4, r5
    cmplwi  r0, 0x0
    bne-    branch_0x80190d14
    li      r3, 0x0
    blr

branch_0x80190d14:
    addi    r5, r5, 0x1
    bdnz+      branch_0x80190cfc
branch_0x80190d1c:
    li      r3, 0x1
    blr


.globl getPollutionObj__13TMapEventSinkFi
getPollutionObj__13TMapEventSinkFi: # 0x80190d24
    lwz     r5, 0x60(r3)
    slwi    r3, r4, 2
    lwz     r4, gpPollution(r13)
    lhzx    r0, r5, r3
    add     r3, r5, r3
    lwz     r5, 0x14(r4)
    slwi    r4, r0, 2
    lhz     r0, 0x2(r3)
    lwzx    r3, r5, r4
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    blr


.globl getSinkOffsetY__13TMapEventSinkCFv
getSinkOffsetY__13TMapEventSinkCFv: # 0x80190d58
    lwz     r4, 0x30(r3)
    lfs     f1, 0x50(r4)
    lfs     f0, 0x44(r4)
    fsubs   f1, f1, f0
    blr


.globl isBuried__13TMapEventSinkCFi
isBuried__13TMapEventSinkCFi: # 0x80190d6c
    lwz     r0, 0x24(r3)
    lwz     r3, 0x54(r3)
    subf    r0, r0, r4
    lbzx    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl getBuilding__13TMapEventSinkCFi
getBuilding__13TMapEventSinkCFi: # 0x80190d88
    lwz     r5, 0x1c(r3)
    lwz     r0, 0x24(r3)
    lwz     r3, 0x14(r5)
    add     r0, r4, r0
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    blr


.globl __dt__19TMapEventSinkBiancoFv
__dt__19TMapEventSinkBiancoFv: # 0x80190dac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80190e24
    lis     r3, 0x803c
    addi    r0, r3, 0x1824
    stw     r0, 0x0(r30)
    beq-    branch_0x80190e14
    lis     r3, 0x803c
    addi    r0, r3, 0x1878
    stw     r0, 0x0(r30)
    beq-    branch_0x80190e14
    lis     r3, 0x803c
    addi    r0, r3, 0x18cc
    stw     r0, 0x0(r30)
    beq-    branch_0x80190e14
    lis     r3, 0x803c
    addi    r0, r3, 0x1920
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__9TMapEventFv
branch_0x80190e14:
    extsh.  r0, r31
    ble-    branch_0x80190e24
    mr      r3, r30
    bl      __dl__FPv
branch_0x80190e24:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__29TMapEventSinkInPollutionResetFv
__dt__29TMapEventSinkInPollutionResetFv: # 0x80190e40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80190eb8
    lis     r3, 0x803c
    addi    r0, r3, 0x1878
    stw     r0, 0x0(r30)
    beq-    branch_0x80190ea8
    lis     r3, 0x803c
    addi    r0, r3, 0x18cc
    stw     r0, 0x0(r30)
    beq-    branch_0x80190ea8
    lis     r3, 0x803c
    addi    r0, r3, 0x1920
    stw     r0, 0x0(r30)
    beq-    branch_0x80190ea8
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEventWatcherFv
branch_0x80190ea8:
    extsh.  r0, r31
    ble-    branch_0x80190eb8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80190eb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TMapEventSinkInPollutionFv
__dt__24TMapEventSinkInPollutionFv: # 0x80190ed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80190f4c
    lis     r3, 0x803c
    addi    r0, r3, 0x18cc
    stw     r0, 0x0(r30)
    beq-    branch_0x80190f3c
    lis     r3, 0x803c
    addi    r0, r3, 0x1920
    stw     r0, 0x0(r30)
    beq-    branch_0x80190f3c
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r30)
    beq-    branch_0x80190f3c
    lis     r3, 0x803e
    subi    r0, r3, 0x1298
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TViewObjFv
branch_0x80190f3c:
    extsh.  r0, r31
    ble-    branch_0x80190f4c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80190f4c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TMapEventSinkFv
__dt__13TMapEventSinkFv: # 0x80190f68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80190fe0
    lis     r3, 0x803c
    addi    r0, r3, 0x1920
    stw     r0, 0x0(r30)
    beq-    branch_0x80190fd0
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r30)
    beq-    branch_0x80190fd0
    lis     r3, 0x803e
    subi    r0, r3, 0x1298
    stw     r0, 0x0(r30)
    beq-    branch_0x80190fd0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80190fd0:
    extsh.  r0, r31
    ble-    branch_0x80190fe0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80190fe0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapEventSink_cpp
__sinit_MapEventSink_cpp: # 0x80190ffc
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x7e08
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80191044
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80191044:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80191074
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80191074:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801910a4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801910a4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801910d4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801910d4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80191104
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80191104:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80191134
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80191134:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80191164
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80191164:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80191194
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80191194:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801911c4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801911c4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801911f4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801911f4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80191224
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80191224:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80191254
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80191254:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80191284
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80191284:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801912b4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801912b4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801912e4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801912e4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

