
.globl __CARDDefaultApiCallback
__CARDDefaultApiCallback: # 0x8035432c
    blr


.globl __CARDSyncCallback
__CARDSyncCallback: # 0x80354330
    mflr    r0
    mulli   r4, r3, 0x110
    stw     r0, 0x4(sp)
    lis     r3, 0x8040
    stwu    sp, -0x8(sp)
    addi    r0, r3, 0x3460
    add     r3, r0, r4
    addi    r3, r3, 0x8c
    bl      OSWakeupThread
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __CARDExtHandler
__CARDExtHandler: # 0x80354364
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    mulli   r4, r29, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r30, r0, r4
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80354420
    li      r31, 0x0
    stw     r31, 0x0(r30)
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      EXISetExiCallback
    addi    r3, r30, 0xe0
    bl      OSCancelAlarm
    lwz     r0, 0xcc(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x803543dc
    stw     r31, 0xcc(r30)
    mtlr    r12
    addi    r3, r29, 0x0
    li      r4, -0x3
    blrl
branch_0x803543dc:
    lwz     r0, 0x4(r30)
    cmpwi   r0, -0x1
    beq-    branch_0x803543f0
    li      r0, -0x3
    stw     r0, 0x4(r30)
branch_0x803543f0:
    lwz     r12, 0xc4(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x80354420
    lwz     r0, 0x24(r30)
    cmpwi   r0, 0x7
    blt-    branch_0x80354420
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xc4(r30)
    addi    r3, r29, 0x0
    li      r4, -0x3
    blrl
branch_0x80354420:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __CARDExiHandler
__CARDExiHandler: # 0x8035443c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    mulli   r4, r31, 0x110
    stw     r30, 0x20(sp)
    lis     r3, 0x8040
    stw     r29, 0x1c(sp)
    addi    r0, r3, 0x3460
    add     r30, r0, r4
    addi    r3, r30, 0xe0
    bl      OSCancelAlarm
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80354538
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x8035449c
    li      r29, -0x80
    b       branch_0x80354510

branch_0x8035449c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    bl      __CARDReadStatus
    mr.     r29, r3
    blt-    branch_0x80354508
    mr      r3, r31
    bl      __CARDClearStatus
    mr.     r29, r3
    blt-    branch_0x80354508
    lbz     r0, 0x10(sp)
    rlwinm. r0, r0, 0, 27, 28
    beq-    branch_0x803544d4
    li      r0, -0x5
    b       branch_0x803544d8

branch_0x803544d4:
    li      r0, 0x0
branch_0x803544d8:
    mr      r29, r0
    cmpwi   r29, -0x5
    bne-    branch_0x80354508
    lwz     r3, 0xa8(r30)
    subic.  r0, r3, 0x1
    stw     r0, 0xa8(r30)
    ble-    branch_0x80354508
    mr      r3, r31
    bl      Retry
    mr.     r29, r3
    blt-    branch_0x80354510
    b       branch_0x80354538

branch_0x80354508:
    mr      r3, r31
    bl      EXIUnlock
branch_0x80354510:
    lwz     r0, 0xcc(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80354538
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xcc(r30)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x80354538:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __CARDTxHandler
__CARDTxHandler: # 0x80354554
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r27, r3, 0x0
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    mulli   r4, r27, 0x110
    addi    r3, r27, 0x0
    add     r29, r0, r4
    bl      EXIDeselect
    cntlzw  r0, r3
    addi    r3, r27, 0x0
    srwi    r31, r0, 5
    bl      EXIUnlock
    lwz     r0, 0xc8(r29)
    cmplwi  r0, 0x0
    mr      r28, r0
    beq-    branch_0x803545e8
    li      r30, 0x0
    cmpwi   r31, 0x0
    stw     r30, 0xc8(r29)
    bne-    branch_0x803545c4
    mr      r3, r27
    bl      EXIProbe
    cmpwi   r3, 0x0
    beq-    branch_0x803545c4
    li      r30, 0x1
branch_0x803545c4:
    cmpwi   r30, 0x0
    beq-    branch_0x803545d4
    li      r4, 0x0
    b       branch_0x803545d8

branch_0x803545d4:
    li      r4, -0x3
branch_0x803545d8:
    addi    r12, r28, 0x0
    mtlr    r12
    addi    r3, r27, 0x0
    blrl
branch_0x803545e8:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __CARDUnlockedHandler
__CARDUnlockedHandler: # 0x803545fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    mulli   r4, r30, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r3, r0, r4
    lwz     r0, 0xdc(r3)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x80354668
    li      r0, 0x0
    stw     r0, 0xdc(r3)
    mr      r3, r30
    bl      EXIProbe
    cmpwi   r3, 0x0
    beq-    branch_0x80354654
    li      r4, 0x1
    b       branch_0x80354658

branch_0x80354654:
    li      r4, -0x3
branch_0x80354658:
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    blrl
branch_0x80354668:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __CARDEnableInterrupt
__CARDEnableInterrupt: # 0x80354680
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x803546b8
    li      r3, -0x3
    b       branch_0x80354728

branch_0x803546b8:
    cmpwi   r31, 0x0
    beq-    branch_0x803546c8
    lis     r0, 0x8101
    b       branch_0x803546cc

branch_0x803546c8:
    lis     r0, 0x8100
branch_0x803546cc:
    stw     r0, 0x10(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x2
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    addi    r3, r30, 0x0
    srwi    r31, r0, 5
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r30, 0x0
    or      r31, r31, r0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or.     r31, r31, r0
    beq-    branch_0x80354724
    li      r3, -0x3
    b       branch_0x80354728

branch_0x80354724:
    li      r3, 0x0
branch_0x80354728:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __CARDReadStatus
__CARDReadStatus: # 0x80354740
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x8035477c
    li      r3, -0x3
    b       branch_0x80354814

branch_0x8035477c:
    lis     r0, 0x8300
    stw     r0, 0x10(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x2
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    addi    r3, r29, 0x0
    srwi    r31, r0, 5
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    or      r31, r31, r0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r29, 0x0
    or      r31, r31, r0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r29, 0x0
    or      r31, r31, r0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or.     r31, r31, r0
    beq-    branch_0x80354810
    li      r3, -0x3
    b       branch_0x80354814

branch_0x80354810:
    li      r3, 0x0
branch_0x80354814:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __CARDClearStatus
__CARDClearStatus: # 0x80354830
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x4
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x80354864
    li      r3, -0x3
    b       branch_0x803548c4

branch_0x80354864:
    lis     r0, 0x8900
    stw     r0, 0xc(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    addi    r3, r30, 0x0
    srwi    r31, r0, 5
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r30, 0x0
    or      r31, r31, r0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or.     r31, r31, r0
    beq-    branch_0x803548c0
    li      r3, -0x3
    b       branch_0x803548c4

branch_0x803548c0:
    li      r3, 0x0
branch_0x803548c4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl TimeoutHandler
TimeoutHandler: # 0x803548dc
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3460
    addi    r0, r4, 0xe0
    stwu    sp, -0x18(sp)
    cmplw   r3, r0
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    beq-    branch_0x80354928
    addi    r0, r4, 0x1f0
    cmplw   r3, r0
    addi    r4, r4, 0x110
    addi    r30, r4, 0x0
    li      r31, 0x1
    beq-    branch_0x80354928
    li      r31, 0x2
branch_0x80354928:
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80354968
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      EXISetExiCallback
    lwz     r0, 0xcc(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80354968
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xcc(r30)
    addi    r3, r31, 0x0
    li      r4, -0x5
    blrl
branch_0x80354968:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl Retry
Retry: # 0x80354980
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    mulli   r4, r30, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r31, r0, r4
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x803549d0
    mr      r3, r30
    bl      EXIUnlock
    li      r3, -0x3
    b       branch_0x80354b94

branch_0x803549d0:
    addi    r3, r31, 0xe0
    bl      OSCancelAlarm
    lbz     r0, 0x94(r31)
    cmpwi   r0, 0xf3
    beq-    branch_0x80354aa0
    bge-    branch_0x803549f8
    cmpwi   r0, 0xf1
    beq-    branch_0x80354a3c
    bge-    branch_0x80354a04
    b       branch_0x80354aa0

branch_0x803549f8:
    cmpwi   r0, 0xf5
    bge-    branch_0x80354aa0
    b       branch_0x80354a3c

branch_0x80354a04:
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r4, 0x1062
    lis     r3, 0x8035
    srwi    r0, r0, 2
    addi    r4, r4, 0x4dd3
    mulhwu  r0, r4, r0
    srwi    r0, r0, 6
    mulli   r6, r0, 0x64
    addi    r7, r3, 0x48dc
    addi    r3, r31, 0xe0
    li      r5, 0x0
    bl      OSSetAlarm
    b       branch_0x80354aa0

branch_0x80354a3c:
    lis     r3, 0x8000
    lwz     r4, 0xc(r31)
    lwz     r0, 0xf8(r3)
    lis     r3, 0x8035
    srawi   r9, r4, 13
    srwi    r7, r0, 2
    li      r0, 0x2
    li      r4, 0x0
    mullw   r8, r4, r0
    mulhwu  r6, r7, r0
    add     r8, r8, r6
    mullw   r5, r7, r0
    addze   r9, r9
    mullw   r6, r7, r4
    srawi   r0, r9, 31
    mullw   r4, r0, r5
    mulhwu  r0, r9, r5
    addi    r7, r3, 0x48dc
    add     r3, r8, r6
    add     r4, r4, r0
    mullw   r0, r9, r3
    mullw   r6, r9, r5
    addi    r3, r31, 0xe0
    add     r5, r4, r0
    bl      OSSetAlarm
branch_0x80354aa0:
    lwz     r5, 0xa0(r31)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x94
    li      r6, 0x1
    bl      EXIImmEx
    cmpwi   r3, 0x0
    bne-    branch_0x80354ad4
    mr      r3, r30
    bl      EXIDeselect
    mr      r3, r30
    bl      EXIUnlock
    li      r3, -0x3
    b       branch_0x80354b94

branch_0x80354ad4:
    lbz     r0, 0x94(r31)
    cmplwi  r0, 0x52
    bne-    branch_0x80354b18
    lwz     r4, 0x80(r31)
    mr      r3, r30
    lwz     r5, 0x14(r31)
    li      r6, 0x1
    addi    r4, r4, 0x200
    bl      EXIImmEx
    cmpwi   r3, 0x0
    bne-    branch_0x80354b18
    mr      r3, r30
    bl      EXIDeselect
    mr      r3, r30
    bl      EXIUnlock
    li      r3, -0x3
    b       branch_0x80354b94

branch_0x80354b18:
    lwz     r3, 0xa4(r31)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x80354b40
    mr      r3, r30
    bl      EXIDeselect
    mr      r3, r30
    bl      EXIUnlock
    li      r3, 0x0
    b       branch_0x80354b94

branch_0x80354b40:
    lbz     r0, 0x94(r31)
    cmplwi  r0, 0x52
    bne-    branch_0x80354b54
    li      r5, 0x200
    b       branch_0x80354b58

branch_0x80354b54:
    li      r5, 0x80
branch_0x80354b58:
    lis     r3, 0x8035
    lwz     r4, 0xb4(r31)
    addi    r7, r3, 0x4554
    lwz     r6, 0xa4(r31)
    mr      r3, r30
    bl      EXIDma
    cmpwi   r3, 0x0
    bne-    branch_0x80354b90
    mr      r3, r30
    bl      EXIDeselect
    mr      r3, r30
    bl      EXIUnlock
    li      r3, -0x3
    b       branch_0x80354b94

branch_0x80354b90:
    li      r3, 0x0
branch_0x80354b94:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl UnlockedCallback
UnlockedCallback: # 0x80354bac
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    mulli   r5, r31, 0x110
    stw     r30, 0x10(sp)
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r30, r0, r5
    blt-    branch_0x80354c20
    lis     r3, 0x8035
    addi    r0, r3, 0x4bac
    lis     r3, 0x8035
    stw     r0, 0xdc(r30)
    addi    r5, r3, 0x45fc
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x80354c0c
    li      r4, 0x0
    b       branch_0x80354c20

branch_0x80354c0c:
    li      r0, 0x0
    stw     r0, 0xdc(r30)
    mr      r3, r31
    bl      Retry
    mr      r4, r3
branch_0x80354c20:
    cmpwi   r4, 0x0
    bge-    branch_0x80354ca4
    lbz     r0, 0x94(r30)
    cmpwi   r0, 0xf3
    beq-    branch_0x80354ca4
    bge-    branch_0x80354c50
    cmpwi   r0, 0x52
    beq-    branch_0x80354c5c
    blt-    branch_0x80354ca4
    cmpwi   r0, 0xf1
    bge-    branch_0x80354c84
    b       branch_0x80354ca4

branch_0x80354c50:
    cmpwi   r0, 0xf5
    bge-    branch_0x80354ca4
    b       branch_0x80354c84

branch_0x80354c5c:
    lwz     r0, 0xc8(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80354ca4
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xc8(r30)
    mr      r3, r31
    blrl
    b       branch_0x80354ca4

branch_0x80354c84:
    lwz     r12, 0xcc(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x80354ca4
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xcc(r30)
    mr      r3, r31
    blrl
branch_0x80354ca4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __CARDStart
__CARDStart: # 0x80354cbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bl      OSDisableInterrupts
    mulli   r5, r27, 0x110
    lis     r4, 0x8040
    addi    r0, r4, 0x3460
    add     r31, r0, r5
    lwz     r0, 0x0(r31)
    addi    r30, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x80354d04
    li      r31, -0x3
    b       branch_0x80354e50

branch_0x80354d04:
    cmplwi  r28, 0x0
    beq-    branch_0x80354d10
    stw     r28, 0xc8(r31)
branch_0x80354d10:
    cmplwi  r29, 0x0
    beq-    branch_0x80354d1c
    stw     r29, 0xcc(r31)
branch_0x80354d1c:
    lis     r3, 0x8035
    addi    r0, r3, 0x4bac
    lis     r3, 0x8035
    stw     r0, 0xdc(r31)
    addi    r5, r3, 0x45fc
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x80354d4c
    li      r31, -0x1
    b       branch_0x80354e50

branch_0x80354d4c:
    li      r0, 0x0
    stw     r0, 0xdc(r31)
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x4
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x80354d7c
    mr      r3, r27
    bl      EXIUnlock
    li      r31, -0x3
    b       branch_0x80354e50

branch_0x80354d7c:
    addi    r3, r31, 0xe0
    bl      OSCancelAlarm
    lbz     r0, 0x94(r31)
    cmpwi   r0, 0xf3
    beq-    branch_0x80354e4c
    bge-    branch_0x80354da4
    cmpwi   r0, 0xf1
    beq-    branch_0x80354de8
    bge-    branch_0x80354db0
    b       branch_0x80354e4c

branch_0x80354da4:
    cmpwi   r0, 0xf5
    bge-    branch_0x80354e4c
    b       branch_0x80354de8

branch_0x80354db0:
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r4, 0x1062
    lis     r3, 0x8035
    srwi    r0, r0, 2
    addi    r4, r4, 0x4dd3
    mulhwu  r0, r4, r0
    srwi    r0, r0, 6
    mulli   r6, r0, 0x64
    addi    r7, r3, 0x48dc
    addi    r3, r31, 0xe0
    li      r5, 0x0
    bl      OSSetAlarm
    b       branch_0x80354e4c

branch_0x80354de8:
    lis     r3, 0x8000
    lwz     r4, 0xc(r31)
    lwz     r0, 0xf8(r3)
    lis     r3, 0x8035
    srawi   r9, r4, 13
    srwi    r7, r0, 2
    li      r0, 0x2
    li      r4, 0x0
    mullw   r8, r4, r0
    mulhwu  r6, r7, r0
    add     r8, r8, r6
    mullw   r5, r7, r0
    addze   r9, r9
    mullw   r6, r7, r4
    srawi   r0, r9, 31
    mullw   r4, r0, r5
    mulhwu  r0, r9, r5
    addi    r7, r3, 0x48dc
    add     r3, r8, r6
    add     r4, r4, r0
    mullw   r0, r9, r3
    mullw   r6, r9, r5
    addi    r3, r31, 0xe0
    add     r5, r4, r0
    bl      OSSetAlarm
branch_0x80354e4c:
    li      r31, 0x0
branch_0x80354e50:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __CARDReadSegment
__CARDReadSegment: # 0x80354e70
    mflr    r0
    li      r6, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    mulli   r5, r30, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r31, r0, r5
    li      r0, 0x52
    stb     r0, 0x94(r31)
    li      r0, 0x0
    addi    r3, r30, 0x0
    lwz     r5, 0xb0(r31)
    extrwi  r5, r5, 7, 8
    stb     r5, 0x95(r31)
    li      r5, 0x0
    lwz     r7, 0xb0(r31)
    extrwi  r7, r7, 8, 15
    stb     r7, 0x96(r31)
    lwz     r7, 0xb0(r31)
    extrwi  r7, r7, 2, 23
    stb     r7, 0x97(r31)
    lwz     r7, 0xb0(r31)
    clrlwi  r7, r7, 25
    stb     r7, 0x98(r31)
    stw     r6, 0xa0(r31)
    stw     r0, 0xa4(r31)
    stw     r0, 0xa8(r31)
    bl      __CARDStart
    cmpwi   r3, -0x1
    bne-    branch_0x80354f00
    li      r3, 0x0
    b       branch_0x80354f8c

branch_0x80354f00:
    cmpwi   r3, 0x0
    blt-    branch_0x80354f8c
    lwz     r5, 0xa0(r31)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x94
    li      r6, 0x1
    bl      EXIImmEx
    cmpwi   r3, 0x0
    beq-    branch_0x80354f68
    lwz     r4, 0x80(r31)
    mr      r3, r30
    lwz     r5, 0x14(r31)
    li      r6, 0x1
    addi    r4, r4, 0x200
    bl      EXIImmEx
    cmpwi   r3, 0x0
    beq-    branch_0x80354f68
    lis     r3, 0x8035
    lwz     r4, 0xb4(r31)
    addi    r7, r3, 0x4554
    lwz     r6, 0xa4(r31)
    addi    r3, r30, 0x0
    li      r5, 0x200
    bl      EXIDma
    cmpwi   r3, 0x0
    bne-    branch_0x80354f88
branch_0x80354f68:
    li      r0, 0x0
    stw     r0, 0xc8(r31)
    mr      r3, r30
    bl      EXIDeselect
    mr      r3, r30
    bl      EXIUnlock
    li      r3, -0x3
    b       branch_0x80354f8c

branch_0x80354f88:
    li      r3, 0x0
branch_0x80354f8c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __CARDWritePage
__CARDWritePage: # 0x80354fa4
    mflr    r0
    li      r7, 0x5
    stw     r0, 0x4(sp)
    li      r6, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    mulli   r5, r30, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r31, r0, r5
    li      r0, 0xf2
    stb     r0, 0x94(r31)
    addi    r5, r4, 0x0
    li      r0, 0x3
    lwz     r3, 0xb0(r31)
    li      r4, 0x0
    extrwi  r3, r3, 7, 8
    stb     r3, 0x95(r31)
    addi    r3, r30, 0x0
    lwz     r8, 0xb0(r31)
    extrwi  r8, r8, 8, 15
    stb     r8, 0x96(r31)
    lwz     r8, 0xb0(r31)
    extrwi  r8, r8, 2, 23
    stb     r8, 0x97(r31)
    lwz     r8, 0xb0(r31)
    clrlwi  r8, r8, 25
    stb     r8, 0x98(r31)
    stw     r7, 0xa0(r31)
    stw     r6, 0xa4(r31)
    stw     r0, 0xa8(r31)
    bl      __CARDStart
    cmpwi   r3, -0x1
    bne-    branch_0x8035503c
    li      r3, 0x0
    b       branch_0x803550a8

branch_0x8035503c:
    cmpwi   r3, 0x0
    blt-    branch_0x803550a8
    lwz     r5, 0xa0(r31)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x94
    li      r6, 0x1
    bl      EXIImmEx
    cmpwi   r3, 0x0
    beq-    branch_0x80355084
    lis     r3, 0x8035
    lwz     r4, 0xb4(r31)
    addi    r7, r3, 0x4554
    lwz     r6, 0xa4(r31)
    addi    r3, r30, 0x0
    li      r5, 0x80
    bl      EXIDma
    cmpwi   r3, 0x0
    bne-    branch_0x803550a4
branch_0x80355084:
    li      r0, 0x0
    stw     r0, 0xcc(r31)
    mr      r3, r30
    bl      EXIDeselect
    mr      r3, r30
    bl      EXIUnlock
    li      r3, -0x3
    b       branch_0x803550a8

branch_0x803550a4:
    li      r3, 0x0
branch_0x803550a8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __CARDEraseSector
__CARDEraseSector: # 0x803550c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    mulli   r6, r29, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r31, r0, r6
    li      r0, 0xf1
    stb     r0, 0x94(r31)
    extrwi  r3, r4, 7, 8
    extrwi  r0, r4, 8, 15
    stb     r3, 0x95(r31)
    li      r6, 0x3
    addi    r3, r29, 0x0
    stb     r0, 0x96(r31)
    li      r0, -0x1
    li      r4, 0x0
    stw     r6, 0xa0(r31)
    stw     r0, 0xa4(r31)
    stw     r6, 0xa8(r31)
    bl      __CARDStart
    addi    r30, r3, 0x0
    cmpwi   r30, -0x1
    bne-    branch_0x80355138
    li      r30, 0x0
    b       branch_0x80355180

branch_0x80355138:
    cmpwi   r30, 0x0
    blt-    branch_0x80355180
    lwz     r5, 0xa0(r31)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x94
    li      r6, 0x1
    bl      EXIImmEx
    cmpwi   r3, 0x0
    bne-    branch_0x8035516c
    li      r0, 0x0
    stw     r0, 0xcc(r31)
    li      r30, -0x3
    b       branch_0x80355170

branch_0x8035516c:
    li      r30, 0x0
branch_0x80355170:
    mr      r3, r29
    bl      EXIDeselect
    mr      r3, r29
    bl      EXIUnlock
branch_0x80355180:
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl CARDInit
CARDInit: # 0x803551a0
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x3460
    stw     r29, 0xc(sp)
    lwz     r0, 0x10c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x803551d8
    lwz     r0, 0x21c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80355220
branch_0x803551d8:
    bl      DSPInit
    bl      OSInitAlarm
    li      r29, 0x0
    li      r31, -0x3
branch_0x803551e8:
    stw     r31, 0x4(r30)
    addi    r3, r30, 0x8c
    bl      OSInitThreadQueue
    addi    r3, r30, 0xe0
    bl      OSCreateAlarm
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r30, r30, 0x110
    blt+    branch_0x803551e8
    lis     r3, 0x8000
    bl      __CARDSetDiskID
    lis     r3, 0x803f
    subi    r3, r3, 0x7400
    bl      OSRegisterResetFunction
branch_0x80355220:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __CARDSetDiskID
__CARDSetDiskID: # 0x8035523c
    cmplwi  r3, 0x0
    lis     r4, 0x8040
    addi    r4, r4, 0x3460
    beq-    branch_0x80355254
    mr      r0, r3
    b       branch_0x80355258

branch_0x80355254:
    addi    r0, r4, 0x220
branch_0x80355258:
    cmplwi  r3, 0x0
    stw     r0, 0x10c(r4)
    beq-    branch_0x80355268
    b       branch_0x8035526c

branch_0x80355268:
    addi    r3, r4, 0x220
branch_0x8035526c:
    stw     r3, 0x21c(r4)
    blr


.globl __CARDGetControlBlock
__CARDGetControlBlock: # 0x80355274
    mflr    r0
    mulli   r6, r3, 0x110
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lis     r5, 0x8040
    cmpwi   r3, 0x0
    stw     r31, 0x1c(sp)
    addi    r0, r5, 0x3460
    stw     r30, 0x18(sp)
    add     r30, r0, r6
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    blt-    branch_0x803552bc
    cmpwi   r3, 0x2
    bge-    branch_0x803552bc
    lwz     r0, 0x10c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x803552c4
branch_0x803552bc:
    li      r3, -0x80
    b       branch_0x80355310

branch_0x803552c4:
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x803552dc
    li      r31, -0x3
    b       branch_0x80355308

branch_0x803552dc:
    lwz     r0, 0x4(r30)
    cmpwi   r0, -0x1
    bne-    branch_0x803552f0
    li      r31, -0x1
    b       branch_0x80355308

branch_0x803552f0:
    li      r0, -0x1
    stw     r0, 0x4(r30)
    li      r0, 0x0
    li      r31, 0x0
    stw     r0, 0xd0(r30)
    stw     r30, 0x0(r29)
branch_0x80355308:
    bl      OSRestoreInterrupts
    mr      r3, r31
branch_0x80355310:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __CARDPutControlBlock
__CARDPutControlBlock: # 0x8035532c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80355360
    stw     r31, 0x4(r30)
    b       branch_0x80355370

branch_0x80355360:
    lwz     r0, 0x4(r30)
    cmpwi   r0, -0x1
    bne-    branch_0x80355370
    stw     r31, 0x4(r30)
branch_0x80355370:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CARDFreeBlocks
CARDFreeBlocks: # 0x80355390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    addi    r4, sp, 0x18
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x803553c4
    b       branch_0x803554c4

branch_0x803553c4:
    lwz     r3, 0x18(sp)
    bl      __CARDGetFatBlock
    mr      r30, r3
    lwz     r3, 0x18(sp)
    bl      __CARDGetDirBlock
    cmplwi  r30, 0x0
    beq-    branch_0x803553e8
    cmplwi  r3, 0x0
    bne-    branch_0x80355428
branch_0x803553e8:
    lwz     r30, 0x18(sp)
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80355408
    li      r0, -0x6
    stw     r0, 0x4(r30)
    b       branch_0x8035541c

branch_0x80355408:
    lwz     r0, 0x4(r30)
    cmpwi   r0, -0x1
    bne-    branch_0x8035541c
    li      r0, -0x6
    stw     r0, 0x4(r30)
branch_0x8035541c:
    bl      OSRestoreInterrupts
    li      r3, -0x6
    b       branch_0x803554c4

branch_0x80355428:
    cmplwi  r29, 0x0
    beq-    branch_0x80355444
    lwz     r4, 0x18(sp)
    lhz     r0, 0x6(r30)
    lwz     r4, 0xc(r4)
    mullw   r0, r4, r0
    stw     r0, 0x0(r29)
branch_0x80355444:
    cmplwi  r31, 0x0
    beq-    branch_0x80355488
    li      r0, 0x0
    stw     r0, 0x0(r31)
    li      r5, 0x0
    b       branch_0x8035547c

branch_0x8035545c:
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0xff
    bne-    branch_0x80355474
    lwz     r4, 0x0(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r31)
branch_0x80355474:
    addi    r3, r3, 0x40
    addi    r5, r5, 0x1
branch_0x8035547c:
    clrlwi  r0, r5, 16
    cmplwi  r0, 0x7f
    blt+    branch_0x8035545c
branch_0x80355488:
    lwz     r30, 0x18(sp)
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x803554a8
    li      r0, 0x0
    stw     r0, 0x4(r30)
    b       branch_0x803554bc

branch_0x803554a8:
    lwz     r0, 0x4(r30)
    cmpwi   r0, -0x1
    bne-    branch_0x803554bc
    li      r0, 0x0
    stw     r0, 0x4(r30)
branch_0x803554bc:
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x803554c4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __CARDSync
__CARDSync: # 0x803554e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    mulli   r4, r28, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r31, r0, r4
    bl      OSDisableInterrupts
    mr      r29, r3
    b       branch_0x80355524

branch_0x8035551c:
    addi    r3, r31, 0x8c
    bl      OSSleepThread
branch_0x80355524:
    cmpwi   r28, 0x0
    blt-    branch_0x80355534
    cmpwi   r28, 0x2
    blt-    branch_0x8035553c
branch_0x80355534:
    li      r0, -0x80
    b       branch_0x80355540

branch_0x8035553c:
    lwz     r0, 0x4(r31)
branch_0x80355540:
    mr      r30, r0
    cmpwi   r30, -0x1
    beq+    branch_0x8035551c
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OnReset_80355578
OnReset_80355578: # 0x80355578
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x803555b4
    li      r3, 0x0
    bl      CARDUnmount
    cmpwi   r3, -0x1
    beq-    branch_0x803555ac
    li      r3, 0x1
    bl      CARDUnmount
    cmpwi   r3, -0x1
    bne-    branch_0x803555b4
branch_0x803555ac:
    li      r3, 0x0
    b       branch_0x803555b8

branch_0x803555b4:
    li      r3, 0x1
branch_0x803555b8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

