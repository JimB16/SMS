
.globl JSGFindObject__12TMarDirectorCFPCcQ26JStage8TEObject
JSGFindObject__12TMarDirectorCFPCcQ26JStage8TEObject: # 0x80297490
    mflr    r0
    lis     r6, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x2858
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r3, r31, 0xf8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80297508
    addi    r30, r28, 0x0
    addi    r3, r31, 0x104
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x104
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80297564
    addi    r3, r3, 0x20
    b       branch_0x80297564

branch_0x80297508:
    subi    r3, rtoc, 0x600
    addi    r4, r29, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80297554
    addi    r30, r28, 0x0
    subi    r3, rtoc, 0x5f8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x5f8
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80297564
    addi    r3, r3, 0x20
    b       branch_0x80297564

branch_0x80297554:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      JSGFindObject__Q26JDrama9TDirectorCFPCcQ26JStage8TEObject
branch_0x80297564:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl moveStage__12TMarDirectorFv
moveStage__12TMarDirectorFv: # 0x80297584
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x5
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0x54
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    stb     r0, 0xb4(r3)
    li      r0, 0xf
    lis     r3, 0x803f
    stw     r0, 0xe4(r31)
    subi    r28, r3, 0x6900
    li      r0, 0xff
    stb     r5, 0x50(sp)
    addi    r30, r28, 0x34
    stb     r5, 0x51(sp)
    stb     r5, 0x52(sp)
    stb     r0, 0x53(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x34(r28)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    addi    r29, r28, 0x12
    lbz     r3, 0x12(r28)
    bl      SMS_getShineStage__FUc
    lbz     r0, 0xe(r28)
    addi    r28, r3, 0x0
    mr      r3, r0
    bl      SMS_getShineStage__FUc
    clrlwi  r4, r28, 24
    clrlwi  r0, r3, 24
    cmplw   r4, r0
    beq-    branch_0x8029762c
    lis     r4, 0x4
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x2
    li      r5, 0x0
    bl      setFlag__12TFlagManagerFUll
branch_0x8029762c:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0xff
    bne-    branch_0x802978e8
    lbz     r0, 0x0(r29)
    cmpwi   r0, 0xd
    beq-    branch_0x802976cc
    bge-    branch_0x8029767c
    cmpwi   r0, 0x7
    beq-    branch_0x80297784
    bge-    branch_0x8029766c
    cmpwi   r0, 0x1
    beq-    branch_0x802976a0
    bge-    branch_0x80297848
    cmpwi   r0, 0x0
    bge-    branch_0x802978b8
    b       branch_0x802978d8

branch_0x8029766c:
    cmpwi   r0, 0x9
    beq-    branch_0x80297858
    bge-    branch_0x802978d8
    b       branch_0x80297848

branch_0x8029767c:
    cmpwi   r0, 0x34
    beq-    branch_0x80297890
    bge-    branch_0x80297694
    cmpwi   r0, 0xf
    bge-    branch_0x802978d8
    b       branch_0x80297800

branch_0x80297694:
    cmpwi   r0, 0x3a
    beq-    branch_0x8029773c
    b       branch_0x802978d8

branch_0x802976a0:
    li      r0, 0x2
    stw     r0, 0xe4(r31)
    lbz     r3, 0x0(r29)
    bl      decideNextScenario__FUc
    stb     r3, 0x1(r29)
    lis     r3, 0x4
    addi    r4, r3, 0x3
    lwz     r3, -0x6060(r13)
    li      r5, 0x0
    bl      setFlag__12TFlagManagerFUll
    b       branch_0x802978e8

branch_0x802976cc:
    li      r0, 0x2
    stw     r0, 0xe4(r31)
    lis     r3, 0x4
    addi    r4, r3, 0x3
    lwz     r3, -0x6060(r13)
    li      r28, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmplwi  r3, 0x7
    bgt-    branch_0x80297734
    lis     r4, 0x803e
    subi    r4, r4, 0x1028
    slwi    r0, r3, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    li      r28, 0x0
    b       branch_0x80297734


.incbin "./baserom/code/Text_0x80005600.bin", 0x292110, 0x80297734 - 0x80297710
branch_0x80297734:
    stb     r28, 0x1(r29)
    b       branch_0x802978e8

branch_0x8029773c:
    li      r0, 0x2
    stw     r0, 0xe4(r31)
    lis     r3, 0x4
    addi    r4, r3, 0x3
    lwz     r3, -0x6060(r13)
    li      r28, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x7
    beq-    branch_0x80297778
    bge-    branch_0x8029777c
    cmpwi   r3, 0x0
    beq-    branch_0x80297770
    b       branch_0x8029777c

branch_0x80297770:
    li      r28, 0x1
    b       branch_0x8029777c

branch_0x80297778:
    li      r28, 0x0
branch_0x8029777c:
    stb     r28, 0x1(r29)
    b       branch_0x802978e8

branch_0x80297784:
    li      r0, 0x2
    stw     r0, 0xe4(r31)
    lis     r3, 0x4
    addi    r4, r3, 0x3
    lwz     r3, -0x6060(r13)
    li      r28, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x5
    beq-    branch_0x802977f8
    bge-    branch_0x802977c4
    cmpwi   r3, 0x2
    beq-    branch_0x802977dc
    bge-    branch_0x802977e4
    cmpwi   r3, 0x1
    bge-    branch_0x802977d4
    b       branch_0x802977f8

branch_0x802977c4:
    cmpwi   r3, 0x7
    beq-    branch_0x802977f4
    bge-    branch_0x802977f8
    b       branch_0x802977ec

branch_0x802977d4:
    li      r28, 0x0
    b       branch_0x802977f8

branch_0x802977dc:
    li      r28, 0x1
    b       branch_0x802977f8

branch_0x802977e4:
    li      r28, 0x2
    b       branch_0x802977f8

branch_0x802977ec:
    li      r28, 0x3
    b       branch_0x802977f8

branch_0x802977f4:
    li      r28, 0x4
branch_0x802977f8:
    stb     r28, 0x1(r29)
    b       branch_0x802978e8

branch_0x80297800:
    li      r0, 0x2
    stw     r0, 0xe4(r31)
    lis     r3, 0x4
    addi    r4, r3, 0x3
    lwz     r3, -0x6060(r13)
    li      r28, 0x0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x4
    beq-    branch_0x8029783c
    bge-    branch_0x80297840
    cmpwi   r3, 0x3
    bge-    branch_0x80297834
    b       branch_0x80297840

branch_0x80297834:
    li      r28, 0x0
    b       branch_0x80297840

branch_0x8029783c:
    li      r28, 0x1
branch_0x80297840:
    stb     r28, 0x1(r29)
    b       branch_0x802978e8

branch_0x80297848:
    li      r0, 0x8
    stw     r0, 0xe4(r31)
    stb     r0, 0xb4(r31)
    b       branch_0x802978e8

branch_0x80297858:
    li      r3, 0xd2
    stb     r3, 0x48(sp)
    li      r0, 0xff
    addi    r4, sp, 0x4c
    stb     r3, 0x49(sp)
    stb     r3, 0x4a(sp)
    stb     r0, 0x4b(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r3, 0x0(r30)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    li      r0, 0x8
    stb     r0, 0xb4(r31)
    b       branch_0x802978e8

branch_0x80297890:
    li      r0, 0x8
    stw     r0, 0xe4(r31)
    li      r0, 0x0
    lis     r3, 0x4
    stb     r0, 0x1(r29)
    addi    r4, r3, 0x3
    li      r5, 0x0
    lwz     r3, -0x6060(r13)
    bl      setFlag__12TFlagManagerFUll
    b       branch_0x802978e8

branch_0x802978b8:
    li      r0, 0x0
    stb     r0, 0x1(r29)
    lis     r3, 0x4
    addi    r4, r3, 0x3
    lwz     r3, -0x6060(r13)
    li      r5, 0x0
    bl      setFlag__12TFlagManagerFUll
    b       branch_0x802978e8

branch_0x802978d8:
    li      r0, 0x2
    stw     r0, 0xe4(r31)
    li      r0, 0x0
    stb     r0, 0x1(r29)
branch_0x802978e8:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0xff
    beq-    branch_0x80297948
    lhz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80297940
    li      r0, 0xf
    stw     r0, 0xe4(r31)
    li      r3, 0x0
    li      r0, 0xff
    stb     r3, 0x40(sp)
    addi    r4, sp, 0x44
    stb     r3, 0x41(sp)
    stb     r3, 0x42(sp)
    stb     r0, 0x43(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r3, 0x0(r30)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    li      r0, 0x6
    stb     r0, 0xb4(r31)
    b       branch_0x80297948

branch_0x80297940:
    li      r0, 0x5
    stb     r0, 0xb4(r31)
branch_0x80297948:
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80297960
    li      r0, 0x1
    b       branch_0x80297964

branch_0x80297960:
    li      r0, 0x0
branch_0x80297964:
    clrlwi. r0, r0, 24
    beq-    branch_0x80297994
    lwz     r3, 0x3e4(r3)
    lbz     r0, 0x1c85(r3)
    cmpwi   r0, 0x3
    mr      r5, r0
    bne-    branch_0x80297984
    li      r5, 0x4
branch_0x80297984:
    lis     r4, 0x4
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x4
    bl      setFlag__12TFlagManagerFUll
branch_0x80297994:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl updateGameMode__12TMarDirectorFv
updateGameMode__12TMarDirectorFv: # 0x802979b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stw     r31, 0x12c(sp)
    mr      r31, r3
    stw     r30, 0x128(sp)
    stw     r29, 0x124(sp)
    stw     r28, 0x120(sp)
    lbz     r0, 0x124(r3)
    lis     r3, 0x803a
    lbz     r29, 0x64(r31)
    addi    r4, r3, 0x2858
    cmpwi   r0, 0x2
    beq-    branch_0x80297e4c
    bge-    branch_0x802979fc
    cmpwi   r0, 0x0
    beq-    branch_0x80297a08
    b       branch_0x80297ff4

branch_0x802979fc:
    cmpwi   r0, 0x5
    bge-    branch_0x80297ff4
    b       branch_0x80297e80

branch_0x80297a08:
    lhz     r3, 0x4c(r31)
    clrlwi. r0, r3, 19
    bne-    branch_0x80297b10
    lwz     r3, -0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80297a2c
    li      r0, 0x1
    b       branch_0x80297a30

branch_0x80297a2c:
    li      r0, 0x0
branch_0x80297a30:
    clrlwi. r0, r0, 24
    beq-    branch_0x80297a48
    lhz     r0, 0x4c(r31)
    ori     r0, r0, 0x20
    sth     r0, 0x4c(r31)
    b       branch_0x80297ff4

branch_0x80297a48:
    lbz     r0, 0x7c(r31)
    cmplwi  r0, 0xf
    beq-    branch_0x80297ff4
    lwz     r3, 0x18(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x1c(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80297a70
    li      r29, 0xa
    b       branch_0x80297ff4

branch_0x80297a70:
    lwz     r0, 0xd4(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80297ff4
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80297a94
    li      r0, 0x1
    b       branch_0x80297a98

branch_0x80297a94:
    li      r0, 0x0
branch_0x80297a98:
    clrlwi. r0, r0, 24
    beq-    branch_0x80297aa8
    li      r0, 0x1
    b       branch_0x80297ad4

branch_0x80297aa8:
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80297abc
    li      r0, 0x1
    b       branch_0x80297ac0

branch_0x80297abc:
    li      r0, 0x0
branch_0x80297ac0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80297ad0
    li      r0, 0x0
    b       branch_0x80297ad4

branch_0x80297ad0:
    li      r0, 0x1
branch_0x80297ad4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80297ae4
    li      r29, 0x5
    b       branch_0x80297ff4

branch_0x80297ae4:
    lwz     r3, -0x6044(r13)
    li      r4, 0x483d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80297ff4
    li      r3, 0x483d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80297ff4

branch_0x80297b10:
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x80297b40
    lhz     r0, 0x4c(r31)
    lis     r3, 0x4
    addi    r4, r3, 0x2
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0x4c(r31)
    li      r29, 0x7
    li      r5, 0x0
    lwz     r3, -0x6060(r13)
    bl      setFlag__12TFlagManagerFUll
    b       branch_0x80297ff4

branch_0x80297b40:
    clrlwi. r0, r3, 31
    beq-    branch_0x80297c8c
    lhz     r3, 0x4c(r31)
    li      r0, 0x3
    clrrwi  r3, r3, 1
    sth     r3, 0x4c(r31)
    stb     r0, 0x126(r31)
    lwz     r3, -0x6048(r13)
    lwz     r28, 0x74(r3)
    lwz     r3, 0x94(r28)
    bl      startAppearShineGet__11TConsoleStrFv
    li      r30, 0x1
    lis     r3, 0x8001
    stb     r30, 0x47(r28)
    addi    r3, r3, 0xa
    bl      startBGM__5MSBgmFUl
    lis     r4, 0x3
    lwz     r3, -0x6060(r13)
    addi    r5, r4, 0x6
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lwz     r4, 0x25c(r31)
    lwz     r3, -0x6060(r13)
    lwz     r0, 0x134(r4)
    clrlwi  r4, r0, 24
    bl      setShineFlag__12TFlagManagerFUc
    lwz     r3, 0xdc(r31)
    lfs     f1, -0x5f0(rtoc)
    lfs     f2, 0x14(r3)
    lfs     f0, -0x5ec(rtoc)
    fmuls   f1, f1, f2
    fmuls   f0, f0, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x118(sp)
    stfd    f0, 0x110(sp)
    lwz     r4, 0x11c(sp)
    lwz     r5, 0x114(sp)
    bl      registFadeout__11TShineFaderFUsUs
    lhz     r4, 0x4c(r31)
    li      r0, 0x6
    addi    r3, sp, 0xea
    ori     r4, r4, 0x8202
    sth     r4, 0x4c(r31)
    li      r4, 0x0
    stb     r0, 0x261(r31)
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    li      r28, 0x0
    sth     r28, 0x90(sp)
    addi    r6, sp, 0x90
    addi    r3, sp, 0xe8
    li      r4, 0x0
    li      r5, 0x0
    bl      set__13TGameSequenceFUcUcQ26JDrama10TFlagT_Us_
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r3, 0xe(r3)
    bl      SMS_getShineStage__FUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80297c38
    blt-    branch_0x80297c4c
    b       branch_0x80297c4c

branch_0x80297c38:
    stb     r30, 0xe8(sp)
    li      r0, 0xff
    stb     r0, 0xe9(sp)
    sth     r28, 0xea(sp)
    b       branch_0x80297c64

branch_0x80297c4c:
    li      r0, 0x1
    stb     r0, 0xe8(sp)
    li      r3, 0xff
    li      r0, 0x0
    stb     r3, 0xe9(sp)
    sth     r0, 0xea(sp)
branch_0x80297c64:
    lhz     r0, 0xea(sp)
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r4, 0xe8(sp)
    sth     r0, 0x8c(sp)
    lbz     r5, 0xe9(sp)
    addi    r6, sp, 0x8c
    addi    r3, r3, 0x12
    bl      set__13TGameSequenceFUcUcQ26JDrama10TFlagT_Us_
    b       branch_0x80297ff4

branch_0x80297c8c:
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x80297ca0
    li      r0, 0x3
    stb     r0, 0x126(r31)
    b       branch_0x80297ff4

branch_0x80297ca0:
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x80297cbc
    lhz     r0, 0x4c(r31)
    li      r29, 0xb
    rlwinm  r0, r0, 0, 23, 21
    sth     r0, 0x4c(r31)
    b       branch_0x80297ff4

branch_0x80297cbc:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80297dd0
    lhz     r0, 0x4c(r31)
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x4c(r31)
    li      r0, 0x3
    addi    r5, r3, 0x12
    lhz     r3, 0x4c(r31)
    ori     r3, r3, 0x2
    sth     r3, 0x4c(r31)
    stb     r0, 0x126(r31)
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x5
    bne-    branch_0x80297d48
    li      r0, 0x0
    sth     r0, 0x10c(sp)
    addi    r0, sp, 0x10c
    addi    r3, r31, 0x0
    stw     r0, 0x8(sp)
    addi    r4, r4, 0x110
    li      r5, 0x0
    lfs     f1, -0x5e8(rtoc)
    li      r6, -0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, 0x254(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80297ff4
    bl      startDemo__11TDemoCannonFv
    b       branch_0x80297ff4

branch_0x80297d48:
    cmplwi  r0, 0x6
    bne-    branch_0x80297d8c
    li      r0, 0x0
    sth     r0, 0x108(sp)
    addi    r0, sp, 0x108
    addi    r3, r31, 0x0
    stw     r0, 0x8(sp)
    addi    r4, r4, 0x124
    li      r5, 0x0
    lfs     f1, -0x5e8(rtoc)
    li      r6, -0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x80297ff4

branch_0x80297d8c:
    cmplwi  r0, 0x8
    bne-    branch_0x80297ff4
    li      r0, 0x0
    sth     r0, 0x104(sp)
    addi    r0, sp, 0x104
    addi    r3, r31, 0x0
    stw     r0, 0x8(sp)
    addi    r4, r4, 0x13c
    li      r5, 0x0
    lfs     f1, -0x5e8(rtoc)
    li      r6, -0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x80297ff4

branch_0x80297dd0:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x80297e34
    lhz     r3, 0x4c(r31)
    li      r8, 0x3
    li      r0, 0x1
    rlwinm  r3, r3, 0, 30, 28
    sth     r3, 0x4c(r31)
    addi    r10, sp, 0x100
    addi    r3, r31, 0x0
    lhz     r6, 0x4c(r31)
    li      r4, 0x0
    li      r5, 0x0
    ori     r6, r6, 0x2
    sth     r6, 0x4c(r31)
    li      r6, -0x1
    li      r7, 0x0
    stb     r8, 0x126(r31)
    li      r8, 0x0
    li      r9, 0x0
    sth     r0, 0x100(sp)
    stw     r10, 0x8(sp)
    lfs     f1, -0x5e8(rtoc)
    lwz     r10, 0x250(r31)
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x80297ff4

branch_0x80297e34:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80297ff4
    mr      r3, r31
    bl      moveStage__12TMarDirectorFv
    li      r29, 0x9
    b       branch_0x80297ff4

branch_0x80297e4c:
    lhz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80297e64
    li      r0, 0x4
    stb     r0, 0x126(r31)
    b       branch_0x80297ff4

branch_0x80297e64:
    lwz     r3, 0xb0(r31)
    lwz     r0, 0x248(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80297ff4
    li      r0, 0x0
    stb     r0, 0x126(r31)
    b       branch_0x80297ff4

branch_0x80297e80:
    lhz     r0, 0x4c(r31)
    li      r28, 0x0
    li      r30, 0x0
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80297eac
    lhz     r0, 0x4c(r31)
    li      r30, 0x1
    li      r28, 0x1
    rlwinm  r0, r0, 0, 25, 23
    sth     r0, 0x4c(r31)
    b       branch_0x80297ef4

branch_0x80297eac:
    lwz     r3, -0x7118(r13)
    bl      getRestDemoFrames__15CPolarSubCameraCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80297ef4
    li      r3, 0x2
    bl      getHandle__5MSBgmFUc
    cmplwi  r3, 0x0
    beq-    branch_0x80297ee0
    lwz     r3, 0x60(r31)
    lwz     r0, 0x5c(r31)
    subf    r0, r3, r0
    cmpwi   r0, 0x2d0
    blt-    branch_0x80297ef4
branch_0x80297ee0:
    lbz     r0, 0x24d(r31)
    li      r28, 0x1
    mulli   r0, r0, 0x24
    add     r3, r31, r0
    lbz     r30, 0x13c(r3)
branch_0x80297ef4:
    clrlwi. r0, r28, 24
    beq-    branch_0x80297ff4
    lbz     r3, 0x24d(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x24d(r31)
    mulli   r3, r3, 0x24
    lbz     r0, 0x24d(r31)
    addi    r28, r3, 0x12c
    clrlwi  r0, r0, 29
    stb     r0, 0x24d(r31)
    add     r28, r31, r28
    lbz     r3, 0x24d(r31)
    lbz     r0, 0x24c(r31)
    cmplw   r3, r0
    beq-    branch_0x80297fa0
    lwz     r3, -0x7118(r13)
    bl      endDemoCamera__15CPolarSubCameraFv
    lwz     r12, 0x14(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x80297f54
    lwz     r3, 0x18(r28)
    mtlr    r12
    li      r4, 0x1
    blrl
branch_0x80297f54:
    lbz     r0, 0x24d(r31)
    lwz     r3, -0x7118(r13)
    mulli   r4, r0, 0x24
    addi    r28, r4, 0x12c
    add     r28, r31, r28
    lwz     r4, 0x0(r28)
    lwz     r5, 0x4(r28)
    lwz     r6, 0x8(r28)
    lfs     f1, 0xc(r28)
    lbz     r7, 0x10(r28)
    bl      startDemoCamera__15CPolarSubCameraFPCcPCQ29JGeometry8TVec3_f_lfb
    lwz     r12, 0x14(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x80297ff4
    lwz     r3, 0x18(r28)
    mtlr    r12
    li      r4, 0x0
    blrl
    b       branch_0x80297ff4

branch_0x80297fa0:
    lhz     r0, 0x4c(r31)
    rlwinm  r0, r0, 0, 26, 24
    sth     r0, 0x4c(r31)
    lbz     r0, 0x124(r31)
    cmplwi  r0, 0x4
    bne-    branch_0x80297fc0
    li      r3, 0x2
    b       branch_0x80297fc4

branch_0x80297fc0:
    li      r3, 0x0
branch_0x80297fc4:
    clrlwi. r0, r30, 24
    stb     r3, 0x126(r31)
    beq-    branch_0x80297fd8
    lwz     r3, -0x7118(r13)
    bl      endDemoCamera__15CPolarSubCameraFv
branch_0x80297fd8:
    lwz     r12, 0x14(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x80297ff4
    lwz     r3, 0x18(r28)
    mtlr    r12
    li      r4, 0x1
    blrl
branch_0x80297ff4:
    lbz     r3, 0x24d(r31)
    lbz     r0, 0x24c(r31)
    cmplw   r3, r0
    bne-    branch_0x80298010
    lhz     r0, 0x4c(r31)
    rlwinm  r0, r0, 0, 26, 24
    sth     r0, 0x4c(r31)
branch_0x80298010:
    lbz     r0, 0x124(r31)
    stb     r0, 0x125(r31)
    lbz     r0, 0x124(r31)
    lbz     r3, 0x126(r31)
    cmplw   r0, r3
    beq-    branch_0x802981ec
    cmpwi   r0, 0x2
    beq-    branch_0x80298040
    blt-    branch_0x802980b0
    cmpwi   r0, 0x5
    bge-    branch_0x802980b0
    b       branch_0x80298074

branch_0x80298040:
    cmplwi  r3, 0x0
    bne-    branch_0x802980b0
    li      r0, 0x0
    stw     r0, 0xa0(r31)
    addi    r3, r31, 0xe8
    stw     r0, 0xa4(r31)
    lwz     r4, 0x18(r31)
    lwz     r4, 0x0(r4)
    lhz     r0, 0xe2(r4)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xe2(r4)
    bl      OSStartStopwatch
    b       branch_0x802980b0

branch_0x80298074:
    cmplwi  r0, 0x4
    bne-    branch_0x80298090
    subfic  r0, r0, 0x4
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      fromTalkingCameraDemo__10MSMainProcFb
    b       branch_0x80298094

branch_0x80298090:
    bl      fromInnerCameraDemo__10MSMainProcFv
branch_0x80298094:
    lwz     r4, 0x18(r31)
    addi    r3, r31, 0xe8
    lwz     r4, 0x0(r4)
    lhz     r0, 0xe2(r4)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xe2(r4)
    bl      OSStartStopwatch
branch_0x802980b0:
    lbz     r0, 0x126(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8029811c
    bge-    branch_0x802980d0
    cmpwi   r0, 0x0
    beq-    branch_0x802981e4
    bge-    branch_0x802980dc
    b       branch_0x802981e4

branch_0x802980d0:
    cmpwi   r0, 0x5
    bge-    branch_0x802981e4
    b       branch_0x80298138

branch_0x802980dc:
    lwz     r4, 0xa0(r31)
    addi    r3, r31, 0xe8
    lwz     r0, 0xf0(r4)
    oris    r0, r0, 0x4
    stw     r0, 0xf0(r4)
    lwz     r4, 0xa0(r31)
    lhz     r0, 0xc(r4)
    clrrwi  r0, r0, 2
    sth     r0, 0xc(r4)
    lwz     r4, 0x18(r31)
    lwz     r4, 0x0(r4)
    lhz     r0, 0xe2(r4)
    ori     r0, r0, 0x8
    sth     r0, 0xe2(r4)
    bl      OSStopStopwatch
    b       branch_0x802981e4

branch_0x8029811c:
    lbz     r0, 0x124(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802981e4
    lwz     r3, 0xb0(r31)
    lwz     r4, 0xa0(r31)
    bl      openTalkWindow__8TTalk2D2FP8TBaseNPC
    b       branch_0x802981e4

branch_0x80298138:
    cmplwi  r0, 0x4
    bne-    branch_0x80298148
    bl      toTalkingCameraDemo__10MSMainProcFv
    b       branch_0x8029814c

branch_0x80298148:
    bl      toInnerCameraDemo__10MSMainProcFv
branch_0x8029814c:
    lwz     r3, 0x18(r31)
    lwz     r3, 0x0(r3)
    lhz     r0, 0xe2(r3)
    ori     r0, r0, 0x10
    sth     r0, 0xe2(r3)
    lbz     r0, 0x24d(r31)
    mulli   r3, r0, 0x24
    addi    r0, r3, 0x14c
    lhzx    r0, r31, r0
    cmpwi   r0, 0x1
    bne-    branch_0x8029818c
    add     r4, r31, r3
    lwz     r3, -0x7118(r13)
    lwz     r4, 0x148(r4)
    bl      startGateDemoCamera__15CPolarSubCameraFPCQ26JDrama6TActor
    b       branch_0x802981d4

branch_0x8029818c:
    add     r7, r31, r3
    lwz     r3, -0x7118(r13)
    lwz     r4, 0x12c(r7)
    lwz     r5, 0x130(r7)
    lwz     r6, 0x134(r7)
    lfs     f1, 0x138(r7)
    lbz     r7, 0x13c(r7)
    bl      startDemoCamera__15CPolarSubCameraFPCcPCQ29JGeometry8TVec3_f_lfb
    lbz     r0, 0x24d(r31)
    mulli   r0, r0, 0x24
    add     r3, r31, r0
    lwz     r12, 0x140(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x802981d4
    lwz     r3, 0x144(r3)
    mtlr    r12
    li      r4, 0x0
    blrl
branch_0x802981d4:
    addi    r3, r31, 0xe8
    bl      OSStopStopwatch
    lwz     r0, 0x5c(r31)
    stw     r0, 0x60(r31)
branch_0x802981e4:
    lbz     r0, 0x126(r31)
    stb     r0, 0x124(r31)
branch_0x802981ec:
    lhz     r3, 0x128(r31)
    clrlwi. r0, r3, 31
    beq-    branch_0x80298210
    clrrwi  r0, r3, 1
    sth     r0, 0x128(r31)
    lhz     r0, 0x128(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x128(r31)
    b       branch_0x80298218

branch_0x80298210:
    rlwinm  r0, r3, 0, 31, 29
    sth     r0, 0x128(r31)
branch_0x80298218:
    lwz     r0, 0x134(sp)
    mr      r3, r29
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    mtlr    r0
    lwz     r29, 0x124(sp)
    lwz     r28, 0x120(sp)
    addi    sp, sp, 0x130
    blr


.globl set__13TGameSequenceFUcUcQ26JDrama10TFlagT_Us_
set__13TGameSequenceFUcUcQ26JDrama10TFlagT_Us_: # 0x8029823c
    stb     r4, 0x0(r3)
    stb     r5, 0x1(r3)
    lhz     r0, 0x0(r6)
    sth     r0, 0x2(r3)
    blr


.globl nextStateInitialize__12TMarDirectorFUc
nextStateInitialize__12TMarDirectorFUc: # 0x80298250
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    lis     r4, 0x803f
    stwu    sp, -0x160(sp)
    cmplwi  r0, 0xc
    stmw    r27, 0x14c(sp)
    subi    r27, r4, 0x6900
    lis     r4, 0x803a
    addi    r31, r3, 0x0
    addi    r30, r4, 0x2858
    addi    r29, r27, 0xe
    bgt-    branch_0x802988c8
    lis     r3, 0x803e
    subi    r3, r3, 0x1008
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lwz     r3, 0x18(r31)
    li      r0, 0x0
    addi    r28, r30, 0x154
    lwz     r4, 0x0(r3)
    lhz     r3, 0xe2(r4)
    ori     r3, r3, 0x1
    sth     r3, 0xe2(r4)
    stw     r0, 0x68(r31)
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x80298384
    lhz     r0, 0x4e(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80298384
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x8
    bne-    branch_0x8029834c
    lis     r4, 0x6
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x2
    beq-    branch_0x8029833c
    bge-    branch_0x8029830c
    cmpwi   r3, 0x0
    beq-    branch_0x80298318
    bge-    branch_0x80298334
    b       branch_0x80298384

branch_0x8029830c:
    cmpwi   r3, 0x4
    bge-    branch_0x80298384
    b       branch_0x80298344

branch_0x80298318:
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x14
    blt-    branch_0x80298384
    addi    r28, r30, 0x160
    b       branch_0x80298384

branch_0x80298334:
    addi    r28, r30, 0x178
    b       branch_0x80298384

branch_0x8029833c:
    addi    r28, r30, 0x18c
    b       branch_0x80298384

branch_0x80298344:
    addi    r28, r30, 0x1a0
    b       branch_0x80298384

branch_0x8029834c:
    lis     r27, 0x5
    lwz     r3, -0x6060(r13)
    addi    r4, r27, 0x1
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8029836c
    addi    r28, r30, 0x1b4
    b       branch_0x80298384

branch_0x8029836c:
    lwz     r3, -0x6060(r13)
    addi    r4, r27, 0x2
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80298384
    addi    r28, r30, 0x1c0
branch_0x80298384:
    lwz     r3, -0x7118(r13)
    mr      r4, r28
    lfs     f1, -0x5e8(rtoc)
    li      r5, 0x0
    li      r6, -0x1
    li      r7, 0x1
    bl      startDemoCamera__15CPolarSubCameraFPCcPCQ29JGeometry8TVec3_f_lfb
    lhz     r0, 0x50(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802983c4
    lwz     r3, 0x74(r31)
    lwz     r3, 0x94(r3)
    bl      startAppearScenario__11TConsoleStrFv
    lhz     r0, 0x50(r31)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0x50(r31)
branch_0x802983c4:
    lbz     r4, 0x1(r29)
    lbz     r3, 0x0(r29)
    bl      startStageEntranceDemo__10MSMainProcFUcUc
    b       branch_0x802988c8


.incbin "./baserom/code/Text_0x80005600.bin", 0x292dd4, 0x802988c8 - 0x802983d4
branch_0x802988c8:
    lmw     r27, 0x14c(sp)
    lwz     r0, 0x164(sp)
    addi    sp, sp, 0x160
    mtlr    r0
    blr


.globl setMario__12TMarDirectorFv
setMario__12TMarDirectorFv: # 0x802988dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r27, 0x9c(sp)
    lis     r29, 0x3
    addi    r27, r3, 0x0
    addi    r4, r29, 0x6
    li      r30, 0x0
    lwz     r0, -0x6060(r13)
    mr      r3, r0
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80298924
    lwz     r3, -0x6060(r13)
    addi    r5, r29, 0x6
    li      r4, 0x0
    bl      setBool__12TFlagManagerFbUl
    li      r30, 0x1
branch_0x80298924:
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x803a
    addi    r31, r3, 0x2a30
    lbz     r29, 0xd0(r27)
    lwz     r28, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    mr.     r31, r3
    beq-    branch_0x80298970
    lwz     r0, 0xd0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80298974
branch_0x80298970:
    li      r29, 0x0
branch_0x80298974:
    lbz     r0, 0xd1(r27)
    cmpwi   r0, 0x2
    beq-    branch_0x802989d4
    bge-    branch_0x80298994
    cmpwi   r0, 0x0
    beq-    branch_0x80298a58
    bge-    branch_0x802989a0
    b       branch_0x80298a58

branch_0x80298994:
    cmpwi   r0, 0x4
    beq-    branch_0x80298a4c
    b       branch_0x80298a58

branch_0x802989a0:
    clrlwi. r0, r29, 24
    lfs     f1, -0x5e8(rtoc)
    li      r4, 0x0
    beq-    branch_0x802989c8
    subi    r0, r29, 0x1
    clrlwi  r0, r0, 24
    mulli   r0, r0, 0xc
    add     r3, r31, r0
    lfs     f1, 0x74(r3)
    addi    r4, r3, 0x10
branch_0x802989c8:
    lwz     r3, -0x60d8(r13)
    bl      rollingStart__6TMarioFPCQ29JGeometry8TVec3_f_f
    b       branch_0x80298a84

branch_0x802989d4:
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r3, 0xa(r3)
    li      r28, 0x0
    bl      SMS_getShineStage__FUc
    clrlwi  r0, r3, 24
    cmpwi   r0, 0x8
    beq-    branch_0x80298a0c
    bge-    branch_0x80298a10
    cmpwi   r0, 0x5
    bge-    branch_0x80298a04
    b       branch_0x80298a10

branch_0x80298a04:
    li      r28, 0x1
    b       branch_0x80298a10

branch_0x80298a0c:
    li      r28, 0x2
branch_0x80298a10:
    clrlwi. r0, r29, 24
    lfs     f1, -0x5e8(rtoc)
    li      r4, 0x0
    beq-    branch_0x80298a38
    subi    r0, r29, 0x1
    clrlwi  r0, r0, 24
    mulli   r0, r0, 0xc
    add     r3, r31, r0
    lfs     f1, 0x74(r3)
    addi    r4, r3, 0x10
branch_0x80298a38:
    lwz     r3, -0x60d8(r13)
    addi    r5, r30, 0x0
    addi    r6, r28, 0x0
    bl      returnStart__6TMarioFPCQ29JGeometry8TVec3_f_fbi
    b       branch_0x80298a84

branch_0x80298a4c:
    lwz     r3, -0x60d8(r13)
    bl      toroccoStart__6TMarioFv
    b       branch_0x80298a84

branch_0x80298a58:
    clrlwi. r0, r29, 24
    li      r4, 0x0
    beq-    branch_0x80298a78
    subi    r0, r29, 0x1
    clrlwi  r0, r0, 24
    mulli   r3, r0, 0xc
    addi    r4, r3, 0x10
    add     r4, r31, r4
branch_0x80298a78:
    lwz     r3, -0x60d8(r13)
    lfs     f1, -0x5e8(rtoc)
    bl      waitingStart__6TMarioFPCQ29JGeometry8TVec3_f_f
branch_0x80298a84:
    lwz     r5, -0x60d8(r13)
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lwz     r0, 0x118(r5)
    addi    r29, r3, 0xe
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80298aa8
    li      r0, 0x1
    b       branch_0x80298aac

branch_0x80298aa8:
    li      r0, 0x0
branch_0x80298aac:
    clrlwi. r0, r0, 24
    beq-    branch_0x80298b60
    lbz     r0, 0x0(r29)
    cmpwi   r0, 0x2c
    beq-    branch_0x80298b60
    bge-    branch_0x80298af0
    cmpwi   r0, 0xa
    bge-    branch_0x80298ae4
    cmpwi   r0, 0x7
    beq-    branch_0x80298b28
    bge-    branch_0x80298b60
    cmpwi   r0, 0x1
    bge-    branch_0x80298b60
    b       branch_0x80298b28

branch_0x80298ae4:
    cmpwi   r0, 0x10
    beq-    branch_0x80298b60
    b       branch_0x80298b28

branch_0x80298af0:
    cmpwi   r0, 0x39
    beq-    branch_0x80298b60
    bge-    branch_0x80298b08
    cmpwi   r0, 0x34
    beq-    branch_0x80298b60
    b       branch_0x80298b28

branch_0x80298b08:
    cmpwi   r0, 0x3c
    beq-    branch_0x80298b14
    b       branch_0x80298b28

branch_0x80298b14:
    lwz     r3, 0x3e4(r5)
    li      r4, 0x1
    li      r5, 0x1
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
    b       branch_0x80298b60

branch_0x80298b28:
    lis     r4, 0x4
    lwz     r3, -0x6060(r13)
    lwz     r28, 0x3e4(r5)
    addi    r4, r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    li      r5, 0x1
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
    lwz     r3, -0x60d8(r13)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x3e4(r3)
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
branch_0x80298b60:
    lbz     r3, 0x0(r29)
    bl      SMS_getShineIDofExStage__FUc
    clrlwi  r0, r3, 24
    cmplwi  r0, 0xff
    beq-    branch_0x80298b9c
    lwz     r0, -0x6060(r13)
    addi    r4, r3, 0x0
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    bne-    branch_0x80298b9c
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0x118(r3)
branch_0x80298b9c:
    lmw     r27, 0x9c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl currentStateFinalize__12TMarDirectorFUc
currentStateFinalize__12TMarDirectorFUc: # 0x80298bb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r3
    stw     r30, 0x118(sp)
    stw     r29, 0x114(sp)
    lbz     r0, 0x64(r3)
    lis     r3, 0x803a
    addi    r30, r3, 0x2858
    cmplwi  r0, 0xb
    bgt-    branch_0x80298e64
    lis     r3, 0x803e
    subi    r3, r3, 0xfd4
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x1cc
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x1cc
    mtlr    r12
    blrl
    lhz     r4, 0xc(r3)
    li      r0, -0xc
    and     r0, r4, r0
    sth     r0, 0xc(r3)
    subi    r3, rtoc, 0x5e0
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x5e0
    mtlr    r12
    blrl
    lhz     r0, 0xc(r3)
    lis     r4, 0x803f
    subi    r4, r4, 0x6900
    ori     r0, r0, 0xb
    sth     r0, 0xc(r3)
    lwz     r3, 0x34(r4)
    lwz     r4, 0xe4(r31)
    lfs     f1, -0x5e4(rtoc)
    lfs     f2, -0x5e8(rtoc)
    bl      startWipe__9TSMSFaderFUlff
    lwz     r3, -0x60f0(r13)
    bl      reset__9RumbleMgrFv
    b       branch_0x80298e64


.incbin "./baserom/code/Text_0x80005600.bin", 0x293694, 0x80298e64 - 0x80298c94
branch_0x80298e64:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    mtlr    r0
    lwz     r29, 0x114(sp)
    addi    sp, sp, 0x120
    blr


.globl changeState__12TMarDirectorFv
changeState__12TMarDirectorFv: # 0x80298e80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stfd    f31, 0x160(sp)
    stmw    r27, 0x14c(sp)
    mr      r31, r3
    li      r30, 0x1
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0xc
    mr      r28, r0
    bgt-    branch_0x8029953c
    lis     r3, 0x803e
    subi    r3, r3, 0xfa4
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r0, 0xe(r3)
    cmpwi   r0, 0xa
    bge-    branch_0x80298ef4
    cmpwi   r0, 0x7
    beq-    branch_0x80298f5c
    bge-    branch_0x80298f20
    cmpwi   r0, 0x1
    beq-    branch_0x80298f34
    bge-    branch_0x80298f20
    b       branch_0x80298f5c

branch_0x80298ef4:
    cmpwi   r0, 0x34
    beq-    branch_0x80298f20
    bge-    branch_0x80298f5c
    cmpwi   r0, 0xf
    beq-    branch_0x80298f0c
    b       branch_0x80298f5c

branch_0x80298f0c:
    lhz     r0, 0x50(r31)
    li      r28, 0x4
    ori     r0, r0, 0x1
    sth     r0, 0x50(r31)
    b       branch_0x8029953c

branch_0x80298f20:
    lhz     r0, 0x50(r31)
    li      r28, 0x1
    ori     r0, r0, 0x6
    sth     r0, 0x50(r31)
    b       branch_0x8029953c

branch_0x80298f34:
    lhz     r0, 0x4e(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80298f54
    lhz     r0, 0x50(r31)
    li      r28, 0x1
    ori     r0, r0, 0x6
    sth     r0, 0x50(r31)
    b       branch_0x8029953c

branch_0x80298f54:
    li      r28, 0x2
    b       branch_0x8029953c

branch_0x80298f5c:
    lis     r3, 0x803a
    addi    r3, r3, 0x2a44
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x80298f84
    lhz     r0, 0x50(r31)
    li      r28, 0x1
    ori     r0, r0, 0xa
    sth     r0, 0x50(r31)
    b       branch_0x8029953c

branch_0x80298f84:
    li      r28, 0x4
    b       branch_0x8029953c


.incbin "./baserom/code/Text_0x80005600.bin", 0x29398c, 0x8029953c - 0x80298f8c
branch_0x8029953c:
    lwz     r3, 0x18(r31)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lwz     r3, 0x0(r3)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x802995a4
    lwz     r3, -0x603c(r13)
    bl      getLastStatus__12TCardManagerFv
    cmpwi   r3, -0x1
    beq-    branch_0x802995a4
    lhz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x802995a4
    lhz     r0, 0x50(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x802995a4
    lhz     r3, 0x50(r31)
    li      r0, 0x4
    li      r28, 0xc
    ori     r3, r3, 0x10
    sth     r3, 0x50(r31)
    stw     r0, 0xe4(r31)
    stb     r0, 0xb4(r31)
branch_0x802995a4:
    lbz     r0, 0x64(r31)
    clrlwi  r3, r28, 24
    cmplw   r3, r0
    beq-    branch_0x802995d0
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      currentStateFinalize__12TMarDirectorFUc
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      nextStateInitialize__12TMarDirectorFUc
    stb     r28, 0x64(r31)
branch_0x802995d0:
    mr      r3, r30
    lmw     r27, 0x14c(sp)
    lwz     r0, 0x16c(sp)
    lfd     f31, 0x160(sp)
    addi    sp, sp, 0x168
    mtlr    r0
    blr


.globl decideNextScenario__FUc
decideNextScenario__FUc: # 0x802995ec
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r3, 24
    cmpwi   r0, 0x1
    stwu    sp, -0x30(sp)
    li      r3, 0x0
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    beq-    branch_0x80299614
    b       branch_0x80299728

branch_0x80299614:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3ae
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80299634
    li      r3, 0x2
    b       branch_0x80299728

branch_0x80299634:
    subi    r31, r13, 0x75d0
    li      r30, 0x0
branch_0x8029963c:
    lwz     r3, -0x6060(r13)
    lbz     r4, 0x0(r31)
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    bne-    branch_0x80299658
    li      r0, 0x0
    b       branch_0x8029966c

branch_0x80299658:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x7
    addi    r31, r31, 0x1
    blt+    branch_0x8029963c
    li      r0, 0x1
branch_0x8029966c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8029967c
    li      r3, 0x9
    b       branch_0x80299728

branch_0x8029967c:
    lis     r31, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r31, 0x389
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8029969c
    li      r3, 0x8
    b       branch_0x80299728

branch_0x8029969c:
    lwz     r3, -0x6060(r13)
    addi    r4, r31, 0x386
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802996e8
    lwz     r3, -0x6060(r13)
    addi    r4, r31, 0x387
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802996e8
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0xa
    blt-    branch_0x802996e0
    li      r3, 0x7
    b       branch_0x80299728

branch_0x802996e0:
    li      r3, 0x6
    b       branch_0x80299728

branch_0x802996e8:
    lis     r31, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r31, 0x385
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80299708
    li      r3, 0x5
    b       branch_0x80299728

branch_0x80299708:
    lwz     r3, -0x6060(r13)
    addi    r4, r31, 0x384
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80299724
    li      r3, 0x1
    b       branch_0x80299728

branch_0x80299724:
    li      r3, 0x0
branch_0x80299728:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl decideNextStage__Fv
decideNextStage__Fv: # 0x80299740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    addi    r3, sp, 0x1c
    stw     r30, 0x48(sp)
    addi    r30, sp, 0x3e
    addi    r4, sp, 0x24
    sth     r31, 0x3e(sp)
    sth     r31, 0x24(sp)
    stb     r31, 0x3c(sp)
    stb     r31, 0x3d(sp)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    mr      r3, r30
    lhz     r4, 0x1c(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r3, 0xe(r3)
    bl      SMS_getShineStage__FUc
    clrlwi. r0, r3, 24
    beq-    branch_0x802997a4
    blt-    branch_0x802997bc
    b       branch_0x802997bc

branch_0x802997a4:
    li      r0, 0x1
    stb     r0, 0x3c(sp)
    li      r0, 0xff
    stb     r0, 0x3d(sp)
    sth     r31, 0x3e(sp)
    b       branch_0x802997d4

branch_0x802997bc:
    li      r0, 0x1
    stb     r0, 0x3c(sp)
    li      r3, 0xff
    li      r0, 0x0
    stb     r3, 0x3d(sp)
    sth     r0, 0x3e(sp)
branch_0x802997d4:
    lhz     r3, 0x3e(sp)
    lis     r4, 0x803f
    lbz     r0, 0x3c(sp)
    subi    r31, r4, 0x6900
    sth     r3, 0x20(sp)
    addi    r3, sp, 0x14
    stb     r0, 0x12(r31)
    addi    r4, sp, 0x20
    lbz     r0, 0x3d(sp)
    stb     r0, 0x13(r31)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    addi    r3, r31, 0x14
    lhz     r4, 0x14(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl set__Q26JDrama10TFlagT_Us_FUs
set__Q26JDrama10TFlagT_Us_FUs: # 0x80299824
    sth     r4, 0x0(r3)
    blr


.globl __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
__ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_: # 0x8029982c
    lhz     r0, 0x0(r4)
    sth     r0, 0x0(r3)
    blr


.globl direct__12TMarDirectorFv
direct__12TMarDirectorFv: # 0x80299838
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x198(sp)
    stfd    f31, 0x190(sp)
    stmw    r23, 0x16c(sp)
    mr      r26, r3
    bl      SMSGetVSyncTimesPerSec__Fv
    fctiwz  f0, f1
    lbz     r0, 0x260(r26)
    li      r3, 0x258
    cmplwi  r0, 0x0
    stfd    f0, 0x160(sp)
    lwz     r0, 0x164(sp)
    divw    r25, r3, r0
    bne-    branch_0x802998c4
    lis     r3, 0x8040
    subi    r24, r3, 0x3418
    addi    r3, r24, 0x0
    bl      OSIsThreadTerminated
    cmpwi   r3, 0x0
    bne-    branch_0x80299894
    li      r3, 0x0
    b       branch_0x80299d30

branch_0x80299894:
    addi    r3, r24, 0x0
    addi    r4, sp, 0x158
    bl      OSJoinThread
    lwz     r0, 0x158(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802998b4
    li      r3, 0x4
    b       branch_0x80299d30

branch_0x802998b4:
    mr      r3, r26
    bl      setupObjects__12TMarDirectorFv
    li      r0, 0x1
    stb     r0, 0x260(r26)
branch_0x802998c4:
    addi    r3, sp, 0x9c
    li      r29, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0xac
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0xbc
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0xcc
    bl      __ct__Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f__Fv
    addi    r3, sp, 0x10c
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    li      r0, -0x1
    lwz     r3, -0x6044(r13)
    stw     r0, 0x14c(sp)
    li      r0, 0x0
    li      r28, 0x0
    sth     r0, 0x154(sp)
    lwz     r0, 0x54(r26)
    lbz     r30, 0xac(r3)
    add     r0, r0, r25
    stw     r0, 0x54(r26)
    lfs     f31, -0x5e8(rtoc)
branch_0x8029994c:
    lhz     r0, 0x4c(r26)
    rlwinm. r0, r0, 0, 17, 17
    bne-    branch_0x80299c28
    addi    r28, r28, 0x1
    cmpwi   r28, 0x1
    bne-    branch_0x80299970
    lhz     r0, 0x4c(r26)
    ori     r0, r0, 0x2000
    sth     r0, 0x4c(r26)
branch_0x80299970:
    lwz     r3, 0x54(r26)
    subi    r0, r3, 0x5
    stw     r0, 0x54(r26)
    lwz     r0, 0x54(r26)
    cmpwi   r0, 0x5
    bge-    branch_0x80299994
    lhz     r0, 0x4c(r26)
    ori     r0, r0, 0x4000
    sth     r0, 0x4c(r26)
branch_0x80299994:
    lhz     r0, 0x4c(r26)
    addi    r24, r30, 0x0
    li      r27, 0x0
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x802999c8
    lwz     r3, 0x258(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x802999d0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802999d0

branch_0x802999c8:
    ori     r27, r27, 0x2
    clrrwi  r24, r24, 1
branch_0x802999d0:
    lwz     r3, -0x6044(r13)
    stb     r24, 0xac(r3)
    lbz     r0, 0x64(r26)
    cmpwi   r0, 0xa
    beq-    branch_0x80299a08
    bge-    branch_0x802999f4
    cmpwi   r0, 0x5
    beq-    branch_0x802999fc
    b       branch_0x80299a10

branch_0x802999f4:
    cmpwi   r0, 0xd
    bge-    branch_0x80299a10
branch_0x802999fc:
    ori     r27, r27, 0x2
    ori     r27, r27, 0x1
    b       branch_0x80299a10

branch_0x80299a08:
    ori     r27, r27, 0x2
    ori     r27, r27, 0x1
branch_0x80299a10:
    clrlwi. r0, r27, 31
    bne-    branch_0x80299a24
    lwz     r3, 0x58(r26)
    addi    r0, r3, 0x1
    stw     r0, 0x58(r26)
branch_0x80299a24:
    lwz     r3, 0x5c(r26)
    addi    r0, r3, 0x1
    stw     r0, 0x5c(r26)
    lhz     r0, 0x4c(r26)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80299a5c
    lbz     r0, 0x64(r26)
    cmplwi  r0, 0x4
    beq-    branch_0x80299a50
    cmplwi  r0, 0x7
    bne-    branch_0x80299aac
branch_0x80299a50:
    lwz     r3, -0x60f0(r13)
    bl      update__9RumbleMgrFv
    b       branch_0x80299aac

branch_0x80299a5c:
    li      r31, 0x0
    addi    r24, r31, 0x0
    addi    r25, r31, 0x0
    li      r23, 0x0
branch_0x80299a6c:
    lwz     r3, 0x18(r26)
    lwzx    r3, r3, r31
    stw     r24, 0x1c(r3)
    stw     r25, 0x20(r3)
    lwz     r3, 0x18(r26)
    lwzx    r3, r3, r31
    bl      updateMeaning__13TMarioGamePadFv
    lwz     r3, 0x18(r26)
    addi    r23, r23, 0x1
    cmpwi   r23, 0x4
    lwzx    r3, r3, r31
    addi    r31, r31, 0x4
    lhz     r0, 0xe2(r3)
    rlwinm  r0, r0, 0, 26, 24
    sth     r0, 0xe2(r3)
    blt+    branch_0x80299a6c
branch_0x80299aac:
    lhz     r4, 0x4c(r26)
    li      r3, 0x0
    rlwinm. r0, r4, 0, 18, 18
    beq-    branch_0x80299ac0
    ori     r3, r3, 0x1
branch_0x80299ac0:
    rlwinm. r0, r4, 0, 17, 17
    beq-    branch_0x80299acc
    ori     r3, r3, 0x2
branch_0x80299acc:
    sth     r3, 0x58(sp)
    li      r4, 0x1
    lwz     r3, 0x58(r26)
    clrlwi. r0, r3, 31
    bne-    branch_0x80299ae8
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80299aec
branch_0x80299ae8:
    li      r4, 0x0
branch_0x80299aec:
    clrlwi. r0, r4, 24
    beq-    branch_0x80299b00
    lwz     r3, -0x6150(r13)
    bl      checkActorsHit__12TObjHitCheckFv
    b       branch_0x80299b08

branch_0x80299b00:
    lwz     r3, -0x6150(r13)
    bl      clearHitNum__12TObjHitCheckFv
branch_0x80299b08:
    lwz     r3, 0x58(r26)
    not     r31, r27
    addi    r4, r31, 0x0
    clrlwi. r0, r3, 31
    beq-    branch_0x80299b20
    rlwinm  r4, r4, 0, 20, 18
branch_0x80299b20:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80299b2c
    rlwinm  r4, r4, 0, 19, 17
branch_0x80299b2c:
    lhz     r0, 0x4e(r26)
    clrlwi. r0, r0, 31
    beq-    branch_0x80299b54
    lwz     r3, 0x44(r26)
    addi    r5, sp, 0x58
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    b       branch_0x80299b6c

branch_0x80299b54:
    lwz     r3, 0x28(r26)
    addi    r5, sp, 0x58
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80299b6c:
    lhz     r0, 0x4c(r26)
    li      r4, 0x0
    rlwinm. r0, r0, 0, 17, 17
    bne-    branch_0x80299b80
    ori     r4, r4, 0x2
branch_0x80299b80:
    lwz     r3, 0x30(r26)
    not     r4, r4
    addi    r5, sp, 0x58
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    mr      r3, r26
    bl      movement__12TMarDirectorFv
    rlwinm. r0, r27, 0, 30, 30
    bne-    branch_0x80299bf4
    lhz     r0, 0x4e(r26)
    clrlwi. r0, r0, 31
    beq-    branch_0x80299bd8
    lwz     r3, 0x48(r26)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x58
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    b       branch_0x80299bf4

branch_0x80299bd8:
    lwz     r3, 0x2c(r26)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x58
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80299bf4:
    lhz     r0, 0x4c(r26)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80299d08
    li      r0, 0x0
    sth     r0, 0x58(sp)
    addi    r5, sp, 0x58
    li      r4, -0x1
    lwz     r3, 0x34(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    b       branch_0x80299d24

branch_0x80299c28:
    li      r24, 0x0
    sth     r24, 0x58(sp)
    addi    r5, sp, 0x58
    li      r4, -0x1
    lwz     r3, 0x40(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x38(r26)
    addi    r5, sp, 0x58
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3c(r26)
    addi    r5, sp, 0x58
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1c(r26)
    addi    r5, sp, 0x58
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6130(r13)
    lfs     f0, 0x48(r3)
    fcmpo   cr0, f0, f31
    ble-    branch_0x80299cb4
    li      r24, 0x1
branch_0x80299cb4:
    clrlwi. r0, r24, 24
    bne-    branch_0x80299ccc
    lwz     r3, -0x7118(r13)
    lha     r0, 0x2c8(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x80299ce8
branch_0x80299ccc:
    lwz     r3, 0x20(r26)
    addi    r5, sp, 0x58
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80299ce8:
    lwz     r3, 0x24(r26)
    addi    r5, sp, 0x58
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    bl      GXInvalidateTexAll
branch_0x80299d08:
    mr      r3, r26
    bl      changeState__12TMarDirectorFv
    lhz     r0, 0x4c(r26)
    addi    r29, r3, 0x0
    rlwinm  r0, r0, 0, 19, 16
    sth     r0, 0x4c(r26)
    b       branch_0x8029994c

branch_0x80299d24:
    lwz     r4, -0x6044(r13)
    mr      r3, r29
    stb     r30, 0xac(r4)
branch_0x80299d30:
    lmw     r23, 0x16c(sp)
    lwz     r0, 0x19c(sp)
    lfd     f31, 0x190(sp)
    addi    sp, sp, 0x198
    mtlr    r0
    blr


.globl __sinit_MarDirectorDirect_cpp
__sinit_MarDirectorDirect_cpp: # 0x80299d48
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x37b0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80299d90
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80299d90:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80299dc0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80299dc0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80299df0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80299df0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80299e20
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80299e20:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80299e50
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80299e50:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80299e80
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80299e80:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80299eb0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80299eb0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80299ee0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80299ee0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80299f10
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80299f10:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80299f40
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80299f40:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80299f70
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80299f70:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80299fa0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80299fa0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80299fd0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80299fd0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8029a000
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8029a000:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8029a030
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8029a030:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

