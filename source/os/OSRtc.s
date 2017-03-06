
.globl WriteSramCallback
WriteSramCallback: # 0x80347490
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x2640
    stw     r30, 0x10(sp)
    addi    r30, r31, 0x40
    lwz     r4, 0x40(r31)
    add     r3, r31, r4
    subfic  r5, r4, 0x40
    bl      WriteSram
    stw     r3, 0x4c(r31)
    lwz     r0, 0x4c(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x803474d8
    li      r0, 0x40
    stw     r0, 0x0(r30)
branch_0x803474d8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl WriteSram
WriteSram: # 0x803474f0
    mflr    r0
    lis     r6, 0x8034
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x7490
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    li      r4, 0x1
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    mr      r5, r0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    li      r3, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x8034753c
    li      r3, 0x0
    b       branch_0x803475ec

branch_0x8034753c:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x3
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x80347564
    li      r3, 0x0
    bl      EXIUnlock
    li      r3, 0x0
    b       branch_0x803475ec

branch_0x80347564:
    slwi    r31, r31, 6
    addi    r0, r31, 0x100
    oris    r0, r0, 0xa000
    stw     r0, 0x14(sp)
    addi    r4, sp, 0x14
    li      r3, 0x0
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r31, r0, 5
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    or      r31, r31, r0
    li      r3, 0x0
    li      r6, 0x1
    bl      EXIImmEx
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIUnlock
    cntlzw  r0, r31
    srwi    r3, r0, 5
branch_0x803475ec:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __OSInitSram
__OSInitSram: # 0x80347608
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    li      r4, 0x40
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x2640
    addi    r3, r30, 0x0
    stw     r31, 0x44(r30)
    stw     r31, 0x48(r30)
    bl      DCInvalidateRange
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x80347658
    b       branch_0x80347718

branch_0x80347658:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x3
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x8034767c
    li      r3, 0x0
    bl      EXIUnlock
    b       branch_0x80347718

branch_0x8034767c:
    lis     r3, 0x2000
    addi    r0, r3, 0x100
    stw     r0, 0x8(sp)
    addi    r4, sp, 0x8
    li      r3, 0x0
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r31, r0, 5
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r4, r30, 0x0
    or      r31, r31, r0
    li      r3, 0x0
    li      r5, 0x40
    li      r6, 0x0
    li      r7, 0x0
    bl      EXIDma
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIUnlock
    cntlzw  r0, r31
    srwi    r31, r0, 5
branch_0x80347718:
    stw     r31, 0x4c(r30)
    li      r0, 0x40
    stw     r0, 0x40(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __OSLockSram
__OSLockSram: # 0x8034773c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2640
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x80347774
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       branch_0x80347780

branch_0x80347774:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
branch_0x80347780:
    mr      r3, r31
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __OSLockSramEx
__OSLockSramEx: # 0x80347798
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2640
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x803477d0
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x803477e0

branch_0x803477d0:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r3, r31, 0x14
    stw     r0, 0x0(r4)
branch_0x803477e0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl UnlockSram
UnlockSram: # 0x803477f4
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(sp)
    lis     r3, 0x8040
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r31, r3, 0x2640
    beq-    branch_0x80347ad4
    cmplwi  r4, 0x0
    bne-    branch_0x803479c8
    lbz     r3, 0x13(r31)
    clrlwi  r0, r3, 30
    cmplwi  r0, 0x2
    ble-    branch_0x80347834
    clrrwi  r0, r3, 2
    stb     r0, 0x13(r31)
branch_0x80347834:
    li      r0, 0x0
    sth     r0, 0x2(r31)
    addi    r5, r31, 0x14
    addi    r6, r31, 0xc
    addi    r3, r5, 0x1
    sth     r0, 0x0(r31)
    subf    r3, r6, r3
    cmplw   r6, r5
    srwi    r3, r3, 1
    bge-    branch_0x803479c8
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x80347998
branch_0x80347868:
    lhz     r5, 0x0(r31)
    lhz     r0, 0x0(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x0(r6)
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x2(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x2(r6)
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x4(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x4(r6)
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x6(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x6(r6)
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0x8(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x8(r6)
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0xa(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0xa(r6)
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0xc(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0xc(r6)
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    lhz     r5, 0x0(r31)
    lhz     r0, 0xe(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0xe(r6)
    addi    r6, r6, 0x10
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    bdnz+      branch_0x80347868
    andi.   r3, r3, 0x7
    beq-    branch_0x803479c8
branch_0x80347998:
    mtctr   r3
branch_0x8034799c:
    lhz     r5, 0x0(r31)
    lhz     r0, 0x0(r6)
    add     r0, r5, r0
    sth     r0, 0x0(r31)
    lhz     r0, 0x0(r6)
    addi    r6, r6, 0x2
    lhz     r5, 0x2(r31)
    not     r0, r0
    add     r0, r5, r0
    sth     r0, 0x2(r31)
    bdnz+      branch_0x8034799c
branch_0x803479c8:
    addi    r30, r31, 0x40
    lwz     r0, 0x40(r31)
    cmplw   r4, r0
    bge-    branch_0x803479dc
    stw     r4, 0x0(r30)
branch_0x803479dc:
    lwz     r29, 0x0(r30)
    lis     r3, 0x8034
    addi    r5, r3, 0x7490
    subfic  r27, r29, 0x40
    add     r28, r31, r29
    li      r3, 0x0
    li      r4, 0x1
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x80347a0c
    li      r0, 0x0
    b       branch_0x80347abc

branch_0x80347a0c:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x3
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x80347a34
    li      r3, 0x0
    bl      EXIUnlock
    li      r0, 0x0
    b       branch_0x80347abc

branch_0x80347a34:
    slwi    r3, r29, 6
    addi    r0, r3, 0x100
    oris    r0, r0, 0xa000
    stw     r0, 0x10(sp)
    addi    r4, sp, 0x10
    li      r3, 0x0
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r29, r0, 5
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r4, r28, 0x0
    addi    r5, r27, 0x0
    or      r29, r29, r0
    li      r3, 0x0
    li      r6, 0x1
    bl      EXIImmEx
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r29, r29, r0
    li      r3, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r29, r29, r0
    li      r3, 0x0
    bl      EXIUnlock
    cntlzw  r0, r29
    srwi    r0, r0, 5
branch_0x80347abc:
    stw     r0, 0x4c(r31)
    lwz     r0, 0x4c(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x80347ad4
    li      r0, 0x40
    stw     r0, 0x0(r30)
branch_0x80347ad4:
    li      r0, 0x0
    stw     r0, 0x48(r31)
    lwz     r3, 0x44(r31)
    bl      OSRestoreInterrupts
    lwz     r3, 0x4c(r31)
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __OSUnlockSram
__OSUnlockSram: # 0x80347afc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      UnlockSram
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __OSUnlockSramEx
__OSUnlockSramEx: # 0x80347b20
    mflr    r0
    li      r4, 0x14
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      UnlockSram
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __OSSyncSram
__OSSyncSram: # 0x80347b44
    lis     r3, 0x8040
    addi    r3, r3, 0x2640
    lwz     r3, 0x4c(r3)
    blr


.globl __OSReadROM
__OSReadROM: # 0x80347b54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      DCInvalidateRange
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      EXILock
    cmpwi   r3, 0x0
    bne-    branch_0x80347b9c
    li      r3, 0x0
    b       branch_0x80347c5c

branch_0x80347b9c:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x3
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x80347bc4
    li      r3, 0x0
    bl      EXIUnlock
    li      r3, 0x0
    b       branch_0x80347c5c

branch_0x80347bc4:
    slwi    r0, r31, 6
    stw     r0, 0x14(sp)
    addi    r4, sp, 0x14
    li      r3, 0x0
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r31, r0, 5
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    or      r31, r31, r0
    li      r3, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      EXIDma
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r31, r31, r0
    li      r3, 0x0
    bl      EXIUnlock
    cntlzw  r0, r31
    srwi    r3, r0, 5
branch_0x80347c5c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl OSGetSoundMode
OSGetSoundMode: # 0x80347c78
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x2640
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x80347cb0
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       branch_0x80347cbc

branch_0x80347cb0:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
branch_0x80347cbc:
    lbz     r0, 0x13(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80347cd0
    li      r31, 0x1
    b       branch_0x80347cd4

branch_0x80347cd0:
    li      r31, 0x0
branch_0x80347cd4:
    li      r3, 0x0
    li      r4, 0x0
    bl      UnlockSram
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSSetSoundMode
OSSetSoundMode: # 0x80347cf8
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x2640
    stw     r30, 0x18(sp)
    clrlslwi  r30, r3, 31, 2
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x80347d38
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       branch_0x80347d44

branch_0x80347d38:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
branch_0x80347d44:
    lbz     r3, 0x13(r31)
    rlwinm  r0, r3, 0, 29, 29
    cmplw   r30, r0
    bne-    branch_0x80347d64
    li      r3, 0x0
    li      r4, 0x0
    bl      UnlockSram
    b       branch_0x80347d84

branch_0x80347d64:
    rlwinm  r0, r3, 0, 30, 28
    stb     r0, 0x13(r31)
    li      r3, 0x1
    li      r4, 0x0
    lbz     r0, 0x13(r31)
    or      r0, r0, r30
    stb     r0, 0x13(r31)
    bl      UnlockSram
branch_0x80347d84:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSGetProgressiveMode
OSGetProgressiveMode: # 0x80347d9c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x2640
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x80347dd4
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       branch_0x80347de0

branch_0x80347dd4:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
branch_0x80347de0:
    lbz     r0, 0x13(r31)
    li      r3, 0x0
    li      r4, 0x0
    extrwi  r31, r0, 1, 24
    bl      UnlockSram
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSSetProgressiveMode
OSSetProgressiveMode: # 0x80347e0c
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x2640
    stw     r30, 0x18(sp)
    clrlslwi  r30, r3, 31, 7
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x80347e4c
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       branch_0x80347e58

branch_0x80347e4c:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
branch_0x80347e58:
    lbz     r3, 0x13(r31)
    rlwinm  r0, r3, 0, 24, 24
    cmplw   r30, r0
    bne-    branch_0x80347e78
    li      r3, 0x0
    li      r4, 0x0
    bl      UnlockSram
    b       branch_0x80347e98

branch_0x80347e78:
    rlwinm  r0, r3, 0, 25, 23
    stb     r0, 0x13(r31)
    li      r3, 0x1
    li      r4, 0x0
    lbz     r0, 0x13(r31)
    or      r0, r0, r30
    stb     r0, 0x13(r31)
    bl      UnlockSram
branch_0x80347e98:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSGetWirelessID
OSGetWirelessID: # 0x80347eb0
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x2640
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x80347ef0
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80347f00

branch_0x80347ef0:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r3, r31, 0x14
    stw     r0, 0x0(r4)
branch_0x80347f00:
    slwi    r0, r30, 1
    add     r3, r3, r0
    lhz     r31, 0x1c(r3)
    li      r3, 0x0
    li      r4, 0x14
    bl      UnlockSram
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSSetWirelessID
OSSetWirelessID: # 0x80347f34
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x2640
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq-    branch_0x80347f7c
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80347f8c

branch_0x80347f7c:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    addi    r3, r31, 0x14
    stw     r0, 0x0(r4)
branch_0x80347f8c:
    slwi    r0, r29, 1
    add     r4, r3, r0
    lhzu    r3, 0x1c(r4)
    clrlwi  r0, r30, 16
    cmplw   r3, r0
    beq-    branch_0x80347fb8
    sth     r30, 0x0(r4)
    li      r3, 0x1
    li      r4, 0x14
    bl      UnlockSram
    b       branch_0x80347fc4

branch_0x80347fb8:
    li      r3, 0x0
    li      r4, 0x14
    bl      UnlockSram
branch_0x80347fc4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

