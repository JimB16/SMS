
.globl jumpProcess__6TMarioFi
jumpProcess__6TMarioFi: # 0x802563e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    li      r31, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r3
    lfs     f2, 0xa4(r3)
    lfs     f1, 0xac(r3)
    fmuls   f2, f2, f2
    lfs     f0, -0xf10(r2)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x80256468
    frsqrte f1, f4
    lfd     f3, -0xf08(r2)
    lfd     f2, -0xf00(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x28(sp)
    lfs     f4, 0x28(sp)
branch_0x80256468:
    addi    r3, r30, 0xb40
    lfs     f0, 0xb40(r30)
    fcmpo   cr0, f4, f0
    ble-    branch_0x8025649c
    fdivs   f0, f0, f4
    lfs     f1, 0xa4(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xa4(r30)
    lfs     f0, 0x0(r3)
    lfs     f1, 0xac(r30)
    fdivs   f0, f0, f4
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r30)
branch_0x8025649c:
    lfs     f2, -0xef8(r2)
    mr      r3, r30
    lfs     f1, 0xa4(r30)
    mr      r5, r4
    lfs     f0, 0x10(r30)
    addi    r4, sp, 0x30
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0xa8(r30)
    lfs     f0, 0x14(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0xac(r30)
    lfs     f0, 0x18(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x38(sp)
    bl      checkGroundAtJumping__6TMarioFRC3Veci
    cmpwi   r3, 0x0
    beq-    branch_0x802564ec
    mr      r31, r3
branch_0x802564ec:
    lfs     f1, 0xa8(r30)
    lfs     f0, -0xf10(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80256508
    lfs     f0, 0x14(r30)
    stfs    f0, 0x104(r30)
branch_0x80256508:
    mr      r3, r30
    bl      fallProcess__6TMarioFv
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x88a
    beq-    branch_0x80256528
    li      r0, 0x0
    sth     r0, 0x94(r30)
branch_0x80256528:
    lha     r0, 0x96(r30)
    mr      r3, r31
    sth     r0, 0x9a(r30)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl fallProcess__6TMarioFv
fallProcess__6TMarioFv: # 0x8025654c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r4, 0x7c(r3)
    cmplwi  r4, 0x891
    bne-    branch_0x80256594
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x21b0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(r31)
    lfs     f1, 0xa8(r31)
    lfs     f0, -0xef4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025666c
    stfs    f0, 0xa8(r31)
    b       branch_0x8025666c

branch_0x80256594:
    lwz     r0, 0x78(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x802565a8
    li      r0, 0x1
    b       branch_0x802565ac

branch_0x802565a8:
    li      r0, 0x0
branch_0x802565ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x802565bc
    li      r0, 0x0
    b       branch_0x802565fc

branch_0x802565bc:
    lis     r3, unk_00021000@h
    addi    r0, r3, unk_00021000@l
    and.    r0, r4, r0
    beq-    branch_0x802565d4
    li      r0, 0x0
    b       branch_0x802565fc

branch_0x802565d4:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x802565f8
    lfs     f1, 0xa8(r31)
    lfs     f0, -0xef0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802565f8
    li      r0, 0x1
    b       branch_0x802565fc

branch_0x802565f8:
    li      r0, 0x0
branch_0x802565fc:
    cmpwi   r0, 0x0
    beq-    branch_0x80256618
    lfs     f1, 0xa8(r31)
    lfs     f0, -0xeec(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r31)
    b       branch_0x80256654

branch_0x80256618:
    addi    r0, r4, -0x895
    cmplwi  r0, 0x1
    bgt-    branch_0x80256644
    lfs     f1, 0xa8(r31)
    lfs     f0, -0xf10(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80256644
    lfs     f0, 0xb2c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(r31)
    b       branch_0x80256654

branch_0x80256644:
    lfs     f1, 0xa8(r31)
    lfs     f0, 0xb18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(r31)
branch_0x80256654:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025666c
    lwz     r3, 0x3f0(r31)
    bl      thinkHoldOut__6TYoshiFv
branch_0x8025666c:
    lfs     f1, 0xa8(r31)
    lfs     f0, -0xef4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80256680
    stfs    f0, 0xa8(r31)
branch_0x80256680:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl checkGroundAtJumping__6TMarioFRC3Veci
checkGroundAtJumping__6TMarioFRC3Veci: # 0x80256694
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r22, 0x68(sp)
    mr      r23, r4
    mr      r22, r3
    mr      r24, r5
    lwz     r4, 0x0(r4)
    lwz     r0, 0x4(r23)
    lfs     f1, -0xee8(r2)
    stw     r4, 0x58(sp)
    addi    r4, sp, 0x58
    stw     r0, 0x5c(sp)
    lwz     r0, 0x8(r23)
    stw     r0, 0x60(sp)
    lfs     f2, 0x15c(r22)
    bl      checkWallPlane__6TMarioFP3Vecff
    lfs     f1, -0xee4(r2)
    addi    r31, r3, 0x0
    lfs     f2, 0x15c(r22)
    addi    r3, r22, 0x0
    addi    r4, sp, 0x58
    bl      checkWallPlane__6TMarioFP3Vecff
    lwz     r0, 0x7c(r22)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80256708
    li      r0, 0x1
    b       branch_0x8025670c

branch_0x80256708:
    li      r0, 0x0
branch_0x8025670c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025673c
    lfs     f1, -0xee4(r2)
    addi    r4, r22, 0xe0
    lfs     f0, 0x5c(sp)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x58(sp)
    lfs     f3, 0x60(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xec(r22)
    b       branch_0x80256760

branch_0x8025673c:
    lfs     f2, -0xee4(r2)
    mr      r3, r22
    lfs     f0, 0x5c(sp)
    addi    r4, r22, 0xec
    lfs     f1, 0x58(sp)
    fadds   f2, f2, f0
    lfs     f3, 0x60(sp)
    addi    r5, r22, 0xe0
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
branch_0x80256760:
    lfs     f1, -0xee0(r2)
    mr      r3, r22
    lfs     f0, 0x14(r22)
    addi    r4, sp, 0x58
    addi    r5, r22, 0xdc
    fadds   f1, f1, f0
    bl      checkRoofPlane__6TMarioFRC3VecfPPC12TBGCheckData
    stfs    f1, 0xe8(r22)
    li      r29, 0x7
    li      r28, 0x7
    lfs     f0, 0x58(sp)
    li      r27, 0x7
    stfs    f0, 0x10(r22)
    lfs     f0, 0x5c(sp)
    stfs    f0, 0x14(r22)
    lfs     f0, 0x60(sp)
    stfs    f0, 0x18(r22)
    lwz     r3, 0xe0(r22)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802567bc
    li      r0, 0x1
    b       branch_0x802567c0

branch_0x802567bc:
    li      r0, 0x0
branch_0x802567c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x802567e8
    lwz     r3, 0x29c(r22)
    li      r29, 0x2
    lwz     r0, 0x2a0(r22)
    stw     r3, 0x10(r22)
    stw     r0, 0x14(r22)
    lwz     r0, 0x2a4(r22)
    stw     r0, 0x18(r22)
    b       branch_0x802568f8

branch_0x802567e8:
    lhz     r4, 0x0(r3)
    li      r5, 0x0
    cmplwi  r4, 0x400
    beq-    branch_0x80256830
    cmplwi  r4, 0x8400
    beq-    branch_0x80256830
    addi    r0, r4, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80256830
    addi    r0, r4, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80256830
    cmplwi  r4, 0x201
    beq-    branch_0x80256830
    cmplwi  r4, 0x203
    bne-    branch_0x80256838
branch_0x80256830:
    li      r0, 0x1
    b       branch_0x8025683c

branch_0x80256838:
    li      r0, 0x0
branch_0x8025683c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256848
    li      r5, 0x1
branch_0x80256848:
    lwz     r3, 0x7c(r22)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x80256878
    cmplwi  r4, 0x107
    bne-    branch_0x80256868
    li      r0, 0x1
    b       branch_0x8025686c

branch_0x80256868:
    li      r0, 0x0
branch_0x8025686c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256878
    li      r5, 0x1
branch_0x80256878:
    rlwinm. r0, r3, 0, 15, 15
    beq-    branch_0x80256888
    li      r0, 0x1
    b       branch_0x8025688c

branch_0x80256888:
    li      r0, 0x0
branch_0x8025688c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802568d4
    cmplwi  r4, 0x100
    beq-    branch_0x802568bc
    cmplwi  r4, 0x101
    beq-    branch_0x802568bc
    addi    r0, r4, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x802568bc
    cmplwi  r4, 0x4104
    bne-    branch_0x802568c4
branch_0x802568bc:
    li      r0, 0x1
    b       branch_0x802568c8

branch_0x802568c4:
    li      r0, 0x0
branch_0x802568c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x802568d4
    li      r5, 0x0
branch_0x802568d4:
    cmpwi   r5, 0x0
    bne-    branch_0x802568f8
    lfs     f0, 0x5c(sp)
    lfs     f1, 0xec(r22)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802568f8
    stfs    f1, 0x14(r22)
    li      r29, 0x1
branch_0x802568f8:
    cmpwi   r29, 0x1
    bne-    branch_0x80256908
    lfs     f0, 0xa8(r22)
    stfs    f0, 0xbc(r22)
branch_0x80256908:
    lwz     r3, 0xdc(r22)
    cmplwi  r3, 0x0
    beq-    branch_0x80256a68
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x400
    beq-    branch_0x80256958
    cmplwi  r3, 0x8400
    beq-    branch_0x80256958
    addi    r0, r3, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80256958
    addi    r0, r3, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80256958
    cmplwi  r3, 0x201
    beq-    branch_0x80256958
    cmplwi  r3, 0x203
    bne-    branch_0x80256960
branch_0x80256958:
    li      r0, 0x1
    b       branch_0x80256964

branch_0x80256960:
    li      r0, 0x0
branch_0x80256964:
    clrlwi. r0, r0, 24
    bne-    branch_0x80256a68
    lfs     f1, -0xedc(r2)
    lfs     f0, 0x5c(sp)
    lfs     f2, 0xe8(r22)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x80256a68
    fsubs   f0, f2, f1
    stfs    f0, 0x14(r22)
    lwz     r3, 0xdc(r22)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802569b4
    lwz     r12, 0x0(r3)
    addi    r4, r22, 0x0
    li      r5, 0x2
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x802569b4:
    mr      r3, r22
    lfs     f1, -0xf10(r2)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f1, 0xa8(r22)
    lfs     f0, -0xf10(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80256a68
    stfs    f0, 0xa8(r22)
    lwz     r0, 0x118(r22)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802569ec
    li      r0, 0x1
    b       branch_0x802569f0

branch_0x802569ec:
    li      r0, 0x0
branch_0x802569f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256a04
    lwz     r0, 0x118(r22)
    ori     r0, r0, 0x200
    stw     r0, 0x118(r22)
branch_0x80256a04:
    rlwinm. r0, r24, 0, 30, 30
    beq-    branch_0x80256a64
    lwz     r0, 0x6c(r22)
    li      r25, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80256a30
    mr      r3, r22
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80256a30
    li      r25, 0x1
branch_0x80256a30:
    clrlwi. r0, r25, 24
    beq-    branch_0x80256a64
    lwz     r3, 0xdc(r22)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x80256a50
    li      r0, 0x1
    b       branch_0x80256a54

branch_0x80256a50:
    li      r0, 0x0
branch_0x80256a54:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256a64
    li      r27, 0x4
    b       branch_0x80256a68

branch_0x80256a64:
    li      r27, 0x0
branch_0x80256a68:
    li      r3, 0x0
    cmplwi  r31, 0x0
    stw     r3, 0xd8(r22)
    li      r26, 0x0
    li      r25, 0x0
    bne-    branch_0x80256a88
    li      r26, 0x1
    b       branch_0x80256adc

branch_0x80256a88:
    lhz     r4, 0x0(r31)
    cmplwi  r4, 0x400
    beq-    branch_0x80256acc
    cmplwi  r4, 0x8400
    beq-    branch_0x80256acc
    addi    r0, r4, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80256acc
    addi    r0, r4, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80256acc
    cmplwi  r4, 0x201
    beq-    branch_0x80256acc
    cmplwi  r4, 0x203
    bne-    branch_0x80256ad0
branch_0x80256acc:
    li      r3, 0x1
branch_0x80256ad0:
    clrlwi. r0, r3, 24
    beq-    branch_0x80256adc
    li      r26, 0x1
branch_0x80256adc:
    cmplwi  r30, 0x0
    bne-    branch_0x80256aec
    li      r25, 0x1
    b       branch_0x80256b48

branch_0x80256aec:
    lhz     r3, 0x0(r30)
    cmplwi  r3, 0x400
    beq-    branch_0x80256b30
    cmplwi  r3, 0x8400
    beq-    branch_0x80256b30
    addi    r0, r3, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80256b30
    addi    r0, r3, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80256b30
    cmplwi  r3, 0x201
    beq-    branch_0x80256b30
    cmplwi  r3, 0x203
    bne-    branch_0x80256b38
branch_0x80256b30:
    li      r0, 0x1
    b       branch_0x80256b3c

branch_0x80256b38:
    li      r0, 0x0
branch_0x80256b3c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256b48
    li      r25, 0x1
branch_0x80256b48:
    clrlwi. r0, r24, 31
    beq-    branch_0x80256bc0
    cmpwi   r26, 0x1
    bne-    branch_0x80256bc0
    cmpwi   r25, 0x0
    bne-    branch_0x80256bc0
    lwz     r0, 0x6c(r22)
    li      r24, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80256b84
    mr      r3, r22
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80256b84
    li      r24, 0x1
branch_0x80256b84:
    clrlwi  r0, r24, 24
    cmpwi   r0, 0x1
    bne-    branch_0x80256bc0
    stw     r30, 0xd8(r22)
    addi    r3, r22, 0x0
    addi    r4, r30, 0x0
    addi    r5, r23, 0x0
    addi    r6, sp, 0x58
    bl      hangonCheck__6TMarioFPC12TBGCheckDataRC3VecRC3Vec
    cmpwi   r3, 0x0
    beq-    branch_0x80256bb8
    li      r28, 0x3
    b       branch_0x80256c2c

branch_0x80256bb8:
    li      r28, 0x0
    b       branch_0x80256c2c

branch_0x80256bc0:
    cmpwi   r26, 0x0
    beq-    branch_0x80256bd0
    cmpwi   r25, 0x0
    bne-    branch_0x80256c2c
branch_0x80256bd0:
    cmplwi  r31, 0x0
    beq-    branch_0x80256be0
    mr      r0, r31
    b       branch_0x80256be4

branch_0x80256be0:
    mr      r0, r30
branch_0x80256be4:
    stw     r0, 0xd8(r22)
    lwz     r3, 0xd8(r22)
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    lha     r4, 0x96(r22)
    lha     r5, 0xe60(r22)
    addis   r4, r4, 0x1
    addi    r0, r4, -0x8000
    subf    r0, r0, r3
    neg     r3, r5
    extsh   r0, r0
    cmpw    r3, r0
    bge-    branch_0x80256c2c
    cmpw    r0, r5
    bge-    branch_0x80256c2c
    li      r28, 0x2
branch_0x80256c2c:
    cmpwi   r29, 0x7
    beq-    branch_0x80256c3c
    mr      r3, r29
    b       branch_0x80256c60

branch_0x80256c3c:
    cmpwi   r27, 0x7
    beq-    branch_0x80256c4c
    mr      r3, r27
    b       branch_0x80256c60

branch_0x80256c4c:
    cmpwi   r28, 0x7
    beq-    branch_0x80256c5c
    mr      r3, r28
    b       branch_0x80256c60

branch_0x80256c5c:
    li      r3, 0x0
branch_0x80256c60:
    lmw     r22, 0x68(sp)
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl hangonCheck__6TMarioFPC12TBGCheckDataRC3VecRC3Vec
hangonCheck__6TMarioFPC12TBGCheckDataRC3VecRC3Vec: # 0x80256c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    mr      r29, r3
    lfs     f4, -0xf10(r2)
    lfs     f0, 0xa8(r3)
    fcmpo   cr0, f0, f4
    ble-    branch_0x80256cb0
    li      r3, 0x0
    b       branch_0x80256e48

branch_0x80256cb0:
    lfs     f1, 0x8(r31)
    lfs     f0, 0x8(r5)
    lfs     f5, 0x0(r31)
    lfs     f2, 0x0(r5)
    fsubs   f1, f1, f0
    lfs     f0, 0xac(r29)
    fsubs   f3, f5, f2
    lfs     f2, 0xa4(r29)
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    fcmpo   cr0, f0, f4
    ble-    branch_0x80256ce8
    li      r3, 0x0
    b       branch_0x80256e48

branch_0x80256ce8:
    lfs     f2, -0xed8(r2)
    addi    r4, sp, 0x40
    lfs     f0, 0x34(r30)
    mr      r3, r29
    addi    r5, sp, 0x48
    fnmsubs  f0, f2, f0, f5
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x3c(r30)
    lfs     f0, 0x8(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f2, -0xedc(r2)
    lfs     f0, 0x4(r31)
    lfs     f1, 0x3c(sp)
    fadds   f2, f2, f0
    lfs     f3, 0x44(sp)
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f2, 0x40(sp)
    lfs     f1, 0x4(r31)
    lfs     f0, -0xed4(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80256d50
    li      r3, 0x0
    b       branch_0x80256e48

branch_0x80256d50:
    lfs     f0, -0xedc(r2)
    lfs     f1, 0xe8(r29)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80256d6c
    li      r3, 0x0
    b       branch_0x80256e48

branch_0x80256d6c:
    lwz     r3, 0x48(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x1
    beq-    branch_0x80256d94
    cmplwi  r3, 0x4001
    beq-    branch_0x80256d94
    cmplwi  r3, 0x8001
    beq-    branch_0x80256d94
    cmplwi  r3, 0xc001
    bne-    branch_0x80256d9c
branch_0x80256d94:
    li      r0, 0x1
    b       branch_0x80256da0

branch_0x80256d9c:
    li      r0, 0x0
branch_0x80256da0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256db0
    li      r3, 0x0
    b       branch_0x80256e48

branch_0x80256db0:
    cmplwi  r3, 0x6
    beq-    branch_0x80256dd0
    cmplwi  r3, 0x4006
    beq-    branch_0x80256dd0
    cmplwi  r3, 0x8006
    beq-    branch_0x80256dd0
    cmplwi  r3, 0xc006
    bne-    branch_0x80256dd8
branch_0x80256dd0:
    li      r0, 0x1
    b       branch_0x80256ddc

branch_0x80256dd8:
    li      r0, 0x0
branch_0x80256ddc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256dec
    li      r3, 0x0
    b       branch_0x80256e48

branch_0x80256dec:
    lfs     f0, 0x3c(sp)
    stfs    f0, 0x10(r29)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x14(r29)
    lfs     f0, 0x44(sp)
    stfs    f0, 0x18(r29)
    lwz     r0, 0x48(sp)
    stw     r0, 0xe0(r29)
    lfs     f0, 0x40(sp)
    stfs    f0, 0xec(r29)
    lwz     r3, 0x48(sp)
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    sth     r3, 0xf4(r29)
    lfs     f1, 0x3c(r30)
    lfs     f2, 0x34(r30)
    bl      matan__Fff
    addis   r3, r3, 0x1
    addi    r0, r3, -0x8000
    sth     r0, 0x96(r29)
    li      r3, 0x1
branch_0x80256e48:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl barProcess__6TMarioFv
barProcess__6TMarioFv: # 0x80256e64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r4, sp, 0x10
    li      r31, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r29, 0x2c(sp)
    lwz     r5, 0x68(r3)
    lfs     f1, -0xed8(r2)
    lfs     f0, 0x10(r5)
    lfs     f2, -0xed0(r2)
    stfs    f0, 0x10(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x14(sp)
    lwz     r5, 0x68(r30)
    lfs     f0, 0x18(r5)
    stfs    f0, 0x18(sp)
    bl      checkWallPlane__6TMarioFP3Vecff
    lfs     f1, -0xee4(r2)
    mr      r29, r3
    lfs     f2, -0xecc(r2)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x10
    bl      checkWallPlane__6TMarioFP3Vecff
    cmplwi  r29, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bne-    branch_0x80256ee4
    li      r5, 0x1
    b       branch_0x80256f40

branch_0x80256ee4:
    lhz     r4, 0x0(r29)
    cmplwi  r4, 0x400
    beq-    branch_0x80256f28
    cmplwi  r4, 0x8400
    beq-    branch_0x80256f28
    addi    r0, r4, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80256f28
    addi    r0, r4, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80256f28
    cmplwi  r4, 0x201
    beq-    branch_0x80256f28
    cmplwi  r4, 0x203
    bne-    branch_0x80256f30
branch_0x80256f28:
    li      r0, 0x1
    b       branch_0x80256f34

branch_0x80256f30:
    li      r0, 0x0
branch_0x80256f34:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256f40
    li      r5, 0x1
branch_0x80256f40:
    cmplwi  r3, 0x0
    bne-    branch_0x80256f50
    li      r6, 0x1
    b       branch_0x80256fac

branch_0x80256f50:
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x400
    beq-    branch_0x80256f94
    cmplwi  r3, 0x8400
    beq-    branch_0x80256f94
    addi    r0, r3, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80256f94
    addi    r0, r3, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80256f94
    cmplwi  r3, 0x201
    beq-    branch_0x80256f94
    cmplwi  r3, 0x203
    bne-    branch_0x80256f9c
branch_0x80256f94:
    li      r0, 0x1
    b       branch_0x80256fa0

branch_0x80256f9c:
    li      r0, 0x0
branch_0x80256fa0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256fac
    li      r6, 0x1
branch_0x80256fac:
    cmpwi   r5, 0x1
    bne-    branch_0x80256fec
    cmpwi   r6, 0x1
    bne-    branch_0x80256fec
    lwz     r3, 0x68(r30)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x10(r30)
    lwz     r3, 0x68(r30)
    lfs     f0, 0x38c(r30)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r3, 0x68(r30)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x18(r30)
    b       branch_0x80257004

branch_0x80256fec:
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(sp)
    stw     r0, 0x18(r30)
branch_0x80257004:
    lfs     f1, -0xee0(r2)
    addi    r4, sp, 0x20
    lfs     f0, 0x14(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r30)
    lfs     f3, 0x18(r30)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0xedc(r2)
    lfs     f2, 0x14(r30)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x8025703c
    stfs    f0, 0x14(r30)
branch_0x8025703c:
    lfs     f1, 0x10(r30)
    mr      r3, r30
    lfs     f2, 0x14(r30)
    addi    r4, sp, 0x1c
    lfs     f3, 0x18(r30)
    addi    r5, sp, 0x24
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f0, 0x14(r30)
    lfs     f1, 0x1c(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80257088
    lis     r4, unk_0c400201@h
    stfs    f1, 0x14(r30)
    addi    r3, r30, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r31, 0x1
branch_0x80257088:
    mr      r3, r30
    lfs     f1, -0xf10(r2)
    bl      setPlayerVelocity__6TMarioFf
    li      r0, 0x0
    sth     r0, 0x94(r30)
    mr      r3, r31
    lha     r0, 0x96(r30)
    sth     r0, 0x9a(r30)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl walkProcess__6TMarioFv
walkProcess__6TMarioFv: # 0x802570c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0xe0(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802570f0
    li      r0, 0x1
    b       branch_0x802570f4

branch_0x802570f0:
    li      r0, 0x0
branch_0x802570f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80257104
    li      r3, 0x2
    b       branch_0x80257170

branch_0x80257104:
    cmplwi  r3, 0x0
    lfs     f3, -0xf10(r2)
    beq-    branch_0x80257114
    lfs     f3, 0x38(r3)
branch_0x80257114:
    lfs     f1, 0xa4(r31)
    mr      r3, r31
    lfs     f2, -0xef8(r2)
    addi    r4, sp, 0x1c
    lfs     f0, 0x10(r31)
    fmuls   f1, f1, f2
    fmadds  f0, f1, f3, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0xac(r31)
    lfs     f0, 0x18(r31)
    fmuls   f1, f1, f2
    fmadds  f0, f1, f3, f0
    stfs    f0, 0x24(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x20(sp)
    bl      checkGroundAtWalking__6TMarioFP3Vec
    li      r0, 0x0
    sth     r0, 0x94(r31)
    cmpwi   r3, 0x3
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    bne-    branch_0x80257170
    li      r3, 0x2
branch_0x80257170:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl waitProcess__6TMarioFv
waitProcess__6TMarioFv: # 0x80257184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lfs     f1, -0xf10(r2)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f2, 0x14(r31)
    lfs     f1, 0xec(r31)
    lfs     f0, -0xec8(r2)
    fsubs   f2, f2, f1
    fabs    f2, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x802571ec
    lwz     r6, 0x29c(r31)
    mr      r3, r31
    lwz     r0, 0x2a0(r31)
    li      r4, 0x88d
    li      r5, 0x0
    stw     r6, 0x10(r31)
    li      r6, 0x0
    stw     r0, 0x14(r31)
    lwz     r0, 0x2a4(r31)
    stw     r0, 0x18(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802571f0

branch_0x802571ec:
    stfs    f1, 0x14(r31)
branch_0x802571f0:
    li      r3, 0x0
    sth     r3, 0x94(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lwz     r4, 0xe0(r31)
    lhz     r0, 0x4(r4)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80257214
    li      r3, 0x1
branch_0x80257214:
    clrlwi. r0, r3, 24
    beq-    branch_0x80257224
    li      r3, 0x2
    b       branch_0x80257290

branch_0x80257224:
    cmplwi  r4, 0x0
    lfs     f3, -0xf10(r2)
    beq-    branch_0x80257234
    lfs     f3, 0x38(r4)
branch_0x80257234:
    lfs     f1, 0xa4(r31)
    mr      r3, r31
    lfs     f2, -0xef8(r2)
    addi    r4, sp, 0x20
    lfs     f0, 0x10(r31)
    fmuls   f1, f1, f2
    fmadds  f0, f1, f3, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0xac(r31)
    lfs     f0, 0x18(r31)
    fmuls   f1, f1, f2
    fmadds  f0, f1, f3, f0
    stfs    f0, 0x28(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x24(sp)
    bl      checkGroundAtWalking__6TMarioFP3Vec
    li      r0, 0x0
    sth     r0, 0x94(r31)
    cmpwi   r3, 0x3
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    bne-    branch_0x80257290
    li      r3, 0x2
branch_0x80257290:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl stopProcess__6TMarioFv
stopProcess__6TMarioFv: # 0x802572a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lfs     f1, -0xf10(r2)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0xf10(r2)
    li      r0, 0x0
    stfs    f0, 0xa8(r31)
    lfs     f0, 0xec(r31)
    stfs    f0, 0x14(r31)
    sth     r0, 0x94(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkGroundAtWalking__6TMarioFP3Vec
checkGroundAtWalking__6TMarioFP3Vec: # 0x802572f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r29, 0x2c(sp)
    mr      r29, r4
    lfs     f2, -0xec4(r2)
    lfs     f0, 0x15c(r3)
    lfs     f1, -0xee4(r2)
    fmuls   f2, f2, f0
    bl      checkWallPlane__6TMarioFP3Vecff
    lfs     f1, -0xed8(r2)
    mr      r3, r30
    lfs     f2, 0x15c(r30)
    mr      r4, r29
    bl      checkWallPlane__6TMarioFP3Vecff
    lwz     r0, 0x7c(r30)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80257354
    li      r0, 0x1
    b       branch_0x80257358

branch_0x80257354:
    li      r0, 0x0
branch_0x80257358:
    clrlwi. r0, r0, 24
    beq-    branch_0x80257388
    lfs     f1, -0xee4(r2)
    addi    r4, sp, 0x1c
    lfs     f0, 0x4(r29)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r29)
    lfs     f3, 0x8(r29)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x18(sp)
    b       branch_0x802573ac

branch_0x80257388:
    lfs     f2, -0xee4(r2)
    mr      r3, r30
    lfs     f0, 0x4(r29)
    addi    r4, sp, 0x18
    lfs     f1, 0x0(r29)
    fadds   f2, f2, f0
    lfs     f3, 0x8(r29)
    addi    r5, sp, 0x1c
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
branch_0x802573ac:
    lfs     f1, -0xee0(r2)
    addi    r4, sp, 0x20
    lfs     f0, 0x14(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r29)
    lfs     f3, 0x8(r29)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    stw     r31, 0xd8(r30)
    lwz     r3, 0x1c(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802573e8
    li      r0, 0x1
    b       branch_0x802573ec

branch_0x802573e8:
    li      r0, 0x0
branch_0x802573ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x802573fc
    li      r3, 0x2
    b       branch_0x80257574

branch_0x802573fc:
    lfs     f0, -0xedc(r2)
    lfs     f2, 0x4(r29)
    fadds   f0, f0, f2
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x8025741c
    li      r3, 0x2
    b       branch_0x80257574

branch_0x8025741c:
    lfs     f0, -0xed4(r2)
    lfs     f3, 0x18(sp)
    fadds   f0, f0, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x80257460
    lfs     f0, 0x0(r29)
    li      r3, 0x0
    stfs    f0, 0x10(r30)
    lfs     f0, 0x4(r29)
    stfs    f0, 0x14(r30)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x18(r30)
    lwz     r0, 0x1c(sp)
    stw     r0, 0xe0(r30)
    lfs     f0, 0x18(sp)
    stfs    f0, 0xec(r30)
    b       branch_0x80257574

branch_0x80257460:
    lfs     f1, 0x14(r30)
    lfs     f0, -0xec8(r2)
    fsubs   f1, f1, f3
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80257494
    lwz     r3, 0x29c(r30)
    lwz     r0, 0x2a0(r30)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x2a4(r30)
    stw     r0, 0x18(r30)
    b       branch_0x802574bc

branch_0x80257494:
    lfs     f0, 0x0(r29)
    stfs    f0, 0x10(r30)
    lfs     f0, 0x18(sp)
    stfs    f0, 0x14(r30)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x18(r30)
    lwz     r0, 0x1c(sp)
    stw     r0, 0xe0(r30)
    lfs     f0, 0x18(sp)
    stfs    f0, 0xec(r30)
branch_0x802574bc:
    cmplwi  r31, 0x0
    beq-    branch_0x80257570
    lhz     r3, 0x0(r31)
    cmplwi  r3, 0x400
    beq-    branch_0x80257508
    cmplwi  r3, 0x8400
    beq-    branch_0x80257508
    addi    r0, r3, -0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80257508
    addi    r0, r3, -0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80257508
    cmplwi  r3, 0x201
    beq-    branch_0x80257508
    cmplwi  r3, 0x203
    bne-    branch_0x80257510
branch_0x80257508:
    li      r0, 0x1
    b       branch_0x80257514

branch_0x80257510:
    li      r0, 0x0
branch_0x80257514:
    clrlwi. r0, r0, 24
    bne-    branch_0x80257570
    lfs     f1, 0x3c(r31)
    lfs     f2, 0x34(r31)
    bl      matan__Fff
    lha     r0, 0x96(r30)
    subf    r3, r0, r3
    extsh   r0, r3
    cmpwi   r0, 0x2aaa
    blt-    branch_0x8025754c
    cmpwi   r0, 0x5555
    bgt-    branch_0x8025754c
    li      r3, 0x1
    b       branch_0x80257574

branch_0x8025754c:
    extsh   r0, r3
    cmpwi   r0, -0x2aaa
    bgt-    branch_0x80257568
    cmpwi   r0, -0x5555
    blt-    branch_0x80257568
    li      r3, 0x1
    b       branch_0x80257574

branch_0x80257568:
    li      r3, 0x3
    b       branch_0x80257574

branch_0x80257570:
    li      r3, 0x1
branch_0x80257574:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl checkDescent__6TMarioFv
checkDescent__6TMarioFv: # 0x80257590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    li      r29, 0x0
    lwz     r0, 0x6c(r3)
    lfs     f31, 0x1314(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802575d8
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802575d8
    li      r29, 0x1
branch_0x802575d8:
    clrlwi  r0, r29, 24
    cmpwi   r0, 0x1
    bne-    branch_0x80257720
    lfs     f0, 0xb0(r31)
    fcmpo   cr0, f0, f31
    bge-    branch_0x80257720
    lfs     f2, 0x14(r31)
    li      r29, 0x1
    lfs     f1, -0xec0(r2)
    li      r30, 0x0
    lfs     f3, 0x18(r31)
    lfs     f0, 0x10(r31)
    fsubs   f1, f2, f1
    addi    r4, sp, 0x30
    stfs    f0, 0x30(sp)
    stfs    f1, 0x34(sp)
    stfs    f3, 0x38(sp)
    stfs    f31, 0x3c(sp)
    lwz     r3, R13Off_m0x6328(r13)
    stw     r29, 0x40(sp)
    stw     r30, 0x48(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x80257720
    lfs     f2, -0xee4(r2)
    mr      r3, r31
    lfs     f0, 0x14(r31)
    addi    r4, sp, 0x28
    lfs     f1, 0x30(sp)
    fadds   f2, f2, f0
    lfs     f3, 0x38(sp)
    addi    r5, sp, 0x2c
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lwz     r3, 0x2c(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80257670
    b       branch_0x80257674

branch_0x80257670:
    mr      r29, r30
branch_0x80257674:
    clrlwi. r0, r29, 24
    bne-    branch_0x80257720
    lfs     f2, 0x14(r31)
    lfs     f1, 0x28(sp)
    lfs     f0, -0xedc(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80257720
    lwz     r29, 0x4c(sp)
    lfs     f1, 0x3c(r29)
    lfs     f2, 0x34(r29)
    bl      matan__Fff
    lha     r0, 0x96(r31)
    extsh   r3, r3
    subf    r0, r0, r3
    extsh   r0, r0
    cmpwi   r0, -0x4000
    ble-    branch_0x80257720
    cmpwi   r0, 0x4000
    bge-    branch_0x80257720
    lfs     f0, -0xef0(r2)
    addis   r3, r3, 0x1
    lis     r4, unk_3000054e@h
    lfs     f1, 0x34(r29)
    fadds   f2, f0, f31
    lfs     f0, 0x30(sp)
    addi    r0, r3, -0x8000
    addi    r3, r31, 0x0
    fnmsubs  f0, f2, f1, f0
    addi    r4, r4, unk_3000054e@l
    li      r5, 0x0
    stfs    f0, 0x10(r31)
    li      r6, 0x0
    lfs     f1, 0x3c(r29)
    lfs     f0, 0x38(sp)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    sth     r0, 0x96(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0xebc(r2)
    addi    r3, r31, 0x0
    li      r4, 0x1c
    bl      setAnimation__6TMarioFif
branch_0x80257720:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x78
    blr


.globl keepDistance__6TMarioFRC9THitActorf
keepDistance__6TMarioFRC9THitActorf: # 0x80257740
    mflr    r0
    fmr     f2, f1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, 0x58(r4)
    addi    r4, r4, 0x10
    bl      keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff
keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff: # 0x8025776c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stfd    f30, 0xb8(sp)
    stfd    f29, 0xb0(sp)
    stfd    f28, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    mr      r30, r4
    lfs     f4, 0x18(r3)
    lfs     f3, 0x8(r4)
    lfs     f5, 0x15c(r3)
    fsubs   f29, f4, f3
    lfs     f4, 0x10(r3)
    lfs     f3, 0x0(r4)
    fadds   f5, f1, f5
    lfs     f0, -0xf10(r2)
    fsubs   f30, f4, f3
    fmuls   f1, f29, f29
    fadds   f31, f2, f5
    fmadds  f4, f30, f30, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802577fc
    frsqrte f3, f4
    lfd     f2, -0xf08(r2)
    lfd     f0, -0xf00(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x58(sp)
    lfs     f4, 0x58(sp)
branch_0x802577fc:
    lfs     f0, -0xf10(r2)
    fmr     f28, f4
    fcmpu   cr0, f0, f4
    bne-    branch_0x80257814
    lfs     f30, -0xebc(r2)
    fmr     f28, f30
branch_0x80257814:
    fcmpo   cr0, f28, f31
    bge-    branch_0x80257b38
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802578f4
    addi    r3, r31, 0x8e8
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x8e8(r31)
    li      r0, 0x0
    fcmpo   cr0, f1, f0
    ble-    branch_0x80257848
    li      r0, 0x1
branch_0x80257848:
    lfs     f0, 0xa4(r31)
    lfs     f1, 0xac(r31)
    fmuls   f2, f0, f0
    lfs     f0, -0xf10(r2)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802578b4
    frsqrte f1, f4
    lfd     f3, -0xf08(r2)
    lfd     f2, -0xf00(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x54(sp)
    lfs     f4, 0x54(sp)
branch_0x802578b4:
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f4, f0
    ble-    branch_0x802578c4
    li      r0, 0x1
branch_0x802578c4:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802578f4
    addi    r3, r31, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lis     r4, unk_000208b0@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000208b0@l
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x80257b38

branch_0x802578f4:
    lfs     f0, -0xf10(r2)
    fcmpu   cr0, f0, f28
    bne-    branch_0x80257908
    lha     r3, 0x96(r31)
    b       branch_0x80257914

branch_0x80257908:
    fmr     f1, f29
    fmr     f2, f30
    bl      matan__Fff
branch_0x80257914:
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r4, r3, 16
    lwz     r5, R13Off_m0x5ea8(r13)
    addi    r3, r31, 0x0
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfs     f0, 0x0(r30)
    lfsx    f1, r5, r0
    addi    r4, sp, 0x8c
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x90(sp)
    lwz     r5, R13Off_m0x5ea4(r13)
    lfs     f0, 0x8(r30)
    lfsx    f1, r5, r0
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, -0xed8(r2)
    lfs     f2, 0x15c(r31)
    bl      checkWallPlane__6TMarioFP3Vecff
    lfs     f1, 0x8c(sp)
    mr      r3, r31
    lfs     f2, 0x90(sp)
    addi    r4, sp, 0x84
    lfs     f3, 0x94(sp)
    addi    r5, sp, 0x88
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lwz     r3, 0x88(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8025799c
    li      r0, 0x1
    b       branch_0x802579a0

branch_0x8025799c:
    li      r0, 0x0
branch_0x802579a0:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802579b4
    li      r0, 0x0
    b       branch_0x802579b8

branch_0x802579b4:
    li      r0, 0x1
branch_0x802579b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80257b38
    lwz     r0, 0x8c(sp)
    addi    r3, sp, 0x44
    lwz     r5, 0x90(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x44(sp)
    lwz     r0, 0x94(sp)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x44(sp)
    lwz     r3, 0x48(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x7c(sp)
    lfs     f0, -0xf10(r2)
    stw     r0, 0x80(sp)
    lfs     f2, 0x78(sp)
    lfs     f1, 0x7c(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x80(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80257a34
    fmr     f2, f1
    b       branch_0x80257a58

branch_0x80257a34:
    frsqrte f4, f1
    lfs     f3, -0xec4(r2)
    lfs     f0, -0xeb8(r2)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f2, f1, f0
branch_0x80257a58:
    lfs     f0, -0xf10(r2)
    fmr     f28, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x80257b38
    lfs     f0, -0xeb4(r2)
    fcmpo   cr0, f0, f2
    bge-    branch_0x80257a78
    fmr     f28, f0
branch_0x80257a78:
    lfs     f0, -0xeb0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80257a9c
    lfs     f0, -0xf10(r2)
    stfs    f0, 0x80(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x78(sp)
    b       branch_0x80257acc

branch_0x80257a9c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0xebc(r2)
    lfs     f0, 0x78(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(sp)
branch_0x80257acc:
    lwz     r0, 0x78(sp)
    fmr     f1, f28
    lwz     r4, 0x7c(sp)
    addi    r3, sp, 0x34
    stw     r0, 0x34(sp)
    lwz     r0, 0x80(sp)
    stw     r4, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x34(sp)
    lwz     r3, 0x38(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x60(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x64(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
branch_0x80257b38:
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lfd     f30, 0xb8(sp)
    mtlr    r0
    lfd     f29, 0xb0(sp)
    lfd     f28, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    addi    sp, sp, 0xc8
    blr


.globl playerRefrection__6TMarioFi
playerRefrection__6TMarioFi: # 0x80257b60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, 0xd8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80257bb4
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    lha     r0, 0x96(r30)
    extsh   r3, r3
    subf    r0, r3, r0
    extsh   r0, r0
    subf    r0, r0, r3
    extsh   r0, r0
    sth     r0, 0x96(r30)
branch_0x80257bb4:
    cmpwi   r31, 0x0
    beq-    branch_0x80257bd0
    lfs     f0, 0xb0(r30)
    mr      r3, r30
    fneg    f1, f0
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x80257be0

branch_0x80257bd0:
    lha     r3, 0x96(r30)
    addis   r3, r3, 0x1
    addi    r0, r3, -0x8000
    sth     r0, 0x96(r30)
branch_0x80257be0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __sinit_MarioPhysics_cpp
__sinit_MarioPhysics_cpp: # 0x80257bf8
    mflr    r0
    lis     r3, unk_803fb930@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fb930@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80257c40
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80257c40:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80257c70
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80257c70:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80257ca0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80257ca0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80257cd0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80257cd0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80257d00
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80257d00:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80257d30
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80257d30:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80257d60
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80257d60:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80257d90
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80257d90:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80257dc0
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80257dc0:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80257df0
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80257df0:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80257e20
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80257e20:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80257e50
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80257e50:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80257e80
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80257e80:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80257eb0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80257eb0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80257ee0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80257ee0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

