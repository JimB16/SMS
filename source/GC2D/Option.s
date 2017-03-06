
.globl resetChangedSetting__14TOptionControlFv
resetChangedSetting__14TOptionControlFv: # 0x80183490
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x8(r3)
    lwz     r4, 0x18(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    stw     r0, 0x1c(r31)
    lwz     r3, 0xc(r31)
    lwz     r4, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r3, r0, 2
    addze   r3, r3
    bl      typeToFlag__16TOptionSoundUnitFQ216TOptionSoundUnit9SoundType
    stw     r3, 0x20(r31)
    lwz     r3, 0x10(r31)
    lwz     r4, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    stw     r0, 0x24(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl isChangedSetting__14TOptionControlCFv
isChangedSetting__14TOptionControlCFv: # 0x8018351c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    li      r31, 0x1
    stw     r30, 0x58(sp)
    mr      r30, r3
    stw     r29, 0x54(sp)
    mr      r29, r31
    lwz     r3, 0x8(r3)
    lwz     r4, 0x1c(r30)
    lwz     r5, 0x18(r3)
    lwz     r3, 0x4(r5)
    lwz     r0, 0xc(r5)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpw    r4, r0
    bne-    branch_0x80183598
    lwz     r3, 0xc(r30)
    lwz     r4, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r3, r0, 2
    addze   r3, r3
    bl      typeToFlag__16TOptionSoundUnitFQ216TOptionSoundUnit9SoundType
    lwz     r0, 0x20(r30)
    cmpw    r0, r3
    bne-    branch_0x80183598
    li      r29, 0x0
branch_0x80183598:
    clrlwi. r0, r29, 24
    bne-    branch_0x801835cc
    lwz     r3, 0x10(r30)
    lwz     r4, 0x24(r30)
    lwz     r5, 0x10(r3)
    lwz     r3, 0x4(r5)
    lwz     r0, 0xc(r5)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpw    r4, r0
    bne-    branch_0x801835cc
    li      r31, 0x0
branch_0x801835cc:
    lwz     r0, 0x64(sp)
    mr      r3, r31
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl checkInput__14TOptionControlFv
checkInput__14TOptionControlFv: # 0x801835ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stmw    r27, 0xb4(sp)
    mr      r29, r3
    lwz     r4, -0x6048(r13)
    lfs     f1, -0x44c4(rtoc)
    lwz     r3, 0x18(r4)
    lfs     f3, -0x44c8(rtoc)
    lwz     r3, 0x0(r3)
    lfs     f0, -0x44c0(rtoc)
    lfs     f2, 0x4c(r3)
    lfs     f4, 0x48(r3)
    fmuls   f1, f2, f1
    lwz     r3, 0x14(r29)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8018368c
    lbz     r0, 0x19(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801836f8
    li      r0, 0x0
    cmpwi   r3, 0x2
    stb     r0, 0x19(r29)
    beq-    branch_0x80183678
    bge-    branch_0x801836f8
    cmpwi   r3, 0x0
    bge-    branch_0x80183664
    b       branch_0x801836f8

branch_0x80183664:
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setType__14TOptionControlFQ214TOptionControl10SelectTypeb
    b       branch_0x801836f8

branch_0x80183678:
    addi    r3, r29, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      setType__14TOptionControlFQ214TOptionControl10SelectTypeb
    b       branch_0x801836f8

branch_0x8018368c:
    lfs     f0, -0x44bc(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801836f0
    lbz     r0, 0x19(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801836f8
    li      r0, 0x0
    cmpwi   r3, 0x0
    stb     r0, 0x19(r29)
    beq-    branch_0x801836c8
    blt-    branch_0x801836f8
    cmpwi   r3, 0x3
    bge-    branch_0x801836f8
    b       branch_0x801836dc

branch_0x801836c8:
    addi    r3, r29, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      setType__14TOptionControlFQ214TOptionControl10SelectTypeb
    b       branch_0x801836f8

branch_0x801836dc:
    addi    r3, r29, 0x0
    li      r4, 0x2
    li      r5, 0x0
    bl      setType__14TOptionControlFQ214TOptionControl10SelectTypeb
    b       branch_0x801836f8

branch_0x801836f0:
    li      r0, 0x1
    stb     r0, 0x19(r29)
branch_0x801836f8:
    bl      SMS_IsMarioStatusTypeJumping__Fv
    lbz     r0, 0x18(r29)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80183a08
    clrlwi. r0, r31, 24
    beq-    branch_0x80183a08
    lwz     r0, 0x14(r29)
    cmpwi   r0, 0x1
    beq-    branch_0x80183838
    bge-    branch_0x80183730
    cmpwi   r0, 0x0
    bge-    branch_0x8018373c
    b       branch_0x80183a08

branch_0x80183730:
    cmpwi   r0, 0x3
    bge-    branch_0x80183a08
    b       branch_0x8018395c

branch_0x8018373c:
    lwz     r30, 0x8(r29)
    li      r0, 0x1
    stb     r0, 0x20(r30)
    lwz     r28, 0x18(r30)
    lwz     r3, 0x0(r28)
    lwz     r4, 0xc(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0xc(r28)
    addi    r4, r3, 0x4
    stw     r4, 0xc(r28)
    lwz     r0, 0x8(r28)
    lwz     r3, 0x4(r28)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r4, r0
    bne-    branch_0x80183798
    stw     r3, 0xc(r28)
branch_0x80183798:
    lwz     r3, 0x0(r28)
    lwz     r4, 0xc(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r27, 0x1
    stb     r27, 0xc(r3)
    lwz     r28, 0x18(r30)
    addi    r3, r28, 0x4
    bl      begin__Q29_unnamed_16ArrayWrapper_Ul_CFv
    lwz     r0, 0xc(r28)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpwi   r0, 0x1
    bne-    branch_0x801837e4
    b       branch_0x801837e8

branch_0x801837e4:
    li      r27, 0x0
branch_0x801837e8:
    lwz     r3, -0x60f0(r13)
    mr      r4, r27
    bl      setActive__9RumbleMgrFb
    mr      r3, r30
    bl      adjustView__17TOptionRumbleUnitFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80183824
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80183824:
    lwz     r3, -0x60f0(r13)
    li      r4, 0x8
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    b       branch_0x80183a08

branch_0x80183838:
    lwz     r30, 0xc(r29)
    lwz     r28, 0x10(r30)
    lwz     r3, 0x0(r28)
    lwz     r4, 0xc(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0xc(r28)
    addi    r4, r3, 0x4
    stw     r4, 0xc(r28)
    lwz     r0, 0x8(r28)
    lwz     r3, 0x4(r28)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r4, r0
    bne-    branch_0x8018388c
    stw     r3, 0xc(r28)
branch_0x8018388c:
    lwz     r3, 0x0(r28)
    lwz     r4, 0xc(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    mr      r3, r30
    bl      adjustView__16TOptionSoundUnitFv
    lwz     r28, 0x10(r30)
    addi    r3, r28, 0x4
    bl      begin__Q29_unnamed_16ArrayWrapper_Ul_CFv
    lwz     r5, 0xc(r28)
    lis     r4, 0x803c
    addi    r0, r4, 0x14d8
    subf    r3, r3, r5
    srawi   r3, r3, 2
    addze   r3, r3
    slwi    r3, r3, 3
    add     r3, r0, r3
    lwz     r28, 0x4(r3)
    bl      SMSGetMSound__Fv
    mr      r3, r28
    bl      setParamSoundOutputMode__18JAIGlobalParameterFUl
    lwz     r3, 0x2c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80183908
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x80183908:
    lwz     r28, 0x10(r30)
    addi    r3, r28, 0x4
    bl      begin__Q29_unnamed_16ArrayWrapper_Ul_CFv
    lwz     r5, 0xc(r28)
    lis     r4, 0x803c
    addi    r0, r4, 0x14d8
    lwz     r6, -0x6044(r13)
    subf    r3, r3, r5
    srawi   r3, r3, 2
    addze   r3, r3
    slwi    r3, r3, 3
    add     r3, r0, r3
    lwz     r4, 0x0(r3)
    addi    r3, r6, 0x0
    addi    r6, r30, 0x2c
    li      r5, 0x0
    li      r7, 0x0
    bl      startSoundSystemSE__6MSoundFUlUlPP8JAISoundUl
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x28(r30)
    b       branch_0x80183a08

branch_0x8018395c:
    lwz     r27, 0x10(r29)
    lwz     r28, 0x10(r27)
    lwz     r3, 0x0(r28)
    lwz     r4, 0xc(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0xc(r28)
    addi    r4, r3, 0x4
    stw     r4, 0xc(r28)
    lwz     r0, 0x8(r28)
    lwz     r3, 0x4(r28)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r4, r0
    bne-    branch_0x801839b0
    stw     r3, 0xc(r28)
branch_0x801839b0:
    lwz     r3, 0x0(r28)
    lwz     r4, 0xc(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x10(r27)
    addi    r3, r3, 0x4
    bl      begin__Q29_unnamed_16ArrayWrapper_Ul_CFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80183a08
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80183a08:
    stb     r31, 0x18(r29)
    lmw     r27, 0xb4(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl startSoundSystemSE__6MSoundFUlUlPP8JAISoundUl
startSoundSystemSE__6MSoundFUlUlPP8JAISoundUl: # 0x80183a20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r7, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r4, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80183a6c
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80183a6c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl SMSGetMSound__Fv
SMSGetMSound__Fv: # 0x80183a8c
    lwz     r3, -0x6044(r13)
    blr


.globl begin__Q29_unnamed_16ArrayWrapper_Ul_CFv
begin__Q29_unnamed_16ArrayWrapper_Ul_CFv: # 0x80183a94
    lwz     r3, 0x0(r3)
    blr


.globl setType__14TOptionControlFQ214TOptionControl10SelectTypeb
setType__14TOptionControlFQ214TOptionControl10SelectTypeb: # 0x80183a9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r0, 0x14(r3)
    cmpw    r0, r4
    bne-    branch_0x80183ad0
    clrlwi. r0, r30, 24
    beq-    branch_0x80183c34
branch_0x80183ad0:
    cmpwi   r4, 0x1
    stw     r4, 0x14(r29)
    beq-    branch_0x80183b48
    bge-    branch_0x80183aec
    cmpwi   r4, 0x0
    bge-    branch_0x80183af8
    b       branch_0x80183c04

branch_0x80183aec:
    cmpwi   r4, 0x3
    bge-    branch_0x80183c04
    b       branch_0x80183ba8

branch_0x80183af8:
    lwz     r3, 0x8(r29)
    li      r4, 0x0
    bl      setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
    clrlwi. r0, r30, 24
    lwz     r3, 0xc(r29)
    beq-    branch_0x80183b1c
    li      r4, 0x2
    bl      setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
    b       branch_0x80183b24

branch_0x80183b1c:
    li      r4, 0x1
    bl      setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
branch_0x80183b24:
    clrlwi. r0, r30, 24
    lwz     r3, 0x10(r29)
    beq-    branch_0x80183b3c
    li      r4, 0x2
    bl      setState__19TOptionSubtitleUnitFQ219TOptionSubtitleUnit5State
    b       branch_0x80183c04

branch_0x80183b3c:
    li      r4, 0x1
    bl      setState__19TOptionSubtitleUnitFQ219TOptionSubtitleUnit5State
    b       branch_0x80183c04

branch_0x80183b48:
    lwz     r31, 0x8(r29)
    lwz     r3, -0x60f0(r13)
    bl      stop__9RumbleMgrFv
    clrlwi. r0, r30, 24
    beq-    branch_0x80183b6c
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
    b       branch_0x80183b78

branch_0x80183b6c:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
branch_0x80183b78:
    lwz     r3, 0xc(r29)
    li      r4, 0x0
    bl      setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
    clrlwi. r0, r30, 24
    lwz     r3, 0x10(r29)
    beq-    branch_0x80183b9c
    li      r4, 0x2
    bl      setState__19TOptionSubtitleUnitFQ219TOptionSubtitleUnit5State
    b       branch_0x80183c04

branch_0x80183b9c:
    li      r4, 0x1
    bl      setState__19TOptionSubtitleUnitFQ219TOptionSubtitleUnit5State
    b       branch_0x80183c04

branch_0x80183ba8:
    lwz     r3, 0x10(r29)
    li      r4, 0x0
    bl      setState__19TOptionSubtitleUnitFQ219TOptionSubtitleUnit5State
    lwz     r31, 0x8(r29)
    lwz     r3, -0x60f0(r13)
    bl      stop__9RumbleMgrFv
    clrlwi. r0, r30, 24
    beq-    branch_0x80183bd8
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
    b       branch_0x80183be4

branch_0x80183bd8:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
branch_0x80183be4:
    clrlwi. r0, r30, 24
    lwz     r3, 0xc(r29)
    beq-    branch_0x80183bfc
    li      r4, 0x2
    bl      setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
    b       branch_0x80183c04

branch_0x80183bfc:
    li      r4, 0x1
    bl      setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
branch_0x80183c04:
    clrlwi. r0, r30, 24
    bne-    branch_0x80183c34
    lwz     r3, -0x6044(r13)
    li      r4, 0x4815
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80183c34
    li      r3, 0x4815
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80183c34:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl movementOption2Card__14TOptionControlFv
movementOption2Card__14TOptionControlFv: # 0x80183c50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    lwz     r4, -0x70b8(r13)
    lha     r0, 0x12(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80183d28
    lwz     r3, 0x0(r29)
    lis     r30, 0x6f79
    addi    r4, r30, 0x6130
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r31, 0x0
    stb     r31, 0xc(r3)
    addi    r4, r30, 0x6131
    lwz     r3, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
    addi    r4, r30, 0x6132
    lwz     r3, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
    lwz     r3, 0x8(r29)
    lwz     r4, 0x1c(r29)
    lwz     r5, 0x18(r3)
    lwz     r3, 0x4(r5)
    lwz     r0, 0xc(r5)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpw    r4, r0
    bne-    branch_0x80183d20
    lwz     r3, 0xc(r29)
    lwz     r4, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r3, r0, 2
    addze   r3, r3
    bl      typeToFlag__16TOptionSoundUnitFQ216TOptionSoundUnit9SoundType
branch_0x80183d20:
    li      r3, 0x1
    b       branch_0x80183d2c

branch_0x80183d28:
    li      r3, 0x0
branch_0x80183d2c:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl movementOption__14TOptionControlFv
movementOption__14TOptionControlFv: # 0x80183d48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r3
    lwz     r31, 0x4(r3)
    lbz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80183d78
    li      r0, 0x1
    b       branch_0x80183d7c

branch_0x80183d78:
    li      r0, -0x1
branch_0x80183d7c:
    lwz     r3, 0x0(r31)
    slwi    r0, r0, 3
    li      r4, 0x0
    lbz     r3, 0xcc(r3)
    li      r5, 0xff
    add     r3, r0, r3
    bl      clamp__Q29JGeometry8TUtil_l_Flll
    lwz     r4, 0x0(r31)
    stb     r3, 0xcc(r4)
    lwz     r3, 0x0(r31)
    lbz     r0, 0xcc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80183e6c
    lwz     r0, 0x18(r31)
    cmpwi   r0, 0x32
    bge-    branch_0x80183dc0
    b       branch_0x80183dc4

branch_0x80183dc0:
    subfic  r0, r0, 0x64
branch_0x80183dc4:
    xoris   r0, r0, 0x8000
    lfd     f4, -0x44a8(rtoc)
    stw     r0, 0x94(sp)
    lis     r0, 0x4330
    lfs     f3, -0x44b8(rtoc)
    addi    r3, sp, 0x64
    stw     r0, 0x90(sp)
    lfs     f2, -0x44c4(rtoc)
    lfd     f1, 0x90(sp)
    lfs     f0, -0x44b0(rtoc)
    fsubs   f4, f1, f4
    lfs     f1, -0x44b4(rtoc)
    lwz     r0, 0x4(r31)
    lwz     r5, 0x8(r31)
    fdivs   f4, f4, f3
    lwz     r6, 0xc(r31)
    lwz     r7, 0x10(r31)
    fsubs   f3, f2, f4
    fmuls   f2, f1, f4
    fmuls   f1, f0, f3
    fmuls   f0, f4, f3
    fmadds  f0, f1, f3, f0
    fmadds  f0, f2, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r4, 0x8c(sp)
    subf    r4, r4, r0
    bl      __ct__7JUTRectFiiii
    lwz     r5, 0x0(r31)
    li      r4, 0x64
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x1c(r5)
    stw     r0, 0x20(r5)
    lwz     r3, 0x18(r31)
    addi    r3, r3, 0x65
    bl      mod__Q29JGeometry8TUtil_i_Fii
    stw     r3, 0x18(r31)
branch_0x80183e6c:
    lwz     r3, 0x8(r30)
    bl      update__17TOptionRumbleUnitFv
    lwz     r3, 0xc(r30)
    bl      update__16TOptionSoundUnitFv
    lwz     r3, 0x10(r30)
    bl      update__19TOptionSubtitleUnitFv
    mr      r3, r30
    bl      checkInput__14TOptionControlFv
    lwz     r5, 0x8(r30)
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    lwz     r6, 0x18(r5)
    lwz     r5, 0x4(r6)
    lwz     r0, 0xc(r6)
    subf    r0, r5, r0
    srawi   r5, r0, 2
    addze   r5, r5
    bl      setFlag__12TFlagManagerFUll
    lwz     r3, 0xc(r30)
    lwz     r4, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r3, r0, 2
    addze   r3, r3
    bl      typeToFlag__16TOptionSoundUnitFQ216TOptionSoundUnit9SoundType
    lwz     r0, -0x6060(r13)
    addi    r5, r3, 0x0
    lis     r4, 0xa
    mr      r3, r0
    bl      setFlag__12TFlagManagerFUll
    lwz     r5, 0x10(r30)
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    lwz     r6, 0x10(r5)
    lwz     r5, 0x4(r6)
    lwz     r0, 0xc(r6)
    subf    r0, r5, r0
    srawi   r5, r0, 2
    addze   r5, r5
    bl      setFlag__12TFlagManagerFUll
    lwz     r3, -0x70b8(r13)
    lbz     r0, 0x0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80183f44
    lwz     r3, 0xc(r30)
    lwz     r3, 0x2c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80183f3c
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x80183f3c:
    li      r3, 0x1
    b       branch_0x80183f48

branch_0x80183f44:
    li      r3, 0x0
branch_0x80183f48:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl mod__Q29JGeometry8TUtil_i_Fii
mod__Q29JGeometry8TUtil_i_Fii: # 0x80183f60
    divw    r0, r3, r4
    mullw   r0, r0, r4
    subf    r3, r0, r3
    blr


.globl __ct__7JUTRectFiiii
__ct__7JUTRectFiiii: # 0x80183f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      set__7JUTRectFiiii
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl clamp__Q29JGeometry8TUtil_l_Flll
clamp__Q29JGeometry8TUtil_l_Flll: # 0x80183fa0
    cmpw    r3, r4
    bge-    branch_0x80183fb0
    mr      r3, r4
    blr

branch_0x80183fb0:
    cmpw    r3, r5
    blelr-    

    mr      r3, r5
    blr


.globl movementCard2Option__14TOptionControlFv
movementCard2Option__14TOptionControlFv: # 0x80183fc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r4, -0x70b8(r13)
    lha     r0, 0x12(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80184094
    lwz     r4, 0x8(r28)
    li      r29, 0x0
    lis     r3, 0x7478
    stb     r29, 0x20(r4)
    addi    r4, r3, 0x7032
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r30, 0x1
    stb     r30, 0xc(r3)
    lis     r31, 0x6f79
    addi    r4, r31, 0x6130
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r4, r31, 0x6131
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r4, r31, 0x6132
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r3, r28, 0x0
    li      r5, 0x1
    stb     r29, 0x18(r28)
    lwz     r4, 0x14(r28)
    bl      setType__14TOptionControlFQ214TOptionControl10SelectTypeb
    li      r3, 0x1
    b       branch_0x80184098

branch_0x80184094:
    li      r3, 0x0
branch_0x80184098:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl draw__14TOptionControlFP13J2DOrthoGraph
draw__14TOptionControlFP13J2DOrthoGraph: # 0x801840b8
    mflr    r0
    addi    r6, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x0
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r3)
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadSetting__14TOptionControlFv
loadSetting__14TOptionControlFv: # 0x801840e8
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stmw    r27, 0xec(sp)
    addi    r31, r4, 0x14b0
    addi    r30, r3, 0x0
    lis     r4, 0xa
    lwz     r0, -0x6060(r13)
    mr      r3, r0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x1
    beq-    branch_0x801841d8
    bge-    branch_0x8018412c
    cmpwi   r3, 0x0
    bge-    branch_0x80184138
    b       branch_0x80184314

branch_0x8018412c:
    cmpwi   r3, 0x3
    bge-    branch_0x80184314
    b       branch_0x80184278

branch_0x80184138:
    lwz     r28, 0xc(r30)
    li      r3, 0x0
    bl      flagToType__16TOptionSoundUnitFi
    lwz     r27, 0x10(r28)
    mr      r29, r3
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    slwi    r0, r29, 2
    lwz     r3, 0x4(r27)
    add     r0, r3, r0
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    mr      r3, r28
    bl      adjustView__16TOptionSoundUnitFv
    lwz     r4, 0x10(r28)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    slwi    r0, r0, 3
    add     r3, r31, r0
    lwz     r3, 0x2c(r3)
    bl      setParamSoundOutputMode__18JAIGlobalParameterFUl
    b       branch_0x80184314

branch_0x801841d8:
    lwz     r28, 0xc(r30)
    li      r3, 0x1
    bl      flagToType__16TOptionSoundUnitFi
    lwz     r27, 0x10(r28)
    mr      r29, r3
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    slwi    r0, r29, 2
    lwz     r3, 0x4(r27)
    add     r0, r3, r0
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    mr      r3, r28
    bl      adjustView__16TOptionSoundUnitFv
    lwz     r4, 0x10(r28)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    slwi    r0, r0, 3
    add     r3, r31, r0
    lwz     r3, 0x2c(r3)
    bl      setParamSoundOutputMode__18JAIGlobalParameterFUl
    b       branch_0x80184314

branch_0x80184278:
    lwz     r28, 0xc(r30)
    li      r3, 0x2
    bl      flagToType__16TOptionSoundUnitFi
    lwz     r27, 0x10(r28)
    mr      r29, r3
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    slwi    r0, r29, 2
    lwz     r3, 0x4(r27)
    add     r0, r3, r0
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    mr      r3, r28
    bl      adjustView__16TOptionSoundUnitFv
    lwz     r4, 0x10(r28)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    slwi    r0, r0, 3
    add     r3, r31, r0
    lwz     r3, 0x2c(r3)
    bl      setParamSoundOutputMode__18JAIGlobalParameterFUl
branch_0x80184314:
    lwz     r3, -0x6060(r13)
    lis     r4, 0x9
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x1
    beq-    branch_0x801843cc
    bge-    branch_0x80184460
    cmpwi   r3, 0x0
    bge-    branch_0x80184338
    b       branch_0x80184460

branch_0x80184338:
    lwz     r28, 0x8(r30)
    lwz     r27, 0x18(r28)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r31, 0x0
    stb     r31, 0xc(r3)
    lwz     r0, 0x4(r27)
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r4, 0x1
    stb     r4, 0xc(r3)
    lwz     r5, 0x18(r28)
    lwz     r3, 0x4(r5)
    lwz     r0, 0xc(r5)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpwi   r0, 0x1
    bne-    branch_0x801843b4
    b       branch_0x801843b8

branch_0x801843b4:
    mr      r4, r31
branch_0x801843b8:
    lwz     r3, -0x60f0(r13)
    bl      setActive__9RumbleMgrFb
    mr      r3, r28
    bl      adjustView__17TOptionRumbleUnitFv
    b       branch_0x80184460

branch_0x801843cc:
    lwz     r28, 0x8(r30)
    lwz     r27, 0x18(r28)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r31, 0x0
    stb     r31, 0xc(r3)
    lwz     r3, 0x4(r27)
    addi    r0, r3, 0x4
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r4, 0x1
    stb     r4, 0xc(r3)
    lwz     r5, 0x18(r28)
    lwz     r3, 0x4(r5)
    lwz     r0, 0xc(r5)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpwi   r0, 0x1
    bne-    branch_0x8018444c
    b       branch_0x80184450

branch_0x8018444c:
    mr      r4, r31
branch_0x80184450:
    lwz     r3, -0x60f0(r13)
    bl      setActive__9RumbleMgrFb
    mr      r3, r28
    bl      adjustView__17TOptionRumbleUnitFv
branch_0x80184460:
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x1
    beq-    branch_0x801844e4
    bge-    branch_0x80184540
    cmpwi   r3, 0x0
    bge-    branch_0x80184488
    b       branch_0x80184540

branch_0x80184488:
    lwz     r28, 0x10(r30)
    lwz     r27, 0x10(r28)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r0, 0x4(r27)
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x80184540

branch_0x801844e4:
    lwz     r3, 0x10(r30)
    lwz     r27, 0x10(r3)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lwz     r3, 0x4(r27)
    addi    r0, r3, 0x4
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r4, 0xc(r27)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80184540:
    lwz     r3, 0x8(r30)
    lwz     r4, 0x18(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    stw     r0, 0x1c(r30)
    lwz     r3, 0xc(r30)
    lwz     r4, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r3, r0, 2
    addze   r3, r3
    bl      typeToFlag__16TOptionSoundUnitFQ216TOptionSoundUnit9SoundType
    stw     r3, 0x20(r30)
    lwz     r3, 0x10(r30)
    lwz     r4, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    stw     r0, 0x24(r30)
    lwz     r0, 0x104(sp)
    lmw     r27, 0xec(sp)
    addi    sp, sp, 0x100
    mtlr    r0
    blr


.globl load__14TOptionControlFv
load__14TOptionControlFv: # 0x801845b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    subi    r3, rtoc, 0x4494
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r30, r3, 0x0
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80184604
    lis     r3, 0x8039
    subi    r4, r3, 0x7474
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80184604:
    stw     r29, 0x0(r31)
    li      r4, 0x2
    lwz     r3, 0x0(r31)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    lwz     r3, 0x0(r31)
    lis     r30, 0x6d5f
    addi    r4, r30, 0x3061
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0x0(r31)
    mr      r29, r0
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x3062
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x6038(r13)
    addi    r30, r3, 0x0
    addi    r3, r29, 0x0
    bl      setFont__10J2DTextBoxFP7JUTFont
    mr      r3, r30
    lwz     r4, -0x6038(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801846e8
    lwz     r3, 0x0(r31)
    lis     r4, 0x7961
    addi    r4, r4, 0x6a69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x0(r29)
    addi    r3, r29, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    li      r0, 0x1
    stb     r0, 0x14(r29)
    li      r0, 0x0
    stw     r0, 0x18(r29)
    lwz     r4, 0x0(r29)
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x4(r29)
    stw     r0, 0x8(r29)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0xc(r29)
    stw     r0, 0x10(r29)
branch_0x801846e8:
    stw     r29, 0x4(r31)
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80184708
    mr      r3, r29
    lwz     r4, 0x0(r31)
    bl      __ct__17TOptionRumbleUnitFP9J2DScreen
branch_0x80184708:
    stw     r29, 0x8(r31)
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80184728
    mr      r3, r29
    lwz     r4, 0x0(r31)
    bl      __ct__16TOptionSoundUnitFP9J2DScreen
branch_0x80184728:
    stw     r29, 0xc(r31)
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80184748
    mr      r3, r29
    lwz     r4, 0x0(r31)
    bl      __ct__19TOptionSubtitleUnitFP9J2DScreen
branch_0x80184748:
    stw     r29, 0x10(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      setType__14TOptionControlFQ214TOptionControl10SelectTypeb
    mr      r3, r31
    bl      loadSetting__14TOptionControlFv
    li      r0, 0x0
    stb     r0, 0x18(r31)
    li      r0, 0x1
    stb     r0, 0x19(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setInfluencedAlphaRecursive__16TOptionSoundUnitFP7J2DPaneb
setInfluencedAlphaRecursive__16TOptionSoundUnitFP7J2DPaneb: # 0x80184790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stmw    r27, 0x104(sp)
    addi    r29, r3, 0x0
    addi    r30, r5, 0x0
    lwz     r31, 0xd0(r4)
    cmplwi  r31, 0x0
    beq-    branch_0x80184860
    subi    r31, r31, 0xc
    b       branch_0x80184860

branch_0x801847bc:
    lwz     r3, 0xc(r31)
    stb     r30, 0xce(r3)
    lwz     r3, 0xc(r31)
    lwz     r27, 0xd0(r3)
    cmplwi  r27, 0x0
    beq-    branch_0x80184848
    subi    r27, r27, 0xc
    b       branch_0x80184848

branch_0x801847dc:
    lwz     r3, 0xc(r27)
    stb     r30, 0xce(r3)
    lwz     r3, 0xc(r27)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x801847fc
    subi    r3, r3, 0xc
branch_0x801847fc:
    mr      r28, r3
    b       branch_0x80184830

branch_0x80184804:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__16TOptionSoundUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80184830
    subi    r28, r28, 0xc
branch_0x80184830:
    cmplwi  r28, 0x0
    bne+    branch_0x80184804
    lwz     r27, 0x18(r27)
    cmplwi  r27, 0x0
    beq-    branch_0x80184848
    subi    r27, r27, 0xc
branch_0x80184848:
    cmplwi  r27, 0x0
    bne+    branch_0x801847dc
    lwz     r31, 0x18(r31)
    cmplwi  r31, 0x0
    beq-    branch_0x80184860
    subi    r31, r31, 0xc
branch_0x80184860:
    cmplwi  r31, 0x0
    bne+    branch_0x801847bc
    lmw     r27, 0x104(sp)
    lwz     r0, 0x11c(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl getObject__17JSUTree_7J2DPane_CFv
getObject__17JSUTree_7J2DPane_CFv: # 0x8018487c
    lwz     r3, 0xc(r3)
    blr


.globl getFirstLink__10JSUPtrListCFv
getFirstLink__10JSUPtrListCFv: # 0x80184884
    lwz     r3, 0x0(r3)
    blr


.globl adjustView__16TOptionSoundUnitFv
adjustView__16TOptionSoundUnitFv: # 0x8018488c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    mr      r30, r3
    stw     r29, 0x104(sp)
    lwz     r4, 0x10(r3)
    lis     r3, 0x803c
    addi    r31, r3, 0x14b0
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpwi   r0, 0x1
    beq-    branch_0x80184a20
    bge-    branch_0x801848e0
    cmpwi   r0, 0x0
    bge-    branch_0x801848ec
    b       branch_0x80184c84

branch_0x801848e0:
    cmpwi   r0, 0x3
    bge-    branch_0x80184c84
    b       branch_0x80184b54

branch_0x801848ec:
    lwz     r3, 0x58(r31)
    lwz     r0, 0x5c(r31)
    stw     r3, 0xf4(sp)
    stw     r0, 0xf8(sp)
    lwz     r0, 0x60(r31)
    stw     r0, 0xfc(sp)
    lwz     r29, 0x60(r30)
    b       branch_0x80184920

branch_0x8018490c:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xf4
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184920:
    lwz     r0, 0x64(r30)
    lwz     r3, 0x60(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x8018490c
    lwz     r3, 0x64(r31)
    lwz     r0, 0x68(r31)
    stw     r3, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x6c(r31)
    stw     r0, 0xf0(sp)
    lwz     r29, 0x68(r30)
    b       branch_0x8018496c

branch_0x80184958:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xe8
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x8018496c:
    lwz     r0, 0x6c(r30)
    lwz     r3, 0x68(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184958
    lwz     r3, 0x70(r31)
    lwz     r0, 0x74(r31)
    stw     r3, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x78(r31)
    stw     r0, 0xe4(sp)
    lwz     r29, 0x58(r30)
    b       branch_0x801849b8

branch_0x801849a4:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xdc
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x801849b8:
    lwz     r0, 0x5c(r30)
    lwz     r3, 0x58(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x801849a4
    lwz     r3, 0x7c(r31)
    lwz     r0, 0x80(r31)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x84(r31)
    stw     r0, 0xd8(sp)
    lwz     r29, 0x58(r30)
    b       branch_0x80184a04

branch_0x801849f0:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xd0
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184a04:
    lwz     r0, 0x5c(r30)
    lwz     r3, 0x58(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x801849f0
    b       branch_0x80184c84

branch_0x80184a20:
    lwz     r3, 0x88(r31)
    lwz     r0, 0x8c(r31)
    stw     r3, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x90(r31)
    stw     r0, 0xcc(sp)
    lwz     r29, 0x58(r30)
    b       branch_0x80184a54

branch_0x80184a40:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xc4
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184a54:
    lwz     r0, 0x5c(r30)
    lwz     r3, 0x58(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184a40
    lwz     r3, 0x94(r31)
    lwz     r0, 0x98(r31)
    stw     r3, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0xc0(sp)
    lwz     r29, 0x68(r30)
    b       branch_0x80184aa0

branch_0x80184a8c:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xb8
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184aa0:
    lwz     r0, 0x6c(r30)
    lwz     r3, 0x68(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184a8c
    lwz     r3, 0xa0(r31)
    lwz     r0, 0xa4(r31)
    stw     r3, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0xa8(r31)
    stw     r0, 0xb4(sp)
    lwz     r29, 0x60(r30)
    b       branch_0x80184aec

branch_0x80184ad8:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xac
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184aec:
    lwz     r0, 0x64(r30)
    lwz     r3, 0x60(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184ad8
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xa8(sp)
    lwz     r29, 0x60(r30)
    b       branch_0x80184b38

branch_0x80184b24:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0xa0
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184b38:
    lwz     r0, 0x64(r30)
    lwz     r3, 0x60(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184b24
    b       branch_0x80184c84

branch_0x80184b54:
    lwz     r3, 0xb8(r31)
    lwz     r0, 0xbc(r31)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0xc0(r31)
    stw     r0, 0x9c(sp)
    lwz     r29, 0x58(r30)
    b       branch_0x80184b88

branch_0x80184b74:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0x94
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184b88:
    lwz     r0, 0x5c(r30)
    lwz     r3, 0x58(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184b74
    lwz     r3, 0xc4(r31)
    lwz     r0, 0xc8(r31)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0xcc(r31)
    stw     r0, 0x90(sp)
    lwz     r29, 0x60(r30)
    b       branch_0x80184bd4

branch_0x80184bc0:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0x88
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184bd4:
    lwz     r0, 0x64(r30)
    lwz     r3, 0x60(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184bc0
    lwz     r3, 0xd0(r31)
    lwz     r0, 0xd4(r31)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0xd8(r31)
    stw     r0, 0x84(sp)
    lwz     r29, 0x68(r30)
    b       branch_0x80184c20

branch_0x80184c0c:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0x7c
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184c20:
    lwz     r0, 0x6c(r30)
    lwz     r3, 0x68(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184c0c
    lwz     r3, 0xdc(r31)
    lwz     r0, 0xe0(r31)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0xe4(r31)
    stw     r0, 0x78(sp)
    lwz     r29, 0x68(r30)
    b       branch_0x80184c6c

branch_0x80184c58:
    lwz     r3, 0x0(r29)
    addi    r12, sp, 0x70
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    addi    r29, r29, 0x4
branch_0x80184c6c:
    lwz     r0, 0x6c(r30)
    lwz     r3, 0x68(r30)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80184c58
branch_0x80184c84:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x110
    blr


.globl setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State: # 0x80184ca0
    mflr    r0
    cmpwi   r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x268(sp)
    stw     r31, 0x264(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x260(sp)
    stw     r29, 0x25c(sp)
    stw     r28, 0x258(sp)
    stw     r4, 0x14(r3)
    beq-    branch_0x80184ddc
    bge-    branch_0x80184cdc
    cmpwi   r4, 0x0
    bge-    branch_0x80184f04
    b       branch_0x80185030

branch_0x80184cdc:
    cmpwi   r4, 0x3
    bge-    branch_0x80185030
    lwz     r3, 0x4(r31)
    li      r0, 0x96
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r28, 0xd0(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80184d84
    subi    r28, r28, 0xc
    b       branch_0x80184d84

branch_0x80184d10:
    lwz     r3, 0xc(r28)
    li      r0, 0x1
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r28)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80184d34
    subi    r3, r3, 0xc
branch_0x80184d34:
    addi    r29, r3, 0x0
    li      r30, 0x1
    b       branch_0x80184d6c

branch_0x80184d40:
    mr      r3, r29
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r29)
    bl      setInfluencedAlphaRecursive__16TOptionSoundUnitFP7J2DPaneb
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80184d6c
    subi    r29, r29, 0xc
branch_0x80184d6c:
    cmplwi  r29, 0x0
    bne+    branch_0x80184d40
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80184d84
    subi    r28, r28, 0xc
branch_0x80184d84:
    cmplwi  r28, 0x0
    bne+    branch_0x80184d10
    lwz     r4, 0xc(r31)
    lis     r0, 0x4330
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x10(r4)
    lha     r3, 0xa(r4)
    lfd     f1, -0x44a8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x254(sp)
    stw     r0, 0x250(sp)
    lfd     f0, 0x250(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r4)
    lfs     f0, -0x44c4(rtoc)
    stfs    f0, 0x10(r4)
    lwz     r3, 0x2c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80185030
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    b       branch_0x80185030

branch_0x80184ddc:
    lbz     r3, 0x8(r31)
    lwz     r6, 0x4(r31)
    extsh.  r0, r3
    bge-    branch_0x80184df4
    li      r7, 0x0
    b       branch_0x80184df8

branch_0x80184df4:
    mr      r7, r3
branch_0x80184df8:
    extsh   r0, r7
    cmpwi   r0, 0xff
    ble-    branch_0x80184e08
    li      r7, 0xff
branch_0x80184e08:
    extsh   r3, r3
    lwz     r4, 0x0(r6)
    xoris   r0, r3, 0x8000
    stw     r0, 0x254(sp)
    lis     r5, 0x4330
    subfic  r0, r3, 0x96
    stb     r7, 0xcc(r4)
    xoris   r4, r0, 0x8000
    li      r3, 0x96
    stw     r5, 0x250(sp)
    li      r0, 0x1
    lfd     f2, -0x44a8(rtoc)
    stw     r4, 0x24c(sp)
    lfd     f0, 0x250(sp)
    stw     r5, 0x248(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x248(sp)
    stfs    f1, 0x44(r6)
    fsubs   f1, f0, f2
    lfs     f0, -0x448c(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r6)
    sth     r3, 0x4c(r6)
    stb     r0, 0x50(r6)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r29, 0xd0(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80184ef8
    subi    r29, r29, 0xc
    b       branch_0x80184ef8

branch_0x80184e84:
    lwz     r3, 0xc(r29)
    li      r0, 0x1
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r29)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80184ea8
    subi    r3, r3, 0xc
branch_0x80184ea8:
    addi    r28, r3, 0x0
    li      r30, 0x1
    b       branch_0x80184ee0

branch_0x80184eb4:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__16TOptionSoundUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80184ee0
    subi    r28, r28, 0xc
branch_0x80184ee0:
    cmplwi  r28, 0x0
    bne+    branch_0x80184eb4
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80184ef8
    subi    r29, r29, 0xc
branch_0x80184ef8:
    cmplwi  r29, 0x0
    bne+    branch_0x80184e84
    b       branch_0x80185030

branch_0x80184f04:
    lwz     r3, 0x4(r31)
    lbz     r0, 0x8(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r29, 0xd0(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80184fa4
    subi    r29, r29, 0xc
    b       branch_0x80184fa4

branch_0x80184f30:
    lwz     r3, 0xc(r29)
    li      r0, 0x0
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r29)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80184f54
    subi    r3, r3, 0xc
branch_0x80184f54:
    addi    r28, r3, 0x0
    li      r30, 0x0
    b       branch_0x80184f8c

branch_0x80184f60:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x0
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__16TOptionSoundUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80184f8c
    subi    r28, r28, 0xc
branch_0x80184f8c:
    cmplwi  r28, 0x0
    bne+    branch_0x80184f60
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80184fa4
    subi    r29, r29, 0xc
branch_0x80184fa4:
    cmplwi  r29, 0x0
    bne+    branch_0x80184f30
    lfs     f0, -0x44c4(rtoc)
    mr      r3, r31
    lwz     r4, 0xc(r31)
    stfs    f0, 0x10(r4)
    bl      adjustView__16TOptionSoundUnitFv
    lwz     r3, 0x2c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80184fd4
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x80184fd4:
    lwz     r6, 0x10(r31)
    lis     r4, 0x803c
    addi    r0, r4, 0x14d8
    lwz     r3, -0x6044(r13)
    lwz     r5, 0x4(r6)
    lwz     r4, 0xc(r6)
    subf    r4, r5, r4
    srawi   r4, r4, 2
    addze   r4, r4
    slwi    r4, r4, 3
    add     r4, r0, r4
    lwz     r30, 0x0(r4)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80185028
    addi    r3, r30, 0x0
    addi    r5, r31, 0x2c
    li      r4, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80185028:
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x28(r31)
branch_0x80185030:
    lwz     r0, 0x26c(sp)
    lwz     r31, 0x264(sp)
    lwz     r30, 0x260(sp)
    mtlr    r0
    lwz     r29, 0x25c(sp)
    lwz     r28, 0x258(sp)
    addi    sp, sp, 0x268
    blr


.globl typeToFlag__16TOptionSoundUnitFQ216TOptionSoundUnit9SoundType
typeToFlag__16TOptionSoundUnitFQ216TOptionSoundUnit9SoundType: # 0x80185050
    lis     r4, 0x803c
    addi    r4, r4, 0x14f0
    addi    r5, r4, 0x0
    addi    r4, r4, 0x18
    b       branch_0x8018507c

branch_0x80185064:
    lwz     r0, 0x0(r5)
    cmpw    r0, r3
    bne-    branch_0x80185078
    lwz     r3, 0x4(r5)
    blr

branch_0x80185078:
    addi    r5, r5, 0x8
branch_0x8018507c:
    cmplw   r5, r4
    bne+    branch_0x80185064
    li      r3, 0x0
    blr


.globl flagToType__16TOptionSoundUnitFi
flagToType__16TOptionSoundUnitFi: # 0x8018508c
    lis     r4, 0x803c
    addi    r4, r4, 0x14f0
    addi    r5, r4, 0x0
    addi    r4, r4, 0x18
    b       branch_0x801850b8

branch_0x801850a0:
    lwz     r0, 0x4(r5)
    cmpw    r0, r3
    bne-    branch_0x801850b4
    lwz     r3, 0x0(r5)
    blr

branch_0x801850b4:
    addi    r5, r5, 0x8
branch_0x801850b8:
    cmplw   r5, r4
    bne+    branch_0x801850a0
    li      r3, 0x0
    blr


.globl update__16TOptionSoundUnitFv
update__16TOptionSoundUnitFv: # 0x801850c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stw     r31, 0xec(sp)
    stw     r30, 0xe8(sp)
    mr      r30, r3
    stw     r29, 0xe4(sp)
    stw     r28, 0xe0(sp)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80185108
    bge-    branch_0x8018537c
    cmpwi   r0, 0x0
    bge-    branch_0x80185134
    b       branch_0x8018537c


.incbin "./baserom/code/Text_0x80005600.bin", 0x17fb04, 0x80185108 - 0x80185104
branch_0x80185108:
    lwz     r3, 0x4(r30)
    bl      update__7TExPaneFv
    lwz     r3, 0x4(r30)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xcc(r3)
    cmplwi  r0, 0x96
    bne-    branch_0x8018537c
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
    b       branch_0x8018537c

branch_0x80185134:
    lwz     r3, 0x4(r30)
    bl      update__7TExPaneFv
    lwz     r31, 0xc(r30)
    lis     r8, 0x4330
    lfd     f3, -0x44a8(rtoc)
    addi    r3, sp, 0x94
    lha     r0, 0xc(r31)
    lfs     f2, 0x14(r31)
    addi    r4, r31, 0x18
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4498(rtoc)
    stw     r0, 0xdc(sp)
    lfs     f4, -0x449c(rtoc)
    stw     r8, 0xd8(sp)
    lfs     f5, -0x44a0(rtoc)
    lfd     f1, 0xd8(sp)
    lwz     r7, 0x18(r31)
    fsubs   f1, f1, f3
    lwz     r6, 0x20(r31)
    lwz     r5, 0x1c(r31)
    lwz     r0, 0x24(r31)
    subf    r6, r7, r6
    fdivs   f1, f2, f1
    subf    r0, r5, r0
    xoris   r5, r6, 0x8000
    lwz     r6, -0x5eac(r13)
    xoris   r0, r0, 0x8000
    fmuls   f0, f1, f0
    stw     r5, 0xcc(sp)
    lwz     r5, -0x5ea8(r13)
    stw     r0, 0xbc(sp)
    fmuls   f0, f4, f0
    stw     r8, 0xc8(sp)
    lfs     f4, 0x28(r31)
    fmuls   f2, f5, f0
    stw     r8, 0xb8(sp)
    lfd     f1, 0xc8(sp)
    lfd     f0, 0xb8(sp)
    fctiwz  f2, f2
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    stfd    f2, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r6
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fmuls   f2, f4, f2
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0xc0(sp)
    stfd    f0, 0xb0(sp)
    lwz     r28, 0xc4(sp)
    lwz     r29, 0xb4(sp)
    bl      copy__7JUTRectFRC7JUTRect
    srawi   r6, r28, 1
    lwz     r4, 0x18(r31)
    addze   r6, r6
    lwz     r0, 0x1c(r31)
    srawi   r5, r29, 1
    addze   r5, r5
    addi    r3, sp, 0x94
    subf    r4, r6, r4
    subf    r5, r5, r0
    bl      move__7JUTRectFii
    lwz     r6, 0x1c(r31)
    addi    r3, sp, 0x94
    lwz     r5, 0x24(r31)
    lwz     r4, 0x18(r31)
    lwz     r0, 0x20(r31)
    subf    r5, r6, r5
    add     r5, r29, r5
    subf    r0, r4, r0
    add     r4, r28, r0
    bl      resize__7JUTRectFii
    lwz     r5, 0x0(r31)
    addi    r3, r31, 0x4
    lwz     r4, 0x94(sp)
    lwz     r0, 0x98(sp)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r4, 0x9c(sp)
    lwz     r0, 0xa0(sp)
    stw     r4, 0x1c(r5)
    stw     r0, 0x20(r5)
    bl      update__12J3DFrameCtrlFv
    lwz     r4, 0x10(r30)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    slwi    r3, r0, 3
    addi    r29, r3, 0x58
    add     r29, r30, r29
    lwz     r28, 0x0(r29)
    b       branch_0x801852cc

branch_0x801852c0:
    lwz     r3, 0x0(r28)
    bl      update__18TPatternAnmControlFv
    addi    r28, r28, 0x4
branch_0x801852cc:
    lwz     r0, 0x4(r29)
    lwz     r3, 0x0(r29)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r28, r0
    bne+    branch_0x801852c0
    addi    r3, r30, 0x18
    bl      update__12J3DFrameCtrlFv
    lbz     r0, 0x1d(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80185300
    li      r0, 0x1
    b       branch_0x80185304

branch_0x80185300:
    li      r0, 0x0
branch_0x80185304:
    cmpwi   r0, 0x0
    beq-    branch_0x8018537c
    lwz     r3, 0x2c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80185320
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x80185320:
    lwz     r6, 0x10(r30)
    lis     r4, 0x803c
    addi    r0, r4, 0x14d8
    lwz     r3, -0x6044(r13)
    lwz     r5, 0x4(r6)
    lwz     r4, 0xc(r6)
    subf    r4, r5, r4
    srawi   r4, r4, 2
    addze   r4, r4
    slwi    r4, r4, 3
    add     r4, r0, r4
    lwz     r28, 0x0(r4)
    mr      r4, r28
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80185374
    addi    r3, r28, 0x0
    addi    r5, r30, 0x2c
    li      r4, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80185374:
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x28(r30)
branch_0x8018537c:
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    lwz     r30, 0xe8(sp)
    mtlr    r0
    lwz     r29, 0xe4(sp)
    lwz     r28, 0xe0(sp)
    addi    sp, sp, 0xf0
    blr


.globl initSurroundAnm__16TOptionSoundUnitFv
initSurroundAnm__16TOptionSoundUnitFv: # 0x8018539c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r26, 0x48(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x8039
    subi    r31, r3, 0x7680
    addi    r30, r29, 0x44
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801853fc
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x801853fc:
    stw     r26, 0x0(r30)
    addi    r3, r31, 0x70
    li      r0, 0x8
    lwz     r26, 0x0(r30)
    li      r28, 0x0
    stw     r3, 0x18(r26)
    stw     r0, 0x1c(r26)
    lwz     r27, 0x18(r26)
    b       branch_0x80185440

branch_0x80185420:
    lwz     r3, 0x0(r26)
    lwz     r4, 0x0(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r28, 0xc(r3)
    addi    r27, r27, 0x8
branch_0x80185440:
    lwz     r0, 0x1c(r26)
    lwz     r3, 0x18(r26)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r27, r0
    bne+    branch_0x80185420
    lwz     r3, 0x0(r30)
    bl      setupAnm__18TPatternAnmControlFv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801854a0
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x801854a0:
    stw     r26, 0x4(r30)
    addi    r3, r31, 0xd8
    li      r0, 0x5
    lwz     r27, 0x4(r30)
    li      r28, 0x0
    stw     r3, 0x18(r27)
    stw     r0, 0x1c(r27)
    lwz     r26, 0x18(r27)
    b       branch_0x801854e4

branch_0x801854c4:
    lwz     r3, 0x0(r27)
    lwz     r4, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r28, 0xc(r3)
    addi    r26, r26, 0x8
branch_0x801854e4:
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x18(r27)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r26, r0
    bne+    branch_0x801854c4
    lwz     r3, 0x4(r30)
    bl      setupAnm__18TPatternAnmControlFv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80185544
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x80185544:
    stw     r26, 0x8(r30)
    addi    r3, r31, 0xb0
    li      r0, 0x5
    lwz     r27, 0x8(r30)
    li      r28, 0x0
    stw     r3, 0x18(r27)
    stw     r0, 0x1c(r27)
    lwz     r26, 0x18(r27)
    b       branch_0x80185588

branch_0x80185568:
    lwz     r3, 0x0(r27)
    lwz     r4, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r28, 0xc(r3)
    addi    r26, r26, 0x8
branch_0x80185588:
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x18(r27)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r26, r0
    bne+    branch_0x80185568
    lwz     r3, 0x8(r30)
    bl      setupAnm__18TPatternAnmControlFv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801855e8
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x801855e8:
    stw     r26, 0xc(r30)
    addi    r3, r31, 0x128
    li      r0, 0x5
    lwz     r27, 0xc(r30)
    li      r28, 0x0
    stw     r3, 0x18(r27)
    stw     r0, 0x1c(r27)
    lwz     r26, 0x18(r27)
    b       branch_0x8018562c

branch_0x8018560c:
    lwz     r3, 0x0(r27)
    lwz     r4, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r28, 0xc(r3)
    addi    r26, r26, 0x8
branch_0x8018562c:
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x18(r27)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r26, r0
    bne+    branch_0x8018560c
    lwz     r3, 0xc(r30)
    bl      setupAnm__18TPatternAnmControlFv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8018568c
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x8018568c:
    stw     r26, 0x10(r30)
    addi    r3, r31, 0x100
    li      r0, 0x5
    lwz     r27, 0x10(r30)
    li      r31, 0x0
    stw     r3, 0x18(r27)
    stw     r0, 0x1c(r27)
    lwz     r26, 0x18(r27)
    b       branch_0x801856d0

branch_0x801856b0:
    lwz     r3, 0x0(r27)
    lwz     r4, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
    addi    r26, r26, 0x8
branch_0x801856d0:
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x18(r27)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r26, r0
    bne+    branch_0x801856b0
    lwz     r3, 0x10(r30)
    bl      setupAnm__18TPatternAnmControlFv
    addi    r0, r29, 0x44
    stw     r0, 0x68(r29)
    li      r0, 0x5
    stw     r0, 0x6c(r29)
    lwz     r0, 0x64(sp)
    lmw     r26, 0x48(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl initSteleoAnm__16TOptionSoundUnitFv
initSteleoAnm__16TOptionSoundUnitFv: # 0x80185714
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x8039
    subi    r31, r3, 0x7680
    addi    r30, r29, 0x38
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80185774
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x80185774:
    stw     r26, 0x0(r30)
    addi    r3, r31, 0x150
    li      r0, 0x8
    lwz     r26, 0x0(r30)
    li      r28, 0x0
    stw     r3, 0x18(r26)
    stw     r0, 0x1c(r26)
    lwz     r27, 0x18(r26)
    b       branch_0x801857b8

branch_0x80185798:
    lwz     r3, 0x0(r26)
    lwz     r4, 0x0(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r28, 0xc(r3)
    addi    r27, r27, 0x8
branch_0x801857b8:
    lwz     r0, 0x1c(r26)
    lwz     r3, 0x18(r26)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r27, r0
    bne+    branch_0x80185798
    lwz     r3, 0x0(r30)
    bl      setupAnm__18TPatternAnmControlFv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80185818
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x80185818:
    stw     r26, 0x4(r30)
    addi    r3, r31, 0x1b8
    li      r0, 0x5
    lwz     r27, 0x4(r30)
    li      r28, 0x0
    stw     r3, 0x18(r27)
    stw     r0, 0x1c(r27)
    lwz     r26, 0x18(r27)
    b       branch_0x8018585c

branch_0x8018583c:
    lwz     r3, 0x0(r27)
    lwz     r4, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r28, 0xc(r3)
    addi    r26, r26, 0x8
branch_0x8018585c:
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x18(r27)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r26, r0
    bne+    branch_0x8018583c
    lwz     r3, 0x4(r30)
    bl      setupAnm__18TPatternAnmControlFv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801858bc
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r26)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r26)
    stw     r0, 0x1c(r26)
branch_0x801858bc:
    stw     r26, 0x8(r30)
    addi    r3, r31, 0x190
    li      r0, 0x5
    lwz     r27, 0x8(r30)
    li      r31, 0x0
    stw     r3, 0x18(r27)
    stw     r0, 0x1c(r27)
    lwz     r26, 0x18(r27)
    b       branch_0x80185900

branch_0x801858e0:
    lwz     r3, 0x0(r27)
    lwz     r4, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
    addi    r26, r26, 0x8
branch_0x80185900:
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x18(r27)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r26, r0
    bne+    branch_0x801858e0
    lwz     r3, 0x8(r30)
    bl      setupAnm__18TPatternAnmControlFv
    addi    r0, r29, 0x38
    stw     r0, 0x60(r29)
    li      r0, 0x3
    stw     r0, 0x64(r29)
    lwz     r0, 0x4c(sp)
    lmw     r26, 0x30(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__16TOptionSoundUnitFP9J2DScreen
__ct__16TOptionSoundUnitFP9J2DScreen: # 0x80185944
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r27, 0x5c(sp)
    subi    r31, r5, 0x7680
    stw     r3, 0x8(sp)
    lis     r3, 0x803b
    subi    r0, r3, 0x2eac
    lwz     r29, 0x8(sp)
    stw     r4, 0x0(r29)
    addi    r3, r29, 0x18
    li      r4, 0x0
    stw     r0, 0x18(r29)
    bl      init__12J3DFrameCtrlFs
    lis     r3, 0x8018
    addi    r4, r3, 0x5d3c
    addi    r3, r29, 0x58
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x3
    bl      __construct_array
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801859c0
    lis     r5, 0x6f79
    lwz     r4, 0x0(r29)
    addi    r3, r27, 0x0
    addi    r5, r5, 0x6132
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801859c0:
    lwz     r29, 0x8(sp)
    li      r3, 0x2c
    stw     r27, 0x4(r29)
    lwz     r4, 0x4(r29)
    lwz     r4, 0x0(r4)
    lbz     r0, 0xcc(r4)
    stb     r0, 0x8(r29)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80185a64
    lwz     r3, 0x0(r29)
    lis     r4, 0x6d65
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r27, 0x44(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x803b
    stw     r30, 0x0(r27)
    subi    r0, r3, 0x2eac
    li      r4, 0x0
    lwz     r29, 0x44(sp)
    stw     r0, 0x4(r29)
    addi    r3, r29, 0x4
    bl      init__12J3DFrameCtrlFs
    addi    r3, r29, 0x18
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x14(r30)
    lwz     r0, 0x18(r30)
    stw     r3, 0x18(r29)
    stw     r0, 0x1c(r29)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x20(r30)
    stw     r3, 0x20(r29)
    stw     r0, 0x24(r29)
branch_0x80185a64:
    lwz     r29, 0x8(sp)
    li      r4, 0x78
    stw     r27, 0xc(r29)
    lwz     r28, 0xc(r29)
    lfs     f0, -0x4484(rtoc)
    addi    r3, r28, 0x4
    stfs    f0, 0x28(r28)
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x2
    stb     r0, 0x8(r28)
    lis     r0, 0x4330
    addi    r30, r29, 0x30
    lfs     f2, -0x44c4(rtoc)
    li      r3, 0x28
    stfs    f2, 0x10(r28)
    lwz     r5, 0xc(r29)
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x10(r5)
    lha     r4, 0xa(r5)
    lfd     f1, -0x44a8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r5)
    stfs    f2, 0x10(r5)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80185b0c
    lwz     r0, 0x0(r29)
    lis     r3, 0x803b
    addi    r4, r27, 0x0
    stw     r0, 0x0(r27)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r27)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r27)
    stw     r0, 0x1c(r27)
branch_0x80185b0c:
    stw     r27, 0x0(r30)
    addi    r3, r31, 0x1e0
    li      r0, 0x2
    lwz     r27, 0x0(r30)
    li      r29, 0x0
    stw     r3, 0x18(r27)
    stw     r0, 0x1c(r27)
    lwz     r28, 0x18(r27)
    b       branch_0x80185b50

branch_0x80185b30:
    lwz     r3, 0x0(r27)
    lwz     r4, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r29, 0xc(r3)
    addi    r28, r28, 0x8
branch_0x80185b50:
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x18(r27)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r28, r0
    bne+    branch_0x80185b30
    lwz     r3, 0x0(r30)
    bl      setupAnm__18TPatternAnmControlFv
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80185bb4
    lwz     r4, 0x8(sp)
    lis     r3, 0x803b
    addi    r5, r27, 0x0
    lwz     r4, 0x0(r4)
    subi    r0, r3, 0x2eac
    addi    r3, r5, 0x4
    stw     r4, 0x0(r27)
    li      r4, 0x0
    stw     r0, 0x4(r27)
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r27)
    stw     r0, 0x1c(r27)
branch_0x80185bb4:
    stw     r27, 0x4(r30)
    addi    r3, r31, 0x1f0
    li      r0, 0x2
    lwz     r28, 0x4(r30)
    li      r29, 0x0
    stw     r3, 0x18(r28)
    stw     r0, 0x1c(r28)
    lwz     r27, 0x18(r28)
    b       branch_0x80185bf8

branch_0x80185bd8:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x0(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r29, 0xc(r3)
    addi    r27, r27, 0x8
branch_0x80185bf8:
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r27, r0
    bne+    branch_0x80185bd8
    lwz     r3, 0x4(r30)
    bl      setupAnm__18TPatternAnmControlFv
    lwz     r27, 0x8(sp)
    li      r0, 0x2
    addi    r3, r27, 0x30
    stw     r3, 0x58(r27)
    mr      r3, r27
    stw     r0, 0x5c(r27)
    bl      initSteleoAnm__16TOptionSoundUnitFv
    mr      r3, r27
    bl      initSurroundAnm__16TOptionSoundUnitFv
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80185c60
    lwz     r4, 0x0(r27)
    li      r0, 0x0
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
branch_0x80185c60:
    lwz     r5, 0x8(sp)
    addi    r4, r31, 0x200
    li      r0, 0x3
    stw     r3, 0x10(r5)
    li      r30, 0x0
    lwz     r29, 0x10(r5)
    stw     r4, 0x4(r29)
    stw     r0, 0x8(r29)
    lwz     r28, 0x4(r29)
    b       branch_0x80185ca8

branch_0x80185c88:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r28, r28, 0x4
branch_0x80185ca8:
    lwz     r0, 0x8(r29)
    lwz     r3, 0x4(r29)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r28, r0
    bne+    branch_0x80185c88
    stw     r3, 0xc(r29)
    lwz     r3, 0x0(r29)
    lwz     r4, 0xc(r29)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    li      r4, 0x121
    lwz     r30, 0x8(sp)
    addi    r3, r30, 0x18
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x2
    stb     r0, 0x1c(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    lfs     f0, -0x44c4(rtoc)
    li      r4, 0x2
    stfs    f0, 0x24(r30)
    stw     r0, 0x2c(r30)
    bl      setState__16TOptionSoundUnitFQ216TOptionSoundUnit5State
    mr      r3, r30
    bl      adjustView__16TOptionSoundUnitFv
    mr      r3, r30
    lmw     r27, 0x5c(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__Q29_unnamed_35ArrayWrapper_P18TPatternAnmControl_Fv
__ct__Q29_unnamed_35ArrayWrapper_P18TPatternAnmControl_Fv: # 0x80185d3c
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb
setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb: # 0x80185d4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stmw    r27, 0x104(sp)
    addi    r29, r3, 0x0
    addi    r30, r5, 0x0
    lwz     r31, 0xd0(r4)
    cmplwi  r31, 0x0
    beq-    branch_0x80185e1c
    subi    r31, r31, 0xc
    b       branch_0x80185e1c

branch_0x80185d78:
    lwz     r3, 0xc(r31)
    stb     r30, 0xce(r3)
    lwz     r3, 0xc(r31)
    lwz     r27, 0xd0(r3)
    cmplwi  r27, 0x0
    beq-    branch_0x80185e04
    subi    r27, r27, 0xc
    b       branch_0x80185e04

branch_0x80185d98:
    lwz     r3, 0xc(r27)
    stb     r30, 0xce(r3)
    lwz     r3, 0xc(r27)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80185db8
    subi    r3, r3, 0xc
branch_0x80185db8:
    mr      r28, r3
    b       branch_0x80185dec

branch_0x80185dc0:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80185dec
    subi    r28, r28, 0xc
branch_0x80185dec:
    cmplwi  r28, 0x0
    bne+    branch_0x80185dc0
    lwz     r27, 0x18(r27)
    cmplwi  r27, 0x0
    beq-    branch_0x80185e04
    subi    r27, r27, 0xc
branch_0x80185e04:
    cmplwi  r27, 0x0
    bne+    branch_0x80185d98
    lwz     r31, 0x18(r31)
    cmplwi  r31, 0x0
    beq-    branch_0x80185e1c
    subi    r31, r31, 0xc
branch_0x80185e1c:
    cmplwi  r31, 0x0
    bne+    branch_0x80185d78
    lmw     r27, 0x104(sp)
    lwz     r0, 0x11c(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl setState__19TOptionSubtitleUnitFQ219TOptionSubtitleUnit5State
setState__19TOptionSubtitleUnitFQ219TOptionSubtitleUnit5State: # 0x80185e38
    mflr    r0
    cmpwi   r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x250(sp)
    stw     r31, 0x24c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x248(sp)
    stw     r29, 0x244(sp)
    stw     r28, 0x240(sp)
    stw     r4, 0x14(r3)
    beq-    branch_0x80185f60
    bge-    branch_0x80185e74
    cmpwi   r4, 0x0
    bge-    branch_0x80186088
    b       branch_0x8018613c

branch_0x80185e74:
    cmpwi   r4, 0x3
    bge-    branch_0x8018613c
    lwz     r3, 0x4(r31)
    li      r0, 0x96
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r28, 0xd0(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80185f1c
    subi    r28, r28, 0xc
    b       branch_0x80185f1c

branch_0x80185ea8:
    lwz     r3, 0xc(r28)
    li      r0, 0x1
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r28)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80185ecc
    subi    r3, r3, 0xc
branch_0x80185ecc:
    addi    r29, r3, 0x0
    li      r30, 0x1
    b       branch_0x80185f04

branch_0x80185ed8:
    mr      r3, r29
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r29)
    bl      setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80185f04
    subi    r29, r29, 0xc
branch_0x80185f04:
    cmplwi  r29, 0x0
    bne+    branch_0x80185ed8
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80185f1c
    subi    r28, r28, 0xc
branch_0x80185f1c:
    cmplwi  r28, 0x0
    bne+    branch_0x80185ea8
    lwz     r4, 0xc(r31)
    lis     r0, 0x4330
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x10(r4)
    lha     r3, 0xa(r4)
    lfd     f1, -0x44a8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x23c(sp)
    stw     r0, 0x238(sp)
    lfd     f0, 0x238(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r4)
    lfs     f0, -0x44c4(rtoc)
    stfs    f0, 0x10(r4)
    b       branch_0x8018613c

branch_0x80185f60:
    lbz     r3, 0x8(r31)
    lwz     r6, 0x4(r31)
    extsh.  r0, r3
    bge-    branch_0x80185f78
    li      r7, 0x0
    b       branch_0x80185f7c

branch_0x80185f78:
    mr      r7, r3
branch_0x80185f7c:
    extsh   r0, r7
    cmpwi   r0, 0xff
    ble-    branch_0x80185f8c
    li      r7, 0xff
branch_0x80185f8c:
    extsh   r3, r3
    lwz     r4, 0x0(r6)
    xoris   r0, r3, 0x8000
    stw     r0, 0x23c(sp)
    lis     r5, 0x4330
    subfic  r0, r3, 0x96
    stb     r7, 0xcc(r4)
    xoris   r4, r0, 0x8000
    li      r3, 0x96
    stw     r5, 0x238(sp)
    li      r0, 0x1
    lfd     f2, -0x44a8(rtoc)
    stw     r4, 0x234(sp)
    lfd     f0, 0x238(sp)
    stw     r5, 0x230(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x230(sp)
    stfs    f1, 0x44(r6)
    fsubs   f1, f0, f2
    lfs     f0, -0x448c(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r6)
    sth     r3, 0x4c(r6)
    stb     r0, 0x50(r6)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r29, 0xd0(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8018607c
    subi    r29, r29, 0xc
    b       branch_0x8018607c

branch_0x80186008:
    lwz     r3, 0xc(r29)
    li      r0, 0x1
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r29)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x8018602c
    subi    r3, r3, 0xc
branch_0x8018602c:
    addi    r28, r3, 0x0
    li      r30, 0x1
    b       branch_0x80186064

branch_0x80186038:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80186064
    subi    r28, r28, 0xc
branch_0x80186064:
    cmplwi  r28, 0x0
    bne+    branch_0x80186038
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x8018607c
    subi    r29, r29, 0xc
branch_0x8018607c:
    cmplwi  r29, 0x0
    bne+    branch_0x80186008
    b       branch_0x8018613c

branch_0x80186088:
    lwz     r3, 0x4(r31)
    lbz     r0, 0x8(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r29, 0xd0(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80186128
    subi    r29, r29, 0xc
    b       branch_0x80186128

branch_0x801860b4:
    lwz     r3, 0xc(r29)
    li      r0, 0x0
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r29)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x801860d8
    subi    r3, r3, 0xc
branch_0x801860d8:
    addi    r28, r3, 0x0
    li      r30, 0x0
    b       branch_0x80186110

branch_0x801860e4:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x0
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80186110
    subi    r28, r28, 0xc
branch_0x80186110:
    cmplwi  r28, 0x0
    bne+    branch_0x801860e4
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80186128
    subi    r29, r29, 0xc
branch_0x80186128:
    cmplwi  r29, 0x0
    bne+    branch_0x801860b4
    lfs     f0, -0x44c4(rtoc)
    lwz     r3, 0xc(r31)
    stfs    f0, 0x10(r3)
branch_0x8018613c:
    lwz     r0, 0x254(sp)
    lwz     r31, 0x24c(sp)
    lwz     r30, 0x248(sp)
    mtlr    r0
    lwz     r29, 0x244(sp)
    lwz     r28, 0x240(sp)
    addi    sp, sp, 0x250
    blr


.globl update__19TOptionSubtitleUnitFv
update__19TOptionSubtitleUnitFv: # 0x8018615c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f0(sp)
    stw     r31, 0x1ec(sp)
    mr      r31, r3
    stw     r30, 0x1e8(sp)
    stw     r29, 0x1e4(sp)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80186198
    bge-    branch_0x801863c4
    cmpwi   r0, 0x0
    bge-    branch_0x80186264
    b       branch_0x801863c4


.incbin "./baserom/code/Text_0x80005600.bin", 0x180b94, 0x80186198 - 0x80186194
branch_0x80186198:
    lwz     r3, 0x4(r31)
    bl      update__7TExPaneFv
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xcc(r3)
    cmplwi  r0, 0x96
    bne-    branch_0x801863c4
    li      r0, 0x2
    stw     r0, 0x14(r31)
    li      r0, 0x96
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x801861e8
    subi    r3, r3, 0xc
branch_0x801861e8:
    addi    r29, r3, 0x0
    li      r30, 0x1
    b       branch_0x80186220

branch_0x801861f4:
    mr      r3, r29
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r29)
    bl      setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80186220
    subi    r29, r29, 0xc
branch_0x80186220:
    cmplwi  r29, 0x0
    bne+    branch_0x801861f4
    lwz     r4, 0xc(r31)
    lis     r0, 0x4330
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x10(r4)
    lha     r3, 0xa(r4)
    lfd     f1, -0x44a8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x1dc(sp)
    stw     r0, 0x1d8(sp)
    lfd     f0, 0x1d8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r4)
    lfs     f0, -0x44c4(rtoc)
    stfs    f0, 0x10(r4)
    b       branch_0x801863c4

branch_0x80186264:
    lwz     r3, 0x4(r31)
    bl      update__7TExPaneFv
    lwz     r31, 0xc(r31)
    lis     r8, 0x4330
    lfd     f3, -0x44a8(rtoc)
    addi    r3, sp, 0x194
    lha     r0, 0xc(r31)
    lfs     f2, 0x14(r31)
    addi    r4, r31, 0x18
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4498(rtoc)
    stw     r0, 0x1dc(sp)
    lfs     f4, -0x449c(rtoc)
    stw     r8, 0x1d8(sp)
    lfs     f5, -0x44a0(rtoc)
    lfd     f1, 0x1d8(sp)
    lwz     r7, 0x18(r31)
    fsubs   f1, f1, f3
    lwz     r6, 0x20(r31)
    lwz     r5, 0x1c(r31)
    lwz     r0, 0x24(r31)
    subf    r6, r7, r6
    fdivs   f1, f2, f1
    subf    r0, r5, r0
    xoris   r5, r6, 0x8000
    lwz     r6, -0x5eac(r13)
    xoris   r0, r0, 0x8000
    fmuls   f0, f1, f0
    stw     r5, 0x1cc(sp)
    lwz     r5, -0x5ea8(r13)
    stw     r0, 0x1bc(sp)
    fmuls   f0, f4, f0
    stw     r8, 0x1c8(sp)
    lfs     f4, 0x28(r31)
    fmuls   f2, f5, f0
    stw     r8, 0x1b8(sp)
    lfd     f1, 0x1c8(sp)
    lfd     f0, 0x1b8(sp)
    fctiwz  f2, f2
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    stfd    f2, 0x1d0(sp)
    lwz     r0, 0x1d4(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r6
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fmuls   f2, f4, f2
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x1c0(sp)
    stfd    f0, 0x1b0(sp)
    lwz     r29, 0x1c4(sp)
    lwz     r30, 0x1b4(sp)
    bl      copy__7JUTRectFRC7JUTRect
    srawi   r6, r29, 1
    lwz     r4, 0x18(r31)
    addze   r6, r6
    lwz     r0, 0x1c(r31)
    srawi   r5, r30, 1
    addze   r5, r5
    addi    r3, sp, 0x194
    subf    r4, r6, r4
    subf    r5, r5, r0
    bl      move__7JUTRectFii
    lwz     r6, 0x1c(r31)
    addi    r3, sp, 0x194
    lwz     r5, 0x24(r31)
    lwz     r4, 0x18(r31)
    lwz     r0, 0x20(r31)
    subf    r5, r6, r5
    add     r5, r30, r5
    subf    r0, r4, r0
    add     r4, r29, r0
    bl      resize__7JUTRectFii
    lwz     r5, 0x0(r31)
    addi    r3, r31, 0x4
    lwz     r4, 0x194(sp)
    lwz     r0, 0x198(sp)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r4, 0x19c(sp)
    lwz     r0, 0x1a0(sp)
    stw     r4, 0x1c(r5)
    stw     r0, 0x20(r5)
    bl      update__12J3DFrameCtrlFv
branch_0x801863c4:
    lwz     r0, 0x1f4(sp)
    lwz     r31, 0x1ec(sp)
    lwz     r30, 0x1e8(sp)
    mtlr    r0
    lwz     r29, 0x1e4(sp)
    addi    sp, sp, 0x1f0
    blr


.globl __ct__19TOptionSubtitleUnitFP9J2DScreen
__ct__19TOptionSubtitleUnitFP9J2DScreen: # 0x801863e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stw     r31, 0x19c(sp)
    mr      r31, r3
    stw     r30, 0x198(sp)
    stw     r29, 0x194(sp)
    stw     r28, 0x190(sp)
    stw     r4, 0x0(r3)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80186428
    lis     r5, 0x7478
    lwz     r4, 0x0(r31)
    addi    r3, r28, 0x0
    addi    r5, r5, 0x7032
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x80186428:
    stw     r28, 0x4(r31)
    li      r3, 0x2c
    lwz     r4, 0x4(r31)
    lwz     r4, 0x0(r4)
    lbz     r0, 0xcc(r4)
    stb     r0, 0x8(r31)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x801864c8
    lwz     r3, 0x0(r31)
    lis     r4, 0x6d65
    addi    r4, r4, 0x5f32
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r28, 0x17c(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x803b
    stw     r29, 0x0(r28)
    subi    r0, r3, 0x2eac
    li      r4, 0x0
    lwz     r30, 0x17c(sp)
    stw     r0, 0x4(r30)
    addi    r3, r30, 0x4
    bl      init__12J3DFrameCtrlFs
    addi    r3, r30, 0x18
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x14(r29)
    lwz     r0, 0x18(r29)
    stw     r3, 0x18(r30)
    stw     r0, 0x1c(r30)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x20(r29)
    stw     r3, 0x20(r30)
    stw     r0, 0x24(r30)
branch_0x801864c8:
    stw     r28, 0xc(r31)
    li      r4, 0x78
    lwz     r29, 0xc(r31)
    lfs     f0, -0x4484(rtoc)
    addi    r3, r29, 0x4
    stfs    f0, 0x28(r29)
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x2
    stb     r0, 0x8(r29)
    lis     r0, 0x4330
    li      r3, 0x10
    lfs     f2, -0x44c4(rtoc)
    stfs    f2, 0x10(r29)
    lwz     r5, 0xc(r31)
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x10(r5)
    lha     r4, 0xa(r5)
    lfd     f1, -0x44a8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x18c(sp)
    stw     r0, 0x188(sp)
    lfd     f0, 0x188(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r5)
    stfs    f2, 0x10(r5)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8018654c
    lwz     r4, 0x0(r31)
    li      r0, 0x0
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
branch_0x8018654c:
    stw     r3, 0x10(r31)
    subi    r3, rtoc, 0x44d0
    li      r0, 0x2
    lwz     r28, 0x10(r31)
    li      r30, 0x0
    stw     r3, 0x4(r28)
    stw     r0, 0x8(r28)
    lwz     r29, 0x4(r28)
    b       branch_0x80186590

branch_0x80186570:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r29, r29, 0x4
branch_0x80186590:
    lwz     r0, 0x8(r28)
    lwz     r3, 0x4(r28)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80186570
    stw     r3, 0xc(r28)
    lwz     r3, 0x0(r28)
    lwz     r4, 0xc(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    li      r3, 0x2
    li      r0, 0x96
    stw     r3, 0x14(r31)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80186604
    subi    r3, r3, 0xc
branch_0x80186604:
    addi    r28, r3, 0x0
    li      r30, 0x1
    b       branch_0x8018663c

branch_0x80186610:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__19TOptionSubtitleUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x8018663c
    subi    r28, r28, 0xc
branch_0x8018663c:
    cmplwi  r28, 0x0
    bne+    branch_0x80186610
    lwz     r5, 0xc(r31)
    lis     r0, 0x4330
    lfs     f0, -0x44c8(rtoc)
    mr      r3, r31
    stfs    f0, 0x10(r5)
    lha     r4, 0xa(r5)
    lfd     f1, -0x44a8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x18c(sp)
    stw     r0, 0x188(sp)
    lfd     f0, 0x188(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r5)
    lfs     f0, -0x44c4(rtoc)
    stfs    f0, 0x10(r5)
    lwz     r0, 0x1a4(sp)
    lwz     r31, 0x19c(sp)
    lwz     r30, 0x198(sp)
    lwz     r29, 0x194(sp)
    lwz     r28, 0x190(sp)
    addi    sp, sp, 0x1a0
    mtlr    r0
    blr


.globl setInfluencedAlphaRecursive__17TOptionRumbleUnitFP7J2DPaneb
setInfluencedAlphaRecursive__17TOptionRumbleUnitFP7J2DPaneb: # 0x801866a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stmw    r27, 0x104(sp)
    addi    r29, r3, 0x0
    addi    r30, r5, 0x0
    lwz     r31, 0xd0(r4)
    cmplwi  r31, 0x0
    beq-    branch_0x80186770
    subi    r31, r31, 0xc
    b       branch_0x80186770

branch_0x801866cc:
    lwz     r3, 0xc(r31)
    stb     r30, 0xce(r3)
    lwz     r3, 0xc(r31)
    lwz     r27, 0xd0(r3)
    cmplwi  r27, 0x0
    beq-    branch_0x80186758
    subi    r27, r27, 0xc
    b       branch_0x80186758

branch_0x801866ec:
    lwz     r3, 0xc(r27)
    stb     r30, 0xce(r3)
    lwz     r3, 0xc(r27)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x8018670c
    subi    r3, r3, 0xc
branch_0x8018670c:
    mr      r28, r3
    b       branch_0x80186740

branch_0x80186714:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__17TOptionRumbleUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80186740
    subi    r28, r28, 0xc
branch_0x80186740:
    cmplwi  r28, 0x0
    bne+    branch_0x80186714
    lwz     r27, 0x18(r27)
    cmplwi  r27, 0x0
    beq-    branch_0x80186758
    subi    r27, r27, 0xc
branch_0x80186758:
    cmplwi  r27, 0x0
    bne+    branch_0x801866ec
    lwz     r31, 0x18(r31)
    cmplwi  r31, 0x0
    beq-    branch_0x80186770
    subi    r31, r31, 0xc
branch_0x80186770:
    cmplwi  r31, 0x0
    bne+    branch_0x801866cc
    lmw     r27, 0x104(sp)
    lwz     r0, 0x11c(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State: # 0x8018678c
    mflr    r0
    cmpwi   r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x268(sp)
    stw     r31, 0x264(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x260(sp)
    stw     r29, 0x25c(sp)
    stw     r28, 0x258(sp)
    stw     r4, 0x1c(r3)
    beq-    branch_0x801868bc
    bge-    branch_0x801867c8
    cmpwi   r4, 0x0
    bge-    branch_0x801869ec
    b       branch_0x80186b74

branch_0x801867c8:
    cmpwi   r4, 0x3
    bge-    branch_0x80186b74
    lwz     r3, 0x4(r31)
    li      r0, 0x96
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r28, 0xd0(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80186870
    subi    r28, r28, 0xc
    b       branch_0x80186870

branch_0x801867fc:
    lwz     r3, 0xc(r28)
    li      r0, 0x1
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r28)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80186820
    subi    r3, r3, 0xc
branch_0x80186820:
    addi    r29, r3, 0x0
    li      r30, 0x1
    b       branch_0x80186858

branch_0x8018682c:
    mr      r3, r29
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r29)
    bl      setInfluencedAlphaRecursive__17TOptionRumbleUnitFP7J2DPaneb
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80186858
    subi    r29, r29, 0xc
branch_0x80186858:
    cmplwi  r29, 0x0
    bne+    branch_0x8018682c
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80186870
    subi    r28, r28, 0xc
branch_0x80186870:
    cmplwi  r28, 0x0
    bne+    branch_0x801867fc
    lwz     r5, 0xc(r31)
    lis     r3, 0x4330
    lfs     f0, -0x44c8(rtoc)
    li      r0, 0x0
    stfs    f0, 0x10(r5)
    lha     r4, 0xa(r5)
    lfd     f1, -0x44a8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x254(sp)
    stw     r3, 0x250(sp)
    lfd     f0, 0x250(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r5)
    lfs     f0, -0x44c4(rtoc)
    stfs    f0, 0x10(r5)
    stb     r0, 0x20(r31)
    b       branch_0x80186b74

branch_0x801868bc:
    lbz     r3, 0x8(r31)
    lwz     r6, 0x4(r31)
    extsh.  r0, r3
    bge-    branch_0x801868d4
    li      r7, 0x0
    b       branch_0x801868d8

branch_0x801868d4:
    mr      r7, r3
branch_0x801868d8:
    extsh   r0, r7
    cmpwi   r0, 0xff
    ble-    branch_0x801868e8
    li      r7, 0xff
branch_0x801868e8:
    extsh   r3, r3
    lwz     r4, 0x0(r6)
    xoris   r0, r3, 0x8000
    stw     r0, 0x254(sp)
    lis     r5, 0x4330
    subfic  r0, r3, 0x96
    stb     r7, 0xcc(r4)
    xoris   r4, r0, 0x8000
    li      r3, 0x96
    stw     r5, 0x250(sp)
    li      r0, 0x1
    lfd     f2, -0x44a8(rtoc)
    stw     r4, 0x24c(sp)
    lfd     f0, 0x250(sp)
    stw     r5, 0x248(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x248(sp)
    stfs    f1, 0x44(r6)
    fsubs   f1, f0, f2
    lfs     f0, -0x448c(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r6)
    sth     r3, 0x4c(r6)
    stb     r0, 0x50(r6)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r29, 0xd0(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x801869d8
    subi    r29, r29, 0xc
    b       branch_0x801869d8

branch_0x80186964:
    lwz     r3, 0xc(r29)
    li      r0, 0x1
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r29)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80186988
    subi    r3, r3, 0xc
branch_0x80186988:
    addi    r28, r3, 0x0
    li      r30, 0x1
    b       branch_0x801869c0

branch_0x80186994:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x1
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__17TOptionRumbleUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x801869c0
    subi    r28, r28, 0xc
branch_0x801869c0:
    cmplwi  r28, 0x0
    bne+    branch_0x80186994
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x801869d8
    subi    r29, r29, 0xc
branch_0x801869d8:
    cmplwi  r29, 0x0
    bne+    branch_0x80186964
    li      r0, 0x0
    stb     r0, 0x20(r31)
    b       branch_0x80186b74

branch_0x801869ec:
    lwz     r3, 0x4(r31)
    lbz     r0, 0x8(r31)
    lwz     r3, 0x0(r3)
    stb     r0, 0xcc(r3)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x0(r3)
    lwz     r29, 0xd0(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80186a8c
    subi    r29, r29, 0xc
    b       branch_0x80186a8c

branch_0x80186a18:
    lwz     r3, 0xc(r29)
    li      r0, 0x0
    stb     r0, 0xce(r3)
    lwz     r3, 0xc(r29)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x80186a3c
    subi    r3, r3, 0xc
branch_0x80186a3c:
    addi    r28, r3, 0x0
    li      r30, 0x0
    b       branch_0x80186a74

branch_0x80186a48:
    mr      r3, r28
    bl      getObject__17JSUTree_7J2DPane_CFv
    stb     r30, 0xce(r3)
    addi    r3, r31, 0x0
    li      r5, 0x0
    lwz     r4, 0xc(r28)
    bl      setInfluencedAlphaRecursive__17TOptionRumbleUnitFP7J2DPaneb
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x80186a74
    subi    r28, r28, 0xc
branch_0x80186a74:
    cmplwi  r28, 0x0
    bne+    branch_0x80186a48
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x80186a8c
    subi    r29, r29, 0xc
branch_0x80186a8c:
    cmplwi  r29, 0x0
    bne+    branch_0x80186a18
    lfs     f0, -0x44c4(rtoc)
    lwz     r3, 0xc(r31)
    stfs    f0, 0x10(r3)
    lwz     r4, 0x18(r31)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpwi   r0, 0x1
    beq-    branch_0x80186b24
    bge-    branch_0x80186b74
    cmpwi   r0, 0x0
    bge-    branch_0x80186ad0
    b       branch_0x80186b74

branch_0x80186ad0:
    lwz     r28, 0x14(r31)
    li      r30, 0x0
    lwz     r29, 0x18(r28)
    b       branch_0x80186b00

branch_0x80186ae0:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r29, r29, 0x8
branch_0x80186b00:
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80186ae0
    lwz     r3, 0x10(r31)
    bl      setupAnm__18TPatternAnmControlFv
    b       branch_0x80186b74

branch_0x80186b24:
    lwz     r28, 0x10(r31)
    li      r30, 0x0
    lwz     r29, 0x18(r28)
    b       branch_0x80186b54

branch_0x80186b34:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r29, r29, 0x8
branch_0x80186b54:
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80186b34
    lwz     r3, 0x14(r31)
    bl      setupAnm__18TPatternAnmControlFv
branch_0x80186b74:
    lwz     r0, 0x26c(sp)
    lwz     r31, 0x264(sp)
    lwz     r30, 0x260(sp)
    mtlr    r0
    lwz     r29, 0x25c(sp)
    lwz     r28, 0x258(sp)
    addi    sp, sp, 0x268
    blr


.globl adjustView__17TOptionRumbleUnitFv
adjustView__17TOptionRumbleUnitFv: # 0x80186b94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    lwz     r4, 0x18(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    cmpwi   r0, 0x1
    beq-    branch_0x80186c38
    bge-    branch_0x80186c88
    cmpwi   r0, 0x0
    bge-    branch_0x80186be4
    b       branch_0x80186c88

branch_0x80186be4:
    lwz     r28, 0x14(r31)
    li      r30, 0x0
    lwz     r29, 0x18(r28)
    b       branch_0x80186c14

branch_0x80186bf4:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r29, r29, 0x8
branch_0x80186c14:
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80186bf4
    lwz     r3, 0x10(r31)
    bl      setupAnm__18TPatternAnmControlFv
    b       branch_0x80186c88

branch_0x80186c38:
    lwz     r28, 0x10(r31)
    li      r30, 0x0
    lwz     r29, 0x18(r28)
    b       branch_0x80186c68

branch_0x80186c48:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r29, r29, 0x8
branch_0x80186c68:
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80186c48
    lwz     r3, 0x14(r31)
    bl      setupAnm__18TPatternAnmControlFv
branch_0x80186c88:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl update__17TOptionRumbleUnitFv
update__17TOptionRumbleUnitFv: # 0x80186ca8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    stw     r30, 0xd0(sp)
    mr      r30, r3
    stw     r29, 0xcc(sp)
    stw     r28, 0xc8(sp)
    lwz     r0, 0x1c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80186ce8
    bge-    branch_0x8018704c
    cmpwi   r0, 0x0
    bge-    branch_0x80186d14
    b       branch_0x8018704c


.incbin "./baserom/code/Text_0x80005600.bin", 0x1816e4, 0x80186ce8 - 0x80186ce4
branch_0x80186ce8:
    lwz     r3, 0x4(r30)
    bl      update__7TExPaneFv
    lwz     r3, 0x4(r30)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xcc(r3)
    cmplwi  r0, 0x96
    bne-    branch_0x8018704c
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
    b       branch_0x8018704c

branch_0x80186d14:
    lwz     r3, 0x4(r30)
    bl      update__7TExPaneFv
    lwz     r31, 0xc(r30)
    lis     r8, 0x4330
    lfd     f3, -0x44a8(rtoc)
    addi    r3, sp, 0x7c
    lha     r0, 0xc(r31)
    lfs     f2, 0x14(r31)
    addi    r4, r31, 0x18
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4498(rtoc)
    stw     r0, 0xc4(sp)
    lfs     f4, -0x449c(rtoc)
    stw     r8, 0xc0(sp)
    lfs     f5, -0x44a0(rtoc)
    lfd     f1, 0xc0(sp)
    lwz     r7, 0x18(r31)
    fsubs   f1, f1, f3
    lwz     r6, 0x20(r31)
    lwz     r5, 0x1c(r31)
    lwz     r0, 0x24(r31)
    subf    r6, r7, r6
    fdivs   f1, f2, f1
    subf    r0, r5, r0
    xoris   r5, r6, 0x8000
    lwz     r6, -0x5eac(r13)
    xoris   r0, r0, 0x8000
    fmuls   f0, f1, f0
    stw     r5, 0xb4(sp)
    lwz     r5, -0x5ea8(r13)
    stw     r0, 0xa4(sp)
    fmuls   f0, f4, f0
    stw     r8, 0xb0(sp)
    lfs     f4, 0x28(r31)
    fmuls   f2, f5, f0
    stw     r8, 0xa0(sp)
    lfd     f1, 0xb0(sp)
    lfd     f0, 0xa0(sp)
    fctiwz  f2, f2
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    stfd    f2, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r6
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fmuls   f2, f4, f2
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0xa8(sp)
    stfd    f0, 0x98(sp)
    lwz     r28, 0xac(sp)
    lwz     r29, 0x9c(sp)
    bl      copy__7JUTRectFRC7JUTRect
    srawi   r6, r28, 1
    lwz     r4, 0x18(r31)
    addze   r6, r6
    lwz     r0, 0x1c(r31)
    srawi   r5, r29, 1
    addze   r5, r5
    addi    r3, sp, 0x7c
    subf    r4, r6, r4
    subf    r5, r5, r0
    bl      move__7JUTRectFii
    lwz     r6, 0x1c(r31)
    addi    r3, sp, 0x7c
    lwz     r5, 0x24(r31)
    lwz     r4, 0x18(r31)
    lwz     r0, 0x20(r31)
    subf    r5, r6, r5
    add     r5, r29, r5
    subf    r0, r4, r0
    add     r4, r28, r0
    bl      resize__7JUTRectFii
    lwz     r5, 0x0(r31)
    addi    r3, r31, 0x4
    lwz     r4, 0x7c(sp)
    lwz     r0, 0x80(sp)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r4, 0x84(sp)
    lwz     r0, 0x88(sp)
    stw     r4, 0x1c(r5)
    stw     r0, 0x20(r5)
    bl      update__12J3DFrameCtrlFv
    lwz     r4, 0x18(r30)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r28, 0x10(r3)
    lfs     f1, 0x24(r28)
    addi    r3, r28, 0x4
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x80186ecc
    lbz     r0, 0x9(r28)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80186ec0
    li      r0, 0x1
    b       branch_0x80186ec4

branch_0x80186ec0:
    li      r0, 0x0
branch_0x80186ec4:
    cmpwi   r0, 0x0
    beq-    branch_0x80186f78
branch_0x80186ecc:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r5, 0x0
    stb     r5, 0xc(r3)
    lwz     r3, 0x20(r28)
    addi    r4, r3, 0x8
    stw     r4, 0x20(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r4, r0
    beq-    branch_0x80186f2c
    lbz     r0, 0x9(r28)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80186f24
    li      r5, 0x1
branch_0x80186f24:
    cmpwi   r5, 0x0
    beq-    branch_0x80186f3c
branch_0x80186f2c:
    lwz     r0, 0x18(r28)
    stw     r0, 0x20(r28)
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x24(r28)
branch_0x80186f3c:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x20(r28)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x20(r28)
    lfs     f2, -0x4488(rtoc)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x24(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x24(r28)
branch_0x80186f78:
    addi    r3, r28, 0x4
    bl      update__12J3DFrameCtrlFv
    lbz     r0, 0x20(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8018704c
    lwz     r4, 0x18(r30)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x10(r3)
    lbz     r0, 0x9(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80186fc4
    li      r0, 0x1
    b       branch_0x80186fc8

branch_0x80186fc4:
    li      r0, 0x0
branch_0x80186fc8:
    cmpwi   r0, 0x0
    beq-    branch_0x80186fe4
    li      r0, 0x0
    stb     r0, 0x20(r30)
    lwz     r3, -0x60f0(r13)
    bl      stop__9RumbleMgrFv
    b       branch_0x8018704c

branch_0x80186fe4:
    lwz     r5, 0x4(r4)
    lis     r3, 0x636e
    lwz     r4, 0xc(r4)
    addi    r0, r3, 0x7430
    subf    r4, r5, r4
    srawi   r4, r4, 2
    addze   r4, r4
    slwi    r4, r4, 2
    add     r4, r30, r4
    lwz     r4, 0x10(r4)
    lwz     r4, 0x20(r4)
    lwz     r4, 0x0(r4)
    cmpw    r4, r0
    beq-    branch_0x80187030
    blt-    branch_0x8018704c
    addi    r0, r3, 0x7433
    cmpw    r4, r0
    bge-    branch_0x8018704c
    b       branch_0x8018703c

branch_0x80187030:
    lwz     r3, -0x60f0(r13)
    bl      stop__9RumbleMgrFv
    b       branch_0x8018704c

branch_0x8018703c:
    lwz     r3, -0x60f0(r13)
    li      r4, 0x8
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
branch_0x8018704c:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    lwz     r28, 0xc8(sp)
    addi    sp, sp, 0xd8
    blr


.globl __ct__17TOptionRumbleUnitFP9J2DScreen
__ct__17TOptionRumbleUnitFP9J2DScreen: # 0x8018706c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r28, 0x70(sp)
    stw     r4, 0x0(r3)
    li      r3, 0x54
    stb     r0, 0x20(r31)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x801870bc
    lis     r5, 0x6f79
    lwz     r4, 0x0(r31)
    addi    r3, r28, 0x0
    addi    r5, r5, 0x6131
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x801870bc:
    stw     r28, 0x4(r31)
    li      r3, 0x2c
    lwz     r4, 0x4(r31)
    lwz     r4, 0x0(r4)
    lbz     r0, 0xcc(r4)
    stb     r0, 0x8(r31)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8018715c
    lwz     r3, 0x0(r31)
    lis     r4, 0x6d65
    addi    r4, r4, 0x5f30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r28, 0x58(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x803b
    stw     r29, 0x0(r28)
    subi    r0, r3, 0x2eac
    li      r4, 0x0
    lwz     r30, 0x58(sp)
    stw     r0, 0x4(r30)
    addi    r3, r30, 0x4
    bl      init__12J3DFrameCtrlFs
    addi    r3, r30, 0x18
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x14(r29)
    lwz     r0, 0x18(r29)
    stw     r3, 0x18(r30)
    stw     r0, 0x1c(r30)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x20(r29)
    stw     r3, 0x20(r30)
    stw     r0, 0x24(r30)
branch_0x8018715c:
    stw     r28, 0xc(r31)
    li      r4, 0x78
    lwz     r29, 0xc(r31)
    lfs     f0, -0x4484(rtoc)
    addi    r3, r29, 0x4
    stfs    f0, 0x28(r29)
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x2
    stb     r0, 0x8(r29)
    lis     r0, 0x4330
    li      r3, 0x28
    lfs     f2, -0x44c4(rtoc)
    stfs    f2, 0x10(r29)
    lwz     r5, 0xc(r31)
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x10(r5)
    lha     r4, 0xa(r5)
    lfd     f1, -0x44a8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x6c(sp)
    stw     r0, 0x68(sp)
    lfd     f0, 0x68(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r5)
    stfs    f2, 0x10(r5)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x801871fc
    lwz     r0, 0x0(r31)
    lis     r3, 0x803b
    addi    r4, r28, 0x0
    stw     r0, 0x0(r28)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r28)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r28)
    stw     r0, 0x1c(r28)
branch_0x801871fc:
    stw     r28, 0x14(r31)
    lis     r3, 0x8039
    subi    r3, r3, 0x7660
    lwz     r28, 0x14(r31)
    li      r0, 0xa
    li      r30, 0x0
    stw     r3, 0x18(r28)
    stw     r0, 0x1c(r28)
    lwz     r29, 0x18(r28)
    b       branch_0x80187244

branch_0x80187224:
    lwz     r3, 0x0(r28)
    lwz     r4, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r29, r29, 0x8
branch_0x80187244:
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r29, r0
    bne+    branch_0x80187224
    lwz     r3, 0x14(r31)
    bl      setupAnm__18TPatternAnmControlFv
    lwz     r29, 0x14(r31)
    li      r30, 0x0
    lwz     r28, 0x18(r29)
    b       branch_0x80187294

branch_0x80187274:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r28, r28, 0x8
branch_0x80187294:
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x18(r29)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r28, r0
    bne+    branch_0x80187274
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x801872ec
    lwz     r0, 0x0(r31)
    lis     r3, 0x803b
    addi    r4, r28, 0x0
    stw     r0, 0x0(r28)
    subi    r0, r3, 0x2eac
    addi    r3, r4, 0x4
    stw     r0, 0x4(r28)
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r28)
    stw     r0, 0x1c(r28)
branch_0x801872ec:
    stw     r28, 0x10(r31)
    subi    r3, rtoc, 0x44e0
    li      r0, 0x1
    lwz     r29, 0x10(r31)
    li      r30, 0x0
    stw     r3, 0x18(r29)
    stw     r0, 0x1c(r29)
    lwz     r28, 0x18(r29)
    b       branch_0x80187330

branch_0x80187310:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r28, r28, 0x8
branch_0x80187330:
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x18(r29)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r28, r0
    bne+    branch_0x80187310
    lwz     r3, 0x10(r31)
    bl      setupAnm__18TPatternAnmControlFv
    lwz     r29, 0x10(r31)
    li      r30, 0x0
    lwz     r28, 0x18(r29)
    b       branch_0x80187380

branch_0x80187360:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r28, r28, 0x8
branch_0x80187380:
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x18(r29)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r28, r0
    bne+    branch_0x80187360
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x801873bc
    lwz     r4, 0x0(r31)
    li      r0, 0x0
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
branch_0x801873bc:
    stw     r3, 0x18(r31)
    subi    r3, rtoc, 0x44d8
    li      r0, 0x2
    lwz     r29, 0x18(r31)
    li      r30, 0x0
    stw     r3, 0x4(r29)
    stw     r0, 0x8(r29)
    lwz     r28, 0x4(r29)
    b       branch_0x80187400

branch_0x801873e0:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r30, 0xc(r3)
    addi    r28, r28, 0x4
branch_0x80187400:
    lwz     r0, 0x8(r29)
    lwz     r3, 0x4(r29)
    slwi    r0, r0, 2
    add     r0, r3, r0
    cmplw   r28, r0
    bne+    branch_0x801873e0
    stw     r3, 0xc(r29)
    lwz     r3, 0x0(r29)
    lwz     r4, 0xc(r29)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      setState__17TOptionRumbleUnitFQ217TOptionRumbleUnit5State
    lwz     r0, 0x84(sp)
    mr      r3, r31
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl hide__18TPatternAnmControlFv
hide__18TPatternAnmControlFv: # 0x80187470
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r30, 0x18(r3)
    b       branch_0x801874b8

branch_0x80187498:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
    addi    r30, r30, 0x8
branch_0x801874b8:
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x18(r29)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r30, r0
    bne+    branch_0x80187498
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl show__18TPatternAnmControlFv
show__18TPatternAnmControlFv: # 0x801874ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r30, 0x18(r3)
    b       branch_0x80187534

branch_0x80187514:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
    addi    r30, r30, 0x8
branch_0x80187534:
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x18(r29)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r30, r0
    bne+    branch_0x80187514
    lwz     r3, 0x0(r29)
    lwz     r4, 0x20(r29)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl update__18TPatternAnmControlFv
update__18TPatternAnmControlFv: # 0x8018758c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f1, 0x24(r3)
    addi    r3, r31, 0x4
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x801875d4
    lbz     r0, 0x9(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801875c8
    li      r0, 0x1
    b       branch_0x801875cc

branch_0x801875c8:
    li      r0, 0x0
branch_0x801875cc:
    cmpwi   r0, 0x0
    beq-    branch_0x80187680
branch_0x801875d4:
    lwz     r3, 0x0(r31)
    lwz     r4, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r5, 0x0
    stb     r5, 0xc(r3)
    lwz     r3, 0x20(r31)
    addi    r4, r3, 0x8
    stw     r4, 0x20(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x18(r31)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r4, r0
    beq-    branch_0x80187634
    lbz     r0, 0x9(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8018762c
    li      r5, 0x1
branch_0x8018762c:
    cmpwi   r5, 0x0
    beq-    branch_0x80187644
branch_0x80187634:
    lwz     r0, 0x18(r31)
    stw     r0, 0x20(r31)
    lfs     f0, -0x44c8(rtoc)
    stfs    f0, 0x24(r31)
branch_0x80187644:
    lwz     r3, 0x0(r31)
    lwz     r4, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x20(r31)
    lfs     f2, -0x4488(rtoc)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x24(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x24(r31)
branch_0x80187680:
    addi    r3, r31, 0x4
    bl      update__12J3DFrameCtrlFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setupAnm__18TPatternAnmControlFv
setupAnm__18TPatternAnmControlFv: # 0x8018769c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    lwz     r0, 0x18(r3)
    stw     r0, 0x20(r3)
    lfs     f2, -0x44c8(rtoc)
    lwz     r0, 0x1c(r3)
    lwz     r3, 0x18(r3)
    fmr     f1, f2
    slwi    r0, r0, 3
    add     r0, r3, r0
    b       branch_0x801876f8

branch_0x801876dc:
    lfs     f0, 0x4(r3)
    fmr     f3, f2
    addi    r3, r3, 0x8
    fadds   f1, f1, f0
    fadds   f2, f2, f1
    fsubs   f0, f2, f3
    fsubs   f1, f1, f0
branch_0x801876f8:
    cmplw   r3, r0
    bne+    branch_0x801876dc
    lfs     f1, -0x4488(rtoc)
    addi    r3, r29, 0x4
    lfs     f0, -0x44c4(rtoc)
    fmadds  f0, f1, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r4, 0x24(sp)
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x2
    stb     r0, 0x8(r29)
    li      r31, 0x0
    lfs     f0, -0x44c4(rtoc)
    stfs    f0, 0x10(r29)
    lwz     r30, 0x18(r29)
    b       branch_0x8018775c

branch_0x8018773c:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stb     r31, 0xc(r3)
    addi    r30, r30, 0x8
branch_0x8018775c:
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x18(r29)
    slwi    r0, r0, 3
    add     r0, r3, r0
    cmplw   r30, r0
    bne+    branch_0x8018773c
    lwz     r3, 0x0(r29)
    lwz     r4, 0x20(r29)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x20(r29)
    lfs     f1, -0x4488(rtoc)
    lfs     f0, 0x4(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r29)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __sinit_Option_cpp
__sinit_Option_cpp: # 0x801877c8
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x7740
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80187810
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80187810:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80187840
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80187840:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80187870
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80187870:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801878a0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801878a0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801878d0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801878d0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80187900
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80187900:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80187930
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80187930:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80187960
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80187960:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80187990
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80187990:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801879c0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801879c0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801879f0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801879f0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80187a20
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80187a20:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80187a50
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80187a50:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80187a80
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80187a80:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80187ab0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80187ab0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

