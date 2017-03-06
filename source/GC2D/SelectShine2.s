
.globl __dt__12TSelectShineFv
__dt__12TSelectShineFv: # 0x80177984
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801779b8
    lis     r3, 0x803c
    addi    r3, r3, 0xf88
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x801779b8
    mr      r3, r31
    bl      __dl__FPv
branch_0x801779b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl move__12TSelectShineFv
move__12TSelectShineFv: # 0x801779d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    stw     r30, 0x150(sp)
    mr      r30, r3
    stw     r29, 0x14c(sp)
    lfs     f5, -0x4780(rtoc)
    lfs     f6, 0x28(r3)
    fcmpo   cr0, f6, f5
    bge-    branch_0x80177a38
    fsubs   f2, f5, f6
    lfs     f0, -0x477c(rtoc)
    lfs     f5, 0x2c(r30)
    fmuls   f4, f6, f6
    lfs     f1, -0x4774(rtoc)
    fmuls   f0, f0, f2
    lfs     f3, -0x4778(rtoc)
    fmuls   f1, f5, f1
    fmuls   f2, f2, f2
    fmuls   f0, f0, f6
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    fmadds  f0, f5, f4, f0
    fmr     f3, f0
    b       branch_0x80177b14

branch_0x80177a38:
    lfs     f2, -0x477c(rtoc)
    fcmpo   cr0, f6, f2
    bge-    branch_0x80177a80
    fsubs   f6, f6, f5
    lfs     f7, 0x2c(r30)
    lfs     f0, -0x4774(rtoc)
    lfs     f4, -0x4778(rtoc)
    fsubs   f5, f5, f6
    fmuls   f1, f7, f0
    fmuls   f3, f6, f6
    fmuls   f0, f2, f5
    fmuls   f2, f5, f5
    fmuls   f0, f0, f6
    fmuls   f0, f1, f0
    fmadds  f0, f7, f2, f0
    fmadds  f0, f4, f3, f0
    fmr     f3, f0
    b       branch_0x80177b14

branch_0x80177a80:
    lfs     f1, -0x4770(rtoc)
    fcmpo   cr0, f6, f1
    bge-    branch_0x80177acc
    fsubs   f6, f6, f2
    lfs     f1, 0x2c(r30)
    lfs     f0, -0x4774(rtoc)
    fneg    f7, f1
    lfs     f3, -0x4778(rtoc)
    fsubs   f5, f5, f6
    fmuls   f1, f7, f0
    fmuls   f4, f6, f6
    fmuls   f0, f2, f5
    fmuls   f2, f5, f5
    fmuls   f0, f0, f6
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    fmadds  f0, f7, f4, f0
    fmr     f3, f0
    b       branch_0x80177b14

branch_0x80177acc:
    lfs     f0, -0x476c(rtoc)
    fcmpo   cr0, f6, f0
    bge-    branch_0x80177b14
    fsubs   f6, f6, f1
    lfs     f1, 0x2c(r30)
    lfs     f0, -0x4774(rtoc)
    fneg    f7, f1
    lfs     f4, -0x4778(rtoc)
    fsubs   f5, f5, f6
    fmuls   f1, f7, f0
    fmuls   f3, f6, f6
    fmuls   f0, f2, f5
    fmuls   f2, f5, f5
    fmuls   f0, f0, f6
    fmuls   f0, f1, f0
    fmadds  f0, f7, f2, f0
    fmadds  f0, f4, f3, f0
    fmr     f3, f0
branch_0x80177b14:
    stfs    f3, 0x1c(r30)
    addi    r3, sp, 0x54
    addi    r4, r30, 0x18
    lwz     r6, 0x4(r30)
    lwz     r5, 0xc(r30)
    lwz     r0, 0x10(r30)
    addi    r29, r6, 0x20
    addi    r31, r29, 0x0
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x14(r30)
    stw     r0, 0x5c(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x54(sp)
    lwz     r3, 0x58(sp)
    stw     r0, 0x114(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0x118(sp)
    stw     r0, 0x11c(sp)
    lfs     f0, 0x114(sp)
    stfs    f0, 0xc(r29)
    lfs     f0, 0x118(sp)
    stfs    f0, 0x1c(r29)
    lfs     f1, 0x11c(sp)
    stfs    f1, 0x2c(r29)
    lfs     f0, -0x4768(rtoc)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x138(sp)
    lwz     r0, 0x13c(sp)
    stfd    f0, 0x140(sp)
    extsh   r0, r0
    cmpwi   r0, 0x1e
    lwz     r4, 0x144(sp)
    bge-    branch_0x80177ba4
    li      r4, 0x1e
branch_0x80177ba4:
    lbz     r0, 0x48(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80177bd4
    lha     r3, 0x3c(r30)
    extsh   r0, r4
    subi    r3, r3, 0x8
    sth     r3, 0x3c(r30)
    lha     r3, 0x3c(r30)
    cmpw    r3, r0
    bge-    branch_0x80177c38
    sth     r4, 0x3c(r30)
    b       branch_0x80177c38

branch_0x80177bd4:
    lbz     r0, 0x49(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80177c0c
    lha     r3, 0x3c(r30)
    addi    r0, r3, 0x8
    sth     r0, 0x3c(r30)
    lwz     r4, 0x8(r30)
    lha     r3, 0x3c(r30)
    lha     r4, 0x2(r4)
    subi    r0, r4, 0x1
    cmpw    r3, r0
    ble-    branch_0x80177c38
    sth     r0, 0x3c(r30)
    b       branch_0x80177c38

branch_0x80177c0c:
    extsh.  r0, r4
    sth     r4, 0x3c(r30)
    bge-    branch_0x80177c20
    li      r0, 0x0
    sth     r0, 0x3c(r30)
branch_0x80177c20:
    lwz     r3, 0x8(r30)
    extsh   r0, r4
    lha     r3, 0x2(r3)
    cmpw    r0, r3
    ble-    branch_0x80177c38
    sth     r3, 0x3c(r30)
branch_0x80177c38:
    lwz     r3, 0x8(r30)
    lis     r0, 0x4330
    lbz     r5, 0x4a(r30)
    lha     r4, 0x3c(r30)
    lha     r3, 0x2(r3)
    cmplwi  r5, 0x2
    lfd     f1, -0x4758(rtoc)
    divw    r3, r4, r3
    lfs     f2, -0x4780(rtoc)
    lfs     f3, -0x4764(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x13c(sp)
    stw     r0, 0x138(sp)
    lfd     f0, 0x138(sp)
    fsubs   f0, f0, f1
    fsubs   f0, f2, f0
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r29, 0x144(sp)
    beq-    branch_0x80177cd0
    cmplwi  r5, 0x0
    bne-    branch_0x80177cbc
    lwz     r3, 0x50(r30)
    mr      r4, r31
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    lwz     r3, 0x54(r30)
    mr      r4, r31
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    lwz     r3, 0x50(r30)
    stb     r29, 0x183(r3)
    lwz     r3, 0x54(r30)
    stb     r29, 0x183(r3)
branch_0x80177cbc:
    lwz     r3, 0x58(r30)
    mr      r4, r31
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    lwz     r3, 0x58(r30)
    stb     r29, 0x183(r3)
branch_0x80177cd0:
    lbz     r0, 0x24(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80177da8
    bl      SMSGetAnmFrameRate__Fv
    lbz     r0, 0x38(r30)
    lis     r29, 0x4330
    lfd     f3, -0x4758(rtoc)
    addi    r3, sp, 0xe4
    extsb   r0, r0
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4760(rtoc)
    stw     r0, 0x13c(sp)
    li      r4, 0x79
    stw     r29, 0x138(sp)
    lfd     f2, 0x138(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f2, f1
    fmuls   f1, f0, f1
    bl      PSMTXRotRad
    bl      SMSGetAnmFrameRate__Fv
    lbz     r3, 0x38(r30)
    lwz     r0, 0x34(r30)
    extsb   r3, r3
    lfd     f3, -0x4758(rtoc)
    xoris   r3, r3, 0x8000
    xoris   r0, r0, 0x8000
    stw     r3, 0x144(sp)
    stw     r0, 0x134(sp)
    stw     r29, 0x140(sp)
    stw     r29, 0x130(sp)
    lfd     f2, 0x140(sp)
    lfd     f0, 0x130(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x128(sp)
    lwz     r0, 0x12c(sp)
    stw     r0, 0x34(r30)
    lwz     r3, 0x34(r30)
    cmpwi   r3, 0x168
    ble-    branch_0x80177d80
    subi    r0, r3, 0x168
    stw     r0, 0x34(r30)
branch_0x80177d80:
    lwz     r3, 0x34(r30)
    cmpwi   r3, 0x0
    bge-    branch_0x80177d94
    addi    r0, r3, 0x168
    stw     r0, 0x34(r30)
branch_0x80177d94:
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0xe4
    bl      PSMTXConcat
    b       branch_0x80177e5c

branch_0x80177da8:
    lwz     r0, 0x34(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x80177e5c
    bl      SMSGetAnmFrameRate__Fv
    lbz     r0, 0x38(r30)
    lis     r3, 0x4330
    lfd     f2, -0x4758(rtoc)
    extsb   r4, r0
    lwz     r0, 0x34(r30)
    xoris   r4, r4, 0x8000
    stw     r4, 0x12c(sp)
    stw     r3, 0x128(sp)
    lfd     f0, 0x128(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x130(sp)
    lwz     r5, 0x134(sp)
    extsh   r4, r5
    add     r0, r0, r4
    stw     r0, 0x34(r30)
    lwz     r3, 0x34(r30)
    cmpwi   r3, 0x168
    ble-    branch_0x80177e18
    li      r0, 0x0
    subf    r3, r3, r4
    stw     r0, 0x34(r30)
    addi    r5, r3, 0x168
branch_0x80177e18:
    extsh   r0, r5
    lfd     f1, -0x4758(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x4760(rtoc)
    stw     r0, 0x12c(sp)
    lis     r0, 0x4330
    addi    r3, sp, 0xb4
    stw     r0, 0x128(sp)
    li      r4, 0x79
    lfd     f0, 0x128(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      PSMTXRotRad
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0xb4
    bl      PSMTXConcat
branch_0x80177e5c:
    lfs     f1, 0x28(r30)
    lfs     f0, 0x30(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r30)
    lfs     f1, 0x28(r30)
    lfs     f0, -0x476c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80177e84
    lfs     f0, -0x4778(rtoc)
    stfs    f0, 0x28(r30)
branch_0x80177e84:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    lwz     r29, 0x14c(sp)
    addi    sp, sp, 0x158
    blr


.globl __ct__12TSelectShineFP12J3DModelDataP11J3DAnmColorP17JPAEmitterManagerRQ29JGeometry8TVec3_f_sUcfff
__ct__12TSelectShineFP12J3DModelDataP11J3DAnmColorP17JPAEmitterManagerRQ29JGeometry8TVec3_f_sUcfff: # 0x80177ea0
    mflr    r0
    lis     r10, 0x803c
    stw     r0, 0x4(sp)
    addi    r0, r10, 0xf88
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    fmr     f31, f3
    stfd    f30, 0xf8(sp)
    fmr     f30, f2
    stfd    f29, 0xf0(sp)
    fmr     f29, f1
    stmw    r25, 0xd4(sp)
    mr      r31, r3
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r30, r7, 0x0
    addi    r29, r9, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stb     r0, 0x24(r3)
    lfs     f0, -0x4778(rtoc)
    stfs    f0, 0x28(r3)
    li      r3, 0xa0
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x30(r31)
    stw     r0, 0x34(r31)
    stb     r0, 0x38(r31)
    sth     r8, 0x3a(r31)
    sth     r0, 0x3c(r31)
    stb     r0, 0x3e(r31)
    stfs    f0, 0x40(r31)
    stfs    f0, 0x44(r31)
    stb     r0, 0x48(r31)
    stb     r0, 0x49(r31)
    stb     r0, 0x4a(r31)
    stw     r0, 0x4c(r31)
    stw     r0, 0x50(r31)
    stw     r0, 0x54(r31)
    stw     r0, 0x58(r31)
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80177f60
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80177f60:
    stw     r25, 0x4(r31)
    li      r5, 0x3
    lis     r0, 0x4330
    stw     r27, 0x8(r31)
    addi    r3, sp, 0x98
    li      r4, 0x79
    lfs     f0, 0x0(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x14(r31)
    lfs     f0, -0x4778(rtoc)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x1c(r31)
    stfs    f0, 0x20(r31)
    stw     r28, 0x4c(r31)
    stfs    f30, 0x30(r31)
    stfs    f31, 0x2c(r31)
    stfs    f29, 0x28(r31)
    stb     r5, 0x38(r31)
    lwz     r5, 0x4(r31)
    lfs     f0, 0xc(r31)
    addi    r5, r5, 0x20
    stfs    f0, 0xc(r5)
    mr      r30, r5
    lfs     f0, 0x10(r31)
    stfs    f0, 0x1c(r5)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x2c(r5)
    lha     r5, 0x3a(r31)
    lfd     f1, -0x4758(rtoc)
    xoris   r5, r5, 0x8000
    lfs     f2, -0x4760(rtoc)
    stw     r5, 0xcc(sp)
    stw     r0, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      PSMTXRotRad
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x98
    bl      PSMTXConcat
    stb     r29, 0x4a(r31)
    lbz     r0, 0x4a(r31)
    cmplwi  r0, 0x2
    beq-    branch_0x80178134
    lwz     r5, 0xc(r31)
    addi    r3, sp, 0x4c
    lwz     r0, 0x10(r31)
    addi    r4, r31, 0x18
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x14(r31)
    stw     r0, 0x54(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x50(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    lbz     r0, 0x4a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801780cc
    lwz     r3, 0x4c(r31)
    addi    r4, sp, 0x8c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, 0x4c(r31)
    addi    r4, sp, 0x8c
    li      r5, 0x1
    lwz     r0, 0xc8(r3)
    li      r6, 0x0
    li      r7, 0x0
    stw     r0, 0x50(r31)
    lwz     r3, 0x4c(r31)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r3, 0x4c(r31)
    addi    r4, sp, 0x8c
    li      r5, 0x2
    lwz     r0, 0xc8(r3)
    li      r6, 0x0
    li      r7, 0x0
    stw     r0, 0x54(r31)
    lwz     r3, 0x4c(r31)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    b       branch_0x801780e4

branch_0x801780cc:
    lwz     r3, 0x4c(r31)
    addi    r4, sp, 0x8c
    li      r5, 0x3
    li      r6, 0x0
    li      r7, 0x0
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x801780e4:
    lwz     r3, 0x4c(r31)
    lwz     r0, 0xc8(r3)
    stw     r0, 0x58(r31)
    lbz     r0, 0x4a(r31)
    cmplwi  r0, 0x2
    beq-    branch_0x80178134
    cmplwi  r0, 0x0
    bne-    branch_0x80178124
    lwz     r3, 0x54(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x50(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
branch_0x80178124:
    lwz     r3, 0x58(r31)
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r3)
branch_0x80178134:
    mr      r3, r31
    lmw     r25, 0xd4(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    addi    sp, sp, 0x108
    blr


.globl perform__19TSelectShineManagerFUlPQ26JDrama9TGraphics
perform__19TSelectShineManagerFUlPQ26JDrama9TGraphics: # 0x80178158
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x220(sp)
    stfd    f31, 0x218(sp)
    stfd    f30, 0x210(sp)
    stfd    f29, 0x208(sp)
    stfd    f28, 0x200(sp)
    stfd    f27, 0x1f8(sp)
    stfd    f26, 0x1f0(sp)
    stfd    f25, 0x1e8(sp)
    stfd    f24, 0x1e0(sp)
    stfd    f23, 0x1d8(sp)
    stfd    f22, 0x1d0(sp)
    stfd    f21, 0x1c8(sp)
    stmw    r21, 0x19c(sp)
    addi    r26, r4, 0x0
    lis     r4, 0x803f
    addi    r25, r3, 0x0
    addi    r27, r5, 0x0
    addi    r30, r4, 0x42f8
    beq-    branch_0x801784d0
    li      r22, 0x0
    addi    r23, r22, 0x0
    b       branch_0x801781dc

branch_0x801781bc:
    addi    r0, r23, 0x10
    lwzx    r3, r25, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
    addi    r23, r23, 0x4
branch_0x801781dc:
    lwz     r0, 0x88(r25)
    cmpw    r22, r0
    blt+    branch_0x801781bc
    lbz     r0, 0xa4(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x80178200
    lbz     r0, 0xa5(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x801784d0
branch_0x80178200:
    lwz     r3, 0x9c(r25)
    lis     r0, 0x4330
    lfd     f2, -0x4758(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, 0xa0(r25)
    stw     r3, 0x194(sp)
    stw     r0, 0x190(sp)
    lfd     f1, 0x190(sp)
    fsubs   f1, f1, f2
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x188(sp)
    lwz     r0, 0x18c(sp)
    stw     r0, 0x9c(r25)
    lbz     r0, 0xa4(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x80178264
    lwz     r0, 0x8c(r25)
    lwz     r3, 0x9c(r25)
    mulli   r0, r0, -0x28
    cmpw    r3, r0
    bge-    branch_0x80178264
    stw     r0, 0x9c(r25)
    li      r0, 0x0
    stb     r0, 0xa4(r25)
branch_0x80178264:
    lbz     r0, 0xa5(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x80178290
    lwz     r0, 0x8c(r25)
    lwz     r3, 0x9c(r25)
    mulli   r0, r0, -0x28
    cmpw    r3, r0
    ble-    branch_0x80178290
    stw     r0, 0x9c(r25)
    li      r0, 0x0
    stb     r0, 0xa5(r25)
branch_0x80178290:
    lfs     f24, -0x4750(rtoc)
    li      r29, 0x0
    lfd     f25, -0x4758(rtoc)
    li      r24, 0x0
    lfs     f26, -0x474c(rtoc)
    lfs     f27, -0x4748(rtoc)
    li      r23, 0x0
    lfs     f28, -0x4744(rtoc)
    lis     r31, 0x4330
    lfs     f29, -0x4740(rtoc)
    lfs     f30, -0x4780(rtoc)
    lfs     f31, -0x4778(rtoc)
    lfs     f23, -0x4760(rtoc)
    b       branch_0x801784c4

branch_0x801782c8:
    lwz     r0, 0x9c(r25)
    add     r0, r0, r23
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x18c(sp)
    stw     r31, 0x188(sp)
    lfd     f0, 0x188(sp)
    fsubs   f0, f0, f25
    fmuls   f0, f24, f0
    fctiwz  f0, f0
    stfd    f0, 0x190(sp)
    lwz     r21, 0x194(sp)
    mr      r3, r21
    bl      JMASCos__Fs
    lfs     f0, 0x8(r30)
    mr      r3, r21
    lfs     f22, 0x4(r30)
    fmadds  f21, f26, f1, f0
    bl      JMASSin__Fs
    lfs     f0, 0x0(r30)
    fmr     f2, f22
    fmr     f3, f21
    addi    r3, sp, 0x164
    fmadds  f1, f27, f1, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80178618
    lwz     r0, 0x164(sp)
    addi    r28, r24, 0x10
    lwz     r4, 0x168(sp)
    add     r28, r25, r28
    stw     r0, 0x1c(sp)
    lwz     r0, 0x16c(sp)
    addi    r3, sp, 0xd8
    stw     r4, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r5, 0x1c(sp)
    lwz     r4, 0x20(sp)
    stw     r5, 0x158(sp)
    lwz     r0, 0x24(sp)
    stw     r4, 0x15c(sp)
    stw     r0, 0x160(sp)
    lwz     r6, 0x0(r28)
    stw     r5, 0xc(r6)
    stw     r4, 0x10(r6)
    lwz     r0, 0x24(sp)
    stw     r0, 0x14(r6)
    lwz     r6, 0x0(r28)
    lwz     r5, 0xc(r6)
    addi    r4, r6, 0x18
    lwz     r0, 0x10(r6)
    stw     r5, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x14(r6)
    stw     r0, 0xe0(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xd8(sp)
    addi    r3, sp, 0xc8
    lwz     r5, 0xdc(sp)
    addi    r4, sp, 0x134
    stw     r0, 0x144(sp)
    lwz     r0, 0xe0(sp)
    stw     r5, 0x148(sp)
    stw     r0, 0x14c(sp)
    lwz     r0, 0x144(sp)
    lwz     r5, 0x148(sp)
    stw     r0, 0x170(sp)
    lwz     r0, 0x14c(sp)
    stw     r5, 0x174(sp)
    stw     r0, 0x178(sp)
    stfs    f28, 0x124(sp)
    stfs    f29, 0x128(sp)
    lfs     f1, 0x170(sp)
    lfs     f0, 0x124(sp)
    stfs    f1, 0x134(sp)
    lfs     f1, 0x178(sp)
    stfs    f0, 0xc8(sp)
    stfs    f1, 0x138(sp)
    lfs     f0, 0x128(sp)
    stfs    f0, 0xcc(sp)
    bl      sub__Q29JGeometry8TVec2_f_FRCQ29JGeometry8TVec2_f_
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x12c(sp)
    lfs     f0, 0xcc(sp)
    stfs    f0, 0x130(sp)
    lfs     f0, 0x12c(sp)
    stfs    f0, 0x124(sp)
    lfs     f0, 0x130(sp)
    stfs    f0, 0x128(sp)
    lfs     f0, 0x128(sp)
    lfs     f2, 0x124(sp)
    fmuls   f1, f0, f31
    fmuls   f0, f0, f30
    fmsubs  f1, f2, f30, f1
    fmadds  f2, f2, f31, f0
    bl      atan2f
    fabs    f2, f1
    lfs     f1, 0x158(sp)
    lfs     f0, 0x0(r30)
    fmuls   f2, f24, f2
    fcmpo   cr0, f1, f0
    fctiwz  f0, f2
    stfd    f0, 0x180(sp)
    lwz     r22, 0x184(sp)
    ble-    branch_0x80178468
    mulli   r22, r22, -0x1
branch_0x80178468:
    lwz     r21, 0x0(r28)
    extsh   r0, r22
    addi    r3, sp, 0xf4
    lha     r5, 0x3a(r21)
    li      r4, 0x79
    lwz     r6, 0x4(r21)
    subf    r0, r5, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x184(sp)
    addi    r28, r6, 0x20
    stw     r31, 0x180(sp)
    lfd     f0, 0x180(sp)
    fsubs   f0, f0, f25
    fmuls   f1, f23, f0
    bl      PSMTXRotRad
    addi    r3, r28, 0x0
    addi    r5, r28, 0x0
    addi    r4, sp, 0xf4
    bl      PSMTXConcat
    sth     r22, 0x3a(r21)
    addi    r29, r29, 0x1
    addi    r24, r24, 0x4
    addi    r23, r23, 0x28
branch_0x801784c4:
    lwz     r0, 0x88(r25)
    cmpw    r29, r0
    blt+    branch_0x801782c8
branch_0x801784d0:
    rlwinm. r0, r26, 0, 30, 30
    beq-    branch_0x8017855c
    lfd     f24, -0x4758(rtoc)
    li      r22, 0x0
    li      r28, 0x0
    lis     r23, 0x4330
    b       branch_0x80178550

branch_0x801784ec:
    addi    r21, r28, 0x10
    add     r21, r25, r21
    lwz     r3, 0x0(r21)
    lha     r0, 0x3c(r3)
    lwz     r3, 0x8(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x184(sp)
    stw     r23, 0x180(sp)
    lfd     f0, 0x180(sp)
    fsubs   f0, f0, f24
    stfs    f0, 0x4(r3)
    lwz     r3, 0x0(r21)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r21)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
    addi    r28, r28, 0x4
branch_0x80178550:
    lwz     r0, 0x88(r25)
    cmpw    r22, r0
    blt+    branch_0x801784ec
branch_0x8017855c:
    rlwinm. r0, r26, 0, 28, 28
    beq-    branch_0x801785b4
    lis     r4, 0x8040
    addi    r23, r4, 0x45dc
    addi    r3, r27, 0xb4
    addi    r4, r23, 0x0
    bl      PSMTXCopy
    mr      r3, r23
    bl      drawInit__6J3DSysFv
    addi    r21, r23, 0x4c
    li      r0, 0x3
    stw     r0, 0x4c(r23)
    lwz     r3, 0x50(r25)
    bl      draw__13J3DDrawBufferCFv
    li      r0, 0x4
    stw     r0, 0x0(r21)
    lwz     r3, 0x54(r25)
    bl      draw__13J3DDrawBufferCFv
    lwz     r3, 0x50(r25)
    bl      frameInit__13J3DDrawBufferFv
    lwz     r3, 0x54(r25)
    bl      frameInit__13J3DDrawBufferFv
branch_0x801785b4:
    lmw     r21, 0x19c(sp)
    lwz     r0, 0x224(sp)
    lfd     f31, 0x218(sp)
    lfd     f30, 0x210(sp)
    mtlr    r0
    lfd     f29, 0x208(sp)
    lfd     f28, 0x200(sp)
    lfd     f27, 0x1f8(sp)
    lfd     f26, 0x1f0(sp)
    lfd     f25, 0x1e8(sp)
    lfd     f24, 0x1e0(sp)
    lfd     f23, 0x1d8(sp)
    lfd     f22, 0x1d0(sp)
    lfd     f21, 0x1c8(sp)
    addi    sp, sp, 0x220
    blr


.globl sub__Q29JGeometry8TVec2_f_FRCQ29JGeometry8TVec2_f_
sub__Q29JGeometry8TVec2_f_FRCQ29JGeometry8TVec2_f_: # 0x801785f4
    lfs     f1, 0x0(r3)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r3)
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80178618
set_f___Q29JGeometry8TVec3_f_Ffff_80178618: # 0x80178618
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl startDecrease__19TSelectShineManagerFi
startDecrease__19TSelectShineManagerFi: # 0x80178628
    stwu    sp, -0x30(sp)
    lwz     r0, 0x8c(r3)
    slwi    r0, r0, 2
    add     r5, r3, r0
    lwz     r6, 0x10(r5)
    lbz     r0, 0x4a(r6)
    cmplwi  r0, 0x2
    beq-    branch_0x80178680
    cmplwi  r0, 0x0
    bne-    branch_0x80178670
    lwz     r5, 0x54(r6)
    lwz     r0, 0x11c(r5)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r5)
    lwz     r5, 0x50(r6)
    lwz     r0, 0x11c(r5)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r5)
branch_0x80178670:
    lwz     r5, 0x58(r6)
    lwz     r0, 0x11c(r5)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r5)
branch_0x80178680:
    mulli   r0, r4, 0x28
    lis     r5, 0x6666
    addi    r5, r5, 0x6667
    mulhw   r0, r5, r0
    srawi   r0, r0, 2
    srwi    r5, r0, 31
    add     r0, r0, r5
    xoris   r0, r0, 0x8000
    li      r5, 0x1
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    stb     r5, 0xa5(r3)
    stw     r0, 0x28(sp)
    lfd     f1, -0x4758(rtoc)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa0(r3)
    lwz     r0, 0x8c(r3)
    subf    r0, r4, r0
    stw     r0, 0x8c(r3)
    lwz     r0, 0x8c(r3)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r4, 0x10(r3)
    lbz     r0, 0x4a(r4)
    cmplwi  r0, 0x2
    beq-    branch_0x80178724
    cmplwi  r0, 0x0
    bne-    branch_0x80178714
    lwz     r3, 0x54(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x50(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80178714:
    lwz     r3, 0x58(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80178724:
    addi    sp, sp, 0x30
    blr


.globl startIncrease__19TSelectShineManagerFi
startIncrease__19TSelectShineManagerFi: # 0x8017872c
    stwu    sp, -0x30(sp)
    lwz     r0, 0x8c(r3)
    slwi    r0, r0, 2
    add     r5, r3, r0
    lwz     r6, 0x10(r5)
    lbz     r0, 0x4a(r6)
    cmplwi  r0, 0x2
    beq-    branch_0x80178784
    cmplwi  r0, 0x0
    bne-    branch_0x80178774
    lwz     r5, 0x54(r6)
    lwz     r0, 0x11c(r5)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r5)
    lwz     r5, 0x50(r6)
    lwz     r0, 0x11c(r5)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r5)
branch_0x80178774:
    lwz     r5, 0x58(r6)
    lwz     r0, 0x11c(r5)
    ori     r0, r0, 0x1
    stw     r0, 0x11c(r5)
branch_0x80178784:
    mulli   r0, r4, -0x28
    lis     r5, 0x6666
    addi    r5, r5, 0x6667
    mulhw   r0, r5, r0
    srawi   r0, r0, 2
    srwi    r5, r0, 31
    add     r0, r0, r5
    xoris   r0, r0, 0x8000
    li      r5, 0x1
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    stb     r5, 0xa4(r3)
    stw     r0, 0x28(sp)
    lfd     f1, -0x4758(rtoc)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa0(r3)
    lwz     r0, 0x8c(r3)
    add     r0, r0, r4
    stw     r0, 0x8c(r3)
    lwz     r0, 0x8c(r3)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r4, 0x10(r3)
    lbz     r0, 0x4a(r4)
    cmplwi  r0, 0x2
    beq-    branch_0x80178828
    cmplwi  r0, 0x0
    bne-    branch_0x80178818
    lwz     r3, 0x54(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x50(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80178818:
    lwz     r3, 0x58(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80178828:
    addi    sp, sp, 0x30
    blr


.globl startClose__19TSelectShineManagerFv
startClose__19TSelectShineManagerFv: # 0x80178830
    lwz     r4, 0x8c(r3)
    li      r6, 0x0
    li      r0, 0x2
    slwi    r4, r4, 2
    mtctr   r0
    add     r4, r3, r4
    lwz     r5, 0x10(r4)
    addi    r4, r6, 0x0
    li      r8, 0x0
    stb     r6, 0x24(r5)
    li      r0, 0x1
branch_0x8017885c:
    addi    r5, r4, 0x10
    lwzx    r7, r3, r5
    cmplwi  r7, 0x0
    beq-    branch_0x8017888c
    lwz     r5, 0x8c(r3)
    cmpw    r8, r5
    beq-    branch_0x8017888c
    lbz     r5, 0x49(r7)
    cmplwi  r5, 0x0
    bne-    branch_0x8017888c
    stb     r0, 0x49(r7)
    stb     r6, 0x48(r7)
branch_0x8017888c:
    addi    r5, r4, 0x14
    lwzx    r7, r3, r5
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r7, 0x0
    beq-    branch_0x801788c4
    lwz     r5, 0x8c(r3)
    cmpw    r8, r5
    beq-    branch_0x801788c4
    lbz     r5, 0x49(r7)
    cmplwi  r5, 0x0
    bne-    branch_0x801788c4
    stb     r0, 0x49(r7)
    stb     r6, 0x48(r7)
branch_0x801788c4:
    addi    r5, r4, 0x14
    lwzx    r7, r3, r5
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r7, 0x0
    beq-    branch_0x801788fc
    lwz     r5, 0x8c(r3)
    cmpw    r8, r5
    beq-    branch_0x801788fc
    lbz     r5, 0x49(r7)
    cmplwi  r5, 0x0
    bne-    branch_0x801788fc
    stb     r0, 0x49(r7)
    stb     r6, 0x48(r7)
branch_0x801788fc:
    addi    r5, r4, 0x14
    lwzx    r7, r3, r5
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r7, 0x0
    beq-    branch_0x80178934
    lwz     r5, 0x8c(r3)
    cmpw    r8, r5
    beq-    branch_0x80178934
    lbz     r5, 0x49(r7)
    cmplwi  r5, 0x0
    bne-    branch_0x80178934
    stb     r0, 0x49(r7)
    stb     r6, 0x48(r7)
branch_0x80178934:
    addi    r8, r8, 0x1
    addi    r4, r4, 0x4
    bdnz+      branch_0x8017885c
    li      r0, 0x1
    stb     r0, 0xa7(r3)
    blr


.globl initData__19TSelectShineManagerFPUcUcUcP17JPAEmitterManager
initData__19TSelectShineManagerFPUcUcUcP17JPAEmitterManager: # 0x8017894c
    mflr    r0
    lis     r9, 0x8039
    stw     r0, 0x4(sp)
    lis     r8, 0x803f
    stwu    sp, -0x1b0(sp)
    stfd    f31, 0x1a8(sp)
    stfd    f30, 0x1a0(sp)
    stfd    f29, 0x198(sp)
    stfd    f28, 0x190(sp)
    stfd    f27, 0x188(sp)
    stfd    f26, 0x180(sp)
    stfd    f25, 0x178(sp)
    stfd    f24, 0x170(sp)
    stfd    f23, 0x168(sp)
    stfd    f22, 0x160(sp)
    stfd    f21, 0x158(sp)
    stmw    r18, 0x120(sp)
    addi    r31, r3, 0x0
    addi    r25, r4, 0x0
    addi    r24, r5, 0x0
    addi    r23, r6, 0x0
    addi    r29, r7, 0x0
    subi    r26, r9, 0x78f8
    addi    r30, r8, 0x42f8
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x801789c8
    addi    r3, r18, 0x0
    li      r4, 0x400
    bl      __ct__13J3DDrawBufferFUl
branch_0x801789c8:
    stw     r18, 0x50(r31)
    lis     r3, 0x8040
    addi    r4, r3, 0x45dc
    lwz     r0, 0x50(r31)
    li      r3, 0x24
    stw     r0, 0x44(r4)
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x801789f8
    addi    r3, r18, 0x0
    li      r4, 0x400
    bl      __ct__13J3DDrawBufferFUl
branch_0x801789f8:
    stw     r18, 0x54(r31)
    lis     r3, 0x8040
    addi    r4, r3, 0x45dc
    lwz     r0, 0x54(r31)
    addi    r3, r26, 0x20
    stw     r0, 0x48(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r18, r3, 0x0
    addi    r3, r26, 0x38
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r19, r3, 0x0
    addi    r3, r18, 0x0
    lis     r4, 0x5104
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r28, r3, 0x0
    addi    r3, r19, 0x0
    bl      load__20J3DAnmLoaderDataBaseFPCv
    addi    r27, r3, 0x0
    addi    r4, r28, 0x0
    bl      searchUpdateMaterialID__11J3DAnmColorFP12J3DModelData
    lis     r3, 0x803e
    addi    r22, r3, 0x1798
    li      r21, 0x0
    b       branch_0x80178a94

branch_0x80178a58:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x80178a74
    stw     r22, 0x0(r19)
    mr      r3, r19
    bl      initialize__14J3DMaterialAnmFv
branch_0x80178a74:
    lwz     r3, 0x28(r28)
    clrlslwi  r18, r21, 16, 2
    lwzx    r3, r3, r18
    bl      change__11J3DMaterialFv
    lwz     r3, 0x28(r28)
    addi    r21, r21, 0x1
    lwzx    r3, r3, r18
    stw     r19, 0x38(r3)
branch_0x80178a94:
    lhz     r0, 0x24(r28)
    clrlwi  r3, r21, 16
    cmplw   r3, r0
    blt+    branch_0x80178a58
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    bl      entryMatColorAnimator__12J3DModelDataFP11J3DAnmColor
    addi    r3, r26, 0x50
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r18, r3, 0x0
    addi    r3, r26, 0x70
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r19, r3, 0x0
    addi    r3, r18, 0x0
    lis     r4, 0x5104
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r21, r3, 0x0
    addi    r3, r19, 0x0
    bl      load__20J3DAnmLoaderDataBaseFPCv
    addi    r22, r3, 0x0
    addi    r4, r21, 0x0
    bl      searchUpdateMaterialID__11J3DAnmColorFP12J3DModelData
    lis     r3, 0x803e
    addi    r26, r3, 0x1798
    li      r20, 0x0
    b       branch_0x80178b38

branch_0x80178afc:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x80178b18
    stw     r26, 0x0(r19)
    mr      r3, r19
    bl      initialize__14J3DMaterialAnmFv
branch_0x80178b18:
    lwz     r3, 0x28(r21)
    clrlslwi  r18, r20, 16, 2
    lwzx    r3, r3, r18
    bl      change__11J3DMaterialFv
    lwz     r3, 0x28(r21)
    addi    r20, r20, 0x1
    lwzx    r3, r3, r18
    stw     r19, 0x38(r3)
branch_0x80178b38:
    lhz     r0, 0x24(r28)
    clrlwi  r3, r20, 16
    cmplw   r3, r0
    blt+    branch_0x80178afc
    addi    r3, r21, 0x0
    addi    r4, r22, 0x0
    bl      entryMatColorAnimator__12J3DModelDataFP11J3DAnmColor
    clrlwi  r0, r24, 24
    stw     r0, 0x88(r31)
    clrlwi  r0, r23, 24
    addi    r26, r25, 0x0
    stw     r0, 0x8c(r31)
    li      r20, 0x0
    li      r25, 0x0
    lwz     r0, 0x8c(r31)
    li      r18, 0x0
    lis     r23, 0x4330
    mulli   r0, r0, -0x28
    stw     r0, 0x9c(r31)
    lfd     f29, -0x4758(rtoc)
    lfs     f30, -0x473c(rtoc)
    lfs     f31, -0x4738(rtoc)
    lfs     f21, -0x4734(rtoc)
    lfs     f22, -0x4750(rtoc)
    lfs     f23, -0x474c(rtoc)
    lfs     f24, -0x4748(rtoc)
    lfs     f25, -0x4744(rtoc)
    lfs     f26, -0x4740(rtoc)
    lfs     f27, -0x4780(rtoc)
    lfs     f28, -0x4778(rtoc)
branch_0x80178bb0:
    lwz     r0, 0x9c(r31)
    addi    r3, sp, 0xe8
    lwz     r6, -0x5ea4(r13)
    add     r4, r0, r18
    lwz     r0, -0x5eac(r13)
    extsh   r4, r4
    lfs     f3, 0x8(r30)
    xoris   r5, r4, 0x8000
    lwz     r4, -0x5ea8(r13)
    stw     r5, 0x11c(sp)
    lfs     f0, 0x0(r30)
    stw     r23, 0x118(sp)
    lfs     f2, 0x4(r30)
    lfd     f1, 0x118(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f22, f1
    fctiwz  f1, f1
    stfd    f1, 0x110(sp)
    lwz     r5, 0x114(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f4, r6, r0
    lfsx    f1, r4, r0
    fmadds  f3, f23, f4, f3
    fmadds  f1, f24, f1, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80178618
    lwz     r0, 0xe8(sp)
    lwz     r3, 0xec(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0xf0(sp)
    stw     r3, 0xf8(sp)
    stw     r0, 0xfc(sp)
    stfs    f25, 0xb8(sp)
    stfs    f26, 0xbc(sp)
    lfs     f0, 0xb8(sp)
    lfs     f2, 0xfc(sp)
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0xa4(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0xf4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0xa4(sp)
    lfs     f0, 0xa0(sp)
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xa4(sp)
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xbc(sp)
    lfs     f2, 0xb8(sp)
    fmuls   f1, f0, f28
    fmuls   f0, f0, f27
    fmsubs  f1, f2, f27, f1
    fmadds  f2, f2, f28, f0
    bl      atan2f
    fabs    f2, f1
    lfs     f1, 0xf4(sp)
    lfs     f0, 0x0(r30)
    fmuls   f2, f22, f2
    fcmpo   cr0, f1, f0
    fctiwz  f0, f2
    stfd    f0, 0x108(sp)
    lwz     r24, 0x10c(sp)
    ble-    branch_0x80178cd0
    mulli   r24, r24, -0x1
branch_0x80178cd0:
    lbz     r3, 0x0(r26)
    cmplwi  r3, 0x3
    bne-    branch_0x80178d64
    li      r3, 0x5c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x80178d58
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, -0x4730(rtoc)
    stw     r0, 0x10c(sp)
    mr      r3, r19
    lfs     f3, -0x472c(rtoc)
    mr      r4, r28
    stw     r23, 0x108(sp)
    mr      r5, r27
    lfd     f0, 0x108(sp)
    addi    r6, r29, 0x0
    addi    r8, r24, 0x0
    fsubs   f0, f0, f29
    addi    r7, sp, 0xf4
    li      r9, 0x0
    fmuls   f0, f30, f0
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x110(sp)
    lwz     r0, 0x114(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x11c(sp)
    stw     r23, 0x118(sp)
    lfd     f0, 0x118(sp)
    fsubs   f0, f0, f29
    fdivs   f1, f0, f21
    bl      __ct__12TSelectShineFP12J3DModelDataP11J3DAnmColorP17JPAEmitterManagerRQ29JGeometry8TVec3_f_sUcfff
branch_0x80178d58:
    addi    r0, r25, 0x10
    stwx    r19, r31, r0
    b       branch_0x80178e08

branch_0x80178d64:
    subi    r0, r3, 0x1
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bgt-    branch_0x80178dfc
    li      r3, 0x5c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x80178df0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, -0x4730(rtoc)
    stw     r0, 0x10c(sp)
    mr      r3, r19
    lfs     f3, -0x472c(rtoc)
    mr      r4, r21
    stw     r23, 0x108(sp)
    mr      r5, r22
    lfd     f0, 0x108(sp)
    addi    r6, r29, 0x0
    addi    r8, r24, 0x0
    fsubs   f0, f0, f29
    addi    r7, sp, 0xf4
    li      r9, 0x1
    fmuls   f0, f30, f0
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x110(sp)
    lwz     r0, 0x114(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x11c(sp)
    stw     r23, 0x118(sp)
    lfd     f0, 0x118(sp)
    fsubs   f0, f0, f29
    fdivs   f1, f0, f21
    bl      __ct__12TSelectShineFP12J3DModelDataP11J3DAnmColorP17JPAEmitterManagerRQ29JGeometry8TVec3_f_sUcfff
branch_0x80178df0:
    addi    r0, r25, 0x10
    stwx    r19, r31, r0
    b       branch_0x80178e08

branch_0x80178dfc:
    addi    r0, r25, 0x10
    li      r3, 0x0
    stwx    r3, r31, r0
branch_0x80178e08:
    addi    r20, r20, 0x1
    cmpwi   r20, 0x8
    addi    r25, r25, 0x4
    addi    r26, r26, 0x1
    addi    r18, r18, 0x28
    blt+    branch_0x80178bb0
    lwz     r0, 0x8c(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0x10(r3)
    lbz     r0, 0x4a(r4)
    cmplwi  r0, 0x2
    beq-    branch_0x80178e74
    cmplwi  r0, 0x0
    bne-    branch_0x80178e64
    lwz     r3, 0x54(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
    lwz     r3, 0x50(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80178e64:
    lwz     r3, 0x58(r4)
    lwz     r0, 0x11c(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x11c(r3)
branch_0x80178e74:
    lmw     r18, 0x120(sp)
    lwz     r0, 0x1b4(sp)
    lfd     f31, 0x1a8(sp)
    lfd     f30, 0x1a0(sp)
    mtlr    r0
    lfd     f29, 0x198(sp)
    lfd     f28, 0x190(sp)
    lfd     f27, 0x188(sp)
    lfd     f26, 0x180(sp)
    lfd     f25, 0x178(sp)
    lfd     f24, 0x170(sp)
    lfd     f23, 0x168(sp)
    lfd     f22, 0x160(sp)
    lfd     f21, 0x158(sp)
    addi    sp, sp, 0x1b0
    blr


.globl __ct__19TSelectShineManagerFPCc
__ct__19TSelectShineManagerFPCc: # 0x80178eb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r8, 0x0
    lis     r3, 0x803c
    sth     r8, 0xc(r31)
    addi    r0, r3, 0xf98
    lis     r3, 0x8002
    stw     r0, 0x0(r31)
    addi    r4, r3, 0x10dc
    addi    r3, r31, 0xa8
    stw     r8, 0x50(r31)
    li      r5, 0x0
    li      r6, 0xc
    stw     r8, 0x54(r31)
    li      r7, 0x8
    lfs     f0, -0x4778(rtoc)
    stfs    f0, 0x78(r31)
    stfs    f0, 0x7c(r31)
    stw     r8, 0x88(r31)
    stfs    f0, 0x90(r31)
    stfs    f0, 0x94(r31)
    stw     r8, 0x98(r31)
    stw     r8, 0x9c(r31)
    stfs    f0, 0xa0(r31)
    stb     r8, 0xa4(r31)
    stb     r8, 0xa5(r31)
    stb     r8, 0xa6(r31)
    stb     r8, 0xa7(r31)
    bl      __construct_array
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19TSelectShineManagerFv
__dt__19TSelectShineManagerFv: # 0x80178f78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80178fd0
    lis     r3, 0x803c
    addi    r0, r3, 0xf98
    stw     r0, 0x0(r30)
    beq-    branch_0x80178fc0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80178fc0:
    extsh.  r0, r31
    ble-    branch_0x80178fd0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80178fd0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_SelectShine2_cpp
__sinit_SelectShine2_cpp: # 0x80178fec
    lfs     f0, -0x4744(rtoc)
    lis     r3, 0x803f
    stfsu   f0, 0x42f8(r3)
    lfs     f0, -0x4728(rtoc)
    stfs    f0, 0x4(r3)
    lfs     f0, -0x4724(rtoc)
    stfs    f0, 0x8(r3)
    blr

