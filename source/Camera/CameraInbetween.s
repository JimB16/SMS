
.globl execCameraInbetween__16TCameraInbetweenFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
execCameraInbetween__16TCameraInbetweenFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8002682c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r6
    stw     r30, 0x40(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x3c(sp)
    mr      r29, r4
    stw     r28, 0x38(sp)
    addi    r28, r3, 0x0
    lfs     f0, 0x0(r4)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x2c(r3)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80026b88
    xoris   r0, r0, 0x8000
    lfs     f1, -0x78d0(r2)
    stw     r0, 0x34(sp)
    lis     r0, 0x4330
    lfs     f0, 0x44(r28)
    stw     r0, 0x30(sp)
    fcmpu   cr0, f1, f0
    lfd     f1, -0x78d8(r2)
    lfd     f0, 0x30(sp)
    fsubs   f31, f0, f1
    beq-    branch_0x800268cc
    li      r0, 0x1
    b       branch_0x800268d0

branch_0x800268cc:
    li      r0, 0x0
branch_0x800268d0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800268e8
    fmr     f2, f31
    lfs     f1, -0x78d0(r2)
    addi    r3, r28, 0x44
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
branch_0x800268e8:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, sp, 0x28
    addi    r6, sp, 0x26
    addi    r7, sp, 0x24
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    fmr     f2, f31
    lfs     f1, 0x28(sp)
    addi    r3, r28, 0x10
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lfs     f0, -0x78cc(r2)
    lha     r4, 0x26(sp)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80026928
    sth     r4, 0x14(r28)
    b       branch_0x8002696c

branch_0x80026928:
    lfs     f0, -0x78e0(r2)
    lis     r0, 0x4330
    lha     r3, 0x14(r28)
    fdivs   f2, f0, f31
    lfd     f1, -0x78d8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x14(r28)
    add     r0, r0, r3
    sth     r0, 0x14(r28)
branch_0x8002696c:
    lfs     f0, -0x78cc(r2)
    lha     r4, 0x24(sp)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80026984
    sth     r4, 0x16(r28)
    b       branch_0x800269c8

branch_0x80026984:
    lfs     f0, -0x78e0(r2)
    lis     r0, 0x4330
    lha     r3, 0x16(r28)
    fdivs   f2, f0, f31
    lfd     f1, -0x78d8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0x16(r28)
    add     r0, r0, r3
    sth     r0, 0x16(r28)
branch_0x800269c8:
    lfs     f2, 0x0(r31)
    lfs     f1, 0x0(r30)
    lfs     f0, -0x78d0(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800269e8
    b       branch_0x800269ec

branch_0x800269e8:
    fneg    f1, f1
branch_0x800269ec:
    lfs     f0, -0x78c8(r2)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x80026a28
    lfs     f2, 0x8(r31)
    lfs     f1, 0x8(r30)
    lfs     f0, -0x78d0(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80026a18
    b       branch_0x80026a1c

branch_0x80026a18:
    fneg    f1, f1
branch_0x80026a1c:
    lfs     f0, -0x78c8(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80026a50
branch_0x80026a28:
    lfs     f1, 0x10(r28)
    mr      r3, r31
    lha     r5, 0x14(r28)
    addi    r4, sp, 0x18
    lha     r6, 0x16(r28)
    bl      CLBPolarToCross__FRC3VecP3Vecfss
    lfs     f0, 0x18(sp)
    stfs    f0, 0x24(r28)
    lfs     f0, 0x20(sp)
    stfs    f0, 0x2c(r28)
branch_0x80026a50:
    addi    r4, r29, 0x0
    addi    r3, r28, 0x24
    addi    r5, sp, 0x28
    addi    r6, sp, 0x26
    addi    r7, sp, 0x24
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    fmr     f2, f31
    lfs     f1, 0x28(sp)
    addi    r3, r28, 0x8
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lfs     f0, -0x78cc(r2)
    lha     r4, 0x26(sp)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80026a90
    sth     r4, 0xc(r28)
    b       branch_0x80026ad4

branch_0x80026a90:
    lfs     f0, -0x78e0(r2)
    lis     r0, 0x4330
    lha     r3, 0xc(r28)
    fdivs   f2, f0, f31
    lfd     f1, -0x78d8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0xc(r28)
    add     r0, r0, r3
    sth     r0, 0xc(r28)
branch_0x80026ad4:
    lwz     r0, 0x3c(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80026b40
    lfs     f0, -0x78cc(r2)
    lha     r4, 0x24(sp)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80026af8
    sth     r4, 0xe(r28)
    b       branch_0x80026b50

branch_0x80026af8:
    lfs     f0, -0x78e0(r2)
    lis     r0, 0x4330
    lha     r3, 0xe(r28)
    fdivs   f2, f0, f31
    lfd     f1, -0x78d8(r2)
    subf    r3, r3, r4
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      CLBRoundf_s___Ff
    lha     r0, 0xe(r28)
    add     r0, r0, r3
    sth     r0, 0xe(r28)
    b       branch_0x80026b50

branch_0x80026b40:
    lha     r3, 0xe(r28)
    lwz     r0, 0x40(r28)
    add     r0, r3, r0
    sth     r0, 0xe(r28)
branch_0x80026b50:
    lfs     f1, 0x8(r28)
    addi    r3, r28, 0x24
    lha     r5, 0xc(r28)
    addi    r4, r28, 0x18
    lha     r6, 0xe(r28)
    bl      CLBPolarToCross__FRC3VecP3Vecfss
    lwz     r3, 0x4(r28)
    addi    r0, r3, -0x1
    stw     r0, 0x4(r28)
    lwz     r0, 0x4(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80026b88
    li      r0, 0x0
    stw     r0, 0x3c(r28)
branch_0x80026b88:
    lfs     f0, 0x0(r31)
    stfs    f0, 0x30(r28)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x34(r28)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x38(r28)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl initCameraInbetween__16TCameraInbetweenFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
initCameraInbetween__16TCameraInbetweenFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x80026bc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x24
    lfs     f0, 0x0(r4)
    addi    r7, r31, 0xe
    stfs    f0, 0x18(r31)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x8(r4)
    addi    r4, r31, 0x18
    stfs    f0, 0x20(r31)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x8(r5)
    addi    r5, r31, 0x8
    stfs    f0, 0x2c(r31)
    lfs     f0, 0x0(r6)
    stfs    f0, 0x30(r31)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x34(r31)
    lfs     f0, 0x8(r6)
    addi    r6, r31, 0xc
    stfs    f0, 0x38(r31)
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    addi    r3, r31, 0x30
    addi    r4, r31, 0x24
    addi    r5, r31, 0x10
    addi    r6, r31, 0x14
    addi    r7, r31, 0x16
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl startCameraInbetween__16TCameraInbetweenFi
startCameraInbetween__16TCameraInbetweenFi: # 0x80026c64
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r5, r31, 0x8
    stw     r4, 0x4(r3)
    addi    r3, r31, 0x24
    addi    r6, r31, 0xc
    stw     r4, 0x0(r31)
    addi    r4, r31, 0x18
    addi    r7, r31, 0xe
    stw     r0, 0x3c(r31)
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    addi    r3, r31, 0x30
    addi    r4, r31, 0x24
    addi    r5, r31, 0x10
    addi    r6, r31, 0x14
    addi    r7, r31, 0x16
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl addMoveCameraAndMario__16TCameraInbetweenFRC3Vec
addMoveCameraAndMario__16TCameraInbetweenFRC3Vec: # 0x80026ccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, r31, 0x8
    lfs     f1, 0x18(r3)
    addi    r3, r31, 0x24
    lfs     f0, 0x0(r4)
    addi    r6, r31, 0xc
    lfs     f2, 0x4(r4)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r4)
    addi    r7, r31, 0xe
    stfs    f0, 0x18(r31)
    lfs     f0, 0x1c(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x20(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x20(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, 0x0(r4)
    lfs     f2, 0x4(r4)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r4)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x28(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x28(r31)
    lfs     f0, 0x2c(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x2c(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x0(r4)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    fadds   f0, f1, f0
    addi    r4, r31, 0x18
    stfs    f0, 0x30(r31)
    lfs     f0, 0x34(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x34(r31)
    lfs     f0, 0x38(r31)
    fadds   f0, f0, f3
    stfs    f0, 0x38(r31)
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    addi    r3, r31, 0x30
    addi    r4, r31, 0x24
    addi    r5, r31, 0x10
    addi    r6, r31, 0x14
    addi    r7, r31, 0x16
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl warpPosAndAt__16TCameraInbetweenFRC3VecRC3Vec
warpPosAndAt__16TCameraInbetweenFRC3VecRC3Vec: # 0x80026db4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x24
    lfs     f0, 0x0(r4)
    addi    r6, r31, 0xc
    addi    r7, r31, 0xe
    stfs    f0, 0x18(r31)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x8(r4)
    addi    r4, r31, 0x18
    stfs    f0, 0x20(r31)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x8(r5)
    addi    r5, r31, 0x8
    stfs    f0, 0x2c(r31)
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    addi    r3, r31, 0x30
    addi    r4, r31, 0x24
    addi    r5, r31, 0x10
    addi    r6, r31, 0x14
    addi    r7, r31, 0x16
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__16TCameraInbetweenFv
__ct__16TCameraInbetweenFv: # 0x80026e3c
    li      r0, 0x1
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    lfs     f0, -0x78d0(r2)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x30(r3)
    stfs    f0, 0x34(r3)
    stfs    f0, 0x38(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r3)
    stfs    f0, 0x44(r3)
    blr


.globl CLBChaseConstantSpecifyFrame_f___FPfff
CLBChaseConstantSpecifyFrame_f___FPfff: # 0x80026e84
    lfs     f0, -0x78cc(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80026e98
    stfs    f1, 0x0(r3)
    blr

branch_0x80026e98:
    lfs     f0, -0x78e0(r2)
    lfs     f3, 0x0(r3)
    fdivs   f2, f0, f2
    fsubs   f0, f1, f3
    fmadds  f0, f2, f0, f3
    stfs    f0, 0x0(r3)
    blr

