
.globl getBasNameTable__8TBaseNPCCFv
getBasNameTable__8TBaseNPCCFv: # 0x80212bb8
    mflr    r0
    lis     r4, unk_803d9578@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, unk_803d9578@l
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
    addi    r4, r4, -0x6
    cmplwi  r4, 0x17
    bgt-    branch_0x80212d1c
    lis     r3, unk_803d9c58@ha
    addi    r3, r3, unk_803d9c58@l
    slwi    r4, r4, 2
    lwzx    r0, r3, r4
    mtctr   r0
    bctr       
branch_0x80212c68:
    addi    r29, r30, 0xf0
    b       branch_0x80212d1c

branch_0x80212c70:
    addi    r29, r30, 0x128
    b       branch_0x80212d1c

branch_0x80212c78:
    addi    r29, r13, R13Off_m0x7748
    b       branch_0x80212d1c

branch_0x80212c80:
    addi    r29, r30, 0x140
    b       branch_0x80212d1c

branch_0x80212c88:
    addi    r29, r30, 0x220
    b       branch_0x80212d1c

branch_0x80212c90:
    clrlwi. r0, r31, 24
    beq-    branch_0x80212ca0
    addi    r29, r30, 0x29c
    b       branch_0x80212d1c

branch_0x80212ca0:
    addi    r29, r30, 0x248
    b       branch_0x80212d1c

branch_0x80212ca8:
    addi    r29, r30, 0x2f0
    b       branch_0x80212d1c

branch_0x80212cb0:
    addi    r29, r30, 0x318
    b       branch_0x80212d1c

branch_0x80212cb8:
    addi    r29, r30, 0x348
    b       branch_0x80212d1c

branch_0x80212cc0:
    addi    r29, r13, R13Off_m0x7740
    b       branch_0x80212d1c

branch_0x80212cc8:
    clrlwi. r0, r31, 24
    beq-    branch_0x80212cd8
    addi    r29, r30, 0x3c0
    b       branch_0x80212d1c

branch_0x80212cd8:
    addi    r29, r30, 0x370
    b       branch_0x80212d1c

branch_0x80212ce0:
    addi    r29, r30, 0x410
    b       branch_0x80212d1c

branch_0x80212ce8:
    addi    r29, r30, 0x430
    b       branch_0x80212d1c

branch_0x80212cf0:
    addi    r29, r30, 0x460
    b       branch_0x80212d1c

branch_0x80212cf8:
    addi    r29, r30, 0x528
    b       branch_0x80212d1c

branch_0x80212d00:
    addi    r29, r30, 0x5b8
    b       branch_0x80212d1c

branch_0x80212d08:
    addi    r29, r30, 0x670
    b       branch_0x80212d1c

branch_0x80212d10:
    addi    r29, r30, 0x690
    b       branch_0x80212d1c

branch_0x80212d18:
    addi    r29, r30, 0x6b8
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

