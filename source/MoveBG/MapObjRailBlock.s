
.globl __dt__10TWoodBlockFv
__dt__10TWoodBlockFv: # 0x801ef7ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ef86c
    lis     r3, 0x803d
    addi    r3, r3, 0x4b98
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ef85c
    lis     r3, 0x803d
    addi    r3, r3, 0x4fdc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ef85c
    lis     r3, 0x803d
    addi    r3, r3, 0x514c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801ef85c:
    extsh.  r0, r31
    ble-    branch_0x801ef86c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ef86c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__10TWoodBlockFR20JSUMemoryInputStream
load__10TWoodBlockFR20JSUMemoryInputStream: # 0x801ef888
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    bl      load__11TRailMapObjFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, r29, 0x154
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x154(r29)
    lfs     f0, -0x21b8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ef90c
    lwz     r3, 0xec(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801ef90c
    lwz     r31, 0x8(r3)
    li      r4, 0x7
    addi    r3, r31, 0x0
    bl      setAllBGType__17TMapCollisionBaseFUs
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      setAllActor__17TMapCollisionBaseFPC10TLiveActor
    lfs     f0, 0x154(r29)
    mr      r3, r31
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r4, 0x4c(sp)
    bl      setAllData__17TMapCollisionBaseFs
branch_0x801ef90c:
    addi    r3, r30, 0x0
    addi    r4, sp, 0x40
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x3c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x40(sp)
    li      r0, 0xff
    addi    r3, r29, 0x0
    clrlwi  r4, r4, 24
    sth     r4, 0x164(r29)
    lwz     r4, 0x3c(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x166(r29)
    lwz     r4, 0x38(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x168(r29)
    sth     r0, 0x16a(r29)
    lwz     r4, 0x164(r29)
    lwz     r0, 0x168(r29)
    stw     r4, 0x15c(r29)
    stw     r0, 0x160(r29)
    bl      getModel__10TLiveActorCFv
    addi    r6, r29, 0x164
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl calcRecycle__10TWoodBlockFv
calcRecycle__10TWoodBlockFv: # 0x801ef9bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lbz     r0, 0x148(r3)
    extsb   r0, r0
    cmpwi   r0, 0x1
    beq-    branch_0x801efa1c
    bge-    branch_0x801ef9f0
    cmpwi   r0, 0x0
    bge-    branch_0x801ef9fc
    b       branch_0x801efc04

branch_0x801ef9f0:
    cmpwi   r0, 0x3
    bge-    branch_0x801efc04
    b       branch_0x801efa6c

branch_0x801ef9fc:
    li      r0, 0x1
    stb     r0, 0x14c(r31)
    li      r3, 0x0
    lwz     r4, 0x15c(r31)
    lwz     r0, 0x160(r31)
    stw     r4, 0x164(r31)
    stw     r0, 0x168(r31)
    b       branch_0x801efc08

branch_0x801efa1c:
    lha     r0, 0x14a(r31)
    cmpwi   r0, 0xb4
    bge-    branch_0x801efa4c
    lha     r4, 0x14a(r31)
    li      r3, 0x1
    addi    r0, r4, 0x1
    sth     r0, 0x14a(r31)
    lwz     r4, 0x15c(r31)
    lwz     r0, 0x160(r31)
    stw     r4, 0x164(r31)
    stw     r0, 0x168(r31)
    b       branch_0x801efc08

branch_0x801efa4c:
    li      r0, 0x0
    stb     r0, 0x148(r31)
    li      r3, 0xb4
    li      r0, 0x1
    sth     r3, 0x14a(r31)
    li      r3, 0x0
    stb     r0, 0x14c(r31)
    b       branch_0x801efc08

branch_0x801efa6c:
    lha     r0, 0x14a(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801efb7c
    lha     r3, 0x14a(r31)
    lis     r5, 0x4330
    li      r0, 0x1
    subi    r3, r3, 0x1
    sth     r3, 0x14a(r31)
    li      r3, 0x1
    lha     r6, 0x14a(r31)
    lha     r4, 0x15c(r31)
    xoris   r6, r6, 0x8000
    lfd     f2, -0x21a8(rtoc)
    stw     r6, 0x8c(sp)
    xoris   r4, r4, 0x8000
    lfs     f0, -0x21b4(rtoc)
    stw     r5, 0x88(sp)
    lfd     f1, 0x88(sp)
    stw     r4, 0x84(sp)
    fsubs   f1, f1, f2
    stw     r5, 0x80(sp)
    fdivs   f1, f1, f0
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r4, 0x7c(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x164(r31)
    lha     r4, 0x15e(r31)
    xoris   r4, r4, 0x8000
    stw     r4, 0x74(sp)
    stw     r5, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r4, 0x6c(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x166(r31)
    lha     r4, 0x160(r31)
    xoris   r4, r4, 0x8000
    stw     r4, 0x64(sp)
    stw     r5, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r4, 0x5c(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x168(r31)
    lha     r4, 0x162(r31)
    xoris   r4, r4, 0x8000
    stw     r4, 0x54(sp)
    stw     r5, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r4, 0x4c(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x16a(r31)
    stb     r0, 0x14c(r31)
    b       branch_0x801efc08

branch_0x801efb7c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x6d
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801efbd8
    lfs     f1, 0x24(r31)
    lfs     f0, 0x28(r31)
    lfs     f2, 0x2c(r31)
    fadds   f1, f1, f0
    lfs     f0, -0x21b0(rtoc)
    fadds   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x21ac(rtoc)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    lfs     f0, -0x21b8(rtoc)
    stfs    f0, 0x17c(r3)
branch_0x801efbd8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x15c(r31)
    li      r3, 0x0
    lwz     r0, 0x160(r31)
    stw     r4, 0x164(r31)
    stw     r0, 0x168(r31)
    b       branch_0x801efc08

branch_0x801efc04:
    li      r3, 0x0
branch_0x801efc08:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl __ct__10TWoodBlockFPCc
__ct__10TWoodBlockFPCc: # 0x801efc1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TRailMapObjFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x4fdc
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    li      r5, 0x0
    addi    r4, r3, 0x4b98
    sth     r5, 0x150(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    sth     r5, 0x152(r31)
    lfs     f0, -0x21b8(rtoc)
    stfs    f0, 0x154(r31)
    stb     r5, 0x158(r31)
    lfs     f0, -0x21ac(rtoc)
    stfs    f0, 0x144(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    sth     r5, 0x164(r31)
    sth     r5, 0x166(r31)
    sth     r5, 0x168(r31)
    sth     r5, 0x16a(r31)
    lwz     r4, 0x164(r31)
    lwz     r0, 0x168(r31)
    stw     r4, 0x15c(r31)
    stw     r0, 0x160(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TNormalLiftFv
__dt__11TNormalLiftFv: # 0x801efcb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801efd34
    lis     r3, 0x803d
    addi    r3, r3, 0x4fdc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801efd24
    lis     r3, 0x803d
    addi    r3, r3, 0x514c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801efd24
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801efd24:
    extsh.  r0, r31
    ble-    branch_0x801efd34
    mr      r3, r30
    bl      __dl__FPv
branch_0x801efd34:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__10TRollBlockFv
control__10TRollBlockFv: # 0x801efd50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lfs     f1, 0x138(r31)
    lfs     f0, 0x13c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x138(r31)
    lfs     f2, 0x138(r31)
    lfs     f0, -0x21a0(rtoc)
    b       branch_0x801efd88

branch_0x801efd84:
    fsubs   f2, f2, f0
branch_0x801efd88:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801efd84
    lfs     f1, -0x21a0(rtoc)
    lfs     f0, -0x21b8(rtoc)
    b       branch_0x801efda4

branch_0x801efda0:
    fadds   f2, f2, f1
branch_0x801efda4:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801efda0
    stfs    f2, 0x138(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__10TRollBlockFv
calcRootMatrix__10TRollBlockFv: # 0x801efdc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    mr      r29, r3
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x120(r29)
    mr      r31, r3
    lfs     f2, -0x219c(rtoc)
    addi    r30, r31, 0x20
    lfs     f1, 0x11c(r29)
    fmuls   f0, f2, f0
    lfs     f3, 0x118(r29)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r29)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x108(r29)
    fctiwz  f5, f2
    lfs     f3, 0x18(r29)
    fctiwz  f0, f0
    stfd    f5, 0x78(sp)
    fsubs   f2, f7, f6
    lfs     f1, 0x10(r29)
    mr      r3, r30
    stfd    f4, 0x70(sp)
    lwz     r4, 0x7c(sp)
    stfd    f0, 0x68(sp)
    lwz     r5, 0x74(sp)
    lwz     r6, 0x6c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x24(r29)
    mr      r3, r30
    lwz     r0, 0x28(r29)
    addi    r5, r30, 0x0
    stw     r4, 0x14(r31)
    addi    r4, sp, 0x2c
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
    lfs     f1, -0x219c(rtoc)
    lfs     f0, 0x138(r29)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    lfs     f1, -0x21b8(rtoc)
    fctiwz  f2, f0
    lfs     f0, -0x21ac(rtoc)
    stfd    f2, 0x60(sp)
    lwz     r7, 0x64(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f2, f3
    stfs    f4, 0x2c(sp)
    stfs    f2, 0x30(sp)
    stfs    f1, 0x34(sp)
    stfs    f1, 0x38(sp)
    stfs    f3, 0x3c(sp)
    stfs    f4, 0x40(sp)
    stfs    f1, 0x44(sp)
    stfs    f1, 0x48(sp)
    stfs    f1, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f0, 0x54(sp)
    stfs    f1, 0x58(sp)
    bl      PSMTXConcat
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl getRootJointMtx__10TRollBlockCFv
getRootJointMtx__10TRollBlockCFv: # 0x801eff00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    lwz     r3, 0x58(r3)
    mtlr    r0
    blr


.globl setGroundCollision__10TRollBlockFv
setGroundCollision__10TRollBlockFv: # 0x801eff24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0xec(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801eff70
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0xec(r31)
    lwz     r4, 0x58(r3)
    lwz     r3, 0x8(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x801eff70
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801eff70:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__10TRollBlockFR20JSUMemoryInputStream
load__10TRollBlockFR20JSUMemoryInputStream: # 0x801eff84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0xf4(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x10(sp)
    lis     r0, 0x4330
    lfd     f1, -0x21a8(rtoc)
    addi    r3, r30, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x1c(sp)
    lfs     f2, -0x2198(rtoc)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x13c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__10TRollBlockFPCc
__ct__10TRollBlockFPCc: # 0x801f002c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x4d08
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lfs     f0, -0x21b8(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__10TRailBlockFv
control__10TRailBlockFv: # 0x801f007c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b0(sp)
    stfd    f31, 0x1a8(sp)
    stfd    f30, 0x1a0(sp)
    stw     r31, 0x19c(sp)
    stw     r30, 0x198(sp)
    mr      r30, r3
    stw     r29, 0x194(sp)
    bl      control__11TMapObjBaseFv
    lfs     f0, -0x2194(rtoc)
    mr      r3, r30
    stfs    f0, 0x58(r30)
    lfs     f0, -0x2190(rtoc)
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r30
    bl      checkMarioRiding__11TRailMapObjFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x801f05bc
    lwz     r0, 0x140(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801f00f4
    li      r0, 0x1
    b       branch_0x801f00f8

branch_0x801f00f4:
    li      r0, 0x0
branch_0x801f00f8:
    cmpwi   r0, 0x0
    bne-    branch_0x801f05bc
    lfs     f1, 0x144(r30)
    mr      r3, r30
    bl      moveToNextNode__11TRailMapObjFf
    cmpwi   r3, 0x0
    beq-    branch_0x801f04b4
    lwz     r3, 0x138(r30)
    lwz     r31, 0x0(r3)
    lwz     r0, 0x4(r3)
    lwz     r3, 0x0(r31)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x801f0148
    li      r0, 0xb4
    sth     r0, 0x14a(r30)
    li      r0, 0x2
    stb     r0, 0x148(r30)
branch_0x801f0148:
    lwz     r29, 0x138(r30)
    li      r6, -0x1
    lwz     r5, 0x8(r29)
    lwz     r4, 0x4(r29)
    lwz     r3, 0x0(r29)
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      moveTo__12TGraphTracerFi
    lwz     r4, 0x138(r30)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lhz     r0, 0x12(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x801f01b4
    stw     r0, 0x18c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x2188(rtoc)
    stw     r0, 0x188(sp)
    lfs     f2, -0x2198(rtoc)
    lfd     f0, 0x188(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x144(r30)
branch_0x801f01b4:
    lwz     r5, 0x138(r30)
    addi    r3, sp, 0xd8
    lfs     f30, 0x144(r30)
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0xd8(sp)
    addi    r3, sp, 0xcc
    lwz     r5, 0xdc(sp)
    addi    r4, r30, 0x10
    stw     r0, 0xcc(sp)
    lwz     r0, 0xe0(sp)
    stw     r5, 0xd0(sp)
    stw     r0, 0xd4(sp)
    bl      PSVECDistance
    fdivs   f0, f1, f30
    fctiwz  f0, f0
    stfd    f0, 0x188(sp)
    lwz     r0, 0x18c(sp)
    stw     r0, 0x13c(r30)
    lwz     r0, 0x140(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801f0218
    li      r0, 0x1
    b       branch_0x801f021c

branch_0x801f0218:
    li      r0, 0x0
branch_0x801f021c:
    cmpwi   r0, 0x0
    beq-    branch_0x801f0240
    addi    r3, r30, 0x174
    bl      PSMTXIdentity
    lfs     f0, -0x21b8(rtoc)
    stfs    f0, 0x170(r30)
    stfs    f0, 0x16c(r30)
    stfs    f0, 0x168(r30)
    b       branch_0x801f03bc

branch_0x801f0240:
    lwz     r4, 0x15c(r30)
    addi    r3, sp, 0x140
    lwz     r0, 0x160(r30)
    stw     r4, 0x168(r30)
    stw     r0, 0x16c(r30)
    lwz     r0, 0x164(r30)
    stw     r0, 0x170(r30)
    lfs     f1, 0x168(r30)
    lfs     f2, 0x16c(r30)
    lfs     f3, 0x170(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, r30, 0x174
    addi    r5, r4, 0x0
    addi    r3, sp, 0x140
    bl      PSMTXConcat
    lfs     f0, -0x21b8(rtoc)
    addi    r3, sp, 0x134
    addi    r4, r3, 0x0
    stfs    f0, 0x170(r30)
    stfs    f0, 0x16c(r30)
    stfs    f0, 0x168(r30)
    lfs     f0, 0x174(r30)
    stfs    f0, 0x134(sp)
    lfs     f0, 0x184(r30)
    stfs    f0, 0x138(sp)
    lfs     f0, 0x194(r30)
    stfs    f0, 0x13c(sp)
    lfs     f0, 0x178(r30)
    stfs    f0, 0x128(sp)
    lfs     f0, 0x188(r30)
    stfs    f0, 0x12c(sp)
    lfs     f0, 0x198(r30)
    stfs    f0, 0x130(sp)
    lfs     f0, 0x17c(r30)
    stfs    f0, 0x11c(sp)
    lfs     f0, 0x18c(r30)
    stfs    f0, 0x120(sp)
    lfs     f0, 0x19c(r30)
    stfs    f0, 0x124(sp)
    bl      PSVECNormalize
    addi    r3, sp, 0x128
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    addi    r3, sp, 0x11c
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f0, 0x134(sp)
    lfs     f1, -0x21ac(rtoc)
    fsubs   f0, f0, f1
    stfs    f0, 0x134(sp)
    lfs     f0, 0x12c(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x12c(sp)
    lfs     f0, 0x124(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x124(sp)
    lfs     f1, 0x134(sp)
    lfs     f0, -0x218c(rtoc)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x138(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x13c(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x128(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x12c(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x130(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x11c(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x120(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    lfs     f1, 0x124(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f03bc
    addi    r3, r30, 0x174
    bl      PSMTXIdentity
branch_0x801f03bc:
    lwz     r3, 0x138(r30)
    addi    r4, sp, 0x110
    lwz     r5, 0x0(r31)
    lwz     r0, 0x4(r3)
    slwi    r0, r0, 4
    add     r29, r5, r0
    addi    r3, r29, 0x0
    bl      getPoint__10TGraphNodeCFP3Vec
    addi    r3, r30, 0x10
    addi    r4, sp, 0x110
    bl      PSVECDistance
    lwz     r5, 0x0(r29)
    lis     r4, 0x4330
    lfs     f0, 0x144(r30)
    lhz     r0, 0xc(r5)
    lhz     r3, 0xe(r5)
    fdivs   f31, f1, f0
    stw     r0, 0x17c(sp)
    lhz     r0, 0x10(r5)
    stw     r3, 0x184(sp)
    lfd     f3, -0x2188(rtoc)
    stw     r4, 0x178(sp)
    stw     r0, 0x18c(sp)
    lfd     f0, 0x178(sp)
    stw     r4, 0x180(sp)
    fsubs   f0, f0, f3
    stw     r4, 0x188(sp)
    lfd     f1, 0x180(sp)
    lfd     f2, 0x188(sp)
    stfs    f0, 0x15c(r30)
    fsubs   f1, f1, f3
    fsubs   f0, f2, f3
    stfs    f1, 0x160(r30)
    stfs    f0, 0x164(r30)
    lfs     f30, 0x15c(r30)
    lfs     f0, -0x21b4(rtoc)
    lfs     f1, 0x168(r30)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_801f05e0
    fsubs   f0, f30, f1
    fdivs   f0, f0, f31
    stfs    f0, 0x150(r30)
    lfs     f30, 0x160(r30)
    lfs     f0, -0x21b4(rtoc)
    lfs     f1, 0x16c(r30)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_801f05e0
    fsubs   f0, f30, f1
    fdivs   f0, f0, f31
    stfs    f0, 0x154(r30)
    lfs     f30, 0x164(r30)
    lfs     f0, -0x21b4(rtoc)
    lfs     f1, 0x170(r30)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_801f05e0
    fsubs   f0, f30, f1
    fdivs   f0, f0, f31
    stfs    f0, 0x158(r30)
    b       branch_0x801f05bc

branch_0x801f04b4:
    lfs     f1, 0x30(r30)
    lfs     f0, 0x150(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r30)
    lfs     f1, 0x34(r30)
    lfs     f0, 0x154(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f1, 0x38(r30)
    lfs     f0, 0x158(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r30)
    lfs     f1, 0x168(r30)
    lfs     f0, 0x150(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x168(r30)
    lfs     f1, 0x16c(r30)
    lfs     f0, 0x154(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x16c(r30)
    lfs     f1, 0x170(r30)
    lfs     f0, 0x158(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x170(r30)
    lfs     f2, 0x30(r30)
    lfs     f0, -0x21a0(rtoc)
    b       branch_0x801f0524

branch_0x801f0520:
    fsubs   f2, f2, f0
branch_0x801f0524:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801f0520
    lfs     f1, -0x21a0(rtoc)
    lfs     f0, -0x21b8(rtoc)
    b       branch_0x801f0540

branch_0x801f053c:
    fadds   f2, f2, f1
branch_0x801f0540:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801f053c
    stfs    f2, 0x30(r30)
    lfs     f2, 0x34(r30)
    lfs     f0, -0x21a0(rtoc)
    b       branch_0x801f055c

branch_0x801f0558:
    fsubs   f2, f2, f0
branch_0x801f055c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801f0558
    lfs     f1, -0x21a0(rtoc)
    lfs     f0, -0x21b8(rtoc)
    b       branch_0x801f0578

branch_0x801f0574:
    fadds   f2, f2, f1
branch_0x801f0578:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801f0574
    stfs    f2, 0x34(r30)
    lfs     f2, 0x38(r30)
    lfs     f0, -0x21a0(rtoc)
    b       branch_0x801f0594

branch_0x801f0590:
    fsubs   f2, f2, f0
branch_0x801f0594:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801f0590
    lfs     f1, -0x21a0(rtoc)
    lfs     f0, -0x21b8(rtoc)
    b       branch_0x801f05b0

branch_0x801f05ac:
    fadds   f2, f2, f1
branch_0x801f05b0:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801f05ac
    stfs    f2, 0x38(r30)
branch_0x801f05bc:
    lwz     r0, 0x1b4(sp)
    lfd     f31, 0x1a8(sp)
    lfd     f30, 0x1a0(sp)
    mtlr    r0
    lwz     r31, 0x19c(sp)
    lwz     r30, 0x198(sp)
    lwz     r29, 0x194(sp)
    addi    sp, sp, 0x1b0
    blr


.globl MsWrap_f___Ffff_801f05e0
MsWrap_f___Ffff_801f05e0: # 0x801f05e0
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x801f061c
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x1eaff4, 0x801f05f8 - 0x801f05f4
branch_0x801f05f8:
    fsubs   f1, f1, f0
branch_0x801f05fc:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x801f05f8
    b       branch_0x801f0610

branch_0x801f060c:
    fadds   f1, f1, f0
branch_0x801f0610:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801f060c
    blr

branch_0x801f061c:
    fsubs   f0, f3, f2
    b       branch_0x801f05fc


.incbin "./baserom/code/Text_0x80005600.bin", 0x1eb024, 0x801f0628 - 0x801f0624

.globl calcRootMatrix__10TRailBlockFv
calcRootMatrix__10TRailBlockFv: # 0x801f0628
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      getModel__10TLiveActorCFv
    mr      r31, r3
    lfs     f1, 0x168(r29)
    addi    r30, r31, 0x20
    lfs     f2, 0x16c(r29)
    lfs     f3, 0x170(r29)
    mr      r3, r30
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, r29, 0x174
    bl      PSMTXConcat
    lfs     f0, 0x10(r29)
    stfs    f0, 0xc(r30)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x2c(r30)
    lwz     r3, 0x24(r29)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl getRootJointMtx__10TRailBlockCFv
getRootJointMtx__10TRailBlockCFv: # 0x801f06c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0xc(sp)
    addi    r3, r3, 0x20
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initMapObj__10TRailBlockFv
initMapObj__10TRailBlockFv: # 0x801f06e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    li      r4, 0x2
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x400
    stw     r0, 0xf0(r31)
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r3, 0x15c(r31)
    stw     r0, 0x160(r31)
    lwz     r0, 0x38(r31)
    stw     r0, 0x164(r31)
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r3, 0x168(r31)
    stw     r0, 0x16c(r31)
    lwz     r0, 0x38(r31)
    stw     r0, 0x170(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__10TRailBlockFPCc
__ct__10TRailBlockFPCc: # 0x801f0764
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    mr      r3, r31
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x514c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    li      r7, 0x0
    addi    r4, r3, 0x4e6c
    stw     r7, 0x138(r31)
    li      r6, 0xb4
    li      r5, 0x1
    stw     r7, 0x13c(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x174
    stw     r7, 0x140(r31)
    lfs     f0, -0x2180(rtoc)
    stfs    f0, 0x144(r31)
    stb     r7, 0x148(r31)
    sth     r6, 0x14a(r31)
    stb     r5, 0x14c(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lfs     f0, -0x21b8(rtoc)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x168(r31)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x170(r31)
    bl      PSMTXIdentity
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__11TNormalLiftFUlPQ26JDrama9TGraphics
perform__11TNormalLiftFUlPQ26JDrama9TGraphics: # 0x801f0820
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x158(r3)
    extsb.  r0, r0
    beq-    branch_0x801f0850
    lhz     r0, 0x152(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801f0850
    rlwinm. r0, r4, 0, 22, 22
    beq-    branch_0x801f0850
    rlwinm  r4, r4, 0, 23, 21
branch_0x801f0850:
    rlwinm. r0, r4, 0, 22, 22
    beq-    branch_0x801f0868
    lbz     r0, 0x14c(r3)
    extsb.  r0, r0
    bne-    branch_0x801f0868
    rlwinm  r4, r4, 0, 23, 21
branch_0x801f0868:
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setGroundCollision__11TNormalLiftFv
setGroundCollision__11TNormalLiftFv: # 0x801f087c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lbz     r0, 0x158(r3)
    extsb.  r0, r0
    beq-    branch_0x801f08ac
    lhz     r0, 0x152(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801f0920
branch_0x801f08ac:
    lwz     r0, 0xec(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801f0920
    lha     r0, 0x14a(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x801f0920
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801f08dc
    lhz     r0, 0x48(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801f0920
branch_0x801f08dc:
    addi    r3, sp, 0x18
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r31, sp, 0x18
    addi    r3, r31, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r3, 0xec(r30)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801f0920
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801f0920:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl control__11TNormalLiftFv
control__11TNormalLiftFv: # 0x801f0938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    bl      control__11TMapObjBaseFv
    mr      r3, r31
    bl      checkMarioRiding__11TRailMapObjFv
    lbz     r0, 0x158(r31)
    extsb.  r0, r0
    beq-    branch_0x801f0998
    lhz     r3, 0x152(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801f0998
    subi    r0, r3, 0x1
    sth     r0, 0x152(r31)
    lhz     r0, 0x152(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801f0ad0
    li      r0, 0x0
    stb     r0, 0x158(r31)
    b       branch_0x801f0ad0

branch_0x801f0998:
    lhz     r3, 0x150(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801f09b0
    subi    r0, r3, 0x1
    sth     r0, 0x150(r31)
    b       branch_0x801f0ad0

branch_0x801f09b0:
    lwz     r0, 0x140(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801f09c4
    li      r0, 0x1
    b       branch_0x801f09c8

branch_0x801f09c4:
    li      r0, 0x0
branch_0x801f09c8:
    cmpwi   r0, 0x0
    bne-    branch_0x801f0ad0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x801f0ad0
    lfs     f1, 0x144(r31)
    mr      r3, r31
    bl      moveToNextNode__11TRailMapObjFf
    cmpwi   r3, 0x0
    beq-    branch_0x801f0ad0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x138(r31)
    li      r6, -0x1
    lwz     r5, 0x8(r30)
    lwz     r4, 0x4(r30)
    lwz     r3, 0x0(r30)
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      moveTo__12TGraphTracerFi
    lwz     r4, 0x138(r31)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lhz     r0, 0xe(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x801f0a80
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    lfd     f1, -0x2188(rtoc)
    stw     r0, 0x60(sp)
    lfs     f2, -0x2198(rtoc)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x144(r31)
branch_0x801f0a80:
    lwz     r5, 0x138(r31)
    addi    r3, sp, 0x3c
    lfs     f31, 0x144(r31)
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x3c(sp)
    addi    r3, sp, 0x30
    lwz     r5, 0x40(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x30(sp)
    lwz     r0, 0x44(sp)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    bl      PSVECDistance
    fdivs   f0, f1, f31
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r0, 0x13c(r31)
branch_0x801f0ad0:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl initMapObj__11TNormalLiftFv
initMapObj__11TNormalLiftFv: # 0x801f0aec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    li      r4, 0x2
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl readRailFlag__11TNormalLiftFv
readRailFlag__11TNormalLiftFv: # 0x801f0b30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lwz     r4, 0x138(r3)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x801f0b7c
    lwz     r0, 0x140(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x140(r31)
branch_0x801f0b7c:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x801f0b9c
    li      r0, 0xb4
    sth     r0, 0x14a(r31)
    li      r0, 0x2
    stb     r0, 0x148(r31)
branch_0x801f0b9c:
    lwz     r3, 0x138(r31)
    lwz     r30, 0x0(r3)
    cmplwi  r30, 0x0
    addi    r3, r30, 0x0
    beq-    branch_0x801f0c0c
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x801f0c0c
    lwz     r3, 0x138(r31)
    lwz     r4, 0x0(r30)
    lwz     r0, 0x4(r3)
    slwi    r0, r0, 4
    add     r4, r4, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x801f0be8
    lhz     r0, 0xc(r3)
    sth     r0, 0x150(r31)
branch_0x801f0be8:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x801f0c0c
    lhz     r0, 0x10(r3)
    cmplwi  r0, 0xffff
    bne-    branch_0x801f0c08
    li      r0, 0x0
branch_0x801f0c08:
    sth     r0, 0x152(r31)
branch_0x801f0c0c:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl load__11TNormalLiftFR20JSUMemoryInputStream
load__11TNormalLiftFR20JSUMemoryInputStream: # 0x801f0c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stw     r31, 0x12c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x128(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0xf4(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r3, 0x10(r30)
    addi    r4, sp, 0x1c
    lwz     r0, 0x14(r30)
    stw     r3, 0x10c(r30)
    stw     r0, 0x110(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x114(r30)
    lwz     r3, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r3, 0x118(r30)
    stw     r0, 0x11c(r30)
    lwz     r0, 0x38(r30)
    stw     r0, 0x120(r30)
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x124(r30)
    stw     r0, 0x128(r30)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x12c(r30)
    lwz     r3, -0x70b0(r13)
    bl      getGraphByName__10TConductorFPCc
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      initGraphTracer__11TRailMapObjFP9TGraphWeb
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x154
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x154(r30)
    lfs     f0, -0x21b8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f0d48
    lwz     r3, 0xec(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801f0d48
    lwz     r31, 0x8(r3)
    li      r4, 0x7
    addi    r3, r31, 0x0
    bl      setAllBGType__17TMapCollisionBaseFUs
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      setAllActor__17TMapCollisionBaseFPC10TLiveActor
    lfs     f0, 0x154(r30)
    mr      r3, r31
    fctiwz  f0, f0
    stfd    f0, 0x120(sp)
    lwz     r4, 0x124(sp)
    bl      setAllData__17TMapCollisionBaseFs
branch_0x801f0d48:
    lwz     r0, 0x134(sp)
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    mtlr    r0
    addi    sp, sp, 0x130
    blr


.globl resetPosition__11TNormalLiftFv
resetPosition__11TNormalLiftFv: # 0x801f0d60
    mflr    r0
    li      r5, -0x1
    stw     r0, 0x4(sp)
    li      r0, 0xb4
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x1
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r4, 0x10c(r3)
    li      r3, 0x0
    lwz     r6, 0x110(r29)
    stw     r4, 0x10(r29)
    addi    r4, r29, 0x10
    stw     r6, 0x14(r29)
    lwz     r6, 0x114(r29)
    stw     r6, 0x18(r29)
    lwz     r7, 0x118(r29)
    lwz     r6, 0x11c(r29)
    stw     r7, 0x30(r29)
    stw     r6, 0x34(r29)
    lwz     r6, 0x120(r29)
    stw     r6, 0x38(r29)
    stb     r3, 0x148(r29)
    sth     r0, 0x14a(r29)
    stb     r31, 0x14c(r29)
    lwz     r30, 0x138(r29)
    lwz     r3, 0x0(r30)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      setTo__12TGraphTracerFi
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    stb     r31, 0x158(r29)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__11TNormalLiftFPCc
__ct__11TNormalLiftFPCc: # 0x801f0e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x514c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    li      r7, 0x0
    addi    r4, r3, 0x4fdc
    stw     r7, 0x138(r31)
    li      r6, 0xb4
    li      r5, 0x1
    stw     r7, 0x13c(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stw     r7, 0x140(r31)
    lfs     f0, -0x2180(rtoc)
    stfs    f0, 0x144(r31)
    stb     r7, 0x148(r31)
    sth     r6, 0x14a(r31)
    stb     r5, 0x14c(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    sth     r7, 0x150(r31)
    sth     r7, 0x152(r31)
    lfs     f0, -0x21b8(rtoc)
    stfs    f0, 0x154(r31)
    stb     r7, 0x158(r31)
    lfs     f0, -0x21ac(rtoc)
    stfs    f0, 0x144(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__11TRailMapObjFUlPQ26JDrama9TGraphics
perform__11TRailMapObjFUlPQ26JDrama9TGraphics: # 0x801f0eb8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 22, 22
    stwu    sp, -0x8(sp)
    beq-    branch_0x801f0edc
    lbz     r0, 0x14c(r3)
    extsb.  r0, r0
    bne-    branch_0x801f0edc
    rlwinm  r4, r4, 0, 23, 21
branch_0x801f0edc:
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__11TRailMapObjFv
control__11TRailMapObjFv: # 0x801f0ef0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r30
    bl      checkMarioRiding__11TRailMapObjFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x801f0ff0
    lwz     r0, 0x140(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801f0f48
    li      r0, 0x1
    b       branch_0x801f0f4c

branch_0x801f0f48:
    li      r0, 0x0
branch_0x801f0f4c:
    cmpwi   r0, 0x0
    bne-    branch_0x801f0ff0
    lfs     f1, 0x144(r30)
    mr      r3, r30
    bl      moveToNextNode__11TRailMapObjFf
    cmpwi   r3, 0x0
    beq-    branch_0x801f0ff0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x138(r30)
    li      r6, -0x1
    lwz     r5, 0x8(r31)
    lwz     r4, 0x4(r31)
    lwz     r3, 0x0(r31)
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      moveTo__12TGraphTracerFi
    lwz     r5, 0x138(r30)
    addi    r3, sp, 0x1c
    lfs     f31, 0x144(r30)
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x1c(sp)
    addi    r3, sp, 0x10
    lwz     r5, 0x20(sp)
    addi    r4, r30, 0x10
    stw     r0, 0x10(sp)
    lwz     r0, 0x24(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      PSVECDistance
    fdivs   f0, f1, f31
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x13c(r30)
branch_0x801f0ff0:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl readRailFlag__11TRailMapObjFv
readRailFlag__11TRailMapObjFv: # 0x801f100c
    lwz     r5, 0x138(r3)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r4, 0x0(r4)
    slwi    r0, r0, 4
    add     r5, r4, r0
    lwz     r4, 0x0(r5)
    lwz     r0, 0x8(r4)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x801f1040
    lwz     r0, 0x140(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x140(r3)
branch_0x801f1040:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x8(r4)
    rlwinm. r0, r0, 0, 19, 19
    beqlr-    

    li      r0, 0xb4
    sth     r0, 0x14a(r3)
    li      r0, 0x2
    stb     r0, 0x148(r3)
    blr


.globl getShadowType__11TRailMapObjFv
getShadowType__11TRailMapObjFv: # 0x801f1064
    li      r3, 0x1
    blr


.globl setGroundCollision__11TRailMapObjFv
setGroundCollision__11TRailMapObjFv: # 0x801f106c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r0, 0xec(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801f10f0
    lha     r0, 0x14a(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x801f10f0
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801f10b4
    lhz     r0, 0x48(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801f10f0
branch_0x801f10b4:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r31, sp, 0x18
    addi    r3, r31, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r3, 0xec(r30)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801f10f0
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801f10f0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl load__11TRailMapObjFR20JSUMemoryInputStream
load__11TRailMapObjFR20JSUMemoryInputStream: # 0x801f1108
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stw     r31, 0x114(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x110(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0xf4(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r3, 0x10(r30)
    addi    r4, sp, 0x10
    lwz     r0, 0x14(r30)
    stw     r3, 0x10c(r30)
    stw     r0, 0x110(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x114(r30)
    lwz     r3, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r3, 0x118(r30)
    stw     r0, 0x11c(r30)
    lwz     r0, 0x38(r30)
    stw     r0, 0x120(r30)
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x124(r30)
    stw     r0, 0x128(r30)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x12c(r30)
    lwz     r3, -0x70b0(r13)
    bl      getGraphByName__10TConductorFPCc
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      initGraphTracer__11TRailMapObjFP9TGraphWeb
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x11c(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    mtlr    r0
    addi    sp, sp, 0x118
    blr


.globl initMapObj__11TRailMapObjFv
initMapObj__11TRailMapObjFv: # 0x801f11e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    li      r4, 0x2
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl resetPosition__11TRailMapObjFv
resetPosition__11TRailMapObjFv: # 0x801f1228
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    li      r5, -0x1
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r4, 0x10c(r3)
    lwz     r7, 0x110(r3)
    li      r3, 0xb4
    stw     r4, 0x10(r30)
    addi    r4, r30, 0x10
    stw     r7, 0x14(r30)
    lwz     r7, 0x114(r30)
    stw     r7, 0x18(r30)
    lwz     r8, 0x118(r30)
    lwz     r7, 0x11c(r30)
    stw     r8, 0x30(r30)
    stw     r7, 0x34(r30)
    lwz     r7, 0x120(r30)
    stw     r7, 0x38(r30)
    stb     r6, 0x148(r30)
    sth     r3, 0x14a(r30)
    stb     r0, 0x14c(r30)
    lwz     r31, 0x138(r30)
    lwz     r3, 0x0(r31)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      setTo__12TGraphTracerFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcRecycle__11TRailMapObjFv
calcRecycle__11TRailMapObjFv: # 0x801f12d4
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x148(r3)
    extsb   r0, r0
    cmpwi   r0, 0x1
    beq-    branch_0x801f1318
    bge-    branch_0x801f1304
    cmpwi   r0, 0x0
    bge-    branch_0x801f1310
    b       branch_0x801f1414

branch_0x801f1304:
    cmpwi   r0, 0x3
    bge-    branch_0x801f1414
    b       branch_0x801f1358

branch_0x801f1310:
    li      r3, 0x0
    b       branch_0x801f1418

branch_0x801f1318:
    lha     r0, 0x14a(r5)
    cmpwi   r0, 0xb4
    bge-    branch_0x801f1338
    lha     r4, 0x14a(r5)
    li      r3, 0x1
    addi    r0, r4, 0x1
    sth     r0, 0x14a(r5)
    b       branch_0x801f1418

branch_0x801f1338:
    li      r0, 0x0
    stb     r0, 0x148(r5)
    li      r3, 0xb4
    li      r0, 0x1
    sth     r3, 0x14a(r5)
    li      r3, 0x0
    stb     r0, 0x14c(r5)
    b       branch_0x801f1418

branch_0x801f1358:
    lha     r0, 0x14a(r5)
    cmpwi   r0, 0x0
    ble-    branch_0x801f13f8
    lha     r3, 0x14a(r5)
    subi    r0, r3, 0x1
    sth     r0, 0x14a(r5)
    lha     r0, 0x14a(r5)
    cmpwi   r0, 0x5a
    bge-    branch_0x801f13b8
    lwz     r3, gpMarDirector(r13)
    lwz     r0, 0x58(r3)
    srawi   r3, r0, 2
    addze   r3, r3
    srawi   r0, r3, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc.  r0, r0, r3
    ble-    branch_0x801f13ac
    li      r0, 0x1
    stb     r0, 0x14c(r5)
    b       branch_0x801f13f0

branch_0x801f13ac:
    li      r0, 0x0
    stb     r0, 0x14c(r5)
    b       branch_0x801f13f0

branch_0x801f13b8:
    lwz     r3, gpMarDirector(r13)
    lwz     r0, 0x58(r3)
    srawi   r3, r0, 2
    addze   r3, r3
    srawi   r0, r3, 2
    addze   r0, r0
    slwi    r0, r0, 2
    subfc.  r0, r0, r3
    ble-    branch_0x801f13e8
    li      r0, 0x1
    stb     r0, 0x14c(r5)
    b       branch_0x801f13f0

branch_0x801f13e8:
    li      r0, 0x0
    stb     r0, 0x14c(r5)
branch_0x801f13f0:
    li      r3, 0x1
    b       branch_0x801f1418

branch_0x801f13f8:
    mr      r3, r5
    lwz     r12, 0x0(r5)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
    b       branch_0x801f1418

branch_0x801f1414:
    li      r3, 0x0
branch_0x801f1418:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkMarioRiding__11TRailMapObjFv
checkMarioRiding__11TRailMapObjFv: # 0x801f1428
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r0, 0x140(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x801f1454
    li      r0, 0x1
    b       branch_0x801f1458

branch_0x801f1454:
    li      r0, 0x0
branch_0x801f1458:
    cmpwi   r0, 0x0
    bne-    branch_0x801f14b4
    cmplwi  r3, 0x0
    beq-    branch_0x801f14e0
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x801f14e0
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801f14e0
    bl      SMS_GetMarioHitActor__Fv
    bl      SMS_GetMarioStatus__FP9THitActor
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x801f14e0
    rlwinm. r0, r3, 0, 10, 10
    bne-    branch_0x801f14e0
    lwz     r0, 0x140(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x140(r31)
    lwz     r0, 0x140(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x140(r31)
    b       branch_0x801f14e0

branch_0x801f14b4:
    cmplwi  r3, 0x0
    beq-    branch_0x801f14d4
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x801f14d4
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x801f14e0
branch_0x801f14d4:
    lwz     r0, 0x140(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x140(r31)
branch_0x801f14e0:
    lwz     r0, 0x140(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x801f14f4
    li      r0, 0x1
    b       branch_0x801f14f8

branch_0x801f14f4:
    li      r0, 0x0
branch_0x801f14f8:
    cmpwi   r0, 0x0
    beq-    branch_0x801f1508
    li      r3, 0x1
    b       branch_0x801f150c

branch_0x801f1508:
    li      r3, 0x0
branch_0x801f150c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl moveToNextNode__11TRailMapObjFf
moveToNextNode__11TRailMapObjFf: # 0x801f1520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    fmr     f31, f1
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lwz     r3, 0x138(r3)
    lwz     r30, 0x0(r3)
    cmplwi  r30, 0x0
    addi    r3, r30, 0x0
    beq-    branch_0x801f1560
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x801f1568
branch_0x801f1560:
    li      r3, 0x0
    b       branch_0x801f17bc

branch_0x801f1568:
    lwz     r5, 0x138(r31)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801f1584
    li      r0, 0x1
    b       branch_0x801f1588

branch_0x801f1584:
    li      r0, 0x0
branch_0x801f1588:
    cmpwi   r0, 0x0
    beq-    branch_0x801f1674
    mr      r3, r5
    fmr     f1, f31
    bl      calcSplineSpeed__12TGraphTracerFf
    lwz     r3, 0x138(r31)
    bl      traceSpline__12TGraphTracerFf
    lwz     r5, 0x138(r31)
    mr      r30, r3
    addi    r4, sp, 0x6c
    lwz     r3, 0x0(r5)
    lfs     f1, 0x14(r5)
    addi    r5, sp, 0x60
    lwz     r3, 0x14(r3)
    bl      getPosAndRot__11TSplineRailFfPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lfs     f1, 0x6c(sp)
    cmpwi   r30, 0x0
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x94(r31)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x68(sp)
    stw     r0, 0x38(r31)
    beq-    branch_0x801f1658
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
branch_0x801f1658:
    lwz     r3, 0x13c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x801f166c
    subi    r0, r3, 0x1
    stw     r0, 0x13c(r31)
branch_0x801f166c:
    mr      r3, r30
    b       branch_0x801f17bc

branch_0x801f1674:
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0x48
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x48(sp)
    fmuls   f0, f31, f31
    lwz     r3, 0x4c(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x58(sp)
    stw     r0, 0x5c(sp)
    lfs     f2, 0x54(sp)
    lfs     f1, 0x10(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0x54(sp)
    lfs     f2, 0x58(sp)
    lfs     f1, 0x14(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0x58(sp)
    lfs     f2, 0x5c(sp)
    lfs     f1, 0x18(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0x5c(sp)
    lfs     f2, 0x54(sp)
    lfs     f4, 0x5c(sp)
    lfs     f1, 0x58(sp)
    fmuls   f3, f2, f2
    fmuls   f4, f4, f4
    fmuls   f2, f1, f1
    lfs     f1, -0x2180(rtoc)
    fmuls   f0, f1, f0
    fadds   f1, f3, f2
    fadds   f1, f4, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x801f170c
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801f1744
branch_0x801f170c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x138(r31)
    addi    r4, r31, 0x10
    lwz     r5, 0x0(r30)
    lwz     r0, 0x4(r3)
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r3, 0x1
    b       branch_0x801f17bc

branch_0x801f1744:
    addi    r3, sp, 0x54
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x94(r31)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lwz     r3, 0x13c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x801f17b8
    subi    r0, r3, 0x1
    stw     r0, 0x13c(r31)
branch_0x801f17b8:
    li      r3, 0x0
branch_0x801f17bc:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl resetStep__11TRailMapObjFf
resetStep__11TRailMapObjFf: # 0x801f17d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    fmr     f31, f1
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r5, 0x138(r3)
    addi    r3, sp, 0x10
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x10(sp)
    addi    r3, sp, 0x1c
    lwz     r5, 0x14(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x1c(sp)
    lwz     r0, 0x18(sp)
    stw     r5, 0x20(sp)
    stw     r0, 0x24(sp)
    bl      PSVECDistance
    fdivs   f0, f1, f31
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x13c(r31)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl initGraphTracer__11TRailMapObjFP9TGraphWeb
initGraphTracer__11TRailMapObjFP9TGraphWeb: # 0x801f1858
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    addi    r29, r4, 0x0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801f1894
    mr      r3, r30
    bl      __ct__12TGraphTracerFv
branch_0x801f1894:
    stw     r30, 0x138(r31)
    cmplwi  r29, 0x0
    lwz     r3, 0x138(r31)
    stw     r29, 0x0(r3)
    beq-    branch_0x801f19ac
    mr      r3, r29
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x801f19ac
    addi    r3, r29, 0x0
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x138(r31)
    bl      setTo__12TGraphTracerFi
    lwz     r0, 0x14(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801f1930
    lwz     r5, 0x138(r31)
    addi    r3, sp, 0x4c
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r3, 0x4c(sp)
    li      r6, -0x1
    lwz     r0, 0x50(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x54(sp)
    stw     r0, 0x18(r31)
    lwz     r30, 0x138(r31)
    lwz     r5, 0x8(r30)
    lwz     r4, 0x4(r30)
    lwz     r3, 0x0(r30)
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      moveTo__12TGraphTracerFi
branch_0x801f1930:
    lwz     r3, 0x138(r31)
    lwz     r4, 0x0(r29)
    lwz     r0, 0x4(r3)
    slwi    r0, r0, 4
    lwzx    r3, r4, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801f195c
    lwz     r0, 0x140(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x140(r31)
branch_0x801f195c:
    lwz     r5, 0x138(r31)
    addi    r3, sp, 0x34
    lfs     f31, 0x144(r31)
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x34(sp)
    addi    r3, sp, 0x28
    lwz     r5, 0x38(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x28(sp)
    lwz     r0, 0x3c(sp)
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    bl      PSVECDistance
    fdivs   f0, f1, f31
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x13c(r31)
branch_0x801f19ac:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x88
    blr


.globl __ct__11TRailMapObjFPCc
__ct__11TRailMapObjFPCc: # 0x801f19cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x514c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r5, 0x0
    stw     r0, 0x20(r31)
    li      r4, 0xb4
    li      r0, 0x1
    stw     r5, 0x138(r31)
    mr      r3, r31
    stw     r5, 0x13c(r31)
    stw     r5, 0x140(r31)
    lfs     f0, -0x2180(rtoc)
    stfs    f0, 0x144(r31)
    stb     r5, 0x148(r31)
    sth     r4, 0x14a(r31)
    stb     r0, 0x14c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__10TRollBlockFv
__dt__10TRollBlockFv: # 0x801f1a3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f1aa4
    lis     r3, 0x803d
    addi    r3, r3, 0x4d08
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f1a94
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f1a94:
    extsh.  r0, r31
    ble-    branch_0x801f1aa4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f1aa4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TRailBlockFv
__dt__10TRailBlockFv: # 0x801f1ac0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f1b40
    lis     r3, 0x803d
    addi    r3, r3, 0x4e6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f1b30
    lis     r3, 0x803d
    addi    r3, r3, 0x514c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f1b30
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f1b30:
    extsh.  r0, r31
    ble-    branch_0x801f1b40
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f1b40:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__11TRailMapObjFv
_32___dt__11TRailMapObjFv: # 0x801f1b5c
    subi    r3, r3, 0x20
    b       __dt__11TRailMapObjFv


.globl _32___dt__11TNormalLiftFv
_32___dt__11TNormalLiftFv: # 0x801f1b64
    subi    r3, r3, 0x20
    b       __dt__11TNormalLiftFv


.globl _32___dt__10TRailBlockFv
_32___dt__10TRailBlockFv: # 0x801f1b6c
    subi    r3, r3, 0x20
    b       __dt__10TRailBlockFv


.globl _32___dt__10TRollBlockFv
_32___dt__10TRollBlockFv: # 0x801f1b74
    subi    r3, r3, 0x20
    b       __dt__10TRollBlockFv


.globl _32___dt__10TWoodBlockFv
_32___dt__10TWoodBlockFv: # 0x801f1b7c
    subi    r3, r3, 0x20
    b       __dt__10TWoodBlockFv

