
.globl IsCard
IsCard: # 0x80357fdc
    clrrwi. r0, r3, 16
    beq-    branch_0x80358004
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x4
    bne-    branch_0x80357ffc
    lhz     r0, -0x7300(r13)
    cmplwi  r0, 0xffff
    bne-    branch_0x80358004
branch_0x80357ffc:
    li      r3, 0x0
    blr

branch_0x80358004:
    clrlwi. r0, r3, 30
    beq-    branch_0x80358014
    li      r3, 0x0
    blr

branch_0x80358014:
    rlwinm  r5, r3, 0, 24, 29
    cmpwi   r5, 0x20
    beq-    branch_0x80358064
    bge-    branch_0x80358048
    cmpwi   r5, 0x8
    beq-    branch_0x80358064
    bge-    branch_0x8035803c
    cmpwi   r5, 0x4
    beq-    branch_0x80358064
    b       branch_0x8035805c

branch_0x8035803c:
    cmpwi   r5, 0x10
    beq-    branch_0x80358064
    b       branch_0x8035805c

branch_0x80358048:
    cmpwi   r5, 0x80
    beq-    branch_0x80358064
    bge-    branch_0x8035805c
    cmpwi   r5, 0x40
    beq-    branch_0x80358064
branch_0x8035805c:
    li      r3, 0x0
    blr

branch_0x80358064:
    lis     r4, SectorSizeTable@ha
    rlwinm  r3, r3, 23, 27, 29
    addi    r0, r4, SectorSizeTable@l
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    cmpwi   r3, 0x0
    bne-    branch_0x80358088
    li      r3, 0x0
    blr

branch_0x80358088:
    clrlslwi  r0, r5, 20, 17
    divwu   r0, r0, r3
    cmplwi  r0, 0x8
    bge-    branch_0x803580a0
    li      r3, 0x0
    blr

branch_0x803580a0:
    li      r3, 0x1
    blr


.globl CARDProbeEx
CARDProbeEx: # 0x803580a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr.     r27, r3
    addi    r28, r4, 0x0
    addi    r31, r5, 0x0
    blt-    branch_0x803580d0
    cmpwi   r27, 0x2
    blt-    branch_0x803580d8
branch_0x803580d0:
    li      r3, -0x80
    b       branch_0x80358210

