
.globl InitializeUART
InitializeUART: # 0x8036b3cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x574c(r13)
    addis   r0, r3, 0x5a01
    cmplwi  r0, 0x5a
    bne-    branch_0x8036b3f0
    li      r3, 0x0
    b       branch_0x8036b42c

branch_0x8036b3f0:
    bl      OSGetConsoleType
    rlwinm. r0, r3, 0, 3, 3
    bne-    branch_0x8036b40c
    li      r0, 0x0
    stw     r0, R13Off_m0x5750(r13)
    li      r3, 0x2
    b       branch_0x8036b42c

branch_0x8036b40c:
    lis     r3, unk_a5ff005a@h
    addi    r0, r3, unk_a5ff005a@l
    li      r3, 0x0
    stw     r0, R13Off_m0x5750(r13)
    li      r0, 0x1
    stw     r3, R13Off_m0x5758(r13)
    li      r3, 0x0
    stw     r0, R13Off_m0x5754(r13)
branch_0x8036b42c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl ReadUARTN
ReadUARTN: # 0x8036b43c
    li      r3, 0x4
    blr


.globl WriteUARTN
WriteUARTN: # 0x8036b444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    lwz     r5, R13Off_m0x5750(r13)
    addis   r0, r5, 0x5a01
    cmplwi  r0, 0x5a
    beq-    branch_0x8036b474
    li      r3, 0x2
    b       branch_0x8036b630

branch_0x8036b474:
    lwz     r3, R13Off_m0x5758(r13)
    li      r5, 0x0
    lwz     r4, R13Off_m0x5754(r13)
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x8036b494
    li      r3, 0x0
    b       branch_0x8036b630

branch_0x8036b494:
    addi    r4, r30, 0x0
    li      r3, 0xd
    b       branch_0x8036b4b4

branch_0x8036b4a0:
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0xa
    bne-    branch_0x8036b4b0
    stb     r3, 0x0(r4)
branch_0x8036b4b0:
    addi    r4, r4, 0x1
branch_0x8036b4b4:
    subf    r0, r30, r4
    cmplw   r0, r31
    blt+    branch_0x8036b4a0
    lis     r0, unk_a0010000@h
    stw     r0, 0x14(sp)
    addi    r26, r0, unk_a0010000@l
    lis     r29, 0x2001
    b       branch_0x8036b61c

branch_0x8036b4d4:
    lwz     r3, R13Off_m0x5758(r13)
    li      r5, 0x3
    lwz     r4, R13Off_m0x5754(r13)
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x8036b4f4
    li      r0, -0x1
    b       branch_0x8036b54c

branch_0x8036b4f4:
    stw     r29, 0x10(sp)
    addi    r4, sp, 0x10
    lwz     r3, R13Off_m0x5758(r13)
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    lwz     r3, R13Off_m0x5758(r13)
    bl      EXISync
    lwz     r3, R13Off_m0x5758(r13)
    addi    r4, sp, 0x10
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x0
    bl      EXIImm
    lwz     r3, R13Off_m0x5758(r13)
    bl      EXISync
    lwz     r3, R13Off_m0x5758(r13)
    bl      EXIDeselect
    lwz     r0, 0x10(sp)
    srwi    r0, r0, 24
    subfic  r0, r0, 0x10
branch_0x8036b54c:
    cmpwi   r0, 0x0
    mr      r27, r0
    bge-    branch_0x8036b560
    li      r26, 0x3
    b       branch_0x8036b624

branch_0x8036b560:
    cmpwi   r0, 0xc
    bge-    branch_0x8036b570
    cmplw   r0, r31
    blt-    branch_0x8036b61c
branch_0x8036b570:
    lwz     r3, R13Off_m0x5758(r13)
    li      r5, 0x3
    lwz     r4, R13Off_m0x5754(r13)
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x8036b590
    li      r26, 0x3
    b       branch_0x8036b624

branch_0x8036b590:
    lwz     r3, R13Off_m0x5758(r13)
    addi    r4, sp, 0x14
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    lwz     r3, R13Off_m0x5758(r13)
    bl      EXISync
    b       branch_0x8036b604

branch_0x8036b5b4:
    cmpwi   r27, 0x4
    bge-    branch_0x8036b5c4
    cmplw   r27, r31
    blt-    branch_0x8036b614
branch_0x8036b5c4:
    cmplwi  r31, 0x4
    bge-    branch_0x8036b5d4
    mr      r28, r31
    b       branch_0x8036b5d8

branch_0x8036b5d4:
    li      r28, 0x4
branch_0x8036b5d8:
    lwz     r3, R13Off_m0x5758(r13)
    mr      r5, r28
    addi    r4, r30, 0x0
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    lwz     r3, R13Off_m0x5758(r13)
    add     r30, r30, r28
    subf    r31, r28, r31
    subf    r27, r28, r27
    bl      EXISync
branch_0x8036b604:
    cmpwi   r27, 0x0
    beq-    branch_0x8036b614
    cmplwi  r31, 0x0
    bne+    branch_0x8036b5b4
branch_0x8036b614:
    lwz     r3, R13Off_m0x5758(r13)
    bl      EXIDeselect
branch_0x8036b61c:
    cmplwi  r31, 0x0
    bne+    branch_0x8036b4d4
branch_0x8036b624:
    lwz     r3, R13Off_m0x5758(r13)
    bl      EXIUnlock
    mr      r3, r26
branch_0x8036b630:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

