
.globl read__13TMarioGamePadFv
read__13TMarioGamePadFv: # 0x802a8054
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    bl      read__10JUTGamePadFv
    li      r3, 0x0
    addic.  r0, sp, 0xc
    stw     r3, 0xc(sp)
    beq-    branch_0x802a807c
    lwz     r0, -0x5eb4(r13)
    stw     r0, 0xc(sp)
branch_0x802a807c:
    lbz     r0, -0x5eb7(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802a80c4
    lwz     r4, 0xc(sp)
    cmpwi   r4, -0x1
    bne-    branch_0x802a80a4
    lhz     r0, -0x6008(r13)
    ori     r0, r0, 0xf
    sth     r0, -0x6008(r13)
    b       branch_0x802a80bc

branch_0x802a80a4:
    li      r0, 0x1
    lhz     r3, -0x6008(r13)
    slw     r0, r0, r4
    clrlwi  r0, r0, 16
    or      r0, r3, r0
    sth     r0, -0x6008(r13)
branch_0x802a80bc:
    li      r0, 0x0
    stb     r0, -0x5eb7(r13)
branch_0x802a80c4:
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl onNeutralMarioKey__13TMarioGamePadFv
onNeutralMarioKey__13TMarioGamePadFv: # 0x802a80d4
    li      r0, 0x3c
    sth     r0, 0xe4(r3)
    blr


.globl updateMeaning__13TMarioGamePadFv
updateMeaning__13TMarioGamePadFv: # 0x802a80e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    stw     r31, 0x18c(sp)
    stw     r30, 0x188(sp)
    mr      r30, r3
    stw     r29, 0x184(sp)
    lwz     r3, 0xe8(r3)
    cmpwi   r3, 0x0
    ble-    branch_0x802a8110
    subi    r0, r3, 0x1
    stw     r0, 0xe8(r30)
branch_0x802a8110:
    lhz     r4, 0xdc(r30)
    li      r0, 0x0
    sth     r0, 0xdc(r30)
    lwz     r0, 0x18(r30)
    clrlwi. r0, r0, 28
    beq-    branch_0x802a8134
    lhz     r0, 0xdc(r30)
    ori     r0, r0, 0x1
    sth     r0, 0xdc(r30)
branch_0x802a8134:
    clrlwi. r0, r4, 31
    beq-    branch_0x802a815c
    lfs     f1, 0x2c(r30)
    lfs     f0, -0x3b8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802a8178
    lhz     r0, 0xdc(r30)
    ori     r0, r0, 0x1
    sth     r0, 0xdc(r30)
    b       branch_0x802a8178

branch_0x802a815c:
    lfs     f1, 0x2c(r30)
    lfs     f0, -0x3b4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802a8178
    lhz     r0, 0xdc(r30)
    ori     r0, r0, 0x1
    sth     r0, 0xdc(r30)
branch_0x802a8178:
    lhz     r3, 0xdc(r30)
    li      r5, 0x8
    subfic  r0, r5, 0xa
    andc    r3, r3, r4
    mtctr   r0
    sth     r3, 0xde(r30)
    cmpwi   r5, 0xa
    slwi    r3, r5, 2
    lhz     r0, 0xdc(r30)
    andc    r0, r4, r0
    sth     r0, 0xe0(r30)
    lfs     f0, -0x3bc(rtoc)
    stfs    f0, 0xa8(r30)
    stfs    f0, 0xac(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xb4(r30)
    stfs    f0, 0xb8(r30)
    stfs    f0, 0xbc(r30)
    stfs    f0, 0xc0(r30)
    stfs    f0, 0xc4(r30)
    bge-    branch_0x802a81dc
branch_0x802a81cc:
    addi    r0, r3, 0xa8
    stfsx   f0, r30, r0
    addi    r3, r3, 0x4
    bdnz+      branch_0x802a81cc
branch_0x802a81dc:
    lwz     r31, 0xd0(r30)
    li      r0, 0x0
    stw     r0, 0xd0(r30)
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 19, 19
    bne-    branch_0x802a8208
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x802a8214
    clrlwi. r0, r31, 31
    beq-    branch_0x802a8214
branch_0x802a8208:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xd0(r30)
branch_0x802a8214:
    lhz     r3, 0xe2(r30)
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x802a828c
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x802a8240
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x802a824c
    rlwinm. r0, r31, 0, 26, 26
    beq-    branch_0x802a824c
branch_0x802a8240:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x20
    stw     r0, 0xd0(r30)
branch_0x802a824c:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x802a826c
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802a8278
    rlwinm. r0, r31, 0, 25, 25
    beq-    branch_0x802a8278
branch_0x802a826c:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x40
    stw     r0, 0xd0(r30)
branch_0x802a8278:
    lfs     f0, 0x48(r30)
    stfs    f0, 0xc8(r30)
    lfs     f0, 0x4c(r30)
    stfs    f0, 0xcc(r30)
    b       branch_0x802a8948

branch_0x802a828c:
    clrlwi. r0, r3, 31
    beq-    branch_0x802a8370
    lis     r3, 0x800
    lwz     r4, 0x30(r30)
    addi    r0, r3, 0x8
    and.    r0, r4, r0
    beq-    branch_0x802a82b4
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x2
    stw     r0, 0xd0(r30)
branch_0x802a82b4:
    lis     r3, 0x400
    lwz     r4, 0x30(r30)
    addi    r0, r3, 0x4
    and.    r0, r4, r0
    beq-    branch_0x802a82d4
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xd0(r30)
branch_0x802a82d4:
    lis     r3, 0x100
    lwz     r4, 0x30(r30)
    addi    r0, r3, 0x1
    and.    r0, r4, r0
    beq-    branch_0x802a82f4
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x8
    stw     r0, 0xd0(r30)
branch_0x802a82f4:
    lis     r3, 0x200
    lwz     r4, 0x30(r30)
    addi    r0, r3, 0x2
    and.    r0, r4, r0
    beq-    branch_0x802a8314
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xd0(r30)
branch_0x802a8314:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x802a8334
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x802a8340
    rlwinm. r0, r31, 0, 26, 26
    beq-    branch_0x802a8340
branch_0x802a8334:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x20
    stw     r0, 0xd0(r30)
branch_0x802a8340:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x802a8360
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802a8948
    rlwinm. r0, r31, 0, 25, 25
    beq-    branch_0x802a8948
branch_0x802a8360:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x40
    stw     r0, 0xd0(r30)
    b       branch_0x802a8948

branch_0x802a8370:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x802a8948
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x802a84d8
    lis     r3, 0x800
    lwz     r4, 0x30(r30)
    addi    r0, r3, 0x8
    and.    r0, r4, r0
    beq-    branch_0x802a83a0
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x8
    stw     r0, 0xd0(r30)
branch_0x802a83a0:
    lis     r3, 0x400
    lwz     r4, 0x30(r30)
    addi    r0, r3, 0x4
    and.    r0, r4, r0
    beq-    branch_0x802a83c0
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x10
    stw     r0, 0xd0(r30)
branch_0x802a83c0:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x802a83e0
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x802a83ec
    rlwinm. r0, r31, 0, 14, 14
    beq-    branch_0x802a83ec
branch_0x802a83e0:
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x2
    stw     r0, 0xd0(r30)
branch_0x802a83ec:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x802a840c
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802a8418
    rlwinm. r0, r31, 0, 13, 13
    beq-    branch_0x802a8418
branch_0x802a840c:
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x4
    stw     r0, 0xd0(r30)
branch_0x802a8418:
    lbz     r0, 0x26(r30)
    lis     r3, 0x4330
    lfd     f1, -0x3b0(rtoc)
    stw     r0, 0x17c(sp)
    stw     r3, 0x178(sp)
    lfd     f0, 0x178(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lbz     r0, 0x27(r30)
    stw     r0, 0x174(sp)
    stw     r3, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb4(r30)
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x802a8470
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x802a847c
    rlwinm. r0, r31, 0, 21, 21
    beq-    branch_0x802a847c
branch_0x802a8470:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x400
    stw     r0, 0xd0(r30)
branch_0x802a847c:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x802a849c
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802a84a8
    rlwinm. r0, r31, 0, 19, 19
    beq-    branch_0x802a84a8
branch_0x802a849c:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x1000
    stw     r0, 0xd0(r30)
branch_0x802a84a8:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x802a84c8
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802a8948
    rlwinm. r0, r31, 0, 18, 18
    beq-    branch_0x802a8948
branch_0x802a84c8:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x2000
    stw     r0, 0xd0(r30)
    b       branch_0x802a8948

branch_0x802a84d8:
    rlwinm. r0, r3, 0, 27, 27
    bne-    branch_0x802a8948
    lwz     r0, 0xe8(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x802a8948
    lwz     r3, -0x7118(r13)
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x802a86ac
    lbz     r0, 0x26(r30)
    lis     r3, 0x4330
    lfd     f1, -0x3b0(rtoc)
    stw     r0, 0x174(sp)
    stw     r3, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lbz     r0, 0x27(r30)
    stw     r0, 0x17c(sp)
    stw     r3, 0x178(sp)
    lfd     f0, 0x178(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb4(r30)
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x802a8558
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x802a8564
    rlwinm. r0, r31, 0, 21, 21
    beq-    branch_0x802a8564
branch_0x802a8558:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x400
    stw     r0, 0xd0(r30)
branch_0x802a8564:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x802a8584
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802a8590
    rlwinm. r0, r31, 0, 19, 19
    beq-    branch_0x802a8590
branch_0x802a8584:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x1000
    stw     r0, 0xd0(r30)
branch_0x802a8590:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x802a85b0
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802a85bc
    rlwinm. r0, r31, 0, 18, 18
    beq-    branch_0x802a85bc
branch_0x802a85b0:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x2000
    stw     r0, 0xd0(r30)
branch_0x802a85bc:
    lfs     f0, 0x48(r30)
    stfs    f0, 0xb8(r30)
    lfs     f0, 0x4c(r30)
    stfs    f0, 0xbc(r30)
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x802a85ec
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x802a85f8
    rlwinm. r0, r31, 0, 15, 15
    beq-    branch_0x802a85f8
branch_0x802a85ec:
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x1
    stw     r0, 0xd0(r30)
branch_0x802a85f8:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x802a8618
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802a8624
    rlwinm. r0, r31, 0, 15, 15
    beq-    branch_0x802a8624
branch_0x802a8618:
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x1
    stw     r0, 0xd0(r30)
branch_0x802a8624:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x802a8644
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x802a8650
    rlwinm. r0, r31, 0, 17, 17
    beq-    branch_0x802a8650
branch_0x802a8644:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x4000
    stw     r0, 0xd0(r30)
branch_0x802a8650:
    lhz     r0, 0xde(r30)
    clrlwi. r0, r0, 31
    bne-    branch_0x802a8670
    lhz     r0, 0xdc(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x802a867c
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x802a867c
branch_0x802a8670:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x200
    stw     r0, 0xd0(r30)
branch_0x802a867c:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x802a869c
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x802a8948
    rlwinm. r0, r31, 0, 10, 10
    beq-    branch_0x802a8948
branch_0x802a869c:
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x20
    stw     r0, 0xd0(r30)
    b       branch_0x802a8948

branch_0x802a86ac:
    lha     r3, 0xe4(r30)
    li      r29, 0x0
    lfs     f1, -0x3c0(rtoc)
    cmpwi   r3, 0x0
    ble-    branch_0x802a86c8
    subi    r0, r3, 0x1
    sth     r0, 0xe4(r30)
branch_0x802a86c8:
    lha     r3, 0xe4(r30)
    extsh.  r0, r3
    ble-    branch_0x802a86fc
    subfic  r0, r3, 0x3d
    extsh   r5, r0
    cmpwi   r5, 0x28
    li      r29, 0x1
    bgt-    branch_0x802a86f0
    lfs     f1, -0x3bc(rtoc)
    b       branch_0x802a86fc

branch_0x802a86f0:
    li      r3, 0x28
    li      r4, 0x3c
    bl      CLBCalcRatio_s___Fsss
branch_0x802a86fc:
    clrlwi. r0, r29, 24
    beq-    branch_0x802a8720
    lfs     f0, 0x48(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f0, 0x4c(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r30)
    b       branch_0x802a8730

branch_0x802a8720:
    lfs     f0, 0x48(r30)
    stfs    f0, 0xa8(r30)
    lfs     f0, 0x4c(r30)
    stfs    f0, 0xac(r30)
branch_0x802a8730:
    lbz     r0, 0x26(r30)
    lis     r3, 0x4330
    lfd     f1, -0x3b0(rtoc)
    stw     r0, 0x174(sp)
    stw     r3, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lbz     r0, 0x27(r30)
    stw     r0, 0x17c(sp)
    stw     r3, 0x178(sp)
    lfd     f0, 0x178(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xb4(r30)
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x802a8788
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x802a8794
    rlwinm. r0, r31, 0, 24, 24
    beq-    branch_0x802a8794
branch_0x802a8788:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xd0(r30)
branch_0x802a8794:
    lhz     r3, 0xe2(r30)
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x802a87d0
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x802a87c0
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802a8804
    rlwinm. r0, r31, 0, 20, 20
    beq-    branch_0x802a8804
branch_0x802a87c0:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x800
    stw     r0, 0xd0(r30)
    b       branch_0x802a8804

branch_0x802a87d0:
    rlwinm. r0, r3, 0, 26, 26
    bne-    branch_0x802a8804
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x802a87f8
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802a8804
    rlwinm. r0, r31, 0, 23, 23
    beq-    branch_0x802a8804
branch_0x802a87f8:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x100
    stw     r0, 0xd0(r30)
branch_0x802a8804:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x802a8824
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x802a8830
    rlwinm. r0, r31, 0, 21, 21
    beq-    branch_0x802a8830
branch_0x802a8824:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x400
    stw     r0, 0xd0(r30)
branch_0x802a8830:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x802a8850
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802a885c
    rlwinm. r0, r31, 0, 19, 19
    beq-    branch_0x802a885c
branch_0x802a8850:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x1000
    stw     r0, 0xd0(r30)
branch_0x802a885c:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x802a887c
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802a8888
    rlwinm. r0, r31, 0, 18, 18
    beq-    branch_0x802a8888
branch_0x802a887c:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x2000
    stw     r0, 0xd0(r30)
branch_0x802a8888:
    lfs     f0, 0x58(r30)
    stfs    f0, 0xc0(r30)
    lfs     f0, 0x5c(r30)
    stfs    f0, 0xc4(r30)
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x802a88b8
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x802a88c4
    rlwinm. r0, r31, 0, 17, 17
    beq-    branch_0x802a88c4
branch_0x802a88b8:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x4000
    stw     r0, 0xd0(r30)
branch_0x802a88c4:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x802a88e4
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802a88f0
    rlwinm. r0, r31, 0, 16, 16
    beq-    branch_0x802a88f0
branch_0x802a88e4:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x8000
    stw     r0, 0xd0(r30)
branch_0x802a88f0:
    lhz     r0, 0xde(r30)
    clrlwi. r0, r0, 31
    bne-    branch_0x802a8910
    lhz     r0, 0xdc(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x802a891c
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x802a891c
branch_0x802a8910:
    lwz     r0, 0xd0(r30)
    ori     r0, r0, 0x200
    stw     r0, 0xd0(r30)
branch_0x802a891c:
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x802a893c
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x802a8948
    rlwinm. r0, r31, 0, 10, 10
    beq-    branch_0x802a8948
branch_0x802a893c:
    lwz     r0, 0xd0(r30)
    oris    r0, r0, 0x20
    stw     r0, 0xd0(r30)
branch_0x802a8948:
    lwz     r0, 0xd0(r30)
    andc    r0, r0, r31
    stw     r0, 0xd4(r30)
    lwz     r0, 0xd0(r30)
    andc    r0, r31, r0
    stw     r0, 0xd8(r30)
    lwz     r0, 0x194(sp)
    lwz     r31, 0x18c(sp)
    lwz     r30, 0x188(sp)
    lwz     r29, 0x184(sp)
    addi    sp, sp, 0x190
    mtlr    r0
    blr


.globl reset__13TMarioGamePadFv
reset__13TMarioGamePadFv: # 0x802a897c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x3a4(rtoc)
    fdivs   f1, f0, f1
    bl      __cvt_fp2unsigned
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x3a8(rtoc)
    fdivs   f1, f0, f1
    bl      __cvt_fp2unsigned
    lis     r4, 0xf00
    addi    r5, r3, 0x0
    addi    r3, r30, 0x0
    addi    r6, r31, 0x0
    addi    r4, r4, 0xf
    bl      setButtonRepeat__10JUTGamePadFUlUlUl
    li      r0, 0x0
    sth     r0, 0xe4(r30)
    stw     r0, 0xe8(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MarioGamePad_cpp
__sinit_MarioGamePad_cpp: # 0x802a89f4
    li      r0, 0x0
    sth     r0, -0x6008(r13)
    blr
