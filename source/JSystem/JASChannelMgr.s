
.globl init__Q28JASystem11TChannelMgrFv
init__Q28JASystem11TChannelMgrFv: # 0x80313378
    li      r12, 0x0
    stw     r12, 0x8(r3)
    lis     r4, 0x2
    li      r11, 0x1
    stw     r12, 0xc(r3)
    li      r10, 0x7fff
    li      r9, 0x150
    stw     r12, 0x10(r3)
    li      r8, 0x210
    li      r7, 0x352
    stw     r12, 0x14(r3)
    li      r6, 0x412
    addi    r5, r4, 0x103
    stw     r12, 0x4(r3)
    li      r4, 0x258
    li      r0, 0xd
    stw     r12, 0x0(r3)
    stw     r11, 0x70(r3)
    lfs     f0, 0x6b0(rtoc)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x6b4(rtoc)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x6b8(rtoc)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x28(r3)
    sth     r12, 0x2c(r3)
    sth     r12, 0x2e(r3)
    sth     r12, 0x30(r3)
    sth     r12, 0x32(r3)
    sth     r12, 0x34(r3)
    sth     r12, 0x36(r3)
    sth     r12, 0x38(r3)
    sth     r12, 0x3a(r3)
    sth     r10, 0x2c(r3)
    sth     r12, 0x4c(r3)
    sth     r12, 0x3c(r3)
    sth     r12, 0x3e(r3)
    sth     r12, 0x40(r3)
    sth     r12, 0x42(r3)
    stb     r12, 0x5a(r3)
    stb     r12, 0x5b(r3)
    stb     r12, 0x5c(r3)
    stb     r12, 0x5d(r3)
    stb     r12, 0x5e(r3)
    stb     r12, 0x5f(r3)
    stb     r12, 0x60(r3)
    sth     r10, 0x3c(r3)
    stb     r12, 0x61(r3)
    sth     r9, 0x4e(r3)
    sth     r8, 0x50(r3)
    sth     r7, 0x52(r3)
    sth     r6, 0x54(r3)
    sth     r12, 0x56(r3)
    sth     r12, 0x58(r3)
    stw     r5, 0x68(r3)
    sth     r4, 0x6c(r3)
    stb     r0, 0x62(r3)
    stb     r0, 0x63(r3)
    stb     r0, 0x64(r3)
    blr


.globl stopAll__Q28JASystem11TChannelMgrFv
stopAll__Q28JASystem11TChannelMgrFv: # 0x8031346c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r3, 0xc(r3)
    b       branch_0x80313494

branch_0x80313484:
    lwz     r31, 0x24(r3)
    li      r4, 0x0
    bl      stop__Q28JASystem8TChannelFUs
    mr      r3, r31
branch_0x80313494:
    cmplwi  r3, 0x0
    bne+    branch_0x80313484
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stopAllRelease__Q28JASystem11TChannelMgrFv
stopAllRelease__Q28JASystem11TChannelMgrFv: # 0x803134b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    lwz     r31, 0x10(r3)
    b       branch_0x803134ec

branch_0x803134cc:
    li      r30, 0x0
branch_0x803134d0:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      forceStopOsc__Q28JASystem8TChannelFUl
    addi    r30, r30, 0x1
    cmplwi  r30, 0x4
    blt+    branch_0x803134d0
    lwz     r31, 0x24(r31)
branch_0x803134ec:
    cmplwi  r31, 0x0
    bne+    branch_0x803134cc
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl: # 0x8031350c
    cmpwi   r5, 0x2
    beq-    branch_0x80313544
    bge-    branch_0x80313528
    cmpwi   r5, 0x0
    beq-    branch_0x80313534
    bge-    branch_0x8031353c
    b       branch_0x80313554

branch_0x80313528:
    cmpwi   r5, 0x4
    bge-    branch_0x80313554
    b       branch_0x8031354c

branch_0x80313534:
    addi    r3, r3, 0x8
    b       branch_0x80313558

branch_0x8031353c:
    addi    r3, r3, 0xc
    b       branch_0x80313558

branch_0x80313544:
    addi    r3, r3, 0x10
    b       branch_0x80313558

branch_0x8031354c:
    addi    r3, r3, 0x14
    b       branch_0x80313558

branch_0x80313554:
    li      r3, 0x0
branch_0x80313558:
    lwz     r0, 0x0(r3)
    stw     r3, 0x8(r4)
    stw     r4, 0x0(r3)
    stw     r0, 0x24(r4)
    blr


.globl addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl: # 0x8031356c
    cmpwi   r5, 0x2
    beq-    branch_0x803135a4
    bge-    branch_0x80313588
    cmpwi   r5, 0x0
    beq-    branch_0x80313594
    bge-    branch_0x8031359c
    b       branch_0x803135b4

branch_0x80313588:
    cmpwi   r5, 0x4
    bge-    branch_0x803135b4
    b       branch_0x803135ac

branch_0x80313594:
    addi    r3, r3, 0x8
    b       branch_0x803135b8

branch_0x8031359c:
    addi    r3, r3, 0xc
    b       branch_0x803135b8

branch_0x803135a4:
    addi    r3, r3, 0x10
    b       branch_0x803135b8

branch_0x803135ac:
    addi    r3, r3, 0x14
    b       branch_0x803135b8

branch_0x803135b4:
    li      r3, 0x0
branch_0x803135b8:
    lwz     r5, 0x0(r3)
    cmplwi  r5, 0x0
    stw     r3, 0x8(r4)
    bne-    branch_0x803135d8
    stw     r4, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x24(r4)
    blr

branch_0x803135d8:
    lwz     r0, 0x24(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x803135f4
    stw     r4, 0x24(r5)
    li      r0, 0x0
    stw     r0, 0x24(r4)
    blr

branch_0x803135f4:
    mr      r5, r0
    b       branch_0x803135d8


.incbin "./baserom/code/Text_0x80005600.bin", 0x30dffc, 0x80313600 - 0x803135fc

.globl getListHead__Q28JASystem11TChannelMgrFUl
getListHead__Q28JASystem11TChannelMgrFUl: # 0x80313600
    cmpwi   r4, 0x2
    beq-    branch_0x80313638
    bge-    branch_0x8031361c
    cmpwi   r4, 0x0
    beq-    branch_0x80313628
    bge-    branch_0x80313630
    b       branch_0x80313648

branch_0x8031361c:
    cmpwi   r4, 0x4
    bge-    branch_0x80313648
    b       branch_0x80313640

branch_0x80313628:
    addi    r5, r3, 0x8
    b       branch_0x8031364c

branch_0x80313630:
    addi    r5, r3, 0xc
    b       branch_0x8031364c

branch_0x80313638:
    addi    r5, r3, 0x10
    b       branch_0x8031364c

branch_0x80313640:
    addi    r5, r3, 0x14
    b       branch_0x8031364c

branch_0x80313648:
    li      r5, 0x0
branch_0x8031364c:
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    mr      r3, r0
    bne-    branch_0x80313664
    li      r3, 0x0
    blr

branch_0x80313664:
    lwz     r4, 0x24(r3)
    li      r0, 0x0
    stw     r4, 0x0(r5)
    stw     r0, 0x8(r3)
    blr


.globl cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel: # 0x80313678
    lwz     r6, 0x8(r4)
    li      r3, 0x0
    lwz     r0, 0x0(r6)
    cmplwi  r0, 0x0
    mr      r7, r0
    bne-    branch_0x80313698
    li      r3, -0x1
    blr

branch_0x80313698:
    cmplw   r7, r4
    bne-    branch_0x803136b8
    lwz     r5, 0x24(r4)
    li      r0, 0x0
    li      r3, 0x0
    stw     r5, 0x0(r6)
    stw     r0, 0x8(r4)
    blr

branch_0x803136b8:
    cmplwi  r7, 0x0
    addi    r3, r3, 0x1
    bne-    branch_0x803136cc
    li      r3, -0x1
    blr

branch_0x803136cc:
    lwz     r0, 0x24(r7)
    cmplw   r0, r4
    beq-    branch_0x803136e0
    mr      r7, r0
    b       branch_0x803136b8

branch_0x803136e0:
    lwz     r5, 0x24(r4)
    li      r0, 0x0
    stw     r5, 0x24(r7)
    stw     r0, 0x8(r4)
    blr


.globl initAllocChannel__Q28JASystem11TChannelMgrFUl
initAllocChannel__Q28JASystem11TChannelMgrFUl: # 0x803136f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80313724
    mr      r3, r30
    bl      releaseAll__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgr
branch_0x80313724:
    mr      r3, r30
    bl      init__Q28JASystem11TChannelMgrFv
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      alloc__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgrUl
    cmplwi  r31, 0x0
    bne-    branch_0x80313748
    li      r0, 0x0
    b       branch_0x8031374c

branch_0x80313748:
    li      r0, 0x1
branch_0x8031374c:
    stw     r0, 0x70(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl getLogicalChannel__Q28JASystem11TChannelMgrFUl
getLogicalChannel__Q28JASystem11TChannelMgrFUl: # 0x80313768
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    li      r31, 0x0
    bl      checkLimitStart__Q28JASystem11TChannelMgrFUl
    cmpwi   r3, 0x0
    bne-    branch_0x803137a4
    rlwinm. r0, r28, 8, 27, 27
    beq-    branch_0x803137a0
    li      r3, 0x0
    b       branch_0x80313898

branch_0x803137a0:
    li      r31, 0x1
branch_0x803137a4:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r30, r3
    bne-    branch_0x80313854
    addi    r3, r27, 0x0
    li      r4, 0x1
    bl      alloc__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgrUl
    cmplwi  r3, 0x0
    bne-    branch_0x803137d4
    li      r3, 0x0
    b       branch_0x80313898

branch_0x803137d4:
    lwz     r5, 0x4(r27)
    addi    r3, r27, 0x0
    li      r4, 0x0
    addi    r0, r5, 0x1
    stw     r0, 0x4(r27)
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    lwz     r0, 0x70(r27)
    addi    r30, r3, 0x0
    cmpwi   r0, 0x1
    bne-    branch_0x80313854
    addi    r3, r27, 0x0
    li      r4, 0x2
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r29, r3
    bne-    branch_0x80313820
    addi    r3, r27, 0x0
    li      r4, 0x1
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr      r29, r3
branch_0x80313820:
    cmplwi  r29, 0x0
    beq-    branch_0x80313854
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      forceStopOsc__Q28JASystem8TChannelFUl
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r3, 0x20(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80313854
    bl      forceStop__Q28JASystem11TDSPChannelFv
branch_0x80313854:
    mr      r3, r30
    bl      init__Q28JASystem8TChannelFv
    cmpwi   r31, 0x0
    beq-    branch_0x80313870
    li      r0, 0x1
    stb     r0, 0x2(r30)
    stb     r0, 0x3(r30)
branch_0x80313870:
    stw     r28, 0xc8(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stw     r0, 0x18(r30)
    lfs     f1, 0x6b0(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      setPanPower__Q28JASystem8TChannelFffff
    mr      r3, r30
branch_0x80313898:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl receiveAllChannels__Q28JASystem11TChannelMgrFPQ28JASystem11TChannelMgr
receiveAllChannels__Q28JASystem11TChannelMgrFPQ28JASystem11TChannelMgr: # 0x803138ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
branch_0x803138d0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r28, r3
    beq-    branch_0x803138fc
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    stw     r30, 0x4(r28)
    b       branch_0x803138d0

branch_0x803138fc:
    li      r29, 0x1
branch_0x80313900:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r28, r3
    beq-    branch_0x80313930
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x1
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    stw     r30, 0x4(r28)
    stw     r29, 0xd0(r28)
    b       branch_0x80313900

branch_0x80313930:
    li      r29, 0x1
branch_0x80313934:
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r28, r3
    beq-    branch_0x80313964
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x2
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    stw     r30, 0x4(r28)
    stw     r29, 0xd0(r28)
    b       branch_0x80313934

branch_0x80313964:
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r29, r3
    beq-    branch_0x803139b4
    mr      r3, r29
    bl      deleteQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel
    cmpwi   r3, 0x0
    beq-    branch_0x8031399c
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    b       branch_0x803139ac

branch_0x8031399c:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x803139ac:
    stw     r30, 0x4(r29)
    b       branch_0x80313964

branch_0x803139b4:
    lwz     r4, 0x0(r30)
    li      r5, 0x0
    lwz     r0, 0x0(r31)
    li      r3, 0x0
    add     r0, r4, r0
    stw     r0, 0x0(r30)
    stw     r5, 0x0(r31)
    lwz     r4, 0x4(r30)
    lwz     r0, 0x4(r31)
    add     r0, r4, r0
    stw     r0, 0x4(r30)
    stw     r5, 0x4(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl checkLimitStart__Q28JASystem11TChannelMgrFUl
checkLimitStart__Q28JASystem11TChannelMgrFUl: # 0x80313a04
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    extrwi  r6, r4, 4, 4
    subi    r0, r5, 0x5a38
    stwu    sp, -0x8(sp)
    add     r5, r0, r6
    srwi    r7, r4, 24
    lbz     r5, 0x0(r5)
    cmplwi  r5, 0x0
    bne-    branch_0x80313a38
    li      r3, 0x1
    b       branch_0x80313b78

branch_0x80313a38:
    rlwinm. r0, r7, 0, 26, 26
    lwz     r8, 0x10(r3)
    li      r6, 0x0
    beq-    branch_0x80313ac0
branch_0x80313a48:
    cmplwi  r8, 0x0
    beq-    branch_0x80313a70
    lwz     r0, 0xc8(r8)
    cmplw   r0, r4
    bne+    branch_0x80313a48
    lbz     r0, 0x2(r8)
    cmplwi  r0, 0x0
    bne+    branch_0x80313a48
    addi    r6, r6, 0x1
    b       branch_0x80313a48

branch_0x80313a70:
    lwz     r3, 0xc(r3)
branch_0x80313a74:
    cmplwi  r3, 0x0
    beq-    branch_0x80313a9c
    lwz     r0, 0xc8(r3)
    cmplw   r0, r4
    bne+    branch_0x80313a74
    lbz     r0, 0x2(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x80313a74
    addi    r6, r6, 0x1
    b       branch_0x80313a74

branch_0x80313a9c:
    cmplw   r6, r5
    bne-    branch_0x80313aac
    li      r3, 0x0
    b       branch_0x80313b78

branch_0x80313aac:
    ble-    branch_0x80313ab8
    li      r3, 0x0
    b       branch_0x80313b78

branch_0x80313ab8:
    li      r3, 0x1
    b       branch_0x80313b78

branch_0x80313ac0:
    li      r9, 0x0
branch_0x80313ac4:
    cmplwi  r8, 0x0
    beq-    branch_0x80313b10
    lwz     r0, 0xc8(r8)
    cmplw   r0, r4
    bne+    branch_0x80313ac4
    lbz     r0, 0x2(r8)
    cmplwi  r0, 0x0
    bne+    branch_0x80313ac4
    cmplwi  r9, 0x0
    bne-    branch_0x80313af0
    mr      r9, r8
branch_0x80313af0:
    cmplw   r6, r5
    bne-    branch_0x80313b08
    mr      r3, r9
    bl      forceStopLogicalChannel__Q28JASystem8TChannelFv
    li      r3, 0x1
    b       branch_0x80313b78

branch_0x80313b08:
    addi    r6, r6, 0x1
    b       branch_0x80313ac4

branch_0x80313b10:
    lwz     r3, 0xc(r3)
branch_0x80313b14:
    cmplwi  r3, 0x0
    beq-    branch_0x80313b74
    lwz     r0, 0xc8(r3)
    cmplw   r0, r4
    bne+    branch_0x80313b14
    lbz     r0, 0x2(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x80313b14
    cmplwi  r9, 0x0
    bne-    branch_0x80313b40
    mr      r9, r3
branch_0x80313b40:
    cmplw   r6, r5
    bne-    branch_0x80313b6c
    rlwinm. r0, r7, 0, 27, 27
    beq-    branch_0x80313b5c
    mr      r3, r9
    bl      forceStopLogicalChannel__Q28JASystem8TChannelFv
    b       branch_0x80313b64

branch_0x80313b5c:
    li      r4, 0x1
    bl      setPauseFlagReq__Q28JASystem8TChannelFUc
branch_0x80313b64:
    li      r3, 0x1
    b       branch_0x80313b78

branch_0x80313b6c:
    addi    r6, r6, 0x1
    b       branch_0x80313b14

branch_0x80313b74:
    li      r3, 0x1
branch_0x80313b78:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkLimitStop__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
checkLimitStop__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl: # 0x80313b88
    mflr    r0
    extrwi  r6, r5, 4, 4
    stw     r0, 0x4(sp)
    cmplwi  r5, 0x0
    srwi    r7, r5, 24
    stwu    sp, -0x8(sp)
    lwz     r3, 0x4(r4)
    lis     r4, 0x803b
    subi    r0, r4, 0x5a38
    add     r4, r0, r6
    lwz     r3, 0xc(r3)
    lbz     r0, 0x0(r4)
    beq-    branch_0x80313c44
    cmplwi  r0, 0x0
    beq-    branch_0x80313c44
    rlwinm. r0, r7, 0, 26, 26
    beq-    branch_0x80313c00
branch_0x80313bcc:
    cmplwi  r3, 0x0
    beq-    branch_0x80313c44
    lwz     r0, 0xc8(r3)
    cmplw   r0, r5
    bne-    branch_0x80313bf8
    lbz     r0, 0x2(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80313bf8
    li      r4, 0x0
    bl      setPauseFlagReq__Q28JASystem8TChannelFUc
    b       branch_0x80313c44

branch_0x80313bf8:
    lwz     r3, 0x24(r3)
    b       branch_0x80313bcc

branch_0x80313c00:
    li      r4, 0x0
branch_0x80313c04:
    cmplwi  r3, 0x0
    beq-    branch_0x80313c30
    lwz     r0, 0xc8(r3)
    cmplw   r0, r5
    bne-    branch_0x80313c28
    lbz     r0, 0x2(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80313c28
    mr      r4, r3
branch_0x80313c28:
    lwz     r3, 0x24(r3)
    b       branch_0x80313c04

branch_0x80313c30:
    cmplwi  r4, 0x0
    beq-    branch_0x80313c44
    addi    r3, r4, 0x0
    li      r4, 0x0
    bl      setPauseFlagReq__Q28JASystem8TChannelFUc
branch_0x80313c44:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

