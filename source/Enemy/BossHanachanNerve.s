
.globl __dt__22TNerveBossHanachanDeadFv
__dt__22TNerveBossHanachanDeadFv: # 0x800f127c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f12c0
    lis     r3, __vvt__22TNerveBossHanachanDead@ha
    addi    r0, r3, __vvt__22TNerveBossHanachanDead@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800f12b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800f12b0:
    extsh.  r0, r4
    ble-    branch_0x800f12c0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f12c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveBossHanachanDeadCFP24TSpineBase_10TLiveActor_
execute__22TNerveBossHanachanDeadCFP24TSpineBase_10TLiveActor_: # 0x800f12d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r31, 0x0(r4)
    li      r4, 0x5
    addi    r3, r31, 0x0
    bl      considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 13, 13
    bne-    branch_0x800f132c
    addi    r3, r31, 0x0
    li      r4, 0xf
    bl      isAllBckAlreadyEnd__13TBossHanachanCF23EnumBossHanachanAnmKind
    clrlwi. r0, r3, 24
    beq-    branch_0x800f132c
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0xf0(r31)
    bl      removeAllMapCollision__13TBossHanachanFv
branch_0x800f132c:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__22TNerveBossHanachanDeadFv
theNerve__22TNerveBossHanachanDeadFv: # 0x800f1344
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x67f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1394
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveBossHanachanDead@ha
    stw     r0, R13Off_m0x67ec(r13)
    addi    r0, r3, __vvt__22TNerveBossHanachanDead@l
    lis     r4, __dt__22TNerveBossHanachanDeadFv@h
    stw     r0, R13Off_m0x67ec(r13)
    lis     r3, unk_803f25c0@h
    addi    r5, r3, unk_803f25c0@l
    addi    r4, r4, __dt__22TNerveBossHanachanDeadFv@l
    addi    r3, r13, R13Off_m0x67ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x67f0(r13)
branch_0x800f1394:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x67ec
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__23TNerveBossHanachanSnortCFP24TSpineBase_10TLiveActor_
execute__23TNerveBossHanachanSnortCFP24TSpineBase_10TLiveActor_: # 0x800f13a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0xc8
    bne-    branch_0x800f143c
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x800f143c
    lwz     r0, 0xf0(r30)
    lis     r3, unk_80010029@h
    addi    r3, r3, unk_80010029@l
    rlwinm  r0, r0, 0, 15, 13
    stw     r0, 0xf0(r30)
    bl      startBGM__5MSBgmFUl
    lbz     r0, 0x13c(r30)
    cmpwi   r0, 0x2
    beq-    branch_0x800f1410
    bge-    branch_0x800f143c
    cmpwi   r0, 0x1
    bge-    branch_0x800f1428
    b       branch_0x800f143c

branch_0x800f1410:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x9c(r3)
    bl      changeTempo__8MSModBgmFUcUc
    b       branch_0x800f143c

branch_0x800f1428:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x1
    li      r5, 0x1
    lwz     r3, 0x9c(r3)
    bl      changeTempo__8MSModBgmFUcUc
branch_0x800f143c:
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      isAllBckAlreadyEnd__13TBossHanachanCF23EnumBossHanachanAnmKind
    clrlwi. r0, r3, 24
    beq-    branch_0x800f14e4
    mr      r3, r30
    bl      goToInitialRecoverGraphNode__13TBossHanachanFv
    lbz     r0, R13Off_m0x6820(r13)
    extsb.  r0, r0
    bne-    branch_0x800f14a8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__29TNerveBossHanachanGraphWander@ha
    stw     r0, R13Off_m0x681c(r13)
    addi    r0, r3, __vvt__29TNerveBossHanachanGraphWander@l
    lis     r4, __dt__29TNerveBossHanachanGraphWanderFv@h
    stw     r0, R13Off_m0x681c(r13)
    lis     r3, unk_803f2578@h
    addi    r5, r3, unk_803f2578@l
    addi    r4, r4, __dt__29TNerveBossHanachanGraphWanderFv@l
    addi    r3, r13, R13Off_m0x681c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6820(r13)
branch_0x800f14a8:
    addi    r4, r13, R13Off_m0x681c
    cmplwi  r4, 0x0
    beq-    branch_0x800f14dc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f14dc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f14dc:
    li      r3, 0x1
    b       branch_0x800f14e8

branch_0x800f14e4:
    li      r3, 0x0
branch_0x800f14e8:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__29TNerveBossHanachanGraphWanderFv
__dt__29TNerveBossHanachanGraphWanderFv: # 0x800f1500
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f1544
    lis     r3, __vvt__29TNerveBossHanachanGraphWander@ha
    addi    r0, r3, __vvt__29TNerveBossHanachanGraphWander@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1534
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800f1534:
    extsh.  r0, r4
    ble-    branch_0x800f1544
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f1544:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__23TNerveBossHanachanSnortFv
theNerve__23TNerveBossHanachanSnortFv: # 0x800f155c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x67f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f15ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveBossHanachanSnort@ha
    stw     r0, R13Off_m0x67f4(r13)
    addi    r0, r3, __vvt__23TNerveBossHanachanSnort@l
    lis     r4, __dt__23TNerveBossHanachanSnortFv@h
    stw     r0, R13Off_m0x67f4(r13)
    lis     r3, unk_803f25b4@h
    addi    r5, r3, unk_803f25b4@l
    addi    r4, r4, __dt__23TNerveBossHanachanSnortFv@l
    addi    r3, r13, R13Off_m0x67f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x67f8(r13)
branch_0x800f15ac:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x67f4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__23TNerveBossHanachanSnortFv
__dt__23TNerveBossHanachanSnortFv: # 0x800f15c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f1604
    lis     r3, __vvt__23TNerveBossHanachanSnort@ha
    addi    r0, r3, __vvt__23TNerveBossHanachanSnort@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800f15f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800f15f4:
    extsh.  r0, r4
    ble-    branch_0x800f1604
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f1604:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveBossHanachanDamageCFP24TSpineBase_10TLiveActor_
execute__24TNerveBossHanachanDamageCFP24TSpineBase_10TLiveActor_: # 0x800f161c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x3
    addi    r3, r30, 0x0
    bl      considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm
    mr      r3, r30
    bl      execSlip__13TBossHanachanFv
    lfs     f1, -0x5968(r2)
    lfs     f0, 0x140(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f16f8
    lwz     r3, 0x1c0(r30)
    lwz     r4, 0x20(r31)
    lha     r0, 0x1bc(r3)
    cmpw    r4, r0
    blt-    branch_0x800f16f8
    mr      r3, r30
    bl      setAnmTimerWhenGetUp__13TBossHanachanFv
    lbz     r0, R13Off_m0x6808(r13)
    extsb.  r0, r0
    bne-    branch_0x800f16bc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveBossHanachanGetUp@ha
    stw     r0, R13Off_m0x6804(r13)
    addi    r0, r3, __vvt__23TNerveBossHanachanGetUp@l
    lis     r4, __dt__23TNerveBossHanachanGetUpFv@h
    stw     r0, R13Off_m0x6804(r13)
    lis     r3, unk_803f259c@h
    addi    r5, r3, unk_803f259c@l
    addi    r4, r4, __dt__23TNerveBossHanachanGetUpFv@l
    addi    r3, r13, R13Off_m0x6804
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6808(r13)
branch_0x800f16bc:
    addi    r4, r13, R13Off_m0x6804
    cmplwi  r4, 0x0
    beq-    branch_0x800f16f0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f16f0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f16f0:
    li      r3, 0x1
    b       branch_0x800f16fc

branch_0x800f16f8:
    li      r3, 0x0
branch_0x800f16fc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __dt__23TNerveBossHanachanGetUpFv
__dt__23TNerveBossHanachanGetUpFv: # 0x800f1714
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f1758
    lis     r3, __vvt__23TNerveBossHanachanGetUp@ha
    addi    r0, r3, __vvt__23TNerveBossHanachanGetUp@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1748
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800f1748:
    extsh.  r0, r4
    ble-    branch_0x800f1758
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f1758:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__24TNerveBossHanachanDamageFv
theNerve__24TNerveBossHanachanDamageFv: # 0x800f1770
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6800(r13)
    extsb.  r0, r0
    bne-    branch_0x800f17c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveBossHanachanDamage@ha
    stw     r0, R13Off_m0x67fc(r13)
    addi    r0, r3, __vvt__24TNerveBossHanachanDamage@l
    lis     r4, __dt__24TNerveBossHanachanDamageFv@h
    stw     r0, R13Off_m0x67fc(r13)
    lis     r3, unk_803f25a8@h
    addi    r5, r3, unk_803f25a8@l
    addi    r4, r4, __dt__24TNerveBossHanachanDamageFv@l
    addi    r3, r13, R13Off_m0x67fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6800(r13)
branch_0x800f17c0:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x67fc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__24TNerveBossHanachanDamageFv
__dt__24TNerveBossHanachanDamageFv: # 0x800f17d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f1818
    lis     r3, __vvt__24TNerveBossHanachanDamage@ha
    addi    r0, r3, __vvt__24TNerveBossHanachanDamage@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1808
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800f1808:
    extsh.  r0, r4
    ble-    branch_0x800f1818
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f1818:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveBossHanachanGetUpCFP24TSpineBase_10TLiveActor_
execute__23TNerveBossHanachanGetUpCFP24TSpineBase_10TLiveActor_: # 0x800f1830
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x2
    addi    r3, r30, 0x0
    bl      considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm
    mr      r3, r30
    bl      isFinishedGetUp__13TBossHanachanCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f18f8
    mr      r3, r30
    bl      setRandomWeakBodyIndex__13TBossHanachanFv
    mr      r3, r30
    bl      setAnmTimerWhenSnort__13TBossHanachanFv
    lbz     r0, R13Off_m0x67f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f18bc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveBossHanachanSnort@ha
    stw     r0, R13Off_m0x67f4(r13)
    addi    r0, r3, __vvt__23TNerveBossHanachanSnort@l
    lis     r4, __dt__23TNerveBossHanachanSnortFv@h
    stw     r0, R13Off_m0x67f4(r13)
    lis     r3, unk_803f25b4@h
    addi    r5, r3, unk_803f25b4@l
    addi    r4, r4, __dt__23TNerveBossHanachanSnortFv@l
    addi    r3, r13, R13Off_m0x67f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x67f8(r13)
branch_0x800f18bc:
    addi    r4, r13, R13Off_m0x67f4
    cmplwi  r4, 0x0
    beq-    branch_0x800f18f0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f18f0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f18f0:
    li      r3, 0x1
    b       branch_0x800f18fc

branch_0x800f18f8:
    li      r3, 0x0
branch_0x800f18fc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl theNerve__23TNerveBossHanachanGetUpFv
theNerve__23TNerveBossHanachanGetUpFv: # 0x800f1914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6808(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1964
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveBossHanachanGetUp@ha
    stw     r0, R13Off_m0x6804(r13)
    addi    r0, r3, __vvt__23TNerveBossHanachanGetUp@l
    lis     r4, __dt__23TNerveBossHanachanGetUpFv@h
    stw     r0, R13Off_m0x6804(r13)
    lis     r3, unk_803f259c@h
    addi    r5, r3, unk_803f259c@l
    addi    r4, r4, __dt__23TNerveBossHanachanGetUpFv@l
    addi    r3, r13, R13Off_m0x6804
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6808(r13)
branch_0x800f1964:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6804
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__22TNerveBossHanachanDownCFP24TSpineBase_10TLiveActor_
execute__22TNerveBossHanachanDownCFP24TSpineBase_10TLiveActor_: # 0x800f1978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x1
    addi    r3, r30, 0x0
    bl      considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm
    lwz     r3, 0x1c0(r30)
    lwz     r4, 0x20(r31)
    lha     r0, 0x1a8(r3)
    cmpw    r4, r0
    blt-    branch_0x800f1a3c
    mr      r3, r30
    bl      setAnmTimerWhenGetUp__13TBossHanachanFv
    lbz     r0, R13Off_m0x6808(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1a00
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveBossHanachanGetUp@ha
    stw     r0, R13Off_m0x6804(r13)
    addi    r0, r3, __vvt__23TNerveBossHanachanGetUp@l
    lis     r4, __dt__23TNerveBossHanachanGetUpFv@h
    stw     r0, R13Off_m0x6804(r13)
    lis     r3, unk_803f259c@h
    addi    r5, r3, unk_803f259c@l
    addi    r4, r4, __dt__23TNerveBossHanachanGetUpFv@l
    addi    r3, r13, R13Off_m0x6804
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6808(r13)
branch_0x800f1a00:
    addi    r4, r13, R13Off_m0x6804
    cmplwi  r4, 0x0
    beq-    branch_0x800f1a34
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f1a34
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f1a34:
    li      r3, 0x1
    b       branch_0x800f1a40

branch_0x800f1a3c:
    li      r3, 0x0
branch_0x800f1a40:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl theNerve__22TNerveBossHanachanDownFv
theNerve__22TNerveBossHanachanDownFv: # 0x800f1a58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6810(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1aa8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveBossHanachanDown@ha
    stw     r0, R13Off_m0x680c(r13)
    addi    r0, r3, __vvt__22TNerveBossHanachanDown@l
    lis     r4, __dt__22TNerveBossHanachanDownFv@h
    stw     r0, R13Off_m0x680c(r13)
    lis     r3, unk_803f2590@h
    addi    r5, r3, unk_803f2590@l
    addi    r4, r4, __dt__22TNerveBossHanachanDownFv@l
    addi    r3, r13, R13Off_m0x680c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6810(r13)
branch_0x800f1aa8:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x680c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__22TNerveBossHanachanDownFv
__dt__22TNerveBossHanachanDownFv: # 0x800f1abc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f1b00
    lis     r3, __vvt__22TNerveBossHanachanDown@ha
    addi    r0, r3, __vvt__22TNerveBossHanachanDown@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1af0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800f1af0:
    extsh.  r0, r4
    ble-    branch_0x800f1b00
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f1b00:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveBossHanachanTumbleCFP24TSpineBase_10TLiveActor_
execute__24TNerveBossHanachanTumbleCFP24TSpineBase_10TLiveActor_: # 0x800f1b18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f1b50
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      setTumbleAnm__13TBossHanachanF36EnumBossHanachanStopMotionBlendOnOff
    b       branch_0x800f1b5c

branch_0x800f1b50:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm
branch_0x800f1b5c:
    mr      r3, r30
    bl      execSlip__13TBossHanachanFv
    lfs     f1, -0x5968(r2)
    lfs     f0, 0x140(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f1c18
    mr      r3, r30
    bl      isTumbleCompletelyAllBody__13TBossHanachanCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f1c18
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x7
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    lbz     r0, R13Off_m0x6810(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1bdc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveBossHanachanDown@ha
    stw     r0, R13Off_m0x680c(r13)
    addi    r0, r3, __vvt__22TNerveBossHanachanDown@l
    lis     r4, __dt__22TNerveBossHanachanDownFv@h
    stw     r0, R13Off_m0x680c(r13)
    lis     r3, unk_803f2590@h
    addi    r5, r3, unk_803f2590@l
    addi    r4, r4, __dt__22TNerveBossHanachanDownFv@l
    addi    r3, r13, R13Off_m0x680c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6810(r13)
branch_0x800f1bdc:
    addi    r4, r13, R13Off_m0x680c
    cmplwi  r4, 0x0
    beq-    branch_0x800f1c10
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f1c10
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f1c10:
    li      r3, 0x1
    b       branch_0x800f1c1c

branch_0x800f1c18:
    li      r3, 0x0
branch_0x800f1c1c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl theNerve__24TNerveBossHanachanTumbleFv
theNerve__24TNerveBossHanachanTumbleFv: # 0x800f1c34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6818(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1c84
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveBossHanachanTumble@ha
    stw     r0, R13Off_m0x6814(r13)
    addi    r0, r3, __vvt__24TNerveBossHanachanTumble@l
    lis     r4, __dt__24TNerveBossHanachanTumbleFv@h
    stw     r0, R13Off_m0x6814(r13)
    lis     r3, unk_803f2584@h
    addi    r5, r3, unk_803f2584@l
    addi    r4, r4, __dt__24TNerveBossHanachanTumbleFv@l
    addi    r3, r13, R13Off_m0x6814
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6818(r13)
branch_0x800f1c84:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6814
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__24TNerveBossHanachanTumbleFv
__dt__24TNerveBossHanachanTumbleFv: # 0x800f1c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f1cdc
    lis     r3, __vvt__24TNerveBossHanachanTumble@ha
    addi    r0, r3, __vvt__24TNerveBossHanachanTumble@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1ccc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800f1ccc:
    extsh.  r0, r4
    ble-    branch_0x800f1cdc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f1cdc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__29TNerveBossHanachanGraphWanderCFP24TSpineBase_10TLiveActor_
execute__29TNerveBossHanachanGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x800f1cf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f1d2c
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
branch_0x800f1d2c:
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      execWalk__13TBossHanachanFb
    mr      r3, r30
    bl      checkFallDecideAndSetup__13TBossHanachanFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f1dc8
    lbz     r0, R13Off_m0x6818(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1d8c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveBossHanachanTumble@ha
    stw     r0, R13Off_m0x6814(r13)
    addi    r0, r3, __vvt__24TNerveBossHanachanTumble@l
    lis     r4, __dt__24TNerveBossHanachanTumbleFv@h
    stw     r0, R13Off_m0x6814(r13)
    lis     r3, unk_803f2584@h
    addi    r5, r3, unk_803f2584@l
    addi    r4, r4, __dt__24TNerveBossHanachanTumbleFv@l
    addi    r3, r13, R13Off_m0x6814
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6818(r13)
branch_0x800f1d8c:
    addi    r4, r13, R13Off_m0x6814
    cmplwi  r4, 0x0
    beq-    branch_0x800f1dc0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f1dc0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f1dc0:
    li      r3, 0x1
    b       branch_0x800f1dcc

branch_0x800f1dc8:
    li      r3, 0x0
branch_0x800f1dcc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl theNerve__29TNerveBossHanachanGraphWanderFv
theNerve__29TNerveBossHanachanGraphWanderFv: # 0x800f1de4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6820(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1e34
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__29TNerveBossHanachanGraphWander@ha
    stw     r0, R13Off_m0x681c(r13)
    addi    r0, r3, __vvt__29TNerveBossHanachanGraphWander@l
    lis     r4, __dt__29TNerveBossHanachanGraphWanderFv@h
    stw     r0, R13Off_m0x681c(r13)
    lis     r3, unk_803f2578@h
    addi    r5, r3, unk_803f2578@l
    addi    r4, r4, __dt__29TNerveBossHanachanGraphWanderFv@l
    addi    r3, r13, R13Off_m0x681c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6820(r13)
branch_0x800f1e34:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x681c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_BossHanachanNerve_cpp
__sinit_BossHanachanNerve_cpp: # 0x800f1e48
    mflr    r0
    lis     r3, unk_803f2578@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2578@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1e90
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800f1e90:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1ec0
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800f1ec0:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1ef0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800f1ef0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1f20
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x800f1f20:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1f50
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800f1f50:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1f80
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800f1f80:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1fb0
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800f1fb0:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1fe0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800f1fe0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2010
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800f2010:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2040
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800f2040:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2070
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800f2070:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800f20a0
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800f20a0:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f20d0
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800f20d0:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2100
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800f2100:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2130
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800f2130:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

