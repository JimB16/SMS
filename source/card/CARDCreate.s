
.globl CreateCallbackFat
CreateCallbackFat: # 0x80359558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r28, r3, 0x0
    lis     r3, __CARDBlock@h
    mulli   r5, r28, 0x110
    addi    r0, r3, __CARDBlock@l
    add     r31, r0, r5
    lwz     r29, 0xd0(r31)
    li      r27, 0x0
    mr.     r30, r4
    stw     r27, 0xd0(r31)
    blt-    branch_0x8035964c
    mr      r3, r31
    bl      __CARDGetDirBlock
    lhz     r0, 0xbc(r31)
    li      r5, 0x4
    lwz     r4, 0x10c(r31)
    slwi    r0, r0, 6
    add     r30, r3, r0
    addi    r3, r30, 0x0
    bl      memcpy
    lwz     r4, 0x10c(r31)
    addi    r3, r30, 0x4
    li      r5, 0x2
    addi    r4, r4, 0x4
    bl      memcpy
    li      r0, 0x4
    stb     r0, 0x34(r30)
    li      r0, -0x1
    lis     r3, 0x8000
    stb     r27, 0x35(r30)
    lhz     r4, 0xbe(r31)
    sth     r4, 0x36(r30)
    stb     r27, 0x7(r30)
    stw     r0, 0x2c(r30)
    sth     r27, 0x30(r30)
    sth     r27, 0x32(r30)
    stw     r0, 0x3c(r30)
    lhz     r0, 0x32(r30)
    clrrwi  r0, r0, 2
    ori     r0, r0, 0x1
    sth     r0, 0x32(r30)
    lwz     r4, 0xc0(r31)
    stw     r27, 0x8(r4)
    lhz     r0, 0x36(r30)
    lwz     r4, 0xc0(r31)
    sth     r0, 0x10(r4)
    lwz     r0, 0xf8(r3)
    srwi    r27, r0, 2
    bl      OSGetTime
    addi    r6, r27, 0x0
    li      r5, 0x0
    bl      __div2i
    stw     r4, 0x28(r30)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      __CARDUpdateDir
    mr.     r30, r3
    bge-    branch_0x80359674
branch_0x8035964c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      __CARDPutControlBlock
    cmplwi  r29, 0x0
    beq-    branch_0x80359674
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    blrl
branch_0x80359674:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl CARDCreateAsync
CARDCreateAsync: # 0x80359688
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r23, 0x24(sp)
    addi    r26, r4, 0x0
    addi    r25, r3, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r3, r26, 0x0
    bl      strlen
    cmplwi  r3, 0x20
    ble-    branch_0x803596c4
    li      r3, -0xc
    b       branch_0x80359894

branch_0x803596c4:
    addi    r3, r25, 0x0
    addi    r4, sp, 0x1c
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x803596dc
    b       branch_0x80359894

branch_0x803596dc:
    cmplwi  r27, 0x0
    beq-    branch_0x803596fc
    lwz     r3, 0x1c(sp)
    lwz     r4, 0xc(r3)
    divwu   r0, r27, r4
    mullw   r0, r0, r4
    subf.   r0, r0, r27
    beq-    branch_0x80359704
branch_0x803596fc:
    li      r3, -0x80
    b       branch_0x80359894

branch_0x80359704:
    lis     r4, unk_0000ffff@ha
    addi    r30, r4, unk_0000ffff@l
    bl      __CARDGetDirBlock
    addi    r31, r3, 0x0
    addi    r24, r31, 0x0
    li      r23, 0x0
    b       branch_0x803597a8

branch_0x80359720:
    lbz     r0, 0x0(r24)
    cmplwi  r0, 0xff
    bne-    branch_0x80359740
    clrlwi  r0, r30, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x803597a0
    mr      r30, r23
    b       branch_0x803597a0

branch_0x80359740:
    lwz     r4, 0x1c(sp)
    addi    r3, r24, 0x0
    li      r5, 0x4
    lwz     r4, 0x10c(r4)
    bl      memcmp
    cmpwi   r3, 0x0
    bne-    branch_0x803597a0
    lwz     r4, 0x1c(sp)
    addi    r3, r24, 0x4
    li      r5, 0x2
    lwz     r4, 0x10c(r4)
    addi    r4, r4, 0x4
    bl      memcmp
    cmpwi   r3, 0x0
    bne-    branch_0x803597a0
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      __CARDCompareFileName
    cmpwi   r3, 0x0
    beq-    branch_0x803597a0
    lwz     r3, 0x1c(sp)
    li      r4, -0x7
    bl      __CARDPutControlBlock
    b       branch_0x80359894

branch_0x803597a0:
    addi    r24, r24, 0x40
    addi    r23, r23, 0x1
branch_0x803597a8:
    clrlwi  r0, r23, 16
    cmplwi  r0, 0x7f
    blt+    branch_0x80359720
    clrlwi  r0, r30, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x803597d0
    lwz     r3, 0x1c(sp)
    li      r4, -0x8
    bl      __CARDPutControlBlock
    b       branch_0x80359894

branch_0x803597d0:
    lwz     r3, 0x1c(sp)
    bl      __CARDGetFatBlock
    lwz     r4, 0x1c(sp)
    lhz     r0, 0x6(r3)
    lwz     r3, 0xc(r4)
    mullw   r0, r3, r0
    cmplw   r0, r27
    bge-    branch_0x80359800
    addi    r3, r4, 0x0
    li      r4, -0x9
    bl      __CARDPutControlBlock
    b       branch_0x80359894

branch_0x80359800:
    cmplwi  r29, 0x0
    beq-    branch_0x80359810
    mr      r0, r29
    b       branch_0x80359818

branch_0x80359810:
    lis     r3, __CARDDefaultApiCallback@h
    addi    r0, r3, __CARDDefaultApiCallback@l
branch_0x80359818:
    stw     r0, 0xd0(r4)
    clrlslwi  r0, r30, 16, 6
    add     r7, r31, r0
    lwz     r3, 0x1c(sp)
    clrlwi  r29, r30, 16
    addi    r4, r26, 0x0
    sth     r30, 0xbc(r3)
    addi    r3, r7, 0x8
    li      r5, 0x20
    lwz     r6, 0x1c(sp)
    lwz     r0, 0xc(r6)
    divwu   r0, r27, r0
    sth     r0, 0x38(r7)
    bl      strncpy
    lwz     r4, 0x1c(sp)
    lis     r3, CreateCallbackFat@ha
    addi    r5, r3, CreateCallbackFat@l
    stw     r28, 0xc0(r4)
    mr      r3, r25
    stw     r25, 0x0(r28)
    stw     r29, 0x4(r28)
    lwz     r4, 0x1c(sp)
    lwz     r0, 0xc(r4)
    divwu   r4, r27, r0
    bl      __CARDAllocBlock
    mr.     r4, r3
    bge-    branch_0x80359890
    lwz     r3, 0x1c(sp)
    bl      __CARDPutControlBlock
    b       branch_0x80359894

branch_0x80359890:
    mr      r3, r4
branch_0x80359894:
    lmw     r23, 0x24(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl CARDCreate
CARDCreate: # 0x803598a8
    mflr    r0
    lis     r7, __CARDSyncCallback@h
    stw     r0, 0x4(sp)
    addi    r7, r7, __CARDSyncCallback@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      CARDCreateAsync
    cmpwi   r3, 0x0
    bge-    branch_0x803598d4
    b       branch_0x803598dc

branch_0x803598d4:
    mr      r3, r31
    bl      __CARDSync
branch_0x803598dc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

