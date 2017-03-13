
.globl setIndividualDifference___8TBaseNPCFR20JSUMemoryInputStream
setIndividualDifference___8TBaseNPCFR20JSUMemoryInputStream: # 0x80210d70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f0(sp)
    stfd    f31, 0x1e8(sp)
    stfd    f30, 0x1e0(sp)
    stmw    r17, 0x1a4(sp)
    mr      r31, r3
    addi    r18, r4, 0x0
    lwz     r3, 0x4c(r3)
    addis   r17, r3, 0xfc00
    subi    r17, r17, 0x1
    addi    r3, r17, 0x0
    bl      SMSGetNpcInitData__FUl
    addi    r24, r3, 0x0
    addi    r3, r17, 0x0
    bl      SMSGetNpcInitAnmData__FUl
    addi    r17, r3, 0x0
    li      r21, 0x0
    li      r19, 0x0
branch_0x80210dbc:
    addi    r3, r18, 0x0
    addi    r4, sp, 0x16c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x16c(sp)
    addi    r20, sp, 0x178
    add     r20, r20, r19
    extsh   r0, r0
    sth     r0, 0x0(r20)
    addi    r3, r18, 0x0
    addi    r4, sp, 0x168
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x168(sp)
    addi    r3, r18, 0x0
    addi    r4, sp, 0x164
    extsh   r0, r0
    sth     r0, 0x2(r20)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x164(sp)
    addi    r21, r21, 0x1
    cmpwi   r21, 0x2
    extsh   r0, r0
    sth     r0, 0x4(r20)
    li      r0, 0xff
    addi    r19, r19, 0x8
    sth     r0, 0x6(r20)
    blt+    branch_0x80210dbc
    mr      r3, r31
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80210ea0
    lha     r0, 0x17c(sp)
    lis     r4, 0x4330
    lfd     f1, -0x1a88(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x1a98(rtoc)
    stw     r0, 0x19c(sp)
    stw     r4, 0x198(sp)
    lfd     f0, 0x198(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x178(r31)
    lwz     r3, 0x228(r31)
    lfd     f1, -0x1a80(rtoc)
    lbz     r0, 0x310(r3)
    lfs     f2, 0x178(r31)
    stw     r0, 0x194(sp)
    stw     r4, 0x190(sp)
    lfd     f0, 0x190(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x188(sp)
    lwz     r0, 0x18c(sp)
    stb     r0, 0x177(r31)
branch_0x80210ea0:
    addi    r3, r18, 0x0
    addi    r4, sp, 0x15c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r30, 0x15c(sp)
    addi    r3, r18, 0x0
    addi    r4, sp, 0x158
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x158(sp)
    addi    r3, r18, 0x0
    addi    r4, sp, 0x154
    stw     r0, 0x16c(r31)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r28, 0x154(sp)
    addi    r3, r18, 0x0
    addi    r4, sp, 0x150
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x150(sp)
    lis     r19, 0x4330
    lfd     f1, -0x1a88(rtoc)
    addi    r3, r18, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x18c(sp)
    addi    r4, sp, 0x14c
    li      r5, 0x4
    stw     r19, 0x188(sp)
    lfd     f0, 0x188(sp)
    fsubs   f31, f0, f1
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x14c(sp)
    mr      r3, r18
    lfd     f1, -0x1a88(rtoc)
    addi    r4, sp, 0x148
    xoris   r0, r0, 0x8000
    stw     r0, 0x194(sp)
    li      r5, 0x4
    stw     r19, 0x190(sp)
    lfd     f0, 0x190(sp)
    fsubs   f30, f0, f1
    bl      read__14JSUInputStreamFPvl
    cmpwi   r30, 0x0
    lwz     r29, 0x148(sp)
    bge-    branch_0x80210f5c
    li      r30, 0x0
branch_0x80210f5c:
    cmpwi   r28, 0x0
    bge-    branch_0x80210f68
    li      r28, 0x0
branch_0x80210f68:
    lwz     r4, 0x70(r31)
    addi    r3, r31, 0x0
    addi    r22, sp, 0x178
    lwz     r19, 0x28(r4)
    bl      getPtrInitPollutionColor__8TBaseNPCCFv
    addi    r23, r3, 0x0
    li      r20, 0x0
    li      r27, 0x0
    b       branch_0x80210fec

branch_0x80210f8c:
    add     r18, r24, r27
    li      r21, 0x0
    li      r26, 0x0
    li      r25, 0x0
branch_0x80210f9c:
    addi    r0, r25, 0x34
    lhax    r5, r22, r26
    lwzx    r0, r18, r0
    addi    r4, r25, 0x34
    add     r4, r24, r4
    cmplwi  r0, 0x0
    beq-    branch_0x80210fd0
    lwz     r3, 0x78(r31)
    mr      r6, r23
    lwzx    r4, r27, r4
    lwz     r0, 0x8(r3)
    lwzx    r3, r27, r0
    bl      SMS_InitChangeNpcColor__FPC6MActorPC16TColorChangeInfosPC8_GXColor
branch_0x80210fd0:
    addi    r21, r21, 0x1
    cmpwi   r21, 0x2
    addi    r26, r26, 0x2
    addi    r25, r25, 0x8
    blt+    branch_0x80210f9c
    addi    r20, r20, 0x1
    addi    r27, r27, 0x4
branch_0x80210fec:
    cmpw    r20, r19
    blt+    branch_0x80210f8c
    mr      r3, r31
    bl      getPtrInitPollutionColor__8TBaseNPCCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80211090
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r21, 0x4(r3)
    mr      r20, r3
    li      r18, 0x0
    lwz     r19, 0xb4(r21)
    lhz     r22, 0x24(r21)
    b       branch_0x80211084

branch_0x80211024:
    addi    r3, r19, 0x0
    addi    r4, r18, 0x0
    bl      getName__10JUTNameTabCFUs
    lwz     r4, -0x7760(r13)
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x80211080
    lwz     r3, 0x28(r21)
    clrlslwi  r0, r18, 16, 2
    lwz     r4, 0x84(r20)
    lwzx    r3, r3, r0
    lwz     r3, 0x4(r3)
    lhz     r0, 0x4(r3)
    mulli   r3, r0, 0x34
    addi    r0, r3, 0xc
    lwzx    r0, r4, r0
    cmplwi  r0, 0x0
    bne-    branch_0x80211080
    addi    r3, r20, 0x0
    addi    r4, r18, 0x0
    addi    r6, r31, 0x174
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
branch_0x80211080:
    addi    r18, r18, 0x1
branch_0x80211084:
    clrlwi  r0, r18, 16
    cmplw   r0, r22
    blt+    branch_0x80211024
branch_0x80211090:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x802110c0
    ori     r30, r30, 0x6
    rlwinm. r0, r30, 0, 27, 27
    beq-    branch_0x802110bc
    ori     r30, r30, 0x60
    addi    r3, r31, 0x0
    bl      peachParasolIn___8TBaseNPCFv
    b       branch_0x802110c0

branch_0x802110bc:
    rlwinm  r30, r30, 0, 27, 24
branch_0x802110c0:
    lis     r4, 0x5
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802110f0
    mr      r3, r31
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802110f0
    mr      r3, r31
    bl      sunflowerDownIn___8TBaseNPCFv
branch_0x802110f0:
    cmpwi   r30, 0x0
    ble-    branch_0x80211120
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8021111c
    addi    r3, r18, 0x0
    addi    r4, r30, 0x0
    addi    r6, r31, 0x0
    addi    r5, sp, 0x180
    bl      __ct__9TNpcPartsFUlPC13J3DGXColorS10P8TBaseNPC
branch_0x8021111c:
    stw     r18, 0x168(r31)
branch_0x80211120:
    lwz     r0, 0x4(r17)
    cmplwi  r0, 0x0
    beq-    branch_0x80211134
    lwz     r3, 0xd0(r31)
    stw     r0, 0x1c(r3)
branch_0x80211134:
    li      r17, 0x1
    addi    r18, r17, 0x0
    addi    r3, r31, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211160
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211160
    li      r18, 0x0
branch_0x80211160:
    clrlwi. r0, r18, 24
    bne-    branch_0x8021119c
    li      r18, 0x1
    addi    r3, r31, 0x0
    bl      isSpecialMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211190
    mr      r3, r31
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211190
    li      r18, 0x0
branch_0x80211190:
    clrlwi. r0, r18, 24
    bne-    branch_0x8021119c
    li      r17, 0x0
branch_0x8021119c:
    clrlwi. r0, r17, 24
    beq-    branch_0x802111cc
    mr      r3, r31
    bl      setMonteActionFlag___8TBaseNPCFv
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x802112f0
    lis     r4, 0x803a
    lwz     r3, 0xd0(r31)
    subi    r0, r4, 0x7930
    stw     r0, 0x18(r3)
    b       branch_0x802112f0

branch_0x802111cc:
    li      r17, 0x1
    addi    r18, r17, 0x0
    addi    r3, r31, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802111f8
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802111f8
    li      r18, 0x0
branch_0x802111f8:
    clrlwi. r0, r18, 24
    bne-    branch_0x80211234
    li      r18, 0x1
    addi    r3, r31, 0x0
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211228
    mr      r3, r31
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211228
    li      r18, 0x0
branch_0x80211228:
    clrlwi. r0, r18, 24
    bne-    branch_0x80211234
    li      r17, 0x0
branch_0x80211234:
    clrlwi. r0, r17, 24
    beq-    branch_0x80211248
    mr      r3, r31
    bl      setMareActionFlag___8TBaseNPCFv
    b       branch_0x802112f0

branch_0x80211248:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    beq-    branch_0x80211260
    cmplwi  r0, 0x17
    bne-    branch_0x802112e4
branch_0x80211260:
    mr      r3, r31
    bl      setKinoActionFlag___8TBaseNPCFv
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x802112f0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x17
    cmpw    r4, r0
    beq-    branch_0x802112c0
    bge-    branch_0x802112f0
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x8021129c
    b       branch_0x802112f0

branch_0x8021129c:
    lis     r4, 0x803a
    lwz     r3, 0xd0(r31)
    subi    r0, r4, 0x7920
    stw     r0, 0x18(r3)
    lis     r3, 0x803a
    subi    r0, r3, 0x78e8
    lwz     r3, 0xd0(r31)
    stw     r0, 0x1c(r3)
    b       branch_0x802112f0

branch_0x802112c0:
    lis     r4, 0x803a
    lwz     r3, 0xd0(r31)
    subi    r0, r4, 0x78d0
    stw     r0, 0x18(r3)
    lis     r3, 0x803a
    subi    r0, r3, 0x78a0
    lwz     r3, 0xd0(r31)
    stw     r0, 0x1c(r3)
    b       branch_0x802112f0

branch_0x802112e4:
    li      r0, 0x0
    stw     r0, 0x16c(r31)
    stw     r0, 0x170(r31)
branch_0x802112f0:
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x14
    cmpw    r4, r0
    beq-    branch_0x80211438
    bge-    branch_0x80211318
    addi    r0, r3, 0xf
    cmpw    r4, r0
    beq-    branch_0x8021139c
    b       branch_0x8021148c

branch_0x80211318:
    addi    r0, r3, 0x19
    cmpw    r4, r0
    beq-    branch_0x80211328
    b       branch_0x8021148c

branch_0x80211328:
    lwz     r3, 0x4(r31)
    lwz     r4, -0x7770(r13)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8021135c
    lwz     r4, 0x170(r31)
    lis     r3, 0x803a
    subi    r0, r3, 0x7888
    ori     r3, r4, 0x800
    stw     r3, 0x170(r31)
    lwz     r3, 0xd0(r31)
    stw     r0, 0x18(r3)
    b       branch_0x8021148c

branch_0x8021135c:
    lwz     r3, 0x4(r31)
    lwz     r4, -0x776c(r13)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8021148c
    lwz     r4, 0x170(r31)
    lis     r3, 0x803a
    subi    r0, r3, 0x7878
    ori     r3, r4, 0x800
    stw     r3, 0x170(r31)
    lwz     r3, 0xf0(r31)
    oris    r3, r3, 0x1
    stw     r3, 0xf0(r31)
    lwz     r3, 0xd0(r31)
    stw     r0, 0x18(r3)
    b       branch_0x8021148c

branch_0x8021139c:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1a88(rtoc)
    stw     r0, 0x18c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1a94(rtoc)
    stw     r0, 0x188(sp)
    lfs     f0, -0x1a90(rtoc)
    lfd     f2, 0x188(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x190(sp)
    lwz     r0, 0x194(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80211414
    bge-    branch_0x8021148c
    cmpwi   r0, 0x0
    bge-    branch_0x802113f0
    b       branch_0x8021148c

branch_0x802113f0:
    lis     r4, 0x803a
    lwz     r3, 0xd0(r31)
    subi    r0, r4, 0x7868
    stw     r0, 0x18(r3)
    lis     r3, 0x803a
    subi    r0, r3, 0x7858
    lwz     r3, 0xd0(r31)
    stw     r0, 0x1c(r3)
    b       branch_0x8021148c

branch_0x80211414:
    lis     r4, 0x803a
    lwz     r3, 0xd0(r31)
    subi    r0, r4, 0x7848
    stw     r0, 0x18(r3)
    lis     r3, 0x803a
    subi    r0, r3, 0x7838
    lwz     r3, 0xd0(r31)
    stw     r0, 0x1c(r3)
    b       branch_0x8021148c

branch_0x80211438:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1a88(rtoc)
    stw     r0, 0x18c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1a94(rtoc)
    stw     r0, 0x188(sp)
    lfs     f0, -0x1a8c(rtoc)
    lfd     f2, 0x188(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x190(sp)
    lwz     r0, 0x194(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x80211480
    b       branch_0x8021148c

branch_0x80211480:
    lwz     r3, 0xd0(r31)
    subi    r0, rtoc, 0x1aa0
    stw     r0, 0x18(r3)
branch_0x8021148c:
    clrlwi. r0, r28, 31
    beq-    branch_0x802114b0
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802114ac
    stfs    f31, 0x0(r3)
    stfs    f30, 0x4(r3)
branch_0x802114ac:
    stw     r3, 0x17c(r31)
branch_0x802114b0:
    li      r17, 0x0
    addi    r3, r31, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802114d4
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x802114d4
    li      r17, 0x1
branch_0x802114d4:
    clrlwi. r0, r17, 24
    beq-    branch_0x802114e4
    li      r17, 0x1
    b       branch_0x802114e8

branch_0x802114e4:
    li      r17, 0x0
branch_0x802114e8:
    cmpwi   r29, 0x7d0
    li      r18, 0x1
    beq-    branch_0x8021150c
    cmpwi   r29, 0xc8
    beq-    branch_0x8021150c
    cmpwi   r29, 0x0
    blt-    branch_0x802115bc
    cmpwi   r29, 0x32
    bge-    branch_0x802115bc
branch_0x8021150c:
    cmpwi   r29, 0x0
    li      r19, 0x0
    addi    r0, r19, 0x0
    blt-    branch_0x80211528
    cmpwi   r29, 0x32
    bge-    branch_0x80211528
    li      r0, 0x1
branch_0x80211528:
    clrlwi. r0, r0, 24
    beq-    branch_0x80211554
    lis     r4, 0x803f
    lwz     r3, -0x6060(r13)
    subi    r4, r4, 0x6900
    lbz     r4, 0xe(r4)
    clrlwi  r5, r29, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80211554
    li      r19, 0x1
branch_0x80211554:
    clrlwi. r0, r19, 24
    beq-    branch_0x80211564
    li      r3, 0x1
    b       branch_0x80211568

branch_0x80211564:
    li      r3, 0x0
branch_0x80211568:
    clrlwi. r0, r17, 24
    beq-    branch_0x80211590
    clrlwi. r0, r3, 24
    beq-    branch_0x80211590
    lwz     r3, 0x170(r31)
    li      r0, -0x4089
    li      r18, 0x0
    and     r0, r3, r0
    stw     r0, 0x170(r31)
    b       branch_0x802115bc

branch_0x80211590:
    clrlwi. r0, r3, 24
    beq-    branch_0x8021159c
    li      r29, 0x7d0
branch_0x8021159c:
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x802115b8
    addi    r3, r19, 0x0
    addi    r4, r29, 0x0
    bl      __ct__8TNpcCoinFi
branch_0x802115b8:
    stw     r19, 0x184(r31)
branch_0x802115bc:
    clrlwi. r0, r17, 24
    beq-    branch_0x802115e4
    clrlwi. r0, r18, 24
    beq-    branch_0x802115e4
    rlwinm  r0, r30, 0, 20, 20
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r4, r0, r3
    addi    r3, r31, 0x0
    bl      setSmokeEffectMtxPtr___8TBaseNPCFb
branch_0x802115e4:
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    mr      r3, r31
    bl      randomizeBckAndBtpFrame___8TBaseNPCFv
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x168(r31)
    lfs     f30, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80211638
    mr      r3, r31
    bl      isJellyFishMare__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8021162c
    lwz     r3, 0x168(r31)
    fmr     f1, f30
    bl      addJellyFishParts__9TNpcPartsFf
branch_0x8021162c:
    lwz     r3, 0x168(r31)
    fmr     f1, f30
    bl      setPartsAnmFrame__9TNpcPartsFf
branch_0x80211638:
    lmw     r17, 0x1a4(sp)
    lwz     r0, 0x1f4(sp)
    lfd     f31, 0x1e8(sp)
    lfd     f30, 0x1e0(sp)
    mtlr    r0
    addi    sp, sp, 0x1f0
    blr


.globl init__8TBaseNPCFP12TLiveManager
init__8TBaseNPCFP12TLiveManager: # 0x80211654
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stmw    r21, 0x13c(sp)
    mr      r31, r3
    mr.     r21, r4
    lwz     r5, 0x4c(r31)
    lwz     r3, -0x70b0(r13)
    addis   r4, r5, 0xfc00
    subi    r4, r4, 0x1
    lwz     r3, 0xf4(r3)
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r0, 0x8(r3)
    mr      r29, r4
    stw     r0, 0x228(r31)
    bne-    branch_0x80211710
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r5, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    li      r6, 0x0
    lfs     f1, -0x1a78(rtoc)
    lwz     r4, 0x4c(r31)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    lwz     r5, 0x8c(r31)
    li      r0, 0x0
    addi    r4, r31, 0x0
    stw     r0, 0x8(r5)
    stw     r0, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    lwz     r3, -0x70b0(r13)
    bl      registerAloneActor__10TConductorFP10TLiveActor
    b       branch_0x80211d54

branch_0x80211710:
    mr      r3, r29
    bl      SMSGetNpcInitData__FUl
    stw     r21, 0x70(r31)
    addi    r30, r3, 0x0
    addi    r3, r21, 0x0
    addi    r4, r31, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x80211748
    addi    r3, r22, 0x0
    addi    r4, r21, 0x0
    bl      __ct__13TMActorKeeperFP12TLiveManager
branch_0x80211748:
    stw     r22, 0x78(r31)
    li      r5, 0x0
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1d
    bne-    branch_0x80211764
    li      r5, 0x3
branch_0x80211764:
    lwz     r3, 0x78(r31)
    li      r4, 0x0
    bl      createMActorFromNthData__13TMActorKeeperFiUl
    lwz     r0, 0x28(r21)
    cmpwi   r0, 0x2
    bne-    branch_0x8021178c
    lwz     r3, 0x78(r31)
    li      r4, 0x1
    li      r5, 0x3
    bl      createMActorFromNthData__13TMActorKeeperFiUl
branch_0x8021178c:
    lwz     r3, 0x78(r31)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(r31)
    lfs     f0, -0x1a74(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x1a70(rtoc)
    stfs    f0, 0xbc(r31)
    lfs     f0, -0x1a78(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f1, 0x44(r30)
    lfs     f0, 0x24(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x14c(r31)
    lwz     r3, -0x6220(r13)
    lfs     f0, 0x11c(r3)
    stfs    f0, 0xc0(r31)
    lwz     r3, -0x6220(r13)
    lfs     f0, 0x158(r3)
    stfs    f0, 0xcc(r31)
    lwz     r3, 0x228(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, 0x54(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1d
    bne-    branch_0x80211880
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    ori     r0, r0, 0x2018
    stw     r0, 0xf0(r31)
    bl      initNpcObjCollision___8TBaseNPCFPC12TNpcInitInfo
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    lwz     r5, 0x8c(r31)
    li      r0, 0x0
    li      r4, 0x1
    stw     r0, 0x8(r5)
    stw     r0, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lfs     f0, -0x1a78(rtoc)
    stfs    f0, 0x144(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80211d54
    lfs     f1, -0x1a70(rtoc)
    addi    r4, r31, 0xc4
    lfs     f0, 0x14(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    b       branch_0x80211d54

branch_0x80211880:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x100
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1000
    stw     r0, 0xf0(r31)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x802118dc
    lwz     r3, 0x4(r31)
    lwz     r4, -0x7768(r13)
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x802118e8
    lwz     r3, 0x4(r31)
    lwz     r4, -0x7764(r13)
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x802118e8
branch_0x802118dc:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2000
    stw     r0, 0xf0(r31)
branch_0x802118e8:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80211904
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x18
    stw     r0, 0xf0(r31)
branch_0x80211904:
    mr      r3, r31
    bl      isJellyFishMare__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211934
    mr      r3, r31
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80211934
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x7
    bne-    branch_0x80211940
branch_0x80211934:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
branch_0x80211940:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80211954
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x80211954:
    mr      r3, r31
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802119cc
    lbz     r0, -0x615c(r13)
    extsb.  r0, r0
    bne-    branch_0x80211980
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, -0x6160(r13)
    stb     r0, -0x615c(r13)
branch_0x80211980:
    li      r3, 0x1e
    bl      CLBPalFrame_i___Fi
    addi    r23, r3, 0x0
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802119a8
    lwz     r0, -0x6160(r13)
    stw     r0, 0x0(r3)
    stw     r23, 0x4(r3)
branch_0x802119a8:
    stw     r3, 0x15c(r31)
    lwz     r3, -0x6160(r13)
    addi    r0, r3, 0x1
    stw     r0, -0x6160(r13)
    lwz     r0, -0x6160(r13)
    cmpw    r0, r23
    blt-    branch_0x802119cc
    li      r0, 0x0
    stw     r0, -0x6160(r13)
branch_0x802119cc:
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802119ec
    li      r0, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x1
    stw     r0, 0x4(r3)
branch_0x802119ec:
    stw     r3, 0x22c(r31)
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80211a28
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    lwz     r4, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r0, 0x1c(r4)
    b       branch_0x80211a5c

branch_0x80211a28:
    bl      theNerve__20TNerveNPCGraphWanderFv
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    li      r0, -0x1
    stw     r4, 0x8(r5)
    stw     r4, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    mr      r3, r31
    stw     r4, 0x1c(r5)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
branch_0x80211a5c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      initNpcObjCollision___8TBaseNPCFPC12TNpcInitInfo
    lis     r3, 0x803a
    subi    r28, r3, 0x7a10
branch_0x80211a70:
    lwz     r3, 0x0(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x80211b80
    lwz     r0, 0x4c(r31)
    cmplw   r3, r0
    beq-    branch_0x80211a90
    addi    r28, r28, 0x10
    b       branch_0x80211a70

branch_0x80211a90:
    li      r3, 0x14
    bl      __nw__FUl
    stw     r3, 0x160(r31)
    lbz     r0, 0xd(r28)
    lwz     r3, 0x160(r31)
    sth     r0, 0x0(r3)
    lbz     r0, 0xd(r28)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    mr      r23, r3
    lbz     r3, 0xd(r28)
    bl      __nwa__FUl
    addi    r24, r3, 0x0
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    li      r22, 0x0
    addi    r25, r22, 0x0
    lwz     r21, 0xb0(r3)
    addi    r27, r24, 0x0
    li      r26, 0x0
    b       branch_0x80211b14

branch_0x80211ae8:
    lwz     r4, 0x4(r28)
    mr      r3, r21
    lwzx    r4, r4, r25
    bl      getIndex__10JUTNameTabCFPCc
    sthx    r3, r23, r26
    addi    r22, r22, 0x1
    addi    r26, r26, 0x2
    lbz     r0, 0xc(r28)
    addi    r25, r25, 0x4
    stb     r0, 0x0(r27)
    addi    r27, r27, 0x1
branch_0x80211b14:
    lbz     r0, 0xd(r28)
    cmpw    r22, r0
    blt+    branch_0x80211ae8
    lwz     r4, 0x160(r31)
    mr      r3, r31
    stw     r23, 0x8(r4)
    lwz     r4, 0x160(r31)
    stw     r24, 0x4(r4)
    bl      getModel__10TLiveActorCFv
    mr      r4, r3
    lwz     r3, 0x160(r31)
    lwz     r5, 0x8(r28)
    bl      setup__15TMultiMtxEffectFP8J3DModelPCc
    lwz     r6, 0x160(r31)
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80211b74

branch_0x80211b58:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    ori     r0, r0, 0x1
    sth     r0, 0x4(r4)
branch_0x80211b74:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x80211b58
branch_0x80211b80:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    lwz     r4, -0x775c(r13)
    lwz     r21, 0xb0(r3)
    mr      r3, r21
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x164(r31)
    lwz     r0, 0x164(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x80211be0
    li      r3, 0x4
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80211bc8
    li      r0, 0x0
    sth     r0, 0x0(r3)
    sth     r0, 0x2(r3)
branch_0x80211bc8:
    stw     r3, 0x230(r31)
    lis     r3, 0x8021
    subi    r5, r3, 0x7990
    lwz     r3, 0x74(r31)
    lwz     r4, 0x164(r31)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
branch_0x80211be0:
    addi    r3, r31, 0x0
    addi    r4, r21, 0x0
    bl      setHappyEffectMtxPtr___8TBaseNPCFPC10JUTNameTab
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x12
    cmpw    r4, r0
    beq-    branch_0x80211c14
    bge-    branch_0x80211c20
    addi    r0, r3, 0x9
    cmpw    r4, r0
    beq-    branch_0x80211c14
    b       branch_0x80211c20

branch_0x80211c14:
    addi    r3, r31, 0x0
    addi    r4, r21, 0x0
    bl      setNoteEffectMtxPtr___8TBaseNPCFPC10JUTNameTab
branch_0x80211c20:
    mr      r3, r31
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80211c3c
    addi    r3, r31, 0x0
    addi    r4, r21, 0x0
    bl      setPollutionEffectMtxPtr___8TBaseNPCFPC10JUTNameTab
branch_0x80211c3c:
    lwz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80211c84
    lwz     r3, 0x0(r3)
    bl      SMS_CreateMinimumSDLModel__FPCc
    stw     r3, 0x150(r31)
    lwz     r4, 0x150(r31)
    lwz     r3, 0x0(r30)
    lwz     r5, 0x4(r4)
    lwz     r4, 0x4(r3)
    lwz     r3, 0xb0(r5)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0x150(r31)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r0, r3, r0
    stw     r0, 0x154(r31)
branch_0x80211c84:
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x80211cf4
    lwz     r3, -0x6220(r13)
    addi    r3, r3, 0x1a8
    lwz     r3, 0x0(r3)
    bl      CLBPalFrame_l___Fl
    lwz     r4, -0x6220(r13)
    addi    r25, r3, 0x0
    addi    r3, r4, 0x1f8
    lwz     r3, 0x0(r3)
    bl      CLBPalFrame_l___Fl
    stw     r3, 0x0(r21)
    li      r0, 0x0
    stw     r25, 0x4(r21)
    stw     r0, 0x8(r21)
    lfs     f0, -0x1a78(rtoc)
    stfs    f0, 0xc(r21)
    stfs    f0, 0x10(r21)
    stfs    f0, 0x14(r21)
    stfs    f0, 0x18(r21)
    stfs    f0, 0x1c(r21)
    stfs    f0, 0x20(r21)
    stw     r0, 0x24(r21)
    stfs    f0, 0x28(r21)
branch_0x80211cf4:
    stw     r21, 0x18c(r31)
    mr      r3, r29
    bl      SMSGetNpcInitAnmData__FUl
    lwz     r5, 0x228(r31)
    lwz     r4, 0x0(r3)
    mr      r3, r31
    lfs     f1, 0x1bc(r5)
    li      r5, 0x0
    bl      initLodAnm__10TLiveActorFPC12TLodAnmIndexif
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setLightType__6MActorFi
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80211d54
    lfs     f1, -0x1a70(rtoc)
    addi    r4, r31, 0xc4
    lfs     f0, 0x14(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
branch_0x80211d54:
    lmw     r21, 0x13c(sp)
    lwz     r0, 0x16c(sp)
    addi    sp, sp, 0x168
    mtlr    r0
    blr

