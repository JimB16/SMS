
.globl __ct__Q25JMath13TRandom_fast_FUl
__ct__Q25JMath13TRandom_fast_FUl: # 0x8031e244
    stw     r4, 0x0(r3)
    blr


.globl setSeed__Q25JMath15TRandom_enough_FUl
setSeed__Q25JMath15TRandom_enough_FUl: # 0x8031e24c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x4(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8031e284
    addi    r0, r3, 0x1
    stw     r0, 0x0(r31)
branch_0x8031e284:
    lis     r3, unk_7fffffff@ha
    addi    r29, r3, unk_7fffffff@l
    li      r26, 0x8
    li      r28, 0x0
    li      r27, 0x41a7
branch_0x8031e298:
    lwz     r4, 0x0(r31)
    mullw   r3, r28, r27
    mulhwu  r0, r4, r27
    add     r3, r3, r0
    mullw   r0, r4, r28
    mullw   r4, r4, r27
    add     r3, r3, r0
    addi    r6, r29, 0x0
    li      r5, 0x0
    bl      __mod2u
    subic.  r26, r26, 0x1
    stw     r4, 0x0(r31)
    bne+    branch_0x8031e298
    lis     r3, unk_7fffffff@ha
    addi    r27, r3, unk_7fffffff@l
    li      r26, 0x20
    li      r30, 0x80
    li      r28, 0x0
    li      r29, 0x41a7
branch_0x8031e2e4:
    lwz     r4, 0x0(r31)
    mullw   r3, r28, r29
    mulhwu  r0, r4, r29
    add     r3, r3, r0
    mullw   r0, r4, r28
    mullw   r4, r4, r29
    add     r3, r3, r0
    addi    r6, r27, 0x0
    li      r5, 0x0
    addi    r26, r26, -0x1
    addi    r30, r30, -0x4
    bl      __mod2u
    stw     r4, 0x0(r31)
    cmplwi  r26, 0x0
    addi    r0, r30, 0x8
    lwz     r3, 0x0(r31)
    stwx    r3, r31, r0
    bne+    branch_0x8031e2e4
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

