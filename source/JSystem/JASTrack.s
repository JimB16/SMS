
.globl __ct__Q28JASystem6TTrackFv
__ct__Q28JASystem6TTrackFv: # 0x8031a2ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    addi    r3, r31, 0x160
    bl      __ct__Q38JASystem6TTrack12AInnerParam_Fv
    lis     r3, 0x8032
    subi    r4, r3, 0x5af4
    addi    r3, r31, 0x160
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x12
    bl      __construct_array
    addi    r3, r31, 0x280
    bl      __ct__Q28JASystem14TRegisterParamFv
    li      r30, 0x0
    stw     r30, 0x2c0(r31)
    lis     r4, 0x8031
    lis     r3, 0x8031
    stw     r30, 0x304(r31)
    addi    r5, r3, 0x3d9c
    addi    r4, r4, 0x3ddc
    stw     r30, 0x308(r31)
    addi    r3, r31, 0x33c
    li      r6, 0x20
    li      r7, 0x2
    bl      __construct_array
    stw     r30, 0x3a8(r31)
    li      r6, 0x8
    lis     r3, 0x803e
    lfs     f0, 0x778(rtoc)
    subfic  r0, r6, 0xc
    li      r4, 0x78
    mtctr   r0
    stfs    f0, 0x3ac(r31)
    addi    r5, r3, 0x35e8
    stfs    f0, 0x3b0(r31)
    cmpwi   r6, 0xc
    slwi    r3, r6, 1
    stw     r30, 0x3b4(r31)
    sth     r4, 0x3b8(r31)
    sth     r4, 0x3ba(r31)
    stb     r30, 0x3bc(r31)
    stb     r30, 0x3bd(r31)
    stb     r30, 0x3be(r31)
    stb     r30, 0x3bf(r31)
    stb     r30, 0x3c0(r31)
    stb     r30, 0x3c1(r31)
    stb     r30, 0x3c2(r31)
    stb     r30, 0x3c3(r31)
    stb     r30, 0x3c4(r31)
    stb     r30, 0x3cb(r31)
    stb     r30, 0x3cc(r31)
    stb     r30, 0x3cd(r31)
    stw     r30, 0x2c4(r31)
    stw     r30, 0x2c8(r31)
    stw     r30, 0x2cc(r31)
    stw     r30, 0x2d0(r31)
    stw     r30, 0x2d4(r31)
    stw     r30, 0x2d8(r31)
    stw     r30, 0x2dc(r31)
    stw     r30, 0x2e0(r31)
    stw     r30, 0x2e4(r31)
    stw     r30, 0x2e8(r31)
    stw     r30, 0x2ec(r31)
    stw     r30, 0x2f0(r31)
    stw     r30, 0x2f4(r31)
    stw     r30, 0x2f8(r31)
    stw     r30, 0x2fc(r31)
    stw     r30, 0x300(r31)
    stb     r30, 0x3c5(r31)
    stb     r30, 0x3c8(r31)
    stb     r30, 0x3c6(r31)
    stb     r30, 0x3c9(r31)
    stb     r30, 0x3c7(r31)
    stb     r30, 0x3ca(r31)
    lha     r0, 0x0(r5)
    sth     r0, 0x37c(r31)
    lha     r0, 0x2(r5)
    sth     r0, 0x37e(r31)
    lha     r0, 0x4(r5)
    sth     r0, 0x380(r31)
    lha     r0, 0x6(r5)
    sth     r0, 0x382(r31)
    lha     r0, 0x8(r5)
    sth     r0, 0x384(r31)
    lha     r0, 0xa(r5)
    sth     r0, 0x386(r31)
    lha     r0, 0xc(r5)
    sth     r0, 0x388(r31)
    lha     r0, 0xe(r5)
    sth     r0, 0x38a(r31)
    bge-    branch_0x8031a484
branch_0x8031a46c:
    add     r4, r5, r3
    lha     r4, 0x0(r4)
    addi    r0, r3, 0x37c
    addi    r3, r3, 0x2
    sthx    r4, r31, r0
    bdnz+      branch_0x8031a46c
branch_0x8031a484:
    lis     r3, 0x803e
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x3600
    lha     r4, 0x0(r5)
    li      r0, 0xf
    addi    r3, r31, 0xec
    sth     r4, 0x394(r31)
    lha     r4, 0x2(r5)
    sth     r4, 0x396(r31)
    lha     r4, 0x4(r5)
    sth     r4, 0x398(r31)
    lha     r4, 0x6(r5)
    sth     r4, 0x39a(r31)
    lha     r4, 0x8(r5)
    sth     r4, 0x39c(r31)
    lha     r4, 0xa(r5)
    sth     r4, 0x39e(r31)
    stw     r0, 0x3a0(r31)
    stw     r0, 0x3a4(r31)
    bl      init__Q28JASystem11TChannelMgrFv
    addi    r3, r31, 0x160
    li      r4, 0x120
    bl      bzero__Q28JASystem4CalcFPvUl
    addi    r0, r31, 0x30c
    stw     r0, 0x33c(r31)
    addi    r0, r31, 0x324
    addi    r3, r31, 0x0
    stw     r0, 0x35c(r31)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__Q38JASystem6TTrack10MoveParam_Fv
__ct__Q38JASystem6TTrack10MoveParam_Fv: # 0x8031a50c
    lfs     f0, 0x778(rtoc)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    blr


.globl __ct__Q38JASystem6TTrack12AInnerParam_Fv
__ct__Q38JASystem6TTrack12AInnerParam_Fv: # 0x8031a524
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r6, 0x10
    li      r7, 0x4
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x8032
    lfs     f0, 0x778(rtoc)
    subi    r4, r3, 0x5af4
    addi    r3, r31, 0xc0
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x8(r31)
    stfs    f0, 0xc(r31)
    stfs    f0, 0x10(r31)
    stfs    f0, 0x14(r31)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x1c(r31)
    stfs    f0, 0x20(r31)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stfs    f0, 0x3c(r31)
    stfs    f0, 0x40(r31)
    stfs    f0, 0x44(r31)
    stfs    f0, 0x48(r31)
    stfs    f0, 0x4c(r31)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x54(r31)
    stfs    f0, 0x58(r31)
    stfs    f0, 0x5c(r31)
    stfs    f0, 0x60(r31)
    stfs    f0, 0x64(r31)
    stfs    f0, 0x68(r31)
    stfs    f0, 0x6c(r31)
    stfs    f0, 0x70(r31)
    stfs    f0, 0x74(r31)
    stfs    f0, 0x78(r31)
    stfs    f0, 0x7c(r31)
    stfs    f0, 0x80(r31)
    stfs    f0, 0x84(r31)
    stfs    f0, 0x88(r31)
    stfs    f0, 0x8c(r31)
    stfs    f0, 0x90(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x9c(r31)
    stfs    f0, 0xa0(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xbc(r31)
    bl      __construct_array
    lfs     f0, 0x778(rtoc)
    mr      r3, r31
    stfs    f0, 0x100(r31)
    stfs    f0, 0x104(r31)
    stfs    f0, 0x108(r31)
    stfs    f0, 0x10c(r31)
    stfs    f0, 0x110(r31)
    stfs    f0, 0x114(r31)
    stfs    f0, 0x118(r31)
    stfs    f0, 0x11c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setInterrupt__Q28JASystem6TTrackFUs
setInterrupt__Q28JASystem6TTrackFUs: # 0x8031a654
    mflr    r0
    addi    r3, r3, 0x88
    stw     r0, 0x4(sp)
    clrlwi  r4, r4, 16
    stwu    sp, -0x8(sp)
    bl      request__Q28JASystem8TIntrMgrFUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl assignExtBuffer__Q28JASystem6TTrackFPQ38JASystem6TTrack11TOuterParam
assignExtBuffer__Q28JASystem6TTrackFPQ38JASystem6TTrack11TOuterParam: # 0x8031a67c
    cmplwi  r4, 0x0
    bne-    branch_0x8031a68c
    li      r3, 0x0
    blr

branch_0x8031a68c:
    stw     r4, 0x304(r3)
    li      r3, 0x1
    blr


.globl setInnerMemory__Q28JASystem6TTrackFUc
setInnerMemory__Q28JASystem6TTrackFUc: # 0x8031a698
    stb     r4, 0x3be(r3)
    blr


.globl setPanSwitchExt__Q28JASystem6TTrackFUcUc
setPanSwitchExt__Q28JASystem6TTrackFUcUc: # 0x8031a6a0
    clrlwi  r0, r5, 24
    add     r3, r3, r0
    stb     r4, 0x3c5(r3)
    blr


.globl setPanSwitchParent__Q28JASystem6TTrackFUcUc
setPanSwitchParent__Q28JASystem6TTrackFUcUc: # 0x8031a6b0
    clrlwi  r0, r5, 24
    add     r3, r3, r0
    stb     r4, 0x3c8(r3)
    blr


.globl flushAll__Q28JASystem6TTrackFv
flushAll__Q28JASystem6TTrackFv: # 0x8031a6c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0xec
    bl      stopAll__Q28JASystem11TChannelMgrFv
    addi    r3, r31, 0xec
    bl      stopAllRelease__Q28JASystem11TChannelMgrFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initTimed__Q28JASystem6TTrackFv
initTimed__Q28JASystem6TTrackFv: # 0x8031a6f8
    lfs     f1, 0x778(rtoc)
    li      r7, 0x0
    lfs     f0, 0x77c(rtoc)
    li      r0, 0xa
    b       branch_0x8031a780

branch_0x8031a70c:
    clrlslwi  r4, r7, 24, 4
    add     r4, r3, r4
    stfs    f1, 0x168(r4)
    addi    r5, r4, 0x168
    addi    r6, r4, 0x160
    stfs    f0, 0x160(r4)
    addi    r7, r7, 0x8
    stfsu   f0, 0x164(r4)
    stfs    f1, 0x10(r5)
    stfs    f0, 0x10(r6)
    stfs    f0, 0x10(r4)
    stfs    f1, 0x20(r5)
    stfs    f0, 0x20(r6)
    stfs    f0, 0x20(r4)
    stfs    f1, 0x30(r5)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x30(r4)
    stfs    f1, 0x40(r5)
    stfs    f0, 0x40(r6)
    stfs    f0, 0x40(r4)
    stfs    f1, 0x50(r5)
    stfs    f0, 0x50(r6)
    stfs    f0, 0x50(r4)
    stfs    f1, 0x60(r5)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x60(r4)
    stfs    f1, 0x70(r5)
    stfs    f0, 0x70(r6)
    stfs    f0, 0x70(r4)
branch_0x8031a780:
    clrlwi  r4, r7, 24
    cmplw   r4, r0
    blt+    branch_0x8031a70c
    lfs     f1, 0x778(rtoc)
    lfs     f0, 0x77c(rtoc)
    b       branch_0x8031a7b0

branch_0x8031a798:
    clrlslwi  r0, r7, 24, 4
    add     r4, r3, r0
    stfs    f1, 0x168(r4)
    addi    r7, r7, 0x1
    stfs    f0, 0x160(r4)
    stfs    f0, 0x164(r4)
branch_0x8031a7b0:
    clrlwi  r0, r7, 24
    cmplwi  r0, 0x12
    blt+    branch_0x8031a798
    lfs     f1, 0x778(rtoc)
    stfs    f1, 0x170(r3)
    stfs    f1, 0x174(r3)
    lfs     f0, 0x780(rtoc)
    stfs    f0, 0x190(r3)
    stfs    f0, 0x194(r3)
    stfs    f0, 0x260(r3)
    stfs    f0, 0x264(r3)
    stfs    f1, 0x270(r3)
    stfs    f1, 0x274(r3)
    stfs    f1, 0x180(r3)
    stfs    f1, 0x184(r3)
    stfs    f1, 0x1a0(r3)
    stfs    f1, 0x1a4(r3)
    stfs    f1, 0x230(r3)
    stfs    f1, 0x234(r3)
    stfs    f1, 0x240(r3)
    stfs    f1, 0x244(r3)
    stfs    f1, 0x250(r3)
    stfs    f1, 0x254(r3)
    stfs    f1, 0x1b0(r3)
    stfs    f1, 0x1b4(r3)
    blr


.globl noteOn__Q28JASystem6TTrackFUclll
noteOn__Q28JASystem6TTrackFUclll: # 0x8031a818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r23, 0x4c(sp)
    mr      r26, r3
    addi    r23, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    lbz     r0, 0x3c2(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031a85c
    lbz     r0, 0x3c1(r26)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8031a85c
    li      r3, -0x1
    b       branch_0x8031ab3c

branch_0x8031a85c:
    clrlwi  r31, r23, 24
    addi    r4, r31, 0x0
    addi    r3, r26, 0xb4
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    beq-    branch_0x8031a884
    addi    r3, r26, 0x0
    addi    r4, r23, 0x0
    li      r5, 0x0
    bl      noteOff__Q28JASystem6TTrackFUcUs
branch_0x8031a884:
    lwz     r24, 0x2c0(r26)
    addi    r30, r26, 0xec
    addi    r3, r24, 0x0
    b       branch_0x8031a8ac

branch_0x8031a894:
    cmplwi  r3, 0x0
    bne-    branch_0x8031a8a4
    addi    r30, r26, 0xec
    b       branch_0x8031a8c4

branch_0x8031a8a4:
    addi    r30, r24, 0xec
    lwz     r3, 0x2c0(r3)
branch_0x8031a8ac:
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    beq+    branch_0x8031a894
    lwz     r0, 0x8(r30)
    cmplwi  r0, 0x0
    beq+    branch_0x8031a894
branch_0x8031a8c4:
    lbz     r0, 0x3bc(r26)
    cmplwi  r0, 0x4
    bne-    branch_0x8031a934
    cmplwi  r24, 0x0
    bne-    branch_0x8031a8e0
    li      r3, -0x1
    b       branch_0x8031ab3c

branch_0x8031a8e0:
    addi    r25, r24, 0xec
    cmplw   r30, r25
    beq-    branch_0x8031a984
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r23, r3
    beq-    branch_0x8031a92c
    lwz     r5, 0x0(r30)
    addi    r4, r23, 0x0
    addi    r3, r26, 0xec
    subi    r0, r5, 0x1
    stw     r0, 0x0(r30)
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r3, 0xec(r24)
    addi    r0, r3, 0x1
    stw     r0, 0xec(r24)
    stw     r25, 0x4(r23)
branch_0x8031a92c:
    addi    r30, r24, 0xec
    b       branch_0x8031a984

branch_0x8031a934:
    addi    r25, r26, 0xec
    cmplw   r30, r25
    beq-    branch_0x8031a984
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r24, r3
    beq-    branch_0x8031a980
    lwz     r5, 0x0(r30)
    addi    r3, r25, 0x0
    addi    r4, r24, 0x0
    subi    r0, r5, 0x1
    stw     r0, 0x0(r30)
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r3, 0xec(r26)
    addi    r0, r3, 0x1
    stw     r0, 0xec(r26)
    stw     r25, 0x4(r24)
branch_0x8031a980:
    addi    r30, r26, 0xec
branch_0x8031a984:
    addi    r3, r26, 0x0
    li      r4, 0x6
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r24, r3, 16
    extrwi  r3, r3, 8, 16
    bl      getPhysicalNumber__Q28JASystem7BankMgrFUs
    clrlwi  r4, r3, 24
    clrlwi  r5, r24, 24
    addi    r3, r30, 0x0
    addi    r8, r29, 0x0
    clrlwi  r6, r27, 24
    clrlwi  r7, r28, 24
    bl      noteOn__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriiUcUcUl
    mr.     r30, r3
    bne-    branch_0x8031a9c8
    li      r3, -0x1
    b       branch_0x8031ab3c

branch_0x8031a9c8:
    slwi    r0, r31, 2
    add     r3, r26, r0
    stw     r30, 0xb4(r3)
    slwi    r0, r31, 1
    add     r4, r26, r0
    lhz     r5, 0xc6(r30)
    lis     r0, 0x4330
    addi    r3, r30, 0x0
    sth     r5, 0xd4(r4)
    lhz     r4, 0x296(r26)
    lhz     r5, 0x294(r26)
    lhz     r6, 0x292(r26)
    lhz     r7, 0x290(r26)
    stw     r6, 0x3c(sp)
    lfd     f4, 0x788(rtoc)
    stw     r7, 0x44(sp)
    stw     r5, 0x34(sp)
    stw     r4, 0x2c(sp)
    stw     r0, 0x40(sp)
    stw     r0, 0x38(sp)
    lfd     f1, 0x40(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x38(sp)
    fsubs   f1, f1, f4
    stw     r0, 0x28(sp)
    lfd     f3, 0x30(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x28(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setPanPower__Q28JASystem8TChannelFffff
    li      r23, 0x0
    b       branch_0x8031ab0c

branch_0x8031aa4c:
    clrlwi  r24, r23, 24
    clrlslwi  r3, r23, 24, 2
    addi    r0, r3, 0x3a0
    lwzx    r0, r26, r0
    cmplwi  r0, 0xf
    mr      r28, r0
    beq-    branch_0x8031ab08
    cmplwi  r28, 0xe
    beq-    branch_0x8031ab08
    cmplwi  r28, 0x8
    blt-    branch_0x8031aaac
    subi    r28, r28, 0x8
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    bl      isOsc__Q28JASystem8TChannelFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8031aaf0
    mulli   r3, r24, 0x18
    addi    r5, r3, 0x30c
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    add     r5, r26, r5
    bl      copyOsc__Q28JASystem8TChannelFUlPQ38JASystem11TOscillator4Osc_
    b       branch_0x8031aaf0

branch_0x8031aaac:
    cmplwi  r28, 0x4
    blt-    branch_0x8031aaf0
    mulli   r0, r24, 0x18
    add     r25, r26, r0
    subi    r28, r28, 0x4
    lwz     r29, 0x318(r25)
    addi    r27, r25, 0x318
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    bl      isOsc__Q28JASystem8TChannelFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8031aaf0
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    addi    r5, r25, 0x30c
    bl      copyOsc__Q28JASystem8TChannelFUlPQ38JASystem11TOscillator4Osc_
    stw     r29, 0x0(r27)
branch_0x8031aaf0:
    mulli   r3, r24, 0x18
    addi    r5, r3, 0x30c
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    add     r5, r26, r5
    bl      overwriteOsc__Q28JASystem8TChannelFUlPQ38JASystem11TOscillator4Osc_
branch_0x8031ab08:
    addi    r23, r23, 0x1
branch_0x8031ab0c:
    clrlwi  r0, r23, 24
    cmplwi  r0, 0x2
    blt+    branch_0x8031aa4c
    lbz     r0, -0x5b10(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8031ab30
    addi    r3, r26, 0x0
    li      r4, 0xb
    bl      updateTrack__Q28JASystem6TTrackFUl
branch_0x8031ab30:
    mr      r3, r30
    bl      resetInitialVolume__Q28JASystem8TChannelFv
    li      r3, 0x0
branch_0x8031ab3c:
    lmw     r23, 0x4c(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl noteOff__Q28JASystem6TTrackFUcUs
noteOff__Q28JASystem6TTrackFUcUs: # 0x8031ab50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    clrlwi  r31, r4, 24
    addi    r4, r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r3, r29, 0xb4
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    bne-    branch_0x8031ab90
    li      r3, 0x0
    b       branch_0x8031abc0

branch_0x8031ab90:
    clrlwi. r0, r30, 16
    bne-    branch_0x8031aba4
    li      r4, 0x0
    bl      stop__Q28JASystem8TChannelFUs
    b       branch_0x8031abac

branch_0x8031aba4:
    mr      r4, r30
    bl      stop__Q28JASystem8TChannelFUs
branch_0x8031abac:
    slwi    r0, r31, 2
    add     r3, r29, r0
    li      r0, 0x0
    stw     r0, 0xb4(r3)
    li      r3, 0x1
branch_0x8031abc0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl gateOn__Q28JASystem6TTrackFUclll
gateOn__Q28JASystem6TTrackFUclll: # 0x8031abdc
    mflr    r0
    addi    r3, r3, 0xb4
    stw     r0, 0x4(sp)
    clrlwi  r4, r4, 24
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r7, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    bne-    branch_0x8031ac1c
    li      r3, -0x1
    b       branch_0x8031ac30

branch_0x8031ac1c:
    addi    r6, r31, 0x0
    clrlwi  r4, r29, 24
    clrlwi  r5, r30, 24
    bl      gateOn__Q28JASystem7BankMgrFPQ28JASystem8TChannelUcUcUl
    li      r3, 0x0
branch_0x8031ac30:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl oscSetupFull__Q28JASystem6TTrackFUcUlUl
oscSetupFull__Q28JASystem6TTrackFUcUlUl: # 0x8031ac4c
    stwu    sp, -0x30(sp)
    rlwinm. r0, r4, 0, 24, 24
    clrlwi  r8, r4, 24
    stw     r31, 0x2c(sp)
    extrwi  r0, r4, 1, 27
    clrlwi  r31, r4, 28
    beq-    branch_0x8031ac70
    li      r7, 0x1
    b       branch_0x8031ac74

branch_0x8031ac70:
    li      r7, 0x0
branch_0x8031ac74:
    rlwinm. r4, r8, 0, 25, 25
    beq-    branch_0x8031ac84
    li      r9, 0x1
    b       branch_0x8031ac88

branch_0x8031ac84:
    li      r9, 0x0
branch_0x8031ac88:
    rlwinm. r4, r8, 0, 26, 26
    beq-    branch_0x8031ac98
    li      r10, 0x1
    b       branch_0x8031ac9c

branch_0x8031ac98:
    li      r10, 0x0
branch_0x8031ac9c:
    clrlwi. r4, r7, 24
    beq-    branch_0x8031ad00
    mulli   r12, r0, 0x18
    lis     r4, 0x803e
    addi    r8, r4, 0x35a0
    lwz     r7, 0x0(r8)
    add     r11, r3, r12
    lwz     r4, 0x4(r8)
    cmpwi   r31, 0x1
    stw     r7, 0x30c(r11)
    stw     r4, 0x310(r11)
    lwz     r7, 0x8(r8)
    lwz     r4, 0xc(r8)
    stw     r7, 0x314(r11)
    stw     r4, 0x318(r11)
    lwz     r7, 0x10(r8)
    lwz     r4, 0x14(r8)
    stw     r7, 0x31c(r11)
    stw     r4, 0x320(r11)
    stb     r31, 0x30c(r11)
    beq-    branch_0x8031acf4
    b       branch_0x8031ad00

branch_0x8031acf4:
    lfs     f0, 0x77c(rtoc)
    add     r4, r3, r12
    stfs    f0, 0x320(r4)
branch_0x8031ad00:
    clrlwi. r4, r9, 24
    beq-    branch_0x8031ad34
    cmplwi  r5, 0x0
    bne-    branch_0x8031ad20
    mulli   r4, r0, 0x18
    add     r4, r3, r4
    li      r7, 0x0
    stw     r7, 0x314(r4)
branch_0x8031ad20:
    mulli   r4, r0, 0x18
    lwz     r7, 0x0(r3)
    add     r5, r7, r5
    add     r4, r3, r4
    stw     r5, 0x314(r4)
branch_0x8031ad34:
    clrlwi. r4, r10, 24
    beq-    branch_0x8031ad6c
    cmplwi  r6, 0x0
    bne-    branch_0x8031ad58
    mulli   r4, r0, 0x18
    lis     r5, 0x803e
    addi    r5, r5, 0x3600
    add     r4, r3, r4
    stw     r5, 0x318(r4)
branch_0x8031ad58:
    mulli   r0, r0, 0x18
    lwz     r4, 0x0(r3)
    add     r4, r4, r6
    add     r3, r3, r0
    stw     r4, 0x318(r3)
branch_0x8031ad6c:
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    blr


.globl oscSetupSimpleEnv__Q28JASystem6TTrackFUcUl
oscSetupSimpleEnv__Q28JASystem6TTrackFUcUl: # 0x8031ad78
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x1
    beq-    branch_0x8031add8
    bgelr-    

    cmpwi   r0, 0x0
    bltlr-    

    lis     r4, 0x803e
    addi    r6, r4, 0x35a0
    lwz     r4, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r4, 0x30c(r3)
    stw     r0, 0x310(r3)
    lwz     r4, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r4, 0x314(r3)
    stw     r0, 0x318(r3)
    lwz     r4, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r4, 0x31c(r3)
    stw     r0, 0x320(r3)
    lwz     r0, 0x0(r3)
    add     r0, r0, r5
    stw     r0, 0x314(r3)
    blr

branch_0x8031add8:
    lwz     r0, 0x0(r3)
    add     r0, r0, r5
    stw     r0, 0x318(r3)
    blr


.globl oscUpdateParam__Q28JASystem6TTrackFUcf
oscUpdateParam__Q28JASystem6TTrackFUcf: # 0x8031ade8
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x9
    beq-    branch_0x8031ae38
    bge-    branch_0x8031ae10
    cmpwi   r0, 0x7
    beq-    branch_0x8031ae28
    bge-    branch_0x8031ae30
    cmpwi   r0, 0x6
    bge-    branch_0x8031ae20
    blr

branch_0x8031ae10:
    cmpwi   r0, 0xb
    beq-    branch_0x8031ae48
    bgelr-    

    b       branch_0x8031ae40

branch_0x8031ae20:
    stfs    f1, 0x31c(r3)
    blr

branch_0x8031ae28:
    stfs    f1, 0x310(r3)
    blr

branch_0x8031ae30:
    stfs    f1, 0x320(r3)
    blr

branch_0x8031ae38:
    stfs    f1, 0x334(r3)
    blr

branch_0x8031ae40:
    stfs    f1, 0x328(r3)
    blr

branch_0x8031ae48:
    stfs    f1, 0x338(r3)
    blr


.globl oscSetupSimple__Q28JASystem6TTrackFUc
oscSetupSimple__Q28JASystem6TTrackFUc: # 0x8031ae50
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x1
    beq-    branch_0x8031aeb4
    bge-    branch_0x8031ae6c
    cmpwi   r0, 0x0
    bge-    branch_0x8031ae78
    blr

branch_0x8031ae6c:
    cmpwi   r0, 0x3
    bgelr-    

    b       branch_0x8031aef0

branch_0x8031ae78:
    lis     r4, 0x803e
    addi    r5, r4, 0x35b8
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x324(r3)
    stw     r0, 0x328(r3)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x32c(r3)
    stw     r0, 0x330(r3)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x334(r3)
    stw     r0, 0x338(r3)
    blr

branch_0x8031aeb4:
    lis     r4, 0x803e
    addi    r5, r4, 0x35d0
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x30c(r3)
    stw     r0, 0x310(r3)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x314(r3)
    stw     r0, 0x318(r3)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x31c(r3)
    stw     r0, 0x320(r3)
    blr

branch_0x8031aef0:
    lis     r4, 0x803e
    addi    r5, r4, 0x35d0
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x324(r3)
    stw     r0, 0x328(r3)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x32c(r3)
    stw     r0, 0x330(r3)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x334(r3)
    stw     r0, 0x338(r3)
    blr


.globl updateTrackAll__Q28JASystem6TTrackFv
updateTrackAll__Q28JASystem6TTrackFv: # 0x8031af2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stfd    f29, 0x40(sp)
    stfd    f28, 0x38(sp)
    stfd    f27, 0x30(sp)
    stfd    f26, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lhz     r4, 0x296(r3)
    lis     r3, 0x4330
    lbz     r0, 0x3bc(r31)
    stw     r4, 0x1c(sp)
    lfd     f3, 0x788(rtoc)
    cmplwi  r0, 0x4
    stw     r3, 0x18(sp)
    lfs     f0, 0x790(rtoc)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fdivs   f31, f2, f0
    beq-    branch_0x8031b2b4
    lhz     r0, 0x29a(r31)
    li      r4, 0x0
    addi    r3, sp, 0xc
    oris    r0, r0, 0x1
    stw     r0, 0x154(r31)
    li      r5, 0x0
    sth     r4, 0x158(r31)
    lfs     f2, 0x794(rtoc)
    lfs     f0, 0x270(r31)
    fmuls   f0, f2, f0
    stfs    f0, 0x10(sp)
    lfs     f1, 0x10(sp)
    psq_st  f1, 0x0(3), 1, 4
    lbz     r3, 0xc(sp)
    extsb.  r0, r3
    bge-    branch_0x8031afd4
    neg     r5, r3
    stb     r4, 0xc(sp)
branch_0x8031afd4:
    li      r0, 0x10
    stb     r0, 0x14c(r31)
    stb     r5, 0x146(r31)
    lbz     r0, 0xc(sp)
    stb     r0, 0x147(r31)
    lbz     r0, 0x3c3(r31)
    lfs     f30, 0x160(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8031affc
    fmuls   f30, f30, f30
branch_0x8031affc:
    lbz     r0, 0x3c2(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8031b00c
    lfs     f30, 0x778(rtoc)
branch_0x8031b00c:
    lhz     r3, 0x28e(r31)
    lis     r0, 0x4330
    lfd     f2, 0x788(rtoc)
    stw     r3, 0x1c(sp)
    lfs     f1, 0x170(r31)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f0, f2
    bl      pitchToCent__Q28JASystem6PlayerFff
    lwz     r3, 0x304(r31)
    fmr     f29, f1
    lfs     f26, 0x190(r31)
    cmplwi  r3, 0x0
    lfs     f28, 0x180(r31)
    lfs     f27, 0x1a0(r31)
    beq-    branch_0x8031b124
    li      r4, 0x1
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b068
    lwz     r3, 0x304(r31)
    lfs     f0, 0x4(r3)
    fmuls   f30, f30, f0
branch_0x8031b068:
    lwz     r3, 0x304(r31)
    li      r4, 0x2
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b088
    lwz     r3, 0x304(r31)
    lfs     f0, 0x8(r3)
    fmuls   f29, f29, f0
branch_0x8031b088:
    lwz     r3, 0x304(r31)
    li      r4, 0x4
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b0bc
    lwz     r3, 0x304(r31)
    fmr     f1, f28
    fmr     f3, f31
    lbz     r4, 0x3c6(r31)
    lfs     f2, 0xc(r3)
    mr      r3, r31
    bl      panCalc__Q28JASystem6TTrackFfffUc
    fmr     f28, f1
branch_0x8031b0bc:
    lwz     r3, 0x304(r31)
    li      r4, 0x10
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b0f0
    lwz     r3, 0x304(r31)
    fmr     f1, f27
    fmr     f3, f31
    lbz     r4, 0x3c7(r31)
    lfs     f2, 0x10(r3)
    mr      r3, r31
    bl      panCalc__Q28JASystem6TTrackFfffUc
    fmr     f27, f1
branch_0x8031b0f0:
    lwz     r3, 0x304(r31)
    li      r4, 0x8
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b124
    lwz     r3, 0x304(r31)
    fmr     f1, f26
    fmr     f3, f31
    lbz     r4, 0x3c8(r31)
    lfs     f2, 0x14(r3)
    mr      r3, r31
    bl      panCalc__Q28JASystem6TTrackFfffUc
    fmr     f26, f1
branch_0x8031b124:
    lwz     r3, 0x2c0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8031b13c
    lbz     r0, 0x3bc(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8031b154
branch_0x8031b13c:
    stfs    f30, 0x104(r31)
    stfs    f29, 0x108(r31)
    stfs    f26, 0x10c(r31)
    stfs    f28, 0x110(r31)
    stfs    f27, 0x114(r31)
    b       branch_0x8031b2b4

branch_0x8031b154:
    lhz     r4, 0x298(r31)
    lis     r0, 0x4330
    lfs     f0, 0x104(r3)
    fmr     f1, f26
    stw     r4, 0x1c(sp)
    lfd     f4, 0x788(rtoc)
    fmuls   f0, f0, f30
    stw     r0, 0x18(sp)
    lfs     f2, 0x790(rtoc)
    mr      r3, r31
    lfd     f3, 0x18(sp)
    stfs    f0, 0x104(r31)
    fsubs   f0, f3, f4
    lwz     r4, 0x2c0(r31)
    fdivs   f26, f0, f2
    lfs     f0, 0x108(r4)
    fmuls   f0, f0, f29
    fmr     f3, f26
    stfs    f0, 0x108(r31)
    lwz     r5, 0x2c0(r31)
    lbz     r4, 0x3c8(r31)
    lfs     f2, 0x10c(r5)
    bl      panCalc__Q28JASystem6TTrackFfffUc
    stfs    f1, 0x10c(r31)
    fmr     f1, f28
    fmr     f3, f26
    mr      r3, r31
    lwz     r5, 0x2c0(r31)
    lbz     r4, 0x3c9(r31)
    lfs     f2, 0x110(r5)
    bl      panCalc__Q28JASystem6TTrackFfffUc
    stfs    f1, 0x110(r31)
    fmr     f1, f27
    fmr     f3, f26
    mr      r3, r31
    lwz     r5, 0x2c0(r31)
    lbz     r4, 0x3ca(r31)
    lfs     f2, 0x114(r5)
    bl      panCalc__Q28JASystem6TTrackFfffUc
    stfs    f1, 0x114(r31)
    lwz     r3, 0x304(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8031b248
    li      r4, 0x80
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b248
    li      r30, 0x0
    b       branch_0x8031b234

branch_0x8031b218:
    lwz     r3, 0x304(r31)
    mr      r4, r30
    bl      getIntFirFilter__Q38JASystem6TTrack11TOuterParamFUc
    clrlslwi  r0, r30, 24, 1
    add     r4, r31, r0
    sth     r3, 0x118(r4)
    addi    r30, r30, 0x1
branch_0x8031b234:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031b218
    li      r0, 0x8
    stb     r0, 0x14d(r31)
branch_0x8031b248:
    lfs     f2, 0x790(rtoc)
    li      r4, 0x0
    b       branch_0x8031b280

branch_0x8031b254:
    clrlslwi  r0, r4, 24, 4
    add     r3, r31, r0
    lfs     f0, 0x220(r3)
    clrlslwi  r0, r4, 24, 1
    add     r3, r31, r0
    fmuls   f0, f2, f0
    addi    r4, r4, 0x1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x128(r3)
branch_0x8031b280:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x4
    blt+    branch_0x8031b254
    lbz     r0, 0x14d(r31)
    ori     r0, r0, 0x20
    stb     r0, 0x14d(r31)
    lfs     f2, 0x790(rtoc)
    lfs     f0, 0x1b0(r31)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x138(r31)
branch_0x8031b2b4:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    lfd     f28, 0x38(sp)
    lfd     f27, 0x30(sp)
    lfd     f26, 0x28(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x58
    blr


.globl updateTrack__Q28JASystem6TTrackFUl
updateTrack__Q28JASystem6TTrackFUl: # 0x8031b2e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stfd    f29, 0x50(sp)
    stfd    f28, 0x48(sp)
    stfd    f27, 0x40(sp)
    stfd    f26, 0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r30, r3
    mr      r31, r4
    lhz     r5, 0x296(r3)
    lis     r3, 0x4330
    lbz     r0, 0x3bc(r30)
    stw     r5, 0x1c(sp)
    lfd     f3, 0x788(rtoc)
    cmplwi  r0, 0x4
    stw     r3, 0x18(sp)
    lfs     f0, 0x790(rtoc)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fdivs   f26, f2, f0
    beq-    branch_0x8031b7e8
    rlwinm. r0, r31, 0, 14, 14
    beq-    branch_0x8031b390
    lfs     f2, 0x794(rtoc)
    addi    r3, sp, 0x10
    lfs     f0, 0x270(r30)
    li      r4, 0x0
    fmuls   f0, f2, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x14(sp)
    psq_st  f1, 0x0(3), 1, 4
    lbz     r3, 0x10(sp)
    extsb.  r0, r3
    bge-    branch_0x8031b384
    li      r0, 0x0
    stb     r0, 0x10(sp)
    neg     r4, r3
branch_0x8031b384:
    stb     r4, 0x146(r30)
    lbz     r0, 0x10(sp)
    stb     r0, 0x147(r30)
branch_0x8031b390:
    rlwinm. r0, r31, 0, 25, 25
    beq-    branch_0x8031b3ac
    lwz     r0, 0x2c0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8031b3ac
    mr      r3, r30
    bl      updateTempo__Q28JASystem6TTrackFv
branch_0x8031b3ac:
    clrlwi. r0, r31, 31
    beq-    branch_0x8031b420
    lbz     r0, 0x3c3(r30)
    lfs     f31, 0x160(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8031b3c8
    fmuls   f31, f31, f31
branch_0x8031b3c8:
    lbz     r0, 0x3c2(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8031b3d8
    lfs     f31, 0x778(rtoc)
branch_0x8031b3d8:
    lwz     r3, 0x304(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8031b400
    li      r4, 0x1
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b400
    lwz     r3, 0x304(r30)
    lfs     f0, 0x4(r3)
    fmuls   f31, f31, f0
branch_0x8031b400:
    lbz     r0, 0x3cd(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8031b420
    lbz     r0, 0x3c1(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x8031b420
    lfs     f0, 0x260(r30)
    fmuls   f31, f31, f0
branch_0x8031b420:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8031b478
    lhz     r3, 0x28e(r30)
    lis     r0, 0x4330
    lfd     f2, 0x788(rtoc)
    stw     r3, 0x1c(sp)
    lfs     f1, 0x170(r30)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f0, f2
    bl      pitchToCent__Q28JASystem6PlayerFff
    lwz     r3, 0x304(r30)
    fmr     f30, f1
    cmplwi  r3, 0x0
    beq-    branch_0x8031b478
    li      r4, 0x2
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b478
    lwz     r3, 0x304(r30)
    lfs     f0, 0x8(r3)
    fmuls   f30, f30, f0
branch_0x8031b478:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x8031b4c0
    lwz     r3, 0x304(r30)
    lfs     f29, 0x190(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8031b4c0
    li      r4, 0x8
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b4c0
    lwz     r3, 0x304(r30)
    fmr     f1, f29
    fmr     f3, f26
    lbz     r4, 0x3c5(r30)
    lfs     f2, 0x14(r3)
    mr      r3, r30
    bl      panCalc__Q28JASystem6TTrackFfffUc
    fmr     f29, f1
branch_0x8031b4c0:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x8031b508
    lwz     r3, 0x304(r30)
    lfs     f28, 0x180(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8031b508
    li      r4, 0x4
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b508
    lwz     r3, 0x304(r30)
    fmr     f1, f28
    fmr     f3, f26
    lbz     r4, 0x3c6(r30)
    lfs     f2, 0xc(r3)
    mr      r3, r30
    bl      panCalc__Q28JASystem6TTrackFfffUc
    fmr     f28, f1
branch_0x8031b508:
    rlwinm. r0, r31, 0, 27, 27
    beq-    branch_0x8031b550
    lwz     r3, 0x304(r30)
    lfs     f27, 0x1a0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8031b550
    li      r4, 0x10
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b550
    lwz     r3, 0x304(r30)
    fmr     f1, f27
    fmr     f3, f26
    lbz     r4, 0x3c7(r30)
    lfs     f2, 0x10(r3)
    mr      r3, r30
    bl      panCalc__Q28JASystem6TTrackFfffUc
    fmr     f27, f1
branch_0x8031b550:
    rlwinm. r0, r31, 0, 16, 19
    beq-    branch_0x8031b5a8
    lfs     f2, 0x790(rtoc)
    li      r4, 0x0
    b       branch_0x8031b590

branch_0x8031b564:
    clrlslwi  r0, r4, 24, 4
    add     r3, r30, r0
    lfs     f0, 0x220(r3)
    clrlslwi  r0, r4, 24, 1
    add     r3, r30, r0
    fmuls   f0, f2, f0
    addi    r4, r4, 0x1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x128(r3)
branch_0x8031b590:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x4
    blt+    branch_0x8031b564
    lbz     r0, 0x14d(r30)
    ori     r0, r0, 0x20
    stb     r0, 0x14d(r30)
branch_0x8031b5a8:
    lwz     r3, 0x304(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8031b60c
    rlwinm. r0, r31, 0, 24, 24
    beq-    branch_0x8031b60c
    li      r4, 0x80
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b60c
    li      r28, 0x0
    b       branch_0x8031b5f0

branch_0x8031b5d4:
    lwz     r3, 0x304(r30)
    mr      r4, r28
    bl      getIntFirFilter__Q38JASystem6TTrack11TOuterParamFUc
    clrlslwi  r0, r28, 24, 1
    add     r4, r30, r0
    sth     r3, 0x118(r4)
    addi    r28, r28, 0x1
branch_0x8031b5f0:
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031b5d4
    lbz     r0, 0x14d(r30)
    rlwinm  r3, r0, 0, 26, 26
    addi    r0, r3, 0x8
    stb     r0, 0x14d(r30)
branch_0x8031b60c:
    rlwinm. r0, r31, 0, 26, 26
    beq-    branch_0x8031b630
    lfs     f2, 0x790(rtoc)
    lfs     f0, 0x1b0(r30)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x138(r30)
branch_0x8031b630:
    li      r27, 0x0
    li      r29, 0x0
    li      r28, 0x0
branch_0x8031b63c:
    add     r3, r30, r28
    lwz     r0, 0x3a0(r3)
    cmpwi   r0, 0xe
    bne-    branch_0x8031b6b4
    addi    r3, r29, 0x33c
    add     r3, r30, r3
    bl      getOffsetNoCount__Q28JASystem11TOscillatorFv
    add     r3, r30, r29
    lwz     r3, 0x33c(r3)
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8031b6a0
    bge-    branch_0x8031b680
    cmpwi   r0, 0x0
    beq-    branch_0x8031b698
    bge-    branch_0x8031b690
    b       branch_0x8031b6b4

branch_0x8031b680:
    cmpwi   r0, 0x4
    beq-    branch_0x8031b6b0
    bge-    branch_0x8031b6b4
    b       branch_0x8031b6a8

branch_0x8031b690:
    fmuls   f30, f30, f1
    b       branch_0x8031b6b4

branch_0x8031b698:
    fmuls   f31, f31, f1
    b       branch_0x8031b6b4

branch_0x8031b6a0:
    fmuls   f29, f29, f1
    b       branch_0x8031b6b4

branch_0x8031b6a8:
    fmuls   f28, f28, f1
    b       branch_0x8031b6b4

branch_0x8031b6b0:
    fmuls   f27, f27, f1
branch_0x8031b6b4:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r29, r29, 0x20
    addi    r28, r28, 0x4
    blt+    branch_0x8031b63c
    lwz     r4, 0x2c0(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8031b6e0
    lbz     r0, 0x3bc(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x8031b720
branch_0x8031b6e0:
    clrlwi. r0, r31, 31
    beq-    branch_0x8031b6ec
    stfs    f31, 0x104(r30)
branch_0x8031b6ec:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8031b6f8
    stfs    f30, 0x108(r30)
branch_0x8031b6f8:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x8031b704
    stfs    f29, 0x10c(r30)
branch_0x8031b704:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x8031b710
    stfs    f28, 0x110(r30)
branch_0x8031b710:
    rlwinm. r0, r31, 0, 27, 27
    beq-    branch_0x8031b7e8
    stfs    f27, 0x114(r30)
    b       branch_0x8031b7e8

branch_0x8031b720:
    lhz     r5, 0x298(r30)
    lis     r3, 0x4330
    lfd     f3, 0x788(rtoc)
    clrlwi. r0, r31, 31
    stw     r5, 0x1c(sp)
    lfs     f0, 0x790(rtoc)
    stw     r3, 0x18(sp)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fdivs   f26, f2, f0
    beq-    branch_0x8031b758
    lfs     f0, 0x104(r4)
    fmuls   f0, f0, f31
    stfs    f0, 0x104(r30)
branch_0x8031b758:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8031b770
    lwz     r3, 0x2c0(r30)
    lfs     f0, 0x108(r3)
    fmuls   f0, f0, f30
    stfs    f0, 0x108(r30)
branch_0x8031b770:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x8031b798
    lwz     r3, 0x2c0(r30)
    fmr     f1, f29
    fmr     f3, f26
    lbz     r4, 0x3c8(r30)
    lfs     f2, 0x10c(r3)
    mr      r3, r30
    bl      panCalc__Q28JASystem6TTrackFfffUc
    stfs    f1, 0x10c(r30)
branch_0x8031b798:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x8031b7c0
    lwz     r3, 0x2c0(r30)
    fmr     f1, f28
    fmr     f3, f26
    lbz     r4, 0x3c9(r30)
    lfs     f2, 0x110(r3)
    mr      r3, r30
    bl      panCalc__Q28JASystem6TTrackFfffUc
    stfs    f1, 0x110(r30)
branch_0x8031b7c0:
    rlwinm. r0, r31, 0, 27, 27
    beq-    branch_0x8031b7e8
    lwz     r3, 0x2c0(r30)
    fmr     f1, f27
    fmr     f3, f26
    lbz     r4, 0x3ca(r30)
    lfs     f2, 0x114(r3)
    mr      r3, r30
    bl      panCalc__Q28JASystem6TTrackFfffUc
    stfs    f1, 0x114(r30)
branch_0x8031b7e8:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lfd     f28, 0x48(sp)
    lfd     f27, 0x40(sp)
    lfd     f26, 0x38(sp)
    addi    sp, sp, 0x68
    blr


.globl updateTempo__Q28JASystem6TTrackFv
updateTempo__Q28JASystem6TTrackFv: # 0x8031b814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r3, 0x2c0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8031b8d8
    lhz     r0, 0x3ba(r29)
    lis     r3, 0x4330
    lfd     f2, 0x788(rtoc)
    li      r4, 0x40
    stw     r0, 0x2c(sp)
    stw     r3, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x3b0(r29)
    lhz     r0, 0x3b8(r29)
    lfs     f1, 0x3b0(r29)
    stw     r0, 0x24(sp)
    stw     r3, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    stfs    f0, 0x3b0(r29)
    lfs     f1, 0x3b0(r29)
    lfs     f0, -0x73d0(r13)
    fdivs   f0, f1, f0
    stfs    f0, 0x3b0(r29)
    lfs     f1, 0x3b0(r29)
    lfs     f0, 0x798(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x3b0(r29)
    lfs     f1, 0x3b0(r29)
    lfs     f0, 0x79c(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x3b0(r29)
    lwz     r3, 0x304(r29)
    bl      checkOuterSwitch__Q38JASystem6TTrack11TOuterParamFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x8031b8ec
    lwz     r3, 0x304(r29)
    lfs     f1, 0x3b0(r29)
    lfs     f0, 0x18(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x3b0(r29)
    b       branch_0x8031b8ec

branch_0x8031b8d8:
    lfs     f0, 0x3b0(r3)
    stfs    f0, 0x3b0(r29)
    lwz     r3, 0x2c0(r29)
    lhz     r0, 0x3ba(r3)
    sth     r0, 0x3ba(r29)
branch_0x8031b8ec:
    li      r30, 0x0
    li      r31, 0x0
branch_0x8031b8f4:
    addi    r0, r31, 0x2c4
    lwzx    r3, r29, r0
    cmplwi  r3, 0x0
    beq-    branch_0x8031b914
    lbz     r0, 0x3c4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031b914
    bl      updateTempo__Q28JASystem6TTrackFv
branch_0x8031b914:
    addi    r30, r30, 0x1
    cmplwi  r30, 0x10
    addi    r31, r31, 0x4
    blt+    branch_0x8031b8f4
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl updateSeq__Q28JASystem6TTrackFUlb
updateSeq__Q28JASystem6TTrackFUlb: # 0x8031b940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    mr      r26, r3
    mr      r27, r5
    lwz     r3, 0x304(r3)
    lwz     r0, 0x3b4(r26)
    cmplwi  r3, 0x0
    or      r29, r4, r0
    beq-    branch_0x8031b984
    bl      getOuterUpdate__Q38JASystem6TTrack11TOuterParamFv
    clrlwi  r0, r3, 16
    lwz     r3, 0x304(r26)
    or      r29, r29, r0
    li      r4, 0x0
    bl      setOuterUpdate__Q38JASystem6TTrack11TOuterParamFUs
branch_0x8031b984:
    li      r0, 0x0
    cmplwi  r29, 0x0
    stw     r0, 0x3b4(r26)
    beq-    branch_0x8031b9a0
    addi    r3, r26, 0x0
    addi    r4, r29, 0x0
    bl      updateTrack__Q28JASystem6TTrackFUl
branch_0x8031b9a0:
    clrlwi  r30, r27, 24
    li      r28, 0x0
    li      r31, 0x0
branch_0x8031b9ac:
    addi    r0, r31, 0x2c4
    lwzx    r0, r26, r0
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8031b9f0
    lbz     r0, 0x3c4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031b9f0
    cmplwi  r30, 0x0
    beq-    branch_0x8031b9e4
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    bl      updateSeq__Q28JASystem6TTrackFUlb
    b       branch_0x8031b9f0

branch_0x8031b9e4:
    lwz     r0, 0x3b4(r3)
    or      r0, r0, r29
    stw     r0, 0x3b4(r3)
branch_0x8031b9f0:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x10
    addi    r31, r31, 0x4
    blt+    branch_0x8031b9ac
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl incSelfOsc__Q28JASystem6TTrackFv
incSelfOsc__Q28JASystem6TTrackFv: # 0x8031ba14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r31, r3, 0x0
    li      r26, 0x0
    li      r28, 0x0
    li      r29, 0x0
branch_0x8031ba34:
    addi    r0, r29, 0x3a0
    lwzx    r0, r31, r0
    cmpwi   r0, 0xe
    bne-    branch_0x8031ba50
    addi    r3, r28, 0x33c
    add     r3, r31, r3
    bl      getOffset__Q28JASystem11TOscillatorFv
branch_0x8031ba50:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    addi    r28, r28, 0x20
    addi    r29, r29, 0x4
    blt+    branch_0x8031ba34
    li      r25, 0x0
    li      r30, 0x0
branch_0x8031ba6c:
    addi    r0, r30, 0x2c4
    lwzx    r26, r31, r0
    cmplwi  r26, 0x0
    beq-    branch_0x8031bae4
    li      r27, 0x0
    li      r29, 0x0
    li      r28, 0x0
branch_0x8031ba88:
    addi    r0, r28, 0x3a0
    lwzx    r0, r26, r0
    cmpwi   r0, 0xe
    bne-    branch_0x8031baa4
    addi    r3, r29, 0x33c
    add     r3, r26, r3
    bl      getOffset__Q28JASystem11TOscillatorFv
branch_0x8031baa4:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r29, r29, 0x20
    addi    r28, r28, 0x4
    blt+    branch_0x8031ba88
    li      r28, 0x0
    li      r29, 0x0
branch_0x8031bac0:
    addi    r0, r29, 0x2c4
    lwzx    r3, r26, r0
    cmplwi  r3, 0x0
    beq-    branch_0x8031bad4
    bl      incSelfOsc__Q28JASystem6TTrackFv
branch_0x8031bad4:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x10
    addi    r29, r29, 0x4
    blt+    branch_0x8031bac0
branch_0x8031bae4:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x10
    addi    r30, r30, 0x4
    blt+    branch_0x8031ba6c
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl mainProc__Q28JASystem6TTrackFv
mainProc__Q28JASystem6TTrackFv: # 0x8031bb08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    mr      r30, r3
    lwz     r5, 0x2c0(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x8031bba4
    lbz     r0, 0x3bd(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x8031bba4
    lhz     r4, 0x3b8(r30)
    lis     r3, 0x4330
    lhz     r0, 0x3b8(r5)
    stw     r4, 0x24(sp)
    lfd     f3, 0x788(rtoc)
    stw     r0, 0x1c(sp)
    lfs     f0, 0x77c(rtoc)
    stw     r3, 0x20(sp)
    stw     r3, 0x18(sp)
    lfd     f2, 0x20(sp)
    lfd     f1, 0x18(sp)
    fsubs   f2, f2, f3
    fsubs   f1, f1, f3
    fdivs   f2, f2, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x8031bb78
    fmr     f2, f0
branch_0x8031bb78:
    lfs     f0, 0x3ac(r30)
    fadds   f0, f0, f2
    stfs    f0, 0x3ac(r30)
    lfs     f1, 0x3ac(r30)
    lfs     f0, 0x77c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8031bb9c
    li      r3, 0x0
    b       branch_0x8031bf98

branch_0x8031bb9c:
    fsubs   f0, f1, f0
    stfs    f0, 0x3ac(r30)
branch_0x8031bba4:
    lwz     r0, 0x2c0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8031bc0c
    lwz     r0, 0xec(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8031bc0c
    addi    r3, r30, 0xec
    li      r4, 0x0
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r28, r3
    beq-    branch_0x8031bc0c
    lwz     r3, 0x2c0(r30)
    addi    r4, r28, 0x0
    li      r5, 0x0
    addi    r3, r3, 0xec
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r3, 0x2c0(r30)
    addi    r0, r3, 0xec
    stw     r0, 0x4(r28)
    lwz     r3, 0xec(r30)
    subi    r0, r3, 0x1
    stw     r0, 0xec(r30)
    lwz     r4, 0x2c0(r30)
    lwz     r3, 0xec(r4)
    addi    r0, r3, 0x1
    stw     r0, 0xec(r4)
branch_0x8031bc0c:
    lbz     r0, 0x3bf(r30)
    stb     r0, 0x3c0(r30)
    lwz     r4, 0x2c0(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8031bc30
    lbz     r3, 0x3c0(r30)
    lbz     r0, 0x3c0(r4)
    add     r0, r3, r0
    stb     r0, 0x3c0(r30)
branch_0x8031bc30:
    addi    r3, r30, 0x88
    li      r4, 0x7
    bl      request__Q28JASystem8TIntrMgrFUl
    addi    r3, r30, 0x88
    bl      timerProcess__Q28JASystem8TIntrMgrFv
    lis     r3, 0x8041
    subi    r29, r3, 0x40e0
branch_0x8031bc4c:
    lwz     r0, 0x44(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8031bc60
    li      r0, 0x1
    b       branch_0x8031bc64

branch_0x8031bc60:
    li      r0, 0x0
branch_0x8031bc64:
    clrlwi. r0, r0, 24
    bne-    branch_0x8031bc84
    addi    r3, r30, 0x88
    bl      checkIntr__Q28JASystem8TIntrMgrFv
    mr.     r4, r3
    beq-    branch_0x8031bc84
    mr      r3, r30
    bl      callIntr__Q28JASystem8TSeqCtrlFPv
branch_0x8031bc84:
    lbz     r0, 0x3cd(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8031bc9c
    lbz     r0, 0x3c1(r30)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8031bf18
branch_0x8031bc9c:
    lwz     r0, 0x8(r30)
    cmpwi   r0, -0x1
    bne-    branch_0x8031bcec
    addi    r3, r30, 0xb4
    li      r4, 0x0
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    bne-    branch_0x8031bcc4
    li      r0, 0x1
    b       branch_0x8031bcdc

branch_0x8031bcc4:
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0xff
    bne-    branch_0x8031bcd8
    li      r0, 0x1
    b       branch_0x8031bcdc

branch_0x8031bcd8:
    li      r0, 0x0
branch_0x8031bcdc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8031bd38
    li      r0, 0x0
    stw     r0, 0x8(r30)
branch_0x8031bcec:
    lwz     r0, 0x8(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x8031bd10
    mr      r3, r30
    bl      waitCountDown__Q28JASystem8TSeqCtrlFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8031bd38
    addi    r3, r30, 0xb4
    bl      endProcess__Q38JASystem6TTrack8TNoteMgrFv
branch_0x8031bd10:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r30, 0x0
    bl      mainProc__Q28JASystem10TSeqParserFPQ28JASystem6TTrackPQ28JASystem8TSeqCtrl
    cmpwi   r3, -0x1
    bne-    branch_0x8031bd30
    li      r3, -0x1
    b       branch_0x8031bf98

branch_0x8031bd30:
    cmpwi   r3, -0x2
    beq+    branch_0x8031bc4c
branch_0x8031bd38:
    li      r0, 0x9
    lfs     f1, 0x77c(rtoc)
    mtctr   r0
    lfs     f3, 0x778(rtoc)
    li      r31, 0x0
    li      r5, 0x0
    li      r3, 0x0
branch_0x8031bd54:
    add     r4, r30, r3
    lfs     f0, 0x168(r4)
    addi    r4, r4, 0x160
    fcmpo   cr0, f0, f3
    ble-    branch_0x8031be0c
    lfs     f2, 0x0(r4)
    cmpwi   r5, 0x5
    lfs     f0, 0xc(r4)
    fadds   f0, f2, f0
    stfs    f0, 0x0(r4)
    lfs     f0, 0x8(r4)
    fsubs   f0, f0, f1
    stfs    f0, 0x8(r4)
    ble-    branch_0x8031bd94
    cmpwi   r5, 0xb
    blt-    branch_0x8031bda4
branch_0x8031bd94:
    li      r0, 0x1
    slw     r0, r0, r5
    or      r31, r31, r0
    b       branch_0x8031be0c

branch_0x8031bda4:
    clrlwi  r0, r5, 24
    lfs     f0, 0x0(r4)
    cmpwi   r0, 0x9
    beq-    branch_0x8031bdf8
    bge-    branch_0x8031bdd0
    cmpwi   r0, 0x7
    beq-    branch_0x8031bde8
    bge-    branch_0x8031bdf0
    cmpwi   r0, 0x6
    bge-    branch_0x8031bde0
    b       branch_0x8031be0c

branch_0x8031bdd0:
    cmpwi   r0, 0xb
    beq-    branch_0x8031be08
    bge-    branch_0x8031be0c
    b       branch_0x8031be00

branch_0x8031bde0:
    stfs    f0, 0x31c(r30)
    b       branch_0x8031be0c

branch_0x8031bde8:
    stfs    f0, 0x310(r30)
    b       branch_0x8031be0c

branch_0x8031bdf0:
    stfs    f0, 0x320(r30)
    b       branch_0x8031be0c

branch_0x8031bdf8:
    stfs    f0, 0x334(r30)
    b       branch_0x8031be0c

branch_0x8031be00:
    stfs    f0, 0x328(r30)
    b       branch_0x8031be0c

branch_0x8031be08:
    stfs    f0, 0x338(r30)
branch_0x8031be0c:
    addi    r3, r3, 0x10
    add     r4, r30, r3
    lfs     f0, 0x168(r4)
    addi    r4, r4, 0x160
    addi    r5, r5, 0x1
    fcmpo   cr0, f0, f3
    ble-    branch_0x8031becc
    lfs     f2, 0x0(r4)
    cmpwi   r5, 0x5
    lfs     f0, 0xc(r4)
    fadds   f0, f2, f0
    stfs    f0, 0x0(r4)
    lfs     f0, 0x8(r4)
    fsubs   f0, f0, f1
    stfs    f0, 0x8(r4)
    ble-    branch_0x8031be54
    cmpwi   r5, 0xb
    blt-    branch_0x8031be64
branch_0x8031be54:
    li      r0, 0x1
    slw     r0, r0, r5
    or      r31, r31, r0
    b       branch_0x8031becc

branch_0x8031be64:
    clrlwi  r0, r5, 24
    lfs     f0, 0x0(r4)
    cmpwi   r0, 0x9
    beq-    branch_0x8031beb8
    bge-    branch_0x8031be90
    cmpwi   r0, 0x7
    beq-    branch_0x8031bea8
    bge-    branch_0x8031beb0
    cmpwi   r0, 0x6
    bge-    branch_0x8031bea0
    b       branch_0x8031becc

branch_0x8031be90:
    cmpwi   r0, 0xb
    beq-    branch_0x8031bec8
    bge-    branch_0x8031becc
    b       branch_0x8031bec0

branch_0x8031bea0:
    stfs    f0, 0x31c(r30)
    b       branch_0x8031becc

branch_0x8031bea8:
    stfs    f0, 0x310(r30)
    b       branch_0x8031becc

branch_0x8031beb0:
    stfs    f0, 0x320(r30)
    b       branch_0x8031becc

branch_0x8031beb8:
    stfs    f0, 0x334(r30)
    b       branch_0x8031becc

branch_0x8031bec0:
    stfs    f0, 0x328(r30)
    b       branch_0x8031becc

branch_0x8031bec8:
    stfs    f0, 0x338(r30)
branch_0x8031becc:
    addi    r5, r5, 0x1
    addi    r3, r3, 0x10
    bdnz+      branch_0x8031bd54
    lwz     r0, 0x3a0(r30)
    lis     r3, 0x803e
    addi    r4, r3, 0x3658
    cmpwi   r0, 0xe
    bne-    branch_0x8031befc
    lbz     r0, 0x30c(r30)
    add     r3, r4, r0
    lbz     r0, 0x0(r3)
    or      r31, r31, r0
branch_0x8031befc:
    lwz     r0, 0x3a4(r30)
    cmpwi   r0, 0xe
    bne-    branch_0x8031bf18
    lbz     r0, 0x324(r30)
    add     r3, r4, r0
    lbz     r0, 0x0(r3)
    or      r31, r31, r0
branch_0x8031bf18:
    lwz     r0, 0x3b4(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    or      r0, r0, r31
    stw     r0, 0x3b4(r30)
    li      r5, 0x0
    bl      updateSeq__Q28JASystem6TTrackFUlb
    li      r27, 0x0
    li      r31, 0x0
    li      r29, 0x0
branch_0x8031bf40:
    addi    r28, r31, 0x2c4
    add     r28, r30, r28
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    mr      r26, r0
    beq-    branch_0x8031bf84
    lbz     r0, 0x3c4(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x8031bf84
    mr      r3, r26
    bl      mainProc__Q28JASystem6TTrackFv
    extsb   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8031bf84
    mr      r3, r26
    bl      closeTrack__Q28JASystem6TTrackFv
    stw     r29, 0x0(r28)
branch_0x8031bf84:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x10
    addi    r31, r31, 0x4
    blt+    branch_0x8031bf40
    li      r3, 0x0
branch_0x8031bf98:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl seqTimeToDspTime__Q28JASystem6TTrackFlUc
seqTimeToDspTime__Q28JASystem6TTrackFlUc: # 0x8031bfac
    stwu    sp, -0x30(sp)
    xoris   r6, r4, 0x8000
    clrlwi  r4, r5, 24
    stw     r6, 0x2c(sp)
    lis     r5, 0x4330
    lbz     r0, 0x3cb(r3)
    stw     r4, 0x24(sp)
    lfd     f4, 0x7b0(rtoc)
    cmplwi  r0, 0x0
    stw     r5, 0x28(sp)
    lfd     f2, 0x788(rtoc)
    stw     r5, 0x20(sp)
    lfd     f3, 0x28(sp)
    lfd     f1, 0x20(sp)
    fsubs   f3, f3, f4
    lfs     f0, 0x7a0(rtoc)
    fsubs   f1, f1, f2
    fmuls   f3, f3, f1
    fdivs   f3, f3, f0
    beq-    branch_0x8031c008
    lfs     f0, 0x3b0(r3)
    fdivs   f3, f3, f0
    b       branch_0x8031c054

branch_0x8031c008:
    lhz     r0, 0x3ba(r3)
    lfs     f0, 0x7a4(rtoc)
    stw     r0, 0x24(sp)
    lwz     r0, -0x5b38(r13)
    fmuls   f1, f0, f3
    stw     r5, 0x20(sp)
    cmpwi   r0, 0x0
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f2
    fdivs   f3, f1, f0
    bne-    branch_0x8031c054
    lwz     r0, -0x73cc(r13)
    lfs     f0, 0x7a8(rtoc)
    stw     r0, 0x24(sp)
    stw     r5, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f3, f1, f0
branch_0x8031c054:
    fctiwz  f0, f3
    stfd    f0, 0x20(sp)
    lwz     r3, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl writeTimeParam__Q28JASystem6TTrackFUc
writeTimeParam__Q28JASystem6TTrackFUc: # 0x8031c068
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm  r0, r4, 0, 28, 29
    cmplwi  r0, 0xc
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    clrlwi  r30, r4, 24
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r5, 0x4(r3)
    addi    r3, r5, 0x1
    stw     r3, 0x4(r28)
    lbz     r31, 0x0(r5)
    bgt-    branch_0x8031c13c
    lis     r3, 0x803e
    addi    r3, r3, 0x3660
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8031C0C0:		# jumptable 8031C0BC case 0
    lwz     r4, 0x4(r28)
    addi    r3, r28, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lbz     r4, 0x0(r4)
    bl      readRegDirect__Q28JASystem6TTrackFUc
    mr      r29, r3
    b       branch_0x8031c13c

branch_0x8031C0E0:		# jumptable 8031C0BC case 4
lwz	  r3, 4(r28)
addi	  r0, r3, 1
stw	  r0, 4(r28)
lbz	  r29, 0(r3)
b	  def_8031C0BC	# jumptable 8031C0BC default case

branch_0x8031C0F4:		# jumptable 8031C0BC case 8
lwz	  r3, 4(r28)
addi	  r0, r3, 1
stw	  r0, 4(r28)
lbz	  r0, 0(r3)
clrlwi	  r4, r0, 16
rlwinm.	  r0, r0, 0,24,24
beq	  branch_0x8031C11C
slwi	  r0, r4, 8
extsh	  r29, r0
b	  def_8031C0BC	# jumptable 8031C0BC default case

branch_0x8031C11C:
slwi	  r3, r4, 8
slwi	  r0, r4, 1
or	  r0, r3, r0
extsh	  r29, r0
b	  def_8031C0BC	# jumptable 8031C0BC default case

branch_0x8031C130:		# jumptable 8031C0BC case 12
mr	  r3, r28
bl	  read16__Q28JASystem8TSeqCtrlFv # JASystem::TSeqCtrl::read16((void))
mr	  r29, r3

def_8031C0BC:		# jumptable 8031C0BC default case
branch_0x8031c13c:
    clrlwi  r0, r30, 30
    cmpwi   r0, 0x2
    li      r5, 0x0
    beq-    branch_0x8031c194
    bge-    branch_0x8031c160
    cmpwi   r0, 0x0
    beq-    branch_0x8031c16c
    bge-    branch_0x8031c174
    b       branch_0x8031c1b4

branch_0x8031c160:
    cmpwi   r0, 0x4
    bge-    branch_0x8031c1b4
    b       branch_0x8031c1a8

branch_0x8031c16c:
    li      r5, -0x1
    b       branch_0x8031c1b4

branch_0x8031c174:
    lwz     r4, 0x4(r28)
    addi    r3, r28, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lbz     r4, 0x0(r4)
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r5, r3, 16
    b       branch_0x8031c1b4

branch_0x8031c194:
    lwz     r3, 0x4(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r28)
    lbz     r5, 0x0(r3)
    b       branch_0x8031c1b4

branch_0x8031c1a8:
    mr      r3, r28
    bl      read16__Q28JASystem8TSeqCtrlFv
    clrlwi  r5, r3, 16
branch_0x8031c1b4:
    extsh   r0, r29
    lfd     f2, 0x7b0(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, 0x7b8(rtoc)
    stw     r0, 0x1c(sp)
    lis     r3, 0x4330
    slwi    r4, r31, 4
    stw     r3, 0x18(sp)
    addi    r4, r4, 0x160
    cmpwi   r5, 0x0
    lfd     f1, 0x18(sp)
    add     r4, r28, r4
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x4(r4)
    bgt-    branch_0x8031c210
    lfs     f0, 0x4(r4)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x778(rtoc)
    stfs    f0, 0xc(r4)
    lfs     f0, 0x77c(rtoc)
    stfs    f0, 0x8(r4)
    b       branch_0x8031c24c

branch_0x8031c210:
    xoris   r0, r5, 0x8000
    lfs     f1, 0x4(r4)
    stw     r0, 0x1c(sp)
    lfs     f0, 0x0(r4)
    stw     r3, 0x18(sp)
    fsubs   f1, f1, f0
    lfd     f0, 0x18(sp)
    stw     r0, 0x14(sp)
    fsubs   f0, f0, f2
    stw     r3, 0x10(sp)
    fdivs   f1, f1, f0
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    stfs    f1, 0xc(r4)
    stfs    f0, 0x8(r4)
branch_0x8031c24c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl writeRegParam__Q28JASystem6TTrackFUc
writeRegParam__Q28JASystem6TTrackFUc: # 0x8031c26c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 28
    cmpwi   r0, 0xb
    stwu    sp, -0x48(sp)
    stmw    r23, 0x24(sp)
    addi    r30, r3, 0x0
    rlwinm  r28, r4, 0, 28, 29
    clrlwi  r27, r4, 30
    bne-    branch_0x8031c29c
    li      r28, 0x0
    li      r27, 0xb
branch_0x8031c29c:
    cmpwi   r0, 0xa
    bne-    branch_0x8031c2c4
    lwz     r3, 0x4(r30)
    li      r27, 0xa
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    lbz     r4, 0x0(r3)
    extrwi  r3, r4, 4, 24
    rlwinm  r28, r4, 0, 28, 29
    addi    r26, r3, 0x4
branch_0x8031c2c4:
    clrlwi  r0, r4, 28
    cmpwi   r0, 0x9
    bne-    branch_0x8031c2f8
    lwz     r3, 0x4(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    lbz     r0, 0x0(r3)
    rlwinm  r3, r0, 0, 28, 29
    cmplwi  r3, 0x8
    addi    r28, r3, 0x0
    rlwinm  r27, r0, 0, 24, 27
    bne-    branch_0x8031c2f8
    li      r28, 0x10
branch_0x8031c2f8:
    lwz     r3, 0x4(r30)
    cmplwi  r27, 0xa
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    lbz     r29, 0x0(r3)
    bne-    branch_0x8031c32c
    lwz     r4, 0x4(r30)
    addi    r3, r30, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    lbz     r4, 0x0(r4)
    bl      readReg32__Q28JASystem6TTrackFUc
    mr      r25, r3
branch_0x8031c32c:
    cmplwi  r28, 0x10
    bgt-    branch_0x8031c3d0
    lis     r3, 0x803e
    addi    r3, r3, 0x3694
    slwi    r0, r28, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8031C34C:		# jumptable 8031C348 case 0
    lwz     r4, 0x4(r30)
    addi    r3, r30, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    lbz     r4, 0x0(r4)
    bl      readRegDirect__Q28JASystem6TTrackFUc
    mr      r24, r3
    b       branch_0x8031c3d0

branch_0x8031C36C:		# jumptable 8031C348 case 4
lwz	  r3, 4(r30)
addi	  r0, r3, 1
stw	  r0, 4(r30)
lbz	  r24, 0(r3)
b	  def_8031C348	# jumptable 8031C348 default case

branch_0x8031C380:		# jumptable 8031C348 case 8
lwz	  r3, 4(r30)
addi	  r0, r3, 1
stw	  r0, 4(r30)
lbz	  r0, 0(r3)
clrlwi	  r4, r0, 16
rlwinm.	  r0, r0, 0,24,24
beq	  branch_0x8031C3A8
slwi	  r0, r4, 8
extsh	  r24, r0
b	  def_8031C348	# jumptable 8031C348 default case

branch_0x8031C3A8:
slwi	  r3, r4, 8
slwi	  r0, r4, 1
or	  r0, r3, r0
extsh	  r24, r0
b	  def_8031C348	# jumptable 8031C348 default case

branch_0x8031C3BC:		# jumptable 8031C348 case 12
mr	  r3, r30
bl	  read16__Q28JASystem8TSeqCtrlFv # JASystem::TSeqCtrl::read16((void))
mr	  r24, r3
b	  def_8031C348	# jumptable 8031C348 default case

branch_0x8031C3CC:		# jumptable 8031C348 case 16
li	  r24, -1

def_8031C348:		# jumptable 8031C348 default case
branch_0x8031c3d0:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      readRegDirect__Q28JASystem6TTrackFUc
    cmpwi   r27, 0x20
    addi    r23, r3, 0x0
    beq-    branch_0x8031c51c
    bge-    branch_0x8031c438
    cmpwi   r27, 0xa
    beq-    branch_0x8031c5a4
    bge-    branch_0x8031c420
    cmpwi   r27, 0x2
    beq-    branch_0x8031c490
    bge-    branch_0x8031c414
    cmpwi   r27, 0x0
    beq-    branch_0x8031c5c0
    bge-    branch_0x8031c474
    b       branch_0x8031c5c0

branch_0x8031c414:
    cmpwi   r27, 0x4
    bge-    branch_0x8031c5c0
    b       branch_0x8031c4c0

branch_0x8031c420:
    cmpwi   r27, 0x10
    beq-    branch_0x8031c4d4
    bge-    branch_0x8031c5c0
    cmpwi   r27, 0xc
    bge-    branch_0x8031c5c0
    b       branch_0x8031c4cc

branch_0x8031c438:
    cmpwi   r27, 0x50
    beq-    branch_0x8031c574
    bge-    branch_0x8031c45c
    cmpwi   r27, 0x40
    beq-    branch_0x8031c56c
    bge-    branch_0x8031c5c0
    cmpwi   r27, 0x30
    beq-    branch_0x8031c564
    b       branch_0x8031c5c0

branch_0x8031c45c:
    cmpwi   r27, 0x90
    beq-    branch_0x8031c584
    bge-    branch_0x8031c5c0
    cmpwi   r27, 0x60
    beq-    branch_0x8031c57c
    b       branch_0x8031c5c0

branch_0x8031c474:
    cmplwi  r28, 0x4
    bne-    branch_0x8031c488
    clrlwi  r3, r24, 24
    bl      extend8to16__Q28JASystem6PlayerFUc
    mr      r24, r3
branch_0x8031c488:
    add     r24, r23, r24
    b       branch_0x8031c5c0

branch_0x8031c490:
    extsh   r23, r23
    extsh   r0, r24
    mullw   r23, r23, r0
    srwi    r5, r23, 16
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    clrlwi  r5, r23, 16
    addi    r3, r30, 0x0
    li      r4, 0x5
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    b       branch_0x8031c760

branch_0x8031c4c0:
    subf    r0, r24, r23
    sth     r0, 0x286(r30)
    b       branch_0x8031c760

branch_0x8031c4cc:
    subf    r24, r24, r23
    b       branch_0x8031c5c0

branch_0x8031c4d4:
    cmplwi  r28, 0x4
    bne-    branch_0x8031c4e8
    clrlwi  r3, r24, 24
    bl      extend8to16__Q28JASystem6PlayerFUc
    mr      r24, r3
branch_0x8031c4e8:
    extsh.  r0, r24
    bge-    branch_0x8031c508
    extsh   r0, r24
    clrlwi  r3, r23, 16
    neg     r0, r0
    sraw    r0, r3, r0
    extsh   r24, r0
    b       branch_0x8031c5c0

branch_0x8031c508:
    clrlwi  r3, r23, 16
    extsh   r0, r24
    slw     r0, r3, r0
    extsh   r24, r0
    b       branch_0x8031c5c0

branch_0x8031c51c:
    cmplwi  r28, 0x4
    bne-    branch_0x8031c530
    clrlwi  r3, r24, 24
    bl      extend8to16__Q28JASystem6PlayerFUc
    mr      r24, r3
branch_0x8031c530:
    extsh.  r0, r24
    bge-    branch_0x8031c550
    extsh   r0, r24
    extsh   r3, r23
    neg     r0, r0
    sraw    r0, r3, r0
    extsh   r24, r0
    b       branch_0x8031c5c0

branch_0x8031c550:
    extsh   r3, r23
    extsh   r0, r24
    slw     r0, r3, r0
    extsh   r24, r0
    b       branch_0x8031c5c0

branch_0x8031c564:
    and     r24, r23, r24
    b       branch_0x8031c5c0

branch_0x8031c56c:
    or      r24, r23, r24
    b       branch_0x8031c5c0

branch_0x8031c574:
    xor     r24, r23, r24
    b       branch_0x8031c5c0

branch_0x8031c57c:
    neg     r24, r23
    b       branch_0x8031c5c0

branch_0x8031c584:
    bl      getRandomS32__Q28JASystem6PlayerFv
    addi    r25, r3, 0x0
    clrlwi  r3, r24, 16
    divwu   r0, r25, r3
    mullw   r0, r0, r3
    subf    r0, r0, r25
    extsh   r24, r0
    b       branch_0x8031c5c0

branch_0x8031c5a4:
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    addi    r6, r26, 0x0
    extsh   r5, r24
    bl      loadTbl__Q28JASystem6TTrackFUlUlUl
    addi    r25, r3, 0x0
    clrlwi  r24, r3, 16
branch_0x8031c5c0:
    cmpwi   r29, 0x22
    beq-    branch_0x8031c6a0
    bge-    branch_0x8031c5ec
    cmpwi   r29, 0x20
    beq-    branch_0x8031c64c
    bge-    branch_0x8031c630
    cmpwi   r29, 0x3
    bge-    branch_0x8031c6dc
    cmpwi   r29, 0x0
    bge-    branch_0x8031c618
    b       branch_0x8031c6dc

branch_0x8031c5ec:
    cmpwi   r29, 0x2e
    beq-    branch_0x8031c66c
    bge-    branch_0x8031c60c
    cmpwi   r29, 0x2c
    bge-    branch_0x8031c6dc
    cmpwi   r29, 0x28
    bge-    branch_0x8031c6cc
    b       branch_0x8031c6dc

branch_0x8031c60c:
    cmpwi   r29, 0x30
    bge-    branch_0x8031c6dc
    b       branch_0x8031c684

branch_0x8031c618:
    clrlwi  r0, r24, 24
    mr      r24, r0
    clrlwi  r3, r0, 24
    bl      extend8to16__Q28JASystem6PlayerFUc
    mr      r31, r3
    b       branch_0x8031c6e0

branch_0x8031c630:
    addi    r3, r30, 0x280
    bl      getBankNumber__Q28JASystem14TRegisterParamCFv
    clrlwi  r0, r24, 24
    mr      r24, r0
    insrwi  r24, r3, 8, 16
    li      r29, 0x6
    b       branch_0x8031c6e0

branch_0x8031c64c:
    addi    r3, r30, 0x280
    bl      getProgramNumber__Q28JASystem14TRegisterParamCFv
    extsh   r0, r24
    slwi    r0, r0, 8
    mr      r24, r0
    insrwi  r24, r3, 8, 24
    li      r29, 0x6
    b       branch_0x8031c6e0

branch_0x8031c66c:
    lhz     r3, 0x29a(r30)
    clrlwi  r0, r24, 24
    mr      r24, r0
    li      r29, 0xd
    rlwimi  r24, r3, 0, 16, 23
    b       branch_0x8031c6e0

branch_0x8031c684:
    lhz     r0, 0x29a(r30)
    extsh   r3, r24
    li      r29, 0xd
    clrlwi  r0, r0, 24
    mr      r24, r0
    insrwi  r24, r3, 24, 0
    b       branch_0x8031c6e0

branch_0x8031c6a0:
    extsh   r23, r24
    srawi   r0, r23, 8
    addi    r3, r30, 0x0
    clrlwi  r5, r0, 16
    li      r4, 0x0
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    clrlwi  r0, r23, 24
    extsh   r24, r0
    addi    r31, r24, 0x0
    li      r29, 0x1
    b       branch_0x8031c6e0

branch_0x8031c6cc:
    slwi    r0, r29, 2
    add     r3, r30, r0
    stw     r25, 0x200(r3)
    b       branch_0x8031c760

branch_0x8031c6dc:
    mr      r31, r24
branch_0x8031c6e0:
    clrlwi  r4, r29, 24
    clrlslwi  r0, r29, 24, 1
    add     r3, r30, r0
    sth     r24, 0x280(r3)
    cmplwi  r4, 0x6
    sth     r31, 0x286(r30)
    bne-    branch_0x8031c728
    addi    r4, r30, 0x3a0
    lwz     r3, 0x3a0(r30)
    li      r0, 0xf
    cmpwi   r3, 0xe
    beq-    branch_0x8031c714
    stw     r0, 0x0(r4)
branch_0x8031c714:
    addi    r4, r30, 0x3a4
    lwz     r3, 0x3a4(r30)
    cmpwi   r3, 0xe
    beq-    branch_0x8031c728
    stw     r0, 0x0(r4)
branch_0x8031c728:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x7
    bne-    branch_0x8031c740
    lwz     r0, 0x3b4(r30)
    ori     r0, r0, 0x2
    stw     r0, 0x3b4(r30)
branch_0x8031c740:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0xd
    bne-    branch_0x8031c760
    lhz     r3, 0x29a(r30)
    li      r0, 0x0
    oris    r3, r3, 0x1
    stw     r3, 0x154(r30)
    sth     r0, 0x158(r30)
branch_0x8031c760:
    lmw     r23, 0x24(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl setSeqData__Q28JASystem6TTrackFPUclQ38JASystem6Player12SEQ_PLAYMODE
setSeqData__Q28JASystem6TTrackFPUclQ38JASystem6Player12SEQ_PLAYMODE: # 0x8031c774
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      allocNewRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
    addi    r31, r3, 0x0
    cmpwi   r31, -0x1
    bne-    branch_0x8031c7ac
    li      r3, -0x1
    b       branch_0x8031c7fc

branch_0x8031c7ac:
    stw     r31, 0x308(r29)
    li      r0, 0x3
    addi    r3, r29, 0x0
    stb     r0, 0x3bc(r29)
    addi    r4, r30, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      initTrack__Q28JASystem6TTrackFPvUlPQ28JASystem6TTrack
    addi    r3, r29, 0xec
    li      r4, 0x0
    bl      initAllocChannel__Q28JASystem11TChannelMgrFUl
    lfs     f0, 0x778(rtoc)
    mr      r3, r29
    stfs    f0, 0x3ac(r29)
    lfs     f0, 0x77c(rtoc)
    stfs    f0, 0x3b0(r29)
    bl      updateTrackAll__Q28JASystem6TTrackFv
    li      r0, 0x2
    stb     r0, 0x3c4(r29)
    mr      r3, r31
branch_0x8031c7fc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl startSeq__Q28JASystem6TTrackFv
startSeq__Q28JASystem6TTrackFv: # 0x8031c818
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x3c4(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8031c86c
    bge-    branch_0x8031c848
    cmpwi   r0, 0x0
    beq-    branch_0x8031c854
    bge-    branch_0x8031c85c
    b       branch_0x8031c874

branch_0x8031c848:
    cmpwi   r0, 0x4
    bge-    branch_0x8031c874
    b       branch_0x8031c864

branch_0x8031c854:
    li      r3, 0x0
    b       branch_0x8031c884

branch_0x8031c85c:
    li      r3, 0x0
    b       branch_0x8031c884

branch_0x8031c864:
    li      r3, 0x0
    b       branch_0x8031c884

branch_0x8031c86c:
    li      r0, 0x1
    stb     r0, 0x3c4(r4)
branch_0x8031c874:
    lis     r3, 0x8032
    subi    r3, r3, 0x27c4
    bl      registerSubframeCallback__Q28JASystem6KernelFPFPv_lPv
    li      r3, 0x1
branch_0x8031c884:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stopSeq__Q28JASystem6TTrackFv
stopSeq__Q28JASystem6TTrackFv: # 0x8031c894
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x3c4(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8031c8f4
    bge-    branch_0x8031c8c4
    cmpwi   r0, 0x0
    bge-    branch_0x8031c8fc
    b       branch_0x8031c8f4

branch_0x8031c8c4:
    cmpwi   r0, 0x3
    bge-    branch_0x8031c8f4
    li      r0, 0x0
    stb     r0, 0x3c4(r31)
    lbz     r0, 0x3be(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x8031c8e8
    mr      r3, r31
    bl      backTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
branch_0x8031c8e8:
    mr      r3, r31
    bl      deAllocRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
    b       branch_0x8031c8fc

branch_0x8031c8f4:
    li      r0, 0x3
    stb     r0, 0x3c4(r31)
branch_0x8031c8fc:
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl closeTrack__Q28JASystem6TTrackFv
closeTrack__Q28JASystem6TTrackFv: # 0x8031c914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lbz     r0, 0x3c4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8031c948
    li      r3, 0x0
    b       branch_0x8031ca54

branch_0x8031c948:
    lwz     r0, 0x2c0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8031c980
    li      r30, 0x0
    b       branch_0x8031c970

branch_0x8031c95c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    li      r5, 0xa
    bl      noteOff__Q28JASystem6TTrackFUcUs
    addi    r30, r30, 0x1
branch_0x8031c970:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031c95c
    b       branch_0x8031c9a8

branch_0x8031c980:
    li      r30, 0x0
    b       branch_0x8031c99c

branch_0x8031c988:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      noteOff__Q28JASystem6TTrackFUcUs
    addi    r30, r30, 0x1
branch_0x8031c99c:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031c988
branch_0x8031c9a8:
    addi    r3, r31, 0xb4
    bl      init__Q38JASystem6TTrack8TNoteMgrFv
    li      r0, 0x0
    stb     r0, 0x3c4(r31)
    lbz     r0, 0x3be(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x8031c9cc
    mr      r3, r31
    bl      backTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
branch_0x8031c9cc:
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x8031c9fc

branch_0x8031c9d8:
    clrlslwi  r3, r28, 24, 2
    addi    r29, r3, 0x2c4
    add     r29, r31, r29
    lwz     r3, 0x0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x8031c9f8
    bl      closeTrack__Q28JASystem6TTrackFv
    stw     r30, 0x0(r29)
branch_0x8031c9f8:
    addi    r28, r28, 0x1
branch_0x8031c9fc:
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x10
    blt+    branch_0x8031c9d8
    li      r0, 0x0
    stb     r0, 0x3c2(r31)
    lwz     r3, 0x2c0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8031ca2c
    addi    r3, r3, 0xec
    addi    r4, r31, 0xec
    bl      receiveAllChannels__Q28JASystem11TChannelMgrFPQ28JASystem11TChannelMgr
    b       branch_0x8031ca34

branch_0x8031ca2c:
    addi    r3, r31, 0xec
    bl      releaseAll__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgr
branch_0x8031ca34:
    lbz     r0, 0x3cc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8031ca50
    mr      r3, r31
    bl      unRegistTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
    li      r0, 0x0
    stb     r0, 0x3cc(r31)
branch_0x8031ca50:
    li      r3, 0x0
branch_0x8031ca54:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl muteTrack__Q28JASystem6TTrackFUc
muteTrack__Q28JASystem6TTrackFUc: # 0x8031ca74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    stb     r31, 0x3c2(r3)
    lwz     r0, 0x3b4(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x3b4(r3)
    lbz     r0, 0x3c2(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031cafc
    lbz     r0, 0x3c1(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8031cafc
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x8031caf0

branch_0x8031cac0:
    clrlwi  r28, r27, 24
    addi    r4, r28, 0x0
    addi    r3, r30, 0xb4
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    beq-    branch_0x8031caec
    li      r4, 0xa
    bl      stop__Q28JASystem8TChannelFUs
    slwi    r3, r28, 2
    addi    r0, r3, 0xb4
    stwx    r29, r30, r0
branch_0x8031caec:
    addi    r27, r27, 0x1
branch_0x8031caf0:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031cac0
branch_0x8031cafc:
    li      r27, 0x0
    li      r29, 0x0
branch_0x8031cb04:
    addi    r0, r29, 0x2c4
    lwzx    r0, r30, r0
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8031cb20
    mr      r4, r31
    bl      muteTrack__Q28JASystem6TTrackFUc
branch_0x8031cb20:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x10
    addi    r29, r29, 0x4
    blt+    branch_0x8031cb04
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl initTrack__Q28JASystem6TTrackFPvUlPQ28JASystem6TTrack
initTrack__Q28JASystem6TTrackFPvUlPQ28JASystem6TTrack: # 0x8031cb44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r6, 0x0
    bl      init__Q28JASystem8TSeqCtrlFPvUl
    cmplwi  r30, 0x0
    bne-    branch_0x8031cba0
    li      r0, 0x78
    sth     r0, 0x3b8(r31)
    li      r0, 0x30
    li      r4, 0x1
    sth     r0, 0x3ba(r31)
    li      r3, 0x0
    li      r0, 0xa
    stb     r4, 0x3cb(r31)
    stb     r3, 0x3cd(r31)
    stb     r0, 0x3c1(r31)
    stb     r3, 0x3c3(r31)
    stb     r3, 0x3c2(r31)
    b       branch_0x8031cbe8

branch_0x8031cba0:
    lhz     r3, 0x3b8(r30)
    li      r0, 0x0
    sth     r3, 0x3b8(r31)
    stb     r0, 0x3bd(r31)
    lfs     f0, 0x3b0(r30)
    stfs    f0, 0x3b0(r31)
    lhz     r0, 0x3ba(r30)
    sth     r0, 0x3ba(r31)
    lbz     r0, 0x3cb(r30)
    stb     r0, 0x3cb(r31)
    lbz     r0, 0x3cd(r30)
    stb     r0, 0x3cd(r31)
    lbz     r0, 0x3c1(r30)
    stb     r0, 0x3c1(r31)
    lbz     r0, 0x3c3(r30)
    stb     r0, 0x3c3(r31)
    lbz     r0, 0x3c2(r30)
    stb     r0, 0x3c2(r31)
branch_0x8031cbe8:
    addi    r3, r31, 0xb4
    bl      init__Q38JASystem6TTrack8TNoteMgrFv
    li      r0, 0x1
    stb     r0, 0x3c4(r31)
    addi    r3, r31, 0x88
    stw     r30, 0x2c0(r31)
    bl      init__Q28JASystem8TIntrMgrFv
    mr      r3, r31
    bl      initTimed__Q28JASystem6TTrackFv
    lbz     r0, 0x3bc(r31)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8031cc24
    lwz     r4, 0x2c0(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x8031cc5c
branch_0x8031cc24:
    addi    r3, r31, 0x280
    bl      init__Q28JASystem14TRegisterParamFv
    li      r3, 0x0
    stb     r3, 0x3c5(r31)
    li      r0, 0x1a
    stb     r3, 0x3c8(r31)
    stb     r0, 0x14e(r31)
    stb     r3, 0x3c6(r31)
    stb     r3, 0x3c9(r31)
    stb     r0, 0x14f(r31)
    stb     r3, 0x3c7(r31)
    stb     r3, 0x3ca(r31)
    stb     r0, 0x150(r31)
    b       branch_0x8031ccd4

branch_0x8031cc5c:
    addi    r3, r31, 0x280
    addi    r4, r4, 0x280
    bl      inherit__Q28JASystem14TRegisterParamFRCQ28JASystem14TRegisterParam
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x3c5(r3)
    stb     r0, 0x3c5(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x3c8(r3)
    stb     r0, 0x3c8(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x14e(r3)
    stb     r0, 0x14e(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x3c6(r3)
    stb     r0, 0x3c6(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x3c9(r3)
    stb     r0, 0x3c9(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x14f(r3)
    stb     r0, 0x14f(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x3c7(r3)
    stb     r0, 0x3c7(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x3ca(r3)
    stb     r0, 0x3ca(r31)
    lwz     r3, 0x2c0(r31)
    lbz     r0, 0x150(r3)
    stb     r0, 0x150(r31)
branch_0x8031ccd4:
    li      r5, 0x0
    li      r4, 0x0
    b       branch_0x8031cd10

branch_0x8031cce0:
    clrlslwi  r3, r5, 24, 2
    addi    r3, r3, 0x2c4
    add     r3, r31, r3
    stw     r4, 0x0(r3)
    addi    r5, r5, 0x8
    stw     r4, 0x4(r3)
    stw     r4, 0x8(r3)
    stw     r4, 0xc(r3)
    stw     r4, 0x10(r3)
    stw     r4, 0x14(r3)
    stw     r4, 0x18(r3)
    stw     r4, 0x1c(r3)
branch_0x8031cd10:
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x10
    blt+    branch_0x8031cce0
    lis     r3, 0x803e
    addi    r7, r3, 0x35a0
    lwz     r6, 0x0(r7)
    lis     r3, 0x803e
    lwz     r4, 0x4(r7)
    li      r0, 0xf
    addi    r5, r3, 0x35b8
    stw     r6, 0x30c(r31)
    addi    r3, r31, 0x35c
    stw     r4, 0x310(r31)
    lwz     r6, 0x8(r7)
    lwz     r4, 0xc(r7)
    stw     r6, 0x314(r31)
    stw     r4, 0x318(r31)
    lwz     r6, 0x10(r7)
    lwz     r4, 0x14(r7)
    stw     r6, 0x31c(r31)
    stw     r4, 0x320(r31)
    stw     r0, 0x3a0(r31)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x324(r31)
    stw     r0, 0x328(r31)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x32c(r31)
    stw     r0, 0x330(r31)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x334(r31)
    stw     r0, 0x338(r31)
    bl      initStart__Q28JASystem11TOscillatorFv
    li      r0, 0xe
    stw     r0, 0x3a4(r31)
    li      r30, 0x0
    addi    r3, r31, 0x48
    stb     r30, 0x3bf(r31)
    stb     r30, 0x3c0(r31)
    bl      init__Q28JASystem10TTrackPortFv
    stb     r30, 0x3cc(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl startTrack__Q28JASystem6TTrackFPQ28JASystem6TTrackUcUcUl
startTrack__Q28JASystem6TTrackFPQ28JASystem6TTrackUcUcUl: # 0x8031cdd4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lwz     r8, 0x308(r4)
    slwi    r3, r8, 4
    or      r0, r3, r0
    clrrwi  r5, r8, 28
    addis   r3, r5, 0x1000
    clrlwi  r0, r0, 4
    or      r0, r3, r0
    stw     r0, 0x308(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x3a8(r31)
    addi    r5, r7, 0x0
    stb     r6, 0x3bc(r31)
    mr      r6, r4
    lwz     r4, 0x0(r4)
    bl      initTrack__Q28JASystem6TTrackFPvUlPQ28JASystem6TTrack
    lwz     r3, 0x304(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8031ce3c
    bl      initExtBuffer__Q38JASystem6TTrack11TOuterParamFv
branch_0x8031ce3c:
    addi    r3, r31, 0xec
    li      r4, 0x0
    bl      initAllocChannel__Q28JASystem11TChannelMgrFUl
    mr      r3, r31
    bl      updateTrackAll__Q28JASystem6TTrackFv
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl openTrack__Q28JASystem6TTrackFUc
openTrack__Q28JASystem6TTrackFUc: # 0x8031ce68
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 24, 2
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    add     r31, r3, r0
    lwzu    r0, 0x2c4(r31)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8031ce94
    bl      closeTrack__Q28JASystem6TTrackFv
branch_0x8031ce94:
    bl      getNewTrack__Q28JASystem8TrackMgrFv
    cmplwi  r3, 0x0
    bne-    branch_0x8031cea8
    li      r3, 0x0
    b       branch_0x8031ceac

branch_0x8031cea8:
    stw     r3, 0x0(r31)
branch_0x8031ceac:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadTbl__Q28JASystem6TTrackFUlUlUl
loadTbl__Q28JASystem6TTrackFUlUlUl: # 0x8031cec0
    mflr    r0
    cmpwi   r6, 0x6
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    beq-    branch_0x8031cf1c
    bge-    branch_0x8031cee8
    cmpwi   r6, 0x4
    beq-    branch_0x8031cef8
    bge-    branch_0x8031cf08
    b       branch_0x8031cf54

branch_0x8031cee8:
    cmpwi   r6, 0x8
    beq-    branch_0x8031cf48
    bge-    branch_0x8031cf54
    b       branch_0x8031cf34

branch_0x8031cef8:
    lwz     r3, 0x0(r3)
    add     r0, r4, r5
    lbzx    r0, r3, r0
    b       branch_0x8031cf54

branch_0x8031cf08:
    slwi    r0, r5, 1
    add     r4, r4, r0
    bl      get16__Q28JASystem8TSeqCtrlCFUl
    clrlwi  r0, r3, 16
    b       branch_0x8031cf54

branch_0x8031cf1c:
    slwi    r0, r5, 1
    add     r0, r5, r0
    add     r4, r4, r0
    bl      get24__Q28JASystem8TSeqCtrlCFUl
    mr      r0, r3
    b       branch_0x8031cf54

branch_0x8031cf34:
    slwi    r0, r5, 2
    add     r4, r4, r0
    bl      get32__Q28JASystem8TSeqCtrlCFUl
    mr      r0, r3
    b       branch_0x8031cf54

branch_0x8031cf48:
    add     r4, r4, r5
    bl      get32__Q28JASystem8TSeqCtrlCFUl
    mr      r0, r3
branch_0x8031cf54:
    mr      r3, r0
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl readReg32__Q28JASystem6TTrackFUc
readReg32__Q28JASystem6TTrackFUc: # 0x8031cf68
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x28
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bge-    branch_0x8031cf98
    cmpwi   r0, 0x23
    beq-    branch_0x8031cfb0
    b       branch_0x8031cfdc

branch_0x8031cf98:
    cmpwi   r0, 0x2c
    bge-    branch_0x8031cfdc
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r31, 0x200(r3)
    b       branch_0x8031cfe8

branch_0x8031cfb0:
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r31, r3, 16
    addi    r3, r30, 0x0
    slwi    r31, r31, 16
    li      r4, 0x5
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r0, r3, 16
    or      r31, r31, r0
    b       branch_0x8031cfe8

branch_0x8031cfdc:
    mr      r3, r30
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r31, r3, 16
branch_0x8031cfe8:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl exchangeRegisterValue__Q28JASystem6TTrackFUc
exchangeRegisterValue__Q28JASystem6TTrackFUc: # 0x8031d004
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x40
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bge-    branch_0x8031d094
    cmpwi   r0, 0x28
    bge-    branch_0x8031d03c
    cmpwi   r0, 0x23
    beq-    branch_0x8031d054
    b       branch_0x8031d080

branch_0x8031d03c:
    cmpwi   r0, 0x2c
    bge-    branch_0x8031d080
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r31, 0x200(r3)
    b       branch_0x8031d08c

branch_0x8031d054:
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r31, r3, 16
    addi    r3, r30, 0x0
    slwi    r31, r31, 16
    li      r4, 0x5
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r0, r3, 16
    or      r31, r31, r0
    b       branch_0x8031d08c

branch_0x8031d080:
    mr      r3, r30
    bl      readRegDirect__Q28JASystem6TTrackFUc
    clrlwi  r31, r3, 16
branch_0x8031d08c:
    mr      r3, r31
    b       branch_0x8031d0a4

branch_0x8031d094:
    subi    r0, r4, 0x40
    clrlslwi  r0, r0, 24, 1
    add     r3, r30, r0
    lhz     r3, 0x68(r3)
branch_0x8031d0a4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl readRegDirect__Q28JASystem6TTrackFUc
readRegDirect__Q28JASystem6TTrackFUc: # 0x8031d0bc
    mflr    r0
    clrlwi  r5, r4, 24
    stw     r0, 0x4(sp)
    subi    r0, r5, 0x20
    cmplwi  r0, 0x10
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    bgt-    branch_0x8031d2c8
    lis     r3, 0x803e
    addi    r3, r3, 0x36d8
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8031D104:		# jumptable 8031D100 case 0
    addi    r3, r31, 0x280
    bl      getBankNumber__Q28JASystem14TRegisterParamCFv
    clrlwi  r28, r3, 24
    b       branch_0x8031d2d4

branch_0x8031D114:		# jumptable 8031D100 case 1
addi	  r3, r31, 0x280
bl	  getProgramNumber__Q28JASystem14TRegisterParamCFv # JASystem::TRegisterParam::getProgramNumber(const(void))
clrlwi	  r28, r3, 24
b	  branch_0x8031d2d4

branch_0x8031D124:		# jumptable 8031D100 case 2
addi	  r3, r31, 0
li	  r4, 0
bl	  readRegDirect__Q28JASystem6TTrackFUc # JASystem::TTrack::readRegDirect((uchar))
clrlwi	  r3, r3, 16
li	  r0, 8
slw	  r0, r3, r0
addi	  r3, r31, 0
clrlwi	  r28, r0, 16
li	  r4, 1
bl	  readRegDirect__Q28JASystem6TTrackFUc # JASystem::TTrack::readRegDirect((uchar))
or	  r28, r28, r3
b	  branch_0x8031d2d4

branch_0x8031D154:		# jumptable 8031D100 case 12
li	  r0, 4
mtctr	  r0
li	  r28, 0
li	  r6, 0xF
li	  r3, 0x3C
li	  r4, 1

branch_0x8031D16C:
addi	  r0, r3, 0x2C4
lwzx	  r5, r31, r0
clrlwi	  r0, r28, 16
slw	  r0, r0, r4
cmplwi	  r5, 0
clrlwi	  r28, r0, 16
beq	  branch_0x8031D198
lbz	  r0, 0x3C4(r5)
cmplwi	  r0, 0
beq	  branch_0x8031D198
ori	  r28, r28, 1

branch_0x8031D198:
addi	  r0, r3, 0x2C0
lwzx	  r5, r31, r0
clrlwi	  r0, r28, 16
slw	  r0, r0, r4
cmplwi	  r5, 0
clrlwi	  r28, r0, 16
addi	  r3, r3, -4
beq	  branch_0x8031D1C8
lbz	  r0, 0x3C4(r5)
cmplwi	  r0, 0
beq	  branch_0x8031D1C8
ori	  r28, r28, 1

branch_0x8031D1C8:
addi	  r0, r3, 0x2C0
lwzx	  r5, r31, r0
clrlwi	  r0, r28, 16
slw	  r0, r0, r4
cmplwi	  r5, 0
clrlwi	  r28, r0, 16
addi	  r3, r3, -4
addi	  r6, r6, -1
beq	  branch_0x8031D1FC
lbz	  r0, 0x3C4(r5)
cmplwi	  r0, 0
beq	  branch_0x8031D1FC
ori	  r28, r28, 1

branch_0x8031D1FC:
addi	  r0, r3, 0x2C0
lwzx	  r5, r31, r0
clrlwi	  r0, r28, 16
slw	  r0, r0, r4
cmplwi	  r5, 0
clrlwi	  r28, r0, 16
addi	  r3, r3, -4
addi	  r6, r6, -1
beq	  branch_0x8031D230
lbz	  r0, 0x3C4(r5)
cmplwi	  r0, 0
beq	  branch_0x8031D230
ori	  r28, r28, 1

branch_0x8031D230:
addi	  r6, r6, -1
addi	  r3, r3, -4
bdnz	  branch_0x8031D16C
b	  branch_0x8031d2d4

branch_0x8031D240:		# jumptable 8031D100 case 13
li	  r28, 0
li	  r29, 7
li	  r30, 1

branch_0x8031D24C:
clrlwi	  r0, r28, 16
slw	  r0, r0, r30
addi	  r4, r29, 0
clrlwi	  r28, r0, 16
addi	  r3, r31, 0xB4
bl	  getChannel__Q38JASystem6TTrack8TNoteMgrFi # JASystem::TTrack::TNoteMgr::getChannel((int))
cmplwi	  r3, 0
bne	  branch_0x8031D274
li	  r0, 1
b	  branch_0x8031D28C

branch_0x8031D274:
lbz	  r0, 1(r3)
cmplwi	  r0, 0xFF
bne	  branch_0x8031D288
li	  r0, 1
b	  branch_0x8031D28C

branch_0x8031D288:
li	  r0, 0

branch_0x8031D28C:
addic.	  r29, r29, -1
clrlwi	  r0, r0, 24
or	  r28, r28, r0
bge	  branch_0x8031D24C
b	  branch_0x8031d2d4

branch_0x8031D2A0:		# jumptable 8031D100 case 16
lwz	  r0, 0xC(r31)
cmplwi	  r0, 0
bne	  branch_0x8031D2B4
li	  r0, 0
b	  branch_0x8031D2C0

branch_0x8031D2B4:
slwi	  r0, r0, 1
add	  r3, r31, r0
lhz	  r0, 0x2E(r3)

branch_0x8031D2C0:
mr	  r28, r0
b	  branch_0x8031d2d4

def_8031D100:		# jumptable 8031D100 default case
branch_0x8031d2c8:
    clrlslwi  r0, r4, 24, 1
    add     r3, r31, r0
    lhz     r28, 0x280(r3)
branch_0x8031d2d4:
    lwz     r0, 0x24(sp)
    mr      r3, r28
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl writeRegDirect__Q28JASystem6TTrackFUcUs
writeRegDirect__Q28JASystem6TTrackFUcUs: # 0x8031d2f8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x20
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    bge-    branch_0x8031d340
    cmpwi   r0, 0x3
    bge-    branch_0x8031d390
    cmpwi   r0, 0x0
    bge-    branch_0x8031d350
    b       branch_0x8031d390

branch_0x8031d340:
    cmpwi   r0, 0x22
    beq-    branch_0x8031d368
    bge-    branch_0x8031d390
    b       branch_0x8031d3a4

branch_0x8031d350:
    clrlwi  r29, r29, 24
    addi    r3, r29, 0x0
    bl      extend8to16__Q28JASystem6PlayerFUc
    mr      r4, r3
    b       branch_0x8031d394
    b       branch_0x8031d3a4

branch_0x8031d368:
    extrwi  r30, r29, 8, 16
    clrlwi  r31, r29, 16
    addi    r3, r30, 0x0
    bl      extend8to16__Q28JASystem6PlayerFUc
    sth     r30, 0x280(r28)
    addi    r4, r29, 0x0
    clrlwi  r29, r31, 24
    sth     r3, 0x286(r28)
    li      r30, 0x1
    b       branch_0x8031d394

branch_0x8031d390:
    mr      r4, r29
branch_0x8031d394:
    clrlslwi  r0, r30, 24, 1
    add     r3, r28, r0
    sth     r29, 0x280(r3)
    sth     r4, 0x286(r28)
branch_0x8031d3a4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl writePortAppDirect__Q28JASystem6TTrackFUlUs
writePortAppDirect__Q28JASystem6TTrackFUlUs: # 0x8031d3c4
    mflr    r0
    add     r6, r3, r4
    stw     r0, 0x4(sp)
    li      r7, 0x1
    slwi    r0, r4, 1
    stwu    sp, -0x8(sp)
    cmplwi  r4, 0x1
    stb     r7, 0x48(r6)
    add     r6, r3, r0
    sth     r5, 0x68(r6)
    bgt-    branch_0x8031d40c
    cmplwi  r4, 0x0
    bne-    branch_0x8031d400
    li      r4, 0x3
    b       branch_0x8031d404

branch_0x8031d400:
    li      r4, 0x4
branch_0x8031d404:
    addi    r3, r3, 0x88
    bl      request__Q28JASystem8TIntrMgrFUl
branch_0x8031d40c:
    lwz     r0, 0xc(sp)
    li      r3, 0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl readPortAppDirect__Q28JASystem6TTrackFUlPUs
readPortAppDirect__Q28JASystem6TTrackFUlPUs: # 0x8031d420
    add     r6, r3, r4
    li      r7, 0x0
    slwi    r0, r4, 1
    stb     r7, 0x58(r6)
    add     r3, r3, r0
    lhz     r0, 0x68(r3)
    li      r3, 0x1
    sth     r0, 0x0(r5)
    blr


.globl setExtFirFilterD__Q28JASystem6TTrackFPs
setExtFirFilterD__Q28JASystem6TTrackFPs: # 0x8031d444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x304(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8031d460
    bl      setFirFilter__Q38JASystem6TTrack11TOuterParamFPs
branch_0x8031d460:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl writePortApp__Q28JASystem6TTrackFUlUs
writePortApp__Q28JASystem6TTrackFUlUs: # 0x8031d470
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    srwi    r0, r4, 28
    cmplwi  r0, 0x0
    mtctr   r0
    stwu    sp, -0x8(sp)
    ble-    branch_0x8031d4b4
branch_0x8031d490:
    clrlslwi  r6, r7, 28, 2
    addi    r0, r6, 0x2c4
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    bne-    branch_0x8031d4ac
    li      r3, 0x0
    b       branch_0x8031d4b4

branch_0x8031d4ac:
    srwi    r7, r7, 4
    bdnz+      branch_0x8031d490
branch_0x8031d4b4:
    cmplwi  r3, 0x0
    bne-    branch_0x8031d4c4
    li      r3, 0x0
    b       branch_0x8031d508

branch_0x8031d4c4:
    extrwi  r8, r4, 8, 8
    add     r6, r3, r8
    li      r7, 0x1
    rlwinm  r0, r4, 17, 23, 30
    stb     r7, 0x48(r6)
    add     r4, r3, r0
    cmplwi  r8, 0x1
    sth     r5, 0x68(r4)
    bgt-    branch_0x8031d504
    cmplwi  r8, 0x0
    bne-    branch_0x8031d4f8
    li      r4, 0x3
    b       branch_0x8031d4fc

branch_0x8031d4f8:
    li      r4, 0x4
branch_0x8031d4fc:
    addi    r3, r3, 0x88
    bl      request__Q28JASystem8TIntrMgrFUl
branch_0x8031d504:
    li      r3, 0x1
branch_0x8031d508:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl readPortApp__Q28JASystem6TTrackFUlPUs
readPortApp__Q28JASystem6TTrackFUlPUs: # 0x8031d518
    srwi    r0, r4, 28
    cmplwi  r0, 0x0
    mtctr   r0
    addi    r7, r4, 0x0
    ble-    branch_0x8031d550
branch_0x8031d52c:
    clrlslwi  r6, r7, 28, 2
    addi    r0, r6, 0x2c4
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    bne-    branch_0x8031d548
    li      r3, 0x0
    b       branch_0x8031d550

branch_0x8031d548:
    srwi    r7, r7, 4
    bdnz+      branch_0x8031d52c
branch_0x8031d550:
    cmplwi  r3, 0x0
    bne-    branch_0x8031d560
    li      r3, 0x0
    blr

branch_0x8031d560:
    extrwi  r0, r4, 8, 8
    add     r6, r3, r0
    li      r7, 0x0
    rlwinm  r0, r4, 17, 23, 30
    stb     r7, 0x58(r6)
    add     r3, r3, r0
    lhz     r0, 0x68(r3)
    li      r3, 0x1
    sth     r0, 0x0(r5)
    blr


.globl pauseTrack__Q28JASystem6TTrackFUc
pauseTrack__Q28JASystem6TTrackFUc: # 0x8031d588
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r30, r3, 0x0
    mr      r31, r4
    stb     r0, 0x3cd(r3)
    lbz     r0, 0x3c1(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8031d5c0
    lwz     r0, 0x3b4(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x3b4(r30)
branch_0x8031d5c0:
    lbz     r0, 0x3c1(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8031d614
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x8031d608

branch_0x8031d5d8:
    clrlwi  r28, r27, 24
    addi    r4, r28, 0x0
    addi    r3, r30, 0xb4
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    beq-    branch_0x8031d604
    li      r4, 0xa
    bl      stop__Q28JASystem8TChannelFUs
    slwi    r3, r28, 2
    addi    r0, r3, 0xb4
    stwx    r29, r30, r0
branch_0x8031d604:
    addi    r27, r27, 0x1
branch_0x8031d608:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031d5d8
branch_0x8031d614:
    lbz     r0, 0x3c1(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8031d654
    li      r27, 0x0
    b       branch_0x8031d648

branch_0x8031d628:
    addi    r3, r30, 0xb4
    clrlwi  r4, r27, 24
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    beq-    branch_0x8031d644
    li      r4, 0x1
    bl      setPauseFlag__Q28JASystem8TChannelFUc
branch_0x8031d644:
    addi    r27, r27, 0x1
branch_0x8031d648:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031d628
branch_0x8031d654:
    addi    r3, r30, 0x88
    li      r4, 0x0
    bl      request__Q28JASystem8TIntrMgrFUl
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8031d6a8
    li      r27, 0x0
    li      r31, 0x0
branch_0x8031d674:
    addi    r0, r31, 0x2c4
    lwzx    r3, r30, r0
    cmplwi  r3, 0x0
    beq-    branch_0x8031d698
    lbz     r0, 0x3c4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031d698
    li      r4, 0x1
    bl      pauseTrack__Q28JASystem6TTrackFUc
branch_0x8031d698:
    addi    r27, r27, 0x1
    cmplwi  r27, 0x10
    addi    r31, r31, 0x4
    blt+    branch_0x8031d674
branch_0x8031d6a8:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl unPauseTrack__Q28JASystem6TTrackFUc
unPauseTrack__Q28JASystem6TTrackFUc: # 0x8031d6bc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    stb     r0, 0x3cd(r3)
    lwz     r0, 0x3b4(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x3b4(r3)
    b       branch_0x8031d718

branch_0x8031d6f8:
    addi    r3, r29, 0xb4
    clrlwi  r4, r31, 24
    bl      getChannel__Q38JASystem6TTrack8TNoteMgrFi
    cmplwi  r3, 0x0
    beq-    branch_0x8031d714
    li      r4, 0x0
    bl      setPauseFlag__Q28JASystem8TChannelFUc
branch_0x8031d714:
    addi    r31, r31, 0x1
branch_0x8031d718:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031d6f8
    addi    r3, r29, 0x88
    li      r4, 0x1
    bl      request__Q28JASystem8TIntrMgrFUl
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8031d77c
    li      r31, 0x0
    b       branch_0x8031d770

branch_0x8031d744:
    clrlslwi  r3, r31, 24, 2
    addi    r0, r3, 0x2c4
    lwzx    r3, r29, r0
    cmplwi  r3, 0x0
    beq-    branch_0x8031d76c
    lbz     r0, 0x3c4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031d76c
    li      r4, 0x1
    bl      unPauseTrack__Q28JASystem6TTrackFUc
branch_0x8031d76c:
    addi    r31, r31, 0x1
branch_0x8031d770:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x8031d744
branch_0x8031d77c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl pauseTrackAll__Q28JASystem6TTrackFv
pauseTrackAll__Q28JASystem6TTrackFv: # 0x8031d798
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      pauseTrack__Q28JASystem6TTrackFUc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl unPauseTrackAll__Q28JASystem6TTrackFv
unPauseTrackAll__Q28JASystem6TTrackFv: # 0x8031d7bc
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      unPauseTrack__Q28JASystem6TTrackFUc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__Q28JASystem6TTrackFv
reset__Q28JASystem6TTrackFv: # 0x8031d7e0
    li      r0, 0x0
    stb     r0, 0x3c4(r3)
    stb     r0, 0x3c2(r3)
    blr


.globl panCalc__Q28JASystem6TTrackFfffUc
panCalc__Q28JASystem6TTrackFfffUc: # 0x8031d7f0
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x1
    beq-    branch_0x8031d81c
    bge-    branch_0x8031d80c
    cmpwi   r0, 0x0
    bgelr-    

    b       branch_0x8031d834

branch_0x8031d80c:
    cmpwi   r0, 0x3
    bge-    branch_0x8031d834
    b       branch_0x8031d824
    blr

branch_0x8031d81c:
    fmr     f1, f2
    blr

branch_0x8031d824:
    lfs     f4, 0x77c(rtoc)
    fmuls   f0, f2, f3
    fsubs   f2, f4, f3
    fmadds  f0, f1, f2, f0
branch_0x8031d834:
    fmr     f1, f0
    blr


.globl rootCallback__Q28JASystem6TTrackFPv
rootCallback__Q28JASystem6TTrackFPv: # 0x8031d83c
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x8031d99c
    lbz     r0, 0x3c4(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8031d99c
    cmplwi  r0, 0x3
    bne-    branch_0x8031d8a4
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      updateSeq__Q28JASystem6TTrackFUlb
    mr      r3, r28
    bl      closeTrack__Q28JASystem6TTrackFv
    mr      r3, r28
    bl      deAllocRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
    li      r3, -0x1
    b       branch_0x8031d9a8

branch_0x8031d8a4:
    lfs     f1, 0x3ac(r28)
    lfs     f0, 0x3b0(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x3ac(r28)
    lfs     f0, 0x3ac(r28)
    lfs     f31, 0x77c(rtoc)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8031d920
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      updateSeq__Q28JASystem6TTrackFUlb
    b       branch_0x8031d930

branch_0x8031d8d8:
    lfs     f0, 0x3ac(r28)
    mr      r3, r28
    fsubs   f0, f0, f31
    stfs    f0, 0x3ac(r28)
    bl      mainProc__Q28JASystem6TTrackFv
    extsb   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8031d920
    addi    r3, r28, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      updateSeq__Q28JASystem6TTrackFUlb
    mr      r3, r28
    bl      closeTrack__Q28JASystem6TTrackFv
    mr      r3, r28
    bl      deAllocRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
    li      r3, -0x1
    b       branch_0x8031d9a8

branch_0x8031d920:
    lfs     f0, 0x3ac(r28)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    beq+    branch_0x8031d8d8
branch_0x8031d930:
    li      r29, 0x0
    addi    r30, r29, 0x0
    li      r31, 0x0
branch_0x8031d93c:
    addi    r0, r30, 0x3a0
    lwzx    r0, r28, r0
    cmpwi   r0, 0xe
    bne-    branch_0x8031d958
    addi    r3, r31, 0x33c
    add     r3, r28, r3
    bl      getOffset__Q28JASystem11TOscillatorFv
branch_0x8031d958:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r31, r31, 0x20
    addi    r30, r30, 0x4
    blt+    branch_0x8031d93c
    li      r30, 0x0
    li      r31, 0x0
branch_0x8031d974:
    addi    r0, r31, 0x2c4
    lwzx    r3, r28, r0
    cmplwi  r3, 0x0
    beq-    branch_0x8031d988
    bl      incSelfOsc__Q28JASystem6TTrackFv
branch_0x8031d988:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x10
    addi    r31, r31, 0x4
    blt+    branch_0x8031d974
    b       branch_0x8031d9a4

branch_0x8031d99c:
    li      r3, -0x1
    b       branch_0x8031d9a8

branch_0x8031d9a4:
    li      r3, 0x0
branch_0x8031d9a8:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x28
    blr


.globl registerTrackCallback__Q28JASystem6TTrackFPFPQ28JASystem6TTrackUs_Us
registerTrackCallback__Q28JASystem6TTrackFPFPQ28JASystem6TTrackUs_Us: # 0x8031d9cc
    stw     r3, -0x5b0c(r13)
    li      r3, 0x1
    blr


.globl __sinit_JASTrack_cpp
__sinit_JASTrack_cpp: # 0x8031d9d8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2050
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    bl      setSeed__Q25JMath15TRandom_enough_FUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

