
.globl __DVDFSInit
__DVDFSInit: # 0x8034b574
    lis     r3, 0x8000
    stw     r3, -0x5968(r13)
    lwz     r0, 0x38(r3)
    stw     r0, -0x5964(r13)
    lwz     r3, -0x5964(r13)
    cmplwi  r3, 0x0
    beqlr-    

    lwz     r0, 0x8(r3)
    stw     r0, -0x595c(r13)
    lwz     r0, -0x595c(r13)
    mulli   r0, r0, 0xc
    add     r0, r3, r0
    stw     r0, -0x5960(r13)
    blr


.globl DVDConvertPathToEntrynum
DVDConvertPathToEntrynum: # 0x8034b5ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r20, 0x18(sp)
    mr      r23, r3
    lis     r3, 0x803f
    addi    r25, r23, 0x0
    subi    r31, r3, 0x7e10
    lwz     r26, -0x5958(r13)
branch_0x8034b5d0:
    lbz     r3, 0x0(r23)
    extsb.  r0, r3
    bne-    branch_0x8034b5e4
    mr      r3, r26
    b       branch_0x8034b88c

branch_0x8034b5e4:
    extsb   r0, r3
    cmpwi   r0, 0x2f
    bne-    branch_0x8034b5fc
    li      r26, 0x0
    addi    r23, r23, 0x1
    b       branch_0x8034b5d0

branch_0x8034b5fc:
    cmpwi   r0, 0x2e
    bne-    branch_0x8034b674
    lbz     r3, 0x1(r23)
    extsb   r0, r3
    cmpwi   r0, 0x2e
    bne-    branch_0x8034b654
    lbz     r3, 0x2(r23)
    cmpwi   r3, 0x2f
    bne-    branch_0x8034b638
    mulli   r3, r26, 0xc
    lwz     r4, -0x5964(r13)
    addi    r0, r3, 0x4
    lwzx    r26, r4, r0
    addi    r23, r23, 0x3
    b       branch_0x8034b5d0

branch_0x8034b638:
    extsb.  r0, r3
    bne-    branch_0x8034b674
    mulli   r0, r26, 0xc
    lwz     r3, -0x5964(r13)
    add     r3, r3, r0
    lwz     r3, 0x4(r3)
    b       branch_0x8034b88c

branch_0x8034b654:
    cmpwi   r0, 0x2f
    bne-    branch_0x8034b664
    addi    r23, r23, 0x2
    b       branch_0x8034b5d0

branch_0x8034b664:
    extsb.  r0, r3
    bne-    branch_0x8034b674
    mr      r3, r26
    b       branch_0x8034b88c

branch_0x8034b674:
    lwz     r0, -0x5954(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8034b728
    addi    r28, r23, 0x0
    li      r5, 0x0
    li      r4, 0x0
    b       branch_0x8034b6d4

branch_0x8034b690:
    extsb   r0, r3
    cmpwi   r0, 0x2e
    bne-    branch_0x8034b6c4
    subf    r0, r23, r28
    cmpwi   r0, 0x8
    bgt-    branch_0x8034b6b0
    cmpwi   r5, 0x1
    bne-    branch_0x8034b6b8
branch_0x8034b6b0:
    li      r4, 0x1
    b       branch_0x8034b6ec

branch_0x8034b6b8:
    addi    r24, r28, 0x1
    li      r5, 0x1
    b       branch_0x8034b6d0

branch_0x8034b6c4:
    cmpwi   r0, 0x20
    bne-    branch_0x8034b6d0
    li      r4, 0x1
branch_0x8034b6d0:
    addi    r28, r28, 0x1
branch_0x8034b6d4:
    lbz     r3, 0x0(r28)
    extsb.  r0, r3
    beq-    branch_0x8034b6ec
    extsb   r0, r3
    cmpwi   r0, 0x2f
    bne+    branch_0x8034b690
branch_0x8034b6ec:
    cmpwi   r5, 0x1
    bne-    branch_0x8034b704
    subf    r0, r24, r28
    cmpwi   r0, 0x3
    ble-    branch_0x8034b704
    li      r4, 0x1
branch_0x8034b704:
    cmpwi   r4, 0x0
    beq-    branch_0x8034b74c
    addi    r5, r31, 0x0
    crxor   6, 6, 6
    addi    r6, r25, 0x0
    subi    r3, r13, 0x7350
    li      r4, 0x178
    bl      OSPanic
    b       branch_0x8034b74c

branch_0x8034b728:
    mr      r28, r23
    b       branch_0x8034b734

branch_0x8034b730:
    addi    r28, r28, 0x1
branch_0x8034b734:
    lbz     r3, 0x0(r28)
    extsb.  r0, r3
    beq-    branch_0x8034b74c
    extsb   r0, r3
    cmpwi   r0, 0x2f
    bne+    branch_0x8034b730
branch_0x8034b74c:
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne-    branch_0x8034b760
    li      r30, 0x0
    b       branch_0x8034b764

branch_0x8034b760:
    li      r30, 0x1
branch_0x8034b764:
    mulli   r29, r26, 0xc
    subf    r27, r23, r28
    addi    r26, r26, 0x1
    b       branch_0x8034b854

branch_0x8034b774:
    mulli   r28, r26, 0xc
    lwzx    r4, r3, r28
    clrrwi. r0, r4, 24
    bne-    branch_0x8034b78c
    li      r0, 0x0
    b       branch_0x8034b790

branch_0x8034b78c:
    li      r0, 0x1
branch_0x8034b790:
    cmpwi   r0, 0x0
    bne-    branch_0x8034b7a0
    cmpwi   r30, 0x1
    beq-    branch_0x8034b81c
branch_0x8034b7a0:
    lwz     r3, -0x5960(r13)
    clrlwi  r0, r4, 8
    addi    r21, r23, 0x0
    add     r20, r3, r0
    b       branch_0x8034b7e8

branch_0x8034b7b4:
    lbz     r0, 0x0(r20)
    addi    r20, r20, 0x1
    extsb   r3, r0
    bl      tolower
    lbz     r0, 0x0(r21)
    addi    r22, r3, 0x0
    addi    r21, r21, 0x1
    extsb   r3, r0
    bl      tolower
    cmpw    r3, r22
    beq-    branch_0x8034b7e8
    li      r0, 0x0
    b       branch_0x8034b814

branch_0x8034b7e8:
    lbz     r0, 0x0(r20)
    extsb.  r0, r0
    bne+    branch_0x8034b7b4
    lbz     r3, 0x0(r21)
    cmpwi   r3, 0x2f
    beq-    branch_0x8034b808
    extsb.  r0, r3
    bne-    branch_0x8034b810
branch_0x8034b808:
    li      r0, 0x1
    b       branch_0x8034b814

branch_0x8034b810:
    li      r0, 0x0
branch_0x8034b814:
    cmpwi   r0, 0x1
    beq-    branch_0x8034b870
branch_0x8034b81c:
    lwz     r0, -0x5964(r13)
    add     r3, r0, r28
    lwz     r0, 0x0(r3)
    clrrwi. r0, r0, 24
    bne-    branch_0x8034b838
    li      r0, 0x0
    b       branch_0x8034b83c

branch_0x8034b838:
    li      r0, 0x1
branch_0x8034b83c:
    cmpwi   r0, 0x0
    beq-    branch_0x8034b84c
    lwz     r0, 0x8(r3)
    b       branch_0x8034b850

branch_0x8034b84c:
    addi    r0, r26, 0x1
branch_0x8034b850:
    mr      r26, r0
branch_0x8034b854:
    lwz     r3, -0x5964(r13)
    addi    r0, r3, 0x8
    lwzx    r0, r29, r0
    cmplw   r26, r0
    blt+    branch_0x8034b774
    li      r3, -0x1
    b       branch_0x8034b88c

branch_0x8034b870:
    cmpwi   r30, 0x0
    bne-    branch_0x8034b880
    mr      r3, r26
    b       branch_0x8034b88c

branch_0x8034b880:
    add     r23, r27, r23
    addi    r23, r23, 0x1
    b       branch_0x8034b5d0

branch_0x8034b88c:
    lmw     r20, 0x18(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl DVDFastOpen
DVDFastOpen: # 0x8034b8a0
    cmpwi   r3, 0x0
    blt-    branch_0x8034b8dc
    lwz     r0, -0x595c(r13)
    cmplw   r3, r0
    bge-    branch_0x8034b8dc
    mulli   r6, r3, 0xc
    lwz     r3, -0x5964(r13)
    lwzx    r0, r3, r6
    clrrwi. r0, r0, 24
    bne-    branch_0x8034b8d0
    li      r0, 0x0
    b       branch_0x8034b8d4

branch_0x8034b8d0:
    li      r0, 0x1
branch_0x8034b8d4:
    cmpwi   r0, 0x0
    beq-    branch_0x8034b8e4
branch_0x8034b8dc:
    li      r3, 0x0
    blr

branch_0x8034b8e4:
    add     r3, r3, r6
    lwz     r5, 0x4(r3)
    li      r0, 0x0
    li      r3, 0x1
    stw     r5, 0x30(r4)
    lwz     r5, -0x5964(r13)
    add     r5, r5, r6
    lwz     r5, 0x8(r5)
    stw     r5, 0x34(r4)
    stw     r0, 0x38(r4)
    stw     r0, 0xc(r4)
    blr


.globl DVDOpen
DVDOpen: # 0x8034b914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x90(sp)
    addi    r30, r3, 0x0
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, 0x0
    bge-    branch_0x8034b968
    addi    r3, sp, 0x10
    li      r4, 0x80
    bl      DVDGetCurrentDir
    lis     r3, 0x803f
    crxor   6, 6, 6
    subi    r3, r3, 0x7d48
    addi    r4, r30, 0x0
    addi    r5, sp, 0x10
    bl      OSReport
    li      r3, 0x0
    b       branch_0x8034b9c4

branch_0x8034b968:
    mulli   r5, r3, 0xc
    lwz     r3, -0x5964(r13)
    lwzx    r0, r3, r5
    clrrwi. r0, r0, 24
    bne-    branch_0x8034b984
    li      r0, 0x0
    b       branch_0x8034b988

branch_0x8034b984:
    li      r0, 0x1
branch_0x8034b988:
    cmpwi   r0, 0x0
    beq-    branch_0x8034b998
    li      r3, 0x0
    b       branch_0x8034b9c4

branch_0x8034b998:
    add     r3, r3, r5
    lwz     r4, 0x4(r3)
    li      r0, 0x0
    li      r3, 0x1
    stw     r4, 0x30(r31)
    lwz     r4, -0x5964(r13)
    add     r4, r4, r5
    lwz     r4, 0x8(r4)
    stw     r4, 0x34(r31)
    stw     r0, 0x38(r31)
    stw     r0, 0xc(r31)
branch_0x8034b9c4:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl DVDClose
DVDClose: # 0x8034b9dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      DVDCancel
    li      r3, 0x1
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entryToPath
entryToPath: # 0x8034ba00
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    bne-    branch_0x8034ba34
    li      r3, 0x0
    b       branch_0x8034bb40

branch_0x8034ba34:
    lwz     r4, -0x5964(r13)
    mulli   r3, r3, 0xc
    lwz     r6, -0x5960(r13)
    addi    r5, r4, 0x4
    lwzx    r0, r4, r3
    lwzx    r3, r5, r3
    clrlwi  r0, r0, 8
    cmplwi  r3, 0x0
    add     r31, r6, r0
    bne-    branch_0x8034ba64
    li      r3, 0x0
    b       branch_0x8034bae0

branch_0x8034ba64:
    mulli   r3, r3, 0xc
    lwzx    r0, r4, r3
    mr      r4, r29
    lwzx    r3, r5, r3
    addi    r5, r30, 0x0
    clrlwi  r0, r0, 8
    add     r28, r6, r0
    bl      entryToPath
    cmplw   r3, r30
    bne-    branch_0x8034ba90
    b       branch_0x8034bae0

branch_0x8034ba90:
    addi    r0, r3, 0x0
    addi    r3, r3, 0x1
    li      r4, 0x2f
    subf    r6, r3, r30
    stbx    r4, r29, r0
    addi    r4, r6, 0x0
    add     r5, r29, r3
    b       branch_0x8034bac4

branch_0x8034bab0:
    lbz     r0, 0x0(r28)
    addi    r28, r28, 0x1
    subi    r4, r4, 0x1
    stb     r0, 0x0(r5)
    addi    r5, r5, 0x1
branch_0x8034bac4:
    cmplwi  r4, 0x0
    beq-    branch_0x8034bad8
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne+    branch_0x8034bab0
branch_0x8034bad8:
    subf    r0, r4, r6
    add     r3, r3, r0
branch_0x8034bae0:
    cmplw   r3, r30
    bne-    branch_0x8034baec
    b       branch_0x8034bb40

branch_0x8034baec:
    addi    r0, r3, 0x0
    addi    r3, r3, 0x1
    li      r4, 0x2f
    subf    r7, r3, r30
    stbx    r4, r29, r0
    addi    r6, r31, 0x0
    addi    r4, r7, 0x0
    add     r5, r29, r3
    b       branch_0x8034bb24

branch_0x8034bb10:
    lbz     r0, 0x0(r6)
    addi    r6, r6, 0x1
    subi    r4, r4, 0x1
    stb     r0, 0x0(r5)
    addi    r5, r5, 0x1
branch_0x8034bb24:
    cmplwi  r4, 0x0
    beq-    branch_0x8034bb38
    lbz     r0, 0x0(r6)
    extsb.  r0, r0
    bne+    branch_0x8034bb10
branch_0x8034bb38:
    subf    r0, r4, r7
    add     r3, r3, r0
branch_0x8034bb40:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl DVDGetCurrentDir
DVDGetCurrentDir: # 0x8034bb60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r5, r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r4, r29, 0x0
    lwz     r31, -0x5958(r13)
    addi    r3, r31, 0x0
    bl      entryToPath
    cmplw   r3, r30
    bne-    branch_0x8034bbac
    li      r0, 0x0
    add     r3, r29, r30
    stb     r0, -0x1(r3)
    b       branch_0x8034bc04

branch_0x8034bbac:
    mulli   r0, r31, 0xc
    lwz     r4, -0x5964(r13)
    lwzx    r0, r4, r0
    clrrwi. r0, r0, 24
    bne-    branch_0x8034bbc8
    li      r0, 0x0
    b       branch_0x8034bbcc

branch_0x8034bbc8:
    li      r0, 0x1
branch_0x8034bbcc:
    cmpwi   r0, 0x0
    beq-    branch_0x8034bbf8
    subi    r0, r30, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034bbec
    li      r0, 0x0
    stbx    r0, r29, r3
    b       branch_0x8034bc04

branch_0x8034bbec:
    li      r0, 0x2f
    stbx    r0, r29, r3
    addi    r3, r3, 0x1
branch_0x8034bbf8:
    li      r0, 0x0
    stbx    r0, r29, r3
    li      r0, 0x1
branch_0x8034bc04:
    mr      r3, r0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DVDChangeDir
DVDChangeDir: # 0x8034bc24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      DVDConvertPathToEntrynum
    cmpwi   r3, 0x0
    blt-    branch_0x8034bc64
    mulli   r0, r3, 0xc
    lwz     r4, -0x5964(r13)
    lwzx    r0, r4, r0
    clrrwi. r0, r0, 24
    bne-    branch_0x8034bc58
    li      r0, 0x0
    b       branch_0x8034bc5c

branch_0x8034bc58:
    li      r0, 0x1
branch_0x8034bc5c:
    cmpwi   r0, 0x0
    bne-    branch_0x8034bc6c
branch_0x8034bc64:
    li      r3, 0x0
    b       branch_0x8034bc74

branch_0x8034bc6c:
    stw     r3, -0x5958(r13)
    li      r3, 0x1
branch_0x8034bc74:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DVDReadAsyncPrio
DVDReadAsyncPrio: # 0x8034bc84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    mr.     r29, r6
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    blt-    branch_0x8034bcbc
    lwz     r0, 0x34(r26)
    cmplw   r29, r0
    blt-    branch_0x8034bcd4
branch_0x8034bcbc:
    lis     r3, 0x803f
    crxor   6, 6, 6
    subi    r5, r3, 0x7d10
    subi    r3, r13, 0x7350
    li      r4, 0x2e3
    bl      OSPanic
branch_0x8034bcd4:
    add.    r4, r29, r28
    blt-    branch_0x8034bcec
    lwz     r3, 0x34(r26)
    addi    r0, r3, 0x20
    cmplw   r4, r0
    blt-    branch_0x8034bd04
branch_0x8034bcec:
    lis     r3, 0x803f
    crxor   6, 6, 6
    subi    r5, r3, 0x7d10
    subi    r3, r13, 0x7350
    li      r4, 0x2e9
    bl      OSPanic
branch_0x8034bd04:
    stw     r30, 0x38(r26)
    lis     r3, 0x8035
    subi    r7, r3, 0x42bc
    lwz     r0, 0x30(r26)
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r8, r31, 0x0
    add     r6, r0, r29
    bl      DVDReadAbsAsyncPrio
    lmw     r26, 0x20(sp)
    li      r3, 0x1
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl cbForReadAsync
cbForReadAsync: # 0x8034bd44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x38(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034bd64
    mtlr    r12
    blrl
branch_0x8034bd64:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DVDReadPrio
DVDReadPrio: # 0x8034bd74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr.     r29, r6
    addi    r31, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r30, r7, 0x0
    blt-    branch_0x8034bda8
    lwz     r0, 0x34(r31)
    cmplw   r29, r0
    blt-    branch_0x8034bdc0
branch_0x8034bda8:
    lis     r3, 0x803f
    crxor   6, 6, 6
    subi    r5, r3, 0x7cdc
    subi    r3, r13, 0x7350
    li      r4, 0x329
    bl      OSPanic
branch_0x8034bdc0:
    add.    r4, r29, r28
    blt-    branch_0x8034bdd8
    lwz     r3, 0x34(r31)
    addi    r0, r3, 0x20
    cmplw   r4, r0
    blt-    branch_0x8034bdf0
branch_0x8034bdd8:
    lis     r3, 0x803f
    crxor   6, 6, 6
    subi    r5, r3, 0x7cdc
    subi    r3, r13, 0x7350
    li      r4, 0x32f
    bl      OSPanic
branch_0x8034bdf0:
    lwz     r0, 0x30(r31)
    lis     r4, 0x8035
    subi    r7, r4, 0x4174
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r8, r30, 0x0
    add     r6, r0, r29
    bl      DVDReadAbsAsyncPrio
    cmpwi   r3, 0x0
    bne-    branch_0x8034be24
    li      r3, -0x1
    b       branch_0x8034be78

branch_0x8034be24:
    bl      OSDisableInterrupts
    mr      r30, r3
branch_0x8034be2c:
    lwz     r0, 0xc(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8034be40
    lwz     r31, 0x20(r31)
    b       branch_0x8034be6c

branch_0x8034be40:
    cmpwi   r0, -0x1
    bne-    branch_0x8034be50
    li      r31, -0x1
    b       branch_0x8034be6c

branch_0x8034be50:
    cmpwi   r0, 0xa
    bne-    branch_0x8034be60
    li      r31, -0x3
    b       branch_0x8034be6c

branch_0x8034be60:
    subi    r3, r13, 0x5950
    bl      OSSleepThread
    b       branch_0x8034be2c

branch_0x8034be6c:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
branch_0x8034be78:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl cbForReadSync
cbForReadSync: # 0x8034be8c
    mflr    r0
    subi    r3, r13, 0x5950
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSWakeupThread
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DVDPrepareStreamAsync
DVDPrepareStreamAsync: # 0x8034beb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r29, r5, 0x0
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r30, r6, 0x0
    lwz     r7, 0x30(r3)
    lis     r3, 0x803f
    subi    r31, r3, 0x7e10
    add     r0, r7, r29
    clrlwi. r0, r0, 17
    beq-    branch_0x8034bf04
    addi    r6, r7, 0x0
    crxor   6, 6, 6
    addi    r7, r29, 0x0
    addi    r5, r31, 0x1c8
    subi    r3, r13, 0x7350
    li      r4, 0x4a2
    bl      OSPanic
branch_0x8034bf04:
    cmplwi  r28, 0x0
    bne-    branch_0x8034bf14
    lwz     r0, 0x34(r27)
    subf    r28, r29, r0
branch_0x8034bf14:
    clrlwi. r0, r28, 17
    beq-    branch_0x8034bf34
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r5, r31, 0x230
    subi    r3, r13, 0x7350
    li      r4, 0x4ac
    bl      OSPanic
branch_0x8034bf34:
    lwz     r3, 0x34(r27)
    cmplw   r29, r3
    bge-    branch_0x8034bf4c
    add     r0, r29, r28
    cmplw   r0, r3
    ble-    branch_0x8034bf68
branch_0x8034bf4c:
    addi    r6, r29, 0x0
    crxor   6, 6, 6
    addi    r7, r28, 0x0
    addi    r5, r31, 0x288
    subi    r3, r13, 0x7350
    li      r4, 0x4b4
    bl      OSPanic
branch_0x8034bf68:
    stw     r30, 0x38(r27)
    lis     r3, 0x8035
    subi    r6, r3, 0x4064
    lwz     r0, 0x30(r27)
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    add     r5, r0, r29
    bl      DVDPrepareStreamAbsAsync
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl cbForPrepareStreamAsync
cbForPrepareStreamAsync: # 0x8034bf9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x38(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x8034bfbc
    mtlr    r12
    blrl
branch_0x8034bfbc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

