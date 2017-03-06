
.globl __dt__10TLensFlareFv
__dt__10TLensFlareFv: # 0x8002d0e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8002d138
    lis     r3, 0x803b
    subi    r0, r3, 0x2ef8
    stw     r0, 0x0(r30)
    beq-    branch_0x8002d128
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8002d128:
    extsh.  r0, r31
    ble-    branch_0x8002d138
    mr      r3, r30
    bl      __dl__FPv
branch_0x8002d138:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__10TLensFlareFUlPQ26JDrama9TGraphics
perform__10TLensFlareFUlPQ26JDrama9TGraphics: # 0x8002d154
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2b8(sp)
    stfd    f31, 0x2b0(sp)
    stfd    f30, 0x2a8(sp)
    stfd    f29, 0x2a0(sp)
    stmw    r27, 0x28c(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    lwz     r5, -0x7100(r13)
    lbz     r0, 0x15(r5)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8002d71c
    lwz     r3, -0x7110(r13)
    bl      isMarioIndoor__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002d1a0
    li      r31, 0x0
    b       branch_0x8002d22c

branch_0x8002d1a0:
    lfs     f2, 0x40(r29)
    li      r4, 0x0
    lwz     r3, -0x70f8(r13)
    mr      r5, r4
    fneg    f0, f2
    lfsu    f1, 0xf8(r3)
    mr      r0, r4
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8002d1d8
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8002d1d8
    li      r0, 0x1
branch_0x8002d1d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002d1f8
    fneg    f1, f2
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002d1f8
    li      r5, 0x1
branch_0x8002d1f8:
    clrlwi. r0, r5, 24
    beq-    branch_0x8002d214
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x8002d214
    li      r4, 0x1
branch_0x8002d214:
    clrlwi. r0, r4, 24
    beq-    branch_0x8002d224
    li      r0, 0x1
    b       branch_0x8002d228

branch_0x8002d224:
    li      r0, 0x0
branch_0x8002d228:
    mr      r31, r0
branch_0x8002d22c:
    clrlwi. r0, r30, 31
    beq-    branch_0x8002d3c0
    lfs     f2, 0x44(r29)
    li      r4, 0x0
    lwz     r6, -0x70f8(r13)
    mr      r5, r4
    fneg    f0, f2
    addi    r3, r6, 0xf8
    lfs     f1, 0xf8(r6)
    mr      r0, r4
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8002d270
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8002d270
    li      r0, 0x1
branch_0x8002d270:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002d290
    fneg    f1, f2
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002d290
    li      r5, 0x1
branch_0x8002d290:
    clrlwi. r0, r5, 24
    beq-    branch_0x8002d2ac
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x8002d2ac
    li      r4, 0x1
branch_0x8002d2ac:
    clrlwi. r0, r4, 24
    beq-    branch_0x8002d2bc
    li      r0, 0x1
    b       branch_0x8002d2c0

branch_0x8002d2bc:
    li      r0, 0x0
branch_0x8002d2c0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002d2d4
    lfs     f0, -0x7740(rtoc)
    stfs    f0, 0x28(r29)
    b       branch_0x8002d360

branch_0x8002d2d4:
    li      r0, 0x11
    mtctr   r0
    addi    r4, r6, 0xb4
    addi    r3, r6, 0x180
    li      r5, 0x0
branch_0x8002d2e8:
    lha     r0, 0x0(r4)
    cmpwi   r0, -0x1
    beq-    branch_0x8002d310
    lha     r0, 0x2(r4)
    cmpwi   r0, -0x1
    beq-    branch_0x8002d310
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8002d310
    addi    r5, r5, 0x1
branch_0x8002d310:
    addi    r4, r4, 0x4
    addi    r3, r3, 0x1
    bdnz+      branch_0x8002d2e8
    xoris   r0, r5, 0x8000
    lfd     f1, -0x7720(rtoc)
    stw     r0, 0x284(sp)
    lis     r0, 0x4330
    lfs     f4, -0x7738(rtoc)
    stw     r0, 0x280(sp)
    lfs     f5, -0x773c(rtoc)
    lfd     f0, 0x280(sp)
    lfs     f3, 0x194(r6)
    fsubs   f0, f0, f1
    lfs     f1, 0x48(r29)
    lfs     f2, -0x7734(rtoc)
    fmuls   f0, f4, f0
    fsubs   f0, f5, f0
    fmuls   f1, f1, f0
    bl      CLBEaseOutInbetween_f___Ffff
    stfs    f1, 0x28(r29)
branch_0x8002d360:
    lfs     f0, 0x24(r29)
    lfs     f1, 0x28(r29)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8002d394
    lwz     r3, -0x70f8(r13)
    lfs     f2, -0x7740(rtoc)
    lfs     f0, 0x194(r3)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8002d38c
    lfs     f2, 0x30(r29)
    b       branch_0x8002d3b4

branch_0x8002d38c:
    lfs     f2, 0x2c(r29)
    b       branch_0x8002d3b4

branch_0x8002d394:
    lwz     r3, -0x70f8(r13)
    lfs     f2, -0x7740(rtoc)
    lfs     f0, 0x194(r3)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8002d3b0
    lfs     f2, 0x38(r29)
    b       branch_0x8002d3b4

branch_0x8002d3b0:
    lfs     f2, 0x34(r29)
branch_0x8002d3b4:
    lfs     f3, -0x7740(rtoc)
    addi    r3, r29, 0x24
    bl      CLBChaseDecrease__FPffff
branch_0x8002d3c0:
    clrlwi. r0, r31, 24
    beq-    branch_0x8002d71c
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x8002d640
    lwz     r8, -0x70f8(r13)
    lis     r3, 0x8002
    addi    r4, r3, 0x10dc
    lwz     r6, 0x198(r8)
    addi    r3, sp, 0x178
    lwz     r0, 0x19c(r8)
    li      r5, 0x0
    li      r7, 0x9
    stw     r6, 0x16c(sp)
    li      r6, 0xc
    stw     r0, 0x170(sp)
    lwz     r0, 0x1a0(r8)
    stw     r0, 0x174(sp)
    bl      __construct_array
    lwz     r3, -0x7118(r13)
    lfs     f29, 0x28(r3)
    lfs     f30, 0x4c(r3)
    lfs     f31, 0x48(r3)
    bl      getFinalAngleZ__15CPolarSubCameraCFv
    lwz     r4, -0x7118(r13)
    addi    r28, r3, 0x0
    addi    r3, sp, 0x23c
    addi    r4, r4, 0x148
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lwz     r4, -0x7118(r13)
    addi    r3, sp, 0x230
    addi    r4, r4, 0x124
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lfs     f0, -0x772c(rtoc)
    lfs     f1, -0x7730(rtoc)
    fmuls   f0, f0, f31
    fmuls   f1, f1, f0
    bl      CLBRoundf_s___Ff
    mr      r31, r3
    bl      JMASCos__Fs
    lfs     f0, -0x773c(rtoc)
    mr      r3, r31
    fdivs   f31, f0, f1
    bl      JMASSin__Fs
    fmuls   f0, f1, f31
    lfs     f2, -0x7728(rtoc)
    fmr     f1, f29
    mr      r7, r28
    addi    r3, sp, 0x178
    fmuls   f0, f29, f0
    addi    r4, sp, 0x1e4
    addi    r5, sp, 0x230
    addi    r6, sp, 0x23c
    fmuls   f0, f2, f0
    addi    r8, sp, 0x10c
    stfs    f0, 0x110(sp)
    lfs     f0, 0x110(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x10c(sp)
    bl      CLBCalcNearNinePos__FPQ29JGeometry8TVec3_f_P6S16VecRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_sfRCQ29JGeometry8TVec2_f_
    lwz     r5, -0x70f8(r13)
    addi    r3, sp, 0x248
    lfsu    f1, 0xf8(r5)
    addi    r4, sp, 0x16c
    lfs     f9, 0x1ac(sp)
    lfs     f0, 0x4(r5)
    fneg    f2, f1
    lfs     f7, 0x3c(r29)
    fneg    f3, f0
    lfs     f0, 0x1b8(sp)
    lfs     f1, 0x1b4(sp)
    lfs     f8, 0x1a8(sp)
    fsubs   f6, f0, f9
    fmuls   f4, f7, f2
    lfs     f2, 0x184(sp)
    fsubs   f5, f1, f8
    lfs     f1, 0x188(sp)
    lfs     f0, 0x1bc(sp)
    fmuls   f5, f5, f4
    lfs     f10, 0x1b0(sp)
    fmuls   f3, f7, f3
    fsubs   f7, f0, f10
    lfs     f0, 0x18c(sp)
    fmuls   f6, f6, f4
    fsubs   f2, f2, f8
    fsubs   f1, f1, f9
    fmuls   f7, f7, f4
    fsubs   f0, f0, f10
    fmuls   f2, f2, f3
    fadds   f29, f8, f5
    fmuls   f1, f1, f3
    fadds   f30, f9, f6
    fmuls   f0, f0, f3
    fadds   f31, f10, f7
    fadds   f29, f29, f2
    fadds   f30, f30, f1
    fadds   f31, f31, f0
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lfs     f0, 0x248(sp)
    addi    r3, sp, 0x254
    lfs     f1, 0x24c(sp)
    addi    r4, sp, 0x210
    fsubs   f2, f29, f0
    lfs     f0, 0x250(sp)
    fsubs   f1, f30, f1
    stfs    f2, 0x210(sp)
    fsubs   f0, f31, f0
    stfs    f1, 0x214(sp)
    stfs    f0, 0x218(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x254(sp)
    lwz     r3, 0x258(sp)
    stw     r0, 0x21c(sp)
    lwz     r0, 0x25c(sp)
    stw     r3, 0x220(sp)
    lfs     f0, -0x7730(rtoc)
    stw     r0, 0x224(sp)
    lfs     f1, 0x21c(sp)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f1, 0x220(sp)
    mr      r31, r3
    lfs     f0, -0x7730(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    extsh   r3, r3
    lfs     f6, -0x7740(rtoc)
    extsh   r0, r31
    lfd     f3, -0x7720(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f4, -0x7724(rtoc)
    xoris   r0, r0, 0x8000
    stw     r3, 0x284(sp)
    lis     r4, 0x4330
    lfs     f0, 0x20(r29)
    stw     r0, 0x27c(sp)
    addi    r3, sp, 0x13c
    stw     r4, 0x280(sp)
    stfs    f0, 0x8(sp)
    lfd     f2, 0x280(sp)
    stw     r4, 0x278(sp)
    fsubs   f2, f2, f3
    lfs     f7, 0x18(r29)
    lfd     f1, 0x278(sp)
    lfs     f8, 0x1c(r29)
    fsubs   f0, f1, f3
    fmuls   f5, f4, f2
    lfs     f1, 0x16c(sp)
    lfs     f2, 0x170(sp)
    fmuls   f4, f4, f0
    lfs     f3, 0x174(sp)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r4, 0x14(r29)
    addi    r3, sp, 0x13c
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x14(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8002d640:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x8002d700
    lwz     r3, 0x10(r29)
    li      r28, 0x0
    lhz     r31, 0x24(r3)
    b       branch_0x8002d6e0

branch_0x8002d658:
    lwz     r3, 0x10(r29)
    clrlslwi  r27, r28, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r27
    bl      change__11J3DMaterialFv
    lwz     r3, 0x10(r29)
    li      r4, 0x0
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r27
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x0(r3)
    addi    r5, sp, 0x134
    lwz     r0, 0x4(r3)
    li      r4, 0x0
    stw     r6, 0x134(sp)
    stw     r0, 0x138(sp)
    lfs     f0, 0x24(r29)
    fctiwz  f0, f0
    stfd    f0, 0x278(sp)
    lwz     r0, 0x27c(sp)
    sth     r0, 0x13a(sp)
    lwz     r3, 0x10(r29)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r27
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
branch_0x8002d6e0:
    clrlwi  r0, r28, 16
    cmpw    r0, r31
    blt+    branch_0x8002d658
    lwz     r3, 0x14(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8002d700:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x8002d71c
    lwz     r3, 0x14(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x8002d71c:
    lmw     r27, 0x28c(sp)
    lwz     r0, 0x2bc(sp)
    lfd     f31, 0x2b0(sp)
    lfd     f30, 0x2a8(sp)
    mtlr    r0
    lfd     f29, 0x2a0(sp)
    addi    sp, sp, 0x2b8
    blr


.globl JMASCos__Fs
JMASCos__Fs: # 0x8002d73c
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    blr


.globl JMASSin__Fs
JMASSin__Fs: # 0x8002d758
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    blr


.globl set__Q29JGeometry8TVec3_f_FRC3Vec
set__Q29JGeometry8TVec3_f_FRC3Vec: # 0x8002d774
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    blr


.globl __ct__10TLensFlareFPCc
__ct__10TLensFlareFPCc: # 0x8002d790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    stw     r30, 0x118(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r31)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803b
    sth     r4, 0xc(r31)
    subi    r0, r3, 0x2ef8
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    lfs     f0, -0x7718(rtoc)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x1c(r31)
    lfs     f0, -0x7714(rtoc)
    stfs    f0, 0x20(r31)
    lfs     f0, -0x7740(rtoc)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    lfs     f1, -0x7710(rtoc)
    stfs    f1, 0x2c(r31)
    lfs     f0, -0x770c(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f1, 0x34(r31)
    stfs    f1, 0x38(r31)
    lfs     f0, -0x7708(rtoc)
    stfs    f0, 0x3c(r31)
    lfs     f0, -0x7704(rtoc)
    stfs    f0, 0x40(r31)
    lfs     f0, -0x7700(rtoc)
    stfs    f0, 0x44(r31)
    lfs     f0, -0x76fc(rtoc)
    stfs    f0, 0x48(r31)
    lwz     r3, -0x7100(r13)
    lbz     r0, 0x15(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8002d860
    mr      r3, r31
    b       branch_0x8002d8c0

branch_0x8002d860:
    lis     r3, 0x8037
    lwz     r6, -0x7fa8(r13)
    addi    r7, r3, 0x56bc
    crxor   6, 6, 6
    addi    r3, sp, 0x18
    li      r4, 0x100
    subi    r5, rtoc, 0x76f8
    bl      snprintf
    addi    r3, sp, 0x18
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1002
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x10(r31)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8002d8b8
    lwz     r4, 0x10(r31)
    addi    r3, r30, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8002d8b8:
    lwz     r3, 0x8(sp)
    stw     r30, 0x14(r3)
branch_0x8002d8c0:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    mtlr    r0
    addi    sp, sp, 0x120
    blr


.globl CLBEaseOutInbetween_f___Ffff
CLBEaseOutInbetween_f___Ffff: # 0x8002d8d8
    mflr    r0
    fsubs   f4, f1, f2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      CLBTwoDegreeGeneralInbetween_f___Fffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

