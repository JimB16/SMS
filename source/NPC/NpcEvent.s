
.globl reviveOneSunflower__9TNpcEventFv
reviveOneSunflower__9TNpcEventFv: # 0x8020e784
    mflr    r0
    lis     r3, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x5a20
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lwz     r4, -0x6170(r13)
    cmpwi   r4, 0x0
    ble-    branch_0x8020e8bc
    lbz     r0, -0x6168(r13)
    extsb.  r0, r0
    bne-    branch_0x8020e7cc
    addi    r3, r31, 0x130
    li      r0, 0x1
    stw     r3, -0x616c(r13)
    stb     r0, -0x6168(r13)
branch_0x8020e7cc:
    subfic  r29, r4, 0x5
    lwz     r6, -0x616c(r13)
    addi    r7, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x38
    li      r4, 0x40
    subi    r5, rtoc, 0x1be8
    bl      snprintf
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x38
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x38
    mtlr    r12
    blrl
    lwz     r4, -0x6170(r13)
    mr      r9, r3
    li      r0, 0x0
    lwz     r6, -0x6048(r13)
    subi    r4, r4, 0x1
    stw     r4, -0x6170(r13)
    lis     r3, 0x8021
    lis     r4, 0x803e
    sth     r0, 0x30(sp)
    addi    r5, sp, 0x30
    subi    r8, r3, 0x1728
    stw     r5, 0x8(sp)
    addi    r30, r9, 0x1b8
    slwi    r3, r29, 2
    subi    r0, r4, 0x6b98
    lfs     f1, -0x1be0(rtoc)
    add     r3, r0, r3
    lwz     r4, 0x0(r3)
    addi    r3, r6, 0x0
    addi    r5, r30, 0x0
    li      r6, -0x1
    li      r7, 0x1
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r0, -0x6170(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8020e8bc
    lfs     f1, -0x1bdc(rtoc)
    addi    r4, r31, 0x13c
    lfs     f0, 0x4(r30)
    addi    r5, r31, 0x150
    lwz     r3, -0x62b0(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r30)
    lfs     f3, 0x8(r30)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    lis     r4, 0x5
    lwz     r3, -0x6060(r13)
    addi    r5, r4, 0x3
    li      r4, 0x0
    bl      setBool__12TFlagManagerFbUl
branch_0x8020e8bc:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl ReviveSunflowerCallBack__FUlUl
ReviveSunflowerCallBack__FUlUl: # 0x8020e8d8
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    bne-    branch_0x8020e944
    mr      r31, r3
    bl      sunflowerReviveIn__8TBaseNPCFv
    lwz     r0, -0x6170(r13)
    lis     r3, 0x1
    subi    r30, r3, 0x77f8
    cmpwi   r0, 0x0
    bne-    branch_0x8020e914
    li      r30, 0x4847
branch_0x8020e914:
    lwz     r3, -0x6044(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8020e944
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8020e944:
    lwz     r0, 0x2c(sp)
    li      r3, 0x1
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl initDownSunflowerNum__9TNpcEventFv
initDownSunflowerNum__9TNpcEventFv: # 0x8020e960
    mflr    r0
    lis     r4, 0x5
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3
    stwu    sp, -0x8(sp)
    lwz     r3, -0x6060(r13)
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8020e990
    li      r0, 0x5
    stw     r0, -0x6170(r13)
    b       branch_0x8020e998

branch_0x8020e990:
    li      r0, 0x0
    stw     r0, -0x6170(r13)
branch_0x8020e998:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initNpcBuiltin__9TNpcEventFP32TSpcTypedBinary_13TEventWatcher_
initNpcBuiltin__9TNpcEventFP32TSpcTypedBinary_13TEventWatcher_: # 0x8020e9a8
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    lis     r4, 0x8021
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r5, 0x5a20
    addi    r5, r4, 0x8ec
    addi    r4, r30, 0x168
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    addi    r5, r3, 0x71c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x184
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    addi    r5, r3, 0x548
    addi    r3, r31, 0x0
    addi    r4, r30, 0x198
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    addi    r5, r3, 0x3d8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1b0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    addi    r5, r3, 0x330
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1c0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    addi    r5, r3, 0x11c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1d4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0xc8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1e8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x288
    addi    r3, r31, 0x0
    addi    r4, r30, 0x204
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x380
    addi    r3, r31, 0x0
    addi    r4, r30, 0x214
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x624
    addi    r3, r31, 0x0
    addi    r4, r30, 0x228
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x810
    addi    r3, r31, 0x0
    addi    r4, r30, 0x240
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x94c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x258
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0xa98
    addi    r3, r31, 0x0
    addi    r4, r30, 0x264
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0xbd4
    addi    r3, r31, 0x0
    addi    r4, r30, 0x278
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0xe08
    addi    r3, r31, 0x0
    addi    r4, r30, 0x288
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x10e8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x294
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x1238
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2a4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x12f8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2b8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, 0x8021
    subi    r5, r3, 0x14a8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2c4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl evCheckMonteClear__FP32TSpcTypedInterp_13TEventWatcher_Ul
evCheckMonteClear__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020eb58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x88(sp)
    mr      r30, r3
    stw     r29, 0x84(sp)
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020ebc8
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
    b       branch_0x8020ebf0

branch_0x8020ebc8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
branch_0x8020ebf0:
    lwz     r0, 0x4c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020ec14
    bge-    branch_0x8020ec28
    cmpwi   r0, 0x0
    bge-    branch_0x8020ec0c
    b       branch_0x8020ec28

branch_0x8020ec0c:
    lwz     r0, 0x50(sp)
    b       branch_0x8020ec2c

branch_0x8020ec14:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    b       branch_0x8020ec2c

branch_0x8020ec28:
    li      r0, 0x0
branch_0x8020ec2c:
    mr      r6, r0
    crxor   6, 6, 6
    addi    r3, sp, 0x54
    addi    r5, r31, 0x2f4
    li      r4, 0x20
    bl      snprintf
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x54
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x54
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 9, 9
    bne-    branch_0x8020ec94
    lfs     f1, -0x1be0(rtoc)
    lfs     f0, 0x178(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8020ec94
    li      r3, 0x1
    b       branch_0x8020ec98

branch_0x8020ec94:
    li      r3, 0x0
branch_0x8020ec98:
    li      r0, 0x0
    stw     r0, 0x40(sp)
    stw     r3, 0x44(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8020ecc4
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020ecec

branch_0x8020ecc4:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8020ecec:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl evIsDemoMode__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsDemoMode__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020ed08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, -0x6048(r13)
    li      r5, 0x0
    li      r3, 0x1
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x3
    beq-    branch_0x8020ed50
    cmplwi  r0, 0x4
    beq-    branch_0x8020ed50
    li      r3, 0x0
branch_0x8020ed50:
    clrlwi. r0, r3, 24
    beq-    branch_0x8020ed5c
    li      r5, 0x1
branch_0x8020ed5c:
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r5, 0x18(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8020ed8c
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x8020edb4

branch_0x8020ed8c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8020edb4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl evFireStartDemoCamera__FP32TSpcTypedInterp_13TEventWatcher_Ul
evFireStartDemoCamera__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020edc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    addi    r5, sp, 0x14
    stw     r30, 0x48(sp)
    stw     r4, 0x14(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020ee30
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x40(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x44(sp)
    b       branch_0x8020ee58

branch_0x8020ee30:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x40(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x44(sp)
branch_0x8020ee58:
    lwz     r0, 0x40(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8020ee68
    b       branch_0x8020ee70

branch_0x8020ee68:
    lwz     r0, 0x44(sp)
    b       branch_0x8020ee74

branch_0x8020ee70:
    subi    r0, rtoc, 0x1bd8
branch_0x8020ee74:
    li      r30, 0x0
    lwz     r3, -0x6048(r13)
    sth     r30, 0x3c(sp)
    addi    r5, sp, 0x3c
    mr      r4, r0
    stw     r5, 0x8(sp)
    li      r5, 0x0
    li      r6, -0x1
    lfs     f1, -0x1be0(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    stw     r30, 0x30(sp)
    stw     r30, 0x34(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8020eed8
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x8020ef00

branch_0x8020eed8:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8020ef00:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl evSetFruitType__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetFruitType__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020ef18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r27, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x3
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020ef80
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
    b       branch_0x8020efa8

branch_0x8020ef80:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
branch_0x8020efa8:
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020efcc
    bge-    branch_0x8020efe0
    cmpwi   r0, 0x0
    bge-    branch_0x8020efc4
    b       branch_0x8020efe0

branch_0x8020efc4:
    lwz     r30, 0x74(sp)
    b       branch_0x8020efe4

branch_0x8020efcc:
    lfs     f0, 0x74(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r30, 0x7c(sp)
    b       branch_0x8020efe4

branch_0x8020efe0:
    li      r30, 0x0
branch_0x8020efe4:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f020
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x8020f048

branch_0x8020f020:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x8020f048:
    lwz     r0, 0x68(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f06c
    bge-    branch_0x8020f080
    cmpwi   r0, 0x0
    bge-    branch_0x8020f064
    b       branch_0x8020f080

branch_0x8020f064:
    lwz     r29, 0x6c(sp)
    b       branch_0x8020f084

branch_0x8020f06c:
    lfs     f0, 0x6c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r29, 0x7c(sp)
    b       branch_0x8020f084

branch_0x8020f080:
    li      r29, 0x0
branch_0x8020f084:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f0c0
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x8020f0e8

branch_0x8020f0c0:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x8020f0e8:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f10c
    bge-    branch_0x8020f120
    cmpwi   r0, 0x0
    bge-    branch_0x8020f104
    b       branch_0x8020f120

branch_0x8020f104:
    lwz     r4, 0x64(sp)
    b       branch_0x8020f124

branch_0x8020f10c:
    lfs     f0, 0x64(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r4, 0x7c(sp)
    b       branch_0x8020f124

branch_0x8020f120:
    li      r4, 0x0
branch_0x8020f124:
    cmpwi   r30, 0x0
    beq-    branch_0x8020f188
    cmpwi   r29, 0x2
    beq-    branch_0x8020f16c
    bge-    branch_0x8020f148
    cmpwi   r29, 0x0
    beq-    branch_0x8020f154
    bge-    branch_0x8020f160
    b       branch_0x8020f180

branch_0x8020f148:
    cmpwi   r29, 0x4
    bge-    branch_0x8020f180
    b       branch_0x8020f178

branch_0x8020f154:
    lis     r3, 0x4000
    addi    r28, r3, 0x394
    b       branch_0x8020f180

branch_0x8020f160:
    lis     r3, 0x4000
    addi    r28, r3, 0x390
    b       branch_0x8020f180

branch_0x8020f16c:
    lis     r3, 0x4000
    addi    r28, r3, 0x392
    b       branch_0x8020f180

branch_0x8020f178:
    lis     r3, 0x4000
    addi    r28, r3, 0x393
branch_0x8020f180:
    stw     r28, 0x150(r4)
    b       branch_0x8020f190

branch_0x8020f188:
    li      r0, 0x0
    stw     r0, 0x150(r4)
branch_0x8020f190:
    li      r0, 0x0
    stw     r0, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x18(r27)
    cmpw    r3, r0
    blt-    branch_0x8020f1bc
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020f1e4

branch_0x8020f1bc:
    lwz     r5, 0x20(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
branch_0x8020f1e4:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl evGetFruitNum__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetFruitNum__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020f1f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f268
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x54(sp)
    b       branch_0x8020f290

branch_0x8020f268:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x54(sp)
branch_0x8020f290:
    lwz     r0, 0x50(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f2b4
    bge-    branch_0x8020f2c8
    cmpwi   r0, 0x0
    bge-    branch_0x8020f2ac
    b       branch_0x8020f2c8

branch_0x8020f2ac:
    lwz     r30, 0x54(sp)
    b       branch_0x8020f2cc

branch_0x8020f2b4:
    lfs     f0, 0x54(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r30, 0x5c(sp)
    b       branch_0x8020f2cc

branch_0x8020f2c8:
    li      r30, 0x0
branch_0x8020f2cc:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f308
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x8020f330

branch_0x8020f308:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x8020f330:
    lwz     r0, 0x48(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f354
    bge-    branch_0x8020f368
    cmpwi   r0, 0x0
    bge-    branch_0x8020f34c
    b       branch_0x8020f368

branch_0x8020f34c:
    lwz     r0, 0x4c(sp)
    b       branch_0x8020f36c

branch_0x8020f354:
    lfs     f0, 0x4c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    b       branch_0x8020f36c

branch_0x8020f368:
    li      r0, 0x0
branch_0x8020f36c:
    cmpwi   r30, 0x2
    mr      r3, r0
    li      r4, 0x0
    beq-    branch_0x8020f3ac
    bge-    branch_0x8020f390
    cmpwi   r30, 0x0
    beq-    branch_0x8020f39c
    bge-    branch_0x8020f3a4
    b       branch_0x8020f3b8

branch_0x8020f390:
    cmpwi   r30, 0x4
    bge-    branch_0x8020f3b8
    b       branch_0x8020f3b4

branch_0x8020f39c:
    li      r4, 0x0
    b       branch_0x8020f3b8

branch_0x8020f3a4:
    li      r4, 0x4
    b       branch_0x8020f3b8

branch_0x8020f3ac:
    li      r4, 0x3
    b       branch_0x8020f3b8

branch_0x8020f3b4:
    li      r4, 0x1
branch_0x8020f3b8:
    bl      getFruitNum__17TFruitBasketEventCFi
    li      r0, 0x0
    stw     r0, 0x38(sp)
    stw     r3, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8020f3e8
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020f410

branch_0x8020f3e8:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8020f410:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl evResetFruitNum__FP32TSpcTypedInterp_13TEventWatcher_Ul
evResetFruitNum__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020f42c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f490
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
    b       branch_0x8020f4b8

branch_0x8020f490:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
branch_0x8020f4b8:
    lwz     r0, 0x30(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f4dc
    bge-    branch_0x8020f4f0
    cmpwi   r0, 0x0
    bge-    branch_0x8020f4d4
    b       branch_0x8020f4f0

branch_0x8020f4d4:
    lwz     r0, 0x34(sp)
    b       branch_0x8020f4f4

branch_0x8020f4dc:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    b       branch_0x8020f4f4

branch_0x8020f4f0:
    li      r0, 0x0
branch_0x8020f4f4:
    mr      r3, r0
    bl      reset__17TFruitBasketEventFv
    li      r0, 0x0
    stw     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8020f52c
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x8020f554

branch_0x8020f52c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8020f554:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl evNpcDanceOffHappyOn__FP32TSpcTypedInterp_13TEventWatcher_Ul
evNpcDanceOffHappyOn__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020f568
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f5cc
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
    b       branch_0x8020f5f4

branch_0x8020f5cc:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
branch_0x8020f5f4:
    lwz     r0, 0x30(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f618
    bge-    branch_0x8020f62c
    cmpwi   r0, 0x0
    bge-    branch_0x8020f610
    b       branch_0x8020f62c

branch_0x8020f610:
    lwz     r0, 0x34(sp)
    b       branch_0x8020f630

branch_0x8020f618:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    b       branch_0x8020f630

branch_0x8020f62c:
    li      r0, 0x0
branch_0x8020f630:
    mr      r3, r0
    lwz     r0, 0x170(r3)
    li      r4, 0x2
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x170(r3)
    bl      npcHappyIn__8TBaseNPCFUc
    li      r0, 0x0
    stw     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8020f678
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x8020f6a0

branch_0x8020f678:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8020f6a0:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl evNpcDanceOn__FP32TSpcTypedInterp_13TEventWatcher_Ul
evNpcDanceOn__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020f6b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f718
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
    b       branch_0x8020f740

branch_0x8020f718:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
branch_0x8020f740:
    lwz     r0, 0x30(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f764
    bge-    branch_0x8020f778
    cmpwi   r0, 0x0
    bge-    branch_0x8020f75c
    b       branch_0x8020f778

branch_0x8020f75c:
    lwz     r0, 0x34(sp)
    b       branch_0x8020f77c

branch_0x8020f764:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    b       branch_0x8020f77c

branch_0x8020f778:
    li      r0, 0x0
branch_0x8020f77c:
    mr      r3, r0
    bl      npcDanceIn__8TBaseNPCFv
    li      r0, 0x0
    stw     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8020f7b4
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x8020f7dc

branch_0x8020f7b4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8020f7dc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl evSetNpcTalkForbidCount__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetNpcTalkForbidCount__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020f7f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f860
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x54(sp)
    b       branch_0x8020f888

branch_0x8020f860:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x54(sp)
branch_0x8020f888:
    lwz     r0, 0x50(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f8ac
    bge-    branch_0x8020f8c0
    cmpwi   r0, 0x0
    bge-    branch_0x8020f8a4
    b       branch_0x8020f8c0

branch_0x8020f8a4:
    lwz     r0, 0x54(sp)
    b       branch_0x8020f8c4

branch_0x8020f8ac:
    lfs     f0, 0x54(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    b       branch_0x8020f8c4

branch_0x8020f8c0:
    li      r0, 0x0
branch_0x8020f8c4:
    lwz     r3, 0x1c(r29)
    clrlwi  r30, r0, 16
    cmpwi   r3, 0x0
    bgt-    branch_0x8020f904
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x8020f92c

branch_0x8020f904:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x8020f92c:
    lwz     r0, 0x48(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020f950
    bge-    branch_0x8020f964
    cmpwi   r0, 0x0
    bge-    branch_0x8020f948
    b       branch_0x8020f964

branch_0x8020f948:
    lwz     r3, 0x4c(sp)
    b       branch_0x8020f968

branch_0x8020f950:
    lfs     f0, 0x4c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r3, 0x64(sp)
    b       branch_0x8020f968

branch_0x8020f964:
    li      r3, 0x0
branch_0x8020f968:
    sth     r30, 0x1e0(r3)
    li      r0, 0x0
    stw     r0, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8020f998
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020f9c0

branch_0x8020f998:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8020f9c0:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl evSetNpcBalloonMessage__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetNpcBalloonMessage__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020f9dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    stw     r28, 0x80(sp)
    mr      r28, r3
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x3
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020fa50
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
    b       branch_0x8020fa78

branch_0x8020fa50:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
branch_0x8020fa78:
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020fa9c
    bge-    branch_0x8020fab0
    cmpwi   r0, 0x0
    bge-    branch_0x8020fa94
    b       branch_0x8020fab0

branch_0x8020fa94:
    lwz     r0, 0x74(sp)
    b       branch_0x8020fab4

branch_0x8020fa9c:
    lfs     f0, 0x74(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    b       branch_0x8020fab4

branch_0x8020fab0:
    li      r0, 0x0
branch_0x8020fab4:
    lwz     r3, 0x1c(r28)
    mr      r30, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8020faf4
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x8020fb1c

branch_0x8020faf4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x8020fb1c:
    lwz     r0, 0x68(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020fb40
    bge-    branch_0x8020fb54
    cmpwi   r0, 0x0
    bge-    branch_0x8020fb38
    b       branch_0x8020fb54

branch_0x8020fb38:
    lwz     r0, 0x6c(sp)
    b       branch_0x8020fb58

branch_0x8020fb40:
    lfs     f0, 0x6c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    b       branch_0x8020fb58

branch_0x8020fb54:
    li      r0, 0x0
branch_0x8020fb58:
    lwz     r3, 0x1c(r28)
    mr      r29, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8020fb98
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x8020fbc0

branch_0x8020fb98:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x8020fbc0:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020fbe4
    bge-    branch_0x8020fbf8
    cmpwi   r0, 0x0
    bge-    branch_0x8020fbdc
    b       branch_0x8020fbf8

branch_0x8020fbdc:
    lwz     r0, 0x64(sp)
    b       branch_0x8020fbfc

branch_0x8020fbe4:
    lfs     f0, 0x64(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    b       branch_0x8020fbfc

branch_0x8020fbf8:
    li      r0, 0x0
branch_0x8020fbfc:
    mr      r3, r0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setBalloonMessage__8TBaseNPCFUll
    li      r0, 0x0
    stw     r0, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x8020fc38
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020fc60

branch_0x8020fc38:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x8020fc60:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl evOnTalkToDummyNpc__FP32TSpcTypedInterp_13TEventWatcher_Ul
evOnTalkToDummyNpc__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020fc80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r30, r4, 0x5a20
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x31c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x31c
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8020fd08
    lwz     r4, 0xf0(r3)
    li      r0, 0x78
    clrrwi  r4, r4, 1
    stw     r4, 0xf0(r3)
    lwz     r4, 0xf0(r3)
    rlwinm  r4, r4, 0, 14, 12
    stw     r4, 0xf0(r3)
    sth     r0, 0x1e0(r3)
branch_0x8020fd08:
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8020fd34
    addi    r3, r30, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020fd5c

branch_0x8020fd34:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8020fd5c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl evConnectDummyNpc__FP32TSpcTypedInterp_13TEventWatcher_Ul
evConnectDummyNpc__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020fd78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    mr      r29, r3
    stw     r28, 0x70(sp)
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x31c
    li      r28, 0x0
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x31c
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    beq-    branch_0x8020fea0
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020fe28
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
    b       branch_0x8020fe50

branch_0x8020fe28:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
branch_0x8020fe50:
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8020fe74
    bge-    branch_0x8020fe88
    cmpwi   r0, 0x0
    bge-    branch_0x8020fe6c
    b       branch_0x8020fe88

branch_0x8020fe6c:
    lwz     r0, 0x60(sp)
    b       branch_0x8020fe8c

branch_0x8020fe74:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    b       branch_0x8020fe8c

branch_0x8020fe88:
    li      r0, 0x0
branch_0x8020fe8c:
    mr      r4, r0
    addi    r3, r30, 0x0
    bl      setDummyConnectActor__8TBaseNPCFPCQ26JDrama6TActor
    li      r28, 0x1
    b       branch_0x8020fec4

branch_0x8020fea0:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8020febc
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020fec4

branch_0x8020febc:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8020fec4:
    li      r0, 0x0
    stw     r0, 0x48(sp)
    stw     r28, 0x4c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8020fef0
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8020ff18

branch_0x8020fef0:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8020ff18:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl ev__ForceStartTalkExceptNpc__FP32TSpcTypedInterp_13TEventWatcher_Ul
ev__ForceStartTalkExceptNpc__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8020ff38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    mr      r29, r3
    stw     r28, 0x80(sp)
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    li      r30, 0x0
    cmpwi   r3, 0x0
    bgt-    branch_0x8020ffa8
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r4, 0x20(r29)
    slwi    r3, r0, 3
    addi    r0, r3, 0x4
    lwzx    r0, r4, r0
    stw     r0, 0x70(sp)
    b       branch_0x8020ffc8

branch_0x8020ffa8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r4, 0x20(r29)
    slwi    r3, r0, 3
    addi    r0, r3, 0x4
    lwzx    r0, r4, r0
    stw     r0, 0x70(sp)
branch_0x8020ffc8:
    lwz     r0, 0x70(sp)
    li      r3, 0x1
    addi    r4, r3, 0x0
    stw     r0, 0x7c(sp)
    lwz     r5, -0x6048(r13)
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x8020fff4
    cmplwi  r0, 0x2
    beq-    branch_0x8020fff4
    li      r4, 0x0
branch_0x8020fff4:
    clrlwi. r0, r4, 24
    bne-    branch_0x80210024
    lbz     r4, 0x124(r5)
    li      r0, 0x1
    cmplwi  r4, 0x3
    beq-    branch_0x80210018
    cmplwi  r4, 0x4
    beq-    branch_0x80210018
    li      r0, 0x0
branch_0x80210018:
    clrlwi. r0, r0, 24
    bne-    branch_0x80210024
    li      r3, 0x0
branch_0x80210024:
    clrlwi. r0, r3, 24
    bne-    branch_0x802100a8
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x802100a8
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80210050
    li      r0, 0x1
    b       branch_0x80210054

branch_0x80210050:
    li      r0, 0x0
branch_0x80210054:
    clrlwi. r0, r0, 24
    bne-    branch_0x802100a8
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x31c
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x31c
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802100a8
    lwz     r4, -0x6048(r13)
    li      r0, 0x1
    li      r30, 0x1
    stw     r3, 0xa0(r4)
    lwz     r3, -0x6048(r13)
    stb     r0, 0x126(r3)
branch_0x802100a8:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r30, 0x54(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x802100d4
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802100fc

branch_0x802100d4:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x802100fc:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl ev__ForceStartTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul
ev__ForceStartTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8021011c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, 0x8039
    addi    r31, r4, 0x5a20
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    li      r30, 0x0
    cmplwi  r0, 0x1
    beq-    branch_0x80210178
    cmplwi  r0, 0x2
    beq-    branch_0x80210178
    li      r4, 0x0
branch_0x80210178:
    clrlwi. r0, r4, 24
    bne-    branch_0x802101a8
    lbz     r4, 0x124(r5)
    li      r0, 0x1
    cmplwi  r4, 0x3
    beq-    branch_0x8021019c
    cmplwi  r4, 0x4
    beq-    branch_0x8021019c
    li      r0, 0x0
branch_0x8021019c:
    clrlwi. r0, r0, 24
    bne-    branch_0x802101a8
    li      r3, 0x0
branch_0x802101a8:
    clrlwi. r0, r3, 24
    bne-    branch_0x8021029c
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8021029c
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x802101d4
    li      r0, 0x1
    b       branch_0x802101d8

branch_0x802101d4:
    li      r0, 0x0
branch_0x802101d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8021029c
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021021c
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
    b       branch_0x80210244

branch_0x8021021c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
branch_0x80210244:
    lwz     r0, 0x6c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80210268
    bge-    branch_0x8021027c
    cmpwi   r0, 0x0
    bge-    branch_0x80210260
    b       branch_0x8021027c

branch_0x80210260:
    lwz     r4, 0x70(sp)
    b       branch_0x80210280

branch_0x80210268:
    lfs     f0, 0x70(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r4, 0x7c(sp)
    b       branch_0x80210280

branch_0x8021027c:
    li      r4, 0x0
branch_0x80210280:
    lwz     r3, -0x6048(r13)
    li      r0, 0x1
    li      r30, 0x1
    stw     r4, 0xa0(r3)
    lwz     r3, -0x6048(r13)
    stb     r0, 0x126(r3)
    b       branch_0x802102c0

branch_0x8021029c:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x802102b8
    addi    r3, r31, 0x2d4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802102c0

branch_0x802102b8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x802102c0:
    li      r0, 0x0
    stw     r0, 0x48(sp)
    stw     r30, 0x4c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x802102ec
    addi    r3, r31, 0x300
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80210314

branch_0x802102ec:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80210314:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl evIsGameModeNormal__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsGameModeNormal__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80210330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, -0x6048(r13)
    li      r4, 0x0
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8021036c
    li      r4, 0x1
branch_0x8021036c:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r4, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021039c
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x802103c4

branch_0x8021039c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x802103c4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl evIsNpcSinkBottom__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsNpcSinkBottom__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802103d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    addi    r5, sp, 0x38
    stw     r4, 0x38(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021043c
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x40(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x44(sp)
    b       branch_0x80210464

branch_0x8021043c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x40(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x44(sp)
branch_0x80210464:
    lwz     r0, 0x40(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80210488
    bge-    branch_0x8021049c
    cmpwi   r0, 0x0
    bge-    branch_0x80210480
    b       branch_0x8021049c

branch_0x80210480:
    lwz     r3, 0x44(sp)
    b       branch_0x802104a0

branch_0x80210488:
    lfs     f0, 0x44(sp)
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r3, 0x4c(sp)
    b       branch_0x802104a0

branch_0x8021049c:
    li      r3, 0x0
branch_0x802104a0:
    lwz     r0, 0xf0(r3)
    li      r5, 0x0
    rlwinm. r0, r0, 0, 8, 8
    beq-    branch_0x802104b4
    li      r5, 0x1
branch_0x802104b4:
    li      r0, 0x0
    stw     r0, 0x28(sp)
    addi    r3, r31, 0x18
    addi    r4, sp, 0x28
    stw     r5, 0x2c(sp)
    bl      push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice
push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice: # 0x802104e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x4(r3)
    lwz     r0, 0x0(r3)
    cmpw    r5, r0
    blt-    branch_0x80210510
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x80210538

branch_0x80210510:
    lwz     r7, 0x8(r3)
    slwi    r6, r5, 3
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    add     r4, r7, r6
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r4, 0x4(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r3)
branch_0x80210538:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl evCheckLatestNerve4Npc__FP32TSpcTypedInterp_13TEventWatcher_Ul
evCheckLatestNerve4Npc__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80210548
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r5, sp, 0x68
    stw     r30, 0x90(sp)
    mr      r30, r3
    stw     r29, 0x8c(sp)
    stw     r28, 0x88(sp)
    stw     r4, 0x68(sp)
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x802105b8
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
    b       branch_0x802105e0

branch_0x802105b8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
branch_0x802105e0:
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80210604
    bge-    branch_0x80210618
    cmpwi   r0, 0x0
    bge-    branch_0x802105fc
    b       branch_0x80210618

branch_0x802105fc:
    lwz     r31, 0x74(sp)
    b       branch_0x8021061c

branch_0x80210604:
    lfs     f0, 0x74(sp)
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r31, 0x84(sp)
    b       branch_0x8021061c

branch_0x80210618:
    li      r31, 0x0
branch_0x8021061c:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021065c
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
    b       branch_0x80210684

branch_0x8021065c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
branch_0x80210684:
    lwz     r0, 0x78(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802106a8
    bge-    branch_0x802106bc
    cmpwi   r0, 0x0
    bge-    branch_0x802106a0
    b       branch_0x802106bc

branch_0x802106a0:
    lwz     r28, 0x7c(sp)
    b       branch_0x802106c0

branch_0x802106a8:
    lfs     f0, 0x7c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r28, 0x84(sp)
    b       branch_0x802106c0

branch_0x802106bc:
    li      r28, 0x0
branch_0x802106c0:
    li      r29, 0x0
    addi    r3, r31, 0x0
    bl      NerveGetByIndex__Fi
    mr      r31, r3
    lwz     r3, 0x8c(r28)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r31
    bne-    branch_0x802106e4
    li      r29, 0x1
branch_0x802106e4:
    li      r0, 0x0
    stw     r0, 0x54(sp)
    addi    r3, r30, 0x18
    addi    r4, sp, 0x54
    stw     r29, 0x58(sp)
    bl      push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    lwz     r28, 0x88(sp)
    addi    sp, sp, 0x98
    blr


.globl evCheckCurNerve4Npc__FP32TSpcTypedInterp_13TEventWatcher_Ul
evCheckCurNerve4Npc__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8021071c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r5, sp, 0x70
    stw     r30, 0x98(sp)
    mr      r30, r3
    stw     r29, 0x94(sp)
    stw     r28, 0x90(sp)
    stw     r4, 0x70(sp)
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021078c
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
    b       branch_0x802107b4

branch_0x8021078c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
branch_0x802107b4:
    lwz     r0, 0x78(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802107d8
    bge-    branch_0x802107ec
    cmpwi   r0, 0x0
    bge-    branch_0x802107d0
    b       branch_0x802107ec

branch_0x802107d0:
    lwz     r31, 0x7c(sp)
    b       branch_0x802107f0

branch_0x802107d8:
    lfs     f0, 0x7c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r31, 0x8c(sp)
    b       branch_0x802107f0

branch_0x802107ec:
    li      r31, 0x0
branch_0x802107f0:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80210830
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x80(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
    b       branch_0x80210858

branch_0x80210830:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x80(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
branch_0x80210858:
    lwz     r0, 0x80(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8021087c
    bge-    branch_0x80210890
    cmpwi   r0, 0x0
    bge-    branch_0x80210874
    b       branch_0x80210890

branch_0x80210874:
    lwz     r28, 0x84(sp)
    b       branch_0x80210894

branch_0x8021087c:
    lfs     f0, 0x84(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r28, 0x8c(sp)
    b       branch_0x80210894

branch_0x80210890:
    li      r28, 0x0
branch_0x80210894:
    li      r29, 0x0
    addi    r3, r31, 0x0
    bl      NerveGetByIndex__Fi
    lwz     r4, 0x8c(r28)
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    bne-    branch_0x802108b4
    li      r29, 0x1
branch_0x802108b4:
    li      r0, 0x0
    stw     r0, 0x58(sp)
    addi    r3, r30, 0x18
    addi    r4, sp, 0x58
    stw     r29, 0x5c(sp)
    bl      push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl evGetAddressFromViewObjName__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetAddressFromViewObjName__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802108ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80210958
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5cf4
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
    b       branch_0x80210980

branch_0x80210958:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
branch_0x80210980:
    lwz     r0, 0x4c(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x80210990
    b       branch_0x80210998

branch_0x80210990:
    lwz     r0, 0x50(sp)
    b       branch_0x8021099c

branch_0x80210998:
    subi    r0, rtoc, 0x1bd8
branch_0x8021099c:
    lwz     r4, -0x5db8(r13)
    mr      r29, r0
    addi    r3, r29, 0x0
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x40(sp)
    stw     r3, 0x44(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802109fc
    lis     r3, 0x8039
    crxor   6, 6, 6
    addi    r3, r3, 0x5d20
    bl      SpcTrace__FPCce
    b       branch_0x80210a24

branch_0x802109fc:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80210a24:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl __sinit_NpcEvent_cpp
__sinit_NpcEvent_cpp: # 0x80210a40
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x50f8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80210a88
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80210a88:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80210ab8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80210ab8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80210ae8
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80210ae8:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80210b18
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80210b18:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80210b48
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80210b48:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80210b78
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80210b78:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80210ba8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80210ba8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80210bd8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80210bd8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80210c08
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80210c08:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80210c38
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80210c38:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80210c68
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80210c68:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80210c98
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80210c98:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80210cc8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80210cc8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80210cf8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80210cf8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80210d28
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80210d28:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

