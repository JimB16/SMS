
# TSuperHipDropBlock::~TSuperHipDropBlock((void))
.globl __dt__18TSuperHipDropBlockFv
__dt__18TSuperHipDropBlockFv: # 0x801c2ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2f50
    lis     r3, 0x803d
    subi    r3, r3, 0x4ae0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2f40
    lis     r3, 0x803d
    addi    r3, r3, 0x7050
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2f40
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801c2f40:
    extsh.  r0, r31
    ble-    branch_0x801c2f50
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2f50:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


# TSuperHipDropBlock::loadAfter((void))
.globl loadAfter__18TSuperHipDropBlockFv
loadAfter__18TSuperHipDropBlockFv: # 0x801c2f6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__12THideObjBaseFv
    lis     r3, 0x8039
    lwz     r4, 0x4(r31)
    addi    r3, r3, 0x12c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c2fdc
    li      r0, 0x1
    stb     r0, 0x150(r31)
    lis     r3, 0x1
    addi    r4, r3, 0x38c
    lwz     r3, -0x6060(r13)
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c2fd0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801c2fd0:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
branch_0x801c2fdc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


# TSuperHipDropBlock::receiveMessage((THitActor	*, unsigned long))
.globl receiveMessage__18TSuperHipDropBlockFP9THitActorUl
receiveMessage__18TSuperHipDropBlockFP9THitActorUl: # 0x801c2ff0
    mflr    r0
    cmplwi  r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801c3078
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c3040
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r5, r4, 0x38c
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
branch_0x801c3040:
    lwz     r3, -0x6044(r13)
    li      r4, 0x3821
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c3070
    addi    r4, r31, 0x10
    li      r3, 0x3821
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c3070:
    li      r3, 0x1
    b       branch_0x801c307c

branch_0x801c3078:
    li      r3, 0x0
