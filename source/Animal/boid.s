
.globl __dt__11TBoidLeaderFv
__dt__11TBoidLeaderFv: # 0x8000566c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800056c4
    lis     r3, 0x803b
    subi    r0, r3, 0x49a0
    stw     r0, 0x0(r30)
    beq-    branch_0x800056b4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800056b4:
    extsh.  r0, r31
    ble-    branch_0x800056c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800056c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcForces__11TBoidLeaderCFPC5TBoid
calcForces__11TBoidLeaderCFPC5TBoid: # 0x800056e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x80(sp)
    mr      r30, r3
    addi    r3, sp, 0x28
    stw     r29, 0x7c(sp)
    mr      r29, r5
    lwz     r5, 0x24(r5)
    lwz     r0, 0x28(r29)
    stw     r5, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x34(r4)
    lwz     r4, 0x30(r29)
    lwz     r0, 0x34(r29)
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x38(r29)
    stw     r0, 0x30(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x28(sp)
    mr      r4, r31
    lwz     r3, 0x2c(sp)
    mr      r5, r29
    stw     r0, 0x44(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x48(sp)
    addi    r3, sp, 0x38
    lfs     f2, 0x64(sp)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x48(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x64(sp)
    lfs     f1, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x3c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x40(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x44(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    bl      calcGoalForce__11TBoidLeaderCFRCQ29JGeometry8TVec3_f_
    lfs     f2, 0x64(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x64(sp)
    lfs     f1, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x40(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x68(sp)
    lfs     f2, 0x6c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lfs     f3, -0x8000(rtoc)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpu   cr0, f3, f0
    bne-    branch_0x80005838
    stfs    f3, 0x0(r30)
    stfs    f3, 0x4(r30)
    stfs    f3, 0x8(r30)
    b       branch_0x80005a34

branch_0x80005838:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7fe0(rtoc)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f4, -0x7ffc(rtoc)
    stw     r0, 0x70(sp)
    lfs     f2, -0x7ff0(rtoc)
    lfd     f0, 0x70(sp)
    lfs     f1, -0x7ff4(rtoc)
    fsubs   f5, f0, f3
    lfs     f3, -0x7ff8(rtoc)
    lfs     f0, 0x64(sp)
    fmuls   f4, f4, f5
    fmadds  f1, f2, f4, f1
    fmuls   f1, f3, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x6c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x7fec(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800058dc
    lfs     f0, -0x8000(rtoc)
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x68(sp)
    stfs    f0, 0x64(sp)
    b       branch_0x8000590c

branch_0x800058dc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x7fe8(rtoc)
    lfs     f0, 0x64(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x6c(sp)
branch_0x8000590c:
    lfs     f0, -0x8000(rtoc)
    lfs     f4, 0x6c(r31)
    fcmpo   cr0, f0, f4
    bge-    branch_0x80005a1c
    lwz     r3, 0x0(r29)
    lwz     r0, 0x4(r29)
    stw     r3, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0x60(sp)
    lwz     r3, 0x5c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80005948
    addi    r3, r3, 0x10
    b       branch_0x8000594c

branch_0x80005948:
    addi    r3, r31, 0x60
branch_0x8000594c:
    lfs     f1, 0x58(sp)
    lfs     f0, 0x0(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x5c(sp)
    lfs     f3, 0x60(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lfs     f2, -0x8000(rtoc)
    fmuls   f3, f3, f3
    fadds   f0, f1, f0
    fadds   f1, f3, f0
    fcmpo   cr0, f2, f1
    bge-    branch_0x80005a1c
    fmuls   f0, f4, f4
    fcmpo   cr0, f1, f0
    bge-    branch_0x80005a1c
    lfs     f0, -0x7fec(rtoc)
    lfs     f31, 0x70(r31)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800059d8
    stfs    f2, 0x60(sp)
    stfs    f2, 0x5c(sp)
    stfs    f2, 0x58(sp)
    b       branch_0x80005a04

branch_0x800059d8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x60(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(sp)
branch_0x80005a04:
    lwz     r0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
branch_0x80005a1c:
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x8(r30)
branch_0x80005a34:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x90
    blr


.globl inv_sqrt__Q29JGeometry8TUtil_f_Ff
inv_sqrt__Q29JGeometry8TUtil_f_Ff: # 0x80005a54
    lfs     f0, -0x8000(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beqlr-    

    frsqrte f4, f1
    lfs     f3, -0x7fd8(rtoc)
    lfs     f0, -0x7fd4(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f1, f3, f0
    blr


.globl scale__Q29JGeometry8TVec3_f_Ff
scale__Q29JGeometry8TVec3_f_Ff: # 0x80005a88
    lfs     f0, 0x0(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r3)
    blr


.globl calcGoalForce__11TBoidLeaderCFRCQ29JGeometry8TVec3_f_
calcGoalForce__11TBoidLeaderCFRCQ29JGeometry8TVec3_f_: # 0x80005ab0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    lwz     r0, 0x1c(r4)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80005b90
    lfs     f0, 0x74(r4)
    stfs    f0, 0x34(sp)
    lfs     f0, 0x78(r4)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x7c(r4)
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f3, 0x3c(sp)
    lfs     f0, 0x38(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x7fec(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80005b5c
    lfs     f0, -0x8000(rtoc)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x34(sp)
    b       branch_0x80005ce8

branch_0x80005b5c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x7fe8(rtoc)
    lfs     f0, 0x34(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    b       branch_0x80005ce8

branch_0x80005b90:
    lwz     r3, 0x38(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80005ba4
    addi    r3, r3, 0x10
    b       branch_0x80005ba8

branch_0x80005ba4:
    addi    r3, r4, 0x3c
branch_0x80005ba8:
    lfs     f0, 0x0(r3)
    stfs    f0, 0x34(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x4c(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x50(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x54(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f3, 0x3c(sp)
    lfs     f0, 0x38(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x8000(rtoc)
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80005c54
    b       branch_0x80005c78

branch_0x80005c54:
    frsqrte f3, f4
    lfs     f2, -0x7fd8(rtoc)
    lfs     f0, -0x7fd4(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80005c78:
    lfs     f0, -0x8000(rtoc)
    fcmpo   cr0, f0, f4
    bge-    branch_0x80005cdc
    lfs     f1, -0x7fe8(rtoc)
    lfs     f0, 0x34(sp)
    fdivs   f1, f1, f4
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x48(r4)
    lfs     f0, 0x34(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    b       branch_0x80005ce8

branch_0x80005cdc:
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x34(sp)
branch_0x80005ce8:
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x8(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl perform__11TBoidLeaderFUlPQ26JDrama9TGraphics
perform__11TBoidLeaderFUlPQ26JDrama9TGraphics: # 0x80005d14
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x80005e64
    lwz     r0, 0x1c(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80005e5c
    lwz     r5, 0x18(r30)
    addi    r3, sp, 0x24
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x24(sp)
    lwz     r3, 0x28(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x74(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x78(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x7c(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x18(sp)
    lfs     f3, 0x20(sp)
    lfs     f0, 0x1c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x7fd0(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80005df0
    lwz     r31, 0x18(r30)
    li      r6, -0x1
    lwz     r5, 0x8(r31)
    lwz     r4, 0x4(r31)
    lwz     r3, 0x0(r31)
    bl      getRandomNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      moveTo__12TGraphTracerFi
    b       branch_0x80005e5c

branch_0x80005df0:
    addi    r3, sp, 0x18
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f2, -0x7fcc(rtoc)
    lfs     f1, 0x20(r30)
    lfs     f0, 0x18(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x18(sp)
    lfs     f0, 0x1c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x20(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(sp)
    lfs     f1, 0x74(r30)
    lfs     f0, 0x18(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x74(r30)
    lfs     f1, 0x78(r30)
    lfs     f0, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x78(r30)
    lfs     f1, 0x7c(r30)
    lfs     f0, 0x20(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(r30)
branch_0x80005e5c:
    mr      r3, r30
    bl      calcBoids__11TBoidLeaderFv
branch_0x80005e64:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setGraph__11TBoidLeaderFP9TGraphWebRCQ29JGeometry8TVec3_f_
setGraph__11TBoidLeaderFP9TGraphWebRCQ29JGeometry8TVec3_f_: # 0x80005e7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x30(sp)
    mr.     r30, r4
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x28(sp)
    beq-    branch_0x80005f40
    mr      r3, r30
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80005ebc
    b       branch_0x80005f40

branch_0x80005ebc:
    lwz     r0, 0x18(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80005ee4
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80005ee0
    mr      r3, r28
    bl      __ct__12TGraphTracerFv
branch_0x80005ee0:
    stw     r28, 0x18(r29)
branch_0x80005ee4:
    lwz     r5, 0x18(r29)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    stw     r30, 0x0(r5)
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x18(r29)
    bl      setTo__12TGraphTracerFi
    lwz     r5, 0x18(r29)
    addi    r3, sp, 0x18
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      indexToPoint__9TGraphWebCFi
    lfs     f0, 0x18(sp)
    stfs    f0, 0x74(r29)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x78(r29)
    lfs     f0, 0x20(sp)
    stfs    f0, 0x7c(r29)
    lwz     r0, 0x1c(r29)
    ori     r0, r0, 0x4
    stw     r0, 0x1c(r29)
branch_0x80005f40:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl calcBoids__11TBoidLeaderFv
calcBoids__11TBoidLeaderFv: # 0x80005f60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e0(sp)
    stfd    f31, 0x1d8(sp)
    stfd    f30, 0x1d0(sp)
    stfd    f29, 0x1c8(sp)
    stfd    f28, 0x1c0(sp)
    stfd    f27, 0x1b8(sp)
    stfd    f26, 0x1b0(sp)
    stfd    f25, 0x1a8(sp)
    stfd    f24, 0x1a0(sp)
    stfd    f23, 0x198(sp)
    stfd    f22, 0x190(sp)
    stmw    r27, 0x17c(sp)
    mr      r28, r3
    lwz     r0, 0x1c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x800067ac
    lwz     r3, 0x10(r28)
    li      r0, 0x0
    lwz     r4, 0x14(r28)
    mulli   r3, r3, 0x50
    lfs     f0, -0x8000(rtoc)
    add     r30, r4, r3
    b       branch_0x80005ff0

branch_0x80005fc4:
    stfs    f0, 0x2c(r4)
    stfs    f0, 0x28(r4)
    stfs    f0, 0x24(r4)
    stfs    f0, 0x44(r4)
    stfs    f0, 0x40(r4)
    stfs    f0, 0x3c(r4)
    stfs    f0, 0x38(r4)
    stfs    f0, 0x34(r4)
    stfs    f0, 0x30(r4)
    stw     r0, 0x48(r4)
    addi    r4, r4, 0x50
branch_0x80005ff0:
    cmplw   r4, r30
    bne+    branch_0x80005fc4
    lwz     r31, 0x14(r28)
    lis     r27, 0x4330
    lfs     f26, -0x7fc8(rtoc)
    lfs     f23, -0x7fe8(rtoc)
    lfs     f28, -0x7fec(rtoc)
    lfd     f25, -0x7fe0(rtoc)
    lfs     f24, -0x8000(rtoc)
    b       branch_0x800064b4

branch_0x80006018:
    addi    r29, r31, 0x50
    b       branch_0x800062d4

branch_0x80006020:
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r3, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x16c(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x0(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x164(sp)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x4(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x168(sp)
    lfs     f1, 0x16c(sp)
    lfs     f0, 0x8(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x16c(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x168(sp)
    lfs     f2, 0x16c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f26
    fmr     f27, f1
    blt-    branch_0x800062d0
    lfs     f22, 0x24(r28)
    fmuls   f0, f22, f22
    fcmpo   cr0, f1, f0
    bge-    branch_0x800062d0
    lwz     r0, 0x164(sp)
    fmr     f1, f27
    lwz     r3, 0x168(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x16c(sp)
    stw     r3, 0x88(sp)
    addi    r3, sp, 0x84
    stw     r0, 0x8c(sp)
    bl      div__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x84(sp)
    fmr     f1, f22
    lwz     r4, 0x88(sp)
    addi    r3, sp, 0xc0
    stw     r0, 0x110(sp)
    lwz     r0, 0x8c(sp)
    stw     r4, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0x110(sp)
    lwz     r4, 0x114(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x118(sp)
    stw     r4, 0xc4(sp)
    stw     r0, 0xc8(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xc0(sp)
    fmr     f1, f27
    lwz     r4, 0xc4(sp)
    addi    r3, sp, 0x78
    stw     r0, 0x11c(sp)
    lwz     r0, 0xc8(sp)
    stw     r4, 0x120(sp)
    stw     r0, 0x124(sp)
    lfs     f2, 0x24(r31)
    lfs     f0, 0x11c(sp)
    fadds   f0, f2, f0
    stfs    f0, 0x24(r31)
    lfs     f2, 0x28(r31)
    lfs     f0, 0x120(sp)
    fadds   f0, f2, f0
    stfs    f0, 0x28(r31)
    lfs     f2, 0x2c(r31)
    lfs     f0, 0x124(sp)
    fadds   f0, f2, f0
    stfs    f0, 0x2c(r31)
    lfs     f27, 0x24(r28)
    lwz     r0, 0x164(sp)
    lwz     r4, 0x168(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x16c(sp)
    stw     r4, 0x7c(sp)
    stw     r0, 0x80(sp)
    bl      div__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x78(sp)
    fmr     f1, f27
    lwz     r4, 0x7c(sp)
    addi    r3, sp, 0xb0
    stw     r0, 0xf8(sp)
    lwz     r0, 0x80(sp)
    stw     r4, 0xfc(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0xf8(sp)
    lwz     r4, 0xfc(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x100(sp)
    stw     r4, 0xb4(sp)
    stw     r0, 0xb8(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    stw     r0, 0x104(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x108(sp)
    stw     r0, 0x10c(sp)
    lfs     f1, 0x24(r29)
    lfs     f0, 0x104(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(r29)
    lfs     f1, 0x28(r29)
    lfs     f0, 0x108(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(r29)
    lfs     f1, 0x2c(r29)
    lfs     f0, 0x10c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(r29)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x18(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0x1c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0x20(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r31)
    lfs     f1, 0x30(r29)
    lfs     f0, 0x18(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r29)
    lfs     f1, 0x34(r29)
    lfs     f0, 0x1c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r29)
    lfs     f1, 0x38(r29)
    lfs     f0, 0x20(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r29)
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x0(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(r31)
    lfs     f1, 0x40(r31)
    lfs     f0, 0x4(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x40(r31)
    lfs     f1, 0x44(r31)
    lfs     f0, 0x8(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x44(r31)
    lfs     f1, 0x3c(r29)
    lfs     f0, 0x0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(r29)
    lfs     f1, 0x40(r29)
    lfs     f0, 0x4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x40(r29)
    lfs     f1, 0x44(r29)
    lfs     f0, 0x8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x44(r29)
    lwz     r3, 0x48(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x48(r31)
    lwz     r3, 0x48(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x48(r29)
branch_0x800062d0:
    addi    r29, r29, 0x50
branch_0x800062d4:
    cmplw   r29, r30
    bne+    branch_0x80006020
    lwz     r0, 0x48(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x800064b0
    xoris   r0, r0, 0x8000
    lfs     f0, 0x3c(r31)
    stw     r0, 0x174(sp)
    stw     r27, 0x170(sp)
    lfd     f1, 0x170(sp)
    fsubs   f1, f1, f25
    fdivs   f27, f23, f1
    fmuls   f0, f0, f27
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x40(r31)
    fmuls   f0, f0, f27
    stfs    f0, 0x40(r31)
    lfs     f0, 0x44(r31)
    fmuls   f0, f0, f27
    stfs    f0, 0x44(r31)
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(r31)
    lfs     f1, 0x40(r31)
    lfs     f0, 0x4(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(r31)
    lfs     f1, 0x44(r31)
    lfs     f0, 0x8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(r31)
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x40(r31)
    lfs     f2, 0x44(r31)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f28
    cror    2, 0, 2
    bne-    branch_0x80006390
    stfs    f24, 0x44(r31)
    stfs    f24, 0x40(r31)
    stfs    f24, 0x3c(r31)
    b       branch_0x800063bc

branch_0x80006390:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f23, f1
    lfs     f0, 0x3c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x40(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(r31)
    lfs     f0, 0x44(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(r31)
branch_0x800063bc:
    lfs     f0, 0x30(r31)
    addi    r3, r31, 0x30
    fmuls   f0, f0, f27
    stfs    f0, 0x30(r31)
    lfs     f0, 0x34(r31)
    fmuls   f0, f0, f27
    stfs    f0, 0x34(r31)
    lfs     f0, 0x38(r31)
    fmuls   f0, f0, f27
    stfs    f0, 0x38(r31)
    bl      PSVECMag
    fcmpo   cr0, f1, f24
    ble-    branch_0x800064b0
    fdivs   f1, f23, f1
    lfs     f0, 0x30(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(r31)
    lfs     f0, 0x34(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(r31)
    lfs     f0, 0x38(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0x1c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0x20(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x34(r31)
    lfs     f2, 0x38(r31)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f28
    cror    2, 0, 2
    bne-    branch_0x80006484
    stfs    f24, 0x38(r31)
    stfs    f24, 0x34(r31)
    stfs    f24, 0x30(r31)
    b       branch_0x800064b0

branch_0x80006484:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f23, f1
    lfs     f0, 0x30(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(r31)
    lfs     f0, 0x34(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(r31)
    lfs     f0, 0x38(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(r31)
branch_0x800064b0:
    addi    r31, r31, 0x50
branch_0x800064b4:
    cmplw   r31, r30
    bne+    branch_0x80006018
    lwz     r29, 0x14(r28)
    lis     r31, 0x4330
    lfs     f30, -0x7fac(rtoc)
    lfs     f31, -0x8000(rtoc)
    lfs     f27, -0x7ff8(rtoc)
    lfs     f26, -0x7fc4(rtoc)
    lfs     f23, -0x7fc0(rtoc)
    lfd     f28, -0x7fe0(rtoc)
    lfs     f25, -0x7fb4(rtoc)
    lfs     f29, -0x7fb0(rtoc)
    lfs     f24, -0x7fec(rtoc)
    b       branch_0x800067a4

branch_0x800064ec:
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0xec
    bl      calcForces__11TBoidLeaderCFPC5TBoid
    lwz     r0, 0xec(sp)
    lwz     r3, 0xf0(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0xf4(sp)
    stw     r3, 0x15c(sp)
    stw     r0, 0x160(sp)
    lfs     f0, 0x158(sp)
    lfs     f3, 0x15c(sp)
    fmuls   f1, f0, f0
    lfs     f2, 0x160(sp)
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f24
    cror    2, 0, 2
    beq-    branch_0x800066a0
    fcmpo   cr0, f3, f26
    bge-    branch_0x80006570
    lfs     f1, 0xc(r29)
    lfs     f0, 0x2c(r28)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r29)
    lfs     f0, 0xc(r29)
    lfs     f1, 0x30(r28)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800065b0
    stfs    f1, 0xc(r29)
    b       branch_0x800065b0

branch_0x80006570:
    fcmpo   cr0, f3, f27
    ble-    branch_0x800065a4
    lfs     f1, 0xc(r29)
    lfs     f0, 0x2c(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xc(r29)
    lfs     f0, 0x30(r28)
    lfs     f1, 0xc(r29)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x800065b0
    stfs    f0, 0xc(r29)
    b       branch_0x800065b0

branch_0x800065a4:
    lfs     f0, 0xc(r29)
    fmuls   f0, f0, f23
    stfs    f0, 0xc(r29)
branch_0x800065b0:
    lfs     f1, 0x160(sp)
    fcmpu   cr0, f31, f1
    bne-    branch_0x800065dc
    lfs     f0, 0x158(sp)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x800065d4
    lfs     f22, -0x7fbc(rtoc)
    b       branch_0x8000663c

branch_0x800065d4:
    lfs     f22, -0x7fb8(rtoc)
    b       branch_0x8000663c

branch_0x800065dc:
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x80006610
    lfs     f2, 0x158(sp)
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x174(sp)
    stw     r31, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f28
    fmuls   f22, f25, f0
    b       branch_0x8000663c

branch_0x80006610:
    fneg    f1, f1
    lfs     f2, 0x158(sp)
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x174(sp)
    stw     r31, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f25, f0
    fsubs   f22, f29, f0
branch_0x8000663c:
    fsubs   f2, f22, f29
    lfs     f1, 0x10(r29)
    fadds   f3, f29, f22
    bl      MsWrap_f___Ffff
    fsubs   f1, f22, f1
    fcmpo   cr0, f1, f26
    bge-    branch_0x80006664
    lfs     f0, 0x28(r28)
    fneg    f1, f0
    b       branch_0x80006670

branch_0x80006664:
    fcmpo   cr0, f1, f27
    ble-    branch_0x80006670
    lfs     f1, 0x28(r28)
branch_0x80006670:
    lfs     f0, 0x10(r29)
    fadds   f0, f0, f1
    b       branch_0x80006680

branch_0x8000667c:
    fsubs   f0, f0, f30
branch_0x80006680:
    fcmpo   cr0, f0, f30
    cror    2, 1, 2
    beq+    branch_0x8000667c
    b       branch_0x80006694

branch_0x80006690:
    fadds   f0, f0, f30
branch_0x80006694:
    fcmpo   cr0, f0, f31
    blt+    branch_0x80006690
    stfs    f0, 0x10(r29)
branch_0x800066a0:
    lfs     f1, 0xc(r29)
    addi    r3, sp, 0x128
    lfs     f2, 0x10(r29)
    lfs     f3, 0x14(r29)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f2, 0x150(sp)
    addi    r3, r29, 0x18
    lfs     f1, 0x140(sp)
    mr      r4, r3
    lfs     f0, 0x130(sp)
    stfs    f0, 0x18(r29)
    stfs    f1, 0x1c(r29)
    stfs    f2, 0x20(r29)
    bl      PSVECNormalize
    addi    r3, sp, 0x158
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x20(r28)
    fmr     f22, f1
    lfs     f0, 0x4c(r29)
    addi    r3, sp, 0x68
    lwz     r4, 0x18(r29)
    lwz     r0, 0x1c(r29)
    fadds   f0, f2, f0
    stw     r4, 0x68(sp)
    stw     r0, 0x6c(sp)
    fmr     f1, f0
    lwz     r0, 0x20(r29)
    stw     r0, 0x70(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x68(sp)
    fmr     f1, f22
    lwz     r4, 0x6c(sp)
    addi    r3, sp, 0x94
    stw     r0, 0xd4(sp)
    lwz     r0, 0x70(sp)
    stw     r4, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0xd4(sp)
    lwz     r4, 0xd8(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0xdc(sp)
    stw     r4, 0x98(sp)
    stw     r0, 0x9c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x94(sp)
    lwz     r3, 0x98(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lfs     f1, 0x0(r29)
    lfs     f0, 0xe0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r29)
    lfs     f1, 0x4(r29)
    lfs     f0, 0xe4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r29)
    lfs     f1, 0x8(r29)
    lfs     f0, 0xe8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r29)
    addi    r29, r29, 0x50
branch_0x800067a4:
    cmplw   r29, r30
    bne+    branch_0x800064ec
branch_0x800067ac:
    lmw     r27, 0x17c(sp)
    lwz     r0, 0x1e4(sp)
    lfd     f31, 0x1d8(sp)
    lfd     f30, 0x1d0(sp)
    mtlr    r0
    lfd     f29, 0x1c8(sp)
    lfd     f28, 0x1c0(sp)
    lfd     f27, 0x1b8(sp)
    lfd     f26, 0x1b0(sp)
    lfd     f25, 0x1a8(sp)
    lfd     f24, 0x1a0(sp)
    lfd     f23, 0x198(sp)
    lfd     f22, 0x190(sp)
    addi    sp, sp, 0x1e0
    blr


.globl sqrt__Q29JGeometry8TUtil_f_Ff
sqrt__Q29JGeometry8TUtil_f_Ff: # 0x800067e8
    lfs     f0, -0x8000(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beqlr-    

    frsqrte f4, f1
    lfs     f3, -0x7fd8(rtoc)
    lfs     f0, -0x7fd4(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f1, f1, f0
    blr


.globl dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_: # 0x80006820
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r4)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x8(r4)
    fmadds  f0, f2, f1, f0
    fmadds  f1, f4, f3, f0
    blr


.globl MsWrap_f___Ffff
MsWrap_f___Ffff: # 0x80006848
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x80006884
    fmr     f1, f2
    blr

    b       branch_0x80006864

branch_0x80006860:
    fsubs   f1, f1, f0
branch_0x80006864:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x80006860
    b       branch_0x80006878

branch_0x80006874:
    fadds   f1, f1, f0
branch_0x80006878:
    fcmpo   cr0, f1, f2
    blt+    branch_0x80006874
    blr

branch_0x80006884:
    fsubs   f0, f3, f2
    b       branch_0x80006864

    blr


.globl div__Q29JGeometry8TVec3_f_Ff
div__Q29JGeometry8TVec3_f_Ff: # 0x80006890
    lfs     f2, -0x7fe8(rtoc)
    lfs     f0, 0x0(r3)
    fdivs   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r3)
    blr


.globl __ct__11TBoidLeaderFiPCc
__ct__11TBoidLeaderFiPCc: # 0x800068c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    mr      r3, r5
    stw     r0, 0x0(r31)
    stw     r5, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r31)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r31)
    li      r30, 0x0
    lis     r3, 0x803b
    sth     r30, 0xc(r31)
    subi    r0, r3, 0x49a0
    mulli   r3, r29, 0x50
    stw     r0, 0x0(r31)
    stw     r29, 0x10(r31)
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8000
    addi    r4, r4, 0x6ad0
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x50
    bl      __construct_new_array
    stw     r3, 0x14(r31)
    mr      r3, r31
    stw     r30, 0x18(r31)
    stw     r30, 0x1c(r31)
    lfs     f0, -0x7fa8(rtoc)
    stfs    f0, 0x20(r31)
    lfs     f0, -0x7fa4(rtoc)
    stfs    f0, 0x24(r31)
    lfs     f0, -0x7fa0(rtoc)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x7f9c(rtoc)
    stfs    f0, 0x30(r31)
    lfs     f0, -0x7ff8(rtoc)
    stfs    f0, 0x34(r31)
    lfs     f1, -0x8000(rtoc)
    stfs    f1, 0x28(sp)
    stfs    f1, 0x2c(sp)
    stfs    f1, 0x30(sp)
    stw     r30, 0x38(r31)
    lwz     r4, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r4, 0x3c(r31)
    stw     r0, 0x40(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x44(r31)
    lfs     f0, -0x7fe8(rtoc)
    stfs    f0, 0x48(r31)
    stw     r30, 0x58(r31)
    stfs    f1, 0x1c(sp)
    stfs    f1, 0x20(sp)
    stfs    f1, 0x24(sp)
    stw     r30, 0x5c(r31)
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0x60(r31)
    stw     r0, 0x64(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0x68(r31)
    stfs    f1, 0x6c(r31)
    stfs    f0, 0x70(r31)
    stfs    f1, 0x74(r31)
    stfs    f1, 0x78(r31)
    stfs    f1, 0x7c(r31)
    stfs    f1, 0x54(r31)
    stfs    f1, 0x50(r31)
    stfs    f1, 0x4c(r31)
    lwz     r0, 0x1c(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl __dt__9TPathNodeFv
__dt__9TPathNodeFv: # 0x80006a2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80006a54
    extsh.  r0, r4
    ble-    branch_0x80006a54
    mr      r3, r31
    bl      __dl__FPv
branch_0x80006a54:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q26JDrama8TViewObjFv
__dt__Q26JDrama8TViewObjFv: # 0x80006a6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80006ab4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x80006ab4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80006ab4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__5TBoidFv
__ct__5TBoidFv: # 0x80006ad0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x48(r3)
    lfs     f0, -0x8000(rtoc)
    stfs    f0, 0x4c(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, -0x7fe8(rtoc)
    stfs    f0, 0x20(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x7fe0(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7ffc(rtoc)
    mr      r3, r31
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr
