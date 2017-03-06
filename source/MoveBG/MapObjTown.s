
.globl __dt__14TBasketReverseFv
__dt__14TBasketReverseFv: # 0x801c06c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c0728
    lis     r3, 0x803d
    subi    r3, r3, 0x5a98
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c0718
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c0718:
    extsh.  r0, r31
    ble-    branch_0x801c0728
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c0728:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__14TBasketReverseFv
initMapObj__14TBasketReverseFv: # 0x801c0744
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, -0x2b1c(rtoc)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl kill__14TBasketReverseFv
kill__14TBasketReverseFv: # 0x801c0774
    mflr    r0
    li      r4, 0xe5
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6044(r13)
    li      r4, 0x380a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c07e8
    addi    r4, r31, 0x10
    li      r3, 0x380a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c07e8:
    lwz     r3, -0x6044(r13)
    li      r4, 0x4849
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c0810
    li      r3, 0x4849
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801c0810:
    mr      r3, r31
    bl      makeObjDead__11TMapObjBaseFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__14TRedCoinSwitchFPCc
__ct__14TRedCoinSwitchFPCc: # 0x801c082c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x5934
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0xff
    addi    r3, r31, 0x0
    stw     r4, 0x138(r31)
    sth     r0, 0x13c(r31)
    sth     r0, 0x13e(r31)
    sth     r0, 0x140(r31)
    sth     r0, 0x142(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__14TRedCoinSwitchFR20JSUMemoryInputStream
load__14TRedCoinSwitchFR20JSUMemoryInputStream: # 0x801c088c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x20(sp)
    stw     r0, 0x138(r30)
    lwz     r0, 0x138(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x801c08dc
    li      r0, 0x4b0
    stw     r0, 0x138(r30)
    b       branch_0x801c08e4

branch_0x801c08dc:
    mulli   r0, r0, 0xa
    stw     r0, 0x138(r30)
branch_0x801c08e4:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x7c(r3)
    bl      SMS_getShineIDofExStage__FUc
    clrlwi  r0, r3, 24
    cmplwi  r0, 0xff
    beq-    branch_0x801c0928
    lwz     r0, -0x6060(r13)
    addi    r4, r3, 0x0
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801c0928
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801c0928:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl loadAfter__14TRedCoinSwitchFv
loadAfter__14TRedCoinSwitchFv: # 0x801c0940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    bl      loadAfter__11TMapObjBaseFv
    lis     r3, 0x8039
    addi    r31, r3, 0x10c0
    li      r29, 0x0
branch_0x801c0968:
    addi    r5, r31, 0x0
    crxor   6, 6, 6
    addi    r6, r29, 0x0
    addi    r3, sp, 0x24
    li      r4, 0x40
    bl      snprintf
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x24
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x24
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x8
    blt+    branch_0x801c0968
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl control__14TRedCoinSwitchFv
control__14TRedCoinSwitchFv: # 0x801c09e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801c0a60
    bge-    branch_0x801c0a88
    cmpwi   r0, 0x1
    beq-    branch_0x801c0a88
    bge-    branch_0x801c0a20
    b       branch_0x801c0a88


.incbin "./baserom/code/Text_0x80005600.bin", 0x1bb41c, 0x801c0a20 - 0x801c0a1c
branch_0x801c0a20:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801c0a88
    li      r0, 0x78
    stw     r0, 0x104(r31)
    li      r0, 0x3
    lis     r3, 0x5
    sth     r0, 0xfc(r31)
    addi    r5, r3, 0x9
    li      r4, 0x1
    lwz     r3, -0x6060(r13)
    bl      setBool__12TFlagManagerFbUl
    b       branch_0x801c0a88

branch_0x801c0a60:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801c0a74
    li      r0, 0x1
    b       branch_0x801c0a78

branch_0x801c0a74:
    li      r0, 0x0
branch_0x801c0a78:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c0a88
    li      r0, 0x4
    sth     r0, 0xfc(r31)
branch_0x801c0a88:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__14TRedCoinSwitchFP9THitActorUl
receiveMessage__14TRedCoinSwitchFP9THitActorUl: # 0x801c0a9c
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801c0b44
    lis     r3, 0x8039
    addi    r4, r3, 0x10cc
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r5, -0x6048(r13)
    li      r4, 0x384c
    lha     r0, 0x8(r3)
    lwz     r3, 0x18(r5)
    slwi    r5, r0, 1
    lwz     r3, 0x0(r3)
    addi    r0, r5, 0x3c
    stw     r0, 0xe8(r3)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c0b20
    addi    r4, r31, 0x10
    li      r3, 0x384c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c0b20:
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r4, 0x64(r31)
    li      r0, 0x2
    li      r3, 0x1
    ori     r4, r4, 0x1
    stw     r4, 0x64(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801c0b48

branch_0x801c0b44:
    li      r3, 0x0
branch_0x801c0b48:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__13TMapObjSwitchFPCc
__ct__13TMapObjSwitchFPCc: # 0x801c0b5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x57d0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r5, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0xff
    addi    r3, r5, 0x0
    stw     r5, 0x138(r31)
    li      r6, 0x0
    stw     r5, 0x13c(r31)
    stw     r5, 0x140(r31)
    sth     r0, 0x148(r31)
    sth     r0, 0x14a(r31)
    sth     r0, 0x14c(r31)
    sth     r0, 0x14e(r31)
    b       branch_0x801c0bc8

branch_0x801c0bb8:
    lwz     r4, 0x144(r31)
    addi    r6, r6, 0x1
    stwx    r5, r4, r3
    addi    r3, r3, 0x4
branch_0x801c0bc8:
    lwz     r0, 0x138(r31)
    cmpw    r6, r0
    blt+    branch_0x801c0bb8
    stw     r31, -0x62a8(r13)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TMapObjSwitchFR20JSUMemoryInputStream
load__13TMapObjSwitchFR20JSUMemoryInputStream: # 0x801c0bf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x140
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x140(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x801c0c38
    li      r0, 0x4b0
    stw     r0, 0x140(r30)
    b       branch_0x801c0c40

branch_0x801c0c38:
    mulli   r0, r0, 0xa
    stw     r0, 0x140(r30)
branch_0x801c0c40:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x28(sp)
    li      r0, 0x64
    clrlwi  r3, r3, 24
    sth     r3, 0x148(r30)
    lwz     r3, 0x24(sp)
    clrlwi  r3, r3, 24
    sth     r3, 0x14a(r30)
    lwz     r3, 0x20(sp)
    clrlwi  r3, r3, 24
    sth     r3, 0x14c(r30)
    stw     r0, 0x138(r30)
    lwz     r0, 0x138(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lis     r4, 0x8040
    stw     r3, 0x144(r30)
    subi    r3, r4, 0x2f98
    addi    r31, r3, 0x57
    lbz     r0, 0x57(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c0ce0
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x10dc
    li      r5, 0x57
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801c0ce0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__13TMapObjSwitchFP9THitActorUl
receiveMessage__13TMapObjSwitchFP9THitActorUl: # 0x801c0cf8
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x801c0df8
    lis     r3, 0x8039
    addi    r4, r3, 0x1100
    addi    r3, r29, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r3, -0x6044(r13)
    li      r4, 0x384c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c0d5c
    addi    r4, r29, 0x10
    li      r3, 0x384c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c0d5c:
    mr      r3, r29
    bl      removeMapCollision__11TMapObjBaseFv
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x801c0d94

branch_0x801c0d70:
    lwz     r3, 0x144(r29)
    lwz     r4, 0x140(r29)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801c0d94:
    lwz     r0, 0x13c(r29)
    cmpw    r30, r0
    blt+    branch_0x801c0d70
    li      r0, 0x0
    lwz     r3, -0x6048(r13)
    sth     r0, 0x2c(sp)
    addi    r0, sp, 0x2c
    lis     r4, 0x8039
    stw     r0, 0x8(sp)
    addi    r4, r4, 0x110c
    li      r5, 0x0
    lfs     f1, -0x2b20(rtoc)
    li      r6, -0x1
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r0, 0x140(r29)
    li      r3, 0x1
    stw     r0, 0x104(r29)
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    b       branch_0x801c0dfc

branch_0x801c0df8:
    li      r3, 0x0
branch_0x801c0dfc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl control__13TMapObjSwitchFv
control__13TMapObjSwitchFv: # 0x801c0e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801c0e44
    li      r0, 0x1
    b       branch_0x801c0e48

branch_0x801c0e44:
    li      r0, 0x0
branch_0x801c0e48:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c0e5c
    lwz     r4, 0x104(r31)
    lwz     r3, -0x6044(r13)
    bl      playTimer__6MSoundFUl
branch_0x801c0e5c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12THideObjInfoFPCc
__ct__12THideObjInfoFPCc: # 0x801c0e70
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
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r30, 0x14(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x10
    lfs     f1, -0x2b20(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801c0f70
    li      r5, 0x0
    lis     r3, 0x803e
    sth     r5, 0x1c(r30)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r31)
    addi    r0, r3, 0x4650
    lis     r3, 0x803e
    stw     r0, 0x20(r31)
    addi    r3, r3, 0x1920
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    subi    r4, r3, 0x566c
    addi    r0, r4, 0x24
    lfs     f0, -0x2b18(rtoc)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x2b20(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x44(r31)
    stfs    f0, 0x48(r31)
    stfs    f0, 0x4c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801c0f70
set_f___Q29JGeometry8TVec3_f_Ffff_801c0f70: # 0x801c0f70
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl load__12THideObjInfoFR20JSUMemoryInputStream
load__12THideObjInfoFR20JSUMemoryInputStream: # 0x801c0f80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14
    addi    r5, r30, 0x48
    addi    r6, r30, 0x4c
    addi    r7, sp, 0x10
    bl      loadHideObjInfo__11TMapObjBaseFR20JSUMemoryInputStreamPlPfPfPl
    lwz     r3, 0x14(sp)
    bl      getActorTypeByEventID__18TMapObjBaseManagerFUl
    stw     r3, 0x44(r30)
    lwz     r4, -0x62a8(r13)
    lwz     r0, 0x13c(r4)
    lwz     r3, 0x144(r4)
    slwi    r0, r0, 2
    stwx    r30, r3, r0
    lwz     r3, 0x13c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x13c(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl action__12THideObjInfoFl
action__12THideObjInfoFl: # 0x801c0ffc
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, -0x62b0(r13)
    lfs     f1, 0x10(r29)
    lfs     f2, 0x14(r29)
    lfs     f3, 0x18(r29)
    lwz     r4, 0x44(r29)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r31, r3
    beq-    branch_0x801c1080
    lfs     f1, 0x48(r29)
    mr      r3, r31
    lfs     f2, 0x4c(r29)
    addi    r4, r29, 0x10
    addi    r5, r29, 0x30
    bl      throwObjFromPointWithRot__11TMapObjBaseFP11TMapObjBaseRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801c1070
    li      r0, 0x1
    b       branch_0x801c1074

branch_0x801c1070:
    li      r0, 0x0
branch_0x801c1074:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c1080
    stw     r30, 0x14c(r31)
branch_0x801c1080:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__17TMapObjWaterSprayFPCc
__ct__17TMapObjWaterSprayFPCc: # 0x801c109c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x55c8
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r3, 0x154
    stw     r0, 0x20(r31)
    li      r4, -0x1
    li      r0, 0x0
    stw     r3, 0x138(r31)
    mr      r3, r31
    lfs     f0, -0x2b20(rtoc)
    stfs    f0, 0x13c(r31)
    stw     r4, 0x14c(r31)
    stb     r0, 0x14c(r31)
    stb     r0, 0x14d(r31)
    stb     r0, 0x14e(r31)
    stb     r0, 0x14f(r31)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x140(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__17TMapObjWaterSprayFR20JSUMemoryInputStream
load__17TMapObjWaterSprayFR20JSUMemoryInputStream: # 0x801c1118
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r5, 0xfc8
    stw     r28, 0x20(sp)
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r3, 0xf4(r30)
    addi    r4, r29, 0x160
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c119c
    li      r0, 0x154
    stw     r0, 0x138(r30)
    lis     r3, 0x8040
    subi    r0, r3, 0x2f98
    lwz     r3, 0x138(r30)
    clrlwi  r5, r3, 16
    add     r28, r0, r5
    lbz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801c11d8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r29, 0x174
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
    b       branch_0x801c11d8

branch_0x801c119c:
    li      r0, 0x155
    stw     r0, 0x138(r30)
    lis     r3, 0x8040
    subi    r0, r3, 0x2f98
    lwz     r3, 0x138(r30)
    clrlwi  r5, r3, 16
    add     r28, r0, r5
    lbz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801c11d8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r29, 0x194
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x801c11d8:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x13c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x2b14(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c1204
    lfs     f0, -0x2b10(rtoc)
    stfs    f0, 0x13c(r30)
    b       branch_0x801c120c

branch_0x801c1204:
    fdivs   f0, f1, f0
    stfs    f0, 0x13c(r30)
branch_0x801c120c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, -0x2b0c(rtoc)
    lfs     f1, 0x1c(sp)
    fcmpu   cr0, f0, f1
    bne-    branch_0x801c1238
    lfs     f0, -0x2b18(rtoc)
    stfs    f0, 0x1c(sp)
    b       branch_0x801c1244

branch_0x801c1238:
    lfs     f0, -0x2b14(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x1c(sp)
branch_0x801c1244:
    lfs     f0, 0x1c(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    stfs    f0, 0x140(r30)
    li      r5, 0x4
    stfs    f0, 0x144(r30)
    stfs    f0, 0x148(r30)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    stb     r0, 0x14c(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    stb     r0, 0x14d(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    stb     r0, 0x14e(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    stb     r0, 0x14f(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl calc__17TMapObjWaterSprayFv
calc__17TMapObjWaterSprayFv: # 0x801c12d4
    mflr    r0
    li      r6, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    addi    r7, r30, 0x0
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x10
    lwz     r4, 0x138(r30)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r31, r3
    beq-    branch_0x801c13cc
    lfs     f0, 0x30(r30)
    addi    r6, r31, 0x124
    lfs     f1, 0x34(r30)
    fctiwz  f0, f0
    fctiwz  f2, f1
    lfs     f1, 0x38(r30)
    stfd    f0, 0x20(sp)
    fctiwz  f0, f1
    stfd    f2, 0x30(sp)
    lwz     r0, 0x24(sp)
    stfd    f0, 0x28(sp)
    lwz     r3, 0x34(sp)
    sth     r0, 0x16c(r31)
    lwz     r0, 0x2c(sp)
    sth     r3, 0x16e(r31)
    sth     r0, 0x170(r31)
    lha     r3, 0x16c(r31)
    lha     r4, 0x16e(r31)
    lha     r5, 0x170(r31)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r31)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r31)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r31)
    lfs     f0, 0x13c(r30)
    stfs    f0, 0x1b0(r31)
    lfs     f0, 0x140(r30)
    stfs    f0, 0x174(r31)
    lfs     f0, 0x144(r30)
    stfs    f0, 0x178(r31)
    lfs     f0, 0x148(r30)
    stfs    f0, 0x17c(r31)
    lbz     r4, 0x14e(r30)
    lbz     r3, 0x14d(r30)
    lbz     r0, 0x14c(r30)
    stb     r0, 0x180(r31)
    stb     r3, 0x181(r31)
    stb     r4, 0x182(r31)
    lbz     r0, 0x14f(r30)
    stb     r0, 0x183(r31)
branch_0x801c13cc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl load__10TDamageObjFR20JSUMemoryInputStream
load__10TDamageObjFR20JSUMemoryInputStream: # 0x801c13e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x20
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, sp, 0x10
    subi    r4, rtoc, 0x2b04
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c1480
    lfs     f3, -0x2b20(rtoc)
    lis     r4, 0x1000
    lfs     f5, -0x2b08(rtoc)
    mr      r3, r30
    lfs     f1, 0x24(r30)
    lfs     f2, -0x2b14(rtoc)
    fmr     f4, f3
    lfs     f0, 0x28(r30)
    fmuls   f1, f5, f1
    addi    r4, r4, 0x36
    fmuls   f2, f2, f0
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    lis     r3, 0x8039
    addi    r3, r3, 0x117c
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    mr      r4, r30
    bl      joinToGroup__11TMapObjBaseFPCcP9THitActor
    b       branch_0x801c14e8

branch_0x801c1480:
    addi    r3, sp, 0x10
    subi    r4, rtoc, 0x2afc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c14e8
    lfs     f3, -0x2b20(rtoc)
    lis     r4, 0x4000
    lfs     f5, -0x2b08(rtoc)
    mr      r3, r30
    lfs     f1, 0x24(r30)
    lfs     f2, -0x2b14(rtoc)
    fmr     f4, f3
    lfs     f0, 0x28(r30)
    fmuls   f1, f5, f1
    addi    r4, r4, 0x53
    fmuls   f2, f2, f0
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    lis     r3, 0x8039
    addi    r3, r3, 0x117c
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    mr      r4, r30
    bl      joinToGroup__11TMapObjBaseFPCcP9THitActor
branch_0x801c14e8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl init__10TDamageObjFUl
init__10TDamageObjFUl: # 0x801c1500
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    lis     r6, 0x8000
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lfs     f3, -0x2b20(rtoc)
    lfs     f5, -0x2b08(rtoc)
    lfs     f1, 0x24(r3)
    fmr     f4, f3
    lfs     f2, -0x2b14(rtoc)
    lfs     f0, 0x28(r3)
    fmuls   f1, f5, f1
    fmuls   f2, f2, f0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    lis     r3, 0x8039
    addi    r3, r3, 0x117c
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    mr      r4, r31
    bl      joinToGroup__11TMapObjBaseFPCcP9THitActor
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TDamageObjFUlPQ26JDrama9TGraphics
perform__10TDamageObjFUlPQ26JDrama9TGraphics: # 0x801c1570
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c15b4
    lwz     r3, 0x44(r31)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801c15b4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__16TMapObjStartDemoFR20JSUMemoryInputStream
load__16TMapObjStartDemoFR20JSUMemoryInputStream: # 0x801c15c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    stw     r0, 0x138(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl touchPlayer__16TMapObjStartDemoFP9THitActor
touchPlayer__16TMapObjStartDemoFP9THitActor: # 0x801c1618
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, -0x6048(r13)
    lwz     r0, 0x138(r3)
    addi    r3, r4, 0x0
    clrlwi  r4, r0, 24
    bl      fireStreamingMovie__12TMarDirectorFUc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initMapObj__25TMapObjChangeStageHipDropFv
initMapObj__25TMapObjChangeStageHipDropFv: # 0x801c1648
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      initMapObj__11TMapObjBaseFv
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x63
    lbz     r0, 0x63(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c1690
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x118c
    li      r5, 0x63
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801c1690:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__25TMapObjChangeStageHipDropFP9THitActor
touchPlayer__25TMapObjChangeStageHipDropFP9THitActor: # 0x801c16a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      SMS_IsMarioStatusHipDrop__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c170c
    bl      SMS_GetMarioGrLevel__Fv
    lwz     r4, -0x60b4(r13)
    lwz     r3, -0x60a0(r13)
    lfs     f2, 0x4(r4)
    lfs     f0, 0x0(r3)
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x801c170c
    lwz     r3, -0x6048(r13)
    li      r5, 0x0
    lhz     r4, 0x138(r31)
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x63
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801c170c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__18TMapObjChangeStageFR20JSUMemoryInputStream
load__18TMapObjChangeStageFR20JSUMemoryInputStream: # 0x801c1720
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    sth     r0, 0x138(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl touchPlayer__18TMapObjChangeStageFP9THitActor
touchPlayer__18TMapObjChangeStageFP9THitActor: # 0x801c1770
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, -0x6048(r13)
    lhz     r4, 0x138(r31)
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    li      r4, 0x197a
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    sth     r0, 0x48(r31)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c17d8
    addi    r4, r31, 0x10
    li      r3, 0x197a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c17d8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl touchWater__16TMapObjBillboardFP9THitActor
touchWater__16TMapObjBillboardFP9THitActor: # 0x801c17ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801c1830
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x2af4(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801c18bc
branch_0x801c1830:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    bl      getRotYFromAxisX__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
    lfs     f2, -0x2af0(rtoc)
    lfs     f0, 0x34(r31)
    fmuls   f1, f2, f1
    lfs     f2, -0x2b20(rtoc)
    lfs     f3, -0x2aec(rtoc)
    fadds   f1, f0, f1
    bl      MsWrap_f___Ffff_801c19b0
    lfs     f0, -0x2b20(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801c1870
    lfs     f0, -0x2ae8(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801c1880
branch_0x801c1870:
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      startAnim__11TMapObjBaseFUs
    b       branch_0x801c188c

branch_0x801c1880:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
branch_0x801c188c:
    lwz     r3, -0x6044(r13)
    li      r4, 0x384f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c18bc
    addi    r4, r31, 0x10
    addi    r6, r31, 0x150
    li      r3, 0x384f
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c18bc:
    lwz     r0, 0x138(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c1994
    lbz     r0, 0x14c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c1994
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    lfs     f0, -0x2ae4(rtoc)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x38(r31)
    stw     r0, 0x40(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f1, 0x3c(sp)
    stw     r3, 0x2c(sp)
    fsubs   f0, f1, f0
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x34(sp)
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x108(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lwz     r3, 0x138(r31)
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801c1940
    li      r0, 0x1
    b       branch_0x801c1944

branch_0x801c1940:
    li      r0, 0x0
branch_0x801c1944:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c195c
    lis     r4, 0x2000
    lwz     r3, -0x62b0(r13)
    addi    r4, r4, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
branch_0x801c195c:
    cmplwi  r3, 0x0
    beq-    branch_0x801c1994
    lfs     f1, 0x13c(r31)
    addi    r4, sp, 0x2c
    lfs     f2, 0x140(r31)
    addi    r5, sp, 0x38
    bl      throwObjFromPointWithRot__11TMapObjBaseFP11TMapObjBaseRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x14c(r31)
branch_0x801c1994:
    lwz     r0, 0x54(sp)
    li      r3, 0x1
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl MsWrap_f___Ffff_801c19b0
MsWrap_f___Ffff_801c19b0: # 0x801c19b0
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x801c19ec
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x1bc3c4, 0x801c19c8 - 0x801c19c4
branch_0x801c19c8:
    fsubs   f1, f1, f0
branch_0x801c19cc:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x801c19c8
    b       branch_0x801c19e0

branch_0x801c19dc:
    fadds   f1, f1, f0
branch_0x801c19e0:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801c19dc
    blr

branch_0x801c19ec:
    fsubs   f0, f3, f2
    b       branch_0x801c19cc


.incbin "./baserom/code/Text_0x80005600.bin", 0x1bc3f4, 0x801c19f8 - 0x801c19f4

.globl touchActor__16TMapObjBillboardFP9THitActor
touchActor__16TMapObjBillboardFP9THitActor: # 0x801c19f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801c1a3c
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x2af4(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801c1ac8
branch_0x801c1a3c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    bl      getRotYFromAxisX__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
    lfs     f2, -0x2af0(rtoc)
    lfs     f0, 0x34(r30)
    fmuls   f1, f2, f1
    lfs     f2, -0x2b20(rtoc)
    lfs     f3, -0x2aec(rtoc)
    fadds   f1, f0, f1
    bl      MsWrap_f___Ffff_801c19b0
    lfs     f0, -0x2b20(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801c1a7c
    lfs     f0, -0x2ae8(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801c1a8c
branch_0x801c1a7c:
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      startAnim__11TMapObjBaseFUs
    b       branch_0x801c1a98

branch_0x801c1a8c:
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
branch_0x801c1a98:
    lwz     r3, -0x6044(r13)
    li      r4, 0x384f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c1ac8
    addi    r4, r30, 0x10
    addi    r6, r30, 0x150
    li      r3, 0x384f
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c1ac8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __ct__8TManholeFPCc
__ct__8TManholeFPCc: # 0x801c1ae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x4e24
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    lfs     f0, -0x2b20(rtoc)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x14c(r31)
    stb     r4, 0x150(r31)
    stb     r0, 0x151(r31)
    stb     r4, 0x152(r31)
    stw     r4, 0x154(r31)
    stw     r4, 0x158(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__8TManholeFv
initMapObj__8TManholeFv: # 0x801c1b4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      initMapObj__14TMapObjGeneralFv
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801c1b80
    mr      r3, r30
    bl      __ct__17TMapCollisionWarpFv
branch_0x801c1b80:
    stw     r30, 0x158(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x11ac
    lwz     r3, 0x158(r31)
    mr      r6, r31
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__8TManholeFv
loadAfter__8TManholeFv: # 0x801c1bc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2b20(rtoc)
    stfs    f0, 0xc(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeManholeUnuseful__8TManholeFPC11TMapObjBase
makeManholeUnuseful__8TManholeFPC11TMapObjBase: # 0x801c1c00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x154(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c1c50
    stw     r4, 0x154(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x158(r31)
    lwz     r3, 0x58(r3)
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x801c1c50:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setGroundCollision__8TManholeFv
setGroundCollision__8TManholeFv: # 0x801c1c64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      SMS_GetYoshi__Fv
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c1c90
    li      r0, 0x0
    b       branch_0x801c1c94

branch_0x801c1c90:
    li      r0, 0x1
branch_0x801c1c94:
    cmpwi   r0, 0x0
    beq-    branch_0x801c1d34
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x10(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x20(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c1d34
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x10(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x20(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c1d34
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x18(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x28(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c1d34
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x18(r31)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x28(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c1d34
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801c1d3c
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x10
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801c1d3c

branch_0x801c1d34:
    mr      r3, r31
    bl      setGroundCollision__11TMapObjBaseFv
branch_0x801c1d3c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl calc__8TManholeFv
calc__8TManholeFv: # 0x801c1d50
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f31, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fadds   f31, f0, f31
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x2ae0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801c1db8
    fcmpo   cr0, f0, f31
    blt-    branch_0x801c1de0
branch_0x801c1db8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x2adc(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801c1e10
    fcmpo   cr0, f0, f31
    bge-    branch_0x801c1e10
branch_0x801c1de0:
    lwz     r3, -0x6044(r13)
    li      r4, 0x383c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c1e10
    addi    r4, r31, 0x10
    li      r3, 0x383c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c1e10:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl appeared__8TManholeFv
appeared__8TManholeFv: # 0x801c1e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r3, 0x154(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801c1e78
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801c1fd4
    lwz     r3, 0x158(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x154(r31)
    b       branch_0x801c1e78


.incbin "./baserom/code/Text_0x80005600.bin", 0x1bc874, 0x801c1e78 - 0x801c1e74
branch_0x801c1e78:
    lbz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c1eb4
    lwz     r3, -0x60d8(r13)
    lfs     f0, -0x2b20(rtoc)
    lfs     f1, 0xa8(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801c1eb4
    lwz     r3, 0xec(r31)
    li      r4, 0x107
    lwz     r3, 0x8(r3)
    bl      setAllBGType__17TMapCollisionBaseFUs
    li      r0, 0x0
    stb     r0, 0x150(r31)
branch_0x801c1eb4:
    mr      r3, r31
    bl      animationFinished__8TManholeFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c1fd4
    lbz     r0, 0x152(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801c1f14
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801c1f14
    li      r0, 0x0
    stb     r0, 0x152(r31)
    li      r4, 0x383e
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c1f14
    addi    r4, r31, 0x10
    li      r3, 0x383e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c1f14:
    lfs     f2, 0x14c(r31)
    lfs     f0, -0x7a0c(r13)
    fcmpo   cr0, f2, f0
    ble-    branch_0x801c1fa0
    lfs     f1, -0x2ad8(rtoc)
    lfs     f0, 0x148(r31)
    lwz     r0, -0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r4, -0x5ea4(r13)
    lfs     f0, 0x110(r31)
    fctiwz  f1, f1
    stfd    f1, 0x40(sp)
    lwz     r3, 0x44(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x7a10(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2ad4(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801c1f8c
    fsubs   f0, f1, f0
    stfs    f0, 0x148(r31)
branch_0x801c1f8c:
    lfs     f1, 0x14c(r31)
    lfs     f0, -0x7a08(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x14c(r31)
    b       branch_0x801c1fd4

branch_0x801c1fa0:
    lbz     r0, 0x151(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801c1fc0
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setUpMapCollision__11TMapObjBaseFUs
    li      r0, 0x1
    stb     r0, 0x151(r31)
branch_0x801c1fc0:
    lwz     r0, 0xf8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r31)
    lfs     f0, 0x110(r31)
    stfs    f0, 0x14(r31)
branch_0x801c1fd4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl animationFinished__8TManholeFv
animationFinished__8TManholeFv: # 0x801c1fe8
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    lfs     f1, -0x2b20(rtoc)
    lfs     f0, 0xc(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801c202c
    li      r3, 0x1
    b       branch_0x801c2150

branch_0x801c202c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f31, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lfs     f3, 0x10(r31)
    lfs     f0, -0x2ad0(rtoc)
    lfs     f1, 0x10(r3)
    fcmpo   cr0, f3, f0
    fadds   f4, f1, f31
    bge-    branch_0x801c20bc
    fcmpo   cr0, f4, f0
    cror    2, 1, 2
    bne-    branch_0x801c20bc
    stfs    f0, 0x10(r31)
    mr      r3, r30
    lfs     f0, -0x2b20(rtoc)
    stfs    f0, 0xc(r31)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r30)
    li      r3, 0x1
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r30)
    b       branch_0x801c2150

branch_0x801c20bc:
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lfd     f2, -0x2ac8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    stw     r3, 0x44(sp)
    fsubs   f0, f0, f2
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fcmpo   cr0, f3, f0
    fsubs   f0, f1, f2
    bge-    branch_0x801c214c
    fcmpo   cr0, f4, f0
    cror    2, 1, 2
    bne-    branch_0x801c214c
    lfs     f0, -0x2b20(rtoc)
    mr      r3, r30
    stfs    f0, 0x10(r31)
    stfs    f0, 0xc(r31)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r30)
    li      r3, 0x1
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r30)
    b       branch_0x801c2150

branch_0x801c214c:
    li      r3, 0x0
branch_0x801c2150:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl touchPlayer__8TManholeFP9THitActor
touchPlayer__8TManholeFP9THitActor: # 0x801c216c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x0
    sth     r0, 0xfc(r3)
    bl      animationFinished__8TManholeFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801c21a4
    lfs     f0, 0x110(r31)
    stfs    f0, 0x14(r31)
    b       branch_0x801c2468

branch_0x801c21a4:
    lwz     r4, -0x60d8(r13)
    lwz     r3, 0x7c(r4)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x801c225c
    lfs     f1, 0x14(r4)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c225c
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f31, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    fadds   f31, f31, f1
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0x10(r3)
    li      r4, 0x383b
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c2238
    addi    r4, r31, 0x10
    li      r3, 0x383b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c2238:
    lwz     r0, 0xf8(r31)
    li      r4, 0x15
    li      r5, 0xf
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    li      r6, 0x0
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiiPf
    b       branch_0x801c2468

branch_0x801c225c:
    lfs     f2, 0x14(r4)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c2328
    lfs     f1, 0xa8(r4)
    lfs     f0, -0x2b20(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c2328
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f31, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    fadds   f31, f31, f1
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0x10(r3)
    li      r4, 0x400
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    bl      setAllBGType__17TMapCollisionBaseFUs
    lwz     r3, -0x6044(r13)
    li      r4, 0x383b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c2308
    addi    r4, r31, 0x10
    li      r3, 0x383b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c2308:
    li      r0, 0x1
    stb     r0, 0x150(r31)
    li      r4, 0x15
    li      r5, 0xf
    lwz     r3, -0x60f0(r13)
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    b       branch_0x801c2468

branch_0x801c2328:
    lfs     f1, -0x2ac0(rtoc)
    lfs     f0, 0xec(r4)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x801c2348
    li      r0, 0x1
    b       branch_0x801c234c

branch_0x801c2348:
    li      r0, 0x0
branch_0x801c234c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c2410
    lbz     r0, 0x151(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c2374
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
    li      r0, 0x0
    stb     r0, 0x151(r31)
branch_0x801c2374:
    lbz     r0, 0x152(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801c23b8
    li      r0, 0x1
    stb     r0, 0x152(r31)
    li      r4, 0x383d
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c23b8
    addi    r4, r31, 0x10
    li      r3, 0x383d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c23b8:
    addi    r3, r31, 0x110
    lfs     f0, -0x7a18(r13)
    lfs     f1, 0x110(r31)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801c23e4
    lfs     f0, -0x7a14(r13)
    fsubs   f0, f2, f0
    stfs    f0, 0x14(r31)
    b       branch_0x801c23e8

branch_0x801c23e4:
    stfs    f0, 0x14(r31)
branch_0x801c23e8:
    lfs     f0, -0x2b18(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14c(r31)
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    b       branch_0x801c2468

branch_0x801c2410:
    lbz     r0, 0x152(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c2454
    li      r0, 0x0
    stb     r0, 0x152(r31)
    li      r4, 0x383e
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c2454
    addi    r4, r31, 0x10
    li      r3, 0x383e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c2454:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x178(r12)
    mtlr    r12
    blrl
branch_0x801c2468:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl __ct__5TDoorFPCc
__ct__5TDoorFPCc: # 0x801c2480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x4c48
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x138(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__5TDoorFR20JSUMemoryInputStream
load__5TDoorFR20JSUMemoryInputStream: # 0x801c24cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x10(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x801c2510
    li      r0, 0x1
    stb     r0, 0x138(r30)
branch_0x801c2510:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl touchPlayer__5TDoorFP9THitActor
touchPlayer__5TDoorFP9THitActor: # 0x801c2528
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801c255c
    li      r0, 0x1
    b       branch_0x801c2560

branch_0x801c255c:
    li      r0, 0x0
branch_0x801c2560:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c2604
    lbz     r0, 0x138(r30)
    li      r5, 0x11
    cmplwi  r0, 0x0
    beq-    branch_0x801c257c
    li      r5, 0x12
branch_0x801c257c:
    lwz     r12, 0x0(r31)
    mr      r3, r31
    mr      r4, r30
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801c2604
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x1320
    bne-    branch_0x801c25d4
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c25c4
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      startAnim__11TMapObjBaseFUs
    b       branch_0x801c2604

branch_0x801c25c4:
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      startAnim__11TMapObjBaseFUs
    b       branch_0x801c2604

branch_0x801c25d4:
    cmplwi  r0, 0x1321
    bne-    branch_0x801c2604
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c25f8
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      startAnim__11TMapObjBaseFUs
    b       branch_0x801c2604

branch_0x801c25f8:
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
branch_0x801c2604:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__14TRedCoinSwitchFv
__dt__14TRedCoinSwitchFv: # 0x801c261c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2684
    lis     r3, 0x803d
    subi    r3, r3, 0x5934
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2674
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c2674:
    extsh.  r0, r31
    ble-    branch_0x801c2684
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2684:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TMapObjSwitchFv
__dt__13TMapObjSwitchFv: # 0x801c26a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2708
    lis     r3, 0x803d
    subi    r3, r3, 0x57d0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c26f8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c26f8:
    extsh.  r0, r31
    ble-    branch_0x801c2708
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2708:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12THideObjInfoFv
__dt__12THideObjInfoFv: # 0x801c2724
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2774
    lis     r3, 0x803d
    subi    r3, r3, 0x566c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x801c2774
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2774:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TMapObjWaterSprayFv
__dt__17TMapObjWaterSprayFv: # 0x801c2790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c27f8
    lis     r3, 0x803d
    subi    r3, r3, 0x55c8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c27e8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c27e8:
    extsh.  r0, r31
    ble-    branch_0x801c27f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c27f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TDamageObjFv
__dt__10TDamageObjFv: # 0x801c2814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c287c
    lis     r3, 0x803d
    subi    r3, r3, 0x5464
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c286c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801c286c:
    extsh.  r0, r31
    ble-    branch_0x801c287c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c287c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TMapObjStartDemoFv
__dt__16TMapObjStartDemoFv: # 0x801c2898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2900
    lis     r3, 0x803d
    subi    r3, r3, 0x53c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c28f0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c28f0:
    extsh.  r0, r31
    ble-    branch_0x801c2900
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2900:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__25TMapObjChangeStageHipDropFv
__dt__25TMapObjChangeStageHipDropFv: # 0x801c291c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c299c
    lis     r3, 0x803d
    subi    r3, r3, 0x525c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c298c
    lis     r3, 0x803d
    subi    r3, r3, 0x50f8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c298c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c298c:
    extsh.  r0, r31
    ble-    branch_0x801c299c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c299c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TMapObjBillboardFv
__dt__16TMapObjBillboardFv: # 0x801c29b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2a38
    lis     r3, 0x803d
    subi    r3, r3, 0x4f94
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2a28
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2a28
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c2a28:
    extsh.  r0, r31
    ble-    branch_0x801c2a38
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2a38:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TManholeFv
__dt__8TManholeFv: # 0x801c2a54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2ad4
    lis     r3, 0x803d
    subi    r3, r3, 0x4e24
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2ac4
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2ac4
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c2ac4:
    extsh.  r0, r31
    ble-    branch_0x801c2ad4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2ad4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__5TDoorFv
__dt__5TDoorFv: # 0x801c2af0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c2b58
    lis     r3, 0x803d
    subi    r3, r3, 0x4c48
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c2b48
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c2b48:
    extsh.  r0, r31
    ble-    branch_0x801c2b58
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c2b58:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjTown_cpp
__sinit_MapObjTown_cpp: # 0x801c2b74
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6a80
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2bbc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801c2bbc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2bec
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801c2bec:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2c1c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801c2c1c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2c4c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801c2c4c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2c7c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801c2c7c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2cac
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801c2cac:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2cdc
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801c2cdc:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2d0c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801c2d0c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2d3c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801c2d3c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2d6c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801c2d6c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2d9c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801c2d9c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2dcc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801c2dcc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2dfc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801c2dfc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2e2c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801c2e2c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801c2e5c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801c2e5c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__5TDoorFv
_32___dt__5TDoorFv: # 0x801c2e70
    subi    r3, r3, 0x20
    b       __dt__5TDoorFv


.globl _32___dt__8TManholeFv
_32___dt__8TManholeFv: # 0x801c2e78
    subi    r3, r3, 0x20
    b       __dt__8TManholeFv


.globl _32___dt__16TMapObjBillboardFv
_32___dt__16TMapObjBillboardFv: # 0x801c2e80
    subi    r3, r3, 0x20
    b       __dt__16TMapObjBillboardFv


.globl _32___dt__18TMapObjChangeStageFv
_32___dt__18TMapObjChangeStageFv: # 0x801c2e88
    subi    r3, r3, 0x20
    b       __dt__18TMapObjChangeStageFv


.globl _32___dt__25TMapObjChangeStageHipDropFv
_32___dt__25TMapObjChangeStageHipDropFv: # 0x801c2e90
    subi    r3, r3, 0x20
    b       __dt__25TMapObjChangeStageHipDropFv


.globl _32___dt__16TMapObjStartDemoFv
_32___dt__16TMapObjStartDemoFv: # 0x801c2e98
    subi    r3, r3, 0x20
    b       __dt__16TMapObjStartDemoFv


.globl _32___dt__10TDamageObjFv
_32___dt__10TDamageObjFv: # 0x801c2ea0
    subi    r3, r3, 0x20
    b       __dt__10TDamageObjFv


.globl _32___dt__17TMapObjWaterSprayFv
_32___dt__17TMapObjWaterSprayFv: # 0x801c2ea8
    subi    r3, r3, 0x20
    b       __dt__17TMapObjWaterSprayFv


.globl _32___dt__12THideObjInfoFv
_32___dt__12THideObjInfoFv: # 0x801c2eb0
    subi    r3, r3, 0x20
    b       __dt__12THideObjInfoFv


.globl _32___dt__13TMapObjSwitchFv
_32___dt__13TMapObjSwitchFv: # 0x801c2eb8
    subi    r3, r3, 0x20
    b       __dt__13TMapObjSwitchFv


.globl _32___dt__14TRedCoinSwitchFv
_32___dt__14TRedCoinSwitchFv: # 0x801c2ec0
    subi    r3, r3, 0x20
    b       __dt__14TRedCoinSwitchFv


.globl _32___dt__14TBasketReverseFv
_32___dt__14TBasketReverseFv: # 0x801c2ec8
    subi    r3, r3, 0x20
    b       __dt__14TBasketReverseFv
