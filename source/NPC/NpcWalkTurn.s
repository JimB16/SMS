
.globl isTurnToMarioWhenApproach__8TBaseNPCCFv
isTurnToMarioWhenApproach__8TBaseNPCCFv: # 0x802169e4
    lfs     f1, -0x19b0(rtoc)
    lfs     f0, 0x178(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80216a00
    lwz     r6, 0x170(r3)
    rlwinm. r0, r6, 0, 22, 22
    beq-    branch_0x80216a08
branch_0x80216a00:
    li      r3, 0x0
    blr

branch_0x80216a08:
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x19
    cmpw    r5, r0
    li      r3, 0x1
    bge-    branch_0x80216a40
    addi    r0, r4, 0x16
    cmpw    r5, r0
    bge-    branch_0x80216a30
    b       branch_0x80216a40

branch_0x80216a30:
    andi.   r0, r6, 0x7e7f
    beqlr-    

    li      r3, 0x0
    blr

branch_0x80216a40:
    li      r3, 0x0
    blr


.globl isTurnToMarioWhenTalk__8TBaseNPCCFv
isTurnToMarioWhenTalk__8TBaseNPCCFv: # 0x80216a48
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x1c
    cmpw    r5, r0
    li      r6, 0x1
    beq-    branch_0x80216aa4
    bge-    branch_0x80216a90
    addi    r0, r4, 0x9
    cmpw    r5, r0
    bge-    branch_0x80216a80
    addi    r0, r4, 0x7
    cmpw    r5, r0
    bge-    branch_0x80216a9c
    b       branch_0x80216aa4

branch_0x80216a80:
    addi    r0, r4, 0x1a
    cmpw    r5, r0
    bge-    branch_0x80216a9c
    b       branch_0x80216aa4

branch_0x80216a90:
    addi    r0, r4, 0x1e
    cmpw    r5, r0
    bge-    branch_0x80216aa4
branch_0x80216a9c:
    li      r6, 0x0
    b       branch_0x80216ab4

branch_0x80216aa4:
    lwz     r0, 0x170(r3)
    andi.   r0, r0, 0xc01
    beq-    branch_0x80216ab4
    li      r6, 0x0
branch_0x80216ab4:
    mr      r3, r6
    blr


.globl isNeedTurnToFirstState__8TBaseNPCCFv
isNeedTurnToFirstState__8TBaseNPCCFv: # 0x80216abc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lfs     f1, -0x19b0(rtoc)
    lfs     f0, 0x178(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80216af4
    lwz     r0, 0x170(r29)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80216afc
branch_0x80216af4:
    li      r3, 0x0
    b       branch_0x80216b88

branch_0x80216afc:
    lis     r3, 0x400
    lwz     r4, 0x4c(r29)
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    li      r30, 0x0
    bge-    branch_0x80216b24
    addi    r0, r3, 0x8
    cmpw    r4, r0
    beq-    branch_0x80216b84
    b       branch_0x80216b34

branch_0x80216b24:
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80216b34
    b       branch_0x80216b84

branch_0x80216b34:
    lwz     r3, 0x8c(r29)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80216b48
    b       branch_0x80216b4c

branch_0x80216b48:
    lwz     r31, 0x1c(r3)
branch_0x80216b4c:
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r31, r3
    beq-    branch_0x80216b64
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r31, r3
    bne-    branch_0x80216b84
branch_0x80216b64:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    beq-    branch_0x80216b80
    lwz     r0, 0x170(r29)
    andi.   r0, r0, 0xc01
    bne-    branch_0x80216b84
branch_0x80216b80:
    li      r30, 0x1
branch_0x80216b84:
    mr      r3, r30
branch_0x80216b88:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl execTurnToFirstState__8TBaseNPCFv
execTurnToFirstState__8TBaseNPCFv: # 0x80216ba4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    lfs     f1, 0x34(r3)
    lfs     f0, 0x1a4(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80216bd8
    li      r3, 0x1
    b       branch_0x80216c6c

branch_0x80216bd8:
    lfs     f0, -0x19ac(rtoc)
    li      r31, 0x0
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    sth     r3, 0x30(sp)
    lfs     f0, -0x19ac(rtoc)
    lfs     f1, 0x1a4(r29)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r4, 0x228(r29)
    mr      r30, r3
    lfs     f0, -0x19ac(rtoc)
    lfs     f1, 0x2c0(r4)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, sp, 0x30
    bl      CLBChaseGeneralConstantSpecifySpeed_s___FPsss
    cmpwi   r3, 0x0
    bne-    branch_0x80216c3c
    lfs     f0, 0x1a4(r29)
    li      r31, 0x1
    stfs    f0, 0x34(r29)
    b       branch_0x80216c68

branch_0x80216c3c:
    lha     r3, 0x30(sp)
    lis     r0, 0x4330
    lfd     f1, -0x19a0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x19a8(rtoc)
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x34(r29)
branch_0x80216c68:
    mr      r3, r31
branch_0x80216c6c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl execUTurn__8TBaseNPCFv
execUTurn__8TBaseNPCFv: # 0x80216c88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    lwz     r3, 0xf4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80216cb4
    addi    r6, r3, 0x10
    b       branch_0x80216cb8

branch_0x80216cb4:
    addi    r6, r30, 0xf8
branch_0x80216cb8:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x48
    lwz     r0, 0x4(r6)
    addi    r4, sp, 0x3c
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x4c(sp)
    lfs     f3, 0x34(r30)
    fmr     f2, f0
    fcmpu   cr0, f3, f0
    bne-    branch_0x80216d28
    li      r3, 0x1
    b       branch_0x80216e50

branch_0x80216d28:
    lfs     f1, -0x19b0(rtoc)
    lfs     f0, 0x178(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80216d44
    lwz     r0, 0x170(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80216d4c
branch_0x80216d44:
    li      r3, 0x0
    b       branch_0x80216e50

branch_0x80216d4c:
    fmr     f1, f2
    lfs     f0, -0x1998(rtoc)
    li      r31, 0x0
    b       branch_0x80216d60

branch_0x80216d5c:
    fsubs   f1, f1, f0
branch_0x80216d60:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x80216d5c
    lfs     f2, -0x1998(rtoc)
    lfs     f0, -0x19b0(rtoc)
    b       branch_0x80216d7c

branch_0x80216d78:
    fadds   f1, f1, f2
branch_0x80216d7c:
    fcmpo   cr0, f1, f0
    blt+    branch_0x80216d78
    lfs     f0, -0x1998(rtoc)
    b       branch_0x80216d90

branch_0x80216d8c:
    fsubs   f3, f3, f0
branch_0x80216d90:
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    beq+    branch_0x80216d8c
    lfs     f2, -0x1998(rtoc)
    lfs     f0, -0x19b0(rtoc)
    b       branch_0x80216dac

branch_0x80216da8:
    fadds   f3, f3, f2
branch_0x80216dac:
    fcmpo   cr0, f3, f0
    blt+    branch_0x80216da8
    stfs    f3, 0x34(r30)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 10, 10
    beq-    branch_0x80216de0
    lfs     f2, 0x34(r30)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80216df8
    lfs     f0, -0x1998(rtoc)
    fsubs   f0, f2, f0
    stfs    f0, 0x34(r30)
    b       branch_0x80216df8

branch_0x80216de0:
    lfs     f2, 0x34(r30)
    fcmpo   cr0, f2, f1
    bge-    branch_0x80216df8
    lfs     f0, -0x1998(rtoc)
    fadds   f0, f2, f0
    stfs    f0, 0x34(r30)
branch_0x80216df8:
    lwz     r4, 0x228(r30)
    addi    r3, r30, 0x34
    lfs     f2, 0x2d4(r4)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f2, 0x34(r30)
    lfs     f0, -0x1998(rtoc)
    b       branch_0x80216e18

branch_0x80216e14:
    fsubs   f2, f2, f0
branch_0x80216e18:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80216e14
    lfs     f1, -0x1998(rtoc)
    lfs     f0, -0x19b0(rtoc)
    b       branch_0x80216e34

branch_0x80216e30:
    fadds   f2, f2, f1
branch_0x80216e34:
    fcmpo   cr0, f2, f0
    blt+    branch_0x80216e30
    cmpwi   r3, 0x0
    stfs    f2, 0x34(r30)
    bne-    branch_0x80216e4c
    li      r31, 0x1
branch_0x80216e4c:
    mr      r3, r31
branch_0x80216e50:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl execWalk__8TBaseNPCFb
execWalk__8TBaseNPCFb: # 0x80216e68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stw     r31, 0x124(sp)
    mr      r31, r3
    stw     r30, 0x120(sp)
    lhz     r0, 0x1e2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80216ef0
    lwz     r6, gpMarDirector(r13)
    li      r3, 0x1
    addi    r5, r3, 0x0
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x80216eb4
    cmplwi  r0, 0x2
    beq-    branch_0x80216eb4
    li      r5, 0x0
branch_0x80216eb4:
    clrlwi. r0, r5, 24
    bne-    branch_0x80216ecc
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x4
    beq-    branch_0x80216ecc
    li      r3, 0x0
branch_0x80216ecc:
    clrlwi. r0, r3, 24
    bne-    branch_0x80216ef0
    lfs     f1, -0x19b0(rtoc)
    lfs     f0, 0x178(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80216ef0
    lwz     r5, 0x170(r31)
    rlwinm. r0, r5, 0, 22, 22
    beq-    branch_0x80216f00
branch_0x80216ef0:
    lfs     f0, -0x19b0(rtoc)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    b       branch_0x8021722c

branch_0x80216f00:
    clrlwi. r0, r4, 24
    beq-    branch_0x802170dc
    lbz     r0, 0x1da(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x802170dc
    rlwinm. r0, r5, 0, 28, 28
    lfs     f1, -0x1994(rtoc)
    beq-    branch_0x80216f24
    lfs     f1, -0x1990(rtoc)
branch_0x80216f24:
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x80216f3c
    addi    r4, r4, 0x10
    b       branch_0x80216f40

branch_0x80216f3c:
    addi    r4, r3, 0x4
branch_0x80216f40:
    addi    r3, r31, 0x10
    addi    r5, r31, 0x34
    bl      SMS_GoRotate__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x80216f64
    addi    r4, r4, 0x10
    b       branch_0x80216f68

branch_0x80216f64:
    addi    r4, r3, 0x4
branch_0x80216f68:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x19b0(rtoc)
    stw     r3, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xe4(sp)
    lfs     f2, 0xdc(sp)
    lfs     f1, 0x10(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0xdc(sp)
    lfs     f2, 0xe0(sp)
    lfs     f1, 0x14(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0xe0(sp)
    lfs     f2, 0xe4(sp)
    lfs     f1, 0x18(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0xe4(sp)
    lwz     r0, 0xdc(sp)
    lwz     r3, 0xe0(sp)
    stw     r0, 0xfc(sp)
    lwz     r0, 0xe4(sp)
    stw     r3, 0x100(sp)
    stw     r0, 0x104(sp)
    lwz     r0, 0xfc(sp)
    lwz     r3, 0x100(sp)
    stw     r0, 0x10c(sp)
    lwz     r0, 0x104(sp)
    stw     r3, 0x110(sp)
    stw     r0, 0x114(sp)
    lfs     f1, 0x114(sp)
    lfs     f2, 0x10c(sp)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80217010
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80217008
    lfs     f2, -0x198c(rtoc)
    b       branch_0x80217084

branch_0x80217008:
    lfs     f2, -0x1988(rtoc)
    b       branch_0x80217084

branch_0x80217010:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8021704c
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x19a0(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x19a8(rtoc)
    stw     r0, 0x11c(sp)
    lis     r0, 0x4330
    stw     r0, 0x118(sp)
    lfd     f1, 0x118(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x80217084

branch_0x8021704c:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x19a0(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x19a8(rtoc)
    stw     r0, 0x11c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1984(rtoc)
    stw     r0, 0x118(sp)
    lfd     f2, 0x118(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x80217084:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x1998(rtoc)
    fsubs   f1, f1, f2
    fabs    f2, f1
    b       branch_0x8021709c

branch_0x80217098:
    fsubs   f2, f2, f0
branch_0x8021709c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80217098
    lfs     f1, -0x1998(rtoc)
    lfs     f0, -0x19b0(rtoc)
    b       branch_0x802170b8

branch_0x802170b4:
    fadds   f2, f2, f1
branch_0x802170b8:
    fcmpo   cr0, f2, f0
    blt+    branch_0x802170b4
    lfs     f0, -0x1980(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8021722c
    lbz     r0, 0x1da(r31)
    clrrwi  r0, r0, 1
    stb     r0, 0x1da(r31)
    b       branch_0x8021722c

branch_0x802170dc:
    clrlwi. r0, r4, 24
    beq-    branch_0x80217144
    lwz     r3, 0xd0(r31)
    lwz     r4, 0x228(r31)
    lwz     r0, 0x14(r3)
    lfs     f2, 0x108(r4)
    cmpwi   r0, 0x8
    lfs     f1, 0xb8(r4)
    beq-    branch_0x80217118
    bge-    branch_0x80217138
    cmpwi   r0, 0x0
    beq-    branch_0x80217110
    b       branch_0x80217138

branch_0x80217110:
    lfs     f1, 0xcc(r4)
    b       branch_0x80217138

branch_0x80217118:
    rlwinm. r0, r5, 0, 17, 17
    lfs     f1, 0xe0(r4)
    lfs     f2, 0xf4(r4)
    beq-    branch_0x80217138
    lwz     r3, -0x6220(r13)
    lfs     f0, 0x270(r3)
    fmuls   f1, f1, f0
    fmuls   f2, f2, f0
branch_0x80217138:
    addi    r3, r31, 0x140
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    b       branch_0x80217158

branch_0x80217144:
    lwz     r4, 0x228(r31)
    addi    r3, r31, 0x140
    lfs     f1, -0x19b0(rtoc)
    lfs     f2, 0x11c(r4)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
branch_0x80217158:
    lfs     f1, 0x140(r31)
    lfs     f0, -0x1980(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80217178
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    b       branch_0x80217184

branch_0x80217178:
    lwz     r3, 0x228(r31)
    lfs     f0, 0x130(r3)
    stfs    f0, 0x144(r31)
branch_0x80217184:
    lwz     r3, 0xf4(r31)
    li      r30, 0x1
    cmplwi  r3, 0x0
    beq-    branch_0x8021719c
    addi    r5, r3, 0x10
    b       branch_0x802171a0

branch_0x8021719c:
    addi    r5, r31, 0xf8
branch_0x802171a0:
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0x9c
    lwz     r0, 0x4(r5)
    lfs     f2, -0x19b0(rtoc)
    stw     r4, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x98(sp)
    lfs     f4, 0x98(sp)
    lfs     f3, 0x18(r31)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x10(r31)
    fsubs   f3, f4, f3
    fsubs   f1, f1, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80217248
    lfs     f1, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xa4(sp)
    fmuls   f0, f0, f0
    lfs     f1, -0x197c(rtoc)
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f31, f3, f0
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    bge-    branch_0x80217210
    li      r30, 0x0
branch_0x80217210:
    clrlwi. r0, r30, 24
    beq-    branch_0x8021722c
    lfs     f1, 0x140(r31)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    lfs     f3, -0x19b0(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x8021722c:
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lwz     r31, 0x124(sp)
    mtlr    r0
    lwz     r30, 0x120(sp)
    addi    sp, sp, 0x130
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80217248
set_f___Q29JGeometry8TVec3_f_Ffff_80217248: # 0x80217248
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr

