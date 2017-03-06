
.globl __dt__15TMtxCalcFootInvFv
__dt__15TMtxCalcFootInvFv: # 0x800452e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    lis     r3, 0x803b
    subi    r3, r3, 0xe00
    beq-    branch_0x80045390
    addi    r0, r3, 0x28
    stw     r0, 0x4c(r30)
    addi    r5, r3, 0x5c
    addi    r3, r3, 0x4c
    lwz     r4, 0x0(r30)
    addi    r0, r30, 0x78
    stw     r5, 0x0(r4)
    stw     r3, 0x54(r30)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x80045380
    lis     r3, 0x803b
    subi    r3, r3, 0xd64
    stw     r3, 0x4c(r30)
    addi    r6, r3, 0x34
    addi    r5, r3, 0x24
    lwz     r4, 0x0(r30)
    addi    r0, r30, 0x68
    addi    r3, r30, 0x50
    stw     r6, 0x0(r4)
    li      r4, 0x0
    stw     r5, 0x54(r30)
    lwz     r5, 0x0(r30)
    subf    r0, r5, r0
    stw     r0, 0x4(r5)
    bl      __dt__13J3DMtxCalcAnmFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__19J3DMtxCalcSoftimageFv
branch_0x80045380:
    extsh.  r0, r31
    ble-    branch_0x80045390
    mr      r3, r30
    bl      __dl__FPv
branch_0x80045390:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13J3DMtxCalcAnmFv
__dt__13J3DMtxCalcAnmFv: # 0x800453ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr.     r31, r3
    beq-    branch_0x80045414
    lis     r3, 0x803e
    addi    r3, r3, 0x938
    stw     r3, 0x4(r31)
    addi    r7, r3, 0x10
    addi    r5, r31, 0x18
    lwz     r6, 0x0(r31)
    li      r3, 0x0
    extsh.  r0, r4
    stw     r7, 0x0(r6)
    lwz     r4, 0x0(r31)
    subf    r0, r4, r5
    stw     r0, 0x4(r4)
    stw     r3, 0x8(r31)
    lfs     f0, -0x7018(rtoc)
    stfs    f0, 0x10(r31)
    stw     r3, 0xc(r31)
    stfs    f0, 0x14(r31)
    ble-    branch_0x80045414
    mr      r3, r31
    bl      __dl__FPv
branch_0x80045414:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf
init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf: # 0x8004542c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    addi    r7, r3, 0x47b8
    lis     r3, 0x8040
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r4)
    lwz     r6, 0x4(r4)
    stw     r0, 0x0(r7)
    addi    r0, r3, 0x4788
    mr      r3, r5
    stw     r6, 0x4(r7)
    lwz     r5, 0x8(r4)
    mr      r4, r0
    stw     r5, 0x8(r7)
    bl      PSMTXCopy
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__15TMtxCalcFootInvFUs
calc__15TMtxCalcFootInvFUs: # 0x8004547c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x50
    bl      calc__13J3DMtxCalcAnmFUs
    lhz     r6, 0x6c(r30)
    clrlwi  r0, r31, 16
    cmplw   r6, r0
    bne-    branch_0x800454cc
    lis     r3, 0x8040
    lhz     r4, 0x68(r30)
    addi    r3, r3, 0x45dc
    lhz     r5, 0x6a(r30)
    lwz     r3, 0x38(r3)
    lfs     f1, 0x74(r30)
    bl      FeetInvCalc__FP8J3DModelUsUsUsf
branch_0x800454cc:
    lhz     r6, 0x72(r30)
    clrlwi  r0, r31, 16
    cmplw   r6, r0
    bne-    branch_0x800454f8
    lis     r3, 0x8040
    lhz     r4, 0x6e(r30)
    addi    r3, r3, 0x45dc
    lhz     r5, 0x70(r30)
    lwz     r3, 0x38(r3)
    lfs     f1, 0x74(r30)
    bl      FeetInvCalc__FP8J3DModelUsUsUsf
branch_0x800454f8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__15TMtxCalcFootInvFUsUsUsUsUsUsf
__ct__15TMtxCalcFootInvFUsUsUsUsUsUsf: # 0x80045510
    mflr    r0
    stw     r0, 0x4(sp)
    extsh.  r0, r4
    lis     r4, 0x803b
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f1
    stmw    r23, 0x2c(sp)
    addi    r23, r3, 0x0
    addi    r24, r5, 0x0
    addi    r25, r6, 0x0
    addi    r26, r7, 0x0
    addi    r27, r8, 0x0
    addi    r28, r9, 0x0
    addi    r29, r10, 0x0
    subi    r30, r4, 0xe00
    beq-    branch_0x8004556c
    addi    r4, r23, 0x78
    stw     r4, 0x0(r23)
    lis     r3, 0x803b
    subi    r0, r3, 0xf38
    stw     r4, 0x50(r23)
    stw     r0, 0x78(r23)
branch_0x8004556c:
    stw     r23, 0x20(sp)
    mr      r3, r23
    li      r4, 0x0
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r3, r3, 0x8b0
    stw     r3, 0x4c(r23)
    addi    r6, r3, 0x24
    addi    r0, r23, 0x50
    lwz     r3, 0x0(r23)
    li      r4, 0x0
    li      r5, 0x0
    stw     r6, 0x0(r3)
    lwz     r3, 0x0(r23)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    lwz     r31, 0x20(sp)
    addi    r3, r31, 0x50
    bl      __ct__13J3DMtxCalcAnmFP15J3DAnmTransform
    lis     r3, 0x803b
    subi    r3, r3, 0xd64
    stw     r3, 0x4c(r31)
    addi    r4, r3, 0x34
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r31)
    addi    r7, r31, 0x68
    addi    r5, r30, 0x28
    stw     r4, 0x0(r3)
    addi    r6, r30, 0x5c
    addi    r4, r30, 0x4c
    stw     r0, 0x54(r31)
    addi    r0, r23, 0x78
    addi    r3, r23, 0x0
    lwz     r8, 0x0(r31)
    subf    r7, r8, r7
    stw     r7, 0x4(r8)
    stw     r5, 0x4c(r23)
    lwz     r5, 0x0(r23)
    stw     r6, 0x0(r5)
    stw     r4, 0x54(r23)
    lwz     r4, 0x0(r23)
    subf    r0, r4, r0
    stw     r0, 0x4(r4)
    sth     r24, 0x68(r23)
    sth     r25, 0x6a(r23)
    sth     r26, 0x6c(r23)
    sth     r27, 0x6e(r23)
    sth     r28, 0x70(r23)
    sth     r29, 0x72(r23)
    stfs    f31, 0x74(r23)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lmw     r23, 0x2c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__22J3DMtxCalcSoftimageAnmFv
__dt__22J3DMtxCalcSoftimageAnmFv: # 0x8004564c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr.     r31, r3
    beq-    branch_0x80045740
    lis     r3, 0x803b
    subi    r3, r3, 0xd64
    stw     r3, 0x4c(r31)
    addi    r7, r3, 0x34
    addi    r3, r3, 0x24
    lwz     r5, 0x0(r31)
    addi    r6, r31, 0x68
    addic.  r0, r31, 0x50
    stw     r7, 0x0(r5)
    stw     r3, 0x54(r31)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r6
    stw     r0, 0x4(r3)
    beq-    branch_0x800456d8
    lis     r3, 0x803e
    addi    r3, r3, 0x938
    stw     r3, 0x54(r31)
    addi    r5, r3, 0x10
    li      r0, 0x0
    lwz     r3, 0x50(r31)
    stw     r5, 0x0(r3)
    lwz     r5, 0x50(r31)
    subf    r3, r5, r6
    stw     r3, 0x4(r5)
    stw     r0, 0x58(r31)
    lfs     f0, -0x7018(rtoc)
    stfs    f0, 0x60(r31)
    stw     r0, 0x5c(r31)
    stfs    f0, 0x64(r31)
branch_0x800456d8:
    cmplwi  r31, 0x0
    beq-    branch_0x80045730
    lis     r3, 0x803e
    addi    r3, r3, 0x8b0
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    addi    r5, r31, 0x50
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
    beq-    branch_0x80045730
    lis     r3, 0x803e
    addi    r3, r3, 0x8f4
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
branch_0x80045730:
    extsh.  r0, r4
    ble-    branch_0x80045740
    mr      r3, r31
    bl      __dl__FPv
branch_0x80045740:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__13J3DMtxCalcAnmFP15J3DAnmTransform
__ct__13J3DMtxCalcAnmFP15J3DAnmTransform: # 0x80045758
    extsh.  r0, r4
    beq-    branch_0x80045774
    addi    r0, r3, 0x18
    lis     r4, 0x803b
    stw     r0, 0x0(r3)
    subi    r0, r4, 0xf38
    stw     r0, 0x18(r3)
branch_0x80045774:
    lis     r4, 0x803e
    addi    r4, r4, 0x938
    stw     r4, 0x4(r3)
    addi    r7, r4, 0x10
    addi    r4, r3, 0x18
    lwz     r6, 0x0(r3)
    li      r0, 0x0
    stw     r7, 0x0(r6)
    lwz     r6, 0x0(r3)
    subf    r4, r6, r4
    stw     r4, 0x4(r6)
    stw     r0, 0x8(r3)
    lfs     f0, -0x7018(rtoc)
    stfs    f0, 0x10(r3)
    stw     r0, 0xc(r3)
    stfs    f0, 0x14(r3)
    stw     r5, 0x8(r3)
    blr


.globl FeetInvCalc__FP8J3DModelUsUsUsf
FeetInvCalc__FP8J3DModelUsUsUsf: # 0x800457bc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 16
    mulli   r0, r0, 0x30
    stwu    sp, -0x280(sp)
    stfd    f31, 0x278(sp)
    stfd    f30, 0x270(sp)
    stfd    f29, 0x268(sp)
    stfd    f28, 0x260(sp)
    fmr     f28, f1
    stw     r31, 0x25c(sp)
    stw     r30, 0x258(sp)
    stw     r29, 0x254(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x250(sp)
    addi    r28, r4, 0x0
    lwz     r3, 0x58(r3)
    add     r31, r3, r0
    lfs     f0, 0xc(r31)
    clrlwi  r0, r6, 16
    mulli   r0, r0, 0x30
    stfs    f0, 0x230(sp)
    lfs     f0, 0x1c(r31)
    add     r30, r3, r0
    stfs    f0, 0x234(sp)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x238(sp)
    lfs     f0, 0xc(r30)
    stfs    f0, 0x224(sp)
    lfs     f0, 0x1c(r30)
    stfs    f0, 0x228(sp)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x22c(sp)
    lwz     r0, 0x224(sp)
    lwz     r3, 0x228(sp)
    stw     r0, 0x218(sp)
    lwz     r0, 0x22c(sp)
    stw     r3, 0x21c(sp)
    lfs     f0, 0x230(sp)
    stw     r0, 0x220(sp)
    lfs     f1, 0x218(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x218(sp)
    lfs     f1, 0x21c(sp)
    lfs     f0, 0x234(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x21c(sp)
    lfs     f1, 0x220(sp)
    lfs     f0, 0x238(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x220(sp)
    lfs     f1, 0x218(sp)
    lfs     f3, 0x220(sp)
    lfs     f0, 0x21c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x7014(rtoc)
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x800458bc
    b       branch_0x800458e0

branch_0x800458bc:
    frsqrte f3, f31
    lfs     f2, -0x7010(rtoc)
    lfs     f0, -0x700c(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x800458e0:
    lfs     f29, 0x228(sp)
    addi    r4, sp, 0x214
    lwz     r3, -0x6328(r13)
    fadds   f2, f29, f31
    lfs     f1, 0x224(sp)
    lfs     f3, 0x22c(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fadds   f0, f1, f28
    fcmpo   cr0, f0, f29
    blt-    branch_0x8004618c
    stfs    f0, 0x228(sp)
    clrlwi  r0, r28, 16
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r29)
    add     r29, r3, r0
    lfs     f0, 0xc(r29)
    stfs    f0, 0x208(sp)
    lfs     f0, 0x1c(r29)
    stfs    f0, 0x20c(sp)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x210(sp)
    lwz     r0, 0x230(sp)
    lwz     r3, 0x234(sp)
    stw     r0, 0x1fc(sp)
    lwz     r0, 0x238(sp)
    stw     r3, 0x200(sp)
    lfs     f0, 0x208(sp)
    stw     r0, 0x204(sp)
    lfs     f1, 0x1fc(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x200(sp)
    lfs     f6, 0x20c(sp)
    fsubs   f0, f0, f6
    stfs    f0, 0x200(sp)
    lfs     f0, 0x204(sp)
    lfs     f7, 0x210(sp)
    fsubs   f0, f0, f7
    stfs    f0, 0x204(sp)
    lfs     f2, 0x1fc(sp)
    lfs     f0, 0x200(sp)
    fmuls   f4, f2, f2
    lfs     f1, 0x204(sp)
    fmuls   f3, f0, f0
    lfs     f2, -0x7014(rtoc)
    fmuls   f5, f1, f1
    fadds   f3, f4, f3
    fadds   f30, f5, f3
    fcmpo   cr0, f30, f2
    cror    2, 0, 2
    bne-    branch_0x800459b0
    b       branch_0x800459d4

branch_0x800459b0:
    frsqrte f5, f30
    lfs     f4, -0x7010(rtoc)
    lfs     f2, -0x700c(rtoc)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f2, f30, f3, f2
    fmuls   f2, f4, f2
    fmuls   f30, f30, f2
branch_0x800459d4:
    lwz     r0, 0x224(sp)
    lwz     r3, 0x228(sp)
    stw     r0, 0x1ec(sp)
    lwz     r0, 0x22c(sp)
    stw     r3, 0x1f0(sp)
    lfs     f2, 0x208(sp)
    stw     r0, 0x1f4(sp)
    lfs     f3, 0x1ec(sp)
    fsubs   f2, f3, f2
    stfs    f2, 0x1ec(sp)
    lfs     f2, 0x1f0(sp)
    fsubs   f2, f2, f6
    stfs    f2, 0x1f0(sp)
    lfs     f2, 0x1f4(sp)
    fsubs   f2, f2, f7
    stfs    f2, 0x1f4(sp)
    lfs     f2, 0x1ec(sp)
    lfs     f6, 0x1f0(sp)
    fmuls   f4, f2, f2
    lfs     f7, 0x1f4(sp)
    fmuls   f3, f6, f6
    lfs     f2, -0x7014(rtoc)
    fmuls   f5, f7, f7
    fadds   f3, f4, f3
    fadds   f29, f5, f3
    fcmpo   cr0, f29, f2
    cror    2, 0, 2
    bne-    branch_0x80045a48
    b       branch_0x80045a6c

branch_0x80045a48:
    frsqrte f5, f29
    lfs     f4, -0x7010(rtoc)
    lfs     f2, -0x700c(rtoc)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f2, f29, f3, f2
    fmuls   f2, f4, f2
    fmuls   f29, f29, f2
branch_0x80045a6c:
    fmuls   f3, f7, f0
    lfs     f9, 0x1ec(sp)
    lfs     f8, 0x1fc(sp)
    fmuls   f2, f6, f0
    fmuls   f4, f9, f1
    fmsubs  f5, f6, f1, f3
    addi    r3, sp, 0x104
    fmuls   f3, f6, f8
    fmadds  f2, f9, f8, f2
    fmsubs  f4, f7, f8, f4
    stfs    f5, 0x104(sp)
    fmsubs  f0, f9, f0, f3
    fmadds  f28, f7, f1, f2
    stfs    f4, 0x108(sp)
    stfs    f0, 0x10c(sp)
    bl      MsVECMag2__FP3Vec
    fmr     f2, f1
    fmr     f1, f28
    bl      matan__Fff
    fmuls   f1, f31, f31
    lfs     f0, -0x7004(rtoc)
    extsh   r0, r3
    lfd     f5, -0x6fd8(rtoc)
    fmuls   f0, f0, f30
    fmadds  f1, f30, f30, f1
    xoris   r0, r0, 0x8000
    fmuls   f0, f0, f31
    stw     r0, 0x24c(sp)
    lis     r28, 0x4330
    fnmsubs  f2, f29, f29, f1
    stw     r28, 0x248(sp)
    lfs     f3, -0x7008(rtoc)
    lfd     f4, 0x248(sp)
    fdivs   f2, f2, f0
    lfs     f1, -0x7018(rtoc)
    fsubs   f0, f4, f5
    fcmpu   cr0, f1, f2
    fmuls   f0, f3, f0
    fabs    f28, f0
    bne-    branch_0x80045b14
    lfs     f1, -0x7014(rtoc)
    b       branch_0x80045b70

branch_0x80045b14:
    lfs     f0, -0x7000(rtoc)
    fcmpu   cr0, f0, f2
    bne-    branch_0x80045b28
    lfs     f1, -0x6ffc(rtoc)
    b       branch_0x80045b70

branch_0x80045b28:
    fnmsubs  f1, f2, f2, f1
    frsqrte f0, f1
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xb8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6fd8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x7008(rtoc)
    stw     r0, 0x24c(sp)
    lfs     f0, -0x6ff8(rtoc)
    stw     r28, 0x248(sp)
    lfd     f2, 0x248(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x80045b70:
    lfs     f0, -0x6ff4(rtoc)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f0, f1
    lwz     r4, -0x5ea8(r13)
    lfs     f1, -0x7018(rtoc)
    fctiwz  f0, f0
    stfd    f0, 0x248(sp)
    lwz     r3, 0x24c(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f31, f0
    fdivs   f0, f0, f29
    fcmpu   cr0, f1, f0
    fmr     f2, f0
    bne-    branch_0x80045bbc
    lfs     f0, -0x6ff8(rtoc)
    b       branch_0x80045c14

branch_0x80045bbc:
    lfs     f0, -0x7000(rtoc)
    fcmpu   cr0, f0, f2
    bne-    branch_0x80045bd0
    lfs     f0, -0x6ff0(rtoc)
    b       branch_0x80045c14

branch_0x80045bd0:
    fnmsubs  f1, f2, f2, f1
    frsqrte f0, f1
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0xb4(sp)
    lfs     f1, 0xb4(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6fd8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x7008(rtoc)
    stw     r0, 0x24c(sp)
    lis     r0, 0x4330
    stw     r0, 0x248(sp)
    lfd     f1, 0x248(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
branch_0x80045c14:
    fsubs   f0, f0, f28
    lfs     f3, -0x6ff4(rtoc)
    lwz     r0, -0x5eac(r13)
    mr      r3, r29
    lwz     r8, -0x5ea8(r13)
    fneg    f2, f0
    lwz     r6, -0x5ea4(r13)
    lfs     f1, -0x7014(rtoc)
    mr      r5, r29
    lfs     f0, -0x7018(rtoc)
    fmuls   f2, f3, f2
    addi    r4, sp, 0x1ac
    fctiwz  f2, f2
    stfd    f2, 0x248(sp)
    lwz     r7, 0x24c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f2, f3
    stfs    f4, 0x1ac(sp)
    stfs    f2, 0x1b0(sp)
    stfs    f1, 0x1b4(sp)
    stfs    f1, 0x1b8(sp)
    stfs    f3, 0x1bc(sp)
    stfs    f4, 0x1c0(sp)
    stfs    f1, 0x1c4(sp)
    stfs    f1, 0x1c8(sp)
    stfs    f1, 0x1cc(sp)
    stfs    f1, 0x1d0(sp)
    stfs    f0, 0x1d4(sp)
    stfs    f1, 0x1d8(sp)
    bl      PSMTXConcat
    lfs     f2, 0x20(r29)
    lfs     f1, 0x10(r29)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x1a0(sp)
    stfs    f1, 0x1a4(sp)
    stfs    f2, 0x1a8(sp)
    lfs     f1, 0x1a0(sp)
    lfs     f3, 0x1a8(sp)
    lfs     f0, 0x1a4(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6fec(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80045cf8
    lfs     f0, -0x7014(rtoc)
    stfs    f0, 0x1a8(sp)
    stfs    f0, 0x1a4(sp)
    stfs    f0, 0x1a0(sp)
    b       branch_0x80045d28

branch_0x80045cf8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x7018(rtoc)
    lfs     f0, 0x1a0(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1a0(sp)
    lfs     f0, 0x1a4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a4(sp)
    lfs     f0, 0x1a8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a8(sp)
branch_0x80045d28:
    lfs     f0, 0x1a0(sp)
    addi    r3, sp, 0xa4
    addi    r4, sp, 0x1a0
    fmuls   f0, f0, f30
    stfs    f0, 0x1a0(sp)
    lfs     f0, 0x1a4(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x1a4(sp)
    lfs     f0, 0x1a8(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x1a8(sp)
    lwz     r0, 0x208(sp)
    lwz     r5, 0x20c(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x210(sp)
    stw     r5, 0xa8(sp)
    stw     r0, 0xac(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xa4(sp)
    lwz     r3, 0xa8(sp)
    stw     r0, 0x230(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x234(sp)
    stw     r0, 0x238(sp)
    lfs     f0, 0x230(sp)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x234(sp)
    stfs    f0, 0x1c(r31)
    lfs     f1, 0x238(sp)
    stfs    f1, 0x2c(r31)
    lwz     r0, 0x224(sp)
    lwz     r3, 0x228(sp)
    stw     r0, 0x194(sp)
    lwz     r0, 0x22c(sp)
    stw     r3, 0x198(sp)
    lfs     f2, -0x7014(rtoc)
    stw     r0, 0x19c(sp)
    lfs     f4, 0x8(r31)
    lfs     f3, 0x18(r31)
    fmuls   f4, f4, f4
    lfs     f5, 0x28(r31)
    fmuls   f3, f3, f3
    fmuls   f5, f5, f5
    fadds   f3, f4, f3
    fadds   f28, f5, f3
    fcmpo   cr0, f28, f2
    ble-    branch_0x80045e10
    frsqrte f5, f28
    lfd     f4, -0x6fe8(rtoc)
    lfd     f2, -0x6fe0(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f2, f28, f3, f2
    fmul    f2, f4, f2
    fmul    f2, f28, f2
    frsp    f2, f2
    stfs    f2, 0xa0(sp)
    lfs     f28, 0xa0(sp)
branch_0x80045e10:
    lfs     f3, 0x0(r31)
    lfs     f2, 0x10(r31)
    fmuls   f4, f3, f3
    lfs     f5, 0x20(r31)
    fmuls   f3, f2, f2
    lfs     f2, -0x7014(rtoc)
    fmuls   f5, f5, f5
    fadds   f3, f4, f3
    fadds   f29, f5, f3
    fcmpo   cr0, f29, f2
    ble-    branch_0x80045e68
    frsqrte f5, f29
    lfd     f4, -0x6fe8(rtoc)
    lfd     f2, -0x6fe0(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f2, f29, f3, f2
    fmul    f2, f4, f2
    fmul    f2, f29, f2
    frsp    f2, f2
    stfs    f2, 0x9c(sp)
    lfs     f29, 0x9c(sp)
branch_0x80045e68:
    lfs     f3, 0x194(sp)
    lfs     f2, 0x230(sp)
    fsubs   f2, f3, f2
    stfs    f2, 0x194(sp)
    lfs     f2, 0x198(sp)
    fsubs   f0, f2, f0
    stfs    f0, 0x198(sp)
    lfs     f0, 0x19c(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x19c(sp)
    lfs     f1, 0x194(sp)
    lfs     f0, 0x198(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x19c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6fec(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80045ed4
    lfs     f0, -0x7014(rtoc)
    stfs    f0, 0x19c(sp)
    stfs    f0, 0x198(sp)
    stfs    f0, 0x194(sp)
    b       branch_0x80045f04

branch_0x80045ed4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x7018(rtoc)
    lfs     f0, 0x194(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x194(sp)
    lfs     f0, 0x198(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x198(sp)
    lfs     f0, 0x19c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x19c(sp)
branch_0x80045f04:
    lfs     f0, 0x194(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x194(sp)
    lfs     f0, 0x198(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x198(sp)
    lfs     f0, 0x19c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x19c(sp)
    lfs     f0, 0x194(sp)
    stfs    f0, 0x0(r31)
    lfs     f8, 0x198(sp)
    stfs    f8, 0x10(r31)
    lfs     f7, 0x19c(sp)
    stfs    f7, 0x20(r31)
    lfs     f6, 0x24(r31)
    lfs     f9, 0x194(sp)
    lfs     f4, 0x4(r31)
    fmuls   f2, f9, f6
    lfs     f5, 0x14(r31)
    fmuls   f1, f8, f4
    lfs     f0, -0x6fec(rtoc)
    fmuls   f3, f7, f5
    fmsubs  f30, f7, f4, f2
    fmsubs  f31, f9, f5, f1
    fmsubs  f29, f8, f6, f3
    fmuls   f1, f30, f30
    fmadds  f1, f29, f29, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80045f94
    lfs     f0, -0x7014(rtoc)
    fmr     f2, f0
    fmr     f1, f2
    b       branch_0x80045fac

branch_0x80045f94:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7018(rtoc)
    fmuls   f0, f0, f1
    fmuls   f1, f29, f0
    fmuls   f2, f30, f0
    fmuls   f0, f31, f0
branch_0x80045fac:
    fmuls   f1, f1, f28
    fmuls   f2, f2, f28
    fmuls   f0, f0, f28
    stfs    f1, 0x8(r31)
    stfs    f2, 0x18(r31)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x224(sp)
    stfs    f0, 0xc(r30)
    lfs     f0, 0x228(sp)
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x22c(sp)
    stfs    f0, 0x2c(r30)
    lwz     r4, 0x214(sp)
    lfs     f1, -0x7014(rtoc)
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x16c(sp)
    lfs     f2, 0x4(r30)
    lfs     f0, 0x14(r30)
    lfs     f3, 0x24(r30)
    fmuls   f2, f2, f2
    fmuls   f0, f0, f0
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x80046050
    frsqrte f4, f0
    lfd     f3, -0x6fe8(rtoc)
    lfd     f1, -0x6fe0(rtoc)
    fmul    f2, f4, f4
    fmul    f3, f3, f4
    fnmsub   f1, f0, f2, f1
    fmul    f1, f3, f1
    fmul    f0, f0, f1
    frsp    f0, f0
    stfs    f0, 0x80(sp)
    lfs     f0, 0x80(sp)
branch_0x80046050:
    lfs     f2, 0x0(r30)
    lfs     f1, 0x10(r30)
    fmuls   f3, f2, f2
    lfs     f4, 0x20(r30)
    fmuls   f2, f1, f1
    lfs     f1, -0x7014(rtoc)
    fmuls   f4, f4, f4
    fadds   f2, f3, f2
    fadds   f28, f4, f2
    fcmpo   cr0, f28, f1
    ble-    branch_0x800460a8
    frsqrte f4, f28
    lfd     f3, -0x6fe8(rtoc)
    lfd     f1, -0x6fe0(rtoc)
    fmul    f2, f4, f4
    fmul    f3, f3, f4
    fnmsub   f1, f28, f2, f1
    fmul    f1, f3, f1
    fmul    f1, f28, f1
    frsp    f1, f1
    stfs    f1, 0x7c(sp)
    lfs     f28, 0x7c(sp)
branch_0x800460a8:
    lfs     f1, 0x164(sp)
    fneg    f1, f1
    stfs    f1, 0x164(sp)
    lfs     f1, 0x168(sp)
    fneg    f1, f1
    stfs    f1, 0x168(sp)
    lfs     f1, 0x16c(sp)
    fneg    f1, f1
    stfs    f1, 0x16c(sp)
    lfs     f1, 0x164(sp)
    fmuls   f1, f1, f0
    stfs    f1, 0x164(sp)
    lfs     f1, 0x168(sp)
    fmuls   f1, f1, f0
    stfs    f1, 0x168(sp)
    lfs     f1, 0x16c(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x16c(sp)
    lfs     f0, 0x164(sp)
    stfs    f0, 0x4(r30)
    lfs     f8, 0x168(sp)
    stfs    f8, 0x14(r30)
    lfs     f7, 0x16c(sp)
    stfs    f7, 0x24(r30)
    lfs     f6, 0x28(r30)
    lfs     f9, 0x164(sp)
    lfs     f4, 0x8(r30)
    fmuls   f2, f9, f6
    lfs     f5, 0x18(r30)
    fmuls   f1, f8, f4
    lfs     f0, -0x6fec(rtoc)
    fmuls   f3, f7, f5
    fmsubs  f30, f7, f4, f2
    fmsubs  f31, f9, f5, f1
    fmsubs  f29, f8, f6, f3
    fmuls   f1, f30, f30
    fmadds  f1, f29, f29, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8004615c
    lfs     f0, -0x7014(rtoc)
    fmr     f2, f0
    fmr     f1, f2
    b       branch_0x80046174

branch_0x8004615c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7018(rtoc)
    fmuls   f0, f0, f1
    fmuls   f1, f29, f0
    fmuls   f2, f30, f0
    fmuls   f0, f31, f0
branch_0x80046174:
    fmuls   f1, f1, f28
    fmuls   f2, f2, f28
    fmuls   f0, f0, f28
    stfs    f1, 0x0(r30)
    stfs    f2, 0x10(r30)
    stfs    f0, 0x20(r30)
branch_0x8004618c:
    lwz     r0, 0x284(sp)
    lfd     f31, 0x278(sp)
    lfd     f30, 0x270(sp)
    mtlr    r0
    lfd     f29, 0x268(sp)
    lfd     f28, 0x260(sp)
    lwz     r31, 0x25c(sp)
    lwz     r30, 0x258(sp)
    lwz     r29, 0x254(sp)
    lwz     r28, 0x250(sp)
    addi    sp, sp, 0x280
    blr


.globl calc__22J3DMtxCalcSoftimageAnmFUs
calc__22J3DMtxCalcSoftimageAnmFUs: # 0x800461bc
    mflr    r0
    addi    r3, r3, 0x50
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      calc__13J3DMtxCalcAnmFUs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl _104_4_calc__22J3DMtxCalcSoftimageAnmFUs
_104_4_calc__22J3DMtxCalcSoftimageAnmFUs: # 0x800461e0
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calc__22J3DMtxCalcSoftimageAnmFUs


.globl _104_4_calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo
_104_4_calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo: # 0x800461f4
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo


.globl _104_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode
_104_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode: # 0x80046208
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       recursiveEntry__15J3DMtxCalcBasicFP7J3DNode


.globl _104_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode
_104_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode: # 0x8004621c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       recursiveCalc__15J3DMtxCalcBasicFP7J3DNode


.globl _104_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode
_104_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode: # 0x80046230
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode


.globl _104_4_init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf
_104_4_init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf: # 0x80046244
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf


.globl _80_calc__22J3DMtxCalcSoftimageAnmFUs
_80_calc__22J3DMtxCalcSoftimageAnmFUs: # 0x80046258
    subi    r3, r3, 0x50
    b       calc__22J3DMtxCalcSoftimageAnmFUs


.globl _80___dt__22J3DMtxCalcSoftimageAnmFv
_80___dt__22J3DMtxCalcSoftimageAnmFv: # 0x80046260
    subi    r3, r3, 0x50
    b       __dt__22J3DMtxCalcSoftimageAnmFv


.globl _120_4_calc__15TMtxCalcFootInvFUs
_120_4_calc__15TMtxCalcFootInvFUs: # 0x80046268
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x78
    b       calc__15TMtxCalcFootInvFUs


.globl _120_4_calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo
_120_4_calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo: # 0x8004627c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x78
    b       calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo


.globl _120_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode
_120_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode: # 0x80046290
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x78
    b       recursiveEntry__15J3DMtxCalcBasicFP7J3DNode


.globl _120_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode
_120_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode: # 0x800462a4
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x78
    b       recursiveCalc__15J3DMtxCalcBasicFP7J3DNode


.globl _120_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode
_120_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode: # 0x800462b8
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x78
    b       recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode


.globl _120_4_init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf
_120_4_init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf: # 0x800462cc
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x78
    b       init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf


.globl _80_calc__15TMtxCalcFootInvFUs
_80_calc__15TMtxCalcFootInvFUs: # 0x800462e0
    subi    r3, r3, 0x50
    b       calc__15TMtxCalcFootInvFUs


.globl _80___dt__15TMtxCalcFootInvFv
_80___dt__15TMtxCalcFootInvFv: # 0x800462e8
    subi    r3, r3, 0x50
    b       __dt__15TMtxCalcFootInvFv

