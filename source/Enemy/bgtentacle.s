
.globl __dt__11TBGTentacleFv
__dt__11TBGTentacleFv: # 0x800fff38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fff90
    lis     r3, __vvt__11TBGTentacle@ha
    addi    r0, r3, __vvt__11TBGTentacle@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800fff80
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800fff80:
    extsh.  r0, r31
    ble-    branch_0x800fff90
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fff90:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__11TBGTentacleFUlPQ26JDrama9TGraphics
perform__11TBGTentacleFUlPQ26JDrama9TGraphics: # 0x800fffac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stmw    r26, 0xf0(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lwz     r3, 0x3c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    clrlwi. r27, r29, 31
    beq-    branch_0x80100078
    lwz     r3, 0x90(r28)
    lfs     f1, -0x56d8(r2)
    lfsu    f2, 0x6c(r3)
    lfs     f0, -0x56d4(r2)
    fadds   f2, f1, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x80100004
    fsubs   f2, f2, f0
branch_0x80100004:
    stfs    f2, 0x0(r3)
    lwz     r3, 0x94(r28)
    lfsu    f2, 0x6c(r3)
    fadds   f2, f1, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x80100020
    fsubs   f2, f2, f0
branch_0x80100020:
    stfs    f2, 0x0(r3)
    lwz     r3, 0x98(r28)
    lfsu    f2, 0x6c(r3)
    fadds   f2, f1, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x8010003c
    fsubs   f2, f2, f0
branch_0x8010003c:
    stfs    f2, 0x0(r3)
    lwz     r3, 0x9c(r28)
    lfsu    f2, 0x6c(r3)
    fadds   f2, f1, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x80100058
    fsubs   f2, f2, f0
branch_0x80100058:
    stfs    f2, 0x0(r3)
    lwz     r3, 0xa0(r28)
    lfsu    f2, 0x6c(r3)
    fadds   f2, f1, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x80100074
    fsubs   f2, f2, f0
branch_0x80100074:
    stfs    f2, 0x0(r3)
branch_0x80100078:
    li      r26, 0x0
    li      r31, 0x0
branch_0x80100080:
    addi    r0, r31, 0x90
    lwzx    r3, r28, r0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
    cmpwi   r26, 0x5
    addi    r31, r31, 0x4
    blt+    branch_0x80100080
    rlwinm. r31, r29, 0, 30, 30
    beq-    branch_0x801000c0
    mr      r3, r28
    bl      calcAttackGuideAnm__11TBGTentacleFv
branch_0x801000c0:
    cmplwi  r27, 0x0
    beq-    branch_0x801001e0
    mr      r3, r28
    bl      decideAtkColExists__11TBGTentacleFv
    mr      r3, r28
    bl      moveConstraint__11TBGTentacleFv
    mr      r3, r28
    bl      moveNode__11TBGTentacleFv
    mr      r3, r28
    bl      decideOwnState__11TBGTentacleFv
    lwz     r3, 0x38(r28)
    lwz     r4, 0x1c(r28)
    lwz     r0, 0xf4(r3)
    cmpw    r4, r0
    blt-    branch_0x80100144
    lwz     r3, 0x34(r28)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x80100118
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0xa
    bl      fireStreamingMovie__12TMarDirectorFUc
branch_0x80100118:
    lwz     r3, 0x34(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x310(r3)
    mr      r3, r28
    lwz     r5, 0x34(r28)
    li      r4, 0x4
    stw     r0, 0x1a8(r5)
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80100144:
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x4
    beq-    branch_0x80100160
    bge-    branch_0x801001d4
    cmpwi   r0, 0x3
    bge-    branch_0x8010019c
    b       branch_0x801001d4

branch_0x80100160:
    lwz     r4, 0x3c(r28)
    lwz     r0, 0x68(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801001d4
    lwz     r3, 0x14(r28)
    srawi   r0, r3, 2
    addze   r0, r0
    slwi    r0, r0, 2
    subfc.  r0, r0, r3
    bne-    branch_0x801001d4
    lwz     r3, 0x34(r28)
    addi    r5, r4, 0x10
    li      r4, 0x1
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
    b       branch_0x801001d4

branch_0x8010019c:
    lwz     r4, 0x3c(r28)
    lwz     r0, 0x68(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801001d4
    lwz     r3, 0x14(r28)
    srawi   r0, r3, 4
    addze   r0, r0
    slwi    r0, r0, 4
    subfc.  r0, r0, r3
    bne-    branch_0x801001d4
    lwz     r3, 0x34(r28)
    addi    r5, r4, 0x10
    li      r4, 0x0
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x801001d4:
    lwz     r3, 0x14(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r28)
branch_0x801001e0:
    cmplwi  r31, 0x0
    beq-    branch_0x80100210
    lwz     r4, 0x30(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x801001f8
    lwz     r4, 0x0(r4)
branch_0x801001f8:
    lwz     r3, 0x2c(r28)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    stw     r4, 0x58(r3)
branch_0x80100210:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x80100288
    lwz     r5, 0x34(r28)
    lwz     r3, 0x2c(r28)
    lwz     r4, 0xc4(r5)
    addi    r5, r5, 0x10
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x4
    bne-    branch_0x80100288
    lwz     r3, 0x34(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lwz     r4, 0x14(r28)
    addi    r0, r3, -0xf0
    cmpw    r4, r0
    blt-    branch_0x80100288
    lis     r3, unk_2aaaaaab@ha
    addi    r0, r3, unk_2aaaaaab@l
    mulhw   r3, r0, r4
    srwi    r0, r3, 31
    add     r0, r3, r0
    mulli   r0, r0, 0x6
    subf    r0, r0, r4
    cmpwi   r0, 0x3
    blt-    branch_0x80100288
    rlwinm  r29, r29, 0, 23, 21
branch_0x80100288:
    clrlwi. r0, r29, 31
    beq-    branch_0x801002fc
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x4
    bne-    branch_0x801002fc
    lwz     r3, 0x34(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lwz     r4, 0x14(r28)
    addi    r0, r3, -0xf0
    cmpw    r4, r0
    bge-    branch_0x801002fc
    lwz     r5, 0x3c(r28)
    li      r4, 0x206b
    lwz     r3, R13Off_m0x6044(r13)
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801002fc
    addi    r4, r31, 0x0
    li      r3, 0x206b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801002fc:
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x6
    beq-    branch_0x80100318
    lwz     r3, 0x2c(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80100318:
    lmw     r26, 0xf0(sp)
    lwz     r0, 0x10c(sp)
    addi    sp, sp, 0x108
    mtlr    r0
    blr


.globl resetAllNodes__11TBGTentacleFRCQ29JGeometry8TVec3_f_
resetAllNodes__11TBGTentacleFRCQ29JGeometry8TVec3_f_: # 0x8010032c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r4
    stw     r30, 0x88(sp)
    mr      r30, r3
    li      r3, 0x0
    lwz     r4, 0x0(r4)
    lwz     r5, 0x4(r31)
    lfs     f0, -0x56d0(r2)
    stw     r4, 0x78(sp)
    li      r4, 0x0
    stw     r5, 0x7c(sp)
    lwz     r5, 0x8(r31)
    stfs    f0, 0x74(sp)
    stfs    f0, 0x70(sp)
    stw     r5, 0x80(sp)
    stfs    f0, 0x6c(sp)
    lwz     r5, 0x24(r30)
    stw     r0, 0x24(r5)
    b       branch_0x8010041c

branch_0x80100388:
    lwz     r6, 0x24(r30)
    lwz     r5, 0x78(sp)
    lwz     r0, 0x7c(sp)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x80(sp)
    stw     r0, 0x8(r6)
    lwz     r6, 0x24(r30)
    lwz     r5, 0x78(sp)
    lwz     r0, 0x7c(sp)
    add     r6, r6, r4
    stw     r5, 0x18(r6)
    stw     r0, 0x1c(r6)
    lwz     r0, 0x80(sp)
    stw     r0, 0x20(r6)
    lwz     r6, 0x24(r30)
    lwz     r5, 0x6c(sp)
    lwz     r0, 0x70(sp)
    add     r6, r6, r4
    stw     r5, 0xc(r6)
    stw     r0, 0x10(r6)
    lwz     r0, 0x74(sp)
    stw     r0, 0x14(r6)
    lwz     r0, 0x10(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x80100400
    lwz     r5, 0x38(r30)
    lfs     f1, 0x11c(r5)
    b       branch_0x80100408

branch_0x80100400:
    lwz     r5, 0x38(r30)
    lfs     f1, 0x18(r5)
branch_0x80100408:
    lfs     f0, 0x7c(sp)
    addi    r3, r3, 0x1
    addi    r4, r4, 0x28
    fadds   f0, f0, f1
    stfs    f0, 0x7c(sp)
branch_0x8010041c:
    lwz     r0, 0x20(r30)
    cmpw    r3, r0
    blt+    branch_0x80100388
    lfs     f0, -0x56cc(r2)
    li      r4, 0x14
    stfs    f0, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    lwz     r5, 0x2c(r30)
    lwz     r3, 0x60(sp)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x64(sp)
    stw     r3, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x68(sp)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x80(r30)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x80(r30)
    lfs     f1, 0x0(r31)
    lwz     r3, 0x4(r3)
    lfs     f2, 0x4(r31)
    lfs     f3, 0x8(r31)
    addi    r3, r3, 0x20
    bl      PSMTXTrans
    lwz     r3, 0x80(r30)
    bl      calc__6MActorFv
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl calcAttackGuideAnm__11TBGTentacleFv
calcAttackGuideAnm__11TBGTentacleFv: # 0x801004a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stfd    f31, 0x148(sp)
    stfd    f30, 0x140(sp)
    stw     r31, 0x13c(sp)
    stw     r30, 0x138(sp)
    mr      r30, r3
    lwz     r0, 0x10(r3)
    lis     r3, unk_80383200@h
    addi    r31, r3, unk_80383200@l
    cmpwi   r0, 0x1
    beq-    branch_0x801004e4
    cmpwi   r0, 0x8
    beq-    branch_0x801004e4
    cmpwi   r0, 0xa
    bne-    branch_0x80100900
branch_0x801004e4:
    lwz     r6, 0x24(r30)
    addi    r3, sp, 0x9c
    addi    r4, sp, 0x114
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x120(sp)
    stw     r0, 0x124(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x128(sp)
    lwz     r5, 0x84(r30)
    lwz     r0, 0x88(r30)
    lfs     f0, 0x120(sp)
    stw     r5, 0x114(sp)
    lfs     f30, 0x124(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0x8c(r30)
    stw     r0, 0x11c(sp)
    lfs     f1, 0x114(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x114(sp)
    lfs     f0, 0x118(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x118(sp)
    lfs     f0, 0x11c(sp)
    lfs     f31, 0x128(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x11c(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0x10(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x80100580
    lfs     f1, -0x56cc(r2)
    b       branch_0x80100658

branch_0x80100580:
    lwz     r3, 0x80(r30)
    li      r4, 0x14
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x801005f8
    lfs     f1, 0x114(sp)
    lfs     f0, 0x118(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x11c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x56d0(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801005c8
    b       branch_0x801005ec

branch_0x801005c8:
    frsqrte f3, f4
    lfs     f2, -0x56c8(r2)
    lfs     f0, -0x56c4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801005ec:
    lfs     f0, -0x56c0(r2)
    fmuls   f1, f0, f4
    b       branch_0x80100658

branch_0x801005f8:
    lfs     f1, 0x114(sp)
    lfs     f0, 0x118(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x11c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x56d0(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x8010062c
    b       branch_0x80100650

branch_0x8010062c:
    frsqrte f3, f4
    lfs     f2, -0x56c8(r2)
    lfs     f0, -0x56c4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80100650:
    lfs     f0, -0x56bc(r2)
    fmuls   f1, f0, f4
branch_0x80100658:
    lfs     f0, -0x56b8(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80100668
    fmr     f1, f0
branch_0x80100668:
    stfs    f1, 0x8(sp)
    fmr     f2, f30
    fmr     f3, f31
    addi    r3, sp, 0xd8
    lfs     f7, -0x56cc(r2)
    lfs     f1, 0x120(sp)
    fmr     f8, f7
    lfs     f4, 0x108(sp)
    lfs     f5, 0x10c(sp)
    lfs     f6, 0x110(sp)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r0, 0x10(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x80100724
    lwz     r0, 0x18(r30)
    lfs     f1, -0x56b4(r2)
    slwi    r3, r0, 2
    lwz     r0, R13Off_m0x5eac(r13)
    add     r3, r31, r3
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f0, 0x180(r3)
    lwz     r3, R13Off_m0x5ea4(r13)
    fmuls   f2, f1, f0
    lfs     f1, -0x56d0(r2)
    lfs     f0, -0x56cc(r2)
    fctiwz  f2, f2
    stfd    f2, 0x130(sp)
    lwz     r4, 0x134(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    lfsx    f4, r3, r0
    fneg    f2, f3
    stfs    f4, 0xa8(sp)
    stfs    f2, 0xac(sp)
    stfs    f1, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    stfs    f3, 0xb8(sp)
    stfs    f4, 0xbc(sp)
    stfs    f1, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f1, 0xc8(sp)
    stfs    f1, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f1, 0xd4(sp)
    b       branch_0x801008cc

branch_0x80100724:
    lwz     r3, 0x34(r30)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8010073c
    cmpwi   r0, 0x1
    bne-    branch_0x801007c0
branch_0x8010073c:
    lwz     r0, 0x18(r30)
    lfs     f1, -0x56b4(r2)
    slwi    r3, r0, 2
    lwz     r0, R13Off_m0x5eac(r13)
    add     r3, r31, r3
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f0, 0x190(r3)
    lwz     r3, R13Off_m0x5ea4(r13)
    fmuls   f2, f1, f0
    lfs     f1, -0x56d0(r2)
    lfs     f0, -0x56cc(r2)
    fctiwz  f2, f2
    stfd    f2, 0x130(sp)
    lwz     r4, 0x134(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    lfsx    f4, r3, r0
    fneg    f2, f3
    stfs    f4, 0xa8(sp)
    stfs    f2, 0xac(sp)
    stfs    f1, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    stfs    f3, 0xb8(sp)
    stfs    f4, 0xbc(sp)
    stfs    f1, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f1, 0xc8(sp)
    stfs    f1, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f1, 0xd4(sp)
    b       branch_0x801008cc

branch_0x801007c0:
    cmpwi   r0, 0x4
    bne-    branch_0x8010084c
    lwz     r0, 0x18(r30)
    lfs     f1, -0x56b4(r2)
    slwi    r3, r0, 2
    lwz     r0, R13Off_m0x5eac(r13)
    add     r3, r31, r3
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f0, 0x1a0(r3)
    lwz     r3, R13Off_m0x5ea4(r13)
    fmuls   f2, f1, f0
    lfs     f1, -0x56d0(r2)
    lfs     f0, -0x56cc(r2)
    fctiwz  f2, f2
    stfd    f2, 0x130(sp)
    lwz     r4, 0x134(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    lfsx    f4, r3, r0
    fneg    f2, f3
    stfs    f4, 0xa8(sp)
    stfs    f2, 0xac(sp)
    stfs    f1, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    stfs    f3, 0xb8(sp)
    stfs    f4, 0xbc(sp)
    stfs    f1, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f1, 0xc8(sp)
    stfs    f1, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f1, 0xd4(sp)
    b       branch_0x801008cc

branch_0x8010084c:
    lwz     r0, 0x18(r30)
    lfs     f1, -0x56b4(r2)
    slwi    r3, r0, 2
    lwz     r0, R13Off_m0x5eac(r13)
    add     r3, r31, r3
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f0, 0x1b0(r3)
    lwz     r3, R13Off_m0x5ea4(r13)
    fmuls   f2, f1, f0
    lfs     f1, -0x56d0(r2)
    lfs     f0, -0x56cc(r2)
    fctiwz  f2, f2
    stfd    f2, 0x130(sp)
    lwz     r4, 0x134(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    lfsx    f4, r3, r0
    fneg    f2, f3
    stfs    f4, 0xa8(sp)
    stfs    f2, 0xac(sp)
    stfs    f1, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    stfs    f3, 0xb8(sp)
    stfs    f4, 0xbc(sp)
    stfs    f1, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f1, 0xc8(sp)
    stfs    f1, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f1, 0xd4(sp)
branch_0x801008cc:
    addi    r3, sp, 0xd8
    addi    r5, r3, 0x0
    addi    r4, sp, 0xa8
    bl      PSMTXConcat
    lwz     r4, 0x80(r30)
    addi    r3, sp, 0xd8
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x80(r30)
    bl      calcAnm__6MActorFv
    mr      r3, r30
    bl      calcAtkParticleAndSE__11TBGTentacleFv
branch_0x80100900:
    lwz     r0, 0x154(sp)
    lfd     f31, 0x148(sp)
    lfd     f30, 0x140(sp)
    mtlr    r0
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    addi    sp, sp, 0x150
    blr


.globl decideAtkColExists__11TBGTentacleFv
decideAtkColExists__11TBGTentacleFv: # 0x80100920
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r3, 0x3c(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r3)
    lwz     r3, 0x80(r30)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x10(r30)
    li      r31, 0x0
    lfs     f31, 0x10(r3)
    cmpwi   r0, 0xa
    bne-    branch_0x80100974
    li      r31, 0x1
    b       branch_0x80100a98

branch_0x80100974:
    lwz     r3, 0x34(r30)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x8010098c
    li      r31, 0x1
    b       branch_0x80100a98

branch_0x8010098c:
    lwz     r3, 0x80(r30)
    li      r4, 0x15
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x801009d0
    lfs     f0, -0x56b0(r2)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x801009c8
    lfs     f0, -0x56ac(r2)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x801009c8
    li      r31, 0x1
    b       branch_0x80100a98

branch_0x801009c8:
    li      r31, 0x0
    b       branch_0x80100a98

branch_0x801009d0:
    lwz     r3, 0x80(r30)
    li      r4, 0x17
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100a14
    lfs     f0, -0x56b0(r2)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80100a0c
    lfs     f0, -0x56a8(r2)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80100a0c
    li      r31, 0x1
    b       branch_0x80100a98

branch_0x80100a0c:
    li      r31, 0x0
    b       branch_0x80100a98

branch_0x80100a14:
    lwz     r3, 0x80(r30)
    li      r4, 0x14
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100a58
    lfs     f0, -0x56b0(r2)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80100a50
    lfs     f0, -0x56ac(r2)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80100a50
    li      r31, 0x1
    b       branch_0x80100a98

branch_0x80100a50:
    li      r31, 0x0
    b       branch_0x80100a98

branch_0x80100a58:
    lwz     r3, 0x80(r30)
    li      r4, 0x18
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100a98
    lfs     f0, -0x56a4(r2)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80100a94
    lfs     f0, -0x56a0(r2)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80100a94
    li      r31, 0x1
    b       branch_0x80100a98

branch_0x80100a94:
    li      r31, 0x0
branch_0x80100a98:
    cmpwi   r31, 0x0
    beq-    branch_0x80100ab4
    lwz     r3, 0x3c(r30)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r3)
    b       branch_0x80100ac4

branch_0x80100ab4:
    lwz     r3, 0x3c(r30)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r3)
branch_0x80100ac4:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl calcAtkParticleAndSE__11TBGTentacleFv
calcAtkParticleAndSE__11TBGTentacleFv: # 0x80100ae0
    mflr    r0
    li      r4, 0x14
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stw     r31, 0xcc(sp)
    mr      r31, r3
    stw     r30, 0xc8(sp)
    lwz     r3, 0x80(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80100b24
    lwz     r3, 0x80(r31)
    li      r4, 0x17
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100cc4
branch_0x80100b24:
    lwz     r0, 0x4c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80100cc4
    lwz     r3, 0x80(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f31, 0x10(r3)
    li      r4, 0x14
    lwz     r3, 0x80(r31)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100b74
    lfs     f0, -0x569c(r2)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80100b74
    lfs     f0, -0x5698(r2)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    beq-    branch_0x80100ba8
branch_0x80100b74:
    lwz     r3, 0x80(r31)
    li      r4, 0x17
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100cc4
    lfs     f0, -0x56b0(r2)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80100cc4
    lfs     f0, -0x56a8(r2)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80100cc4
branch_0x80100ba8:
    lwz     r3, 0x20(r31)
    addi    r4, sp, 0xac
    lwz     r5, 0x24(r31)
    addi    r0, r3, -0x1
    lfs     f2, -0x5694(r2)
    mulli   r0, r0, 0x28
    lwz     r3, R13Off_m0x6328(r13)
    add     r6, r5, r0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xb8(sp)
    lfs     f0, 0xb4(sp)
    lfs     f1, 0xb0(sp)
    fadds   f2, f2, f0
    lfs     f3, 0xb8(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x5690(r2)
    lfs     f2, 0xb4(sp)
    fadds   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x80100cc4
    lfs     f0, -0x568c(r2)
    addi    r5, sp, 0xb0
    li      r4, 0x8c
    fadds   f0, f0, f1
    li      r6, 0x0
    li      r7, 0x0
    stfs    f0, 0xb4(sp)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, sp, 0xb0
    li      r4, 0x8d
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, sp, 0xb0
    li      r4, 0x8e
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, sp, 0xb0
    li      r4, 0x8f
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x1
    stw     r0, 0x4c(r31)
    li      r4, 0x286f
    lwz     r5, 0x3c(r31)
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80100cb4
    addi    r4, r30, 0x0
    li      r3, 0x286f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80100cb4:
    lwz     r3, 0x34(r31)
    li      r4, 0x2
    addi    r5, r3, 0x10
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x80100cc4:
    lwz     r3, 0x34(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x2d4(r3)
    li      r4, 0x17
    lwz     r3, 0x80(r31)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100cf8
    li      r30, 0x7
    b       branch_0x80100d10

branch_0x80100cf8:
    lwz     r3, 0x34(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x2c0(r3)
branch_0x80100d10:
    lwz     r3, 0x80(r31)
    addi    r4, r31, 0x50
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x90
    bl      PSMTXCopy
    fmr     f1, f31
    addi    r3, r31, 0x50
    fmr     f2, f31
    mr      r4, r3
    fmr     f3, f31
    bl      PSMTXScaleApply
    lwz     r3, 0x2c(r31)
    mulli   r0, r30, 0x30
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x5c(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x6c(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x7c(r31)
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0xa
    beq-    branch_0x80100e78
    cmpwi   r0, 0x8
    beq-    branch_0x80100e78
    lwz     r3, 0x80(r31)
    li      r4, 0x18
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100dc4
    lwz     r3, 0x80(r31)
    lfs     f1, -0x5688(r2)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x80100e78
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x50
    li      r4, 0x92
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x80100e78

branch_0x80100dc4:
    lwz     r3, 0x80(r31)
    li      r4, 0x14
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100e08
    lwz     r3, 0x80(r31)
    lfs     f1, -0x5688(r2)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x80100e78
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x50
    li      r4, 0x90
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x80100e78

branch_0x80100e08:
    lwz     r3, 0x80(r31)
    li      r4, 0x17
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80100e4c
    lwz     r3, 0x80(r31)
    lfs     f1, -0x5684(r2)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x80100e78
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x50
    li      r4, 0x90
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x80100e78

branch_0x80100e4c:
    lwz     r3, 0x80(r31)
    lfs     f1, -0x5680(r2)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x80100e78
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x50
    li      r4, 0x91
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80100e78:
    lwz     r5, 0x38(r31)
    li      r4, 0x0
    lwz     r3, 0x80(r31)
    lfs     f31, 0x180(r5)
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x5678(r2)
    xoris   r4, r3, 0x8000
    lwz     r3, 0x80(r31)
    stw     r4, 0xc4(sp)
    stw     r0, 0xc0(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f0, f0, f1
    fsubs   f1, f0, f31
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x80100f54
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0xa
    beq-    branch_0x80100f54
    lwz     r5, 0x3c(r31)
    li      r4, 0x286e
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80100f04
    addi    r4, r30, 0x0
    li      r3, 0x286e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80100f04:
    lwz     r3, 0x34(r31)
    lhau    r0, 0x1ac(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80100f54
    li      r0, 0xf0
    sth     r0, 0x0(r3)
    li      r4, 0x2902
    lwz     r5, 0x34(r31)
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80100f54
    addi    r4, r30, 0x0
    li      r3, 0x2902
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80100f54:
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lwz     r31, 0xcc(sp)
    mtlr    r0
    lwz     r30, 0xc8(sp)
    addi    sp, sp, 0xd8
    blr


.globl decideOwnState__11TBGTentacleFv
decideOwnState__11TBGTentacleFv: # 0x80100f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0xa
    bgt-    branch_0x80101240
    lis     r3, unk_803bbec0@ha
    addi    r3, r3, unk_803bbec0@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80100fac:
    lwz     r3, 0x80(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80101240
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      changeStateAndFixNodes__11TBGTentacleFi
    b       branch_0x80101240

branch_0x80100fd4:
    lwz     r3, 0x20(r31)
    lwz     r4, 0x24(r31)
    addi    r0, r3, -0x1
    mulli   r0, r0, 0x28
    add     r4, r4, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xb0(sp)
    lwz     r3, 0x34(r31)
    lfs     f1, 0xa8(sp)
    lfsu    f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f2, -0x56d0(r2)
    lfs     f1, 0xb0(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80101064
    lfs     f0, 0xa8(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x8010105c
    lfs     f0, -0x5670(r2)
    b       branch_0x801010e0

branch_0x8010105c:
    lfs     f0, -0x566c(r2)
    b       branch_0x801010e0

branch_0x80101064:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x801010a4
    lfs     f2, 0xa8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5678(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5668(r2)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    stw     r0, 0xb8(sp)
    lfd     f1, 0xb8(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x801010e0

branch_0x801010a4:
    fneg    f1, f1
    lfs     f2, 0xa8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5678(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5668(r2)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5664(r2)
    stw     r0, 0xb8(sp)
    lfd     f2, 0xb8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x801010e0:
    lwz     r3, 0x34(r31)
    fmr     f1, f0
    lfs     f0, -0x5664(r2)
    lfs     f31, 0x34(r3)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_80101258
    fsubs   f1, f31, f1
    lfs     f0, -0x5660(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8010111c
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x8010111c:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x5
    bne-    branch_0x80101178
    lwz     r3, 0x34(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x14(r31)
    lwz     r0, 0x144(r3)
    cmpw    r4, r0
    blt-    branch_0x80101178
    lwz     r3, 0x34(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x8010116c
    addi    r3, r31, 0x0
    li      r4, 0x9
    bl      changeStateAndFixNodes__11TBGTentacleFi
    b       branch_0x80101178

branch_0x8010116c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80101178:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x80101240
    lwz     r3, 0x34(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x14(r31)
    lwz     r0, 0x130(r3)
    cmpw    r4, r0
    blt-    branch_0x80101240
    lwz     r3, 0x34(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x801011c8
    addi    r3, r31, 0x0
    li      r4, 0x9
    bl      changeStateAndFixNodes__11TBGTentacleFi
    b       branch_0x80101240

branch_0x801011c8:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
    b       branch_0x80101240

branch_0x801011d8:
    lwz     r3, 0x34(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x11c(r3)
    lwz     r4, 0x14(r31)
    cmpw    r4, r3
    blt-    branch_0x8010120c
    addi    r3, r31, 0x0
    li      r4, 0x6
    bl      changeStateAndFixNodes__11TBGTentacleFi
    b       branch_0x80101240

branch_0x8010120c:
    addi    r0, r3, -0xf0
    cmpw    r4, r0
    blt-    branch_0x80101240
    lwz     r4, 0x3c(r31)
    lwz     r0, 0x68(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80101240
    mr      r3, r0
    lwz     r12, 0x0(r3)
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80101240:
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl MsWrap_f___Ffff_80101258
MsWrap_f___Ffff_80101258: # 0x80101258
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x80101294
    fmr     f1, f2
    blr

branch_0x8010126c:
    b       branch_0x80101274

branch_0x80101270:
    fsubs   f1, f1, f0
branch_0x80101274:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x80101270
    b       branch_0x80101288

branch_0x80101284:
    fadds   f1, f1, f0
branch_0x80101288:
    fcmpo   cr0, f1, f2
    blt+    branch_0x80101284
    blr

branch_0x80101294:
    fsubs   f0, f3, f2
    b       branch_0x80101274

branch_0x8010129c:
    blr


.globl moveConstraint__11TBGTentacleFv
moveConstraint__11TBGTentacleFv: # 0x801012a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c0(sp)
    stw     r31, 0x1bc(sp)
    mr      r31, r3
    stw     r30, 0x1b8(sp)
    stw     r29, 0x1b4(sp)
    stw     r28, 0x1b0(sp)
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0xa
    bgt-    branch_0x8010170c
    lis     r3, unk_803bbeec@ha
    addi    r3, r3, unk_803bbeec@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x801012e4:
    li      r7, 0x0
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x80101348

branch_0x801012f4:
    lwz     r5, 0x80(r31)
    addi    r7, r7, 0x1
    lwz     r5, 0x4(r5)
    lwz     r0, 0x58(r5)
    add     r5, r0, r4
    lfs     f0, 0xc(r5)
    addi    r4, r4, 0x30
    stfs    f0, 0x1a0(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x1a4(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x1a8(sp)
    lwz     r0, 0x24(r31)
    lwz     r5, 0x1a0(sp)
    add     r6, r0, r3
    lwz     r0, 0x1a4(sp)
    addi    r3, r3, 0x28
    stw     r5, 0x18(r6)
    stw     r0, 0x1c(r6)
    lwz     r0, 0x1a8(sp)
    stw     r0, 0x20(r6)
branch_0x80101348:
    lwz     r0, 0x20(r31)
    cmpw    r7, r0
    blt+    branch_0x801012f4
    lwz     r3, 0x34(r31)
    bl      beakHeld__10TBossGessoCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80101380
    lwz     r3, 0x34(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xf4(r3)
    b       branch_0x801013bc

branch_0x80101380:
    lwz     r3, 0x34(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x801013a8
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xcc(r3)
    b       branch_0x801013bc

branch_0x801013a8:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xe0(r3)
branch_0x801013bc:
    lwz     r0, 0x14(r31)
    cmpw    r0, r3
    bge-    branch_0x8010170c
    lwz     r3, 0x34(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8010170c
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x84(r31)
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x8c(r31)
    b       branch_0x8010170c

branch_0x801013f4:
    li      r7, 0x0
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x80101458

branch_0x80101404:
    lwz     r5, 0x80(r31)
    addi    r7, r7, 0x1
    lwz     r5, 0x4(r5)
    lwz     r0, 0x58(r5)
    add     r5, r0, r4
    lfs     f0, 0xc(r5)
    addi    r4, r4, 0x30
    stfs    f0, 0x190(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x194(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x198(sp)
    lwz     r0, 0x24(r31)
    lwz     r5, 0x190(sp)
    add     r6, r0, r3
    lwz     r0, 0x194(sp)
    addi    r3, r3, 0x28
    stw     r5, 0x18(r6)
    stw     r0, 0x1c(r6)
    lwz     r0, 0x198(sp)
    stw     r0, 0x20(r6)
branch_0x80101458:
    lwz     r0, 0x20(r31)
    cmpw    r7, r0
    blt+    branch_0x80101404
    b       branch_0x8010170c

branch_0x80101468:
    lwz     r3, 0x34(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x6
    beq-    branch_0x8010170c
    lwz     r5, 0x34(r31)
    lwz     r0, 0xf0(r5)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80101510
    lwz     r4, 0x10(r5)
    li      r6, 0x0
    lwz     r0, 0x14(r5)
    li      r3, 0x0
    stw     r4, 0x184(sp)
    stw     r0, 0x188(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x18c(sp)
    b       branch_0x80101500

branch_0x801014ac:
    lwz     r5, 0x24(r31)
    lwz     r4, 0x184(sp)
    lwz     r0, 0x188(sp)
    add     r5, r5, r3
    stw     r4, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x18c(sp)
    stw     r0, 0x20(r5)
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x801014e4
    lwz     r4, 0x38(r31)
    lfs     f1, 0x11c(r4)
    b       branch_0x801014ec

branch_0x801014e4:
    lwz     r4, 0x38(r31)
    lfs     f1, 0x18(r4)
branch_0x801014ec:
    lfs     f0, 0x188(sp)
    addi    r6, r6, 0x1
    addi    r3, r3, 0x28
    fadds   f0, f0, f1
    stfs    f0, 0x188(sp)
branch_0x80101500:
    lwz     r0, 0x20(r31)
    cmpw    r6, r0
    blt+    branch_0x801014ac
    b       branch_0x8010170c

branch_0x80101510:
    lwz     r4, 0x18(r31)
    lis     r3, jntidx_3419@ha
    addi    r0, r3, jntidx_3419@l
    slwi    r3, r4, 2
    add     r3, r0, r3
    lwz     r29, 0x0(r3)
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x8010158c

branch_0x80101534:
    lwz     r3, 0x34(r31)
    bl      getModel__10TLiveActorCFv
    add     r0, r28, r29
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    addi    r28, r28, 0x1
    stfs    f0, 0x174(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x178(sp)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x17c(sp)
    lwz     r0, 0x24(r31)
    lwz     r3, 0x174(sp)
    add     r4, r0, r30
    lwz     r0, 0x178(sp)
    addi    r30, r30, 0x28
    stw     r3, 0x18(r4)
    stw     r0, 0x1c(r4)
    lwz     r0, 0x17c(sp)
    stw     r0, 0x20(r4)
branch_0x8010158c:
    lwz     r0, 0x20(r31)
    cmpw    r28, r0
    blt+    branch_0x80101534
    b       branch_0x8010170c

branch_0x8010159c:
    lwz     r6, 0x24(r31)
    li      r7, 0x1
    li      r3, 0x28
    lwz     r4, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r4, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x14(sp)
    lwz     r5, 0xc(sp)
    lwz     r4, 0x10(sp)
    stw     r5, 0x168(sp)
    lwz     r0, 0x14(sp)
    stw     r4, 0x16c(sp)
    stw     r0, 0x170(sp)
    stw     r5, 0x18(r6)
    stw     r4, 0x1c(r6)
    lwz     r0, 0x14(sp)
    stw     r0, 0x20(r6)
    lfs     f2, -0x565c(r2)
    lfs     f1, -0x5658(r2)
    b       branch_0x80101670

branch_0x801015f4:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x8010160c
    lwz     r4, 0x38(r31)
    lfs     f3, 0x11c(r4)
    b       branch_0x80101614

branch_0x8010160c:
    lwz     r4, 0x38(r31)
    lfs     f3, 0x18(r4)
branch_0x80101614:
    lfs     f0, 0x168(sp)
    cmpwi   r0, 0x4
    fnmsubs  f0, f2, f3, f0
    stfs    f0, 0x168(sp)
    bne-    branch_0x80101634
    lwz     r4, 0x38(r31)
    lfs     f3, 0x11c(r4)
    b       branch_0x8010163c

branch_0x80101634:
    lwz     r4, 0x38(r31)
    lfs     f3, 0x18(r4)
branch_0x8010163c:
    lfs     f0, 0x16c(sp)
    addi    r7, r7, 0x1
    fnmsubs  f0, f1, f3, f0
    stfs    f0, 0x16c(sp)
    lwz     r0, 0x24(r31)
    lwz     r4, 0x168(sp)
    add     r5, r0, r3
    lwz     r0, 0x16c(sp)
    addi    r3, r3, 0x28
    stw     r4, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x170(sp)
    stw     r0, 0x20(r5)
branch_0x80101670:
    lwz     r0, 0x20(r31)
    cmpw    r7, r0
    blt+    branch_0x801015f4
    b       branch_0x8010170c

branch_0x80101680:
    lwz     r5, 0x34(r31)
    li      r6, 0x0
    lfs     f1, -0x56c8(r2)
    li      r3, 0x0
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x15c(sp)
    stw     r0, 0x160(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x164(sp)
    b       branch_0x80101700

branch_0x801016ac:
    lwz     r5, 0x24(r31)
    lwz     r4, 0x15c(sp)
    lwz     r0, 0x160(sp)
    add     r5, r5, r3
    stw     r4, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x164(sp)
    stw     r0, 0x20(r5)
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x801016e4
    lwz     r4, 0x38(r31)
    lfs     f2, 0x11c(r4)
    b       branch_0x801016ec

branch_0x801016e4:
    lwz     r4, 0x38(r31)
    lfs     f2, 0x18(r4)
branch_0x801016ec:
    lfs     f0, 0x160(sp)
    addi    r6, r6, 0x1
    addi    r3, r3, 0x28
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x160(sp)
branch_0x80101700:
    lwz     r0, 0x20(r31)
    cmpw    r6, r0
    blt+    branch_0x801016ac
branch_0x8010170c:
    lwz     r0, 0x1c4(sp)
    lwz     r31, 0x1bc(sp)
    lwz     r30, 0x1b8(sp)
    mtlr    r0
    lwz     r29, 0x1b4(sp)
    lwz     r28, 0x1b0(sp)
    addi    sp, sp, 0x1c0
    blr


.globl moveNode__11TBGTentacleFv
moveNode__11TBGTentacleFv: # 0x8010172c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x278(sp)
    stfd    f31, 0x270(sp)
    stfd    f30, 0x268(sp)
    stfd    f29, 0x260(sp)
    stfd    f28, 0x258(sp)
    stfd    f27, 0x250(sp)
    stfd    f26, 0x248(sp)
    stfd    f25, 0x240(sp)
    stfd    f24, 0x238(sp)
    stfd    f23, 0x230(sp)
    stfd    f22, 0x228(sp)
    stw     r31, 0x224(sp)
    stw     r30, 0x220(sp)
    stw     r29, 0x21c(sp)
    mr      r29, r3
    stw     r28, 0x218(sp)
    lwz     r0, 0x10(r3)
    lwz     r4, 0x38(r3)
    cmpwi   r0, 0x4
    lfs     f4, 0xb8(r4)
    lfs     f0, 0xa4(r4)
    bne-    branch_0x8010181c
    lfs     f1, 0xe0(r4)
    lfs     f3, 0xcc(r4)
    fmuls   f4, f4, f1
    lfs     f2, 0x40(r29)
    fmuls   f0, f0, f3
    lfs     f1, -0x5654(r2)
    fadds   f3, f2, f4
    b       branch_0x801017b0

branch_0x801017ac:
    fsubs   f3, f3, f1
branch_0x801017b0:
    fcmpo   cr0, f3, f1
    cror    2, 1, 2
    beq+    branch_0x801017ac
    lfs     f2, -0x5654(r2)
    lfs     f1, -0x56d0(r2)
    b       branch_0x801017cc

branch_0x801017c8:
    fadds   f3, f3, f2
branch_0x801017cc:
    fcmpo   cr0, f3, f1
    blt+    branch_0x801017c8
    stfs    f3, 0x40(r29)
    lfs     f3, -0x565c(r2)
    lfs     f2, 0x44(r29)
    lfs     f1, -0x5654(r2)
    fmadds  f3, f3, f4, f2
    b       branch_0x801017f0

branch_0x801017ec:
    fsubs   f3, f3, f1
branch_0x801017f0:
    fcmpo   cr0, f3, f1
    cror    2, 1, 2
    beq+    branch_0x801017ec
    lfs     f2, -0x5654(r2)
    lfs     f1, -0x56d0(r2)
    b       branch_0x8010180c

branch_0x80101808:
    fadds   f3, f3, f2
branch_0x8010180c:
    fcmpo   cr0, f3, f1
    blt+    branch_0x80101808
    stfs    f3, 0x44(r29)
    b       branch_0x80101898

branch_0x8010181c:
    lfs     f2, 0x40(r29)
    lfs     f1, -0x5654(r2)
    fadds   f3, f2, f4
    b       branch_0x80101830

branch_0x8010182c:
    fsubs   f3, f3, f1
branch_0x80101830:
    fcmpo   cr0, f3, f1
    cror    2, 1, 2
    beq+    branch_0x8010182c
    lfs     f2, -0x5654(r2)
    lfs     f1, -0x56d0(r2)
    b       branch_0x8010184c

branch_0x80101848:
    fadds   f3, f3, f2
branch_0x8010184c:
    fcmpo   cr0, f3, f1
    blt+    branch_0x80101848
    stfs    f3, 0x40(r29)
    lfs     f3, -0x565c(r2)
    lfs     f2, 0x44(r29)
    lfs     f1, -0x5654(r2)
    fmadds  f3, f3, f4, f2
    b       branch_0x80101870

branch_0x8010186c:
    fsubs   f3, f3, f1
branch_0x80101870:
    fcmpo   cr0, f3, f1
    cror    2, 1, 2
    beq+    branch_0x8010186c
    lfs     f2, -0x5654(r2)
    lfs     f1, -0x56d0(r2)
    b       branch_0x8010188c

branch_0x80101888:
    fadds   f3, f3, f2
branch_0x8010188c:
    fcmpo   cr0, f3, f1
    blt+    branch_0x80101888
    stfs    f3, 0x44(r29)
branch_0x80101898:
    lwz     r0, 0x18(r29)
    cmpwi   r0, 0x2
    beq-    branch_0x80101ac4
    bge-    branch_0x801018b8
    cmpwi   r0, 0x0
    beq-    branch_0x801018c4
    bge-    branch_0x8010196c
    b       branch_0x80101ac4

branch_0x801018b8:
    cmpwi   r0, 0x4
    bge-    branch_0x80101ac4
    b       branch_0x80101a1c

branch_0x801018c4:
    lfs     f4, -0x56b4(r2)
    lfs     f1, 0x40(r29)
    lwz     r4, R13Off_m0x5eac(r13)
    fmuls   f2, f4, f1
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f1, -0x5650(r2)
    lwz     r3, R13Off_m0x5ea4(r13)
    fctiwz  f3, f2
    lfs     f2, -0x564c(r2)
    stfd    f3, 0x210(sp)
    lwz     r0, 0x214(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    fmuls   f1, f1, f3
    fmuls   f1, f0, f1
    stfs    f1, 0x1f0(sp)
    lfs     f1, 0x40(r29)
    fmuls   f1, f4, f1
    fctiwz  f1, f1
    stfd    f1, 0x208(sp)
    lwz     r0, 0x20c(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmuls   f1, f0, f1
    stfs    f1, 0x1f4(sp)
    lfs     f1, 0x44(r29)
    fmuls   f1, f4, f1
    fctiwz  f1, f1
    stfd    f1, 0x200(sp)
    lwz     r0, 0x204(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1f8(sp)
    b       branch_0x80101b68

branch_0x8010196c:
    lfs     f5, -0x56b4(r2)
    lfs     f1, 0x40(r29)
    lwz     r4, R13Off_m0x5eac(r13)
    fmuls   f2, f5, f1
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f1, -0x5648(r2)
    lfs     f3, -0x56d4(r2)
    fctiwz  f4, f2
    lwz     r3, R13Off_m0x5ea4(r13)
    lfs     f2, -0x5644(r2)
    stfd    f4, 0x200(sp)
    lwz     r0, 0x204(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f4, r5, r0
    fmuls   f1, f1, f4
    fmuls   f1, f0, f1
    stfs    f1, 0x1f0(sp)
    lfs     f1, 0x44(r29)
    fmuls   f1, f5, f1
    fctiwz  f1, f1
    stfd    f1, 0x208(sp)
    lwz     r0, 0x20c(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmuls   f1, f3, f1
    fmuls   f1, f0, f1
    stfs    f1, 0x1f4(sp)
    lfs     f1, 0x44(r29)
    fmuls   f1, f5, f1
    fctiwz  f1, f1
    stfd    f1, 0x210(sp)
    lwz     r0, 0x214(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1f8(sp)
    b       branch_0x80101b68

branch_0x80101a1c:
    lfs     f4, -0x56b4(r2)
    lfs     f1, 0x40(r29)
    lwz     r4, R13Off_m0x5eac(r13)
    fmuls   f1, f4, f1
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f3, -0x56d4(r2)
    lwz     r3, R13Off_m0x5ea4(r13)
    fctiwz  f1, f1
    lfs     f2, -0x5644(r2)
    stfd    f1, 0x200(sp)
    lwz     r0, 0x204(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmuls   f1, f0, f1
    stfs    f1, 0x1f0(sp)
    lfs     f1, 0x44(r29)
    fmuls   f1, f4, f1
    fctiwz  f1, f1
    stfd    f1, 0x208(sp)
    lwz     r0, 0x20c(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmuls   f1, f3, f1
    fmuls   f1, f0, f1
    stfs    f1, 0x1f4(sp)
    lfs     f1, 0x44(r29)
    fmuls   f1, f4, f1
    fctiwz  f1, f1
    stfd    f1, 0x210(sp)
    lwz     r0, 0x214(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1f8(sp)
    b       branch_0x80101b68

branch_0x80101ac4:
    lfs     f4, -0x56b4(r2)
    lfs     f1, 0x40(r29)
    lwz     r4, R13Off_m0x5eac(r13)
    fmuls   f2, f4, f1
    lwz     r5, R13Off_m0x5ea8(r13)
    lfs     f1, -0x5640(r2)
    lwz     r3, R13Off_m0x5ea4(r13)
    fctiwz  f3, f2
    lfs     f2, -0x564c(r2)
    stfd    f3, 0x200(sp)
    lwz     r0, 0x204(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    fmuls   f1, f1, f3
    fmuls   f1, f0, f1
    stfs    f1, 0x1f0(sp)
    lfs     f1, 0x40(r29)
    fmuls   f1, f4, f1
    fctiwz  f1, f1
    stfd    f1, 0x208(sp)
    lwz     r0, 0x20c(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmuls   f1, f0, f1
    stfs    f1, 0x1f4(sp)
    lfs     f1, 0x44(r29)
    fmuls   f1, f4, f1
    fctiwz  f1, f1
    stfd    f1, 0x210(sp)
    lwz     r0, 0x214(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1f8(sp)
branch_0x80101b68:
    lwz     r0, 0x10(r29)
    cmpwi   r0, 0x5
    bne-    branch_0x80101c08
    lfs     f22, -0x56d0(r2)
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x80101bf8

branch_0x80101b84:
    lwz     r0, 0x24(r29)
    addi    r4, r28, 0xc
    add     r4, r0, r4
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1e4(sp)
    stw     r0, 0x1e8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1ec(sp)
    stfs    f22, 0x1e4(sp)
    stfs    f22, 0x1ec(sp)
    lwz     r3, 0x34(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1e8(sp)
    addi    r30, r30, 0x1
    fsubs   f0, f0, f1
    stfs    f0, 0x1e8(sp)
    lwz     r0, 0x24(r29)
    lwz     r3, 0x1e4(sp)
    add     r4, r0, r28
    lwz     r0, 0x1e8(sp)
    addi    r28, r28, 0x28
    stw     r3, 0xc(r4)
    stw     r0, 0x10(r4)
    lwz     r0, 0x1ec(sp)
    stw     r0, 0x14(r4)
branch_0x80101bf8:
    lwz     r0, 0x20(r29)
    cmpw    r30, r0
    blt+    branch_0x80101b84
    b       branch_0x80101c74

branch_0x80101c08:
    cmpwi   r0, 0x3
    bne-    branch_0x80101c28
    lwz     r4, 0x20(r29)
    addi    r3, r29, 0x0
    addi    r5, sp, 0x1f0
    addi    r4, r4, -0x1
    bl      beatNode__11TBGTentacleFiRCQ29JGeometry8TVec3_f_
    b       branch_0x80101c74

branch_0x80101c28:
    lwz     r4, 0x20(r29)
    addi    r3, r29, 0x0
    addi    r5, sp, 0x1f0
    addi    r4, r4, -0x1
    bl      beatNode__11TBGTentacleFiRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x1f0(sp)
    mr      r3, r29
    addi    r5, sp, 0x1f0
    fneg    f0, f0
    stfs    f0, 0x1f0(sp)
    lfs     f0, 0x1f4(sp)
    fneg    f0, f0
    stfs    f0, 0x1f4(sp)
    lfs     f0, 0x1f8(sp)
    fneg    f0, f0
    stfs    f0, 0x1f8(sp)
    lwz     r4, 0x20(r29)
    addi    r4, r4, -0x3
    bl      beatNode__11TBGTentacleFiRCQ29JGeometry8TVec3_f_
branch_0x80101c74:
    lfs     f29, -0x562c(r2)
    addi    r31, sp, 0x1d4
    lfs     f30, -0x56d0(r2)
    li      r30, 0x0
    lfs     f31, -0x56cc(r2)
    lfs     f27, -0x56c8(r2)
    li      r28, 0x0
    lfs     f28, -0x56c4(r2)
    lfs     f24, -0x5694(r2)
    lfs     f23, -0x5638(r2)
    lfs     f25, -0x5634(r2)
    lfs     f26, -0x5630(r2)
    b       branch_0x80101fc4

branch_0x80101ca8:
    lwz     r0, 0x24(r29)
    addi    r4, r29, 0x0
    add     r3, r0, r28
    bl      calcPosition__Q211TBGTentacle5TNodeFP11TBGTentacle
    cmplwi  r30, 0x1
    bgt-    branch_0x80101cd0
    lwz     r3, 0x34(r29)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x6
    beq-    branch_0x80101fbc
branch_0x80101cd0:
    lwz     r0, 0x24(r29)
    mr      r5, r31
    lwz     r3, R13Off_m0x6328(r13)
    addi    r4, sp, 0x1cc
    add     r7, r0, r28
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    lfs     f2, -0x563c(r2)
    stw     r6, 0x1cc(sp)
    stw     r0, 0x1d0(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x1d4(sp)
    lfs     f1, 0x1d0(sp)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r4, 0x7c(r3)
    cmplwi  r4, 0x3
    bne-    branch_0x80101d24
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80101d2c
branch_0x80101d24:
    cmplwi  r4, 0x3b
    bne-    branch_0x80101d4c
branch_0x80101d2c:
    lfs     f0, 0x1d0(sp)
    addi    r4, sp, 0x1c8
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f23, f0
    lfs     f1, 0x1cc(sp)
    lfs     f3, 0x1d4(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    b       branch_0x80101ddc

branch_0x80101d4c:
    lwz     r3, 0x34(r29)
    bl      is2ndFightNow__10TBossGessoCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80101d68
    lwz     r3, 0x34(r29)
    lfs     f1, 0x14(r3)
    b       branch_0x80101ddc

branch_0x80101d68:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x9
    bne-    branch_0x80101dbc
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80101dbc
    lwz     r5, 0x34(r29)
    addi    r4, sp, 0x1c8
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f0, 0x14(r5)
    lfs     f1, 0x1cc(sp)
    fadds   f2, f24, f0
    lfs     f3, 0x1d4(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x34(r29)
    lfs     f0, 0x14(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80101ddc
    fmr     f1, f0
    b       branch_0x80101ddc

branch_0x80101dbc:
    lwz     r5, 0x34(r29)
    addi    r4, sp, 0x1c8
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f0, 0x14(r5)
    lfs     f1, 0x1cc(sp)
    fadds   f2, f24, f0
    lfs     f3, 0x1d4(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
branch_0x80101ddc:
    fadds   f1, f1, f25
    lfs     f0, 0x1d0(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80101e1c
    stfs    f30, 0x1c4(sp)
    stfs    f30, 0x1c0(sp)
    stfs    f30, 0x1bc(sp)
    lwz     r4, 0x24(r29)
    lwz     r3, 0x1bc(sp)
    lwz     r0, 0x1c0(sp)
    add     r4, r4, r28
    stw     r3, 0xc(r4)
    stw     r0, 0x10(r4)
    lwz     r0, 0x1c4(sp)
    stw     r0, 0x14(r4)
    stfs    f1, 0x1d0(sp)
branch_0x80101e1c:
    lwz     r0, 0x10(r29)
    cmpwi   r0, 0x5
    bne-    branch_0x80101e44
    lwz     r3, 0x34(r29)
    lfs     f0, 0x1d0(sp)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80101e44
    fadds   f0, f26, f1
    stfs    f0, 0x1d0(sp)
branch_0x80101e44:
    lwz     r4, 0x34(r29)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x1b0(sp)
    stw     r0, 0x1b4(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x1b8(sp)
    lfs     f0, 0x1b4(sp)
    lfs     f2, 0x1d0(sp)
    fcmpo   cr0, f0, f2
    bge-    branch_0x80101f9c
    lfs     f1, 0x1b0(sp)
    lfs     f0, 0x1cc(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x1b0(sp)
    lfs     f0, 0x1b4(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x1b4(sp)
    lfs     f1, 0x1b8(sp)
    lfs     f0, 0x1d4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x1b8(sp)
    lfs     f1, 0x1b0(sp)
    lfs     f0, 0x1b4(sp)
    lfs     f2, 0x1b8(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lfs     f4, 0x148(r4)
    fmuls   f2, f2, f2
    lfs     f3, 0xbc(r4)
    fadds   f0, f1, f0
    fmuls   f22, f4, f3
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x80101edc
    fmr     f0, f1
    b       branch_0x80101ef8

branch_0x80101edc:
    frsqrte f2, f1
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f27, f2
    fnmsubs  f0, f1, f0, f28
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
branch_0x80101ef8:
    fcmpo   cr0, f0, f22
    bge-    branch_0x80101f9c
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80101f1c
    stfs    f30, 0x1b8(sp)
    stfs    f30, 0x1b4(sp)
    stfs    f30, 0x1b0(sp)
    b       branch_0x80101f48

branch_0x80101f1c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x1b0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b0(sp)
    lfs     f0, 0x1b4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(sp)
    lfs     f0, 0x1b8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(sp)
branch_0x80101f48:
    lfs     f0, 0x1b0(sp)
    fmuls   f0, f0, f22
    stfs    f0, 0x1b0(sp)
    lfs     f0, 0x1b4(sp)
    fmuls   f0, f0, f22
    stfs    f0, 0x1b4(sp)
    lfs     f0, 0x1b8(sp)
    fmuls   f0, f0, f22
    stfs    f0, 0x1b8(sp)
    lfs     f1, 0x1cc(sp)
    lfs     f0, 0x1b0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1cc(sp)
    lfs     f1, 0x1d0(sp)
    lfs     f0, 0x1b4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1d0(sp)
    lfs     f1, 0x1d4(sp)
    lfs     f0, 0x1b8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1d4(sp)
branch_0x80101f9c:
    lwz     r4, 0x24(r29)
    lwz     r3, 0x1cc(sp)
    lwz     r0, 0x1d0(sp)
    add     r4, r4, r28
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x1d4(sp)
    stw     r0, 0x8(r4)
branch_0x80101fbc:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x28
branch_0x80101fc4:
    lwz     r0, 0x20(r29)
    cmpw    r30, r0
    blt+    branch_0x80101ca8
    li      r9, 0x0
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    b       branch_0x80102038

branch_0x80101fe4:
    lwz     r0, 0x24(r29)
    cmpwi   r9, 0x0
    lwz     r7, 0x28(r29)
    add     r8, r0, r4
    blt-    branch_0x8010202c
    lwz     r0, 0x0(r7)
    cmpw    r0, r9
    ble-    branch_0x8010202c
    lfs     f0, 0x0(r8)
    lwz     r6, 0x4(r7)
    stfsx   f0, r6, r3
    lfs     f0, 0x4(r8)
    lwz     r6, 0x8(r7)
    stfsx   f0, r6, r3
    lfs     f0, 0x8(r8)
    lwz     r6, 0xc(r7)
    stfsx   f0, r6, r3
    stw     r5, 0x28(r7)
branch_0x8010202c:
    addi    r9, r9, 0x1
    addi    r3, r3, 0x4
    addi    r4, r4, 0x28
branch_0x80102038:
    lwz     r0, 0x20(r29)
    cmpw    r9, r0
    blt+    branch_0x80101fe4
    lwz     r0, 0x27c(sp)
    lfd     f31, 0x270(sp)
    lfd     f30, 0x268(sp)
    mtlr    r0
    lfd     f29, 0x260(sp)
    lfd     f28, 0x258(sp)
    lfd     f27, 0x250(sp)
    lfd     f26, 0x248(sp)
    lfd     f25, 0x240(sp)
    lfd     f24, 0x238(sp)
    lfd     f23, 0x230(sp)
    lfd     f22, 0x228(sp)
    lwz     r31, 0x224(sp)
    lwz     r30, 0x220(sp)
    lwz     r29, 0x21c(sp)
    lwz     r28, 0x218(sp)
    addi    sp, sp, 0x278
    blr


.globl changeStateAndFixNodes__11TBGTentacleFi
changeStateAndFixNodes__11TBGTentacleFi: # 0x8010208c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lwz     r0, 0x10(r3)
    cmpw    r0, r4
    beq-    branch_0x80102340
    stw     r4, 0x10(r31)
    li      r5, 0x0
    addi    r3, r5, 0x0
    stw     r5, 0x14(r31)
    li      r6, 0x0
    b       branch_0x801020dc

branch_0x801020c8:
    lwz     r4, 0x24(r31)
    addi    r0, r3, 0x24
    addi    r3, r3, 0x28
    stwx    r5, r4, r0
    addi    r6, r6, 0x1
branch_0x801020dc:
    lwz     r4, 0x20(r31)
    cmpw    r6, r4
    blt+    branch_0x801020c8
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0xa
    bgt-    branch_0x801022e4
    lis     r3, unk_803bbf18@ha
    addi    r3, r3, unk_803bbf18@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8010210c:
    lwz     r4, 0x24(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r0, 0x24(r4)
    bl      setAttackTarget__11TBGTentacleFv
    b       branch_0x801022e4

branch_0x80102124:
    lwz     r0, 0x48(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8010214c
    addi    r0, r4, -0x1
    lwz     r4, 0x24(r31)
    mulli   r3, r0, 0x28
    addi    r0, r3, 0x24
    li      r3, 0x1
    stwx    r3, r4, r0
    b       branch_0x801022e4

branch_0x8010214c:
    addi    r0, r4, -0x1
    lwz     r4, 0x24(r31)
    mulli   r3, r0, 0x28
    addi    r0, r3, 0x24
    li      r30, 0x1
    stwx    r30, r4, r0
    lwz     r3, 0x34(r31)
    bl      gotTentacleDamage__10TBossGessoFv
    stw     r30, 0x48(r31)
    li      r0, 0x0
    lis     r3, idx_3289@h
    stw     r0, 0x1c(r31)
    addi    r0, r3, idx_3289@l
    lwz     r4, 0x18(r31)
    lwz     r3, 0x34(r31)
    slwi    r4, r4, 2
    add     r4, r0, r4
    lwz     r30, 0x0(r4)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r30, r4, r0
    addi    r5, r30, 0x0
    li      r4, 0x95
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    li      r4, 0x96
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x34(r31)
    li      r4, 0x1
    addi    r5, r3, 0x10
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
    b       branch_0x801022e4

branch_0x801021e8:
    lwz     r3, 0x24(r31)
    li      r4, 0x1
    stw     r4, 0x24(r3)
    lwz     r3, 0x34(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x8010220c
    lwz     r3, 0x24(r31)
    stw     r4, 0x4c(r3)
branch_0x8010220c:
    lfs     f0, -0x56d0(r2)
    li      r6, 0x0
    li      r3, 0x0
    stfs    f0, 0x70(sp)
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x68(sp)
    b       branch_0x80102250

branch_0x80102228:
    lwz     r0, 0x24(r31)
    addi    r6, r6, 0x1
    lwz     r4, 0x68(sp)
    add     r5, r0, r3
    lwz     r0, 0x6c(sp)
    addi    r3, r3, 0x28
    stw     r4, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r0, 0x70(sp)
    stw     r0, 0x14(r5)
branch_0x80102250:
    lwz     r0, 0x20(r31)
    cmpw    r6, r0
    blt+    branch_0x80102228
    b       branch_0x801022e4

branch_0x80102260:
    lwz     r3, 0x24(r31)
    li      r5, 0x1
    stw     r5, 0x24(r3)
    lwz     r3, 0x20(r31)
    lwz     r4, 0x24(r31)
    addi    r0, r3, -0x1
    mulli   r3, r0, 0x28
    addi    r0, r3, 0x24
    stwx    r5, r4, r0
    b       branch_0x801022e4

branch_0x80102288:
    lwz     r3, 0x24(r31)
    li      r0, 0x1
    li      r4, 0x16
    stw     r0, 0x24(r3)
    lwz     r3, 0x80(r31)
    bl      setBckFromIndex__6MActorFi
    b       branch_0x801022e4

branch_0x801022a4:
    lwz     r3, 0x24(r31)
    li      r0, 0x1
    stw     r0, 0x24(r3)
    b       branch_0x801022e4

branch_0x801022b4:
    lwz     r3, 0x24(r31)
    li      r0, 0x1
    stw     r0, 0x24(r3)
    lwz     r3, 0x24(r31)
    stw     r0, 0x4c(r3)
    b       branch_0x801022e4

branch_0x801022cc:
    lwz     r3, 0x24(r31)
    li      r4, 0x1
    li      r0, 0x0
    stw     r4, 0x24(r3)
    stw     r0, 0x1c(r31)
    stw     r0, 0x48(r31)
branch_0x801022e4:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x6
    bne-    branch_0x80102304
    lwz     r3, 0x3c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    b       branch_0x80102314

branch_0x80102304:
    lwz     r3, 0x3c(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x80102314:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x9
    bne-    branch_0x80102330
    lwz     r3, 0x3c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r3)
branch_0x80102330:
    lwz     r3, 0x3c(r31)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r3)
branch_0x80102340:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl setAttackTarget__11TBGTentacleFv
setAttackTarget__11TBGTentacleFv: # 0x80102358
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stw     r31, 0x16c(sp)
    mr      r31, r3
    stw     r30, 0x168(sp)
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x84(r31)
    stw     r0, 0x88(r31)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8c(r31)
    lwz     r4, 0x34(r31)
    lwz     r0, 0x168(r4)
    cmpwi   r0, 0x2
    bne-    branch_0x801025a0
    lwz     r0, 0x18(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801023dc
    bge-    branch_0x801023c0
    cmpwi   r0, 0x0
    beq-    branch_0x801023cc
    bge-    branch_0x801023d4
    b       branch_0x801023ec

branch_0x801023c0:
    cmpwi   r0, 0x4
    bge-    branch_0x801023ec
    b       branch_0x801023e4

branch_0x801023cc:
    li      r30, -0x2
    b       branch_0x801023f0

branch_0x801023d4:
    li      r30, -0x1
    b       branch_0x801023f0

branch_0x801023dc:
    li      r30, 0x2
    b       branch_0x801023f0

branch_0x801023e4:
    li      r30, 0x1
    b       branch_0x801023f0

branch_0x801023ec:
    li      r30, 0x0
branch_0x801023f0:
    lwz     r3, 0x84(r31)
    lwz     r0, 0x88(r31)
    stw     r3, 0x148(sp)
    stw     r0, 0x14c(sp)
    lwz     r0, 0x8c(r31)
    stw     r0, 0x150(sp)
    lfs     f1, 0x148(sp)
    lfsu    f0, 0x10(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x148(sp)
    lfs     f1, 0x14c(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x14c(sp)
    lfs     f1, 0x150(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x150(sp)
    lfs     f4, -0x56d0(r2)
    lfs     f0, 0x14c(sp)
    lfs     f2, 0x150(sp)
    fmuls   f5, f4, f0
    lfs     f3, -0x56cc(r2)
    fmuls   f0, f4, f2
    lfs     f1, 0x148(sp)
    fmsubs  f2, f3, f2, f5
    fmsubs  f0, f4, f1, f0
    stfs    f2, 0x13c(sp)
    stfs    f0, 0x140(sp)
    lfs     f0, 0x148(sp)
    fnmsubs  f0, f3, f0, f5
    stfs    f0, 0x144(sp)
    lfs     f1, 0x13c(sp)
    lfs     f3, 0x144(sp)
    lfs     f0, 0x140(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x562c(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801024b0
    stfs    f4, 0x144(sp)
    stfs    f4, 0x140(sp)
    stfs    f4, 0x13c(sp)
    b       branch_0x801024e0

branch_0x801024b0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x56cc(r2)
    lfs     f0, 0x13c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x13c(sp)
    lfs     f0, 0x140(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x140(sp)
    lfs     f0, 0x144(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x144(sp)
branch_0x801024e0:
    xoris   r0, r30, 0x8000
    lwz     r5, 0x13c(sp)
    stw     r0, 0x164(sp)
    lis     r0, 0x4330
    lwz     r4, 0x140(sp)
    addi    r3, sp, 0xac
    stw     r0, 0x160(sp)
    lfd     f1, -0x5678(r2)
    stw     r5, 0xac(sp)
    lfd     f0, 0x160(sp)
    stw     r4, 0xb0(sp)
    lwz     r0, 0x144(sp)
    fsubs   f1, f0, f1
    stw     r0, 0xb4(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xac(sp)
    addi    r3, sp, 0xcc
    lwz     r4, 0xb0(sp)
    stw     r0, 0x124(sp)
    lwz     r0, 0xb4(sp)
    stw     r4, 0x128(sp)
    lfs     f1, -0x56a4(r2)
    stw     r0, 0x12c(sp)
    lwz     r0, 0x124(sp)
    lwz     r4, 0x128(sp)
    stw     r0, 0xcc(sp)
    lwz     r0, 0x12c(sp)
    stw     r4, 0xd0(sp)
    stw     r0, 0xd4(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xcc(sp)
    lwz     r3, 0xd0(sp)
    stw     r0, 0x130(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0x134(sp)
    stw     r0, 0x138(sp)
    lfs     f1, 0x84(r31)
    lfs     f0, 0x130(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x84(r31)
    lfs     f1, 0x88(r31)
    lfs     f0, 0x134(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x88(r31)
    lfs     f1, 0x8c(r31)
    lfs     f0, 0x138(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(r31)
branch_0x801025a0:
    lwz     r3, 0x34(r31)
    bl      is2ndFightNow__10TBossGessoCFv
    cmpwi   r3, 0x0
    beq-    branch_0x801025d0
    lwz     r3, 0x34(r31)
    lfs     f1, -0x5634(r2)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x88(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801025d0
    stfs    f0, 0x88(r31)
branch_0x801025d0:
    lwz     r3, 0x34(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80102660
    lwz     r3, R13Off_m0x60d8(r13)
    lfs     f1, -0x5628(r2)
    lfs     f0, 0xec(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80102608
    li      r0, 0x1
    b       branch_0x8010260c

branch_0x80102608:
    li      r0, 0x0
branch_0x8010260c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80102640
    lwz     r0, 0x7c(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x147
    blt-    branch_0x80102634
    cmplwi  r0, 0x14a
    bgt-    branch_0x80102634
    li      r0, 0x1
    b       branch_0x80102638

branch_0x80102634:
    li      r0, 0x0
branch_0x80102638:
    clrlwi. r0, r0, 24
    beq-    branch_0x80102650
branch_0x80102640:
    lwz     r3, 0x80(r31)
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
    b       branch_0x8010270c

branch_0x80102650:
    lwz     r3, 0x80(r31)
    li      r4, 0x15
    bl      setBckFromIndex__6MActorFi
    b       branch_0x8010270c

branch_0x80102660:
    cmpwi   r0, 0x1
    bne-    branch_0x80102678
    lwz     r3, 0x80(r31)
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
    b       branch_0x8010270c

branch_0x80102678:
    cmpwi   r0, 0x4
    bne-    branch_0x80102690
    lwz     r3, 0x80(r31)
    li      r4, 0x18
    bl      setBckFromIndex__6MActorFi
    b       branch_0x8010270c

branch_0x80102690:
    lwz     r3, R13Off_m0x60d8(r13)
    lfs     f1, -0x5628(r2)
    lfs     f0, 0xec(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x801026b8
    li      r0, 0x1
    b       branch_0x801026bc

branch_0x801026b8:
    li      r0, 0x0
branch_0x801026bc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801026f0
    lwz     r0, 0x7c(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x147
    blt-    branch_0x801026e4
    cmplwi  r0, 0x14a
    bgt-    branch_0x801026e4
    li      r0, 0x1
    b       branch_0x801026e8

branch_0x801026e4:
    li      r0, 0x0
branch_0x801026e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80102700
branch_0x801026f0:
    lwz     r3, 0x80(r31)
    li      r4, 0x14
    bl      setBckFromIndex__6MActorFi
    b       branch_0x8010270c

branch_0x80102700:
    lwz     r3, 0x80(r31)
    li      r4, 0x15
    bl      setBckFromIndex__6MActorFi
branch_0x8010270c:
    lwz     r3, 0x80(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r4, 0x34(r31)
    mr      r30, r3
    lwz     r0, 0x168(r4)
    cmpwi   r0, 0x2
    bne-    branch_0x80102748
    lwz     r12, 0x0(r4)
    mr      r3, r4
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x1bc(r3)
    b       branch_0x80102794

branch_0x80102748:
    cmpwi   r0, 0x1
    bne-    branch_0x8010276c
    lwz     r12, 0x0(r4)
    mr      r3, r4
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x1d0(r3)
    b       branch_0x80102794

branch_0x8010276c:
    cmpwi   r0, 0x4
    bne-    branch_0x80102790
    lwz     r12, 0x0(r4)
    mr      r3, r4
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x1e4(r3)
    b       branch_0x80102794

branch_0x80102790:
    lfs     f31, -0x56cc(r2)
branch_0x80102794:
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f0, f31, f1
    li      r0, 0x0
    stfs    f0, 0xc(r30)
    stw     r0, 0x4c(r31)
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lwz     r31, 0x16c(sp)
    lwz     r30, 0x168(sp)
    addi    sp, sp, 0x178
    mtlr    r0
    blr


.globl beatNode__11TBGTentacleFiRCQ29JGeometry8TVec3_f_
beatNode__11TBGTentacleFiRCQ29JGeometry8TVec3_f_: # 0x801027c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stmw    r26, 0x40(sp)
    mr      r31, r4
    mr      r30, r3
    mulli   r3, r31, 0x28
    lwz     r6, 0x24(r30)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r3, r6, r3
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    lwz     r0, 0x8(r5)
    stw     r0, 0x14(r3)
    lwz     r0, 0x10(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x8010281c
    lwz     r3, 0x38(r30)
    lfs     f31, 0x108(r3)
    b       branch_0x80102824

branch_0x8010281c:
    lwz     r3, 0x38(r30)
    lfs     f31, 0x7c(r3)
branch_0x80102824:
    addi    r26, r31, 0x1
    mulli   r29, r26, 0x28
    b       branch_0x801028a8

branch_0x80102830:
    addi    r27, r26, -0x1
    lwz     r0, 0x24(r30)
    mulli   r28, r27, 0x28
    fmr     f1, f31
    addi    r4, r30, 0x0
    add     r3, r0, r29
    add     r5, r0, r28
    bl      calcVelocity__Q211TBGTentacle5TNodeFP11TBGTentaclePQ211TBGTentacle5TNodef
    lwz     r3, 0x24(r30)
    addi    r0, r29, 0x24
    lwzx    r0, r3, r0
    cmpwi   r0, 0x0
    beq-    branch_0x801028a0
    mr      r26, r27
    b       branch_0x80102894

branch_0x8010286c:
    addi    r0, r26, 0x1
    lwz     r5, 0x24(r30)
    mulli   r0, r0, 0x28
    fmr     f1, f31
    addi    r4, r30, 0x0
    add     r3, r5, r28
    add     r5, r5, r0
    bl      calcVelocity__Q211TBGTentacle5TNodeFP11TBGTentaclePQ211TBGTentacle5TNodef
    addi    r26, r26, -0x1
    addi    r28, r28, -0x28
branch_0x80102894:
    cmpwi   r26, 0x0
    bge+    branch_0x8010286c
    b       branch_0x801028b4

branch_0x801028a0:
    addi    r26, r26, 0x1
    addi    r29, r29, 0x28
branch_0x801028a8:
    lwz     r0, 0x20(r30)
    cmpw    r26, r0
    blt+    branch_0x80102830
branch_0x801028b4:
    addi    r26, r31, -0x1
    mulli   r31, r26, 0x28
    b       branch_0x80102940

branch_0x801028c0:
    addi    r28, r26, 0x1
    lwz     r0, 0x24(r30)
    mulli   r29, r28, 0x28
    fmr     f1, f31
    addi    r4, r30, 0x0
    add     r3, r0, r31
    add     r5, r0, r29
    bl      calcVelocity__Q211TBGTentacle5TNodeFP11TBGTentaclePQ211TBGTentacle5TNodef
    lwz     r3, 0x24(r30)
    addi    r0, r31, 0x24
    lwzx    r0, r3, r0
    cmpwi   r0, 0x0
    beq-    branch_0x80102938
    addi    r26, r28, 0x0
    addi    r31, r29, 0x0
    b       branch_0x80102928

branch_0x80102900:
    addi    r0, r26, -0x1
    lwz     r5, 0x24(r30)
    mulli   r0, r0, 0x28
    fmr     f1, f31
    addi    r4, r30, 0x0
    add     r3, r5, r31
    add     r5, r5, r0
    bl      calcVelocity__Q211TBGTentacle5TNodeFP11TBGTentaclePQ211TBGTentacle5TNodef
    addi    r26, r26, 0x1
    addi    r31, r31, 0x28
branch_0x80102928:
    lwz     r0, 0x20(r30)
    cmpw    r26, r0
    blt+    branch_0x80102900
    b       branch_0x80102948

branch_0x80102938:
    addi    r26, r26, -0x1
    addi    r31, r31, -0x28
branch_0x80102940:
    cmpwi   r26, 0x0
    bge+    branch_0x801028c0
branch_0x80102948:
    lmw     r26, 0x40(sp)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl __ct__11TBGTentacleFP10TBossGessoii
__ct__11TBGTentacleFP10TBossGessoii: # 0x80102960
    mflr    r0
    lis     r7, unk_80383200@h
    stw     r0, 0x4(sp)
    addi    r0, r2, R2Off_m0x5620
    stwu    sp, -0x1a0(sp)
    stfd    f31, 0x198(sp)
    stfd    f30, 0x190(sp)
    stmw    r20, 0x160(sp)
    addi    r26, r4, 0x0
    addi    r24, r5, 0x0
    addi    r20, r6, 0x0
    addi    r31, r7, unk_80383200@l
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r3, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r25, 0x8(sp)
    stw     r3, 0x0(r25)
    addi    r22, r25, 0x0
    addi    r3, r2, R2Off_m0x5620
    stw     r0, 0x4(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r22)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r22)
    li      r21, 0x0
    lis     r3, __vvt__11TBGTentacle@ha
    sth     r21, 0xc(r22)
    addi    r0, r3, __vvt__11TBGTentacle@l
    addi    r22, r24, 0x0
    stw     r0, 0x0(r25)
    mulli   r3, r22, 0x28
    stw     r21, 0x10(r25)
    addi    r3, r3, 0x8
    stw     r21, 0x14(r25)
    stw     r20, 0x18(r25)
    stw     r21, 0x1c(r25)
    stw     r24, 0x20(r25)
    bl      __nwa__FUl
    lis     r4, __ct__Q211TBGTentacle5TNodeFv@h
    addi    r4, r4, __ct__Q211TBGTentacle5TNodeFv@l
    addi    r7, r22, 0x0
    li      r5, 0x0
    li      r6, 0x28
    bl      __construct_new_array
    stw     r3, 0x24(r25)
    li      r3, 0x184
    stw     r21, 0x28(r25)
    stw     r21, 0x2c(r25)
    stw     r21, 0x30(r25)
    stw     r26, 0x34(r25)
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80102a44
    addi    r3, r20, 0x0
    addi    r4, r31, 0x1c0
    bl      __ct__Q211TBGTentacle15TTentacleParamsFPCc
branch_0x80102a44:
    lwz     r4, 0x8(sp)
    li      r0, 0x0
    li      r3, 0x2c
    stw     r20, 0x38(r4)
    stw     r0, 0x3c(r4)
    lfs     f0, -0x56d0(r2)
    stfs    f0, 0x40(r4)
    stfs    f0, 0x44(r4)
    stw     r0, 0x48(r4)
    stw     r0, 0x4c(r4)
    stw     r0, 0x80(r4)
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80102a88
    addi    r3, r20, 0x0
    addi    r4, r24, 0x0
    bl      __ct__11TSplinePathFi
branch_0x80102a88:
    lwz     r28, 0x8(sp)
    stw     r20, 0x28(r28)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5678(r2)
    stw     r0, 0x15c(sp)
    lis     r21, 0x4330
    lfs     f1, -0x5618(r2)
    stw     r21, 0x158(sp)
    lfs     f0, -0x5654(r2)
    lfd     f2, 0x158(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x150(sp)
    lwz     r0, 0x154(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14c(sp)
    stw     r21, 0x148(sp)
    lfd     f0, 0x148(sp)
    fsubs   f0, f0, f3
    stfs    f0, 0x40(r28)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5678(r2)
    stw     r0, 0x144(sp)
    addi    r4, r31, 0x1d4
    lfs     f1, -0x5618(r2)
    li      r5, 0x0
    stw     r21, 0x140(sp)
    lfs     f0, -0x5654(r2)
    lfd     f2, 0x140(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x138(sp)
    lwz     r0, 0x13c(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x134(sp)
    stw     r21, 0x130(sp)
    lfd     f0, 0x130(sp)
    fsubs   f0, f0, f3
    stfs    f0, 0x44(r28)
    lwz     r3, 0x34(r28)
    lwz     r25, 0x78(r3)
    mr      r3, r25
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x2c(r28)
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80102bb8
    addi    r21, r20, 0x6c
    stw     r21, 0x0(r20)
    lis     r4, __vvt__10J3DMtxCalc@ha
    addi    r0, r4, __vvt__10J3DMtxCalc@l
    stw     r21, 0x50(r20)
    addi    r3, r20, 0x0
    li      r4, 0x0
    stw     r0, 0x6c(r20)
    li      r5, 0x0
    bl      __ct__22J3DMtxCalcSoftimageAnmFP15J3DAnmTransform
    lis     r3, __vvt__18TBGTentacleMtxCalc@ha
    addi    r3, r3, __vvt__18TBGTentacleMtxCalc@l
    stw     r3, 0x4c(r20)
    addi    r4, r3, 0x34
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r20)
    stw     r4, 0x0(r3)
    stw     r0, 0x54(r20)
    lwz     r3, 0x0(r20)
    subf    r0, r3, r21
    stw     r0, 0x4(r3)
    stw     r28, 0x68(r20)
branch_0x80102bb8:
    lwz     r3, 0x8(sp)
    stw     r20, 0x30(r3)
    lwz     r4, 0x30(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80102bd0
    lwz     r4, 0x0(r4)
branch_0x80102bd0:
    lwz     r3, 0x2c(r3)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80102bec
    stw     r4, 0x38(r3)
    li      r0, 0x3
    stb     r0, 0x2a(r3)
branch_0x80102bec:
    lwz     r21, 0x8(sp)
    lwz     r3, 0x2c(r21)
    bl      calc__6MActorFv
    lwz     r3, 0x2c(r21)
    li      r4, 0x1
    bl      setLightType__6MActorFi
    addi    r3, r25, 0x0
    addi    r4, r31, 0x1e4
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x80(r21)
    li      r3, 0xb0
    lfs     f0, -0x56d0(r2)
    stfs    f0, 0x8c(r21)
    stfs    f0, 0x88(r21)
    stfs    f0, 0x84(r21)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80102d60
    stw     r24, 0x11c(sp)
    mr      r3, r24
    addi    r4, r31, 0x1f4
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r24)
    addi    r0, r3, 0x24
    lis     r3, __vvt__10TBGTakeHit@ha
    stw     r0, 0x20(r24)
    li      r4, 0x0
    addi    r3, r3, __vvt__10TBGTakeHit@l
    stw     r4, 0x68(r24)
    addi    r0, r3, 0x24
    stw     r4, 0x6c(r24)
    lwz     r25, 0x11c(sp)
    stw     r3, 0x0(r25)
    addi    r3, r25, 0x80
    stw     r0, 0x20(r25)
    stw     r21, 0x70(r25)
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x208
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x208
    mtlr    r12
    blrl
    addi    r21, r3, 0x10
    addi    r4, r21, 0x0
    addi    r3, sp, 0xb0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xb0(sp)
    addi    r4, sp, 0xac
    addi    r3, sp, 0x110
    stw     r0, 0xac(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x110(sp)
    addi    r5, sp, 0xd0
    addi    r4, r21, 0x0
    stw     r0, 0x10c(sp)
    addi    r3, sp, 0xcc
    addi    r6, sp, 0x11c
    lwz     r0, 0x10c(sp)
    stw     r0, 0xd0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xcc(sp)
    addi    r3, sp, 0x108
    addi    r4, sp, 0xc8
    stw     r0, 0xc8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r5, 0x70(r25)
    lis     r4, unk_08000006@h
    addi    r3, r25, 0x0
    lwz     r8, 0x38(r5)
    addi    r4, r4, unk_08000006@l
    li      r5, 0x1
    lfs     f4, 0x16c(r8)
    lis     r6, 0x8000
    lfs     f3, 0x158(r8)
    lfs     f2, 0x144(r8)
    lfs     f1, 0x130(r8)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r25)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r25)
    lfs     f0, -0x56d0(r2)
    stfs    f0, 0x7c(r25)
    stfs    f0, 0x78(r25)
    stfs    f0, 0x74(r25)
branch_0x80102d60:
    lwz     r4, 0x8(sp)
    lis     r3, __vvt__12TBGAttackHit@ha
    addi    r28, r3, __vvt__12TBGAttackHit@l
    stw     r24, 0x3c(r4)
    addi    r25, r28, 0x24
    addi    r27, sp, 0xa4
    lfd     f30, -0x5678(r2)
    addi    r26, sp, 0xbc
    lfs     f31, -0x568c(r2)
    li      r24, 0x0
    li      r22, 0x0
    lis     r30, 0x4330
    lis     r21, 0x800
branch_0x80102d94:
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x80102e9c
    stw     r23, 0x114(sp)
    addi    r4, r31, 0x214
    lwz     r3, 0x114(sp)
    bl      __ct__9THitActorFPCc
    xoris   r0, r24, 0x8000
    lwz     r29, 0x114(sp)
    stw     r0, 0x134(sp)
    addi    r3, r31, 0x208
    stw     r30, 0x130(sp)
    lfd     f0, 0x130(sp)
    stw     r28, 0x0(r29)
    fsubs   f0, f0, f30
    stw     r25, 0x20(r29)
    fdivs   f0, f0, f31
    lwz     r0, 0x8(sp)
    stw     r0, 0x68(r29)
    stfs    f0, 0x6c(r29)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x208
    mtlr    r12
    blrl
    addi    r20, r3, 0x10
    addi    r4, r20, 0x0
    addi    r3, sp, 0xa8
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xa8(sp)
    addi    r4, r27, 0x0
    addi    r3, sp, 0xe4
    stw     r0, 0xa4(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xe4(sp)
    addi    r4, r20, 0x0
    addi    r5, r26, 0x0
    stw     r0, 0xe0(sp)
    addi    r3, sp, 0xb8
    addi    r6, sp, 0x114
    lwz     r0, 0xe0(sp)
    stw     r0, 0xbc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xb8(sp)
    addi    r3, sp, 0xdc
    addi    r4, sp, 0xb4
    stw     r0, 0xb4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lfs     f1, -0x5614(r2)
    addi    r3, r29, 0x0
    addi    r4, r21, 0x7
    fmr     f2, f1
    li      r5, 0x1
    fmr     f3, f1
    lis     r6, 0x8000
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x80102e9c:
    addi    r24, r24, 0x1
    lwz     r3, 0x8(sp)
    addi    r0, r22, 0x90
    cmpwi   r24, 0x5
    stwx    r23, r3, r0
    addi    r22, r22, 0x4
    blt+    branch_0x80102d94
    lmw     r20, 0x160(sp)
    lwz     r0, 0x1a4(sp)
    lfd     f31, 0x198(sp)
    lfd     f30, 0x190(sp)
    mtlr    r0
    addi    sp, sp, 0x1a0
    blr


.globl __ct__22J3DMtxCalcSoftimageAnmFP15J3DAnmTransform
__ct__22J3DMtxCalcSoftimageAnmFP15J3DAnmTransform: # 0x80102ed4
    mflr    r0
    stw     r0, 0x4(sp)
    extsh.  r0, r4
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x80102f10
    addi    r4, r30, 0x68
    stw     r4, 0x0(r30)
    lis     r3, __vvt__10J3DMtxCalc@ha
    addi    r0, r3, __vvt__10J3DMtxCalc@l
    stw     r4, 0x50(r30)
    stw     r0, 0x68(r30)
branch_0x80102f10:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, __vvt__19J3DMtxCalcSoftimage@h
    addi    r5, r3, __vvt__19J3DMtxCalcSoftimage@l
    stw     r5, 0x4c(r30)
    lis     r3, __vvt__13J3DMtxCalcAnm@h
    addi    r7, r3, __vvt__13J3DMtxCalcAnm@l
    lwz     r4, 0x0(r30)
    addi    r0, r5, 0x24
    lis     r3, __vvt__22J3DMtxCalcSoftimageAnm@ha
    stw     r0, 0x0(r4)
    addi    r4, r3, __vvt__22J3DMtxCalcSoftimageAnm@l
    addi    r0, r30, 0x50
    lwz     r3, 0x0(r30)
    addi    r9, r7, 0x10
    addi    r8, r30, 0x68
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    li      r6, 0x0
    addi    r5, r4, 0x34
    stw     r7, 0x54(r30)
    addi    r0, r4, 0x24
    addi    r3, r30, 0x0
    lwz     r7, 0x50(r30)
    stw     r9, 0x0(r7)
    lwz     r9, 0x50(r30)
    subf    r7, r9, r8
    stw     r7, 0x4(r9)
    stw     r6, 0x58(r30)
    lfs     f0, -0x56cc(r2)
    stfs    f0, 0x60(r30)
    stw     r6, 0x5c(r30)
    stfs    f0, 0x64(r30)
    stw     r31, 0x58(r30)
    stw     r4, 0x4c(r30)
    lwz     r4, 0x0(r30)
    stw     r5, 0x0(r4)
    stw     r0, 0x54(r30)
    lwz     r4, 0x0(r30)
    subf    r0, r4, r8
    stw     r0, 0x4(r4)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcPosition__Q211TBGTentacle5TNodeFP11TBGTentacle
calcPosition__Q211TBGTentacle5TNodeFP11TBGTentacle: # 0x80102fd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80103304
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x5
    bne-    branch_0x80103030
    lfs     f1, 0x0(r31)
    lfs     f0, 0xc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
    b       branch_0x80103304

branch_0x80103030:
    cmpwi   r0, 0x4
    bne-    branch_0x8010306c
    lfs     f1, 0x0(r31)
    lfs     f0, 0xc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
    b       branch_0x80103304

branch_0x8010306c:
    cmpwi   r0, 0x7
    bne-    branch_0x801030a8
    lfs     f1, 0x0(r31)
    lfs     f0, 0xc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
    b       branch_0x80103304

branch_0x801030a8:
    cmpwi   r0, 0x3
    bne-    branch_0x801030e4
    lfs     f1, 0x0(r31)
    lfs     f0, 0xc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
    b       branch_0x80103304

branch_0x801030e4:
    lwz     r3, 0x18(r31)
    lwz     r0, 0x1c(r31)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x20(r31)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x4(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f3, 0x4c(sp)
    lfs     f0, 0x48(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x5610(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801032d4
    lfs     f0, -0x560c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8010316c
    lfs     f1, -0x56cc(r2)
    b       branch_0x80103270

branch_0x8010316c:
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x8
    bne-    branch_0x801031bc
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x3c
    bge-    branch_0x801031b4
    xoris   r0, r0, 0x8000
    lfd     f2, -0x5678(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    lfs     f3, -0x56c8(r2)
    stw     r0, 0x50(sp)
    lfs     f0, -0x5624(r2)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f1, f1, f0
    b       branch_0x80103270

branch_0x801031b4:
    lfs     f1, -0x56c8(r2)
    b       branch_0x80103270

branch_0x801031bc:
    cmpwi   r0, 0x1
    beq-    branch_0x801031cc
    cmpwi   r0, 0xa
    bne-    branch_0x80103210
branch_0x801031cc:
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0xb4
    bge-    branch_0x80103208
    xoris   r0, r0, 0x8000
    lfd     f2, -0x5678(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    lfs     f3, -0x5608(r2)
    stw     r0, 0x50(sp)
    lfs     f0, -0x5664(r2)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f1, f1, f0
    b       branch_0x80103270

branch_0x80103208:
    lfs     f1, -0x5608(r2)
    b       branch_0x80103270

branch_0x80103210:
    cmpwi   r0, 0x2
    bne-    branch_0x8010325c
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x78
    bge-    branch_0x80103254
    xoris   r0, r0, 0x8000
    lfd     f2, -0x5678(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    lfs     f3, -0x56d8(r2)
    stw     r0, 0x50(sp)
    lfs     f0, -0x5604(r2)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f1, f1, f0
    b       branch_0x80103270

branch_0x80103254:
    lfs     f1, -0x56d8(r2)
    b       branch_0x80103270

branch_0x8010325c:
    addi    r3, sp, 0x44
    bl      PSVECMag
    lfs     f0, -0x5600(r2)
    fmuls   f1, f0, f1
    fmuls   f1, f1, f1
branch_0x80103270:
    lfs     f0, -0x56cc(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80103280
    fmr     f1, f0
branch_0x80103280:
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(sp)
    lfs     f1, 0xc(r31)
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r31)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x48(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x801032d4:
    lfs     f1, 0x0(r31)
    lfs     f0, 0xc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
branch_0x80103304:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl calcVelocity__Q211TBGTentacle5TNodeFP11TBGTentaclePQ211TBGTentacle5TNodef
calcVelocity__Q211TBGTentacle5TNodeFP11TBGTentaclePQ211TBGTentacle5TNodef: # 0x80103318
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    fmr     f28, f1
    stfd    f27, 0xc8(sp)
    stfd    f26, 0xc0(sp)
    stw     r31, 0xbc(sp)
    mr      r31, r5
    stw     r30, 0xb8(sp)
    mr      r30, r3
    lwz     r6, 0x38(r4)
    lwz     r5, 0x0(r5)
    lfs     f31, 0x68(r6)
    lfs     f30, 0x90(r6)
    lwz     r0, 0x4(r31)
    stw     r5, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0xb0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0xc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    lfs     f0, 0xa8(sp)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0xac(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0xb0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x4
    bne-    branch_0x80103404
    lwz     r3, 0x38(r4)
    lfs     f27, 0x11c(r3)
    b       branch_0x8010340c

branch_0x80103404:
    lwz     r3, 0x38(r4)
    lfs     f27, 0x18(r3)
branch_0x8010340c:
    lwz     r3, 0x38(r4)
    lfs     f0, 0x9c(sp)
    lfs     f29, 0x2c(r3)
    lwz     r0, 0x9c(sp)
    fmuls   f2, f0, f0
    lwz     r3, 0xa0(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0x90(sp)
    lfs     f0, -0x562c(r2)
    stw     r0, 0x94(sp)
    lfs     f1, 0xa0(sp)
    lfs     f3, 0xa4(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80103470
    lfs     f26, -0x56d0(r2)
    stfs    f26, 0x94(sp)
    stfs    f26, 0x90(sp)
    stfs    f26, 0x8c(sp)
    b       branch_0x80103488

branch_0x80103470:
    addi    r3, sp, 0x9c
    bl      PSVECMag
    fmr     f26, f1
    addi    r3, sp, 0x8c
    addi    r4, r3, 0x0
    bl      PSVECNormalize
branch_0x80103488:
    fcmpo   cr0, f26, f29
    ble-    branch_0x80103570
    lwz     r0, 0x24(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80103500
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801036d0
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x90(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x94(sp)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x8c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x90(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x94(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
    b       branch_0x801036d0

branch_0x80103500:
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x90(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x94(sp)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0xb0(sp)
    stw     r0, 0x8(r30)
    lfs     f1, 0x0(r30)
    lfs     f0, 0x8c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r30)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x90(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r30)
    lfs     f1, 0x8(r30)
    lfs     f0, 0x94(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r30)
    b       branch_0x801036d0

branch_0x80103570:
    fcmpo   cr0, f26, f27
    bge-    branch_0x80103590
    fsubs   f0, f27, f26
    fcmpo   cr0, f0, f30
    ble-    branch_0x80103588
    fmr     f0, f30
branch_0x80103588:
    fadds   f26, f26, f0
    b       branch_0x801035a4

branch_0x80103590:
    fsubs   f0, f26, f27
    fcmpo   cr0, f0, f30
    ble-    branch_0x801035a0
    fmr     f0, f30
branch_0x801035a0:
    fsubs   f26, f26, f0
branch_0x801035a4:
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f26
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f26
    stfs    f0, 0x90(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f26
    stfs    f0, 0x94(sp)
    lwz     r0, 0xa8(sp)
    lwz     r3, 0xac(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0xb0(sp)
    stw     r3, 0x84(sp)
    lfs     f0, 0x8c(sp)
    stw     r0, 0x88(sp)
    lfs     f1, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x90(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x94(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x88(sp)
    lwz     r0, 0x80(sp)
    lwz     r3, 0x84(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x0(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x4(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f28
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f28
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f28
    stfs    f0, 0x7c(sp)
    lfs     f0, 0xc(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0xc(r30)
    lfs     f0, 0x10(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x10(r30)
    lfs     f0, 0x14(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x14(r30)
    lfs     f1, 0xc(r30)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r30)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x7c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
branch_0x801036d0:
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lfd     f26, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    addi    sp, sp, 0xf0
    blr


.globl __ct__Q211TBGTentacle5TNodeFv
__ct__Q211TBGTentacle5TNodeFv: # 0x80103700
    li      r0, 0x0
    stw     r0, 0x24(r3)
    lfs     f0, -0x56d0(r2)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x18(r3)
    blr


.globl perform__12TBGAttackHitFUlPQ26JDrama9TGraphics
perform__12TBGAttackHitFUlPQ26JDrama9TGraphics: # 0x80103734
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stfd    f29, 0xd0(sp)
    stfd    f28, 0xc8(sp)
    stmw    r27, 0xb4(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x80103b14
    lwz     r3, 0x68(r30)
    lfs     f28, 0x6c(r30)
    lwz     r29, 0x28(r3)
    lwz     r0, 0x28(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x80103780
    mr      r3, r29
    bl      calcTable__11TSplinePathFv
branch_0x80103780:
    lfs     f0, -0x56d0(r2)
    fcmpo   cr0, f28, f0
    bge-    branch_0x80103790
    fmr     f28, f0
branch_0x80103790:
    lfs     f0, -0x56cc(r2)
    fcmpo   cr0, f0, f28
    bge-    branch_0x801037a0
    fmr     f28, f0
branch_0x801037a0:
    fmr     f1, f28
    lwz     r4, 0x1c(r29)
    lwz     r5, 0xc(r29)
    mr      r3, r29
    lwz     r6, 0x18(r29)
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f30, f1
    lwz     r4, 0x1c(r29)
    fmr     f1, f28
    lwz     r5, 0x8(r29)
    lwz     r6, 0x14(r29)
    mr      r3, r29
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f29, f1
    lwz     r4, 0x1c(r29)
    fmr     f1, f28
    lwz     r5, 0x4(r29)
    lwz     r6, 0x10(r29)
    mr      r3, r29
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f2, f29
    addi    r3, sp, 0xa4
    fmr     f3, f30
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80103b38
    lwz     r3, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0xac(sp)
    stw     r0, 0x18(r30)
    lwz     r4, 0x68(r30)
    lwz     r3, 0x3c(r4)
    lwz     r0, 0x64(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80103834
    li      r0, 0x0
    b       branch_0x8010388c

branch_0x80103834:
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0xa
    bne-    branch_0x80103848
    li      r0, 0x0
    b       branch_0x8010388c

branch_0x80103848:
    cmpwi   r0, 0x4
    bne-    branch_0x80103858
    li      r0, 0x0
    b       branch_0x8010388c

branch_0x80103858:
    cmpwi   r0, 0x6
    bne-    branch_0x80103868
    li      r0, 0x0
    b       branch_0x8010388c

branch_0x80103868:
    cmpwi   r0, 0x1
    beq-    branch_0x80103880
    lwz     r3, 0x34(r4)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x80103888
branch_0x80103880:
    li      r0, 0x1
    b       branch_0x8010388c

branch_0x80103888:
    li      r0, 0x0
branch_0x8010388c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80103b14
    lfs     f28, -0x56cc(r2)
    li      r31, 0x0
    lfs     f29, -0x562c(r2)
    li      r29, 0x0
    lfs     f30, -0x56d0(r2)
    lfs     f31, -0x56b8(r2)
    b       branch_0x80103b08

branch_0x801038b0:
    lwz     r4, R13Off_m0x60d8(r13)
    lwz     r3, 0x44(r30)
    lwz     r0, 0x7c(r4)
    lwzx    r6, r3, r29
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x147
    blt-    branch_0x801038dc
    cmplwi  r0, 0x14a
    bgt-    branch_0x801038dc
    li      r0, 0x1
    b       branch_0x801038e0

branch_0x801038dc:
    li      r0, 0x0
branch_0x801038e0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80103b00
    lwz     r28, 0x68(r30)
    lwz     r27, 0x34(r28)
    lwz     r0, 0x168(r27)
    cmpwi   r0, 0x7
    bne-    branch_0x801039ec
    lwz     r5, 0x10(r6)
    addi    r3, sp, 0x90
    lwz     r0, 0x14(r6)
    mr      r4, r3
    stw     r5, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0x98(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x98(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x98(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x8010396c
    stfs    f30, 0x98(sp)
    stfs    f30, 0x94(sp)
    stfs    f30, 0x90(sp)
    b       branch_0x80103980

branch_0x8010396c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f28, f1
    addi    r3, sp, 0x90
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80103980:
    lfs     f0, 0x90(sp)
    addi    r3, r30, 0x0
    li      r4, 0xe
    fmuls   f0, f0, f31
    stfs    f0, 0x90(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x94(sp)
    lfs     f0, 0x98(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x98(sp)
    lfs     f0, 0x94(sp)
    fadds   f0, f0, f28
    stfs    f0, 0x94(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x90
    lfs     f1, -0x5624(r2)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x34(r28)
    li      r4, 0x5
    bl      showMessage__10TBossGessoFUl
    lwz     r3, 0x34(r28)
    bl      stopIfRoll__10TBossGessoFv
    b       branch_0x80103b00

branch_0x801039ec:
    cmpwi   r0, 0x4
    bne-    branch_0x80103ae4
    lwz     r5, 0x10(r6)
    addi    r3, sp, 0x7c
    lwz     r0, 0x14(r6)
    mr      r4, r3
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0x84(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x10(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x14(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x18(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80103a64
    stfs    f30, 0x84(sp)
    stfs    f30, 0x80(sp)
    stfs    f30, 0x7c(sp)
    b       branch_0x80103a78

branch_0x80103a64:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f28, f1
    addi    r3, sp, 0x7c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80103a78:
    lfs     f0, 0x7c(sp)
    addi    r3, r27, 0x0
    li      r4, 0xe
    fmuls   f0, f0, f31
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x80(sp)
    lfs     f0, 0x84(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x84(sp)
    lfs     f0, 0x80(sp)
    fadds   f0, f0, f28
    stfs    f0, 0x80(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r27, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x7c
    lfs     f1, -0x5624(r2)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x34(r28)
    li      r4, 0x5
    bl      showMessage__10TBossGessoFUl
    lwz     r3, 0x34(r28)
    bl      stopIfRoll__10TBossGessoFv
    b       branch_0x80103b00

branch_0x80103ae4:
    mr      r3, r6
    lwz     r12, 0x0(r6)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80103b00:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x80103b08:
    lhz     r0, 0x48(r30)
    cmpw    r31, r0
    blt+    branch_0x801038b0
branch_0x80103b14:
    lmw     r27, 0xb4(sp)
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    lfd     f29, 0xd0(sp)
    lfd     f28, 0xc8(sp)
    addi    sp, sp, 0xe8
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80103b38
set_f___Q29JGeometry8TVec3_f_Ffff_80103b38: # 0x80103b38
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl perform__10TBGTakeHitFUlPQ26JDrama9TGraphics
perform__10TBGTakeHitFUlPQ26JDrama9TGraphics: # 0x80103b48
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x240(sp)
    stfd    f31, 0x238(sp)
    stfd    f30, 0x230(sp)
    stfd    f29, 0x228(sp)
    stfd    f28, 0x220(sp)
    stfd    f27, 0x218(sp)
    stfd    f26, 0x210(sp)
    stmw    r27, 0x1fc(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x80104250
    lwz     r3, 0x70(r30)
    lfs     f28, -0x56cc(r2)
    lwz     r29, 0x28(r3)
    lwz     r0, 0x28(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x80103b9c
    mr      r3, r29
    bl      calcTable__11TSplinePathFv
branch_0x80103b9c:
    fmr     f1, f28
    lwz     r4, 0x1c(r29)
    lwz     r5, 0xc(r29)
    mr      r3, r29
    lwz     r6, 0x18(r29)
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f30, f1
    lwz     r4, 0x1c(r29)
    fmr     f1, f28
    lwz     r5, 0x8(r29)
    lwz     r6, 0x14(r29)
    mr      r3, r29
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f29, f1
    lwz     r4, 0x1c(r29)
    fmr     f1, f28
    lwz     r5, 0x4(r29)
    lwz     r6, 0x10(r29)
    mr      r3, r29
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f2, f29
    addi    r3, sp, 0x1a8
    fmr     f3, f30
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80103b38
    lwz     r4, 0x1a8(sp)
    mr      r3, r30
    lwz     r0, 0x1ac(sp)
    stw     r4, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x1b0(sp)
    stw     r0, 0x18(r30)
    lfs     f2, -0x56c8(r2)
    lfs     f1, 0x5c(r30)
    lfs     f0, 0x14(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80103eec
    lwz     r3, 0x70(r30)
    lfs     f30, -0x56d0(r2)
    lwz     r3, 0x2c(r3)
    lfs     f3, -0x56cc(r2)
    lwz     r4, 0x4(r3)
    lfs     f0, -0x562c(r2)
    lwz     r3, 0x4(r4)
    lwz     r4, 0x58(r4)
    lhz     r3, 0x1c(r3)
    addi    r0, r3, -0x1
    mulli   r0, r0, 0x30
    add     r29, r4, r0
    lfs     f5, 0x20(r29)
    lfs     f2, 0x10(r29)
    fmuls   f1, f30, f5
    lfs     f4, 0x0(r29)
    fmuls   f2, f30, f2
    fmsubs  f29, f30, f4, f1
    fmsubs  f28, f3, f5, f2
    fnmsubs  f31, f3, f4, f2
    fmuls   f1, f29, f29
    fmadds  f1, f28, f28, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80103cbc
    fmr     f29, f30
    fmr     f28, f29
    b       branch_0x80103cd4

branch_0x80103cbc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x56cc(r2)
    fmuls   f0, f0, f1
    fmuls   f28, f28, f0
    fmuls   f29, f29, f0
    fmuls   f30, f31, f0
branch_0x80103cd4:
    lfs     f7, -0x56d0(r2)
    lfs     f2, -0x56cc(r2)
    fmuls   f1, f28, f7
    lfs     f0, -0x562c(r2)
    fmuls   f3, f29, f7
    fmsubs  f31, f30, f7, f1
    fnmsubs  f27, f30, f2, f3
    fmsubs  f26, f28, f2, f3
    fmuls   f1, f31, f31
    fmadds  f1, f27, f27, f1
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80103d18
    fmr     f6, f7
    fmr     f5, f6
    b       branch_0x80103d30

branch_0x80103d18:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x56cc(r2)
    fmuls   f0, f0, f1
    fmuls   f5, f27, f0
    fmuls   f6, f31, f0
    fmuls   f7, f26, f0
branch_0x80103d30:
    stfs    f28, 0x80(r30)
    addi    r31, sp, 0x1bc
    stfs    f29, 0x90(r30)
    stfs    f30, 0xa0(r30)
    lfs     f1, -0x56d0(r2)
    stfs    f1, 0x84(r30)
    lfs     f0, -0x56cc(r2)
    stfs    f0, 0x94(r30)
    stfs    f1, 0xa4(r30)
    stfs    f5, 0x88(r30)
    stfs    f6, 0x98(r30)
    stfs    f7, 0xa8(r30)
    lfs     f0, 0x58(r30)
    lfs     f2, 0xc(r29)
    fmuls   f5, f5, f0
    lfs     f3, 0x1c(r29)
    fmuls   f6, f6, f0
    lfs     f4, 0x2c(r29)
    fmuls   f7, f7, f0
    fadds   f2, f2, f5
    fadds   f3, f3, f6
    fadds   f4, f4, f7
    stfs    f2, 0x8c(r30)
    stfs    f3, 0x9c(r30)
    stfs    f4, 0xac(r30)
    lwz     r4, 0x70(r30)
    lwz     r3, 0x20(r4)
    lwz     r4, 0x24(r4)
    addi    r0, r3, -0x1
    mulli   r3, r0, 0x28
    addi    r0, r3, 0xc
    add     r4, r4, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1b4(sp)
    stw     r0, 0x1b8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1bc(sp)
    stfs    f1, 0x1b8(sp)
    lfs     f0, 0x1b4(sp)
    lfs     f1, -0x55fc(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(sp)
    lfs     f0, 0x1b8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(sp)
    lfs     f0, 0x1bc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1bc(sp)
    lfs     f1, 0x74(r30)
    lfs     f3, 0x7c(r30)
    lfs     f0, 0x78(r30)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x562c(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80103e78
    lwz     r3, 0x70(r30)
    addi    r4, r30, 0x74
    lwz     r5, 0x20(r3)
    lwz     r3, 0x24(r3)
    addi    r0, r5, -0x1
    mulli   r0, r0, 0x28
    add     r3, r3, r0
    addi    r3, r3, 0xc
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f1, 0x1b4(sp)
    lfs     f0, 0x74(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x1b4(sp)
    lfs     f1, 0x1b8(sp)
    lfs     f0, 0x78(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x1b8(sp)
    lfs     f1, 0x1bc(sp)
    lfs     f0, 0x7c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x1bc(sp)
branch_0x80103e78:
    lwz     r3, 0x68(r30)
    mr      r5, r31
    lfs     f1, 0x1b4(sp)
    addi    r4, sp, 0x1b4
    lfsu    f0, 0x10(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x1b4(sp)
    lfs     f1, 0x1b8(sp)
    lfs     f0, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x1b8(sp)
    lfs     f1, 0x1bc(sp)
    lfs     f0, 0x8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x1bc(sp)
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x1b8(sp)
    lfs     f2, -0x563c(r2)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r3, 0x68(r30)
    addi    r4, sp, 0x1b4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x56d0(r2)
    stfs    f0, 0x7c(r30)
    stfs    f0, 0x78(r30)
    stfs    f0, 0x74(r30)
branch_0x80103eec:
    lwz     r4, 0x70(r30)
    lwz     r3, 0x3c(r4)
    lwz     r0, 0x64(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80103f08
    li      r0, 0x0
    b       branch_0x80103f60

branch_0x80103f08:
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0xa
    bne-    branch_0x80103f1c
    li      r0, 0x0
    b       branch_0x80103f60

branch_0x80103f1c:
    cmpwi   r0, 0x4
    bne-    branch_0x80103f2c
    li      r0, 0x0
    b       branch_0x80103f60

branch_0x80103f2c:
    cmpwi   r0, 0x6
    bne-    branch_0x80103f3c
    li      r0, 0x0
    b       branch_0x80103f60

branch_0x80103f3c:
    cmpwi   r0, 0x1
    beq-    branch_0x80103f54
    lwz     r3, 0x34(r4)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x80103f5c
branch_0x80103f54:
    li      r0, 0x1
    b       branch_0x80103f60

branch_0x80103f5c:
    li      r0, 0x0
branch_0x80103f60:
    clrlwi. r0, r0, 24
    beq-    branch_0x80104210
    lfs     f28, -0x56cc(r2)
    li      r31, 0x0
    lfs     f29, -0x562c(r2)
    li      r29, 0x0
    lfs     f30, -0x56d0(r2)
    lfs     f31, -0x56b8(r2)
    b       branch_0x80104204

branch_0x80103f84:
    lwz     r3, 0x44(r30)
    lwzx    r4, r3, r29
    lwz     r3, 0x4c(r4)
    addi    r6, r4, 0x0
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80103fa8
    li      r0, 0x1
    b       branch_0x80103fac

branch_0x80103fa8:
    li      r0, 0x0
branch_0x80103fac:
    clrlwi. r0, r0, 24
    beq-    branch_0x801041fc
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r0, 0x7c(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x147
    blt-    branch_0x80103fd8
    cmplwi  r0, 0x14a
    bgt-    branch_0x80103fd8
    li      r0, 0x1
    b       branch_0x80103fdc

branch_0x80103fd8:
    li      r0, 0x0
branch_0x80103fdc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801041fc
    lwz     r28, 0x70(r30)
    lwz     r27, 0x34(r28)
    lwz     r0, 0x168(r27)
    cmpwi   r0, 0x7
    bne-    branch_0x801040e8
    lwz     r5, 0x10(r6)
    addi    r3, sp, 0x160
    lwz     r0, 0x14(r6)
    mr      r4, r3
    stw     r5, 0x160(sp)
    stw     r0, 0x164(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0x168(sp)
    lfs     f1, 0x160(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x160(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x164(sp)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x168(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80104068
    stfs    f30, 0x168(sp)
    stfs    f30, 0x164(sp)
    stfs    f30, 0x160(sp)
    b       branch_0x8010407c

branch_0x80104068:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f28, f1
    addi    r3, sp, 0x160
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8010407c:
    lfs     f0, 0x160(sp)
    addi    r3, r30, 0x0
    li      r4, 0xe
    fmuls   f0, f0, f31
    stfs    f0, 0x160(sp)
    lfs     f0, 0x164(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x164(sp)
    lfs     f0, 0x168(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x168(sp)
    lfs     f0, 0x164(sp)
    fadds   f0, f0, f28
    stfs    f0, 0x164(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x160
    lfs     f1, -0x5624(r2)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x34(r28)
    li      r4, 0x5
    bl      showMessage__10TBossGessoFUl
    lwz     r3, 0x34(r28)
    bl      stopIfRoll__10TBossGessoFv
    b       branch_0x801041fc

branch_0x801040e8:
    cmpwi   r0, 0x4
    bne-    branch_0x801041e0
    lwz     r5, 0x10(r6)
    addi    r3, sp, 0x14c
    lwz     r0, 0x14(r6)
    mr      r4, r3
    stw     r5, 0x14c(sp)
    stw     r0, 0x150(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0x154(sp)
    lfs     f1, 0x14c(sp)
    lfs     f0, 0x10(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x14c(sp)
    lfs     f1, 0x150(sp)
    lfs     f0, 0x14(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x150(sp)
    lfs     f1, 0x154(sp)
    lfs     f0, 0x18(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x154(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80104160
    stfs    f30, 0x154(sp)
    stfs    f30, 0x150(sp)
    stfs    f30, 0x14c(sp)
    b       branch_0x80104174

branch_0x80104160:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f28, f1
    addi    r3, sp, 0x14c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80104174:
    lfs     f0, 0x14c(sp)
    addi    r3, r27, 0x0
    li      r4, 0xe
    fmuls   f0, f0, f31
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x150(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x150(sp)
    lfs     f0, 0x154(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x154(sp)
    lfs     f0, 0x150(sp)
    fadds   f0, f0, f28
    stfs    f0, 0x150(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r27, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x14c
    lfs     f1, -0x5624(r2)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x34(r28)
    li      r4, 0x5
    bl      showMessage__10TBossGessoFUl
    lwz     r3, 0x34(r28)
    bl      stopIfRoll__10TBossGessoFv
    b       branch_0x801041fc

branch_0x801041e0:
    mr      r3, r6
    lwz     r12, 0x0(r6)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801041fc:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x80104204:
    lhz     r0, 0x48(r30)
    cmpw    r31, r0
    blt+    branch_0x80103f84
branch_0x80104210:
    lwz     r3, 0x70(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80104250
    cmpwi   r0, 0x4
    beq-    branch_0x80104250
    lwz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80104250
    mr      r3, r0
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80104250:
    lmw     r27, 0x1fc(sp)
    lwz     r0, 0x244(sp)
    lfd     f31, 0x238(sp)
    lfd     f30, 0x230(sp)
    mtlr    r0
    lfd     f29, 0x228(sp)
    lfd     f28, 0x220(sp)
    lfd     f27, 0x218(sp)
    lfd     f26, 0x210(sp)
    addi    sp, sp, 0x240
    blr


.globl receiveMessage__10TBGTakeHitFP9THitActorUl
receiveMessage__10TBGTakeHitFP9THitActorUl: # 0x8010427c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r3, 0x0
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801043c8
    cmplwi  r5, 0x4
    bne-    branch_0x80104330
    lwz     r0, 0x6c(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801042c4
    cmplw   r0, r31
    beq-    branch_0x801042c4
    li      r3, 0x0
    b       branch_0x801043cc

branch_0x801042c4:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0xa
    bne-    branch_0x801042dc
    li      r0, 0x0
    b       branch_0x80104300

branch_0x801042dc:
    cmpwi   r0, 0x4
    bne-    branch_0x801042ec
    li      r0, 0x0
    b       branch_0x80104300

branch_0x801042ec:
    cmpwi   r0, 0x6
    bne-    branch_0x801042fc
    li      r0, 0x0
    b       branch_0x80104300

branch_0x801042fc:
    li      r0, 0x1
branch_0x80104300:
    clrlwi. r0, r0, 24
    beq-    branch_0x80104330
    stw     r4, 0x68(r31)
    li      r4, 0x3
    lwz     r3, 0x70(r31)
    bl      changeStateAndFixNodes__11TBGTentacleFi
    lwz     r4, 0x70(r31)
    li      r0, 0x1
    li      r3, 0x1
    lwz     r4, 0x34(r4)
    stb     r0, 0x1a0(r4)
    b       branch_0x801043cc

branch_0x80104330:
    addi    r0, r5, -0x7
    cmplwi  r0, 0x1
    bgt-    branch_0x80104380
    li      r0, 0x0
    stw     r0, 0x68(r31)
    lwz     r3, 0x70(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80104378
    lwz     r4, 0x34(r3)
    lwz     r0, 0x168(r4)
    cmpwi   r0, 0x6
    bne-    branch_0x80104370
    li      r4, 0x9
    bl      changeStateAndFixNodes__11TBGTentacleFi
    b       branch_0x80104378

branch_0x80104370:
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80104378:
    li      r3, 0x1
    b       branch_0x801043cc

branch_0x80104380:
    cmplwi  r5, 0x1
    bgt-    branch_0x801043c8
    lwz     r3, 0x70(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x801043c8
    cmpwi   r0, 0x5
    beq-    branch_0x801043c8
    cmpwi   r0, 0x3
    beq-    branch_0x801043c8
    cmpwi   r0, 0x6
    beq-    branch_0x801043c8
    cmpwi   r0, 0xa
    beq-    branch_0x801043c8
    li      r4, 0x5
    bl      changeStateAndFixNodes__11TBGTentacleFi
    li      r3, 0x1
    b       branch_0x801043cc

branch_0x801043c8:
    li      r3, 0x0
branch_0x801043cc:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl moveRequest__10TBGTakeHitFRCQ29JGeometry8TVec3_f_
moveRequest__10TBGTakeHitFRCQ29JGeometry8TVec3_f_: # 0x801043e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    mr      r31, r3
    addi    r5, sp, 0xf4
    stw     r30, 0x108(sp)
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, R13Off_m0x6328(r13)
    stw     r6, 0xec(sp)
    lfs     f2, -0x563c(r2)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x8(r4)
    addi    r4, sp, 0xec
    stw     r0, 0xf4(sp)
    lfs     f1, 0xf0(sp)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r0, 0xec(sp)
    lwz     r3, 0xf0(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0xf4(sp)
    stw     r3, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lwz     r4, 0x70(r31)
    lfs     f1, 0xdc(sp)
    lwz     r3, 0x34(r4)
    lfsu    f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xe4(sp)
    lfs     f1, 0xdc(sp)
    lfs     f3, 0xe4(sp)
    lfs     f0, 0xe0(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    lwz     r3, 0x38(r4)
    fmuls   f1, f0, f0
    lfs     f0, -0x56d0(r2)
    lfs     f5, 0x40(r3)
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801044b4
    b       branch_0x801044d8

branch_0x801044b4:
    frsqrte f3, f4
    lfs     f2, -0x56c8(r2)
    lfs     f0, -0x56c4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801044d8:
    fcmpo   cr0, f4, f5
    ble-    branch_0x8010467c
    lwz     r3, 0x70(r31)
    lwz     r3, 0x34(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x60d8(r13)
    lis     r0, 0x4330
    lfs     f2, 0x25c(r3)
    addi    r3, sp, 0xc0
    lha     r4, 0x90(r5)
    lfs     f0, 0x8c(r5)
    xoris   r4, r4, 0x8000
    lfd     f1, -0x5678(r2)
    stw     r4, 0x104(sp)
    fmuls   f5, f2, f0
    lfs     f3, -0x5668(r2)
    stw     r0, 0x100(sp)
    lfs     f4, -0x56b4(r2)
    lfd     f0, 0x100(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    fsubs   f0, f0, f1
    lwz     r6, R13Off_m0x5ea4(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    lfs     f2, -0x56d0(r2)
    fmuls   f0, f3, f0
    fmuls   f0, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0xf8(sp)
    lwz     r5, 0xfc(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f5, f1
    fmuls   f1, f5, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80103b38
    lwz     r3, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    stw     r3, 0x74(r31)
    stw     r0, 0x78(r31)
    lwz     r0, 0xc8(sp)
    stw     r0, 0x7c(r31)
    lwz     r30, 0x70(r31)
    lfs     f0, 0xec(sp)
    lwz     r4, 0x34(r30)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0xd4(sp)
    lfs     f1, 0xcc(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0xf0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xf4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0x78(r31)
    lfs     f2, 0xcc(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x74(r31)
    lfs     f4, 0xd4(sp)
    lfs     f3, 0x7c(r31)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x56d0(r2)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80104644
    lwz     r0, 0x10(r30)
    cmpwi   r0, 0x4
    beq-    branch_0x80104628
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80104628:
    lwz     r3, 0x38(r30)
    lwz     r4, 0x1c(r30)
    lwz     r0, 0xf4(r3)
    cmpw    r4, r0
    bge-    branch_0x80104644
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r30)
branch_0x80104644:
    lwz     r6, 0x70(r31)
    li      r3, 0x0
    lwz     r4, 0xec(sp)
    lwz     r5, 0x20(r6)
    lwz     r6, 0x24(r6)
    addi    r5, r5, -0x1
    lwz     r0, 0xf0(sp)
    mulli   r5, r5, 0x28
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0xf4(sp)
    stw     r0, 0x8(r5)
    b       branch_0x801046b0

branch_0x8010467c:
    lwz     r6, 0x70(r31)
    li      r3, 0x1
    lwz     r4, 0xec(sp)
    lwz     r5, 0x20(r6)
    lwz     r6, 0x24(r6)
    addi    r5, r5, -0x1
    lwz     r0, 0xf0(sp)
    mulli   r5, r5, 0x28
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0xf4(sp)
    stw     r0, 0x8(r5)
branch_0x801046b0:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    addi    sp, sp, 0x110
    blr


.globl getTakingMtx__10TBGTakeHitFv
getTakingMtx__10TBGTakeHitFv: # 0x801046c8
    addi    r3, r3, 0x80
    blr


.globl calc__18TBGTentacleMtxCalcFUs
calc__18TBGTentacleMtxCalcFUs: # 0x801046d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2d0(sp)
    stfd    f31, 0x2c8(sp)
    stfd    f30, 0x2c0(sp)
    stfd    f29, 0x2b8(sp)
    stmw    r24, 0x298(sp)
    mr      r26, r3
    mr      r27, r4
    lwz     r3, 0x68(r3)
    lwz     r5, 0x2c(r3)
    addi    r3, r26, 0x50
    lwz     r5, 0x4(r5)
    lwz     r5, 0x4(r5)
    lhz     r31, 0x1c(r5)
    bl      calc__13J3DMtxCalcAnmFUs
    addi    r30, r31, -0x1
    lwz     r4, 0x68(r26)
    clrlwi  r29, r27, 16
    lfd     f3, -0x55e8(r2)
    xoris   r0, r30, 0x8000
    stw     r29, 0x294(sp)
    lis     r3, 0x4330
    lwz     r24, 0x28(r4)
    stw     r0, 0x28c(sp)
    mulli   r28, r29, 0x30
    lwz     r0, 0x28(r24)
    stw     r3, 0x290(sp)
    lfd     f1, -0x5678(r2)
    cmpwi   r0, 0x0
    stw     r3, 0x288(sp)
    lfd     f2, 0x290(sp)
    lfd     f0, 0x288(sp)
    fsubs   f2, f2, f3
    lwz     r4, 0x2c(r4)
    fsubs   f0, f0, f1
    lwz     r3, 0x4(r4)
    fdivs   f31, f2, f0
    lwz     r3, 0x58(r3)
    add     r25, r3, r28
    bne-    branch_0x8010477c
    mr      r3, r24
    bl      calcTable__11TSplinePathFv
branch_0x8010477c:
    lfs     f0, -0x56d0(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8010478c
    fmr     f31, f0
branch_0x8010478c:
    lfs     f0, -0x56cc(r2)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8010479c
    fmr     f31, f0
branch_0x8010479c:
    fmr     f1, f31
    lwz     r4, 0x1c(r24)
    lwz     r5, 0xc(r24)
    mr      r3, r24
    lwz     r6, 0x18(r24)
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f30, f1
    lwz     r4, 0x1c(r24)
    fmr     f1, f31
    lwz     r5, 0x8(r24)
    lwz     r6, 0x14(r24)
    mr      r3, r24
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f29, f1
    lwz     r4, 0x1c(r24)
    fmr     f1, f31
    lwz     r5, 0x4(r24)
    lwz     r6, 0x10(r24)
    mr      r3, r24
    bl      calcSpline__11TSplinePathFfPfPfPf
    fmr     f2, f29
    addi    r3, sp, 0x1d4
    fmr     f3, f30
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80103b38
    lwz     r0, 0x1d4(sp)
    cmpw    r29, r30
    lwz     r3, 0x1d8(sp)
    stw     r0, 0x278(sp)
    lwz     r0, 0x1dc(sp)
    stw     r3, 0x27c(sp)
    stw     r0, 0x280(sp)
    lfs     f0, 0x278(sp)
    stfs    f0, 0xc(r25)
    lfs     f31, 0x27c(sp)
    stfs    f31, 0x1c(r25)
    lfs     f30, 0x280(sp)
    stfs    f30, 0x2c(r25)
    bne-    branch_0x80104930
    lwz     r4, 0x68(r26)
    addi    r3, r29, -0x2
    addi    r0, r29, -0x1
    lwz     r4, 0x2c(r4)
    mulli   r3, r3, 0x30
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r5, r4, r3
    lfs     f2, 0x2c(r5)
    addi    r3, sp, 0x128
    lfs     f1, 0x1c(r5)
    addi    r4, sp, 0x240
    lfs     f0, 0xc(r5)
    stfs    f0, 0x240(sp)
    stfs    f1, 0x244(sp)
    stfs    f2, 0x248(sp)
    lwz     r5, 0x68(r26)
    lwz     r5, 0x2c(r5)
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    lfs     f0, 0xc(r5)
    stfs    f0, 0x234(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x238(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x23c(sp)
    lwz     r0, 0x234(sp)
    lwz     r5, 0x238(sp)
    stw     r0, 0x128(sp)
    lwz     r0, 0x23c(sp)
    stw     r5, 0x12c(sp)
    stw     r0, 0x130(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x128(sp)
    lwz     r3, 0x12c(sp)
    stw     r0, 0x228(sp)
    lwz     r0, 0x130(sp)
    stw     r3, 0x22c(sp)
    lfs     f0, -0x562c(r2)
    stw     r0, 0x230(sp)
    lfs     f2, 0x228(sp)
    lfs     f1, 0x22c(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x230(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80104918
    addi    r3, sp, 0x228
    addi    r4, sp, 0x268
    bl      PSVECNormalize
    b       branch_0x801049e0

branch_0x80104918:
    lfs     f1, -0x56cc(r2)
    lfs     f0, -0x56d0(r2)
    stfs    f1, 0x268(sp)
    stfs    f0, 0x26c(sp)
    stfs    f0, 0x270(sp)
    b       branch_0x801049e0

branch_0x80104930:
    lwz     r3, 0x68(r26)
    addi    r0, r29, 0x1
    mulli   r0, r0, 0x30
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x218(sp)
    stfs    f1, 0x21c(sp)
    stfs    f2, 0x220(sp)
    lfs     f1, 0x218(sp)
    lfs     f0, 0x278(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x218(sp)
    lfs     f0, 0x21c(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x21c(sp)
    lfs     f0, 0x220(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x220(sp)
    lfs     f1, 0x218(sp)
    lfs     f3, 0x220(sp)
    lfs     f0, 0x21c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x562c(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x801049cc
    addi    r3, sp, 0x218
    addi    r4, sp, 0x268
    bl      PSVECNormalize
    b       branch_0x801049e0

branch_0x801049cc:
    lfs     f1, -0x56cc(r2)
    lfs     f0, -0x56d0(r2)
    stfs    f1, 0x268(sp)
    stfs    f0, 0x26c(sp)
    stfs    f0, 0x270(sp)
branch_0x801049e0:
    clrlwi. r0, r27, 16
    lfs     f29, -0x56cc(r2)
    bne-    branch_0x80104a00
    lfs     f0, -0x56d0(r2)
    stfs    f0, 0x25c(sp)
    stfs    f29, 0x260(sp)
    stfs    f0, 0x264(sp)
    b       branch_0x80104bb8

branch_0x80104a00:
    lwz     r3, 0x68(r26)
    addi    r0, r29, -0x1
    mulli   r0, r0, 0x30
    lfs     f6, 0x270(sp)
    lwz     r3, 0x2c(r3)
    lfs     f8, 0x268(sp)
    lwz     r3, 0x4(r3)
    lfs     f7, 0x26c(sp)
    lwz     r3, 0x58(r3)
    add     r24, r3, r0
    lfs     f4, 0x18(r24)
    lfs     f5, 0x28(r24)
    fmuls   f2, f6, f4
    lfs     f3, 0x8(r24)
    fmuls   f1, f8, f5
    fmuls   f0, f7, f3
    fmsubs  f2, f7, f5, f2
    fmsubs  f1, f6, f3, f1
    fmsubs  f0, f8, f4, f0
    stfs    f2, 0x25c(sp)
    stfs    f1, 0x260(sp)
    stfs    f0, 0x264(sp)
    lfs     f1, 0x25c(sp)
    lfs     f0, 0x260(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x264(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x5610(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80104a9c
    lfs     f2, 0x24(r24)
    lfs     f1, 0x14(r24)
    lfs     f0, 0x4(r24)
    stfs    f0, 0x25c(sp)
    stfs    f1, 0x260(sp)
    stfs    f2, 0x264(sp)
branch_0x80104a9c:
    addi    r3, sp, 0x25c
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f2, 0x2c(r24)
    addi    r3, sp, 0x1fc
    lfs     f1, 0x1c(r24)
    lfs     f0, 0xc(r24)
    stfs    f0, 0x1fc(sp)
    stfs    f1, 0x200(sp)
    stfs    f2, 0x204(sp)
    lfs     f1, 0x1fc(sp)
    lfs     f0, 0x278(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x200(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x200(sp)
    lfs     f0, 0x204(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x204(sp)
    bl      PSVECMag
    lfs     f0, -0x56d0(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80104b04
    lfs     f29, -0x56cc(r2)
    b       branch_0x80104b34

branch_0x80104b04:
    lwz     r3, 0x68(r26)
    lfs     f0, -0x56c4(r2)
    lwz     r0, 0x10(r3)
    fmuls   f1, f1, f0
    cmpwi   r0, 0x4
    bne-    branch_0x80104b28
    lwz     r3, 0x38(r3)
    lfs     f0, 0x11c(r3)
    b       branch_0x80104b30

branch_0x80104b28:
    lwz     r3, 0x38(r3)
    lfs     f0, 0x18(r3)
branch_0x80104b30:
    fdivs   f29, f0, f1
branch_0x80104b34:
    cmpw    r29, r30
    lfs     f4, 0x0(r24)
    lfs     f2, 0x10(r24)
    lfs     f5, 0x20(r24)
    lfs     f6, 0x4(r24)
    lfs     f7, 0x14(r24)
    lfs     f8, 0x24(r24)
    bge-    branch_0x80104bb8
    lfs     f0, 0x26c(sp)
    lfs     f1, 0x268(sp)
    fmuls   f0, f2, f0
    lfs     f3, 0x270(sp)
    lfs     f2, -0x56d0(r2)
    fmadds  f0, f4, f1, f0
    fmadds  f0, f5, f3, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x80104bb8
    lfs     f0, 0x260(sp)
    lfs     f3, 0x25c(sp)
    fmuls   f0, f7, f0
    lfs     f1, 0x264(sp)
    fmadds  f0, f6, f3, f0
    fmadds  f0, f8, f1, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x80104bb8
    fneg    f0, f3
    stfs    f0, 0x25c(sp)
    lfs     f0, 0x260(sp)
    fneg    f0, f0
    stfs    f0, 0x260(sp)
    lfs     f0, 0x264(sp)
    fneg    f0, f0
    stfs    f0, 0x264(sp)
branch_0x80104bb8:
    lfs     f3, 0x270(sp)
    lfs     f6, 0x260(sp)
    lfs     f2, 0x264(sp)
    lfs     f7, 0x268(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x26c(sp)
    fmuls   f1, f7, f2
    lfs     f4, 0x25c(sp)
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x250(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x254(sp)
    stfs    f0, 0x258(sp)
    lfs     f1, 0x250(sp)
    lfs     f0, 0x254(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x258(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x562c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80104c34
    addi    r3, sp, 0x250
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    b       branch_0x80104c48

branch_0x80104c34:
    lfs     f0, -0x56d0(r2)
    stfs    f0, 0x250(sp)
    stfs    f0, 0x254(sp)
    lfs     f0, -0x56cc(r2)
    stfs    f0, 0x258(sp)
branch_0x80104c48:
    cmpw    r29, r30
    beq-    branch_0x80104c5c
    addi    r0, r31, -0x2
    cmpw    r29, r0
    bne-    branch_0x80104c6c
branch_0x80104c5c:
    lfs     f0, -0x56cc(r2)
    fcmpo   cr0, f29, f0
    bge-    branch_0x80104c6c
    fmr     f29, f0
branch_0x80104c6c:
    fabs    f1, f29
    lfs     f0, -0x5610(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80104c90
    frsqrte f0, f29
    fmul    f0, f29, f0
    frsp    f0, f0
    stfs    f0, 0x150(sp)
    lfs     f29, 0x150(sp)
branch_0x80104c90:
    lfs     f0, -0x55f8(r2)
    fcmpo   cr0, f29, f0
    ble-    branch_0x80104ca4
    fmr     f29, f0
    b       branch_0x80104cb4

branch_0x80104ca4:
    lfs     f0, -0x55f4(r2)
    fcmpo   cr0, f29, f0
    bge-    branch_0x80104cb4
    fmr     f29, f0
branch_0x80104cb4:
    lfs     f0, 0x268(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x268(sp)
    lfs     f0, 0x26c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x26c(sp)
    lfs     f0, 0x270(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x270(sp)
    lfs     f0, 0x25c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x25c(sp)
    lfs     f0, 0x260(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x260(sp)
    lfs     f0, 0x264(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x264(sp)
    lfs     f0, 0x250(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x250(sp)
    lfs     f0, 0x254(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x254(sp)
    lfs     f0, 0x258(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x258(sp)
    lwz     r3, 0x68(r26)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x80104e10
    cmpw    r29, r30
    beq-    branch_0x80104d44
    addi    r0, r31, -0x2
    cmpw    r29, r0
    bne-    branch_0x80104e10
branch_0x80104d44:
    lfs     f1, -0x56d0(r2)
    addi    r3, sp, 0x268
    lfs     f0, -0x55f0(r2)
    mr      r4, r3
    stfs    f1, 0x25c(sp)
    stfs    f0, 0x260(sp)
    stfs    f1, 0x264(sp)
    lfs     f3, 0x264(sp)
    lfs     f6, 0x254(sp)
    lfs     f2, 0x258(sp)
    lfs     f7, 0x25c(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x260(sp)
    lfs     f4, 0x250(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x268(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x26c(sp)
    stfs    f0, 0x270(sp)
    bl      PSVECNormalize
    lfs     f3, 0x270(sp)
    addi    r3, sp, 0x250
    lfs     f6, 0x260(sp)
    mr      r4, r3
    lfs     f2, 0x264(sp)
    lfs     f7, 0x268(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x26c(sp)
    lfs     f4, 0x25c(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x250(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x254(sp)
    stfs    f0, 0x258(sp)
    bl      PSVECNormalize
    lfs     f0, 0x250(sp)
    lfs     f1, -0x56b8(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x250(sp)
    lfs     f0, 0x254(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x254(sp)
    lfs     f0, 0x258(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x258(sp)
branch_0x80104e10:
    lwz     r3, 0x68(r26)
    lfs     f0, 0x268(sp)
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x58(r3)
    add     r3, r0, r28
    stfs    f0, 0x0(r3)
    lfs     f0, 0x26c(sp)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x270(sp)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x25c(sp)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x260(sp)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x264(sp)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x250(sp)
    stfs    f0, 0x8(r3)
    lfs     f0, 0x254(sp)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x258(sp)
    stfs    f0, 0x28(r3)
    lwz     r0, 0x2d4(sp)
    lfd     f31, 0x2c8(sp)
    lfd     f30, 0x2c0(sp)
    lfd     f29, 0x2b8(sp)
    lmw     r24, 0x298(sp)
    addi    sp, sp, 0x2d0
    mtlr    r0
    blr


.globl __ct__Q211TBGTentacle15TTentacleParamsFPCc
__ct__Q211TBGTentacle15TTentacleParamsFPCc: # 0x80104e8c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    stw     r4, 0x0(r3)
    lis     r3, unk_80383200@h
    addi    r30, r3, unk_80383200@l
    stw     r0, 0x4(r31)
    addi    r3, r30, 0x228
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x228
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x56ac(r2)
    addi    r3, r30, 0x234
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x234
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x244
    lfs     f0, -0x55e0(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x244
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x254
    lfs     f0, -0x55dc(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x254
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x260
    lfs     f0, -0x55d8(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x260
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x270
    lfs     f0, -0x55d4(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x270
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x280
    lfs     f0, -0x55fc(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x280
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x28c
    lfs     f0, -0x5614(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x28c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x29c
    lfs     f0, -0x55d0(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x29c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x2ac
    lfs     f0, -0x56c4(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x2ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x2bc
    lfs     f0, -0x5628(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x2bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x2cc
    lfs     f0, -0x56b8(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x2cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r0, r3, __vvt__10TParamT_l_@l
    stw     r0, 0xe4(r31)
    li      r0, 0x100
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xf4(r31)
    addi    r0, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x2dc
    stw     r0, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x2dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x2f0
    lfs     f0, -0x5658(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x2f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x304
    lfs     f0, -0x5690(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x304
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x314
    lfs     f0, -0x56a4(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x324
    lfs     f0, -0x5604(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x324
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0x563c(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0x5638(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    mr      r3, r31
    lfs     f0, -0x5604(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__12TBGAttackHitFv
__dt__12TBGAttackHitFv: # 0x80105254
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801052bc
    lis     r3, __vvt__12TBGAttackHit@ha
    addi    r3, r3, __vvt__12TBGAttackHit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801052ac
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801052ac:
    extsh.  r0, r31
    ble-    branch_0x801052bc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801052bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBGTakeHitFv
__dt__10TBGTakeHitFv: # 0x801052d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80105358
    lis     r3, __vvt__10TBGTakeHit@ha
    addi    r3, r3, __vvt__10TBGTakeHit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80105348
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80105348
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80105348:
    extsh.  r0, r31
    ble-    branch_0x80105358
    mr      r3, r30
    bl      __dl__FPv
branch_0x80105358:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TBGTentacleMtxCalcFv
__dt__18TBGTentacleMtxCalcFv: # 0x80105374
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    lis     r3, unk_803bbe28@ha
    addi    r3, r3, unk_803bbe28@l
    beq-    branch_0x80105424
    addi    r0, r3, 0x3f0
    stw     r0, 0x4c(r30)
    addi    r5, r3, 0x424
    addi    r3, r3, 0x414
    lwz     r4, 0x0(r30)
    addi    r0, r30, 0x6c
    stw     r5, 0x0(r4)
    stw     r3, 0x54(r30)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x80105414
    lis     r3, __vvt__22J3DMtxCalcSoftimageAnm@ha
    addi    r3, r3, __vvt__22J3DMtxCalcSoftimageAnm@l
    stw     r3, 0x4c(r30)
    addi    r6, r3, 0x34
    addi    r5, r3, 0x24
    lwz     r4, 0x0(r30)
    addi    r0, r30, 0x68
    addi    r3, r30, 0x50
    stw     r6, 0x0(r4)
    li      r4, 0x0
    stw     r5, 0x54(r30)
    lwz     r5, 0x0(r30)
    subf    r0, r5, r0
    stw     r0, 0x4(r5)
    bl      __dt__13J3DMtxCalcAnmFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__19J3DMtxCalcSoftimageFv
branch_0x80105414:
    extsh.  r0, r31
    ble-    branch_0x80105424
    mr      r3, r30
    bl      __dl__FPv
branch_0x80105424:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_bgtentacle_cpp
__sinit_bgtentacle_cpp: # 0x80105440
    mflr    r0
    lis     r3, unk_803f2ba0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2ba0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80105488
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80105488:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801054b8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801054b8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801054e8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801054e8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80105518
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80105518:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80105548
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80105548:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80105578
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80105578:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801055a8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801055a8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801055d8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801055d8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80105608
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80105608:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80105638
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80105638:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80105668
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80105668:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80105698
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80105698:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801056c8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801056c8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801056f8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801056f8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80105728
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80105728:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8010573c
unk_8010573c: # 0x8010573c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x6c
    b       calc__18TBGTentacleMtxCalcFUs


.globl unk_80105750
unk_80105750: # 0x80105750
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x6c
    b       calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo


.globl unk_80105764
unk_80105764: # 0x80105764
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x6c
    b       recursiveEntry__15J3DMtxCalcBasicFP7J3DNode


.globl unk_80105778
unk_80105778: # 0x80105778
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x6c
    b       recursiveCalc__15J3DMtxCalcBasicFP7J3DNode


.globl unk_8010578c
unk_8010578c: # 0x8010578c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x6c
    b       recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode


.globl unk_801057a0
unk_801057a0: # 0x801057a0
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x6c
    b       init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf


.globl unk_801057b4
unk_801057b4: # 0x801057b4
    addi    r3, r3, -0x50
    b       calc__18TBGTentacleMtxCalcFUs


.globl unk_801057bc
unk_801057bc: # 0x801057bc
    addi    r3, r3, -0x50
    b       __dt__18TBGTentacleMtxCalcFv


.globl unk_801057c4
unk_801057c4: # 0x801057c4
    addi    r3, r3, -0x20
    b       __dt__10TBGTakeHitFv


.globl unk_801057cc
unk_801057cc: # 0x801057cc
    addi    r3, r3, -0x20
    b       __dt__12TBGAttackHitFv

