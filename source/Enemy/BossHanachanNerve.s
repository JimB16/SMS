
.globl __dt__22TNerveBossHanachanDeadFv
__dt__22TNerveBossHanachanDeadFv: # 0x800f127c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f12c0
    lis     r3, 0x803c
    subi    r0, r3, 0x5128
    stw     r0, 0x0(r31)
    beq-    branch_0x800f12b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
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
    lbz     r0, -0x67f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1394
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67ec(r13)
    subi    r0, r3, 0x5128
    lis     r4, 0x800f
    stw     r0, -0x67ec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x25c0
    addi    r4, r4, 0x127c
    subi    r3, r13, 0x67ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67f0(r13)
branch_0x800f1394:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x67ec
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
    lis     r3, 0x8001
    addi    r3, r3, 0x29
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
    lwz     r3, -0x6044(r13)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x9c(r3)
    bl      changeTempo__8MSModBgmFUcUc
    b       branch_0x800f143c

branch_0x800f1428:
    lwz     r3, -0x6044(r13)
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
    lbz     r0, -0x6820(r13)
    extsb.  r0, r0
    bne-    branch_0x800f14a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x681c(r13)
    subi    r0, r3, 0x50c8
    lis     r4, 0x800f
    stw     r0, -0x681c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2578
    addi    r4, r4, 0x1500
    subi    r3, r13, 0x681c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6820(r13)
branch_0x800f14a8:
    subi    r4, r13, 0x681c
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
    lis     r3, 0x803c
    subi    r0, r3, 0x50c8
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1534
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
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
    lbz     r0, -0x67f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f15ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67f4(r13)
    subi    r0, r3, 0x5118
    lis     r4, 0x800f
    stw     r0, -0x67f4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x25b4
    addi    r4, r4, 0x15c0
    subi    r3, r13, 0x67f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67f8(r13)
branch_0x800f15ac:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x67f4
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
    lis     r3, 0x803c
    subi    r0, r3, 0x5118
    stw     r0, 0x0(r31)
    beq-    branch_0x800f15f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
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
    lfs     f1, -0x5968(rtoc)
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
    lbz     r0, -0x6808(r13)
    extsb.  r0, r0
    bne-    branch_0x800f16bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6804(r13)
    subi    r0, r3, 0x50f8
    lis     r4, 0x800f
    stw     r0, -0x6804(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x259c
    addi    r4, r4, 0x1714
    subi    r3, r13, 0x6804
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6808(r13)
branch_0x800f16bc:
    subi    r4, r13, 0x6804
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
    lis     r3, 0x803c
    subi    r0, r3, 0x50f8
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1748
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
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
    lbz     r0, -0x6800(r13)
    extsb.  r0, r0
    bne-    branch_0x800f17c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67fc(r13)
    subi    r0, r3, 0x5108
    lis     r4, 0x800f
    stw     r0, -0x67fc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x25a8
    addi    r4, r4, 0x17d4
    subi    r3, r13, 0x67fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6800(r13)
branch_0x800f17c0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x67fc
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
    lis     r3, 0x803c
    subi    r0, r3, 0x5108
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1808
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
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
    lbz     r0, -0x67f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f18bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67f4(r13)
    subi    r0, r3, 0x5118
    lis     r4, 0x800f
    stw     r0, -0x67f4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x25b4
    addi    r4, r4, 0x15c0
    subi    r3, r13, 0x67f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67f8(r13)
branch_0x800f18bc:
    subi    r4, r13, 0x67f4
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
    lbz     r0, -0x6808(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1964
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6804(r13)
    subi    r0, r3, 0x50f8
    lis     r4, 0x800f
    stw     r0, -0x6804(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x259c
    addi    r4, r4, 0x1714
    subi    r3, r13, 0x6804
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6808(r13)
branch_0x800f1964:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6804
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
    lbz     r0, -0x6808(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1a00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6804(r13)
    subi    r0, r3, 0x50f8
    lis     r4, 0x800f
    stw     r0, -0x6804(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x259c
    addi    r4, r4, 0x1714
    subi    r3, r13, 0x6804
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6808(r13)
branch_0x800f1a00:
    subi    r4, r13, 0x6804
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
    lbz     r0, -0x6810(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1aa8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x680c(r13)
    subi    r0, r3, 0x50e8
    lis     r4, 0x800f
    stw     r0, -0x680c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2590
    addi    r4, r4, 0x1abc
    subi    r3, r13, 0x680c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6810(r13)
branch_0x800f1aa8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x680c
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
    lis     r3, 0x803c
    subi    r0, r3, 0x50e8
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1af0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
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
    lfs     f1, -0x5968(rtoc)
    lfs     f0, 0x140(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f1c18
    mr      r3, r30
    bl      isTumbleCompletelyAllBody__13TBossHanachanCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f1c18
    lwz     r3, -0x6048(r13)
    li      r4, 0x7
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    lbz     r0, -0x6810(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1bdc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x680c(r13)
    subi    r0, r3, 0x50e8
    lis     r4, 0x800f
    stw     r0, -0x680c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2590
    addi    r4, r4, 0x1abc
    subi    r3, r13, 0x680c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6810(r13)
branch_0x800f1bdc:
    subi    r4, r13, 0x680c
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
    lbz     r0, -0x6818(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1c84
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6814(r13)
    subi    r0, r3, 0x50d8
    lis     r4, 0x800f
    stw     r0, -0x6814(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2584
    addi    r4, r4, 0x1c98
    subi    r3, r13, 0x6814
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6818(r13)
branch_0x800f1c84:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6814
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
    lis     r3, 0x803c
    subi    r0, r3, 0x50d8
    stw     r0, 0x0(r31)
    beq-    branch_0x800f1ccc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
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
    lbz     r0, -0x6818(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1d8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6814(r13)
    subi    r0, r3, 0x50d8
    lis     r4, 0x800f
    stw     r0, -0x6814(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2584
    addi    r4, r4, 0x1c98
    subi    r3, r13, 0x6814
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6818(r13)
branch_0x800f1d8c:
    subi    r4, r13, 0x6814
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
    lbz     r0, -0x6820(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1e34
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x681c(r13)
    subi    r0, r3, 0x50c8
    lis     r4, 0x800f
    stw     r0, -0x681c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2578
    addi    r4, r4, 0x1500
    subi    r3, r13, 0x681c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6820(r13)
branch_0x800f1e34:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x681c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_BossHanachanNerve_cpp
__sinit_BossHanachanNerve_cpp: # 0x800f1e48
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2578
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1e90
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800f1e90:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1ec0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800f1ec0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1ef0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800f1ef0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1f20
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800f1f20:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1f50
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800f1f50:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1f80
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800f1f80:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1fb0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800f1fb0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1fe0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800f1fe0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2010
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800f2010:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2040
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800f2040:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2070
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800f2070:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800f20a0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800f20a0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f20d0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800f20d0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2100
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800f2100:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800f2130
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800f2130:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