branch_0x801c307c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setGroundCollision__12TTelesaBlockFv
setGroundCollision__12TTelesaBlockFv: # 0x801c3090
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xec(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801c30d4
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801c30d4
    lwz     r12, 0x0(r3)
    addi    r4, r6, 0x10
    addi    r5, r6, 0x30
    lwz     r12, 0xc(r12)
    addi    r6, r6, 0x140
    mtlr    r12
    blrl
branch_0x801c30d4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__12TTelesaBlockFUlPQ26JDrama9TGraphics
perform__12TTelesaBlockFUlPQ26JDrama9TGraphics: # 0x801c30e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x6c(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0xf0(r3)
    li      r3, 0x1
    lwz     r4, -0x6048(r13)
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x801c3134
    cmplwi  r0, 0x2
    beq-    branch_0x801c3134
    li      r3, 0x0
branch_0x801c3134:
    clrlwi. r0, r3, 24
    bne-    branch_0x801c3150
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    b       branch_0x801c319c

branch_0x801c3150:
    clrlwi. r0, r29, 31
    beq-    branch_0x801c318c
    mr      r3, r31
    bl      moveObject__10TLiveActorFv
    lwz     r3, 0x14c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801c318c
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801c318c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801c318c:
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x801c319c:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x801c3264
    lfs     f1, -0x2ab8(rtoc)
    mr      r3, r31
    stfs    f1, 0x44(sp)
    stfs    f1, 0x54(sp)
    stfs    f1, 0x64(sp)
    lfs     f3, 0x148(r31)
    lfs     f2, 0x144(r31)
    lfs     f0, 0x140(r31)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f1, 0x48(sp)
    stfs    f2, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f1, 0x58(sp)
    stfs    f1, 0x5c(sp)
    stfs    f3, 0x60(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, r31, 0x0
    addi    r30, r4, 0x30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r5, r30, 0x0
    addi    r4, sp, 0x38
    addi    r3, r3, 0x30
    bl      PSMTXConcat
    lfs     f1, 0x148(r31)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    lfs     f0, -0x2ab8(rtoc)
    stfs    f2, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x48(sp)
    stfs    f2, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x5c(sp)
    stfs    f1, 0x60(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r30, 0x58(r3)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r5, r30, 0x0
    addi    r4, sp, 0x38
    bl      PSMTXConcat
branch_0x801c3264:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl initMapObj__12TTelesaBlockFv
initMapObj__12TTelesaBlockFv: # 0x801c3280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchActor__11TJuiceBlockFP9THitActor
touchActor__11TJuiceBlockFP9THitActor: # 0x801c32a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x4c(r4)
    rlwinm. r0, r4, 0, 1, 1
    beq-    branch_0x801c32c0
    li      r0, 0x1
    b       branch_0x801c32c4

branch_0x801c32c0:
    li      r0, 0x0
branch_0x801c32c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c32fc
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x2c6
    bne-    branch_0x801c32e0
    li      r0, 0x1
    b       branch_0x801c32e4

branch_0x801c32e0:
    li      r0, 0x0
branch_0x801c32e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c32fc
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801c32fc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl kill__11TJuiceBlockFv
kill__11TJuiceBlockFv: # 0x801c330c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    stw     r0, 0x14c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl moveObject__11TJuiceBlockFv
moveObject__11TJuiceBlockFv: # 0x801c3340
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      moveObject__10TLiveActorFv
    lwz     r3, 0x14c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801c3384
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801c3384
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801c3384:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__11TJuiceBlockFv
initMapObj__11TJuiceBlockFv: # 0x801c3398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x74(r31)
    addi    r6, r31, 0x138
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lfs     f0, -0x2ab4(rtoc)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x148(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initMapObj__11TBrickBlockFv
initMapObj__11TBrickBlockFv: # 0x801c33ec
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x11d0
    stw     r30, 0x10(sp)
    bl      initMapObj__11TMapObjBaseFv
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x60
    lbz     r0, 0x60(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c343c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x110
    li      r5, 0x60
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801c343c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x61
    lbz     r0, 0x61(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c346c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x130
    li      r5, 0x61
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801c346c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x62
    lbz     r0, 0x62(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c349c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x150
    li      r5, 0x62
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801c349c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl receiveMessage__11TBrickBlockFP9THitActorUl
receiveMessage__11TBrickBlockFP9THitActorUl: # 0x801c34b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801c34f0
    li      r0, 0x1
    b       branch_0x801c34f4

branch_0x801c34f0:
    li      r0, 0x0
branch_0x801c34f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c3528
    mr      r3, r29
    bl      marioHeadAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c3528
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801c3574

branch_0x801c3528:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x5
    bne-    branch_0x801c3540
    li      r0, 0x1
    b       branch_0x801c3544

branch_0x801c3540:
    li      r0, 0x0
branch_0x801c3544:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c3570
    cmplwi  r31, 0xe
    bne-    branch_0x801c3570
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801c3574

branch_0x801c3570:
    li      r3, 0x0
branch_0x801c3574:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl kill__11TBrickBlockFv
kill__11TBrickBlockFv: # 0x801c3590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    li      r4, 0x60
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    li      r4, 0x61
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    li      r4, 0x62
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lwz     r3, -0x6044(r13)
    li      r4, 0x3878
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c3620
    addi    r4, r31, 0x10
    li      r3, 0x3878
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c3620:
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x15
    li      r5, 0x14
    bl      start__9RumbleMgrFiiP3Vec
    mr      r3, r31
    lfs     f1, -0x2ab0(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initMapObj__9TIceBlockFv
initMapObj__9TIceBlockFv: # 0x801c3660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      initMapObj__11TMapObjBaseFv
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x157
    lbz     r0, 0x157(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c36a8
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x1340
    li      r5, 0x157
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801c36a8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x158
    lbz     r0, 0x158(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c36dc
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x135c
    li      r5, 0x158
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801c36dc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calc__9TIceBlockFv
calc__9TIceBlockFv: # 0x801c36f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x24
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    li      r4, 0x1
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x24
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl control__9TIceBlockFv
control__9TIceBlockFv: # 0x801c3754
    mflr    r0
    li      r4, 0x157
    stw     r0, 0x4(sp)
    li      r6, 0x1
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r7, r31, 0x0
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801c37a0
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
branch_0x801c37a0:
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x158
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801c37d8
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
branch_0x801c37d8:
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lfs     f1, -0x2aac(rtoc)
    lfs     f0, 0x24(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f1, -0x2aa8(rtoc)
    mr      r3, r31
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    addi    r3, r31, 0x128
    lfs     f1, -0x79e4(r13)
    lfs     f0, 0x128(r31)
    lfs     f2, 0x28(r31)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c3920
    lfs     f1, 0x24(r31)
    lfs     f0, -0x79e8(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, -0x79e8(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x2c(r31)
    lfs     f0, -0x79e8(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f0, 0x0(r3)
    lfs     f1, 0x28(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c3878
    fmr     f1, f0
    b       branch_0x801c3888

branch_0x801c3878:
    lfs     f0, -0x2aa4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c3888
    fmr     f1, f0
branch_0x801c3888:
    stfs    f1, 0x28(r31)
    li      r4, 0x3079
    lwz     r3, 0x130(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, 0x30(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c38d0
    addi    r4, r31, 0x10
    li      r3, 0x3079
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c38d0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      removeMapCollision__11TMapObjBaseFv
    lfs     f1, 0x24(r31)
    lfs     f0, -0x2aa0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c3920
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801c3920:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl touchWater__9TIceBlockFP9THitActor
touchWater__9TIceBlockFP9THitActor: # 0x801c3934
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getWaterSpeed__11TMapObjBaseFP9THitActor
    mr      r3, r31
    bl      getWaterID__11TMapObjBaseFP9THitActor
    lwz     r4, -0x6088(r13)
    slwi    r0, r3, 1
    add     r3, r4, r0
    lhz     r0, 0x414(r3)
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    bne-    branch_0x801c3984
    li      r0, 0x1
    b       branch_0x801c3988

branch_0x801c3984:
    li      r0, 0x0
branch_0x801c3988:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c3aa0
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x2ab8(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r3, -0x6044(r13)
    li      r4, 0x3079
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c39fc
    addi    r4, r30, 0x10
    li      r3, 0x3079
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c39fc:
    lfs     f1, 0x24(r30)
    lfs     f0, -0x79ec(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(r30)
    lfs     f1, 0x28(r30)
    lfs     f0, -0x79ec(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(r30)
    lfs     f1, 0x2c(r30)
    lfs     f0, -0x79ec(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(r30)
    lwz     r3, 0x130(r30)
    lfs     f1, 0x24(r30)
    lfs     f0, 0x30(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0x128(r30)
    lfs     f1, 0x28(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c3a58
    fmr     f1, f0
    b       branch_0x801c3a68

branch_0x801c3a58:
    lfs     f0, -0x2aa4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c3a68
    fmr     f1, f0
branch_0x801c3a68:
    stfs    f1, 0x28(r30)
    lfs     f1, 0x24(r30)
    lfs     f0, -0x2ab8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c3a90
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801c3a90:
    li      r0, 0x0
    sth     r0, 0x48(r30)
    li      r3, 0x1
    b       branch_0x801c3aa4

branch_0x801c3aa0:
    li      r3, 0x0
branch_0x801c3aa4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl getSDLModelFlag__9TIceBlockCFv
getSDLModelFlag__9TIceBlockCFv: # 0x801c3abc
    li      r3, 0x0
    blr


.globl __ct__10TLeanBlockFPCc
__ct__10TLeanBlockFPCc: # 0x801c3ac4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x43d4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    mr      r3, r31
    stw     r0, 0x20(r31)
    lfs     f1, -0x2ab8(rtoc)
    stfs    f1, 0x138(r31)
    stfs    f1, 0x13c(r31)
    stfs    f1, 0x140(r31)
    stfs    f1, 0x144(r31)
    stfs    f1, 0x148(r31)
    stfs    f1, 0x158(r31)
    stfs    f1, 0x15c(r31)
    stfs    f1, 0x160(r31)
    stfs    f1, 0x14c(r31)
    lfs     f0, -0x2ab4(rtoc)
    stfs    f0, 0x150(r31)
    stfs    f1, 0x154(r31)
    stfs    f1, 0x190(r31)
    stfs    f1, 0x180(r31)
    stfs    f1, 0x170(r31)
    stfs    f1, 0x17c(r31)
    stfs    f1, 0x16c(r31)
    stfs    f1, 0x188(r31)
    stfs    f1, 0x168(r31)
    stfs    f1, 0x184(r31)
    stfs    f1, 0x174(r31)
    stfs    f0, 0x18c(r31)
    stfs    f0, 0x178(r31)
    stfs    f0, 0x164(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl initMapObj__10TLeanBlockFv
initMapObj__10TLeanBlockFv: # 0x801c3b6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x2aa4(rtoc)
    mr      r3, r31
    stfs    f0, 0x140(r31)
    lfs     f0, -0x2a9c(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x2ab4(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f2, -0x2ab0(rtoc)
    lfs     f0, 0x24(r31)
    lfs     f1, -0x2a98(rtoc)
    fmuls   f0, f2, f0
    fmuls   f0, f0, f1
    stfs    f0, 0x138(r31)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f2, f0
    fmuls   f0, f0, f1
    stfs    f0, 0x13c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcDefaultMtx__10TLeanBlockFv
calcDefaultMtx__10TLeanBlockFv: # 0x801c3bec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, r31, 0x164
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl calcLeanMtx__10TLeanBlockFPA4_f
calcLeanMtx__10TLeanBlockFPA4_f: # 0x801c3c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    mr      r30, r3
    lfs     f4, 0x158(r3)
    lfs     f1, 0x15c(r3)
    fmuls   f2, f4, f4
    lfs     f3, 0x160(r3)
    fmuls   f1, f1, f1
    lfs     f0, -0x2a94(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801c3c84
    lfs     f1, 0x150(r30)
    lfs     f0, 0x144(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x150(r30)
    b       branch_0x801c3cb0

branch_0x801c3c84:
    lfs     f0, 0x14c(r30)
    fadds   f0, f0, f4
    stfs    f0, 0x14c(r30)
    lfs     f1, 0x150(r30)
    lfs     f0, 0x15c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x150(r30)
    lfs     f1, 0x154(r30)
    lfs     f0, 0x160(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x154(r30)
branch_0x801c3cb0:
    addi    r3, r30, 0x14c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, -0x2ab8(rtoc)
    lfs     f1, 0x14c(r30)
    fcmpu   cr0, f0, f1
    lfs     f2, 0x154(r30)
    addi    r3, sp, 0x20
    lfs     f0, -0x2ab8(rtoc)
    stfs    f1, 0x20(sp)
    lfs     f1, -0x2a90(rtoc)
    stfs    f0, 0x24(sp)
    stfs    f2, 0x28(sp)
    bl      rotateVecByAxisY__11TMapObjBaseFPQ29JGeometry8TVec3_f_f
    lfs     f0, 0x14c(r30)
    lfs     f1, 0x154(r30)
    fmuls   f2, f0, f0
    lfs     f0, -0x2ab8(rtoc)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x801c3d34
    frsqrte f3, f4
    lfd     f2, -0x2a88(rtoc)
    lfd     f0, -0x2a80(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x14(sp)
    lfs     f4, 0x14(sp)
branch_0x801c3d34:
    lfs     f0, 0x148(r30)
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    fmuls   f1, f4, f0
    addi    r4, sp, 0x20
    bl      makeObjMtxRotByAxis__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_fPA4_f
    addi    r4, r30, 0x164
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    bl      concatOnlyRotFromRight__11TMapObjBaseFPA4_fPA4_fPA4_f
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl control__10TLeanBlockFv
control__10TLeanBlockFv: # 0x801c3d74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f4, 0x158(r30)
    lfs     f0, 0x15c(r30)
    fmuls   f2, f4, f4
    lfs     f3, 0x160(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x2a94(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lwz     r31, 0x58(r3)
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801c3de0
    lfs     f1, 0x150(r30)
    lfs     f0, 0x144(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x150(r30)
    b       branch_0x801c3e0c

branch_0x801c3de0:
    lfs     f0, 0x14c(r30)
    fadds   f0, f0, f4
    stfs    f0, 0x14c(r30)
    lfs     f1, 0x150(r30)
    lfs     f0, 0x15c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x150(r30)
    lfs     f1, 0x154(r30)
    lfs     f0, 0x160(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x154(r30)
branch_0x801c3e0c:
    addi    r3, r30, 0x14c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, -0x2ab8(rtoc)
    lfs     f1, 0x14c(r30)
    fcmpu   cr0, f0, f1
    lfs     f2, 0x154(r30)
    addi    r3, sp, 0x20
    lfs     f0, -0x2ab8(rtoc)
    stfs    f1, 0x20(sp)
    lfs     f1, -0x2a90(rtoc)
    stfs    f0, 0x24(sp)
    stfs    f2, 0x28(sp)
    bl      rotateVecByAxisY__11TMapObjBaseFPQ29JGeometry8TVec3_f_f
    lfs     f0, 0x14c(r30)
    lfs     f1, 0x154(r30)
    fmuls   f2, f0, f0
    lfs     f0, -0x2ab8(rtoc)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x801c3e90
    frsqrte f3, f4
    lfd     f2, -0x2a88(rtoc)
    lfd     f0, -0x2a80(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x18(sp)
    lfs     f4, 0x18(sp)
branch_0x801c3e90:
    lfs     f0, 0x148(r30)
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    fmuls   f1, f4, f0
    addi    r4, sp, 0x20
    bl      makeObjMtxRotByAxis__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_fPA4_f
    addi    r4, r30, 0x164
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    bl      concatOnlyRotFromRight__11TMapObjBaseFPA4_fPA4_fPA4_f
    lfs     f0, -0x2ab8(rtoc)
    stfs    f0, 0x160(r30)
    stfs    f0, 0x15c(r30)
    stfs    f0, 0x158(r30)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl touchPlayer__10TLeanBlockFP9THitActor
touchPlayer__10TLeanBlockFP9THitActor: # 0x801c3ee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c3f70
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x0(r3)
    lfs     f0, 0x138(r31)
    fsubs   f1, f2, f1
    lfs     f4, 0x8(r3)
    lfs     f3, 0x18(r31)
    lfs     f2, 0x13c(r31)
    fdivs   f0, f1, f0
    lfs     f5, 0x140(r31)
    lfs     f1, 0x158(r31)
    fsubs   f3, f4, f3
    fmuls   f0, f5, f0
    fdivs   f2, f3, f2
    fadds   f0, f1, f0
    fmuls   f2, f5, f2
    stfs    f0, 0x158(r31)
    lfs     f1, 0x15c(r31)
    lfs     f0, -0x2ab8(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x160(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x160(r31)
    lfs     f1, 0x15c(r31)
    lfs     f0, 0x144(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x15c(r31)
branch_0x801c3f70:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


# TSandBlock::initMapObj((void))
.globl initMapObj__10TSandBlockFv
initMapObj__10TSandBlockFv: # 0x801c3f84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r4, 0x24(r30)
    lis     r3, 0x8040
    lwz     r0, 0x28(r30)
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x147
    stw     r4, 0x124(r30)
    stw     r0, 0x128(r30)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x12c(r30)
    lbz     r0, 0x147(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c3fec
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x1378
    li      r5, 0x147
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801c3fec:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x148
    lbz     r0, 0x148(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c4020
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x139c
    li      r5, 0x148
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801c4020:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__10TSandBlockFv
control__10TSandBlockFv: # 0x801c4038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801c40e4
    bge-    branch_0x801c4070
    cmpwi   r0, 0x1
    beq-    branch_0x801c4280
    bge-    branch_0x801c4080
    b       branch_0x801c4280

branch_0x801c4070:
    cmpwi   r0, 0x5
    beq-    branch_0x801c41dc
    bge-    branch_0x801c4280
    b       branch_0x801c411c

branch_0x801c4080:
    lfs     f1, 0x24(r31)
    lfs     f0, -0x7a00(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, -0x7a00(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x2c(r31)
    lfs     f0, -0x7a00(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f0, 0x28(r31)
    lfs     f1, 0x124(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801c4280
    stfs    f1, 0x24(r31)
    li      r0, 0x1
    lfs     f0, 0x128(r31)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x12c(r31)
    stfs    f0, 0x2c(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801c4280

branch_0x801c40e4:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801c40f8
    li      r0, 0x1
    b       branch_0x801c40fc

branch_0x801c40f8:
    li      r0, 0x0
branch_0x801c40fc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c4280
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801c4280

branch_0x801c411c:
    lfs     f1, 0x28(r31)
    li      r4, 0x30aa
    lfs     f0, -0x79fc(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(r31)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c415c
    addi    r4, r31, 0x10
    li      r3, 0x30aa
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c415c:
    lfs     f2, 0x2c(r31)
    mr      r3, r31
    lfs     f1, 0x128(r31)
    addi    r6, r31, 0x10
    lfs     f0, 0x24(r31)
    addi    r7, sp, 0x2c
    stfs    f0, 0x2c(sp)
    li      r4, 0x147
    li      r5, 0x1
    stfs    f1, 0x30(sp)
    stfs    f2, 0x34(sp)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    addi    r7, sp, 0x2c
    li      r4, 0x148
    li      r5, 0x1
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f1, 0x28(r31)
    lfs     f0, -0x79f8(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c4280
    stfs    f1, 0x24(r31)
    mr      r3, r31
    lfs     f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    bl      sleep__11TMapObjBaseFv
    lwz     r3, -0x79f0(r13)
    li      r0, 0x5
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801c4280

branch_0x801c41dc:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801c41f0
    li      r0, 0x1
    b       branch_0x801c41f4

branch_0x801c41f0:
    li      r0, 0x0
branch_0x801c41f4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c4280
    lwz     r4, -0x60b4(r13)
    mr      r3, r31
    bl      getDistance__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
    lfs     f2, -0x2ab0(rtoc)
    lfs     f0, 0x24(r31)
    fmuls   f0, f2, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c4280
    mr      r3, r31
    bl      awake__11TMapObjBaseFv
    lwz     r5, 0x24(r31)
    mr      r3, r31
    lwz     r0, 0x28(r31)
    li      r4, 0x0
    stw     r5, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x28(sp)
    lfs     f0, 0x124(r31)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x128(r31)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x12c(r31)
    stfs    f0, 0x2c(r31)
    bl      setUpMapCollision__11TMapObjBaseFUs
    lfs     f0, 0x20(sp)
    li      r0, 0x2
    stfs    f0, 0x24(r31)
    lfs     f0, 0x24(sp)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x28(sp)
    stfs    f0, 0x2c(r31)
    sth     r0, 0xfc(r31)
branch_0x801c4280:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl touchPlayer__10TSandBlockFP9THitActor
touchPlayer__10TSandBlockFP9THitActor: # 0x801c4294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c42d0
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801c42d0
    lwz     r3, -0x79f4(r13)
    li      r0, 0x3
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
branch_0x801c42d0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl touchPlayer__15TBreakableBlockFP9THitActor
touchPlayer__15TBreakableBlockFP9THitActor: # 0x801c42e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      marioHipAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c432c
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x15
    li      r5, 0x14
    bl      start__9RumbleMgrFiiP3Vec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801c432c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12TTelesaBlockFv
__dt__12TTelesaBlockFv: # 0x801c4340
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c43c0
    lis     r3, 0x803d
    subi    r3, r3, 0x4970
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c43b0
    lis     r3, 0x803d
    subi    r3, r3, 0x480c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c43b0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c43b0:
    extsh.  r0, r31
    ble-    branch_0x801c43c0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c43c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBrickBlockFv
__dt__11TBrickBlockFv: # 0x801c43dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c445c
    lis     r3, 0x803d
    subi    r3, r3, 0x46a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c444c
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c444c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c444c:
    extsh.  r0, r31
    ble-    branch_0x801c445c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c445c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TIceBlockFv
__dt__9TIceBlockFv: # 0x801c4478
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c44e0
    lis     r3, 0x803d
    subi    r3, r3, 0x4538
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c44d0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c44d0:
    extsh.  r0, r31
    ble-    branch_0x801c44e0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c44e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TSandBlockFv
__dt__10TSandBlockFv: # 0x801c44fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c4564
    lis     r3, 0x803d
    subi    r3, r3, 0x426c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c4554
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c4554:
    extsh.  r0, r31
    ble-    branch_0x801c4564
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c4564:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TBreakableBlockFv
__dt__15TBreakableBlockFv: # 0x801c4580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c4600
    lis     r3, 0x803d
    subi    r3, r3, 0x4108
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c45f0
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c45f0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c45f0:
    extsh.  r0, r31
    ble-    branch_0x801c4600
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c4600:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjBlock_cpp
__sinit_MapObjBlock_cpp: # 0x801c461c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x69c8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4664
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801c4664:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4694
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801c4694:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801c46c4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801c46c4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801c46f4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801c46f4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4724
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801c4724:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4754
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801c4754:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4784
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801c4784:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801c47b4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801c47b4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801c47e4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801c47e4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4814
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801c4814:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4844
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801c4844:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4874
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801c4874:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801c48a4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801c48a4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801c48d4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801c48d4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801c4904
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801c4904:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__15TBreakableBlockFv
_32___dt__15TBreakableBlockFv: # 0x801c4918
    subi    r3, r3, 0x20
    b       __dt__15TBreakableBlockFv


.globl _32___dt__10TSandBlockFv
_32___dt__10TSandBlockFv: # 0x801c4920
    subi    r3, r3, 0x20
    b       __dt__10TSandBlockFv


.globl _32___dt__10TLeanBlockFv
_32___dt__10TLeanBlockFv: # 0x801c4928
    subi    r3, r3, 0x20
    b       __dt__10TLeanBlockFv


.globl _32___dt__9TIceBlockFv
_32___dt__9TIceBlockFv: # 0x801c4930
    subi    r3, r3, 0x20
    b       __dt__9TIceBlockFv


.globl _32___dt__11TBrickBlockFv
_32___dt__11TBrickBlockFv: # 0x801c4938
    subi    r3, r3, 0x20
    b       __dt__11TBrickBlockFv


.globl _32___dt__11TJuiceBlockFv
_32___dt__11TJuiceBlockFv: # 0x801c4940
    subi    r3, r3, 0x20
    b       __dt__11TJuiceBlockFv


.globl _32___dt__12TTelesaBlockFv
_32___dt__12TTelesaBlockFv: # 0x801c4948
    subi    r3, r3, 0x20
    b       __dt__12TTelesaBlockFv


.globl _32___dt__18TSuperHipDropBlockFv
_32___dt__18TSuperHipDropBlockFv: # 0x801c4950
    subi    r3, r3, 0x20
    b       __dt__18TSuperHipDropBlockFv
