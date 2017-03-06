
.globl moveToDown__13TCameraOptionFv
moveToDown__13TCameraOptionFv: # 0x800320ac
    lwz     r4, 0x3c(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x28(r3)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x8(r4)
    lha     r0, 0x14(r3)
    sth     r0, 0x16(r3)
    blr


.globl moveToUp__13TCameraOptionFv
moveToUp__13TCameraOptionFv: # 0x800320d4
    lwz     r4, 0x3c(r3)
    lfs     f0, 0x30(r3)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x38(r3)
    stfs    f0, 0x8(r4)
    lha     r0, 0x14(r3)
    sth     r0, 0x16(r3)
    blr


.globl moveToLoadFromTitle__13TCameraOptionFv
moveToLoadFromTitle__13TCameraOptionFv: # 0x800320fc
    lwz     r4, 0x3c(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x28(r3)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x8(r4)
    lha     r0, 0xc(r3)
    sth     r0, 0xe(r3)
    lbz     r0, 0x0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x0(r3)
    blr


.globl __ct__13TCameraOptionFQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
__ct__13TCameraOptionFQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x80032130
    mflr    r0
    li      r8, 0x12c
    stw     r0, 0x4(sp)
    li      r0, 0x2
    li      r7, 0x78
    stwu    sp, -0x38(sp)
    li      r6, 0x0
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x28(sp)
    mr      r28, r4
    stb     r0, 0x0(r3)
    li      r3, 0x50
    li      r0, 0x3c
    lfs     f0, -0x7590(rtoc)
    stfs    f0, 0x4(r31)
    sth     r8, 0x8(r31)
    sth     r8, 0xa(r31)
    sth     r7, 0xc(r31)
    sth     r6, 0xe(r31)
    sth     r3, 0x10(r31)
    sth     r6, 0x12(r31)
    sth     r0, 0x14(r31)
    sth     r6, 0x16(r31)
    lfs     f0, -0x758c(rtoc)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x1c(r31)
    stfs    f0, 0x20(r31)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r29, 0x3c(r31)
    lfs     f1, -0x7588(rtoc)
    bl      CLBRoundf_s___Ff
    lfs     f1, -0x7584(rtoc)
    mr      r30, r3
    bl      CLBRoundf_s___Ff
    lfs     f1, -0x7580(rtoc)
    addi    r5, r3, 0x0
    addi    r3, r28, 0x0
    addi    r6, r30, 0x0
    addi    r4, r31, 0x18
    bl      CLBPolarToCross__FRC3VecP3Vecfss
    lfs     f0, 0x18(r31)
    stfs    f0, 0x0(r29)
    lfs     f0, 0x1c(r31)
    stfs    f0, 0x4(r29)
    lfs     f0, 0x20(r31)
    stfs    f0, 0x8(r29)
    lwz     r30, -0x7f88(r13)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, -0x70c0(r13)
    mr      r5, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr.     r30, r3
    beq-    branch_0x80032280
    addi    r3, r30, 0x0
    addi    r4, sp, 0x18
    addi    r5, r31, 0x24
    bl      calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lfs     f1, 0x1c(r30)
    lfs     f0, -0x757c(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f1, -0x7578(rtoc)
    mr      r30, r3
    bl      CLBRoundf_s___Ff
    lfs     f1, -0x7580(rtoc)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x0
    addi    r3, sp, 0x18
    addi    r4, r31, 0x30
    bl      CLBPolarToCross__FRC3VecP3Vecfss
branch_0x80032280:
    lwz     r0, 0x3c(sp)
    mr      r3, r31
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl ctrlOptionCamera___15CPolarSubCameraFv
ctrlOptionCamera___15CPolarSubCameraFv: # 0x800322a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    lwz     r4, -0x70b8(r13)
    lha     r3, 0xa(r4)
    extsh.  r0, r3
    ble-    branch_0x8003235c
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7570(rtoc)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f1, 0x80(r31)
    addi    r3, r31, 0x10
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f31, f0, f2
    fmr     f2, f31
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x84(r31)
    addi    r3, r31, 0x14
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x88(r31)
    addi    r3, r31, 0x18
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x8c(r31)
    addi    r3, r31, 0x3c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x90(r31)
    addi    r3, r31, 0x40
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x94(r31)
    addi    r3, r31, 0x44
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lwz     r4, -0x70b8(r13)
    lha     r3, 0xa(r4)
    subi    r0, r3, 0x1
    sth     r0, 0xa(r4)
    b       branch_0x800325d8

branch_0x8003235c:
    lha     r3, 0xe(r4)
    extsh.  r0, r3
    ble-    branch_0x800323f8
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7570(rtoc)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f1, 0x80(r31)
    addi    r3, r31, 0x10
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f31, f0, f2
    fmr     f2, f31
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x84(r31)
    addi    r3, r31, 0x14
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x88(r31)
    addi    r3, r31, 0x18
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x8c(r31)
    addi    r3, r31, 0x3c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x90(r31)
    addi    r3, r31, 0x40
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x94(r31)
    addi    r3, r31, 0x44
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lwz     r4, -0x70b8(r13)
    lha     r3, 0xe(r4)
    subi    r0, r3, 0x1
    sth     r0, 0xe(r4)
    b       branch_0x800325d8

branch_0x800323f8:
    lbz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x800325d8
    lwz     r6, -0x60b4(r13)
    addi    r4, sp, 0x48
    lfs     f0, -0x7574(rtoc)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    lwz     r3, -0x70f0(r13)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x50(sp)
    lfs     f1, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, 0x0
    blt-    branch_0x800324a0
    lwz     r4, -0x70f0(r13)
    slwi    r0, r3, 2
    lwz     r3, 0x14(r4)
    lwz     r3, 0x10(r3)
    lwzx    r3, r3, r0
    lwz     r6, 0x38(r3)
    cmplwi  r6, 0x0
    beq-    branch_0x800324a0
    lwz     r0, 0x70(r31)
    cmplw   r6, r0
    beq-    branch_0x800324a0
    lwz     r3, -0x70b8(r13)
    addi    r4, r31, 0x80
    addi    r5, r31, 0x8c
    lbz     r0, 0x0(r3)
    xori     r0, r0, 0x1
    stb     r0, 0x0(r3)
    stw     r6, 0x70(r31)
    lwz     r3, 0x70(r31)
    bl      calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lwz     r3, -0x70b8(r13)
    lha     r0, 0x10(r3)
    sth     r0, 0x12(r3)
branch_0x800324a0:
    lwz     r4, -0x70b8(r13)
    lha     r3, 0x12(r4)
    extsh.  r0, r3
    ble-    branch_0x80032540
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7570(rtoc)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f1, 0x80(r31)
    addi    r3, r31, 0x10
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f31, f0, f2
    fmr     f2, f31
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x84(r31)
    addi    r3, r31, 0x14
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x88(r31)
    addi    r3, r31, 0x18
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x8c(r31)
    addi    r3, r31, 0x3c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x90(r31)
    addi    r3, r31, 0x40
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x94(r31)
    addi    r3, r31, 0x44
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lwz     r4, -0x70b8(r13)
    lha     r3, 0x12(r4)
    subi    r0, r3, 0x1
    sth     r0, 0x12(r4)
    b       branch_0x800325d8

branch_0x80032540:
    lha     r3, 0x16(r4)
    extsh.  r0, r3
    ble-    branch_0x800325d8
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7570(rtoc)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f1, 0x80(r31)
    addi    r3, r31, 0x10
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f31, f0, f2
    fmr     f2, f31
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x84(r31)
    addi    r3, r31, 0x14
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x88(r31)
    addi    r3, r31, 0x18
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x8c(r31)
    addi    r3, r31, 0x3c
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x90(r31)
    addi    r3, r31, 0x40
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    fmr     f2, f31
    lfs     f1, 0x94(r31)
    addi    r3, r31, 0x44
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lwz     r4, -0x70b8(r13)
    lha     r3, 0x16(r4)
    subi    r0, r3, 0x1
    sth     r0, 0x16(r4)
branch_0x800325d8:
    lfs     f0, 0x10(r31)
    stfs    f0, 0x124(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x128(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x12c(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x148(r31)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x150(r31)
    lwz     r3, -0x70b8(r13)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x48(r31)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr

