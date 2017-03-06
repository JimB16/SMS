
.globl __dt__12TSnapTimeObjFv
__dt__12TSnapTimeObjFv: # 0x802a5470
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a54c8
    lis     r3, 0x803e
    subi    r0, r3, 0xca8
    stw     r0, 0x0(r30)
    beq-    branch_0x802a54b8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a54b8:
    extsh.  r0, r31
    ble-    branch_0x802a54c8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a54c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__12TSnapTimeObjFUlPQ26JDrama9TGraphics
perform__12TSnapTimeObjFUlPQ26JDrama9TGraphics: # 0x802a54e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    lhz     r0, 0x14(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802a55ac
    rlwinm. r0, r29, 0, 24, 24
    beq-    branch_0x802a5558
    lwz     r3, -0x5ff8(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802a552c
    li      r4, 0x0
    bl      snapGXTime__8TTimeRecFUl
branch_0x802a552c:
    lwz     r30, -0x5ff8(r13)
    cmplwi  r30, 0x0
    beq-    branch_0x802a5558
    bl      OSGetTick
    lwz     r0, 0x814(r30)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r30, r3
    bl      append__10TTimeArrayFUlUl
branch_0x802a5558:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x802a55ac
    lwz     r0, 0x10(r31)
    lwz     r29, -0x5ff8(r13)
    stw     r0, 0x38(sp)
    cmplwi  r29, 0x0
    lwz     r30, 0x38(sp)
    beq-    branch_0x802a5598
    bl      OSGetTick
    lwz     r0, 0x814(r29)
    addi    r4, r3, 0x0
    addi    r5, r30, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r29, r3
    bl      append__10TTimeArrayFUlUl
branch_0x802a5598:
    lwz     r3, -0x5ff8(r13)
    lwz     r4, 0x10(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802a55ac
    bl      snapGXTime__8TTimeRecFUl
branch_0x802a55ac:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr

