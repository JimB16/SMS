
.globl isNormalDeadDemo__15CPolarSubCameraCFv
isNormalDeadDemo__15CPolarSubCameraCFv: # 0x8003262c
    lhz     r4, 0x64(r3)
    li      r3, 0x0
    rlwinm. r0, r4, 0, 21, 21
    beqlr-    

    rlwinm. r0, r4, 0, 20, 20
    bnelr-    

    li      r3, 0x1
    blr


.globl isHellDeadDemo__15CPolarSubCameraCFv
isHellDeadDemo__15CPolarSubCameraCFv: # 0x8003264c
    lhz     r4, 0x64(r3)
    li      r3, 0x0
    rlwinm. r0, r4, 0, 21, 21
    beqlr-    

    rlwinm. r0, r4, 0, 20, 20
    beqlr-    

    li      r3, 0x1
    blr


.globl execDeadDemoProc___15CPolarSubCameraFv
execDeadDemoProc___15CPolarSubCameraFv: # 0x8003266c
    lhz     r4, 0x27c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800326b4
    subi    r0, r4, 0x1
    sth     r0, 0x27c(r3)
    lhz     r0, 0x27c(r3)
    cmplwi  r0, 0x0
    bnelr-    

    lhz     r0, 0x64(r3)
    li      r4, 0x1
    ori     r0, r0, 0x400
    sth     r0, 0x64(r3)
    stw     r4, 0x78(r3)
    lhz     r0, 0x64(r3)
    rlwinm. r0, r0, 0, 20, 20
    bnelr-    

    sth     r4, 0x27e(r3)
    blr

branch_0x800326b4:
    lwz     r4, MarioFlags(r13)
    lwz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 21, 21 # MARIOFLAG_400
    beq-    branch_0x800326cc
    li      r0, 0x1
    b       branch_0x800326d0

branch_0x800326cc:
    li      r0, 0x0
branch_0x800326d0:
    clrlwi. r0, r0, 24
    beqlr-    

    lwz     r6, gpMarDirector(r13)
    li      r4, 0x1
    addi    r5, r4, 0x0
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x800326fc
    cmplwi  r0, 0x2
    beq-    branch_0x800326fc
    li      r5, 0x0
branch_0x800326fc:
    clrlwi. r0, r5, 24
    bne-    branch_0x8003272c
    lbz     r5, 0x124(r6)
    li      r0, 0x1
    cmplwi  r5, 0x3
    beq-    branch_0x80032720
    cmplwi  r5, 0x4
    beq-    branch_0x80032720
    li      r0, 0x0
branch_0x80032720:
    clrlwi. r0, r0, 24
    bne-    branch_0x8003272c
    li      r4, 0x0
branch_0x8003272c:
    clrlwi. r0, r4, 24
    bnelr-    

    li      r0, 0x10
    sth     r0, 0x27c(r3)
    blr


.globl ctrlNormalDeadDemo___15CPolarSubCameraFv
ctrlNormalDeadDemo___15CPolarSubCameraFv: # 0x80032740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    addi    r4, r31, 0x10
    stw     r30, 0x48(sp)
    addi    r5, r31, 0x8c
    lwz     r6, -0x7110(r13)
    lfs     f0, 0x0(r6)
    stfs    f0, 0x8c(r3)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x90(r3)
    lfs     f0, 0x8(r6)
    stfs    f0, 0x94(r3)
    lwz     r6, MarioHitActorPos(r13)
    lwz     r3, 0x6c(r3)
    bl      execCameraInbetween__16TCameraInbetweenFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r4, 0x6c(r31)
    addi    r3, r31, 0x3c
    lfs     f2, -0x7568(rtoc)
    addi    r30, r4, 0x24
    lfs     f3, -0x7564(rtoc)
    lfs     f1, 0x24(r4)
    bl      CLBChaseDecrease__FPffff
    lfs     f1, 0x4(r30)
    addi    r3, r31, 0x40
    lfs     f2, -0x7568(rtoc)
    lfs     f3, -0x7564(rtoc)
    bl      CLBChaseDecrease__FPffff
    lfs     f1, 0x8(r30)
    addi    r3, r31, 0x44
    lfs     f2, -0x7568(rtoc)
    lfs     f3, -0x7564(rtoc)
    bl      CLBChaseDecrease__FPffff
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_Flags(r3)
    rlwinm. r0, r0, 0, 19, 19 # MARIOFLAG_1000
    beq-    branch_0x800327e4
    li      r0, 0x1
    b       branch_0x800327e8

branch_0x800327e4:
    li      r0, 0x0
branch_0x800327e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x800328cc
    lhz     r3, 0x27e(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8003281c
    subi    r0, r3, 0x1
    sth     r0, 0x27e(r31)
    lhz     r0, 0x27e(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800328cc
    li      r0, 0x157
    sth     r0, 0x280(r31)
    b       branch_0x800328cc

branch_0x8003281c:
    lhz     r3, 0x280(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800328cc
    subi    r0, r3, 0x1
    sth     r0, 0x280(r31)
    addi    r3, sp, 0x30
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x40(r31)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x44(r31)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x7560(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800328cc
    lfs     f0, -0x7558(rtoc)
    lfs     f2, -0x755c(rtoc)
    fdivs   f1, f0, f1
    lfs     f0, -0x7554(rtoc)
    fmuls   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80032898
    fmr     f1, f0
    b       branch_0x800328a8

branch_0x80032898:
    lfs     f0, -0x7550(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800328a8
    fmr     f1, f0
branch_0x800328a8:
    lhz     r3, 0x280(r31)
    lis     r0, 0x4330
    lfd     f2, -0x7548(rtoc)
    stw     r3, 0x44(sp)
    addi    r3, r31, 0x48
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f2, f0, f2
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
branch_0x800328cc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl getRestDemoFrames__15CPolarSubCameraCFv
getRestDemoFrames__15CPolarSubCameraCFv: # 0x800328e4
    lwz     r3, 0x2b4(r3)
    lwz     r3, 0x14(r3)
    blr


.globl isSimpleDemoCamera__15CPolarSubCameraCFv
isSimpleDemoCamera__15CPolarSubCameraCFv: # 0x800328f0
    lwz     r0, 0x50(r3)
    li      r4, 0x0
    cmpwi   r0, 0x49
    bne-    branch_0x80032908
    li      r0, 0x1
    b       branch_0x8003290c

branch_0x80032908:
    li      r0, 0x0
branch_0x8003290c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80032934
    lwz     r3, 0x2b4(r3)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x80032930
    lbz     r0, 0xc(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80032934
branch_0x80032930:
    li      r4, 0x1
branch_0x80032934:
    mr      r3, r4
    blr


.globl endDemoCamera__15CPolarSubCameraFv
endDemoCamera__15CPolarSubCameraFv: # 0x8003293c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r4, 0x50(r3)
    cmpwi   r4, 0x49
    bne-    branch_0x80032964
    li      r0, 0x1
    b       branch_0x80032968

branch_0x80032964:
    li      r0, 0x0
branch_0x80032968:
    clrlwi. r0, r0, 24
    beq-    branch_0x800329ac
    cmpwi   r4, 0x49
    bne-    branch_0x80032a64
    lwz     r3, 0x2b0(r31)
    bl      endDemo__10TCameraBckFv
    lwz     r6, 0x2b4(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x10(r6)
    li      r4, -0x1
    li      r5, 0x1
    stw     r0, 0x14(r6)
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    lwz     r3, 0x120(r31)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    b       branch_0x80032a64

branch_0x800329ac:
    cmpwi   r4, 0x49
    li      r3, 0x0
    bne-    branch_0x800329c0
    li      r0, 0x1
    b       branch_0x800329c4

branch_0x800329c0:
    mr      r0, r3
branch_0x800329c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800329ec
    lwz     r5, 0x2b4(r31)
    lwz     r0, 0x14(r5)
    cmpwi   r0, 0x0
    bgt-    branch_0x800329e8
    lbz     r0, 0xc(r5)
    clrlwi. r0, r0, 31
    beq-    branch_0x800329ec
branch_0x800329e8:
    li      r3, 0x1
branch_0x800329ec:
    clrlwi. r0, r3, 24
    beq-    branch_0x80032a64
    cmpwi   r4, 0x49
    li      r3, 0x0
    bne-    branch_0x80032a08
    li      r0, 0x1
    b       branch_0x80032a0c

branch_0x80032a08:
    mr      r0, r3
branch_0x80032a0c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80032a34
    lwz     r4, 0x2b4(r31)
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x0
    bgt-    branch_0x80032a30
    lbz     r0, 0xc(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x80032a34
branch_0x80032a30:
    li      r3, 0x1
branch_0x80032a34:
    clrlwi. r0, r3, 24
    beq-    branch_0x80032a64
    lwz     r3, 0x2b4(r31)
    li      r0, 0x0
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r3, 0x2b4(r31)
    lbz     r0, 0xc(r3)
    clrrwi  r0, r0, 1
    stb     r0, 0xc(r3)
    lwz     r3, 0x120(r31)
    bl      onNeutralMarioKey__13TMarioGamePadFv
branch_0x80032a64:
    lwz     r3, 0x2b4(r31)
    li      r0, 0x0
    stw     r0, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl startDemoCamera__15CPolarSubCameraFPCcPCQ29JGeometry8TVec3_f_lfb
startDemoCamera__15CPolarSubCameraFPCcPCQ29JGeometry8TVec3_f_lfb: # 0x80032a84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    mr      r31, r3
    addi    r27, r5, 0x0
    mr.     r26, r4
    mr      r28, r6
    mr      r29, r7
    lwz     r3, 0x2b4(r3)
    stw     r27, 0x0(r3)
    lwz     r3, 0x2b4(r31)
    stfs    f1, 0x4(r3)
    beq-    branch_0x80032bc8
    lwz     r3, 0x2b0(r31)
    addi    r4, r26, 0x0
    li      r30, 0x0
    bl      isFileExist__10TCameraBckCFPCc
    clrlwi. r0, r3, 24
    beq-    branch_0x80032b18
    lwz     r3, 0x2b0(r31)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    bl      startDemo__10TCameraBckFPCcPCQ29JGeometry8TVec3_f_
    lwz     r3, 0x2b0(r31)
    bl      getTotalDemoFrames__10TCameraBckCFv
    lwz     r6, 0x2b4(r31)
    li      r4, 0x49
    li      r5, 0x1
    stw     r3, 0x10(r6)
    stw     r3, 0x14(r6)
    mr      r3, r31
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    lwz     r3, 0x2d4(r31)
    li      r30, 0x1
    lfs     f0, 0x158(r3)
    stfs    f0, 0x28(r31)
branch_0x80032b18:
    clrlwi. r0, r30, 24
    bne-    branch_0x80032bc8
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x49
    bne-    branch_0x80032b34
    li      r0, 0x1
    b       branch_0x80032b38

branch_0x80032b34:
    li      r0, 0x0
branch_0x80032b38:
    clrlwi. r0, r0, 24
    bne-    branch_0x80032bc8
    mr      r3, r26
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, -0x70c0(r13)
    mr      r5, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr.     r4, r3
    beq-    branch_0x80032bc8
    clrlwi. r0, r29, 24
    bne-    branch_0x80032b98
    lwz     r3, 0x2b4(r31)
    li      r0, -0x1
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r3, 0x2b4(r31)
    lbz     r0, 0xc(r3)
    ori     r0, r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x80032bc0

branch_0x80032b98:
    cmpwi   r28, -0x1
    bne-    branch_0x80032bb4
    lwz     r0, 0x2c(r4)
    lwz     r3, 0x2b4(r31)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    b       branch_0x80032bc0

branch_0x80032bb4:
    lwz     r3, 0x2b4(r31)
    stw     r28, 0x10(r3)
    stw     r28, 0x14(r3)
branch_0x80032bc0:
    mr      r3, r31
    bl      changeCamModeSpecifyCamMapTool___15CPolarSubCameraFPC14TCameraMapTool
branch_0x80032bc8:
    lmw     r26, 0x30(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl startGateDemoCamera__15CPolarSubCameraFPCQ26JDrama6TActor
startGateDemoCamera__15CPolarSubCameraFPCQ26JDrama6TActor: # 0x80032bdc
    mflr    r0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x14
    lwz     r6, 0x4(r4)
    lis     r4, 0x8037
    addi    r5, r4, 0x5ad8
    li      r4, 0x80
    bl      snprintf
    addi    r3, sp, 0x14
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, -0x70c0(r13)
    addi    r5, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr.     r4, r3
    beq-    branch_0x80032c8c
    lwz     r6, 0x2b4(r30)
    mr      r3, r30
    li      r5, 0x3c
    lbz     r0, 0xc(r6)
    ori     r0, r0, 0x1
    stb     r0, 0xc(r6)
    bl      changeCamModeSpecifyCamMapToolAndFrame___15CPolarSubCameraFPC14TCameraMapTooli
    lhz     r0, 0x64(r30)
    li      r5, 0x0
    ori     r0, r0, 0x200
    sth     r0, 0x64(r30)
    lwz     r3, 0x2b0(r30)
    lwz     r4, -0x7fd0(r13)
    bl      startDemo__10TCameraBckFPCcPCQ29JGeometry8TVec3_f_
    lwz     r3, 0x2b0(r30)
    bl      getTotalDemoFrames__10TCameraBckCFv
    lwz     r4, 0x2b4(r30)
    stw     r3, 0x10(r4)
    stw     r3, 0x14(r4)
branch_0x80032c8c:
    lis     r3, 0x8037
    lwz     r6, 0x4(r31)
    addi    r5, r3, 0x5ae4
    crxor   6, 6, 6
    addi    r3, sp, 0x14
    li      r4, 0x80
    bl      snprintf
    addi    r3, sp, 0x14
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, -0x70c0(r13)
    addi    r5, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80032cdc
    lwz     r4, 0x2b4(r30)
    stw     r3, 0x8(r4)
branch_0x80032cdc:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl updateGateDemoCamera___15CPolarSubCameraFv
updateGateDemoCamera___15CPolarSubCameraFv: # 0x80032cf4
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r7, sp, 0x1c
    lwz     r3, 0x2b0(r3)
    bl      updateDemo__10TCameraBckFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_Pf
    lwz     r3, 0x2b4(r31)
    lwz     r5, 0x6c(r31)
    lwz     r4, 0x70(r31)
    lwz     r0, 0x8(r3)
    lwz     r3, 0x4(r5)
    cmplw   r4, r0
    beq-    branch_0x80032d70
    cmpwi   r3, 0x0
    ble-    branch_0x80032d70
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7540(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f1, 0x1c(sp)
    addi    r3, r31, 0x48
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f2, f0, f2
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    b       branch_0x80032d78

branch_0x80032d70:
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x48(r31)
branch_0x80032d78:
    lfs     f1, 0x48(r31)
    addi    r3, r31, 0x16c
    lfs     f2, 0x4c(r31)
    lfs     f3, 0x28(r31)
    lfs     f4, 0x2c(r31)
    bl      C_MTXPerspective
    lwz     r5, 0x2b4(r31)
    lwz     r0, 0x70(r31)
    lwz     r4, 0x8(r5)
    cmplw   r0, r4
    beq-    branch_0x80032dc4
    lwz     r3, 0x14(r5)
    lwz     r0, 0x10(r5)
    subf    r0, r3, r0
    cmpwi   r0, 0xf0
    ble-    branch_0x80032dc4
    addi    r3, r31, 0x0
    li      r5, 0x78
    bl      changeCamModeSpecifyCamMapToolAndFrame___15CPolarSubCameraFPC14TCameraMapTooli
branch_0x80032dc4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl updateDemoCamera___15CPolarSubCameraFb
updateDemoCamera___15CPolarSubCameraFb: # 0x80032dd8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stfd    f30, 0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x800330a0
    lwz     r0, 0x50(r30)
    cmpwi   r0, 0x49
    bne-    branch_0x80032e14
    li      r0, 0x1
    b       branch_0x80032e18

branch_0x80032e14:
    li      r0, 0x0
branch_0x80032e18:
    clrlwi. r0, r0, 24
    beq-    branch_0x800330a0
    lwz     r3, 0x2b0(r30)
    addi    r4, r30, 0x124
    addi    r5, r30, 0x148
    addi    r6, r30, 0x30
    addi    r7, r30, 0x48
    bl      updateDemo__10TCameraBckFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_Pf
    lwz     r3, 0x2b4(r30)
    lfs     f0, -0x7564(rtoc)
    lfs     f1, 0x4(r3)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8003306c
    lfs     f0, -0x7538(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f0, -0x7564(rtoc)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    lwz     r4, 0x2b4(r30)
    lwz     r5, 0x0(r4)
    cmplwi  r5, 0x0
    beq-    branch_0x80032e90
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xa8(sp)
branch_0x80032e90:
    lfs     f1, 0x124(r30)
    clrlwi  r31, r3, 16
    lfs     f0, 0xa0(sp)
    addi    r3, sp, 0x58
    lfs     f2, 0x128(r30)
    lfs     f30, 0xa4(sp)
    fsubs   f0, f1, f0
    lfs     f1, 0x12c(r30)
    addi    r4, sp, 0x94
    lfs     f31, 0xa8(sp)
    fsubs   f2, f2, f30
    stfs    f0, 0x94(sp)
    fsubs   f0, f1, f31
    stfs    f2, 0x98(sp)
    stfs    f0, 0x9c(sp)
    lwz     r5, -0x5eac(r13)
    lwz     r0, -0x5ea8(r13)
    sraw    r5, r31, r5
    lfs     f4, 0x94(sp)
    slwi    r6, r5, 2
    lwz     r5, -0x5ea4(r13)
    add     r7, r0, r6
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x0(r7)
    add     r5, r5, r6
    lfs     f2, 0x0(r5)
    fneg    f3, f4
    fmuls   f0, f1, f0
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x0(r5)
    lfs     f2, 0x0(r7)
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x9c(sp)
    lwz     r0, 0xa0(sp)
    lwz     r5, 0xa4(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0xa8(sp)
    stw     r5, 0x5c(sp)
    stw     r0, 0x60(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r5, 0x58(sp)
    addi    r3, sp, 0x4c
    lwz     r0, 0x5c(sp)
    addi    r4, sp, 0x88
    stw     r5, 0x124(r30)
    stw     r0, 0x128(r30)
    lwz     r0, 0x60(sp)
    stw     r0, 0x12c(r30)
    lfs     f1, 0x148(r30)
    lfs     f0, 0xa0(sp)
    lfs     f2, 0x14c(r30)
    fsubs   f0, f1, f0
    lfs     f3, 0x150(r30)
    fsubs   f1, f2, f30
    fsubs   f2, f3, f31
    stfs    f0, 0x88(sp)
    stfs    f1, 0x8c(sp)
    stfs    f2, 0x90(sp)
    lwz     r5, -0x5eac(r13)
    lwz     r0, -0x5ea8(r13)
    sraw    r5, r31, r5
    lfs     f4, 0x88(sp)
    slwi    r6, r5, 2
    lwz     r5, -0x5ea4(r13)
    add     r7, r0, r6
    lfs     f1, 0x90(sp)
    lfs     f0, 0x0(r7)
    add     r5, r5, r6
    lfs     f2, 0x0(r5)
    fneg    f3, f4
    fmuls   f0, f1, f0
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x0(r5)
    lfs     f2, 0x0(r7)
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x90(sp)
    lwz     r0, 0xa0(sp)
    lwz     r5, 0xa4(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0xa8(sp)
    stw     r5, 0x50(sp)
    stw     r0, 0x54(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x148(r30)
    stw     r0, 0x14c(r30)
    lwz     r0, 0x54(sp)
    stw     r0, 0x150(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea8(r13)
    sraw    r0, r31, r0
    lfs     f2, 0x30(r30)
    slwi    r0, r0, 2
    lfs     f1, 0x38(r30)
    lfsx    f0, r3, r0
    fneg    f3, f2
    lwz     r3, -0x5ea4(r13)
    fmuls   f0, f1, f0
    lfsx    f1, r3, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x30(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r31, r0
    lfs     f1, 0x38(r30)
    slwi    r0, r0, 2
    lwz     r4, -0x5ea8(r13)
    lfsx    f0, r3, r0
    lfsx    f2, r4, r0
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x38(r30)
branch_0x8003306c:
    mr      r3, r30
    bl      calcFinalPosAndAt___15CPolarSubCameraFv
    lfs     f1, 0x48(r30)
    addi    r3, r30, 0x16c
    lfs     f2, 0x4c(r30)
    lfs     f3, 0x28(r30)
    lfs     f4, 0x2c(r30)
    bl      C_MTXPerspective
    addi    r3, r30, 0x1ec
    addi    r4, r30, 0x124
    addi    r5, r30, 0x30
    addi    r6, r30, 0x148
    bl      C_MTXLookAt
branch_0x800330a0:
    lwz     r3, 0x2b4(r30)
    addi    r4, r3, 0x14
    lwz     r3, 0x14(r3)
    cmpwi   r3, 0x0
    ble-    branch_0x8003310c
    subi    r0, r3, 0x1
    stw     r0, 0x0(r4)
    lwz     r3, 0x2b4(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8003310c
    lwz     r3, 0x120(r30)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    lwz     r3, 0x2b4(r30)
    li      r4, 0x0
    stw     r4, 0x10(r3)
    stw     r4, 0x14(r3)
    lwz     r0, 0x50(r30)
    cmpwi   r0, 0x49
    bne-    branch_0x800330f4
    li      r4, 0x1
branch_0x800330f4:
    clrlwi. r0, r4, 24
    bne-    branch_0x8003310c
    lwz     r3, 0x2b4(r30)
    lbz     r0, 0xc(r3)
    ori     r0, r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8003310c:
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lfd     f30, 0xb8(sp)
    mtlr    r0
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    addi    sp, sp, 0xc8
    blr

