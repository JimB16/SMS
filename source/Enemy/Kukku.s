
.globl __dt__23TNerveKukkuRecoverGraphFv
__dt__23TNerveKukkuRecoverGraphFv: # 0x80128fec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80129030
    lis     r3, 0x803c
    subi    r0, r3, 0x1c98
    stw     r0, 0x0(r31)
    beq-    branch_0x80129020
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80129020:
    extsh.  r0, r4
    ble-    branch_0x80129030
    mr      r3, r31
    bl      __dl__FPv
branch_0x80129030:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveKukkuRecoverGraphCFP24TSpineBase_10TLiveActor_
execute__23TNerveKukkuRecoverGraphCFP24TSpineBase_10TLiveActor_: # 0x80129048
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x801290b0
    lis     r4, 0x8038
    lwz     r3, 0x74(r30)
    addi    r4, r4, 0x5f50
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    lfs     f0, -0x50a0(rtoc)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x4c(sp)
    stw     r0, 0xb4(r30)
branch_0x801290b0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x35c(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x80129154
    lbz     r0, -0x6568(r13)
    extsb.  r0, r0
    bne-    branch_0x80129118
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6564(r13)
    subi    r0, r3, 0x1c68
    lis     r4, 0x8013
    stw     r0, -0x6564(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3580
    subi    r4, r4, 0x6e4c
    subi    r3, r13, 0x6564
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6568(r13)
branch_0x80129118:
    subi    r4, r13, 0x6564
    cmplwi  r4, 0x0
    beq-    branch_0x8012914c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8012914c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8012914c:
    li      r3, 0x1
    b       branch_0x8012919c

branch_0x80129154:
    mr      r3, r30
    bl      updateRotation__6TKukkuFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x2e4(r3)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x30
    bl      calcMomentum__6TKukkuFf
    lwz     r4, 0x30(sp)
    li      r3, 0x0
    lwz     r0, 0x34(sp)
    stw     r4, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x38(sp)
    stw     r0, 0x9c(r30)
branch_0x8012919c:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __dt__22TNerveKukkuGraphWanderFv
__dt__22TNerveKukkuGraphWanderFv: # 0x801291b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801291f8
    lis     r3, 0x803c
    subi    r0, r3, 0x1c68
    stw     r0, 0x0(r31)
    beq-    branch_0x801291e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801291e8:
    extsh.  r0, r4
    ble-    branch_0x801291f8
    mr      r3, r31
    bl      __dl__FPv
branch_0x801291f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKukkuPostFallCFP24TSpineBase_10TLiveActor_
execute__19TNerveKukkuPostFallCFP24TSpineBase_10TLiveActor_: # 0x80129210
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80129278
    lis     r4, 0x8038
    lwz     r3, 0x74(r30)
    addi    r4, r4, 0x5f50
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    lfs     f0, -0x50a0(rtoc)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x34(sp)
    stfs    f0, 0x38(sp)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x38(sp)
    stw     r0, 0xb4(r30)
branch_0x80129278:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80129330
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x35c(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x80129330
    lbz     r0, -0x6568(r13)
    extsb.  r0, r0
    bne-    branch_0x801292f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6564(r13)
    subi    r0, r3, 0x1c68
    lis     r4, 0x8013
    stw     r0, -0x6564(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3580
    subi    r4, r4, 0x6e4c
    subi    r3, r13, 0x6564
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6568(r13)
branch_0x801292f4:
    subi    r4, r13, 0x6564
    cmplwi  r4, 0x0
    beq-    branch_0x80129328
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80129328
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80129328:
    li      r3, 0x1
    b       branch_0x80129334

branch_0x80129330:
    li      r3, 0x0
branch_0x80129334:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl theNerve__19TNerveKukkuPostFallFv
theNerve__19TNerveKukkuPostFallFv: # 0x8012934c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6558(r13)
    extsb.  r0, r0
    bne-    branch_0x8012939c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6554(r13)
    subi    r0, r3, 0x1c88
    lis     r4, 0x8013
    stw     r0, -0x6554(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x35a4
    subi    r4, r4, 0x6c50
    subi    r3, r13, 0x6554
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6558(r13)
branch_0x8012939c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6554
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__19TNerveKukkuPostFallFv
__dt__19TNerveKukkuPostFallFv: # 0x801293b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801293f4
    lis     r3, 0x803c
    subi    r0, r3, 0x1c88
    stw     r0, 0x0(r31)
    beq-    branch_0x801293e4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801293e4:
    extsh.  r0, r4
    ble-    branch_0x801293f4
    mr      r3, r31
    bl      __dl__FPv
branch_0x801293f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveKukkuFallCFP24TSpineBase_10TLiveActor_
execute__15TNerveKukkuFallCFP24TSpineBase_10TLiveActor_: # 0x8012940c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    mr      r30, r4
    stw     r29, 0x8c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x801294bc
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x5f5c
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r29, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x509c(rtoc)
    mr      r3, r31
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r29)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x50a0(rtoc)
    stfs    f1, 0x78(sp)
    lfs     f0, 0x30c(r3)
    mr      r3, r31
    fneg    f0, f0
    stfs    f0, 0x7c(sp)
    stfs    f1, 0x80(sp)
    lwz     r4, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0xb4(r31)
    bl      dropCoins__6TKukkuFv
branch_0x801294bc:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8012954c
    lfs     f0, -0x5098(rtoc)
    addi    r6, sp, 0x6c
    addi    r4, r31, 0x10
    stfs    f0, 0x6c(sp)
    li      r3, 0xa1
    li      r5, 0x0
    stfs    f0, 0x70(sp)
    stfs    f0, 0x74(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5098(rtoc)
    addi    r6, sp, 0x60
    addi    r4, r31, 0x10
    stfs    f0, 0x60(sp)
    li      r3, 0xa2
    li      r5, 0x0
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x80129544
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80129544
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80129544:
    li      r3, 0x1
    b       branch_0x80129688

branch_0x8012954c:
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x50(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x370(r3)
    mr      r3, r31
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x4c(sp)
    li      r0, 0x0
    lfs     f0, 0x384(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, -0x5094(rtoc)
    lfs     f0, 0x4c(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801295e4
    lfs     f0, -0x50a0(rtoc)
    li      r0, 0x1
    stfs    f0, 0x4c(sp)
branch_0x801295e4:
    lwz     r4, 0x48(sp)
    clrlwi. r0, r0, 24
    lwz     r3, 0x4c(sp)
    stw     r4, 0xac(r31)
    stw     r3, 0xb0(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0xb4(r31)
    beq-    branch_0x80129684
    lbz     r0, -0x6550(r13)
    extsb.  r0, r0
    bne-    branch_0x80129648
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x654c(r13)
    subi    r0, r3, 0x1c98
    lis     r4, 0x8013
    stw     r0, -0x654c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x35b0
    subi    r4, r4, 0x7014
    subi    r3, r13, 0x654c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6550(r13)
branch_0x80129648:
    subi    r4, r13, 0x654c
    cmplwi  r4, 0x0
    beq-    branch_0x8012967c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8012967c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012967c:
    li      r3, 0x1
    b       branch_0x80129688

branch_0x80129684:
    li      r3, 0x0
branch_0x80129688:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr


.globl theNerve__15TNerveKukkuFallFv
theNerve__15TNerveKukkuFallFv: # 0x801296a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6560(r13)
    extsb.  r0, r0
    bne-    branch_0x801296f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x655c(r13)
    subi    r0, r3, 0x1c78
    lis     r4, 0x8013
    stw     r0, -0x655c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3598
    subi    r4, r4, 0x68f8
    subi    r3, r13, 0x655c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6560(r13)
branch_0x801296f4:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x655c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__15TNerveKukkuFallFv
__dt__15TNerveKukkuFallFv: # 0x80129708
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012974c
    lis     r3, 0x803c
    subi    r0, r3, 0x1c78
    stw     r0, 0x0(r31)
    beq-    branch_0x8012973c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8012973c:
    extsh.  r0, r4
    ble-    branch_0x8012974c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012974c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveKukkuGraphWanderCFP24TSpineBase_10TLiveActor_
execute__22TNerveKukkuGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x80129764
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stw     r31, 0xfc(sp)
    addi    r31, r3, 0x5d98
    stw     r30, 0xf8(sp)
    stw     r29, 0xf4(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80129818
    lfs     f0, -0x50a0(rtoc)
    li      r0, -0x1
    addi    r3, r29, 0x0
    stfs    f0, 0xe4(sp)
    stfs    f0, 0xe8(sp)
    stfs    f0, 0xec(sp)
    lwz     r5, 0xe4(sp)
    lwz     r4, 0xe8(sp)
    stw     r5, 0xac(r29)
    stw     r4, 0xb0(r29)
    lwz     r4, 0xec(sp)
    stw     r4, 0xb4(r29)
    lwz     r4, 0x124(r29)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x1b8
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x80129804
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x1b8
    bl      setBck__6MActorFPCc
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
    b       branch_0x80129818

branch_0x80129804:
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x1c4
    bl      setBck__6MActorFPCc
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
branch_0x80129818:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80129868
    mr      r3, r29
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x1c4
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    bne-    branch_0x80129868
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x1c4
    bl      setBck__6MActorFPCc
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
branch_0x80129868:
    lwz     r5, -0x60b4(r13)
    mr      r3, r29
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xe0(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f0, -0x50a0(rtoc)
    stfs    f0, 0xdc(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xe0(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x348(r3)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    fmuls   f0, f3, f3
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80129aa4
    lwz     r0, 0x1ac(r29)
    cmpwi   r0, 0x0
    blt-    branch_0x8012991c
    lwz     r3, 0x1ac(r29)
    subi    r0, r3, 0x1
    stw     r0, 0x1ac(r29)
    b       branch_0x80129aa4

branch_0x8012991c:
    addi    r4, r29, 0x194
    addi    r0, r29, 0x1a0
    b       branch_0x8012995c

branch_0x80129928:
    lwz     r30, 0x0(r4)
    li      r5, 0x0
    lwz     r3, 0x6c(r30)
    clrlwi. r3, r3, 31
    beq-    branch_0x8012994c
    lwz     r3, 0x7c(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x8012994c
    li      r5, 0x1
branch_0x8012994c:
    clrlwi. r3, r5, 24
    beq-    branch_0x80129958
    b       branch_0x80129968

branch_0x80129958:
    addi    r4, r4, 0x4
branch_0x8012995c:
    cmplw   r4, r0
    bne+    branch_0x80129928
    li      r30, 0x0
branch_0x80129968:
    cmplwi  r30, 0x0
    beq-    branch_0x80129aa4
    lfs     f1, -0x50a0(rtoc)
    mr      r3, r29
    lfs     f0, -0x5098(rtoc)
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x320(r3)
    addi    r3, sp, 0xbc
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5090(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801299cc
    lfs     f0, -0x50a0(rtoc)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xc0(sp)
    stfs    f0, 0xbc(sp)
    b       branch_0x801299e0

branch_0x801299cc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0xbc
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801299e0:
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x1dc
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x10(r29)
    mr      r3, r29
    lwz     r0, 0x14(r29)
    stw     r4, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r0, 0x6c(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x6c(r30)
    lwz     r4, 0xcc(sp)
    lwz     r0, 0xd0(sp)
    stw     r4, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x18(r30)
    lwz     r4, 0xbc(sp)
    lwz     r0, 0xc0(sp)
    stw     r4, 0x70(r30)
    stw     r0, 0x74(r30)
    lwz     r0, 0xc4(sp)
    stw     r0, 0x78(r30)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x334(r3)
    li      r4, 0x28f3
    stw     r0, 0x1ac(r29)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80129aa4
    addi    r4, r29, 0x10
    li      r3, 0x28f3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80129aa4:
    mr      r3, r29
    bl      updateRotation__6TKukkuFv
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x2e4(r3)
    addi    r3, sp, 0x80
    addi    r4, r29, 0x30
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x64
    addi    r4, sp, 0x80
    bl      __ct__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_
    lfs     f1, -0x50a0(rtoc)
    fmr     f3, f31
    addi    r3, sp, 0x74
    fmr     f2, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80129b3c
    addi    r4, sp, 0x74
    addi    r5, r4, 0x0
    addi    r3, sp, 0x64
    bl      rotate__Q29JGeometry9TQuat4_f_CFRCQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    lwz     r4, 0x74(sp)
    li      r3, 0x0
    lwz     r0, 0x78(sp)
    stw     r4, 0x94(r29)
    stw     r0, 0x98(r29)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x9c(r29)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    lwz     r29, 0xf4(sp)
    addi    sp, sp, 0x108
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80129b3c
set_f___Q29JGeometry8TVec3_f_Ffff_80129b3c: # 0x80129b3c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl getBasNameTable__6TKukkuCFv
getBasNameTable__6TKukkuCFv: # 0x80129b4c
    lis     r3, 0x803c
    subi    r3, r3, 0x1cb0
    blr


.globl createModelData__13TKukkuManagerFv
createModelData__13TKukkuManagerFv: # 0x80129b58
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x5f38
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__13TKukkuManagerFR20JSUMemoryInputStream
load__13TKukkuManagerFR20JSUMemoryInputStream: # 0x80129b8c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r24, r3, 0x0
    addi    r23, r4, 0x0
    addi    r30, r5, 0x5d98
    li      r3, 0x3b0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80129de0
    stw     r27, 0x10(sp)
    addi    r4, r30, 0x1e8
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x1fc
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x1fc
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x2d4(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x5088(rtoc)
    addi    r3, r30, 0x208
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x208
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r31)
    addi    r3, r30, 0x214
    lfs     f0, -0x5080(rtoc)
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x214
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x224
    lfs     f0, -0x507c(rtoc)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x224
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x230
    lfs     f0, -0x5098(rtoc)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x230
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42ac
    stw     r26, 0x324(r31)
    li      r0, 0x3c
    lis     r3, 0x803b
    stw     r0, 0x334(r31)
    subi    r25, r3, 0x42b8
    addi    r3, r30, 0x240
    stw     r25, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x240
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x250
    lfs     f0, -0x5078(rtoc)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x250
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x34c(r31)
    li      r0, 0x2d
    addi    r3, r30, 0x260
    stw     r0, 0x35c(r31)
    stw     r25, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x260
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x26c
    lfs     f0, -0x5074(rtoc)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x26c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    addi    r3, r30, 0x27c
    lfs     f0, -0x50a0(rtoc)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x27c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x388(r31)
    addi    r3, r30, 0x288
    lfs     f0, -0x5070(rtoc)
    stfs    f0, 0x398(r31)
    stw     r28, 0x388(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x39c
    addi    r6, r30, 0x288
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39c(r31)
    mr      r3, r31
    lfs     f0, -0x506c(rtoc)
    stfs    f0, 0x3ac(r31)
    stw     r28, 0x39c(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x80129de0:
    stw     r27, 0x38(r24)
    addi    r3, r24, 0x0
    addi    r4, r23, 0x0
    lwz     r0, -0x7ca0(r13)
    stw     r0, 0x194(r27)
    lwz     r0, -0x7c9c(r13)
    stw     r0, 0x1a8(r27)
    lwz     r0, -0x7c98(r13)
    stw     r0, 0x16c(r27)
    lwz     r0, -0x7c94(r13)
    stw     r0, 0x180(r27)
    lfs     f0, -0x7c90(r13)
    stfs    f0, 0x2c(r27)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__13TKukkuManagerFPCc
__ct__13TKukkuManagerFPCc: # 0x80129e2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x1ab0
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAfterDeadEffect__6TKukkuFv
setAfterDeadEffect__6TKukkuFv: # 0x80129e68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      setAfterDeadEffect__11TSmallEnemyFv
    lwz     r4, 0x70(r31)
    lwz     r3, -0x62f0(r13)
    lhz     r4, 0x58(r4)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, -0x5068(rtoc)
    bl      stamp__17TPollutionManagerFUsffff
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setDeadAnm__6TKukkuFv
setDeadAnm__6TKukkuFv: # 0x80129eb4
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x602c
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl dropCoins__6TKukkuFv
dropCoins__6TKukkuFv: # 0x80129ef4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stfd    f29, 0x140(sp)
    stfd    f28, 0x138(sp)
    stfd    f27, 0x130(sp)
    stfd    f26, 0x128(sp)
    stfd    f25, 0x120(sp)
    stmw    r27, 0x10c(sp)
    mr      r30, r3
    lwz     r3, 0x1b0(r3)
    cmpwi   r3, 0xa
    bgt-    branch_0x8012a304
    bne-    branch_0x80129f98
    lwz     r0, 0x1a0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80129f98
    addi    r0, r3, 0x1
    stw     r0, 0x1b0(r30)
    lwz     r3, 0x1a0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1a0(r30)
    addi    r4, r30, 0x10
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1a0(r30)
    lfs     f0, -0x50a0(rtoc)
    stfs    f0, 0xac(r3)
    stfs    f0, 0xb0(r3)
    stfs    f0, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
    b       branch_0x8012a304

branch_0x80129f98:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5050(rtoc)
    stw     r0, 0x104(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5064(rtoc)
    stw     r0, 0x100(sp)
    lfs     f0, -0x5060(rtoc)
    lfd     f2, 0x100(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    stfd    f0, 0xf8(sp)
    cmpwi   r0, 0x1
    lwz     r0, 0xfc(sp)
    bge-    branch_0x80129fec
    li      r0, 0x1
    b       branch_0x80129ff8

branch_0x80129fec:
    cmpwi   r0, 0x3
    ble-    branch_0x80129ff8
    li      r0, 0x3
branch_0x80129ff8:
    lis     r3, 0x8038
    lfd     f2, -0x5050(rtoc)
    slwi    r4, r0, 2
    lfs     f3, -0x505c(rtoc)
    addi    r0, r3, 0x5f1c
    lfs     f0, -0x508c(rtoc)
    add     r3, r0, r4
    lwz     r31, 0x0(r3)
    lis     r0, 0x4330
    xoris   r3, r31, 0x8000
    stw     r3, 0xf4(sp)
    stw     r0, 0xf0(sp)
    lfd     f1, 0xf0(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    fmuls   f25, f0, f1
    fmr     f1, f25
    bl      sinf
    fmr     f28, f1
    fmr     f1, f25
    bl      cosf
    mr      r3, r30
    fmr     f29, f1
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x5058(rtoc)
    lfs     f1, 0x3ac(r3)
    lfs     f0, -0x508c(rtoc)
    fmuls   f1, f2, f1
    fmuls   f26, f0, f1
    fmr     f1, f26
    bl      sinf
    fmr     f25, f1
    fmr     f1, f26
    bl      cosf
    mr      r3, r30
    fmr     f30, f1
    lwz     r12, 0x0(r30)
    lfs     f26, 0x34(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x5054(rtoc)
    lfs     f4, 0x398(r3)
    addi    r3, sp, 0xb4
    fmuls   f0, f0, f26
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    fctiwz  f0, f0
    lfs     f2, -0x50a0(rtoc)
    stfd    f0, 0xf8(sp)
    lwz     r5, 0xfc(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80129b3c
    lwz     r0, 0xb4(sp)
    fneg    f7, f25
    lfs     f31, -0x50a0(rtoc)
    fneg    f26, f28
    stw     r0, 0xc0(sp)
    lwz     r3, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    fneg    f27, f31
    stw     r3, 0xc4(sp)
    li      r28, 0x0
    lis     r29, 0x2000
    stw     r0, 0xc8(sp)
    lfs     f9, 0xc0(sp)
    lfs     f6, 0xc8(sp)
    fmuls   f1, f31, f9
    lfs     f3, 0xc4(sp)
    fmuls   f8, f31, f6
    fmuls   f4, f31, f3
    fmadds  f0, f7, f6, f1
    fmsubs  f2, f25, f3, f1
    fsubs   f1, f8, f4
    fmadds  f5, f30, f3, f0
    fmsubs  f3, f7, f9, f4
    fmadds  f4, f30, f9, f1
    fmuls   f0, f5, f27
    fmuls   f1, f5, f30
    fmadds  f6, f30, f6, f2
    fmadds  f2, f4, f30, f0
    fmuls   f0, f5, f7
    fmadds  f1, f4, f31, f1
    fsubs   f3, f3, f8
    fmsubs  f0, f4, f27, f0
    fnmsubs  f2, f6, f27, f2
    fmuls   f4, f3, f27
    fmadds  f1, f6, f7, f1
    fmadds  f2, f3, f7, f2
    fmadds  f0, f6, f30, f0
    fadds   f1, f4, f1
    stfs    f2, 0xc0(sp)
    fadds   f0, f4, f0
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    lfs     f5, 0xc4(sp)
    lfs     f7, 0xc0(sp)
    lfs     f4, 0xc8(sp)
    fmuls   f6, f31, f5
    fmuls   f1, f31, f7
    fmuls   f0, f28, f5
    fmsubs  f3, f28, f4, f6
    fmadds  f2, f27, f4, f1
    fmsubs  f0, f27, f7, f0
    fnmsubs  f1, f28, f7, f6
    fmadds  f2, f29, f5, f2
    fnmsubs  f5, f31, f4, f0
    fmadds  f3, f29, f7, f3
    fmuls   f6, f2, f27
    fmuls   f0, f2, f29
    fmadds  f4, f29, f4, f1
    fmadds  f2, f3, f29, f6
    fmadds  f1, f3, f31, f0
    fmsubs  f0, f3, f26, f6
    fmuls   f3, f5, f27
    fnmsubs  f2, f4, f26, f2
    fmadds  f1, f4, f27, f1
    fmadds  f0, f4, f29, f0
    fadds   f2, f3, f2
    fmadds  f1, f5, f26, f1
    fadds   f0, f3, f0
    stfs    f2, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    b       branch_0x8012a2fc

branch_0x8012a214:
    lwz     r3, -0x62b0(r13)
    addi    r4, r29, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr.     r27, r3
    beq-    branch_0x8012a304
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r27
    lwz     r12, 0x0(r27)
    addi    r4, r30, 0x10
    lwz     r12, 0x8c(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xc0(sp)
    stfs    f0, 0xac(r27)
    lfs     f4, 0xc4(sp)
    stfs    f4, 0xb0(r27)
    lfs     f6, 0xc8(sp)
    stfs    f6, 0xb4(r27)
    lwz     r0, 0xf0(r27)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r27)
    lwz     r3, 0x1b0(r30)
    addi    r0, r3, 0x1
    cmpwi   r0, 0xa
    stw     r0, 0x1b0(r30)
    beq-    branch_0x8012a304
    lfs     f5, 0xc0(sp)
    fmuls   f1, f31, f4
    fmuls   f0, f28, f4
    addi    r28, r28, 0x1
    fmuls   f2, f31, f5
    fmsubs  f3, f28, f6, f1
    fnmsubs  f1, f28, f5, f1
    fmadds  f2, f27, f6, f2
    fmsubs  f0, f27, f5, f0
    fmadds  f3, f29, f5, f3
    fmadds  f2, f29, f4, f2
    fnmsubs  f5, f31, f6, f0
    fmadds  f4, f29, f6, f1
    fmuls   f6, f2, f27
    fmuls   f0, f2, f29
    fmuls   f7, f5, f27
    fmadds  f2, f3, f29, f6
    fmadds  f1, f3, f31, f0
    fmsubs  f0, f3, f26, f6
    fnmsubs  f2, f4, f26, f2
    fmadds  f1, f4, f27, f1
    fmadds  f0, f4, f29, f0
    fadds   f2, f7, f2
    fmadds  f1, f5, f26, f1
    fadds   f0, f7, f0
    stfs    f2, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xc8(sp)
branch_0x8012a2fc:
    cmpw    r28, r31
    blt+    branch_0x8012a214
branch_0x8012a304:
    lmw     r27, 0x10c(sp)
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    mtlr    r0
    lfd     f29, 0x140(sp)
    lfd     f28, 0x138(sp)
    lfd     f27, 0x130(sp)
    lfd     f26, 0x128(sp)
    lfd     f25, 0x120(sp)
    addi    sp, sp, 0x158
    blr


.globl calcMomentum__6TKukkuFf
calcMomentum__6TKukkuFf: # 0x8012a334
    mflr    r0
    addi    r4, r4, 0x30
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    fmr     f31, f1
    stw     r31, 0x6c(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x38
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x38(sp)
    lfs     f0, -0x50a0(rtoc)
    stw     r0, 0x54(sp)
    lwz     r0, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f31, 0x50(sp)
    lfs     f7, 0x5c(sp)
    lfs     f13, 0x48(sp)
    lfs     f2, 0x54(sp)
    fneg    f12, f7
    lfs     f5, 0x4c(sp)
    fmuls   f1, f7, f13
    lfs     f10, 0x58(sp)
    fneg    f11, f2
    lfs     f8, 0x50(sp)
    fmuls   f3, f7, f5
    fmuls   f0, f10, f13
    lfs     f9, 0x60(sp)
    fmadds  f1, f11, f8, f1
    fmsubs  f4, f2, f5, f0
    fmsubs  f3, f10, f8, f3
    fmadds  f6, f9, f5, f1
    fmuls   f1, f10, f5
    fmadds  f5, f9, f13, f3
    fmuls   f2, f6, f12
    fmsubs  f3, f11, f13, f1
    fmuls   f0, f6, f9
    fmadds  f4, f9, f8, f4
    fneg    f10, f10
    fmadds  f1, f5, f7, f0
    fmadds  f2, f5, f9, f2
    fmuls   f0, f6, f11
    fnmsubs  f3, f7, f8, f3
    fnmsubs  f2, f4, f10, f2
    fmsubs  f0, f5, f10, f0
    fmadds  f1, f4, f11, f1
    fmadds  f2, f3, f11, f2
    fmadds  f0, f4, f9, f0
    fmadds  f1, f3, f10, f1
    stfs    f2, 0x48(sp)
    fmadds  f0, f3, f12, f0
    stfs    f1, 0x4c(sp)
    stfs    f0, 0x50(sp)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x8(r31)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl updateRotation__6TKukkuFv
updateRotation__6TKukkuFv: # 0x8012a450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    lwz     r4, 0xf4(r3)
    addi    r3, r29, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x8012a490
    addi    r4, r4, 0x10
    b       branch_0x8012a494

branch_0x8012a490:
    addi    r4, r3, 0x4
branch_0x8012a494:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f3, 0x44(sp)
    lfs     f0, 0x40(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x50a0(rtoc)
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8012a510
    b       branch_0x8012a534

branch_0x8012a510:
    frsqrte f3, f31
    lfs     f2, -0x508c(rtoc)
    lfs     f0, -0x5088(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x8012a534:
    lfs     f0, -0x5084(rtoc)
    fcmpo   cr0, f31, f0
    blt-    branch_0x8012a670
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x2e4(r3)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f29, 0x2f8(r3)
    fmr     f1, f30
    mr      r3, r29
    fmr     f2, f29
    bl      calcMinimumTurnRadius__11TSpineEnemyCFff
    lfs     f0, -0x509c(rtoc)
    fmuls   f0, f0, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8012a5ac
    lfs     f0, -0x508c(rtoc)
    fmr     f1, f30
    mr      r3, r29
    fmuls   f2, f0, f31
    bl      calcTurnSpeedToReach__11TSpineEnemyCFff
    fmr     f29, f1
branch_0x8012a5ac:
    fmr     f1, f30
    addi    r3, r29, 0x30
    fmr     f2, f29
    addi    r4, sp, 0x3c
    bl      getRotationFlyToDir__11TAnimalBaseFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x8c(r29)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8012a5d4
    b       branch_0x8012a5d8

branch_0x8012a5d4:
    lwz     r31, 0x1c(r3)
branch_0x8012a5d8:
    li      r30, 0x1
    bl      theNerve__15TNerveKukkuFallFv
    cmplw   r31, r3
    beq-    branch_0x8012a5f8
    bl      theNerve__19TNerveKukkuPostFallFv
    cmplw   r31, r3
    beq-    branch_0x8012a5f8
    li      r30, 0x0
branch_0x8012a5f8:
    clrlwi. r0, r30, 24
    beq-    branch_0x8012a608
    lfs     f1, -0x50a0(rtoc)
    b       branch_0x8012a60c

branch_0x8012a608:
    lfs     f1, -0x5098(rtoc)
branch_0x8012a60c:
    lfs     f0, 0x30(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(r29)
    lwz     r3, 0x8c(r29)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8012a62c
    b       branch_0x8012a630

branch_0x8012a62c:
    lwz     r31, 0x1c(r3)
branch_0x8012a630:
    li      r30, 0x1
    bl      theNerve__15TNerveKukkuFallFv
    cmplw   r31, r3
    beq-    branch_0x8012a650
    bl      theNerve__19TNerveKukkuPostFallFv
    cmplw   r31, r3
    beq-    branch_0x8012a650
    li      r30, 0x0
branch_0x8012a650:
    clrlwi. r0, r30, 24
    beq-    branch_0x8012a660
    lfs     f1, -0x50a0(rtoc)
    b       branch_0x8012a664

branch_0x8012a660:
    lfs     f1, -0x5098(rtoc)
branch_0x8012a664:
    lfs     f0, 0x38(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(r29)
branch_0x8012a670:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x70
    blr


.globl behaveToWater__6TKukkuFP9THitActor
behaveToWater__6TKukkuFP9THitActor: # 0x8012a698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    stw     r28, 0x38(sp)
    lwz     r4, 0x8c(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x3580
    lwz     r29, 0x14(r4)
    cmplwi  r29, 0x0
    beq-    branch_0x8012a6d4
    b       branch_0x8012a6d8

branch_0x8012a6d4:
    lwz     r29, 0x1c(r4)
branch_0x8012a6d8:
    lbz     r0, -0x6560(r13)
    extsb.  r0, r0
    bne-    branch_0x8012a718
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x655c(r13)
    subi    r0, r3, 0x1c78
    lis     r3, 0x8013
    stw     r0, -0x655c(r13)
    subi    r4, r3, 0x68f8
    subi    r3, r13, 0x655c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6560(r13)
branch_0x8012a718:
    subi    r0, r13, 0x655c
    cmplw   r29, r0
    li      r28, 0x1
    beq-    branch_0x8012a738
    bl      theNerve__19TNerveKukkuPostFallFv
    cmplw   r29, r3
    beq-    branch_0x8012a738
    li      r28, 0x0
branch_0x8012a738:
    clrlwi. r0, r28, 24
    bne-    branch_0x8012a828
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8012a754
    b       branch_0x8012a758

branch_0x8012a754:
    lwz     r29, 0x1c(r3)
branch_0x8012a758:
    lbz     r0, -0x6550(r13)
    extsb.  r0, r0
    bne-    branch_0x8012a798
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x654c(r13)
    subi    r0, r3, 0x1c98
    lis     r3, 0x8013
    stw     r0, -0x654c(r13)
    subi    r4, r3, 0x7014
    subi    r3, r13, 0x654c
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6550(r13)
branch_0x8012a798:
    subi    r0, r13, 0x654c
    cmplw   r29, r0
    beq-    branch_0x8012a7ac
    li      r0, 0x0
    b       branch_0x8012a7b0

branch_0x8012a7ac:
    li      r0, 0x1
branch_0x8012a7b0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8012a828
    lwz     r3, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6560(r13)
    extsb.  r0, r0
    bne-    branch_0x8012a804
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x655c(r13)
    subi    r0, r3, 0x1c78
    lis     r3, 0x8013
    stw     r0, -0x655c(r13)
    subi    r4, r3, 0x68f8
    subi    r3, r13, 0x655c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6560(r13)
branch_0x8012a804:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x655c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8012a81c
    stw     r0, 0x1c(r4)
branch_0x8012a81c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8012a828:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl perform__6TKukkuFUlPQ26JDrama9TGraphics
perform__6TKukkuFUlPQ26JDrama9TGraphics: # 0x8012a848
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    addi    r30, r31, 0x194
    addi    r31, r31, 0x1a0
    b       branch_0x8012a8a0

branch_0x8012a880:
    lwz     r3, 0x0(r30)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x4
branch_0x8012a8a0:
    cmplw   r30, r31
    bne+    branch_0x8012a880
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl bind__6TKukkuFv
bind__6TKukkuFv: # 0x8012a8c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      bind__10TLiveActorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__6TKukkuFv
calcRootMatrix__6TKukkuFv: # 0x8012a8e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stfd    f30, 0x148(sp)
    stfd    f29, 0x140(sp)
    stfd    f28, 0x138(sp)
    stfd    f27, 0x130(sp)
    stfd    f26, 0x128(sp)
    stfd    f25, 0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r3
    stw     r30, 0x118(sp)
    stw     r29, 0x114(sp)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8012a934
    b       branch_0x8012a938

branch_0x8012a934:
    lwz     r30, 0x1c(r3)
branch_0x8012a938:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    bne-    branch_0x8012ab8c
    lwz     r3, 0xc4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8012a9a8
    addi    r3, r3, 0x34
    lfs     f0, -0x5090(rtoc)
    lfs     f27, 0x4(r3)
    lfs     f25, 0x0(r3)
    fmuls   f1, f27, f27
    lfs     f28, 0x8(r3)
    fmadds  f1, f25, f25, f1
    fmadds  f1, f28, f28, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012a98c
    lfs     f28, -0x50a0(rtoc)
    fmr     f25, f28
    fmr     f26, f25
    b       branch_0x8012a9b4

branch_0x8012a98c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x5098(rtoc)
    fmuls   f0, f0, f1
    fmuls   f26, f25, f0
    fmuls   f25, f27, f0
    fmuls   f28, f28, f0
    b       branch_0x8012a9b4

branch_0x8012a9a8:
    lfs     f26, -0x50a0(rtoc)
    lfs     f25, -0x5098(rtoc)
    fmr     f28, f26
branch_0x8012a9b4:
    lfs     f2, -0x5048(rtoc)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x508c(rtoc)
    fmuls   f1, f2, f1
    fmuls   f27, f0, f1
    fmr     f1, f27
    bl      sinf
    fmr     f30, f1
    fmr     f1, f27
    bl      cosf
    lfs     f2, -0x50a0(rtoc)
    fmr     f31, f1
    lfs     f0, -0x5098(rtoc)
    fmuls   f4, f2, f26
    fmuls   f5, f2, f28
    fmuls   f1, f2, f25
    fsubs   f27, f4, f5
    fmsubs  f28, f0, f28, f1
    fnmsubs  f26, f0, f26, f1
    fmuls   f0, f27, f27
    fmadds  f0, f28, f28, f0
    fmadds  f29, f26, f26, f0
    fcmpo   cr0, f29, f2
    cror    2, 0, 2
    bne-    branch_0x8012aa1c
    b       branch_0x8012aa40

branch_0x8012aa1c:
    frsqrte f3, f29
    lfs     f2, -0x508c(rtoc)
    lfs     f0, -0x5088(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f29, f1, f0
    fmuls   f0, f2, f0
    fmuls   f29, f29, f0
branch_0x8012aa40:
    lfs     f0, -0x5090(rtoc)
    fcmpo   cr0, f29, f0
    cror    2, 0, 2
    bne-    branch_0x8012aa6c
    lfs     f1, -0x50a0(rtoc)
    lfs     f0, -0x5098(rtoc)
    stfs    f1, 0xe0(sp)
    stfs    f1, 0xe4(sp)
    stfs    f1, 0xe8(sp)
    stfs    f0, 0xec(sp)
    b       branch_0x8012aac0

branch_0x8012aa6c:
    lfs     f0, -0x5098(rtoc)
    fmr     f1, f29
    fmadds  f0, f0, f25, f4
    fadds   f2, f5, f0
    bl      atan2f
    lfs     f0, -0x508c(rtoc)
    lfs     f2, -0x5098(rtoc)
    fmuls   f0, f0, f1
    fmuls   f25, f2, f0
    fmr     f1, f25
    bl      sinf
    fdivs   f1, f1, f29
    fmuls   f0, f28, f1
    fmuls   f2, f27, f1
    stfs    f0, 0xe0(sp)
    fmuls   f0, f26, f1
    fmr     f1, f25
    stfs    f2, 0xe4(sp)
    stfs    f0, 0xe8(sp)
    bl      cosf
    stfs    f1, 0xec(sp)
branch_0x8012aac0:
    lfs     f3, 0xec(sp)
    addi    r3, sp, 0xb0
    lfs     f2, -0x50a0(rtoc)
    addi    r4, sp, 0xe0
    lfs     f6, 0xe4(sp)
    lfs     f5, 0xe0(sp)
    fmuls   f9, f3, f2
    fmuls   f0, f3, f30
    lfs     f4, 0xe8(sp)
    fmuls   f10, f6, f2
    fmadds  f1, f5, f31, f9
    fmuls   f7, f4, f2
    fmuls   f8, f5, f2
    fmadds  f0, f6, f31, f0
    fadds   f1, f10, f1
    fmadds  f2, f4, f31, f9
    fadds   f0, f7, f0
    fmsubs  f3, f3, f31, f8
    fnmsubs  f1, f4, f30, f1
    fmadds  f2, f5, f30, f2
    fsubs   f0, f0, f8
    stfs    f1, 0xe0(sp)
    fnmsubs  f3, f6, f30, f3
    fsubs   f1, f2, f10
    stfs    f0, 0xe4(sp)
    fsubs   f0, f3, f7
    stfs    f1, 0xe8(sp)
    stfs    f0, 0xec(sp)
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r31)
    addi    r3, r31, 0x0
    addi    r30, sp, 0xb0
    stfs    f0, 0xbc(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xcc(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0xdc(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    b       branch_0x8012ab94

branch_0x8012ab8c:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x8012ab94:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8012aba8
    b       branch_0x8012abac

branch_0x8012aba8:
    lwz     r30, 0x1c(r3)
branch_0x8012abac:
    lbz     r0, -0x6560(r13)
    extsb.  r0, r0
    bne-    branch_0x8012abec
    subi    r3, r13, 0x655c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x1c78
    lis     r4, 0x8013
    stw     r0, -0x655c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3598
    subi    r4, r4, 0x68f8
    subi    r3, r13, 0x655c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6560(r13)
branch_0x8012abec:
    subi    r0, r13, 0x655c
    cmplw   r30, r0
    li      r29, 0x1
    beq-    branch_0x8012ac0c
    bl      theNerve__19TNerveKukkuPostFallFv
    cmplw   r30, r3
    beq-    branch_0x8012ac0c
    li      r29, 0x0
branch_0x8012ac0c:
    clrlwi. r0, r29, 24
    beq-    branch_0x8012ac40
    lwz     r30, 0x1a8(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, -0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x18d
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8012ac40:
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x5f50
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8012ac88
    lwz     r30, 0x1a8(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, -0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x18c
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8012ac88:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lfd     f30, 0x148(sp)
    mtlr    r0
    lfd     f29, 0x140(sp)
    lfd     f28, 0x138(sp)
    lfd     f27, 0x130(sp)
    lfd     f26, 0x128(sp)
    lfd     f25, 0x120(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    lwz     r29, 0x114(sp)
    addi    sp, sp, 0x158
    blr


.globl control__6TKukkuFv
control__6TKukkuFv: # 0x8012acc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x1a4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8012ace4
    lwz     r4, 0x1a4(r3)
    subi    r0, r4, 0x1
    stw     r0, 0x1a4(r3)
branch_0x8012ace4:
    bl      control__10TLiveActorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__6TKukkuFP9THitActorUl
receiveMessage__6TKukkuFP9THitActorUl: # 0x8012acf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8012ad20
    li      r3, 0x0
    b       branch_0x8012ad74

branch_0x8012ad20:
    cmpwi   r5, 0x2
    bge-    branch_0x8012ad6c
    cmpwi   r5, 0x0
    bge-    branch_0x8012ad34
    b       branch_0x8012ad6c

branch_0x8012ad34:
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8012ad58
    stw     r0, 0x1c(r4)
branch_0x8012ad58:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    li      r3, 0x1
    b       branch_0x8012ad74

branch_0x8012ad6c:
    mr      r3, r31
    bl      receiveMessage__11TSmallEnemyFP9THitActorUl
branch_0x8012ad74:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl reset__6TKukkuFv
reset__6TKukkuFv: # 0x8012ad88
    li      r0, 0x0
    stw     r0, 0x1a4(r3)
    stw     r0, 0x1ac(r3)
    lfs     f0, -0x50a0(rtoc)
    stfs    f0, 0xcc(r3)
    stw     r0, 0x1b0(r3)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r3)
    lfs     f0, -0x5044(rtoc)
    stfs    f0, 0xb8(r3)
    blr


.globl init__6TKukkuFP12TLiveManager
init__6TKukkuFP12TLiveManager: # 0x8012adb8
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r24, 0x50(sp)
    mr      r30, r3
    addi    r31, r5, 0x5d98
    stw     r4, 0x70(r3)
    addi    r4, r30, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8012ae04
    lwz     r4, 0x70(r30)
    addi    r3, r25, 0x0
    li      r5, 0x4
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8012ae04:
    stw     r25, 0x78(r30)
    addi    r4, r31, 0x194
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    lbz     r0, -0x6568(r13)
    extsb.  r0, r0
    bne-    branch_0x8012ae60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6564(r13)
    subi    r0, r3, 0x1c68
    lis     r4, 0x8013
    stw     r0, -0x6564(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3580
    subi    r4, r4, 0x6e4c
    subi    r3, r13, 0x6564
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6568(r13)
branch_0x8012ae60:
    lwz     r8, 0x8c(r30)
    li      r7, 0x0
    subi    r0, r13, 0x6564
    stw     r7, 0x8(r8)
    addi    r6, sp, 0x2c
    addi    r5, sp, 0x38
    stw     r7, 0x20(r8)
    addi    r4, sp, 0x44
    addi    r3, r31, 0x2fc
    stw     r0, 0x14(r8)
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f2, -0x5098(rtoc)
    lfs     f0, -0x50a0(rtoc)
    stfs    f2, 0x2c(sp)
    fmr     f1, f2
    stfs    f0, 0x38(sp)
    stfs    f0, 0x44(sp)
    stfs    f2, 0x30(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x48(sp)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x4c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lis     r4, 0x803c
    stw     r3, 0x1a0(r30)
    subi    r27, r4, 0x1a58
    addi    r26, r30, 0x194
    addi    r25, r27, 0x24
    addi    r29, r30, 0x1a0
    b       branch_0x8012af4c

branch_0x8012aee0:
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8012af30
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x2e4
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    addi    r0, r24, 0x0
    addi    r28, r3, 0x0
    mr      r3, r0
    addi    r4, r31, 0x2f0
    bl      __ct__9THitActorFPCc
    stw     r27, 0x0(r24)
    li      r3, 0x1
    li      r0, 0x0
    stw     r25, 0x20(r24)
    stw     r28, 0x68(r24)
    stw     r3, 0x6c(r24)
    stw     r0, 0x7c(r24)
branch_0x8012af30:
    stw     r24, 0x0(r26)
    lwz     r3, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x4
branch_0x8012af4c:
    cmplw   r26, r29
    bne+    branch_0x8012aee0
    lfs     f1, -0x5040(rtoc)
    lis     r4, 0x1000
    lfs     f3, -0x5084(rtoc)
    mr      r3, r30
    fmr     f2, f1
    fmr     f4, f3
    addi    r4, r4, 0x2e
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    bl      initAnmSound__10TLiveActorFv
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x18c
    lbz     r0, 0x18c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8012afc0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2a0
    li      r5, 0x18c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x8012afc0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r25, r3, 0x18d
    lbz     r0, 0x18d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8012aff0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2c0
    li      r5, 0x18d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r25)
branch_0x8012aff0:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    subi    r4, rtoc, 0x503c
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1a8(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lmw     r24, 0x50(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__6TKukkuFPCc
__ct__6TKukkuFPCc: # 0x8012b034
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x1c58
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TKukkuBallFUlPQ26JDrama9TGraphics
perform__10TKukkuBallFUlPQ26JDrama9TGraphics: # 0x8012b080
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r26, 0x98(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lwz     r0, 0x6c(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8012b310
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x8012b140
    lfs     f1, -0x5098(rtoc)
    addi    r3, sp, 0x68
    lfs     f0, -0x50a0(rtoc)
    stfs    f1, 0x68(sp)
    stfs    f0, 0x78(sp)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x7c(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x70(sp)
    stfs    f0, 0x80(sp)
    stfs    f1, 0x90(sp)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x74(sp)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x84(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x94(sp)
    lwz     r5, 0x68(r29)
    lwz     r4, 0x24(r29)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x28(r29)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x68(r29)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x68(r29)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8012b140:
    clrlwi. r0, r30, 31
    beq-    branch_0x8012b2f4
    lhz     r0, 0x48(r29)
    lis     r3, 0x8000
    lwz     r26, 0x44(r29)
    addi    r28, r3, 0x1
    slwi    r0, r0, 2
    add     r27, r26, r0
    b       branch_0x8012b1bc

branch_0x8012b164:
    lwz     r3, 0x0(r26)
    lwz     r0, 0x4c(r3)
    cmpw    r0, r28
    beq-    branch_0x8012b178
    b       branch_0x8012b1b8

branch_0x8012b178:
    addi    r3, r29, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r0, 0x64(r29)
    li      r4, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r0, 0x6c(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x6c(r29)
    lfs     f3, 0x18(r29)
    lfs     f2, 0x14(r29)
    lfs     f1, 0x10(r29)
    lwz     r3, -0x62f0(r13)
    lfs     f4, -0x5034(rtoc)
    bl      stamp__17TPollutionManagerFUsffff
branch_0x8012b1b8:
    addi    r26, r26, 0x4
branch_0x8012b1bc:
    cmplw   r26, r27
    bne+    branch_0x8012b164
    lfs     f1, 0x74(r29)
    addi    r26, sp, 0x58
    lfs     f0, -0x502c(rtoc)
    addi    r4, sp, 0x5c
    fsubs   f0, f1, f0
    stfs    f0, 0x74(r29)
    lfs     f0, 0x70(r29)
    lfs     f1, -0x5028(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x70(r29)
    lfs     f0, 0x74(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(r29)
    lfs     f0, 0x78(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(r29)
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x58(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x70(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x74(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x78(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x54(r29)
    lfs     f0, 0x54(sp)
    lwz     r3, -0x6328(r13)
    fadds   f2, f0, f1
    lfs     f1, 0x50(sp)
    lfs     f3, 0x58(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5098(rtoc)
    lfs     f0, -0x5030(rtoc)
    fadds   f2, f1, f2
    lfs     f1, 0x54(sp)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012b2bc
    lwz     r0, 0x64(r29)
    li      r4, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r0, 0x6c(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x6c(r29)
    lfs     f3, 0x18(r29)
    lfs     f2, 0x14(r29)
    lfs     f1, 0x10(r29)
    lwz     r3, -0x62f0(r13)
    lfs     f4, -0x5034(rtoc)
    bl      stamp__17TPollutionManagerFUsffff
branch_0x8012b2bc:
    lfs     f1, 0x54(r29)
    mr      r5, r26
    lfs     f0, 0x54(sp)
    addi    r4, sp, 0x50
    lfs     f2, 0x50(r29)
    fadds   f1, f0, f1
    lwz     r3, -0x6328(r13)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x58(sp)
    stw     r0, 0x18(r29)
branch_0x8012b2f4:
    lwz     r0, 0x6c(r29)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8012b310
    lwz     r3, 0x68(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x8012b310:
    lmw     r26, 0x98(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl init__10TKukkuBallFv
init__10TKukkuBallFv: # 0x8012b324
    mflr    r0
    lis     r4, 0x1000
    stw     r0, 0x4(sp)
    lis     r5, 0x8038
    addi    r4, r4, 0x2e
    stwu    sp, -0x88(sp)
    lis     r6, 0x8000
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    addi    r30, r5, 0x5d98
    li      r5, 0x1
    stw     r29, 0x7c(sp)
    lfs     f1, -0x5040(rtoc)
    lfs     f3, -0x50a0(rtoc)
    stw     r3, 0x8(sp)
    fmr     f2, f1
    fmr     f4, f3
    lwz     r3, 0x8(sp)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r31, 0x8(sp)
    addi    r3, r30, 0x30c
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x30c
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x48
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x48(sp)
    addi    r3, sp, 0x6c
    addi    r4, sp, 0x44
    stw     r0, 0x44(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6c(sp)
    addi    r5, sp, 0x54
    addi    r4, r29, 0x0
    stw     r0, 0x68(sp)
    addi    r3, sp, 0x50
    addi    r6, sp, 0x8
    lwz     r0, 0x68(sp)
    stw     r0, 0x54(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, r30, 0x318
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8012b428
    lwz     r6, 0x68(r31)
    addi    r5, r3, 0x0
    addi    r4, r30, 0x33c
    lwz     r3, 0x4(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x8012b428:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl __dt__6TKukkuFv
__dt__6TKukkuFv: # 0x8012b444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012b4ac
    lis     r3, 0x803c
    subi    r3, r3, 0x1c58
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8012b49c
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8012b49c:
    extsh.  r0, r31
    ble-    branch_0x8012b4ac
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012b4ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TKukkuManagerFv
__dt__13TKukkuManagerFv: # 0x8012b4c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012b520
    lis     r3, 0x803c
    subi    r0, r3, 0x1ab0
    stw     r0, 0x0(r30)
    beq-    branch_0x8012b510
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8012b510:
    extsh.  r0, r31
    ble-    branch_0x8012b520
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012b520:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TKukkuBallFv
__dt__10TKukkuBallFv: # 0x8012b53c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012b5a4
    lis     r3, 0x803c
    subi    r3, r3, 0x1a58
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8012b594
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8012b594:
    extsh.  r0, r31
    ble-    branch_0x8012b5a4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012b5a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_Kukku_cpp
__sinit_Kukku_cpp: # 0x8012b5c0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x3580
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b608
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8012b608:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b638
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8012b638:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b668
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8012b668:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b698
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8012b698:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b6c8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8012b6c8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b6f8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8012b6f8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b728
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8012b728:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b758
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8012b758:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b788
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8012b788:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b7b8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8012b7b8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b7e8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8012b7e8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b818
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8012b818:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b848
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8012b848:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b878
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8012b878:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8012b8a8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8012b8a8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__10TKukkuBallFv
_32___dt__10TKukkuBallFv: # 0x8012b8bc
    subi    r3, r3, 0x20
    b       __dt__10TKukkuBallFv


.globl _32___dt__6TKukkuFv
_32___dt__6TKukkuFv: # 0x8012b8c4
    subi    r3, r3, 0x20
    b       __dt__6TKukkuFv

