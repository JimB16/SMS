
.globl WriteCallback_80359d68
WriteCallback_80359d68: # 0x80359d68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lis     r3, __CARDBlock@h
    stw     r29, 0x14(sp)
    mulli   r5, r30, 0x110
    stw     r28, 0x10(sp)
    addi    r0, r3, __CARDBlock@l
    mr.     r28, r4
    add     r31, r0, r5
    blt-    branch_0x80359e8c
    lwz     r29, 0xc0(r31)
    lwz     r3, 0xc(r29)
    cmpwi   r3, 0x0
    bge-    branch_0x80359db8
    li      r28, -0xe
    b       branch_0x80359e8c

branch_0x80359db8:
    lwz     r0, 0xc(r31)
    subf    r0, r0, r3
    stw     r0, 0xc(r29)
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x80359e20
    mr      r3, r31
    bl      __CARDGetDirBlock
    lwz     r5, 0x4(r29)
    lis     r4, 0x8000
    lwz     r0, 0xf8(r4)
    slwi    r4, r5, 6
    add     r28, r3, r4
    srwi    r29, r0, 2
    bl      OSGetTime
    addi    r6, r29, 0x0
    li      r5, 0x0
    bl      __div2i
    stw     r4, 0x28(r28)
    li      r0, 0x0
    addi    r3, r30, 0x0
    lwz     r4, 0xd0(r31)
    stw     r0, 0xd0(r31)
    bl      __CARDUpdateDir
    mr      r28, r3
    b       branch_0x80359e84

branch_0x80359e20:
    mr      r3, r31
    bl      __CARDGetFatBlock
    lwz     r4, 0x8(r29)
    lwz     r0, 0xc(r31)
    add     r0, r4, r0
    stw     r0, 0x8(r29)
    lhz     r0, 0x10(r29)
    slwi    r0, r0, 1
    lhzx    r0, r3, r0
    sth     r0, 0x10(r29)
    lhz     r4, 0x10(r29)
    cmplwi  r4, 0x5
    blt-    branch_0x80359e60
    lhz     r0, 0x10(r31)
    cmplw   r4, r0
    blt-    branch_0x80359e68
branch_0x80359e60:
    li      r28, -0x6
    b       branch_0x80359e8c

branch_0x80359e68:
    lwz     r0, 0xc(r31)
    lis     r3, EraseCallback_80359ed8@ha
    addi    r5, r3, EraseCallback_80359ed8@l
    mullw   r4, r0, r4
    addi    r3, r30, 0x0
    bl      __CARDEraseSector
    mr      r28, r3
branch_0x80359e84:
    cmpwi   r28, 0x0
    bge-    branch_0x80359eb8
branch_0x80359e8c:
    lwz     r29, 0xd0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0xd0(r31)
    mr      r4, r28
    bl      __CARDPutControlBlock
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    blrl
branch_0x80359eb8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl EraseCallback_80359ed8
EraseCallback_80359ed8: # 0x80359ed8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr.     r29, r4
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    mulli   r5, r28, 0x110
    lis     r3, __CARDBlock@h
    addi    r0, r3, __CARDBlock@l
    add     r31, r0, r5
    blt-    branch_0x80359f3c
    lwz     r4, 0xc0(r31)
    lis     r3, WriteCallback_80359d68@ha
    addi    r7, r3, WriteCallback_80359d68@l
    lwz     r5, 0xc(r31)
    lhz     r0, 0x10(r4)
    lwz     r6, 0xb4(r31)
    addi    r3, r28, 0x0
    mullw   r4, r5, r0
    bl      __CARDWrite
    mr.     r29, r3
    bge-    branch_0x80359f68
branch_0x80359f3c:
    lwz     r30, 0xd0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0xd0(r31)
    mr      r4, r29
    bl      __CARDPutControlBlock
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    blrl
branch_0x80359f68:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl CARDWriteAsync
CARDWriteAsync: # 0x80359f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r6, 0x0
    addi    r27, r5, 0x0
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    addi    r29, r7, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, sp, 0x1c
    bl      __CARDSeek
    cmpwi   r3, 0x0
    bge-    branch_0x80359fc8
    b       branch_0x8035a088

branch_0x80359fc8:
    lwz     r3, 0x1c(sp)
    lwz     r4, 0xc(r3)
    addi    r4, r4, -0x1
    and.    r0, r28, r4
    bne-    branch_0x80359fe4
    and.    r0, r27, r4
    beq-    branch_0x80359ff0
branch_0x80359fe4:
    li      r4, -0x80
    bl      __CARDPutControlBlock
    b       branch_0x8035a088

branch_0x80359ff0:
    bl      __CARDGetDirBlock
    lwz     r0, 0x4(r30)
    slwi    r0, r0, 6
    add     r4, r3, r0
    lwz     r3, 0x1c(sp)
    bl      __CARDAccess
    mr.     r4, r3
    bge-    branch_0x8035a01c
    lwz     r3, 0x1c(sp)
    bl      __CARDPutControlBlock
    b       branch_0x8035a088

branch_0x8035a01c:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      DCStoreRange
    cmplwi  r29, 0x0
    beq-    branch_0x8035a038
    mr      r0, r29
    b       branch_0x8035a040

branch_0x8035a038:
    lis     r3, __CARDDefaultApiCallback@h
    addi    r0, r3, __CARDDefaultApiCallback@l
branch_0x8035a040:
    lwz     r4, 0x1c(sp)
    lis     r3, EraseCallback_80359ed8@ha
    addi    r5, r3, EraseCallback_80359ed8@l
    stw     r0, 0xd0(r4)
    lwz     r3, 0x1c(sp)
    stw     r31, 0xb4(r3)
    lwz     r3, 0x1c(sp)
    lhz     r0, 0x10(r30)
    lwz     r4, 0xc(r3)
    lwz     r3, 0x0(r30)
    mullw   r4, r4, r0
    bl      __CARDEraseSector
    mr.     r30, r3
    bge-    branch_0x8035a084
    lwz     r3, 0x1c(sp)
    mr      r4, r30
    bl      __CARDPutControlBlock
branch_0x8035a084:
    mr      r3, r30
branch_0x8035a088:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl CARDWrite
CARDWrite: # 0x8035a09c
    mflr    r0
    lis     r7, __CARDSyncCallback@h
    stw     r0, 0x4(sp)
    addi    r7, r7, __CARDSyncCallback@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      CARDWriteAsync
    cmpwi   r3, 0x0
    bge-    branch_0x8035a0c8
    b       branch_0x8035a0d0

branch_0x8035a0c8:
    lwz     r3, 0x0(r31)
    bl      __CARDSync
branch_0x8035a0d0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

