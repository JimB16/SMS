
.globl controlByCameraCode___15CPolarSubCameraFPi
controlByCameraCode___15CPolarSubCameraFPi: # 0x80022de4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x78(sp)
    stmw    r27, 0x64(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    li      r28, 0x1
    stw     r0, 0x0(r4)
    bl      SMS_IsMarioOpeningDoor__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80022e68
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x42
    bne-    branch_0x80022e58
    lwz     r3, R13Off_m0x7110(r13)
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x78
    bne-    branch_0x80022e58
    addi    r3, r29, 0x0
    li      r4, 0x14
    li      r5, 0x1
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    lwz     r4, R13Off_m0x60ac(r13)
    mr      r3, r29
    lfs     f1, 0xa8(r29)
    lha     r4, 0x0(r4)
    addi    r4, r4, 0x9c4
    bl      warpPosAndAt__15CPolarSubCameraFfs
branch_0x80022e58:
    lwz     r3, 0x120(r29)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    li      r28, 0x0
    b       branch_0x80022f34

branch_0x80022e68:
    lwz     r4, R13Off_m0x60b4(r13)
    li      r31, 0x0
    lwz     r5, R13Off_m0x70f0(r13)
    lwz     r3, 0x0(r4)
    lbz     r27, 0x10(r5)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x7968(r2)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x58(sp)
    b       branch_0x80022f2c

branch_0x80022ea4:
    lwz     r3, R13Off_m0x70f0(r13)
    addi    r5, r31, 0x0
    addi    r4, sp, 0x54
    bl      isInCube__16TCubeManagerBaseCFRC3Vecl
    clrlwi. r0, r3, 24
    beq-    branch_0x80022f28
    lwz     r3, R13Off_m0x70f0(r13)
    slwi    r0, r31, 2
    lwz     r4, 0x14(r3)
    lwz     r4, 0x10(r4)
    add     r4, r4, r0
    lwz     r4, 0x0(r4)
    lwz     r28, 0x38(r4)
    cmplwi  r28, 0x0
    addi    r4, r28, 0x0
    beq-    branch_0x80022f14
    lwz     r3, 0x50(r29)
    lwz     r0, 0x24(r28)
    cmpw    r3, r0
    bne-    branch_0x80022f00
    lwz     r0, 0x70(r29)
    cmplw   r28, r0
    beq-    branch_0x80022f08
branch_0x80022f00:
    mr      r3, r29
    bl      changeCamModeSpecifyCamMapTool___15CPolarSubCameraFPC14TCameraMapTool
branch_0x80022f08:
    lwz     r0, 0x24(r28)
    stw     r0, 0x0(r30)
    b       branch_0x80022f20

branch_0x80022f14:
    mr      r4, r31
    bl      getDataNo__16TCubeManagerBaseCFl
    stw     r3, 0x0(r30)
branch_0x80022f20:
    li      r3, 0x1
    b       branch_0x80022f38

branch_0x80022f28:
    addi    r31, r31, 0x1
branch_0x80022f2c:
    cmpw    r31, r27
    blt+    branch_0x80022ea4
branch_0x80022f34:
    mr      r3, r28
branch_0x80022f38:
    lmw     r27, 0x64(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr

