
.globl changeBackup__9TWaterGunFv
changeBackup__9TWaterGunFv: # 0x80268d84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lfs     f1, -0xc18(r2)
    lfs     f0, 0x1cfc(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80268dd8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x812
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80268dd0
    li      r3, 0x812
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80268dd0:
    lfs     f0, 0x1dcc(r31)
    stfs    f0, 0x1d00(r31)
branch_0x80268dd8:
    lfs     f1, -0xc14(r2)
    lfs     f0, 0x1cfc(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80268e1c
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x811
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80268e10
    li      r3, 0x811
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80268e10:
    lfs     f0, 0x1dcc(r31)
    fneg    f0, f0
    stfs    f0, 0x1d00(r31)
branch_0x80268e1c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl damage__9TWaterGunFv
damage__9TWaterGunFv: # 0x80268e30
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80268e78
    lbz     r4, 0x1c84(r3)
    lwz     r0, 0x1c80(r3)
    slwi    r4, r4, 2
    add     r4, r3, r4
    lwz     r4, 0x1c68(r4)
    lwz     r4, 0x130(r4)
    subf    r0, r4, r0
    stw     r0, 0x1c80(r3)
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bge-    branch_0x80268e70
    li      r0, 0x0
    stw     r0, 0x1c80(r3)
branch_0x80268e70:
    li      r3, 0x1
    blr

branch_0x80268e78:
    li      r3, 0x0
    blr


.globl suck__9TWaterGunFv
suck__9TWaterGunFv: # 0x80268e80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80268ea4
    li      r3, 0x0
    b       branch_0x80268f84

branch_0x80268ea4:
    lbz     r5, 0x1c8c(r3)
    slwi    r0, r0, 2
    add     r4, r3, r0
    lfd     f2, -0xc10(r2)
    stw     r5, 0x84(sp)
    lis     r0, 0x4330
    lwz     r4, 0x1c68(r4)
    stw     r0, 0x80(sp)
    lfs     f0, 0x144(r4)
    lfd     f1, 0x80(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    stfd    f0, 0x78(sp)
    cmpwi   r0, 0x0
    lwz     r4, 0x7c(sp)
    ble-    branch_0x80268f80
    lwz     r0, 0x1c80(r3)
    add     r0, r0, r4
    stw     r0, 0x1c80(r3)
    lbz     r4, 0x1c84(r3)
    lwz     r0, 0x1c80(r3)
    slwi    r4, r4, 2
    add     r4, r3, r4
    lwz     r4, 0x1c68(r4)
    lwz     r4, 0xcc(r4)
    cmpw    r0, r4
    ble-    branch_0x80268f20
    stw     r4, 0x1c80(r3)
branch_0x80268f20:
    lbz     r0, 0x1c84(r3)
    lwz     r5, 0x1c80(r3)
    slwi    r0, r0, 2
    add     r4, r3, r0
    lwz     r4, 0x1c68(r4)
    lwz     r0, 0xcc(r4)
    cmpw    r5, r0
    bge-    branch_0x80268f78
    lwz     r0, R13Off_m0x6044(r13)
    addi    r31, r3, 0x1c90
    li      r4, 0xf
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80268f78
    addi    r4, r31, 0x0
    li      r3, 0xf
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80268f78:
    li      r3, 0x1
    b       branch_0x80268f84

branch_0x80268f80:
    li      r3, 0x0
branch_0x80268f84:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl emit__9TWaterGunFv
emit__9TWaterGunFv: # 0x80268f98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stmw    r27, 0x9c(sp)
    mr      r31, r3
    lwz     r3, 0x8(r3)
    lwz     r3, 0x118(r3)
    rlwinm. r0, r3, 0, 19, 19
    beq-    branch_0x80268fc8
    li      r0, 0x1
    b       branch_0x80268fcc

branch_0x80268fc8:
    li      r0, 0x0
branch_0x80268fcc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80269020
    rlwinm. r0, r3, 0, 14, 15
    beq-    branch_0x80268fe4
    li      r0, 0x1
    b       branch_0x80268fe8

branch_0x80268fe4:
    li      r0, 0x0
branch_0x80268fe8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80269020
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    cmplwi  r3, 0x0
    beq-    branch_0x80269020
    lwz     r4, 0x8(r31)
    lfs     f1, -0xc08(r2)
    lfs     f0, 0xf0(r4)
    lfs     f2, 0x1c(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    blt-    branch_0x80269224
branch_0x80269020:
    lwz     r3, 0x8(r31)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80269040
    lfs     f1, 0x1cec(r31)
    lfs     f0, -0xc18(r2)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x80269224
branch_0x80269040:
    lhz     r0, 0x4(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80269054
    li      r0, 0x1
    b       branch_0x80269058

branch_0x80269054:
    li      r0, 0x0
branch_0x80269058:
    clrlwi. r0, r0, 24
    beq-    branch_0x80269070
    lhz     r0, 0x4(r31)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0x4(r31)
    b       branch_0x80269224

branch_0x80269070:
    lbz     r29, 0x1c84(r31)
    lis     r3, nozzleBmdData@ha
    addi    r0, r3, nozzleBmdData@l
    slwi    r4, r29, 2
    mulli   r3, r29, 0x1c
    add     r4, r31, r4
    lwz     r28, 0x1c68(r4)
    add     r30, r0, r3
    li      r27, 0x0
    b       branch_0x802690b4

branch_0x80269098:
    mr      r3, r28
    lwz     r12, 0x364(r28)
    mr      r4, r27
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
branch_0x802690b4:
    lbz     r0, 0x14(r30)
    cmpw    r27, r0
    blt+    branch_0x80269098
    lwz     r0, 0x1c80(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x80269224
    cmpwi   r29, 0x3
    beq-    branch_0x80269154
    bge-    branch_0x802690f0
    cmpwi   r29, 0x1
    beq-    branch_0x80269224
    bge-    branch_0x802691ac
    cmpwi   r29, 0x0
    bge-    branch_0x80269100
    b       branch_0x80269224

branch_0x802690f0:
    cmpwi   r29, 0x5
    beq-    branch_0x80269154
    bge-    branch_0x80269224
    b       branch_0x802691e4

branch_0x80269100:
    lbz     r0, 0x1c84(r31)
    addi    r30, r31, 0x1c90
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x24
    slwi    r0, r0, 2
    add     r5, r31, r0
    lwz     r5, 0x1c68(r5)
    lfs     f31, 0x374(r5)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80269154
    fmr     f1, f31
    addi    r4, r30, 0x0
    li      r3, 0x24
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80269154:
    lbz     r0, 0x1c84(r31)
    addi    r30, r31, 0x1c90
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    slwi    r0, r0, 2
    add     r5, r31, r0
    lwz     r5, 0x1c68(r5)
    lfs     f31, 0x378(r5)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80269224
    fmr     f1, f31
    addi    r4, r30, 0x0
    li      r3, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x80269224

branch_0x802691ac:
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r31, 0x1c90
    li      r4, 0x18
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80269224
    addi    r4, r30, 0x0
    li      r3, 0x18
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80269224

branch_0x802691e4:
    lbz     r0, 0x1c86(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80269224
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r31, 0x1c90
    li      r4, 0x18
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80269224
    addi    r4, r30, 0x0
    li      r3, 0x18
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80269224:
    lmw     r27, 0x9c(sp)
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl triggerPressureMovement__9TWaterGunFRC20TMarioControllerWork
triggerPressureMovement__9TWaterGunFRC20TMarioControllerWork: # 0x8026923c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lfs     f1, -0xc04(r2)
    lfs     f0, 0x1c(r4)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x1c8c(r3)
    lbz     r0, 0x1c84(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1c8c(r31)
    lbz     r3, 0x1c8d(r31)
    cmplw   r0, r3
    ble-    branch_0x802692a4
    stb     r0, 0x1c8d(r31)
    b       branch_0x802692c0

branch_0x802692a4:
    cmplwi  r3, 0x0
    beq-    branch_0x802692b8
    addi    r0, r3, -0x1
    stb     r0, 0x1c8d(r31)
    b       branch_0x802692c0

branch_0x802692b8:
    li      r0, 0x0
    stb     r0, 0x1c8d(r31)
branch_0x802692c0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl rotateProp__9TWaterGunFf
rotateProp__9TWaterGunFf: # 0x802692d4
    stwu    sp, -0x40(sp)
    lbz     r0, 0x1c84(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x80269374
    lha     r0, 0x1cd2(r3)
    lis     r4, 0x4330
    lfd     f2, -0xc00(r2)
    xoris   r0, r0, 0x8000
    lfs     f3, 0x1d68(r3)
    stw     r0, 0x3c(sp)
    stw     r4, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f2
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    sth     r0, 0x1cd2(r3)
    lha     r0, 0x1cd2(r3)
    lfs     f0, 0x1d7c(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x2c(sp)
    stw     r4, 0x28(sp)
    lfd     f1, 0x28(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    sth     r0, 0x1cd2(r3)
    lha     r4, 0x1d90(r3)
    lha     r0, 0x1cd2(r3)
    cmpw    r4, r0
    bge-    branch_0x80269360
    sth     r4, 0x1cd2(r3)
branch_0x80269360:
    lha     r4, 0x1cd0(r3)
    lha     r0, 0x1cd2(r3)
    add     r0, r4, r0
    sth     r0, 0x1cd0(r3)
    b       branch_0x80269380

branch_0x80269374:
    li      r0, 0x0
    sth     r0, 0x1cd2(r3)
    sth     r0, 0x1cd0(r3)
branch_0x80269380:
    addi    sp, sp, 0x40
    blr


.globl getEmitPosDirSpeed__9TWaterGunFiPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
getEmitPosDirSpeed__9TWaterGunFiPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x80269388
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    bl      getEmitMtx__9TWaterGunFi
    mulli   r0, r28, 0xc
    add     r4, r27, r0
    lfs     f0, 0x1c90(r4)
    cmplwi  r3, 0x0
    stfs    f0, 0x0(r29)
    lfs     f0, 0x1c94(r4)
    stfs    f0, 0x4(r29)
    lfs     f0, 0x1c98(r4)
    stfs    f0, 0x8(r29)
    beq-    branch_0x802693f4
    lfs     f0, 0x0(r3)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x4(r30)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x8(r30)
    b       branch_0x80269408

branch_0x802693f4:
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x0(r30)
    stfs    f0, 0x4(r30)
    lfs     f0, -0xc14(r2)
    stfs    f0, 0x8(r30)
branch_0x80269408:
    lwz     r3, 0x8(r27)
    lfs     f1, -0xbf8(r2)
    lfs     f0, 0xa4(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x4(r31)
    lwz     r3, 0x8(r27)
    lfs     f0, 0xac(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r31)
    lwz     r0, 0x54(sp)
    lmw     r27, 0x3c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl getPressureMax__9TWaterGunFv
getPressureMax__9TWaterGunFv: # 0x80269448
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lbz     r0, 0x1c84(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026949c
    lbz     r0, 0x1c84(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x2d4(r3)
    b       branch_0x802694a0

branch_0x8026949c:
    lfs     f1, -0xc18(r2)
branch_0x802694a0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getPressure__9TWaterGunFv
getPressure__9TWaterGunFv: # 0x802694b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lbz     r0, 0x1c84(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x80269508
    lbz     r0, 0x1c84(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x388(r3)
    b       branch_0x8026950c

branch_0x80269508:
    lfs     f1, -0xc18(r2)
branch_0x8026950c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl isPressureOn__9TWaterGunFv
isPressureOn__9TWaterGunFv: # 0x80269520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lbz     r0, 0x1c84(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x80269584
    lbz     r0, 0x1c84(r31)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x388(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80269584
    li      r3, 0x1
    b       branch_0x80269588

branch_0x80269584:
    li      r3, 0x0
branch_0x80269588:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setAmountToRate__9TWaterGunFf
setAmountToRate__9TWaterGunFf: # 0x8026959c
    stwu    sp, -0x58(sp)
    lbz     r0, 0x1c84(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x802695c4
    slwi    r0, r0, 2
    add     r4, r3, r0
    lwz     r4, 0x1c68(r4)
    lwz     r0, 0xcc(r4)
    stw     r0, 0x1c80(r3)
    b       branch_0x80269604

branch_0x802695c4:
    slwi    r0, r0, 2
    lfd     f2, -0xc00(r2)
    add     r4, r3, r0
    lwz     r4, 0x1c68(r4)
    lis     r0, 0x4330
    lwz     r4, 0xcc(r4)
    xoris   r4, r4, 0x8000
    stw     r4, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x1c80(r3)
branch_0x80269604:
    addi    sp, sp, 0x58
    blr


.globl getCurrentNozzle__9TWaterGunCFv
getCurrentNozzle__9TWaterGunCFv: # 0x8026960c
    lbz     r0, 0x1c84(r3)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x1c68(r3)
    blr


.globl isEmitting__9TWaterGunFv
isEmitting__9TWaterGunFv: # 0x80269620
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80269648
    li      r3, 0x0
    b       branch_0x80269708

branch_0x80269648:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80269680
    cmplwi  r3, 0x4
    beq-    branch_0x80269680
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x80269678
    cmplwi  r3, 0x2
    beq-    branch_0x80269678
    li      r0, 0x0
branch_0x80269678:
    clrlwi. r0, r0, 24
    beq-    branch_0x80269688
branch_0x80269680:
    li      r3, 0x0
    b       branch_0x80269708

branch_0x80269688:
    lbz     r0, 0x1c84(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x802696dc
    lbz     r0, 0x1c84(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x802696d4
    li      r3, 0x1
    b       branch_0x80269708

branch_0x802696d4:
    li      r3, 0x0
    b       branch_0x80269708

branch_0x802696dc:
    lbz     r0, 0x1c84(r31)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80269704
    li      r3, 0x1
    b       branch_0x80269708

branch_0x80269704:
    li      r3, 0x0
branch_0x80269708:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl perform__9TWaterGunFUlPQ26JDrama9TGraphics
perform__9TWaterGunFUlPQ26JDrama9TGraphics: # 0x8026971c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0xb0(sp)
    stmw    r26, 0x98(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x8026975c
    lhz     r0, 0x4(r29)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80269754
    li      r0, 0x0
    stw     r0, 0x1c80(r29)
branch_0x80269754:
    mr      r3, r29
    bl      movement__9TWaterGunFv
branch_0x8026975c:
    rlwinm. r26, r30, 0, 30, 30
    beq-    branch_0x80269770
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      calcAnimation__9TWaterGunFPQ26JDrama9TGraphics
branch_0x80269770:
    lwz     r3, 0x1cd4(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    cmplwi  r26, 0x0
    beq-    branch_0x8026982c
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lwz     r4, 0x380(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x802697c8
    lwz     r3, 0x1cd4(r29)
    lbz     r0, 0x1cd8(r29)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x4(r4)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x802697c8:
    li      r26, 0x0
    lis     r3, nozzleBmdData@ha
    addi    r28, r26, 0x0
    addi    r27, r3, nozzleBmdData@l
    b       branch_0x80269814

branch_0x802697dc:
    addi    r3, r29, 0x0
    addi    r4, r26, 0x0
    bl      getEmitMtx__9TWaterGunFi
    cmplwi  r3, 0x0
    beq-    branch_0x8026980c
    lfs     f0, 0xc(r3)
    add     r4, r29, r28
    stfs    f0, 0x1c90(r4)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1c94(r4)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x1c98(r4)
branch_0x8026980c:
    addi    r26, r26, 0x1
    addi    r28, r28, 0xc
branch_0x80269814:
    lbz     r0, 0x1c84(r29)
    mulli   r0, r0, 0x1c
    add     r3, r27, r0
    lbz     r0, 0x14(r3)
    cmpw    r26, r0
    blt+    branch_0x802697dc
branch_0x8026982c:
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lwz     r3, 0x380(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80269854
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80269854:
    lmw     r26, 0x98(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl calcAnimation__9TWaterGunFPQ26JDrama9TGraphics
calcAnimation__9TWaterGunFPQ26JDrama9TGraphics: # 0x80269868
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r3
    stw     r29, 0x6c(sp)
    lwz     r0, 0x8(r3)
    lis     r3, unk_8039f018@ha
    addi    r29, r3, unk_8039f018@l
    stw     r0, R13Off_m0x60e0(r13)
    lwz     r3, 0x1cd4(r30)
    bl      getFrameCtrl__6MActorFi
    lwz     r4, 0x8(r30)
    addi    r31, r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x80269ad8
    lwz     r3, 0x380(r4)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x802698c0
    li      r3, 0x0
branch_0x802698c0:
    cmpwi   r3, 0x5
    beq-    branch_0x80269a1c
    bge-    branch_0x80269a1c
    cmpwi   r3, 0x2
    bge-    branch_0x80269a1c
    cmpwi   r3, 0x0
    bge-    branch_0x802698e0
    b       branch_0x80269a1c

branch_0x802698e0:
    lfs     f1, -0xc18(r2)
    lfs     f0, 0x1cec(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802699a8
    lwz     r0, 0x7c(r4)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x168
    blt-    branch_0x80269910
    cmplwi  r0, 0x16c
    bgt-    branch_0x80269910
    li      r0, 0x1
    b       branch_0x80269914

branch_0x80269910:
    li      r0, 0x0
branch_0x80269914:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026992c
    lwz     r3, 0x1cd4(r30)
    addi    r4, r29, 0x2a4
    bl      setBck__6MActorFPCc
    b       branch_0x80269988

branch_0x8026992c:
    lwz     r0, 0x118(r4)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80269940
    li      r0, 0x1
    b       branch_0x80269944

branch_0x80269940:
    li      r0, 0x0
branch_0x80269944:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026995c
    lwz     r3, 0x1cd4(r30)
    addi    r4, r29, 0x2b0
    bl      setBck__6MActorFPCc
    b       branch_0x80269988

branch_0x8026995c:
    lhz     r0, 0xfa(r4)
    cmpwi   r0, 0x33
    beq-    branch_0x8026996c
    b       branch_0x8026997c

branch_0x8026996c:
    lwz     r3, 0x1cd4(r30)
    addi    r4, r29, 0x2bc
    bl      setBck__6MActorFPCc
    b       branch_0x80269988

branch_0x8026997c:
    lwz     r3, 0x1cd4(r30)
    addi    r4, r2, R2Off_m0xbf4
    bl      setBck__6MActorFPCc
branch_0x80269988:
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xc(r31)
    lwz     r3, 0x8(r30)
    bl      getPumpFrame__6TMarioCFv
    stfs    f1, 0x10(r31)
    lhz     r0, 0x1cf8(r30)
    sth     r0, 0x1cfa(r30)
    b       branch_0x80269ad8

branch_0x802699a8:
    lwz     r3, 0x1cd4(r30)
    addi    r4, r29, 0x2c8
    bl      setBck__6MActorFPCc
    lfs     f2, 0x1cec(r30)
    lfs     f1, -0xc18(r2)
    fcmpo   cr0, f2, f1
    ble-    branch_0x802699e4
    lfs     f0, -0xbec(r2)
    fsubs   f0, f2, f0
    stfs    f0, 0x1cec(r30)
    lfs     f0, 0x1cec(r30)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802699e4
    stfs    f1, 0x1cec(r30)
branch_0x802699e4:
    lfs     f0, -0xc18(r2)
    lis     r0, 0x4330
    stfs    f0, 0xc(r31)
    lha     r3, 0x8(r31)
    lfd     f1, -0xc00(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x1cec(r30)
    stw     r3, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    b       branch_0x80269ad8

branch_0x80269a1c:
    lhz     r3, 0x1cfa(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x80269ad0
    lfs     f1, 0x1cec(r30)
    lfs     f0, -0xc14(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80269a88
    lfs     f0, 0x1cf4(r30)
    addi    r4, r29, 0x2c8
    fadds   f0, f1, f0
    stfs    f0, 0x1cec(r30)
    lwz     r3, 0x1cd4(r30)
    bl      setBck__6MActorFPCc
    lfs     f0, -0xc18(r2)
    lis     r0, 0x4330
    stfs    f0, 0xc(r31)
    lha     r3, 0x8(r31)
    lfd     f1, -0xc00(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x1cec(r30)
    stw     r3, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    b       branch_0x80269ad8

branch_0x80269a88:
    stfs    f0, 0x1cec(r30)
    addi    r4, r29, 0x2c8
    lwz     r3, 0x1cd4(r30)
    bl      setBck__6MActorFPCc
    lfs     f0, -0xc18(r2)
    lis     r0, 0x4330
    stfs    f0, 0xc(r31)
    lha     r3, 0x8(r31)
    lfd     f1, -0xc00(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x1cec(r30)
    stw     r3, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    b       branch_0x80269ad8

branch_0x80269ad0:
    addi    r0, r3, -0x1
    sth     r0, 0x1cfa(r30)
branch_0x80269ad8:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl setBaseTRMtx__9TWaterGunFPA4_f
setBaseTRMtx__9TWaterGunFPA4_f: # 0x80269af4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r4
    stw     r30, 0xa0(sp)
    mr      r30, r3
    lfs     f1, 0x10(r4)
    lfs     f0, -0xc18(r2)
    fmr     f6, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80269b28
    fneg    f6, f6
branch_0x80269b28:
    lha     r6, 0x1d06(r30)
    lis     r4, 0x4330
    lha     r5, 0x1d04(r30)
    addi    r3, sp, 0x1c
    xoris   r0, r6, 0x8000
    stw     r0, 0x94(sp)
    subf    r5, r6, r5
    xoris   r0, r5, 0x8000
    lfs     f1, -0xc18(r2)
    stw     r0, 0x9c(sp)
    lfd     f4, -0xc00(r2)
    fmr     f2, f1
    stw     r4, 0x98(sp)
    lfs     f5, -0xbe8(r2)
    stw     r4, 0x90(sp)
    lfd     f3, 0x98(sp)
    lfd     f0, 0x90(sp)
    fsubs   f3, f3, f4
    fsubs   f0, f0, f4
    fmadds  f0, f6, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x84(sp)
    stw     r4, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f4
    fmuls   f3, f5, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    addi    r5, sp, 0x50
    bl      PSMTXConcat
    lwz     r4, 0x1cd4(r30)
    addi    r3, sp, 0x50
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    addi    sp, sp, 0xa8
    blr


.globl movement__9TWaterGunFv
movement__9TWaterGunFv: # 0x80269be0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f0(sp)
    stfd    f31, 0x1e8(sp)
    stfd    f30, 0x1e0(sp)
    stfd    f29, 0x1d8(sp)
    stw     r31, 0x1d4(sp)
    stw     r30, 0x1d0(sp)
    mr      r30, r3
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80269c18
    li      r0, 0x0
    b       branch_0x80269cd8

branch_0x80269c18:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80269c50
    cmplwi  r3, 0x4
    beq-    branch_0x80269c50
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x80269c48
    cmplwi  r3, 0x2
    beq-    branch_0x80269c48
    li      r0, 0x0
branch_0x80269c48:
    clrlwi. r0, r0, 24
    beq-    branch_0x80269c58
branch_0x80269c50:
    li      r0, 0x0
    b       branch_0x80269cd8

branch_0x80269c58:
    lbz     r0, 0x1c84(r30)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x80269cac
    lbz     r0, 0x1c84(r30)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80269ca4
    li      r0, 0x1
    b       branch_0x80269cd8

branch_0x80269ca4:
    li      r0, 0x0
    b       branch_0x80269cd8

branch_0x80269cac:
    lbz     r0, 0x1c84(r30)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80269cd4
    li      r0, 0x1
    b       branch_0x80269cd8

branch_0x80269cd4:
    li      r0, 0x0
branch_0x80269cd8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80269cec
    li      r0, 0x0
    sth     r0, 0x1cc2(r30)
    sth     r0, 0x1cc4(r30)
branch_0x80269cec:
    lha     r0, 0x1cc2(r30)
    lis     r4, 0x4330
    lfd     f3, -0xc00(r2)
    xoris   r0, r0, 0x8000
    lfs     f2, 0x1cc8(r30)
    stw     r0, 0x1cc(sp)
    lfs     f0, 0x1db8(r30)
    stw     r4, 0x1c8(sp)
    lfd     f1, 0x1c8(sp)
    fsubs   f1, f1, f3
    fsubs   f1, f1, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x1cc8(r30)
    lha     r0, 0x1cc4(r30)
    lfs     f2, 0x1ccc(r30)
    xoris   r0, r0, 0x8000
    lfs     f0, 0x1db8(r30)
    stw     r0, 0x1c4(sp)
    stw     r4, 0x1c0(sp)
    lfd     f1, 0x1c0(sp)
    fsubs   f1, f1, f3
    fsubs   f1, f1, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x1ccc(r30)
    lbz     r5, 0x1c84(r30)
    slwi    r0, r5, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    cmplwi  r5, 0x5
    lfs     f2, 0x378(r3)
    bne-    branch_0x80269df0
    lha     r0, 0x1cd2(r30)
    lfs     f1, 0x1d68(r30)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    stw     r4, 0x1c0(sp)
    lfd     f0, 0x1c0(sp)
    fsubs   f0, f0, f3
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x1c8(sp)
    lwz     r0, 0x1cc(sp)
    sth     r0, 0x1cd2(r30)
    lha     r0, 0x1cd2(r30)
    lfs     f0, 0x1d7c(r30)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    stw     r4, 0x1b8(sp)
    lfd     f1, 0x1b8(sp)
    fsubs   f1, f1, f3
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x1b0(sp)
    lwz     r0, 0x1b4(sp)
    sth     r0, 0x1cd2(r30)
    lha     r3, 0x1d90(r30)
    lha     r0, 0x1cd2(r30)
    cmpw    r3, r0
    bge-    branch_0x80269ddc
    sth     r3, 0x1cd2(r30)
branch_0x80269ddc:
    lha     r3, 0x1cd0(r30)
    lha     r0, 0x1cd2(r30)
    add     r0, r3, r0
    sth     r0, 0x1cd0(r30)
    b       branch_0x80269dfc

branch_0x80269df0:
    li      r0, 0x0
    sth     r0, 0x1cd2(r30)
    sth     r0, 0x1cd0(r30)
branch_0x80269dfc:
    lbz     r3, 0x1c84(r30)
    cmplwi  r3, 0x5
    bne-    branch_0x80269ea8
    lha     r0, 0x1cd2(r30)
    slwi    r3, r3, 2
    add     r4, r30, r3
    lfd     f2, -0xc00(r2)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1b4(sp)
    lis     r3, 0x4330
    lwz     r4, 0x1c68(r4)
    stw     r3, 0x1b0(sp)
    lfs     f3, 0x378(r4)
    lfd     f0, 0x1b0(sp)
    lfs     f1, 0x1d68(r30)
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x1b8(sp)
    lwz     r0, 0x1bc(sp)
    sth     r0, 0x1cd2(r30)
    lha     r0, 0x1cd2(r30)
    lfs     f0, 0x1d7c(r30)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    stw     r3, 0x1c0(sp)
    lfd     f1, 0x1c0(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x1c8(sp)
    lwz     r0, 0x1cc(sp)
    sth     r0, 0x1cd2(r30)
    lha     r3, 0x1d90(r30)
    lha     r0, 0x1cd2(r30)
    cmpw    r3, r0
    bge-    branch_0x80269e94
    sth     r3, 0x1cd2(r30)
branch_0x80269e94:
    lha     r3, 0x1cd0(r30)
    lha     r0, 0x1cd2(r30)
    add     r0, r3, r0
    sth     r0, 0x1cd0(r30)
    b       branch_0x80269eb4

branch_0x80269ea8:
    li      r0, 0x0
    sth     r0, 0x1cd2(r30)
    sth     r0, 0x1cd0(r30)
branch_0x80269eb4:
    lbz     r0, 0x1c84(r30)
    cmplwi  r0, 0x3
    bne-    branch_0x80269ed4
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r30)
branch_0x80269ed4:
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80269ef8
    lbz     r0, 0x1c84(r30)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r30)
branch_0x80269ef8:
    lbz     r0, 0x1c84(r30)
    cmplwi  r0, 0x3
    bne-    branch_0x80269f0c
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x1cec(r30)
branch_0x80269f0c:
    lfs     f0, -0xc18(r2)
    lfs     f1, 0x1d00(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8026a120
    lfs     f30, 0x1cfc(r30)
    fadds   f29, f30, f1
    stfs    f29, 0x1cfc(r30)
    lfs     f0, -0xbe4(r2)
    fcmpo   cr0, f30, f0
    bge-    branch_0x8026a020
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x8026a020
    lbz     r0, 0x1c84(r30)
    lis     r4, 0x4330
    lwz     r5, 0x1c80(r30)
    slwi    r0, r0, 2
    lbz     r31, 0x1c85(r30)
    add     r3, r30, r0
    lfd     f2, -0xc00(r2)
    lwz     r3, 0x1c68(r3)
    xoris   r0, r5, 0x8000
    stw     r0, 0x1b4(sp)
    cmpwi   r31, 0x0
    lwz     r0, 0xcc(r3)
    stw     r4, 0x1b0(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    lfd     f0, 0x1b0(sp)
    stw     r4, 0x1b8(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1b8(sp)
    fsubs   f0, f0, f2
    fdivs   f31, f1, f0
    beq-    branch_0x80269f9c
    stb     r31, 0x1c85(r30)
branch_0x80269f9c:
    stb     r31, 0x1c84(r30)
    lbz     r0, 0x1c84(r30)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    cmpwi   r31, 0x3
    bne-    branch_0x80269fdc
    lwz     r3, 0x8(r30)
    lwz     r3, 0x3f0(r3)
    lwz     r0, 0xd4(r3)
    stw     r0, 0x1c80(r30)
    b       branch_0x8026a020

branch_0x80269fdc:
    lbz     r3, 0x1c84(r30)
    lis     r0, 0x4330
    lfd     f1, -0xc00(r2)
    slwi    r3, r3, 2
    add     r3, r30, r3
    lwz     r3, 0x1c68(r3)
    lwz     r3, 0xcc(r3)
    xoris   r3, r3, 0x8000
    stw     r3, 0x1b4(sp)
    stw     r0, 0x1b0(sp)
    lfd     f0, 0x1b0(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x1b8(sp)
    lwz     r0, 0x1bc(sp)
    stw     r0, 0x1c80(r30)
branch_0x8026a020:
    lfs     f0, -0xbe4(r2)
    fcmpo   cr0, f29, f0
    bge-    branch_0x8026a0ec
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x8026a0ec
    lbz     r3, 0x1c84(r30)
    lis     r31, 0x4330
    lwz     r4, 0x1c80(r30)
    li      r0, 0x0
    slwi    r3, r3, 2
    add     r3, r30, r3
    lfd     f2, -0xc00(r2)
    lwz     r3, 0x1c68(r3)
    xoris   r4, r4, 0x8000
    stw     r4, 0x1b4(sp)
    lwz     r3, 0xcc(r3)
    stw     r31, 0x1b0(sp)
    xoris   r3, r3, 0x8000
    stw     r3, 0x1bc(sp)
    lfd     f0, 0x1b0(sp)
    stw     r31, 0x1b8(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1b8(sp)
    stb     r0, 0x1c84(r30)
    fsubs   f0, f0, f2
    lbz     r0, 0x1c84(r30)
    fdivs   f31, f1, f0
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1c84(r30)
    lfd     f1, -0xc00(r2)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lwz     r0, 0xcc(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    stw     r31, 0x1c0(sp)
    lfd     f0, 0x1c0(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x1c8(sp)
    lwz     r0, 0x1cc(sp)
    stw     r0, 0x1c80(r30)
branch_0x8026a0ec:
    lfs     f1, 0x1cfc(r30)
    lfs     f0, -0xc18(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026a104
    stfs    f0, 0x1cfc(r30)
    stfs    f0, 0x1d00(r30)
branch_0x8026a104:
    lfs     f1, -0xc14(r2)
    lfs     f0, 0x1cfc(r30)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026a120
    stfs    f1, 0x1cfc(r30)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x1d00(r30)
branch_0x8026a120:
    lbz     r4, 0x1c84(r30)
    slwi    r0, r4, 2
    add     r3, r30, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1f4(sp)
    lfd     f31, 0x1e8(sp)
    lfd     f30, 0x1e0(sp)
    mtlr    r0
    lfd     f29, 0x1d8(sp)
    lwz     r31, 0x1d4(sp)
    lwz     r30, 0x1d0(sp)
    addi    sp, sp, 0x1f0
    blr


.globl changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb: # 0x8026a164
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    mr.     r30, r4
    lis     r4, 0x4330
    lbz     r0, 0x1c84(r3)
    lwz     r6, 0x1c80(r3)
    slwi    r0, r0, 2
    lfd     f2, -0xc00(r2)
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    xoris   r0, r6, 0x8000
    stw     r0, 0x7c(sp)
    lwz     r0, 0xcc(r3)
    stw     r4, 0x78(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x74(sp)
    lfd     f0, 0x78(sp)
    stw     r4, 0x70(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f2
    fdivs   f31, f1, f0
    bne-    branch_0x8026a1ec
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026a204
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x1cfc(r31)
    b       branch_0x8026a204

branch_0x8026a1ec:
    clrlwi  r0, r5, 24
    stb     r30, 0x1c85(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x8026a204
    lfs     f0, -0xc14(r2)
    stfs    f0, 0x1cfc(r31)
branch_0x8026a204:
    stb     r30, 0x1c84(r31)
    lbz     r0, 0x1c84(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    cmpwi   r30, 0x3
    bne-    branch_0x8026a244
    lwz     r3, 0x8(r31)
    lwz     r3, 0x3f0(r3)
    lwz     r0, 0xd4(r3)
    stw     r0, 0x1c80(r31)
    b       branch_0x8026a288

branch_0x8026a244:
    lbz     r3, 0x1c84(r31)
    lis     r0, 0x4330
    lfd     f1, -0xc00(r2)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0x1c68(r3)
    lwz     r3, 0xcc(r3)
    xoris   r3, r3, 0x8000
    stw     r3, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x1c80(r31)
branch_0x8026a288:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl getNozzleMtx__9TWaterGunFv
getNozzleMtx__9TWaterGunFv: # 0x8026a2a4
    lwz     r4, 0x1cd4(r3)
    lbz     r0, 0x1cd8(r3)
    lwz     r3, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getEmitMtx__9TWaterGunFi
getEmitMtx__9TWaterGunFi: # 0x8026a2c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    li      r31, 0x0
    stw     r30, 0xd0(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xcc(sp)
    mr      r29, r3
    lwz     r3, 0x8(r3)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026a318
    lwz     r3, 0x8(r29)
    lwz     r4, 0x3f0(r3)
    lwz     r3, 0x34(r4)
    lhz     r0, 0x3c(r4)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r31, r3, r0
    b       branch_0x8026a398

branch_0x8026a318:
    lbz     r5, 0x1c84(r29)
    lis     r3, nozzleBmdData@ha
    addi    r0, r3, nozzleBmdData@l
    mulli   r3, r5, 0x1c
    add     r0, r0, r3
    slwi    r3, r30, 1
    add     r4, r0, r3
    lbz     r0, 0x16(r4)
    cmpwi   r0, 0x3
    beq-    branch_0x8026a378
    bge-    branch_0x8026a398
    cmpwi   r0, 0x0
    bge-    branch_0x8026a350
    b       branch_0x8026a398

branch_0x8026a350:
    slwi    r3, r5, 2
    lbz     r0, 0x17(r4)
    add     r3, r29, r3
    lwz     r3, 0x1c68(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x380(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    add     r31, r3, r0
    b       branch_0x8026a398

branch_0x8026a378:
    lwz     r3, 0x8(r29)
    lwz     r4, 0x3f0(r3)
    lwz     r3, 0x34(r4)
    lhz     r0, 0x3c(r4)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r31, r3, r0
branch_0x8026a398:
    lwz     r0, 0xdc(sp)
    mr      r3, r31
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    addi    sp, sp, 0xd8
    blr


.globl initInLoadAfter__9TWaterGunFv
initInLoadAfter__9TWaterGunFv: # 0x8026a3b8
    blr


.globl init__9TWaterGunFv
init__9TWaterGunFv: # 0x8026a3bc
    mflr    r0
    li      r9, 0x0
    stw     r0, 0x4(sp)
    li      r8, 0x4
    li      r7, 0x81b
    stwu    sp, -0x398(sp)
    li      r6, 0x814
    li      r5, 0x813
    stmw    r21, 0x36c(sp)
    addi    r31, r3, 0x0
    lis     r10, unk_8039f018@ha
    addi    r0, r31, 0xc
    addi    r4, r31, 0xe34
    addi    r24, r31, 0x390
    addi    r30, r10, unk_8039f018@l
    sth     r9, 0x4(r3)
    stw     r0, 0x1c68(r3)
    addi    r3, r31, 0x720
    addi    r0, r31, 0xab0
    stw     r3, 0x1c6c(r31)
    addi    r3, r31, 0x1548
    stw     r0, 0x1c70(r31)
    addi    r0, r31, 0x18d8
    stw     r4, 0x1c74(r31)
    li      r4, 0x168
    stw     r3, 0x1c78(r31)
    li      r3, 0x160
    stw     r0, 0x1c7c(r31)
    li      r0, -0x1800
    stb     r9, 0x1c84(r31)
    stb     r8, 0x1c85(r31)
    stw     r7, 0xaac(r31)
    stw     r6, 0x1c64(r31)
    stw     r5, 0x71c(r31)
    lbz     r5, 0x1c84(r31)
    slwi    r5, r5, 2
    add     r5, r31, r5
    lwz     r5, 0x1c68(r5)
    lwz     r5, 0xcc(r5)
    stw     r5, 0x1c80(r31)
    stb     r9, 0x1c86(r31)
    lfs     f2, -0xc18(r2)
    stfs    f2, 0x1c88(r31)
    fmr     f0, f2
    stb     r9, 0x1c8c(r31)
    stb     r9, 0x1c8d(r31)
    lfs     f1, -0xc14(r2)
    stfs    f1, 0x1cec(r31)
    lfs     f1, -0xbec(r2)
    stfs    f1, 0x1cf0(r31)
    lfs     f1, -0xbcc(r2)
    stfs    f1, 0x1cf4(r31)
    sth     r4, 0x1cf8(r31)
    sth     r9, 0x1cfa(r31)
    stfs    f2, 0x1cfc(r31)
    stfs    f0, 0x1d00(r31)
    sth     r9, 0x1d04(r31)
    sth     r0, 0x1d06(r31)
    sth     r9, 0x1d08(r31)
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x8026a4c0
    addi    r3, r22, 0x0
    addi    r4, r30, 0x3c4
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x8026a4c0:
    stw     r22, 0x1d0c(r31)
    li      r7, 0x0
    li      r0, 0x1
    sth     r7, 0x1d08(r31)
    li      r3, 0x4c
    stb     r0, 0x384(r24)
    stb     r0, 0x153c(r31)
    lwz     r8, 0x8(r31)
    lwz     r4, 0x3a8(r8)
    lbz     r0, 0x3c5(r8)
    lwz     r6, 0x8(r4)
    mulli   r5, r0, 0x30
    lwz     r4, 0x10(r8)
    lwz     r6, 0x58(r6)
    lwz     r0, 0x14(r8)
    add     r24, r6, r5
    stw     r4, 0x1cb4(r31)
    stw     r0, 0x1cb8(r31)
    lwz     r0, 0x18(r8)
    stw     r0, 0x1cbc(r31)
    sth     r7, 0x1cc0(r31)
    sth     r7, 0x1cc2(r31)
    sth     r7, 0x1cc4(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x1cc8(r31)
    stfs    f0, 0x1ccc(r31)
    sth     r7, 0x1cd0(r31)
    sth     r7, 0x1cd2(r31)
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x8026a544
    mr      r3, r22
    bl      __ct__13MActorAnmDataFv
branch_0x8026a544:
    addi    r3, r22, 0x0
    addi    r4, r30, 0x388
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8026a570
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8026a570:
    stw     r23, 0x1cd4(r31)
    addi    r3, r30, 0x3a0
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r22, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8026a5b0
    addi    r3, r22, 0x0
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8026a5b0:
    lwz     r3, 0x1cd4(r31)
    addi    r4, r23, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r5, 0x8(r31)
    lwz     r3, 0x1cd4(r31)
    lwz     r4, 0x3a8(r5)
    lbz     r0, 0x3c5(r5)
    lwz     r4, 0x8(r4)
    mulli   r0, r0, 0x30
    lwz     r5, 0x4(r3)
    lwz     r3, 0x58(r4)
    add     r3, r3, r0
    addi    r4, r5, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x1cd4(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1cd4(r31)
    addi    r4, r30, 0x3d8
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r22, r3, 16
    li      r3, 0x14
    bl      __nw__FUl
    stw     r3, 0x1cdc(r31)
    li      r0, 0x2
    li      r3, 0x4
    lwz     r4, 0x1cdc(r31)
    sth     r0, 0x0(r4)
    bl      __nwa__FUl
    li      r28, 0x0
    sth     r28, 0x0(r3)
    sth     r22, 0x2(r3)
    lwz     r4, 0x1cdc(r31)
    stw     r3, 0x8(r4)
    li      r3, 0x2
    bl      __nwa__FUl
    stb     r28, 0x0(r3)
    li      r0, 0x1
    addi    r5, r30, 0x3e8
    stb     r0, 0x1(r3)
    lwz     r4, 0x1cdc(r31)
    stw     r3, 0x4(r4)
    lwz     r4, 0x1cd4(r31)
    lwz     r3, 0x1cdc(r31)
    lwz     r4, 0x4(r4)
    bl      setup__15TMultiMtxEffectFP8J3DModelPCc
    lwz     r3, 0x1cd4(r31)
    addi    r4, r30, 0x3f8
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lis     r4, nozzleBmdData@ha
    stb     r3, 0x1cd8(r31)
    addi    r25, r4, nozzleBmdData@l
    li      r26, 0x0
    li      r29, 0x0
branch_0x8026a6b0:
    add     r27, r25, r28
    addi    r22, r27, 0xc
    lwz     r0, 0xc(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8026a800
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8026a6dc
    mr      r3, r23
    bl      __ct__13MActorAnmDataFv
branch_0x8026a6dc:
    lwz     r4, 0x0(r22)
    addi    r3, r23, 0x0
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x8026a708
    addi    r3, r22, 0x0
    addi    r4, r23, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8026a708:
    addi    r23, r29, 0x1c68
    add     r23, r31, r23
    lwz     r3, 0x0(r23)
    stw     r22, 0x380(r3)
    lwz     r3, 0x10(r27)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r22, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8026a754
    addi    r3, r22, 0x0
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r21, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8026a754:
    lwz     r3, 0x0(r23)
    addi    r4, r21, 0x0
    li      r5, 0x0
    lwz     r3, 0x380(r3)
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x1cd4(r31)
    addi    r4, r30, 0x408
    lwz     r5, 0x0(r23)
    lwz     r3, 0x4(r3)
    lwz     r5, 0x380(r5)
    lwz     r3, 0x4(r3)
    lwz     r5, 0x4(r5)
    lwz     r3, 0xac(r3)
    lwz     r22, 0x4(r5)
    lwz     r5, 0x4(r3)
    addi    r3, r22, 0x0
    addi    r5, r5, 0x20
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r3, 0x0(r23)
    lwz     r3, 0x380(r3)
    bl      initDL__6MActorFv
    lbz     r0, 0x16(r27)
    cmplwi  r0, 0x4
    beq-    branch_0x8026a7c4
    lwz     r3, 0xb0(r22)
    addi    r4, r30, 0x420
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x17(r27)
branch_0x8026a7c4:
    lbz     r0, 0x18(r27)
    cmplwi  r0, 0x4
    beq-    branch_0x8026a7e0
    lwz     r3, 0xb0(r22)
    addi    r4, r30, 0x430
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x19(r27)
branch_0x8026a7e0:
    lbz     r0, 0x1a(r27)
    cmplwi  r0, 0x4
    beq-    branch_0x8026a810
    lwz     r3, 0xb0(r22)
    addi    r4, r30, 0x440
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x1b(r27)
    b       branch_0x8026a810

branch_0x8026a800:
    addi    r0, r29, 0x1c68
    lwzx    r3, r31, r0
    li      r0, 0x0
    stw     r0, 0x380(r3)
branch_0x8026a810:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x6
    addi    r29, r29, 0x4
    addi    r28, r28, 0x1c
    blt+    branch_0x8026a6b0
    lwz     r3, 0x1c68(r31)
    addi    r4, r30, 0x450
    lwz     r3, 0x380(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x1c68(r31)
    lis     r5, NozzleCtrl__FP7J3DNodei@ha
    clrlslwi  r0, r3, 16, 2
    lwz     r4, 0x380(r4)
    addi    r25, r5, NozzleCtrl__FP7J3DNodei@l
    lwz     r3, 0x4(r4)
    addi    r4, r30, 0x460
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    stw     r25, 0x8(r3)
    lwz     r3, 0x1c78(r31)
    lwz     r3, 0x380(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x1c78(r31)
    lis     r5, WaterGunDivingCtrlL__FP7J3DNodei@ha
    clrlslwi  r0, r3, 16, 2
    lwz     r4, 0x380(r4)
    addi    r5, r5, WaterGunDivingCtrlL__FP7J3DNodei@l
    lwz     r3, 0x4(r4)
    addi    r4, r30, 0x470
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    stw     r5, 0x8(r3)
    lwz     r3, 0x1c78(r31)
    lwz     r3, 0x380(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x1c78(r31)
    lis     r5, WaterGunDivingCtrlR__FP7J3DNodei@ha
    clrlslwi  r0, r3, 16, 2
    lwz     r4, 0x380(r4)
    addi    r5, r5, WaterGunDivingCtrlR__FP7J3DNodei@l
    lwz     r3, 0x4(r4)
    addi    r4, r30, 0x480
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    stw     r5, 0x8(r3)
    lwz     r3, 0x1c7c(r31)
    lwz     r3, 0x380(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x1c7c(r31)
    lis     r5, RotateCtrl__FP7J3DNodei@ha
    clrlslwi  r0, r3, 16, 2
    lwz     r4, 0x380(r4)
    addi    r5, r5, RotateCtrl__FP7J3DNodei@l
    lwz     r3, 0x4(r4)
    addi    r4, r30, 0x498
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    stw     r5, 0x8(r3)
    lwz     r3, 0x1c7c(r31)
    lwz     r3, 0x380(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x1c7c(r31)
    clrlslwi  r0, r3, 16, 2
    mr      r3, r24
    lwz     r4, 0x380(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x20(r4)
    lwzx    r4, r4, r0
    stw     r25, 0x8(r4)
    lwz     r4, 0x1cd4(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x1cd4(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8026a9b8
    addi    r3, r21, 0x0
    addi    r4, r30, 0x4b0
    bl      __ct__12TMirrorActorFPCc
branch_0x8026a9b8:
    stw     r21, 0x1d10(r31)
    li      r5, 0x4
    lwz     r4, 0x1cd4(r31)
    lwz     r3, 0x1d10(r31)
    lwz     r4, 0x4(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    lis     r3, nozzleBmdData@ha
    addi    r23, r3, nozzleBmdData@l
    li      r24, 0x0
    li      r22, 0x0
    b       branch_0x8026aa1c

branch_0x8026a9e4:
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    bl      getEmitMtx__9TWaterGunFi
    cmplwi  r3, 0x0
    beq-    branch_0x8026aa14
    lfs     f0, 0xc(r3)
    add     r4, r31, r22
    stfs    f0, 0x1c90(r4)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1c94(r4)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x1c98(r4)
branch_0x8026aa14:
    addi    r24, r24, 0x1
    addi    r22, r22, 0xc
branch_0x8026aa1c:
    lbz     r0, 0x1c84(r31)
    mulli   r0, r0, 0x1c
    add     r3, r23, r0
    lbz     r0, 0x14(r3)
    cmpw    r24, r0
    blt+    branch_0x8026a9e4
    lmw     r21, 0x36c(sp)
    lwz     r0, 0x39c(sp)
    addi    sp, sp, 0x398
    mtlr    r0
    blr


.globl __ct__9TWaterGunFP6TMario
__ct__9TWaterGunFP6TMario: # 0x8026aa48
    mflr    r0
    lis     r5, __vvt__9TWaterGun@ha
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__9TWaterGun@l
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r31, r3, 0x0
    lis     r3, unk_8039f018@ha
    addi    r30, r3, unk_8039f018@l
    addi    r27, r4, 0x0
    addi    r6, r31, 0x0
    addi    r3, r31, 0xc
    addi    r4, r30, 0x4bc
    addi    r5, r30, 0x4c8
    stw     r0, 0x0(r31)
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    lis     r3, __vvt__13TNozzleDeform@ha
    addi    r28, r3, __vvt__13TNozzleDeform@l
    stw     r28, 0x370(r31)
    addi    r6, r31, 0x0
    addi    r3, r31, 0x390
    addi    r4, r30, 0x4bc
    addi    r5, r30, 0x4ec
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    lis     r3, __vvt__14TNozzleTrigger@ha
    addi    r26, r3, __vvt__14TNozzleTrigger@l
    stw     r26, 0x6f4(r31)
    li      r25, -0x1
    li      r24, 0x0
    stw     r25, 0x71c(r31)
    addi    r3, r31, 0xc
    stb     r24, 0x714(r31)
    stb     r24, 0x715(r31)
    sth     r24, 0x6fc(r31)
    sth     r24, 0x716(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x718(r31)
    lwz     r12, 0x370(r31)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r6, r31, 0x0
    addi    r3, r31, 0x720
    addi    r5, r30, 0x514
    li      r4, 0x0
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    stw     r26, 0xa84(r31)
    addi    r6, r31, 0x0
    addi    r3, r31, 0xab0
    stw     r25, 0xaac(r31)
    addi    r4, r30, 0x538
    addi    r5, r30, 0x544
    stb     r24, 0xaa4(r31)
    stb     r24, 0xaa5(r31)
    sth     r24, 0xa8c(r31)
    sth     r24, 0xaa6(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xaa8(r31)
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    addi    r6, r31, 0x0
    addi    r3, r31, 0xe34
    addi    r4, r30, 0x568
    addi    r5, r30, 0x574
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    stw     r28, 0x1198(r31)
    addi    r6, r31, 0x0
    addi    r3, r31, 0x11b8
    addi    r4, r30, 0x568
    addi    r5, r30, 0x4ec
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    stw     r26, 0x151c(r31)
    addi    r3, r31, 0xe34
    stw     r25, 0x1544(r31)
    stb     r24, 0x153c(r31)
    stb     r24, 0x153d(r31)
    sth     r24, 0x1524(r31)
    sth     r24, 0x153e(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x1540(r31)
    lwz     r12, 0x1198(r31)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r6, r31, 0x0
    addi    r3, r31, 0x1548
    addi    r4, r30, 0x538
    addi    r5, r30, 0x59c
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    stw     r26, 0x18ac(r31)
    addi    r6, r31, 0x0
    addi    r3, r31, 0x18d8
    stw     r25, 0x18d4(r31)
    addi    r5, r30, 0x5c0
    addi    r4, r2, R2Off_m0xbc8
    stb     r24, 0x18cc(r31)
    stb     r24, 0x18cd(r31)
    sth     r24, 0x18b4(r31)
    sth     r24, 0x18ce(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x18d0(r31)
    bl      __ct__11TNozzleBaseFPCcPCcP9TWaterGun
    stw     r26, 0x1c3c(r31)
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    stw     r25, 0x1c64(r31)
    addi    r3, r31, 0x1c90
    li      r5, 0x0
    stb     r24, 0x1c5c(r31)
    li      r6, 0xc
    li      r7, 0x3
    stb     r24, 0x1c5d(r31)
    sth     r24, 0x1c44(r31)
    sth     r24, 0x1c5e(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x1c60(r31)
    bl      __construct_array
    addi    r0, r30, 0x2d4
    stw     r0, 0x1d14(r31)
    addi    r3, r30, 0x2e8
    stw     r24, 0x1d18(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1d1c
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x1d1c(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0xbe0(r2)
    addi    r3, r30, 0x2f8
    stfs    f0, 0x1d2c(r31)
    stw     r28, 0x1d1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1d30
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x2f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d30(r31)
    addi    r3, r30, 0x308
    lfs     f0, -0xbdc(r2)
    stfs    f0, 0x1d40(r31)
    stw     r28, 0x1d30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1d44
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x308
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d44(r31)
    addi    r3, r30, 0x318
    lfs     f0, -0xbd8(r2)
    stfs    f0, 0x1d54(r31)
    stw     r28, 0x1d44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1d58
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x318
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d58(r31)
    addi    r3, r30, 0x32c
    lfs     f0, -0xc14(r2)
    stfs    f0, 0x1d68(r31)
    stw     r28, 0x1d58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1d6c
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d6c(r31)
    addi    r3, r30, 0x340
    lfs     f0, -0xbd4(r2)
    stfs    f0, 0x1d7c(r31)
    stw     r28, 0x1d6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1d80
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x340
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r24, r3, __vvt__10TParamT_s_@l
    stw     r24, 0x1d80(r31)
    li      r25, 0x2000
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r25, 0x1d90(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x358
    stw     r26, 0x1d80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1d94
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x358
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x1d94(r31)
    addi    r3, r30, 0x368
    sth     r25, 0x1da4(r31)
    stw     r26, 0x1d94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1da8
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x368
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1da8(r31)
    addi    r3, r30, 0x378
    lfs     f0, -0xbd0(r2)
    stfs    f0, 0x1db8(r31)
    stw     r28, 0x1da8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r3, r31, 0x1dbc
    addi    r4, r31, 0x1d14
    addi    r6, r30, 0x378
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1dbc(r31)
    addi    r3, r31, 0x1d14
    lfs     f0, -0xbec(r2)
    stfs    f0, 0x1dcc(r31)
    stw     r28, 0x1dbc(r31)
    lwz     r4, 0x1d14(r31)
    bl      load__7TParamsFPCc
    stw     r27, 0x8(r31)
    mr      r3, r31
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl animation__13TNozzleDeformFi
animation__13TNozzleDeformFi: # 0x8026adf4
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x208(sp)
    stw     r31, 0x204(sp)
    stw     r30, 0x200(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1fc(sp)
    bne-    branch_0x8026ae20
    li      r0, 0x1
branch_0x8026ae20:
    cmpwi   r4, 0x3
    bne-    branch_0x8026ae2c
    li      r0, 0x1
branch_0x8026ae2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026b564
    cmpwi   r4, 0x3
    beq-    branch_0x8026b564
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x8026b564
    lwz     r3, 0x368(r30)
    lfs     f0, -0xc18(r2)
    lfs     f1, 0x1d00(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026ae68
    li      r0, 0x1
    b       branch_0x8026ae6c

branch_0x8026ae68:
    li      r0, 0x0
branch_0x8026ae6c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026aeb0
    lhz     r0, 0x36c(r30)
    cmplwi  r0, 0x4
    beq-    branch_0x8026af3c
    cmplwi  r0, 0x6
    beq-    branch_0x8026af3c
    lfs     f1, 0x1cec(r3)
    lfs     f0, -0xbe4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026aea4
    li      r0, 0x4
    sth     r0, 0x36c(r30)
    b       branch_0x8026af3c

branch_0x8026aea4:
    li      r0, 0x6
    sth     r0, 0x36c(r30)
    b       branch_0x8026af3c

branch_0x8026aeb0:
    lfs     f0, -0xc18(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026aec4
    li      r0, 0x1
    b       branch_0x8026aec8

branch_0x8026aec4:
    li      r0, 0x0
branch_0x8026aec8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026af0c
    lhz     r0, 0x36c(r30)
    cmplwi  r0, 0x5
    beq-    branch_0x8026af3c
    cmplwi  r0, 0x7
    beq-    branch_0x8026af3c
    lfs     f1, 0x1cec(r3)
    lfs     f0, -0xbe4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026af00
    li      r0, 0x5
    sth     r0, 0x36c(r30)
    b       branch_0x8026af3c

branch_0x8026af00:
    li      r0, 0x7
    sth     r0, 0x36c(r30)
    b       branch_0x8026af3c

branch_0x8026af0c:
    lfs     f1, 0x1cec(r3)
    lfs     f0, -0xc18(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026af28
    li      r0, 0x0
    sth     r0, 0x36c(r30)
    b       branch_0x8026af3c

branch_0x8026af28:
    lhz     r0, 0x36c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8026af3c
    li      r0, 0x2
    sth     r0, 0x36c(r30)
branch_0x8026af3c:
    lwz     r3, 0x380(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lhz     r0, 0x36c(r30)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x8
    bgt-    branch_0x8026b520
    lis     r3, unk_803dd4ac@ha
    addi    r3, r3, unk_803dd4ac@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8026af70:
    lwz     r29, 0x380(r30)
    li      r4, 0x4
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026af94
    addi    r3, r29, 0x0
    li      r4, 0x4
    bl      setBckFromIndex__6MActorFi
branch_0x8026af94:
    lha     r4, 0x8(r31)
    lis     r0, 0x4330
    lwz     r3, 0x368(r30)
    xoris   r4, r4, 0x8000
    lfd     f2, -0xc00(r2)
    stw     r4, 0x1f4(sp)
    lfs     f0, 0x1cec(r3)
    stw     r0, 0x1f0(sp)
    lfd     f1, 0x1f0(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r31)
    b       branch_0x8026b520

branch_0x8026afc8:
    lwz     r29, 0x380(r30)
    li      r4, 0x7
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026afec
    addi    r3, r29, 0x0
    li      r4, 0x7
    bl      setBckFromIndex__6MActorFi
branch_0x8026afec:
    lwz     r3, 0x380(r30)
    li      r29, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x8026b010
    li      r0, 0x1
    b       branch_0x8026b014

branch_0x8026b010:
    mr      r0, r29
branch_0x8026b014:
    cmpwi   r0, 0x0
    beq-    branch_0x8026b020
    li      r29, 0x1
branch_0x8026b020:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0xc00(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, -0xbec(r2)
    stw     r4, 0x1f4(sp)
    lfs     f3, 0x10(r3)
    stw     r0, 0x1f0(sp)
    lfd     f1, 0x1f0(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    ble-    branch_0x8026b058
    li      r29, 0x1
branch_0x8026b058:
    clrlwi. r0, r29, 24
    beq-    branch_0x8026b520
    li      r0, 0x3
    sth     r0, 0x36c(r30)
    b       branch_0x8026b520

branch_0x8026b06c:
    lwz     r29, 0x380(r30)
    li      r4, 0x5
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026b090
    addi    r3, r29, 0x0
    li      r4, 0x5
    bl      setBckFromIndex__6MActorFi
branch_0x8026b090:
    lwz     r29, 0x368(r30)
    lwz     r0, 0x1c80(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x8026b0a8
    li      r0, 0x0
    b       branch_0x8026b168

branch_0x8026b0a8:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8026b0e0
    cmplwi  r3, 0x4
    beq-    branch_0x8026b0e0
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026b0d8
    cmplwi  r3, 0x2
    beq-    branch_0x8026b0d8
    li      r0, 0x0
branch_0x8026b0d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026b0e8
branch_0x8026b0e0:
    li      r0, 0x0
    b       branch_0x8026b168

branch_0x8026b0e8:
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026b13c
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8026b134
    li      r0, 0x1
    b       branch_0x8026b168

branch_0x8026b134:
    li      r0, 0x0
    b       branch_0x8026b168

branch_0x8026b13c:
    lbz     r0, 0x1c84(r29)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026b164
    li      r0, 0x1
    b       branch_0x8026b168

branch_0x8026b164:
    li      r0, 0x0
branch_0x8026b168:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026b520
    li      r0, 0x8
    sth     r0, 0x36c(r30)
    b       branch_0x8026b520

branch_0x8026b17c:
    lwz     r29, 0x380(r30)
    li      r4, 0x6
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026b1a0
    addi    r3, r29, 0x0
    li      r4, 0x6
    bl      setBckFromIndex__6MActorFi
branch_0x8026b1a0:
    lwz     r29, 0x368(r30)
    lwz     r0, 0x1c80(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x8026b1b8
    li      r0, 0x0
    b       branch_0x8026b278

branch_0x8026b1b8:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8026b1f0
    cmplwi  r3, 0x4
    beq-    branch_0x8026b1f0
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026b1e8
    cmplwi  r3, 0x2
    beq-    branch_0x8026b1e8
    li      r0, 0x0
branch_0x8026b1e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026b1f8
branch_0x8026b1f0:
    li      r0, 0x0
    b       branch_0x8026b278

branch_0x8026b1f8:
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026b24c
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8026b244
    li      r0, 0x1
    b       branch_0x8026b278

branch_0x8026b244:
    li      r0, 0x0
    b       branch_0x8026b278

branch_0x8026b24c:
    lbz     r0, 0x1c84(r29)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026b274
    li      r0, 0x1
    b       branch_0x8026b278

branch_0x8026b274:
    li      r0, 0x0
branch_0x8026b278:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026b28c
    li      r0, 0x2
    sth     r0, 0x36c(r30)
branch_0x8026b28c:
    lwz     r3, 0x380(r30)
    li      r29, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x8026b2b0
    li      r0, 0x1
    b       branch_0x8026b2b4

branch_0x8026b2b0:
    mr      r0, r29
branch_0x8026b2b4:
    cmpwi   r0, 0x0
    beq-    branch_0x8026b2c0
    li      r29, 0x1
branch_0x8026b2c0:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0xc00(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, -0xbec(r2)
    stw     r4, 0x1f4(sp)
    lfs     f3, 0x10(r3)
    stw     r0, 0x1f0(sp)
    lfd     f1, 0x1f0(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    ble-    branch_0x8026b2f8
    li      r29, 0x1
branch_0x8026b2f8:
    clrlwi. r0, r29, 24
    beq-    branch_0x8026b520
    lwz     r3, 0x368(r30)
    lfs     f1, -0xc18(r2)
    lfs     f0, 0x1cec(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8026b31c
    li      r0, 0x1
    b       branch_0x8026b320

branch_0x8026b31c:
    li      r0, 0x0
branch_0x8026b320:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026b520
    li      r0, 0x0
    sth     r0, 0x36c(r30)
    b       branch_0x8026b520

branch_0x8026b334:
    lwz     r29, 0x380(r30)
    li      r4, 0x1
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026b358
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x8026b358:
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lwz     r4, 0x368(r30)
    xoris   r3, r3, 0x8000
    lfs     f2, -0xbc0(r2)
    stw     r3, 0x1f4(sp)
    lfs     f0, 0x1cfc(r4)
    stw     r0, 0x1f0(sp)
    lfd     f1, -0xc00(r2)
    fmuls   f2, f2, f0
    lfd     f0, 0x1f0(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xc(r31)
    b       branch_0x8026b520

branch_0x8026b39c:
    lwz     r29, 0x380(r30)
    li      r4, 0x0
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026b3c0
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8026b3c0:
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lwz     r4, 0x368(r30)
    xoris   r3, r3, 0x8000
    lfs     f4, -0xbc0(r2)
    stw     r3, 0x1f4(sp)
    lfs     f3, 0x1cfc(r4)
    stw     r0, 0x1f0(sp)
    lfs     f2, -0xc14(r2)
    lfd     f1, -0xc00(r2)
    lfd     f0, 0x1f0(sp)
    fnmsubs  f2, f4, f3, f2
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f1, -0xc18(r2)
    stfs    f1, 0xc(r31)
    lwz     r3, 0x368(r30)
    lfs     f0, 0x1cfc(r3)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8026b520
    li      r0, 0x0
    sth     r0, 0x36c(r30)
    lwz     r3, 0x368(r30)
    stfs    f1, 0x1cec(r3)
    b       branch_0x8026b520

branch_0x8026b42c:
    lwz     r29, 0x380(r30)
    li      r4, 0x3
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026b450
    addi    r3, r29, 0x0
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
branch_0x8026b450:
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lwz     r4, 0x368(r30)
    xoris   r3, r3, 0x8000
    lfs     f2, -0xbc0(r2)
    stw     r3, 0x1f4(sp)
    lfs     f0, 0x1cfc(r4)
    stw     r0, 0x1f0(sp)
    lfd     f1, -0xc00(r2)
    fmuls   f2, f2, f0
    lfd     f0, 0x1f0(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xc(r31)
    b       branch_0x8026b520

branch_0x8026b494:
    lwz     r29, 0x380(r30)
    li      r4, 0x2
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026b4b8
    addi    r3, r29, 0x0
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
branch_0x8026b4b8:
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lwz     r4, 0x368(r30)
    xoris   r3, r3, 0x8000
    lfs     f4, -0xbc0(r2)
    stw     r3, 0x1f4(sp)
    lfs     f3, 0x1cfc(r4)
    stw     r0, 0x1f0(sp)
    lfs     f2, -0xc14(r2)
    lfd     f1, -0xc00(r2)
    lfd     f0, 0x1f0(sp)
    fnmsubs  f2, f4, f3, f2
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f1, -0xc18(r2)
    stfs    f1, 0xc(r31)
    lwz     r3, 0x368(r30)
    lfs     f0, 0x1cfc(r3)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8026b520
    li      r0, 0x2
    sth     r0, 0x36c(r30)
    lwz     r3, 0x368(r30)
    stfs    f1, 0x1cec(r3)
branch_0x8026b520:
    lwz     r3, 0x368(r30)
    lbz     r0, 0x1c86(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8026b564
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    cmplwi  r3, 0x0
    beq-    branch_0x8026b564
    lwz     r3, 0x368(r30)
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    mr      r5, r3
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r30, 0x0
    li      r4, 0x10d
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8026b564:
    lwz     r0, 0x20c(sp)
    lwz     r31, 0x204(sp)
    lwz     r30, 0x200(sp)
    mtlr    r0
    lwz     r29, 0x1fc(sp)
    addi    sp, sp, 0x208
    blr


.globl emit__13TNozzleDeformFi
emit__13TNozzleDeformFi: # 0x8026b580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b8(sp)
    stfd    f31, 0x1b0(sp)
    stmw    r27, 0x19c(sp)
    addi    r29, r4, 0x0
    cmpwi   r29, 0x3
    addi    r28, r3, 0x0
    bne-    branch_0x8026b5bc
    lwz     r3, 0x368(r28)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x3f0(r3)
    lbz     r0, 0xd0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8026b910
branch_0x8026b5bc:
    lwz     r4, 0x368(r28)
    lis     r27, 0x4330
    lfd     f2, -0xc00(r2)
    lwz     r0, 0x1c80(r4)
    lfs     f1, -0xc18(r2)
    xoris   r0, r0, 0x8000
    stw     r0, 0x194(sp)
    stw     r27, 0x190(sp)
    lfd     f0, 0x190(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f1
    ble-    branch_0x8026b910
    lbz     r0, 0x709(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x8026b8f8
    lfs     f0, 0x378(r28)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8026b8f8
    lwz     r12, 0x364(r28)
    mr      r3, r28
    lwz     r30, 0x1d0c(r4)
    mr      r4, r29
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    lfs     f2, 0x220(r28)
    lfs     f0, 0x2c(r28)
    lfs     f31, 0x378(r28)
    fsubs   f0, f0, f2
    lfs     f1, 0x37c(r28)
    fmadds  f0, f31, f0, f2
    fadds   f0, f1, f0
    stfs    f0, 0x37c(r28)
    lfs     f1, 0x37c(r28)
    fctiwz  f0, f1
    stfd    f0, 0x188(sp)
    lwz     r0, 0x18c(sp)
    stfd    f0, 0x190(sp)
    cmpwi   r0, 0x0
    lwz     r3, 0x194(sp)
    beq-    branch_0x8026b910
    xoris   r0, r3, 0x8000
    lfd     f2, -0xc00(r2)
    stw     r0, 0x18c(sp)
    li      r0, 0x40
    addi    r31, r30, 0xbc
    stw     r27, 0x188(sp)
    addi    r5, r30, 0x134
    lfd     f0, 0x188(sp)
    fsubs   f0, f0, f2
    fsubs   f0, f1, f0
    stfs    f0, 0x37c(r28)
    stw     r3, 0x18(r30)
    lha     r6, 0x234(r28)
    lha     r4, 0x40(r28)
    xoris   r3, r6, 0x8000
    stw     r3, 0x184(sp)
    subf    r4, r6, r4
    xoris   r3, r4, 0x8000
    stw     r3, 0x194(sp)
    stw     r27, 0x190(sp)
    stw     r27, 0x180(sp)
    lfd     f1, 0x190(sp)
    lfd     f0, 0x180(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f31, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x178(sp)
    lwz     r3, 0x17c(sp)
    sth     r3, 0x40(r30)
    lfs     f1, 0x248(r28)
    lfs     f0, 0x54(r28)
    fsubs   f0, f0, f1
    fmadds  f0, f31, f0, f1
    stfs    f0, 0xa8(r30)
    lfs     f1, 0x25c(r28)
    lfs     f0, 0x68(r28)
    fsubs   f0, f0, f1
    fmadds  f0, f31, f0, f1
    stfs    f0, 0xbc(r30)
    stw     r0, 0x134(r30)
    lwz     r3, 0x368(r28)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8026b720
    li      r0, 0x1
    b       branch_0x8026b724

branch_0x8026b720:
    li      r0, 0x0
branch_0x8026b724:
    cmpwi   r0, 0x0
    beq-    branch_0x8026b738
    lwz     r0, 0x0(r5)
    ori     r0, r0, 0x80
    stw     r0, 0x0(r5)
branch_0x8026b738:
    lfs     f0, 0x1f8(r28)
    lfs     f2, 0x270(r28)
    fcmpo   cr0, f31, f0
    lfs     f3, 0xa4(r28)
    lfs     f4, 0x20c(r28)
    bge-    branch_0x8026b758
    lfs     f1, -0xc18(r2)
    b       branch_0x8026b774

branch_0x8026b758:
    fcmpo   cr0, f31, f4
    bge-    branch_0x8026b770
    fsubs   f1, f31, f0
    fsubs   f0, f4, f0
    fdivs   f1, f1, f0
    b       branch_0x8026b774

branch_0x8026b770:
    lfs     f1, -0xc14(r2)
branch_0x8026b774:
    fsubs   f0, f3, f2
    mr      r4, r30
    fmadds  f0, f1, f0, f2
    stfs    f0, 0xe4(r30)
    lwz     r3, R13Off_m0x6088(r13)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r7, 0x368(r28)
    clrlwi. r6, r3, 24
    lis     r5, 0x4330
    stb     r3, 0x1c86(r7)
    lbz     r0, 0x1c84(r7)
    stw     r6, 0x17c(sp)
    slwi    r0, r0, 2
    lwz     r3, 0x1c68(r7)
    add     r4, r7, r0
    stw     r5, 0x178(sp)
    lwz     r0, 0xcc(r3)
    lwz     r3, 0x1c68(r4)
    xoris   r0, r0, 0x8000
    lfd     f1, -0xc10(r2)
    lha     r3, 0x108(r3)
    stw     r0, 0x18c(sp)
    xoris   r0, r3, 0x8000
    lfd     f0, 0x178(sp)
    stw     r0, 0x184(sp)
    lfd     f3, -0xc00(r2)
    fsubs   f4, f0, f1
    stw     r5, 0x180(sp)
    lfs     f5, -0xbb4(r2)
    lfd     f0, 0x180(sp)
    stw     r5, 0x188(sp)
    fsubs   f2, f0, f3
    lfs     f0, 0x1c88(r7)
    lfd     f1, 0x188(sp)
    fmuls   f2, f4, f2
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fmadds  f0, f5, f1, f0
    stfs    f0, 0x1c88(r7)
    beq-    branch_0x8026b8f8
    lha     r0, 0x108(r28)
    lwz     r4, 0x368(r28)
    mullw   r3, r6, r0
    lwz     r0, 0x1c80(r4)
    subf    r0, r3, r0
    stw     r0, 0x1c80(r4)
    lwz     r0, 0x1c80(r4)
    cmpwi   r0, 0x0
    bge-    branch_0x8026b840
    li      r0, 0x0
    stw     r0, 0x1c80(r4)
branch_0x8026b840:
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r0, 0x58(r3)
    clrlwi. r0, r0, 29
    bne-    branch_0x8026b864
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x14
    li      r5, 0x2
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x8026b864:
    lwz     r3, 0x368(r28)
    addi    r27, r30, 0x54
    lfs     f0, 0x54(r30)
    lwz     r3, 0x8(r3)
    fneg    f3, f0
    lwz     r4, R13Off_m0x5eac(r13)
    lhz     r0, 0x96(r3)
    lfs     f4, 0x2ac(r28)
    sraw    r5, r0, r4
    sraw    r0, r0, r4
    lfs     f0, 0xe0(r28)
    lwz     r4, R13Off_m0x5ea4(r13)
    slwi    r0, r0, 2
    fsubs   f0, f0, f4
    lfs     f2, 0x5c(r30)
    lfsx    f1, r4, r0
    lwz     r4, R13Off_m0x5ea8(r13)
    slwi    r5, r5, 2
    fmuls   f2, f2, f1
    fmadds  f1, f31, f0, f4
    lfs     f0, 0x0(r31)
    lfsx    f4, r4, r5
    fmsubs  f2, f3, f4, f2
    fmuls   f0, f1, f0
    fmuls   f1, f2, f0
    bl      addVelocity__6TMarioFf
    lfs     f0, 0x4(r27)
    lwz     r3, 0x368(r28)
    fneg    f2, f0
    lfs     f1, 0x0(r31)
    lwz     r3, 0x8(r3)
    lfs     f0, 0xf4(r28)
    fmuls   f1, f2, f1
    lfs     f2, 0xa8(r3)
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0xa8(r3)
branch_0x8026b8f8:
    addi    r3, r28, 0x384
    lwz     r12, 0x6e8(r28)
    mr      r4, r29
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x8026b910:
    lmw     r27, 0x19c(sp)
    lwz     r0, 0x1bc(sp)
    lfd     f31, 0x1b0(sp)
    addi    sp, sp, 0x1b8
    mtlr    r0
    blr


.globl movement__13TNozzleDeformFRC20TMarioControllerWork
movement__13TNozzleDeformFRC20TMarioControllerWork: # 0x8026b928
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    mr      r30, r3
    lwz     r3, 0x368(r3)
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8026ba38
    ble-    branch_0x8026b9fc
    lfs     f1, -0xc04(r2)
    lfs     f0, 0x1c(r31)
    lfs     f2, -0xbbc(r2)
    fmuls   f0, f1, f0
    lhz     r3, 0x372(r30)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    stfd    f0, 0x38(sp)
    cmpw    r0, r3
    lwz     r4, 0x3c(sp)
    ble-    branch_0x8026b9e4
    subf    r0, r3, r4
    lfd     f1, -0xc00(r2)
    xoris   r0, r0, 0x8000
    lfs     f2, -0xbb8(r2)
    stw     r0, 0x34(sp)
    lis     r0, 0x4330
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x378(r30)
    lfs     f0, 0x378(r30)
    stfs    f0, 0x374(r30)
    lhz     r3, 0x372(r30)
    lhz     r0, 0x11c(r30)
    add     r0, r3, r0
    sth     r0, 0x372(r30)
    lhz     r0, 0x372(r30)
    cmpw    r4, r0
    bge-    branch_0x8026b9f0
    sth     r4, 0x372(r30)
    b       branch_0x8026b9f0

branch_0x8026b9e4:
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x378(r30)
    sth     r4, 0x372(r30)
branch_0x8026b9f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcGunAngle__11TNozzleBaseFRC20TMarioControllerWork
branch_0x8026b9fc:
    lfs     f1, 0x378(r30)
    lfs     f0, 0x360(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x378(r30)
    lfs     f1, 0x378(r30)
    lfs     f0, -0xc14(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026ba20
    stfs    f0, 0x378(r30)
branch_0x8026ba20:
    addi    r3, r30, 0x384
    lwz     r12, 0x6e8(r30)
    mr      r4, r31
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x8026ba38:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl animation__14TNozzleTriggerFi
animation__14TNozzleTriggerFi: # 0x8026ba50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x170(sp)
    stmw    r24, 0x150(sp)
    mr      r24, r3
    addi    r25, r4, 0x0
    li      r4, 0x0
    lwz     r3, 0x380(r3)
    bl      getFrameCtrl__6MActorFi
    cmpwi   r25, 0x4
    addi    r31, r3, 0x0
    beq-    branch_0x8026ba9c
    bge-    branch_0x8026ba90
    cmpwi   r25, 0x1
    beq-    branch_0x8026bab8
    b       branch_0x8026bfb0

branch_0x8026ba90:
    cmpwi   r25, 0x6
    bge-    branch_0x8026bfb0
    b       branch_0x8026bad4

branch_0x8026ba9c:
    li      r30, 0x4
    li      r29, 0x2
    li      r28, 0x3
    li      r27, 0x1
    li      r26, 0x0
    li      r25, 0x2
    b       branch_0x8026baf4

branch_0x8026bab8:
    li      r30, 0x4
    li      r29, 0x2
    li      r28, 0x3
    li      r27, 0x1
    li      r26, 0x0
    li      r25, 0x1
    b       branch_0x8026baf4

branch_0x8026bad4:
    li      r30, 0x4
    li      r29, 0x2
    li      r28, 0x3
    li      r27, 0x1
    li      r26, 0x0
    li      r25, 0x1
    b       branch_0x8026baf4

branch_0x8026baf0:
    b       branch_0x8026bfb0

branch_0x8026baf4:
    lwz     r3, 0x368(r24)
    lfs     f0, -0xc18(r2)
    lfs     f1, 0x1d00(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026bb10
    li      r0, 0x1
    b       branch_0x8026bb14

branch_0x8026bb10:
    li      r0, 0x0
branch_0x8026bb14:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026bb24
    li      r0, 0x4
    sth     r0, 0x36c(r24)
branch_0x8026bb24:
    lwz     r3, 0x368(r24)
    lfs     f0, -0xc18(r2)
    lfs     f1, 0x1d00(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026bb40
    li      r0, 0x1
    b       branch_0x8026bb44

branch_0x8026bb40:
    li      r0, 0x0
branch_0x8026bb44:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026bb54
    li      r0, 0x3
    sth     r0, 0x36c(r24)
branch_0x8026bb54:
    lhz     r0, 0x36c(r24)
    cmpwi   r0, 0x2
    beq-    branch_0x8026bd38
    bge-    branch_0x8026bb74
    cmpwi   r0, 0x0
    beq-    branch_0x8026bb84
    bge-    branch_0x8026bc28
    b       branch_0x8026bf4c

branch_0x8026bb74:
    cmpwi   r0, 0x4
    beq-    branch_0x8026bec0
    bge-    branch_0x8026bf4c
    b       branch_0x8026be4c

branch_0x8026bb84:
    lwz     r26, 0x380(r24)
    addi    r4, r30, 0x0
    addi    r3, r26, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026bba8
    addi    r3, r26, 0x0
    addi    r4, r30, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8026bba8:
    lwz     r3, 0x380(r24)
    li      r26, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x8026bbcc
    li      r0, 0x1
    b       branch_0x8026bbd0

branch_0x8026bbcc:
    mr      r0, r26
branch_0x8026bbd0:
    cmpwi   r0, 0x0
    beq-    branch_0x8026bbdc
    li      r26, 0x1
branch_0x8026bbdc:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0xc00(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, -0xbec(r2)
    stw     r4, 0x14c(sp)
    lfs     f3, 0x10(r3)
    stw     r0, 0x148(sp)
    lfd     f1, 0x148(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    ble-    branch_0x8026bc14
    li      r26, 0x1
branch_0x8026bc14:
    clrlwi. r0, r26, 24
    beq-    branch_0x8026bf4c
    li      r0, 0x1
    sth     r0, 0x36c(r24)
    b       branch_0x8026bf4c

branch_0x8026bc28:
    lwz     r26, 0x380(r24)
    addi    r4, r29, 0x0
    addi    r3, r26, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026bc4c
    addi    r3, r26, 0x0
    addi    r4, r29, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8026bc4c:
    lwz     r26, 0x368(r24)
    lwz     r0, 0x1c80(r26)
    cmpwi   r0, 0x0
    bne-    branch_0x8026bc64
    li      r0, 0x0
    b       branch_0x8026bd24

branch_0x8026bc64:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8026bc9c
    cmplwi  r3, 0x4
    beq-    branch_0x8026bc9c
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026bc94
    cmplwi  r3, 0x2
    beq-    branch_0x8026bc94
    li      r0, 0x0
branch_0x8026bc94:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026bca4
branch_0x8026bc9c:
    li      r0, 0x0
    b       branch_0x8026bd24

branch_0x8026bca4:
    lbz     r0, 0x1c84(r26)
    slwi    r0, r0, 2
    add     r3, r26, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026bcf8
    lbz     r0, 0x1c84(r26)
    slwi    r0, r0, 2
    add     r3, r26, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8026bcf0
    li      r0, 0x1
    b       branch_0x8026bd24

branch_0x8026bcf0:
    li      r0, 0x0
    b       branch_0x8026bd24

branch_0x8026bcf8:
    lbz     r0, 0x1c84(r26)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r26, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026bd20
    li      r0, 0x1
    b       branch_0x8026bd24

branch_0x8026bd20:
    li      r0, 0x0
branch_0x8026bd24:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026bf4c
    li      r0, 0x2
    sth     r0, 0x36c(r24)
    b       branch_0x8026bf4c

branch_0x8026bd38:
    lwz     r26, 0x380(r24)
    addi    r4, r28, 0x0
    addi    r3, r26, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026bd5c
    addi    r3, r26, 0x0
    addi    r4, r28, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8026bd5c:
    lwz     r26, 0x368(r24)
    lwz     r0, 0x1c80(r26)
    cmpwi   r0, 0x0
    bne-    branch_0x8026bd74
    li      r0, 0x0
    b       branch_0x8026be34

branch_0x8026bd74:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8026bdac
    cmplwi  r3, 0x4
    beq-    branch_0x8026bdac
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026bda4
    cmplwi  r3, 0x2
    beq-    branch_0x8026bda4
    li      r0, 0x0
branch_0x8026bda4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026bdb4
branch_0x8026bdac:
    li      r0, 0x0
    b       branch_0x8026be34

branch_0x8026bdb4:
    lbz     r0, 0x1c84(r26)
    slwi    r0, r0, 2
    add     r3, r26, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026be08
    lbz     r0, 0x1c84(r26)
    slwi    r0, r0, 2
    add     r3, r26, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8026be00
    li      r0, 0x1
    b       branch_0x8026be34

branch_0x8026be00:
    li      r0, 0x0
    b       branch_0x8026be34

branch_0x8026be08:
    lbz     r0, 0x1c84(r26)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r26, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026be30
    li      r0, 0x1
    b       branch_0x8026be34

branch_0x8026be30:
    li      r0, 0x0
branch_0x8026be34:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026bf4c
    li      r0, 0x0
    sth     r0, 0x36c(r24)
    b       branch_0x8026bf4c

branch_0x8026be4c:
    lwz     r26, 0x380(r24)
    addi    r4, r27, 0x0
    addi    r3, r26, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026be70
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8026be70:
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lwz     r4, 0x368(r24)
    xoris   r3, r3, 0x8000
    lfs     f0, -0xbe4(r2)
    stw     r3, 0x14c(sp)
    lfs     f1, 0x1cfc(r4)
    stw     r0, 0x148(sp)
    fsubs   f3, f1, f0
    lfs     f4, -0xbc0(r2)
    lfs     f2, -0xc14(r2)
    lfd     f1, -0xc00(r2)
    lfd     f0, 0x148(sp)
    fnmsubs  f2, f4, f3, f2
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xc(r31)
    b       branch_0x8026bf4c

branch_0x8026bec0:
    lwz     r27, 0x380(r24)
    addi    r4, r26, 0x0
    addi    r3, r27, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026bee4
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8026bee4:
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lwz     r4, 0x368(r24)
    xoris   r3, r3, 0x8000
    lfs     f0, -0xbe4(r2)
    stw     r3, 0x14c(sp)
    lfs     f1, 0x1cfc(r4)
    stw     r0, 0x148(sp)
    fsubs   f2, f1, f0
    lfs     f3, -0xbc0(r2)
    lfd     f1, -0xc00(r2)
    lfd     f0, 0x148(sp)
    fmuls   f2, f3, f2
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xc(r31)
    lwz     r3, 0x368(r24)
    lfs     f0, -0xc14(r2)
    lfs     f1, 0x1cfc(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8026bf4c
    li      r0, 0x0
    sth     r0, 0x36c(r24)
branch_0x8026bf4c:
    lwz     r3, 0x368(r24)
    lbz     r0, 0x1c86(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8026bfb0
    li      r27, 0x0
    li      r26, 0x0
    b       branch_0x8026bfa8

branch_0x8026bf68:
    lwz     r3, 0x368(r24)
    mr      r4, r27
    bl      getEmitMtx__9TWaterGunFi
    cmplwi  r3, 0x0
    beq-    branch_0x8026bfa0
    lwz     r3, 0x368(r24)
    mr      r4, r27
    bl      getEmitMtx__9TWaterGunFi
    mr      r5, r3
    lwz     r3, R13Off_m0x6070(r13)
    add     r7, r24, r26
    li      r4, 0x10d
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8026bfa0:
    addi    r27, r27, 0x1
    addi    r26, r26, 0x390
branch_0x8026bfa8:
    cmpw    r27, r25
    blt+    branch_0x8026bf68
branch_0x8026bfb0:
    lmw     r24, 0x150(sp)
    lwz     r0, 0x174(sp)
    addi    sp, sp, 0x170
    mtlr    r0
    blr


.globl emit__14TNozzleTriggerFi
emit__14TNozzleTriggerFi: # 0x8026bfc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stw     r31, 0x16c(sp)
    stw     r30, 0x168(sp)
    stw     r29, 0x164(sp)
    mr      r29, r3
    lwz     r5, 0x368(r3)
    lwz     r0, 0x1c80(r5)
    cmpwi   r0, 0x0
    ble-    branch_0x8026c2ac
    lbz     r0, 0x385(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x8026c2ac
    lwz     r12, 0x364(r29)
    mr      r3, r29
    lwz     r30, 0x1d0c(r5)
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    lfs     f1, 0x388(r29)
    lfs     f0, 0x2d4(r29)
    lfs     f2, 0x220(r29)
    fdivs   f31, f1, f0
    lfs     f0, 0x2c(r29)
    lfs     f1, 0x37c(r29)
    fsubs   f0, f0, f2
    fmadds  f0, f31, f0, f2
    fadds   f0, f1, f0
    stfs    f0, 0x37c(r29)
    lfs     f1, 0x37c(r29)
    fctiwz  f0, f1
    stfd    f0, 0x150(sp)
    lwz     r0, 0x154(sp)
    stfd    f0, 0x158(sp)
    cmpwi   r0, 0x0
    lwz     r3, 0x15c(sp)
    beq-    branch_0x8026c2ac
    xoris   r0, r3, 0x8000
    lfd     f2, -0xc00(r2)
    stw     r0, 0x154(sp)
    lis     r5, 0x4330
    li      r0, 0x40
    stw     r5, 0x150(sp)
    addi    r31, r30, 0xbc
    addi    r6, r30, 0x134
    lfd     f0, 0x150(sp)
    fsubs   f0, f0, f2
    fsubs   f0, f1, f0
    stfs    f0, 0x37c(r29)
    stw     r3, 0x18(r30)
    lha     r7, 0x234(r29)
    lha     r4, 0x40(r29)
    xoris   r3, r7, 0x8000
    stw     r3, 0x14c(sp)
    subf    r4, r7, r4
    xoris   r3, r4, 0x8000
    stw     r3, 0x15c(sp)
    stw     r5, 0x158(sp)
    stw     r5, 0x148(sp)
    lfd     f1, 0x158(sp)
    lfd     f0, 0x148(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f31, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r3, 0x144(sp)
    sth     r3, 0x40(r30)
    lfs     f1, 0x25c(r29)
    lfs     f0, 0x68(r29)
    fsubs   f0, f0, f1
    fmadds  f0, f31, f0, f1
    stfs    f0, 0xbc(r30)
    stw     r0, 0x134(r30)
    lwz     r3, 0x368(r29)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8026c110
    li      r0, 0x1
    b       branch_0x8026c114

branch_0x8026c110:
    li      r0, 0x0
branch_0x8026c114:
    cmpwi   r0, 0x0
    beq-    branch_0x8026c128
    lwz     r0, 0x0(r6)
    ori     r0, r0, 0x80
    stw     r0, 0x0(r6)
branch_0x8026c128:
    lwz     r3, R13Off_m0x6088(r13)
    mr      r4, r30
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r7, 0x368(r29)
    clrlwi. r6, r3, 24
    lis     r5, 0x4330
    stb     r3, 0x1c86(r7)
    lbz     r0, 0x1c84(r7)
    stw     r6, 0x144(sp)
    slwi    r0, r0, 2
    lwz     r3, 0x1c68(r7)
    add     r4, r7, r0
    stw     r5, 0x140(sp)
    lwz     r0, 0xcc(r3)
    lwz     r3, 0x1c68(r4)
    xoris   r0, r0, 0x8000
    lfd     f1, -0xc10(r2)
    lha     r3, 0x108(r3)
    stw     r0, 0x154(sp)
    xoris   r0, r3, 0x8000
    lfd     f0, 0x140(sp)
    stw     r0, 0x14c(sp)
    lfd     f3, -0xc00(r2)
    fsubs   f4, f0, f1
    stw     r5, 0x148(sp)
    lfs     f5, -0xbb4(r2)
    lfd     f0, 0x148(sp)
    stw     r5, 0x150(sp)
    fsubs   f2, f0, f3
    lfs     f0, 0x1c88(r7)
    lfd     f1, 0x150(sp)
    fmuls   f2, f4, f2
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fmadds  f0, f5, f1, f0
    stfs    f0, 0x1c88(r7)
    beq-    branch_0x8026c2ac
    lha     r0, 0x108(r29)
    lwz     r4, 0x368(r29)
    mullw   r3, r6, r0
    lwz     r0, 0x1c80(r4)
    subf    r0, r3, r0
    stw     r0, 0x1c80(r4)
    lwz     r0, 0x1c80(r4)
    cmpwi   r0, 0x0
    bge-    branch_0x8026c1e8
    li      r0, 0x0
    stw     r0, 0x1c80(r4)
branch_0x8026c1e8:
    lwz     r3, 0x368(r29)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x8026c21c
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r0, 0x58(r3)
    clrlwi. r0, r0, 29
    bne-    branch_0x8026c21c
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x14
    li      r5, 0x2
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x8026c21c:
    lwz     r3, 0x368(r29)
    lfsu    f0, 0x54(r30)
    lwz     r3, 0x8(r3)
    fneg    f3, f0
    lwz     r4, R13Off_m0x5eac(r13)
    lhz     r0, 0x96(r3)
    lfs     f4, 0x2ac(r29)
    sraw    r5, r0, r4
    sraw    r0, r0, r4
    lfs     f0, 0xe0(r29)
    lwz     r4, R13Off_m0x5ea4(r13)
    slwi    r0, r0, 2
    fsubs   f0, f0, f4
    lfs     f2, 0x8(r30)
    lfsx    f1, r4, r0
    lwz     r4, R13Off_m0x5ea8(r13)
    slwi    r5, r5, 2
    fmuls   f2, f2, f1
    fmadds  f1, f31, f0, f4
    lfs     f0, 0x0(r31)
    lfsx    f4, r4, r5
    fmsubs  f2, f3, f4, f2
    fmuls   f0, f1, f0
    fmuls   f1, f2, f0
    bl      addVelocity__6TMarioFf
    lfs     f0, 0x4(r30)
    lwz     r3, 0x368(r29)
    fneg    f2, f0
    lfs     f1, 0x0(r31)
    lwz     r3, 0x8(r3)
    lfs     f0, 0xf4(r29)
    fmuls   f1, f2, f1
    lfs     f2, 0xa8(r3)
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0xa8(r3)
branch_0x8026c2ac:
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lwz     r31, 0x16c(sp)
    mtlr    r0
    lwz     r30, 0x168(sp)
    lwz     r29, 0x164(sp)
    addi    sp, sp, 0x178
    blr


.globl movement__14TNozzleTriggerFRC20TMarioControllerWork
movement__14TNozzleTriggerFRC20TMarioControllerWork: # 0x8026c2cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stw     r31, 0x124(sp)
    stw     r30, 0x120(sp)
    mr      r30, r4
    stw     r29, 0x11c(sp)
    mr      r29, r3
    stw     r28, 0x118(sp)
    lwz     r3, 0x368(r3)
    lfs     f31, 0x388(r29)
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8026c320
    li      r0, 0x0
    stb     r0, 0x385(r29)
    sth     r0, 0x386(r29)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x388(r29)
    b       branch_0x8026c6c0

branch_0x8026c320:
    lbz     r0, 0x385(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x8026c384
    lha     r3, 0x386(r29)
    addi    r0, r3, -0x1
    sth     r0, 0x386(r29)
    lwz     r3, 0x368(r29)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x380(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c354
    li      r0, 0x1
    b       branch_0x8026c358

branch_0x8026c354:
    li      r0, 0x0
branch_0x8026c358:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026c36c
    lha     r0, 0x386(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x8026c384
branch_0x8026c36c:
    li      r0, 0x2
    stb     r0, 0x385(r29)
    li      r0, 0x0
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x388(r29)
    sth     r0, 0x386(r29)
branch_0x8026c384:
    lbz     r0, 0x384(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x8026c42c
    lwz     r0, 0x8(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x8026c42c
    lwz     r0, 0x4(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8026c42c
    lbz     r0, 0x385(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c42c
    li      r0, 0x1
    stb     r0, 0x385(r29)
    lwz     r3, 0x38c(r29)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8026c424
    lfs     f1, 0x378(r29)
    lfs     f0, -0xc14(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026c3e4
    li      r0, 0x806
    b       branch_0x8026c3e8

branch_0x8026c3e4:
    li      r0, 0x805
branch_0x8026c3e8:
    lwz     r5, 0x368(r29)
    mr      r28, r0
    lwz     r3, R13Off_m0x6044(r13)
    addi    r4, r28, 0x0
    addi    r31, r5, 0x1c90
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8026c424
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8026c424:
    lha     r0, 0x2e8(r29)
    sth     r0, 0x386(r29)
branch_0x8026c42c:
    lwz     r4, 0x368(r29)
    li      r31, 0x1
    lwz     r3, 0x8(r4)
    lwz     r0, 0x380(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c44c
    li      r0, 0x1
    b       branch_0x8026c450

branch_0x8026c44c:
    li      r0, 0x0
branch_0x8026c450:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026c45c
    li      r31, 0x0
branch_0x8026c45c:
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8026c470
    li      r0, 0x1
    b       branch_0x8026c474

branch_0x8026c470:
    li      r0, 0x0
branch_0x8026c474:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026c494
    lwz     r3, 0x1c80(r4)
    lwz     r0, 0xcc(r29)
    cmpw    r3, r0
    bge-    branch_0x8026c494
    li      r31, 0x0
branch_0x8026c494:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026c51c
    lfs     f2, -0xc04(r2)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0x388(r29)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x388(r29)
    lbz     r0, 0x384(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c51c
    lbz     r0, 0x385(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c51c
    lwz     r4, 0x368(r29)
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r5, 0x8(r4)
    lwz     r4, 0x58(r3)
    lfs     f0, 0x568(r5)
    fctiwz  f0, f0
    stfd    f0, 0x110(sp)
    lwz     r3, 0x114(sp)
    divw    r0, r4, r3
    mullw   r0, r0, r3
    subf.   r0, r0, r4
    bne-    branch_0x8026c51c
    lfs     f0, 0x564(r5)
    li      r4, 0x14
    lwz     r3, R13Off_m0x60f0(r13)
    li      r6, 0x0
    fctiwz  f0, f0
    stfd    f0, 0x110(sp)
    lwz     r5, 0x114(sp)
    bl      start__9RumbleMgrFiiPf
branch_0x8026c51c:
    lfs     f1, 0x388(r29)
    lfs     f0, 0x2c0(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x388(r29)
    lfs     f1, 0x388(r29)
    lfs     f0, -0xc18(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026c540
    stfs    f0, 0x388(r29)
branch_0x8026c540:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026c5b8
    lbz     r0, 0x384(r29)
    cmplwi  r0, 0x1
    beq-    branch_0x8026c5b8
    lbz     r0, 0x385(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c5b8
    lfs     f1, 0x1c(r30)
    lfs     f0, -0xc18(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026c5b8
    lfs     f0, 0x388(r29)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8026c5b8
    lwz     r5, 0x368(r29)
    li      r4, 0x4022
    lwz     r3, R13Off_m0x6044(r13)
    addi    r31, r5, 0x1c90
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8026c5b8
    addi    r4, r31, 0x0
    li      r3, 0x4022
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8026c5b8:
    lfs     f0, 0x388(r29)
    lfs     f1, 0x2d4(r29)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8026c68c
    stfs    f1, 0x388(r29)
    lbz     r0, 0x384(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c68c
    lbz     r0, 0x385(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8026c68c
    li      r0, 0x1
    stb     r0, 0x385(r29)
    lha     r0, 0x2e8(r29)
    sth     r0, 0x386(r29)
    lwz     r31, 0x38c(r29)
    addis   r0, r31, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8026c63c
    lwz     r5, 0x368(r29)
    addi    r4, r31, 0x0
    lwz     r3, R13Off_m0x6044(r13)
    addi    r28, r5, 0x1c90
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8026c63c
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8026c63c:
    lwz     r3, 0x368(r29)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x8026c660
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x8
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x8026c660:
    lwz     r3, 0x368(r29)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8026c678
    cmpwi   r0, 0x5
    bne-    branch_0x8026c68c
branch_0x8026c678:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x14
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x8026c68c:
    lbz     r0, 0x385(r29)
    cmplwi  r0, 0x2
    bne-    branch_0x8026c6b4
    lfs     f1, -0xc18(r2)
    stfs    f1, 0x388(r29)
    lfs     f0, 0x1c(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8026c6b4
    li      r0, 0x0
    stb     r0, 0x385(r29)
branch_0x8026c6b4:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      calcGunAngle__11TNozzleBaseFRC20TMarioControllerWork
branch_0x8026c6c0:
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lwz     r31, 0x124(sp)
    mtlr    r0
    lwz     r30, 0x120(sp)
    lwz     r29, 0x11c(sp)
    lwz     r28, 0x118(sp)
    addi    sp, sp, 0x130
    blr


.globl init__14TNozzleTriggerFv
init__14TNozzleTriggerFv: # 0x8026c6e4
    li      r0, 0x0
    stb     r0, 0x384(r3)
    stb     r0, 0x385(r3)
    sth     r0, 0x36c(r3)
    sth     r0, 0x386(r3)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x388(r3)
    blr


.globl animation__11TNozzleBaseFi
animation__11TNozzleBaseFi: # 0x8026c704
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    mr      r31, r3
    stw     r30, 0x150(sp)
    stw     r29, 0x14c(sp)
    addi    r29, r4, 0x0
    li      r4, 0x0
    lwz     r3, 0x380(r3)
    bl      getFrameCtrl__6MActorFi
    cmpwi   r29, 0x2
    addi    r30, r3, 0x0
    beq-    branch_0x8026c748
    b       branch_0x8026cba0

branch_0x8026c740:
    b       branch_0x8026c748

branch_0x8026c744:
    b       branch_0x8026cba0

branch_0x8026c748:
    lwz     r3, 0x368(r31)
    lfs     f0, -0xc18(r2)
    lfs     f1, 0x1d00(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026c764
    li      r0, 0x1
    b       branch_0x8026c768

branch_0x8026c764:
    li      r0, 0x0
branch_0x8026c768:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026c778
    li      r0, 0x4
    sth     r0, 0x36c(r31)
branch_0x8026c778:
    lwz     r3, 0x368(r31)
    lfs     f0, -0xc18(r2)
    lfs     f1, 0x1d00(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026c794
    li      r0, 0x1
    b       branch_0x8026c798

branch_0x8026c794:
    li      r0, 0x0
branch_0x8026c798:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026c7a8
    li      r0, 0x3
    sth     r0, 0x36c(r31)
branch_0x8026c7a8:
    lhz     r0, 0x36c(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8026c98c
    bge-    branch_0x8026c7c8
    cmpwi   r0, 0x0
    beq-    branch_0x8026c7d8
    bge-    branch_0x8026c87c
    b       branch_0x8026cba0

branch_0x8026c7c8:
    cmpwi   r0, 0x4
    beq-    branch_0x8026cb14
    bge-    branch_0x8026cba0
    b       branch_0x8026caa0

branch_0x8026c7d8:
    lwz     r30, 0x380(r31)
    li      r4, 0x4
    addi    r3, r30, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026c7fc
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      setBckFromIndex__6MActorFi
branch_0x8026c7fc:
    lwz     r3, 0x380(r31)
    li      r30, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x8026c820
    li      r0, 0x1
    b       branch_0x8026c824

branch_0x8026c820:
    mr      r0, r30
branch_0x8026c824:
    cmpwi   r0, 0x0
    beq-    branch_0x8026c830
    li      r30, 0x1
branch_0x8026c830:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0xc00(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, -0xbec(r2)
    stw     r4, 0x144(sp)
    lfs     f3, 0x10(r3)
    stw     r0, 0x140(sp)
    lfd     f1, 0x140(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    ble-    branch_0x8026c868
    li      r30, 0x1
branch_0x8026c868:
    clrlwi. r0, r30, 24
    beq-    branch_0x8026cba0
    li      r0, 0x1
    sth     r0, 0x36c(r31)
    b       branch_0x8026cba0

branch_0x8026c87c:
    lwz     r30, 0x380(r31)
    li      r4, 0x2
    addi    r3, r30, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026c8a0
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
branch_0x8026c8a0:
    lwz     r29, 0x368(r31)
    lwz     r0, 0x1c80(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x8026c8b8
    li      r0, 0x0
    b       branch_0x8026c978

branch_0x8026c8b8:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8026c8f0
    cmplwi  r3, 0x4
    beq-    branch_0x8026c8f0
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026c8e8
    cmplwi  r3, 0x2
    beq-    branch_0x8026c8e8
    li      r0, 0x0
branch_0x8026c8e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026c8f8
branch_0x8026c8f0:
    li      r0, 0x0
    b       branch_0x8026c978

branch_0x8026c8f8:
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026c94c
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8026c944
    li      r0, 0x1
    b       branch_0x8026c978

branch_0x8026c944:
    li      r0, 0x0
    b       branch_0x8026c978

branch_0x8026c94c:
    lbz     r0, 0x1c84(r29)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026c974
    li      r0, 0x1
    b       branch_0x8026c978

branch_0x8026c974:
    li      r0, 0x0
branch_0x8026c978:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026cba0
    li      r0, 0x2
    sth     r0, 0x36c(r31)
    b       branch_0x8026cba0

branch_0x8026c98c:
    lwz     r30, 0x380(r31)
    li      r4, 0x3
    addi    r3, r30, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026c9b0
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
branch_0x8026c9b0:
    lwz     r29, 0x368(r31)
    lwz     r0, 0x1c80(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x8026c9c8
    li      r0, 0x0
    b       branch_0x8026ca88

branch_0x8026c9c8:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8026ca00
    cmplwi  r3, 0x4
    beq-    branch_0x8026ca00
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026c9f8
    cmplwi  r3, 0x2
    beq-    branch_0x8026c9f8
    li      r0, 0x0
branch_0x8026c9f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026ca08
branch_0x8026ca00:
    li      r0, 0x0
    b       branch_0x8026ca88

branch_0x8026ca08:
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026ca5c
    lbz     r0, 0x1c84(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8026ca54
    li      r0, 0x1
    b       branch_0x8026ca88

branch_0x8026ca54:
    li      r0, 0x0
    b       branch_0x8026ca88

branch_0x8026ca5c:
    lbz     r0, 0x1c84(r29)
    lfs     f0, -0xc18(r2)
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x1c68(r3)
    lfs     f1, 0x378(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026ca84
    li      r0, 0x1
    b       branch_0x8026ca88

branch_0x8026ca84:
    li      r0, 0x0
branch_0x8026ca88:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026cba0
    li      r0, 0x0
    sth     r0, 0x36c(r31)
    b       branch_0x8026cba0

branch_0x8026caa0:
    lwz     r29, 0x380(r31)
    li      r4, 0x1
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026cac4
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x8026cac4:
    lha     r3, 0x8(r30)
    lis     r0, 0x4330
    lwz     r4, 0x368(r31)
    xoris   r3, r3, 0x8000
    lfs     f0, -0xbe4(r2)
    stw     r3, 0x144(sp)
    lfs     f1, 0x1cfc(r4)
    stw     r0, 0x140(sp)
    fsubs   f3, f1, f0
    lfs     f4, -0xbc0(r2)
    lfs     f2, -0xc14(r2)
    lfd     f1, -0xc00(r2)
    lfd     f0, 0x140(sp)
    fnmsubs  f2, f4, f3, f2
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r30)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xc(r30)
    b       branch_0x8026cba0

branch_0x8026cb14:
    lwz     r29, 0x380(r31)
    li      r4, 0x0
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026cb38
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8026cb38:
    lha     r3, 0x8(r30)
    lis     r0, 0x4330
    lwz     r4, 0x368(r31)
    xoris   r3, r3, 0x8000
    lfs     f0, -0xbe4(r2)
    stw     r3, 0x144(sp)
    lfs     f1, 0x1cfc(r4)
    stw     r0, 0x140(sp)
    fsubs   f2, f1, f0
    lfs     f3, -0xbc0(r2)
    lfd     f1, -0xc00(r2)
    lfd     f0, 0x140(sp)
    fmuls   f2, f3, f2
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r30)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xc(r30)
    lwz     r3, 0x368(r31)
    lfs     f0, -0xc14(r2)
    lfs     f1, 0x1cfc(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8026cba0
    li      r0, 0x0
    sth     r0, 0x36c(r31)
branch_0x8026cba0:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    lwz     r29, 0x14c(sp)
    addi    sp, sp, 0x158
    blr


.globl emit__11TNozzleBaseFi
emit__11TNozzleBaseFi: # 0x8026cbbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stw     r31, 0x14c(sp)
    stw     r30, 0x148(sp)
    stw     r29, 0x144(sp)
    mr      r29, r3
    lwz     r5, 0x368(r3)
    lwz     r0, 0x1c80(r5)
    cmpwi   r0, 0x0
    ble-    branch_0x8026ce68
    lfs     f1, -0xc18(r2)
    lfs     f0, 0x378(r29)
    fcmpu   cr0, f1, f0
    beq-    branch_0x8026ce68
    lwz     r12, 0x364(r29)
    mr      r3, r29
    lwz     r30, 0x1d0c(r5)
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    lfs     f1, 0x37c(r29)
    lfs     f0, 0x2c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x37c(r29)
    lfs     f2, 0x37c(r29)
    fctiwz  f0, f2
    stfd    f0, 0x130(sp)
    lwz     r0, 0x134(sp)
    stfd    f0, 0x138(sp)
    cmpwi   r0, 0x0
    lwz     r3, 0x13c(sp)
    beq-    branch_0x8026ce68
    xoris   r0, r3, 0x8000
    lfd     f1, -0xc00(r2)
    stw     r0, 0x134(sp)
    lis     r0, unk_43300040@h
    addi    r31, r30, 0xbc
    stw     r0, 0x130(sp)
    addi    r0, r0, unk_43300040@l
    addi    r4, r30, 0x134
    lfd     f0, 0x130(sp)
    fsubs   f0, f0, f1
    fsubs   f0, f2, f0
    stfs    f0, 0x37c(r29)
    stw     r3, 0x18(r30)
    lhz     r3, 0x34(r29)
    sth     r3, 0x34(r30)
    lwz     r3, 0x38(r29)
    stw     r3, 0x38(r30)
    lwz     r3, 0x3c(r29)
    stw     r3, 0x3c(r30)
    lha     r3, 0x40(r29)
    sth     r3, 0x40(r30)
    lfs     f3, 0x7c(r29)
    lfs     f0, -0xc14(r2)
    lfs     f2, 0x68(r29)
    fsubs   f0, f0, f3
    lfs     f1, 0x378(r29)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0xbc(r30)
    stw     r0, 0x134(r30)
    lwz     r3, 0x368(r29)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8026ccdc
    li      r0, 0x1
    b       branch_0x8026cce0

branch_0x8026ccdc:
    li      r0, 0x0
branch_0x8026cce0:
    cmpwi   r0, 0x0
    beq-    branch_0x8026ccf4
    lwz     r0, 0x0(r4)
    ori     r0, r0, 0x80
    stw     r0, 0x0(r4)
branch_0x8026ccf4:
    lwz     r3, R13Off_m0x6088(r13)
    mr      r4, r30
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r7, 0x368(r29)
    clrlwi. r6, r3, 24
    lis     r5, 0x4330
    stb     r3, 0x1c86(r7)
    lbz     r0, 0x1c84(r7)
    stw     r6, 0x134(sp)
    slwi    r0, r0, 2
    lwz     r3, 0x1c68(r7)
    add     r4, r7, r0
    stw     r5, 0x130(sp)
    lwz     r0, 0xcc(r3)
    lwz     r3, 0x1c68(r4)
    xoris   r0, r0, 0x8000
    lfd     f1, -0xc10(r2)
    lha     r3, 0x108(r3)
    stw     r0, 0x12c(sp)
    xoris   r0, r3, 0x8000
    lfd     f0, 0x130(sp)
    stw     r0, 0x13c(sp)
    lfd     f3, -0xc00(r2)
    fsubs   f4, f0, f1
    stw     r5, 0x138(sp)
    lfs     f5, -0xbb4(r2)
    lfd     f0, 0x138(sp)
    stw     r5, 0x128(sp)
    fsubs   f2, f0, f3
    lfs     f0, 0x1c88(r7)
    lfd     f1, 0x128(sp)
    fmuls   f2, f4, f2
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fmadds  f0, f5, f1, f0
    stfs    f0, 0x1c88(r7)
    beq-    branch_0x8026ce68
    lha     r0, 0x108(r29)
    lwz     r4, 0x368(r29)
    mullw   r3, r6, r0
    lwz     r0, 0x1c80(r4)
    subf    r0, r3, r0
    stw     r0, 0x1c80(r4)
    lwz     r0, 0x1c80(r4)
    cmpwi   r0, 0x0
    bge-    branch_0x8026cdb4
    li      r0, 0x0
    stw     r0, 0x1c80(r4)
branch_0x8026cdb4:
    lwz     r3, 0x368(r29)
    lfsu    f0, 0x54(r30)
    lwz     r3, 0x8(r3)
    lwz     r6, R13Off_m0x5eac(r13)
    fneg    f3, f0
    lhz     r0, 0x96(r3)
    lwz     r4, R13Off_m0x5ea4(r13)
    sraw    r5, r0, r6
    lfs     f1, 0x8(r30)
    sraw    r0, r0, r6
    lwz     r6, R13Off_m0x5ea8(r13)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    slwi    r0, r5, 2
    lfsx    f4, r6, r0
    fmuls   f2, f1, f0
    lfs     f1, 0x0(r31)
    lfs     f0, 0xe0(r29)
    fmsubs  f2, f3, f4, f2
    fmuls   f31, f1, f0
    fmuls   f1, f2, f31
    bl      addVelocity__6TMarioFf
    lwz     r3, 0x368(r29)
    lfs     f1, 0x0(r30)
    lwz     r3, 0x8(r3)
    lfs     f0, 0xa4(r3)
    fnmsubs  f0, f1, f31, f0
    stfs    f0, 0xa4(r3)
    lwz     r3, 0x368(r29)
    lfs     f1, 0x8(r30)
    lwz     r3, 0x8(r3)
    lfs     f0, 0xac(r3)
    fnmsubs  f0, f1, f31, f0
    stfs    f0, 0xac(r3)
    lfs     f0, 0x4(r30)
    lwz     r3, 0x368(r29)
    fneg    f2, f0
    lfs     f1, 0x0(r31)
    lwz     r3, 0x8(r3)
    lfs     f0, 0xf4(r29)
    fmuls   f1, f2, f1
    lfs     f2, 0xa8(r3)
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0xa8(r3)
branch_0x8026ce68:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lwz     r31, 0x14c(sp)
    mtlr    r0
    lwz     r30, 0x148(sp)
    lwz     r29, 0x144(sp)
    addi    sp, sp, 0x158
    blr


.globl emitCommon__11TNozzleBaseFiP14TWaterEmitInfo
emitCommon__11TNozzleBaseFiP14TWaterEmitInfo: # 0x8026ce88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, 0x0
    addi    r5, sp, 0x50
    stw     r30, 0x70(sp)
    mr      r30, r3
    addi    r6, sp, 0x44
    lha     r0, 0x2fc(r30)
    addi    r7, sp, 0x38
    lwz     r3, R13Off_m0x6088(r13)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x5dbc(r3)
    lfs     f0, 0x68(r3)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    sth     r0, 0x2c(r31)
    lwz     r3, 0x368(r30)
    bl      getEmitPosDirSpeed__9TWaterGunFiPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x70(r31)
    stw     r0, 0x74(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0x78(r31)
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x8c(r31)
    stw     r0, 0x90(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0x94(r31)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x54(r31)
    stw     r0, 0x58(r31)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x5c(r31)
    lhz     r0, 0x48(r30)
    sth     r0, 0x9c(r31)
    lwz     r0, 0x4c(r30)
    stw     r0, 0xa0(r31)
    lwz     r0, 0x50(r30)
    stw     r0, 0xa4(r31)
    lfs     f0, 0x54(r30)
    stfs    f0, 0xa8(r31)
    lhz     r0, 0x84(r30)
    sth     r0, 0xc4(r31)
    lwz     r0, 0x88(r30)
    stw     r0, 0xc8(r31)
    lwz     r0, 0x8c(r30)
    stw     r0, 0xcc(r31)
    lfs     f0, 0x90(r30)
    stfs    f0, 0xd0(r31)
    lhz     r0, 0x98(r30)
    sth     r0, 0xd8(r31)
    lwz     r0, 0x9c(r30)
    stw     r0, 0xdc(r31)
    lwz     r0, 0xa0(r30)
    stw     r0, 0xe0(r31)
    lfs     f0, 0xa4(r30)
    stfs    f0, 0xe4(r31)
    lhz     r0, 0xac(r30)
    sth     r0, 0xec(r31)
    lwz     r0, 0xb0(r30)
    stw     r0, 0xf0(r31)
    lwz     r0, 0xb4(r30)
    stw     r0, 0xf4(r31)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xf8(r31)
    lhz     r0, 0x2f0(r30)
    sth     r0, 0x13c(r31)
    lwz     r0, 0x2f4(r30)
    stw     r0, 0x140(r31)
    lwz     r0, 0x2f8(r30)
    stw     r0, 0x144(r31)
    lha     r0, 0x2fc(r30)
    sth     r0, 0x148(r31)
    lhz     r0, 0x14c(r30)
    sth     r0, 0x100(r31)
    lwz     r0, 0x150(r30)
    stw     r0, 0x104(r31)
    lwz     r0, 0x154(r30)
    stw     r0, 0x108(r31)
    lfs     f0, 0x158(r30)
    stfs    f0, 0x10c(r31)
    lhz     r0, 0x160(r30)
    sth     r0, 0x114(r31)
    lwz     r0, 0x164(r30)
    stw     r0, 0x118(r31)
    lwz     r0, 0x168(r30)
    stw     r0, 0x11c(r31)
    lfs     f0, 0x16c(r30)
    stfs    f0, 0x120(r31)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl movement__11TNozzleBaseFRC20TMarioControllerWork
movement__11TNozzleBaseFRC20TMarioControllerWork: # 0x8026d020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    lwz     r5, 0x368(r3)
    lwz     r0, 0x1c80(r5)
    cmpwi   r0, 0x0
    ble-    branch_0x8026d0d8
    lfs     f1, -0xc04(r2)
    lfs     f0, 0x1c(r4)
    lfs     f2, -0xbbc(r2)
    fmuls   f0, f1, f0
    lhz     r5, 0x372(r3)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    stfd    f0, 0x28(sp)
    cmpw    r0, r5
    lwz     r6, 0x2c(sp)
    ble-    branch_0x8026d0c8
    subf    r0, r5, r6
    lfd     f1, -0xc00(r2)
    xoris   r0, r0, 0x8000
    lfs     f2, -0xbb8(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x378(r3)
    lfs     f0, 0x378(r3)
    stfs    f0, 0x374(r3)
    lhz     r5, 0x372(r3)
    lhz     r0, 0x11c(r3)
    add     r0, r5, r0
    sth     r0, 0x372(r3)
    lhz     r0, 0x372(r3)
    cmpw    r6, r0
    bge-    branch_0x8026d0d4
    sth     r6, 0x372(r3)
    b       branch_0x8026d0d4

branch_0x8026d0c8:
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x378(r3)
    sth     r6, 0x372(r3)
branch_0x8026d0d4:
    bl      calcGunAngle__11TNozzleBaseFRC20TMarioControllerWork
branch_0x8026d0d8:
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl calcGunAngle__11TNozzleBaseFRC20TMarioControllerWork
calcGunAngle__11TNozzleBaseFRC20TMarioControllerWork: # 0x8026d0e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lwz     r3, 0x368(r3)
    lwz     r0, R13Off_m0x60b8(r13)
    lwz     r3, 0x8(r3)
    cmplw   r3, r0
    bne-    branch_0x8026d144
    lwz     r3, R13Off_m0x7118(r13)
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x8026d134
    lwz     r3, R13Off_m0x7118(r13)
    bl      isJetCoaster1stCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8026d144
branch_0x8026d134:
    lwz     r3, R13Off_m0x7118(r13)
    lha     r0, 0xa4(r3)
    sth     r0, 0x36e(r31)
    b       branch_0x8026d208

branch_0x8026d144:
    lwz     r3, 0x368(r31)
    lwz     r4, 0x8(r3)
    lwz     r3, 0x7c(r4)
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x8220
    bne-    branch_0x8026d184
    lwz     r3, 0x4fc(r4)
    lfs     f0, 0x34c(r31)
    lfs     f1, 0xac(r3)
    lha     r4, 0x36e(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    add     r4, r4, r0
    b       branch_0x8026d18c

branch_0x8026d184:
    lha     r0, 0x180(r31)
    neg     r4, r0
branch_0x8026d18c:
    lha     r3, 0x1bc(r31)
    extsh   r0, r4
    cmpw    r0, r3
    bge-    branch_0x8026d1a0
    mr      r4, r3
branch_0x8026d1a0:
    lha     r3, 0x1d0(r31)
    extsh   r0, r4
    cmpw    r0, r3
    ble-    branch_0x8026d1b4
    mr      r4, r3
branch_0x8026d1b4:
    lha     r5, 0x36e(r31)
    extsh   r0, r4
    lis     r3, 0x4330
    lfd     f3, -0xc00(r2)
    subf    r0, r5, r0
    xoris   r4, r0, 0x8000
    lfs     f1, 0x1e4(r31)
    xoris   r0, r5, 0x8000
    stw     r4, 0x8c(sp)
    stw     r0, 0x84(sp)
    stw     r3, 0x88(sp)
    stw     r3, 0x80(sp)
    lfd     f2, 0x88(sp)
    lfd     f0, 0x80(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    sth     r0, 0x36e(r31)
branch_0x8026d208:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl init__11TNozzleBaseFv
init__11TNozzleBaseFv: # 0x8026d21c
    li      r0, 0x2
    sth     r0, 0x36c(r3)
    li      r0, 0x0
    sth     r0, 0x36e(r3)
    sth     r0, 0x372(r3)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x378(r3)
    stfs    f0, 0x37c(r3)
    blr


.globl __ct__11TNozzleBaseFPCcPCcP9TWaterGun
__ct__11TNozzleBaseFPCcPCcP9TWaterGun: # 0x8026d240
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r21, 0x1c(sp)
    mr      r31, r3
    li      r23, 0x0
    addi    r21, r6, 0x0
    stw     r5, 0x0(r3)
    lis     r3, __vvt__11TNozzleBase@ha
    addi    r0, r3, __vvt__11TNozzleBase@l
    stw     r23, 0x4(r31)
    lis     r3, unk_8039f018@ha
    addi    r30, r3, unk_8039f018@l
    stw     r0, 0x364(r31)
    addi    r3, r30, 0x5e4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x5e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r0, r3, __vvt__11TParamT_Uc_@l
    stw     r0, 0x8(r31)
    lis     r3, __vvt__12TParamRT_Uc_@ha
    addi    r0, r3, __vvt__12TParamRT_Uc_@l
    stb     r23, 0x18(r31)
    addi    r3, r2, R2Off_m0xbb0
    stw     r0, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r2, R2Off_m0xbb0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x1c(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0xc14(r2)
    addi    r3, r2, R2Off_m0xba8
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r2, R2Off_m0xba8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x30(r31)
    li      r22, 0x1
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r22, 0x40(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x5f0
    stw     r26, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x5f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x5fc
    lfs     f0, -0xba0(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x5fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x608
    lfs     f0, -0xb9c(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x608
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x614
    lfs     f0, -0xc14(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x614
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r2, R2Off_m0xb98
    lfs     f0, -0xc14(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r2, R2Off_m0xb98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x620
    lfs     f0, -0xb9c(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x620
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x630
    lfs     f0, -0xb90(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x630
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r24, r3, __vvt__10TParamT_l_@l
    stw     r24, 0xbc(r31)
    li      r0, 0x834
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xcc(r31)
    addi    r25, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x63c
    stw     r25, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x63c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x64c
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x64c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x658
    lfs     f0, -0xc18(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x658
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xf8(r31)
    addi    r3, r30, 0x664
    sth     r23, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x664
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x10c(r31)
    li      r0, 0x100
    addi    r3, r30, 0x674
    sth     r0, 0x11c(r31)
    stw     r26, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x674
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x120(r31)
    li      r0, 0xfa
    addi    r3, r30, 0x680
    stw     r0, 0x130(r31)
    stw     r25, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x680
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x68c
    lfs     f0, -0xbec(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x68c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x698
    lfs     f0, -0xb8c(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x698
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x6a4
    lfs     f0, -0xb88(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x6a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x170(r31)
    li      r0, 0x1000
    addi    r3, r30, 0x308
    sth     r0, 0x180(r31)
    stw     r26, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x308
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x184(r31)
    li      r24, 0x2ee0
    addi    r3, r30, 0x6b0
    sth     r24, 0x194(r31)
    stw     r26, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x6b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    addi    r3, r30, 0x6c0
    sth     r24, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x6c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1ac(r31)
    li      r0, -0x2000
    addi    r3, r30, 0x6cc
    sth     r0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x6cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    li      r24, 0x2000
    addi    r3, r30, 0x6d8
    sth     r24, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x6d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x6e8
    lfs     f0, -0xbec(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x6e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x6fc
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x6fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r2, R2Off_m0xb84
    lfs     f0, -0xc14(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r2, R2Off_m0xb84
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x710
    lfs     f0, -0xc14(r2)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x710
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x224(r31)
    addi    r3, r30, 0x71c
    sth     r22, 0x234(r31)
    stw     r26, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x71c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0x72c
    lfs     f0, -0xba0(r2)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x72c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x738
    lfs     f0, -0xb9c(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x738
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x744
    lfs     f0, -0xb9c(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x744
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x754
    lfs     f0, -0xb7c(r2)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x754
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x764
    lfs     f0, -0xb78(r2)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x764
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x774
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x774
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    addi    r3, r30, 0x788
    lfs     f0, -0xb74(r2)
    stfs    f0, 0x2c0(r31)
    stw     r28, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x788
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x79c
    lfs     f0, -0xb70(r2)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x79c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x2d8(r31)
    addi    r3, r2, R2Off_m0xb6c
    sth     r22, 0x2e8(r31)
    stw     r26, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r2, R2Off_m0xb6c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x2ec(r31)
    addi    r3, r30, 0x7ac
    sth     r23, 0x2fc(r31)
    stw     r26, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0x7ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x300(r31)
    li      r22, 0x4000
    addi    r3, r30, 0x7c0
    sth     r22, 0x310(r31)
    stw     r26, 0x300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x314
    addi    r6, r30, 0x7c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x314(r31)
    addi    r3, r30, 0x7d4
    sth     r22, 0x324(r31)
    stw     r26, 0x314(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x328
    addi    r6, r30, 0x7d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x328(r31)
    addi    r3, r30, 0x7e8
    sth     r24, 0x338(r31)
    stw     r26, 0x328(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x33c
    addi    r6, r30, 0x7e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x33c(r31)
    addi    r3, r30, 0x7f8
    lfs     f0, -0xb64(r2)
    stfs    f0, 0x34c(r31)
    stw     r28, 0x33c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x350
    addi    r6, r30, 0x7f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x350(r31)
    mr      r3, r31
    lfs     f0, -0xbb4(r2)
    stfs    f0, 0x360(r31)
    stw     r28, 0x350(r31)
    stw     r21, 0x368(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    li      r0, 0x2
    sth     r0, 0x36c(r31)
    mr      r3, r31
    sth     r23, 0x36e(r31)
    sth     r23, 0x372(r31)
    lfs     f0, -0xc18(r2)
    stfs    f0, 0x378(r31)
    stfs    f0, 0x37c(r31)
    lwz     r0, 0x4c(sp)
    lmw     r21, 0x1c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl WaterGunDivingCtrlR__FP7J3DNodei
WaterGunDivingCtrlR__FP7J3DNodei: # 0x8026da40
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    bne-    branch_0x8026dabc
    lwz     r4, R13Off_m0x60e0(r13)
    lis     r0, 0x4330
    lfs     f1, -0xc18(r2)
    addi    r3, sp, 0x2c
    lwz     r4, 0x3e4(r4)
    lfd     f3, -0xc00(r2)
    fmr     f2, f1
    lfs     f0, 0x1ccc(r4)
    lfs     f4, -0xbe8(r2)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r4, 0x6c(sp)
    neg     r4, r4
    extsh   r4, r4
    xoris   r4, r4, 0x8000
    stw     r4, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x2c
    bl      PSMTXConcat
branch_0x8026dabc:
    lwz     r0, 0x74(sp)
    li      r3, 0x1
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl WaterGunDivingCtrlL__FP7J3DNodei
WaterGunDivingCtrlL__FP7J3DNodei: # 0x8026dad0
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    bne-    branch_0x8026db4c
    lwz     r4, R13Off_m0x60e0(r13)
    lis     r0, 0x4330
    lfs     f1, -0xc18(r2)
    addi    r3, sp, 0x2c
    lwz     r4, 0x3e4(r4)
    lfd     f3, -0xc00(r2)
    fmr     f2, f1
    lfs     f0, 0x1cc8(r4)
    lfs     f4, -0xbe8(r2)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r4, 0x6c(sp)
    neg     r4, r4
    extsh   r4, r4
    xoris   r4, r4, 0x8000
    stw     r4, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x2c
    bl      PSMTXConcat
branch_0x8026db4c:
    lwz     r0, 0x74(sp)
    li      r3, 0x1
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl RotateCtrl__FP7J3DNodei
RotateCtrl__FP7J3DNodei: # 0x8026db60
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    bne-    branch_0x8026dbd0
    lwz     r3, R13Off_m0x60e0(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8026dbd0
    lwz     r4, 0x3e4(r3)
    lis     r0, 0x4330
    lfs     f2, -0xc18(r2)
    addi    r3, sp, 0x2c
    lha     r4, 0x1cd0(r4)
    lfd     f1, -0xc00(r2)
    fmr     f3, f2
    xoris   r4, r4, 0x8000
    lfs     f4, -0xbe8(r2)
    stw     r4, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x2c
    bl      PSMTXConcat
branch_0x8026dbd0:
    lwz     r0, 0x6c(sp)
    li      r3, 0x1
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl NozzleCtrl__FP7J3DNodei
NozzleCtrl__FP7J3DNodei: # 0x8026dbe4
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    bne-    branch_0x8026dc7c
    lwz     r3, R13Off_m0x60e0(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8026dc7c
    lwz     r3, 0x3e4(r3)
    lbz     r0, 0x1c84(r3)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x1c68(r3)
    lwz     r12, 0x364(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    extsh.  r0, r3
    bge-    branch_0x8026dc7c
    extsh   r0, r3
    lfs     f1, -0xc18(r2)
    xoris   r0, r0, 0x8000
    lfd     f3, -0xc00(r2)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f4, -0xbe8(r2)
    fmr     f2, f1
    stw     r0, 0x58(sp)
    addi    r3, sp, 0x28
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x28
    bl      PSMTXConcat
branch_0x8026dc7c:
    lwz     r0, 0x64(sp)
    li      r3, 0x1
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl getWaistAngle__11TNozzleBaseFv
getWaistAngle__11TNozzleBaseFv: # 0x8026dc90
    lha     r3, 0x370(r3)
    blr


.globl getNozzleKind__13TNozzleDeformCFv
getNozzleKind__13TNozzleDeformCFv: # 0x8026dc98
    li      r3, 0x3
    blr


.globl __sinit_WaterGun_cpp
__sinit_WaterGun_cpp: # 0x8026dca0
    mflr    r0
    lis     r3, unk_803fbf08@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fbf08@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8026dce8
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8026dce8:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8026dd18
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8026dd18:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8026dd48
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8026dd48:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8026dd78
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8026dd78:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8026dda8
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8026dda8:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8026ddd8
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8026ddd8:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8026de08
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8026de08:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8026de38
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8026de38:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8026de68
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8026de68:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8026de98
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8026de98:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8026dec8
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8026dec8:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8026def8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8026def8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8026df28
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8026df28:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8026df58
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8026df58:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8026df88
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8026df88:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

