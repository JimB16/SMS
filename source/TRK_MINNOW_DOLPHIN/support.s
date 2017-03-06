
.globl TRKSuppAccessFile
TRKSuppAccessFile: # 0x8033f4b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r21, 0x1c(sp)
    mr.     r27, r4
    addi    r25, r3, 0x0
    addi    r23, r5, 0x0
    addi    r26, r6, 0x0
    addi    r22, r7, 0x0
    addi    r30, r8, 0x0
    beq-    branch_0x8033f4e8
    lwz     r0, 0x0(r23)
    cmplwi  r0, 0x0
    bne-    branch_0x8033f4f0
branch_0x8033f4e8:
    li      r3, 0x2
    b       branch_0x8033f774

branch_0x8033f4f0:
    li      r0, 0x0
    stb     r0, 0x0(r26)
    li      r24, 0x0
    li      r28, 0x0
    li      r21, 0x0
    b       branch_0x8033f744

branch_0x8033f508:
    subf    r0, r28, r3
    cmplwi  r0, 0x800
    ble-    branch_0x8033f51c
    li      r31, 0x800
    b       branch_0x8033f520

branch_0x8033f51c:
    mr      r31, r0
branch_0x8033f520:
    addi    r3, sp, 0xc
    addi    r4, sp, 0x10
    bl      TRKGetFreeBuffer
    mr.     r21, r3
    bne-    branch_0x8033f588
    lwz     r7, 0x10(sp)
    lwz     r0, 0xc(r7)
    cmplwi  r0, 0x880
    blt-    branch_0x8033f54c
    li      r5, 0x301
    b       branch_0x8033f584

branch_0x8033f54c:
    cmpwi   r30, 0x0
    beq-    branch_0x8033f55c
    li      r6, 0xd1
    b       branch_0x8033f560

branch_0x8033f55c:
    li      r6, 0xd0
branch_0x8033f560:
    lwz     r4, 0xc(r7)
    li      r5, 0x0
    addi    r3, r4, 0x1
    addi    r0, r4, 0x10
    stw     r3, 0xc(r7)
    stbx    r6, r7, r0
    lwz     r3, 0x8(r7)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r7)
branch_0x8033f584:
    mr      r21, r5
branch_0x8033f588:
    cmpwi   r21, 0x0
    bne-    branch_0x8033f5a0
    lwz     r3, 0x10(sp)
    mr      r4, r25
    bl      TRKAppendBuffer1_ui32
    mr      r21, r3
branch_0x8033f5a0:
    cmpwi   r21, 0x0
    bne-    branch_0x8033f5b8
    lwz     r3, 0x10(sp)
    clrlwi  r4, r31, 16
    bl      TRKAppendBuffer1_ui16
    mr      r21, r3
branch_0x8033f5b8:
    cmpwi   r30, 0x0
    bne-    branch_0x8033f5dc
    cmpwi   r21, 0x0
    bne-    branch_0x8033f5dc
    lwz     r3, 0x10(sp)
    addi    r5, r31, 0x0
    add     r4, r27, r28
    bl      TRKAppendBuffer_ui8
    mr      r21, r3
branch_0x8033f5dc:
    cmpwi   r21, 0x0
    bne-    branch_0x8033f738
    cmpwi   r22, 0x0
    beq-    branch_0x8033f72c
    li      r0, 0x0
    cmpwi   r30, 0x0
    sth     r0, 0xa(sp)
    stb     r0, 0x8(sp)
    beq-    branch_0x8033f60c
    cmplwi  r25, 0x0
    bne-    branch_0x8033f60c
    li      r0, 0x1
branch_0x8033f60c:
    cmpwi   r30, 0x0
    beq-    branch_0x8033f61c
    li      r5, 0x5
    b       branch_0x8033f620

branch_0x8033f61c:
    li      r5, 0x5
branch_0x8033f620:
    cntlzw  r0, r0
    lwz     r3, 0x10(sp)
    srwi    r7, r0, 5
    addi    r4, sp, 0x14
    li      r6, 0x3
    bl      TRKRequestSend
    mr.     r21, r3
    bne-    branch_0x8033f654
    lwz     r3, 0x14(sp)
    bl      TRKGetBuffer
    addi    r29, r3, 0x0
    li      r4, 0x2
    bl      TRKSetBufferPosition
branch_0x8033f654:
    cmpwi   r21, 0x0
    bne-    branch_0x8033f66c
    addi    r3, r29, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    mr      r21, r3
branch_0x8033f66c:
    cmpwi   r21, 0x0
    bne-    branch_0x8033f684
    addi    r3, r29, 0x0
    addi    r4, sp, 0xa
    bl      TRKReadBuffer1_ui16
    mr      r21, r3
branch_0x8033f684:
    cmpwi   r30, 0x0
    beq-    branch_0x8033f6e0
    cmpwi   r21, 0x0
    bne-    branch_0x8033f6e0
    lhz     r3, 0xa(sp)
    lwz     r4, 0x8(r29)
    addi    r0, r3, 0x5
    cmplw   r4, r0
    beq-    branch_0x8033f6c4
    lbz     r0, 0x8(sp)
    subi    r3, r4, 0x5
    sth     r3, 0xa(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x8033f6c4
    li      r0, 0x1
    stb     r0, 0x8(sp)
branch_0x8033f6c4:
    lhz     r5, 0xa(sp)
    cmplw   r5, r31
    bgt-    branch_0x8033f6e0
    addi    r3, r29, 0x0
    add     r4, r27, r28
    bl      TRKReadBuffer_ui8
    mr      r21, r3
branch_0x8033f6e0:
    lhz     r3, 0xa(sp)
    cmplw   r3, r31
    beq-    branch_0x8033f718
    cmpwi   r30, 0x0
    beq-    branch_0x8033f6fc
    cmplw   r3, r31
    blt-    branch_0x8033f710
branch_0x8033f6fc:
    lbz     r0, 0x8(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x8033f710
    li      r0, 0x1
    stb     r0, 0x8(sp)
branch_0x8033f710:
    addi    r31, r3, 0x0
    li      r24, 0x1
branch_0x8033f718:
    lbz     r0, 0x8(sp)
    stb     r0, 0x0(r26)
    lwz     r3, 0x14(sp)
    bl      TRKReleaseBuffer
    b       branch_0x8033f738

branch_0x8033f72c:
    lwz     r3, 0x10(sp)
    bl      TRKMessageSend
    mr      r21, r3
branch_0x8033f738:
    lwz     r3, 0xc(sp)
    bl      TRKReleaseBuffer
    add     r28, r28, r31
branch_0x8033f744:
    cmpwi   r24, 0x0
    bne-    branch_0x8033f76c
    lwz     r3, 0x0(r23)
    cmplw   r28, r3
    bge-    branch_0x8033f76c
    cmpwi   r21, 0x0
    bne-    branch_0x8033f76c
    lbz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    beq+    branch_0x8033f508
branch_0x8033f76c:
    stw     r28, 0x0(r23)
    mr      r3, r21
branch_0x8033f774:
    lmw     r21, 0x1c(sp)
    addi    sp, sp, 0x48
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKRequestSend
TRKRequestSend: # 0x8033f788
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x38(sp)
    stmw    r22, 0x10(sp)
    addi    r23, r4, 0x0
    lis     r4, 0x4c5
    addi    r27, r6, 0x1
    addi    r22, r3, 0x0
    subi    r31, r4, 0x4c14
    addi    r24, r5, 0x0
    addi    r25, r7, 0x0
    li      r30, 0x0
    li      r26, 0x1
    stw     r0, 0x0(r23)
    b       branch_0x8033f8e8

branch_0x8033f7c8:
    mr      r3, r22
    bl      TRKMessageSend
    mr.     r30, r3
    bne-    branch_0x8033f8e4
    cmpwi   r25, 0x0
    beq-    branch_0x8033f7e4
    li      r28, 0x0
branch_0x8033f7e4:
    bl      TRKTestForPacket
    stw     r3, 0x0(r23)
    lwz     r3, 0x0(r23)
    cmpwi   r3, -0x1
    bne-    branch_0x8033f80c
    cmpwi   r25, 0x0
    beq+    branch_0x8033f7e4
    addi    r28, r28, 0x1
    cmplw   r28, r31
    blt+    branch_0x8033f7e4
branch_0x8033f80c:
    cmpwi   r3, -0x1
    beq-    branch_0x8033f85c
    li      r26, 0x0
    bl      TRKGetBuffer
    addi    r29, r3, 0x0
    li      r4, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r29, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    mr.     r30, r3
    bne-    branch_0x8033f85c
    lbz     r0, 0x8(sp)
    cmplwi  r0, 0x80
    bge-    branch_0x8033f85c
    lwz     r3, 0x0(r23)
    bl      TRKProcessInput
    li      r0, -0x1
    stw     r0, 0x0(r23)
    b       branch_0x8033f7e4

branch_0x8033f85c:
    lwz     r0, 0x0(r23)
    cmpwi   r0, -0x1
    beq-    branch_0x8033f8e4
    lwz     r0, 0x8(r29)
    cmplw   r0, r24
    bge-    branch_0x8033f878
    li      r26, 0x1
branch_0x8033f878:
    cmpwi   r30, 0x0
    bne-    branch_0x8033f898
    cmpwi   r26, 0x0
    bne-    branch_0x8033f898
    addi    r3, r29, 0x0
    addi    r4, sp, 0x9
    bl      TRKReadBuffer1_ui8
    mr      r30, r3
branch_0x8033f898:
    cmpwi   r30, 0x0
    bne-    branch_0x8033f8c4
    cmpwi   r26, 0x0
    bne-    branch_0x8033f8c4
    lbz     r0, 0x8(sp)
    cmplwi  r0, 0x80
    bne-    branch_0x8033f8c0
    lbz     r0, 0x9(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x8033f8c4
branch_0x8033f8c0:
    li      r26, 0x1
branch_0x8033f8c4:
    cmpwi   r30, 0x0
    bne-    branch_0x8033f8d4
    cmpwi   r26, 0x0
    beq-    branch_0x8033f8e4
branch_0x8033f8d4:
    lwz     r3, 0x0(r23)
    bl      TRKReleaseBuffer
    li      r0, -0x1
    stw     r0, 0x0(r23)
branch_0x8033f8e4:
    subi    r27, r27, 0x1
branch_0x8033f8e8:
    cmpwi   r27, 0x0
    beq-    branch_0x8033f904
    lwz     r0, 0x0(r23)
    cmpwi   r0, -0x1
    bne-    branch_0x8033f904
    cmpwi   r30, 0x0
    beq+    branch_0x8033f7c8
branch_0x8033f904:
    lwz     r0, 0x0(r23)
    cmpwi   r0, -0x1
    bne-    branch_0x8033f914
    li      r30, 0x800
branch_0x8033f914:
    mr      r3, r30
    lmw     r22, 0x10(sp)
    addi    sp, sp, 0x38
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

