
.globl __dt__24TNerveBossTelesaFallDemoFv
__dt__24TNerveBossTelesaFallDemoFv: # 0x800bd89c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bd8e0
    lis     r3, 0x803b
    addi    r0, r3, 0x79d8
    stw     r0, 0x0(r31)
    beq-    branch_0x800bd8d0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800bd8d0:
    extsh.  r0, r4
    ble-    branch_0x800bd8e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bd8e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveBossTelesaFallDemoCFP24TSpineBase_10TLiveActor_
execute__24TNerveBossTelesaFallDemoCFP24TSpineBase_10TLiveActor_: # 0x800bd8f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800bd96c
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x4
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800bd948
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x6c(r31)
branch_0x800bd948:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x6130(rtoc)
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x184(r31)
    lfs     f0, -0x6130(rtoc)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
branch_0x800bd96c:
    mr      r3, r31
    bl      rouletteFall__11TBossTelesaFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800bdac8
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x34
    lwz     r0, 0x14(r31)
    lwz     r4, -0x60b4(r13)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x3c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    mr      r3, r31
    bl      slotFall__11TBossTelesaFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800bdac8
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r31)
    lwz     r4, 0x16c(r31)
    lwz     r3, 0x64(r4)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r4)
    lwz     r4, 0x170(r31)
    lwz     r3, 0x64(r4)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r4)
    stw     r0, 0x8(r30)
    lbz     r0, -0x6a58(r13)
    extsb.  r0, r0
    bne-    branch_0x800bda28
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a54(r13)
    addi    r0, r3, 0x7adc
    lis     r4, 0x800c
    stw     r0, -0x6a54(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b34
    subi    r4, r4, 0x251c
    subi    r3, r13, 0x6a54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a58(r13)
branch_0x800bda28:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x6a54
    cmplwi  r0, 0x0
    beq-    branch_0x800bda3c
    stw     r0, 0x1c(r30)
branch_0x800bda3c:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lbz     r0, -0x6a58(r13)
    extsb.  r0, r0
    bne-    branch_0x800bda8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a54(r13)
    addi    r0, r3, 0x7adc
    lis     r4, 0x800c
    stw     r0, -0x6a54(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b34
    subi    r4, r4, 0x251c
    subi    r3, r13, 0x6a54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a58(r13)
branch_0x800bda8c:
    subi    r4, r13, 0x6a54
    cmplwi  r4, 0x0
    beq-    branch_0x800bdac0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800bdac0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800bdac0:
    li      r3, 0x1
    b       branch_0x800bdacc

branch_0x800bdac8:
    li      r3, 0x0
branch_0x800bdacc:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__24TNerveBossTelesaHideWaitFv
__dt__24TNerveBossTelesaHideWaitFv: # 0x800bdae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bdb28
    lis     r3, 0x803b
    addi    r0, r3, 0x7adc
    stw     r0, 0x0(r31)
    beq-    branch_0x800bdb18
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800bdb18:
    extsh.  r0, r4
    ble-    branch_0x800bdb28
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bdb28:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveBossTelesaFreezeCFP24TSpineBase_10TLiveActor_
execute__22TNerveBossTelesaFreezeCFP24TSpineBase_10TLiveActor_: # 0x800bdb40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    lwz     r5, 0x0(r4)
    li      r4, 0x10
    lwz     r3, 0x74(r5)
    mr      r31, r5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bdc08
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bdcd8
    li      r0, 0x0
    stb     r0, 0x350(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800bdbc0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800bdbc4

branch_0x800bdbc0:
    li      r0, 0x1
branch_0x800bdbc4:
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r0, 24
    lbz     r4, -0x7e28(r13)
    subf    r0, r3, r0
    mulli   r0, r0, 0x1e
    add     r0, r4, r0
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xfe
    ble-    branch_0x800bdbf0
    li      r0, 0xfe
    b       branch_0x800bdbfc

branch_0x800bdbf0:
    cmplwi  r0, 0x0
    bge-    branch_0x800bdbfc
    li      r0, 0x0
branch_0x800bdbfc:
    stb     r0, 0x34f(r31)
    li      r3, 0x1
    b       branch_0x800bdcdc

branch_0x800bdc08:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0x10
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bdc40
    li      r4, 0x0
    b       branch_0x800bdc44

branch_0x800bdc40:
    lwz     r4, 0x24(r3)
branch_0x800bdc44:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bdc54
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bdc54:
    lwz     r3, 0x74(r31)
    li      r4, 0x10
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bdc78
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bdc78:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bdc9c
    li      r4, 0x0
    b       branch_0x800bdca0

branch_0x800bdc9c:
    lwz     r4, 0x40(r3)
branch_0x800bdca0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, -0x6044(r13)
    li      r4, 0x28e7
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800bdcd8
    addi    r4, r31, 0x10
    li      r3, 0x28e7
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800bdcd8:
    li      r3, 0x0
branch_0x800bdcdc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __dt__22TNerveBossTelesaFreezeFv
__dt__22TNerveBossTelesaFreezeFv: # 0x800bdcf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bdd34
    lis     r3, 0x803b
    addi    r0, r3, 0x7a8c
    stw     r0, 0x0(r31)
    beq-    branch_0x800bdd24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800bdd24:
    extsh.  r0, r4
    ble-    branch_0x800bdd34
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bdd34:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveBossTelesaPrepareSlotCFP24TSpineBase_10TLiveActor_
execute__27TNerveBossTelesaPrepareSlotCFP24TSpineBase_10TLiveActor_: # 0x800bdd4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    mr      r30, r4
    stw     r29, 0xfc(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800bde24
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xf
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bddb0
    li      r4, 0x0
    b       branch_0x800bddb4

branch_0x800bddb0:
    lwz     r4, 0x24(r3)
branch_0x800bddb4:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bddc4
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bddc4:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bdde8
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bdde8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bde0c
    li      r4, 0x0
    b       branch_0x800bde10

branch_0x800bde0c:
    lwz     r4, 0x3c(r3)
branch_0x800bde10:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
branch_0x800bde24:
    lbz     r0, 0x350(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800be110
    lwz     r5, 0x36c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    addi    r0, r5, 0x1
    stw     r0, 0x36c(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800be110
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bdf14
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xc
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bde9c
    li      r4, 0x0
    b       branch_0x800bdea0

branch_0x800bde9c:
    lwz     r4, 0x24(r3)
branch_0x800bdea0:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bdeb0
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bdeb0:
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bded4
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bded4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bdef8
    li      r4, 0x0
    b       branch_0x800bdefc

branch_0x800bdef8:
    lwz     r4, 0x30(r3)
branch_0x800bdefc:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
    b       branch_0x800be110

branch_0x800bdf14:
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bdfe0
    lwz     r3, 0x15c(r31)
    lwz     r4, 0x36c(r31)
    lwz     r0, 0x220(r3)
    cmpw    r4, r0
    ble-    branch_0x800be110
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xd
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bdf74
    li      r4, 0x0
    b       branch_0x800bdf78

branch_0x800bdf74:
    lwz     r4, 0x24(r3)
branch_0x800bdf78:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bdf88
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bdf88:
    lwz     r3, 0x74(r31)
    li      r4, 0xd
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bdfac
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bdfac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bdfd0
    li      r4, 0x0
    b       branch_0x800bdfd4

branch_0x800bdfd0:
    lwz     r4, 0x34(r3)
branch_0x800bdfd4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800be110

branch_0x800bdfe0:
    li      r0, 0x0
    stw     r0, 0x36c(r31)
    mr      r3, r31
    stb     r0, 0x350(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800be024
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800be028

branch_0x800be024:
    li      r0, 0x1
branch_0x800be028:
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r0, 24
    lbz     r4, -0x7e28(r13)
    subf    r0, r3, r0
    mulli   r0, r0, 0x1e
    add     r0, r4, r0
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xfe
    ble-    branch_0x800be054
    li      r0, 0xfe
    b       branch_0x800be060

branch_0x800be054:
    cmplwi  r0, 0x0
    bge-    branch_0x800be060
    li      r0, 0x0
branch_0x800be060:
    stb     r0, 0x34f(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xf
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800be09c
    li      r4, 0x0
    b       branch_0x800be0a0

branch_0x800be09c:
    lwz     r4, 0x24(r3)
branch_0x800be0a0:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800be0b0
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800be0b0:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800be0d4
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800be0d4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800be0f8
    li      r4, 0x0
    b       branch_0x800be0fc

branch_0x800be0f8:
    lwz     r4, 0x3c(r3)
branch_0x800be0fc:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
branch_0x800be110:
    lwz     r3, 0x368(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x368(r31)
    lbz     r0, 0x13c(r31)
    lwz     r4, 0x15c(r31)
    cmplwi  r0, 0x2
    lwz     r29, 0x1e4(r4)
    bne-    branch_0x800be134
    lwz     r29, 0x1f8(r4)
branch_0x800be134:
    cmplwi  r0, 0x1
    bne-    branch_0x800be140
    lwz     r29, 0x20c(r4)
branch_0x800be140:
    lwz     r3, 0x184(r31)
    bl      getSlotResult__11TTelesaSlotFv
    cmpwi   r3, 0x0
    bne-    branch_0x800be158
    li      r0, 0x1
    b       branch_0x800be15c

branch_0x800be158:
    li      r0, 0x0
branch_0x800be15c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800be194
    xoris   r0, r29, 0x8000
    lfd     f2, -0x6120(rtoc)
    stw     r0, 0xf4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6128(rtoc)
    stw     r0, 0xf0(sp)
    lfd     f1, 0xf0(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xe8(sp)
    lwz     r29, 0xec(sp)
branch_0x800be194:
    lwz     r3, 0x368(r31)
    subi    r0, r29, 0x78
    cmpw    r3, r0
    ble-    branch_0x800be1b0
    subf    r4, r3, r29
    addi    r3, r31, 0x0
    bl      flashItem__11TBossTelesaFi
branch_0x800be1b0:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800be394
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, -0x1
    bne-    branch_0x800be1d8
    li      r0, 0x1
    b       branch_0x800be214

branch_0x800be1d8:
    lwz     r0, 0x274(r31)
    li      r3, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x800be210
branch_0x800be1ec:
    addi    r0, r3, 0x1ac
    lwzx    r4, r31, r0
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x800be208
    li      r0, 0x0
    b       branch_0x800be214

branch_0x800be208:
    addi    r3, r3, 0x4
    bdnz+      branch_0x800be1ec
branch_0x800be210:
    li      r0, 0x1
branch_0x800be214:
    clrlwi. r0, r0, 24
    bne-    branch_0x800be228
    lwz     r0, 0x368(r31)
    cmpw    r0, r29
    ble-    branch_0x800be394
branch_0x800be228:
    li      r0, 0x0
    stw     r0, 0x368(r31)
    mr      r3, r31
    bl      forceAllItemKill__11TBossTelesaFv
    lbz     r0, 0x350(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800be278
    lwz     r3, -0x6044(r13)
    li      r4, 0x2968
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800be2a8
    addi    r4, r31, 0x10
    li      r3, 0x2968
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800be2a8

branch_0x800be278:
    lwz     r3, -0x6044(r13)
    li      r4, 0x28d5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800be2a8
    addi    r4, r31, 0x10
    li      r3, 0x28d5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800be2a8:
    li      r0, 0x0
    stw     r0, 0x8(r30)
    lbz     r0, -0x6a60(r13)
    extsb.  r0, r0
    bne-    branch_0x800be2f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a5c(r13)
    addi    r0, r3, 0x7aec
    lis     r4, 0x800c
    stw     r0, -0x6a5c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b28
    subi    r4, r4, 0x1c4c
    subi    r3, r13, 0x6a5c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a60(r13)
branch_0x800be2f4:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x6a5c
    cmplwi  r0, 0x0
    beq-    branch_0x800be308
    stw     r0, 0x1c(r30)
branch_0x800be308:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lbz     r0, -0x6a60(r13)
    extsb.  r0, r0
    bne-    branch_0x800be358
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a5c(r13)
    addi    r0, r3, 0x7aec
    lis     r4, 0x800c
    stw     r0, -0x6a5c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b28
    subi    r4, r4, 0x1c4c
    subi    r3, r13, 0x6a5c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a60(r13)
branch_0x800be358:
    subi    r4, r13, 0x6a5c
    cmplwi  r4, 0x0
    beq-    branch_0x800be38c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800be38c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800be38c:
    li      r3, 0x1
    b       branch_0x800be398

branch_0x800be394:
    li      r3, 0x0
branch_0x800be398:
    lwz     r0, 0x10c(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    addi    sp, sp, 0x108
    blr


.globl __dt__20TNerveBossTelesaHideFv
__dt__20TNerveBossTelesaHideFv: # 0x800be3b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800be3f8
    lis     r3, 0x803b
    addi    r0, r3, 0x7aec
    stw     r0, 0x0(r31)
    beq-    branch_0x800be3e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800be3e8:
    extsh.  r0, r4
    ble-    branch_0x800be3f8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800be3f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__27TNerveBossTelesaPrepareSlotFv
__dt__27TNerveBossTelesaPrepareSlotFv: # 0x800be410
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800be454
    lis     r3, 0x803b
    addi    r0, r3, 0x7a9c
    stw     r0, 0x0(r31)
    beq-    branch_0x800be444
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800be444:
    extsh.  r0, r4
    ble-    branch_0x800be454
    mr      r3, r31
    bl      __dl__FPv
branch_0x800be454:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__28TNerveBossTelesaSpitSlotItemCFP24TSpineBase_10TLiveActor_
execute__28TNerveBossTelesaSpitSlotItemCFP24TSpineBase_10TLiveActor_: # 0x800be46c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    lwz     r5, 0x0(r4)
    li      r4, 0xe
    lwz     r3, 0x74(r5)
    mr      r31, r5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800be55c
    lfs     f1, -0x7e24(r13)
    lfs     f0, -0x6118(rtoc)
    lfs     f2, 0x364(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800be55c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xe
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800be4f0
    li      r4, 0x0
    b       branch_0x800be4f4

branch_0x800be4f0:
    lwz     r4, 0x24(r3)
branch_0x800be4f4:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800be504
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800be504:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800be528
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800be528:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800be54c
    li      r4, 0x0
    b       branch_0x800be550

branch_0x800be54c:
    lwz     r4, 0x38(r3)
branch_0x800be550:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800be6a0

branch_0x800be55c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800be684
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x258
    ble-    branch_0x800be684
    lbz     r0, -0x6a38(r13)
    extsb.  r0, r0
    bne-    branch_0x800be5c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a34(r13)
    addi    r0, r3, 0x7a9c
    lis     r4, 0x800c
    stw     r0, -0x6a34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b64
    subi    r4, r4, 0x1bf0
    subi    r3, r13, 0x6a34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a38(r13)
branch_0x800be5c0:
    subi    r4, r13, 0x6a34
    cmplwi  r4, 0x0
    beq-    branch_0x800be5f4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800be5f4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800be5f4:
    li      r4, 0x0
    stw     r4, 0x368(r31)
    mr      r3, r4
    b       branch_0x800be670

branch_0x800be604:
    addi    r0, r3, 0x1ac
    lwzx    r5, r31, r0
    lwz     r0, 0xf0(r5)
    clrlwi. r0, r0, 31
    bne-    branch_0x800be668
    lwz     r6, 0x4c(r5)
    addis   r0, r6, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x800be630
    li      r0, 0x1
    b       branch_0x800be634

branch_0x800be630:
    li      r0, 0x0
branch_0x800be634:
    clrlwi. r0, r0, 24
    bne-    branch_0x800be668
    addis   r0, r6, 0xe000
    cmplwi  r0, 0x2
    bne-    branch_0x800be650
    li      r0, 0x1
    b       branch_0x800be654

branch_0x800be650:
    li      r0, 0x0
branch_0x800be654:
    clrlwi. r0, r0, 24
    bne-    branch_0x800be668
    lwz     r0, 0x64(r5)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r5)
branch_0x800be668:
    addi    r4, r4, 0x1
    addi    r3, r3, 0x4
branch_0x800be670:
    lwz     r0, 0x274(r31)
    cmpw    r4, r0
    blt+    branch_0x800be604
    li      r3, 0x1
    b       branch_0x800be6a4

branch_0x800be684:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xc8
    ble-    branch_0x800be6a0
    lfs     f1, 0x364(r31)
    lfs     f0, -0x6114(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x364(r31)
branch_0x800be6a0:
    li      r3, 0x0
branch_0x800be6a4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__28TNerveBossTelesaSpitSlotItemFv
__dt__28TNerveBossTelesaSpitSlotItemFv: # 0x800be6bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800be700
    lis     r3, 0x803b
    addi    r0, r3, 0x7aac
    stw     r0, 0x0(r31)
    beq-    branch_0x800be6f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800be6f0:
    extsh.  r0, r4
    ble-    branch_0x800be700
    mr      r3, r31
    bl      __dl__FPv
branch_0x800be700:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveBossTelesaSlotStartCFP24TSpineBase_10TLiveActor_
execute__25TNerveBossTelesaSlotStartCFP24TSpineBase_10TLiveActor_: # 0x800be718
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800be7d8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xb
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800be770
    li      r4, 0x0
    b       branch_0x800be774

branch_0x800be770:
    lwz     r4, 0x24(r3)
branch_0x800be774:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800be784
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800be784:
    lwz     r3, 0x74(r31)
    li      r4, 0xb
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800be7a8
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800be7a8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800be7cc
    li      r4, 0x0
    b       branch_0x800be7d0

branch_0x800be7cc:
    lwz     r4, 0x2c(r3)
branch_0x800be7d0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800be7d8:
    lwz     r3, 0x74(r31)
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800be8ec
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6110(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800be820
    li      r0, 0x1
    stb     r0, 0x18c(r31)
    lwz     r3, 0x184(r31)
    bl      moveStart__11TTelesaSlotFv
    lwz     r3, 0x354(r31)
    bl      telesaForceKill__14TTelesaManagerFv
branch_0x800be820:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800be8ec
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xf
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800be86c
    li      r4, 0x0
    b       branch_0x800be870

branch_0x800be86c:
    lwz     r4, 0x24(r3)
branch_0x800be870:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800be880
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800be880:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800be8a4
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800be8a4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800be8c8
    li      r4, 0x0
    b       branch_0x800be8cc

branch_0x800be8c8:
    lwz     r4, 0x3c(r3)
branch_0x800be8cc:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x184(r31)
    li      r4, 0x1
    bl      forceStopSlot__11TTelesaSlotFi
branch_0x800be8ec:
    lwz     r3, 0x184(r31)
    bl      isRollDrum__11TTelesaSlotFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800be990
    lbz     r0, 0x18c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800be990
    li      r0, 0x0
    stb     r0, 0x18c(r31)
    lbz     r0, -0x6a40(r13)
    extsb.  r0, r0
    bne-    branch_0x800be950
    subi    r3, r13, 0x6a3c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x7aac
    lis     r4, 0x800c
    stw     r0, -0x6a3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b58
    subi    r4, r4, 0x1944
    subi    r3, r13, 0x6a3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a40(r13)
branch_0x800be950:
    subi    r5, r13, 0x6a3c
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800be988
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800be988
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x800be988:
    li      r0, 0x1
    b       branch_0x800be994

branch_0x800be990:
    li      r0, 0x0
branch_0x800be994:
    clrlwi. r0, r0, 24
    beq-    branch_0x800be9a4
    li      r3, 0x1
    b       branch_0x800be9b8

branch_0x800be9a4:
    lfs     f1, 0x364(r31)
    li      r3, 0x0
    lfs     f0, -0x610c(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x364(r31)
branch_0x800be9b8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __dt__25TNerveBossTelesaSlotStartFv
__dt__25TNerveBossTelesaSlotStartFv: # 0x800be9cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bea10
    lis     r3, 0x803b
    addi    r0, r3, 0x7abc
    stw     r0, 0x0(r31)
    beq-    branch_0x800bea00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800bea00:
    extsh.  r0, r4
    ble-    branch_0x800bea10
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bea10:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveBossTelesaAppearCFP24TSpineBase_10TLiveActor_
execute__22TNerveBossTelesaAppearCFP24TSpineBase_10TLiveActor_: # 0x800bea28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800beb6c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800beb6c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r4, 0x0
    stw     r4, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bea98
    b       branch_0x800bea9c

branch_0x800bea98:
    lwz     r4, 0x24(r3)
branch_0x800bea9c:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800beaac
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800beaac:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bead0
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bead0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800beaf4
    li      r4, 0x0
    b       branch_0x800beaf8

branch_0x800beaf4:
    lwz     r4, 0x0(r3)
branch_0x800beaf8:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lbz     r0, 0x384(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800beb20
    li      r0, 0x1
    lis     r3, 0x8001
    stb     r0, 0x384(r31)
    addi    r3, r3, 0xd
    bl      startBGM__5MSBgmFUl
branch_0x800beb20:
    lwz     r3, 0x184(r31)
    lfs     f0, -0x612c(rtoc)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x184(r31)
    bl      randomReset__11TTelesaSlotFv
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x170(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    b       branch_0x800bec40

branch_0x800beb6c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bec40
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800bec40
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xf
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bebcc
    li      r4, 0x0
    b       branch_0x800bebd0

branch_0x800bebcc:
    lwz     r4, 0x24(r3)
branch_0x800bebd0:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bebe0
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bebe0:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bec04
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bec04:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bec28
    li      r4, 0x0
    b       branch_0x800bec2c

branch_0x800bec28:
    lwz     r4, 0x3c(r3)
branch_0x800bec2c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
branch_0x800bec40:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800becb0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6108(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800becb0
    lwz     r3, -0x7108(r13)
    li      r4, 0x22
    lfs     f1, -0x612c(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, -0x6044(r13)
    li      r4, 0x292a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800becb0
    addi    r4, r31, 0x10
    li      r3, 0x292a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800becb0:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x320
    ble-    branch_0x800bedc8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800becf4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800becf8

branch_0x800becf4:
    li      r0, 0x1
branch_0x800becf8:
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r0, 24
    lwz     r4, -0x7e1c(r13)
    subf    r0, r3, r0
    lwz     r5, 0x20(r30)
    mulli   r0, r0, 0x64
    add     r3, r4, r0
    divw    r0, r5, r3
    mullw   r0, r0, r3
    subf    r0, r0, r5
    cmpwi   r0, 0x1
    bne-    branch_0x800bedc8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xe
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bed60
    li      r4, 0x0
    b       branch_0x800bed64

branch_0x800bed60:
    lwz     r4, 0x24(r3)
branch_0x800bed64:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bed74
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bed74:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bed98
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bed98:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bedbc
    li      r4, 0x0
    b       branch_0x800bedc0

branch_0x800bedbc:
    lwz     r4, 0x38(r3)
branch_0x800bedc0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800bedc8:
    lfs     f1, 0x364(r31)
    li      r3, 0x0
    lfs     f0, -0x6104(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x364(r31)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl __dt__22TNerveBossTelesaAppearFv
__dt__22TNerveBossTelesaAppearFv: # 0x800bedf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bee38
    lis     r3, 0x803b
    addi    r0, r3, 0x7acc
    stw     r0, 0x0(r31)
    beq-    branch_0x800bee28
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800bee28:
    extsh.  r0, r4
    ble-    branch_0x800bee38
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bee38:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveBossTelesaHideWaitCFP24TSpineBase_10TLiveActor_
execute__24TNerveBossTelesaHideWaitCFP24TSpineBase_10TLiveActor_: # 0x800bee50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800bef68
    lwz     r4, 0xf0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    ori     r4, r4, 0x2
    stw     r4, 0xf0(r31)
    stb     r0, 0x350(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800beec4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800beec8

branch_0x800beec4:
    li      r0, 0x1
branch_0x800beec8:
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r0, 24
    lbz     r4, -0x7e28(r13)
    subf    r0, r3, r0
    mulli   r0, r0, 0x1e
    add     r0, r4, r0
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xfe
    ble-    branch_0x800beef4
    li      r0, 0xfe
    b       branch_0x800bef00

branch_0x800beef4:
    cmplwi  r0, 0x0
    bge-    branch_0x800bef00
    li      r0, 0x0
branch_0x800bef00:
    stb     r0, 0x34f(r31)
    li      r4, 0x2
    lwz     r3, 0x184(r31)
    lfs     f0, -0x6130(rtoc)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x74(r31)
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x5
    lha     r30, 0x8(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    xoris   r0, r30, 0x8000
    lfd     f1, -0x6120(rtoc)
    stw     r0, 0x6c(sp)
    lis     r0, 0x4330
    stw     r0, 0x68(sp)
    lfd     f0, 0x68(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    b       branch_0x800bf034

branch_0x800bef68:
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x38
    lwz     r0, 0x14(r31)
    lwz     r4, -0x60b4(r13)
    stw     r5, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x40(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x190
    ble-    branch_0x800bf034
    lwz     r3, 0x174(r31)
    lbz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800bf034
    lbz     r0, -0x6a50(r13)
    extsb.  r0, r0
    bne-    branch_0x800befec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a4c(r13)
    addi    r0, r3, 0x7acc
    lis     r4, 0x800c
    stw     r0, -0x6a4c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b40
    subi    r4, r4, 0x120c
    subi    r3, r13, 0x6a4c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a50(r13)
branch_0x800befec:
    subi    r4, r13, 0x6a4c
    cmplwi  r4, 0x0
    beq-    branch_0x800bf020
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800bf020
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800bf020:
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    b       branch_0x800bf038

branch_0x800bf034:
    li      r3, 0x0
branch_0x800bf038:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl execute__20TNerveBossTelesaHideCFP24TSpineBase_10TLiveActor_
execute__20TNerveBossTelesaHideCFP24TSpineBase_10TLiveActor_: # 0x800bf050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    lwz     r5, 0x0(r4)
    li      r4, 0x4
    lwz     r3, 0x74(r5)
    mr      r31, r5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800bf130
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0x4
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bf0bc
    li      r4, 0x0
    b       branch_0x800bf0c0

branch_0x800bf0bc:
    lwz     r4, 0x24(r3)
branch_0x800bf0c0:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf0d0
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bf0d0:
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf0f4
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bf0f4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bf118
    li      r4, 0x0
    b       branch_0x800bf11c

branch_0x800bf118:
    lwz     r4, 0x10(r3)
branch_0x800bf11c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
branch_0x800bf130:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bf20c
    lwz     r0, 0x64(r31)
    li      r4, 0x14
    li      r5, 0xf
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    li      r6, 0x0
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x170(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiiPf
    mr      r3, r31
    bl      rouletteStart__11TBossTelesaFv
    lbz     r0, -0x6a58(r13)
    extsb.  r0, r0
    bne-    branch_0x800bf1d0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a54(r13)
    addi    r0, r3, 0x7adc
    lis     r4, 0x800c
    stw     r0, -0x6a54(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b34
    subi    r4, r4, 0x251c
    subi    r3, r13, 0x6a54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a58(r13)
branch_0x800bf1d0:
    subi    r4, r13, 0x6a54
    cmplwi  r4, 0x0
    beq-    branch_0x800bf204
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800bf204
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800bf204:
    li      r3, 0x1
    b       branch_0x800bf210

branch_0x800bf20c:
    li      r3, 0x0
branch_0x800bf210:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl execute__20TNerveBossTelesaSpitCFP24TSpineBase_10TLiveActor_
execute__20TNerveBossTelesaSpitCFP24TSpineBase_10TLiveActor_: # 0x800bf228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x800bf25c
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800bf300
branch_0x800bf25c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xe
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bf294
    li      r4, 0x0
    b       branch_0x800bf298

branch_0x800bf294:
    lwz     r4, 0x24(r3)
branch_0x800bf298:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf2a8
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bf2a8:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf2cc
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bf2cc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bf2f0
    li      r4, 0x0
    b       branch_0x800bf2f4

branch_0x800bf2f0:
    lwz     r4, 0x38(r3)
branch_0x800bf2f4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800bf324

branch_0x800bf300:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6108(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800bf324
    mr      r3, r31
    bl      genAttacker__11TBossTelesaFv
branch_0x800bf324:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bf340
    li      r3, 0x1
    b       branch_0x800bf344

branch_0x800bf340:
    li      r3, 0x0
branch_0x800bf344:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__20TNerveBossTelesaSpitFv
__dt__20TNerveBossTelesaSpitFv: # 0x800bf358
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bf39c
    lis     r3, 0x803b
    addi    r0, r3, 0x7afc
    stw     r0, 0x0(r31)
    beq-    branch_0x800bf38c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800bf38c:
    extsh.  r0, r4
    ble-    branch_0x800bf39c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bf39c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveBossTelesaDieCFP24TSpineBase_10TLiveActor_
execute__19TNerveBossTelesaDieCFP24TSpineBase_10TLiveActor_: # 0x800bf3b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stw     r31, 0x124(sp)
    stw     r30, 0x120(sp)
    mr      r30, r4
    stw     r29, 0x11c(sp)
    stw     r28, 0x118(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800bf6e0
    li      r0, 0x0
    stw     r0, 0x388(r31)
    lbz     r0, 0x350(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800bf40c
    lbz     r3, 0x13c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf40c
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r31)
branch_0x800bf40c:
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x170(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800bf5d0
    lbz     r0, 0x350(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800bf510
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0x2
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bf494
    li      r4, 0x0
    b       branch_0x800bf498

branch_0x800bf494:
    lwz     r4, 0x24(r3)
branch_0x800bf498:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf4a8
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bf4a8:
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf4cc
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bf4cc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bf4f0
    li      r4, 0x0
    b       branch_0x800bf4f4

branch_0x800bf4f0:
    lwz     r4, 0x8(r3)
branch_0x800bf4f4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, -0x7108(r13)
    li      r4, 0x1f
    lfs     f1, -0x612c(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    b       branch_0x800bf6e0

branch_0x800bf510:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0x5
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bf548
    li      r4, 0x0
    b       branch_0x800bf54c

branch_0x800bf548:
    lwz     r4, 0x24(r3)
branch_0x800bf54c:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf55c
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bf55c:
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf580
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bf580:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bf5a4
    li      r4, 0x0
    b       branch_0x800bf5a8

branch_0x800bf5a4:
    lwz     r4, 0x14(r3)
branch_0x800bf5a8:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, -0x7108(r13)
    li      r4, 0x20
    lfs     f1, -0x612c(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    b       branch_0x800bf6e0

branch_0x800bf5d0:
    lis     r3, 0x8001
    addi    r3, r3, 0xd
    li      r4, 0xa
    bl      stopBGM__5MSBgmFUlUl
    lwz     r3, -0x7108(r13)
    li      r4, 0x21
    lfs     f1, -0x612c(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0x3
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bf628
    li      r4, 0x0
    b       branch_0x800bf62c

branch_0x800bf628:
    lwz     r4, 0x24(r3)
branch_0x800bf62c:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf63c
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bf63c:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf660
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bf660:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bf684
    li      r4, 0x0
    b       branch_0x800bf688

branch_0x800bf684:
    lwz     r4, 0xc(r3)
branch_0x800bf688:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x184(r31)
    li      r4, 0x28db
    lfs     f0, -0x6130(rtoc)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800bf6e0
    addi    r4, r31, 0x10
    li      r3, 0x28db
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800bf6e0:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800bf8d4
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bfc58
    lwz     r0, 0x388(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800bf828
    lwz     r3, 0x74(r31)
    addi    r5, r31, 0x374
    li      r4, 0xdc
    lwz     r3, 0x4(r3)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x30
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x374(r31)
    stfs    f1, 0x378(r31)
    stfs    f2, 0x37c(r31)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x380(r31)
    cmpwi   r0, 0xd8
    bne-    branch_0x800bf774
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x374
    li      r4, 0xdd
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800bf7b0

branch_0x800bf774:
    cmpwi   r0, 0xd9
    bne-    branch_0x800bf798
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x374
    li      r4, 0xde
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800bf7b0

branch_0x800bf798:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x374
    li      r4, 0xdf
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800bf7b0:
    mr      r3, r31
    bl      forceAllItemKill__11TBossTelesaFv
    lfs     f0, -0x6130(rtoc)
    li      r28, 0x0
    lwz     r3, 0x178(r31)
    mr      r29, r28
    stfs    f0, 0x144(r3)
    lwz     r3, 0x184(r31)
    stfs    f0, 0x1e4(r3)
    lwz     r3, 0x17c(r31)
    stfs    f0, 0x144(r3)
    lwz     r3, 0x184(r31)
    stfs    f0, 0x1e8(r3)
    lwz     r3, 0x180(r31)
    stfs    f0, 0x144(r3)
    lwz     r3, 0x184(r31)
    stfs    f0, 0x1ec(r3)
branch_0x800bf7f4:
    addi    r0, r29, 0x178
    lwz     r4, 0x184(r31)
    lwzx    r3, r31, r0
    addi    r0, r29, 0x1e4
    lfsx    f1, r4, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    cmpwi   r28, 0x3
    addi    r29, r29, 0x4
    blt+    branch_0x800bf7f4
branch_0x800bf828:
    lwz     r3, 0x388(r31)
    cmpwi   r3, 0xf0
    ble-    branch_0x800bf8c8
    li      r29, 0x0
    stw     r29, 0x388(r31)
    lis     r3, 0x8038
    lis     r5, 0x8038
    subi    r4, r3, 0x1288
    lwz     r3, -0x62b0(r13)
    lfs     f1, 0x10(r31)
    subi    r5, r5, 0x1274
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x170(r31)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    li      r3, 0x1
    b       branch_0x800bfc5c

branch_0x800bf8c8:
    addi    r0, r3, 0x1
    stw     r0, 0x388(r31)
    b       branch_0x800bfc58

branch_0x800bf8d4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bfc58
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bf9ac
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0x7
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bf940
    li      r4, 0x0
    b       branch_0x800bf944

branch_0x800bf940:
    lwz     r4, 0x24(r3)
branch_0x800bf944:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf954
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bf954:
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bf978
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bf978:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bf99c
    li      r4, 0x0
    b       branch_0x800bf9a0

branch_0x800bf99c:
    lwz     r4, 0x1c(r3)
branch_0x800bf9a0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800bfc58

branch_0x800bf9ac:
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bfa64
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0x6
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bf9f8
    li      r4, 0x0
    b       branch_0x800bf9fc

branch_0x800bf9f8:
    lwz     r4, 0x24(r3)
branch_0x800bf9fc:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bfa0c
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bfa0c:
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bfa30
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bfa30:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bfa54
    li      r4, 0x0
    b       branch_0x800bfa58

branch_0x800bfa54:
    lwz     r4, 0x18(r3)
branch_0x800bfa58:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800bfc58

branch_0x800bfa64:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800bfc48
    lwz     r0, 0x64(r31)
    li      r4, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x170(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r31)
    li      r0, 0xf
    stw     r0, 0x160(r31)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800bfaec
    li      r4, 0x0
    b       branch_0x800bfaf0

branch_0x800bfaec:
    lwz     r4, 0x24(r3)
branch_0x800bfaf0:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800bfb00
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800bfb00:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800bfb24
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800bfb24:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800bfb48
    li      r4, 0x0
    b       branch_0x800bfb4c

branch_0x800bfb48:
    lwz     r4, 0x3c(r3)
branch_0x800bfb4c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
    li      r0, 0x0
    stw     r0, 0x8(r30)
    lbz     r0, -0x6a38(r13)
    extsb.  r0, r0
    bne-    branch_0x800bfbac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a34(r13)
    addi    r0, r3, 0x7a9c
    lis     r4, 0x800c
    stw     r0, -0x6a34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b64
    subi    r4, r4, 0x1bf0
    subi    r3, r13, 0x6a34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a38(r13)
branch_0x800bfbac:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x6a34
    cmplwi  r0, 0x0
    beq-    branch_0x800bfbc0
    stw     r0, 0x1c(r30)
branch_0x800bfbc0:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lbz     r0, -0x6a38(r13)
    extsb.  r0, r0
    bne-    branch_0x800bfc10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a34(r13)
    addi    r0, r3, 0x7a9c
    lis     r4, 0x800c
    stw     r0, -0x6a34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b64
    subi    r4, r4, 0x1bf0
    subi    r3, r13, 0x6a34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a38(r13)
branch_0x800bfc10:
    subi    r4, r13, 0x6a34
    cmplwi  r4, 0x0
    beq-    branch_0x800bfc50
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800bfc50
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
    b       branch_0x800bfc50

branch_0x800bfc48:
    mr      r3, r31
    bl      damageRecover__11TBossTelesaFv
branch_0x800bfc50:
    li      r3, 0x1
    b       branch_0x800bfc5c

branch_0x800bfc58:
    li      r3, 0x0
branch_0x800bfc5c:
    lwz     r0, 0x12c(sp)
    lwz     r31, 0x124(sp)
    lwz     r30, 0x120(sp)
    mtlr    r0
    lwz     r29, 0x11c(sp)
    lwz     r28, 0x118(sp)
    addi    sp, sp, 0x128
    blr


.globl __dt__19TNerveBossTelesaDieFv
__dt__19TNerveBossTelesaDieFv: # 0x800bfc7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800bfcc0
    lis     r3, 0x803b
    addi    r0, r3, 0x7b0c
    stw     r0, 0x0(r31)
    beq-    branch_0x800bfcb0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800bfcb0:
    extsh.  r0, r4
    ble-    branch_0x800bfcc0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800bfcc0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl forceHide__11TBossTelesaFv
forceHide__11TBossTelesaFv: # 0x800bfcd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6a70(r13)
    extsb.  r0, r0
    bne-    branch_0x800bfd30
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a6c(r13)
    addi    r0, r3, 0x7b0c
    lis     r4, 0x800c
    stw     r0, -0x6a6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b10
    subi    r4, r4, 0x384
    subi    r3, r13, 0x6a6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a70(r13)
branch_0x800bfd30:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6a6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800bfe60
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800bfe60
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800bfe60
    mr      r3, r31
    bl      forceAllItemKill__11TBossTelesaFv
    li      r0, 0x0
    stw     r0, 0x368(r31)
    lbz     r0, 0x350(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800bfdbc
    lwz     r3, -0x6044(r13)
    li      r4, 0x2968
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800bfdec
    addi    r4, r31, 0x10
    li      r3, 0x2968
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800bfdec

branch_0x800bfdbc:
    lwz     r3, -0x6044(r13)
    li      r4, 0x28d5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800bfdec
    addi    r4, r31, 0x10
    li      r3, 0x28d5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800bfdec:
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6a60(r13)
    extsb.  r0, r0
    bne-    branch_0x800bfe3c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a5c(r13)
    addi    r0, r3, 0x7aec
    lis     r4, 0x800c
    stw     r0, -0x6a5c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b28
    subi    r4, r4, 0x1c4c
    subi    r3, r13, 0x6a5c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a60(r13)
branch_0x800bfe3c:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6a5c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800bfe54
    stw     r0, 0x1c(r4)
branch_0x800bfe54:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x800bfe60:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl forceAllItemKill__11TBossTelesaFv
forceAllItemKill__11TBossTelesaFv: # 0x800bfe74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    li      r29, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    lfs     f31, -0x6130(rtoc)
    b       branch_0x800bff38

branch_0x800bfea8:
    addi    r30, r31, 0x1ac
    add     r30, r28, r30
    lwz     r3, 0x0(r30)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800bfed4
    li      r4, 0x8
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r3, 0x0(r30)
    li      r0, 0x0
    stw     r0, 0x68(r3)
branch_0x800bfed4:
    lwz     r3, 0x0(r30)
    stfsu   f31, 0x10(r3)
    stfs    f31, 0x4(r3)
    stfs    f31, 0x8(r3)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r30)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800bff30
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r30)
    li      r4, 0xcd
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x10
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800bff30:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x800bff38:
    lwz     r0, 0x274(r28)
    cmpw    r29, r0
    blt+    branch_0x800bfea8
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl generateSlotItem__11TBossTelesaFv
generateSlotItem__11TBossTelesaFv: # 0x800bff68
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x2c0(sp)
    stfd    f31, 0x2b8(sp)
    stfd    f30, 0x2b0(sp)
    stfd    f29, 0x2a8(sp)
    stfd    f28, 0x2a0(sp)
    stfd    f27, 0x298(sp)
    stfd    f26, 0x290(sp)
    stfd    f25, 0x288(sp)
    stfd    f24, 0x280(sp)
    stfd    f23, 0x278(sp)
    stfd    f22, 0x270(sp)
    stfd    f21, 0x268(sp)
    stfd    f20, 0x260(sp)
    stfd    f19, 0x258(sp)
    stfd    f18, 0x250(sp)
    stfd    f17, 0x248(sp)
    stfd    f16, 0x240(sp)
    stmw    r21, 0x214(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x368(r3)
    stw     r0, 0x274(r3)
    lwz     r23, 0x184(r3)
    lwz     r4, 0x13c(r23)
    mr      r3, r23
    lfs     f1, 0x0(r4)
    bl      getResultFromAng__11TTelesaSlotFf
    addi    r24, r3, 0x0
    li      r22, 0x1
    li      r21, 0x4
branch_0x800bffe8:
    lwz     r4, 0x13c(r23)
    mr      r3, r23
    lfsx    f1, r4, r21
    bl      getResultFromAng__11TTelesaSlotFf
    cmpw    r24, r3
    beq-    branch_0x800c0008
    li      r24, -0x1
    b       branch_0x800c0018

branch_0x800c0008:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    addi    r21, r21, 0x4
    blt+    branch_0x800bffe8
branch_0x800c0018:
    stw     r24, 0x1a8(r31)
    lis     r0, 0x4330
    lwz     r5, 0x15c(r31)
    lwz     r3, 0x74(r31)
    lwz     r7, 0x180(r5)
    lwz     r4, 0x4(r3)
    xoris   r3, r7, 0x8000
    lwz     r6, 0x1a8(r31)
    stw     r3, 0x20c(sp)
    lwz     r4, 0x58(r4)
    cmpwi   r6, 0x2
    stw     r0, 0x208(sp)
    addi    r28, r4, 0xf0
    lfd     f2, -0x6120(rtoc)
    lfd     f0, 0x208(sp)
    mr      r25, r28
    stw     r3, 0x204(sp)
    fsubs   f1, f0, f2
    lfs     f3, -0x6100(rtoc)
    stw     r0, 0x200(sp)
    lfs     f0, -0x6128(rtoc)
    fdivs   f16, f3, f1
    lfd     f1, 0x200(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f16, f1
    fmuls   f31, f1, f0
    bne-    branch_0x800c04d0
    lwz     r25, 0x194(r5)
    cmpwi   r25, 0x14
    ble-    branch_0x800c0094
    li      r25, 0x14
branch_0x800c0094:
    li      r0, 0x0
    stw     r0, 0x1e8(sp)
    stw     r25, 0x1ec(sp)
    lwz     r3, 0x1e8(sp)
    lwz     r0, 0x1ec(sp)
    subf    r21, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f19, -0x6120(rtoc)
    stw     r0, 0x204(sp)
    xoris   r0, r21, 0x8000
    lis     r30, 0x4330
    lfs     f20, -0x60fc(rtoc)
    stw     r30, 0x200(sp)
    lwz     r3, 0x1e8(sp)
    xoris   r29, r25, 0x8000
    stw     r0, 0x20c(sp)
    li      r23, 0x0
    lfd     f0, 0x200(sp)
    stw     r30, 0x208(sp)
    li      r21, 0x0
    fsubs   f1, f0, f19
    lfs     f27, -0x6114(rtoc)
    lfd     f0, 0x208(sp)
    lfs     f21, -0x60f8(rtoc)
    fmuls   f1, f20, f1
    fsubs   f0, f0, f19
    lfs     f22, -0x6130(rtoc)
    lfs     f23, -0x60f4(rtoc)
    lfs     f30, -0x60f0(rtoc)
    fmuls   f0, f0, f1
    lfs     f29, -0x60ec(rtoc)
    lfs     f28, -0x60e8(rtoc)
    fctiwz  f0, f0
    lfs     f26, -0x60e4(rtoc)
    lfs     f25, -0x60e0(rtoc)
    lfs     f24, -0x60dc(rtoc)
    stfd    f0, 0x1f8(sp)
    lwz     r0, 0x1fc(sp)
    add     r24, r3, r0
    b       branch_0x800c04c4

branch_0x800c0138:
    add     r27, r31, r21
    addi    r26, r27, 0x2a8
    lwz     r3, 0x2a8(r27)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c04bc
    stw     r29, 0x1fc(sp)
    xoris   r0, r24, 0x8000
    addi    r3, sp, 0x1ac
    stw     r30, 0x1f8(sp)
    lfd     f0, 0x1f8(sp)
    stfs    f22, 0x1dc(sp)
    fsubs   f0, f0, f19
    stfs    f22, 0x1e0(sp)
    fdivs   f4, f21, f0
    stfs    f23, 0x1e4(sp)
    stw     r0, 0x204(sp)
    lfs     f0, 0x34(r31)
    stw     r30, 0x200(sp)
    lfd     f2, 0x200(sp)
    fsubs   f0, f0, f31
    lfs     f1, 0x30(r31)
    fsubs   f2, f2, f19
    lfs     f3, 0x38(r31)
    fmadds  f2, f4, f2, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    cmpwi   r25, 0x0
    add     r0, r24, r23
    bgt-    branch_0x800c01bc
    li      r0, 0x0
    b       branch_0x800c01d4


.incbin "./baserom/code/Text_0x80005600.bin", 0xbabb4, 0x800c01b8 - 0x800c01b4
branch_0x800c01b8:
    subf    r0, r25, r0
branch_0x800c01bc:
    cmpw    r0, r25
    bge+    branch_0x800c01b8
    b       branch_0x800c01cc

branch_0x800c01c8:
    add     r0, r0, r25
branch_0x800c01cc:
    cmpwi   r0, 0x0
    blt+    branch_0x800c01c8
branch_0x800c01d4:
    addi    r4, sp, 0x1dc
    mr      r24, r0
    addi    r5, r4, 0x0
    addi    r3, sp, 0x1ac
    bl      PSMTXMultVec
    addi    r3, sp, 0x1dc
    addi    r4, sp, 0x1a0
    bl      MsVECNormalize__FP3VecP3Vec
    stfs    f30, 0x198(sp)
    cmpwi   r23, 0x0
    stfs    f29, 0x19c(sp)
    beq-    branch_0x800c020c
    cmpwi   r23, 0x4
    bne-    branch_0x800c038c
branch_0x800c020c:
    addi    r26, r27, 0x2f8
    lwz     r3, 0x2f8(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r26)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lfs     f1, 0x19c(sp)
    lfs     f0, 0x198(sp)
    fsubs   f18, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x198(sp)
    stw     r0, 0x1fc(sp)
    lfs     f0, 0x19c(sp)
    stw     r30, 0x1f8(sp)
    lfs     f1, 0x1a8(sp)
    fsubs   f17, f0, f2
    lfd     f0, 0x1f8(sp)
    fsubs   f0, f0, f19
    fmuls   f0, f20, f0
    fmuls   f0, f18, f0
    fadds   f0, f2, f0
    fmuls   f18, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x198(sp)
    stw     r0, 0x204(sp)
    cmpwi   r23, 0x0
    lfs     f2, 0x1a0(sp)
    stw     r30, 0x200(sp)
    lwz     r3, 0x0(r26)
    lfd     f0, 0x200(sp)
    fsubs   f0, f0, f19
    fmuls   f0, f20, f0
    fmuls   f0, f17, f0
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xac(r3)
    stfs    f28, 0xb0(r3)
    stfs    f18, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
    bne-    branch_0x800c0364
    lfs     f1, 0x19c(sp)
    lfs     f0, 0x198(sp)
    fsubs   f17, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x198(sp)
    stw     r0, 0x1fc(sp)
    lfs     f0, 0x19c(sp)
    stw     r30, 0x1f8(sp)
    lfs     f1, 0x1a8(sp)
    fsubs   f16, f0, f2
    lfd     f0, 0x1f8(sp)
    fsubs   f0, f0, f19
    fmuls   f0, f20, f0
    fmuls   f0, f17, f0
    fadds   f0, f2, f0
    fmuls   f0, f1, f0
    fmuls   f18, f27, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x198(sp)
    stw     r0, 0x204(sp)
    lfs     f2, 0x1a0(sp)
    stw     r30, 0x200(sp)
    lwz     r3, 0x0(r26)
    lfd     f0, 0x200(sp)
    fsubs   f0, f0, f19
    fmuls   f0, f20, f0
    fmuls   f0, f16, f0
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    fmuls   f0, f27, f0
    stfs    f0, 0xac(r3)
    stfs    f28, 0xb0(r3)
    stfs    f18, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
branch_0x800c0364:
    lwz     r3, 0x0(r26)
    stfsu   f22, 0x30(r3)
    stfs    f26, 0x4(r3)
    stfs    f22, 0x8(r3)
    lwz     r0, 0x274(r31)
    lwz     r4, 0x0(r26)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1ac
    stwx    r4, r31, r0
    b       branch_0x800c0454

branch_0x800c038c:
    lwz     r3, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r26)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lfs     f1, 0x19c(sp)
    lfs     f0, 0x198(sp)
    fsubs   f16, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x198(sp)
    stw     r0, 0x1fc(sp)
    lfs     f0, 0x19c(sp)
    stw     r30, 0x1f8(sp)
    lfs     f1, 0x1a8(sp)
    fsubs   f17, f0, f2
    lfd     f0, 0x1f8(sp)
    fsubs   f0, f0, f19
    fmuls   f0, f20, f0
    fmuls   f0, f16, f0
    fadds   f0, f2, f0
    fmuls   f18, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x198(sp)
    stw     r0, 0x204(sp)
    lfs     f2, 0x1a0(sp)
    stw     r30, 0x200(sp)
    lwz     r3, 0x0(r26)
    lfd     f0, 0x200(sp)
    fsubs   f0, f0, f19
    fmuls   f0, f20, f0
    fmuls   f0, f17, f0
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xac(r3)
    stfs    f28, 0xb0(r3)
    stfs    f18, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
    lwz     r0, 0x274(r31)
    lwz     r4, 0x0(r26)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1ac
    stwx    r4, r31, r0
branch_0x800c0454:
    lwz     r3, 0x1ac(r27)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x1ac(r27)
    stfsu   f25, 0x24(r3)
    stfs    f25, 0x4(r3)
    stfs    f25, 0x8(r3)
    lwz     r0, 0x274(r31)
    lfs     f1, 0xc(r28)
    lfs     f0, 0x1dc(sp)
    slwi    r3, r0, 2
    lfs     f2, 0x1c(r28)
    addi    r0, r3, 0x1ac
    fadds   f0, f1, f0
    fsubs   f3, f2, f24
    lwzx    r3, r31, r0
    lfs     f2, 0x2c(r28)
    lfs     f1, 0x1e4(sp)
    stfsu   f0, 0x10(r3)
    fadds   f0, f2, f1
    stfs    f3, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x274(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x274(r31)
branch_0x800c04bc:
    addi    r23, r23, 0x1
    addi    r21, r21, 0x4
branch_0x800c04c4:
    cmpw    r23, r25
    blt+    branch_0x800c0138
    b       branch_0x800c0a68

branch_0x800c04d0:
    cmpwi   r6, 0x0
    bne-    branch_0x800c0730
    lwz     r26, 0x194(r5)
    cmpwi   r26, 0xa
    ble-    branch_0x800c04e8
    li      r26, 0xa
branch_0x800c04e8:
    xoris   r4, r26, 0x8000
    lbz     r3, 0x370(r31)
    stw     r4, 0x1fc(sp)
    lis     r0, 0x4330
    lfd     f2, -0x6120(rtoc)
    cmplwi  r3, 0x0
    stw     r0, 0x1f8(sp)
    lfs     f3, -0x6100(rtoc)
    lfd     f0, 0x1f8(sp)
    stw     r4, 0x204(sp)
    fsubs   f1, f0, f2
    lfs     f0, -0x6128(rtoc)
    stw     r0, 0x200(sp)
    fdivs   f16, f3, f1
    lfd     f1, 0x200(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f16, f1
    fmuls   f17, f1, f0
    beq-    branch_0x800c0540
    subi    r0, r3, 0x1
    stb     r0, 0x370(r31)
    b       branch_0x800c0548

branch_0x800c0540:
    li      r0, 0x0
    stb     r0, 0x370(r31)
branch_0x800c0548:
    lfs     f30, -0x6130(rtoc)
    li      r23, 0x0
    lfs     f29, -0x60d8(rtoc)
    li      r21, 0x0
    lfd     f28, -0x6120(rtoc)
    lfs     f27, -0x60d4(rtoc)
    lis     r30, 0x4330
    lfs     f26, -0x60d0(rtoc)
    lis     r29, 0x2000
    lfs     f25, -0x60ec(rtoc)
    lfs     f24, -0x60fc(rtoc)
    b       branch_0x800c0724

branch_0x800c0578:
    cmpwi   r23, 0xa
    bge-    branch_0x800c0a68
    stfs    f30, 0x18c(sp)
    xoris   r0, r23, 0x8000
    addi    r3, sp, 0x15c
    stfs    f30, 0x190(sp)
    stfs    f29, 0x194(sp)
    stw     r0, 0x1fc(sp)
    lfs     f0, 0x34(r31)
    stw     r30, 0x1f8(sp)
    fsubs   f0, f0, f17
    lfs     f1, 0x30(r31)
    lfd     f2, 0x1f8(sp)
    lfs     f3, 0x38(r31)
    fsubs   f2, f2, f28
    fmadds  f2, f16, f2, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x18c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x15c
    bl      PSMTXMultVec
    addi    r3, sp, 0x18c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    stfs    f27, 0x154(sp)
    stfs    f26, 0x158(sp)
    stfs    f25, 0x190(sp)
    lfs     f1, 0x158(sp)
    lfs     f0, 0x154(sp)
    lwz     r3, 0x15c(r31)
    fsubs   f19, f1, f0
    lfs     f18, 0x158(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x154(sp)
    stw     r0, 0x204(sp)
    lfs     f1, 0x18c(sp)
    stw     r30, 0x200(sp)
    lfd     f0, 0x200(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f24, f0
    fmuls   f0, f19, f0
    fadds   f0, f2, f0
    fmuls   f0, f18, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x18c(sp)
    lfs     f0, 0x158(sp)
    fsubs   f19, f0, f2
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x154(sp)
    stw     r0, 0x20c(sp)
    addi    r4, r29, 0xe
    lfs     f2, 0x194(sp)
    stw     r30, 0x208(sp)
    lfd     f0, 0x208(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f24, f0
    fmuls   f0, f19, f0
    fadds   f0, f1, f0
    fmuls   f0, f18, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x194(sp)
    lwz     r3, -0x62b0(r13)
    bl      makeObjAppeared__18TMapObjBaseManagerFUl
    lfs     f1, 0x1c(r28)
    li      r4, 0x3c0
    lfs     f2, 0x2c(r28)
    lfs     f0, 0xc(r28)
    fsubs   f1, f1, f29
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    lfs     f2, 0x194(sp)
    lfs     f1, 0x190(sp)
    lfs     f0, 0x18c(sp)
    stfs    f0, 0xac(r3)
    stfs    f1, 0xb0(r3)
    stfs    f2, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
    stfs    f30, 0x30(r3)
    stfs    f30, 0x34(r3)
    stfs    f30, 0x38(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1dc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x274(r31)
    addi    r3, r21, 0x320
    lwzx    r4, r31, r3
    addi    r23, r23, 0x1
    slwi    r3, r0, 2
    addi    r0, r3, 0x1ac
    stwx    r4, r31, r0
    addi    r21, r21, 0x4
    lwz     r0, 0x274(r31)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1ac
    lwzx    r3, r31, r0
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r3, 0x274(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x274(r31)
branch_0x800c0724:
    cmpw    r23, r26
    blt+    branch_0x800c0578
    b       branch_0x800c0a68

branch_0x800c0730:
    cmpwi   r6, 0x1
    addi    r23, r7, 0x0
    li      r24, 0x0
    beq-    branch_0x800c0768
    bge-    branch_0x800c0750
    cmpwi   r6, -0x1
    beq-    branch_0x800c075c
    b       branch_0x800c0780

branch_0x800c0750:
    cmpwi   r6, 0x3
    beq-    branch_0x800c0780
    b       branch_0x800c0780

branch_0x800c075c:
    slwi    r23, r23, 1
    li      r24, 0x0
    b       branch_0x800c0780

branch_0x800c0768:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x2
    ble-    branch_0x800c077c
    li      r24, 0x1
    b       branch_0x800c0780

branch_0x800c077c:
    li      r24, 0x2
branch_0x800c0780:
    lbz     r0, 0x13c(r31)
    li      r3, 0x1
    li      r26, 0x7
    cmplwi  r0, 0x1
    bne-    branch_0x800c079c
    li      r3, 0x1
    li      r26, 0x8
branch_0x800c079c:
    stw     r3, 0x14c(sp)
    stw     r26, 0x150(sp)
    lwz     r3, 0x14c(sp)
    lwz     r0, 0x150(sp)
    subf    r21, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f24, -0x6120(rtoc)
    stw     r0, 0x1fc(sp)
    lis     r29, 0x4330
    xoris   r0, r21, 0x8000
    lfs     f25, -0x60fc(rtoc)
    stw     r29, 0x1f8(sp)
    lis     r3, 0x803b
    lwz     r4, 0x14c(sp)
    stw     r0, 0x204(sp)
    addi    r30, r3, 0x79b4
    lfd     f0, 0x1f8(sp)
    li      r22, 0x0
    stw     r29, 0x200(sp)
    fsubs   f1, f0, f24
    lfs     f26, -0x6130(rtoc)
    lfd     f0, 0x200(sp)
    lfs     f27, -0x60f4(rtoc)
    fmuls   f1, f25, f1
    fsubs   f0, f0, f24
    lfs     f28, -0x6114(rtoc)
    lfs     f29, -0x6128(rtoc)
    lfs     f30, -0x612c(rtoc)
    fmuls   f0, f0, f1
    lfs     f19, -0x60d8(rtoc)
    lfs     f18, -0x60ec(rtoc)
    fctiwz  f0, f0
    stfd    f0, 0x208(sp)
    lwz     r0, 0x20c(sp)
    add     r27, r4, r0
    b       branch_0x800c0a60

branch_0x800c0830:
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x800c0864
    srawi   r0, r22, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc.  r0, r0, r22
    bne-    branch_0x800c0854
    addi    r27, r27, 0x1
branch_0x800c0854:
    cmpw    r27, r26
    ble-    branch_0x800c0860
    li      r27, 0x1
branch_0x800c0860:
    mr      r24, r27
branch_0x800c0864:
    slwi    r0, r24, 2
    lwz     r3, -0x70b0(r13)
    add     r4, r30, r0
    lwz     r5, 0x0(r4)
    addi    r4, r31, 0x10
    li      r6, 0x2
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r21, r3
    beq-    branch_0x800c0a5c
    cmpwi   r24, 0x0
    beq-    branch_0x800c08ac
    lwz     r0, 0x274(r31)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1ac
    stwx    r21, r31, r0
    lwz     r3, 0x274(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x274(r31)
branch_0x800c08ac:
    stfs    f26, 0x140(sp)
    xoris   r0, r22, 0x8000
    addi    r3, sp, 0x110
    stfs    f26, 0x144(sp)
    stfs    f27, 0x148(sp)
    stw     r0, 0x1fc(sp)
    lfs     f0, 0x34(r31)
    stw     r29, 0x1f8(sp)
    fsubs   f0, f0, f31
    lfs     f1, 0x30(r31)
    lfd     f2, 0x1f8(sp)
    lfs     f3, 0x38(r31)
    fsubs   f2, f2, f24
    fmadds  f2, f16, f2, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x140
    addi    r5, r4, 0x0
    addi    r3, sp, 0x110
    bl      PSMTXMultVec
    addi    r3, sp, 0x140
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    stfs    f28, 0x144(sp)
    lwz     r3, 0x15c(r31)
    lfs     f17, 0x158(r3)
    stfs    f29, 0x108(sp)
    stfs    f30, 0x10c(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0x108(sp)
    fsubs   f20, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x108(sp)
    stw     r0, 0x204(sp)
    lfs     f1, 0x140(sp)
    stw     r29, 0x200(sp)
    lfd     f0, 0x200(sp)
    fsubs   f0, f0, f24
    fmuls   f0, f25, f0
    fmuls   f0, f20, f0
    fadds   f0, f2, f0
    fmuls   f0, f17, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x140(sp)
    lfs     f0, 0x10c(sp)
    fsubs   f20, f0, f2
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x108(sp)
    stw     r0, 0x20c(sp)
    lfs     f1, 0x144(sp)
    stw     r29, 0x208(sp)
    lfd     f0, 0x208(sp)
    fsubs   f0, f0, f24
    fmuls   f0, f25, f0
    fmuls   f0, f20, f0
    fadds   f0, f2, f0
    fadds   f0, f28, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x144(sp)
    lfs     f0, 0x10c(sp)
    fsubs   f20, f0, f2
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x108(sp)
    stw     r0, 0x1f4(sp)
    mr      r3, r25
    lfs     f2, 0x148(sp)
    stw     r29, 0x1f0(sp)
    lfd     f0, 0x1f0(sp)
    fsubs   f0, f0, f24
    fmuls   f0, f25, f0
    fmuls   f0, f20, f0
    fadds   f0, f1, f0
    fmuls   f0, f17, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x148(sp)
    lfs     f1, 0x1c(r28)
    lfs     f2, 0x2c(r28)
    lfs     f0, 0xc(r28)
    fsubs   f1, f1, f19
    stfs    f0, 0x10(r21)
    stfs    f1, 0x14(r21)
    stfs    f2, 0x18(r21)
    lwz     r4, 0x140(sp)
    lwz     r0, 0x144(sp)
    stw     r4, 0xac(r21)
    stw     r0, 0xb0(r21)
    lwz     r0, 0x148(sp)
    stw     r0, 0xb4(r21)
    lfs     f0, 0x14(r21)
    fadds   f0, f0, f18
    stfs    f0, 0x14(r21)
    lwz     r0, 0xf0(r21)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r21)
    lwz     r4, 0x74(r21)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x74(r21)
    bl      calc__6MActorFv
    mr      r3, r21
    lwz     r12, 0x0(r21)
    mr      r4, r31
    lwz     r12, 0x174(r12)
    mtlr    r12
    blrl
branch_0x800c0a5c:
    addi    r22, r22, 0x1
branch_0x800c0a60:
    cmpw    r22, r23
    blt+    branch_0x800c0830
branch_0x800c0a68:
    lmw     r21, 0x214(sp)
    lwz     r0, 0x2c4(sp)
    lfd     f31, 0x2b8(sp)
    lfd     f30, 0x2b0(sp)
    mtlr    r0
    lfd     f29, 0x2a8(sp)
    lfd     f28, 0x2a0(sp)
    lfd     f27, 0x298(sp)
    lfd     f26, 0x290(sp)
    lfd     f25, 0x288(sp)
    lfd     f24, 0x280(sp)
    lfd     f23, 0x278(sp)
    lfd     f22, 0x270(sp)
    lfd     f21, 0x268(sp)
    lfd     f20, 0x260(sp)
    lfd     f19, 0x258(sp)
    lfd     f18, 0x250(sp)
    lfd     f17, 0x248(sp)
    lfd     f16, 0x240(sp)
    addi    sp, sp, 0x2c0
    blr


.globl rouletteStart__11TBossTelesaFv
rouletteStart__11TBossTelesaFv: # 0x800c0abc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stfd    f28, 0x90(sp)
    stfd    f27, 0x88(sp)
    stfd    f26, 0x80(sp)
    stfd    f25, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    lwz     r3, 0x178(r3)
    lfs     f1, -0x6130(rtoc)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    lwz     r3, 0x17c(r31)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    lwz     r3, 0x180(r31)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    lfs     f1, -0x60cc(rtoc)
    lfs     f0, -0x60c8(rtoc)
    stfs    f1, 0x50(sp)
    stfs    f0, 0x54(sp)
    lfs     f1, -0x60c4(rtoc)
    lfs     f0, -0x612c(rtoc)
    stfs    f1, 0x48(sp)
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x48(sp)
    fsubs   f26, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x6120(rtoc)
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    addi    r3, r31, 0x0
    lfs     f0, -0x60fc(rtoc)
    stw     r0, 0x60(sp)
    lwz     r12, 0x0(r31)
    lfd     f1, 0x60(sp)
    lwz     r12, 0x108(r12)
    fsubs   f2, f1, f2
    lfs     f1, 0x48(sp)
    mtlr    r12
    fmuls   f0, f0, f2
    fmuls   f0, f26, f0
    fadds   f28, f1, f0
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800c0bbc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800c0bc0

branch_0x800c0bbc:
    li      r0, 0x1
branch_0x800c0bc0:
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r0, 24
    lis     r29, 0x4330
    lfd     f29, -0x6120(rtoc)
    subf    r0, r3, r0
    xoris   r0, r0, 0x8000
    lfs     f1, -0x7e20(r13)
    stw     r0, 0x64(sp)
    li      r28, 0x0
    lfs     f30, -0x6130(rtoc)
    li      r30, 0x0
    stw     r29, 0x60(sp)
    lfs     f31, -0x60fc(rtoc)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f29
    fmuls   f26, f1, f0
branch_0x800c0c00:
    fcmpo   cr0, f28, f30
    ble-    branch_0x800c0c24
    cmpwi   r28, 0x0
    lfs     f27, -0x60c4(rtoc)
    beq-    branch_0x800c0c1c
    cmpwi   r28, 0x2
    bne-    branch_0x800c0c3c
branch_0x800c0c1c:
    lfs     f27, -0x612c(rtoc)
    b       branch_0x800c0c3c

branch_0x800c0c24:
    cmpwi   r28, 0x0
    lfs     f27, -0x612c(rtoc)
    beq-    branch_0x800c0c38
    cmpwi   r28, 0x2
    bne-    branch_0x800c0c3c
branch_0x800c0c38:
    lfs     f27, -0x60c4(rtoc)
branch_0x800c0c3c:
    lfs     f1, 0x54(sp)
    lfs     f0, 0x50(sp)
    fsubs   f25, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x50(sp)
    stw     r0, 0x64(sp)
    addi    r0, r30, 0x178
    lwzx    r3, r31, r0
    stw     r29, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f31, f0
    fmuls   f0, f25, f0
    fadds   f0, f1, f0
    fadds   f0, f26, f0
    fmuls   f0, f27, f0
    stfs    f0, 0x144(r3)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x50(sp)
    fsubs   f25, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x50(sp)
    stw     r0, 0x5c(sp)
    addi    r28, r28, 0x1
    addi    r0, r30, 0x1e4
    lwz     r3, 0x184(r31)
    stw     r29, 0x58(sp)
    cmpwi   r28, 0x3
    lfd     f0, 0x58(sp)
    addi    r30, r30, 0x4
    fsubs   f0, f0, f29
    fmuls   f0, f31, f0
    fmuls   f0, f25, f0
    fadds   f0, f1, f0
    fadds   f0, f26, f0
    fmuls   f0, f27, f0
    stfsx   f0, r3, r0
    blt+    branch_0x800c0c00
    li      r29, 0x0
    li      r30, 0x0
branch_0x800c0ce4:
    addi    r0, r30, 0x178
    lwz     r4, 0x184(r31)
    lwzx    r3, r31, r0
    addi    r0, r30, 0x1e4
    lfsx    f1, r4, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x800c0ce4
    lwz     r3, -0x60f0(r13)
    li      r4, 0x14
    li      r5, 0xf
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, -0x7108(r13)
    li      r4, 0x23
    lfs     f1, -0x612c(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lfd     f28, 0x90(sp)
    lfd     f27, 0x88(sp)
    lfd     f26, 0x80(sp)
    lfd     f25, 0x78(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0xb0
    blr


.globl genAttacker__11TBossTelesaFv
genAttacker__11TBossTelesaFv: # 0x800c0d78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stfd    f30, 0x128(sp)
    stfd    f29, 0x120(sp)
    stfd    f28, 0x118(sp)
    stfd    f27, 0x110(sp)
    stfd    f26, 0x108(sp)
    stfd    f25, 0x100(sp)
    stfd    f24, 0xf8(sp)
    stfd    f23, 0xf0(sp)
    stfd    f22, 0xe8(sp)
    stfd    f21, 0xe0(sp)
    stfd    f20, 0xd8(sp)
    stmw    r23, 0xb4(sp)
    mr      r25, r3
    lbz     r0, 0x150(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800c0e00
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    subi    r5, r4, 0x1260
    addi    r4, r25, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800c10a8
    lwz     r12, 0x0(r3)
    mr      r4, r25
    lwz     r12, 0x174(r12)
    mtlr    r12
    blrl
    b       branch_0x800c10a8

branch_0x800c0e00:
    lwz     r4, 0x15c(r25)
    lis     r3, 0x8038
    lis     r30, 0x4330
    lfd     f24, -0x6120(rtoc)
    lwz     r28, 0x144(r4)
    lwz     r5, 0x74(r25)
    subi    r31, r3, 0x1358
    xoris   r0, r28, 0x8000
    lfs     f2, -0x60c0(rtoc)
    stw     r0, 0xac(sp)
    lwz     r4, 0x4(r5)
    li      r27, 0x0
    stw     r30, 0xa8(sp)
    lis     r24, 0x2000
    lwz     r3, 0x58(r4)
    lfd     f0, 0xa8(sp)
    stw     r0, 0xa4(sp)
    addi    r29, r3, 0xf0
    fsubs   f1, f0, f24
    lfs     f0, -0x6128(rtoc)
    stw     r30, 0xa0(sp)
    lfs     f25, -0x6130(rtoc)
    fdivs   f23, f2, f1
    lfd     f1, 0xa0(sp)
    lfs     f26, -0x60bc(rtoc)
    lfs     f27, -0x6114(rtoc)
    lfs     f28, -0x60dc(rtoc)
    fsubs   f1, f1, f24
    lfs     f29, -0x60ec(rtoc)
    lfs     f30, -0x612c(rtoc)
    lfs     f31, -0x60fc(rtoc)
    fmuls   f1, f23, f1
    lfs     f21, -0x60b8(rtoc)
    fmuls   f22, f1, f0
    b       branch_0x800c10a0

branch_0x800c0e8c:
    lwz     r3, -0x70b0(r13)
    addi    r5, r31, 0x0
    addi    r4, r25, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r26, r3
    beq-    branch_0x800c10a8
    stfs    f25, 0x90(sp)
    xoris   r0, r27, 0x8000
    addi    r3, sp, 0x60
    stfs    f25, 0x94(sp)
    stfs    f26, 0x98(sp)
    stw     r0, 0xa4(sp)
    lfs     f0, 0x34(r25)
    stw     r30, 0xa0(sp)
    fsubs   f0, f0, f22
    lfs     f1, 0x30(r25)
    lfd     f2, 0xa0(sp)
    lfs     f3, 0x38(r25)
    fsubs   f2, f2, f24
    fmadds  f2, f23, f2, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x90
    addi    r5, r4, 0x0
    addi    r3, sp, 0x60
    bl      PSMTXMultVec
    addi    r3, sp, 0x90
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    stfs    f27, 0x94(sp)
    lwz     r3, 0x15c(r25)
    lfs     f0, 0x90(sp)
    lfs     f1, 0x158(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
    lfs     f0, 0x98(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x98(sp)
    lfs     f1, 0x1c(r29)
    lfs     f2, 0x2c(r29)
    lfs     f0, 0xc(r29)
    fsubs   f1, f1, f28
    stfs    f0, 0x10(r26)
    stfs    f1, 0x14(r26)
    stfs    f2, 0x18(r26)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0xac(r26)
    stw     r0, 0xb0(r26)
    lwz     r0, 0x98(sp)
    stw     r0, 0xb4(r26)
    lfs     f0, 0x14(r26)
    fadds   f0, f0, f29
    stfs    f0, 0x14(r26)
    lwz     r0, 0xf0(r26)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r26)
    stfs    f25, 0x58(sp)
    stfs    f30, 0x5c(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x58(sp)
    fsubs   f20, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x58(sp)
    stw     r0, 0xac(sp)
    lfs     f0, -0x7e2c(r13)
    stw     r30, 0xa8(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f1, f1, f24
    fmuls   f1, f31, f1
    fmuls   f1, f20, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c1058
    li      r0, 0x0
    stw     r0, 0x198(r26)
    addi    r4, r24, 0x8
    li      r5, 0x1
    lwz     r3, -0x62b0(r13)
    lfs     f1, 0x10(r26)
    lfs     f2, 0x14(r26)
    lfs     f3, 0x18(r26)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r23, r3
    beq-    branch_0x800c109c
    mr      r3, r23
    lwz     r12, 0x0(r23)
    addi    r4, r26, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800c109c
    mr      r3, r23
    lwz     r12, 0x0(r23)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r26)
    lwz     r0, 0x14(r26)
    stw     r3, 0x10(r23)
    stw     r0, 0x14(r23)
    lwz     r0, 0x18(r26)
    stw     r0, 0x18(r23)
    stfs    f25, 0xac(r23)
    stfs    f21, 0xb0(r23)
    stfs    f25, 0xb4(r23)
    lwz     r0, 0xf0(r23)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r23)
    stw     r23, 0x6c(r26)
    stw     r23, 0x198(r26)
    b       branch_0x800c109c

branch_0x800c1058:
    lfs     f0, 0x5c(sp)
    fsubs   f20, f0, f2
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x58(sp)
    stw     r0, 0xa4(sp)
    lfs     f0, -0x7e30(r13)
    stw     r30, 0xa0(sp)
    lfd     f1, 0xa0(sp)
    fsubs   f1, f1, f24
    fmuls   f1, f31, f1
    fmuls   f1, f20, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c109c
    mr      r3, r26
    bl      appendEnemy__7TBubbleFv
branch_0x800c109c:
    addi    r27, r27, 0x1
branch_0x800c10a0:
    cmpw    r27, r28
    blt+    branch_0x800c0e8c
branch_0x800c10a8:
    lmw     r23, 0xb4(sp)
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lfd     f30, 0x128(sp)
    mtlr    r0
    lfd     f29, 0x120(sp)
    lfd     f28, 0x118(sp)
    lfd     f27, 0x110(sp)
    lfd     f26, 0x108(sp)
    lfd     f25, 0x100(sp)
    lfd     f24, 0xf8(sp)
    lfd     f23, 0xf0(sp)
    lfd     f22, 0xe8(sp)
    lfd     f21, 0xe0(sp)
    lfd     f20, 0xd8(sp)
    addi    sp, sp, 0x138
    blr


.globl getBasNameTable__11TBossTelesaCFv
getBasNameTable__11TBossTelesaCFv: # 0x800c10ec
    lis     r3, 0x803b
    addi    r3, r3, 0x7940
    blr


.globl flashItem__11TBossTelesaFi
flashItem__11TBossTelesaFi: # 0x800c10f8
    srawi   r0, r4, 4
    addze   r0, r0
    li      r5, 0x5
    slwi    r0, r0, 4
    mtctr   r5
    subfc   r0, r0, r4
    li      r8, 0x0
    li      r4, 0x0
branch_0x800c1118:
    addi    r5, r4, 0x2a8
    lwzx    r6, r3, r5
    lwz     r5, 0xf0(r6)
    addi    r7, r6, 0xf0
    clrlwi. r5, r5, 31
    bne-    branch_0x800c1160
    lwz     r5, 0x68(r6)
    cmplwi  r5, 0x0
    bne-    branch_0x800c1160
    cmpwi   r0, 0x8
    bge-    branch_0x800c1154
    lwz     r5, 0x0(r7)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r7)
    b       branch_0x800c1160

branch_0x800c1154:
    lwz     r5, 0x0(r7)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r7)
branch_0x800c1160:
    addi    r5, r4, 0x2ac
    lwzx    r6, r3, r5
    addi    r4, r4, 0x4
    lwz     r5, 0xf0(r6)
    addi    r7, r6, 0xf0
    clrlwi. r5, r5, 31
    bne-    branch_0x800c11ac
    lwz     r5, 0x68(r6)
    cmplwi  r5, 0x0
    bne-    branch_0x800c11ac
    cmpwi   r0, 0x8
    bge-    branch_0x800c11a0
    lwz     r5, 0x0(r7)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r7)
    b       branch_0x800c11ac

branch_0x800c11a0:
    lwz     r5, 0x0(r7)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r7)
branch_0x800c11ac:
    addi    r5, r4, 0x2ac
    lwzx    r6, r3, r5
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    lwz     r5, 0xf0(r6)
    addi    r7, r6, 0xf0
    clrlwi. r5, r5, 31
    bne-    branch_0x800c11fc
    lwz     r5, 0x68(r6)
    cmplwi  r5, 0x0
    bne-    branch_0x800c11fc
    cmpwi   r0, 0x8
    bge-    branch_0x800c11f0
    lwz     r5, 0x0(r7)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r7)
    b       branch_0x800c11fc

branch_0x800c11f0:
    lwz     r5, 0x0(r7)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r7)
branch_0x800c11fc:
    addi    r5, r4, 0x2ac
    lwzx    r6, r3, r5
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    lwz     r5, 0xf0(r6)
    addi    r7, r6, 0xf0
    clrlwi. r5, r5, 31
    bne-    branch_0x800c124c
    lwz     r5, 0x68(r6)
    cmplwi  r5, 0x0
    bne-    branch_0x800c124c
    cmpwi   r0, 0x8
    bge-    branch_0x800c1240
    lwz     r5, 0x0(r7)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r7)
    b       branch_0x800c124c

branch_0x800c1240:
    lwz     r5, 0x0(r7)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r7)
branch_0x800c124c:
    addi    r8, r8, 0x1
    addi    r4, r4, 0x4
    bdnz+      branch_0x800c1118
    li      r4, 0x5
    mtctr   r4
    li      r9, 0x0
    li      r4, 0x0
branch_0x800c1268:
    add     r8, r3, r4
    lwz     r6, 0x2f8(r8)
    lwz     r5, 0xf0(r6)
    addi    r7, r6, 0xf0
    clrlwi. r5, r5, 31
    bne-    branch_0x800c12b0
    lwz     r5, 0x68(r6)
    cmplwi  r5, 0x0
    bne-    branch_0x800c12b0
    cmpwi   r0, 0x8
    bge-    branch_0x800c12a4
    lwz     r5, 0x0(r7)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r7)
    b       branch_0x800c12b0

branch_0x800c12a4:
    lwz     r5, 0x0(r7)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r7)
branch_0x800c12b0:
    lwz     r5, 0x320(r8)
    addi    r6, r5, 0xf0
    lwz     r5, 0xf0(r5)
    clrlwi. r5, r5, 31
    bne-    branch_0x800c12e8
    cmpwi   r0, 0x8
    bge-    branch_0x800c12dc
    lwz     r5, 0x0(r6)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r6)
    b       branch_0x800c12e8

branch_0x800c12dc:
    lwz     r5, 0x0(r6)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r6)
branch_0x800c12e8:
    addi    r4, r4, 0x4
    add     r8, r3, r4
    lwz     r6, 0x2f8(r8)
    lwz     r5, 0xf0(r6)
    addi    r7, r6, 0xf0
    clrlwi. r5, r5, 31
    bne-    branch_0x800c1334
    lwz     r5, 0x68(r6)
    cmplwi  r5, 0x0
    bne-    branch_0x800c1334
    cmpwi   r0, 0x8
    bge-    branch_0x800c1328
    lwz     r5, 0x0(r7)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r7)
    b       branch_0x800c1334

branch_0x800c1328:
    lwz     r5, 0x0(r7)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r7)
branch_0x800c1334:
    lwz     r5, 0x320(r8)
    addi    r6, r5, 0xf0
    lwz     r5, 0xf0(r5)
    clrlwi. r5, r5, 31
    bne-    branch_0x800c136c
    cmpwi   r0, 0x8
    bge-    branch_0x800c1360
    lwz     r5, 0x0(r6)
    ori     r5, r5, 0x2
    stw     r5, 0x0(r6)
    b       branch_0x800c136c

branch_0x800c1360:
    lwz     r5, 0x0(r6)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0x0(r6)
branch_0x800c136c:
    addi    r9, r9, 0x1
    addi    r4, r4, 0x4
    bdnz+      branch_0x800c1268
    blr


.globl slotFall__11TBossTelesaFv
slotFall__11TBossTelesaFv: # 0x800c137c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0x178(r3)
    lfs     f0, -0x60ac(rtoc)
    lfs     f1, 0x14(r3)
    lwz     r4, 0x184(r31)
    fsubs   f0, f1, f0
    lfsu    f1, 0x14(r4)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800c13c4
    lfs     f0, -0x60a8(rtoc)
    li      r3, 0x0
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r4)
    b       branch_0x800c14b0

branch_0x800c13c4:
    lfs     f0, -0x612c(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r4)
    lwz     r3, 0x178(r31)
    lwz     r4, 0x184(r31)
    lfs     f1, 0x14(r3)
    lfs     f0, -0x60a4(rtoc)
    lfs     f2, 0x14(r4)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800c1440
    lfs     f1, -0x6130(rtoc)
    li      r4, 0x0
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c1408
    li      r4, 0x1
branch_0x800c1408:
    lwz     r3, 0x17c(r31)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c141c
    addi    r4, r4, 0x1
branch_0x800c141c:
    lwz     r3, 0x180(r31)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c1430
    addi    r4, r4, 0x1
branch_0x800c1430:
    cmpwi   r4, 0x3
    beq-    branch_0x800c1440
    mr      r3, r31
    bl      rouletteStart__11TBossTelesaFv
branch_0x800c1440:
    lwz     r4, 0x178(r31)
    lwz     r3, 0x184(r31)
    lfs     f1, 0x14(r4)
    lfs     f0, -0x60a0(rtoc)
    lfs     f2, 0x14(r3)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800c1468
    li      r3, 0x1
    b       branch_0x800c14b0

branch_0x800c1468:
    lwz     r3, 0x150(r4)
    lfs     f1, -0x609c(rtoc)
    stfs    f1, 0x50(r3)
    lfs     f0, -0x6098(rtoc)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, 0x17c(r31)
    lfs     f1, -0x609c(rtoc)
    lwz     r3, 0x150(r3)
    stfs    f1, 0x50(r3)
    lfs     f0, -0x6098(rtoc)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    li      r3, 0x0
branch_0x800c14b0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl rouletteFall__11TBossTelesaFv
rouletteFall__11TBossTelesaFv: # 0x800c14c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r4, 0x178(r3)
    lwz     r3, 0x17c(r3)
    lfs     f1, 0x14(r4)
    addi    r5, r4, 0x14
    lfs     f0, 0x14(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800c1610
    lfs     f0, -0x6114(rtoc)
    subi    r4, rtoc, 0x60b4
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r5)
    lwz     r3, 0x178(r31)
    lwz     r3, 0x74(r3)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x17c(r31)
    lwz     r4, 0x178(r31)
    lfs     f1, -0x6094(rtoc)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x14(r4)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800c1550
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c159c
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x6c(r31)
    b       branch_0x800c159c

branch_0x800c1550:
    addi    r3, r31, 0x0
    li      r4, 0x8
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c159c
    lwz     r3, -0x6044(r13)
    li      r4, 0x2926
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c1594
    addi    r4, r31, 0x10
    li      r3, 0x2926
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c1594:
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x800c159c:
    lwz     r3, -0x6044(r13)
    li      r4, 0x28dc
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c15cc
    addi    r4, r31, 0x10
    li      r3, 0x28dc
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c15cc:
    lwz     r3, -0x6044(r13)
    li      r4, 0x2125
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c15fc
    addi    r4, r31, 0x10
    li      r3, 0x2125
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c15fc:
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x4fc(r3)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    li      r3, 0x0
    b       branch_0x800c1618

branch_0x800c1610:
    stfs    f0, 0x0(r5)
    li      r3, 0x1
branch_0x800c1618:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl damageRecover__11TBossTelesaFv
damageRecover__11TBossTelesaFv: # 0x800c162c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stmw    r27, 0x5c(sp)
    addi    r30, r3, 0x0
    li      r27, 0x0
    li      r29, 0x0
    lfs     f31, -0x6130(rtoc)
branch_0x800c1650:
    addi    r31, r29, 0x2a8
    add     r31, r30, r31
    lwz     r3, 0x0(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800c16bc
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c167c
    li      r4, 0x8
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800c167c:
    lwz     r3, 0x0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r31)
    li      r4, 0xcd
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x10
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x0(r31)
    stfsu   f31, 0x10(r3)
    stfs    f31, 0x4(r3)
    stfs    f31, 0x8(r3)
branch_0x800c16bc:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x14
    addi    r29, r29, 0x4
    blt+    branch_0x800c1650
    lfs     f31, -0x6130(rtoc)
    li      r31, 0x0
    li      r29, 0x0
branch_0x800c16d8:
    add     r27, r30, r29
    lwz     r3, 0x2f8(r27)
    addi    r28, r27, 0x2f8
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800c1744
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c1704
    li      r4, 0x8
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800c1704:
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r28)
    li      r4, 0xcd
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x10
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x0(r28)
    stfsu   f31, 0x10(r3)
    stfs    f31, 0x4(r3)
    stfs    f31, 0x8(r3)
branch_0x800c1744:
    lwzu    r3, 0x320(r27)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800c1790
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r27)
    li      r4, 0xcd
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x10
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x0(r27)
    stfsu   f31, 0x10(r3)
    stfs    f31, 0x4(r3)
    stfs    f31, 0x8(r3)
branch_0x800c1790:
    addi    r31, r31, 0x1
    cmpwi   r31, 0xa
    addi    r29, r29, 0x4
    blt+    branch_0x800c16d8
    lbz     r0, 0x350(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800c17e0
    lwz     r3, -0x6044(r13)
    li      r4, 0x2968
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c1810
    addi    r4, r30, 0x10
    li      r3, 0x2968
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800c1810

branch_0x800c17e0:
    lwz     r3, -0x6044(r13)
    li      r4, 0x28d5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c1810
    addi    r4, r30, 0x10
    li      r3, 0x28d5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c1810:
    lbz     r0, -0x6a60(r13)
    extsb.  r0, r0
    bne-    branch_0x800c1854
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a5c(r13)
    addi    r0, r3, 0x7aec
    lis     r4, 0x800c
    stw     r0, -0x6a5c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b28
    subi    r4, r4, 0x1c4c
    subi    r3, r13, 0x6a5c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a60(r13)
branch_0x800c1854:
    subi    r5, r13, 0x6a5c
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800c188c
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800c188c
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x800c188c:
    li      r0, 0x0
    stw     r0, 0x368(r30)
    lmw     r27, 0x5c(sp)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl setSpicy__11TBossTelesaFP10TLiveActor
setSpicy__11TBossTelesaFP10TLiveActor: # 0x800c18ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x4c(sp)
    stw     r28, 0x48(sp)
    lbz     r0, -0x6a40(r13)
    extsb.  r0, r0
    bne-    branch_0x800c1914
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a3c(r13)
    addi    r0, r3, 0x7aac
    lis     r4, 0x800c
    stw     r0, -0x6a3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b58
    subi    r4, r4, 0x1944
    subi    r3, r13, 0x6a3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a40(r13)
branch_0x800c1914:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6a3c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800c1a24
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c1a24
    li      r29, 0x1
    stb     r29, 0x350(r30)
    li      r28, 0x0
    li      r4, 0x0
    stw     r28, 0x36c(r30)
    lwz     r3, 0x74(r30)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x164(r30)
    stw     r29, 0x160(r30)
    lfs     f0, -0x612c(rtoc)
    stfs    f0, 0x168(r30)
    lwz     r4, 0x74(r30)
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800c197c
    b       branch_0x800c1980

branch_0x800c197c:
    lwz     r28, 0x24(r3)
branch_0x800c1980:
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800c1994
    mr      r4, r28
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800c1994:
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r30)
    lfs     f1, 0x168(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800c19b8
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800c19b8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800c19dc
    li      r4, 0x0
    b       branch_0x800c19e0

branch_0x800c19dc:
    lwz     r4, 0x4(r3)
branch_0x800c19e0:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
    lbz     r0, 0x35b(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800c1a10
    li      r0, 0x0
    stb     r0, 0x35b(r30)
    li      r4, 0x11
    li      r5, 0x1
    lwz     r3, -0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800c1a10:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800c1a24:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl checkHitObject__11TBossTelesaFP9THitActor
checkHitObject__11TBossTelesaFP9THitActor: # 0x800c1a44
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x380(r3)
    lwz     r0, 0x4c(r4)
    clrrwi  r3, r0, 16
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x0
    bne-    branch_0x800c1cf4
    lbz     r0, -0x6a38(r13)
    extsb.  r0, r0
    bne-    branch_0x800c1ac0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a34(r13)
    addi    r0, r3, 0x7a9c
    lis     r4, 0x800c
    stw     r0, -0x6a34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b64
    subi    r4, r4, 0x1bf0
    subi    r3, r13, 0x6a34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a38(r13)
branch_0x800c1ac0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6a34
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c1cf4
    lis     r3, 0x4000
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x393
    cmpw    r4, r0
    beq-    branch_0x800c1b80
    bge-    branch_0x800c1b00
    addi    r0, r3, 0x390
    cmpw    r4, r0
    beq-    branch_0x800c1b10
    bge-    branch_0x800c1b48
    b       branch_0x800c1cf4

branch_0x800c1b00:
    addi    r0, r3, 0x395
    cmpw    r4, r0
    beq-    branch_0x800c1bbc
    b       branch_0x800c1cf4

branch_0x800c1b10:
    li      r0, 0xe6
    stb     r0, 0x348(r30)
    li      r0, 0x64
    li      r4, 0xb4
    stb     r0, 0x349(r30)
    li      r0, 0xd8
    addi    r3, r30, 0x0
    stb     r4, 0x34a(r30)
    stw     r0, 0x380(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x800c1bbc

branch_0x800c1b48:
    li      r0, 0xe6
    stb     r0, 0x348(r30)
    li      r0, 0xb4
    li      r4, 0x0
    stb     r0, 0x349(r30)
    li      r0, 0xda
    addi    r3, r30, 0x0
    stb     r4, 0x34a(r30)
    stw     r0, 0x380(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x800c1bbc

branch_0x800c1b80:
    li      r0, 0x96
    stb     r0, 0x348(r30)
    li      r0, 0x32
    li      r4, 0xe6
    stb     r0, 0x349(r30)
    li      r0, 0xd9
    addi    r3, r30, 0x0
    stb     r4, 0x34a(r30)
    stw     r0, 0x380(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x800c1bbc


.incbin "./baserom/code/Text_0x80005600.bin", 0xbc5b8, 0x800c1bbc - 0x800c1bb8
branch_0x800c1bbc:
    lbz     r0, 0x350(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800c1c30
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x395
    beq-    branch_0x800c1c30
    lbz     r0, 0x35a(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800c1c00
    li      r0, 0x0
    stb     r0, 0x35a(r30)
    li      r4, 0xf
    li      r5, 0x1
    lwz     r3, -0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800c1c00:
    lwz     r3, 0x35c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x35c(r30)
    lwz     r0, 0x35c(r30)
    cmpwi   r0, 0x2
    ble-    branch_0x800c1c38
    lwz     r3, -0x6048(r13)
    li      r4, 0x10
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    b       branch_0x800c1c38

branch_0x800c1c30:
    li      r0, 0x0
    stw     r0, 0x35c(r30)
branch_0x800c1c38:
    lwz     r3, 0x10(r31)
    addi    r5, r30, 0x374
    lwz     r0, 0x14(r31)
    li      r4, 0xd7
    li      r6, 0x0
    stw     r3, 0x374(r30)
    li      r7, 0x0
    stw     r0, 0x378(r30)
    lwz     r0, 0x18(r31)
    stw     r0, 0x37c(r30)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r4, 0x380(r30)
    cmpwi   r4, 0x0
    blt-    branch_0x800c1c88
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x374
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800c1c88:
    lbz     r0, 0x350(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800c1cb0
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x374
    li      r4, 0xdb
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800c1ce0

branch_0x800c1cb0:
    lwz     r3, -0x6044(r13)
    li      r4, 0x2944
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c1ce0
    addi    r4, r30, 0x10
    li      r3, 0x2944
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c1ce0:
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x800c1cf4:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl receiveMessage__11TBossTelesaFP9THitActorUl
receiveMessage__11TBossTelesaFP9THitActorUl: # 0x800c1d0c
    li      r3, 0x0
    blr


.globl perform__11TBossTelesaFUlPQ26JDrama9TGraphics
perform__11TBossTelesaFUlPQ26JDrama9TGraphics: # 0x800c1d14
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 22, 22
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x800c1dd0
    lwz     r0, 0xf0(r29)
    andi.   r0, r0, 0x5
    bne-    branch_0x800c1dd0
    lbz     r0, -0x6a70(r13)
    extsb.  r0, r0
    bne-    branch_0x800c1d90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a6c(r13)
    addi    r0, r3, 0x7b0c
    lis     r4, 0x800c
    stw     r0, -0x6a6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b10
    subi    r4, r4, 0x384
    subi    r3, r13, 0x6a6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a70(r13)
branch_0x800c1d90:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6a6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c1dd0
    lbz     r0, 0x350(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800c1dd0
    lwz     r3, 0x74(r29)
    bl      offMakeDL__6MActorFv
    lwz     r3, 0x74(r29)
    addi    r5, r31, 0x0
    addi    r4, r29, 0x10
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
branch_0x800c1dd0:
    lwz     r0, 0xf0(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r29)
    mr      r5, r31
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x16c(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x170(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x174(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x184(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800c1e34
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x800c1e34:
    lwz     r3, 0x188(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800c1e4c
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x800c1e4c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl calcRootMatrix__11TBossTelesaFv
calcRootMatrix__11TBossTelesaFv: # 0x800c1e68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2a8(sp)
    stfd    f31, 0x2a0(sp)
    stfd    f30, 0x298(sp)
    stfd    f29, 0x290(sp)
    stw     r31, 0x28c(sp)
    mr      r31, r3
    stw     r30, 0x288(sp)
    lwz     r4, 0x74(r3)
    lwz     r3, 0x24(r3)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r31)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r4)
    lfs     f2, 0x364(r31)
    lfs     f0, -0x6130(rtoc)
    lwz     r3, 0x15c(r31)
    fcmpo   cr0, f2, f0
    lfs     f29, 0x18(r31)
    lfs     f3, 0x1d0(r3)
    lfs     f1, -0x7e24(r13)
    ble-    branch_0x800c1ed4
    fmr     f2, f0
    b       branch_0x800c1ee0

branch_0x800c1ed4:
    fcmpo   cr0, f2, f1
    bge-    branch_0x800c1ee0
    fmr     f2, f1
branch_0x800c1ee0:
    lfs     f0, 0x14(r31)
    addi    r3, sp, 0x254
    lfs     f31, 0x10(r31)
    fadds   f0, f0, f3
    fadds   f30, f0, f2
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x260(sp)
    addi    r3, sp, 0x224
    stfs    f30, 0x270(sp)
    stfs    f29, 0x280(sp)
    lfs     f1, 0x30(r31)
    lfs     f2, 0x34(r31)
    lfs     f3, 0x38(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, sp, 0x254
    addi    r5, r3, 0x0
    addi    r4, sp, 0x224
    bl      PSMTXConcat
    lwz     r4, 0x74(r31)
    addi    r3, sp, 0x254
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r5, 0x184(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800c2018
    lwz     r3, 0x30(r31)
    li      r4, 0x4
    lwz     r0, 0x34(r31)
    stw     r3, 0x30(r5)
    stw     r0, 0x34(r5)
    lwz     r0, 0x38(r31)
    stw     r0, 0x38(r5)
    lwz     r3, 0x74(r31)
    lfs     f29, -0x6090(rtoc)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c1fb4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c1fb4
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c1fb4
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c1fdc
branch_0x800c1fb4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    lwz     r5, 0x58(r5)
    addi    r30, r5, 0x30
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c1fe8
    lfs     f29, -0x608c(rtoc)
    b       branch_0x800c1fe8

branch_0x800c1fdc:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r30, 0x58(r3)
branch_0x800c1fe8:
    lfs     f0, 0xc(r30)
    lwz     r3, 0x184(r31)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x1c(r30)
    lfs     f1, 0x364(r31)
    fadds   f0, f0, f29
    lwz     r3, 0x184(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f0, 0x2c(r30)
    lwz     r3, 0x184(r31)
    stfs    f0, 0x18(r3)
branch_0x800c2018:
    li      r30, 0x0
    b       branch_0x800c2064

branch_0x800c2020:
    addi    r3, sp, 0x1e4
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    lwz     r3, 0x74(r31)
    clrlslwi  r0, r30, 16, 2
    li      r4, 0x1
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r0
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x1e4
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    addi    r30, r30, 0x1
branch_0x800c2064:
    lwz     r3, 0x74(r31)
    clrlwi  r4, r30, 16
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x800c2020
    lfs     f0, -0x6130(rtoc)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x374
    stfs    f0, 0x374(r31)
    li      r4, 0x1a5
    li      r6, 0x1
    stfs    f0, 0x378(r31)
    stfs    f0, 0x37c(r31)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x374
    li      r4, 0x1a6
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x74(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x374
    lwz     r3, 0x4(r3)
    li      r4, 0x1a7
    li      r6, 0x1
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x30
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x374(r31)
    stfs    f1, 0x378(r31)
    stfs    f2, 0x37c(r31)
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c21d0
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c21d0
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c21d0
    lwz     r3, 0x74(r31)
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c21d0
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800c21d0
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x19e
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0xf0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x19f
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0xf0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x1a0
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x1e0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800c21d0:
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c2224
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x6088(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c2224
    lwz     r5, 0x74(r31)
    li      r4, 0xe0
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0xf0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800c2224:
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c231c
    lwz     r3, -0x6044(r13)
    li      r4, 0x20fe
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c2268
    addi    r4, r31, 0x10
    li      r3, 0x20fe
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c2268:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x1a1
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x1a2
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x1b0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x1a3
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x1b0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x1a4
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x1b0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x1f0
    lwz     r5, 0x4(r5)
    li      r6, 0x3
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x1b0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800c231c:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c23b8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6108(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800c23b8
    lbz     r0, -0x6a40(r13)
    extsb.  r0, r0
    bne-    branch_0x800c2390
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a3c(r13)
    addi    r0, r3, 0x7aac
    lis     r4, 0x800c
    stw     r0, -0x6a3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b58
    subi    r4, r4, 0x1944
    subi    r3, r13, 0x6a3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a40(r13)
branch_0x800c2390:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6a3c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c23b0
    mr      r3, r31
    bl      generateSlotItem__11TBossTelesaFv
    b       branch_0x800c23b8

branch_0x800c23b0:
    mr      r3, r31
    bl      genAttacker__11TBossTelesaFv
branch_0x800c23b8:
    lwz     r0, 0x2ac(sp)
    lfd     f31, 0x2a0(sp)
    lfd     f30, 0x298(sp)
    mtlr    r0
    lfd     f29, 0x290(sp)
    lwz     r31, 0x28c(sp)
    lwz     r30, 0x288(sp)
    addi    sp, sp, 0x2a8
    blr


.globl getTakingMtx__11TBossTelesaFv
getTakingMtx__11TBossTelesaFv: # 0x800c23dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    addi    r31, r30, 0x278
    lwz     r4, 0x178(r3)
    addi    r3, r31, 0x0
    lwz     r4, 0x74(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    addi    r4, r4, 0x30
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r4, 0x178(r30)
    mr      r3, r31
    lfs     f0, -0x6100(rtoc)
    lfs     f1, 0x14(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x294(r30)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl kill__11TBossTelesaFv
kill__11TBossTelesaFv: # 0x800c2444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6a70(r13)
    extsb.  r0, r0
    bne-    branch_0x800c249c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a6c(r13)
    addi    r0, r3, 0x7b0c
    lis     r4, 0x800c
    stw     r0, -0x6a6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b10
    subi    r4, r4, 0x384
    subi    r3, r13, 0x6a6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a70(r13)
branch_0x800c249c:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6a6c
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800c2548
    lbz     r0, -0x6a70(r13)
    extsb.  r0, r0
    bne-    branch_0x800c24f0
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6a6c(r13)
    addi    r0, r4, 0x7b0c
    lis     r4, 0x800c
    stw     r0, -0x6a6c(r13)
    lis     r5, 0x803f
    subi    r4, r4, 0x384
    addi    r5, r5, 0x1b10
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a70(r13)
branch_0x800c24f0:
    subi    r6, r13, 0x6a6c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800c2548
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c253c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c253c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c253c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c2548:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl moveObject__11TBossTelesaFv
moveObject__11TBossTelesaFv: # 0x800c255c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1d0(sp)
    stfd    f31, 0x1c8(sp)
    stw     r31, 0x1c4(sp)
    mr      r31, r3
    stw     r30, 0x1c0(sp)
    stw     r29, 0x1bc(sp)
    stw     r28, 0x1b8(sp)
    lwz     r0, 0xf0(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0x1af8
    clrlwi. r0, r0, 31
    bne-    branch_0x800c2e1c
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0x17c
    addi    r4, r4, 0x124
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lwz     r6, -0x60b4(r13)
    addi    r3, sp, 0xec
    addi    r4, sp, 0x17c
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xf4(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xec(sp)
    lwz     r3, 0xf0(sp)
    stw     r0, 0x1ac(sp)
    lwz     r0, 0xf4(sp)
    stw     r3, 0x1b0(sp)
    lfs     f0, -0x6130(rtoc)
    stw     r0, 0x1b4(sp)
    lfs     f1, 0x1b0(sp)
    lfs     f3, 0x1b4(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x1ac(sp)
    fmuls   f3, f3, f3
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800c2614
    b       branch_0x800c2638

branch_0x800c2614:
    frsqrte f3, f4
    lfs     f2, -0x6128(rtoc)
    lfs     f0, -0x6094(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800c2638:
    lfs     f0, -0x7e18(r13)
    fcmpo   cr0, f4, f0
    bge-    branch_0x800c2678
    lwz     r4, -0x60b4(r13)
    lwz     r3, -0x7118(r13)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x14c(r3)
    lfs     f2, -0x7e14(r13)
    fsubs   f1, f1, f0
    lfs     f0, 0x360(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x360(r31)
    lfs     f0, 0x360(r31)
    lwz     r3, -0x7118(r13)
    stfs    f0, 0x290(r3)
    b       branch_0x800c26a4

branch_0x800c2678:
    lfs     f1, 0x360(r31)
    lfs     f0, -0x612c(rtoc)
    fabs    f2, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x800c26a4
    lfs     f0, -0x7e14(r13)
    fmuls   f0, f1, f0
    stfs    f0, 0x360(r31)
    lfs     f0, 0x360(r31)
    lwz     r3, -0x7118(r13)
    stfs    f0, 0x290(r3)
branch_0x800c26a4:
    lwz     r3, -0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x800c26bc
    li      r0, 0x1
    b       branch_0x800c26c0

branch_0x800c26bc:
    li      r0, 0x0
branch_0x800c26c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c26f8
    lwz     r3, -0x6044(r13)
    li      r4, 0x28d4
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c26f8
    addi    r4, r31, 0x10
    li      r3, 0x28d4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c26f8:
    lbz     r0, -0x6a28(r13)
    extsb.  r0, r0
    bne-    branch_0x800c2738
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a24(r13)
    addi    r0, r3, 0x79d8
    lis     r3, 0x800c
    stw     r0, -0x6a24(r13)
    subi    r4, r3, 0x2764
    subi    r3, r13, 0x6a24
    addi    r5, r30, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a28(r13)
branch_0x800c2738:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6a24
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c279c
    lwz     r3, 0x17c(r31)
    lwz     r5, 0x178(r31)
    lfs     f1, -0x60a8(rtoc)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x14(r5)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800c279c
    lwz     r4, 0x184(r31)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r5)
    stw     r0, 0x18(r4)
    lwz     r3, 0x184(r31)
    lfs     f0, -0x6118(rtoc)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
branch_0x800c279c:
    lbz     r0, -0x6a38(r13)
    extsb.  r0, r0
    bne-    branch_0x800c27dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a34(r13)
    addi    r0, r3, 0x7a9c
    lis     r3, 0x800c
    stw     r0, -0x6a34(r13)
    subi    r4, r3, 0x1bf0
    subi    r3, r13, 0x6a34
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a38(r13)
branch_0x800c27dc:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6a34
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800c2814
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lfs     f1, -0x6130(rtoc)
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6130(rtoc)
    stfs    f0, 0x10(r3)
branch_0x800c2814:
    lbz     r0, -0x6a70(r13)
    extsb.  r0, r0
    bne-    branch_0x800c2854
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a6c(r13)
    addi    r0, r3, 0x7b0c
    lis     r3, 0x800c
    stw     r0, -0x6a6c(r13)
    subi    r4, r3, 0x384
    subi    r3, r13, 0x6a6c
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a70(r13)
branch_0x800c2854:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6a6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c2950
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800c28a0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800c28a4

branch_0x800c28a0:
    li      r0, 0x1
branch_0x800c28a4:
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r0, 24
    lbz     r4, -0x7e28(r13)
    subf    r0, r3, r0
    mulli   r0, r0, 0x1e
    add     r0, r4, r0
    clrlwi  r30, r0, 24
    cmplwi  r30, 0xfe
    ble-    branch_0x800c28d0
    li      r30, 0xfe
    b       branch_0x800c28dc

branch_0x800c28d0:
    cmplwi  r30, 0x0
    bge-    branch_0x800c28dc
    li      r30, 0x0
branch_0x800c28dc:
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c290c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x60dc(rtoc)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x800c2920
branch_0x800c290c:
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c293c
branch_0x800c2920:
    lbz     r3, 0x34f(r31)
    clrlwi  r0, r30, 24
    cmplw   r3, r0
    ble-    branch_0x800c2950
    subi    r0, r3, 0x1
    stb     r0, 0x34f(r31)
    b       branch_0x800c2950

branch_0x800c293c:
    lbz     r3, 0x34f(r31)
    cmplwi  r3, 0xff
    bge-    branch_0x800c2950
    addi    r0, r3, 0x1
    stb     r0, 0x34f(r31)
branch_0x800c2950:
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0x164
    li      r28, 0x0
    addi    r4, r4, 0x124
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lwz     r6, -0x60b4(r13)
    addi    r3, sp, 0xd0
    addi    r4, sp, 0x164
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xd8(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xd0(sp)
    lwz     r3, 0xd4(sp)
    stw     r0, 0x19c(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0x1a0(sp)
    stw     r0, 0x1a4(sp)
    lwz     r4, 0x178(r31)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x19c(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x18(r4)
    stw     r0, 0x1a4(r31)
    lfs     f2, -0x6084(rtoc)
    lfs     f1, 0x19c(sp)
    lfs     f0, 0x19c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x19c(r31)
    lfs     f1, 0x1a4(sp)
    lfs     f0, 0x1a4(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1a4(r31)
    lwz     r3, 0x178(r31)
    lfs     f1, -0x6130(rtoc)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c29fc
    li      r28, 0x1
branch_0x800c29fc:
    lwz     r3, 0x17c(r31)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c2a10
    addi    r28, r28, 0x1
branch_0x800c2a10:
    lwz     r3, 0x180(r31)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c2a24
    addi    r28, r28, 0x1
branch_0x800c2a24:
    cmpwi   r28, 0x2
    beq-    branch_0x800c2a7c
    bge-    branch_0x800c2a3c
    cmpwi   r28, 0x1
    bge-    branch_0x800c2a48
    b       branch_0x800c2ae0

branch_0x800c2a3c:
    cmpwi   r28, 0x4
    bge-    branch_0x800c2ae0
    b       branch_0x800c2ab0

branch_0x800c2a48:
    lwz     r3, -0x6044(r13)
    li      r4, 0x30b7
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c2ae0
    addi    r4, r31, 0x19c
    li      r3, 0x30b7
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800c2ae0

branch_0x800c2a7c:
    lwz     r3, -0x6044(r13)
    li      r4, 0x30b6
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c2ae0
    addi    r4, r31, 0x19c
    li      r3, 0x30b6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800c2ae0

branch_0x800c2ab0:
    lwz     r3, -0x6044(r13)
    li      r4, 0x30b5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c2ae0
    addi    r4, r31, 0x19c
    li      r3, 0x30b5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c2ae0:
    lfs     f0, -0x6130(rtoc)
    mr      r3, r31
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x800c2b5c

branch_0x800c2b1c:
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800c2b3c
    li      r0, 0x1
    b       branch_0x800c2b40

branch_0x800c2b3c:
    li      r0, 0x0
branch_0x800c2b40:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c2b54
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800c2b54:
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x800c2b5c:
    lhz     r0, 0x48(r31)
    cmpw    r28, r0
    blt+    branch_0x800c2b1c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x10(r31)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, -0x6118(rtoc)
    lfs     f0, 0xc8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f2, 0x168(r31)
    lfs     f1, -0x60cc(rtoc)
    lfs     f0, -0x612c(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800c2bdc
    fmr     f1, f0
    b       branch_0x800c2bec

branch_0x800c2bdc:
    lfs     f0, -0x6130(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c2bec
    fmr     f1, f0
branch_0x800c2bec:
    stfs    f1, 0x168(r31)
    lwz     r3, 0x74(r31)
    lfs     f1, 0x168(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800c2c08
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800c2c08:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800c2c6c
    lwz     r4, 0x16c(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    lwz     r4, 0x170(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    lwz     r4, 0x174(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    b       branch_0x800c2cfc

branch_0x800c2c6c:
    lwz     r4, 0x74(r31)
    lwz     r3, 0x16c(r31)
    lwz     r4, 0x4(r4)
    addi    r5, r3, 0x10
    lfs     f1, -0x60f4(rtoc)
    lwz     r3, 0x58(r4)
    lfs     f2, 0x4c(r3)
    addi    r4, r3, 0x30
    lfs     f3, 0x5c(r3)
    lfs     f0, 0x3c(r3)
    fsubs   f1, f2, f1
    stfs    f0, 0x0(r5)
    stfs    f1, 0x4(r5)
    stfs    f3, 0x8(r5)
    lfs     f1, 0x14(r31)
    lfs     f2, -0x6080(rtoc)
    lwz     r3, 0x174(r31)
    lfs     f3, 0x2c(r4)
    fsubs   f1, f1, f2
    lfs     f0, 0xc(r4)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f3, 0x8(r3)
    lwz     r4, 0x74(r31)
    lwz     r3, 0x170(r31)
    lwz     r4, 0x4(r4)
    addi    r5, r3, 0x10
    lwz     r3, 0x58(r4)
    addi    r3, r3, 0x150
    lfs     f1, 0x1c(r3)
    lfs     f3, 0x2c(r3)
    lfs     f0, 0xc(r3)
    fsubs   f1, f1, f2
    stfs    f0, 0x0(r5)
    stfs    f1, 0x4(r5)
    stfs    f3, 0x8(r5)
branch_0x800c2cfc:
    lwz     r28, 0x16c(r31)
    li      r29, 0x0
    li      r30, 0x0
    stb     r29, 0x6c(r28)
    b       branch_0x800c2d5c

branch_0x800c2d10:
    lwz     r3, 0x44(r28)
    lwzx    r4, r3, r30
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800c2d30
    li      r0, 0x1
    b       branch_0x800c2d34

branch_0x800c2d30:
    li      r0, 0x0
branch_0x800c2d34:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c2d4c
    addi    r3, r28, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x800c2d54

branch_0x800c2d4c:
    lwz     r3, 0x68(r28)
    bl      checkHitObject__11TBossTelesaFP9THitActor
branch_0x800c2d54:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x800c2d5c:
    lhz     r0, 0x48(r28)
    cmpw    r29, r0
    blt+    branch_0x800c2d10
    lwz     r28, 0x170(r31)
    li      r29, 0x0
    lfs     f31, -0x6098(rtoc)
    li      r30, 0x0
    b       branch_0x800c2e08

branch_0x800c2d7c:
    lwz     r3, 0x44(r28)
    lwzx    r4, r3, r30
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800c2d9c
    li      r0, 0x1
    b       branch_0x800c2da0

branch_0x800c2d9c:
    li      r0, 0x0
branch_0x800c2da0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c2db8
    addi    r3, r28, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x800c2e00

branch_0x800c2db8:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x395
    bne-    branch_0x800c2dcc
    li      r0, 0x1
    b       branch_0x800c2dd0

branch_0x800c2dcc:
    li      r0, 0x0
branch_0x800c2dd0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c2de4
    lwz     r3, 0x68(r28)
    bl      setSpicy__11TBossTelesaFP10TLiveActor
    b       branch_0x800c2e00

branch_0x800c2de4:
    lfs     f1, 0x14(r28)
    lfs     f0, 0x14(r4)
    fadds   f1, f31, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c2e00
    lwz     r3, 0x68(r28)
    bl      checkHitObject__11TBossTelesaFP9THitActor
branch_0x800c2e00:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x800c2e08:
    lhz     r0, 0x48(r28)
    cmpw    r29, r0
    blt+    branch_0x800c2d7c
    lwz     r3, 0x174(r31)
    bl      checkHit__25TBossTelesaKillSmallEnemyFv
branch_0x800c2e1c:
    lwz     r0, 0x1d4(sp)
    lfd     f31, 0x1c8(sp)
    lwz     r31, 0x1c4(sp)
    mtlr    r0
    lwz     r30, 0x1c0(sp)
    lwz     r29, 0x1bc(sp)
    lwz     r28, 0x1b8(sp)
    addi    sp, sp, 0x1d0
    blr


.globl reset__11TBossTelesaFv
reset__11TBossTelesaFv: # 0x800c2e40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    bl      reset__11TSpineEnemyFv
    lwz     r0, 0x64(r31)
    li      r30, 0x0
    lis     r6, 0x4330
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    mr      r3, r31
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    stb     r30, 0x18c(r31)
    lwz     r7, 0x15c(r31)
    lfd     f2, -0x6120(rtoc)
    lwz     r0, 0xe0(r7)
    lwz     r4, 0xf4(r7)
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    xoris   r5, r4, 0x8000
    lwz     r4, 0xb8(r7)
    stw     r5, 0x6c(sp)
    xoris   r5, r4, 0x8000
    lwz     r4, 0xcc(r7)
    stw     r6, 0x50(sp)
    xoris   r0, r4, 0x8000
    stw     r6, 0x68(sp)
    lfd     f0, 0x50(sp)
    stw     r5, 0x64(sp)
    fsubs   f0, f0, f2
    lfd     f1, 0x68(sp)
    stw     r0, 0x5c(sp)
    fsubs   f3, f1, f2
    stw     r6, 0x60(sp)
    lfd     f1, 0x60(sp)
    stfs    f0, 0x50(r31)
    fsubs   f1, f1, f2
    stw     r6, 0x58(sp)
    lfd     f0, 0x58(sp)
    stfs    f3, 0x54(r31)
    fsubs   f0, f0, f2
    stfs    f1, 0x58(r31)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, -0x6048(r13)
    lis     r4, 0x8038
    sth     r30, 0x44(sp)
    addi    r0, sp, 0x44
    subi    r4, r4, 0x124c
    stw     r0, 0x8(sp)
    li      r5, 0x0
    li      r6, -0x1
    lfs     f1, -0x6130(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl loadAfter__11TBossTelesaFv
loadAfter__11TBossTelesaFv: # 0x800c2f68
    mflr    r0
    lis     r4, 0x4000
    stw     r0, 0x4(sp)
    lis     r5, 0x8038
    addi    r4, r4, 0x19a
    stwu    sp, -0x370(sp)
    stfd    f31, 0x368(sp)
    stfd    f30, 0x360(sp)
    stmw    r24, 0x340(sp)
    addi    r31, r3, 0x0
    subi    r30, r5, 0x15c8
    lwz     r3, -0x62b8(r13)
    bl      getObjNumWithActorType__18TMapObjBaseManagerCFUl
    cmplwi  r3, 0x0
    beq-    branch_0x800c3008
    li      r6, 0x0
    li      r7, 0x0
    li      r3, 0x0
    b       branch_0x800c2ff8

branch_0x800c2fb4:
    lwz     r4, 0x18(r4)
    lwzx    r5, r4, r3
    lwz     r4, 0x4c(r5)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x19a
    bne-    branch_0x800c2fd4
    li      r0, 0x1
    b       branch_0x800c2fd8

branch_0x800c2fd4:
    li      r0, 0x0
branch_0x800c2fd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c2ff0
    slwi    r4, r6, 2
    addi    r0, r4, 0x178
    stwx    r5, r31, r0
    addi    r6, r6, 0x1
branch_0x800c2ff0:
    addi    r7, r7, 0x1
    addi    r3, r3, 0x4
branch_0x800c2ff8:
    lwz     r4, -0x62b8(r13)
    lwz     r0, 0x14(r4)
    cmpw    r7, r0
    blt+    branch_0x800c2fb4
branch_0x800c3008:
    lis     r4, 0x4000
    lwz     r3, -0x62b8(r13)
    addi    r4, r4, 0x1a6
    bl      getObjNumWithActorType__18TMapObjBaseManagerCFUl
    cmplwi  r3, 0x0
    beq-    branch_0x800c307c
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x800c306c

branch_0x800c302c:
    lwz     r4, 0x18(r4)
    lwzx    r5, r4, r3
    lwz     r4, 0x4c(r5)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x1a6
    bne-    branch_0x800c304c
    li      r0, 0x1
    b       branch_0x800c3050

branch_0x800c304c:
    li      r0, 0x0
branch_0x800c3050:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c3064
    stw     r5, 0x184(r31)
    lwz     r4, 0x184(r31)
    stw     r31, 0x1a0(r4)
branch_0x800c3064:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
branch_0x800c306c:
    lwz     r4, -0x62b8(r13)
    lwz     r0, 0x14(r4)
    cmpw    r6, r0
    blt+    branch_0x800c302c
branch_0x800c307c:
    lfs     f31, -0x612c(rtoc)
    addi    r27, sp, 0x314
    lfs     f30, -0x6130(rtoc)
    addi    r26, sp, 0x320
    addi    r25, sp, 0x32c
    li      r29, 0x0
    li      r28, 0x0
    li      r24, 0x0
branch_0x800c309c:
    stfs    f31, 0x314(sp)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    stfs    f30, 0x320(sp)
    addi    r6, r27, 0x0
    addi    r3, r30, 0x390
    stfs    f30, 0x32c(sp)
    stfs    f31, 0x318(sp)
    stfs    f30, 0x324(sp)
    stfs    f30, 0x330(sp)
    stfs    f31, 0x31c(sp)
    stfs    f30, 0x328(sp)
    stfs    f30, 0x334(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r24, r24, 0x1
    addi    r0, r28, 0x2a8
    cmpwi   r24, 0x6
    stwx    r3, r31, r0
    addi    r29, r29, 0x1
    addi    r28, r28, 0x4
    blt+    branch_0x800c309c
    lfs     f31, -0x612c(rtoc)
    addi    r25, sp, 0x2f0
    lfs     f30, -0x6130(rtoc)
    addi    r26, sp, 0x2fc
    addi    r27, sp, 0x308
    slwi    r28, r29, 2
    li      r24, 0x0
branch_0x800c310c:
    stfs    f31, 0x2f0(sp)
    addi    r4, r27, 0x0
    addi    r5, r26, 0x0
    stfs    f30, 0x2fc(sp)
    addi    r6, r25, 0x0
    addi    r3, r30, 0x3a0
    stfs    f30, 0x308(sp)
    stfs    f31, 0x2f4(sp)
    stfs    f30, 0x300(sp)
    stfs    f30, 0x30c(sp)
    stfs    f31, 0x2f8(sp)
    stfs    f30, 0x304(sp)
    stfs    f30, 0x310(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r24, r24, 0x1
    addi    r0, r28, 0x2a8
    cmpwi   r24, 0x6
    stwx    r3, r31, r0
    addi    r29, r29, 0x1
    addi    r28, r28, 0x4
    blt+    branch_0x800c310c
    lfs     f31, -0x612c(rtoc)
    addi    r25, sp, 0x2cc
    lfs     f30, -0x6130(rtoc)
    addi    r26, sp, 0x2d8
    addi    r27, sp, 0x2e4
    slwi    r28, r29, 2
    li      r24, 0x0
branch_0x800c317c:
    stfs    f31, 0x2cc(sp)
    addi    r4, r27, 0x0
    addi    r5, r26, 0x0
    stfs    f30, 0x2d8(sp)
    addi    r6, r25, 0x0
    addi    r3, r30, 0x3ac
    stfs    f30, 0x2e4(sp)
    stfs    f31, 0x2d0(sp)
    stfs    f30, 0x2dc(sp)
    stfs    f30, 0x2e8(sp)
    stfs    f31, 0x2d4(sp)
    stfs    f30, 0x2e0(sp)
    stfs    f30, 0x2ec(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r24, r24, 0x1
    addi    r0, r28, 0x2a8
    cmpwi   r24, 0x2
    stwx    r3, r31, r0
    addi    r29, r29, 0x1
    addi    r28, r28, 0x4
    blt+    branch_0x800c317c
    lfs     f31, -0x612c(rtoc)
    addi    r25, sp, 0x2a8
    lfs     f30, -0x6130(rtoc)
    addi    r26, sp, 0x2b4
    addi    r27, sp, 0x2c0
    slwi    r29, r29, 2
    li      r24, 0x0
branch_0x800c31ec:
    stfs    f31, 0x2a8(sp)
    addi    r4, r27, 0x0
    addi    r5, r26, 0x0
    stfs    f30, 0x2b4(sp)
    addi    r6, r25, 0x0
    addi    r3, r30, 0x3b8
    stfs    f30, 0x2c0(sp)
    stfs    f31, 0x2ac(sp)
    stfs    f30, 0x2b8(sp)
    stfs    f30, 0x2c4(sp)
    stfs    f31, 0x2b0(sp)
    stfs    f30, 0x2bc(sp)
    stfs    f30, 0x2c8(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r24, r24, 0x1
    addi    r0, r29, 0x2a8
    cmpwi   r24, 0x6
    stwx    r3, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x800c31ec
    li      r24, 0x0
    li      r29, 0x0
branch_0x800c3244:
    addi    r4, r29, 0x2a8
    add     r4, r31, r4
    lwz     r3, 0x0(r4)
    lwz     r0, 0xf8(r3)
    oris    r0, r0, 0x400
    stw     r0, 0xf8(r3)
    lwz     r3, 0x0(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    cmpwi   r24, 0x14
    addi    r29, r29, 0x4
    blt+    branch_0x800c3244
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x3c4
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x3c4
    mtlr    r12
    blrl
    stw     r3, 0x2f8(r31)
    addi    r3, r30, 0x3d0
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x3d0
    mtlr    r12
    blrl
    stw     r3, 0x2fc(r31)
    addi    r3, r30, 0x3dc
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x3dc
    mtlr    r12
    blrl
    stw     r3, 0x300(r31)
    addi    r3, r30, 0x3e8
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x3e8
    mtlr    r12
    blrl
    stw     r3, 0x304(r31)
    addi    r3, r30, 0x3f4
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x3f4
    mtlr    r12
    blrl
    stw     r3, 0x308(r31)
    addi    r3, r30, 0x400
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x400
    mtlr    r12
    blrl
    stw     r3, 0x30c(r31)
    addi    r3, r30, 0x40c
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x40c
    mtlr    r12
    blrl
    stw     r3, 0x310(r31)
    addi    r3, r30, 0x418
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x418
    mtlr    r12
    blrl
    stw     r3, 0x314(r31)
    addi    r3, r30, 0x424
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x424
    mtlr    r12
    blrl
    stw     r3, 0x318(r31)
    addi    r3, r30, 0x430
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x430
    mtlr    r12
    blrl
    stw     r3, 0x31c(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x800c3468:
    addi    r0, r29, 0x2f8
    lwzx    r3, r31, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    cmpwi   r24, 0xa
    addi    r29, r29, 0x4
    blt+    branch_0x800c3468
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x43c
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x43c
    mtlr    r12
    blrl
    stw     r3, 0x320(r31)
    addi    r3, r30, 0x448
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x448
    mtlr    r12
    blrl
    stw     r3, 0x324(r31)
    addi    r3, r30, 0x454
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x454
    mtlr    r12
    blrl
    stw     r3, 0x328(r31)
    addi    r3, r30, 0x460
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x460
    mtlr    r12
    blrl
    stw     r3, 0x32c(r31)
    addi    r3, r30, 0x46c
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x46c
    mtlr    r12
    blrl
    stw     r3, 0x330(r31)
    addi    r3, r30, 0x478
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x478
    mtlr    r12
    blrl
    stw     r3, 0x334(r31)
    addi    r3, r30, 0x484
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x484
    mtlr    r12
    blrl
    stw     r3, 0x338(r31)
    addi    r3, r30, 0x490
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x490
    mtlr    r12
    blrl
    stw     r3, 0x33c(r31)
    addi    r3, r30, 0x49c
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x49c
    mtlr    r12
    blrl
    stw     r3, 0x340(r31)
    addi    r3, r30, 0x4a8
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x4a8
    mtlr    r12
    blrl
    stw     r3, 0x344(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x800c3678:
    addi    r0, r29, 0x320
    lwzx    r3, r31, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    cmpwi   r24, 0xa
    addi    r29, r29, 0x4
    blt+    branch_0x800c3678
    lfs     f0, -0x6130(rtoc)
    addi    r3, r30, 0x368
    lwz     r4, 0x184(r31)
    stfs    f0, 0x1e4(r4)
    lwz     r4, 0x184(r31)
    stfs    f0, 0x1e8(r4)
    lwz     r4, 0x184(r31)
    stfs    f0, 0x1ec(r4)
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x368
    mtlr    r12
    blrl
    stw     r3, 0x354(r31)
    addi    r25, sp, 0x284
    addi    r26, sp, 0x290
    lfs     f30, -0x612c(rtoc)
    addi    r27, sp, 0x29c
    lfs     f31, -0x6130(rtoc)
    li      r24, 0x0
branch_0x800c3704:
    stfs    f30, 0x284(sp)
    addi    r4, r27, 0x0
    addi    r5, r26, 0x0
    stfs    f31, 0x290(sp)
    addi    r6, r25, 0x0
    addi    r3, r30, 0x4b4
    stfs    f31, 0x29c(sp)
    stfs    f30, 0x288(sp)
    stfs    f31, 0x294(sp)
    stfs    f31, 0x2a0(sp)
    stfs    f30, 0x28c(sp)
    stfs    f31, 0x298(sp)
    stfs    f31, 0x2a4(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r24, r24, 0x1
    cmpwi   r24, 0x5
    blt+    branch_0x800c3704
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xd7
    lbz     r0, 0xd7(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3778
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x4c4
    li      r5, 0xd7
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3778:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xd8
    lbz     r0, 0xd8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c37a8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x4e8
    li      r5, 0xd8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c37a8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xd9
    lbz     r0, 0xd9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c37d8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x510
    li      r5, 0xd9
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c37d8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xda
    lbz     r0, 0xda(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3808
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x538
    li      r5, 0xda
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3808:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xdb
    lbz     r0, 0xdb(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3838
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x560
    li      r5, 0xdb
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3838:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xdc
    lbz     r0, 0xdc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3868
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x588
    li      r5, 0xdc
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3868:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xdd
    lbz     r0, 0xdd(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3898
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x5ac
    li      r5, 0xdd
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3898:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xde
    lbz     r0, 0xde(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c38c8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x5d4
    li      r5, 0xde
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c38c8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xdf
    lbz     r0, 0xdf(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c38f8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x5fc
    li      r5, 0xdf
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c38f8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xe0
    lbz     r0, 0xe0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3928
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x624
    li      r5, 0xe0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3928:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0xe1
    lbz     r0, 0xe1(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3958
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x650
    li      r5, 0xe1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3958:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x19e
    lbz     r0, 0x19e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3988
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x678
    li      r5, 0x19e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3988:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x19f
    lbz     r0, 0x19f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c39b8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6a0
    li      r5, 0x19f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c39b8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a0
    lbz     r0, 0x1a0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c39e8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6c8
    li      r5, 0x1a0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c39e8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a1
    lbz     r0, 0x1a1(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3a18
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x6f0
    li      r5, 0x1a1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3a18:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a2
    lbz     r0, 0x1a2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3a48
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x714
    li      r5, 0x1a2
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3a48:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a3
    lbz     r0, 0x1a3(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3a78
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x73c
    li      r5, 0x1a3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3a78:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a4
    lbz     r0, 0x1a4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3aa8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x764
    li      r5, 0x1a4
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3aa8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a5
    lbz     r0, 0x1a5(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3ad8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x78c
    li      r5, 0x1a5
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3ad8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a6
    lbz     r0, 0x1a6(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3b08
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x7b4
    li      r5, 0x1a6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3b08:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1a7
    lbz     r0, 0x1a7(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3b38
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x7dc
    li      r5, 0x1a7
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3b38:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x1f0
    lbz     r0, 0x1f0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c3b68
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x800
    li      r5, 0x1f0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x800c3b68:
    addi    r3, r30, 0x828
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r24, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800c3b9c
    addi    r3, r24, 0x0
    lis     r4, 0x1022
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800c3b9c:
    addi    r24, r25, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800c3bcc
    lwz     r4, 0x184(r31)
    addi    r3, r25, 0x0
    addi    r6, r24, 0x0
    addi    r8, r30, 0x848
    li      r5, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x800c3bcc:
    stw     r25, 0x188(r31)
    addi    r3, r30, 0x858
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x858
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800c3c10
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
branch_0x800c3c10:
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x864
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x864
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800c3c50
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
branch_0x800c3c50:
    mr      r3, r31
    bl      loadAfter__Q26JDrama8TNameRefFv
    lmw     r24, 0x340(sp)
    lwz     r0, 0x374(sp)
    lfd     f31, 0x368(sp)
    lfd     f30, 0x360(sp)
    mtlr    r0
    addi    sp, sp, 0x370
    blr


.globl init__11TBossTelesaFP12TLiveManager
init__11TBossTelesaFP12TLiveManager: # 0x800c3c74
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x258(sp)
    stw     r31, 0x254(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x250(sp)
    subi    r30, r5, 0x15c8
    stw     r29, 0x24c(sp)
    stw     r28, 0x248(sp)
    stw     r4, 0x70(r3)
    addi    r3, r4, 0x0
    addi    r4, r31, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800c3ccc
    lwz     r4, 0x70(r31)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800c3ccc:
    stw     r29, 0x78(r31)
    addi    r4, r30, 0x244
    li      r5, 0x3
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    mr      r3, r31
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800c3d80
    lfs     f0, 0x2c(r3)
    stfs    f0, 0xbc(r31)
    lfs     f0, 0x40(r3)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x18(r3)
    mr      r3, r31
    stfs    f0, 0xc0(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0xbc(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800c3d78
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800c3d7c

branch_0x800c3d78:
    li      r0, 0x1
branch_0x800c3d7c:
    stb     r0, 0x13c(r31)
branch_0x800c3d80:
    lfs     f2, 0xc0(r31)
    mr      r3, r31
    lfs     f1, 0xbc(r31)
    li      r4, 0x0
    fmr     f4, f2
    fmr     f3, f1
    li      r5, 0x5
    lis     r6, 0x9800
    bl      initHitActor__9THitActorFUlUsiffff
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x6130(rtoc)
    stw     r3, 0x234(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x238(sp)
    stfs    f0, 0x23c(sp)
    stfs    f0, 0x240(sp)
    beq-    branch_0x800c3de4
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x238(sp)
    stfs    f1, 0x23c(sp)
    stfs    f2, 0x240(sp)
branch_0x800c3de4:
    lwz     r4, 0x234(sp)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0xf4(r31)
    lwz     r5, 0x238(sp)
    lwz     r4, 0x23c(sp)
    stw     r5, 0xf8(r31)
    stw     r4, 0xfc(r31)
    lwz     r4, 0x240(sp)
    stw     r4, 0x100(r31)
    lwz     r4, 0x234(sp)
    stw     r4, 0x104(r31)
    lwz     r5, 0x238(sp)
    lwz     r4, 0x23c(sp)
    stw     r5, 0x108(r31)
    stw     r4, 0x10c(r31)
    lwz     r4, 0x240(sp)
    stw     r4, 0x110(r31)
    stw     r0, 0x118(r31)
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lis     r4, 0x800
    stw     r3, 0x15c(r31)
    addi    r0, r4, 0x13
    stw     r0, 0x4c(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0xd000
    stw     r0, 0x64(r31)
    lbz     r0, -0x6a28(r13)
    extsb.  r0, r0
    bne-    branch_0x800c3ea8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a24(r13)
    addi    r0, r3, 0x79d8
    lis     r4, 0x800c
    stw     r0, -0x6a24(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b7c
    subi    r4, r4, 0x2764
    subi    r3, r13, 0x6a24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a28(r13)
branch_0x800c3ea8:
    lwz     r5, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6a24
    stw     r3, 0x8(r5)
    li      r4, 0x1
    stw     r3, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r3, 0x1c(r5)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r3, 0x74(r31)
    li      r0, 0x1
    stb     r0, 0x40(r3)
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800c3f00
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x800c3f00:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8c(r3)
    addi    r29, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x800c3f40
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800c3f30
    mr      r3, r28
    bl      __ct__13J3DSkinDeformFv
branch_0x800c3f30:
    addi    r4, r28, 0x0
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
branch_0x800c3f40:
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
    li      r0, 0xff
    stb     r0, 0x34b(r31)
    li      r29, 0x0
    stb     r0, 0x34a(r31)
    stb     r0, 0x349(r31)
    stb     r0, 0x348(r31)
    lbz     r0, -0x7e28(r13)
    stb     r0, 0x34f(r31)
    stb     r0, 0x34e(r31)
    stb     r0, 0x34d(r31)
    stb     r0, 0x34c(r31)
    b       branch_0x800c3fd8

branch_0x800c3f78:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r30, 0x870
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    cmpw    r29, r3
    bne-    branch_0x800c3fbc
    lwz     r3, 0x74(r31)
    clrlwi  r4, r29, 16
    addi    r6, r31, 0x34c
    lwz     r3, 0x4(r3)
    addi    r8, r31, 0x348
    li      r5, 0x0
    li      r7, 0x1
    bl      SMS_InitPacket_TwoTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor14_GXTevKColorIDPC8_GXColor
    b       branch_0x800c3fd4

branch_0x800c3fbc:
    lwz     r3, 0x74(r31)
    clrlwi  r4, r29, 16
    addi    r6, r31, 0x34c
    lwz     r3, 0x4(r3)
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
branch_0x800c3fd4:
    addi    r29, r29, 0x1
branch_0x800c3fd8:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x24(r3)
    cmpw    r29, r0
    blt+    branch_0x800c3f78
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x800c4074

branch_0x800c4010:
    lwz     r4, 0x18(r4)
    lwzx    r4, r4, r3
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x19a
    bne-    branch_0x800c4030
    li      r0, 0x1
    b       branch_0x800c4034

branch_0x800c4030:
    li      r0, 0x0
branch_0x800c4034:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c406c
    li      r0, 0x0
    stw     r0, 0x154(r31)
    stw     r0, 0x158(r31)
    lwz     r4, -0x62b8(r13)
    lwz     r4, 0x18(r4)
    lwzx    r5, r4, r3
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r5)
    stw     r0, 0x18(r31)
branch_0x800c406c:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
branch_0x800c4074:
    lwz     r4, -0x62b8(r13)
    lwz     r0, 0x14(r4)
    cmpw    r6, r0
    blt+    branch_0x800c4010
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800c40b8
    lwz     r5, 0x74(r31)
    li      r6, 0x0
    b       branch_0x800c40a0

branch_0x800c409c:
    addi    r6, r6, 0x1
branch_0x800c40a0:
    lwz     r3, 0x4(r5)
    clrlwi  r4, r6, 24
    lwz     r3, 0x4(r3)
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800c409c
branch_0x800c40b8:
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800c40f0
    addi    r3, r28, 0x0
    addi    r4, r30, 0x87c
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7fb8
    stw     r3, 0x0(r28)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r28)
    stb     r0, 0x6c(r28)
branch_0x800c40f0:
    stw     r28, 0x16c(r31)
    addi    r3, r30, 0x894
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x894
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x158
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x158(sp)
    addi    r3, sp, 0x1e8
    addi    r4, sp, 0x154
    stw     r0, 0x154(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1e8(sp)
    addi    r5, sp, 0x18c
    addi    r4, r29, 0x0
    stw     r0, 0x1e4(sp)
    addi    r3, sp, 0x188
    addi    r6, r31, 0x16c
    lwz     r0, 0x1e4(sp)
    stw     r0, 0x18c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lis     r4, 0x800
    lwz     r3, 0x16c(r31)
    lfs     f1, -0x6080(rtoc)
    addi    r4, r4, 0x13
    lfs     f2, -0x607c(rtoc)
    li      r5, 0x5
    lfs     f3, -0x6118(rtoc)
    lfs     f4, -0x6078(rtoc)
    lis     r6, 0xd100
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, 0x16c(r31)
    li      r3, 0x6c
    stw     r31, 0x68(r4)
    lwz     r4, 0x16c(r31)
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800c41d8
    addi    r3, r28, 0x0
    addi    r4, r30, 0x8a0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7f14
    stw     r3, 0x0(r28)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r28)
branch_0x800c41d8:
    stw     r28, 0x170(r31)
    addi    r3, r30, 0x894
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x894
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x150
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x150(sp)
    addi    r3, sp, 0x1d4
    addi    r4, sp, 0x14c
    stw     r0, 0x14c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1d4(sp)
    addi    r5, sp, 0x17c
    addi    r4, r29, 0x0
    stw     r0, 0x1d0(sp)
    addi    r3, sp, 0x178
    addi    r6, r31, 0x170
    lwz     r0, 0x1d0(sp)
    stw     r0, 0x17c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x60c0(rtoc)
    lis     r3, 0x800
    lfs     f2, -0x6080(rtoc)
    addi    r4, r3, 0x13
    fmr     f3, f1
    fmr     f4, f2
    lwz     r3, 0x170(r31)
    li      r5, 0x5
    lis     r6, 0xc000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, 0x170(r31)
    li      r3, 0x70
    stw     r31, 0x68(r4)
    lwz     r4, 0x170(r31)
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800c42cc
    addi    r3, r28, 0x0
    addi    r4, r30, 0x8b8
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x79e8
    stw     r3, 0x0(r28)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r28)
    stw     r0, 0x68(r28)
    stb     r0, 0x6c(r28)
branch_0x800c42cc:
    stw     r28, 0x174(r31)
    addi    r3, r30, 0x894
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x894
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x148
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x148(sp)
    addi    r3, sp, 0x1c0
    addi    r4, sp, 0x144
    stw     r0, 0x144(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1c0(sp)
    addi    r5, sp, 0x16c
    addi    r4, r29, 0x0
    stw     r0, 0x1bc(sp)
    addi    r3, sp, 0x168
    addi    r6, r31, 0x174
    lwz     r0, 0x1bc(sp)
    stw     r0, 0x16c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x6074(rtoc)
    lis     r3, 0x1000
    lfs     f2, -0x6118(rtoc)
    addi    r4, r3, 0xc
    fmr     f3, f1
    fmr     f4, f2
    lwz     r3, 0x174(r31)
    li      r5, 0x5
    lis     r6, 0x1000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x174(r31)
    li      r4, 0x3
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x174(r31)
    stw     r31, 0x68(r3)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x8d8
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x8d8
    mtlr    r12
    blrl
    lwz     r5, 0x74(r31)
    addi    r4, r30, 0x8f0
    lwz     r6, 0x10(r3)
    lwz     r3, 0x4(r5)
    lwz     r5, 0x20(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    bl      SMS_GetMarioHP__Fv
    sth     r3, 0x358(r31)
    lwz     r0, 0x25c(sp)
    lwz     r31, 0x254(sp)
    lwz     r30, 0x250(sp)
    mtlr    r0
    lwz     r29, 0x24c(sp)
    lwz     r28, 0x248(sp)
    addi    sp, sp, 0x258
    blr


.globl __ct__11TBossTelesaFPCc
__ct__11TBossTelesaFPCc: # 0x800c4400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7b1c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r6, 0x1
    stw     r0, 0x20(r31)
    li      r5, 0x0
    li      r4, -0x1
    stb     r6, 0x150(r31)
    li      r0, 0x3
    addi    r3, r31, 0x0
    stw     r5, 0x154(r31)
    stw     r5, 0x158(r31)
    stw     r5, 0x15c(r31)
    stw     r4, 0x160(r31)
    stw     r4, 0x164(r31)
    lfs     f0, -0x6130(rtoc)
    stfs    f0, 0x168(r31)
    stw     r5, 0x16c(r31)
    stw     r5, 0x184(r31)
    stw     r5, 0x188(r31)
    stb     r5, 0x18c(r31)
    stw     r5, 0x1a8(r31)
    stw     r5, 0x274(r31)
    stb     r5, 0x350(r31)
    stw     r5, 0x354(r31)
    sth     r5, 0x358(r31)
    stb     r6, 0x35a(r31)
    stb     r6, 0x35b(r31)
    stw     r5, 0x35c(r31)
    stfs    f0, 0x360(r31)
    stfs    f0, 0x364(r31)
    stw     r5, 0x368(r31)
    stw     r5, 0x36c(r31)
    stb     r0, 0x370(r31)
    stb     r5, 0x384(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getResultFromAng__11TTelesaSlotFf
getResultFromAng__11TTelesaSlotFf: # 0x800c44bc
    lfs     f0, -0x6070(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c44d0
    li      r3, 0x0
    blr

branch_0x800c44d0:
    lfs     f0, -0x606c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c44e4
    li      r3, 0x1
    blr

branch_0x800c44e4:
    lfs     f0, -0x6068(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c44f8
    li      r3, 0x3
    blr

branch_0x800c44f8:
    lfs     f0, -0x6064(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c450c
    li      r3, 0x2
    blr

branch_0x800c450c:
    lfs     f0, -0x6060(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c4520
    li      r3, 0x0
    blr

branch_0x800c4520:
    lfs     f0, -0x605c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c4534
    li      r3, 0x1
    blr

branch_0x800c4534:
    lfs     f0, -0x6058(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c4548
    li      r3, 0x3
    blr

branch_0x800c4548:
    lfs     f0, -0x6054(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c455c
    li      r3, 0x2
    blr

branch_0x800c455c:
    li      r3, 0x2
    blr


.globl getForcastResult__11TTelesaSlotFi
getForcastResult__11TTelesaSlotFi: # 0x800c4564
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    stwu    sp, -0x28(sp)
    lwz     r5, 0x13c(r3)
    lwz     r4, 0x138(r3)
    lfs     f3, -0x6050(rtoc)
    lfsx    f1, r5, r0
    lfsx    f5, r4, r0
    lfs     f2, -0x6130(rtoc)
branch_0x800c4590:
    fabs    f4, f5
    lfs     f0, 0x160(r3)
    fcmpo   cr0, f4, f0
    ble-    branch_0x800c45e4
    fcmpo   cr0, f5, f2
    fadds   f1, f1, f5
    ble-    branch_0x800c45b8
    lfs     f0, 0x15c(r3)
    fsubs   f5, f5, f0
    b       branch_0x800c45c0

branch_0x800c45b8:
    lfs     f0, 0x15c(r3)
    fadds   f5, f5, f0
branch_0x800c45c0:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    bne-    branch_0x800c45d0
    fsubs   f1, f1, f3
branch_0x800c45d0:
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x800c4674
    fadds   f1, f1, f3
    b       branch_0x800c4674

branch_0x800c45e4:
    fadds   f1, f1, f5
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    bne-    branch_0x800c45f8
    fsubs   f1, f1, f3
branch_0x800c45f8:
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x800c4608
    fadds   f1, f1, f3
branch_0x800c4608:
    fabs    f0, f1
    lwz     r5, 0x168(r3)
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r4, 0x24(sp)
    divw    r0, r4, r5
    mullw   r0, r0, r5
    subf.   r0, r0, r4
    bne-    branch_0x800c4674
    xoris   r0, r5, 0x8000
    lfd     f2, -0x6120(rtoc)
    stw     r0, 0x24(sp)
    lis     r4, 0x4330
    stw     r4, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    mullw   r0, r5, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f1, f0, f2
    b       branch_0x800c4680

branch_0x800c4674:
    addi    r6, r6, 0x1
    cmpwi   r6, 0x2710
    ble+    branch_0x800c4590
branch_0x800c4680:
    bl      getResultFromAng__11TTelesaSlotFf
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getSlotResult__11TTelesaSlotFv
getSlotResult__11TTelesaSlotFv: # 0x800c4694
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r4, 0x13c(r3)
    lfs     f1, 0x0(r4)
    bl      getResultFromAng__11TTelesaSlotFf
    addi    r30, r3, 0x0
    li      r29, 0x1
    li      r31, 0x4
branch_0x800c46cc:
    lwz     r4, 0x13c(r28)
    mr      r3, r28
    lfsx    f1, r4, r31
    bl      getResultFromAng__11TTelesaSlotFf
    cmpw    r30, r3
    beq-    branch_0x800c46ec
    li      r3, -0x1
    b       branch_0x800c4700

branch_0x800c46ec:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x3
    addi    r31, r31, 0x4
    blt+    branch_0x800c46cc
    mr      r3, r30
branch_0x800c4700:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl isRollDrum__11TTelesaSlotFv
isRollDrum__11TTelesaSlotFv: # 0x800c4720
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800c4734
    li      r3, 0x1
    blr

branch_0x800c4734:
    lbz     r0, 0x199(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800c4748
    li      r3, 0x1
    blr

branch_0x800c4748:
    lbz     r0, 0x19a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800c475c
    li      r3, 0x1
    blr

branch_0x800c475c:
    li      r0, 0x0
    stb     r0, 0x19b(r3)
    li      r3, 0x0
    blr


.globl forceStopSlot__11TTelesaSlotFi
forceStopSlot__11TTelesaSlotFi: # 0x800c476c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    mr      r30, r4
    lfs     f1, -0x6130(rtoc)
    lfs     f0, -0x612c(rtoc)
    stfs    f1, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lbz     r0, 0x19c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800c48c8
    lwz     r3, 0x1a0(r31)
    lwz     r3, 0x15c(r3)
    lfs     f30, 0x1a8(r3)
    bl      SMS_GetMarioHP__Fv
    extsh   r0, r3
    cmpwi   r0, 0x1
    bne-    branch_0x800c47cc
    lfs     f30, -0x6104(rtoc)
branch_0x800c47cc:
    lfs     f1, 0x40(sp)
    lfs     f0, 0x3c(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6120(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x60fc(rtoc)
    stw     r0, 0x48(sp)
    lfs     f1, 0x3c(sp)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x800c4848
    li      r0, 0x2
    stw     r0, 0x1a4(r31)
    bl      SMS_GetMarioHP__Fv
    extsh   r0, r3
    cmpwi   r0, 0x3
    bgt-    branch_0x800c4838
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
branch_0x800c4838:
    add     r3, r31, r30
    li      r0, 0x1
    stb     r0, 0x1a8(r3)
    b       branch_0x800c4864

branch_0x800c4848:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      getForcastResult__11TTelesaSlotFi
    stw     r3, 0x1a4(r31)
    add     r3, r31, r30
    li      r0, 0x0
    stb     r0, 0x198(r3)
branch_0x800c4864:
    lwz     r3, 0x1a0(r31)
    lwz     r4, 0x1a4(r31)
    lwz     r0, 0x1a8(r3)
    cmpw    r4, r0
    bne-    branch_0x800c4880
    li      r0, 0x3
    stw     r0, 0x1a4(r31)
branch_0x800c4880:
    lwz     r0, 0x1a4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800c48c0
    lwz     r3, 0x1a0(r31)
    lbz     r0, 0x370(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c48a8
    li      r0, 0x1
    stw     r0, 0x1a4(r31)
    b       branch_0x800c48c0

branch_0x800c48a8:
    bl      SMS_GetMarioHP__Fv
    extsh   r0, r3
    cmpwi   r0, 0x6
    blt-    branch_0x800c48c0
    li      r0, 0x3
    stw     r0, 0x1a4(r31)
branch_0x800c48c0:
    li      r0, 0x0
    stb     r0, 0x19c(r31)
branch_0x800c48c8:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x68
    blr


.globl touchWater__11TTelesaSlotFP9THitActor
touchWater__11TTelesaSlotFP9THitActor: # 0x800c48e8
    li      r3, 0x0
    blr


.globl moveStart__11TTelesaSlotFv
moveStart__11TTelesaSlotFv: # 0x800c48f0
    li      r5, 0x1
    stb     r5, 0x19c(r3)
    li      r7, 0x0
    li      r0, 0x0
    stb     r5, 0x19b(r3)
    cmpwi   r7, 0x0
    stb     r5, 0x198(r3)
    stb     r0, 0x1a8(r3)
    lfs     f1, -0x612c(rtoc)
    bne-    branch_0x800c491c
    lfs     f1, -0x60c4(rtoc)
branch_0x800c491c:
    cmpwi   r7, 0x1
    bne-    branch_0x800c4928
    lfs     f1, -0x604c(rtoc)
branch_0x800c4928:
    lfs     f0, 0x158(r3)
    li      r7, 0x1
    lwz     r4, 0x138(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
    stb     r5, 0x199(r3)
    stb     r0, 0x1a9(r3)
    lfs     f1, -0x612c(rtoc)
    cmpwi   r7, 0x1
    bne-    branch_0x800c4954
    lfs     f1, -0x604c(rtoc)
branch_0x800c4954:
    lfs     f0, 0x158(r3)
    li      r7, 0x2
    lwz     r4, 0x138(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r4)
    stb     r5, 0x19a(r3)
    stb     r0, 0x1aa(r3)
    lfs     f1, -0x612c(rtoc)
    cmpwi   r7, 0x1
    bne-    branch_0x800c4980
    lfs     f1, -0x604c(rtoc)
branch_0x800c4980:
    lfs     f0, 0x158(r3)
    lwz     r4, 0x138(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r4)
    blr


.globl moveObject__11TTelesaSlotFv
moveObject__11TTelesaSlotFv: # 0x800c4994
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stfd    f28, 0xb0(sp)
    stfd    f27, 0xa8(sp)
    stfd    f26, 0xa0(sp)
    stfd    f25, 0x98(sp)
    stmw    r25, 0x7c(sp)
    mr      r30, r3
    bl      moveObject__10TLiveActorFv
    lfs     f30, -0x6130(rtoc)
    li      r31, 0x0
    lfs     f27, -0x612c(rtoc)
    li      r29, 0x0
    lfd     f28, -0x6120(rtoc)
    lfs     f29, -0x60fc(rtoc)
    lis     r28, 0x4330
    lfs     f31, -0x6050(rtoc)
    b       branch_0x800c4db0

branch_0x800c49ec:
    add     r27, r30, r31
    addi    r26, r27, 0x1a8
    lbz     r0, 0x1a8(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x800c4a24
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      getForcastResult__11TTelesaSlotFi
    lwz     r0, 0x1a4(r30)
    cmpw    r0, r3
    bne-    branch_0x800c4a24
    li      r0, 0x0
    stb     r0, 0x198(r27)
    stb     r0, 0x0(r26)
branch_0x800c4a24:
    lwz     r3, 0x138(r30)
    lfsx    f2, r3, r29
    fcmpu   cr0, f30, f2
    beq-    branch_0x800c4da8
    fabs    f1, f2
    lfs     f0, 0x160(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800c4ad4
    lwz     r3, 0x13c(r30)
    lfsx    f0, r3, r29
    fadds   f0, f0, f2
    stfsx   f0, r3, r29
    lbz     r0, 0x198(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x800c4a90
    lwz     r0, 0x138(r30)
    add     r3, r0, r29
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f30
    ble-    branch_0x800c4a84
    lfs     f0, 0x15c(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    b       branch_0x800c4a90

branch_0x800c4a84:
    lfs     f0, 0x15c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
branch_0x800c4a90:
    lwz     r0, 0x13c(r30)
    add     r3, r0, r29
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x800c4ab0
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x800c4ab0:
    lwz     r0, 0x13c(r30)
    add     r3, r0, r29
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x800c4da8
    fadds   f0, f0, f31
    stfs    f0, 0x0(r3)
    b       branch_0x800c4da8

branch_0x800c4ad4:
    lwz     r3, 0x13c(r30)
    lfsx    f0, r3, r29
    fadds   f0, f0, f2
    stfsx   f0, r3, r29
    lwz     r0, 0x13c(r30)
    add     r3, r0, r29
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x800c4b04
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x800c4b04:
    lwz     r0, 0x13c(r30)
    add     r3, r0, r29
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x800c4b24
    fadds   f0, f0, f31
    stfs    f0, 0x0(r3)
branch_0x800c4b24:
    lbz     r0, 0x198(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x800c4da8
    lwz     r4, 0x13c(r30)
    lwz     r5, 0x168(r30)
    lfsx    f0, r4, r29
    fabs    f0, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r3, 0x74(sp)
    divw    r0, r3, r5
    mullw   r0, r0, r5
    subf.   r0, r0, r3
    bne-    branch_0x800c4da8
    xoris   r0, r5, 0x8000
    stw     r0, 0x74(sp)
    add     r3, r4, r29
    lfs     f1, 0x0(r3)
    li      r4, 0x292c
    stw     r28, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f28
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    mullw   r0, r5, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x64(sp)
    stw     r28, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    stfs    f0, 0x0(r3)
    lwz     r3, 0x138(r30)
    stfsx   f30, r3, r29
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c4bdc
    addi    r4, r30, 0x10
    li      r3, 0x292c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c4bdc:
    li      r25, 0x0
    b       branch_0x800c4c64

branch_0x800c4be4:
    add     r26, r30, r25
    addi    r27, r26, 0x198
    lbz     r0, 0x198(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x800c4c60
    stfs    f30, 0x54(sp)
    stfs    f27, 0x58(sp)
    lwz     r3, 0x1a0(r30)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x54(sp)
    lwz     r3, 0x15c(r3)
    fsubs   f26, f1, f0
    lfs     f25, 0x1bc(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x54(sp)
    stw     r0, 0x64(sp)
    stw     r28, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f29, f0
    fmuls   f0, f26, f0
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f25
    cror    2, 0, 2
    bne-    branch_0x800c4c58
    li      r0, 0x1
    stb     r0, 0x1a8(r26)
    b       branch_0x800c4c60

branch_0x800c4c58:
    li      r0, 0x0
    stb     r0, 0x0(r27)
branch_0x800c4c60:
    addi    r25, r25, 0x1
branch_0x800c4c64:
    lwz     r0, 0x148(r30)
    cmpw    r25, r0
    blt+    branch_0x800c4be4
    lwz     r3, 0x138(r30)
    li      r0, 0x1
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f30, f0
    beq-    branch_0x800c4c88
    li      r0, 0x0
branch_0x800c4c88:
    lwz     r3, 0x138(r30)
    lfs     f0, 0x4(r3)
    fcmpu   cr0, f30, f0
    beq-    branch_0x800c4c9c
    li      r0, 0x0
branch_0x800c4c9c:
    lwz     r3, 0x138(r30)
    lfs     f0, 0x8(r3)
    fcmpu   cr0, f30, f0
    beq-    branch_0x800c4cb0
    li      r0, 0x0
branch_0x800c4cb0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c4da8
    lwz     r27, 0x1a0(r30)
    lwz     r3, 0x184(r27)
    bl      getSlotResult__11TTelesaSlotFv
    cmpwi   r3, 0x2
    beq-    branch_0x800c4cdc
    lwz     r3, 0x184(r27)
    bl      getSlotResult__11TTelesaSlotFv
    cmpwi   r3, 0x0
    bne-    branch_0x800c4d78
branch_0x800c4cdc:
    stfs    f30, 0x374(r27)
    addi    r5, r27, 0x374
    li      r4, 0xe1
    stfs    f30, 0x378(r27)
    li      r6, 0x0
    li      r7, 0x0
    stfs    f30, 0x37c(r27)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x184(r27)
    bl      getSlotResult__11TTelesaSlotFv
    cmpwi   r3, 0x2
    bne-    branch_0x800c4d44
    lwz     r3, -0x6044(r13)
    li      r4, 0x293f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c4da8
    addi    r4, r27, 0x10
    li      r3, 0x293f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800c4da8

branch_0x800c4d44:
    lwz     r3, -0x6044(r13)
    li      r4, 0x2940
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c4da8
    addi    r4, r27, 0x10
    li      r3, 0x2940
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800c4da8

branch_0x800c4d78:
    lwz     r3, -0x6044(r13)
    li      r4, 0x294d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c4da8
    addi    r4, r27, 0x10
    li      r3, 0x294d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c4da8:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x800c4db0:
    lwz     r0, 0x148(r30)
    cmpw    r31, r0
    blt+    branch_0x800c49ec
    lmw     r25, 0x7c(sp)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lfd     f29, 0xb8(sp)
    lfd     f28, 0xb0(sp)
    lfd     f27, 0xa8(sp)
    lfd     f26, 0xa0(sp)
    lfd     f25, 0x98(sp)
    addi    sp, sp, 0xd0
    blr


.globl calcRootMatrix__11TTelesaSlotFv
calcRootMatrix__11TTelesaSlotFv: # 0x800c4dec
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0x138(r3)
    lfs     f1, -0x6130(rtoc)
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c4e1c
    li      r0, 0x1
branch_0x800c4e1c:
    lwz     r3, 0x138(r31)
    lfs     f0, 0x4(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c4e30
    li      r0, 0x1
branch_0x800c4e30:
    lwz     r3, 0x138(r31)
    lfs     f0, 0x8(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800c4e44
    li      r0, 0x1
branch_0x800c4e44:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c4e94
    lbz     r0, 0x1e0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800c4e88
    lwz     r3, -0x6044(r13)
    li      r4, 0x308d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c4e88
    addi    r4, r31, 0x10
    li      r3, 0x308d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c4e88:
    lbz     r0, 0x1e0(r31)
    subfic  r0, r0, 0x1
    stb     r0, 0x1e0(r31)
branch_0x800c4e94:
    mr      r3, r31
    bl      calcRootMatrix__9TSlotDrumFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl randomReset__11TTelesaSlotFv
randomReset__11TTelesaSlotFv: # 0x800c4eb0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x8
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stmw    r27, 0x44(sp)
    li      r31, 0x0
    addi    r29, r3, 0x0
    li      r30, 0x0
    lis     r28, 0x4330
    stw     r31, 0x14(sp)
    stw     r0, 0x18(sp)
    lfd     f30, -0x6120(rtoc)
    lfs     f31, -0x60fc(rtoc)
branch_0x800c4eec:
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    subf    r27, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r6, 0x14(sp)
    stw     r0, 0x3c(sp)
    xoris   r3, r27, 0x8000
    addi    r0, r30, 0x198
    lwz     r7, 0x168(r29)
    stw     r28, 0x38(sp)
    addi    r30, r30, 0x1
    lwz     r4, 0x13c(r29)
    stw     r3, 0x34(sp)
    cmpwi   r30, 0x3
    lfd     f0, 0x38(sp)
    li      r3, 0x0
    stw     r28, 0x30(sp)
    fsubs   f1, f0, f30
    lfd     f0, 0x30(sp)
    fmuls   f1, f31, f1
    fsubs   f0, f0, f30
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r5, 0x2c(sp)
    add     r5, r6, r5
    mullw   r5, r7, r5
    xoris   r5, r5, 0x8000
    stw     r5, 0x24(sp)
    stw     r28, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f30
    stfsx   f0, r4, r31
    addi    r31, r31, 0x4
    stbx    r3, r29, r0
    blt+    branch_0x800c4eec
    lmw     r27, 0x44(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl initMapObj__11TTelesaSlotFv
initMapObj__11TTelesaSlotFv: # 0x800c4f9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stmw    r27, 0x4c(sp)
    mr      r30, r3
    bl      initMapObj__9TSlotDrumFv
    lwz     r3, 0xf0(r30)
    li      r4, 0x0
    li      r0, 0x2d
    ori     r3, r3, 0x10
    stw     r3, 0xf0(r30)
    li      r3, 0x60
    lfs     f0, -0x60f8(rtoc)
    stfs    f0, 0x14c(r30)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x150(r30)
    lfs     f0, -0x6114(rtoc)
    stfs    f0, 0x154(r30)
    stfs    f0, 0x158(r30)
    lfs     f0, -0x6048(rtoc)
    stfs    f0, 0x15c(r30)
    lfs     f0, -0x6128(rtoc)
    stfs    f0, 0x160(r30)
    sth     r4, 0x164(r30)
    stw     r0, 0x168(r30)
    lfs     f1, 0x58(r30)
    lfs     f0, -0x6094(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x140(r30)
    lfs     f0, 0x5c(r30)
    stfs    f0, 0x144(r30)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800c5034
    mr      r3, r27
    bl      __ct__17TMapCollisionMoveFv
branch_0x800c5034:
    stw     r27, 0x1dc(r30)
    li      r4, 0x2
    li      r5, 0x0
    lwz     r3, 0x1dc(r30)
    li      r6, 0x0
    li      r7, 0x0
    bl      init__17TMapCollisionMoveFUlUssPC10TLiveActor
    li      r31, 0x0
    stw     r31, 0x1c(sp)
    li      r0, 0x8
    mr      r29, r31
    stw     r0, 0x20(sp)
    lis     r28, 0x4330
    lfd     f30, -0x6120(rtoc)
    lfs     f31, -0x60fc(rtoc)
branch_0x800c5070:
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    subf    r27, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r6, 0x1c(sp)
    stw     r0, 0x44(sp)
    xoris   r3, r27, 0x8000
    addi    r0, r31, 0x198
    lwz     r7, 0x168(r30)
    stw     r28, 0x40(sp)
    addi    r31, r31, 0x1
    lwz     r4, 0x13c(r30)
    stw     r3, 0x3c(sp)
    cmpwi   r31, 0x3
    lfd     f0, 0x40(sp)
    li      r3, 0x0
    stw     r28, 0x38(sp)
    fsubs   f1, f0, f30
    lfd     f0, 0x38(sp)
    fmuls   f1, f31, f1
    fsubs   f0, f0, f30
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r5, 0x34(sp)
    add     r5, r6, r5
    mullw   r5, r7, r5
    xoris   r5, r5, 0x8000
    stw     r5, 0x2c(sp)
    stw     r28, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f30
    stfsx   f0, r4, r29
    addi    r29, r29, 0x4
    stbx    r3, r30, r0
    blt+    branch_0x800c5070
    lmw     r27, 0x4c(sp)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl checkHit__25TBossTelesaKillSmallEnemyFv
checkHit__25TBossTelesaKillSmallEnemyFv: # 0x800c5120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    li      r30, 0x0
    stw     r29, 0x2c(sp)
    li      r29, 0x0
    stw     r28, 0x28(sp)
    stb     r30, 0x6c(r3)
    b       branch_0x800c51b4

branch_0x800c5150:
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lwz     r0, 0x4c(r3)
    addi    r4, r3, 0x0
    rlwinm. r0, r0, 0, 3, 3
    beq-    branch_0x800c5170
    li      r0, 0x1
    b       branch_0x800c5174

branch_0x800c5170:
    li      r0, 0x0
branch_0x800c5174:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c51ac
    lwz     r3, 0x4c(r4)
    addi    r28, r4, 0x0
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x13
    bne-    branch_0x800c5198
    mr      r3, r28
    bl      selectCapHolder__9THamuKuriFv
branch_0x800c5198:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800c51ac:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x800c51b4:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x800c5150
    lwz     r5, -0x60b4(r13)
    addi    r3, sp, 0x18
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x20(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f2, 0x20(sp)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x6130(rtoc)
    fsubs   f1, f2, f1
    stfs    f1, 0x20(sp)
    stfs    f0, 0x1c(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x6118(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c5238
    lwz     r3, 0x68(r31)
    bl      forceHide__11TBossTelesaFv
    li      r0, 0x1
    stb     r0, 0x6c(r31)
branch_0x800c5238:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__17TBossTelesaTongueFP9THitActorUl
receiveMessage__17TBossTelesaTongueFP9THitActorUl: # 0x800c5258
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    bne-    branch_0x800c5364
    lbz     r0, -0x6a50(r13)
    lwz     r31, 0x68(r3)
    extsb.  r0, r0
    bne-    branch_0x800c52b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a4c(r13)
    addi    r0, r3, 0x7acc
    lis     r4, 0x800c
    stw     r0, -0x6a4c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b40
    subi    r4, r4, 0x120c
    subi    r3, r13, 0x6a4c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a50(r13)
branch_0x800c52b8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6a4c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c5364
    lbz     r0, -0x6a48(r13)
    extsb.  r0, r0
    bne-    branch_0x800c530c
    subi    r3, r13, 0x6a44
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x7abc
    lis     r4, 0x800c
    stw     r0, -0x6a44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b4c
    subi    r4, r4, 0x1634
    subi    r3, r13, 0x6a44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a48(r13)
branch_0x800c530c:
    subi    r6, r13, 0x6a44
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800c5364
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c5358
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c5358
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c5358:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c5364:
    lwz     r0, 0x3c(sp)
    li      r3, 0x1
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl receiveMessage__15TBossTelesaBodyFP9THitActorUl
receiveMessage__15TBossTelesaBodyFP9THitActorUl: # 0x800c537c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr.     r29, r5
    lwz     r30, 0x68(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x1af8
    bne-    branch_0x800c54b4
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800c53c0
    li      r0, 0x1
    b       branch_0x800c53c4

branch_0x800c53c0:
    li      r0, 0x0
branch_0x800c53c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800c54b4
    lbz     r0, -0x6a38(r13)
    extsb.  r0, r0
    bne-    branch_0x800c540c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a34(r13)
    addi    r0, r3, 0x7a9c
    lis     r3, 0x800c
    stw     r0, -0x6a34(r13)
    subi    r4, r3, 0x1bf0
    subi    r3, r13, 0x6a34
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a38(r13)
branch_0x800c540c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6a34
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c54b4
    lbz     r0, -0x6a68(r13)
    extsb.  r0, r0
    bne-    branch_0x800c545c
    subi    r3, r13, 0x6a64
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x7afc
    lis     r3, 0x800c
    stw     r0, -0x6a64(r13)
    subi    r4, r3, 0xca8
    subi    r3, r13, 0x6a64
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a68(r13)
branch_0x800c545c:
    subi    r6, r13, 0x6a64
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800c54b4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c54a8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c54a8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c54a8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c54b4:
    cmplwi  r29, 0xf
    bne-    branch_0x800c55a4
    lbz     r0, -0x6a38(r13)
    extsb.  r0, r0
    bne-    branch_0x800c54fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6a34(r13)
    addi    r0, r3, 0x7a9c
    lis     r3, 0x800c
    stw     r0, -0x6a34(r13)
    subi    r4, r3, 0x1bf0
    subi    r3, r13, 0x6a34
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a38(r13)
branch_0x800c54fc:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6a34
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c55a4
    lbz     r0, -0x6a30(r13)
    extsb.  r0, r0
    bne-    branch_0x800c554c
    subi    r3, r13, 0x6a2c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x7a8c
    lis     r3, 0x800c
    stw     r0, -0x6a2c(r13)
    subi    r4, r3, 0x2310
    subi    r3, r13, 0x6a2c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a30(r13)
branch_0x800c554c:
    subi    r6, r13, 0x6a2c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800c55a4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c5598
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c5598
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c5598:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c55a4:
    lwz     r0, 0x5c(sp)
    li      r3, 0x1
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl perform__18TBossTelesaManagerFUlPQ26JDrama9TGraphics
perform__18TBossTelesaManagerFUlPQ26JDrama9TGraphics: # 0x800c55c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__18TBossTelesaManagerFv
createModelData__18TBossTelesaManagerFv: # 0x800c55e4
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x799c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__18TBossTelesaManagerFv
createEnemyInstance__18TBossTelesaManagerFv: # 0x800c5618
    mflr    r0
    li      r3, 0x38c
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800c5648
    lis     r3, 0x8038
    subi    r4, r3, 0xcc8
    addi    r3, r31, 0x0
    bl      __ct__11TBossTelesaFPCc
branch_0x800c5648:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__18TBossTelesaManagerFR20JSUMemoryInputStream
load__18TBossTelesaManagerFR20JSUMemoryInputStream: # 0x800c5660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x224
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800c56a0
    lis     r3, 0x8038
    subi    r4, r3, 0xcbc
    addi    r3, r29, 0x0
    bl      __ct__25TBossTelesaSaveLoadParamsFPCc
branch_0x800c56a0:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__18TBossTelesaManagerFPCc
__ct__18TBossTelesaManagerFPCc: # 0x800c56cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x7fa4
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__25TBossTelesaSaveLoadParamsFPCc
__ct__25TBossTelesaSaveLoadParamsFPCc: # 0x800c5708
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r31, r3, 0x0
    subi    r30, r5, 0x15c8
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x924
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x924
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42ac
    stw     r29, 0xa8(r31)
    li      r0, 0xc8
    lis     r3, 0x803b
    stw     r0, 0xb8(r31)
    subi    r28, r3, 0x42b8
    addi    r3, r30, 0x934
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x934
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    li      r0, 0x64
    addi    r3, r30, 0x944
    stw     r0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x944
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    li      r0, 0xdc
    addi    r3, r30, 0x954
    stw     r0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x954
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    li      r0, 0x78
    addi    r3, r30, 0x964
    stw     r0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x964
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    li      r0, 0x1f4
    addi    r3, r30, 0x978
    stw     r0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x978
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    li      r0, 0x258
    addi    r3, r30, 0x98c
    stw     r0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x98c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42c4
    stw     r27, 0x120(r31)
    lis     r3, 0x803b
    subi    r26, r3, 0x42d0
    lfs     f0, -0x6088(rtoc)
    addi    r3, r30, 0x998
    stfs    f0, 0x130(r31)
    stw     r26, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x998
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    li      r25, 0x5
    addi    r3, r30, 0x9a8
    stw     r25, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x9a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x148(r31)
    addi    r3, r30, 0x9b8
    lfs     f0, -0x60ec(rtoc)
    stfs    f0, 0x158(r31)
    stw     r26, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x9b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x15c(r31)
    addi    r3, r30, 0x9cc
    lfs     f0, -0x6078(rtoc)
    stfs    f0, 0x16c(r31)
    stw     r26, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x9cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x9dc
    stw     r25, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x9dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    li      r0, 0xa
    addi    r3, r30, 0x9ec
    stw     r0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x9ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    addi    r3, r30, 0xa08
    lfs     f0, -0x60c8(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0xa08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1ac(r31)
    addi    r3, r30, 0xa20
    lfs     f0, -0x60c8(rtoc)
    stfs    f0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0xa20
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    addi    r3, r30, 0xa30
    lfs     f0, -0x6080(rtoc)
    stfs    f0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0xa30
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    li      r0, 0xbb8
    addi    r3, r30, 0xa44
    stw     r0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0xa44
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    li      r26, 0x7d0
    addi    r3, r30, 0xa58
    stw     r26, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0xa58
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    li      r0, 0x3e8
    addi    r3, r30, 0xa6c
    stw     r0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0xa6c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    mr      r3, r31
    stw     r26, 0x220(r31)
    stw     r28, 0x210(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl execute__17TNerveBubbleSplitCFP24TSpineBase_10TLiveActor_
execute__17TNerveBubbleSplitCFP24TSpineBase_10TLiveActor_: # 0x800c5aa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c5ae4
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      split__7TBubbleFv
branch_0x800c5ae4:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x800c5b08
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x9
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800c5b08:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c5b4c
    lwz     r3, 0x74(r31)
    li      r4, 0x9
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c5b4c
    li      r0, 0x0
    stb     r0, 0x1d2(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800c5b4c:
    lwz     r0, 0x2c(sp)
    li      r3, 0x0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__17TNerveBubbleSplitFv
__dt__17TNerveBubbleSplitFv: # 0x800c5b68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c5bac
    lis     r3, 0x803c
    subi    r0, r3, 0x7f50
    stw     r0, 0x0(r31)
    beq-    branch_0x800c5b9c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c5b9c:
    extsh.  r0, r4
    ble-    branch_0x800c5bac
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c5bac:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveBubbleLiveCFP24TSpineBase_10TLiveActor_
execute__16TNerveBubbleLiveCFP24TSpineBase_10TLiveActor_: # 0x800c5bc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stw     r31, 0xec(sp)
    stw     r30, 0xe8(sp)
    mr      r30, r4
    stw     r29, 0xe4(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c5d34
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lbz     r0, 0x1d0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800c5c28
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800c5cc0

branch_0x800c5c28:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x6130(rtoc)
    stw     r3, 0x98(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    beq-    branch_0x800c5c78
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    stfs    f2, 0xa4(sp)
branch_0x800c5c78:
    lwz     r3, 0x98(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0xa4(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x98(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0xa4(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x800c5cc0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6130(rtoc)
    mr      r29, r3
    lfs     f0, -0x6088(rtoc)
    stfs    f1, 0xd0(sp)
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xd0(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6120(rtoc)
    stw     r0, 0xdc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x60fc(rtoc)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd0(sp)
    lfd     f2, 0xd8(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x10(r29)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    b       branch_0x800c5d6c

branch_0x800c5d34:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c5d6c
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    li      r4, 0xa
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800c5d6c:
    lbz     r0, 0x1d0(r31)
    lwz     r3, 0x194(r31)
    cmplwi  r0, 0x0
    lfs     f0, 0x378(r3)
    bne-    branch_0x800c5d9c
    lfs     f1, 0x1cc(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c5e80
    lfs     f0, -0x6114(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1cc(r31)
    b       branch_0x800c5e80

branch_0x800c5d9c:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x28
    ble-    branch_0x800c5e28
    lbz     r0, 0x1d1(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800c5e28
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x94(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x90(sp)
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0x94(sp)
    stfs    f0, 0xcc(sp)
    lfs     f0, 0xc4(sp)
    lfs     f1, -0x6044(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    lfs     f0, 0xcc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xcc(sp)
    lwz     r3, 0xc4(sp)
    lwz     r0, 0xc8(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xcc(sp)
    stw     r0, 0xb4(r31)
    b       branch_0x800c5e44

branch_0x800c5e28:
    mr      r3, r31
    lfs     f1, -0x612c(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800c5e44:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x50
    bne-    branch_0x800c5e80
    li      r0, 0x0
    stb     r0, 0x1d1(r31)
    lfs     f0, -0x6130(rtoc)
    stfs    f0, 0xb8(sp)
    stfs    f0, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    lwz     r3, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xc0(sp)
    stw     r0, 0xb4(r31)
branch_0x800c5e80:
    lfs     f1, 0x1cc(r31)
    lfs     f0, -0x6040(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1cc(r31)
    lwz     r3, 0x194(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x3a0(r3)
    lfs     f2, 0x1cc(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800c5ec8
    li      r0, 0x0
    stb     r0, 0x1d2(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800c5ec8:
    lwz     r4, 0x194(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, 0x364(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c5ef4
    lfs     f1, 0x2c(r31)
    lfs     f0, 0x38c(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x24(r31)
branch_0x800c5ef4:
    lwz     r3, 0x194(r31)
    lwz     r4, 0x20(r30)
    lwz     r0, 0x33c(r3)
    cmpw    r4, r0
    ble-    branch_0x800c5f88
    lbz     r0, -0x6a78(r13)
    extsb.  r0, r0
    bne-    branch_0x800c5f4c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a74(r13)
    subi    r0, r3, 0x7f50
    lis     r4, 0x800c
    stw     r0, -0x6a74(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1b04
    addi    r4, r4, 0x5b68
    subi    r3, r13, 0x6a74
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a78(r13)
branch_0x800c5f4c:
    subi    r4, r13, 0x6a74
    cmplwi  r4, 0x0
    beq-    branch_0x800c5f80
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800c5f80
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800c5f80:
    li      r3, 0x1
    b       branch_0x800c5f8c

branch_0x800c5f88:
    li      r3, 0x0
branch_0x800c5f8c:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lwz     r31, 0xec(sp)
    mtlr    r0
    lwz     r30, 0xe8(sp)
    lwz     r29, 0xe4(sp)
    addi    sp, sp, 0xf8
    blr


.globl appendEnemy__7TBubbleFv
appendEnemy__7TBubbleFv: # 0x800c5fac
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x40(sp)
    stw     r0, 0x198(r3)
    lis     r3, 0x8038
    subi    r30, r3, 0x15c8
    lfs     f1, -0x6130(rtoc)
    lfs     f0, -0x6098(rtoc)
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x30(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x2c(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6120(rtoc)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x60fc(rtoc)
    stw     r0, 0x38(sp)
    lfs     f2, 0x2c(sp)
    lfd     f3, 0x38(sp)
    lfs     f0, -0x60dc(rtoc)
    fsubs   f3, f3, f4
    fmuls   f1, f1, f3
    fmuls   f1, f31, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c6068
    lwz     r3, -0x70b0(r13)
    addi    r4, r31, 0x10
    addi    r5, r30, 0x2fc
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    lfs     f0, -0x603c(rtoc)
    mr      r30, r3
    stfs    f0, 0x154(r3)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800c6128

branch_0x800c6068:
    lfs     f0, -0x6098(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c60a8
    lwz     r3, -0x70b0(r13)
    addi    r4, r31, 0x10
    addi    r5, r30, 0x2b4
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    lfs     f0, -0x6038(rtoc)
    mr      r30, r3
    stfs    f0, 0x154(r3)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800c6128

branch_0x800c60a8:
    lfs     f0, -0x6034(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c60f8
    lwz     r3, -0x70b0(r13)
    addi    r4, r31, 0x10
    addi    r5, r30, 0x368
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r30, r3
    beq-    branch_0x800c61a4
    lfs     f0, -0x603c(rtoc)
    mr      r3, r30
    stfs    f0, 0x154(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      setAttacker__7TTelesaFv
    b       branch_0x800c6128

branch_0x800c60f8:
    lwz     r3, -0x70b0(r13)
    addi    r4, r31, 0x10
    addi    r5, r30, 0xa7c
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    lfs     f0, -0x603c(rtoc)
    mr      r30, r3
    stfs    f0, 0x154(r3)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800c6128:
    cmplwi  r30, 0x0
    beq-    branch_0x800c61a4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800c61a4
    lwz     r0, 0x64(r30)
    oris    r0, r0, 0x800
    stw     r0, 0x64(r30)
    stw     r30, 0x6c(r31)
    lfs     f0, -0x6130(rtoc)
    lfs     f1, -0x6114(rtoc)
    stfs    f0, 0x10(sp)
    lfs     f0, -0x60ec(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x18(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    stw     r30, 0x198(r31)
branch_0x800c61a4:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl __dt__16TNerveBubbleLiveFv
__dt__16TNerveBubbleLiveFv: # 0x800c61c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c6204
    lis     r3, 0x803c
    subi    r0, r3, 0x7f40
    stw     r0, 0x0(r31)
    beq-    branch_0x800c61f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c61f4:
    extsh.  r0, r4
    ble-    branch_0x800c6204
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c6204:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__7TBubbleCFv
getBasNameTable__7TBubbleCFv: # 0x800c621c
    lis     r3, 0x803b
    addi    r3, r3, 0x7940
    blr


.globl getTakingMtx__7TBubbleFv
getTakingMtx__7TBubbleFv: # 0x800c6228
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    blr


.globl setDeadAnm__7TBubbleFv
setDeadAnm__7TBubbleFv: # 0x800c6238
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__7TBubbleFv
calcRootMatrix__7TBubbleFv: # 0x800c6268
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800c631c
    lfs     f1, 0xc8(r31)
    lfs     f0, 0x1cc(r31)
    lfs     f2, -0x6034(rtoc)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0x38(r31)
    lfs     f2, -0x6030(rtoc)
    lfs     f1, 0x34(r31)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    lwz     r3, 0x74(r31)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lwz     r3, 0x4(r3)
    fctiwz  f5, f2
    lfs     f3, 0x18(r31)
    fctiwz  f0, f0
    stfd    f5, 0x50(sp)
    addi    r3, r3, 0x20
    lfs     f2, 0x14(r31)
    stfd    f4, 0x48(sp)
    lfs     f1, 0x10(r31)
    stfd    f0, 0x40(sp)
    lwz     r4, 0x54(sp)
    lwz     r5, 0x4c(sp)
    lwz     r6, 0x44(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x74(r31)
    lwz     r3, 0x24(r31)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r31)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r4)
branch_0x800c631c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl attackToMario__7TBubbleFv
attackToMario__7TBubbleFv: # 0x800c6330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl behaveToWater__7TBubbleFP9THitActor
behaveToWater__7TBubbleFP9THitActor: # 0x800c637c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6a80(r13)
    extsb.  r0, r0
    bne-    branch_0x800c63d4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a7c(r13)
    subi    r0, r3, 0x7f40
    lis     r4, 0x800c
    stw     r0, -0x6a7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1af8
    addi    r4, r4, 0x61c0
    subi    r3, r13, 0x6a7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a80(r13)
branch_0x800c63d4:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6a7c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c6454
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c6454
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6088(rtoc)
    lis     r3, 0x2000
    lfs     f0, 0x14(r31)
    addi    r4, r3, 0x2
    lwz     r3, -0x62b0(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    li      r5, 0x1
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    cmplwi  r3, 0x0
    beq-    branch_0x800c6454
    lwz     r12, 0x0(r3)
    li      r4, 0x4b0
    lwz     r12, 0x1dc(r12)
    mtlr    r12
    blrl
branch_0x800c6454:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl kill__7TBubbleFv
kill__7TBubbleFv: # 0x800c6468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800c6574
    lwz     r3, 0x198(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800c64d8
    lbz     r0, 0x1d2(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800c64c0
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x7
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x800c64d0

branch_0x800c64c0:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800c64d0:
    li      r0, 0x0
    stw     r0, 0x198(r31)
branch_0x800c64d8:
    li      r0, 0x1
    stb     r0, 0x13c(r31)
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x800c6568
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800c6518
    stw     r0, 0x1c(r4)
branch_0x800c6518:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800c655c
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800c655c
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c655c:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
branch_0x800c6568:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x40
    stw     r0, 0xf0(r31)
branch_0x800c6574:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl getGravityY__7TBubbleCFv
getGravityY__7TBubbleCFv: # 0x800c658c
    lbz     r0, 0x1d0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800c65b4
    lbz     r0, 0x1d1(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800c65ac
    lfs     f1, -0x6040(rtoc)
    blr

branch_0x800c65ac:
    lfs     f1, -0x6130(rtoc)
    blr

branch_0x800c65b4:
    lfs     f1, 0xcc(r3)
    blr


.globl split__7TBubbleFv
split__7TBubbleFv: # 0x800c65bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stfd    f29, 0x88(sp)
    stfd    f28, 0x80(sp)
    stfd    f27, 0x78(sp)
    stfd    f26, 0x70(sp)
    stmw    r26, 0x58(sp)
    mr      r31, r3
    li      r27, 0x0
    lis     r30, 0x4330
    lwz     r4, 0x194(r3)
    lis     r3, 0x8038
    lfs     f29, -0x6130(rtoc)
    subi    r29, r3, 0x1358
    lfs     f30, -0x60e8(rtoc)
    lwz     r28, 0x350(r4)
    lfs     f31, -0x6114(rtoc)
    lfd     f27, -0x6120(rtoc)
    lfs     f28, -0x60fc(rtoc)
    b       branch_0x800c6740

branch_0x800c6618:
    lwz     r3, -0x70b0(r13)
    addi    r5, r29, 0x0
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r26, r3
    beq-    branch_0x800c6748
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x10(r31)
    li      r0, 0x1
    lwz     r3, 0x14(r31)
    stw     r4, 0x10(r26)
    stw     r3, 0x14(r26)
    lwz     r3, 0x18(r31)
    stw     r3, 0x18(r26)
    lfs     f1, 0x14(r26)
    lfs     f0, 0x1cc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r26)
    stfs    f29, 0x1cc(r26)
    stb     r0, 0x1d0(r26)
    stfs    f30, 0x34(sp)
    stfs    f31, 0x38(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x34(sp)
    fsubs   f26, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x34(sp)
    stw     r0, 0x54(sp)
    stw     r30, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f27
    fmuls   f0, f28, f0
    fmuls   f0, f26, f0
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f0, 0x38(sp)
    fsubs   f26, f0, f1
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x34(sp)
    stw     r0, 0x4c(sp)
    stw     r30, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f27
    fmuls   f0, f28, f0
    fmuls   f0, f26, f0
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x38(sp)
    fsubs   f26, f0, f1
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x34(sp)
    stw     r0, 0x44(sp)
    addi    r27, r27, 0x1
    stw     r30, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f27
    fmuls   f0, f28, f0
    fmuls   f0, f26, f0
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0xac(r26)
    stw     r0, 0xb0(r26)
    lwz     r0, 0x30(sp)
    stw     r0, 0xb4(r26)
branch_0x800c6740:
    cmpw    r27, r28
    blt+    branch_0x800c6618
branch_0x800c6748:
    lmw     r26, 0x58(sp)
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lfd     f29, 0x88(sp)
    lfd     f28, 0x80(sp)
    lfd     f27, 0x78(sp)
    lfd     f26, 0x70(sp)
    addi    sp, sp, 0xa0
    blr


.globl reset__7TBubbleFv
reset__7TBubbleFv: # 0x800c6774
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lfs     f1, -0x60dc(rtoc)
    lfs     f0, -0x6034(rtoc)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x24(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x20(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6120(rtoc)
    stw     r0, 0x2c(sp)
    lis     r3, 0x4330
    lfs     f0, -0x60fc(rtoc)
    li      r0, 0x0
    stw     r3, 0x28(sp)
    lfs     f1, 0x20(sp)
    li      r30, 0x1
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1cc(r31)
    stb     r0, 0x1d0(r31)
    stb     r30, 0x1d1(r31)
    stb     r0, 0x1d2(r31)
    stw     r0, 0x198(r31)
    lbz     r0, -0x6a80(r13)
    extsb.  r0, r0
    bne-    branch_0x800c684c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a7c(r13)
    subi    r0, r3, 0x7f40
    lis     r4, 0x800c
    stw     r0, -0x6a7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1af8
    addi    r4, r4, 0x61c0
    subi    r3, r13, 0x6a7c
    bl      __register_global_object
    stb     r30, -0x6a80(r13)
branch_0x800c684c:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6a7c
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl init__7TBubbleFP12TLiveManager
init__7TBubbleFP12TLiveManager: # 0x800c6888
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    subi    r31, r5, 0x15c8
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x6c(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x20
    stw     r0, 0x4c(r30)
    li      r0, 0x11
    addi    r3, r30, 0x0
    stw     r0, 0x150(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x194(r30)
    lbz     r0, -0x6a80(r13)
    extsb.  r0, r0
    bne-    branch_0x800c6920
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a7c(r13)
    subi    r0, r3, 0x7f40
    lis     r4, 0x800c
    stw     r0, -0x6a7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1af8
    addi    r4, r4, 0x61c0
    subi    r3, r13, 0x6a7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a80(r13)
branch_0x800c6920:
    lwz     r5, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x6a7c
    stw     r3, 0x8(r5)
    li      r4, 0x3
    stw     r3, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r3, 0x1c(r5)
    lwz     r3, 0x74(r30)
    bl      setLightType__6MActorFi
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x8d8
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x8d8
    mtlr    r12
    blrl
    lwz     r5, 0x74(r30)
    addi    r4, r31, 0x8f0
    lwz     r6, 0x10(r3)
    lwz     r3, 0x4(r5)
    lwz     r5, 0x20(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl createModelData__14TBubbleManagerFv
createModelData__14TBubbleManagerFv: # 0x800c69b0
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x7984
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__14TBubbleManagerFv
createEnemyInstance__14TBubbleManagerFv: # 0x800c69e4
    mflr    r0
    li      r3, 0x1d4
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800c6a54
    stw     r29, 0xc(sp)
    subi    r4, rtoc, 0x602c
    lwz     r3, 0xc(sp)
    bl      __ct__12TWalkerEnemyFPCc
    lwz     r30, 0xc(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x7f30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    li      r31, 0x0
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x19c
    stw     r31, 0x198(r30)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
    lfs     f0, -0x6130(rtoc)
    stfs    f0, 0x1cc(r30)
    stb     r31, 0x1d0(r30)
    stb     r31, 0x1d1(r30)
branch_0x800c6a54:
    lwz     r0, 0x24(sp)
    mr      r3, r29
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl load__14TBubbleManagerFR20JSUMemoryInputStream
load__14TBubbleManagerFR20JSUMemoryInputStream: # 0x800c6a74
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r25, r4, 0x0
    subi    r31, r5, 0x15c8
    li      r3, 0x3a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800c6bec
    stw     r30, 0x10(sp)
    addi    r4, r31, 0xa94
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r31, 0xaa8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r26, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0xaa8
    addi    r4, r26, 0x0
    addi    r3, r26, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x42ac
    stw     r28, 0x32c(r26)
    li      r0, 0xc8
    lis     r3, 0x803b
    stw     r0, 0x33c(r26)
    subi    r27, r3, 0x42b8
    addi    r3, r31, 0xab4
    stw     r27, 0x32c(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x340
    addi    r6, r31, 0xab4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x340(r26)
    li      r0, 0x5
    addi    r3, r31, 0xac4
    stw     r0, 0x350(r26)
    stw     r27, 0x340(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x354
    addi    r6, r31, 0xac4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42c4
    stw     r27, 0x354(r26)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x60e0(rtoc)
    addi    r3, r31, 0xad0
    stfs    f0, 0x364(r26)
    stw     r28, 0x354(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x368
    addi    r6, r31, 0xad0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x368(r26)
    addi    r3, r31, 0xae0
    lfs     f0, -0x60dc(rtoc)
    stfs    f0, 0x378(r26)
    stw     r28, 0x368(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x37c
    addi    r6, r31, 0xae0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x37c(r26)
    addi    r3, r31, 0xaf0
    lfs     f0, -0x6024(rtoc)
    stfs    f0, 0x38c(r26)
    stw     r28, 0x37c(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x390
    addi    r6, r31, 0xaf0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x390(r26)
    mr      r3, r26
    lfs     f0, -0x6118(rtoc)
    stfs    f0, 0x3a0(r26)
    stw     r28, 0x390(r26)
    lwz     r4, 0x0(r26)
    bl      load__7TParamsFPCc
branch_0x800c6bec:
    stw     r30, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r25, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__14TBubbleManagerFPCc
__ct__14TBubbleManagerFPCc: # 0x800c6c10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x7d78
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__25TBossTelesaKillSmallEnemyFv
__dt__25TBossTelesaKillSmallEnemyFv: # 0x800c6c4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c6cb4
    lis     r3, 0x803b
    addi    r3, r3, 0x79e8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c6ca4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800c6ca4:
    extsh.  r0, r31
    ble-    branch_0x800c6cb4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c6cb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBossTelesaFv
__dt__11TBossTelesaFv: # 0x800c6cd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c6d20
    lis     r3, 0x803b
    addi    r3, r3, 0x7b1c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800c6d20
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c6d20:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TTelesaSlotFv
__dt__11TTelesaSlotFv: # 0x800c6d3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c6dbc
    lis     r3, 0x803b
    addi    r3, r3, 0x7c30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c6dac
    lis     r3, 0x803d
    subi    r3, r3, 0x1f84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c6dac
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x800c6dac:
    extsh.  r0, r31
    ble-    branch_0x800c6dbc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c6dbc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TMapObjBaseFv
__dt__11TMapObjBaseFv: # 0x800c6dd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c6e28
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x800c6e28
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c6e28:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initNeonMatColor__11TTelesaSlotFv
initNeonMatColor__11TTelesaSlotFv: # 0x800c6e44
    blr


.globl getRollAngX__9TSlotDrumCFi
getRollAngX__9TSlotDrumCFi: # 0x800c6e48
    lwz     r3, 0x13c(r3)
    slwi    r0, r4, 2
    lfsx    f1, r3, r0
    blr


.globl getRollAngY__17TSirenaRollMapObjCFi
getRollAngY__17TSirenaRollMapObjCFi: # 0x800c6e58
    lfs     f1, -0x6130(rtoc)
    blr


.globl getRollAngZ__17TSirenaRollMapObjCFi
getRollAngZ__17TSirenaRollMapObjCFi: # 0x800c6e60
    lfs     f1, -0x6130(rtoc)
    blr


.globl kill__11TMapObjBaseFv
kill__11TMapObjBaseFv: # 0x800c6e68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getRadiusAtY__11TMapObjBaseCFf
getRadiusAtY__11TMapObjBaseCFf: # 0x800c6e94
    lfs     f1, 0xbc(r3)
    blr


.globl getTakingMtx__11TMapObjBaseFv
getTakingMtx__11TMapObjBaseFv: # 0x800c6e9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x800c6ebc
    li      r3, 0x0
    b       branch_0x800c6ec0

branch_0x800c6ebc:
    bl      getTakingMtx__10TLiveActorFv
branch_0x800c6ec0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setModelMtx__11TMapObjBaseFPA4_f
setModelMtx__11TMapObjBaseFPA4_f: # 0x800c6ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mr      r3, r31
    bl      PSMTXCopy
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadBeforeInit__11TMapObjBaseFR20JSUMemoryInputStream
loadBeforeInit__11TMapObjBaseFR20JSUMemoryInputStream: # 0x800c6f08
    blr


.globl calc__11TMapObjBaseFv
calc__11TMapObjBaseFv: # 0x800c6f0c
    blr


.globl draw__11TMapObjBaseCFv
draw__11TMapObjBaseCFv: # 0x800c6f10
    blr


.globl dead__11TMapObjBaseFv
dead__11TMapObjBaseFv: # 0x800c6f14
    blr


.globl getHitObjNumMax__11TMapObjBaseFv
getHitObjNumMax__11TMapObjBaseFv: # 0x800c6f18
    li      r3, 0x5
    blr


.globl getDepthAtFloating__11TMapObjBaseFv
getDepthAtFloating__11TMapObjBaseFv: # 0x800c6f20
    lfs     f1, -0x6130(rtoc)
    blr


.globl getRollAngX__17TSirenaRollMapObjCFi
getRollAngX__17TSirenaRollMapObjCFi: # 0x800c6f28
    lfs     f1, -0x6130(rtoc)
    blr


.globl touchWater__11TMapObjBaseFP9THitActor
touchWater__11TMapObjBaseFP9THitActor: # 0x800c6f30
    li      r3, 0x0
    blr


.globl __dt__17TSirenaRollMapObjFv
__dt__17TSirenaRollMapObjFv: # 0x800c6f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c6fa0
    lis     r3, 0x803b
    addi    r3, r3, 0x7da4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c6f90
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x800c6f90:
    extsh.  r0, r31
    ble-    branch_0x800c6fa0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c6fa0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TBossTelesaTongueFv
__dt__17TBossTelesaTongueFv: # 0x800c6fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c7024
    lis     r3, 0x803b
    addi    r3, r3, 0x7f14
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c7014
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800c7014:
    extsh.  r0, r31
    ble-    branch_0x800c7024
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c7024:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TBossTelesaBodyFv
__dt__15TBossTelesaBodyFv: # 0x800c7040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c70a8
    lis     r3, 0x803b
    addi    r3, r3, 0x7fb8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c7098
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800c7098:
    extsh.  r0, r31
    ble-    branch_0x800c70a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c70a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TBossTelesaManagerFv
__dt__18TBossTelesaManagerFv: # 0x800c70c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c710c
    lis     r3, 0x803c
    subi    r0, r3, 0x7fa4
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800c710c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c710c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl clipEnemies__18TBossTelesaManagerFPQ26JDrama9TGraphics
clipEnemies__18TBossTelesaManagerFPQ26JDrama9TGraphics: # 0x800c7128
    blr


.globl setAfterDeadEffect__7TBubbleFv
setAfterDeadEffect__7TBubbleFv: # 0x800c712c
    blr


.globl __dt__7TBubbleFv
__dt__7TBubbleFv: # 0x800c7130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c71b0
    lis     r3, 0x803c
    subi    r3, r3, 0x7f30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c71a0
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c71a0
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800c71a0:
    extsh.  r0, r31
    ble-    branch_0x800c71b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c71b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TBubbleManagerFv
__dt__14TBubbleManagerFv: # 0x800c71cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c7224
    lis     r3, 0x803c
    subi    r0, r3, 0x7d78
    stw     r0, 0x0(r30)
    beq-    branch_0x800c7214
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800c7214:
    extsh.  r0, r31
    ble-    branch_0x800c7224
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c7224:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_bosstelesa_cpp
__sinit_bosstelesa_cpp: # 0x800c7240
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x1af8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7288
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800c7288:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800c72b8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800c72b8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800c72e8
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800c72e8:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7318
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800c7318:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7348
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800c7348:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7378
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800c7378:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800c73a8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800c73a8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800c73d8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800c73d8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7408
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800c7408:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7438
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800c7438:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7468
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800c7468:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7498
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800c7498:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c74c8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800c74c8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800c74f8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800c74f8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7528
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800c7528:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__7TBubbleFv
_32___dt__7TBubbleFv: # 0x800c753c
    subi    r3, r3, 0x20
    b       __dt__7TBubbleFv


.globl _32___dt__15TBossTelesaBodyFv
_32___dt__15TBossTelesaBodyFv: # 0x800c7544
    subi    r3, r3, 0x20
    b       __dt__15TBossTelesaBodyFv


.globl _32___dt__17TBossTelesaTongueFv
_32___dt__17TBossTelesaTongueFv: # 0x800c754c
    subi    r3, r3, 0x20
    b       __dt__17TBossTelesaTongueFv


.globl _32___dt__17TSirenaRollMapObjFv
_32___dt__17TSirenaRollMapObjFv: # 0x800c7554
    subi    r3, r3, 0x20
    b       __dt__17TSirenaRollMapObjFv


.globl _32___dt__11TTelesaSlotFv
_32___dt__11TTelesaSlotFv: # 0x800c755c
    subi    r3, r3, 0x20
    b       __dt__11TTelesaSlotFv


.globl _32___dt__11TBossTelesaFv
_32___dt__11TBossTelesaFv: # 0x800c7564
    subi    r3, r3, 0x20
    b       __dt__11TBossTelesaFv


.globl _32___dt__25TBossTelesaKillSmallEnemyFv
_32___dt__25TBossTelesaKillSmallEnemyFv: # 0x800c756c
    subi    r3, r3, 0x20
    b       __dt__25TBossTelesaKillSmallEnemyFv

