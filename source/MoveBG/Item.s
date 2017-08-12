
.globl __dt__10TNozzleBoxFv
__dt__10TNozzleBoxFv: # 0x801bb164
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bb1e4
    lis     r3, __vvt__10TNozzleBox@ha
    addi    r3, r3, __vvt__10TNozzleBox@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bb1d4
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bb1d4
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801bb1d4:
    extsh.  r0, r31
    ble-    branch_0x801bb1e4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bb1e4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__10TNozzleBoxFPCc
__ct__10TNozzleBoxFPCc: # 0x801bb200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__10TNozzleBox@ha
    addi    r3, r3, __vvt__10TNozzleBox@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r6, 0x0
    stw     r0, 0x20(r31)
    li      r5, 0x1
    li      r4, 0xff
    stw     r6, 0x148(r31)
    li      r0, 0x64
    addi    r3, r31, 0x0
    stw     r6, 0x14c(r31)
    lfs     f0, -0x2be4(r2)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x154(r31)
    stw     r6, 0x158(r31)
    stb     r5, 0x15c(r31)
    stb     r6, 0x166(r31)
    sth     r4, 0x15e(r31)
    sth     r4, 0x160(r31)
    sth     r4, 0x162(r31)
    sth     r0, 0x164(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__10TNozzleBoxFR20JSUMemoryInputStream
load__10TNozzleBoxFR20JSUMemoryInputStream: # 0x801bb284
    mflr    r0
    lis     r5, unk_80390ca8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r5, unk_80390ca8@l
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x158(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x30
    li      r5, 0x20
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, sp, 0x30
    addi    r4, r2, R2Off_m0x2be0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bb2ec
    li      r0, 0x1
    stb     r0, 0x15c(r30)
    b       branch_0x801bb2f4

branch_0x801bb2ec:
    li      r0, 0x0
    stb     r0, 0x15c(r30)
branch_0x801bb2f4:
    lwz     r3, 0x158(r30)
    addi    r4, r29, 0xec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bb328
    li      r0, 0x4
    stw     r0, 0x148(r30)
    li      r3, 0x0
    li      r0, 0xff
    sth     r3, 0x15e(r30)
    sth     r3, 0x160(r30)
    sth     r0, 0x162(r30)
    b       branch_0x801bb3d8

branch_0x801bb328:
    lwz     r3, 0x158(r30)
    addi    r4, r29, 0x100
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bb380
    li      r29, 0x1
    stw     r29, 0x148(r30)
    li      r3, 0xff
    li      r0, 0x0
    sth     r3, 0x15e(r30)
    li      r5, 0x0
    sth     r0, 0x160(r30)
    sth     r0, 0x162(r30)
    lwz     r4, R13Off_m0x6048(r13)
    lwz     r3, R13Off_m0x6060(r13)
    lbz     r4, 0x7c(r4)
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801bb3d8
    stb     r29, 0x15c(r30)
    stb     r29, 0x166(r30)
    b       branch_0x801bb3d8

branch_0x801bb380:
    lwz     r3, 0x158(r30)
    addi    r4, r29, 0x114
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bb3d8
    li      r0, 0x5
    stw     r0, 0x148(r30)
    li      r3, 0x5a
    li      r0, 0x78
    sth     r3, 0x15e(r30)
    li      r5, 0x1
    sth     r3, 0x160(r30)
    sth     r0, 0x162(r30)
    lwz     r4, R13Off_m0x6048(r13)
    lwz     r3, R13Off_m0x6060(r13)
    lbz     r4, 0x7c(r4)
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801bb3d8
    li      r0, 0x1
    stb     r0, 0x15c(r30)
    stb     r0, 0x166(r30)
branch_0x801bb3d8:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x150
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x150(r30)
    mr      r3, r31
    lfs     f0, -0x2bd8(r2)
    addi    r4, r30, 0x154
    li      r5, 0x4
    fmuls   f0, f1, f0
    stfs    f0, 0x150(r30)
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x154(r30)
    lfs     f0, -0x2be4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801bb420
    lfs     f0, -0x2bd4(r2)
    stfs    f0, 0x154(r30)
branch_0x801bb420:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r5, r30, 0x15e
    li      r4, 0x2
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      startAnim__11TMapObjBaseFUs
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r5, r30, 0x15e
    li      r4, 0x2
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      startAnim__11TMapObjBaseFUs
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r5, r30, 0x15e
    li      r4, 0x2
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      startAnim__11TMapObjBaseFUs
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl loadAfter__10TNozzleBoxFv
loadAfter__10TNozzleBoxFv: # 0x801bb49c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      loadAfter__14TMapObjGeneralFv
    lfs     f0, -0x2be4(r2)
    addi    r6, sp, 0x1c
    lfs     f1, -0x2bd0(r2)
    addi    r5, sp, 0x28
    stfs    f0, 0x28(sp)
    addi    r4, sp, 0x34
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x34(sp)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x24(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x3c(sp)
    lwz     r3, 0x158(r31)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x14c(r31)
    lwz     r3, 0x14c(r31)
    stw     r31, 0x148(r3)
    lwz     r0, 0x148(r31)
    cmpwi   r0, 0x4
    beq-    branch_0x801bb528
    bge-    branch_0x801bb51c
    cmpwi   r0, 0x1
    beq-    branch_0x801bb594
    b       branch_0x801bb660

branch_0x801bb51c:
    cmpwi   r0, 0x6
    bge-    branch_0x801bb660
    b       branch_0x801bb594

branch_0x801bb528:
    lwz     r3, 0x14c(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bb55c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801bb55c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r31)
    bl      getModel__10TLiveActorCFv
    bl      SMS_ShowAllShapePacket__FP8J3DModel
    li      r0, 0x1
    stb     r0, 0x15c(r31)
    b       branch_0x801bb660

branch_0x801bb594:
    lbz     r0, 0x15c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801bb60c
    lwz     r3, 0x14c(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bb5d4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801bb5d4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r31)
    bl      getModel__10TLiveActorCFv
    bl      SMS_ShowAllShapePacket__FP8J3DModel
    li      r0, 0x1
    stb     r0, 0x15c(r31)
    b       branch_0x801bb660

branch_0x801bb60c:
    lwz     r3, 0x14c(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bb640
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801bb640:
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    li      r4, 0x3
    ori     r0, r0, 0x4
    stw     r0, 0x64(r31)
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x0
    stb     r0, 0x15c(r31)
branch_0x801bb660:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl control__10TNozzleBoxFv
control__10TNozzleBoxFv: # 0x801bb674
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__14TMapObjGeneralFv
    lwz     r0, 0x148(r31)
    cmpwi   r0, 0x4
    beq-    branch_0x801bb6b8
    lbz     r0, 0x166(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801bb6b8
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801bb6b8
    li      r0, 0x0
    stb     r0, 0x166(r31)
branch_0x801bb6b8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__10TNozzleBoxFP9THitActor
touchPlayer__10TNozzleBoxFP9THitActor: # 0x801bb6cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r0, 0x148(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x801bb74c
    lwz     r4, R13Off_m0x6048(r13)
    li      r5, 0x0
    lwz     r3, R13Off_m0x6060(r13)
    lbz     r4, 0x7c(r4)
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801bb74c
    lwz     r4, R13Off_m0x6048(r13)
    li      r5, 0x1
    lwz     r3, R13Off_m0x6060(r13)
    lbz     r4, 0x7c(r4)
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801bb74c
    lbz     r0, 0x166(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801bb74c
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x5a
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x1
    stb     r0, 0x166(r31)
branch_0x801bb74c:
    lbz     r0, 0x15c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801bb780
    lbz     r0, 0x166(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801bb780
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x59
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x1
    stb     r0, 0x166(r31)
branch_0x801bb780:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl receiveMessage__10TNozzleBoxFP9THitActorUl
receiveMessage__10TNozzleBoxFP9THitActorUl: # 0x801bb794
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r3
    lbz     r0, 0x15c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801bb874
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801bb7dc
    li      r0, 0x1
    b       branch_0x801bb7e0

branch_0x801bb7dc:
    li      r0, 0x0
branch_0x801bb7e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bb874
    cmplwi  r31, 0x0
    bne-    branch_0x801bb874
    bl      SMS_IsMarioHeadSlideAttack__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x801bb874
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r29, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x14c(r29)
    mr      r3, r29
    lfs     f1, -0x2bcc(r2)
    lfs     f2, 0x150(r29)
    lfs     f3, 0x154(r29)
    bl      throwObjToFront__11TMapObjBaseCFP11TMapObjBasefff
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3801
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bb858
    li      r3, 0x3801
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801bb858:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801bb8e8

branch_0x801bb874:
    cmplwi  r31, 0x5
    bne-    branch_0x801bb8e4
    lwz     r3, 0x14c(r29)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bb8b0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801bb8b0:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r29)
    addi    r3, r29, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r29)
    bl      getModel__10TLiveActorCFv
    bl      SMS_ShowAllShapePacket__FP8J3DModel
    li      r0, 0x1
    stb     r0, 0x15c(r29)
branch_0x801bb8e4:
    li      r3, 0x0
branch_0x801bb8e8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl breaking__10TNozzleBoxFv
breaking__10TNozzleBoxFv: # 0x801bb904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801bb938
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801bb938:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeModelValid__10TNozzleBoxFv
makeModelValid__10TNozzleBoxFv: # 0x801bb94c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x14c(r3)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bb994
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801bb994:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r31)
    bl      getModel__10TLiveActorCFv
    bl      SMS_ShowAllShapePacket__FP8J3DModel
    li      r0, 0x1
    stb     r0, 0x15c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__11TItemNozzleFR20JSUMemoryInputStream
load__11TItemNozzleFR20JSUMemoryInputStream: # 0x801bb9dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r0, 0xf8(r31)
    lis     r3, unk_80390da8@h
    addi    r4, r3, unk_80390da8@l
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r31)
    lwz     r3, 0xf4(r31)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bba48
    lis     r4, unk_00060003@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060003@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x3
    beq-    branch_0x801bba8c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    b       branch_0x801bba8c

branch_0x801bba48:
    lis     r4, unk_80390dbc@h
    lwz     r3, 0xf4(r31)
    addi    r4, r4, unk_80390dbc@l
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bba8c
    lis     r4, unk_00060003@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060003@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x2
    beq-    branch_0x801bba8c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801bba8c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__11TItemNozzleFv
initMapObj__11TItemNozzleFv: # 0x801bbaa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__14TMapObjGeneralFv
    li      r0, 0x1e0
    stw     r0, 0x14c(r31)
    li      r3, 0x78
    li      r0, 0x1c20
    stw     r3, 0x150(r31)
    stw     r0, 0x14c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__11TItemNozzleFv
calcRootMatrix__11TItemNozzleFv: # 0x801bbae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x6
    bne-    branch_0x801bbb14
    li      r0, 0x1
    b       branch_0x801bbb18

branch_0x801bbb14:
    li      r0, 0x0
branch_0x801bbb18:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bbbbc
    lwz     r3, 0x68(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801bbbbc
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x0
    addi    r3, r29, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      PSMTXCopy
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x22
    bne-    branch_0x801bbb70
    li      r0, 0x1
    b       branch_0x801bbb74

branch_0x801bbb70:
    li      r0, 0x0
branch_0x801bbb74:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bbb90
    lfs     f1, 0x1c(r31)
    lfs     f0, -0x2bcc(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r31)
    b       branch_0x801bbba0

branch_0x801bbb90:
    lfs     f1, 0x1c(r31)
    lfs     f0, -0x2bc8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r31)
branch_0x801bbba0:
    lfs     f2, 0x2c(r31)
    lfs     f1, 0x1c(r31)
    lfs     f0, 0xc(r31)
    stfs    f0, 0x10(r29)
    stfs    f1, 0x14(r29)
    stfs    f2, 0x18(r29)
    b       branch_0x801bbbd0

branch_0x801bbbbc:
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 4, 4
    bne-    branch_0x801bbbd0
    mr      r3, r29
    bl      calcRootMatrix__14TMapObjGeneralFv
branch_0x801bbbd0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl control__11TItemNozzleFv
control__11TItemNozzleFv: # 0x801bbbec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      control__14TMapObjGeneralFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appearing__11TItemNozzleFv
appearing__11TItemNozzleFv: # 0x801bbc0c
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    beqlr-    

    li      r0, 0x1
    sth     r0, 0xfc(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    blr


.globl receiveMessage__11TItemNozzleFP9THitActorUl
receiveMessage__11TItemNozzleFP9THitActorUl: # 0x801bbc30
    mflr    r0
    cmplwi  r5, 0x4
    stw     r0, 0x4(sp)
    addi    r6, r3, 0x0
    stwu    sp, -0x8(sp)
    bne-    branch_0x801bbc64
    lwz     r12, 0x0(r6)
    mr      r3, r6
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801bbce4

branch_0x801bbc64:
    cmplwi  r5, 0x7
    bne-    branch_0x801bbca8
    lfs     f1, -0x2be4(r2)
    li      r0, 0xb
    li      r3, 0x1
    stfs    f1, 0xac(r6)
    lfs     f0, -0x2bd4(r2)
    stfs    f0, 0xb0(r6)
    stfs    f1, 0xb4(r6)
    lwz     r4, 0xf0(r6)
    rlwinm  r4, r4, 0, 28, 26
    stw     r4, 0xf0(r6)
    lwz     r4, 0x64(r6)
    ori     r4, r4, 0x1
    stw     r4, 0x64(r6)
    sth     r0, 0xfc(r6)
    b       branch_0x801bbce4

branch_0x801bbca8:
    cmplwi  r5, 0xf
    bne-    branch_0x801bbcb8
    li      r3, 0x0
    b       branch_0x801bbce4

branch_0x801bbcb8:
    cmplwi  r5, 0xb
    bne-    branch_0x801bbcdc
    lwz     r12, 0x0(r6)
    mr      r3, r6
    lwz     r12, 0x1e0(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801bbce4

branch_0x801bbcdc:
    mr      r3, r6
    bl      receiveMessage__14TMapObjGeneralFP9THitActorUl
branch_0x801bbce4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl put__11TItemNozzleFv
put__11TItemNozzleFv: # 0x801bbcf4
    lwz     r4, 0x64(r3)
    li      r0, 0x1
    clrrwi  r4, r4, 1
    stw     r4, 0x64(r3)
    sth     r0, 0xfc(r3)
    blr


.globl touchPlayer__11TItemNozzleFP9THitActor
touchPlayer__11TItemNozzleFP9THitActor: # 0x801bbd0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x6
    bne-    branch_0x801bbd3c
    li      r0, 0x1
    b       branch_0x801bbd40

branch_0x801bbd3c:
    li      r0, 0x0
branch_0x801bbd40:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bbe84
    bl      SMS_IsMarioOnYoshi__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x801bbe84
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801bbd6c
    li      r0, 0x1
    b       branch_0x801bbd70

branch_0x801bbd6c:
    li      r0, 0x0
branch_0x801bbd70:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bbd98
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x83
    bne-    branch_0x801bbd8c
    li      r0, 0x1
    b       branch_0x801bbd90

branch_0x801bbd8c:
    li      r0, 0x0
branch_0x801bbd90:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bbdbc
branch_0x801bbd98:
    lwz     r0, 0x64(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bbdbc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r30
    lwz     r12, 0x1e0(r12)
    mtlr    r12
    blrl
branch_0x801bbdbc:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x1f
    bne-    branch_0x801bbdd4
    li      r0, 0x1
    b       branch_0x801bbdd8

branch_0x801bbdd4:
    li      r0, 0x0
branch_0x801bbdd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bbde8
    li      r30, 0x4
    b       branch_0x801bbe3c

branch_0x801bbde8:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x22
    bne-    branch_0x801bbdfc
    li      r0, 0x1
    b       branch_0x801bbe00

branch_0x801bbdfc:
    li      r0, 0x0
branch_0x801bbe00:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bbe10
    li      r30, 0x1
    b       branch_0x801bbe3c

branch_0x801bbe10:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x2a
    bne-    branch_0x801bbe24
    li      r0, 0x1
    b       branch_0x801bbe28

branch_0x801bbe24:
    li      r0, 0x0
branch_0x801bbe28:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bbe38
    li      r30, 0x5
    b       branch_0x801bbe3c

branch_0x801bbe38:
    li      r30, 0x4
branch_0x801bbe3c:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x484e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bbe6c
    addi    r4, r31, 0x10
    li      r3, 0x484e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bbe6c:
    lwz     r3, R13Off_m0x62b0(r13)
    mr      r4, r30
    bl      resetNozzleBoxesModel__12TItemManagerFi
    lwz     r3, R13Off_m0x6048(r13)
    mr      r4, r31
    bl      fireGetNozzle__12TMarDirectorFP11TItemNozzle
branch_0x801bbe84:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__9TEggYoshiFPCc
__ct__9TEggYoshiFPCc: # 0x801bbe9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__9TEggYoshi@ha
    addi    r3, r3, __vvt__9TEggYoshi@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x148(r31)
    stw     r0, 0x14c(r31)
    stw     r0, 0x150(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__9TEggYoshiFR20JSUMemoryInputStream
load__9TEggYoshiFR20JSUMemoryInputStream: # 0x801bbef0
    mflr    r0
    lis     r5, unk_80390ca8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r5, unk_80390ca8@l
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r3, 0xf4(r31)
    addi    r4, r30, 0x128
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bbf64
    lis     r4, unk_00060003@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060003@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x1
    bne-    branch_0x801bbf4c
    li      r0, 0xe
    sth     r0, 0xfc(r31)
    b       branch_0x801bbfd0

branch_0x801bbf4c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    b       branch_0x801bc114

branch_0x801bbf64:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801bbfa4
    lis     r4, unk_0001038f@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_0001038f@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x801bbfd0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    b       branch_0x801bc114

branch_0x801bbfa4:
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x21
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801bbfd0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    b       branch_0x801bc114

branch_0x801bbfd0:
    lwz     r3, 0x70(r31)
    bl      getMActorAnmData__11TObjManagerFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x138
    li      r5, 0x3
    lis     r6, 0x1021
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x148(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x148(r31)
    lwz     r3, 0x58(r3)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x148(r31)
    addi    r4, r30, 0x160
    bl      setBck__6MActorFPCc
    lwz     r3, 0x148(r31)
    addi    r4, r30, 0x178
    bl      setBtp__6MActorFPCc
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2be4(r2)
    stfs    f0, 0xc(r3)
    mr      r3, r31
    bl      decideRandomLoveFruit__9TEggYoshiFv
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0xe
    bne-    branch_0x801bc054
    li      r0, 0x1
    b       branch_0x801bc058

branch_0x801bc054:
    li      r0, 0x0
branch_0x801bc058:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc114
    lis     r3, unk_40000392@h
    lwz     r4, 0x14c(r31)
    addi    r0, r3, unk_40000392@l
    cmpw    r4, r0
    beq-    branch_0x801bc0e8
    bge-    branch_0x801bc08c
    addi    r0, r3, 0x390
    cmpw    r4, r0
    beq-    branch_0x801bc100
    bge-    branch_0x801bc0d0
    b       branch_0x801bc114

branch_0x801bc08c:
    addi    r0, r3, 0x394
    cmpw    r4, r0
    beq-    branch_0x801bc0a0
    bge-    branch_0x801bc114
    b       branch_0x801bc0b8

branch_0x801bc0a0:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bd0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc114

branch_0x801bc0b8:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc4(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc114

branch_0x801bc0d0:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc114

branch_0x801bc0e8:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bbc(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc114

branch_0x801bc100:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bb8(r2)
    stfs    f0, 0x10(r3)
branch_0x801bc114:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl receiveMessage__9TEggYoshiFP9THitActorUl
receiveMessage__9TEggYoshiFP9THitActorUl: # 0x801bc12c
    mflr    r0
    cmplwi  r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801bc164
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801bc384

branch_0x801bc164:
    addi    r0, r5, -0x7
    cmplwi  r0, 0x1
    bgt-    branch_0x801bc194
    lfs     f0, -0x2bb4(r2)
    li      r0, 0xf
    li      r3, 0x1
    stfs    f0, 0xb0(r31)
    lwz     r4, 0xf0(r31)
    rlwinm  r4, r4, 0, 28, 26
    stw     r4, 0xf0(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801bc384

branch_0x801bc194:
    cmplwi  r5, 0x10
    bne-    branch_0x801bc2a8
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x24(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x20(sp)
    mr      r3, r31
    stfs    f0, 0xb0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    bl      decideRandomLoveFruit__9TEggYoshiFv
    lis     r3, unk_40000392@h
    lwz     r4, 0x14c(r31)
    addi    r0, r3, unk_40000392@l
    cmpw    r4, r0
    beq-    branch_0x801bc26c
    bge-    branch_0x801bc210
    addi    r0, r3, 0x390
    cmpw    r4, r0
    beq-    branch_0x801bc284
    bge-    branch_0x801bc254
    b       branch_0x801bc298

branch_0x801bc210:
    addi    r0, r3, 0x394
    cmpw    r4, r0
    beq-    branch_0x801bc224
    bge-    branch_0x801bc298
    b       branch_0x801bc23c

branch_0x801bc224:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bd0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc298

branch_0x801bc23c:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc4(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc298

branch_0x801bc254:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc298

branch_0x801bc26c:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bbc(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc298

branch_0x801bc284:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bb8(r2)
    stfs    f0, 0x10(r3)
branch_0x801bc298:
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    li      r3, 0x1
    b       branch_0x801bc384

branch_0x801bc2a8:
    cmplwi  r5, 0x6
    bne-    branch_0x801bc380
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      decideRandomLoveFruit__9TEggYoshiFv
    lis     r3, unk_40000392@h
    lwz     r4, 0x14c(r31)
    addi    r0, r3, unk_40000392@l
    cmpw    r4, r0
    beq-    branch_0x801bc354
    bge-    branch_0x801bc2f8
    addi    r0, r3, 0x390
    cmpw    r4, r0
    beq-    branch_0x801bc36c
    bge-    branch_0x801bc33c
    b       branch_0x801bc380

branch_0x801bc2f8:
    addi    r0, r3, 0x394
    cmpw    r4, r0
    beq-    branch_0x801bc30c
    bge-    branch_0x801bc380
    b       branch_0x801bc324

branch_0x801bc30c:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bd0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc380

branch_0x801bc324:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc4(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc380

branch_0x801bc33c:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc380

branch_0x801bc354:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bbc(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc380

branch_0x801bc36c:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bb8(r2)
    stfs    f0, 0x10(r3)
branch_0x801bc380:
    li      r3, 0x0
branch_0x801bc384:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl startFruit__9TEggYoshiFv
startFruit__9TEggYoshiFv: # 0x801bc398
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x10
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lhz     r3, 0xfc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x801bc3d8
    li      r0, 0x1
    b       branch_0x801bc3dc

branch_0x801bc3d8:
    li      r0, 0x0
branch_0x801bc3dc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc438
    cmplwi  r3, 0xe
    bne-    branch_0x801bc3f4
    li      r0, 0x1
    b       branch_0x801bc3f8

branch_0x801bc3f4:
    li      r0, 0x0
branch_0x801bc3f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc438
    cmplwi  r3, 0xf
    bne-    branch_0x801bc410
    li      r0, 0x1
    b       branch_0x801bc414

branch_0x801bc410:
    li      r0, 0x0
branch_0x801bc414:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc438
    cmplwi  r3, 0x10
    bne-    branch_0x801bc42c
    li      r0, 0x1
    b       branch_0x801bc430

branch_0x801bc42c:
    li      r0, 0x0
branch_0x801bc430:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bc454
branch_0x801bc438:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    li      r5, 0x10
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801bc454:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl perform__9TEggYoshiFUlPQ26JDrama9TGraphics
perform__9TEggYoshiFUlPQ26JDrama9TGraphics: # 0x801bc468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    bl      perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics
    lhz     r3, 0xfc(r29)
    cmplwi  r3, 0xc
    bne-    branch_0x801bc4a4
    li      r0, 0x1
    b       branch_0x801bc4a8

branch_0x801bc4a4:
    li      r0, 0x0
branch_0x801bc4a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc58c
    cmplwi  r3, 0x0
    bne-    branch_0x801bc4c0
    li      r0, 0x1
    b       branch_0x801bc4c4

branch_0x801bc4c0:
    li      r0, 0x0
branch_0x801bc4c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc58c
    cmplwi  r3, 0x6
    bne-    branch_0x801bc4dc
    li      r0, 0x1
    b       branch_0x801bc4e0

branch_0x801bc4dc:
    li      r0, 0x0
branch_0x801bc4e0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc58c
    cmplwi  r3, 0x2
    bne-    branch_0x801bc4f8
    li      r0, 0x1
    b       branch_0x801bc4fc

branch_0x801bc4f8:
    li      r0, 0x0
branch_0x801bc4fc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc58c
    cmplwi  r3, 0xe
    bne-    branch_0x801bc514
    li      r0, 0x1
    b       branch_0x801bc518

branch_0x801bc514:
    li      r0, 0x0
branch_0x801bc518:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc58c
    cmplwi  r3, 0xf
    bne-    branch_0x801bc530
    li      r0, 0x1
    b       branch_0x801bc534

branch_0x801bc530:
    li      r0, 0x0
branch_0x801bc534:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc58c
    cmplwi  r3, 0x10
    bne-    branch_0x801bc54c
    li      r0, 0x1
    b       branch_0x801bc550

branch_0x801bc54c:
    li      r0, 0x0
branch_0x801bc550:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc58c
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x801bc57c
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x148(r29)
    lwz     r3, 0x58(r3)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x801bc57c:
    lwz     r3, 0x148(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x801bc58c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl control__9TEggYoshiFv
control__9TEggYoshiFv: # 0x801bc5a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x10
    bgt-    branch_0x801bc7ac
    lis     r3, unk_803c939c@ha
    addi    r3, r3, unk_803c939c@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x801bc5e8:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801bc7ac
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAnim__11TMapObjBaseFUs
    lis     r3, unk_40000392@h
    lwz     r4, 0x14c(r31)
    addi    r0, r3, unk_40000392@l
    cmpw    r4, r0
    beq-    branch_0x801bc68c
    bge-    branch_0x801bc630
    addi    r0, r3, 0x390
    cmpw    r4, r0
    beq-    branch_0x801bc6a4
    bge-    branch_0x801bc674
    b       branch_0x801bc6b8

branch_0x801bc630:
    addi    r0, r3, 0x394
    cmpw    r4, r0
    beq-    branch_0x801bc644
    bge-    branch_0x801bc6b8
    b       branch_0x801bc65c

branch_0x801bc644:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bd0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc6b8

branch_0x801bc65c:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc4(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc6b8

branch_0x801bc674:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bc0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc6b8

branch_0x801bc68c:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bbc(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x801bc6b8

branch_0x801bc6a4:
    lwz     r3, 0x148(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bb8(r2)
    stfs    f0, 0x10(r3)
branch_0x801bc6b8:
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    b       branch_0x801bc7ac

branch_0x801bc6c4:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801bc7ac
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      startAnim__11TMapObjBaseFUs
    bl      SMS_GetYoshi__Fv
    lbz     r0, 0x0(r3)
    mr      r30, r3
    cmplwi  r0, 0x0
    bne-    branch_0x801bc6fc
    li      r0, 0x0
    b       branch_0x801bc700

branch_0x801bc6fc:
    li      r0, 0x1
branch_0x801bc700:
    cmpwi   r0, 0x0
    bne-    branch_0x801bc740
    lwz     r6, 0x10(r31)
    mr      r3, r30
    lwz     r0, 0x14(r31)
    addi    r5, r31, 0x0
    addi    r4, sp, 0x24
    stw     r6, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x2c(sp)
    lfs     f1, 0x34(r31)
    bl      appearFromEgg__6TYoshiFRCQ29JGeometry8TVec3_f_fP9TEggYoshi
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      setEggYoshiPtr__6TYoshiFP9TEggYoshi
branch_0x801bc740:
    li      r0, 0xc
    sth     r0, 0xfc(r31)
    b       branch_0x801bc7ac

branch_0x801bc74c:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801bc7ac
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    sth     r0, 0xfc(r31)
    b       branch_0x801bc7ac

branch_0x801bc77c:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x2be4(r2)
    stw     r3, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x20(sp)
    lfs     f0, 0x1c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801bc7ac
    li      r0, 0x10
    sth     r0, 0xfc(r31)
branch_0x801bc7ac:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl touchActor__9TEggYoshiFP9THitActor
touchActor__9TEggYoshiFP9THitActor: # 0x801bc7c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lhz     r3, 0xfc(r3)
    cmplwi  r3, 0x1
    bne-    branch_0x801bc7f4
    li      r0, 0x1
    b       branch_0x801bc7f8

branch_0x801bc7f4:
    li      r0, 0x0
branch_0x801bc7f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bc81c
    cmplwi  r3, 0xd
    bne-    branch_0x801bc810
    li      r0, 0x1
    b       branch_0x801bc814

branch_0x801bc810:
    li      r0, 0x0
branch_0x801bc814:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bc880
branch_0x801bc81c:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801bc834
    li      r0, 0x1
    b       branch_0x801bc838

branch_0x801bc834:
    li      r0, 0x0
branch_0x801bc838:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bc864
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801bc864
    bl      isFruit__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801bc864
    lwz     r4, 0x6c(r31)
    mr      r3, r30
    bl      touchFruit__9TEggYoshiFP9THitActor
branch_0x801bc864:
    mr      r3, r31
    bl      isFruit__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801bc880
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      touchFruit__9TEggYoshiFP9THitActor
branch_0x801bc880:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl touchFruit__9TEggYoshiFP9THitActor
touchFruit__9TEggYoshiFP9THitActor: # 0x801bc898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r3
    lhz     r3, 0xfc(r3)
    cmplwi  r3, 0xe
    bne-    branch_0x801bc8c8
    li      r0, 0x1
    b       branch_0x801bc8cc

branch_0x801bc8c8:
    li      r0, 0x0
branch_0x801bc8cc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bca04
    cmplwi  r3, 0x6
    bne-    branch_0x801bc8e4
    li      r0, 0x1
    b       branch_0x801bc8e8

branch_0x801bc8e4:
    li      r0, 0x0
branch_0x801bc8e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bc8f4
    b       branch_0x801bca04

branch_0x801bc8f4:
    lwz     r3, 0x14c(r30)
    lwz     r0, 0x4c(r31)
    cmplw   r3, r0
    bne-    branch_0x801bc9a4
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    lwz     r3, 0x148(r30)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2bb0(r2)
    stfs    f0, 0x10(r3)
    lfs     f3, 0x10(r31)
    lfs     f2, 0x10(r30)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x18(r30)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    extsh   r0, r3
    lfd     f1, -0x2ba0(r2)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x2bac(r2)
    stw     r0, 0x3c(sp)
    lis     r3, 0x4330
    li      r0, 0xb
    stw     r3, 0x38(sp)
    li      r4, 0x4840
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x34(r30)
    sth     r0, 0xfc(r30)
    stw     r31, 0x150(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bca04
    li      r3, 0x4840
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801bca04

branch_0x801bc9a4:
    mr      r3, r30
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801bca04
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      startAnim__11TMapObjBaseFUs
    lwz     r3, 0x148(r30)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2ba8(r2)
    li      r4, 0x483e
    stfs    f0, 0x10(r3)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bc9fc
    li      r3, 0x483e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801bc9fc:
    li      r0, 0xd
    sth     r0, 0xfc(r30)
branch_0x801bca04:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl decideRandomLoveFruit__9TEggYoshiFv
decideRandomLoveFruit__9TEggYoshiFv: # 0x801bca1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r3, 0x7c(r4)
    cmplwi  r3, 0x7
    bne-    branch_0x801bca5c
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x801bca5c
    lis     r3, unk_40000392@h
    addi    r0, r3, unk_40000392@l
    stw     r0, 0x14c(r31)
    b       branch_0x801bcb40

branch_0x801bca5c:
    cmplwi  r3, 0x3
    bne-    branch_0x801bca74
    lis     r3, unk_40000393@h
    addi    r0, r3, unk_40000393@l
    stw     r0, 0x14c(r31)
    b       branch_0x801bcb40

branch_0x801bca74:
    cmplwi  r3, 0x1
    bne-    branch_0x801bcaa4
    lis     r4, unk_80390e34@h
    lwz     r3, 0x4(r31)
    addi    r4, r4, unk_80390e34@l
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bcaa4
    lis     r3, unk_40000394@h
    addi    r0, r3, unk_40000394@l
    stw     r0, 0x14c(r31)
    b       branch_0x801bcb40

branch_0x801bcaa4:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2ba0(r2)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x2b98(r2)
    stw     r0, 0x58(sp)
    lfs     f0, -0x2b94(r2)
    lfd     f2, 0x58(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x801bcb14
    bge-    branch_0x801bcaf8
    cmpwi   r0, 0x0
    bge-    branch_0x801bcb04
    b       branch_0x801bcb34

branch_0x801bcaf8:
    cmpwi   r0, 0x3
    bge-    branch_0x801bcb34
    b       branch_0x801bcb24

branch_0x801bcb04:
    lis     r3, unk_40000394@h
    addi    r0, r3, unk_40000394@l
    stw     r0, 0x14c(r31)
    b       branch_0x801bcb40

branch_0x801bcb14:
    lis     r3, unk_40000391@h
    addi    r0, r3, unk_40000391@l
    stw     r0, 0x14c(r31)
    b       branch_0x801bcb40

branch_0x801bcb24:
    lis     r3, unk_40000392@h
    addi    r0, r3, unk_40000392@l
    stw     r0, 0x14c(r31)
    b       branch_0x801bcb40

branch_0x801bcb34:
    lis     r3, unk_40000390@h
    addi    r0, r3, unk_40000390@l
    stw     r0, 0x14c(r31)
branch_0x801bcb40:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __ct__6TShineFPCc
__ct__6TShineFPCc: # 0x801bcb54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__6TShine@ha
    stw     r0, 0x20(r31)
    addi    r4, r3, __vvt__6TShine@l
    li      r5, 0x0
    stw     r5, 0x148(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stw     r5, 0x14c(r31)
    stw     r5, 0x150(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x154(r31)
    lfs     f1, -0x2be4(r2)
    stfs    f1, 0x158(r31)
    stfs    f1, 0x15c(r31)
    stfs    f1, 0x160(r31)
    stfs    f1, 0x164(r31)
    stw     r5, 0x168(r31)
    lfs     f0, -0x2b90(r2)
    stfs    f0, 0x16c(r31)
    stfs    f1, 0x188(r31)
    stw     r5, 0x18c(r31)
    stb     r5, 0x190(r31)
    stw     r5, 0x194(r31)
    stw     r5, 0x198(r31)
    stw     r5, 0x19c(r31)
    stw     r5, 0x1a0(r31)
    stb     r5, 0x1b4(r31)
    stfs    f1, 0x184(r31)
    stfs    f1, 0x180(r31)
    stfs    f1, 0x17c(r31)
    stfs    f1, 0x1b0(r31)
    stfs    f1, 0x1ac(r31)
    stfs    f1, 0x1a8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadBeforeInit__6TShineFR20JSUMemoryInputStream
loadBeforeInit__6TShineFR20JSUMemoryInputStream: # 0x801bcc18
    mflr    r0
    li      r5, 0x20
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    addi    r4, sp, 0x24
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, r2, R2Off_m0x2b8c
    addi    r4, sp, 0x24
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bcc64
    li      r0, 0x0
    stw     r0, 0x154(r30)
    b       branch_0x801bcc8c

branch_0x801bcc64:
    addi    r3, r2, R2Off_m0x2b84
    addi    r4, sp, 0x24
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801bcc84
    li      r0, 0x2
    stw     r0, 0x154(r30)
    b       branch_0x801bcc8c

branch_0x801bcc84:
    li      r0, 0x1
    stw     r0, 0x154(r30)
branch_0x801bcc8c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x20(sp)
    cmpwi   r0, -0x1
    bne-    branch_0x801bccb0
    li      r0, 0x78
    stw     r0, 0x20(sp)
branch_0x801bccb0:
    lwz     r0, 0x20(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    stw     r0, 0x134(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x18(sp)
    addi    r0, r3, 0x1
    stw     r3, 0x20(sp)
    cmpwi   r0, 0x2
    blt-    branch_0x801bcce4
    li      r0, -0x1
    stw     r0, 0x20(sp)
branch_0x801bcce4:
    lwz     r3, 0x20(sp)
    addi    r0, r3, 0x1
    stb     r0, 0x190(r30)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl loadAfter__6TShineFv
loadAfter__6TShineFv: # 0x801bcd08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__14TMapObjGeneralFv
    lwz     r0, 0x154(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x801bcd40
    li      r0, 0xf0
    stw     r0, 0x104(r31)
    li      r0, 0x12
    sth     r0, 0xfc(r31)
    b       branch_0x801bcd5c

branch_0x801bcd40:
    cmplwi  r0, 0x1
    bne-    branch_0x801bcd5c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801bcd5c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__6TShineFv
initMapObj__6TShineFv: # 0x801bcd70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__14TMapObjGeneralFv
    li      r0, 0x1e0
    stw     r0, 0x14c(r31)
    li      r0, 0x78
    li      r3, 0x0
    stw     r0, 0x150(r31)
    li      r0, 0xf0
    stb     r3, 0x1a4(r31)
    lfs     f0, -0x2bd0(r2)
    stfs    f0, 0x1a8(r31)
    stfs    f0, 0x1ac(r31)
    stfs    f0, 0x1b0(r31)
    stw     r0, 0x170(r31)
    stw     r3, 0x174(r31)
    stw     r0, 0x178(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeMActors__6TShineFv
makeMActors__6TShineFv: # 0x801bcdd4
    mflr    r0
    lis     r4, unk_80390ca8@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, unk_80390ca8@l
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    li      r3, 0x18
    stw     r29, 0x1c(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801bce18
    lwz     r4, 0x70(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x801bce18:
    stw     r29, 0x78(r30)
    lis     r0, 0x1022
    lwz     r3, 0x78(r30)
    stw     r0, 0x14(r3)
    lwz     r0, 0x134(r30)
    lwz     r3, R13Off_m0x6060(r13)
    clrlwi  r4, r0, 24
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801bce88
    lwz     r4, 0x4(r30)
    addi    r3, r31, 0x1a8
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x801bce88
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    addi    r6, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c0
    li      r5, 0x0
    bl      initMActor__11TMapObjBaseFPCcPCcUl
    li      r0, 0x1
    stb     r0, 0x1b4(r30)
    b       branch_0x801bceb0

branch_0x801bce88:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    addi    r6, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1d0
    li      r5, 0x0
    bl      initMActor__11TMapObjBaseFPCcPCcUl
branch_0x801bceb0:
    stw     r3, 0x74(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl kill__6TShineFv
kill__6TShineFv: # 0x801bced0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      kill__14TMapObjGeneralFv
    li      r0, 0x1
    stw     r0, 0x154(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl appearWithDemo__6TShineFPCc
appearWithDemo__6TShineFPCc: # 0x801bcf04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    mr      r3, r30
    lwz     r5, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    lwz     r0, 0x2c(r3)
    lis     r3, appearWithTimeCallback__6TShineFUlUl@ha
    addi    r8, r3, appearWithTimeCallback__6TShineFUlUl@l
    stw     r0, 0x18c(r29)
    li      r0, 0x0
    addi    r5, sp, 0x38
    lwz     r3, R13Off_m0x6048(r13)
    mr      r4, r30
    sth     r0, 0x38(sp)
    addi    r9, r29, 0x0
    li      r6, -0x1
    stw     r5, 0x8(sp)
    addi    r5, r29, 0x10
    li      r7, 0x1
    lfs     f1, -0x2be4(r2)
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl appearSimple__6TShineFi
appearSimple__6TShineFi: # 0x801bcfb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    bl      appear__14TMapObjGeneralFv
    lwz     r0, 0x64(r31)
    li      r4, 0x1
    lis     r5, 0x5
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x150(r31)
    stw     r0, 0x104(r31)
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r31)
    lwz     r3, R13Off_m0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    li      r3, 0x3c
    stw     r3, 0x174(r31)
    li      r0, 0x3
    li      r4, 0x4821
    stw     r30, 0x170(r31)
    stw     r3, 0x178(r31)
    stw     r0, 0x154(r31)
    lfs     f0, -0x2be4(r2)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    lfs     f0, -0x2b90(r2)
    stfs    f0, -0x7a20(r13)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10c(r31)
    stw     r0, 0x110(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x114(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd078
    addi    r4, r31, 0x10
    li      r3, 0x4821
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd078:
    lis     r3, unk_8001002d@h
    addi    r3, r3, unk_8001002d@l
    bl      startBGM__5MSBgmFUl
    lwz     r3, 0x174(r31)
    li      r0, 0xb
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl appearWithTimeCallback__6TShineFUlUl
appearWithTimeCallback__6TShineFUlUl: # 0x801bd0b8
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801bd0f4
    lwz     r4, 0x18c(r3)
    li      r5, -0x1
    li      r6, -0x1
    li      r7, -0x1
    bl      appearWithTime__6TShineFiiii
    lwz     r3, R13Off_m0x6048(r13)
    lhz     r0, 0x4e(r3)
    ori     r0, r0, 0x1
    sth     r0, 0x4e(r3)
    b       branch_0x801bd10c

branch_0x801bd0f4:
    cmplwi  r4, 0x1
    bne-    branch_0x801bd10c
    lwz     r3, R13Off_m0x6048(r13)
    lhz     r0, 0x4e(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0x4e(r3)
branch_0x801bd10c:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appearWithTime__6TShineFiiii
appearWithTime__6TShineFiiii: # 0x801bd120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stmw    r27, 0x64(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    bl      appear__14TMapObjGeneralFv
    lwz     r0, 0x64(r30)
    li      r4, 0x1
    lis     r5, 0x5
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0x150(r30)
    stw     r0, 0x104(r30)
    lwz     r0, 0xf8(r30)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r30)
    lwz     r3, R13Off_m0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    cmpwi   r27, 0x0
    blt-    branch_0x801bd188
    stw     r27, 0x174(r30)
branch_0x801bd188:
    cmpwi   r28, 0x0
    blt-    branch_0x801bd194
    stw     r28, 0x170(r30)
branch_0x801bd194:
    cmpwi   r29, 0x0
    blt-    branch_0x801bd1a0
    stw     r29, 0x178(r30)
branch_0x801bd1a0:
    lwz     r6, 0x178(r30)
    lis     r5, 0x4330
    lwz     r0, 0x170(r30)
    addi    r4, r30, 0x10c
    lwz     r3, 0x174(r30)
    add     r0, r0, r6
    add     r0, r3, r0
    subf    r0, r0, r31
    stw     r0, 0x168(r30)
    mr      r3, r30
    lfs     f0, -0x2be4(r2)
    stfs    f0, 0x158(r30)
    lwz     r0, 0x168(r30)
    lfd     f3, -0x2ba0(r2)
    xoris   r0, r0, 0x8000
    lfs     f2, 0x10c(r30)
    stw     r0, 0x54(sp)
    lfs     f1, 0x10(r30)
    stw     r5, 0x50(sp)
    lwz     r6, 0x170(r30)
    fsubs   f1, f2, f1
    lfd     f0, 0x50(sp)
    xoris   r0, r6, 0x8000
    lfs     f5, 0x110(r30)
    fsubs   f0, f0, f3
    stw     r0, 0x5c(sp)
    lfs     f4, -0x7a20(r13)
    fdivs   f0, f1, f0
    lfs     f1, 0x14(r30)
    stw     r5, 0x58(sp)
    lfd     f2, 0x58(sp)
    stfs    f0, 0x17c(r30)
    fsubs   f0, f2, f3
    lwz     r0, 0x168(r30)
    xoris   r0, r0, 0x8000
    fmadds  f0, f4, f0, f1
    stw     r0, 0x4c(sp)
    stw     r5, 0x48(sp)
    fsubs   f31, f5, f0
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f3
    fdivs   f0, f31, f0
    stfs    f0, 0x180(r30)
    lwz     r0, 0x168(r30)
    lfs     f1, 0x114(r30)
    xoris   r0, r0, 0x8000
    lfs     f0, 0x18(r30)
    stw     r0, 0x44(sp)
    fsubs   f1, f1, f0
    stw     r5, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f3
    fdivs   f0, f1, f0
    stfs    f0, 0x184(r30)
    bl      getDistanceXZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
    stfs    f1, 0x15c(r30)
    lfs     f1, -0x2be4(r2)
    lfs     f0, 0x15c(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801bd298
    lfs     f0, -0x2b7c(r2)
    stfs    f0, 0x15c(r30)
branch_0x801bd298:
    lfs     f0, -0x2be4(r2)
    fcmpo   cr0, f31, f0
    ble-    branch_0x801bd2b4
    fabs    f1, f31
    lfs     f0, 0x15c(r30)
    fadds   f0, f0, f1
    stfs    f0, 0x15c(r30)
branch_0x801bd2b4:
    lfs     f1, 0x15c(r30)
    li      r4, 0x4821
    lfs     f0, -0x7a24(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0x160(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd2f4
    addi    r4, r30, 0x10
    li      r3, 0x4821
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd2f4:
    lis     r3, unk_8001002d@h
    addi    r3, r3, unk_8001002d@l
    bl      startBGM__5MSBgmFUl
    lwz     r3, 0x174(r30)
    li      r0, 0xb
    stw     r3, 0x104(r30)
    sth     r0, 0xfc(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lmw     r27, 0x64(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl touchPlayer__6TShineFP9THitActor
touchPlayer__6TShineFP9THitActor: # 0x801bd334
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    lwz     r12, 0x0(r4)
    addi    r4, r31, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x610c(r13)
    li      r4, 0x4814
    lfs     f1, -0x2b78(r2)
    stfs    f1, 0x1c(r3)
    lfs     f0, -0x2b74(r2)
    stfs    f0, 0x20(r3)
    stfs    f1, 0x24(r3)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd3ac
    addi    r4, r31, 0x10
    li      r3, 0x4814
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd3ac:
    lis     r4, unk_80390e84@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80390e84@l
    bl      setBck__6MActorFPCc
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__6TShineFP9THitActorUl
receiveMessage__6TShineFP9THitActorUl: # 0x801bd3dc
    mflr    r0
    lis     r4, unk_80390ca8@h
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stfd    f29, 0x68(sp)
    stfd    f28, 0x60(sp)
    stfd    f27, 0x58(sp)
    stfd    f26, 0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    addi    r30, r4, unk_80390ca8@l
    lwz     r3, 0xf8(r3)
    rlwinm  r3, r3, 0, 5, 3
    stw     r3, 0xf8(r31)
    addi    r3, r31, 0x0
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x18(r31)
    lwz     r4, R13Off_m0x60ac(r13)
    lfd     f2, -0x2ba0(r2)
    lha     r4, 0x0(r4)
    lfs     f3, -0x2b70(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, -0x2b6c(r2)
    stw     r4, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x108(r31)
    lfs     f26, 0x38(r31)
    fsubs   f30, f1, f0
    lfs     f27, 0x34(r31)
    lfs     f28, 0x30(r31)
    lfs     f29, 0x18(r31)
    lfs     f31, 0x10(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x2b68(r2)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f28
    fmuls   f2, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0x38(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0x30(sp)
    lwz     r4, 0x3c(sp)
    stfd    f0, 0x28(sp)
    lwz     r5, 0x34(sp)
    lwz     r6, 0x2c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    bl      SMS_IsMarioOnYoshi__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd51c
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801bd50c
    lwz     r3, 0x74(r31)
    addi    r4, r30, 0x1e8
    bl      setBck__6MActorFPCc
    b       branch_0x801bd544

branch_0x801bd50c:
    lwz     r3, 0x74(r31)
    addi    r4, r30, 0x208
    bl      setBck__6MActorFPCc
    b       branch_0x801bd544

branch_0x801bd51c:
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801bd538
    lwz     r3, 0x74(r31)
    addi    r4, r30, 0x220
    bl      setBck__6MActorFPCc
    b       branch_0x801bd544

branch_0x801bd538:
    lwz     r3, 0x74(r31)
    addi    r4, r30, 0x23c
    bl      setBck__6MActorFPCc
branch_0x801bd544:
    lfs     f0, -0x2b64(r2)
    li      r0, 0x10
    li      r3, 0x1
    stfs    f0, 0x1a8(r31)
    stfs    f0, 0x1ac(r31)
    stfs    f0, 0x1b0(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    lfd     f29, 0x68(sp)
    lfd     f28, 0x60(sp)
    lfd     f27, 0x58(sp)
    lfd     f26, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl perform__6TShineFUlPQ26JDrama9TGraphics
perform__6TShineFUlPQ26JDrama9TGraphics: # 0x801bd590
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x8(sp)
    beq-    branch_0x801bd5dc
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bd5dc
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801bd5c4
    li      r0, 0x1
    b       branch_0x801bd5c8

branch_0x801bd5c4:
    li      r0, 0x0
branch_0x801bd5c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bd5dc
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0xf0(r3)
branch_0x801bd5dc:
    bl      perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__6TShineFv
control__6TShineFv: # 0x801bd5f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stw     r31, 0xf4(sp)
    stw     r30, 0xf0(sp)
    mr      r30, r3
    stw     r29, 0xec(sp)
    stw     r28, 0xe8(sp)
    lhz     r0, 0xfc(r3)
    lis     r3, unk_80390ca8@h
    addi    r31, r3, unk_80390ca8@l
    cmplwi  r0, 0x10
    bne-    branch_0x801bd62c
    li      r0, 0x1
    b       branch_0x801bd630

branch_0x801bd62c:
    li      r0, 0x0
branch_0x801bd630:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bd640
    mr      r3, r30
    bl      control__14TMapObjGeneralFv
branch_0x801bd640:
    lhz     r4, 0xfc(r30)
    cmplwi  r4, 0x10
    bne-    branch_0x801bd654
    li      r0, 0x1
    b       branch_0x801bd658

branch_0x801bd654:
    li      r0, 0x0
branch_0x801bd658:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bd680
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x10(r30)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x14(r30)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x18(r30)
    b       branch_0x801bdbd0

branch_0x801bd680:
    cmplwi  r4, 0x12
    bgt-    branch_0x801bdbd0
    lis     r3, unk_803c93e0@ha
    addi    r3, r3, unk_803c93e0@l
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x801bd6a0:
    lfs     f1, 0x34(r30)
    lis     r31, unk_000081c1@ha
    lfs     f0, 0x16c(r30)
    addi    r4, r31, unk_000081c1@l
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd6e4
    addi    r3, r31, -0x7e3f
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd6e4:
    lwz     r4, 0x74(r30)
    li      r0, 0x1
    lwz     r3, R2Off_m0x2be8(r2)
    lwz     r4, 0x4(r4)
    lwz     r5, R13Off_m0x610c(r13)
    lwz     r4, 0x58(r4)
    stw     r3, 0xdc(sp)
    lfs     f0, 0x6c(r4)
    lfs     f1, 0x7c(r4)
    lfs     f2, 0x8c(r4)
    lbz     r3, 0xdc(sp)
    stb     r3, 0x18(r5)
    lbz     r3, 0xde(sp)
    stb     r3, 0x19(r5)
    lbz     r3, 0xdd(sp)
    stb     r3, 0x1a(r5)
    lbz     r3, 0xdf(sp)
    stb     r3, 0x1b(r5)
    stb     r0, 0x54(r5)
    lwz     r3, R13Off_m0x610c(r13)
    stfs    f0, 0x1c(r3)
    stfs    f1, 0x20(r3)
    stfs    f2, 0x24(r3)
    stb     r0, 0x54(r3)
    b       branch_0x801bdbd0

branch_0x801bd748:
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801bd75c
    li      r0, 0x1
    b       branch_0x801bd760

branch_0x801bd75c:
    li      r0, 0x0
branch_0x801bd760:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdbd0
    lis     r3, unk_f7fffeff@ha
    lwz     r4, 0xf8(r30)
    addi    r0, r3, unk_f7fffeff@l
    and     r0, r4, r0
    stw     r0, 0xf8(r30)
    li      r0, 0xc
    lwz     r3, 0x170(r30)
    stw     r3, 0x104(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801bdbd0

branch_0x801bd790:
    lis     r31, unk_000081c1@ha
    lwz     r3, R13Off_m0x6044(r13)
    addi    r4, r31, unk_000081c1@l
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd7c4
    addi    r3, r31, -0x7e3f
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd7c4:
    lfs     f1, 0x14(r30)
    lfs     f0, -0x7a20(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0x154(r30)
    cmplwi  r0, 0x3
    bne-    branch_0x801bd800
    lfs     f1, 0x34(r30)
    lfs     f0, -0x2bbc(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f1, 0x34(r30)
    lfs     f2, -0x2be4(r2)
    lfs     f3, -0x2b60(r2)
    bl      MsWrap_f___Ffff_801bdbf0
branch_0x801bd800:
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801bd814
    li      r0, 0x1
    b       branch_0x801bd818

branch_0x801bd814:
    li      r0, 0x0
branch_0x801bd818:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdbd0
    lwz     r0, 0x154(r30)
    cmplwi  r0, 0x3
    bne-    branch_0x801bd840
    lwz     r3, 0x170(r30)
    li      r0, 0xe
    stw     r3, 0x104(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801bdbd0

branch_0x801bd840:
    lfs     f0, 0x14(r30)
    li      r0, 0xd
    stfs    f0, 0x164(r30)
    lwz     r3, 0x168(r30)
    stw     r3, 0x104(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801bdbd0

branch_0x801bd85c:
    lis     r31, unk_000081c1@ha
    lwz     r3, R13Off_m0x6044(r13)
    addi    r4, r31, unk_000081c1@l
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd890
    addi    r3, r31, -0x7e3f
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd890:
    lfs     f1, 0x14(r30)
    lfs     f0, -0x7a20(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x34(r30)
    lfs     f0, -0x2bbc(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f1, 0x34(r30)
    lfs     f2, -0x2be4(r2)
    lfs     f3, -0x2b60(r2)
    bl      MsWrap_f___Ffff_801bdbf0
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801bd8d4
    li      r0, 0x1
    b       branch_0x801bd8d8

branch_0x801bd8d4:
    li      r0, 0x0
branch_0x801bd8d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdbd0
    lfs     f0, -0x2bbc(r2)
    li      r0, 0xf
    stfs    f0, 0x16c(r30)
    lwz     r3, 0x178(r30)
    stw     r3, 0x104(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801bdbd0

branch_0x801bd8fc:
    lis     r31, unk_000081c1@ha
    lwz     r3, R13Off_m0x6044(r13)
    addi    r4, r31, unk_000081c1@l
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd930
    addi    r3, r31, -0x7e3f
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd930:
    mr      r3, r30
    bl      movingCircle__6TShineFv
    b       branch_0x801bdbd0

branch_0x801bd93c:
    lis     r31, unk_000081c1@ha
    lwz     r3, R13Off_m0x6044(r13)
    addi    r4, r31, unk_000081c1@l
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bd970
    addi    r3, r31, -0x7e3f
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bd970:
    lfs     f1, 0x14(r30)
    lfs     f0, 0x110(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801bd9a0
    lfs     f0, 0x188(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x188(r30)
    lfs     f0, -0x7a1c(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0x188(r30)
    b       branch_0x801bd9a4

branch_0x801bd9a0:
    stfs    f0, 0x14(r30)
branch_0x801bd9a4:
    lfs     f1, 0x16c(r30)
    lfs     f0, -0x2b90(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801bd9c4
    lfs     f0, -0x2b5c(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x16c(r30)
    b       branch_0x801bd9c8

branch_0x801bd9c4:
    stfs    f0, 0x16c(r30)
branch_0x801bd9c8:
    lfs     f1, 0x34(r30)
    lfs     f0, 0x16c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f2, 0x34(r30)
    lfs     f0, -0x2b60(r2)
    b       branch_0x801bd9e8

branch_0x801bd9e4:
    fsubs   f2, f2, f0
branch_0x801bd9e8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801bd9e4
    lfs     f1, -0x2b60(r2)
    lfs     f0, -0x2be4(r2)
    b       branch_0x801bda04

branch_0x801bda00:
    fadds   f2, f2, f1
branch_0x801bda04:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801bda00
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801bda20
    li      r0, 0x1
    b       branch_0x801bda24

branch_0x801bda20:
    li      r0, 0x0
branch_0x801bda24:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdbd0
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 2, 2
    beq-    branch_0x801bda4c
    lfs     f1, -0x2bd0(r2)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x801bda4c:
    lwz     r3, 0x64(r30)
    li      r0, 0x11
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r30)
    sth     r0, 0xfc(r30)
    b       branch_0x801bdbd0

branch_0x801bda64:
    lfs     f1, 0x34(r30)
    lfs     f0, 0x16c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f2, 0x34(r30)
    lfs     f0, -0x2b60(r2)
    b       branch_0x801bda84

branch_0x801bda80:
    fsubs   f2, f2, f0
branch_0x801bda84:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801bda80
    lfs     f1, -0x2b60(r2)
    lfs     f0, -0x2be4(r2)
    b       branch_0x801bdaa0

branch_0x801bda9c:
    fadds   f2, f2, f1
branch_0x801bdaa0:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801bda9c
    lis     r31, unk_000081c1@ha
    lwz     r3, R13Off_m0x6044(r13)
    addi    r4, r31, unk_000081c1@l
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bdbd0
    addi    r3, r31, -0x7e3f
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801bdbd0

branch_0x801bdae0:
    lwz     r29, R13Off_m0x7118(r13)
    li      r28, 0x1
    addi    r3, r29, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801bdb1c
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x49
    bne-    branch_0x801bdb0c
    mr      r0, r28
    b       branch_0x801bdb10

branch_0x801bdb0c:
    li      r0, 0x0
branch_0x801bdb10:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdb1c
    li      r28, 0x0
branch_0x801bdb1c:
    clrlwi. r0, r28, 24
    beq-    branch_0x801bdb2c
    li      r0, 0x1
    b       branch_0x801bdb30

branch_0x801bdb2c:
    li      r0, 0x0
branch_0x801bdb30:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdbd0
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801bdb4c
    li      r0, 0x1
    b       branch_0x801bdb50

branch_0x801bdb4c:
    li      r0, 0x0
branch_0x801bdb50:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdbd0
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x254
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x254
    mtlr    r12
    blrl
    lwz     r0, 0x2c(r3)
    lis     r3, appearWithTimeCallback__6TShineFUlUl@ha
    addi    r8, r3, appearWithTimeCallback__6TShineFUlUl@l
    stw     r0, 0x18c(r30)
    li      r0, 0x0
    addi    r4, sp, 0xa0
    lwz     r3, R13Off_m0x6048(r13)
    mr      r9, r30
    sth     r0, 0xa0(sp)
    addi    r5, r30, 0x10
    li      r6, -0x1
    stw     r4, 0x8(sp)
    addi    r4, r31, 0x254
    li      r7, 0x1
    lfs     f1, -0x2be4(r2)
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    li      r0, 0x11
    sth     r0, 0xfc(r30)
branch_0x801bdbd0:
    lwz     r0, 0xfc(sp)
    lwz     r31, 0xf4(sp)
    lwz     r30, 0xf0(sp)
    mtlr    r0
    lwz     r29, 0xec(sp)
    lwz     r28, 0xe8(sp)
    addi    sp, sp, 0xf8
    blr


.globl MsWrap_f___Ffff_801bdbf0
MsWrap_f___Ffff_801bdbf0: # 0x801bdbf0
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x801bdc2c
    fmr     f1, f2
    blr

branch_0x801bdc04:
    b       branch_0x801bdc0c

branch_0x801bdc08:
    fsubs   f1, f1, f0
branch_0x801bdc0c:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x801bdc08
    b       branch_0x801bdc20

branch_0x801bdc1c:
    fadds   f1, f1, f0
branch_0x801bdc20:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801bdc1c
    blr

branch_0x801bdc2c:
    fsubs   f0, f3, f2
    b       branch_0x801bdc0c

branch_0x801bdc34:
    blr


.globl movingCircle__6TShineFv
movingCircle__6TShineFv: # 0x801bdc38
    stwu    sp, -0x50(sp)
    lis     r5, 0x4330
    lwz     r0, 0x168(r3)
    lfd     f4, -0x2ba0(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x2b70(r2)
    stw     r0, 0x4c(sp)
    lfs     f2, 0x158(r3)
    stw     r5, 0x48(sp)
    lfs     f5, 0x14(r3)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f4
    fdivs   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x158(r3)
    lwz     r6, 0x168(r3)
    lwz     r4, 0x104(r3)
    xoris   r0, r6, 0x8000
    lfs     f1, 0x10(r3)
    stw     r0, 0x3c(sp)
    subf    r4, r4, r6
    xoris   r0, r4, 0x8000
    lfs     f0, 0x17c(r3)
    stw     r0, 0x44(sp)
    fadds   f0, f1, f0
    stw     r5, 0x40(sp)
    stw     r5, 0x38(sp)
    lfd     f2, 0x40(sp)
    stfs    f0, 0x10(r3)
    lfd     f1, 0x38(sp)
    fsubs   f3, f2, f4
    lfs     f2, -0x2b68(r2)
    fsubs   f0, f1, f4
    lfs     f1, 0x158(r3)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f2, f1
    lwz     r5, R13Off_m0x5ea8(r13)
    fdivs   f4, f3, f0
    lfs     f3, 0x164(r3)
    lfs     f0, 0x110(r3)
    lfs     f2, 0x160(r3)
    fctiwz  f1, f1
    fsubs   f0, f0, f3
    stfd    f1, 0x30(sp)
    fmadds  f0, f4, f0, f3
    lwz     r4, 0x34(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f0, 0x14(r3)
    fsubs   f0, f0, f5
    stfs    f0, 0x188(r3)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x184(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    lfs     f1, 0x34(r3)
    lfs     f0, -0x2bbc(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r3)
    lfs     f2, 0x34(r3)
    lfs     f0, -0x2b60(r2)
    b       branch_0x801bdd44

branch_0x801bdd40:
    fsubs   f2, f2, f0
branch_0x801bdd44:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801bdd40
    lfs     f1, -0x2b60(r2)
    lfs     f0, -0x2be4(r2)
    b       branch_0x801bdd60

branch_0x801bdd5c:
    fadds   f2, f2, f1
branch_0x801bdd60:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801bdd5c
    lwz     r0, 0x104(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x801bdd7c
    li      r0, 0x1
    b       branch_0x801bdd80

branch_0x801bdd7c:
    li      r0, 0x0
branch_0x801bdd80:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bdda0
    lfs     f0, -0x2bbc(r2)
    li      r0, 0xf
    stfs    f0, 0x16c(r3)
    lwz     r4, 0x178(r3)
    stw     r4, 0x104(r3)
    sth     r0, 0xfc(r3)
branch_0x801bdda0:
    addi    sp, sp, 0x50
    blr


.globl calc__6TShineFv
calc__6TShineFv: # 0x801bdda8
    mflr    r0
    lis     r4, unk_803c9148@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    addi    r30, r4, unk_803c9148@l
    stw     r29, 0x7c(sp)
    lwz     r3, 0x74(r3)
    lwz     r0, 0xf0(r31)
    lwz     r3, 0x4(r3)
    andi.   r0, r0, 0x205
    lwz     r3, 0x58(r3)
    addi    r29, r3, 0x60
    bne-    branch_0x801be06c
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x128
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    stw     r3, 0x198(r31)
    addi    r5, r29, 0x0
    addi    r7, r31, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x129
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    stw     r3, 0x19c(r31)
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801bde64
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x127
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    stw     r3, 0x194(r31)
    addi    r5, r29, 0x0
    addi    r7, r31, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x12a
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    stw     r3, 0x1a0(r31)
branch_0x801bde64:
    lwz     r3, R13Off_m0x7118(r13)
    lfs     f0, 0x14(r31)
    addi    r3, r3, 0x124
    lfs     f4, 0x10(r31)
    lfs     f1, 0x4(r3)
    lfs     f5, 0x0(r3)
    fsubs   f1, f1, f0
    lfs     f3, 0x8(r3)
    lfs     f2, 0x18(r31)
    fsubs   f4, f5, f4
    lfs     f0, -0x2be4(r2)
    fmuls   f1, f1, f1
    fsubs   f2, f3, f2
    fmadds  f1, f4, f4, f1
    fmadds  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801bdeb0
    b       branch_0x801bded4

branch_0x801bdeb0:
    frsqrte f3, f4
    lfs     f2, -0x2b64(r2)
    lfs     f0, -0x2bc4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801bded4:
    lfs     f0, -0x2b58(r2)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801bdef8
    lwz     r0, 0x38(r30)
    lfs     f2, 0x58(r30)
    lfs     f3, 0x68(r30)
    extsh   r0, r0
    lfs     f1, 0x48(r30)
    b       branch_0x801bdf54

branch_0x801bdef8:
    lfs     f0, -0x2b54(r2)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801bdf1c
    lwz     r0, 0x3c(r30)
    lfs     f2, 0x5c(r30)
    lfs     f3, 0x6c(r30)
    extsh   r0, r0
    lfs     f1, 0x4c(r30)
    b       branch_0x801bdf54

branch_0x801bdf1c:
    lfs     f0, -0x2b50(r2)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801bdf40
    lwz     r0, 0x40(r30)
    lfs     f2, 0x60(r30)
    lfs     f3, 0x70(r30)
    extsh   r0, r0
    lfs     f1, 0x50(r30)
    b       branch_0x801bdf54

branch_0x801bdf40:
    lwz     r0, 0x44(r30)
    lfs     f2, 0x64(r30)
    lfs     f3, 0x74(r30)
    extsh   r0, r0
    lfs     f1, 0x54(r30)
branch_0x801bdf54:
    lwz     r3, 0x194(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801bdf98
    sth     r0, 0x1ee(r3)
    lwz     r3, 0x194(r31)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x17c(r3)
branch_0x801bdf98:
    lwz     r3, 0x198(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801bdfdc
    stfs    f1, 0x1b0(r3)
    lwz     r3, 0x198(r31)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x17c(r3)
branch_0x801bdfdc:
    lwz     r3, 0x19c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801be020
    stfs    f2, 0x1b0(r3)
    lwz     r3, 0x19c(r31)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x17c(r3)
branch_0x801be020:
    lwz     r3, 0x1a0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801be064
    stfs    f3, 0x1b0(r3)
    lwz     r3, 0x1a0(r31)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x1ac(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x1b0(r31)
    stfs    f0, 0x17c(r3)
branch_0x801be064:
    li      r0, 0x1
    stb     r0, 0x1a4(r31)
branch_0x801be06c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl __ct__9TCoinBlueFPCc
__ct__9TCoinBlueFPCc: # 0x801be088
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__5TCoin@ha
    stw     r0, 0x20(r31)
    li      r7, 0x0
    addi    r6, r3, __vvt__5TCoin@l
    stw     r7, 0x148(r31)
    lis     r3, __vvt__9TCoinBlue@ha
    addi    r4, r3, __vvt__9TCoinBlue@l
    stw     r7, 0x14c(r31)
    addi    r5, r6, 0x24
    addi    r0, r4, 0x24
    stw     r7, 0x150(r31)
    mr      r3, r31
    stw     r6, 0x0(r31)
    stw     r5, 0x20(r31)
    stw     r7, 0x154(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__5TCoinFv
__dt__5TCoinFv: # 0x801be108
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801be188
    lis     r3, __vvt__5TCoin@ha
    addi    r3, r3, __vvt__5TCoin@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801be178
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801be178
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801be178:
    extsh.  r0, r31
    ble-    branch_0x801be188
    mr      r3, r30
    bl      __dl__FPv
branch_0x801be188:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__9TCoinBlueFR20JSUMemoryInputStream
load__9TCoinBlueFR20JSUMemoryInputStream: # 0x801be1a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r0, 0xf8(r31)
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, R13Off_m0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801be1fc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801be1fc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl loadBeforeInit__9TCoinBlueFR20JSUMemoryInputStream
loadBeforeInit__9TCoinBlueFR20JSUMemoryInputStream: # 0x801be210
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    addi    r4, sp, 0x14
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x14(sp)
    cmpwi   r0, -0x1
    bne-    branch_0x801be248
    li      r0, 0x0
    stw     r0, 0x14(sp)
branch_0x801be248:
    lwz     r0, 0x14(sp)
    stw     r0, 0x134(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl taken__9TCoinBlueFP9THitActor
taken__9TCoinBlueFP9THitActor: # 0x801be264
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x0
    lwz     r0, R13Off_m0x6048(r13)
    mr      r3, r0
    bl      fireGetBlueCoin__12TMarDirectorFP5TCoin
    lwz     r3, 0x148(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801be2b4
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801be2b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x801be318
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801be318:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl makeObjAppeared__9TCoinBlueFv
makeObjAppeared__9TCoinBlueFv: # 0x801be330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x6048(r13)
    lwz     r0, 0x134(r3)
    lbz     r4, 0x7c(r4)
    lwz     r3, R13Off_m0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801be384
    mr      r3, r31
    bl      makeObjAppeared__11TMapObjBaseFv
    lwz     r3, 0x154(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801be384
    lhz     r0, 0x1a(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0x1a(r3)
branch_0x801be384:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__8TCoinRedFPCc
__ct__8TCoinRedFPCc: # 0x801be398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__5TCoin@ha
    stw     r0, 0x20(r31)
    li      r7, 0x0
    addi    r6, r3, __vvt__5TCoin@l
    stw     r7, 0x148(r31)
    lis     r3, __vvt__8TCoinRed@ha
    addi    r4, r3, __vvt__8TCoinRed@l
    stw     r7, 0x14c(r31)
    addi    r5, r6, 0x24
    addi    r0, r4, 0x24
    stw     r7, 0x150(r31)
    mr      r3, r31
    stw     r6, 0x0(r31)
    stw     r5, 0x20(r31)
    stw     r7, 0x154(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lfs     f0, -0x2be4(r2)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x158(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl taken__8TCoinRedFP9THitActor
taken__8TCoinRedFP9THitActor: # 0x801be428
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    lis     r4, 0x6
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lwz     r0, R13Off_m0x6060(r13)
    mr      r3, r0
    bl      incFlag__12TFlagManagerFUll
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4846
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801be488
    addi    r4, r30, 0x10
    li      r3, 0x4846
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801be488:
    lwz     r3, 0x148(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801be4ac
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801be4ac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x801be510
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801be510:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__10TCoinEmptyFPCc
__ct__10TCoinEmptyFPCc: # 0x801be528
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__5TCoin@ha
    stw     r0, 0x20(r31)
    li      r7, 0x0
    addi    r6, r3, __vvt__5TCoin@l
    stw     r7, 0x148(r31)
    lis     r3, __vvt__10TCoinEmpty@ha
    addi    r4, r3, __vvt__10TCoinEmpty@l
    stw     r7, 0x14c(r31)
    addi    r5, r6, 0x24
    addi    r0, r4, 0x24
    stw     r7, 0x150(r31)
    mr      r3, r31
    stw     r6, 0x0(r31)
    stw     r5, 0x20(r31)
    stw     r7, 0x154(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl kill__10TCoinEmptyFv
kill__10TCoinEmptyFv: # 0x801be5a8
    blr


.globl makeObjAppeared__10TCoinEmptyFv
makeObjAppeared__10TCoinEmptyFv: # 0x801be5ac
    blr


.globl appear__10TCoinEmptyFv
appear__10TCoinEmptyFv: # 0x801be5b0
    blr


.globl load__11TFlowerCoinFR20JSUMemoryInputStream
load__11TFlowerCoinFR20JSUMemoryInputStream: # 0x801be5b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r0, 0xf8(r30)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x158
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__5TCoinFPCc
__ct__5TCoinFPCc: # 0x801be608
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__5TCoin@ha
    stw     r0, 0x20(r31)
    li      r5, 0x0
    addi    r4, r3, __vvt__5TCoin@l
    stw     r5, 0x148(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stw     r5, 0x14c(r31)
    stw     r5, 0x150(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x154(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__5TCoinFv
initMapObj__5TCoinFv: # 0x801be674
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__14TMapObjGeneralFv
    li      r0, 0x1e0
    stw     r0, 0x14c(r31)
    li      r0, 0x78
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    stw     r0, 0x150(r31)
    addi    r31, r3, 0x58
    lbz     r0, 0x58(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801be6d0
    lis     r4, unk_80390f1c@h
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r4, unk_80390f1c@l
    li      r5, 0x58
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801be6d0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__5TCoinFv
loadAfter__5TCoinFv: # 0x801be6e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      loadAfter__14TMapObjGeneralFv
    lwz     r3, R13Off_m0x6318(r13)
    addi    r4, r31, 0x10
    bl      isInMirror__19TMirrorModelManagerCFRQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x801be7b4
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x801be778
    lwz     r3, R13Off_m0x6328(r13)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x1c
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    lwz     r3, 0x1c(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801be764
    cmplwi  r3, 0x101
    beq-    branch_0x801be764
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801be764
    cmplwi  r3, 0x4104
    bne-    branch_0x801be76c
branch_0x801be764:
    li      r0, 0x1
    b       branch_0x801be770

branch_0x801be76c:
    li      r0, 0x0
branch_0x801be770:
    clrlwi. r0, r0, 24
    beq-    branch_0x801be7b4
branch_0x801be778:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801be798
    lis     r3, unk_80390f40@h
    addi    r4, r3, unk_80390f40@l
    addi    r3, r30, 0x0
    bl      __ct__12TMirrorActorFPCc
branch_0x801be798:
    stw     r30, 0x154(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mr      r4, r3
    lwz     r3, 0x154(r31)
    li      r5, 0x18
    bl      init__12TMirrorActorFP8J3DModelUs
branch_0x801be7b4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl perform__5TCoinFUlPQ26JDrama9TGraphics
perform__5TCoinFUlPQ26JDrama9TGraphics: # 0x801be7cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x44(sp)
    mr      r29, r3
    stw     r28, 0x40(sp)
    lwz     r3, 0xf0(r3)
    clrlwi. r0, r3, 31
    bne-    branch_0x801bea0c
    clrlwi. r28, r30, 31
    beq-    branch_0x801be954
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x801be954
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x1
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x1
    beq-    branch_0x801be830
    cmplwi  r3, 0x2
    beq-    branch_0x801be830
    li      r0, 0x0
branch_0x801be830:
    clrlwi. r0, r0, 24
    beq-    branch_0x801be858
    cmplwi  r3, 0x3
    li      r0, 0x1
    beq-    branch_0x801be850
    cmplwi  r3, 0x4
    beq-    branch_0x801be850
    li      r0, 0x0
branch_0x801be850:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bea0c
branch_0x801be858:
    lwz     r0, 0x104(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x801be86c
    li      r0, 0x1
    b       branch_0x801be870

branch_0x801be86c:
    li      r0, 0x0
branch_0x801be870:
    clrlwi. r0, r0, 24
    beq-    branch_0x801be888
    lwz     r3, 0x104(r29)
    addi    r0, r3, -0x1
    stw     r0, 0x104(r29)
    b       branch_0x801be908

branch_0x801be888:
    lwz     r0, 0x64(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x801be8c4
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 3, 3
    bne-    branch_0x801be908
    lwz     r0, 0xf8(r29)
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r29)
    lwz     r0, 0x14c(r29)
    stw     r0, 0x104(r29)
    b       branch_0x801be908

branch_0x801be8c4:
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 3, 3
    bne-    branch_0x801be908
    lwz     r3, 0x148(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801be8f4
    lwz     r12, 0x0(r3)
    addi    r4, r29, 0x0
    li      r5, 0x5
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801be8f4:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801be908:
    lhz     r0, 0x48(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801bea0c
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x801be944

branch_0x801be920:
    mr      r3, r29
    lwz     r4, 0x44(r29)
    lwz     r12, 0x0(r29)
    lwzx    r4, r4, r30
    lwz     r12, 0x144(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x801be944:
    lhz     r0, 0x48(r29)
    cmpw    r28, r0
    blt+    branch_0x801be920
    b       branch_0x801bea0c

branch_0x801be954:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x801be990
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801be990
    lwz     r5, 0x10(r29)
    addi    r4, sp, 0x34
    lwz     r0, 0x14(r29)
    lwz     r3, R13Off_m0x6138(r13)
    stw     r5, 0x34(sp)
    lfs     f1, -0x2b4c(r2)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x3c(sp)
    bl      request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
branch_0x801be990:
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bea0c
    cmplwi  r28, 0x0
    beq-    branch_0x801be9fc
    lwz     r0, 0x64(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x801be9fc
    lwz     r0, 0x104(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x801be9c4
    li      r0, 0x1
    b       branch_0x801be9c8

branch_0x801be9c4:
    li      r0, 0x0
branch_0x801be9c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801be9fc
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 3, 3
    bne-    branch_0x801be9fc
    lwz     r0, 0xf8(r29)
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r29)
    lwz     r0, 0x14c(r29)
    stw     r0, 0x104(r29)
branch_0x801be9fc:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics
branch_0x801bea0c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl makeObjAppeared__5TCoinFv
makeObjAppeared__5TCoinFv: # 0x801bea2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      makeObjAppeared__11TMapObjBaseFv
    lwz     r3, 0x154(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801bea5c
    lhz     r0, 0x1a(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0x1a(r3)
branch_0x801bea5c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl appear__5TCoinFv
appear__5TCoinFv: # 0x801bea70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801bea9c
    li      r0, 0x1
    b       branch_0x801beaa0

branch_0x801bea9c:
    li      r0, 0x0
branch_0x801beaa0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801beaf4
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, R13Off_m0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801beb1c
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4843
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801beb1c
    li      r3, 0x4843
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801beb1c

branch_0x801beaf4:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801beb1c
    li      r3, 0x4813
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801beb1c:
    mr      r3, r31
    bl      appear__14TMapObjGeneralFv
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x150(r31)
    stw     r0, 0x104(r31)
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x58
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801beb7c
    li      r0, 0x1
    b       branch_0x801beb80

branch_0x801beb7c:
    li      r0, 0x0
branch_0x801beb80:
    clrlwi. r0, r0, 24
    beq-    branch_0x801beb94
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0xf8(r31)
branch_0x801beb94:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl appearWithoutSound__5TCoinFv
appearWithoutSound__5TCoinFv: # 0x801beba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      appear__14TMapObjGeneralFv
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x150(r31)
    stw     r0, 0x104(r31)
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x58
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801bec18
    li      r0, 0x1
    b       branch_0x801bec1c

branch_0x801bec18:
    li      r0, 0x0
branch_0x801bec1c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bec30
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0xf8(r31)
branch_0x801bec30:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl makeObjDead__5TCoinFv
makeObjDead__5TCoinFv: # 0x801bec44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      makeObjDead__11TMapObjBaseFv
    lwz     r3, 0x154(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801bec74
    lhz     r0, 0x1a(r3)
    ori     r0, r0, 0x1
    sth     r0, 0x1a(r3)
branch_0x801bec74:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl taken__5TCoinFP9THitActor
taken__5TCoinFP9THitActor: # 0x801bec88
    mflr    r0
    lis     r5, gpApplication@ha
    stw     r0, 0x4(sp)
    addi    r5, r5, gpApplication@l
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r3, 0x0
    lbz     r0, 0xe(r5)
    lis     r5, unk_80390ca8@h
    lwz     r30, R13Off_m0x6060(r13)
    addi    r31, r5, unk_80390ca8@l
    mr      r3, r0
    bl      SMS_getShineStage__FUc
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      incGoldCoinFlag__12TFlagManagerFUcl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4811
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bed0c
    addi    r4, r28, 0x10
    li      r3, 0x4811
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bed0c:
    lwz     r3, 0x148(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x801bed30
    lwz     r12, 0x0(r3)
    addi    r4, r28, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801bed30:
    lis     r4, unk_00040002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00040002@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x64
    bne-    branch_0x801bed90
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x2a4
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x2a4
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r31, 0x2a4
    lfs     f1, 0x10(r28)
    addi    r5, r31, 0x2c4
    lfs     f2, 0x14(r28)
    lfs     f3, 0x18(r28)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
branch_0x801bed90:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r28, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r28)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x801bedf4
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801bedf4:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl __ct__5TItemFPCc
__ct__5TItemFPCc: # 0x801bee14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x148(r31)
    stw     r0, 0x14c(r31)
    stw     r0, 0x150(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__5TItemFR20JSUMemoryInputStream
load__5TItemFR20JSUMemoryInputStream: # 0x801bee68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r0, 0xf8(r31)
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__5TItemFv
initMapObj__5TItemFv: # 0x801beea0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__14TMapObjGeneralFv
    li      r0, 0x1e0
    stw     r0, 0x14c(r31)
    li      r0, 0x78
    stw     r0, 0x150(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__5TItemFUlPQ26JDrama9TGraphics
perform__5TItemFUlPQ26JDrama9TGraphics: # 0x801beedc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bef58
    clrlwi. r0, r4, 31
    beq-    branch_0x801bef54
    lwz     r0, 0x64(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801bef54
    lwz     r0, 0x104(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x801bef1c
    li      r0, 0x1
    b       branch_0x801bef20

branch_0x801bef1c:
    li      r0, 0x0
branch_0x801bef20:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bef54
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 3, 3
    bne-    branch_0x801bef54
    lwz     r0, 0xf8(r3)
    oris    r0, r0, 0x4
    stw     r0, 0xf8(r3)
    lwz     r0, 0x14c(r3)
    stw     r0, 0x104(r3)
branch_0x801bef54:
    bl      perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics
branch_0x801bef58:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appear__5TItemFv
appear__5TItemFv: # 0x801bef68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      appear__14TMapObjGeneralFv
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x150(r31)
    stw     r0, 0x104(r31)
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl killByTimer__5TItemFi
killByTimer__5TItemFi: # 0x801befb4
    stw     r4, 0x14c(r3)
    lwz     r0, 0x150(r3)
    stw     r0, 0x104(r3)
    lwz     r0, 0xf8(r3)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0xf8(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r0, 0xf8(r3)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r3)
    blr


.globl appearing__5TItemFv
appearing__5TItemFv: # 0x801befe8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 6, 6
    beq-    branch_0x801bf0b0
    lfs     f0, 0x24(r31)
    lfs     f1, -0x2b90(r2)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801bf080
    lis     r3, unk_80390d88@h
    lfs     f0, -0x7a28(r13)
    addi    r4, r3, unk_80390d88@l
    lwz     r3, 0x0(r4)
    fmuls   f0, f1, f0
    lwz     r0, 0x4(r4)
    stw     r3, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x20(sp)
    stfs    f0, 0x18(sp)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    lfs     f1, 0x24(r31)
    lfs     f0, 0x18(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x2c(r31)
    lfs     f0, 0x20(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r31)
    b       branch_0x801bf0b8

branch_0x801bf080:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r31)
    b       branch_0x801bf0b8

branch_0x801bf0b0:
    mr      r3, r31
    bl      appearing__14TMapObjGeneralFv
branch_0x801bf0b8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl calc__5TItemFv
calc__5TItemFv: # 0x801bf0cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    lwz     r3, 0xf8(r3)
    rlwinm. r0, r3, 0, 5, 5
    bne-    branch_0x801bf19c
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x6
    bne-    branch_0x801bf104
    li      r0, 0x1
    b       branch_0x801bf108

branch_0x801bf104:
    li      r0, 0x0
branch_0x801bf108:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bf19c
    rlwinm. r0, r3, 0, 23, 23
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r30, r3, 0x40
    beq-    branch_0x801bf130
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    b       branch_0x801bf13c

branch_0x801bf130:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r3, r3, 0x20
branch_0x801bf13c:
    lfs     f0, 0x0(r30)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x8(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r30)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x2c(r3)
branch_0x801bf19c:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x6
    bne-    branch_0x801bf1b0
    li      r0, 0x1
    b       branch_0x801bf1b4

branch_0x801bf1b0:
    li      r0, 0x0
branch_0x801bf1b4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bf22c
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x801bf22c
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x22
    bne-    branch_0x801bf1e0
    li      r0, 0x1
    b       branch_0x801bf1e4

branch_0x801bf1e0:
    li      r0, 0x0
branch_0x801bf1e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bf20c
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x2a
    bne-    branch_0x801bf200
    li      r0, 0x1
    b       branch_0x801bf204

branch_0x801bf200:
    li      r0, 0x0
branch_0x801bf204:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bf224
branch_0x801bf20c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    b       branch_0x801bf22c

branch_0x801bf224:
    mr      r3, r31
    bl      calcRootMatrix__14TMapObjGeneralFv
branch_0x801bf22c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl calcRootMatrix__5TItemFv
calcRootMatrix__5TItemFv: # 0x801bf244
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 4, 4
    bne-    branch_0x801bf260
    bl      calcRootMatrix__14TMapObjGeneralFv
branch_0x801bf260:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__5TItemFP9THitActorUl
receiveMessage__5TItemFP9THitActorUl: # 0x801bf270
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801bf28c
    li      r3, 0x0
    b       branch_0x801bf2b0

branch_0x801bf28c:
    cmplwi  r5, 0xb
    bne-    branch_0x801bf2ac
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1e0(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801bf2b0

branch_0x801bf2ac:
    bl      receiveMessage__14TMapObjGeneralFP9THitActorUl
branch_0x801bf2b0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchPlayer__5TItemFP9THitActor
touchPlayer__5TItemFP9THitActor: # 0x801bf2c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x4c(r4)
    addis   r0, r5, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801bf2e4
    li      r0, 0x1
    b       branch_0x801bf2e8

branch_0x801bf2e4:
    li      r0, 0x0
branch_0x801bf2e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bf310
    addis   r0, r5, 0xf800
    cmplwi  r0, 0x83
    bne-    branch_0x801bf304
    li      r0, 0x1
    b       branch_0x801bf308

branch_0x801bf304:
    li      r0, 0x0
branch_0x801bf308:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bf32c
branch_0x801bf310:
    lwz     r0, 0x64(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801bf32c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1e0(r12)
    mtlr    r12
    blrl
branch_0x801bf32c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl taken__5TItemFP9THitActor
taken__5TItemFP9THitActor: # 0x801bf33c
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    lwz     r12, 0x0(r4)
    addi    r4, r31, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x801bf3b4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801bf3b4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl appeared__5TItemFv
appeared__5TItemFv: # 0x801bf3c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x801bf4a0
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801bf3fc
    li      r0, 0x1
    b       branch_0x801bf400

branch_0x801bf3fc:
    li      r0, 0x0
branch_0x801bf400:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bf4a0
    lwz     r3, 0x148(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801bf42c
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x5
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801bf42c:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xf
    bne-    branch_0x801bf444
    li      r0, 0x1
    b       branch_0x801bf448

branch_0x801bf444:
    li      r0, 0x0
branch_0x801bf448:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bf470
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801bf464
    li      r0, 0x1
    b       branch_0x801bf468

branch_0x801bf464:
    li      r0, 0x0
branch_0x801bf468:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bf4a0
branch_0x801bf470:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x484c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801bf4a0
    addi    r4, r31, 0x10
    li      r3, 0x484c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801bf4a0:
    mr      r3, r31
    bl      appeared__14TMapObjGeneralFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__11TItemNozzleFv
__dt__11TItemNozzleFv: # 0x801bf4bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bf53c
    lis     r3, __vvt__11TItemNozzle@ha
    addi    r3, r3, __vvt__11TItemNozzle@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf52c
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf52c
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801bf52c:
    extsh.  r0, r31
    ble-    branch_0x801bf53c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bf53c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TEggYoshiFv
__dt__9TEggYoshiFv: # 0x801bf558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bf5d8
    lis     r3, __vvt__9TEggYoshi@ha
    addi    r3, r3, __vvt__9TEggYoshi@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf5c8
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf5c8
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801bf5c8:
    extsh.  r0, r31
    ble-    branch_0x801bf5d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bf5d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getHitObjNumMax__9TEggYoshiFv
getHitObjNumMax__9TEggYoshiFv: # 0x801bf5f4
    li      r3, 0xa
    blr


.globl __dt__6TShineFv
__dt__6TShineFv: # 0x801bf5fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bf67c
    lis     r3, __vvt__6TShine@ha
    addi    r3, r3, __vvt__6TShine@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf66c
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf66c
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801bf66c:
    extsh.  r0, r31
    ble-    branch_0x801bf67c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bf67c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TCoinBlueFv
__dt__9TCoinBlueFv: # 0x801bf698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bf718
    lis     r3, __vvt__9TCoinBlue@ha
    addi    r3, r3, __vvt__9TCoinBlue@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf708
    lis     r3, __vvt__5TCoin@ha
    addi    r3, r3, __vvt__5TCoin@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf708
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__14TMapObjGeneralFv
branch_0x801bf708:
    extsh.  r0, r31
    ble-    branch_0x801bf718
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bf718:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TCoinRedFv
__dt__8TCoinRedFv: # 0x801bf734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bf7b4
    lis     r3, __vvt__8TCoinRed@ha
    addi    r3, r3, __vvt__8TCoinRed@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf7a4
    lis     r3, __vvt__5TCoin@ha
    addi    r3, r3, __vvt__5TCoin@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf7a4
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__14TMapObjGeneralFv
branch_0x801bf7a4:
    extsh.  r0, r31
    ble-    branch_0x801bf7b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bf7b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TCoinEmptyFv
__dt__10TCoinEmptyFv: # 0x801bf7d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bf850
    lis     r3, __vvt__10TCoinEmpty@ha
    addi    r3, r3, __vvt__10TCoinEmpty@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf840
    lis     r3, __vvt__5TCoin@ha
    addi    r3, r3, __vvt__5TCoin@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf840
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__14TMapObjGeneralFv
branch_0x801bf840:
    extsh.  r0, r31
    ble-    branch_0x801bf850
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bf850:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TFlowerCoinFv
__dt__11TFlowerCoinFv: # 0x801bf86c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bf8ec
    lis     r3, __vvt__11TFlowerCoin@ha
    addi    r3, r3, __vvt__11TFlowerCoin@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf8dc
    lis     r3, __vvt__5TCoin@ha
    addi    r3, r3, __vvt__5TCoin@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bf8dc
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__14TMapObjGeneralFv
branch_0x801bf8dc:
    extsh.  r0, r31
    ble-    branch_0x801bf8ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bf8ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_Item_cpp
__sinit_Item_cpp: # 0x801bf908
    mflr    r0
    lis     r3, unk_803f9410@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f9410@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801bf950
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801bf950:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801bf980
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801bf980:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801bf9b0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801bf9b0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801bf9e0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801bf9e0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfa10
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801bfa10:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfa40
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801bfa40:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfa70
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801bfa70:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfaa0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801bfaa0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfad0
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801bfad0:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfb00
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801bfb00:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfb30
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801bfb30:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfb60
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801bfb60:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfb90
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801bfb90:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfbc0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801bfbc0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801bfbf0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801bfbf0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801bfc04
unk_801bfc04: # 0x801bfc04
    addi    r3, r3, -0x20
    b       __dt__5TItemFv


.globl unk_801bfc0c
unk_801bfc0c: # 0x801bfc0c
    addi    r3, r3, -0x20
    b       __dt__5TCoinFv


.globl unk_801bfc14
unk_801bfc14: # 0x801bfc14
    addi    r3, r3, -0x20
    b       __dt__11TFlowerCoinFv


.globl unk_801bfc1c
unk_801bfc1c: # 0x801bfc1c
    addi    r3, r3, -0x20
    b       __dt__10TCoinEmptyFv


.globl unk_801bfc24
unk_801bfc24: # 0x801bfc24
    addi    r3, r3, -0x20
    b       __dt__8TCoinRedFv


.globl unk_801bfc2c
unk_801bfc2c: # 0x801bfc2c
    addi    r3, r3, -0x20
    b       __dt__9TCoinBlueFv


.globl unk_801bfc34
unk_801bfc34: # 0x801bfc34
    addi    r3, r3, -0x20
    b       __dt__6TShineFv


.globl unk_801bfc3c
unk_801bfc3c: # 0x801bfc3c
    addi    r3, r3, -0x20
    b       __dt__9TEggYoshiFv


.globl unk_801bfc44
unk_801bfc44: # 0x801bfc44
    addi    r3, r3, -0x20
    b       __dt__11TItemNozzleFv


.globl unk_801bfc4c
unk_801bfc4c: # 0x801bfc4c
    addi    r3, r3, -0x20
    b       __dt__10TNozzleBoxFv

