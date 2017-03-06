
.globl __CARDSeek
__CARDSeek: # 0x803598f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    addi    r4, sp, 0x18
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r3, 0x0(r3)
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x80359934
    b       branch_0x80359a88

branch_0x80359934:
    lhz     r0, 0x10(r28)
    cmplwi  r0, 0x5
    blt-    branch_0x80359964
    lwz     r3, 0x18(sp)
    lhz     r5, 0x10(r3)
    cmplw   r0, r5
    bge-    branch_0x80359964
    lwz     r4, 0xc(r3)
    lwz     r0, 0x8(r28)
    mullw   r4, r5, r4
    cmpw    r4, r0
    bgt-    branch_0x80359974
branch_0x80359964:
    lwz     r3, 0x18(sp)
    li      r4, -0x80
    bl      __CARDPutControlBlock
    b       branch_0x80359a88

branch_0x80359974:
    bl      __CARDGetDirBlock
    lwz     r0, 0x4(r28)
    lwz     r5, 0x18(sp)
    slwi    r0, r0, 6
    add     r4, r3, r0
    lwz     r3, 0xc(r5)
    lhz     r0, 0x38(r4)
    mullw   r3, r0, r3
    cmpw    r3, r30
    ble-    branch_0x803599a8
    add     r0, r30, r29
    cmpw    r3, r0
    bge-    branch_0x803599b8
branch_0x803599a8:
    addi    r3, r5, 0x0
    li      r4, -0xb
    bl      __CARDPutControlBlock
    b       branch_0x80359a88

branch_0x803599b8:
    stw     r28, 0xc0(r5)
    stw     r29, 0xc(r28)
    lwz     r0, 0x8(r28)
    cmpw    r30, r0
    bge-    branch_0x80359a08
    li      r0, 0x0
    stw     r0, 0x8(r28)
    lhz     r0, 0x36(r4)
    sth     r0, 0x10(r28)
    lhz     r4, 0x10(r28)
    cmplwi  r4, 0x5
    blt-    branch_0x803599f8
    lwz     r3, 0x18(sp)
    lhz     r0, 0x10(r3)
    cmplw   r4, r0
    blt-    branch_0x80359a08
branch_0x803599f8:
    lwz     r3, 0x18(sp)
    li      r4, -0x6
    bl      __CARDPutControlBlock
    b       branch_0x80359a88

branch_0x80359a08:
    lwz     r3, 0x18(sp)
    bl      __CARDGetFatBlock
    b       branch_0x80359a5c

branch_0x80359a14:
    lwz     r0, 0x8(r28)
    add     r0, r0, r4
    stw     r0, 0x8(r28)
    lhz     r0, 0x10(r28)
    slwi    r0, r0, 1
    lhzx    r0, r3, r0
    sth     r0, 0x10(r28)
    lhz     r5, 0x10(r28)
    cmplwi  r5, 0x5
    blt-    branch_0x80359a4c
    lwz     r4, 0x18(sp)
    lhz     r0, 0x10(r4)
    cmplw   r5, r0
    blt-    branch_0x80359a5c
branch_0x80359a4c:
    lwz     r3, 0x18(sp)
    li      r4, -0x6
    bl      __CARDPutControlBlock
    b       branch_0x80359a88

branch_0x80359a5c:
    lwz     r4, 0x18(sp)
    lwz     r5, 0x8(r28)
    lwz     r4, 0xc(r4)
    subi    r0, r4, 0x1
    andc    r0, r30, r0
    cmplw   r5, r0
    blt+    branch_0x80359a14
    stw     r30, 0x8(r28)
    li      r3, 0x0
    lwz     r0, 0x18(sp)
    stw     r0, 0x0(r31)
branch_0x80359a88:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl ReadCallback
ReadCallback: # 0x80359aa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x8040
    mulli   r5, r29, 0x110
    addi    r0, r3, 0x3460
    mr.     r30, r4
    add     r31, r0, r5
    blt-    branch_0x80359b98
    lwz     r28, 0xc0(r31)
    lwz     r4, 0xc(r28)
    cmpwi   r4, 0x0
    bge-    branch_0x80359aec
    li      r30, -0xe
    b       branch_0x80359b98

branch_0x80359aec:
    lwz     r5, 0xc(r31)
    lwz     r6, 0x8(r28)
    subi    r0, r5, 0x1
    not     r3, r0
    add     r0, r6, r5
    and     r0, r3, r0
    subf    r27, r6, r0
    subf    r0, r27, r4
    stw     r0, 0xc(r28)
    lwz     r0, 0xc(r28)
    cmpwi   r0, 0x0
    ble-    branch_0x80359b98
    mr      r3, r31
    bl      __CARDGetFatBlock
    lwz     r0, 0x8(r28)
    add     r0, r0, r27
    stw     r0, 0x8(r28)
    lhz     r0, 0x10(r28)
    slwi    r0, r0, 1
    lhzx    r0, r3, r0
    sth     r0, 0x10(r28)
    lhz     r3, 0x10(r28)
    cmplwi  r3, 0x5
    blt-    branch_0x80359b58
    lhz     r0, 0x10(r31)
    cmplw   r3, r0
    blt-    branch_0x80359b60
branch_0x80359b58:
    li      r30, -0x6
    b       branch_0x80359b98

branch_0x80359b60:
    lwz     r5, 0xc(r28)
    lwz     r0, 0xc(r31)
    cmpw    r5, r0
    bge-    branch_0x80359b74
    b       branch_0x80359b78

branch_0x80359b74:
    mr      r5, r0
branch_0x80359b78:
    mullw   r4, r0, r3
    lwz     r6, 0xb4(r31)
    lis     r3, 0x8036
    subi    r7, r3, 0x6558
    addi    r3, r29, 0x0
    bl      __CARDRead
    mr.     r30, r3
    bge-    branch_0x80359bc4
branch_0x80359b98:
    lwz     r27, 0xd0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0xd0(r31)
    mr      r4, r30
    bl      __CARDPutControlBlock
    addi    r12, r27, 0x0
    mtlr    r12
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    blrl
branch_0x80359bc4:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl CARDReadAsync
CARDReadAsync: # 0x80359bd8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 23
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    addi    r27, r7, 0x0
    bne-    branch_0x80359c08
    clrlwi. r0, r31, 23
    beq-    branch_0x80359c10
branch_0x80359c08:
    li      r3, -0x80
    b       branch_0x80359d0c

branch_0x80359c10:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r6, 0x0
    addi    r6, sp, 0x1c
    bl      __CARDSeek
    cmpwi   r3, 0x0
    bge-    branch_0x80359c30
    b       branch_0x80359d0c

branch_0x80359c30:
    lwz     r3, 0x1c(sp)
    bl      __CARDGetDirBlock
    lwz     r0, 0x4(r29)
    slwi    r0, r0, 6
    add     r28, r3, r0
    lwz     r3, 0x1c(sp)
    mr      r4, r28
    bl      __CARDAccess
    addi    r4, r3, 0x0
    cmpwi   r4, -0xa
    bne-    branch_0x80359c68
    mr      r3, r28
    bl      __CARDIsPublic
    mr      r4, r3
branch_0x80359c68:
    cmpwi   r4, 0x0
    bge-    branch_0x80359c7c
    lwz     r3, 0x1c(sp)
    bl      __CARDPutControlBlock
    b       branch_0x80359d0c

branch_0x80359c7c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      DCInvalidateRange
    cmplwi  r27, 0x0
    beq-    branch_0x80359c98
    mr      r0, r27
    b       branch_0x80359ca0

branch_0x80359c98:
    lis     r3, 0x8035
    addi    r0, r3, 0x432c
branch_0x80359ca0:
    lwz     r3, 0x1c(sp)
    stw     r0, 0xd0(r3)
    lwz     r3, 0x1c(sp)
    lwz     r4, 0x8(r29)
    lwz     r5, 0xc(r3)
    subi    r0, r5, 0x1
    and     r8, r4, r0
    subf    r3, r8, r5
    cmpw    r31, r3
    bge-    branch_0x80359ccc
    mr      r3, r31
branch_0x80359ccc:
    lhz     r0, 0x10(r29)
    lis     r4, 0x8036
    addi    r31, r3, 0x0
    lwz     r3, 0x0(r29)
    mullw   r0, r5, r0
    subi    r7, r4, 0x6558
    addi    r5, r31, 0x0
    addi    r6, r30, 0x0
    add     r4, r8, r0
    bl      __CARDRead
    mr.     r29, r3
    bge-    branch_0x80359d08
    lwz     r3, 0x1c(sp)
    mr      r4, r29
    bl      __CARDPutControlBlock
branch_0x80359d08:
    mr      r3, r29
branch_0x80359d0c:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl CARDRead
CARDRead: # 0x80359d20
    mflr    r0
    lis     r7, 0x8035
    stw     r0, 0x4(sp)
    addi    r7, r7, 0x4330
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      CARDReadAsync
    cmpwi   r3, 0x0
    bge-    branch_0x80359d4c
    b       branch_0x80359d54

branch_0x80359d4c:
    lwz     r3, 0x0(r31)
    bl      __CARDSync
branch_0x80359d54:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

