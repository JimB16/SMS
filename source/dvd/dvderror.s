
.globl ErrorCode2Num
ErrorCode2Num: # 0x8034e940
    li      r0, 0x2
    lis     r4, ErrorTable@ha
    mtctr   r0
    addi    r4, r4, ErrorTable@l
    li      r5, 0x0
branch_0x8034e954:
    lwz     r0, 0x0(r4)
    cmplw   r3, r0
    bne-    branch_0x8034e968
    clrlwi  r3, r5, 24
    blr

branch_0x8034e968:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034e980
    clrlwi  r3, r5, 24
    blr

branch_0x8034e980:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034e998
    clrlwi  r3, r5, 24
    blr

branch_0x8034e998:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034e9b0
    clrlwi  r3, r5, 24
    blr

branch_0x8034e9b0:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034e9c8
    clrlwi  r3, r5, 24
    blr

branch_0x8034e9c8:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034e9e0
    clrlwi  r3, r5, 24
    blr

branch_0x8034e9e0:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034e9f8
    clrlwi  r3, r5, 24
    blr

branch_0x8034e9f8:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034ea10
    clrlwi  r3, r5, 24
    blr

branch_0x8034ea10:
    lwzu    r0, 0x4(r4)
    addi    r5, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8034ea28
    clrlwi  r3, r5, 24
    blr

branch_0x8034ea28:
    addi    r4, r4, 0x4
    addi    r5, r5, 0x1
    bdnz+      branch_0x8034e954
    lis     r4, unk_00100008@h
    cmplw   r3, r4
    blt-    branch_0x8034ea54
    addi    r0, r4, unk_00100008@l
    cmplw   r3, r0
    bgt-    branch_0x8034ea54
    li      r3, 0x11
    blr

branch_0x8034ea54:
    li      r3, 0x1d
    blr


.globl __DVDStoreErrorCode
__DVDStoreErrorCode: # 0x8034ea5c
    mflr    r0
    stw     r0, 0x4(sp)
    addis   r0, r3, 0xfedd
    cmplwi  r0, 0x4567
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bne-    branch_0x8034ea80
    li      r31, 0xff
    b       branch_0x8034eab4

branch_0x8034ea80:
    cmplwi  r0, 0x4568
    bne-    branch_0x8034ea90
    li      r31, 0xfe
    b       branch_0x8034eab4

branch_0x8034ea90:
    srwi    r31, r3, 24
    clrlwi  r3, r3, 8
    bl      ErrorCode2Num
    cmplwi  r31, 0x6
    blt-    branch_0x8034eaa8
    li      r31, 0x6
branch_0x8034eaa8:
    mulli   r0, r31, 0x1e
    clrlwi  r3, r3, 24
    add     r31, r3, r0
branch_0x8034eab4:
    bl      __OSLockSramEx
    stb     r31, 0x24(r3)
    li      r3, 0x1
    bl      __OSUnlockSramEx
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

