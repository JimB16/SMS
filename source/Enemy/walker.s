
.globl setMode__7TWalkerFi
setMode__7TWalkerFi: # 0x8006fa38
    mflr    r0
    stw     r0, 0x4(sp)
    extsh   r0, r4
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    sth     r0, 0x28(r3)
    lha     r0, 0x28(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8006fa8c
    lwz     r0, 0x2c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8006fa8c
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8006fa88
    mr      r3, r30
    bl      __ct__7TSpiderFv
branch_0x8006fa88:
    stw     r30, 0x2c(r31)
branch_0x8006fa8c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl bind__7TWalkerFP10TLiveActor
bind__7TWalkerFP10TLiveActor: # 0x8006faa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x360(sp)
    stfd    f31, 0x358(sp)
    stw     r31, 0x354(sp)
    stw     r30, 0x350(sp)
    stw     r29, 0x34c(sp)
    stw     r28, 0x348(sp)
    mr      r28, r3
    lha     r0, 0x28(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8006faf4
    lwz     r3, 0x2c(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x8006faf4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x800706e4

branch_0x8006faf4:
    mr      r30, r4
    lwz     r3, 0x94(r4)
    lwz     r0, 0x98(r30)
    li      r4, 0x0
    stw     r3, 0x33c(sp)
    stw     r0, 0x340(sp)
    lwz     r0, 0x9c(r30)
    stw     r0, 0x344(sp)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    lfs     f1, 0x33c(sp)
    stw     r3, 0x330(sp)
    lfs     f0, 0x340(sp)
    stw     r0, 0x334(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x338(sp)
    lfs     f2, 0x330(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x330(sp)
    lfs     f1, 0x334(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x334(sp)
    lfs     f1, 0x338(sp)
    lfs     f0, 0x344(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x338(sp)
    stw     r4, 0x1c(r28)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006fb70
    li      r4, 0x1
branch_0x8006fb70:
    cmpwi   r4, 0x0
    beq-    branch_0x8006fc0c
    lwz     r4, 0xac(r30)
    mr      r3, r30
    lwz     r0, 0xb0(r30)
    lfs     f1, 0x330(sp)
    stw     r4, 0x324(sp)
    stw     r0, 0x328(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x32c(sp)
    lfs     f0, 0x324(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x330(sp)
    lfs     f1, 0x334(sp)
    lfs     f0, 0x328(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x334(sp)
    lfs     f1, 0x338(sp)
    lfs     f0, 0x32c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x338(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x328(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x328(sp)
    lfs     f0, 0x328(sp)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8006fbf4
    stfs    f1, 0x328(sp)
branch_0x8006fbf4:
    lwz     r3, 0x324(sp)
    lwz     r0, 0x328(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x32c(sp)
    stw     r0, 0xb4(r30)
branch_0x8006fc0c:
    lbz     r0, 0x30(r28)
    extsb.  r0, r0
    bne-    branch_0x8006fc40
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f0, -0x6b10(r2)
    stw     r3, 0x29c(sp)
    stw     r0, 0x2a0(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x2a4(sp)
    lfs     f1, 0x2a0(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8006fec4
branch_0x8006fc40:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x8006fc7c
    lfs     f2, 0x148(r30)
    addi    r4, sp, 0x320
    lfs     f1, 0xc0(r30)
    lfs     f0, 0x334(sp)
    fmuls   f2, f2, f1
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x330(sp)
    lfs     f3, 0x338(sp)
    fadds   f2, f0, f2
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    fmr     f31, f1
    b       branch_0x8006fca8

branch_0x8006fc7c:
    lfs     f2, 0x148(r30)
    addi    r4, sp, 0x320
    lfs     f1, 0xc0(r30)
    lfs     f0, 0x334(sp)
    fmuls   f2, f2, f1
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x330(sp)
    lfs     f3, 0x338(sp)
    fadds   f2, f0, f2
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f31, f1
branch_0x8006fca8:
    lbz     r0, 0x30(r28)
    lfs     f0, -0x6b0c(r2)
    cmpwi   r0, 0x2
    fadds   f31, f31, f0
    bne-    branch_0x8006fd94
    lfs     f2, 0x14(r30)
    lfs     f1, 0x334(sp)
    lfs     f0, -0x6b10(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8006fd94
    lwz     r3, 0x320(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8006fcec
    li      r0, 0x1
    b       branch_0x8006fcf0

branch_0x8006fcec:
    li      r0, 0x0
branch_0x8006fcf0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006fd94
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x801
    beq-    branch_0x8006fd0c
    cmplwi  r0, 0x402
    bne-    branch_0x8006fd14
branch_0x8006fd0c:
    li      r0, 0x1
    b       branch_0x8006fd18

branch_0x8006fd14:
    li      r0, 0x0
branch_0x8006fd18:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006fd94
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x8006fd54
    lfs     f1, 0x148(r30)
    addi    r4, sp, 0x31c
    lfs     f0, 0xc0(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fmuls   f0, f1, f0
    lfs     f1, 0x330(sp)
    lfs     f3, 0x338(sp)
    fadds   f2, f2, f0
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    b       branch_0x8006fd78

branch_0x8006fd54:
    lfs     f1, 0x148(r30)
    addi    r4, sp, 0x31c
    lfs     f0, 0xc0(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fmuls   f0, f1, f0
    lfs     f1, 0x330(sp)
    lfs     f3, 0x338(sp)
    fadds   f2, f2, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
branch_0x8006fd78:
    lfs     f0, -0x6b0c(r2)
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f31
    ble-    branch_0x8006fd94
    lwz     r0, 0x31c(sp)
    fmr     f31, f1
    stw     r0, 0x320(sp)
branch_0x8006fd94:
    lwz     r3, 0x320(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8006fdac
    li      r0, 0x1
    b       branch_0x8006fdb0

branch_0x8006fdac:
    li      r0, 0x0
branch_0x8006fdb0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006fdf8
    lwz     r0, 0x20(r28)
    cmpwi   r0, 0x0
    bgt-    branch_0x8006fddc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x800706e4

branch_0x8006fddc:
    lfs     f0, 0x14(r30)
    stfs    f0, 0x334(sp)
    lwz     r3, 0x20(r28)
    lfs     f31, 0x334(sp)
    addi    r0, r3, -0x1
    stw     r0, 0x20(r28)
    b       branch_0x8006fe00

branch_0x8006fdf8:
    li      r0, 0x1e
    stw     r0, 0x20(r28)
branch_0x8006fe00:
    lfs     f0, -0x6b08(r2)
    lfs     f1, 0x334(sp)
    fadds   f0, f0, f31
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8006feac
    lwz     r3, 0x320(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8006fe30
    li      r0, 0x1
    b       branch_0x8006fe34

branch_0x8006fe30:
    li      r0, 0x0
branch_0x8006fe34:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006feac
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x801
    beq-    branch_0x8006fe50
    cmplwi  r0, 0x402
    bne-    branch_0x8006fe58
branch_0x8006fe50:
    li      r0, 0x1
    b       branch_0x8006fe5c

branch_0x8006fe58:
    li      r0, 0x0
branch_0x8006fe5c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006feac
    stfs    f31, 0x334(sp)
    lfs     f0, -0x6b10(r2)
    stfs    f0, 0x290(sp)
    stfs    f0, 0x294(sp)
    stfs    f0, 0x298(sp)
    lwz     r3, 0x290(sp)
    lwz     r0, 0x294(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x298(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0xf0(r30)
    b       branch_0x8006feb8

branch_0x8006feac:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x8006feb8:
    stfs    f31, 0xc8(r30)
    lwz     r0, 0x320(sp)
    stw     r0, 0xc4(r30)
branch_0x8006fec4:
    lfs     f3, 0x148(r30)
    li      r0, 0x4
    lfs     f0, 0xc0(r30)
    li      r31, 0x0
    lfs     f2, 0x14c(r30)
    fmuls   f1, f3, f0
    lfs     f31, 0x334(sp)
    lfs     f0, 0x330(sp)
    fmuls   f2, f3, f2
    addi    r4, sp, 0x2f0
    fadds   f1, f31, f1
    stfs    f0, 0x2f0(sp)
    stfs    f1, 0x2f4(sp)
    lfs     f0, 0x338(sp)
    stfs    f0, 0x2f8(sp)
    stfs    f2, 0x2fc(sp)
    lwz     r3, R13Off_m0x6328(r13)
    stw     r0, 0x300(sp)
    stw     r31, 0x308(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    bne-    branch_0x8006ff30
    stw     r31, 0x8(r28)
    stw     r31, 0x14(r28)
    stw     r31, 0x24(r28)
    stw     r31, 0x138(r30)
    b       branch_0x80070698

branch_0x8006ff30:
    lwz     r8, 0x304(sp)
    addi    r5, sp, 0x2f0
    li      r29, 0x0
    li      r9, 0x0
    b       branch_0x8006ffac

branch_0x8006ff44:
    lwz     r3, 0x8(r28)
    addi    r0, r31, 0x1c
    lwzx    r7, r5, r0
    li      r6, 0x0
    cmpwi   r3, 0x0
    mtctr   r3
    addi    r3, r3, -0x1
    ble-    branch_0x8006ff8c
branch_0x8006ff64:
    subf    r0, r6, r3
    lwz     r4, 0xc(r28)
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    cmplw   r0, r7
    bne-    branch_0x8006ff84
    li      r0, 0x1
    b       branch_0x8006ff90

branch_0x8006ff84:
    addi    r6, r6, 0x1
    bdnz+      branch_0x8006ff64
branch_0x8006ff8c:
    li      r0, 0x0
branch_0x8006ff90:
    cmpwi   r0, 0x0
    bne-    branch_0x8006ffa4
    addi    r3, sp, 0x30c
    lwzx    r29, r3, r31
    b       branch_0x8006ffb4

branch_0x8006ffa4:
    addi    r9, r9, 0x1
    addi    r31, r31, 0x4
branch_0x8006ffac:
    cmpw    r9, r8
    blt+    branch_0x8006ff44
branch_0x8006ffb4:
    cmplwi  r29, 0x0
    bne-    branch_0x8006ffcc
    lwz     r3, 0x24(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x24(r28)
    b       branch_0x80070698

branch_0x8006ffcc:
    stw     r29, 0x138(r30)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006ffe4
    li      r0, 0x1
    b       branch_0x8006ffe8

branch_0x8006ffe4:
    li      r0, 0x0
branch_0x8006ffe8:
    cmpwi   r0, 0x0
    bne-    branch_0x80070040
    lfs     f1, 0xc(r29)
    lfs     f0, 0x18(r28)
    fsubs   f1, f1, f31
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80070040
    lhz     r0, 0x0(r29)
    cmplwi  r0, 0x104
    beq-    branch_0x80070024
    cmplwi  r0, 0x105
    beq-    branch_0x80070024
    cmplwi  r0, 0x4104
    bne-    branch_0x8007002c
branch_0x80070024:
    li      r0, 0x1
    b       branch_0x80070030

branch_0x8007002c:
    li      r0, 0x0
branch_0x80070030:
    clrlwi. r0, r0, 24
    beq-    branch_0x80070040
    li      r0, 0x1
    stw     r0, 0x1c(r28)
branch_0x80070040:
    lwz     r4, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r4, r0
    bge-    branch_0x80070068
    lwz     r3, 0xc(r28)
    slwi    r0, r4, 2
    stwx    r29, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x80070068:
    lwz     r3, 0x34(r29)
    lwz     r0, 0x38(r29)
    lfs     f4, -0x6b10(r2)
    stw     r3, 0x2e4(sp)
    lfs     f2, -0x6b0c(r2)
    stw     r0, 0x2e8(sp)
    lwz     r0, 0x3c(r29)
    stw     r0, 0x2ec(sp)
    lfs     f1, 0x2e8(sp)
    lfs     f0, 0x2e4(sp)
    fmuls   f5, f1, f4
    lfs     f3, 0x2ec(sp)
    fmuls   f0, f0, f4
    fnmsubs  f1, f3, f2, f5
    fmsubs  f0, f3, f4, f0
    stfs    f1, 0x2cc(sp)
    stfs    f0, 0x2d0(sp)
    lfs     f0, 0x2e4(sp)
    fmsubs  f0, f0, f2, f5
    stfs    f0, 0x2d4(sp)
    stfs    f4, 0x2d0(sp)
    lfs     f1, 0x2cc(sp)
    lfs     f0, 0x2d0(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x2d4(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6b04(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800700fc
    stfs    f4, 0x2d4(sp)
    stfs    f4, 0x2d0(sp)
    stfs    f4, 0x2cc(sp)
    b       branch_0x8007012c

branch_0x800700fc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x6b0c(r2)
    lfs     f0, 0x2cc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x2cc(sp)
    lfs     f0, 0x2d0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2d0(sp)
    lfs     f0, 0x2d4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2d4(sp)
branch_0x8007012c:
    lwz     r0, 0x14(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x800703b8
    lwz     r0, 0x33c(sp)
    addi    r31, sp, 0x2c8
    lwz     r3, 0x340(sp)
    stw     r0, 0x2c0(sp)
    lwz     r0, 0x344(sp)
    stw     r3, 0x2c4(sp)
    lfs     f4, -0x6b10(r2)
    stw     r0, 0x2c8(sp)
    stfs    f4, 0x2c4(sp)
    lfs     f1, 0x2c4(sp)
    lfs     f0, 0x2d0(sp)
    lfs     f2, 0x2c0(sp)
    fmuls   f0, f1, f0
    lfs     f5, 0x2cc(sp)
    lfs     f3, 0x2c8(sp)
    lfs     f1, 0x2d4(sp)
    fmadds  f0, f2, f5, f0
    fmadds  f0, f3, f1, f0
    fcmpo   cr0, f0, f4
    ble-    branch_0x80070194
    li      r0, 0x2
    stw     r0, 0x14(r28)
    b       branch_0x800701bc

branch_0x80070194:
    fneg    f0, f5
    li      r0, 0x1
    stfs    f0, 0x2cc(sp)
    lfs     f0, 0x2d0(sp)
    fneg    f0, f0
    stfs    f0, 0x2d0(sp)
    lfs     f0, 0x2d4(sp)
    fneg    f0, f0
    stfs    f0, 0x2d4(sp)
    stw     r0, 0x14(r28)
branch_0x800701bc:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x10
    addi    r5, sp, 0x2cc
    bl      calcFarthestVertex__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f2, 0x148(r30)
    addi    r3, sp, 0x13c
    lfs     f0, 0x14c(r30)
    lwz     r0, 0x2cc(sp)
    fmuls   f0, f2, f0
    lfs     f2, -0x6b00(r2)
    stw     r0, 0x13c(sp)
    lwz     r0, 0x2d0(sp)
    fmadds  f1, f2, f0, f1
    stw     r0, 0x140(sp)
    lwz     r0, 0x2d4(sp)
    stw     r0, 0x144(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x13c(sp)
    addi    r3, sp, 0x180
    lwz     r5, 0x140(sp)
    addi    r4, sp, 0x278
    stw     r0, 0x278(sp)
    lwz     r0, 0x144(sp)
    stw     r5, 0x27c(sp)
    stw     r0, 0x280(sp)
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r5, 0x180(sp)
    stw     r0, 0x184(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x188(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x180(sp)
    mr      r5, r31
    lwz     r3, 0x184(sp)
    addi    r4, sp, 0x2c0
    stw     r0, 0x2c0(sp)
    lwz     r0, 0x188(sp)
    stw     r3, 0x2c4(sp)
    lwz     r3, R13Off_m0x6328(r13)
    stw     r0, 0x2c8(sp)
    lfs     f3, 0x148(r30)
    lfs     f1, 0xc0(r30)
    lfs     f0, 0x14c(r30)
    fmuls   f1, f3, f1
    fmuls   f2, f3, f0
    lfs     f0, 0x2c4(sp)
    fadds   f1, f0, f1
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    beq-    branch_0x800703e4
    lwz     r0, 0x2cc(sp)
    mr      r3, r29
    lwz     r4, 0x2d0(sp)
    addi    r5, sp, 0x2b4
    stw     r0, 0x2b4(sp)
    lwz     r0, 0x2d4(sp)
    stw     r4, 0x2b8(sp)
    addi    r4, r30, 0x10
    stw     r0, 0x2bc(sp)
    lfs     f0, 0x2b4(sp)
    fneg    f0, f0
    stfs    f0, 0x2b4(sp)
    lfs     f0, 0x2b8(sp)
    fneg    f0, f0
    stfs    f0, 0x2b8(sp)
    lfs     f0, 0x2bc(sp)
    fneg    f0, f0
    stfs    f0, 0x2bc(sp)
    bl      calcFarthestVertex__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f2, 0x148(r30)
    addi    r3, sp, 0x130
    lfs     f0, 0x14c(r30)
    lwz     r0, 0x2b4(sp)
    fmuls   f0, f2, f0
    lfs     f2, -0x6b00(r2)
    stw     r0, 0x130(sp)
    lwz     r0, 0x2b8(sp)
    fmadds  f1, f2, f0, f1
    stw     r0, 0x134(sp)
    lwz     r0, 0x2bc(sp)
    stw     r0, 0x138(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x130(sp)
    addi    r3, sp, 0x174
    lwz     r5, 0x134(sp)
    addi    r4, sp, 0x260
    stw     r0, 0x260(sp)
    lwz     r0, 0x138(sp)
    stw     r5, 0x264(sp)
    stw     r0, 0x268(sp)
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r5, 0x174(sp)
    stw     r0, 0x178(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x17c(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x174(sp)
    mr      r5, r31
    lwz     r3, 0x178(sp)
    addi    r4, sp, 0x2c0
    stw     r0, 0x2c0(sp)
    lwz     r0, 0x17c(sp)
    stw     r3, 0x2c4(sp)
    lwz     r3, R13Off_m0x6328(r13)
    stw     r0, 0x2c8(sp)
    lfs     f3, 0x148(r30)
    lfs     f1, 0xc0(r30)
    lfs     f0, 0x14c(r30)
    fmuls   f1, f3, f1
    fmuls   f2, f3, f0
    lfs     f0, 0x2c4(sp)
    fadds   f1, f0, f1
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    bne-    branch_0x800703e4
    lfs     f0, 0x2cc(sp)
    fneg    f0, f0
    stfs    f0, 0x2cc(sp)
    lfs     f0, 0x2d0(sp)
    fneg    f0, f0
    stfs    f0, 0x2d0(sp)
    lfs     f0, 0x2d4(sp)
    fneg    f0, f0
    stfs    f0, 0x2d4(sp)
    b       branch_0x800703e4

branch_0x800703b8:
    cmpwi   r0, 0x1
    bne-    branch_0x800703e4
    lfs     f0, 0x2cc(sp)
    fneg    f0, f0
    stfs    f0, 0x2cc(sp)
    lfs     f0, 0x2d0(sp)
    fneg    f0, f0
    stfs    f0, 0x2d0(sp)
    lfs     f0, 0x2d4(sp)
    fneg    f0, f0
    stfs    f0, 0x2d4(sp)
branch_0x800703e4:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x10
    addi    r5, sp, 0x2cc
    bl      calcFarthestVertex__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f2, 0x148(r30)
    lfs     f0, 0x14c(r30)
    lwz     r0, 0x118(r30)
    fmuls   f0, f2, f0
    lfs     f2, -0x6b00(r2)
    cmpwi   r0, 0x0
    fmadds  f1, f2, f0, f1
    bne-    branch_0x8007057c
    lwz     r0, 0x2cc(sp)
    addi    r3, sp, 0x124
    lwz     r4, 0x2d0(sp)
    stw     r0, 0x124(sp)
    lwz     r0, 0x2d4(sp)
    stw     r4, 0x128(sp)
    stw     r0, 0x12c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x124(sp)
    addi    r3, sp, 0x118
    lwz     r4, 0x128(sp)
    stw     r0, 0x230(sp)
    lwz     r0, 0x12c(sp)
    stw     r4, 0x234(sp)
    lwz     r5, 0x2e4(sp)
    stw     r0, 0x238(sp)
    lwz     r4, 0x2e8(sp)
    lfs     f1, 0x148(r30)
    lfs     f0, 0x14c(r30)
    lwz     r0, 0x2ec(sp)
    stw     r5, 0x118(sp)
    fmuls   f1, f1, f0
    stw     r4, 0x11c(sp)
    stw     r0, 0x120(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x118(sp)
    addi    r3, sp, 0x10c
    lwz     r5, 0x11c(sp)
    addi    r4, sp, 0x23c
    stw     r0, 0x23c(sp)
    lwz     r0, 0x120(sp)
    stw     r5, 0x240(sp)
    stw     r0, 0x244(sp)
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r5, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x114(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x10c(sp)
    addi    r3, sp, 0x168
    lwz     r5, 0x110(sp)
    addi    r4, sp, 0x230
    stw     r0, 0x248(sp)
    lwz     r0, 0x114(sp)
    stw     r5, 0x24c(sp)
    stw     r0, 0x250(sp)
    lwz     r0, 0x248(sp)
    lwz     r5, 0x24c(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x250(sp)
    stw     r5, 0x16c(sp)
    stw     r0, 0x170(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    li      r0, 0x0
    lwz     r3, 0x168(sp)
    stw     r0, 0x220(sp)
    lwz     r0, 0x16c(sp)
    stw     r3, 0x224(sp)
    stw     r0, 0x228(sp)
    lwz     r0, 0x170(sp)
    stw     r0, 0x22c(sp)
    lwz     r3, 0x118(r30)
    lwz     r0, 0x114(r30)
    cmpw    r3, r0
    bge-    branch_0x80070558
    lwz     r4, 0x11c(r30)
    slwi    r3, r3, 4
    lwz     r0, 0xf4(r30)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    lwz     r3, 0xf8(r30)
    lwz     r0, 0xfc(r30)
    stw     r3, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r0, 0x100(r30)
    stw     r0, 0xc(r4)
    lwz     r3, 0x118(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x118(r30)
branch_0x80070558:
    lwz     r0, 0x220(sp)
    stw     r0, 0xf4(r30)
    lwz     r3, 0x224(sp)
    lwz     r0, 0x228(sp)
    stw     r3, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x22c(sp)
    stw     r0, 0x100(r30)
    b       branch_0x80070698

branch_0x8007057c:
    lwz     r0, 0x2cc(sp)
    addi    r3, sp, 0x100
    lwz     r4, 0x2d0(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0x2d4(sp)
    stw     r4, 0x104(sp)
    stw     r0, 0x108(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x100(sp)
    addi    r3, sp, 0xf4
    lwz     r4, 0x104(sp)
    stw     r0, 0x1f0(sp)
    lwz     r0, 0x108(sp)
    stw     r4, 0x1f4(sp)
    lwz     r5, 0x2e4(sp)
    stw     r0, 0x1f8(sp)
    lwz     r4, 0x2e8(sp)
    lfs     f1, 0x148(r30)
    lfs     f0, 0x14c(r30)
    lwz     r0, 0x2ec(sp)
    stw     r5, 0xf4(sp)
    fmuls   f1, f1, f0
    stw     r4, 0xf8(sp)
    stw     r0, 0xfc(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xf4(sp)
    addi    r3, sp, 0xe8
    lwz     r5, 0xf8(sp)
    addi    r4, sp, 0x1fc
    stw     r0, 0x1fc(sp)
    lwz     r0, 0xfc(sp)
    stw     r5, 0x200(sp)
    stw     r0, 0x204(sp)
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r5, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0xf0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xe8(sp)
    addi    r3, sp, 0x158
    lwz     r5, 0xec(sp)
    addi    r4, sp, 0x1f0
    stw     r0, 0x208(sp)
    lwz     r0, 0xf0(sp)
    stw     r5, 0x20c(sp)
    stw     r0, 0x210(sp)
    lwz     r0, 0x208(sp)
    lwz     r5, 0x20c(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0x210(sp)
    stw     r5, 0x15c(sp)
    stw     r0, 0x160(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    li      r0, 0x0
    lwz     r3, 0x158(sp)
    stw     r0, 0x1e0(sp)
    lwz     r0, 0x15c(sp)
    stw     r3, 0x1e4(sp)
    stw     r0, 0x1e8(sp)
    lwz     r0, 0x160(sp)
    stw     r0, 0x1ec(sp)
    lwz     r0, 0x1e0(sp)
    stw     r0, 0xf4(r30)
    lwz     r3, 0x1e4(sp)
    lwz     r0, 0x1e8(sp)
    stw     r3, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x1ec(sp)
    stw     r0, 0x100(r30)
branch_0x80070698:
    lfs     f0, 0x2f0(sp)
    addi    r3, sp, 0x148
    addi    r4, r30, 0x10
    stfs    f0, 0x330(sp)
    lfs     f0, 0x2f8(sp)
    stfs    f0, 0x338(sp)
    lwz     r0, 0x330(sp)
    lwz     r5, 0x334(sp)
    stw     r0, 0x148(sp)
    lwz     r0, 0x338(sp)
    stw     r5, 0x14c(sp)
    stw     r0, 0x150(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x148(sp)
    lwz     r0, 0x14c(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x150(sp)
    stw     r0, 0x9c(r30)
branch_0x800706e4:
    lwz     r0, 0x364(sp)
    lfd     f31, 0x358(sp)
    lwz     r31, 0x354(sp)
    mtlr    r0
    lwz     r30, 0x350(sp)
    lwz     r29, 0x34c(sp)
    lwz     r28, 0x348(sp)
    addi    sp, sp, 0x360
    blr


.globl reset__7TWalkerFv
reset__7TWalkerFv: # 0x80070708
    li      r4, 0x0
    stw     r4, 0x14(r3)
    li      r0, 0x1e
    stw     r4, 0x1c(r3)
    stw     r0, 0x20(r3)
    stw     r4, 0x24(r3)
    stw     r4, 0x8(r3)
    blr


.globl __dt__7TWalkerFv
__dt__7TWalkerFv: # 0x80070728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80070784
    lis     r3, __vvt__7TWalker@h
    addi    r3, r3, __vvt__7TWalker@l
    addic.  r0, r30, 0x4
    stw     r3, 0x0(r30)
    beq-    branch_0x80070768
    lis     r3, __vvt__29TSolidStack_PC12TBGCheckData_@h
    addi    r0, r3, __vvt__29TSolidStack_PC12TBGCheckData_@l
    stw     r0, 0x10(r30)
branch_0x80070768:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7TBinderFv
    extsh.  r0, r31
    ble-    branch_0x80070784
    mr      r3, r30
    bl      __dl__FPv
branch_0x80070784:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__7TWalkerFv
__ct__7TWalkerFv: # 0x800707a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7TBinderFv
    lis     r3, __vvt__7TWalker@h
    lwz     r30, 0x8(sp)
    addi    r0, r3, __vvt__7TWalker@l
    lis     r3, __vvt__29TSolidStack_PC12TBGCheckData_@h
    stw     r0, 0x0(r30)
    addi    r0, r3, __vvt__29TSolidStack_PC12TBGCheckData_@l
    stw     r0, 0x10(r30)
    li      r0, 0x4
    li      r31, 0x0
    stw     r0, 0x4(r30)
    stw     r31, 0x8(r30)
    stw     r31, 0xc(r30)
    lwz     r0, 0x4(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r30)
    li      r4, 0x1
    li      r0, 0x1e
    stw     r31, 0x14(r30)
    mr      r3, r30
    lfs     f0, -0x6b0c(r2)
    stfs    f0, 0x18(r30)
    stw     r31, 0x1c(r30)
    stw     r31, 0x20(r30)
    stw     r31, 0x24(r30)
    sth     r31, 0x28(r30)
    stw     r31, 0x2c(r30)
    stb     r4, 0x30(r30)
    stw     r31, 0x14(r30)
    stw     r31, 0x1c(r30)
    stw     r0, 0x20(r30)
    stw     r31, 0x24(r30)
    stw     r31, 0x8(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__29TSolidStack_PC12TBGCheckData_Fv
__dt__29TSolidStack_PC12TBGCheckData_Fv: # 0x8007085c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80070890
    lis     r3, __vvt__29TSolidStack_PC12TBGCheckData_@h
    addi    r3, r3, __vvt__29TSolidStack_PC12TBGCheckData_@l
    extsh.  r0, r4
    stw     r3, 0xc(r31)
    ble-    branch_0x80070890
    mr      r3, r31
    bl      __dl__FPv
branch_0x80070890:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcFarthestVertex__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
calcFarthestVertex__FPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x800708a8
    stwu    sp, -0x70(sp)
    li      r0, 0x1
    lfs     f1, 0x10(r3)
    lfs     f0, 0x0(r4)
    lfs     f4, -0x6b10(r2)
    fsubs   f0, f1, f0
    lfs     f2, 0x18(r3)
    lfs     f1, 0x8(r4)
    fmr     f7, f4
    stfs    f0, 0x48(sp)
    fsubs   f0, f2, f1
    stfs    f4, 0x4c(sp)
    stfs    f0, 0x50(sp)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0x0(r4)
    lfs     f3, 0x24(r3)
    fsubs   f0, f1, f0
    lfs     f2, 0x8(r4)
    fsubs   f1, f3, f2
    stfs    f0, 0x54(sp)
    stfs    f4, 0x58(sp)
    stfs    f1, 0x5c(sp)
    lfs     f1, 0x28(r3)
    lfs     f0, 0x0(r4)
    lfs     f3, 0x30(r3)
    fsubs   f0, f1, f0
    lfs     f2, 0x8(r4)
    fsubs   f1, f3, f2
    stfs    f0, 0x60(sp)
    stfs    f4, 0x64(sp)
    stfs    f1, 0x68(sp)
    lfs     f3, 0x4c(sp)
    lfs     f0, 0x4(r5)
    lfs     f5, 0x48(sp)
    fmuls   f0, f3, f0
    lfs     f1, 0x0(r5)
    lfs     f6, 0x50(sp)
    lfs     f2, 0x8(r5)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fcmpo   cr0, f0, f4
    ble-    branch_0x80070984
    cmpwi   r0, 0x0
    beq-    branch_0x8007096c
    fmuls   f0, f3, f3
    li      r0, 0x0
    fmadds  f0, f5, f5, f0
    fmadds  f7, f6, f6, f0
    b       branch_0x80070984

branch_0x8007096c:
    fmuls   f0, f3, f3
    fmadds  f0, f5, f5, f0
    fmadds  f0, f6, f6, f0
    fcmpo   cr0, f7, f0
    bge-    branch_0x80070984
    fmr     f7, f0
branch_0x80070984:
    lfs     f3, 0x58(sp)
    lfs     f0, 0x4(r5)
    lfs     f5, 0x54(sp)
    fmuls   f0, f3, f0
    lfs     f1, 0x0(r5)
    lfs     f6, 0x5c(sp)
    lfs     f2, 0x8(r5)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fcmpo   cr0, f0, f4
    ble-    branch_0x800709e4
    cmpwi   r0, 0x0
    beq-    branch_0x800709cc
    fmuls   f0, f3, f3
    li      r0, 0x0
    fmadds  f0, f5, f5, f0
    fmadds  f7, f6, f6, f0
    b       branch_0x800709e4

branch_0x800709cc:
    fmuls   f0, f3, f3
    fmadds  f0, f5, f5, f0
    fmadds  f0, f6, f6, f0
    fcmpo   cr0, f7, f0
    bge-    branch_0x800709e4
    fmr     f7, f0
branch_0x800709e4:
    lfs     f3, 0x64(sp)
    lfs     f0, 0x4(r5)
    lfs     f5, 0x60(sp)
    fmuls   f0, f3, f0
    lfs     f1, 0x0(r5)
    lfs     f6, 0x68(sp)
    lfs     f2, 0x8(r5)
    fmadds  f0, f5, f1, f0
    fmadds  f0, f6, f2, f0
    fcmpo   cr0, f0, f4
    ble-    branch_0x80070a44
    cmpwi   r0, 0x0
    beq-    branch_0x80070a2c
    fmuls   f0, f3, f3
    li      r0, 0x0
    fmadds  f0, f5, f5, f0
    fmadds  f7, f6, f6, f0
    b       branch_0x80070a44

branch_0x80070a2c:
    fmuls   f0, f3, f3
    fmadds  f0, f5, f5, f0
    fmadds  f0, f6, f6, f0
    fcmpo   cr0, f7, f0
    bge-    branch_0x80070a44
    fmr     f7, f0
branch_0x80070a44:
    cmpwi   r0, 0x0
    beq-    branch_0x80070a54
    lfs     f1, -0x6b10(r2)
    b       branch_0x80070a68

branch_0x80070a54:
    frsqrte f0, f7
    fmul    f0, f7, f0
    frsp    f0, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x34(sp)
branch_0x80070a68:
    addi    sp, sp, 0x70
    blr

