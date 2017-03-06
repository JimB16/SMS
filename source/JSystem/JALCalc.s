
.globl linearTransform__7JALCalcFfffffb
linearTransform__7JALCalcFfffffb: # 0x802fcf28
    fsubs   f0, f3, f2
    clrlwi. r0, r3, 24
    fsubs   f3, f5, f4
    fsubs   f1, f1, f2
    fdivs   f0, f3, f0
    fmadds  f1, f1, f0, f4
    bnelr-    

    fcmpo   cr0, f4, f5
    bge-    branch_0x802fcf74
    fcmpo   cr0, f1, f5
    ble-    branch_0x802fcf58
    b       branch_0x802fcf6c

branch_0x802fcf58:
    fcmpo   cr0, f1, f4
    bge-    branch_0x802fcf64
    b       branch_0x802fcf68

branch_0x802fcf64:
    fmr     f4, f1
branch_0x802fcf68:
    fmr     f5, f4
branch_0x802fcf6c:
    fmr     f1, f5
    blr

branch_0x802fcf74:
    fcmpo   cr0, f1, f4
    ble-    branch_0x802fcf80
    b       branch_0x802fcf94

branch_0x802fcf80:
    fcmpo   cr0, f1, f5
    bge-    branch_0x802fcf8c
    b       branch_0x802fcf90

branch_0x802fcf8c:
    fmr     f5, f1
branch_0x802fcf90:
    fmr     f4, f5
branch_0x802fcf94:
    fmr     f1, f4
    blr


.globl getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign: # 0x802fcf9c
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    fmr     f31, f6
    stfd    f30, 0x98(sp)
    fmr     f30, f5
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    fmr     f28, f4
    bne-    branch_0x802fd010
    lfs     f4, 0x468(rtoc)
    fsubs   f0, f3, f2
    fsubs   f2, f1, f2
    fsubs   f1, f28, f4
    fdivs   f0, f1, f0
    fmadds  f1, f2, f0, f4
    bl      expf
    fmr     f29, f1
    fmr     f1, f28
    bl      expf
    lfs     f3, 0x46c(rtoc)
    fsubs   f2, f31, f30
    fsubs   f0, f1, f3
    fsubs   f1, f29, f3
    fdivs   f0, f2, f0
    fmadds  f1, f1, f0, f30
    b       branch_0x802fd0b4

branch_0x802fd010:
    cmpwi   r3, 0x0
    bne-    branch_0x802fd05c
    lfs     f4, 0x468(rtoc)
    fsubs   f0, f3, f2
    fsubs   f2, f1, f2
    fsubs   f1, f4, f28
    fdivs   f0, f1, f0
    fmadds  f1, f2, f0, f28
    bl      expf
    fmr     f29, f1
    fmr     f1, f28
    bl      expf
    lfs     f0, 0x46c(rtoc)
    fsubs   f2, f31, f30
    fsubs   f3, f29, f1
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    fmadds  f1, f3, f0, f30
    b       branch_0x802fd0b4

branch_0x802fd05c:
    fsubs   f4, f31, f30
    fsubs   f0, f3, f2
    fsubs   f1, f1, f2
    fcmpo   cr0, f30, f31
    fdivs   f0, f4, f0
    fmadds  f1, f1, f0, f30
    bge-    branch_0x802fd098
    fcmpo   cr0, f1, f31
    ble-    branch_0x802fd088
    fmr     f1, f31
    b       branch_0x802fd0b4

branch_0x802fd088:
    fcmpo   cr0, f1, f30
    bge-    branch_0x802fd0b4
    fmr     f1, f30
    b       branch_0x802fd0b4

branch_0x802fd098:
    fcmpo   cr0, f1, f30
    ble-    branch_0x802fd0a8
    fmr     f1, f30
    b       branch_0x802fd0b4

branch_0x802fd0a8:
    fcmpo   cr0, f1, f31
    bge-    branch_0x802fd0b4
    fmr     f1, f31
branch_0x802fd0b4:
    fcmpo   cr0, f1, f31
    ble-    branch_0x802fd0c4
    fmr     f1, f31
    b       branch_0x802fd0d0

branch_0x802fd0c4:
    fcmpo   cr0, f1, f30
    bge-    branch_0x802fd0d0
    fmr     f1, f30
branch_0x802fd0d0:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    addi    sp, sp, 0xa8
    blr


