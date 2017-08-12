
.globl __ct__8TMapWireFv
__ct__8TMapWireFv: # 0x80196d28
    lfs     f0, -0x4238(r2)
    li      r0, 0x0
    stfs    f0, 0x34(r3)
    stfs    f0, 0x38(r3)
    sth     r0, 0x44(r3)
    sth     r0, 0x46(r3)
    stw     r0, 0x48(r3)
    stfs    f0, 0x4c(r3)
    stfs    f0, 0x5c(r3)
    stfs    f0, 0x60(r3)
    stfs    f0, 0x64(r3)
    stfs    f0, 0x74(r3)
    stfs    f0, 0x78(r3)
    sth     r0, 0x7c(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x70(r3)
    stfs    f0, 0x6c(r3)
    stfs    f0, 0x58(r3)
    stfs    f0, 0x54(r3)
    stfs    f0, 0x50(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r3)
    blr


.globl init__8TMapWireFPC16TCubeGeneralInfo
init__8TMapWireFPC16TCubeGeneralInfo: # 0x80196da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b0(sp)
    stfd    f31, 0x1a8(sp)
    stmw    r27, 0x194(sp)
    mr      r30, r4
    mr      r29, r3
    addi    r27, r30, 0x2c
    lfs     f2, 0x2c(r4)
    lis     r4, unk_80389ed8@ha
    lfs     f1, -0x4230(r2)
    addi    r31, r4, unk_80389ed8@l
    lfs     f3, -0x4234(r2)
    fdivs   f1, f2, f1
    lfs     f0, -0x422c(r2)
    fadds   f1, f3, f1
    fsubs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x188(sp)
    lwz     r0, 0x18c(sp)
    sth     r0, 0x46(r3)
    lhz     r0, 0x46(r3)
    sth     r0, 0x44(r3)
    lhz     r28, 0x46(r3)
    mulli   r3, r28, 0x24
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__13TMapWirePointFv@ha
    addi    r4, r4, __ct__13TMapWirePointFv@l
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0x24
    bl      __construct_new_array
    stw     r3, 0x48(r29)
    addi    r3, sp, 0xf8
    lfs     f0, 0x0(r27)
    stfs    f0, 0x30(r29)
    lfs     f2, 0x30(r29)
    lfs     f0, -0x4238(r2)
    lfs     f1, -0x4228(r2)
    stfs    f0, 0xec(sp)
    fmuls   f1, f2, f1
    stfs    f0, 0xf0(sp)
    stfs    f1, 0xf4(sp)
    stfs    f0, 0x10c(sp)
    stfs    f0, 0x100(sp)
    stfs    f0, 0x114(sp)
    stfs    f0, 0xfc(sp)
    stfs    f0, 0x110(sp)
    stfs    f0, 0x104(sp)
    lfs     f0, -0x4234(r2)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x108(sp)
    stfs    f0, 0xf8(sp)
    lfs     f3, -0x4220(r2)
    lfs     f2, 0x18(r30)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0x20(r30)
    fdivs   f2, f2, f3
    lfs     f4, -0x4224(r2)
    fdivs   f1, f1, f3
    fdivs   f0, f0, f3
    fmuls   f2, f4, f2
    fmuls   f1, f4, f1
    fmuls   f0, f4, f0
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f2, 0x180(sp)
    stfd    f1, 0x178(sp)
    lwz     r4, 0x184(sp)
    stfd    f0, 0x170(sp)
    lwz     r5, 0x17c(sp)
    lwz     r6, 0x174(sp)
    bl      setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___Fsss
    lfs     f0, 0x114(sp)
    addi    r3, sp, 0xec
    lfs     f5, 0xf0(sp)
    lfs     f1, 0x108(sp)
    lfs     f2, 0xfc(sp)
    fmuls   f0, f5, f0
    fmuls   f1, f5, f1
    lfs     f3, 0x110(sp)
    lfs     f6, 0xec(sp)
    lfs     f4, 0x104(sp)
    fmuls   f2, f5, f2
    lfs     f5, 0xf8(sp)
    fmadds  f1, f6, f4, f1
    fmadds  f0, f6, f3, f0
    lfs     f3, 0x118(sp)
    lfs     f7, 0xf4(sp)
    fmadds  f4, f6, f5, f2
    lfs     f2, 0x10c(sp)
    lfs     f5, 0x100(sp)
    fmadds  f3, f7, f3, f0
    fmadds  f2, f7, f2, f1
    fmadds  f1, f7, f5, f4
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80197408
    lfs     f2, 0xf0(sp)
    addi    r27, r30, 0x28
    lfs     f3, 0x10(r30)
    addi    r4, r29, 0x0
    lfs     f1, 0xc(r30)
    lfs     f0, 0xec(sp)
    fsubs   f3, f3, f2
    lfs     f2, 0x28(r30)
    addi    r3, sp, 0x98
    fsubs   f0, f1, f0
    lfs     f4, 0x14(r30)
    lfs     f1, 0xf4(sp)
    fadds   f2, f3, f2
    stfs    f0, 0x0(r29)
    fsubs   f0, f4, f1
    stfs    f2, 0x4(r29)
    stfs    f0, 0x8(r29)
    lfs     f3, 0xf0(sp)
    lfs     f2, 0x10(r30)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xc(r30)
    fadds   f3, f3, f2
    lfs     f2, 0x28(r30)
    fadds   f0, f1, f0
    lfs     f4, 0xf4(sp)
    lfs     f1, 0x14(r30)
    fadds   f2, f3, f2
    stfs    f0, 0xc(r29)
    fadds   f0, f4, f1
    stfs    f2, 0x10(r29)
    stfs    f0, 0x14(r29)
    lwz     r5, 0xc(r29)
    lwz     r0, 0x10(r29)
    stw     r5, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x14(r29)
    stw     r0, 0xa0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r4, 0x98(sp)
    li      r8, 0x0
    lwz     r0, 0x9c(sp)
    li      r3, 0x0
    lis     r6, 0x4330
    stw     r4, 0x18(r29)
    stw     r0, 0x1c(r29)
    lwz     r0, 0xa0(sp)
    stw     r0, 0x20(r29)
    lfs     f1, -0x4228(r2)
    lfs     f0, 0x0(r27)
    fmuls   f0, f1, f0
    stfs    f0, 0x38(r29)
    lfd     f8, -0x4208(r2)
    lfd     f7, -0x4200(r2)
    lfs     f5, -0x4224(r2)
    b       branch_0x801970d8

branch_0x80197008:
    addi    r0, r8, 0x1
    stw     r4, 0x17c(sp)
    xoris   r4, r0, 0x8000
    lwz     r0, 0x48(r29)
    stw     r4, 0x174(sp)
    addi    r8, r8, 0x1
    add     r4, r0, r3
    stw     r6, 0x170(sp)
    stw     r6, 0x178(sp)
    lfd     f1, 0x170(sp)
    lfd     f0, 0x178(sp)
    fsubs   f1, f1, f8
    fsubs   f0, f0, f7
    fdivs   f0, f1, f0
    stfs    f0, 0x1c(r4)
    stfs    f0, 0x18(r4)
    lwz     r4, 0x48(r29)
    lfs     f2, 0x1c(r29)
    add     r7, r4, r3
    lfs     f0, 0x4(r29)
    lfs     f9, 0x18(r7)
    addi    r3, r3, 0x24
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f4, f5, f9
    lfs     f1, 0x18(r29)
    fmadds  f3, f2, f9, f0
    lfs     f0, 0x0(r29)
    lwz     r5, R13Off_m0x5ea8(r13)
    fctiwz  f4, f4
    lfs     f2, 0x20(r29)
    fmadds  f0, f1, f9, f0
    lfs     f1, 0x8(r29)
    lfs     f6, 0x38(r29)
    stfd    f4, 0x180(sp)
    fmadds  f2, f2, f9, f1
    lwz     r4, 0x184(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f1, f6, f1, f3
    stfs    f0, 0xc(r7)
    stfs    f1, 0x10(r7)
    stfs    f2, 0x14(r7)
    lwz     r4, 0xc(r7)
    lwz     r0, 0x10(r7)
    stw     r4, 0x0(r7)
    stw     r0, 0x4(r7)
    lwz     r0, 0x14(r7)
    stw     r0, 0x8(r7)
    lfs     f0, 0x1c(r7)
    stfs    f0, 0x18(r7)
branch_0x801970d8:
    lhz     r4, 0x46(r29)
    cmpw    r8, r4
    blt+    branch_0x80197008
    lfs     f1, 0xc(r29)
    lfs     f0, 0x0(r29)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80197130
    fsubs   f0, f1, f0
    lfs     f2, 0x14(r29)
    lfs     f1, 0x8(r29)
    fsubs   f1, f2, f1
    fdivs   f1, f1, f0
    bl      atanf
    fneg    f1, f1
    lfs     f2, -0x4220(r2)
    lfs     f0, -0x4218(r2)
    lfs     f3, -0x421c(r2)
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fadds   f0, f3, f0
    stfs    f0, 0x34(r29)
    b       branch_0x80197138

branch_0x80197130:
    lfs     f0, -0x4238(r2)
    stfs    f0, 0x34(r29)
branch_0x80197138:
    lfs     f1, 0xc(r29)
    lfs     f0, 0x0(r29)
    lfs     f3, 0x14(r29)
    lfs     f2, 0x8(r29)
    fsubs   f0, f1, f0
    fsubs   f1, f3, f2
    stfs    f0, 0x6c(r29)
    stfs    f1, 0x70(r29)
    lfs     f0, 0x6c(r29)
    lfs     f1, 0x70(r29)
    fmuls   f2, f0, f0
    lfs     f0, -0x4214(r2)
    fmuls   f1, f1, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8019718c
    lfs     f0, -0x4238(r2)
    stfs    f0, 0x70(r29)
    stfs    f0, 0x6c(r29)
    b       branch_0x801971b0

branch_0x8019718c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4234(r2)
    lfs     f0, 0x6c(r29)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x6c(r29)
    lfs     f0, 0x70(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x70(r29)
branch_0x801971b0:
    lfs     f1, -0x4210(r2)
    bl      cosf
    fmr     f31, f1
    lfs     f1, -0x4210(r2)
    bl      sinf
    lfs     f2, 0x70(r29)
    addi    r3, r31, 0x38
    lfs     f3, 0x6c(r29)
    lis     r4, 0x1021
    fmuls   f0, f2, f1
    fmuls   f2, f2, f31
    fmsubs  f0, f3, f31, f0
    fmadds  f1, f3, f1, f2
    stfs    f0, 0x6c(r29)
    stfs    f1, 0x70(r29)
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x3c(r29)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8019721c
    lwz     r4, 0x3c(r29)
    addi    r3, r27, 0x0
    lis     r5, 0x1021
    lwz     r4, 0x4(r4)
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8019721c:
    stw     r27, 0x40(r29)
    addi    r27, r30, 0x20
    addi    r28, r30, 0x1c
    lfs     f0, 0x20(r30)
    addi    r3, sp, 0x128
    lfs     f2, -0x420c(r2)
    lfs     f1, 0x1c(r30)
    fmuls   f0, f2, f0
    lfs     f4, 0x18(r30)
    fmuls   f1, f2, f1
    lfs     f3, 0x8(r29)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x0(r29)
    fctiwz  f5, f2
    lfs     f2, 0x4(r29)
    fctiwz  f0, f0
    stfd    f4, 0x178(sp)
    stfd    f5, 0x170(sp)
    lwz     r5, 0x17c(sp)
    stfd    f0, 0x180(sp)
    lwz     r4, 0x174(sp)
    lwz     r6, 0x184(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x3c(r29)
    addi    r3, sp, 0x128
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x4220(r2)
    addi    r3, sp, 0x128
    lfs     f0, 0x0(r28)
    lfs     f6, 0x0(r27)
    fadds   f4, f1, f0
    lfs     f0, -0x420c(r2)
    lfs     f1, 0x18(r30)
    lfs     f3, 0x14(r29)
    fmuls   f5, f0, f1
    fmuls   f4, f0, f4
    lfs     f2, 0x10(r29)
    fmuls   f0, f0, f6
    lfs     f1, 0xc(r29)
    fctiwz  f5, f5
    fctiwz  f4, f4
    fctiwz  f0, f0
    stfd    f5, 0x188(sp)
    stfd    f4, 0x168(sp)
    lwz     r4, 0x18c(sp)
    stfd    f0, 0x160(sp)
    lwz     r5, 0x16c(sp)
    lwz     r6, 0x164(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x40(r29)
    addi    r3, sp, 0x128
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x40(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r4, 0x3c(r29)
    bl      entryStaticDrawBufferSun__14TMapObjManagerFP8J3DModel
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r4, 0x40(r29)
    bl      entryStaticDrawBufferSun__14TMapObjManagerFP8J3DModel
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80197350
    mr      r3, r27
    bl      __ct__19TMapCollisionStaticFv
branch_0x80197350:
    lwz     r12, 0x0(r27)
    mr      r3, r27
    addi    r4, r31, 0x54
    lwz     r12, 0x8(r12)
    li      r5, 0x2
    li      r6, 0x0
    mtlr    r12
    blrl
    lwz     r3, 0x3c(r29)
    addi    r4, r27, 0x20
    lwz     r3, 0x58(r3)
    bl      PSMTXCopy
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801973ac
    mr      r3, r27
    bl      __ct__19TMapCollisionStaticFv
branch_0x801973ac:
    lwz     r12, 0x0(r27)
    mr      r3, r27
    addi    r4, r31, 0x54
    lwz     r12, 0x8(r12)
    li      r5, 0x2
    li      r6, 0x0
    mtlr    r12
    blrl
    lwz     r3, 0x40(r29)
    addi    r4, r27, 0x20
    lwz     r3, 0x58(r3)
    bl      PSMTXCopy
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lmw     r27, 0x194(sp)
    lwz     r0, 0x1b4(sp)
    lfd     f31, 0x1a8(sp)
    addi    sp, sp, 0x1b0
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80197408
set_f___Q29JGeometry8TVec3_f_Ffff_80197408: # 0x80197408
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___Fsss
setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___Fsss: # 0x80197418
    lwz     r7, R13Off_m0x5eac(r13)
    clrlwi  r4, r4, 16
    clrlwi  r0, r5, 16
    lwz     r9, R13Off_m0x5ea4(r13)
    sraw    r5, r4, r7
    sraw    r4, r0, r7
    lwz     r8, R13Off_m0x5ea8(r13)
    clrlwi  r0, r6, 16
    slwi    r4, r4, 2
    sraw    r0, r0, r7
    lfsx    f7, r9, r4
    slwi    r6, r0, 2
    lfsx    f5, r8, r4
    slwi    r0, r5, 2
    lfsx    f8, r9, r6
    lfsx    f3, r8, r0
    fneg    f0, f5
    lfsx    f4, r8, r6
    fmuls   f2, f7, f8
    lfsx    f6, r9, r0
    fmuls   f1, f7, f4
    stfs    f2, 0x0(r3)
    fmuls   f10, f3, f5
    fmuls   f11, f6, f4
    stfs    f1, 0xc(r3)
    fmuls   f9, f6, f8
    fmuls   f1, f3, f4
    stfs    f0, 0x18(r3)
    fmsubs  f2, f10, f8, f11
    fmuls   f0, f3, f8
    fmadds  f4, f10, f4, f9
    stfs    f2, 0x4(r3)
    fmuls   f3, f3, f7
    fmadds  f2, f9, f5, f1
    stfs    f4, 0x10(r3)
    fmsubs  f1, f11, f5, f0
    stfs    f3, 0x1c(r3)
    fmuls   f0, f6, f7
    stfs    f2, 0x8(r3)
    stfs    f1, 0x14(r3)
    stfs    f0, 0x20(r3)
    blr


.globl getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_
getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_: # 0x801974c0
    stwu    sp, -0x68(sp)
    lfs     f0, -0x4238(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801974d4
    fmr     f1, f0
branch_0x801974d4:
    lfs     f0, -0x4234(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801974e4
    fmr     f1, f0
branch_0x801974e4:
    lhz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80197594
    lfs     f0, 0x4c(r3)
    lfs     f2, 0x18(r3)
    fsubs   f3, f1, f0
    lfs     f0, 0x50(r3)
    fmadds  f0, f2, f3, f0
    stfs    f0, 0x0(r4)
    lfs     f2, 0x20(r3)
    lfs     f0, 0x58(r3)
    fmadds  f0, f2, f3, f0
    stfs    f0, 0x8(r4)
    lfs     f2, 0x74(r3)
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8019754c
    lfs     f3, 0x54(r3)
    fsubs   f0, f2, f1
    lfs     f1, 0x4(r3)
    fsubs   f1, f1, f3
    fmuls   f0, f1, f0
    fdivs   f0, f0, f2
    fadds   f0, f3, f0
    stfs    f0, 0x4(r4)
    b       branch_0x80197648

branch_0x8019754c:
    lfs     f3, 0x78(r3)
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    bne-    branch_0x80197588
    lfs     f4, 0x54(r3)
    fsubs   f1, f1, f3
    lfs     f2, 0x10(r3)
    lfs     f0, -0x4234(r2)
    fsubs   f2, f2, f4
    fsubs   f0, f0, f3
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    stfs    f0, 0x4(r4)
    b       branch_0x80197648

branch_0x80197588:
    lfs     f0, 0x54(r3)
    stfs    f0, 0x4(r4)
    b       branch_0x80197648

branch_0x80197594:
    lfs     f0, -0x4224(r2)
    lfs     f7, 0x4c(r3)
    fmuls   f0, f0, f1
    lwz     r0, R13Off_m0x5eac(r13)
    fcmpo   cr0, f1, f7
    lfs     f3, 0x1c(r3)
    lfs     f2, 0x4(r3)
    fctiwz  f0, f0
    lwz     r6, R13Off_m0x5ea8(r13)
    fmadds  f6, f3, f1, f2
    lfs     f3, 0x18(r3)
    lfs     f2, 0x0(r3)
    stfd    f0, 0x60(sp)
    fmadds  f4, f3, f1, f2
    lfs     f3, 0x20(r3)
    cror    2, 1, 2
    lwz     r5, 0x64(sp)
    lfs     f0, 0x8(r3)
    clrlwi  r5, r5, 16
    lfs     f2, 0x38(r3)
    sraw    r0, r5, r0
    fmadds  f5, f3, f1, f0
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fnmsubs  f3, f2, f0, f6
    bne-    branch_0x80197610
    lfs     f0, -0x4234(r2)
    fsubs   f1, f1, f7
    fsubs   f0, f0, f7
    fdivs   f2, f1, f0
    b       branch_0x8019761c

branch_0x80197610:
    fdivs   f0, f1, f7
    lfs     f1, -0x4234(r2)
    fsubs   f2, f1, f0
branch_0x8019761c:
    stfs    f4, 0x0(r4)
    fsubs   f0, f3, f6
    lfs     f4, -0x4234(r2)
    lfs     f1, 0x60(r3)
    fnmsubs  f3, f2, f2, f4
    lfs     f2, 0x54(r3)
    fsubs   f1, f4, f1
    fmadds  f0, f1, f0, f6
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x4(r4)
    stfs    f5, 0x8(r4)
branch_0x80197648:
    addi    sp, sp, 0x68
    blr


.globl getPosInWire__8TMapWireCFRCQ29JGeometry8TVec3_f_
getPosInWire__8TMapWireCFRCQ29JGeometry8TVec3_f_: # 0x80197650
    mflr    r0
    mr      r6, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    addi    r4, sp, 0x90
    lwz     r5, 0x0(r3)
    lwz     r0, 0x4(r3)
    lfs     f0, -0x4238(r2)
    stw     r5, 0x90(sp)
    addi    r5, sp, 0x84
    stw     r0, 0x94(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0x98(sp)
    lwz     r7, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r7, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x14(r3)
    addi    r3, sp, 0x78
    stw     r0, 0x8c(sp)
    stfs    f0, 0x94(sp)
    stfs    f0, 0x88(sp)
    bl      MsPerpendicFootToLineR__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x84(sp)
    lwz     r4, 0x78(sp)
    stw     r0, 0x44(sp)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x48(sp)
    lfs     f0, 0x90(sp)
    stw     r0, 0x4c(sp)
    lwz     r3, 0x7c(sp)
    lfs     f1, 0x44(sp)
    stw     r4, 0x9c(sp)
    fsubs   f0, f1, f0
    lwz     r0, 0x80(sp)
    stw     r3, 0xa0(sp)
    stfs    f0, 0x44(sp)
    stw     r0, 0xa4(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x94(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x98(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lwz     r0, 0x44(sp)
    lwz     r3, 0x48(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x64(sp)
    stw     r0, 0x68(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x64(sp)
    lfs     f2, 0x68(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r0, 0x9c(sp)
    fmr     f31, f1
    lwz     r3, 0xa0(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0x58(sp)
    lfs     f0, 0x90(sp)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x94(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x98(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x58(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x70(sp)
    lfs     f2, 0x74(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fdivs   f1, f1, f31
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl move__8TMapWireFv
move__8TMapWireFv: # 0x801977ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stw     r31, 0xbc(sp)
    mr      r31, r3
    stw     r30, 0xb8(sp)
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    lhz     r0, 0x7c(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8019782c
    bge-    branch_0x80197a40
    b       branch_0x80197a40

branch_0x8019782c:
    lfs     f1, 0x60(r31)
    lfs     f0, 0x68(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(r31)
    lfs     f1, 0x60(r31)
    lfs     f0, -0x7ae8(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80197854
    li      r5, 0x1
    b       branch_0x801978c8

branch_0x80197854:
    lfs     f1, 0x5c(r31)
    lfs     f0, -0x7af0(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(r31)
    lfs     f1, 0x5c(r31)
    lfs     f0, -0x422c(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80197880
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(r31)
branch_0x80197880:
    lfs     f1, -0x4224(r2)
    li      r5, 0x0
    lfs     f0, 0x5c(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r4, R13Off_m0x5ea4(r13)
    lfs     f0, 0x64(r31)
    lfs     f2, 0x60(r31)
    fctiwz  f1, f1
    stfd    f1, 0xa8(sp)
    lwz     r3, 0xac(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x54(r31)
branch_0x801978c8:
    clrlwi. r0, r5, 24
    beq-    branch_0x80197924
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x8019790c

branch_0x801978dc:
    lwz     r0, 0x48(r31)
    addi    r6, r6, 0x1
    add     r5, r0, r3
    lwz     r4, 0xc(r5)
    addi    r3, r3, 0x24
    lwz     r0, 0x10(r5)
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x14(r5)
    stw     r0, 0x8(r5)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x18(r5)
branch_0x8019790c:
    lhz     r0, 0x44(r31)
    cmpw    r6, r0
    blt+    branch_0x801978dc
    li      r0, 0x0
    sth     r0, 0x7c(r31)
    b       branch_0x80197a40

branch_0x80197924:
    lfs     f31, -0x4224(r2)
    li      r28, 0x0
    lfs     f29, -0x4234(r2)
    li      r30, 0x0
    b       branch_0x80197a34

branch_0x80197938:
    lwz     r0, 0x48(r31)
    add     r29, r0, r30
    lfs     f30, 0x1c(r29)
    lfs     f0, 0x18(r29)
    lfs     f2, 0x20(r29)
    fsubs   f1, f30, f0
    fabs    f3, f2
    fabs    f1, f1
    fcmpo   cr0, f1, f3
    ble-    branch_0x80197964
    fadds   f30, f0, f2
branch_0x80197964:
    lfs     f1, 0x18(r31)
    addi    r3, sp, 0x64
    lfs     f0, 0x0(r31)
    lfs     f4, 0x1c(r31)
    lfs     f2, 0x4(r31)
    fmadds  f1, f1, f30, f0
    lfs     f3, 0x20(r31)
    lfs     f0, 0x8(r31)
    fmadds  f2, f4, f30, f2
    fmadds  f3, f3, f30, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80197408
    fmuls   f2, f31, f30
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f1, 0x1c(r31)
    addi    r3, sp, 0x70
    lfs     f0, 0x4(r31)
    fctiwz  f2, f2
    lwz     r5, R13Off_m0x5ea8(r13)
    fmadds  f4, f1, f30, f0
    lfs     f1, 0x18(r31)
    lfs     f0, 0x0(r31)
    stfd    f2, 0xa8(sp)
    fmadds  f1, f1, f30, f0
    lfs     f5, 0x38(r31)
    lwz     r4, 0xac(sp)
    lfs     f2, 0x20(r31)
    clrlwi  r4, r4, 16
    lfs     f0, 0x8(r31)
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    fmadds  f3, f2, f30, f0
    lfsx    f0, r5, r0
    fnmsubs  f2, f5, f0, f4
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80197408
    mr      r3, r31
    fmr     f1, f30
    bl      getPointPowerAtReleased__8TMapWireCFf
    lfs     f2, 0x60(r31)
    addi    r28, r28, 0x1
    lfs     f6, 0x68(sp)
    addi    r30, r30, 0x24
    lfs     f0, 0x74(sp)
    fsubs   f3, f29, f2
    lfs     f4, 0x54(r31)
    fsubs   f2, f0, f6
    lfs     f5, 0x6c(sp)
    lfs     f0, 0x64(sp)
    fmadds  f2, f3, f2, f6
    stfs    f0, 0x0(r29)
    fmadds  f0, f1, f4, f2
    stfs    f0, 0x4(r29)
    stfs    f5, 0x8(r29)
branch_0x80197a34:
    lhz     r0, 0x44(r31)
    cmpw    r28, r0
    blt+    branch_0x80197938
branch_0x80197a40:
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xd8
    blr


.globl calcViewAndDBEntry__8TMapWireFv
calcViewAndDBEntry__8TMapWireFv: # 0x80197a6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x3c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x40(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setFootPointsAtHanged__8TMapWireFPA4_f
setFootPointsAtHanged__8TMapWireFPA4_f: # 0x80197abc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    addi    r5, sp, 0xe4
    stw     r31, 0x12c(sp)
    addi    r31, r3, 0x0
    addi    r6, r31, 0x50
    stw     r30, 0x128(sp)
    sth     r0, 0x7c(r3)
    addi    r3, sp, 0xf0
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    addi    r4, sp, 0xd8
    stfs    f0, 0x50(r31)
    stfs    f1, 0x54(r31)
    stfs    f2, 0x58(r31)
    lwz     r7, 0x0(r31)
    lwz     r0, 0x4(r31)
    lfs     f0, -0x4238(r2)
    stw     r7, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0xe0(sp)
    lwz     r7, 0xc(r31)
    lwz     r0, 0x10(r31)
    stw     r7, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x14(r31)
    stw     r0, 0xec(sp)
    stfs    f0, 0xdc(sp)
    stfs    f0, 0xe8(sp)
    bl      MsPerpendicFootToLineR__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r5, 0xf0(sp)
    addi    r3, sp, 0x84
    lwz     r0, 0xe4(sp)
    addi    r4, sp, 0xd8
    stw     r5, 0xcc(sp)
    lwz     r5, 0xf4(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0xe8(sp)
    stw     r5, 0xd0(sp)
    lwz     r5, 0xf8(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0xec(sp)
    stw     r5, 0xd4(sp)
    stw     r0, 0x8c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x84(sp)
    lwz     r3, 0x88(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x10c(sp)
    stw     r0, 0x110(sp)
    lfs     f1, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x110(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r0, 0xcc(sp)
    fmr     f31, f1
    lwz     r4, 0xd0(sp)
    addi    r3, sp, 0x94
    stw     r0, 0x94(sp)
    lwz     r0, 0xd4(sp)
    stw     r4, 0x98(sp)
    addi    r4, sp, 0xd8
    stw     r0, 0x9c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x94(sp)
    lwz     r3, 0x98(sp)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0x100(sp)
    stw     r0, 0x104(sp)
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x100(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x104(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fdivs   f0, f1, f31
    li      r0, 0x2
    stfs    f0, 0x4c(r31)
    lfs     f1, -0x7ad8(r13)
    lfs     f0, 0x30(r31)
    lfs     f2, 0x4c(r31)
    fdivs   f0, f1, f0
    fsubs   f0, f2, f0
    stfs    f0, 0x74(r31)
    lfs     f1, -0x7ad8(r13)
    lfs     f0, 0x30(r31)
    lfs     f2, 0x4c(r31)
    fdivs   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x78(r31)
    sth     r0, 0x44(r31)
    lfs     f2, 0x4c(r31)
    lfs     f0, 0x30(r31)
    lfs     f1, -0x7ad8(r13)
    fmuls   f0, f2, f0
    lwz     r30, 0x48(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80197cb0
    lfs     f1, 0x74(r31)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xbc
    stfs    f1, 0x18(r30)
    bl      getPointPosAtHanged__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lfs     f2, 0xc4(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0x0(r30)
    stfs    f1, 0x4(r30)
    stfs    f2, 0x8(r30)
    b       branch_0x80197ccc

branch_0x80197cb0:
    stfs    f2, 0x18(r30)
    lfs     f2, 0x58(r31)
    lfs     f1, 0x54(r31)
    lfs     f0, 0x50(r31)
    stfs    f0, 0x0(r30)
    stfs    f1, 0x4(r30)
    stfs    f2, 0x8(r30)
branch_0x80197ccc:
    lfs     f1, -0x4234(r2)
    lfs     f3, 0x4c(r31)
    lfs     f0, 0x30(r31)
    fsubs   f1, f1, f3
    lfs     f2, -0x7ad8(r13)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80197d1c
    lfs     f1, 0x78(r31)
    addi    r3, r31, 0x0
    addi    r4, sp, 0xa8
    stfs    f1, 0x3c(r30)
    bl      getPointPosAtHanged__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lfs     f2, 0xb0(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0xa8(sp)
    stfs    f0, 0x24(r30)
    stfs    f1, 0x28(r30)
    stfs    f2, 0x2c(r30)
    b       branch_0x80197d38

branch_0x80197d1c:
    stfs    f3, 0x3c(r30)
    lfs     f2, 0x58(r31)
    lfs     f1, 0x54(r31)
    lfs     f0, 0x50(r31)
    stfs    f0, 0x24(r30)
    stfs    f1, 0x28(r30)
    stfs    f2, 0x2c(r30)
branch_0x80197d38:
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lwz     r31, 0x12c(sp)
    mtlr    r0
    lwz     r30, 0x128(sp)
    addi    sp, sp, 0x138
    blr


.globl getPointPosAtHanged__8TMapWireCFfPQ29JGeometry8TVec3_f_
getPointPosAtHanged__8TMapWireCFfPQ29JGeometry8TVec3_f_: # 0x80197d54
    lfs     f0, 0x4c(r3)
    lfs     f2, 0x18(r3)
    fsubs   f3, f1, f0
    lfs     f0, 0x50(r3)
    fmadds  f0, f2, f3, f0
    stfs    f0, 0x0(r4)
    lfs     f2, 0x20(r3)
    lfs     f0, 0x58(r3)
    fmadds  f0, f2, f3, f0
    stfs    f0, 0x8(r4)
    lfs     f2, 0x74(r3)
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x80197db0
    lfs     f3, 0x54(r3)
    fsubs   f0, f2, f1
    lfs     f1, 0x4(r3)
    fsubs   f1, f1, f3
    fmuls   f0, f1, f0
    fdivs   f0, f0, f2
    fadds   f0, f3, f0
    stfs    f0, 0x4(r4)
    blr

branch_0x80197db0:
    lfs     f3, 0x78(r3)
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    bne-    branch_0x80197dec
    lfs     f4, 0x54(r3)
    fsubs   f1, f1, f3
    lfs     f2, 0x10(r3)
    lfs     f0, -0x4234(r2)
    fsubs   f2, f2, f4
    fsubs   f0, f0, f3
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    stfs    f0, 0x4(r4)
    blr

branch_0x80197dec:
    lfs     f0, 0x54(r3)
    stfs    f0, 0x4(r4)
    blr


.globl release__8TMapWireFv
release__8TMapWireFv: # 0x80197df8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stfd    f30, 0x128(sp)
    stfd    f29, 0x120(sp)
    stfd    f28, 0x118(sp)
    stfd    f27, 0x110(sp)
    stfd    f26, 0x108(sp)
    stmw    r26, 0xf0(sp)
    mr      r28, r3
    lhz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x80198210
    li      r0, 0x2
    sth     r0, 0x7c(r28)
    lfs     f0, -0x4238(r2)
    stfs    f0, 0x58(r28)
    stfs    f0, 0x54(r28)
    stfs    f0, 0x50(r28)
    lhz     r0, 0x46(r28)
    sth     r0, 0x44(r28)
    lhz     r0, 0x44(r28)
    srawi   r0, r0, 1
    addze.  r0, r0
    mr      r30, r0
    beq-    branch_0x80197fd8
    xoris   r0, r30, 0x8000
    lfd     f30, -0x4208(r2)
    stw     r0, 0xec(sp)
    lis     r31, 0x4330
    lfs     f1, 0x4c(r28)
    li      r29, 0x0
    stw     r31, 0xe8(sp)
    lfs     f29, -0x4224(r2)
    li      r27, 0x0
    lfd     f0, 0xe8(sp)
    lfs     f27, -0x4234(r2)
    fsubs   f0, f0, f30
    lfs     f26, -0x41f4(r2)
    fdivs   f31, f1, f0
    b       branch_0x80197fd0

branch_0x80197ea0:
    lwz     r3, 0x48(r28)
    addi    r0, r29, 0x1
    xoris   r0, r0, 0x8000
    add     r5, r3, r27
    stw     r0, 0xec(sp)
    lwz     r4, 0xc(r5)
    addi    r3, sp, 0x94
    lwz     r0, 0x10(r5)
    stw     r31, 0xe8(sp)
    stw     r4, 0x0(r5)
    lfd     f0, 0xe8(sp)
    stw     r0, 0x4(r5)
    fsubs   f0, f0, f30
    lwz     r0, 0x14(r5)
    stw     r0, 0x8(r5)
    fmuls   f28, f31, f0
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x18(r5)
    lwz     r0, 0x48(r28)
    add     r26, r0, r27
    stfs    f28, 0x18(r26)
    lfs     f1, 0x18(r28)
    lfs     f0, 0x0(r28)
    lfs     f4, 0x1c(r28)
    lfs     f2, 0x4(r28)
    fmadds  f1, f1, f28, f0
    lfs     f3, 0x20(r28)
    lfs     f0, 0x8(r28)
    fmadds  f2, f4, f28, f2
    fmadds  f3, f3, f28, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80197408
    fmuls   f2, f29, f28
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f1, 0x1c(r28)
    addi    r3, sp, 0xa0
    lfs     f0, 0x4(r28)
    fctiwz  f2, f2
    lwz     r5, R13Off_m0x5ea8(r13)
    fmadds  f4, f1, f28, f0
    lfs     f1, 0x18(r28)
    lfs     f0, 0x0(r28)
    stfd    f2, 0xe0(sp)
    fmadds  f1, f1, f28, f0
    lfs     f5, 0x38(r28)
    lwz     r4, 0xe4(sp)
    lfs     f2, 0x20(r28)
    clrlwi  r4, r4, 16
    lfs     f0, 0x8(r28)
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    fmadds  f3, f2, f28, f0
    lfsx    f0, r5, r0
    fnmsubs  f2, f5, f0, f4
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80197408
    mr      r3, r28
    fmr     f1, f28
    bl      getPointPowerAtReleased__8TMapWireCFf
    lfs     f2, 0x60(r28)
    addi    r29, r29, 0x1
    lfs     f6, 0x98(sp)
    addi    r27, r27, 0x24
    lfs     f0, 0xa4(sp)
    fsubs   f3, f27, f2
    lfs     f4, 0x54(r28)
    fsubs   f2, f0, f6
    lfs     f5, 0x9c(sp)
    lfs     f0, 0x94(sp)
    fmadds  f2, f3, f2, f6
    stfs    f0, 0x0(r26)
    fmadds  f0, f1, f4, f2
    stfs    f0, 0x4(r26)
    stfs    f5, 0x8(r26)
    lfs     f0, 0x1c(r26)
    fsubs   f0, f0, f28
    fdivs   f0, f0, f26
    stfs    f0, 0x20(r26)
branch_0x80197fd0:
    cmpw    r29, r30
    blt+    branch_0x80197ea0
branch_0x80197fd8:
    lhz     r0, 0x44(r28)
    subf.   r0, r30, r0
    beq-    branch_0x80198168
    xoris   r0, r0, 0x8000
    lfs     f29, -0x4234(r2)
    stw     r0, 0xe4(sp)
    lis     r31, 0x4330
    lfs     f0, 0x4c(r28)
    mr      r29, r30
    stw     r31, 0xe0(sp)
    lfd     f30, -0x4208(r2)
    fsubs   f1, f29, f0
    lfd     f0, 0xe0(sp)
    mulli   r27, r29, 0x24
    lfs     f31, -0x4224(r2)
    fsubs   f0, f0, f30
    lfs     f26, -0x41f4(r2)
    fdivs   f27, f1, f0
    b       branch_0x8019815c

branch_0x80198024:
    lwz     r4, 0x48(r28)
    subf    r3, r30, r29
    addi    r0, r3, 0x1
    add     r6, r4, r27
    lwz     r5, 0xc(r6)
    xoris   r0, r0, 0x8000
    lwz     r4, 0x10(r6)
    addi    r3, sp, 0x6c
    stw     r0, 0xe4(sp)
    stw     r5, 0x0(r6)
    stw     r4, 0x4(r6)
    lwz     r0, 0x14(r6)
    stw     r31, 0xe0(sp)
    stw     r0, 0x8(r6)
    lfd     f0, 0xe0(sp)
    lfs     f2, 0x1c(r6)
    fsubs   f1, f0, f30
    stfs    f2, 0x18(r6)
    lfs     f0, 0x4c(r28)
    lwz     r0, 0x48(r28)
    fmadds  f28, f27, f1, f0
    add     r26, r0, r27
    stfs    f28, 0x18(r26)
    lfs     f1, 0x18(r28)
    lfs     f0, 0x0(r28)
    lfs     f4, 0x1c(r28)
    lfs     f2, 0x4(r28)
    fmadds  f1, f1, f28, f0
    lfs     f3, 0x20(r28)
    lfs     f0, 0x8(r28)
    fmadds  f2, f4, f28, f2
    fmadds  f3, f3, f28, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80197408
    fmuls   f2, f31, f28
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f1, 0x1c(r28)
    addi    r3, sp, 0x78
    lfs     f0, 0x4(r28)
    fctiwz  f2, f2
    lwz     r5, R13Off_m0x5ea8(r13)
    fmadds  f4, f1, f28, f0
    lfs     f1, 0x18(r28)
    lfs     f0, 0x0(r28)
    stfd    f2, 0xe8(sp)
    fmadds  f1, f1, f28, f0
    lfs     f5, 0x38(r28)
    lwz     r4, 0xec(sp)
    lfs     f2, 0x20(r28)
    clrlwi  r4, r4, 16
    lfs     f0, 0x8(r28)
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    fmadds  f3, f2, f28, f0
    lfsx    f0, r5, r0
    fnmsubs  f2, f5, f0, f4
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80197408
    mr      r3, r28
    fmr     f1, f28
    bl      getPointPowerAtReleased__8TMapWireCFf
    lfs     f2, 0x60(r28)
    addi    r29, r29, 0x1
    lfs     f6, 0x70(sp)
    addi    r27, r27, 0x24
    lfs     f0, 0x7c(sp)
    fsubs   f3, f29, f2
    lfs     f4, 0x54(r28)
    fsubs   f2, f0, f6
    lfs     f5, 0x74(sp)
    lfs     f0, 0x6c(sp)
    fmadds  f2, f3, f2, f6
    stfs    f0, 0x0(r26)
    fmadds  f0, f1, f4, f2
    stfs    f0, 0x4(r26)
    stfs    f5, 0x8(r26)
    lfs     f0, 0x1c(r26)
    fsubs   f0, f0, f28
    fdivs   f0, f0, f26
    stfs    f0, 0x20(r26)
branch_0x8019815c:
    lhz     r0, 0x44(r28)
    cmpw    r29, r0
    blt+    branch_0x80198024
branch_0x80198168:
    lfs     f0, 0x4c(r28)
    lfs     f2, -0x4228(r2)
    lwz     r3, R13Off_m0x60a0(r13)
    fsubs   f3, f0, f2
    lfs     f1, -0x4238(r2)
    lfs     f4, 0x0(r3)
    lfs     f0, -0x7ae4(r13)
    fabs    f3, f3
    fcmpo   cr0, f4, f1
    fmuls   f5, f0, f3
    ble-    branch_0x801981f0
    lwz     r4, R13Off_m0x60a4(r13)
    fmuls   f0, f4, f4
    lwz     r3, R13Off_m0x609c(r13)
    lfs     f3, 0x0(r4)
    lfs     f4, 0x0(r3)
    fmadds  f0, f3, f3, f0
    fmadds  f4, f4, f4, f0
    fcmpo   cr0, f4, f1
    cror    2, 0, 2
    bne-    branch_0x801981c0
    b       branch_0x801981e0

branch_0x801981c0:
    frsqrte f3, f4
    lfs     f0, -0x41f8(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801981e0:
    lfs     f0, -0x7ae0(r13)
    fmuls   f0, f0, f4
    stfs    f0, 0x64(r28)
    b       branch_0x801981f8

branch_0x801981f0:
    lfs     f0, -0x7adc(r13)
    stfs    f0, 0x64(r28)
branch_0x801981f8:
    lfs     f0, -0x7aec(r13)
    fmuls   f0, f0, f5
    stfs    f0, 0x68(r28)
    lfs     f0, -0x4234(r2)
    stfs    f0, 0x60(r28)
    stfs    f0, 0x5c(r28)
branch_0x80198210:
    lmw     r26, 0xf0(sp)
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lfd     f30, 0x128(sp)
    mtlr    r0
    lfd     f29, 0x120(sp)
    lfd     f28, 0x118(sp)
    lfd     f27, 0x110(sp)
    lfd     f26, 0x108(sp)
    addi    sp, sp, 0x138
    blr


.globl getPointPowerAtReleased__8TMapWireCFf
getPointPowerAtReleased__8TMapWireCFf: # 0x8019823c
    lfs     f2, 0x4c(r3)
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80198260
    lfs     f0, -0x4234(r2)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f1, f1, f0
    b       branch_0x8019826c

branch_0x80198260:
    fdivs   f0, f1, f2
    lfs     f1, -0x4234(r2)
    fsubs   f1, f1, f0
branch_0x8019826c:
    lfs     f0, -0x4234(r2)
    fnmsubs  f1, f1, f1, f0
    blr


.globl drawUpper__8TMapWireCFv
drawUpper__8TMapWireCFv: # 0x80198278
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lfs     f31, 0x6c(r3)
    li      r3, 0x98
    lfs     f0, -0x7ad4(r13)
    lfs     f30, 0x70(r31)
    lhz     r5, 0x44(r31)
    fmuls   f31, f31, f0
    fmuls   f30, f30, f0
    addi    r0, r5, 0x2
    clrlslwi  r5, r0, 17, 1
    bl      GXBegin
    lfs     f0, 0x0(r31)
    lis     r4, 0xcc01
    lfs     f2, 0x8(r31)
    li      r6, 0x0
    fadds   f1, f0, f31
    lfs     f3, 0x4(r31)
    fadds   f4, f2, f30
    fsubs   f0, f0, f31
    li      r3, 0x0
    stfs    f1, -0x8000(r4)
    fsubs   f1, f2, f30
    stfs    f3, -0x8000(r4)
    stfs    f4, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stfs    f3, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    b       branch_0x80198348

branch_0x80198304:
    lwz     r0, 0x48(r31)
    addi    r6, r6, 0x1
    add     r5, r0, r3
    lfs     f0, 0x0(r5)
    addi    r3, r3, 0x24
    lfs     f2, 0x8(r5)
    fadds   f1, f0, f31
    lfs     f3, 0x4(r5)
    fadds   f4, f2, f30
    fsubs   f0, f0, f31
    stfs    f1, -0x8000(r4)
    fsubs   f1, f2, f30
    stfs    f3, -0x8000(r4)
    stfs    f4, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stfs    f3, -0x8000(r4)
    stfs    f1, -0x8000(r4)
branch_0x80198348:
    lhz     r0, 0x44(r31)
    cmpw    r6, r0
    blt+    branch_0x80198304
    lfs     f0, 0xc(r31)
    lis     r3, 0xcc01
    lfs     f2, 0x14(r31)
    fadds   f1, f0, f31
    lfs     f3, 0x10(r31)
    fadds   f4, f2, f30
    fsubs   f0, f0, f31
    stfs    f1, -0x8000(r3)
    fsubs   f1, f2, f30
    stfs    f3, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl drawLower__8TMapWireCFv
drawLower__8TMapWireCFv: # 0x801983a8
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    lfs     f31, 0x6c(r3)
    li      r3, 0x98
    lfs     f0, -0x7ad4(r13)
    lfs     f30, 0x70(r30)
    lhz     r5, 0x44(r30)
    fmuls   f31, f31, f0
    fmuls   f30, f30, f0
    addi    r0, r5, 0x2
    clrlslwi  r5, r0, 17, 1
    bl      GXBegin
    lfs     f1, 0x0(r30)
    lis     r5, 0xcc01
    lfs     f2, 0x8(r30)
    li      r6, 0x0
    fsubs   f0, f1, f31
    lfs     f4, 0x4(r30)
    fsubs   f5, f2, f30
    lfs     f3, -0x7ad0(r13)
    li      r3, 0x0
    stfs    f0, -0x8000(r5)
    fsubs   f0, f4, f3
    stfs    f4, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f0, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    b       branch_0x80198478

branch_0x80198438:
    lwz     r0, 0x48(r30)
    addi    r6, r6, 0x1
    add     r4, r0, r3
    lfs     f1, 0x0(r4)
    addi    r3, r3, 0x24
    lfs     f2, 0x8(r4)
    fsubs   f0, f1, f31
    lfs     f4, 0x4(r4)
    fsubs   f5, f2, f30
    fsubs   f6, f4, f3
    stfs    f0, -0x8000(r5)
    stfs    f4, -0x8000(r5)
    stfs    f5, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stfs    f6, -0x8000(r5)
    stfs    f2, -0x8000(r5)
branch_0x80198478:
    lhz     r4, 0x44(r30)
    cmpw    r6, r4
    blt+    branch_0x80198438
    lfs     f2, 0xc(r30)
    addi    r0, r4, 0x2
    lfs     f3, 0x14(r30)
    lis     r31, 0xcc01
    fsubs   f1, f2, f31
    lfs     f4, 0x10(r30)
    fsubs   f5, f3, f30
    lfs     f0, -0x7ad0(r13)
    clrlslwi  r5, r0, 17, 1
    stfs    f1, -0x8000(r31)
    fsubs   f0, f4, f0
    li      r3, 0x98
    stfs    f4, -0x8000(r31)
    li      r4, 0x0
    stfs    f5, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f3, -0x8000(r31)
    bl      GXBegin
    lfs     f1, 0x4(r30)
    li      r5, 0x0
    lfs     f2, -0x7ad0(r13)
    li      r3, 0x0
    lfs     f4, 0x8(r30)
    lfs     f0, 0x0(r30)
    fsubs   f3, f1, f2
    fadds   f5, f4, f30
    stfs    f0, -0x8000(r31)
    fadds   f0, f0, f31
    stfs    f3, -0x8000(r31)
    stfs    f4, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f5, -0x8000(r31)
    b       branch_0x80198550

branch_0x80198510:
    lwz     r0, 0x48(r30)
    addi    r5, r5, 0x1
    add     r4, r0, r3
    lfs     f1, 0x4(r4)
    addi    r3, r3, 0x24
    lfs     f4, 0x8(r4)
    lfs     f0, 0x0(r4)
    fsubs   f3, f1, f2
    fadds   f5, f4, f30
    stfs    f0, -0x8000(r31)
    fadds   f0, f0, f31
    stfs    f3, -0x8000(r31)
    stfs    f4, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f5, -0x8000(r31)
branch_0x80198550:
    lhz     r0, 0x44(r30)
    cmpw    r5, r0
    blt+    branch_0x80198510
    lfs     f2, 0x10(r30)
    lis     r3, 0xcc01
    lfs     f1, -0x7ad0(r13)
    lfs     f3, 0x14(r30)
    lfs     f0, 0xc(r30)
    fsubs   f1, f2, f1
    fadds   f4, f3, f30
    stfs    f0, -0x8000(r3)
    fadds   f0, f0, f31
    stfs    f1, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl __ct__13TMapWirePointFv
__ct__13TMapWirePointFv: # 0x801985b4
    lfs     f0, -0x4238(r2)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
    blr


.globl __sinit_MapWire_cpp
__sinit_MapWire_cpp: # 0x801985dc
    mflr    r0
    lis     r3, unk_803f8258@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f8258@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80198624
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80198624:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80198654
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80198654:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80198684
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80198684:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801986b4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801986b4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801986e4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801986e4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80198714
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80198714:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80198744
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80198744:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80198774
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80198774:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801987a4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801987a4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801987d4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801987d4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80198804
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80198804:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80198834
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80198834:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80198864
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80198864:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80198894
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80198894:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801988c4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801988c4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

