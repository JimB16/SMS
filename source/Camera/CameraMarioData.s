
.globl isMarioClimb__16TCameraMarioDataCFUl
isMarioClimb__16TCameraMarioDataCFUl: # 0x80028e38
    lis     r3, 0x1810
    addi    r0, r3, 0x340
    cmpw    r4, r0
    li      r3, 0x0
    beq-    branch_0x80028e6c
    bgelr-    

    lis     r5, 0x1010
    addi    r0, r5, 0x344
    cmpw    r4, r0
    bgelr-    

    addi    r0, r5, 0x341
    cmpw    r4, r0
    bltlr-    

branch_0x80028e6c:
    li      r3, 0x1
    blr


.globl isMarioLeanMirror__16TCameraMarioDataCFv
isMarioLeanMirror__16TCameraMarioDataCFv: # 0x80028e74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x80028eb8
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80028eb8
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xcf
    bne-    branch_0x80028eb8
    li      r31, 0x1
branch_0x80028eb8:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isMarioSlider__16TCameraMarioDataCFv
isMarioSlider__16TCameraMarioDataCFv: # 0x80028ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x80028f20
    bl      SMS_GetMarioGrPlane__Fv
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0xc
    beq-    branch_0x80028f10
    cmplwi  r0, 0x800c
    beq-    branch_0x80028f10
    cmplwi  r0, 0xa00c
    bne-    branch_0x80028f18
branch_0x80028f10:
    li      r0, 0x1
    b       branch_0x80028f1c

branch_0x80028f18:
    li      r0, 0x0
branch_0x80028f1c:
    mr      r31, r0
branch_0x80028f20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isMarioIndoor__16TCameraMarioDataCFv
isMarioIndoor__16TCameraMarioDataCFv: # 0x80028f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x80028f90
    bl      SMS_GetMarioGrPlane__Fv
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x106
    beq-    branch_0x80028f80
    cmplwi  r3, 0x105
    beq-    branch_0x80028f80
    subi    r0, r3, 0x108
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    bgt-    branch_0x80028f88
branch_0x80028f80:
    li      r0, 0x1
    b       branch_0x80028f8c

branch_0x80028f88:
    li      r0, 0x0
branch_0x80028f8c:
    mr      r31, r0
branch_0x80028f90:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isMarioRocketing__16TCameraMarioDataCFv
isMarioRocketing__16TCameraMarioDataCFv: # 0x80028fa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    bl      SMS_GetMarioStatus__Fv
    cmpwi   r3, MARIOSTATUS_88c
    beq-    branch_0x80028fe4
    bge-    branch_0x80028fd8
    cmpwi   r3, MARIOSTATUS_88b
    bge-    branch_0x80028fe0
    b       branch_0x80028fe4

branch_0x80028fd8:
    cmpwi   r3, MARIOSTATUS_88e
    bge-    branch_0x80028fe4
branch_0x80028fe0:
    li      r31, 0x1
branch_0x80028fe4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isMarioGoDown__16TCameraMarioDataCFv
isMarioGoDown__16TCameraMarioDataCFv: # 0x80028ffc
    lfs     f2, -0x7868(rtoc)
    li      r0, 0x0
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f2, f0
    beq-    branch_0x80029030

    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, MarioActor(r13)
    lfs     f1, PositionY(r4)
    lfs     f0, MarioActor_2a0(r3)
    fsubs   f0, f1, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x80029030
    li      r0, 0x1
branch_0x80029030:
    mr      r3, r0
    blr


.globl calcAndSetMarioData__16TCameraMarioDataFv
calcAndSetMarioData__16TCameraMarioDataFv: # 0x80029038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    bl      SMS_GetMarioStatus__Fv
    lis     r4, 0x3800
    addi    r0, r4, MARIOSTATUS_34b
    cmpw    r3, r0
    beq-    branch_0x8002907c
    bge-    branch_0x8002908c
    lis     r4, 0x3000
    addi    r0, r4, 0x54c
    cmpw    r3, r0
    beq-    branch_0x8002907c
    b       branch_0x8002908c

branch_0x8002907c:
    lfs     f0, -0x7868(rtoc)
    stfs    f0, 0xc(r31)
    stfs    f0, 0x10(r31)
    b       branch_0x800290f8

branch_0x8002908c:
    lwz     r4, MarioActor(r13)
    lwz     r5, MarioHitActorPos(r13)
    addi    r4, r4, MarioActor_29c
    lfs     f1, PositionZ(r5)
    lfs     f0, 0x8(r4)
    lfs     f3, PositionX(r5)
    fsubs   f4, f1, f0
    lfs     f0, 0x0(r4)
    lfs     f2, PositionY(r5)
    lfs     f1, 0x4(r4)
    fsubs   f3, f3, f0
    fmuls   f0, f4, f4
    fsubs   f2, f2, f1
    fmadds  f1, f3, f3, f0
    fmuls   f0, f2, f2
    stfs    f1, 0xc(r31)
    stfs    f0, 0x10(r31)
    lfs     f1, 0xc(r31)
    lfs     f0, -0x7864(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800290e4
    stfs    f0, 0xc(r31)
branch_0x800290e4:
    lfs     f1, 0x10(r31)
    lfs     f0, -0x7864(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800290f8
    stfs    f0, 0x10(r31)
branch_0x800290f8:
    lwz     r0, 0x14(r31)
    cmplw   r0, r3
    beq-    branch_0x80029114
    stw     r3, 0x14(r31)
    li      r0, 0x0
    stw     r0, 0x18(r31)
    b       branch_0x80029120

branch_0x80029114:
    lwz     r3, 0x18(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x18(r31)
branch_0x80029120:
    bl      SMS_GetMarioWaterGun__Fv
    bl      getCurrentNozzle__9TWaterGunCFv
    lha     r30, 0x1bc(r3)
    bl      SMS_GetMarioWaterGun__Fv
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r12, 0x364(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    li      r3, 0x0
    bl      CLBCalcRatio_s___Fsss
    stfs    f1, 0x1c(r31)
    lfs     f1, 0x1c(r31)
    lfs     f0, -0x7860(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80029170
    fmr     f1, f0
    b       branch_0x80029180

branch_0x80029170:
    lfs     f0, -0x7868(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80029180
    fmr     f1, f0
branch_0x80029180:
    stfs    f1, 0x1c(r31)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl getGunAngle__11TNozzleBaseFv
getGunAngle__11TNozzleBaseFv: # 0x8002919c
    lha     r3, 0x36e(r3)
    blr


.globl __ct__16TCameraMarioDataFv
__ct__16TCameraMarioDataFv: # 0x800291a4
    lfs     f0, -0x7868(rtoc)
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stfs    f0, 0x1c(r3)
    blr

