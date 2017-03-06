
.globl THPVideoDecode
THPVideoDecode: # 0x8036b644
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr.     r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    beq-    branch_0x8036b838
    cmplwi  r28, 0x0
    beq-    branch_0x8036b840
    cmplwi  r29, 0x0
    beq-    branch_0x8036b840
    cmplwi  r30, 0x0
    beq-    branch_0x8036b840
    cmplwi  r31, 0x0
    beq-    branch_0x8036b848
    bl      PPCMfhid2
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x8036b868
    lwz     r0, -0x562c(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8036b870
    stw     r31, -0x5634(r13)
    li      r4, 0x6bc
    lwz     r3, -0x5634(r13)
    addi    r0, r3, 0x1f
    clrrwi  r3, r0, 5
    stw     r3, -0x5630(r13)
    addi    r0, r3, 0x6bc
    stw     r0, -0x5634(r13)
    lwz     r3, -0x5630(r13)
    bl      DCZeroRange
    lwz     r3, -0x5630(r13)
    li      r4, 0x21
    li      r0, 0x0
    stw     r4, 0x6a4(r3)
    li      r31, 0x0
    lwz     r3, -0x5630(r13)
    sth     r0, 0x698(r3)
    lwz     r3, -0x5630(r13)
    stw     r27, 0x69c(r3)
branch_0x8036b6f0:
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x69c(r4)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0xff
    bne-    branch_0x8036b858
    b       branch_0x8036b71c

branch_0x8036b710:
    lwz     r3, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r4)
branch_0x8036b71c:
    lwz     r3, -0x5630(r13)
    addi    r4, r3, 0x69c
    lwz     r3, 0x69c(r3)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0xff
    beq+    branch_0x8036b710
    addi    r0, r3, 0x1
    stw     r0, 0x0(r4)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0xd7
    bgt-    branch_0x8036b778
    cmplwi  r0, 0xc4
    bne-    branch_0x8036b760
    bl      __THPReadHuffmanTableSpecification
    clrlwi. r0, r3, 24
    bne-    branch_0x8036b860
    b       branch_0x8036b814

branch_0x8036b760:
    cmplwi  r0, 0xc0
    bne-    branch_0x8036b850
    bl      __THPReadFrameHeader
    clrlwi. r0, r3, 24
    bne-    branch_0x8036b860
    b       branch_0x8036b814

branch_0x8036b778:
    cmplwi  r0, 0xd8
    blt-    branch_0x8036b7d8
    cmplwi  r0, 0xdf
    bgt-    branch_0x8036b7d8
    cmplwi  r0, 0xdd
    bne-    branch_0x8036b798
    bl      __THPRestartDefinition
    b       branch_0x8036b814

branch_0x8036b798:
    cmplwi  r0, 0xdb
    bne-    branch_0x8036b7b0
    bl      __THPReadQuantizationTable
    clrlwi. r0, r3, 24
    bne-    branch_0x8036b860
    b       branch_0x8036b814

branch_0x8036b7b0:
    cmplwi  r0, 0xda
    bne-    branch_0x8036b7cc
    bl      __THPReadScaneHeader
    clrlwi. r0, r3, 24
    bne-    branch_0x8036b860
    li      r31, 0x1
    b       branch_0x8036b814

branch_0x8036b7cc:
    cmplwi  r0, 0xd8
    beq-    branch_0x8036b814
    b       branch_0x8036b850

branch_0x8036b7d8:
    cmplwi  r0, 0xe0
    blt-    branch_0x8036b814
    blt-    branch_0x8036b7ec
    cmplwi  r0, 0xef
    ble-    branch_0x8036b7f4
branch_0x8036b7ec:
    cmplwi  r0, 0xfe
    bne-    branch_0x8036b850
branch_0x8036b7f4:
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x69c(r3)
    addi    r5, r3, 0x69c
    lbz     r3, 0x0(r4)
    lbz     r0, 0x1(r4)
    insrwi  r0, r3, 8, 16
    add     r0, r4, r0
    stw     r0, 0x0(r5)
branch_0x8036b814:
    clrlwi. r0, r31, 24
    beq+    branch_0x8036b6f0
    bl      __THPSetupBuffers
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      __THPDecompressYUV
    li      r3, 0x0
    b       branch_0x8036b874

branch_0x8036b838:
    li      r3, 0x19
    b       branch_0x8036b874

branch_0x8036b840:
    li      r3, 0x1b
    b       branch_0x8036b874

branch_0x8036b848:
    li      r3, 0x1a
    b       branch_0x8036b874

branch_0x8036b850:
    li      r3, 0xb
    b       branch_0x8036b874

branch_0x8036b858:
    li      r3, 0x3
    b       branch_0x8036b874

branch_0x8036b860:
    clrlwi  r3, r3, 24
    b       branch_0x8036b874

branch_0x8036b868:
    li      r3, 0x1c
    b       branch_0x8036b874

branch_0x8036b870:
    li      r3, 0x1d
branch_0x8036b874:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __THPSetupBuffers
__THPSetupBuffers: # 0x8036b888
    lwz     r4, -0x5634(r13)
    lis     r3, 0x8040
    addi    r5, r3, 0x4278
    addi    r0, r4, 0x1f
    clrrwi  r6, r0, 5
    stw     r6, 0x0(r5)
    addi    r3, r6, 0x80
    addi    r0, r6, 0x100
    stw     r3, 0x4(r5)
    addi    r4, r6, 0x180
    addi    r3, r6, 0x200
    stw     r0, 0x8(r5)
    addi    r0, r6, 0x280
    stw     r4, 0xc(r5)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    blr


.globl __THPReadFrameHeader
__THPReadFrameHeader: # 0x8036b8cc
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x2
    stw     r0, 0x69c(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x69c(r4)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    beq-    branch_0x8036b900
    li      r3, 0xa
    blr

branch_0x8036b900:
    lwz     r5, -0x5630(r13)
    lwz     r4, 0x69c(r5)
    lbz     r3, 0x0(r4)
    lbz     r0, 0x1(r4)
    insrwi  r0, r3, 8, 16
    sth     r0, 0x694(r5)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x2
    stw     r0, 0x69c(r4)
    lwz     r5, -0x5630(r13)
    lwz     r4, 0x69c(r5)
    lbz     r3, 0x0(r4)
    lbz     r0, 0x1(r4)
    insrwi  r0, r3, 8, 16
    sth     r0, 0x692(r5)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x2
    stw     r0, 0x69c(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x69c(r4)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x8036b974
    li      r3, 0xc
    blr

branch_0x8036b974:
    li      r7, 0x0
    li      r6, 0x0
    b       branch_0x8036b9f4

branch_0x8036b980:
    lwz     r4, -0x5630(r13)
    clrlwi. r0, r7, 24
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x69c(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x69c(r4)
    lbz     r3, 0x0(r3)
    bne-    branch_0x8036b9b4
    cmplwi  r3, 0x22
    bne-    branch_0x8036b9c4
branch_0x8036b9b4:
    clrlwi. r0, r7, 24
    beq-    branch_0x8036b9cc
    cmplwi  r3, 0x11
    beq-    branch_0x8036b9cc
branch_0x8036b9c4:
    li      r3, 0x13
    blr

branch_0x8036b9cc:
    lwz     r5, -0x5630(r13)
    addi    r0, r6, 0x680
    addi    r6, r6, 0x6
    lwz     r4, 0x69c(r5)
    addi    r7, r7, 0x1
    addi    r3, r4, 0x1
    stw     r3, 0x69c(r5)
    lbz     r4, 0x0(r4)
    lwz     r3, -0x5630(r13)
    stbx    r4, r3, r0
branch_0x8036b9f4:
    clrlwi  r0, r7, 24
    cmplwi  r0, 0x3
    blt+    branch_0x8036b980
    li      r3, 0x0
    blr


.globl __THPReadScaneHeader
__THPReadScaneHeader: # 0x8036ba08
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x2
    stw     r0, 0x69c(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x69c(r4)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x8036ba3c
    li      r3, 0xc
    blr

branch_0x8036ba3c:
    li      r9, 0x0
    li      r8, 0x0
    b       branch_0x8036bacc

branch_0x8036ba48:
    lwz     r6, -0x5630(r13)
    addi    r0, r8, 0x681
    addi    r4, r8, 0x682
    lwz     r5, 0x69c(r6)
    li      r3, 0x1
    addi    r5, r5, 0x1
    stw     r5, 0x69c(r6)
    lwz     r7, -0x5630(r13)
    lwz     r6, 0x69c(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x69c(r7)
    lbz     r7, 0x0(r6)
    lwz     r5, -0x5630(r13)
    srawi   r6, r7, 4
    stbx    r6, r5, r0
    clrlwi  r7, r7, 28
    slw     r0, r3, r6
    lwz     r5, -0x5630(r13)
    stbx    r7, r5, r4
    lwz     r4, -0x5630(r13)
    lbz     r4, 0x6a8(r4)
    and.    r0, r4, r0
    bne-    branch_0x8036baac
    li      r3, 0xf
    blr

branch_0x8036baac:
    addi    r0, r7, 0x1
    slw     r0, r3, r0
    and.    r0, r4, r0
    bne-    branch_0x8036bac4
    li      r3, 0xf
    blr

branch_0x8036bac4:
    addi    r8, r8, 0x6
    addi    r9, r9, 0x1
branch_0x8036bacc:
    clrlwi  r0, r9, 24
    cmplwi  r0, 0x3
    blt+    branch_0x8036ba48
    lwz     r5, -0x5630(r13)
    li      r0, 0x0
    li      r3, 0x0
    lwz     r4, 0x69c(r5)
    addi    r4, r4, 0x3
    stw     r4, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lhz     r4, 0x692(r5)
    addi    r4, r4, 0xf
    srawi   r4, r4, 4
    addze   r4, r4
    sth     r4, 0x696(r5)
    lwz     r4, -0x5630(r13)
    sth     r0, 0x684(r4)
    lwz     r4, -0x5630(r13)
    sth     r0, 0x68a(r4)
    lwz     r4, -0x5630(r13)
    sth     r0, 0x690(r4)
    blr


.globl __THPReadQuantizationTable
__THPReadQuantizationTable: # 0x8036bb24
    stwu    sp, -0x188(sp)
    lis     r4, 0x803b
    subi    r4, r4, 0x4a38
    stmw    r21, 0x15c(sp)
    addi    r6, r4, 0x50
    lwz     r3, -0x5630(r13)
    lwz     r5, 0x69c(r3)
    addi    r8, r3, 0x69c
    addi    r3, sp, 0x14
    lbz     r7, 0x0(r5)
    addi    r0, r5, 0x2
    lbz     r5, 0x1(r5)
    insrwi  r5, r7, 8, 16
    stw     r0, 0x0(r8)
    clrlwi  r7, r5, 16
    lis     r0, 0x4330
    lfd     f0, 0xc28(rtoc)
    subi    r7, r7, 0x2
branch_0x8036bb6c:
    lwz     r11, -0x5630(r13)
    addi    r5, r4, 0x0
    li      r9, 0x0
    lwz     r10, 0x69c(r11)
    addi    r8, r10, 0x1
    stw     r8, 0x69c(r11)
    lbz     r8, 0x0(r10)
    b       branch_0x8036bd4c

branch_0x8036bb8c:
    lwz     r30, -0x5630(r13)
    addi    r28, r9, 0x1
    addi    r29, r9, 0x2
    lwz     r27, 0x69c(r30)
    addi    r12, r9, 0x3
    addi    r11, r9, 0x4
    addi    r10, r27, 0x1
    stw     r10, 0x69c(r30)
    addi    r10, r9, 0x5
    clrlwi  r28, r28, 16
    lbz     r30, 0x0(r27)
    clrlwi  r29, r29, 16
    lbz     r27, 0x0(r5)
    clrlwi  r12, r12, 16
    stw     r30, 0x154(sp)
    slwi    r27, r27, 2
    stw     r0, 0x150(sp)
    clrlwi  r11, r11, 16
    clrlwi  r10, r10, 16
    lfd     f1, 0x150(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r27
    lwz     r27, -0x5630(r13)
    lwz     r31, 0x69c(r27)
    addi    r30, r31, 0x1
    stw     r30, 0x69c(r27)
    lbz     r30, 0x0(r31)
    lbzx    r28, r4, r28
    stw     r30, 0x14c(sp)
    slwi    r28, r28, 2
    stw     r0, 0x148(sp)
    lfd     f1, 0x148(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r28
    lwz     r28, -0x5630(r13)
    lwz     r31, 0x69c(r28)
    addi    r30, r31, 0x1
    stw     r30, 0x69c(r28)
    lbz     r30, 0x0(r31)
    lbzx    r29, r4, r29
    stw     r30, 0x144(sp)
    slwi    r29, r29, 2
    stw     r0, 0x140(sp)
    lfd     f1, 0x140(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r29
    lwz     r31, -0x5630(r13)
    lwz     r30, 0x69c(r31)
    addi    r29, r30, 0x1
    stw     r29, 0x69c(r31)
    lbz     r29, 0x0(r30)
    lbzx    r12, r4, r12
    stw     r29, 0x13c(sp)
    slwi    r12, r12, 2
    stw     r0, 0x138(sp)
    lfd     f1, 0x138(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r12
    lwz     r30, -0x5630(r13)
    lwz     r29, 0x69c(r30)
    addi    r12, r29, 0x1
    stw     r12, 0x69c(r30)
    lbz     r12, 0x0(r29)
    lbzx    r11, r4, r11
    stw     r12, 0x134(sp)
    slwi    r11, r11, 2
    stw     r0, 0x130(sp)
    lfd     f1, 0x130(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r11
    lwz     r29, -0x5630(r13)
    lwz     r12, 0x69c(r29)
    addi    r11, r12, 0x1
    stw     r11, 0x69c(r29)
    lbz     r11, 0x0(r12)
    lbzx    r10, r4, r10
    stw     r11, 0x12c(sp)
    slwi    r10, r10, 2
    stw     r0, 0x128(sp)
    lfd     f1, 0x128(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r10
    lwz     r30, -0x5630(r13)
    addi    r11, r9, 0x6
    addi    r10, r9, 0x7
    lwz     r29, 0x69c(r30)
    clrlwi  r11, r11, 16
    clrlwi  r10, r10, 16
    addi    r12, r29, 0x1
    stw     r12, 0x69c(r30)
    addi    r5, r5, 0x8
    addi    r9, r9, 0x8
    lbz     r12, 0x0(r29)
    lbzx    r11, r4, r11
    stw     r12, 0x124(sp)
    slwi    r11, r11, 2
    stw     r0, 0x120(sp)
    lfd     f1, 0x120(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r11
    lwz     r29, -0x5630(r13)
    lwz     r12, 0x69c(r29)
    addi    r11, r12, 0x1
    stw     r11, 0x69c(r29)
    lbz     r11, 0x0(r12)
    lbzx    r10, r4, r10
    stw     r11, 0x11c(sp)
    slwi    r10, r10, 2
    stw     r0, 0x118(sp)
    lfd     f1, 0x118(sp)
    fsubs   f1, f1, f0
    stfsx   f1, r3, r10
branch_0x8036bd4c:
    clrlwi  r10, r9, 16
    cmplwi  r10, 0x40
    blt+    branch_0x8036bb8c
    lwz     r29, -0x5630(r13)
    addi    r27, r6, 0x0
    slwi    r28, r8, 8
    li      r5, 0x0
    li      r8, 0x0
    b       branch_0x8036beb8

branch_0x8036bd70:
    clrlslwi  r11, r5, 16, 2
    lfd     f1, 0x0(r27)
    lfsx    f2, r3, r11
    addi    r9, r5, 0x1
    clrlslwi  r12, r9, 16, 2
    lfd     f3, 0x0(r6)
    fmul    f1, f2, f1
    addi    r9, r5, 0x2
    clrlslwi  r26, r9, 16, 2
    addi    r9, r5, 0x3
    fmul    f1, f3, f1
    clrlslwi  r25, r9, 16, 2
    addi    r10, r5, 0x4
    clrlslwi  r24, r10, 16, 2
    frsp    f1, f1
    add     r9, r29, r11
    addi    r10, r5, 0x7
    stfsx   f1, r28, r9
    addi    r9, r5, 0x5
    clrlslwi  r23, r9, 16, 2
    lfsx    f2, r3, r12
    addi    r9, r5, 0x6
    lfd     f1, 0x0(r27)
    clrlslwi  r22, r9, 16, 2
    add     r9, r29, r12
    fmul    f1, f2, f1
    lfd     f3, 0x8(r6)
    clrlslwi  r21, r10, 16, 2
    add     r30, r29, r26
    add     r31, r29, r25
    fmul    f1, f3, f1
    add     r12, r29, r24
    add     r11, r29, r23
    add     r10, r29, r22
    addi    r5, r5, 0x8
    frsp    f1, f1
    addi    r8, r8, 0x1
    stfsx   f1, r28, r9
    add     r9, r29, r21
    lfsx    f2, r3, r26
    lfd     f1, 0x0(r27)
    lfd     f3, 0x10(r6)
    fmul    f1, f2, f1
    fmul    f1, f3, f1
    frsp    f1, f1
    stfsx   f1, r28, r30
    lfsx    f2, r3, r25
    lfd     f1, 0x0(r27)
    lfd     f3, 0x18(r6)
    fmul    f1, f2, f1
    fmul    f1, f3, f1
    frsp    f1, f1
    stfsx   f1, r28, r31
    lfsx    f2, r3, r24
    lfd     f1, 0x0(r27)
    lfd     f3, 0x20(r6)
    fmul    f1, f2, f1
    fmul    f1, f3, f1
    frsp    f1, f1
    stfsx   f1, r28, r12
    lfsx    f2, r3, r23
    lfd     f1, 0x0(r27)
    lfd     f3, 0x28(r6)
    fmul    f1, f2, f1
    fmul    f1, f3, f1
    frsp    f1, f1
    stfsx   f1, r28, r11
    lfsx    f2, r3, r22
    lfd     f1, 0x0(r27)
    lfd     f3, 0x30(r6)
    fmul    f1, f2, f1
    fmul    f1, f3, f1
    frsp    f1, f1
    stfsx   f1, r28, r10
    lfd     f1, 0x0(r27)
    addi    r27, r27, 0x8
    lfsx    f2, r3, r21
    lfd     f3, 0x38(r6)
    fmul    f1, f2, f1
    fmul    f1, f3, f1
    frsp    f1, f1
    stfsx   f1, r28, r9
branch_0x8036beb8:
    clrlwi  r9, r8, 16
    cmplwi  r9, 0x8
    blt+    branch_0x8036bd70
    subi    r7, r7, 0x41
    clrlwi. r5, r7, 16
    bne+    branch_0x8036bb6c
    lmw     r21, 0x15c(sp)
    li      r3, 0x0
    addi    sp, sp, 0x188
    blr


.globl __THPReadHuffmanTableSpecification
__THPReadHuffmanTableSpecification: # 0x8036bee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    lwz     r4, -0x5634(r13)
    lwz     r3, -0x5630(r13)
    addi    r0, r4, 0x101
    stw     r4, -0x5698(r13)
    addi    r5, r3, 0x69c
    stw     r0, -0x5694(r13)
    lwz     r3, 0x69c(r3)
    lbz     r4, 0x0(r3)
    addi    r0, r3, 0x2
    lbz     r3, 0x1(r3)
    insrwi  r3, r4, 8, 16
    clrlwi  r30, r3, 16
    stw     r0, 0x0(r5)
    subi    r30, r30, 0x2
branch_0x8036bf30:
    lwz     r5, -0x5630(r13)
    li      r29, 0x0
    li      r3, 0x0
    lwz     r4, 0x69c(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lbz     r6, 0x0(r4)
    lwz     r4, -0x5630(r13)
    srawi   r0, r6, 4
    lwz     r5, 0x69c(r4)
    clrlslwi  r4, r6, 28, 1
    clrlwi  r0, r0, 24
    add     r0, r4, r0
    stw     r5, -0x569c(r13)
    clrlwi  r31, r0, 24
    b       branch_0x8036c034

branch_0x8036bf70:
    lwz     r5, -0x5630(r13)
    addi    r3, r3, 0x8
    lwz     r4, 0x69c(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x0(r4)
    lwz     r4, 0x69c(r5)
    add     r29, r29, r0
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x0(r4)
    lwz     r4, 0x69c(r5)
    add     r29, r29, r0
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x0(r4)
    lwz     r4, 0x69c(r5)
    add     r29, r29, r0
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x0(r4)
    lwz     r4, 0x69c(r5)
    add     r29, r29, r0
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x0(r4)
    lwz     r4, 0x69c(r5)
    add     r29, r29, r0
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x0(r4)
    lwz     r4, 0x69c(r5)
    add     r29, r29, r0
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x0(r4)
    lwz     r4, 0x69c(r5)
    add     r29, r29, r0
    addi    r0, r4, 0x1
    stw     r0, 0x69c(r5)
    lbz     r0, 0x0(r4)
    add     r29, r29, r0
branch_0x8036c034:
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x10
    blt+    branch_0x8036bf70
    mulli   r3, r31, 0xe0
    lwz     r5, -0x5630(r13)
    lwz     r4, 0x69c(r5)
    addi    r0, r3, 0x340
    stwx    r4, r5, r0
    clrlwi  r0, r29, 16
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    add     r0, r3, r0
    stw     r0, 0x69c(r4)
    bl      __THPHuffGenerateSizeTable
    bl      __THPHuffGenerateCodeTable
    mr      r3, r31
    bl      __THPHuffGenerateDecoderTables
    lwz     r5, -0x5630(r13)
    addi    r0, r29, 0x11
    subf    r30, r0, r30
    li      r0, 0x1
    lbz     r4, 0x6a8(r5)
    slw     r3, r0, r31
    or      r3, r4, r3
    clrlwi. r0, r30, 16
    stb     r3, 0x6a8(r5)
    bne+    branch_0x8036bf30
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __THPHuffGenerateSizeTable
__THPHuffGenerateSizeTable: # 0x8036c0c0
    li      r6, 0x0
    li      r7, 0x1
branch_0x8036c0c8:
    lwz     r3, -0x569c(r13)
    subi    r0, r7, 0x1
    clrlwi  r5, r7, 24
    lbzx    r8, r3, r0
    cmpwi   r8, 0x0
    addi    r3, r8, 0x0
    beq-    branch_0x8036c194
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x8036c17c
branch_0x8036c0f0:
    lwz     r4, -0x5698(r13)
    mr      r0, r6
    addi    r6, r6, 0x1
    stbx    r5, r4, r0
    addi    r0, r6, 0x0
    addi    r6, r6, 0x1
    lwz     r4, -0x5698(r13)
    stbx    r5, r4, r0
    addi    r0, r6, 0x0
    addi    r6, r6, 0x1
    lwz     r4, -0x5698(r13)
    stbx    r5, r4, r0
    addi    r0, r6, 0x0
    addi    r6, r6, 0x1
    lwz     r4, -0x5698(r13)
    stbx    r5, r4, r0
    addi    r0, r6, 0x0
    addi    r6, r6, 0x1
    lwz     r4, -0x5698(r13)
    stbx    r5, r4, r0
    addi    r0, r6, 0x0
    addi    r6, r6, 0x1
    lwz     r4, -0x5698(r13)
    stbx    r5, r4, r0
    addi    r0, r6, 0x0
    addi    r6, r6, 0x1
    lwz     r4, -0x5698(r13)
    stbx    r5, r4, r0
    addi    r0, r6, 0x0
    addi    r6, r6, 0x1
    lwz     r4, -0x5698(r13)
    stbx    r5, r4, r0
    bdnz+      branch_0x8036c0f0
    andi.   r3, r3, 0x7
    beq-    branch_0x8036c194
branch_0x8036c17c:
    mtctr   r3
branch_0x8036c180:
    lwz     r4, -0x5698(r13)
    mr      r0, r6
    addi    r6, r6, 0x1
    stbx    r5, r4, r0
    bdnz+      branch_0x8036c180
branch_0x8036c194:
    addi    r7, r7, 0x1
    cmpwi   r7, 0x10
    ble+    branch_0x8036c0c8
    lwz     r3, -0x5698(r13)
    li      r0, 0x0
    stbx    r0, r3, r6
    blr


.globl __THPHuffGenerateCodeTable
__THPHuffGenerateCodeTable: # 0x8036c1b0
    lwz     r6, -0x5698(r13)
    li      r8, 0x0
    lwz     r5, -0x5694(r13)
    li      r9, 0x0
    lbz     r7, 0x0(r6)
    li      r3, 0x1
    b       branch_0x8036c204

branch_0x8036c1cc:
    clrlwi  r4, r7, 24
    b       branch_0x8036c1e4

branch_0x8036c1d4:
    clrlslwi  r0, r8, 16, 1
    sthx    r9, r5, r0
    addi    r8, r8, 0x1
    addi    r9, r9, 0x1
branch_0x8036c1e4:
    clrlwi  r0, r8, 16
    lbzx    r0, r6, r0
    cmplw   r4, r0
    beq+    branch_0x8036c1d4
    clrlwi  r0, r9, 16
    slw     r0, r0, r3
    clrlwi  r9, r0, 16
    addi    r7, r7, 0x1
branch_0x8036c204:
    clrlwi  r0, r8, 16
    lbzx    r0, r6, r0
    cmplwi  r0, 0x0
    bne+    branch_0x8036c1cc
    blr


.globl __THPHuffGenerateDecoderTables
__THPHuffGenerateDecoderTables: # 0x8036c218
    clrlwi  r0, r3, 24
    lwz     r4, -0x5630(r13)
    mulli   r3, r0, 0xe0
    addi    r7, r3, 0x300
    li      r0, 0x4
    add     r7, r4, r7
    mtctr   r0
    addi    r6, r7, 0x4
    li      r8, 0x0
    li      r9, 0x1
branch_0x8036c240:
    lwz     r3, -0x569c(r13)
    subi    r5, r9, 0x1
    lbzx    r0, r3, r5
    cmplwi  r0, 0x0
    beq-    branch_0x8036c28c
    lwz     r3, -0x5694(r13)
    slwi    r0, r8, 1
    lhzx    r0, r3, r0
    subf    r0, r0, r8
    stw     r0, 0x8c(r6)
    lwz     r3, -0x569c(r13)
    lwz     r4, -0x5694(r13)
    lbzx    r0, r3, r5
    add     r8, r8, r0
    slwi    r3, r8, 1
    subi    r0, r3, 0x2
    lhzx    r0, r4, r0
    stw     r0, 0x44(r6)
    b       branch_0x8036c298

branch_0x8036c28c:
    li      r0, -0x1
    stw     r0, 0x44(r6)
    stw     r0, 0x8c(r6)
branch_0x8036c298:
    lwz     r3, -0x569c(r13)
    addi    r5, r9, 0x0
    addi    r9, r9, 0x1
    lbzx    r0, r3, r5
    addi    r6, r6, 0x4
    cmplwi  r0, 0x0
    beq-    branch_0x8036c2ec
    lwz     r3, -0x5694(r13)
    slwi    r0, r8, 1
    lhzx    r0, r3, r0
    subf    r0, r0, r8
    stw     r0, 0x8c(r6)
    lwz     r3, -0x569c(r13)
    lwz     r4, -0x5694(r13)
    lbzx    r0, r3, r5
    add     r8, r8, r0
    slwi    r3, r8, 1
    subi    r0, r3, 0x2
    lhzx    r0, r4, r0
    stw     r0, 0x44(r6)
    b       branch_0x8036c2f8

branch_0x8036c2ec:
    li      r0, -0x1
    stw     r0, 0x44(r6)
    stw     r0, 0x8c(r6)
branch_0x8036c2f8:
    lwz     r3, -0x569c(r13)
    addi    r5, r9, 0x0
    addi    r9, r9, 0x1
    lbzx    r0, r3, r5
    addi    r6, r6, 0x4
    cmplwi  r0, 0x0
    beq-    branch_0x8036c34c
    lwz     r3, -0x5694(r13)
    slwi    r0, r8, 1
    lhzx    r0, r3, r0
    subf    r0, r0, r8
    stw     r0, 0x8c(r6)
    lwz     r3, -0x569c(r13)
    lwz     r4, -0x5694(r13)
    lbzx    r0, r3, r5
    add     r8, r8, r0
    slwi    r3, r8, 1
    subi    r0, r3, 0x2
    lhzx    r0, r4, r0
    stw     r0, 0x44(r6)
    b       branch_0x8036c358

branch_0x8036c34c:
    li      r0, -0x1
    stw     r0, 0x44(r6)
    stw     r0, 0x8c(r6)
branch_0x8036c358:
    lwz     r3, -0x569c(r13)
    addi    r5, r9, 0x0
    addi    r9, r9, 0x1
    lbzx    r0, r3, r5
    addi    r6, r6, 0x4
    cmplwi  r0, 0x0
    beq-    branch_0x8036c3ac
    lwz     r3, -0x5694(r13)
    slwi    r0, r8, 1
    lhzx    r0, r3, r0
    subf    r0, r0, r8
    stw     r0, 0x8c(r6)
    lwz     r3, -0x569c(r13)
    lwz     r4, -0x5694(r13)
    lbzx    r0, r3, r5
    add     r8, r8, r0
    slwi    r3, r8, 1
    subi    r0, r3, 0x2
    lhzx    r0, r4, r0
    stw     r0, 0x44(r6)
    b       branch_0x8036c3b8

branch_0x8036c3ac:
    li      r0, -0x1
    stw     r0, 0x44(r6)
    stw     r0, 0x8c(r6)
branch_0x8036c3b8:
    addi    r6, r6, 0x4
    addi    r9, r9, 0x1
    bdnz+      branch_0x8036c240
    lis     r3, 0x10
    subi    r0, r3, 0x1
    stw     r0, 0x88(r7)
    blr


.globl __THPRestartDefinition
__THPRestartDefinition: # 0x8036c3d4
    lwz     r3, -0x5630(r13)
    li      r0, 0x1
    stb     r0, 0x6a9(r3)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x2
    stw     r0, 0x69c(r4)
    lwz     r5, -0x5630(r13)
    lwz     r4, 0x69c(r5)
    lbz     r3, 0x0(r4)
    lbz     r0, 0x1(r4)
    insrwi  r0, r3, 8, 16
    sth     r0, 0x6aa(r5)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x69c(r4)
    addi    r0, r3, 0x2
    stw     r0, 0x69c(r4)
    lwz     r3, -0x5630(r13)
    lhz     r0, 0x6aa(r3)
    sth     r0, 0x6ac(r3)
    blr


.globl __THPPrepBitStream
__THPPrepBitStream: # 0x8036c428
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r3, -0x5630(r13)
    lwz     r0, 0x69c(r3)
    addi    r4, r3, 0x6a4
    lwz     r3, 0x6a4(r3)
    clrrwi  r5, r0, 2
    cmplwi  r3, 0x21
    clrlwi  r0, r0, 30
    beq-    branch_0x8036c464
    subfic  r0, r0, 0x3
    slwi    r0, r0, 3
    subf    r0, r0, r3
    stw     r0, 0x0(r4)
    b       branch_0x8036c470

branch_0x8036c464:
    slwi    r3, r0, 3
    addi    r0, r3, 0x1
    stw     r0, 0x0(r4)
branch_0x8036c470:
    lwz     r4, -0x5630(r13)
    li      r3, 0x0
    li      r8, 0x0
    stw     r5, 0x69c(r4)
    lwz     r0, 0x0(r5)
    lwz     r4, -0x5630(r13)
    stw     r0, 0x6a0(r4)
branch_0x8036c48c:
    lwz     r4, -0x5630(r13)
    li      r0, 0x1
    slw     r0, r0, r3
    lbz     r4, 0x6a8(r4)
    and.    r0, r4, r0
    beq-    branch_0x8036c5b8
    li      r0, 0x10
    mtctr   r0
    addi    r7, r8, 0x0
    li      r12, 0x0
branch_0x8036c4b4:
    lwz     r0, -0x5630(r13)
    li      r5, 0xff
    li      r31, 0x0
    add     r4, r0, r12
    addi    r0, r4, 0x300
    stbx    r5, r8, r0
    b       branch_0x8036c524

branch_0x8036c4d0:
    lwz     r11, -0x5630(r13)
    subfic  r4, r31, 0x4
    slwi    r0, r31, 2
    add     r5, r8, r11
    add     r10, r5, r0
    lwz     r0, 0x348(r10)
    srw     r9, r12, r4
    cmpw    r9, r0
    bgt-    branch_0x8036c520
    lwz     r6, 0x340(r5)
    addi    r5, r31, 0x1
    lwz     r4, 0x390(r10)
    addi    r0, r11, 0x300
    li      r31, 0x63
    add     r4, r4, r6
    lbzx    r4, r9, r4
    stbx    r4, r7, r0
    lwz     r4, -0x5630(r13)
    addi    r0, r4, 0x320
    stbx    r5, r7, r0
branch_0x8036c520:
    addi    r31, r31, 0x1
branch_0x8036c524:
    cmplwi  r31, 0x5
    blt+    branch_0x8036c4d0
    lwz     r0, -0x5630(r13)
    addi    r12, r12, 0x1
    li      r5, 0xff
    add     r4, r0, r12
    addi    r0, r4, 0x300
    stbx    r5, r8, r0
    li      r31, 0x0
    addi    r7, r7, 0x1
    b       branch_0x8036c5a4

branch_0x8036c550:
    lwz     r11, -0x5630(r13)
    subfic  r4, r31, 0x4
    slwi    r0, r31, 2
    add     r5, r8, r11
    add     r10, r5, r0
    lwz     r0, 0x348(r10)
    srw     r9, r12, r4
    cmpw    r9, r0
    bgt-    branch_0x8036c5a0
    lwz     r6, 0x340(r5)
    addi    r5, r31, 0x1
    lwz     r4, 0x390(r10)
    addi    r0, r11, 0x300
    li      r31, 0x63
    add     r4, r4, r6
    lbzx    r4, r9, r4
    stbx    r4, r7, r0
    lwz     r4, -0x5630(r13)
    addi    r0, r4, 0x320
    stbx    r5, r7, r0
branch_0x8036c5a0:
    addi    r31, r31, 0x1
branch_0x8036c5a4:
    cmplwi  r31, 0x5
    blt+    branch_0x8036c550
    addi    r7, r7, 0x1
    addi    r12, r12, 0x1
    bdnz+      branch_0x8036c4b4
branch_0x8036c5b8:
    addi    r3, r3, 0x1
    cmplwi  r3, 0x4
    addi    r8, r8, 0xe0
    blt+    branch_0x8036c48c
    lwz     r9, -0x5630(r13)
    lbz     r4, 0x682(r9)
    lbz     r0, 0x688(r9)
    lbz     r3, 0x68e(r9)
    slwi    r5, r4, 1
    lbz     r7, 0x687(r9)
    slwi    r4, r0, 1
    lbz     r6, 0x68d(r9)
    lbz     r0, 0x681(r9)
    slwi    r3, r3, 1
    slwi    r7, r7, 1
    slwi    r6, r6, 1
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    addi    r3, r3, 0x1
    slwi    r0, r0, 1
    mulli   r8, r0, 0xe0
    mulli   r7, r7, 0xe0
    mulli   r6, r6, 0xe0
    mulli   r5, r5, 0xe0
    mulli   r4, r4, 0xe0
    mulli   r3, r3, 0xe0
    addi    r8, r8, 0x300
    addi    r7, r7, 0x300
    addi    r6, r6, 0x300
    addi    r5, r5, 0x300
    addi    r4, r4, 0x300
    addi    r0, r3, 0x300
    add     r8, r9, r8
    add     r3, r9, r7
    stw     r8, -0x5740(r13)
    add     r6, r9, r6
    add     r5, r9, r5
    stw     r3, -0x5720(r13)
    add     r3, r9, r4
    add     r0, r9, r0
    stw     r6, -0x5700(r13)
    stw     r5, -0x56e0(r13)
    stw     r3, -0x56c0(r13)
    stw     r0, -0x56a0(r13)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl __THPDecompressYUV
__THPDecompressYUV: # 0x8036c674
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    lwz     r6, -0x5630(r13)
    stw     r3, 0x6b0(r6)
    lwz     r6, -0x5630(r13)
    stw     r4, 0x6b4(r6)
    lwz     r4, -0x5630(r13)
    stw     r5, 0x6b8(r4)
    lwz     r4, -0x5630(r13)
    lhz     r31, 0x698(r4)
    lhz     r30, 0x694(r4)
    mfspr   r4, 917
    mfspr   r0, 918
    stw     r4, -0x563c(r13)
    stw     r0, -0x5638(r13)
    li      r3, 0x7
    oris    r3, r3, 0x7
    mtspr   917, r3
    li      r3, 0x3d04
    oris    r3, r3, 0x3d04
    mtspr   918, r3
    bl      __THPPrepBitStream
    lwz     r4, -0x5630(r13)
    lhz     r0, 0x692(r4)
    cmplwi  r0, 0x200
    bne-    branch_0x8036c70c
    cmplwi  r30, 0x1c0
    bne-    branch_0x8036c70c
    b       branch_0x8036c6fc

branch_0x8036c6f4:
    bl      __THPDecompressiMCURow512x448
    addi    r31, r31, 0x10
branch_0x8036c6fc:
    clrlwi  r0, r31, 16
    cmplw   r0, r30
    blt+    branch_0x8036c6f4
    b       branch_0x8036c758

branch_0x8036c70c:
    lwz     r4, -0x5630(r13)
    lhz     r0, 0x692(r4)
    cmplwi  r0, 0x280
    bne-    branch_0x8036c74c
    cmplwi  r30, 0x1e0
    bne-    branch_0x8036c74c
    b       branch_0x8036c730

branch_0x8036c728:
    bl      __THPDecompressiMCURow640x480
    addi    r31, r31, 0x10
branch_0x8036c730:
    clrlwi  r0, r31, 16
    cmplw   r0, r30
    blt+    branch_0x8036c728
    b       branch_0x8036c758


.incbin "./baserom/code/Text_0x80005600.bin", 0x367140, 0x8036c744 - 0x8036c740
branch_0x8036c744:
    bl      __THPDecompressiMCURowNxN
    addi    r31, r31, 0x10
branch_0x8036c74c:
    clrlwi  r0, r31, 16
    cmplw   r0, r30
    blt+    branch_0x8036c744
branch_0x8036c758:
    lwz     r4, -0x563c(r13)
    lwz     r0, -0x5638(r13)
    mtspr   917, r4
    mtspr   918, r0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __THPDecompressiMCURow512x448
__THPDecompressiMCURow512x448: # 0x8036c780
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stfd    f29, 0x20(sp)
    stfd    f28, 0x18(sp)
    stfd    f27, 0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x4160
    li      r3, 0x3
    stw     r30, 0x8(sp)
    bl      LCQueueWait
    lfs     f27, 0xc30(rtoc)
    li      r30, 0x0
    lfs     f28, 0xc34(rtoc)
    lfs     f29, 0xc38(rtoc)
    lfs     f30, 0xc3c(rtoc)
    lfs     f31, 0xc40(rtoc)
    b       branch_0x8036e160

branch_0x8036c7d4:
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x118(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x11c(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x120(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x124(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x128(r31)
    bl      __THPHuffDecodeDCTCompU
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x12c(r31)
    bl      __THPHuffDecodeDCTCompV
    lwz     r3, 0x100(r31)
    li      r0, 0x200
    lwz     r4, -0x5630(r13)
    subi    r9, r31, 0x8
    stw     r3, -0x5680(r13)
    clrlslwi  r3, r30, 24, 4
    stw     r0, -0x5660(r13)
    lbz     r0, 0x680(r4)
    slwi    r0, r0, 8
    add     r0, r4, r0
    stw     r0, -0x5640(r13)
    lwz     r8, 0x118(r31)
    lwz     r7, -0x5640(r13)
    li      r4, 0x8
    mtctr   r4
branch_0x8036c858:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or.     r6, r6, r0
branch_0x8036c878:
    cmpwi   r6, 0x0
    bne-    branch_0x8036c9c4
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036c928
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036c8b4
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036c858
    b       branch_0x8036ca8c

branch_0x8036c8b4:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036c878
    b       branch_0x8036ca8c

branch_0x8036c928:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036c878
    b       branch_0x8036ca8c

branch_0x8036c9c4:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036c878
branch_0x8036ca8c:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r4, r3, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r4
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036cae4:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036cae4
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(4), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r8, 0x11c(r31)
    lwz     r7, -0x5640(r13)
    addi    r10, r3, 0x8
    subi    r9, r31, 0x8
    li      r4, 0x8
    mtctr   r4
branch_0x8036cc68:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or.     r6, r6, r0
branch_0x8036cc88:
    cmpwi   r6, 0x0
    bne-    branch_0x8036cdd4
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036cd38
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036ccc4
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036cc68
    b       branch_0x8036ce9c

branch_0x8036ccc4:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036cc88
    b       branch_0x8036ce9c

branch_0x8036cd38:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036cc88
    b       branch_0x8036ce9c

branch_0x8036cdd4:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036cc88
branch_0x8036ce9c:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r10, r10, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r10
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036cef4:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036cef4
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(4), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r8, 0x120(r31)
    lwz     r7, -0x5640(r13)
    subi    r9, r31, 0x8
    li      r4, 0x8
    mtctr   r4
branch_0x8036d074:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or      r6, r6, r0
branch_0x8036d094:
    cmpwi   r6, 0x0
    bne-    branch_0x8036d1e0
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036d144
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036d0d0
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036d074
    b       branch_0x8036d2a8

branch_0x8036d0d0:
    ps_msub f13, f7, f28, f7
    addi    r8, r8, 0x10
    ps_merge00 f2, f7, f7
    addi    r7, r7, 0x20
    ps_sub  f1, f28, f29
    lwz     r5, 0x4(r8)
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036d094
    b       branch_0x8036d2a8

branch_0x8036d144:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036d094
    b       branch_0x8036d2a8

branch_0x8036d1e0:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036d094
branch_0x8036d2a8:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r7, r0, 3
    psq_l   f6, 0x80(9), 0, 0
    slwi    r4, r3, 2
    psq_l   f5, 0x40(9), 0, 0
    slwi    r6, r0, 2
    ps_add  f9, f7, f6
    add     r7, r7, r4
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036d304:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036d304
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    psq_st  f1, 0x10(4), 0, 6
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r8, 0x124(r31)
    lwz     r7, -0x5640(r13)
    addi    r9, r3, 0x8
    subi    r10, r31, 0x8
    li      r4, 0x8
    mtctr   r4
branch_0x8036d488:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or      r6, r6, r0
branch_0x8036d4a8:
    cmpwi   r6, 0x0
    bne-    branch_0x8036d5f4
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(10), 0, 0
    bne-    branch_0x8036d558
    psq_st  f4, 0x10(10), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(10), 0, 0
    bne-    branch_0x8036d4e4
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(10), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036d488
    b       branch_0x8036d6bc

branch_0x8036d4e4:
    ps_msub f13, f7, f28, f7
    addi    r8, r8, 0x10
    ps_merge00 f2, f7, f7
    addi    r7, r7, 0x20
    ps_sub  f1, f28, f29
    lwz     r5, 0x4(r8)
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(10), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(10), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(10), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(10), 0, 0
    bdnz+      branch_0x8036d4a8
    b       branch_0x8036d6bc

branch_0x8036d558:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(10), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(10), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(10), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(10), 0, 0
    bdnz+      branch_0x8036d4a8
    b       branch_0x8036d6bc

branch_0x8036d5f4:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(10), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(10), 0, 0
    psq_stu f10, 0x8(10), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(10), 0, 0
    bdnz+      branch_0x8036d4a8
branch_0x8036d6bc:
    lwz     r8, -0x5680(r13)
    mr      r10, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(10), 0, 0
    slwi    r7, r0, 3
    psq_l   f6, 0x80(10), 0, 0
    slwi    r9, r9, 2
    psq_l   f5, 0x40(10), 0, 0
    slwi    r6, r0, 2
    ps_add  f9, f7, f6
    add     r7, r7, r9
    psq_l   f4, 0xc0(10), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036d718:
    psq_l   f11, 0x20(10), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(10), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(10), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(10), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r10, r10, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(10), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(10), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(10), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(10), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036d718
    psq_l   f11, 0x20(10), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(10), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(10), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(10), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    psq_st  f1, 0x10(4), 0, 6
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r4, 0x104(r31)
    li      r0, 0x100
    lwz     r5, -0x5630(r13)
    stw     r4, -0x5680(r13)
    srwi    r3, r3, 1
    subi    r9, r31, 0x8
    stw     r0, -0x5660(r13)
    lbz     r0, 0x686(r5)
    slwi    r0, r0, 8
    add     r0, r5, r0
    stw     r0, -0x5640(r13)
    lwz     r8, 0x128(r31)
    lwz     r7, -0x5640(r13)
    li      r4, 0x8
    mtctr   r4
branch_0x8036d8c0:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or.     r6, r6, r0
branch_0x8036d8e0:
    cmpwi   r6, 0x0
    bne-    branch_0x8036da2c
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036d990
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036d91c
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036d8c0
    b       branch_0x8036daf4

branch_0x8036d91c:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036d8e0
    b       branch_0x8036daf4

branch_0x8036d990:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036d8e0
    b       branch_0x8036daf4

branch_0x8036da2c:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036d8e0
branch_0x8036daf4:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r4, r3, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r4
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036db4c:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036db4c
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(4), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r0, 0x108(r31)
    lwz     r4, -0x5630(r13)
    subi    r8, r31, 0x8
    stw     r0, -0x5680(r13)
    lbz     r0, 0x68c(r4)
    slwi    r0, r0, 8
    add     r0, r4, r0
    stw     r0, -0x5640(r13)
    lwz     r9, 0x12c(r31)
    lwz     r7, -0x5640(r13)
    li      r4, 0x8
    mtctr   r4
branch_0x8036dce8:
    psq_l   f7, 0x0(9), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r9)
    lwz     r0, 0x8(r9)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r9)
    lhz     r4, 0x2(r9)
    or.     r6, r6, r0
branch_0x8036dd08:
    cmpwi   r6, 0x0
    bne-    branch_0x8036de54
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(8), 0, 0
    bne-    branch_0x8036ddb8
    psq_st  f4, 0x10(8), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(8), 0, 0
    bne-    branch_0x8036dd44
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(8), 0, 0
    addi    r9, r9, 0x10
    bdnz+      branch_0x8036dce8
    b       branch_0x8036df1c

branch_0x8036dd44:
    addi    r9, r9, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r9)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r9)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(9), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r9)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r9)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(8), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(8), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(8), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(8), 0, 0
    bdnz+      branch_0x8036dd08
    b       branch_0x8036df1c

branch_0x8036ddb8:
    psq_l   f1, 0x4(9), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r9, r9, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r9)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r9)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r9)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r9)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(8), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(8), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(8), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(8), 0, 0
    bdnz+      branch_0x8036dd08
    b       branch_0x8036df1c

branch_0x8036de54:
    psq_l   f2, 0x4(9), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(9), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(9), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r9, r9, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r9)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r9)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r9)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r9)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(8), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(8), 0, 0
    psq_stu f10, 0x8(8), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(8), 0, 0
    bdnz+      branch_0x8036dd08
branch_0x8036df1c:
    lwz     r7, -0x5680(r13)
    mr      r8, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(8), 0, 0
    slwi    r3, r3, 2
    psq_l   f6, 0x80(8), 0, 0
    slwi    r5, r0, 2
    psq_l   f5, 0x40(8), 0, 0
    mr      r6, r3
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(8), 0, 0
    ps_sub  f3, f7, f6
    add     r5, r6, r5
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r4, r7, r6
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r3, r7, r5
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036df74:
    psq_l   f11, 0x20(8), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(8), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(8), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(8), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r8, r8, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(8), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(8), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(8), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(8), 0, 0
    ps_sub  f9, f9, f8
    addi    r6, r6, 0x2
    psq_st  f2, 0x0(4), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(4), 0, 6
    addi    r5, r5, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(4), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(3), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(3), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(3), 0, 6
    add     r4, r7, r6
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f3, f3, f31
    add     r3, r7, r5
    bdnz+      branch_0x8036df74
    psq_l   f11, 0x20(8), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(8), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(8), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(8), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(4), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(3), 0, 6
    psq_st  f3, 0x10(4), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(4), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(3), 0, 6
    psq_st  f2, 0x8(3), 0, 6
    lwz     r4, -0x5630(r13)
    lbz     r0, 0x6a9(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8036e15c
    lhz     r3, 0x6ac(r4)
    subi    r3, r3, 0x1
    clrlwi. r0, r3, 16
    sth     r3, 0x6ac(r4)
    bne-    branch_0x8036e15c
    lwz     r3, -0x5630(r13)
    lhz     r0, 0x6aa(r3)
    sth     r0, 0x6ac(r3)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6a4(r4)
    addi    r0, r3, 0x6
    clrrwi  r3, r0, 3
    addi    r0, r3, 0x1
    stw     r0, 0x6a4(r4)
    lwz     r3, -0x5630(r13)
    lwz     r0, 0x6a4(r3)
    cmplwi  r0, 0x21
    ble-    branch_0x8036e140
    li      r0, 0x21
    stw     r0, 0x6a4(r3)
branch_0x8036e140:
    lwz     r3, -0x5630(r13)
    li      r0, 0x0
    sth     r0, 0x684(r3)
    lwz     r3, -0x5630(r13)
    sth     r0, 0x68a(r3)
    lwz     r3, -0x5630(r13)
    sth     r0, 0x690(r3)
branch_0x8036e15c:
    addi    r30, r30, 0x1
branch_0x8036e160:
    lwz     r3, -0x5630(r13)
    clrlwi  r4, r30, 24
    lhz     r0, 0x696(r3)
    cmpw    r4, r0
    blt+    branch_0x8036c7d4
    lwz     r3, 0x6b0(r3)
    li      r5, 0x2000
    lwz     r4, 0x100(r31)
    bl      LCStoreData
    lwz     r3, -0x5630(r13)
    li      r5, 0x800
    lwz     r4, 0x104(r31)
    lwz     r3, 0x6b4(r3)
    bl      LCStoreData
    lwz     r3, -0x5630(r13)
    li      r5, 0x800
    lwz     r4, 0x108(r31)
    lwz     r3, 0x6b8(r3)
    bl      LCStoreData
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6b0(r4)
    addi    r0, r3, 0x2000
    stw     r0, 0x6b0(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6b4(r4)
    addi    r0, r3, 0x800
    stw     r0, 0x6b4(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6b8(r4)
    addi    r0, r3, 0x800
    stw     r0, 0x6b8(r4)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    lfd     f29, 0x20(sp)
    lfd     f28, 0x18(sp)
    lfd     f27, 0x10(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __THPDecompressiMCURow640x480
__THPDecompressiMCURow640x480: # 0x8036e208
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stfd    f29, 0x20(sp)
    stfd    f28, 0x18(sp)
    stfd    f27, 0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x4160
    li      r3, 0x3
    stw     r30, 0x8(sp)
    bl      LCQueueWait
    lfs     f27, 0xc30(rtoc)
    li      r30, 0x0
    lfs     f28, 0xc34(rtoc)
    lfs     f29, 0xc38(rtoc)
    lfs     f30, 0xc3c(rtoc)
    lfs     f31, 0xc40(rtoc)
    b       branch_0x8036fbec

branch_0x8036e25c:
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x118(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x11c(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x120(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x124(r31)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x128(r31)
    bl      __THPHuffDecodeDCTCompU
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x12c(r31)
    bl      __THPHuffDecodeDCTCompV
    lwz     r3, 0x10c(r31)
    li      r0, 0x280
    lwz     r4, -0x5630(r13)
    subi    r9, r31, 0x8
    stw     r3, -0x5680(r13)
    clrlslwi  r3, r30, 24, 4
    stw     r0, -0x5660(r13)
    lbz     r0, 0x680(r4)
    slwi    r0, r0, 8
    add     r0, r4, r0
    stw     r0, -0x5640(r13)
    lwz     r8, 0x118(r31)
    lwz     r7, -0x5640(r13)
    li      r4, 0x8
    mtctr   r4
branch_0x8036e2e0:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or.     r6, r6, r0
branch_0x8036e300:
    cmpwi   r6, 0x0
    bne-    branch_0x8036e44c
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036e3b0
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036e33c
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036e2e0
    b       branch_0x8036e514

branch_0x8036e33c:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036e300
    b       branch_0x8036e514

branch_0x8036e3b0:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036e300
    b       branch_0x8036e514

branch_0x8036e44c:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036e300
branch_0x8036e514:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r4, r3, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r4
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036e56c:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036e56c
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(4), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r8, 0x11c(r31)
    lwz     r7, -0x5640(r13)
    addi    r10, r3, 0x8
    subi    r9, r31, 0x8
    li      r4, 0x8
    mtctr   r4
branch_0x8036e6f0:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or.     r6, r6, r0
branch_0x8036e710:
    cmpwi   r6, 0x0
    bne-    branch_0x8036e85c
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036e7c0
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036e74c
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036e6f0
    b       branch_0x8036e924

branch_0x8036e74c:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036e710
    b       branch_0x8036e924

branch_0x8036e7c0:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036e710
    b       branch_0x8036e924

branch_0x8036e85c:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036e710
branch_0x8036e924:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r10, r10, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r10
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036e97c:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036e97c
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(4), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r8, 0x120(r31)
    lwz     r7, -0x5640(r13)
    subi    r9, r31, 0x8
    li      r4, 0x8
    mtctr   r4
branch_0x8036eafc:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or      r6, r6, r0
branch_0x8036eb1c:
    cmpwi   r6, 0x0
    bne-    branch_0x8036ec68
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036ebcc
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036eb58
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036eafc
    b       branch_0x8036ed30

branch_0x8036eb58:
    ps_msub f13, f7, f28, f7
    addi    r8, r8, 0x10
    ps_merge00 f2, f7, f7
    addi    r7, r7, 0x20
    ps_sub  f1, f28, f29
    lwz     r5, 0x4(r8)
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036eb1c
    b       branch_0x8036ed30

branch_0x8036ebcc:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036eb1c
    b       branch_0x8036ed30

branch_0x8036ec68:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036eb1c
branch_0x8036ed30:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r7, r0, 3
    psq_l   f6, 0x80(9), 0, 0
    slwi    r4, r3, 2
    psq_l   f5, 0x40(9), 0, 0
    slwi    r6, r0, 2
    ps_add  f9, f7, f6
    add     r7, r7, r4
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036ed8c:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036ed8c
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    psq_st  f1, 0x10(4), 0, 6
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r8, 0x124(r31)
    lwz     r7, -0x5640(r13)
    addi    r9, r3, 0x8
    subi    r10, r31, 0x8
    li      r4, 0x8
    mtctr   r4
branch_0x8036ef10:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or      r6, r6, r0
branch_0x8036ef30:
    cmpwi   r6, 0x0
    bne-    branch_0x8036f07c
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(10), 0, 0
    bne-    branch_0x8036efe0
    psq_st  f4, 0x10(10), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(10), 0, 0
    bne-    branch_0x8036ef6c
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(10), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036ef10
    b       branch_0x8036f144

branch_0x8036ef6c:
    ps_msub f13, f7, f28, f7
    addi    r8, r8, 0x10
    ps_merge00 f2, f7, f7
    addi    r7, r7, 0x20
    ps_sub  f1, f28, f29
    lwz     r5, 0x4(r8)
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(10), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(10), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(10), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(10), 0, 0
    bdnz+      branch_0x8036ef30
    b       branch_0x8036f144

branch_0x8036efe0:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(10), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(10), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(10), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(10), 0, 0
    bdnz+      branch_0x8036ef30
    b       branch_0x8036f144

branch_0x8036f07c:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(10), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(10), 0, 0
    psq_stu f10, 0x8(10), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(10), 0, 0
    bdnz+      branch_0x8036ef30
branch_0x8036f144:
    lwz     r8, -0x5680(r13)
    mr      r10, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(10), 0, 0
    slwi    r7, r0, 3
    psq_l   f6, 0x80(10), 0, 0
    slwi    r9, r9, 2
    psq_l   f5, 0x40(10), 0, 0
    slwi    r6, r0, 2
    ps_add  f9, f7, f6
    add     r7, r7, r9
    psq_l   f4, 0xc0(10), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036f1a0:
    psq_l   f11, 0x20(10), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(10), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(10), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(10), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r10, r10, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(10), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(10), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(10), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(10), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036f1a0
    psq_l   f11, 0x20(10), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(10), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(10), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(10), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    psq_st  f1, 0x10(4), 0, 6
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r4, 0x110(r31)
    li      r0, 0x140
    lwz     r5, -0x5630(r13)
    stw     r4, -0x5680(r13)
    srwi    r3, r3, 1
    subi    r9, r31, 0x8
    stw     r0, -0x5660(r13)
    lbz     r0, 0x686(r5)
    slwi    r0, r0, 8
    add     r0, r5, r0
    stw     r0, -0x5640(r13)
    lwz     r8, 0x128(r31)
    lwz     r7, -0x5640(r13)
    li      r4, 0x8
    mtctr   r4
branch_0x8036f348:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r4, 0x2(r8)
    or.     r6, r6, r0
branch_0x8036f368:
    cmpwi   r6, 0x0
    bne-    branch_0x8036f4b4
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8036f418
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x8036f3a4
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8036f348
    b       branch_0x8036f57c

branch_0x8036f3a4:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x8036f368
    b       branch_0x8036f57c

branch_0x8036f418:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x8036f368
    b       branch_0x8036f57c

branch_0x8036f4b4:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x8036f368
branch_0x8036f57c:
    lwz     r8, -0x5680(r13)
    mr      r9, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r4, r3, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r4
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r4, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036f5d4:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(4), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(4), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f3, f3, f31
    add     r4, r8, r6
    bdnz+      branch_0x8036f5d4
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(4), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(4), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(4), 0, 6
    psq_st  f2, 0x8(4), 0, 6
    lwz     r0, 0x114(r31)
    lwz     r4, -0x5630(r13)
    subi    r8, r31, 0x8
    stw     r0, -0x5680(r13)
    lbz     r0, 0x68c(r4)
    slwi    r0, r0, 8
    add     r0, r4, r0
    stw     r0, -0x5640(r13)
    lwz     r9, 0x12c(r31)
    lwz     r7, -0x5640(r13)
    li      r4, 0x8
    mtctr   r4
branch_0x8036f770:
    psq_l   f7, 0x0(9), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r9)
    lwz     r0, 0x8(r9)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r9)
    lhz     r4, 0x2(r9)
    or.     r6, r6, r0
branch_0x8036f790:
    cmpwi   r6, 0x0
    bne-    branch_0x8036f8dc
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(8), 0, 0
    bne-    branch_0x8036f840
    psq_st  f4, 0x10(8), 0, 0
    cmpwi   r4, 0x0
    psq_st  f4, 0x18(8), 0, 0
    bne-    branch_0x8036f7cc
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(8), 0, 0
    addi    r9, r9, 0x10
    bdnz+      branch_0x8036f770
    b       branch_0x8036f9a4

branch_0x8036f7cc:
    addi    r9, r9, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r9)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r4, 0x2(r9)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(9), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r9)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r9)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(8), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(8), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(8), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(8), 0, 0
    bdnz+      branch_0x8036f790
    b       branch_0x8036f9a4

branch_0x8036f840:
    psq_l   f1, 0x4(9), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r9, r9, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r9)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r9)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r9)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r4, 0x2(r9)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(8), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(8), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(8), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(8), 0, 0
    bdnz+      branch_0x8036f790
    b       branch_0x8036f9a4

branch_0x8036f8dc:
    psq_l   f2, 0x4(9), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(9), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(9), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r9, r9, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r9)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r9)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r9)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r4, 0x2(r9)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(8), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(8), 0, 0
    psq_stu f10, 0x8(8), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(8), 0, 0
    bdnz+      branch_0x8036f790
