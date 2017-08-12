
.globl __dt__12TMapObjSteamFv
__dt__12TMapObjSteamFv: # 0x801f7298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f7318
    lis     r3, __vvt__12TMapObjSteam@h
    addi    r3, r3, __vvt__12TMapObjSteam@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f7308
    lis     r3, __vvt__12THideObjBase@h
    addi    r3, r3, __vvt__12THideObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f7308
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f7308:
    extsh.  r0, r31
    ble-    branch_0x801f7318
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f7318:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__12TMapObjSteamFR20JSUMemoryInputStream
load__12TMapObjSteamFR20JSUMemoryInputStream: # 0x801f7334
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      load__12THideObjBaseFR20JSUMemoryInputStream
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r31, r3, 0x15c
    lbz     r0, 0x15c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f737c
    lis     r4, unk_80393e50@h
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r4, unk_80393e50@l
    li      r5, 0x15c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801f737c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__12TMapObjSteamFv
control__12TMapObjSteamFv: # 0x801f7390
    mflr    r0
    addi    r6, r3, 0x10
    stw     r0, 0x4(sp)
    li      r4, 0x15c
    li      r5, 0x1
    stwu    sp, -0x8(sp)
    bl      emitAndRotateScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__10TJointCoinFPCc
__ct__10TJointCoinFPCc: # 0x801f73bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__10TJointCoin@h
    addi    r3, r3, __vvt__10TJointCoin@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    stw     r0, 0x140(r31)
    stw     r0, 0x144(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__10TJointCoinFv
initMapObj__10TJointCoinFv: # 0x801f7414
    mflr    r0
    lis     r4, unk_80393d70@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r4, unk_80393d70@l
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x64(sp)
    bl      initMapObj__11TMapObjBaseFv
    li      r29, 0x0
    b       branch_0x801f748c

branch_0x801f7444:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    mr      r4, r29
    lwz     r3, 0xb0(r3)
    bl      getName__10JUTNameTabCFUs
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f7488
    lwz     r3, 0x13c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x13c(r30)
branch_0x801f7488:
    addi    r29, r29, 0x1
branch_0x801f748c:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 16
    lhz     r0, 0x1c(r3)
    cmplw   r4, r0
    blt+    branch_0x801f7444
    lwz     r0, 0x13c(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x140(r30)
    lwz     r0, 0x13c(r30)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x144(r30)
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x232
    bne-    branch_0x801f74e0
    li      r0, 0x1
    b       branch_0x801f74e4

branch_0x801f74e0:
    li      r0, 0x0
branch_0x801f74e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f751c
    lwz     r3, 0x70(r30)
    bl      getMActorAnmData__11TObjManagerFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x104
    li      r5, 0x3
    lis     r6, 0x1021
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x138(r30)
    addi    r4, r31, 0x124
    lwz     r3, 0x138(r30)
    bl      setBck__6MActorFPCc
    b       branch_0x801f7568

branch_0x801f751c:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xc9
    bne-    branch_0x801f7530
    li      r0, 0x1
    b       branch_0x801f7534

branch_0x801f7530:
    li      r0, 0x0
branch_0x801f7534:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f7568
    lwz     r3, 0x70(r30)
    bl      getMActorAnmData__11TObjManagerFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x134
    li      r5, 0x3
    lis     r6, 0x1021
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x138(r30)
    addi    r4, r31, 0x154
    lwz     r3, 0x138(r30)
    bl      setBck__6MActorFPCc
branch_0x801f7568:
    lfs     f0, 0x38(r30)
    lfs     f2, -0x2004(r2)
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r30)
    fmuls   f1, f2, f1
    lwz     r3, 0x138(r30)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lwz     r3, 0x4(r3)
    fctiwz  f5, f2
    lfs     f3, 0x18(r30)
    fctiwz  f0, f0
    stfd    f5, 0x58(sp)
    addi    r3, r3, 0x20
    lfs     f2, 0x14(r30)
    stfd    f4, 0x50(sp)
    lfs     f1, 0x10(r30)
    stfd    f0, 0x48(sp)
    lwz     r4, 0x5c(sp)
    lwz     r5, 0x54(sp)
    lwz     r6, 0x4c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl nameIsObj__10TJointCoinFPCc
nameIsObj__10TJointCoinFPCc: # 0x801f75e0
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    addi    r4, r2, R2Off_m0x2000
    stwu    sp, -0x8(sp)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801f7608
    li      r3, 0x1
    b       branch_0x801f760c

branch_0x801f7608:
    li      r3, 0x0
branch_0x801f760c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__10TJointCoinFv
loadAfter__10TJointCoinFv: # 0x801f761c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      loadAfter__11TMapObjBaseFv
    li      r0, 0x0
    stw     r0, 0x13c(r30)
    li      r31, 0x0
    b       branch_0x801f7688

branch_0x801f764c:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    mr      r4, r31
    lwz     r3, 0xb0(r3)
    bl      getName__10JUTNameTabCFUs
    lwz     r12, 0x0(r30)
    addi    r0, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x168(r12)
    mr      r4, r0
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
branch_0x801f7688:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r31, 16
    lhz     r3, 0x1c(r3)
    addi    r0, r3, -0x1
    cmpw    r4, r0
    blt+    branch_0x801f764c
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x1ff8(r2)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x1ff8(r2)
    li      r4, 0x0
    lwz     r3, 0x138(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl makeObjFromJointName__10TJointCoinFPCcUs
makeObjFromJointName__10TJointCoinFPCcUs: # 0x801f76fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    lis     r4, unk_80393d70@h
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r31, r4, unk_80393d70@l
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x1ff4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801f7760
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r5, r30, 0x0
    addi    r4, r31, 0x164
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    b       branch_0x801f7800

branch_0x801f7760:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x170
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801f7794
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r5, r30, 0x0
    addi    r4, r31, 0x17c
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    b       branch_0x801f7800

branch_0x801f7794:
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x2000
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801f77c8
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r5, r30, 0x0
    addi    r4, r2, R2Off_m0x2000
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    b       branch_0x801f7800

branch_0x801f77c8:
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x1fec
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801f77fc
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r5, r30, 0x0
    addi    r4, r2, R2Off_m0x1fe4
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    b       branch_0x801f7800

branch_0x801f77fc:
    li      r3, 0x0
branch_0x801f7800:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl makeObj__10TJointCoinFPCcUs
makeObj__10TJointCoinFPCcUs: # 0x801f7820
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    addi    r4, r2, R2Off_m0x2000
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801f7868
    lwz     r3, R13Off_m0x62b0(r13)
    bl      newAndRegisterCoinReal__12TItemManagerFv
    mr      r31, r3
    b       branch_0x801f78ac

branch_0x801f7868:
    lfs     f0, -0x2008(r2)
    addi    r6, sp, 0x24
    lfs     f1, -0x1fdc(r2)
    addi    r5, sp, 0x30
    stfs    f0, 0x30(sp)
    addi    r4, sp, 0x3c
    stfs    f1, 0x24(sp)
    mr      r3, r31
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x28(sp)
    stfs    f0, 0x34(sp)
    stfs    f0, 0x40(sp)
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x44(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    mr      r31, r3
branch_0x801f78ac:
    lwz     r0, 0x13c(r29)
    lwz     r3, 0x140(r29)
    slwi    r0, r0, 2
    stwx    r31, r3, r0
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801f78d4
    li      r0, 0x1
    b       branch_0x801f78d8

branch_0x801f78d4:
    li      r0, 0x0
branch_0x801f78d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f78f8
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r31)
    lwz     r0, 0xf8(r31)
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r31)
branch_0x801f78f8:
    lwz     r0, 0x13c(r29)
    lwz     r3, 0x140(r29)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x13c(r29)
    mr      r3, r31
    lwz     r4, 0x140(r29)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    lwz     r0, 0xf8(r4)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r4)
    lwz     r0, 0x13c(r29)
    lwz     r4, 0x140(r29)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    lwz     r0, 0xf8(r4)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r4)
    lwz     r0, 0x13c(r29)
    lwz     r4, 0x140(r29)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    lwz     r0, 0xf0(r4)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r4)
    lwz     r0, 0x13c(r29)
    lwz     r4, 0x140(r29)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    lwz     r0, 0x13c(r29)
    lwz     r4, 0x144(r29)
    slwi    r0, r0, 1
    sthx    r30, r4, r0
    lwz     r4, 0x13c(r29)
    addi    r0, r4, 0x1
    stw     r0, 0x13c(r29)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl control__10TJointCoinFv
control__10TJointCoinFv: # 0x801f79c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    mr      r31, r3
    lwz     r3, 0x138(r3)
    bl      frameUpdate__6MActorFv
    lwz     r3, 0x138(r31)
    bl      calc__6MActorFv
    lwz     r4, 0x138(r31)
    mr      r3, r31
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    lfs     f2, 0x2c(r4)
    mr      r28, r4
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x74(r31)
    bl      frameUpdate__6MActorFv
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    li      r27, 0x0
    li      r30, 0x0
    li      r29, 0x0
    b       branch_0x801f7ab8

branch_0x801f7a48:
    lwz     r5, 0x140(r31)
    mr      r3, r31
    lwz     r4, 0x144(r31)
    lwzx    r26, r5, r29
    lhzx    r28, r4, r30
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0x74(r26)
    mulli   r4, r28, 0x30
    lwz     r3, 0x58(r3)
    cmplwi  r0, 0x0
    add     r28, r3, r4
    beq-    branch_0x801f7a8c
    mr      r3, r26
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mr      r3, r28
    bl      PSMTXCopy
branch_0x801f7a8c:
    lfs     f2, 0x1c(r28)
    addi    r27, r27, 0x1
    lfs     f1, 0x108(r26)
    addi    r30, r30, 0x2
    lfs     f3, 0x2c(r28)
    lfs     f0, 0xc(r28)
    fadds   f1, f2, f1
    addi    r29, r29, 0x4
    stfs    f0, 0x10(r26)
    stfs    f1, 0x14(r26)
    stfs    f3, 0x18(r26)
