
.globl SIBusy
SIBusy: # 0x80368318
    lis     r3, 0x803f
    lwz     r0, -0x6a78(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x80368330
    li      r3, 0x1
    blr

branch_0x80368330:
    li      r3, 0x0
    blr


.globl SIIsChanBusy
SIIsChanBusy: # 0x80368338
    lis     r4, 0x8040
    slwi    r5, r3, 5
    addi    r0, r4, 0x3ea0
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    li      r5, 0x1
    cmpwi   r0, -0x1
    bne-    branch_0x8036836c
    lis     r4, 0x803f
    lwz     r0, -0x6a78(r4)
    cmpw    r0, r3
    beq-    branch_0x8036836c
    li      r5, 0x0
branch_0x8036836c:
    mr      r3, r5
    blr


.globl CompleteTransfer
CompleteTransfer: # 0x80368374
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x6400
    stw     r29, 0x14(sp)
    addi    r29, r30, 0x34
    stw     r28, 0x10(sp)
    lwz     r0, 0x6434(r3)
    lwz     r28, 0x6438(r3)
    lis     r3, 0x803f
    oris    r0, r0, 0x8000
    clrrwi  r0, r0, 1
    stw     r0, 0x34(r30)
    subi    r31, r3, 0x6a78
    lwz     r0, 0x0(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x80368634
    bl      __OSGetSystemTime
    lwz     r6, 0x0(r31)
    lis     r5, 0x8040
    addi    r0, r5, 0x3fe0
    slwi    r5, r6, 3
    add     r5, r0, r5
    stw     r4, 0x4(r5)
    addi    r6, r31, 0x8
    li      r4, 0x0
    stw     r3, 0x0(r5)
    lwz     r0, 0x8(r31)
    lwz     r5, 0xc(r31)
    srwi    r7, r0, 2
    cmplwi  r7, 0x0
    ble-    branch_0x8036849c
    cmplwi  r7, 0x8
    subi    r3, r7, 0x8
    ble-    branch_0x8036863c
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmplwi  r3, 0x0
    mtctr   r0
    ble-    branch_0x8036863c
branch_0x80368420:
    lwz     r0, 0x80(r30)
    addi    r4, r4, 0x8
    stw     r0, 0x0(r5)
    lwz     r0, 0x84(r30)
    stw     r0, 0x4(r5)
    lwz     r0, 0x88(r30)
    stw     r0, 0x8(r5)
    lwz     r0, 0x8c(r30)
    stw     r0, 0xc(r5)
    lwz     r0, 0x90(r30)
    stw     r0, 0x10(r5)
    lwz     r0, 0x94(r30)
    stw     r0, 0x14(r5)
    lwz     r0, 0x98(r30)
    stw     r0, 0x18(r5)
    lwz     r0, 0x9c(r30)
    addi    r30, r30, 0x20
    stw     r0, 0x1c(r5)
    addi    r5, r5, 0x20
    bdnz+      branch_0x80368420
    b       branch_0x8036863c

branch_0x80368474:
    subf    r0, r4, r7
    cmplw   r4, r7
    mtctr   r0
    bge-    branch_0x8036849c
branch_0x80368484:
    lwz     r0, 0x80(r3)
    addi    r3, r3, 0x4
    addi    r4, r4, 0x1
    stw     r0, 0x0(r5)
    addi    r5, r5, 0x4
    bdnz+      branch_0x80368484
branch_0x8036849c:
    lwz     r0, 0x0(r6)
    clrlwi. r3, r0, 30
    beq-    branch_0x803685b4
    lis     r6, 0xcc00
    addi    r6, r6, 0x6400
    slwi    r0, r4, 2
    add     r4, r6, r0
    lwz     r6, 0x80(r4)
    li      r4, 0x0
    ble-    branch_0x803685b4
    cmplwi  r3, 0x8
    subi    r7, r3, 0x8
    ble-    branch_0x80368588
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmplwi  r7, 0x0
    mtctr   r0
    ble-    branch_0x80368588
branch_0x803684e4:
    subfic  r0, r4, 0x3
    slwi    r7, r0, 3
    addi    r0, r4, 0x1
    srw     r7, r6, r7
    subfic  r0, r0, 0x3
    stb     r7, 0x0(r5)
    slwi    r0, r0, 3
    addi    r7, r4, 0x2
    srw     r0, r6, r0
    subfic  r7, r7, 0x3
    stb     r0, 0x1(r5)
    slwi    r7, r7, 3
    srw     r12, r6, r7
    neg     r7, r4
    stb     r12, 0x2(r5)
    slwi    r8, r7, 3
    addi    r7, r4, 0x4
    srw     r11, r6, r8
    subfic  r7, r7, 0x3
    stb     r11, 0x3(r5)
    slwi    r8, r7, 3
    addi    r7, r4, 0x5
    srw     r10, r6, r8
    subfic  r7, r7, 0x3
    stb     r10, 0x4(r5)
    slwi    r8, r7, 3
    srw     r9, r6, r8
    addi    r7, r4, 0x6
    stb     r9, 0x5(r5)
    subfic  r8, r7, 0x3
    addi    r7, r4, 0x7
    slwi    r8, r8, 3
    srw     r8, r6, r8
    subfic  r7, r7, 0x3
    stb     r8, 0x6(r5)
    slwi    r7, r7, 3
    srw     r7, r6, r7
    stb     r7, 0x7(r5)
    addi    r5, r5, 0x8
    addi    r4, r4, 0x8
    bdnz+      branch_0x803684e4
branch_0x80368588:
    subf    r0, r4, r3
    cmplw   r4, r3
    mtctr   r0
    bge-    branch_0x803685b4
branch_0x80368598:
    subfic  r0, r4, 0x3
    slwi    r0, r0, 3
    srw     r0, r6, r0
    stb     r0, 0x0(r5)
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    bdnz+      branch_0x80368598
branch_0x803685b4:
    lwz     r0, 0x0(r29)
    rlwinm. r0, r0, 0, 2, 2
    beq-    branch_0x80368608
    lwz     r3, 0x0(r31)
    subfic  r0, r3, 0x3
    slwi    r0, r0, 3
    srw     r28, r28, r0
    clrlwi  r28, r28, 28
    rlwinm. r0, r28, 0, 28, 28
    beq-    branch_0x803685f8
    slwi    r0, r3, 2
    add     r3, r31, r0
    lwzu    r0, 0x14(r3)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x803685f8
    li      r0, 0x8
    stw     r0, 0x0(r3)
branch_0x803685f8:
    cmplwi  r28, 0x0
    bne-    branch_0x8036862c
    li      r28, 0x4
    b       branch_0x8036862c

branch_0x80368608:
    bl      __OSGetSystemTime
    lwz     r6, 0x0(r31)
    lis     r5, 0x8040
    addi    r0, r5, 0x3fc0
    slwi    r5, r6, 3
    add     r5, r0, r5
    stw     r4, 0x4(r5)
    li      r28, 0x0
    stw     r3, 0x0(r5)
branch_0x8036862c:
    li      r0, -0x1
    stw     r0, 0x0(r31)
branch_0x80368634:
    mr      r3, r28
    b       branch_0x80368650

branch_0x8036863c:
    lis     r3, 0xcc00
    slwi    r0, r4, 2
    addi    r3, r3, 0x6400
    add     r3, r3, r0
    b       branch_0x80368474

branch_0x80368650:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SIInterruptHandler
SIInterruptHandler: # 0x80368670
    mflr    r0
    lis     r5, 0xcc00
    stw     r0, 0x4(sp)
    lis     r7, 0x8040
    lis     r6, 0x803f
    stwu    sp, -0x48(sp)
    stmw    r21, 0x1c(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    addi    r28, r7, 0x3ea0
    subi    r29, r6, 0x6a78
    lwz     r24, 0x6434(r5)
    clrrwi  r5, r24, 30
    addis   r0, r5, 0x4000
    cmplwi  r0, 0x0
    bne-    branch_0x80368830
    lwz     r23, 0x0(r29)
    bl      CompleteTransfer
    lwz     r21, 0x10(r29)
    li      r27, 0x0
    addi    r22, r3, 0x0
    stw     r27, 0x10(r29)
    addi    r26, r23, 0x0
branch_0x803686cc:
    addi    r26, r26, 0x1
    srawi   r0, r26, 2
    addze   r0, r0
    slwi    r0, r0, 2
    subfc   r0, r0, r26
    mr      r26, r0
    slwi    r0, r0, 5
    add     r25, r28, r0
    lwz     r0, 0x0(r25)
    cmpwi   r0, -0x1
    beq-    branch_0x80368760
    bl      __OSGetSystemTime
    lwz     r0, 0x18(r25)
    xoris   r5, r3, 0x8000
    lwz     r6, 0x1c(r25)
    xoris   r3, r0, 0x8000
    subfc   r0, r6, r4
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg.    r3, r3
    bne-    branch_0x80368760
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r5, 0x8(r25)
    lwz     r6, 0xc(r25)
    lwz     r7, 0x10(r25)
    lwz     r8, 0x14(r25)
    bl      __SITransfer
    cmpwi   r3, 0x0
    beq-    branch_0x8036876c
    mulli   r0, r26, 0x28
    add     r3, r28, r0
    addi    r3, r3, 0x80
    bl      OSCancelAlarm
    li      r0, -0x1
    stw     r0, 0x0(r25)
    b       branch_0x8036876c

branch_0x80368760:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x4
    blt+    branch_0x803686cc
branch_0x8036876c:
    cmplwi  r21, 0x0
    beq-    branch_0x8036878c
    addi    r12, r21, 0x0
    mtlr    r12
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    addi    r5, r31, 0x0
    blrl
branch_0x8036878c:
    lis     r3, 0xcc00
    addi    r4, r3, 0x6400
    lwz     r5, 0x6438(r3)
    slwi    r0, r23, 3
    lis     r3, 0xf00
    sraw    r0, r3, r0
    and     r5, r5, r0
    slwi    r0, r23, 2
    stw     r5, 0x38(r4)
    add     r6, r29, r0
    lwzu    r0, 0x14(r6)
    cmplwi  r0, 0x80
    bne-    branch_0x80368830
    slwi    r0, r23, 5
    lwzx    r0, r28, r0
    li      r3, 0x1
    cmpwi   r0, -0x1
    bne-    branch_0x803687e4
    lwz     r0, 0x0(r29)
    cmpw    r0, r23
    beq-    branch_0x803687e4
    li      r3, 0x0
branch_0x803687e4:
    cmpwi   r3, 0x0
    bne-    branch_0x80368830
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r3, 0x431c
    lis     r4, 0x8037
    srwi    r0, r0, 2
    subi    r3, r3, 0x217d
    mulhwu  r0, r3, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0x41
    subi    r8, r4, 0x6ba0
    srwi    r10, r0, 3
    addi    r3, r23, 0x0
    subi    r4, r13, 0x5770
    li      r5, 0x1
    li      r7, 0x3
    li      r9, 0x0
    bl      SITransfer
branch_0x80368830:
    rlwinm  r3, r24, 0, 3, 4
    addis   r0, r3, 0xe800
    cmplwi  r0, 0x0
    bne-    branch_0x803689a0
    bl      VIGetCurrentLine
    lwz     r0, 0x4(r29)
    addi    r23, r28, 0x1e0
    addi    r24, r29, 0x4
    addi    r22, r23, 0x0
    addi    r21, r3, 0x1
    extrwi  r26, r0, 10, 6
    li      r25, 0x0
branch_0x80368860:
    mr      r3, r25
    bl      SIGetResponseRaw
    cmpwi   r3, 0x0
    beq-    branch_0x80368874
    stw     r21, 0x0(r22)
branch_0x80368874:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x4
    addi    r22, r22, 0x4
    blt+    branch_0x80368860
    lwz     r5, 0x0(r24)
    lis     r3, 0x8000
    li      r0, 0x18
    srw     r0, r3, r0
    and.    r0, r5, r0
    srwi    r6, r26, 1
    beq-    branch_0x803688c0
    lwz     r0, 0x0(r23)
    cmplwi  r0, 0x0
    beq-    branch_0x803689a0
    lwz     r0, 0x0(r23)
    add     r0, r6, r0
    cmplw   r0, r21
    bge-    branch_0x803688c0
    b       branch_0x803689a0

branch_0x803688c0:
    li      r0, 0x19
    srw     r0, r3, r0
    and.    r0, r5, r0
    addi    r4, r23, 0x4
    beq-    branch_0x803688f4
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x803689a0
    lwz     r0, 0x0(r4)
    add     r0, r6, r0
    cmplw   r0, r21
    bge-    branch_0x803688f4
    b       branch_0x803689a0

branch_0x803688f4:
    li      r0, 0x1a
    srw     r0, r3, r0
    and.    r0, r5, r0
    addi    r4, r4, 0x4
    beq-    branch_0x80368928
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x803689a0
    lwz     r0, 0x0(r4)
    add     r0, r6, r0
    cmplw   r0, r21
    bge-    branch_0x80368928
    b       branch_0x803689a0

branch_0x80368928:
    li      r0, 0x1b
    srw     r0, r3, r0
    and.    r0, r5, r0
    addi    r4, r4, 0x4
    beq-    branch_0x8036895c
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x803689a0
    lwz     r0, 0x0(r4)
    add     r0, r6, r0
    cmplw   r0, r21
    bge-    branch_0x8036895c
    b       branch_0x803689a0

branch_0x8036895c:
    li      r22, 0x0
    stw     r22, 0x0(r23)
    addi    r21, r28, 0x1a0
    stw     r22, 0x1e4(r28)
    stw     r22, 0x1e8(r28)
    stw     r22, 0x1ec(r28)
branch_0x80368974:
    lwz     r12, 0x0(r21)
    cmplwi  r12, 0x0
    beq-    branch_0x80368990
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    blrl
branch_0x80368990:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x4
    addi    r21, r21, 0x4
    blt+    branch_0x80368974
branch_0x803689a0:
    lmw     r21, 0x1c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl SIEnablePollingInterrupt
SIEnablePollingInterrupt: # 0x803689b4
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x3ea0
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    lwzu    r5, 0x6434(r4)
    rlwinm. r0, r5, 0, 4, 4
    beq-    branch_0x803689f4
    li      r30, 0x1
    b       branch_0x803689f8

branch_0x803689f4:
    li      r30, 0x0
branch_0x803689f8:
    cmpwi   r29, 0x0
    beq-    branch_0x80368a1c
    li      r0, 0x0
    stw     r0, 0x1e0(r31)
    oris    r5, r5, 0x800
    stw     r0, 0x1e4(r31)
    stw     r0, 0x1e8(r31)
    stw     r0, 0x1ec(r31)
    b       branch_0x80368a20

branch_0x80368a1c:
    rlwinm  r5, r5, 0, 5, 3
branch_0x80368a20:
    rlwinm  r5, r5, 0, 1, 30
    stw     r5, 0x0(r4)
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl SIRegisterPollingHandler
SIRegisterPollingHandler: # 0x80368a4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, 0x8040
    li      r0, 0x4
    addi    r4, r4, 0x4040
    mtctr   r0
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
branch_0x80368a80:
    lwz     r0, 0x0(r3)
    cmplw   r0, r30
    bne-    branch_0x80368a9c
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x80368b00

branch_0x80368a9c:
    addi    r3, r3, 0x4
    bdnz+      branch_0x80368a80
    li      r0, 0x4
    mtctr   r0
    li      r5, 0x0
branch_0x80368ab0:
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80368ae8
    lis     r3, 0x8040
    slwi    r4, r5, 2
    addi    r0, r3, 0x4040
    add     r3, r0, r4
    stw     r30, 0x0(r3)
    li      r3, 0x1
    bl      SIEnablePollingInterrupt
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x80368b00

branch_0x80368ae8:
    addi    r4, r4, 0x4
    addi    r5, r5, 0x1
    bdnz+      branch_0x80368ab0
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x80368b00:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SIUnregisterPollingHandler
SIUnregisterPollingHandler: # 0x80368b18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, 0x8040
    li      r0, 0x4
    addi    r5, r4, 0x4040
    mtctr   r0
    addi    r31, r3, 0x0
    addi    r3, r5, 0x0
    li      r4, 0x0
branch_0x80368b50:
    lwz     r0, 0x0(r3)
    cmplw   r0, r30
    bne-    branch_0x80368bdc
    lis     r3, 0x8040
    slwi    r4, r4, 2
    addi    r0, r3, 0x4040
    add     r3, r0, r4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    li      r4, 0x0
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80368bbc
    addi    r3, r5, 0x4
    lwz     r0, 0x4(r5)
    li      r4, 0x1
    cmplwi  r0, 0x0
    bne-    branch_0x80368bbc
    lwzu    r0, 0x4(r3)
    li      r4, 0x2
    cmplwi  r0, 0x0
    bne-    branch_0x80368bbc
    lwz     r0, 0x4(r3)
    li      r4, 0x3
    cmplwi  r0, 0x0
    bne-    branch_0x80368bbc
    li      r4, 0x4
branch_0x80368bbc:
    cmpwi   r4, 0x4
    bne-    branch_0x80368bcc
    li      r3, 0x0
    bl      SIEnablePollingInterrupt
branch_0x80368bcc:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x80368bf4

branch_0x80368bdc:
    addi    r3, r3, 0x4
    addi    r4, r4, 0x1
    bdnz+      branch_0x80368b50
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x80368bf4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SIInit
SIInit: # 0x80368c0c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    addi    r6, r3, 0x3ea0
    lis     r3, 0x803f
    stwu    sp, -0x8(sp)
    li      r5, -0x1
    subi    r4, r3, 0x6a78
    stw     r5, 0x60(r6)
    li      r0, 0x0
    li      r3, 0x0
    stw     r5, 0x40(r6)
    stw     r5, 0x20(r6)
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r4)
    bl      SISetSamplingRate
    lis     r3, 0xcc00
branch_0x80368c50:
    addi    r4, r3, 0x6400
    lwzu    r0, 0x34(r4)
    clrlwi. r0, r0, 31
    bne+    branch_0x80368c50
    lis     r0, 0x8000
    lis     r3, 0x8037
    stw     r0, 0x0(r4)
    subi    r4, r3, 0x7990
    li      r3, 0x14
    bl      __OSSetInterruptHandler
    li      r3, 0x800
    bl      __OSUnmaskInterrupts
    li      r3, 0x0
    bl      SIGetType
    li      r3, 0x1
    bl      SIGetType
    li      r3, 0x2
    bl      SIGetType
    li      r3, 0x3
    bl      SIGetType
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __SITransfer
__SITransfer: # 0x80368cb0
    mflr    r0
    lis     r9, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    subi    r25, r9, 0x6a78
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r25)
    cmpwi   r0, -0x1
    beq-    branch_0x80368cfc
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80368ea8

branch_0x80368cfc:
    lis     r6, 0xcc00
    slwi    r0, r26, 3
    lwz     r7, 0x6438(r6)
    lis     r4, 0xf00
    sraw    r0, r4, r0
    and     r7, r7, r0
    stw     r7, 0x6438(r6)
    addi    r0, r28, 0x3
    srwi    r4, r0, 2
    stw     r26, 0x0(r25)
    cmplwi  r4, 0x0
    li      r5, 0x0
    stw     r31, 0x10(r25)
    stw     r30, 0x8(r25)
    stw     r29, 0xc(r25)
    ble-    branch_0x80368ddc
    cmplwi  r4, 0x8
    subi    r7, r4, 0x8
    ble-    branch_0x80368e90
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmplwi  r7, 0x0
    mtctr   r0
    addi    r7, r27, 0x0
    addi    r6, r6, 0x6400
    ble-    branch_0x80368e90
branch_0x80368d64:
    lwz     r0, 0x0(r7)
    addi    r5, r5, 0x8
    stw     r0, 0x80(r6)
    lwz     r0, 0x4(r7)
    stw     r0, 0x84(r6)
    lwz     r0, 0x8(r7)
    stw     r0, 0x88(r6)
    lwz     r0, 0xc(r7)
    stw     r0, 0x8c(r6)
    lwz     r0, 0x10(r7)
    stw     r0, 0x90(r6)
    lwz     r0, 0x14(r7)
    stw     r0, 0x94(r6)
    lwz     r0, 0x18(r7)
    stw     r0, 0x98(r6)
    lwz     r0, 0x1c(r7)
    addi    r7, r7, 0x20
    stw     r0, 0x9c(r6)
    addi    r6, r6, 0x20
    bdnz+      branch_0x80368d64
    b       branch_0x80368e90

branch_0x80368db8:
    subf    r0, r5, r4
    cmplw   r5, r4
    mtctr   r0
    bge-    branch_0x80368ddc
branch_0x80368dc8:
    lwz     r0, 0x0(r6)
    addi    r6, r6, 0x4
    stw     r0, 0x80(r7)
    addi    r7, r7, 0x4
    bdnz+      branch_0x80368dc8
branch_0x80368ddc:
    lis     r4, 0xcc00
    addi    r6, r4, 0x6400
    lwzu    r0, 0x34(r6)
    li      r4, 0x1
    stw     r0, 0x24(sp)
    cmplwi  r31, 0x0
    lbz     r0, 0x24(sp)
    insrwi  r0, r4, 1, 24
    stb     r0, 0x24(sp)
    beq-    branch_0x80368e08
    b       branch_0x80368e0c

branch_0x80368e08:
    li      r4, 0x0
branch_0x80368e0c:
    lbz     r0, 0x24(sp)
    insrwi  r0, r4, 1, 25
    cmplwi  r28, 0x80
    stb     r0, 0x24(sp)
    bne-    branch_0x80368e28
    li      r0, 0x0
    b       branch_0x80368e2c

branch_0x80368e28:
    mr      r0, r28
branch_0x80368e2c:
    clrlwi  r4, r0, 24
    lbz     r0, 0x25(sp)
    insrwi  r0, r4, 7, 25
    cmplwi  r30, 0x80
    stb     r0, 0x25(sp)
    bne-    branch_0x80368e4c
    li      r0, 0x0
    b       branch_0x80368e50

branch_0x80368e4c:
    mr      r0, r30
branch_0x80368e50:
    clrlwi  r4, r0, 24
    lbz     r0, 0x26(sp)
    insrwi  r0, r4, 7, 25
    stb     r0, 0x26(sp)
    li      r4, 0x1
    lbz     r0, 0x27(sp)
    insrwi  r0, r26, 2, 29
    stb     r0, 0x27(sp)
    lbz     r0, 0x27(sp)
    insrwi  r0, r4, 1, 31
    stb     r0, 0x27(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x0(r6)
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x80368ea8

branch_0x80368e90:
    lis     r6, 0xcc00
    slwi    r0, r5, 2
    addi    r7, r6, 0x6400
    add     r6, r27, r0
    add     r7, r7, r0
    b       branch_0x80368db8

branch_0x80368ea8:
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl SIGetStatus
SIGetStatus: # 0x80368ebc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    subfic  r0, r30, 0x3
    lwz     r31, 0x6438(r4)
    slwi    r0, r0, 3
    srw     r31, r31, r0
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x80368f18
    lis     r4, 0x803f
    slwi    r5, r30, 2
    subi    r0, r4, 0x6a64
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x80368f18
    li      r0, 0x8
    stw     r0, 0x0(r4)
branch_0x80368f18:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SISetCommand
SISetCommand: # 0x80368f38
    mulli   r0, r3, 0xc
    lis     r3, 0xcc00
    addi    r3, r3, 0x6400
    stwx    r4, r3, r0
    blr


.globl SITransferCommands
SITransferCommands: # 0x80368f4c
    lis     r3, 0xcc00
    lis     r0, 0x8000
    stw     r0, 0x6438(r3)
    blr


.globl SISetXY
SISetXY: # 0x80368f5c
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 8
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    slwi    r31, r3, 16
    or      r31, r31, r0
    bl      OSDisableInterrupts
    lis     r4, 0x803f
    subi    r4, r4, 0x6a78
    lwz     r0, 0x4(r4)
    addi    r5, r4, 0x4
    lis     r4, 0xcc00
    rlwinm  r0, r0, 0, 24, 5
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    or      r0, r0, r31
    stw     r0, 0x0(r5)
    lwz     r31, 0x0(r5)
    stw     r31, 0x6430(r4)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SIEnablePolling
SIEnablePolling: # 0x80368fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    bne-    branch_0x80368ff0
    lis     r3, 0x803f
    subi    r3, r3, 0x6a78
    lwz     r3, 0x4(r3)
    b       branch_0x80369050

branch_0x80368ff0:
    bl      OSDisableInterrupts
    lis     r4, 0x803f
    subi    r4, r4, 0x6a78
    srwi    r31, r31, 24
    lwz     r0, 0x4(r4)
    addi    r5, r4, 0x4
    extrwi  r4, r31, 4, 24
    andc    r0, r0, r4
    stw     r0, 0x0(r5)
    oris    r0, r4, 0x3ff
    ori     r0, r0, 0xfff0
    and     r31, r31, r0
    lwz     r0, 0x0(r5)
    rlwinm  r31, r31, 0, 24, 5
    or      r0, r0, r31
    stw     r0, 0x0(r5)
    lis     r4, 0xcc00
    addi    r4, r4, 0x6400
    lwz     r31, 0x0(r5)
    lis     r0, 0x8000
    stw     r0, 0x38(r4)
    stw     r31, 0x30(r4)
    bl      OSRestoreInterrupts
    mr      r3, r31
branch_0x80369050:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SIDisablePolling
SIDisablePolling: # 0x80369064
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    bne-    branch_0x8036908c
    lis     r3, 0x803f
    subi    r3, r3, 0x6a78
    lwz     r3, 0x4(r3)
    b       branch_0x803690bc

branch_0x8036908c:
    bl      OSDisableInterrupts
    lis     r4, 0x803f
    subi    r4, r4, 0x6a78
    lwz     r0, 0x4(r4)
    rlwinm  r31, r31, 8, 24, 27
    addi    r5, r4, 0x4
    lis     r4, 0xcc00
    andc    r31, r0, r31
    stw     r31, 0x6430(r4)
    stw     r31, 0x0(r5)
    bl      OSRestoreInterrupts
    mr      r3, r31
branch_0x803690bc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SIGetResponseRaw
SIGetResponseRaw: # 0x803690d0
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x3ea0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1c(sp)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    subfic  r0, r30, 0x3
    lwz     r29, 0x6438(r4)
    slwi    r0, r0, 3
    srw     r29, r29, r0
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x80369138
    lis     r4, 0x803f
    slwi    r5, r30, 2
    subi    r0, r4, 0x6a64
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x80369138
    li      r0, 0x8
    stw     r0, 0x0(r4)
branch_0x80369138:
    bl      OSRestoreInterrupts
    rlwinm. r0, r29, 0, 26, 26
    beq-    branch_0x80369184
    mulli   r4, r30, 0xc
    lis     r3, 0xcc00
    addi    r0, r3, 0x6400
    add     r3, r0, r4
    slwi    r4, r30, 3
    lwz     r0, 0x4(r3)
    add     r6, r31, r4
    stw     r0, 0x1c0(r6)
    slwi    r0, r30, 2
    add     r4, r31, r0
    lwz     r5, 0x8(r3)
    li      r0, 0x1
    li      r3, 0x1
    stw     r5, 0x1c4(r6)
    stw     r0, 0x1b0(r4)
    b       branch_0x80369188

branch_0x80369184:
    li      r3, 0x0
branch_0x80369188:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl SIGetResponse
SIGetResponse: # 0x803691a4
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r28, r5, 0x3ea0
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    addi    r3, r29, 0x0
    bl      SIGetStatus
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x80369214
    mulli   r4, r29, 0xc
    lis     r3, 0xcc00
    addi    r0, r3, 0x6400
    add     r4, r0, r4
    slwi    r3, r29, 3
    lwz     r0, 0x4(r4)
    add     r5, r28, r3
    stw     r0, 0x1c0(r5)
    slwi    r0, r29, 2
    add     r3, r28, r0
    lwz     r4, 0x8(r4)
    li      r0, 0x1
    stw     r4, 0x1c4(r5)
    stw     r0, 0x1b0(r3)
branch_0x80369214:
    slwi    r0, r29, 2
    add     r3, r28, r0
    lwz     r27, 0x1b0(r3)
    li      r0, 0x0
    cmpwi   r27, 0x0
    stw     r0, 0x1b0(r3)
    beq-    branch_0x80369248
    slwi    r0, r29, 3
    add     r3, r28, r0
    lwz     r0, 0x1c0(r3)
    stw     r0, 0x0(r30)
    lwz     r0, 0x1c4(r3)
    stw     r0, 0x4(r30)
branch_0x80369248:
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r3, r27
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl AlarmHandler_80369268
AlarmHandler_80369268: # 0x80369268
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x3f20
    lis     r4, 0x6666
    subf    r0, r0, r3
    stwu    sp, -0x20(sp)
    addi    r3, r4, 0x6667
    mulhw   r0, r3, r0
    stw     r31, 0x1c(sp)
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    lis     r3, 0x8040
    slwi    r4, r0, 5
    addi    r0, r3, 0x3ea0
    add     r31, r0, r4
    lwz     r3, 0x0(r31)
    cmpwi   r3, -0x1
    beq-    branch_0x803692e0
    lwz     r4, 0x4(r31)
    lwz     r5, 0x8(r31)
    lwz     r6, 0xc(r31)
    lwz     r7, 0x10(r31)
    lwz     r8, 0x14(r31)
    bl      __SITransfer
    cmpwi   r3, 0x0
    beq-    branch_0x803692e0
    li      r0, -0x1
    stw     r0, 0x0(r31)
branch_0x803692e0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SITransfer
SITransfer: # 0x803692f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r19, 0x2c(sp)
    addi    r24, r3, 0x0
    lis     r3, 0x8040
    addi    r23, r3, 0x3ea0
    slwi    r0, r24, 5
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r31, r9, 0x0
    addi    r30, r10, 0x0
    add     r22, r23, r0
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r22)
    addi    r21, r3, 0x0
    cmpwi   r0, -0x1
    bne-    branch_0x80369358
    lis     r3, 0x803f
    lwz     r0, -0x6a78(r3)
    cmpw    r0, r24
    bne-    branch_0x80369368
branch_0x80369358:
    mr      r3, r21
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8036944c

branch_0x80369368:
    bl      __OSGetSystemTime
    li      r0, 0x0
    xor     r5, r30, r0
    xor     r0, r31, r0
    or.     r0, r5, r0
    bne-    branch_0x8036938c
    addi    r19, r4, 0x0
    addi    r20, r3, 0x0
    b       branch_0x803693a4

branch_0x8036938c:
    slwi    r0, r24, 3
    add     r6, r23, r0
    lwz     r5, 0x144(r6)
    lwz     r0, 0x140(r6)
    addc    r19, r30, r5
    adde    r20, r31, r0
branch_0x803693a4:
    xoris   r6, r3, 0x8000
    xoris   r5, r20, 0x8000
    subfc   r0, r19, r4
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x803693ec
    mulli   r0, r24, 0x28
    subfc   r30, r4, r19
    subfe   r31, r3, r20
    lis     r4, 0x8037
    add     r3, r23, r0
    subi    r7, r4, 0x6d98
    addi    r6, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x80
    bl      OSSetAlarm
    b       branch_0x80369420

branch_0x803693ec:
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    addi    r8, r29, 0x0
    bl      __SITransfer
    cmpwi   r3, 0x0
    beq-    branch_0x80369420
    mr      r3, r21
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x8036944c

branch_0x80369420:
    stw     r24, 0x0(r22)
    mr      r3, r21
    stw     r25, 0x4(r22)
    stw     r26, 0x8(r22)
    stw     r27, 0xc(r22)
    stw     r28, 0x10(r22)
    stw     r29, 0x14(r22)
    stw     r19, 0x1c(r22)
    stw     r20, 0x18(r22)
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x8036944c:
    lmw     r19, 0x2c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl GetTypeCallback
GetTypeCallback: # 0x80369460
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r27, r3, 0x0
    lis     r3, 0x803f
    subi    r0, r3, 0x6a64
    slwi    r29, r27, 2
    add     r30, r0, r29
    lis     r3, 0x8040
    addi    r26, r4, 0x0
    addi    r31, r3, 0x3ea0
    lwz     r0, 0x0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0x0(r30)
    lwz     r0, 0x0(r30)
    or      r0, r0, r26
    stw     r0, 0x0(r30)
    bl      __OSGetSystemTime
    slwi    r0, r27, 3
    add     r5, r31, r0
    stw     r4, 0x124(r5)
    lis     r4, 0x8000
    clrlwi. r0, r26, 28
    stw     r3, 0x120(r5)
    srw     r4, r4, r27
    lwz     r3, -0x5768(r13)
    lwz     r28, 0x0(r30)
    andc    r0, r3, r4
    stw     r0, -0x5768(r13)
    and     r26, r3, r4
    bne-    branch_0x80369500
    rlwinm  r3, r28, 0, 3, 4
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x0
    bne-    branch_0x80369500
    clrrwi. r0, r28, 31
    beq-    branch_0x80369500
    rlwinm. r0, r28, 0, 5, 5
    beq-    branch_0x80369558
branch_0x80369500:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      OSSetWirelessID
    slwi    r0, r27, 4
    lwz     r30, 0x0(r30)
    add     r31, r31, r0
    li      r29, 0x0
    addi    r28, r29, 0x0
    addi    r31, r31, 0x160
branch_0x80369524:
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x80369544
    stw     r28, 0x0(r31)
    mtlr    r12
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    blrl
branch_0x80369544:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x80369524
    b       branch_0x803696e4

branch_0x80369558:
    mr      r3, r27
    bl      OSGetWirelessID
    cmpwi   r26, 0x0
    clrlslwi  r26, r3, 16, 8
    beq-    branch_0x803695bc
    rlwinm. r0, r26, 0, 11, 11
    beq-    branch_0x803695bc
    lis     r3, 0xd0
    subi    r0, r3, 0x100
    and     r0, r26, r0
    oris    r0, r0, 0x4e10
    add     r4, r31, r29
    stwu    r0, 0x1f0(r4)
    li      r0, 0x80
    lis     r3, 0x8037
    stw     r0, 0x0(r30)
    subi    r8, r3, 0x6ba0
    addi    r3, r27, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x3
    li      r7, 0x3
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       branch_0x803696e4

branch_0x803695bc:
    rlwinm. r0, r28, 0, 11, 11
    beq-    branch_0x80369630
    lis     r3, 0xd0
    subi    r3, r3, 0x100
    and     r0, r26, r3
    and     r3, r28, r3
    cmplw   r0, r3
    beq-    branch_0x8036969c
    rlwinm. r0, r26, 0, 11, 11
    bne-    branch_0x803695f4
    oris    r26, r3, 0x10
    addi    r3, r27, 0x0
    extrwi  r4, r26, 16, 8
    bl      OSSetWirelessID
branch_0x803695f4:
    oris    r0, r26, 0x4e00
    add     r4, r31, r29
    stwu    r0, 0x1f0(r4)
    li      r0, 0x80
    lis     r3, 0x8037
    stw     r0, 0x0(r30)
    subi    r8, r3, 0x6ba0
    addi    r3, r27, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x3
    li      r7, 0x3
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       branch_0x803696e4

branch_0x80369630:
    rlwinm. r0, r28, 0, 1, 1
    beq-    branch_0x80369690
    lis     r3, 0xd0
    subi    r0, r3, 0x100
    and     r28, r28, r0
    oris    r28, r28, 0x10
    addi    r3, r27, 0x0
    extrwi  r4, r28, 16, 8
    bl      OSSetWirelessID
    oris    r0, r28, 0x4e00
    add     r4, r31, r29
    stwu    r0, 0x1f0(r4)
    li      r0, 0x80
    lis     r3, 0x8037
    stw     r0, 0x0(r30)
    subi    r8, r3, 0x6ba0
    addi    r3, r27, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x3
    li      r7, 0x3
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       branch_0x803696e4

branch_0x80369690:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      OSSetWirelessID
branch_0x8036969c:
    slwi    r0, r27, 4
    lwz     r30, 0x0(r30)
    add     r31, r31, r0
    li      r29, 0x0
    addi    r28, r29, 0x0
    addi    r31, r31, 0x160
branch_0x803696b4:
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x803696d4
    stw     r28, 0x0(r31)
    mtlr    r12
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    blrl
branch_0x803696d4:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x803696b4
branch_0x803696e4:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl SIGetType
SIGetType: # 0x803696f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r27, r3
    bl      OSDisableInterrupts
    lis     r4, 0x803f
    slwi    r5, r27, 2
    subi    r0, r4, 0x6a64
    add     r30, r0, r5
    lwz     r28, 0x0(r30)
    mr      r29, r3
    bl      __OSGetSystemTime
    lis     r5, 0x8040
    slwi    r6, r27, 3
    addi    r0, r5, 0x3fc0
    add     r31, r0, r6
    lwz     r6, 0x4(r31)
    lis     r5, 0x803f
    subi    r5, r5, 0x6a78
    lwz     r0, 0x0(r31)
    subfc   r4, r6, r4
    subfe   r0, r0, r3
    lwz     r6, 0x4(r5)
    li      r5, 0x80
    sraw    r3, r5, r27
    and.    r3, r6, r3
    beq-    branch_0x80369798
    cmplwi  r28, 0x8
    beq-    branch_0x8036978c
    bl      __OSGetSystemTime
    stw     r4, 0x4(r31)
    stw     r3, 0x0(r31)
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r28
    b       branch_0x803698a8

branch_0x8036978c:
    stw     r5, 0x0(r30)
    li      r28, 0x80
    b       branch_0x80369848

branch_0x80369798:
    lis     r3, 0x8000
    lwz     r6, 0xf8(r3)
    lis     r5, 0x1062
    addi    r5, r5, 0x4dd3
    srwi    r6, r6, 2
    mulhwu  r5, r5, r6
    srwi    r5, r5, 6
    mulli   r7, r5, 0x32
    li      r3, 0x0
    xoris   r6, r3, 0x8000
    xoris   r5, r0, 0x8000
    subfc   r3, r4, r7
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    bne-    branch_0x803697f0
    cmplwi  r28, 0x8
    beq-    branch_0x803697f0
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r28
    b       branch_0x803698a8

branch_0x803697f0:
    lis     r3, 0x8000
    lwz     r6, 0xf8(r3)
    lis     r5, 0x1062
    addi    r5, r5, 0x4dd3
    srwi    r6, r6, 2
    mulhwu  r5, r5, r6
    srwi    r5, r5, 6
    mulli   r6, r5, 0x4b
    li      r3, 0x0
    xoris   r5, r3, 0x8000
    xoris   r3, r0, 0x8000
    subfc   r0, r4, r6
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg.    r3, r3
    bne-    branch_0x8036983c
    li      r0, 0x80
    stw     r0, 0x0(r30)
    b       branch_0x80369848

branch_0x8036983c:
    li      r0, 0x80
    stw     r0, 0x0(r30)
    li      r28, 0x80
branch_0x80369848:
    bl      __OSGetSystemTime
    stw     r4, 0x4(r31)
    lis     r4, 0x431c
    lis     r5, 0x8037
    stw     r3, 0x0(r31)
    lis     r3, 0x8000
    subi    r8, r5, 0x6ba0
    lwz     r0, 0xf8(r3)
    subi    r4, r4, 0x217d
    addi    r3, r27, 0x0
    srwi    r0, r0, 2
    mulhwu  r0, r4, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0x41
    srwi    r10, r0, 3
    addi    r6, r30, 0x0
    subi    r4, r13, 0x576c
    li      r5, 0x1
    li      r7, 0x3
    li      r9, 0x0
    bl      SITransfer
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r28
branch_0x803698a8:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl SIGetTypeAsync
SIGetTypeAsync: # 0x803698bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      OSDisableInterrupts
    addi    r30, r3, 0x0
    addi    r3, r28, 0x0
    bl      SIGetType
    lis     r4, 0x803f
    slwi    r5, r28, 2
    subi    r0, r4, 0x6a64
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    addi    r29, r3, 0x0
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x803699b8
    lis     r3, 0x8040
    slwi    r4, r28, 4
    addi    r0, r3, 0x4000
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    li      r5, 0x0
    cmplw   r0, r31
    beq-    branch_0x803699cc
    cmplwi  r0, 0x0
    bne-    branch_0x80369944
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       branch_0x803699cc

branch_0x80369944:
    addi    r3, r4, 0x4
    lwz     r0, 0x4(r4)
    li      r5, 0x1
    cmplw   r0, r31
    beq-    branch_0x803699cc
    cmplwi  r0, 0x0
    bne-    branch_0x8036996c
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       branch_0x803699cc

branch_0x8036996c:
    lwzu    r0, 0x4(r3)
    li      r5, 0x2
    cmplw   r0, r31
    beq-    branch_0x803699cc
    cmplwi  r0, 0x0
    bne-    branch_0x80369990
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       branch_0x803699cc

branch_0x80369990:
    lwz     r0, 0x4(r3)
    li      r5, 0x3
    cmplw   r0, r31
    beq-    branch_0x803699cc
    cmplwi  r0, 0x0
    bne-    branch_0x803699cc
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       branch_0x803699cc


.incbin "./baserom/code/Text_0x80005600.bin", 0x3643b4, 0x803699b8 - 0x803699b4
branch_0x803699b8:
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x803699cc:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

