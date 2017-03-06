
.globl __CARDGetFatBlock
__CARDGetFatBlock: # 0x80356aa8
    lwz     r3, 0x88(r3)
    blr


.globl WriteCallback
WriteCallback: # 0x80356ab0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr.     r30, r4
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    mulli   r5, r29, 0x110
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    add     r31, r0, r5
    blt-    branch_0x80356b28
    lwz     r3, 0x80(r31)
    lwz     r0, 0x88(r31)
    addi    r4, r3, 0x6000
    cmplw   r0, r4
    addis   r5, r3, 0x1
    subi    r5, r5, 0x8000
    bne-    branch_0x80356b14
    stw     r5, 0x88(r31)
    addi    r3, r5, 0x0
    li      r5, 0x2000
    bl      memcpy
    b       branch_0x80356b28

branch_0x80356b14:
    stw     r4, 0x88(r31)
    addi    r3, r4, 0x0
    addi    r4, r5, 0x0
    li      r5, 0x2000
    bl      memcpy
branch_0x80356b28:
    lwz     r0, 0xd0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80356b40
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      __CARDPutControlBlock
branch_0x80356b40:
    lwz     r0, 0xd8(r31)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80356b68
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xd8(r31)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    blrl
branch_0x80356b68:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl EraseCallback
EraseCallback: # 0x80356b84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x8040
    stw     r30, 0x20(sp)
    mulli   r5, r31, 0x110
    stw     r29, 0x1c(sp)
    addi    r0, r3, 0x3460
    mr.     r29, r4
    add     r30, r0, r5
    blt-    branch_0x80356bf0
    lwz     r5, 0x88(r30)
    lis     r3, 0x8035
    lwz     r0, 0x80(r30)
    addi    r7, r3, 0x6ab0
    lwz     r3, 0xc(r30)
    subf    r0, r0, r5
    srwi    r0, r0, 13
    mullw   r4, r3, r0
    addi    r6, r5, 0x0
    addi    r3, r31, 0x0
    li      r5, 0x2000
    bl      __CARDWrite
    mr.     r29, r3
    bge-    branch_0x80356c30
branch_0x80356bf0:
    lwz     r0, 0xd0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80356c08
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      __CARDPutControlBlock
branch_0x80356c08:
    lwz     r0, 0xd8(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80356c30
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xd8(r30)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x80356c30:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __CARDAllocBlock
__CARDAllocBlock: # 0x80356c4c
    mflr    r0
    mulli   r7, r3, 0x110
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lis     r6, 0x8040
    addi    r0, r6, 0x3460
    stw     r31, 0x1c(sp)
    add     r9, r0, r7
    stw     r30, 0x18(sp)
    lwz     r0, 0x0(r9)
    cmpwi   r0, 0x0
    bne-    branch_0x80356c84
    li      r3, -0x3
    b       branch_0x80356d4c

branch_0x80356c84:
    lwz     r8, 0x88(r9)
    lhz     r0, 0x6(r8)
    cmplw   r0, r4
    bge-    branch_0x80356c9c
    li      r3, -0x9
    b       branch_0x80356d4c

branch_0x80356c9c:
    subf    r0, r4, r0
    sth     r0, 0x6(r8)
    lis     r6, 0x1
    subi    r12, r6, 0x1
    lhz     r11, 0x8(r8)
    addi    r0, r12, 0x0
    li      r30, 0x0
    b       branch_0x80356d34

branch_0x80356cbc:
    lhz     r10, 0x10(r9)
    addi    r30, r30, 0x1
    clrlwi  r6, r30, 16
    subi    r7, r10, 0x5
    cmpw    r7, r6
    bge-    branch_0x80356cdc
    li      r3, -0x6
    b       branch_0x80356d4c

branch_0x80356cdc:
    addi    r11, r11, 0x1
    clrlwi  r6, r11, 16
    cmplwi  r6, 0x5
    blt-    branch_0x80356cf4
    cmplw   r6, r10
    blt-    branch_0x80356cf8
branch_0x80356cf4:
    li      r11, 0x5
branch_0x80356cf8:
    clrlslwi  r6, r11, 16, 1
    add     r7, r8, r6
    lhz     r6, 0x0(r7)
    cmplwi  r6, 0x0
    bne-    branch_0x80356d34
    clrlwi  r6, r12, 16
    cmplwi  r6, 0xffff
    bne-    branch_0x80356d20
    mr      r12, r11
    b       branch_0x80356d28

branch_0x80356d20:
    clrlslwi  r6, r31, 16, 1
    sthx    r11, r8, r6
branch_0x80356d28:
    sth     r0, 0x0(r7)
    addi    r31, r11, 0x0
    subi    r4, r4, 0x1
branch_0x80356d34:
    cmplwi  r4, 0x0
    bne+    branch_0x80356cbc
    sth     r11, 0x8(r8)
    mr      r4, r8
    sth     r12, 0xbe(r9)
    bl      __CARDUpdateFatBlock
branch_0x80356d4c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __CARDUpdateFatBlock
__CARDUpdateFatBlock: # 0x80356d64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    addi    r5, r29, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r6, r29, 0x2
    lhz     r3, 0x4(r4)
    mulli   r4, r28, 0x110
    addi    r0, r3, 0x1
    lis     r3, 0x8040
    sth     r0, 0x4(r29)
    addi    r0, r3, 0x3460
    add     r31, r0, r4
    addi    r3, r29, 0x4
    li      r4, 0x1ffc
    bl      __CARDCheckSum
    addi    r3, r29, 0x0
    li      r4, 0x2000
    bl      DCStoreRange
    stw     r30, 0xd8(r31)
    lis     r3, 0x8035
    addi    r5, r3, 0x6b84
    lwz     r0, 0x80(r31)
    mr      r3, r28
    lwz     r4, 0xc(r31)
    subf    r0, r0, r29
    srwi    r0, r0, 13
    mullw   r4, r4, r0
    bl      __CARDEraseSector
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

