
.globl J2DPrint_print_alpha_va
J2DPrint_print_alpha_va: # 0x802cdbbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    bl      initchar__8J2DPrintFv
    lis     r3, 0x8040
    addi    r31, r3, 0x45c4
    addi    r3, r31, 0x0
    bl      OSLockMutex
    lwz     r3, -0x5ea0(r13)
    mr      r5, r29
    lwz     r4, -0x5e98(r13)
    mr      r6, r30
    bl      vsnprintf
    mr.     r5, r3
    bge-    branch_0x802cdc1c
    mr      r3, r31
    bl      OSUnlockMutex
    lfs     f1, 0x1b8(rtoc)
    b       branch_0x802cdc68

branch_0x802cdc1c:
    lwz     r3, -0x5e98(r13)
    cmplw   r5, r3
    blt-    branch_0x802cdc34
    li      r0, 0x1
    stb     r0, -0x5e94(r13)
    subi    r5, r3, 0x1
branch_0x802cdc34:
    lis     r6, 0x8000
    lwz     r4, -0x5ea0(r13)
    addi    r3, r27, 0x0
    addi    r9, r28, 0x0
    subi    r6, r6, 0x1
    addi    r8, sp, 0x18
    li      r7, 0x0
    li      r10, 0x1
    bl      parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
    lis     r3, 0x8040
    addi    r3, r3, 0x45c4
    bl      OSUnlockMutex
    lfs     f1, 0x18(sp)
branch_0x802cdc68:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__8J2DPrintFP7JUTFonti
__ct__8J2DPrintFP7JUTFonti: # 0x802cdc7c
    mflr    r0
    lis     r6, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x658
    lis     r6, 0x8000
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    addi    r8, sp, 0x20
    stw     r0, 0x0(r3)
    li      r0, -0x1
    addi    r7, sp, 0x28
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x3c(r31)
    stw     r0, 0x40(r31)
    stw     r0, 0x44(r31)
    stw     r0, 0x48(r31)
    stw     r0, 0x1c(sp)
    stw     r0, 0x24(sp)
    lwz     r9, 0x1c(sp)
    lwz     r0, 0x24(sp)
    stw     r9, 0x20(sp)
    stw     r0, 0x28(sp)
    bl      private_initiate__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor
    lwz     r0, 0x3c(sp)
    mr      r3, r31
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor
__ct__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor: # 0x802cdcf8
    mflr    r0
    lis     r9, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r9, 0x658
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    addi    r9, sp, 0x20
    stw     r0, 0x0(r3)
    li      r0, -0x1
    addi    r10, sp, 0x24
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r31)
    stw     r0, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r0, 0x0(r8)
    mr      r8, r9
    stw     r0, 0x20(sp)
    lwz     r0, 0x0(r7)
    mr      r7, r10
    stw     r0, 0x24(sp)
    bl      private_initiate__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__8J2DPrintFv
__dt__8J2DPrintFv: # 0x802cdd70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802cdda4
    lis     r3, 0x803e
    addi    r3, r3, 0x658
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802cdda4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802cdda4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initiate__8J2DPrintFv
initiate__8J2DPrintFv: # 0x802cddbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802cde30
    lwz     r3, 0x58(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x802cde04
    lwz     r3, 0x5c(r31)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x802cde04
    mr      r3, r31
    bl      setFontSize__8J2DPrintFv
branch_0x802cde04:
    lwz     r0, 0x40(r31)
    addi    r5, sp, 0xc
    addi    r4, sp, 0x10
    stw     r0, 0xc(sp)
    lwz     r0, 0x3c(r31)
    stw     r0, 0x10(sp)
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802cde30:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl private_initiate__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor
private_initiate__8J2DPrintFP7JUTFontiiQ28JUtility6TColorQ28JUtility6TColor: # 0x802cde44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    addi    r31, r3, 0x0
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    lwz     r0, -0x5ea0(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802cde80
    li      r3, 0x400
    bl      setBuffer__8J2DPrintFUl
branch_0x802cde80:
    lbz     r0, -0x5e9c(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802cdea0
    lis     r3, 0x8040
    addi    r3, r3, 0x45c4
    bl      OSInitMutex
    li      r0, 0x1
    stb     r0, -0x5e9c(r13)
branch_0x802cdea0:
    stw     r26, 0x4(r31)
    li      r0, 0x20
    stw     r27, 0x4c(r31)
    stw     r0, 0x50(r31)
    lwz     r3, 0x4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802cdee4
    addis   r0, r28, 0x8000
    cmplwi  r0, 0x0
    beq-    branch_0x802cded0
    mr      r3, r28
    b       branch_0x802cdee0

branch_0x802cded0:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x802cdee0:
    stw     r3, 0x50(r31)
branch_0x802cdee4:
    li      r0, 0x1
    stb     r0, 0x60(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      locate__8J2DPrintFii
    lwz     r4, 0x0(r29)
    li      r3, 0x0
    li      r0, -0x1
    stw     r4, 0x44(r31)
    lwz     r4, 0x0(r30)
    stw     r4, 0x48(r31)
    stw     r3, 0x34(sp)
    lwz     r3, 0x34(sp)
    stw     r3, 0x3c(r31)
    stw     r0, 0x30(sp)
    lwz     r0, 0x30(sp)
    stw     r0, 0x40(r31)
    lwz     r3, 0x4(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x802cdf44
    li      r0, 0x50
    stw     r0, 0x54(r31)
    b       branch_0x802cdf60

branch_0x802cdf44:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    slwi    r0, r3, 2
    extsh   r0, r0
    stw     r0, 0x54(r31)
branch_0x802cdf60:
    lwz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802cdfa4
    mr      r3, r31
    bl      setFontSize__8J2DPrintFv
    lwz     r0, 0x40(r31)
    addi    r5, sp, 0x28
    addi    r4, sp, 0x2c
    stw     r0, 0x28(sp)
    lwz     r0, 0x3c(r31)
    stw     r0, 0x2c(sp)
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x802cdfb0

branch_0x802cdfa4:
    lis     r0, 0x8000
    stw     r0, 0x58(r31)
    stw     r0, 0x5c(r31)
branch_0x802cdfb0:
    mr      r3, r31
    bl      initchar__8J2DPrintFv
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setBuffer__8J2DPrintFUl
setBuffer__8J2DPrintFUl: # 0x802cdfcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lbz     r0, -0x5e9b(r13)
    lwz     r3, -0x5ea0(r13)
    cmplwi  r0, 0x0
    addi    r31, r3, 0x0
    beq-    branch_0x802cdffc
    bl      __dl__FPv
branch_0x802cdffc:
    lwz     r4, -0x5f30(r13)
    addi    r3, r30, 0x0
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    li      r0, 0x1
    stw     r3, -0x5ea0(r13)
    mr      r3, r31
    stw     r30, -0x5e98(r13)
    stb     r0, -0x5e9b(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setFontSize__8J2DPrintFv
setFontSize__8J2DPrintFv: # 0x802ce038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802ce084
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    stw     r3, 0x58(r31)
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x5c(r31)
branch_0x802ce084:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl locate__8J2DPrintFii
locate__8J2DPrintFii: # 0x802ce098
    stwu    sp, -0x28(sp)
    xoris   r6, r4, 0x8000
    xoris   r0, r5, 0x8000
    stw     r4, 0x1c(r3)
    lis     r4, 0x4330
    stw     r6, 0x24(sp)
    stw     r5, 0x20(r3)
    stw     r4, 0x20(sp)
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x1c(sp)
    lfd     f0, 0x20(sp)
    stw     r4, 0x18(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x18(sp)
    addi    sp, sp, 0x28
    fsubs   f0, f0, f2
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x1b8(rtoc)
    stfs    f0, 0x2c(r3)
    blr


.globl print__8J2DPrintFiiPCce
print__8J2DPrintFiiPCce: # 0x802ce0ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    bne-    cr1, branch_0x802ce11c
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802ce11c:
    stw     r3, 0x8(sp)
    xoris   r0, r5, 0x8000
    stw     r4, 0xc(sp)
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    xoris   r7, r4, 0x8000
    stw     r8, 0x1c(sp)
    lis     r8, 0x400
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r4, 0x1c(r3)
    addi    r4, sp, 0x7c
    stw     r5, 0x20(r3)
    lis     r5, 0x4330
    stw     r7, 0x94(sp)
    addi    r7, sp, 0xa0
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x8c(sp)
    addi    r0, sp, 0x8
    stw     r5, 0x90(sp)
    lfd     f0, 0x90(sp)
    stw     r5, 0x88(sp)
    mr      r5, r6
    fsubs   f1, f0, f2
    addi    r6, r4, 0x0
    lfd     f0, 0x88(sp)
    li      r4, 0xff
    fsubs   f0, f0, f2
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x1b8(rtoc)
    stfs    f0, 0x2c(r3)
    stw     r8, 0x7c(sp)
    stw     r7, 0x80(sp)
    stw     r0, 0x84(sp)
    bl      J2DPrint_print_alpha_va
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl print__8J2DPrintFiiUcPCce
print__8J2DPrintFiiUcPCce: # 0x802ce1c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    bne-    cr1, branch_0x802ce1f0
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802ce1f0:
    stw     r3, 0x8(sp)
    xoris   r0, r5, 0x8000
    stw     r4, 0xc(sp)
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    xoris   r8, r4, 0x8000
    stw     r9, 0x20(sp)
    lis     r9, 0x500
    stw     r10, 0x24(sp)
    addi    r10, sp, 0x80
    stw     r4, 0x1c(r3)
    lis     r4, 0x4330
    stw     r8, 0x9c(sp)
    addi    r8, sp, 0xa8
    stw     r5, 0x20(r3)
    addi    r5, r7, 0x0
    stw     r0, 0x94(sp)
    addi    r0, sp, 0x8
    lfd     f2, 0x1c0(rtoc)
    stw     r4, 0x98(sp)
    lfd     f0, 0x98(sp)
    stw     r4, 0x90(sp)
    addi    r4, r6, 0x0
    fsubs   f1, f0, f2
    mr      r6, r10
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f2
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x1b8(rtoc)
    stfs    f0, 0x2c(r3)
    stw     r9, 0x80(sp)
    stw     r8, 0x84(sp)
    stw     r0, 0x88(sp)
    bl      J2DPrint_print_alpha_va
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl getWidth__8J2DPrintFPCce
getWidth__8J2DPrintFPCce: # 0x802ce294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    stw     r29, 0x8c(sp)
    bne-    cr1, branch_0x802ce2d0
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802ce2d0:
    stw     r3, 0x8(sp)
    lis     r0, 0x200
    addi    r29, r3, 0x0
    stw     r4, 0xc(sp)
    addi    r30, r4, 0x0
    addi    r31, sp, 0x78
    stw     r5, 0x10(sp)
    lis     r5, 0x8040
    stw     r6, 0x14(sp)
    addi    r6, sp, 0x8
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x78(sp)
    addi    r0, sp, 0xa0
    stw     r0, 0x7c(sp)
    addi    r0, r5, 0x45c4
    mr      r3, r0
    stw     r6, 0x80(sp)
    bl      OSLockMutex
    lwz     r3, -0x5ea0(r13)
    mr      r5, r30
    lwz     r4, -0x5e98(r13)
    mr      r6, r31
    bl      vsnprintf
    mr.     r5, r3
    blt-    branch_0x802ce34c
    lwz     r0, -0x5e98(r13)
    cmplw   r5, r0
    ble-    branch_0x802ce350
branch_0x802ce34c:
    lwz     r5, -0x5e98(r13)
branch_0x802ce350:
    lis     r6, 0x8000
    lwz     r4, -0x5ea0(r13)
    addi    r3, r29, 0x0
    subi    r6, r6, 0x1
    addi    r8, sp, 0x70
    li      r7, 0x0
    li      r9, 0xff
    li      r10, 0x0
    bl      parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
    lis     r3, 0x8040
    addi    r3, r3, 0x45c4
    bl      OSUnlockMutex
    lwz     r0, 0x9c(sp)
    lfs     f1, 0x70(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr


.globl printReturn__8J2DPrintFPCcii18J2DTextBoxHBinding18J2DTextBoxVBindingiiUc
printReturn__8J2DPrintFPCcii18J2DTextBoxHBinding18J2DTextBoxVBindingiiUc: # 0x802ce3a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x280(sp)
    stmw    r22, 0x258(sp)
    mr      r22, r3
    lbz     r30, 0x28b(sp)
    addi    r23, r4, 0x0
    addi    r24, r5, 0x0
    addi    r25, r6, 0x0
    addi    r26, r7, 0x0
    addi    r27, r8, 0x0
    addi    r28, r9, 0x0
    addi    r29, r10, 0x0
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802ce5e8
    mr      r3, r22
    bl      initchar__8J2DPrintFv
    lfs     f0, 0x24(r22)
    mr      r3, r23
    fctiwz  f0, f0
    stfd    f0, 0x250(sp)
    lwz     r0, 0x254(sp)
    stw     r0, 0x1c(r22)
    lfs     f0, 0x28(r22)
    fctiwz  f0, f0
    stfd    f0, 0x248(sp)
    lwz     r0, 0x24c(sp)
    stw     r0, 0x20(r22)
    bl      strlen
    lwz     r4, -0x5e98(r13)
    addi    r31, r3, 0x0
    cmplw   r31, r4
    blt-    branch_0x802ce434
    li      r0, 0x1
    stb     r0, -0x5e94(r13)
    subi    r31, r4, 0x1
branch_0x802ce434:
    addi    r3, r22, 0x0
    addi    r4, r23, 0x0
    addi    r5, r31, 0x0
    addi    r6, r24, 0x0
    addi    r9, r30, 0x0
    addi    r7, sp, 0x30
    addi    r8, sp, 0x28
    li      r10, 0x0
    bl      parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
    lwz     r3, 0x5c(r22)
    lis     r0, 0x4330
    lfd     f2, 0x1c0(rtoc)
    cmpwi   r27, 0x1
    xoris   r3, r3, 0x8000
    stw     r3, 0x24c(sp)
    stw     r0, 0x248(sp)
    lfd     f0, 0x248(sp)
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
    beq-    branch_0x802ce498
    bge-    branch_0x802ce4dc
    cmpwi   r27, 0x0
    bge-    branch_0x802ce4b8
    b       branch_0x802ce4dc
    b	    branch_0x802ce4dc

branch_0x802ce498:
    lfs     f0, 0x1c8(rtoc)
    fadds   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x248(sp)
    lwz     r0, 0x24c(sp)
    subf    r0, r0, r25
    add     r29, r29, r0
    b       branch_0x802ce4dc

branch_0x802ce4b8:
    lfs     f0, 0x1c8(rtoc)
    fadds   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x248(sp)
    lwz     r0, 0x24c(sp)
    subf    r0, r0, r25
    srawi   r0, r0, 1
    addze   r0, r0
    add     r29, r29, r0
branch_0x802ce4dc:
    li      r3, 0x0
    b       branch_0x802ce530

branch_0x802ce4e4:
    cmpwi   r26, 0x1
    beq-    branch_0x802ce510
    bge-    branch_0x802ce4fc
    cmpwi   r26, 0x0
    bge-    branch_0x802ce51c
    b       branch_0x802ce52c

branch_0x802ce4fc:
    cmpwi   r26, 0x3
    bge-    branch_0x802ce52c
    li      r0, 0x0
    sth     r0, 0x0(r4)
    b       branch_0x802ce52c

branch_0x802ce510:
    subf    r0, r0, r24
    sth     r0, 0x0(r4)
    b       branch_0x802ce52c

branch_0x802ce51c:
    subf    r0, r0, r24
    srawi   r0, r0, 1
    addze   r0, r0
    sth     r0, 0x0(r4)
branch_0x802ce52c:
    addi    r3, r3, 0x2
branch_0x802ce530:
    addi    r4, sp, 0x30
    add     r4, r4, r3
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0xffff
    bne+    branch_0x802ce4e4
    mr      r3, r22
    bl      initchar__8J2DPrintFv
    xoris   r0, r28, 0x8000
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x24c(sp)
    lis     r11, 0x4330
    lfs     f1, 0x24(r22)
    mr      r3, r22
    stw     r11, 0x248(sp)
    mr      r4, r23
    lfd     f0, 0x248(sp)
    addi    r5, r31, 0x0
    addi    r6, r24, 0x0
    fsubs   f0, f0, f2
    addi    r9, r30, 0x0
    addi    r7, sp, 0x30
    addi    r8, sp, 0x28
    fadds   f0, f1, f0
    li      r10, 0x1
    stfs    f0, 0x24(r22)
    lwz     r0, 0x5c(r22)
    lfs     f1, 0x28(r22)
    add     r0, r29, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x254(sp)
    stw     r11, 0x250(sp)
    lfd     f0, 0x250(sp)
    fsubs   f0, f0, f2
    fadds   f0, f1, f0
    stfs    f0, 0x28(r22)
    lfs     f0, 0x24(r22)
    fctiwz  f0, f0
    stfd    f0, 0x240(sp)
    lwz     r0, 0x244(sp)
    stw     r0, 0x1c(r22)
    lfs     f0, 0x28(r22)
    fctiwz  f0, f0
    stfd    f0, 0x238(sp)
    lwz     r0, 0x23c(sp)
    stw     r0, 0x20(r22)
    bl      parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
branch_0x802ce5e8:
    lmw     r22, 0x258(sp)
    lwz     r0, 0x284(sp)
    addi    sp, sp, 0x280
    mtlr    r0
    blr


.globl parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb: # 0x802ce5fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stfd    f29, 0x118(sp)
    stfd    f28, 0x110(sp)
    stfd    f27, 0x108(sp)
    stfd    f26, 0x100(sp)
    stfd    f25, 0xf8(sp)
    stfd    f24, 0xf0(sp)
    stfd    f23, 0xe8(sp)
    stfd    f22, 0xe0(sp)
    stfd    f21, 0xd8(sp)
    stfd    f20, 0xd0(sp)
    stfd    f19, 0xc8(sp)
    stfd    f18, 0xc0(sp)
    stmw    r17, 0x84(sp)
    addi    r26, r3, 0x0
    addi    r27, r5, 0x0
    addi    r17, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    addi    r31, r10, 0x0
    stw     r4, 0xc(sp)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802ce678
    lfs     f1, 0x1b8(rtoc)
    b       branch_0x802cedf0

branch_0x802ce678:
    lwz     r22, 0xc(sp)
    li      r21, 0x0
    lfs     f26, 0x24(r26)
    li      r3, 0x4
    lfs     f25, 0x28(r26)
    addi    r0, r22, 0x1
    lfs     f24, 0x1b8(rtoc)
    stw     r0, 0xc(sp)
    li      r4, 0x0
    fmr     f23, f24
    li      r5, 0x0
    lfs     f0, 0x24(r26)
    lfs     f1, 0x28(r26)
    li      r6, 0x1
    fmr     f22, f0
    lbz     r20, 0x0(r22)
    fmr     f21, f0
    li      r7, 0x0
    fmr     f20, f1
    fmr     f19, f1
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x8(r26)
    lis     r3, 0x8081
    clrlwi  r5, r30, 24
    stw     r0, 0x48(sp)
    subi    r4, r3, 0x7f7f
    lwz     r0, 0xc(r26)
    stw     r0, 0x44(sp)
    lbz     r0, 0x4b(sp)
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x4b(sp)
    lbz     r0, 0x47(sp)
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x47(sp)
    lbz     r0, 0x18(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x802ce744
    addi    r3, sp, 0x44
    b       branch_0x802ce748

branch_0x802ce744:
    addi    r3, sp, 0x48
branch_0x802ce748:
    lwz     r3, 0x0(r3)
    addi    r5, sp, 0x34
    lwz     r0, 0x48(sp)
    addi    r4, sp, 0x38
    stw     r3, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x4(r26)
    bl      setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
    lfd     f30, 0x1c0(rtoc)
    clrlwi  r24, r31, 24
    lfd     f27, 0x1d0(rtoc)
    xoris   r23, r17, 0x8000
    lfs     f28, 0x1cc(rtoc)
    lfs     f29, 0x1c8(rtoc)
    li      r19, 0x0
    lis     r25, 0x4330
branch_0x802ce788:
    lwz     r3, 0x4(r26)
    addi    r4, r20, 0x0
    li      r18, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x802ce7c8
    lwz     r3, 0xc(sp)
    slwi    r4, r20, 8
    li      r18, 0x1
    addi    r0, r3, 0x1
    stw     r0, 0xc(sp)
    lbz     r0, 0x0(r3)
    or      r20, r4, r0
branch_0x802ce7c8:
    cmpwi   r20, 0x0
    beq-    branch_0x802ce7e0
    lwz     r0, 0xc(sp)
    subf    r3, r22, r0
    cmplw   r3, r27
    ble-    branch_0x802ce814
branch_0x802ce7e0:
    clrlwi. r0, r31, 24
    bne-    branch_0x802ce80c
    cmplwi  r28, 0x0
    beq-    branch_0x802ce80c
    lfs     f0, 0x1c8(rtoc)
    clrlslwi  r0, r21, 16, 1
    fadds   f0, f0, f24
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r3, 0x7c(sp)
    sthx    r3, r28, r0
branch_0x802ce80c:
    addi    r21, r21, 0x1
    b       branch_0x802ced80

branch_0x802ce814:
    cmpwi   r20, 0x20
    lfs     f18, 0x24(r26)
    li      r17, 0x1
    bge-    branch_0x802ce920
    cmpwi   r20, 0x1b
    bne-    branch_0x802ce8a0
    addi    r3, r26, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0xc
    bl      doEscapeCode__8J2DPrintFPPCUcUc
    clrlwi  r0, r3, 16
    cmplwi  r0, 0x484d
    bne-    branch_0x802ce890
    cmplwi  r24, 0x0
    bne-    branch_0x802ce870
    cmplwi  r28, 0x0
    beq-    branch_0x802ce870
    fadds   f0, f29, f24
    clrlslwi  r0, r21, 16, 1
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r4, 0x7c(sp)
    sthx    r4, r28, r0
branch_0x802ce870:
    addi    r21, r21, 0x1
    stfs    f26, 0x24(r26)
    clrlwi  r0, r21, 16
    cmplwi  r0, 0x100
    stfs    f25, 0x28(r26)
    beq-    branch_0x802ced80
    li      r19, 0x0
    lfs     f24, 0x1b8(rtoc)
branch_0x802ce890:
    clrlwi. r0, r3, 16
    beq-    branch_0x802cec44
    li      r17, 0x0
    b       branch_0x802cec44

branch_0x802ce8a0:
    addi    r3, r26, 0x0
    addi    r4, r20, 0x0
    bl      doCtrlCode__8J2DPrintFi
    cmpwi   r20, 0xa
    li      r17, 0x0
    bne-    branch_0x802ce8fc
    cmplwi  r24, 0x0
    bne-    branch_0x802ce8e0
    cmplwi  r28, 0x0
    beq-    branch_0x802ce8e0
    fadds   f0, f29, f24
    clrlslwi  r0, r21, 16, 1
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r3, 0x7c(sp)
    sthx    r3, r28, r0
branch_0x802ce8e0:
    addi    r21, r21, 0x1
    clrlwi  r0, r21, 16
    cmplwi  r0, 0x100
    beq-    branch_0x802ced80
    lfs     f24, 0x1b8(rtoc)
    li      r19, 0x0
    b       branch_0x802cec44

branch_0x802ce8fc:
    subi    r0, r20, 0x8
    cmplwi  r0, 0x1
    bgt-    branch_0x802ce910
    li      r19, 0x1
    b       branch_0x802cec44

branch_0x802ce910:
    cmpwi   r20, 0xd
    bne-    branch_0x802cec44
    li      r19, 0x0
    b       branch_0x802cec44

branch_0x802ce920:
    clrlwi. r0, r18, 24
    beq-    branch_0x802ce964
    cmplw   r3, r27
    ble-    branch_0x802ce964
    clrlwi. r0, r31, 24
    bne-    branch_0x802ce95c
    cmplwi  r28, 0x0
    beq-    branch_0x802ce95c
    lfs     f0, 0x1c8(rtoc)
    clrlslwi  r0, r21, 16, 1
    fadds   f0, f0, f24
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r3, 0x7c(sp)
    sthx    r3, r28, r0
branch_0x802ce95c:
    addi    r21, r21, 0x1
    b       branch_0x802ced80

branch_0x802ce964:
    lwz     r3, 0x4(r26)
    lbz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802ce994
    lwz     r0, 0x8(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x7c(sp)
    stw     r25, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x2c(r26)
    b       branch_0x802ce9f4

branch_0x802ce994:
    lwz     r12, 0x0(r3)
    addi    r4, r20, 0x0
    addi    r5, sp, 0x3c
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r19, 24
    beq-    branch_0x802ce9d0
    lbz     r0, 0x3d(sp)
    stw     r0, 0x7c(sp)
    stw     r25, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f27
    stfs    f0, 0x2c(r26)
    b       branch_0x802ce9f4

branch_0x802ce9d0:
    lbz     r3, 0x3d(sp)
    lbz     r0, 0x3c(sp)
    add     r0, r3, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x7c(sp)
    stw     r25, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x2c(r26)
branch_0x802ce9f4:
    lwz     r3, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x34(r26)
    xoris   r3, r3, 0x8000
    stw     r3, 0x7c(sp)
    xoris   r0, r0, 0x8000
    lfs     f1, 0x2c(r26)
    stw     r0, 0x74(sp)
    stw     r25, 0x78(sp)
    stw     r25, 0x70(sp)
    lfd     f2, 0x78(sp)
    lfd     f0, 0x70(sp)
    fsubs   f2, f2, f30
    stw     r23, 0x54(sp)
    fsubs   f0, f0, f30
    stw     r25, 0x50(sp)
    fdivs   f2, f0, f2
    lfd     f0, 0x50(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f30
    stfs    f1, 0x2c(r26)
    lwz     r0, 0x1c(r26)
    lfs     f1, 0x24(r26)
    xoris   r0, r0, 0x8000
    lfs     f2, 0x2c(r26)
    stw     r0, 0x6c(sp)
    fadds   f3, f1, f2
    stw     r25, 0x68(sp)
    lfd     f2, 0x68(sp)
    fsubs   f2, f2, f30
    fsubs   f2, f3, f2
    fmuls   f2, f28, f2
    fctiwz  f2, f2
    stfd    f2, 0x60(sp)
    lwz     r0, 0x64(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    stw     r25, 0x58(sp)
    lfd     f2, 0x58(sp)
    fsubs   f2, f2, f30
    fdivs   f2, f2, f28
    fcmpo   cr0, f2, f0
    ble-    branch_0x802ceb5c
    fcmpo   cr0, f1, f26
    ble-    branch_0x802ceb5c
    clrlwi. r0, r18, 24
    beq-    branch_0x802ceac4
    li      r3, 0x2
    b       branch_0x802ceac8

branch_0x802ceac4:
    li      r3, 0x1
branch_0x802ceac8:
    lwz     r0, 0xc(sp)
    cmplwi  r24, 0x0
    subf    r0, r3, r0
    stw     r0, 0xc(sp)
    lwz     r0, 0x14(r26)
    lfs     f1, 0x28(r26)
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r25, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f30
    fadds   f0, f1, f0
    stfs    f0, 0x28(r26)
    bne-    branch_0x802ceb20
    cmplwi  r28, 0x0
    beq-    branch_0x802ceb20
    fadds   f0, f29, f24
    clrlslwi  r0, r21, 16, 1
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r3, 0x54(sp)
    sthx    r3, r28, r0
branch_0x802ceb20:
    addi    r21, r21, 0x1
    clrlwi  r0, r21, 16
    cmplwi  r0, 0x100
    beq-    branch_0x802ced80
    lwz     r0, 0x1c(r26)
    li      r17, 0x0
    li      r19, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r25, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x24(r26)
    lfs     f24, 0x1b8(rtoc)
    b       branch_0x802cec44

branch_0x802ceb5c:
    cmplwi  r24, 0x0
    beq-    branch_0x802cec30
    cmplwi  r28, 0x0
    beq-    branch_0x802cebe0
    lwz     r3, 0x34(r26)
    clrlslwi  r4, r21, 16, 1
    lhax    r4, r28, r4
    mr      r5, r19
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    xoris   r3, r4, 0x8000
    lwz     r0, 0x38(r26)
    mr      r4, r20
    stw     r3, 0x54(sp)
    xoris   r0, r0, 0x8000
    lwz     r3, 0x4(r26)
    stw     r25, 0x50(sp)
    lwz     r12, 0x0(r3)
    stw     r0, 0x64(sp)
    lfd     f0, 0x50(sp)
    stw     r25, 0x58(sp)
    fsubs   f3, f0, f30
    lwz     r12, 0x14(r12)
    stw     r25, 0x60(sp)
    lfd     f2, 0x58(sp)
    mtlr    r12
    lfd     f0, 0x60(sp)
    fadds   f1, f1, f3
    fsubs   f3, f2, f30
    lfs     f2, 0x28(r26)
    fsubs   f4, f0, f30
    blrl
    b       branch_0x802cec30

branch_0x802cebe0:
    lwz     r3, 0x34(r26)
    addi    r4, r20, 0x0
    lwz     r0, 0x38(r26)
    mr      r5, r19
    xoris   r3, r3, 0x8000
    stw     r3, 0x54(sp)
    xoris   r0, r0, 0x8000
    lwz     r3, 0x4(r26)
    stw     r0, 0x5c(sp)
    lwz     r12, 0x0(r3)
    stw     r25, 0x50(sp)
    lwz     r12, 0x14(r12)
    stw     r25, 0x58(sp)
    lfd     f2, 0x50(sp)
    mtlr    r12
    lfd     f0, 0x58(sp)
    fsubs   f3, f2, f30
    lfs     f2, 0x28(r26)
    fsubs   f4, f0, f30
    blrl
branch_0x802cec30:
    lfs     f1, 0x24(r26)
    li      r19, 0x1
    lfs     f0, 0x2c(r26)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r26)
branch_0x802cec44:
    clrlwi. r0, r17, 24
    beq-    branch_0x802ced6c
    lfs     f0, 0x24(r26)
    fsubs   f0, f0, f26
    fcmpo   cr0, f0, f24
    ble-    branch_0x802cec60
    fmr     f24, f0
branch_0x802cec60:
    lwz     r0, 0x10(r26)
    lfs     f1, 0x24(r26)
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r25, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f30
    fadds   f0, f1, f0
    stfs    f0, 0x24(r26)
    lwz     r0, 0x10(r26)
    lfs     f1, 0x2c(r26)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    stw     r25, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f30
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r26)
    lwz     r3, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    xoris   r0, r3, 0x8000
    lwz     r3, 0x4(r26)
    stw     r0, 0x64(sp)
    lwz     r12, 0x0(r3)
    stw     r25, 0x60(sp)
    lwz     r12, 0x24(r12)
    lfd     f0, 0x60(sp)
    mtlr    r12
    fsubs   f31, f0, f30
    blrl
    lwz     r0, 0x38(r26)
    xoris   r3, r3, 0x8000
    stw     r3, 0x6c(sp)
    xoris   r0, r0, 0x8000
    lfs     f2, 0x28(r26)
    stw     r0, 0x74(sp)
    stw     r25, 0x68(sp)
    stw     r25, 0x70(sp)
    lfd     f1, 0x68(sp)
    lfd     f0, 0x70(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fdivs   f0, f0, f1
    fmuls   f0, f0, f31
    fadds   f0, f2, f0
    fcmpo   cr0, f23, f0
    bge-    branch_0x802ced2c
    fmr     f23, f0
branch_0x802ced2c:
    lfs     f0, 0x24(r26)
    fcmpo   cr0, f0, f21
    ble-    branch_0x802ced3c
    fmr     f21, f0
branch_0x802ced3c:
    fcmpo   cr0, f0, f22
    bge-    branch_0x802ced48
    fmr     f22, f0
branch_0x802ced48:
    fcmpo   cr0, f18, f22
    bge-    branch_0x802ced54
    fmr     f22, f18
branch_0x802ced54:
    fcmpo   cr0, f2, f19
    ble-    branch_0x802ced60
    fmr     f19, f2
branch_0x802ced60:
    fcmpo   cr0, f2, f20
    bge-    branch_0x802ced6c
    fmr     f20, f2
branch_0x802ced6c:
    lwz     r3, 0xc(sp)
    addi    r0, r3, 0x1
    stw     r0, 0xc(sp)
    lbz     r20, 0x0(r3)
    b       branch_0x802ce788

branch_0x802ced80:
    cmplwi  r28, 0x0
    beq-    branch_0x802ced98
    lis     r3, 0x1
    subi    r3, r3, 0x1
    clrlslwi  r0, r21, 16, 1
    sthx    r3, r28, r0
branch_0x802ced98:
    fsubs   f0, f21, f22
    stfs    f0, 0x0(r29)
    lwz     r3, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    xoris   r0, r3, 0x8000
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x54(sp)
    lis     r3, 0x4330
    fsubs   f0, f19, f20
    clrlwi. r0, r31, 24
    stw     r3, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fadds   f0, f0, f1
    stfs    f0, 0x4(r29)
    bne-    branch_0x802cedec
    stfs    f26, 0x24(r26)
    stfs    f25, 0x28(r26)
branch_0x802cedec:
    fmr     f1, f23
branch_0x802cedf0:
    lmw     r17, 0x84(sp)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    lfd     f29, 0x118(sp)
    lfd     f28, 0x110(sp)
    lfd     f27, 0x108(sp)
    lfd     f26, 0x100(sp)
    lfd     f25, 0xf8(sp)
    lfd     f24, 0xf0(sp)
    lfd     f23, 0xe8(sp)
    lfd     f22, 0xe0(sp)
    lfd     f21, 0xd8(sp)
    lfd     f20, 0xd0(sp)
    lfd     f19, 0xc8(sp)
    lfd     f18, 0xc0(sp)
    addi    sp, sp, 0x130
    blr


.globl doCtrlCode__8J2DPrintFi
doCtrlCode__8J2DPrintFi: # 0x802cee3c
    subi    r0, r4, 0x8
    stwu    sp, -0x20(sp)
    cmplwi  r0, 0x17
    bgt-    branch_0x802cefa8
    lis     r4, 0x803e
    addi    r4, r4, 0x5f8
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr			# switch jump

branch_0x802CEE64:		# jumptable 802CEE60 case 0
    lfs     f1, 0x24(r3)
    lfs     f0, 0x2c(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(r3)
    lfs     f0, 0x1b8(rtoc)
    stfs    f0, 0x2c(r3)
    b       branch_0x802cefa8

branch_0x802CEE80:		# jumptable 802CEE60 case 1
lwz	  r5, 0x30(r3)
cmpwi	  r5, 0
ble	  def_802CEE60	# jumptable 802CEE60 default case
lfs	  f2, 0x24(r3)
lis	  r0, 0x4330
lfd	  f1, 0x1C0(r2)
fctiwz	  f0, f2
stfd	  f0, 0x20+var_8(r1)
lwz	  r4, 0x20+var_8+4(r1)
divw	  r4, r4, r5
mullw	  r4, r5, r4
add	  r4, r5, r4
xoris	  r4, r4, 0x8000
stw	  r4, 0x20+var_10+4(r1)
stw	  r0, 0x20+var_10(r1)
lfd	  f0, 0x20+var_10(r1)
fsubs	  f0, f0, f1
stfs	  f0, 0x24(r3)
lfs	  f0, 0x24(r3)
fsubs	  f0, f0, f2
stfs	  f0, 0x2C(r3)
b	  def_802CEE60	# jumptable 802CEE60 default case

branch_0x802CEED8:		# jumptable 802CEE60 case 2
lfs	  f0, 0x1B8(r2)
lis	  r4, 0x4330
stfs	  f0, 0x2C(r3)
lwz	  r0, 0x1C(r3)
lfd	  f2, 0x1C0(r2)
xoris	  r0, r0, 0x8000
stw	  r0, 0x20+var_10+4(r1)
stw	  r4, 0x20+var_10(r1)
lfd	  f0, 0x20+var_10(r1)
fsubs	  f0, f0, f2
stfs	  f0, 0x24(r3)
lwz	  r0, 0x14(r3)
lfs	  f1, 0x28(r3)
xoris	  r0, r0, 0x8000
stw	  r0, 0x20+var_8+4(r1)
stw	  r4, 0x20+var_8(r1)
lfd	  f0, 0x20+var_8(r1)
fsubs	  f0, f0, f2
fadds	  f0, f1, f0
stfs	  f0, 0x28(r3)
b	  def_802CEE60	# jumptable 802CEE60 default case

branch_0x802CEF2C:		# jumptable 802CEE60 case 5
lfs	  f0, 0x1B8(r2)
lis	  r0, 0x4330
stfs	  f0, 0x2C(r3)
lwz	  r4, 0x1C(r3)
lfd	  f1, 0x1C0(r2)
xoris	  r4, r4, 0x8000
stw	  r4, 0x20+var_10+4(r1)
stw	  r0, 0x20+var_10(r1)
lfd	  f0, 0x20+var_10(r1)
fsubs	  f0, f0, f1
stfs	  f0, 0x24(r3)
b	  def_802CEE60	# jumptable 802CEE60 default case

branch_0x802CEF5C:		# jumptable 802CEE60 case 20
lfs	  f1, 0x24(r3)
lfs	  f0, 0x1D8(r2)
fadds	  f0, f1, f0
stfs	  f0, 0x24(r3)
b	  def_802CEE60	# jumptable 802CEE60 default case

branch_0x802CEF70:		# jumptable 802CEE60 case 21
lfs	  f1, 0x24(r3)
lfs	  f0, 0x1D8(r2)
fsubs	  f0, f1, f0
stfs	  f0, 0x24(r3)
b	  def_802CEE60	# jumptable 802CEE60 default case

branch_0x802CEF84:		# jumptable 802CEE60 case 22
lfs	  f1, 0x28(r3)
lfs	  f0, 0x1D8(r2)
fsubs	  f0, f1, f0
stfs	  f0, 0x28(r3)
b	  def_802CEE60	# jumptable 802CEE60 default case

branch_0x802CEF98:		# jumptable 802CEE60 case 23
lfs	  f1, 0x28(r3)
lfs	  f0, 0x1D8(r2)
fadds	  f0, f1, f0
stfs	  f0, 0x28(r3)

def_802CEE60:		# jumptable 802CEE60 default case
branch_0x802cefa8:
    addi    sp, sp, 0x20
    blr


.globl doEscapeCode__8J2DPrintFPPCUcUc
doEscapeCode__8J2DPrintFPPCUcUc: # 0x802cefb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    mr      r27, r4
    addi    r31, r3, 0x0
    addi    r28, r5, 0x0
    li      r29, 0x0
    li      r26, 0x0
    lwz     r30, 0x0(r4)
branch_0x802cefd8:
    lwz     r3, 0x4(r31)
    lwz     r4, 0x0(r27)
    lwz     r12, 0x0(r3)
    lbz     r4, 0x0(r4)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x802cf01c
    lwz     r3, 0x0(r27)
    lbz     r4, 0x0(r3)
    addi    r0, r3, 0x2
    lbz     r3, 0x1(r3)
    insrwi  r3, r4, 8, 16
    stw     r0, 0x0(r27)
    clrlwi  r4, r3, 16
    b       branch_0x802cf02c

branch_0x802cf01c:
    lwz     r3, 0x0(r27)
    lbz     r4, 0x0(r3)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r27)
branch_0x802cf02c:
    clrlwi  r0, r4, 16
    cmplwi  r0, 0x80
    bge-    branch_0x802cf040
    cmplwi  r0, 0x20
    bge-    branch_0x802cf04c
branch_0x802cf040:
    stw     r30, 0x0(r27)
    li      r3, 0x0
    b       branch_0x802cf584

branch_0x802cf04c:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    clrlslwi  r0, r29, 16, 8
    or      r29, r0, r4
    blt+    branch_0x802cefd8
    lwz     r3, 0x8(r31)
    clrlwi  r0, r29, 16
    cmpwi   r0, 0x474d
    stw     r3, 0x40(sp)
    lwz     r3, 0xc(r31)
    stw     r3, 0x3c(sp)
    beq-    branch_0x802cf4c4
    bge-    branch_0x802cf0e0
    cmpwi   r0, 0x4355
    beq-    branch_0x802cf134
    bge-    branch_0x802cf0bc
    cmpwi   r0, 0x434c
    beq-    branch_0x802cf1bc
    bge-    branch_0x802cf0b0
    cmpwi   r0, 0x4344
    beq-    branch_0x802cf178
    bge-    branch_0x802cf578
    cmpwi   r0, 0x4343
    bge-    branch_0x802cf2cc
    b       branch_0x802cf578

branch_0x802cf0b0:
    cmpwi   r0, 0x4352
    beq-    branch_0x802cf200
    b       branch_0x802cf578

branch_0x802cf0bc:
    cmpwi   r0, 0x4659
    beq-    branch_0x802cf45c
    bge-    branch_0x802cf0d4
    cmpwi   r0, 0x4658
    bge-    branch_0x802cf434
    b       branch_0x802cf578

branch_0x802cf0d4:
    cmpwi   r0, 0x4743
    beq-    branch_0x802cf380
    b       branch_0x802cf578

branch_0x802cf0e0:
    cmpwi   r0, 0x5348
    beq-    branch_0x802cf484
    bge-    branch_0x802cf110
    cmpwi   r0, 0x4c44
    beq-    branch_0x802cf274
    bge-    branch_0x802cf104
    cmpwi   r0, 0x484d
    beq-    branch_0x802cf580
    b       branch_0x802cf578

branch_0x802cf104:
    cmpwi   r0, 0x4c55
    beq-    branch_0x802cf244
    b       branch_0x802cf578

branch_0x802cf110:
    cmpwi   r0, 0x5355
    beq-    branch_0x802cf578
    bge-    branch_0x802cf128
    cmpwi   r0, 0x5354
    bge-    branch_0x802cf2a4
    b       branch_0x802cf578

branch_0x802cf128:
    cmpwi   r0, 0x5357
    bge-    branch_0x802cf578
    b       branch_0x802cf4a4

branch_0x802cf134:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    xoris   r0, r3, 0x8000
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, 0x28(r31)
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f1
    stfs    f0, 0x28(r31)
    b       branch_0x802cf580

branch_0x802cf178:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    xoris   r0, r3, 0x8000
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, 0x28(r31)
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fadds   f0, f0, f1
    stfs    f0, 0x28(r31)
    b       branch_0x802cf580

branch_0x802cf1bc:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    xoris   r0, r3, 0x8000
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, 0x24(r31)
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f1
    stfs    f0, 0x24(r31)
    b       branch_0x802cf580

branch_0x802cf200:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    xoris   r0, r3, 0x8000
    lfd     f2, 0x1c0(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, 0x24(r31)
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fadds   f0, f0, f1
    stfs    f0, 0x24(r31)
    b       branch_0x802cf580

branch_0x802cf244:
    lwz     r3, 0x14(r31)
    lis     r0, 0x4330
    lfd     f1, 0x1c0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x28(r31)
    stw     r3, 0x4c(sp)
    stw     r0, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f1
    fsubs   f0, f2, f0
    stfs    f0, 0x28(r31)
    b       branch_0x802cf580

branch_0x802cf274:
    lwz     r3, 0x14(r31)
    lis     r0, 0x4330
    lfd     f1, 0x1c0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x28(r31)
    stw     r3, 0x4c(sp)
    stw     r0, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f1
    fadds   f0, f2, f0
    stfs    f0, 0x28(r31)
    b       branch_0x802cf580

branch_0x802cf2a4:
    lwz     r5, 0x30(r31)
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r6, r5, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    cmpwi   r3, 0x0
    ble-    branch_0x802cf580
    stw     r3, 0x30(r31)
    b       branch_0x802cf580

branch_0x802cf2cc:
    lwz     r6, 0x8(r31)
    mr      r3, r31
    lwz     r5, 0x44(r31)
    addi    r4, r27, 0x0
    li      r7, 0x10
    bl      getNumber__8J2DPrintFPPCUclli
    stw     r3, 0x38(sp)
    lis     r3, 0x8081
    clrlwi  r5, r28, 24
    lwz     r0, 0x38(sp)
    subi    r4, r3, 0x7f7f
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    stw     r0, 0x40(sp)
    lbz     r0, 0x43(sp)
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x43(sp)
    lbz     r0, 0x3f(sp)
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x3f(sp)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802cf358
    addi    r3, sp, 0x3c
    b       branch_0x802cf35c

branch_0x802cf358:
    addi    r3, sp, 0x40
branch_0x802cf35c:
    lwz     r3, 0x0(r3)
    addi    r5, sp, 0x30
    lwz     r0, 0x40(sp)
    addi    r4, sp, 0x34
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x4(r31)
    bl      setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
    b       branch_0x802cf580

branch_0x802cf380:
    lwz     r6, 0xc(r31)
    mr      r3, r31
    lwz     r5, 0x48(r31)
    addi    r4, r27, 0x0
    li      r7, 0x10
    bl      getNumber__8J2DPrintFPPCUclli
    stw     r3, 0x2c(sp)
    lis     r3, 0x8081
    clrlwi  r5, r28, 24
    lwz     r0, 0x2c(sp)
    subi    r4, r3, 0x7f7f
    stw     r0, 0xc(r31)
    lwz     r0, 0xc(r31)
    stw     r0, 0x3c(sp)
    lbz     r0, 0x43(sp)
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x43(sp)
    lbz     r0, 0x3f(sp)
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x3f(sp)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802cf40c
    addi    r3, sp, 0x3c
    b       branch_0x802cf410

branch_0x802cf40c:
    addi    r3, sp, 0x40
branch_0x802cf410:
    lwz     r3, 0x0(r3)
    addi    r5, sp, 0x24
    lwz     r0, 0x40(sp)
    addi    r4, sp, 0x28
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x4(r31)
    bl      setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
    b       branch_0x802cf580

branch_0x802cf434:
    lwz     r5, 0x58(r31)
    mr      r3, r31
    lwz     r6, 0x34(r31)
    addi    r4, r27, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    cmpwi   r3, 0x0
    blt-    branch_0x802cf580
    stw     r3, 0x34(r31)
    b       branch_0x802cf580

branch_0x802cf45c:
    lwz     r5, 0x5c(r31)
    mr      r3, r31
    lwz     r6, 0x38(r31)
    addi    r4, r27, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    cmpwi   r3, 0x0
    blt-    branch_0x802cf580
    stw     r3, 0x38(r31)
    b       branch_0x802cf580

branch_0x802cf484:
    lwz     r5, 0x4c(r31)
    mr      r3, r31
    lwz     r6, 0x10(r31)
    addi    r4, r27, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    stw     r3, 0x10(r31)
    b       branch_0x802cf580

branch_0x802cf4a4:
    lwz     r5, 0x50(r31)
    mr      r3, r31
    lwz     r6, 0x14(r31)
    addi    r4, r27, 0x0
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    stw     r3, 0x14(r31)
    b       branch_0x802cf580

branch_0x802cf4c4:
    lbz     r6, 0x18(r31)
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    cntlzw  r0, r6
    extrwi  r5, r0, 8, 19
    li      r7, 0xa
    bl      getNumber__8J2DPrintFPPCUclli
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    stb     r0, 0x18(r31)
    lis     r3, 0x8081
    clrlwi  r5, r28, 24
    lbz     r0, 0x43(sp)
    subi    r4, r3, 0x7f7f
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x43(sp)
    lbz     r0, 0x3f(sp)
    mullw   r0, r0, r5
    mulhw   r3, r4, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x3f(sp)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802cf550
    addi    r3, sp, 0x3c
    b       branch_0x802cf554

branch_0x802cf550:
    addi    r3, sp, 0x40
branch_0x802cf554:
    lwz     r3, 0x0(r3)
    addi    r5, sp, 0x1c
    lwz     r0, 0x40(sp)
    addi    r4, sp, 0x20
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x4(r31)
    bl      setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
    b       branch_0x802cf580

branch_0x802cf578:
    stw     r30, 0x0(r27)
    li      r29, 0x0
branch_0x802cf580:
    mr      r3, r29
branch_0x802cf584:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl initchar__8J2DPrintFv
initchar__8J2DPrintFv: # 0x802cf598
    lwz     r0, 0x44(r3)
    stw     r0, 0x8(r3)
    lwz     r0, 0x48(r3)
    stw     r0, 0xc(r3)
    lwz     r0, 0x4c(r3)
    stw     r0, 0x10(r3)
    lwz     r0, 0x50(r3)
    stw     r0, 0x14(r3)
    lbz     r0, 0x60(r3)
    stb     r0, 0x18(r3)
    lwz     r0, 0x54(r3)
    stw     r0, 0x30(r3)
    lwz     r0, 0x58(r3)
    stw     r0, 0x34(r3)
    lwz     r0, 0x5c(r3)
    stw     r0, 0x38(r3)
    blr


.globl getNumber__8J2DPrintFPPCUclli
getNumber__8J2DPrintFPPCUclli: # 0x802cf5dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r4
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    addi    r28, r6, 0x0
    lwz     r29, 0x0(r4)
    lbz     r0, 0x0(r29)
    cmpwi   r0, 0x5b
    beq-    branch_0x802cf61c
    mr      r3, r31
    b       branch_0x802cf6c4

branch_0x802cf61c:
    addi    r0, r29, 0x1
    cmpwi   r7, 0xa
    stw     r0, 0x0(r30)
    li      r3, 0x0
    bne-    branch_0x802cf644
    lwz     r3, 0x0(r30)
    addi    r5, r7, 0x0
    addi    r4, sp, 0x1c
    bl      strtol
    b       branch_0x802cf690

branch_0x802cf644:
    cmpwi   r7, 0x10
    bne-    branch_0x802cf690
    lwz     r3, 0x0(r30)
    addi    r5, r7, 0x0
    addi    r4, sp, 0x1c
    bl      strtoul
    lwz     r4, 0x0(r30)
    lwz     r0, 0x1c(sp)
    subf    r0, r4, r0
    cmplwi  r0, 0x8
    beq-    branch_0x802cf690
    cmplwi  r0, 0x6
    bne-    branch_0x802cf684
    slwi    r0, r3, 8
    ori     r3, r0, 0xff
    b       branch_0x802cf690

branch_0x802cf684:
    stw     r29, 0x0(r30)
    mr      r3, r28
    b       branch_0x802cf6c4

branch_0x802cf690:
    lwz     r4, 0x1c(sp)
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x5d
    beq-    branch_0x802cf6ac
    stw     r29, 0x0(r30)
    mr      r3, r28
    b       branch_0x802cf6c4

branch_0x802cf6ac:
    lwz     r0, 0x0(r30)
    cmplw   r0, r4
    bne-    branch_0x802cf6bc
    mr      r3, r31
branch_0x802cf6bc:
    addi    r0, r4, 0x1
    stw     r0, 0x0(r30)
branch_0x802cf6c4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr

