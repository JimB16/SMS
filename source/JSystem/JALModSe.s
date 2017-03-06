
.globl init__9JALSystemFv
init__9JALSystemFv: # 0x802fd344
    mflr    r0
    li      r3, 0x40
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802fd36c
    mr      r3, r31
    bl      __ct__Q29JALSystem12TFlagManagerFv
branch_0x802fd36c:
    stw     r31, -0x5da0(r13)
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl gateCheckFunc__9JALSystemFUlf
gateCheckFunc__9JALSystemFUlf: # 0x802fd384
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stfd    f31, 0x18(sp)
    fmr     f31, f1
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, r31, 0x0
    lwz     r0, -0x5da0(r13)
    mr      r3, r0
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd3d8
    mr      r3, r31
    fmr     f1, f31
    bl      gateCheck__31JALSeModData_15JALSeModVolFunk_FUlf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd3d8
    li      r3, 0x1
    b       branch_0x802fd4e0

branch_0x802fd3d8:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x2
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd40c
    mr      r3, r31
    fmr     f1, f31
    bl      gateCheck__31JALSeModData_15JALSeModPitFunk_FUlf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd40c
    li      r3, 0x1
    b       branch_0x802fd4e0

branch_0x802fd40c:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x4
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd440
    mr      r3, r31
    fmr     f1, f31
    bl      gateCheck__31JALSeModData_15JALSeModEffFunk_FUlf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd440
    li      r3, 0x1
    b       branch_0x802fd4e0

branch_0x802fd440:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x40
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd474
    mr      r3, r31
    fmr     f1, f31
    bl      gateCheckGrp__34JALSeModDataGrp_15JALSeModVolFGrp_FUlf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd474
    li      r3, 0x1
    b       branch_0x802fd4e0

branch_0x802fd474:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x80
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd4a8
    mr      r3, r31
    fmr     f1, f31
    bl      gateCheckGrp__34JALSeModDataGrp_15JALSeModPitFGrp_FUlf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd4a8
    li      r3, 0x1
    b       branch_0x802fd4e0

branch_0x802fd4a8:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x100
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd4dc
    mr      r3, r31
    fmr     f1, f31
    bl      gateCheckGrp__34JALSeModDataGrp_15JALSeModEffFGrp_FUlf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd4dc
    li      r3, 0x1
    b       branch_0x802fd4e0

branch_0x802fd4dc:
    li      r3, 0x0
branch_0x802fd4e0:
    lwz     r0, 0x24(sp)
    lfd     f31, 0x18(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl processModFunc__9JALSystemFP8JAISoundfUlUc
processModFunc__9JALSystemFP8JAISoundfUlUc: # 0x802fd4f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    mr.     r28, r3
    beq-    branch_0x802fd6d4
    lwz     r31, 0x8(r28)
    li      r5, 0x1
    lwz     r3, -0x5da0(r13)
    mr      r4, r31
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd578
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    bl      calc__31JALSeModData_15JALSeModVolFunk_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd5bc
    lfs     f1, 0x1c(sp)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setVolume__8JAISoundFfUlUc
    b       branch_0x802fd5bc

branch_0x802fd578:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x40
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd5bc
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    bl      calcGrp__34JALSeModDataGrp_15JALSeModVolFGrp_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd5bc
    lfs     f1, 0x1c(sp)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x802fd5bc:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x2
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd604
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    bl      calc__31JALSeModData_15JALSeModPitFunk_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd648
    lfs     f1, 0x1c(sp)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setPitch__8JAISoundFfUlUc
    b       branch_0x802fd648

branch_0x802fd604:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x80
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd648
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    bl      calcGrp__34JALSeModDataGrp_15JALSeModPitFGrp_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd648
    lfs     f1, 0x1c(sp)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setPitch__8JAISoundFfUlUc
branch_0x802fd648:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x4
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd690
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    bl      calc__31JALSeModData_15JALSeModEffFunk_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd6d4
    lfs     f1, 0x1c(sp)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setFxmix__8JAISoundFfUlUc
    b       branch_0x802fd6d4

branch_0x802fd690:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x100
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd6d4
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    bl      calcGrp__34JALSeModDataGrp_15JALSeModEffFGrp_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd6d4
    lfs     f1, 0x1c(sp)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setFxmix__8JAISoundFfUlUc
branch_0x802fd6d4:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x38
    blr


.globl processModDistVolume__9JALSystemFUlf
processModDistVolume__9JALSystemFUlf: # 0x802fd6f8
    mflr    r0
    li      r5, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r4, r31, 0x0
    lwz     r0, -0x5da0(r13)
    mr      r3, r0
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd750
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    bl      calc__31JALSeModData_15JALSeModVolDist_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd788
    lfs     f1, 0x10(sp)
    b       branch_0x802fd78c

branch_0x802fd750:
    lwz     r3, -0x5da0(r13)
    addi    r4, r31, 0x0
    li      r5, 0x200
    bl      isRegistered__Q29JALSystem12TFlagManagerFUlUs
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd788
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    bl      calcGrp__34JALSeModDataGrp_15JALSeModVolDGrp_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x802fd788
    lfs     f1, 0x10(sp)
    b       branch_0x802fd78c

branch_0x802fd788:
    lfs     f1, 0x488(rtoc)
branch_0x802fd78c:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc: # 0x802fd7a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    fmr     f31, f5
    stfd    f30, 0x120(sp)
    fmr     f30, f4
    stfd    f29, 0x118(sp)
    fmr     f29, f3
    stfd    f28, 0x110(sp)
    fmr     f28, f2
    stmw    r26, 0xf8(sp)
    addi    r31, r3, 0x0
    addi    r29, r4, 0x0
    mr      r30, r5
    addi    r28, r6, 0x0
    addi    r27, r7, 0x0
    addi    r3, sp, 0xec
    li      r4, 0x0
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f28
    addi    r3, sp, 0xf0
    li      r4, 0x0
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f29
    addi    r3, sp, 0xe8
    li      r4, 0x0
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f30
    addi    r3, sp, 0xe0
    li      r4, 0x0
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f31
    addi    r3, sp, 0xe4
    li      r4, 0x0
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f30
    addi    r3, sp, 0xd8
    li      r4, 0x0
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f31
    addi    r3, sp, 0xdc
    li      r4, 0x0
    bl      __ct__9JADPrm_f_FfPCc
    cmpwi   r31, 0x40
    beq-    branch_0x802fdaf8
    bge-    branch_0x802fd8ac
    cmpwi   r31, 0x8
    beq-    branch_0x802fd9f0
    bge-    branch_0x802fd894
    cmpwi   r31, 0x3
    beq-    branch_0x802fdd4c
    bge-    branch_0x802fd888
    cmpwi   r31, 0x1
    beq-    branch_0x802fd8e8
    bge-    branch_0x802fd940
    b       branch_0x802fdd4c

branch_0x802fd888:
    cmpwi   r31, 0x5
    bge-    branch_0x802fdd4c
    b       branch_0x802fd998

branch_0x802fd894:
    cmpwi   r31, 0x20
    beq-    branch_0x802fda48
    bge-    branch_0x802fdd4c
    cmpwi   r31, 0x10
    beq-    branch_0x802fdaa0
    b       branch_0x802fdd4c

branch_0x802fd8ac:
    cmpwi   r31, 0x200
    beq-    branch_0x802fdc24
    bge-    branch_0x802fd8d0
    cmpwi   r31, 0x100
    beq-    branch_0x802fdbc0
    bge-    branch_0x802fdd4c
    cmpwi   r31, 0x80
    beq-    branch_0x802fdb5c
    b       branch_0x802fdd4c

branch_0x802fd8d0:
    cmpwi   r31, 0x800
    beq-    branch_0x802fdcec
    bge-    branch_0x802fdd4c
    cmpwi   r31, 0x400
    beq-    branch_0x802fdc88
    b       branch_0x802fdd4c

branch_0x802fd8e8:
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fd92c
    mr      r3, r26
    stw     r27, 0x8(sp)
    addi    r4, r29, 0x0
    addi    r5, r3, 0x0
    addi    r6, r30, 0x0
    addi    r10, r28, 0x0
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModVolFunk_FPCcP15JALSeModVolFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lis     r3, 0x803e
    addi    r0, r3, 0x24a0
    stw     r0, 0x14(r26)
branch_0x802fd92c:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fdd4c

branch_0x802fd940:
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fd984
    mr      r3, r26
    stw     r27, 0x8(sp)
    addi    r4, r29, 0x0
    addi    r5, r3, 0x0
    addi    r6, r30, 0x0
    addi    r10, r28, 0x0
    addi    r7, sp, 0xec
    addi    r8, sp, 0xd8
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModPitFunk_FPCcP15JALSeModPitFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lis     r3, 0x803e
    addi    r0, r3, 0x2490
    stw     r0, 0x14(r26)
branch_0x802fd984:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fdd4c

branch_0x802fd998:
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fd9dc
    mr      r3, r26
    stw     r27, 0x8(sp)
    addi    r4, r29, 0x0
    addi    r5, r3, 0x0
    addi    r6, r30, 0x0
    addi    r10, r28, 0x0
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModEffFunk_FPCcP15JALSeModEffFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lis     r3, 0x803e
    addi    r0, r3, 0x2480
    stw     r0, 0x14(r26)
branch_0x802fd9dc:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fdd4c

branch_0x802fd9f0:
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fda34
    mr      r3, r26
    stw     r27, 0x8(sp)
    addi    r4, r29, 0x0
    addi    r5, r3, 0x0
    addi    r6, r30, 0x0
    addi    r10, r28, 0x0
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModVolDist_FPCcP15JALSeModVolDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lis     r3, 0x803e
    addi    r0, r3, 0x2470
    stw     r0, 0x14(r26)
branch_0x802fda34:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fdd4c

branch_0x802fda48:
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fda8c
    mr      r3, r26
    stw     r27, 0x8(sp)
    addi    r4, r29, 0x0
    addi    r5, r3, 0x0
    addi    r6, r30, 0x0
    addi    r10, r28, 0x0
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModEffDist_FPCcP15JALSeModEffDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lis     r3, 0x803e
    addi    r0, r3, 0x2460
    stw     r0, 0x14(r26)
branch_0x802fda8c:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fdd4c

branch_0x802fdaa0:
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fdae4
    mr      r3, r26
    stw     r27, 0x8(sp)
    addi    r4, r29, 0x0
    addi    r5, r3, 0x0
    addi    r6, r30, 0x0
    addi    r10, r28, 0x0
    addi    r7, sp, 0xec
    addi    r8, sp, 0xd8
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModPitDist_FPCcP15JALSeModPitDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lis     r3, 0x803e
    addi    r0, r3, 0x2450
    stw     r0, 0x14(r26)
branch_0x802fdae4:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fdd4c

branch_0x802fdaf8:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fdd4c
    stw     r26, 0x6c(sp)
    addi    r5, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x8(sp)
    mr      r6, r30
    addi    r10, r28, 0x0
    lwz     r3, 0x6c(sp)
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModVolFGrp_FPCcP15JALSeModVolFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lwz     r27, 0x6c(sp)
    addi    r3, r27, 0x30
    bl      __ct__30JSUList_19JALSeModDataGrpMemb_Fv
    lis     r3, 0x803e
    addi    r0, r3, 0x2440
    lis     r3, 0x803e
    stw     r0, 0x14(r27)
    addi    r0, r3, 0x2430
    stw     r0, 0x14(r26)
    b       branch_0x802fdd4c

branch_0x802fdb5c:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fdd4c
    stw     r26, 0x68(sp)
    addi    r5, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x8(sp)
    mr      r6, r30
    addi    r10, r28, 0x0
    lwz     r3, 0x68(sp)
    addi    r7, sp, 0xec
    addi    r8, sp, 0xd8
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModPitFGrp_FPCcP15JALSeModPitFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lwz     r27, 0x68(sp)
    addi    r3, r27, 0x30
    bl      __ct__30JSUList_19JALSeModDataGrpMemb_Fv
    lis     r3, 0x803e
    addi    r0, r3, 0x2420
    lis     r3, 0x803e
    stw     r0, 0x14(r27)
    addi    r0, r3, 0x2410
    stw     r0, 0x14(r26)
    b       branch_0x802fdd4c

branch_0x802fdbc0:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fdd4c
    stw     r26, 0x64(sp)
    addi    r5, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x8(sp)
    mr      r6, r30
    addi    r10, r28, 0x0
    lwz     r3, 0x64(sp)
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModEffFGrp_FPCcP15JALSeModEffFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lwz     r27, 0x64(sp)
    addi    r3, r27, 0x30
    bl      __ct__30JSUList_19JALSeModDataGrpMemb_Fv
    lis     r3, 0x803e
    addi    r0, r3, 0x2400
    lis     r3, 0x803e
    stw     r0, 0x14(r27)
    addi    r0, r3, 0x23f0
    stw     r0, 0x14(r26)
    b       branch_0x802fdd4c

branch_0x802fdc24:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fdd4c
    stw     r26, 0x60(sp)
    addi    r5, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x8(sp)
    mr      r6, r30
    addi    r10, r28, 0x0
    lwz     r3, 0x60(sp)
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModVolDGrp_FPCcP15JALSeModVolDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lwz     r27, 0x60(sp)
    addi    r3, r27, 0x30
    bl      __ct__30JSUList_19JALSeModDataGrpMemb_Fv
    lis     r3, 0x803e
    addi    r0, r3, 0x23e0
    lis     r3, 0x803e
    stw     r0, 0x14(r27)
    addi    r0, r3, 0x23d0
    stw     r0, 0x14(r26)
    b       branch_0x802fdd4c

branch_0x802fdc88:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fdd4c
    stw     r26, 0x5c(sp)
    addi    r5, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x8(sp)
    mr      r6, r30
    addi    r10, r28, 0x0
    lwz     r3, 0x5c(sp)
    addi    r7, sp, 0xec
    addi    r8, sp, 0xe0
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModEffDGrp_FPCcP15JALSeModEffDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lwz     r27, 0x5c(sp)
    addi    r3, r27, 0x30
    bl      __ct__30JSUList_19JALSeModDataGrpMemb_Fv
    lis     r3, 0x803e
    addi    r0, r3, 0x23c0
    lis     r3, 0x803e
    stw     r0, 0x14(r27)
    addi    r0, r3, 0x23b0
    stw     r0, 0x14(r26)
    b       branch_0x802fdd4c

branch_0x802fdcec:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802fdd4c
    stw     r26, 0x58(sp)
    addi    r5, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x8(sp)
    mr      r6, r30
    addi    r10, r28, 0x0
    lwz     r3, 0x58(sp)
    addi    r7, sp, 0xec
    addi    r8, sp, 0xd8
    addi    r9, sp, 0xe8
    bl      __ct__31JALSeModData_15JALSeModPitDGrp_FPCcP15JALSeModPitDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
    lwz     r27, 0x58(sp)
    addi    r3, r27, 0x30
    bl      __ct__30JSUList_19JALSeModDataGrpMemb_Fv
    lis     r3, 0x803e
    addi    r0, r3, 0x23a0
    lis     r3, 0x803e
    stw     r0, 0x14(r27)
    addi    r0, r3, 0x2390
    stw     r0, 0x14(r26)
branch_0x802fdd4c:
    lmw     r26, 0xf8(sp)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    lfd     f29, 0x118(sp)
    lfd     f28, 0x110(sp)
    addi    sp, sp, 0x130
    blr


.globl __ct__30JSUList_19JALSeModDataGrpMemb_Fv
__ct__30JSUList_19JALSeModDataGrpMemb_Fv: # 0x802fdd70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initiate__10JSUPtrListFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl: # 0x802fdda0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    cmpwi   r31, 0x200
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    stw     r28, 0x48(sp)
    beq-    branch_0x802fdf28
    bge-    branch_0x802fddf4
    cmpwi   r31, 0x80
    beq-    branch_0x802fde68
    bge-    branch_0x802fdde8
    cmpwi   r31, 0x40
    beq-    branch_0x802fde0c
    b       branch_0x802fe050

branch_0x802fdde8:
    cmpwi   r31, 0x100
    beq-    branch_0x802fdec4
    b       branch_0x802fe050

branch_0x802fddf4:
    cmpwi   r31, 0x800
    beq-    branch_0x802fdff0
    bge-    branch_0x802fe050
    cmpwi   r31, 0x400
    beq-    branch_0x802fdf8c
    b       branch_0x802fe050

branch_0x802fde0c:
    mr      r3, r4
    bl      search__30JALListS_15JALSeModVolFGrp_Ul_FUl
    mr.     r29, r3
    beq-    branch_0x802fde54
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802fde40
    addi    r3, r28, 0x0
    addi    r4, r3, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    bl      __ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_
branch_0x802fde40:
    addi    r4, r28, 0x4
    addi    r3, r29, 0x30
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r29, 0x30
    stw     r0, 0x14(r28)
branch_0x802fde54:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fe050

branch_0x802fde68:
    mr      r3, r4
    bl      search__30JALListS_15JALSeModPitFGrp_Ul_FUl
    mr.     r29, r3
    beq-    branch_0x802fdeb0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802fde9c
    addi    r3, r28, 0x0
    addi    r4, r3, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    bl      __ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_
branch_0x802fde9c:
    addi    r4, r28, 0x4
    addi    r3, r29, 0x30
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r29, 0x30
    stw     r0, 0x14(r28)
branch_0x802fdeb0:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fe050

branch_0x802fdec4:
    mr      r3, r4
    bl      search__30JALListS_15JALSeModEffFGrp_Ul_FUl
    mr.     r29, r3
    beq-    branch_0x802fdf14
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802fdef8
    addi    r3, r28, 0x0
    addi    r4, r3, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    bl      __ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_
branch_0x802fdef8:
    cmplwi  r29, 0x0
    beq-    branch_0x802fdf14
    addi    r4, r28, 0x4
    addi    r3, r29, 0x30
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r29, 0x30
    stw     r0, 0x14(r28)
branch_0x802fdf14:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fe050

branch_0x802fdf28:
    mr      r3, r4
    bl      search__30JALListS_15JALSeModVolDGrp_Ul_FUl
    mr.     r29, r3
    beq-    branch_0x802fdf78
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802fdf5c
    addi    r3, r28, 0x0
    addi    r4, r3, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    bl      __ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_
branch_0x802fdf5c:
    cmplwi  r29, 0x0
    beq-    branch_0x802fdf78
    addi    r4, r28, 0x4
    addi    r3, r29, 0x30
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r29, 0x30
    stw     r0, 0x14(r28)
branch_0x802fdf78:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fe050

branch_0x802fdf8c:
    mr      r3, r4
    bl      search__30JALListS_15JALSeModEffDGrp_Ul_FUl
    mr.     r29, r3
    beq-    branch_0x802fdfdc
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802fdfc0
    addi    r3, r28, 0x0
    addi    r4, r3, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    bl      __ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_
branch_0x802fdfc0:
    cmplwi  r29, 0x0
    beq-    branch_0x802fdfdc
    addi    r4, r28, 0x4
    addi    r3, r29, 0x30
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r29, 0x30
    stw     r0, 0x14(r28)
branch_0x802fdfdc:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
    b       branch_0x802fe050

branch_0x802fdff0:
    mr      r3, r4
    bl      search__30JALListS_15JALSeModPitDGrp_Ul_FUl
    mr.     r29, r3
    beq-    branch_0x802fe040
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802fe024
    addi    r3, r28, 0x0
    addi    r4, r3, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    bl      __ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_
branch_0x802fe024:
    cmplwi  r29, 0x0
    beq-    branch_0x802fe040
    addi    r4, r28, 0x4
    addi    r3, r29, 0x30
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r29, 0x30
    stw     r0, 0x14(r28)
branch_0x802fe040:
    lwz     r3, -0x5da0(r13)
    addi    r4, r30, 0x0
    clrlwi  r5, r31, 16
    bl      addUseFlag__Q29JALSystem12TFlagManagerFUlUs
branch_0x802fe050:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl __ct__Q29JALSystem12TFlagManagerFv
__ct__Q29JALSystem12TFlagManagerFv: # 0x802fe070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x18(sp)
    b       branch_0x802fe180

branch_0x802fe098:
    lwz     r4, -0x5d90(r13)
    clrlwi  r28, r30, 24
    clrlslwi  r3, r30, 24, 1
    lwz     r4, 0x0(r4)
    addi    r0, r3, 0x8a
    lhzx    r31, r4, r0
    slwi    r3, r31, 1
    bl      __nwa__FUl
    slwi    r0, r28, 2
    add     r4, r29, r0
    cmplwi  r31, 0x0
    stw     r3, 0x0(r4)
    li      r3, 0x0
    ble-    branch_0x802fe17c
    cmplwi  r31, 0x8
    subi    r0, r31, 0x8
    ble-    branch_0x802fe158
    clrlwi  r0, r0, 16
    b       branch_0x802fe14c

branch_0x802fe0e4:
    lwz     r5, 0x0(r4)
    clrlslwi  r28, r3, 16, 1
    li      r12, 0x0
    sthx    r12, r5, r28
    addi    r5, r28, 0x2
    addi    r10, r28, 0x4
    lwz     r6, 0x0(r4)
    addi    r9, r28, 0x6
    addi    r8, r28, 0x8
    sthx    r12, r6, r5
    addi    r7, r28, 0xa
    addi    r6, r28, 0xc
    lwz     r11, 0x0(r4)
    addi    r5, r28, 0xe
    addi    r3, r3, 0x8
    sthx    r12, r11, r10
    lwz     r10, 0x0(r4)
    sthx    r12, r10, r9
    lwz     r9, 0x0(r4)
    sthx    r12, r9, r8
    lwz     r8, 0x0(r4)
    sthx    r12, r8, r7
    lwz     r7, 0x0(r4)
    sthx    r12, r7, r6
    lwz     r6, 0x0(r4)
    sthx    r12, r6, r5
branch_0x802fe14c:
    clrlwi  r5, r3, 16
    cmplw   r5, r0
    blt+    branch_0x802fe0e4
branch_0x802fe158:
    li      r6, 0x0
    b       branch_0x802fe170

branch_0x802fe160:
    lwz     r5, 0x0(r4)
    clrlslwi  r0, r3, 16, 1
    addi    r3, r3, 0x1
    sthx    r6, r5, r0
branch_0x802fe170:
    clrlwi  r0, r3, 16
    cmplw   r0, r31
    blt+    branch_0x802fe160
branch_0x802fe17c:
    addi    r30, r30, 0x1
branch_0x802fe180:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x10
    blt+    branch_0x802fe098
    mr      r3, r29
    b       branch_0x802fe198


.incbin "./baserom/code/Text_0x80005600.bin", 0x2f8b94, 0x802fe198 - 0x802fe194
branch_0x802fe198:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl addUseFlag__Q29JALSystem12TFlagManagerFUlUs
addUseFlag__Q29JALSystem12TFlagManagerFUlUs: # 0x802fe1b8
    rlwinm  r0, r4, 22, 26, 29
    lwzx    r6, r3, r0
    clrlslwi  r3, r4, 22, 1
    lhzx    r0, r6, r3
    add     r0, r0, r5
    sthx    r0, r6, r3
    blr


.globl isRegistered__Q29JALSystem12TFlagManagerFUlUs
isRegistered__Q29JALSystem12TFlagManagerFUlUs: # 0x802fe1d4
    rlwinm  r0, r4, 22, 26, 29
    lwzx    r3, r3, r0
    clrlslwi  r0, r4, 22, 1
    lhzx    r0, r3, r0
    clrlwi  r3, r5, 16
    and.    r0, r3, r0
    beq-    branch_0x802fe1f8
    li      r3, 0x1
    blr

branch_0x802fe1f8:
    li      r3, 0x0
    blr


.globl calcGrp__34JALSeModDataGrp_15JALSeModVolDGrp_FUlfPf
calcGrp__34JALSeModDataGrp_15JALSeModVolDGrp_FUlfPf: # 0x802fe200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      searchGroup__54JALListGrp_15JALSeModVolDGrp_Ul_19JALSeModDataGrpMemb_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fe248
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x802fe24c

branch_0x802fe248:
    li      r3, 0x0
branch_0x802fe24c:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcGrp__34JALSeModDataGrp_15JALSeModEffFGrp_FUlfPf
calcGrp__34JALSeModDataGrp_15JALSeModEffFGrp_FUlfPf: # 0x802fe264
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      searchGroup__54JALListGrp_15JALSeModEffFGrp_Ul_19JALSeModDataGrpMemb_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fe2ac
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x802fe2b0

branch_0x802fe2ac:
    li      r3, 0x0
branch_0x802fe2b0:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl gateCheckGrp__34JALSeModDataGrp_15JALSeModEffFGrp_FUlf
gateCheckGrp__34JALSeModDataGrp_15JALSeModEffFGrp_FUlf: # 0x802fe2c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    fmr     f31, f1
    bl      searchGroup__54JALListGrp_15JALSeModEffFGrp_Ul_19JALSeModDataGrpMemb_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fe300
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802fe304

branch_0x802fe300:
    li      r3, 0x0
branch_0x802fe304:
    lwz     r0, 0x1c(sp)
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl gateCheckGrp__34JALSeModDataGrp_15JALSeModPitFGrp_FUlf
gateCheckGrp__34JALSeModDataGrp_15JALSeModPitFGrp_FUlf: # 0x802fe318
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    fmr     f31, f1
    bl      searchGroup__54JALListGrp_15JALSeModPitFGrp_Ul_19JALSeModDataGrpMemb_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fe350
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802fe354

branch_0x802fe350:
    li      r3, 0x0
branch_0x802fe354:
    lwz     r0, 0x1c(sp)
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcGrp__34JALSeModDataGrp_15JALSeModVolFGrp_FUlfPf
calcGrp__34JALSeModDataGrp_15JALSeModVolFGrp_FUlfPf: # 0x802fe368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      searchGroup__54JALListGrp_15JALSeModVolFGrp_Ul_19JALSeModDataGrpMemb_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fe3b0
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x802fe3b4

branch_0x802fe3b0:
    li      r3, 0x0
branch_0x802fe3b4:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl gateCheckGrp__34JALSeModDataGrp_15JALSeModVolFGrp_FUlf
gateCheckGrp__34JALSeModDataGrp_15JALSeModVolFGrp_FUlf: # 0x802fe3cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    fmr     f31, f1
    bl      searchGroup__54JALListGrp_15JALSeModVolFGrp_Ul_19JALSeModDataGrpMemb_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fe404
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802fe408

branch_0x802fe404:
    li      r3, 0x0
branch_0x802fe408:
    lwz     r0, 0x1c(sp)
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcDyna__31JALSeModData_15JALSeModEffDGrp_Ff
calcDyna__31JALSeModData_15JALSeModEffDGrp_Ff: # 0x802fe41c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModEffDGrp_Ff
gateCheckDyna__31JALSeModData_15JALSeModEffDGrp_Ff: # 0x802fe454
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fe4a8
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe484
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe484
    li      r3, 0x1
    blr

branch_0x802fe484:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe4a0
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe4a0
    li      r3, 0x1
    blr

branch_0x802fe4a0:
    li      r3, 0x0
    blr

branch_0x802fe4a8:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fe4c4
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe4c4
    li      r3, 0x1
    blr

branch_0x802fe4c4:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fe4e0
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe4e0
    li      r3, 0x1
    blr

branch_0x802fe4e0:
    li      r3, 0x0
    blr


.globl calcDyna__31JALSeModData_15JALSeModPitDGrp_Ff
calcDyna__31JALSeModData_15JALSeModPitDGrp_Ff: # 0x802fe4e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModPitDGrp_Ff
gateCheckDyna__31JALSeModData_15JALSeModPitDGrp_Ff: # 0x802fe520
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fe574
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe550
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe550
    li      r3, 0x1
    blr

branch_0x802fe550:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe56c
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe56c
    li      r3, 0x1
    blr

branch_0x802fe56c:
    li      r3, 0x0
    blr

branch_0x802fe574:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fe590
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe590
    li      r3, 0x1
    blr

branch_0x802fe590:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fe5ac
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe5ac
    li      r3, 0x1
    blr

branch_0x802fe5ac:
    li      r3, 0x0
    blr


.globl calcDyna__31JALSeModData_15JALSeModVolDGrp_Ff
calcDyna__31JALSeModData_15JALSeModVolDGrp_Ff: # 0x802fe5b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModVolDGrp_Ff
gateCheckDyna__31JALSeModData_15JALSeModVolDGrp_Ff: # 0x802fe5ec
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fe640
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe61c
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe61c
    li      r3, 0x1
    blr

branch_0x802fe61c:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe638
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe638
    li      r3, 0x1
    blr

branch_0x802fe638:
    li      r3, 0x0
    blr

branch_0x802fe640:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fe65c
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe65c
    li      r3, 0x1
    blr

branch_0x802fe65c:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fe678
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe678
    li      r3, 0x1
    blr

branch_0x802fe678:
    li      r3, 0x0
    blr


.globl calcDyna__31JALSeModData_15JALSeModEffFGrp_Ff
calcDyna__31JALSeModData_15JALSeModEffFGrp_Ff: # 0x802fe680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModEffFGrp_Ff
gateCheckDyna__31JALSeModData_15JALSeModEffFGrp_Ff: # 0x802fe6b8
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fe70c
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe6e8
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe6e8
    li      r3, 0x1
    blr

branch_0x802fe6e8:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe704
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe704
    li      r3, 0x1
    blr

branch_0x802fe704:
    li      r3, 0x0
    blr

branch_0x802fe70c:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fe728
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe728
    li      r3, 0x1
    blr

branch_0x802fe728:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fe744
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe744
    li      r3, 0x1
    blr

branch_0x802fe744:
    li      r3, 0x0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModPitFGrp_Ff
gateCheckDyna__31JALSeModData_15JALSeModPitFGrp_Ff: # 0x802fe74c
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fe7a0
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe77c
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe77c
    li      r3, 0x1
    blr

branch_0x802fe77c:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe798
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe798
    li      r3, 0x1
    blr

branch_0x802fe798:
    li      r3, 0x0
    blr

branch_0x802fe7a0:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fe7bc
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe7bc
    li      r3, 0x1
    blr

branch_0x802fe7bc:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fe7d8
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe7d8
    li      r3, 0x1
    blr

branch_0x802fe7d8:
    li      r3, 0x0
    blr


.globl calcDyna__31JALSeModData_15JALSeModVolFGrp_Ff
calcDyna__31JALSeModData_15JALSeModVolFGrp_Ff: # 0x802fe7e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModVolFGrp_Ff
gateCheckDyna__31JALSeModData_15JALSeModVolFGrp_Ff: # 0x802fe818
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fe86c
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe848
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe848
    li      r3, 0x1
    blr

branch_0x802fe848:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe864
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe864
    li      r3, 0x1
    blr

branch_0x802fe864:
    li      r3, 0x0
    blr

branch_0x802fe86c:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fe888
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe888
    li      r3, 0x1
    blr

branch_0x802fe888:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fe8a4
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe8a4
    li      r3, 0x1
    blr

branch_0x802fe8a4:
    li      r3, 0x0
    blr


.globl calcDyna__31JALSeModData_15JALSeModEffDist_Ff
calcDyna__31JALSeModData_15JALSeModEffDist_Ff: # 0x802fe8ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModEffDist_Ff
gateCheckDyna__31JALSeModData_15JALSeModEffDist_Ff: # 0x802fe8e4
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fe938
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe914
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe914
    li      r3, 0x1
    blr

branch_0x802fe914:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe930
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe930
    li      r3, 0x1
    blr

branch_0x802fe930:
    li      r3, 0x0
    blr

branch_0x802fe938:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fe954
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe954
    li      r3, 0x1
    blr

branch_0x802fe954:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fe970
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe970
    li      r3, 0x1
    blr

branch_0x802fe970:
    li      r3, 0x0
    blr


.globl calcDyna__31JALSeModData_15JALSeModPitDist_Ff
calcDyna__31JALSeModData_15JALSeModPitDist_Ff: # 0x802fe978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModPitDist_Ff
gateCheckDyna__31JALSeModData_15JALSeModPitDist_Ff: # 0x802fe9b0
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fea04
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fe9e0
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fe9e0
    li      r3, 0x1
    blr

branch_0x802fe9e0:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fe9fc
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fe9fc
    li      r3, 0x1
    blr

branch_0x802fe9fc:
    li      r3, 0x0
    blr

branch_0x802fea04:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fea20
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fea20
    li      r3, 0x1
    blr

branch_0x802fea20:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fea3c
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fea3c
    li      r3, 0x1
    blr

branch_0x802fea3c:
    li      r3, 0x0
    blr


.globl calc__31JALSeModData_15JALSeModVolDist_FUlfPf
calc__31JALSeModData_15JALSeModVolDist_FUlfPf: # 0x802fea44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      search__30JALListS_15JALSeModVolDist_Ul_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fea8c
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x802fea90

branch_0x802fea8c:
    li      r3, 0x0
branch_0x802fea90:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcDyna__31JALSeModData_15JALSeModVolDist_Ff
calcDyna__31JALSeModData_15JALSeModVolDist_Ff: # 0x802feaa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModVolDist_Ff
gateCheckDyna__31JALSeModData_15JALSeModVolDist_Ff: # 0x802feae0
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802feb34
    fcmpo   cr0, f1, f0
    ble-    branch_0x802feb10
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802feb10
    li      r3, 0x1
    blr

branch_0x802feb10:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802feb2c
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802feb2c
    li      r3, 0x1
    blr

branch_0x802feb2c:
    li      r3, 0x0
    blr

branch_0x802feb34:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802feb50
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802feb50
    li      r3, 0x1
    blr

branch_0x802feb50:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802feb6c
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802feb6c
    li      r3, 0x1
    blr

branch_0x802feb6c:
    li      r3, 0x0
    blr


.globl calc__31JALSeModData_15JALSeModEffFunk_FUlfPf
calc__31JALSeModData_15JALSeModEffFunk_FUlfPf: # 0x802feb74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      search__30JALListS_15JALSeModEffFunk_Ul_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802febbc
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x802febc0

branch_0x802febbc:
    li      r3, 0x0
branch_0x802febc0:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcDyna__31JALSeModData_15JALSeModEffFunk_Ff
calcDyna__31JALSeModData_15JALSeModEffFunk_Ff: # 0x802febd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheck__31JALSeModData_15JALSeModEffFunk_FUlf
gateCheck__31JALSeModData_15JALSeModEffFunk_FUlf: # 0x802fec10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    fmr     f31, f1
    bl      search__30JALListS_15JALSeModEffFunk_Ul_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fec48
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802fec4c

branch_0x802fec48:
    li      r3, 0x0
branch_0x802fec4c:
    lwz     r0, 0x1c(sp)
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModEffFunk_Ff
gateCheckDyna__31JALSeModData_15JALSeModEffFunk_Ff: # 0x802fec60
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fecb4
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fec90
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fec90
    li      r3, 0x1
    blr

branch_0x802fec90:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fecac
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fecac
    li      r3, 0x1
    blr

branch_0x802fecac:
    li      r3, 0x0
    blr

branch_0x802fecb4:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fecd0
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fecd0
    li      r3, 0x1
    blr

branch_0x802fecd0:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fecec
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fecec
    li      r3, 0x1
    blr

branch_0x802fecec:
    li      r3, 0x0
    blr


.globl calc__31JALSeModData_15JALSeModPitFunk_FUlfPf
calc__31JALSeModData_15JALSeModPitFunk_FUlfPf: # 0x802fecf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      search__30JALListS_15JALSeModPitFunk_Ul_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fed3c
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x802fed40

branch_0x802fed3c:
    li      r3, 0x0
branch_0x802fed40:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcDyna__31JALSeModData_15JALSeModPitFunk_Ff
calcDyna__31JALSeModData_15JALSeModPitFunk_Ff: # 0x802fed58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheck__31JALSeModData_15JALSeModPitFunk_FUlf
gateCheck__31JALSeModData_15JALSeModPitFunk_FUlf: # 0x802fed90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    fmr     f31, f1
    bl      search__30JALListS_15JALSeModPitFunk_Ul_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802fedc8
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802fedcc

branch_0x802fedc8:
    li      r3, 0x0
branch_0x802fedcc:
    lwz     r0, 0x1c(sp)
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModPitFunk_Ff
gateCheckDyna__31JALSeModData_15JALSeModPitFunk_Ff: # 0x802fede0
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fee34
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fee10
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fee10
    li      r3, 0x1
    blr

branch_0x802fee10:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fee2c
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fee2c
    li      r3, 0x1
    blr

branch_0x802fee2c:
    li      r3, 0x0
    blr

branch_0x802fee34:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fee50
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fee50
    li      r3, 0x1
    blr

branch_0x802fee50:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fee6c
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fee6c
    li      r3, 0x1
    blr

branch_0x802fee6c:
    li      r3, 0x0
    blr


.globl gateCheck__31JALSeModData_15JALSeModVolFunk_FUlf
gateCheck__31JALSeModData_15JALSeModVolFunk_FUlf: # 0x802fee74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    fmr     f31, f1
    bl      search__30JALListS_15JALSeModVolFunk_Ul_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802feeac
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802feeb0

branch_0x802feeac:
    li      r3, 0x0
branch_0x802feeb0:
    lwz     r0, 0x1c(sp)
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl gateCheckDyna__31JALSeModData_15JALSeModVolFunk_Ff
gateCheckDyna__31JALSeModData_15JALSeModVolFunk_Ff: # 0x802feec4
    lfs     f0, 0x1c(r3)
    lfs     f2, 0x18(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x802fef18
    fcmpo   cr0, f1, f0
    ble-    branch_0x802feef4
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802feef4
    li      r3, 0x1
    blr

branch_0x802feef4:
    fcmpo   cr0, f1, f2
    bge-    branch_0x802fef10
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fef10
    li      r3, 0x1
    blr

branch_0x802fef10:
    li      r3, 0x0
    blr

branch_0x802fef18:
    fcmpo   cr0, f1, f2
    ble-    branch_0x802fef34
    lbz     r0, 0x2d(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802fef34
    li      r3, 0x1
    blr

branch_0x802fef34:
    fcmpo   cr0, f1, f0
    bge-    branch_0x802fef50
    lbz     r0, 0x2d(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802fef50
    li      r3, 0x1
    blr

branch_0x802fef50:
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModPitFunk_Ul_FUl
search__30JALListS_15JALSeModPitFunk_Ul_FUl: # 0x802fef58
    lwz     r4, -0x721c(r13)
    b       branch_0x802fef7c

branch_0x802fef60:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802fef78
    mr      r3, r5
    blr

branch_0x802fef78:
    lwz     r4, 0xc(r4)
branch_0x802fef7c:
    cmplwi  r4, 0x0
    bne+    branch_0x802fef60
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModEffFunk_Ul_FUl
search__30JALListS_15JALSeModEffFunk_Ul_FUl: # 0x802fef8c
    lwz     r4, -0x7228(r13)
    b       branch_0x802fefb0

branch_0x802fef94:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802fefac
    mr      r3, r5
    blr

branch_0x802fefac:
    lwz     r4, 0xc(r4)
branch_0x802fefb0:
    cmplwi  r4, 0x0
    bne+    branch_0x802fef94
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModVolDist_Ul_FUl
search__30JALListS_15JALSeModVolDist_Ul_FUl: # 0x802fefc0
    lwz     r4, -0x7234(r13)
    b       branch_0x802fefe4

branch_0x802fefc8:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802fefe0
    mr      r3, r5
    blr

branch_0x802fefe0:
    lwz     r4, 0xc(r4)
branch_0x802fefe4:
    cmplwi  r4, 0x0
    bne+    branch_0x802fefc8
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModVolFGrp_Ul_FUl
search__30JALListS_15JALSeModVolFGrp_Ul_FUl: # 0x802feff4
    lwz     r4, -0x7258(r13)
    b       branch_0x802ff018

branch_0x802feffc:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802ff014
    mr      r3, r5
    blr

branch_0x802ff014:
    lwz     r4, 0xc(r4)
branch_0x802ff018:
    cmplwi  r4, 0x0
    bne+    branch_0x802feffc
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModPitFGrp_Ul_FUl
search__30JALListS_15JALSeModPitFGrp_Ul_FUl: # 0x802ff028
    lwz     r4, -0x7264(r13)
    b       branch_0x802ff04c

branch_0x802ff030:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802ff048
    mr      r3, r5
    blr

branch_0x802ff048:
    lwz     r4, 0xc(r4)
branch_0x802ff04c:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff030
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModEffFGrp_Ul_FUl
search__30JALListS_15JALSeModEffFGrp_Ul_FUl: # 0x802ff05c
    lwz     r4, -0x7270(r13)
    b       branch_0x802ff080

branch_0x802ff064:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802ff07c
    mr      r3, r5
    blr

branch_0x802ff07c:
    lwz     r4, 0xc(r4)
branch_0x802ff080:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff064
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModVolDGrp_Ul_FUl
search__30JALListS_15JALSeModVolDGrp_Ul_FUl: # 0x802ff090
    lwz     r4, -0x727c(r13)
    b       branch_0x802ff0b4

branch_0x802ff098:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802ff0b0
    mr      r3, r5
    blr

branch_0x802ff0b0:
    lwz     r4, 0xc(r4)
branch_0x802ff0b4:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff098
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModPitDGrp_Ul_FUl
search__30JALListS_15JALSeModPitDGrp_Ul_FUl: # 0x802ff0c4
    lwz     r4, -0x7288(r13)
    b       branch_0x802ff0e8

branch_0x802ff0cc:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802ff0e4
    mr      r3, r5
    blr

branch_0x802ff0e4:
    lwz     r4, 0xc(r4)
branch_0x802ff0e8:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff0cc
    li      r3, 0x0
    blr


.globl search__30JALListS_15JALSeModEffDGrp_Ul_FUl
search__30JALListS_15JALSeModEffDGrp_Ul_FUl: # 0x802ff0f8
    lwz     r4, -0x7294(r13)
    b       branch_0x802ff11c

branch_0x802ff100:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x802ff118
    mr      r3, r5
    blr

branch_0x802ff118:
    lwz     r4, 0xc(r4)
branch_0x802ff11c:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff100
    li      r3, 0x0
    blr


.globl __ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_
__ct__34JALLinkD_19JALSeModDataGrpMemb_Ul_FP19JALSeModDataGrpMembUlP34JALListD_19JALSeModDataGrpMemb_Ul_: # 0x802ff12c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r6
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    addi    r30, r31, 0x4
    stw     r5, 0x0(r31)
    mr      r3, r30
    bl      __ct__10JSUPtrLinkFPv
    cmplwi  r29, 0x0
    stw     r29, 0x14(r31)
    beq-    branch_0x802ff17c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r29, 0x14(r31)
branch_0x802ff17c:
    lwz     r0, 0x34(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__31JALSeModData_15JALSeModVolFunk_FPCcP15JALSeModVolFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModVolFunk_FPCcP15JALSeModVolFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff19c
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModVolFunk_Ul_FPCcUlP15JALSeModVolFunk
    lis     r3, 0x803e
    addi    r0, r3, 0x22d0
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModPitFunk_FPCcP15JALSeModPitFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModPitFunk_FPCcP15JALSeModPitFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff228
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModPitFunk_Ul_FPCcUlP15JALSeModPitFunk
    lis     r3, 0x803e
    addi    r0, r3, 0x22e0
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModEffFunk_FPCcP15JALSeModEffFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModEffFunk_FPCcP15JALSeModEffFunkUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff2b4
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModEffFunk_Ul_FPCcUlP15JALSeModEffFunk
    lis     r3, 0x803e
    addi    r0, r3, 0x22f0
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModVolDist_FPCcP15JALSeModVolDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModVolDist_FPCcP15JALSeModVolDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff340
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModVolDist_Ul_FPCcUlP15JALSeModVolDist
    lis     r3, 0x803e
    addi    r0, r3, 0x2300
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModPitDist_FPCcP15JALSeModPitDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModPitDist_FPCcP15JALSeModPitDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff3cc
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModPitDist_Ul_FPCcUlP15JALSeModPitDist
    lis     r3, 0x803e
    addi    r0, r3, 0x2320
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModEffDist_FPCcP15JALSeModEffDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModEffDist_FPCcP15JALSeModEffDistUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff458
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModEffDist_Ul_FPCcUlP15JALSeModEffDist
    lis     r3, 0x803e
    addi    r0, r3, 0x2310
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModVolFGrp_FPCcP15JALSeModVolFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModVolFGrp_FPCcP15JALSeModVolFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff4e4
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModVolFGrp_Ul_FPCcUlP15JALSeModVolFGrp
    lis     r3, 0x803e
    addi    r0, r3, 0x2330
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModPitFGrp_FPCcP15JALSeModPitFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModPitFGrp_FPCcP15JALSeModPitFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff570
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModPitFGrp_Ul_FPCcUlP15JALSeModPitFGrp
    lis     r3, 0x803e
    addi    r0, r3, 0x2340
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModEffFGrp_FPCcP15JALSeModEffFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModEffFGrp_FPCcP15JALSeModEffFGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff5fc
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModEffFGrp_Ul_FPCcUlP15JALSeModEffFGrp
    lis     r3, 0x803e
    addi    r0, r3, 0x2350
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModVolDGrp_FPCcP15JALSeModVolDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModVolDGrp_FPCcP15JALSeModVolDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff688
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModVolDGrp_Ul_FPCcUlP15JALSeModVolDGrp
    lis     r3, 0x803e
    addi    r0, r3, 0x2360
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModPitDGrp_FPCcP15JALSeModPitDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModPitDGrp_FPCcP15JALSeModPitDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff714
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModPitDGrp_Ul_FPCcUlP15JALSeModPitDGrp
    lis     r3, 0x803e
    addi    r0, r3, 0x2380
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__31JALSeModData_15JALSeModEffDGrp_FPCcP15JALSeModEffDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc
__ct__31JALSeModData_15JALSeModEffDGrp_FPCcP15JALSeModEffDGrpUlP9JALPrmSetP9JALPrmSetP10JADPrmS_f_Q27JALCalc9CurveSignUc: # 0x802ff7a0
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x40(sp)
    mr      r6, r0
    stmw    r26, 0x28(sp)
    mr      r26, r3
    lbz     r31, 0x4b(sp)
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    bl      __ct__36JALListHioNode_15JALSeModEffDGrp_Ul_FPCcUlP15JALSeModEffDGrp
    lis     r3, 0x803e
    addi    r0, r3, 0x2370
    stw     r0, 0x14(r26)
    mr      r3, r26
    lfs     f0, 0x0(r27)
    stfs    f0, 0x18(r26)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x1c(r26)
    lfs     f0, 0x0(r28)
    stfs    f0, 0x20(r26)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x24(r26)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x28(r26)
    stb     r30, 0x2c(r26)
    stb     r31, 0x2d(r26)
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl searchGroup__54JALListGrp_15JALSeModVolFGrp_Ul_19JALSeModDataGrpMemb_FUl
searchGroup__54JALListGrp_15JALSeModVolFGrp_Ul_19JALSeModDataGrpMemb_FUl: # 0x802ff82c
    lwz     r4, -0x7258(r13)
    b       branch_0x802ff878

branch_0x802ff834:
    lwz     r7, 0x0(r4)
    lwz     r5, 0x30(r7)
    b       branch_0x802ff858

branch_0x802ff840:
    lwz     r6, 0x0(r5)
    lwz     r0, 0x0(r6)
    cmplw   r3, r0
    bne-    branch_0x802ff854
    b       branch_0x802ff864

branch_0x802ff854:
    lwz     r5, 0xc(r5)
branch_0x802ff858:
    cmplwi  r5, 0x0
    bne+    branch_0x802ff840
    li      r6, 0x0
branch_0x802ff864:
    cmplwi  r6, 0x0
    beq-    branch_0x802ff874
    mr      r3, r7
    blr

branch_0x802ff874:
    lwz     r4, 0xc(r4)
branch_0x802ff878:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff834
    li      r3, 0x0
    blr


.globl searchGroup__54JALListGrp_15JALSeModEffFGrp_Ul_19JALSeModDataGrpMemb_FUl
searchGroup__54JALListGrp_15JALSeModEffFGrp_Ul_19JALSeModDataGrpMemb_FUl: # 0x802ff888
    lwz     r4, -0x7270(r13)
    b       branch_0x802ff8d4

branch_0x802ff890:
    lwz     r7, 0x0(r4)
    lwz     r5, 0x30(r7)
    b       branch_0x802ff8b4

branch_0x802ff89c:
    lwz     r6, 0x0(r5)
    lwz     r0, 0x0(r6)
    cmplw   r3, r0
    bne-    branch_0x802ff8b0
    b       branch_0x802ff8c0

branch_0x802ff8b0:
    lwz     r5, 0xc(r5)
branch_0x802ff8b4:
    cmplwi  r5, 0x0
    bne+    branch_0x802ff89c
    li      r6, 0x0
branch_0x802ff8c0:
    cmplwi  r6, 0x0
    beq-    branch_0x802ff8d0
    mr      r3, r7
    blr

branch_0x802ff8d0:
    lwz     r4, 0xc(r4)
branch_0x802ff8d4:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff890
    li      r3, 0x0
    blr


.globl searchGroup__54JALListGrp_15JALSeModVolDGrp_Ul_19JALSeModDataGrpMemb_FUl
searchGroup__54JALListGrp_15JALSeModVolDGrp_Ul_19JALSeModDataGrpMemb_FUl: # 0x802ff8e4
    lwz     r4, -0x727c(r13)
    b       branch_0x802ff930

branch_0x802ff8ec:
    lwz     r7, 0x0(r4)
    lwz     r5, 0x30(r7)
    b       branch_0x802ff910

branch_0x802ff8f8:
    lwz     r6, 0x0(r5)
    lwz     r0, 0x0(r6)
    cmplw   r3, r0
    bne-    branch_0x802ff90c
    b       branch_0x802ff91c

branch_0x802ff90c:
    lwz     r5, 0xc(r5)
branch_0x802ff910:
    cmplwi  r5, 0x0
    bne+    branch_0x802ff8f8
    li      r6, 0x0
branch_0x802ff91c:
    cmplwi  r6, 0x0
    beq-    branch_0x802ff92c
    mr      r3, r7
    blr

branch_0x802ff92c:
    lwz     r4, 0xc(r4)
branch_0x802ff930:
    cmplwi  r4, 0x0
    bne+    branch_0x802ff8ec
    li      r3, 0x0
    blr


.globl __ct__36JALListHioNode_15JALSeModVolFunk_Ul_FPCcUlP15JALSeModVolFunk
__ct__36JALListHioNode_15JALSeModVolFunk_Ul_FPCcUlP15JALSeModVolFunk: # 0x802ff940
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7210
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModPitFunk_Ul_FPCcUlP15JALSeModPitFunk
__ct__36JALListHioNode_15JALSeModPitFunk_Ul_FPCcUlP15JALSeModPitFunk: # 0x802ff994
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x721c
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModEffFunk_Ul_FPCcUlP15JALSeModEffFunk
__ct__36JALListHioNode_15JALSeModEffFunk_Ul_FPCcUlP15JALSeModEffFunk: # 0x802ff9e8
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7228
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModVolDist_Ul_FPCcUlP15JALSeModVolDist
__ct__36JALListHioNode_15JALSeModVolDist_Ul_FPCcUlP15JALSeModVolDist: # 0x802ffa3c
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7234
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModPitDist_Ul_FPCcUlP15JALSeModPitDist
__ct__36JALListHioNode_15JALSeModPitDist_Ul_FPCcUlP15JALSeModPitDist: # 0x802ffa90
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7240
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModEffDist_Ul_FPCcUlP15JALSeModEffDist
__ct__36JALListHioNode_15JALSeModEffDist_Ul_FPCcUlP15JALSeModEffDist: # 0x802ffae4
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x724c
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModVolFGrp_Ul_FPCcUlP15JALSeModVolFGrp
__ct__36JALListHioNode_15JALSeModVolFGrp_Ul_FPCcUlP15JALSeModVolFGrp: # 0x802ffb38
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7258
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModPitFGrp_Ul_FPCcUlP15JALSeModPitFGrp
__ct__36JALListHioNode_15JALSeModPitFGrp_Ul_FPCcUlP15JALSeModPitFGrp: # 0x802ffb8c
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7264
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModEffFGrp_Ul_FPCcUlP15JALSeModEffFGrp
__ct__36JALListHioNode_15JALSeModEffFGrp_Ul_FPCcUlP15JALSeModEffFGrp: # 0x802ffbe0
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7270
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModVolDGrp_Ul_FPCcUlP15JALSeModVolDGrp
__ct__36JALListHioNode_15JALSeModVolDGrp_Ul_FPCcUlP15JALSeModVolDGrp: # 0x802ffc34
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x727c
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModPitDGrp_Ul_FPCcUlP15JALSeModPitDGrp
__ct__36JALListHioNode_15JALSeModPitDGrp_Ul_FPCcUlP15JALSeModPitDGrp: # 0x802ffc88
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7288
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__36JALListHioNode_15JALSeModEffDGrp_Ul_FPCcUlP15JALSeModEffDGrp
__ct__36JALListHioNode_15JALSeModEffDGrp_Ul_FPCcUlP15JALSeModEffDGrp: # 0x802ffcdc
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x7294
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __sinit_JALModSe_cpp
__sinit_JALModSe_cpp: # 0x802ffd30
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x2968
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffd78
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802ffd78:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffda8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802ffda8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffdd8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802ffdd8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffe08
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802ffe08:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffe38
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802ffe38:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffe68
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802ffe68:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffe98
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802ffe98:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffec8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802ffec8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802ffef8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802ffef8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802fff28
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802fff28:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802fff58
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802fff58:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802fff88
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802fff88:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