branch_0x8036f9a4:
    lwz     r7, -0x5680(r13)
    mr      r8, r31
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(8), 0, 0
    slwi    r3, r3, 2
    psq_l   f6, 0x80(8), 0, 0
    slwi    r5, r0, 2
    psq_l   f5, 0x40(8), 0, 0
    mr      r6, r3
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(8), 0, 0
    ps_sub  f3, f7, f6
    add     r5, r6, r5
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r4, r7, r6
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r3, r7, r5
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8036f9fc:
    psq_l   f11, 0x20(8), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(8), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(8), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(8), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r8, r8, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(8), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(8), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(8), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(8), 0, 0
    ps_sub  f9, f9, f8
    addi    r6, r6, 0x2
    psq_st  f2, 0x0(4), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(4), 0, 6
    addi    r5, r5, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(4), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(3), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(3), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(3), 0, 6
    add     r4, r7, r6
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f3, f3, f31
    add     r3, r7, r5
    bdnz+      branch_0x8036f9fc
    psq_l   f11, 0x20(8), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(8), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(8), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(8), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(4), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(3), 0, 6
    psq_st  f3, 0x10(4), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(4), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(3), 0, 6
    psq_st  f2, 0x8(3), 0, 6
    lwz     r4, -0x5630(r13)
    lbz     r0, 0x6a9(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8036fbe8
    lhz     r3, 0x6ac(r4)
    subi    r0, r3, 0x1
    sth     r0, 0x6ac(r4)
    lwz     r3, -0x5630(r13)
    lhz     r0, 0x6ac(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8036fbe8
    lhz     r0, 0x6aa(r3)
    sth     r0, 0x6ac(r3)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6a4(r4)
    addi    r0, r3, 0x6
    clrrwi  r3, r0, 3
    addi    r0, r3, 0x1
    stw     r0, 0x6a4(r4)
    lwz     r3, -0x5630(r13)
    lwz     r0, 0x6a4(r3)
    cmplwi  r0, 0x20
    ble-    branch_0x8036fbcc
    li      r0, 0x21
    stw     r0, 0x6a4(r3)
branch_0x8036fbcc:
    lwz     r3, -0x5630(r13)
    li      r0, 0x0
    sth     r0, 0x684(r3)
    lwz     r3, -0x5630(r13)
    sth     r0, 0x68a(r3)
    lwz     r3, -0x5630(r13)
    sth     r0, 0x690(r3)
branch_0x8036fbe8:
    addi    r30, r30, 0x1
branch_0x8036fbec:
    lwz     r3, -0x5630(r13)
    clrlwi  r4, r30, 24
    lhz     r0, 0x696(r3)
    cmpw    r4, r0
    blt+    branch_0x8036e25c
    lwz     r3, 0x6b0(r3)
    li      r5, 0x2800
    lwz     r4, 0x10c(r31)
    bl      LCStoreData
    lwz     r3, -0x5630(r13)
    li      r5, 0xa00
    lwz     r4, 0x110(r31)
    lwz     r3, 0x6b4(r3)
    bl      LCStoreData
    lwz     r3, -0x5630(r13)
    li      r5, 0xa00
    lwz     r4, 0x114(r31)
    lwz     r3, 0x6b8(r3)
    bl      LCStoreData
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6b0(r4)
    addi    r0, r3, 0x2800
    stw     r0, 0x6b0(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6b4(r4)
    addi    r0, r3, 0xa00
    stw     r0, 0x6b4(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6b8(r4)
    addi    r0, r3, 0xa00
    stw     r0, 0x6b8(r4)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    lfd     f29, 0x20(sp)
    lfd     f28, 0x18(sp)
    lfd     f27, 0x10(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __THPDecompressiMCURowNxN
__THPDecompressiMCURowNxN: # 0x8036fc94
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stfd    f29, 0x28(sp)
    stfd    f28, 0x20(sp)
    stfd    f27, 0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x4160
    stw     r29, 0xc(sp)
    stw     r28, 0x8(sp)
    lwz     r3, -0x5630(r13)
    lhz     r28, 0x692(r3)
    li      r3, 0x3
    bl      LCQueueWait
    lfs     f27, 0xc30(rtoc)
    srwi    r31, r28, 1
    lfs     f28, 0xc34(rtoc)
    li      r29, 0x0
    lfs     f29, 0xc38(rtoc)
    lfs     f30, 0xc3c(rtoc)
    lfs     f31, 0xc40(rtoc)
    b       branch_0x80371684

branch_0x8036fcfc:
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x118(r30)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x11c(r30)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x120(r30)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x124(r30)
    bl      __THPHuffDecodeDCTCompY
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x128(r30)
    bl      __THPHuffDecodeDCTCompU
    lwz     r3, -0x5630(r13)
    lwz     r4, 0x12c(r30)
    bl      __THPHuffDecodeDCTCompV
    lwz     r0, 0x10c(r30)
    clrlslwi  r4, r29, 24, 4
    lwz     r5, -0x5630(r13)
    subi    r3, r30, 0x8
    stw     r0, -0x5680(r13)
    stw     r28, -0x5660(r13)
    lbz     r0, 0x680(r5)
    slwi    r0, r0, 8
    add     r0, r5, r0
    stw     r0, -0x5640(r13)
    lwz     r9, 0x118(r30)
    lwz     r8, -0x5640(r13)
    li      r5, 0x8
    mtctr   r5
branch_0x8036fd7c:
    psq_l   f7, 0x0(9), 0, 5
    psq_l   f6, 0x0(8), 0, 0
    lwz     r7, 0xc(r9)
    lwz     r0, 0x8(r9)
    ps_mul  f7, f7, f6
    lwz     r6, 0x4(r9)
    lhz     r5, 0x2(r9)
    or.     r7, r7, r0
branch_0x8036fd9c:
    cmpwi   r7, 0x0
    bne-    branch_0x8036fee8
    ps_merge00 f4, f7, f7
    cmpwi   r6, 0x0
    psq_st  f4, 0x8(3), 0, 0
    bne-    branch_0x8036fe4c
    psq_st  f4, 0x10(3), 0, 0
    cmpwi   r5, 0x0
    psq_st  f4, 0x18(3), 0, 0
    bne-    branch_0x8036fdd8
    addi    r8, r8, 0x20
    psq_stu f4, 0x20(3), 0, 0
    addi    r9, r9, 0x10
    bdnz+      branch_0x8036fd7c
    b       branch_0x8036ffb0

branch_0x8036fdd8:
    addi    r9, r9, 0x10
    ps_msub f13, f7, f28, f7
    addi    r8, r8, 0x20
    ps_merge00 f2, f7, f7
    lwz     r6, 0x4(r9)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r5, 0x2(r9)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(8), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(9), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r7, 0xc(r9)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r9)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(3), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(3), 0, 0
    ps_merge10 f10, f10, f10
    or      r7, r7, r0
    psq_stu f9, 0x8(3), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(3), 0, 0
    bdnz+      branch_0x8036fd9c
    b       branch_0x8036ffb0

branch_0x8036fe4c:
    psq_l   f1, 0x4(9), 0, 5
    psq_l   f2, 0x8(8), 0, 0
    addi    r9, r9, 0x10
    ps_mul  f1, f1, f2
    addi    r8, r8, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r7, 0xc(r9)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r9)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r6, 0x4(r9)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r5, 0x2(r9)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(8), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(3), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r7, r7, r0
    psq_stu f4, 0x8(3), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(3), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(3), 0, 0
    bdnz+      branch_0x8036fd9c
    b       branch_0x8036ffb0

branch_0x8036fee8:
    psq_l   f2, 0x4(9), 0, 5
    psq_l   f10, 0x8(8), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(9), 0, 5
    psq_l   f9, 0x10(8), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(9), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(8), 0, 0
    addi    r9, r9, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r8, r8, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r7, 0xc(r9)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r9)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r6, 0x4(r9)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r5, 0x2(r9)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(8), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(3), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(3), 0, 0
    psq_stu f10, 0x8(3), 0, 0
    or      r7, r7, r0
    psq_stu f4, 0x8(3), 0, 0
    bdnz+      branch_0x8036fd9c
branch_0x8036ffb0:
    lwz     r9, -0x5680(r13)
    mr      r3, r30
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(3), 0, 0
    slwi    r5, r4, 2
    psq_l   f6, 0x80(3), 0, 0
    slwi    r7, r0, 2
    psq_l   f5, 0x40(3), 0, 0
    mr      r8, r5
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(3), 0, 0
    ps_sub  f3, f7, f6
    add     r7, r8, r7
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r6, r9, r8
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r5, r9, r7
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x80370008:
    psq_l   f11, 0x20(3), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(3), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(3), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(3), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r3, r3, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(3), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(3), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(3), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(3), 0, 0
    ps_sub  f9, f9, f8
    addi    r8, r8, 0x2
    psq_st  f2, 0x0(6), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(6), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(6), 0, 6
    addi    r7, r7, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(6), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(5), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(5), 0, 6
    add     r6, r9, r8
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(5), 0, 6
    ps_add  f3, f3, f31
    add     r5, r9, r7
    bdnz+      branch_0x80370008
    psq_l   f11, 0x20(3), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(3), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(3), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(3), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(6), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(5), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(6), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(5), 0, 6
    psq_st  f3, 0x10(6), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(6), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(5), 0, 6
    psq_st  f2, 0x8(5), 0, 6
    lwz     r8, 0x11c(r30)
    lwz     r7, -0x5640(r13)
    addi    r10, r4, 0x8
    subi    r9, r30, 0x8
    li      r3, 0x8
    mtctr   r3
branch_0x8037018c:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r3, 0x2(r8)
    or.     r6, r6, r0
branch_0x803701ac:
    cmpwi   r6, 0x0
    bne-    branch_0x803702f8
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x8037025c
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r3, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x803701e8
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x8037018c
    b       branch_0x803703c0

branch_0x803701e8:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r3, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x803701ac
    b       branch_0x803703c0

branch_0x8037025c:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r3, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x803701ac
    b       branch_0x803703c0

branch_0x803702f8:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r3, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x803701ac
branch_0x803703c0:
    lwz     r8, -0x5680(r13)
    mr      r9, r30
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r10, r10, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r10
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r3, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x80370418:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(3), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(3), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(3), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f3, f3, f31
    add     r3, r8, r6
    bdnz+      branch_0x80370418
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(3), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(3), 0, 6
    psq_st  f2, 0x8(3), 0, 6
    lwz     r8, 0x120(r30)
    lwz     r7, -0x5640(r13)
    subi    r9, r30, 0x8
    li      r3, 0x8
    mtctr   r3
branch_0x80370598:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r3, 0x2(r8)
    or      r6, r6, r0
branch_0x803705b8:
    cmpwi   r6, 0x0
    bne-    branch_0x80370704
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x80370668
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r3, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x803705f4
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x80370598
    b       branch_0x803707cc

branch_0x803705f4:
    ps_msub f13, f7, f28, f7
    addi    r8, r8, 0x10
    ps_merge00 f2, f7, f7
    addi    r7, r7, 0x20
    ps_sub  f1, f28, f29
    lwz     r5, 0x4(r8)
    ps_msub f12, f7, f27, f13
    lhz     r3, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x803705b8
    b       branch_0x803707cc

branch_0x80370668:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r3, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x803705b8
    b       branch_0x803707cc

branch_0x80370704:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r3, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x803705b8
branch_0x803707cc:
    lwz     r8, -0x5680(r13)
    mr      r9, r30
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r7, r0, 3
    psq_l   f6, 0x80(9), 0, 0
    slwi    r3, r4, 2
    psq_l   f5, 0x40(9), 0, 0
    slwi    r6, r0, 2
    ps_add  f9, f7, f6
    add     r7, r7, r3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r3, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x80370828:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(3), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(3), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(3), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f3, f3, f31
    add     r3, r8, r6
    bdnz+      branch_0x80370828
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    psq_st  f1, 0x10(3), 0, 6
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(3), 0, 6
    psq_st  f2, 0x8(3), 0, 6
    lwz     r8, 0x124(r30)
    lwz     r7, -0x5640(r13)
    addi    r9, r4, 0x8
    subi    r10, r30, 0x8
    li      r3, 0x8
    mtctr   r3
branch_0x803709ac:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r3, 0x2(r8)
    or      r6, r6, r0
branch_0x803709cc:
    cmpwi   r6, 0x0
    bne-    branch_0x80370b18
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(10), 0, 0
    bne-    branch_0x80370a7c
    psq_st  f4, 0x10(10), 0, 0
    cmpwi   r3, 0x0
    psq_st  f4, 0x18(10), 0, 0
    bne-    branch_0x80370a08
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(10), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x803709ac
    b       branch_0x80370be0

branch_0x80370a08:
    ps_msub f13, f7, f28, f7
    addi    r8, r8, 0x10
    ps_merge00 f2, f7, f7
    addi    r7, r7, 0x20
    ps_sub  f1, f28, f29
    lwz     r5, 0x4(r8)
    ps_msub f12, f7, f27, f13
    lhz     r3, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(10), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(10), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(10), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(10), 0, 0
    bdnz+      branch_0x803709cc
    b       branch_0x80370be0

branch_0x80370a7c:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r3, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(10), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(10), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(10), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(10), 0, 0
    bdnz+      branch_0x803709cc
    b       branch_0x80370be0

branch_0x80370b18:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r3, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(10), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(10), 0, 0
    psq_stu f10, 0x8(10), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(10), 0, 0
    bdnz+      branch_0x803709cc
branch_0x80370be0:
    lwz     r8, -0x5680(r13)
    mr      r10, r30
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(10), 0, 0
    slwi    r7, r0, 3
    psq_l   f6, 0x80(10), 0, 0
    slwi    r9, r9, 2
    psq_l   f5, 0x40(10), 0, 0
    slwi    r6, r0, 2
    ps_add  f9, f7, f6
    add     r7, r7, r9
    psq_l   f4, 0xc0(10), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r3, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x80370c3c:
    psq_l   f11, 0x20(10), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(10), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(10), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(10), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r10, r10, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(10), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(10), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(10), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(10), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(3), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(3), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(3), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f3, f3, f31
    add     r3, r8, r6
    bdnz+      branch_0x80370c3c
    psq_l   f11, 0x20(10), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(10), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(10), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(10), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    psq_st  f1, 0x10(3), 0, 6
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(3), 0, 6
    psq_st  f2, 0x8(3), 0, 6
    lwz     r0, 0x110(r30)
    lwz     r3, -0x5630(r13)
    srwi    r4, r4, 1
    stw     r0, -0x5680(r13)
    subi    r9, r30, 0x8
    stw     r31, -0x5660(r13)
    lbz     r0, 0x686(r3)
    slwi    r0, r0, 8
    add     r0, r3, r0
    stw     r0, -0x5640(r13)
    lwz     r8, 0x128(r30)
    lwz     r7, -0x5640(r13)
    li      r3, 0x8
    mtctr   r3
branch_0x80370de0:
    psq_l   f7, 0x0(8), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r8)
    lwz     r0, 0x8(r8)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r8)
    lhz     r3, 0x2(r8)
    or.     r6, r6, r0
