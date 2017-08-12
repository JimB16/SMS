
.globl __dt__10TRideCloudFv
__dt__10TRideCloudFv: # 0x801dfb04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dfb84
    lis     r3, __vvt__10TRideCloud@h
    addi    r3, r3, __vvt__10TRideCloud@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dfb74
    lis     r3, __vvt__11TRailMapObj@h
    addi    r3, r3, __vvt__11TRailMapObj@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dfb74
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801dfb74:
    extsh.  r0, r31
    ble-    branch_0x801dfb84
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dfb84:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__10TRideCloudFUlPQ26JDrama9TGraphics
perform__10TRideCloudFUlPQ26JDrama9TGraphics: # 0x801dfba0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 29, 29
    stwu    sp, -0x8(sp)
    beq-    branch_0x801dfbc4
    lfs     f1, 0x154(r3)
    lfs     f0, 0x24(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r3)
branch_0x801dfbc4:
    bl      perform__11TRailMapObjFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__10TRideCloudFv
control__10TRideCloudFv: # 0x801dfbd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r3
    stw     r29, 0xbc(sp)
    stw     r28, 0xb8(sp)
    bl      control__11TMapObjBaseFv
    lwz     r3, R13Off_m0x60a0(r13)
    lwz     r4, 0xec(r30)
    lfs     f1, 0x0(r3)
    lfs     f0, -0x2448(r2)
    lwz     r3, 0x8(r4)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dfc24
    li      r4, 0x400
    bl      setAllBGType__17TMapCollisionBaseFUs
    b       branch_0x801dfc2c

branch_0x801dfc24:
    li      r4, 0x0
    bl      setAllBGType__17TMapCollisionBaseFUs
