
.globl DBInit
DBInit: # 0x80341b1c
    lis     r4, 0x8000
    addi    r0, r4, 0x40
    lis     r3, 0x8034
    stw     r0, -0x5a78(r13)
    addi    r3, r3, 0x1b8c
    addis   r0, r3, 0x8000
    stw     r0, 0x48(r4)
    li      r0, 0x1
    stw     r0, -0x5a74(r13)
    blr


.globl __DBExceptionDestinationAux
__DBExceptionDestinationAux: # 0x80341b44
    mflr    r0
    lis     r3, 0x803e
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x6928
    crxor   6, 6, 6
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r4, 0xc0(r0)
    addis   r31, r4, 0x8000
    bl      OSReport
    mr      r3, r31
    bl      OSDumpContext
    bl      PPCHalt
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __DBExceptionDestination
__DBExceptionDestination: # 0x80341b8c
    mfmsr   r3
    ori     r3, r3, 0x30
    mtmsr   r3
    b       __DBExceptionDestinationAux


.globl __DBIsExceptionMarked
__DBIsExceptionMarked: # 0x80341b9c
    lwz     r4, -0x5a78(r13)
    clrlwi  r0, r3, 24
    li      r3, 0x1
    lwz     r4, 0x4(r4)
    slw     r0, r3, r0
    and     r3, r4, r0
    blr


.globl DBPrintf
DBPrintf: # 0x80341bb8
    stwu    sp, -0x70(sp)
    bne-    cr1, branch_0x80341be0
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x80341be0:
    stw     r3, 0x8(sp)
    stw     r4, 0xc(sp)
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    addi    sp, sp, 0x70
    blr

