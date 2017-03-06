
.globl ARRegisterDMACallback
ARRegisterDMACallback: # 0x80352db0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r31, -0x5838(r13)
    bl      OSDisableInterrupts
    stw     r30, -0x5838(r13)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl ARStartDMA
ARStartDMA: # 0x80352df4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    lis     r6, 0xcc00
    lhz     r0, 0x5020(r6)
    addi    r8, r6, 0x5000
    addi    r9, r6, 0x5000
    clrrwi  r4, r0, 10
    srwi    r0, r28, 16
    or      r0, r4, r0
    sth     r0, 0x5020(r6)
    clrlwi  r0, r28, 16
    addi    r4, r6, 0x5000
    lhz     r5, 0x5022(r6)
    rlwinm  r5, r5, 0, 27, 15
    or      r0, r5, r0
    sth     r0, 0x5022(r6)
    addi    r5, r6, 0x5000
    srwi    r0, r30, 16
    lhz     r6, 0x5024(r6)
    clrrwi  r6, r6, 10
    or      r0, r6, r0
    sth     r0, 0x24(r8)
    clrlwi  r0, r30, 16
    lhz     r6, 0x26(r9)
    rlwinm  r6, r6, 0, 27, 15
    or      r0, r6, r0
    sth     r0, 0x26(r9)
    srwi    r6, r31, 16
    clrlwi  r0, r31, 16
    lhz     r7, 0x28(r4)
    rlwinm  r7, r7, 0, 17, 15
    insrwi  r7, r29, 17, 0
    sth     r7, 0x28(r4)
    lhz     r7, 0x28(r4)
    clrrwi  r7, r7, 10
    or      r6, r7, r6
    sth     r6, 0x28(r4)
    lhz     r4, 0x2a(r5)
    rlwinm  r4, r4, 0, 27, 15
    or      r0, r4, r0
    sth     r0, 0x2a(r5)
    bl      OSRestoreInterrupts
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl ARAlloc
ARAlloc: # 0x80352ee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lwz     r31, -0x5828(r13)
    lwz     r4, -0x5820(r13)
    add     r0, r31, r30
    stw     r0, -0x5828(r13)
    stw     r30, 0x0(r4)
    lwz     r5, -0x5820(r13)
    lwz     r4, -0x5824(r13)
    addi    r5, r5, 0x4
    subi    r0, r4, 0x1
    stw     r5, -0x5820(r13)
    stw     r0, -0x5824(r13)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl ARInit
ARInit: # 0x80352f4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lwz     r0, -0x581c(r13)
    cmpwi   r0, 0x1
    bne-    branch_0x80352f80
    li      r3, 0x4000
    b       branch_0x80352fec

branch_0x80352f80:
    bl      OSDisableInterrupts
    li      r0, 0x0
    lis     r4, 0x8035
    stw     r0, -0x5838(r13)
    addi    r31, r3, 0x0
    addi    r4, r4, 0x3018
    li      r3, 0x6
    bl      __OSSetInterruptHandler
    lis     r3, 0x200
    bl      __OSUnmaskInterrupts
    li      r0, 0x4000
    stw     r30, -0x5824(r13)
    lis     r3, 0xcc00
    stw     r0, -0x5828(r13)
    addi    r4, r3, 0x5000
    stw     r29, -0x5820(r13)
    lhz     r0, 0x1a(r4)
    lhz     r3, 0x501a(r3)
    clrrwi  r0, r0, 8
    insrwi  r0, r3, 8, 24
    sth     r0, 0x1a(r4)
    bl      __ARChecksize
    li      r0, 0x1
    stw     r0, -0x581c(r13)
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r3, -0x5828(r13)
branch_0x80352fec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl ARGetBaseAddress
ARGetBaseAddress: # 0x80353008
    li      r3, 0x4000
    blr


.globl ARGetSize
ARGetSize: # 0x80353010
    lwz     r3, -0x5834(r13)
    blr


.globl __ARHandler
__ARHandler: # 0x80353018
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x5000
    li      r0, -0x89
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    addi    r31, r4, 0x0
    lhz     r5, 0xa(r3)
    and     r0, r5, r0
    ori     r0, r0, 0x20
    sth     r0, 0xa(r3)
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r12, -0x5838(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8035306c
    mtlr    r12
    blrl
branch_0x8035306c:
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl __ARChecksize
__ARChecksize: # 0x80353090
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x5000
    stwu    sp, -0x138(sp)
    stmw    r14, 0xf0(sp)
branch_0x803530a8:
    lhz     r0, 0x16(r3)
    clrlwi. r0, r0, 31
    beq+    branch_0x803530a8
    lis     r3, 0x100
    stw     r3, -0x5830(r13)
    lis     r22, 0xcc00
    addi    r0, sp, 0xb3
    lhz     r5, 0x5012(r22)
    clrrwi  r23, r0, 5
    addi    r0, sp, 0x73
    clrrwi  r5, r5, 6
    ori     r5, r5, 0x23
    addi    r18, r22, 0x5000
    sthu    r5, 0x12(r18)
    lis     r4, 0xdeae
    subi    r5, r4, 0x4111
    stw     r5, 0x0(r23)
    lis     r4, 0xbad1
    clrrwi  r28, r0, 5
    subi    r0, r4, 0x4530
    stw     r0, 0x0(r28)
    addi    r4, sp, 0x33
    addi    r21, r3, 0x0
    stw     r5, 0x4(r23)
    clrrwi  r24, r4, 5
    addi    r3, r23, 0x0
    stw     r0, 0x4(r28)
    li      r19, 0x3
    li      r4, 0x20
    stw     r5, 0x8(r23)
    stw     r0, 0x8(r28)
    stw     r5, 0xc(r23)
    stw     r0, 0xc(r28)
    stw     r5, 0x10(r23)
    stw     r0, 0x10(r28)
    stw     r5, 0x14(r23)
    stw     r0, 0x14(r28)
    stw     r5, 0x18(r23)
    stw     r0, 0x18(r28)
    stw     r5, 0x1c(r23)
    stw     r0, 0x1c(r28)
    bl      DCFlushRange
    addi    r3, r28, 0x0
    li      r4, 0x20
    bl      DCFlushRange
    li      r0, 0x0
    stw     r0, -0x582c(r13)
    srwi    r5, r28, 16
    clrlwi  r6, r28, 16
    lhz     r0, 0x5020(r22)
    addi    r25, r22, 0x5000
    addi    r26, r22, 0x5000
    clrrwi  r0, r0, 10
    or      r0, r0, r5
    sthu    r0, 0x20(r25)
    srwi    r16, r21, 16
    addi    r27, r22, 0x5000
    lhz     r0, 0x5022(r22)
    clrlwi  r17, r21, 16
    addi    r28, r22, 0x5000
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r6
    sthu    r0, 0x22(r26)
    addi    r30, r22, 0x5000
    addi    r29, r22, 0x5000
    lhz     r0, 0x5024(r22)
    clrrwi  r0, r0, 10
    or      r0, r0, r16
    sthu    r0, 0x24(r27)
    lhz     r0, 0x5026(r22)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r17
    sthu    r0, 0x26(r28)
    lhz     r0, 0x5028(r22)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x5028(r22)
    lhz     r0, 0x5028(r22)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sthu    r0, 0x28(r30)
    lhz     r0, 0x502a(r22)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sthu    r0, 0x2a(r29)
branch_0x803531f8:
    addi    r31, r22, 0x5000
    lhzu    r0, 0xa(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x803531f8
    lhz     r0, 0x0(r31)
    li      r4, -0x89
    addis   r3, r21, 0x20
    and     r0, r0, r4
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    srwi    r0, r3, 16
    lhz     r4, 0x0(r25)
    stw     r0, 0xdc(sp)
    clrlwi  r0, r3, 16
    stw     r0, 0xe0(sp)
    clrrwi  r0, r4, 10
    or      r0, r0, r5
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r6
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r3, r0, 10
    lwz     r0, 0xdc(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r3, r0, 0, 27, 15
    lwz     r0, 0xe0(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x803532a4:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x803532a4
    lhz     r0, 0x0(r31)
    li      r4, -0x89
    addis   r3, r21, 0x100
    and     r0, r0, r4
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    srwi    r0, r3, 16
    lhz     r4, 0x0(r25)
    stw     r0, 0xd8(sp)
    clrlwi  r0, r3, 16
    stw     r0, 0xe4(sp)
    clrrwi  r0, r4, 10
    or      r0, r0, r5
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r6
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r3, r0, 10
    lwz     r0, 0xd8(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r3, r0, 0, 27, 15
    lwz     r0, 0xe4(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x8035334c:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x8035334c
    lhz     r0, 0x0(r31)
    li      r4, -0x89
    addi    r3, r21, 0x200
    and     r0, r0, r4
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    srwi    r0, r3, 16
    lhz     r4, 0x0(r25)
    stw     r0, 0xd4(sp)
    clrlwi  r0, r3, 16
    stw     r0, 0xe8(sp)
    clrrwi  r0, r4, 10
    or      r0, r0, r5
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r6
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r3, r0, 10
    lwz     r0, 0xd4(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r3, r0, 0, 27, 15
    lwz     r0, 0xe8(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x803533f4:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x803533f4
    lhz     r3, 0x0(r31)
    addis   r0, r21, 0x40
    li      r4, -0x89
    and     r3, r3, r4
    ori     r3, r3, 0x20
    sth     r3, 0x0(r31)
    srwi    r15, r0, 16
    clrlwi  r14, r0, 16
    lhz     r3, 0x0(r25)
    clrrwi  r0, r3, 10
    or      r0, r0, r5
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r6
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r0, r0, 10
    or      r0, r0, r15
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r14
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x8035348c:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x8035348c
    lhz     r0, 0x0(r31)
    li      r4, -0x89
    addi    r3, r24, 0x0
    and     r0, r0, r4
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
    addi    r3, r24, 0x0
    li      r4, 0x20
    bl      DCFlushRange
    lhz     r0, 0x0(r25)
    srwi    r3, r23, 16
    clrlwi  r4, r23, 16
    clrrwi  r0, r0, 10
    or      r0, r0, r3
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r4
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r0, r0, 10
    or      r0, r0, r16
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r17
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x8035353c:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x8035353c
    lhz     r0, 0x0(r31)
    li      r4, -0x89
    addi    r3, r24, 0x0
    and     r0, r0, r4
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    li      r4, 0x20
    bl      DCInvalidateRange
    lhz     r0, 0x0(r25)
    srwi    r20, r24, 16
    clrlwi  r22, r24, 16
    clrrwi  r0, r0, 10
    or      r0, r0, r20
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r22
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r0, r0, 10
    or      r0, r0, r16
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r17
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    ori     r0, r0, 0x8000
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x803535dc:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x803535dc
    lhz     r0, 0x0(r31)
    li      r3, -0x89
    and     r0, r0, r3
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    bl      PPCSync
    lwz     r0, 0x0(r24)
    lwz     r3, 0x0(r23)
    cmplw   r0, r3
    bne-    branch_0x80353984
    addi    r3, r24, 0x0
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
    addi    r3, r24, 0x0
    li      r4, 0x20
    bl      DCFlushRange
    lhz     r0, 0x0(r25)
    clrrwi  r0, r0, 10
    or      r0, r0, r20
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r22
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r3, r0, 10
    lwz     r0, 0xdc(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r3, r0, 0, 27, 15
    lwz     r0, 0xe0(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    ori     r0, r0, 0x8000
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x803536a0:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x803536a0
    lhz     r0, 0x0(r31)
    li      r3, -0x89
    and     r0, r0, r3
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    bl      PPCSync
    lwz     r0, 0x0(r24)
    lwz     r3, 0x0(r23)
    cmplw   r0, r3
    bne-    branch_0x803536e4
    lis     r0, 0x20
    stw     r0, -0x582c(r13)
    addis   r21, r21, 0x20
    b       branch_0x80353974

branch_0x803536e4:
    addi    r3, r24, 0x0
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
    addi    r3, r24, 0x0
    li      r4, 0x20
    bl      DCFlushRange
    lhz     r0, 0x0(r25)
    clrrwi  r0, r0, 10
    or      r0, r0, r20
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r22
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r3, r0, 10
    lwz     r0, 0xd8(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r3, r0, 0, 27, 15
    lwz     r0, 0xe4(sp)
    or      r0, r3, r0
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    ori     r0, r0, 0x8000
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x80353774:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x80353774
    lhz     r0, 0x0(r31)
    li      r3, -0x89
    and     r0, r0, r3
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    bl      PPCSync
    lwz     r0, 0x0(r24)
    lwz     r3, 0x0(r23)
    cmplw   r0, r3
    bne-    branch_0x803537bc
    lis     r0, 0x40
    stw     r0, -0x582c(r13)
    ori     r19, r19, 0x8
    addis   r21, r21, 0x40
    b       branch_0x80353974

branch_0x803537bc:
    addi    r3, r24, 0x0
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
    addi    r3, r24, 0x0
    li      r4, 0x20
    bl      DCFlushRange
    lhz     r0, 0x0(r25)
    clrrwi  r0, r0, 10
    or      r0, r0, r20
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r22
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r3, r0, 10
    lwz     r0, 0xd4(sp)
    or      r0, r3, r0
    lwz     r3, 0xe8(sp)
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r3
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    ori     r0, r0, 0x8000
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x8035384c:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x8035384c
    lhz     r3, 0x0(r31)
    li      r0, -0x89
    and     r0, r3, r0
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    bl      PPCSync
    lwz     r3, 0x0(r24)
    lwz     r0, 0x0(r23)
    cmplw   r3, r0
    bne-    branch_0x80353894
    lis     r0, 0x80
    stw     r0, -0x582c(r13)
    ori     r19, r19, 0x10
    addis   r21, r21, 0x80
    b       branch_0x80353974

branch_0x80353894:
    addi    r3, r24, 0x0
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
    addi    r3, r24, 0x0
    li      r4, 0x20
    bl      DCFlushRange
    lhz     r0, 0x0(r25)
    clrrwi  r0, r0, 10
    or      r0, r0, r20
    sth     r0, 0x0(r25)
    lhz     r0, 0x0(r26)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r22
    sth     r0, 0x0(r26)
    lhz     r0, 0x0(r27)
    clrrwi  r0, r0, 10
    or      r0, r0, r15
    sth     r0, 0x0(r27)
    lhz     r0, 0x0(r28)
    rlwinm  r0, r0, 0, 27, 15
    or      r0, r0, r14
    sth     r0, 0x0(r28)
    lhz     r0, 0x0(r30)
    ori     r0, r0, 0x8000
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r30)
    clrrwi  r0, r0, 10
    ori     r0, r0, 0x0
    sth     r0, 0x0(r30)
    lhz     r0, 0x0(r29)
    rlwinm  r0, r0, 0, 27, 15
    ori     r0, r0, 0x20
    sth     r0, 0x0(r29)
branch_0x8035391c:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne+    branch_0x8035391c
    lhz     r3, 0x0(r31)
    li      r0, -0x89
    and     r0, r3, r0
    ori     r0, r0, 0x20
    sth     r0, 0x0(r31)
    bl      PPCSync
    lwz     r3, 0x0(r24)
    lwz     r0, 0x0(r23)
    cmplw   r3, r0
    bne-    branch_0x80353964
    lis     r0, 0x100
    stw     r0, -0x582c(r13)
    ori     r19, r19, 0x18
    addis   r21, r21, 0x100
    b       branch_0x80353974

branch_0x80353964:
    lis     r0, 0x200
    stw     r0, -0x582c(r13)
    ori     r19, r19, 0x20
    addis   r21, r21, 0x200
branch_0x80353974:
    lhz     r0, 0x0(r18)
    clrrwi  r0, r0, 6
    or      r0, r0, r19
    sth     r0, 0x0(r18)
branch_0x80353984:
    lis     r3, 0xc000
    stw     r21, 0xd0(r3)
    stw     r21, -0x5834(r13)
    lwz     r0, 0x13c(sp)
    lmw     r14, 0xf0(sp)
    addi    sp, sp, 0x138
    mtlr    r0
    blr

