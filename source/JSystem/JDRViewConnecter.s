
.globl __ct__Q26JDrama14TViewConnecterFPQ26JDrama8TViewObjPQ26JDrama8TViewObjQ26JDrama10TFlagT_Us_PCc
__ct__Q26JDrama14TViewConnecterFPQ26JDrama8TViewObjPQ26JDrama8TViewObjQ26JDrama10TFlagT_Us_PCc: # 0x802fcb5c
    mflr    r0
    lis     r8, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r8, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r4
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    stw     r0, 0x0(r3)
    stw     r7, 0x4(r3)
    addi    r3, r7, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r28)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r28)
    li      r0, 0x0
    lis     r3, __vvt__Q26JDrama14TViewConnecter@h
    sth     r0, 0xc(r28)
    addi    r0, r3, __vvt__Q26JDrama14TViewConnecter@l
    addi    r3, r28, 0x0
    stw     r0, 0x0(r28)
    stw     r29, 0x10(r28)
    stw     r30, 0x14(r28)
    lhz     r0, 0x0(r31)
    sth     r0, 0x18(r28)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl perform__Q26JDrama14TViewConnecterFUlPQ26JDrama9TGraphics
perform__Q26JDrama14TViewConnecterFUlPQ26JDrama9TGraphics: # 0x802fcbf8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x802fcc78
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802fcc3c
    addi    r5, r31, 0x0
    li      r4, 0x80
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802fcc3c:
    lwz     r3, 0x14(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802fcc54
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802fcc54:
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802fcc78
    lhz     r0, 0x18(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fcc78
    addi    r5, r31, 0x0
    li      r4, 0x8
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802fcc78:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr

