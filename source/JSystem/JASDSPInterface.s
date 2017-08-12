
.globl DSP_CreateMap__Fv
DSP_CreateMap__Fv: # 0x80314e88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    li      r30, 0x0
    stw     r29, 0xc(sp)
    li      r29, 0x0
    b       branch_0x80314ee4

branch_0x80314eb0:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x1
    bl      __shl2i
    addi    r31, r3, 0x0
    addi    r30, r4, 0x0
    addi    r3, r29, 0x0
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80314ee0
    ori     r30, r30, 0x1
branch_0x80314ee0:
    addi    r29, r29, 0x1
branch_0x80314ee4:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x40
    blt+    branch_0x80314eb0
    lwz     r0, 0x1c(sp)
    addi    r4, r30, 0x0
    addi    r3, r31, 0x0
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getDSPHandle__Q28JASystem12DSPInterfaceFUc
getDSPHandle__Q28JASystem12DSPInterfaceFUc: # 0x80314f14
    clrlwi  r0, r3, 24
    lwz     r3, R13Off_m0x5c08(r13)
    mulli   r0, r0, 0x180
    add     r3, r3, r0
    blr


.globl invalChannelAll__Q28JASystem12DSPInterfaceFv
invalChannelAll__Q28JASystem12DSPInterfaceFv: # 0x80314f28
    mflr    r0
    li      r4, 0x6000
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x5c08(r13)
    bl      DCInvalidateRange
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initBuffer__Q28JASystem12DSPInterfaceFv
initBuffer__Q28JASystem12DSPInterfaceFv: # 0x80314f50
    mflr    r0
    li      r3, 0x6000
    stw     r0, 0x4(sp)
    li      r5, 0x20
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    lwz     r4, R13Off_m0x5b30(r13)
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, R13Off_m0x5c08(r13)
    li      r3, 0x80
    lwz     r4, R13Off_m0x5b30(r13)
    li      r5, 0x20
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, R13Off_m0x5c04(r13)
    li      r30, 0x0
    b       branch_0x80314fb0

branch_0x80314f94:
    lwz     r3, R13Off_m0x5c04(r13)
    clrlslwi  r0, r30, 24, 5
    li      r4, 0x0
    add     r3, r3, r0
    li      r5, 0x0
    bl      setFXLine__Q38JASystem12DSPInterface8FXBufferFPsPQ38JASystem12DSPInterface13FxlineConfig_
    addi    r30, r30, 0x1
branch_0x80314fb0:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x4
    blt+    branch_0x80314f94
    li      r30, 0x0
    addi    r31, r30, 0x0
branch_0x80314fc4:
    lwz     r0, R13Off_m0x5c08(r13)
    li      r4, 0x180
    add     r3, r0, r31
    bl      bzero__Q28JASystem4CalcFPvUl
    addi    r30, r30, 0x1
    cmplwi  r30, 0x40
    addi    r31, r31, 0x180
    blt+    branch_0x80314fc4
    li      r30, 0x0
    li      r31, 0x0
branch_0x80314fec:
    lwz     r0, R13Off_m0x5c04(r13)
    li      r4, 0x20
    add     r3, r0, r31
    bl      bzero__Q28JASystem4CalcFPvUl
    addi    r30, r30, 0x1
    cmplwi  r30, 0x4
    addi    r31, r31, 0x20
    blt+    branch_0x80314fec
    lis     r5, DSPRES_FILTER__Q28JASystem12DSPInterface@h
    lwz     r4, R13Off_m0x5c08(r13)
    lis     r3, DSPADPCM_FILTER__Q28JASystem12DSPInterface@h
    lwz     r7, R13Off_m0x5c04(r13)
    addi    r6, r3, DSPADPCM_FILTER__Q28JASystem12DSPInterface@l
    addi    r5, r5, DSPRES_FILTER__Q28JASystem12DSPInterface@l
    li      r3, 0x40
    bl      DsetupTable__FUlUlUlUlUl
    lwz     r3, R13Off_m0x5c08(r13)
    li      r4, 0x6000
    bl      DCFlushRange
    lwz     r3, R13Off_m0x5c04(r13)
    li      r4, 0x80
    bl      DCFlushRange
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr


.globl getFXHandle__Q28JASystem12DSPInterfaceFUc
getFXHandle__Q28JASystem12DSPInterfaceFUc: # 0x8031505c
    lwz     r4, R13Off_m0x5c04(r13)
    clrlslwi  r0, r3, 24, 5
    add     r3, r4, r0
    blr


.globl setFXLine__Q38JASystem12DSPInterface8FXBufferFPsPQ38JASystem12DSPInterface13FxlineConfig_
setFXLine__Q38JASystem12DSPInterface8FXBufferFPsPQ38JASystem12DSPInterface13FxlineConfig_: # 0x8031506c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    bl      OSDisableInterrupts
    li      r0, 0x0
    cmplwi  r30, 0x0
    sth     r0, 0x0(r28)
    addi    r31, r3, 0x0
    beq-    branch_0x80315128
    lha     r0, 0x4(r30)
    lis     r3, SEND_TABLE__Q28JASystem12DSPInterface@h
    addi    r4, r3, SEND_TABLE__Q28JASystem12DSPInterface@l
    sth     r0, 0xa(r28)
    lhz     r0, 0x2(r30)
    slwi    r0, r0, 1
    add     r3, r4, r0
    lhz     r0, 0x0(r3)
    sth     r0, 0x8(r28)
    lha     r0, 0x8(r30)
    sth     r0, 0xe(r28)
    lhz     r0, 0x6(r30)
    slwi    r0, r0, 1
    add     r3, r4, r0
    lhz     r0, 0x0(r3)
    sth     r0, 0xc(r28)
    lwz     r0, 0xc(r30)
    sth     r0, 0x2(r28)
    lha     r0, 0x10(r30)
    sth     r0, 0x10(r28)
    lha     r0, 0x12(r30)
    sth     r0, 0x12(r28)
    lha     r0, 0x14(r30)
    sth     r0, 0x14(r28)
    lha     r0, 0x16(r30)
    sth     r0, 0x16(r28)
    lha     r0, 0x18(r30)
    sth     r0, 0x18(r28)
    lha     r0, 0x1a(r30)
    sth     r0, 0x1a(r28)
    lha     r0, 0x1c(r30)
    sth     r0, 0x1c(r28)
    lha     r0, 0x1e(r30)
    sth     r0, 0x1e(r28)
branch_0x80315128:
    cmplwi  r29, 0x0
    beq-    branch_0x80315160
    cmplwi  r30, 0x0
    beq-    branch_0x80315160
    lwz     r0, 0xc(r30)
    addi    r3, r29, 0x0
    mulli   r27, r0, 0xa0
    stw     r29, 0x4(r28)
    mr      r4, r27
    bl      bzero__Q28JASystem4CalcFPvUl
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    bl      DCFlushRange
    b       branch_0x80315174

branch_0x80315160:
    cmplwi  r30, 0x0
    beq-    branch_0x80315170
    cmplwi  r29, 0x0
    beq-    branch_0x80315174
branch_0x80315170:
    stw     r29, 0x4(r28)
branch_0x80315174:
    lwz     r0, 0x4(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8031518c
    lbz     r0, 0x0(r30)
    sth     r0, 0x0(r28)
    b       branch_0x80315194

branch_0x8031518c:
    li      r0, 0x0
    sth     r0, 0x0(r28)
branch_0x80315194:
    addi    r3, r28, 0x0
    li      r4, 0x20
    bl      DCFlushRange
    mr      r3, r31
    bl      OSRestoreInterrupts
    lmw     r27, 0x24(sp)
    li      r3, 0x1
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl allocInit__Q38JASystem12DSPInterface9DSPBufferFv
allocInit__Q38JASystem12DSPInterface9DSPBufferFv: # 0x803151c0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    sth     r0, 0xc(r3)
    sth     r0, 0x2(r31)
    sth     r0, 0x10a(r31)
    sth     r0, 0x0(r31)
    sth     r0, 0x58(r31)
    bl      initFilter__Q38JASystem12DSPInterface9DSPBufferFv
    mr      r3, r31
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl playStart__Q38JASystem12DSPInterface9DSPBufferFv
playStart__Q38JASystem12DSPInterface9DSPBufferFv: # 0x8031520c
    li      r5, 0x0
    stw     r5, 0x10c(r3)
    li      r4, 0x0
    li      r0, 0x1
    stw     r5, 0x68(r3)
    cmpwi   r4, 0x14
    sth     r5, 0x60(r3)
    sth     r0, 0x8(r3)
    sth     r5, 0x66(r3)
    sth     r5, 0x78(r3)
    sth     r5, 0xa8(r3)
    sth     r5, 0x7a(r3)
    sth     r5, 0xaa(r3)
    sth     r5, 0x7c(r3)
    sth     r5, 0xac(r3)
    sth     r5, 0x7e(r3)
    sth     r5, 0xae(r3)
    bge-    branch_0x803152bc
    sth     r5, 0x80(r3)
    li      r4, 0x10
    subfic  r0, r4, 0x14
    sth     r5, 0x82(r3)
    cmpwi   r4, 0x14
    mtctr   r0
    slwi    r4, r4, 1
    sth     r5, 0x84(r3)
    sth     r5, 0x86(r3)
    sth     r5, 0x88(r3)
    sth     r5, 0x8a(r3)
    sth     r5, 0x8c(r3)
    sth     r5, 0x8e(r3)
    sth     r5, 0x90(r3)
    sth     r5, 0x92(r3)
    sth     r5, 0x94(r3)
    sth     r5, 0x96(r3)
    sth     r5, 0x98(r3)
    sth     r5, 0x9a(r3)
    sth     r5, 0x9c(r3)
    sth     r5, 0x9e(r3)
    bge-    branch_0x803152bc
branch_0x803152ac:
    addi    r0, r4, 0x80
    sthx    r5, r3, r0
    addi    r4, r4, 0x2
    bdnz+      branch_0x803152ac
branch_0x803152bc:
    li      r0, 0x1
    sth     r0, 0x0(r3)
    blr


.globl setWaveInfo__Q38JASystem12DSPInterface9DSPBufferFPQ38JASystem6Driver5Wave_Ul
setWaveInfo__Q38JASystem12DSPInterface9DSPBufferFPQ38JASystem6Driver5Wave_Ul: # 0x803152c8
    stw     r5, 0x118(r3)
    addi    r6, r13, R13Off_m0x7404
    addi    r5, r13, R13Off_m0x73fc
    lbz     r0, 0x1(r4)
    lbzx    r0, r6, r0
    sth     r0, 0x64(r3)
    lbz     r0, 0x1(r4)
    lbzx    r0, r5, r0
    sth     r0, 0x100(r3)
    lhz     r0, 0x100(r3)
    cmplwi  r0, 0x4
    bltlr-    

    lwz     r0, 0x1c(r4)
    stw     r0, 0x11c(r3)
    lwz     r0, 0x10(r4)
    sth     r0, 0x102(r3)
    lhz     r0, 0x102(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80315338
    lwz     r0, 0x14(r4)
    stw     r0, 0x110(r3)
    lwz     r0, 0x18(r4)
    stw     r0, 0x114(r3)
    lha     r0, 0x20(r4)
    sth     r0, 0x104(r3)
    lha     r0, 0x22(r4)
    sth     r0, 0x106(r3)
    b       branch_0x80315340

branch_0x80315338:
    lwz     r0, 0x11c(r3)
    stw     r0, 0x114(r3)
branch_0x80315340:
    li      r0, 0x0
    cmpwi   r0, 0x10
    bgelr-    

    li      r0, 0x0
    sth     r0, 0xb0(r3)
    sth     r0, 0xb2(r3)
    sth     r0, 0xb4(r3)
    sth     r0, 0xb6(r3)
    sth     r0, 0xb8(r3)
    sth     r0, 0xba(r3)
    sth     r0, 0xbc(r3)
    sth     r0, 0xbe(r3)
    sth     r0, 0xc0(r3)
    sth     r0, 0xc2(r3)
    sth     r0, 0xc4(r3)
    sth     r0, 0xc6(r3)
    sth     r0, 0xc8(r3)
    sth     r0, 0xca(r3)
    sth     r0, 0xcc(r3)
    sth     r0, 0xce(r3)
    blr


.globl setOscInfo__Q38JASystem12DSPInterface9DSPBufferFUl
setOscInfo__Q38JASystem12DSPInterface9DSPBufferFUl: # 0x80315394
    li      r0, 0x0
    stw     r0, 0x118(r3)
    li      r0, 0x10
    sth     r0, 0x64(r3)
    sth     r4, 0x100(r3)
    blr


.globl initAutoMixer__Q38JASystem12DSPInterface9DSPBufferFv
initAutoMixer__Q38JASystem12DSPInterface9DSPBufferFv: # 0x803153ac
    lhz     r0, 0x58(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803153c4
    lhz     r0, 0x56(r3)
    sth     r0, 0x54(r3)
    blr

branch_0x803153c4:
    li      r0, 0x0
    sth     r0, 0x54(r3)
    li      r0, 0x1
    sth     r0, 0x58(r3)
    blr


.globl setAutoMixer__Q38JASystem12DSPInterface9DSPBufferFUsUcUcUcUc
setAutoMixer__Q38JASystem12DSPInterface9DSPBufferFUsUcUcUcUc: # 0x803153d8
    clrlwi  r0, r6, 24
    insrwi  r0, r5, 8, 16
    sth     r0, 0x50(r3)
    clrlslwi  r0, r7, 24, 8
    sth     r0, 0x52(r3)
    li      r0, 0x1
    sth     r4, 0x56(r3)
    sth     r0, 0x58(r3)
    blr


.globl setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
setPitch__Q38JASystem12DSPInterface9DSPBufferFUs: # 0x803153fc
    clrlwi  r0, r4, 16
    cmplwi  r0, 0x7fff
    blt-    branch_0x8031540c
    li      r4, 0x7fff
branch_0x8031540c:
    sth     r4, 0x4(r3)
    blr


.globl setMixerInitDelayMax__Q38JASystem12DSPInterface9DSPBufferFUc
setMixerInitDelayMax__Q38JASystem12DSPInterface9DSPBufferFUc: # 0x80315414
    clrlwi  r0, r4, 24
    sth     r0, 0xe(r3)
    blr


.globl setMixerInitVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
setMixerInitVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc: # 0x80315420
    clrlslwi  r4, r4, 24, 3
    addi    r4, r4, 0x10
    add     r4, r3, r4
    sth     r5, 0x4(r4)
    clrlslwi  r0, r6, 24, 8
    insrwi  r0, r6, 8, 24
    sth     r5, 0x2(r4)
    sth     r0, 0x6(r4)
    blr


.globl setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc: # 0x80315444
    lhz     r0, 0x10a(r3)
    cmplwi  r0, 0x0
    bnelr-    

    clrlslwi  r4, r4, 24, 3
    addi    r4, r4, 0x10
    add     r4, r3, r4
    sth     r5, 0x2(r4)
    lhz     r0, 0x6(r4)
    clrlwi  r0, r0, 24
    insrwi  r0, r6, 8, 16
    sth     r0, 0x6(r4)
    blr


.globl setMixerVolumeOnly__Q38JASystem12DSPInterface9DSPBufferFUcs
setMixerVolumeOnly__Q38JASystem12DSPInterface9DSPBufferFUcs: # 0x80315474
    lhz     r0, 0x10a(r3)
    cmplwi  r0, 0x0
    bnelr-    

    clrlslwi  r0, r4, 24, 3
    add     r3, r3, r0
    sth     r5, 0x12(r3)
    blr


.globl setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc: # 0x80315490
    clrlwi  r0, r4, 24
    sth     r0, 0xc(r3)
    blr


.globl flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
flushChannel__Q38JASystem12DSPInterface9DSPBufferFv: # 0x8031549c
    mflr    r0
    li      r4, 0x180
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      DCFlushRangeNoSync
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setIIRFilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
setIIRFilterParam__Q38JASystem12DSPInterface9DSPBufferFPs: # 0x803154c0
    lha     r0, 0x0(r4)
    sthu    r0, 0x148(r3)
    lhau    r0, 0x2(r4)
    sth     r0, 0x2(r3)
    lha     r0, 0x2(r4)
    sth     r0, 0x4(r3)
    lha     r0, 0x4(r4)
    sth     r0, 0x6(r3)
    blr


.globl setFIR8FilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
setFIR8FilterParam__Q38JASystem12DSPInterface9DSPBufferFPs: # 0x803154e4
    lha     r0, 0x0(r4)
    sthu    r0, 0x120(r3)
    lhau    r0, 0x2(r4)
    sth     r0, 0x2(r3)
    lha     r0, 0x2(r4)
    sth     r0, 0x4(r3)
    lha     r0, 0x4(r4)
    sth     r0, 0x6(r3)
    lha     r0, 0x6(r4)
    sth     r0, 0x8(r3)
    lha     r0, 0x8(r4)
    sth     r0, 0xa(r3)
    lha     r0, 0xa(r4)
    sth     r0, 0xc(r3)
    lha     r0, 0xc(r4)
    sth     r0, 0xe(r3)
    blr


.globl setFilterMode__Q38JASystem12DSPInterface9DSPBufferFUs
setFilterMode__Q38JASystem12DSPInterface9DSPBufferFUs: # 0x80315528
    rlwinm. r0, r4, 0, 26, 26
    rlwinm  r5, r4, 0, 26, 26
    clrlwi  r0, r4, 27
    beq-    branch_0x80315548
    cmplwi  r0, 0x14
    ble-    branch_0x80315554
    li      r0, 0x14
    b       branch_0x80315554

branch_0x80315548:
    cmplwi  r0, 0x18
    ble-    branch_0x80315554
    li      r0, 0x18
branch_0x80315554:
    clrlwi  r4, r5, 24
    clrlwi  r0, r0, 24
    add     r0, r4, r0
    sth     r0, 0x108(r3)
    blr


.globl initFilter__Q38JASystem12DSPInterface9DSPBufferFv
initFilter__Q38JASystem12DSPInterface9DSPBufferFv: # 0x80315568
    li      r4, 0x0
    sth     r4, 0x120(r3)
    li      r0, 0x7fff
    sth     r4, 0x122(r3)
    sth     r4, 0x124(r3)
    sth     r4, 0x126(r3)
    sth     r4, 0x128(r3)
    sth     r4, 0x12a(r3)
    sth     r4, 0x12c(r3)
    sth     r4, 0x12e(r3)
    sth     r0, 0x120(r3)
    sth     r4, 0x148(r3)
    sth     r4, 0x14a(r3)
    sth     r4, 0x14c(r3)
    sth     r4, 0x14e(r3)
    sth     r0, 0x148(r3)
    sth     r4, 0x150(r3)
    blr


.globl setDistFilter__Q38JASystem12DSPInterface9DSPBufferFs
setDistFilter__Q38JASystem12DSPInterface9DSPBufferFs: # 0x803155b0
    sth     r4, 0x150(r3)
    blr


.globl setBusConnect__Q38JASystem12DSPInterface9DSPBufferFUcUc
setBusConnect__Q38JASystem12DSPInterface9DSPBufferFUcUc: # 0x803155b8
    lis     r6, connect_table_341@h
    clrlslwi  r5, r5, 24, 1
    addi    r0, r6, connect_table_341@l
    add     r5, r0, r5
    clrlslwi  r4, r4, 24, 3
    lhz     r5, 0x0(r5)
    addi    r0, r4, 0x10
    sthx    r5, r3, r0
    blr

