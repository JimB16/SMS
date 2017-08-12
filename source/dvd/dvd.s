
.globl DVDInit
DVDInit: # 0x8034bfcc
    mflr    r0
    lis     r3, unk_803e85e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    addi    r30, r3, unk_803e85e0@l
    lwz     r0, R13Off_m0x5908(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034c0b0
    bl      OSInitAlarm
    li      r31, 0x1
    stw     r31, R13Off_m0x5908(r13)
    bl      __DVDFSInit
    bl      __DVDClearWaitingQueue
    bl      __DVDInitWA
    lis     r0, unk_80000015@h
    lis     r3, __DVDInterruptHandler@ha
    stw     r0, R13Off_m0x5940(r13)
    addi    r4, r3, __DVDInterruptHandler@l
    stw     r0, R13Off_m0x5944(r13)
    addi    r3, r0, unk_80000015@l
    bl      __OSSetInterruptHandler
    li      r3, 0x400
    bl      __OSUnmaskInterrupts
    addi    r3, r13, R13Off_m0x5950
    bl      OSInitThreadQueue
    lis     r3, 0xcc00
    li      r0, 0x2a
    stw     r0, 0x6000(r3)
    li      r0, 0x0
    stw     r0, 0x6004(r3)
    lwz     r3, R13Off_m0x5940(r13)
    addi    r3, r3, 0x20
    lwz     r3, 0x0(r3)
    addis   r0, r3, 0x1ae0
    cmplwi  r0, 0x7c22
    bne-    branch_0x8034c084
    addi    r3, r30, 0x0
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r30, 0x18
    crxor   6, 6, 6
    bl      OSReport
    bl      __fstLoad
    b       branch_0x8034c0b0

branch_0x8034c084:
    addis   r0, r3, 0xf2eb
    cmplwi  r0, 0xea5e
    bne-    branch_0x8034c0a0
    addi    r3, r30, 0x24
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x8034c0b0

branch_0x8034c0a0:
    stw     r31, R13Off_m0x590c(r13)
    addi    r3, r30, 0x40
    crxor   6, 6, 6
    bl      OSReport
branch_0x8034c0b0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl stateReadingFST
stateReadingFST: # 0x8034c0c8
    mflr    r0
    lis     r3, stateReadingFST@ha
    stw     r0, 0x4(sp)
    addi    r0, r3, stateReadingFST@l
    lis     r3, tmpBuffer@h
    stwu    sp, -0x8(sp)
    addi    r5, r3, tmpBuffer@l
    lis     r3, cbForStateReadingFST@ha
    stw     r0, R13Off_m0x5904(r13)
    addi    r6, r3, cbForStateReadingFST@l
    lwz     r7, R13Off_m0x5940(r13)
    lwz     r4, 0x8(r5)
    lwz     r3, 0x38(r7)
    addi    r0, r4, 0x1f
    lwz     r5, 0x4(r5)
    clrrwi  r4, r0, 5
    bl      DVDLowRead
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateReadingFST
cbForStateReadingFST: # 0x8034c11c
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8034c144
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, -0x1
    stw     r0, 0xc(r3)
    bl      stateTimeout
    b       branch_0x8034c18c

branch_0x8034c144:
    clrlwi. r0, r3, 31
    beq-    branch_0x8034c188
    lis     r3, DummyCommandBlock@h
    lwz     r4, R13Off_m0x5948(r13)
    addi    r0, r3, DummyCommandBlock@l
    li      r3, 0x0
    stw     r0, R13Off_m0x5948(r13)
    stw     r3, R13Off_m0x5914(r13)
    stw     r3, 0xc(r4)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c180
    mtlr    r12
    li      r3, 0x0
    blrl
branch_0x8034c180:
    bl      stateReady
    b       branch_0x8034c18c

branch_0x8034c188:
    bl      stateGettingError
branch_0x8034c18c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateError
cbForStateError: # 0x8034c19c
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bne-    branch_0x8034c1c8
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, -0x1
    stw     r0, 0xc(r3)
    bl      stateTimeout
    b       branch_0x8034c230

branch_0x8034c1c8:
    lis     r3, DummyCommandBlock@h
    lwz     r31, R13Off_m0x5948(r13)
    addi    r0, r3, DummyCommandBlock@l
    li      r3, 0x1
    stw     r0, R13Off_m0x5948(r13)
    stw     r3, R13Off_m0x5930(r13)
    lwz     r12, 0x28(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c1fc
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, -0x1
    blrl
branch_0x8034c1fc:
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034c22c
    lwz     r12, R13Off_m0x5924(r13)
    li      r0, 0x0
    stw     r0, R13Off_m0x5928(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c22c
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, 0x0
    blrl
branch_0x8034c22c:
    bl      stateReady
branch_0x8034c230:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stateTimeout
stateTimeout: # 0x8034c244
    mflr    r0
    lis     r3, unk_01234568@h
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_01234568@l
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      __DVDStoreErrorCode
    bl      DVDReset
    lis     r3, DummyCommandBlock@h
    lwz     r31, R13Off_m0x5948(r13)
    addi    r0, r3, DummyCommandBlock@l
    li      r3, 0x1
    stw     r0, R13Off_m0x5948(r13)
    stw     r3, R13Off_m0x5930(r13)
    lwz     r12, 0x28(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c298
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, -0x1
    blrl
branch_0x8034c298:
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034c2c8
    lwz     r12, R13Off_m0x5924(r13)
    li      r0, 0x0
    stw     r0, R13Off_m0x5928(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c2c8
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, 0x0
    blrl
branch_0x8034c2c8:
    bl      stateReady
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl stateGettingError
stateGettingError: # 0x8034c2e0
    mflr    r0
    lis     r3, cbForStateGettingError@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, cbForStateGettingError@l
    stwu    sp, -0x8(sp)
    bl      DVDLowRequestError
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CategorizeError
CategorizeError: # 0x8034c308
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x400
    bne-    branch_0x8034c320
    stw     r3, R13Off_m0x5918(r13)
    li      r3, 0x1
    blr

branch_0x8034c320:
    clrlwi  r4, r3, 8
    addis   r0, r4, 0xfffa
    cmplwi  r0, 0x2800
    beq-    branch_0x8034c348
    addis   r0, r4, 0xfffe
    cmplwi  r0, 0x3a00
    beq-    branch_0x8034c348
    addis   r0, r4, 0xfff5
    cmplwi  r0, 0x5a01
    bne-    branch_0x8034c350
branch_0x8034c348:
    li      r3, 0x0
    blr

branch_0x8034c350:
    lwz     r3, R13Off_m0x5914(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5914(r13)
    lwz     r0, R13Off_m0x5914(r13)
    cmpwi   r0, 0x2
    bne-    branch_0x8034c38c
    lwz     r0, R13Off_m0x5918(r13)
    cmplw   r4, r0
    bne-    branch_0x8034c380
    stw     r4, R13Off_m0x5918(r13)
    li      r3, 0x1
    blr

branch_0x8034c380:
    stw     r4, R13Off_m0x5918(r13)
    li      r3, 0x2
    blr

branch_0x8034c38c:
    addis   r0, r4, 0xfffd
    stw     r4, R13Off_m0x5918(r13)
    cmplwi  r0, 0x1100
    beq-    branch_0x8034c3ac
    lwz     r3, R13Off_m0x5948(r13)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x8034c3b4
branch_0x8034c3ac:
    li      r3, 0x2
    blr

branch_0x8034c3b4:
    li      r3, 0x3
    blr


.globl cbForStateGettingError
cbForStateGettingError: # 0x8034c3bc
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    bne-    branch_0x8034c408
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034c630

branch_0x8034c408:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8034c438
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234567@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234567@l
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
    b       branch_0x8034c630

branch_0x8034c438:
    lis     r3, unk_cc000000@h
    lwz     r29, 0x6020(r3)
    addi    r3, r29, 0x0
    clrrwi  r28, r29, 24
    bl      CategorizeError
    addi    r31, r3, unk_cc000000@l
    cmplwi  r31, 0x1
    bne-    branch_0x8034c47c
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    addi    r3, r29, 0x0
    stw     r0, 0xc(r4)
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
    b       branch_0x8034c630

branch_0x8034c47c:
    addi    r0, r31, -0x2
    cmplwi  r0, 0x1
    bgt-    branch_0x8034c490
    li      r4, 0x0
    b       branch_0x8034c4d0

branch_0x8034c490:
    addis   r0, r28, 0xff00
    cmplwi  r0, 0x0
    bne-    branch_0x8034c4a4
    li      r4, 0x4
    b       branch_0x8034c4d0

branch_0x8034c4a4:
    addis   r0, r28, 0xfe00
    cmplwi  r0, 0x0
    bne-    branch_0x8034c4b8
    li      r4, 0x6
    b       branch_0x8034c4d0

branch_0x8034c4b8:
    addis   r0, r28, 0xfd00
    cmplwi  r0, 0x0
    bne-    branch_0x8034c4cc
    li      r4, 0x3
    b       branch_0x8034c4d0

branch_0x8034c4cc:
    li      r4, 0x5
branch_0x8034c4d0:
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034c544
    lis     r3, DummyCommandBlock@h
    stw     r4, R13Off_m0x5920(r13)
    li      r0, 0x0
    lwz     r30, R13Off_m0x5948(r13)
    addi    r3, r3, DummyCommandBlock@l
    stw     r0, R13Off_m0x5928(r13)
    li      r0, 0xa
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r30)
    lwz     r12, 0x28(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c51c
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, -0x3
    blrl
branch_0x8034c51c:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c538
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, 0x0
    blrl
branch_0x8034c538:
    bl      stateReady
    li      r0, 0x1
    b       branch_0x8034c548

branch_0x8034c544:
    li      r0, 0x0
branch_0x8034c548:
    cmpwi   r0, 0x0
    bne-    branch_0x8034c630
    cmplwi  r31, 0x2
    bne-    branch_0x8034c568
    mr      r3, r29
    bl      __DVDStoreErrorCode
    bl      stateGoToRetry
    b       branch_0x8034c630

branch_0x8034c568:
    cmplwi  r31, 0x3
    bne-    branch_0x8034c5ac
    clrlwi  r3, r29, 8
    addis   r0, r3, 0xfffd
    cmplwi  r0, 0x1100
    bne-    branch_0x8034c598
    lwz     r5, R13Off_m0x5948(r13)
    lis     r3, cbForUnrecoveredError@ha
    addi    r4, r3, cbForUnrecoveredError@l
    lwz     r3, 0x10(r5)
    bl      DVDLowSeek
    b       branch_0x8034c630

branch_0x8034c598:
    lwz     r12, R13Off_m0x5904(r13)
    lwz     r3, R13Off_m0x5948(r13)
    mtlr    r12
    blrl
    b       branch_0x8034c630

branch_0x8034c5ac:
    addis   r0, r28, 0xff00
    cmplwi  r0, 0x0
    bne-    branch_0x8034c5cc
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, 0x5
    stw     r0, 0xc(r3)
    bl      stateMotorStopped
    b       branch_0x8034c630

branch_0x8034c5cc:
    addis   r0, r28, 0xfe00
    cmplwi  r0, 0x0
    bne-    branch_0x8034c5ec
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, 0x3
    stw     r0, 0xc(r3)
    bl      stateCoverClosed
    b       branch_0x8034c630

branch_0x8034c5ec:
    addis   r0, r28, 0xfd00
    cmplwi  r0, 0x0
    bne-    branch_0x8034c60c
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, 0x4
    stw     r0, 0xc(r3)
    bl      stateMotorStopped
    b       branch_0x8034c630

branch_0x8034c60c:
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234567@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234567@l
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
branch_0x8034c630:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl cbForUnrecoveredError
cbForUnrecoveredError: # 0x8034c650
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8034c68c
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034c6a8

branch_0x8034c68c:
    clrlwi. r0, r3, 31
    beq-    branch_0x8034c69c
    bl      stateGoToRetry
    b       branch_0x8034c6a8

branch_0x8034c69c:
    lis     r3, cbForUnrecoveredErrorRetry@ha
    addi    r3, r3, cbForUnrecoveredErrorRetry@l
    bl      DVDLowRequestError
branch_0x8034c6a8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForUnrecoveredErrorRetry
cbForUnrecoveredErrorRetry: # 0x8034c6b8
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8034c6f4
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034c740

branch_0x8034c6f4:
    rlwinm. r0, r3, 0, 30, 30
    lwz     r3, R13Off_m0x5948(r13)
    li      r4, -0x1
    stw     r4, 0xc(r3)
    beq-    branch_0x8034c724
    lis     r3, unk_01234567@h
    addi    r3, r3, unk_01234567@l
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
    b       branch_0x8034c740

branch_0x8034c724:
    lis     r3, unk_cc006000@h
    addi    r3, r3, unk_cc006000@l
    lwz     r3, 0x20(r3)
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
branch_0x8034c740:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stateGoToRetry
stateGoToRetry: # 0x8034c750
    mflr    r0
    lis     r3, cbForStateGoToRetry@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, cbForStateGoToRetry@l
    stwu    sp, -0x8(sp)
    bl      DVDLowStopMotor
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateGoToRetry
cbForStateGoToRetry: # 0x8034c778
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bne-    branch_0x8034c7b8
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034c8bc

branch_0x8034c7b8:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8034c7e8
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234567@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234567@l
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
    b       branch_0x8034c8bc

branch_0x8034c7e8:
    li      r0, 0x0
    stw     r0, R13Off_m0x5914(r13)
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x4
    beq-    branch_0x8034c820
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x5
    beq-    branch_0x8034c820
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xd
    beq-    branch_0x8034c820
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xf
    bne-    branch_0x8034c828
branch_0x8034c820:
    li      r0, 0x1
    stw     r0, R13Off_m0x5910(r13)
branch_0x8034c828:
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034c8a0
    li      r0, 0x2
    lwz     r31, R13Off_m0x5948(r13)
    lis     r3, DummyCommandBlock@h
    stw     r0, R13Off_m0x5920(r13)
    addi    r0, r3, DummyCommandBlock@l
    li      r3, 0x0
    stw     r0, R13Off_m0x5948(r13)
    li      r0, 0xa
    stw     r3, R13Off_m0x5928(r13)
    stw     r0, 0xc(r31)
    lwz     r12, 0x28(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c878
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, -0x3
    blrl
branch_0x8034c878:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034c894
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, 0x0
    blrl
branch_0x8034c894:
    bl      stateReady
    li      r0, 0x1
    b       branch_0x8034c8a4

branch_0x8034c8a0:
    li      r0, 0x0
branch_0x8034c8a4:
    cmpwi   r0, 0x0
    bne-    branch_0x8034c8bc
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, 0xb
    stw     r0, 0xc(r3)
    bl      stateMotorStopped
branch_0x8034c8bc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stateCheckID
stateCheckID: # 0x8034c8d0
    mflr    r0
    lis     r3, tmpBuffer@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, tmpBuffer@l
    lwz     r0, R13Off_m0x592c(r13)
    cmpwi   r0, 0x3
    beq-    branch_0x8034c8f8
    b       branch_0x8034c964

branch_0x8034c8f8:
    lwz     r4, R13Off_m0x5948(r13)
    addi    r3, r31, 0x0
    li      r5, 0x1c
    lwz     r4, 0x24(r4)
    bl      memcmp
    cmpwi   r3, 0x0
    beq-    branch_0x8034c924
    lis     r3, cbForStateCheckID1@ha
    addi    r3, r3, cbForStateCheckID1@l
    bl      DVDLowStopMotor
    b       branch_0x8034c9a0

branch_0x8034c924:
    lwz     r3, R13Off_m0x5944(r13)
    addi    r4, r31, 0x0
    li      r5, 0x20
    bl      memcpy
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r0, 0xc(r4)
    li      r4, 0x20
    bl      DCInvalidateRange
    lis     r4, stateCheckID2@ha
    lwz     r3, R13Off_m0x5948(r13)
    addi    r0, r4, stateCheckID2@l
    stw     r0, R13Off_m0x5904(r13)
    bl      stateCheckID2
    b       branch_0x8034c9a0

branch_0x8034c964:
    lwz     r4, R13Off_m0x5944(r13)
    addi    r3, r31, 0x0
    li      r5, 0x20
    bl      memcmp
    cmpwi   r3, 0x0
    beq-    branch_0x8034c98c
    lis     r3, cbForStateCheckID1@ha
    addi    r3, r3, cbForStateCheckID1@l
    bl      DVDLowStopMotor
    b       branch_0x8034c9a0

branch_0x8034c98c:
    lis     r4, stateCheckID3@ha
    lwz     r3, R13Off_m0x5948(r13)
    addi    r0, r4, stateCheckID3@l
    stw     r0, R13Off_m0x5904(r13)
    bl      stateCheckID3
branch_0x8034c9a0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl stateCheckID3
stateCheckID3: # 0x8034c9b4
    mflr    r0
    lis     r3, cbForStateCheckID3@ha
    stw     r0, 0x4(sp)
    addi    r5, r3, cbForStateCheckID3@l
    stwu    sp, -0x8(sp)
    lwz     r4, R13Off_m0x5944(r13)
    lbz     r3, 0x8(r4)
    li      r4, 0xa
    bl      DVDLowAudioBufferConfig
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stateCheckID2
stateCheckID2: # 0x8034c9e8
    mflr    r0
    lis     r3, tmpBuffer@h
    stw     r0, 0x4(sp)
    lis     r4, cbForStateCheckID2@ha
    addi    r6, r4, cbForStateCheckID2@l
    stwu    sp, -0x8(sp)
    addi    r3, r3, tmpBuffer@l
    li      r4, 0x20
    li      r5, 0x420
    bl      DVDLowRead
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateCheckID1
cbForStateCheckID1: # 0x8034ca20
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bne-    branch_0x8034ca60
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034cb20

branch_0x8034ca60:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8034ca90
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234567@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234567@l
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
    b       branch_0x8034cb20

branch_0x8034ca90:
    li      r4, 0x0
    stw     r4, R13Off_m0x5914(r13)
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034cb08
    li      r0, 0x1
    lwz     r31, R13Off_m0x5948(r13)
    stw     r0, R13Off_m0x5920(r13)
    lis     r3, DummyCommandBlock@h
    addi    r3, r3, DummyCommandBlock@l
    stw     r4, R13Off_m0x5928(r13)
    li      r0, 0xa
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r31)
    lwz     r12, 0x28(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x8034cae4
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, -0x3
    blrl
branch_0x8034cae4:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034cb00
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, 0x0
    blrl
branch_0x8034cb00:
    bl      stateReady
    li      r4, 0x1
branch_0x8034cb08:
    cmpwi   r4, 0x0
    bne-    branch_0x8034cb20
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, 0x6
    stw     r0, 0xc(r3)
    bl      stateMotorStopped
branch_0x8034cb20:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl cbForStateCheckID2
cbForStateCheckID2: # 0x8034cb34
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8034cb70
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034cbc8

branch_0x8034cb70:
    clrlwi. r0, r3, 31
    beq-    branch_0x8034cbbc
    lis     r3, stateReadingFST@ha
    lwz     r7, R13Off_m0x5940(r13)
    addi    r0, r3, stateReadingFST@l
    li      r4, 0x0
    stw     r0, R13Off_m0x5904(r13)
    lis     r3, tmpBuffer@h
    addi    r5, r3, tmpBuffer@l
    stw     r4, R13Off_m0x5914(r13)
    lis     r3, cbForStateReadingFST@ha
    lwz     r4, 0x8(r5)
    addi    r6, r3, cbForStateReadingFST@l
    lwz     r3, 0x38(r7)
    addi    r0, r4, 0x1f
    lwz     r5, 0x4(r5)
    clrrwi  r4, r0, 5
    bl      DVDLowRead
    b       branch_0x8034cbc8

branch_0x8034cbbc:
    lis     r3, cbForStateGettingError@ha
    addi    r3, r3, cbForStateGettingError@l
    bl      DVDLowRequestError
branch_0x8034cbc8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateCheckID3
cbForStateCheckID3: # 0x8034cbd8
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bne-    branch_0x8034cc18
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034ccc0

branch_0x8034cc18:
    clrlwi. r0, r3, 31
    beq-    branch_0x8034ccb4
    li      r4, 0x0
    stw     r4, R13Off_m0x5914(r13)
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034cc94
    stw     r4, R13Off_m0x5920(r13)
    lis     r3, DummyCommandBlock@h
    lwz     r31, R13Off_m0x5948(r13)
    addi    r3, r3, DummyCommandBlock@l
    stw     r4, R13Off_m0x5928(r13)
    li      r0, 0xa
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r31)
    lwz     r12, 0x28(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x8034cc70
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, -0x3
    blrl
branch_0x8034cc70:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034cc8c
    mtlr    r12
    addi    r4, r31, 0x0
    li      r3, 0x0
    blrl
branch_0x8034cc8c:
    bl      stateReady
    li      r4, 0x1
branch_0x8034cc94:
    cmpwi   r4, 0x0
    bne-    branch_0x8034ccc0
    lwz     r3, R13Off_m0x5948(r13)
    li      r0, 0x1
    stw     r0, 0xc(r3)
    lwz     r3, R13Off_m0x5948(r13)
    bl      stateBusy
    b       branch_0x8034ccc0

branch_0x8034ccb4:
    lis     r3, cbForStateGettingError@ha
    addi    r3, r3, cbForStateGettingError@l
    bl      DVDLowRequestError
branch_0x8034ccc0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl AlarmHandler_8034ccd4
AlarmHandler_8034ccd4: # 0x8034ccd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      DVDReset
    lis     r3, tmpBuffer@h
    addi    r3, r3, tmpBuffer@l
    li      r4, 0x20
    bl      DCInvalidateRange
    lis     r4, stateCoverClosed_CMD@ha
    lwz     r3, R13Off_m0x5948(r13)
    addi    r0, r4, stateCoverClosed_CMD@l
    stw     r0, R13Off_m0x5904(r13)
    bl      stateCoverClosed_CMD
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stateCoverClosed
stateCoverClosed: # 0x8034cd18
    mflr    r0
    lis     r3, tmpBuffer@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, tmpBuffer@l
    lwz     r0, R13Off_m0x592c(r13)
    cmpwi   r0, 0xd
    beq-    branch_0x8034cd60
    bge-    branch_0x8034cd54
    cmpwi   r0, 0x6
    bge-    branch_0x8034cd90
    cmpwi   r0, 0x4
    bge-    branch_0x8034cd60
    b       branch_0x8034cd90

branch_0x8034cd54:
    cmpwi   r0, 0xf
    beq-    branch_0x8034cd60
    b       branch_0x8034cd90

branch_0x8034cd60:
    bl      __DVDClearWaitingQueue
    lwz     r4, R13Off_m0x5948(r13)
    addi    r0, r31, 0x80
    stw     r0, R13Off_m0x5948(r13)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034cd88
    mtlr    r12
    li      r3, -0x4
    blrl
branch_0x8034cd88:
    bl      stateReady
    b       branch_0x8034cdd0

branch_0x8034cd90:
    bl      DVDReset
    addi    r3, r31, 0xb0
    bl      OSCreateAlarm
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r4, unk_10624dd3@h
    lis     r3, AlarmHandler_8034ccd4@ha
    srwi    r0, r0, 2
    addi    r4, r4, unk_10624dd3@l
    mulhwu  r0, r4, r0
    srwi    r0, r0, 6
    mulli   r6, r0, 0x47e
    addi    r7, r3, AlarmHandler_8034ccd4@l
    addi    r3, r31, 0xb0
    li      r5, 0x0
    bl      OSSetAlarm
branch_0x8034cdd0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl stateCoverClosed_CMD
stateCoverClosed_CMD: # 0x8034cde4
    mflr    r0
    lis     r3, tmpBuffer@h
    stw     r0, 0x4(sp)
    lis     r4, cbForStateCoverClosed@ha
    addi    r3, r3, tmpBuffer@l
    stwu    sp, -0x8(sp)
    addi    r4, r4, cbForStateCoverClosed@l
    bl      DVDLowReadDiskID
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateCoverClosed
cbForStateCoverClosed: # 0x8034ce14
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8034ce50
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034ce74

branch_0x8034ce50:
    clrlwi. r0, r3, 31
    beq-    branch_0x8034ce68
    li      r0, 0x0
    stw     r0, R13Off_m0x5914(r13)
    bl      stateCheckID
    b       branch_0x8034ce74

branch_0x8034ce68:
    lis     r3, cbForStateGettingError@ha
    addi    r3, r3, cbForStateGettingError@l
    bl      DVDLowRequestError
branch_0x8034ce74:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stateMotorStopped
stateMotorStopped: # 0x8034ce84
    mflr    r0
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, cbForStateMotorStopped@l
    stwu    sp, -0x8(sp)
    bl      DVDLowWaitCoverClose
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateMotorStopped
cbForStateMotorStopped: # 0x8034ceac
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(sp)
    li      r0, 0x0
    lis     r4, tmpBuffer@h
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, tmpBuffer@l
    stw     r0, 0x6004(r3)
    li      r0, 0x3
    lwz     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r3)
    lwz     r0, R13Off_m0x592c(r13)
    cmpwi   r0, 0xd
    beq-    branch_0x8034cf0c
    bge-    branch_0x8034cf00
    cmpwi   r0, 0x6
    bge-    branch_0x8034cf3c
    cmpwi   r0, 0x4
    bge-    branch_0x8034cf0c
    b       branch_0x8034cf3c

branch_0x8034cf00:
    cmpwi   r0, 0xf
    beq-    branch_0x8034cf0c
    b       branch_0x8034cf3c

branch_0x8034cf0c:
    bl      __DVDClearWaitingQueue
    lwz     r4, R13Off_m0x5948(r13)
    addi    r0, r31, 0x80
    stw     r0, R13Off_m0x5948(r13)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034cf34
    mtlr    r12
    li      r3, -0x4
    blrl
branch_0x8034cf34:
    bl      stateReady
    b       branch_0x8034cf7c

branch_0x8034cf3c:
    bl      DVDReset
    addi    r3, r31, 0xb0
    bl      OSCreateAlarm
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r4, unk_10624dd3@h
    lis     r3, AlarmHandler_8034ccd4@ha
    srwi    r0, r0, 2
    addi    r4, r4, unk_10624dd3@l
    mulhwu  r0, r4, r0
    srwi    r0, r0, 6
    mulli   r6, r0, 0x47e
    addi    r7, r3, AlarmHandler_8034ccd4@l
    addi    r3, r31, 0xb0
    li      r5, 0x0
    bl      OSSetAlarm
branch_0x8034cf7c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stateReady
stateReady: # 0x8034cf90
    mflr    r0
    lis     r3, tmpBuffer@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, tmpBuffer@l
    bl      __DVDCheckWaitingQueue
    cmpwi   r3, 0x0
    bne-    branch_0x8034cfc0
    li      r0, 0x0
    stw     r0, R13Off_m0x5948(r13)
    b       branch_0x8034d1c4

branch_0x8034cfc0:
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034cfe0
    li      r3, 0x1
    li      r0, 0x0
    stw     r3, R13Off_m0x5938(r13)
    stw     r0, R13Off_m0x5948(r13)
    b       branch_0x8034d1c4

branch_0x8034cfe0:
    bl      __DVDPopWaitingQueue
    lwz     r0, R13Off_m0x5930(r13)
    stw     r3, R13Off_m0x5948(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034d02c
    lwz     r3, R13Off_m0x5948(r13)
    li      r4, -0x1
    addi    r0, r31, 0x80
    stw     r4, 0xc(r3)
    lwz     r4, R13Off_m0x5948(r13)
    stw     r0, R13Off_m0x5948(r13)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d024
    mtlr    r12
    li      r3, -0x1
    blrl
branch_0x8034d024:
    bl      stateReady
    b       branch_0x8034d1c4

branch_0x8034d02c:
    lwz     r4, R13Off_m0x5948(r13)
    lwz     r0, 0x8(r4)
    stw     r0, R13Off_m0x592c(r13)
    lwz     r0, R13Off_m0x5920(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034d1b4
    lwz     r0, R13Off_m0x5920(r13)
    cmplwi  r0, 0x7
    bgt-    branch_0x8034d1a8
    lis     r3, unk_803e862c@ha
    addi    r3, r3, unk_803e862c@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8034d068:
    li      r0, 0x6
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0xc(r4)
    addi    r3, r3, cbForStateMotorStopped@l
    bl      DVDLowWaitCoverClose
    b       branch_0x8034d1a8

branch_0x8034d080:
    li      r0, 0xb
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0xc(r4)
    addi    r3, r3, cbForStateMotorStopped@l
    bl      DVDLowWaitCoverClose
    b       branch_0x8034d1a8

branch_0x8034d098:
    li      r0, 0x4
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0xc(r4)
    addi    r3, r3, cbForStateMotorStopped@l
    bl      DVDLowWaitCoverClose
    b       branch_0x8034d1a8

branch_0x8034d0b0:
    li      r0, 0x7
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0xc(r4)
    addi    r3, r3, cbForStateMotorStopped@l
    bl      DVDLowWaitCoverClose
    b       branch_0x8034d1a8

branch_0x8034d0c8:
    li      r0, 0x5
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0xc(r4)
    addi    r3, r3, cbForStateMotorStopped@l
    bl      DVDLowWaitCoverClose
    b       branch_0x8034d1a8

branch_0x8034d0e0:
    li      r0, 0x3
    stw     r0, 0xc(r4)
    lwz     r0, R13Off_m0x592c(r13)
    cmpwi   r0, 0xd
    beq-    branch_0x8034d118
    bge-    branch_0x8034d10c
    cmpwi   r0, 0x6
    bge-    branch_0x8034d148
    cmpwi   r0, 0x4
    bge-    branch_0x8034d118
    b       branch_0x8034d148

branch_0x8034d10c:
    cmpwi   r0, 0xf
    beq-    branch_0x8034d118
    b       branch_0x8034d148

branch_0x8034d118:
    bl      __DVDClearWaitingQueue
    lwz     r4, R13Off_m0x5948(r13)
    addi    r0, r31, 0x80
    stw     r0, R13Off_m0x5948(r13)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d140
    mtlr    r12
    li      r3, -0x4
    blrl
branch_0x8034d140:
    bl      stateReady
    b       branch_0x8034d1a8

branch_0x8034d148:
    bl      DVDReset
    addi    r3, r31, 0xb0
    bl      OSCreateAlarm
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r4, unk_10624dd3@h
    lis     r3, AlarmHandler_8034ccd4@ha
    srwi    r0, r0, 2
    addi    r4, r4, unk_10624dd3@l
    mulhwu  r0, r4, r0
    srwi    r0, r0, 6
    mulli   r6, r0, 0x47e
    addi    r7, r3, AlarmHandler_8034ccd4@l
    addi    r3, r31, 0xb0
    li      r5, 0x0
    bl      OSSetAlarm
    b       branch_0x8034d1a8

branch_0x8034d18c:
    li      r0, -0x1
    stw     r0, 0xc(r4)
    lwz     r3, R13Off_m0x591c(r13)
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
branch_0x8034d1a8:
    li      r0, 0x0
    stw     r0, R13Off_m0x5920(r13)
    b       branch_0x8034d1c4

branch_0x8034d1b4:
    li      r0, 0x1
    stw     r0, 0xc(r4)
    lwz     r3, R13Off_m0x5948(r13)
    bl      stateBusy
branch_0x8034d1c4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl stateBusy
stateBusy: # 0x8034d1d8
    mflr    r0
    lis     r4, stateBusy@ha
    stw     r0, 0x4(sp)
    addi    r0, r4, stateBusy@l
    mr      r7, r3
    stwu    sp, -0x8(sp)
    stw     r0, R13Off_m0x5904(r13)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0xf
    bgt-    branch_0x8034d488
    lis     r3, unk_803e864c@ha
    addi    r3, r3, unk_803e864c@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8034d218:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r5, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r5)
    li      r0, 0x20
    addi    r4, r3, cbForStateBusy@l
    stw     r0, 0x1c(r7)
    lwz     r3, 0x18(r7)
    bl      DVDLowReadDiskID
    b       branch_0x8034d488

branch_0x8034d244:
    lis     r3, unk_cc006000@h
    addi    r3, r3, unk_cc006000@l
    lwz     r0, 0x4(r3)
    lis     r4, 0x8
    stw     r0, 0x4(r3)
    lwz     r3, 0x20(r7)
    lwz     r0, 0x14(r7)
    subf    r0, r3, r0
    cmplw   r0, r4
    ble-    branch_0x8034d270
    b       branch_0x8034d274

branch_0x8034d270:
    mr      r4, r0
branch_0x8034d274:
    stw     r4, 0x1c(r7)
    lis     r3, cbForStateBusy@ha
    addi    r6, r3, cbForStateBusy@l
    lwz     r5, 0x20(r7)
    lwz     r3, 0x18(r7)
    lwz     r0, 0x10(r7)
    add     r3, r3, r5
    lwz     r4, 0x1c(r7)
    add     r5, r0, r5
    bl      DVDLowRead
    b       branch_0x8034d488

branch_0x8034d2a0:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r5, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r5)
    addi    r4, r3, cbForStateBusy@l
    lwz     r3, 0x10(r7)
    bl      DVDLowSeek
    b       branch_0x8034d488

branch_0x8034d2c4:
    lis     r3, cbForStateBusy@ha
    addi    r3, r3, cbForStateBusy@l
    bl      DVDLowStopMotor
    b       branch_0x8034d488

branch_0x8034d2d4:
    lis     r3, cbForStateBusy@ha
    addi    r3, r3, cbForStateBusy@l
    bl      DVDLowStopMotor
    b       branch_0x8034d488

branch_0x8034d2e4:
    lis     r3, unk_cc006000@h
    addi    r3, r3, unk_cc006000@l
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r3)
    lwz     r0, R13Off_m0x5934(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034d320
    lwz     r5, R13Off_m0x5948(r13)
    li      r0, 0x0
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x1c(r5)
    addi    r4, r3, cbForStateBusy@l
    li      r3, 0x0
    bl      DVDLowRequestAudioStatus
    b       branch_0x8034d488

branch_0x8034d320:
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, 0x1
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x1c(r4)
    addi    r6, r3, cbForStateBusy@l
    li      r3, 0x0
    lwz     r4, 0x14(r7)
    lwz     r5, 0x10(r7)
    bl      DVDLowAudioStream
    b       branch_0x8034d488

branch_0x8034d348:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r4, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r4)
    addi    r6, r3, cbForStateBusy@l
    lis     r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      DVDLowAudioStream
    b       branch_0x8034d488

branch_0x8034d374:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r4, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r4)
    li      r0, 0x1
    addi    r6, r3, cbForStateBusy@l
    stw     r0, R13Off_m0x5934(r13)
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      DVDLowAudioStream
    b       branch_0x8034d488

branch_0x8034d3a8:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r5, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r5)
    addi    r4, r3, cbForStateBusy@l
    li      r3, 0x0
    bl      DVDLowRequestAudioStatus
    b       branch_0x8034d488

branch_0x8034d3cc:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r5, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r5)
    addi    r4, r3, cbForStateBusy@l
    lis     r3, 0x1
    bl      DVDLowRequestAudioStatus
    b       branch_0x8034d488

branch_0x8034d3f0:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r5, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r5)
    addi    r4, r3, cbForStateBusy@l
    lis     r3, 0x2
    bl      DVDLowRequestAudioStatus
    b       branch_0x8034d488

branch_0x8034d414:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r5, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r5)
    addi    r4, r3, cbForStateBusy@l
    lis     r3, 0x3
    bl      DVDLowRequestAudioStatus
    b       branch_0x8034d488

branch_0x8034d438:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r4, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r4)
    addi    r5, r3, cbForStateBusy@l
    lwz     r3, 0x10(r7)
    lwz     r4, 0x14(r7)
    bl      DVDLowAudioBufferConfig
    b       branch_0x8034d488

branch_0x8034d460:
    lis     r3, unk_cc006000@h
    lwz     r0, 0x6004(r3)
    addi    r5, r3, unk_cc006000@l
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x4(r5)
    li      r0, 0x20
    addi    r4, r3, cbForStateBusy@l
    stw     r0, 0x1c(r7)
    lwz     r3, 0x18(r7)
    bl      DVDLowInquiry
branch_0x8034d488:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl cbForStateBusy
cbForStateBusy: # 0x8034d498
    mflr    r0
    cmplwi  r3, 0x10
    stw     r0, 0x4(sp)
    lis     r4, tmpBuffer@h
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, tmpBuffer@l
    stw     r30, 0x10(sp)
    bne-    branch_0x8034d4e4
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234568@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234568@l
    bl      __DVDStoreErrorCode
    bl      DVDReset
    li      r3, 0x0
    bl      cbForStateError
    b       branch_0x8034da54

branch_0x8034d4e4:
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x3
    beq-    branch_0x8034d4fc
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xf
    bne-    branch_0x8034d5e4
branch_0x8034d4fc:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8034d52c
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234567@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234567@l
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
    b       branch_0x8034da54

branch_0x8034d52c:
    li      r0, 0x0
    stw     r0, R13Off_m0x5914(r13)
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xf
    bne-    branch_0x8034d548
    li      r0, 0x1
    stw     r0, R13Off_m0x5910(r13)
branch_0x8034d548:
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034d5bc
    li      r0, 0x7
    lwz     r30, R13Off_m0x5948(r13)
    stw     r0, R13Off_m0x5920(r13)
    addi    r3, r31, 0x80
    li      r0, 0x0
    stw     r0, R13Off_m0x5928(r13)
    li      r0, 0xa
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r30)
    lwz     r12, 0x28(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d594
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, -0x3
    blrl
branch_0x8034d594:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d5b0
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, 0x0
    blrl
branch_0x8034d5b0:
    bl      stateReady
    li      r0, 0x1
    b       branch_0x8034d5c0

branch_0x8034d5bc:
    li      r0, 0x0
branch_0x8034d5c0:
    cmpwi   r0, 0x0
    bne-    branch_0x8034da54
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, 0x7
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0xc(r4)
    addi    r3, r3, cbForStateMotorStopped@l
    bl      DVDLowWaitCoverClose
    b       branch_0x8034da54

branch_0x8034d5e4:
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x1
    beq-    branch_0x8034d614
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x4
    beq-    branch_0x8034d614
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x5
    beq-    branch_0x8034d614
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xe
    bne-    branch_0x8034d638
branch_0x8034d614:
    lwz     r6, R13Off_m0x5948(r13)
    lis     r4, unk_cc006000@h
    addi    r4, r4, unk_cc006000@l
    lwz     r4, 0x18(r4)
    lwz     r0, 0x1c(r6)
    lwz     r5, 0x20(r6)
    subf    r0, r4, r0
    add     r0, r5, r0
    stw     r0, 0x20(r6)
branch_0x8034d638:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8034d69c
    lwz     r30, R13Off_m0x5948(r13)
    addi    r3, r31, 0x80
    li      r0, 0x0
    stw     r0, R13Off_m0x5928(r13)
    li      r0, 0xa
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r30)
    lwz     r12, 0x28(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d678
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, -0x3
    blrl
branch_0x8034d678:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d694
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, 0x0
    blrl
branch_0x8034d694:
    bl      stateReady
    b       branch_0x8034da54

branch_0x8034d69c:
    clrlwi. r0, r3, 31
    beq-    branch_0x8034d924
    li      r4, 0x0
    stw     r4, R13Off_m0x5914(r13)
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034d714
    stw     r4, R13Off_m0x5920(r13)
    addi    r3, r31, 0x80
    lwz     r30, R13Off_m0x5948(r13)
    li      r0, 0xa
    stw     r4, R13Off_m0x5928(r13)
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r30)
    lwz     r12, 0x28(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d6f0
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, -0x3
    blrl
branch_0x8034d6f0:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d70c
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, 0x0
    blrl
branch_0x8034d70c:
    bl      stateReady
    li      r4, 0x1
branch_0x8034d714:
    cmpwi   r4, 0x0
    bne-    branch_0x8034da54
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x1
    beq-    branch_0x8034d74c
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x4
    beq-    branch_0x8034d74c
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x5
    beq-    branch_0x8034d74c
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xe
    bne-    branch_0x8034d79c
branch_0x8034d74c:
    lwz     r3, R13Off_m0x5948(r13)
    lwz     r4, 0x20(r3)
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8034d768
    bl      stateBusy
    b       branch_0x8034da54

branch_0x8034d768:
    addi    r0, r31, 0x80
    stw     r0, R13Off_m0x5948(r13)
    li      r0, 0x0
    addi    r4, r3, 0x0
    stw     r0, 0xc(r3)
    lwz     r12, 0x28(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d794
    lwz     r3, 0x20(r4)
    mtlr    r12
    blrl
branch_0x8034d794:
    bl      stateReady
    b       branch_0x8034da54

branch_0x8034d79c:
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x9
    beq-    branch_0x8034d7cc
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xa
    beq-    branch_0x8034d7cc
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xb
    beq-    branch_0x8034d7cc
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xc
    bne-    branch_0x8034d830
branch_0x8034d7cc:
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xb
    beq-    branch_0x8034d7e4
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xa
    bne-    branch_0x8034d7f4
branch_0x8034d7e4:
    lis     r3, 0xcc00
    lwz     r0, 0x6020(r3)
    slwi    r3, r0, 2
    b       branch_0x8034d800

branch_0x8034d7f4:
    lis     r3, unk_cc006000@h
    addi    r3, r3, unk_cc006000@l
    lwz     r3, 0x20(r3)
branch_0x8034d800:
    lwz     r4, R13Off_m0x5948(r13)
    addi    r5, r31, 0x80
    li      r0, 0x0
    stw     r5, R13Off_m0x5948(r13)
    stw     r0, 0xc(r4)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d828
    mtlr    r12
    blrl
branch_0x8034d828:
    bl      stateReady
    b       branch_0x8034da54

branch_0x8034d830:
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x6
    bne-    branch_0x8034d8f0
    lwz     r4, R13Off_m0x5948(r13)
    addi    r5, r4, 0x1c
    lwz     r0, 0x1c(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8034d8c0
    lis     r3, 0xcc00
    lwz     r0, 0x6020(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8034d890
    addi    r0, r31, 0x80
    stw     r0, R13Off_m0x5948(r13)
    li      r0, 0x9
    stw     r0, 0xc(r4)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d888
    mtlr    r12
    li      r3, -0x2
    blrl
branch_0x8034d888:
    bl      stateReady
    b       branch_0x8034da54

branch_0x8034d890:
    li      r0, 0x0
    stw     r0, R13Off_m0x5934(r13)
    li      r0, 0x1
    lis     r3, cbForStateBusy@ha
    stw     r0, 0x0(r5)
    addi    r6, r3, cbForStateBusy@l
    li      r3, 0x0
    lwz     r5, R13Off_m0x5948(r13)
    lwz     r4, 0x14(r5)
    lwz     r5, 0x10(r5)
    bl      DVDLowAudioStream
    b       branch_0x8034da54

branch_0x8034d8c0:
    addi    r0, r31, 0x80
    stw     r0, R13Off_m0x5948(r13)
    li      r0, 0x0
    stw     r0, 0xc(r4)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d8e8
    mtlr    r12
    li      r3, 0x0
    blrl
branch_0x8034d8e8:
    bl      stateReady
    b       branch_0x8034da54

branch_0x8034d8f0:
    lwz     r4, R13Off_m0x5948(r13)
    addi    r3, r31, 0x80
    li      r0, 0x0
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r4)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d91c
    mtlr    r12
    li      r3, 0x0
    blrl
branch_0x8034d91c:
    bl      stateReady
    b       branch_0x8034da54

branch_0x8034d924:
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xe
    bne-    branch_0x8034d958
    lwz     r4, R13Off_m0x5948(r13)
    li      r0, -0x1
    lis     r3, unk_01234567@h
    stw     r0, 0xc(r4)
    addi    r3, r3, unk_01234567@l
    bl      __DVDStoreErrorCode
    lis     r3, cbForStateError@ha
    addi    r3, r3, cbForStateError@l
    bl      DVDLowStopMotor
    b       branch_0x8034da54

branch_0x8034d958:
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x1
    beq-    branch_0x8034d988
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x4
    beq-    branch_0x8034d988
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0x5
    beq-    branch_0x8034d988
    lwz     r0, R13Off_m0x592c(r13)
    cmplwi  r0, 0xe
    bne-    branch_0x8034da48
branch_0x8034d988:
    lwz     r30, R13Off_m0x5948(r13)
    lwz     r3, 0x20(r30)
    lwz     r0, 0x14(r30)
    cmplw   r3, r0
    bne-    branch_0x8034da48
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034da08
    li      r4, 0x0
    stw     r4, R13Off_m0x5920(r13)
    addi    r3, r31, 0x80
    li      r0, 0xa
    stw     r4, R13Off_m0x5928(r13)
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r30)
    lwz     r12, 0x28(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d9e0
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, -0x3
    blrl
branch_0x8034d9e0:
    lwz     r12, R13Off_m0x5924(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8034d9fc
    mtlr    r12
    addi    r4, r30, 0x0
    li      r3, 0x0
    blrl
branch_0x8034d9fc:
    bl      stateReady
    li      r0, 0x1
    b       branch_0x8034da0c

branch_0x8034da08:
    li      r0, 0x0
branch_0x8034da0c:
    cmpwi   r0, 0x0
    bne-    branch_0x8034da54
    lwz     r4, R13Off_m0x5948(r13)
    addi    r3, r31, 0x80
    li      r0, 0x0
    stw     r3, R13Off_m0x5948(r13)
    stw     r0, 0xc(r4)
    lwz     r12, 0x28(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034da40
    lwz     r3, 0x20(r4)
    mtlr    r12
    blrl
branch_0x8034da40:
    bl      stateReady
    b       branch_0x8034da54

branch_0x8034da48:
    lis     r3, cbForStateGettingError@ha
    addi    r3, r3, cbForStateGettingError@l
    bl      DVDLowRequestError
branch_0x8034da54:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDReadAbsAsyncPrio
DVDReadAbsAsyncPrio: # 0x8034da6c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r8, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    stw     r0, 0x8(r3)
    li      r0, 0x0
    stw     r4, 0x18(r3)
    stw     r5, 0x14(r3)
    stw     r6, 0x10(r3)
    stw     r0, 0x20(r3)
    stw     r7, 0x28(r3)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034dae4
    lwz     r3, 0x8(r29)
    cmplwi  r3, 0x1
    beq-    branch_0x8034dad8
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034dad8
    cmplwi  r3, 0xe
    bne-    branch_0x8034dae4
branch_0x8034dad8:
    lwz     r3, 0x18(r29)
    lwz     r4, 0x14(r29)
    bl      DCInvalidateRange
branch_0x8034dae4:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r29)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034db20
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034db20
    bl      stateReady
branch_0x8034db20:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl DVDReadAbsAsyncForBS
DVDReadAbsAsyncForBS: # 0x8034db48
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x4
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    stw     r0, 0x8(r3)
    li      r0, 0x0
    stw     r4, 0x18(r3)
    stw     r5, 0x14(r3)
    stw     r6, 0x10(r3)
    stw     r0, 0x20(r3)
    stw     r7, 0x28(r3)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034dbb8
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq-    branch_0x8034dbac
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034dbac
    cmplwi  r3, 0xe
    bne-    branch_0x8034dbb8
branch_0x8034dbac:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
branch_0x8034dbb8:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x2
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034dbf4
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034dbf4
    bl      stateReady
branch_0x8034dbf4:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl DVDReadDiskID
DVDReadDiskID: # 0x8034dc18
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x5
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r0, 0x8(r3)
    li      r3, 0x20
    li      r0, 0x0
    stw     r4, 0x18(r31)
    stw     r3, 0x14(r31)
    stw     r0, 0x10(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x28(r31)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034dc8c
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq-    branch_0x8034dc80
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034dc80
    cmplwi  r3, 0xe
    bne-    branch_0x8034dc8c
branch_0x8034dc80:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
branch_0x8034dc8c:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x2
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034dcc8
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034dcc8
    bl      stateReady
branch_0x8034dcc8:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl DVDPrepareStreamAbsAsync
DVDPrepareStreamAbsAsync: # 0x8034dcec
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x6
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r0, 0x8(r3)
    stw     r4, 0x14(r3)
    stw     r5, 0x10(r3)
    stw     r6, 0x28(r3)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034dd50
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq-    branch_0x8034dd44
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034dd44
    cmplwi  r3, 0xe
    bne-    branch_0x8034dd50
branch_0x8034dd44:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
branch_0x8034dd50:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x1
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034dd8c
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034dd8c
    bl      stateReady
branch_0x8034dd8c:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl DVDCancelStreamAsync
DVDCancelStreamAsync: # 0x8034ddb0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x7
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    stw     r0, 0x8(r3)
    stw     r4, 0x28(r3)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034de0c
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq-    branch_0x8034de00
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034de00
    cmplwi  r3, 0xe
    bne-    branch_0x8034de0c
branch_0x8034de00:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
branch_0x8034de0c:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x1
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034de48
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034de48
    bl      stateReady
branch_0x8034de48:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDStopStreamAtEndAsync
DVDStopStreamAtEndAsync: # 0x8034de6c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x8
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    stw     r0, 0x8(r3)
    stw     r4, 0x28(r3)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034dec8
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq-    branch_0x8034debc
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034debc
    cmplwi  r3, 0xe
    bne-    branch_0x8034dec8
branch_0x8034debc:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
branch_0x8034dec8:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x1
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034df04
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034df04
    bl      stateReady
branch_0x8034df04:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDGetStreamPlayAddrAsync
DVDGetStreamPlayAddrAsync: # 0x8034df28
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0xa
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    stw     r0, 0x8(r3)
    stw     r4, 0x28(r3)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034df84
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq-    branch_0x8034df78
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034df78
    cmplwi  r3, 0xe
    bne-    branch_0x8034df84
branch_0x8034df78:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
branch_0x8034df84:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x1
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034dfc0
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034dfc0
    bl      stateReady
branch_0x8034dfc0:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDInquiryAsync
DVDInquiryAsync: # 0x8034dfe4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0xe
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r0, 0x8(r3)
    li      r3, 0x20
    li      r0, 0x0
    stw     r4, 0x18(r31)
    stw     r3, 0x14(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x28(r31)
    lwz     r0, R13Off_m0x7348(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034e054
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq-    branch_0x8034e048
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034e048
    cmplwi  r3, 0xe
    bne-    branch_0x8034e054
branch_0x8034e048:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
branch_0x8034e054:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x2
    bl      __DVDPushWaitingQueue
    lwz     r0, R13Off_m0x5948(r13)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8034e090
    lwz     r0, R13Off_m0x593c(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8034e090
    bl      stateReady
branch_0x8034e090:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl DVDReset
DVDReset: # 0x8034e0b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      DVDLowReset
    lis     r3, unk_cc006000@h
    li      r0, 0x2a
    stw     r0, 0x6000(r3)
    addi    r4, r3, unk_cc006000@l
    li      r0, 0x0
    lwz     r3, 0x6004(r3)
    stw     r3, 0x4(r4)
    stw     r0, R13Off_m0x5910(r13)
    stw     r0, R13Off_m0x5920(r13)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DVDGetCommandBlockStatus
DVDGetCommandBlockStatus: # 0x8034e0f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x8034e124
    li      r31, 0x1
    b       branch_0x8034e128

branch_0x8034e124:
    mr      r31, r0
branch_0x8034e128:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDGetDriveStatus
DVDGetDriveStatus: # 0x8034e144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    bl      OSDisableInterrupts
    lwz     r0, R13Off_m0x5930(r13)
    addi    r30, r3, 0x0
    cmpwi   r0, 0x0
    beq-    branch_0x8034e174
    li      r31, -0x1
    b       branch_0x8034e1cc

branch_0x8034e174:
    lwz     r0, R13Off_m0x5938(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034e188
    li      r31, 0x8
    b       branch_0x8034e1cc

branch_0x8034e188:
    lwz     r31, R13Off_m0x5948(r13)
    cmplwi  r31, 0x0
    bne-    branch_0x8034e19c
    li      r31, 0x0
    b       branch_0x8034e1cc

branch_0x8034e19c:
    lis     r3, DummyCommandBlock@h
    addi    r0, r3, DummyCommandBlock@l
    cmplw   r31, r0
    bne-    branch_0x8034e1b4
    li      r31, 0x0
    b       branch_0x8034e1cc

branch_0x8034e1b4:
    bl      OSDisableInterrupts
    lwz     r31, 0xc(r31)
    cmpwi   r31, 0x3
    bne-    branch_0x8034e1c8
    li      r31, 0x1
branch_0x8034e1c8:
    bl      OSRestoreInterrupts
branch_0x8034e1cc:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DVDSetAutoInvalidation
DVDSetAutoInvalidation: # 0x8034e1f0
    lwz     r0, R13Off_m0x7348(r13)
    stw     r3, R13Off_m0x7348(r13)
    mr      r3, r0
    blr


.globl DVDCancelAsync
DVDCancelAsync: # 0x8034e200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r4, 0xc(r29)
    addi    r31, r3, 0x0
    addi    r0, r4, 0x1
    cmplwi  r0, 0xc
    bgt-    branch_0x8034e448
    lis     r3, unk_803e868c@ha
    addi    r3, r3, unk_803e868c@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8034e250:
    cmplwi  r30, 0x0
    beq-    branch_0x8034e448
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r4, r29, 0x0
    li      r3, 0x0
    blrl
    b       branch_0x8034e448

branch_0x8034e270:
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034e28c
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8034e454

branch_0x8034e28c:
    li      r0, 0x1
    stw     r30, R13Off_m0x5924(r13)
    stw     r0, R13Off_m0x5928(r13)
    lwz     r0, 0x8(r29)
    cmplwi  r0, 0x4
    beq-    branch_0x8034e2ac
    cmplwi  r0, 0x1
    bne-    branch_0x8034e448
branch_0x8034e2ac:
    bl      DVDLowBreak
    b       branch_0x8034e448

branch_0x8034e2b4:
    mr      r3, r29
    bl      __DVDDequeueWaitingQueue
    li      r0, 0xa
    stw     r0, 0xc(r29)
    lwz     r12, 0x28(r29)
    cmplwi  r12, 0x0
    beq-    branch_0x8034e2e0
    mtlr    r12
    addi    r4, r29, 0x0
    li      r3, -0x3
    blrl
branch_0x8034e2e0:
    cmplwi  r30, 0x0
    beq-    branch_0x8034e448
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r4, r29, 0x0
    li      r3, 0x0
    blrl
    b       branch_0x8034e448

branch_0x8034e300:
    lwz     r0, 0x8(r29)
    cmpwi   r0, 0xd
    beq-    branch_0x8034e330
    bge-    branch_0x8034e324
    cmpwi   r0, 0x6
    bge-    branch_0x8034e350
    cmpwi   r0, 0x4
    bge-    branch_0x8034e330
    b       branch_0x8034e350

branch_0x8034e324:
    cmpwi   r0, 0xf
    beq-    branch_0x8034e330
    b       branch_0x8034e350

branch_0x8034e330:
    cmplwi  r30, 0x0
    beq-    branch_0x8034e448
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r4, r29, 0x0
    li      r3, 0x0
    blrl
    b       branch_0x8034e448

branch_0x8034e350:
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034e36c
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8034e454

branch_0x8034e36c:
    li      r0, 0x1
    stw     r30, R13Off_m0x5924(r13)
    stw     r0, R13Off_m0x5928(r13)
    b       branch_0x8034e448

branch_0x8034e37c:
    bl      DVDLowClearCallback
    lis     r4, cbForStateMotorStopped@ha
    addi    r0, r4, cbForStateMotorStopped@l
    cmplw   r3, r0
    beq-    branch_0x8034e3a0
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8034e454

branch_0x8034e3a0:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x4
    bne-    branch_0x8034e3b4
    li      r0, 0x3
    stw     r0, R13Off_m0x5920(r13)
branch_0x8034e3b4:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x5
    bne-    branch_0x8034e3c8
    li      r0, 0x4
    stw     r0, R13Off_m0x5920(r13)
branch_0x8034e3c8:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x6
    bne-    branch_0x8034e3dc
    li      r0, 0x1
    stw     r0, R13Off_m0x5920(r13)
branch_0x8034e3dc:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0xb
    bne-    branch_0x8034e3f0
    li      r0, 0x2
    stw     r0, R13Off_m0x5920(r13)
branch_0x8034e3f0:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x7
    bne-    branch_0x8034e404
    li      r0, 0x7
    stw     r0, R13Off_m0x5920(r13)
branch_0x8034e404:
    li      r0, 0xa
    stw     r0, 0xc(r29)
    lwz     r12, 0x28(r29)
    cmplwi  r12, 0x0
    beq-    branch_0x8034e428
    mtlr    r12
    addi    r4, r29, 0x0
    li      r3, -0x3
    blrl
branch_0x8034e428:
    cmplwi  r30, 0x0
    beq-    branch_0x8034e444
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r4, r29, 0x0
    li      r3, 0x0
    blrl
branch_0x8034e444:
    bl      stateReady
branch_0x8034e448:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x8034e454:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDCancel
DVDCancel: # 0x8034e470
    mflr    r0
    lis     r4, cbForCancelSync@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, cbForCancelSync@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      DVDCancelAsync
    cmpwi   r3, 0x0
    bne-    branch_0x8034e4a4
    li      r3, -0x1
    b       branch_0x8034e504

branch_0x8034e4a4:
    bl      OSDisableInterrupts
    mr      r31, r3
branch_0x8034e4ac:
    lwz     r3, 0xc(r30)
    addi    r0, r3, 0x1
    cmplwi  r0, 0x1
    ble-    branch_0x8034e4f8
    cmpwi   r3, 0xa
    beq-    branch_0x8034e4f8
    cmpwi   r3, 0x3
    bne-    branch_0x8034e4ec
    lwz     r3, 0x8(r30)
    addi    r0, r3, -0x4
    cmplwi  r0, 0x1
    ble-    branch_0x8034e4f8
    cmplwi  r3, 0xd
    beq-    branch_0x8034e4f8
    cmplwi  r3, 0xf
    beq-    branch_0x8034e4f8
branch_0x8034e4ec:
    addi    r3, r13, R13Off_m0x5950
    bl      OSSleepThread
    b       branch_0x8034e4ac

branch_0x8034e4f8:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x8034e504:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl cbForCancelSync
cbForCancelSync: # 0x8034e51c
    mflr    r0
    addi    r3, r13, R13Off_m0x5950
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSWakeupThread
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DVDGetCurrentDiskID
DVDGetCurrentDiskID: # 0x8034e540
    lis     r3, 0x8000
    blr


.globl DVDCheckDisk
DVDCheckDisk: # 0x8034e548
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    lwz     r0, R13Off_m0x5930(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034e570
    li      r4, -0x1
    b       branch_0x8034e5b4

branch_0x8034e570:
    lwz     r0, R13Off_m0x5938(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034e584
    li      r4, 0x8
    b       branch_0x8034e5b4

branch_0x8034e584:
    lwz     r5, R13Off_m0x5948(r13)
    cmplwi  r5, 0x0
    bne-    branch_0x8034e598
    li      r4, 0x0
    b       branch_0x8034e5b4

branch_0x8034e598:
    lis     r4, DummyCommandBlock@h
    addi    r0, r4, DummyCommandBlock@l
    cmplw   r5, r0
    bne-    branch_0x8034e5b0
    li      r4, 0x0
    b       branch_0x8034e5b4

branch_0x8034e5b0:
    lwz     r4, 0xc(r5)
branch_0x8034e5b4:
    addi    r0, r4, 0x1
    cmplwi  r0, 0xc
    bgt-    branch_0x8034e610
    lis     r4, unk_803e86c0@ha
    addi    r4, r4, unk_803e86c0@l
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
branch_0x8034e5d8:
    li      r31, 0x1
    b       branch_0x8034e610

branch_0x8034e5e0:
    li      r31, 0x0
    b       branch_0x8034e610

branch_0x8034e5e8:
    lis     r4, unk_cc006000@h
    addi    r4, r4, unk_cc006000@l
    lwz     r4, 0x4(r4)
    extrwi. r0, r4, 1, 29
    bne-    branch_0x8034e604
    clrlwi. r0, r4, 31
    beq-    branch_0x8034e60c
branch_0x8034e604:
    li      r31, 0x0
    b       branch_0x8034e610

branch_0x8034e60c:
    li      r31, 0x1
branch_0x8034e610:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __DVDPrepareResetAsync
__DVDPrepareResetAsync: # 0x8034e62c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    bl      OSDisableInterrupts
    mr      r29, r3
    bl      __DVDClearWaitingQueue
    lwz     r0, R13Off_m0x5928(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8034e668
    stw     r30, R13Off_m0x5924(r13)
    b       branch_0x8034e724

branch_0x8034e668:
    lwz     r3, R13Off_m0x5948(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8034e67c
    li      r0, 0x0
    stw     r0, 0x28(r3)
branch_0x8034e67c:
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      OSDisableInterrupts
    lwz     r0, R13Off_m0x5948(r13)
    li      r4, 0x1
    stw     r4, R13Off_m0x593c(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8034e6a0
    stw     r4, R13Off_m0x5938(r13)
branch_0x8034e6a0:
    bl      OSRestoreInterrupts
    b       branch_0x8034e6b0

branch_0x8034e6a8:
    li      r4, 0x0
    bl      DVDCancelAsync
branch_0x8034e6b0:
    bl      __DVDPopWaitingQueue
    cmplwi  r3, 0x0
    bne+    branch_0x8034e6a8
    lwz     r3, R13Off_m0x5948(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8034e6d4
    mr      r4, r30
    bl      DVDCancelAsync
    b       branch_0x8034e6f0

branch_0x8034e6d4:
    cmplwi  r30, 0x0
    beq-    branch_0x8034e6f0
    addi    r12, r30, 0x0
    mtlr    r12
    li      r3, 0x0
    li      r4, 0x0
    blrl
branch_0x8034e6f0:
    bl      OSDisableInterrupts
    li      r4, 0x0
    stw     r4, R13Off_m0x593c(r13)
    mr      r30, r3
    lwz     r0, R13Off_m0x5938(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8034e714
    stw     r4, R13Off_m0x5938(r13)
    bl      stateReady
branch_0x8034e714:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    bl      OSRestoreInterrupts
branch_0x8034e724:
    mr      r3, r29
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

