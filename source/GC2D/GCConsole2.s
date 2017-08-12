
.globl __dt__11TGCConsole2Fv
__dt__11TGCConsole2Fv: # 0x801407c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80140820
    lis     r3, __vvt__11TGCConsole2@h
    addi    r0, r3, __vvt__11TGCConsole2@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80140810
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80140810:
    extsh.  r0, r31
    ble-    branch_0x80140820
    mr      r3, r30
    bl      __dl__FPv
branch_0x80140820:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__11TGCConsole2FUlPQ26JDrama9TGraphics
perform__11TGCConsole2FUlPQ26JDrama9TGraphics: # 0x8014083c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0xfb0(sp)
    stfd    f31, 0xfa8(sp)
    stmw    r19, 0xf74(sp)
    addi    r27, r4, 0x0
    addi    r31, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x80142d84
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014091c
    lwz     r19, R13Off_m0x7118(r13)
    li      r20, 0x1
    addi    r3, r19, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801408ac
    lwz     r0, 0x50(r19)
    cmpwi   r0, 0x49
    bne-    branch_0x8014089c
    mr      r0, r20
    b       branch_0x801408a0

branch_0x8014089c:
    li      r0, 0x0
branch_0x801408a0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801408ac
    li      r20, 0x0
branch_0x801408ac:
    clrlwi. r0, r20, 24
    beq-    branch_0x801408bc
    li      r0, 0x1
    b       branch_0x801408c0

branch_0x801408bc:
    li      r0, 0x0
branch_0x801408c0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80140910
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x801408e0
    li      r0, 0x1
    b       branch_0x801408e4

branch_0x801408e0:
    li      r0, 0x0
branch_0x801408e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80140910
    lbz     r0, 0x3b0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801409a0
    lis     r4, unk_00030002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00030002@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801409a0
branch_0x80140910:
    mr      r3, r31
    bl      startCameraDemo__11TGCConsole2Fv
    b       branch_0x801409a0

branch_0x8014091c:
    lwz     r19, R13Off_m0x7118(r13)
    li      r20, 0x1
    addi    r3, r19, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80140958
    lwz     r0, 0x50(r19)
    cmpwi   r0, 0x49
    bne-    branch_0x80140948
    mr      r0, r20
    b       branch_0x8014094c

branch_0x80140948:
    li      r0, 0x0
branch_0x8014094c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80140958
    li      r20, 0x0
branch_0x80140958:
    clrlwi. r0, r20, 24
    beq-    branch_0x80140968
    li      r0, 0x1
    b       branch_0x8014096c

branch_0x80140968:
    li      r0, 0x0
branch_0x8014096c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801409a0
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x8014098c
    li      r0, 0x1
    b       branch_0x80140990

branch_0x8014098c:
    li      r0, 0x0
branch_0x80140990:
    clrlwi. r0, r0, 24
    bne-    branch_0x801409a0
    mr      r3, r31
    bl      endCameraDemo__11TGCConsole2Fv
branch_0x801409a0:
    lbz     r0, 0x40(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80140a20
    lbz     r0, 0x3f(r31)
    li      r19, 0x1
    cmplwi  r0, 0x0
    bne-    branch_0x801409d8
    lwz     r3, 0x450(r31)
    lwz     r4, 0x0(r3)
    lbz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801409d8
    bl      update__7TExPaneFv
    and     r19, r19, r3
branch_0x801409d8:
    lwz     r3, 0x42c(r31)
    lwz     r4, 0x0(r3)
    lbz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801409f4
    bl      update__7TExPaneFv
    and     r19, r19, r3
branch_0x801409f4:
    lwz     r3, 0x400(r31)
    lwz     r4, 0x0(r3)
    lbz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80140a10
    bl      update__7TExPaneFv
    and     r19, r19, r3
branch_0x80140a10:
    clrlwi. r0, r19, 24
    beq-    branch_0x80140a20
    li      r0, 0x0
    stb     r0, 0x40(r31)
branch_0x80140a20:
    lbz     r0, 0x41(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80140a94
    lwz     r3, 0x450(r31)
    li      r19, 0x1
    lwz     r4, 0x0(r3)
    lbz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80140a4c
    bl      update__7TExPaneFv
    and     r19, r19, r3
branch_0x80140a4c:
    lwz     r3, 0x42c(r31)
    lwz     r4, 0x0(r3)
    lbz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80140a68
    bl      update__7TExPaneFv
    and     r19, r19, r3
branch_0x80140a68:
    lwz     r3, 0x400(r31)
    lwz     r4, 0x0(r3)
    lbz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80140a84
    bl      update__7TExPaneFv
    and     r19, r19, r3
branch_0x80140a84:
    clrlwi. r0, r19, 24
    beq-    branch_0x80140a94
    li      r0, 0x0
    stb     r0, 0x41(r31)
branch_0x80140a94:
    lbz     r0, 0x39(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80140b54
    lbz     r0, 0xb4(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x80140ac8
    lwz     r0, 0x6c(r31)
    cmpwi   r0, 0x64
    bge-    branch_0x80140ac8
    lwz     r3, 0xdc(r31)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x80140ac8:
    lbz     r0, 0xb4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80140b10
    mr      r3, r31
    bl      startAppearCoin__11TGCConsole2Fv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAppearMario__11TGCConsole2Fb
    lwz     r3, 0xb0(r31)
    lis     r4, unk_524f4f54@h
    addi    r4, r4, unk_524f4f54@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xcc(r3)
    b       branch_0x80140b34

branch_0x80140b10:
    lwz     r3, 0xb0(r31)
    lis     r4, unk_524f4f54@h
    addi    r4, r4, unk_524f4f54@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0xff
    stb     r0, 0xcc(r3)
branch_0x80140b34:
    lbz     r3, 0xb4(r31)
    addi    r0, r3, 0x1
    stb     r0, 0xb4(r31)
    lbz     r0, 0xb4(r31)
    cmplwi  r0, 0xa0
    ble-    branch_0x80140b54
    li      r0, 0x0
    stb     r0, 0x39(r31)
branch_0x80140b54:
    lwz     r0, 0x18(r31)
    li      r28, 0x1
    cmpwi   r0, 0x7
    beq-    branch_0x80140b84
    bge-    branch_0x80140b74
    cmpwi   r0, 0x4
    bge-    branch_0x80140b98
    b       branch_0x80140b84

branch_0x80140b74:
    cmpwi   r0, 0xa
    beq-    branch_0x80140b84
    bge-    branch_0x80140b84
    b       branch_0x80140b98

branch_0x80140b84:
    lwz     r3, R13Off_m0x60d8(r13)
    li      r28, 0x0
    lha     r0, 0x120(r3)
    clrlwi  r30, r0, 24
    b       branch_0x80140bb0

branch_0x80140b98:
    lwz     r3, R13Off_m0x60d8(r13)
    lfs     f0, 0x12c(r3)
    fctiwz  f0, f0
    stfd    f0, 0xf68(sp)
    lwz     r0, 0xf6c(sp)
    clrlwi  r30, r0, 24
branch_0x80140bb0:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x8
    ble-    branch_0x80140bc0
    li      r30, 0x8
branch_0x80140bc0:
    clrlwi. r0, r28, 24
    beq-    branch_0x80140bf8
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x80140bf8
    lwz     r3, 0x1c4(r31)
    lwz     r4, 0x0(r3)
    lbz     r3, 0xcc(r4)
    addi    r3, r3, -0x10
    extsh.  r0, r3
    bge-    branch_0x80140bf4
    li      r3, 0x0
branch_0x80140bf4:
    stb     r3, 0xcc(r4)
branch_0x80140bf8:
    lwz     r3, 0x1c4(r31)
    lwz     r5, 0x0(r3)
    lbz     r4, 0xcc(r5)
    cmplwi  r4, 0xff
    beq-    branch_0x80140c34
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x80140c34
    addi    r3, r4, 0x10
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xff
    ble-    branch_0x80140c30
    li      r3, 0xff
branch_0x80140c30:
    stb     r3, 0xcc(r5)
branch_0x80140c34:
    li      r24, 0x0
    lwz     r3, R13Off_m0x60d8(r13)
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80140c68
    lhz     r3, 0x268(r31)
    cmpwi   r3, 0xf0
    bge-    branch_0x80140c60
    addi    r0, r3, 0x1
    sth     r0, 0x268(r31)
    b       branch_0x80140c6c

branch_0x80140c60:
    li      r24, 0x1
    b       branch_0x80140c6c

branch_0x80140c68:
    sth     r24, 0x268(r31)
branch_0x80140c6c:
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0xa
    bgt-    branch_0x80141344
    lis     r3, unk_803c0328@h
    addi    r3, r3, unk_803c0328@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80140c90:
    lwz     r3, 0x1c4(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80140cac
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x80140cac:
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80140ccc
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startInsertLife__11TGCConsole2Fi
    li      r0, 0x8
    stw     r0, 0x18(r31)
branch_0x80140ccc:
    clrlwi. r0, r24, 24
    beq-    branch_0x80140d3c
    addi    r3, r31, 0x0
    clrlwi  r4, r30, 24
    bl      resetLife__11TGCConsole2Fi
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAppearLife__11TGCConsole2Fi
    lwz     r3, R13Off_m0x60d8(r13)
    lfs     f0, 0x12c(r3)
    fctiwz  f0, f0
    stfd    f0, 0xf68(sp)
    lwz     r0, 0xf6c(sp)
    clrlwi  r30, r0, 24
    stb     r0, 0x1cc(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x80140d28
    lwz     r3, 0x1c4(r31)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
branch_0x80140d28:
    li      r0, 0x0
    sth     r0, 0x84(r31)
    li      r0, 0x4
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80140d3c:
    clrlwi. r0, r28, 24
    bne-    branch_0x80141344
    lbz     r0, 0x1cc(r31)
    cmplwi  r0, 0x8
    bge-    branch_0x80141344
    lwz     r3, 0x1c4(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80141344
    clrlwi. r0, r30, 24
    beq-    branch_0x80141344
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAppearLife__11TGCConsole2Fi
    li      r0, 0x1
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80140d84:
    lhz     r4, 0x84(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0x84(r31)
    bl      processAppearLife__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80140db0
    li      r0, 0x2
    stw     r0, 0x18(r31)
    li      r0, 0x0
    stb     r0, 0x38(r31)
branch_0x80140db0:
    clrlwi. r0, r24, 24
    beq-    branch_0x80141344
    lbz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80140dd0
    lbz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80140dd8
branch_0x80140dd0:
    li      r24, 0x0
    b       branch_0x80140e6c

branch_0x80140dd8:
    li      r24, 0x1
    stb     r24, 0x4c(r31)
    li      r10, 0x0
    addi    r7, sp, 0xb58
    lwz     r4, 0x174(r31)
    addi    r6, sp, 0xb50
    lwz     r3, 0x1c4(r31)
    addi    r5, sp, 0xb48
    lwz     r4, 0x0(r4)
    lwz     r3, 0x10(r3)
    lwz     r8, 0x18(r4)
    lwz     r4, 0x20(r4)
    addi    r0, r3, 0x1
    neg     r0, r0
    subf    r3, r8, r4
    stw     r10, 0xb58(sp)
    subf    r0, r3, r0
    stw     r0, 0xb5c(sp)
    li      r4, 0x28
    lwz     r8, 0x174(r31)
    lwz     r3, 0x1c4(r31)
    lwz     r8, 0x0(r8)
    lwz     r3, 0x10(r3)
    lwz     r9, 0x18(r8)
    lwz     r8, 0x20(r8)
    addi    r0, r3, 0x1
    neg     r3, r0
    subf    r0, r9, r8
    stw     r10, 0xb48(sp)
    subf    r0, r0, r3
    stw     r10, 0xb50(sp)
    srawi   r0, r0, 1
    stw     r0, 0xb54(sp)
    stw     r10, 0xb4c(sp)
    lwz     r3, 0x1c4(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    sth     r24, 0x84(r31)
branch_0x80140e6c:
    clrlwi. r0, r24, 24
    beq-    branch_0x80141344
    li      r0, 0x3
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80140e80:
    lbz     r0, 0x1cc(r31)
    cmplwi  r0, 0x8
    bne-    branch_0x80140f44
    lbz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80140f38
    lbz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80140f38
    li      r0, 0x1
    stb     r0, 0x4c(r31)
    li      r25, 0x0
    addi    r7, sp, 0xb40
    lwz     r4, 0x174(r31)
    addi    r6, sp, 0xb38
    lwz     r3, 0x1c4(r31)
    addi    r5, sp, 0xb30
    lwz     r4, 0x0(r4)
    lwz     r3, 0x10(r3)
    lwz     r8, 0x18(r4)
    lwz     r4, 0x20(r4)
    addi    r0, r3, 0x1
    neg     r0, r0
    subf    r3, r8, r4
    stw     r25, 0xb40(sp)
    subf    r0, r3, r0
    stw     r0, 0xb44(sp)
    li      r4, 0x28
    lwz     r8, 0x174(r31)
    lwz     r3, 0x1c4(r31)
    lwz     r8, 0x0(r8)
    lwz     r3, 0x10(r3)
    lwz     r9, 0x18(r8)
    lwz     r8, 0x20(r8)
    addi    r0, r3, 0x1
    neg     r3, r0
    subf    r0, r9, r8
    stw     r25, 0xb30(sp)
    subf    r0, r0, r3
    stw     r25, 0xb38(sp)
    srawi   r0, r0, 1
    stw     r0, 0xb3c(sp)
    stw     r25, 0xb34(sp)
    lwz     r3, 0x1c4(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    sth     r25, 0x84(r31)
branch_0x80140f38:
    li      r0, 0x3
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80140f44:
    clrlwi. r0, r24, 24
    beq-    branch_0x80141344
    lbz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80140f64
    lbz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80140f6c
branch_0x80140f64:
    li      r24, 0x0
    b       branch_0x80141000

branch_0x80140f6c:
    li      r24, 0x1
    stb     r24, 0x4c(r31)
    li      r10, 0x0
    addi    r7, sp, 0xb28
    lwz     r4, 0x174(r31)
    addi    r6, sp, 0xb20
    lwz     r3, 0x1c4(r31)
    addi    r5, sp, 0xb18
    lwz     r4, 0x0(r4)
    lwz     r3, 0x10(r3)
    lwz     r8, 0x18(r4)
    lwz     r4, 0x20(r4)
    addi    r0, r3, 0x1
    neg     r0, r0
    subf    r3, r8, r4
    stw     r10, 0xb28(sp)
    subf    r0, r3, r0
    stw     r0, 0xb2c(sp)
    li      r4, 0x28
    lwz     r8, 0x174(r31)
    lwz     r3, 0x1c4(r31)
    lwz     r8, 0x0(r8)
    lwz     r3, 0x10(r3)
    lwz     r9, 0x18(r8)
    lwz     r8, 0x20(r8)
    addi    r0, r3, 0x1
    neg     r3, r0
    subf    r0, r9, r8
    stw     r10, 0xb18(sp)
    subf    r0, r0, r3
    stw     r10, 0xb20(sp)
    srawi   r0, r0, 1
    stw     r0, 0xb24(sp)
    stw     r10, 0xb1c(sp)
    lwz     r3, 0x1c4(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    sth     r24, 0x84(r31)
branch_0x80141000:
    clrlwi. r0, r24, 24
    beq-    branch_0x80141344
    li      r0, 0x3
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80141014:
    lhz     r3, 0x84(r31)
    cmplwi  r3, 0x78
    ble-    branch_0x80141040
    lwz     r3, 0x1c4(r31)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80141344
    li      r0, 0x0
    stb     r0, 0x4c(r31)
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80141040:
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x80141344

branch_0x8014104c:
    lhz     r4, 0x84(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0x84(r31)
    bl      processInsertLife__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80141344
    li      r0, 0x2
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80141074:
    lhz     r4, 0x84(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0x84(r31)
    bl      processInsertLife__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80141344
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801410a8
    li      r0, 0x9
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x801410a8:
    li      r0, 0x5
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x801410b4:
    mr      r3, r31
    lhz     r4, 0x84(r31)
    bl      processAppearLife__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x801410d8
    li      r0, 0x5
    stw     r0, 0x18(r31)
    li      r0, 0x0
    stb     r0, 0x38(r31)
branch_0x801410d8:
    lwz     r3, R13Off_m0x60d8(r13)
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801410fc
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801410fc
    li      r0, 0x1
    sth     r0, 0x84(r31)
branch_0x801410fc:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x8
    blt-    branch_0x80141114
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80141344
branch_0x80141114:
    lhz     r3, 0x84(r31)
    cmplwi  r3, 0x3e8
    bge-    branch_0x80141344
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x80141344

branch_0x8014112c:
    lwz     r3, R13Off_m0x60d8(r13)
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80141344
    lbz     r3, 0x1cc(r31)
    cmplwi  r3, 0x8
    bne-    branch_0x80141200
    lbz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801411f4
    lbz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801411f4
    li      r0, 0x1
    stb     r0, 0x4c(r31)
    li      r25, 0x0
    addi    r7, sp, 0xb10
    lwz     r4, 0x174(r31)
    addi    r6, sp, 0xb08
    lwz     r3, 0x1c4(r31)
    addi    r5, sp, 0xb00
    lwz     r4, 0x0(r4)
    lwz     r3, 0x10(r3)
    lwz     r8, 0x18(r4)
    lwz     r4, 0x20(r4)
    addi    r0, r3, 0x1
    neg     r0, r0
    subf    r3, r8, r4
    stw     r25, 0xb10(sp)
    subf    r0, r3, r0
    stw     r0, 0xb14(sp)
    li      r4, 0x28
    lwz     r8, 0x174(r31)
    lwz     r3, 0x1c4(r31)
    lwz     r8, 0x0(r8)
    lwz     r3, 0x10(r3)
    lwz     r9, 0x18(r8)
    lwz     r8, 0x20(r8)
    addi    r0, r3, 0x1
    neg     r3, r0
    subf    r0, r9, r8
    stw     r25, 0xb00(sp)
    subf    r0, r0, r3
    stw     r25, 0xb08(sp)
    srawi   r0, r0, 1
    stw     r0, 0xb0c(sp)
    stw     r25, 0xb04(sp)
    lwz     r3, 0x1c4(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    sth     r25, 0x84(r31)
branch_0x801411f4:
    li      r0, 0x6
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80141200:
    lha     r0, 0x1c(r31)
    cmpw    r3, r0
    beq-    branch_0x80141344
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAppearLife__11TGCConsole2Fi
    lwz     r4, R13Off_m0x60d8(r13)
    mr      r3, r31
    lha     r0, 0x120(r4)
    clrlwi  r30, r0, 24
    stb     r0, 0x1cc(r31)
    mr      r4, r30
    bl      resetLife__11TGCConsole2Fi
    li      r0, 0x1
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80141240:
    lhz     r3, 0x84(r31)
    cmplwi  r3, 0x78
    ble-    branch_0x801412a8
    lwz     r3, 0x1c4(r31)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80141344
    li      r0, 0x0
    stb     r0, 0x4c(r31)
    lwz     r3, R13Off_m0x60d8(r13)
    lha     r3, 0x120(r3)
    cmpwi   r3, 0x8
    bne-    branch_0x8014127c
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x8014127c:
    clrlwi  r30, r3, 24
    stb     r3, 0x1cc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startInsertLife__11TGCConsole2Fi
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      resetLife__11TGCConsole2Fi
    li      r0, 0x7
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x801412a8:
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x80141344

branch_0x801412b4:
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801412dc
    lwz     r3, 0x1c4(r31)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80141344
    li      r0, 0x0
    stb     r0, 0x4c(r31)
    b       branch_0x80141344

branch_0x801412dc:
    lwz     r3, R13Off_m0x60d8(r13)
    lha     r0, 0x120(r3)
    cmpwi   r0, 0x8
    beq-    branch_0x80141304
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startInsertLife__11TGCConsole2Fi
    li      r0, 0x7
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80141304:
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8014131c
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80141334
branch_0x8014131c:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startInsertLife__11TGCConsole2Fi
    li      r0, 0x8
    stw     r0, 0x18(r31)
    b       branch_0x80141344

branch_0x80141334:
    li      r30, 0x8
    stb     r30, 0x1cc(r31)
    li      r0, 0x0
    stw     r0, 0x18(r31)
branch_0x80141344:
    lwz     r0, 0x18(r31)
    cmpwi   r0, 0xa
    bne-    branch_0x80141398
    clrlwi. r0, r30, 24
    bne-    branch_0x80141398
    lwz     r3, 0x1c4(r31)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x274(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x270(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x26c(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x80141398:
    lbz     r4, 0x1cc(r31)
    clrlwi  r3, r30, 24
    cmplw   r3, r4
    beq-    branch_0x80141758
    lwz     r0, 0x18(r31)
    cmpwi   r0, 0xa
    beq-    branch_0x80141758
    cmplw   r4, r3
    bge-    branch_0x80141424
    addi    r0, r4, 0x1
    stb     r0, 0x1cc(r31)
    li      r4, 0x1
    lbz     r0, 0x1cc(r31)
    slwi    r0, r0, 3
    add     r3, r31, r0
    lwz     r3, 0x17c(r3)
    stb     r4, 0xc(r3)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801415f8
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801415f8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4801
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801415f8
    li      r3, 0x4801
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801415f8

branch_0x80141424:
    beq-    branch_0x801415f8
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801414a0
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801414a0
    clrlwi. r0, r28, 24
    beq-    branch_0x80141478
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x480c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801414a0
    li      r3, 0x480c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801414a0

branch_0x80141478:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4823
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801414a0
    li      r3, 0x4823
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801414a0:
    lbz     r0, 0x1cc(r31)
    li      r25, 0x0
    addi    r3, sp, 0xe6c
    slwi    r0, r0, 3
    add     r4, r31, r0
    lwz     r4, 0x17c(r4)
    stb     r25, 0xc(r4)
    lbz     r0, 0x1cc(r31)
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r7, 0x1dc(r4)
    lwz     r6, 0x1d8(r4)
    lwz     r5, 0x1d4(r4)
    lwz     r4, 0x1d0(r4)
    bl      set__7JUTRectFiiii
    lbz     r0, 0x1cc(r31)
    addi    r3, sp, 0xe7c
    lwz     r4, 0xe6c(sp)
    slwi    r5, r0, 3
    lwz     r0, 0xe70(sp)
    add     r5, r31, r5
    lwz     r5, 0x17c(r5)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r4, 0xe74(sp)
    lwz     r0, 0xe78(sp)
    stw     r4, 0x1c(r5)
    stw     r0, 0x20(r5)
    lbz     r0, 0x1cc(r31)
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r7, 0x1dc(r4)
    lwz     r6, 0x1d8(r4)
    lwz     r5, 0x1d4(r4)
    lwz     r4, 0x1d0(r4)
    bl      set__7JUTRectFiiii
    lbz     r0, 0x1cc(r31)
    lwz     r3, 0xe7c(sp)
    slwi    r4, r0, 3
    lwz     r0, 0xe80(sp)
    add     r4, r31, r4
    lwz     r4, 0x180(r4)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0xe84(sp)
    lwz     r0, 0xe88(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    lbz     r3, 0x1cc(r31)
    addi    r0, r3, -0x1
    stb     r0, 0x1cc(r31)
    lbz     r0, 0x1cc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801415f8
    lwz     r4, 0x17c(r31)
    addi    r3, sp, 0xe8c
    stb     r25, 0xc(r4)
    lwz     r7, 0x1dc(r31)
    lwz     r6, 0x1d8(r31)
    lwz     r5, 0x1d4(r31)
    lwz     r4, 0x1d0(r31)
    bl      set__7JUTRectFiiii
    lwz     r5, 0x17c(r31)
    addi    r3, sp, 0xe9c
    lwz     r4, 0xe8c(sp)
    lwz     r0, 0xe90(sp)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r4, 0xe94(sp)
    lwz     r0, 0xe98(sp)
    stw     r4, 0x1c(r5)
    stw     r0, 0x20(r5)
    lwz     r7, 0x1dc(r31)
    lwz     r6, 0x1d8(r31)
    lwz     r5, 0x1d4(r31)
    lwz     r4, 0x1d0(r31)
    bl      set__7JUTRectFiiii
    lwz     r4, 0x180(r31)
    lwz     r3, 0xe9c(sp)
    lwz     r0, 0xea0(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0xea4(sp)
    lwz     r0, 0xea8(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
branch_0x801415f8:
    lbz     r0, 0x1cc(r31)
    sth     r0, 0x1c(r31)
    lbz     r0, 0x1cc(r31)
    cmplwi  r0, 0x4
    blt-    branch_0x801416b4
    clrlwi. r0, r28, 24
    beq-    branch_0x80141664
    addi    r3, sp, 0xeb0
    li      r4, 0x0
    li      r5, 0xff
    li      r6, 0xff
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r5, 0x178(r31)
    addi    r3, sp, 0xeb8
    lwz     r0, 0xeb0(sp)
    li      r4, 0x0
    lwz     r6, 0x0(r5)
    li      r5, 0xff
    stw     r0, 0x13c(r6)
    li      r6, 0xff
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r3, 0x17c(r31)
    lwz     r0, 0xeb8(sp)
    stw     r0, 0x13c(r3)
    b       branch_0x80141758

branch_0x80141664:
    addi    r3, sp, 0xec0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r5, 0x178(r31)
    addi    r3, sp, 0xec8
    lwz     r0, 0xec0(sp)
    li      r4, 0xff
    lwz     r6, 0x0(r5)
    li      r5, 0xff
    stw     r0, 0x13c(r6)
    li      r6, 0xff
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r3, 0x17c(r31)
    lwz     r0, 0xec8(sp)
    stw     r0, 0x13c(r3)
    b       branch_0x80141758

branch_0x801416b4:
    clrlwi. r0, r28, 24
    beq-    branch_0x8014170c
    addi    r3, sp, 0xed0
    li      r4, 0x0
    li      r5, 0xa0
    li      r6, 0xff
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r5, 0x178(r31)
    addi    r3, sp, 0xed8
    lwz     r0, 0xed0(sp)
    li      r4, 0x0
    lwz     r6, 0x0(r5)
    li      r5, 0x80
    stw     r0, 0x13c(r6)
    li      r6, 0x80
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r3, 0x17c(r31)
    lwz     r0, 0xed8(sp)
    stw     r0, 0x13c(r3)
    b       branch_0x80141758

branch_0x8014170c:
    addi    r3, sp, 0xee0
    li      r4, 0x80
    li      r5, 0x80
    li      r6, 0x80
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r5, 0x178(r31)
    addi    r3, sp, 0xee8
    lwz     r0, 0xee0(sp)
    li      r4, 0x80
    lwz     r6, 0x0(r5)
    li      r5, 0x80
    stw     r0, 0x13c(r6)
    li      r6, 0x80
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r3, 0x17c(r31)
    lwz     r0, 0xee8(sp)
    stw     r0, 0x13c(r3)
branch_0x80141758:
    lis     r4, unk_00040002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00040002@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x3e7
    ble-    branch_0x80141778
    li      r3, 0x3e7
    b       branch_0x80141784

branch_0x80141778:
    cmpwi   r3, 0x0
    bge-    branch_0x80141784
    li      r3, 0x0
branch_0x80141784:
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    beq-    branch_0x801417a8
    lbz     r0, 0x68(r31)
    extsb.  r0, r0
    bne-    branch_0x801417a4
    li      r0, 0x1
    stb     r0, 0x68(r31)
branch_0x801417a4:
    stw     r3, 0x20(r31)
branch_0x801417a8:
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x201
    bne-    branch_0x8014189c
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x8014189c
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014189c
    lwz     r4, 0x140(r31)
    li      r3, 0x0
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x14(r4)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801417f8
    lfs     f0, -0x4c70(r2)
    b       branch_0x801417fc

branch_0x801417f8:
    lfs     f0, -0x4c6c(r2)
branch_0x801417fc:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xf68(sp)
    lwz     r0, 0xf6c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014184c
    lfs     f1, 0x18(r4)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014182c
    lfs     f0, -0x4c70(r2)
    b       branch_0x80141830

branch_0x8014182c:
    lfs     f0, -0x4c6c(r2)
branch_0x80141830:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xf68(sp)
    lwz     r0, 0xf6c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014184c
    li      r3, 0x1
branch_0x8014184c:
    clrlwi. r0, r3, 24
    bne-    branch_0x80141ae8
    lwz     r3, 0x30(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x30(r31)
    lwz     r0, 0x30(r31)
    cmpwi   r0, 0xc8
    ble-    branch_0x80141ae8
    mr      r3, r31
    bl      startAppearStar__11TGCConsole2Fv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAppearMario__11TGCConsole2Fb
    lis     r3, unk_0000ffff@ha
    addi    r0, r3, unk_0000ffff@l
    sth     r0, 0x70(r31)
    li      r0, 0x0
    stb     r0, 0x59(r31)
    stw     r0, 0x30(r31)
    b       branch_0x80141ae8

branch_0x8014189c:
    li      r3, 0x0
    stw     r3, 0x30(r31)
    lbz     r0, 0x34(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80141ae8
    lwz     r23, 0x140(r31)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x14(r23)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801418cc
    lfs     f0, -0x4c70(r2)
    b       branch_0x801418d0

branch_0x801418cc:
    lfs     f0, -0x4c6c(r2)
branch_0x801418d0:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xf68(sp)
    lwz     r0, 0xf6c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80141920
    lfs     f1, 0x18(r23)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80141900
    lfs     f0, -0x4c70(r2)
    b       branch_0x80141904

branch_0x80141900:
    lfs     f0, -0x4c6c(r2)
branch_0x80141904:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xf68(sp)
    lwz     r0, 0xf6c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80141920
    li      r3, 0x1
branch_0x80141920:
    clrlwi. r0, r3, 24
    beq-    branch_0x80141ae8
    lbz     r0, 0x60(r31)
    extsb.  r0, r0
    bne-    branch_0x80141ae8
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x80141ae8
    cmplwi  r0, 0xb
    beq-    branch_0x80141ae8
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80141ae8
    lhz     r0, 0x16c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80141ae8
    lhz     r0, 0x8a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80141ae8
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x80141ae8
    lwz     r4, 0x10(r23)
    addi    r3, r23, 0x14
    lha     r0, 0x26a(r31)
    addi    r4, r4, 0x1
    lfs     f1, 0x18(r23)
    subf    r19, r4, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r23)
    addi    r20, r3, 0x0
    addi    r3, r23, 0x14
    bl      roundf_i___8TCoord2DCFf
    addi    r7, r3, 0x0
    addi    r3, r23, 0x0
    addi    r6, r19, 0x0
    addi    r8, r20, 0x0
    li      r4, 0x28
    li      r5, 0x0
    bl      setPaneOffset__7TExPaneFlllll
    lwz     r21, 0x160(r31)
    lwz     r4, 0x10(r21)
    addi    r3, r21, 0x14
    lfs     f1, 0x18(r21)
    addi    r0, r4, 0x1
    neg     r19, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r21)
    addi    r20, r3, 0x0
    addi    r3, r21, 0x14
    bl      roundf_i___8TCoord2DCFf
    addi    r7, r3, 0x0
    addi    r3, r21, 0x0
    addi    r6, r19, 0x0
    addi    r8, r20, 0x0
    li      r4, 0x28
    li      r5, 0x0
    bl      setPaneOffset__7TExPaneFlllll
    lwz     r19, 0x108(r31)
    lha     r20, 0x26a(r31)
    lfs     f1, 0x18(r19)
    addi    r3, r19, 0x14
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r19)
    addi    r21, r3, 0x0
    addi    r3, r19, 0x14
    bl      roundf_i___8TCoord2DCFf
    addi    r7, r3, 0x0
    addi    r3, r19, 0x0
    addi    r6, r20, 0x0
    addi    r8, r21, 0x0
    li      r4, 0x28
    li      r5, 0x0
    bl      setPaneOffset__7TExPaneFlllll
    lwz     r3, 0x144(r31)
    li      r19, 0x1
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x164(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    stb     r19, 0x35(r31)
    stb     r19, 0x5a(r31)
    lwz     r22, 0x3a8(r31)
    lwz     r3, 0x0(r22)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80141ae0
    lbz     r0, 0x3b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80141ae0
    lwz     r4, 0x10(r22)
    addi    r3, r22, 0x14
    lfs     f1, 0x18(r22)
    addi    r0, r4, 0x1
    neg     r20, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r22)
    addi    r21, r3, 0x0
    addi    r3, r22, 0x14
    bl      roundf_i___8TCoord2DCFf
    addi    r7, r3, 0x0
    addi    r3, r22, 0x0
    addi    r6, r20, 0x0
    addi    r8, r21, 0x0
    li      r4, 0x32
    li      r5, 0x0
    bl      setPaneOffset__7TExPaneFlllll
    stb     r19, 0x3b(r31)
branch_0x80141ae0:
    li      r0, 0x0
    stb     r0, 0x5a(r31)
branch_0x80141ae8:
    lbz     r0, 0x35(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80141d58
    li      r24, 0x1
    lwz     r3, 0x108(r31)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    lwz     r3, 0x140(r31)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    lwz     r3, 0x160(r31)
    bl      update__7TExPaneFv
    lwz     r4, 0xcc(r31)
    and     r24, r24, r3
    addi    r3, sp, 0xe0c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0xe0c(sp)
    lis     r0, 0x4330
    lwz     r3, 0xe14(sp)
    lwz     r7, 0xe10(sp)
    subf    r4, r6, r3
    lwz     r3, 0xe18(sp)
    xoris   r5, r4, 0x8000
    lfd     f5, -0x4c38(r2)
    stw     r5, 0xf6c(sp)
    xoris   r4, r6, 0x8000
    subf    r3, r7, r3
    lfs     f6, -0x4c70(r2)
    stw     r4, 0xf64(sp)
    xoris   r4, r3, 0x8000
    lwz     r5, 0x124(r31)
    stw     r0, 0xf68(sp)
    xoris   r3, r7, 0x8000
    stw     r0, 0xf60(sp)
    lfd     f1, 0xf68(sp)
    lfd     f0, 0xf60(sp)
    stw     r4, 0xf5c(sp)
    fsubs   f1, f1, f5
    fsubs   f0, f0, f5
    stw     r3, 0xf54(sp)
    fmadds  f2, f6, f1, f0
    stw     r0, 0xf58(sp)
    stw     r0, 0xf50(sp)
    lfd     f1, 0xf58(sp)
    lfd     f0, 0xf50(sp)
    fsubs   f1, f1, f5
    stfs    f2, 0x160(r5)
    fsubs   f0, f0, f5
    fmadds  f0, f6, f1, f0
    stfs    f0, 0x164(r5)
    lfs     f4, -0x4c74(r2)
    stfs    f4, 0x168(r5)
    lwz     r3, 0x14c(r31)
    lwz     r5, 0x0(r3)
    lwz     r4, 0x24(r5)
    lwz     r3, 0x28(r5)
    stw     r4, 0xe0c(sp)
    stw     r3, 0xe10(sp)
    lwz     r4, 0x2c(r5)
    lwz     r3, 0x30(r5)
    stw     r4, 0xe14(sp)
    stw     r3, 0xe18(sp)
    lwz     r4, 0xe0c(sp)
    lwz     r3, 0xe14(sp)
    xoris   r5, r4, 0x8000
    lwz     r7, 0xe10(sp)
    subf    r4, r4, r3
    stw     r5, 0xf44(sp)
    xoris   r4, r4, 0x8000
    lwz     r3, 0xe18(sp)
    stw     r4, 0xf4c(sp)
    subf    r3, r7, r3
    lwz     r6, 0x164(r31)
    xoris   r4, r3, 0x8000
    stw     r0, 0xf48(sp)
    xoris   r3, r7, 0x8000
    stw     r0, 0xf40(sp)
    lfd     f1, 0xf48(sp)
    lfd     f0, 0xf40(sp)
    stw     r4, 0xf3c(sp)
    fsubs   f1, f1, f5
    fsubs   f0, f0, f5
    stw     r3, 0xf34(sp)
    fmadds  f2, f6, f1, f0
    stw     r0, 0xf38(sp)
    stw     r0, 0xf30(sp)
    lfd     f1, 0xf38(sp)
    lfd     f0, 0xf30(sp)
    fsubs   f1, f1, f5
    stfs    f2, 0x160(r6)
    fsubs   f0, f0, f5
    fmadds  f0, f6, f1, f0
    stfs    f0, 0x164(r6)
    stfs    f4, 0x168(r6)
    lwz     r3, 0x12c(r31)
    lwz     r5, 0x0(r3)
    lwz     r4, 0x24(r5)
    lwz     r3, 0x28(r5)
    stw     r4, 0xe0c(sp)
    stw     r3, 0xe10(sp)
    lwz     r4, 0x2c(r5)
    lwz     r3, 0x30(r5)
    stw     r4, 0xe14(sp)
    stw     r3, 0xe18(sp)
    lwz     r8, 0xe0c(sp)
    clrlwi. r3, r24, 24
    lwz     r4, 0xe14(sp)
    lwz     r7, 0xe10(sp)
    subf    r3, r8, r4
    lwz     r5, 0xe18(sp)
    xoris   r4, r3, 0x8000
    lwz     r6, 0x144(r31)
    stw     r4, 0xf1c(sp)
    xoris   r3, r8, 0x8000
    subf    r4, r7, r5
    stw     r3, 0xf14(sp)
    xoris   r4, r4, 0x8000
    xoris   r3, r7, 0x8000
    stw     r4, 0xf2c(sp)
    stw     r3, 0xf24(sp)
    stw     r0, 0xf18(sp)
    stw     r0, 0xf10(sp)
    lfd     f1, 0xf18(sp)
    stw     r0, 0xf28(sp)
    lfd     f0, 0xf10(sp)
    fsubs   f1, f1, f5
    stw     r0, 0xf20(sp)
    fsubs   f0, f0, f5
    lfd     f3, 0xf28(sp)
    lfd     f2, 0xf20(sp)
    fsubs   f3, f3, f5
    fmadds  f0, f6, f1, f0
    fsubs   f2, f2, f5
    stfs    f0, 0x160(r6)
    fmadds  f1, f6, f3, f2
    stfs    f1, 0x164(r6)
    stfs    f4, 0x168(r6)
    beq-    branch_0x80141d58
    lwz     r3, 0x140(r31)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x160(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x144(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x164(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    stb     r4, 0x35(r31)
branch_0x80141d58:
    mr      r3, r31
    bl      countBlueCoin__11TGCConsole2Fv
    mr      r3, r31
    bl      countShine__11TGCConsole2Fv
    lbz     r0, 0x34(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80141dd0
    lwz     r4, 0x5c(r31)
    addi    r3, r31, 0x0
    li      r19, 0x1
    bl      processAppearStar__11TGCConsole2Fi
    lwz     r4, 0x5c(r31)
    and     r19, r19, r3
    addi    r3, r31, 0x0
    bl      processDownCoin__11TGCConsole2Fi
    and     r19, r19, r3
    clrlwi. r0, r19, 24
    beq-    branch_0x80141dc4
    lwz     r3, R13Off_m0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    lwz     r0, 0x24(r31)
    cmpw    r0, r3
    beq-    branch_0x80141dbc
    stw     r3, 0x24(r31)
branch_0x80141dbc:
    li      r0, 0x0
    stb     r0, 0x34(r31)
branch_0x80141dc4:
    lwz     r3, 0x5c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x5c(r31)
branch_0x80141dd0:
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r19, 0x3e4(r3)
    lwz     r24, 0x1c80(r19)
    mr      r3, r19
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r6, 0x2f8(r31)
    li      r5, 0x0
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x14(r6)
    lwz     r25, 0xcc(r3)
    fcmpo   cr0, f1, f0
    lbz     r4, 0x1c84(r19)
    ble-    branch_0x80141e0c
    lfs     f0, -0x4c70(r2)
    b       branch_0x80141e10

branch_0x80141e0c:
    lfs     f0, -0x4c6c(r2)
branch_0x80141e10:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xf10(sp)
    lwz     r0, 0xf14(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80141e60
    lfs     f1, 0x18(r6)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80141e40
    lfs     f0, -0x4c70(r2)
    b       branch_0x80141e44

branch_0x80141e40:
    lfs     f0, -0x4c6c(r2)
branch_0x80141e44:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xf10(sp)
    lwz     r0, 0xf14(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80141e60
    li      r5, 0x1
branch_0x80141e60:
    clrlwi. r0, r5, 24
    beq-    branch_0x80141f3c
    lbz     r0, 0x45(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80141f3c
    lwz     r0, 0x310(r31)
    cmpw    r4, r0
    beq-    branch_0x80141f3c
    lwz     r3, 0x274(r31)
    li      r0, 0x0
    cmpwi   r4, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x288(r31)
    stb     r0, 0xc(r3)
    bne-    branch_0x80141eb4
    lwz     r0, 0x278(r31)
    stw     r0, 0x274(r31)
    lwz     r0, 0x28c(r31)
    stw     r0, 0x288(r31)
    b       branch_0x80141f20

branch_0x80141eb4:
    cmpwi   r4, 0x1
    bne-    branch_0x80141ed0
    lwz     r0, 0x280(r31)
    stw     r0, 0x274(r31)
    lwz     r0, 0x294(r31)
    stw     r0, 0x288(r31)
    b       branch_0x80141f20

branch_0x80141ed0:
    cmpwi   r4, 0x4
    bne-    branch_0x80141eec
    lwz     r0, 0x27c(r31)
    stw     r0, 0x274(r31)
    lwz     r0, 0x290(r31)
    stw     r0, 0x288(r31)
    b       branch_0x80141f20

branch_0x80141eec:
    cmpwi   r4, 0x5
    bne-    branch_0x80141f08
    lwz     r0, 0x284(r31)
    stw     r0, 0x274(r31)
    lwz     r0, 0x298(r31)
    stw     r0, 0x288(r31)
    b       branch_0x80141f20

branch_0x80141f08:
    cmpwi   r4, 0x2
    bne-    branch_0x80141f20
    lwz     r0, 0x27c(r31)
    stw     r0, 0x274(r31)
    lwz     r0, 0x290(r31)
    stw     r0, 0x288(r31)
branch_0x80141f20:
    stw     r4, 0x310(r31)
    li      r0, 0x1
    lwz     r3, 0x274(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x288(r31)
    stb     r0, 0xc(r3)
branch_0x80141f3c:
    lwz     r0, 0x28(r31)
    cmpw    r0, r24
    beq-    branch_0x80141f78
    cmpw    r24, r25
    bne-    branch_0x80141f78
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4807
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80141f78
    li      r3, 0x4807
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80141f78:
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r5, 0x3f0(r3)
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x8
    bne-    branch_0x80141f94
    li      r0, 0x1
    b       branch_0x80141f98

branch_0x80141f94:
    li      r0, 0x0
branch_0x80141f98:
    cmpwi   r0, 0x0
    beq-    branch_0x80141fe4
    lwz     r4, 0xc(r5)
    lis     r3, 0x4330
    lwz     r0, 0x8(r5)
    xoris   r4, r4, 0x8000
    lfd     f2, -0x4c38(r2)
    xoris   r0, r0, 0x8000
    stw     r4, 0xf14(sp)
    stw     r0, 0xf1c(sp)
    stw     r3, 0xf10(sp)
    stw     r3, 0xf18(sp)
    lfd     f1, 0xf10(sp)
    lfd     f0, 0xf18(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x2b8(r31)
    b       branch_0x8014201c

branch_0x80141fe4:
    xoris   r3, r24, 0x8000
    lfd     f2, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    stw     r3, 0xf14(sp)
    lis     r3, 0x4330
    stw     r0, 0xf1c(sp)
    stw     r3, 0xf10(sp)
    stw     r3, 0xf18(sp)
    lfd     f1, 0xf10(sp)
    lfd     f0, 0xf18(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x2b8(r31)
branch_0x8014201c:
    lfs     f1, 0x2b8(r31)
    lfs     f0, -0x4c68(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80142040
    lwz     r3, 0x2a0(r31)
    li      r0, 0xff
    stb     r0, 0xcc(r3)
    b       branch_0x80142068

branch_0x80142040:
    lfs     f0, -0x4c74(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8014205c
    lwz     r3, 0x2a0(r31)
    li      r0, 0x0
    stb     r0, 0xcc(r3)
    b       branch_0x80142068

branch_0x8014205c:
    lwz     r3, 0x2a0(r31)
    li      r0, 0x50
    stb     r0, 0xcc(r3)
branch_0x80142068:
    stw     r24, 0x28(r31)
    lbz     r0, 0x46(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801420bc
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80142090
    li      r0, 0x1
    b       branch_0x80142094

branch_0x80142090:
    li      r0, 0x0
branch_0x80142094:
    clrlwi. r0, r0, 24
    beq-    branch_0x801420bc
    lbz     r0, 0x45(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801420bc
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801420bc
    mr      r3, r31
    bl      startAppearTank__11TGCConsole2Fv
branch_0x801420bc:
    lbz     r0, 0x45(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801420f8
    lha     r4, 0x7c(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0x7c(r31)
    bl      processAppearTank__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x801420f8
    li      r3, 0x0
    stb     r3, 0x45(r31)
    li      r0, 0x1
    stb     r0, 0x46(r31)
    sth     r3, 0x7c(r31)
branch_0x801420f8:
    lbz     r0, 0x46(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142164
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x8014211c
    li      r0, 0x0
    sth     r0, 0x7c(r31)
branch_0x8014211c:
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x46
    bge-    branch_0x80142138
    lwz     r3, 0x288(r31)
    li      r0, 0x0
    stb     r0, 0xcc(r3)
    b       branch_0x80142158

branch_0x80142138:
    cmpwi   r0, 0x10e
    bge-    branch_0x80142150
    lwz     r3, 0x288(r31)
    li      r0, 0xff
    stb     r0, 0xcc(r3)
    b       branch_0x80142158

branch_0x80142150:
    li      r0, 0x0
    sth     r0, 0x7c(r31)
branch_0x80142158:
    lha     r3, 0x7c(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x7c(r31)
branch_0x80142164:
    lbz     r0, 0x4b(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801421b8
    li      r19, 0x1
    lwz     r3, 0x2f8(r31)
    bl      update__7TExPaneFv
    and     r19, r19, r3
    lwz     r3, 0x274(r31)
    bl      update__10TBoundPaneFv
    and     r19, r19, r3
    lwz     r3, 0x270(r31)
    bl      update__10TBoundPaneFv
    and     r19, r19, r3
    lwz     r3, 0x26c(r31)
    bl      update__10TBoundPaneFv
    and     r19, r19, r3
    clrlwi. r0, r19, 24
    beq-    branch_0x801421b8
    li      r0, 0x0
    stb     r0, 0x4b(r31)
    stb     r0, 0x46(r31)
branch_0x801421b8:
    lwz     r3, 0x1c4(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80142454
    clrlwi  r0, r30, 24
    lfs     f31, -0x4c64(r2)
    cmplwi  r0, 0x3
    bne-    branch_0x801421e0
    lfs     f31, -0x4c60(r2)
branch_0x801421e0:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x2
    bne-    branch_0x801421f0
    lfs     f31, -0x4c5c(r2)
branch_0x801421f0:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80142200
    lfs     f31, -0x4c58(r2)
branch_0x80142200:
    lhz     r3, 0x86(r31)
    lis     r0, 0x4330
    lfs     f0, -0x4c54(r2)
    stw     r3, 0xf14(sp)
    lfd     f1, -0x4c30(r2)
    fmuls   f2, f0, f31
    stw     r0, 0xf10(sp)
    lfd     f0, 0xf10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f0, f2
    bge-    branch_0x80142428
    lbz     r0, 0x1cc(r31)
    cmplwi  r0, 0x3
    bgt-    branch_0x801422a0
    cmplwi  r0, 0x0
    beq-    branch_0x801422a0
    lfs     f0, -0x4c50(r2)
    fmuls   f0, f0, f31
    fctiwz  f0, f0
    stfd    f0, 0xf10(sp)
    lwz     r0, 0xf14(sp)
    cmpw    r3, r0
    bne-    branch_0x801422a0
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801422a0
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801422a0
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4800
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801422a0
    li      r3, 0x4800
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801422a0:
    lhz     r3, 0x86(r31)
    lis     r0, 0x4330
    lfd     f2, -0x4c30(r2)
    stw     r3, 0xf14(sp)
    lfs     f0, -0x4c74(r2)
    stw     r0, 0xf10(sp)
    lfd     f1, 0xf10(sp)
    fsubs   f1, f1, f2
    fsubs   f1, f1, f31
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801422d4
    b       branch_0x801422d8

branch_0x801422d4:
    fneg    f1, f1
branch_0x801422d8:
    fdivs   f3, f1, f31
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    lfs     f2, -0x4c4c(r2)
    bgt-    branch_0x801422f0
    lfs     f2, -0x4c48(r2)
branch_0x801422f0:
    lfs     f0, -0x4c70(r2)
    li      r24, 0x0
    lis     r0, 0x4330
    lfd     f1, -0x4c38(r2)
    fadds   f0, f0, f3
    addi    r25, r24, 0x0
    li      r26, 0x0
    fctiwz  f0, f0
    stfd    f0, 0xf10(sp)
    lwz     r3, 0xf14(sp)
    xoris   r3, r3, 0x8000
    stw     r3, 0xf1c(sp)
    stw     r0, 0xf18(sp)
    lfd     f0, 0xf18(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xf20(sp)
    lwz     r0, 0xf24(sp)
    clrlwi  r23, r0, 24
branch_0x80142340:
    add     r30, r31, r25
    addi    r22, r30, 0x17c
    lwz     r3, 0x17c(r30)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80142404
    add     r3, r31, r26
    addi    r28, r3, 0x1d0
    lwz     r5, 0x1dc(r3)
    lwz     r4, 0x1d8(r3)
    addi    r21, r3, 0x1dc
    addi    r20, r3, 0x1d8
    lwz     r0, 0x0(r28)
    addi    r19, r3, 0x1d4
    add     r6, r4, r23
    lwz     r3, 0x1d4(r3)
    add     r7, r5, r23
    subf    r5, r23, r3
    subf    r4, r23, r0
    addi    r3, sp, 0xeec
    bl      set__7JUTRectFiiii
    lwz     r5, 0x0(r22)
    addi    r3, sp, 0xefc
    lwz     r4, 0xeec(sp)
    lwz     r0, 0xef0(sp)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r4, 0xef4(sp)
    lwz     r0, 0xef8(sp)
    stw     r4, 0x1c(r5)
    stw     r0, 0x20(r5)
    lwz     r0, 0x0(r21)
    lwz     r5, 0x0(r20)
    add     r7, r0, r23
    lwz     r4, 0x0(r19)
    add     r6, r5, r23
    lwz     r0, 0x0(r28)
    subf    r5, r23, r4
    subf    r4, r23, r0
    bl      set__7JUTRectFiiii
    lwz     r4, 0x180(r30)
    lwz     r3, 0xefc(sp)
    lwz     r0, 0xf00(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0xf04(sp)
    lwz     r0, 0xf08(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
branch_0x80142404:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x9
    addi    r26, r26, 0x10
    addi    r25, r25, 0x8
    blt+    branch_0x80142340
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    b       branch_0x80142454

branch_0x80142428:
    stw     r3, 0xf14(sp)
    stw     r0, 0xf10(sp)
    lfd     f0, 0xf10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f0, f2
    bge-    branch_0x8014244c
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    b       branch_0x80142454

branch_0x8014244c:
    li      r0, 0x0
    sth     r0, 0x86(r31)
branch_0x80142454:
    lbz     r0, 0x4f(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142488
    lbz     r4, 0x88(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stb     r0, 0x88(r31)
    extsb   r4, r4
    bl      processAppearCoin__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80142488
    li      r0, 0x0
    stb     r0, 0x4f(r31)
branch_0x80142488:
    lbz     r0, 0x4d(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801424c8
    lwz     r3, 0x108(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801424c8
    lwz     r3, 0x140(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801424c8
    lwz     r3, 0x108(r31)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    stb     r0, 0x4d(r31)
branch_0x801424c8:
    lbz     r0, 0x45(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801424dc
    mr      r3, r31
    bl      processMoveNozzle__11TGCConsole2Fv
branch_0x801424dc:
    lbz     r0, 0x3a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142600
    lhz     r4, 0x70(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0x70(r31)
    bl      processAppearMario__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80142600
    lbz     r0, 0x3b0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801425f4
    lhz     r0, 0x70(r31)
    cmplwi  r0, 0xc8
    bne-    branch_0x80142600
    lis     r4, unk_00020001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00020001@l
    bl      getFlag__12TFlagManagerCFUl
    addi    r25, r3, 0x0
    cmpwi   r25, 0x63
    ble-    branch_0x8014253c
    li      r25, 0x63
branch_0x8014253c:
    xoris   r0, r25, 0x8000
    lwz     r3, 0x39c(r31)
    stw     r0, 0xf14(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0xf10(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0xf10(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xf18(sp)
    lwz     r0, 0xf1c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x3a0(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r25
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r25
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_00030002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r5, r4, unk_00030002@l
    li      r4, 0x0
    bl      setBool__12TFlagManagerFbUl
    mr      r3, r31
    bl      endCameraDemo__11TGCConsole2Fv
    li      r0, 0x0
    stb     r0, 0x3a(r31)
    b       branch_0x80142600

branch_0x801425f4:
    li      r0, 0x0
    stb     r0, 0x3b0(r31)
    sth     r0, 0x70(r31)
branch_0x80142600:
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801426bc
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x201
    beq-    branch_0x801426bc
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x801426bc
    lhz     r3, 0x3ae(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x3ae(r31)
    lhz     r0, 0x3ae(r31)
    cmplwi  r0, 0x190
    ble-    branch_0x801426bc
    lwz     r21, 0x3a8(r31)
    lwz     r3, 0x0(r21)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801426bc
    lbz     r0, 0x3b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801426bc
    lwz     r4, 0x10(r21)
    addi    r3, r21, 0x14
    lfs     f1, 0x18(r21)
    addi    r0, r4, 0x1
    neg     r19, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r21)
    addi    r20, r3, 0x0
    addi    r3, r21, 0x14
    bl      roundf_i___8TCoord2DCFf
    addi    r7, r3, 0x0
    addi    r3, r21, 0x0
    addi    r6, r19, 0x0
    addi    r8, r20, 0x0
    li      r4, 0x32
    li      r5, 0x0
    bl      setPaneOffset__7TExPaneFlllll
    li      r0, 0x1
    stb     r0, 0x3b(r31)
branch_0x801426bc:
    lis     r4, unk_00020001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00020001@l
    bl      getFlag__12TFlagManagerCFUl
    lbz     r0, 0x3ac(r31)
    addi    r25, r3, 0x0
    cmpw    r25, r0
    ble-    branch_0x80142788
    cmpwi   r25, 0x63
    ble-    branch_0x801426e8
    li      r25, 0x63
branch_0x801426e8:
    xoris   r0, r25, 0x8000
    stb     r25, 0x3ac(r31)
    li      r5, 0x0
    stw     r0, 0xf14(sp)
    lis     r0, 0x4330
    lwz     r3, 0x39c(r31)
    stw     r0, 0xf10(sp)
    lfd     f1, -0x4c38(r2)
    lfd     f0, 0xf10(sp)
    lfs     f2, -0x4c44(r2)
    fsubs   f0, f0, f1
    lwz     r3, 0x0(r3)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xf18(sp)
    lwz     r0, 0xf1c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x3a0(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r25
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r25
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAppearMario__11TGCConsole2Fb
branch_0x80142788:
    lbz     r0, 0x3b(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801427b8
    lwz     r3, 0x3a8(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801427b8
    li      r0, 0x0
    stb     r0, 0x3b(r31)
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x801427b8:
    lbz     r0, 0x42(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801427ec
    lwz     r3, 0x524(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8014281c
    li      r3, 0x0
    stb     r3, 0x42(r31)
    li      r0, 0x1
    stb     r0, 0x44(r31)
    stw     r3, 0x80(r31)
    b       branch_0x8014281c

branch_0x801427ec:
    lbz     r0, 0x43(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8014281c
    lwz     r3, 0x524(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8014281c
    li      r0, 0x0
    stb     r0, 0x43(r31)
    lwz     r3, 0x524(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x8014281c:
    lbz     r0, 0x44(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8014293c
    lwz     r3, 0x524(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014293c
    lwz     r4, 0x80(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x80(r31)
    bl      processDrawTelop__11TGCConsole2FUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8014293c
    lwz     r4, 0x528(r31)
    addi    r3, sp, 0xe3c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x550(r31)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r3, r31, 0x538
    xoris   r4, r4, 0x8000
    stw     r4, 0xf14(sp)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0xf10(sp)
    lfd     f0, 0xf10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x56c(r31)
    lwz     r4, 0x558(r31)
    lwz     r0, 0xe44(sp)
    add     r4, r4, r0
    bl      add__7JUTRectFii
    lbz     r0, 0x571(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801428c0
    li      r0, 0x0
    stb     r0, 0x571(r31)
    b       branch_0x8014293c

branch_0x801428c0:
    li      r0, 0x0
    stb     r0, 0x44(r31)
    stw     r0, 0x560(r31)
    lbz     r0, 0x43(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014293c
    lwz     r3, 0x524(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014293c
    li      r0, 0x1
    stb     r0, 0x43(r31)
    stb     r0, 0x5a(r31)
    lwz     r21, 0x524(r31)
    lwz     r0, 0x8(r21)
    addi    r3, r21, 0x14
    lfs     f1, 0x18(r21)
    subfic  r19, r0, 0x1d1
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r21)
    addi    r20, r3, 0x0
    addi    r3, r21, 0x14
    bl      roundf_i___8TCoord2DCFf
    addi    r7, r3, 0x0
    addi    r3, r21, 0x0
    addi    r6, r19, 0x0
    addi    r8, r20, 0x0
    li      r4, 0x50
    li      r5, 0x0
    bl      setPaneOffset__7TExPaneFlllll
branch_0x8014293c:
    lbz     r5, 0x570(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80142950
    lha     r4, 0x566(r31)
    b       branch_0x80142954

branch_0x80142950:
    lha     r4, 0x564(r31)
branch_0x80142954:
    lbz     r0, 0x44(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80142a10
    lbz     r0, 0x42(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80142a10
    lbz     r0, 0x43(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80142a10
    lwz     r3, 0x534(r31)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80142a10
    extsh   r0, r4
    lwz     r3, 0x560(r31)
    mulli   r0, r0, 0x78
    cmplw   r3, r0
    blt-    branch_0x80142a10
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x201
    bne-    branch_0x80142a10
    cmplwi  r5, 0x0
    beq-    branch_0x801429c0
    li      r0, 0x0
    stb     r0, 0x570(r31)
branch_0x801429c0:
    lwz     r0, 0x574(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801429fc
    lbz     r3, 0x55c(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x55c(r31)
    lbz     r0, 0x55c(r31)
    lwz     r3, 0x574(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x801429fc
    li      r0, 0x0
    stb     r0, 0x55c(r31)
branch_0x801429fc:
    mr      r3, r31
    bl      checkChangeTelopArray__11TGCConsole2Fv
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAppearTelop__11TGCConsole2Fb
branch_0x80142a10:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x80142a44
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80142a44
    lwz     r3, 0x560(r31)
    li      r0, -0x1
    cmplw   r3, r0
    bge-    branch_0x80142a44
    addi    r0, r3, 0x1
    stw     r0, 0x560(r31)
branch_0x80142a44:
    lbz     r0, 0x3d(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142a78
    lbz     r4, 0x72(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stb     r0, 0x72(r31)
    extsb   r4, r4
    bl      processAppearJet__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80142a78
    li      r0, 0x0
    stb     r0, 0x3d(r31)
branch_0x80142a78:
    lwz     r3, R13Off_m0x6060(r13)
    lis     r4, 0x6
    bl      getFlag__12TFlagManagerCFUl
    lwz     r0, 0x448(r31)
    addi    r25, r3, 0x0
    cmpw    r25, r0
    beq-    branch_0x80142ba4
    cmpwi   r25, 0x0
    bge-    branch_0x80142aa0
    li      r25, 0x0
branch_0x80142aa0:
    cmpwi   r25, 0x8
    ble-    branch_0x80142aac
    li      r25, 0x8
branch_0x80142aac:
    slwi    r0, r25, 2
    lwz     r3, 0x440(r31)
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r3, 0x0(r3)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x42c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80142ae8
    mr      r3, r31
    bl      startAppearRedCoin__11TGCConsole2Fv
branch_0x80142ae8:
    lwz     r4, 0x440(r31)
    addi    r3, sp, 0xe4c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r5, 0xe4c(sp)
    lis     r8, 0x4330
    lwz     r0, 0xe54(sp)
    addi    r4, sp, 0xe5c
    lwz     r7, 0xe50(sp)
    subf    r3, r5, r0
    lwz     r0, 0xe58(sp)
    xoris   r6, r3, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r5, r5, 0x8000
    stw     r6, 0xf14(sp)
    subf    r0, r7, r0
    lfs     f5, -0x4c70(r2)
    stw     r5, 0xf1c(sp)
    xoris   r6, r0, 0x8000
    xoris   r0, r7, 0x8000
    lfs     f0, -0x4c74(r2)
    stw     r6, 0xf24(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r5, 0x1fc
    stw     r8, 0xf10(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r8, 0xf18(sp)
    lfd     f2, 0xf10(sp)
    lfd     f1, 0xf18(sp)
    stw     r0, 0xf2c(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r8, 0xf20(sp)
    fmadds  f3, f5, f2, f1
    stw     r8, 0xf28(sp)
    lfd     f2, 0xf20(sp)
    lfd     f1, 0xf28(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0xe5c(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0xe60(sp)
    stfs    f0, 0xe64(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    stw     r25, 0x448(r31)
branch_0x80142ba4:
    lbz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142bd4
    lhz     r4, 0x74(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0x74(r31)
    bl      processAppearRed__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80142bd4
    li      r0, 0x0
    stb     r0, 0x3c(r31)
branch_0x80142bd4:
    lbz     r0, 0x58(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142bf8
    lwz     r3, 0x42c(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80142bf8
    li      r0, 0x0
    stb     r0, 0x58(r31)
branch_0x80142bf8:
    lbz     r0, 0x3e(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142c2c
    lbz     r4, 0x76(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stb     r0, 0x76(r31)
    extsb   r4, r4
    bl      processAppearTimer__11TGCConsole2Fi
    clrlwi. r0, r3, 24
    beq-    branch_0x80142c2c
    li      r0, 0x0
    stb     r0, 0x3e(r31)
branch_0x80142c2c:
    lbz     r0, 0x3f(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142c54
    lwz     r3, 0x450(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80142c6c
    li      r0, 0x0
    stb     r0, 0x3f(r31)
    b       branch_0x80142c6c

branch_0x80142c54:
    lbz     r0, 0x4a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142c6c
    addi    r3, r31, 0x0
    li      r4, -0x1
    bl      setTimer__11TGCConsole2Fl
branch_0x80142c6c:
    lbz     r0, 0x59(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142cf8
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80142cf0
    lwz     r3, R13Off_m0x60d8(r13)
    lha     r0, 0x120(r3)
    extsh.  r0, r0
    beq-    branch_0x80142cf0
    lfs     f0, 0x12c(r3)
    fctiwz  f0, f0
    stfd    f0, 0xf10(sp)
    lwz     r0, 0xf14(sp)
    extsh.  r0, r0
    beq-    branch_0x80142cf0
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x9
    bne-    branch_0x80142cc8
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x2
    beq-    branch_0x80142cf0
branch_0x80142cc8:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4819
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80142cf0
    li      r3, 0x4819
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80142cf0:
    li      r0, 0x0
    stb     r0, 0x59(r31)
branch_0x80142cf8:
    lbz     r0, 0x5a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80142d84
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80142d7c
    lwz     r3, R13Off_m0x60d8(r13)
    lha     r0, 0x120(r3)
    extsh.  r0, r0
    beq-    branch_0x80142d7c
    lfs     f0, 0x12c(r3)
    fctiwz  f0, f0
    stfd    f0, 0xf10(sp)
    lwz     r0, 0xf14(sp)
    extsh.  r0, r0
    beq-    branch_0x80142d7c
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x9
    bne-    branch_0x80142d54
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x2
    beq-    branch_0x80142d7c
branch_0x80142d54:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x481a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80142d7c
    li      r3, 0x481a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80142d7c:
    li      r0, 0x0
    stb     r0, 0x5a(r31)
branch_0x80142d84:
    rlwinm. r0, r27, 0, 30, 30
    beq-    branch_0x80143efc
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x80143100
    bge-    branch_0x80142dac
    cmpwi   r0, 0x1
    beq-    branch_0x80142db8
    bge-    branch_0x80142e58
    b       branch_0x8014320c

branch_0x80142dac:
    cmpwi   r0, 0x5
    bge-    branch_0x8014320c
    b       branch_0x80143150

branch_0x80142db8:
    mr      r3, r31
    bl      processAppearBalloon__11TGCConsole2Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8014320c
    li      r0, 0x2
    stw     r0, 0x10(r31)
    lwz     r3, 0x3bc(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    li      r0, 0x80
    mtctr   r0
    li      r0, 0x0
branch_0x80142de4:
    stb     r0, 0x0(r3)
    stb     r0, 0x1(r3)
    stb     r0, 0x2(r3)
    stb     r0, 0x3(r3)
    stb     r0, 0x4(r3)
    stb     r0, 0x5(r3)
    stb     r0, 0x6(r3)
    stb     r0, 0x7(r3)
    addi    r3, r3, 0x8
    bdnz+      branch_0x80142de4
    lwz     r3, 0x3b8(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    li      r0, 0x80
    mtctr   r0
    li      r0, 0x0
branch_0x80142e20:
    stb     r0, 0x0(r3)
    stb     r0, 0x1(r3)
    stb     r0, 0x2(r3)
    stb     r0, 0x3(r3)
    stb     r0, 0x4(r3)
    stb     r0, 0x5(r3)
    stb     r0, 0x6(r3)
    stb     r0, 0x7(r3)
    addi    r3, r3, 0x8
    bdnz+      branch_0x80142e20
    lwz     r3, 0x3bc(r31)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8014320c

branch_0x80142e58:
    lwz     r3, 0x3d8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801430f8
    lwz     r3, 0x3dc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801430f8
    lis     r3, unk_80387954@h
    lis     r4, unk_80387920@h
    addi    r20, r3, unk_80387954@l
    addi    r21, r4, unk_80387920@l
    li      r25, 0x0
branch_0x80142ea4:
    lwz     r3, 0x3d8(r31)
    addi    r4, sp, 0x955
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r19, 0x955(sp)
    cmpwi   r19, 0xa
    beq-    branch_0x80142f14
    bge-    branch_0x80142ed0
    cmpwi   r19, 0x0
    beq-    branch_0x80142f0c
    b       branch_0x80142f40

branch_0x80142ed0:
    cmpwi   r19, 0x1a
    beq-    branch_0x80142edc
    b       branch_0x80142f40

branch_0x80142edc:
    lwz     r3, 0x3d8(r31)
    addi    r4, sp, 0x954
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x3d8(r31)
    lbz     r4, 0x954(sp)
    lwz     r12, 0x0(r3)
    addi    r4, r4, -0x2
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801430e8

branch_0x80142f0c:
    li      r0, 0x3
    stw     r0, 0x10(r31)
branch_0x80142f14:
    stb     r19, 0x953(sp)
    addi    r4, sp, 0x953
    li      r5, 0x1
    lwz     r3, 0x3dc(r31)
    bl      write__15JSUOutputStreamFPCvl
    stb     r19, 0x952(sp)
    addi    r4, sp, 0x952
    li      r5, 0x1
    lwz     r3, 0x3e0(r31)
    bl      write__15JSUOutputStreamFPCvl
    b       branch_0x801430e8

branch_0x80142f40:
    li      r0, -0x1
    cmpwi   r19, 0x3c
    stw     r0, 0xdd4(sp)
    li      r24, 0x1
    beq-    branch_0x80142ffc
    bge-    branch_0x80142f80
    cmpwi   r19, 0x25
    beq-    branch_0x80142fe0
    bge-    branch_0x80142f74
    cmpwi   r19, 0x23
    beq-    branch_0x80142fc0
    bge-    branch_0x80143018
    b       branch_0x80143038

branch_0x80142f74:
    cmpwi   r19, 0x2b
    beq-    branch_0x80142ffc
    b       branch_0x80143038

branch_0x80142f80:
    cmpwi   r19, 0x40
    beq-    branch_0x80142fa4
    bge-    branch_0x80142f98
    cmpwi   r19, 0x3e
    beq-    branch_0x80142ffc
    b       branch_0x80143038

branch_0x80142f98:
    cmpwi   r19, 0xa5
    beq-    branch_0x80142ffc
    b       branch_0x80143038

branch_0x80142fa4:
    li      r3, 0x64
    stb     r3, 0xdd4(sp)
    li      r0, 0xff
    stb     r0, 0xdd5(sp)
    stb     r3, 0xdd6(sp)
    stb     r0, 0xdd7(sp)
    b       branch_0x8014303c

branch_0x80142fc0:
    li      r4, 0xff
    stb     r4, 0xdd4(sp)
    li      r3, 0xa0
    li      r0, 0x64
    stb     r3, 0xdd5(sp)
    stb     r0, 0xdd6(sp)
    stb     r4, 0xdd7(sp)
    b       branch_0x8014303c

branch_0x80142fe0:
    li      r3, 0xff
    stb     r3, 0xdd4(sp)
    li      r0, 0x0
    stb     r3, 0xdd5(sp)
    stb     r0, 0xdd6(sp)
    stb     r3, 0xdd7(sp)
    b       branch_0x8014303c

branch_0x80142ffc:
    li      r3, 0xdc
    stb     r3, 0xdd4(sp)
    li      r0, 0xff
    stb     r3, 0xdd5(sp)
    stb     r3, 0xdd6(sp)
    stb     r0, 0xdd7(sp)
    b       branch_0x8014303c

branch_0x80143018:
    li      r0, 0x6e
    stb     r0, 0xdd4(sp)
    li      r3, 0xe6
    li      r0, 0xff
    stb     r3, 0xdd5(sp)
    stb     r0, 0xdd6(sp)
    stb     r0, 0xdd7(sp)
    b       branch_0x8014303c

branch_0x80143038:
    li      r24, 0x0
branch_0x8014303c:
    clrlwi. r0, r24, 24
    beq-    branch_0x80143084
    lbz     r6, 0xdd4(sp)
    mr      r5, r21
    lbz     r7, 0xdd5(sp)
    addi    r3, sp, 0xcd4
    lbz     r8, 0xdd6(sp)
    crxor   6, 6, 6
    li      r4, 0xff
    bl      snprintf
    lwz     r3, 0x3dc(r31)
    addi    r4, sp, 0xcd4
    li      r5, 0x2b
    bl      write__15JSUOutputStreamFPCvl
    lwz     r3, 0x3e0(r31)
    addi    r4, sp, 0xcd4
    li      r5, 0x2b
    bl      write__15JSUOutputStreamFPCvl
branch_0x80143084:
    stb     r19, 0x951(sp)
    addi    r4, sp, 0x951
    li      r5, 0x1
    lwz     r3, 0x3dc(r31)
    bl      write__15JSUOutputStreamFPCvl
    stb     r19, 0x950(sp)
    addi    r4, sp, 0x950
    li      r5, 0x1
    lwz     r3, 0x3e0(r31)
    bl      write__15JSUOutputStreamFPCvl
    clrlwi. r0, r24, 24
    beq-    branch_0x801430e8
    addi    r5, r20, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0xcd4
    li      r4, 0xff
    bl      snprintf
    lwz     r3, 0x3dc(r31)
    addi    r4, sp, 0xcd4
    li      r5, 0x18
    bl      write__15JSUOutputStreamFPCvl
    lwz     r3, 0x3e0(r31)
    addi    r4, sp, 0xcd4
    li      r5, 0x18
    bl      write__15JSUOutputStreamFPCvl
branch_0x801430e8:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    blt+    branch_0x80142ea4
    b       branch_0x80143100

branch_0x801430f8:
    li      r0, 0x3
    stw     r0, 0x10(r31)
branch_0x80143100:
    lwz     r3, 0x3e8(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8014320c
    addi    r0, r3, -0x1
    stw     r0, 0x3e8(r31)
    lbz     r0, 0x3fc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8014312c
    lwz     r0, 0x3e8(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8014313c
branch_0x8014312c:
    lwz     r3, 0x3f8(r31)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8014320c
branch_0x8014313c:
    lwz     r4, 0x3e4(r31)
    addi    r3, r31, 0x0
    li      r5, 0x0
    bl      startDisappearBalloon__11TGCConsole2FUlb
    b       branch_0x8014320c

branch_0x80143150:
    li      r19, 0x1
    addi    r3, r31, 0x0
    bl      processDisappearBalloon__11TGCConsole2Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801431d0
    lwz     r3, 0x3b4(r31)
    li      r0, 0x0
    li      r4, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0x3b4(r31)
    lwz     r5, 0x3c4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x3cc(r31)
    lwz     r12, 0x14(r12)
    subf    r5, r5, r0
    mtlr    r12
    blrl
    lwz     r4, 0x3b4(r31)
    addi    r3, sp, 0xdf8
    addi    r4, r4, 0xec
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x3b4(r31)
    li      r4, 0x0
    lwz     r5, 0xdfc(sp)
    lwz     r12, 0x0(r3)
    lwz     r0, 0xe04(sp)
    lwz     r12, 0x10(r12)
    subf    r0, r5, r0
    mtlr    r12
    neg     r5, r0
    blrl
    b       branch_0x801431d4

branch_0x801431d0:
    li      r19, 0x0
branch_0x801431d4:
    clrlwi. r0, r19, 24
    beq-    branch_0x8014320c
    li      r0, 0x0
    sth     r0, 0x3f4(r31)
    stw     r0, 0x10(r31)
    lwz     r4, 0x3f8(r31)
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8014320c
    addi    r3, r31, 0x0
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, -0x1
    stw     r0, 0x3f8(r31)
branch_0x8014320c:
    lwz     r3, 0x408(r31)
    lwz     r0, 0x40c(r31)
    cmplw   r3, r0
    bne-    branch_0x8014336c
    lis     r4, unk_00060001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060001@l
    bl      getFlag__12TFlagManagerCFUl
    addi    r20, r3, 0x0
    cmpwi   r20, 0x63
    ble-    branch_0x8014323c
    li      r20, 0x63
branch_0x8014323c:
    lwz     r0, 0x2c(r31)
    cmpw    r20, r0
    blt-    branch_0x801434d4
    lwz     r3, 0x418(r31)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    mr      r19, r3
    lwz     r3, 0x41c(r31)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    and     r0, r19, r3
    clrlwi. r0, r0, 24
    beq-    branch_0x801434d4
    lwz     r0, 0x2c(r31)
    cmpwi   r0, 0x63
    ble-    branch_0x80143294
    li      r0, 0x63
    stw     r0, 0x2c(r31)
branch_0x80143294:
    lwz     r3, 0x2c(r31)
    cmpw    r3, r20
    beq-    branch_0x801434d4
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r31)
    lwz     r0, 0x2c(r31)
    cmpwi   r0, 0xa
    blt-    branch_0x8014330c
    lwz     r3, 0x418(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801432d0
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x801432d0:
    lis     r3, unk_66666667@h
    lwz     r0, 0x2c(r31)
    addi    r4, r3, unk_66666667@l
    lwz     r3, 0x418(r31)
    mulhw   r0, r4, r0
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r6, r31, r0
    lwz     r5, 0xe0(r6)
    li      r4, 0xc
    lwz     r6, 0xdc(r6)
    bl      setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
    b       branch_0x80143328

branch_0x8014330c:
    lwz     r3, 0x418(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80143328
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x80143328:
    lis     r3, unk_66666667@h
    lwz     r5, 0x2c(r31)
    addi    r0, r3, unk_66666667@l
    lwz     r3, 0x41c(r31)
    mulhw   r0, r0, r5
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r6, r31, r0
    lwz     r5, 0xe0(r6)
    li      r4, 0xc
    lwz     r6, 0xdc(r6)
    bl      setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
    b       branch_0x801434d4

branch_0x8014336c:
    lwz     r0, 0x410(r31)
    cmplw   r3, r0
    bne-    branch_0x801434d4
    lis     r4, unk_00060002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060002@l
    bl      getFlag__12TFlagManagerCFUl
    mr      r20, r3
    lwz     r3, 0x418(r31)
    li      r19, 0x1
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    and     r19, r19, r3
    lwz     r3, 0x41c(r31)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    and     r19, r19, r3
    clrlwi. r0, r19, 24
    beq-    branch_0x801434d4
    cmpwi   r20, 0x63
    ble-    branch_0x801433d4
    li      r20, 0x63
branch_0x801433d4:
    cmpwi   r20, 0x0
    bge-    branch_0x801433e0
    li      r20, 0x0
branch_0x801433e0:
    lwz     r3, 0x2c(r31)
    cmpw    r3, r20
    bge-    branch_0x801434d4
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r31)
    lwz     r0, 0x2c(r31)
    cmpwi   r0, 0xa
    blt-    branch_0x80143474
    lwz     r3, 0x418(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014341c
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8014341c:
    lis     r3, unk_66666667@h
    lwz     r5, 0x2c(r31)
    addi    r0, r3, unk_66666667@l
    mulhw   r4, r0, r5
    srawi   r0, r4, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf.   r0, r0, r5
    bne-    branch_0x80143490
    srawi   r0, r4, 2
    lwz     r3, 0x418(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x80143490

branch_0x80143474:
    lwz     r3, 0x418(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80143490
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x80143490:
    lis     r3, unk_66666667@h
    lwz     r5, 0x2c(r31)
    addi    r0, r3, unk_66666667@l
    lwz     r3, 0x41c(r31)
    mulhw   r0, r0, r5
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x801434d4:
    lbz     r3, 0x68(r31)
    extsb.  r0, r3
    ble-    branch_0x80143df0
    extsb   r0, r3
    cmpwi   r0, 0x1
    li      r4, 0x1
    bne-    branch_0x80143d78
    lwz     r0, 0x20(r31)
    lwz     r3, 0x6c(r31)
    cmpw    r0, r3
    blt-    branch_0x80143508
    addi    r0, r3, 0x1
    stw     r0, 0x6c(r31)
branch_0x80143508:
    lwz     r0, 0x20(r31)
    lwz     r3, 0x6c(r31)
    cmpw    r0, r3
    bge-    branch_0x80143524
    addi    r0, r3, -0x1
    stw     r0, 0x6c(r31)
    li      r4, 0x0
branch_0x80143524:
    lwz     r0, 0x6c(r31)
    cmpwi   r0, 0x3e7
    ble-    branch_0x8014353c
    li      r0, 0x3e7
    stw     r0, 0x6c(r31)
    stw     r0, 0x20(r31)
branch_0x8014353c:
    lwz     r0, 0x6c(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x80143554
    li      r0, 0x0
    stw     r0, 0x6c(r31)
    stw     r0, 0x20(r31)
branch_0x80143554:
    clrlwi. r0, r4, 24
    beq-    branch_0x80143b68
    addi    r3, sp, 0xde4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lwz     r5, 0x6c(r31)
    cmpwi   r5, 0x64
    blt-    branch_0x8014391c
    lis     r3, unk_51eb851f@ha
    addi    r0, r3, unk_51eb851f@l
    mulhw   r4, r0, r5
    srawi   r0, r4, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x64
    subf.   r0, r0, r5
    bne-    branch_0x8014369c
    srawi   r0, r4, 5
    lwz     r3, 0xd4(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r5, 0xd4(r31)
    lis     r10, 0x4330
    lfd     f4, -0x4c38(r2)
    addi    r4, sp, 0xdd8
    lwz     r9, 0x0(r5)
    lfs     f5, -0x4c70(r2)
    li      r5, 0x1fc
    lwz     r7, 0x24(r9)
    li      r6, 0x0
    lwz     r0, 0x28(r9)
    lfs     f0, -0x4c74(r2)
    stw     r7, 0xde4(sp)
    li      r7, 0x0
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r0, 0xde8(sp)
    lwz     r8, 0x2c(r9)
    lwz     r0, 0x30(r9)
    stw     r8, 0xdec(sp)
    stw     r0, 0xdf0(sp)
    lwz     r8, 0xde4(sp)
    lwz     r0, 0xdec(sp)
    xoris   r9, r8, 0x8000
    lwz     r11, 0xde8(sp)
    subf    r8, r8, r0
    stw     r9, 0xf1c(sp)
    xoris   r8, r8, 0x8000
    lwz     r0, 0xdf0(sp)
    stw     r8, 0xf14(sp)
    subf    r0, r11, r0
    xoris   r8, r0, 0x8000
    stw     r10, 0xf10(sp)
    xoris   r0, r11, 0x8000
    stw     r10, 0xf18(sp)
    lfd     f2, 0xf10(sp)
    lfd     f1, 0xf18(sp)
    stw     r8, 0xf24(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r0, 0xf2c(sp)
    fmadds  f3, f5, f2, f1
    stw     r10, 0xf20(sp)
    stw     r10, 0xf28(sp)
    lfd     f2, 0xf20(sp)
    lfd     f1, 0xf28(sp)
    fsubs   f2, f2, f4
    stfs    f3, 0xdd8(sp)
    fsubs   f1, f1, f4
    fmadds  f1, f5, f2, f1
    stfs    f1, 0xddc(sp)
    stfs    f0, 0xde0(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x8014369c:
    lwz     r4, 0x6c(r31)
    lis     r3, unk_66666667@h
    lis     r25, 0x4330
    lfd     f1, -0x4c38(r2)
    xoris   r0, r4, 0x8000
    stw     r0, 0xf14(sp)
    addi    r0, r3, unk_66666667@l
    lfs     f2, -0x4c40(r2)
    stw     r25, 0xf10(sp)
    lfd     f0, 0xf10(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xf18(sp)
    lwz     r3, 0xf1c(sp)
    mulli   r3, r3, 0x64
    subf    r19, r3, r4
    mulhw   r4, r0, r19
    srawi   r0, r4, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf.   r0, r0, r19
    bne-    branch_0x801437f0
    srawi   r0, r4, 2
    lwz     r3, 0xd8(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r6, 0xd8(r31)
    addi    r4, sp, 0xdd8
    lfd     f4, -0x4c38(r2)
    li      r5, 0x1fc
    lwz     r9, 0x0(r6)
    lfs     f5, -0x4c70(r2)
    li      r6, 0x0
    lwz     r8, 0x24(r9)
    li      r7, 0x0
    lwz     r0, 0x28(r9)
    lfs     f0, -0x4c74(r2)
    stw     r8, 0xde4(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r0, 0xde8(sp)
    lwz     r8, 0x2c(r9)
    lwz     r0, 0x30(r9)
    stw     r8, 0xdec(sp)
    stw     r0, 0xdf0(sp)
    lwz     r8, 0xde4(sp)
    lwz     r0, 0xdec(sp)
    xoris   r9, r8, 0x8000
    lwz     r10, 0xde8(sp)
    subf    r8, r8, r0
    stw     r9, 0xf1c(sp)
    xoris   r8, r8, 0x8000
    lwz     r0, 0xdf0(sp)
    stw     r8, 0xf14(sp)
    subf    r0, r10, r0
    xoris   r8, r0, 0x8000
    stw     r25, 0xf10(sp)
    xoris   r0, r10, 0x8000
    stw     r25, 0xf18(sp)
    lfd     f2, 0xf10(sp)
    lfd     f1, 0xf18(sp)
    stw     r8, 0xf24(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r0, 0xf2c(sp)
    fmadds  f3, f5, f2, f1
    stw     r25, 0xf20(sp)
    stw     r25, 0xf28(sp)
    lfd     f2, 0xf20(sp)
    lfd     f1, 0xf28(sp)
    fsubs   f2, f2, f4
    stfs    f3, 0xdd8(sp)
    fsubs   f1, f1, f4
    fmadds  f1, f5, f2, f1
    stfs    f1, 0xddc(sp)
    stfs    f0, 0xde0(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x801437f0:
    lwz     r3, 0xdc(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014380c
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8014380c:
    lis     r4, unk_66666667@h
    lwz     r3, 0xdc(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r19
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r19
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r5, 0xdc(r31)
    lis     r10, 0x4330
    lfd     f4, -0x4c38(r2)
    addi    r4, sp, 0xdd8
    lwz     r9, 0x0(r5)
    lfs     f5, -0x4c70(r2)
    li      r5, 0x1fc
    lwz     r7, 0x24(r9)
    li      r6, 0x0
    lwz     r0, 0x28(r9)
    lfs     f0, -0x4c74(r2)
    stw     r7, 0xde4(sp)
    li      r7, 0x0
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r0, 0xde8(sp)
    lwz     r8, 0x2c(r9)
    lwz     r0, 0x30(r9)
    stw     r8, 0xdec(sp)
    stw     r0, 0xdf0(sp)
    lwz     r8, 0xde4(sp)
    lwz     r0, 0xdec(sp)
    xoris   r9, r8, 0x8000
    lwz     r11, 0xde8(sp)
    subf    r8, r8, r0
    stw     r9, 0xf1c(sp)
    xoris   r8, r8, 0x8000
    lwz     r0, 0xdf0(sp)
    stw     r8, 0xf14(sp)
    subf    r0, r11, r0
    xoris   r8, r0, 0x8000
    stw     r10, 0xf10(sp)
    xoris   r0, r11, 0x8000
    stw     r10, 0xf18(sp)
    lfd     f2, 0xf10(sp)
    lfd     f1, 0xf18(sp)
    stw     r8, 0xf24(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r0, 0xf2c(sp)
    fmadds  f3, f5, f2, f1
    stw     r10, 0xf20(sp)
    stw     r10, 0xf28(sp)
    lfd     f2, 0xf20(sp)
    lfd     f1, 0xf28(sp)
    fsubs   f2, f2, f4
    stfs    f3, 0xdd8(sp)
    fsubs   f1, f1, f4
    fmadds  f1, f5, f2, f1
    stfs    f1, 0xddc(sp)
    stfs    f0, 0xde0(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    b       branch_0x80143d6c

branch_0x8014391c:
    lis     r3, unk_66666667@h
    addi    r0, r3, unk_66666667@l
    mulhw   r4, r0, r5
    srawi   r0, r4, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf.   r0, r0, r5
    bne-    branch_0x80143a38
    srawi   r0, r4, 2
    lwz     r3, 0xd4(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r5, 0xd4(r31)
    lis     r10, 0x4330
    lfd     f4, -0x4c38(r2)
    addi    r4, sp, 0xdd8
    lwz     r9, 0x0(r5)
    lfs     f5, -0x4c70(r2)
    li      r5, 0x1fc
    lwz     r7, 0x24(r9)
    li      r6, 0x0
    lwz     r0, 0x28(r9)
    lfs     f0, -0x4c74(r2)
    stw     r7, 0xde4(sp)
    li      r7, 0x0
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r0, 0xde8(sp)
    lwz     r8, 0x2c(r9)
    lwz     r0, 0x30(r9)
    stw     r8, 0xdec(sp)
    stw     r0, 0xdf0(sp)
    lwz     r8, 0xde4(sp)
    lwz     r0, 0xdec(sp)
    xoris   r9, r8, 0x8000
    lwz     r11, 0xde8(sp)
    subf    r8, r8, r0
    stw     r9, 0xf1c(sp)
    xoris   r8, r8, 0x8000
    lwz     r0, 0xdf0(sp)
    stw     r8, 0xf14(sp)
    subf    r0, r11, r0
    xoris   r8, r0, 0x8000
    stw     r10, 0xf10(sp)
    xoris   r0, r11, 0x8000
    stw     r10, 0xf18(sp)
    lfd     f2, 0xf10(sp)
    lfd     f1, 0xf18(sp)
    stw     r8, 0xf24(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r0, 0xf2c(sp)
    fmadds  f3, f5, f2, f1
    stw     r10, 0xf20(sp)
    stw     r10, 0xf28(sp)
    lfd     f2, 0xf20(sp)
    lfd     f1, 0xf28(sp)
    fsubs   f2, f2, f4
    stfs    f3, 0xdd8(sp)
    fsubs   f1, f1, f4
    fmadds  f1, f5, f2, f1
    stfs    f1, 0xddc(sp)
    stfs    f0, 0xde0(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x80143a38:
    lis     r3, unk_66666667@h
    lwz     r5, 0x6c(r31)
    addi    r0, r3, unk_66666667@l
    lwz     r3, 0xd8(r31)
    mulhw   r0, r0, r5
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r5, 0xd8(r31)
    lis     r10, 0x4330
    lfd     f4, -0x4c38(r2)
    addi    r4, sp, 0xdd8
    lwz     r9, 0x0(r5)
    lfs     f5, -0x4c70(r2)
    li      r5, 0x1fc
    lwz     r7, 0x24(r9)
    li      r6, 0x0
    lwz     r0, 0x28(r9)
    lfs     f0, -0x4c74(r2)
    stw     r7, 0xde4(sp)
    li      r7, 0x0
    lwz     r3, R13Off_m0x5fdc(r13)
    stw     r0, 0xde8(sp)
    lwz     r8, 0x2c(r9)
    lwz     r0, 0x30(r9)
    stw     r8, 0xdec(sp)
    stw     r0, 0xdf0(sp)
    lwz     r8, 0xde4(sp)
    lwz     r0, 0xdec(sp)
    xoris   r9, r8, 0x8000
    lwz     r11, 0xde8(sp)
    subf    r8, r8, r0
    stw     r9, 0xf1c(sp)
    xoris   r8, r8, 0x8000
    lwz     r0, 0xdf0(sp)
    stw     r8, 0xf14(sp)
    subf    r0, r11, r0
    xoris   r8, r0, 0x8000
    stw     r10, 0xf10(sp)
    xoris   r0, r11, 0x8000
    stw     r10, 0xf18(sp)
    lfd     f2, 0xf10(sp)
    lfd     f1, 0xf18(sp)
    stw     r8, 0xf24(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r0, 0xf2c(sp)
    fmadds  f3, f5, f2, f1
    stw     r10, 0xf20(sp)
    stw     r10, 0xf28(sp)
    lfd     f2, 0xf20(sp)
    lfd     f1, 0xf28(sp)
    fsubs   f2, f2, f4
    stfs    f3, 0xdd8(sp)
    fsubs   f1, f1, f4
    fmadds  f1, f5, f2, f1
    stfs    f1, 0xddc(sp)
    stfs    f0, 0xde0(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, 0xdc(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80143d6c
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x80143d6c

branch_0x80143b68:
    lwz     r5, 0x6c(r31)
    cmpwi   r5, 0x64
    blt-    branch_0x80143cb8
    lis     r3, unk_51eb851f@ha
    addi    r0, r3, unk_51eb851f@l
    mulhw   r4, r0, r5
    srawi   r0, r4, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x64
    subf    r0, r0, r5
    cmpwi   r0, 0x63
    bne-    branch_0x80143bc8
    srawi   r0, r4, 5
    lwz     r3, 0xd4(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x80143bc8:
    lwz     r5, 0x6c(r31)
    lis     r3, unk_66666667@h
    lis     r4, 0x4330
    lfd     f1, -0x4c38(r2)
    xoris   r0, r5, 0x8000
    stw     r0, 0xf14(sp)
    addi    r0, r3, unk_66666667@l
    lfs     f2, -0x4c40(r2)
    stw     r4, 0xf10(sp)
    lfd     f0, 0xf10(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xf18(sp)
    lwz     r3, 0xf1c(sp)
    mulli   r3, r3, 0x64
    subf    r19, r3, r5
    mulhw   r4, r0, r19
    srawi   r0, r4, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r19
    cmpwi   r0, 0x9
    bne-    branch_0x80143c58
    srawi   r0, r4, 2
    lwz     r3, 0xd8(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x80143c58:
    lwz     r3, 0xdc(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80143c74
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80143c74:
    lis     r4, unk_66666667@h
    lwz     r3, 0xdc(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r19
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r19
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x80143d6c

branch_0x80143cb8:
    lis     r3, unk_66666667@h
    addi    r0, r3, unk_66666667@l
    mulhw   r4, r0, r5
    srawi   r0, r4, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    cmpwi   r0, 0x9
    bne-    branch_0x80143d0c
    srawi   r0, r4, 2
    lwz     r3, 0xd4(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x80143d0c:
    lis     r3, unk_66666667@h
    lwz     r5, 0x6c(r31)
    addi    r0, r3, unk_66666667@l
    lwz     r3, 0xd8(r31)
    mulhw   r0, r0, r5
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0xdc(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80143d6c
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x80143d6c:
    lbz     r3, 0x68(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x68(r31)
branch_0x80143d78:
    lbz     r0, 0x34(r31)
    li      r21, 0x1
    cmplwi  r0, 0x0
    bne-    branch_0x80143dbc
    li      r20, 0x0
    li      r19, 0x0
branch_0x80143d90:
    addi    r0, r19, 0xd4
    lwzx    r3, r31, r0
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r20, r20, 0x1
    cmpwi   r20, 0x3
    and     r21, r21, r3
    addi    r19, r19, 0x4
    blt+    branch_0x80143d90
branch_0x80143dbc:
    clrlwi. r0, r21, 24
    beq-    branch_0x80143df0
    lwz     r3, 0x20(r31)
    lwz     r0, 0x6c(r31)
    cmpw    r3, r0
    bne-    branch_0x80143de8
    li      r0, 0x0
    stb     r0, 0x68(r31)
    li      r0, 0x14
    sth     r0, 0x78(r31)
    b       branch_0x80143df0

branch_0x80143de8:
    li      r0, 0x1
    stb     r0, 0x68(r31)
branch_0x80143df0:
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x3f0(r3)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x80143e0c
    li      r0, 0x1
    b       branch_0x80143e10

branch_0x80143e0c:
    li      r0, 0x0
branch_0x80143e10:
    cmpwi   r0, 0x0
    beq-    branch_0x80143e98
    lwz     r3, 0x29c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80143e54
    li      r0, 0x0
    stb     r0, 0xc(r3)
    li      r4, 0x1
    lwz     r3, 0x324(r31)
    stb     r4, 0xc(r3)
    lbz     r0, 0x7a(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x314(r3)
    stb     r4, 0xc(r3)
branch_0x80143e54:
    lwz     r3, R13Off_m0x6088(r13)
    lbz     r0, 0x7a(r31)
    lbz     r5, 0x5d5f(r3)
    cmplw   r0, r5
    beq-    branch_0x80143efc
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x314(r3)
    li      r4, 0x0
    slwi    r0, r5, 2
    stb     r4, 0xc(r3)
    add     r3, r31, r0
    li      r0, 0x1
    lwz     r3, 0x314(r3)
    stb     r0, 0xc(r3)
    stb     r5, 0x7a(r31)
    b       branch_0x80143efc

branch_0x80143e98:
    lwz     r3, 0x29c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80143ed4
    li      r0, 0x1
    stb     r0, 0xc(r3)
    li      r4, 0x0
    lwz     r3, 0x324(r31)
    stb     r4, 0xc(r3)
    lbz     r0, 0x7a(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x314(r3)
    stb     r4, 0xc(r3)
branch_0x80143ed4:
    lbz     r0, 0xb4(r31)
    cmplwi  r0, 0xff
    blt-    branch_0x80143efc
    lwz     r3, 0x29c(r31)
    li      r4, 0x1
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x324(r31)
    stb     r0, 0xc(r3)
branch_0x80143efc:
    rlwinm. r0, r27, 0, 28, 28
    beq-    branch_0x801441c8
    addi    r4, r29, 0x54
    addi    r3, sp, 0xbd0
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0xbd0
    bl      setup2D__14J2DGrafContextFv
    lbz     r0, 0x46(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80143f30
    lbz     r0, 0x45(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80143f38
branch_0x80143f30:
    mr      r3, r31
    bl      drawWaterBack__11TGCConsole2Fv
branch_0x80143f38:
    addi    r3, sp, 0xbd0
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0xb0(r31)
    addi    r6, sp, 0xbd0
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lbz     r0, 0x44(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80144038
    lbz     r0, 0x43(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80144038
    lbz     r0, 0x42(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80144038
    lwz     r3, 0x524(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80144038
    lwz     r7, 0x554(r31)
    addi    r3, sp, 0xcc0
    lwz     r6, 0x550(r31)
    lwz     r5, 0x54c(r31)
    lwz     r4, 0x548(r31)
    bl      set__7JUTRectFiiii
    lwz     r3, 0xcc0(sp)
    lwz     r0, 0xcc4(sp)
    stw     r3, 0x64(r29)
    stw     r0, 0x68(r29)
    lwz     r3, 0xcc8(sp)
    lwz     r0, 0xccc(sp)
    stw     r3, 0x6c(r29)
    stw     r0, 0x70(r29)
    lwz     r4, 0x68(r29)
    lwz     r5, 0x70(r29)
    lwz     r3, 0x64(r29)
    lwz     r0, 0x6c(r29)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    addi    r3, sp, 0xbd0
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x52c(r31)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x530(r31)
    stb     r0, 0xc(r3)
    lwz     r4, 0x538(r31)
    lwz     r5, 0x53c(r31)
    lwz     r3, 0x530(r31)
    addi    r4, r4, 0x2
    addi    r5, r5, 0x2
    bl      draw__10J2DTextBoxFii
    lwz     r3, 0x52c(r31)
    lwz     r4, 0x538(r31)
    lwz     r5, 0x53c(r31)
    bl      draw__10J2DTextBoxFii
    lwz     r3, 0x52c(r31)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0x530(r31)
    stb     r0, 0xc(r3)
branch_0x80144038:
    lwz     r3, 0x54(r29)
    lwz     r0, 0x58(r29)
    stw     r3, 0x64(r29)
    stw     r0, 0x68(r29)
    lwz     r3, 0x5c(r29)
    lwz     r0, 0x60(r29)
    stw     r3, 0x6c(r29)
    stw     r0, 0x70(r29)
    lwz     r4, 0x68(r29)
    lwz     r5, 0x70(r29)
    lwz     r3, 0x64(r29)
    lwz     r0, 0x6c(r29)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    addi    r3, sp, 0xbd0
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x3f0(r3)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x80144098
    li      r0, 0x1
    b       branch_0x8014409c

branch_0x80144098:
    li      r0, 0x0
branch_0x8014409c:
    cmpwi   r0, 0x0
    beq-    branch_0x80144190
    lwz     r3, R13Off_m0x6088(r13)
    lbz     r0, 0x5d5f(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8014410c
    bge-    branch_0x801440c8
    cmpwi   r0, 0x0
    beq-    branch_0x8014417c
    bge-    branch_0x801440d4
    b       branch_0x8014417c

branch_0x801440c8:
    cmpwi   r0, 0x4
    bge-    branch_0x8014417c
    b       branch_0x80144144

branch_0x801440d4:
    lbz     r6, 0xa4(r31)
    mr      r3, r31
    lbz     r0, 0xa3(r31)
    addi    r4, sp, 0xbd0
    lbz     r5, 0xa2(r31)
    slwi    r6, r6, 8
    lbz     r7, 0xa5(r31)
    slwi    r0, r0, 16
    add     r0, r0, r6
    slwi    r6, r5, 24
    add     r5, r0, r7
    add     r5, r6, r5
    bl      drawJuice__11TGCConsole2FR13J2DOrthoGraphUl
    b       branch_0x801441b0

branch_0x8014410c:
    lbz     r6, 0xa8(r31)
    mr      r3, r31
    lbz     r0, 0xa7(r31)
    addi    r4, sp, 0xbd0
    lbz     r5, 0xa6(r31)
    slwi    r6, r6, 8
    lbz     r7, 0xa9(r31)
    slwi    r0, r0, 16
    add     r0, r0, r6
    slwi    r6, r5, 24
    add     r5, r0, r7
    add     r5, r6, r5
    bl      drawJuice__11TGCConsole2FR13J2DOrthoGraphUl
    b       branch_0x801441b0

branch_0x80144144:
    lbz     r6, 0xac(r31)
    mr      r3, r31
    lbz     r0, 0xab(r31)
    addi    r4, sp, 0xbd0
    lbz     r5, 0xaa(r31)
    slwi    r6, r6, 8
    lbz     r7, 0xad(r31)
    slwi    r0, r0, 16
    add     r0, r0, r6
    slwi    r6, r5, 24
    add     r5, r0, r7
    add     r5, r6, r5
    bl      drawJuice__11TGCConsole2FR13J2DOrthoGraphUl
    b       branch_0x801441b0

branch_0x8014417c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0xbd0
    li      r5, 0x0
    bl      drawJuice__11TGCConsole2FR13J2DOrthoGraphUl
    b       branch_0x801441b0

branch_0x80144190:
    lwz     r3, 0x2f8(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801441b0
    addi    r3, r31, 0x0
    addi    r4, sp, 0xbd0
    bl      drawWater__11TGCConsole2FR13J2DOrthoGraph
branch_0x801441b0:
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0xbd0(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0xbd0(sp)
branch_0x801441c8:
    lmw     r19, 0xf74(sp)
    lwz     r0, 0xfb4(sp)
    lfd     f31, 0xfa8(sp)
    addi    sp, sp, 0xfb0
    mtlr    r0
    blr


.globl drawWater__11TGCConsole2FR13J2DOrthoGraph
drawWater__11TGCConsole2FR13J2DOrthoGraph: # 0x801441e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x218(sp)
    stfd    f31, 0x210(sp)
    stfd    f30, 0x208(sp)
    stfd    f29, 0x200(sp)
    stfd    f28, 0x1f8(sp)
    stmw    r20, 0x1c8(sp)
    addi    r31, r3, 0x0
    addi    r25, r4, 0x0
    addi    r3, sp, 0x164
    bl      PSMTXIdentity
    addi    r3, sp, 0x164
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, R2Off_m0x4c88(r2)
    addi    r4, sp, 0x13c
    li      r3, 0x4
    stw     r0, 0x138(sp)
    lwz     r0, 0x138(sp)
    stw     r0, 0x13c(sp)
    bl      GXSetChanAmbColor
    lbz     r4, 0x9c(r31)
    addi    r29, sp, 0x12c
    lbz     r0, 0x9b(r31)
    addi    r28, sp, 0x124
    lbz     r3, 0x9a(r31)
    slwi    r4, r4, 8
    slwi    r0, r0, 16
    slwi    r3, r3, 24
    add     r0, r0, r4
    add     r0, r3, r0
    stw     r0, 0x134(sp)
    addi    r22, sp, 0x162
    li      r26, 0x2
    lwz     r0, 0x134(sp)
    li      r24, 0x20
    li      r23, 0x4
    stw     r0, 0x2f0(r31)
    li      r21, 0x8
    lis     r30, 0x4330
    lbz     r4, 0xa0(r31)
    lis     r20, 0xcc01
    lbz     r0, 0x9f(r31)
    lbz     r3, 0x9e(r31)
    slwi    r4, r4, 8
    slwi    r0, r0, 16
    slwi    r3, r3, 24
    add     r0, r0, r4
    add     r0, r3, r0
    stw     r0, 0x130(sp)
    lwz     r0, 0x130(sp)
    stw     r0, 0x2f4(r31)
    lhz     r3, -0x4c78(r2)
    lbz     r0, R2Off_m0x4c76(r2)
    sth     r3, 0x160(sp)
    lfs     f30, -0x4c68(r2)
    stb     r0, 0x162(sp)
    lfd     f31, -0x4c38(r2)
    lbz     r0, 0x9d(r31)
    stb     r0, 0x161(sp)
    lbz     r0, 0xa1(r31)
    stb     r0, 0x162(sp)
branch_0x80144388:
    add     r27, r31, r21
    lwz     r0, 0x2ec(r27)
    addi    r4, r29, 0x0
    li      r3, 0x1
    stw     r0, 0x128(sp)
    lwz     r0, 0x128(sp)
    stw     r0, 0x12c(sp)
    bl      GXSetTevColor
    lbz     r5, 0x0(r22)
    mr      r4, r28
    lwz     r0, 0x2ec(r27)
    li      r3, 0x2
    add     r0, r5, r0
    stw     r0, 0x120(sp)
    lwz     r0, 0x120(sp)
    stw     r0, 0x124(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x8
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lwz     r3, 0x2ac(r27)
    lbz     r0, 0xfc(r3)
    cmplwi  r0, 0x0
    ble-    branch_0x80144450
    lwz     r3, 0xec(r3)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x80144450:
    lwzu    r3, 0x2a0(r27)
    lbz     r0, 0xfc(r3)
    cmplwi  r0, 0x0
    ble-    branch_0x8014446c
    lwz     r3, 0xec(r3)
    li      r4, 0x1
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x8014446c:
    addi    r0, r21, -0x4
    lfs     f1, -0x4c74(r2)
    addi    r3, r2, R2Off_m0x4c84
    lfs     f2, 0x2b8(r31)
    lfsx    f0, r3, r0
    fmr     f3, f1
    addi    r3, sp, 0x164
    fsubs   f0, f30, f0
    fmuls   f2, f2, f0
    bl      PSMTXTrans
    addi    r3, sp, 0x164
    li      r4, 0x1e
    li      r5, 0x1
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r3, sp, 0x164
    bl      PSMTXIdentity
    addi    r3, sp, 0x164
    li      r4, 0x21
    li      r5, 0x1
    bl      GXLoadTexMtxImm
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x21
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r3, 0x29c(r31)
    addi    r0, r23, -0x2
    lwz     r8, 0x0(r27)
    addi    r5, r2, R2Off_m0x4c7c
    lwz     r4, 0x0(r3)
    lhax    r7, r5, r0
    li      r3, 0x80
    lwz     r6, 0x28(r4)
    li      r4, 0x0
    lwz     r5, 0x18(r8)
    lwz     r0, 0x20(r8)
    add     r6, r7, r6
    xoris   r6, r6, 0x8000
    subf    r0, r5, r0
    stw     r6, 0x1c4(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    li      r5, 0x4
    stw     r30, 0x1c0(sp)
    stw     r30, 0x1b8(sp)
    lfd     f1, 0x1c0(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f29, f1, f31
    fsubs   f0, f0, f31
    fadds   f28, f29, f0
    bl      GXBegin
    add     r5, r31, r24
    lwz     r0, 0x2bc(r5)
    li      r4, 0x0
    subic.  r26, r26, 0x1
    xoris   r3, r0, 0x8000
    stw     r3, 0x1b4(sp)
    li      r0, 0x1
    addi    r24, r24, -0x10
    stw     r30, 0x1b0(sp)
    addi    r23, r23, -0x2
    addi    r22, r22, -0x1
    lfd     f0, 0x1b0(sp)
    addi    r21, r21, -0x4
    stw     r3, 0x19c(sp)
    fsubs   f0, f0, f31
    stw     r30, 0x198(sp)
    stfs    f0, -0x8000(r20)
    lfd     f0, 0x198(sp)
    stfs    f29, -0x8000(r20)
    fsubs   f0, f0, f31
    stb     r4, -0x8000(r20)
    stb     r4, -0x8000(r20)
    lwz     r3, 0x2c4(r5)
    xoris   r3, r3, 0x8000
    stw     r3, 0x1ac(sp)
    stw     r30, 0x1a8(sp)
    lfd     f1, 0x1a8(sp)
    stw     r3, 0x1a4(sp)
    fsubs   f1, f1, f31
    stw     r30, 0x1a0(sp)
    stfs    f1, -0x8000(r20)
    lfd     f1, 0x1a0(sp)
    stfs    f29, -0x8000(r20)
    fsubs   f1, f1, f31
    stb     r0, -0x8000(r20)
    stb     r4, -0x8000(r20)
    stfs    f1, -0x8000(r20)
    stfs    f28, -0x8000(r20)
    stb     r0, -0x8000(r20)
    stb     r0, -0x8000(r20)
    stfs    f0, -0x8000(r20)
    stfs    f28, -0x8000(r20)
    stb     r4, -0x8000(r20)
    stb     r0, -0x8000(r20)
    bgt+    branch_0x80144388
    mr      r3, r25
    lwz     r12, 0x0(r25)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x2a0(r31)
    addi    r3, sp, 0x150
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lfs     f1, -0x4c68(r2)
    lfs     f0, 0x2b8(r31)
    lwz     r3, 0x29c(r31)
    fsubs   f1, f1, f0
    lfs     f2, -0x4c28(r2)
    lfs     f0, -0x4c70(r2)
    lwz     r3, 0x0(r3)
    fmsubs  f0, f2, f1, f0
    lwz     r0, 0x28(r3)
    fctiwz  f0, f0
    stfd    f0, 0x198(sp)
    lwz     r3, 0x19c(sp)
    add     r3, r0, r3
    addic.  r3, r3, 0x1
    addi    r5, r3, 0x0
    bge-    branch_0x80144708
    li      r5, 0x0
branch_0x80144708:
    lwz     r3, 0x2a0(r31)
    li      r8, 0x0
    lwz     r4, 0x150(sp)
    li      r9, 0x0
    lwz     r6, 0xec(r3)
    li      r10, 0x0
    lhz     r7, 0x3e(r6)
    lhz     r6, 0x3c(r6)
    bl      draw__10J2DPictureFiiiibbb
    lwz     r3, 0x270(r31)
    li      r8, 0x0
    li      r9, 0x0
    lwz     r4, 0x0(r3)
    li      r10, 0x0
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x150(sp)
    stw     r0, 0x154(sp)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r3, 0x270(r31)
    lwz     r5, 0x154(sp)
    lwz     r3, 0x0(r3)
    lwz     r4, 0x150(sp)
    lwz     r6, 0xec(r3)
    lhz     r7, 0x3e(r6)
    lhz     r6, 0x3c(r6)
    bl      draw__10J2DPictureFiiiibbb
    lwz     r3, 0x274(r31)
    li      r8, 0x0
    li      r9, 0x0
    lwz     r4, 0x0(r3)
    li      r10, 0x0
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x150(sp)
    stw     r0, 0x154(sp)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r3, 0x274(r31)
    lwz     r5, 0x154(sp)
    lwz     r3, 0x0(r3)
    lwz     r4, 0x150(sp)
    lwz     r6, 0xec(r3)
    lhz     r7, 0x3e(r6)
    lhz     r6, 0x3c(r6)
    bl      draw__10J2DPictureFiiiibbb
    lwz     r4, 0x288(r31)
    addi    r3, sp, 0x140
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x140(sp)
    addi    r3, sp, 0x150
    lwz     r5, 0x144(sp)
    bl      add__7JUTRectFii
    lwz     r3, 0x288(r31)
    li      r8, 0x0
    lwz     r5, 0x154(sp)
    li      r9, 0x0
    lwz     r6, 0xec(r3)
    lwz     r4, 0x150(sp)
    li      r10, 0x0
    lhz     r7, 0x3e(r6)
    lhz     r6, 0x3c(r6)
    bl      draw__10J2DPictureFiiiibbb
    lmw     r20, 0x1c8(sp)
    lwz     r0, 0x21c(sp)
    lfd     f31, 0x210(sp)
    lfd     f30, 0x208(sp)
    mtlr    r0
    lfd     f29, 0x200(sp)
    lfd     f28, 0x1f8(sp)
    addi    sp, sp, 0x218
    blr


.globl drawJuice__11TGCConsole2FR13J2DOrthoGraphUl
drawJuice__11TGCConsole2FR13J2DOrthoGraphUl: # 0x80144840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stmw    r27, 0x114(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lbz     r0, 0x50(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80144d70
    addi    r3, sp, 0xa0
    bl      PSMTXIdentity
    addi    r3, sp, 0xa0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, R2Off_m0x4c90(r2)
    addi    r4, sp, 0x8c
    li      r3, 0x4
    stw     r0, 0x88(sp)
    lwz     r0, 0x88(sp)
    stw     r0, 0x8c(sp)
    bl      GXSetChanAmbColor
    clrrwi  r0, r30, 8
    stw     r0, 0x80(sp)
    addi    r4, sp, 0x84
    li      r3, 0x1
    lwz     r0, 0x80(sp)
    stw     r0, 0x84(sp)
    bl      GXSetTevColor
    stw     r30, 0x78(sp)
    addi    r4, sp, 0x7c
    li      r3, 0x2
    lwz     r0, 0x78(sp)
    stw     r0, 0x7c(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x8
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lwz     r3, 0x32c(r28)
    lbz     r0, 0xfc(r3)
    cmplwi  r0, 0x0
    ble-    branch_0x801449fc
    lwz     r3, 0xec(r3)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x801449fc:
    lwz     r3, 0x328(r28)
    lbz     r0, 0xfc(r3)
    cmplwi  r0, 0x0
    ble-    branch_0x80144a18
    lwz     r3, 0xec(r3)
    li      r4, 0x1
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x80144a18:
    lfs     f2, -0x4c24(r2)
    li      r31, 0x17
    lfs     f1, -0x4c68(r2)
    li      r4, 0x16
    b       branch_0x80144a68

branch_0x80144a2c:
    lfs     f0, 0x2b8(r28)
    clrlslwi  r3, r4, 24, 2
    addi    r0, r3, 0x334
    fsubs   f0, f1, f0
    lwzx    r3, r28, r0
    lwz     r3, 0x18(r3)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x108(sp)
    lwz     r0, 0x10c(sp)
    cmpw    r3, r0
    blt-    branch_0x80144a64
    addi    r31, r4, 0x1
    b       branch_0x80144a70

branch_0x80144a64:
    addi    r4, r4, -0x1
branch_0x80144a68:
    clrlwi. r0, r4, 24
    bne+    branch_0x80144a2c
branch_0x80144a70:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x17
    bge-    branch_0x80144ab8
    slwi    r0, r0, 2
    lfd     f3, -0x4c38(r2)
    add     r3, r28, r0
    lfs     f1, -0x4c20(r2)
    lwz     r3, 0x334(r3)
    lis     r0, 0x4330
    lfs     f0, -0x4c68(r2)
    lwz     r3, 0x18(r3)
    xoris   r3, r3, 0x8000
    stw     r3, 0x10c(sp)
    stw     r0, 0x108(sp)
    lfd     f2, 0x108(sp)
    fsubs   f2, f2, f3
    fnmsubs  f2, f2, f1, f0
    b       branch_0x80144abc

branch_0x80144ab8:
    lfs     f2, -0x4c68(r2)
branch_0x80144abc:
    lfs     f1, -0x4c68(r2)
    lfs     f0, 0x2b8(r28)
    lwz     r3, 0x338(r28)
    fsubs   f0, f1, f0
    lfs     f1, -0x4c24(r2)
    lwz     r3, 0x18(r3)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x108(sp)
    lwz     r0, 0x10c(sp)
    cmpw    r3, r0
    bge-    branch_0x80144af0
    lfs     f2, -0x4c74(r2)
branch_0x80144af0:
    lfs     f1, -0x4c74(r2)
    addi    r3, sp, 0xa0
    fmr     f3, f1
    bl      PSMTXTrans
    addi    r3, sp, 0xa0
    li      r4, 0x1e
    li      r5, 0x1
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r3, sp, 0xa0
    bl      PSMTXIdentity
    addi    r3, sp, 0xa0
    li      r4, 0x21
    li      r5, 0x1
    bl      GXLoadTexMtxImm
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x21
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r4, 0x328(r28)
    addi    r3, sp, 0x90
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x90(sp)
    lis     r7, 0x4330
    lwz     r3, 0x94(sp)
    lis     r5, 0xcc01
    xoris   r6, r0, 0x8000
    stw     r6, 0x104(sp)
    xoris   r0, r3, 0x8000
    lfd     f3, -0x4c38(r2)
    li      r27, 0x0
    stw     r0, 0x10c(sp)
    li      r4, 0x1
    stw     r7, 0x100(sp)
    mr      r3, r29
    stw     r7, 0x108(sp)
    lfd     f0, 0x100(sp)
    lfd     f1, 0x108(sp)
    fsubs   f0, f0, f3
    stw     r0, 0xfc(sp)
    fsubs   f1, f1, f3
    stw     r6, 0xd4(sp)
    stfs    f0, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stb     r27, -0x8000(r5)
    stb     r27, -0x8000(r5)
    lwz     r0, 0x98(sp)
    stw     r7, 0xf8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xf4(sp)
    lfd     f0, 0xf8(sp)
    stw     r7, 0xf0(sp)
    fsubs   f1, f0, f3
    lfd     f0, 0xf0(sp)
    stw     r0, 0xe4(sp)
    fsubs   f0, f0, f3
    stw     r7, 0xe0(sp)
    stfs    f0, -0x8000(r5)
    lfd     f0, 0xe0(sp)
    stfs    f1, -0x8000(r5)
    fsubs   f1, f0, f3
    stb     r4, -0x8000(r5)
    stb     r27, -0x8000(r5)
    lwz     r0, 0x9c(sp)
    stw     r7, 0xd0(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    lfd     f0, 0xd0(sp)
    stw     r7, 0xe8(sp)
    fsubs   f0, f0, f3
    lfd     f2, 0xe8(sp)
    stw     r0, 0xdc(sp)
    fsubs   f2, f2, f3
    stfs    f1, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    stw     r7, 0xd8(sp)
    stb     r4, -0x8000(r5)
    lfd     f1, 0xd8(sp)
    stb     r4, -0x8000(r5)
    fsubs   f1, f1, f3
    stfs    f0, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stb     r27, -0x8000(r5)
    stb     r4, -0x8000(r5)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    clrlwi  r4, r31, 24
    lbz     r0, 0x330(r28)
    addi    r6, r4, -0x1
    cmpw    r0, r6
    beq-    branch_0x80144d3c
    slwi    r0, r0, 2
    add     r3, r28, r0
    lwz     r3, 0x334(r3)
    stb     r27, 0xc(r3)
branch_0x80144d3c:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x17
    bge-    branch_0x80144d70
    slwi    r0, r4, 2
    stw     r30, 0x70(sp)
    add     r5, r28, r0
    lwz     r3, 0x70(sp)
    li      r0, 0x1
    lwz     r4, 0x330(r5)
    stw     r3, 0x13c(r4)
    lwz     r3, 0x330(r5)
    stb     r0, 0xc(r3)
    stb     r6, 0x330(r28)
branch_0x80144d70:
    lmw     r27, 0x114(sp)
    lwz     r0, 0x12c(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture: # 0x80144d84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr.     r31, r6
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x80144dc0
    lwz     r4, 0x20(r5)
    li      r5, 0x0
    lwz     r3, 0x0(r29)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x80144de0

branch_0x80144dc0:
    lwz     r4, 0x20(r5)
    li      r5, 0x0
    lwz     r3, 0x0(r29)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r4, 0x20(r31)
    li      r5, 0x1
    lwz     r3, 0x0(r29)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x80144de0:
    xoris   r0, r30, 0x8000
    stw     r0, 0x1c(sp)
    li      r3, 0x1
    lis     r0, 0x4330
    stb     r3, 0x70(r29)
    stw     r0, 0x18(sp)
    lfd     f1, -0x4c38(r2)
    lfd     f0, 0x18(sp)
    lfs     f2, -0x4c68(r2)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x68(r29)
    lfs     f0, -0x4c74(r2)
    stfs    f0, 0x6c(r29)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl add__7J2DPaneFii
add__7J2DPaneFii: # 0x80144e34
    mflr    r0
    addi    r3, r3, 0x14
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      add__7JUTRectFii
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl processDisappearBalloon__11TGCConsole2Fv
processDisappearBalloon__11TGCConsole2Fv: # 0x80144e58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    li      r31, 0x0
    stw     r30, 0x80(sp)
    mr      r30, r3
    stw     r29, 0x7c(sp)
    lwz     r4, 0x3b4(r3)
    addi    r3, sp, 0x64
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x3b4(r30)
    addi    r3, sp, 0x50
    lwz     r5, 0x68(sp)
    lwz     r0, 0x70(sp)
    addi    r4, r4, 0xec
    subf    r29, r5, r0
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x54(sp)
    lwz     r0, 0x5c(sp)
    subf.   r4, r3, r0
    ble-    branch_0x80144f30
    lha     r3, 0x3d0(r30)
    subf.   r0, r3, r4
    subf    r29, r3, r29
    bge-    branch_0x80144ecc
    subf    r0, r4, r3
    add     r29, r29, r0
branch_0x80144ecc:
    lwz     r3, 0x3b4(r30)
    mr      r5, r29
    lwz     r4, 0x3c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x3c8(r30)
    lwz     r12, 0x14(r12)
    subf    r4, r4, r0
    mtlr    r12
    blrl
    lwz     r7, 0x3cc(r30)
    addi    r3, sp, 0x40
    lwz     r6, 0x3c8(r30)
    lwz     r4, 0x3c0(r30)
    subf    r5, r29, r7
    bl      set__7JUTRectFiiii
    lwz     r4, 0x3b4(r30)
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    b       branch_0x80144f54

branch_0x80144f30:
    lwz     r3, 0x3b4(r30)
    addi    r4, r3, 0xcc
    lbz     r3, 0xcc(r3)
    addi    r3, r3, -0x30
    extsh.  r0, r3
    bge-    branch_0x80144f50
    li      r3, 0x0
    li      r31, 0x1
branch_0x80144f50:
    stb     r3, 0x0(r4)
branch_0x80144f54:
    lwz     r0, 0x8c(sp)
    mr      r3, r31
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl getAvailable__21JSURandomOutputStreamCFv
getAvailable__21JSURandomOutputStreamCFv: # 0x80144f74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    subf    r3, r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getAvailable__20JSURandomInputStreamCFv
getAvailable__20JSURandomInputStreamCFv: # 0x80144fd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    subf    r3, r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl processAppearBalloon__11TGCConsole2Fv
processAppearBalloon__11TGCConsole2Fv: # 0x8014502c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    li      r31, 0x0
    stw     r30, 0x60(sp)
    mr      r30, r3
    stw     r29, 0x5c(sp)
    lwz     r5, 0x3b4(r3)
    lbz     r3, 0xcc(r5)
    addi    r4, r5, 0xcc
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xff
    bge-    branch_0x80145080
    addi    r3, r3, 0x30
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xff
    ble-    branch_0x80145078
    li      r3, 0xff
branch_0x80145078:
    stb     r3, 0x0(r4)
    b       branch_0x80145120

branch_0x80145080:
    addi    r4, r5, 0x14
    addi    r3, sp, 0x44
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x48(sp)
    lwz     r0, 0x50(sp)
    lha     r5, 0x3d0(r30)
    subf    r4, r3, r0
    lwz     r3, 0x3c4(r30)
    lwz     r0, 0x3cc(r30)
    add     r4, r5, r4
    addi    r29, r4, 0x0
    subf    r0, r3, r0
    cmpw    r4, r0
    ble-    branch_0x801450c0
    mr      r29, r0
    li      r31, 0x1
branch_0x801450c0:
    lwz     r3, 0x3b4(r30)
    mr      r5, r29
    lwz     r4, 0x3c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x3c8(r30)
    lwz     r12, 0x14(r12)
    subf    r4, r4, r0
    mtlr    r12
    blrl
    lwz     r7, 0x3cc(r30)
    addi    r3, sp, 0x34
    lwz     r6, 0x3c8(r30)
    lwz     r4, 0x3c0(r30)
    subf    r5, r29, r7
    bl      set__7JUTRectFiiii
    lwz     r4, 0x3b4(r30)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
branch_0x80145120:
    lwz     r0, 0x6c(sp)
    mr      r3, r31
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl processAppearTimer__11TGCConsole2Fi
processAppearTimer__11TGCConsole2Fi: # 0x80145140
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r25, 0x6c(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    li      r31, 0x1
    lwz     r3, 0x450(r3)
    bl      update__7TExPaneFv
    cmpwi   r30, 0x18
    and     r31, r31, r3
    bne-    branch_0x80145198
    lwz     r3, 0x458(r29)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x458(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145198:
    lwz     r3, 0x504(r29)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80145208
    li      r25, 0x0
    li      r27, 0x0
    li      r28, 0x0
    li      r26, 0x1
branch_0x801451b8:
    addi    r0, r28, 0x18
    cmpw    r30, r0
    bne-    branch_0x801451f0
    addi    r8, r27, 0x45c
    add     r8, r29, r8
    lwz     r3, 0x0(r8)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6418
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6410
    stb     r26, 0xc(r3)
    lwz     r3, 0x0(r8)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801451f0:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x6
    addi    r27, r27, 0x4
    addi    r28, r28, 0x6
    blt+    branch_0x801451b8
    b       branch_0x80145264

branch_0x80145208:
    li      r25, 0x6
    li      r27, 0x18
    li      r26, 0x1
branch_0x80145214:
    addi    r0, r25, -0x6
    mulli   r3, r0, 0x6
    addi    r0, r3, 0x18
    cmpw    r30, r0
    bne-    branch_0x80145254
    addi    r8, r27, 0x45c
    add     r8, r29, r8
    lwz     r3, 0x0(r8)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6418
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6410
    stb     r26, 0xc(r3)
    lwz     r3, 0x0(r8)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145254:
    addi    r25, r25, 0x1
    cmpwi   r25, 0xa
    addi    r27, r27, 0x4
    blt+    branch_0x80145214
branch_0x80145264:
    lwz     r3, 0x504(r29)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801452d4
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x1
branch_0x80145284:
    addi    r0, r27, 0x20
    cmpw    r30, r0
    bne-    branch_0x801452bc
    addi    r8, r28, 0x484
    add     r8, r29, r8
    lwz     r3, 0x0(r8)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6418
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6410
    stb     r26, 0xc(r3)
    lwz     r3, 0x0(r8)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801452bc:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r28, r28, 0x4
    addi    r27, r27, 0xc
    blt+    branch_0x80145284
    b       branch_0x80145304

branch_0x801452d4:
    cmpwi   r30, 0x20
    bne-    branch_0x80145304
    lwz     r3, 0x48c(r29)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x48c(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145304:
    lwz     r3, 0x454(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8014535c
    lwz     r3, 0x454(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145338
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145338
    li      r4, 0x1
branch_0x80145338:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145360
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145360

branch_0x8014535c:
    li      r31, 0x0
branch_0x80145360:
    lwz     r3, 0x458(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801453b8
    lwz     r3, 0x458(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145394
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145394
    li      r4, 0x1
branch_0x80145394:
    clrlwi. r0, r4, 24
    bne-    branch_0x801453bc
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801453bc

branch_0x801453b8:
    li      r31, 0x0
branch_0x801453bc:
    lwz     r3, 0x504(r29)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014544c
    li      r25, 0x0
    li      r30, 0x0
branch_0x801453d4:
    addi    r26, r30, 0x45c
    add     r26, r29, r26
    lwz     r3, 0x0(r26)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145434
    lwz     r3, 0x0(r26)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145410
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145410
    li      r4, 0x1
branch_0x80145410:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145438
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145438

branch_0x80145434:
    li      r31, 0x0
branch_0x80145438:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x6
    addi    r30, r30, 0x4
    blt+    branch_0x801453d4
    b       branch_0x801454c8

branch_0x8014544c:
    li      r25, 0x6
    li      r30, 0x18
branch_0x80145454:
    addi    r26, r30, 0x45c
    add     r26, r29, r26
    lwz     r3, 0x0(r26)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801454b4
    lwz     r3, 0x0(r26)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145490
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145490
    li      r4, 0x1
branch_0x80145490:
    clrlwi. r0, r4, 24
    bne-    branch_0x801454b8
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801454b8

branch_0x801454b4:
    li      r31, 0x0
branch_0x801454b8:
    addi    r25, r25, 0x1
    cmpwi   r25, 0xa
    addi    r30, r30, 0x4
    blt+    branch_0x80145454
branch_0x801454c8:
    lwz     r3, 0x504(r29)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80145558
    li      r25, 0x0
    li      r30, 0x0
branch_0x801454e0:
    addi    r26, r30, 0x484
    add     r26, r29, r26
    lwz     r3, 0x0(r26)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145540
    lwz     r3, 0x0(r26)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014551c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014551c
    li      r4, 0x1
branch_0x8014551c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145544
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145544

branch_0x80145540:
    li      r31, 0x0
branch_0x80145544:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x801454e0
    b       branch_0x801455b4

branch_0x80145558:
    lwz     r3, 0x48c(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801455b0
    lwz     r3, 0x48c(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014558c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014558c
    li      r4, 0x1
branch_0x8014558c:
    clrlwi. r0, r4, 24
    bne-    branch_0x801455b4
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801455b4

branch_0x801455b0:
    li      r31, 0x0
branch_0x801455b4:
    mr      r3, r31
    lmw     r25, 0x6c(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl processAppearRed__11TGCConsole2Fi
processAppearRed__11TGCConsole2Fi: # 0x801455cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    mr      r30, r3
    addi    r25, r4, 0x0
    li      r31, 0x1
    lwz     r3, 0x42c(r3)
    bl      update__7TExPaneFv
    cmpwi   r25, 0xe
    and     r31, r31, r3
    bne-    branch_0x80145624
    lwz     r3, 0x434(r30)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x434(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145624:
    cmpwi   r25, 0x18
    bne-    branch_0x80145654
    lwz     r3, 0x438(r30)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x438(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145654:
    li      r26, 0x0
    li      r29, 0x0
    li      r28, 0x0
    li      r27, 0x1
branch_0x80145664:
    addi    r0, r28, 0x1c
    cmpw    r25, r0
    bne-    branch_0x8014569c
    addi    r8, r29, 0x440
    add     r8, r30, r8
    lwz     r3, 0x0(r8)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6418
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6410
    stb     r27, 0xc(r3)
    lwz     r3, 0x0(r8)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x8014569c:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    addi    r29, r29, 0x4
    addi    r28, r28, 0x6
    blt+    branch_0x80145664
    cmpwi   r25, 0x20
    bne-    branch_0x801456e0
    lwz     r3, 0x43c(r30)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x43c(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801456e0:
    lwz     r3, 0x430(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145738
    lwz     r3, 0x430(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145714
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145714
    li      r4, 0x1
branch_0x80145714:
    clrlwi. r0, r4, 24
    bne-    branch_0x8014573c
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x8014573c

branch_0x80145738:
    li      r31, 0x0
branch_0x8014573c:
    lwz     r3, 0x434(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145794
    lwz     r3, 0x434(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145770
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145770
    li      r4, 0x1
branch_0x80145770:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145798
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145798

branch_0x80145794:
    li      r31, 0x0
branch_0x80145798:
    lwz     r3, 0x438(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801457f0
    lwz     r3, 0x438(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801457cc
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801457cc
    li      r4, 0x1
branch_0x801457cc:
    clrlwi. r0, r4, 24
    bne-    branch_0x801457f4
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801457f4

branch_0x801457f0:
    li      r31, 0x0
branch_0x801457f4:
    li      r26, 0x0
    li      r29, 0x0
branch_0x801457fc:
    addi    r27, r29, 0x440
    add     r27, r30, r27
    lwz     r3, 0x0(r27)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8014585c
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145838
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145838
    li      r4, 0x1
branch_0x80145838:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145860
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145860

branch_0x8014585c:
    li      r31, 0x0
branch_0x80145860:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x801457fc
    lwz     r3, 0x43c(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801458c8
    lwz     r3, 0x43c(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801458a4
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801458a4
    li      r4, 0x1
branch_0x801458a4:
    clrlwi. r0, r4, 24
    bne-    branch_0x801458cc
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801458cc

branch_0x801458c8:
    li      r31, 0x0
branch_0x801458cc:
    mr      r3, r31
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl processAppearJet__11TGCConsole2Fi
processAppearJet__11TGCConsole2Fi: # 0x801458e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r24, 0x40(sp)
    mr      r30, r3
    addi    r24, r4, 0x0
    li      r31, 0x1
    li      r27, 0x0
    li      r26, 0x4
    lwz     r0, 0x2c(r3)
    cmpwi   r0, 0xa
    bge-    branch_0x80145918
    li      r27, 0x1
branch_0x80145918:
    lbz     r0, 0x428(r30)
    cmplwi  r0, 0xa
    bge-    branch_0x8014592c
    li      r27, 0x1
    li      r26, 0x3
branch_0x8014592c:
    lwz     r3, 0x400(r30)
    bl      update__7TExPaneFv
    cmpwi   r24, 0x7
    and     r31, r31, r3
    bne-    branch_0x80145968
    lwz     r3, 0x408(r30)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x408(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145968:
    addi    r25, r27, 0x0
    mulli   r28, r25, 0x3
    slwi    r29, r27, 2
    li      r27, 0x1
    b       branch_0x801459c0

branch_0x8014597c:
    addi    r0, r28, 0xe
    cmpw    r24, r0
    bne-    branch_0x801459b4
    addi    r8, r29, 0x418
    add     r8, r30, r8
    lwz     r3, 0x0(r8)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6418
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6410
    stb     r27, 0xc(r3)
    lwz     r3, 0x0(r8)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801459b4:
    addi    r25, r25, 0x1
    addi    r29, r29, 0x4
    addi    r28, r28, 0x3
branch_0x801459c0:
    cmpw    r25, r26
    blt+    branch_0x8014597c
    cmpwi   r24, 0x10
    bne-    branch_0x801459f8
    lwz     r3, 0x414(r30)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x414(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801459f8:
    lwz     r3, 0x404(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145a50
    lwz     r3, 0x404(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145a2c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145a2c
    li      r4, 0x1
branch_0x80145a2c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145a54
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145a54

branch_0x80145a50:
    li      r31, 0x0
branch_0x80145a54:
    lwz     r3, 0x408(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145aac
    lwz     r3, 0x408(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145a88
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145a88
    li      r4, 0x1
branch_0x80145a88:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145ab0
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145ab0

branch_0x80145aac:
    li      r31, 0x0
branch_0x80145ab0:
    li      r25, 0x0
    li      r29, 0x0
branch_0x80145ab8:
    addi    r27, r29, 0x418
    add     r27, r30, r27
    lwz     r3, 0x0(r27)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80145b24
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145b00
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145b00
    li      r4, 0x1
branch_0x80145b00:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145b28
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145b28

branch_0x80145b24:
    li      r31, 0x0
branch_0x80145b28:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x80145ab8
    lwz     r3, 0x414(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145b90
    lwz     r3, 0x414(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145b6c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145b6c
    li      r4, 0x1
branch_0x80145b6c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145b94
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145b94

branch_0x80145b90:
    li      r31, 0x0
branch_0x80145b94:
    mr      r3, r31
    lmw     r24, 0x40(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl checkChangeTelopArray__11TGCConsole2Fv
checkChangeTelopArray__11TGCConsole2Fv: # 0x80145bac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    lis     r3, unk_803bfff8@ha
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    addi    r28, r3, unk_803bfff8@l
    lwz     r4, R13Off_m0x6048(r13)
    lwz     r31, 0x574(r30)
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x80145cfc
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x9
    bgt-    branch_0x80145cf0
    lis     r3, unk_803c0354@h
    addi    r3, r3, unk_803c0354@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80145c0c:
    addi    r0, r13, R13Off_m0x7b78
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145c18:
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80145c34
    addi    r0, r13, R13Off_m0x7b70
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145c34:
    li      r0, 0x0
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145c40:
    addi    r0, r28, 0x40
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145c4c:
    addi    r0, r28, 0x4c
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145c58:
    addi    r0, r28, 0x2e4
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145c64:
    addi    r0, r28, 0x2f0
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145c70:
    lis     r29, unk_00050001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, unk_00050001@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80145cb4
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, 0x2
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80145ca8
    addi    r0, r28, 0x34
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145ca8:
    addi    r0, r13, R13Off_m0x7b68
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145cb4:
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r29, 0x2
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80145cd4
    addi    r0, r13, R13Off_m0x7b60
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145cd4:
    addi    r0, r28, 0x28
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145ce0:
    mr      r3, r30
    bl      checkDolpic8__11TGCConsole2Fv
    stw     r3, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145cf0:
    li      r0, 0x0
    stw     r0, 0x574(r30)
    b       branch_0x80145d04

branch_0x80145cfc:
    li      r0, 0x0
    stw     r0, 0x574(r30)
branch_0x80145d04:
    lwz     r0, 0x574(r30)
    cmplw   r31, r0
    beq-    branch_0x80145d18
    li      r0, 0x0
    stb     r0, 0x55c(r30)
branch_0x80145d18:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl processDrawTelop__11TGCConsole2FUl
processDrawTelop__11TGCConsole2FUl: # 0x80145d38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    li      r31, 0x0
    stw     r30, 0x60(sp)
    mr      r30, r3
    lwz     r4, 0x528(r3)
    addi    r3, sp, 0x44
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x52c(r30)
    addi    r3, sp, 0x34
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x558(r30)
    lwz     r0, 0x44(sp)
    lwz     r4, 0x538(r30)
    subf    r0, r3, r0
    cmpw    r4, r0
    bge-    branch_0x80145d98
    li      r31, 0x1
    b       branch_0x80145dc4

branch_0x80145d98:
    lfs     f1, 0x56c(r30)
    addi    r3, r30, 0x538
    lfs     f0, 0x568(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x56c(r30)
    lfs     f0, 0x56c(r30)
    lwz     r5, 0x53c(r30)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r4, 0x5c(sp)
    bl      move__7JUTRectFii
branch_0x80145dc4:
    lwz     r0, 0x6c(sp)
    mr      r3, r31
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl processAppearMario__11TGCConsole2Fi
processAppearMario__11TGCConsole2Fi: # 0x80145de0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    mr      r29, r3
    mr      r30, r4
    lwz     r3, 0x3a8(r3)
    bl      update__7TExPaneFv
    cmpwi   r30, 0xe
    addi    r31, r3, 0x0
    bne-    branch_0x80145e34
    lwz     r3, 0x394(r29)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x394(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145e34:
    cmpwi   r30, 0x18
    bne-    branch_0x80145e64
    lwz     r3, 0x390(r29)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x390(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145e64:
    cmpwi   r30, 0x18
    bne-    branch_0x80145e94
    lwz     r3, 0x398(r29)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x398(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145e94:
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x1
branch_0x80145ea4:
    cmpwi   r25, 0x2
    beq-    branch_0x80145ef8
    addi    r0, r27, 0x18
    cmpw    r30, r0
    bne-    branch_0x80145ee4
    addi    r8, r28, 0x39c
    add     r8, r29, r8
    lwz     r3, 0x0(r8)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    stb     r26, 0xc(r3)
    lwz     r3, 0x0(r8)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80145ee4:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r28, r28, 0x4
    addi    r27, r27, 0x6
    blt+    branch_0x80145ea4
branch_0x80145ef8:
    lwz     r3, 0x38c(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145f50
    lwz     r3, 0x38c(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145f2c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145f2c
    li      r4, 0x1
branch_0x80145f2c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145f54
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145f54

branch_0x80145f50:
    li      r31, 0x0
branch_0x80145f54:
    lwz     r3, 0x394(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80145fac
    lwz     r3, 0x394(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145f88
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145f88
    li      r4, 0x1
branch_0x80145f88:
    clrlwi. r0, r4, 24
    bne-    branch_0x80145fb0
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80145fb0

branch_0x80145fac:
    li      r31, 0x0
branch_0x80145fb0:
    lwz     r3, 0x390(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146008
    lwz     r3, 0x390(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145fe4
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80145fe4
    li      r4, 0x1
branch_0x80145fe4:
    clrlwi. r0, r4, 24
    bne-    branch_0x8014600c
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x8014600c

branch_0x80146008:
    li      r31, 0x0
branch_0x8014600c:
    lwz     r3, 0x398(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146064
    lwz     r3, 0x398(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146040
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146040
    li      r4, 0x1
branch_0x80146040:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146068
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146068

branch_0x80146064:
    li      r31, 0x0
branch_0x80146068:
    li      r25, 0x0
    li      r30, 0x0
branch_0x80146070:
    cmpwi   r25, 0x2
    beq-    branch_0x801460ec
    addi    r26, r30, 0x39c
    add     r26, r29, r26
    lwz     r3, 0x0(r26)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801460d8
    lwz     r3, 0x0(r26)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801460b4
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801460b4
    li      r4, 0x1
branch_0x801460b4:
    clrlwi. r0, r4, 24
    bne-    branch_0x801460dc
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801460dc

branch_0x801460d8:
    li      r31, 0x0
branch_0x801460dc:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x80146070
branch_0x801460ec:
    mr      r3, r31
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl processAppearCoin__11TGCConsole2Fi
processAppearCoin__11TGCConsole2Fi: # 0x80146104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stmw    r25, 0xac(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    li      r31, 0x1
    lwz     r3, 0x108(r3)
    bl      update__7TExPaneFv
    cmpwi   r30, 0xe
    and     r31, r31, r3
    bne-    branch_0x8014615c
    lwz     r3, 0xcc(r29)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0xcc(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x8014615c:
    cmpwi   r30, 0x18
    bne-    branch_0x8014618c
    lwz     r3, 0xd0(r29)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0xd0(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x8014618c:
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x1
branch_0x8014619c:
    lwz     r0, 0x6c(r29)
    cmpwi   r0, 0x64
    bge-    branch_0x801461b0
    cmpwi   r25, 0x2
    beq-    branch_0x801461e8
branch_0x801461b0:
    addi    r0, r27, 0x1c
    cmpw    r30, r0
    bne-    branch_0x801461e8
    addi    r8, r28, 0xd4
    add     r8, r29, r8
    lwz     r3, 0x0(r8)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    stb     r26, 0xc(r3)
    lwz     r3, 0x0(r8)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801461e8:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r28, r28, 0x4
    addi    r27, r27, 0x6
    blt+    branch_0x8014619c
    lwz     r3, 0xc8(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146254
    lwz     r3, 0xc8(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146230
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146230
    li      r4, 0x1
branch_0x80146230:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146258
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146258

branch_0x80146254:
    li      r31, 0x0
branch_0x80146258:
    lwz     r3, 0xcc(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801462b0
    lwz     r3, 0xcc(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014628c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014628c
    li      r4, 0x1
branch_0x8014628c:
    clrlwi. r0, r4, 24
    bne-    branch_0x801462b4
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801462b4

branch_0x801462b0:
    li      r31, 0x0
branch_0x801462b4:
    lwz     r3, 0xd0(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8014630c
    lwz     r3, 0xd0(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801462e8
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801462e8
    li      r4, 0x1
branch_0x801462e8:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146310
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146310

branch_0x8014630c:
    li      r31, 0x0
branch_0x80146310:
    li      r25, 0x0
    li      r30, 0x0
branch_0x80146318:
    lwz     r0, 0x6c(r29)
    cmpwi   r0, 0x64
    bge-    branch_0x8014632c
    cmpwi   r25, 0x2
    beq-    branch_0x8014639c
branch_0x8014632c:
    addi    r26, r30, 0xd4
    add     r26, r29, r26
    lwz     r3, 0x0(r26)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80146398
    lwz     r3, 0x0(r26)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146374
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146374
    li      r4, 0x1
branch_0x80146374:
    clrlwi. r0, r4, 24
    bne-    branch_0x8014639c
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x8014639c

branch_0x80146398:
    li      r31, 0x0
branch_0x8014639c:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x80146318
    lwz     r4, 0xcc(r29)
    addi    r3, sp, 0x78
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r8, 0x78(sp)
    lis     r5, 0x4330
    lwz     r0, 0x80(sp)
    mr      r3, r31
    lwz     r7, 0x7c(sp)
    subf    r0, r8, r0
    lwz     r6, 0x84(sp)
    xoris   r4, r0, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r0, r8, 0x8000
    stw     r4, 0x94(sp)
    subf    r4, r7, r6
    lfs     f5, -0x4c70(r2)
    stw     r0, 0x8c(sp)
    xoris   r4, r4, 0x8000
    xoris   r0, r7, 0x8000
    lwz     r6, 0x124(r29)
    stw     r4, 0xa4(sp)
    stw     r0, 0x9c(sp)
    stw     r5, 0x90(sp)
    stw     r5, 0x88(sp)
    lfd     f1, 0x90(sp)
    stw     r5, 0xa0(sp)
    lfd     f0, 0x88(sp)
    fsubs   f1, f1, f4
    stw     r5, 0x98(sp)
    fsubs   f0, f0, f4
    lfd     f3, 0xa0(sp)
    lfd     f2, 0x98(sp)
    fsubs   f3, f3, f4
    fsubs   f2, f2, f4
    fmadds  f0, f5, f1, f0
    fmadds  f1, f5, f3, f2
    stfs    f0, 0x160(r6)
    stfs    f1, 0x164(r6)
    lfs     f0, -0x4c74(r2)
    stfs    f0, 0x168(r6)
    lwz     r0, 0xcc(sp)
    lmw     r25, 0xac(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl processAppearTank__11TGCConsole2Fi
processAppearTank__11TGCConsole2Fi: # 0x80146468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    li      r31, 0x1
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    mr      r29, r3
    lwz     r3, 0x2f8(r3)
    bl      update__7TExPaneFv
    cmpwi   r30, 0x6
    and     r31, r31, r3
    bne-    branch_0x801464c8
    lwz     r3, 0x270(r29)
    li      r0, 0x1
    li      r4, 0x28
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x270(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801464c8:
    cmpwi   r30, 0xe
    bne-    branch_0x801464f8
    lwz     r3, 0x29c(r29)
    li      r0, 0x1
    li      r4, 0x28
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x29c(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801464f8:
    cmpwi   r30, 0x1a
    bne-    branch_0x80146538
    lwz     r3, 0x274(r29)
    li      r6, 0x1
    li      r0, 0x64
    lwz     r4, 0x0(r3)
    li      r3, 0x0
    addi    r5, sp, 0x44
    stb     r6, 0xc(r4)
    li      r4, 0x28
    addi    r6, r13, R13Off_m0x6410
    stw     r3, 0x44(sp)
    addi    r7, r13, R13Off_m0x6410
    stw     r0, 0x48(sp)
    lwz     r3, 0x274(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80146538:
    lwz     r3, 0x26c(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146590
    lwz     r3, 0x26c(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014656c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014656c
    li      r4, 0x1
branch_0x8014656c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146594
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146594

branch_0x80146590:
    li      r31, 0x0
branch_0x80146594:
    cmpwi   r30, 0x6
    blt-    branch_0x801465f4
    lwz     r3, 0x270(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801465f4
    lwz     r3, 0x270(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801465d0
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801465d0
    li      r4, 0x1
branch_0x801465d0:
    clrlwi. r0, r4, 24
    bne-    branch_0x801465f8
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801465f8

branch_0x801465f4:
    li      r31, 0x0
branch_0x801465f8:
    cmpwi   r30, 0xe
    blt-    branch_0x80146658
    lwz     r3, 0x29c(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146658
    lwz     r3, 0x29c(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146634
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146634
    li      r4, 0x1
branch_0x80146634:
    clrlwi. r0, r4, 24
    bne-    branch_0x8014665c
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x8014665c

branch_0x80146658:
    li      r31, 0x0
branch_0x8014665c:
    cmpwi   r30, 0x1a
    blt-    branch_0x801466cc
    lwz     r3, 0x274(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801466cc
    lwz     r3, 0x274(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146698
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146698
    li      r4, 0x1
branch_0x80146698:
    clrlwi. r0, r4, 24
    bne-    branch_0x801466bc
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6410
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6408
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801466d0

branch_0x801466bc:
    lwz     r3, 0x288(r29)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x801466d0

branch_0x801466cc:
    li      r31, 0x0
branch_0x801466d0:
    lwz     r0, 0x64(sp)
    mr      r3, r31
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl processDownCoin__11TGCConsole2Fi
processDownCoin__11TGCConsole2Fi: # 0x801466f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r24, 0xa0(sp)
    addi    r30, r4, 0x0
    cmpwi   r30, 0xe
    addi    r29, r3, 0x0
    li      r31, 0x1
    bne-    branch_0x80146738
    li      r0, 0x0
    stw     r0, 0x58(sp)
    addi    r5, sp, 0x58
    li      r4, 0x32
    stw     r0, 0x5c(sp)
    addi    r6, r13, R13Off_m0x63f8
    addi    r7, r13, R13Off_m0x63f8
    lwz     r3, 0xcc(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80146738:
    cmpwi   r30, 0x18
    bne-    branch_0x80146764
    li      r0, 0x0
    stw     r0, 0x50(sp)
    addi    r5, sp, 0x50
    li      r4, 0x32
    stw     r0, 0x54(sp)
    addi    r6, r13, R13Off_m0x63f8
    addi    r7, r13, R13Off_m0x63f8
    lwz     r3, 0xd0(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80146764:
    li      r28, 0x0
    addi    r26, r28, 0x0
    addi    r25, sp, 0x48
    li      r24, 0x0
    li      r27, 0x0
branch_0x80146778:
    addi    r0, r28, 0x1c
    cmpw    r30, r0
    bne-    branch_0x801467a8
    stw     r26, 0x48(sp)
    addi    r0, r27, 0xd4
    addi    r5, r25, 0x0
    stw     r28, 0x4c(sp)
    li      r4, 0x32
    addi    r6, r13, R13Off_m0x63f8
    lwzx    r3, r29, r0
    addi    r7, r13, R13Off_m0x63f8
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801467a8:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x3
    addi    r27, r27, 0x4
    addi    r28, r28, 0x6
    blt+    branch_0x80146778
    lwz     r3, 0xc8(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146814
    lwz     r3, 0xc8(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801467f0
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801467f0
    li      r4, 0x1
branch_0x801467f0:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146818
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x63f8
    addi    r6, r13, R13Off_m0x63f8
    addi    r7, r13, R13Off_m0x63f0
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146818

branch_0x80146814:
    li      r31, 0x0
branch_0x80146818:
    cmpwi   r30, 0xe
    bge-    branch_0x80146828
    li      r31, 0x0
    b       branch_0x80146884

branch_0x80146828:
    lwz     r3, 0xcc(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146880
    lwz     r3, 0xcc(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014685c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014685c
    li      r4, 0x1
branch_0x8014685c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146884
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x63f8
    addi    r6, r13, R13Off_m0x63f8
    addi    r7, r13, R13Off_m0x63f0
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146884

branch_0x80146880:
    li      r31, 0x0
branch_0x80146884:
    cmpwi   r30, 0x18
    bge-    branch_0x80146894
    li      r31, 0x0
    b       branch_0x801468f0

branch_0x80146894:
    lwz     r3, 0xd0(r29)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801468ec
    lwz     r3, 0xd0(r29)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801468c8
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801468c8
    li      r4, 0x1
branch_0x801468c8:
    clrlwi. r0, r4, 24
    bne-    branch_0x801468f0
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x63f8
    addi    r6, r13, R13Off_m0x63f8
    addi    r7, r13, R13Off_m0x63f0
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801468f0

branch_0x801468ec:
    li      r31, 0x0
branch_0x801468f0:
    li      r24, 0x0
    li      r28, 0x0
    li      r27, 0x0
branch_0x801468fc:
    addi    r0, r27, 0x1c
    cmpw    r30, r0
    bge-    branch_0x80146910
    li      r31, 0x0
    b       branch_0x80146984

branch_0x80146910:
    addi    r25, r28, 0xd4
    add     r25, r29, r25
    lwz     r3, 0x0(r25)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r25)
    lbz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80146980
    lwz     r0, 0x14(r3)
    li      r4, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x8014695c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8014695c
    li      r4, 0x1
branch_0x8014695c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146984
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x63f8
    addi    r6, r13, R13Off_m0x63f8
    addi    r7, r13, R13Off_m0x63f0
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146984

branch_0x80146980:
    li      r31, 0x0
branch_0x80146984:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x3
    addi    r28, r28, 0x4
    addi    r27, r27, 0x6
    blt+    branch_0x801468fc
    lwz     r3, 0x108(r29)
    bl      update__7TExPaneFv
    lwz     r4, 0xcc(r29)
    and     r31, r31, r3
    addi    r3, sp, 0x6c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r8, 0x6c(sp)
    lis     r5, 0x4330
    lwz     r0, 0x74(sp)
    mr      r3, r31
    lwz     r7, 0x70(sp)
    subf    r0, r8, r0
    lwz     r6, 0x78(sp)
    xoris   r4, r0, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r0, r8, 0x8000
    stw     r4, 0x8c(sp)
    subf    r4, r7, r6
    lfs     f5, -0x4c70(r2)
    stw     r0, 0x84(sp)
    xoris   r4, r4, 0x8000
    xoris   r0, r7, 0x8000
    lwz     r6, 0x124(r29)
    stw     r4, 0x9c(sp)
    stw     r0, 0x94(sp)
    stw     r5, 0x88(sp)
    stw     r5, 0x80(sp)
    lfd     f1, 0x88(sp)
    stw     r5, 0x98(sp)
    lfd     f0, 0x80(sp)
    fsubs   f1, f1, f4
    stw     r5, 0x90(sp)
    fsubs   f0, f0, f4
    lfd     f3, 0x98(sp)
    lfd     f2, 0x90(sp)
    fsubs   f3, f3, f4
    fsubs   f2, f2, f4
    fmadds  f0, f5, f1, f0
    fmadds  f1, f5, f3, f2
    stfs    f0, 0x160(r6)
    stfs    f1, 0x164(r6)
    lfs     f0, -0x4c74(r2)
    stfs    f0, 0x168(r6)
    lwz     r0, 0xc4(sp)
    lmw     r24, 0xa0(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl processAppearStar__11TGCConsole2Fi
processAppearStar__11TGCConsole2Fi: # 0x80146a60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stmw    r25, 0x14c(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    li      r31, 0x1
    lwz     r3, 0x140(r3)
    bl      update__7TExPaneFv
    and     r31, r31, r3
    lwz     r3, 0x160(r28)
    bl      update__7TExPaneFv
    cmpwi   r29, 0xe
    and     r31, r31, r3
    bne-    branch_0x80146ae8
    lwz     r3, 0x12c(r28)
    li      r25, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r25, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x12c(r28)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x14c(r28)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    stb     r25, 0xc(r3)
    lwz     r3, 0x14c(r28)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80146ae8:
    cmpwi   r29, 0x18
    bne-    branch_0x80146b3c
    lwz     r3, 0x130(r28)
    li      r25, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r25, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x130(r28)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x150(r28)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0x0(r3)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    stb     r25, 0xc(r3)
    lwz     r3, 0x150(r28)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80146b3c:
    lwz     r3, R13Off_m0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    addi    r25, r3, 0x0
    li      r30, 0x0
    li      r27, 0x0
    li      r26, 0x0
branch_0x80146b58:
    addi    r0, r26, 0x1c
    cmpw    r29, r0
    bne-    branch_0x80146bd8
    cmpwi   r30, 0x2
    bne-    branch_0x80146ba8
    lbz     r0, 0x50(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80146b80
    cmpwi   r25, 0x64
    bge-    branch_0x80146b90
branch_0x80146b80:
    cmpwi   r25, 0x64
    ble-    branch_0x80146bbc
    cmplwi  r0, 0x0
    beq-    branch_0x80146bbc
branch_0x80146b90:
    addi    r0, r27, 0x134
    lwzx    r3, r28, r0
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    b       branch_0x80146bbc

branch_0x80146ba8:
    addi    r0, r27, 0x134
    lwzx    r3, r28, r0
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x80146bbc:
    addi    r0, r27, 0x134
    lwzx    r3, r28, r0
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80146bd8:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x3
    addi    r27, r27, 0x4
    addi    r26, r26, 0x6
    blt+    branch_0x80146b58
    lis     r4, unk_00040001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00040001@l
    bl      getFlag__12TFlagManagerCFUl
    li      r25, 0x0
    li      r26, 0x46
branch_0x80146c04:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r26, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80146c1c
    addi    r25, r25, 0x1
branch_0x80146c1c:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x56
    blt+    branch_0x80146c04
    li      r26, 0x6c
branch_0x80146c2c:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r26, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80146c44
    addi    r25, r25, 0x1
branch_0x80146c44:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x73
    ble+    branch_0x80146c2c
    mulli   r3, r25, 0xa
    lwz     r0, 0x168(r28)
    subf.   r25, r3, r0
    bge-    branch_0x80146c64
    li      r25, 0x0
branch_0x80146c64:
    li      r26, 0x0
    li      r30, 0x0
    li      r27, 0x0
branch_0x80146c70:
    addi    r0, r27, 0x1c
    cmpw    r29, r0
    bne-    branch_0x80146cd4
    cmpwi   r26, 0x2
    bne-    branch_0x80146ca4
    cmpwi   r25, 0x64
    blt-    branch_0x80146cb8
    addi    r0, r30, 0x154
    lwzx    r3, r28, r0
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    b       branch_0x80146cb8

branch_0x80146ca4:
    addi    r0, r30, 0x154
    lwzx    r3, r28, r0
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
branch_0x80146cb8:
    addi    r0, r30, 0x154
    lwzx    r3, r28, r0
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x80146cd4:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r30, r30, 0x4
    addi    r27, r27, 0x6
    blt+    branch_0x80146c70
    lwz     r3, 0x128(r28)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146d40
    lwz     r3, 0x128(r28)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146d1c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146d1c
    li      r4, 0x1
branch_0x80146d1c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146d44
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146d44

branch_0x80146d40:
    li      r31, 0x0
branch_0x80146d44:
    lwz     r3, 0x148(r28)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146d9c
    lwz     r3, 0x148(r28)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146d78
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146d78
    li      r4, 0x1
branch_0x80146d78:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146da0
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146da0

branch_0x80146d9c:
    li      r31, 0x0
branch_0x80146da0:
    lwz     r3, 0x12c(r28)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146df8
    lwz     r3, 0x12c(r28)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146dd4
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146dd4
    li      r4, 0x1
branch_0x80146dd4:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146dfc
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146dfc

branch_0x80146df8:
    li      r31, 0x0
branch_0x80146dfc:
    lwz     r3, 0x14c(r28)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146e54
    lwz     r3, 0x14c(r28)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146e30
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146e30
    li      r4, 0x1
branch_0x80146e30:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146e58
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146e58

branch_0x80146e54:
    li      r31, 0x0
branch_0x80146e58:
    lwz     r3, 0x130(r28)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146eb0
    lwz     r3, 0x130(r28)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146e8c
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146e8c
    li      r4, 0x1
branch_0x80146e8c:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146eb4
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146eb4

branch_0x80146eb0:
    li      r31, 0x0
branch_0x80146eb4:
    lwz     r3, 0x150(r28)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80146f0c
    lwz     r3, 0x150(r28)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146ee8
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146ee8
    li      r4, 0x1
branch_0x80146ee8:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146f10
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146f10

branch_0x80146f0c:
    li      r31, 0x0
branch_0x80146f10:
    li      r26, 0x0
    li      r29, 0x0
branch_0x80146f18:
    addi    r25, r29, 0x134
    add     r25, r28, r25
    lwz     r3, 0x0(r25)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80146f84
    lwz     r3, 0x0(r25)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146f60
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146f60
    li      r4, 0x1
branch_0x80146f60:
    clrlwi. r0, r4, 24
    bne-    branch_0x80146f88
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80146f88

branch_0x80146f84:
    li      r31, 0x0
branch_0x80146f88:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r29, r29, 0x4
    blt+    branch_0x80146f18
    li      r26, 0x0
    li      r29, 0x0
branch_0x80146fa0:
    addi    r25, r29, 0x154
    add     r25, r28, r25
    lwz     r3, 0x0(r25)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80147000
    lwz     r3, 0x0(r25)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146fdc
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80146fdc
    li      r4, 0x1
branch_0x80146fdc:
    clrlwi. r0, r4, 24
    bne-    branch_0x80147004
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80147004

branch_0x80147000:
    li      r31, 0x0
branch_0x80147004:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r29, r29, 0x4
    blt+    branch_0x80146fa0
    lwz     r4, 0x12c(r28)
    addi    r3, sp, 0xf0
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r7, 0xf0(sp)
    lis     r6, 0x4330
    lwz     r0, 0xf8(sp)
    mr      r3, r31
    lwz     r8, 0xf4(sp)
    subf    r4, r7, r0
    lwz     r0, 0xfc(sp)
    xoris   r5, r4, 0x8000
    lfd     f5, -0x4c38(r2)
    stw     r5, 0x144(sp)
    xoris   r4, r7, 0x8000
    subf    r0, r8, r0
    lfs     f6, -0x4c70(r2)
    stw     r4, 0x13c(sp)
    xoris   r4, r0, 0x8000
    lwz     r5, 0x144(r28)
    stw     r6, 0x140(sp)
    xoris   r0, r8, 0x8000
    stw     r6, 0x138(sp)
    lfd     f1, 0x140(sp)
    lfd     f0, 0x138(sp)
    stw     r4, 0x134(sp)
    fsubs   f1, f1, f5
    fsubs   f0, f0, f5
    stw     r0, 0x12c(sp)
    fmadds  f2, f6, f1, f0
    stw     r6, 0x130(sp)
    stw     r6, 0x128(sp)
    lfd     f1, 0x130(sp)
    lfd     f0, 0x128(sp)
    fsubs   f1, f1, f5
    stfs    f2, 0x160(r5)
    fsubs   f0, f0, f5
    fmadds  f0, f6, f1, f0
    stfs    f0, 0x164(r5)
    lfs     f4, -0x4c74(r2)
    stfs    f4, 0x168(r5)
    lwz     r4, 0x14c(r28)
    lwz     r5, 0x0(r4)
    lwz     r4, 0x24(r5)
    lwz     r0, 0x28(r5)
    stw     r4, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lwz     r4, 0x2c(r5)
    lwz     r0, 0x30(r5)
    stw     r4, 0xf8(sp)
    stw     r0, 0xfc(sp)
    lwz     r5, 0xf0(sp)
    lwz     r4, 0xf8(sp)
    xoris   r0, r5, 0x8000
    lwz     r7, 0xf4(sp)
    subf    r4, r5, r4
    stw     r0, 0x10c(sp)
    xoris   r4, r4, 0x8000
    lwz     r5, 0xfc(sp)
    stw     r4, 0x114(sp)
    xoris   r0, r7, 0x8000
    subf    r4, r7, r5
    lwz     r5, 0x164(r28)
    xoris   r4, r4, 0x8000
    stw     r4, 0x124(sp)
    stw     r0, 0x11c(sp)
    stw     r6, 0x110(sp)
    stw     r6, 0x108(sp)
    lfd     f1, 0x110(sp)
    stw     r6, 0x120(sp)
    lfd     f0, 0x108(sp)
    fsubs   f1, f1, f5
    stw     r6, 0x118(sp)
    fsubs   f0, f0, f5
    lfd     f3, 0x120(sp)
    lfd     f2, 0x118(sp)
    fsubs   f3, f3, f5
    fmadds  f0, f6, f1, f0
    fsubs   f2, f2, f5
    stfs    f0, 0x160(r5)
    fmadds  f1, f6, f3, f2
    stfs    f1, 0x164(r5)
    stfs    f4, 0x168(r5)
    lwz     r0, 0x16c(sp)
    lmw     r25, 0x14c(sp)
    addi    sp, sp, 0x168
    mtlr    r0
    blr


.globl setPaneOffset__7TExPaneFlllll
setPaneOffset__7TExPaneFlllll: # 0x80147178
    mflr    r0
    xoris   r6, r6, 0x8000
    stw     r0, 0x4(sp)
    xoris   r0, r5, 0x8000
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r8, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r7
    xoris   r5, r30, 0x8000
    stw     r29, 0x44(sp)
    mr      r29, r3
    addi    r3, r29, 0x14
    stw     r6, 0x34(sp)
    lis     r6, 0x4330
    lfd     f4, -0x4c38(r2)
    stw     r0, 0x3c(sp)
    xoris   r0, r31, 0x8000
    stw     r5, 0x2c(sp)
    stw     r0, 0x24(sp)
    stw     r6, 0x30(sp)
    stw     r6, 0x38(sp)
    lfd     f0, 0x30(sp)
    stw     r6, 0x28(sp)
    lfd     f1, 0x38(sp)
    fsubs   f2, f0, f4
    stw     r6, 0x20(sp)
    lfd     f3, 0x28(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x20(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r30
    lwz     r12, 0xc(r12)
    add     r5, r0, r31
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r29)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl roundf_i___8TCoord2DCFf
roundf_i___8TCoord2DCFf: # 0x80147244
    stwu    sp, -0x18(sp)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014725c
    lfs     f0, -0x4c70(r2)
    b       branch_0x80147260

branch_0x8014725c:
    lfs     f0, -0x4c6c(r2)
branch_0x80147260:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl set__Q28JUtility6TColorFUcUcUcUc
set__Q28JUtility6TColorFUcUcUcUc: # 0x80147278
    stb     r4, 0x0(r3)
    stb     r5, 0x1(r3)
    stb     r6, 0x2(r3)
    stb     r7, 0x3(r3)
    blr


.globl processInsertLife__11TGCConsole2Fi
processInsertLife__11TGCConsole2Fi: # 0x8014728c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x1
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    lwz     r3, 0x1c4(r3)
    bl      update__10TBoundPaneFv
    cmpwi   r29, 0xe
    and     r31, r31, r3
    bne-    branch_0x801472ec
    lwz     r3, 0x178(r30)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x178(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x801472ec:
    cmpwi   r29, 0x18
    bne-    branch_0x8014731c
    lwz     r3, 0x260(r30)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x260(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
branch_0x8014731c:
    lwz     r3, 0x174(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80147374
    lwz     r3, 0x174(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80147350
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80147350
    li      r4, 0x1
branch_0x80147350:
    clrlwi. r0, r4, 24
    bne-    branch_0x80147378
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80147378

branch_0x80147374:
    li      r31, 0x0
branch_0x80147378:
    lwz     r3, 0x178(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801473d0
    lwz     r3, 0x178(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801473ac
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801473ac
    li      r4, 0x1
branch_0x801473ac:
    clrlwi. r0, r4, 24
    bne-    branch_0x801473d4
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x801473d4

branch_0x801473d0:
    li      r31, 0x0
branch_0x801473d4:
    lwz     r3, 0x260(r30)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8014742c
    lwz     r3, 0x260(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80147408
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80147408
    li      r4, 0x1
branch_0x80147408:
    clrlwi. r0, r4, 24
    bne-    branch_0x80147430
    li      r4, 0x1e
    addi    r5, r13, R13Off_m0x6428
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6420
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r31, 0x0
    b       branch_0x80147430

branch_0x8014742c:
    li      r31, 0x0
branch_0x80147430:
    lwz     r0, 0x44(sp)
    mr      r3, r31
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl processAppearLife__11TGCConsole2Fi
processAppearLife__11TGCConsole2Fi: # 0x80147450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    lwz     r5, R13Off_m0x60d8(r13)
    lha     r0, 0x120(r5)
    extsh.  r0, r0
    beq-    branch_0x80147490
    lfs     f0, 0x12c(r5)
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    extsh.  r0, r0
    bne-    branch_0x80147498
branch_0x80147490:
    li      r3, 0x1
    b       branch_0x80147530

branch_0x80147498:
    cmpwi   r4, 0x0
    li      r30, 0x1
    bne-    branch_0x80147508
    li      r4, 0x0
    li      r3, -0xa
    stw     r4, 0x34(sp)
    li      r0, 0xa
    stw     r3, 0x3c(sp)
    addi    r7, sp, 0x34
    addi    r6, sp, 0x3c
    stw     r4, 0x38(sp)
    addi    r5, sp, 0x44
    li      r4, 0x28
    stw     r0, 0x40(sp)
    lha     r3, 0x1ca(r31)
    lha     r0, 0x1c8(r31)
    stw     r0, 0x44(sp)
    stw     r3, 0x48(sp)
    lwz     r3, 0x1c4(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x1c4(r31)
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x1c4(r31)
    bl      update__10TBoundPaneFv
    li      r30, 0x0
    b       branch_0x8014752c

branch_0x80147508:
    cmpwi   r4, 0x64
    bge-    branch_0x80147518
    li      r30, 0x0
    b       branch_0x8014752c

branch_0x80147518:
    lwz     r3, 0x1c4(r31)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8014752c
    li      r30, 0x0
branch_0x8014752c:
    mr      r3, r30
branch_0x80147530:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl getFinishedTime__11TGCConsole2Fv
getFinishedTime__11TGCConsole2Fv: # 0x80147548
    lwz     r3, 0x500(r3)
    blr


.globl stopMoveTimer__11TGCConsole2Fv
stopMoveTimer__11TGCConsole2Fv: # 0x80147550
    lbz     r0, 0x4a(r3)
    cmplwi  r0, 0x0
    beqlr-    

    li      r0, 0x0
    stb     r0, 0x4a(r3)
    blr


.globl startMoveTimer__11TGCConsole2Fi
startMoveTimer__11TGCConsole2Fi: # 0x80147568
    li      r5, 0x1
    mulli   r0, r4, 0x64
    stb     r5, 0x4a(r3)
    stw     r0, 0x51c(r3)
    blr


.globl countBlueCoin__11TGCConsole2Fv
countBlueCoin__11TGCConsole2Fv: # 0x8014757c
    mflr    r0
    lis     r4, unk_00040001@h
    stw     r0, 0x4(sp)
    addi    r4, r4, unk_00040001@l
    stwu    sp, -0x160(sp)
    stfd    f31, 0x158(sp)
    stw     r31, 0x154(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x150(sp)
    stw     r29, 0x14c(sp)
    stw     r28, 0x148(sp)
    lwz     r0, R13Off_m0x6060(r13)
    mr      r3, r0
    bl      getFlag__12TFlagManagerCFUl
    lwz     r4, 0x168(r31)
    cmpw    r4, r3
    beq-    branch_0x801479c0
    addi    r0, r4, 0x1
    stw     r0, 0x168(r31)
    li      r28, 0x0
    li      r29, 0x46
branch_0x801475d0:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r29, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x801475e8
    addi    r28, r28, 0x1
branch_0x801475e8:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x56
    blt+    branch_0x801475d0
    li      r29, 0x6c
branch_0x801475f8:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r29, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80147610
    addi    r28, r28, 0x1
branch_0x80147610:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x74
    blt+    branch_0x801475f8
    mulli   r3, r28, 0xa
    lwz     r0, 0x168(r31)
    subf.   r29, r3, r0
    bge-    branch_0x80147630
    li      r29, 0x0
branch_0x80147630:
    cmpwi   r29, 0x64
    bge-    branch_0x801476e8
    xoris   r0, r29, 0x8000
    lwz     r3, 0x154(r31)
    stw     r0, 0x144(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0x140(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0x140(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x138(sp)
    lwz     r0, 0x13c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x158(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r29
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r29
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x15c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801477f0
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x801477f0

branch_0x801476e8:
    xoris   r0, r29, 0x8000
    lwz     r3, 0x154(r31)
    stw     r0, 0x13c(sp)
    lis     r28, 0x4330
    lfd     f1, -0x4c38(r2)
    li      r5, 0x0
    stw     r28, 0x138(sp)
    lfs     f2, -0x4c40(r2)
    lfd     f0, 0x138(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f31, f0
    stfd    f31, 0x140(sp)
    lwz     r0, 0x144(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    stfd    f31, 0x130(sp)
    li      r5, 0x0
    lwz     r3, 0x158(r31)
    lwz     r0, 0x134(sp)
    lfd     f1, -0x4c38(r2)
    mulli   r0, r0, 0x64
    lfs     f2, -0x4c44(r2)
    lwz     r3, 0x0(r3)
    subf    r30, r0, r29
    xoris   r0, r30, 0x8000
    stw     r0, 0x12c(sp)
    stw     r28, 0x128(sp)
    lfd     f0, 0x128(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x120(sp)
    lwz     r0, 0x124(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x15c(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r30
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r30
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x15c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801477f0
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x801477f0:
    lwz     r3, 0x160(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801479ac
    lwz     r4, 0x158(r31)
    addi    r3, sp, 0x10c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x10c(sp)
    lis     r30, 0x4330
    lwz     r3, 0x114(sp)
    li      r5, 0x1fc
    xoris   r0, r4, 0x8000
    subf    r3, r4, r3
    stw     r0, 0x12c(sp)
    xoris   r0, r3, 0x8000
    lfd     f2, -0x4c38(r2)
    stw     r0, 0x124(sp)
    addi    r4, sp, 0x100
    lfs     f3, -0x4c70(r2)
    li      r6, 0x0
    stw     r30, 0x120(sp)
    li      r7, 0x0
    stw     r30, 0x128(sp)
    lfd     f1, 0x120(sp)
    lfd     f0, 0x128(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x100(sp)
    lwz     r8, 0x110(sp)
    lwz     r3, 0x118(sp)
    xoris   r0, r8, 0x8000
    stw     r0, 0x13c(sp)
    subf    r3, r8, r3
    xoris   r0, r3, 0x8000
    stw     r0, 0x134(sp)
    stw     r30, 0x130(sp)
    stw     r30, 0x138(sp)
    lfd     f1, 0x130(sp)
    lfd     f0, 0x138(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x104(sp)
    lfs     f0, -0x4c74(r2)
    stfs    f0, 0x108(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lis     r3, unk_66666667@h
    addi    r0, r3, unk_66666667@l
    mulhw   r0, r0, r29
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf.   r0, r0, r29
    bne-    branch_0x801479b4
    lwz     r3, 0x154(r31)
    addi    r4, sp, 0x100
    lfd     f2, -0x4c38(r2)
    li      r5, 0x1fc
    lwz     r8, 0x0(r3)
    lfs     f3, -0x4c70(r2)
    li      r6, 0x0
    lwz     r3, 0x24(r8)
    li      r7, 0x0
    lwz     r0, 0x28(r8)
    stw     r3, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r3, 0x2c(r8)
    lwz     r0, 0x30(r8)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r8, 0x10c(sp)
    lwz     r3, 0x114(sp)
    xoris   r0, r8, 0x8000
    stw     r0, 0x12c(sp)
    subf    r3, r8, r3
    xoris   r0, r3, 0x8000
    stw     r0, 0x124(sp)
    stw     r30, 0x120(sp)
    stw     r30, 0x128(sp)
    lfd     f1, 0x120(sp)
    lfd     f0, 0x128(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x100(sp)
    lwz     r8, 0x110(sp)
    lwz     r3, 0x118(sp)
    xoris   r0, r8, 0x8000
    stw     r0, 0x13c(sp)
    subf    r3, r8, r3
    xoris   r0, r3, 0x8000
    stw     r0, 0x134(sp)
    stw     r30, 0x130(sp)
    stw     r30, 0x138(sp)
    lfd     f1, 0x130(sp)
    lfd     f0, 0x138(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x104(sp)
    lfs     f0, -0x4c74(r2)
    stfs    f0, 0x108(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    b       branch_0x801479b4

branch_0x801479ac:
    mr      r3, r31
    bl      startAppearStar__11TGCConsole2Fv
branch_0x801479b4:
    stw     r29, 0x170(r31)
    li      r0, 0x1
    sth     r0, 0x16c(r31)
branch_0x801479c0:
    lhz     r3, 0x16c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801479e8
    addi    r0, r3, 0x1
    sth     r0, 0x16c(r31)
    lhz     r0, 0x16c(r31)
    cmplwi  r0, 0x190
    ble-    branch_0x801479e8
    li      r0, 0x0
    sth     r0, 0x16c(r31)
branch_0x801479e8:
    lwz     r0, 0x164(sp)
    lfd     f31, 0x158(sp)
    lwz     r31, 0x154(sp)
    mtlr    r0
    lwz     r30, 0x150(sp)
    lwz     r29, 0x14c(sp)
    lwz     r28, 0x148(sp)
    addi    sp, sp, 0x160
    blr


.globl countShine__11TGCConsole2Fv
countShine__11TGCConsole2Fv: # 0x80147a0c
    mflr    r0
    lis     r4, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x2a8(sp)
    stmw    r27, 0x294(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x6060(r13)
    mr      r3, r0
    bl      getFlag__12TFlagManagerCFUl
    lwz     r0, R13Off_m0x6060(r13)
    lis     r4, unk_00040001@h
    addi    r30, r3, 0x0
    mr      r3, r0
    addi    r4, r4, unk_00040001@l
    bl      getFlag__12TFlagManagerCFUl
    lhz     r0, 0x8a(r31)
    addi    r28, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80147a6c
    lwz     r0, 0x64(r31)
    cmpw    r0, r30
    beq-    branch_0x80147a6c
    li      r0, 0x1
    sth     r0, 0x8a(r31)
branch_0x80147a6c:
    lhz     r0, 0x8a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80148358
    cmplwi  r0, 0xfb
    ble-    branch_0x80147d1c
    li      r29, 0x0
    li      r27, 0x46
branch_0x80147a88:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r27, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80147aa0
    addi    r29, r29, 0x1
branch_0x80147aa0:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x56
    blt+    branch_0x80147a88
    li      r27, 0x6c
branch_0x80147ab0:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r27, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80147ac8
    addi    r29, r29, 0x1
branch_0x80147ac8:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x73
    ble+    branch_0x80147ab0
    mulli   r0, r29, 0xa
    lwz     r3, 0x170(r31)
    subf    r0, r0, r28
    cmpw    r3, r0
    beq-    branch_0x80147d1c
    addi    r0, r3, -0x1
    stw     r0, 0x170(r31)
    lwz     r0, 0x170(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x80147b08
    li      r0, 0x0
    stw     r0, 0x170(r31)
    b       branch_0x80147b30

branch_0x80147b08:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x405c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80147b30
    li      r3, 0x405c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80147b30:
    lwz     r0, 0x170(r31)
    cmpwi   r0, 0x64
    bge-    branch_0x80147bf0
    xoris   r0, r0, 0x8000
    lwz     r3, 0x154(r31)
    stw     r0, 0x28c(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0x288(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0x288(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x280(sp)
    lwz     r0, 0x284(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r3, unk_66666667@h
    lwz     r5, 0x170(r31)
    addi    r0, r3, unk_66666667@l
    lwz     r3, 0x158(r31)
    mulhw   r0, r0, r5
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x15c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80147d1c
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x80147d1c

branch_0x80147bf0:
    xoris   r0, r0, 0x8000
    lwz     r3, 0x154(r31)
    stw     r0, 0x284(sp)
    lis     r28, 0x4330
    lfd     f1, -0x4c38(r2)
    li      r5, 0x0
    stw     r28, 0x280(sp)
    lfs     f2, -0x4c40(r2)
    lfd     f0, 0x280(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x288(sp)
    lwz     r0, 0x28c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r4, 0x170(r31)
    li      r5, 0x0
    lwz     r3, 0x158(r31)
    xoris   r0, r4, 0x8000
    lfd     f2, -0x4c38(r2)
    stw     r0, 0x27c(sp)
    lfs     f3, -0x4c40(r2)
    stw     r28, 0x278(sp)
    lfs     f1, -0x4c44(r2)
    lfd     f0, 0x278(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f2
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x270(sp)
    lwz     r0, 0x274(sp)
    mulli   r0, r0, 0x64
    subf    r29, r0, r4
    xoris   r0, r29, 0x8000
    stw     r0, 0x26c(sp)
    stw     r28, 0x268(sp)
    lfd     f0, 0x268(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x260(sp)
    lwz     r0, 0x264(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x15c(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r29
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r29
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x15c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80147d1c
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80147d1c:
    lhz     r0, 0x8a(r31)
    cmplwi  r0, 0xfc
    bne-    branch_0x801482d0
    lwz     r29, 0x64(r31)
    addi    r3, sp, 0x250
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    cmpwi   r29, 0x64
    bge-    branch_0x80147f64
    lwz     r3, 0x13c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80147d68
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x80147d68:
    lis     r3, unk_66666667@h
    addi    r0, r3, unk_66666667@l
    mulhw   r4, r0, r29
    srawi   r0, r4, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf.   r0, r0, r29
    bne-    branch_0x80147e6c
    srawi   r0, r4, 2
    lwz     r28, 0x134(r31)
    srwi    r3, r0, 31
    add     r0, r0, r3
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r5, 0xe0(r3)
    addi    r3, r28, 0x0
    li      r4, 0xa
    li      r6, 0x0
    bl      setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
    lwz     r4, 0x0(r28)
    addi    r3, sp, 0x1e4
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r5, 0x1e4(sp)
    lis     r8, 0x4330
    lwz     r0, 0x1ec(sp)
    addi    r4, sp, 0x1f4
    lwz     r7, 0x1e8(sp)
    subf    r3, r5, r0
    lwz     r0, 0x1f0(sp)
    xoris   r6, r3, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r5, r5, 0x8000
    stw     r6, 0x264(sp)
    subf    r0, r7, r0
    lfs     f5, -0x4c70(r2)
    stw     r5, 0x26c(sp)
    xoris   r6, r0, 0x8000
    xoris   r0, r7, 0x8000
    lfs     f0, -0x4c74(r2)
    stw     r6, 0x274(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r5, 0x1fc
    stw     r8, 0x260(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r8, 0x268(sp)
    lfd     f2, 0x260(sp)
    lfd     f1, 0x268(sp)
    stw     r0, 0x27c(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r8, 0x270(sp)
    fmadds  f3, f5, f2, f1
    stw     r8, 0x278(sp)
    lfd     f2, 0x270(sp)
    lfd     f1, 0x278(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x1f4(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x1f8(sp)
    stfs    f0, 0x1fc(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x80147e6c:
    lis     r3, unk_66666667@h
    lwz     r28, 0x138(r31)
    addi    r0, r3, unk_66666667@l
    mulhw   r0, r0, r29
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r29
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r5, 0xe0(r3)
    addi    r3, r28, 0x0
    li      r4, 0xa
    li      r6, 0x0
    bl      setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
    lwz     r4, 0x0(r28)
    addi    r3, sp, 0x1c4
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r5, 0x1c4(sp)
    lis     r8, 0x4330
    lwz     r0, 0x1cc(sp)
    addi    r4, sp, 0x1d4
    lwz     r7, 0x1c8(sp)
    subf    r3, r5, r0
    lwz     r0, 0x1d0(sp)
    xoris   r6, r3, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r5, r5, 0x8000
    stw     r6, 0x264(sp)
    subf    r0, r7, r0
    lfs     f5, -0x4c70(r2)
    stw     r5, 0x26c(sp)
    xoris   r6, r0, 0x8000
    xoris   r0, r7, 0x8000
    lfs     f0, -0x4c74(r2)
    stw     r6, 0x274(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r5, 0x1fc
    stw     r8, 0x260(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r8, 0x268(sp)
    lfd     f2, 0x260(sp)
    lfd     f1, 0x268(sp)
    stw     r0, 0x27c(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r8, 0x270(sp)
    fmadds  f3, f5, f2, f1
    stw     r8, 0x278(sp)
    lfd     f2, 0x270(sp)
    lfd     f1, 0x278(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x1d4(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x1d8(sp)
    stfs    f0, 0x1dc(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    b       branch_0x8014834c

branch_0x80147f64:
    lis     r3, unk_51eb851f@ha
    addi    r0, r3, unk_51eb851f@l
    mulhw   r4, r0, r29
    srawi   r0, r4, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x64
    subf.   r0, r0, r29
    bne-    branch_0x80148084
    srawi   r0, r4, 5
    lwz     r28, 0x134(r31)
    srwi    r3, r0, 31
    add     r0, r0, r3
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r5, 0xe0(r3)
    addi    r3, r28, 0x0
    li      r4, 0xa
    li      r6, 0x0
    bl      setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
    lwz     r4, 0x0(r28)
    addi    r3, sp, 0x1a4
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r5, 0x1a4(sp)
    lis     r8, 0x4330
    lwz     r0, 0x1ac(sp)
    addi    r4, sp, 0x1b4
    lwz     r7, 0x1a8(sp)
    subf    r3, r5, r0
    lwz     r0, 0x1b0(sp)
    xoris   r6, r3, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r5, r5, 0x8000
    stw     r6, 0x264(sp)
    subf    r0, r7, r0
    lfs     f5, -0x4c70(r2)
    stw     r5, 0x26c(sp)
    xoris   r6, r0, 0x8000
    xoris   r0, r7, 0x8000
    lfs     f0, -0x4c74(r2)
    stw     r6, 0x274(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r5, 0x1fc
    stw     r8, 0x260(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r8, 0x268(sp)
    lfd     f2, 0x260(sp)
    lfd     f1, 0x268(sp)
    stw     r0, 0x27c(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r8, 0x270(sp)
    fmadds  f3, f5, f2, f1
    stw     r8, 0x278(sp)
    lfd     f2, 0x270(sp)
    lfd     f1, 0x278(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x1b4(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x1b8(sp)
    stfs    f0, 0x1bc(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, 0x134(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80148084
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80148084:
    xoris   r0, r29, 0x8000
    lfd     f1, -0x4c38(r2)
    stw     r0, 0x264(sp)
    lis     r30, 0x4330
    lis     r3, unk_66666667@h
    lfs     f2, -0x4c40(r2)
    stw     r30, 0x260(sp)
    addi    r0, r3, unk_66666667@l
    lfd     f0, 0x260(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x268(sp)
    lwz     r3, 0x26c(sp)
    mulli   r3, r3, 0x64
    subf    r29, r3, r29
    mulhw   r4, r0, r29
    srawi   r0, r4, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf.   r0, r0, r29
    bne-    branch_0x801481bc
    srawi   r0, r4, 2
    lwz     r28, 0x138(r31)
    srwi    r3, r0, 31
    add     r0, r0, r3
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r5, 0xe0(r3)
    addi    r3, r28, 0x0
    li      r4, 0xa
    li      r6, 0x0
    bl      setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
    lwz     r4, 0x0(r28)
    addi    r3, sp, 0x17c
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x17c(sp)
    addi    r4, sp, 0x18c
    lwz     r0, 0x184(sp)
    li      r5, 0x1fc
    lwz     r8, 0x180(sp)
    subf    r3, r6, r0
    lwz     r0, 0x188(sp)
    xoris   r7, r3, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r6, r6, 0x8000
    stw     r7, 0x264(sp)
    subf    r0, r8, r0
    lfs     f5, -0x4c70(r2)
    stw     r6, 0x26c(sp)
    xoris   r7, r0, 0x8000
    xoris   r0, r8, 0x8000
    lfs     f0, -0x4c74(r2)
    stw     r7, 0x274(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r6, 0x0
    stw     r30, 0x260(sp)
    li      r7, 0x0
    stw     r30, 0x268(sp)
    lfd     f2, 0x260(sp)
    lfd     f1, 0x268(sp)
    stw     r0, 0x27c(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r30, 0x270(sp)
    fmadds  f3, f5, f2, f1
    stw     r30, 0x278(sp)
    lfd     f2, 0x270(sp)
    lfd     f1, 0x278(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x18c(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x190(sp)
    stfs    f0, 0x194(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x801481bc:
    lwz     r3, 0x13c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801481d8
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x801481d8:
    lis     r3, unk_66666667@h
    lwz     r28, 0x13c(r31)
    addi    r0, r3, unk_66666667@l
    mulhw   r0, r0, r29
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r29
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r5, 0xe0(r3)
    addi    r3, r28, 0x0
    li      r4, 0xa
    li      r6, 0x0
    bl      setPaneBlend__10TBlendPaneFlP10JUTTextureP10JUTTexture
    lwz     r4, 0x0(r28)
    addi    r3, sp, 0x154
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r5, 0x154(sp)
    lis     r8, 0x4330
    lwz     r0, 0x15c(sp)
    addi    r4, sp, 0x164
    lwz     r7, 0x158(sp)
    subf    r3, r5, r0
    lwz     r0, 0x160(sp)
    xoris   r6, r3, 0x8000
    lfd     f4, -0x4c38(r2)
    xoris   r5, r5, 0x8000
    stw     r6, 0x264(sp)
    subf    r0, r7, r0
    lfs     f5, -0x4c70(r2)
    stw     r5, 0x26c(sp)
    xoris   r6, r0, 0x8000
    xoris   r0, r7, 0x8000
    lfs     f0, -0x4c74(r2)
    stw     r6, 0x274(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    li      r5, 0x1fc
    stw     r8, 0x260(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r8, 0x268(sp)
    lfd     f2, 0x260(sp)
    lfd     f1, 0x268(sp)
    stw     r0, 0x27c(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r8, 0x270(sp)
    fmadds  f3, f5, f2, f1
    stw     r8, 0x278(sp)
    lfd     f2, 0x270(sp)
    lfd     f1, 0x278(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x164(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x168(sp)
    stfs    f0, 0x16c(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    b       branch_0x8014834c

branch_0x801482d0:
    cmplwi  r0, 0x106
    bne-    branch_0x801482f8
    lwz     r3, 0x64(r31)
    cmpw    r30, r3
    ble-    branch_0x8014834c
    addi    r0, r3, 0x1
    stw     r0, 0x64(r31)
    li      r0, 0xfb
    sth     r0, 0x8a(r31)
    b       branch_0x8014834c

branch_0x801482f8:
    lbz     r0, 0x34(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014834c
    lbz     r0, 0x35(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014834c
    lwz     r3, 0x134(r31)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x138(r31)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x13c(r31)
    lwz     r12, 0x74(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8014834c:
    lhz     r3, 0x8a(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x8a(r31)
branch_0x80148358:
    lmw     r27, 0x294(sp)
    lwz     r0, 0x2ac(sp)
    addi    sp, sp, 0x2a8
    mtlr    r0
    blr


.globl setTimer__11TGCConsole2Fl
setTimer__11TGCConsole2Fl: # 0x8014836c
    mflr    r0
    cmpwi   r4, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stmw    r25, 0x184(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x8014843c
    lwz     r4, R13Off_m0x6048(r13)
    lwz     r26, 0xc8(r4)
    addi    r3, r4, 0xe8
    lwz     r28, 0xcc(r4)
    bl      OSCheckStopwatch
    lis     r25, 0x8000
    lwz     r0, 0xf8(r25)
    lis     r5, unk_10624dd3@h
    addi    r27, r5, unk_10624dd3@l
    srwi    r0, r0, 2
    mulhwu  r0, r27, r0
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    srwi    r6, r0, 6
    addi    r3, r26, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      __div2i
    lwz     r0, 0xf8(r25)
    addi    r26, r4, 0x0
    addi    r25, r3, 0x0
    srwi    r0, r0, 2
    mulhwu  r0, r27, r0
    srwi    r6, r0, 6
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      __div2i
    subfc   r4, r26, r4
    subfe   r3, r25, r3
    bl      __cvt_sll_flt
    lfs     f0, -0x4c44(r2)
    fmuls   f1, f0, f1
    bl      __cvt_fp2unsigned
    lbz     r0, 0x514(r31)
    addi    r30, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80148440
    lwz     r0, 0x518(r31)
    cmplw   r0, r30
    bge-    branch_0x80148434
    li      r30, 0x0
    b       branch_0x80148440

branch_0x80148434:
    subf    r30, r30, r0
    b       branch_0x80148440

branch_0x8014843c:
    mr      r30, r4
branch_0x80148440:
    lis     r3, unk_000927bf@h
    addi    r0, r3, unk_000927bf@l
    cmplw   r30, r0
    ble-    branch_0x80148454
    mr      r30, r0
branch_0x80148454:
    lis     r4, unk_51eb851f@ha
    lwz     r3, 0x504(r31)
    addi    r0, r4, unk_51eb851f@l
    lfd     f1, -0x4c30(r2)
    mulhwu  r4, r0, r30
    lbz     r0, 0xc(r3)
    lfd     f2, -0x4c18(r2)
    srwi    r4, r4, 5
    mulli   r3, r4, 0x64
    subf    r4, r3, r30
    lis     r3, unk_057619f1@h
    subf    r4, r4, r30
    addi    r3, r3, unk_057619f1@l
    mulhwu  r3, r3, r4
    extrwi  r27, r3, 16, 9
    mulli   r3, r27, 0x1770
    subf    r4, r3, r30
    stw     r4, 0x17c(sp)
    lis     r3, 0x4330
    cmplwi  r0, 0x0
    stw     r3, 0x178(sp)
    lfd     f0, 0x178(sp)
    fsub    f0, f0, f1
    fmul    f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x168(sp)
    lwz     r0, 0x16c(sp)
    stfd    f0, 0x170(sp)
    clrlwi  r0, r0, 16
    mulli   r0, r0, 0x64
    lwz     r26, 0x174(sp)
    subf    r29, r0, r4
    beq-    branch_0x80148618
    lis     r4, unk_66666667@h
    lwz     r3, 0x45c(r31)
    addi    r28, r4, unk_66666667@l
    mulhw   r25, r28, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r25, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r25, 2
    lwz     r3, 0x460(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    clrlwi  r27, r26, 16
    lwz     r3, 0x464(r31)
    mulhw   r26, r28, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r26, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r26, 2
    lwz     r3, 0x468(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    clrlwi  r27, r29, 16
    lwz     r3, 0x46c(r31)
    mulhw   r26, r28, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r26, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r26, 2
    lwz     r3, 0x470(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8014878c

branch_0x80148618:
    cmplwi  r30, 0x3e8
    bge-    branch_0x801486b4
    lwz     r3, 0x480(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x13c(r3)
    stw     r0, 0x158(sp)
    lwz     r0, 0x158(sp)
    lwz     r3, 0x50c(r31)
    cmplw   r0, r3
    beq-    branch_0x801486b4
    stw     r3, 0x150(sp)
    lwz     r3, 0x474(r31)
    lwz     r0, 0x150(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lwz     r0, 0x50c(r31)
    stw     r0, 0x150(sp)
    lwz     r3, 0x478(r31)
    lwz     r0, 0x150(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lwz     r0, 0x50c(r31)
    stw     r0, 0x150(sp)
    lwz     r3, 0x47c(r31)
    lwz     r0, 0x150(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lwz     r0, 0x50c(r31)
    stw     r0, 0x150(sp)
    lwz     r3, 0x480(r31)
    lwz     r0, 0x150(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lwz     r0, 0x50c(r31)
    stw     r0, 0x148(sp)
    lwz     r3, 0x48c(r31)
    lwz     r0, 0x148(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
branch_0x801486b4:
    lis     r4, unk_66666667@h
    lwz     r3, 0x474(r31)
    clrlwi  r27, r26, 16
    addi    r28, r4, unk_66666667@l
    lwz     r3, 0x0(r3)
    mulhw   r26, r28, r27
    srawi   r0, r26, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r26, 2
    lwz     r3, 0x478(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    clrlwi  r27, r29, 16
    lwz     r3, 0x47c(r31)
    mulhw   r26, r28, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r26, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r26, 2
    lwz     r3, 0x480(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r3, 0x0(r3)
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8014878c:
    cmplwi  r30, 0x0
    beq-    branch_0x801487bc
    lwz     r0, 0x51c(r31)
    cmplw   r30, r0
    bge-    branch_0x801487bc
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x801487bc
    lwz     r3, R13Off_m0x6044(r13)
    mulli   r4, r30, 0xa
    bl      playTimer__6MSoundFUl
branch_0x801487bc:
    stw     r30, 0x500(r31)
    lmw     r25, 0x184(sp)
    lwz     r0, 0x1a4(sp)
    addi    sp, sp, 0x1a0
    mtlr    r0
    blr


.globl checkDolpic8__11TGCConsole2Fv
checkDolpic8__11TGCConsole2Fv: # 0x801487d4
    mflr    r0
    lis     r4, unk_803bfff8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    lis     r27, unk_000103aa@h
    addi    r31, r4, unk_803bfff8@l
    addi    r30, r3, 0x0
    addi    r4, r27, unk_000103aa@l
    lwz     r0, R13Off_m0x6060(r13)
    mr      r3, r0
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80148848
    lis     r4, unk_00050004@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00050004@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80148840
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r27, 0x3ad
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x80148840
    li      r29, 0x2
    b       branch_0x80148880

branch_0x80148840:
    li      r29, 0x3
    b       branch_0x80148880

branch_0x80148848:
    lis     r4, unk_00050004@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00050004@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8014887c
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r27, 0x3ad
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x8014887c
    li      r29, 0x1
    b       branch_0x80148880

branch_0x8014887c:
    li      r29, 0x0
branch_0x80148880:
    lis     r4, unk_00060003@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060003@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x2
    beq-    branch_0x801488d8
    bge-    branch_0x801488a8
    cmpwi   r3, 0x1
    bge-    branch_0x80148900
    b       branch_0x80148928

branch_0x801488a8:
    cmpwi   r3, 0x4
    bge-    branch_0x80148928
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x1
    li      r5, 0x0
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801488d0
    li      r28, 0x2
    b       branch_0x8014892c

branch_0x801488d0:
    li      r28, 0x1
    b       branch_0x8014892c

branch_0x801488d8:
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x1
    li      r5, 0x1
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801488f8
    li      r28, 0x2
    b       branch_0x8014892c

branch_0x801488f8:
    li      r28, 0x1
    b       branch_0x8014892c

branch_0x80148900:
    lis     r4, unk_0001038f@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_0001038f@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80148920
    li      r28, 0x2
    b       branch_0x8014892c

branch_0x80148920:
    li      r28, 0x0
    b       branch_0x8014892c

branch_0x80148928:
    li      r28, 0x2
branch_0x8014892c:
    lis     r27, unk_00060003@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r27, unk_00060003@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x801489b0
    lis     r4, unk_0001038f@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_0001038f@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x801489b0
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r27, 0x3
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x801489a8
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x1
    li      r5, 0x0
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801489a0
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x1
    li      r5, 0x1
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801489a8
branch_0x801489a0:
    li      r0, 0x1
    b       branch_0x80148a04

branch_0x801489a8:
    li      r0, 0x0
    b       branch_0x80148a04

branch_0x801489b0:
    lis     r4, unk_00060003@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060003@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80148a00
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x1
    li      r5, 0x0
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801489f8
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x1
    li      r5, 0x1
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80148a00
branch_0x801489f8:
    li      r0, 0x2
    b       branch_0x80148a04

branch_0x80148a00:
    li      r0, 0x3
branch_0x80148a04:
    cmpwi   r29, 0x2
    lwz     r3, 0x574(r30)
    beq-    branch_0x80148c1c
    bge-    branch_0x80148a24
    cmpwi   r29, 0x0
    beq-    branch_0x80148a30
    bge-    branch_0x80148b20
    b       branch_0x80148e10

branch_0x80148a24:
    cmpwi   r29, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148d18

branch_0x80148a30:
    cmpwi   r28, 0x1
    beq-    branch_0x80148a98
    bge-    branch_0x80148a48
    cmpwi   r28, 0x0
    bge-    branch_0x80148a54
    b       branch_0x80148b20

branch_0x80148a48:
    cmpwi   r28, 0x3
    bge-    branch_0x80148b20
    b       branch_0x80148adc

branch_0x80148a54:
    cmpwi   r0, 0x2
    beq-    branch_0x80148a8c
    bge-    branch_0x80148a70
    cmpwi   r0, 0x0
    beq-    branch_0x80148a7c
    bge-    branch_0x80148a84
    b       branch_0x80148a98

branch_0x80148a70:
    cmpwi   r0, 0x4
    bge-    branch_0x80148a98
    b       branch_0x80148a94

branch_0x80148a7c:
    addi    r3, r31, 0x58
    b       branch_0x80148a98

branch_0x80148a84:
    addi    r3, r31, 0x68
    b       branch_0x80148a98

branch_0x80148a8c:
    addi    r3, r31, 0x7c
    b       branch_0x80148a98

branch_0x80148a94:
    addi    r3, r31, 0x8c
branch_0x80148a98:
    cmpwi   r0, 0x2
    beq-    branch_0x80148ad0
    bge-    branch_0x80148ab4
    cmpwi   r0, 0x0
    beq-    branch_0x80148ac0
    bge-    branch_0x80148ac8
    b       branch_0x80148adc

branch_0x80148ab4:
    cmpwi   r0, 0x4
    bge-    branch_0x80148adc
    b       branch_0x80148ad8

branch_0x80148ac0:
    addi    r3, r31, 0x98
    b       branch_0x80148adc

branch_0x80148ac8:
    addi    r3, r31, 0xa8
    b       branch_0x80148adc

branch_0x80148ad0:
    addi    r3, r31, 0xbc
    b       branch_0x80148adc

branch_0x80148ad8:
    addi    r3, r31, 0xcc
branch_0x80148adc:
    cmpwi   r0, 0x2
    beq-    branch_0x80148b14
    bge-    branch_0x80148af8
    cmpwi   r0, 0x0
    beq-    branch_0x80148b04
    bge-    branch_0x80148b0c
    b       branch_0x80148b20

branch_0x80148af8:
    cmpwi   r0, 0x4
    bge-    branch_0x80148b20
    b       branch_0x80148b1c

branch_0x80148b04:
    addi    r3, r31, 0xd8
    b       branch_0x80148b20

branch_0x80148b0c:
    addi    r3, r31, 0xe4
    b       branch_0x80148b20

branch_0x80148b14:
    addi    r3, r31, 0xf4
    b       branch_0x80148b20

branch_0x80148b1c:
    addi    r3, r13, R13Off_m0x7b58
branch_0x80148b20:
    cmpwi   r28, 0x1
    beq-    branch_0x80148b8c
    bge-    branch_0x80148b38
    cmpwi   r28, 0x0
    bge-    branch_0x80148b44
    b       branch_0x80148e10

branch_0x80148b38:
    cmpwi   r28, 0x3
    bge-    branch_0x80148e10
    b       branch_0x80148bd4

branch_0x80148b44:
    cmpwi   r0, 0x2
    beq-    branch_0x80148b7c
    bge-    branch_0x80148b60
    cmpwi   r0, 0x0
    beq-    branch_0x80148b6c
    bge-    branch_0x80148b74
    b       branch_0x80148e10

branch_0x80148b60:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148b84

branch_0x80148b6c:
    addi    r3, r31, 0x100
    b       branch_0x80148e10

branch_0x80148b74:
    addi    r3, r31, 0x114
    b       branch_0x80148e10

branch_0x80148b7c:
    addi    r3, r31, 0x12c
    b       branch_0x80148e10

branch_0x80148b84:
    addi    r3, r31, 0x140
    b       branch_0x80148e10

branch_0x80148b8c:
    cmpwi   r0, 0x2
    beq-    branch_0x80148bc4
    bge-    branch_0x80148ba8
    cmpwi   r0, 0x0
    beq-    branch_0x80148bb4
    bge-    branch_0x80148bbc
    b       branch_0x80148e10

branch_0x80148ba8:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148bcc

branch_0x80148bb4:
    addi    r3, r31, 0x150
    b       branch_0x80148e10

branch_0x80148bbc:
    addi    r3, r31, 0x164
    b       branch_0x80148e10

branch_0x80148bc4:
    addi    r3, r31, 0x17c
    b       branch_0x80148e10

branch_0x80148bcc:
    addi    r3, r31, 0x190
    b       branch_0x80148e10

branch_0x80148bd4:
    cmpwi   r0, 0x2
    beq-    branch_0x80148c0c
    bge-    branch_0x80148bf0
    cmpwi   r0, 0x0
    beq-    branch_0x80148bfc
    bge-    branch_0x80148c04
    b       branch_0x80148e10

branch_0x80148bf0:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148c14

branch_0x80148bfc:
    addi    r3, r31, 0x1a0
    b       branch_0x80148e10

branch_0x80148c04:
    addi    r3, r31, 0x1b0
    b       branch_0x80148e10

branch_0x80148c0c:
    addi    r3, r31, 0x1c4
    b       branch_0x80148e10

branch_0x80148c14:
    addi    r3, r31, 0x1d4
    b       branch_0x80148e10

branch_0x80148c1c:
    cmpwi   r28, 0x1
    beq-    branch_0x80148c88
    bge-    branch_0x80148c34
    cmpwi   r28, 0x0
    bge-    branch_0x80148c40
    b       branch_0x80148e10

branch_0x80148c34:
    cmpwi   r28, 0x3
    bge-    branch_0x80148e10
    b       branch_0x80148cd0

branch_0x80148c40:
    cmpwi   r0, 0x2
    beq-    branch_0x80148c78
    bge-    branch_0x80148c5c
    cmpwi   r0, 0x0
    beq-    branch_0x80148c68
    bge-    branch_0x80148c70
    b       branch_0x80148e10

branch_0x80148c5c:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148c80

branch_0x80148c68:
    addi    r3, r31, 0x1e0
    b       branch_0x80148e10

branch_0x80148c70:
    addi    r3, r31, 0x1f0
    b       branch_0x80148e10

branch_0x80148c78:
    addi    r3, r31, 0x204
    b       branch_0x80148e10

branch_0x80148c80:
    addi    r3, r31, 0x214
    b       branch_0x80148e10

branch_0x80148c88:
    cmpwi   r0, 0x2
    beq-    branch_0x80148cc0
    bge-    branch_0x80148ca4
    cmpwi   r0, 0x0
    beq-    branch_0x80148cb0
    bge-    branch_0x80148cb8
    b       branch_0x80148e10

branch_0x80148ca4:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148cc8

branch_0x80148cb0:
    addi    r3, r31, 0x220
    b       branch_0x80148e10

branch_0x80148cb8:
    addi    r3, r31, 0x230
    b       branch_0x80148e10

branch_0x80148cc0:
    addi    r3, r31, 0x244
    b       branch_0x80148e10

branch_0x80148cc8:
    addi    r3, r31, 0x254
    b       branch_0x80148e10

branch_0x80148cd0:
    cmpwi   r0, 0x2
    beq-    branch_0x80148d08
    bge-    branch_0x80148cec
    cmpwi   r0, 0x0
    beq-    branch_0x80148cf8
    bge-    branch_0x80148d00
    b       branch_0x80148e10

branch_0x80148cec:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148d10

branch_0x80148cf8:
    addi    r3, r31, 0x260
    b       branch_0x80148e10

branch_0x80148d00:
    addi    r3, r31, 0x26c
    b       branch_0x80148e10

branch_0x80148d08:
    addi    r3, r31, 0x27c
    b       branch_0x80148e10

branch_0x80148d10:
    addi    r3, r13, R13Off_m0x7b50
    b       branch_0x80148e10

branch_0x80148d18:
    cmpwi   r28, 0x1
    beq-    branch_0x80148d84
    bge-    branch_0x80148d30
    cmpwi   r28, 0x0
    bge-    branch_0x80148d3c
    b       branch_0x80148e10

branch_0x80148d30:
    cmpwi   r28, 0x3
    bge-    branch_0x80148e10
    b       branch_0x80148dcc

branch_0x80148d3c:
    cmpwi   r0, 0x2
    beq-    branch_0x80148d74
    bge-    branch_0x80148d58
    cmpwi   r0, 0x0
    beq-    branch_0x80148d64
    bge-    branch_0x80148d6c
    b       branch_0x80148e10

branch_0x80148d58:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148d7c

branch_0x80148d64:
    addi    r3, r31, 0x288
    b       branch_0x80148e10

branch_0x80148d6c:
    addi    r3, r31, 0x294
    b       branch_0x80148e10

branch_0x80148d74:
    addi    r3, r31, 0x2a4
    b       branch_0x80148e10

branch_0x80148d7c:
    addi    r3, r13, R13Off_m0x7b48
    b       branch_0x80148e10

branch_0x80148d84:
    cmpwi   r0, 0x2
    beq-    branch_0x80148dbc
    bge-    branch_0x80148da0
    cmpwi   r0, 0x0
    beq-    branch_0x80148dac
    bge-    branch_0x80148db4
    b       branch_0x80148e10

branch_0x80148da0:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148dc4

branch_0x80148dac:
    addi    r3, r31, 0x2b0
    b       branch_0x80148e10

branch_0x80148db4:
    addi    r3, r31, 0x2bc
    b       branch_0x80148e10

branch_0x80148dbc:
    addi    r3, r31, 0x2cc
    b       branch_0x80148e10

branch_0x80148dc4:
    addi    r3, r13, R13Off_m0x7b40
    b       branch_0x80148e10

branch_0x80148dcc:
    cmpwi   r0, 0x2
    beq-    branch_0x80148e04
    bge-    branch_0x80148de8
    cmpwi   r0, 0x0
    beq-    branch_0x80148df4
    bge-    branch_0x80148dfc
    b       branch_0x80148e10

branch_0x80148de8:
    cmpwi   r0, 0x4
    bge-    branch_0x80148e10
    b       branch_0x80148e0c

branch_0x80148df4:
    addi    r3, r13, R13Off_m0x7b38
    b       branch_0x80148e10

branch_0x80148dfc:
    addi    r3, r31, 0x2d8
    b       branch_0x80148e10

branch_0x80148e04:
    addi    r3, r13, R13Off_m0x7b30
    b       branch_0x80148e10

branch_0x80148e0c:
    li      r3, 0x0
branch_0x80148e10:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl processMoveNozzle__11TGCConsole2Fv
processMoveNozzle__11TGCConsole2Fv: # 0x80148e24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    lwz     r3, 0x274(r3)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80148f4c
    lbz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80148f4c
    lwz     r0, 0x14(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80148e80
    bge-    branch_0x80148e74
    cmpwi   r0, 0x0
    bge-    branch_0x80148ed4
    b       branch_0x80148f4c

branch_0x80148e74:
    cmpwi   r0, 0x3
    bge-    branch_0x80148f4c
    b       branch_0x80148f10

branch_0x80148e80:
    lbz     r0, 0x30c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80148e98
    li      r0, 0x2
    stw     r0, 0x14(r31)
    b       branch_0x80148f4c

branch_0x80148e98:
    li      r3, 0x0
    stw     r3, 0x7c(sp)
    li      r0, -0x1e
    addi    r7, sp, 0x7c
    stw     r3, 0x84(sp)
    addi    r6, sp, 0x84
    addi    r5, sp, 0x8c
    stw     r3, 0x8c(sp)
    li      r4, 0x1e
    stw     r3, 0x80(sp)
    stw     r0, 0x88(sp)
    stw     r3, 0x90(sp)
    lwz     r3, 0x274(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    b       branch_0x80148f4c

branch_0x80148ed4:
    li      r3, 0x0
    stw     r3, 0x64(sp)
    li      r0, -0x14
    addi    r7, sp, 0x64
    stw     r3, 0x6c(sp)
    addi    r6, sp, 0x6c
    addi    r5, sp, 0x74
    stw     r3, 0x74(sp)
    li      r4, 0x32
    stw     r3, 0x68(sp)
    stw     r0, 0x70(sp)
    stw     r3, 0x78(sp)
    lwz     r3, 0x274(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    b       branch_0x80148f4c

branch_0x80148f10:
    li      r30, 0x0
    stw     r30, 0x4c(sp)
    li      r0, -0x19
    addi    r7, sp, 0x4c
    stw     r30, 0x54(sp)
    addi    r6, sp, 0x54
    addi    r5, sp, 0x5c
    stw     r30, 0x5c(sp)
    li      r4, 0x1e
    stw     r30, 0x50(sp)
    stw     r0, 0x58(sp)
    stw     r30, 0x60(sp)
    lwz     r3, 0x274(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stb     r30, 0x48(r31)
branch_0x80148f4c:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    addi    sp, sp, 0xa8
    blr


.globl startAppearMario__11TGCConsole2Fb
startAppearMario__11TGCConsole2Fb: # 0x80148f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stmw    r27, 0xb4(sp)
    mr      r29, r3
    mr      r30, r4
    lwz     r3, 0x3a8(r3)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80148f9c
    lbz     r0, 0x3b(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80149144
branch_0x80148f9c:
    li      r31, 0x1
    stb     r31, 0xc(r3)
    lis     r0, unk_43300032@h
    addi    r4, r0, unk_43300032@l
    lwz     r27, 0x3a8(r29)
    lfs     f1, -0x4c74(r2)
    lwz     r5, 0x10(r27)
    addi    r3, r27, 0x14
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    addi    r5, r5, 0x1
    neg     r28, r5
    fmr     f3, f1
    xoris   r5, r28, 0x8000
    stw     r5, 0xac(sp)
    stw     r0, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4e(r27)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0x38c(r29)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x394(r29)
    li      r4, 0x0
    clrlwi. r0, r30, 24
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x390(r29)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x398(r29)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x39c(r29)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x3a0(r29)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x3a4(r29)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    beq-    branch_0x80149128
    lis     r4, unk_00020001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00020001@l
    bl      getFlag__12TFlagManagerCFUl
    addi    r31, r3, 0x1
    cmpwi   r31, 0x63
    ble-    branch_0x80149098
    li      r31, 0x63
branch_0x80149098:
    xoris   r0, r31, 0x8000
    lwz     r3, 0x39c(r29)
    stw     r0, 0xac(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0xa8(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0xa8(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x3a0(r29)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r31
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r31
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x80149128:
    li      r3, 0x1
    stb     r3, 0x3a(r29)
    li      r0, 0x0
    stb     r30, 0x3b0(r29)
    stb     r0, 0x3b(r29)
    stb     r3, 0x59(r29)
    sth     r0, 0x70(r29)
branch_0x80149144:
    lmw     r27, 0xb4(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl startDisappearMario__11TGCConsole2Fv
startDisappearMario__11TGCConsole2Fv: # 0x80149158
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    mr      r28, r3
    lwz     r29, 0x3a8(r3)
    lwz     r3, 0x0(r29)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80149284
    lbz     r0, 0x3b(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8014919c
    b       branch_0x80149284

branch_0x8014919c:
    lfs     f1, 0x18(r29)
    lfs     f0, -0x4c74(r2)
    lwz     r3, 0x10(r29)
    fcmpo   cr0, f1, f0
    addi    r0, r3, 0x1
    neg     r0, r0
    ble-    branch_0x801491c0
    lfs     f0, -0x4c70(r2)
    b       branch_0x801491c4

branch_0x801491c0:
    lfs     f0, -0x4c6c(r2)
branch_0x801491c4:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r29)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x58(sp)
    lwz     r30, 0x5c(sp)
    ble-    branch_0x801491ec
    lfs     f0, -0x4c70(r2)
    b       branch_0x801491f0

branch_0x801491ec:
    lfs     f0, -0x4c6c(r2)
branch_0x801491f0:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r30, 0x8000
    stw     r3, 0x54(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x44(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r29, 0x14
    stw     r5, 0x50(sp)
    stfd    f0, 0x58(sp)
    li      r4, 0x32
    lfd     f0, 0x50(sp)
    lwz     r31, 0x5c(sp)
    stw     r5, 0x40(sp)
    fsubs   f2, f0, f3
    xoris   r0, r31, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0x4c(sp)
    lfd     f0, 0x40(sp)
    stw     r5, 0x48(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x48(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r31
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r29)
    stb     r0, 0x3b(r28)
branch_0x80149284:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl drawWaterBack__11TGCConsole2Fv
drawWaterBack__11TGCConsole2Fv: # 0x801492a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c0(sp)
    stfd    f31, 0x1b8(sp)
    stfd    f30, 0x1b0(sp)
    stfd    f29, 0x1a8(sp)
    stw     r31, 0x1a4(sp)
    stw     r30, 0x1a0(sp)
    stw     r29, 0x19c(sp)
    mr      r29, r3
    lwz     r4, R13Off_m0x60d8(r13)
    lha     r0, 0x120(r4)
    extsh.  r0, r0
    beq-    branch_0x80149ad8
    lfs     f0, 0x12c(r4)
    fctiwz  f0, f0
    stfd    f0, 0x190(sp)
    lwz     r0, 0x194(sp)
    extsh.  r0, r0
    bne-    branch_0x801492f8
    b       branch_0x80149ad8

branch_0x801492f8:
    addi    r3, sp, 0x114
    bl      PSMTXIdentity
    addi    r3, sp, 0x114
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, R2Off_m0x4c8c(r2)
    addi    r4, sp, 0xf0
    li      r3, 0x4
    stw     r0, 0xec(sp)
    lwz     r0, 0xec(sp)
    stw     r0, 0xf0(sp)
    bl      GXSetChanAmbColor
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x8
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lwz     r3, 0x26c(r29)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xfc(r3)
    cmplwi  r0, 0x0
    ble-    branch_0x80149458
    lwz     r3, 0xec(r3)
    b       branch_0x8014945c

branch_0x80149458:
    li      r3, 0x0
branch_0x8014945c:
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    addi    r3, sp, 0x114
    li      r4, 0x1e
    li      r5, 0x1
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r4, 0x26c(r29)
    addi    r3, sp, 0x104
    lwz     r5, R13Off_m0x60d8(r13)
    lwz     r4, 0x0(r4)
    lwz     r31, 0x3e4(r5)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lis     r30, unk_0000ff78@ha
    addi    r0, r30, unk_0000ff78@l
    stw     r0, 0xe4(sp)
    addi    r4, sp, 0xe8
    li      r3, 0x1
    lwz     r0, 0xe4(sp)
    stw     r0, 0xe8(sp)
    bl      GXSetTevColor
    addi    r0, r30, -0x100
    stw     r0, 0xdc(sp)
    addi    r4, sp, 0xe0
    li      r3, 0x2
    lwz     r0, 0xdc(sp)
    stw     r0, 0xe0(sp)
    bl      GXSetTevColor
    mr      r3, r31
    bl      isPressureOn__9TWaterGunFv
    cmpwi   r3, 0x0
    beq-    branch_0x80149954
    mr      r3, r31
    bl      getPressure__9TWaterGunFv
    fmr     f30, f1
    mr      r3, r31
    bl      getPressureMax__9TWaterGunFv
    fmr     f31, f1
    lwz     r6, 0x108(sp)
    lwz     r0, 0x110(sp)
    lis     r30, 0x4330
    lfs     f2, -0x4c68(r2)
    fdivs   f0, f30, f31
    subf    r0, r6, r0
    xoris   r0, r0, 0x8000
    lfd     f1, -0x4c38(r2)
    stw     r0, 0x194(sp)
    stw     r30, 0x190(sp)
    fsubs   f29, f2, f0
    li      r3, 0x80
    lfd     f0, 0x190(sp)
    li      r4, 0x0
    li      r5, 0x4
    fsubs   f0, f0, f1
    fmuls   f0, f29, f0
    fctiwz  f0, f0
    stfd    f0, 0x188(sp)
    lwz     r0, 0x18c(sp)
    add     r31, r6, r0
    bl      GXBegin
    lwz     r3, 0x104(sp)
    xoris   r0, r31, 0x8000
    stw     r0, 0x15c(sp)
    lis     r4, 0xcc01
    xoris   r5, r3, 0x8000
    lwz     r6, 0x108(sp)
    stw     r5, 0x17c(sp)
    xoris   r3, r6, 0x8000
    lfd     f5, -0x4c38(r2)
    stw     r3, 0x184(sp)
    lfs     f4, -0x4c74(r2)
    stw     r30, 0x178(sp)
    lfs     f3, -0x4c68(r2)
    stw     r30, 0x180(sp)
    lfd     f0, 0x178(sp)
    lfd     f1, 0x180(sp)
    fsubs   f0, f0, f5
    stw     r3, 0x174(sp)
    fsubs   f1, f1, f5
    stw     r5, 0x154(sp)
    stfs    f0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f4, -0x8000(r4)
    stfs    f4, -0x8000(r4)
    lwz     r3, 0x10c(sp)
    stw     r30, 0x170(sp)
    xoris   r3, r3, 0x8000
    stw     r3, 0x16c(sp)
    lfd     f0, 0x170(sp)
    stw     r30, 0x168(sp)
    fsubs   f1, f0, f5
    lfd     f0, 0x168(sp)
    stw     r3, 0x164(sp)
    fsubs   f0, f0, f5
    stw     r30, 0x160(sp)
    stfs    f0, -0x8000(r4)
    lfd     f0, 0x160(sp)
    stfs    f1, -0x8000(r4)
    fsubs   f2, f0, f5
    stw     r30, 0x158(sp)
    stfs    f3, -0x8000(r4)
    lfd     f0, 0x158(sp)
    stfs    f4, -0x8000(r4)
    fsubs   f1, f0, f5
    stfs    f2, -0x8000(r4)
    stw     r30, 0x150(sp)
    stw     r0, 0x14c(sp)
    lfd     f0, 0x150(sp)
    stfs    f1, -0x8000(r4)
    fsubs   f1, f0, f5
    stw     r30, 0x148(sp)
    stfs    f3, -0x8000(r4)
    lfd     f0, 0x148(sp)
    stfs    f29, -0x8000(r4)
    fsubs   f0, f0, f5
    stfs    f1, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stfs    f4, -0x8000(r4)
    stfs    f29, -0x8000(r4)
    lbz     r0, 0x50(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80149694
    fcmpu   cr0, f4, f30
    beq-    branch_0x80149694
    lbz     r0, 0x48(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80149694
    li      r0, 0x1
    stw     r0, 0x14(r29)
    stb     r0, 0x48(r29)
branch_0x80149694:
    fcmpu   cr0, f30, f31
    bne-    branch_0x80149800
    lbz     r0, 0x49(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801496b0
    li      r0, 0x0
    stb     r0, 0x49(r29)
branch_0x801496b0:
    lbz     r4, 0x30c(r29)
    lis     r3, unk_ff3f3f00@h
    addi    r30, r3, unk_ff3f3f00@l
    cmplwi  r4, 0xa
    bge-    branch_0x8014972c
    stw     r4, 0x14c(sp)
    lis     r0, 0x4330
    lfd     f4, -0x4c30(r2)
    stw     r4, 0x15c(sp)
    lfs     f2, -0x4c10(r2)
    stw     r0, 0x148(sp)
    lfs     f0, -0x4c0c(r2)
    stw     r0, 0x158(sp)
    lfd     f3, 0x148(sp)
    lfd     f1, 0x158(sp)
    fsubs   f3, f3, f4
    fsubs   f1, f1, f4
    fmuls   f2, f3, f2
    fmuls   f0, f1, f0
    fctiwz  f1, f2
    fctiwz  f0, f0
    stfd    f1, 0x150(sp)
    stfd    f0, 0x160(sp)
    lwz     r3, 0x154(sp)
    lwz     r0, 0x164(sp)
    extsh   r3, r3
    slwi    r3, r3, 8
    add     r30, r30, r3
    slwi    r0, r0, 16
    add     r30, r30, r0
    b       branch_0x801497bc

branch_0x8014972c:
    cmpwi   r4, 0xf
    bge-    branch_0x8014973c
    lis     r30, 0xffff
    b       branch_0x801497bc

branch_0x8014973c:
    cmpwi   r4, 0x19
    bge-    branch_0x801497b4
    subfic  r0, r4, 0x19
    lfd     f3, -0x4c38(r2)
    xoris   r3, r0, 0x8000
    lfs     f4, -0x4c10(r2)
    stw     r3, 0x14c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x4c0c(r2)
    stw     r3, 0x15c(sp)
    stw     r0, 0x148(sp)
    stw     r0, 0x158(sp)
    lfd     f2, 0x148(sp)
    lfd     f0, 0x158(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmuls   f2, f4, f2
    fmuls   f0, f1, f0
    fctiwz  f1, f2
    fctiwz  f0, f0
    stfd    f1, 0x150(sp)
    stfd    f0, 0x160(sp)
    lwz     r3, 0x154(sp)
    lwz     r0, 0x164(sp)
    extsh   r3, r3
    slwi    r3, r3, 8
    add     r30, r30, r3
    slwi    r0, r0, 16
    add     r30, r30, r0
    b       branch_0x801497bc

branch_0x801497b4:
    li      r0, 0x0
    stb     r0, 0x30c(r29)
branch_0x801497bc:
    addi    r0, r30, 0xc8
    stw     r0, 0xd4(sp)
    addi    r4, sp, 0xd8
    li      r3, 0x1
    lwz     r0, 0xd4(sp)
    stw     r0, 0xd8(sp)
    bl      GXSetTevColor
    stw     r30, 0xcc(sp)
    addi    r4, sp, 0xd0
    li      r3, 0x2
    lwz     r0, 0xcc(sp)
    stw     r0, 0xd0(sp)
    bl      GXSetTevColor
    lbz     r3, 0x30c(r29)
    addi    r0, r3, 0x1
    stb     r0, 0x30c(r29)
    b       branch_0x80149850

branch_0x80149800:
    lbz     r0, 0x30c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80149814
    li      r0, 0x0
    stb     r0, 0x30c(r29)
branch_0x80149814:
    lis     r30, unk_ff3f3fc8@h
    addi    r0, r30, unk_ff3f3fc8@l
    stw     r0, 0xc4(sp)
    addi    r4, sp, 0xc8
    li      r3, 0x1
    lwz     r0, 0xc4(sp)
    stw     r0, 0xc8(sp)
    bl      GXSetTevColor
    addi    r0, r30, 0x3f00
    stw     r0, 0xbc(sp)
    addi    r4, sp, 0xc0
    li      r3, 0x2
    lwz     r0, 0xbc(sp)
    stw     r0, 0xc0(sp)
    bl      GXSetTevColor
branch_0x80149850:
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r3, 0x104(sp)
    xoris   r0, r31, 0x8000
    lis     r4, 0x4330
    stw     r0, 0x154(sp)
    xoris   r5, r3, 0x8000
    stw     r5, 0x14c(sp)
    lis     r3, 0xcc01
    lfd     f5, -0x4c38(r2)
    stw     r4, 0x148(sp)
    lfs     f4, -0x4c74(r2)
    stw     r4, 0x150(sp)
    lfd     f1, 0x148(sp)
    lfd     f0, 0x150(sp)
    fsubs   f2, f1, f5
    stw     r0, 0x164(sp)
    fsubs   f1, f0, f5
    lfs     f3, -0x4c68(r2)
    stw     r4, 0x160(sp)
    stfs    f2, -0x8000(r3)
    lfd     f0, 0x160(sp)
    stfs    f1, -0x8000(r3)
    fsubs   f1, f0, f5
    stfs    f4, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    lwz     r0, 0x10c(sp)
    stw     r5, 0x184(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x15c(sp)
    stw     r4, 0x158(sp)
    lfd     f0, 0x158(sp)
    stw     r0, 0x174(sp)
    fsubs   f0, f0, f5
    stw     r4, 0x170(sp)
    stfs    f0, -0x8000(r3)
    lfd     f0, 0x170(sp)
    stfs    f1, -0x8000(r3)
    fsubs   f1, f0, f5
    stfs    f3, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    lwz     r0, 0x110(sp)
    stw     r4, 0x180(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x16c(sp)
    lfd     f0, 0x180(sp)
    stw     r4, 0x168(sp)
    fsubs   f0, f0, f5
    lfd     f2, 0x168(sp)
    stfs    f1, -0x8000(r3)
    fsubs   f1, f2, f5
    stw     r0, 0x17c(sp)
    stfs    f1, -0x8000(r3)
    stw     r4, 0x178(sp)
    stfs    f3, -0x8000(r3)
    lfd     f1, 0x178(sp)
    stfs    f3, -0x8000(r3)
    fsubs   f1, f1, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    b       branch_0x80149ab4

branch_0x80149954:
    lbz     r0, 0x48(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801499b0
    lbz     r0, 0x30c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801499b0
    li      r30, 0x0
    stw     r30, 0xa4(sp)
    li      r0, -0x64
    addi    r7, sp, 0xa4
    stw     r30, 0xac(sp)
    addi    r6, sp, 0xac
    addi    r5, sp, 0xb4
    stw     r30, 0xb4(sp)
    li      r4, 0x5a
    stw     r30, 0xa8(sp)
    stw     r0, 0xb0(sp)
    stw     r30, 0xb8(sp)
    lwz     r3, 0x274(r29)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    stb     r30, 0x30c(r29)
    li      r0, 0x1
    stb     r0, 0x49(r29)
branch_0x801499b0:
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x104(sp)
    lis     r5, 0x4330
    lwz     r6, 0x108(sp)
    lis     r3, 0xcc01
    xoris   r4, r0, 0x8000
    stw     r4, 0x154(sp)
    xoris   r0, r6, 0x8000
    lfd     f5, -0x4c38(r2)
    stw     r0, 0x14c(sp)
    lfs     f4, -0x4c74(r2)
    stw     r5, 0x150(sp)
    lfs     f3, -0x4c68(r2)
    stw     r5, 0x148(sp)
    lfd     f0, 0x150(sp)
    lfd     f1, 0x148(sp)
    fsubs   f0, f0, f5
    stw     r0, 0x15c(sp)
    fsubs   f1, f1, f5
    stw     r4, 0x184(sp)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lwz     r0, 0x10c(sp)
    stw     r5, 0x158(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x164(sp)
    lfd     f0, 0x158(sp)
    stw     r5, 0x160(sp)
    fsubs   f1, f0, f5
    lfd     f0, 0x160(sp)
    stw     r0, 0x174(sp)
    fsubs   f0, f0, f5
    stw     r5, 0x170(sp)
    stfs    f0, -0x8000(r3)
    lfd     f0, 0x170(sp)
    stfs    f1, -0x8000(r3)
    fsubs   f1, f0, f5
    stfs    f3, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lwz     r0, 0x110(sp)
    stw     r5, 0x180(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x16c(sp)
    lfd     f0, 0x180(sp)
    stw     r5, 0x168(sp)
    fsubs   f0, f0, f5
    lfd     f2, 0x168(sp)
    stw     r0, 0x17c(sp)
    fsubs   f2, f2, f5
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stw     r5, 0x178(sp)
    stfs    f3, -0x8000(r3)
    lfd     f1, 0x178(sp)
    stfs    f3, -0x8000(r3)
    fsubs   f1, f1, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f3, -0x8000(r3)
branch_0x80149ab4:
    lbz     r0, 0x330(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x334(r3)
    lbzu    r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80149ad8
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x80149ad8:
    lwz     r0, 0x1c4(sp)
    lfd     f31, 0x1b8(sp)
    lfd     f30, 0x1b0(sp)
    mtlr    r0
    lfd     f29, 0x1a8(sp)
    lwz     r31, 0x1a4(sp)
    lwz     r30, 0x1a0(sp)
    lwz     r29, 0x19c(sp)
    addi    sp, sp, 0x1c0
    blr


.globl startAppearStar__11TGCConsole2Fv
startAppearStar__11TGCConsole2Fv: # 0x80149b00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x160(sp)
    stmw    r26, 0x148(sp)
    mr      r28, r3
    lbz     r0, 0x34(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80149eb8
    lwz     r4, 0x140(r28)
    li      r3, 0x0
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x14(r4)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80149b40
    lfs     f0, -0x4c70(r2)
    b       branch_0x80149b44

branch_0x80149b40:
    lfs     f0, -0x4c6c(r2)
branch_0x80149b44:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r0, 0x144(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80149b94
    lfs     f1, 0x18(r4)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80149b74
    lfs     f0, -0x4c70(r2)
    b       branch_0x80149b78

branch_0x80149b74:
    lfs     f0, -0x4c6c(r2)
branch_0x80149b78:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r0, 0x144(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80149b94
    li      r3, 0x1
branch_0x80149b94:
    clrlwi. r0, r3, 24
    beq-    branch_0x80149ba0
    b       branch_0x80149eb8

branch_0x80149ba0:
    li      r0, 0x1
    stb     r0, 0x59(r28)
    lbz     r0, 0x35(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80149bf4
    lwz     r3, 0x140(r28)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x160(r28)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x144(r28)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x164(r28)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    stb     r4, 0x35(r28)
branch_0x80149bf4:
    lwz     r27, 0x140(r28)
    lis     r29, 0x4330
    lfs     f1, -0x4c74(r2)
    li      r4, 0x28
    lwz     r3, 0x10(r27)
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    addi    r0, r3, 0x1
    fmr     f3, f1
    neg     r30, r0
    xoris   r0, r30, 0x8000
    stw     r0, 0x144(sp)
    addi    r3, r27, 0x14
    stw     r29, 0x140(sp)
    lfd     f0, 0x140(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r30
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    li      r30, 0x1
    stb     r30, 0x4e(r27)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0x140(r28)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r3, 0x128(r28)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x12c(r28)
    li      r31, 0x0
    li      r4, 0x28
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x130(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x134(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x138(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x13c(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r26, 0x160(r28)
    lfs     f1, -0x4c74(r2)
    lwz     r5, 0x10(r26)
    addi    r3, r26, 0x14
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    addi    r0, r5, 0x1
    neg     r27, r0
    fmr     f3, f1
    xoris   r0, r27, 0x8000
    stw     r0, 0x13c(sp)
    stw     r29, 0x138(sp)
    lfd     f0, 0x138(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r0, 0x8(r26)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r26)
    add     r5, r0, r27
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4e(r26)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0x160(r28)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r3, 0x148(r28)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x14c(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x150(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x154(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x158(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x15c(r28)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x108(r28)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80149da0
    stb     r30, 0xc(r3)
branch_0x80149da0:
    lwz     r26, 0x108(r28)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x18(r26)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80149dbc
    lfs     f0, -0x4c70(r2)
    b       branch_0x80149dc0

branch_0x80149dbc:
    lfs     f0, -0x4c6c(r2)
branch_0x80149dc0:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r26)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x138(sp)
    lwz     r30, 0x13c(sp)
    ble-    branch_0x80149de8
    lfs     f0, -0x4c70(r2)
    b       branch_0x80149dec

branch_0x80149de8:
    lfs     f0, -0x4c6c(r2)
branch_0x80149dec:
    fadds   f0, f2, f0
    xoris   r0, r30, 0x8000
    lfs     f1, -0x4c74(r2)
    lis     r5, 0x4330
    stw     r0, 0x134(sp)
    fctiwz  f4, f0
    stw     r5, 0x130(sp)
    lfd     f3, -0x4c38(r2)
    fmr     f2, f1
    lfd     f0, 0x130(sp)
    stfd    f4, 0x138(sp)
    fsubs   f4, f0, f3
    addi    r3, r26, 0x14
    lwz     r29, 0x13c(sp)
    li      r4, 0x28
    xoris   r0, r29, 0x8000
    stw     r0, 0x144(sp)
    stw     r5, 0x140(sp)
    lfd     f0, 0x140(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r26)
    add     r4, r4, r29
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r30, 0x1
    stb     r30, 0x4e(r26)
    li      r29, 0x0
    addi    r5, sp, 0x120
    stw     r29, 0x120(sp)
    li      r4, 0x32
    addi    r6, r13, R13Off_m0x63f8
    stw     r29, 0x124(sp)
    addi    r7, r13, R13Off_m0x63f8
    lwz     r3, 0xc8(r28)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x144(r28)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x164(r28)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
    stw     r29, 0x5c(r28)
    stb     r30, 0x34(r28)
branch_0x80149eb8:
    lmw     r26, 0x148(sp)
    lwz     r0, 0x164(sp)
    addi    sp, sp, 0x160
    mtlr    r0
    blr


.globl startDisappearStar__11TGCConsole2Fv
startDisappearStar__11TGCConsole2Fv: # 0x80149ecc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    stw     r28, 0x90(sp)
    lwz     r28, 0x140(r3)
    lha     r0, 0x26a(r3)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x18(r28)
    lwz     r3, 0x10(r28)
    fcmpo   cr0, f1, f0
    addi    r3, r3, 0x1
    neg     r3, r3
    add     r0, r0, r3
    ble-    branch_0x80149f1c
    lfs     f0, -0x4c70(r2)
    b       branch_0x80149f20

branch_0x80149f1c:
    lfs     f0, -0x4c6c(r2)
branch_0x80149f20:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r28)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x88(sp)
    lwz     r29, 0x8c(sp)
    ble-    branch_0x80149f48
    lfs     f0, -0x4c70(r2)
    b       branch_0x80149f4c

branch_0x80149f48:
    lfs     f0, -0x4c6c(r2)
branch_0x80149f4c:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r29, 0x8000
    stw     r3, 0x84(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x74(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r28, 0x14
    stw     r5, 0x80(sp)
    stfd    f0, 0x88(sp)
    li      r4, 0x28
    lfd     f0, 0x80(sp)
    lwz     r30, 0x8c(sp)
    stw     r5, 0x70(sp)
    fsubs   f2, f0, f3
    xoris   r0, r30, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0x7c(sp)
    lfd     f0, 0x70(sp)
    stw     r5, 0x78(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x78(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r30
    lwz     r12, 0xc(r12)
    add     r5, r0, r29
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r28)
    lwz     r28, 0x160(r31)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x18(r28)
    lwz     r3, 0x10(r28)
    fcmpo   cr0, f1, f0
    addi    r0, r3, 0x1
    neg     r0, r0
    ble-    branch_0x8014a004
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014a008

branch_0x8014a004:
    lfs     f0, -0x4c6c(r2)
branch_0x8014a008:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r28)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x70(sp)
    lwz     r30, 0x74(sp)
    ble-    branch_0x8014a030
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014a034

branch_0x8014a030:
    lfs     f0, -0x4c6c(r2)
branch_0x8014a034:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r30, 0x8000
    stw     r3, 0x7c(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x8c(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r28, 0x14
    stw     r5, 0x78(sp)
    stfd    f0, 0x70(sp)
    li      r4, 0x28
    lfd     f0, 0x78(sp)
    lwz     r29, 0x74(sp)
    stw     r5, 0x88(sp)
    fsubs   f2, f0, f3
    xoris   r0, r29, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0x84(sp)
    lfd     f0, 0x88(sp)
    stw     r5, 0x80(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x80(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r29
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r28)
    lwz     r28, 0x108(r31)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x18(r28)
    lha     r0, 0x26a(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014a0e4
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014a0e8

branch_0x8014a0e4:
    lfs     f0, -0x4c6c(r2)
branch_0x8014a0e8:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r28)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x70(sp)
    lwz     r30, 0x74(sp)
    ble-    branch_0x8014a110
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014a114

branch_0x8014a110:
    lfs     f0, -0x4c6c(r2)
branch_0x8014a114:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r30, 0x8000
    stw     r3, 0x7c(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x8c(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r28, 0x14
    stw     r5, 0x78(sp)
    stfd    f0, 0x70(sp)
    li      r4, 0x28
    lfd     f0, 0x78(sp)
    lwz     r29, 0x74(sp)
    stw     r5, 0x88(sp)
    fsubs   f2, f0, f3
    xoris   r0, r29, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0x84(sp)
    lfd     f0, 0x88(sp)
    stw     r5, 0x80(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x80(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r29
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r4, 0x1
    stb     r4, 0x4e(r28)
    lwz     r3, 0x144(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x164(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    stb     r4, 0x35(r31)
    stb     r4, 0x5a(r31)
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl startAppearBalloon__11TGCConsole2FUlb
startAppearBalloon__11TGCConsole2FUlb: # 0x8014a1ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    clrlwi  r4, r4, 16
    lwz     r3, 0x3d4(r3)
    bl      getMessageEntry__14TMessageLoaderFUl
    mr      r31, r3
    lha     r0, 0x3f4(r28)
    lha     r4, 0x4(r3)
    cmpw    r4, r0
    bgt-    branch_0x8014a230
    li      r3, 0x0
    b       branch_0x8014a490

branch_0x8014a230:
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x0
    beq-    branch_0x8014a2a0
    lwz     r3, 0x3f8(r28)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8014a298
    stw     r29, 0x3f8(r28)
    lwz     r3, 0x3f8(r28)
    lwz     r4, 0x3e4(r28)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8014a278
    cmplw   r4, r4
    bne-    branch_0x8014a290
    lwz     r0, 0x3e8(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x8014a290
branch_0x8014a278:
    lwz     r3, 0x3bc(r28)
    li      r4, 0x0
    li      r0, 0x4
    stb     r4, 0xc(r3)
    stb     r4, 0x48(r28)
    stw     r0, 0x10(r28)
branch_0x8014a290:
    li      r3, 0x1
    b       branch_0x8014a490

branch_0x8014a298:
    li      r3, 0x0
    b       branch_0x8014a490

branch_0x8014a2a0:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x8014a2bc
    lbz     r0, 0x46(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8014a2c4
branch_0x8014a2bc:
    li      r3, 0x0
    b       branch_0x8014a490

branch_0x8014a2c4:
    sth     r4, 0x3f4(r28)
    li      r5, 0x0
    li      r0, 0x1
    lwz     r4, 0x3b4(r28)
    addi    r3, sp, 0x44
    stb     r5, 0xcc(r4)
    lwz     r4, 0x3b4(r28)
    stb     r0, 0xc(r4)
    lwz     r4, 0x3b4(r28)
    addi    r4, r4, 0xec
    bl      copy__7JUTRectFRC7JUTRect
    addi    r3, sp, 0x54
    addi    r4, sp, 0x44
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x3b4(r28)
    lwz     r4, 0x58(sp)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x60(sp)
    lwz     r12, 0x14(r12)
    subf    r7, r4, r0
    lwz     r6, 0x3c4(r28)
    lwz     r5, 0x3cc(r28)
    mtlr    r12
    lwz     r4, 0x3c0(r28)
    lwz     r0, 0x3c8(r28)
    subf    r5, r6, r5
    subf    r5, r7, r5
    subf    r4, r4, r0
    blrl
    lwz     r3, 0x3b4(r28)
    li      r4, 0x0
    lwz     r5, 0x58(sp)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x60(sp)
    lwz     r12, 0x10(r12)
    subf    r5, r5, r0
    mtlr    r12
    blrl
    lwz     r3, 0x3b8(r28)
    bl      getStringPtr__10J2DTextBoxCFv
    mr      r4, r3
    lwz     r3, 0x3dc(r28)
    li      r5, 0x400
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
    lwz     r3, 0x3bc(r28)
    bl      getStringPtr__10J2DTextBoxCFv
    mr      r4, r3
    lwz     r3, 0x3e0(r28)
    li      r5, 0x400
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
    lwz     r3, 0x3d4(r28)
    li      r5, 0x400
    lwz     r0, 0x0(r31)
    lwz     r4, 0x4(r3)
    lwz     r3, 0x3d8(r28)
    add     r27, r4, r0
    addi    r4, r27, 0x0
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    stw     r29, 0x3e4(r28)
    mr      r3, r27
    bl      strlen
    stb     r30, 0x3fc(r28)
    lis     r4, 0x4330
    lha     r0, 0x3ec(r28)
    stw     r3, 0x7c(sp)
    xoris   r0, r0, 0x8000
    lfd     f4, -0x4c30(r2)
    stw     r0, 0x74(sp)
    lfd     f1, -0x4c38(r2)
    stw     r4, 0x78(sp)
    lfs     f2, 0x3f0(r28)
    stw     r4, 0x70(sp)
    lfd     f3, 0x78(sp)
    lfd     f0, 0x70(sp)
    fsubs   f3, f3, f4
    fsubs   f0, f0, f1
    fmadds  f0, f3, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x3e8(r28)
    lwz     r0, 0x3e4(r28)
    cmplwi  r0, 0x2c
    bne-    branch_0x8014a41c
    li      r0, 0x96
    stw     r0, 0x3e8(r28)
branch_0x8014a41c:
    lwz     r0, 0x3e8(r28)
    cmpwi   r0, 0x0
    bgt-    branch_0x8014a430
    li      r0, 0x1
    stw     r0, 0x3e8(r28)
branch_0x8014a430:
    li      r4, 0x1
    stb     r4, 0x48(r28)
    li      r0, 0x0
    lis     r3, scNozzleSoundList@h
    stw     r0, 0x14(r28)
    addi    r0, r3, scNozzleSoundList@l
    stw     r4, 0x10(r28)
    lbz     r3, 0x8(r31)
    slwi    r3, r3, 2
    add     r3, r0, r3
    lwz     r28, 0x0(r3)
    cmpwi   r28, -0x1
    beq-    branch_0x8014a48c
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r28
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8014a48c
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8014a48c:
    li      r3, 0x1
branch_0x8014a490:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl startDisappearBalloon__11TGCConsole2FUlb
startDisappearBalloon__11TGCConsole2FUlb: # 0x8014a4a4
    clrlwi. r0, r5, 24
    bne-    branch_0x8014a4dc
    lwz     r5, 0x3f8(r3)
    addis   r0, r5, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8014a4dc
    lwz     r0, 0x3e4(r3)
    cmplw   r4, r0
    bne-    branch_0x8014a4d4
    lwz     r0, 0x3e8(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8014a4dc
branch_0x8014a4d4:
    li      r3, 0x0
    blr

branch_0x8014a4dc:
    lwz     r4, 0x3bc(r3)
    li      r5, 0x0
    li      r0, 0x4
    stb     r5, 0xc(r4)
    stb     r5, 0x48(r3)
    stw     r0, 0x10(r3)
    li      r3, 0x1
    blr


.globl pauseOut__11TGCConsole2Fv
pauseOut__11TGCConsole2Fv: # 0x8014a4fc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r25, 0x8c(sp)
    addi    r29, r3, 0x0
    bl      startAppearTelop__11TGCConsole2Fb
    li      r0, 0x1
    stb     r0, 0x40(r29)
    li      r27, 0x0
    stb     r27, 0x41(r29)
    stb     r0, 0x59(r29)
    lbz     r0, 0x520(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8014a544
    mr      r3, r29
    bl      startInsertTimer__11TGCConsole2Fv
    stb     r27, 0x520(r29)
branch_0x8014a544:
    lbz     r0, 0x44c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8014a560
    mr      r3, r29
    bl      startAppearRedCoin__11TGCConsole2Fv
    li      r0, 0x0
    stb     r0, 0x44c(r29)
branch_0x8014a560:
    lbz     r0, 0x42a(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8014a57c
    mr      r3, r29
    bl      startInsertJetBalloon__11TGCConsole2Fv
    li      r0, 0x0
    stb     r0, 0x42a(r29)
branch_0x8014a57c:
    lwz     r25, 0x3a8(r29)
    lwz     r3, 0x0(r25)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014a64c
    lbz     r0, 0x3b(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8014a64c
    lwz     r4, 0x10(r25)
    addi    r3, r25, 0x14
    lfs     f1, 0x18(r25)
    addi    r0, r4, 0x1
    neg     r30, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r25)
    addi    r28, r3, 0x0
    addi    r3, r25, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r27, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r30, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r27, 0x8000
    stw     r0, 0x84(sp)
    xoris   r0, r28, 0x8000
    lis     r5, 0x4330
    stw     r3, 0x7c(sp)
    addi    r3, r25, 0x14
    stw     r0, 0x74(sp)
    li      r4, 0x32
    stw     r5, 0x80(sp)
    stw     r5, 0x78(sp)
    lfd     f0, 0x80(sp)
    stw     r5, 0x70(sp)
    lfd     f3, 0x78(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x70(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r25)
    add     r4, r4, r27
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r25)
    stb     r0, 0x3b(r29)
branch_0x8014a64c:
    lwz     r25, 0x140(r29)
    lha     r0, 0x26a(r29)
    lwz     r4, 0x10(r25)
    addi    r3, r25, 0x14
    lfs     f1, 0x18(r25)
    addi    r4, r4, 0x1
    neg     r4, r4
    add     r30, r0, r4
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r25)
    addi    r28, r3, 0x0
    addi    r3, r25, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r27, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r30, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r27, 0x8000
    stw     r0, 0x74(sp)
    xoris   r0, r28, 0x8000
    lis     r30, 0x4330
    stw     r3, 0x7c(sp)
    addi    r3, r25, 0x14
    stw     r0, 0x84(sp)
    li      r4, 0x28
    stw     r30, 0x70(sp)
    stw     r30, 0x78(sp)
    lfd     f0, 0x70(sp)
    stw     r30, 0x80(sp)
    lfd     f3, 0x78(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x80(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r25)
    add     r4, r4, r27
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4e(r25)
    lwz     r26, 0x160(r29)
    lwz     r4, 0x10(r26)
    addi    r3, r26, 0x14
    lfs     f1, 0x18(r26)
    addi    r0, r4, 0x1
    neg     r25, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r26)
    addi    r28, r3, 0x0
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r27, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r27, 0x8000
    stw     r0, 0x6c(sp)
    xoris   r0, r28, 0x8000
    stw     r3, 0x64(sp)
    addi    r3, r26, 0x14
    li      r4, 0x28
    stw     r0, 0x5c(sp)
    stw     r30, 0x68(sp)
    stw     r30, 0x60(sp)
    lfd     f0, 0x68(sp)
    stw     r30, 0x58(sp)
    lfd     f3, 0x60(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x58(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r26)
    add     r4, r4, r27
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    stb     r31, 0x4e(r26)
    lwz     r26, 0x108(r29)
    lha     r25, 0x26a(r29)
    lfs     f1, 0x18(r26)
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r26)
    addi    r27, r3, 0x0
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r28, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r28, 0x8000
    stw     r0, 0x54(sp)
    xoris   r0, r27, 0x8000
    stw     r3, 0x4c(sp)
    addi    r3, r26, 0x14
    li      r4, 0x28
    stw     r0, 0x44(sp)
    stw     r30, 0x50(sp)
    stw     r30, 0x48(sp)
    lfd     f0, 0x50(sp)
    stw     r30, 0x40(sp)
    lfd     f3, 0x48(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x40(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r26)
    add     r4, r4, r28
    lwz     r12, 0xc(r12)
    add     r5, r0, r27
    mtlr    r12
    blrl
    stb     r31, 0x4e(r26)
    li      r0, 0x0
    lwz     r4, 0x144(r29)
    lwz     r3, 0x11c(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x11c(r4)
    lwz     r4, 0x164(r29)
    lwz     r3, 0x11c(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x11c(r4)
    stb     r31, 0x35(r29)
    stb     r31, 0x5a(r29)
    stb     r0, 0x5a(r29)
    lwz     r0, 0xac(sp)
    lmw     r25, 0x8c(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl pauseIn__11TGCConsole2Fv
pauseIn__11TGCConsole2Fv: # 0x8014a890
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    mr      r31, r3
    lwz     r4, 0x3e4(r3)
    bl      startDisappearBalloon__11TGCConsole2FUlb
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAppearMario__11TGCConsole2Fb
    mr      r3, r31
    bl      startAppearStar__11TGCConsole2Fv
    lbz     r0, 0x43(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014a998
    lwz     r3, 0x524(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014a998
    li      r28, 0x1
    stb     r28, 0x43(r31)
    stb     r28, 0x5a(r31)
    lwz     r26, 0x524(r31)
    lwz     r0, 0x8(r26)
    addi    r3, r26, 0x14
    lfs     f1, 0x18(r26)
    subfic  r27, r0, 0x1d1
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r26)
    addi    r29, r3, 0x0
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r30, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r27, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r30, 0x8000
    stw     r0, 0x3c(sp)
    xoris   r0, r29, 0x8000
    lis     r5, 0x4330
    stw     r3, 0x34(sp)
    addi    r3, r26, 0x14
    stw     r0, 0x2c(sp)
    li      r4, 0x50
    stw     r5, 0x38(sp)
    stw     r5, 0x30(sp)
    lfd     f0, 0x38(sp)
    stw     r5, 0x28(sp)
    lfd     f3, 0x30(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x28(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r26)
    add     r4, r4, r30
    lwz     r12, 0xc(r12)
    add     r5, r0, r29
    mtlr    r12
    blrl
    stb     r28, 0x4e(r26)
branch_0x8014a998:
    mr      r3, r31
    bl      startDownLeftBot__11TGCConsole2Fv
    li      r0, 0x0
    stb     r0, 0x59(r31)
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl startAppearRedCoin__11TGCConsole2Fv
startAppearRedCoin__11TGCConsole2Fv: # 0x8014a9bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xa8(sp)
    li      r30, 0x1
    stw     r29, 0xa4(sp)
    stw     r28, 0xa0(sp)
    stb     r30, 0x3c(r3)
    stb     r30, 0x59(r3)
    lwz     r3, 0x42c(r3)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r3, 0x450(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014aa70
    lwz     r28, 0x42c(r31)
    lis     r0, unk_43300028@h
    lfs     f1, -0x4c74(r2)
    addi    r4, r0, unk_43300028@l
    lwz     r3, 0x8(r28)
    lfd     f4, -0x4c38(r2)
    fmr     f3, f1
    subfic  r29, r3, 0x1d1
    lfs     f2, -0x4c08(r2)
    xoris   r3, r29, 0x8000
    stw     r3, 0x9c(sp)
    addi    r3, r28, 0x14
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r0, 0x8(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r28)
    add     r5, r0, r29
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4e(r28)
    b       branch_0x8014aad4

branch_0x8014aa70:
    lwz     r28, 0x42c(r31)
    lis     r0, unk_43300028@h
    lfs     f1, -0x4c74(r2)
    addi    r4, r0, unk_43300028@l
    lwz     r3, 0x8(r28)
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    subfic  r29, r3, 0x1d1
    fmr     f3, f1
    xoris   r3, r29, 0x8000
    stw     r3, 0x9c(sp)
    addi    r3, r28, 0x14
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r0, 0x8(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r28)
    add     r5, r0, r29
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4e(r28)
branch_0x8014aad4:
    lwz     r3, 0x430(r31)
    li      r0, 0x1
    li      r4, 0x32
    lwz     r3, 0x0(r3)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stb     r0, 0xc(r3)
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x430(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x434(r31)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x43c(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x438(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    sth     r0, 0x74(r31)
    lwz     r3, 0x440(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x444(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl startInsertJetBalloon__11TGCConsole2Fv
startInsertJetBalloon__11TGCConsole2Fv: # 0x8014ab60
    mflr    r0
    li      r4, 0x32
    stw     r0, 0x4(sp)
    addi    r5, r13, R13Off_m0x6418
    addi    r6, r13, R13Off_m0x6410
    stwu    sp, -0x90(sp)
    addi    r7, r13, R13Off_m0x6410
    stw     r31, 0x8c(sp)
    li      r31, 0x1
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x84(sp)
    stb     r31, 0x3d(r3)
    stb     r31, 0x59(r3)
    lwz     r3, 0x400(r3)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x404(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x404(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x408(r30)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x414(r30)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    stb     r0, 0x72(r30)
    stb     r0, 0x429(r30)
    lwz     r3, 0x418(r30)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x41c(r30)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x420(r30)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x424(r30)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x408(r30)
    lwz     r0, 0x40c(r30)
    cmplw   r3, r0
    bne-    branch_0x8014ac84
    lwz     r29, 0x400(r30)
    lis     r0, unk_43300050@h
    lfs     f1, -0x4c74(r2)
    addi    r4, r0, unk_43300050@l
    lwz     r3, 0x8(r29)
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    subfic  r30, r3, 0x1d1
    fmr     f3, f1
    xoris   r3, r30, 0x8000
    stw     r3, 0x7c(sp)
    addi    r3, r29, 0x14
    stw     r0, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r0, 0x8(r29)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r29)
    add     r5, r0, r30
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    b       branch_0x8014ace8

branch_0x8014ac84:
    lwz     r29, 0x400(r30)
    lis     r0, unk_43300050@h
    lfs     f1, -0x4c74(r2)
    addi    r4, r0, unk_43300050@l
    lwz     r3, 0x8(r29)
    lfd     f4, -0x4c38(r2)
    fmr     f3, f1
    subfic  r30, r3, 0x1d1
    lfs     f2, -0x4c08(r2)
    xoris   r3, r30, 0x8000
    stw     r3, 0x7c(sp)
    addi    r3, r29, 0x14
    stw     r0, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r0, 0x8(r29)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r29)
    add     r5, r0, r30
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
branch_0x8014ace8:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl startAppearJetBalloon__11TGCConsole2Fii
startAppearJetBalloon__11TGCConsole2Fii: # 0x8014ad04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    cmpwi   r31, 0xa
    stw     r30, 0x60(sp)
    mr      r30, r4
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    stb     r31, 0x428(r3)
    blt-    branch_0x8014adc8
    xoris   r0, r31, 0x8000
    lwz     r3, 0x420(r29)
    stw     r0, 0x54(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0x50(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0x50(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x424(r29)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r31
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r31
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8014ade8

branch_0x8014adc8:
    slwi    r0, r31, 2
    lwz     r3, 0x420(r29)
    add     r4, r29, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r3, 0x0(r3)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8014ade8:
    cmpwi   r30, 0x0
    bne-    branch_0x8014adfc
    lwz     r0, 0x40c(r29)
    stw     r0, 0x408(r29)
    b       branch_0x8014ae0c

branch_0x8014adfc:
    cmpwi   r30, 0x1
    bne-    branch_0x8014ae0c
    lwz     r0, 0x410(r29)
    stw     r0, 0x408(r29)
branch_0x8014ae0c:
    mr      r3, r29
    bl      startInsertJetBalloon__11TGCConsole2Fv
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl startInsertTimer__11TGCConsole2Fv
startInsertTimer__11TGCConsole2Fv: # 0x8014ae30
    mflr    r0
    li      r6, 0x8
    stw     r0, 0x4(sp)
    li      r0, 0x1
    li      r5, 0x0
    stwu    sp, -0x90(sp)
    cmpwi   r6, 0xa
    stmw    r27, 0x7c(sp)
    addi    r31, r3, 0x0
    stb     r0, 0x3e(r3)
    subfic  r0, r6, 0xa
    mtctr   r0
    lwz     r3, 0x45c(r3)
    lwz     r4, 0x0(r3)
    slwi    r3, r6, 2
    stb     r5, 0xc(r4)
    lwz     r4, 0x460(r31)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x464(r31)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x468(r31)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x46c(r31)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x470(r31)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x474(r31)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x478(r31)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    bge-    branch_0x8014aee0
branch_0x8014aec8:
    addi    r0, r3, 0x45c
    lwzx    r4, r31, r0
    addi    r3, r3, 0x4
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    bdnz+      branch_0x8014aec8
branch_0x8014aee0:
    lwz     r3, 0x484(r31)
    li      r29, 0x0
    li      r30, 0x1
    lwz     r3, 0x0(r3)
    lis     r0, unk_43300028@h
    addi    r4, r0, unk_43300028@l
    stb     r29, 0xc(r3)
    lwz     r3, 0x488(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x48c(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    stb     r30, 0x59(r31)
    lwz     r3, 0x450(r31)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r27, 0x450(r31)
    lfs     f1, -0x4c74(r2)
    lwz     r5, 0x8(r27)
    addi    r3, r27, 0x14
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    subfic  r28, r5, 0x1d1
    xoris   r5, r28, 0x8000
    fmr     f3, f1
    stw     r5, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4e(r27)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6418
    lwz     r3, 0x454(r31)
    addi    r6, r13, R13Off_m0x6410
    addi    r7, r13, R13Off_m0x6410
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r3, 0x454(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x458(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    stw     r29, 0x51c(r31)
    stb     r29, 0x76(r31)
    lwz     r0, 0x94(sp)
    lmw     r27, 0x7c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl startAppearTimer__11TGCConsole2Fil
startAppearTimer__11TGCConsole2Fil: # 0x8014afcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r24, 0xa0(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lbz     r0, 0x43(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014b0bc
    lwz     r3, 0x524(r29)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b0bc
    li      r26, 0x1
    stb     r26, 0x43(r29)
    stb     r26, 0x5a(r29)
    lwz     r24, 0x524(r29)
    lwz     r0, 0x8(r24)
    addi    r3, r24, 0x14
    lfs     f1, 0x18(r24)
    subfic  r25, r0, 0x1d1
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r24)
    addi    r27, r3, 0x0
    addi    r3, r24, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r28, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r28, 0x8000
    stw     r0, 0x9c(sp)
    xoris   r0, r27, 0x8000
    lis     r5, 0x4330
    stw     r3, 0x94(sp)
    addi    r3, r24, 0x14
    stw     r0, 0x8c(sp)
    li      r4, 0x50
    stw     r5, 0x98(sp)
    stw     r5, 0x90(sp)
    lfd     f0, 0x98(sp)
    stw     r5, 0x88(sp)
    lfd     f3, 0x90(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x88(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r28
    lwz     r12, 0xc(r12)
    add     r5, r0, r27
    mtlr    r12
    blrl
    stb     r26, 0x4e(r24)
branch_0x8014b0bc:
    cmpwi   r30, 0x0
    bne-    branch_0x8014b0d8
    li      r0, 0x1
    stb     r0, 0x514(r29)
    li      r0, 0x0
    stw     r0, 0x518(r29)
    b       branch_0x8014b0e8

branch_0x8014b0d8:
    li      r3, 0x0
    mulli   r0, r31, 0x64
    stb     r3, 0x514(r29)
    stw     r0, 0x518(r29)
branch_0x8014b0e8:
    lbz     r0, 0x514(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8014b0fc
    cmpwi   r31, 0x3c
    blt-    branch_0x8014b118
branch_0x8014b0fc:
    lwz     r3, 0x504(r29)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x508(r29)
    stb     r0, 0xc(r3)
    b       branch_0x8014b130

branch_0x8014b118:
    lwz     r3, 0x504(r29)
    li      r4, 0x0
    li      r0, 0x1
    stb     r4, 0xc(r3)
    lwz     r3, 0x508(r29)
    stb     r0, 0xc(r3)
branch_0x8014b130:
    cmpwi   r31, 0x0
    ble-    branch_0x8014b144
    mr      r3, r29
    lwz     r4, 0x518(r29)
    bl      setTimer__11TGCConsole2Fl
branch_0x8014b144:
    lwz     r0, 0x510(r29)
    mr      r3, r29
    stw     r0, 0x78(sp)
    lwz     r4, 0x474(r29)
    lwz     r0, 0x78(sp)
    lwz     r4, 0x0(r4)
    stw     r0, 0x13c(r4)
    lwz     r0, 0x510(r29)
    stw     r0, 0x78(sp)
    lwz     r4, 0x478(r29)
    lwz     r0, 0x78(sp)
    lwz     r4, 0x0(r4)
    stw     r0, 0x13c(r4)
    lwz     r0, 0x510(r29)
    stw     r0, 0x78(sp)
    lwz     r4, 0x47c(r29)
    lwz     r0, 0x78(sp)
    lwz     r4, 0x0(r4)
    stw     r0, 0x13c(r4)
    lwz     r0, 0x510(r29)
    stw     r0, 0x78(sp)
    lwz     r4, 0x480(r29)
    lwz     r0, 0x78(sp)
    lwz     r4, 0x0(r4)
    stw     r0, 0x13c(r4)
    lwz     r0, 0x510(r29)
    stw     r0, 0x70(sp)
    lwz     r4, 0x48c(r29)
    lwz     r0, 0x70(sp)
    lwz     r4, 0x0(r4)
    stw     r0, 0x13c(r4)
    bl      startInsertTimer__11TGCConsole2Fv
    lmw     r24, 0xa0(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl startDisappearTimer__11TGCConsole2Fv
startDisappearTimer__11TGCConsole2Fv: # 0x8014b1d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    mr      r28, r3
    lwz     r29, 0x450(r3)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x18(r29)
    lwz     r0, 0x8(r29)
    fcmpo   cr0, f1, f0
    subfic  r3, r0, 0x1d1
    addi    r0, r3, 0x3c
    ble-    branch_0x8014b220
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b224

branch_0x8014b220:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b224:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r29)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x48(sp)
    lwz     r30, 0x4c(sp)
    ble-    branch_0x8014b24c
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b250

branch_0x8014b24c:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b250:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r30, 0x8000
    stw     r3, 0x44(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x34(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r29, 0x14
    stw     r5, 0x40(sp)
    stfd    f0, 0x48(sp)
    li      r4, 0x28
    lfd     f0, 0x40(sp)
    lwz     r31, 0x4c(sp)
    stw     r5, 0x30(sp)
    fsubs   f2, f0, f3
    xoris   r0, r31, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0x3c(sp)
    lfd     f0, 0x30(sp)
    stw     r5, 0x38(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x38(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r31
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r29)
    stb     r0, 0x3f(r28)
    stb     r0, 0x5a(r28)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl startDisappearTelop__11TGCConsole2Fv
startDisappearTelop__11TGCConsole2Fv: # 0x8014b308
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    lbz     r0, 0x43(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014b434
    lwz     r4, 0x524(r3)
    lwz     r4, 0x0(r4)
    lbz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8014b344
    b       branch_0x8014b434

branch_0x8014b344:
    li      r0, 0x1
    stb     r0, 0x43(r3)
    stb     r0, 0x5a(r3)
    lwz     r29, 0x524(r3)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x18(r29)
    lwz     r0, 0x8(r29)
    fcmpo   cr0, f1, f0
    subfic  r0, r0, 0x1d1
    ble-    branch_0x8014b374
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b378

branch_0x8014b374:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b378:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r29)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x58(sp)
    lwz     r30, 0x5c(sp)
    ble-    branch_0x8014b3a0
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b3a4

branch_0x8014b3a0:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b3a4:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r30, 0x8000
    stw     r3, 0x54(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x44(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r29, 0x14
    stw     r5, 0x50(sp)
    stfd    f0, 0x58(sp)
    li      r4, 0x50
    lfd     f0, 0x50(sp)
    lwz     r31, 0x5c(sp)
    stw     r5, 0x40(sp)
    fsubs   f2, f0, f3
    xoris   r0, r31, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0x4c(sp)
    lfd     f0, 0x40(sp)
    stw     r5, 0x48(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x48(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r31
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r29)
branch_0x8014b434:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl startAppearTelop__11TGCConsole2Fb
startAppearTelop__11TGCConsole2Fb: # 0x8014b450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stmw    r27, 0xdc(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    lbz     r0, 0x50(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014b614
    lwz     r3, 0x534(r30)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b614
    lwz     r0, 0x574(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b614
    lwz     r3, 0x450(r30)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b4a8
    b       branch_0x8014b614

branch_0x8014b4a8:
    clrlwi. r0, r31, 24
    bne-    branch_0x8014b4bc
    lbz     r0, 0x44(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b614
branch_0x8014b4bc:
    li      r29, 0x1
    stb     r29, 0x42(r30)
    lis     r0, unk_43300050@h
    addi    r4, r0, unk_43300050@l
    stb     r29, 0x59(r30)
    stb     r29, 0x571(r30)
    lwz     r3, 0x524(r30)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r27, 0x524(r30)
    lfs     f1, -0x4c74(r2)
    lwz     r5, 0x8(r27)
    addi    r3, r27, 0x14
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    subfic  r28, r5, 0x1d1
    xoris   r5, r28, 0x8000
    fmr     f3, f1
    stw     r5, 0xd4(sp)
    stw     r0, 0xd0(sp)
    lfd     f0, 0xd0(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r31, 24
    stb     r29, 0x4e(r27)
    beq-    branch_0x8014b614
    lbz     r0, 0x55c(r30)
    lwz     r3, 0x574(r30)
    slwi    r0, r0, 2
    lwz     r5, 0x534(r30)
    lwzx    r3, r3, r0
    lwz     r0, 0x4(r5)
    clrlwi  r4, r3, 16
    lwz     r3, 0x52c(r30)
    mulli   r4, r4, 0xc
    add     r4, r5, r4
    lwz     r4, 0x8(r4)
    add     r27, r0, r4
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r27, 0x0
    li      r4, 0x3ff
    addi    r5, r2, R2Off_m0x4c04
    bl      snprintf
    lwz     r3, 0x530(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r27, 0x0
    li      r4, 0x3ff
    addi    r5, r2, R2Off_m0x4c04
    bl      snprintf
    lwz     r4, R13Off_m0x6038(r13)
    addi    r3, sp, 0x5c
    li      r5, 0x0
    bl      __ct__8J2DPrintFP7JUTFonti
    lwz     r3, 0x52c(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r3, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x5c
    bl      getWidth__8J2DPrintFPCce
    fctiwz  f0, f1
    li      r4, 0x4812
    stfd    f0, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x558(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8014b608
    li      r3, 0x4812
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8014b608:
    addi    r3, sp, 0x5c
    li      r4, -0x1
    bl      __dt__8J2DPrintFv
branch_0x8014b614:
    lmw     r27, 0xdc(sp)
    lwz     r0, 0xf4(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl startDownLeftBot__11TGCConsole2Fv
startDownLeftBot__11TGCConsole2Fv: # 0x8014b628
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    mr      r30, r3
    stw     r29, 0xdc(sp)
    stw     r28, 0xd8(sp)
    lbz     r0, 0x41(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014b9cc
    li      r0, 0x1
    stb     r0, 0x41(r30)
    li      r4, 0x0
    stb     r4, 0x40(r30)
    stb     r0, 0x5a(r30)
    lwz     r31, 0x450(r30)
    lwz     r3, 0x0(r31)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b7d4
    lfs     f2, 0x14(r31)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x8014b694
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b698

branch_0x8014b694:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b698:
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014b6e8
    lfs     f1, 0x18(r31)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014b6c8
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b6cc

branch_0x8014b6c8:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b6cc:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014b6e8
    li      r4, 0x1
branch_0x8014b6e8:
    clrlwi. r0, r4, 24
    beq-    branch_0x8014b7d4
    lfs     f1, 0x18(r31)
    lfs     f0, -0x4c74(r2)
    lwz     r0, 0x8(r31)
    fcmpo   cr0, f1, f0
    subfic  r3, r0, 0x1d1
    addi    r0, r3, 0x3c
    ble-    branch_0x8014b714
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b718

branch_0x8014b714:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b718:
    fadds   f1, f1, f0
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f2, f0
    fctiwz  f0, f1
    stfd    f0, 0xd0(sp)
    lwz     r28, 0xd4(sp)
    ble-    branch_0x8014b73c
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b740

branch_0x8014b73c:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b740:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r28, 0x8000
    stw     r3, 0xcc(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0xbc(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r31, 0x14
    stw     r5, 0xc8(sp)
    stfd    f0, 0xd0(sp)
    li      r4, 0x14
    lfd     f0, 0xc8(sp)
    lwz     r29, 0xd4(sp)
    stw     r5, 0xb8(sp)
    fsubs   f2, f0, f3
    xoris   r0, r29, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0xc4(sp)
    lfd     f0, 0xb8(sp)
    stw     r5, 0xc0(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0xc0(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r31)
    add     r4, r4, r29
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r31)
    stb     r0, 0x520(r30)
branch_0x8014b7d4:
    lwz     r31, 0x42c(r30)
    lwz     r3, 0x0(r31)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b8d0
    lfs     f1, 0x18(r31)
    lfs     f0, -0x4c74(r2)
    lwz     r0, 0x8(r31)
    fcmpo   cr0, f1, f0
    subfic  r3, r0, 0x1d1
    addi    r0, r3, 0x3c
    ble-    branch_0x8014b80c
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b810

branch_0x8014b80c:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b810:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r31)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0xb8(sp)
    lwz     r29, 0xbc(sp)
    ble-    branch_0x8014b838
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b83c

branch_0x8014b838:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b83c:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r29, 0x8000
    stw     r3, 0xc4(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0xd4(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r31, 0x14
    stw     r5, 0xc0(sp)
    stfd    f0, 0xb8(sp)
    li      r4, 0x14
    lfd     f0, 0xc0(sp)
    lwz     r28, 0xbc(sp)
    stw     r5, 0xd0(sp)
    fsubs   f2, f0, f3
    xoris   r0, r28, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0xcc(sp)
    lfd     f0, 0xd0(sp)
    stw     r5, 0xc8(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0xc8(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r31)
    add     r4, r4, r28
    lwz     r12, 0xc(r12)
    add     r5, r0, r29
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r31)
    stb     r0, 0x44c(r30)
branch_0x8014b8d0:
    lwz     r31, 0x400(r30)
    lwz     r3, 0x0(r31)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014b9cc
    lfs     f1, 0x18(r31)
    lfs     f0, -0x4c74(r2)
    lwz     r0, 0x8(r31)
    fcmpo   cr0, f1, f0
    subfic  r3, r0, 0x1d1
    addi    r0, r3, 0x3c
    ble-    branch_0x8014b908
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b90c

branch_0x8014b908:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b90c:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r31)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0xb8(sp)
    lwz     r29, 0xbc(sp)
    ble-    branch_0x8014b934
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014b938

branch_0x8014b934:
    lfs     f0, -0x4c6c(r2)
branch_0x8014b938:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r29, 0x8000
    stw     r3, 0xc4(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0xd4(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r31, 0x14
    stw     r5, 0xc0(sp)
    stfd    f0, 0xb8(sp)
    li      r4, 0x14
    lfd     f0, 0xc0(sp)
    lwz     r28, 0xbc(sp)
    stw     r5, 0xd0(sp)
    fsubs   f2, f0, f3
    xoris   r0, r28, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0xcc(sp)
    lfd     f0, 0xd0(sp)
    stw     r5, 0xc8(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0xc8(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r31)
    add     r4, r4, r28
    lwz     r12, 0xc(r12)
    add     r5, r0, r29
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r31)
    stb     r0, 0x42a(r30)
branch_0x8014b9cc:
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    lwz     r28, 0xd8(sp)
    addi    sp, sp, 0xe8
    blr


.globl startAppearLife__11TGCConsole2Fi
startAppearLife__11TGCConsole2Fi: # 0x8014b9ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2c8(sp)
    lbz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014ba20
    lbz     r0, 0x50(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014ba20
    lwz     r5, R13Off_m0x60d8(r13)
    lha     r0, 0x120(r5)
    cmpwi   r0, 0x0
    bne-    branch_0x8014ba28
branch_0x8014ba20:
    li      r3, 0x0
    b       branch_0x8014bf44

branch_0x8014ba28:
    cmpwi   r4, 0x0
    bne-    branch_0x8014bc7c
    li      r0, 0x3
    mtctr   r0
    li      r8, 0x0
    li      r4, 0x0
branch_0x8014ba40:
    li      r0, -0x1
    stw     r0, 0x2b8(sp)
    addi    r7, r4, 0x17c
    add     r7, r3, r7
    lwz     r5, 0x0(r7)
    li      r6, 0x0
    lwz     r0, 0x2b8(sp)
    stw     r0, 0x13c(r5)
    stw     r6, 0x2b0(sp)
    lwz     r5, 0x0(r7)
    lwz     r0, 0x2b0(sp)
    stw     r0, 0x140(r5)
    lwz     r5, R13Off_m0x60d8(r13)
    lha     r5, 0x120(r5)
    addi    r0, r5, 0x1
    cmpw    r0, r8
    ble-    branch_0x8014ba94
    lwz     r5, 0x0(r7)
    li      r0, 0x1
    stb     r0, 0xc(r5)
    b       branch_0x8014ba9c

branch_0x8014ba94:
    lwz     r5, 0x0(r7)
    stb     r6, 0xc(r5)
branch_0x8014ba9c:
    li      r0, -0x1
    addi    r7, r4, 0x184
    stw     r0, 0x2b8(sp)
    add     r7, r3, r7
    lwz     r5, 0x0(r7)
    li      r6, 0x0
    lwz     r0, 0x2b8(sp)
    addi    r8, r8, 0x1
    addi    r4, r4, 0x8
    stw     r0, 0x13c(r5)
    stw     r6, 0x2b0(sp)
    lwz     r5, 0x0(r7)
    lwz     r0, 0x2b0(sp)
    stw     r0, 0x140(r5)
    lwz     r5, R13Off_m0x60d8(r13)
    lha     r5, 0x120(r5)
    addi    r0, r5, 0x1
    cmpw    r0, r8
    ble-    branch_0x8014baf8
    lwz     r5, 0x0(r7)
    li      r0, 0x1
    stb     r0, 0xc(r5)
    b       branch_0x8014bb00

branch_0x8014baf8:
    lwz     r5, 0x0(r7)
    stb     r6, 0xc(r5)
branch_0x8014bb00:
    li      r0, -0x1
    addi    r7, r4, 0x184
    stw     r0, 0x2b8(sp)
    add     r7, r3, r7
    lwz     r5, 0x0(r7)
    li      r6, 0x0
    lwz     r0, 0x2b8(sp)
    addi    r8, r8, 0x1
    addi    r4, r4, 0x8
    stw     r0, 0x13c(r5)
    stw     r6, 0x2b0(sp)
    lwz     r5, 0x0(r7)
    lwz     r0, 0x2b0(sp)
    stw     r0, 0x140(r5)
    lwz     r5, R13Off_m0x60d8(r13)
    lha     r5, 0x120(r5)
    addi    r0, r5, 0x1
    cmpw    r0, r8
    ble-    branch_0x8014bb5c
    lwz     r5, 0x0(r7)
    li      r0, 0x1
    stb     r0, 0xc(r5)
    b       branch_0x8014bb64

branch_0x8014bb5c:
    lwz     r5, 0x0(r7)
    stb     r6, 0xc(r5)
branch_0x8014bb64:
    addi    r8, r8, 0x1
    addi    r4, r4, 0x8
    bdnz+      branch_0x8014ba40
    li      r8, -0x1
    stw     r8, 0x2a8(sp)
    lis     r6, unk_ff4c00c8@h
    li      r0, 0x0
    lwz     r7, 0x178(r3)
    addi    r4, r6, unk_ff4c00c8@l
    lwz     r5, 0x2a8(sp)
    lwz     r7, 0x0(r7)
    stw     r5, 0x13c(r7)
    stw     r0, 0x2a0(sp)
    lwz     r7, 0x178(r3)
    lwz     r5, 0x2a0(sp)
    lwz     r7, 0x0(r7)
    stw     r5, 0x140(r7)
    stw     r4, 0x298(sp)
    lwz     r5, 0x174(r3)
    lwz     r4, 0x298(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x13c(r5)
    stw     r6, 0x290(sp)
    lwz     r5, 0x174(r3)
    lwz     r4, 0x290(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x140(r5)
    lbz     r4, 0x1cc(r3)
    cmplwi  r4, 0x4
    blt-    branch_0x8014bc28
    stw     r8, 0x288(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x288(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x13c(r5)
    stw     r0, 0x280(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x280(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x140(r5)
    stw     r8, 0x278(sp)
    lwz     r5, 0x17c(r3)
    lwz     r4, 0x278(sp)
    stw     r4, 0x13c(r5)
    stw     r0, 0x270(sp)
    lwz     r4, 0x17c(r3)
    lwz     r0, 0x270(sp)
    stw     r0, 0x140(r4)
    b       branch_0x8014bf0c

branch_0x8014bc28:
    lis     r4, unk_7f7f7fff@h
    addi    r6, r4, unk_7f7f7fff@l
    stw     r6, 0x268(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x268(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x13c(r5)
    stw     r0, 0x260(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x260(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x140(r5)
    stw     r6, 0x258(sp)
    lwz     r5, 0x17c(r3)
    lwz     r4, 0x258(sp)
    stw     r4, 0x13c(r5)
    stw     r0, 0x250(sp)
    lwz     r4, 0x17c(r3)
    lwz     r0, 0x250(sp)
    stw     r0, 0x140(r4)
    b       branch_0x8014bf0c

branch_0x8014bc7c:
    cmpwi   r4, 0x1
    bne-    branch_0x8014bf0c
    li      r0, 0x3
    lis     r5, unk_00ffffff@ha
    mtctr   r0
    lis     r4, unk_003cff00@ha
    addi    r7, r5, unk_00ffffff@l
    addi    r6, r4, unk_003cff00@l
    li      r9, 0x0
    li      r4, 0x0
branch_0x8014bca4:
    stw     r7, 0x248(sp)
    addi    r8, r4, 0x17c
    add     r8, r3, r8
    lwz     r5, 0x0(r8)
    lwz     r0, 0x248(sp)
    stw     r0, 0x13c(r5)
    stw     r6, 0x240(sp)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x240(sp)
    stw     r0, 0x140(r5)
    lwz     r5, R13Off_m0x60d8(r13)
    lfs     f0, 0x12c(r5)
    fctiwz  f0, f0
    stfd    f0, 0x2c0(sp)
    lwz     r0, 0x2c4(sp)
    extsh   r5, r0
    addi    r0, r5, 0x1
    cmpw    r0, r9
    ble-    branch_0x8014bd00
    lwz     r5, 0x0(r8)
    li      r0, 0x1
    stb     r0, 0xc(r5)
    b       branch_0x8014bd0c

branch_0x8014bd00:
    lwz     r5, 0x0(r8)
    li      r0, 0x0
    stb     r0, 0xc(r5)
branch_0x8014bd0c:
    addi    r8, r4, 0x184
    stw     r7, 0x248(sp)
    add     r8, r3, r8
    lwz     r0, 0x248(sp)
    addi    r9, r9, 0x1
    lwz     r5, 0x0(r8)
    addi    r4, r4, 0x8
    stw     r0, 0x13c(r5)
    stw     r6, 0x240(sp)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x240(sp)
    stw     r0, 0x140(r5)
    lwz     r5, R13Off_m0x60d8(r13)
    lfs     f0, 0x12c(r5)
    fctiwz  f0, f0
    stfd    f0, 0x2c0(sp)
    lwz     r0, 0x2c4(sp)
    extsh   r5, r0
    addi    r0, r5, 0x1
    cmpw    r0, r9
    ble-    branch_0x8014bd70
    lwz     r5, 0x0(r8)
    li      r0, 0x1
    stb     r0, 0xc(r5)
    b       branch_0x8014bd7c

branch_0x8014bd70:
    lwz     r5, 0x0(r8)
    li      r0, 0x0
    stb     r0, 0xc(r5)
branch_0x8014bd7c:
    addi    r8, r4, 0x184
    stw     r7, 0x248(sp)
    add     r8, r3, r8
    lwz     r0, 0x248(sp)
    addi    r9, r9, 0x1
    lwz     r5, 0x0(r8)
    addi    r4, r4, 0x8
    stw     r0, 0x13c(r5)
    stw     r6, 0x240(sp)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x240(sp)
    stw     r0, 0x140(r5)
    lwz     r5, R13Off_m0x60d8(r13)
    lfs     f0, 0x12c(r5)
    fctiwz  f0, f0
    stfd    f0, 0x2c0(sp)
    lwz     r0, 0x2c4(sp)
    extsh   r5, r0
    addi    r0, r5, 0x1
    cmpw    r0, r9
    ble-    branch_0x8014bde0
    lwz     r5, 0x0(r8)
    li      r0, 0x1
    stb     r0, 0xc(r5)
    b       branch_0x8014bdec

branch_0x8014bde0:
    lwz     r5, 0x0(r8)
    li      r0, 0x0
    stb     r0, 0xc(r5)
branch_0x8014bdec:
    addi    r9, r9, 0x1
    addi    r4, r4, 0x8
    bdnz+      branch_0x8014bca4
    lis     r4, unk_00ffffff@ha
    addi    r8, r4, unk_00ffffff@l
    stw     r8, 0x238(sp)
    lis     r4, unk_0000ff78@ha
    lis     r5, unk_003cff00@ha
    lwz     r7, 0x178(r3)
    addi    r0, r5, unk_003cff00@l
    lwz     r6, 0x238(sp)
    addi    r5, r4, unk_0000ff78@l
    lwz     r7, 0x0(r7)
    addi    r4, r4, -0x100
    stw     r6, 0x13c(r7)
    stw     r0, 0x230(sp)
    lwz     r7, 0x178(r3)
    lwz     r6, 0x230(sp)
    lwz     r7, 0x0(r7)
    stw     r6, 0x140(r7)
    stw     r5, 0x228(sp)
    lwz     r6, 0x174(r3)
    lwz     r5, 0x228(sp)
    lwz     r6, 0x0(r6)
    stw     r5, 0x13c(r6)
    stw     r4, 0x220(sp)
    lwz     r5, 0x174(r3)
    lwz     r4, 0x220(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x140(r5)
    lbz     r4, 0x1cc(r3)
    cmplwi  r4, 0x4
    blt-    branch_0x8014bebc
    stw     r8, 0x218(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x218(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x13c(r5)
    stw     r0, 0x210(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x210(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x140(r5)
    stw     r8, 0x208(sp)
    lwz     r5, 0x17c(r3)
    lwz     r4, 0x208(sp)
    stw     r4, 0x13c(r5)
    stw     r0, 0x200(sp)
    lwz     r4, 0x17c(r3)
    lwz     r0, 0x200(sp)
    stw     r0, 0x140(r4)
    b       branch_0x8014bf0c

branch_0x8014bebc:
    lis     r4, unk_0010ffff@ha
    addi    r6, r4, unk_0010ffff@l
    stw     r6, 0x1f8(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x1f8(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x13c(r5)
    stw     r0, 0x1f0(sp)
    lwz     r5, 0x178(r3)
    lwz     r4, 0x1f0(sp)
    lwz     r5, 0x0(r5)
    stw     r4, 0x140(r5)
    stw     r6, 0x1e8(sp)
    lwz     r5, 0x17c(r3)
    lwz     r4, 0x1e8(sp)
    stw     r4, 0x13c(r5)
    stw     r0, 0x1e0(sp)
    lwz     r4, 0x17c(r3)
    lwz     r0, 0x1e0(sp)
    stw     r0, 0x140(r4)
branch_0x8014bf0c:
    li      r0, 0x1
    stb     r0, 0x38(r3)
    li      r0, 0x0
    sth     r0, 0x84(r3)
    lwz     r5, 0x1c4(r3)
    lha     r4, 0x1c8(r3)
    lwz     r0, 0x0(r5)
    lha     r5, 0x1ca(r3)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
branch_0x8014bf44:
    lwz     r0, 0x2cc(sp)
    addi    sp, sp, 0x2c8
    mtlr    r0
    blr


.globl resetLife__11TGCConsole2Fi
resetLife__11TGCConsole2Fi: # 0x8014bf54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r22, 0x40(sp)
    addi    r30, r3, 0x0
    addi    r27, r4, 0x1
    li      r31, 0x1
    li      r29, 0x10
    li      r28, 0x8
branch_0x8014bf78:
    cmpw    r31, r27
    bge-    branch_0x8014bf94
    addi    r0, r28, 0x17c
    lwzx    r3, r30, r0
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8014bfa4

branch_0x8014bf94:
    addi    r0, r28, 0x17c
    lwzx    r3, r30, r0
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8014bfa4:
    add     r3, r30, r29
    lwz     r7, 0x1dc(r3)
    addi    r26, r3, 0x1dc
    lwz     r6, 0x1d8(r3)
    addi    r25, r3, 0x1d8
    lwz     r5, 0x1d4(r3)
    lwz     r4, 0x1d0(r3)
    addi    r24, r3, 0x1d4
    addi    r23, r3, 0x1d0
    addi    r3, sp, 0x30
    bl      set__7JUTRectFiiii
    add     r22, r30, r28
    lwz     r4, 0x30(sp)
    lwz     r5, 0x17c(r22)
    addi    r3, sp, 0x20
    lwz     r0, 0x34(sp)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r4, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r4, 0x1c(r5)
    stw     r0, 0x20(r5)
    lwz     r7, 0x0(r26)
    lwz     r6, 0x0(r25)
    lwz     r5, 0x0(r24)
    lwz     r4, 0x0(r23)
    bl      set__7JUTRectFiiii
    lwz     r4, 0x180(r22)
    addi    r31, r31, 0x1
    lwz     r3, 0x20(sp)
    cmpwi   r31, 0x9
    lwz     r0, 0x24(sp)
    addi    r29, r29, 0x10
    stw     r3, 0x14(r4)
    addi    r28, r28, 0x8
    stw     r0, 0x18(r4)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    blt+    branch_0x8014bf78
    lmw     r22, 0x40(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl startInsertLife__11TGCConsole2Fi
startInsertLife__11TGCConsole2Fi: # 0x8014c05c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e8(sp)
    stw     r31, 0x2e4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x2e0(sp)
    bne-    branch_0x8014c264
    li      r0, 0x4
    mtctr   r0
    li      r7, 0x1
    li      r3, 0x8
branch_0x8014c08c:
    li      r0, -0x1
    stw     r0, 0x2d0(sp)
    addi    r6, r3, 0x17c
    add     r6, r31, r6
    lwz     r4, 0x0(r6)
    li      r5, 0x0
    lwz     r0, 0x2d0(sp)
    stw     r0, 0x13c(r4)
    stw     r5, 0x2c8(sp)
    lwz     r4, 0x0(r6)
    lwz     r0, 0x2c8(sp)
    stw     r0, 0x140(r4)
    lwz     r4, R13Off_m0x60d8(r13)
    lha     r4, 0x120(r4)
    addi    r0, r4, 0x1
    cmpw    r0, r7
    ble-    branch_0x8014c0e0
    lwz     r4, 0x0(r6)
    li      r0, 0x1
    stb     r0, 0xc(r4)
    b       branch_0x8014c0e8

branch_0x8014c0e0:
    lwz     r4, 0x0(r6)
    stb     r5, 0xc(r4)
branch_0x8014c0e8:
    li      r0, -0x1
    addi    r6, r3, 0x184
    stw     r0, 0x2d0(sp)
    add     r6, r31, r6
    lwz     r4, 0x0(r6)
    li      r5, 0x0
    lwz     r0, 0x2d0(sp)
    addi    r7, r7, 0x1
    addi    r3, r3, 0x8
    stw     r0, 0x13c(r4)
    stw     r5, 0x2c8(sp)
    lwz     r4, 0x0(r6)
    lwz     r0, 0x2c8(sp)
    stw     r0, 0x140(r4)
    lwz     r4, R13Off_m0x60d8(r13)
    lha     r4, 0x120(r4)
    addi    r0, r4, 0x1
    cmpw    r0, r7
    ble-    branch_0x8014c144
    lwz     r4, 0x0(r6)
    li      r0, 0x1
    stb     r0, 0xc(r4)
    b       branch_0x8014c14c

branch_0x8014c144:
    lwz     r4, 0x0(r6)
    stb     r5, 0xc(r4)
branch_0x8014c14c:
    addi    r7, r7, 0x1
    addi    r3, r3, 0x8
    bdnz+      branch_0x8014c08c
    li      r7, -0x1
    stw     r7, 0x2c0(sp)
    lis     r5, unk_ff4c00c8@h
    li      r0, 0x0
    lwz     r6, 0x178(r31)
    addi    r3, r5, unk_ff4c00c8@l
    lwz     r4, 0x2c0(sp)
    lwz     r6, 0x0(r6)
    stw     r4, 0x13c(r6)
    stw     r0, 0x2b8(sp)
    lwz     r6, 0x178(r31)
    lwz     r4, 0x2b8(sp)
    lwz     r6, 0x0(r6)
    stw     r4, 0x140(r6)
    stw     r3, 0x2b0(sp)
    lwz     r4, 0x174(r31)
    lwz     r3, 0x2b0(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r5, 0x2a8(sp)
    lwz     r4, 0x174(r31)
    lwz     r3, 0x2a8(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x140(r4)
    lbz     r3, 0x1cc(r31)
    cmplwi  r3, 0x4
    blt-    branch_0x8014c210
    stw     r7, 0x2a0(sp)
    lwz     r4, 0x178(r31)
    lwz     r3, 0x2a0(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x298(sp)
    lwz     r4, 0x178(r31)
    lwz     r3, 0x298(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x140(r4)
    stw     r7, 0x290(sp)
    lwz     r4, 0x17c(r31)
    lwz     r3, 0x290(sp)
    stw     r3, 0x13c(r4)
    stw     r0, 0x288(sp)
    lwz     r3, 0x17c(r31)
    lwz     r0, 0x288(sp)
    stw     r0, 0x140(r3)
    b       branch_0x8014c464

branch_0x8014c210:
    lis     r3, unk_7f7f7fff@h
    addi    r5, r3, unk_7f7f7fff@l
    stw     r5, 0x280(sp)
    lwz     r4, 0x178(r31)
    lwz     r3, 0x280(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x278(sp)
    lwz     r4, 0x178(r31)
    lwz     r3, 0x278(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x140(r4)
    stw     r5, 0x270(sp)
    lwz     r4, 0x17c(r31)
    lwz     r3, 0x270(sp)
    stw     r3, 0x13c(r4)
    stw     r0, 0x268(sp)
    lwz     r3, 0x17c(r31)
    lwz     r0, 0x268(sp)
    stw     r0, 0x140(r3)
    b       branch_0x8014c464

branch_0x8014c264:
    cmpwi   r4, 0x1
    bne-    branch_0x8014c464
    li      r0, 0x4
    lis     r4, unk_00ffffff@ha
    mtctr   r0
    lis     r3, unk_003cff00@ha
    addi    r6, r4, unk_00ffffff@l
    addi    r5, r3, unk_003cff00@l
    li      r8, 0x1
    li      r3, 0x8
branch_0x8014c28c:
    stw     r6, 0x260(sp)
    addi    r7, r3, 0x17c
    add     r7, r31, r7
    lwz     r4, 0x0(r7)
    lwz     r0, 0x260(sp)
    stw     r0, 0x13c(r4)
    stw     r5, 0x258(sp)
    lwz     r4, 0x0(r7)
    lwz     r0, 0x258(sp)
    stw     r0, 0x140(r4)
    lwz     r4, R13Off_m0x60d8(r13)
    lfs     f0, 0x12c(r4)
    fctiwz  f0, f0
    stfd    f0, 0x2d8(sp)
    lwz     r0, 0x2dc(sp)
    extsh   r4, r0
    addi    r0, r4, 0x1
    cmpw    r0, r8
    ble-    branch_0x8014c2e8
    lwz     r4, 0x0(r7)
    li      r0, 0x1
    stb     r0, 0xc(r4)
    b       branch_0x8014c2f4

branch_0x8014c2e8:
    lwz     r4, 0x0(r7)
    li      r0, 0x0
    stb     r0, 0xc(r4)
branch_0x8014c2f4:
    addi    r7, r3, 0x184
    stw     r6, 0x260(sp)
    add     r7, r31, r7
    lwz     r0, 0x260(sp)
    addi    r8, r8, 0x1
    lwz     r4, 0x0(r7)
    addi    r3, r3, 0x8
    stw     r0, 0x13c(r4)
    stw     r5, 0x258(sp)
    lwz     r4, 0x0(r7)
    lwz     r0, 0x258(sp)
    stw     r0, 0x140(r4)
    lwz     r4, R13Off_m0x60d8(r13)
    lfs     f0, 0x12c(r4)
    fctiwz  f0, f0
    stfd    f0, 0x2d8(sp)
    lwz     r0, 0x2dc(sp)
    extsh   r4, r0
    addi    r0, r4, 0x1
    cmpw    r0, r8
    ble-    branch_0x8014c358
    lwz     r4, 0x0(r7)
    li      r0, 0x1
    stb     r0, 0xc(r4)
    b       branch_0x8014c364

branch_0x8014c358:
    lwz     r4, 0x0(r7)
    li      r0, 0x0
    stb     r0, 0xc(r4)
branch_0x8014c364:
    addi    r8, r8, 0x1
    addi    r3, r3, 0x8
    bdnz+      branch_0x8014c28c
    lis     r3, unk_0000ff78@ha
    addi    r0, r3, unk_0000ff78@l
    stw     r0, 0x250(sp)
    addi    r0, r3, -0x100
    lwz     r4, 0x174(r31)
    lwz     r3, 0x250(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x248(sp)
    lwz     r3, 0x174(r31)
    lwz     r0, 0x248(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x140(r3)
    lbz     r0, 0x1cc(r31)
    cmplwi  r0, 0x4
    blt-    branch_0x8014c40c
    lis     r3, unk_00ffffff@ha
    addi    r5, r3, unk_00ffffff@l
    stw     r5, 0x240(sp)
    lis     r3, unk_003cff00@ha
    addi    r4, r3, unk_003cff00@l
    lwz     r3, 0x178(r31)
    lwz     r0, 0x240(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    stw     r4, 0x238(sp)
    lwz     r3, 0x178(r31)
    lwz     r0, 0x238(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x140(r3)
    stw     r5, 0x230(sp)
    lwz     r3, 0x17c(r31)
    lwz     r0, 0x230(sp)
    stw     r0, 0x13c(r3)
    stw     r4, 0x228(sp)
    lwz     r3, 0x17c(r31)
    lwz     r0, 0x228(sp)
    stw     r0, 0x140(r3)
    b       branch_0x8014c464

branch_0x8014c40c:
    lis     r3, unk_0010ffff@ha
    addi    r5, r3, unk_0010ffff@l
    stw     r5, 0x220(sp)
    lis     r3, unk_003cff00@ha
    addi    r4, r3, unk_003cff00@l
    lwz     r3, 0x178(r31)
    lwz     r0, 0x220(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    stw     r4, 0x218(sp)
    lwz     r3, 0x178(r31)
    lwz     r0, 0x218(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x140(r3)
    stw     r5, 0x210(sp)
    lwz     r3, 0x17c(r31)
    lwz     r0, 0x210(sp)
    stw     r0, 0x13c(r3)
    stw     r4, 0x208(sp)
    lwz     r3, 0x17c(r31)
    lwz     r0, 0x208(sp)
    stw     r0, 0x140(r3)
branch_0x8014c464:
    li      r9, 0x1
    stb     r9, 0x51(r31)
    li      r30, 0x0
    li      r4, 0xff
    sth     r30, 0x84(r31)
    addi    r7, sp, 0x1f0
    addi    r6, sp, 0x1f8
    lwz     r3, 0x1c4(r31)
    addi    r5, sp, 0x200
    lwz     r8, 0x10(r3)
    lwz     r3, 0x0(r3)
    addi    r0, r8, 0x1
    stb     r9, 0xc(r3)
    neg     r8, r0
    srawi   r0, r8, 1
    lwz     r3, 0x1c4(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xcc(r3)
    stw     r30, 0x1f0(sp)
    stw     r30, 0x1f8(sp)
    stw     r30, 0x200(sp)
    stw     r30, 0x1f4(sp)
    stw     r0, 0x1fc(sp)
    stw     r8, 0x204(sp)
    lwz     r3, 0x1c4(r31)
    lha     r4, 0x98(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x174(r31)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x178(r31)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r3, 0x260(r31)
    lwz     r3, 0x0(r3)
    stb     r30, 0xc(r3)
    lwz     r0, 0x2ec(sp)
    lwz     r31, 0x2e4(sp)
    lwz     r30, 0x2e0(sp)
    addi    sp, sp, 0x2e8
    mtlr    r0
    blr


.globl startDisappearCoin__11TGCConsole2Fv
startDisappearCoin__11TGCConsole2Fv: # 0x8014c518
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xc4(sp)
    stw     r28, 0xc0(sp)
    stb     r0, 0x4d(r3)
    li      r3, 0x0
    stb     r0, 0x5a(r30)
    lwz     r31, 0x140(r30)
    lfs     f0, -0x4c74(r2)
    lfs     f2, 0x14(r31)
    fcmpo   cr0, f2, f0
    ble-    branch_0x8014c564
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c568

branch_0x8014c564:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c568:
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014c5b8
    lfs     f1, 0x18(r31)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014c598
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c59c

branch_0x8014c598:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c59c:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014c5b8
    li      r3, 0x1
branch_0x8014c5b8:
    clrlwi. r0, r3, 24
    beq-    branch_0x8014c6b8
    lwz     r3, 0x128(r30)
    lfs     f1, 0x18(r31)
    lwz     r4, 0x0(r3)
    lfs     f0, -0x4c74(r2)
    lwz     r3, 0x18(r4)
    lwz     r0, 0x20(r4)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x10(r31)
    subf    r0, r3, r0
    add     r3, r4, r0
    addi    r0, r3, 0x1
    neg     r0, r0
    ble-    branch_0x8014c5fc
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c600

branch_0x8014c5fc:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c600:
    fadds   f1, f1, f0
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f2, f0
    fctiwz  f0, f1
    stfd    f0, 0xb8(sp)
    lwz     r28, 0xbc(sp)
    ble-    branch_0x8014c624
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c628

branch_0x8014c624:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c628:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r28, 0x8000
    stw     r3, 0xb4(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0xa4(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r31, 0x14
    stw     r5, 0xb0(sp)
    stfd    f0, 0xb8(sp)
    li      r4, 0x28
    lfd     f0, 0xb0(sp)
    lwz     r29, 0xbc(sp)
    stw     r5, 0xa0(sp)
    fsubs   f2, f0, f3
    xoris   r0, r29, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0xac(sp)
    lfd     f0, 0xa0(sp)
    stw     r5, 0xa8(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0xa8(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r31)
    add     r4, r4, r29
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r31)
branch_0x8014c6b8:
    lwz     r31, 0x108(r30)
    lwz     r3, 0xc8(r30)
    lfs     f1, 0x18(r31)
    lwz     r5, 0x0(r3)
    lfs     f0, -0x4c74(r2)
    lwz     r4, 0x10(r31)
    fcmpo   cr0, f1, f0
    lwz     r3, 0x18(r5)
    lwz     r0, 0x20(r5)
    addi    r4, r4, 0x1
    neg     r4, r4
    subf    r0, r3, r0
    subf    r0, r0, r4
    ble-    branch_0x8014c6f8
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c6fc

branch_0x8014c6f8:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c6fc:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r31)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0xa0(sp)
    lwz     r29, 0xa4(sp)
    ble-    branch_0x8014c724
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c728

branch_0x8014c724:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c728:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r29, 0x8000
    stw     r3, 0xac(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0xbc(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r31, 0x14
    stw     r5, 0xa8(sp)
    stfd    f0, 0xa0(sp)
    li      r4, 0x28
    lfd     f0, 0xa8(sp)
    lwz     r28, 0xa4(sp)
    stw     r5, 0xb8(sp)
    fsubs   f2, f0, f3
    xoris   r0, r28, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0xb4(sp)
    lfd     f0, 0xb8(sp)
    stw     r5, 0xb0(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0xb0(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r31)
    add     r4, r4, r28
    lwz     r12, 0xc(r12)
    add     r5, r0, r29
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r31)
    lwz     r3, 0x124(r30)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    lwz     r28, 0xc0(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl startAppearCoin__11TGCConsole2Fv
startAppearCoin__11TGCConsole2Fv: # 0x8014c7e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r30, r3
    lwz     r3, 0x108(r3)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014c910
    li      r29, 0x1
    stb     r29, 0x4f(r30)
    li      r31, 0x0
    lis     r5, 0x4330
    stb     r29, 0x59(r30)
    stb     r31, 0x88(r30)
    lwz     r3, 0x108(r30)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r27, 0x108(r30)
    lha     r0, 0x26a(r30)
    lwz     r4, 0x10(r27)
    addi    r3, r27, 0x14
    xoris   r0, r0, 0x8000
    lfs     f1, -0x4c74(r2)
    addi    r4, r4, 0x1
    neg     r28, r4
    stw     r0, 0x7c(sp)
    xoris   r0, r28, 0x8000
    lfd     f4, -0x4c38(r2)
    stw     r0, 0x74(sp)
    fmr     f3, f1
    lha     r4, 0x98(r30)
    stw     r5, 0x78(sp)
    stw     r5, 0x70(sp)
    lfd     f2, 0x78(sp)
    lfd     f0, 0x70(sp)
    fsubs   f2, f2, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r4, 0x32
    addi    r5, r13, R13Off_m0x6430
    lwz     r3, 0xc8(r30)
    addi    r6, r13, R13Off_m0x6428
    addi    r7, r13, R13Off_m0x6428
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0xcc(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0xd0(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0xd4(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0xd8(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0xdc(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x124(r30)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x8014c910:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl startDisappearTank__11TGCConsole2Fv
startDisappearTank__11TGCConsole2Fv: # 0x8014c924
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r31, r3, 0x0
    stb     r0, 0x4b(r3)
    stb     r0, 0x5a(r3)
    lwz     r28, 0x2f8(r3)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x18(r28)
    lwz     r0, 0x8(r28)
    fcmpo   cr0, f1, f0
    subfic  r3, r0, 0x1d1
    addi    r27, r3, 0x3c
    ble-    branch_0x8014c96c
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c970

branch_0x8014c96c:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c970:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r28)
    lfs     f0, -0x4c74(r2)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x80(sp)
    lwz     r30, 0x84(sp)
    ble-    branch_0x8014c998
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014c99c

branch_0x8014c998:
    lfs     f0, -0x4c6c(r2)
branch_0x8014c99c:
    fadds   f0, f2, f0
    xoris   r3, r27, 0x8000
    xoris   r0, r30, 0x8000
    stw     r3, 0x7c(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x6c(sp)
    lfd     f3, -0x4c38(r2)
    addi    r3, r28, 0x14
    stw     r5, 0x78(sp)
    stfd    f0, 0x80(sp)
    li      r4, 0x28
    lfd     f0, 0x78(sp)
    lwz     r29, 0x84(sp)
    stw     r5, 0x68(sp)
    fsubs   f2, f0, f3
    xoris   r0, r29, 0x8000
    lfs     f1, -0x4c74(r2)
    stw     r0, 0x74(sp)
    lfd     f0, 0x68(sp)
    stw     r5, 0x70(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x70(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r29
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4e(r28)
    li      r30, 0x0
    srawi   r0, r27, 1
    stw     r30, 0x60(sp)
    addi    r5, sp, 0x60
    addi    r6, sp, 0x58
    stw     r30, 0x58(sp)
    addi    r7, sp, 0x50
    li      r4, 0x28
    stw     r30, 0x50(sp)
    stw     r30, 0x64(sp)
    stw     r0, 0x5c(sp)
    stw     r27, 0x54(sp)
    stb     r30, 0x48(r31)
    lwz     r3, 0x274(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x270(r31)
    addi    r5, sp, 0x60
    addi    r6, sp, 0x58
    addi    r7, sp, 0x50
    li      r4, 0x28
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x26c(r31)
    addi    r5, sp, 0x60
    addi    r6, sp, 0x58
    addi    r7, sp, 0x50
    li      r4, 0x28
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x3f0(r3)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x8014cab0
    b       branch_0x8014cab4

branch_0x8014cab0:
    mr      r29, r30
branch_0x8014cab4:
    cmpwi   r29, 0x0
    beq-    branch_0x8014cae8
    lwz     r3, 0x324(r31)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0x314(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x318(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x31c(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x320(r31)
    stb     r0, 0xc(r3)
branch_0x8014cae8:
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl startAppearTank__11TGCConsole2Fv
startAppearTank__11TGCConsole2Fv: # 0x8014cafc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    mr      r30, r3
    lbz     r0, 0x45(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014cc0c
    lis     r4, unk_00030002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00030002@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8014cb38
    b       branch_0x8014cc0c

branch_0x8014cb38:
    li      r29, 0x1
    stb     r29, 0x45(r30)
    li      r31, 0x0
    lis     r0, 0x4330
    stb     r29, 0x59(r30)
    sth     r31, 0x7c(r30)
    lwz     r3, 0x2f8(r30)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r27, 0x2f8(r30)
    lfs     f1, -0x4c74(r2)
    lwz     r5, 0x8(r27)
    addi    r3, r27, 0x14
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    subfic  r28, r5, 0x1d1
    xoris   r5, r28, 0x8000
    fmr     f3, f1
    stw     r5, 0x64(sp)
    lha     r4, 0x98(r30)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r3, -0x1e
    li      r0, 0x64
    stw     r31, 0x44(sp)
    addi    r7, sp, 0x44
    addi    r6, sp, 0x4c
    stw     r31, 0x4c(sp)
    addi    r5, sp, 0x54
    li      r4, 0x32
    stw     r31, 0x54(sp)
    stw     r3, 0x48(sp)
    stw     r3, 0x50(sp)
    stw     r0, 0x58(sp)
    lwz     r3, 0x26c(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x274(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x29c(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
branch_0x8014cc0c:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl endCameraDemo__11TGCConsole2Fv
endCameraDemo__11TGCConsole2Fv: # 0x8014cc20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r27, 0xac(sp)
    mr      r30, r3
    lbz     r0, 0x39(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014ce70
    lbz     r0, 0x50(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8014cc50
    b       branch_0x8014ce70

branch_0x8014cc50:
    lha     r3, 0xb6(r30)
    cmpwi   r3, 0x3
    bge-    branch_0x8014cc68
    addi    r0, r3, 0x1
    sth     r0, 0xb6(r30)
    b       branch_0x8014ce70

branch_0x8014cc68:
    li      r3, 0x0
    stb     r3, 0x50(r30)
    lwz     r4, 0x2f8(r30)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x14(r4)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014cc8c
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014cc90

branch_0x8014cc8c:
    lfs     f0, -0x4c6c(r2)
branch_0x8014cc90:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014cce0
    lfs     f1, 0x18(r4)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014ccc0
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014ccc4

branch_0x8014ccc0:
    lfs     f0, -0x4c6c(r2)
branch_0x8014ccc4:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014cce0
    li      r3, 0x1
branch_0x8014cce0:
    clrlwi. r0, r3, 24
    bne-    branch_0x8014cde0
    lbz     r0, 0x45(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8014cde0
    lis     r4, unk_00030002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00030002@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x8014cde0
    li      r29, 0x1
    stb     r29, 0x45(r30)
    li      r31, 0x0
    lis     r0, 0x4330
    stb     r29, 0x59(r30)
    sth     r31, 0x7c(r30)
    lwz     r3, 0x2f8(r30)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r27, 0x2f8(r30)
    lfs     f1, -0x4c74(r2)
    lwz     r5, 0x8(r27)
    addi    r3, r27, 0x14
    lfd     f4, -0x4c38(r2)
    fmr     f2, f1
    subfic  r28, r5, 0x1d1
    xoris   r5, r28, 0x8000
    fmr     f3, f1
    stw     r5, 0xa4(sp)
    lha     r4, 0x98(r30)
    stw     r0, 0xa0(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r0, 0x8(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r27)
    add     r5, r0, r28
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r3, -0x1e
    li      r0, 0x64
    stw     r31, 0x94(sp)
    addi    r7, sp, 0x94
    addi    r6, sp, 0x8c
    stw     r31, 0x8c(sp)
    addi    r5, sp, 0x84
    li      r4, 0x32
    stw     r31, 0x84(sp)
    stw     r3, 0x98(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x88(sp)
    lwz     r3, 0x26c(r30)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x274(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r3, 0x29c(r30)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
branch_0x8014cde0:
    li      r0, 0x1
    stb     r0, 0x40(r30)
    li      r31, 0x0
    stb     r31, 0x41(r30)
    stb     r0, 0x59(r30)
    lbz     r0, 0x520(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8014ce0c
    mr      r3, r30
    bl      startInsertTimer__11TGCConsole2Fv
    stb     r31, 0x520(r30)
branch_0x8014ce0c:
    lbz     r0, 0x44c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8014ce28
    mr      r3, r30
    bl      startAppearRedCoin__11TGCConsole2Fv
    li      r0, 0x0
    stb     r0, 0x44c(r30)
branch_0x8014ce28:
    lbz     r0, 0x42a(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8014ce44
    mr      r3, r30
    bl      startInsertJetBalloon__11TGCConsole2Fv
    li      r0, 0x0
    stb     r0, 0x42a(r30)
branch_0x8014ce44:
    lwz     r3, R13Off_m0x6048(r13)
    lhz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 16, 16
    bne-    branch_0x8014ce70
    lwz     r3, 0x108(r30)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014ce70
    mr      r3, r30
    bl      startAppearCoin__11TGCConsole2Fv
branch_0x8014ce70:
    lmw     r27, 0xac(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl startCameraDemo__11TGCConsole2Fv
startCameraDemo__11TGCConsole2Fv: # 0x8014ce84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x290(sp)
    stmw    r25, 0x274(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    lwz     r4, R13Off_m0x60d8(r13)
    lha     r0, 0x120(r4)
    extsh.  r0, r0
    beq-    branch_0x8014cec8
    lfs     f0, 0x12c(r4)
    fctiwz  f0, f0
    stfd    f0, 0x268(sp)
    lwz     r0, 0x26c(sp)
    extsh.  r0, r0
    beq-    branch_0x8014cec8
    li      r3, 0x0
branch_0x8014cec8:
    clrlwi. r0, r3, 24
    beq-    branch_0x8014cf50
    lwz     r3, 0x1c4(r31)
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x274(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x2f8(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x270(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x26c(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x450(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x400(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x42c(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    stb     r0, 0x46(r31)
    stb     r0, 0x59(r31)
    stb     r0, 0x5a(r31)
    b       branch_0x8014d790

branch_0x8014cf50:
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014d790
    lis     r4, unk_00030002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00030002@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x8014cf84
    lbz     r0, 0x39(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8014cf84
    b       branch_0x8014d790

branch_0x8014cf84:
    li      r29, 0x1
    stb     r29, 0x50(r31)
    lbz     r0, 0x43(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014d05c
    lwz     r3, 0x524(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014d05c
    stb     r29, 0x43(r31)
    stb     r29, 0x5a(r31)
    lwz     r26, 0x524(r31)
    lwz     r0, 0x8(r26)
    addi    r3, r26, 0x14
    lfs     f1, 0x18(r26)
    subfic  r25, r0, 0x1d1
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r26)
    addi    r28, r3, 0x0
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r27, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r27, 0x8000
    stw     r0, 0x26c(sp)
    xoris   r0, r28, 0x8000
    lis     r5, 0x4330
    stw     r3, 0x264(sp)
    addi    r3, r26, 0x14
    stw     r0, 0x25c(sp)
    li      r4, 0x50
    stw     r5, 0x268(sp)
    stw     r5, 0x260(sp)
    lfd     f0, 0x268(sp)
    stw     r5, 0x258(sp)
    lfd     f3, 0x260(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x258(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r26)
    add     r4, r4, r27
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    stb     r29, 0x4e(r26)
branch_0x8014d05c:
    lbz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014d10c
    lbz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014d10c
    li      r0, 0x1
    stb     r0, 0x4c(r31)
    li      r10, 0x0
    addi    r7, sp, 0x1ec
    lwz     r4, 0x174(r31)
    addi    r6, sp, 0x1e4
    lwz     r3, 0x1c4(r31)
    addi    r5, sp, 0x1dc
    lwz     r4, 0x0(r4)
    lwz     r3, 0x10(r3)
    lwz     r8, 0x18(r4)
    lwz     r4, 0x20(r4)
    addi    r0, r3, 0x1
    neg     r0, r0
    subf    r3, r8, r4
    stw     r10, 0x1ec(sp)
    subf    r0, r3, r0
    stw     r0, 0x1f0(sp)
    li      r4, 0x28
    lwz     r8, 0x174(r31)
    lwz     r3, 0x1c4(r31)
    lwz     r8, 0x0(r8)
    lwz     r3, 0x10(r3)
    lwz     r9, 0x18(r8)
    lwz     r8, 0x20(r8)
    addi    r0, r3, 0x1
    neg     r3, r0
    subf    r0, r9, r8
    stw     r10, 0x1dc(sp)
    subf    r0, r0, r3
    stw     r10, 0x1e4(sp)
    srawi   r0, r0, 1
    stw     r0, 0x1e8(sp)
    stw     r10, 0x1e0(sp)
    lwz     r3, 0x1c4(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    li      r0, 0x78
    sth     r0, 0x84(r31)
branch_0x8014d10c:
    li      r0, 0xa
    stw     r0, 0x18(r31)
    li      r27, 0x0
    addi    r7, sp, 0x1a4
    stb     r27, 0x48(r31)
    addi    r6, sp, 0x19c
    addi    r5, sp, 0x194
    stw     r27, 0x1a4(sp)
    li      r4, 0x1
    stw     r27, 0x19c(sp)
    stw     r27, 0x194(sp)
    stw     r27, 0x1a8(sp)
    stw     r27, 0x1a0(sp)
    stw     r27, 0x198(sp)
    lwz     r3, 0x274(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x274(r31)
    bl      update__10TBoundPaneFv
    stw     r27, 0x1bc(sp)
    addi    r7, sp, 0x1bc
    addi    r6, sp, 0x1b4
    stw     r27, 0x1b4(sp)
    addi    r5, sp, 0x1ac
    li      r4, 0x1
    stw     r27, 0x1ac(sp)
    stw     r27, 0x1c0(sp)
    stw     r27, 0x1b8(sp)
    stw     r27, 0x1b0(sp)
    lwz     r3, 0x26c(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x26c(r31)
    bl      update__10TBoundPaneFv
    stw     r27, 0x1d4(sp)
    addi    r7, sp, 0x1d4
    addi    r6, sp, 0x1cc
    stw     r27, 0x1cc(sp)
    addi    r5, sp, 0x1c4
    li      r4, 0x1
    stw     r27, 0x1c4(sp)
    stw     r27, 0x1d8(sp)
    stw     r27, 0x1d0(sp)
    stw     r27, 0x1c8(sp)
    lwz     r3, 0x270(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x270(r31)
    bl      update__10TBoundPaneFv
    lwz     r3, 0xbc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8014d1e8
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014d214
    mr      r3, r31
    bl      startDisappearTank__11TGCConsole2Fv
    b       branch_0x8014d214

branch_0x8014d1e8:
    lwz     r3, 0xc0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8014d20c
    bl      isInBossEelMoguDemo__8TBossEelFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8014d214
    mr      r3, r31
    bl      startDisappearTank__11TGCConsole2Fv
    b       branch_0x8014d214

branch_0x8014d20c:
    mr      r3, r31
    bl      startDisappearTank__11TGCConsole2Fv
branch_0x8014d214:
    lwz     r25, 0x3a8(r31)
    lwz     r3, 0x0(r25)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014d2e4
    lbz     r0, 0x3b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8014d2e4
    lwz     r4, 0x10(r25)
    addi    r3, r25, 0x14
    lfs     f1, 0x18(r25)
    addi    r0, r4, 0x1
    neg     r29, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r25)
    addi    r28, r3, 0x0
    addi    r3, r25, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r27, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r29, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r27, 0x8000
    stw     r0, 0x25c(sp)
    xoris   r0, r28, 0x8000
    lis     r5, 0x4330
    stw     r3, 0x264(sp)
    addi    r3, r25, 0x14
    stw     r0, 0x26c(sp)
    li      r4, 0x32
    stw     r5, 0x258(sp)
    stw     r5, 0x260(sp)
    lfd     f0, 0x258(sp)
    stw     r5, 0x268(sp)
    lfd     f3, 0x260(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x268(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r25)
    add     r4, r4, r27
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r25)
    stb     r0, 0x3b(r31)
branch_0x8014d2e4:
    mr      r3, r31
    bl      startDownLeftBot__11TGCConsole2Fv
    lis     r4, unk_00030002@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00030002@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8014d324
    lwz     r4, 0x108(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    lwz     r5, 0x0(r4)
    li      r4, 0x1
    stb     r0, 0xc(r5)
    bl      startAppearMario__11TGCConsole2Fb
    b       branch_0x8014d788

branch_0x8014d324:
    lwz     r3, R13Off_m0x6048(r13)
    lhz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8014d340
    mr      r3, r31
    bl      startAppearStar__11TGCConsole2Fv
    b       branch_0x8014d788

branch_0x8014d340:
    lwz     r25, 0x140(r31)
    lha     r0, 0x26a(r31)
    lwz     r4, 0x10(r25)
    addi    r3, r25, 0x14
    lfs     f1, 0x18(r25)
    addi    r4, r4, 0x1
    neg     r4, r4
    add     r29, r0, r4
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r25)
    addi    r28, r3, 0x0
    addi    r3, r25, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r27, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r29, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r27, 0x8000
    stw     r0, 0x25c(sp)
    xoris   r0, r28, 0x8000
    lis     r29, 0x4330
    stw     r3, 0x264(sp)
    addi    r3, r25, 0x14
    stw     r0, 0x26c(sp)
    li      r4, 0x28
    stw     r29, 0x258(sp)
    stw     r29, 0x260(sp)
    lfd     f0, 0x258(sp)
    stw     r29, 0x268(sp)
    lfd     f3, 0x260(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x268(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r25)
    add     r4, r4, r27
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    li      r30, 0x1
    stb     r30, 0x4e(r25)
    lwz     r26, 0x160(r31)
    lwz     r4, 0x10(r26)
    addi    r3, r26, 0x14
    lfs     f1, 0x18(r26)
    addi    r0, r4, 0x1
    neg     r25, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r26)
    addi    r28, r3, 0x0
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r27, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r27, 0x8000
    stw     r0, 0x254(sp)
    xoris   r0, r28, 0x8000
    stw     r3, 0x24c(sp)
    addi    r3, r26, 0x14
    li      r4, 0x28
    stw     r0, 0x244(sp)
    stw     r29, 0x250(sp)
    stw     r29, 0x248(sp)
    lfd     f0, 0x250(sp)
    stw     r29, 0x240(sp)
    lfd     f3, 0x248(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x240(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r26)
    add     r4, r4, r27
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    stb     r30, 0x4e(r26)
    lwz     r26, 0x108(r31)
    lha     r25, 0x26a(r31)
    lfs     f1, 0x18(r26)
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r26)
    addi    r27, r3, 0x0
    addi    r3, r26, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r28, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r28, 0x8000
    stw     r0, 0x23c(sp)
    xoris   r0, r27, 0x8000
    stw     r3, 0x234(sp)
    addi    r3, r26, 0x14
    li      r4, 0x28
    stw     r0, 0x22c(sp)
    stw     r29, 0x238(sp)
    stw     r29, 0x230(sp)
    lfd     f0, 0x238(sp)
    stw     r29, 0x228(sp)
    lfd     f3, 0x230(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x228(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r26)
    lwz     r4, 0x4(r26)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r26)
    add     r4, r4, r28
    lwz     r12, 0xc(r12)
    add     r5, r0, r27
    mtlr    r12
    blrl
    stb     r30, 0x4e(r26)
    li      r4, 0x0
    lwz     r3, 0x144(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x164(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    stb     r30, 0x35(r31)
    stb     r30, 0x5a(r31)
    stb     r30, 0x4d(r31)
    stb     r30, 0x5a(r31)
    lwz     r29, 0x140(r31)
    lfs     f0, -0x4c74(r2)
    lfs     f1, 0x14(r29)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014d590
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014d594

branch_0x8014d590:
    lfs     f0, -0x4c6c(r2)
branch_0x8014d594:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x228(sp)
    lwz     r0, 0x22c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014d5e4
    lfs     f1, 0x18(r29)
    lfs     f0, -0x4c74(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8014d5c4
    lfs     f0, -0x4c70(r2)
    b       branch_0x8014d5c8

branch_0x8014d5c4:
    lfs     f0, -0x4c6c(r2)
branch_0x8014d5c8:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x228(sp)
    lwz     r0, 0x22c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8014d5e4
    li      r4, 0x1
branch_0x8014d5e4:
    clrlwi. r0, r4, 24
    beq-    branch_0x8014d6b0
    lwz     r4, 0x128(r31)
    addi    r3, r29, 0x14
    lwz     r5, 0x10(r29)
    lwz     r6, 0x0(r4)
    lfs     f1, 0x18(r29)
    lwz     r4, 0x18(r6)
    lwz     r0, 0x20(r6)
    subf    r0, r4, r0
    add     r4, r5, r0
    addi    r0, r4, 0x1
    neg     r25, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r29)
    addi    r30, r3, 0x0
    addi    r3, r29, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r28, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r28, 0x8000
    stw     r0, 0x22c(sp)
    xoris   r0, r30, 0x8000
    lis     r5, 0x4330
    stw     r3, 0x234(sp)
    addi    r3, r29, 0x14
    stw     r0, 0x23c(sp)
    li      r4, 0x28
    stw     r5, 0x228(sp)
    stw     r5, 0x230(sp)
    lfd     f0, 0x228(sp)
    stw     r5, 0x238(sp)
    lfd     f3, 0x230(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x238(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r28
    lwz     r12, 0xc(r12)
    add     r5, r0, r30
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r29)
branch_0x8014d6b0:
    lwz     r3, 0xc8(r31)
    lwz     r29, 0x108(r31)
    lwz     r6, 0x0(r3)
    lwz     r5, 0x10(r29)
    addi    r3, r29, 0x14
    lwz     r4, 0x18(r6)
    lwz     r0, 0x20(r6)
    addi    r5, r5, 0x1
    neg     r5, r5
    lfs     f1, 0x18(r29)
    subf    r0, r4, r0
    subf    r25, r0, r5
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r29)
    addi    r28, r3, 0x0
    addi    r3, r29, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r30, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r25, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r30, 0x8000
    stw     r0, 0x22c(sp)
    xoris   r0, r28, 0x8000
    lis     r5, 0x4330
    stw     r3, 0x234(sp)
    addi    r3, r29, 0x14
    stw     r0, 0x23c(sp)
    li      r4, 0x28
    stw     r5, 0x228(sp)
    stw     r5, 0x230(sp)
    lfd     f0, 0x228(sp)
    stw     r5, 0x238(sp)
    lfd     f3, 0x230(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x238(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r30
    lwz     r12, 0xc(r12)
    add     r5, r0, r28
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r29)
    lwz     r3, 0x124(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
branch_0x8014d788:
    li      r0, 0x0
    sth     r0, 0xb6(r31)
branch_0x8014d790:
    lmw     r25, 0x274(sp)
    lwz     r0, 0x294(sp)
    addi    sp, sp, 0x290
    mtlr    r0
    blr


.globl entryHelpActor__11TGCConsole2FP10THelpActor
entryHelpActor__11TGCConsole2FP10THelpActor: # 0x8014d7a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    stw     r4, 0xc(sp)
    lwz     r0, 0x8c(r3)
    cmpwi   r0, 0x20
    bge-    branch_0x8014d868
    lwz     r5, 0xc(sp)
    lis     r3, unk_80387970@h
    lwz     r4, 0x90(r31)
    slwi    r0, r0, 2
    addi    r30, r3, unk_80387970@l
    stwx    r5, r4, r0
    mr      r3, r30
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x3c
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x3c(sp)
    addi    r3, sp, 0x58
    addi    r4, sp, 0x38
    stw     r0, 0x38(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x58(sp)
    addi    r5, sp, 0x48
    addi    r4, r30, 0x0
    stw     r0, 0x54(sp)
    addi    r3, sp, 0x44
    addi    r6, sp, 0xc
    lwz     r0, 0x54(sp)
    stw     r0, 0x48(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x8c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8c(r31)
branch_0x8014d868:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl loadAfter__11TGCConsole2Fv
loadAfter__11TGCConsole2Fv: # 0x8014d884
    mflr    r0
    lis     r4, unk_80387810@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x610(sp)
    stfd    f31, 0x608(sp)
    stmw    r23, 0x5e4(sp)
    addi    r31, r3, 0x0
    addi    r30, r4, unk_80387810@l
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x170
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x170
    mtlr    r12
    blrl
    stw     r3, 0x94(r31)
    addi    r3, sp, 0x56c
    lwz     r4, 0x2f8(r31)
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x2a0(r31)
    lwz     r4, 0x56c(sp)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x570(sp)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x270(r31)
    lwz     r4, 0x56c(sp)
    lwz     r3, 0x0(r3)
    lwz     r5, 0x570(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x270(r31)
    lwz     r4, 0x0(r5)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r3, 0x26c(r31)
    lwz     r4, 0x56c(sp)
    lwz     r3, 0x0(r3)
    lwz     r5, 0x570(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x26c(r31)
    lwz     r4, 0x0(r5)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r3, 0x328(r31)
    lwz     r4, 0x56c(sp)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x570(sp)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r23, 0x0
    li      r27, 0x0
    li      r28, 0x0
branch_0x8014d9c0:
    addi    r0, r28, 0x2a0
    lwzx    r5, r31, r0
    add     r6, r31, r27
    addi    r3, r6, 0x2bc
    lwz     r4, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r4, 0x2bc(r6)
    stw     r0, 0x2c0(r6)
    lwz     r4, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r4, 0x2c4(r6)
    stw     r0, 0x2c8(r6)
    lwz     r4, 0x56c(sp)
    lwz     r5, 0x570(sp)
    bl      add__7JUTRectFii
    addi    r23, r23, 0x1
    cmpwi   r23, 0x3
    addi    r27, r27, 0x10
    addi    r28, r28, 0x4
    blt+    branch_0x8014d9c0
    lwz     r3, 0x2a0(r31)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r4, 0x2a0(r31)
    addic.  r0, r4, 0xd0
    lwz     r3, 0xe0(r4)
    addi    r4, r4, 0xd0
    beq-    branch_0x8014da34
    addi    r4, r4, 0xc
branch_0x8014da34:
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r3, 0x270(r31)
    lwz     r4, 0x0(r3)
    addic.  r0, r4, 0xd0
    lwz     r3, 0xe0(r4)
    addi    r4, r4, 0xd0
    beq-    branch_0x8014da54
    addi    r4, r4, 0xc
branch_0x8014da54:
    bl      remove__10JSUPtrListFP10JSUPtrLink
    li      r27, 0x0
    li      r28, 0x0
branch_0x8014da60:
    addi    r23, r28, 0x278
    lwz     r4, 0x56c(sp)
    add     r23, r31, r23
    lwz     r5, 0x570(sp)
    lwz     r3, 0x0(r23)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r23)
    lwz     r4, 0x0(r5)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r3, 0x0(r23)
    lwz     r4, 0x0(r3)
    addic.  r0, r4, 0xd0
    lwz     r3, 0xe0(r4)
    addi    r4, r4, 0xd0
    beq-    branch_0x8014dacc
    addi    r4, r4, 0xc
branch_0x8014dacc:
    bl      remove__10JSUPtrListFP10JSUPtrLink
    addi    r27, r27, 0x1
    cmpwi   r27, 0x4
    addi    r28, r28, 0x4
    blt+    branch_0x8014da60
    lwz     r3, 0x26c(r31)
    lwz     r4, 0x0(r3)
    addic.  r0, r4, 0xd0
    lwz     r3, 0xe0(r4)
    addi    r4, r4, 0xd0
    beq-    branch_0x8014dafc
    addi    r4, r4, 0xc
branch_0x8014dafc:
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r4, 0x328(r31)
    addic.  r0, r4, 0xd0
    lwz     r3, 0xe0(r4)
    addi    r4, r4, 0xd0
    beq-    branch_0x8014db18
    addi    r4, r4, 0xc
branch_0x8014db18:
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r4, 0x288(r31)
    li      r0, 0x0
    lis     r3, unk_64dcff00@ha
    stb     r0, 0xc(r4)
    addi    r0, r3, unk_64dcff00@l
    lis     r3, unk_00b4f000@ha
    stw     r0, 0x518(sp)
    addi    r0, r3, unk_00b4f000@l
    lwz     r3, 0x518(sp)
    stw     r3, 0x2f0(r31)
    stw     r0, 0x514(sp)
    lwz     r0, 0x514(sp)
    stw     r0, 0x2f4(r31)
    lwz     r3, R13Off_m0x60d8(r13)
    lha     r3, 0x120(r3)
    extsh.  r0, r3
    addi    r8, r3, 0x0
    bge-    branch_0x8014db68
    li      r8, 0x0
branch_0x8014db68:
    lwz     r4, 0x1c4(r31)
    li      r0, 0x3
    extsh   r3, r8
    mtctr   r0
    lwz     r4, 0x0(r4)
    li      r6, 0x0
    stb     r6, 0xc(r4)
    addi    r7, r3, 0x1
    li      r9, 0x0
    li      r3, 0x0
    li      r5, 0x1
branch_0x8014db94:
    cmpw    r9, r7
    bge-    branch_0x8014dbac
    addi    r0, r3, 0x17c
    lwzx    r4, r31, r0
    stb     r5, 0xc(r4)
    b       branch_0x8014dbb8

branch_0x8014dbac:
    addi    r0, r3, 0x17c
    lwzx    r4, r31, r0
    stb     r6, 0xc(r4)
branch_0x8014dbb8:
    addi    r9, r9, 0x1
    cmpw    r9, r7
    addi    r3, r3, 0x8
    bge-    branch_0x8014dbd8
    addi    r0, r3, 0x17c
    lwzx    r4, r31, r0
    stb     r5, 0xc(r4)
    b       branch_0x8014dbe4

branch_0x8014dbd8:
    addi    r0, r3, 0x17c
    lwzx    r4, r31, r0
    stb     r6, 0xc(r4)
branch_0x8014dbe4:
    addi    r9, r9, 0x1
    cmpw    r9, r7
    addi    r3, r3, 0x8
    bge-    branch_0x8014dc04
    addi    r0, r3, 0x17c
    lwzx    r4, r31, r0
    stb     r5, 0xc(r4)
    b       branch_0x8014dc10

branch_0x8014dc04:
    addi    r0, r3, 0x17c
    lwzx    r4, r31, r0
    stb     r6, 0xc(r4)
branch_0x8014dc10:
    addi    r9, r9, 0x1
    addi    r3, r3, 0x8
    bdnz+      branch_0x8014db94
    stb     r8, 0x1cc(r31)
    sth     r8, 0x1c(r31)
    lwz     r4, 0x108(r31)
    lwz     r3, 0x140(r31)
    lwz     r4, 0x0(r4)
    lwz     r3, 0x0(r3)
    lwz     r4, 0x18(r4)
    lwz     r0, 0x18(r3)
    subf    r0, r4, r0
    sth     r0, 0x26a(r31)
    lwz     r24, 0x140(r31)
    lwz     r4, 0x10(r24)
    addi    r3, r24, 0x14
    lfs     f1, 0x18(r24)
    addi    r0, r4, 0x1
    neg     r23, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r24)
    addi    r26, r3, 0x0
    addi    r3, r24, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r25, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r23, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r25, 0x8000
    stw     r0, 0x5dc(sp)
    xoris   r0, r26, 0x8000
    lis     r27, 0x4330
    stw     r3, 0x5d4(sp)
    addi    r3, r24, 0x14
    stw     r0, 0x5cc(sp)
    li      r4, 0x1
    stw     r27, 0x5d8(sp)
    stw     r27, 0x5d0(sp)
    lfd     f0, 0x5d8(sp)
    stw     r27, 0x5c8(sp)
    lfd     f3, 0x5d0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x5c8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4e(r24)
    mr      r3, r24
    bl      update__7TExPaneFv
    lwz     r3, 0x140(r31)
    li      r28, 0x0
    lwz     r3, 0x0(r3)
    stb     r28, 0xc(r3)
    lwz     r24, 0x160(r31)
    lwz     r4, 0x10(r24)
    addi    r3, r24, 0x14
    lfs     f1, 0x18(r24)
    addi    r0, r4, 0x1
    neg     r23, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r24)
    addi    r26, r3, 0x0
    addi    r3, r24, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r25, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r23, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r25, 0x8000
    stw     r0, 0x5c4(sp)
    xoris   r0, r26, 0x8000
    stw     r3, 0x5bc(sp)
    addi    r3, r24, 0x14
    li      r4, 0x1
    stw     r0, 0x5b4(sp)
    stw     r27, 0x5c0(sp)
    stw     r27, 0x5b8(sp)
    lfd     f0, 0x5c0(sp)
    stw     r27, 0x5b0(sp)
    lfd     f3, 0x5b8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x5b0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r24)
    mr      r3, r24
    bl      update__7TExPaneFv
    lwz     r3, 0x160(r31)
    lwz     r3, 0x0(r3)
    stb     r28, 0xc(r3)
    lwz     r24, 0x108(r31)
    lha     r23, 0x26a(r31)
    lfs     f1, 0x18(r24)
    addi    r3, r24, 0x14
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r24)
    addi    r26, r3, 0x0
    addi    r3, r24, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r25, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r23, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r25, 0x8000
    stw     r0, 0x5ac(sp)
    xoris   r0, r26, 0x8000
    stw     r3, 0x5a4(sp)
    addi    r3, r24, 0x14
    li      r4, 0x1
    stw     r0, 0x59c(sp)
    stw     r27, 0x5a8(sp)
    stw     r27, 0x5a0(sp)
    lfd     f0, 0x5a8(sp)
    stw     r27, 0x598(sp)
    lfd     f3, 0x5a0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x598(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r24)
    mr      r3, r24
    bl      update__7TExPaneFv
    lwz     r3, 0x108(r31)
    lwz     r3, 0x0(r3)
    stb     r28, 0xc(r3)
    lwz     r24, 0x3a8(r31)
    lwz     r4, 0x10(r24)
    addi    r3, r24, 0x14
    lfs     f1, 0x18(r24)
    addi    r0, r4, 0x1
    neg     r23, r0
    bl      roundf_i___8TCoord2DCFf
    lfs     f1, 0x14(r24)
    addi    r25, r3, 0x0
    addi    r3, r24, 0x14
    bl      roundf_i___8TCoord2DCFf
    mr      r26, r3
    lfd     f4, -0x4c38(r2)
    xoris   r0, r23, 0x8000
    lfs     f1, -0x4c74(r2)
    xoris   r3, r26, 0x8000
    stw     r0, 0x594(sp)
    xoris   r0, r25, 0x8000
    stw     r3, 0x58c(sp)
    addi    r3, r24, 0x14
    li      r4, 0x1
    stw     r0, 0x584(sp)
    stw     r27, 0x590(sp)
    stw     r27, 0x588(sp)
    lfd     f0, 0x590(sp)
    stw     r27, 0x580(sp)
    lfd     f3, 0x588(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x580(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r26
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r29, 0x4e(r24)
    mr      r3, r24
    bl      update__7TExPaneFv
    lwz     r5, 0x3a8(r31)
    lis     r3, unk_00040001@h
    addi    r4, r3, unk_00040001@l
    lwz     r3, 0x0(r5)
    stb     r28, 0xc(r3)
    lwz     r3, R13Off_m0x6060(r13)
    bl      getFlag__12TFlagManagerCFUl
    stw     r3, 0x168(r31)
    li      r23, 0x0
    li      r24, 0x46
branch_0x8014df54:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r24, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8014df6c
    addi    r23, r23, 0x1
branch_0x8014df6c:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x56
    blt+    branch_0x8014df54
    li      r24, 0x6c
branch_0x8014df7c:
    lwz     r3, R13Off_m0x6060(r13)
    addis   r4, r24, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8014df94
    addi    r23, r23, 0x1
branch_0x8014df94:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x73
    ble+    branch_0x8014df7c
    mulli   r3, r23, 0xa
    lwz     r0, 0x168(r31)
    subf.   r27, r3, r0
    bge-    branch_0x8014dfb4
    li      r27, 0x0
branch_0x8014dfb4:
    cmpwi   r27, 0x64
    bge-    branch_0x8014e06c
    xoris   r0, r27, 0x8000
    lwz     r3, 0x154(r31)
    stw     r0, 0x584(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0x580(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0x580(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x588(sp)
    lwz     r0, 0x58c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x158(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x15c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8014e174
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x8014e174

branch_0x8014e06c:
    xoris   r0, r27, 0x8000
    lwz     r3, 0x154(r31)
    stw     r0, 0x584(sp)
    lis     r29, 0x4330
    lfd     f1, -0x4c38(r2)
    li      r5, 0x0
    stw     r29, 0x580(sp)
    lfs     f2, -0x4c40(r2)
    lfd     f0, 0x580(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f31, f0
    stfd    f31, 0x588(sp)
    lwz     r0, 0x58c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    stfd    f31, 0x590(sp)
    li      r5, 0x0
    lwz     r3, 0x158(r31)
    lwz     r0, 0x594(sp)
    lfd     f1, -0x4c38(r2)
    mulli   r0, r0, 0x64
    lfs     f2, -0x4c44(r2)
    lwz     r3, 0x0(r3)
    subf    r28, r0, r27
    xoris   r0, r28, 0x8000
    stw     r0, 0x59c(sp)
    stw     r29, 0x598(sp)
    lfd     f0, 0x598(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x5a0(sp)
    lwz     r0, 0x5a4(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x15c(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r28
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x15c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014e174
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8014e174:
    stw     r27, 0x170(r31)
    lis     r3, unk_00040002@h
    addi    r4, r3, unk_00040002@l
    lwz     r3, R13Off_m0x6060(r13)
    bl      getFlag__12TFlagManagerCFUl
    stw     r3, 0x20(r31)
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x3e7
    ble-    branch_0x8014e1a4
    li      r0, 0x3e7
    stw     r0, 0x20(r31)
    b       branch_0x8014e1b4

branch_0x8014e1a4:
    cmpwi   r0, 0x0
    bge-    branch_0x8014e1b4
    li      r0, 0x0
    stw     r0, 0x20(r31)
branch_0x8014e1b4:
    lwz     r0, 0x20(r31)
    stw     r0, 0x6c(r31)
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x64
    bge-    branch_0x8014e260
    xoris   r0, r0, 0x8000
    lwz     r3, 0xd4(r31)
    stw     r0, 0x584(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0x580(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0x580(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x588(sp)
    lwz     r0, 0x58c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r3, unk_66666667@h
    lwz     r5, 0x20(r31)
    addi    r0, r3, unk_66666667@l
    lwz     r3, 0xd8(r31)
    mulhw   r0, r0, r5
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8014e370

branch_0x8014e260:
    xoris   r0, r0, 0x8000
    lwz     r3, 0xd4(r31)
    stw     r0, 0x584(sp)
    lis     r28, 0x4330
    lfd     f1, -0x4c38(r2)
    li      r5, 0x0
    stw     r28, 0x580(sp)
    lfs     f2, -0x4c40(r2)
    lfd     f0, 0x580(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x588(sp)
    lwz     r0, 0x58c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r4, 0x20(r31)
    li      r5, 0x0
    lwz     r3, 0xd8(r31)
    xoris   r0, r4, 0x8000
    lfd     f2, -0x4c38(r2)
    stw     r0, 0x594(sp)
    lfs     f3, -0x4c40(r2)
    stw     r28, 0x590(sp)
    lfs     f1, -0x4c44(r2)
    lfd     f0, 0x590(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f2
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x598(sp)
    lwz     r0, 0x59c(sp)
    mulli   r0, r0, 0x64
    subf    r27, r0, r4
    xoris   r0, r27, 0x8000
    stw     r0, 0x5a4(sp)
    stw     r28, 0x5a0(sp)
    lfd     f0, 0x5a0(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x5a8(sp)
    lwz     r0, 0x5ac(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0xdc(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8014e370:
    lwz     r3, R13Off_m0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    stw     r3, 0x24(r31)
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x3e7
    ble-    branch_0x8014e398
    li      r0, 0x3e7
    stw     r0, 0x24(r31)
    b       branch_0x8014e3a8

branch_0x8014e398:
    cmpwi   r0, 0x0
    bge-    branch_0x8014e3a8
    li      r0, 0x0
    stw     r0, 0x24(r31)
branch_0x8014e3a8:
    lwz     r0, 0x24(r31)
    stw     r0, 0x64(r31)
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x64
    bge-    branch_0x8014e454
    xoris   r0, r0, 0x8000
    lwz     r3, 0x134(r31)
    stw     r0, 0x584(sp)
    lis     r0, unk_43300000@h
    lfd     f1, -0x4c38(r2)
    addi    r5, r0, unk_43300000@l
    stw     r0, 0x580(sp)
    lfs     f2, -0x4c44(r2)
    lfd     f0, 0x580(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x588(sp)
    lwz     r0, 0x58c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r3, unk_66666667@h
    lwz     r5, 0x24(r31)
    addi    r0, r3, unk_66666667@l
    lwz     r3, 0x138(r31)
    mulhw   r0, r0, r5
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8014e584

branch_0x8014e454:
    lwz     r3, 0x13c(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8014e470
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8014e470:
    lwz     r0, 0x24(r31)
    lis     r28, 0x4330
    lwz     r3, 0x134(r31)
    li      r5, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x584(sp)
    lfd     f1, -0x4c38(r2)
    stw     r28, 0x580(sp)
    lfs     f2, -0x4c40(r2)
    lfd     f0, 0x580(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x588(sp)
    lwz     r0, 0x58c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r4, 0x24(r31)
    li      r5, 0x0
    lwz     r3, 0x138(r31)
    xoris   r0, r4, 0x8000
    lfd     f2, -0x4c38(r2)
    stw     r0, 0x594(sp)
    lfs     f3, -0x4c40(r2)
    stw     r28, 0x590(sp)
    lfs     f1, -0x4c44(r2)
    lfd     f0, 0x590(sp)
    lwz     r3, 0x0(r3)
    fsubs   f0, f0, f2
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x598(sp)
    lwz     r0, 0x59c(sp)
    mulli   r0, r0, 0x64
    subf    r27, r0, r4
    xoris   r0, r27, 0x8000
    stw     r0, 0x5a4(sp)
    stw     r28, 0x5a0(sp)
    lfd     f0, 0x5a0(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x5a8(sp)
    lwz     r0, 0x5ac(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x13c(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8014e584:
    lis     r4, unk_00020001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00020001@l
    bl      getFlag__12TFlagManagerCFUl
    addi    r27, r3, 0x0
    cmpwi   r27, 0x63
    ble-    branch_0x8014e5a4
    li      r27, 0x63
branch_0x8014e5a4:
    xoris   r0, r27, 0x8000
    stb     r27, 0x3ac(r31)
    lis     r28, 0x4330
    stw     r0, 0x584(sp)
    li      r5, 0x0
    lwz     r3, 0x39c(r31)
    stw     r28, 0x580(sp)
    lfd     f1, -0x4c38(r2)
    lfd     f0, 0x580(sp)
    lfs     f2, -0x4c44(r2)
    fsubs   f0, f0, f1
    lwz     r3, 0x0(r3)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x588(sp)
    lwz     r0, 0x58c(sp)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, unk_66666667@h
    lwz     r3, 0x3a0(r31)
    addi    r0, r4, unk_66666667@l
    mulhw   r0, r0, r27
    lwz     r3, 0x0(r3)
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r27
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe0(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    li      r0, 0x1
    stb     r0, 0x39(r31)
    li      r29, 0x0
    lwz     r3, 0x2f8(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x270(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x274(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x29c(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x524(r31)
    lwz     r3, 0x0(r3)
    stb     r29, 0xc(r3)
    lwz     r3, 0x528(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x52c(r31)
    stb     r29, 0xc(r3)
    lwz     r3, 0x52c(r31)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r4, 0x52c(r31)
    addi    r3, sp, 0x55c
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, R13Off_m0x6038(r13)
    lwz     r4, 0x560(sp)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x568(sp)
    lwz     r12, 0x28(r12)
    subf    r23, r4, r0
    mtlr    r12
    blrl
    slwi    r4, r3, 10
    lwz     r3, 0x52c(r31)
    mr      r5, r23
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x530(r31)
    stb     r29, 0xc(r3)
    lwz     r3, 0x530(r31)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, R13Off_m0x6038(r13)
    lwz     r4, 0x560(sp)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x568(sp)
    lwz     r12, 0x28(r12)
    subf    r23, r4, r0
    mtlr    r12
    blrl
    slwi    r4, r3, 10
    lwz     r3, 0x530(r31)
    mr      r5, r23
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x528(r31)
    addi    r3, sp, 0x54c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x524(r31)
    addi    r3, sp, 0x54c
    lwz     r5, 0x0(r4)
    lwz     r4, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r4, 0x56c(sp)
    stw     r0, 0x570(sp)
    lwz     r4, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r4, 0x574(sp)
    stw     r0, 0x578(sp)
    lwz     r5, 0x570(sp)
    lwz     r4, 0x56c(sp)
    addi    r5, r5, -0x3
    bl      add__7JUTRectFii
    lwz     r4, 0x54c(sp)
    addi    r3, r31, 0x548
    lwz     r5, 0x550(sp)
    lwz     r6, 0x554(sp)
    addi    r4, r4, 0x8
    lwz     r7, 0x558(sp)
    addi    r5, r5, 0x8
    addi    r6, r6, -0x8
    addi    r7, r7, -0x8
    bl      set__7JUTRectFiiii
    lwz     r4, 0x52c(r31)
    addi    r3, r31, 0x538
    lwz     r0, 0x54c(r31)
    lwz     r6, 0x18(r4)
    lwz     r5, 0x20(r4)
    lwz     r4, 0x550(r31)
    subf    r5, r6, r5
    add     r5, r0, r5
    bl      add__7JUTRectFii
    lwz     r4, 0x548(r31)
    addi    r3, r31, 0x548
    lwz     r0, 0x550(r31)
    lfd     f1, -0x4c38(r2)
    subf    r0, r4, r0
    lfs     f2, -0x4c00(r2)
    xoris   r0, r0, 0x8000
    lwz     r4, 0x54c(r31)
    stw     r0, 0x594(sp)
    lwz     r0, 0x554(r31)
    stw     r28, 0x590(sp)
    subf    r5, r4, r0
    lfd     f0, 0x590(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x598(sp)
    lwz     r4, 0x59c(sp)
    bl      resize__7JUTRectFii
    addi    r3, r31, 0x548
    li      r4, 0x0
    li      r5, -0x10
    bl      add__7JUTRectFii
    lwz     r4, 0x550(r31)
    li      r0, 0x1e
    lfd     f1, -0x4c38(r2)
    li      r3, 0x14
    xoris   r4, r4, 0x8000
    stw     r4, 0x5a4(sp)
    stw     r28, 0x5a0(sp)
    lfd     f0, 0x5a0(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x56c(r31)
    lwz     r6, 0x3b4(r31)
    lwz     r5, 0x14(r6)
    lwz     r4, 0x18(r6)
    stw     r5, 0x3c0(r31)
    stw     r4, 0x3c4(r31)
    lwz     r5, 0x1c(r6)
    lwz     r4, 0x20(r6)
    stw     r5, 0x3c8(r31)
    stw     r4, 0x3cc(r31)
    sth     r0, 0x3d0(r31)
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8014e8f0
    lwz     r3, 0x3b8(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, __vvt__10JSUIosBase@ha
    stw     r23, 0x3ec(sp)
    addi    r0, r4, __vvt__10JSUIosBase@l
    stw     r0, 0x0(r23)
    lis     r4, __vvt__15JSUOutputStream@h
    addi    r0, r4, __vvt__15JSUOutputStream@l
    stb     r29, 0x4(r23)
    lis     r5, __vvt__21JSURandomOutputStream@h
    lis     r4, __vvt__21JSUMemoryOutputStream@h
    stw     r0, 0x0(r23)
    addi    r0, r5, __vvt__21JSURandomOutputStream@l
    li      r5, 0x400
    stw     r0, 0x0(r23)
    addi    r0, r4, __vvt__21JSUMemoryOutputStream@l
    addi    r4, r3, 0x0
    lwz     r6, 0x3ec(sp)
    stw     r0, 0x0(r6)
    mr      r3, r6
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
branch_0x8014e8f0:
    stw     r23, 0x3dc(r31)
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8014e95c
    lwz     r3, 0x3bc(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, __vvt__10JSUIosBase@ha
    stw     r23, 0x3e8(sp)
    addi    r0, r4, __vvt__10JSUIosBase@l
    stw     r0, 0x0(r23)
    li      r0, 0x0
    lis     r4, __vvt__15JSUOutputStream@h
    stb     r0, 0x4(r23)
    addi    r0, r4, __vvt__15JSUOutputStream@l
    lis     r4, __vvt__21JSURandomOutputStream@h
    stw     r0, 0x0(r23)
    addi    r0, r4, __vvt__21JSURandomOutputStream@l
    lis     r4, __vvt__21JSUMemoryOutputStream@h
    stw     r0, 0x0(r23)
    addi    r0, r4, __vvt__21JSUMemoryOutputStream@l
    addi    r4, r3, 0x0
    lwz     r5, 0x3e8(sp)
    stw     r0, 0x0(r5)
    addi    r3, r5, 0x0
    li      r5, 0x400
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
branch_0x8014e95c:
    stw     r23, 0x3e0(r31)
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8014e9bc
    lis     r3, __vvt__10JSUIosBase@ha
    stw     r23, 0x3e4(sp)
    addi    r0, r3, __vvt__10JSUIosBase@l
    stw     r0, 0x0(r23)
    li      r0, 0x0
    lis     r3, __vvt__14JSUInputStream@h
    stb     r0, 0x4(r23)
    addi    r0, r3, __vvt__14JSUInputStream@l
    lis     r3, __vvt__20JSURandomInputStream@h
    stw     r0, 0x0(r23)
    addi    r0, r3, __vvt__20JSURandomInputStream@l
    lis     r3, __vvt__20JSUMemoryInputStream@h
    stw     r0, 0x0(r23)
    addi    r0, r3, __vvt__20JSUMemoryInputStream@l
    li      r4, 0x0
    lwz     r3, 0x3e4(sp)
    li      r5, 0x400
    stw     r0, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
branch_0x8014e9bc:
    stw     r23, 0x3d8(r31)
    li      r27, 0x0
    li      r28, 0x0
    lwz     r3, 0x454(r31)
    li      r29, 0x0
    lwz     r4, 0x0(r3)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x490(r31)
    stw     r0, 0x494(r31)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x498(r31)
    stw     r0, 0x49c(r31)
    lwz     r3, 0x45c(r31)
    lwz     r4, 0x0(r3)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x4a0(r31)
    stw     r0, 0x4a4(r31)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x4a8(r31)
    stw     r0, 0x4ac(r31)
    lwz     r3, 0x484(r31)
    lwz     r4, 0x0(r3)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x4b0(r31)
    stw     r0, 0x4b4(r31)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x4b8(r31)
    stw     r0, 0x4bc(r31)
branch_0x8014ea44:
    addi    r0, r29, 0x45c
    lwzx    r4, r31, r0
    addi    r3, sp, 0x53c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x540(sp)
    add     r4, r31, r28
    lwz     r0, 0x53c(sp)
    addi    r27, r27, 0x1
    cmpwi   r27, 0x6
    stw     r0, 0x4c0(r4)
    addi    r28, r28, 0x8
    addi    r29, r29, 0x4
    stw     r3, 0x4c4(r4)
    blt+    branch_0x8014ea44
    li      r23, 0x0
    li      r27, 0x0
    li      r28, 0x0
branch_0x8014ea90:
    addi    r0, r28, 0x484
    lwzx    r4, r31, r0
    addi    r3, sp, 0x52c
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x14
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x530(sp)
    add     r4, r31, r27
    lwz     r0, 0x52c(sp)
    addi    r23, r23, 0x1
    cmpwi   r23, 0x2
    stw     r0, 0x4f0(r4)
    addi    r27, r27, 0x8
    addi    r28, r28, 0x4
    stw     r3, 0x4f4(r4)
    blt+    branch_0x8014ea90
    lwz     r3, R13Off_m0x6088(r13)
    addi    r4, sp, 0x520
    li      r5, 0x1fb
    lbz     r0, 0x5d5f(r3)
    li      r6, 0x0
    li      r7, 0x0
    stb     r0, 0x7a(r31)
    lfs     f1, -0x4bfc(r2)
    lfs     f0, -0x4c74(r2)
    stfs    f1, 0x520(sp)
    lwz     r3, R13Off_m0x5fdc(r13)
    stfs    f1, 0x524(sp)
    stfs    f0, 0x528(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, R13Off_m0x5fdc(r13)
    addi    r4, sp, 0x520
    li      r5, 0x1fb
    lwz     r0, 0xc8(r3)
    li      r6, 0x0
    li      r7, 0x0
    stw     r0, 0x124(r31)
    lfs     f0, -0x4c40(r2)
    lwz     r3, 0x124(r31)
    stfs    f0, 0x1b0(r3)
    lwz     r3, R13Off_m0x5fdc(r13)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, R13Off_m0x5fdc(r13)
    addi    r4, sp, 0x520
    li      r5, 0x1fb
    lwz     r0, 0xc8(r3)
    li      r6, 0x0
    li      r7, 0x0
    stw     r0, 0x164(r31)
    lwz     r3, 0x164(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lfs     f0, -0x4bf8(r2)
    lwz     r3, 0x164(r31)
    stfs    f0, 0x1b0(r3)
    lwz     r3, R13Off_m0x5fdc(r13)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, R13Off_m0x5fdc(r13)
    lwz     r0, 0xc8(r3)
    stw     r0, 0x144(r31)
    lwz     r3, 0x144(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x3e4(r3)
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r0, 0xcc(r3)
    addi    r3, r30, 0x180
    stw     r0, 0x28(r31)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x180
    mtlr    r12
    blrl
    stw     r3, 0xbc(r31)
    lwz     r0, 0xbc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8014ec14
    li      r27, 0x1
    stw     r27, 0x310(r31)
    li      r4, 0x5
    lwz     r0, 0x280(r31)
    stw     r0, 0x274(r31)
    lwz     r0, 0x294(r31)
    stw     r0, 0x288(r31)
    lwz     r3, 0x274(r31)
    lwz     r3, 0x0(r3)
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
    lwz     r3, 0x288(r31)
    stb     r27, 0xc(r3)
branch_0x8014ec14:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x18c
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x18c
    mtlr    r12
    blrl
    stw     r3, 0xc0(r31)
    addi    r3, r30, 0x19c
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x19c
    mtlr    r12
    blrl
    stw     r3, 0xc4(r31)
    lmw     r23, 0x5e4(sp)
    lwz     r0, 0x614(sp)
    lfd     f31, 0x608(sp)
    addi    sp, sp, 0x610
    mtlr    r0
    blr


.globl __dt__21JSURandomOutputStreamFv
__dt__21JSURandomOutputStreamFv: # 0x8014ec8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8014ecd4
    lis     r3, __vvt__21JSURandomOutputStream@h
    addi    r0, r3, __vvt__21JSURandomOutputStream@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__15JSUOutputStreamFv
    extsh.  r0, r31
    ble-    branch_0x8014ecd4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8014ecd4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getWidth__10JUTResFontCFv
getWidth__10JUTResFontCFv: # 0x8014ecf0
    lwz     r3, 0x4c(r3)
    lhz     r3, 0xe(r3)
    blr


.globl load__11TGCConsole2FR20JSUMemoryInputStream
load__11TGCConsole2FR20JSUMemoryInputStream: # 0x8014ecfc
    mflr    r0
    lis     r5, unk_80387810@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stfd    f30, 0x108(sp)
    stfd    f29, 0x100(sp)
    stfd    f28, 0xf8(sp)
    stfd    f27, 0xf0(sp)
    stfd    f26, 0xe8(sp)
    stfd    f25, 0xe0(sp)
    stfd    f24, 0xd8(sp)
    stfd    f23, 0xd0(sp)
    stfd    f22, 0xc8(sp)
    stfd    f21, 0xc0(sp)
    stfd    f20, 0xb8(sp)
    stmw    r24, 0x98(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, unk_80387810@l
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r2, R2Off_m0x4bf4
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r25, r3, 0x0
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014ed78
    addi    r3, r24, 0x0
    addi    r5, r25, 0x0
    addi    r4, r30, 0x1a8
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x8014ed78:
    stw     r24, 0xb0(r31)
    li      r4, 0x2
    lwz     r3, 0xb0(r31)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014edac
    lis     r5, unk_635f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_635f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014edac:
    stw     r24, 0xc8(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014edd4
    lis     r5, unk_635f6963@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_635f6963@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014edd4:
    stw     r24, 0xcc(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014edfc
    lis     r5, unk_00635f78@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00635f78@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014edfc:
    stw     r24, 0xd0(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014ee24
    lis     r5, unk_00635f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00635f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014ee24:
    stw     r24, 0x108(r31)
    li      r25, 0x0
    li      r27, 0x0
branch_0x8014ee30:
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014ee54
    addis   r5, r25, 0x635f
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x6e31
    bl      __ct__10TBlendPaneFP9J2DScreenUl
branch_0x8014ee54:
    addi    r25, r25, 0x1
    addi    r0, r27, 0xd4
    cmpwi   r25, 0x3
    stwx    r24, r31, r0
    addi    r27, r27, 0x4
    blt+    branch_0x8014ee30
    li      r25, 0x0
    li      r27, 0x0
branch_0x8014ee74:
    addi    r6, r25, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x6c
    addi    r5, r30, 0x1b8
    li      r4, 0x28
    bl      snprintf
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014eec0
    addi    r29, r24, 0x0
    addi    r3, sp, 0x6c
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r28, 0x0
    stw     r28, 0x28(r24)
    addi    r4, r3, 0x0
    mr      r3, r29
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r28, 0x50(r24)
branch_0x8014eec0:
    addi    r25, r25, 0x1
    addi    r0, r27, 0xe0
    cmpwi   r25, 0xa
    stwx    r24, r31, r0
    addi    r27, r27, 0x4
    blt+    branch_0x8014ee74
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014eefc
    lis     r5, unk_735f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_735f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014eefc:
    stw     r24, 0x128(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014ef24
    lis     r5, unk_735f6963@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_735f6963@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014ef24:
    stw     r24, 0x12c(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014ef4c
    lis     r5, unk_00735f78@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00735f78@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014ef4c:
    stw     r24, 0x130(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014ef74
    lis     r5, unk_00735f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00735f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014ef74:
    stw     r24, 0x140(r31)
    li      r25, 0x0
    li      r27, 0x0
branch_0x8014ef80:
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014efa4
    addis   r5, r25, 0x735f
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x6e31
    bl      __ct__10TBlendPaneFP9J2DScreenUl
branch_0x8014efa4:
    addi    r25, r25, 0x1
    addi    r0, r27, 0x134
    cmpwi   r25, 0x3
    stwx    r24, r31, r0
    addi    r27, r27, 0x4
    blt+    branch_0x8014ef80
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014efe0
    lis     r5, unk_645f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_645f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014efe0:
    stw     r24, 0x148(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f008
    lis     r5, unk_645f6963@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_645f6963@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f008:
    stw     r24, 0x14c(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f030
    lis     r5, unk_00645f78@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00645f78@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f030:
    stw     r24, 0x150(r31)
    li      r25, 0x0
    li      r27, 0x0
branch_0x8014f03c:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f060
    addis   r5, r25, 0x645f
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, 0x6e31
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f060:
    addi    r25, r25, 0x1
    addi    r0, r27, 0x154
    cmpwi   r25, 0x3
    stwx    r24, r31, r0
    addi    r27, r27, 0x4
    blt+    branch_0x8014f03c
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f09c
    lis     r5, unk_00645f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00645f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014f09c:
    stw     r24, 0x160(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f0c4
    lis     r5, unk_6c5f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_6c5f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f0c4:
    stw     r24, 0x174(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f0ec
    lis     r5, unk_6c5f7478@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_6c5f7478@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f0ec:
    stw     r24, 0x178(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f114
    lis     r5, unk_006c5f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_006c5f30@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f114:
    stw     r24, 0x1c4(r31)
    li      r24, 0x0
    li      r29, 0x0
    li      r28, 0x0
    li      r27, 0x0
branch_0x8014f128:
    lwz     r3, 0xb0(r31)
    addis   r4, r27, 0x6c6d
    addi    r4, r4, 0x3031
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r26, r31, r28
    stw     r3, 0x17c(r26)
    addis   r4, r27, 0x6c6d
    addi    r25, r26, 0x17c
    lwz     r3, 0xb0(r31)
    addi    r4, r4, 0x3032
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x180(r26)
    addi    r0, r29, 0x1d0
    addi    r24, r24, 0x1
    lwz     r5, 0x0(r25)
    add     r4, r31, r0
    cmpwi   r24, 0x9
    lwz     r3, 0x14(r5)
    addi    r29, r29, 0x10
    lwz     r0, 0x18(r5)
    addi    r28, r28, 0x8
    addi    r27, r27, 0x100
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x8(r4)
    stw     r0, 0xc(r4)
    blt+    branch_0x8014f128
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f1d8
    lis     r5, unk_6c6d5f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_6c6d5f30@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f1d8:
    stw     r24, 0x260(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f200
    lis     r5, unk_775f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_775f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f200:
    stw     r24, 0x26c(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f228
    lis     r5, unk_775f7478@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_775f7478@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f228:
    stw     r24, 0x270(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x8014f234:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8014f258
    addis   r5, r24, 0x6e7a
    lwz     r4, 0xb0(r31)
    addi    r3, r26, 0x0
    addi    r5, r5, 0x3031
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f258:
    add     r25, r31, r29
    stw     r26, 0x278(r25)
    addis   r4, r24, 0x7862
    addi    r4, r4, 0x3031
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    stw     r3, 0x28c(r25)
    cmpwi   r24, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x8014f234
    lwz     r0, 0x278(r31)
    li      r4, 0x5
    stw     r0, 0x274(r31)
    lwz     r0, 0x28c(r31)
    stw     r0, 0x288(r31)
    lwz     r3, 0x274(r31)
    lwz     r3, 0x0(r3)
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
    lwz     r4, 0x288(r31)
    li      r0, 0x1
    li      r3, 0x68
    stb     r0, 0xc(r4)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f2e0
    lis     r5, unk_775f7430@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_775f7430@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f2e0:
    stw     r24, 0x29c(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f308
    lis     r5, unk_00775f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00775f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014f308:
    stw     r24, 0x2f8(r31)
    li      r24, 0x0
    li      r29, 0x0
    lfs     f23, -0x4c74(r2)
    lfs     f20, -0x4c68(r2)
    fmr     f30, f23
    fmr     f21, f23
    fmr     f27, f23
    fmr     f28, f23
    fmr     f29, f23
    fmr     f31, f30
    fmr     f22, f21
    fmr     f24, f23
    fmr     f25, f23
    fmr     f26, f23
branch_0x8014f344:
    lwz     r3, 0xb0(r31)
    addis   r4, r24, 0x775f
    addi    r4, r4, 0x7431
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r26, r31, r29
    stw     r3, 0x2a0(r26)
    addi    r25, r26, 0x2a0
    lwz     r3, 0x2a0(r26)
    stfs    f20, 0x104(r3)
    stfs    f21, 0x108(r3)
    stfs    f21, 0x10c(r3)
    stfs    f22, 0x110(r3)
    bl      setBlendKonstColor__10J2DPictureFv
    lwz     r3, 0x0(r25)
    stfs    f23, 0x114(r3)
    stfs    f24, 0x118(r3)
    stfs    f25, 0x11c(r3)
    stfs    f26, 0x120(r3)
    bl      setBlendKonstAlpha__10J2DPictureFv
    lwz     r3, 0x0(r25)
    li      r27, 0x0
    cmpwi   r24, 0x0
    stb     r27, 0xc(r3)
    beq-    branch_0x8014f408
    lwz     r3, 0xb0(r31)
    addis   r4, r24, 0x775f
    addi    r4, r4, 0x6d31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stwu    r3, 0x2ac(r26)
    lwz     r3, 0x0(r25)
    stfs    f23, 0x104(r3)
    stfs    f27, 0x108(r3)
    stfs    f28, 0x10c(r3)
    stfs    f29, 0x110(r3)
    bl      setBlendKonstColor__10J2DPictureFv
    lwz     r3, 0x0(r25)
    stfs    f20, 0x114(r3)
    stfs    f30, 0x118(r3)
    stfs    f30, 0x11c(r3)
    stfs    f31, 0x120(r3)
    bl      setBlendKonstAlpha__10J2DPictureFv
    lwz     r3, 0x0(r26)
    stb     r27, 0xc(r3)
branch_0x8014f408:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x3
    addi    r29, r29, 0x4
    blt+    branch_0x8014f344
    li      r24, 0x0
    li      r29, 0x0
    lis     r27, unk_6a5f7430@h
branch_0x8014f424:
    cmpwi   r24, 0x0
    bne-    branch_0x8014f434
    addi    r4, r27, unk_6a5f7430@l
    b       branch_0x8014f438

branch_0x8014f434:
    addi    r4, r27, 0x7431
branch_0x8014f438:
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    addi    r0, r29, 0x314
    cmpwi   r24, 0x4
    stwx    r3, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8014f424
    lwz     r3, 0xb0(r31)
    lis     r27, unk_6a5f6963@h
    addi    r4, r27, unk_6a5f6963@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x324(r31)
    addi    r4, r27, 0x7271
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x328(r31)
    addi    r4, r27, 0x6d73
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x32c(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x8014f4c4:
    cmpwi   r24, 0x9
    bge-    branch_0x8014f4f4
    lwz     r3, 0xb0(r31)
    addis   r4, r24, 0x6a5f
    addi    r4, r4, 0x3031
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r0, r29, 0x334
    stwx    r3, r31, r0
    b       branch_0x8014f518

branch_0x8014f4f4:
    lwz     r3, 0xb0(r31)
    addis   r4, r24, 0x6a5f
    addi    r4, r4, 0x3058
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r0, r29, 0x334
    stwx    r3, r31, r0
branch_0x8014f518:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x16
    addi    r29, r29, 0x4
    blt+    branch_0x8014f4c4
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f54c
    lis     r5, unk_6d5f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_6d5f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f54c:
    stw     r24, 0x38c(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f574
    lis     r5, unk_6d5f6963@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_6d5f6963@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f574:
    stw     r24, 0x394(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f59c
    lis     r5, unk_6d5f7478@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_6d5f7478@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f59c:
    stw     r24, 0x390(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f5c4
    lis     r5, unk_006d5f78@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_006d5f78@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f5c4:
    stw     r24, 0x398(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f5ec
    lis     r5, unk_006d5f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_006d5f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014f5ec:
    stw     r24, 0x3a8(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x8014f5f8:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8014f61c
    addis   r5, r24, 0x6d5f
    lwz     r4, 0xb0(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x6e31
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f61c:
    addi    r24, r24, 0x1
    addi    r0, r29, 0x39c
    cmpwi   r24, 0x3
    stwx    r25, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8014f5f8
    lwz     r3, 0xb0(r31)
    lis     r27, unk_68655f77@h
    addi    r4, r27, unk_68655f77@l
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x3b4(r31)
    addi    r4, r27, 0x5f32
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x3bc(r31)
    addi    r4, r27, 0x5f31
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x3b8(r31)
    li      r4, 0x401
    lwz     r3, 0x3bc(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x3b8(r31)
    li      r4, 0x401
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x3bc(r31)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x3b8(r31)
    lwz     r4, R13Off_m0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r4, 0x3b8(r31)
    li      r0, 0x1
    li      r3, 0xbfc
    stb     r0, 0xc(r4)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f6e4
    addi    r3, r24, 0x0
    addi    r4, r30, 0x1d8
    bl      __ct__14TMessageLoaderFPCc
branch_0x8014f6e4:
    stw     r24, 0x3d4(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f70c
    lis     r5, unk_00625f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00625f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014f70c:
    stw     r24, 0x400(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f734
    lis     r5, unk_625f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_625f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f734:
    stw     r24, 0x404(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f75c
    lis     r5, unk_625f6963@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_625f6963@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f75c:
    stw     r24, 0x40c(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f784
    lis     r5, unk_6d6f6963@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_6d6f6963@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f784:
    stw     r24, 0x410(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f7ac
    lis     r5, unk_625f736c@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_625f736c@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f7ac:
    stw     r24, 0x414(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x8014f7b8:
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8014f7dc
    addis   r5, r24, 0x625f
    lwz     r4, 0xb0(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x6e31
    bl      __ct__10TBlendPaneFP9J2DScreenUl
branch_0x8014f7dc:
    addi    r24, r24, 0x1
    addi    r0, r29, 0x418
    cmpwi   r24, 0x4
    stwx    r25, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8014f7b8
    lwz     r4, 0x100(r31)
    li      r5, 0x0
    lwz     r3, 0x420(r31)
    lwz     r4, 0x20(r4)
    lwz     r3, 0x0(r3)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f830
    lis     r5, unk_00725f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00725f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014f830:
    stw     r24, 0x42c(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f858
    lis     r5, unk_725f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_725f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f858:
    stw     r24, 0x430(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f880
    lis     r5, unk_725f6963@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_725f6963@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f880:
    stw     r24, 0x434(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f8a8
    lis     r5, unk_00725f78@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00725f78@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f8a8:
    stw     r24, 0x438(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f8d0
    lis     r5, unk_725f736c@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_725f736c@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f8d0:
    stw     r24, 0x43c(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x8014f8dc:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8014f900
    addis   r5, r24, 0x725f
    lwz     r4, 0xb0(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x6e31
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f900:
    addi    r24, r24, 0x1
    addi    r0, r29, 0x440
    cmpwi   r24, 0x2
    stwx    r25, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8014f8dc
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f93c
    lis     r5, unk_00745f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_00745f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014f93c:
    stw     r24, 0x450(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f964
    lis     r5, unk_745f6261@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_745f6261@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f964:
    stw     r24, 0x454(r31)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f98c
    lis     r5, unk_745f7478@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_745f7478@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f98c:
    stw     r24, 0x458(r31)
    li      r24, 0x0
    li      r29, 0x0
branch_0x8014f998:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8014f9bc
    addis   r5, r24, 0x745f
    lwz     r4, 0xb0(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x6e31
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f9bc:
    addi    r24, r24, 0x1
    addi    r0, r29, 0x45c
    cmpwi   r24, 0x9
    stwx    r25, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8014f998
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014f9f8
    lis     r5, unk_745f6e30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_745f6e30@l
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014f9f8:
    stw     r24, 0x480(r31)
    li      r24, 0x0
    li      r29, 0x0
    lwz     r3, 0x474(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x13c(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x68(sp)
    stw     r0, 0x50c(r31)
    lwz     r3, 0x478(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x13c(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x68(sp)
    stw     r0, 0x510(r31)
branch_0x8014fa34:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8014fa58
    addis   r5, r24, 0x745f
    lwz     r4, 0xb0(r31)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x6331
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8014fa58:
    addi    r24, r24, 0x1
    addi    r0, r29, 0x484
    cmpwi   r24, 0x3
    stwx    r25, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8014fa34
    li      r24, 0x0
    li      r29, 0x0
branch_0x8014fa78:
    lwz     r3, 0xb0(r31)
    addis   r4, r24, 0x74
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    addi    r0, r29, 0x504
    cmpwi   r24, 0x2
    stwx    r3, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8014fa78
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014fad0
    lis     r5, unk_74655f30@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_74655f30@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014fad0:
    stw     r24, 0x524(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014faf8
    lis     r5, unk_74655f77@h
    lwz     r4, 0xb0(r31)
    addi    r3, r24, 0x0
    addi    r5, r5, unk_74655f77@l
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8014faf8:
    stw     r24, 0x528(r31)
    lis     r27, unk_74657432@h
    addi    r4, r27, unk_74657432@l
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x52c(r31)
    addi    r4, r27, 0x7431
    lwz     r3, 0xb0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x530(r31)
    li      r3, 0xbfc
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8014fb54
    addi    r3, r24, 0x0
    addi    r4, r30, 0x1f0
    bl      __ct__14TMessageLoaderFPCc
branch_0x8014fb54:
    stw     r24, 0x534(r31)
    li      r0, 0x0
    li      r4, 0x401
    stw     r0, 0x560(r31)
    lwz     r3, 0x52c(r31)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x530(r31)
    li      r4, 0x401
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lmw     r24, 0x98(sp)
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    mtlr    r0
    lfd     f29, 0x100(sp)
    lfd     f28, 0xf8(sp)
    lfd     f27, 0xf0(sp)
    lfd     f26, 0xe8(sp)
    lfd     f25, 0xe0(sp)
    lfd     f24, 0xd8(sp)
    lfd     f23, 0xd0(sp)
    lfd     f22, 0xc8(sp)
    lfd     f21, 0xc0(sp)
    lfd     f20, 0xb8(sp)
    addi    sp, sp, 0x118
    blr


.globl __ct__11TGCConsole2FPCc
__ct__11TGCConsole2FPCc: # 0x8014fbbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r28, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r28)
    mr      r27, r28
    stw     r4, 0x4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r27)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r27)
    li      r29, 0x0
    lis     r3, __vvt__11TGCConsole2@h
    sth     r29, 0xc(r27)
    addi    r0, r3, __vvt__11TGCConsole2@l
    li      r30, -0x1
    stw     r0, 0x0(r28)
    li      r4, -0x190
    li      r3, 0x14
    stw     r29, 0x10(r28)
    li      r31, 0x64
    li      r0, 0xdc
    stw     r29, 0x14(r28)
    li      r10, 0xff
    li      r9, 0xb4
    stw     r29, 0x18(r28)
    sth     r30, 0x1c(r28)
    stw     r29, 0x20(r28)
    stw     r29, 0x24(r28)
    stw     r29, 0x28(r28)
    stw     r29, 0x2c(r28)
    stw     r4, 0x30(r28)
    stb     r29, 0x34(r28)
    stb     r29, 0x35(r28)
    stb     r29, 0x36(r28)
    stb     r29, 0x37(r28)
    stb     r29, 0x38(r28)
    stb     r29, 0x39(r28)
    stb     r29, 0x3a(r28)
    stb     r29, 0x3b(r28)
    stb     r29, 0x3c(r28)
    stb     r29, 0x3d(r28)
    stb     r29, 0x3e(r28)
    stb     r29, 0x3f(r28)
    stb     r29, 0x40(r28)
    stb     r29, 0x41(r28)
    stb     r29, 0x42(r28)
    stb     r29, 0x43(r28)
    stb     r29, 0x44(r28)
    stb     r29, 0x45(r28)
    stb     r29, 0x46(r28)
    stb     r29, 0x47(r28)
    stb     r29, 0x48(r28)
    stb     r29, 0x49(r28)
    stb     r29, 0x4a(r28)
    stb     r29, 0x4b(r28)
    stb     r29, 0x4c(r28)
    stb     r29, 0x4d(r28)
    stb     r29, 0x4e(r28)
    stb     r29, 0x4f(r28)
    stb     r29, 0x50(r28)
    stb     r29, 0x51(r28)
    stw     r29, 0x54(r28)
    stb     r29, 0x58(r28)
    stb     r29, 0x59(r28)
    stb     r29, 0x5a(r28)
    stw     r29, 0x5c(r28)
    stb     r29, 0x60(r28)
    stw     r29, 0x64(r28)
    stb     r29, 0x68(r28)
    stw     r29, 0x6c(r28)
    sth     r3, 0x78(r28)
    sth     r29, 0x7c(r28)
    stw     r29, 0x80(r28)
    sth     r29, 0x84(r28)
    sth     r29, 0x86(r28)
    stb     r29, 0x88(r28)
    sth     r29, 0x8a(r28)
    stw     r29, 0x8c(r28)
    stw     r29, 0x90(r28)
    sth     r3, 0x98(r28)
    stb     r31, 0x9a(r28)
    stb     r0, 0x9b(r28)
    stb     r10, 0x9c(r28)
    stb     r10, 0x9d(r28)
    stb     r29, 0x9e(r28)
    stb     r9, 0x9f(r28)
    li      r0, 0xf0
    stb     r0, 0xa0(r28)
    lis     r3, __ct__7JUTRectFv@h
    addi    r27, r3, __ct__7JUTRectFv@l
    stb     r10, 0xa1(r28)
    li      r3, 0xcf
    li      r8, 0x7f
    stb     r10, 0xa2(r28)
    li      r0, -0x96
    addi    r4, r27, 0x0
    stb     r3, 0xa3(r28)
    addi    r3, r28, 0x1d0
    li      r5, 0x0
    stb     r29, 0xa4(r28)
    li      r6, 0x10
    li      r7, 0x9
    stb     r8, 0xa5(r28)
    stb     r10, 0xa6(r28)
    stb     r29, 0xa7(r28)
    stb     r10, 0xa8(r28)
    stb     r8, 0xa9(r28)
    stb     r10, 0xaa(r28)
    stb     r8, 0xab(r28)
    stb     r8, 0xac(r28)
    stb     r8, 0xad(r28)
    stw     r29, 0xb0(r28)
    stb     r29, 0xb4(r28)
    sth     r29, 0xb6(r28)
    stw     r29, 0xb8(r28)
    stw     r29, 0xbc(r28)
    stw     r29, 0xc0(r28)
    stw     r29, 0xc4(r28)
    stw     r29, 0xc8(r28)
    stw     r29, 0xcc(r28)
    stw     r29, 0xd0(r28)
    stw     r29, 0x108(r28)
    stw     r29, 0x128(r28)
    stw     r29, 0x12c(r28)
    stw     r29, 0x130(r28)
    stw     r29, 0x140(r28)
    stw     r29, 0x148(r28)
    stw     r29, 0x14c(r28)
    stw     r29, 0x150(r28)
    stw     r29, 0x160(r28)
    stw     r29, 0x164(r28)
    sth     r29, 0x16c(r28)
    stw     r29, 0x170(r28)
    stw     r29, 0x174(r28)
    stw     r29, 0x178(r28)
    stw     r29, 0x1c4(r28)
    sth     r0, 0x1c8(r28)
    sth     r9, 0x1ca(r28)
    bl      __construct_array
    stw     r29, 0x260(r28)
    li      r0, 0x12c
    addi    r4, r27, 0x0
    sth     r0, 0x264(r28)
    addi    r3, r28, 0x2bc
    li      r5, 0x0
    stb     r29, 0x266(r28)
    li      r6, 0x10
    li      r7, 0x3
    sth     r29, 0x268(r28)
    sth     r29, 0x26a(r28)
    stw     r29, 0x26c(r28)
    stw     r29, 0x270(r28)
    stw     r29, 0x274(r28)
    stw     r29, 0x29c(r28)
    bl      __construct_array
    lis     r3, __ct__Q28JUtility6TColorFv@h
    addi    r4, r3, __ct__Q28JUtility6TColorFv@l
    addi    r3, r28, 0x2ec
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x3
    bl      __construct_array
    stw     r29, 0x2f8(r28)
    addi    r3, r28, 0x2fc
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stb     r29, 0x30c(r28)
    li      r0, 0x17
    addi    r3, r28, 0x3c0
    stw     r29, 0x310(r28)
    li      r4, 0x0
    li      r5, 0x0
    stw     r29, 0x324(r28)
    li      r6, 0x0
    li      r7, 0x0
    stw     r29, 0x328(r28)
    stw     r29, 0x32c(r28)
    stb     r0, 0x330(r28)
    stw     r29, 0x38c(r28)
    stw     r29, 0x390(r28)
    stw     r29, 0x394(r28)
    stw     r29, 0x398(r28)
    sth     r29, 0x3ae(r28)
    stb     r29, 0x3b0(r28)
    bl      set__7JUTRectFiiii
    sth     r29, 0x3d0(r28)
    addi    r3, r28, 0x490
    li      r4, 0x0
    stw     r29, 0x3d4(r28)
    li      r5, 0x0
    li      r6, 0x0
    stw     r29, 0x3d8(r28)
    li      r7, 0x0
    stw     r29, 0x3dc(r28)
    stw     r29, 0x3e0(r28)
    stw     r29, 0x3e4(r28)
    stw     r29, 0x3e8(r28)
    sth     r31, 0x3ec(r28)
    lfs     f0, -0x4bec(r2)
    stfs    f0, 0x3f0(r28)
    sth     r29, 0x3f4(r28)
    stw     r30, 0x3f8(r28)
    stb     r29, 0x3fc(r28)
    stw     r29, 0x400(r28)
    stw     r29, 0x404(r28)
    stw     r29, 0x408(r28)
    stw     r29, 0x40c(r28)
    stw     r29, 0x410(r28)
    stw     r29, 0x414(r28)
    stb     r29, 0x42a(r28)
    stw     r29, 0x448(r28)
    stb     r29, 0x44c(r28)
    bl      set__7JUTRectFiiii
    addi    r3, r28, 0x4a0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r28, 0x4b0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lis     r3, __ct__8JUTPointFv@h
    addi    r30, r3, __ct__8JUTPointFv@l
    addi    r4, r30, 0x0
    addi    r3, r28, 0x4c0
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x6
    bl      __construct_array
    addi    r4, r30, 0x0
    addi    r3, r28, 0x4f0
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x2
    bl      __construct_array
    stw     r29, 0x500(r28)
    addi    r3, r28, 0x538
    li      r4, 0x0
    stb     r29, 0x514(r28)
    li      r5, 0x0
    li      r6, 0x0
    stw     r29, 0x518(r28)
    li      r7, 0x0
    stw     r29, 0x51c(r28)
    stb     r29, 0x520(r28)
    stw     r29, 0x534(r28)
    bl      set__7JUTRectFiiii
    addi    r3, r28, 0x548
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r29, 0x558(r28)
    li      r5, 0x8
    subfic  r0, r5, 0xa
    stb     r29, 0x55c(r28)
    li      r3, 0x3c
    li      r4, 0x5
    mtctr   r0
    stw     r29, 0x560(r28)
    li      r0, 0x1
    sth     r3, 0x564(r28)
    cmpwi   r5, 0xa
    slwi    r3, r5, 2
    sth     r4, 0x566(r28)
    lfs     f0, -0x4bec(r2)
    stfs    f0, 0x568(r28)
    lfs     f0, -0x4c74(r2)
    stfs    f0, 0x56c(r28)
    stb     r0, 0x570(r28)
    stb     r0, 0x571(r28)
    stw     r29, 0x574(r28)
    stw     r29, 0xd4(r28)
    stw     r29, 0xd8(r28)
    stw     r29, 0xdc(r28)
    stw     r29, 0xe0(r28)
    stw     r29, 0xe4(r28)
    stw     r29, 0xe8(r28)
    stw     r29, 0xec(r28)
    stw     r29, 0xf0(r28)
    stw     r29, 0xf4(r28)
    stw     r29, 0xf8(r28)
    stw     r29, 0xfc(r28)
    bge-    branch_0x8015007c
branch_0x80150068:
    lwz     r4, 0x8(sp)
    addi    r0, r3, 0xe0
    addi    r3, r3, 0x4
    stwx    r29, r4, r0
    bdnz+      branch_0x80150068
branch_0x8015007c:
    lwz     r28, 0x8(sp)
    li      r0, 0x0
    li      r3, 0x80
    stw     r0, 0x134(r28)
    stw     r0, 0x138(r28)
    stw     r0, 0x13c(r28)
    stw     r0, 0x418(r28)
    stw     r0, 0x41c(r28)
    stw     r0, 0x420(r28)
    stw     r0, 0x424(r28)
    bl      __nwa__FUl
    stw     r3, 0x90(r28)
    mr      r3, r28
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__8JUTPointFv
__ct__8JUTPointFv: # 0x801500c4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl __ct__Q28JUtility6TColorFv
__ct__Q28JUtility6TColorFv: # 0x801500d4
    li      r0, -0x1
    stw     r0, 0x0(r3)
    blr


.globl __ct__7JUTRectFv
__ct__7JUTRectFv: # 0x801500e0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x18(sp)
    li      r7, 0x0
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      set__7JUTRectFiiii
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_GCConsole2_cpp
__sinit_GCConsole2_cpp: # 0x80150120
    mflr    r0
    li      r10, 0x0
    stw     r0, 0x4(sp)
    li      r0, -0x64
    addi    r3, r13, R13Off_m0x6430
    stwu    sp, -0x10(sp)
    lis     r4, unk_803f3df0@h
    li      r9, 0x32
    stw     r31, 0xc(sp)
    addi    r31, r4, unk_803f3df0@l
    addi    r4, r13, R13Off_m0x6420
    stw     r10, R13Off_m0x6430(r13)
    li      r8, -0x1e
    addi    r7, r13, R13Off_m0x6410
    stw     r0, 0x4(r3)
    li      r0, 0x1e
    addi    r3, r13, R13Off_m0x6428
    stw     r10, R13Off_m0x6428(r13)
    addi    r6, r13, R13Off_m0x6408
    addi    r5, r13, R13Off_m0x6400
    stw     r0, 0x4(r3)
    addi    r3, r13, R13Off_m0x6418
    li      r0, 0x2d
    stw     r10, R13Off_m0x6420(r13)
    stw     r10, 0x4(r4)
    addi    r4, r13, R13Off_m0x63f8
    stw     r10, R13Off_m0x6418(r13)
    stw     r9, 0x4(r3)
    addi    r3, r13, R13Off_m0x63f0
    stw     r10, R13Off_m0x6410(r13)
    stw     r8, 0x4(r7)
    stw     r10, R13Off_m0x6408(r13)
    stw     r10, 0x4(r6)
    stw     r10, R13Off_m0x6400(r13)
    stw     r10, 0x4(r5)
    stw     r10, R13Off_m0x63f8(r13)
    stw     r0, 0x4(r4)
    stw     r10, R13Off_m0x63f0(r13)
    stw     r10, 0x4(r3)
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801501ec
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801501ec:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8015021c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8015021c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8015024c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8015024c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8015027c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8015027c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801502ac
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801502ac:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801502dc
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801502dc:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8015030c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8015030c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8015033c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8015033c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8015036c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8015036c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8015039c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8015039c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801503cc
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801503cc:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801503fc
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801503fc:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8015042c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8015042c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8015045c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8015045c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8015048c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8015048c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

