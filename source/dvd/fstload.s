
.globl cb
cb: # 0x8034ead8
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    ble-    branch_0x8034eb6c
    lwz     r0, R13Off_m0x5900(r13)
    cmpwi   r0, 0x1
    beq-    branch_0x8034eb38
    bge-    branch_0x8034eb9c
    cmpwi   r0, 0x0
    bge-    branch_0x8034eb10
    b       branch_0x8034eb9c

branch_0x8034eb10:
    li      r0, 0x1
    lwz     r4, R13Off_m0x58fc(r13)
    lis     r3, cb@ha
    stw     r0, R13Off_m0x5900(r13)
    addi    r7, r3, cb@l
    addi    r3, r31, 0x0
    li      r5, 0x20
    li      r6, 0x420
    bl      DVDReadAbsAsyncForBS
    b       branch_0x8034eb9c

branch_0x8034eb38:
    li      r0, 0x2
    lwz     r6, R13Off_m0x58fc(r13)
    stw     r0, R13Off_m0x5900(r13)
    lis     r3, cb@ha
    addi    r7, r3, cb@l
    lwz     r5, 0x8(r6)
    mr      r3, r31
    lwz     r4, 0x10(r6)
    addi    r0, r5, 0x1f
    lwz     r6, 0x4(r6)
    clrrwi  r5, r0, 5
    bl      DVDReadAbsAsyncForBS
    b       branch_0x8034eb9c

branch_0x8034eb6c:
    cmpwi   r3, -0x1
    beq-    branch_0x8034eb9c
    cmpwi   r3, -0x4
    bne-    branch_0x8034eb9c
    li      r0, 0x0
    stw     r0, R13Off_m0x5900(r13)
    bl      DVDReset
    lis     r3, cb@ha
    lwz     r4, R13Off_m0x58f8(r13)
    addi    r5, r3, cb@l
    addi    r3, r31, 0x0
    bl      DVDReadDiskID
branch_0x8034eb9c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __fstLoad
__fstLoad: # 0x8034ebb0
    mflr    r0
    lis     r3, unk_803e8740@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, unk_803e8740@l
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    bl      OSGetArenaHi
    lis     r3, bb2Buf@h
    addi    r3, r3, bb2Buf@l
    addi    r4, sp, 0x2b
    addi    r0, r3, 0x1f
    clrrwi  r3, r4, 5
    clrrwi  r0, r0, 5
    stw     r3, R13Off_m0x58f8(r13)
    stw     r0, R13Off_m0x58fc(r13)
    bl      DVDReset
    lis     r3, block_16@h
    lwz     r4, R13Off_m0x58f8(r13)
    lis     r5, cb@ha
    addi    r3, r3, block_16@l
    addi    r5, r5, cb@l
    bl      DVDReadDiskID
branch_0x8034ec10:
    bl      DVDGetDriveStatus
    cmpwi   r3, 0x0
    bne+    branch_0x8034ec10
    lwz     r3, R13Off_m0x58fc(r13)
    lis     r29, unk_80000000@h
    lis     r30, 0x8000
    lwz     r0, 0x10(r3)
    addi    r3, r29, unk_80000000@l
    li      r5, 0x20
    stw     r0, 0x38(r30)
    lwz     r4, R13Off_m0x58fc(r13)
    lwz     r0, 0xc(r4)
    stw     r0, 0x3c(r30)
    lwz     r4, R13Off_m0x58f8(r13)
    bl      memcpy
    addi    r3, r13, R13Off_m0x7340
    crxor   6, 6, 6
    bl      OSReport
    lbz     r4, 0x0(r29)
    mr      r3, r31
    lbz     r5, 0x1(r29)
    crxor   6, 6, 6
    lbz     r6, 0x2(r29)
    lbz     r7, 0x3(r29)
    extsb   r4, r4
    extsb   r5, r5
    extsb   r6, r6
    extsb   r7, r7
    bl      OSReport
    lbz     r4, 0x4(r29)
    addi    r3, r31, 0x1c
    lbz     r5, 0x5(r29)
    crxor   6, 6, 6
    extsb   r4, r4
    extsb   r5, r5
    bl      OSReport
    lbz     r4, 0x6(r29)
    addi    r3, r31, 0x34
    crxor   6, 6, 6
    bl      OSReport
    lbz     r4, 0x7(r29)
    addi    r3, r31, 0x48
    crxor   6, 6, 6
    bl      OSReport
    lbz     r0, 0x8(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8034ecd4
    addi    r4, r13, R13Off_m0x733c
    b       branch_0x8034ecd8

branch_0x8034ecd4:
    addi    r4, r13, R13Off_m0x7338
branch_0x8034ecd8:
    crxor   6, 6, 6
    addi    r3, r31, 0x5c
    bl      OSReport
    addi    r3, r13, R13Off_m0x7340
    crxor   6, 6, 6
    bl      OSReport
    lwz     r3, R13Off_m0x58fc(r13)
    lwz     r3, 0x10(r3)
    bl      OSSetArenaHi
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr

