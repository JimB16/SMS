
.globl getOldMotionBlendFrame__16TMotionBlendCtrlCFv
getOldMotionBlendFrame__16TMotionBlendCtrlCFv: # 0x8023f254
    lwz     r3, 0x8(r3)
    lfs     f1, 0x60(r3)
    blr


.globl setOldMotionBlendAnmPtr__16TMotionBlendCtrlFP15J3DAnmTransform
setOldMotionBlendAnmPtr__16TMotionBlendCtrlFP15J3DAnmTransform: # 0x8023f260
    lwz     r3, 0x8(r3)
    stw     r4, 0x58(r3)
    blr


.globl getOldMotionBlendAnmPtr__16TMotionBlendCtrlCFv
getOldMotionBlendAnmPtr__16TMotionBlendCtrlCFv: # 0x8023f26c
    lwz     r3, 0x8(r3)
    lwz     r3, 0x58(r3)
    blr


.globl setNewAnm__16TMotionBlendCtrlFP15J3DAnmTransform
setNewAnm__16TMotionBlendCtrlFP15J3DAnmTransform: # 0x8023f278
    lwz     r5, 0x8(r3)
    stw     r4, 0x54(r5)
    lbz     r0, 0x0(r3)
    clrlwi. r0, r0, 31
    beqlr-    

    lfs     f0, -0x14c0(rtoc)
    lwz     r3, 0x8(r3)
    stfs    f0, 0x50(r3)
    blr


.globl keepCurAnm__16TMotionBlendCtrlFP15J3DAnmTransformf
keepCurAnm__16TMotionBlendCtrlFP15J3DAnmTransformf: # 0x8023f29c
    lwz     r5, 0x8(r3)
    stfs    f1, 0x60(r5)
    lwz     r3, 0x8(r3)
    stw     r4, 0x58(r3)
    blr


.globl setMotionBlendRatio__16TMotionBlendCtrlFf
setMotionBlendRatio__16TMotionBlendCtrlFf: # 0x8023f2b0
    lwz     r3, 0x8(r3)
    stfs    f1, 0x50(r3)
    blr


.globl getMotionBlendRatio__16TMotionBlendCtrlCFv
getMotionBlendRatio__16TMotionBlendCtrlCFv: # 0x8023f2bc
    lwz     r3, 0x8(r3)
    lfs     f1, 0x50(r3)
    blr


.globl execSimpleMotionBlend__16TMotionBlendCtrlFv
execSimpleMotionBlend__16TMotionBlendCtrlFv: # 0x8023f2c8
    lbz     r0, 0x0(r3)
    clrlwi. r0, r0, 31
    beqlr-    

    lwz     r4, 0x8(r3)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x50(r4)
    lfs     f0, -0x14bc(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8023f2fc
    fmr     f1, f0
    b       branch_0x8023f310

branch_0x8023f2fc:
    lwz     r5, 0x58(r4)
    cmplwi  r5, 0x0
    beq-    branch_0x8023f310
    lfs     f0, 0x60(r4)
    stfs    f0, 0x4(r5)
branch_0x8023f310:
    lwz     r3, 0x8(r3)
    stfs    f1, 0x50(r3)
    blr


.globl __ct__16TMotionBlendCtrlFb
__ct__16TMotionBlendCtrlFb: # 0x8023f31c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x14(sp)
    stb     r0, 0x0(r3)
    li      r3, 0x6c
    lfs     f0, -0x14bc(rtoc)
    stfs    f0, 0x4(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8023f36c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    li      r4, 0x1
    bl      __ct__24M3UMtxCalcSIAnmBlendQuatFb
branch_0x8023f36c:
    stw     r29, 0x8(r30)
    mr      r3, r30
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__16TMotionBlendCtrlFbi
__ct__16TMotionBlendCtrlFbi: # 0x8023f390
    mflr    r0
    cmpwi   r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x24(sp)
    stb     r0, 0x0(r3)
    bgt-    branch_0x8023f3cc
    lfs     f0, -0x14c0(rtoc)
    stfs    f0, 0x4(r30)
    b       branch_0x8023f3fc

branch_0x8023f3cc:
    mr      r3, r5
    bl      CLBPalFrame_i___Fi
    xoris   r0, r3, 0x8000
    lfd     f2, -0x14b8(rtoc)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x14c0(rtoc)
    stw     r0, 0x18(sp)
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f0, f1
    stfs    f0, 0x4(r30)
branch_0x8023f3fc:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8023f41c
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    li      r4, 0x1
    bl      __ct__24M3UMtxCalcSIAnmBlendQuatFb
branch_0x8023f41c:
    stw     r29, 0x8(r30)
    mr      r3, r30
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr

