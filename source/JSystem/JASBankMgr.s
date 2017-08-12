
.globl init__Q28JASystem7BankMgrFi
init__Q28JASystem7BankMgrFi: # 0x8030da58
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    slwi    r30, r3, 2
    addi    r3, r30, 0x0
    lwz     r4, R13Off_m0x5b30(r13)
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, R13Off_m0x5cac(r13)
    slwi    r3, r31, 1
    lwz     r4, R13Off_m0x5b30(r13)
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, R13Off_m0x5ca8(r13)
    mr      r4, r30
    lwz     r3, R13Off_m0x5cac(r13)
    bl      bzero__Q28JASystem4CalcFPvUl
    cmpwi   r31, 0x0
    li      r9, 0x0
    li      r3, 0x0
    ble-    branch_0x8030db58
    cmpwi   r31, 0x8
    addi    r5, r31, -0x8
    ble-    branch_0x8030db2c
    addi    r0, r5, 0x7
    lwz     r7, R13Off_m0x5ca8(r13)
    srwi    r0, r0, 3
    lis     r4, unk_0000ffff@ha
    mtctr   r0
    cmpwi   r5, 0x0
    addi    r8, r4, unk_0000ffff@l
    ble-    branch_0x8030db2c
branch_0x8030dae4:
    sthx    r8, r7, r3
    addi    r0, r3, 0x2
    addi    r4, r3, 0x4
    sthx    r8, r7, r0
    addi    r0, r3, 0x6
    addi    r6, r3, 0x8
    sthx    r8, r7, r4
    addi    r5, r3, 0xa
    addi    r4, r3, 0xc
    sthx    r8, r7, r0
    addi    r0, r3, 0xe
    addi    r9, r9, 0x8
    sthx    r8, r7, r6
    addi    r3, r3, 0x10
    sthx    r8, r7, r5
    sthx    r8, r7, r4
    sthx    r8, r7, r0
    bdnz+      branch_0x8030dae4
branch_0x8030db2c:
    subf    r0, r9, r31
    lwz     r4, R13Off_m0x5ca8(r13)
    lis     r3, unk_0000ffff@ha
    mtctr   r0
    cmpw    r9, r31
    addi    r0, r3, unk_0000ffff@l
    slwi    r3, r9, 1
    bge-    branch_0x8030db58
branch_0x8030db4c:
    sthx    r0, r4, r3
    addi    r3, r3, 0x2
    bdnz+      branch_0x8030db4c
branch_0x8030db58:
    stw     r31, R13Off_m0x5cb0(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl registBankBNK__Q28JASystem7BankMgrFiPv
registBankBNK__Q28JASystem7BankMgrFiPv: # 0x8030db74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r3, 0x8(r4)
    mr      r4, r30
    bl      setVir2PhyTable__Q28JASystem7BankMgrFUli
    mr      r3, r31
    bl      createBasicBank__Q28JASystem9BNKParserFPv
    cmplwi  r3, 0x0
    bne-    branch_0x8030dbb4
    li      r3, 0x0
    b       branch_0x8030dbc4

branch_0x8030dbb4:
    lwz     r4, R13Off_m0x5cac(r13)
    slwi    r0, r30, 2
    stwx    r3, r4, r0
    li      r3, 0x1
branch_0x8030dbc4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getPhysicalNumber__Q28JASystem7BankMgrFUs
getPhysicalNumber__Q28JASystem7BankMgrFUs: # 0x8030dbdc
    lwz     r4, R13Off_m0x5ca8(r13)
    clrlslwi  r0, r3, 16, 1
    lhzx    r3, r4, r0
    blr


.globl setVir2PhyTable__Q28JASystem7BankMgrFUli
setVir2PhyTable__Q28JASystem7BankMgrFUli: # 0x8030dbec
    cmplwi  r3, 0xffff
    beqlr-    

    lwz     r5, R13Off_m0x5ca8(r13)
    slwi    r0, r3, 1
    add     r3, r5, r0
    sth     r4, 0x0(r3)
    blr


.globl assignWaveBank__Q28JASystem7BankMgrFii
assignWaveBank__Q28JASystem7BankMgrFii: # 0x8030dc08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, R13Off_m0x5cb0(r13)
    cmpw    r3, r0
    blt-    branch_0x8030dc2c
    li      r31, 0x0
    b       branch_0x8030dc38

branch_0x8030dc2c:
    lwz     r5, R13Off_m0x5cac(r13)
    slwi    r0, r3, 2
    lwzx    r31, r5, r0
branch_0x8030dc38:
    cmplwi  r31, 0x0
    bne-    branch_0x8030dc48
    li      r3, 0x0
    b       branch_0x8030dc68

branch_0x8030dc48:
    mr      r3, r4
    bl      getWaveBank__Q28JASystem11WaveBankMgrFi
    cmplwi  r3, 0x0
    bne-    branch_0x8030dc60
    li      r3, 0x0
    b       branch_0x8030dc68

branch_0x8030dc60:
    stw     r3, 0x4(r31)
    li      r3, 0x1
branch_0x8030dc68:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl noteOn__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriiUcUcUl
noteOn__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriiUcUcUl: # 0x8030dc7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r23, 0x74(sp)
    addi    r29, r5, 0x0
    cmpwi   r29, 0xef
    addi    r24, r3, 0x0
    addi    r25, r4, 0x0
    addi    r26, r6, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    ble-    branch_0x8030dcc8
    addi    r3, r24, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    addi    r4, r29, -0xf0
    bl      noteOnOsc__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriUcUcUl
    b       branch_0x8030e078

branch_0x8030dcc8:
    lwz     r0, R13Off_m0x5cb0(r13)
    cmpw    r25, r0
    blt-    branch_0x8030dcdc
    li      r23, 0x0
    b       branch_0x8030dce8

branch_0x8030dcdc:
    lwz     r3, R13Off_m0x5cac(r13)
    slwi    r0, r25, 2
    lwzx    r23, r3, r0
branch_0x8030dce8:
    cmplwi  r23, 0x0
    addi    r3, r23, 0x0
    bne-    branch_0x8030dcfc
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030dcfc:
    lwz     r12, 0x0(r3)
    mr      r4, r29
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8030dd20
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030dd20:
    li      r0, 0x0
    stb     r0, 0x24(sp)
    clrlwi  r30, r26, 24
    mr      r4, r30
    stw     r0, 0x28(sp)
    clrlwi  r5, r27, 24
    addi    r6, sp, 0x24
    stw     r0, 0x2c(sp)
    stw     r0, 0x30(sp)
    lfs     f0, 0x60c(r2)
    stfs    f0, 0x34(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lfs     f1, 0x610(r2)
    stfs    f1, 0x44(sp)
    lfs     f0, 0x608(r2)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x58(sp)
    stb     r0, 0x5c(sp)
    sth     r0, 0x5e(sp)
    stw     r0, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x8030dda8
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030dda8:
    lwz     r0, 0x4(r23)
    cmplwi  r0, 0x0
    mr      r3, r0
    bne-    branch_0x8030ddc0
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030ddc0:
    lwz     r12, 0x0(r3)
    lwz     r4, 0x28(sp)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr.     r23, r3
    bne-    branch_0x8030dde4
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030dde4:
    mr      r3, r23
    lwz     r12, 0x0(r23)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr.     r31, r3
    bne-    branch_0x8030de08
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030de08:
    mr      r3, r23
    lwz     r12, 0x0(r23)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr.     r23, r3
    bne-    branch_0x8030de2c
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030de2c:
    lwz     r4, 0x64(sp)
    slwi    r3, r25, 8
    rlwinm  r0, r4, 0, 24, 25
    slwi    r4, r4, 24
    or      r3, r4, r3
    cmpwi   r0, 0x80
    or      r4, r29, r3
    beq-    branch_0x8030de74
    bge-    branch_0x8030de5c
    cmpwi   r0, 0x40
    beq-    branch_0x8030de7c
    b       branch_0x8030de88

branch_0x8030de5c:
    cmpwi   r0, 0xc0
    beq-    branch_0x8030de68
    b       branch_0x8030de88

branch_0x8030de68:
    oris    r4, r4, 0xff
    ori     r4, r4, 0xffff
    b       branch_0x8030de88

branch_0x8030de74:
    ori     r4, r4, 0xff
    b       branch_0x8030de88

branch_0x8030de7c:
    lwz     r0, 0x60(sp)
    slwi    r0, r0, 16
    or      r4, r4, r0
branch_0x8030de88:
    mr      r3, r24
    bl      getLogicalChannel__Q28JASystem11TChannelMgrFUl
    mr.     r29, r3
    bne-    branch_0x8030dea0
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030dea0:
    stw     r31, 0x10(r29)
    stw     r23, 0x14(r29)
    lbz     r0, 0x24(sp)
    stb     r0, 0xc(r29)
    stb     r27, 0x0(r29)
    stb     r26, 0x1(r29)
    lfs     f1, 0x4(r31)
    lfs     f0, -0x73d0(r13)
    lfs     f2, 0x38(sp)
    fdivs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x48(r29)
    lfs     f1, 0x48(r29)
    lfs     f0, 0x40(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x50(r29)
    lbz     r0, 0x5c(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x8030df2c
    lbz     r3, 0x2(r31)
    addi    r0, r30, 0x3c
    subf.   r0, r3, r0
    bge-    branch_0x8030df00
    li      r0, 0x0
branch_0x8030df00:
    cmpwi   r0, 0x7f
    ble-    branch_0x8030df0c
    li      r0, 0x7f
branch_0x8030df0c:
    lis     r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@h
    lfs     f1, 0x50(r29)
    slwi    r4, r0, 2
    addi    r0, r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@l
    add     r3, r0, r4
    lfs     f0, 0x0(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x50(r29)
branch_0x8030df2c:
    lfs     f0, 0x34(sp)
    lis     r0, 0x4330
    addi    r4, r29, 0x68
    stfs    f0, 0x4c(r29)
    lbz     r3, 0x0(r29)
    lfd     f2, 0x618(r2)
    stw     r3, 0x6c(sp)
    lfs     f0, 0x614(r2)
    stw     r0, 0x68(sp)
    lfd     f1, 0x68(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x54(r29)
    lfs     f0, 0x54(r29)
    lfs     f1, 0x4c(r29)
    fmuls   f0, f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x54(r29)
    lfs     f1, 0x54(r29)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x54(r29)
    lfs     f0, 0x44(sp)
    stfs    f0, 0x68(r29)
    lfs     f0, 0x48(sp)
    stfs    f0, 0x74(r29)
    lfs     f0, 0x4c(sp)
    stfs    f0, 0x80(r29)
    lfs     f2, 0x68(r29)
    lfs     f1, 0x608(r2)
    lfs     f0, 0x60c(r2)
    fcmpo   cr0, f2, f1
    bge-    branch_0x8030dfb8
    fmr     f2, f1
    b       branch_0x8030dfc4

branch_0x8030dfb8:
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030dfc4
    fmr     f2, f0
branch_0x8030dfc4:
    stfs    f2, 0x0(r4)
    addi    r4, r29, 0x74
    lfs     f2, 0x74(r29)
    fcmpo   cr0, f2, f1
    bge-    branch_0x8030dfe0
    fmr     f2, f1
    b       branch_0x8030dfec

branch_0x8030dfe0:
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030dfec
    fmr     f2, f0
branch_0x8030dfec:
    stfs    f2, 0x0(r4)
    li      r23, 0x0
    li      r24, 0x0
    lfs     f0, 0x50(sp)
    stfs    f0, 0x6c(r29)
    lfs     f0, 0x54(sp)
    stfs    f0, 0x78(r29)
    lfs     f0, 0x58(sp)
    stfs    f0, 0x84(r29)
    lfs     f0, 0x60c(r2)
    stfs    f0, 0x8c(r29)
    stfs    f0, 0x90(r29)
    b       branch_0x8030e03c

branch_0x8030e020:
    lwz     r5, 0x2c(sp)
    addi    r3, r29, 0x0
    addi    r4, r23, 0x0
    lwzx    r5, r5, r24
    bl      setOscInit__Q28JASystem8TChannelFUlPCQ38JASystem11TOscillator4Osc_
    addi    r23, r23, 0x1
    addi    r24, r24, 0x4
branch_0x8030e03c:
    lwz     r0, 0x30(sp)
    cmplw   r23, r0
    blt+    branch_0x8030e020
    lhz     r5, 0x5e(sp)
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      directReleaseOsc__Q28JASystem8TChannelFUlUs
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      play__Q28JASystem8TChannelFUl
    cmpwi   r3, 0x0
    bne-    branch_0x8030e074
    li      r3, 0x0
    b       branch_0x8030e078

branch_0x8030e074:
    mr      r3, r29
branch_0x8030e078:
    lmw     r23, 0x74(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl noteOnOsc__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriUcUcUl
noteOnOsc__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriUcUcUl: # 0x8030e08c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r27, 0x2c(sp)
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    li      r4, 0x0
    bl      getLogicalChannel__Q28JASystem11TChannelMgrFUl
    mr.     r31, r3
    bne-    branch_0x8030e0c4
    li      r3, 0x0
    b       branch_0x8030e1d0

branch_0x8030e0c4:
    stw     r27, 0x14(r31)
    li      r0, 0x2
    clrlwi. r4, r28, 24
    stb     r0, 0xc(r31)
    stb     r29, 0x0(r31)
    stb     r28, 0x1(r31)
    lfs     f1, 0x620(r2)
    lfs     f0, -0x73d0(r13)
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r31)
    lfs     f0, 0x48(r31)
    stfs    f0, 0x50(r31)
    bge-    branch_0x8030e0fc
    li      r4, 0x0
branch_0x8030e0fc:
    cmpwi   r4, 0x7f
    ble-    branch_0x8030e108
    li      r4, 0x7f
branch_0x8030e108:
    lis     r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@h
    lfs     f1, 0x50(r31)
    slwi    r4, r4, 2
    addi    r0, r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@l
    add     r3, r0, r4
    lfs     f0, 0x0(r3)
    lis     r3, OSC_ENV__Q28JASystem7BankMgr@h
    addi    r5, r3, OSC_ENV__Q28JASystem7BankMgr@l
    fmuls   f0, f1, f0
    lis     r0, unk_43300000@h
    addi    r3, r31, 0x0
    addi    r4, r0, unk_43300000@l
    stfs    f0, 0x50(r31)
    lfs     f3, 0x60c(r2)
    stfs    f3, 0x4c(r31)
    lbz     r6, 0x0(r31)
    lfd     f2, 0x618(r2)
    stw     r6, 0x24(sp)
    lfs     f0, 0x614(r2)
    stw     r0, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x54(r31)
    lfs     f0, 0x54(r31)
    lfs     f1, 0x4c(r31)
    fmuls   f0, f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x54(r31)
    lfs     f1, 0x610(r2)
    stfs    f1, 0x68(r31)
    lfs     f0, 0x608(r2)
    stfs    f0, 0x74(r31)
    stfs    f0, 0x80(r31)
    stfs    f1, 0x6c(r31)
    stfs    f0, 0x78(r31)
    stfs    f0, 0x84(r31)
    stfs    f3, 0x8c(r31)
    stfs    f3, 0x90(r31)
    bl      setOscInit__Q28JASystem8TChannelFUlPCQ38JASystem11TOscillator4Osc_
    li      r0, 0x0
    stw     r0, 0xc8(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      play__Q28JASystem8TChannelFUl
    cmpwi   r3, 0x0
    bne-    branch_0x8030e1cc
    li      r3, 0x0
    b       branch_0x8030e1d0

branch_0x8030e1cc:
    mr      r3, r31
branch_0x8030e1d0:
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl gateOn__Q28JASystem7BankMgrFPQ28JASystem8TChannelUcUcUl
gateOn__Q28JASystem7BankMgrFPQ28JASystem8TChannelUcUcUl: # 0x8030e1e4
    stwu    sp, -0x20(sp)
    lwz     r0, 0x30(r3)
    cmpwi   r0, -0x1
    bne-    branch_0x8030e2a4
    stw     r6, 0x30(r3)
    lwz     r0, 0x30(r3)
    stw     r0, 0x34(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x8030e214
    clrlwi  r0, r4, 24
    b       branch_0x8030e228

branch_0x8030e214:
    lwz     r7, 0x10(r3)
    clrlwi  r6, r4, 24
    addi    r0, r6, 0x3c
    lbz     r6, 0x2(r7)
    subf    r0, r6, r0
branch_0x8030e228:
    cmpwi   r0, 0x0
    bge-    branch_0x8030e234
    li      r0, 0x0
branch_0x8030e234:
    cmpwi   r0, 0x7f
    ble-    branch_0x8030e240
    li      r0, 0x7f
branch_0x8030e240:
    lis     r6, C5BASE_PITCHTABLE__Q28JASystem6Driver@h
    slwi    r7, r0, 2
    addi    r0, r6, C5BASE_PITCHTABLE__Q28JASystem6Driver@l
    add     r6, r0, r7
    lfs     f1, 0x0(r6)
    lis     r0, 0x4330
    stb     r5, 0x0(r3)
    stb     r4, 0x1(r3)
    lfs     f0, 0x48(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(r3)
    lbz     r4, 0x0(r3)
    lfd     f2, 0x618(r2)
    stw     r4, 0x1c(sp)
    lfs     f0, 0x614(r2)
    stw     r0, 0x18(sp)
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x54(r3)
    lfs     f0, 0x54(r3)
    lfs     f1, 0x4c(r3)
    fmuls   f0, f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x54(r3)
branch_0x8030e2a4:
    addi    sp, sp, 0x20
    blr

