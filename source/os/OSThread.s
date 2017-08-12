
.globl __OSThreadInit
__OSThreadInit: # 0x80348230
    mflr    r0
    lis     r3, RunQueue@h
    stw     r0, 0x4(sp)
    li      r0, 0x2
    li      r4, 0x10
    stwu    sp, -0x20(sp)
    stmw    r26, 0x8(sp)
    addi    r28, r3, RunQueue@l
    addi    r31, r28, 0x410
    li      r29, 0x0
    addi    r3, r31, 0x2e8
    sth     r0, 0x6d8(r28)
    li      r0, 0x1
    sth     r0, 0x6da(r28)
    li      r0, -0x1
    stw     r4, 0x6e4(r28)
    stw     r4, 0x6e0(r28)
    stw     r29, 0x6dc(r28)
    stw     r0, 0x6e8(r28)
    stw     r29, 0x700(r28)
    bl      OSInitThreadQueue
    stw     r29, 0x708(r28)
    lis     r30, 0x8000
    addi    r3, r31, 0x0
    stw     r29, 0x704(r28)
    stw     r31, 0xd8(r30)
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
    lis     r3, unk_804277e8@h
    addi    r0, r3, unk_804277e8@l
    lis     r3, unk_804177e4@h
    stw     r0, 0x714(r28)
    addi    r0, r3, unk_804177e4@l
    addi    r3, r28, 0x718
    stw     r0, 0x718(r28)
    lis     r4, unk_deadbabe@ha
    li      r26, 0x0
    lwz     r3, 0x0(r3)
    addi    r4, r4, unk_deadbabe@l
    slwi    r0, r26, 3
    stw     r4, 0x0(r3)
    add     r27, r28, r0
    stw     r29, R13Off_m0x59c0(r13)
    stw     r31, 0xe4(r30)
    stw     r29, R13Off_m0x59bc(r13)
branch_0x803482e8:
    mr      r3, r27
    bl      OSInitThreadQueue
    addi    r26, r26, 0x1
    cmpwi   r26, 0x1f
    addi    r27, r27, 0x8
    ble+    branch_0x803482e8
    lis     r30, unk_800000dc@h
    addi    r3, r30, unk_800000dc@l
    bl      OSInitThreadQueue
    addi    r4, r30, 0xdc
    lwzu    r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80348324
    stw     r31, 0xdc(r30)
    b       branch_0x80348328

branch_0x80348324:
    stw     r31, 0x2fc(r3)
branch_0x80348328:
    stw     r3, 0x300(r31)
    li      r30, 0x0
    addi    r3, r28, 0x720
    stw     r30, 0x2fc(r31)
    stw     r31, 0x0(r4)
    bl      OSClearContext
    stw     r30, R13Off_m0x59b8(r13)
    lmw     r26, 0x8(sp)
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSInitThreadQueue
OSInitThreadQueue: # 0x80348358
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x0(r3)
    blr


.globl OSGetCurrentThread
OSGetCurrentThread: # 0x80348368
    lis     r3, 0x8000
    lwz     r3, 0xe4(r3)
    blr


.globl OSIsThreadTerminated
OSIsThreadTerminated: # 0x80348374
    lhz     r3, 0x2c8(r3)
    li      r0, 0x1
    cmplwi  r3, 0x8
    beq-    branch_0x80348390
    cmplwi  r3, 0x0
    beq-    branch_0x80348390
    li      r0, 0x0
branch_0x80348390:
    cmpwi   r0, 0x0
    beq-    branch_0x803483a0
    li      r3, 0x1
    blr

branch_0x803483a0:
    li      r3, 0x0
    blr


.globl OSDisableScheduler
OSDisableScheduler: # 0x803483a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    lwz     r4, R13Off_m0x59b8(r13)
    addi    r0, r4, 0x1
    stw     r0, R13Off_m0x59b8(r13)
    mr      r31, r4
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl OSEnableScheduler
OSEnableScheduler: # 0x803483e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    lwz     r4, R13Off_m0x59b8(r13)
    addi    r0, r4, -0x1
    stw     r0, R13Off_m0x59b8(r13)
    mr      r31, r4
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl UnsetRun
UnsetRun: # 0x80348428
    lwz     r4, 0x2e0(r3)
    lwz     r5, 0x2dc(r3)
    cmplwi  r4, 0x0
    lwz     r6, 0x2e4(r3)
    bne-    branch_0x80348444
    stw     r6, 0x4(r5)
    b       branch_0x80348448

branch_0x80348444:
    stw     r6, 0x2e4(r4)
branch_0x80348448:
    cmplwi  r6, 0x0
    bne-    branch_0x80348458
    stw     r4, 0x0(r5)
    b       branch_0x8034845c

branch_0x80348458:
    stw     r4, 0x2e0(r6)
branch_0x8034845c:
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80348484
    lwz     r0, 0x2d0(r3)
    li      r4, 0x1
    lwz     r5, R13Off_m0x59c0(r13)
    subfic  r0, r0, 0x1f
    slw     r0, r4, r0
    andc    r0, r5, r0
    stw     r0, R13Off_m0x59c0(r13)
branch_0x80348484:
    li      r0, 0x0
    stw     r0, 0x2dc(r3)
    blr


.globl __OSGetEffectivePriority
__OSGetEffectivePriority: # 0x80348490
    lwz     r4, 0x2d4(r3)
    lwz     r5, 0x2f4(r3)
    b       branch_0x803484bc

branch_0x8034849c:
    lwz     r3, 0x0(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x803484b8
    lwz     r0, 0x2d0(r3)
    cmpw    r0, r4
    bge-    branch_0x803484b8
    mr      r4, r0
branch_0x803484b8:
    lwz     r5, 0x10(r5)
branch_0x803484bc:
    cmplwi  r5, 0x0
    bne+    branch_0x8034849c
    mr      r3, r4
    blr


.globl SetEffectivePriority
SetEffectivePriority: # 0x803484cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    lhz     r0, 0x2c8(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80348670
    bge-    branch_0x80348508
    cmpwi   r0, 0x1
    beq-    branch_0x80348514
    bge-    branch_0x80348664
    b       branch_0x80348670

branch_0x80348508:
    cmpwi   r0, 0x5
    bge-    branch_0x80348670
    b       branch_0x8034858c

branch_0x80348514:
    mr      r3, r31
    bl      UnsetRun
    stw     r30, 0x2d0(r31)
    lis     r3, RunQueue@h
    addi    r0, r3, RunQueue@l
    lwz     r3, 0x2d0(r31)
    slwi    r3, r3, 3
    add     r0, r0, r3
    stw     r0, 0x2dc(r31)
    lwz     r4, 0x2dc(r31)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80348550
    stw     r31, 0x0(r4)
    b       branch_0x80348554

branch_0x80348550:
    stw     r31, 0x2e0(r3)
branch_0x80348554:
    stw     r3, 0x2e4(r31)
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x2e0(r31)
    lwz     r4, 0x2dc(r31)
    stw     r31, 0x4(r4)
    lwz     r0, 0x2d0(r31)
    lwz     r4, R13Off_m0x59c0(r13)
    subfic  r0, r0, 0x1f
    slw     r0, r3, r0
    or      r0, r4, r0
    stw     r0, R13Off_m0x59c0(r13)
    stw     r3, R13Off_m0x59bc(r13)
    b       branch_0x80348670

branch_0x8034858c:
    lwz     r4, 0x2e0(r31)
    lwz     r5, 0x2e4(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x803485a8
    lwz     r3, 0x2dc(r31)
    stw     r5, 0x4(r3)
    b       branch_0x803485ac

branch_0x803485a8:
    stw     r5, 0x2e4(r4)
branch_0x803485ac:
    cmplwi  r5, 0x0
    bne-    branch_0x803485c0
    lwz     r3, 0x2dc(r31)
    stw     r4, 0x0(r3)
    b       branch_0x803485c4

branch_0x803485c0:
    stw     r4, 0x2e0(r5)
branch_0x803485c4:
    stw     r30, 0x2d0(r31)
    lwz     r4, 0x2dc(r31)
    lwz     r5, 0x0(r4)
    b       branch_0x803485d8

branch_0x803485d4:
    lwz     r5, 0x2e0(r5)
branch_0x803485d8:
    cmplwi  r5, 0x0
    beq-    branch_0x803485f0
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r31)
    cmpw    r3, r0
    ble+    branch_0x803485d4
branch_0x803485f0:
    cmplwi  r5, 0x0
    bne-    branch_0x80348628
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x8034860c
    stw     r31, 0x0(r4)
    b       branch_0x80348610

branch_0x8034860c:
    stw     r31, 0x2e0(r3)
branch_0x80348610:
    stw     r3, 0x2e4(r31)
    li      r0, 0x0
    stw     r0, 0x2e0(r31)
    lwz     r3, 0x2dc(r31)
    stw     r31, 0x4(r3)
    b       branch_0x80348650

branch_0x80348628:
    stw     r5, 0x2e0(r31)
    lwz     r3, 0x2e4(r5)
    stw     r31, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r31)
    bne-    branch_0x8034864c
    lwz     r3, 0x2dc(r31)
    stw     r31, 0x0(r3)
    b       branch_0x80348650

branch_0x8034864c:
    stw     r31, 0x2e0(r3)
branch_0x80348650:
    lwz     r3, 0x2f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80348670
    lwz     r3, 0x8(r3)
    b       branch_0x80348674

branch_0x80348664:
    li      r0, 0x1
    stw     r0, R13Off_m0x59bc(r13)
    stw     r30, 0x2d0(r31)
branch_0x80348670:
    li      r3, 0x0
branch_0x80348674:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __OSPromoteThread
__OSPromoteThread: # 0x8034868c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
branch_0x803486a0:
    lwz     r0, 0x2cc(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x803486c8
    lwz     r0, 0x2d0(r3)
    cmpw    r0, r31
    ble-    branch_0x803486c8
    mr      r4, r31
    bl      SetEffectivePriority
    cmplwi  r3, 0x0
    bne+    branch_0x803486a0
branch_0x803486c8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SelectThread
SelectThread: # 0x803486dc
    mflr    r0
    lis     r4, RunQueue@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, RunQueue@l
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r0, R13Off_m0x59b8(r13)
    cmpwi   r0, 0x0
    ble-    branch_0x80348710
    li      r3, 0x0
    b       branch_0x803488c4

branch_0x80348710:
    bl      OSGetCurrentContext
    lis     r4, 0x8000
    lwz     r6, 0xe4(r4)
    cmplw   r3, r6
    addi    r3, r6, 0x0
    beq-    branch_0x80348730
    li      r3, 0x0
    b       branch_0x803488c4

branch_0x80348730:
    cmplwi  r6, 0x0
    beq-    branch_0x803487f0
    lhz     r0, 0x2c8(r6)
    cmplwi  r0, 0x2
    bne-    branch_0x803487d0
    cmpwi   r30, 0x0
    bne-    branch_0x80348768
    lwz     r4, R13Off_m0x59c0(r13)
    lwz     r0, 0x2d0(r6)
    cntlzw  r4, r4
    cmpw    r0, r4
    bgt-    branch_0x80348768
    li      r3, 0x0
    b       branch_0x803488c4

branch_0x80348768:
    li      r0, 0x1
    sth     r0, 0x2c8(r6)
    lwz     r0, 0x2d0(r6)
    slwi    r0, r0, 3
    add     r0, r31, r0
    stw     r0, 0x2dc(r6)
    lwz     r5, 0x2dc(r6)
    lwz     r4, 0x4(r5)
    cmplwi  r4, 0x0
    bne-    branch_0x80348798
    stw     r6, 0x0(r5)
    b       branch_0x8034879c

branch_0x80348798:
    stw     r6, 0x2e0(r4)
branch_0x8034879c:
    stw     r4, 0x2e4(r6)
    li      r0, 0x0
    li      r4, 0x1
    stw     r0, 0x2e0(r6)
    lwz     r5, 0x2dc(r6)
    stw     r6, 0x4(r5)
    lwz     r0, 0x2d0(r6)
    lwz     r5, R13Off_m0x59c0(r13)
    subfic  r0, r0, 0x1f
    slw     r0, r4, r0
    or      r0, r5, r0
    stw     r0, R13Off_m0x59c0(r13)
    stw     r4, R13Off_m0x59bc(r13)
branch_0x803487d0:
    lhz     r0, 0x1a2(r6)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x803487f0
    bl      OSSaveContext
    cmplwi  r3, 0x0
    beq-    branch_0x803487f0
    li      r3, 0x0
    b       branch_0x803488c4

branch_0x803487f0:
    lwz     r0, R13Off_m0x59c0(r13)
    li      r4, 0x0
    lis     r3, 0x8000
    cmplwi  r0, 0x0
    stw     r4, 0xe4(r3)
    bne-    branch_0x80348838
    addi    r3, r31, 0x720
    bl      OSSetCurrentContext
branch_0x80348810:
    bl      OSEnableInterrupts
branch_0x80348814:
    lwz     r0, R13Off_m0x59c0(r13)
    cmplwi  r0, 0x0
    beq+    branch_0x80348814
    bl      OSDisableInterrupts
    lwz     r0, R13Off_m0x59c0(r13)
    cmplwi  r0, 0x0
    beq+    branch_0x80348810
    addi    r3, r31, 0x720
    bl      OSClearContext
branch_0x80348838:
    li      r3, 0x0
    stw     r3, R13Off_m0x59bc(r13)
    lwz     r0, R13Off_m0x59c0(r13)
    cntlzw  r7, r0
    slwi    r0, r7, 3
    add     r4, r31, r0
    lwz     r5, 0x0(r4)
    lwz     r6, 0x2e0(r5)
    addi    r31, r5, 0x0
    cmplwi  r6, 0x0
    bne-    branch_0x8034886c
    stw     r3, 0x4(r4)
    b       branch_0x80348870

branch_0x8034886c:
    stw     r3, 0x2e4(r6)
branch_0x80348870:
    stw     r6, 0x0(r4)
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80348898
    subfic  r0, r7, 0x1f
    lwz     r4, R13Off_m0x59c0(r13)
    li      r3, 0x1
    slw     r0, r3, r0
    andc    r0, r4, r0
    stw     r0, R13Off_m0x59c0(r13)
branch_0x80348898:
    li      r0, 0x0
    stw     r0, 0x2dc(r31)
    li      r0, 0x2
    lis     r4, 0x8000
    sth     r0, 0x2c8(r31)
    mr      r3, r31
    stw     r31, 0xe4(r4)
    bl      OSSetCurrentContext
    mr      r3, r31
    bl      OSLoadContext
    mr      r3, r31
branch_0x803488c4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __OSReschedule
__OSReschedule: # 0x803488dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x59bc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x803488fc
    li      r3, 0x0
    bl      SelectThread
branch_0x803488fc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSYieldThread
OSYieldThread: # 0x8034890c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    li      r3, 0x1
    bl      SelectThread
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl OSCreateThread
OSCreateThread: # 0x80348948
    mflr    r0
    cmpwi   r8, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r5, 0x0
    blt-    branch_0x80348984
    cmpwi   r8, 0x1f
    ble-    branch_0x8034898c
branch_0x80348984:
    li      r3, 0x0
    b       branch_0x80348a48

branch_0x8034898c:
    li      r7, 0x1
    sth     r7, 0x2c8(r31)
    clrlwi  r0, r9, 31
    clrrwi  r9, r29, 3
    sth     r0, 0x2ca(r31)
    li      r6, -0x1
    li      r0, 0x0
    stw     r8, 0x2d4(r31)
    addi    r3, r31, 0x0
    addi    r5, r9, -0x8
    stw     r8, 0x2d0(r31)
    stw     r7, 0x2cc(r31)
    stw     r6, 0x2d8(r31)
    stw     r0, 0x2f0(r31)
    stw     r0, 0x2ec(r31)
    stw     r0, 0x2e8(r31)
    stw     r0, 0x2f8(r31)
    stw     r0, 0x2f4(r31)
    stw     r0, -0x8(r9)
    stw     r0, -0x4(r9)
    bl      OSInitContext
    lis     r3, OSExitThread@ha
    addi    r0, r3, OSExitThread@l
    stw     r0, 0x84(r31)
    lis     r3, unk_deadbabe@ha
    subf    r4, r30, r29
    stw     r28, 0xc(r31)
    addi    r0, r3, unk_deadbabe@l
    stw     r29, 0x304(r31)
    stw     r4, 0x308(r31)
    lwz     r3, 0x308(r31)
    stw     r0, 0x0(r3)
    bl      OSDisableInterrupts
    lis     r4, unk_800000dc@h
    addi    r5, r4, unk_800000dc@l
    lwzu    r6, 0x4(r5)
    cmplwi  r6, 0x0
    bne-    branch_0x80348a2c
    stw     r31, 0xdc(r4)
    b       branch_0x80348a30

branch_0x80348a2c:
    stw     r31, 0x2fc(r6)
branch_0x80348a30:
    stw     r6, 0x300(r31)
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
    stw     r31, 0x0(r5)
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x80348a48:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl OSExitThread
OSExitThread: # 0x80348a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    bl      OSDisableInterrupts
    lis     r31, 0x8000
    lwz     r30, 0xe4(r31)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      OSClearContext
    lhz     r0, 0x2ca(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x80348aec
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne-    branch_0x80348ac4
    stw     r5, 0xe0(r31)
    b       branch_0x80348ac8

branch_0x80348ac4:
    stw     r5, 0x300(r4)
branch_0x80348ac8:
    cmplwi  r5, 0x0
    bne-    branch_0x80348adc
    lis     r3, unk_80000000@h
    stw     r4, 0xdc(r3)
    b       branch_0x80348ae0

branch_0x80348adc:
    stw     r4, 0x2fc(r5)
branch_0x80348ae0:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
    b       branch_0x80348af8

branch_0x80348aec:
    li      r0, 0x8
    sth     r0, 0x2c8(r30)
    stw     r28, 0x2d8(r30)
branch_0x80348af8:
    mr      r3, r30
    bl      __OSUnlockAllMutex
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    li      r0, 0x1
    stw     r0, R13Off_m0x59bc(r13)
    lwz     r0, R13Off_m0x59bc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80348b24
    li      r3, 0x0
    bl      SelectThread
branch_0x80348b24:
    mr      r3, r29
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSCancelThread
OSCancelThread: # 0x80348b4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    bl      OSDisableInterrupts
    lhz     r0, 0x2c8(r30)
    addi    r31, r3, unk_80000000@l
    cmpwi   r0, 0x3
    beq-    branch_0x80348c54
    bge-    branch_0x80348b90
    cmpwi   r0, 0x1
    beq-    branch_0x80348b9c
    bge-    branch_0x80348bb4
    b       branch_0x80348c54

branch_0x80348b90:
    cmpwi   r0, 0x5
    bge-    branch_0x80348c54
    b       branch_0x80348bc0

branch_0x80348b9c:
    lwz     r0, 0x2cc(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x80348c60
    mr      r3, r30
    bl      UnsetRun
    b       branch_0x80348c60

branch_0x80348bb4:
    li      r0, 0x1
    stw     r0, R13Off_m0x59bc(r13)
    b       branch_0x80348c60

branch_0x80348bc0:
    lwz     r4, 0x2e0(r30)
    lwz     r5, 0x2e4(r30)
    cmplwi  r4, 0x0
    bne-    branch_0x80348bdc
    lwz     r3, 0x2dc(r30)
    stw     r5, 0x4(r3)
    b       branch_0x80348be0

branch_0x80348bdc:
    stw     r5, 0x2e4(r4)
branch_0x80348be0:
    cmplwi  r5, 0x0
    bne-    branch_0x80348bf4
    lwz     r3, 0x2dc(r30)
    stw     r4, 0x0(r3)
    b       branch_0x80348bf8

branch_0x80348bf4:
    stw     r4, 0x2e0(r5)
branch_0x80348bf8:
    li      r0, 0x0
    stw     r0, 0x2dc(r30)
    lwz     r0, 0x2cc(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x80348c60
    lwz     r3, 0x2f0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80348c60
    lwz     r29, 0x8(r3)
branch_0x80348c1c:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x80348c60
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq-    branch_0x80348c60
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne+    branch_0x80348c1c
    b       branch_0x80348c60

branch_0x80348c54:
    mr      r3, r31
    bl      OSRestoreInterrupts
    b       branch_0x80348cec

branch_0x80348c60:
    mr      r3, r30
    bl      OSClearContext
    lhz     r0, 0x2ca(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x80348cb8
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne-    branch_0x80348c90
    lis     r3, 0x8000
    stw     r5, 0xe0(r3)
    b       branch_0x80348c94

branch_0x80348c90:
    stw     r5, 0x300(r4)
branch_0x80348c94:
    cmplwi  r5, 0x0
    bne-    branch_0x80348ca8
    lis     r3, unk_80000000@h
    stw     r4, 0xdc(r3)
    b       branch_0x80348cac

branch_0x80348ca8:
    stw     r4, 0x2fc(r5)
branch_0x80348cac:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
    b       branch_0x80348cc0

branch_0x80348cb8:
    li      r0, 0x8
    sth     r0, 0x2c8(r30)
branch_0x80348cc0:
    mr      r3, r30
    bl      __OSUnlockAllMutex
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    lwz     r0, R13Off_m0x59bc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80348ce4
    li      r3, 0x0
    bl      SelectThread
branch_0x80348ce4:
    mr      r3, r31
    bl      OSRestoreInterrupts
branch_0x80348cec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSJoinThread
OSJoinThread: # 0x80348d08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, unk_80000000@l
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    bl      OSDisableInterrupts
    lhz     r0, 0x2ca(r31)
    addi    r30, r3, 0x0
    clrlwi. r0, r0, 31
    bne-    branch_0x80348db4
    lhz     r0, 0x2c8(r31)
    cmplwi  r0, 0x8
    beq-    branch_0x80348db4
    lwz     r0, 0x2e8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80348db4
    addi    r3, r31, 0x2e8
    bl      OSSleepThread
    lhz     r0, 0x2c8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80348d70
    li      r0, 0x0
    b       branch_0x80348d9c

branch_0x80348d70:
    lis     r3, 0x8000
    lwz     r3, 0xdc(r3)
    b       branch_0x80348d90

branch_0x80348d7c:
    cmplw   r31, r3
    bne-    branch_0x80348d8c
    li      r0, 0x1
    b       branch_0x80348d9c

branch_0x80348d8c:
    lwz     r3, 0x2fc(r3)
branch_0x80348d90:
    cmplwi  r3, 0x0
    bne+    branch_0x80348d7c
    li      r0, 0x0
branch_0x80348d9c:
    cmpwi   r0, 0x0
    bne-    branch_0x80348db4
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80348e2c

branch_0x80348db4:
    lhz     r0, 0x2c8(r31)
    cmplwi  r0, 0x8
    bne-    branch_0x80348e20
    cmplwi  r29, 0x0
    beq-    branch_0x80348dd0
    lwz     r0, 0x2d8(r31)
    stw     r0, 0x0(r29)
branch_0x80348dd0:
    lwz     r4, 0x2fc(r31)
    lwz     r5, 0x300(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x80348dec
    lis     r3, 0x8000
    stw     r5, 0xe0(r3)
    b       branch_0x80348df0

branch_0x80348dec:
    stw     r5, 0x300(r4)
branch_0x80348df0:
    cmplwi  r5, 0x0
    bne-    branch_0x80348e04
    lis     r3, unk_80000000@h
    stw     r4, 0xdc(r3)
    b       branch_0x80348e08

branch_0x80348e04:
    stw     r4, 0x2fc(r5)
branch_0x80348e08:
    li      r0, 0x0
    sth     r0, 0x2c8(r31)
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x80348e2c

branch_0x80348e20:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x80348e2c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSDetachThread
OSDetachThread: # 0x80348e48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lhz     r0, 0x2ca(r30)
    addi    r31, r3, unk_80000000@l
    ori     r0, r0, 0x1
    sth     r0, 0x2ca(r30)
    lhz     r0, 0x2c8(r30)
    cmplwi  r0, 0x8
    bne-    branch_0x80348ec0
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne-    branch_0x80348e9c
    lis     r3, 0x8000
    stw     r5, 0xe0(r3)
    b       branch_0x80348ea0

branch_0x80348e9c:
    stw     r5, 0x300(r4)
branch_0x80348ea0:
    cmplwi  r5, 0x0
    bne-    branch_0x80348eb4
    lis     r3, unk_80000000@h
    stw     r4, 0xdc(r3)
    b       branch_0x80348eb8

branch_0x80348eb4:
    stw     r4, 0x2fc(r5)
branch_0x80348eb8:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
branch_0x80348ec0:
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSResumeThread
OSResumeThread: # 0x80348ee8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    bl      OSDisableInterrupts
    lwz     r4, 0x2cc(r29)
    addi    r31, r3, unk_80000000@l
    addi    r0, r4, -0x1
    stw     r0, 0x2cc(r29)
    mr      r30, r4
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bge-    branch_0x80348f34
    li      r0, 0x0
    stw     r0, 0x2cc(r29)
    b       branch_0x80349148

branch_0x80348f34:
    bne-    branch_0x80349148
    lhz     r0, 0x2c8(r29)
    cmpwi   r0, 0x4
    beq-    branch_0x80348ff8
    bge-    branch_0x80349134
    cmpwi   r0, 0x1
    beq-    branch_0x80348f54
    b       branch_0x80349134

branch_0x80348f54:
    lwz     r0, 0x2d4(r29)
    lwz     r3, 0x2f4(r29)
    b       branch_0x80348f80

branch_0x80348f60:
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80348f7c
    lwz     r4, 0x2d0(r4)
    cmpw    r4, r0
    bge-    branch_0x80348f7c
    mr      r0, r4
branch_0x80348f7c:
    lwz     r3, 0x10(r3)
branch_0x80348f80:
    cmplwi  r3, 0x0
    bne+    branch_0x80348f60
    stw     r0, 0x2d0(r29)
    lis     r3, RunQueue@h
    addi    r0, r3, RunQueue@l
    lwz     r3, 0x2d0(r29)
    slwi    r3, r3, 3
    add     r0, r0, r3
    stw     r0, 0x2dc(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80348fbc
    stw     r29, 0x0(r4)
    b       branch_0x80348fc0

branch_0x80348fbc:
    stw     r29, 0x2e0(r3)
branch_0x80348fc0:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x2e0(r29)
    lwz     r4, 0x2dc(r29)
    stw     r29, 0x4(r4)
    lwz     r0, 0x2d0(r29)
    lwz     r4, R13Off_m0x59c0(r13)
    subfic  r0, r0, 0x1f
    slw     r0, r3, r0
    or      r0, r4, r0
    stw     r0, R13Off_m0x59c0(r13)
    stw     r3, R13Off_m0x59bc(r13)
    b       branch_0x80349134

branch_0x80348ff8:
    lwz     r4, 0x2e0(r29)
    lwz     r5, 0x2e4(r29)
    cmplwi  r4, 0x0
    bne-    branch_0x80349014
    lwz     r3, 0x2dc(r29)
    stw     r5, 0x4(r3)
    b       branch_0x80349018

branch_0x80349014:
    stw     r5, 0x2e4(r4)
branch_0x80349018:
    cmplwi  r5, 0x0
    bne-    branch_0x8034902c
    lwz     r3, 0x2dc(r29)
    stw     r4, 0x0(r3)
    b       branch_0x80349030

branch_0x8034902c:
    stw     r4, 0x2e0(r5)
branch_0x80349030:
    lwz     r0, 0x2d4(r29)
    lwz     r3, 0x2f4(r29)
    b       branch_0x8034905c

branch_0x8034903c:
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80349058
    lwz     r4, 0x2d0(r4)
    cmpw    r4, r0
    bge-    branch_0x80349058
    mr      r0, r4
branch_0x80349058:
    lwz     r3, 0x10(r3)
branch_0x8034905c:
    cmplwi  r3, 0x0
    bne+    branch_0x8034903c
    stw     r0, 0x2d0(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r5, 0x0(r4)
    b       branch_0x80349078

branch_0x80349074:
    lwz     r5, 0x2e0(r5)
branch_0x80349078:
    cmplwi  r5, 0x0
    beq-    branch_0x80349090
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r29)
    cmpw    r3, r0
    ble+    branch_0x80349074
branch_0x80349090:
    cmplwi  r5, 0x0
    bne-    branch_0x803490c8
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x803490ac
    stw     r29, 0x0(r4)
    b       branch_0x803490b0

branch_0x803490ac:
    stw     r29, 0x2e0(r3)
branch_0x803490b0:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    stw     r0, 0x2e0(r29)
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x4(r3)
    b       branch_0x803490f0

branch_0x803490c8:
    stw     r5, 0x2e0(r29)
    lwz     r3, 0x2e4(r5)
    stw     r29, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r29)
    bne-    branch_0x803490ec
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x0(r3)
    b       branch_0x803490f0

branch_0x803490ec:
    stw     r29, 0x2e0(r3)
branch_0x803490f0:
    lwz     r3, 0x2f0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80349134
    lwz     r29, 0x8(r3)
branch_0x80349100:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x80349134
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq-    branch_0x80349134
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne+    branch_0x80349100
branch_0x80349134:
    lwz     r0, R13Off_m0x59bc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80349148
    li      r3, 0x0
    bl      SelectThread
branch_0x80349148:
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl OSSuspendThread
OSSuspendThread: # 0x80349170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      OSDisableInterrupts
    lwz     r4, 0x2cc(r29)
    addi    r31, r3, 0x0
    addi    r0, r4, 0x1
    mr.     r30, r4
    stw     r0, 0x2cc(r29)
    bne-    branch_0x803492b8
    lhz     r0, 0x2c8(r29)
    cmpwi   r0, 0x3
    beq-    branch_0x803492a4
    bge-    branch_0x803491c8
    cmpwi   r0, 0x1
    beq-    branch_0x803491e4
    bge-    branch_0x803491d4
    b       branch_0x803492a4

branch_0x803491c8:
    cmpwi   r0, 0x5
    bge-    branch_0x803492a4
    b       branch_0x803491f0

branch_0x803491d4:
    li      r0, 0x1
    stw     r0, R13Off_m0x59bc(r13)
    sth     r0, 0x2c8(r29)
    b       branch_0x803492a4

branch_0x803491e4:
    mr      r3, r29
    bl      UnsetRun
    b       branch_0x803492a4

branch_0x803491f0:
    lwz     r4, 0x2e0(r29)
    lwz     r5, 0x2e4(r29)
    cmplwi  r4, 0x0
    bne-    branch_0x8034920c
    lwz     r3, 0x2dc(r29)
    stw     r5, 0x4(r3)
    b       branch_0x80349210

branch_0x8034920c:
    stw     r5, 0x2e4(r4)
branch_0x80349210:
    cmplwi  r5, 0x0
    bne-    branch_0x80349224
    lwz     r3, 0x2dc(r29)
    stw     r4, 0x0(r3)
    b       branch_0x80349228

branch_0x80349224:
    stw     r4, 0x2e0(r5)
branch_0x80349228:
    li      r0, 0x20
    stw     r0, 0x2d0(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80349248
    stw     r29, 0x0(r4)
    b       branch_0x8034924c

branch_0x80349248:
    stw     r29, 0x2e0(r3)
branch_0x8034924c:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    stw     r0, 0x2e0(r29)
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x4(r3)
    lwz     r3, 0x2f0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x803492a4
    lwz     r29, 0x8(r3)
branch_0x80349270:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x803492a4
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq-    branch_0x803492a4
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne+    branch_0x80349270
branch_0x803492a4:
    lwz     r0, R13Off_m0x59bc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x803492b8
    li      r3, 0x0
    bl      SelectThread
branch_0x803492b8:
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSSleepThread
OSSleepThread: # 0x803492e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lwz     r4, 0xe4(r4)
    li      r0, 0x4
    mr      r31, r3
    sth     r0, 0x2c8(r4)
    stw     r30, 0x2dc(r4)
    lwz     r5, 0x0(r30)
    b       branch_0x80349320

branch_0x8034931c:
    lwz     r5, 0x2e0(r5)
branch_0x80349320:
    cmplwi  r5, 0x0
    beq-    branch_0x80349338
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r4)
    cmpw    r3, r0
    ble+    branch_0x8034931c
branch_0x80349338:
    cmplwi  r5, 0x0
    bne-    branch_0x8034936c
    lwz     r3, 0x4(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x80349354
    stw     r4, 0x0(r30)
    b       branch_0x80349358

branch_0x80349354:
    stw     r4, 0x2e0(r3)
branch_0x80349358:
    stw     r3, 0x2e4(r4)
    li      r0, 0x0
    stw     r0, 0x2e0(r4)
    stw     r4, 0x4(r30)
    b       branch_0x80349390

branch_0x8034936c:
    stw     r5, 0x2e0(r4)
    lwz     r3, 0x2e4(r5)
    stw     r4, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r4)
    bne-    branch_0x8034938c
    stw     r4, 0x0(r30)
    b       branch_0x80349390

branch_0x8034938c:
    stw     r4, 0x2e0(r3)
branch_0x80349390:
    li      r0, 0x1
    stw     r0, R13Off_m0x59bc(r13)
    lwz     r0, R13Off_m0x59bc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x803493ac
    li      r3, 0x0
    bl      SelectThread
branch_0x803493ac:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSWakeupThread
OSWakeupThread: # 0x803493cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, RunQueue@h
    addi    r31, r3, 0x0
    addi    r5, r4, RunQueue@l
    b       branch_0x80349490

branch_0x803493f8:
    lwz     r3, 0x2e0(r6)
    cmplwi  r3, 0x0
    bne-    branch_0x80349410
    li      r0, 0x0
    stw     r0, 0x4(r30)
    b       branch_0x80349418

branch_0x80349410:
    li      r0, 0x0
    stw     r0, 0x2e4(r3)
branch_0x80349418:
    stw     r3, 0x0(r30)
    li      r0, 0x1
    sth     r0, 0x2c8(r6)
    lwz     r0, 0x2cc(r6)
    cmpwi   r0, 0x0
    bgt-    branch_0x80349490
    lwz     r0, 0x2d0(r6)
    slwi    r0, r0, 3
    add     r0, r5, r0
    stw     r0, 0x2dc(r6)
    lwz     r4, 0x2dc(r6)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80349458
    stw     r6, 0x0(r4)
    b       branch_0x8034945c

branch_0x80349458:
    stw     r6, 0x2e0(r3)
branch_0x8034945c:
    stw     r3, 0x2e4(r6)
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x2e0(r6)
    lwz     r4, 0x2dc(r6)
    stw     r6, 0x4(r4)
    lwz     r0, 0x2d0(r6)
    lwz     r4, R13Off_m0x59c0(r13)
    subfic  r0, r0, 0x1f
    slw     r0, r3, r0
    or      r0, r4, r0
    stw     r0, R13Off_m0x59c0(r13)
    stw     r3, R13Off_m0x59bc(r13)
branch_0x80349490:
    lwz     r6, 0x0(r30)
    cmplwi  r6, 0x0
    bne+    branch_0x803493f8
    lwz     r0, R13Off_m0x59bc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x803494b0
    li      r3, 0x0
    bl      SelectThread
branch_0x803494b0:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSGetThreadPriority
OSGetThreadPriority: # 0x803494d0
    lwz     r3, 0x2d4(r3)
    blr