branch_0x801dfc2c:
    mr      r3, r30
    bl      checkMarioRiding__11TRailMapObjFv
    lwz     r0, 0x140(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x801dfc48
    li      r0, 0x1
    b       branch_0x801dfc4c

branch_0x801dfc48:
    li      r0, 0x0
branch_0x801dfc4c:
    cmpwi   r0, 0x0
    bne-    branch_0x801dfc8c
    lfs     f2, 0x150(r30)
    lfs     f1, -0x78b0(r13)
    lfs     f0, -0x2444(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dfc74
    fmr     f1, f0
    b       branch_0x801dfc84

branch_0x801dfc74:
    lfs     f0, -0x2448(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801dfc84
    fmr     f1, f0
branch_0x801dfc84:
    stfs    f1, 0x150(r30)
    b       branch_0x801dfcc0

branch_0x801dfc8c:
    lfs     f2, 0x150(r30)
    lfs     f1, -0x78b0(r13)
    lfs     f0, -0x2444(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dfcac
    fmr     f1, f0
    b       branch_0x801dfcbc

branch_0x801dfcac:
    lfs     f0, -0x2448(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801dfcbc
    fmr     f1, f0
branch_0x801dfcbc:
    stfs    f1, 0x150(r30)
branch_0x801dfcc0:
    lwz     r3, 0x158(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x801dfcdc
    lfs     f2, -0x78ac(r13)
    addi    r0, r3, -0x1
    stw     r0, 0x158(r30)
    b       branch_0x801dfce4

branch_0x801dfcdc:
    lfs     f0, -0x78ac(r13)
    fneg    f2, f0
branch_0x801dfce4:
    lfs     f1, 0x160(r30)
    lfs     f0, -0x2440(r2)
    fadds   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dfd00
    fmr     f1, f0
    b       branch_0x801dfd10

branch_0x801dfd00:
    lfs     f0, -0x2444(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801dfd10
    fmr     f1, f0
branch_0x801dfd10:
    stfs    f1, 0x160(r30)
    lfs     f1, 0x168(r30)
    lfs     f0, -0x2440(r2)
    fadds   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dfd30
    fmr     f1, f0
    b       branch_0x801dfd40

branch_0x801dfd30:
    lfs     f0, -0x2444(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801dfd40
    fmr     f1, f0
branch_0x801dfd40:
    stfs    f1, 0x168(r30)
    mr      r3, r30
    lfs     f2, -0x243c(r2)
    lfs     f0, 0x24(r30)
    lfs     f1, 0x160(r30)
    fmuls   f2, f2, f0
    fmuls   f0, f2, f1
    stfs    f0, 0x58(r30)
    lfs     f0, -0x2438(r2)
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x801dfebc
    lwz     r0, 0x140(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801dfd9c
    li      r0, 0x1
    b       branch_0x801dfda0

branch_0x801dfd9c:
    li      r0, 0x0
branch_0x801dfda0:
    cmpwi   r0, 0x0
    bne-    branch_0x801dfebc
    lhz     r3, 0x16c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801dfdc0
    addi    r0, r3, -0x1
    sth     r0, 0x16c(r30)
    b       branch_0x801dfebc

branch_0x801dfdc0:
    lwz     r3, 0x138(r30)
    lwz     r31, 0x0(r3)
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x801dfebc
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x801dfde4
    b       branch_0x801dfebc

branch_0x801dfde4:
    mr      r3, r30
    lfs     f1, 0x15c(r30)
    bl      moveToNextNode__11TRailMapObjFf
    cmpwi   r3, 0x0
    beq-    branch_0x801dfebc
    lwz     r4, 0x138(r30)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r28, r3, r0
    lwz     r3, 0x0(r28)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x801dfe30
    li      r0, 0xb4
    sth     r0, 0x14a(r30)
    li      r0, 0x2
    stb     r0, 0x148(r30)
branch_0x801dfe30:
    lwz     r29, 0x138(r30)
    li      r6, -0x1
    lwz     r5, 0x8(r29)
    lwz     r4, 0x4(r29)
    lwz     r3, 0x0(r29)
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      moveTo__12TGraphTracerFi
    lwz     r3, 0x0(r28)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x801dfe6c
    lhz     r0, 0xc(r3)
    sth     r0, 0x16c(r30)
branch_0x801dfe6c:
    lwz     r3, 0x138(r30)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r3)
    slwi    r0, r0, 4
    lwzx    r3, r4, r0
    lhz     r0, 0xe(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x801dfeb0
    stw     r0, 0xb4(sp)
    lis     r0, 0x4330
    lfd     f1, -0x2430(r2)
    stw     r0, 0xb0(sp)
    lfs     f2, -0x2434(r2)
    lfd     f0, 0xb0(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x15c(r30)
branch_0x801dfeb0:
    mr      r3, r30
    lfs     f1, 0x15c(r30)
    bl      resetStep__11TRailMapObjFf
branch_0x801dfebc:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    lwz     r28, 0xb8(sp)
    addi    sp, sp, 0xc8
    blr


.globl getShadowType__10TRideCloudFv
getShadowType__10TRideCloudFv: # 0x801dfedc
    li      r3, 0x0
    blr


.globl load__10TRideCloudFR20JSUMemoryInputStream
load__10TRideCloudFR20JSUMemoryInputStream: # 0x801dfee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    addi    r29, r4, 0x0
    bl      load__11TRailMapObjFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x4c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x48
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x44
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x4c(sp)
    li      r30, 0xff
    addi    r3, r29, 0x0
    clrlwi  r0, r0, 24
    sth     r0, 0x16e(r31)
    addi    r4, sp, 0x4c
    li      r5, 0x4
    lwz     r0, 0x48(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x170(r31)
    lwz     r0, 0x44(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x172(r31)
    sth     r30, 0x174(r31)
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x48
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x44
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x4c(sp)
    addi    r3, r31, 0x0
    clrlwi  r0, r0, 24
    sth     r0, 0x176(r31)
    lwz     r0, 0x48(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x178(r31)
    lwz     r0, 0x44(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x17a(r31)
    sth     r30, 0x17c(r31)
    bl      getModel__10TLiveActorCFv
    addi    r6, r31, 0x16e
    addi    r8, r31, 0x176
    li      r4, 0x0
    li      r5, 0x1
    li      r7, 0x2
    bl      SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 22, 20
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl initMapObj__10TRideCloudFv
initMapObj__10TRideCloudFv: # 0x801e0030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TRailMapObjFv
    lfs     f0, 0xb8(r31)
    stfs    f0, 0x154(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__10TRideCloudFv
calcRootMatrix__10TRideCloudFv: # 0x801e0064
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f2, -0x2448(r2)
    lfs     f0, -0x78b4(r13)
    fmr     f3, f2
    lfs     f1, 0x150(r3)
    fmr     f4, f2
    lfs     f5, -0x2444(r2)
    fmr     f7, f2
    fneg    f6, f0
    bl      JMAHermiteInterpolation__Ffffffff
    fmr     f31, f1
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lfs     f1, 0x2c(r31)
    addi    r3, r3, 0x20
    lfs     f0, 0x168(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(sp)
    lfs     f0, 0x14(r31)
    lfs     f4, 0x24(r31)
    lfs     f1, 0x160(r31)
    fadds   f2, f0, f31
    lfs     f3, 0x28(r31)
    fmuls   f7, f4, f1
    lfs     f0, 0x164(r31)
    lfs     f1, 0x10(r31)
    fmuls   f8, f3, f0
    lfs     f3, 0x18(r31)
    lfs     f4, 0x30(r31)
    lfs     f5, 0x34(r31)
    lfs     f6, 0x38(r31)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl setGroundCollision__10TRideCloudFv
setGroundCollision__10TRideCloudFv: # 0x801e0110
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r0, 0xec(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801e0170
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r31, sp, 0x18
    addi    r3, r31, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r3, 0xec(r30)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801e0170
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801e0170:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl touchWater__10TRideCloudFP9THitActor
touchWater__10TRideCloudFP9THitActor: # 0x801e0188
    lwz     r4, 0x158(r3)
    addi    r0, r4, 0xa
    stw     r0, 0x158(r3)
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x258
    ble-    branch_0x801e01a8
    li      r0, 0x258
    stw     r0, 0x158(r3)
branch_0x801e01a8:
    li      r3, 0x1
    blr


.globl __ct__10TRideCloudFPCc
__ct__10TRideCloudFPCc: # 0x801e01b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TRailMapObjFPCc
    lis     r3, __vvt__10TRideCloud@h
    addi    r3, r3, __vvt__10TRideCloud@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2448(r2)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x154(r31)
    stw     r0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    sth     r0, 0x16c(r31)
    lfs     f0, -0x78b8(r13)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x2444(r2)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x168(r31)
    sth     r0, 0x16e(r31)
    sth     r0, 0x170(r31)
    sth     r0, 0x172(r31)
    sth     r0, 0x174(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TRailMapObjFv
__dt__11TRailMapObjFv: # 0x801e0238
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e02a0
    lis     r3, __vvt__11TRailMapObj@h
    addi    r3, r3, __vvt__11TRailMapObj@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e0290
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e0290:
    extsh.  r0, r31
    ble-    branch_0x801e02a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e02a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjCloud_cpp
__sinit_MapObjCloud_cpp: # 0x801e02bc
    mflr    r0
    lis     r3, unk_803f9ef8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f9ef8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0304
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801e0304:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0334
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801e0334:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0364
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801e0364:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0394
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801e0394:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801e03c4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801e03c4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801e03f4
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801e03f4:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0424
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801e0424:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0454
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801e0454:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0484
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801e0484:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801e04b4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801e04b4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801e04e4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801e04e4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0514
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801e0514:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0544
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801e0544:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801e0574
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801e0574:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801e05a4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801e05a4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801e05b8
unk_801e05b8: # 0x801e05b8
    addi    r3, r3, -0x20
    b       __dt__10TRideCloudFv

