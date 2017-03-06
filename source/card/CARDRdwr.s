
.globl BlockReadCallback
BlockReadCallback: # 0x80356828
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x8040
    stw     r30, 0x18(sp)
    mulli   r5, r31, 0x110
    stw     r29, 0x14(sp)
    addi    r0, r3, 0x3460
    mr.     r29, r4
    add     r30, r0, r5
    blt-    branch_0x803568a8
    lwz     r3, 0xb8(r30)
    addi    r0, r3, 0x200
    stw     r0, 0xb8(r30)
    lwz     r3, 0xb0(r30)
    addi    r0, r3, 0x200
    stw     r0, 0xb0(r30)
    lwz     r3, 0xb4(r30)
    addi    r0, r3, 0x200
    stw     r0, 0xb4(r30)
    lwz     r3, 0xac(r30)
    subic.  r0, r3, 0x1
    stw     r0, 0xac(r30)
    ble-    branch_0x803568a8
    lis     r3, 0x8035
    addi    r4, r3, 0x6828
    addi    r3, r31, 0x0
    bl      __CARDReadSegment
    mr.     r29, r3
    bge-    branch_0x803568e8
branch_0x803568a8:
    lwz     r0, 0xd0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x803568c0
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      __CARDPutControlBlock
branch_0x803568c0:
    lwz     r0, 0xd4(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x803568e8
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xd4(r30)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x803568e8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __CARDRead
__CARDRead: # 0x80356904
    mflr    r0
    mulli   r9, r3, 0x110
    stw     r0, 0x4(sp)
    lis     r8, 0x8040
    stwu    sp, -0x8(sp)
    addi    r0, r8, 0x3460
    add     r8, r0, r9
    lwz     r0, 0x0(r8)
    cmpwi   r0, 0x0
    bne-    branch_0x80356934
    li      r3, -0x3
    b       branch_0x80356958

branch_0x80356934:
    stw     r7, 0xd4(r8)
    srwi    r0, r5, 9
    lis     r5, 0x8035
    stw     r0, 0xac(r8)
    addi    r0, r5, 0x6828
    stw     r4, 0xb0(r8)
    mr      r4, r0
    stw     r6, 0xb4(r8)
    bl      __CARDReadSegment
branch_0x80356958:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl BlockWriteCallback
BlockWriteCallback: # 0x80356968
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x8040
    stw     r30, 0x18(sp)
    mulli   r5, r31, 0x110
    stw     r29, 0x14(sp)
    addi    r0, r3, 0x3460
    mr.     r29, r4
    add     r30, r0, r5
    blt-    branch_0x803569e8
    lwz     r3, 0xb8(r30)
    addi    r0, r3, 0x80
    stw     r0, 0xb8(r30)
    lwz     r3, 0xb0(r30)
    addi    r0, r3, 0x80
    stw     r0, 0xb0(r30)
    lwz     r3, 0xb4(r30)
    addi    r0, r3, 0x80
    stw     r0, 0xb4(r30)
    lwz     r3, 0xac(r30)
    subic.  r0, r3, 0x1
    stw     r0, 0xac(r30)
    ble-    branch_0x803569e8
    lis     r3, 0x8035
    addi    r4, r3, 0x6968
    addi    r3, r31, 0x0
    bl      __CARDWritePage
    mr.     r29, r3
    bge-    branch_0x80356a28
branch_0x803569e8:
    lwz     r0, 0xd0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80356a00
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      __CARDPutControlBlock
branch_0x80356a00:
    lwz     r0, 0xd4(r30)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x80356a28
    li      r0, 0x0
    mtlr    r12
    stw     r0, 0xd4(r30)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x80356a28:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __CARDWrite
__CARDWrite: # 0x80356a44
    mflr    r0
    mulli   r9, r3, 0x110
    stw     r0, 0x4(sp)
    lis     r8, 0x8040
    stwu    sp, -0x8(sp)
    addi    r0, r8, 0x3460
    add     r8, r0, r9
    lwz     r0, 0x0(r8)
    cmpwi   r0, 0x0
    bne-    branch_0x80356a74
    li      r3, -0x3
    b       branch_0x80356a98

branch_0x80356a74:
    stw     r7, 0xd4(r8)
    srwi    r0, r5, 7
    lis     r5, 0x8035
    stw     r0, 0xac(r8)
    addi    r0, r5, 0x6968
    stw     r4, 0xb0(r8)
    mr      r4, r0
    stw     r6, 0xb4(r8)
    bl      __CARDWritePage
branch_0x80356a98:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

