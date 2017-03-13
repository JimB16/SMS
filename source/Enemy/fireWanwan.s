
.globl __dt__22TNerveFireWanwanEscapeFv
__dt__22TNerveFireWanwanEscapeFv: # 0x80085644
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80085688
    lis     r3, 0x803b
    addi    r0, r3, 0x3ec8
    stw     r0, 0x0(r31)
    beq-    branch_0x80085678
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80085678:
    extsh.  r0, r4
    ble-    branch_0x80085688
    mr      r3, r31
    bl      __dl__FPv
branch_0x80085688:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveFireWanwanEscapeCFP24TSpineBase_10TLiveActor_
execute__22TNerveFireWanwanEscapeCFP24TSpineBase_10TLiveActor_: # 0x800856a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80085790
    mr      r3, r31
    bl      initEscapeNextGraphNode__11TFireWanwanFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtkFromIndex__6MActorFi
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r29, 0x0
    li      r4, 0x4
    bl      setFrameRate__6MActorFfi
    lwz     r28, 0x238(r31)
    li      r4, 0x28
    lwz     r5, 0x0(r28)
    addi    r3, r28, 0x18
    lwz     r0, 0x4(r28)
    stw     r5, 0x8(r28)
    stw     r0, 0xc(r28)
    lwz     r5, -0x6878(rtoc)
    lwz     r0, -0x6874(rtoc)
    stw     r5, 0x10(r28)
    stw     r0, 0x14(r28)
    bl      init__12J3DFrameCtrlFs
    li      r29, 0x0
    stb     r29, 0x1c(r28)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r28)
    li      r4, 0x28
    lwz     r3, 0x194(r31)
    lwz     r28, 0xbc(r3)
    lwz     r5, 0x0(r28)
    addi    r3, r28, 0x18
    lwz     r0, 0x4(r28)
    stw     r5, 0x8(r28)
    stw     r0, 0xc(r28)
    lwz     r5, -0x6878(rtoc)
    lwz     r0, -0x6874(rtoc)
    stw     r5, 0x10(r28)
    stw     r0, 0x14(r28)
    bl      init__12J3DFrameCtrlFs
    stb     r29, 0x1c(r28)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r28)
branch_0x80085790:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x334(r3)
    lwz     r0, 0x20(r30)
    cmpw    r3, r0
    bge-    branch_0x80085834
    lbz     r0, -0x6d50(r13)
    extsb.  r0, r0
    bne-    branch_0x800857f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d4c(r13)
    addi    r0, r3, 0x3f18
    lis     r4, 0x8008
    stw     r0, -0x6d4c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf10
    addi    r4, r4, 0x5940
    subi    r3, r13, 0x6d4c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d50(r13)
branch_0x800857f8:
    subi    r4, r13, 0x6d4c
    cmplwi  r4, 0x0
    beq-    branch_0x8008582c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8008582c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8008582c:
    li      r3, 0x1
    b       branch_0x80085920

branch_0x80085834:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80085858
    mr      r3, r31
    bl      goToRandomEscapeGraphNode__11TSpineEnemyFv
