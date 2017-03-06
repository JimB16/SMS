
.globl __dt__9TSunModelFv
__dt__9TSunModelFv: # 0x8002e9f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8002ea54
    lis     r3, 0x803b
    subi    r3, r3, 0x2e60
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    addic.  r0, r30, 0x50
    stw     r3, 0x20(r30)
    beq-    branch_0x8002ea38
    lis     r3, 0x803b
    subi    r0, r3, 0x2eac
    stw     r0, 0x50(r30)
branch_0x8002ea38:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x8002ea54
    mr      r3, r30
    bl      __dl__FPv
branch_0x8002ea54:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getZBufValue__9TSunModelFv
getZBufValue__9TSunModelFv: # 0x8002ea70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr      r26, r3
    lwz     r3, -0x7110(r13)
    bl      isMarioIndoor__16TCameraMarioDataCFv
    addi    r28, r26, 0xb4
    addi    r27, r26, 0x180
    clrlwi  r30, r3, 24
    li      r26, 0x0
    li      r31, 0x1
    li      r29, 0x0
branch_0x8002eaa4:
    cmplwi  r30, 0x0
    stb     r29, 0x0(r27)
    bne-    branch_0x8002eae4
    lha     r3, 0x0(r28)
    cmpwi   r3, -0x1
    beq-    branch_0x8002eae4
    lha     r4, 0x2(r28)
    cmpwi   r4, -0x1
    beq-    branch_0x8002eae4
    addi    r5, sp, 0xc
    bl      GXPeekZ
    lwz     r3, 0xc(sp)
    addis   r0, r3, 0xff01
    cmplwi  r0, 0xffff
    bne-    branch_0x8002eae4
    stb     r31, 0x0(r27)
branch_0x8002eae4:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x11
    addi    r28, r28, 0x4
    addi    r27, r27, 0x1
    blt+    branch_0x8002eaa4
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl perform__9TSunModelFUlPQ26JDrama9TGraphics
perform__9TSunModelFUlPQ26JDrama9TGraphics: # 0x8002eb0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    stw     r30, 0xd8(sp)
    mr      r30, r4
    stw     r29, 0xd4(sp)
    mr      r29, r3
    stw     r28, 0xd0(sp)
    lwz     r3, -0x7110(r13)
    bl      isMarioIndoor__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002eb48
    li      r31, 0x0
    b       branch_0x8002ebd0

branch_0x8002eb48:
    lfs     f2, 0x1a8(r29)
    li      r3, 0x0
    lfs     f1, 0xf8(r29)
    mr      r4, r3
    fneg    f0, f2
    mr      r0, r3
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8002eb7c
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8002eb7c
    li      r0, 0x1
branch_0x8002eb7c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002eb9c
    fneg    f1, f2
    lfs     f0, 0xfc(r29)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002eb9c
    li      r4, 0x1
branch_0x8002eb9c:
    clrlwi. r0, r4, 24
    beq-    branch_0x8002ebb8
    lfs     f0, 0xfc(r29)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x8002ebb8
    li      r3, 0x1
branch_0x8002ebb8:
    clrlwi. r0, r3, 24
    beq-    branch_0x8002ebc8
    li      r0, 0x1
    b       branch_0x8002ebcc

branch_0x8002ebc8:
    li      r0, 0x0
branch_0x8002ebcc:
    mr      r31, r0
branch_0x8002ebd0:
    clrlwi. r0, r30, 31
    beq-    branch_0x8002edfc
    lbz     r0, 0x68(r29)
    lis     r28, 0x4330
    lfd     f1, -0x7678(rtoc)
    stw     r0, 0xcc(sp)
    lfs     f2, -0x7690(rtoc)
    stw     r28, 0xc8(sp)
    lfs     f3, 0x194(r29)
    lfd     f0, 0xc8(sp)
    fsubs   f1, f0, f1
    bl      CLBLinearInbetween_f___Ffff
    stfs    f1, 0xa4(r29)
    lbz     r0, 0x74(r29)
    lfd     f1, -0x7678(rtoc)
    stw     r0, 0xc4(sp)
    lfs     f2, -0x7690(rtoc)
    stw     r28, 0xc0(sp)
    lfs     f3, 0x194(r29)
    lfd     f0, 0xc0(sp)
    fsubs   f1, f0, f1
    bl      CLBEaseOutInbetween_f___Ffff
    stfs    f1, 0xa8(r29)
    lfs     f0, 0x9c(r29)
    lfs     f1, 0xa4(r29)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8002ec44
    lfs     f2, 0x6c(r29)
    b       branch_0x8002ec48

branch_0x8002ec44:
    lfs     f2, 0x70(r29)
branch_0x8002ec48:
    lfs     f3, -0x768c(rtoc)
    addi    r3, r29, 0x9c
    bl      CLBChaseDecrease__FPffff
    lfs     f0, 0x9c(r29)
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    sth     r0, 0x92(r29)
    lfs     f0, 0xa0(r29)
    lfs     f1, 0xa8(r29)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8002ec80
    lfs     f2, 0x78(r29)
    b       branch_0x8002ec84

branch_0x8002ec80:
    lfs     f2, 0x7c(r29)
branch_0x8002ec84:
    lfs     f3, -0x768c(rtoc)
    addi    r3, r29, 0xa0
    bl      CLBChaseDecrease__FPffff
    lfs     f0, 0xa0(r29)
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    sth     r0, 0x9a(r29)
    lwz     r3, -0x7110(r13)
    bl      isMarioIndoor__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002ecc0
    lfs     f0, -0x768c(rtoc)
    stfs    f0, 0xb0(r29)
    b       branch_0x8002ed28

branch_0x8002ecc0:
    lfs     f0, 0xf8(r29)
    lfs     f1, 0xfc(r29)
    fmuls   f2, f0, f0
    lfs     f0, -0x7688(rtoc)
    fmuls   f1, f1, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8002ecec
    lfs     f0, -0x768c(rtoc)
    stfs    f0, 0xb0(r29)
    b       branch_0x8002ed28

branch_0x8002ecec:
    fsubs   f1, f0, f1
    lbz     r3, 0x80(r29)
    lfs     f2, -0x7684(rtoc)
    lis     r0, 0x4330
    stw     r3, 0xc4(sp)
    fmuls   f1, f2, f1
    lfs     f0, 0x194(r29)
    stw     r0, 0xc0(sp)
    lfd     f2, -0x7678(rtoc)
    fmuls   f3, f1, f0
    lfd     f0, 0xc0(sp)
    lfs     f1, -0x768c(rtoc)
    fsubs   f2, f0, f2
    bl      CLBLinearInbetween_f___Ffff
    stfs    f1, 0xb0(r29)
branch_0x8002ed28:
    lfs     f0, 0xac(r29)
    lfs     f1, 0xb0(r29)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8002ed40
    lfs     f2, 0x84(r29)
    b       branch_0x8002ed44

branch_0x8002ed40:
    lfs     f2, 0x88(r29)
branch_0x8002ed44:
    addi    r3, r29, 0xac
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lwz     r5, -0x7118(r13)
    addi    r3, sp, 0xa8
    lfsu    f0, 0x124(r5)
    mr      r4, r3
    lfs     f1, 0x10(r29)
    lfs     f3, 0x14(r29)
    lfs     f2, 0x4(r5)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r29)
    lfs     f1, 0x8(r5)
    fsubs   f2, f3, f2
    stfs    f0, 0xa8(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0xac(sp)
    stfs    f0, 0xb0(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0xb4
    addi    r4, r4, 0x124
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lfs     f1, 0xa8(sp)
    lfs     f2, -0x7680(rtoc)
    lfs     f0, 0xb4(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x198(r29)
    lfs     f1, 0xac(sp)
    lfs     f0, 0xb8(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x19c(r29)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0xbc(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x1a0(r29)
    lwz     r4, 0x64(r29)
    cmplwi  r4, 0x0
    beq-    branch_0x8002edf4
    lwz     r3, 0x198(r29)
    lwz     r0, 0x19c(r29)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x1a0(r29)
    stw     r0, 0x18(r4)
branch_0x8002edf4:
    mr      r3, r29
    bl      calcDispRatioAndScreenPos___9TSunModelFv
branch_0x8002edfc:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x8002ee68
    addi    r3, r29, 0x50
    bl      update__12J3DFrameCtrlFv
    clrlwi. r0, r31, 24
    beq-    branch_0x8002ee68
    lfs     f0, 0x2c(r29)
    addi    r3, sp, 0x78
    stfs    f0, 0x8(sp)
    lfs     f1, 0x198(r29)
    lfs     f2, 0x19c(r29)
    lfs     f3, 0x1a0(r29)
    lfs     f4, 0x30(r29)
    lfs     f5, 0x34(r29)
    lfs     f6, 0x38(r29)
    lfs     f7, 0x24(r29)
    lfs     f8, 0x28(r29)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r4, 0x48(r29)
    addi    r3, sp, 0x78
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x48(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8002ee68:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x8002eee8
    clrlwi. r0, r31, 24
    beq-    branch_0x8002eee8
    lfs     f0, 0x60(r29)
    addi    r5, r29, 0x8c
    lwz     r3, 0x4c(r29)
    li      r4, 0x0
    stfs    f0, 0x4(r3)
    lwz     r3, 0x44(r29)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x44(r29)
    addi    r5, r29, 0x94
    li      r4, 0x0
    lwz     r3, 0x28(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8002eee8:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x8002ef0c
    clrlwi. r0, r31, 24
    beq-    branch_0x8002ef0c
    lwz     r3, 0x48(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x8002ef0c:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    lwz     r29, 0xd4(sp)
    lwz     r28, 0xd0(sp)
    addi    sp, sp, 0xe0
    blr


.globl calcDispRatioAndScreenPos___9TSunModelFv
calcDispRatioAndScreenPos___9TSunModelFv: # 0x8002ef2c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x11
    mtctr   r0
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    stw     r29, 0x2c(sp)
    addi    r4, r30, 0x180
    stb     r3, 0x191(r30)
branch_0x8002ef60:
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8002ef78
    lbz     r3, 0x191(r30)
    addi    r0, r3, 0x1
    stb     r0, 0x191(r30)
branch_0x8002ef78:
    addi    r4, r4, 0x1
    bdnz+      branch_0x8002ef60
    lbz     r4, 0x191(r30)
    lis     r0, 0x4330
    lfd     f1, -0x7678(rtoc)
    addi    r3, r30, 0xf8
    stw     r4, 0x24(sp)
    lfs     f2, -0x7670(rtoc)
    addi    r6, r30, 0x198
    stw     r0, 0x20(sp)
    li      r7, 0x0
    li      r8, 0x0
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x194(r30)
    lwz     r4, -0x7118(r13)
    addi    r5, r4, 0x1ec
    addi    r4, r4, 0x16c
    bl      CLBCalc2DFPos__FPQ29JGeometry8TVec2_f_PA4_CfPA4_CfRC3VecPUlb
    lfs     f1, 0x1a4(r30)
    mr      r3, r30
    lfs     f0, 0x28(r30)
    addi    r4, r30, 0x100
    addi    r5, r30, 0xf8
    fmuls   f31, f1, f0
    fmr     f1, f31
    bl      calcOtherFPosFromCenterAndRadius___9TSunModelFPQ29JGeometry8TVec2_f_RCQ29JGeometry8TVec2_f_f
    lfs     f0, -0x7684(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r30, 0x140
    fmuls   f31, f31, f0
    addi    r5, r30, 0xf8
    fmr     f1, f31
    bl      calcOtherFPosFromCenterAndRadius___9TSunModelFPQ29JGeometry8TVec2_f_RCQ29JGeometry8TVec2_f_f
    addi    r29, r30, 0xb4
    addi    r30, r30, 0xf8
    li      r31, 0x0
branch_0x8002f010:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      CLBScreenFPosToSPos__FPQ29JGeometry8TVec2_s_RCQ29JGeometry8TVec2_f_
    addi    r31, r31, 0x1
    cmpwi   r31, 0x11
    addi    r29, r29, 0x4
    addi    r30, r30, 0x8
    blt+    branch_0x8002f010
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x40
    blr


.globl CLBScreenFPosToSPos__FPQ29JGeometry8TVec2_s_RCQ29JGeometry8TVec2_f_
CLBScreenFPosToSPos__FPQ29JGeometry8TVec2_s_RCQ29JGeometry8TVec2_f_: # 0x8002f050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    mr      r30, r3
    lfs     f0, -0x766c(rtoc)
    lfs     f31, 0x0(r4)
    fcmpo   cr0, f31, f0
    blt-    branch_0x8002f08c
    lfs     f0, -0x7668(rtoc)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8002f098
branch_0x8002f08c:
    li      r0, -0x1
    sth     r0, 0x0(r30)
    b       branch_0x8002f0dc

branch_0x8002f098:
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r3, r3, 16
    lfs     f0, -0x7668(rtoc)
    subi    r0, r3, 0x1
    lfd     f1, -0x7660(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x7684(rtoc)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    fadds   f3, f0, f31
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fmuls   f1, f3, f0
    bl      CLBRoundf_s___Ff
    sth     r3, 0x0(r30)
branch_0x8002f0dc:
    lfs     f31, 0x4(r31)
    lfs     f0, -0x766c(rtoc)
    fcmpo   cr0, f31, f0
    blt-    branch_0x8002f0f8
    lfs     f0, -0x7668(rtoc)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8002f104
branch_0x8002f0f8:
    li      r0, -0x1
    sth     r0, 0x2(r30)
    b       branch_0x8002f148

branch_0x8002f104:
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r3, r3, 16
    lfs     f0, -0x7668(rtoc)
    subi    r0, r3, 0x1
    lfd     f1, -0x7660(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x7664(rtoc)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    fsubs   f3, f31, f0
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fmuls   f1, f3, f0
    bl      CLBRoundf_s___Ff
    sth     r3, 0x2(r30)
branch_0x8002f148:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl calcOtherFPosFromCenterAndRadius___9TSunModelFPQ29JGeometry8TVec2_f_RCQ29JGeometry8TVec2_f_f
calcOtherFPosFromCenterAndRadius___9TSunModelFPQ29JGeometry8TVec2_f_RCQ29JGeometry8TVec2_f_f: # 0x8002f164
    lfs     f2, -0x7658(rtoc)
    lfs     f0, 0x0(r5)
    fmuls   f2, f2, f1
    stfs    f0, 0x0(r4)
    lfs     f0, 0x4(r5)
    fadds   f0, f0, f1
    stfs    f0, 0x4(r4)
    lfs     f0, 0x0(r5)
    fsubs   f0, f0, f2
    stfs    f0, 0x8(r4)
    lfs     f0, 0x4(r5)
    fadds   f0, f0, f2
    stfs    f0, 0xc(r4)
    lfs     f0, 0x0(r5)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r4)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x14(r4)
    lfs     f0, 0x0(r5)
    fsubs   f0, f0, f2
    stfs    f0, 0x18(r4)
    lfs     f0, 0x4(r5)
    fsubs   f0, f0, f2
    stfs    f0, 0x1c(r4)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x20(r4)
    lfs     f0, 0x4(r5)
    fsubs   f0, f0, f1
    stfs    f0, 0x24(r4)
    lfs     f0, 0x0(r5)
    fadds   f0, f0, f2
    stfs    f0, 0x28(r4)
    lfs     f0, 0x4(r5)
    fsubs   f0, f0, f2
    stfs    f0, 0x2c(r4)
    lfs     f0, 0x0(r5)
    fadds   f0, f0, f1
    stfs    f0, 0x30(r4)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x34(r4)
    lfs     f0, 0x0(r5)
    fadds   f0, f0, f2
    stfs    f0, 0x38(r4)
    lfs     f0, 0x4(r5)
    fadds   f0, f0, f2
    stfs    f0, 0x3c(r4)
    blr


.globl load__9TSunModelFR20JSUMemoryInputStream
load__9TSunModelFR20JSUMemoryInputStream: # 0x8002f220
    mflr    r0
    lis     r5, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f8(sp)
    stmw    r25, 0x1dc(sp)
    addi    r30, r3, 0x0
    addi    r31, r5, 0x5798
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    lfs     f0, 0x24(r30)
    lis     r29, 0x1002
    lfs     f1, -0x7654(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r30)
    lfs     f0, 0x28(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r30)
    lfs     f0, 0x2c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r30)
    lbz     r0, 0x1ac(r30)
    lwz     r28, -0x7fa8(r13)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8002f284
    oris    r29, r29, 0x100
    lwz     r28, -0x7fa4(r13)
branch_0x8002f284:
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0xc4
    addi    r7, r31, 0x3c
    li      r4, 0x100
    subi    r5, rtoc, 0x7650
    bl      snprintf
    addi    r3, sp, 0xc4
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r29
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x44(r30)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8002f2d8
    lwz     r4, 0x44(r30)
    addi    r3, r26, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8002f2d8:
    stw     r26, 0x48(r30)
    addi    r6, r28, 0x0
    addi    r3, sp, 0xc4
    crxor   6, 6, 6
    addi    r7, r31, 0x48
    li      r4, 0x100
    subi    r5, rtoc, 0x7650
    bl      snprintf
    addi    r3, sp, 0xc4
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x4c(r30)
    lwz     r3, 0x4c(r30)
    lwz     r4, 0x44(r30)
    bl      searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
    lwz     r4, 0x44(r30)
    lis     r3, 0x803e
    addi    r29, r3, 0x1798
    lhz     r26, 0x24(r4)
    li      r27, 0x0
    b       branch_0x8002f370

branch_0x8002f32c:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8002f348
    stw     r29, 0x0(r25)
    mr      r3, r25
    bl      initialize__14J3DMaterialAnmFv
branch_0x8002f348:
    lwz     r3, 0x44(r30)
    clrlslwi  r28, r27, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r28
    bl      change__11J3DMaterialFv
    lwz     r3, 0x44(r30)
    addi    r27, r27, 0x1
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r28
    stw     r25, 0x38(r3)
branch_0x8002f370:
    clrlwi  r0, r27, 16
    cmpw    r0, r26
    blt+    branch_0x8002f32c
    lwz     r3, 0x44(r30)
    lwz     r4, 0x4c(r30)
    bl      entryTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey
    lwz     r3, 0x44(r30)
    li      r4, 0x0
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r3)
    li      r4, 0x0
    lwz     r0, 0x4(r3)
    stw     r5, 0x8c(r30)
    stw     r0, 0x90(r30)
    lwz     r3, 0x44(r30)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r3)
    lis     r4, 0x4330
    lwz     r0, 0x4(r3)
    addi    r3, r30, 0x50
    stw     r5, 0x94(r30)
    stw     r0, 0x98(r30)
    lbz     r0, 0x68(r30)
    lfd     f1, -0x7678(rtoc)
    stw     r0, 0x1d4(sp)
    stw     r4, 0x1d0(sp)
    lfd     f0, 0x1d0(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa4(r30)
    stfs    f0, 0x9c(r30)
    lbz     r0, 0x74(r30)
    stw     r0, 0x1cc(sp)
    stw     r4, 0x1c8(sp)
    lfd     f0, 0x1c8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xa8(r30)
    stfs    f0, 0xa0(r30)
    lwz     r4, 0x4c(r30)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x5c(r30)
    li      r0, 0x2
    li      r3, 0x80
    stb     r0, 0x54(r30)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x198(r30)
    stw     r0, 0x19c(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x1a0(r30)
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8002f484
    addi    r3, r25, 0x0
    addi    r4, r31, 0x54
    bl      __ct__13TMapStaticObjFPCc
branch_0x8002f484:
    stw     r25, 0x64(r30)
    addi    r4, r31, 0x60
    lwz     r3, 0x64(r30)
    bl      init__13TMapStaticObjFPCc
    lwz     r5, 0x64(r30)
    addi    r3, r31, 0x6c
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r5)
    lwz     r5, 0x64(r30)
    lwz     r4, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r4, 0x30(r5)
    stw     r0, 0x34(r5)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r5)
    lwz     r5, 0x64(r30)
    lwz     r4, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r4, 0x24(r5)
    stw     r0, 0x28(r5)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x2c(r5)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x6c
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x68
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x68(sp)
    addi    r3, sp, 0x90
    addi    r4, sp, 0x64
    stw     r0, 0x64(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x90(sp)
    addi    r5, sp, 0x74
    addi    r4, r29, 0x0
    stw     r0, 0x8c(sp)
    addi    r3, sp, 0x70
    addi    r6, r30, 0x64
    lwz     r0, 0x8c(sp)
    stw     r0, 0x74(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lmw     r25, 0x1dc(sp)
    lwz     r0, 0x1fc(sp)
    addi    sp, sp, 0x1f8
    mtlr    r0
    blr


.globl __ct__9TSunModelFbPCc
__ct__9TSunModelFbPCc: # 0x8002f570
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r4
    mr      r4, r5
    stw     r28, 0x20(sp)
    stw     r3, 0x8(sp)
    lwz     r30, 0x8(sp)
    stw     r30, 0x14(sp)
    stw     r30, 0x18(sp)
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x14(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r28, 0x18(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x768c(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8002f7cc
    li      r31, 0x0
    lis     r3, 0x803e
    sth     r31, 0x1c(r28)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r30)
    addi    r0, r3, 0x4650
    lis     r3, 0x803e
    stw     r0, 0x20(r30)
    addi    r3, r3, 0x1920
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r30)
    subi    r6, r3, 0x2e60
    lis     r3, 0x803b
    lfs     f0, -0x7668(rtoc)
    subi    r0, r3, 0x2eac
    addi    r5, r6, 0x24
    stfs    f0, 0x24(r30)
    addi    r3, r30, 0x50
    li      r4, 0x0
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    lfs     f0, -0x768c(rtoc)
    stfs    f0, 0x30(r30)
    stfs    f0, 0x34(r30)
    stfs    f0, 0x38(r30)
    stw     r31, 0x3c(r30)
    stw     r31, 0x40(r30)
    stw     r6, 0x0(r30)
    stw     r5, 0x20(r30)
    stw     r31, 0x44(r30)
    stw     r31, 0x48(r30)
    stw     r31, 0x4c(r30)
    stw     r0, 0x50(r30)
    bl      init__12J3DFrameCtrlFs
    stw     r31, 0x64(r30)
    li      r0, 0xff
    lis     r3, 0x8003
    stb     r0, 0x68(r30)
    subi    r4, r3, 0x838
    li      r8, 0x32
    lfs     f1, -0x7648(rtoc)
    li      r0, 0x64
    addi    r3, r30, 0xb4
    stfs    f1, 0x6c(r30)
    li      r5, 0x0
    li      r6, 0x4
    lfs     f0, -0x7644(rtoc)
    li      r7, 0x11
    stfs    f0, 0x70(r30)
    stb     r8, 0x74(r30)
    stfs    f1, 0x78(r30)
    stfs    f0, 0x7c(r30)
    stb     r0, 0x80(r30)
    lfs     f0, -0x7640(rtoc)
    stfs    f0, 0x84(r30)
    lfs     f0, -0x7688(rtoc)
    stfs    f0, 0x88(r30)
    lfs     f0, -0x768c(rtoc)
    stfs    f0, 0x9c(r30)
    stfs    f0, 0xa0(r30)
    stfs    f0, 0xa4(r30)
    stfs    f0, 0xa8(r30)
    stfs    f0, 0xac(r30)
    stfs    f0, 0xb0(r30)
    bl      __construct_array
    lis     r3, 0x8003
    subi    r4, r3, 0x83c
    addi    r3, r30, 0xf8
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x11
    bl      __construct_array
    stb     r31, 0x191(r30)
    clrlwi. r0, r29, 24
    lfs     f0, -0x768c(rtoc)
    stfs    f0, 0x194(r30)
    lfs     f0, -0x763c(rtoc)
    stfs    f0, 0x1a4(r30)
    lfs     f0, -0x7640(rtoc)
    stfs    f0, 0x1a8(r30)
    stb     r31, 0x1ac(r30)
    stw     r30, -0x70f8(r13)
    beq-    branch_0x8002f758
    lbz     r3, 0x1ac(r30)
    li      r0, 0x30
    ori     r3, r3, 0x4
    stb     r3, 0x1ac(r30)
    stb     r0, 0x80(r30)
branch_0x8002f758:
    lwz     r3, 0x8(sp)
    li      r0, 0x11
    mtctr   r0
    lfs     f0, -0x7638(rtoc)
    addi    r4, r3, 0xb4
    addi    r5, r3, 0xf8
    addi    r6, r3, 0x180
    li      r3, -0x1
    li      r0, 0x0
branch_0x8002f77c:
    sth     r3, 0x2(r4)
    sth     r3, 0x0(r4)
    addi    r4, r4, 0x4
    stfs    f0, 0x4(r5)
    stfs    f0, 0x0(r5)
    addi    r5, r5, 0x8
    stb     r0, 0x0(r6)
    addi    r6, r6, 0x1
    bdnz+      branch_0x8002f77c
    lwz     r0, 0x34(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__Q29JGeometry8TVec2_f_Fv
__ct__Q29JGeometry8TVec2_f_Fv: # 0x8002f7c4
    blr


.globl __ct__Q29JGeometry8TVec2_s_Fv
__ct__Q29JGeometry8TVec2_s_Fv: # 0x8002f7c8
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8002f7cc
set_f___Q29JGeometry8TVec3_f_Ffff_8002f7cc: # 0x8002f7cc
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __ct__Q26JDrama10TFlagT_Us_FUs
__ct__Q26JDrama10TFlagT_Us_FUs: # 0x8002f7dc
    sth     r4, 0x0(r3)
    blr


.globl __ct__Q26JDrama8TNameRefFPCc
__ct__Q26JDrama8TNameRefFPCc: # 0x8002f7e4
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl _32___dt__9TSunModelFv
_32___dt__9TSunModelFv: # 0x8002f82c
    subi    r3, r3, 0x20
    b       __dt__9TSunModelFv

