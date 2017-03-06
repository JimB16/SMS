
.globl SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG: # 0x80236c3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r3, 0x0
    b       branch_0x80236d24

branch_0x80236c6c:
    lwz     r3, 0xa8(r28)
    mr      r4, r31
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80236d20
    lwz     r6, 0xac(r28)
    clrlslwi  r7, r31, 16, 5
    lwz     r3, 0x0(r30)
    li      r4, 0x20
    lwz     r5, 0x4(r6)
    lwz     r0, 0x4(r30)
    add     r5, r5, r7
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r3, 0x8(r30)
    lwz     r0, 0xc(r30)
    stw     r3, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r3, 0x18(r30)
    lwz     r0, 0x1c(r30)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x4(r6)
    add     r3, r0, r7
    lwz     r0, 0x1c(r3)
    add     r0, r30, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r0, 0x4(r6)
    add     r3, r0, r7
    lwz     r0, 0xc(r3)
    add     r0, r30, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r28)
    lwz     r0, 0x4(r3)
    add     r3, r0, r7
    bl      DCFlushRange
branch_0x80236d20:
    addi    r31, r31, 0x1
branch_0x80236d24:
    lwz     r3, 0xac(r28)
    clrlwi  r4, r31, 16
    lhz     r0, 0x0(r3)
    cmplw   r4, r0
    blt+    branch_0x80236c6c
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr

