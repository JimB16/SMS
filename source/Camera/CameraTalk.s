
.globl ctrlTalkCamera___15CPolarSubCameraFv
ctrlTalkCamera___15CPolarSubCameraFv: # 0x8002cf20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8002cf54
    lwz     r4, -0x7110(r13)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x8c(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x90(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x94(r3)
branch_0x8002cf54:
    bl      calcPosAndAt___15CPolarSubCameraFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeMtxForPrevTalk__15CPolarSubCameraFv
makeMtxForPrevTalk__15CPolarSubCameraFv: # 0x8002cf68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r4, 0x50(r3)
    bl      isTalkCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8002cfe8
    lha     r0, 0xac(r30)
    mr      r3, r30
    sth     r0, 0xa6(r30)
    lwz     r31, 0x58(r30)
    mr      r4, r31
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    extsh   r5, r3
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    lwz     r3, 0x120(r30)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    lwz     r3, -0x6048(r13)
    addi    r31, r3, 0x88
    lwz     r30, 0x8c(r3)
    b       branch_0x8002cfdc

branch_0x8002cfd0:
    lwz     r3, 0x0(r30)
    bl      npcTalkOut__8TBaseNPCFv
    addi    r30, r30, 0x4
branch_0x8002cfdc:
    lwz     r0, 0x8(r31)
    cmplw   r30, r0
    bne+    branch_0x8002cfd0
branch_0x8002cfe8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl makeMtxForTalk__15CPolarSubCameraFPC8TBaseNPC
makeMtxForTalk__15CPolarSubCameraFPC8TBaseNPC: # 0x8002d000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      killHeightPan___15CPolarSubCameraFv
    lha     r4, 0xa6(r29)
    lis     r3, 0x400
    addi    r0, r3, 0x1a
    sth     r4, 0xac(r29)
    li      r31, 0xc
    lwz     r4, -0x60ac(r13)
    lha     r4, 0x0(r4)
    subi    r4, r4, 0x8000
    sth     r4, 0xa6(r29)
    lwz     r4, 0x50(r29)
    stw     r4, 0x58(r29)
    lwz     r4, 0x4c(r30)
    cmpw    r4, r0
    beq-    branch_0x8002d084
    bge-    branch_0x8002d070
    addi    r0, r3, 0x7
    cmpw    r4, r0
    beq-    branch_0x8002d08c
    b       branch_0x8002d094

branch_0x8002d070:
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x8002d094
    li      r31, 0x3f
    b       branch_0x8002d0a8

branch_0x8002d084:
    li      r31, 0x40
    b       branch_0x8002d0a8

branch_0x8002d08c:
    li      r31, 0xa
    b       branch_0x8002d0a8

branch_0x8002d094:
    mr      r3, r30
    bl      isSmallNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002d0a8
    li      r31, 0x2d
branch_0x8002d0a8:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    extsh   r5, r3
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr

