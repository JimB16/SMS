
.globl atan
atan: # 0x8033bf28
    mflr    r0
    lis     r3, 0x803b
    stw     r0, 0x4(sp)
    lis     r0, 0x4410
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r3, 0x5368
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stfd    f1, 0x8(sp)
    lwz     r30, 0x8(sp)
    clrlwi  r29, r30, 1
    cmpw    r29, r0
    blt-    branch_0x8033bfbc
    lis     r0, 0x7ff0
    cmpw    r29, r0
    bgt-    branch_0x8033bf84
    addis   r0, r29, 0x8010
    cmplwi  r0, 0x0
    bne-    branch_0x8033bf90
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x8033bf90
branch_0x8033bf84:
    lfd     f0, 0x8(sp)
    fadd    f1, f0, f0
    b       branch_0x8033c14c

branch_0x8033bf90:
    cmpwi   r30, 0x0
    ble-    branch_0x8033bfa8
    lfd     f1, 0x18(r31)
    lfd     f0, 0x38(r31)
    fadd    f1, f1, f0
    b       branch_0x8033c14c

branch_0x8033bfa8:
    lfd     f1, 0x18(r31)
    lfd     f0, 0x38(r31)
    fneg    f1, f1
    fsub    f1, f1, f0
    b       branch_0x8033c14c

branch_0x8033bfbc:
    lis     r0, 0x3fdc
    cmpw    r29, r0
    bge-    branch_0x8033bff8
    lis     r0, 0x3e20
    cmpw    r29, r0
    bge-    branch_0x8033bff0
    lfd     f2, 0xa38(rtoc)
    lfd     f1, 0x8(sp)
    lfd     f0, 0xa40(rtoc)
    fadd    f2, f2, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x8033bff0
    b       branch_0x8033c14c

branch_0x8033bff0:
    li      r0, -0x1
    b       branch_0x8033c0a8

branch_0x8033bff8:
    lfd     f1, 0x8(sp)
    bl      fabs__Fd
    lis     r0, 0x3ff3
    stfd    f1, 0x8(sp)
    cmpw    r29, r0
    bge-    branch_0x8033c060
    lis     r0, 0x3fe6
    cmpw    r29, r0
    bge-    branch_0x8033c040
    lfd     f3, 0x8(sp)
    li      r0, 0x0
    lfd     f2, 0xa48(rtoc)
    lfd     f1, 0xa40(rtoc)
    fadd    f0, f2, f3
    fmsub   f1, f2, f3, f1
    fdiv    f0, f1, f0
    stfd    f0, 0x8(sp)
    b       branch_0x8033c0a8

branch_0x8033c040:
    lfd     f2, 0x8(sp)
    li      r0, 0x1
    lfd     f0, 0xa40(rtoc)
    fsub    f1, f2, f0
    fadd    f0, f0, f2
    fdiv    f0, f1, f0
    stfd    f0, 0x8(sp)
    b       branch_0x8033c0a8

branch_0x8033c060:
    lis     r3, 0x4004
    subi    r0, r3, 0x8000
    cmpw    r29, r0
    bge-    branch_0x8033c094
    lfd     f3, 0x8(sp)
    li      r0, 0x2
    lfd     f2, 0xa50(rtoc)
    lfd     f0, 0xa40(rtoc)
    fsub    f1, f3, f2
    fmadd    f0, f2, f3, f0
    fdiv    f0, f1, f0
    stfd    f0, 0x8(sp)
    b       branch_0x8033c0a8

branch_0x8033c094:
    lfd     f1, 0xa58(rtoc)
    li      r0, 0x3
    lfd     f0, 0x8(sp)
    fdiv    f0, f1, f0
    stfd    f0, 0x8(sp)
branch_0x8033c0a8:
    lfd     f10, 0x8(sp)
    cmpwi   r0, 0x0
    lfd     f5, 0x90(r31)
    fmul    f12, f10, f10
    lfd     f0, 0x80(r31)
    lfd     f8, 0x70(r31)
    lfd     f4, 0x88(r31)
    lfd     f3, 0x78(r31)
    fmul    f11, f12, f12
    lfd     f7, 0x60(r31)
    lfd     f2, 0x68(r31)
    lfd     f6, 0x50(r31)
    lfd     f1, 0x58(r31)
    fmadd    f9, f11, f5, f0
    lfd     f5, 0x40(r31)
    lfd     f0, 0x48(r31)
    fmadd    f3, f11, f4, f3
    fmadd    f4, f11, f9, f8
    fmadd    f2, f11, f3, f2
    fmadd    f3, f11, f4, f7
    fmadd    f1, f11, f2, f1
    fmadd    f2, f11, f3, f6
    fmadd    f0, f11, f1, f0
    fmadd    f1, f11, f2, f5
    fmul    f2, f11, f0
    fmul    f0, f12, f1
    bge-    branch_0x8033c120
    fadd    f0, f0, f2
    fnmsub   f1, f10, f0, f10
    b       branch_0x8033c14c

branch_0x8033c120:
    slwi    r0, r0, 3
    fadd    f1, f0, f2
    add     r3, r31, r0
    lfdx    f2, r31, r0
    lfd     f0, 0x20(r3)
    cmpwi   r30, 0x0
    fmsub   f0, f10, f1, f0
    fsub    f0, f0, f10
    fsub    f1, f2, f0
    bge-    branch_0x8033c14c
    fneg    f1, f1
branch_0x8033c14c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr

