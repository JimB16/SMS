
.globl InitMetroTRK
InitMetroTRK: # 0x803410f4
    subi    sp, sp, 0x4
    stw     r3, 0x0(sp)
    lis     r3, 0x8040
    ori     r3, r3, 0x2130
    stmw    r0, 0x0(r3)
    lwz     r4, 0x0(sp)
    addi    sp, sp, 0x4
    stw     sp, 0x4(r3)
    stw     r4, 0xc(r3)
    mflr    r4
    stw     r4, 0x84(r3)
    stw     r4, 0x80(r3)
    mfcr    r4
    stw     r4, 0x88(r3)
    mfmsr   r4
    ori     r3, r4, 0x8000
    xori     r3, r3, 0x8000
    mtmsr   r3
    mtspr   27, r4
    bl      TRKSaveExtended1Block
    lis     r3, 0x8040
    ori     r3, r3, 0x2130
    .long 0xb8030000 # lmw     r0, 0x0(r3)
    li      r0, 0x0
    mtspr   1010, r0
    mtspr   1013, r0
    lis     sp, 0x8042
    ori     sp, sp, 0x97e8
    mr      r3, r5
    bl      InitMetroTRKCommTable
    cmpwi   r3, 0x1
    bne-    branch_0x80341184
    lwz     r4, 0x84(r3)
    mtlr    r4
    .long 0xb8030000 # lmw     r0, 0x0(r3)
    blr

branch_0x80341184:
    b       TRK_main


.globl EnableMetroTRKInterrupts
EnableMetroTRKInterrupts: # 0x80341188
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      EnableEXI2Interrupts
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTargetTranslate
TRKTargetTranslate: # 0x803411a8
    lis     r4, 0x8040
    addi    r4, r4, 0x2560
    lwz     r4, 0x0(r4)
    cmplw   r3, r4
    blt-    branch_0x803411e4
    addi    r0, r4, 0x4000
    cmplw   r3, r0
    bge-    branch_0x803411e4
    lis     r4, 0x8040
    addi    r4, r4, 0x2130
    lwz     r0, 0x238(r4)
    clrlwi  r0, r0, 30
    cmplwi  r0, 0x0
    beq-    branch_0x803411e4
    b       branch_0x803411ec

branch_0x803411e4:
    clrlwi  r0, r3, 2
    oris    r3, r0, 0x8000
branch_0x803411ec:
    blr


.globl TRK_copy_vector
TRK_copy_vector: # 0x803411f0

.set var_8, -8
.set var_4, -4
.set arg_4,  4

    mflr    r0
    stw     r0, arg_4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0x10+var_4(sp)
    stw     r30, 0x10+var_8(sp)

    mr      r30, r3
    mr      r3, r30
    bl      TRKTargetTranslate
    lis     r4, gTRKInterruptVectorTable@h
    addi    r0, r4, gTRKInterruptVectorTable@l
    mr      r31, r3
    add     r4, r0, r30
    mr      r3, r31
    li      r5, 0x100
    bl      TRK_memcpy

    mr      r3, r31
    li      r4, 0x100
    bl      TRK_flush_cache

    lwz     r31, 0x10+var_4(sp)
    lwz     r30, 0x10+var_8(sp)
    addi    sp, sp, 0x10
    lwz     r0, arg_4(sp)
    mtlr    r0
    blr


.globl __TRK_copy_vectors
__TRK_copy_vectors: # 0x80341250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    stw     r28, 0x8(sp)

    li      r3, 0x44
    bl      TRKTargetTranslate
    li      r29, 0x0
    lwz     r28, 0x0(r3)
    lis     r3, 0x803e
    slwi    r4, r29, 2
    addi    r0, r3, 0x68c8
    add     r30, r0, r4
    b       branch_0x80341290

branch_0x80341290:
    li      r31, 0x1
    b       branch_0x80341298

branch_0x80341298:
    b       branch_0x8034129c

branch_0x8034129c:
    slw     r0, r31, r29
    and     r0, r28, r0
    cmplwi  r0, 0x0
    beq-    branch_0x803412b4
    lwz     r3, 0x0(r30)
    bl      TRK_copy_vector
branch_0x803412b4:
    addi    r30, r30, 0x4
    addi    r29, r29, 0x1
    cmpwi   r29, 0xe
    ble+    branch_0x8034129c

    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKInitializeTarget
TRKInitializeTarget: # 0x803412e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lis     r3, 0x8040
    addi    r31, r3, 0x2088
    li      r0, 0x1
    stw     r0, 0x98(r31)
    bl      __TRK_get_MSR
    stw     r3, 0x8c(r31)
    lis     r3, 0x8040
    addi    r3, r3, 0x2560
    lis     r0, 0xe000
    stw     r0, 0x0(r3)
    li      r3, 0x0
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

