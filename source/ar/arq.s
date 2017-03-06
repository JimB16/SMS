
.globl __ARQServiceQueueLo
__ARQServiceQueueLo: # 0x803539a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x5804(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x803539d4
    lwz     r3, -0x5810(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x803539d4
    stw     r3, -0x5804(r13)
    lwz     r0, 0x0(r3)
    stw     r0, -0x5810(r13)
branch_0x803539d4:
    lwz     r5, -0x5804(r13)
    cmplwi  r5, 0x0
    beq-    branch_0x80353a94
    lwz     r6, 0x18(r5)
    lwz     r0, -0x57f8(r13)
    cmplw   r6, r0
    bgt-    branch_0x80353a28
    lwz     r3, 0x8(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x80353a0c
    lwz     r4, 0x10(r5)
    lwz     r5, 0x14(r5)
    bl      ARStartDMA
    b       branch_0x80353a18

branch_0x80353a0c:
    lwz     r4, 0x14(r5)
    lwz     r5, 0x10(r5)
    bl      ARStartDMA
branch_0x80353a18:
    lwz     r3, -0x5804(r13)
    lwz     r0, 0x1c(r3)
    stw     r0, -0x57fc(r13)
    b       branch_0x80353a58

branch_0x80353a28:
    lwz     r3, 0x8(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x80353a48
    lwz     r4, 0x10(r5)
    mr      r6, r0
    lwz     r5, 0x14(r5)
    bl      ARStartDMA
    b       branch_0x80353a58

branch_0x80353a48:
    lwz     r4, 0x14(r5)
    mr      r6, r0
    lwz     r5, 0x10(r5)
    bl      ARStartDMA
branch_0x80353a58:
    lwz     r3, -0x5804(r13)
    lwz     r4, -0x57f8(r13)
    lwz     r0, 0x18(r3)
    subf    r0, r4, r0
    stw     r0, 0x18(r3)
    lwz     r4, -0x5804(r13)
    lwz     r0, -0x57f8(r13)
    lwz     r3, 0x10(r4)
    add     r0, r3, r0
    stw     r0, 0x10(r4)
    lwz     r4, -0x5804(r13)
    lwz     r0, -0x57f8(r13)
    lwz     r3, 0x14(r4)
    add     r0, r3, r0
    stw     r0, 0x14(r4)
branch_0x80353a94:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ARQCallbackHack
__ARQCallbackHack: # 0x80353aa4
    blr


.globl __ARQInterruptServiceRoutine
__ARQInterruptServiceRoutine: # 0x80353aa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, -0x5800(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80353adc
    lwz     r3, -0x5808(r13)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, -0x5808(r13)
    stw     r0, -0x5800(r13)
    b       branch_0x80353b00

branch_0x80353adc:
    lwz     r12, -0x57fc(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80353b00
    lwz     r3, -0x5804(r13)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, -0x5804(r13)
    stw     r0, -0x57fc(r13)
branch_0x80353b00:
    lwz     r6, -0x5818(r13)
    cmplwi  r6, 0x0
    beq-    branch_0x80353b54
    lwz     r3, 0x8(r6)
    cmplwi  r3, 0x0
    bne-    branch_0x80353b2c
    lwz     r4, 0x10(r6)
    lwz     r5, 0x14(r6)
    lwz     r6, 0x18(r6)
    bl      ARStartDMA
    b       branch_0x80353b3c

branch_0x80353b2c:
    lwz     r4, 0x14(r6)
    lwz     r5, 0x10(r6)
    lwz     r6, 0x18(r6)
    bl      ARStartDMA
branch_0x80353b3c:
    lwz     r3, -0x5818(r13)
    lwz     r0, 0x1c(r3)
    stw     r0, -0x5800(r13)
    stw     r3, -0x5808(r13)
    lwz     r0, 0x0(r3)
    stw     r0, -0x5818(r13)
branch_0x80353b54:
    lwz     r0, -0x5808(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80353b64
    bl      __ARQServiceQueueLo
branch_0x80353b64:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl ARQInit
ARQInit: # 0x80353b74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lwz     r0, -0x57f4(r13)
    cmpwi   r0, 0x1
    beq-    branch_0x80353bc8
    li      r31, 0x0
    li      r0, 0x1000
    stw     r31, -0x5810(r13)
    lis     r3, 0x8035
    stw     r31, -0x5818(r13)
    addi    r3, r3, 0x3aa8
    stw     r0, -0x57f8(r13)
    bl      ARRegisterDMACallback
    li      r0, 0x1
    stw     r31, -0x5808(r13)
    stw     r31, -0x5804(r13)
    stw     r31, -0x5800(r13)
    stw     r31, -0x57fc(r13)
    stw     r0, -0x57f4(r13)
branch_0x80353bc8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl ARQPostRequest
ARQPostRequest: # 0x80353bdc
    mflr    r0
    cmplwi  r10, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    stw     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    stw     r5, 0x8(r3)
    stw     r7, 0x10(r3)
    stw     r8, 0x14(r3)
    stw     r9, 0x18(r3)
    beq-    branch_0x80353c28
    stw     r10, 0x1c(r29)
    b       branch_0x80353c34

branch_0x80353c28:
    lis     r3, 0x8035
    addi    r0, r3, 0x3aa4
    stw     r0, 0x1c(r29)
branch_0x80353c34:
    bl      OSDisableInterrupts
    cmpwi   r30, 0x1
    addi    r31, r3, 0x0
    beq-    branch_0x80353c78
    bge-    branch_0x80353c98
    cmpwi   r30, 0x0
    bge-    branch_0x80353c54
    b       branch_0x80353c98

branch_0x80353c54:
    lwz     r0, -0x5810(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80353c6c
    lwz     r3, -0x580c(r13)
    stw     r29, 0x0(r3)
    b       branch_0x80353c70

branch_0x80353c6c:
    stw     r29, -0x5810(r13)
branch_0x80353c70:
    stw     r29, -0x580c(r13)
    b       branch_0x80353c98

branch_0x80353c78:
    lwz     r0, -0x5818(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80353c90
    lwz     r3, -0x5814(r13)
    stw     r29, 0x0(r3)
    b       branch_0x80353c94

branch_0x80353c90:
    stw     r29, -0x5818(r13)
branch_0x80353c94:
    stw     r29, -0x5814(r13)
branch_0x80353c98:
    lwz     r0, -0x5808(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80353d14
    lwz     r0, -0x5804(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80353d14
    lwz     r6, -0x5818(r13)
    cmplwi  r6, 0x0
    beq-    branch_0x80353d04
    lwz     r3, 0x8(r6)
    cmplwi  r3, 0x0
    bne-    branch_0x80353cdc
    lwz     r4, 0x10(r6)
    lwz     r5, 0x14(r6)
    lwz     r6, 0x18(r6)
    bl      ARStartDMA
    b       branch_0x80353cec

branch_0x80353cdc:
    lwz     r4, 0x14(r6)
    lwz     r5, 0x10(r6)
    lwz     r6, 0x18(r6)
    bl      ARStartDMA
branch_0x80353cec:
    lwz     r3, -0x5818(r13)
    lwz     r0, 0x1c(r3)
    stw     r0, -0x5800(r13)
    stw     r3, -0x5808(r13)
    lwz     r0, 0x0(r3)
    stw     r0, -0x5818(r13)
branch_0x80353d04:
    lwz     r0, -0x5808(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80353d14
    bl      __ARQServiceQueueLo
branch_0x80353d14:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

