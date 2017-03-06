
.globl __ieee754_atan2
__ieee754_atan2: # 0x8033bc90
    mflr    r0
    lis     r3, 0x7ff0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stfd    f2, 0x10(sp)
    lwz     r8, 0x14(sp)
    stfd    f1, 0x8(sp)
    neg     r0, r8
    lwz     r4, 0x10(sp)
    or      r0, r8, r0
    lwz     r5, 0x8(sp)
    clrlwi  r6, r4, 1
    lwz     r9, 0xc(sp)
    srwi    r0, r0, 31
    or      r0, r6, r0
    cmplw   r0, r3
    clrlwi  r7, r5, 1
    bgt-    branch_0x8033bcf4
    neg     r0, r9
    or      r0, r9, r0
    srwi    r0, r0, 31
    or      r0, r7, r0
    cmplw   r0, r3
    ble-    branch_0x8033bd04
branch_0x8033bcf4:
    lfd     f1, 0x10(sp)
    lfd     f0, 0x8(sp)
    fadd    f1, f1, f0
    b       branch_0x8033bf14

branch_0x8033bd04:
    addis   r0, r4, 0xc010
    or.     r0, r0, r8
    bne-    branch_0x8033bd1c
    lfd     f1, 0x8(sp)
    bl      atan
    b       branch_0x8033bf14

branch_0x8033bd1c:
    or.     r0, r7, r9
    rlwinm  r0, r4, 2, 30, 30
    mr      r31, r0
    inslwi  r31, r5, 1, 31
    bne-    branch_0x8033bd6c
    cmpwi   r31, 0x2
    beq-    branch_0x8033bd5c
    bge-    branch_0x8033bd48
    cmpwi   r31, 0x0
    bge-    branch_0x8033bd54
    b       branch_0x8033bd6c

branch_0x8033bd48:
    cmpwi   r31, 0x4
    bge-    branch_0x8033bd6c
    b       branch_0x8033bd64

branch_0x8033bd54:
    lfd     f1, 0x8(sp)
    b       branch_0x8033bf14

branch_0x8033bd5c:
    lfd     f1, 0x9e0(rtoc)
    b       branch_0x8033bf14

branch_0x8033bd64:
    lfd     f1, 0x9e8(rtoc)
    b       branch_0x8033bf14

branch_0x8033bd6c:
    or.     r0, r6, r8
    bne-    branch_0x8033bd8c
    cmpwi   r5, 0x0
    bge-    branch_0x8033bd84
    lfd     f1, 0x9f0(rtoc)
    b       branch_0x8033bf14

branch_0x8033bd84:
    lfd     f1, 0x9f8(rtoc)
    b       branch_0x8033bf14

branch_0x8033bd8c:
    addis   r0, r6, 0x8010
    cmplwi  r0, 0x0
    bne-    branch_0x8033be34
    addis   r0, r7, 0x8010
    cmplwi  r0, 0x0
    bne-    branch_0x8033bdec
    cmpwi   r31, 0x2
    beq-    branch_0x8033bddc
    bge-    branch_0x8033bdc0
    cmpwi   r31, 0x0
    beq-    branch_0x8033bdcc
    bge-    branch_0x8033bdd4
    b       branch_0x8033be34

branch_0x8033bdc0:
    cmpwi   r31, 0x4
    bge-    branch_0x8033be34
    b       branch_0x8033bde4

branch_0x8033bdcc:
    lfd     f1, 0xa00(rtoc)
    b       branch_0x8033bf14

branch_0x8033bdd4:
    lfd     f1, 0xa08(rtoc)
    b       branch_0x8033bf14

branch_0x8033bddc:
    lfd     f1, 0xa10(rtoc)
    b       branch_0x8033bf14

branch_0x8033bde4:
    lfd     f1, 0xa18(rtoc)
    b       branch_0x8033bf14

branch_0x8033bdec:
    cmpwi   r31, 0x2
    beq-    branch_0x8033be24
    bge-    branch_0x8033be08
    cmpwi   r31, 0x0
    beq-    branch_0x8033be14
    bge-    branch_0x8033be1c
    b       branch_0x8033be34

branch_0x8033be08:
    cmpwi   r31, 0x4
    bge-    branch_0x8033be34
    b       branch_0x8033be2c

branch_0x8033be14:
    lfd     f1, 0xa20(rtoc)
    b       branch_0x8033bf14

branch_0x8033be1c:
    lfd     f1, 0xa28(rtoc)
    b       branch_0x8033bf14

branch_0x8033be24:
    lfd     f1, 0x9e0(rtoc)
    b       branch_0x8033bf14

branch_0x8033be2c:
    lfd     f1, 0x9e8(rtoc)
    b       branch_0x8033bf14

branch_0x8033be34:
    addis   r0, r7, 0x8010
    cmplwi  r0, 0x0
    bne-    branch_0x8033be58
    cmpwi   r5, 0x0
    bge-    branch_0x8033be50
    lfd     f1, 0x9f0(rtoc)
    b       branch_0x8033bf14

branch_0x8033be50:
    lfd     f1, 0x9f8(rtoc)
    b       branch_0x8033bf14

branch_0x8033be58:
    subf    r0, r6, r7
    srawi   r0, r0, 20
    cmpwi   r0, 0x3c
    ble-    branch_0x8033be74
    lfd     f0, 0x9f8(rtoc)
    stfd    f0, 0x18(sp)
    b       branch_0x8033bea8

branch_0x8033be74:
    cmpwi   r4, 0x0
    bge-    branch_0x8033be90
    cmpwi   r0, -0x3c
    bge-    branch_0x8033be90
    lfd     f0, 0xa20(rtoc)
    stfd    f0, 0x18(sp)
    b       branch_0x8033bea8

branch_0x8033be90:
    lfd     f1, 0x8(sp)
    lfd     f0, 0x10(sp)
    fdiv    f1, f1, f0
    bl      fabs__Fd
    bl      atan
    stfd    f1, 0x18(sp)
branch_0x8033bea8:
    cmpwi   r31, 0x1
    beq-    branch_0x8033bed4
    bge-    branch_0x8033bec0
    cmpwi   r31, 0x0
    bge-    branch_0x8033becc
    b       branch_0x8033bf00

branch_0x8033bec0:
    cmpwi   r31, 0x3
    bge-    branch_0x8033bf00
    b       branch_0x8033bee8

branch_0x8033becc:
    lfd     f1, 0x18(sp)
    b       branch_0x8033bf14

branch_0x8033bed4:
    lwz     r0, 0x18(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x18(sp)
    lfd     f1, 0x18(sp)
    b       branch_0x8033bf14

branch_0x8033bee8:
    lfd     f1, 0x18(sp)
    lfd     f0, 0xa30(rtoc)
    lfd     f2, 0x9e0(rtoc)
    fsub    f0, f1, f0
    fsub    f1, f2, f0
    b       branch_0x8033bf14

branch_0x8033bf00:
    lfd     f2, 0x18(sp)
    lfd     f1, 0xa30(rtoc)
    lfd     f0, 0x9e0(rtoc)
    fsub    f1, f2, f1
    fsub    f1, f1, f0
branch_0x8033bf14:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