branch_0x80370e00:
    cmpwi   r6, 0x0
    bne-    branch_0x80370f4c
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(9), 0, 0
    bne-    branch_0x80370eb0
    psq_st  f4, 0x10(9), 0, 0
    cmpwi   r3, 0x0
    psq_st  f4, 0x18(9), 0, 0
    bne-    branch_0x80370e3c
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(9), 0, 0
    addi    r8, r8, 0x10
    bdnz+      branch_0x80370de0
    b       branch_0x80371014

branch_0x80370e3c:
    addi    r8, r8, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r8)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r3, 0x2(r8)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(8), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r8)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r8)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(9), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(9), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(9), 0, 0
    bdnz+      branch_0x80370e00
    b       branch_0x80371014

branch_0x80370eb0:
    psq_l   f1, 0x4(8), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r8, r8, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r8)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r8)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r3, 0x2(r8)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(9), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(9), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(9), 0, 0
    bdnz+      branch_0x80370e00
    b       branch_0x80371014

branch_0x80370f4c:
    psq_l   f2, 0x4(8), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(8), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(8), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r8, r8, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r8)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r8)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r8)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r3, 0x2(r8)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(8), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(9), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(9), 0, 0
    psq_stu f10, 0x8(9), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(9), 0, 0
    bdnz+      branch_0x80370e00
