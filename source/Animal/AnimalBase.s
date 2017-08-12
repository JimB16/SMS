
.globl __dt__11TAnimalBaseFv
__dt__11TAnimalBaseFv: # 0x80007fb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80008008
    lis     r3, __vvt__11TAnimalBase@ha
    addi    r3, r3, __vvt__11TAnimalBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x80008008
    mr      r3, r30
    bl      __dl__FPv
branch_0x80008008:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl execWalk__11TAnimalBaseFb
execWalk__11TAnimalBaseFb: # 0x80008024
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stw     r31, 0xd4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xd0(sp)
    lwz     r3, 0x70(r3)
    lwz     r30, 0x5c(r3)
    beq-    branch_0x8000808c
    lfs     f31, 0x7c(r30)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f30, f1
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f0, f31, f1
    lfs     f31, 0x68(r30)
    fmuls   f30, f0, f30
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    addi    r3, r31, 0x140
    fmr     f2, f30
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    b       branch_0x800080b0

branch_0x8000808c:
    lfs     f31, 0x90(r30)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f30, f1
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f0, f31, f1
    lfs     f1, -0x7f60(r2)
    addi    r3, r31, 0x140
    fmuls   f2, f0, f30
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
branch_0x800080b0:
    lfs     f1, 0x140(r31)
    lfs     f0, -0x7f50(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800080d4
    lfs     f30, 0xb8(r30)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f0, f30, f1
    stfs    f0, 0x144(r31)
    b       branch_0x800080e4

branch_0x800080d4:
    lfs     f30, 0xa4(r30)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f0, f30, f1
    stfs    f0, 0x144(r31)
branch_0x800080e4:
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    lfs     f30, 0x144(r31)
    cmplwi  r4, 0x0
    lfs     f31, 0x140(r31)
    beq-    branch_0x80008104
    addi    r4, r4, 0x10
    b       branch_0x80008108

branch_0x80008104:
    addi    r4, r3, 0x4
branch_0x80008108:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x98(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x98(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x98(sp)
    lfs     f1, 0x90(sp)
    lfs     f3, 0x98(sp)
    lfs     f0, 0x94(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x7f60(r2)
    fadds   f1, f2, f1
    fadds   f29, f3, f1
    fcmpo   cr0, f29, f0
    cror    2, 0, 2
    bne-    branch_0x80008184
    b       branch_0x800081a8

branch_0x80008184:
    frsqrte f3, f29
    lfs     f2, -0x7f58(r2)
    lfs     f0, -0x7f54(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f29, f1, f0
    fmuls   f0, f2, f0
    fmuls   f29, f29, f0
branch_0x800081a8:
    lfs     f0, -0x7f5c(r2)
    fcmpo   cr0, f29, f0
    blt-    branch_0x800083fc
    fmr     f1, f31
    mr      r3, r31
    fmr     f2, f30
    bl      calcMinimumTurnRadius__11TSpineEnemyCFff
    lfs     f0, -0x7f4c(r2)
    fmuls   f0, f0, f1
    fcmpo   cr0, f29, f0
    cror    2, 0, 2
    bne-    branch_0x800081f0
    lfs     f0, -0x7f58(r2)
    fmr     f1, f31
    mr      r3, r31
    fmuls   f2, f0, f29
    bl      calcTurnSpeedToReach__11TSpineEnemyCFff
    fmr     f30, f1
branch_0x800081f0:
    addi    r3, sp, 0x80
    addi    r4, sp, 0x90
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x80(sp)
    lwz     r3, 0x84(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0x78(sp)
    lfs     f2, -0x7f60(r2)
    stw     r0, 0x7c(sp)
    lfs     f3, -0x7f48(r2)
    lfs     f1, 0x78(sp)
    bl      MsWrap_f___Ffff_80008454
    stfs    f1, 0x78(sp)
    lfs     f29, 0x78(sp)
    lfs     f0, -0x7f44(r2)
    lfs     f1, 0x34(r31)
    fsubs   f2, f29, f0
    fadds   f3, f0, f29
    bl      MsWrap_f___Ffff_80008454
    fsubs   f0, f29, f1
    fneg    f29, f30
    fcmpo   cr0, f0, f29
    bge-    branch_0x80008254
    b       branch_0x80008268

branch_0x80008254:
    fcmpo   cr0, f0, f30
    ble-    branch_0x80008264
    fmr     f29, f30
    b       branch_0x80008268

branch_0x80008264:
    fmr     f29, f0
branch_0x80008268:
    lfs     f0, 0x34(r31)
    fadds   f0, f0, f29
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f2, -0x7f60(r2)
    lfs     f3, -0x7f48(r2)
    bl      MsWrap_f___Ffff_80008454
    stfs    f1, 0x34(r31)
    fneg    f0, f29
    lfs     f1, -0x7f40(r2)
    lfs     f2, -0x7f3c(r2)
    fmuls   f1, f1, f0
    lfs     f3, -0x7f38(r2)
    bl      MsClamp_f___Ffff
    lfs     f0, -0x7f34(r2)
    addi    r3, r31, 0x38
    fmuls   f29, f0, f31
    fmr     f2, f29
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f1, 0x74(sp)
    lfs     f2, -0x7f30(r2)
    lfs     f3, -0x7f44(r2)
    bl      MsWrap_f___Ffff_80008454
    stfs    f1, 0x74(sp)
    lfs     f2, -0x7f30(r2)
    lfs     f1, 0x30(r31)
    lfs     f3, -0x7f44(r2)
    bl      MsWrap_f___Ffff_80008454
    stfs    f1, 0x30(r31)
    fmr     f2, f29
    addi    r3, r31, 0x30
    lfs     f1, 0x74(sp)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    addi    r3, sp, 0xb8
    addi    r4, r31, 0x30
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xb8(sp)
    addi    r3, sp, 0x5c
    lfs     f0, -0x7f60(r2)
    stw     r0, 0x9c(sp)
    lwz     r0, 0xbc(sp)
    lwz     r4, 0xc0(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0xc4(sp)
    stw     r4, 0xa4(sp)
    stw     r0, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f0, 0xb0(sp)
    stfs    f31, 0xb4(sp)
    bl      __ct__Q29JGeometry8TVec4_f_Fv
    lfs     f5, 0xa4(sp)
    addi    r3, sp, 0xac
    lfs     f7, 0xb0(sp)
    lfs     f4, 0xac(sp)
    fneg    f11, f5
    lfs     f0, 0x9c(sp)
    fmuls   f2, f5, f7
    lfs     f9, 0xa0(sp)
    lfs     f6, 0xb4(sp)
    fneg    f10, f0
    lfs     f8, 0xa8(sp)
    fmuls   f1, f5, f4
    fmsubs  f2, f9, f6, f2
    fmuls   f0, f9, f7
    fmadds  f1, f10, f6, f1
    fmadds  f3, f8, f4, f2
    fmsubs  f0, f10, f4, f0
    fmadds  f2, f8, f7, f1
    stfs    f3, 0x5c(sp)
    fmuls   f1, f9, f4
    fnmsubs  f0, f5, f6, f0
    stfs    f2, 0x60(sp)
    fneg    f9, f9
    lfs     f2, 0x9c(sp)
    fmsubs  f1, f2, f7, f1
    fmadds  f1, f8, f6, f1
    stfs    f1, 0x64(sp)
    stfs    f0, 0x68(sp)
    lfs     f0, 0x60(sp)
    lfs     f3, 0x5c(sp)
    fmuls   f2, f0, f11
    lfs     f4, 0x64(sp)
    fmuls   f1, f0, f8
    lfs     f6, 0x68(sp)
    fmuls   f0, f0, f10
    fmadds  f2, f3, f8, f2
    fmsubs  f0, f3, f9, f0
    fmadds  f1, f3, f5, f1
    fnmsubs  f3, f4, f9, f2
    fmadds  f0, f4, f8, f0
    fmadds  f2, f4, f10, f1
    fmadds  f1, f6, f10, f3
    fmadds  f3, f6, f11, f0
    fmadds  f2, f6, f9, f2
    bl      set_f___Q29JGeometry8TVec3_f_Ffff
    lwz     r3, 0xac(sp)
    lwz     r0, 0xb0(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0xb4(sp)
    stw     r0, 0x9c(r31)
branch_0x800083fc:
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    addi    sp, sp, 0xf0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff
set_f___Q29JGeometry8TVec3_f_Ffff: # 0x80008420
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __ct__Q29JGeometry8TVec4_f_Fv
__ct__Q29JGeometry8TVec4_f_Fv: # 0x80008430
    blr


.globl MsClamp_f___Ffff
MsClamp_f___Ffff: # 0x80008434
    fcmpo   cr0, f1, f3
    ble-    branch_0x80008444
    fmr     f1, f3
    blr

branch_0x80008444:
    fcmpo   cr0, f1, f2
    bgelr-    

    fmr     f1, f2
    blr


.globl MsWrap_f___Ffff_80008454
MsWrap_f___Ffff_80008454: # 0x80008454
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x80008490
    fmr     f1, f2
    blr

branch_0x80008468:
    b       branch_0x80008470

branch_0x8000846c:
    fsubs   f1, f1, f0
branch_0x80008470:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8000846c
    b       branch_0x80008484

branch_0x80008480:
    fadds   f1, f1, f0
branch_0x80008484:
    fcmpo   cr0, f1, f2
    blt+    branch_0x80008480
    blr

branch_0x80008490:
    fsubs   f0, f3, f2
    b       branch_0x80008470

branch_0x80008498:
    blr


.globl getRotationFlyToDir__11TAnimalBaseFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff
getRotationFlyToDir__11TAnimalBaseFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff: # 0x8000849c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    fmr     f31, f1
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    fmr     f29, f2
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x34
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x34(sp)
    lwz     r3, 0x38(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x48(sp)
    lfs     f0, -0x7f48(r2)
    stw     r0, 0x4c(sp)
    lfs     f2, 0x48(sp)
    b       branch_0x800084f4

branch_0x800084f0:
    fsubs   f2, f2, f0
branch_0x800084f4:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800084f0
    lfs     f1, -0x7f48(r2)
    lfs     f0, -0x7f60(r2)
    b       branch_0x80008510

branch_0x8000850c:
    fadds   f2, f2, f1
branch_0x80008510:
    fcmpo   cr0, f2, f0
    blt+    branch_0x8000850c
    stfs    f2, 0x48(sp)
    lfs     f30, 0x48(sp)
    lfs     f0, -0x7f44(r2)
    lfs     f1, 0x4(r31)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_80008454
    fsubs   f0, f30, f1
    fneg    f3, f29
    fcmpo   cr0, f0, f3
    bge-    branch_0x80008548
    b       branch_0x8000855c

branch_0x80008548:
    fcmpo   cr0, f0, f29
    ble-    branch_0x80008558
    fmr     f3, f29
    b       branch_0x8000855c

branch_0x80008558:
    fmr     f3, f0
branch_0x8000855c:
    lfs     f0, 0x4(r31)
    fadds   f0, f0, f3
    stfs    f0, 0x4(r31)
    lfs     f2, 0x4(r31)
    lfs     f0, -0x7f48(r2)
    b       branch_0x80008578

branch_0x80008574:
    fsubs   f2, f2, f0
branch_0x80008578:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80008574
    lfs     f1, -0x7f48(r2)
    lfs     f0, -0x7f60(r2)
    b       branch_0x80008594

branch_0x80008590:
    fadds   f2, f2, f1
branch_0x80008594:
    fcmpo   cr0, f2, f0
    blt+    branch_0x80008590
    stfs    f2, 0x4(r31)
    fneg    f1, f3
    lfs     f2, -0x7f40(r2)
    lfs     f0, -0x7f38(r2)
    fmuls   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800085c0
    fmr     f1, f0
    b       branch_0x800085d0

branch_0x800085c0:
    lfs     f0, -0x7f3c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800085d0
    fmr     f1, f0
branch_0x800085d0:
    lfs     f0, -0x7f34(r2)
    addi    r3, r31, 0x8
    fmuls   f30, f0, f31
    fmr     f2, f30
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f2, 0x44(sp)
    lfs     f1, -0x7f48(r2)
    lfs     f0, -0x7f44(r2)
    b       branch_0x800085f8

branch_0x800085f4:
    fsubs   f2, f2, f1
branch_0x800085f8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800085f4
    lfs     f1, -0x7f48(r2)
    lfs     f0, -0x7f30(r2)
    b       branch_0x80008614

branch_0x80008610:
    fadds   f2, f2, f1
branch_0x80008614:
    fcmpo   cr0, f2, f0
    blt+    branch_0x80008610
    stfs    f2, 0x44(sp)
    lfs     f1, -0x7f48(r2)
    lfs     f2, 0x0(r31)
    lfs     f0, -0x7f44(r2)
    b       branch_0x80008634

branch_0x80008630:
    fsubs   f2, f2, f1
branch_0x80008634:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80008630
    lfs     f1, -0x7f48(r2)
    lfs     f0, -0x7f30(r2)
    b       branch_0x80008650

branch_0x8000864c:
    fadds   f2, f2, f1
branch_0x80008650:
    fcmpo   cr0, f2, f0
    blt+    branch_0x8000864c
    stfs    f2, 0x0(r31)
    fmr     f2, f30
    mr      r3, r31
    lfs     f1, 0x44(sp)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x70
    blr


.globl resetRandomCurPathNode__11TAnimalBaseFv
resetRandomCurPathNode__11TAnimalBaseFv: # 0x8000868c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    addi    r5, sp, 0x30
    stw     r30, 0x50(sp)
    lwz     r0, 0xf4(r3)
    stw     r0, 0x2c(sp)
    lwz     r3, 0xf8(r3)
    lwz     r0, 0xfc(r31)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x100(r31)
    stw     r0, 0x38(sp)
    lwz     r3, 0x2c(sp)
    cmplwi  r3, 0x0
    bne-    branch_0x80008890
    beq-    branch_0x800086dc
    addi    r5, r3, 0x10
branch_0x800086dc:
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x28(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7f18(r2)
    stw     r0, 0x4c(sp)
    lis     r30, 0x4330
    lfs     f3, -0x7f28(r2)
    stw     r30, 0x48(sp)
    lfs     f1, -0x7f58(r2)
    lfd     f0, 0x48(sp)
    lfs     f2, -0x7f24(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x20(sp)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x20(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7f18(r2)
    stw     r0, 0x44(sp)
    lfs     f3, -0x7f28(r2)
    stw     r30, 0x40(sp)
    lfs     f1, -0x7f58(r2)
    lfd     f0, 0x40(sp)
    lfs     f2, -0x7f24(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x28(sp)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x28(sp)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x1
    bne-    branch_0x800087f8
    lfs     f0, 0x24(sp)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x800087b8
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7f18(r2)
    stw     r0, 0x44(sp)
    lfs     f0, -0x7f28(r2)
    stw     r30, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x800087e4

branch_0x800087b8:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7f18(r2)
    stw     r0, 0x44(sp)
    lfs     f1, -0x7f28(r2)
    stw     r30, 0x40(sp)
    lfs     f0, -0x7f58(r2)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f1, f0
branch_0x800087e4:
    lfs     f1, -0x7f24(r2)
    lfs     f0, 0x24(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x24(sp)
    b       branch_0x8000882c

branch_0x800087f8:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7f18(r2)
    stw     r0, 0x44(sp)
    lfs     f2, -0x7f28(r2)
    stw     r30, 0x40(sp)
    lfs     f1, -0x7f20(r2)
    lfd     f3, 0x40(sp)
    lfs     f0, 0x24(sp)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x24(sp)
branch_0x8000882c:
    li      r4, 0x0
    lwz     r3, 0x20(sp)
    stw     r4, 0x2c(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x2c(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x38(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x38(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x80008890:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl perform__11TAnimalBaseFUlPQ26JDrama9TGraphics
perform__11TAnimalBaseFUlPQ26JDrama9TGraphics: # 0x800088a8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x130(sp)
    stmw    r23, 0x10c(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x80008964
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80008960
    lfs     f0, -0x7f60(r2)
    mr      r3, r29
    stfs    f0, 0x9c(r29)
    stfs    f0, 0x98(r29)
    stfs    f0, 0x94(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x10(r29)
    lfs     f0, 0x94(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x98(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lfs     f1, 0x18(r29)
    lfs     f0, 0x9c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r29)
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x1
    bne-    branch_0x80008960
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3813
    lha     r23, 0x7c(r29)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80008960
    li      r3, 0x3813
    addi    r4, r23, 0x0
    bl      startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
branch_0x80008960:
    clrrwi  r30, r30, 1
branch_0x80008964:
    lwz     r27, 0x70(r29)
    rlwinm. r0, r30, 0, 30, 30
    lwz     r3, 0x5c(r27)
    lwz     r26, 0x18(r3)
    beq-    branch_0x800089e8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r29)
    bl      frameUpdate__6MActorFv
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x800089b4
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
branch_0x800089b4:
    cmpwi   r26, 0x0
    beq-    branch_0x800089c8
    lha     r0, 0x7c(r29)
    cmpw    r0, r26
    blt-    branch_0x800089dc
branch_0x800089c8:
    cmpwi   r26, 0x0
    bne-    branch_0x800089e4
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x800089e4
branch_0x800089dc:
    lwz     r3, 0x74(r29)
    bl      calc__6MActorFv
branch_0x800089e4:
    rlwinm  r30, r30, 0, 31, 29
branch_0x800089e8:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x80008bbc
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x80008bb8
    lis     r3, j3dSys@h
    addi    r23, r3, j3dSys@l
    addi    r3, r23, 0x0
    addi    r4, sp, 0xd8
    bl      PSMTXCopy
    addi    r3, sp, 0x78
    addi    r4, r29, 0x30
    addi    r5, r29, 0x10
    bl      CLBCalcRotateZXYTranslateMatrix__FPA4_fRC3VecRC3Vec
    addi    r3, sp, 0xd8
    addi    r4, sp, 0x78
    addi    r5, sp, 0xa8
    bl      PSMTXConcat
    addi    r4, r23, 0x0
    addi    r3, sp, 0xa8
    bl      PSMTXCopy
    cmpwi   r26, 0x0
    beq-    branch_0x80008a50
    lha     r4, 0x7c(r29)
    cmpw    r4, r26
    bge-    branch_0x80008a5c
branch_0x80008a50:
    lwz     r3, 0x74(r29)
    bl      viewCalc__6MActorFv
    b       branch_0x80008ba8

branch_0x80008a5c:
    divw    r0, r4, r26
    lwz     r3, 0x18(r27)
    mullw   r0, r0, r26
    subf    r0, r0, r4
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getModel__10TLiveActorCFv
    addi    r27, r3, 0x0
    addi    r3, r29, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0x7c(r3)
    mr      r25, r3
    lwz     r5, 0x60(r3)
    addi    r28, sp, 0x6c
    lwz     r26, 0x4(r3)
    slwi    r0, r0, 2
    lwz     r4, 0x64(r25)
    add     r6, r5, r0
    lhz     r23, 0x98(r26)
    lwz     r5, 0x0(r6)
    addi    r3, r25, 0x6c
    lwzx    r0, r4, r0
    li      r24, 0x0
    stw     r0, 0x0(r6)
    lwz     r0, 0x7c(r25)
    lwz     r4, 0x64(r25)
    slwi    r0, r0, 2
    stwx    r5, r4, r0
    lwz     r0, 0x7c(r25)
    lwz     r5, 0x68(r25)
    slwi    r0, r0, 2
    lwz     r4, 0x6c(r25)
    add     r6, r5, r0
    lwz     r5, 0x0(r6)
    lwzx    r0, r4, r0
    stw     r0, 0x0(r6)
    lwz     r0, 0x7c(r25)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 2
    stwx    r5, r3, r0
    lwz     r0, 0x58(r27)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x5c(r27)
    stw     r0, 0x70(sp)
    b       branch_0x80008b5c

branch_0x80008b10:
    lwz     r6, 0x9c(r26)
    clrlwi  r7, r24, 16
    lwz     r3, 0xa0(r26)
    clrlslwi  r0, r24, 16, 1
    lbzx    r6, r6, r7
    lhzx    r7, r3, r0
    mulli   r4, r4, 0x30
    lwz     r5, 0x7c(r25)
    slwi    r0, r6, 2
    lwz     r6, 0x64(r25)
    slwi    r3, r5, 2
    lwzx    r8, r28, r0
    lwzx    r3, r6, r3
    mulli   r0, r7, 0x30
    add     r5, r3, r4
    addi    r3, sp, 0xa8
    add     r4, r8, r0
    bl      PSMTXConcat
    addi    r24, r24, 0x1
branch_0x80008b5c:
    clrlwi  r4, r24, 16
    cmpw    r4, r23
    blt+    branch_0x80008b10
    mr      r3, r25
    bl      calcNrmMtx__8J3DModelFv
    lwz     r0, 0x7c(r25)
    mulli   r4, r23, 0x30
    lwz     r3, 0x64(r25)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      DCStoreRange
    lwz     r0, 0x7c(r25)
    mulli   r4, r23, 0x24
    lwz     r3, 0x6c(r25)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      DCStoreRange
    mr      r3, r25
    bl      prepareShapePackets__8J3DModelFv
branch_0x80008ba8:
    lis     r3, j3dSys@h
    addi    r4, r3, j3dSys@l
    addi    r3, sp, 0xd8
    bl      PSMTXCopy
branch_0x80008bb8:
    rlwinm  r30, r30, 0, 30, 28
branch_0x80008bbc:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lmw     r23, 0x10c(sp)
    lwz     r0, 0x134(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl receiveMessage__11TAnimalBaseFP9THitActorUl
receiveMessage__11TAnimalBaseFP9THitActorUl: # 0x80008be0
    li      r3, 0x0
    blr


.globl calcRootMatrix__11TAnimalBaseFv
calcRootMatrix__11TAnimalBaseFv: # 0x80008be8
    blr


.globl loadAfter__11TAnimalBaseFv
loadAfter__11TAnimalBaseFv: # 0x80008bec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x1
    bne-    branch_0x80008c20
    li      r3, 0x3813
    addi    r4, r31, 0x10
    bl      registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
branch_0x80008c20:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__11TAnimalBaseFR20JSUMemoryInputStream
load__11TAnimalBaseFR20JSUMemoryInputStream: # 0x80008c34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r27, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x20(sp)
    lis     r3, __vvt__11TAnimalBase@ha
    addi    r31, r3, __vvt__11TAnimalBase@l
    addi    r28, r4, -0x1
    addi    r29, r31, 0x24
    li      r27, 0x0
    b       branch_0x80008cb8

branch_0x80008c7c:
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80008ca8
    lwz     r4, 0x4(r26)
    mr      r3, r25
    lwz     r30, 0x4c(r26)
    bl      __ct__11TSpineEnemyFPCc
    stw     r31, 0x0(r25)
    stw     r29, 0x20(r25)
    stw     r30, 0x4c(r25)
branch_0x80008ca8:
    addi    r4, r25, 0x0
    addi    r3, r26, 0x0
    bl      initNoLoad___11TAnimalBaseFP11TAnimalBase
    addi    r27, r27, 0x1
branch_0x80008cb8:
    cmpw    r27, r28
    blt+    branch_0x80008c7c
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl initNoLoad___11TAnimalBaseFP11TAnimalBase
initNoLoad___11TAnimalBaseFP11TAnimalBase: # 0x80008cd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r4
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    stw     r3, 0x8(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r30, 0x8(sp)
    stw     r0, 0x94(sp)
    lis     r29, 0x4330
    lfd     f2, -0x7f18(r2)
    stw     r29, 0x90(sp)
    lfs     f3, -0x7f28(r2)
    lfd     f0, 0x90(sp)
    lfs     f1, -0x7f58(r2)
    fsubs   f4, f0, f2
    lfs     f2, -0x7f24(r2)
    lfs     f0, 0x10(r30)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7f18(r2)
    stw     r0, 0x8c(sp)
    lfs     f3, -0x7f28(r2)
    stw     r29, 0x88(sp)
    lfs     f1, -0x7f58(r2)
    lfd     f0, 0x88(sp)
    lfs     f2, -0x7f24(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x18(r30)
    fmuls   f3, f3, f4
    fsubs   f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x1
    bne-    branch_0x80008dbc
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7f18(r2)
    stw     r0, 0x8c(sp)
    lfs     f2, -0x7f28(r2)
    stw     r29, 0x88(sp)
    lfs     f1, -0x7f24(r2)
    lfd     f3, 0x88(sp)
    lfs     f0, 0x14(r30)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80008df0

branch_0x80008dbc:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x7f18(r2)
    stw     r0, 0x8c(sp)
    lfs     f2, -0x7f28(r2)
    stw     r29, 0x88(sp)
    lfs     f1, -0x7f20(r2)
    lfd     f3, 0x88(sp)
    lfs     f0, 0x14(r30)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x14(r31)
branch_0x80008df0:
    lwz     r30, 0x8(sp)
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x24(r31)
    stw     r0, 0x28(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x2c(r31)
    lfs     f0, -0x7f60(r2)
    stfs    f0, 0x30(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f1, -0x7f18(r2)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfs     f4, -0x7f28(r2)
    stw     r0, 0x88(sp)
    lfs     f2, -0x7f58(r2)
    lfd     f0, 0x88(sp)
    lfs     f3, -0x7f10(r2)
    fsubs   f5, f0, f1
    lfs     f1, 0x34(r30)
    lfs     f0, -0x7f48(r2)
    fmuls   f4, f4, f5
    fsubs   f2, f4, f2
    fmadds  f2, f3, f2, f1
    b       branch_0x80008e5c

branch_0x80008e58:
    fsubs   f2, f2, f0
branch_0x80008e5c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80008e58
    lfs     f1, -0x7f48(r2)
    lfs     f0, -0x7f60(r2)
    b       branch_0x80008e78

branch_0x80008e74:
    fadds   f2, f2, f1
branch_0x80008e78:
    fcmpo   cr0, f2, f0
    blt+    branch_0x80008e74
    stfs    f2, 0x34(r31)
    stfs    f0, 0x38(r31)
    lwz     r30, 0x8(sp)
    lwz     r0, 0x3c(r30)
    stw     r0, 0x3c(r31)
    lwz     r4, 0x124(r30)
    lwz     r3, 0x124(r31)
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r4, 0x70(r30)
    lwz     r12, 0xbc(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_80373618@h
    addi    r31, r3, unk_80373618@l
    lwz     r29, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x50
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x50(sp)
    addi    r3, sp, 0x74
    addi    r4, sp, 0x4c
    stw     r0, 0x4c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x74(sp)
    addi    r5, sp, 0x60
    addi    r4, r29, 0x0
    stw     r0, 0x70(sp)
    addi    r3, sp, 0x5c
    addi    r6, sp, 0x8
    lwz     r0, 0x70(sp)
    stw     r0, 0x60(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
__ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator: # 0x80008f5c
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    blr


.globl __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
__ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_: # 0x80008f68
    stw     r4, 0x0(r3)
    blr


.globl init__11TAnimalBaseFP12TLiveManager
init__11TAnimalBaseFP12TLiveManager: # 0x80008f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x0
    stw     r29, 0x84(sp)
    stw     r31, 0x70(r3)
    addi    r3, r31, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80008fc0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__13TMActorKeeperFP12TLiveManager
branch_0x80008fc0:
    stw     r29, 0x78(r30)
    li      r4, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActorFromAllBmd__13TMActorKeeperFUl
    lwz     r4, 0x78(r30)
    addi    r3, r30, 0x0
    li      r5, 0x0
    lwz     r4, 0x8(r4)
    li      r6, 0x0
    lwz     r0, 0x0(r4)
    stw     r0, 0x74(r30)
    lfs     f1, -0x7f60(r2)
    lwz     r4, 0x4c(r30)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lfs     f0, -0x7f0c(r2)
    stfs    f0, 0x148(r30)
    lfs     f0, -0x7f60(r2)
    stfs    f0, 0x140(r30)
    lfs     f0, -0x7f08(r2)
    stfs    f0, 0xbc(r30)
    lfs     f0, -0x7f04(r2)
    stfs    f0, 0x14c(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x38
    stw     r0, 0xf0(r30)
    bl      theNerve__23TNerveAnimalGraphWanderFv
    lwz     r4, 0x8c(r30)
    li      r29, 0x0
    li      r0, -0x1
    stw     r29, 0x8(r4)
    stw     r29, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    mr      r3, r30
    stw     r29, 0x1c(r4)
    lwz     r4, 0x124(r30)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8000908c
    stw     r29, 0x0(r3)
    li      r0, 0x1
    stw     r0, 0x4(r3)
branch_0x8000908c:
    stw     r3, 0x150(r30)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    bl      setBckFromIndex__6MActorFi
    lfs     f0, -0x7f60(r2)
    stfs    f0, 0x140(r30)
    lwz     r3, 0x70(r30)
    lwz     r3, 0x5c(r3)
    lfs     f31, 0xa4(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f0, f31, f1
    li      r4, 0x0
    stfs    f0, 0x144(r30)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    mr.     r29, r3
    beq-    branch_0x80009184
    lwz     r3, 0x5c(r31)
    lwz     r5, 0x18(r3)
    cmpwi   r5, 0x0
    bne-    branch_0x80009110
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7f18(r2)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7f28(r2)
    stw     r0, 0x78(sp)
    lfd     f1, 0x78(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fmr     f2, f0
    b       branch_0x8000915c

branch_0x80009110:
    lha     r3, 0x7c(r30)
    xoris   r0, r5, 0x8000
    stw     r0, 0x7c(sp)
    lis     r4, 0x4330
    divw    r0, r3, r5
    stw     r4, 0x78(sp)
    lfd     f2, -0x7f18(r2)
    lfd     f0, 0x78(sp)
    lfs     f1, -0x7f0c(r2)
    fsubs   f0, f0, f2
    mullw   r0, r0, r5
    fdivs   f1, f1, f0
    subf    r0, r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x74(sp)
    stw     r4, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f2
    fmuls   f2, f1, f0
branch_0x8000915c:
    lha     r3, 0x8(r29)
    lis     r0, 0x4330
    lfd     f1, -0x7f18(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r29)
branch_0x80009184:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    mr.     r30, r3
    beq-    branch_0x800091e0
    bl      rand
    xoris   r3, r3, 0x8000
    lha     r0, 0x8(r30)
    stw     r3, 0x74(sp)
    lis     r3, 0x4330
    xoris   r0, r0, 0x8000
    lfd     f3, -0x7f18(r2)
    stw     r3, 0x70(sp)
    lfs     f1, -0x7f28(r2)
    stw     r0, 0x7c(sp)
    lfd     f0, 0x70(sp)
    stw     r3, 0x78(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x78(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r30)
branch_0x800091e0:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lwz     r31, 0x8c(sp)
    mtlr    r0
    lwz     r30, 0x88(sp)
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x98
    blr


.globl __ct__11TAnimalBaseFUlPCc
__ct__11TAnimalBaseFUlPCc: # 0x80009200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__11TAnimalBase@ha
    addi    r3, r3, __vvt__11TAnimalBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    stw     r31, 0x4c(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_: # 0x80009258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stfd    f28, 0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r4
    stw     r30, 0xb0(sp)
    mr      r30, r3
    lfs     f2, -0x7f2c(r2)
    lfs     f1, 0x8(r4)
    lfs     f0, -0x7f58(r2)
    fmuls   f1, f2, f1
    fmuls   f29, f0, f1
    fmr     f1, f29
    bl      sinf
    fmr     f31, f1
    fmr     f1, f29
    bl      cosf
    lfs     f2, -0x7f2c(r2)
    fmr     f29, f1
    lfs     f1, 0x4(r31)
    lfs     f0, -0x7f58(r2)
    fmuls   f1, f2, f1
    fmuls   f28, f0, f1
    fmr     f1, f28
    bl      sinf
    fmr     f30, f1
    fmr     f1, f28
    bl      cosf
    lfs     f0, -0x7f60(r2)
    stfs    f0, 0x90(sp)
    stfs    f30, 0x94(sp)
    stfs    f0, 0x98(sp)
    stfs    f1, 0x9c(sp)
    lfs     f2, -0x7f2c(r2)
    lfs     f1, 0x0(r31)
    lfs     f0, -0x7f58(r2)
    fmuls   f1, f2, f1
    fmuls   f28, f0, f1
    fmr     f1, f28
    bl      sinf
    fmr     f30, f1
    fmr     f1, f28
    bl      cosf
    lfs     f9, -0x7f60(r2)
    lfs     f0, 0x9c(sp)
    fmuls   f5, f1, f9
    lfs     f4, 0x90(sp)
    fmuls   f10, f9, f29
    lfs     f3, 0x94(sp)
    fmuls   f11, f30, f9
    fmuls   f12, f9, f31
    lfs     f2, 0x98(sp)
    fmadds  f6, f30, f29, f5
    fadds   f7, f10, f5
    fmsubs  f5, f1, f29, f11
    fadds   f8, f12, f6
    fmadds  f6, f1, f31, f10
    fadds   f7, f9, f7
    fsubs   f8, f8, f9
    fsubs   f1, f5, f9
    fadds   f5, f11, f6
    fnmsubs  f10, f30, f31, f7
    fsubs   f11, f1, f12
    fmuls   f1, f0, f8
    fsubs   f9, f5, f9
    fmuls   f5, f0, f10
    fmadds  f1, f4, f11, f1
    fmuls   f6, f0, f9
    fmadds  f5, f3, f11, f5
    fmuls   f7, f4, f8
    fmadds  f1, f3, f9, f1
    fmadds  f6, f2, f11, f6
    fmadds  f5, f2, f8, f5
    fmsubs  f7, f0, f11, f7
    fnmsubs  f0, f2, f10, f1
    fmadds  f1, f4, f10, f6
    fnmsubs  f6, f3, f10, f7
    fnmsubs  f4, f4, f9, f5
    stfs    f0, 0x90(sp)
    fnmsubs  f0, f3, f8, f1
    fnmsubs  f1, f2, f9, f6
    stfs    f4, 0x94(sp)
    stfs    f0, 0x98(sp)
    stfs    f1, 0x9c(sp)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r3, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0x8(r30)
    stw     r0, 0xc(r30)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    lfd     f29, 0xc0(sp)
    lfd     f28, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl CLBChaseGeneralConstantSpecifySpeed_f___FPfff
CLBChaseGeneralConstantSpecifySpeed_f___FPfff: # 0x80009400
    lfs     f0, -0x7f60(r2)
    lfs     f3, 0x0(r3)
    fcmpo   cr0, f2, f0
    fsubs   f3, f1, f3
    bge-    branch_0x80009418
    fneg    f2, f2
branch_0x80009418:
    lfs     f0, -0x7f60(r2)
    fcmpo   cr0, f3, f0
    ble-    branch_0x80009444
    fsubs   f3, f3, f2
    fcmpo   cr0, f3, f0
    ble-    branch_0x8000943c
    fsubs   f0, f1, f3
    stfs    f0, 0x0(r3)
    b       branch_0x80009460

branch_0x8000943c:
    stfs    f1, 0x0(r3)
    b       branch_0x80009460

branch_0x80009444:
    fadds   f3, f3, f2
    fcmpo   cr0, f3, f0
    bge-    branch_0x8000945c
    fsubs   f0, f1, f3
    stfs    f0, 0x0(r3)
    b       branch_0x80009460

branch_0x8000945c:
    stfs    f1, 0x0(r3)
branch_0x80009460:
    lfs     f0, 0x0(r3)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80009474
    li      r3, 0x0
    blr

branch_0x80009474:
    li      r3, 0x1
    blr


.globl __sinit_AnimalBase_cpp
__sinit_AnimalBase_cpp: # 0x8000947c
    mflr    r0
    lis     r3, unk_803e9760@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803e9760@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800094c4
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800094c4:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800094f4
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800094f4:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80009524
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80009524:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80009554
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80009554:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80009584
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80009584:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800095b4
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800095b4:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800095e4
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800095e4:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80009614
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80009614:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80009644
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80009644:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80009674
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80009674:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800096a4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800096a4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800096d4
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800096d4:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80009704
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80009704:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80009734
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80009734:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80009764
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80009764:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__26JSUList_15JALSeModVolFunk_Fv
__dt__26JSUList_15JALSeModVolFunk_Fv: # 0x80009778
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800097b4
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x800097b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800097b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModPitFunk_Fv
__dt__26JSUList_15JALSeModPitFunk_Fv: # 0x800097d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8000980c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x8000980c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8000980c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModEffFunk_Fv
__dt__26JSUList_15JALSeModEffFunk_Fv: # 0x80009828
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009864
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009864
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009864:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModVolDist_Fv
__dt__26JSUList_15JALSeModVolDist_Fv: # 0x80009880
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800098bc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x800098bc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800098bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModPitDist_Fv
__dt__26JSUList_15JALSeModPitDist_Fv: # 0x800098d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009914
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009914
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009914:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModEffDist_Fv
__dt__26JSUList_15JALSeModEffDist_Fv: # 0x80009930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8000996c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x8000996c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8000996c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModVolFGrp_Fv
__dt__26JSUList_15JALSeModVolFGrp_Fv: # 0x80009988
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800099c4
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x800099c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800099c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModPitFGrp_Fv
__dt__26JSUList_15JALSeModPitFGrp_Fv: # 0x800099e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009a1c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009a1c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009a1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModEffFGrp_Fv
__dt__26JSUList_15JALSeModEffFGrp_Fv: # 0x80009a38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009a74
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009a74
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009a74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModVolDGrp_Fv
__dt__26JSUList_15JALSeModVolDGrp_Fv: # 0x80009a90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009acc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009acc
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009acc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModPitDGrp_Fv
__dt__26JSUList_15JALSeModPitDGrp_Fv: # 0x80009ae8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009b24
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009b24
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009b24:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26JSUList_15JALSeModEffDGrp_Fv
__dt__26JSUList_15JALSeModEffDGrp_Fv: # 0x80009b40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009b7c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009b7c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009b7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21JSUList_10MSSetSound_Fv
__dt__21JSUList_10MSSetSound_Fv: # 0x80009b98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009bd4
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009bd4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009bd4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24JSUList_13MSSetSoundGrp_Fv
__dt__24JSUList_13MSSetSoundGrp_Fv: # 0x80009bf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009c2c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009c2c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009c2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15JSUList_5MSBgm_Fv
__dt__15JSUList_5MSBgm_Fv: # 0x80009c48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009c84
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80009c84
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009c84:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl unk_80009ca0
unk_80009ca0: # 0x80009ca0
    addi    r3, r3, -0x20
    b       __dt__11TAnimalBaseFv

