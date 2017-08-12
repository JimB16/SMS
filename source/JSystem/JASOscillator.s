
.globl init__Q28JASystem11TOscillatorFv
init__Q28JASystem11TOscillatorFv: # 0x803155dc
    li      r4, 0x0
    stw     r4, 0x0(r3)
    li      r0, 0x1
    stb     r0, 0x4(r3)
    stb     r4, 0x5(r3)
    sth     r4, 0x6(r3)
    lfs     f0, 0x6d0(r2)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    sth     r4, 0x18(r3)
    stfs    f0, 0x1c(r3)
    blr


.globl initStart__Q28JASystem11TOscillatorFv
initStart__Q28JASystem11TOscillatorFv: # 0x80315614
    li      r0, 0x2
    stb     r0, 0x4(r3)
    li      r4, 0x0
    sth     r4, 0x18(r3)
    lwz     r5, 0x0(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x8031563c
    lwz     r0, 0x8(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80315648
branch_0x8031563c:
    lfs     f0, 0x6d0(r2)
    stfs    f0, 0xc(r3)
    blr

branch_0x80315648:
    sth     r4, 0x6(r3)
    lfs     f0, 0x6d0(r2)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x10(r3)
    sth     r4, 0x18(r3)
    lwz     r4, 0x0(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r3)
    blr


.globl getOffset__Q28JASystem11TOscillatorFv
getOffset__Q28JASystem11TOscillatorFv: # 0x80315674
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x80315698
    lfs     f1, 0x6d4(r2)
    stfs    f1, 0xc(r3)
    b       branch_0x80315770

branch_0x80315698:
    lbz     r0, 0x4(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x803156e8
    bge-    branch_0x803156b8
    cmpwi   r0, 0x0
    beq-    branch_0x803156c4
    bge-    branch_0x803156e0
    b       branch_0x803156e8

branch_0x803156b8:
    cmpwi   r0, 0x4
    bge-    branch_0x803156e8
    b       branch_0x803156cc

branch_0x803156c4:
    lfs     f1, 0x6d4(r2)
    b       branch_0x80315770

branch_0x803156cc:
    lfs     f2, 0xc(r3)
    lfs     f1, 0x10(r4)
    lfs     f0, 0x14(r4)
    fmadds  f1, f2, f1, f0
    b       branch_0x80315770

branch_0x803156e0:
    li      r0, 0x2
    stb     r0, 0x4(r3)
branch_0x803156e8:
    lbz     r5, 0x4(r3)
    cmplwi  r5, 0x4
    bne-    branch_0x80315700
    lwz     r4, 0x0(r3)
    lwz     r4, 0xc(r4)
    b       branch_0x80315720

branch_0x80315700:
    cmplwi  r5, 0x5
    bne-    branch_0x80315718
    lis     r4, FORCE_STOP_TABLE__Q28JASystem6Driver@h
    addi    r0, r4, FORCE_STOP_TABLE__Q28JASystem6Driver@l
    mr      r4, r0
    b       branch_0x80315720

branch_0x80315718:
    lwz     r4, 0x0(r3)
    lwz     r4, 0x8(r4)
branch_0x80315720:
    cmplwi  r4, 0x0
    bne-    branch_0x8031573c
    cmplwi  r5, 0x6
    beq-    branch_0x8031573c
    lfs     f1, 0x6d4(r2)
    stfs    f1, 0xc(r3)
    b       branch_0x80315770

branch_0x8031573c:
    cmplwi  r5, 0x5
    bne-    branch_0x80315758
    lfs     f1, 0x8(r3)
    lfs     f0, 0x6d4(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r3)
    b       branch_0x8031576c

branch_0x80315758:
    lwz     r5, 0x0(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r3)
branch_0x8031576c:
    bl      calc__Q28JASystem11TOscillatorFPs
branch_0x80315770:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getOffsetNoCount__Q28JASystem11TOscillatorFv
getOffsetNoCount__Q28JASystem11TOscillatorFv: # 0x80315780
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80315798
    lfs     f1, 0x6d4(r2)
    stfs    f1, 0xc(r3)
    blr

branch_0x80315798:
    lbz     r0, 0x4(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x803157bc
    bge-    branch_0x803157c4
    cmpwi   r0, 0x0
    bge-    branch_0x803157b4
    b       branch_0x803157c4

branch_0x803157b4:
    lfs     f1, 0x6d4(r2)
    blr

branch_0x803157bc:
    li      r0, 0x2
    stb     r0, 0x4(r3)
branch_0x803157c4:
    lwz     r4, 0x0(r3)
    lfs     f2, 0xc(r3)
    lfs     f1, 0x10(r4)
    lfs     f0, 0x14(r4)
    fmadds  f1, f2, f1, f0
    blr


.globl forceStop__Q28JASystem11TOscillatorFv
forceStop__Q28JASystem11TOscillatorFv: # 0x803157dc
    lbz     r0, 0x4(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x803157f0
    li      r3, 0x0
    blr

branch_0x803157f0:
    li      r0, 0x0
    sth     r0, 0x6(r3)
    li      r0, 0x5
    lfs     f0, 0x6d0(r2)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stb     r0, 0x4(r3)
    li      r3, 0x1
    blr


.globl release__Q28JASystem11TOscillatorFv
release__Q28JASystem11TOscillatorFv: # 0x80315818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lbz     r0, 0x4(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x80315848
    li      r3, 0x0
    b       branch_0x80315984

branch_0x80315848:
    lwz     r4, 0x0(r31)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    cmplw   r3, r0
    beq-    branch_0x80315874
    li      r0, 0x0
    sth     r0, 0x6(r31)
    lfs     f0, 0x6d0(r2)
    stfs    f0, 0x8(r31)
    lfs     f0, 0xc(r31)
    stfs    f0, 0x10(r31)
branch_0x80315874:
    lwz     r3, 0x0(r31)
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80315898
    lhz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80315898
    li      r0, 0x10
    sth     r0, 0x18(r31)
branch_0x80315898:
    lhz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80315978
    li      r0, 0x6
    stb     r0, 0x4(r31)
    lis     r30, 0x4330
    lhz     r0, 0x18(r31)
    extrwi  r0, r0, 2, 16
    stb     r0, 0x5(r31)
    lfs     f1, -0x73d0(r13)
    lfs     f0, 0x6d8(r2)
    lhz     r0, 0x18(r31)
    fdivs   f1, f1, f0
    lfs     f0, 0x6dc(r2)
    clrlwi  r0, r0, 18
    lfd     f2, 0x6e0(r2)
    xoris   r0, r0, 0x8000
    fdivs   f0, f1, f0
    stw     r0, 0x1c(sp)
    stw     r30, 0x18(sp)
    lfd     f1, 0x18(sp)
    fsubs   f31, f1, f2
    fmuls   f31, f31, f0
    bl      getUpdateInterval__Q28JASystem6DriverFv
    clrlwi  r0, r3, 24
    lfd     f1, 0x6e8(r2)
    stw     r0, 0x14(sp)
    stw     r30, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fdivs   f31, f31, f0
    stfs    f31, 0x8(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x6d4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8031592c
    stfs    f0, 0x8(r31)
branch_0x8031592c:
    lfs     f0, 0x8(r31)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x6d0(r2)
    stfs    f0, 0x10(r31)
    lbz     r0, 0x5(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80315964
    lfs     f2, 0x10(r31)
    lfs     f1, 0xc(r31)
    lfs     f0, 0x8(r31)
    fsubs   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80315980

branch_0x80315964:
    lfs     f1, 0x10(r31)
    lfs     f0, 0xc(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80315980

branch_0x80315978:
    li      r0, 0x4
    stb     r0, 0x4(r31)
branch_0x80315980:
    li      r3, 0x1
branch_0x80315984:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl calc__Q28JASystem11TOscillatorFPs
calc__Q28JASystem11TOscillatorFPs: # 0x803159a0
    mflr    r0
    lis     r5, unk_803aa5f0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stfd    f29, 0x68(sp)
    stfd    f28, 0x60(sp)
    stfd    f27, 0x58(sp)
    stfd    f26, 0x50(sp)
    stfd    f25, 0x48(sp)
    stmw    r26, 0x30(sp)
    addi    r31, r5, unk_803aa5f0@l
    mr      r29, r3
    mr      r30, r4
    lis     r28, 0x4330
    lfd     f28, 0x6e8(r2)
    lfd     f29, 0x6e0(r2)
    lfs     f30, 0x6d8(r2)
    lfs     f31, 0x6dc(r2)
    lfs     f26, 0x6f0(r2)
    lfs     f27, 0x6d0(r2)
    b       branch_0x80315b68

branch_0x803159fc:
    lhz     r0, 0x6(r29)
    lfs     f0, 0x10(r29)
    mulli   r3, r0, 0x3
    stfs    f0, 0xc(r29)
    lbz     r0, 0x4(r29)
    cmplwi  r0, 0x6
    bne-    branch_0x80315a24
    li      r0, 0x0
    stb     r0, 0x4(r29)
    b       branch_0x80315b78

branch_0x80315a24:
    slwi    r0, r3, 1
    add     r3, r30, r0
    lha     r4, 0x0(r3)
    lha     r27, 0x2(r3)
    cmpwi   r4, 0xd
    lha     r26, 0x4(r3)
    bne-    branch_0x80315a48
    sth     r26, 0x6(r29)
    b       branch_0x80315b68

branch_0x80315a48:
    cmpwi   r4, 0xf
    bne-    branch_0x80315a5c
    li      r0, 0x0
    stb     r0, 0x4(r29)
    b       branch_0x80315b78

branch_0x80315a5c:
    cmpwi   r4, 0xe
    bne-    branch_0x80315a84
    li      r0, 0x3
    stb     r0, 0x4(r29)
    lwz     r3, 0x0(r29)
    lfs     f2, 0xc(r29)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x14(r3)
    fmadds  f1, f2, f1, f0
    b       branch_0x80315d10

branch_0x80315a84:
    extsh.  r0, r27
    stb     r4, 0x5(r29)
    bne-    branch_0x80315abc
    xoris   r0, r26, 0x8000
    stw     r0, 0x2c(sp)
    stw     r28, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f29
    fdivs   f0, f0, f26
    stfs    f0, 0x10(r29)
    lhz     r3, 0x6(r29)
    addi    r0, r3, 0x1
    sth     r0, 0x6(r29)
    b       branch_0x80315b68

branch_0x80315abc:
    lfs     f25, -0x73d0(r13)
    bl      getUpdateInterval__Q28JASystem6DriverFv
    fdivs   f0, f25, f30
    xoris   r0, r27, 0x8000
    stw     r0, 0x24(sp)
    clrlwi  r3, r3, 24
    xoris   r0, r26, 0x8000
    fdivs   f0, f0, f31
    stw     r28, 0x20(sp)
    stw     r3, 0x2c(sp)
    lfd     f1, 0x20(sp)
    stw     r28, 0x28(sp)
    fsubs   f1, f1, f29
    lfd     f2, 0x28(sp)
    stw     r0, 0x1c(sp)
    fsubs   f2, f2, f28
    fmuls   f0, f1, f0
    stw     r28, 0x18(sp)
    fdivs   f1, f0, f2
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f29
    stfs    f1, 0x8(r29)
    lfs     f1, 0x8(r29)
    fdivs   f0, f0, f26
    stfs    f1, 0x1c(r29)
    stfs    f0, 0x10(r29)
    lbz     r0, 0x5(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80315b4c
    lfs     f2, 0x10(r29)
    lfs     f1, 0xc(r29)
    lfs     f0, 0x8(r29)
    fsubs   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x14(r29)
    b       branch_0x80315b5c

branch_0x80315b4c:
    lfs     f1, 0x10(r29)
    lfs     f0, 0xc(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r29)
branch_0x80315b5c:
    lhz     r3, 0x6(r29)
    addi    r0, r3, 0x1
    sth     r0, 0x6(r29)
branch_0x80315b68:
    lfs     f0, 0x8(r29)
    fcmpo   cr0, f0, f27
    cror    2, 0, 2
    beq+    branch_0x803159fc
branch_0x80315b78:
    lwz     r3, 0x0(r29)
    lfs     f1, 0x6d0(r2)
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80315b94
    lfs     f1, 0x14(r3)
    b       branch_0x80315d10

branch_0x80315b94:
    lfd     f0, 0x6f8(r2)
    lfs     f2, 0x1c(r29)
    fcmpu   cr0, f0, f2
    bne-    branch_0x80315bb4
    lfs     f0, 0x10(r29)
    fmr     f2, f0
    stfs    f0, 0xc(r29)
    b       branch_0x80315d00

branch_0x80315bb4:
    lbz     r3, 0x5(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80315bcc
    lfs     f28, 0x14(r29)
    fcmpu   cr0, f1, f28
    bne-    branch_0x80315be8
branch_0x80315bcc:
    lfs     f2, 0x14(r29)
    lfs     f1, 0x8(r29)
    lfs     f0, 0x10(r29)
    fnmsubs  f0, f2, f1, f0
    fmr     f2, f0
    stfs    f0, 0xc(r29)
    b       branch_0x80315d00

branch_0x80315be8:
    addi    r0, r3, -0x1
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x2
    bgt-    branch_0x80315cec
    cmpwi   r3, 0x2
    li      r26, 0x0
    beq-    branch_0x80315c2c
    bge-    branch_0x80315c14
    cmpwi   r3, 0x1
    bge-    branch_0x80315c24
    b       branch_0x80315c30

branch_0x80315c14:
    cmpwi   r3, 0x4
    bge-    branch_0x80315c30
    mr      r26, r31
    b       branch_0x80315c30

branch_0x80315c24:
    addi    r26, r31, 0x88
    b       branch_0x80315c30

branch_0x80315c2c:
    addi    r26, r31, 0x44
branch_0x80315c30:
    lfs     f0, 0x6d0(r2)
    fcmpo   cr0, f28, f0
    bge-    branch_0x80315c58
    lfs     f0, 0x8(r29)
    lfs     f1, 0x6d4(r2)
    fdivs   f0, f0, f2
    lfs     f2, 0x700(r2)
    fsubs   f0, f1, f0
    fmuls   f25, f2, f0
    b       branch_0x80315c68

branch_0x80315c58:
    lfs     f0, 0x8(r29)
    lfs     f1, 0x700(r2)
    fdivs   f0, f0, f2
    fmuls   f25, f1, f0
branch_0x80315c68:
    fmr     f1, f25
    bl      __cvt_fp2unsigned
    stw     r3, 0x1c(sp)
    lis     r0, 0x4330
    lfd     f1, 0x6e8(r2)
    cmplwi  r3, 0x10
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fsubs   f4, f25, f0
    blt-    branch_0x80315c9c
    li      r3, 0xf
    lfs     f4, 0x6d4(r2)
branch_0x80315c9c:
    slwi    r0, r3, 2
    lfs     f3, 0x14(r29)
    add     r3, r26, r0
    lfs     f0, 0x6d0(r2)
    lfsx    f2, r26, r0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f3, f0
    fsubs   f0, f1, f2
    fmadds  f0, f4, f0, f2
    fmuls   f0, f28, f0
    fabs    f1, f0
    bge-    branch_0x80315cd8
    lfs     f0, 0x10(r29)
    fadds   f2, f0, f1
    b       branch_0x80315ce4

branch_0x80315cd8:
    fsubs   f0, f3, f1
    lfs     f1, 0x10(r29)
    fsubs   f2, f1, f0
branch_0x80315ce4:
    stfs    f2, 0xc(r29)
    b       branch_0x80315d00

branch_0x80315cec:
    lfs     f1, 0x8(r29)
    lfs     f0, 0x10(r29)
    fnmsubs  f0, f28, f1, f0
    fmr     f2, f0
    stfs    f0, 0xc(r29)
branch_0x80315d00:
    lwz     r3, 0x0(r29)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x14(r3)
    fmadds  f1, f2, f1, f0
branch_0x80315d10:
    lmw     r26, 0x30(sp)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lfd     f29, 0x68(sp)
    lfd     f28, 0x60(sp)
    lfd     f27, 0x58(sp)
    lfd     f26, 0x50(sp)
    lfd     f25, 0x48(sp)
    addi    sp, sp, 0x80
    blr