branch_0x803580d8:
    lis     r3, 0x8000
    lbz     r0, 0x30e3(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x803580f0
    li      r3, -0x3
    b       branch_0x80358210

branch_0x803580f0:
    mulli   r4, r27, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r30, r0, r4
    bl      OSDisableInterrupts
    addi    r29, r3, 0x0
    addi    r3, r27, 0x0
    bl      EXIProbeEx
    cmpwi   r3, -0x1
    bne-    branch_0x80358120
    li      r30, -0x3
    b       branch_0x80358204

branch_0x80358120:
    cmpwi   r3, 0x0
    bne-    branch_0x80358130
    li      r30, -0x1
    b       branch_0x80358204

branch_0x80358130:
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80358178
    lwz     r0, 0x24(r30)
    cmpwi   r0, 0x1
    bge-    branch_0x80358150
    li      r30, -0x1
    b       branch_0x80358204

branch_0x80358150:
    cmplwi  r28, 0x0
    beq-    branch_0x80358160
    lhz     r0, 0x8(r30)
    stw     r0, 0x0(r28)
branch_0x80358160:
    cmplwi  r31, 0x0
    beq-    branch_0x80358170
    lwz     r0, 0xc(r30)
    stw     r0, 0x0(r31)
branch_0x80358170:
    li      r30, 0x0
    b       branch_0x80358204

branch_0x80358178:
    mr      r3, r27
    bl      EXIGetState
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80358190
    li      r30, -0x2
    b       branch_0x80358204

branch_0x80358190:
    addi    r3, r27, 0x0
    addi    r5, sp, 0x14
    li      r4, 0x0
    bl      EXIGetID
    cmpwi   r3, 0x0
    bne-    branch_0x803581b0
    li      r30, -0x1
    b       branch_0x80358204

branch_0x803581b0:
    lwz     r3, 0x14(sp)
    bl      IsCard
    cmpwi   r3, 0x0
    beq-    branch_0x80358200
    cmplwi  r28, 0x0
    beq-    branch_0x803581d4
    lwz     r0, 0x14(sp)
    rlwinm  r0, r0, 0, 24, 29
    stw     r0, 0x0(r28)
branch_0x803581d4:
    cmplwi  r31, 0x0
    beq-    branch_0x803581f8
    lwz     r4, 0x14(sp)
    lis     r3, SectorSizeTable@ha
    addi    r0, r3, SectorSizeTable@l
    rlwinm  r3, r4, 23, 27, 29
    add     r3, r0, r3
    lwz     r0, 0x0(r3)
    stw     r0, 0x0(r31)
branch_0x803581f8:
    li      r30, 0x0
    b       branch_0x80358204

branch_0x80358200:
    li      r30, -0x2
branch_0x80358204:
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r30
branch_0x80358210:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl DoMount
DoMount: # 0x80358224
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    mulli   r4, r29, 0x110
    stw     r28, 0x20(sp)
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r3, r0, r4
    lwz     r0, 0x24(r3)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x8035850c
    addi    r3, r29, 0x0
    addi    r5, sp, 0x18
    li      r4, 0x0
    bl      EXIGetID
    cmpwi   r3, 0x0
    bne-    branch_0x80358284
    li      r30, -0x3
    b       branch_0x803582a0

branch_0x80358284:
    lwz     r3, 0x18(sp)
    bl      IsCard
    cmpwi   r3, 0x0
    beq-    branch_0x8035829c
    li      r30, 0x0
    b       branch_0x803582a0

branch_0x8035829c:
    li      r30, -0x2
branch_0x803582a0:
    cmpwi   r30, 0x0
    blt-    branch_0x803585e8
    lwz     r0, 0x18(sp)
    lis     r4, SectorSizeTable@ha
    addi    r4, r4, SectorSizeTable@l
    stw     r0, 0x108(r31)
    lis     r3, LatencyTable@ha
    addi    r0, r3, LatencyTable@l
    lwz     r5, 0x18(sp)
    addi    r3, r29, 0x0
    rlwinm  r5, r5, 0, 24, 29
    sth     r5, 0x8(r31)
    lwz     r5, 0x18(sp)
    rlwinm  r5, r5, 23, 27, 29
    add     r4, r4, r5
    lwz     r4, 0x0(r4)
    stw     r4, 0xc(r31)
    lhz     r5, 0x8(r31)
    lwz     r4, 0xc(r31)
    slwi    r5, r5, 20
    srawi   r5, r5, 3
    addze   r5, r5
    divw    r4, r5, r4
    sth     r4, 0x10(r31)
    lwz     r4, 0x18(sp)
    rlwinm  r4, r4, 26, 27, 29
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    stw     r0, 0x14(r31)
    bl      __CARDClearStatus
    mr.     r30, r3
    blt-    branch_0x803585e8
    addi    r3, r29, 0x0
    addi    r4, sp, 0x14
    bl      __CARDReadStatus
    mr.     r30, r3
    blt-    branch_0x803585e8
    mr      r3, r29
    bl      EXIProbe
    cmpwi   r3, 0x0
    bne-    branch_0x8035834c
    li      r30, -0x3
    b       branch_0x803585e8

branch_0x8035834c:
    lbz     r0, 0x14(sp)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x80358468
    addi    r3, r29, 0x0
    addi    r4, r31, 0x18
    bl      __CARDUnlock
    mr.     r30, r3
    blt-    branch_0x803585e8
    bl      __OSLockSramEx
    mulli   r0, r29, 0xc
    add     r4, r3, r0
    lbz     r0, 0x18(r31)
    addi    r5, r31, 0x18
    stb     r0, 0x0(r4)
    addi    r8, r5, 0x2
    addi    r9, r5, 0x3
    lbz     r7, 0x18(r31)
    addi    r10, r5, 0x4
    lbz     r0, 0x19(r31)
    addi    r11, r5, 0x5
    addi    r12, r5, 0x6
    stb     r0, 0x1(r4)
    addi    r28, r5, 0x7
    li      r5, 0x8
    lbz     r0, 0x19(r31)
    lbz     r6, 0x0(r8)
    add     r0, r7, r0
    stb     r6, 0x2(r4)
    lbz     r7, 0x0(r8)
    lbz     r6, 0x0(r9)
    add     r0, r0, r7
    stb     r6, 0x3(r4)
    lbz     r7, 0x0(r9)
    lbz     r6, 0x0(r10)
    add     r0, r0, r7
    stb     r6, 0x4(r4)
    lbz     r7, 0x0(r10)
    lbz     r6, 0x0(r11)
    add     r0, r0, r7
    stb     r6, 0x5(r4)
    lbz     r7, 0x0(r11)
    lbz     r6, 0x0(r12)
    add     r0, r0, r7
    stb     r6, 0x6(r4)
    lbz     r7, 0x0(r12)
    lbz     r6, 0x0(r28)
    add     r0, r0, r7
    stb     r6, 0x7(r4)
    lbz     r6, 0x0(r28)
    add     r0, r0, r6
    b       branch_0x80358604

branch_0x80358418:
    subfic  r4, r5, 0xc
    cmpwi   r5, 0xc
    mtctr   r4
    bge-    branch_0x8035844c
branch_0x80358428:
    addi    r7, r5, 0x18
    add     r7, r31, r7
    lbz     r4, 0x0(r7)
    addi    r5, r5, 0x1
    stb     r4, 0x0(r6)
    addi    r6, r6, 0x1
    lbz     r4, 0x0(r7)
    add     r0, r0, r4
    bdnz+      branch_0x80358428
branch_0x8035844c:
    add     r3, r3, r29
    not     r0, r0
    stb     r0, 0x26(r3)
    li      r3, 0x1
    bl      __OSUnlockSramEx
    mr      r3, r30
    b       branch_0x80358614

branch_0x80358468:
    li      r0, 0x1
    stw     r0, 0x24(r31)
    bl      __OSLockSramEx
    mulli   r0, r29, 0xc
    addi    r30, r3, 0x0
    add     r5, r30, r0
    lbz     r4, 0x0(r5)
    li      r6, 0x8
    lbz     r0, 0x1(r5)
    lbz     r3, 0x2(r5)
    add     r28, r4, r0
    lbz     r0, 0x3(r5)
    add     r28, r28, r3
    lbz     r3, 0x4(r5)
    add     r28, r28, r0
    lbz     r0, 0x5(r5)
    add     r28, r28, r3
    lbz     r3, 0x6(r5)
    add     r28, r28, r0
    lbz     r0, 0x7(r5)
    add     r28, r28, r3
    add     r28, r28, r0
    b       branch_0x8035860c

branch_0x803584c4:
    subfic  r0, r6, 0xc
    cmpwi   r6, 0xc
    mtctr   r0
    bge-    branch_0x803584e4
branch_0x803584d4:
    lbz     r0, 0x0(r3)
    addi    r3, r3, 0x1
    add     r28, r28, r0
    bdnz+      branch_0x803584d4
branch_0x803584e4:
    li      r3, 0x0
    bl      __OSUnlockSramEx
    add     r3, r30, r29
    not     r0, r28
    lbz     r3, 0x26(r3)
    clrlwi  r0, r0, 24
    cmplw   r3, r0
    beq-    branch_0x8035850c
    li      r30, -0x5
    b       branch_0x803585e8

branch_0x8035850c:
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8035859c
    lwz     r3, 0x108(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x4
    bne-    branch_0x80358558
    bl      __OSLockSramEx
    mulli   r0, r29, 0xc
    lhzx    r28, r3, r0
    li      r3, 0x0
    bl      __OSUnlockSramEx
    lhz     r0, -0x7300(r13)
    cmplwi  r0, 0xffff
    beq-    branch_0x80358550
    cmplw   r28, r0
    beq-    branch_0x80358558
branch_0x80358550:
    li      r30, -0x2
    b       branch_0x803585e8

branch_0x80358558:
    li      r0, 0x2
    stw     r0, 0x24(r31)
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      __CARDEnableInterrupt
    mr.     r30, r3
    blt-    branch_0x803585e8
    lis     r3, __CARDExiHandler@h
    addi    r4, r3, __CARDExiHandler@l
    addi    r3, r29, 0x0
    bl      EXISetExiCallback
    mr      r3, r29
    bl      EXIUnlock
    lis     r4, unk_0000a000@ha
    lwz     r3, 0x80(r31)
    addi    r4, r4, unk_0000a000@l
    bl      DCInvalidateRange
branch_0x8035859c:
    lwz     r4, 0x24(r31)
    lis     r3, __CARDMountCallback@ha
    lwz     r0, 0xc(r31)
    addi    r7, r3, __CARDMountCallback@l
    addi    r3, r4, -0x2
    mullw   r4, r0, r3
    lwz     r5, 0x80(r31)
    slwi    r0, r3, 13
    add     r6, r5, r0
    addi    r3, r29, 0x0
    li      r5, 0x2000
    bl      __CARDRead
    mr.     r28, r3
    bge-    branch_0x803585e0
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      __CARDPutControlBlock
branch_0x803585e0:
    mr      r3, r28
    b       branch_0x80358614

branch_0x803585e8:
    mr      r3, r29
    bl      EXIUnlock
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      DoUnmount
    mr      r3, r30
    b       branch_0x80358614

branch_0x80358604:
    addi    r6, r4, 0x8
    b       branch_0x80358418

branch_0x8035860c:
    addi    r3, r5, 0x8
    b       branch_0x803584c4

branch_0x80358614:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __CARDMountCallback
__CARDMountCallback: # 0x80358634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    cmpwi   r29, -0x3
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    mulli   r5, r28, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r31, r0, r5
    beq-    branch_0x803586e4
    bge-    branch_0x80358680
    cmpwi   r29, -0x5
    beq-    branch_0x803586e4
    b       branch_0x803586f0

branch_0x80358680:
    cmpwi   r29, 0x1
    beq-    branch_0x803586d0
    bge-    branch_0x803586f0
    cmpwi   r29, 0x0
    bge-    branch_0x80358698
    b       branch_0x803586f0

branch_0x80358698:
    lwz     r3, 0x24(r31)
    addi    r0, r3, 0x1
    cmpwi   r0, 0x7
    stw     r0, 0x24(r31)
    bge-    branch_0x803586c0
    mr      r3, r28
    bl      DoMount
    mr.     r29, r3
    blt-    branch_0x803586f0
    b       branch_0x8035871c

branch_0x803586c0:
    mr      r3, r31
    bl      __CARDVerify
    mr      r29, r3
    b       branch_0x803586f0

branch_0x803586d0:
    mr      r3, r28
    bl      DoMount
    mr.     r29, r3
    blt-    branch_0x803586f0
    b       branch_0x8035871c

branch_0x803586e4:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      DoUnmount
branch_0x803586f0:
    lwz     r30, 0xd0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0xd0(r31)
    mr      r4, r29
    bl      __CARDPutControlBlock
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x8035871c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl CARDMountAsync
CARDMountAsync: # 0x8035873c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    mr.     r30, r3
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r29, r6, 0x0
    blt-    branch_0x80358768
    cmpwi   r30, 0x2
    blt-    branch_0x80358770
branch_0x80358768:
    li      r3, -0x80
    b       branch_0x803588c8

branch_0x80358770:
    lis     r3, 0x8000
    lbz     r0, 0x30e3(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80358788
    li      r3, -0x3
    b       branch_0x803588c8

branch_0x80358788:
    mulli   r4, r30, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r31, r0, r4
    bl      OSDisableInterrupts
    lwz     r0, 0x4(r31)
    addi    r28, r3, 0x0
    cmpwi   r0, -0x1
    bne-    branch_0x803587bc
    mr      r3, r28
    bl      OSRestoreInterrupts
    li      r3, -0x1
    b       branch_0x803588c8

branch_0x803587bc:
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x803587e8
    mr      r3, r30
    bl      EXIGetState
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x803587e8
    mr      r3, r28
    bl      OSRestoreInterrupts
    li      r3, -0x2
    b       branch_0x803588c8

branch_0x803587e8:
    li      r0, -0x1
    stw     r0, 0x4(r31)
    cmplwi  r29, 0x0
    stw     r26, 0x80(r31)
    stw     r27, 0xc4(r31)
    beq-    branch_0x80358808
    mr      r0, r29
    b       branch_0x80358810

branch_0x80358808:
    lis     r3, __CARDDefaultApiCallback@h
    addi    r0, r3, __CARDDefaultApiCallback@l
branch_0x80358810:
    stw     r0, 0xd0(r31)
    li      r0, 0x0
    stw     r0, 0xcc(r31)
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80358858
    lis     r3, __CARDExtHandler@h
    addi    r4, r3, __CARDExtHandler@l
    addi    r3, r30, 0x0
    bl      EXIAttach
    cmpwi   r3, 0x0
    bne-    branch_0x80358858
    li      r0, -0x3
    stw     r0, 0x4(r31)
    mr      r3, r28
    bl      OSRestoreInterrupts
    li      r3, -0x3
    b       branch_0x803588c8

branch_0x80358858:
    li      r29, 0x0
    stw     r29, 0x24(r31)
    li      r0, 0x1
    addi    r3, r30, 0x0
    stw     r0, 0x0(r31)
    li      r4, 0x0
    bl      EXISetExiCallback
    addi    r3, r31, 0xe0
    bl      OSCancelAlarm
    stw     r29, 0x84(r31)
    mr      r3, r28
    stw     r29, 0x88(r31)
    bl      OSRestoreInterrupts
    lis     r3, __CARDMountCallback@ha
    addi    r0, r3, __CARDMountCallback@l
    lis     r3, __CARDUnlockedHandler@h
    stw     r0, 0xdc(r31)
    addi    r5, r3, __CARDUnlockedHandler@l
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x803588bc
    li      r3, 0x0
    b       branch_0x803588c8

branch_0x803588bc:
    stw     r29, 0xdc(r31)
    mr      r3, r30
    bl      DoMount
branch_0x803588c8:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl CARDMount
CARDMount: # 0x803588dc
    mflr    r0
    lis     r6, __CARDSyncCallback@h
    stw     r0, 0x4(sp)
    addi    r6, r6, __CARDSyncCallback@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      CARDMountAsync
    cmpwi   r3, 0x0
    bge-    branch_0x80358908
    b       branch_0x80358910

branch_0x80358908:
    mr      r3, r31
    bl      __CARDSync
branch_0x80358910:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DoUnmount
DoUnmount: # 0x80358924
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    mulli   r5, r28, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r31, r0, r5
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r31)
    addi    r30, r3, 0x0
    cmpwi   r0, 0x0
    beq-    branch_0x80358998
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      EXISetExiCallback
    mr      r3, r28
    bl      EXIDetach
    addi    r3, r31, 0xe0
    bl      OSCancelAlarm
    li      r0, 0x0
    stw     r0, 0x0(r31)
    stw     r29, 0x4(r31)
    stw     r0, 0x24(r31)
branch_0x80358998:
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl CARDUnmount
CARDUnmount: # 0x803589c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r4, sp, 0xc
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x803589f0
    b       branch_0x80358a50

branch_0x803589f0:
    mulli   r4, r29, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r30, r0, r4
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x0
    beq-    branch_0x80358a44
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      EXISetExiCallback
    mr      r3, r29
    bl      EXIDetach
    addi    r3, r30, 0xe0
    bl      OSCancelAlarm
    li      r3, 0x0
    stw     r3, 0x0(r30)
    li      r0, -0x3
    stw     r0, 0x4(r30)
    stw     r3, 0x24(r30)
branch_0x80358a44:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x80358a50:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

