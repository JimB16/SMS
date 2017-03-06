
.globl OSInitMutex
OSInitMutex: # 0x803466d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSInitThreadQueue
    li      r0, 0x0
    stw     r0, 0x8(r31)
    stw     r0, 0xc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSLockMutex
OSLockMutex: # 0x80346710
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    bl      OSDisableInterrupts
    mr      r29, r3
    bl      OSGetCurrentThread
    addi    r30, r3, 0x0
    li      r31, 0x0
branch_0x80346744:
    lwz     r0, 0x8(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8034678c
    stw     r30, 0x8(r28)
    lwz     r3, 0xc(r28)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r28)
    lwz     r3, 0x2f8(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x80346774
    stw     r28, 0x2f4(r30)
    b       branch_0x80346778

branch_0x80346774:
    stw     r28, 0x10(r3)
branch_0x80346778:
    stw     r3, 0x14(r28)
    li      r0, 0x0
    stw     r0, 0x10(r28)
    stw     r28, 0x2f8(r30)
    b       branch_0x803467c4

branch_0x8034678c:
    cmplw   r0, r30
    bne-    branch_0x803467a4
    lwz     r3, 0xc(r28)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r28)
    b       branch_0x803467c4

branch_0x803467a4:
    stw     r28, 0x2f0(r30)
    lwz     r3, 0x8(r28)
    lwz     r4, 0x2d0(r30)
    bl      __OSPromoteThread
    mr      r3, r28
    bl      OSSleepThread
    stw     r31, 0x2f0(r30)
    b       branch_0x80346744

branch_0x803467c4:
    mr      r3, r29
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSUnlockMutex
OSUnlockMutex: # 0x803467ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      OSGetCurrentThread
    lwz     r0, 0x8(r29)
    addi    r30, r3, 0x0
    cmplw   r0, r30
    bne-    branch_0x80346890
    lwz     r3, 0xc(r29)
    subic.  r0, r3, 0x1
    stw     r0, 0xc(r29)
    bne-    branch_0x80346890
    lwz     r3, 0x10(r29)
    lwz     r4, 0x14(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x8034684c
    stw     r4, 0x2f8(r30)
    b       branch_0x80346850

branch_0x8034684c:
    stw     r4, 0x14(r3)
branch_0x80346850:
    cmplwi  r4, 0x0
    bne-    branch_0x80346860
    stw     r3, 0x2f4(r30)
    b       branch_0x80346864

branch_0x80346860:
    stw     r3, 0x10(r4)
branch_0x80346864:
    li      r0, 0x0
    stw     r0, 0x8(r29)
    lwz     r3, 0x2d0(r30)
    lwz     r0, 0x2d4(r30)
    cmpw    r3, r0
    bge-    branch_0x80346888
    mr      r3, r30
    bl      __OSGetEffectivePriority
    stw     r3, 0x2d0(r30)
branch_0x80346888:
    mr      r3, r29
    bl      OSWakeupThread
branch_0x80346890:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __OSUnlockAllMutex
__OSUnlockAllMutex: # 0x803468b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    b       branch_0x80346900

branch_0x803468d4:
    lwz     r5, 0x10(r4)
    addi    r3, r4, 0x0
    cmplwi  r5, 0x0
    bne-    branch_0x803468ec
    stw     r31, 0x2f8(r30)
    b       branch_0x803468f0

branch_0x803468ec:
    stw     r31, 0x14(r5)
branch_0x803468f0:
    stw     r5, 0x2f4(r30)
    stw     r31, 0xc(r4)
    stw     r31, 0x8(r4)
    bl      OSWakeupThread
branch_0x80346900:
    lwz     r4, 0x2f4(r30)
    cmplwi  r4, 0x0
    bne+    branch_0x803468d4
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSTryLockMutex
OSTryLockMutex: # 0x80346924
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      OSGetCurrentThread
    lwz     r0, 0x8(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80346998
    stw     r3, 0x8(r29)
    lwz     r4, 0xc(r29)
    addi    r0, r4, 0x1
    stw     r0, 0xc(r29)
    lwz     r4, 0x2f8(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8034697c
    stw     r29, 0x2f4(r3)
    b       branch_0x80346980

branch_0x8034697c:
    stw     r29, 0x10(r4)
branch_0x80346980:
    stw     r4, 0x14(r29)
    li      r0, 0x0
    li      r30, 0x1
    stw     r0, 0x10(r29)
    stw     r29, 0x2f8(r3)
    b       branch_0x803469b8

branch_0x80346998:
    cmplw   r0, r3
    bne-    branch_0x803469b4
    lwz     r3, 0xc(r29)
    li      r30, 0x1
    addi    r0, r3, 0x1
    stw     r0, 0xc(r29)
    b       branch_0x803469b8

branch_0x803469b4:
    li      r30, 0x0
branch_0x803469b8:
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSInitCond
OSInitCond: # 0x803469e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSInitThreadQueue
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSWaitCond
OSWaitCond: # 0x80346a00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      OSGetCurrentThread
    lwz     r0, 0x8(r28)
    addi    r30, r3, 0x0
    cmplw   r0, r30
    bne-    branch_0x80346ab8
    lwz     r29, 0xc(r28)
    li      r0, 0x0
    stw     r0, 0xc(r28)
    lwz     r3, 0x10(r28)
    lwz     r4, 0x14(r28)
    cmplwi  r3, 0x0
    bne-    branch_0x80346a58
    stw     r4, 0x2f8(r30)
    b       branch_0x80346a5c

branch_0x80346a58:
    stw     r4, 0x14(r3)
branch_0x80346a5c:
    cmplwi  r4, 0x0
    bne-    branch_0x80346a6c
    stw     r3, 0x2f4(r30)
    b       branch_0x80346a70

branch_0x80346a6c:
    stw     r3, 0x10(r4)
branch_0x80346a70:
    li      r0, 0x0
    stw     r0, 0x8(r28)
    lwz     r3, 0x2d0(r30)
    lwz     r0, 0x2d4(r30)
    cmpw    r3, r0
    bge-    branch_0x80346a94
    mr      r3, r30
    bl      __OSGetEffectivePriority
    stw     r3, 0x2d0(r30)
branch_0x80346a94:
    bl      OSDisableScheduler
    mr      r3, r28
    bl      OSWakeupThread
    bl      OSEnableScheduler
    mr      r3, r27
    bl      OSSleepThread
    mr      r3, r28
    bl      OSLockMutex
    stw     r29, 0xc(r28)
branch_0x80346ab8:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl OSSignalCond
OSSignalCond: # 0x80346ad4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSWakeupThread
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

