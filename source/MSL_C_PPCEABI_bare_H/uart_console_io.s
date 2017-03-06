
.globl __close_console
__close_console: # 0x8033ba88
    li      r3, 0x0
    blr


.globl __write_console
__write_console: # 0x8033ba90
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    lwz     r0, -0x5a80(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8033bad8
    lis     r3, 0x1
    subi    r3, r3, 0x1f00
    bl      InitializeUART
    cmpwi   r3, 0x0
    bne-    branch_0x8033bad8
    li      r0, 0x1
    stw     r0, -0x5a80(r13)
branch_0x8033bad8:
    cmpwi   r3, 0x0
    beq-    branch_0x8033bae8
    li      r3, 0x1
    b       branch_0x8033bb10

branch_0x8033bae8:
    mr      r3, r30
    lwz     r4, 0x0(r31)
    bl      WriteUARTN
    cmpwi   r3, 0x0
    beq-    branch_0x8033bb0c
    li      r0, 0x0
    stw     r0, 0x0(r31)
    li      r3, 0x1
    b       branch_0x8033bb10

branch_0x8033bb0c:
    li      r3, 0x0
branch_0x8033bb10:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __read_console
__read_console: # 0x8033bb28
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    lwz     r0, -0x5a80(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8033bb74
    lis     r3, 0x1
    subi    r3, r3, 0x1f00
    bl      InitializeUART
    cmpwi   r3, 0x0
    bne-    branch_0x8033bb74
    li      r0, 0x1
    stw     r0, -0x5a80(r13)
branch_0x8033bb74:
    cmpwi   r3, 0x0
    beq-    branch_0x8033bb84
    li      r3, 0x1
    b       branch_0x8033bbec

branch_0x8033bb84:
    lwz     r31, 0x0(r30)
    li      r0, 0x0
    li      r3, 0x0
    stw     r0, 0x0(r30)
    b       branch_0x8033bbc0

branch_0x8033bb98:
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      ReadUARTN
    lwz     r4, 0x0(r30)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r30)
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0xd
    beq-    branch_0x8033bbd4
    addi    r29, r29, 0x1
branch_0x8033bbc0:
    lwz     r0, 0x0(r30)
    cmplw   r0, r31
    bgt-    branch_0x8033bbd4
    cmpwi   r3, 0x0
    beq+    branch_0x8033bb98
branch_0x8033bbd4:
    cmpwi   r3, 0x0
    bne-    branch_0x8033bbe4
    li      r0, 0x0
    b       branch_0x8033bbe8

branch_0x8033bbe4:
    li      r0, 0x1
branch_0x8033bbe8:
    clrlwi  r3, r0, 24
branch_0x8033bbec:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr

