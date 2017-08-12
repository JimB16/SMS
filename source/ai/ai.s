
.globl AIRegisterDMACallback
AIRegisterDMACallback: # 0x803524c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r31, R13Off_m0x5874(r13)
    bl      OSDisableInterrupts
    stw     r30, R13Off_m0x5874(r13)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl AIInitDMA
AIInitDMA: # 0x8035250c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, unk_80000000@l
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    lis     r4, unk_cc005000@h
    lhz     r0, 0x5030(r4)
    addi    r5, r4, unk_cc005000@l
    addi    r6, r4, 0x5000
    addi    r7, r4, 0x5000
    clrrwi  r4, r0, 10
    srwi    r0, r30, 16
    or      r0, r4, r0
    sth     r0, 0x30(r5)
    clrlwi  r0, r30, 16
    lhz     r4, 0x32(r6)
    rlwinm  r4, r4, 0, 27, 15
    or      r0, r4, r0
    sth     r0, 0x32(r6)
    extrwi  r0, r31, 16, 11
    lhz     r4, 0x36(r7)
    clrrwi  r4, r4, 15
    or      r0, r4, r0
    sth     r0, 0x36(r7)
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl AIStartDMA
AIStartDMA: # 0x80352594
    lis     r3, unk_cc005000@h
    addi    r3, r3, unk_cc005000@l
    lhz     r0, 0x36(r3)
    ori     r0, r0, 0x8000
    sth     r0, 0x36(r3)
    blr


.globl AIResetStreamSampleCount
AIResetStreamSampleCount: # 0x803525ac
    lis     r3, unk_cc000000@h
    lwz     r0, 0x6c00(r3)
    rlwinm  r0, r0, 0, 27, 25
    ori     r0, r0, 0x20
    stw     r0, 0x6c00(r3)
    blr


.globl AISetStreamPlayState
AISetStreamPlayState: # 0x803525c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      AIGetStreamPlayState
    cmplw   r29, r3
    beq-    branch_0x80352680
    bl      AIGetStreamSampleRate
    cmplwi  r3, 0x0
    bne-    branch_0x8035266c
    cmplwi  r29, 0x1
    bne-    branch_0x8035266c
    bl      AIGetStreamVolRight
    mr      r30, r3
    bl      AIGetStreamVolLeft
    addi    r29, r3, unk_cc000000@l
    li      r3, 0x0
    bl      AISetStreamVolRight
    li      r3, 0x0
    bl      AISetStreamVolLeft
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      __AI_SRC_INIT
    lis     r4, 0xcc00
    lwz     r0, 0x6c00(r4)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 27, 25
    ori     r0, r0, 0x20
    stw     r0, 0x6c00(r4)
    lwz     r0, 0x6c00(r4)
    clrrwi  r0, r0, 1
    ori     r0, r0, 0x1
    stw     r0, 0x6c00(r4)
    bl      OSRestoreInterrupts
    mr      r3, r30
    bl      AISetStreamVolLeft
    mr      r3, r29
    bl      AISetStreamVolRight
    b       branch_0x80352680

branch_0x8035266c:
    lis     r3, 0xcc00
    lwz     r0, 0x6c00(r3)
    clrrwi  r0, r0, 1
    or      r0, r0, r29
    stw     r0, 0x6c00(r3)
branch_0x80352680:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl AIGetStreamPlayState
AIGetStreamPlayState: # 0x8035269c
    lis     r3, unk_cc000000@h
    lwz     r0, 0x6c00(r3)
    clrlwi  r3, r0, 31
    blr


.globl AISetDSPSampleRate
AISetDSPSampleRate: # 0x803526ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr      r26, r3
    bl      AIGetDSPSampleRate
    cmplw   r26, r3
    beq-    branch_0x80352778
    lis     r31, 0xcc00
    lwz     r0, 0x6c00(r31)
    cmplwi  r26, 0x0
    rlwinm  r0, r0, 0, 26, 24
    stw     r0, 0x6c00(r31)
    bne-    branch_0x80352778
    bl      AIGetStreamVolLeft
    mr      r30, r3
    bl      AIGetStreamVolRight
    lwz     r0, 0x6c00(r31)
    addi    r29, r3, unk_cc000000@l
    clrlwi  r27, r0, 31
    bl      AIGetStreamSampleRate
    addi    r28, r3, 0x0
    li      r3, 0x0
    bl      AISetStreamVolLeft
    li      r3, 0x0
    bl      AISetStreamVolRight
    bl      OSDisableInterrupts
    mr      r26, r3
    bl      __AI_SRC_INIT
    lwz     r4, 0x6c00(r31)
    slwi    r0, r28, 1
    addi    r3, r26, 0x0
    rlwinm  r4, r4, 0, 27, 25
    ori     r4, r4, 0x20
    stw     r4, 0x6c00(r31)
    lwz     r4, 0x6c00(r31)
    rlwinm  r4, r4, 0, 31, 29
    or      r0, r4, r0
    stw     r0, 0x6c00(r31)
    lwz     r0, 0x6c00(r31)
    clrrwi  r0, r0, 1
    or      r0, r0, r27
    stw     r0, 0x6c00(r31)
    lwz     r0, 0x6c00(r31)
    ori     r0, r0, 0x40
    stw     r0, 0x6c00(r31)
    bl      OSRestoreInterrupts
    mr      r3, r30
    bl      AISetStreamVolLeft
    mr      r3, r29
    bl      AISetStreamVolRight
branch_0x80352778:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl AIGetDSPSampleRate
AIGetDSPSampleRate: # 0x8035278c
    lis     r3, unk_cc000000@h
    lwz     r0, 0x6c00(r3)
    extrwi  r0, r0, 1, 25
    xori     r3, r0, 0x1
    blr


.globl AISetStreamSampleRate
AISetStreamSampleRate: # 0x803527a0
    mflr    r0
    cmplwi  r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x803527b8
    bl      __AI_set_stream_sample_rate
branch_0x803527b8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __AI_set_stream_sample_rate
__AI_set_stream_sample_rate: # 0x803527c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    mr      r25, r3
    bl      AIGetStreamSampleRate
    cmplw   r25, r3
    beq-    branch_0x80352888
    lis     r31, 0xcc00
    lwz     r0, 0x6c00(r31)
    clrlwi  r0, r0, 31
    mr      r29, r0
    bl      AIGetStreamVolLeft
    mr      r28, r3
    bl      AIGetStreamVolRight
    addi    r27, r3, unk_cc000000@l
    li      r3, 0x0
    bl      AISetStreamVolRight
    li      r3, 0x0
    bl      AISetStreamVolLeft
    lwz     r3, 0x6c00(r31)
    lwz     r0, 0x6c00(r31)
    rlwinm  r26, r3, 0, 25, 25
    rlwinm  r0, r0, 0, 26, 24
    stw     r0, 0x6c00(r31)
    bl      OSDisableInterrupts
    mr      r30, r3
    bl      __AI_SRC_INIT
    lwz     r4, 0x6c00(r31)
    slwi    r0, r25, 1
    addi    r3, r30, 0x0
    or      r4, r4, r26
    stw     r4, 0x6c00(r31)
    lwz     r4, 0x6c00(r31)
    rlwinm  r4, r4, 0, 27, 25
    ori     r4, r4, 0x20
    stw     r4, 0x6c00(r31)
    lwz     r4, 0x6c00(r31)
    rlwinm  r4, r4, 0, 31, 29
    or      r0, r4, r0
    stw     r0, 0x6c00(r31)
    bl      OSRestoreInterrupts
    mr      r3, r29
    bl      AISetStreamPlayState
    mr      r3, r28
    bl      AISetStreamVolLeft
    mr      r3, r27
    bl      AISetStreamVolRight
branch_0x80352888:
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl AIGetStreamSampleRate
AIGetStreamSampleRate: # 0x8035289c
    lis     r3, 0xcc00
    lwz     r0, 0x6c00(r3)
    extrwi  r3, r0, 1, 30
    blr


.globl AISetStreamVolLeft
AISetStreamVolLeft: # 0x803528ac
    lis     r4, unk_cc006c00@h
    addi    r4, r4, unk_cc006c00@l
    lwz     r0, 0x4(r4)
    clrrwi  r0, r0, 8
    insrwi  r0, r3, 8, 24
    stw     r0, 0x4(r4)
    blr


.globl AIGetStreamVolLeft
AIGetStreamVolLeft: # 0x803528c8
    lis     r3, 0xcc00
    lwz     r0, 0x6c04(r3)
    clrlwi  r3, r0, 24
    blr


.globl AISetStreamVolRight
AISetStreamVolRight: # 0x803528d8
    lis     r4, unk_cc006c00@h
    addi    r4, r4, unk_cc006c00@l
    lwz     r0, 0x4(r4)
    rlwinm  r0, r0, 0, 24, 15
    insrwi  r0, r3, 8, 16
    stw     r0, 0x4(r4)
    blr


.globl AIGetStreamVolRight
AIGetStreamVolRight: # 0x803528f4
    lis     r3, unk_cc000000@h
    lwz     r0, 0x6c04(r3)
    extrwi  r3, r0, 8, 16
    blr


.globl AIInit
AIInit: # 0x80352904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, unk_cc000000@l
    lwz     r0, R13Off_m0x5868(r13)
    cmpwi   r0, 0x1
    beq-    branch_0x80352a50
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r3, unk_431bde83@ha
    lis     r4, unk_0000a428@ha
    srwi    r0, r0, 2
    addi    r3, r3, unk_431bde83@l
    mulhwu  r0, r3, r0
    srwi    r9, r0, 15
    addi    r5, r4, unk_0000a428@l
    addi    r3, r4, -0x5bf0
    addi    r0, r4, -0x9e8
    lis     r4, unk_10624dd3@h
    mullw   r7, r9, r5
    addi    r10, r4, unk_10624dd3@l
    mullw   r5, r9, r3
    mullw   r4, r9, r0
    mulli   r8, r9, 0x7b24
    mulli   r3, r9, 0xbb8
    mulhwu  r8, r10, r8
    mulhwu  r7, r10, r7
    mulhwu  r5, r10, r5
    mulhwu  r4, r10, r4
    mulhwu  r3, r10, r3
    srwi    r8, r8, 9
    srwi    r7, r7, 9
    stw     r8, R13Off_m0x585c(r13)
    srwi    r5, r5, 9
    srwi    r4, r4, 9
    stw     r7, R13Off_m0x5854(r13)
    li      r31, 0x0
    srwi    r3, r3, 9
    stw     r5, R13Off_m0x584c(r13)
    lis     r6, 0xcc00
    stw     r3, R13Off_m0x583c(r13)
    li      r3, 0x1
    lwz     r0, 0x6c00(r6)
    stw     r4, R13Off_m0x5844(r13)
    rlwinm  r0, r0, 0, 27, 25
    ori     r0, r0, 0x20
    stw     r31, R13Off_m0x5860(r13)
    stw     r31, R13Off_m0x5858(r13)
    stw     r31, R13Off_m0x5850(r13)
    stw     r31, R13Off_m0x5848(r13)
    stw     r31, R13Off_m0x5840(r13)
    lwz     r5, 0x6c04(r6)
    stw     r0, 0x6c00(r6)
    rlwinm  r0, r5, 0, 24, 15
    ori     r0, r0, 0x0
    stw     r0, 0x6c04(r6)
    lwz     r0, 0x6c04(r6)
    clrrwi  r0, r0, 8
    ori     r0, r0, 0x0
    stw     r0, 0x6c04(r6)
    stw     r31, 0x6c0c(r6)
    bl      __AI_set_stream_sample_rate
    li      r3, 0x0
    bl      AISetDSPSampleRate
    lis     r3, __AIDHandler@h
    stw     r31, R13Off_m0x5878(r13)
    addi    r4, r3, __AIDHandler@l
    stw     r31, R13Off_m0x5874(r13)
    li      r3, 0x5
    stw     r30, R13Off_m0x5870(r13)
    bl      __OSSetInterruptHandler
    lis     r3, 0x400
    bl      __OSUnmaskInterrupts
    lis     r3, __AISHandler@h
    addi    r4, r3, __AISHandler@l
    li      r3, 0x8
    bl      __OSSetInterruptHandler
    lis     r3, 0x80
    bl      __OSUnmaskInterrupts
    li      r0, 0x1
    stw     r0, R13Off_m0x5868(r13)
branch_0x80352a50:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __AISHandler
__AISHandler: # 0x80352a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    lis     r31, unk_cc006c00@h
    lwz     r0, 0x6c00(r31)
    addi    r3, sp, 0x10
    stw     r30, 0x2d8(sp)
    ori     r0, r0, 0x8
    stw     r0, 0x6c00(r31)
    addi    r30, r4, 0x0
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r12, R13Off_m0x5878(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80352abc
    addi    r3, r31, unk_cc006c00@l
    mtlr    r12
    lwz     r3, 0x8(r3)
    blrl
branch_0x80352abc:
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r30
    bl      OSSetCurrentContext
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    lwz     r30, 0x2d8(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl __AIDHandler
__AIDHandler: # 0x80352ae4
    mflr    r0
    lis     r3, unk_cc005000@h
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_cc005000@l
    li      r0, -0xa1
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    addi    r31, r4, 0x0
    lhz     r5, 0xa(r3)
    and     r0, r5, r0
    ori     r0, r0, 0x8
    sth     r0, 0xa(r3)
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r3, R13Off_m0x5874(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80352b50
    lwz     r0, R13Off_m0x5870(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80352b44
    bl      __AICallbackStackSwitch
    b       branch_0x80352b50

branch_0x80352b44:
    addi    r12, r3, 0x0
    mtlr    r12
    blrl
branch_0x80352b50:
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl __AICallbackStackSwitch
__AICallbackStackSwitch: # 0x80352b74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lis     r5, __OldStack@ha
    addi    r5, r5, __OldStack@l
    stw     sp, 0x0(r5)
    lis     r5, __CallbackStack@ha
    addi    r5, r5, __CallbackStack@l
    lwz     sp, 0x0(r5)
    addi    sp, sp, -0x8
    mtlr    r31
    blrl
    lis     r5, __OldStack@ha
    addi    r5, r5, __OldStack@l
    lwz     sp, 0x0(r5)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __AI_SRC_INIT
__AI_SRC_INIT: # 0x80352bcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    li      r4, 0x0
    li      r3, 0x0
    li      r0, 0x0
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x80352bf4

branch_0x80352bf4:
    lis     r31, unk_cc006c00@h
    b       branch_0x80352bfc

branch_0x80352bfc:
    b       branch_0x80352d60

branch_0x80352c00:
    lwz     r0, 0x6c00(r31)
    addi    r30, r31, unk_cc006c00@l
    addi    r30, r30, 0x8
    rlwinm  r0, r0, 0, 27, 25
    ori     r0, r0, 0x20
    stw     r0, 0x6c00(r31)
    lwz     r0, 0x6c00(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x6c00(r31)
    lwz     r0, 0x6c00(r31)
    clrrwi  r0, r0, 1
    ori     r0, r0, 0x1
    stw     r0, 0x6c00(r31)
    lwz     r3, 0x0(r30)
    b       branch_0x80352c3c

branch_0x80352c3c:
    b       branch_0x80352c40

branch_0x80352c40:
    lwz     r0, 0x0(r30)
    cmplw   r3, r0
    beq+    branch_0x80352c40
    bl      OSGetTime
    lwz     r0, 0x6c00(r31)
    mr      r26, r4
    mr      r27, r3
    rlwinm  r0, r0, 0, 31, 29
    ori     r0, r0, 0x2
    stw     r0, 0x6c00(r31)
    lwz     r0, 0x6c00(r31)
    clrrwi  r0, r0, 1
    ori     r0, r0, 0x1
    stw     r0, 0x6c00(r31)
    lwz     r3, 0x0(r30)
    b       branch_0x80352c80

branch_0x80352c80:
    b       branch_0x80352c84

branch_0x80352c84:
    lwz     r0, 0x0(r30)
    cmplw   r3, r0
    beq+    branch_0x80352c84
    bl      OSGetTime
    subfc   r8, r26, r4
    lwz     r12, R13Off_m0x585c(r13)
    lwz     r5, 0x6c00(r31)
    subfe   r7, r27, r3
    lwz     r10, R13Off_m0x583c(r13)
    xoris   r7, r7, 0x8000
    rlwinm  r5, r5, 0, 31, 29
    lwz     r11, R13Off_m0x5860(r13)
    subfc   r6, r10, r12
    lwz     r9, R13Off_m0x5840(r13)
    stw     r5, 0x6c00(r31)
    subfe   r0, r9, r11
    xoris   r5, r0, 0x8000
    subfc   r0, r6, r8
    lwz     r0, 0x6c00(r31)
    subfe   r5, r5, r7
    subfe   r5, r7, r7
    neg     r5, r5
    clrrwi  r0, r0, 1
    cmpwi   r5, 0x0
    stw     r0, 0x6c00(r31)
    beq-    branch_0x80352cfc
    lwz     r29, R13Off_m0x5850(r13)
    li      r0, 0x1
    lwz     r28, R13Off_m0x584c(r13)
    b       branch_0x80352d60

branch_0x80352cfc:
    addc    r6, r12, r10
    adde    r0, r11, r9
    xoris   r5, r0, 0x8000
    subfc   r0, r6, r8
    subfe   r5, r5, r7
    subfe   r5, r7, r7
    neg     r5, r5
    cmpwi   r5, 0x0
    bne-    branch_0x80352d5c
    lwz     r5, R13Off_m0x5854(r13)
    lwz     r0, R13Off_m0x5858(r13)
    subfc   r6, r10, r5
    subfe   r0, r9, r0
    xoris   r5, r0, 0x8000
    subfc   r0, r6, r8
    subfe   r5, r5, r7
    subfe   r5, r7, r7
    neg     r5, r5
    cmpwi   r5, 0x0
    beq-    branch_0x80352d5c
    lwz     r29, R13Off_m0x5848(r13)
    li      r0, 0x1
    lwz     r28, R13Off_m0x5844(r13)
    b       branch_0x80352d60

branch_0x80352d5c:
    li      r0, 0x0
branch_0x80352d60:
    cmplwi  r0, 0x0
    beq+    branch_0x80352c00
    addc    r27, r4, r28
    adde    r26, r3, r29
    b       branch_0x80352d74

branch_0x80352d74:
    b       branch_0x80352d78

branch_0x80352d78:
    bl      OSGetTime
    xoris   r5, r3, 0x8000
    xoris   r3, r26, 0x8000
    subfc   r0, r27, r4
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg     r3, r3
    cmpwi   r3, 0x0
    bne+    branch_0x80352d78
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

