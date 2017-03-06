
.globl getBasNameTable__8TBaseNPCCFv
getBasNameTable__8TBaseNPCCFv: # 0x80212bb8
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    subi    r30, r4, 0x6a88
    stw     r29, 0x14(sp)
    li      r29, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      isChild__8TBaseNPCCFv
    addi    r31, r3, 0x0
    addi    r3, r28, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80212c14
    clrlwi. r0, r31, 24
    beq-    branch_0x80212c0c
    addi    r29, r30, 0x94
    b       branch_0x80212d1c

branch_0x80212c0c:
    addi    r29, r30, 0x38
    b       branch_0x80212d1c

branch_0x80212c14:
    mr      r3, r28
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80212c3c
    clrlwi. r0, r31, 24
    beq-    branch_0x80212c34
    addi    r29, r30, 0x1c0
    b       branch_0x80212d1c

branch_0x80212c34:
    addi    r29, r30, 0x160
    b       branch_0x80212d1c

branch_0x80212c3c:
    lwz     r3, 0x4c(r28)
    addis   r4, r3, 0xfc00
    subi    r4, r4, 0x6
    cmplwi  r4, 0x17
    bgt-    branch_0x80212d1c
    lis     r3, 0x803e
    subi    r3, r3, 0x63a8
    slwi    r4, r4, 2
    lwzx    r0, r3, r4
    mtctr   r0
    bctr       
    addi    r29, r30, 0xf0
    b       branch_0x80212d1c


.incbin "./baserom/code/Text_0x80005600.bin", 0x20d670, 0x80212d1c - 0x80212c70
branch_0x80212d1c:
    lwz     r0, 0x24(sp)
    mr      r3, r29
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr

