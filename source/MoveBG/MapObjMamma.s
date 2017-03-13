
.globl __dt__8TSandEggFv
__dt__8TSandEggFv: # 0x801cef88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ceff0
    lis     r3, 0x803d
    subi    r3, r3, 0x11c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cefe0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cefe0:
    extsh.  r0, r31
    ble-    branch_0x801ceff0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ceff0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getSDLModelFlag__8TSandEggCFv
getSDLModelFlag__8TSandEggCFv: # 0x801cf00c
    li      r3, 0x0
    blr


.globl __ct__23TMammaMirrorMapOperatorFPCc
__ct__23TMammaMirrorMapOperatorFPCc: # 0x801cf014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r29, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r29)
    stw     r4, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r29)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r29)
    li      r30, 0x0
    lis     r3, 0x803d
    sth     r30, 0xc(r29)
    subi    r0, r3, 0x1038
    lis     r3, 0x8002
    addi    r31, r3, 0x10dc
    stw     r0, 0x0(r29)
    addi    r4, r31, 0x0
    addi    r3, r29, 0x30
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x8
    bl      __construct_array
    addi    r4, r31, 0x0
    addi    r3, r29, 0xb8
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x3
    bl      __construct_array
    stw     r30, 0x10(r29)
    mr      r3, r29
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x38(r29)
    stfs    f0, 0x34(r29)
    stfs    f0, 0x30(r29)
    stfs    f0, 0x90(r29)
    stb     r30, 0xb0(r29)
    stw     r30, 0x14(r29)
    stfs    f0, 0x44(r29)
    stfs    f0, 0x40(r29)
    stfs    f0, 0x3c(r29)
    stfs    f0, 0x94(r29)
    stb     r30, 0xb1(r29)
    stw     r30, 0x18(r29)
    stfs    f0, 0x50(r29)
    stfs    f0, 0x4c(r29)
    stfs    f0, 0x48(r29)
    stfs    f0, 0x98(r29)
    stb     r30, 0xb2(r29)
    stw     r30, 0x1c(r29)
    stfs    f0, 0x5c(r29)
    stfs    f0, 0x58(r29)
    stfs    f0, 0x54(r29)
    stfs    f0, 0x9c(r29)
    stb     r30, 0xb3(r29)
    stw     r30, 0x20(r29)
    stfs    f0, 0x68(r29)
    stfs    f0, 0x64(r29)
    stfs    f0, 0x60(r29)
    stfs    f0, 0xa0(r29)
    stb     r30, 0xb4(r29)
    stw     r30, 0x24(r29)
    stfs    f0, 0x74(r29)
    stfs    f0, 0x70(r29)
    stfs    f0, 0x6c(r29)
    stfs    f0, 0xa4(r29)
    stb     r30, 0xb5(r29)
    stw     r30, 0x28(r29)
    stfs    f0, 0x80(r29)
    stfs    f0, 0x7c(r29)
    stfs    f0, 0x78(r29)
    stfs    f0, 0xa8(r29)
    stb     r30, 0xb6(r29)
    stw     r30, 0x2c(r29)
    stfs    f0, 0x8c(r29)
    stfs    f0, 0x88(r29)
    stfs    f0, 0x84(r29)
    stfs    f0, 0xac(r29)
    stb     r30, 0xb7(r29)
    stfs    f0, 0xc0(r29)
    stfs    f0, 0xbc(r29)
    stfs    f0, 0xb8(r29)
    stfs    f0, 0xcc(r29)
    stfs    f0, 0xc8(r29)
    stfs    f0, 0xc4(r29)
    stfs    f0, 0xd8(r29)
    stfs    f0, 0xd4(r29)
    stfs    f0, 0xd0(r29)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl loadAfter__23TMammaMirrorMapOperatorFv
loadAfter__23TMammaMirrorMapOperatorFv: # 0x801cf1b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    addi    r31, r3, 0x0
    subi    r3, rtoc, 0x2864
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x2864
    mtlr    r12
    blrl
    lfs     f0, 0x10(r3)
    stfs    f0, 0xb8(r31)
    lfs     f0, 0x14(r3)
    stfs    f0, 0xbc(r31)
    lfs     f0, 0x18(r3)
    subi    r3, rtoc, 0x285c
    stfs    f0, 0xc0(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x285c
    mtlr    r12
    blrl
    lfs     f0, 0x10(r3)
    stfs    f0, 0xc4(r31)
    lfs     f0, 0x14(r3)
    stfs    f0, 0xc8(r31)
    lfs     f0, 0x18(r3)
    subi    r3, rtoc, 0x2854
    stfs    f0, 0xcc(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x2854
    mtlr    r12
    blrl
    lfs     f0, 0x10(r3)
    lis     r4, 0x8039
    addi    r30, r4, 0x1b20
    stfs    f0, 0xd0(r31)
    lfs     f0, 0x14(r3)
    stfs    f0, 0xd4(r31)
    lfs     f0, 0x18(r3)
    mr      r3, r30
    stfs    f0, 0xd8(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    bl      getModelData__13TMapStaticObjCFv
    lwz     r3, 0x20(r3)
    li      r0, 0x4
    mtctr   r0
    lfs     f6, -0x284c(rtoc)
    lwz     r7, 0x8(r3)
    lfs     f2, -0x2848(rtoc)
    li      r8, 0x0
    lfs     f0, -0x2844(rtoc)
    li      r3, 0x0
    li      r4, 0x0
branch_0x801cf2f8:
    add     r6, r31, r4
    stw     r7, 0x10(r6)
    add     r5, r31, r3
    lfs     f3, 0x4c(r7)
    lfs     f1, 0x40(r7)
    lfs     f4, 0x50(r7)
    fadds   f1, f3, f1
    lfs     f3, 0x44(r7)
    lfs     f5, 0x54(r7)
    fadds   f3, f4, f3
    lfs     f4, 0x48(r7)
    fmuls   f1, f6, f1
    fadds   f4, f5, f4
    fmuls   f3, f6, f3
    stfs    f1, 0x30(r5)
    fmuls   f1, f6, f4
    stfs    f3, 0x34(r5)
    stfs    f1, 0x38(r5)
    lfs     f5, 0x4c(r7)
    lfs     f4, 0x40(r7)
    lfs     f3, 0x54(r7)
    lfs     f1, 0x48(r7)
    fsubs   f4, f5, f4
    fsubs   f1, f3, f1
    fmuls   f3, f6, f4
    fmuls   f1, f6, f1
    fcmpo   cr0, f3, f1
    ble-    branch_0x801cf370
    stfs    f3, 0x90(r6)
    b       branch_0x801cf374

branch_0x801cf370:
    stfs    f1, 0x90(r6)
branch_0x801cf374:
    addi    r5, r6, 0x90
    lfs     f1, 0x90(r6)
    fadds   f1, f1, f2
    stfs    f1, 0x90(r6)
    lfs     f1, 0x90(r6)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801cf394
    stfs    f0, 0x0(r5)
branch_0x801cf394:
    addi    r4, r4, 0x4
    lwz     r7, 0x14(r7)
    add     r6, r31, r4
    stw     r7, 0x10(r6)
    addi    r3, r3, 0xc
    add     r5, r31, r3
    lfs     f3, 0x4c(r7)
    lfs     f1, 0x40(r7)
    lfs     f4, 0x50(r7)
    fadds   f1, f3, f1
    lfs     f3, 0x44(r7)
    lfs     f5, 0x54(r7)
    fadds   f3, f4, f3
    lfs     f4, 0x48(r7)
    fmuls   f1, f6, f1
    fadds   f4, f5, f4
    fmuls   f3, f6, f3
    stfs    f1, 0x30(r5)
    fmuls   f1, f6, f4
    stfs    f3, 0x34(r5)
    stfs    f1, 0x38(r5)
    lfs     f5, 0x4c(r7)
    lfs     f4, 0x40(r7)
    lfs     f3, 0x54(r7)
    lfs     f1, 0x48(r7)
    fsubs   f4, f5, f4
    fsubs   f1, f3, f1
    fmuls   f3, f6, f4
    fmuls   f1, f6, f1
    fcmpo   cr0, f3, f1
    ble-    branch_0x801cf418
    stfs    f3, 0x90(r6)
    b       branch_0x801cf41c

branch_0x801cf418:
    stfs    f1, 0x90(r6)
branch_0x801cf41c:
    addi    r5, r6, 0x90
    lfs     f1, 0x90(r6)
    fadds   f1, f1, f2
    stfs    f1, 0x90(r6)
    lfs     f1, 0x90(r6)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801cf43c
    stfs    f0, 0x0(r5)
branch_0x801cf43c:
    lwz     r7, 0x14(r7)
    addi    r8, r8, 0x1
    addi    r3, r3, 0xc
    addi    r4, r4, 0x4
    bdnz+      branch_0x801cf2f8
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xb8
    blr


.globl perform__23TMammaMirrorMapOperatorFUlPQ26JDrama9TGraphics
perform__23TMammaMirrorMapOperatorFUlPQ26JDrama9TGraphics: # 0x801cf46c
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    stmw    r26, 0x60(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x801cf698
    lwz     r4, -0x6318(r13)
    addi    r3, r4, 0x18
    lwz     r0, 0x18(r4)
    cmpwi   r0, -0x1
    beq-    branch_0x801cf4b4
    li      r0, 0x1
    b       branch_0x801cf4b8

branch_0x801cf4b4:
    li      r0, 0x0
branch_0x801cf4b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cf650
    lwz     r0, 0x0(r3)
    lwz     r3, 0x24(r4)
    mulli   r0, r0, 0xc
    lfs     f0, -0x2868(rtoc)
    addi    r28, r3, 0x98
    add     r3, r31, r0
    lfs     f4, 0x0(r28)
    lfs     f3, 0xb8(r3)
    lfs     f2, 0x4(r28)
    lfs     f1, 0xbc(r3)
    fsubs   f5, f4, f3
    lfs     f3, 0x8(r28)
    fsubs   f4, f2, f1
    lfs     f1, 0xc0(r3)
    fmuls   f2, f5, f5
    fsubs   f3, f3, f1
    fmuls   f1, f4, f4
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x801cf520
    b       branch_0x801cf544

branch_0x801cf520:
    frsqrte f3, f31
    lfs     f2, -0x284c(rtoc)
    lfs     f0, -0x2840(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x801cf544:
    lfs     f28, -0x2868(rtoc)
    li      r26, 0x0
    lfs     f29, -0x284c(rtoc)
    li      r30, 0x0
    lfs     f30, -0x2840(rtoc)
    li      r29, 0x0
branch_0x801cf55c:
    add     r3, r31, r29
    lfs     f3, 0x0(r28)
    lfs     f2, 0x30(r3)
    lfs     f1, 0x4(r28)
    lfs     f0, 0x34(r3)
    fsubs   f4, f3, f2
    lfs     f2, 0x8(r28)
    fsubs   f3, f1, f0
    lfs     f0, 0x38(r3)
    fmuls   f1, f4, f4
    fsubs   f2, f2, f0
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f2, f2, f0
    fcmpo   cr0, f2, f28
    cror    2, 0, 2
    bne-    branch_0x801cf5a8
    b       branch_0x801cf5c4

branch_0x801cf5a8:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f29, f1
    fnmsubs  f0, f2, f0, f30
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x801cf5c4:
    add     r3, r31, r30
    lfs     f0, 0x90(r3)
    fcmpo   cr0, f2, f0
    bgt-    branch_0x801cf5dc
    fcmpo   cr0, f2, f31
    ble-    branch_0x801cf60c
branch_0x801cf5dc:
    addi    r27, r26, 0xb0
    add     r27, r31, r27
    lbz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x801cf638
    lwz     r3, 0x10(r3)
    li      r4, 0x1
    lwz     r3, 0x60(r3)
    bl      SMS_ShowJoint__FP11J3DMaterialb
    li      r0, 0x0
    stb     r0, 0x0(r27)
    b       branch_0x801cf638

branch_0x801cf60c:
    addi    r27, r26, 0xb0
    add     r27, r31, r27
    lbz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x801cf638
    lwz     r3, 0x10(r3)
    li      r4, 0x0
    lwz     r3, 0x60(r3)
    bl      SMS_ShowJoint__FP11J3DMaterialb
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801cf638:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    addi    r30, r30, 0x4
    addi    r29, r29, 0xc
    blt+    branch_0x801cf55c
    b       branch_0x801cf698

branch_0x801cf650:
    li      r26, 0x0
    li      r30, 0x0
    li      r29, 0x1
branch_0x801cf65c:
    addi    r27, r26, 0xb0
    add     r27, r31, r27
    lbz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x801cf688
    addi    r0, r30, 0x10
    lwzx    r3, r31, r0
    li      r4, 0x0
    lwz     r3, 0x60(r3)
    bl      SMS_ShowJoint__FP11J3DMaterialb
    stb     r29, 0x0(r27)
branch_0x801cf688:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    addi    r30, r30, 0x4
    blt+    branch_0x801cf65c
branch_0x801cf698:
    lmw     r26, 0x60(sp)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    addi    sp, sp, 0x98
    blr


.globl __ct__15TGoalWatermelonFPCc
__ct__15TGoalWatermelonFPCc: # 0x801cf6bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x1014
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x140(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__15TGoalWatermelonFR20JSUMemoryInputStream
load__15TGoalWatermelonFR20JSUMemoryInputStream: # 0x801cf71c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x20
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, r31, 0x0
    addi    r4, r30, 0x140
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x144
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x148
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl loadAfter__15TGoalWatermelonFv
loadAfter__15TGoalWatermelonFv: # 0x801cf794
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    bl      loadAfter__11TMapObjBaseFv
    lwz     r0, 0x64(r29)
    lis     r3, 0x8039
    addi    r31, r3, 0x1b2c
    ori     r0, r0, 0x4
    stw     r0, 0x64(r29)
    mr      r3, r31
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x138(r29)
    lwz     r3, 0x138(r29)
    lfs     f0, 0x140(r29)
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x144(r29)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x148(r29)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x138(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl control__15TGoalWatermelonFv
control__15TGoalWatermelonFv: # 0x801cf844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801cf874
    bge-    branch_0x801cf8b0
    b       branch_0x801cf8b0
    b       branch_0x801cf8b0

branch_0x801cf874:
    lwz     r3, 0x13c(r31)
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801cf8b0
    lfs     f1, -0x2868(rtoc)
    lis     r4, 0x8039
    lis     r5, 0x8039
    lwz     r3, gpItemManager(r13)
    fmr     f2, f1
    fmr     f3, f1
    addi    r4, r4, 0x1b2c
    addi    r5, r5, 0x1b48
    bl      makeShineAppearWithDemoOffset__12TItemManagerFPCcPCcfff
    li      r0, 0x3
    sth     r0, 0xfc(r31)
branch_0x801cf8b0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchActor__15TGoalWatermelonFP9THitActor
touchActor__15TGoalWatermelonFP9THitActor: # 0x801cf8c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801cf8ec
    li      r0, 0x1
    b       branch_0x801cf8f0

branch_0x801cf8ec:
    li      r0, 0x0
branch_0x801cf8f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cf9b4
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xd0
    bne-    branch_0x801cf910
    li      r0, 0x1
    b       branch_0x801cf914

branch_0x801cf910:
    li      r0, 0x0
branch_0x801cf914:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cf9b4
    stw     r4, 0x13c(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x1b60
    lwz     r3, 0x13c(r31)
    lwz     r3, 0x74(r3)
    bl      setBck__6MActorFPCc
    lwz     r5, 0x13c(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x1b74
    lwz     r3, 0xf8(r5)
    li      r0, 0x0
    addi    r12, sp, 0x2c
    rlwinm  r3, r3, 0, 24, 22
    stw     r3, 0xf8(r5)
    li      r6, -0x1
    li      r7, 0x1
    lfs     f1, -0x2868(rtoc)
    li      r8, 0x0
    li      r9, 0x0
    stfs    f1, 0x30(sp)
    li      r10, 0x0
    stfs    f1, 0x34(sp)
    stfs    f1, 0x38(sp)
    lwz     r11, 0x13c(r31)
    lwz     r5, 0x30(sp)
    lwz     r3, 0x34(sp)
    stw     r5, 0xac(r11)
    stw     r3, 0xb0(r11)
    lwz     r3, 0x38(sp)
    stw     r3, 0xb4(r11)
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x2c(sp)
    stw     r12, 0x8(sp)
    lwz     r5, 0x13c(r31)
    addi    r5, r5, 0x10
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    li      r0, 0x2
    sth     r0, 0xfc(r31)
branch_0x801cf9b4:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl touchWater__17TWatermelonStaticFP9THitActor
touchWater__17TWatermelonStaticFP9THitActor: # 0x801cf9c8
    li      r3, 0x1
    blr


.globl __ct__9TSandBirdFPCc
__ct__9TSandBirdFPCc: # 0x801cf9d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__10TJointCoinFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0xd4c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x150(r31)
    stb     r0, 0x151(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__10TJointCoinFv
__dt__10TJointCoinFv: # 0x801cfa20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cfa88
    lis     r3, 0x803d
    addi    r3, r3, 0x61d0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cfa78
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cfa78:
    extsh.  r0, r31
    ble-    branch_0x801cfa88
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cfa88:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__9TSandBirdFv
initMapObj__9TSandBirdFv: # 0x801cfaa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      initMapObj__10TJointCoinFv
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x159
    lbz     r0, 0x159(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801cfaec
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x1b88
    li      r5, 0x159
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801cfaec:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x15a
    lbz     r0, 0x15a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801cfb20
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x1bac
    li      r5, 0x15a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801cfb20:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl nameIsObj__9TSandBirdFPCc
nameIsObj__9TSandBirdFPCc: # 0x801cfb34
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    subi    r4, rtoc, 0x283c
    stwu    sp, -0x8(sp)
    bl      strstr
    cmplwi  r3, 0x0
    bne-    branch_0x801cfb5c
    li      r3, 0x1
    b       branch_0x801cfb60

branch_0x801cfb5c:
    li      r3, 0x0
branch_0x801cfb60:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeObjFromJointName__9TSandBirdFPCcUs
makeObjFromJointName__9TSandBirdFPCcUs: # 0x801cfb70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      makeObjFromJointName__10TJointCoinFPCcUs
    cmplwi  r3, 0x0
    beq-    branch_0x801cfba4
    b       branch_0x801cfbe0

branch_0x801cfba4:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x283c
    bl      strstr
    cmplwi  r3, 0x0
    bne-    branch_0x801cfbdc
    lwz     r12, 0x0(r29)
    lis     r4, 0x8039
    mr      r3, r29
    lwz     r12, 0x16c(r12)
    addi    r4, r4, 0x1bd0
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    b       branch_0x801cfbe0

branch_0x801cfbdc:
    li      r3, 0x0
branch_0x801cfbe0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl control__9TSandBirdFv
control__9TSandBirdFv: # 0x801cfbfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    bl      control__10TJointCoinFv
    lwz     r3, gpMSound(r13)
    li      r4, 0x217c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cfc4c
    addi    r4, r31, 0x10
    li      r3, 0x217c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cfc4c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x217d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cfc74
    li      r3, 0x217d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801cfc74:
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x801cfd04

branch_0x801cfc80:
    lwz     r3, 0x140(r31)
    lwzx    r7, r3, r30
    lwz     r3, 0x4c(r7)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801cfca0
    li      r0, 0x1
    b       branch_0x801cfca4

branch_0x801cfca0:
    li      r0, 0x0
branch_0x801cfca4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801cfccc
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x23
    bne-    branch_0x801cfcc0
    li      r0, 0x1
    b       branch_0x801cfcc4

branch_0x801cfcc0:
    li      r0, 0x0
branch_0x801cfcc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cfcfc
branch_0x801cfccc:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r7, 0x10
    li      r4, 0x159
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r5, 0x140(r31)
    li      r4, 0x15a
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x1
    lwzx    r7, r5, r30
    addi    r5, r7, 0x10
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801cfcfc:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x801cfd04:
    lwz     r0, 0x13c(r31)
    cmpw    r29, r0
    blt+    branch_0x801cfc80
    lwz     r30, gpCamera(r13)
    li      r29, 0x1
    addi    r3, r30, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801cfd4c
    lwz     r0, 0x50(r30)
    cmpwi   r0, 0x49
    bne-    branch_0x801cfd3c
    mr      r0, r29
    b       branch_0x801cfd40

branch_0x801cfd3c:
    li      r0, 0x0
branch_0x801cfd40:
    clrlwi. r0, r0, 24
    bne-    branch_0x801cfd4c
    li      r29, 0x0
branch_0x801cfd4c:
    clrlwi. r0, r29, 24
    beq-    branch_0x801cfd5c
    li      r0, 0x1
    b       branch_0x801cfd60

branch_0x801cfd5c:
    li      r0, 0x0
branch_0x801cfd60:
    clrlwi. r0, r0, 24
    bne-    branch_0x801cfdd0
    lbz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801cfdd0
    lwz     r3, -0x608c(r13)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801cfdd0
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x2c9
    bne-    branch_0x801cfda0
    li      r0, 0x1
    b       branch_0x801cfda4

branch_0x801cfda0:
    li      r0, 0x0
branch_0x801cfda4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cfdd0
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x2c
    li      r5, 0x0
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x960
    stw     r0, 0x104(r31)
    li      r0, 0x1
    stb     r0, 0x150(r31)
branch_0x801cfdd0:
    lbz     r0, 0x151(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801cfe24
    lbz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801cfe24
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801cfdfc
    li      r0, 0x1
    b       branch_0x801cfe00

branch_0x801cfdfc:
    li      r0, 0x0
branch_0x801cfe00:
    clrlwi. r0, r0, 24
    bne-    branch_0x801cfe24
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x2c
    li      r5, 0x0
    lwz     r3, 0x74(r3)
    bl      startDisappearBalloon__11TGCConsole2FUlb
    li      r0, 0x1
    stb     r0, 0x151(r31)
branch_0x801cfe24:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl initMapObj__11TMammaYachtFv
initMapObj__11TMammaYachtFv: # 0x801cfe40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      initMapObj__11TMapObjBaseFv
    li      r3, 0xc0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801cfe78
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x2834
    bl      __ct__11TMapObjFlagFPCc
branch_0x801cfe78:
    stw     r30, 0x138(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x1be0
    lfs     f3, -0x282c(rtoc)
    lfs     f2, 0x14(r31)
    lfs     f1, -0x2824(rtoc)
    lfs     f0, 0x10(r31)
    fadds   f3, f3, f2
    lfs     f2, -0x2828(rtoc)
    fadds   f0, f1, f0
    lwz     r3, 0x138(r31)
    lfs     f4, 0x18(r31)
    lfs     f1, -0x2830(rtoc)
    fsubs   f2, f3, f2
    stfsu   f0, 0x10(r3)
    fsubs   f0, f4, f1
    stfs    f2, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x138(r31)
    lfs     f1, -0x2868(rtoc)
    stfsu   f1, 0x30(r3)
    lfs     f0, -0x2820(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f1, 0x8(r3)
    lwz     r3, 0x138(r31)
    lfs     f0, -0x281c(rtoc)
    stfsu   f0, 0x24(r3)
    lfs     f0, -0x2818(rtoc)
    stfs    f0, 0x4(r3)
    lfs     f0, -0x2814(rtoc)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x138(r31)
    bl      init__11TMapObjFlagFPCc
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__11TMammaYachtFv
control__11TMammaYachtFv: # 0x801cff14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801cff5c
    cmplwi  r3, 0x101
    beq-    branch_0x801cff5c
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801cff5c
    cmplwi  r3, 0x4104
    bne-    branch_0x801cff64
branch_0x801cff5c:
    li      r0, 0x1
    b       branch_0x801cff68

branch_0x801cff64:
    li      r0, 0x0
branch_0x801cff68:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cffa0
    lwz     r3, gpMapObjWave(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      getWaveHeight__11TMapObjWaveCFff
    lfs     f0, 0x110(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x14(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x2810(rtoc)
    lwz     r3, 0x138(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
branch_0x801cffa0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__17TMammaBlockRotateFPCc
__ct__17TMammaBlockRotateFPCc: # 0x801cffb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0xa78
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x13c(r31)
    stw     r0, 0x140(r31)
    stw     r0, 0x144(r31)
    stw     r0, 0x148(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__17TMammaBlockRotateFR20JSUMemoryInputStream
load__17TMammaBlockRotateFR20JSUMemoryInputStream: # 0x801d000c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x60
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801d0044
    mr      r3, r29
    bl      __ct__17TMapCollisionMoveFv
branch_0x801d0044:
    stw     r29, 0x144(r30)
    lis     r3, 0x8039
    addi    r4, r3, 0x1bf0
    lwz     r3, 0x144(r30)
    mr      r6, r30
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801d0084
    mr      r3, r29
    bl      __ct__17TMapCollisionMoveFv
branch_0x801d0084:
    stw     r29, 0x148(r30)
    lis     r3, 0x8039
    addi    r4, r3, 0x1c14
    lwz     r3, 0x148(r30)
    mr      r6, r30
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl initMapObj__17TMammaBlockRotateFv
initMapObj__17TMammaBlockRotateFv: # 0x801d00d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stw     r31, 0x12c(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, gpMap(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x138(r31)
    lwz     r3, 0x138(r31)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x13c(r31)
    lwz     r3, 0x13c(r31)
    lfs     f1, -0x2868(rtoc)
    lwz     r3, 0xc(r3)
    fmr     f3, f1
    lfs     f2, 0x50(r3)
    lfs     f0, 0x44(r3)
    fsubs   f31, f2, f0
    fmr     f2, f31
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x11c(sp)
    stfs    f31, 0x120(sp)
    stfs    f0, 0x124(sp)
    lwz     r3, 0x144(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x144(r31)
    addi    r4, sp, 0x11c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x138(r31)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r0, 0x8(r3)
    stw     r0, 0x140(r31)
    lwz     r3, 0x140(r31)
    lfs     f1, -0x2868(rtoc)
    lwz     r3, 0xc(r3)
    fmr     f3, f1
    lfs     f4, 0x50(r3)
    lfs     f0, 0x44(r3)
    lfs     f2, 0x50(r3)
    fsubs   f31, f4, f0
    lfs     f0, 0x44(r3)
    fsubs   f2, f2, f0
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lwz     r3, 0x148(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x2868(rtoc)
    addi    r4, sp, 0x11c
    stfs    f0, 0x11c(sp)
    stfs    f31, 0x120(sp)
    stfs    f0, 0x124(sp)
    lwz     r3, 0x148(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x138(r31)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lwz     r31, 0x12c(sp)
    mtlr    r0
    addi    sp, sp, 0x138
    blr


.globl control__17TMammaBlockRotateFv
control__17TMammaBlockRotateFv: # 0x801d024c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    stw     r30, 0xb0(sp)
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801d0394
    bge-    branch_0x801d0288
    cmpwi   r0, 0x1
    beq-    branch_0x801d0294
    bge-    branch_0x801d02bc
    b       branch_0x801d0494

branch_0x801d0288:
    cmpwi   r0, 0x5
    bge-    branch_0x801d0494
    b       branch_0x801d03c0

branch_0x801d0294:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x2868(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d02b4
    lfs     f0, -0x7928(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(r31)
    b       branch_0x801d0494

branch_0x801d02b4:
    stfs    f0, 0x34(r31)
    b       branch_0x801d0494

branch_0x801d02bc:
    lfs     f1, -0x2868(rtoc)
    lfs     f0, -0x7920(r13)
    lwz     r3, 0x140(r31)
    fmr     f3, f1
    fneg    f2, f0
    lwz     r3, 0xc(r3)
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lfs     f1, -0x2868(rtoc)
    lfs     f0, -0x7920(r13)
    lwz     r3, 0x13c(r31)
    fmr     f3, f1
    fneg    f2, f0
    lwz     r3, 0xc(r3)
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lwz     r3, 0x138(r31)
    lwz     r4, 0x140(r31)
    lwz     r3, 0x28(r3)
    lwz     r4, 0xc(r4)
    lwz     r12, 0x0(r3)
    addi    r30, r4, 0x1c
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x18(r30)
    addi    r4, sp, 0xa0
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    lwz     r3, 0x144(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x18(r30)
    addi    r4, sp, 0xa0
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    lwz     r3, 0x148(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x18(r30)
    lfs     f0, -0x2868(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d0494
    lwz     r3, -0x7918(r13)
    li      r0, 0x3
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801d0494

branch_0x801d0394:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801d03a8
    li      r0, 0x1
    b       branch_0x801d03ac

branch_0x801d03a8:
    li      r0, 0x0
branch_0x801d03ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d0494
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801d0494

branch_0x801d03c0:
    lfs     f1, -0x2868(rtoc)
    lwz     r3, 0x140(r31)
    fmr     f3, f1
    lfs     f2, -0x791c(r13)
    lwz     r3, 0xc(r3)
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lfs     f1, -0x2868(rtoc)
    lwz     r3, 0x13c(r31)
    fmr     f3, f1
    lfs     f2, -0x791c(r13)
    lwz     r3, 0xc(r3)
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lwz     r3, 0x140(r31)
    addi    r4, sp, 0xa0
    lfs     f0, -0x2868(rtoc)
    lwz     r3, 0xc(r3)
    lfs     f1, 0x34(r3)
    addi    r30, r3, 0x1c
    stfs    f0, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    lwz     r3, 0x144(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x18(r30)
    addi    r4, sp, 0xa0
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    lwz     r3, 0x148(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x138(r31)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x140(r31)
    lfs     f2, 0x18(r30)
    lwz     r3, 0xc(r3)
    lfs     f1, 0x50(r3)
    lfs     f0, 0x44(r3)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801d0494
    li      r0, 0x1
    sth     r0, 0xfc(r31)
branch_0x801d0494:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xb8
    blr


.globl touchWater__17TMammaBlockRotateFP9THitActor
touchWater__17TMammaBlockRotateFP9THitActor: # 0x801d04ac
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801d04c0
    li      r0, 0x1
    b       branch_0x801d04c4

branch_0x801d04c0:
    li      r0, 0x0
branch_0x801d04c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d04f4
    lfs     f1, 0x34(r3)
    lfs     f0, -0x792c(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r3)
    lfs     f1, 0x34(r3)
    lfs     f0, -0x7924(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d04f4
    li      r0, 0x2
    sth     r0, 0xfc(r3)
branch_0x801d04f4:
    li      r3, 0x1
    blr


.globl __ct__13TShiningStoneFPCc
__ct__13TShiningStoneFPCc: # 0x801d04fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x914
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x7c(r31)
    stb     r0, 0x70(r31)
    stb     r0, 0x71(r31)
    stb     r0, 0x72(r31)
    stb     r0, 0x73(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TShiningStoneFR20JSUMemoryInputStream
load__13TShiningStoneFR20JSUMemoryInputStream: # 0x801d0564
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r25, 0x8c(sp)
    addi    r29, r3, 0x0
    addi    r31, r5, 0x1988
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    lwz     r4, 0x188(r31)
    addi    r30, sp, 0x30
    lwz     r0, 0x18c(r31)
    mr      r3, r30
    lfs     f2, -0x280c(rtoc)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r4, 0x190(r31)
    lwz     r0, 0x194(r31)
    stw     r4, 0x68(sp)
    stw     r0, 0x6c(sp)
    lfs     f0, 0x38(r29)
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r29)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r29)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r29)
    fctiwz  f5, f2
    lfs     f2, 0x14(r29)
    fctiwz  f0, f0
    stfd    f4, 0x78(sp)
    stfd    f5, 0x80(sp)
    lwz     r5, 0x7c(sp)
    stfd    f0, 0x70(sp)
    lwz     r4, 0x84(sp)
    lwz     r6, 0x74(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    li      r3, 0x10
    bl      __nwa__FUl
    stw     r3, 0x68(r29)
    addi    r27, sp, 0x60
    li      r26, 0x0
    li      r28, 0x0
branch_0x801d0614:
    lwz     r3, -0x62b8(r13)
    bl      getMActorAnmData__11TObjManagerFv
    mr      r4, r3
    lwzx    r3, r27, r28
    li      r5, 0x3
    lis     r6, 0x1002
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    lwz     r4, 0x68(r29)
    stwx    r3, r4, r28
    mr      r3, r30
    lwz     r4, 0x68(r29)
    lwzx    r4, r4, r28
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801d066c
    addi    r3, r25, 0x0
    addi    r4, r31, 0x2ac
    bl      __ct__12TMirrorActorFPCc
branch_0x801d066c:
    lwz     r4, 0x68(r29)
    mr      r3, r25
    li      r5, 0x1a
    lwzx    r4, r4, r28
    lwz     r4, 0x4(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    addi    r26, r26, 0x1
    cmpwi   r26, 0x4
    addi    r28, r28, 0x4
    blt+    branch_0x801d0614
    lwz     r3, -0x62b8(r13)
    bl      getMActorAnmData__11TObjManagerFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x2b8
    li      r5, 0x3
    lis     r6, 0x1002
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x6c(r29)
    addi    r4, r31, 0x2d8
    lwz     r3, 0x6c(r29)
    bl      setBpk__6MActorFPCc
    lwz     r3, 0x6c(r29)
    addi    r4, r31, 0x2d8
    bl      setBtk__6MActorFPCc
    lwz     r4, 0x6c(r29)
    addi    r3, sp, 0x30
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x143
    lbz     r0, 0x143(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d0710
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2e8
    li      r5, 0x143
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801d0710:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x144
    lbz     r0, 0x144(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d0740
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x308
    li      r5, 0x144
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801d0740:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x145
    lbz     r0, 0x145(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d0770
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x328
    li      r5, 0x145
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801d0770:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x56
    lbz     r0, 0x56(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d07a0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x348
    li      r5, 0x56
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801d07a0:
    lmw     r25, 0x8c(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl perform__13TShiningStoneFUlPQ26JDrama9TGraphics
perform__13TShiningStoneFUlPQ26JDrama9TGraphics: # 0x801d07b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    li      r30, 0x0
    li      r31, 0x0
branch_0x801d07d8:
    lwz     r3, 0x68(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x74(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x801d0810
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r27, 0x0
    addi    r5, r27, 0x10
    li      r4, 0x143
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801d0810:
    lwz     r0, 0x74(r27)
    cmpwi   r0, 0x1
    ble-    branch_0x801d0834
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r27, 0x0
    addi    r5, r27, 0x10
    li      r4, 0x144
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801d0834:
    lwz     r0, 0x74(r27)
    cmpwi   r0, 0x2
    ble-    branch_0x801d0858
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r27, 0x0
    addi    r5, r27, 0x10
    li      r4, 0x145
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801d0858:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x801d07d8
    lwz     r3, 0x6c(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl putOnLight__13TShiningStoneFP10TLiveActor
putOnLight__13TShiningStoneFP10TLiveActor: # 0x801d088c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r4
    lwz     r0, 0x4(r4)
    lis     r4, 0x8039
    addi    r31, r4, 0x1988
    mr      r3, r0
    subi    r4, rtoc, 0x2864
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d08f8
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x368
    lwz     r3, 0x0(r3)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x368
    lwz     r3, 0x0(r3)
    bl      setBrk__6MActorFPCc
    li      r0, 0x1
    stb     r0, 0x70(r30)
    b       branch_0x801d0974

branch_0x801d08f8:
    lwz     r3, 0x4(r29)
    subi    r4, rtoc, 0x285c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d0938
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x37c
    lwz     r3, 0x4(r3)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x37c
    lwz     r3, 0x4(r3)
    bl      setBrk__6MActorFPCc
    li      r0, 0x1
    stb     r0, 0x71(r30)
    b       branch_0x801d0974

branch_0x801d0938:
    lwz     r3, 0x4(r29)
    subi    r4, rtoc, 0x2854
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d0974
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x390
    lwz     r3, 0x8(r3)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x390
    lwz     r3, 0x8(r3)
    bl      setBrk__6MActorFPCc
    li      r0, 0x1
    stb     r0, 0x72(r30)
branch_0x801d0974:
    lwz     r0, 0x74(r30)
    cmpwi   r0, 0x1
    beq-    branch_0x801d0a00
    bge-    branch_0x801d0990
    cmpwi   r0, 0x0
    bge-    branch_0x801d099c
    b       branch_0x801d0ab8

branch_0x801d0990:
    cmpwi   r0, 0x3
    bge-    branch_0x801d0ab8
    b       branch_0x801d0a64

branch_0x801d099c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x143
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    stw     r3, 0x78(r30)
    li      r4, 0x2893
    lfs     f0, -0x2840(rtoc)
    lwz     r3, 0x78(r30)
    stfs    f0, 0x1b0(r3)
    lfs     f0, -0x2808(rtoc)
    stfs    f0, 0x7c(r30)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d0ab8
    addi    r4, r30, 0x10
    li      r3, 0x2893
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801d0ab8

branch_0x801d0a00:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x144
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    stw     r3, 0x78(r30)
    li      r4, 0x2894
    lfs     f0, -0x2804(rtoc)
    lwz     r3, 0x78(r30)
    stfs    f0, 0x1b0(r3)
    lfs     f0, -0x2800(rtoc)
    stfs    f0, 0x7c(r30)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d0ab8
    addi    r4, r30, 0x10
    li      r3, 0x2894
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801d0ab8

branch_0x801d0a64:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x145
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    stw     r3, 0x78(r30)
    li      r4, 0x2895
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x7c(r30)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d0ab8
    addi    r4, r30, 0x10
    li      r3, 0x2895
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d0ab8:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x10
    li      r4, 0x56
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x74(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x74(r30)
    lwz     r0, 0x74(r30)
    cmpwi   r0, 0x3
    bne-    branch_0x801d0b10
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x3a0
    lwz     r3, 0xc(r3)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x3a0
    lwz     r3, 0xc(r3)
    bl      setBrk__6MActorFPCc
    li      r0, 0x1
    stb     r0, 0x73(r30)
branch_0x801d0b10:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl __ct__11TLeanMirrorFPCc
__ct__11TLeanMirrorFPCc: # 0x801d0b2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x870
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x168(r31)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x170(r31)
    stw     r0, 0x17c(r31)
    stfs    f0, 0x198(r31)
    stw     r0, 0x19c(r31)
    stb     r0, 0x1ac(r31)
    sth     r0, 0x1ae(r31)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x188(r31)
    stfs    f0, 0x184(r31)
    stfs    f0, 0x180(r31)
    stfs    f0, 0x194(r31)
    stfs    f0, 0x190(r31)
    stfs    f0, 0x18c(r31)
    stfs    f0, 0x1a8(r31)
    stfs    f0, 0x1a4(r31)
    stfs    f0, 0x1a0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__11TLeanMirrorFR20JSUMemoryInputStream
load__11TLeanMirrorFR20JSUMemoryInputStream: # 0x801d0bec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r4, 0x0
    stw     r30, 0xc8(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f2, -0x27fc(rtoc)
    lfs     f1, 0xc0(sp)
    lfs     f0, -0x284c(rtoc)
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    stfs    f0, 0x138(r30)
    lfs     f0, 0x138(r30)
    stfs    f0, 0x13c(r30)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801d0c8c
    addi    r3, r31, 0x0
    addi    r4, sp, 0x80
    li      r5, 0x40
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1a0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1a4
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1a8
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
branch_0x801d0c8c:
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801d0cb8
    mr      r3, r31
    bl      __ct__12TMirrorModelFv
    lis     r3, 0x803c
    addi    r0, r3, 0x19c0
    stw     r0, 0x0(r31)
    li      r0, 0x0
    stw     r0, 0x28(r31)
branch_0x801d0cb8:
    lis     r3, 0x8039
    lwz     r6, 0xf4(r30)
    addi    r5, r3, 0x1d3c
    crxor   6, 6, 6
    addi    r3, sp, 0x40
    li      r4, 0x40
    bl      snprintf
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, sp, 0x40
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    stw     r3, 0x28(r31)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x801d0d10
    li      r0, 0x4
    sth     r0, 0xfc(r30)
branch_0x801d0d10:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl initMapObj__11TLeanMirrorFv
initMapObj__11TLeanMirrorFv: # 0x801d0d28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x27f8(rtoc)
    subi    r4, rtoc, 0x2864
    stfs    f0, 0x158(r31)
    lfs     f0, -0x27f4(rtoc)
    stfs    f0, 0x15c(r31)
    lfs     f1, -0x27f0(rtoc)
    stfs    f1, 0x160(r31)
    lfs     f0, -0x281c(rtoc)
    stfs    f0, 0x168(r31)
    lfs     f0, -0x27ec(rtoc)
    stfs    f0, 0x16c(r31)
    stfs    f1, 0x170(r31)
    lfs     f0, -0x27e8(rtoc)
    stfs    f0, 0x174(r31)
    lfs     f0, -0x284c(rtoc)
    stfs    f0, 0x178(r31)
    lwz     r3, 0xf4(r31)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d0db4
    lfs     f0, -0x27e4(rtoc)
    li      r0, 0x1
    stfs    f0, 0x164(r31)
    lfs     f0, -0x281c(rtoc)
    stfs    f0, 0x168(r31)
    lfs     f0, -0x27e0(rtoc)
    stfs    f0, 0x174(r31)
    stw     r0, 0x19c(r31)
    b       branch_0x801d0dec

branch_0x801d0db4:
    lwz     r3, 0xf4(r31)
    subi    r4, rtoc, 0x285c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d0ddc
    lfs     f0, -0x27dc(rtoc)
    li      r0, 0x2
    stfs    f0, 0x164(r31)
    stw     r0, 0x19c(r31)
    b       branch_0x801d0dec

branch_0x801d0ddc:
    lfs     f0, -0x27d8(rtoc)
    li      r0, 0x3
    stfs    f0, 0x164(r31)
    stw     r0, 0x19c(r31)
branch_0x801d0dec:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getSDLModelFlag__11TLeanMirrorCFv
getSDLModelFlag__11TLeanMirrorCFv: # 0x801d0e00
    li      r3, 0x0
    blr


.globl loadAfter__11TLeanMirrorFv
loadAfter__11TLeanMirrorFv: # 0x801d0e08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    bl      loadAfter__11TMapObjBaseFv
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    addi    r31, r3, 0x1d54
    lwz     r30, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x17c(r29)
    addi    r3, sp, 0x2c
    addi    r4, r29, 0x10
    lwz     r6, 0x17c(r29)
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0x34(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x180(r29)
    stw     r0, 0x184(r29)
    lwz     r0, 0x34(sp)
    stw     r0, 0x188(r29)
    lfs     f1, 0x180(r29)
    lfs     f0, 0x184(r29)
    fmuls   f2, f1, f1
    lfs     f3, 0x188(r29)
    fmuls   f1, f0, f0
    lfs     f0, -0x27d4(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801d0ee4
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x188(r29)
    stfs    f0, 0x184(r29)
    stfs    f0, 0x180(r29)
    b       branch_0x801d0f14

branch_0x801d0ee4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x281c(rtoc)
    lfs     f0, 0x180(r29)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x180(r29)
    lfs     f0, 0x184(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x184(r29)
    lfs     f0, 0x188(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x188(r29)
branch_0x801d0f14:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl control__11TLeanMirrorFv
control__11TLeanMirrorFv: # 0x801d0f30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r30)
    cmpwi   r0, 0x3
    beq-    branch_0x801d10bc
    bge-    branch_0x801d1158
    cmpwi   r0, 0x1
    beq-    branch_0x801d0f74
    bge-    branch_0x801d1018
    b       branch_0x801d1158
    b       branch_0x801d1158

branch_0x801d0f74:
    mr      r3, r30
    bl      controlShake__11TLeanMirrorFv
    lfs     f1, 0x14c(r30)
    lfs     f0, 0x150(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x154(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x2868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801d0fb0
    b       branch_0x801d0fd4

branch_0x801d0fb0:
    frsqrte f3, f4
    lfs     f2, -0x284c(rtoc)
    lfs     f0, -0x2840(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801d0fd4:
    fabs    f31, f4
    lwz     r3, gpMSound(r13)
    li      r4, 0x3048
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d1158
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x3048
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801d1158

branch_0x801d1018:
    mr      r3, r30
    bl      controlGoTarget__11TLeanMirrorFv
    lfs     f1, 0x14c(r30)
    lfs     f0, 0x150(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x154(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x2868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801d1054
    b       branch_0x801d1078

branch_0x801d1054:
    frsqrte f3, f4
    lfs     f2, -0x284c(rtoc)
    lfs     f0, -0x2840(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801d1078:
    fabs    f31, f4
    lwz     r3, gpMSound(r13)
    li      r4, 0x304a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d1158
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x304a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801d1158

branch_0x801d10bc:
    lwz     r0, 0x104(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x801d10d0
    li      r0, 0x1
    b       branch_0x801d10d4

branch_0x801d10d0:
    li      r0, 0x0
branch_0x801d10d4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d1158
    lwz     r31, 0x17c(r30)
    lwz     r0, 0x74(r31)
    cmpwi   r0, 0x3
    bge-    branch_0x801d1138
    lfs     f1, -0x281c(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lwz     r0, 0x74(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x801d1124
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x32
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    b       branch_0x801d1138

branch_0x801d1124:
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x33
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x801d1138:
    lfs     f1, 0x7c(r31)
    lfs     f0, -0x2868(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d1150
    lwz     r3, 0x78(r31)
    stfs    f1, 0x1b0(r3)
branch_0x801d1150:
    li      r0, 0x4
    sth     r0, 0xfc(r30)
branch_0x801d1158:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl controlShake__11TLeanMirrorFv
controlShake__11TLeanMirrorFv: # 0x801d1174
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stw     r31, 0xd4(sp)
    stw     r30, 0xd0(sp)
    mr      r30, r3
    lwz     r0, 0x19c(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x801d11a4
    li      r0, 0x1
    b       branch_0x801d11a8

branch_0x801d11a4:
    li      r0, 0x0
branch_0x801d11a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d1200
    lbz     r0, 0x1ac(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801d1200
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d1200
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r0, 0x44(r3)
    cmplw   r0, r30
    beq-    branch_0x801d1200
    li      r3, 0x1
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
    lfs     f1, -0x281c(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    li      r0, 0x0
    stb     r0, 0x1ac(r30)
branch_0x801d1200:
    lfs     f1, 0x14c(r30)
    lfs     f0, 0x150(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x154(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x27d4(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x801d148c
    lfs     f1, 0x15c(r30)
    mr      r3, r30
    lfs     f0, 0x14c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x14c(r30)
    lfs     f0, 0x150(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x150(r30)
    lfs     f0, 0x154(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x154(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    addi    r3, sp, 0x8c
    lfs     f2, 0x154(r30)
    lfs     f1, 0x14c(r30)
    lfs     f0, -0x2868(rtoc)
    stfs    f1, 0x8c(sp)
    lfs     f1, -0x27d0(rtoc)
    stfs    f0, 0x90(sp)
    stfs    f2, 0x94(sp)
    bl      rotateVecByAxisY__11TMapObjBaseFPQ29JGeometry8TVec3_f_f
    lfs     f0, 0x14c(r30)
    lfs     f1, 0x154(r30)
    fmuls   f2, f0, f0
    lfs     f0, -0x2868(rtoc)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x801d12d4
    frsqrte f3, f4
    lfd     f2, -0x27c8(rtoc)
    lfd     f0, -0x27c0(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x84(sp)
    lfs     f4, 0x84(sp)
branch_0x801d12d4:
    lfs     f0, 0x158(r30)
    addi    r3, sp, 0x9c
    fmuls   f31, f4, f0
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f2, -0x2868(rtoc)
    fmr     f1, f31
    lfs     f0, -0x281c(rtoc)
    addi    r3, sp, 0x8c
    stfs    f2, 0xc8(sp)
    addi    r4, sp, 0x9c
    stfs    f2, 0xb8(sp)
    stfs    f2, 0xa8(sp)
    stfs    f2, 0xb4(sp)
    stfs    f2, 0xa4(sp)
    stfs    f2, 0xc0(sp)
    stfs    f2, 0xa0(sp)
    stfs    f2, 0xbc(sp)
    stfs    f2, 0xac(sp)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xb0(sp)
    stfs    f0, 0x9c(sp)
    bl      makeMtxRotByAxis__11TMapObjBaseFRCQ29JGeometry8TVec3_f_fPA4_f
    addi    r4, r31, 0x0
    addi    r5, r31, 0x0
    addi    r3, sp, 0x9c
    bl      concatOnlyRotFromLeft__11TMapObjBaseFPA4_fPA4_fPA4_f
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, 0x174(r30)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d1468
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f4, 0x154(r30)
    lfs     f0, 0x24(r31)
    lwz     r3, 0x58(r3)
    fmuls   f0, f4, f0
    lfs     f3, 0x14c(r30)
    lfs     f2, 0x4(r3)
    lfs     f1, -0x2868(rtoc)
    fmadds  f0, f3, f2, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x801d1468
    lfs     f0, 0x150(r30)
    fmuls   f0, f0, f0
    fmadds  f0, f3, f3, f0
    fmadds  f4, f4, f4, f0
    fcmpo   cr0, f4, f1
    cror    2, 0, 2
    bne-    branch_0x801d13b4
    b       branch_0x801d13d8

branch_0x801d13b4:
    frsqrte f3, f4
    lfs     f2, -0x284c(rtoc)
    lfs     f0, -0x2840(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801d13d8:
    fabs    f31, f4
    lwz     r3, gpMSound(r13)
    li      r4, 0x3849
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d1418
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x3849
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d1418:
    lfs     f1, 0x178(r30)
    mr      r3, r30
    lfs     f0, 0x14c(r30)
    fneg    f1, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x14c(r30)
    lfs     f0, 0x150(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x150(r30)
    lfs     f0, 0x154(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x154(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r3, r3, 0x20
    addi    r4, r31, 0x0
    bl      PSMTXCopy
    b       branch_0x801d148c

branch_0x801d1468:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x801d148c:
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lwz     r31, 0xd4(sp)
    mtlr    r0
    lwz     r30, 0xd0(sp)
    addi    sp, sp, 0xe0
    blr


.globl controlGoTarget__11TLeanMirrorFv
controlGoTarget__11TLeanMirrorFv: # 0x801d14a8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x90(sp)
    addi    r30, r4, 0x1988
    stw     r29, 0x8c(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r29, 0x58(r3)
    addi    r3, r31, 0x18c
    lfs     f1, -0x2868(rtoc)
    addi    r4, sp, 0x54
    lfs     f0, -0x281c(rtoc)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x5c(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x58(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x64(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x68(sp)
    stfs    f0, 0x54(sp)
    lfs     f1, 0x198(r31)
    bl      makeMtxRotByAxis__11TMapObjBaseFRCQ29JGeometry8TVec3_f_fPA4_f
    addi    r4, r29, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x54
    bl      concatOnlyRotFromLeft__11TMapObjBaseFPA4_fPA4_fPA4_f
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801d1540
    li      r0, 0x1
    b       branch_0x801d1544

branch_0x801d1540:
    li      r0, 0x0
branch_0x801d1544:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d1648
    lwz     r3, 0x17c(r31)
    mr      r4, r31
    bl      putOnLight__13TShiningStoneFP10TLiveActor
    lwz     r3, 0x17c(r31)
    lbz     r0, 0x73(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801d15f8
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x3dc
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x3dc
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x801d15b8
    lwz     r4, 0x17c(r31)
    lfs     f2, -0x27b8(rtoc)
    lfs     f0, 0x14(r4)
    lfs     f1, 0x10(r4)
    fadds   f2, f2, f0
    lfs     f3, 0x18(r4)
    bl      startFall__18TSleepBossHanachanFfff
branch_0x801d15b8:
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x50(sp)
    addi    r0, sp, 0x50
    lis     r4, 0x801d
    stw     r0, 0x8(sp)
    addi    r8, r4, 0x1664
    addi    r4, r30, 0x3f4
    lfs     f1, -0x2868(rtoc)
    addi    r9, r31, 0x10
    li      r5, 0x0
    li      r6, -0x1
    li      r7, 0x1
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x801d1634

branch_0x801d15f8:
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x4c(sp)
    addi    r0, sp, 0x4c
    addi    r4, r30, 0x408
    stw     r0, 0x8(sp)
    li      r7, 0x1
    li      r8, 0x0
    lwz     r5, 0x17c(r31)
    li      r9, 0x0
    lwz     r6, -0x7930(r13)
    li      r10, 0x0
    lfs     f1, -0x2868(rtoc)
    addi    r5, r5, 0x10
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x801d1634:
    lwz     r3, -0x7930(r13)
    li      r0, 0x3
    addi    r3, r3, 0x78
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
branch_0x801d1648:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr


.globl startCameraShakeSE__FUlUl
startCameraShakeSE__FUlUl: # 0x801d1664
    li      r3, 0x0
    blr


.globl release__11TLeanMirrorFv
release__11TLeanMirrorFv: # 0x801d166c
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x1988
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f4, 0x184(r30)
    lfs     f29, 0x24(r3)
    lfs     f31, 0x4(r3)
    lfs     f2, 0x188(r30)
    fmuls   f0, f29, f4
    lfs     f30, 0x14(r3)
    lfs     f3, 0x180(r30)
    fmuls   f1, f31, f2
    fmsubs  f0, f30, f2, f0
    fmuls   f2, f30, f3
    fmsubs  f1, f29, f3, f1
    stfs    f0, 0x18c(r30)
    fmsubs  f0, f31, f4, f2
    stfs    f1, 0x190(r30)
    stfs    f0, 0x194(r30)
    lfs     f4, 0x188(r30)
    lfs     f5, 0x184(r30)
    fmuls   f1, f31, f4
    lfs     f3, 0x180(r30)
    fmuls   f2, f29, f5
    fmuls   f0, f30, f3
    fmsubs  f3, f29, f3, f1
    fmsubs  f1, f30, f4, f2
    fmsubs  f2, f31, f5, f0
    fmuls   f0, f3, f3
    fmadds  f0, f1, f1, f0
    fmadds  f1, f2, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x184(r30)
    lfs     f2, 0x180(r30)
    fmuls   f0, f30, f0
    lfs     f3, 0x188(r30)
    fmadds  f0, f31, f2, f0
    fmadds  f2, f29, f3, f0
    bl      atan2f
    lwz     r0, -0x7938(r13)
    lis     r3, 0x4330
    lfd     f2, -0x27b0(rtoc)
    fabs    f1, f1
    xoris   r0, r0, 0x8000
    stw     r0, 0x94(sp)
    li      r0, 0x2
    stw     r3, 0x90(sp)
    addi    r3, r30, 0x1a0
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x198(r30)
    lwz     r4, -0x7938(r13)
    stw     r4, 0x104(r30)
    sth     r0, 0xfc(r30)
    lwz     r0, 0xf8(r30)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf8(r30)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xf4(r30)
    subi    r4, rtoc, 0x2864
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d17d8
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x7c(sp)
    addi    r0, sp, 0x7c
    addi    r4, r31, 0x41c
    stw     r0, 0x8(sp)
    li      r7, 0x1
    li      r8, 0x0
    lwz     r5, 0x17c(r30)
    li      r9, 0x0
    lwz     r6, -0x7938(r13)
    li      r10, 0x0
    lwz     r0, -0x7934(r13)
    lfs     f1, -0x2868(rtoc)
    addi    r5, r5, 0x10
    add     r6, r6, r0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x801d188c

branch_0x801d17d8:
    lwz     r3, 0xf4(r30)
    subi    r4, rtoc, 0x285c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d1834
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x78(sp)
    addi    r0, sp, 0x78
    addi    r4, r31, 0x430
    stw     r0, 0x8(sp)
    li      r7, 0x1
    li      r8, 0x0
    lwz     r5, 0x17c(r30)
    li      r9, 0x0
    lwz     r6, -0x7938(r13)
    li      r10, 0x0
    lwz     r0, -0x7934(r13)
    lfs     f1, -0x2868(rtoc)
    addi    r5, r5, 0x10
    add     r6, r6, r0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x801d188c

branch_0x801d1834:
    lwz     r3, 0xf4(r30)
    subi    r4, rtoc, 0x2854
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d188c
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x74(sp)
    addi    r0, sp, 0x74
    addi    r4, r31, 0x444
    stw     r0, 0x8(sp)
    li      r7, 0x1
    li      r8, 0x0
    lwz     r5, 0x17c(r30)
    li      r9, 0x0
    lwz     r6, -0x7938(r13)
    li      r10, 0x0
    lwz     r0, -0x7934(r13)
    lfs     f1, -0x2868(rtoc)
    addi    r5, r5, 0x10
    add     r6, r6, r0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x801d188c:
    li      r3, 0x1
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    addi    sp, sp, 0xb8
    blr


.globl touchEnemy__11TLeanMirrorFP9THitActor
touchEnemy__11TLeanMirrorFP9THitActor: # 0x801d18bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf000
    cmplwi  r0, 0x16
    bne-    branch_0x801d18f4
    li      r0, 0x1
    b       branch_0x801d18f8

branch_0x801d18f4:
    li      r0, 0x0
branch_0x801d18f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d1980
    lbz     r0, 0x1b0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801d1980
    lfs     f31, 0x16c(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f2, 0x138(r30)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x28(r3)
    fmuls   f5, f2, f1
    lfs     f4, 0x10(r31)
    lfs     f1, 0x10(r30)
    fmuls   f6, f2, f0
    lfs     f3, 0x18(r31)
    fabs    f5, f5
    lfs     f2, 0x18(r30)
    fsubs   f0, f4, f1
    lfs     f1, 0x4(r3)
    fabs    f6, f6
    fdivs   f4, f0, f5
    lfs     f0, 0x14c(r30)
    fsubs   f2, f3, f2
    fsubs   f1, f4, f1
    fdivs   f2, f2, f6
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x14c(r30)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x154(r30)
    fsubs   f1, f2, f1
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x154(r30)
branch_0x801d1980:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl touchPlayer__11TLeanMirrorFP9THitActor
touchPlayer__11TLeanMirrorFP9THitActor: # 0x801d199c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801d19d0
    li      r0, 0x1
    b       branch_0x801d19d4

branch_0x801d19d0:
    li      r0, 0x0
branch_0x801d19d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d1a94
    mr      r3, r30
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d1a94
    lfs     f31, 0x160(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f2, 0x138(r30)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x28(r3)
    fmuls   f5, f2, f1
    lfs     f4, 0x10(r31)
    lfs     f1, 0x10(r30)
    fmuls   f6, f2, f0
    lfs     f3, 0x18(r31)
    fabs    f5, f5
    lfs     f2, 0x18(r30)
    fsubs   f0, f4, f1
    lfs     f1, 0x4(r3)
    fabs    f6, f6
    fdivs   f4, f0, f5
    lfs     f0, 0x14c(r30)
    fsubs   f2, f3, f2
    fsubs   f1, f4, f1
    fdivs   f2, f2, f6
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x14c(r30)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x154(r30)
    fsubs   f1, f2, f1
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x154(r30)
    lbz     r0, 0x1ac(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801d1a94
    lis     r3, 0x8001
    addi    r3, r3, 0x11
    bl      startBGM__5MSBgmFUl
    lfs     f1, -0x2868(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    li      r0, 0x1
    stb     r0, 0x1ac(r30)
branch_0x801d1a94:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl receiveMessage__11TLeanMirrorFP9THitActorUl
receiveMessage__11TLeanMirrorFP9THitActorUl: # 0x801d1ab0
    mflr    r0
    cmplwi  r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x801d1b64
    lis     r4, 0x1000
    addi    r3, r30, 0x0
    addi    r4, r4, 0x16
    bl      sendMsg__11TMapObjBaseFUlUl
    lfs     f31, 0x164(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    li      r3, 0x1
    lfs     f2, 0x138(r30)
    lfs     f1, 0x0(r4)
    lfs     f0, 0x28(r4)
    fmuls   f5, f2, f1
    lfs     f4, 0x10(r31)
    lfs     f1, 0x10(r30)
    fmuls   f6, f2, f0
    lfs     f3, 0x18(r31)
    fabs    f5, f5
    lfs     f2, 0x18(r30)
    fsubs   f0, f4, f1
    lfs     f1, 0x4(r4)
    fabs    f6, f6
    fdivs   f4, f0, f5
    lfs     f0, 0x14c(r30)
    fsubs   f2, f3, f2
    fsubs   f1, f4, f1
    fdivs   f2, f2, f6
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x14c(r30)
    lfs     f1, 0x24(r4)
    lfs     f0, 0x154(r30)
    fsubs   f1, f2, f1
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x154(r30)
    b       branch_0x801d1cb0

branch_0x801d1b64:
    cmplwi  r5, 0x1
    bne-    branch_0x801d1bf8
    lis     r4, 0x1000
    addi    r3, r30, 0x0
    addi    r4, r4, 0x16
    bl      sendMsg__11TMapObjBaseFUlUl
    lfs     f31, 0x168(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    li      r3, 0x1
    lfs     f2, 0x138(r30)
    lfs     f1, 0x0(r4)
    lfs     f0, 0x28(r4)
    fmuls   f5, f2, f1
    lfs     f4, 0x10(r31)
    lfs     f1, 0x10(r30)
    fmuls   f6, f2, f0
    lfs     f3, 0x18(r31)
    fabs    f5, f5
    lfs     f2, 0x18(r30)
    fsubs   f0, f4, f1
    lfs     f1, 0x4(r4)
    fabs    f6, f6
    fdivs   f4, f0, f5
    lfs     f0, 0x14c(r30)
    fsubs   f2, f3, f2
    fsubs   f1, f4, f1
    fdivs   f2, f2, f6
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x14c(r30)
    lfs     f1, 0x24(r4)
    lfs     f0, 0x154(r30)
    fsubs   f1, f2, f1
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x154(r30)
    b       branch_0x801d1cb0

branch_0x801d1bf8:
    cmplwi  r5, 0x3
    bne-    branch_0x801d1c7c
    lfs     f31, 0x170(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    li      r3, 0x1
    lfs     f2, 0x138(r30)
    lfs     f1, 0x0(r4)
    lfs     f0, 0x28(r4)
    fmuls   f5, f2, f1
    lfs     f4, 0x10(r31)
    lfs     f1, 0x10(r30)
    fmuls   f6, f2, f0
    lfs     f3, 0x18(r31)
    fabs    f5, f5
    lfs     f2, 0x18(r30)
    fsubs   f0, f4, f1
    lfs     f1, 0x4(r4)
    fabs    f6, f6
    fdivs   f4, f0, f5
    lfs     f0, 0x14c(r30)
    fsubs   f2, f3, f2
    fsubs   f1, f4, f1
    fdivs   f2, f2, f6
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x14c(r30)
    lfs     f1, 0x24(r4)
    lfs     f0, 0x154(r30)
    fsubs   f1, f2, f1
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x154(r30)
    b       branch_0x801d1cb0

branch_0x801d1c7c:
    cmplwi  r5, 0x8
    bne-    branch_0x801d1cac
    lwz     r3, 0x19c(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x19c(r30)
    lwz     r0, 0x19c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x801d1ca4
    mr      r3, r30
    bl      release__11TLeanMirrorFv
branch_0x801d1ca4:
    li      r3, 0x1
    b       branch_0x801d1cb0

branch_0x801d1cac:
    li      r3, 0x0
branch_0x801d1cb0:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl draw__11TLeanMirrorCFv
draw__11TLeanMirrorCFv: # 0x801d1ccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r4, sp, 0x30
    lfs     f2, -0x27a4(rtoc)
    addi    r5, sp, 0x24
    lfs     f0, 0x4(r3)
    lfs     f3, -0x27a8(rtoc)
    li      r6, 0x1
    stfs    f0, 0x3c(sp)
    li      r7, 0x1
    li      r8, 0x0
    lfs     f0, 0x14(r3)
    stfs    f0, 0x40(sp)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x44(sp)
    lwz     r0, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x24(sp)
    fmuls   f1, f2, f1
    fmuls   f1, f3, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x24(sp)
    lfs     f0, 0x28(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(sp)
    lfs     f0, 0x2c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x18(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lwz     r0, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x34(sp)
    lfs     f1, -0x27a0(rtoc)
    stw     r0, 0x38(sp)
    lfs     f0, 0x30(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(sp)
    lfs     f0, 0x34(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x18(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, -0x279c(rtoc)
    lfs     f0, 0xbc(r31)
    lwz     r3, -0x68f0(r13)
    fmuls   f1, f1, f0
    bl      requestCone__12TBeamManagerFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fbbb
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __ct__11TSandCastleFPCc
__ct__11TSandCastleFPCc: # 0x801d1e2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x134
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    subi    r6, r3, 0x588
    lis     r3, 0x803d
    lfs     f1, -0x2868(rtoc)
    subi    r4, r3, 0x70c
    li      r7, 0x0
    stfs    f1, 0x138(r31)
    addi    r5, r6, 0x24
    addi    r0, r4, 0x24
    stfs    f1, 0x13c(r31)
    mr      r3, r31
    stw     r7, 0x144(r31)
    stw     r6, 0x0(r31)
    stw     r5, 0x20(r31)
    stw     r7, 0x148(r31)
    lfs     f0, -0x281c(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f1, 0x150(r31)
    stfs    f1, 0x154(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r7, 0x158(r31)
    stb     r7, 0x15c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__13TSandBombBaseFv
__dt__13TSandBombBaseFv: # 0x801d1ec8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d1f48
    lis     r3, 0x803d
    subi    r3, r3, 0x588
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d1f38
    lis     r3, 0x803d
    subi    r3, r3, 0x134
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d1f38
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d1f38:
    extsh.  r0, r31
    ble-    branch_0x801d1f48
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d1f48:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TSandBaseFv
__dt__9TSandBaseFv: # 0x801d1f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d1fcc
    lis     r3, 0x803d
    subi    r3, r3, 0x134
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d1fbc
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d1fbc:
    extsh.  r0, r31
    ble-    branch_0x801d1fcc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d1fcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__11TSandCastleFv
initMapObj__11TSandCastleFv: # 0x801d1fe8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__13TSandBombBaseFv
    lfs     f0, -0x2798(rtoc)
    li      r0, 0x78
    addi    r3, r31, 0x0
    stfs    f0, 0x13c(r31)
    stw     r0, 0x148(r31)
    bl      sleep__11TMapObjBaseFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__11TSandCastleFv
loadAfter__11TSandCastleFv: # 0x801d202c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0x180(r12)
    mtlr    r12
    blrl
    stw     r3, 0x144(r29)
    lwz     r3, 0x144(r29)
    stw     r29, 0x138(r3)
    lwz     r3, 0x144(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    addi    r31, r3, 0x1de0
    lwz     r30, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x158(r29)
    lwz     r3, 0x158(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl findTriggerActor__11TSandCastleFv
findTriggerActor__11TSandCastleFv: # 0x801d20e0
    mflr    r0
    lis     r3, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x1df8
    mr      r3, r31
    stw     r30, 0x28(sp)
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl calcRootMatrix__11TSandCastleFv
calcRootMatrix__11TSandCastleFv: # 0x801d2140
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x801d2160
    li      r0, 0x1
    b       branch_0x801d2164

branch_0x801d2160:
    li      r0, 0x0
branch_0x801d2164:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d2170
    bl      calcRootMatrix__11TMapObjBaseFv
branch_0x801d2170:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl waitBeforeExplode__11TSandCastleFv
waitBeforeExplode__11TSandCastleFv: # 0x801d2180
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    li      r0, 0x6
    addi    r4, r4, 0x1e08
    stwu    sp, -0x28(sp)
    li      r6, -0x1
    li      r7, 0x1
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    addi    r5, sp, 0x1c
    sth     r0, 0xfc(r3)
    lis     r3, 0x801d
    addi    r8, r3, 0x2200
    lwz     r0, 0x148(r31)
    li      r9, 0x0
    li      r10, 0x0
    stw     r0, 0x104(r31)
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x1c(sp)
    stw     r5, 0x8(sp)
    li      r5, 0x0
    lfs     f1, -0x2868(rtoc)
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    li      r0, 0x1
    stb     r0, 0x15c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl SandCastleCallBack__FUlUl
SandCastleCallBack__FUlUl: # 0x801d2200
    mflr    r0
    cmplwi  r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    bne-    branch_0x801d2280
    lwz     r3, -0x5fa0(r13)
    li      r0, 0x1
    addi    r4, sp, 0x30
    stb     r0, 0x14(r3)
    lfs     f0, -0x2794(rtoc)
    lfs     f1, -0x2790(rtoc)
    stfs    f0, 0x30(sp)
    lfs     f0, -0x278c(rtoc)
    stfs    f1, 0x34(sp)
    lwz     r3, -0x5fa0(r13)
    stfs    f0, 0x38(sp)
    bl      setPos__12TTargetArrowFRCQ29JGeometry8TVec3_f_
    lwz     r3, gpCamera(r13)
    addi    r4, r3, 0x124
    addi    r3, r3, 0x148
    lfs     f3, 0x8(r4)
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r4)
    lfs     f0, 0x0(r3)
    fsubs   f1, f3, f1
    fsubs   f2, f2, f0
    bl      matan__Fff
    lwz     r5, gpCamera(r13)
    addi    r4, r3, 0x0
    lfs     f1, 0xa8(r5)
    addi    r3, r5, 0x0
    bl      warpPosAndAt__15CPolarSubCameraFfs
branch_0x801d2280:
    lwz     r0, 0x44(sp)
    li      r3, 0x1
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl explode__11TSandCastleFv
explode__11TSandCastleFv: # 0x801d2294
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    bl      startControlAnim__11TMapObjBaseFUs
    lfs     f0, -0x281c(rtoc)
    li      r4, 0x1
    stfs    f0, 0x28(r31)
    lwz     r3, 0xec(r31)
    bl      changeCollision__20TMapCollisionManagerFUl
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801d2308
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x30
    lwz     r12, 0xc(r12)
    addi    r6, r31, 0x24
    mtlr    r12
    blrl
branch_0x801d2308:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x55
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lfs     f0, 0x14c(r31)
    li      r4, 0x1
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x801d235c
    cmplwi  r0, 0x4
    beq-    branch_0x801d235c
    li      r4, 0x0
branch_0x801d235c:
    clrlwi. r0, r4, 24
    bne-    branch_0x801d2374
    lwz     r3, -0x7108(r13)
    li      r4, 0xd
    lfs     f1, -0x281c(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x801d2374:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28a4
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d23a4
    addi    r4, r31, 0x10
    li      r3, 0x28a4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d23a4:
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    lwz     r5, -0x7940(r13)
    li      r4, 0x15
    bl      start__9RumbleMgrFiiP3Vec
    li      r0, 0x7
    sth     r0, 0xfc(r31)
    mr      r3, r31
    bl      awake__11TMapObjBaseFv
    lwz     r3, 0x158(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      startControlAnim__11TMapObjBaseFUs
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl expanded__11TSandCastleFv
expanded__11TSandCastleFv: # 0x801d23fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r31, 0x144(r3)
    lfs     f31, 0x150(r3)
    mr      r3, r31
    bl      getMActor__10TLiveActorCFv
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f30, 0x10(r3)
    mr      r3, r31
    bl      getMActor__10TLiveActorCFv
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x20c6
    stfs    f0, 0x10(r3)
    lwz     r5, 0x144(r30)
    lwz     r3, gpMSound(r13)
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d2488
    addi    r4, r31, 0x0
    li      r3, 0x20c6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d2488:
    lwz     r3, 0x144(r30)
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d24a0
    li      r0, 0x2
    sth     r0, 0xfc(r30)
branch_0x801d24a0:
    lwz     r3, 0x144(r30)
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d24d0
    li      r0, 0x2
    sth     r0, 0xfc(r30)
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      startControlAnim__11TMapObjBaseFUs
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      startControlAnim__11TMapObjBaseFUs
branch_0x801d24d0:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl withering__11TSandCastleFv
withering__11TSandCastleFv: # 0x801d24f0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    lfs     f31, 0x13c(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x5
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    lfs     f31, 0x13c(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x5
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x27b0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f1, -0x793c(r13)
    stw     r3, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f2, f0, f2
    fsubs   f0, f2, f30
    fdivs   f0, f0, f2
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f0, -0x2788(rtoc)
    fcmpo   cr0, f30, f0
    ble-    branch_0x801d25f0
    lwz     r3, 0x158(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801d25f0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x5fa0(r13)
    li      r0, 0x0
    stb     r0, 0x14(r3)
branch_0x801d25f0:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d2610
    mr      r3, r31
    bl      sleep__11TMapObjBaseFv
    li      r3, 0x1
    b       branch_0x801d2614

branch_0x801d2610:
    li      r3, 0x0
branch_0x801d2614:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl __ct__13TSandBombBaseFPCc
__ct__13TSandBombBaseFPCc: # 0x801d2630
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x134
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    subi    r4, r3, 0x588
    li      r5, 0x0
    lfs     f1, -0x2868(rtoc)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stfs    f1, 0x138(r31)
    stfs    f1, 0x13c(r31)
    stw     r5, 0x144(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x148(r31)
    lfs     f0, -0x281c(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f1, 0x150(r31)
    stfs    f1, 0x154(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__13TSandBombBaseFv
initMapObj__13TSandBombBaseFv: # 0x801d26b0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x3c
    lis     r5, 0x8039
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x1988
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lfs     f0, -0x27d8(rtoc)
    stfs    f0, 0x138(r3)
    lfs     f0, -0x2784(rtoc)
    stfs    f0, 0x13c(r30)
    stw     r4, 0x140(r30)
    stw     r0, 0x148(r30)
    lfs     f0, -0x2780(rtoc)
    stfs    f0, 0x154(r30)
    lfs     f0, -0x7954(r13)
    stfs    f0, 0x28(r30)
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x284c(rtoc)
    addi    r4, r31, 0x494
    stfs    f0, 0x150(r30)
    lwz     r3, 0xf4(r30)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d2734
    lfs     f0, -0x277c(rtoc)
    stfs    f0, 0x14c(r30)
    lfs     f0, -0x2778(rtoc)
    stfs    f0, 0x154(r30)
    b       branch_0x801d2798

branch_0x801d2734:
    lwz     r3, 0xf4(r30)
    addi    r4, r31, 0x4a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d275c
    lfs     f0, -0x277c(rtoc)
    stfs    f0, 0x14c(r30)
    lfs     f0, -0x2774(rtoc)
    stfs    f0, 0x154(r30)
    b       branch_0x801d2798

branch_0x801d275c:
    lwz     r3, 0xf4(r30)
    addi    r4, r31, 0x4bc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d277c
    lfs     f0, -0x2770(rtoc)
    stfs    f0, 0x14c(r30)
    b       branch_0x801d2798

branch_0x801d277c:
    lwz     r3, 0xf4(r30)
    addi    r4, r31, 0x4d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d2798
    lfs     f0, -0x2770(rtoc)
    stfs    f0, 0x14c(r30)
branch_0x801d2798:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x55
    lbz     r0, 0x55(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d27c8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x4e4
    li      r5, 0x55
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801d27c8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__13TSandBombBaseFv
loadAfter__13TSandBombBaseFv: # 0x801d27e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x180(r12)
    mtlr    r12
    blrl
    stw     r3, 0x144(r31)
    lwz     r3, 0x144(r31)
    stw     r31, 0x138(r3)
    lwz     r3, 0x144(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl findTriggerActor__13TSandBombBaseFv
findTriggerActor__13TSandBombBaseFv: # 0x801d2838
    mflr    r0
    addi    r5, r3, 0x0
    stw     r0, 0x4(sp)
    lis     r3, 0x8039
    addi    r4, r5, 0x10
    stwu    sp, -0x18(sp)
    addi    r3, r3, 0x1e88
    addi    r5, r5, 0x30
    lfs     f0, -0x281c(rtoc)
    addi    r6, sp, 0xc
    stfs    f0, 0xc(sp)
    stfs    f0, 0x10(sp)
    stfs    f0, 0x14(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__13TSandBombBaseFv
control__13TSandBombBaseFv: # 0x801d2880
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r3
    stw     r29, 0x6c(sp)
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r30)
    lwz     r31, 0x144(r30)
    cmplwi  r0, 0x8
    bgt-    branch_0x801d2adc
    lis     r3, 0x803d
    subi    r3, r3, 0x105c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x801D28D0:		# jumptable 801D28CC case 1
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f2, 0x10(r3)
    lfs     f1, -0x794c(r13)
    lfs     f0, -0x2868(rtoc)
    fsubs   f30, f2, f1
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    bne-    branch_0x801d2adc
    lwz     r3, 0x144(r30)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    stfs    f30, 0x10(r3)
    li      r4, 0x5
    lwz     r3, 0x144(r30)
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    stfs    f30, 0x10(r3)
    b       branch_0x801d2adc

branch_0x801D2924:		# jumptable 801D28CC case 5
lwz	  r3, 0x74(r31)
li	  r4, 0
lfs	  f31, -0x7948(r13)
bl	  getFrameCtrl__6MActorFi # MActor::getFrameCtrl((int))
lwz	  r0, 0x74(r31)
li	  r4, 0
lfs	  f30, 0x10(r3)
mr	  r3, r0
bl	  getFrameCtrl__6MActorFi # MActor::getFrameCtrl((int))
fadds	  f0, f31, f30
li	  r4, 5
stfs	  f0, 0x10(r3)
lwz	  r29, 0x144(r30)
lfs	  f31, -0x7948(r13)
lwz	  r3, 0x74(r29)
bl	  getFrameCtrl__6MActorFi # MActor::getFrameCtrl((int))
lwz	  r0, 0x74(r29)
li	  r4, 5
lfs	  f30, 0x10(r3)
mr	  r3, r0
bl	  getFrameCtrl__6MActorFi # MActor::getFrameCtrl((int))
fadds	  f0, f31, f30
li	  r4, 3
stfs	  f0, 0x10(r3)
lwz	  r29, 0x144(r30)
lfs	  f31, -0x7948(r13)
lwz	  r3, 0x74(r29)
bl	  getFrameCtrl__6MActorFi # MActor::getFrameCtrl((int))
lwz	  r0, 0x74(r29)
li	  r4, 3
lfs	  f30, 0x10(r3)
mr	  r3, r0
bl	  getFrameCtrl__6MActorFi # MActor::getFrameCtrl((int))
fadds	  f0, f31, f30
stfs	  f0, 0x10(r3)
lwz	  r3, 0x144(r30)
bl	  animIsFinished__11TMapObjBaseCFv # TMapObjBase::animIsFinished(const(void))
clrlwi.	  r0, r3, 24
beq	  def_801D28CC	# jumptable 801D28CC default case
mr	  r3, r30
lwz	  r12, 0(r30)
lwz	  r12, 0x16C(r12)
mtlr	  r12
blrl
b	  def_801D28CC	# jumptable 801D28CC default case

branch_0x801D29D8:		# jumptable 801D28CC case 6
lwz	  r0, 0x104(r30)
cmpwi	  r0, 0
ble	  branch_0x801D29EC
li	  r0, 1
b	  branch_0x801D29F0

branch_0x801D29EC:
li	  r0, 0

branch_0x801D29F0:
clrlwi.	  r0, r0, 24
bne	  def_801D28CC	# jumptable 801D28CC default case
mr	  r3, r30
lwz	  r12, 0(r30)
lwz	  r12, 0x170(r12)
mtlr	  r12
blrl
b	  def_801D28CC	# jumptable 801D28CC default case

branch_0x801D2A10:		# jumptable 801D28CC case 7
mr	  r3, r30
lwz	  r12, 0(r30)
lwz	  r12, 0x174(r12)
mtlr	  r12
blrl
b	  def_801D28CC	# jumptable 801D28CC default case

branch_0x801D2A28:		# jumptable 801D28CC case 8
mr	  r3, r30
lwz	  r12, 0(r30)
lwz	  r12, 0x178(r12)
mtlr	  r12
blrl
b	  def_801D28CC	# jumptable 801D28CC default case

branch_0x801D2A40:		# jumptable 801D28CC case 2
lwz	  r3, -0x60F0(r13)
addi	  r6, r30, 0x10
li	  r4, 0x13
li	  r5, -1
bl	  start__9RumbleMgrFiiP3Vec # RumbleMgr::start((int,int,Vec *))
mr	  r3, r30
lwz	  r12, 0(r30)
lwz	  r12, 0x168(r12)
mtlr	  r12
blrl
clrlwi.	  r0, r3, 24
beq	  def_801D28CC	# jumptable 801D28CC default case
mr	  r3, r30
lwz	  r12, 0(r30)
lwz	  r12, 0x17C(r12)
mtlr	  r12
blrl
lwz	  r3, -0x60F0(r13)
li	  r4, 0x13
bl	  stop__9RumbleMgrFi # RumbleMgr::stop((int))
b	  def_801D28CC	# jumptable 801D28CC default case

branch_0x801D2A94:		# jumptable 801D28CC case 3
lwz	  r0, 0x104(r30)
cmpwi	  r0, 0
ble	  branch_0x801D2AA8
li	  r0, 1
b	  branch_0x801D2AAC

branch_0x801D2AA8:
li	  r0, 0

branch_0x801D2AAC:
clrlwi.	  r0, r0, 24
bne	  def_801D28CC	# jumptable 801D28CC default case
li	  r0, 1
sth	  r0, 0xFC(r30)
lwz	  r3, 0x144(r30)
bl	  awake__11TMapObjBaseFv # TMapObjBase::awake((void))
lwz	  r3, 0x144(r30)
li	  r4, 1
bl	  startControlAnim__11TMapObjBaseFUs # TMapObjBase::startControlAnim((ushort))
lwz	  r3, 0x144(r30)
li	  r4, 2
bl	  startControlAnim__11TMapObjBaseFUs # TMapObjBase::startControlAnim((ushort))

def_801D28CC:		# jumptable 801D28CC default case
branch_0x801d2adc:
    lwz     r3, 0x144(r30)
    lhz     r0, 0x48(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d2af4
    li      r0, 0x0
    stb     r0, 0x140(r31)
branch_0x801d2af4:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x88
    blr


.globl grow__13TSandBombBaseFv
grow__13TSandBombBaseFv: # 0x801d2b18
    li      r0, 0x5
    sth     r0, 0xfc(r3)
    blr


.globl waitBeforeExplode__13TSandBombBaseFv
waitBeforeExplode__13TSandBombBaseFv: # 0x801d2b24
    li      r0, 0x6
    sth     r0, 0xfc(r3)
    lwz     r0, 0x148(r3)
    stw     r0, 0x104(r3)
    blr


.globl explode__13TSandBombBaseFv
explode__13TSandBombBaseFv: # 0x801d2b38
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    bl      startControlAnim__11TMapObjBaseFUs
    lfs     f0, -0x281c(rtoc)
    li      r4, 0x1
    stfs    f0, 0x28(r31)
    lwz     r3, 0xec(r31)
    bl      changeCollision__20TMapCollisionManagerFUl
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801d2bac
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x30
    lwz     r12, 0xc(r12)
    addi    r6, r31, 0x24
    mtlr    r12
    blrl
branch_0x801d2bac:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x55
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lfs     f0, 0x14c(r31)
    li      r4, 0x1
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x801d2c00
    cmplwi  r0, 0x4
    beq-    branch_0x801d2c00
    li      r4, 0x0
branch_0x801d2c00:
    clrlwi. r0, r4, 24
    bne-    branch_0x801d2c18
    lwz     r3, -0x7108(r13)
    li      r4, 0xd
    lfs     f1, -0x281c(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x801d2c18:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28a4
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d2c48
    addi    r4, r31, 0x10
    li      r3, 0x28a4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d2c48:
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    lwz     r5, -0x7940(r13)
    li      r4, 0x15
    bl      start__9RumbleMgrFiiP3Vec
    li      r0, 0x7
    sth     r0, 0xfc(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl exploding__13TSandBombBaseFv
exploding__13TSandBombBaseFv: # 0x801d2c78
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lfs     f31, -0x7948(r13)
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x0
    stfs    f0, 0x10(r3)
    lwz     r31, 0x144(r30)
    lfs     f31, -0x7948(r13)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    stfs    f0, 0x10(r3)
    mr      r3, r30
    lwz     r4, MarioHitActorPos(r13)
    bl      getDistanceXZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x4c(r30)
    fmr     f31, f1
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xce
    bne-    branch_0x801d2d1c
    li      r0, 0x1
    b       branch_0x801d2d20

branch_0x801d2d1c:
    li      r0, 0x0
branch_0x801d2d20:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d2d30
    li      r0, 0x1
    b       branch_0x801d2d34

branch_0x801d2d30:
    li      r0, 0x0
branch_0x801d2d34:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d2db8
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x276c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d2db8
    bl      SMS_GetMarioGrLevel__Fv
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, -0x2768(rtoc)
    lfs     f2, 0x4(r3)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d2db8
    lfs     f0, 0x154(r30)
    fcmpo   cr0, f31, f0
    bge-    branch_0x801d2db8
    addi    r3, r30, 0x0
    li      r4, MARIOMSG_THROW
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lfs     f2, -0x2868(rtoc)
    addi    r3, sp, 0x3c
    lfs     f0, -0x281c(rtoc)
    stfs    f2, 0x3c(sp)
    lfs     f1, -0x7944(r13)
    stfs    f0, 0x40(sp)
    stfs    f2, 0x44(sp)
    lfs     f0, 0x154(r30)
    fsubs   f0, f0, f31
    fmuls   f1, f1, f0
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
branch_0x801d2db8:
    mr      r3, r30
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d2ddc
    lwz     r3, 0x144(r30)
    li      r4, 0x6
    bl      startControlAnim__11TMapObjBaseFUs
    li      r0, 0x8
    sth     r0, 0xfc(r30)
branch_0x801d2ddc:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl expanded__13TSandBombBaseFv
expanded__13TSandBombBaseFv: # 0x801d2dfc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r31, 0x144(r3)
    lfs     f31, 0x150(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x20c6
    stfs    f0, 0x10(r3)
    lwz     r5, 0x144(r30)
    lwz     r3, gpMSound(r13)
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d2e84
    addi    r4, r31, 0x0
    li      r3, 0x20c6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d2e84:
    lwz     r3, 0x144(r30)
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d2e9c
    li      r0, 0x2
    sth     r0, 0xfc(r30)
branch_0x801d2e9c:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl withered__13TSandBombBaseFv
withered__13TSandBombBaseFv: # 0x801d2ebc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x3
    stwu    sp, -0x8(sp)
    lwz     r4, 0x140(r3)
    stw     r4, 0x104(r3)
    sth     r0, 0xfc(r3)
    lwz     r3, 0x144(r3)
    bl      sleep__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initMapObj__9TSandBombFv
initMapObj__9TSandBombFv: # 0x801d2ef0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getSDLModelFlag__9TSandBombCFv
getSDLModelFlag__9TSandBombCFv: # 0x801d2f10
    li      r3, 0x0
    blr


.globl touchWater__9TSandBombFP9THitActor
touchWater__9TSandBombFP9THitActor: # 0x801d2f18
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lfs     f31, -0x7950(r13)
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x5
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    lfs     f31, -0x7950(r13)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x5
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2764(rtoc)
    mr      r3, r31
    lfs     f2, -0x7950(r13)
    li      r4, 0x289a
    bl      soundBas__11TMapObjBaseFUlff
    lfs     f1, -0x2810(rtoc)
    mr      r3, r31
    lfs     f2, -0x7950(r13)
    li      r4, 0x289b
    bl      soundBas__11TMapObjBaseFUlff
    lfs     f1, -0x27fc(rtoc)
    mr      r3, r31
    lfs     f2, -0x7950(r13)
    li      r4, 0x289c
    bl      soundBas__11TMapObjBaseFUlff
    lfs     f1, -0x2760(rtoc)
    mr      r3, r31
    lfs     f2, -0x7950(r13)
    li      r4, 0x289d
    bl      soundBas__11TMapObjBaseFUlff
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801d3044
    lwz     r3, 0x138(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      startControlAnim__11TMapObjBaseFUs
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      startControlAnim__11TMapObjBaseFUs
    addi    r3, r31, 0x0
    li      r4, 0x5
    bl      startControlAnim__11TMapObjBaseFUs
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x801d3044:
    lwz     r0, 0x6c(sp)
    li      r3, 0x1
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x68
    blr


.globl makeObjAppeared__9TSandBombFv
makeObjAppeared__9TSandBombFv: # 0x801d3064
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      makeObjAppeared__11TMapObjBaseFv
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startControlAnim__11TMapObjBaseFUs
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      startControlAnim__11TMapObjBaseFUs
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__13TSandLeafBaseFv
initMapObj__13TSandLeafBaseFv: # 0x801d30a8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lfs     f0, -0x275c(rtoc)
    stfs    f0, 0x138(r3)
    lfs     f0, -0x27a8(rtoc)
    stfs    f0, 0x13c(r31)
    stw     r0, 0x140(r31)
    lfs     f0, -0x7954(r13)
    stfs    f0, 0x28(r31)
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x281c(rtoc)
    lis     r3, 0x8039
    addi    r6, sp, 0x10
    stfs    f0, 0x10(sp)
    addi    r3, r3, 0x1e94
    addi    r4, r31, 0x10
    stfs    f0, 0x14(sp)
    addi    r5, r31, 0x30
    stfs    f0, 0x18(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x144(r31)
    lwz     r3, 0x144(r31)
    stw     r31, 0x138(r3)
    lwz     r3, 0x144(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl control__13TSandLeafBaseFv
control__13TSandLeafBaseFv: # 0x801d313c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801d3238
    bge-    branch_0x801d3178
    cmpwi   r0, 0x1
    beq-    branch_0x801d32e4
    bge-    branch_0x801d3184
    b       branch_0x801d32e4

branch_0x801d3178:
    cmpwi   r0, 0x5
    beq-    branch_0x801d32c0
    b       branch_0x801d32e4

branch_0x801d3184:
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x13
    li      r5, -0x1
    bl      start__9RumbleMgrFiiP3Vec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d32e4
    lwz     r3, -0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    lwz     r3, 0xec(r31)
    li      r4, 0x0
    bl      changeCollision__20TMapCollisionManagerFUl
    lwz     r30, 0xec(r31)
    addi    r3, sp, 0x24
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, 0x30(r31)
    lfs     f5, 0x34(r31)
    lfs     f6, 0x38(r31)
    lfs     f7, 0x24(r31)
    lfs     f8, 0x28(r31)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r30, 0x8(r30)
    addi    r3, sp, 0x24
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x140(r31)
    li      r0, 0x3
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801d32e4

branch_0x801d3238:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801d324c
    li      r0, 0x1
    b       branch_0x801d3250

branch_0x801d324c:
    li      r0, 0x0
branch_0x801d3250:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d32e4
    lwz     r3, 0x144(r31)
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d32e4
    lwz     r3, 0x144(r31)
    bl      awake__11TMapObjBaseFv
    lwz     r3, 0x144(r31)
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    lwz     r5, 0x144(r31)
    li      r4, 0x3802
    lwz     r3, gpMSound(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d32b4
    addi    r4, r30, 0x0
    li      r3, 0x3802
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d32b4:
    li      r0, 0x5
    sth     r0, 0xfc(r31)
    b       branch_0x801d32e4

branch_0x801d32c0:
    lwz     r3, 0x144(r31)
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d32e4
    lwz     r3, 0x144(r31)
    li      r4, 0x0
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x1
    sth     r0, 0xfc(r31)
branch_0x801d32e4:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl grow__13TSandLeafBaseFv
grow__13TSandLeafBaseFv: # 0x801d32fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x801d3330
    cmplwi  r0, 0x4
    bne-    branch_0x801d3468
branch_0x801d3330:
    lfs     f2, 0x28(r30)
    lfs     f1, -0x281c(rtoc)
    fcmpo   cr0, f2, f1
    bge-    branch_0x801d3468
    lfs     f0, 0x138(r30)
    fadds   f0, f2, f0
    stfs    f0, 0x28(r30)
    lfs     f0, 0x28(r30)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801d335c
    stfs    f1, 0x28(r30)
branch_0x801d335c:
    lhz     r0, 0xfc(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x801d33e0
    lwz     r3, 0xec(r30)
    li      r4, 0x1
    bl      changeCollision__20TMapCollisionManagerFUl
    lwz     r31, 0xec(r30)
    addi    r3, sp, 0x38
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    lfs     f4, 0x30(r30)
    lfs     f5, 0x34(r30)
    lfs     f6, 0x38(r30)
    lfs     f7, 0x24(r30)
    lfs     f8, 0x28(r30)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r31, 0x8(r31)
    addi    r3, sp, 0x38
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x144(r30)
    li      r4, 0x2
    bl      startControlAnim__11TMapObjBaseFUs
    li      r0, 0x4
    sth     r0, 0xfc(r30)
branch_0x801d33e0:
    bl      SMSGetAnmFrameRate__Fv
    lwz     r31, 0x144(r30)
    fmr     f31, f1
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    addi    r6, r30, 0x10
    li      r4, 0x15
    li      r5, 0x5
    stfs    f0, 0x10(r3)
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiiP3Vec
    lwz     r5, 0x144(r30)
    li      r4, 0x2099
    lwz     r3, gpMSound(r13)
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d3460
    addi    r4, r31, 0x0
    li      r3, 0x2099
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d3460:
    lwz     r0, -0x7958(r13)
    stw     r0, 0x104(r30)
branch_0x801d3468:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl __ct__9TSandBaseFPCc
__ct__9TSandBaseFPCc: # 0x801d3488
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x134
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2868(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stw     r0, 0x144(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl withering__9TSandBaseFv
withering__9TSandBaseFv: # 0x801d34e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lfs     f1, 0x28(r3)
    lfs     f0, 0x13c(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(r3)
    lfs     f0, 0x28(r3)
    lfs     f1, -0x7954(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801d351c
    stfs    f1, 0x28(r30)
branch_0x801d351c:
    lwz     r5, 0x144(r30)
    li      r4, 0x2099
    lwz     r3, gpMSound(r13)
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d3554
    addi    r4, r31, 0x0
    li      r3, 0x2099
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d3554:
    lfs     f1, 0x28(r30)
    lfs     f0, -0x7954(r13)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801d3570
    li      r3, 0x1
    b       branch_0x801d3574

branch_0x801d3570:
    li      r3, 0x0
branch_0x801d3574:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl control__9TSandLeafFv
control__9TSandLeafFv: # 0x801d358c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lfs     f1, -0x2758(rtoc)
    addi    r4, r31, 0xc4
    lfs     f0, 0x14(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x14(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchWater__9TSandLeafFP9THitActor
touchWater__9TSandLeafFP9THitActor: # 0x801d35e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x138(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    li      r3, 0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__23TMammaMirrorMapOperatorFv
__dt__23TMammaMirrorMapOperatorFv: # 0x801d3618
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3670
    lis     r3, 0x803d
    subi    r0, r3, 0x1038
    stw     r0, 0x0(r30)
    beq-    branch_0x801d3660
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801d3660:
    extsh.  r0, r31
    ble-    branch_0x801d3670
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3670:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TGoalWatermelonFv
__dt__15TGoalWatermelonFv: # 0x801d368c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d36f4
    lis     r3, 0x803d
    subi    r3, r3, 0x1014
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d36e4
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d36e4:
    extsh.  r0, r31
    ble-    branch_0x801d36f4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d36f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TWatermelonStaticFv
__dt__17TWatermelonStaticFv: # 0x801d3710
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3778
    lis     r3, 0x803d
    subi    r3, r3, 0xeb0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3768
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d3768:
    extsh.  r0, r31
    ble-    branch_0x801d3778
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3778:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getDepthAtFloating__11TMapObjBallFv
getDepthAtFloating__11TMapObjBallFv: # 0x801d3794
    lfs     f1, 0x18c(r3)
    blr


.globl __dt__9TSandBirdFv
__dt__9TSandBirdFv: # 0x801d379c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d381c
    lis     r3, 0x803d
    subi    r3, r3, 0xd4c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d380c
    lis     r3, 0x803d
    addi    r3, r3, 0x61d0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d380c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d380c:
    extsh.  r0, r31
    ble-    branch_0x801d381c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d381c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TMammaYachtFv
__dt__11TMammaYachtFv: # 0x801d3838
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d38a0
    lis     r3, 0x803d
    subi    r3, r3, 0xbdc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3890
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d3890:
    extsh.  r0, r31
    ble-    branch_0x801d38a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d38a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TMammaBlockRotateFv
__dt__17TMammaBlockRotateFv: # 0x801d38bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3924
    lis     r3, 0x803d
    subi    r3, r3, 0xa78
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3914
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d3914:
    extsh.  r0, r31
    ble-    branch_0x801d3924
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3924:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TShiningStoneFv
__dt__13TShiningStoneFv: # 0x801d3940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d39a8
    lis     r3, 0x803d
    subi    r3, r3, 0x914
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3998
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801d3998:
    extsh.  r0, r31
    ble-    branch_0x801d39a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d39a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TLeanMirrorFv
__dt__11TLeanMirrorFv: # 0x801d39c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3a2c
    lis     r3, 0x803d
    subi    r3, r3, 0x870
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3a1c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d3a1c:
    extsh.  r0, r31
    ble-    branch_0x801d3a2c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3a2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TSandCastleFv
__dt__11TSandCastleFv: # 0x801d3a48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3ac8
    lis     r3, 0x803d
    subi    r3, r3, 0x70c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3ab8
    lis     r3, 0x803d
    subi    r3, r3, 0x588
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3ab8
    lis     r3, 0x803d
    subi    r3, r3, 0x134
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801d3ab8:
    extsh.  r0, r31
    ble-    branch_0x801d3ac8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3ac8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TSandBombFv
__dt__9TSandBombFv: # 0x801d3ae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3b64
    lis     r3, 0x803d
    subi    r3, r3, 0x404
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3b54
    lis     r3, 0x803d
    addi    r3, r3, 0x38
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3b54
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d3b54:
    extsh.  r0, r31
    ble-    branch_0x801d3b64
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3b64:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TSandLeafBaseFv
__dt__13TSandLeafBaseFv: # 0x801d3b80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3c00
    lis     r3, 0x803d
    subi    r3, r3, 0x2a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3bf0
    lis     r3, 0x803d
    subi    r3, r3, 0x134
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3bf0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d3bf0:
    extsh.  r0, r31
    ble-    branch_0x801d3c00
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3c00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjMamma_cpp
__sinit_MapObjMamma_cpp: # 0x801d3c1c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x66d0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3c64
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801d3c64:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3c94
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801d3c94:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3cc4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801d3cc4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3cf4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801d3cf4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3d24
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801d3d24:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3d54
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801d3d54:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3d84
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801d3d84:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3db4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801d3db4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3de4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801d3de4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3e14
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801d3e14:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3e44
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801d3e44:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3e74
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801d3e74:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3ea4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801d3ea4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3ed4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801d3ed4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801d3f04
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801d3f04:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__9TSandLeafFv
_32___dt__9TSandLeafFv: # 0x801d3f18
    subi    r3, r3, 0x20
    b       __dt__9TSandLeafFv


.globl _32___dt__9TSandBaseFv
_32___dt__9TSandBaseFv: # 0x801d3f20
    subi    r3, r3, 0x20
    b       __dt__9TSandBaseFv


.globl _32___dt__13TSandLeafBaseFv
_32___dt__13TSandLeafBaseFv: # 0x801d3f28
    subi    r3, r3, 0x20
    b       __dt__13TSandLeafBaseFv


.globl _32___dt__9TSandBombFv
_32___dt__9TSandBombFv: # 0x801d3f30
    subi    r3, r3, 0x20
    b       __dt__9TSandBombFv


.globl _32___dt__13TSandBombBaseFv
_32___dt__13TSandBombBaseFv: # 0x801d3f38
    subi    r3, r3, 0x20
    b       __dt__13TSandBombBaseFv


.globl _32___dt__11TSandCastleFv
_32___dt__11TSandCastleFv: # 0x801d3f40
    subi    r3, r3, 0x20
    b       __dt__11TSandCastleFv


.globl _32___dt__11TLeanMirrorFv
_32___dt__11TLeanMirrorFv: # 0x801d3f48
    subi    r3, r3, 0x20
    b       __dt__11TLeanMirrorFv


.globl _32___dt__13TShiningStoneFv
_32___dt__13TShiningStoneFv: # 0x801d3f50
    subi    r3, r3, 0x20
    b       __dt__13TShiningStoneFv


.globl _32___dt__17TMammaBlockRotateFv
_32___dt__17TMammaBlockRotateFv: # 0x801d3f58
    subi    r3, r3, 0x20
    b       __dt__17TMammaBlockRotateFv


.globl _32___dt__11TMammaYachtFv
_32___dt__11TMammaYachtFv: # 0x801d3f60
    subi    r3, r3, 0x20
    b       __dt__11TMammaYachtFv


.globl _32___dt__9TSandBirdFv
_32___dt__9TSandBirdFv: # 0x801d3f68
    subi    r3, r3, 0x20
    b       __dt__9TSandBirdFv


.globl _32___dt__17TWatermelonStaticFv
_32___dt__17TWatermelonStaticFv: # 0x801d3f70
    subi    r3, r3, 0x20
    b       __dt__17TWatermelonStaticFv


.globl _32___dt__15TGoalWatermelonFv
_32___dt__15TGoalWatermelonFv: # 0x801d3f78
    subi    r3, r3, 0x20
    b       __dt__15TGoalWatermelonFv


.globl _32___dt__8TSandEggFv
_32___dt__8TSandEggFv: # 0x801d3f80
    subi    r3, r3, 0x20
    b       __dt__8TSandEggFv