branch_0x80085858:
    lwz     r0, 0x160(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80085890
    lwz     r29, 0x74(r31)
    li      r4, 0x1
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80085888
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x80085888:
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x80085890:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800858bc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800858bc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x320(r3)
    mr      r3, r31
    lfs     f1, 0x140(r31)
    lfs     f2, 0x144(r31)
    fmuls   f1, f1, f0
    lfs     f3, -0x6868(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
    lwz     r3, gpMSound(r13)
    li      r4, 0x20dd
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008591c
    addi    r4, r31, 0x10
    li      r3, 0x20dd
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008591c:
    li      r3, 0x0
branch_0x80085920:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__23TNerveFireWanwanRecoverFv
__dt__23TNerveFireWanwanRecoverFv: # 0x80085940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80085984
    lis     r3, 0x803b
    addi    r0, r3, 0x3f18
    stw     r0, 0x0(r31)
    beq-    branch_0x80085974
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80085974:
    extsh.  r0, r4
    ble-    branch_0x80085984
    mr      r3, r31
    bl      __dl__FPv
branch_0x80085984:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__22TNerveFireWanwanEscapeFv
theNerve__22TNerveFireWanwanEscapeFv: # 0x8008599c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6d28(r13)
    extsb.  r0, r0
    bne-    branch_0x800859ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d24(r13)
    addi    r0, r3, 0x3ec8
    lis     r4, 0x8008
    stw     r0, -0x6d24(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf4c
    addi    r4, r4, 0x5644
    subi    r3, r13, 0x6d24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d28(r13)
branch_0x800859ec:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6d24
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__22TNerveFireWanwanFreezeCFP24TSpineBase_10TLiveActor_
execute__22TNerveFireWanwanFreezeCFP24TSpineBase_10TLiveActor_: # 0x80085a00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80085a94
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      setBtkFromIndex__6MActorFi
    lwz     r30, 0x74(r29)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      setFrameRate__6MActorFfi
    lwz     r3, gpMSound(r13)
    li      r4, 0x28a6
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80085a94
    addi    r4, r29, 0x10
    li      r3, 0x28a6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80085a94:
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x34(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x3c(sp)
    stw     r0, 0xb4(r29)
    lwz     r3, 0x1b0(r29)
    lwz     r0, 0x20(r31)
    addi    r3, r3, 0x4b
    cmpw    r3, r0
    bge-    branch_0x80085b50
    lbz     r0, -0x6d50(r13)
    extsb.  r0, r0
    bne-    branch_0x80085b14
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d4c(r13)
    addi    r0, r3, 0x3f18
    lis     r4, 0x8008
    stw     r0, -0x6d4c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf10
    addi    r4, r4, 0x5940
    subi    r3, r13, 0x6d4c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d50(r13)
branch_0x80085b14:
    subi    r4, r13, 0x6d4c
    cmplwi  r4, 0x0
    beq-    branch_0x80085b48
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80085b48
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80085b48:
    li      r3, 0x1
    b       branch_0x80085b54

branch_0x80085b50:
    li      r3, 0x0
branch_0x80085b54:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl theNerve__22TNerveFireWanwanFreezeFv
theNerve__22TNerveFireWanwanFreezeFv: # 0x80085b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6d30(r13)
    extsb.  r0, r0
    bne-    branch_0x80085bc0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d2c(r13)
    addi    r0, r3, 0x3ed8
    lis     r4, 0x8008
    stw     r0, -0x6d2c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf40
    addi    r4, r4, 0x5bd4
    subi    r3, r13, 0x6d2c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d30(r13)
branch_0x80085bc0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6d2c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__22TNerveFireWanwanFreezeFv
__dt__22TNerveFireWanwanFreezeFv: # 0x80085bd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80085c18
    lis     r3, 0x803b
    addi    r0, r3, 0x3ed8
    stw     r0, 0x0(r31)
    beq-    branch_0x80085c08
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80085c08:
    extsh.  r0, r4
    ble-    branch_0x80085c18
    mr      r3, r31
    bl      __dl__FPv
branch_0x80085c18:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveFireWanwanFlyCFP24TSpineBase_10TLiveActor_
execute__19TNerveFireWanwanFlyCFP24TSpineBase_10TLiveActor_: # 0x80085c30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stw     r31, 0xfc(sp)
    stw     r30, 0xf8(sp)
    mr      r30, r4
    stw     r29, 0xf4(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80085ddc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtkFromIndex__6MActorFi
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r29, 0x0
    li      r4, 0x4
    bl      setFrameRate__6MActorFfi
    lfs     f1, -0x6858(rtoc)
    addi    r3, sp, 0xc4
    lfs     f0, 0x34(r31)
    lwz     r5, 0x194(r31)
    fmuls   f0, f1, f0
    lwz     r0, -0x5eac(r13)
    lfs     f4, 0xcc(r5)
    lwz     r6, -0x5ea4(r13)
    fctiwz  f0, f0
    lwz     r4, -0x5ea8(r13)
    lfs     f2, -0x6868(rtoc)
    stfd    f0, 0xe8(sp)
    lwz     r5, 0xec(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c
    lwz     r0, 0xc4(sp)
    addi    r6, sp, 0xac
    lwz     r3, 0xc8(sp)
    mr      r5, r31
    stw     r0, 0x10(sp)
    lwz     r0, 0xcc(sp)
    stw     r3, 0x14(sp)
    li      r3, 0x9
    stw     r0, 0x18(sp)
    lwz     r7, 0x10(sp)
    lwz     r4, 0x14(sp)
    stw     r7, 0xdc(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0xe0(sp)
    stw     r0, 0xe4(sp)
    stw     r7, 0xac(r31)
    stw     r4, 0xb0(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0xb4(r31)
    lfs     f0, -0x6854(rtoc)
    lbz     r0, -0x7ed8(r13)
    stfs    f0, 0xac(sp)
    mulli   r0, r0, 0x30
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xb4(sp)
    lwz     r4, 0x74(r31)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xe0(sp)
    lfs     f2, 0xe4(sp)
    fmuls   f0, f0, f0
    lfs     f1, 0xdc(sp)
    lfs     f3, 0x424(r3)
    fmuls   f2, f2, f2
    fmadds  f0, f1, f1, f0
    fmuls   f1, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x80085dc0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x158(r3)
    stw     r0, 0x1b0(r31)
    b       branch_0x80085ddc

branch_0x80085dc0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x438(r3)
    stw     r0, 0x1b0(r31)
branch_0x80085ddc:
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xd8(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x370(r3)
    lfs     f0, 0xd0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd0(sp)
    lfs     f0, 0xd4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd8(sp)
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xd8(sp)
    stw     r0, 0xb4(r31)
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd0(sp)
    lfs     f3, 0xd8(sp)
    lfs     f0, 0xd4(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6854(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80085efc
    lbz     r0, -0x6d30(r13)
    extsb.  r0, r0
    bne-    branch_0x80085ec0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d2c(r13)
    addi    r0, r3, 0x3ed8
    lis     r4, 0x8008
    stw     r0, -0x6d2c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf40
    addi    r4, r4, 0x5bd4
    subi    r3, r13, 0x6d2c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d30(r13)
branch_0x80085ec0:
    subi    r4, r13, 0x6d2c
    cmplwi  r4, 0x0
    beq-    branch_0x80085ef4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80085ef4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80085ef4:
    li      r3, 0x1
    b       branch_0x80085f00

branch_0x80085efc:
    li      r3, 0x0
branch_0x80085f00:
    lwz     r0, 0x104(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    mtlr    r0
    lwz     r29, 0xf4(sp)
    addi    sp, sp, 0x100
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c
set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c: # 0x80085f1c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __dt__19TNerveFireWanwanFlyFv
__dt__19TNerveFireWanwanFlyFv: # 0x80085f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80085f70
    lis     r3, 0x803b
    addi    r0, r3, 0x3ee8
    stw     r0, 0x0(r31)
    beq-    branch_0x80085f60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80085f60:
    extsh.  r0, r4
    ble-    branch_0x80085f70
    mr      r3, r31
    bl      __dl__FPv
branch_0x80085f70:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveFireWanwanHungTailCFP24TSpineBase_10TLiveActor_
execute__24TNerveFireWanwanHungTailCFP24TSpineBase_10TLiveActor_: # 0x80085f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    stw     r29, 0x64(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80085fec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtkFromIndex__6MActorFi
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r29, 0x0
    li      r4, 0x4
    bl      setFrameRate__6MActorFfi
branch_0x80085fec:
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f2, -0x6868(rtoc)
    lfs     f1, 0x54(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80086068
    lfs     f0, 0x4c(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80086060
    lfs     f0, -0x6850(rtoc)
    b       branch_0x800860e4

branch_0x80086060:
    lfs     f0, -0x684c(rtoc)
    b       branch_0x800860e4

branch_0x80086068:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800860a8
    lfs     f2, 0x4c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6848(rtoc)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    stw     r0, 0x58(sp)
    lfd     f1, 0x58(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x800860e4

branch_0x800860a8:
    fneg    f1, f1
    lfs     f2, 0x4c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6848(rtoc)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6844(rtoc)
    stw     r0, 0x58(sp)
    lfd     f2, 0x58(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x800860e4:
    stfs    f0, 0x34(r31)
    lwz     r3, 0x194(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80086100
    li      r0, 0x1
    b       branch_0x80086104

branch_0x80086100:
    li      r0, 0x0
branch_0x80086104:
    cmpwi   r0, 0x0
    li      r29, 0x0
    bne-    branch_0x80086148
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x194(r31)
    mr      r31, r3
    lwz     r3, 0xa4(r4)
    bl      getLength__11TTailRubberCFv
    lfs     f0, 0x3d4(r31)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80086148
    li      r29, 0x1
branch_0x80086148:
    clrlwi. r0, r29, 24
    beq-    branch_0x800861d0
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x80086194
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r4, 0x8008
    stw     r0, -0x6d34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf34
    addi    r4, r4, 0x5f2c
    subi    r3, r13, 0x6d34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x80086194:
    subi    r4, r13, 0x6d34
    cmplwi  r4, 0x0
    beq-    branch_0x800861c8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800861c8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800861c8:
    li      r3, 0x1
    b       branch_0x800861d4

branch_0x800861d0:
    li      r3, 0x0
branch_0x800861d4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__24TNerveFireWanwanHungTailFv
__dt__24TNerveFireWanwanHungTailFv: # 0x800861f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80086234
    lis     r3, 0x803b
    addi    r0, r3, 0x3ef8
    stw     r0, 0x0(r31)
    beq-    branch_0x80086224
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80086224:
    extsh.  r0, r4
    ble-    branch_0x80086234
    mr      r3, r31
    bl      __dl__FPv
branch_0x80086234:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveFireWanwanDieCFP24TSpineBase_10TLiveActor_
execute__19TNerveFireWanwanDieCFP24TSpineBase_10TLiveActor_: # 0x8008624c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80086410
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x194(r31)
    li      r4, 0x0
    li      r0, -0x1
    stb     r4, 0xc0(r3)
    lfs     f0, -0x6850(rtoc)
    stfs    f0, 0x30(r31)
    lwz     r4, 0x70(r31)
    stw     r31, 0x70(r4)
    stw     r0, 0x68(r4)
    lwz     r3, 0x38(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800862c4
    lwz     r5, 0x14(r4)
    b       branch_0x800862dc

branch_0x800862c4:
    lbz     r0, 0xa4(r3)
    lwz     r5, 0x14(r4)
    cmpw    r0, r5
    ble-    branch_0x800862d8
    b       branch_0x800862dc

branch_0x800862d8:
    mr      r5, r0
branch_0x800862dc:
    lwz     r3, 0x6c(r4)
    addi    r0, r3, 0x1
    cmpw    r0, r5
    stw     r0, 0x6c(r4)
    bne-    branch_0x80086304
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x19
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x80086304:
    lwz     r3, 0x1b8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80086318
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x80086318:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28e3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80086348
    addi    r4, r31, 0x10
    li      r3, 0x28e3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80086348:
    lwz     r29, 0x238(r31)
    li      r4, 0x28
    lwz     r5, 0x0(r29)
    addi    r3, r29, 0x18
    lwz     r0, 0x4(r29)
    stw     r5, 0x8(r29)
    stw     r0, 0xc(r29)
    lwz     r5, -0x6870(rtoc)
    lwz     r0, -0x686c(rtoc)
    stw     r5, 0x10(r29)
    stw     r0, 0x14(r29)
    bl      init__12J3DFrameCtrlFs
    li      r30, 0x0
    stb     r30, 0x1c(r29)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r29)
    li      r4, 0x28
    lwz     r3, 0x194(r31)
    lwz     r29, 0xbc(r3)
    lwz     r5, 0x0(r29)
    addi    r3, r29, 0x18
    lwz     r0, 0x4(r29)
    stw     r5, 0x8(r29)
    stw     r0, 0xc(r29)
    lwz     r5, -0x6870(rtoc)
    lwz     r0, -0x686c(rtoc)
    stw     r5, 0x10(r29)
    stw     r0, 0x14(r29)
    bl      init__12J3DFrameCtrlFs
    stb     r30, 0x1c(r29)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r29)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1000
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    stb     r30, 0x13c(r31)
    lfs     f1, 0x5c(r31)
    lfs     f0, -0x6838(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x80086410:
    lwz     r3, 0xac(r31)
    li      r4, 0x20e4
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x6834(rtoc)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x90(sp)
    lfs     f0, 0x88(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x88(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x90(sp)
    stw     r0, 0xb4(r31)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008648c
    addi    r4, r31, 0x10
    li      r3, 0x20e4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008648c:
    lwz     r0, 0xac(sp)
    li      r3, 0x0
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl theNerve__19TNerveFireWanwanDieFv
theNerve__19TNerveFireWanwanDieFv: # 0x800864ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x800864fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d44(r13)
    addi    r0, r3, 0x3f08
    lis     r4, 0x8008
    stw     r0, -0x6d44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf1c
    addi    r4, r4, 0x6510
    subi    r3, r13, 0x6d44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x800864fc:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6d44
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__19TNerveFireWanwanDieFv
__dt__19TNerveFireWanwanDieFv: # 0x80086510
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80086554
    lis     r3, 0x803b
    addi    r0, r3, 0x3f08
    stw     r0, 0x0(r31)
    beq-    branch_0x80086544
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80086544:
    extsh.  r0, r4
    ble-    branch_0x80086554
    mr      r3, r31
    bl      __dl__FPv
branch_0x80086554:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveFireWanwanRecoverCFP24TSpineBase_10TLiveActor_
execute__23TNerveFireWanwanRecoverCFP24TSpineBase_10TLiveActor_: # 0x8008656c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    mr      r30, r4
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800866ec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    lfs     f1, -0x6868(rtoc)
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r4, 0x70(r31)
    lwz     r3, 0x68(r4)
    cmpwi   r3, 0x0
    ble-    branch_0x800865f4
    subi    r0, r3, 0x1
    stw     r0, 0x68(r4)
branch_0x800865f4:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28e2
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80086624
    addi    r4, r31, 0x10
    li      r3, 0x28e2
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80086624:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r28, 0x238(r31)
    lis     r5, 0x4330
    lha     r0, 0x8(r3)
    lfd     f1, -0x6840(rtoc)
    addi    r3, r28, 0x18
    xoris   r6, r0, 0x8000
    lwz     r4, 0x0(r28)
    lwz     r0, 0x4(r28)
    stw     r6, 0xac(sp)
    stw     r4, 0x8(r28)
    stw     r0, 0xc(r28)
    stw     r5, 0xa8(sp)
    lwz     r4, -0x6880(rtoc)
    lfd     f0, 0xa8(sp)
    lwz     r0, -0x687c(rtoc)
    fsubs   f0, f0, f1
    stw     r4, 0x10(r28)
    stw     r0, 0x14(r28)
    fctiwz  f31, f0
    lwz     r4, 0x0(r28)
    lwz     r0, 0x4(r28)
    stfd    f31, 0xa0(sp)
    stw     r4, 0x0(r28)
    lwz     r4, 0xa4(sp)
    stw     r0, 0x4(r28)
    bl      init__12J3DFrameCtrlFs
    li      r29, 0x0
    stb     r29, 0x1c(r28)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r28)
    lwz     r3, 0x194(r31)
    stfd    f31, 0x98(sp)
    lwz     r28, 0xbc(r3)
    lwz     r4, 0x9c(sp)
    lwz     r5, 0x0(r28)
    addi    r3, r28, 0x18
    lwz     r0, 0x4(r28)
    stw     r5, 0x8(r28)
    stw     r0, 0xc(r28)
    lwz     r5, -0x6880(rtoc)
    lwz     r0, -0x687c(rtoc)
    stw     r5, 0x10(r28)
    stw     r0, 0x14(r28)
    bl      init__12J3DFrameCtrlFs
    stb     r29, 0x1c(r28)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r28)
branch_0x800866ec:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80086788
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80086738
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8008673c

branch_0x80086738:
    li      r0, 0x1
branch_0x8008673c:
    stb     r0, 0x13c(r31)
    li      r0, 0x1
    lwz     r3, 0x194(r31)
    stb     r0, 0xc0(r3)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80086780
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x80086780
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80086780:
    li      r3, 0x1
    b       branch_0x8008678c

branch_0x80086788:
    li      r3, 0x0
branch_0x8008678c:
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    mtlr    r0
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc8
    blr


.globl theNerve__23TNerveFireWanwanRecoverFv
theNerve__23TNerveFireWanwanRecoverFv: # 0x800867b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6d50(r13)
    extsb.  r0, r0
    bne-    branch_0x80086800
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d4c(r13)
    addi    r0, r3, 0x3f18
    lis     r4, 0x8008
    stw     r0, -0x6d4c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf10
    addi    r4, r4, 0x5940
    subi    r3, r13, 0x6d4c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d50(r13)
branch_0x80086800:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6d4c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__28TNerveFireWanwanRecoverGraphCFP24TSpineBase_10TLiveActor_
execute__28TNerveFireWanwanRecoverGraphCFP24TSpineBase_10TLiveActor_: # 0x80086814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stw     r31, 0xdc(sp)
    stw     r30, 0xd8(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80086a4c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x124(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r0, 0x8(r4)
    lwz     r4, 0x124(r31)
    stw     r0, 0x4(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x80086890
    addi    r6, r4, 0x10
    b       branch_0x80086894

branch_0x80086890:
    addi    r6, r3, 0x4
branch_0x80086894:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x9c
    lwz     r0, 0x4(r6)
    mr      r4, r3
    stw     r5, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xcc(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lwz     r0, 0xc4(sp)
    lwz     r5, 0xc8(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0xcc(sp)
    stw     r5, 0xa0(sp)
    lfs     f0, -0x6868(rtoc)
    stw     r0, 0xa4(sp)
    stfs    f0, 0xa0(sp)
    lfs     f31, -0x6854(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x6830(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80086930
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0x9c(sp)
    b       branch_0x80086944

branch_0x80086930:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x9c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80086944:
    lfs     f1, -0x6868(rtoc)
    addi    r3, sp, 0xa8
    lfs     f3, -0x6854(rtoc)
    fmr     f2, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c
    lfs     f2, 0xc8(sp)
    li      r0, 0x0
    lfs     f0, 0xac(sp)
    lfs     f1, -0x6830(rtoc)
    fmuls   f2, f2, f0
    lfs     f4, 0xc4(sp)
    lfs     f3, 0xa8(sp)
    fneg    f0, f1
    lfs     f5, 0xcc(sp)
    fmadds  f3, f4, f3, f2
    lfs     f4, 0xb0(sp)
    lfs     f2, -0x682c(rtoc)
    fmadds  f3, f5, f4, f3
    fsubs   f2, f3, f2
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x800869ac
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x800869ac
    li      r0, 0x1
branch_0x800869ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x800869ec
    lfs     f1, -0x6828(rtoc)
    lfs     f0, -0x6860(rtoc)
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x1cc(r31)
    stfs    f31, 0x1d0(r31)
    stfs    f0, 0x1d4(r31)
    stfs    f1, 0x1d8(r31)
    b       branch_0x80086a10

branch_0x800869ec:
    lfs     f0, -0x6868(rtoc)
    addi    r4, sp, 0xb4
    lfs     f1, -0x6854(rtoc)
    addi    r3, r31, 0x1cc
    stfs    f0, 0xb4(sp)
    addi    r5, sp, 0x9c
    stfs    f0, 0xb8(sp)
    stfs    f1, 0xbc(sp)
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
branch_0x80086a10:
    lfs     f2, -0x6824(rtoc)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x6860(rtoc)
    fmuls   f1, f2, f1
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x1bc(r31)
    stfs    f31, 0x1c0(r31)
    stfs    f0, 0x1c4(r31)
    stfs    f1, 0x1c8(r31)
branch_0x80086a4c:
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi. r0, r0, 24
    beq-    branch_0x80086cd4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x6840(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f3, 0x10(r3)
    stw     r4, 0xd4(sp)
    lfs     f1, -0x6868(rtoc)
    stw     r0, 0xd0(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f3, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x80086ab0
    b       branch_0x80086ac4

branch_0x80086ab0:
    lfs     f1, -0x6854(rtoc)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80086ac0
    b       branch_0x80086ac4

branch_0x80086ac0:
    fmr     f1, f0
branch_0x80086ac4:
    lfs     f0, 0x1bc(r31)
    addi    r3, sp, 0x80
    addi    r4, r31, 0x1cc
    stfs    f0, 0x80(sp)
    lfs     f0, 0x1c0(r31)
    stfs    f0, 0x84(sp)
    lfs     f0, 0x1c4(r31)
    stfs    f0, 0x88(sp)
    lfs     f0, 0x1c8(r31)
    stfs    f0, 0x8c(sp)
    bl      slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f
    addi    r3, sp, 0x80
    lfs     f31, -0x6854(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x6830(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80086b28
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x84(sp)
    stfs    f0, 0x80(sp)
    b       branch_0x80086b3c

branch_0x80086b28:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x80
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x80086b3c:
    lfs     f0, -0x6868(rtoc)
    addi    r3, sp, 0x3c
    stfs    f0, 0x90(sp)
    stfs    f0, 0x94(sp)
    lfs     f0, -0x6854(rtoc)
    stfs    f0, 0x98(sp)
    bl      __ct__Q29JGeometry8TVec4_f_Fv
    lfs     f5, 0x88(sp)
    addi    r3, sp, 0x90
    lfs     f7, 0x94(sp)
    lfs     f4, 0x90(sp)
    lfs     f10, 0x80(sp)
    fmuls   f2, f5, f7
    lfs     f9, 0x84(sp)
    fmuls   f0, f5, f4
    lfs     f6, 0x98(sp)
    fmuls   f1, f9, f4
    fneg    f11, f10
    lfs     f8, 0x8c(sp)
    fmsubs  f3, f9, f6, f2
    fmsubs  f1, f10, f7, f1
    fmadds  f2, f11, f6, f0
    fmadds  f3, f8, f4, f3
    fmuls   f0, f9, f7
    fmadds  f2, f8, f7, f2
    stfs    f3, 0x3c(sp)
    fmadds  f1, f8, f6, f1
    fmsubs  f0, f11, f4, f0
    stfs    f2, 0x40(sp)
    fneg    f10, f5
    fnmsubs  f0, f5, f6, f0
    stfs    f1, 0x44(sp)
    fneg    f6, f9
    stfs    f0, 0x48(sp)
    lfs     f0, 0x40(sp)
    lfs     f3, 0x3c(sp)
    fmuls   f2, f0, f10
    lfs     f4, 0x44(sp)
    fmuls   f1, f0, f8
    lfs     f7, 0x48(sp)
    fmuls   f0, f0, f11
    fmadds  f2, f3, f8, f2
    fmsubs  f0, f3, f6, f0
    fmadds  f1, f3, f5, f1
    fnmsubs  f3, f4, f6, f2
    fmadds  f0, f4, f8, f0
    fmadds  f2, f4, f11, f1
    fmadds  f1, f7, f11, f3
    fmadds  f3, f7, f10, f0
    fmadds  f2, f7, f6, f2
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c
    lfs     f2, -0x6868(rtoc)
    lfs     f1, 0x98(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80086c38
    lfs     f0, 0x90(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80086c30
    lfs     f1, -0x6850(rtoc)
    b       branch_0x80086cb4

branch_0x80086c30:
    lfs     f1, -0x684c(rtoc)
    b       branch_0x80086cb4

branch_0x80086c38:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80086c78
    lfs     f2, 0x90(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6848(rtoc)
    stw     r0, 0xd4(sp)
    lis     r0, 0x4330
    stw     r0, 0xd0(sp)
    lfd     f1, 0xd0(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x80086cb4

branch_0x80086c78:
    fneg    f1, f1
    lfs     f2, 0x90(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6848(rtoc)
    stw     r0, 0xd4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6844(rtoc)
    stw     r0, 0xd0(sp)
    lfd     f2, 0xd0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x80086cb4:
    lfs     f2, -0x6868(rtoc)
    lfs     f3, -0x6820(rtoc)
    bl      MsWrap_f___Ffff_80086e14
    stfs    f1, 0x34(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    b       branch_0x80086d00

branch_0x80086cd4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80086d00
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80086d00:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80086d94
    lbz     r0, -0x6d80(r13)
    extsb.  r0, r0
    bne-    branch_0x80086d58
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d7c(r13)
    addi    r0, r3, 0x3f78
    lis     r4, 0x8008
    stw     r0, -0x6d7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xec8
    addi    r4, r4, 0x6db8
    subi    r3, r13, 0x6d7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d80(r13)
branch_0x80086d58:
    subi    r4, r13, 0x6d7c
    cmplwi  r4, 0x0
    beq-    branch_0x80086d8c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80086d8c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80086d8c:
    li      r3, 0x1
    b       branch_0x80086d98

branch_0x80086d94:
    li      r3, 0x0
branch_0x80086d98:
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    addi    sp, sp, 0xf0
    blr


.globl __dt__27TNerveFireWanwanGraphWanderFv
__dt__27TNerveFireWanwanGraphWanderFv: # 0x80086db8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80086dfc
    lis     r3, 0x803b
    addi    r0, r3, 0x3f78
    stw     r0, 0x0(r31)
    beq-    branch_0x80086dec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80086dec:
    extsh.  r0, r4
    ble-    branch_0x80086dfc
    mr      r3, r31
    bl      __dl__FPv
branch_0x80086dfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl MsWrap_f___Ffff_80086e14
MsWrap_f___Ffff_80086e14: # 0x80086e14
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x80086e50
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x81828, 0x80086e2c - 0x80086e28
branch_0x80086e2c:
    fsubs   f1, f1, f0
branch_0x80086e30:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x80086e2c
    b       branch_0x80086e44

branch_0x80086e40:
    fadds   f1, f1, f0
branch_0x80086e44:
    fcmpo   cr0, f1, f2
    blt+    branch_0x80086e40
    blr

branch_0x80086e50:
    fsubs   f0, f3, f2
    b       branch_0x80086e30


.incbin "./baserom/code/Text_0x80005600.bin", 0x81858, 0x80086e5c - 0x80086e58

.globl slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f
slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f: # 0x80086e5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stfd    f28, 0x98(sp)
    stfd    f27, 0x90(sp)
    stfd    f26, 0x88(sp)
    stfd    f25, 0x80(sp)
    stfd    f24, 0x78(sp)
    stfd    f23, 0x70(sp)
    fmr     f23, f1
    stfd    f22, 0x68(sp)
    stfd    f21, 0x60(sp)
    stfd    f20, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    mr      r30, r3
    lfs     f2, 0x0(r3)
    lfs     f1, 0x4(r3)
    fmuls   f2, f2, f2
    lfs     f3, 0x8(r3)
    fmuls   f1, f1, f1
    lfs     f4, 0xc(r3)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lfs     f0, -0x6830(rtoc)
    fmuls   f2, f4, f4
    fadds   f1, f3, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80086efc
    lfs     f31, -0x6868(rtoc)
    fmr     f30, f31
    fmr     f29, f30
    fmr     f28, f29
    b       branch_0x80086f28

branch_0x80086efc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6854(rtoc)
    lfs     f3, 0x0(r30)
    fmuls   f4, f0, f1
    lfs     f2, 0x4(r30)
    lfs     f1, 0x8(r30)
    lfs     f0, 0xc(r30)
    fmuls   f28, f3, f4
    fmuls   f29, f2, f4
    fmuls   f30, f1, f4
    fmuls   f31, f0, f4
branch_0x80086f28:
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r31)
    fmuls   f0, f0, f0
    lfs     f3, 0xc(r31)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    lfs     f0, -0x6830(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80086f78
    lfs     f27, -0x6868(rtoc)
    fmr     f26, f27
    fmr     f25, f26
    fmr     f24, f25
    b       branch_0x80086fa4

branch_0x80086f78:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6854(rtoc)
    lfs     f3, 0x0(r31)
    fmuls   f4, f0, f1
    lfs     f2, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0xc(r31)
    fmuls   f24, f3, f4
    fmuls   f25, f2, f4
    fmuls   f26, f1, f4
    fmuls   f27, f0, f4
branch_0x80086fa4:
    fmuls   f1, f29, f25
    lfs     f0, -0x6868(rtoc)
    fmadds  f1, f28, f24, f1
    fmadds  f1, f30, f26, f1
    fmadds  f1, f31, f27, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80086fcc
    fneg    f1, f1
    li      r31, 0x1
    b       branch_0x80086fd0

branch_0x80086fcc:
    li      r31, 0x0
branch_0x80086fd0:
    lfs     f3, -0x6854(rtoc)
    lfs     f0, -0x6830(rtoc)
    fsubs   f2, f3, f1
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80086ff0
    fsubs   f21, f3, f23
    b       branch_0x80087020

branch_0x80086ff0:
    bl      acosf
    fmr     f20, f1
    bl      sinf
    lfs     f0, -0x6854(rtoc)
    fmr     f22, f1
    fsubs   f0, f0, f23
    fmuls   f1, f0, f20
    bl      sinf
    fdivs   f21, f1, f22
    fmuls   f1, f23, f20
    bl      sinf
    fdivs   f23, f1, f22
branch_0x80087020:
    clrlwi. r0, r31, 24
    beq-    branch_0x8008702c
    fneg    f23, f23
branch_0x8008702c:
    fmuls   f0, f23, f24
    fmuls   f2, f23, f25
    fmuls   f1, f23, f26
    fmadds  f3, f21, f28, f0
    fmuls   f0, f23, f27
    fmadds  f2, f21, f29, f2
    stfs    f3, 0x0(r30)
    fmadds  f1, f21, f30, f1
    fmadds  f0, f21, f31, f0
    stfs    f2, 0x4(r30)
    stfs    f1, 0x8(r30)
    stfs    f0, 0xc(r30)
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    lfd     f29, 0xa0(sp)
    lfd     f28, 0x98(sp)
    lfd     f27, 0x90(sp)
    lfd     f26, 0x88(sp)
    lfd     f25, 0x80(sp)
    lfd     f24, 0x78(sp)
    lfd     f23, 0x70(sp)
    lfd     f22, 0x68(sp)
    lfd     f21, 0x60(sp)
    lfd     f20, 0x58(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl __dt__28TNerveFireWanwanRecoverGraphFv
__dt__28TNerveFireWanwanRecoverGraphFv: # 0x800870a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800870e8
    lis     r3, 0x803b
    addi    r0, r3, 0x3f28
    stw     r0, 0x0(r31)
    beq-    branch_0x800870d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800870d8:
    extsh.  r0, r4
    ble-    branch_0x800870e8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800870e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveFireWanwanTiredCFP24TSpineBase_10TLiveActor_
execute__21TNerveFireWanwanTiredCFP24TSpineBase_10TLiveActor_: # 0x80087100
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80087140
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80087140:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800872ac
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x144(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x800872ac
    mr      r3, r30
    lfs     f1, -0x6854(rtoc)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008722c
    lbz     r0, -0x6d70(r13)
    extsb.  r0, r0
    bne-    branch_0x800871f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d6c(r13)
    addi    r0, r3, 0x3f58
    lis     r4, 0x8008
    stw     r0, -0x6d6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xee0
    addi    r4, r4, 0x72c8
    subi    r3, r13, 0x6d6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d70(r13)
branch_0x800871f4:
    subi    r4, r13, 0x6d6c
    cmplwi  r4, 0x0
    beq-    branch_0x800872a4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800872a4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x800872a4

branch_0x8008722c:
    lbz     r0, -0x6d58(r13)
    extsb.  r0, r0
    bne-    branch_0x80087270
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d54(r13)
    addi    r0, r3, 0x3f28
    lis     r4, 0x8008
    stw     r0, -0x6d54(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf04
    addi    r4, r4, 0x70a4
    subi    r3, r13, 0x6d54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d58(r13)
branch_0x80087270:
    subi    r4, r13, 0x6d54
    cmplwi  r4, 0x0
    beq-    branch_0x800872a4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800872a4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800872a4:
    li      r3, 0x1
    b       branch_0x800872b0

branch_0x800872ac:
    li      r3, 0x0
branch_0x800872b0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__25TNerveFireWanwanFindMarioFv
__dt__25TNerveFireWanwanFindMarioFv: # 0x800872c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8008730c
    lis     r3, 0x803b
    addi    r0, r3, 0x3f58
    stw     r0, 0x0(r31)
    beq-    branch_0x800872fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800872fc:
    extsh.  r0, r4
    ble-    branch_0x8008730c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8008730c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__21TNerveFireWanwanTiredFv
__dt__21TNerveFireWanwanTiredFv: # 0x80087324
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80087368
    lis     r3, 0x803b
    addi    r0, r3, 0x3f38
    stw     r0, 0x0(r31)
    beq-    branch_0x80087358
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80087358:
    extsh.  r0, r4
    ble-    branch_0x80087368
    mr      r3, r31
    bl      __dl__FPv
branch_0x80087368:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveFireWanwanAttackCFP24TSpineBase_10TLiveActor_
execute__22TNerveFireWanwanAttackCFP24TSpineBase_10TLiveActor_: # 0x80087380
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r4
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80087444
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x6868(rtoc)
    stw     r3, 0x4c(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x58(sp)
    beq-    branch_0x800873fc
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f2, 0x58(sp)
branch_0x800873fc:
    lwz     r3, 0x4c(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r29)
    lwz     r4, 0x50(sp)
    lwz     r3, 0x54(sp)
    stw     r4, 0xf8(r29)
    stw     r3, 0xfc(r29)
    lwz     r3, 0x58(sp)
    stw     r3, 0x100(r29)
    lwz     r3, 0x4c(sp)
    stw     r3, 0x104(r29)
    lwz     r4, 0x50(sp)
    lwz     r3, 0x54(sp)
    stw     r4, 0x108(r29)
    stw     r3, 0x10c(r29)
    lwz     r3, 0x58(sp)
    stw     r3, 0x110(r29)
    stw     r0, 0x118(r29)
branch_0x80087444:
    lwz     r0, 0x160(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x80087480
    lwz     r30, 0x74(r29)
    li      r4, 0x1
    addi    r3, r30, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80087474
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x80087474:
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
    b       branch_0x800874b0

branch_0x80087480:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2f8(r3)
    mr      r3, r29
    lfs     f1, 0x140(r29)
    lfs     f2, 0x144(r29)
    fmuls   f1, f1, f0
    lfs     f3, -0x6868(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800874b0:
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800874dc
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800874dc:
    mr      r3, r29
    bl      isMissMario__11TFireWanwanCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8008756c
    lbz     r0, -0x6d58(r13)
    extsb.  r0, r0
    bne-    branch_0x80087530
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d54(r13)
    addi    r0, r3, 0x3f28
    lis     r4, 0x8008
    stw     r0, -0x6d54(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf04
    addi    r4, r4, 0x70a4
    subi    r3, r13, 0x6d54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d58(r13)
branch_0x80087530:
    subi    r4, r13, 0x6d54
    cmplwi  r4, 0x0
    beq-    branch_0x80087564
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80087564
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80087564:
    li      r3, 0x1
    b       branch_0x80087614

branch_0x8008756c:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x30c(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x80087610
    lbz     r0, -0x6d60(r13)
    extsb.  r0, r0
    bne-    branch_0x800875d4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d5c(r13)
    addi    r0, r3, 0x3f38
    lis     r4, 0x8008
    stw     r0, -0x6d5c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xef8
    addi    r4, r4, 0x7324
    subi    r3, r13, 0x6d5c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d60(r13)
branch_0x800875d4:
    subi    r4, r13, 0x6d5c
    cmplwi  r4, 0x0
    beq-    branch_0x80087608
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80087608
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80087608:
    li      r3, 0x1
    b       branch_0x80087614

branch_0x80087610:
    li      r3, 0x0
branch_0x80087614:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__22TNerveFireWanwanAttackFv
__dt__22TNerveFireWanwanAttackFv: # 0x80087630
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80087674
    lis     r3, 0x803b
    addi    r0, r3, 0x3f48
    stw     r0, 0x0(r31)
    beq-    branch_0x80087664
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80087664:
    extsh.  r0, r4
    ble-    branch_0x80087674
    mr      r3, r31
    bl      __dl__FPv
branch_0x80087674:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveFireWanwanFindMarioCFP24TSpineBase_10TLiveActor_
execute__25TNerveFireWanwanFindMarioCFP24TSpineBase_10TLiveActor_: # 0x8008768c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stw     r31, 0xd4(sp)
    stw     r30, 0xd0(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80087890
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r6, MarioHitActorPos(r13)
    addi    r3, sp, 0x94
    addi    r4, r3, 0x0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xc4(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lwz     r0, 0xbc(sp)
    lwz     r5, 0xc0(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0xc4(sp)
    stw     r5, 0x98(sp)
    lfs     f0, -0x6868(rtoc)
    stw     r0, 0x9c(sp)
    stfs    f0, 0x98(sp)
    lfs     f31, -0x6854(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x6830(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80087774
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0x98(sp)
    stfs    f0, 0x94(sp)
    b       branch_0x80087788

branch_0x80087774:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x94
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80087788:
    lfs     f1, -0x6868(rtoc)
    addi    r3, sp, 0xa0
    lfs     f3, -0x6854(rtoc)
    fmr     f2, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c
    lfs     f2, 0xc0(sp)
    li      r0, 0x0
    lfs     f0, 0xa4(sp)
    lfs     f1, -0x6830(rtoc)
    fmuls   f2, f2, f0
    lfs     f4, 0xbc(sp)
    lfs     f3, 0xa0(sp)
    fneg    f0, f1
    lfs     f5, 0xc4(sp)
    fmadds  f3, f4, f3, f2
    lfs     f4, 0xa8(sp)
    lfs     f2, -0x682c(rtoc)
    fmadds  f3, f5, f4, f3
    fsubs   f2, f3, f2
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x800877f0
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x800877f0
    li      r0, 0x1
branch_0x800877f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80087830
    lfs     f1, -0x6828(rtoc)
    lfs     f0, -0x6860(rtoc)
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x1cc(r31)
    stfs    f31, 0x1d0(r31)
    stfs    f0, 0x1d4(r31)
    stfs    f1, 0x1d8(r31)
    b       branch_0x80087854

branch_0x80087830:
    lfs     f0, -0x6868(rtoc)
    addi    r4, sp, 0xac
    lfs     f1, -0x6854(rtoc)
    addi    r3, r31, 0x1cc
    stfs    f0, 0xac(sp)
    addi    r5, sp, 0x94
    stfs    f0, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
branch_0x80087854:
    lfs     f2, -0x6824(rtoc)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x6860(rtoc)
    fmuls   f1, f2, f1
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x1bc(r31)
    stfs    f31, 0x1c0(r31)
    stfs    f0, 0x1c4(r31)
    stfs    f1, 0x1c8(r31)
branch_0x80087890:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x6840(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f3, 0x10(r3)
    stw     r4, 0xcc(sp)
    lfs     f1, -0x6868(rtoc)
    stw     r0, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f3, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x800878d4
    b       branch_0x800878e8

branch_0x800878d4:
    lfs     f1, -0x6854(rtoc)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800878e4
    b       branch_0x800878e8

branch_0x800878e4:
    fmr     f1, f0
branch_0x800878e8:
    lfs     f0, 0x1bc(r31)
    addi    r3, sp, 0x78
    addi    r4, r31, 0x1cc
    stfs    f0, 0x78(sp)
    lfs     f0, 0x1c0(r31)
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x1c4(r31)
    stfs    f0, 0x80(sp)
    lfs     f0, 0x1c8(r31)
    stfs    f0, 0x84(sp)
    bl      slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f
    addi    r3, sp, 0x78
    lfs     f31, -0x6854(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x6830(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8008794c
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x84(sp)
    stfs    f0, 0x80(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x78(sp)
    b       branch_0x80087960

branch_0x8008794c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x78
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x80087960:
    lfs     f0, -0x6868(rtoc)
    addi    r3, sp, 0x40
    stfs    f0, 0x88(sp)
    stfs    f0, 0x8c(sp)
    lfs     f0, -0x6854(rtoc)
    stfs    f0, 0x90(sp)
    bl      __ct__Q29JGeometry8TVec4_f_Fv
    lfs     f5, 0x80(sp)
    addi    r3, sp, 0x88
    lfs     f7, 0x8c(sp)
    lfs     f4, 0x88(sp)
    lfs     f10, 0x78(sp)
    fmuls   f2, f5, f7
    lfs     f9, 0x7c(sp)
    fmuls   f0, f5, f4
    lfs     f6, 0x90(sp)
    fmuls   f1, f9, f4
    fneg    f11, f10
    lfs     f8, 0x84(sp)
    fmsubs  f3, f9, f6, f2
    fmsubs  f1, f10, f7, f1
    fmadds  f2, f11, f6, f0
    fmadds  f3, f8, f4, f3
    fmuls   f0, f9, f7
    fmadds  f2, f8, f7, f2
    stfs    f3, 0x40(sp)
    fmadds  f1, f8, f6, f1
    fmsubs  f0, f11, f4, f0
    stfs    f2, 0x44(sp)
    fneg    f10, f5
    fnmsubs  f0, f5, f6, f0
    stfs    f1, 0x48(sp)
    fneg    f6, f9
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x44(sp)
    lfs     f3, 0x40(sp)
    fmuls   f2, f0, f10
    lfs     f4, 0x48(sp)
    fmuls   f1, f0, f8
    lfs     f7, 0x4c(sp)
    fmuls   f0, f0, f11
    fmadds  f2, f3, f8, f2
    fmsubs  f0, f3, f6, f0
    fmadds  f1, f3, f5, f1
    fnmsubs  f3, f4, f6, f2
    fmadds  f0, f4, f8, f0
    fmadds  f2, f4, f11, f1
    fmadds  f1, f7, f11, f3
    fmadds  f3, f7, f10, f0
    fmadds  f2, f7, f6, f2
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c
    lfs     f2, -0x6868(rtoc)
    lfs     f1, 0x90(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80087a5c
    lfs     f0, 0x88(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80087a54
    lfs     f1, -0x6850(rtoc)
    b       branch_0x80087ad8

branch_0x80087a54:
    lfs     f1, -0x684c(rtoc)
    b       branch_0x80087ad8

branch_0x80087a5c:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80087a9c
    lfs     f2, 0x88(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6848(rtoc)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    stw     r0, 0xc8(sp)
    lfd     f1, 0xc8(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x80087ad8

branch_0x80087a9c:
    fneg    f1, f1
    lfs     f2, 0x88(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6848(rtoc)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6844(rtoc)
    stw     r0, 0xc8(sp)
    lfd     f2, 0xc8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x80087ad8:
    lfs     f2, -0x6868(rtoc)
    lfs     f3, -0x6820(rtoc)
    bl      MsWrap_f___Ffff_80086e14
    stfs    f1, 0x34(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80087b7c
    lbz     r0, -0x6d68(r13)
    extsb.  r0, r0
    bne-    branch_0x80087b40
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d64(r13)
    addi    r0, r3, 0x3f48
    lis     r4, 0x8008
    stw     r0, -0x6d64(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xeec
    addi    r4, r4, 0x7630
    subi    r3, r13, 0x6d64
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d68(r13)
branch_0x80087b40:
    subi    r4, r13, 0x6d64
    cmplwi  r4, 0x0
    beq-    branch_0x80087b74
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80087b74
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80087b74:
    li      r3, 0x1
    b       branch_0x80087b80

branch_0x80087b7c:
    li      r3, 0x0
branch_0x80087b80:
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    addi    sp, sp, 0xe8
    blr


.globl execute__20TNerveFireWanwanTurnCFP24TSpineBase_10TLiveActor_
execute__20TNerveFireWanwanTurnCFP24TSpineBase_10TLiveActor_: # 0x80087ba0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80087c04
    lfs     f1, -0x6844(rtoc)
    lfs     f0, 0x34(r31)
    lfs     f2, -0x6868(rtoc)
    fadds   f1, f1, f0
    lfs     f3, -0x6820(rtoc)
    bl      MsWrap_f___Ffff_80086e14
    stfs    f1, 0x198(r31)
    addi    r3, r31, 0x0
    li      r4, 0x5
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80087c04:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80087c30
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80087c30:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x198(r31)
    lfs     f0, -0x6844(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f30, f0
    lfs     f31, 0x398(r3)
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_80086e14
    fsubs   f0, f30, f1
    fneg    f1, f31
    fcmpo   cr0, f0, f1
    bge-    branch_0x80087c74
    b       branch_0x80087c88

branch_0x80087c74:
    fcmpo   cr0, f0, f31
    ble-    branch_0x80087c84
    fmr     f1, f31
    b       branch_0x80087c88

branch_0x80087c84:
    fmr     f1, f0
branch_0x80087c88:
    lfs     f0, 0x34(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f2, -0x6868(rtoc)
    lfs     f3, -0x6820(rtoc)
    bl      MsWrap_f___Ffff_80086e14
    stfs    f1, 0x34(r31)
    lfs     f2, 0x34(r31)
    lfs     f1, 0x198(r31)
    lfs     f0, -0x6854(rtoc)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80087ccc
    li      r0, 0x1
    b       branch_0x80087cd0

branch_0x80087ccc:
    li      r0, 0x0
branch_0x80087cd0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80087d98
    lbz     r0, -0x6d80(r13)
    extsb.  r0, r0
    bne-    branch_0x80087d1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d7c(r13)
    addi    r0, r3, 0x3f78
    lis     r4, 0x8008
    stw     r0, -0x6d7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xec8
    addi    r4, r4, 0x6db8
    subi    r3, r13, 0x6d7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d80(r13)
branch_0x80087d1c:
    subi    r4, r13, 0x6d7c
    cmplwi  r4, 0x0
    beq-    branch_0x80087d50
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80087d50
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80087d50:
    lwz     r3, 0x124(r31)
    lwz     r5, 0x8(r3)
    addi    r4, r3, 0x8
    lwz     r0, 0x4(r3)
    cmpwi   r5, -0x1
    bne-    branch_0x80087d6c
    mr      r5, r0
branch_0x80087d6c:
    stw     r0, 0x0(r4)
    mr      r3, r31
    lwz     r4, 0x124(r31)
    stw     r5, 0x4(r4)
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r31)
    li      r3, 0x1
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x12c(r31)
    b       branch_0x80087d9c

branch_0x80087d98:
    li      r3, 0x0
branch_0x80087d9c:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl theNerve__20TNerveFireWanwanTurnFv
theNerve__20TNerveFireWanwanTurnFv: # 0x80087dbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6d78(r13)
    extsb.  r0, r0
    bne-    branch_0x80087e0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d74(r13)
    addi    r0, r3, 0x3f68
    lis     r4, 0x8008
    stw     r0, -0x6d74(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xed4
    addi    r4, r4, 0x7e20
    subi    r3, r13, 0x6d74
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d78(r13)
branch_0x80087e0c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6d74
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__20TNerveFireWanwanTurnFv
__dt__20TNerveFireWanwanTurnFv: # 0x80087e20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80087e64
    lis     r3, 0x803b
    addi    r0, r3, 0x3f68
    stw     r0, 0x0(r31)
    beq-    branch_0x80087e54
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80087e54:
    extsh.  r0, r4
    ble-    branch_0x80087e64
    mr      r3, r31
    bl      __dl__FPv
branch_0x80087e64:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveFireWanwanGraphWanderCFP24TSpineBase_10TLiveActor_
execute__27TNerveFireWanwanGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x80087e7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80087ebc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80087ebc:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80087ee0
    mr      r3, r30
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x80087ee0:
    mr      r3, r30
    lfs     f1, -0x6854(rtoc)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80087f80
    lbz     r0, -0x6d70(r13)
    extsb.  r0, r0
    bne-    branch_0x80087f44
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d6c(r13)
    addi    r0, r3, 0x3f58
    lis     r4, 0x8008
    stw     r0, -0x6d6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xee0
    addi    r4, r4, 0x72c8
    subi    r3, r13, 0x6d6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d70(r13)
branch_0x80087f44:
    subi    r4, r13, 0x6d6c
    cmplwi  r4, 0x0
    beq-    branch_0x80087f78
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80087f78
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80087f78:
    li      r3, 0x1
    b       branch_0x80087ffc

branch_0x80087f80:
    lwz     r0, 0x160(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80087fb8
    lwz     r31, 0x74(r30)
    li      r4, 0x1
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80087fb0
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x80087fb0:
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
branch_0x80087fb8:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80087fe4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80087fe4:
    lfs     f1, 0x140(r30)
    mr      r3, r30
    lfs     f2, 0x144(r30)
    lfs     f3, -0x6868(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x80087ffc:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl theNerve__27TNerveFireWanwanGraphWanderFv
theNerve__27TNerveFireWanwanGraphWanderFv: # 0x80088014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6d80(r13)
    extsb.  r0, r0
    bne-    branch_0x80088064
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d7c(r13)
    addi    r0, r3, 0x3f78
    lis     r4, 0x8008
    stw     r0, -0x6d7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xec8
    addi    r4, r4, 0x6db8
    subi    r3, r13, 0x6d7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d80(r13)
branch_0x80088064:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6d7c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isCollidMove__11TFireWanwanFP9THitActor
isCollidMove__11TFireWanwanFP9THitActor: # 0x80088078
    li      r3, 0x1
    blr


.globl doKeepDistance__11TFireWanwanFv
doKeepDistance__11TFireWanwanFv: # 0x80088080
    lwz     r3, 0x194(r3)
    lbz     r0, 0xc0(r3)
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl getBasNameTable__11TFireWanwanCFv
getBasNameTable__11TFireWanwanCFv: # 0x80088094
    lis     r3, 0x803b
    addi    r3, r3, 0x3e90
    blr


.globl getGravityY__11TFireWanwanCFv
getGravityY__11TFireWanwanCFv: # 0x800880a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    lwz     r3, 0x8c(r3)
    lfs     f31, 0xcc(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x800880d4
    b       branch_0x800880d8

branch_0x800880d4:
    lwz     r30, 0x1c(r3)
branch_0x800880d8:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x8008811c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r4, 0x8008
    stw     r0, -0x6d34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf34
    addi    r4, r4, 0x5f2c
    subi    r3, r13, 0x6d34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x8008811c:
    subi    r0, r13, 0x6d34
    cmplw   r30, r0
    beq-    branch_0x80088190
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8008813c
    b       branch_0x80088140

branch_0x8008813c:
    lwz     r30, 0x1c(r3)
branch_0x80088140:
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x80088184
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d44(r13)
    addi    r0, r3, 0x3f08
    lis     r4, 0x8008
    stw     r0, -0x6d44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf1c
    addi    r4, r4, 0x6510
    subi    r3, r13, 0x6d44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x80088184:
    subi    r0, r13, 0x6d44
    cmplw   r30, r0
    bne-    branch_0x800881a8
branch_0x80088190:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x35c(r3)
branch_0x800881a8:
    lwz     r0, 0x3c(sp)
    fmr     f1, f31
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl checkWalls__11TFireWanwanFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecordf
checkWalls__11TFireWanwanFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecordf: # 0x800881c8
    mflr    r0
    li      r6, 0x4
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    fmr     f31, f1
    stmw    r24, 0x68(sp)
    mr      r29, r3
    mr      r30, r4
    mr      r31, r5
    lfs     f1, 0x4(r4)
    lfs     f2, 0x8(r4)
    lfs     f0, 0x0(r4)
    fadds   f1, f1, f31
    addi    r4, sp, 0x38
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f2, 0x40(sp)
    stfs    f31, 0x44(sp)
    stw     r6, 0x48(sp)
    stw     r0, 0x50(sp)
    lwz     r3, gpMap(r13)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    lwz     r4, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stw     r4, 0x0(r31)
    stw     r3, 0x4(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0x8(r31)
    lfs     f0, 0x44(sp)
    stfs    f0, 0xc(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0x10(r31)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x14(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x18(r31)
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0x1c(r31)
    stw     r0, 0x20(r31)
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x24(r31)
    stw     r0, 0x28(r31)
    bne-    branch_0x80088290
    li      r3, 0x0
    b       branch_0x800883cc

branch_0x80088290:
    lwz     r3, 0x8c(r29)
    lwz     r27, 0x14(r3)
    cmplwi  r27, 0x0
    beq-    branch_0x800882a4
    b       branch_0x800882a8

branch_0x800882a4:
    lwz     r27, 0x1c(r3)
branch_0x800882a8:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x800882ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r4, 0x8008
    stw     r0, -0x6d34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf34
    addi    r4, r4, 0x5f2c
    subi    r3, r13, 0x6d34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x800882ec:
    subi    r0, r13, 0x6d34
    cmplw   r27, r0
    beq-    branch_0x80088310
    lfs     f0, 0x38(sp)
    li      r3, 0x1
    stfs    f0, 0x0(r30)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x8(r30)
    b       branch_0x800883cc

branch_0x80088310:
    lwz     r26, 0x4c(sp)
    addi    r27, sp, 0x38
    li      r25, 0x0
    li      r24, 0x0
    li      r28, 0x0
    b       branch_0x80088390

branch_0x80088328:
    addi    r0, r28, 0x1c
    lwzx    r3, r27, r0
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80088380
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x1c
    bne-    branch_0x80088354
    li      r0, 0x1
    b       branch_0x80088358

branch_0x80088354:
    li      r0, 0x0
branch_0x80088358:
    clrlwi. r0, r0, 24
    beq-    branch_0x80088380
    lwz     r12, 0x0(r3)
    addi    r4, r29, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    b       branch_0x80088384

branch_0x80088380:
    li      r0, 0x0
branch_0x80088384:
    or      r25, r25, r0
    addi    r24, r24, 0x1
    addi    r28, r28, 0x4
branch_0x80088390:
    cmpw    r24, r26
    blt+    branch_0x80088328
    clrlwi. r0, r25, 24
    beq-    branch_0x800883b8
    fmr     f1, f31
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      checkWalls__11TFireWanwanFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecordf
    b       branch_0x800883c8

branch_0x800883b8:
    lfs     f0, 0x38(sp)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x8(r30)
branch_0x800883c8:
    li      r3, 0x1
branch_0x800883cc:
    lmw     r24, 0x68(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl bindPoint__11TFireWanwanFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fP18TBGWallCheckRecord
bindPoint__11TFireWanwanFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fP18TBGWallCheckRecord: # 0x800883e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    fmr     f31, f1
    stmw    r27, 0xc4(sp)
    mr      r29, r5
    mr      r27, r3
    mr      r28, r4
    mr      r30, r7
    lwz     r5, 0x0(r5)
    lwz     r0, 0x4(r29)
    stw     r5, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0xbc(sp)
    lfs     f1, 0xb4(sp)
    lfs     f0, 0x0(r6)
    fadds   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0x4(r6)
    fadds   f0, f1, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x8(r6)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80088488
    lfs     f1, 0xb8(sp)
    addi    r4, sp, 0xb0
    lfs     f0, 0xc0(r27)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0xb4(sp)
    lfs     f3, 0xbc(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r27)
    b       branch_0x800884ac

branch_0x80088488:
    lfs     f1, 0xb8(sp)
    addi    r4, sp, 0xb0
    lfs     f0, 0xc0(r27)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0xb4(sp)
    lfs     f3, 0xbc(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r27)
branch_0x800884ac:
    lfs     f1, 0xc8(r27)
    lfs     f0, -0x6854(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r27)
    lfs     f1, 0x4(r29)
    lfs     f0, 0xb8(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80088580
    lwz     r3, 0xb0(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800884e4
    li      r0, 0x1
    b       branch_0x800884e8

branch_0x800884e4:
    li      r0, 0x0
branch_0x800884e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80088580
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x801
    beq-    branch_0x80088504
    cmplwi  r0, 0x402
    bne-    branch_0x8008850c
branch_0x80088504:
    li      r0, 0x1
    b       branch_0x80088510

branch_0x8008850c:
    li      r0, 0x0
branch_0x80088510:
    clrlwi. r0, r0, 24
    bne-    branch_0x80088580
    lwz     r0, 0xf0(r27)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80088544
    lfs     f0, 0xc0(r27)
    addi    r4, sp, 0xac
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0xb4(sp)
    lfs     f3, 0xbc(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    b       branch_0x80088560

branch_0x80088544:
    lfs     f0, 0xc0(r27)
    addi    r4, sp, 0xac
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0xb4(sp)
    lfs     f3, 0xbc(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
branch_0x80088560:
    lfs     f2, -0x6854(rtoc)
    lfs     f0, 0xc8(r27)
    fadds   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x80088580
    stfs    f1, 0xc8(r27)
    lwz     r0, 0xac(sp)
    stw     r0, 0xb0(sp)
branch_0x80088580:
    lwz     r0, 0xb0(sp)
    stw     r0, 0xc4(r27)
    lfs     f1, -0x6818(rtoc)
    lfs     f0, 0xc8(r27)
    lfs     f2, 0xb8(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80088748
    lwz     r3, 0xc4(r27)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800885bc
    li      r0, 0x1
    b       branch_0x800885c0

branch_0x800885bc:
    li      r0, 0x0
branch_0x800885c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800885e0
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800887a4

branch_0x800885e0:
    lwz     r0, 0xf0(r27)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r27)
    lwz     r3, 0x8c(r27)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80088600
    b       branch_0x80088604

branch_0x80088600:
    lwz     r31, 0x1c(r3)
branch_0x80088604:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x80088648
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r4, 0x8008
    stw     r0, -0x6d34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf34
    addi    r4, r4, 0x5f2c
    subi    r3, r13, 0x6d34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x80088648:
    subi    r0, r13, 0x6d34
    cmplw   r31, r0
    beq-    branch_0x800886bc
    lwz     r3, 0x8c(r27)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80088668
    b       branch_0x8008866c

branch_0x80088668:
    lwz     r31, 0x1c(r3)
branch_0x8008866c:
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x800886b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d44(r13)
    addi    r0, r3, 0x3f08
    lis     r4, 0x8008
    stw     r0, -0x6d44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf1c
    addi    r4, r4, 0x6510
    subi    r3, r13, 0x6d44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x800886b0:
    subi    r0, r13, 0x6d44
    cmplw   r31, r0
    bne-    branch_0x80088734
branch_0x800886bc:
    lwz     r3, 0xc4(r27)
    lfs     f1, 0xb8(sp)
    addi    r3, r3, 0x34
    lfs     f0, 0xc8(r27)
    lfs     f5, 0x4(r3)
    lfs     f4, 0x0(r3)
    fmuls   f1, f5, f1
    lfs     f7, 0xb4(sp)
    fmuls   f0, f5, f0
    lfs     f6, 0x8(r3)
    lfs     f8, 0xbc(sp)
    fmadds  f2, f4, f7, f1
    lfs     f3, -0x6854(rtoc)
    fmadds  f1, f4, f7, f0
    lfs     f0, -0x6868(rtoc)
    fmadds  f2, f6, f8, f2
    fmadds  f1, f6, f8, f1
    fsubs   f1, f2, f1
    fsubs   f1, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80088754
    fmadds  f0, f4, f1, f7
    stfs    f0, 0xb4(sp)
    lfs     f0, 0xb8(sp)
    fmadds  f0, f5, f1, f0
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xbc(sp)
    fmadds  f0, f6, f1, f0
    stfs    f0, 0xbc(sp)
    b       branch_0x80088754

branch_0x80088734:
    lfs     f1, -0x6854(rtoc)
    lfs     f0, 0xc8(r27)
    fadds   f0, f1, f0
    stfs    f0, 0xb8(sp)
    b       branch_0x80088754

branch_0x80088748:
    lwz     r0, 0xf0(r27)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r27)
branch_0x80088754:
    fmr     f1, f31
    addi    r3, r27, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0xb4
    bl      checkWalls__11TFireWanwanFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecordf
    lwz     r0, 0xb4(sp)
    mr      r4, r29
    lwz     r5, 0xb8(sp)
    addi    r3, sp, 0x4c
    stw     r0, 0x4c(sp)
    lwz     r0, 0xbc(sp)
    stw     r5, 0x50(sp)
    stw     r0, 0x54(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x0(r28)
    stw     r0, 0x4(r28)
    lwz     r0, 0x54(sp)
    stw     r0, 0x8(r28)
branch_0x800887a4:
    lmw     r27, 0xc4(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl bindBody__11TFireWanwanFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
bindBody__11TFireWanwanFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x800887bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e8(sp)
    stfd    f31, 0x1e0(sp)
    stfd    f30, 0x1d8(sp)
    stfd    f29, 0x1d0(sp)
    stfd    f28, 0x1c8(sp)
    stfd    f27, 0x1c0(sp)
    stfd    f26, 0x1b8(sp)
    stfd    f25, 0x1b0(sp)
    stfd    f24, 0x1a8(sp)
    stfd    f23, 0x1a0(sp)
    stfd    f22, 0x198(sp)
    stmw    r23, 0x174(sp)
    mr      r24, r3
    mr      r25, r4
    mr      r26, r5
    addi    r27, r6, 0x0
    addi    r23, sp, 0x12c
    li      r30, 0x0
    li      r29, 0x1
    li      r28, 0x0
    lis     r31, 0x4330
    lfs     f28, -0x6868(rtoc)
    lfs     f1, -0x6814(rtoc)
    lfs     f0, 0x14c(r3)
    fneg    f26, f28
    stfs    f28, 0x8(r4)
    fmuls   f25, f1, f0
    fmuls   f27, f26, f28
    stfs    f28, 0x4(r4)
    stfs    f28, 0x0(r4)
    stfs    f28, 0x8(r5)
    stfs    f28, 0x4(r5)
    stfs    f28, 0x0(r5)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r24)
    lfd     f29, -0x6840(rtoc)
    stw     r3, 0x158(sp)
    lfs     f30, -0x6810(rtoc)
    stw     r0, 0x15c(sp)
    lfs     f31, -0x6860(rtoc)
    lwz     r0, 0x18(r24)
    stw     r0, 0x160(sp)
branch_0x8008886c:
    xoris   r0, r28, 0x8000
    lwz     r4, 0x158(sp)
    stw     r0, 0x16c(sp)
    lwz     r3, 0x15c(sp)
    stw     r31, 0x168(sp)
    lwz     r0, 0x160(sp)
    lfd     f0, 0x168(sp)
    stw     r4, 0x120(sp)
    fsubs   f0, f0, f29
    stw     r3, 0x124(sp)
    fmuls   f1, f0, f30
    stw     r0, 0x128(sp)
    lfs     f0, 0x14c(r24)
    fmuls   f22, f31, f1
    fsubs   f23, f0, f25
    fmr     f1, f22
    bl      sinf
    fmr     f24, f1
    fmr     f1, f22
    bl      cosf
    fmuls   f5, f1, f28
    lfs     f4, 0x120(sp)
    fmadds  f0, f26, f23, f28
    mr      r3, r24
    fmuls   f7, f24, f28
    fadds   f6, f5, f0
    mr      r6, r27
    fmsubs  f3, f24, f23, f28
    addi    r4, sp, 0x108
    fsubs   f2, f28, f7
    fsubs   f0, f27, f7
    addi    r5, sp, 0x120
    fadds   f5, f5, f3
    addi    r7, sp, 0x12c
    fmuls   f9, f6, f26
    fnmsubs  f7, f28, f23, f0
    fneg    f8, f24
    fmuls   f0, f6, f1
    fmadds  f6, f1, f23, f2
    fmadds  f2, f5, f1, f9
    fmadds  f0, f5, f28, f0
    fmuls   f10, f7, f26
    fnmsubs  f3, f6, f8, f2
    fmadds  f2, f6, f26, f0
    fmsubs  f0, f5, f8, f9
    fadds   f3, f10, f3
    fmadds  f2, f7, f8, f2
    fmadds  f0, f6, f1, f0
    fadds   f3, f4, f3
    fmr     f1, f25
    fadds   f0, f10, f0
    stfs    f3, 0x120(sp)
    lfs     f3, 0x124(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x124(sp)
    lfs     f2, 0x128(sp)
    fadds   f0, f2, f0
    stfs    f0, 0x128(sp)
    bl      bindPoint__11TFireWanwanFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fP18TBGWallCheckRecord
    lwz     r0, 0xf0(r24)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8008896c
    li      r3, 0x1
    b       branch_0x80088970

branch_0x8008896c:
    li      r3, 0x0
branch_0x80088970:
    lwz     r0, 0x108(sp)
    neg     r5, r3
    subic   r4, r5, 0x1
    lwz     r3, 0x10c(sp)
    stw     r0, 0x9c(sp)
    subfe   r4, r4, r5
    lwz     r0, 0x110(sp)
    stw     r3, 0xa0(sp)
    clrlwi  r3, r4, 24
    addi    r4, r27, 0x0
    stw     r0, 0xa4(sp)
    and     r29, r29, r3
    addi    r3, sp, 0x9c
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x9c(sp)
    li      r5, 0x0
    lwz     r4, 0xa0(sp)
    li      r3, 0x0
    stw     r0, 0xe0(sp)
    lwz     r0, 0xa4(sp)
    stw     r4, 0xe4(sp)
    lfs     f2, 0x158(sp)
    stw     r0, 0xe8(sp)
    lfs     f0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    fadds   f2, f2, f0
    lfs     f0, 0xe8(sp)
    stfs    f2, 0x158(sp)
    lfs     f2, 0x15c(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x15c(sp)
    lfs     f1, 0x160(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x160(sp)
    b       branch_0x80088a3c

branch_0x800889fc:
    addi    r0, r3, 0x1c
    lfs     f1, 0x0(r26)
    lwzx    r4, r23, r0
    addi    r5, r5, 0x1
    lfsu    f0, 0x34(r4)
    addi    r3, r3, 0x4
    fadds   f0, f1, f0
    stfs    f0, 0x0(r26)
    lfs     f1, 0x4(r26)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r26)
    lfs     f1, 0x8(r26)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r26)
branch_0x80088a3c:
    lwz     r0, 0x140(sp)
    cmpw    r5, r0
    blt+    branch_0x800889fc
    addi    r28, r28, 0x1
    cmpwi   r28, 0x8
    add     r30, r30, r0
    blt+    branch_0x8008886c
    lwz     r0, 0x158(sp)
    addi    r3, sp, 0x70
    lwz     r5, 0x15c(sp)
    addi    r4, r24, 0x10
    stw     r0, 0x70(sp)
    lwz     r0, 0x160(sp)
    stw     r5, 0x74(sp)
    stw     r0, 0x78(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x70(sp)
    mr      r4, r27
    lwz     r5, 0x74(sp)
    addi    r3, sp, 0x8c
    stw     r0, 0xc8(sp)
    lwz     r0, 0x78(sp)
    stw     r5, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0xc8(sp)
    lwz     r5, 0xcc(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0xd0(sp)
    stw     r5, 0x90(sp)
    stw     r0, 0x94(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r4, 0x8c(sp)
    clrlwi. r0, r29, 24
    lwz     r3, 0x90(sp)
    stw     r4, 0x0(r25)
    stw     r3, 0x4(r25)
    lwz     r0, 0x94(sp)
    stw     r0, 0x8(r25)
    beq-    branch_0x80088ae8
    lwz     r0, 0xf0(r24)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r24)
    b       branch_0x80088af4

branch_0x80088ae8:
    lwz     r0, 0xf0(r24)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r24)
branch_0x80088af4:
    mr      r3, r30
    lmw     r23, 0x174(sp)
    lwz     r0, 0x1ec(sp)
    lfd     f31, 0x1e0(sp)
    lfd     f30, 0x1d8(sp)
    mtlr    r0
    lfd     f29, 0x1d0(sp)
    lfd     f28, 0x1c8(sp)
    lfd     f27, 0x1c0(sp)
    lfd     f26, 0x1b8(sp)
    lfd     f25, 0x1b0(sp)
    lfd     f24, 0x1a8(sp)
    lfd     f23, 0x1a0(sp)
    lfd     f22, 0x198(sp)
    addi    sp, sp, 0x1e8
    blr


.globl bind__11TFireWanwanFv
bind__11TFireWanwanFv: # 0x80088b34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stmw    r27, 0x134(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r30)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xb0(r30)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80088b80
    stfs    f1, 0xb0(r30)
branch_0x80088b80:
    lfs     f1, 0xac(r30)
    lfs     f0, -0x680c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80088b94
    stfs    f0, 0xac(r30)
branch_0x80088b94:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0x680c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80088ba8
    stfs    f0, 0xb0(r30)
branch_0x80088ba8:
    lfs     f1, 0xb4(r30)
    lfs     f0, -0x680c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80088bbc
    stfs    f0, 0xb4(r30)
branch_0x80088bbc:
    lfs     f1, 0xac(r30)
    lfs     f0, -0x6864(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80088bd0
    stfs    f0, 0xac(r30)
branch_0x80088bd0:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0x6864(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80088be4
    stfs    f0, 0xb0(r30)
branch_0x80088be4:
    lfs     f1, 0xb4(r30)
    lfs     f0, -0x6864(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80088bf8
    stfs    f0, 0xb4(r30)
branch_0x80088bf8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x370(r3)
    lfs     f0, 0xac(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r30)
    lfs     f0, 0xb0(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xb4(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r30)
    lwz     r3, 0x94(r30)
    lwz     r0, 0x98(r30)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0x9c(r30)
    stw     r0, 0x11c(sp)
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f2, 0x114(sp)
    stw     r3, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0xe4(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x114(sp)
    lfs     f1, 0x118(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x118(sp)
    lfs     f1, 0x11c(sp)
    lfs     f0, 0xe4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x11c(sp)
    lfs     f1, 0x114(sp)
    lfs     f3, 0x11c(sp)
    lfs     f0, 0x118(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6868(rtoc)
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80088cc8
    b       branch_0x80088cec

branch_0x80088cc8:
    frsqrte f3, f4
    lfs     f2, -0x6860(rtoc)
    lfs     f0, -0x685c(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80088cec:
    lfs     f0, -0x6808(rtoc)
    lis     r0, 0x4330
    lfd     f2, -0x6840(rtoc)
    li      r31, 0x0
    fdivs   f1, f4, f0
    lfs     f3, -0x6854(rtoc)
    li      r28, 0x1
    lfs     f0, 0x114(sp)
    li      r27, 0x0
    fctiwz  f1, f1
    stfd    f1, 0x128(sp)
    lwz     r3, 0x12c(sp)
    addi    r29, r3, 0x1
    xoris   r3, r29, 0x8000
    stw     r3, 0x124(sp)
    stw     r0, 0x120(sp)
    lfd     f1, 0x120(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x114(sp)
    lfs     f0, 0x118(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x118(sp)
    lfs     f0, 0x11c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x11c(sp)
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x104(sp)
    stfs    f0, 0x108(sp)
    stfs    f0, 0x10c(sp)
    b       branch_0x80088e14

branch_0x80088d6c:
    addi    r3, r30, 0x0
    addi    r4, sp, 0xf8
    addi    r5, sp, 0xec
    addi    r6, sp, 0x114
    bl      bindBody__11TFireWanwanFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80088d94
    li      r0, 0x1
    b       branch_0x80088d98

branch_0x80088d94:
    li      r0, 0x0
branch_0x80088d98:
    lfs     f1, 0x10(r30)
    neg     r4, r0
    lfs     f0, 0xf8(sp)
    subic   r0, r4, 0x1
    subfe   r0, r0, r4
    fadds   f0, f1, f0
    clrlwi  r0, r0, 24
    and     r28, r28, r0
    add     r31, r31, r3
    stfs    f0, 0x10(r30)
    addi    r27, r27, 0x1
    lfs     f1, 0x14(r30)
    lfs     f0, 0xfc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, 0x100(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r30)
    lfs     f2, 0x104(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x104(sp)
    lfs     f1, 0x108(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0xf4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10c(sp)
branch_0x80088e14:
    cmpw    r27, r29
    blt+    branch_0x80088d6c
    lfs     f0, -0x6868(rtoc)
    clrlwi. r0, r28, 24
    stfs    f0, 0x9c(r30)
    stfs    f0, 0x98(r30)
    stfs    f0, 0x94(r30)
    beq-    branch_0x80088e44
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    b       branch_0x80088e50

branch_0x80088e44:
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
branch_0x80088e50:
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80088e64
    b       branch_0x80088e68

branch_0x80088e64:
    lwz     r29, 0x1c(r3)
branch_0x80088e68:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x80088eac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r4, 0x8008
    stw     r0, -0x6d34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf34
    addi    r4, r4, 0x5f2c
    subi    r3, r13, 0x6d34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x80088eac:
    subi    r0, r13, 0x6d34
    cmplw   r29, r0
    bne-    branch_0x8008925c
    cmpwi   r31, 0x0
    ble-    branch_0x8008925c
    lfs     f1, 0x104(sp)
    lfs     f0, 0x108(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x10c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6830(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x8008925c
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80088f10
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x10c(sp)
    stfs    f0, 0x108(sp)
    stfs    f0, 0x104(sp)
    b       branch_0x80088f40

branch_0x80088f10:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x6854(rtoc)
    lfs     f0, 0x104(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x104(sp)
    lfs     f0, 0x108(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x10c(sp)
branch_0x80088f40:
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x108(sp)
    lfs     f3, 0xac(r30)
    fmuls   f0, f1, f0
    lfs     f2, 0x104(sp)
    lfs     f5, 0xb4(r30)
    lfs     f4, 0x10c(sp)
    fmadds  f1, f3, f2, f0
    lfs     f0, -0x6868(rtoc)
    fmadds  f1, f5, f4, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80088fa4
    lfs     f0, -0x6804(rtoc)
    fmuls   f0, f0, f1
    fabs    f4, f0
    fmadds  f0, f2, f4, f3
    stfs    f0, 0xac(r30)
    lfs     f1, 0x108(sp)
    lfs     f0, 0xb0(r30)
    fmadds  f0, f1, f4, f0
    stfs    f0, 0xb0(r30)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0xb4(r30)
    fmadds  f0, f1, f4, f0
    stfs    f0, 0xb4(r30)
branch_0x80088fa4:
    lfs     f2, -0x6868(rtoc)
    lfs     f1, 0xb4(r30)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80088fd4
    lfs     f0, 0xac(r30)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80088fcc
    lfs     f0, -0x6850(rtoc)
    b       branch_0x80089050

branch_0x80088fcc:
    lfs     f0, -0x684c(rtoc)
    b       branch_0x80089050

branch_0x80088fd4:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80089014
    lfs     f2, 0xac(r30)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6848(rtoc)
    stw     r0, 0x124(sp)
    lis     r0, 0x4330
    stw     r0, 0x120(sp)
    lfd     f1, 0x120(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x80089050

branch_0x80089014:
    fneg    f1, f1
    lfs     f2, 0xac(r30)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6848(rtoc)
    stw     r0, 0x124(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6844(rtoc)
    stw     r0, 0x120(sp)
    lfd     f2, 0x120(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x80089050:
    fmr     f1, f0
    lfs     f2, -0x6868(rtoc)
    lfs     f3, -0x6820(rtoc)
    bl      MsWrap_f___Ffff_80086e14
    lfs     f2, -0x6868(rtoc)
    addi    r3, sp, 0xc0
    stfs    f2, 0x30(r30)
    stfs    f1, 0x34(r30)
    fmr     f1, f2
    stfs    f2, 0x38(r30)
    lfs     f3, -0x682c(rtoc)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80085f1c
    lfs     f2, 0x108(sp)
    li      r0, 0x0
    lfs     f0, 0xc4(sp)
    lfs     f1, -0x6830(rtoc)
    fmuls   f2, f2, f0
    lfs     f4, 0x104(sp)
    lfs     f3, 0xc0(sp)
    fneg    f0, f1
    lfs     f5, 0x10c(sp)
    fmadds  f3, f4, f3, f2
    lfs     f4, 0xc8(sp)
    lfs     f2, -0x682c(rtoc)
    fmadds  f3, f5, f4, f3
    fsubs   f2, f3, f2
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x800890d4
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x800890d4
    li      r0, 0x1
branch_0x800890d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80089114
    lfs     f1, -0x6828(rtoc)
    lfs     f0, -0x6860(rtoc)
    fmuls   f30, f0, f1
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x80(sp)
    stfs    f31, 0x84(sp)
    stfs    f0, 0x88(sp)
    stfs    f1, 0x8c(sp)
    b       branch_0x8008913c

branch_0x80089114:
    lfs     f2, -0x6868(rtoc)
    addi    r4, sp, 0xcc
    lfs     f0, -0x682c(rtoc)
    addi    r3, sp, 0x80
    stfs    f2, 0xcc(sp)
    lfs     f1, -0x6854(rtoc)
    addi    r5, sp, 0x104
    stfs    f2, 0xd0(sp)
    stfs    f0, 0xd4(sp)
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
branch_0x8008913c:
    addi    r3, sp, 0x90
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, sp, 0x90
    addi    r4, sp, 0x80
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r30)
    addi    r5, sp, 0x90
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x18
    stfs    f0, 0x9c(sp)
    li      r6, 0x0
    lfs     f0, 0x14(r30)
    li      r7, 0x0
    stfs    f0, 0xac(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0xbc(sp)
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800891b8
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x800891b8:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, sp, 0x90
    li      r4, 0x19
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80089208
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x80089208:
    lwz     r3, -0x7108(r13)
    li      r4, 0x3
    lfs     f1, -0x6800(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, 0x1b8(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8008922c
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x8008922c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28e1
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008925c
    addi    r4, r30, 0x10
    li      r3, 0x28e1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008925c:
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80089270
    b       branch_0x80089274

branch_0x80089270:
    lwz     r29, 0x1c(r3)
branch_0x80089274:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x800892b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r4, 0x8008
    stw     r0, -0x6d34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf34
    addi    r4, r4, 0x5f2c
    subi    r3, r13, 0x6d34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x800892b8:
    subi    r0, r13, 0x6d34
    cmplw   r29, r0
    bne-    branch_0x8008931c
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8008931c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x384(r3)
    lfs     f0, 0xac(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r30)
    lfs     f0, 0xb0(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xb4(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, -0x67fc(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
branch_0x8008931c:
    lmw     r27, 0x134(sp)
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    mtlr    r0
    addi    sp, sp, 0x158
    blr


.globl setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_: # 0x80089338
    lfs     f3, 0x4(r4)
    lfs     f1, -0x6804(rtoc)
    lfs     f4, 0x8(r4)
    fmuls   f7, f1, f3
    lfs     f5, 0x0(r4)
    fmuls   f2, f1, f4
    lfs     f0, 0xc(r4)
    fmuls   f6, f1, f5
    fmuls   f8, f1, f0
    lfs     f1, -0x6854(rtoc)
    fmuls   f9, f7, f3
    fmuls   f10, f2, f4
    fmuls   f11, f6, f3
    fmuls   f13, f8, f4
    fsubs   f0, f1, f9
    fmuls   f2, f6, f5
    fmuls   f12, f6, f4
    fmuls   f3, f8, f3
    fsubs   f6, f1, f2
    fsubs   f0, f0, f10
    fsubs   f2, f11, f13
    fadds   f1, f12, f3
    stfs    f0, 0x0(r3)
    fadds   f0, f11, f13
    fmuls   f7, f7, f4
    fmuls   f5, f8, f5
    stfs    f2, 0x4(r3)
    fsubs   f4, f6, f10
    fsubs   f2, f12, f3
    stfs    f1, 0x8(r3)
    fsubs   f3, f7, f5
    stfs    f0, 0x10(r3)
    fadds   f1, f7, f5
    fsubs   f0, f6, f9
    stfs    f4, 0x14(r3)
    stfs    f3, 0x18(r3)
    stfs    f2, 0x20(r3)
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    blr


.globl attackToMario__11TFireWanwanFv
attackToMario__11TFireWanwanFv: # 0x800893d8
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0xec8
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    lwz     r3, 0x194(r3)
    lbz     r0, 0xc0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80089598
    lwz     r3, 0x8c(r29)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80089420
    b       branch_0x80089424

branch_0x80089420:
    lwz     r30, 0x1c(r3)
branch_0x80089424:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x80089464
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r3, 0x8008
    stw     r0, -0x6d34(r13)
    addi    r4, r3, 0x5f2c
    subi    r3, r13, 0x6d34
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x80089464:
    subi    r0, r13, 0x6d34
    cmplw   r30, r0
    beq-    branch_0x80089598
    lbz     r0, -0x6d28(r13)
    extsb.  r0, r0
    bne-    branch_0x800894b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d24(r13)
    addi    r0, r3, 0x3ec8
    lis     r3, 0x8008
    stw     r0, -0x6d24(r13)
    addi    r4, r3, 0x5644
    subi    r3, r13, 0x6d24
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d28(r13)
branch_0x800894b0:
    subi    r0, r13, 0x6d24
    cmplw   r30, r0
    beq-    branch_0x80089598
    lbz     r0, -0x6d58(r13)
    extsb.  r0, r0
    bne-    branch_0x800894fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d54(r13)
    addi    r0, r3, 0x3f28
    lis     r3, 0x8008
    stw     r0, -0x6d54(r13)
    addi    r4, r3, 0x70a4
    subi    r3, r13, 0x6d54
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d58(r13)
branch_0x800894fc:
    subi    r0, r13, 0x6d54
    cmplw   r30, r0
    beq-    branch_0x80089598
    lwz     r3, 0x8c(r29)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8008951c
    b       branch_0x80089520

branch_0x8008951c:
    lwz     r30, 0x1c(r3)
branch_0x80089520:
    lbz     r0, -0x6d30(r13)
    extsb.  r0, r0
    bne-    branch_0x80089560
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d2c(r13)
    addi    r0, r3, 0x3ed8
    lis     r3, 0x8008
    stw     r0, -0x6d2c(r13)
    addi    r4, r3, 0x5bd4
    subi    r3, r13, 0x6d2c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d30(r13)
branch_0x80089560:
    subi    r0, r13, 0x6d2c
    cmplw   r30, r0
    bne-    branch_0x80089570
    b       branch_0x80089598

branch_0x80089570:
    addi    r3, r29, 0x0
    li      r4, MARIOMSG_HURTFIRE
    bl      SMS_SendMessageToMario__FP9THitActorUl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c0(r3)
    stw     r0, 0x1a0(r29)
branch_0x80089598:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl sendAttackMsgToMario__11TFireWanwanFv
sendAttackMsgToMario__11TFireWanwanFv: # 0x800895b4
    blr


.globl isTaken__10TTakeActorCFv
isTaken__10TTakeActorCFv: # 0x800895b8
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800895cc
    li      r3, 0x1
    blr

branch_0x800895cc:
    li      r3, 0x0
    blr


.globl initEscapeNextGraphNode__11TFireWanwanFv
initEscapeNextGraphNode__11TFireWanwanFv: # 0x800895d4
    mflr    r0
    li      r5, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    mr      r29, r3
    addi    r4, r29, 0x10
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x124(r29)
    mr      r30, r3
    addi    r6, r29, 0x10
    lwz     r3, 0x0(r4)
    addi    r4, r30, 0x0
    li      r5, -0x1
    li      r7, -0x1
    bl      getEscapeFromMarioIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_Ul
    lwz     r6, MarioHitActorPos(r13)
    addi    r31, r3, 0x0
    slwi    r0, r30, 4
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x8c
    lwz     r3, 0x4(r6)
    stw     r5, 0x74(sp)
    stw     r3, 0x78(sp)
    lwz     r3, 0x8(r6)
    stw     r3, 0x7c(sp)
    lwz     r3, 0x124(r29)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r3, 0x124(r29)
    slwi    r0, r31, 4
    addi    r4, sp, 0x80
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f4, 0x78(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x84(sp)
    fmuls   f2, f4, f1
    lfs     f6, 0x74(sp)
    lfs     f3, 0x8c(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x80(sp)
    fmadds  f3, f6, f3, f2
    lfs     f5, 0x7c(sp)
    lfs     f4, 0x94(sp)
    fmadds  f1, f6, f1, f0
    lfs     f2, 0x88(sp)
    fmadds  f3, f5, f4, f3
    lfs     f0, -0x6868(rtoc)
    fmadds  f1, f5, f2, f1
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x80089790
    fcmpo   cr0, f1, f0
    bge-    branch_0x80089790
    lwz     r4, 0x124(r29)
    li      r0, -0x1
    addi    r3, r29, 0x0
    stw     r0, 0x8(r4)
    lwz     r4, 0x124(r29)
    stw     r31, 0x4(r4)
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r29)
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x12c(r29)
    b       branch_0x800897bc

branch_0x80089790:
    lwz     r4, 0x124(r29)
    li      r0, -0x1
    addi    r3, r29, 0x0
    stw     r0, 0x8(r4)
    lwz     r4, 0x124(r29)
    stw     r30, 0x4(r4)
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r29)
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x12c(r29)
branch_0x800897bc:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl checkHitActors__11TFireWanwanFv
checkHitActors__11TFireWanwanFv: # 0x800897d8
    mflr    r0
    lis     r4, 0x8008
    stw     r0, 0x4(sp)
    lis     r5, 0x803f
    stwu    sp, -0x78(sp)
    stmw    r22, 0x50(sp)
    addi    r30, r4, 0x6db8
    lis     r4, 0x803b
    mr      r31, r3
    addi    r29, r5, 0xec8
    addi    r26, r4, 0x3f78
    lhz     r0, 0x48(r3)
    lwz     r6, 0x44(r3)
    lis     r3, 0x8008
    slwi    r0, r0, 2
    addi    r27, r3, 0x7e20
    lis     r3, 0x803b
    addi    r28, r6, 0x0
    add     r24, r6, r0
    addi    r25, r3, 0x3f68
    b       branch_0x80089a88

branch_0x8008982c:
    lwz     r4, 0x0(r28)
    cmplw   r4, r31
    beq-    branch_0x80089a84
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80089850
    li      r0, 0x1
    b       branch_0x80089854

branch_0x80089850:
    li      r0, 0x0
branch_0x80089854:
    clrlwi. r0, r0, 24
    beq-    branch_0x80089874
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    b       branch_0x80089a84

branch_0x80089874:
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x28
    bne-    branch_0x80089888
    li      r0, 0x1
    b       branch_0x8008988c

branch_0x80089888:
    li      r0, 0x0
branch_0x8008988c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80089a84
    addis   r0, r3, 0xf000
    cmplwi  r0, 0xe
    bne-    branch_0x800898a8
    li      r0, 0x1
    b       branch_0x800898ac

branch_0x800898a8:
    li      r0, 0x0
branch_0x800898ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x80089a7c
    mr      r3, r31
    bl      behaveToHitOthers__11TSmallEnemyFP9THitActor
    lwz     r3, 0x8c(r31)
    lwz     r22, 0x14(r3)
    cmplwi  r22, 0x0
    beq-    branch_0x800898d0
    b       branch_0x800898d4

branch_0x800898d0:
    lwz     r22, 0x1c(r3)
branch_0x800898d4:
    lbz     r0, -0x6d80(r13)
    extsb.  r0, r0
    bne-    branch_0x80089904
    subi    r3, r13, 0x6d7c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r26, -0x6d7c(r13)
    subi    r3, r13, 0x6d7c
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d80(r13)
branch_0x80089904:
    subi    r0, r13, 0x6d7c
    cmplw   r22, r0
    bne-    branch_0x80089998
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x80089998
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3ac(r3)
    li      r0, 0x0
    stw     r3, 0x19c(r31)
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lbz     r0, -0x6d78(r13)
    extsb.  r0, r0
    bne-    branch_0x80089974
    subi    r3, r13, 0x6d74
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r25, -0x6d74(r13)
    subi    r3, r13, 0x6d74
    addi    r4, r27, 0x0
    addi    r5, r29, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d78(r13)
branch_0x80089974:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6d74
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8008998c
    stw     r0, 0x1c(r4)
branch_0x8008998c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x80089998:
    lwz     r22, 0x0(r28)
    lwz     r3, 0x8c(r22)
    lwz     r23, 0x14(r3)
    cmplwi  r23, 0x0
    beq-    branch_0x800899b0
    b       branch_0x800899b4

branch_0x800899b0:
    lwz     r23, 0x1c(r3)
branch_0x800899b4:
    lbz     r0, -0x6d80(r13)
    extsb.  r0, r0
    bne-    branch_0x800899e4
    subi    r3, r13, 0x6d7c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r26, -0x6d7c(r13)
    subi    r3, r13, 0x6d7c
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d80(r13)
branch_0x800899e4:
    subi    r0, r13, 0x6d7c
    cmplw   r23, r0
    bne-    branch_0x80089a84
    lwz     r0, 0x19c(r22)
    cmpwi   r0, 0x0
    bgt-    branch_0x80089a84
    mr      r3, r22
    lwz     r12, 0x0(r22)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3ac(r3)
    li      r0, 0x0
    stw     r3, 0x19c(r22)
    lwz     r3, 0x8c(r22)
    stw     r0, 0x8(r3)
    lbz     r0, -0x6d78(r13)
    extsb.  r0, r0
    bne-    branch_0x80089a54
    subi    r3, r13, 0x6d74
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r25, -0x6d74(r13)
    subi    r3, r13, 0x6d74
    addi    r4, r27, 0x0
    addi    r5, r29, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d78(r13)
branch_0x80089a54:
    lwz     r4, 0x8c(r22)
    subi    r3, r13, 0x6d74
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80089a6c
    stw     r0, 0x1c(r4)
branch_0x80089a6c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x80089a84

branch_0x80089a7c:
    mr      r3, r31
    bl      behaveToHitOthers__11TSmallEnemyFP9THitActor
branch_0x80089a84:
    addi    r28, r28, 0x4
branch_0x80089a88:
    cmplw   r28, r24
    bne+    branch_0x8008982c
    lmw     r22, 0x50(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl emitEffects__11TFireWanwanFv
emitEffects__11TFireWanwanFv: # 0x80089aa4
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xb8(sp)
    addi    r30, r4, 0xec8
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    lwz     r29, 0x1e8(r3)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r29, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    mr      r29, r3
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1f0(r31)
    stfs    f1, 0x1f4(r31)
    stfs    f2, 0x1f8(r31)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80089b38
    lwz     r3, 0x194(r31)
    lbz     r0, 0xc0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80089b38
    addi    r5, r31, 0x0
    addi    r4, r31, 0x1f0
    addi    r6, r31, 0x24
    li      r3, 0x1f4
    bl      SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80089b38:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80089b64
    lwz     r0, 0x160(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80089b64
    addi    r5, r31, 0x0
    addi    r4, r31, 0x1f0
    addi    r6, r31, 0x24
    li      r3, 0x18f
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80089b64:
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80089b78
    b       branch_0x80089b7c

branch_0x80089b78:
    lwz     r28, 0x1c(r3)
branch_0x80089b7c:
    lbz     r0, -0x6d30(r13)
    extsb.  r0, r0
    bne-    branch_0x80089bbc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d2c(r13)
    addi    r0, r3, 0x3ed8
    lis     r3, 0x8008
    stw     r0, -0x6d2c(r13)
    addi    r4, r3, 0x5bd4
    subi    r3, r13, 0x6d2c
    addi    r5, r30, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d30(r13)
branch_0x80089bbc:
    subi    r0, r13, 0x6d2c
    cmplw   r28, r0
    bne-    branch_0x80089bf0
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x1b0(r31)
    lwz     r3, 0x20(r3)
    cmpw    r3, r0
    bge-    branch_0x80089bf0
    addi    r5, r31, 0x0
    addi    r4, r31, 0x1f0
    addi    r6, r31, 0x24
    li      r3, 0x12f
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80089bf0:
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80089c04
    b       branch_0x80089c08

branch_0x80089c04:
    lwz     r28, 0x1c(r3)
branch_0x80089c08:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x80089c48
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r3, 0x8008
    stw     r0, -0x6d34(r13)
    addi    r4, r3, 0x5f2c
    subi    r3, r13, 0x6d34
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x80089c48:
    subi    r0, r13, 0x6d34
    cmplw   r28, r0
    beq-    branch_0x80089c78
    lwz     r3, 0x194(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80089c6c
    li      r0, 0x1
    b       branch_0x80089c70

branch_0x80089c6c:
    li      r0, 0x0
branch_0x80089c70:
    cmpwi   r0, 0x0
    beq-    branch_0x80089dac
branch_0x80089c78:
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80089c8c
    b       branch_0x80089c90

branch_0x80089c8c:
    lwz     r28, 0x1c(r3)
branch_0x80089c90:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x80089cd0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r3, 0x8008
    stw     r0, -0x6d34(r13)
    addi    r4, r3, 0x5f2c
    subi    r3, r13, 0x6d34
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x80089cd0:
    subi    r0, r13, 0x6d34
    cmplw   r28, r0
    bne-    branch_0x80089cec
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r28, r3, 0x20
    b       branch_0x80089d88

branch_0x80089cec:
    addi    r28, r31, 0x1fc
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r3, r3, 0x20
    addi    r4, r28, 0x0
    bl      PSMTXCopy
    lfs     f30, 0x18(r28)
    lfs     f31, 0x8(r28)
    fmuls   f1, f30, f30
    lfs     f29, 0x28(r28)
    lfs     f0, -0x6830(rtoc)
    fmadds  f1, f31, f31, f1
    fmadds  f1, f29, f29, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80089d3c
    lfs     f4, -0x6868(rtoc)
    fmr     f3, f4
    fmr     f2, f3
    b       branch_0x80089d54

branch_0x80089d3c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6854(rtoc)
    fmuls   f0, f0, f1
    fmuls   f2, f31, f0
    fmuls   f3, f30, f0
    fmuls   f4, f29, f0
branch_0x80089d54:
    lfs     f1, -0x67f8(rtoc)
    lfs     f0, 0xc(r28)
    fmuls   f2, f2, f1
    fmuls   f3, f3, f1
    fmuls   f4, f4, f1
    fadds   f0, f0, f2
    stfs    f0, 0xc(r28)
    lfs     f0, 0x1c(r28)
    fadds   f0, f0, f3
    stfs    f0, 0x1c(r28)
    lfs     f0, 0x2c(r28)
    fadds   f0, f0, f4
    stfs    f0, 0x2c(r28)
branch_0x80089d88:
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r31, 0x24
    li      r3, 0x103
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    cmplwi  r3, 0x0
    beq-    branch_0x80089dac
    li      r0, 0xb3
    stb     r0, 0x183(r3)
branch_0x80089dac:
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80089dc0
    b       branch_0x80089dc4

branch_0x80089dc0:
    lwz     r28, 0x1c(r3)
branch_0x80089dc4:
    lbz     r0, -0x6d50(r13)
    extsb.  r0, r0
    bne-    branch_0x80089e04
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d4c(r13)
    addi    r0, r3, 0x3f18
    lis     r3, 0x8008
    stw     r0, -0x6d4c(r13)
    addi    r4, r3, 0x5940
    subi    r3, r13, 0x6d4c
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d50(r13)
branch_0x80089e04:
    subi    r0, r13, 0x6d4c
    cmplw   r28, r0
    bne-    branch_0x80089e64
    lwz     r3, 0x24(r31)
    mr      r5, r31
    lwz     r0, 0x28(r31)
    addi    r4, r31, 0x10
    lfs     f1, -0x67f4(rtoc)
    stw     r3, 0x98(sp)
    addi    r6, sp, 0x98
    li      r3, 0x100
    stw     r0, 0x9c(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0xa0(sp)
    lfs     f0, 0x98(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80089e64:
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80089e78
    b       branch_0x80089e7c

branch_0x80089e78:
    lwz     r28, 0x1c(r3)
branch_0x80089e7c:
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x80089ebc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d44(r13)
    addi    r0, r3, 0x3f08
    lis     r3, 0x8008
    stw     r0, -0x6d44(r13)
    addi    r4, r3, 0x6510
    subi    r3, r13, 0x6d44
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x80089ebc:
    subi    r0, r13, 0x6d44
    cmplw   r28, r0
    bne-    branch_0x80089fd4
    lwz     r28, 0x1e8(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r28, 0x30
    lwz     r4, 0x58(r3)
    lfs     f2, -0x681c(rtoc)
    lwz     r3, gpMap(r13)
    add     r28, r4, r0
    lfs     f31, 0x2c(r28)
    addi    r4, sp, 0x74
    lfs     f0, 0x1c(r28)
    fmr     f3, f31
    lfs     f1, 0xc(r28)
    fadds   f2, f2, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, 0xc(r28)
    stfs    f0, 0x22c(r31)
    stfs    f1, 0x230(r31)
    stfs    f31, 0x234(r31)
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x258
    bge-    branch_0x80089f38
    addi    r5, r31, 0x0
    addi    r4, r31, 0x22c
    addi    r6, r31, 0x24
    li      r3, 0x18f
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80089f38:
    lwz     r3, 0x24(r31)
    mr      r4, r29
    lwz     r0, 0x28(r31)
    mr      r5, r31
    lfs     f1, -0x67f0(rtoc)
    stw     r3, 0x8c(sp)
    addi    r6, sp, 0x8c
    li      r3, 0x168
    stw     r0, 0x90(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x94(sp)
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x94(sp)
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    cmplwi  r3, 0x0
    beq-    branch_0x80089f9c
    lfs     f0, -0x67ec(rtoc)
    stfs    f0, 0x1b0(r3)
branch_0x80089f9c:
    lfs     f0, -0x67e8(rtoc)
    addi    r5, r31, 0x0
    addi    r4, r31, 0x22c
    stfs    f0, 0x8c(sp)
    addi    r6, sp, 0x8c
    li      r3, 0x1f7
    stfs    f0, 0x90(sp)
    stfs    f0, 0x94(sp)
    bl      SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    addi    r5, r31, 0x0
    addi    r4, r31, 0x22c
    addi    r6, sp, 0x8c
    li      r3, 0x171
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80089fd4:
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xd8
    blr


.globl updatePollute__11TFireWanwanFv
updatePollute__11TFireWanwanFv: # 0x8008a000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    lwz     r3, 0x194(r3)
    lbz     r0, 0xc0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8008a1a0
    lwz     r0, 0x1ac(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8008a054
    lwz     r3, 0x1ac(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x1ac(r31)
    b       branch_0x8008a1a0

branch_0x8008a054:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x410(r3)
    mr      r3, r31
    stw     r0, 0x1ac(r31)
    bl      getModel__10TLiveActorCFv
    lfsu    f30, 0x20(r3)
    lfs     f29, 0x10(r3)
    lfs     f28, 0x20(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x8c(r31)
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    lwz     r30, 0x14(r3)
    stw     r0, 0x60(sp)
    lfd     f2, -0x6840(rtoc)
    cmplwi  r30, 0x0
    lfd     f0, 0x60(sp)
    lfs     f1, -0x67e4(rtoc)
    fsubs   f2, f0, f2
    lfs     f0, -0x6860(rtoc)
    lfs     f5, -0x6804(rtoc)
    lfs     f3, 0x50(r31)
    fmuls   f4, f1, f2
    lfs     f2, 0x10(r31)
    lfs     f1, 0x14(r31)
    fsubs   f4, f4, f0
    lfs     f0, 0x18(r31)
    lfs     f31, -0x67e0(rtoc)
    fmuls   f4, f5, f4
    fmuls   f3, f4, f3
    fmadds  f30, f30, f3, f2
    fmadds  f29, f29, f3, f1
    fmadds  f28, f28, f3, f0
    beq-    branch_0x8008a0f4
    b       branch_0x8008a0f8

branch_0x8008a0f4:
    lwz     r30, 0x1c(r3)
branch_0x8008a0f8:
    lbz     r0, -0x6d68(r13)
    extsb.  r0, r0
    bne-    branch_0x8008a13c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d64(r13)
    addi    r0, r3, 0x3f48
    lis     r4, 0x8008
    stw     r0, -0x6d64(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xeec
    addi    r4, r4, 0x7630
    subi    r3, r13, 0x6d64
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d68(r13)
branch_0x8008a13c:
    subi    r0, r13, 0x6d64
    cmplw   r30, r0
    bne-    branch_0x8008a168
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x474(r3)
    fmuls   f31, f31, f0
    b       branch_0x8008a184

branch_0x8008a168:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x460(r3)
    fmuls   f31, f31, f0
branch_0x8008a184:
    fmr     f2, f29
    lwz     r3, gpPollution(r13)
    fmr     f1, f30
    li      r4, 0x1
    fmr     f3, f28
    fmr     f4, f31
    bl      stamp__17TPollutionManagerFUsffff
branch_0x8008a1a0:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x90
    blr


.globl updateRumble__11TFireWanwanFv
updateRumble__11TFireWanwanFv: # 0x8008a1c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stmw    r26, 0x30(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x8c(r31)
    lfs     f31, 0x3fc(r3)
    lwz     r30, 0x14(r4)
    cmplwi  r30, 0x0
    beq-    branch_0x8008a208
    b       branch_0x8008a20c

branch_0x8008a208:
    lwz     r30, 0x1c(r4)
branch_0x8008a20c:
    lbz     r0, -0x6d30(r13)
    extsb.  r0, r0
    bne-    branch_0x8008a24c
    subi    r3, r13, 0x6d2c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3ed8
    lis     r4, 0x8008
    stw     r0, -0x6d2c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf40
    addi    r4, r4, 0x5bd4
    subi    r3, r13, 0x6d2c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d30(r13)
branch_0x8008a24c:
    subi    r0, r13, 0x6d2c
    cmplw   r30, r0
    li      r29, 0x1
    addi    r28, r29, 0x0
    addi    r27, r29, 0x0
    addi    r26, r29, 0x0
    beq-    branch_0x8008a28c
    bl      theNerve__19TNerveFireWanwanDieFv
    mr      r30, r3
    lwz     r3, 0x8c(r31)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subf    r0, r3, r30
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8008a28c
    li      r26, 0x0
branch_0x8008a28c:
    clrlwi. r0, r26, 24
    bne-    branch_0x8008a2b4
    lwz     r3, 0x194(r31)
    bl      isTaken__10TTakeActorCFv
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi. r0, r0, 24
    bne-    branch_0x8008a2b4
    li      r27, 0x0
branch_0x8008a2b4:
    clrlwi. r0, r27, 24
    bne-    branch_0x8008a2e0
    bl      theNerve__23TNerveFireWanwanRecoverFv
    mr      r30, r3
    lwz     r3, 0x8c(r31)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subf    r0, r3, r30
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8008a2e0
    li      r28, 0x0
branch_0x8008a2e0:
    clrlwi. r0, r28, 24
    bne-    branch_0x8008a304
    bl      theNerve__22TNerveFireWanwanEscapeFv
    mr      r30, r3
    lwz     r3, 0x8c(r31)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r30
    beq-    branch_0x8008a304
    li      r29, 0x0
branch_0x8008a304:
    clrlwi. r0, r29, 24
    bne-    branch_0x8008a348
    fmuls   f0, f31, f31
    lfs     f1, 0x134(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8008a348
    lwz     r0, 0x1a4(r31)
    cmpwi   r0, 0xe10
    bgt-    branch_0x8008a350
    lwz     r3, -0x60f0(r13)
    addi    r5, r31, 0x10
    li      r4, 0x9
    bl      start__9RumbleMgrFiP3Vec
    lwz     r3, 0x1a4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1a4(r31)
    b       branch_0x8008a350

branch_0x8008a348:
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
branch_0x8008a350:
    lwz     r3, 0x194(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8008a368
    li      r0, 0x1
    b       branch_0x8008a36c

branch_0x8008a368:
    li      r0, 0x0
branch_0x8008a36c:
    cmpwi   r0, 0x0
    beq-    branch_0x8008a3a0
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0xe10
    bgt-    branch_0x8008a3a8
    lwz     r3, -0x60f0(r13)
    li      r4, 0x9
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    lwz     r3, 0x1a8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1a8(r31)
    b       branch_0x8008a3a8

branch_0x8008a3a0:
    li      r0, 0x0
    stw     r0, 0x1a8(r31)
branch_0x8008a3a8:
    lmw     r26, 0x30(sp)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl moveObject__11TFireWanwanFv
moveObject__11TFireWanwanFv: # 0x8008a3c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stfd    f30, 0xe8(sp)
    stfd    f29, 0xe0(sp)
    stw     r31, 0xdc(sp)
    mr      r31, r3
    stw     r30, 0xd8(sp)
    stw     r29, 0xd4(sp)
    stw     r28, 0xd0(sp)
    lwz     r0, 0xf0(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0xec8
    clrlwi. r0, r0, 31
    bne-    branch_0x8008aa7c
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8008a418
    lwz     r3, 0x19c(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
branch_0x8008a418:
    lwz     r0, 0x1a0(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8008a430
    lwz     r3, 0x1a0(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x1a0(r31)
branch_0x8008a430:
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8008a44c
    b       branch_0x8008a450

branch_0x8008a44c:
    lwz     r29, 0x1c(r3)
branch_0x8008a450:
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x8008a48c
    subi    r3, r13, 0x6d44
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3f08
    lis     r3, 0x8008
    stw     r0, -0x6d44(r13)
    addi    r4, r3, 0x6510
    subi    r3, r13, 0x6d44
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x8008a48c:
    subi    r0, r13, 0x6d44
    cmplw   r29, r0
    beq-    branch_0x8008a574
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lis     r29, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0xcc(sp)
    lwz     r12, 0x108(r12)
    stw     r29, 0xc8(sp)
    lfd     f1, -0x6840(rtoc)
    mtlr    r12
    lfd     f0, 0xc8(sp)
    fsubs   f29, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6840(rtoc)
    stw     r0, 0xc4(sp)
    lwz     r12, 0x108(r12)
    stw     r29, 0xc0(sp)
    mtlr    r12
    lfd     f0, 0xc0(sp)
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6840(rtoc)
    stw     r0, 0xbc(sp)
    lwz     r12, 0x108(r12)
    stw     r29, 0xb8(sp)
    mtlr    r12
    lfd     f0, 0xb8(sp)
    fsubs   f31, f0, f1
    blrl
    lwz     r0, 0x180(r3)
    mr      r3, r31
    lfd     f1, -0x6840(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0xb4(sp)
    stw     r29, 0xb0(sp)
    stfs    f29, 0x50(r31)
    lfd     f0, 0xb0(sp)
    stfs    f30, 0x54(r31)
    fsubs   f0, f0, f1
    stfs    f31, 0x58(r31)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x8008a574:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x8c(r31)
    lfs     f29, 0x3e8(r3)
    lwz     r29, 0x14(r4)
    cmplwi  r29, 0x0
    beq-    branch_0x8008a5a0
    b       branch_0x8008a5a4

branch_0x8008a5a0:
    lwz     r29, 0x1c(r4)
branch_0x8008a5a4:
    lbz     r0, -0x6d80(r13)
    extsb.  r0, r0
    bne-    branch_0x8008a5e0
    subi    r3, r13, 0x6d7c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3f78
    lis     r3, 0x8008
    stw     r0, -0x6d7c(r13)
    addi    r4, r3, 0x6db8
    subi    r3, r13, 0x6d7c
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d80(r13)
branch_0x8008a5e0:
    subi    r0, r13, 0x6d7c
    cmplw   r29, r0
    beq-    branch_0x8008a64c
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8008a600
    b       branch_0x8008a604

branch_0x8008a600:
    lwz     r29, 0x1c(r3)
branch_0x8008a604:
    lbz     r0, -0x6d68(r13)
    extsb.  r0, r0
    bne-    branch_0x8008a640
    subi    r3, r13, 0x6d64
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3f48
    lis     r3, 0x8008
    stw     r0, -0x6d64(r13)
    addi    r4, r3, 0x7630
    subi    r3, r13, 0x6d64
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d68(r13)
branch_0x8008a640:
    subi    r0, r13, 0x6d64
    cmplw   r29, r0
    bne-    branch_0x8008a66c
branch_0x8008a64c:
    fmuls   f0, f29, f29
    lfs     f1, 0x134(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8008a66c
    lwz     r3, -0x7108(r13)
    li      r4, 0x3
    lfs     f1, -0x6860(rtoc)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
branch_0x8008a66c:
    mr      r3, r31
    bl      updateRumble__11TFireWanwanFv
    mr      r3, r31
    bl      updatePollute__11TFireWanwanFv
    lwz     r3, 0x194(r31)
    lbz     r0, 0xc0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8008a73c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1b4(r31)
    lfs     f0, 0x44c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x1b4(r31)
    lfs     f1, -0x6854(rtoc)
    lfs     f0, 0x1b4(r31)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8008a73c
    fsubs   f0, f0, f1
    mr      r3, r31
    stfs    f0, 0x1b4(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8008a704
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x7c(r3)
    b       branch_0x8008a708

branch_0x8008a704:
    li      r4, 0x1
branch_0x8008a708:
    lbz     r3, 0x13c(r31)
    addi    r0, r3, 0x1
    clrlwi  r3, r0, 24
    cmplwi  r3, 0x0
    bge-    branch_0x8008a724
    li      r4, 0x0
    b       branch_0x8008a738

branch_0x8008a724:
    clrlwi  r0, r4, 24
    cmplw   r3, r0
    ble-    branch_0x8008a734
    b       branch_0x8008a738

branch_0x8008a734:
    mr      r4, r3
branch_0x8008a738:
    stb     r4, 0x13c(r31)
branch_0x8008a73c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8008a764
    b       branch_0x8008a768

branch_0x8008a764:
    lwz     r29, 0x1c(r3)
branch_0x8008a768:
    lbz     r0, -0x6d28(r13)
    extsb.  r0, r0
    bne-    branch_0x8008a7a4
    subi    r3, r13, 0x6d24
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3ec8
    lis     r3, 0x8008
    stw     r0, -0x6d24(r13)
    addi    r4, r3, 0x5644
    subi    r3, r13, 0x6d24
    addi    r5, r30, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d28(r13)
branch_0x8008a7a4:
    subi    r0, r13, 0x6d24
    cmplw   r29, r0
    li      r28, 0x1
    beq-    branch_0x8008a7c4
    bl      theNerve__22TNerveFireWanwanFreezeFv
    cmplw   r29, r3
    beq-    branch_0x8008a7c4
    li      r28, 0x0
branch_0x8008a7c4:
    clrlwi. r0, r28, 24
    beq-    branch_0x8008a85c
    lwz     r3, 0x194(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8008a7e4
    li      r0, 0x1
    b       branch_0x8008a7e8

branch_0x8008a7e4:
    li      r0, 0x0
branch_0x8008a7e8:
    cmpwi   r0, 0x0
    beq-    branch_0x8008a85c
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6d40(r13)
    extsb.  r0, r0
    bne-    branch_0x8008a838
    subi    r3, r13, 0x6d3c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3ef8
    lis     r3, 0x8008
    stw     r0, -0x6d3c(r13)
    addi    r4, r3, 0x61f0
    subi    r3, r13, 0x6d3c
    addi    r5, r30, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d40(r13)
branch_0x8008a838:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6d3c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8008a850
    stw     r0, 0x1c(r4)
branch_0x8008a850:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8008a85c:
    lfs     f0, -0x6868(rtoc)
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
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x180(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8008a8b0
    mr      r3, r31
    bl      calcRideMomentum__10TLiveActorFv
branch_0x8008a8b0:
    mr      r3, r31
    bl      checkHitActors__11TFireWanwanFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x14(r31)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8008a988
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8008a914
    li      r0, 0x1
    b       branch_0x8008a918

branch_0x8008a914:
    li      r0, 0x0
branch_0x8008a918:
    clrlwi. r0, r0, 24
    bne-    branch_0x8008a988
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x104
    beq-    branch_0x8008a93c
    cmplwi  r0, 0x105
    beq-    branch_0x8008a93c
    cmplwi  r0, 0x4104
    bne-    branch_0x8008a944
branch_0x8008a93c:
    li      r0, 0x1
    b       branch_0x8008a948

branch_0x8008a944:
    li      r0, 0x0
branch_0x8008a948:
    clrlwi. r0, r0, 24
    bne-    branch_0x8008a95c
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8008a988
branch_0x8008a95c:
    lfs     f2, 0x14(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, 0xc0(r31)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8008a988
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8008a988:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x124(r12)
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
    lfs     f1, 0x30(r31)
    lfs     f0, 0xa0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0xa4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0xa8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r31)
    lwz     r3, 0x160(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8008aa10
    addi    r0, r3, 0x1
    stw     r0, 0x160(r31)
branch_0x8008aa10:
    lwz     r0, 0x160(r31)
    cmpwi   r0, 0x1e
    ble-    branch_0x8008aa24
    li      r0, 0x0
    stw     r0, 0x160(r31)
branch_0x8008aa24:
    lwz     r3, 0xec(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8008aa58
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8008aa58
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x30
    lwz     r12, 0xc(r12)
    addi    r6, r31, 0x24
    mtlr    r12
    blrl
branch_0x8008aa58:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x180(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8008aa7c
    mr      r3, r31
    bl      calcRidePos__10TLiveActorFv
branch_0x8008aa7c:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lfd     f30, 0xe8(sp)
    mtlr    r0
    lfd     f29, 0xe0(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    lwz     r29, 0xd4(sp)
    lwz     r28, 0xd0(sp)
    addi    sp, sp, 0xf8
    blr


.globl calcRootMatrix__11TFireWanwanFv
calcRootMatrix__11TFireWanwanFv: # 0x8008aaa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stfd    f27, 0x68(sp)
    stfd    f26, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r3, 0x8c(r30)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8008aaf0
    b       branch_0x8008aaf4

branch_0x8008aaf0:
    lwz     r31, 0x1c(r3)
branch_0x8008aaf4:
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ab38
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d44(r13)
    addi    r0, r3, 0x3f08
    lis     r4, 0x8008
    stw     r0, -0x6d44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf1c
    addi    r4, r4, 0x6510
    subi    r3, r13, 0x6d44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x8008ab38:
    subi    r0, r13, 0x6d44
    cmplw   r31, r0
    bne-    branch_0x8008ac40
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f27, 0x34(r3)
    addi    r31, r3, 0x20
    lfs     f28, 0x24(r3)
    fmuls   f1, f27, f27
    lfs     f26, 0x44(r3)
    lfs     f0, -0x6830(rtoc)
    lfs     f31, 0x28(r3)
    fmadds  f1, f28, f28, f1
    lfs     f30, 0x38(r3)
    lfs     f29, 0x48(r3)
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8008ab94
    lfs     f26, -0x6868(rtoc)
    fmr     f27, f26
    fmr     f28, f27
    b       branch_0x8008abac

branch_0x8008ab94:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6854(rtoc)
    fmuls   f0, f0, f1
    fmuls   f28, f28, f0
    fmuls   f27, f27, f0
    fmuls   f26, f26, f0
branch_0x8008abac:
    fmuls   f1, f30, f30
    lfs     f0, -0x6830(rtoc)
    fmadds  f1, f31, f31, f1
    fmadds  f1, f29, f29, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8008abd8
    lfs     f5, -0x6868(rtoc)
    fmr     f4, f5
    fmr     f3, f4
    b       branch_0x8008abf0

branch_0x8008abd8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6854(rtoc)
    fmuls   f0, f0, f1
    fmuls   f3, f31, f0
    fmuls   f4, f30, f0
    fmuls   f5, f29, f0
branch_0x8008abf0:
    lfs     f2, -0x67dc(rtoc)
    lfs     f1, -0x6868(rtoc)
    fmuls   f28, f28, f2
    lfs     f0, 0xc(r31)
    fmuls   f3, f3, f1
    fmuls   f27, f27, f2
    fmuls   f4, f4, f1
    fadds   f3, f3, f28
    fmuls   f26, f26, f2
    fmuls   f5, f5, f1
    fadds   f0, f0, f3
    fadds   f4, f4, f27
    fadds   f5, f5, f26
    stfs    f0, 0xc(r31)
    lfs     f0, 0x1c(r31)
    fadds   f0, f0, f4
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x2c(r31)
    fadds   f0, f0, f5
    stfs    f0, 0x2c(r31)
branch_0x8008ac40:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lfd     f27, 0x68(sp)
    lfd     f26, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x90
    blr


.globl perform__11TFireWanwanFUlPQ26JDrama9TGraphics
perform__11TFireWanwanFUlPQ26JDrama9TGraphics: # 0x8008ac70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    rlwinm. r31, r29, 0, 30, 30
    bne-    branch_0x8008acc4
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r28)
    bl      calc__6MActorFv
branch_0x8008acc4:
    cmplwi  r31, 0x0
    beq-    branch_0x8008ad6c
    mr      r3, r28
    bl      emitEffects__11TFireWanwanFv
    lwz     r31, 0x238(r28)
    addi    r3, r31, 0x18
    bl      update__12J3DFrameCtrlFv
    lbz     r0, 0x1d(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8008acf4
    li      r0, 0x1
    b       branch_0x8008acf8

branch_0x8008acf4:
    li      r0, 0x0
branch_0x8008acf8:
    cmpwi   r0, 0x0
    beq-    branch_0x8008ad08
    lfs     f31, -0x6854(rtoc)
    b       branch_0x8008ad30

branch_0x8008ad08:
    lha     r3, 0x20(r31)
    lis     r0, 0x4330
    lfd     f1, -0x6840(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x28(r31)
    stw     r3, 0x24(sp)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fdivs   f31, f2, f0
branch_0x8008ad30:
    fmr     f1, f31
    addi    r3, r31, 0x8
    addi    r4, r31, 0x10
    bl      value_lerp_s___6MyUtilFRCsRCsf
    fmr     f1, f31
    sth     r3, 0x0(r31)
    addi    r3, r31, 0xa
    addi    r4, r31, 0x12
    bl      value_lerp_s___6MyUtilFRCsRCsf
    fmr     f1, f31
    sth     r3, 0x2(r31)
    addi    r3, r31, 0xc
    addi    r4, r31, 0x14
    bl      value_lerp_s___6MyUtilFRCsRCsf
    sth     r3, 0x4(r31)
branch_0x8008ad6c:
    lwz     r0, 0xf0(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x8008ad94
    lwz     r3, 0x194(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x8008ad94:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl isHitValid__11TFireWanwanFUl
isHitValid__11TFireWanwanFUl: # 0x8008adb8
    li      r3, 0x0
    blr


.globl kill__11TFireWanwanFv
kill__11TFireWanwanFv: # 0x8008adc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8008aec0
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8008adf8
    b       branch_0x8008adfc

branch_0x8008adf8:
    lwz     r30, 0x1c(r3)
branch_0x8008adfc:
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ae40
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d44(r13)
    addi    r0, r3, 0x3f08
    lis     r4, 0x8008
    stw     r0, -0x6d44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf1c
    addi    r4, r4, 0x6510
    subi    r3, r13, 0x6d44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x8008ae40:
    subi    r3, r13, 0x6d44
    cmplw   r30, r3
    bne-    branch_0x8008ae50
    b       branch_0x8008aec0

branch_0x8008ae50:
    lwz     r4, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, -0x6d48(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ae9c
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6d44(r13)
    addi    r0, r4, 0x3f08
    lis     r4, 0x8008
    stw     r0, -0x6d44(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x6510
    addi    r5, r5, 0xf1c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d48(r13)
branch_0x8008ae9c:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6d44
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8008aeb4
    stw     r0, 0x1c(r4)
branch_0x8008aeb4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8008aec0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl behaveToWater__11TFireWanwanFP9THitActor
behaveToWater__11TFireWanwanFP9THitActor: # 0x8008aed8
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stmw    r27, 0xd4(sp)
    mr      r30, r3
    addi    r31, r4, 0xec8
    lwz     r3, 0x194(r3)
    lbz     r0, 0xc0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8008affc
    lwz     r0, 0x160(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8008b24c
    lwz     r3, gpMSound(r13)
    li      r4, 0x28d1
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008af40
    addi    r4, r30, 0x10
    li      r3, 0x28d1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008af40:
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8008af54
    b       branch_0x8008af58

branch_0x8008af54:
    lwz     r29, 0x1c(r3)
branch_0x8008af58:
    lbz     r0, -0x6d50(r13)
    extsb.  r0, r0
    bne-    branch_0x8008af98
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d4c(r13)
    addi    r0, r3, 0x3f18
    lis     r3, 0x8008
    stw     r0, -0x6d4c(r13)
    addi    r4, r3, 0x5940
    subi    r3, r13, 0x6d4c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d50(r13)
branch_0x8008af98:
    subi    r0, r13, 0x6d4c
    cmplw   r29, r0
    beq-    branch_0x8008b24c
    lwz     r3, 0x24(r30)
    mr      r5, r30
    lwz     r0, 0x28(r30)
    addi    r4, r30, 0x10
    lfs     f1, -0x67d8(rtoc)
    stw     r3, 0xc0(sp)
    addi    r6, sp, 0xc0
    li      r3, 0xc9
    stw     r0, 0xc4(sp)
    lwz     r0, 0x2c(r30)
    stw     r0, 0xc8(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    b       branch_0x8008b24c

branch_0x8008affc:
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8008b168
    lwz     r0, 0x160(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8008b044
    lwz     r3, gpMSound(r13)
    li      r4, 0x28c4
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008b044
    addi    r4, r30, 0x10
    li      r3, 0x28c4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008b044:
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8008b058
    b       branch_0x8008b05c

branch_0x8008b058:
    lwz     r29, 0x1c(r3)
branch_0x8008b05c:
    lbz     r0, -0x6d58(r13)
    extsb.  r0, r0
    bne-    branch_0x8008b09c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d54(r13)
    addi    r0, r3, 0x3f28
    lis     r3, 0x8008
    stw     r0, -0x6d54(r13)
    addi    r4, r3, 0x70a4
    subi    r3, r13, 0x6d54
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d58(r13)
branch_0x8008b09c:
    subi    r0, r13, 0x6d54
    cmplw   r29, r0
    li      r28, 0x1
    addi    r27, r28, 0x0
    beq-    branch_0x8008b0c0
    bl      theNerve__20TNerveFireWanwanTurnFv
    cmplw   r29, r3
    beq-    branch_0x8008b0c0
    li      r27, 0x0
branch_0x8008b0c0:
    clrlwi. r0, r27, 24
    bne-    branch_0x8008b0ec
    lwz     r3, 0x8c(r30)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    mr      r29, r3
    bl      theNerve__27TNerveFireWanwanGraphWanderFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8008b0ec
    li      r28, 0x0
branch_0x8008b0ec:
    clrlwi. r0, r28, 24
    beq-    branch_0x8008b24c
    lwz     r3, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6d70(r13)
    extsb.  r0, r0
    bne-    branch_0x8008b140
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d6c(r13)
    addi    r0, r3, 0x3f58
    lis     r3, 0x8008
    stw     r0, -0x6d6c(r13)
    addi    r4, r3, 0x72c8
    subi    r3, r13, 0x6d6c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d70(r13)
branch_0x8008b140:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6d6c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8008b158
    stw     r0, 0x1c(r4)
branch_0x8008b158:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x8008b24c

branch_0x8008b168:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28bd
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008b198
    addi    r4, r30, 0x10
    li      r3, 0x28bd
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008b198:
    lwz     r3, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6d28(r13)
    extsb.  r0, r0
    bne-    branch_0x8008b1e4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d24(r13)
    addi    r0, r3, 0x3ec8
    lis     r3, 0x8008
    stw     r0, -0x6d24(r13)
    addi    r4, r3, 0x5644
    subi    r3, r13, 0x6d24
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d28(r13)
branch_0x8008b1e4:
    lwz     r5, 0x8c(r30)
    subi    r4, r13, 0x6d24
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8008b1fc
    stw     r0, 0x1c(r5)
branch_0x8008b1fc:
    li      r31, 0x0
    stw     r31, 0x20(r5)
    addi    r6, sp, 0xa0
    li      r3, 0x8b
    stw     r4, 0x14(r5)
    lwz     r5, 0x194(r30)
    lwz     r4, 0x70(r5)
    lfs     f0, 0x148(r4)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    lwz     r4, 0xb8(r5)
    lwz     r4, 0x0(r4)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x194(r30)
    li      r0, 0x14
    stb     r31, 0xc0(r3)
    stw     r0, 0x160(r30)
branch_0x8008b24c:
    lmw     r27, 0xd4(sp)
    lwz     r0, 0xec(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl receiveMessage__11TFireWanwanFP9THitActorUl
receiveMessage__11TFireWanwanFP9THitActorUl: # 0x8008b260
    mflr    r0
    cmpwi   r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8008b2a4
    bge-    branch_0x8008b394
    cmpwi   r5, 0x2
    bge-    branch_0x8008b394
    cmpwi   r5, 0x0
    bge-    branch_0x8008b29c
    b       branch_0x8008b394

branch_0x8008b29c:
    li      r3, 0x0
    b       branch_0x8008b3a0

branch_0x8008b2a4:
    lfs     f0, -0x6854(rtoc)
    addi    r6, sp, 0x28
    addi    r4, r31, 0x10
    stfs    f0, 0x28(sp)
    li      r3, 0xe7
    li      r5, 0x0
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8008b304
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x6c
    lbz     r3, 0x10(r3)
    b       branch_0x8008b308

branch_0x8008b304:
    li      r3, 0x1
branch_0x8008b308:
    lbz     r0, 0x13c(r30)
    clrlwi  r3, r3, 24
    cmplw   r3, r0
    bne-    branch_0x8008b348
    lwz     r3, gpMSound(r13)
    li      r4, 0x290f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008b348
    addi    r4, r30, 0x10
    li      r3, 0x290f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008b348:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x18c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x160(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8008b38c
    li      r0, 0x1
    stw     r0, 0x160(r30)
branch_0x8008b38c:
    li      r3, 0x1
    b       branch_0x8008b3a0

branch_0x8008b394:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      receiveMessage__11TSmallEnemyFP9THitActorUl
branch_0x8008b3a0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl isMissMario__11TFireWanwanCFv
isMissMario__11TFireWanwanCFv: # 0x8008b3b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r4, MarioFlags(r13)
    lwz     r4, 0x0(r4)
    rlwinm. r0, r4, 0, 30, 30 # MARIOFLAG_2
    beq-    branch_0x8008b3e8
    li      r0, 0x1
    b       branch_0x8008b3ec

branch_0x8008b3e8:
    li      r0, 0x0
branch_0x8008b3ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x8008b46c
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x8008b404
    li      r0, 0x1
    b       branch_0x8008b408

branch_0x8008b404:
    li      r0, 0x0
branch_0x8008b408:
    clrlwi. r0, r0, 24
    bne-    branch_0x8008b46c
    lwz     r3, -0x608c(r13)
    lwz     r3, 0x0(r3)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8008b43c
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8008b43c
    cmplwi  r3, 0x4104
    bne-    branch_0x8008b444
branch_0x8008b43c:
    li      r0, 0x1
    b       branch_0x8008b448

branch_0x8008b444:
    li      r0, 0x0
branch_0x8008b448:
    clrlwi. r0, r0, 24
    bne-    branch_0x8008b46c
    rlwinm. r0, r4, 0, 14, 14
    beq-    branch_0x8008b460
    li      r0, 0x1
    b       branch_0x8008b464

branch_0x8008b460:
    li      r0, 0x0
branch_0x8008b464:
    clrlwi. r0, r0, 24
    beq-    branch_0x8008b474
branch_0x8008b46c:
    li      r3, 0x1
    b       branch_0x8008b560

branch_0x8008b474:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, MarioHitActorPos(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r4)
    lfs     f2, 0x130(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x8008b4b0
    li      r3, 0x1
    b       branch_0x8008b560

branch_0x8008b4b0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x104(r31)
    lfs     f31, 0x11c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8008b4dc
    addi    r4, r4, 0x10
    b       branch_0x8008b4e0

branch_0x8008b4dc:
    addi    r4, r31, 0x108
branch_0x8008b4e0:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x40(sp)
    lfs     f2, 0x44(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    ble-    branch_0x8008b55c
    li      r3, 0x1
    b       branch_0x8008b560

branch_0x8008b55c:
    li      r3, 0x0
branch_0x8008b560:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl isFindMario__11TFireWanwanFf
isFindMario__11TFireWanwanFf: # 0x8008b578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stfd    f31, 0x18(sp)
    fmr     f31, f1
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x1a0(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8008b5a8
    li      r3, 0x0
    b       branch_0x8008b5cc

branch_0x8008b5a8:
    mr      r3, r31
    bl      isMarioInWater__11TSmallEnemyCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8008b5c0
    li      r3, 0x0
    b       branch_0x8008b5cc

branch_0x8008b5c0:
    mr      r3, r31
    fmr     f1, f31
    bl      isFindMarioFromParam__11TSmallEnemyCFf
branch_0x8008b5cc:
    lwz     r0, 0x24(sp)
    lfd     f31, 0x18(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl reset__11TFireWanwanFv
reset__11TFireWanwanFv: # 0x8008b5e4
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    lwz     r6, 0x1dc(r3)
    lwz     r4, 0x1e0(r3)
    stw     r6, 0x10(r31)
    stw     r4, 0x14(r31)
    lwz     r4, 0x1e4(r31)
    stw     r4, 0x18(r31)
    lwz     r4, 0x194(r31)
    stb     r5, 0xc0(r4)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    mr      r3, r31
    bl      reset__11TSmallEnemyFv
    li      r30, 0x0
    stw     r30, 0x1ac(r31)
    mr      r3, r31
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x1b4(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2e4(r3)
    stfs    f0, 0x140(r31)
    lwz     r3, 0x8c(r31)
    stw     r30, 0x8(r3)
    lwz     r3, 0x8c(r31)
    lwz     r4, 0x14(r3)
    lwz     r0, 0x18(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8008b688
    stw     r4, 0x1c(r3)
branch_0x8008b688:
    li      r30, 0x0
    stw     r30, 0x20(r3)
    li      r4, 0x1
    stw     r0, 0x14(r3)
    lwz     r3, 0x238(r31)
    lwz     r7, -0x6880(rtoc)
    lwz     r6, -0x687c(rtoc)
    stw     r7, 0x0(r3)
    stw     r6, 0x4(r3)
    lwz     r29, 0x238(r31)
    lwz     r5, 0x0(r29)
    addi    r3, r29, 0x18
    lwz     r0, 0x4(r29)
    stw     r5, 0x8(r29)
    stw     r0, 0xc(r29)
    stw     r7, 0x10(r29)
    stw     r6, 0x14(r29)
    bl      init__12J3DFrameCtrlFs
    stb     r30, 0x1c(r29)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r29)
    li      r4, 0x1
    lwz     r3, 0x194(r31)
    lwz     r29, 0xbc(r3)
    lwz     r5, 0x0(r29)
    addi    r3, r29, 0x18
    lwz     r0, 0x4(r29)
    stw     r5, 0x8(r29)
    stw     r0, 0xc(r29)
    lwz     r5, -0x6880(rtoc)
    lwz     r0, -0x687c(rtoc)
    stw     r5, 0x10(r29)
    stw     r0, 0x14(r29)
    bl      init__12J3DFrameCtrlFs
    stb     r30, 0x1c(r29)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x24(r29)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl setMActorAndKeeper__11TFireWanwanFv
setMActorAndKeeper__11TFireWanwanFv: # 0x8008b738
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8008b770
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x7
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8008b770:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x49c8
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__11TFireWanwanFP12TLiveManager
init__11TFireWanwanFP12TLiveManager: # 0x8008b7a4
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    subi    r31, r5, 0x4b88
    stw     r30, 0xa0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x9c(sp)
    stw     r28, 0x98(sp)
    bl      init__11TSmallEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0xe
    stw     r0, 0x4c(r30)
    li      r29, 0x1
    stw     r29, 0x150(r30)
    lbz     r0, -0x6d80(r13)
    extsb.  r0, r0
    bne-    branch_0x8008b824
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d7c(r13)
    addi    r0, r3, 0x3f78
    lis     r4, 0x8008
    stw     r0, -0x6d7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xec8
    addi    r4, r4, 0x6db8
    subi    r3, r13, 0x6d7c
    bl      __register_global_object
    stb     r29, -0x6d80(r13)
branch_0x8008b824:
    lwz     r4, 0x8c(r30)
    li      r29, 0x0
    subi    r0, r13, 0x6d7c
    stw     r29, 0x8(r4)
    addi    r3, sp, 0x64
    stw     r29, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r29, 0x1c(r4)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, 0x10(r30)
    addi    r3, r30, 0x0
    addi    r28, sp, 0x64
    stfs    f0, 0x70(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x80(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x90(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r3, 0xd0
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8008b920
    stw     r28, 0x5c(sp)
    mr      r3, r28
    addi    r4, r31, 0x248
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r28)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r28)
    addi    r3, r3, 0x4130
    addi    r0, r3, 0x24
    stw     r29, 0x68(r28)
    stw     r29, 0x6c(r28)
    lwz     r29, 0x5c(sp)
    stw     r3, 0x0(r29)
    addi    r3, r29, 0x74
    stw     r0, 0x20(r29)
    stw     r30, 0x70(r29)
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, r29, 0x74
    bl      PSMTXIdentity
branch_0x8008b920:
    stw     r28, 0x194(r30)
    lwz     r3, 0x194(r30)
    bl      init__18TFireWanwanTailHitFv
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8008b954
    lis     r3, 0x803b
    subi    r0, r3, 0x2eac
    stw     r0, 0x18(r28)
    addi    r3, r28, 0x18
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
branch_0x8008b954:
    stw     r28, 0x238(r30)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    lwz     r4, 0x10(r30)
    addi    r28, r3, 0x1f4
    lwz     r0, 0x14(r30)
    stw     r4, 0x1dc(r30)
    stw     r0, 0x1e0(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x1e4(r30)
    lbz     r0, 0x1f4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8008b9a0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1cc
    li      r5, 0x1f4
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x8008b9a0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r28, r3, 0x18f
    lbz     r0, 0x18f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8008b9d0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1f4
    li      r5, 0x18f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x8008b9d0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r28, r3, 0x168
    lbz     r0, 0x168(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8008ba00
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x220
    li      r5, 0x168
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
branch_0x8008ba00:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    subi    r4, rtoc, 0x67d4
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1e8(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x268
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1ec(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x274
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    clrlwi  r4, r3, 16
    lwz     r6, 0x238(r30)
    lwz     r3, 0x4(r5)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xa8
    blr


.globl __ct__11TFireWanwanFPCc
__ct__11TFireWanwanFPCc: # 0x8008ba9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3f88
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    stw     r0, 0x19c(r31)
    stw     r0, 0x1a4(r31)
    stw     r0, 0x1a8(r31)
    stw     r0, 0x1b8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getHostPos__18TFireWanwanTailHitCFv
getHostPos__18TFireWanwanTailHitCFv: # 0x8008baf8
    lwz     r3, 0x70(r3)
    addi    r3, r3, 0x10
    blr


.globl moveRequest__18TFireWanwanTailHitFRCQ29JGeometry8TVec3_f_
moveRequest__18TFireWanwanTailHitFRCQ29JGeometry8TVec3_f_: # 0x8008bb04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, sp, 0x3c
    stw     r30, 0x40(sp)
    mr      r30, r3
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f2, -0x6864(rtoc)
    stw     r5, 0x34(sp)
    lwz     r3, gpMap(r13)
    stw     r0, 0x38(sp)
    lwz     r0, 0x8(r4)
    addi    r4, sp, 0x30
    stw     r0, 0x3c(sp)
    lfs     f0, 0x38(sp)
    lfs     f1, 0x34(sp)
    fadds   f2, f2, f0
    lfs     f3, 0x3c(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x6818(rtoc)
    lfs     f2, 0x38(sp)
    fadds   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8008bb7c
    lfs     f0, -0x6854(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x38(sp)
branch_0x8008bb7c:
    lfs     f1, 0x38(sp)
    mr      r5, r31
    lfs     f0, -0x67c0(rtoc)
    addi    r4, sp, 0x34
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lwz     r3, gpMap(r13)
    lfs     f1, 0x38(sp)
    lfs     f2, -0x67bc(rtoc)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r6, 0xa4(r30)
    addi    r3, r30, 0x74
    lwz     r4, 0x34(sp)
    lwz     r5, 0x4(r6)
    lwz     r6, 0x0(r6)
    subi    r5, r5, 0x1
    lwz     r0, 0x38(sp)
    mulli   r5, r5, 0x18
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x8(r5)
    lwz     r4, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r4, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x18(r30)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, 0x10(r30)
    li      r3, 0x1
    stfs    f0, 0x80(r30)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x90(r30)
    lfs     f0, 0x18(r30)
    stfs    f0, 0xa0(r30)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl getTakingMtx__18TFireWanwanTailHitFv
getTakingMtx__18TFireWanwanTailHitFv: # 0x8008bc28
    addi    r3, r3, 0x74
    blr


.globl movementBody__18TFireWanwanTailHitFRCQ29JGeometry8TVec3_f_
movementBody__18TFireWanwanTailHitFRCQ29JGeometry8TVec3_f_: # 0x8008bc30
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stmw    r27, 0x124(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0xec8
    lwz     r3, 0x70(r3)
    lwz     r3, 0x8c(r3)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8008bc68
    b       branch_0x8008bc6c

branch_0x8008bc68:
    lwz     r28, 0x1c(r3)
branch_0x8008bc6c:
    lbz     r0, -0x6d40(r13)
    extsb.  r0, r0
    bne-    branch_0x8008bcac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d3c(r13)
    addi    r0, r3, 0x3ef8
    lis     r3, 0x8008
    stw     r0, -0x6d3c(r13)
    addi    r4, r3, 0x61f0
    subi    r3, r13, 0x6d3c
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d40(r13)
branch_0x8008bcac:
    subi    r0, r13, 0x6d3c
    cmplw   r28, r0
    bne-    branch_0x8008bd84
    lwz     r28, 0x70(r29)
    lwz     r3, 0x194(r28)
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8008bcd4
    li      r0, 0x1
    b       branch_0x8008bcd8

branch_0x8008bcd4:
    li      r0, 0x0
branch_0x8008bcd8:
    cmpwi   r0, 0x0
    bne-    branch_0x8008bd84
    cmplwi  r3, 0x0
    beq-    branch_0x8008bcf0
    li      r0, 0x1
    b       branch_0x8008bcf4

branch_0x8008bcf0:
    li      r0, 0x0
branch_0x8008bcf4:
    cmpwi   r0, 0x0
    li      r27, 0x0
    bne-    branch_0x8008bd38
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x194(r28)
    mr      r28, r3
    lwz     r3, 0xa4(r4)
    bl      getLength__11TTailRubberCFv
    lfs     f0, 0x3d4(r28)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8008bd38
    li      r27, 0x1
branch_0x8008bd38:
    clrlwi. r0, r27, 24
    bne-    branch_0x8008bd84
    lwz     r3, 0x70(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x4c4(r3)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x70(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x4d8(r3)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0x10(r3)
    b       branch_0x8008be48

branch_0x8008bd84:
    lwz     r3, 0x70(r29)
    lwz     r3, 0x8c(r3)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8008bd9c
    b       branch_0x8008bda0

branch_0x8008bd9c:
    lwz     r28, 0x1c(r3)
branch_0x8008bda0:
    lbz     r0, -0x6d68(r13)
    extsb.  r0, r0
    bne-    branch_0x8008bde0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d64(r13)
    addi    r0, r3, 0x3f48
    lis     r3, 0x8008
    stw     r0, -0x6d64(r13)
    addi    r4, r3, 0x7630
    subi    r3, r13, 0x6d64
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d68(r13)
branch_0x8008bde0:
    subi    r0, r13, 0x6d64
    cmplw   r28, r0
    bne-    branch_0x8008be08
    lfs     f0, -0x67b0(rtoc)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0xc(r3)
    lfs     f0, -0x67ac(rtoc)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0x10(r3)
    b       branch_0x8008be48

branch_0x8008be08:
    lwz     r3, 0x70(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x49c(r3)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x70(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x4b0(r3)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0x10(r3)
branch_0x8008be48:
    lwz     r3, 0x70(r29)
    lwz     r3, 0x8c(r3)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8008be60
    b       branch_0x8008be64

branch_0x8008be60:
    lwz     r28, 0x1c(r3)
branch_0x8008be64:
    lbz     r0, -0x6d38(r13)
    extsb.  r0, r0
    bne-    branch_0x8008bea4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d34(r13)
    addi    r0, r3, 0x3ee8
    lis     r3, 0x8008
    stw     r0, -0x6d34(r13)
    addi    r4, r3, 0x5f2c
    subi    r3, r13, 0x6d34
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d38(r13)
branch_0x8008bea4:
    subi    r0, r13, 0x6d34
    cmplw   r28, r0
    bne-    branch_0x8008bed4
    lwz     r3, 0x70(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x514(r3)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0x14(r3)
    b       branch_0x8008bee0

branch_0x8008bed4:
    lfs     f0, -0x67a8(rtoc)
    lwz     r3, 0xa4(r29)
    stfs    f0, 0x14(r3)
branch_0x8008bee0:
    lwz     r4, 0xa4(r29)
    lwz     r3, 0x0(r30)
    lwz     r4, 0x0(r4)
    lwz     r0, 0x4(r30)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r30)
    stw     r0, 0x8(r4)
    lwz     r28, 0xa4(r29)
    mr      r3, r28
    bl      adjust__11TTailRubberFv
    mr      r3, r28
    bl      restrict__11TTailRubberFv
    lwz     r0, 0x4(r28)
    lwz     r4, 0x0(r28)
    mulli   r0, r0, 0x18
    add     r3, r4, r0
    addi    r30, r4, 0x18
    subi    r29, r3, 0x18
    b       branch_0x8008bf40

branch_0x8008bf30:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      bindOne__11TTailRubberFRQ211TTailRubber4Node
    addi    r30, r30, 0x18
branch_0x8008bf40:
    cmplw   r30, r29
    bne+    branch_0x8008bf30
    lwz     r0, 0x4(r28)
    lwz     r3, 0x0(r28)
    mulli   r0, r0, 0x18
    add     r4, r3, r0
    addi    r3, r3, 0x18
    subi    r0, r4, 0x18
    b       branch_0x8008bf98

branch_0x8008bf64:
    lfs     f1, 0x0(r3)
    lfs     f0, 0xc(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x10(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r3)
    addi    r3, r3, 0x18
branch_0x8008bf98:
    cmplw   r3, r0
    bne+    branch_0x8008bf64
    lbz     r0, 0x8(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8008bfe0
    lwz     r4, 0x0(r28)
    lfs     f1, 0x0(r4)
    lfs     f0, 0xc(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r4)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x10(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r4)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x14(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r4)
branch_0x8008bfe0:
    lbz     r0, 0x9(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8008c030
    lwz     r3, 0x4(r28)
    lwz     r4, 0x0(r28)
    subi    r0, r3, 0x1
    mulli   r0, r0, 0x18
    add     r4, r4, r0
    lfs     f1, 0x0(r4)
    lfs     f0, 0xc(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r4)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x10(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r4)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x14(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r4)
branch_0x8008c030:
    lmw     r27, 0x124(sp)
    lwz     r0, 0x13c(sp)
    addi    sp, sp, 0x138
    mtlr    r0
    blr


.globl performNodes__18TFireWanwanTailHitFUlPQ26JDrama9TGraphics
performNodes__18TFireWanwanTailHitFUlPQ26JDrama9TGraphics: # 0x8008c044
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stfd    f27, 0x118(sp)
    stfd    f26, 0x110(sp)
    stmw    r26, 0xf8(sp)
    mr      r28, r3
    mr      r29, r4
    mr      r30, r5
    li      r31, 0x0
    li      r27, 0x0
    lis     r26, 0x4330
    lfs     f26, -0x6830(rtoc)
    lfs     f27, -0x67b8(rtoc)
    lfd     f28, -0x6840(rtoc)
    lfs     f29, -0x67b4(rtoc)
    lfs     f30, -0x6868(rtoc)
    lfs     f31, -0x6854(rtoc)
branch_0x8008c09c:
    xoris   r0, r31, 0x8000
    lwz     r3, 0xa4(r28)
    stw     r0, 0xf4(sp)
    cmpwi   r31, 0x4
    lwz     r3, 0x0(r3)
    stw     r26, 0xf0(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f0, f29
    fmuls   f0, f27, f0
    fctiwz  f0, f0
    stfd    f0, 0xe8(sp)
    lwz     r0, 0xec(sp)
    mulli   r0, r0, 0x18
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xe0(sp)
    bne-    branch_0x8008c104
    stfs    f30, 0xcc(sp)
    stfs    f30, 0xd0(sp)
    stfs    f31, 0xd4(sp)
    b       branch_0x8008c1f0

branch_0x8008c104:
    addi    r0, r31, 0x1
    lwz     r3, 0xa4(r28)
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    lwz     r3, 0x0(r3)
    stw     r26, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f0, f29
    fmuls   f0, f27, f0
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    mulli   r0, r0, 0x18
    add     r3, r3, r0
    lfs     f0, 0x0(r3)
    stfs    f0, 0xcc(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0xd0(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0xd4(sp)
    lfs     f2, 0xcc(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0xcc(sp)
    lfs     f1, 0xd0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xe0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0xd0(sp)
    lfs     f2, 0xd4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f26
    cror    2, 0, 2
    bne-    branch_0x8008c1c4
    stfs    f30, 0xd4(sp)
    stfs    f30, 0xd0(sp)
    stfs    f30, 0xcc(sp)
    b       branch_0x8008c1f0

branch_0x8008c1c4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0xcc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xcc(sp)
    lfs     f0, 0xd0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd0(sp)
    lfs     f0, 0xd4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd4(sp)
branch_0x8008c1f0:
    addi    r0, r27, 0xa8
    lwzx    r3, r28, r0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, sp, 0xd8
    addi    r7, sp, 0xcc
    bl      perform__19TFireWanwanTailNodeFUlPQ26JDrama9TGraphicsRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r31, r31, 0x1
    cmpwi   r31, 0x5
    addi    r27, r27, 0x4
    blt+    branch_0x8008c09c
    lfs     f29, -0x67b8(rtoc)
    addi    r31, sp, 0x9c
    lfd     f28, -0x6840(rtoc)
    li      r30, 0x0
    lfs     f27, -0x67b4(rtoc)
    li      r29, 0x0
    lis     r27, 0x4330
branch_0x8008c238:
    addi    r26, r29, 0xa8
    add     r26, r28, r26
    lwz     r3, 0x0(r26)
    addi    r4, sp, 0x9c
    lwz     r3, 0x0(r3)
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    bl      PSMTXCopy
    addi    r0, r30, 0x1
    lwz     r4, 0xa4(r28)
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    mr      r3, r31
    lwz     r4, 0x0(r4)
    stw     r27, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f0, f27
    fmuls   f0, f29, f0
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    mulli   r0, r0, 0x18
    add     r4, r4, r0
    lfs     f0, 0x0(r4)
    stfs    f0, 0xa8(sp)
    lfs     f0, 0x4(r4)
    stfs    f0, 0xb8(sp)
    lfs     f0, 0x8(r4)
    stfs    f0, 0xc8(sp)
    lwz     r5, 0x0(r26)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x14(r5)
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      PSMTXCopy
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x8008c238
    lmw     r26, 0xf8(sp)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    mtlr    r0
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    lfd     f27, 0x118(sp)
    lfd     f26, 0x110(sp)
    addi    sp, sp, 0x140
    blr


.globl perform__18TFireWanwanTailHitFUlPQ26JDrama9TGraphics
perform__18TFireWanwanTailHitFUlPQ26JDrama9TGraphics: # 0x8008c30c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x208(sp)
    stfd    f31, 0x200(sp)
    stw     r31, 0x1fc(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x1f8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1f4(sp)
    addi    r29, r5, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x70(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x4ec(r3)
    mr      r3, r30
    stfs    f0, 0x58(r30)
    bl      calcEntryRadius__9THitActorFv
    clrlwi. r0, r31, 31
    beq-    branch_0x8008c3a4
    lwz     r5, 0x70(r30)
    addi    r4, sp, 0x19c
    lbz     r0, -0x7ed8(r13)
    mr      r3, r30
    lwz     r5, 0x74(r5)
    mulli   r0, r0, 0x30
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    lfs     f2, 0x2c(r5)
    lfs     f1, 0x1c(r5)
    lfs     f0, 0xc(r5)
    stfs    f0, 0x19c(sp)
    stfs    f1, 0x1a0(sp)
    stfs    f2, 0x1a4(sp)
    bl      movementBody__18TFireWanwanTailHitFRCQ29JGeometry8TVec3_f_
branch_0x8008c3a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      performNodes__18TFireWanwanTailHitFUlPQ26JDrama9TGraphics
    lwz     r5, 0xb8(r30)
    addi    r4, sp, 0x190
    lfs     f3, -0x6860(rtoc)
    mr      r3, r30
    lwz     r5, 0x0(r5)
    lfs     f2, 0x5c(r30)
    lwz     r5, 0x4(r5)
    addi    r5, r5, 0x20
    lfs     f1, 0x1c(r5)
    lfs     f4, 0x2c(r5)
    lfs     f0, 0xc(r5)
    fnmsubs  f1, f3, f2, f1
    stfs    f0, 0x190(sp)
    stfs    f1, 0x194(sp)
    stfs    f4, 0x198(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x8c(r12)
    mtlr    r12
    blrl
    rlwinm. r29, r31, 0, 30, 30
    beq-    branch_0x8008c530
    lbz     r0, 0xc0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8008c530
    lwz     r31, 0x70(r30)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8008c450
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8008c454

branch_0x8008c450:
    li      r0, 0x1
branch_0x8008c454:
    lwz     r7, 0x70(r30)
    clrlwi  r0, r0, 24
    lis     r4, 0x4330
    stw     r0, 0x1e4(sp)
    lbz     r0, 0x13c(r7)
    stw     r4, 0x1e0(sp)
    mr      r5, r30
    lfd     f2, -0x67c8(rtoc)
    addi    r6, sp, 0x150
    stw     r0, 0x1ec(sp)
    lfd     f0, 0x1e0(sp)
    li      r3, 0x1ed
    stw     r4, 0x1e8(sp)
    lfs     f3, 0x148(r7)
    fsubs   f0, f0, f2
    lfd     f1, 0x1e8(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x150(sp)
    stfs    f0, 0x154(sp)
    stfs    f0, 0x158(sp)
    lwz     r4, 0xb8(r30)
    lwz     r4, 0x0(r4)
    lwz     r4, 0x4(r4)
    addi    r31, r4, 0x20
    addi    r4, r31, 0x0
    bl      SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPA4_fPCvRCQ29JGeometry8TVec3_f_
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r6, sp, 0x150
    li      r3, 0x135
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r6, sp, 0x150
    li      r3, 0x136
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r6, sp, 0x150
    li      r3, 0x137
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x20ab
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008c530
    addi    r4, r30, 0x10
    li      r3, 0x20ab
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008c530:
    cmplwi  r29, 0x0
    beq-    branch_0x8008c5d0
    lwz     r31, 0xbc(r30)
    addi    r3, r31, 0x18
    bl      update__12J3DFrameCtrlFv
    lbz     r0, 0x1d(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8008c558
    li      r0, 0x1
    b       branch_0x8008c55c

branch_0x8008c558:
    li      r0, 0x0
branch_0x8008c55c:
    cmpwi   r0, 0x0
    beq-    branch_0x8008c56c
    lfs     f31, -0x6854(rtoc)
    b       branch_0x8008c594

branch_0x8008c56c:
    lha     r3, 0x20(r31)
    lis     r0, 0x4330
    lfd     f1, -0x6840(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x28(r31)
    stw     r3, 0x1e4(sp)
    stw     r0, 0x1e0(sp)
    lfd     f0, 0x1e0(sp)
    fsubs   f0, f0, f1
    fdivs   f31, f2, f0
branch_0x8008c594:
    fmr     f1, f31
    addi    r3, r31, 0x8
    addi    r4, r31, 0x10
    bl      value_lerp_s___6MyUtilFRCsRCsf
    fmr     f1, f31
    sth     r3, 0x0(r31)
    addi    r3, r31, 0xa
    addi    r4, r31, 0x12
    bl      value_lerp_s___6MyUtilFRCsRCsf
    fmr     f1, f31
    sth     r3, 0x2(r31)
    addi    r3, r31, 0xc
    addi    r4, r31, 0x14
    bl      value_lerp_s___6MyUtilFRCsRCsf
    sth     r3, 0x4(r31)
branch_0x8008c5d0:
    lwz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8008c948
    lfs     f0, -0x67b8(rtoc)
    addi    r5, sp, 0x184
    lwz     r3, 0xa4(r30)
    addi    r4, sp, 0x1cc
    fctiwz  f0, f0
    lwz     r6, 0x0(r3)
    addi    r3, r30, 0x74
    lfs     f1, -0x6868(rtoc)
    stfd    f0, 0x1e0(sp)
    lfs     f0, -0x6854(rtoc)
    lwz     r0, 0x1e4(sp)
    mulli   r0, r0, 0x18
    add     r7, r6, r0
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x1cc(sp)
    stw     r0, 0x1d0(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x1d4(sp)
    lwz     r6, 0x70(r30)
    lfs     f3, 0x1cc(sp)
    lfsu    f2, 0x10(r6)
    fsubs   f2, f3, f2
    stfs    f2, 0x1cc(sp)
    lfs     f3, 0x1d0(sp)
    lfs     f2, 0x4(r6)
    fsubs   f2, f3, f2
    stfs    f2, 0x1d0(sp)
    lfs     f2, 0x8(r6)
    lfs     f3, 0x1d4(sp)
    stfs    f1, 0x184(sp)
    fsubs   f2, f3, f2
    stfs    f0, 0x188(sp)
    stfs    f2, 0x1d4(sp)
    stfs    f1, 0x18c(sp)
    bl      SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, 0xa4(r30)
    bl      size__Q29_unnamed_34ArrayWrapper_Q211TTailRubber4Node_CFv
    lwz     r0, 0xa4(r30)
    subi    r4, r3, 0x1
    mr      r3, r0
    bl      __vc__Q29_unnamed_34ArrayWrapper_Q211TTailRubber4Node_CFi
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0x1c0(sp)
    stw     r0, 0x1c4(sp)
    lwz     r0, 0x14(r3)
    stw     r0, 0x1c8(sp)
    lwz     r3, 0x70(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x488(r3)
    addi    r4, sp, 0x1b4
    lfs     f0, 0x1c0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x1c4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c4(sp)
    lfs     f0, 0x1c8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c8(sp)
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0x1c4(sp)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x1c0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x1c4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, 0x1c8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r30)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x1b4(sp)
    stw     r0, 0x1b8(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x1bc(sp)
    lwz     r3, 0x68(r30)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x1b8(sp)
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x10(r30)
    stfs    f0, 0x80(r30)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x90(r30)
    lfs     f0, 0x18(r30)
    stfs    f0, 0xa0(r30)
    lfs     f0, 0xc4(r30)
    stfs    f0, 0xc8(r30)
    lwz     r3, 0xa4(r30)
    lfs     f6, -0x6868(rtoc)
    lwz     r0, 0x4(r3)
    lwz     r6, 0x0(r3)
    fmr     f5, f6
    mulli   r3, r0, 0x18
    lfs     f3, -0x6860(rtoc)
    lfs     f1, -0x685c(rtoc)
    subi    r4, r3, 0x18
    add     r4, r6, r4
    b       branch_0x8008c838

branch_0x8008c798:
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x13c(sp)
    stw     r0, 0x140(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x144(sp)
    lfs     f2, 0x13c(sp)
    lfs     f0, 0x18(r6)
    fsubs   f0, f2, f0
    stfs    f0, 0x13c(sp)
    lfs     f2, 0x140(sp)
    lfs     f0, 0x1c(r6)
    fsubs   f0, f2, f0
    stfs    f0, 0x140(sp)
    lfs     f2, 0x144(sp)
    lfs     f0, 0x20(r6)
    fsubs   f0, f2, f0
    stfs    f0, 0x144(sp)
    stfs    f5, 0x140(sp)
    lfs     f2, 0x13c(sp)
    lfs     f0, 0x140(sp)
    lfs     f4, 0x144(sp)
    fmuls   f2, f2, f2
    fmuls   f0, f0, f0
    fmuls   f4, f4, f4
    fadds   f0, f2, f0
    fadds   f4, f4, f0
    fcmpo   cr0, f4, f5
    cror    2, 0, 2
    bne-    branch_0x8008c814
    b       branch_0x8008c830

branch_0x8008c814:
    frsqrte f2, f4
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f3, f2
    fnmsubs  f0, f4, f0, f1
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8008c830:
    fadds   f6, f6, f4
    addi    r6, r6, 0x18
branch_0x8008c838:
    cmplw   r6, r4
    bne+    branch_0x8008c798
    stfs    f6, 0xc4(r30)
    lfs     f1, 0xc4(r30)
    lfs     f0, 0xc8(r30)
    lfs     f3, -0x6868(rtoc)
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    bge-    branch_0x8008c948
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1a8(sp)
    stw     r0, 0x1ac(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1b0(sp)
    lwz     r3, 0x70(r30)
    lfs     f1, 0x1a8(sp)
    lfsu    f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x1a8(sp)
    lfs     f1, 0x1ac(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x1ac(sp)
    lfs     f1, 0x1b0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x1b0(sp)
    lfs     f1, 0x1a8(sp)
    lfs     f0, 0x1ac(sp)
    lfs     f2, 0x1b0(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f31, f2, f0
    fcmpo   cr0, f31, f3
    cror    2, 0, 2
    bne-    branch_0x8008c8dc
    b       branch_0x8008c900

branch_0x8008c8dc:
    frsqrte f3, f31
    lfs     f2, -0x6860(rtoc)
    lfs     f0, -0x685c(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x8008c900:
    lwz     r5, 0xa4(r30)
    li      r4, 0x20df
    lwz     r3, gpMSound(r13)
    lwz     r5, 0x0(r5)
    addi    r30, r5, 0x30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008c948
    fmr     f1, f31
    addi    r4, r30, 0x0
    li      r3, 0x20df
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x8008c948:
    lwz     r0, 0x20c(sp)
    lfd     f31, 0x200(sp)
    lwz     r31, 0x1fc(sp)
    mtlr    r0
    lwz     r30, 0x1f8(sp)
    lwz     r29, 0x1f4(sp)
    addi    sp, sp, 0x208
    blr


.globl __vc__Q29_unnamed_34ArrayWrapper_Q211TTailRubber4Node_CFi
__vc__Q29_unnamed_34ArrayWrapper_Q211TTailRubber4Node_CFi: # 0x8008c968
    mulli   r0, r4, 0x18
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    blr


.globl size__Q29_unnamed_34ArrayWrapper_Q211TTailRubber4Node_CFv
size__Q29_unnamed_34ArrayWrapper_Q211TTailRubber4Node_CFv: # 0x8008c978
    lwz     r3, 0x4(r3)
    blr


.globl init__18TFireWanwanTailHitFv
init__18TFireWanwanTailHitFv: # 0x8008c980
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x208(sp)
    stfd    f31, 0x200(sp)
    stfd    f30, 0x1f8(sp)
    stfd    f29, 0x1f0(sp)
    stfd    f28, 0x1e8(sp)
    stfd    f27, 0x1e0(sp)
    stmw    r23, 0x1bc(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x8038
    subi    r28, r3, 0x4b88
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8008ca18
    li      r0, 0x0
    stw     r0, 0x0(r23)
    li      r24, 0x5
    mulli   r3, r24, 0x18
    stw     r0, 0x4(r23)
    li      r0, 0x1
    stb     r0, 0x8(r23)
    addi    r3, r3, 0x8
    stb     r0, 0x9(r23)
    lfs     f0, -0x67b4(rtoc)
    stfs    f0, 0xc(r23)
    lfs     f0, -0x6860(rtoc)
    stfs    f0, 0x10(r23)
    bl      __nwa__FUl
    lis     r4, 0x8009
    subi    r4, r4, 0x31a8
    li      r5, 0x0
    li      r6, 0x18
    li      r7, 0x5
    bl      __construct_new_array
    stw     r3, 0x0(r23)
    stw     r24, 0x4(r23)
branch_0x8008ca18:
    lwz     r6, 0x8(sp)
    li      r8, 0x1
    li      r3, 0x18
    stw     r23, 0xa4(r6)
    lis     r4, 0x4330
    lwz     r5, 0x70(r6)
    lbz     r0, -0x7ed8(r13)
    lwz     r5, 0x74(r5)
    mulli   r0, r0, 0x30
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    lfs     f0, 0xc(r5)
    stfs    f0, 0x194(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x198(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x19c(sp)
    lwz     r9, 0xa4(r6)
    lwz     r5, 0x194(sp)
    lwz     r7, 0x0(r9)
    lwz     r0, 0x198(sp)
    stw     r5, 0x0(r7)
    stw     r0, 0x4(r7)
    lwz     r0, 0x19c(sp)
    stw     r0, 0x8(r7)
    lfs     f4, -0x6868(rtoc)
    stfs    f4, 0x14(r7)
    stfs    f4, 0x10(r7)
    stfs    f4, 0xc(r7)
    lwz     r0, 0x4(r9)
    lwz     r7, 0x0(r9)
    mulli   r6, r0, 0x18
    lwz     r5, 0x194(sp)
    lwz     r0, 0x198(sp)
    subi    r6, r6, 0x18
    add     r6, r7, r6
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x19c(sp)
    stw     r0, 0x8(r6)
    stfs    f4, 0x14(r6)
    stfs    f4, 0x10(r6)
    stfs    f4, 0xc(r6)
    lfs     f10, 0x19c(sp)
    lfs     f0, 0x194(sp)
    lfs     f9, 0x198(sp)
    fsubs   f8, f10, f10
    fsubs   f6, f0, f0
    lfd     f3, -0x6840(rtoc)
    fsubs   f7, f9, f9
    b       branch_0x8008cb4c

branch_0x8008cae8:
    xoris   r5, r8, 0x8000
    lwz     r6, 0x0(r9)
    xoris   r0, r7, 0x8000
    stw     r5, 0x1b4(sp)
    add     r6, r6, r3
    lfs     f0, 0x194(sp)
    stw     r0, 0x1ac(sp)
    addi    r8, r8, 0x1
    addi    r3, r3, 0x18
    stw     r4, 0x1b0(sp)
    stw     r4, 0x1a8(sp)
    lfd     f2, 0x1b0(sp)
    lfd     f1, 0x1a8(sp)
    fsubs   f2, f2, f3
    fsubs   f1, f1, f3
    fdivs   f5, f2, f1
    fmadds  f2, f5, f6, f0
    fmadds  f1, f5, f7, f9
    fmadds  f0, f5, f8, f10
    stfs    f2, 0x0(r6)
    stfs    f1, 0x4(r6)
    stfs    f0, 0x8(r6)
    stfs    f4, 0x14(r6)
    stfs    f4, 0x10(r6)
    stfs    f4, 0xc(r6)
branch_0x8008cb4c:
    lwz     r7, 0x4(r9)
    subi    r0, r7, 0x1
    cmpw    r8, r0
    blt+    branch_0x8008cae8
    lwz     r5, 0x8(sp)
    li      r6, 0x1
    li      r0, 0x0
    lwz     r4, 0xa4(r5)
    li      r3, 0x2c
    stb     r6, 0x8(r4)
    lwz     r4, 0xa4(r5)
    stb     r0, 0x9(r4)
    lwz     r4, 0x70(r5)
    lwz     r26, 0x78(r4)
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8008cba8
    lis     r3, 0x803b
    subi    r0, r3, 0x2eac
    stw     r0, 0x18(r23)
    addi    r3, r23, 0x18
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
branch_0x8008cba8:
    lwz     r3, 0x8(sp)
    addi    r27, sp, 0x158
    li      r25, 0x0
    stw     r23, 0xbc(r3)
    li      r24, 0x0
    lis     r31, 0x4330
    lwz     r4, 0xbc(r3)
    lwz     r3, -0x6880(rtoc)
    lwz     r0, -0x687c(rtoc)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lfs     f30, -0x6854(rtoc)
    lfs     f31, -0x6804(rtoc)
    lfs     f27, -0x67b8(rtoc)
    lfd     f28, -0x6840(rtoc)
    lfs     f29, -0x67b4(rtoc)
branch_0x8008cbe8:
    addi    r3, r26, 0x0
    addi    r4, r28, 0x280
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r5, 0x8(sp)
    mr      r29, r3
    lwz     r3, 0x4(r3)
    li      r4, 0x0
    lwz     r6, 0xbc(r5)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8008cc5c
    stw     r29, 0x0(r23)
    li      r0, 0x0
    addi    r4, r28, 0x290
    stfs    f30, 0x4(r23)
    stfs    f30, 0x8(r23)
    stfs    f30, 0xc(r23)
    stw     r0, 0x10(r23)
    lwz     r3, 0x0(r23)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    stw     r0, 0x14(r23)
branch_0x8008cc5c:
    lwz     r4, 0x8(sp)
    addi    r0, r24, 0xa8
    cmpwi   r25, 0x4
    stwx    r23, r4, r0
    lwz     r3, 0x70(r4)
    lfs     f0, 0x148(r3)
    stfs    f0, 0x188(sp)
    stfs    f0, 0x18c(sp)
    stfs    f0, 0x190(sp)
    bne-    branch_0x8008cca8
    lfs     f0, 0x188(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x188(sp)
    lfs     f0, 0x18c(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x18c(sp)
    lfs     f0, 0x190(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x190(sp)
branch_0x8008cca8:
    xoris   r0, r25, 0x8000
    lfs     f1, 0x188(sp)
    stw     r0, 0x1ac(sp)
    addi    r0, r24, 0xa8
    lwzx    r4, r4, r0
    addi    r3, sp, 0x158
    stw     r31, 0x1a8(sp)
    lfd     f0, 0x1a8(sp)
    stfs    f1, 0x4(r4)
    fsubs   f0, f0, f28
    lfs     f1, 0x18c(sp)
    fmuls   f0, f0, f29
    stfs    f1, 0x8(r4)
    lfs     f1, 0x190(sp)
    fmuls   f0, f27, f0
    stfs    f1, 0xc(r4)
    fctiwz  f0, f0
    lwz     r30, 0x8(sp)
    lwz     r4, 0xa4(r30)
    stfd    f0, 0x1b0(sp)
    lwz     r4, 0x0(r4)
    lwz     r0, 0x1b4(sp)
    mulli   r0, r0, 0x18
    add     r23, r4, r0
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, 0x0(r23)
    mr      r3, r27
    stfs    f0, 0x164(sp)
    lfs     f0, 0x4(r23)
    stfs    f0, 0x174(sp)
    lfs     f0, 0x8(r23)
    stfs    f0, 0x184(sp)
    lwz     r4, 0x4(r29)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x4(r29)
    lwz     r3, 0x188(sp)
    lwz     r0, 0x18c(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x190(sp)
    stw     r0, 0x1c(r4)
    lwz     r3, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    cmpwi   r25, 0x5
    addi    r24, r24, 0x4
    blt+    branch_0x8008cbe8
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x29c
    lwz     r24, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r24)
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x29c
    mtlr    r12
    blrl
    addi    r24, r3, 0x10
    addi    r3, sp, 0xb4
    addi    r4, r24, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xb4(sp)
    addi    r3, sp, 0x114
    addi    r4, sp, 0xb0
    stw     r0, 0xb0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x114(sp)
    addi    r5, sp, 0xc8
    addi    r4, r24, 0x0
    stw     r0, 0x110(sp)
    addi    r3, sp, 0xc4
    addi    r6, sp, 0x8
    lwz     r0, 0x110(sp)
    stw     r0, 0xc8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x6868(rtoc)
    lis     r4, 0x1000
    lfs     f3, -0x67a4(rtoc)
    mr      r3, r30
    fmr     f2, f1
    lfs     f4, -0x681c(rtoc)
    addi    r4, r4, 0x28
    li      r5, 0x0
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x64(r30)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r30)
    lwz     r3, 0x64(r30)
    ori     r3, r3, 0x2
    stw     r3, 0x64(r30)
    stb     r0, 0xc0(r30)
    lwz     r0, 0x20c(sp)
    lfd     f31, 0x200(sp)
    lfd     f30, 0x1f8(sp)
    lfd     f29, 0x1f0(sp)
    lfd     f28, 0x1e8(sp)
    lfd     f27, 0x1e0(sp)
    lmw     r23, 0x1bc(sp)
    addi    sp, sp, 0x208
    mtlr    r0
    blr


.globl __ct__Q211TTailRubber4NodeFv
__ct__Q211TTailRubber4NodeFv: # 0x8008ce58
    blr


.globl receiveMessage__18TFireWanwanTailHitFP9THitActorUl
receiveMessage__18TFireWanwanTailHitFP9THitActorUl: # 0x8008ce5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r4
    stw     r30, 0xa0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x9c(sp)
    stw     r28, 0x98(sp)
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8008d0b8
    cmplwi  r5, 0x4
    bne-    branch_0x8008cfb0
    lwz     r3, 0x70(r30)
    lwz     r3, 0x8c(r3)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8008ceb4
    b       branch_0x8008ceb8

branch_0x8008ceb4:
    lwz     r29, 0x1c(r3)
branch_0x8008ceb8:
    lbz     r0, -0x6d28(r13)
    extsb.  r0, r0
    bne-    branch_0x8008cefc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d24(r13)
    addi    r0, r3, 0x3ec8
    lis     r4, 0x8008
    stw     r0, -0x6d24(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xf4c
    addi    r4, r4, 0x5644
    subi    r3, r13, 0x6d24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d28(r13)
branch_0x8008cefc:
    subi    r0, r13, 0x6d24
    cmplw   r29, r0
    li      r28, 0x1
    beq-    branch_0x8008cf1c
    bl      theNerve__22TNerveFireWanwanFreezeFv
    cmplw   r29, r3
    beq-    branch_0x8008cf1c
    li      r28, 0x0
branch_0x8008cf1c:
    clrlwi. r0, r28, 24
    bne-    branch_0x8008cf2c
    li      r3, 0x0
    b       branch_0x8008d0bc

branch_0x8008cf2c:
    stw     r31, 0x68(r30)
    li      r0, 0x1
    li      r4, 0x28de
    lwz     r3, 0xa4(r30)
    stb     r0, 0x9(r3)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008cf6c
    addi    r4, r30, 0x10
    li      r3, 0x28de
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008cf6c:
    lwz     r3, 0x70(r30)
    li      r0, 0x1
    lwz     r3, 0x70(r3)
    stw     r0, 0x64(r3)
    lwz     r3, 0xa4(r30)
    bl      getLength__11TTailRubberCFv
    stfs    f1, 0xc4(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    lfs     f0, 0xc4(r30)
    stfs    f0, 0xc8(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8008d0bc

branch_0x8008cfb0:
    subi    r0, r5, 0x7
    cmplwi  r0, 0x1
    bgt-    branch_0x8008d0b8
    lwz     r3, 0xa4(r30)
    li      r0, 0x0
    li      r4, 0x28e0
    stb     r0, 0x9(r3)
    lwz     r3, 0x70(r30)
    lwz     r3, 0x70(r3)
    stw     r0, 0x64(r3)
    lwz     r3, gpMSound(r13)
    lwz     r29, 0x70(r30)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008d008
    addi    r4, r29, 0x10
    addi    r6, r29, 0x1b8
    li      r3, 0x28e0
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008d008:
    lwz     r3, 0x70(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r30)
    addi    r29, r3, 0x0
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    lwz     r3, 0xa4(r30)
    bl      getLength__11TTailRubberCFv
    lfs     f2, 0x500(r29)
    lfs     f0, 0x348(r31)
    fmuls   f1, f2, f1
    lfs     f31, -0x6868(rtoc)
    fdivs   f0, f1, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x8008d064
    b       branch_0x8008d078

branch_0x8008d064:
    lfs     f31, -0x6854(rtoc)
    fcmpo   cr0, f0, f31
    ble-    branch_0x8008d074
    b       branch_0x8008d078

branch_0x8008d074:
    fmr     f31, f0
branch_0x8008d078:
    lwz     r3, 0x70(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    fmuls   f1, f31, f31
    lfs     f0, 0x348(r3)
    li      r0, 0x0
    li      r3, 0x1
    fmuls   f0, f1, f0
    stfs    f0, 0xcc(r30)
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0xc4(r30)
    stfs    f0, 0xc8(r30)
    stw     r0, 0x68(r30)
    b       branch_0x8008d0bc

branch_0x8008d0b8:
    li      r3, 0x0
branch_0x8008d0bc:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl perform__19TFireWanwanTailNodeFUlPQ26JDrama9TGraphicsRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
perform__19TFireWanwanTailNodeFUlPQ26JDrama9TGraphicsRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8008d0e0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stfd    f28, 0x100(sp)
    stfd    f27, 0xf8(sp)
    stfd    f26, 0xf0(sp)
    stmw    r27, 0xdc(sp)
    addi    r31, r4, 0x0
    addi    r27, r3, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    beq-    branch_0x8008d288
    lfs     f3, 0x8(r30)
    lfs     f29, -0x6868(rtoc)
    lfs     f0, 0x4(r30)
    fmuls   f1, f29, f3
    lfs     f4, 0x0(r30)
    fmuls   f5, f29, f0
    lfs     f2, -0x6854(rtoc)
    lfs     f0, -0x6830(rtoc)
    fmsubs  f28, f29, f4, f1
    fmsubs  f30, f2, f3, f5
    fnmsubs  f27, f2, f4, f5
    fmuls   f1, f28, f28
    fmadds  f1, f30, f30, f1
    fmadds  f1, f27, f27, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8008d174
    fmr     f30, f29
    fmr     f31, f30
    b       branch_0x8008d18c

branch_0x8008d174:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6854(rtoc)
    fmuls   f0, f0, f1
    fmuls   f31, f30, f0
    fmuls   f30, f28, f0
    fmuls   f29, f27, f0
branch_0x8008d18c:
    lfs     f6, 0x0(r30)
    lfs     f4, 0x8(r30)
    fmuls   f2, f6, f29
    lfs     f5, 0x4(r30)
    fmuls   f3, f4, f30
    lfs     f0, -0x6830(rtoc)
    fmuls   f1, f5, f31
    fmsubs  f28, f4, f31, f2
    fmsubs  f26, f6, f30, f1
    fmsubs  f27, f5, f29, f3
    fmuls   f1, f28, f28
    fmadds  f1, f27, f27, f1
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8008d1dc
    lfs     f0, -0x6868(rtoc)
    fmr     f2, f0
    fmr     f1, f2
    b       branch_0x8008d1f4

branch_0x8008d1dc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6854(rtoc)
    fmuls   f0, f0, f1
    fmuls   f1, f27, f0
    fmuls   f2, f28, f0
    fmuls   f0, f26, f0
branch_0x8008d1f4:
    stfs    f31, 0xa4(sp)
    addi    r3, sp, 0xa4
    stfs    f30, 0xb4(sp)
    stfs    f29, 0xc4(sp)
    stfs    f1, 0xa8(sp)
    stfs    f2, 0xb8(sp)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0x0(r30)
    stfs    f0, 0xac(sp)
    lfs     f0, 0x4(r30)
    stfs    f0, 0xbc(sp)
    lfs     f0, 0x8(r30)
    stfs    f0, 0xcc(sp)
    lfs     f0, 0x0(r29)
    stfs    f0, 0xb0(sp)
    lfs     f0, 0x4(r29)
    stfs    f0, 0xc0(sp)
    lfs     f0, 0x8(r29)
    stfs    f0, 0xd0(sp)
    lwz     r5, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x8(r27)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0xc(r27)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x0(r27)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x0(r27)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8008d288:
    lwz     r0, 0x10(r27)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8008d2a4
    lwz     r3, 0x0(r27)
    addi    r4, r31, 0x0
    addi    r5, r28, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x8008d2a4:
    lmw     r27, 0xdc(sp)
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    lfd     f29, 0x108(sp)
    lfd     f28, 0x100(sp)
    lfd     f27, 0xf8(sp)
    lfd     f26, 0xf0(sp)
    addi    sp, sp, 0x120
    blr


.globl perform__18TFireWanwanManagerFUlPQ26JDrama9TGraphics
perform__18TFireWanwanManagerFUlPQ26JDrama9TGraphics: # 0x8008d2d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stmw    r27, 0xfc(sp)
    addi    r31, r3, 0x0
    addi    r27, r4, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x8008d360

branch_0x8008d2f8:
    lwz     r4, 0x18(r31)
    lwz     r3, gpMap(r13)
    lwzx    r29, r4, r30
    lfs     f1, 0x10(r29)
    lfs     f2, 0x18(r29)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    beq-    branch_0x8008d344
    lwz     r3, 0xc4(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x8008d358
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x800
    bne-    branch_0x8008d338
    li      r0, 0x1
    b       branch_0x8008d33c

branch_0x8008d338:
    li      r0, 0x0
branch_0x8008d33c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8008d358
branch_0x8008d344:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x8008d358:
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x8008d360:
    lwz     r0, 0x14(r31)
    cmpw    r28, r0
    blt+    branch_0x8008d2f8
    clrlwi. r0, r27, 31
    beq-    branch_0x8008d558
    lbz     r0, 0x60(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8008d434
    lwz     r4, MarioHitActorPos(r13)
    mr      r3, r31
    bl      getNearestEnemy__13TEnemyManagerFRCQ29JGeometry8TVec3_f_
    cmplwi  r3, 0x0
    beq-    branch_0x8008d434
    lwz     r4, MarioHitActorPos(r13)
    addi    r5, r3, 0x10
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xf0(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0xf0(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0xec(sp)
    lfs     f2, 0xf0(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lwz     r3, 0x38(r31)
    fmuls   f2, f2, f2
    lfs     f3, 0x528(r3)
    fadds   f1, f1, f0
    fmuls   f0, f3, f3
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8008d434
    li      r0, 0x1
    stb     r0, 0x60(r31)
    li      r4, 0x16
    li      r5, 0x1
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x8008d434:
    lwz     r0, 0x6c(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8008d494
    lwz     r4, 0x64(r31)
    cmpwi   r4, 0x0
    beq-    branch_0x8008d494
    lwz     r3, 0x38(r31)
    addi    r5, r3, 0x53c
    lwz     r0, 0x53c(r3)
    cmpw    r0, r4
    ble-    branch_0x8008d494
    addi    r3, r4, 0x1
    stw     r3, 0x64(r31)
    lwz     r0, 0x0(r5)
    cmpw    r3, r0
    blt-    branch_0x8008d494
    lwz     r3, 0x38(r31)
    li      r4, 0x17
    li      r5, 0x1
    lwz     r0, 0x53c(r3)
    stw     r0, 0x64(r31)
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x8008d494:
    lwz     r0, 0x68(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8008d4bc
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x18
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, -0x1
    stw     r0, 0x68(r31)
branch_0x8008d4bc:
    lbz     r0, 0x61(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8008d558
    lwz     r3, 0x38(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8008d4dc
    lwz     r3, 0x14(r31)
    b       branch_0x8008d4f4

branch_0x8008d4dc:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r31)
    cmpw    r0, r3
    ble-    branch_0x8008d4f0
    b       branch_0x8008d4f4

branch_0x8008d4f0:
    mr      r3, r0
branch_0x8008d4f4:
    lwz     r0, 0x6c(r31)
    cmpw    r0, r3
    bne-    branch_0x8008d558
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x8008d558
    lwz     r3, 0x74(r3)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8008d558
    li      r0, 0x1
    stb     r0, 0x61(r31)
    lis     r3, 0x8038
    lis     r4, 0x8038
    lwz     r6, 0x70(r31)
    subi    r5, r3, 0x48cc
    lfs     f1, -0x67a0(rtoc)
    subi    r4, r4, 0x48e0
    lfs     f0, 0x14(r6)
    lwz     r3, gpItemManager(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r6)
    lfs     f3, 0x18(r6)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
branch_0x8008d558:
    lmw     r27, 0xfc(sp)
    lwz     r0, 0x114(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl createModelData__18TFireWanwanManagerFv
createModelData__18TFireWanwanManagerFv: # 0x8008d56c
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3eb0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__18TFireWanwanManagerFR20JSUMemoryInputStream
load__18TFireWanwanManagerFR20JSUMemoryInputStream: # 0x8008d5a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x540
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8008d5dc
    lis     r3, 0x8038
    subi    r4, r3, 0x48b8
    addi    r3, r30, 0x0
    bl      __ct__25TFireWanwanSaveLoadParamsFPCc
branch_0x8008d5dc:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__18TFireWanwanManagerFPCc
__ct__18TFireWanwanManagerFPCc: # 0x8008d5f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x41e4
    stw     r0, 0x0(r31)
    li      r4, 0x0
    li      r0, 0x3
    stb     r4, 0x60(r31)
    mr      r3, r31
    stb     r4, 0x61(r31)
    stw     r4, 0x64(r31)
    stw     r0, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__25TFireWanwanSaveLoadParamsFPCc
__ct__25TFireWanwanSaveLoadParamsFPCc: # 0x8008d654
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    subi    r30, r5, 0x4b88
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x2e8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x2e8
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x2d4(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x685c(rtoc)
    addi    r3, r30, 0x2f4
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x2f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r31)
    addi    r3, r30, 0x308
    lfs     f0, -0x679c(rtoc)
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x308
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x2fc(r31)
    li      r25, 0x258
    lis     r3, 0x803b
    stw     r25, 0x30c(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x318
    stw     r26, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x318
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x32c
    lfs     f0, -0x6854(rtoc)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x324(r31)
    addi    r3, r30, 0x340
    stw     r25, 0x334(r31)
    stw     r26, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x340
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x34c
    lfs     f0, -0x67a4(rtoc)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x34c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x35c
    lfs     f0, -0x6798(rtoc)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x35c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x368
    lfs     f0, -0x6794(rtoc)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x368
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    addi    r3, r30, 0x374
    lfs     f0, -0x6834(rtoc)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x374
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x388(r31)
    addi    r3, r30, 0x380
    lfs     f0, -0x6854(rtoc)
    stfs    f0, 0x398(r31)
    stw     r28, 0x388(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x39c
    addi    r6, r30, 0x380
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x39c(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x394
    stw     r0, 0x3ac(r31)
    stw     r26, 0x39c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b0
    addi    r6, r30, 0x394
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3b0(r31)
    addi    r3, r30, 0x3a8
    stw     r25, 0x3c0(r31)
    stw     r26, 0x3b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3c4
    addi    r6, r30, 0x3a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3c4(r31)
    addi    r3, r30, 0x3bc
    lfs     f0, -0x6864(rtoc)
    stfs    f0, 0x3d4(r31)
    stw     r28, 0x3c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3d8
    addi    r6, r30, 0x3bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3d8(r31)
    addi    r3, r30, 0x3cc
    lfs     f0, -0x6790(rtoc)
    stfs    f0, 0x3e8(r31)
    stw     r28, 0x3d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3ec
    addi    r6, r30, 0x3cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3ec(r31)
    addi    r3, r30, 0x3dc
    lfs     f0, -0x678c(rtoc)
    stfs    f0, 0x3fc(r31)
    stw     r28, 0x3ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x400
    addi    r6, r30, 0x3dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x400(r31)
    li      r0, 0x14
    addi    r3, r30, 0x3f0
    stw     r0, 0x410(r31)
    stw     r26, 0x400(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x414
    addi    r6, r30, 0x3f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x414(r31)
    addi    r3, r30, 0x408
    lfs     f0, -0x67c0(rtoc)
    stfs    f0, 0x424(r31)
    stw     r28, 0x414(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x428
    addi    r6, r30, 0x408
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x428(r31)
    li      r0, 0x78
    addi    r3, r30, 0x41c
    stw     r0, 0x438(r31)
    stw     r26, 0x428(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x43c
    addi    r6, r30, 0x41c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x43c(r31)
    addi    r3, r30, 0x42c
    lfs     f0, -0x67ec(rtoc)
    stfs    f0, 0x44c(r31)
    stw     r28, 0x43c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x450
    addi    r6, r30, 0x42c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x450(r31)
    addi    r3, r30, 0x440
    lfs     f0, -0x67b0(rtoc)
    stfs    f0, 0x460(r31)
    stw     r28, 0x450(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x464
    addi    r6, r30, 0x440
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x464(r31)
    addi    r3, r30, 0x454
    lfs     f0, -0x67e8(rtoc)
    stfs    f0, 0x474(r31)
    stw     r28, 0x464(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x478
    addi    r6, r30, 0x454
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x478(r31)
    addi    r3, r30, 0x464
    lfs     f0, -0x6788(rtoc)
    stfs    f0, 0x488(r31)
    stw     r28, 0x478(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x48c
    addi    r6, r30, 0x464
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x48c(r31)
    addi    r3, r30, 0x478
    lfs     f0, -0x67b4(rtoc)
    stfs    f0, 0x49c(r31)
    stw     r28, 0x48c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4a0
    addi    r6, r30, 0x478
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4a0(r31)
    addi    r3, r30, 0x488
    lfs     f0, -0x6860(rtoc)
    stfs    f0, 0x4b0(r31)
    stw     r28, 0x4a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4b4
    addi    r6, r30, 0x488
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4b4(r31)
    addi    r3, r30, 0x4a0
    lfs     f0, -0x67b0(rtoc)
    stfs    f0, 0x4c4(r31)
    stw     r28, 0x4b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4c8
    addi    r6, r30, 0x4a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4c8(r31)
    addi    r3, r30, 0x4b4
    lfs     f0, -0x6784(rtoc)
    stfs    f0, 0x4d8(r31)
    stw     r28, 0x4c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4dc
    addi    r6, r30, 0x4b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4dc(r31)
    addi    r3, r30, 0x4c8
    lfs     f0, -0x6864(rtoc)
    stfs    f0, 0x4ec(r31)
    stw     r28, 0x4dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4f0
    addi    r6, r30, 0x4c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4f0(r31)
    addi    r3, r30, 0x4dc
    lfs     f0, -0x67ec(rtoc)
    stfs    f0, 0x500(r31)
    stw     r28, 0x4f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x504
    addi    r6, r30, 0x4dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x504(r31)
    addi    r3, r30, 0x4ec
    lfs     f0, -0x6780(rtoc)
    stfs    f0, 0x514(r31)
    stw     r28, 0x504(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x518
    addi    r6, r30, 0x4ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x518(r31)
    addi    r3, r30, 0x500
    lfs     f0, -0x677c(rtoc)
    stfs    f0, 0x528(r31)
    stw     r28, 0x518(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x52c
    addi    r6, r30, 0x500
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x52c(r31)
    li      r0, 0x4b0
    mr      r3, r31
    stw     r0, 0x53c(r31)
    stw     r26, 0x52c(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getLength__11TTailRubberCFv
getLength__11TTailRubberCFv: # 0x8008dc0c
    stwu    sp, -0x28(sp)
    lwz     r0, 0x4(r3)
    lfs     f1, -0x6868(rtoc)
    mulli   r4, r0, 0x18
    lwz     r0, 0x0(r3)
    fmr     f6, f1
    lfs     f4, -0x6860(rtoc)
    lfs     f2, -0x685c(rtoc)
    subi    r4, r4, 0x18
    mr      r5, r0
    add     r4, r0, r4
    b       branch_0x8008dcdc

branch_0x8008dc3c:
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x20(sp)
    lfs     f3, 0x18(sp)
    lfs     f0, 0x18(r5)
    fsubs   f0, f3, f0
    stfs    f0, 0x18(sp)
    lfs     f3, 0x1c(sp)
    lfs     f0, 0x1c(r5)
    fsubs   f0, f3, f0
    stfs    f0, 0x1c(sp)
    lfs     f3, 0x20(sp)
    lfs     f0, 0x20(r5)
    fsubs   f0, f3, f0
    stfs    f0, 0x20(sp)
    stfs    f6, 0x1c(sp)
    lfs     f3, 0x18(sp)
    lfs     f0, 0x1c(sp)
    lfs     f5, 0x20(sp)
    fmuls   f3, f3, f3
    fmuls   f0, f0, f0
    fmuls   f5, f5, f5
    fadds   f0, f3, f0
    fadds   f5, f5, f0
    fcmpo   cr0, f5, f6
    cror    2, 0, 2
    bne-    branch_0x8008dcb8
    b       branch_0x8008dcd4

branch_0x8008dcb8:
    frsqrte f3, f5
    frsp    f3, f3
    fmuls   f0, f3, f3
    fmuls   f3, f4, f3
    fnmsubs  f0, f5, f0, f2
    fmuls   f0, f3, f0
    fmuls   f5, f5, f0
branch_0x8008dcd4:
    fadds   f1, f1, f5
    addi    r5, r5, 0x18
branch_0x8008dcdc:
    cmplw   r5, r4
    bne+    branch_0x8008dc3c
    addi    sp, sp, 0x28
    blr


.globl restrict__11TTailRubberFv
restrict__11TTailRubberFv: # 0x8008dcec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stfd    f27, 0x80(sp)
    stfd    f26, 0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    lwz     r0, 0x4(r3)
    lfs     f6, -0x6868(rtoc)
    mulli   r4, r0, 0x18
    lwz     r7, 0x0(r3)
    fmr     f5, f6
    lfs     f3, -0x6860(rtoc)
    lfs     f1, -0x685c(rtoc)
    subi    r5, r4, 0x18
    add     r5, r7, r5
    b       branch_0x8008dde0

branch_0x8008dd40:
    lwz     r4, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r4, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x44(sp)
    lfs     f2, 0x3c(sp)
    lfs     f0, 0x18(r7)
    fsubs   f0, f2, f0
    stfs    f0, 0x3c(sp)
    lfs     f2, 0x40(sp)
    lfs     f0, 0x1c(r7)
    fsubs   f0, f2, f0
    stfs    f0, 0x40(sp)
    lfs     f2, 0x44(sp)
    lfs     f0, 0x20(r7)
    fsubs   f0, f2, f0
    stfs    f0, 0x44(sp)
    stfs    f5, 0x40(sp)
    lfs     f2, 0x3c(sp)
    lfs     f0, 0x40(sp)
    lfs     f4, 0x44(sp)
    fmuls   f2, f2, f2
    fmuls   f0, f0, f0
    fmuls   f4, f4, f4
    fadds   f0, f2, f0
    fadds   f4, f4, f0
    fcmpo   cr0, f4, f5
    cror    2, 0, 2
    bne-    branch_0x8008ddbc
    b       branch_0x8008ddd8

branch_0x8008ddbc:
    frsqrte f2, f4
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f3, f2
    fnmsubs  f0, f4, f0, f1
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8008ddd8:
    fadds   f6, f6, f4
    addi    r7, r7, 0x18
branch_0x8008dde0:
    cmplw   r7, r5
    bne+    branch_0x8008dd40
    lfs     f0, 0x14(r3)
    fcmpo   cr0, f6, f0
    cror    2, 0, 2
    beq-    branch_0x8008e130
    lwz     r6, 0x4(r3)
    lis     r4, 0x4330
    lbz     r0, 0x9(r3)
    subi    r5, r6, 0x1
    lfd     f1, -0x6840(rtoc)
    xoris   r5, r5, 0x8000
    stw     r5, 0x6c(sp)
    cmplwi  r0, 0x0
    stw     r4, 0x68(sp)
    lfd     f0, 0x68(sp)
    fsubs   f0, f0, f1
    fdivs   f31, f6, f0
    beq-    branch_0x8008dfb0
    mulli   r4, r6, 0x18
    lwz     r3, 0x0(r3)
    lfs     f30, -0x6868(rtoc)
    lfs     f29, -0x6860(rtoc)
    subi    r30, r4, 0x30
    lfs     f28, -0x685c(rtoc)
    subi    r31, r3, 0x18
    lfs     f27, -0x6830(rtoc)
    add     r30, r3, r30
    b       branch_0x8008dfa4

branch_0x8008de54:
    lwz     r3, 0x18(r30)
    lwz     r0, 0x1c(r30)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x20(r30)
    stw     r0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x0(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x4(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x60(sp)
    lfs     f2, 0x64(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x8008ded0
    fmr     f0, f1
    b       branch_0x8008deec

branch_0x8008ded0:
    frsqrte f2, f1
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f29, f2
    fnmsubs  f0, f1, f0, f28
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
branch_0x8008deec:
    fcmpo   cr0, f31, f0
    bge-    branch_0x8008dfa0
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x8008df08
    fmr     f0, f1
    b       branch_0x8008df24

branch_0x8008df08:
    frsqrte f2, f1
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f29, f2
    fnmsubs  f0, f1, f0, f28
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
branch_0x8008df24:
    fcmpo   cr0, f1, f27
    fsubs   f26, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8008df44
    stfs    f30, 0x64(sp)
    stfs    f30, 0x60(sp)
    stfs    f30, 0x5c(sp)
    b       branch_0x8008df70

branch_0x8008df44:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f26, f1
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x60(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
branch_0x8008df70:
    lfs     f1, 0x0(r30)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r30)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x60(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r30)
    lfs     f1, 0x8(r30)
    lfs     f0, 0x64(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r30)
branch_0x8008dfa0:
    subi    r30, r30, 0x18
branch_0x8008dfa4:
    cmplw   r30, r31
    bne+    branch_0x8008de54
    b       branch_0x8008e130

branch_0x8008dfb0:
    mulli   r0, r6, 0x18
    lwz     r3, 0x0(r3)
    lfs     f27, -0x6868(rtoc)
    lfs     f28, -0x6860(rtoc)
    lfs     f29, -0x685c(rtoc)
    lfs     f30, -0x6830(rtoc)
    add     r31, r3, r0
    addi    r30, r3, 0x18
    b       branch_0x8008e128

branch_0x8008dfd4:
    lwz     r3, -0x18(r30)
    lwz     r0, -0x14(r30)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, -0x10(r30)
    stw     r0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x0(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x4(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    stfs    f27, 0x50(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x50(sp)
    lfs     f2, 0x54(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f27
    cror    2, 0, 2
    bne-    branch_0x8008e054
    fmr     f0, f1
    b       branch_0x8008e070

branch_0x8008e054:
    frsqrte f2, f1
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f28, f2
    fnmsubs  f0, f1, f0, f29
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
branch_0x8008e070:
    fcmpo   cr0, f31, f0
    bge-    branch_0x8008e124
    fcmpo   cr0, f1, f27
    cror    2, 0, 2
    bne-    branch_0x8008e08c
    fmr     f0, f1
    b       branch_0x8008e0a8

branch_0x8008e08c:
    frsqrte f2, f1
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f28, f2
    fnmsubs  f0, f1, f0, f29
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
branch_0x8008e0a8:
    fcmpo   cr0, f1, f30
    fsubs   f26, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8008e0c8
    stfs    f27, 0x54(sp)
    stfs    f27, 0x50(sp)
    stfs    f27, 0x4c(sp)
    b       branch_0x8008e0f4

branch_0x8008e0c8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f26, f1
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
branch_0x8008e0f4:
    lfs     f1, 0x0(r30)
    lfs     f0, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r30)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r30)
    lfs     f1, 0x8(r30)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r30)
branch_0x8008e124:
    addi    r30, r30, 0x18
branch_0x8008e128:
    cmplw   r30, r31
    bne+    branch_0x8008dfd4
branch_0x8008e130:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    lfd     f26, 0x78(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0xa8
    blr


.globl adjust__11TTailRubberFv
adjust__11TTailRubberFv: # 0x8008e160
    stwu    sp, -0xc0(sp)
    lwz     r0, 0x4(r3)
    lwz     r5, 0x0(r3)
    mulli   r0, r0, 0x18
    add     r4, r5, r0
    addi    r6, r5, 0x18
    subi    r0, r4, 0x18
    b       branch_0x8008e2dc

branch_0x8008e180:
    lwz     r5, -0x18(r6)
    lwz     r4, -0x14(r6)
    stw     r5, 0x88(sp)
    stw     r4, 0x8c(sp)
    lwz     r4, -0x10(r6)
    stw     r4, 0x90(sp)
    lfs     f0, 0x88(sp)
    lfs     f1, 0x0(r6)
    fsubs   f0, f0, f1
    stfs    f0, 0x88(sp)
    lfs     f0, 0x8c(sp)
    lfs     f2, 0x4(r6)
    fsubs   f0, f0, f2
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    lfs     f3, 0x8(r6)
    fsubs   f0, f0, f3
    stfs    f0, 0x90(sp)
    lfs     f4, 0xc(r3)
    lfs     f0, 0x88(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x88(sp)
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x90(sp)
    lwz     r5, 0x18(r6)
    lwz     r4, 0x1c(r6)
    stw     r5, 0x94(sp)
    stw     r4, 0x98(sp)
    lwz     r4, 0x20(r6)
    stw     r4, 0x9c(sp)
    lfs     f0, 0x94(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x94(sp)
    lfs     f0, 0x98(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fsubs   f0, f0, f3
    stfs    f0, 0x9c(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x94(sp)
    lfs     f0, 0x98(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xc(r6)
    lfs     f0, 0x88(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r6)
    lfs     f1, 0x10(r6)
    lfs     f0, 0x8c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r6)
    lfs     f1, 0x14(r6)
    lfs     f0, 0x90(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r6)
    lfs     f1, 0xc(r6)
    lfs     f0, 0x94(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r6)
    lfs     f1, 0x10(r6)
    lfs     f0, 0x98(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r6)
    lfs     f1, 0x14(r6)
    lfs     f0, 0x9c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r6)
    lfs     f1, 0x10(r3)
    lfs     f0, 0xc(r6)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r6)
    lfs     f0, 0x10(r6)
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r6)
    lfs     f0, 0x14(r6)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(r6)
    addi    r6, r6, 0x18
branch_0x8008e2dc:
    cmplw   r6, r0
    bne+    branch_0x8008e180
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0xb4(sp)
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xac(sp)
    lwz     r4, 0x0(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0xa0(sp)
    lfs     f0, 0x4(r4)
    stfs    f0, 0xa4(sp)
    lfs     f0, 0x8(r4)
    stfs    f0, 0xa8(sp)
    lwz     r6, 0x0(r3)
    lwz     r0, 0xa0(sp)
    lwz     r4, 0xa4(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0xa8(sp)
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lfs     f0, 0x6c(sp)
    lfs     f1, 0x0(r6)
    fsubs   f0, f0, f1
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x70(sp)
    lfs     f2, 0x4(r6)
    fsubs   f0, f0, f2
    stfs    f0, 0x70(sp)
    lfs     f0, 0x74(sp)
    lfs     f3, 0x8(r6)
    fsubs   f0, f0, f3
    stfs    f0, 0x74(sp)
    lfs     f4, 0xc(r3)
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x70(sp)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x74(sp)
    lwz     r4, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r4, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x20(r6)
    stw     r0, 0x80(sp)
    lfs     f0, 0x78(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fsubs   f0, f0, f3
    stfs    f0, 0x80(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x80(sp)
    lfs     f1, 0xc(r6)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r6)
    lfs     f1, 0x10(r6)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r6)
    lfs     f1, 0x14(r6)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r6)
    lfs     f1, 0xc(r6)
    lfs     f0, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r6)
    lfs     f1, 0x10(r6)
    lfs     f0, 0x7c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r6)
    lfs     f1, 0x14(r6)
    lfs     f0, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r6)
    lfs     f1, 0x10(r3)
    lfs     f0, 0xc(r6)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r6)
    lfs     f0, 0x10(r6)
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r6)
    lfs     f0, 0x14(r6)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(r6)
    lwz     r4, 0x4(r3)
    lwz     r5, 0x0(r3)
    subi    r0, r4, 0x1
    mulli   r0, r0, 0x18
    add     r4, r5, r0
    lfs     f0, 0x0(r4)
    stfs    f0, 0xa0(sp)
    lfs     f0, 0x4(r4)
    stfs    f0, 0xa4(sp)
    lfs     f0, 0x8(r4)
    stfs    f0, 0xa8(sp)
    lwz     r5, 0x4(r3)
    lwz     r7, 0x0(r3)
    subi    r0, r5, 0x2
    mulli   r0, r0, 0x18
    add     r6, r7, r0
    lwz     r4, 0x0(r6)
    subi    r5, r5, 0x1
    lwz     r0, 0x4(r6)
    mulli   r5, r5, 0x18
    stw     r4, 0x48(sp)
    add     r5, r7, r5
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x50(sp)
    lfs     f0, 0x48(sp)
    lfs     f1, 0x0(r5)
    fsubs   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    lfs     f2, 0x4(r5)
    fsubs   f0, f0, f2
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    lfs     f3, 0x8(r5)
    fsubs   f0, f0, f3
    stfs    f0, 0x50(sp)
    lfs     f4, 0xc(r3)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x50(sp)
    lwz     r0, 0xa0(sp)
    lwz     r4, 0xa4(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0xa8(sp)
    stw     r4, 0x58(sp)
    stw     r0, 0x5c(sp)
    lfs     f0, 0x54(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fsubs   f0, f0, f3
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x5c(sp)
    lfs     f1, 0xc(r5)
    lfs     f0, 0x48(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r5)
    lfs     f1, 0x10(r5)
    lfs     f0, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r5)
    lfs     f1, 0x14(r5)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r5)
    lfs     f1, 0xc(r5)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r5)
    lfs     f1, 0x10(r5)
    lfs     f0, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r5)
    lfs     f1, 0x14(r5)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r5)
    lfs     f1, 0x10(r3)
    lfs     f0, 0xc(r5)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r5)
    lfs     f0, 0x10(r5)
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r5)
    lfs     f0, 0x14(r5)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(r5)
    addi    sp, sp, 0xc0
    blr


.globl bindOne__11TTailRubberFRQ211TTailRubber4Node
bindOne__11TTailRubberFRQ211TTailRubber4Node: # 0x8008e618
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, sp, 0x38
    stw     r30, 0x40(sp)
    mr      r30, r4
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    addi    r4, sp, 0x2c
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0xc(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x10(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x14(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, -0x6778(rtoc)
    lfs     f0, 0x34(sp)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x30(sp)
    lfs     f3, 0x38(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x6854(rtoc)
    lfs     f0, -0x6774(rtoc)
    fadds   f3, f1, f2
    lfs     f1, -0x6818(rtoc)
    lfs     f2, 0x34(sp)
    fadds   f3, f0, f3
    fadds   f0, f1, f3
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8008e6d8
    lfs     f0, -0x6868(rtoc)
    stfs    f0, 0xc(r30)
    stfs    f0, 0x10(r30)
    stfs    f0, 0x14(r30)
    stfs    f3, 0x34(sp)
branch_0x8008e6d8:
    lfs     f1, -0x6778(rtoc)
    mr      r5, r31
    lfs     f0, 0x34(sp)
    addi    r4, sp, 0x30
    lwz     r3, gpMap(r13)
    fadds   f1, f1, f0
    lfs     f2, -0x6774(rtoc)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r0, 0x30(sp)
    mr      r4, r30
    lwz     r5, 0x34(sp)
    addi    r3, sp, 0x14
    stw     r0, 0x14(sp)
    lwz     r0, 0x38(sp)
    stw     r5, 0x18(sp)
    stw     r0, 0x1c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    stw     r3, 0xc(r30)
    stw     r0, 0x10(r30)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x14(r30)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __dt__11TFireWanwanFv
__dt__11TFireWanwanFv: # 0x8008e74c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008e7b4
    lis     r3, 0x803b
    addi    r3, r3, 0x3f88
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008e7a4
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8008e7a4:
    extsh.  r0, r31
    ble-    branch_0x8008e7b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008e7b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TFireWanwanTailHitFv
__dt__18TFireWanwanTailHitFv: # 0x8008e7d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008e850
    lis     r3, 0x803b
    addi    r3, r3, 0x4130
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008e840
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008e840
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8008e840:
    extsh.  r0, r31
    ble-    branch_0x8008e850
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008e850:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TFireWanwanManagerFv
__dt__18TFireWanwanManagerFv: # 0x8008e86c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008e8c4
    lis     r3, 0x803b
    addi    r0, r3, 0x41e4
    stw     r0, 0x0(r30)
    beq-    branch_0x8008e8b4
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8008e8b4:
    extsh.  r0, r31
    ble-    branch_0x8008e8c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008e8c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl value_lerp_s___6MyUtilFRCsRCsf
value_lerp_s___6MyUtilFRCsRCsf: # 0x8008e8e0
    stwu    sp, -0x30(sp)
    lha     r5, 0x0(r3)
    lis     r3, 0x4330
    lha     r4, 0x0(r4)
    xoris   r0, r5, 0x8000
    lfd     f3, -0x6840(rtoc)
    stw     r0, 0x24(sp)
    subf    r4, r5, r4
    xoris   r0, r4, 0x8000
    stw     r0, 0x2c(sp)
    stw     r3, 0x28(sp)
    stw     r3, 0x20(sp)
    lfd     f2, 0x28(sp)
    lfd     f0, 0x20(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmadds  f0, f1, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    addi    sp, sp, 0x30
    blr


.globl SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_: # 0x8008e938
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x0
    addi    r7, r5, 0x0
    stwu    sp, -0x20(sp)
    addi    r4, r8, 0x0
    mr      r5, r0
    stw     r31, 0x1c(sp)
    addi    r31, r6, 0x0
    li      r6, 0x0
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8008e9a4
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x8008e9a4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_: # 0x8008e9b8
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x0
    addi    r7, r5, 0x0
    stwu    sp, -0x20(sp)
    addi    r4, r8, 0x0
    mr      r5, r0
    stw     r31, 0x1c(sp)
    addi    r31, r6, 0x0
    li      r6, 0x1
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8008ea24
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x8008ea24:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPA4_fPCvRCQ29JGeometry8TVec3_f_
SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPA4_fPCvRCQ29JGeometry8TVec3_f_: # 0x8008ea38
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x0
    addi    r7, r5, 0x0
    stwu    sp, -0x20(sp)
    addi    r4, r8, 0x0
    mr      r5, r0
    stw     r31, 0x1c(sp)
    addi    r31, r6, 0x0
    li      r6, 0x3
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8008eaa4
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x8008eaa4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_: # 0x8008eab8
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x0
    addi    r7, r5, 0x0
    stwu    sp, -0x20(sp)
    addi    r4, r8, 0x0
    mr      r5, r0
    stw     r31, 0x1c(sp)
    addi    r31, r6, 0x0
    li      r6, 0x1
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8008eb24
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x8008eb24:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_: # 0x8008eb38
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x0
    addi    r7, r5, 0x0
    stwu    sp, -0x20(sp)
    addi    r4, r8, 0x0
    mr      r5, r0
    stw     r31, 0x1c(sp)
    addi    r31, r6, 0x0
    li      r6, 0x3
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8008eba4
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x8008eba4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __sinit_fireWanwan_cpp
__sinit_fireWanwan_cpp: # 0x8008ebb8
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0xec8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ec00
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8008ec00:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ec30
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8008ec30:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ec60
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8008ec60:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ec90
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8008ec90:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ecc0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8008ecc0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ecf0
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8008ecf0:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ed20
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8008ed20:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ed50
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8008ed50:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ed80
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8008ed80:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8008edb0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8008edb0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ede0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8008ede0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ee10
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8008ee10:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ee40
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8008ee40:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8008ee70
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8008ee70:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8008eea0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8008eea0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__18TFireWanwanTailHitFv
_32___dt__18TFireWanwanTailHitFv: # 0x8008eeb4
    subi    r3, r3, 0x20
    b       __dt__18TFireWanwanTailHitFv


.globl _32___dt__11TFireWanwanFv
_32___dt__11TFireWanwanFv: # 0x8008eebc
    subi    r3, r3, 0x20
    b       __dt__11TFireWanwanFv