branch_0x801f7ab8:
    lwz     r0, 0x13c(r31)
    cmpw    r27, r0
    blt+    branch_0x801f7a48
    mr      r3, r31
    bl      control__11TMapObjBaseFv
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__11TMapObjNailFPCc
__ct__11TMapObjNailFPCc: # 0x801f7ae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12THideObjBaseFPCc
    lis     r3, __vvt__11TMapObjNail@h
    addi    r3, r3, __vvt__11TMapObjNail@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x150(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__11TMapObjNailFP9THitActorUl
receiveMessage__11TMapObjNailFP9THitActorUl: # 0x801f7b2c
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801f7c58
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801f7b5c
    li      r0, 0x1
    b       branch_0x801f7b60

branch_0x801f7b5c:
    li      r0, 0x0
branch_0x801f7b60:
    clrlwi. r0, r0, 24
    bne-    branch_0x801f7c58
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x3
    bge-    branch_0x801f7c58
    lfs     f1, 0x14(r31)
    mr      r3, r31
    lfs     f0, -0x77d0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    bl      removeMapCollision__11TMapObjBaseFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3850
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f7bd0
    addi    r4, r31, 0x10
    li      r3, 0x3850
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801f7bd0:
    li      r0, 0x78
    stw     r0, 0x104(r31)
    lwz     r3, 0x150(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x150(r31)
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x801f7c50
    lwz     r4, 0x138(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801f7c50
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801f7c14
    li      r0, 0x1
    b       branch_0x801f7c18

branch_0x801f7c14:
    li      r0, 0x0
branch_0x801f7c18:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f7c34
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r4, unk_2000000e@l
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r4, r3
branch_0x801f7c34:
    cmplwi  r4, 0x0
    beq-    branch_0x801f7c50
    lfs     f1, -0x1fd8(r2)
    mr      r3, r31
    lfs     f2, 0x13c(r31)
    lfs     f3, 0x140(r31)
    bl      throwObjToFront__11TMapObjBaseCFP11TMapObjBasefff
branch_0x801f7c50:
    li      r3, 0x1
    b       branch_0x801f7c5c

branch_0x801f7c58:
    li      r3, 0x0
branch_0x801f7c5c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__11TMapObjNailFv
__dt__11TMapObjNailFv: # 0x801f7c70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f7cf0
    lis     r3, __vvt__11TMapObjNail@h
    addi    r3, r3, __vvt__11TMapObjNail@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f7ce0
    lis     r3, __vvt__12THideObjBase@h
    addi    r3, r3, __vvt__12THideObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f7ce0
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f7ce0:
    extsh.  r0, r31
    ble-    branch_0x801f7cf0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f7cf0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjEx_cpp
__sinit_MapObjEx_cpp: # 0x801f7d0c
    mflr    r0
    lis     r3, unk_803fa870@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fa870@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7d54
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801f7d54:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7d84
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801f7d84:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7db4
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801f7db4:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7de4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801f7de4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7e14
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801f7e14:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7e44
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801f7e44:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7e74
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801f7e74:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7ea4
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801f7ea4:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7ed4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801f7ed4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7f04
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801f7f04:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7f34
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801f7f34:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7f64
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801f7f64:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7f94
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801f7f94:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7fc4
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801f7fc4:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7ff4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801f7ff4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801f8008
unk_801f8008: # 0x801f8008
    addi    r3, r3, -0x20
    b       __dt__11TMapObjNailFv


.globl unk_801f8010
unk_801f8010: # 0x801f8010
    addi    r3, r3, -0x20
    b       __dt__10TJointCoinFv


.globl unk_801f8018
unk_801f8018: # 0x801f8018
    addi    r3, r3, -0x20
    b       __dt__12TMapObjSteamFv