branch_0x80371014:
    lwz     r8, -0x5680(r13)
    mr      r9, r30
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(9), 0, 0
    slwi    r3, r4, 2
    psq_l   f6, 0x80(9), 0, 0
    slwi    r6, r0, 2
    psq_l   f5, 0x40(9), 0, 0
    mr      r7, r3
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f3, f7, f6
    add     r6, r7, r6
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r5, r8, r7
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r3, r8, r6
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x8037106c:
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r9, r9, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(9), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(9), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(9), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(9), 0, 0
    ps_sub  f9, f9, f8
    addi    r7, r7, 0x2
    psq_st  f2, 0x0(5), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(5), 0, 6
    addi    r6, r6, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(3), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(3), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(3), 0, 6
    add     r5, r8, r7
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f3, f3, f31
    add     r3, r8, r6
    bdnz+      branch_0x8037106c
    psq_l   f11, 0x20(9), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(9), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(9), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(9), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(5), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(5), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(3), 0, 6
    psq_st  f3, 0x10(5), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(5), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(3), 0, 6
    psq_st  f2, 0x8(3), 0, 6
    lwz     r0, 0x114(r30)
    lwz     r3, -0x5630(r13)
    subi    r8, r30, 0x8
    stw     r0, -0x5680(r13)
    lbz     r0, 0x68c(r3)
    slwi    r0, r0, 8
    add     r0, r3, r0
    stw     r0, -0x5640(r13)
    lwz     r9, 0x12c(r30)
    lwz     r7, -0x5640(r13)
    li      r3, 0x8
    mtctr   r3
branch_0x80371208:
    psq_l   f7, 0x0(9), 0, 5
    psq_l   f6, 0x0(7), 0, 0
    lwz     r6, 0xc(r9)
    lwz     r0, 0x8(r9)
    ps_mul  f7, f7, f6
    lwz     r5, 0x4(r9)
    lhz     r3, 0x2(r9)
    or.     r6, r6, r0
branch_0x80371228:
    cmpwi   r6, 0x0
    bne-    branch_0x80371374
    ps_merge00 f4, f7, f7
    cmpwi   r5, 0x0
    psq_st  f4, 0x8(8), 0, 0
    bne-    branch_0x803712d8
    psq_st  f4, 0x10(8), 0, 0
    cmpwi   r3, 0x0
    psq_st  f4, 0x18(8), 0, 0
    bne-    branch_0x80371264
    addi    r7, r7, 0x20
    psq_stu f4, 0x20(8), 0, 0
    addi    r9, r9, 0x10
    bdnz+      branch_0x80371208
    b       branch_0x8037143c

branch_0x80371264:
    addi    r9, r9, 0x10
    ps_msub f13, f7, f28, f7
    addi    r7, r7, 0x20
    ps_merge00 f2, f7, f7
    lwz     r5, 0x4(r9)
    ps_sub  f1, f28, f29
    ps_msub f12, f7, f27, f13
    lhz     r3, 0x2(r9)
    ps_merge11 f10, f7, f13
    psq_l   f6, 0x0(7), 0, 0
    ps_nmsub f11, f7, f1, f12
    ps_add  f8, f2, f10
    psq_l   f7, 0x0(9), 0, 5
    ps_merge11 f9, f12, f11
    ps_sub  f10, f2, f10
    lwz     r6, 0xc(r9)
    ps_add  f3, f2, f9
    lwz     r0, 0x8(r9)
    ps_sub  f9, f2, f9
    psq_stu f8, 0x8(8), 0, 0
    ps_merge10 f9, f9, f9
    psq_stu f3, 0x8(8), 0, 0
    ps_merge10 f10, f10, f10
    or      r6, r6, r0
    psq_stu f9, 0x8(8), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f10, 0x8(8), 0, 0
    bdnz+      branch_0x80371228
    b       branch_0x8037143c

branch_0x803712d8:
    psq_l   f1, 0x4(9), 0, 5
    psq_l   f2, 0x8(7), 0, 0
    addi    r9, r9, 0x10
    ps_mul  f1, f1, f2
    addi    r7, r7, 0x20
    ps_sub  f12, f7, f1
    ps_add  f13, f7, f1
    lwz     r6, 0xc(r9)
    ps_madd f11, f1, f27, f12
    ps_nmsub f10, f1, f27, f13
    ps_mul  f3, f12, f28
    ps_merge00 f11, f13, f11
    lwz     r0, 0x8(r9)
    ps_nmsub f9, f1, f30, f3
    ps_merge00 f10, f10, f12
    lwz     r5, 0x4(r9)
    ps_sub  f9, f9, f13
    ps_nmsub f8, f7, f29, f3
    lhz     r3, 0x2(r9)
    ps_merge11 f13, f13, f9
    ps_msub f3, f12, f27, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_add  f2, f11, f13
    ps_sub  f8, f8, f3
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f12, f3, f8
    ps_sub  f11, f11, f13
    psq_stu f2, 0x8(8), 0, 0
    ps_add  f4, f10, f12
    ps_sub  f1, f10, f12
    or      r6, r6, r0
    psq_stu f4, 0x8(8), 0, 0
    ps_merge10 f1, f1, f1
    ps_merge10 f11, f11, f11
    psq_stu f1, 0x8(8), 0, 0
    ps_mul  f7, f7, f6
    psq_stu f11, 0x8(8), 0, 0
    bdnz+      branch_0x80371228
    b       branch_0x8037143c

branch_0x80371374:
    psq_l   f2, 0x4(9), 0, 5
    psq_l   f10, 0x8(7), 0, 0
    ps_mul  f2, f2, f10
    psq_l   f13, 0x8(9), 0, 5
    psq_l   f9, 0x10(7), 0, 0
    ps_merge01 f4, f7, f2
    psq_l   f12, 0xc(9), 0, 5
    ps_merge01 f1, f2, f7
    psq_l   f8, 0x18(7), 0, 0
    addi    r9, r9, 0x10
    ps_madd f11, f13, f9, f4
    ps_nmsub f10, f13, f9, f4
    ps_madd f9, f12, f8, f1
    ps_nmsub f8, f12, f8, f1
    addi    r7, r7, 0x20
    ps_add  f4, f11, f9
    ps_sub  f12, f11, f9
    ps_msub f13, f8, f27, f9
    lwz     r6, 0xc(r9)
    ps_sub  f3, f8, f10
    ps_add  f1, f10, f13
    ps_sub  f13, f10, f13
    ps_mul  f3, f3, f28
    lwz     r0, 0x8(r9)
    ps_merge00 f1, f4, f1
    ps_nmsub f9, f10, f30, f3
    ps_msub f11, f8, f29, f3
    lwz     r5, 0x4(r9)
    ps_sub  f9, f9, f4
    ps_merge00 f13, f13, f12
    lhz     r3, 0x2(r9)
    ps_madd f10, f12, f27, f9
    ps_merge11 f8, f4, f9
    psq_l   f7, 0x0(9), 0, 5
    ps_sub  f11, f11, f10
    ps_add  f12, f1, f8
    psq_l   f6, 0x0(7), 0, 0
    ps_merge11 f11, f10, f11
    ps_sub  f4, f1, f8
    ps_mul  f7, f7, f6
    ps_add  f10, f13, f11
    ps_sub  f9, f13, f11
    ps_merge10 f10, f10, f10
    psq_stu f12, 0x8(8), 0, 0
    ps_merge10 f4, f4, f4
    psq_stu f9, 0x8(8), 0, 0
    psq_stu f10, 0x8(8), 0, 0
    or      r6, r6, r0
    psq_stu f4, 0x8(8), 0, 0
    bdnz+      branch_0x80371228
branch_0x8037143c:
    lwz     r7, -0x5680(r13)
    mr      r8, r30
    lwz     r0, -0x5660(r13)
    psq_l   f7, 0x0(8), 0, 0
    slwi    r3, r4, 2
    psq_l   f6, 0x80(8), 0, 0
    slwi    r5, r0, 2
    psq_l   f5, 0x40(8), 0, 0
    mr      r6, r3
    ps_add  f9, f7, f6
    psq_l   f4, 0xc0(8), 0, 0
    ps_sub  f3, f7, f6
    add     r5, r6, r5
    ps_add  f9, f9, f31
    li      r0, 0x3
    ps_add  f8, f5, f4
    add     r4, r7, r6
    ps_sub  f2, f5, f4
    ps_add  f4, f9, f8
    add     r3, r7, r5
    ps_add  f3, f3, f31
    mtctr   r0
branch_0x80371494:
    psq_l   f11, 0x20(8), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(8), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(8), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(8), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    addi    r8, r8, 0x8
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    psq_l   f7, 0x0(8), 0, 0
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    psq_l   f6, 0x80(8), 0, 0
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    psq_l   f5, 0x40(8), 0, 0
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_l   f4, 0xc0(8), 0, 0
    ps_sub  f9, f9, f8
    addi    r6, r6, 0x2
    psq_st  f2, 0x0(4), 0, 6
    ps_msub f11, f11, f29, f3
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f3, 0x10(4), 0, 6
    addi    r5, r5, 0x2
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(4), 0, 6
    ps_sub  f2, f13, f10
    ps_add  f9, f7, f6
    psq_st  f3, 0x0(3), 0, 6
    ps_sub  f3, f7, f6
    ps_add  f9, f9, f31
    psq_st  f2, 0x8(3), 0, 6
    ps_add  f8, f5, f4
    ps_sub  f2, f5, f4
    psq_st  f1, 0x10(3), 0, 6
    add     r4, r7, r6
    ps_add  f4, f9, f8
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f3, f3, f31
    add     r3, r7, r5
    bdnz+      branch_0x80371494
    psq_l   f11, 0x20(8), 0, 0
    ps_msub f2, f2, f27, f8
    psq_l   f10, 0x60(8), 0, 0
    ps_sub  f12, f9, f8
    ps_add  f1, f3, f2
    psq_l   f9, 0xa0(8), 0, 0
    ps_sub  f13, f3, f2
    psq_l   f8, 0xe0(8), 0, 0
    ps_add  f3, f9, f10
    ps_sub  f9, f9, f10
    ps_add  f2, f11, f8
    ps_sub  f11, f11, f8
    ps_add  f8, f2, f3
    ps_sub  f10, f2, f3
    ps_add  f3, f9, f11
    ps_add  f2, f4, f8
    ps_mul  f3, f3, f28
    ps_sub  f0, f4, f8
    ps_madd f9, f9, f30, f3
    psq_st  f2, 0x0(4), 0, 6
    ps_sub  f9, f9, f8
    ps_msub f11, f11, f29, f3
    psq_st  f0, 0x18(3), 0, 6
    ps_add  f2, f1, f9
    ps_msub f10, f10, f27, f9
    ps_sub  f1, f1, f9
    psq_st  f2, 0x8(4), 0, 6
    ps_add  f3, f13, f10
    ps_add  f11, f11, f10
    psq_st  f1, 0x10(3), 0, 6
    psq_st  f3, 0x10(4), 0, 6
    ps_sub  f2, f12, f11
    ps_add  f3, f12, f11
    psq_st  f2, 0x18(4), 0, 6
    ps_sub  f2, f13, f10
    psq_st  f3, 0x0(3), 0, 6
    psq_st  f2, 0x8(3), 0, 6
    lwz     r5, -0x5630(r13)
    lbz     r0, 0x6a9(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80371680
    lhz     r4, 0x6ac(r5)
    subi    r0, r4, 0x1
    sth     r0, 0x6ac(r5)
    lwz     r4, -0x5630(r13)
    lhz     r0, 0x6ac(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80371680
    lhz     r0, 0x6aa(r4)
    sth     r0, 0x6ac(r4)
    lwz     r4, -0x5630(r13)
    lwz     r3, 0x6a4(r4)
    addi    r0, r3, 0x6
    clrrwi  r3, r0, 3
    addi    r0, r3, 0x1
    stw     r0, 0x6a4(r4)
    lwz     r3, -0x5630(r13)
    lwz     r0, 0x6a4(r3)
    cmplwi  r0, 0x20
    ble-    branch_0x80371664
    li      r0, 0x21
    stw     r0, 0x6a4(r3)
branch_0x80371664:
    lwz     r3, -0x5630(r13)
    li      r0, 0x0
    sth     r0, 0x684(r3)
    lwz     r3, -0x5630(r13)
    sth     r0, 0x68a(r3)
    lwz     r3, -0x5630(r13)
    sth     r0, 0x690(r3)
branch_0x80371680:
    addi    r29, r29, 0x1
branch_0x80371684:
    lwz     r3, -0x5630(r13)
    clrlwi  r4, r29, 24
    lhz     r0, 0x696(r3)
    cmpw    r4, r0
    blt+    branch_0x8036fcfc
    srwi    r29, r28, 4
    lwz     r3, 0x6b0(r3)
    lwz     r4, 0x10c(r30)
    extlwi  r5, r28, 24, 4
    bl      LCStoreData
    lwz     r3, -0x5630(r13)
    slwi    r5, r29, 6
    lwz     r4, 0x110(r30)
    lwz     r3, 0x6b4(r3)
    bl      LCStoreData
    lwz     r3, -0x5630(r13)
    slwi    r5, r29, 6
    lwz     r4, 0x114(r30)
    lwz     r3, 0x6b8(r3)
    bl      LCStoreData
    lwz     r5, -0x5630(r13)
    slwi    r0, r29, 8
    slwi    r4, r29, 6
    lwz     r3, 0x6b0(r5)
    add     r0, r3, r0
    stw     r0, 0x6b0(r5)
    lwz     r3, -0x5630(r13)
    lwz     r0, 0x6b4(r3)
    add     r0, r0, r4
    stw     r0, 0x6b4(r3)
    lwz     r3, -0x5630(r13)
    lwz     r0, 0x6b8(r3)
    add     r0, r0, r4
    stw     r0, 0x6b8(r3)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    lfd     f29, 0x28(sp)
    lfd     f28, 0x20(sp)
    lfd     f27, 0x18(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __THPHuffDecodeDCTCompY
__THPHuffDecodeDCTCompY: # 0x80371740
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    dcbz    r0, r4
    lwz     r12, -0x5740(r13)
    lwz     r11, 0x6a4(r3)
    addi    r9, r12, 0x20
    lwz     r10, 0x6a0(r3)
    addi    r5, r11, 0x4
    cmpwi   r11, 0x1c
    rlwnm  r8, r10, r5, 27, 31
    bgt-    branch_0x80371834
    lbzx    r5, r12, r8
    lbzx    r9, r9, r8
    cmpwi   r5, 0xff
    beq-    branch_0x80371790
    add     r11, r11, r9
    stw     r11, 0x6a4(r3)
    b       branch_0x803719d8

branch_0x80371790:
    addi    r6, r12, 0x44
    addi    r11, r11, 0x5
    li      r0, 0x14
    li      r5, 0x5
    addi    r6, r6, 0x14
branch_0x803717a4:
    cmpwi   r11, 0x21
    slwi    r8, r8, 1
    beq-    branch_0x803717c4
    rlwnm  r9, r10, r11, 31, 31
    lwzu    r0, 0x4(r6)
    or      r8, r8, r9
    addi    r11, r11, 0x1
    b       branch_0x80371808

branch_0x803717c4:
    lwz     r9, 0x69c(r3)
    li      r11, 0x1
    lwzu    r10, 0x4(r9)
    lwzu    r0, 0x4(r6)
    stw     r9, 0x69c(r3)
    inslwi  r8, r10, 1, 31
    stw     r10, 0x6a0(r3)
    b       branch_0x803717f4

branch_0x803717e4:
    slwi    r8, r8, 1
    rlwnm  r9, r10, r11, 31, 31
    lwzu    r0, 0x4(r6)
    or      r8, r8, r9
branch_0x803717f4:
    cmpw    r8, r0
    addi    r11, r11, 0x1
    addi    r5, r5, 0x1
    bgt+    branch_0x803717e4
    b       branch_0x80371814

branch_0x80371808:
    cmpw    r8, r0
    addi    r5, r5, 0x1
    bgt+    branch_0x803717a4
branch_0x80371814:
    stw     r11, 0x6a4(r3)
    slwi    r0, r5, 2
    add     r5, r12, r0
    lwz     r6, 0x40(r12)
    lwz     r0, 0x8c(r5)
    add     r0, r0, r6
    lbzx    r5, r8, r0
    b       branch_0x803719d8

branch_0x80371834:
    cmpwi   r11, 0x21
    lwz     r8, 0x69c(r3)
    beq-    branch_0x803718f0
    cmpwi   r11, 0x20
    rlwnm  r5, r10, r5, 27, 31
    beq-    branch_0x80371874
    lbzx    r8, r12, r5
    lbzx    r9, r9, r5
    cmpwi   r8, 0xff
    add     r5, r11, r9
    beq-    branch_0x80371954
    cmpwi   r5, 0x21
    stw     r5, 0x6a4(r3)
    bgt-    branch_0x80371954
    mr      r5, r8
    b       branch_0x803719d8

branch_0x80371874:
    lwzu    r10, 0x4(r8)
    stw     r8, 0x69c(r3)
    inslwi  r5, r10, 4, 28
    lbzx    r8, r12, r5
    lbzx    r9, r9, r5
    stw     r10, 0x6a0(r3)
    cmpwi   r8, 0xff
    stw     r9, 0x6a4(r3)
    beq-    branch_0x803718a0
    mr      r5, r8
    b       branch_0x803719d8

branch_0x803718a0:
    addi    r6, r12, 0x44
    li      r11, 0x14
    addi    r6, r6, 0x14
    slwi    r8, r5, 27
    li      r11, 0x5
    inslwi  r8, r10, 31, 1
branch_0x803718b8:
    subfic  r10, r11, 0x1f
    lwzu    r0, 0x4(r6)
    srw     r5, r8, r10
    cmpw    r5, r0
    addi    r11, r11, 0x1
    bgt+    branch_0x803718b8
    stw     r11, 0x6a4(r3)
branch_0x803718d4:
    slwi    r0, r11, 2
    lwz     r7, 0x40(r12)
    add     r6, r12, r0
    lwz     r0, 0x8c(r6)
    add     r0, r0, r7
    lbzx    r5, r5, r0
    b       branch_0x803719d8

branch_0x803718f0:
    lwzu    r10, 0x4(r8)
    srwi    r5, r10, 27
    stw     r8, 0x69c(r3)
    lbzx    r11, r12, r5
    lbzx    r9, r9, r5
    cmpwi   r11, 0xff
    stw     r10, 0x6a0(r3)
    addi    r9, r9, 0x1
    beq-    branch_0x80371920
    stw     r9, 0x6a4(r3)
    mr      r5, r11
    b       branch_0x803719d8

branch_0x80371920:
    li      r11, 0x5
    li      r6, 0x14
branch_0x80371928:
    subfic  r8, r11, 0x1f
    addi    r11, r11, 0x1
    addi    r6, r6, 0x4
    srw     r5, r10, r8
    add     r7, r12, r6
    lwz     r0, 0x44(r7)
    cmpw    r5, r0
    bgt+    branch_0x80371928
    addi    r0, r11, 0x1
    stw     r0, 0x6a4(r3)
    b       branch_0x803718d4

branch_0x80371954:
    subfic  r0, r11, 0x21
    li      r5, -0x1
    slw     r7, r5, r0
    andc    r5, r10, r7
    addi    r7, r12, 0x44
    lwz     r8, 0x69c(r3)
    subfic  r6, r11, 0x21
    addi    r11, r6, 0x1
    slwi    r6, r6, 2
    lwzu    r10, 0x4(r8)
    add     r7, r7, r6
    stw     r8, 0x69c(r3)
    slwi    r5, r5, 1
    stw     r10, 0x6a0(r3)
    inslwi  r5, r10, 1, 31
    lwzu    r6, 0x4(r7)
    li      r8, 0x2
    b       branch_0x803719b0

branch_0x8037199c:
    slwi    r5, r5, 1
    addi    r11, r11, 0x1
    lwzu    r6, 0x4(r7)
    add     r5, r5, r9
    addi    r8, r8, 0x1
branch_0x803719b0:
    cmpw    r5, r6
    rlwnm  r9, r10, r8, 31, 31
    bgt+    branch_0x8037199c
    stw     r8, 0x6a4(r3)
    slwi    r0, r11, 2
    add     r6, r12, r0
    lwz     r7, 0x40(r12)
    lwz     r0, 0x8c(r6)
    add     r0, r0, r7
    lbzx    r5, r5, r0
branch_0x803719d8:
    li      r0, 0x20
    dcbz    r4, r0
    li      r7, 0x0
    li      r0, 0x40
    dcbz    r4, r0
    cmpwi   r5, 0x0
    beq-    branch_0x80371a74
    lwz     r7, 0x6a4(r3)
    subfic  r8, r7, 0x21
    lwz     r6, 0x6a0(r3)
    subfc.  r9, r8, r5
    subi    r10, r7, 0x1
    bgt-    branch_0x80371a24
    add     r0, r7, r5
    slw     r7, r6, r10
    stw     r0, 0x6a4(r3)
    subfic  r0, r5, 0x20
    srw     r7, r7, r0
    b       branch_0x80371a50

branch_0x80371a24:
    lwz     r7, 0x69c(r3)
    slw     r0, r6, r10
    lwzu    r6, 0x4(r7)
    addi    r9, r9, 0x1
    stw     r6, 0x6a0(r3)
    srw     r6, r6, r8
    stw     r7, 0x69c(r3)
    add     r0, r6, r0
    stw     r9, 0x6a4(r3)
    subfic  r9, r5, 0x20
    srw     r7, r0, r9
branch_0x80371a50:
    extsh   r0, r7
    cntlzw  r6, r0
    subfic  r0, r5, 0x20
    cmpw    r6, r0
    ble-    branch_0x80371a74
    li      r0, -0x1
    slw     r0, r0, r5
    add     r7, r0, r7
    addi    r7, r7, 0x1
branch_0x80371a74:
    li      r0, 0x60
    dcbz    r4, r0
    lha     r0, 0x684(r3)
    add     r0, r0, r7
    sth     r0, 0x684(r3)
    sth     r0, 0x0(r4)
    lwz     r8, -0x56e0(r13)
    lwz     r6, 0x6a4(r3)
    addi    r7, r8, 0x20
    lwz     r0, 0x6a0(r3)
    li      r5, 0x1
    lis     r9, 0x803b
    subi    r10, r9, 0x4a38
    b       branch_0x80371d98

branch_0x80371aac:
    addi    r31, r6, 0x4
    cmpwi   r6, 0x1c
    rlwnm  r12, r0, r31, 27, 31
    bgt-    branch_0x80371b70
    lbzx    r30, r8, r12
    lbzx    r31, r7, r12
    cmpwi   r30, 0xff
    beq-    branch_0x80371ad4
    add     r6, r6, r31
    b       branch_0x80371cf8

branch_0x80371ad4:
    addi    r6, r6, 0x5
    addi    r9, r8, 0x44
    li      r11, 0x14
    li      r31, 0x5
    addi    r9, r9, 0x14
branch_0x80371ae8:
    cmpwi   r6, 0x21
    slwi    r12, r12, 1
    beq-    branch_0x80371b08
    rlwnm  r30, r0, r6, 31, 31
    lwzu    r11, 0x4(r9)
    or      r12, r12, r30
    addi    r6, r6, 0x1
    b       branch_0x80371b48

branch_0x80371b08:
    lwz     r30, 0x69c(r3)
    li      r6, 0x1
    lwzu    r0, 0x4(r30)
    lwzu    r11, 0x4(r9)
    stw     r30, 0x69c(r3)
    inslwi  r12, r0, 1, 31
    b       branch_0x80371b34

branch_0x80371b24:
    slwi    r12, r12, 1
    rlwnm  r30, r0, r6, 31, 31
    lwzu    r11, 0x4(r9)
    or      r12, r12, r30
branch_0x80371b34:
    cmpw    r12, r11
    addi    r6, r6, 0x1
    addi    r31, r31, 0x1
    bgt+    branch_0x80371b24
    b       branch_0x80371b54

branch_0x80371b48:
    cmpw    r12, r11
    addi    r31, r31, 0x1
    bgt+    branch_0x80371ae8
branch_0x80371b54:
    slwi    r9, r31, 2
    lwz     r11, 0x40(r8)
    add     r9, r8, r9
    lwz     r9, 0x8c(r9)
    add     r9, r9, r11
    lbzx    r30, r12, r9
    b       branch_0x80371cf8

branch_0x80371b70:
    cmpwi   r6, 0x21
    lwz     r12, 0x69c(r3)
    beq-    branch_0x80371bac
    cmpwi   r6, 0x20
    rlwnm  r31, r0, r31, 27, 31
    beq-    branch_0x80371c10
    lbzx    r30, r8, r31
    lbzx    r29, r7, r31
    cmpwi   r30, 0xff
    add     r31, r6, r29
    beq-    branch_0x80371c7c
    cmpwi   r31, 0x21
    bgt-    branch_0x80371c7c
    mr      r6, r31
    b       branch_0x80371cf8

branch_0x80371bac:
    lwzu    r0, 0x4(r12)
    srwi    r31, r0, 27
    stw     r12, 0x69c(r3)
    lbzx    r30, r8, r31
    lbzx    r12, r7, r31
    cmpwi   r30, 0xff
    addi    r6, r12, 0x1
    beq-    branch_0x80371bd0
    b       branch_0x80371cf8

branch_0x80371bd0:
    li      r30, 0x5
    li      r6, 0x14
branch_0x80371bd8:
    subfic  r12, r30, 0x1f
    addi    r30, r30, 0x1
    addi    r6, r6, 0x4
    srw     r31, r0, r12
    add     r12, r8, r6
    lwz     r9, 0x44(r12)
    cmpw    r31, r9
    bgt+    branch_0x80371bd8
    lwz     r11, 0x40(r8)
    addi    r6, r30, 0x1
    lwz     r9, 0x8c(r12)
    add     r9, r9, r11
    lbzx    r30, r31, r9
    b       branch_0x80371cf8

branch_0x80371c10:
    lwzu    r0, 0x4(r12)
    stw     r12, 0x69c(r3)
    inslwi  r31, r0, 4, 28
    lbzx    r30, r8, r31
    lbzx    r6, r7, r31
    cmpwi   r30, 0xff
    beq-    branch_0x80371c30
    b       branch_0x80371cf8

branch_0x80371c30:
    addi    r9, r8, 0x44
    li      r6, 0x14
    addi    r9, r9, 0x14
    slwi    r12, r31, 27
    li      r6, 0x5
    inslwi  r12, r0, 31, 1
branch_0x80371c48:
    subfic  r30, r6, 0x1f
    lwzu    r11, 0x4(r9)
    srw     r31, r12, r30
    cmpw    r31, r11
    addi    r6, r6, 0x1
    bgt+    branch_0x80371c48
    slwi    r9, r6, 2
    lwz     r11, 0x40(r8)
    add     r9, r8, r9
    lwz     r9, 0x8c(r9)
    add     r9, r9, r11
    lbzx    r30, r31, r9
    b       branch_0x80371cf8

branch_0x80371c7c:
    subfic  r9, r6, 0x21
    li      r11, -0x1
    slw     r9, r11, r9
    andc    r31, r0, r9
    addi    r9, r8, 0x44
    lwz     r12, 0x69c(r3)
    subfic  r11, r6, 0x21
    addi    r30, r11, 0x1
    slwi    r11, r11, 2
    lwzu    r0, 0x4(r12)
    add     r9, r9, r11
    stw     r12, 0x69c(r3)
    slwi    r31, r31, 1
    inslwi  r31, r0, 1, 31
    lwzu    r11, 0x4(r9)
    li      r6, 0x2
    b       branch_0x80371cd4

branch_0x80371cc0:
    slwi    r31, r31, 1
    addi    r30, r30, 0x1
    lwzu    r11, 0x4(r9)
    add     r31, r31, r29
    addi    r6, r6, 0x1
branch_0x80371cd4:
    cmpw    r31, r11
    rlwnm  r29, r0, r6, 31, 31
    bgt+    branch_0x80371cc0
    slwi    r9, r30, 2
    lwz     r11, 0x40(r8)
    add     r9, r8, r9
    lwz     r9, 0x8c(r9)
    add     r9, r9, r11
    lbzx    r30, r31, r9
branch_0x80371cf8:
    andi.   r29, r30, 0xf
    srawi   r30, r30, 4
    beq-    branch_0x80371d88
    add     r5, r5, r30
    subfic  r31, r6, 0x21
    subfc.  r12, r31, r29
    subi    r9, r6, 0x1
    bgt-    branch_0x80371d2c
    add     r6, r6, r29
    slw     r11, r0, r9
    subfic  r9, r29, 0x20
    srw     r30, r11, r9
    b       branch_0x80371d50

branch_0x80371d2c:
    lwz     r11, 0x69c(r3)
    slw     r9, r0, r9
    lwzu    r0, 0x4(r11)
    addi    r6, r12, 0x1
    stw     r11, 0x69c(r3)
    srw     r11, r0, r31
    add     r9, r11, r9
    subfic  r12, r29, 0x20
    srw     r30, r9, r12
branch_0x80371d50:
    cntlzw  r11, r30
    subfic  r9, r29, 0x20
    cmpw    r11, r9
    ble-    branch_0x80371d70
    li      r9, -0x1
    slw     r9, r9, r29
    add     r30, r9, r30
    addi    r30, r30, 0x1
branch_0x80371d70:
    add     r9, r10, r5
    lbz     r9, 0x0(r9)
    extsh   r11, r30
    slwi    r9, r9, 1
    sthx    r11, r4, r9
    b       branch_0x80371d94

branch_0x80371d88:
    cmpwi   r30, 0xf
    bne-    branch_0x80371da0
    addi    r5, r5, 0xf
branch_0x80371d94:
    addi    r5, r5, 0x1
branch_0x80371d98:
    cmpwi   r5, 0x40
    blt+    branch_0x80371aac
branch_0x80371da0:
    stw     r6, 0x6a4(r3)
    stw     r0, 0x6a0(r3)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __THPHuffDecodeDCTCompU
__THPHuffDecodeDCTCompU: # 0x80371dbc
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    dcbz    r0, r4
    lwz     r12, -0x5720(r13)
    lwz     r11, 0x6a4(r3)
    addi    r9, r12, 0x20
    lwz     r10, 0x6a0(r3)
    addi    r5, r11, 0x4
    cmpwi   r11, 0x1c
    rlwnm  r8, r10, r5, 27, 31
    bgt-    branch_0x80371eac
    lbzx    r5, r12, r8
    lbzx    r9, r9, r8
    cmpwi   r5, 0xff
    beq-    branch_0x80371e08
    add     r11, r11, r9
    stw     r11, 0x6a4(r3)
    b       branch_0x80372050

branch_0x80371e08:
    addi    r6, r12, 0x44
    addi    r11, r11, 0x5
    li      r0, 0x14
    li      r5, 0x5
    addi    r6, r6, 0x14
branch_0x80371e1c:
    cmpwi   r11, 0x21
    slwi    r8, r8, 1
    beq-    branch_0x80371e3c
    rlwnm  r9, r10, r11, 31, 31
    lwzu    r0, 0x4(r6)
    or      r8, r8, r9
    addi    r11, r11, 0x1
    b       branch_0x80371e80

branch_0x80371e3c:
    lwz     r9, 0x69c(r3)
    li      r11, 0x1
    lwzu    r10, 0x4(r9)
    lwzu    r0, 0x4(r6)
    stw     r9, 0x69c(r3)
    inslwi  r8, r10, 1, 31
    stw     r10, 0x6a0(r3)
    b       branch_0x80371e6c

branch_0x80371e5c:
    slwi    r8, r8, 1
    rlwnm  r9, r10, r11, 31, 31
    lwzu    r0, 0x4(r6)
    or      r8, r8, r9
branch_0x80371e6c:
    cmpw    r8, r0
    addi    r11, r11, 0x1
    addi    r5, r5, 0x1
    bgt+    branch_0x80371e5c
    b       branch_0x80371e8c

branch_0x80371e80:
    cmpw    r8, r0
    addi    r5, r5, 0x1
    bgt+    branch_0x80371e1c
branch_0x80371e8c:
    stw     r11, 0x6a4(r3)
    slwi    r0, r5, 2
    add     r5, r12, r0
    lwz     r6, 0x40(r12)
    lwz     r0, 0x8c(r5)
    add     r0, r0, r6
    lbzx    r5, r8, r0
    b       branch_0x80372050

branch_0x80371eac:
    cmpwi   r11, 0x21
    lwz     r8, 0x69c(r3)
    beq-    branch_0x80371f68
    cmpwi   r11, 0x20
    rlwnm  r5, r10, r5, 27, 31
    beq-    branch_0x80371eec
    lbzx    r8, r12, r5
    lbzx    r9, r9, r5
    cmpwi   r8, 0xff
    add     r5, r11, r9
    beq-    branch_0x80371fcc
    cmpwi   r5, 0x21
    stw     r5, 0x6a4(r3)
    bgt-    branch_0x80371fcc
    mr      r5, r8
    b       branch_0x80372050

branch_0x80371eec:
    lwzu    r10, 0x4(r8)
    stw     r8, 0x69c(r3)
    inslwi  r5, r10, 4, 28
    lbzx    r8, r12, r5
    lbzx    r9, r9, r5
    stw     r10, 0x6a0(r3)
    cmpwi   r8, 0xff
    stw     r9, 0x6a4(r3)
    beq-    branch_0x80371f18
    mr      r5, r8
    b       branch_0x80372050

branch_0x80371f18:
    addi    r6, r12, 0x44
    li      r11, 0x14
    addi    r6, r6, 0x14
    slwi    r8, r5, 27
    li      r11, 0x5
    inslwi  r8, r10, 31, 1
branch_0x80371f30:
    subfic  r10, r11, 0x1f
    lwzu    r0, 0x4(r6)
    srw     r5, r8, r10
    cmpw    r5, r0
    addi    r11, r11, 0x1
    bgt+    branch_0x80371f30
    stw     r11, 0x6a4(r3)
branch_0x80371f4c:
    slwi    r0, r11, 2
    lwz     r7, 0x40(r12)
    add     r6, r12, r0
    lwz     r0, 0x8c(r6)
    add     r0, r0, r7
    lbzx    r5, r5, r0
    b       branch_0x80372050

branch_0x80371f68:
    lwzu    r10, 0x4(r8)
    srwi    r5, r10, 27
    stw     r8, 0x69c(r3)
    lbzx    r11, r12, r5
    lbzx    r9, r9, r5
    cmpwi   r11, 0xff
    stw     r10, 0x6a0(r3)
    addi    r9, r9, 0x1
    beq-    branch_0x80371f98
    stw     r9, 0x6a4(r3)
    mr      r5, r11
    b       branch_0x80372050

branch_0x80371f98:
    li      r11, 0x5
    li      r6, 0x14
branch_0x80371fa0:
    subfic  r8, r11, 0x1f
    addi    r11, r11, 0x1
    addi    r6, r6, 0x4
    srw     r5, r10, r8
    add     r7, r12, r6
    lwz     r0, 0x44(r7)
    cmpw    r5, r0
    bgt+    branch_0x80371fa0
    addi    r0, r11, 0x1
    stw     r0, 0x6a4(r3)
    b       branch_0x80371f4c

branch_0x80371fcc:
    subfic  r0, r11, 0x21
    li      r5, -0x1
    slw     r7, r5, r0
    andc    r5, r10, r7
    addi    r7, r12, 0x44
    lwz     r8, 0x69c(r3)
    subfic  r6, r11, 0x21
    addi    r11, r6, 0x1
    slwi    r6, r6, 2
    lwzu    r10, 0x4(r8)
    add     r7, r7, r6
    stw     r8, 0x69c(r3)
    slwi    r5, r5, 1
    stw     r10, 0x6a0(r3)
    inslwi  r5, r10, 1, 31
    lwzu    r6, 0x4(r7)
    li      r8, 0x2
    b       branch_0x80372028

branch_0x80372014:
    slwi    r5, r5, 1
    addi    r11, r11, 0x1
    lwzu    r6, 0x4(r7)
    add     r5, r5, r9
    addi    r8, r8, 0x1
branch_0x80372028:
    cmpw    r5, r6
    rlwnm  r9, r10, r8, 31, 31
    bgt+    branch_0x80372014
    stw     r8, 0x6a4(r3)
    slwi    r0, r11, 2
    add     r6, r12, r0
    lwz     r7, 0x40(r12)
    lwz     r0, 0x8c(r6)
    add     r0, r0, r7
    lbzx    r5, r5, r0
branch_0x80372050:
    li      r0, 0x20
    dcbz    r4, r0
    li      r7, 0x0
    li      r0, 0x40
    dcbz    r4, r0
    cmpwi   r5, 0x0
    beq-    branch_0x803720ec
    lwz     r9, 0x6a4(r3)
    subfic  r10, r9, 0x21
    lwz     r7, 0x6a0(r3)
    subfc.  r11, r10, r5
    subi    r12, r9, 0x1
    bgt-    branch_0x8037209c
    add     r0, r9, r5
    slw     r9, r7, r12
    stw     r0, 0x6a4(r3)
    subfic  r0, r5, 0x20
    srw     r7, r9, r0
    b       branch_0x803720c8

branch_0x8037209c:
    lwz     r9, 0x69c(r3)
    slw     r0, r7, r12
    lwzu    r7, 0x4(r9)
    addi    r11, r11, 0x1
    stw     r7, 0x6a0(r3)
    srw     r7, r7, r10
    stw     r9, 0x69c(r3)
    add     r0, r7, r0
    stw     r11, 0x6a4(r3)
    subfic  r11, r5, 0x20
    srw     r7, r0, r11
branch_0x803720c8:
    extsh   r0, r7
    cntlzw  r6, r0
    subfic  r0, r5, 0x20
    cmpw    r6, r0
    ble-    branch_0x803720ec
    li      r0, -0x1
    slw     r0, r0, r5
    add     r7, r0, r7
    addi    r7, r7, 0x1
branch_0x803720ec:
    li      r0, 0x60
    dcbz    r4, r0
    lha     r0, 0x68a(r3)
    lis     r5, 0x803b
    subi    r8, r5, 0x4a38
    add     r0, r0, r7
    sth     r0, 0x68a(r3)
    li      r6, 0x1
    sth     r0, 0x0(r4)
    b       branch_0x8037244c

branch_0x80372114:
    lwz     r30, -0x56c0(r13)
    lwz     r31, 0x6a4(r3)
    addi    r11, r30, 0x20
    lwz     r12, 0x6a0(r3)
    addi    r5, r31, 0x4
    cmpwi   r31, 0x1c
    rlwnm  r10, r12, r5, 27, 31
    bgt-    branch_0x803721f4
    lbzx    r5, r30, r10
    lbzx    r11, r11, r10
    cmpwi   r5, 0xff
    beq-    branch_0x80372150
    add     r31, r31, r11
    stw     r31, 0x6a4(r3)
    b       branch_0x80372398

branch_0x80372150:
    addi    r7, r30, 0x44
    addi    r31, r31, 0x5
    li      r0, 0x14
    li      r5, 0x5
    addi    r7, r7, 0x14
branch_0x80372164:
    cmpwi   r31, 0x21
    slwi    r10, r10, 1
    beq-    branch_0x80372184
    rlwnm  r11, r12, r31, 31, 31
    lwzu    r0, 0x4(r7)
    or      r10, r10, r11
    addi    r31, r31, 0x1
    b       branch_0x803721c8

branch_0x80372184:
    lwz     r11, 0x69c(r3)
    li      r31, 0x1
    lwzu    r12, 0x4(r11)
    lwzu    r0, 0x4(r7)
    stw     r11, 0x69c(r3)
    inslwi  r10, r12, 1, 31
    stw     r12, 0x6a0(r3)
    b       branch_0x803721b4

branch_0x803721a4:
    slwi    r10, r10, 1
    rlwnm  r11, r12, r31, 31, 31
    lwzu    r0, 0x4(r7)
    or      r10, r10, r11
branch_0x803721b4:
    cmpw    r10, r0
    addi    r31, r31, 0x1
    addi    r5, r5, 0x1
    bgt+    branch_0x803721a4
    b       branch_0x803721d4

branch_0x803721c8:
    cmpw    r10, r0
    addi    r5, r5, 0x1
    bgt+    branch_0x80372164
branch_0x803721d4:
    stw     r31, 0x6a4(r3)
    slwi    r0, r5, 2
    add     r5, r30, r0
    lwz     r7, 0x40(r30)
    lwz     r0, 0x8c(r5)
    add     r0, r0, r7
    lbzx    r5, r10, r0
    b       branch_0x80372398

branch_0x803721f4:
    cmpwi   r31, 0x21
    lwz     r10, 0x69c(r3)
    beq-    branch_0x803722b0
    cmpwi   r31, 0x20
    rlwnm  r5, r12, r5, 27, 31
    beq-    branch_0x80372234
    lbzx    r10, r30, r5
    lbzx    r11, r11, r5
    cmpwi   r10, 0xff
    add     r5, r31, r11
    beq-    branch_0x80372314
    cmpwi   r5, 0x21
    stw     r5, 0x6a4(r3)
    bgt-    branch_0x80372314
    mr      r5, r10
    b       branch_0x80372398

branch_0x80372234:
    lwzu    r12, 0x4(r10)
    stw     r10, 0x69c(r3)
    inslwi  r5, r12, 4, 28
    lbzx    r10, r30, r5
    lbzx    r11, r11, r5
    stw     r12, 0x6a0(r3)
    cmpwi   r10, 0xff
    stw     r11, 0x6a4(r3)
    beq-    branch_0x80372260
    mr      r5, r10
    b       branch_0x80372398

branch_0x80372260:
    addi    r7, r30, 0x44
    li      r31, 0x14
    addi    r7, r7, 0x14
    slwi    r10, r5, 27
    li      r31, 0x5
    inslwi  r10, r12, 31, 1
branch_0x80372278:
    subfic  r12, r31, 0x1f
    lwzu    r0, 0x4(r7)
    srw     r5, r10, r12
    cmpw    r5, r0
    addi    r31, r31, 0x1
    bgt+    branch_0x80372278
    stw     r31, 0x6a4(r3)
branch_0x80372294:
    slwi    r0, r31, 2
    lwz     r9, 0x40(r30)
    add     r7, r30, r0
    lwz     r0, 0x8c(r7)
    add     r0, r0, r9
    lbzx    r5, r5, r0
    b       branch_0x80372398

branch_0x803722b0:
    lwzu    r12, 0x4(r10)
    srwi    r5, r12, 27
    stw     r10, 0x69c(r3)
    lbzx    r31, r30, r5
    lbzx    r11, r11, r5
    cmpwi   r31, 0xff
    stw     r12, 0x6a0(r3)
    addi    r11, r11, 0x1
    beq-    branch_0x803722e0
    stw     r11, 0x6a4(r3)
    mr      r5, r31
    b       branch_0x80372398

branch_0x803722e0:
    li      r31, 0x5
    li      r7, 0x14
branch_0x803722e8:
    subfic  r10, r31, 0x1f
    addi    r31, r31, 0x1
    addi    r7, r7, 0x4
    srw     r5, r12, r10
    add     r9, r30, r7
    lwz     r0, 0x44(r9)
    cmpw    r5, r0
    bgt+    branch_0x803722e8
    addi    r0, r31, 0x1
    stw     r0, 0x6a4(r3)
    b       branch_0x80372294

branch_0x80372314:
    subfic  r0, r31, 0x21
    li      r5, -0x1
    slw     r9, r5, r0
    andc    r5, r12, r9
    addi    r9, r30, 0x44
    lwz     r10, 0x69c(r3)
    subfic  r7, r31, 0x21
    addi    r31, r7, 0x1
    slwi    r7, r7, 2
    lwzu    r12, 0x4(r10)
    add     r9, r9, r7
    stw     r10, 0x69c(r3)
    slwi    r5, r5, 1
    stw     r12, 0x6a0(r3)
    inslwi  r5, r12, 1, 31
    lwzu    r7, 0x4(r9)
    li      r10, 0x2
    b       branch_0x80372370

branch_0x8037235c:
    slwi    r5, r5, 1
    addi    r31, r31, 0x1
    lwzu    r7, 0x4(r9)
    add     r5, r5, r11
    addi    r10, r10, 0x1
branch_0x80372370:
    cmpw    r5, r7
    rlwnm  r11, r12, r10, 31, 31
    bgt+    branch_0x8037235c
    stw     r10, 0x6a4(r3)
    slwi    r0, r31, 2
    add     r7, r30, r0
    lwz     r9, 0x40(r30)
    lwz     r0, 0x8c(r7)
    add     r0, r0, r9
    lbzx    r5, r5, r0
branch_0x80372398:
    clrlwi. r30, r5, 28
    srawi   r7, r5, 4
    beq-    branch_0x8037243c
    add     r6, r6, r7
    lwz     r9, 0x6a4(r3)
    subfic  r10, r9, 0x21
    lwz     r7, 0x6a0(r3)
    subf.   r11, r10, r30
    subi    r12, r9, 0x1
    bgt-    branch_0x803723d8
    add     r0, r9, r30
    slw     r9, r7, r12
    stw     r0, 0x6a4(r3)
    subfic  r0, r30, 0x20
    srw     r7, r9, r0
    b       branch_0x80372404

branch_0x803723d8:
    lwz     r9, 0x69c(r3)
    slw     r0, r7, r12
    lwzu    r7, 0x4(r9)
    addi    r11, r11, 0x1
    stw     r7, 0x6a0(r3)
    srw     r7, r7, r10
    stw     r9, 0x69c(r3)
    add     r0, r7, r0
    stw     r11, 0x6a4(r3)
    subfic  r11, r30, 0x20
    srw     r7, r0, r11
branch_0x80372404:
    cntlzw  r5, r7
    subfic  r0, r30, 0x20
    cmpw    r5, r0
    ble-    branch_0x80372424
    li      r0, -0x1
    slw     r0, r0, r30
    add     r7, r0, r7
    addi    r7, r7, 0x1
branch_0x80372424:
    add     r5, r8, r6
    lbz     r0, 0x0(r5)
    extsh   r5, r7
    slwi    r0, r0, 1
    sthx    r5, r4, r0
    b       branch_0x80372448

branch_0x8037243c:
    cmpwi   r7, 0xf
    bne-    branch_0x80372454
    addi    r6, r6, 0xf
branch_0x80372448:
    addi    r6, r6, 0x1
branch_0x8037244c:
    cmpwi   r6, 0x40
    blt+    branch_0x80372114
branch_0x80372454:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl __THPHuffDecodeDCTCompV
__THPHuffDecodeDCTCompV: # 0x80372464
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    dcbz    r0, r4
    lwz     r12, -0x5700(r13)
    lwz     r11, 0x6a4(r3)
    addi    r9, r12, 0x20
    lwz     r10, 0x6a0(r3)
    addi    r5, r11, 0x4
    cmpwi   r11, 0x1c
    rlwnm  r8, r10, r5, 27, 31
    bgt-    branch_0x80372554
    lbzx    r5, r12, r8
    lbzx    r9, r9, r8
    cmpwi   r5, 0xff
    beq-    branch_0x803724b0
    add     r11, r11, r9
    stw     r11, 0x6a4(r3)
    b       branch_0x803726f8

branch_0x803724b0:
    addi    r6, r12, 0x44
    addi    r11, r11, 0x5
    li      r0, 0x14
    li      r5, 0x5
    addi    r6, r6, 0x14
branch_0x803724c4:
    cmpwi   r11, 0x21
    slwi    r8, r8, 1
    beq-    branch_0x803724e4
    rlwnm  r9, r10, r11, 31, 31
    lwzu    r0, 0x4(r6)
    or      r8, r8, r9
    addi    r11, r11, 0x1
    b       branch_0x80372528

branch_0x803724e4:
    lwz     r9, 0x69c(r3)
    li      r11, 0x1
    lwzu    r10, 0x4(r9)
    lwzu    r0, 0x4(r6)
    stw     r9, 0x69c(r3)
    inslwi  r8, r10, 1, 31
    stw     r10, 0x6a0(r3)
    b       branch_0x80372514

branch_0x80372504:
    slwi    r8, r8, 1
    rlwnm  r9, r10, r11, 31, 31
    lwzu    r0, 0x4(r6)
    or      r8, r8, r9
branch_0x80372514:
    cmpw    r8, r0
    addi    r11, r11, 0x1
    addi    r5, r5, 0x1
    bgt+    branch_0x80372504
    b       branch_0x80372534

branch_0x80372528:
    cmpw    r8, r0
    addi    r5, r5, 0x1
    bgt+    branch_0x803724c4
branch_0x80372534:
    stw     r11, 0x6a4(r3)
    slwi    r0, r5, 2
    add     r5, r12, r0
    lwz     r6, 0x40(r12)
    lwz     r0, 0x8c(r5)
    add     r0, r0, r6
    lbzx    r5, r8, r0
    b       branch_0x803726f8

branch_0x80372554:
    cmpwi   r11, 0x21
    lwz     r8, 0x69c(r3)
    beq-    branch_0x80372610
    cmpwi   r11, 0x20
    rlwnm  r5, r10, r5, 27, 31
    beq-    branch_0x80372594
    lbzx    r8, r12, r5
    lbzx    r9, r9, r5
    cmpwi   r8, 0xff
    add     r5, r11, r9
    beq-    branch_0x80372674
    cmpwi   r5, 0x21
    stw     r5, 0x6a4(r3)
    bgt-    branch_0x80372674
    mr      r5, r8
    b       branch_0x803726f8

branch_0x80372594:
    lwzu    r10, 0x4(r8)
    stw     r8, 0x69c(r3)
    inslwi  r5, r10, 4, 28
    lbzx    r8, r12, r5
    lbzx    r9, r9, r5
    stw     r10, 0x6a0(r3)
    cmpwi   r8, 0xff
    stw     r9, 0x6a4(r3)
    beq-    branch_0x803725c0
    mr      r5, r8
    b       branch_0x803726f8

branch_0x803725c0:
    addi    r6, r12, 0x44
    li      r11, 0x14
    addi    r6, r6, 0x14
    slwi    r8, r5, 27
    li      r11, 0x5
    inslwi  r8, r10, 31, 1
branch_0x803725d8:
    subfic  r10, r11, 0x1f
    lwzu    r0, 0x4(r6)
    srw     r5, r8, r10
    cmpw    r5, r0
    addi    r11, r11, 0x1
    bgt+    branch_0x803725d8
    stw     r11, 0x6a4(r3)
branch_0x803725f4:
    slwi    r0, r11, 2
    lwz     r7, 0x40(r12)
    add     r6, r12, r0
    lwz     r0, 0x8c(r6)
    add     r0, r0, r7
    lbzx    r5, r5, r0
    b       branch_0x803726f8

branch_0x80372610:
    lwzu    r10, 0x4(r8)
    srwi    r5, r10, 27
    stw     r8, 0x69c(r3)
    lbzx    r11, r12, r5
    lbzx    r9, r9, r5
    cmpwi   r11, 0xff
    stw     r10, 0x6a0(r3)
    addi    r9, r9, 0x1
    beq-    branch_0x80372640
    stw     r9, 0x6a4(r3)
    mr      r5, r11
    b       branch_0x803726f8

branch_0x80372640:
    li      r11, 0x5
    li      r6, 0x14
branch_0x80372648:
    subfic  r8, r11, 0x1f
    addi    r11, r11, 0x1
    addi    r6, r6, 0x4
    srw     r5, r10, r8
    add     r7, r12, r6
    lwz     r0, 0x44(r7)
    cmpw    r5, r0
    bgt+    branch_0x80372648
    addi    r0, r11, 0x1
    stw     r0, 0x6a4(r3)
    b       branch_0x803725f4

branch_0x80372674:
    subfic  r0, r11, 0x21
    li      r5, -0x1
    slw     r7, r5, r0
    andc    r5, r10, r7
    addi    r7, r12, 0x44
    lwz     r8, 0x69c(r3)
    subfic  r6, r11, 0x21
    addi    r11, r6, 0x1
    slwi    r6, r6, 2
    lwzu    r10, 0x4(r8)
    add     r7, r7, r6
    stw     r8, 0x69c(r3)
    slwi    r5, r5, 1
    stw     r10, 0x6a0(r3)
    inslwi  r5, r10, 1, 31
    lwzu    r6, 0x4(r7)
    li      r8, 0x2
    b       branch_0x803726d0

branch_0x803726bc:
    slwi    r5, r5, 1
    addi    r11, r11, 0x1
    lwzu    r6, 0x4(r7)
    add     r5, r5, r9
    addi    r8, r8, 0x1
branch_0x803726d0:
    cmpw    r5, r6
    rlwnm  r9, r10, r8, 31, 31
    bgt+    branch_0x803726bc
    stw     r8, 0x6a4(r3)
    slwi    r0, r11, 2
    add     r6, r12, r0
    lwz     r7, 0x40(r12)
    lwz     r0, 0x8c(r6)
    add     r0, r0, r7
    lbzx    r5, r5, r0
branch_0x803726f8:
    li      r0, 0x20
    dcbz    r4, r0
    li      r7, 0x0
    li      r0, 0x40
    dcbz    r4, r0
    cmpwi   r5, 0x0
    beq-    branch_0x80372794
    lwz     r9, 0x6a4(r3)
    subfic  r10, r9, 0x21
    lwz     r7, 0x6a0(r3)
    subf.   r11, r10, r5
    subi    r12, r9, 0x1
    bgt-    branch_0x80372744
    add     r0, r9, r5
    slw     r9, r7, r12
    stw     r0, 0x6a4(r3)
    subfic  r0, r5, 0x20
    srw     r7, r9, r0
    b       branch_0x80372770

branch_0x80372744:
    lwz     r9, 0x69c(r3)
    slw     r0, r7, r12
    lwzu    r7, 0x4(r9)
    addi    r11, r11, 0x1
    stw     r7, 0x6a0(r3)
    srw     r7, r7, r10
    stw     r9, 0x69c(r3)
    add     r0, r7, r0
    stw     r11, 0x6a4(r3)
    subfic  r11, r5, 0x20
    srw     r7, r0, r11
branch_0x80372770:
    extsh   r0, r7
    cntlzw  r6, r0
    subfic  r0, r5, 0x20
    cmpw    r6, r0
    ble-    branch_0x80372794
    li      r0, -0x1
    slw     r0, r0, r5
    add     r7, r0, r7
    addi    r7, r7, 0x1
branch_0x80372794:
    li      r0, 0x60
    dcbz    r4, r0
    lha     r0, 0x690(r3)
    lis     r5, 0x803b
    subi    r8, r5, 0x4a38
    add     r0, r0, r7
    sth     r0, 0x690(r3)
    li      r6, 0x1
    sth     r0, 0x0(r4)
    b       branch_0x80372af4

branch_0x803727bc:
    lwz     r30, -0x56a0(r13)
    lwz     r31, 0x6a4(r3)
    addi    r11, r30, 0x20
    lwz     r12, 0x6a0(r3)
    addi    r5, r31, 0x4
    cmpwi   r31, 0x1c
    rlwnm  r10, r12, r5, 27, 31
    bgt-    branch_0x8037289c
    lbzx    r5, r30, r10
    lbzx    r11, r11, r10
    cmpwi   r5, 0xff
    beq-    branch_0x803727f8
    add     r31, r31, r11
    stw     r31, 0x6a4(r3)
    b       branch_0x80372a40

branch_0x803727f8:
    addi    r7, r30, 0x44
    addi    r31, r31, 0x5
    li      r0, 0x14
    li      r5, 0x5
    addi    r7, r7, 0x14
branch_0x8037280c:
    cmpwi   r31, 0x21
    slwi    r10, r10, 1
    beq-    branch_0x8037282c
    rlwnm  r11, r12, r31, 31, 31
    lwzu    r0, 0x4(r7)
    or      r10, r10, r11
    addi    r31, r31, 0x1
    b       branch_0x80372870

branch_0x8037282c:
    lwz     r11, 0x69c(r3)
    li      r31, 0x1
    lwzu    r12, 0x4(r11)
    lwzu    r0, 0x4(r7)
    stw     r11, 0x69c(r3)
    inslwi  r10, r12, 1, 31
    stw     r12, 0x6a0(r3)
    b       branch_0x8037285c

branch_0x8037284c:
    slwi    r10, r10, 1
    rlwnm  r11, r12, r31, 31, 31
    lwzu    r0, 0x4(r7)
    or      r10, r10, r11
branch_0x8037285c:
    cmpw    r10, r0
    addi    r31, r31, 0x1
    addi    r5, r5, 0x1
    bgt+    branch_0x8037284c
    b       branch_0x8037287c

branch_0x80372870:
    cmpw    r10, r0
    addi    r5, r5, 0x1
    bgt+    branch_0x8037280c
branch_0x8037287c:
    stw     r31, 0x6a4(r3)
    slwi    r0, r5, 2
    add     r5, r30, r0
    lwz     r7, 0x40(r30)
    lwz     r0, 0x8c(r5)
    add     r0, r0, r7
    lbzx    r5, r10, r0
    b       branch_0x80372a40

branch_0x8037289c:
    cmpwi   r31, 0x21
    lwz     r10, 0x69c(r3)
    beq-    branch_0x80372958
    cmpwi   r31, 0x20
    rlwnm  r5, r12, r5, 27, 31
    beq-    branch_0x803728dc
    lbzx    r10, r30, r5
    lbzx    r11, r11, r5
    cmpwi   r10, 0xff
    add     r5, r31, r11
    beq-    branch_0x803729bc
    cmpwi   r5, 0x21
    stw     r5, 0x6a4(r3)
    bgt-    branch_0x803729bc
    mr      r5, r10
    b       branch_0x80372a40

branch_0x803728dc:
    lwzu    r12, 0x4(r10)
    stw     r10, 0x69c(r3)
    inslwi  r5, r12, 4, 28
    lbzx    r10, r30, r5
    lbzx    r11, r11, r5
    stw     r12, 0x6a0(r3)
    cmpwi   r10, 0xff
    stw     r11, 0x6a4(r3)
    beq-    branch_0x80372908
    mr      r5, r10
    b       branch_0x80372a40

branch_0x80372908:
    addi    r7, r30, 0x44
    li      r31, 0x14
    addi    r7, r7, 0x14
    slwi    r10, r5, 27
    li      r31, 0x5
    inslwi  r10, r12, 31, 1
branch_0x80372920:
    subfic  r12, r31, 0x1f
    lwzu    r0, 0x4(r7)
    srw     r5, r10, r12
    cmpw    r5, r0
    addi    r31, r31, 0x1
    bgt+    branch_0x80372920
    stw     r31, 0x6a4(r3)
branch_0x8037293c:
    slwi    r0, r31, 2
    lwz     r9, 0x40(r30)
    add     r7, r30, r0
    lwz     r0, 0x8c(r7)
    add     r0, r0, r9
    lbzx    r5, r5, r0
    b       branch_0x80372a40

branch_0x80372958:
    lwzu    r12, 0x4(r10)
    srwi    r5, r12, 27
    stw     r10, 0x69c(r3)
    lbzx    r31, r30, r5
    lbzx    r11, r11, r5
    cmpwi   r31, 0xff
    stw     r12, 0x6a0(r3)
    addi    r11, r11, 0x1
    beq-    branch_0x80372988
    stw     r11, 0x6a4(r3)
    mr      r5, r31
    b       branch_0x80372a40

branch_0x80372988:
    li      r31, 0x5
    li      r7, 0x14
branch_0x80372990:
    subfic  r10, r31, 0x1f
    addi    r31, r31, 0x1
    addi    r7, r7, 0x4
    srw     r5, r12, r10
    add     r9, r30, r7
    lwz     r0, 0x44(r9)
    cmpw    r5, r0
    bgt+    branch_0x80372990
    addi    r0, r31, 0x1
    stw     r0, 0x6a4(r3)
    b       branch_0x8037293c

branch_0x803729bc:
    subfic  r0, r31, 0x21
    li      r5, -0x1
    slw     r9, r5, r0
    andc    r5, r12, r9
    addi    r9, r30, 0x44
    lwz     r10, 0x69c(r3)
    subfic  r7, r31, 0x21
    addi    r31, r7, 0x1
    slwi    r7, r7, 2
    lwzu    r12, 0x4(r10)
    add     r9, r9, r7
    stw     r10, 0x69c(r3)
    slwi    r5, r5, 1
    stw     r12, 0x6a0(r3)
    inslwi  r5, r12, 1, 31
    lwzu    r7, 0x4(r9)
    li      r10, 0x2
    b       branch_0x80372a18

branch_0x80372a04:
    slwi    r5, r5, 1
    addi    r31, r31, 0x1
    lwzu    r7, 0x4(r9)
    add     r5, r5, r11
    addi    r10, r10, 0x1
branch_0x80372a18:
    cmpw    r5, r7
    rlwnm  r11, r12, r10, 31, 31
    bgt+    branch_0x80372a04
    stw     r10, 0x6a4(r3)
    slwi    r0, r31, 2
    add     r7, r30, r0
    lwz     r9, 0x40(r30)
    lwz     r0, 0x8c(r7)
    add     r0, r0, r9
    lbzx    r5, r5, r0
branch_0x80372a40:
    clrlwi. r30, r5, 28
    srawi   r7, r5, 4
    beq-    branch_0x80372ae4
    add     r6, r6, r7
    lwz     r9, 0x6a4(r3)
    subfic  r10, r9, 0x21
    lwz     r7, 0x6a0(r3)
    subf.   r11, r10, r30
    subi    r12, r9, 0x1
    bgt-    branch_0x80372a80
    add     r0, r9, r30
    slw     r9, r7, r12
    stw     r0, 0x6a4(r3)
    subfic  r0, r30, 0x20
    srw     r7, r9, r0
    b       branch_0x80372aac

branch_0x80372a80:
    lwz     r9, 0x69c(r3)
    slw     r0, r7, r12
    lwzu    r7, 0x4(r9)
    addi    r11, r11, 0x1
    stw     r7, 0x6a0(r3)
    srw     r7, r7, r10
    stw     r9, 0x69c(r3)
    add     r0, r7, r0
    stw     r11, 0x6a4(r3)
    subfic  r11, r30, 0x20
    srw     r7, r0, r11
branch_0x80372aac:
    cntlzw  r5, r7
    subfic  r0, r30, 0x20
    cmpw    r5, r0
    ble-    branch_0x80372acc
    li      r0, -0x1
    slw     r0, r0, r30
    add     r7, r0, r7
    addi    r7, r7, 0x1
branch_0x80372acc:
    add     r5, r8, r6
    lbz     r0, 0x0(r5)
    extsh   r5, r7
    slwi    r0, r0, 1
    sthx    r5, r4, r0
    b       branch_0x80372af0

branch_0x80372ae4:
    cmpwi   r7, 0xf
    bne-    branch_0x80372afc
    addi    r6, r6, 0xf
branch_0x80372af0:
    addi    r6, r6, 0x1
branch_0x80372af4:
    cmpwi   r6, 0x40
    blt+    branch_0x803727bc
branch_0x80372afc:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl THPInit
THPInit: # 0x80372b0c
    lis     r4, 0x8040
    addi    r4, r4, 0x4160
    lis     r5, 0xe000
    stw     r5, 0x100(r4)
    addi    r5, r5, 0x2000
    stw     r5, 0x104(r4)
    addi    r5, r5, 0x800
    stw     r5, 0x108(r4)
    lis     r5, 0xe000
    stw     r5, 0x10c(r4)
    addi    r5, r5, 0x2800
    stw     r5, 0x110(r4)
    addi    r5, r5, 0xa00
    stw     r5, 0x114(r4)
    li      r3, 0x4
    oris    r3, r3, 0x4
    mtspr   914, r3
    li      r3, 0x5
    oris    r3, r3, 0x5
    mtspr   915, r3
    li      r3, 0x6
    oris    r3, r3, 0x6
    mtspr   916, r3
    li      r3, 0x7
    oris    r3, r3, 0x7
    mtspr   917, r3
    li      r0, 0x1
    stw     r0, -0x562c(r13)
    li      r3, 0x1
    blr