.globl getRandom__7JALCalcFfff
getRandom__7JALCalcFfff: # 0x802fd0f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stfd    f29, 0x28(sp)
    fmr     f29, f3
    stfd    f28, 0x20(sp)
    fmr     f28, f2
    stfd    f27, 0x18(sp)
    fmr     f27, f1
    lfs     f0, 0x46c(rtoc)
    lfs     f3, 0x470(rtoc)
    fsubs   f0, f0, f29
    lfs     f1, 0x474(rtoc)
    fmuls   f31, f3, f29
    fmuls   f30, f1, f0
    bl      getRandom_0_1__7JALCalcFv
    fcmpo   cr0, f1, f29
    bge-    branch_0x802fd148
    fmr     f0, f31
    b       branch_0x802fd14c

branch_0x802fd148:
    fmr     f0, f30
branch_0x802fd14c:
    fmuls   f27, f27, f0
    bl      getRandom_0_1__7JALCalcFv
    fmr     f2, f28
    bl      powf
    lwz     r0, 0x44(sp)
    fmuls   f1, f1, f27
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lfd     f29, 0x28(sp)
    lfd     f28, 0x20(sp)
    lfd     f27, 0x18(sp)
    addi    sp, sp, 0x40
    blr


.globl getRandom_0_1__7JALCalcFv
getRandom_0_1__7JALCalcFv: # 0x802fd184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lbz     r0, -0x5da8(r13)
    extsb.  r0, r0
    bne-    branch_0x802fd1b0
    subi    r3, r13, 0x5da4
    li      r4, 0x0
    bl      __ct__Q25JMath13TRandom_fast_FUl
    li      r0, 0x1
    stb     r0, -0x5da8(r13)
branch_0x802fd1b0:
    lis     r3, 0x19
    lwz     r4, -0x5da4(r13)
    addi    r0, r3, 0x660d
    lfs     f0, 0x46c(rtoc)
    mullw   r3, r4, r0
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5da4(r13)
    lwz     r0, -0x5da4(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x10(sp)
    lfs     f1, 0x10(sp)
    fsubs   f1, f1, f0
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getDist__7JALCalcFP3VecP3Vec
getDist__7JALCalcFP3VecP3Vec: # 0x802fd1f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    bl      getDistPow__7JALCalcFP3VecP3Vec
    lfs     f0, 0x468(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802fd260
    frsqrte f2, f1
    lfd     f4, 0x478(rtoc)
    lfd     f3, 0x480(rtoc)
    fmul    f0, f2, f2
    fmul    f2, f4, f2
    fnmsub   f0, f1, f0, f3
    fmul    f2, f2, f0
    fmul    f0, f2, f2
    fmul    f2, f4, f2
    fnmsub   f0, f1, f0, f3
    fmul    f2, f2, f0
    fmul    f0, f2, f2
    fmul    f2, f4, f2
    fnmsub   f0, f1, f0, f3
    fmul    f0, f2, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f1, 0x10(sp)
branch_0x802fd260:
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getDistPow__7JALCalcFP3VecP3Vec
getDistPow__7JALCalcFP3VecP3Vec: # 0x802fd270
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr.     r31, r4
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802fd2e8
    lfs     f1, 0x4(r30)
    lfs     f0, 0x4(r31)
    lfs     f2, 0x470(rtoc)
    fsubs   f1, f1, f0
    bl      powf
    lfs     f3, 0x0(r30)
    fmr     f31, f1
    lfs     f0, 0x0(r31)
    lfs     f2, 0x470(rtoc)
    fsubs   f1, f3, f0
    bl      powf
    lfs     f3, 0x8(r30)
    fmr     f30, f1
    lfs     f0, 0x8(r31)
    lfs     f2, 0x470(rtoc)
    fsubs   f1, f3, f0
    bl      powf
    fadds   f0, f30, f31
    fadds   f1, f1, f0
    b       branch_0x802fd324

branch_0x802fd2e8:
    lfs     f1, 0x4(r30)
    lfs     f2, 0x470(rtoc)
    bl      powf
    lfs     f0, 0x0(r30)
    fmr     f30, f1
    lfs     f2, 0x470(rtoc)
    fmr     f1, f0
    bl      powf
    lfs     f0, 0x8(r30)
    fmr     f31, f1
    lfs     f2, 0x470(rtoc)
    fmr     f1, f0
    bl      powf
    fadds   f0, f31, f30
    fadds   f1, f1, f0
branch_0x802fd324:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x40
    blr

