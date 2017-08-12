
.globl inbetweenData__16TCameraKindParamFRC16TCameraKindParamf
inbetweenData__16TCameraKindParamFRC16TCameraKindParamf: # 0x80026eb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    fmr     f2, f31
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lfs     f1, 0x0(r4)
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x4(r31)
    addi    r3, r30, 0x4
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x8(r31)
    addi    r3, r30, 0x8
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0xc(r31)
    addi    r3, r30, 0xc
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x10(r31)
    addi    r3, r30, 0x10
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x14(r31)
    addi    r3, r30, 0x14
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lfs     f0, -0x78c0(r2)
    lha     r4, 0x18(r31)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80026f4c
    sth     r4, 0x18(r30)
    b       branch_0x80026f90

branch_0x80026f4c:
    lfs     f0, -0x78bc(r2)
    lis     r0, 0x4330
    lha     r3, 0x18(r30)
    fdivs   f2, f0, f31
    lfd     f1, -0x78b8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x18(r30)
    add     r0, r0, r3
    sth     r0, 0x18(r30)
branch_0x80026f90:
    lfs     f0, -0x78c0(r2)
    lha     r4, 0x1a(r31)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80026fa8
    sth     r4, 0x1a(r30)
    b       branch_0x80026fec

branch_0x80026fa8:
    lfs     f0, -0x78bc(r2)
    lis     r0, 0x4330
    lha     r3, 0x1a(r30)
    fdivs   f2, f0, f31
    lfd     f1, -0x78b8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x1a(r30)
    add     r0, r0, r3
    sth     r0, 0x1a(r30)
branch_0x80026fec:
    fmr     f2, f31
    lfs     f1, 0x1c(r31)
    addi    r3, r30, 0x1c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lfs     f0, -0x78c0(r2)
    lha     r4, 0x20(r31)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80027014
    sth     r4, 0x20(r30)
    b       branch_0x80027058

branch_0x80027014:
    lfs     f0, -0x78bc(r2)
    lis     r0, 0x4330
    lha     r3, 0x20(r30)
    fdivs   f2, f0, f31
    lfd     f1, -0x78b8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x20(r30)
    add     r0, r0, r3
    sth     r0, 0x20(r30)
branch_0x80027058:
    lfs     f0, -0x78c0(r2)
    lha     r4, 0x22(r31)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80027070
    sth     r4, 0x22(r30)
    b       branch_0x800270b4

branch_0x80027070:
    lfs     f0, -0x78bc(r2)
    lis     r0, 0x4330
    lha     r3, 0x22(r30)
    fdivs   f2, f0, f31
    lfd     f1, -0x78b8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x22(r30)
    add     r0, r0, r3
    sth     r0, 0x22(r30)
branch_0x800270b4:
    fmr     f2, f31
    lfs     f1, 0x24(r31)
    addi    r3, r30, 0x24
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x28(r31)
    addi    r3, r30, 0x28
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x2c(r31)
    addi    r3, r30, 0x2c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x30(r31)
    addi    r3, r30, 0x30
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x34(r31)
    addi    r3, r30, 0x34
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x38(r31)
    addi    r3, r30, 0x38
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x3c(r31)
    addi    r3, r30, 0x3c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x40(r31)
    addi    r3, r30, 0x40
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x44(r31)
    addi    r3, r30, 0x44
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x48(r31)
    addi    r3, r30, 0x48
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x4c(r31)
    addi    r3, r30, 0x4c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x50(r31)
    addi    r3, r30, 0x50
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lfs     f0, -0x78c0(r2)
    lha     r4, 0x54(r31)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8002718c
    sth     r4, 0x54(r30)
    b       branch_0x800271d0

branch_0x8002718c:
    lfs     f0, -0x78bc(r2)
    lis     r0, 0x4330
    lha     r3, 0x54(r30)
    fdivs   f2, f0, f31
    lfd     f1, -0x78b8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x54(r30)
    add     r0, r0, r3
    sth     r0, 0x54(r30)
branch_0x800271d0:
    lfs     f0, -0x78c0(r2)
    lha     r4, 0x56(r31)
    fcmpo   cr0, f31, f0
    bge-    branch_0x800271e8
    sth     r4, 0x56(r30)
    b       branch_0x8002722c

branch_0x800271e8:
    lfs     f0, -0x78bc(r2)
    lis     r0, 0x4330
    lha     r3, 0x56(r30)
    fdivs   f2, f0, f31
    lfd     f1, -0x78b8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x56(r30)
    add     r0, r0, r3
    sth     r0, 0x56(r30)
branch_0x8002722c:
    lha     r0, 0x58(r31)
    fmr     f2, f31
    addi    r3, r30, 0x5c
    sth     r0, 0x58(r30)
    lha     r0, 0x5a(r31)
    sth     r0, 0x5a(r30)
    lfs     f1, 0x5c(r31)
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lfs     f0, -0x78c0(r2)
    lha     r4, 0x60(r31)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80027264
    sth     r4, 0x60(r30)
    b       branch_0x800272a8

branch_0x80027264:
    lfs     f0, -0x78bc(r2)
    lis     r0, 0x4330
    lha     r3, 0x60(r30)
    fdivs   f2, f0, f31
    lfd     f1, -0x78b8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x60(r30)
    add     r0, r0, r3
    sth     r0, 0x60(r30)
branch_0x800272a8:
    lwz     r0, 0x64(r31)
    fmr     f2, f31
    addi    r3, r30, 0x6c
    stw     r0, 0x64(r30)
    lwz     r0, 0x68(r31)
    stw     r0, 0x68(r30)
    lfs     f1, 0x6c(r31)
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x70(r31)
    addi    r3, r30, 0x70
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x74(r31)
    addi    r3, r30, 0x74
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x78(r31)
    addi    r3, r30, 0x78
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x7c(r31)
    addi    r3, r30, 0x7c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x80(r31)
    addi    r3, r30, 0x80
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x84(r31)
    addi    r3, r30, 0x84
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x88(r31)
    addi    r3, r30, 0x88
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x8c(r31)
    addi    r3, r30, 0x8c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x90(r31)
    addi    r3, r30, 0x90
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x94(r31)
    addi    r3, r30, 0x94
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x98(r31)
    addi    r3, r30, 0x98
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x9c(r31)
    addi    r3, r30, 0x9c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0xa0(r31)
    addi    r3, r30, 0xa0
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0xa4(r31)
    addi    r3, r30, 0xa4
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0xa8(r31)
    addi    r3, r30, 0xa8
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam: # 0x800273d4
    lfs     f0, 0x18(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x40(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0x54(r4)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x68(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x7c(r4)
    stfs    f0, 0x14(r3)
    lha     r0, 0x90(r4)
    sth     r0, 0x18(r3)
    lha     r0, 0xa4(r4)
    sth     r0, 0x1a(r3)
    lfs     f0, 0xb8(r4)
    stfs    f0, 0x1c(r3)
    lha     r0, 0xcc(r4)
    sth     r0, 0x20(r3)
    lha     r0, 0xe0(r4)
    sth     r0, 0x22(r3)
    lfs     f0, 0xf4(r4)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x108(r4)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x11c(r4)
    stfs    f0, 0x2c(r3)
    lfs     f0, 0x130(r4)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x144(r4)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x158(r4)
    stfs    f0, 0x38(r3)
    lfs     f0, 0x16c(r4)
    stfs    f0, 0x3c(r3)
    lfs     f0, 0x180(r4)
    stfs    f0, 0x40(r3)
    lfs     f0, 0x194(r4)
    stfs    f0, 0x44(r3)
    lfs     f0, 0x1a8(r4)
    stfs    f0, 0x48(r3)
    lfs     f0, 0x1bc(r4)
    stfs    f0, 0x4c(r3)
    lfs     f0, 0x1d0(r4)
    stfs    f0, 0x50(r3)
    lha     r0, 0x1e4(r4)
    sth     r0, 0x54(r3)
    lha     r0, 0x1f8(r4)
    sth     r0, 0x56(r3)
    lha     r0, 0x20c(r4)
    sth     r0, 0x58(r3)
    lha     r0, 0x220(r4)
    sth     r0, 0x5a(r3)
    lfs     f0, 0x234(r4)
    stfs    f0, 0x5c(r3)
    lha     r0, 0x248(r4)
    sth     r0, 0x60(r3)
    lwz     r0, 0x25c(r4)
    stw     r0, 0x64(r3)
    lwz     r0, 0x270(r4)
    stw     r0, 0x68(r3)
    lfs     f0, 0x284(r4)
    stfs    f0, 0x6c(r3)
    lfs     f0, 0x298(r4)
    stfs    f0, 0x70(r3)
    lfs     f0, 0x2ac(r4)
    stfs    f0, 0x74(r3)
    lfs     f0, 0x2c0(r4)
    stfs    f0, 0x78(r3)
    lfs     f0, 0x2d4(r4)
    stfs    f0, 0x7c(r3)
    lfs     f0, 0x2e8(r4)
    stfs    f0, 0x80(r3)
    lfs     f0, 0x2fc(r4)
    stfs    f0, 0x84(r3)
    lfs     f0, 0x310(r4)
    stfs    f0, 0x88(r3)
    lfs     f0, 0x324(r4)
    stfs    f0, 0x8c(r3)
    lfs     f0, 0x338(r4)
    stfs    f0, 0x90(r3)
    lfs     f0, 0x34c(r4)
    stfs    f0, 0x94(r3)
    lfs     f0, 0x360(r4)
    stfs    f0, 0x98(r3)
    lfs     f0, 0x374(r4)
    stfs    f0, 0x9c(r3)
    lfs     f0, 0x388(r4)
    stfs    f0, 0xa0(r3)
    lfs     f0, 0x39c(r4)
    stfs    f0, 0xa4(r3)
    lfs     f0, 0x3b0(r4)
    stfs    f0, 0xa8(r3)
    blr

