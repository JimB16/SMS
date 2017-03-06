
.globl __CARDCompareFileName
__CARDCompareFileName: # 0x8035925c
    addi    r5, r3, 0x8
    li      r7, 0x20
    b       branch_0x803592a0

branch_0x80359268:
    lbz     r0, 0x0(r5)
    addi    r5, r5, 0x1
    lbz     r6, 0x0(r4)
    addi    r4, r4, 0x1
    extsb   r3, r0
    extsb   r0, r6
    cmpw    r3, r0
    beq-    branch_0x80359290
    li      r3, 0x0
    blr

branch_0x80359290:
    extsb.  r0, r6
    bne-    branch_0x803592a0
    li      r3, 0x1
    blr

branch_0x803592a0:
    subic.  r7, r7, 0x1
    bge+    branch_0x80359268
    lbz     r0, 0x0(r4)
    extsb.  r0, r0
    bne-    branch_0x803592bc
    li      r3, 0x1
    blr

branch_0x803592bc:
    li      r3, 0x0
    blr


.globl __CARDAccess
__CARDAccess: # 0x803592c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0xff
    bne-    branch_0x803592f4
    li      r3, -0x4
    b       branch_0x80359344

branch_0x803592f4:
    lis     r3, 0x8040
    lwz     r4, 0x10c(r30)
    addi    r0, r3, 0x3680
    cmplw   r4, r0
    beq-    branch_0x80359338
    addi    r3, r31, 0x0
    li      r5, 0x4
    bl      memcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80359340
    lwz     r4, 0x10c(r30)
    addi    r3, r31, 0x4
    li      r5, 0x2
    addi    r4, r4, 0x4
    bl      memcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80359340
branch_0x80359338:
    li      r3, 0x0
    b       branch_0x80359344

branch_0x80359340:
    li      r3, -0xa
branch_0x80359344:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __CARDIsPublic
__CARDIsPublic: # 0x8035935c
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0xff
    bne-    branch_0x80359370
    li      r3, -0x4
    blr

branch_0x80359370:
    lbz     r0, 0x34(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80359384
    li      r3, 0x0
    blr

branch_0x80359384:
    li      r3, -0xa
    blr


.globl CARDOpen
CARDOpen: # 0x8035938c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r27, r3, 0x0
    addi    r4, sp, 0x14
    stw     r0, 0x0(r5)
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x803593c4
    b       branch_0x803594f0

branch_0x803593c4:
    lwz     r31, 0x14(sp)
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x803593dc
    li      r23, -0x3
    b       branch_0x80359490

branch_0x803593dc:
    mr      r3, r31
    bl      __CARDGetDirBlock
    lis     r4, 0x8040
    addi    r23, r3, 0x0
    addi    r26, r4, 0x3680
    li      r25, 0x0
branch_0x803593f4:
    lbz     r0, 0x0(r23)
    addi    r24, r23, 0x0
    cmplwi  r0, 0xff
    bne-    branch_0x8035940c
    li      r0, -0x4
    b       branch_0x80359454

branch_0x8035940c:
    lwz     r4, 0x10c(r31)
    cmplw   r4, r26
    beq-    branch_0x80359448
    addi    r3, r24, 0x0
    li      r5, 0x4
    bl      memcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80359450
    lwz     r4, 0x10c(r31)
    addi    r3, r24, 0x4
    li      r5, 0x2
    addi    r4, r4, 0x4
    bl      memcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80359450
branch_0x80359448:
    li      r0, 0x0
    b       branch_0x80359454

branch_0x80359450:
    li      r0, -0xa
branch_0x80359454:
    cmpwi   r0, 0x0
    blt-    branch_0x8035947c
    addi    r3, r23, 0x0
    addi    r4, r28, 0x0
    bl      __CARDCompareFileName
    cmpwi   r3, 0x0
    beq-    branch_0x8035947c
    addi    r30, r25, 0x0
    li      r23, 0x0
    b       branch_0x80359490

branch_0x8035947c:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x7f
    addi    r23, r23, 0x40
    blt+    branch_0x803593f4
    li      r23, -0x4
branch_0x80359490:
    cmpwi   r23, 0x0
    blt-    branch_0x803594e4
    lwz     r3, 0x14(sp)
    bl      __CARDGetDirBlock
    slwi    r0, r30, 6
    add     r5, r3, r0
    lhz     r4, 0x36(r5)
    cmplwi  r4, 0x5
    blt-    branch_0x803594c4
    lwz     r3, 0x14(sp)
    lhz     r0, 0x10(r3)
    cmplw   r4, r0
    blt-    branch_0x803594cc
branch_0x803594c4:
    li      r23, -0x6
    b       branch_0x803594e4

branch_0x803594cc:
    stw     r27, 0x0(r29)
    li      r0, 0x0
    stw     r30, 0x4(r29)
    stw     r0, 0x8(r29)
    lhz     r0, 0x36(r5)
    sth     r0, 0x10(r29)
branch_0x803594e4:
    lwz     r3, 0x14(sp)
    mr      r4, r23
    bl      __CARDPutControlBlock
branch_0x803594f0:
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl CARDClose
CARDClose: # 0x80359504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r4, sp, 0xc
    lwz     r3, 0x0(r3)
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x80359530
    b       branch_0x80359544

branch_0x80359530:
    li      r0, -0x1
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lwz     r3, 0xc(sp)
    bl      __CARDPutControlBlock
branch_0x80359544:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

