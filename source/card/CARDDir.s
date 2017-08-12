
.globl __CARDGetDirBlock
__CARDGetDirBlock: # 0x80356e10
    lwz     r3, 0x84(r3)
    blr


.globl WriteCallback_80356e18
WriteCallback_80356e18: # 0x80356e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr.     r30, r4
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    mulli   r5, r29, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r31, r0, r5
    blt-    branch_0x80356e8c
    lwz     r3, 0x80(r31)
    lwz     r0, 0x84(r31)
    addi    r4, r3, 0x2000
    cmplw   r0, r4
    addi    r0, r3, 0x4000
    bne-    branch_0x80356e78
    stw     r0, 0x84(r31)
    mr      r3, r0
    li      r5, 0x2000
    bl      memcpy
    b       branch_0x80356e8c

branch_0x80356e78:
    stw     r4, 0x84(r31)
    addi    r3, r4, 0x0
    mr      r4, r0
    li      r5, 0x2000
    bl      memcpy
branch_0x80356e8c:
    lwz     r0, 0xd0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80356ea4
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      __CARDPutControlBlock
branch_0x80356ea4:
    lwz     r0, 0xd8(r31)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80356ecc
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xd8(r31)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    blrl
branch_0x80356ecc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl EraseCallback_80356ee8
EraseCallback_80356ee8: # 0x80356ee8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lis     r3, __CARDBlock@h
    stw     r30, 0x20(sp)
    mulli   r5, r31, 0x110
    stw     r29, 0x1c(sp)
    addi    r0, r3, __CARDBlock@l
    mr.     r29, r4
    add     r30, r0, r5
    blt-    branch_0x80356f54
    lwz     r5, 0x84(r30)
    lis     r3, WriteCallback_80356e18@h
    lwz     r0, 0x80(r30)
    addi    r7, r3, WriteCallback_80356e18@l
    lwz     r3, 0xc(r30)
    subf    r0, r0, r5
    srwi    r0, r0, 13
    mullw   r4, r3, r0
    addi    r6, r5, 0x0
    addi    r3, r31, 0x0
    li      r5, 0x2000
    bl      __CARDWrite
    mr.     r29, r3
    bge-    branch_0x80356f94
branch_0x80356f54:
    lwz     r0, 0xd0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80356f6c
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      __CARDPutControlBlock
branch_0x80356f6c:
    lwz     r0, 0xd8(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80356f94
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xd8(r30)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x80356f94:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __CARDUpdateDir
__CARDUpdateDir: # 0x80356fb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    mulli   r5, r28, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r30, r0, r5
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x80356ff8
    li      r3, -0x3
    b       branch_0x80357054

branch_0x80356ff8:
    lwz     r31, 0x84(r30)
    li      r4, 0x1ffc
    lha     r5, 0x1ffa(r31)
    addi    r6, r31, 0x1fc0
    addi    r3, r31, 0x0
    addi    r0, r5, 0x1
    sth     r0, 0x1ffa(r31)
    addi    r5, r6, 0x3c
    addi    r6, r6, 0x3e
    bl      __CARDCheckSum
    addi    r3, r31, 0x0
    li      r4, 0x2000
    bl      DCStoreRange
    stw     r29, 0xd8(r30)
    lis     r3, EraseCallback_80356ee8@h
    addi    r5, r3, EraseCallback_80356ee8@l
    lwz     r0, 0x80(r30)
    mr      r3, r28
    lwz     r4, 0xc(r30)
    subf    r0, r0, r31
    srwi    r0, r0, 13
    mullw   r4, r4, r0
    bl      __CARDEraseSector
branch_0x80357054:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

