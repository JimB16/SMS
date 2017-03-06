
.globl __dt__11TSilhouetteFv
__dt__11TSilhouetteFv: # 0x80225968
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802259c0
    lis     r3, 0x803e
    subi    r0, r3, 0x59c8
    stw     r0, 0x0(r30)
    beq-    branch_0x802259b0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802259b0:
    extsh.  r0, r31
    ble-    branch_0x802259c0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802259c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl SMS_UnifyMaterial__FP8J3DModel
SMS_UnifyMaterial__FP8J3DModel: # 0x802259dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r29, r3
    li      r30, 0x0
    lwz     r31, 0x4(r3)
    lwz     r3, 0x28(r31)
    lwz     r27, 0x0(r3)
    b       branch_0x80225a6c

branch_0x80225a04:
    lwz     r4, 0x4(r29)
    clrlwi  r3, r30, 16
    lwz     r0, 0x18(r27)
    mulli   r3, r3, 0x48
    lwz     r5, 0x28(r4)
    clrlslwi  r4, r30, 16, 2
    lwzx    r28, r5, r4
    clrlwi  r5, r0, 1
    addi    r0, r3, 0x3c
    stw     r5, 0x18(r28)
    li      r4, 0x0
    lwz     r3, 0x80(r29)
    stwx    r5, r3, r0
    lwz     r3, 0x28(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r5, r3
    lwz     r3, 0x28(r28)
    li      r4, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
branch_0x80225a6c:
    lhz     r0, 0x24(r31)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    blt+    branch_0x80225a04
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl SMS_CalcMatAnmAndMakeDL__FP8J3DModelUs
SMS_CalcMatAnmAndMakeDL__FP8J3DModelUs: # 0x80225a90
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    clrlwi  r31, r4, 16
    clrlslwi  r4, r4, 16, 2
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r4, r3, r4
    lwz     r3, 0x38(r4)
    addi    r30, r4, 0x0
    cmplw   r3, r0
    bge-    branch_0x80225ad8
    b       branch_0x80225adc

branch_0x80225ad8:
    li      r3, 0x0
branch_0x80225adc:
    lwz     r12, 0x0(r3)
    mr      r4, r30
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mulli   r0, r31, 0x48
    lwz     r4, 0x80(r29)
    lis     r3, 0x8040
    add     r0, r4, r0
    addi    r3, r3, 0x45dc
    stw     r0, 0x3c(r3)
    mr      r3, r30
    bl      makeDisplayList__11J3DMaterialFv
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl SMS_ShowJoint__FP11J3DMaterialb
SMS_ShowJoint__FP11J3DMaterialb: # 0x80225b2c
    clrlwi. r0, r4, 24
    beq-    branch_0x80225b70
    b       branch_0x80225b4c

branch_0x80225b38:
    lwz     r4, 0x4(r3)
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
    lwz     r3, 0x0(r3)
branch_0x80225b4c:
    cmplwi  r3, 0x0
    bne+    branch_0x80225b38
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x220558, 0x80225b5c - 0x80225b58
branch_0x80225b5c:
    lwz     r4, 0x4(r3)
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
    lwz     r3, 0x0(r3)
branch_0x80225b70:
    cmplwi  r3, 0x0
    bne+    branch_0x80225b5c
    blr


.globl SMS_DrawInit__Fv
SMS_DrawInit__Fv: # 0x80225b7c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x45dc
    stwu    sp, -0x8(sp)
    bl      drawInit__6J3DSysFv
    bl      SMS_ResetTexCacheRegion__Fv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_MakeDLAndLock__FP8J3DModel
SMS_MakeDLAndLock__FP8J3DModel: # 0x80225ba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    bl      prepareShapePackets__8J3DModelFv
    lis     r3, 0x803e
    addi    r31, r3, 0x7a8
    li      r30, 0x0
    b       branch_0x80225bf0

branch_0x80225bd8:
    lwz     r3, 0x28(r4)
    clrlslwi  r0, r30, 16, 2
    mr      r4, r31
    lwzx    r3, r3, r0
    bl      calc__11J3DMaterialFPA4_f
    addi    r30, r30, 0x1
branch_0x80225bf0:
    lwz     r4, 0x4(r29)
    clrlwi  r3, r30, 16
    lhz     r0, 0x24(r4)
    cmplw   r3, r0
    blt+    branch_0x80225bd8
    mr      r3, r29
    bl      makeDL__8J3DModelFv
    mr      r3, r29
    bl      lock__8J3DModelFv
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl SMS_DrawShape__FP12J3DModelDataUs
SMS_DrawShape__FP12J3DModelDataUs: # 0x80225c30
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    li      r30, 0x0
    lwz     r3, 0x30(r3)
    lwzx    r31, r3, r0
    b       branch_0x80225c6c

branch_0x80225c58:
    lwz     r3, 0x38(r31)
    clrlslwi  r0, r30, 16, 2
    lwzx    r3, r3, r0
    bl      draw__12J3DShapeDrawCFv
    addi    r30, r30, 0x1
branch_0x80225c6c:
    lhz     r0, 0x6(r31)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    blt+    branch_0x80225c58
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl SMS_SettingDrawShape__FP12J3DModelDataUs
SMS_SettingDrawShape__FP12J3DModelDataUs: # 0x80225c94
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    li      r4, 0xc0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, 0x30(r3)
    lwzx    r5, r3, r0
    lwz     r3, 0x28(r5)
    mr      r31, r5
    bl      GXCallDisplayList
    lis     r3, 0x8040
    lwz     r0, 0x4c(r30)
    addi    r4, r3, 0x45dc
    stw     r0, 0x10c(r4)
    mr      r3, r31
    lwz     r0, 0x50(r30)
    stw     r0, 0x110(r4)
    bl      loadVtxArray__8J3DShapeCFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x80225d00
    mflr    r0
    li      r5, 0x18
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    li      r3, 0x80
    bl      GXBegin
    lfs     f3, 0x8(r30)
    lis     r3, 0xcc01
    lfs     f2, 0x4(r30)
    lfs     f1, 0x0(r30)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    lfs     f4, 0x8(r31)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    lfs     f5, 0x4(r31)
    stfs    f0, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl SMS_CountPolygonNumInShape__FP8J3DShape
SMS_CountPolygonNumInShape__FP8J3DShape: # 0x80225e80
    lis     r4, 0x803a
    stwu    sp, -0x48(sp)
    subi    r6, r4, 0x27cc
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x34
    lwz     r0, 0x4(r6)
    li      r8, 0x0
    li      r9, 0x0
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r5, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r5, 0x2c(r3)
    b       branch_0x80225ed4

branch_0x80225ec0:
    lwz     r0, 0x4(r5)
    addi    r5, r5, 0x8
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    add     r9, r9, r0
branch_0x80225ed4:
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0xff
    bne+    branch_0x80225ec0
    lhz     r6, 0x6(r3)
    li      r10, 0x0
    b       branch_0x80225f44

branch_0x80225eec:
    lwz     r4, 0x38(r3)
    clrlslwi  r0, r10, 16, 2
    lwzx    r7, r4, r0
    lwz     r5, 0x8(r7)
    mr      r11, r5
    b       branch_0x80225f30

branch_0x80225f04:
    lbz     r0, 0x0(r11)
    cmplwi  r0, 0xa0
    beq-    branch_0x80225f18
    cmplwi  r0, 0x98
    bne-    branch_0x80225f40
branch_0x80225f18:
    lhz     r4, 0x1(r11)
    mullw   r0, r9, r4
    add     r8, r4, r8
    add     r11, r11, r0
    subi    r8, r8, 0x2
    addi    r11, r11, 0x3
branch_0x80225f30:
    lwz     r0, 0x4(r7)
    subf    r4, r5, r11
    cmplw   r4, r0
    blt+    branch_0x80225f04
branch_0x80225f40:
    addi    r10, r10, 0x1
branch_0x80225f44:
    clrlwi  r0, r10, 16
    cmplw   r0, r6
    blt+    branch_0x80225eec
    addi    r3, r8, 0x0
    addi    sp, sp, 0x48
    blr


.globl ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf: # 0x80225f5c
    mflr    r0
    addi    r3, r3, 0xb4
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    addi    r5, sp, 0x18
    bl      PSMTXMultVec
    lis     r3, 0x8040
    lfs     f4, 0x1c(sp)
    subi    r3, r3, 0x4d60
    lfs     f5, 0x18(sp)
    lfs     f0, 0x4(r3)
    fneg    f7, f31
    lfs     f1, 0x0(r3)
    fmuls   f0, f4, f0
    lfs     f6, 0x20(sp)
    lfs     f2, 0x8(r3)
    lfs     f3, 0xc(r3)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f7, f0
    ble-    branch_0x80225fc4
    li      r3, 0x0
    b       branch_0x802260b8

branch_0x80225fc4:
    lfs     f0, 0x14(r3)
    lfs     f1, 0x10(r3)
    fmuls   f0, f4, f0
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f7, f0
    ble-    branch_0x80225ff4
    li      r3, 0x0
    b       branch_0x802260b8

branch_0x80225ff4:
    lfs     f0, 0x24(r3)
    lfs     f1, 0x20(r3)
    fmuls   f0, f4, f0
    lfs     f2, 0x28(r3)
    lfs     f3, 0x2c(r3)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f7, f0
    ble-    branch_0x80226024
    li      r3, 0x0
    b       branch_0x802260b8

branch_0x80226024:
    lfs     f0, 0x34(r3)
    lfs     f1, 0x30(r3)
    fmuls   f0, f4, f0
    lfs     f2, 0x38(r3)
    lfs     f3, 0x3c(r3)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f7, f0
    ble-    branch_0x80226054
    li      r3, 0x0
    b       branch_0x802260b8

branch_0x80226054:
    lfs     f0, 0x44(r3)
    lfs     f1, 0x40(r3)
    fmuls   f0, f4, f0
    lfs     f2, 0x48(r3)
    lfs     f3, 0x4c(r3)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f7, f0
    ble-    branch_0x80226084
    li      r3, 0x0
    b       branch_0x802260b8

branch_0x80226084:
    lfs     f0, 0x54(r3)
    lfs     f1, 0x50(r3)
    fmuls   f0, f4, f0
    lfs     f2, 0x58(r3)
    lfs     f3, 0x5c(r3)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f7, f0
    ble-    branch_0x802260b4
    li      r3, 0x0
    b       branch_0x802260b8

branch_0x802260b4:
    li      r3, 0x1
branch_0x802260b8:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl SetViewFrustumClipCheckPerspective__Fffff
SetViewFrustumClipCheckPerspective__Fffff: # 0x802260cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f4
    stfd    f30, 0x20(sp)
    fmr     f30, f3
    stfd    f29, 0x18(sp)
    fmr     f29, f2
    lfs     f0, -0x612c(r13)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80226120
    lfs     f0, -0x6128(r13)
    fcmpu   cr0, f29, f0
    bne-    branch_0x80226120
    lfs     f0, -0x6124(r13)
    fcmpu   cr0, f30, f0
    bne-    branch_0x80226120
    lfs     f0, -0x6120(r13)
    fcmpu   cr0, f31, f0
    beq-    branch_0x80226158
branch_0x80226120:
    lfs     f0, -0x17f8(rtoc)
    stfs    f1, -0x612c(r13)
    fmuls   f1, f0, f1
    stfs    f29, -0x6128(r13)
    stfs    f30, -0x6124(r13)
    stfs    f31, -0x6120(r13)
    bl      tanf
    fmuls   f1, f30, f1
    fmr     f5, f30
    fmr     f6, f31
    fmuls   f4, f1, f29
    fneg    f2, f1
    fneg    f3, f4
    bl      SetViewFrustumClipCheck__Fffffff
branch_0x80226158:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lfd     f30, 0x20(sp)
    mtlr    r0
    lfd     f29, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl SetViewFrustumClipCheck__Fffffff
SetViewFrustumClipCheck__Fffffff: # 0x80226174
    fdivs   f9, f6, f5
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    stwu    sp, -0xc8(sp)
    stmw    r24, 0xa8(sp)
    fneg    f0, f5
    fmuls   f7, f3, f9
    addi    r30, sp, 0x50
    fmuls   f5, f1, f9
    fneg    f6, f6
    fmuls   f8, f4, f9
    subi    r31, r4, 0x4d60
    fmuls   f9, f2, f9
    mr      r3, r30
    addi    r29, sp, 0x5c
    addi    r25, sp, 0x68
    addi    r28, sp, 0x74
    stfs    f3, 0x44(sp)
    addi    r26, sp, 0x80
    addi    r27, sp, 0x8c
    stfs    f1, 0x48(sp)
    addi    r24, sp, 0x98
    addi    r4, sp, 0x44
    stfs    f0, 0x4c(sp)
    addi    r5, sp, 0x38
    stfs    f7, 0x50(sp)
    stfs    f5, 0x54(sp)
    stfs    f6, 0x58(sp)
    stfs    f4, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f8, 0x68(sp)
    stfs    f5, 0x6c(sp)
    stfs    f6, 0x70(sp)
    stfs    f3, 0x74(sp)
    stfs    f2, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f7, 0x80(sp)
    stfs    f9, 0x84(sp)
    stfs    f6, 0x88(sp)
    stfs    f4, 0x8c(sp)
    stfs    f2, 0x90(sp)
    stfs    f0, 0x94(sp)
    stfs    f8, 0x98(sp)
    stfs    f9, 0x9c(sp)
    stfs    f6, 0xa0(sp)
    bl      PSVECSubtract
    addi    r3, r29, 0x0
    addi    r4, sp, 0x44
    addi    r5, sp, 0x2c
    bl      PSVECSubtract
    addi    r3, sp, 0x38
    addi    r4, sp, 0x2c
    addi    r5, sp, 0x20
    bl      PSVECCrossProduct
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x20(sp)
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    stfs    f3, 0x0(r31)
    addi    r5, sp, 0x38
    lfs     f2, 0x24(sp)
    stfs    f2, 0x4(r31)
    lfs     f4, 0x28(sp)
    stfs    f4, 0x8(r31)
    lfs     f0, 0x48(sp)
    lfs     f1, 0x44(sp)
    fmuls   f0, f2, f0
    lfs     f2, 0x4c(sp)
    fmadds  f0, f3, f1, f0
    fnmadds  f0, f4, f2, f0
    stfs    f0, 0xc(r31)
    bl      PSVECSubtract
    addi    r3, r26, 0x0
    addi    r4, r28, 0x0
    addi    r5, sp, 0x2c
    bl      PSVECSubtract
    addi    r3, sp, 0x38
    addi    r4, sp, 0x2c
    addi    r5, sp, 0x20
    bl      PSVECCrossProduct
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x20(sp)
    addi    r3, r28, 0x0
    addi    r4, sp, 0x44
    stfs    f3, 0x10(r31)
    addi    r5, sp, 0x38
    lfs     f2, 0x24(sp)
    stfs    f2, 0x14(r31)
    lfs     f4, 0x28(sp)
    stfs    f4, 0x18(r31)
    lfs     f0, 0x78(sp)
    lfs     f1, 0x74(sp)
    fmuls   f0, f2, f0
    lfs     f2, 0x7c(sp)
    fmadds  f0, f3, f1, f0
    fnmadds  f0, f4, f2, f0
    stfs    f0, 0x1c(r31)
    bl      PSVECSubtract
    addi    r3, r30, 0x0
    addi    r4, sp, 0x44
    addi    r5, sp, 0x2c
    bl      PSVECSubtract
    addi    r3, sp, 0x38
    addi    r4, sp, 0x2c
    addi    r5, sp, 0x20
    bl      PSVECCrossProduct
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x20(sp)
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    stfs    f3, 0x20(r31)
    addi    r5, sp, 0x38
    lfs     f2, 0x24(sp)
    stfs    f2, 0x24(r31)
    lfs     f4, 0x28(sp)
    stfs    f4, 0x28(r31)
    lfs     f0, 0x48(sp)
    lfs     f1, 0x44(sp)
    fmuls   f0, f2, f0
    lfs     f2, 0x4c(sp)
    fmadds  f0, f3, f1, f0
    fnmadds  f0, f4, f2, f0
    stfs    f0, 0x2c(r31)
    bl      PSVECSubtract
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    addi    r5, sp, 0x2c
    bl      PSVECSubtract
    addi    r3, sp, 0x38
    addi    r4, sp, 0x2c
    addi    r5, sp, 0x20
    bl      PSVECCrossProduct
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x20(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x44
    stfs    f3, 0x30(r31)
    addi    r5, sp, 0x38
    lfs     f2, 0x24(sp)
    stfs    f2, 0x34(r31)
    lfs     f4, 0x28(sp)
    stfs    f4, 0x38(r31)
    lfs     f0, 0x60(sp)
    lfs     f1, 0x5c(sp)
    fmuls   f0, f2, f0
    lfs     f2, 0x64(sp)
    fmadds  f0, f3, f1, f0
    fnmadds  f0, f4, f2, f0
    stfs    f0, 0x3c(r31)
    bl      PSVECSubtract
    addi    r3, r28, 0x0
    addi    r4, sp, 0x44
    addi    r5, sp, 0x2c
    bl      PSVECSubtract
    addi    r3, sp, 0x38
    addi    r4, sp, 0x2c
    addi    r5, sp, 0x20
    bl      PSVECCrossProduct
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x20(sp)
    addi    r3, r25, 0x0
    addi    r4, r24, 0x0
    stfs    f3, 0x40(r31)
    addi    r5, sp, 0x38
    lfs     f2, 0x24(sp)
    stfs    f2, 0x44(r31)
    lfs     f4, 0x28(sp)
    stfs    f4, 0x48(r31)
    lfs     f0, 0x48(sp)
    lfs     f1, 0x44(sp)
    fmuls   f0, f2, f0
    lfs     f2, 0x4c(sp)
    fmadds  f0, f3, f1, f0
    fnmadds  f0, f4, f2, f0
    stfs    f0, 0x4c(r31)
    bl      PSVECSubtract
    addi    r3, r26, 0x0
    addi    r4, r24, 0x0
    addi    r5, sp, 0x2c
    bl      PSVECSubtract
    addi    r3, sp, 0x38
    addi    r4, sp, 0x2c
    addi    r5, sp, 0x20
    bl      PSVECCrossProduct
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x20(sp)
    stfs    f3, 0x50(r31)
    lfs     f2, 0x24(sp)
    stfs    f2, 0x54(r31)
    lfs     f4, 0x28(sp)
    stfs    f4, 0x58(r31)
    lfs     f0, 0x9c(sp)
    lfs     f1, 0x98(sp)
    fmuls   f0, f2, f0
    lfs     f2, 0xa0(sp)
    fmadds  f0, f3, f1, f0
    fnmadds  f0, f4, f2, f0
    stfs    f0, 0x5c(r31)
    lwz     r0, 0xcc(sp)
    lmw     r24, 0xa8(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl SMS_ResetDamageFogEffect__FP12J3DModelData
SMS_ResetDamageFogEffect__FP12J3DModelData: # 0x802264d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    li      r31, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    lfs     f31, -0x1804(rtoc)
    b       branch_0x80226550

branch_0x80226500:
    lwz     r3, 0x28(r30)
    clrlslwi  r0, r31, 16, 2
    lwzx    r3, r3, r0
    lwz     r3, 0x30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x7118(r13)
    addi    r31, r31, 0x1
    lfs     f0, 0x28(r4)
    stfs    f0, 0xc(r3)
    lwz     r4, -0x7118(r13)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x8(r3)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f31
    stfs    f0, 0x4(r3)
branch_0x80226550:
    lhz     r0, 0x24(r30)
    clrlwi  r3, r31, 16
    cmplw   r3, r0
    blt+    branch_0x80226500
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl getFog__10J3DPEBlockFv
getFog__10J3DPEBlockFv: # 0x8022657c
    li      r3, 0x0
    blr


.globl SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics: # 0x80226584
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0xb4
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    addi    r5, sp, 0x80
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stfd    f28, 0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    addi    r30, r3, 0x0
    mr      r3, r0
    bl      PSMTXMultVec
    lwz     r3, -0x6048(r13)
    li      r31, 0x0
    lwz     r0, -0x5eac(r13)
    lwz     r3, 0x58(r3)
    lfs     f31, -0x17f4(rtoc)
    mulli   r3, r3, 0x888
    lfs     f1, -0x17ec(rtoc)
    lfs     f30, -0x17f0(rtoc)
    lfs     f0, -0x17e8(rtoc)
    fsubs   f1, f1, f31
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    fsubs   f0, f0, f30
    slwi    r0, r0, 2
    lfsx    f2, r4, r0
    fmuls   f29, f1, f2
    fmuls   f28, f0, f2
    b       branch_0x8022666c

branch_0x80226608:
    lwz     r3, 0x28(r30)
    clrlslwi  r0, r31, 16, 2
    lwzx    r3, r3, r0
    lwz     r3, 0x30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x88(sp)
    addi    r31, r31, 0x1
    fneg    f0, f0
    fadds   f0, f0, f31
    fadds   f0, f0, f29
    stfs    f0, 0x4(r3)
    lfs     f0, 0x88(sp)
    fneg    f0, f0
    fadds   f0, f0, f30
    fadds   f0, f0, f28
    stfs    f0, 0x8(r3)
    lwz     r4, -0x7118(r13)
    lfs     f0, 0x28(r4)
    stfs    f0, 0xc(r3)
    lwz     r4, -0x7118(r13)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x10(r3)
branch_0x8022666c:
    lhz     r0, 0x24(r30)
    clrlwi  r3, r31, 16
    cmplw   r3, r0
    blt+    branch_0x80226608
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lfd     f28, 0x98(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0xb8
    blr


.globl reset__19TTrembleModelEffectFv
reset__19TTrembleModelEffectFv: # 0x802266a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    lbz     r0, 0x8(r3)
    rlwinm  r0, r0, 0, 30, 30
    cmpwi   r0, 0x1
    beq-    branch_0x80226820
    bge-    branch_0x802266d8
    cmpwi   r0, 0x0
    bge-    branch_0x802266e4
    b       branch_0x80226820

branch_0x802266d8:
    cmpwi   r0, 0x3
    bge-    branch_0x80226820
    b       branch_0x80226778

branch_0x802266e4:
    lwz     r6, 0x4(r31)
    li      r7, 0x0
    li      r3, 0x0
    b       branch_0x80226760

branch_0x802266f4:
    lwz     r4, 0x20(r31)
    li      r0, 0x0
    add     r5, r6, r3
    add     r4, r4, r3
    sth     r0, 0x0(r4)
    addi    r7, r7, 0x1
    sth     r0, 0x2(r4)
    sth     r0, 0x4(r4)
    lwz     r4, 0x14(r31)
    lwz     r0, 0x0(r5)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    lhz     r0, 0x4(r5)
    sth     r0, 0x4(r4)
    lwz     r4, 0x18(r31)
    lwz     r0, 0x0(r5)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    lhz     r0, 0x4(r5)
    sth     r0, 0x4(r4)
    lwz     r4, 0x1c(r31)
    lwz     r0, 0x0(r5)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    addi    r3, r3, 0x6
    lhz     r0, 0x4(r5)
    sth     r0, 0x4(r4)
branch_0x80226760:
    lwz     r4, 0x0(r31)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x3c(r4)
    cmplw   r7, r0
    blt+    branch_0x802266f4
    b       branch_0x80226820

branch_0x80226778:
    lwz     r7, 0x4(r31)
    li      r8, 0x0
    lfs     f0, -0x1808(rtoc)
    li      r3, 0x0
    b       branch_0x8022680c

branch_0x8022678c:
    lwz     r0, 0x34(r31)
    add     r6, r7, r3
    addi    r8, r8, 0x1
    add     r4, r0, r3
    stfs    f0, 0x0(r4)
    stfs    f0, 0x4(r4)
    stfs    f0, 0x8(r4)
    lwz     r5, 0x28(r31)
    lwz     r4, 0x0(r6)
    lwz     r0, 0x4(r6)
    add     r5, r5, r3
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x8(r6)
    stw     r0, 0x8(r5)
    lwz     r5, 0x2c(r31)
    lwz     r4, 0x0(r6)
    lwz     r0, 0x4(r6)
    add     r5, r5, r3
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x8(r6)
    stw     r0, 0x8(r5)
    lwz     r0, 0x30(r31)
    lwz     r4, 0x0(r6)
    add     r5, r0, r3
    lwz     r0, 0x4(r6)
    addi    r3, r3, 0xc
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x8(r6)
    stw     r0, 0x8(r5)
branch_0x8022680c:
    lwz     r4, 0x0(r31)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x3c(r4)
    cmplw   r8, r0
    blt+    branch_0x8022678c
branch_0x80226820:
    lbz     r0, 0x8(r31)
    clrrwi  r0, r0, 1
    stb     r0, 0x8(r31)
    bl      GXInvalidateVtxCache
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    lwz     r3, 0x4(r3)
    stw     r0, 0x4c(r3)
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    lwz     r3, 0x98(r3)
    stw     r0, 0x4(r3)
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    lwz     r3, 0x98(r3)
    stw     r0, 0x8(r3)
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    lwz     r3, 0x98(r3)
    stw     r0, 0x2c(r3)
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl movement__19TTrembleModelEffectFv
movement__19TTrembleModelEffectFv: # 0x80226884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stw     r31, 0x12c(sp)
    stw     r30, 0x128(sp)
    stw     r29, 0x124(sp)
    mr      r29, r3
    stw     r28, 0x120(sp)
    lbz     r3, 0x8(r3)
    clrlwi. r0, r3, 31
    beq-    branch_0x80226d28
    rlwinm  r0, r3, 0, 29, 29
    cmpwi   r0, 0x4
    beq-    branch_0x802268e0
    lwz     r3, 0x10(r29)
    subi    r0, r3, 0x1
    stw     r0, 0x10(r29)
    lwz     r0, 0x10(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x802268e0
    mr      r3, r29
    bl      reset__19TTrembleModelEffectFv
    b       branch_0x80226d28

branch_0x802268e0:
    lbz     r0, 0x8(r29)
    rlwinm  r0, r0, 0, 30, 30
    cmpwi   r0, 0x1
    beq-    branch_0x80226d1c
    bge-    branch_0x80226900
    cmpwi   r0, 0x0
    bge-    branch_0x8022690c
    b       branch_0x80226d1c

branch_0x80226900:
    cmpwi   r0, 0x3
    bge-    branch_0x80226d1c
    b       branch_0x80226b34

branch_0x8022690c:
    lwz     r31, 0x4(r29)
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x80226ab0

branch_0x8022691c:
    add     r5, r31, r28
    lwz     r4, 0x14(r29)
    lwz     r0, 0x0(r5)
    addi    r3, sp, 0x90
    add     r4, r4, r28
    stw     r0, 0x90(sp)
    lhz     r0, 0x4(r5)
    sth     r0, 0x94(sp)
    bl      sub__Q29JGeometry8TVec3_s_FRCQ29JGeometry8TVec3_s_
    lwz     r5, 0x90(sp)
    addi    r3, r28, 0x2
    lhz     r4, 0x94(sp)
    addi    r0, r28, 0x4
    stw     r5, 0x118(sp)
    addi    r30, r30, 0x1
    sth     r4, 0x11c(sp)
    lha     r5, 0x118(sp)
    lha     r4, 0x26(r29)
    lwz     r7, 0x20(r29)
    mullw   r5, r5, r4
    lbz     r4, 0xa(r29)
    lhax    r6, r7, r28
    sraw    r4, r5, r4
    extsh   r4, r4
    add     r4, r6, r4
    sthx    r4, r7, r28
    lha     r5, 0x11a(sp)
    lha     r4, 0x26(r29)
    lwz     r7, 0x20(r29)
    mullw   r5, r5, r4
    lbz     r4, 0xa(r29)
    lhax    r6, r7, r3
    sraw    r4, r5, r4
    extsh   r4, r4
    add     r4, r6, r4
    sthx    r4, r7, r3
    lha     r5, 0x11c(sp)
    lha     r4, 0x26(r29)
    lwz     r7, 0x20(r29)
    mullw   r5, r5, r4
    lbz     r4, 0xa(r29)
    lhax    r6, r7, r0
    sraw    r4, r5, r4
    extsh   r4, r4
    add     r4, r6, r4
    sthx    r4, r7, r0
    lwz     r4, 0x20(r29)
    lha     r6, 0x24(r29)
    add     r7, r4, r28
    lbz     r4, 0xa(r29)
    lha     r5, 0x0(r7)
    mullw   r5, r6, r5
    sraw    r4, r5, r4
    extsh   r4, r4
    sth     r4, 0x0(r7)
    lwz     r4, 0x20(r29)
    lha     r5, 0x24(r29)
    add     r6, r4, r3
    lbz     r3, 0xa(r29)
    lha     r4, 0x0(r6)
    mullw   r4, r5, r4
    sraw    r3, r4, r3
    extsh   r3, r3
    sth     r3, 0x0(r6)
    lwz     r3, 0x20(r29)
    lha     r4, 0x24(r29)
    add     r5, r3, r0
    lbz     r0, 0xa(r29)
    lha     r3, 0x0(r5)
    mullw   r3, r4, r3
    sraw    r0, r3, r0
    extsh   r0, r0
    sth     r0, 0x0(r5)
    lwz     r3, 0x20(r29)
    lwz     r0, 0x14(r29)
    add     r5, r3, r28
    add     r4, r0, r28
    lha     r0, 0x0(r5)
    lha     r3, 0x0(r4)
    add     r0, r3, r0
    sth     r0, 0x0(r4)
    lha     r3, 0x2(r4)
    lha     r0, 0x2(r5)
    add     r0, r3, r0
    sth     r0, 0x2(r4)
    lha     r3, 0x4(r4)
    lha     r0, 0x4(r5)
    add     r0, r3, r0
    sth     r0, 0x4(r4)
    lbz     r0, 0x9(r29)
    lwz     r4, 0x14(r29)
    slwi    r3, r0, 2
    addi    r0, r3, 0x18
    add     r3, r4, r28
    lwzx    r4, r29, r0
    lwz     r0, 0x0(r3)
    add     r4, r4, r28
    stw     r0, 0x0(r4)
    addi    r28, r28, 0x6
    lhz     r0, 0x4(r3)
    sth     r0, 0x4(r4)
branch_0x80226ab0:
    lwz     r3, 0x0(r29)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x3c(r3)
    cmplw   r30, r3
    blt+    branch_0x8022691c
    lbz     r0, 0x9(r29)
    mulli   r4, r3, 0x6
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x18(r3)
    bl      DCFlushRange
    lbz     r0, 0x9(r29)
    li      r5, 0x0
    lwz     r3, 0x0(r29)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r3, 0x98(r3)
    lwz     r0, 0x18(r4)
    stw     r0, 0x4(r3)
    b       branch_0x80226b1c

branch_0x80226b00:
    lbz     r0, 0x9(r29)
    addi    r5, r5, 0x1
    lwz     r3, 0x84(r4)
    slwi    r4, r0, 2
    addi    r0, r4, 0x18
    lwzx    r0, r29, r0
    stw     r0, 0x24(r3)
branch_0x80226b1c:
    lwz     r4, 0x0(r29)
    lwz     r3, 0x4(r4)
    lhz     r0, 0x2c(r3)
    cmpw    r5, r0
    blt+    branch_0x80226b00
    b       branch_0x80226d1c

branch_0x80226b34:
    lwz     r30, 0x4(r29)
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x80226c9c

branch_0x80226b44:
    add     r6, r30, r28
    lwz     r4, 0x28(r29)
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x7c
    lwz     r0, 0x4(r6)
    add     r4, r4, r28
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x84(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x7c(sp)
    addi    r5, r28, 0x4
    lwz     r4, 0x80(sp)
    addi    r3, r28, 0x8
    stw     r0, 0x10c(sp)
    lwz     r0, 0x84(sp)
    addi    r31, r31, 0x1
    stw     r4, 0x110(sp)
    stw     r0, 0x114(sp)
    lwz     r4, 0x34(r29)
    lfs     f2, 0x10c(sp)
    lfs     f1, 0x3c(r29)
    lfsx    f0, r4, r28
    fmadds  f0, f2, f1, f0
    stfsx   f0, r4, r28
    lwz     r4, 0x34(r29)
    lfs     f2, 0x110(sp)
    lfs     f1, 0x3c(r29)
    lfsx    f0, r4, r5
    fmadds  f0, f2, f1, f0
    stfsx   f0, r4, r5
    lwz     r4, 0x34(r29)
    lfs     f2, 0x114(sp)
    lfs     f1, 0x3c(r29)
    lfsx    f0, r4, r3
    fmadds  f0, f2, f1, f0
    stfsx   f0, r4, r3
    lwz     r0, 0x34(r29)
    lfs     f1, 0x38(r29)
    add     r4, r0, r28
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
    lwz     r0, 0x34(r29)
    lfs     f1, 0x38(r29)
    add     r4, r0, r5
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
    lwz     r0, 0x34(r29)
    lfs     f1, 0x38(r29)
    add     r3, r0, r3
    lfs     f0, 0x0(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r3)
    lwz     r3, 0x34(r29)
    lwz     r0, 0x28(r29)
    add     r4, r3, r28
    add     r3, r0, r28
    lfs     f0, 0x0(r4)
    lfs     f1, 0x0(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r3)
    lbz     r0, 0x9(r29)
    lwz     r4, 0x28(r29)
    slwi    r3, r0, 2
    addi    r0, r3, 0x2c
    add     r4, r4, r28
    lwzx    r5, r29, r0
    lwz     r3, 0x0(r4)
    add     r5, r5, r28
    lwz     r0, 0x4(r4)
    addi    r28, r28, 0xc
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r5)
branch_0x80226c9c:
    lwz     r3, 0x0(r29)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x3c(r3)
    cmplw   r31, r3
    blt+    branch_0x80226b44
    lbz     r0, 0x9(r29)
    mulli   r4, r3, 0xc
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x2c(r3)
    bl      DCFlushRange
    lbz     r0, 0x9(r29)
    li      r5, 0x0
    lwz     r3, 0x0(r29)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r3, 0x98(r3)
    lwz     r0, 0x2c(r4)
    stw     r0, 0x4(r3)
    b       branch_0x80226d08

branch_0x80226cec:
    lbz     r0, 0x9(r29)
    addi    r5, r5, 0x1
    lwz     r3, 0x84(r4)
    slwi    r4, r0, 2
    addi    r0, r4, 0x2c
    lwzx    r0, r29, r0
    stw     r0, 0x24(r3)
branch_0x80226d08:
    lwz     r4, 0x0(r29)
    lwz     r3, 0x4(r4)
    lhz     r0, 0x2c(r3)
    cmpw    r5, r0
    blt+    branch_0x80226cec
branch_0x80226d1c:
    lbz     r0, 0x9(r29)
    subfic  r0, r0, 0x1
    stb     r0, 0x9(r29)
branch_0x80226d28:
    lwz     r0, 0x134(sp)
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    mtlr    r0
    lwz     r29, 0x124(sp)
    lwz     r28, 0x120(sp)
    addi    sp, sp, 0x130
    blr


.globl sub__Q29JGeometry8TVec3_s_FRCQ29JGeometry8TVec3_s_
sub__Q29JGeometry8TVec3_s_FRCQ29JGeometry8TVec3_s_: # 0x80226d48
    lha     r5, 0x0(r4)
    lha     r0, 0x0(r3)
    subf    r0, r5, r0
    sth     r0, 0x0(r3)
    lha     r5, 0x2(r4)
    lha     r0, 0x2(r3)
    subf    r0, r5, r0
    sth     r0, 0x2(r3)
    lha     r4, 0x4(r4)
    lha     r0, 0x4(r3)
    subf    r0, r4, r0
    sth     r0, 0x4(r3)
    blr


.globl clash__19TTrembleModelEffectFf
clash__19TTrembleModelEffectFf: # 0x80226d7c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r3
    stw     r29, 0xbc(sp)
    lfs     f2, -0x1808(rtoc)
    fmr     f3, f2
    bl      tremble__19TTrembleModelEffectFfffi
    lbz     r0, 0x8(r30)
    rlwinm  r0, r0, 0, 30, 30
    cmpwi   r0, 0x1
    beq-    branch_0x80226f6c
    bge-    branch_0x80226dc8
    cmpwi   r0, 0x0
    bge-    branch_0x80226dd4
    b       branch_0x80226f6c

branch_0x80226dc8:
    cmpwi   r0, 0x3
    bge-    branch_0x80226f6c
    b       branch_0x80226e8c

branch_0x80226dd4:
    li      r31, 0x0
    li      r29, 0x0
    b       branch_0x80226e74

branch_0x80226de0:
    lwz     r0, 0x14(r30)
    addi    r3, sp, 0x60
    lwz     r4, 0x20(r30)
    add     r5, r0, r29
    lwz     r0, 0x0(r5)
    add     r4, r4, r29
    stw     r0, 0x60(sp)
    lhz     r0, 0x4(r5)
    sth     r0, 0x64(sp)
    bl      add__Q29JGeometry8TVec3_s_FRCQ29JGeometry8TVec3_s_
    lwz     r3, 0x60(sp)
    addi    r31, r31, 0x1
    lhz     r0, 0x64(sp)
    stw     r3, 0x1c(sp)
    sth     r0, 0x20(sp)
    lwz     r4, 0x1c(sp)
    lhz     r0, 0x20(sp)
    stw     r4, 0xb0(sp)
    sth     r0, 0xb4(sp)
    lwz     r0, 0x14(r30)
    add     r3, r0, r29
    stw     r4, 0x0(r3)
    lhz     r0, 0x20(sp)
    sth     r0, 0x4(r3)
    lwz     r3, 0x18(r30)
    lwz     r0, 0xb0(sp)
    add     r3, r3, r29
    stw     r0, 0x0(r3)
    lhz     r0, 0xb4(sp)
    sth     r0, 0x4(r3)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0xb0(sp)
    add     r3, r3, r29
    stw     r0, 0x0(r3)
    addi    r29, r29, 0x6
    lhz     r0, 0xb4(sp)
    sth     r0, 0x4(r3)
branch_0x80226e74:
    lwz     r3, 0x0(r30)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x3c(r3)
    cmplw   r31, r0
    blt+    branch_0x80226de0
    b       branch_0x80226f6c

branch_0x80226e8c:
    li      r31, 0x0
    li      r29, 0x0
    b       branch_0x80226f58

branch_0x80226e98:
    lwz     r0, 0x28(r30)
    addi    r3, sp, 0x50
    lwz     r4, 0x34(r30)
    add     r6, r0, r29
    lwz     r5, 0x0(r6)
    add     r4, r4, r29
    lwz     r0, 0x4(r6)
    stw     r5, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x58(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x50(sp)
    addi    r31, r31, 0x1
    lwz     r3, 0x54(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r5, 0x10(sp)
    lwz     r4, 0x14(sp)
    stw     r5, 0xa4(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x28(r30)
    add     r3, r0, r29
    stw     r5, 0x0(r3)
    stw     r4, 0x4(r3)
    lwz     r0, 0x18(sp)
    stw     r0, 0x8(r3)
    lwz     r4, 0x2c(r30)
    lwz     r3, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    add     r4, r4, r29
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0xac(sp)
    stw     r0, 0x8(r4)
    lwz     r0, 0x30(r30)
    lwz     r3, 0xa4(sp)
    add     r4, r0, r29
    lwz     r0, 0xa8(sp)
    addi    r29, r29, 0xc
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0xac(sp)
    stw     r0, 0x8(r4)
branch_0x80226f58:
    lwz     r3, 0x0(r30)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x3c(r3)
    cmplw   r31, r0
    blt+    branch_0x80226e98
branch_0x80226f6c:
    lbz     r0, 0x8(r30)
    ori     r0, r0, 0x4
    stb     r0, 0x8(r30)
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    lwz     r29, 0xbc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl add__Q29JGeometry8TVec3_s_FRCQ29JGeometry8TVec3_s_
add__Q29JGeometry8TVec3_s_FRCQ29JGeometry8TVec3_s_: # 0x80226f94
    lha     r5, 0x0(r3)
    lha     r0, 0x0(r4)
    add     r0, r5, r0
    sth     r0, 0x0(r3)
    lha     r5, 0x2(r3)
    lha     r0, 0x2(r4)
    add     r0, r5, r0
    sth     r0, 0x2(r3)
    lha     r5, 0x4(r3)
    lha     r0, 0x4(r4)
    add     r0, r5, r0
    sth     r0, 0x4(r3)
    blr


.globl tremble__19TTrembleModelEffectFfffi
tremble__19TTrembleModelEffectFfffi: # 0x80226fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    fmr     f27, f1
    stmw    r26, 0xb0(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    lbz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stb     r0, 0x8(r3)
    lbz     r0, 0x8(r3)
    rlwinm  r0, r0, 0, 30, 30
    cmpwi   r0, 0x1
    beq-    branch_0x80227354
    bge-    branch_0x80227024
    cmpwi   r0, 0x0
    bge-    branch_0x80227030
    b       branch_0x80227354

branch_0x80227024:
    cmpwi   r0, 0x3
    bge-    branch_0x80227354
    b       branch_0x8022721c

branch_0x80227030:
    lha     r0, 0xc(r27)
    lis     r31, 0x4330
    lfd     f28, -0x1810(rtoc)
    li      r29, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0xac(sp)
    li      r26, 0x0
    stw     r31, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    sth     r0, 0x26(r27)
    lha     r0, 0xc(r27)
    xoris   r0, r0, 0x8000
    stw     r0, 0x9c(sp)
    stw     r31, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r0, 0x94(sp)
    sth     r0, 0x24(r27)
    lwz     r30, 0x4(r27)
    lfs     f29, -0x17e4(rtoc)
    lfs     f30, -0x1800(rtoc)
    lfs     f31, -0x1804(rtoc)
    b       branch_0x80227204

branch_0x802270ac:
    bl      rand
    xoris   r3, r3, 0x8000
    lha     r0, 0xc(r27)
    stw     r3, 0x94(sp)
    xoris   r0, r0, 0x8000
    lwz     r3, 0x20(r27)
    stw     r31, 0x90(sp)
    lfd     f0, 0x90(sp)
    stw     r0, 0x9c(sp)
    fsubs   f0, f0, f28
    stw     r31, 0x98(sp)
    fmuls   f2, f29, f0
    lfd     f0, 0x98(sp)
    fsubs   f1, f0, f28
    fmsubs  f0, f30, f2, f31
    fmuls   f0, f27, f0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    sthx    r0, r3, r26
    bl      rand
    xoris   r0, r3, 0x8000
    lha     r3, 0xc(r27)
    stw     r0, 0xac(sp)
    addi    r0, r26, 0x2
    xoris   r4, r3, 0x8000
    lwz     r3, 0x20(r27)
    stw     r31, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    stw     r4, 0x8c(sp)
    fsubs   f0, f0, f28
    stw     r31, 0x88(sp)
    fmuls   f2, f29, f0
    lfd     f0, 0x88(sp)
    fsubs   f1, f0, f28
    fmsubs  f0, f30, f2, f31
    fmuls   f0, f27, f0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r4, 0x84(sp)
    sthx    r4, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lha     r3, 0xc(r27)
    stw     r0, 0x7c(sp)
    addi    r0, r26, 0x4
    xoris   r4, r3, 0x8000
    lwz     r3, 0x20(r27)
    stw     r31, 0x78(sp)
    add     r5, r30, r26
    lfd     f0, 0x78(sp)
    addi    r29, r29, 0x1
    stw     r4, 0x74(sp)
    fsubs   f0, f0, f28
    stw     r31, 0x70(sp)
    fmuls   f2, f29, f0
    lfd     f0, 0x70(sp)
    fsubs   f1, f0, f28
    fmsubs  f0, f30, f2, f31
    fmuls   f0, f27, f0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r4, 0x6c(sp)
    sthx    r4, r3, r0
    lwz     r3, 0x14(r27)
    lwz     r0, 0x0(r5)
    add     r3, r3, r26
    stw     r0, 0x0(r3)
    lhz     r0, 0x4(r5)
    sth     r0, 0x4(r3)
    lwz     r3, 0x18(r27)
    lwz     r0, 0x0(r5)
    add     r3, r3, r26
    stw     r0, 0x0(r3)
    lhz     r0, 0x4(r5)
    sth     r0, 0x4(r3)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x0(r5)
    add     r3, r3, r26
    stw     r0, 0x0(r3)
    addi    r26, r26, 0x6
    lhz     r0, 0x4(r5)
    sth     r0, 0x4(r3)
branch_0x80227204:
    lwz     r3, 0x0(r27)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x3c(r3)
    cmplw   r29, r0
    blt+    branch_0x802270ac
    b       branch_0x80227354

branch_0x8022721c:
    stfs    f2, 0x3c(r27)
    li      r30, 0x0
    li      r26, 0x0
    stfs    f3, 0x38(r27)
    lis     r31, 0x4330
    lwz     r29, 0x4(r27)
    lfd     f31, -0x1810(rtoc)
    lfs     f30, -0x17e4(rtoc)
    lfs     f29, -0x1800(rtoc)
    lfs     f28, -0x1804(rtoc)
    b       branch_0x80227340

branch_0x80227248:
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x34(r27)
    stw     r0, 0x6c(sp)
    stw     r31, 0x68(sp)
    lfd     f0, 0x68(sp)
    fsubs   f0, f0, f31
    fmuls   f0, f30, f0
    fmsubs  f0, f29, f0, f28
    fmuls   f0, f27, f0
    stfsx   f0, r3, r26
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x34(r27)
    stw     r0, 0x74(sp)
    addi    r0, r26, 0x4
    stw     r31, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f31
    fmuls   f0, f30, f0
    fmsubs  f0, f29, f0, f28
    fmuls   f0, f27, f0
    stfsx   f0, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x34(r27)
    stw     r0, 0x7c(sp)
    addi    r0, r26, 0x8
    add     r5, r29, r26
    stw     r31, 0x78(sp)
    addi    r30, r30, 0x1
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f31
    fmuls   f0, f30, f0
    fmsubs  f0, f29, f0, f28
    fmuls   f0, f27, f0
    stfsx   f0, r3, r0
    lwz     r4, 0x28(r27)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r4, r4, r26
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r5)
    stw     r0, 0x8(r4)
    lwz     r4, 0x2c(r27)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r4, r4, r26
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r5)
    stw     r0, 0x8(r4)
    lwz     r0, 0x30(r27)
    lwz     r3, 0x0(r5)
    add     r4, r0, r26
    lwz     r0, 0x4(r5)
    addi    r26, r26, 0xc
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r5)
    stw     r0, 0x8(r4)
branch_0x80227340:
    lwz     r3, 0x0(r27)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x3c(r3)
    cmplw   r30, r0
    blt+    branch_0x80227248
branch_0x80227354:
    stw     r28, 0x10(r27)
    lbz     r0, 0x8(r27)
    rlwinm  r0, r0, 0, 30, 28
    stb     r0, 0x8(r27)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lmw     r26, 0xb0(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl init__19TTrembleModelEffectFP8J3DModel
init__19TTrembleModelEffectFP8J3DModel: # 0x8022738c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xe0(sp)
    stmw    r25, 0xc4(sp)
    addi    r28, r4, 0x0
    addi    r31, r3, 0x0
    stw     r28, 0x0(r3)
    stw     r0, 0x10(r3)
    lwz     r3, 0x4(r4)
    lwz     r4, 0x48(r3)
    lwz     r3, 0x0(r4)
    b       branch_0x80227438

branch_0x802273c4:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0x9
    bne-    branch_0x80227438
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x80227408
    li      r0, 0x0
    stb     r0, 0x8(r31)
    li      r3, 0x1
    li      r5, 0x1
    lbz     r0, 0xc(r4)
    stb     r0, 0xa(r31)
    lbz     r0, 0xc(r4)
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0xc(r31)
    b       branch_0x80227440

branch_0x80227408:
    cmpwi   r0, 0x4
    bne-    branch_0x80227440
    li      r4, 0x0
    stb     r4, 0x8(r31)
    li      r0, 0x1
    li      r5, 0x1
    lbz     r3, 0x8(r31)
    ori     r3, r3, 0x2
    stb     r3, 0x8(r31)
    stb     r4, 0xa(r31)
    sth     r0, 0xc(r31)
    b       branch_0x80227440

branch_0x80227438:
    cmpwi   r3, 0xff
    bne+    branch_0x802273c4
branch_0x80227440:
    cmpwi   r5, 0x1
    bne-    branch_0x80227900
    lwz     r3, 0x0(r31)
    li      r30, 0x0
    lwz     r3, 0x4(r3)
    lwz     r0, 0x4c(r3)
    stw     r0, 0x4(r31)
    lwz     r3, 0x0(r31)
    lwz     r3, 0x4(r3)
    lwz     r29, 0x3c(r3)
    stb     r30, 0x9(r31)
    lbz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 30, 30
    cmpwi   r0, 0x1
    beq-    branch_0x80227900
    bge-    branch_0x8022748c
    cmpwi   r0, 0x0
    bge-    branch_0x80227498
    b       branch_0x80227900

branch_0x8022748c:
    cmpwi   r0, 0x3
    bge-    branch_0x80227900
    b       branch_0x802276a8

branch_0x80227498:
    addi    r25, r29, 0x0
    mulli   r27, r25, 0x6
    addi    r3, r27, 0x8
    bl      __nwa__FUl
    lis     r4, 0x801f
    subi    r26, r4, 0x6784
    addi    r4, r26, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x6
    bl      __construct_new_array
    stw     r3, 0x14(r31)
    addi    r25, r29, 0x0
    addi    r3, r27, 0x8
    bl      __nwa__FUl
    addi    r4, r26, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x6
    bl      __construct_new_array
    stw     r3, 0x18(r31)
    addi    r25, r29, 0x0
    addi    r3, r27, 0x8
    bl      __nwa__FUl
    addi    r4, r26, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x6
    bl      __construct_new_array
    stw     r3, 0x1c(r31)
    addi    r25, r29, 0x0
    addi    r3, r27, 0x8
    bl      __nwa__FUl
    addi    r4, r26, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x6
    bl      __construct_new_array
    stw     r3, 0x20(r31)
    cmplwi  r29, 0x0
    mr      r3, r29
    sth     r30, 0x24(r31)
    sth     r30, 0x26(r31)
    lwz     r4, 0x4(r28)
    lwz     r6, 0x4c(r4)
    ble-    branch_0x80227900
    srwi.   r0, r3, 1
    mtctr   r0
    beq-    branch_0x80227634
branch_0x8022755c:
    add     r7, r6, r30
    lwz     r5, 0x14(r31)
    lwz     r4, 0x0(r7)
    li      r0, 0x0
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r5, 0x18(r31)
    lwz     r4, 0x0(r7)
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r5, 0x1c(r31)
    lwz     r4, 0x0(r7)
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r4, 0x20(r31)
    add     r4, r4, r30
    sth     r0, 0x0(r4)
    addi    r30, r30, 0x6
    add     r7, r6, r30
    sth     r0, 0x2(r4)
    sth     r0, 0x4(r4)
    lwz     r5, 0x14(r31)
    lwz     r4, 0x0(r7)
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r5, 0x18(r31)
    lwz     r4, 0x0(r7)
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r5, 0x1c(r31)
    lwz     r4, 0x0(r7)
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r4, 0x20(r31)
    add     r4, r4, r30
    sth     r0, 0x0(r4)
    addi    r30, r30, 0x6
    sth     r0, 0x2(r4)
    sth     r0, 0x4(r4)
    bdnz+      branch_0x8022755c
    andi.   r3, r3, 0x1
    beq-    branch_0x80227900
branch_0x80227634:
    mtctr   r3
branch_0x80227638:
    add     r7, r6, r30
    lwz     r5, 0x14(r31)
    lwz     r4, 0x0(r7)
    li      r0, 0x0
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r5, 0x18(r31)
    lwz     r4, 0x0(r7)
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r5, 0x1c(r31)
    lwz     r4, 0x0(r7)
    add     r5, r5, r30
    stw     r4, 0x0(r5)
    lhz     r4, 0x4(r7)
    sth     r4, 0x4(r5)
    lwz     r4, 0x20(r31)
    add     r4, r4, r30
    sth     r0, 0x0(r4)
    addi    r30, r30, 0x6
    sth     r0, 0x2(r4)
    sth     r0, 0x4(r4)
    bdnz+      branch_0x80227638
    b       branch_0x80227900

branch_0x802276a8:
    addi    r25, r29, 0x0
    mulli   r30, r25, 0xc
    addi    r3, r30, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8002
    addi    r27, r4, 0x10dc
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x28(r31)
    addi    r25, r29, 0x0
    addi    r3, r30, 0x8
    bl      __nwa__FUl
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x2c(r31)
    addi    r25, r29, 0x0
    addi    r3, r30, 0x8
    bl      __nwa__FUl
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x30(r31)
    addi    r25, r29, 0x0
    addi    r3, r30, 0x8
    bl      __nwa__FUl
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x34(r31)
    cmplwi  r29, 0x0
    addi    r3, r29, 0x0
    lfs     f0, -0x1808(rtoc)
    li      r4, 0x0
    stfs    f0, 0x38(r31)
    fmr     f1, f0
    stfs    f0, 0x3c(r31)
    lwz     r5, 0x4(r28)
    lwz     r7, 0x4c(r5)
    ble-    branch_0x80227900
    srwi.   r0, r3, 1
    mtctr   r0
    beq-    branch_0x8022787c
branch_0x80227778:
    add     r8, r7, r4
    lwz     r6, 0x28(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r6, 0x2c(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r6, 0x30(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r0, 0x34(r31)
    add     r5, r0, r4
    stfs    f1, 0x0(r5)
    addi    r4, r4, 0xc
    add     r8, r7, r4
    stfs    f1, 0x4(r5)
    stfs    f0, 0x8(r5)
    lwz     r6, 0x28(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r6, 0x2c(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r6, 0x30(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r0, 0x34(r31)
    add     r5, r0, r4
    stfs    f1, 0x0(r5)
    addi    r4, r4, 0xc
    stfs    f1, 0x4(r5)
    stfs    f0, 0x8(r5)
    bdnz+      branch_0x80227778
    andi.   r3, r3, 0x1
    beq-    branch_0x80227900
branch_0x8022787c:
    mtctr   r3
branch_0x80227880:
    add     r8, r7, r4
    lwz     r6, 0x28(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r6, 0x2c(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r6, 0x30(r31)
    lwz     r5, 0x0(r8)
    lwz     r0, 0x4(r8)
    add     r6, r6, r4
    stw     r5, 0x0(r6)
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r8)
    stw     r0, 0x8(r6)
    lwz     r0, 0x34(r31)
    add     r5, r0, r4
    stfs    f1, 0x0(r5)
    addi    r4, r4, 0xc
    stfs    f1, 0x4(r5)
    stfs    f0, 0x8(r5)
    bdnz+      branch_0x80227880
branch_0x80227900:
    lmw     r25, 0xc4(sp)
    lwz     r0, 0xe4(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl perform__11TSilhouetteFUlPQ26JDrama9TGraphics
perform__11TSilhouetteFUlPQ26JDrama9TGraphics: # 0x80227914
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x188(sp)
    stw     r31, 0x184(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x180(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x17c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x80227998
    lwz     r3, -0x6094(r13)
    lwz     r0, 0x0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80227958
    li      r0, 0x1
    b       branch_0x8022795c

branch_0x80227958:
    li      r0, 0x0
branch_0x8022795c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8022796c
    lfs     f0, 0x50(r29)
    b       branch_0x80227970

branch_0x8022796c:
    lfs     f0, -0x1808(rtoc)
branch_0x80227970:
    lfs     f1, 0x48(r29)
    lfs     f2, 0x4c(r29)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x48(r29)
    lfs     f0, 0x48(r29)
    fctiwz  f0, f0
    stfd    f0, 0x170(sp)
    lwz     r0, 0x174(sp)
    stb     r0, 0x15(r29)
branch_0x80227998:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x80227a08
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x1
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x12(r29)
    addi    r4, sp, 0x40
    li      r3, 0x4
    stw     r0, 0x40(sp)
    bl      GXSetChanMatColor
    addi    r4, r31, 0xb4
    addi    r3, r29, 0x0
    bl      setting__11TSilhouetteFPA4_f
branch_0x80227a08:
    rlwinm. r0, r30, 0, 24, 24
    beq-    branch_0x80227a44
    lwz     r0, 0x12(r29)
    addi    r4, sp, 0x3c
    lwz     r5, -0x7100(r13)
    li      r3, 0x4
    stw     r0, 0x168(sp)
    lbz     r0, 0x1b(r5)
    stb     r0, 0x16b(sp)
    lwz     r0, 0x168(sp)
    stw     r0, 0x3c(sp)
    bl      GXSetChanMatColor
    addi    r4, r31, 0xb4
    addi    r3, r29, 0x0
    bl      setting__11TSilhouetteFPA4_f
branch_0x80227a44:
    rlwinm. r0, r30, 0, 27, 27
    beq-    branch_0x80227cf0
    lwz     r3, -0x62f0(r13)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80227cf0
    lfs     f6, -0x17fc(rtoc)
    addi    r3, sp, 0x108
    stfs    f6, 0x8(sp)
    fmr     f7, f6
    fmr     f8, f6
    lfs     f1, -0x17e0(rtoc)
    lfs     f2, -0x1804(rtoc)
    fmr     f3, f1
    lfs     f5, -0x17dc(rtoc)
    fmr     f4, f2
    bl      C_MTXLightFrustum
    lfs     f1, -0x17d8(rtoc)
    addi    r3, sp, 0xd8
    li      r4, 0x58
    bl      PSMTXRotRad
    addi    r3, sp, 0x108
    addi    r4, sp, 0xd8
    addi    r5, sp, 0x138
    bl      PSMTXConcat
    lfs     f1, 0x3c(r29)
    addi    r3, sp, 0xa8
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXScale
    lwz     r4, -0x60b4(r13)
    addi    r3, sp, 0x78
    lfs     f2, -0x1808(rtoc)
    lfs     f1, 0x0(r4)
    lfs     f0, 0x8(r4)
    fneg    f1, f1
    fneg    f3, f0
    bl      PSMTXTrans
    lfs     f1, -0x17fc(rtoc)
    addi    r3, sp, 0x48
    lfs     f3, -0x1808(rtoc)
    fmr     f2, f1
    bl      PSMTXTrans
    addi    r3, sp, 0xa8
    addi    r5, r3, 0x0
    addi    r4, sp, 0x78
    bl      PSMTXConcat
    addi    r3, sp, 0x138
    addi    r5, r3, 0x0
    addi    r4, sp, 0xa8
    bl      PSMTXConcat
    addi    r4, sp, 0x138
    addi    r5, r4, 0x0
    addi    r3, sp, 0x48
    bl      PSMTXConcat
    addi    r3, sp, 0x138
    li      r4, 0x1e
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r3, 0x40(r29)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r3, 0x44(r29)
    li      r4, 0x1
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x1
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x12(r29)
    addi    r4, sp, 0x38
    li      r3, 0x4
    stw     r0, 0x44(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x38(sp)
    bl      GXSetChanMatColor
    li      r0, 0x40
    stb     r0, 0x47(sp)
    addi    r4, sp, 0x34
    li      r3, 0x1
    lwz     r0, 0x44(sp)
    stw     r0, 0x34(sp)
    bl      GXSetTevColor
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xa
    li      r7, 0x2
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x5
    li      r7, 0x1
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetTevOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
branch_0x80227cf0:
    lwz     r0, 0x18c(sp)
    lwz     r31, 0x184(sp)
    lwz     r30, 0x180(sp)
    mtlr    r0
    lwz     r29, 0x17c(sp)
    addi    sp, sp, 0x188
    blr


.globl setting__11TSilhouetteFPA4_f
setting__11TSilhouetteFPA4_f: # 0x80227d0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x1c
    lwz     r0, -0x1818(rtoc)
    addi    r4, r3, 0x0
    li      r3, 0x4
    stw     r0, 0x20(sp)
    lbz     r0, 0x12(r30)
    stb     r0, 0x20(sp)
    lbz     r0, 0x13(r30)
    stb     r0, 0x21(sp)
    lbz     r0, 0x14(r30)
    stb     r0, 0x22(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x1c(sp)
    bl      GXSetChanAmbColor
    lwz     r7, -0x60b4(r13)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x24
    lwz     r6, 0x0(r7)
    addi    r5, sp, 0x30
    lwz     r0, 0x4(r7)
    stw     r6, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x2c(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x30(sp)
    addi    r3, sp, 0x3c
    lfs     f2, 0x34(sp)
    lfs     f3, 0x38(sp)
    bl      GXInitLightPos
    lfs     f1, 0x30(r30)
    addi    r3, sp, 0x3c
    lfs     f2, 0x34(r30)
    lfs     f3, 0x38(r30)
    bl      GXInitLightAttnK
    lfs     f2, -0x1808(rtoc)
    addi    r3, sp, 0x3c
    lfs     f1, -0x1804(rtoc)
    fmr     f3, f2
    bl      GXInitLightAttnA
    lwz     r0, 0x12(r30)
    addi    r4, sp, 0x18
    addi    r3, sp, 0x3c
    stw     r0, 0x16(r30)
    lfs     f0, 0x48(r30)
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r0, 0x84(sp)
    stb     r0, 0x19(r30)
    lwz     r0, 0x16(r30)
    stw     r0, 0x18(sp)
    bl      GXInitLightColor
    addi    r3, sp, 0x3c
    li      r4, 0x1
    bl      GXLoadLightObjImm
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x1
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl loadAfter__11TSilhouetteFv
loadAfter__11TSilhouetteFv: # 0x80227ea8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x78(sp)
    li      r30, 0x0
    stw     r29, 0x74(sp)
    stw     r28, 0x70(sp)
    sth     r0, 0x10(r3)
    lis     r3, 0x803a
    lwz     r4, -0x7100(r13)
    lwz     r0, 0x18(r4)
    subi    r4, r3, 0x27d8
    stw     r0, 0x12(r31)
    stb     r30, 0x15(r31)
    lfs     f0, -0x17d4(rtoc)
    stfs    f0, 0x24(r31)
    lfs     f0, -0x17d0(rtoc)
    stfs    f0, 0x28(r31)
    lfs     f0, -0x17cc(rtoc)
    stfs    f0, 0x2c(r31)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x44(sp)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x50(sp)
    lfs     f3, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f2, f3, f3
    lfs     f4, 0x3c(sp)
    fmuls   f1, f0, f0
    lfs     f5, 0x40(sp)
    fsubs   f0, f3, f0
    fsubs   f2, f2, f1
    fmuls   f1, f4, f0
    fsubs   f0, f5, f4
    fmuls   f2, f4, f2
    fmuls   f1, f5, f1
    fmuls   f2, f5, f2
    stfs    f2, 0x54(sp)
    stfs    f1, 0x5c(sp)
    stfs    f0, 0x64(sp)
    lfs     f3, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f2, f3, f3
    lfs     f4, 0x40(sp)
    fmuls   f1, f0, f0
    lfs     f5, 0x44(sp)
    fsubs   f0, f3, f0
    fsubs   f2, f2, f1
    fmuls   f1, f4, f0
    fsubs   f0, f5, f4
    fmuls   f2, f4, f2
    fmuls   f1, f5, f1
    fmuls   f2, f5, f2
    stfs    f2, 0x58(sp)
    stfs    f1, 0x60(sp)
    stfs    f0, 0x68(sp)
    lfs     f2, 0x68(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x58(sp)
    fmuls   f2, f2, f1
    lfs     f4, 0x60(sp)
    lfs     f3, 0x64(sp)
    fmuls   f0, f0, f1
    lfs     f1, 0x54(sp)
    fmsubs  f2, f3, f4, f2
    fmsubs  f0, f1, f4, f0
    fdivs   f0, f2, f0
    stfs    f0, 0x38(r31)
    lfs     f3, 0x54(sp)
    lfs     f2, 0x38(r31)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x5c(sp)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f3, 0x48(sp)
    lfs     f0, 0x34(r31)
    fmuls   f1, f3, f3
    lfs     f2, 0x38(r31)
    fmuls   f0, f3, f0
    lfs     f3, 0x3c(sp)
    fmadds  f0, f2, f1, f0
    fsubs   f0, f3, f0
    stfs    f0, 0x30(r31)
    lfs     f0, -0x17c8(rtoc)
    stfs    f0, 0x3c(r31)
    lwz     r3, -0x62f0(r13)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80228070
    lwz     r4, 0x14(r3)
    li      r3, 0x54
    lwz     r4, 0x0(r4)
    lwz     r29, 0x58(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8022806c
    stw     r30, 0x28(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r30, 0x50(r28)
branch_0x8022806c:
    stw     r28, 0x40(r31)
branch_0x80228070:
    lis     r3, 0x803a
    subi    r3, r3, 0x27bc
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802280a8
    li      r30, 0x0
    stw     r30, 0x28(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r30, 0x50(r28)
branch_0x802280a8:
    stw     r28, 0x44(r31)
    lfs     f0, -0x1808(rtoc)
    stfs    f0, 0x48(r31)
    lfs     f0, -0x17c4(rtoc)
    stfs    f0, 0x4c(r31)
    lfs     f0, -0x17c0(rtoc)
    stfs    f0, 0x50(r31)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl load__11TSilhouetteFR20JSUMemoryInputStream
load__11TSilhouetteFR20JSUMemoryInputStream: # 0x802280e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r0, -0x1820(rtoc)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x12(r31)
    lwz     r0, -0x181c(rtoc)
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0x16(r31)
    lfs     f0, -0x17bc(rtoc)
    stfs    f0, 0x1c(r31)
    lfs     f0, -0x17b8(rtoc)
    stfs    f0, 0x20(r31)
    stw     r31, -0x6130(r13)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

