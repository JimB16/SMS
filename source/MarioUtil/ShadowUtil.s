
.globl __dt__19TMBindShadowManagerFv
__dt__19TMBindShadowManagerFv: # 0x8022df4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r27, 0x54(sp)
    mr.     r31, r3
    addi    r27, r4, 0x0
    beq-    branch_0x8022e028
    lis     r3, 0x803e
    subi    r3, r3, 0x4ef4
    addic.  r0, r31, 0x4c
    stw     r3, 0x0(r31)
    beq-    branch_0x8022dff8
    addi    r3, sp, 0x4c
    addi    r4, r31, 0x54
    bl      __ct__Q37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorFPQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x44
    stw     r0, 0x48(sp)
    lwz     r4, 0x54(r31)
    bl      __ct__Q37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorFPQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__6TNode_
    lwz     r0, 0x44(sp)
    addi    r30, sp, 0x30
    addi    r29, sp, 0x28
    stw     r0, 0x40(sp)
    addi    r28, sp, 0x24
    b       branch_0x8022dfd4

branch_0x8022dfb4:
    lwz     r0, 0x40(sp)
    addi    r5, r30, 0x0
    addi    r3, sp, 0x2c
    stw     r0, 0x30(sp)
    addi    r4, r31, 0x4c
    bl      erase__Q27JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__FQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iterator
    lwz     r0, 0x2c(sp)
    stw     r0, 0x40(sp)
branch_0x8022dfd4:
    lwz     r5, 0x48(sp)
    mr      r3, r28
    lwz     r0, 0x40(sp)
    mr      r4, r29
    stw     r5, 0x28(sp)
    stw     r0, 0x24(sp)
    bl      __eq__7JGadgetFQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x8022dfb4
branch_0x8022dff8:
    cmplwi  r31, 0x0
    beq-    branch_0x8022e018
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022e018:
    extsh.  r0, r27
    ble-    branch_0x8022e028
    mr      r3, r31
    bl      __dl__FPv
branch_0x8022e028:
    mr      r3, r31
    lmw     r27, 0x54(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __eq__7JGadgetFQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iterator
__eq__7JGadgetFQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iterator: # 0x8022e040
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__FQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iterator
erase__Q27JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__FQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iterator: # 0x8022e058
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorFPQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__6TNode_
__ct__Q37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorFPQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__6TNode_: # 0x8022e0c4
    stw     r4, 0x0(r3)
    blr


.globl calcVtx__19TMBindShadowManagerFv
calcVtx__19TMBindShadowManagerFv: # 0x8022e0cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x228(sp)
    stfd    f31, 0x220(sp)
    stfd    f30, 0x218(sp)
    stfd    f29, 0x210(sp)
    stfd    f28, 0x208(sp)
    stfd    f27, 0x200(sp)
    stfd    f26, 0x1f8(sp)
    stfd    f25, 0x1f0(sp)
    stfd    f24, 0x1e8(sp)
    stfd    f23, 0x1e0(sp)
    stfd    f22, 0x1d8(sp)
    stfd    f21, 0x1d0(sp)
    stfd    f20, 0x1c8(sp)
    stfd    f19, 0x1c0(sp)
    stmw    r17, 0x184(sp)
    mr      r31, r3
    li      r29, 0x0
    li      r27, 0x0
    lwz     r26, 0x18(r3)
    lis     r3, 0x8040
    addi    r0, r3, 0x45dc
    stw     r29, 0x2c(r31)
    lis     r3, 0x803a
    mr      r25, r0
    lfs     f30, -0x166c(rtoc)
    subi    r30, r3, 0x24f8
    lfs     f22, -0x1664(rtoc)
    lfs     f31, -0x1644(rtoc)
    lfs     f23, -0x1670(rtoc)
    lfs     f24, -0x1668(rtoc)
    lfs     f25, -0x1658(rtoc)
    lfs     f26, -0x1654(rtoc)
    lfs     f27, -0x1650(rtoc)
    lfs     f28, -0x164c(rtoc)
    lfs     f29, -0x1648(rtoc)
    b       branch_0x8022e8a4

branch_0x8022e164:
    lwz     r0, 0x10(r31)
    add     r28, r0, r29
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r28)
    stw     r3, 0x170(sp)
    stw     r0, 0x174(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x178(sp)
    lbz     r0, 0x1c(r28)
    cmplwi  r0, 0x1
    bne-    branch_0x8022e230
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r28)
    lfs     f0, -0x7708(r13)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x160(sp)
    lwz     r0, 0x158(sp)
    lwz     r3, 0x15c(sp)
    stw     r0, 0x164(sp)
    lwz     r0, 0x160(sp)
    stw     r3, 0x168(sp)
    stw     r0, 0x16c(sp)
    lfs     f1, 0x168(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x168(sp)
    lfs     f5, 0x15c(sp)
    lfs     f0, 0x168(sp)
    lwz     r3, -0x6100(r13)
    fsubs   f7, f5, f5
    fsubs   f6, f0, f5
    lfsu    f2, 0x30(r3)
    lfs     f1, 0x158(sp)
    lfs     f0, 0x164(sp)
    fnmsubs  f4, f2, f7, f1
    fnmsubs  f2, f2, f6, f0
    lfs     f8, 0x8(r3)
    lfs     f3, 0x160(sp)
    fadds   f0, f5, f5
    lfs     f1, 0x16c(sp)
    fadds   f2, f2, f4
    fnmsubs  f3, f8, f7, f3
    fnmsubs  f1, f8, f6, f1
    fmuls   f2, f23, f2
    fmuls   f0, f23, f0
    fadds   f1, f1, f3
    stfs    f2, 0x0(r28)
    fmuls   f1, f23, f1
    stfs    f0, 0x4(r28)
    stfs    f1, 0x8(r28)
branch_0x8022e230:
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r28)
    stw     r3, 0x100(sp)
    stw     r0, 0x104(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x108(sp)
    lfs     f20, 0x104(sp)
    lbz     r0, 0x1d(r28)
    fmr     f21, f20
    cmplwi  r0, 0x0
    beq-    branch_0x8022e2ec
    lwz     r3, -0x6100(r13)
    addi    r4, sp, 0xfc
    lfs     f19, 0x108(sp)
    lfs     f0, 0x60(r3)
    fmr     f3, f19
    lwz     r3, -0x6328(r13)
    fadds   f2, f20, f0
    lfs     f1, 0x100(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0xfc(sp)
    fmr     f21, f1
    cmplwi  r3, 0x0
    beq-    branch_0x8022e2ec
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8022e2bc
    cmplwi  r3, 0x101
    beq-    branch_0x8022e2bc
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8022e2bc
    cmplwi  r3, 0x4104
    bne-    branch_0x8022e2c4
branch_0x8022e2bc:
    li      r0, 0x1
    b       branch_0x8022e2c8

branch_0x8022e2c4:
    li      r0, 0x0
branch_0x8022e2c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8022e2ec
    fmr     f2, f20
    lwz     r3, -0x6328(r13)
    fmr     f3, f19
    lfs     f1, 0x100(sp)
    addi    r4, sp, 0xfc
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    fmr     f21, f1
branch_0x8022e2ec:
    lbz     r0, 0x1c(r28)
    cmplwi  r0, 0x1
    beq-    branch_0x8022e2fc
    stfs    f21, 0x4(r28)
branch_0x8022e2fc:
    lfs     f0, 0x18(r28)
    lfs     f3, -0x166c(rtoc)
    fcmpo   cr0, f0, f24
    bgt-    branch_0x8022e318
    lfs     f0, 0x14(r28)
    fcmpu   cr0, f22, f0
    beq-    branch_0x8022e31c
branch_0x8022e318:
    lfs     f3, -0x1660(rtoc)
branch_0x8022e31c:
    lfs     f1, 0xc(r28)
    lfs     f2, 0x10(r28)
    fmr     f0, f1
    fcmpo   cr0, f1, f2
    bge-    branch_0x8022e334
    fmr     f0, f2
branch_0x8022e334:
    fmuls   f0, f0, f3
    lbz     r0, 0x1c(r28)
    fmuls   f3, f25, f1
    lfs     f4, -0x165c(rtoc)
    fmuls   f1, f25, f2
    fmuls   f0, f25, f0
    cmplwi  r0, 0x3
    fmuls   f7, f3, f30
    lfs     f5, 0x14(r28)
    fmuls   f8, f1, f30
    fmuls   f0, f30, f0
    bne-    branch_0x8022e380
    lfs     f0, -0x7704(r13)
    fmr     f4, f22
    lfs     f8, -0x1660(rtoc)
    fmuls   f7, f1, f0
    stfs    f30, 0x10(r28)
    fmuls   f0, f3, f0
    stfs    f30, 0xc(r28)
branch_0x8022e380:
    lwz     r4, 0x0(r28)
    li      r0, 0x0
    lwz     r3, 0x4(r28)
    stw     r4, 0xd8(sp)
    stw     r3, 0xdc(sp)
    lwz     r3, 0x8(r28)
    stw     r3, 0xe0(sp)
    lfs     f1, 0xc(r28)
    fmuls   f1, f1, f26
    stfs    f1, 0xc(r28)
    lfs     f1, 0x10(r28)
    fmuls   f1, f1, f26
    stfs    f1, 0x10(r28)
    stfs    f27, 0x0(r26)
    stw     r0, 0x64(r26)
    stw     r0, 0x68(r26)
    stw     r0, 0x6c(r26)
    stw     r28, 0x68(r26)
    lfs     f1, 0xc(r28)
    stfs    f1, 0x0(r26)
    lfs     f1, 0xc(r28)
    lfs     f2, 0x10(r28)
    fcmpo   cr0, f1, f2
    bge-    branch_0x8022e3e4
    stfs    f2, 0x0(r26)
branch_0x8022e3e4:
    lfs     f1, 0x0(r26)
    fcmpo   cr0, f1, f28
    ble-    branch_0x8022e3f4
    stfs    f28, 0x0(r26)
branch_0x8022e3f4:
    lfs     f1, 0x0(r26)
    fmuls   f1, f1, f29
    stfs    f1, 0x0(r26)
    lbz     r0, 0x1c(r28)
    cmplwi  r0, 0x1
    bne-    branch_0x8022e794
    lwz     r0, 0x2c(r31)
    cmpwi   r0, 0x1d
    bge-    branch_0x8022e794
    lfs     f1, 0x4(r28)
    fsubs   f1, f21, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f30
    bge-    branch_0x8022e794
    lwz     r5, 0x170(sp)
    fmr     f7, f30
    lfs     f1, 0x170(sp)
    fmr     f8, f30
    lfs     f0, 0x100(sp)
    stw     r5, 0xd8(sp)
    fcmpo   cr0, f1, f0
    lwz     r4, 0x174(sp)
    lwz     r3, 0x178(sp)
    fmr     f0, f30
    stw     r4, 0xdc(sp)
    stw     r3, 0xe0(sp)
    li      r0, 0x0
    lfs     f4, -0x1664(rtoc)
    cror    2, 1, 2
    bne-    branch_0x8022e610
    lfs     f1, 0x178(sp)
    lfs     f9, 0x108(sp)
    fcmpo   cr0, f1, f9
    blt-    branch_0x8022e610
    stw     r5, 0xcc(sp)
    li      r0, 0x1
    lfs     f6, 0x100(sp)
    stw     r4, 0xd0(sp)
    stw     r3, 0xd4(sp)
    lwz     r3, 0x2c(r31)
    lfs     f1, 0xcc(sp)
    mulli   r3, r3, 0x3c
    lfs     f3, 0xd4(sp)
    lfs     f2, 0xc(r28)
    fsubs   f1, f6, f1
    lwz     r4, 0x28(r31)
    stfsx   f2, r4, r3
    fsubs   f2, f9, f3
    lwz     r3, 0x2c(r31)
    lfs     f3, 0x10(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fneg    f3, f3
    addi    r3, r3, 0x8
    stfsx   f3, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f3, 0xc(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fadds   f3, f1, f3
    addi    r3, r3, 0xc
    stfsx   f3, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f3, 0x10(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fsubs   f3, f2, f3
    addi    r3, r3, 0x14
    stfsx   f3, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f3, 0xc(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fsubs   f3, f1, f3
    addi    r3, r3, 0x18
    stfsx   f3, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f3, 0x10(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fsubs   f3, f2, f3
    addi    r3, r3, 0x20
    stfsx   f3, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f3, 0xc(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fsubs   f1, f1, f3
    addi    r3, r3, 0x24
    stfsx   f1, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f1, 0x10(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fadds   f1, f2, f1
    addi    r3, r3, 0x2c
    stfsx   f1, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f1, 0xc(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    fneg    f1, f1
    addi    r3, r3, 0x30
    stfsx   f1, r4, r3
    lwz     r3, 0x2c(r31)
    lfs     f1, 0x10(r28)
    mulli   r3, r3, 0x3c
    lwz     r4, 0x28(r31)
    addi    r3, r3, 0x38
    stfsx   f1, r4, r3
    lwz     r3, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r3, 0x3c
    addi    r3, r3, 0x4
    stfsx   f4, r4, r3
    lwz     r3, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r3, 0x3c
    addi    r3, r3, 0x10
    stfsx   f4, r4, r3
    lwz     r3, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r3, 0x3c
    addi    r3, r3, 0x1c
    stfsx   f4, r4, r3
    lwz     r3, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r3, 0x3c
    addi    r3, r3, 0x28
    stfsx   f4, r4, r3
    lwz     r3, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r3, 0x3c
    addi    r3, r3, 0x34
    stfsx   f4, r4, r3
branch_0x8022e610:
    clrlwi. r0, r0, 24
    bne-    branch_0x8022e780
    lwz     r0, 0x170(sp)
    lwz     r3, 0x174(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x178(sp)
    stw     r3, 0xb4(sp)
    lfs     f6, 0x100(sp)
    stw     r0, 0xb8(sp)
    lfs     f2, 0x108(sp)
    lwz     r0, 0x2c(r31)
    lfs     f3, 0xb0(sp)
    mulli   r0, r0, 0x3c
    lfs     f1, 0xb8(sp)
    lwz     r3, 0x28(r31)
    fsubs   f9, f6, f3
    fsubs   f1, f2, f1
    stfsx   f30, r3, r0
    fadds   f6, f30, f9
    fsubs   f3, f1, f30
    lwz     r0, 0x2c(r31)
    fsubs   f2, f9, f30
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    fadds   f1, f30, f1
    addi    r0, r3, 0x8
    stfsx   f30, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0xc
    stfsx   f6, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x14
    stfsx   f3, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x18
    stfsx   f2, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x20
    stfsx   f3, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x24
    stfsx   f2, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x2c
    stfsx   f1, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x30
    stfsx   f31, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x38
    stfsx   f30, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x4
    stfsx   f22, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x10
    stfsx   f22, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x1c
    stfsx   f22, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x28
    stfsx   f22, r4, r0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x28(r31)
    mulli   r3, r0, 0x3c
    addi    r0, r3, 0x34
    stfsx   f22, r4, r0
branch_0x8022e780:
    lwz     r0, 0x28(r31)
    stw     r0, 0x64(r26)
    lwz     r3, 0x2c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r31)
branch_0x8022e794:
    lwz     r3, 0x20(r28)
    lfs     f1, -0x166c(rtoc)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8022e7ac
    lfs     f1, -0x1640(rtoc)
branch_0x8022e7ac:
    fmuls   f0, f0, f1
    addi    r3, r26, 0x4
    fmr     f6, f22
    stfs    f0, 0x8(sp)
    lfs     f1, 0xd8(sp)
    lfs     f2, 0xdc(sp)
    lfs     f3, 0xe0(sp)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    addi    r4, r26, 0x4
    addi    r3, r25, 0x0
    addi    r5, r4, 0x0
    bl      PSMTXConcat
    lfs     f2, 0xc(r28)
    lfs     f1, 0x88(r30)
    lfs     f0, 0x0(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x34(r26)
    lfs     f2, 0x10(r28)
    lfs     f1, 0x98(r30)
    lfs     f0, 0x8(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x3c(r26)
    stfs    f21, 0x38(r26)
    lfs     f2, 0xc(r28)
    lfs     f1, 0x8c(r30)
    lfs     f0, 0x0(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x40(r26)
    lfs     f2, 0x10(r28)
    lfs     f1, 0x9c(r30)
    lfs     f0, 0x8(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x48(r26)
    stfs    f21, 0x44(r26)
    lfs     f2, 0xc(r28)
    lfs     f1, 0x90(r30)
    lfs     f0, 0x0(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x4c(r26)
    lfs     f2, 0x10(r28)
    lfs     f1, 0xa0(r30)
    lfs     f0, 0x8(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x54(r26)
    stfs    f21, 0x50(r26)
    lfs     f2, 0xc(r28)
    lfs     f1, 0x94(r30)
    lfs     f0, 0x0(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x58(r26)
    lfs     f2, 0x10(r28)
    lfs     f1, 0xa4(r30)
    lfs     f0, 0x8(r28)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x60(r26)
    stfs    f21, 0x5c(r26)
    lwz     r0, 0x14(r31)
    cmpwi   r0, 0x200
    bge-    branch_0x8022eb74
    addi    r26, r26, 0x70
    addi    r27, r27, 0x1
    addi    r29, r29, 0x24
branch_0x8022e8a4:
    lwz     r0, 0x14(r31)
    cmpw    r27, r0
    blt+    branch_0x8022e164
    cmpwi   r0, 0x0
    beq-    branch_0x8022eb74
    lbz     r0, -0x60f8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8022eb74
    lwz     r26, 0x18(r31)
    li      r7, 0x0
    lwz     r25, 0x24(r31)
    li      r3, 0x0
    lwz     r24, 0x1c(r31)
    li      r5, 0x0
    lis     r4, 0x2000
    b       branch_0x8022e904

branch_0x8022e8e4:
    add     r6, r24, r3
    stw     r5, 0x4(r6)
    addi    r7, r7, 0x1
    addi    r3, r3, 0x14
    stw     r5, 0xc(r6)
    stw     r5, 0x8(r6)
    stw     r5, 0x10(r6)
    stw     r4, 0x0(r6)
branch_0x8022e904:
    lwz     r0, 0x20(r31)
    cmpw    r7, r0
    blt+    branch_0x8022e8e4
    li      r0, 0x0
    stw     r0, 0x20(r31)
    li      r23, 0x0
    li      r20, 0x0
    li      r19, 0x0
    lis     r29, 0x2000
    lis     r30, 0x4000
    b       branch_0x8022ea78

branch_0x8022e930:
    add     r28, r26, r19
    li      r0, 0x0
    stw     r0, 0x6c(r28)
    add     r27, r25, r20
    li      r22, 0x0
    stw     r0, 0x1c(r27)
    li      r21, 0x0
    li      r18, 0x0
    lfs     f0, 0x34(r28)
    stfs    f0, 0x0(r27)
    lfs     f0, 0x3c(r28)
    stfs    f0, 0x8(r27)
    lfs     f0, 0x4c(r28)
    stfs    f0, 0xc(r27)
    lfs     f0, 0x54(r28)
    stfs    f0, 0x14(r27)
    lfs     f0, 0x38(r28)
    stfs    f0, 0x4(r27)
    lfs     f1, -0x7700(r13)
    lfs     f0, 0x0(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r27)
    stw     r0, 0x18(r27)
    b       branch_0x8022e9d0

branch_0x8022e990:
    add     r17, r24, r18
    lwz     r3, 0xc(r17)
    mr      r4, r27
    bl      conectCubeDiffer__FP21TAlphaShadowBlendQuadP21TAlphaShadowBlendQuad
    clrlwi. r0, r3, 24
    beq-    branch_0x8022e9c8
    lwz     r3, 0x8(r17)
    li      r22, 0x1
    stw     r28, 0x6c(r3)
    stw     r28, 0x8(r17)
    lwz     r3, 0x10(r17)
    stw     r27, 0x1c(r3)
    stw     r27, 0x10(r17)
    b       branch_0x8022e9dc

branch_0x8022e9c8:
    addi    r21, r21, 0x1
    addi    r18, r18, 0x14
branch_0x8022e9d0:
    lwz     r0, 0x20(r31)
    cmpw    r21, r0
    blt+    branch_0x8022e990
branch_0x8022e9dc:
    clrlwi. r0, r22, 24
    bne-    branch_0x8022ea6c
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x100
    blt-    branch_0x8022e9fc
    li      r0, 0x100
    stw     r0, 0x20(r31)
    b       branch_0x8022ea6c

branch_0x8022e9fc:
    mulli   r3, r0, 0x14
    addi    r0, r3, 0x4
    stwx    r28, r24, r0
    lwz     r0, 0x20(r31)
    mulli   r3, r0, 0x14
    addi    r0, r3, 0x8
    stwx    r28, r24, r0
    lwz     r0, 0x20(r31)
    mulli   r3, r0, 0x14
    addi    r0, r3, 0xc
    stwx    r27, r24, r0
    lwz     r0, 0x20(r31)
    mulli   r3, r0, 0x14
    addi    r0, r3, 0x10
    stwx    r27, r24, r0
    lwz     r0, 0x20(r31)
    mulli   r0, r0, 0x14
    stwx    r29, r24, r0
    lwz     r3, 0x68(r28)
    lwz     r0, 0x20(r3)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x8022ea60
    lwz     r0, 0x20(r31)
    mulli   r0, r0, 0x14
    stwx    r30, r24, r0
branch_0x8022ea60:
    lwz     r3, 0x20(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x20(r31)
branch_0x8022ea6c:
    addi    r23, r23, 0x1
    addi    r20, r20, 0x20
    addi    r19, r19, 0x70
branch_0x8022ea78:
    lwz     r0, 0x14(r31)
    cmpw    r23, r0
    blt+    branch_0x8022e930
    li      r21, 0x0
    li      r23, 0x0
    lis     r18, 0x4000
    b       branch_0x8022eb68

branch_0x8022ea94:
    add     r29, r24, r23
    addi    r30, r23, 0xc
    li      r22, 0x0
    li      r25, 0x0
    b       branch_0x8022eb54

branch_0x8022eaa8:
    cmpw    r21, r22
    beq-    branch_0x8022eb4c
    lwz     r0, 0x4(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8022eb4c
    add     r28, r24, r25
    addi    r27, r28, 0x4
    lwz     r0, 0x4(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8022eb4c
    addi    r0, r25, 0xc
    lwzx    r3, r24, r30
    lwzx    r4, r24, r0
    bl      conectCubeSame__FP21TAlphaShadowBlendQuadP21TAlphaShadowBlendQuad
    clrlwi. r0, r3, 24
    beq-    branch_0x8022eb4c
    lwz     r0, 0x0(r27)
    addi    r4, r28, 0xc
    lwz     r3, 0x8(r29)
    stw     r0, 0x6c(r3)
    lwz     r0, 0x8(r28)
    stw     r0, 0x8(r29)
    lwz     r0, 0xc(r28)
    lwz     r3, 0x10(r29)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x10(r28)
    stw     r0, 0x10(r29)
    lwz     r3, 0x4(r29)
    lwz     r3, 0x68(r3)
    lwz     r0, 0x20(r3)
    rlwinm. r0, r0, 0, 1, 1
    bne-    branch_0x8022eb3c
    lwz     r3, 0x0(r27)
    lwz     r3, 0x68(r3)
    lwz     r0, 0x20(r3)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x8022eb40
branch_0x8022eb3c:
    stw     r18, 0x0(r29)
branch_0x8022eb40:
    li      r0, 0x0
    stw     r0, 0x0(r27)
    stw     r0, 0x0(r4)
branch_0x8022eb4c:
    addi    r22, r22, 0x1
    addi    r25, r25, 0x14
branch_0x8022eb54:
    lwz     r0, 0x20(r31)
    cmpw    r22, r0
    blt+    branch_0x8022eaa8
    addi    r21, r21, 0x1
    addi    r23, r23, 0x14
branch_0x8022eb68:
    lwz     r0, 0x20(r31)
    cmpw    r21, r0
    blt+    branch_0x8022ea94
branch_0x8022eb74:
    lmw     r17, 0x184(sp)
    lwz     r0, 0x22c(sp)
    lfd     f31, 0x220(sp)
    lfd     f30, 0x218(sp)
    mtlr    r0
    lfd     f29, 0x210(sp)
    lfd     f28, 0x208(sp)
    lfd     f27, 0x200(sp)
    lfd     f26, 0x1f8(sp)
    lfd     f25, 0x1f0(sp)
    lfd     f24, 0x1e8(sp)
    lfd     f23, 0x1e0(sp)
    lfd     f22, 0x1d8(sp)
    lfd     f21, 0x1d0(sp)
    lfd     f20, 0x1c8(sp)
    lfd     f19, 0x1c0(sp)
    addi    sp, sp, 0x228
    blr


.globl forceRequest__19TMBindShadowManagerFRC20TCircleShadowRequestUl
forceRequest__19TMBindShadowManagerFRC20TCircleShadowRequestUl: # 0x8022ebbc
    stwu    sp, -0x58(sp)
    lwz     r7, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r6, -0x7118(r13)
    stw     r7, 0x14(sp)
    addi    r7, r6, 0x124
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x14(sp)
    lwz     r6, 0x18(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x1c(sp)
    stw     r6, 0x4c(sp)
    stw     r0, 0x50(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x0(r7)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x4(r7)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x8(r7)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x4c(sp)
    lfs     f2, 0x50(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lwz     r0, 0x14(r3)
    fmuls   f2, f2, f2
    cmpwi   r0, 0x200
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bge-    branch_0x8022ece4
    mulli   r7, r0, 0x24
    lwz     r8, 0x10(r3)
    lwz     r6, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r7, r8, r7
    stw     r6, 0x0(r7)
    stw     r0, 0x4(r7)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x8(r7)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r7)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x10(r7)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x14(r7)
    lfs     f0, 0x18(r4)
    stfs    f0, 0x18(r7)
    lbz     r0, 0x1c(r4)
    stb     r0, 0x1c(r7)
    lbz     r0, 0x1d(r4)
    stb     r0, 0x1d(r7)
    lwz     r0, 0x20(r4)
    stw     r0, 0x20(r7)
    lwz     r0, 0x14(r3)
    lwz     r4, 0x10(r3)
    mulli   r0, r0, 0x24
    add     r4, r4, r0
    stw     r5, 0x20(r4)
    lwz     r0, 0x14(r3)
    lwz     r4, 0x10(r3)
    mulli   r0, r0, 0x24
    add     r4, r4, r0
    stfs    f1, 0x18(r4)
    lwz     r4, 0x14(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x14(r3)
branch_0x8022ece4:
    addi    sp, sp, 0x58
    blr


.globl request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
request__19TMBindShadowManagerFRC20TCircleShadowRequestUl: # 0x8022ecec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r5
    stw     r30, 0x60(sp)
    mr      r30, r4
    stw     r29, 0x5c(sp)
    mr      r29, r3
    lwz     r6, 0x0(r30)
    lwz     r0, 0x4(r30)
    lwz     r4, -0x7118(r13)
    stw     r6, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x124(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x128(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x12c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x48(sp)
    lfs     f2, 0x4c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lbz     r0, 0x1c(r30)
    fmuls   f2, f2, f2
    cmplwi  r0, 0x2
    fadds   f0, f1, f0
    lfs     f1, -0x163c(rtoc)
    fadds   f31, f2, f0
    bne-    branch_0x8022ed94
    lfs     f1, -0x1638(rtoc)
branch_0x8022ed94:
    cmplwi  r0, 0x1
    bne-    branch_0x8022eda0
    lfs     f1, -0x166c(rtoc)
branch_0x8022eda0:
    lfs     f0, -0x1668(rtoc)
    fmuls   f0, f0, f1
    fcmpo   cr0, f31, f0
    bgt-    branch_0x8022eff4
    lfs     f0, 0xc(r30)
    lfs     f1, -0x1650(rtoc)
    fcmpo   cr0, f0, f1
    blt-    branch_0x8022eff4
    lfs     f0, 0x10(r30)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8022edd0
    b       branch_0x8022eff4

branch_0x8022edd0:
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x0(r30)
    lfs     f2, 0x8(r30)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    beq-    branch_0x8022eff4
    lfs     f0, 0x0(r30)
    lis     r0, 0x7f80
    stfs    f0, 0x34(sp)
    lwz     r4, 0x34(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x8022ee14
    bge-    branch_0x8022ee44
    cmpwi   r3, 0x0
    beq-    branch_0x8022ee2c
    b       branch_0x8022ee44

branch_0x8022ee14:
    clrlwi. r0, r4, 9
    beq-    branch_0x8022ee24
    li      r0, 0x1
    b       branch_0x8022ee48

branch_0x8022ee24:
    li      r0, 0x2
    b       branch_0x8022ee48

branch_0x8022ee2c:
    clrlwi. r0, r4, 9
    beq-    branch_0x8022ee3c
    li      r0, 0x5
    b       branch_0x8022ee48

branch_0x8022ee3c:
    li      r0, 0x3
    b       branch_0x8022ee48

branch_0x8022ee44:
    li      r0, 0x4
branch_0x8022ee48:
    cmpwi   r0, 0x1
    beq-    branch_0x8022eff4
    lfs     f0, 0x8(r30)
    lis     r0, 0x7f80
    stfs    f0, 0x30(sp)
    lwz     r4, 0x30(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x8022ee7c
    bge-    branch_0x8022eeac
    cmpwi   r3, 0x0
    beq-    branch_0x8022ee94
    b       branch_0x8022eeac

branch_0x8022ee7c:
    clrlwi. r0, r4, 9
    beq-    branch_0x8022ee8c
    li      r0, 0x1
    b       branch_0x8022eeb0

branch_0x8022ee8c:
    li      r0, 0x2
    b       branch_0x8022eeb0

branch_0x8022ee94:
    clrlwi. r0, r4, 9
    beq-    branch_0x8022eea4
    li      r0, 0x5
    b       branch_0x8022eeb0

branch_0x8022eea4:
    li      r0, 0x3
    b       branch_0x8022eeb0

branch_0x8022eeac:
    li      r0, 0x4
branch_0x8022eeb0:
    cmpwi   r0, 0x1
    bne-    branch_0x8022eebc
    b       branch_0x8022eff4

branch_0x8022eebc:
    lwz     r0, 0x14(r29)
    cmpwi   r0, 0x200
    bge-    branch_0x8022eff4
    mulli   r4, r0, 0x24
    lwz     r5, 0x10(r29)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r30)
    stw     r0, 0x8(r4)
    lfs     f0, 0xc(r30)
    stfs    f0, 0xc(r4)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x10(r4)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x14(r4)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x18(r4)
    lbz     r0, 0x1c(r30)
    stb     r0, 0x1c(r4)
    lbz     r0, 0x1d(r30)
    stb     r0, 0x1d(r4)
    lwz     r0, 0x20(r30)
    stw     r0, 0x20(r4)
    lwz     r0, 0x14(r29)
    lwz     r3, 0x10(r29)
    mulli   r0, r0, 0x24
    add     r3, r3, r0
    stw     r31, 0x20(r3)
    lwz     r0, 0x14(r29)
    lwz     r3, 0x10(r29)
    mulli   r0, r0, 0x24
    add     r3, r3, r0
    stfs    f31, 0x18(r3)
    lbz     r0, 0x1c(r30)
    cmplwi  r0, 0x2
    bne-    branch_0x8022efe8
    lhz     r0, 0x40(r29)
    cmplwi  r0, 0x1
    bge-    branch_0x8022eff4
    mulli   r4, r0, 0x14
    lwz     r5, 0x70(r29)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    add     r6, r5, r4
    stw     r3, 0x0(r6)
    li      r5, 0x0
    li      r4, 0x1
    stw     r0, 0x4(r6)
    lwz     r0, 0x8(r30)
    stw     r0, 0x8(r6)
    lhz     r0, 0x40(r29)
    lwz     r3, 0x70(r29)
    mulli   r0, r0, 0x14
    add     r3, r3, r0
    stb     r5, 0xc(r3)
    lhz     r0, 0x40(r29)
    lwz     r3, 0x70(r29)
    mulli   r0, r0, 0x14
    add     r3, r3, r0
    stb     r4, 0xd(r3)
    lfs     f0, -0x1634(rtoc)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8022efd8
    lhz     r0, 0x40(r29)
    lwz     r3, 0x70(r29)
    mulli   r0, r0, 0x14
    add     r3, r3, r0
    stb     r4, 0xc(r3)
branch_0x8022efd8:
    lhz     r3, 0x40(r29)
    addi    r0, r3, 0x1
    sth     r0, 0x40(r29)
    b       branch_0x8022eff4

branch_0x8022efe8:
    lwz     r3, 0x14(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r29)
branch_0x8022eff4:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl drawShadow__19TMBindShadowManagerFUlPQ26JDrama9TGraphics
drawShadow__19TMBindShadowManagerFUlPQ26JDrama9TGraphics: # 0x8022f014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stmw    r24, 0xd0(sp)
    addi    r31, r3, 0x0
    addi    r30, r4, 0x0
    addi    r24, r5, 0x0
    lbz     r0, -0x60f8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8022f490
    bl      ReInitializeGX
    li      r3, 0x1
    bl      GXSetZCompLoc
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    lwz     r0, 0x5c(r31)
    addi    r4, sp, 0x80
    li      r3, 0x4
    stw     r0, 0x80(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r29, r24, 0xb4
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    lfs     f31, -0x1668(rtoc)
    addi    r28, r29, 0x0
    li      r27, 0x0
    li      r25, 0x0
    b       branch_0x8022f480

branch_0x8022f154:
    lwz     r0, 0x1c(r31)
    add     r3, r0, r25
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8022f478
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8022f478
    lwz     r0, 0x0(r3)
    and.    r0, r30, r0
    beq-    branch_0x8022f478
    li      r3, 0x0
    bl      GXSetCullMode
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r4, 0x1c(r31)
    addi    r0, r25, 0xc
    addi    r3, sp, 0xc0
    lwzx    r5, r4, r0
    addi    r4, sp, 0xb4
    lfs     f2, 0x4(r5)
    lfs     f1, 0x10(r5)
    lfs     f3, 0x8(r5)
    lfs     f0, 0x0(r5)
    fsubs   f1, f2, f1
    stfs    f0, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f3, 0xc8(sp)
    lfs     f2, 0x4(r5)
    lfs     f1, 0x10(r5)
    lfs     f3, 0x14(r5)
    lfs     f0, 0xc(r5)
    fadds   f1, f2, f1
    stfs    f0, 0xb4(sp)
    stfs    f1, 0xb8(sp)
    stfs    f3, 0xbc(sp)
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, 0x1c(r31)
    addi    r0, r25, 0x4
    li      r24, 0x0
    lwzx    r4, r3, r0
    lwz     r3, 0x68(r4)
    mr      r26, r4
    lfs     f0, 0x18(r3)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8022f264
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r24, 0x1
    b       branch_0x8022f278

branch_0x8022f264:
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
branch_0x8022f278:
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    clrlwi  r0, r24, 24
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r24, r0, 24
    b       branch_0x8022f2e8

branch_0x8022f2c8:
    addi    r3, r26, 0x4
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    addi    r5, r26, 0x0
    bl      drawShadowVolume__19TMBindShadowManagerFbP16TAlphaShadowQuad
    lwz     r26, 0x6c(r26)
branch_0x8022f2e8:
    cmplwi  r26, 0x0
    bne+    branch_0x8022f2c8
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    bl      GXSetColorUpdate
    lwz     r3, 0x1c(r31)
    addi    r0, r25, 0x4
    lwzx    r26, r3, r0
    b       branch_0x8022f360

branch_0x8022f340:
    addi    r3, r26, 0x4
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    addi    r5, r26, 0x0
    bl      drawShadowVolume__19TMBindShadowManagerFbP16TAlphaShadowQuad
    lwz     r26, 0x6c(r26)
branch_0x8022f360:
    cmplwi  r26, 0x0
    bne+    branch_0x8022f340
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    lwz     r3, 0x1c(r31)
    addi    r0, r25, 0x4
    lwzx    r24, r3, r0
    b       branch_0x8022f3ec

branch_0x8022f3a4:
    lwz     r3, 0x68(r24)
    lbz     r0, 0x1c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x8022f3e8
    addi    r3, r24, 0x4
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r3, 0xc(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r3, 0xc(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8022f3e8:
    lwz     r24, 0x6c(r24)
branch_0x8022f3ec:
    cmplwi  r24, 0x0
    bne+    branch_0x8022f3a4
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0xc0
    addi    r4, sp, 0xb4
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lbz     r0, 0x64(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8022f478
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    addi    r3, sp, 0xc0
    addi    r4, sp, 0xb4
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x8022f478:
    addi    r27, r27, 0x1
    addi    r25, r25, 0x14
branch_0x8022f480:
    lwz     r0, 0x20(r31)
    cmpw    r27, r0
    blt+    branch_0x8022f154
    b       branch_0x8022fa04

branch_0x8022f490:
    bl      ReInitializeGX
    li      r3, 0x1
    bl      GXSetZCompLoc
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    lwz     r0, 0x5c(r31)
    addi    r4, sp, 0x7c
    li      r3, 0x4
    stw     r0, 0x7c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, r24, 0xb4
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    addi    r3, sp, 0x84
    bl      PSMTXIdentity
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x84
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x84
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x167c(rtoc)
    addi    r4, sp, 0x78
    li      r3, 0x4
    stw     r0, 0x74(sp)
    lwz     r0, 0x74(sp)
    stw     r0, 0x78(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    rlwinm  r28, r30, 0, 1, 1
    li      r26, 0x0
    li      r27, 0x0
    b       branch_0x8022f778

branch_0x8022f6c0:
    cmplwi  r28, 0x0
    beq-    branch_0x8022f6e4
    lwz     r3, 0x18(r31)
    addi    r0, r27, 0x68
    lwzx    r3, r3, r0
    lwz     r0, 0x20(r3)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x8022f770
    b       branch_0x8022f6fc

branch_0x8022f6e4:
    lwz     r3, 0x18(r31)
    addi    r0, r27, 0x68
    lwzx    r3, r3, r0
    lwz     r0, 0x20(r3)
    rlwinm. r0, r0, 0, 1, 1
    bne-    branch_0x8022f770
branch_0x8022f6fc:
    lwz     r0, 0x18(r31)
    addi    r3, r27, 0x4
    li      r4, 0x0
    add     r3, r0, r3
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_DrawShape__FP12J3DModelDataUs
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x3
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8022f770:
    addi    r26, r26, 0x1
    addi    r27, r27, 0x70
branch_0x8022f778:
    lwz     r0, 0x14(r31)
    cmpw    r26, r0
    blt+    branch_0x8022f6c0
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x84
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x1678(rtoc)
    addi    r4, sp, 0x70
    li      r3, 0x4
    stw     r0, 0x6c(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x70(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f2, -0x1630(rtoc)
    lis     r25, 0xcc01
    lfs     f1, -0x162c(rtoc)
    stfs    f2, -0x8000(r25)
    lfs     f0, -0x1628(rtoc)
    stfs    f1, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    bl      GXSetCullMode
    lwz     r0, -0x1674(rtoc)
    addi    r4, sp, 0x68
    li      r3, 0x4
    stw     r0, 0x64(sp)
    lwz     r0, 0x64(sp)
    stw     r0, 0x68(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f2, -0x1630(rtoc)
    li      r3, 0x1
    lfs     f1, -0x162c(rtoc)
    stfs    f2, -0x8000(r25)
    lfs     f0, -0x1628(rtoc)
    stfs    f1, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    lwz     r0, 0x5c(r31)
    addi    r4, sp, 0x60
    li      r3, 0x4
    stw     r0, 0x60(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f2, -0x1630(rtoc)
    lfs     f1, -0x162c(rtoc)
    stfs    f2, -0x8000(r25)
    lfs     f0, -0x1628(rtoc)
    stfs    f1, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f1, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f0, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f2, -0x8000(r25)
    stfs    f0, -0x8000(r25)
branch_0x8022fa04:
    li      r3, 0x0
    bl      GXSetZCompLoc
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    lmw     r24, 0xd0(sp)
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl drawShadowGD__19TMBindShadowManagerFUlPQ26JDrama9TGraphics
drawShadowGD__19TMBindShadowManagerFUlPQ26JDrama9TGraphics: # 0x8022fa40
    mflr    r0
    lis     r6, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x400(sp)
    stfd    f31, 0x3f8(sp)
    stfd    f30, 0x3f0(sp)
    stfd    f29, 0x3e8(sp)
    stfd    f28, 0x3e0(sp)
    stfd    f27, 0x3d8(sp)
    stfd    f26, 0x3d0(sp)
    stfd    f25, 0x3c8(sp)
    stmw    r14, 0x380(sp)
    addi    r27, r3, 0x0
    subi    r29, r6, 0x4d00
    stw     r4, 0x35c(sp)
    addi    r23, r5, 0x0
    li      r3, 0x1
    bl      GXSetZCompLoc
    lbz     r0, -0x60f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8022faf4
    lis     r3, 0x803e
    subi    r0, r3, 0x44c0
    addi    r20, r29, 0x2c
    stw     r0, 0x2c(r29)
    li      r0, 0x0
    addi    r19, r29, 0xc
    stb     r0, 0x1c(r29)
    addi    r3, r19, 0x0
    li      r4, 0x100
    stb     r0, 0x1d(r29)
    stw     r0, 0x20(r29)
    stw     r0, 0x24(r29)
    stw     r0, 0x28(r29)
    bl      alloc__10TGDLStaticFUl
    lis     r3, 0x803e
    subi    r0, r3, 0x4e2c
    lis     r4, 0x8023
    stw     r0, 0x0(r20)
    addi    r3, r19, 0x0
    addi    r4, r4, 0x578
    addi    r5, r29, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x60f6(r13)
branch_0x8022faf4:
    lbz     r0, 0x1c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8022fb08
    addi    r3, r29, 0xc
    bl      make__10TGDLStaticFv
branch_0x8022fb08:
    lwz     r3, 0xc(r29)
    lwz     r0, 0x14(r29)
    subf    r4, r3, r0
    bl      GXCallDisplayList
    lbz     r0, -0x60f5(r13)
    extsb.  r0, r0
    bne-    branch_0x8022fb84
    lis     r3, 0x803e
    subi    r0, r3, 0x44c0
    addi    r20, r29, 0x5c
    stw     r0, 0x5c(r29)
    li      r0, 0x0
    addi    r19, r29, 0x3c
    stb     r0, 0x4c(r29)
    addi    r3, r19, 0x0
    li      r4, 0x400
    stb     r0, 0x4d(r29)
    stw     r0, 0x50(r29)
    stw     r0, 0x54(r29)
    stw     r0, 0x58(r29)
    bl      alloc__10TGDLStaticFUl
    lis     r3, 0x803e
    subi    r0, r3, 0x4e3c
    lis     r4, 0x8023
    stw     r0, 0x0(r20)
    addi    r3, r19, 0x0
    addi    r4, r4, 0x514
    addi    r5, r29, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x60f5(r13)
branch_0x8022fb84:
    lis     r4, 0x803e
    lfs     f31, -0x1668(rtoc)
    subi    r0, r4, 0x4e7c
    lis     r3, 0x8023
    stw     r0, 0x374(sp)
    addi    r0, r3, 0x384
    lis     r6, 0x803e
    stw     r0, 0x378(sp)
    subi    r0, r6, 0x4e6c
    lis     r7, 0x8023
    stw     r0, 0x36c(sp)
    addi    r0, r7, 0x3e8
    lis     r5, 0x803e
    stw     r0, 0x370(sp)
    lis     r8, 0x803e
    subi    r0, r8, 0x4e5c
    lis     r10, 0x803e
    stw     r0, 0x364(sp)
    lis     r9, 0x8023
    addi    r0, r9, 0x44c
    addi    r28, r23, 0xb4
    stw     r0, 0x368(sp)
    lis     r11, 0x8023
    addi    r0, r11, 0x4b0
    stw     r0, 0x360(sp)
    addi    r18, r29, 0xfc
    addi    r17, r29, 0xcc
    addi    r16, r29, 0x9c
    addi    r15, r29, 0x6c
    subi    r24, r5, 0x44c0
    addi    r22, r29, 0x11c
    addi    r21, r29, 0xec
    addi    r20, r29, 0xbc
    addi    r19, r29, 0x8c
    subi    r14, r10, 0x4e4c
    li      r23, 0x0
    li      r25, 0x0
    lis     r31, 0xcc01
    b       branch_0x80230348

branch_0x8022fc20:
    lwz     r0, 0x1c(r27)
    add     r3, r0, r25
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80230340
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80230340
    lwz     r3, 0x0(r3)
    lwz     r0, 0x35c(sp)
    and.    r0, r0, r3
    beq-    branch_0x80230340
    lbz     r0, -0x60f4(r13)
    extsb.  r0, r0
    bne-    branch_0x8022fca0
    stw     r24, 0x0(r19)
    li      r0, 0x0
    addi    r3, r15, 0x0
    stb     r0, 0x7c(r29)
    li      r4, 0x80
    stb     r0, 0x7d(r29)
    stw     r0, 0x80(r29)
    stw     r0, 0x84(r29)
    stw     r0, 0x88(r29)
    bl      alloc__10TGDLStaticFUl
    stw     r14, 0x0(r19)
    mr      r3, r15
    lwz     r4, 0x360(sp)
    addi    r5, r29, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x60f4(r13)
branch_0x8022fca0:
    lbz     r0, 0x7c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8022fcb4
    addi    r3, r29, 0x6c
    bl      make__10TGDLStaticFv
branch_0x8022fcb4:
    lwz     r3, 0x6c(r29)
    lwz     r0, 0x74(r29)
    subf    r4, r3, r0
    bl      GXCallDisplayList
    lwz     r3, 0x1c(r27)
    addi    r0, r25, 0xc
    li      r5, 0x10
    lwzx    r4, r3, r0
    li      r6, 0xb
    li      r0, 0x0
    lfs     f25, 0x4(r4)
    li      r7, 0x80
    lfs     f0, 0x10(r4)
    li      r8, 0x18
    lfs     f30, 0x0(r4)
    lfs     f28, 0x8(r4)
    fsubs   f29, f25, f0
    lfs     f27, 0xc(r4)
    fadds   f25, f25, f0
    lfs     f26, 0x14(r4)
    stb     r5, -0x8000(r31)
    sth     r6, -0x8000(r31)
    sth     r0, -0x8000(r31)
    lfs     f0, 0x0(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x4(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x8(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0xc(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x10(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x14(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x18(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x1c(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x20(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x24(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x28(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x2c(r28)
    stfs    f0, -0x8000(r31)
    stb     r7, -0x8000(r31)
    sth     r8, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    addi    r5, r25, 0x4
    lbz     r4, -0x60f3(r13)
    li      r26, 0x0
    stfs    f25, -0x8000(r31)
    extsb.  r4, r4
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    lwzx    r30, r3, r5
    bne-    branch_0x8022fef4
    stw     r24, 0x0(r20)
    addi    r3, r16, 0x0
    li      r4, 0x80
    stb     r0, 0xac(r29)
    stb     r0, 0xad(r29)
    stw     r0, 0xb0(r29)
    stw     r0, 0xb4(r29)
    stw     r0, 0xb8(r29)
    bl      alloc__10TGDLStaticFUl
    lwz     r0, 0x364(sp)
    mr      r3, r16
    lwz     r4, 0x368(sp)
    addi    r5, r29, 0x90
    stw     r0, 0x0(r20)
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x60f3(r13)
branch_0x8022fef4:
    lbz     r0, 0xac(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8022ff08
    addi    r3, r29, 0x9c
    bl      make__10TGDLStaticFv
branch_0x8022ff08:
    lwz     r3, 0x9c(r29)
    lwz     r0, 0xa4(r29)
    subf    r4, r3, r0
    bl      GXCallDisplayList
    lwz     r3, 0x68(r30)
    lfs     f0, 0x18(r3)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8022ff44
    lwz     r3, 0x3c(r27)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r26, 0x1
    b       branch_0x8022ff58

branch_0x8022ff44:
    lwz     r3, 0x3c(r27)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
branch_0x8022ff58:
    clrlwi  r0, r26, 24
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r26, r0, 24
    b       branch_0x8022fffc

branch_0x8022ff70:
    li      r0, 0x10
    stb     r0, -0x8000(r31)
    li      r3, 0xb
    li      r0, 0x0
    sth     r3, -0x8000(r31)
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    sth     r0, -0x8000(r31)
    mr      r5, r30
    lfs     f0, 0x4(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x8(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0xc(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x10(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x1c(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x20(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x24(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x28(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x2c(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x30(r30)
    stfs    f0, -0x8000(r31)
    bl      drawShadowVolume__19TMBindShadowManagerFbP16TAlphaShadowQuad
    lwz     r30, 0x6c(r30)
branch_0x8022fffc:
    cmplwi  r30, 0x0
    bne+    branch_0x8022ff70
    lbz     r0, -0x60f2(r13)
    extsb.  r0, r0
    bne-    branch_0x80230058
    stw     r24, 0x0(r21)
    li      r0, 0x0
    addi    r3, r17, 0x0
    stb     r0, 0xdc(r29)
    li      r4, 0x80
    stb     r0, 0xdd(r29)
    stw     r0, 0xe0(r29)
    stw     r0, 0xe4(r29)
    stw     r0, 0xe8(r29)
    bl      alloc__10TGDLStaticFUl
    lwz     r0, 0x36c(sp)
    mr      r3, r17
    lwz     r4, 0x370(sp)
    addi    r5, r29, 0xc0
    stw     r0, 0x0(r21)
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x60f2(r13)
branch_0x80230058:
    lbz     r0, 0xdc(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8023006c
    addi    r3, r29, 0xcc
    bl      make__10TGDLStaticFv
branch_0x8023006c:
    lwz     r3, 0xcc(r29)
    lwz     r0, 0xd4(r29)
    subf    r4, r3, r0
    bl      GXCallDisplayList
    lwz     r3, 0x1c(r27)
    addi    r0, r25, 0x4
    lwzx    r30, r3, r0
    b       branch_0x80230118

branch_0x8023008c:
    li      r0, 0x10
    stb     r0, -0x8000(r31)
    li      r3, 0xb
    li      r0, 0x0
    sth     r3, -0x8000(r31)
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    sth     r0, -0x8000(r31)
    mr      r5, r30
    lfs     f0, 0x4(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x8(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0xc(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x10(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x1c(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x20(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x24(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x28(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x2c(r30)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x30(r30)
    stfs    f0, -0x8000(r31)
    bl      drawShadowVolume__19TMBindShadowManagerFbP16TAlphaShadowQuad
    lwz     r30, 0x6c(r30)
branch_0x80230118:
    cmplwi  r30, 0x0
    bne+    branch_0x8023008c
    lbz     r0, -0x60f1(r13)
    extsb.  r0, r0
    bne-    branch_0x80230174
    stw     r24, 0x0(r22)
    li      r0, 0x0
    addi    r3, r18, 0x0
    stb     r0, 0x10c(r29)
    li      r4, 0x100
    stb     r0, 0x10d(r29)
    stw     r0, 0x110(r29)
    stw     r0, 0x114(r29)
    stw     r0, 0x118(r29)
    bl      alloc__10TGDLStaticFUl
    lwz     r0, 0x374(sp)
    mr      r3, r18
    lwz     r4, 0x378(sp)
    addi    r5, r29, 0xf0
    stw     r0, 0x0(r22)
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x60f1(r13)
branch_0x80230174:
    lbz     r0, 0x10c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80230188
    addi    r3, r29, 0xfc
    bl      make__10TGDLStaticFv
branch_0x80230188:
    lwz     r3, 0xfc(r29)
    lwz     r0, 0x104(r29)
    subf    r4, r3, r0
    bl      GXCallDisplayList
    li      r0, 0x10
    stb     r0, -0x8000(r31)
    li      r0, 0xb
    li      r4, 0x0
    sth     r0, -0x8000(r31)
    li      r3, 0x80
    li      r0, 0x18
    sth     r4, -0x8000(r31)
    lfs     f0, 0x0(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x4(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x8(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0xc(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x10(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x14(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x18(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x1c(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x20(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x24(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x28(r28)
    stfs    f0, -0x8000(r31)
    lfs     f0, 0x2c(r28)
    stfs    f0, -0x8000(r31)
    stb     r3, -0x8000(r31)
    sth     r0, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
branch_0x80230340:
    addi    r23, r23, 0x1
    addi    r25, r25, 0x14
branch_0x80230348:
    lwz     r0, 0x20(r27)
    cmpw    r23, r0
    blt+    branch_0x8022fc20
    lmw     r14, 0x380(sp)
    lwz     r0, 0x404(sp)
    lfd     f31, 0x3f8(sp)
    lfd     f30, 0x3f0(sp)
    mtlr    r0
    lfd     f29, 0x3e8(sp)
    lfd     f28, 0x3e0(sp)
    lfd     f27, 0x3d8(sp)
    lfd     f26, 0x3d0(sp)
    lfd     f25, 0x3c8(sp)
    addi    sp, sp, 0x400
    blr


.globl __dt__Q219TMBindShadowManager26TSetup5$2216ShadowUtil_cppFv
__dt__Q219TMBindShadowManager26TSetup5$2216ShadowUtil_cppFv: # 0x80230384
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802303cc
    lis     r3, 0x803e
    subi    r0, r3, 0x4e7c
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TGDLStaticFv
    extsh.  r0, r31
    ble-    branch_0x802303cc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802303cc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q219TMBindShadowManager26TSetup4$2207ShadowUtil_cppFv
__dt__Q219TMBindShadowManager26TSetup4$2207ShadowUtil_cppFv: # 0x802303e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80230430
    lis     r3, 0x803e
    subi    r0, r3, 0x4e6c
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TGDLStaticFv
    extsh.  r0, r31
    ble-    branch_0x80230430
    mr      r3, r30
    bl      __dl__FPv
branch_0x80230430:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q219TMBindShadowManager26TSetup3$2195ShadowUtil_cppFv
__dt__Q219TMBindShadowManager26TSetup3$2195ShadowUtil_cppFv: # 0x8023044c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80230494
    lis     r3, 0x803e
    subi    r0, r3, 0x4e5c
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TGDLStaticFv
    extsh.  r0, r31
    ble-    branch_0x80230494
    mr      r3, r30
    bl      __dl__FPv
branch_0x80230494:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q219TMBindShadowManager26TSetup2$2190ShadowUtil_cppFv
__dt__Q219TMBindShadowManager26TSetup2$2190ShadowUtil_cppFv: # 0x802304b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802304f8
    lis     r3, 0x803e
    subi    r0, r3, 0x4e4c
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TGDLStaticFv
    extsh.  r0, r31
    ble-    branch_0x802304f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802304f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q219TMBindShadowManager28TCylinder$2171ShadowUtil_cppFv
__dt__Q219TMBindShadowManager28TCylinder$2171ShadowUtil_cppFv: # 0x80230514
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8023055c
    lis     r3, 0x803e
    subi    r0, r3, 0x4e3c
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TGDLStaticFv
    extsh.  r0, r31
    ble-    branch_0x8023055c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8023055c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q219TMBindShadowManager26TSetup1$2172ShadowUtil_cppFv
__dt__Q219TMBindShadowManager26TSetup1$2172ShadowUtil_cppFv: # 0x80230578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802305c0
    lis     r3, 0x803e
    subi    r0, r3, 0x4e2c
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TGDLStaticFv
    extsh.  r0, r31
    ble-    branch_0x802305c0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802305c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl drawShadowVolume__19TMBindShadowManagerFbP16TAlphaShadowQuad
drawShadowVolume__19TMBindShadowManagerFbP16TAlphaShadowQuad: # 0x802305dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b0(sp)
    stw     r31, 0x1ac(sp)
    mr      r31, r5
    stw     r30, 0x1a8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1a4(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x68(r5)
    lbz     r0, 0x1c(r5)
    cmplwi  r0, 0x1
    bne-    branch_0x80230dac
    lwz     r0, 0x64(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80230648
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0x8(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0x8(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_DrawShape__FP12J3DModelDataUs
    b       branch_0x80230e18

branch_0x80230648:
    lis     r3, 0x803a
    subi    r6, r3, 0x24b8
    lwz     r5, 0x0(r6)
    lis     r3, 0x803a
    lwz     r0, 0x4(r6)
    subi    r4, r3, 0x2494
    stw     r5, 0x17c(sp)
    stw     r0, 0x180(sp)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r3, 0x184(sp)
    stw     r0, 0x188(sp)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x18c(sp)
    stw     r0, 0x190(sp)
    lwz     r3, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r3, 0x194(sp)
    stw     r0, 0x198(sp)
    lwz     r0, 0x20(r6)
    stw     r0, 0x19c(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x160(sp)
    stw     r0, 0x164(sp)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x168(sp)
    stw     r0, 0x16c(sp)
    lwz     r3, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r3, 0x170(sp)
    stw     r0, 0x174(sp)
    lwz     r0, 0x20(r4)
    stw     r0, 0x178(sp)
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x90
    li      r4, 0x0
    li      r5, 0x12
    bl      GXBegin
    lwz     r3, 0x17c(sp)
    li      r7, 0x8
    subfic  r0, r7, 0x9
    lwz     r5, 0x64(r31)
    mulli   r3, r3, 0xc
    lfs     f2, -0x1624(rtoc)
    mtctr   r0
    add     r3, r5, r3
    lfs     f1, 0x4(r3)
    lis     r6, 0xcc01
    lfs     f3, 0x8(r3)
    cmpwi   r7, 0x9
    lfs     f0, 0x0(r3)
    fadds   f1, f2, f1
    slwi    r3, r7, 2
    stfs    f0, -0x8000(r6)
    addi    r4, sp, 0x17c
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x180(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x184(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x188(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x18c(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x190(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x194(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x198(sp)
    mulli   r0, r0, 0xc
    add     r5, r5, r0
    lfs     f1, 0x4(r5)
    lfs     f3, 0x8(r5)
    lfs     f0, 0x0(r5)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    bge-    branch_0x802308bc
branch_0x80230888:
    lwzx    r0, r4, r3
    addi    r3, r3, 0x4
    lwz     r5, 0x64(r31)
    mulli   r0, r0, 0xc
    add     r5, r5, r0
    lfs     f1, 0x4(r5)
    lfs     f3, 0x8(r5)
    lfs     f0, 0x0(r5)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    bdnz+      branch_0x80230888
branch_0x802308bc:
    lwz     r3, 0x158(sp)
    li      r7, 0x8
    subfic  r0, r7, 0x9
    lwz     r5, 0x64(r31)
    mulli   r3, r3, 0xc
    lfs     f2, -0x1624(rtoc)
    mtctr   r0
    add     r3, r5, r3
    lfs     f1, 0x4(r3)
    lis     r6, 0xcc01
    lfs     f3, 0x8(r3)
    cmpwi   r7, 0x9
    lfs     f0, 0x0(r3)
    fsubs   f1, f1, f2
    slwi    r3, r7, 2
    stfs    f0, -0x8000(r6)
    addi    r4, sp, 0x158
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x15c(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x160(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x164(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x168(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x16c(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x170(sp)
    mulli   r0, r0, 0xc
    add     r7, r5, r0
    lfs     f1, 0x4(r7)
    lfs     f3, 0x8(r7)
    lfs     f0, 0x0(r7)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    lwz     r0, 0x174(sp)
    mulli   r0, r0, 0xc
    add     r5, r5, r0
    lfs     f1, 0x4(r5)
    lfs     f3, 0x8(r5)
    lfs     f0, 0x0(r5)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    bge-    branch_0x80230a58
branch_0x80230a24:
    lwzx    r0, r4, r3
    addi    r3, r3, 0x4
    lwz     r5, 0x64(r31)
    mulli   r0, r0, 0xc
    add     r5, r5, r0
    lfs     f1, 0x4(r5)
    lfs     f3, 0x8(r5)
    lfs     f0, 0x0(r5)
    fsubs   f1, f1, f2
    stfs    f0, -0x8000(r6)
    stfs    f1, -0x8000(r6)
    stfs    f3, -0x8000(r6)
    bdnz+      branch_0x80230a24
branch_0x80230a58:
    li      r3, 0x90
    li      r4, 0x0
    li      r5, 0x3c
    bl      GXBegin
    lwz     r4, 0x64(r31)
    lis     r3, 0xcc01
    lfs     f4, -0x1624(rtoc)
    lfs     f0, 0x4(r4)
    lfs     f6, 0x8(r4)
    lfs     f3, 0x0(r4)
    fadds   f5, f0, f4
    fsubs   f10, f0, f4
    stfs    f3, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    lfs     f0, 0x10(r4)
    lfs     f8, 0x14(r4)
    lfs     f2, 0xc(r4)
    fadds   f7, f0, f4
    fsubs   f9, f0, f4
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f0, 0x1c(r4)
    lfs     f12, 0x20(r4)
    lfs     f1, 0x18(r4)
    fadds   f11, f0, f4
    fsubs   f13, f0, f4
    stfs    f1, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f13, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f13, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f13, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f13, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    lfs     f0, 0x28(r4)
    lfs     f8, 0x2c(r4)
    fadds   f7, f0, f4
    lfs     f2, 0x24(r4)
    fsubs   f9, f0, f4
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f13, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f13, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f1, 0x34(r4)
    lfs     f12, 0x38(r4)
    lfs     f0, 0x30(r4)
    fadds   f11, f1, f4
    fsubs   f1, f1, f4
    stfs    f0, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f11, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f12, -0x8000(r3)
    b       branch_0x80230e18

branch_0x80230dac:
    cmplwi  r0, 0x3
    bne-    branch_0x80230de0
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0xc(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0xc(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_DrawShape__FP12J3DModelDataUs
    b       branch_0x80230e18

branch_0x80230de0:
    clrlwi. r0, r30, 24
    beq-    branch_0x80230e00
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_DrawShape__FP12J3DModelDataUs
    b       branch_0x80230e4c

branch_0x80230e00:
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_DrawShape__FP12J3DModelDataUs
    b       branch_0x80230e4c

branch_0x80230e18:
    clrlwi. r0, r30, 24
    beq-    branch_0x80230e38
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    b       branch_0x80230e4c

branch_0x80230e38:
    lwz     r3, 0x3c(r29)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x0(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
branch_0x80230e4c:
    lwz     r0, 0x1b4(sp)
    lwz     r31, 0x1ac(sp)
    lwz     r30, 0x1a8(sp)
    mtlr    r0
    lwz     r29, 0x1a4(sp)
    addi    sp, sp, 0x1b0
    blr


.globl conectCubeSame__FP21TAlphaShadowBlendQuadP21TAlphaShadowBlendQuad
conectCubeSame__FP21TAlphaShadowBlendQuadP21TAlphaShadowBlendQuad: # 0x80230e68
    cmplwi  r3, 0x0
    beq-    branch_0x80230e78
    cmplwi  r4, 0x0
    bne-    branch_0x80230e80
branch_0x80230e78:
    li      r3, 0x0
    blr

branch_0x80230e80:
    lfs     f2, 0x4(r3)
    lfs     f1, 0x4(r4)
    lfs     f0, -0x1624(rtoc)
    fsubs   f1, f2, f1
    lfs     f5, -0x60fc(r13)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80230ea8
    li      r3, 0x0
    blr

branch_0x80230ea8:
    lfs     f4, 0xc(r4)
    lfs     f0, 0x0(r3)
    fsubs   f2, f4, f5
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x80230fa4
    lfs     f0, 0x0(r4)
    lfs     f3, 0xc(r3)
    fadds   f0, f0, f5
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x80230fa4
    lfs     f0, 0x14(r4)
    lfs     f1, 0x8(r3)
    fsubs   f0, f0, f5
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80230fa4
    lfs     f0, 0x8(r4)
    lfs     f1, 0x14(r3)
    fadds   f0, f0, f5
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80230fa4
    fcmpo   cr0, f3, f2
    cror    2, 0, 2
    bne-    branch_0x80230f18
    stfs    f4, 0xc(r3)
branch_0x80230f18:
    lfs     f2, 0x0(r4)
    lfs     f1, 0x0(r3)
    fadds   f0, f2, f5
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80230f34
    stfs    f2, 0x0(r3)
branch_0x80230f34:
    lfs     f2, 0x14(r4)
    lfs     f1, 0x14(r3)
    fsubs   f0, f2, f5
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80230f50
    stfs    f2, 0x14(r3)
branch_0x80230f50:
    lfs     f2, 0x8(r4)
    lfs     f1, 0x8(r3)
    fadds   f0, f2, f5
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80230f6c
    stfs    f2, 0x8(r3)
branch_0x80230f6c:
    lfs     f0, 0x4(r3)
    lfs     f1, 0x4(r4)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x80230f84
    stfs    f1, 0x4(r3)
branch_0x80230f84:
    lfs     f0, 0x10(r3)
    lfs     f1, 0x10(r4)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x80230f9c
    stfs    f1, 0x10(r3)
branch_0x80230f9c:
    li      r3, 0x1
    blr

branch_0x80230fa4:
    li      r3, 0x0
    blr


.globl conectCubeDiffer__FP21TAlphaShadowBlendQuadP21TAlphaShadowBlendQuad
conectCubeDiffer__FP21TAlphaShadowBlendQuadP21TAlphaShadowBlendQuad: # 0x80230fac
    cmplwi  r3, 0x0
    beq-    branch_0x80230fbc
    cmplwi  r4, 0x0
    bne-    branch_0x80230fc4
branch_0x80230fbc:
    li      r3, 0x0
    blr

branch_0x80230fc4:
    lwz     r0, 0x18(r3)
    lwz     r5, 0x18(r4)
    cmplw   r0, r5
    bne-    branch_0x80230ff4
    cmplwi  r0, 0x0
    beq-    branch_0x80230ff4
    cmplwi  r5, 0x0
    beq-    branch_0x80230ff4
    rlwinm. r0, r0, 0, 1, 1
    bne-    branch_0x80230ff4
    rlwinm. r0, r5, 0, 1, 1
    beq-    branch_0x80230ffc
branch_0x80230ff4:
    li      r3, 0x0
    blr

branch_0x80230ffc:
    lfs     f2, 0x4(r3)
    lfs     f1, 0x4(r4)
    lfs     f0, -0x1624(rtoc)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80231020
    li      r3, 0x0
    blr

branch_0x80231020:
    lfs     f0, 0x0(r3)
    lfs     f2, 0xc(r4)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x80231100
    lfs     f3, 0xc(r3)
    lfs     f0, 0x0(r4)
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x80231100
    lfs     f1, 0x8(r3)
    lfs     f0, 0x14(r4)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80231100
    lfs     f1, 0x14(r3)
    lfs     f0, 0x8(r4)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80231100
    fcmpo   cr0, f3, f2
    cror    2, 0, 2
    bne-    branch_0x80231080
    stfs    f2, 0xc(r3)
branch_0x80231080:
    lfs     f0, 0x0(r3)
    lfs     f1, 0x0(r4)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x80231098
    stfs    f1, 0x0(r3)
branch_0x80231098:
    lfs     f0, 0x14(r3)
    lfs     f1, 0x14(r4)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802310b0
    stfs    f1, 0x14(r3)
branch_0x802310b0:
    lfs     f0, 0x8(r3)
    lfs     f1, 0x8(r4)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x802310c8
    stfs    f1, 0x8(r3)
branch_0x802310c8:
    lfs     f0, 0x4(r3)
    lfs     f1, 0x4(r4)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x802310e0
    stfs    f1, 0x4(r3)
branch_0x802310e0:
    lfs     f0, 0x10(r3)
    lfs     f1, 0x10(r4)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802310f8
    stfs    f1, 0x10(r3)
branch_0x802310f8:
    li      r3, 0x1
    blr

branch_0x80231100:
    li      r3, 0x0
    blr


.globl perform__19TMBindShadowManagerFUlPQ26JDrama9TGraphics
perform__19TMBindShadowManagerFUlPQ26JDrama9TGraphics: # 0x80231108
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 29, 29
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x80231154
    li      r0, 0x0
    stb     r0, 0x49(r29)
    lwz     r3, -0x610c(r13)
    bl      getLightPos__22TLightWithDBSetManagerCFv
    addi    r4, r29, 0x30
    bl      PSVECNormalize
    mr      r3, r29
    bl      calcVtx__19TMBindShadowManagerFv
branch_0x80231154:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x802311b4
    lbz     r0, -0x60f7(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8023117c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      drawShadowGD__19TMBindShadowManagerFUlPQ26JDrama9TGraphics
    b       branch_0x8023118c

branch_0x8023117c:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      drawShadow__19TMBindShadowManagerFUlPQ26JDrama9TGraphics
branch_0x8023118c:
    rlwinm. r0, r30, 0, 2, 2
    beq-    branch_0x802311b4
    li      r0, 0x1
    stb     r0, 0x49(r29)
    li      r0, 0x0
    stw     r0, 0x14(r29)
    stw     r0, 0x20(r29)
    stb     r0, 0x65(r29)
    stw     r0, 0x2c(r29)
    sth     r0, 0x40(r29)
branch_0x802311b4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl insert__Q27JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__FQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorRCP16TMBindShadowBody
insert__Q27JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__FQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorRCP16TMBindShadowBody: # 0x802311d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x80231218
    li      r3, 0x0
    b       branch_0x80231234

branch_0x80231218:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x80231234
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x80231234:
    cmplwi  r3, 0x0
    bne-    branch_0x8023124c
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80231268

branch_0x8023124c:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80231268:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl load__19TMBindShadowManagerFR20JSUMemoryInputStream
load__19TMBindShadowManagerFR20JSUMemoryInputStream: # 0x80231288
    mflr    r0
    lis     r5, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    subi    r30, r5, 0x24f8
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0xa8
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802312e8
    addi    r3, r29, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x802312e8:
    lwz     r4, 0x3c(r31)
    addi    r3, r30, 0xc4
    stw     r28, 0x0(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80231324
    addi    r3, r29, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x80231324:
    lwz     r4, 0x3c(r31)
    addi    r3, r30, 0xe0
    stw     r28, 0x4(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80231360
    addi    r3, r29, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x80231360:
    lwz     r4, 0x3c(r31)
    addi    r3, r30, 0xf8
    stw     r28, 0x8(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r30, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8023139c
    addi    r3, r30, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8023139c:
    lwz     r4, 0x3c(r31)
    li      r3, 0x1
    li      r0, 0x0
    stw     r28, 0xc(r4)
    stb     r3, 0x49(r31)
    stw     r0, 0x14(r31)
    stw     r0, 0x20(r31)
    stb     r0, 0x65(r31)
    stw     r0, 0x2c(r31)
    sth     r0, 0x40(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__19TMBindShadowManagerFPCc
__ct__19TMBindShadowManagerFPCc: # 0x802313e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
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
    li      r9, 0x0
    lis     r3, 0x803e
    sth     r9, 0xc(r31)
    subi    r0, r3, 0x4ef4
    lis     r3, 0x803f
    stw     r0, 0x0(r31)
    addi    r7, r31, 0x54
    li      r6, 0x1e
    stw     r9, 0x14(r31)
    li      r5, 0x32
    li      r4, 0x73
    stw     r9, 0x20(r31)
    li      r0, 0xb4
    subi    r3, r3, 0x6900
    stw     r9, 0x2c(r31)
    sth     r9, 0x40(r31)
    stw     r9, 0x44(r31)
    stb     r9, 0x48(r31)
    stb     r9, 0x49(r31)
    lbz     r8, 0x14(sp)
    stb     r8, 0x4c(r31)
    stw     r9, 0x50(r31)
    stw     r7, 0x54(r31)
    stw     r7, 0x58(r31)
    lfs     f0, -0x1620(rtoc)
    stfs    f0, 0x60(r31)
    stb     r9, 0x64(r31)
    stb     r9, 0x65(r31)
    lfs     f0, -0x1670(rtoc)
    stfs    f0, 0x68(r31)
    lfs     f0, -0x161c(rtoc)
    stfs    f0, 0x6c(r31)
    stw     r9, 0x70(r31)
    stb     r6, 0x5c(r31)
    stb     r5, 0x5d(r31)
    stb     r4, 0x5e(r31)
    stb     r0, 0x5f(r31)
    lbz     r0, 0xe(r3)
    cmpwi   r0, 0x7
    beq-    branch_0x802314f4
    bge-    branch_0x80231514
    cmpwi   r0, 0x6
    bge-    branch_0x802314d4
    b       branch_0x80231514

branch_0x802314d4:
    li      r4, 0x9
    stb     r4, 0x5c(r31)
    li      r3, 0x1c
    li      r0, 0x74
    stb     r4, 0x5d(r31)
    stb     r3, 0x5e(r31)
    stb     r0, 0x5f(r31)
    b       branch_0x80231514

branch_0x802314f4:
    li      r0, 0x2d
    stb     r0, 0x5c(r31)
    li      r0, 0x28
    li      r3, 0x3c
    stb     r0, 0x5d(r31)
    li      r0, 0x5a
    stb     r3, 0x5e(r31)
    stb     r0, 0x5f(r31)
branch_0x80231514:
    lwz     r31, 0x8(sp)
    li      r3, 0x4808
    stw     r31, -0x6100(r13)
    bl      __nwa__FUl
    lis     r4, 0x8023
    addi    r4, r4, 0x1680
    li      r5, 0x0
    li      r6, 0x24
    li      r7, 0x200
    bl      __construct_new_array
    lis     r4, 0x1
    stw     r3, 0x10(r31)
    subi    r3, r4, 0x1ff8
    bl      __nwa__FUl
    lis     r4, 0x8023
    addi    r4, r4, 0x1664
    li      r5, 0x0
    li      r6, 0x70
    li      r7, 0x200
    bl      __construct_new_array
    stw     r3, 0x18(r31)
    li      r3, 0x1408
    bl      __nwa__FUl
    lis     r4, 0x8023
    addi    r4, r4, 0x164c
    li      r5, 0x0
    li      r6, 0x14
    li      r7, 0x100
    bl      __construct_new_array
    stw     r3, 0x1c(r31)
    li      r3, 0x4008
    bl      __nwa__FUl
    lis     r4, 0x8023
    addi    r4, r4, 0x161c
    li      r5, 0x0
    li      r6, 0x20
    li      r7, 0x200
    bl      __construct_new_array
    stw     r3, 0x24(r31)
    li      r3, 0x710
    bl      __nwa__FUl
    lis     r4, 0x8023
    addi    r4, r4, 0x16f4
    li      r5, 0x0
    li      r6, 0x3c
    li      r7, 0x1e
    bl      __construct_new_array
    stw     r3, 0x28(r31)
    li      r3, 0x1c
    bl      __nwa__FUl
    lis     r4, 0x8023
    addi    r4, r4, 0x16c8
    li      r5, 0x0
    li      r6, 0x14
    li      r7, 0x1
    bl      __construct_new_array
    stw     r3, 0x70(r31)
    li      r3, 0x14
    bl      __nwa__FUl
    stw     r3, 0x3c(r31)
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__21TAlphaShadowBlendQuadFv
__ct__21TAlphaShadowBlendQuadFv: # 0x8023161c
    lfs     f0, -0x1644(rtoc)
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lfs     f0, -0x166c(rtoc)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    blr


.globl __ct__19TAlphaShadowQuadAryFv
__ct__19TAlphaShadowQuadAryFv: # 0x8023164c
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl __ct__16TAlphaShadowQuadFv
__ct__16TAlphaShadowQuadFv: # 0x80231664
    lfs     f0, -0x1650(rtoc)
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    stw     r0, 0x64(r3)
    stw     r0, 0x68(r3)
    stw     r0, 0x6c(r3)
    blr


.globl __ct__20TCircleShadowRequestFv
__ct__20TCircleShadowRequestFv: # 0x80231680
    lfs     f0, -0x1664(rtoc)
    li      r4, 0x0
    li      r0, 0x1
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    stb     r4, 0x1c(r3)
    stb     r0, 0x1d(r3)
    stw     r4, 0x20(r3)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    blr


.globl getUseMtxIndex__11J3DShapeMtxCFUs
getUseMtxIndex__11J3DShapeMtxCFUs: # 0x802316b8
    lhz     r3, 0x4(r3)
    blr


.globl getUseMtxNum__11J3DShapeMtxCFv
getUseMtxNum__11J3DShapeMtxCFv: # 0x802316c0
    li      r3, 0x1
    blr


.globl __ct__16TModelShadowInfoFv
__ct__16TModelShadowInfoFv: # 0x802316c8
    lfs     f0, -0x1664(rtoc)
    li      r4, 0x0
    li      r0, 0x1
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stb     r4, 0xc(r3)
    stb     r0, 0xd(r3)
    lfs     f0, -0x1650(rtoc)
    stfs    f0, 0x10(r3)
    blr


.globl __ct__17TSquareShadowInfoFv
__ct__17TSquareShadowInfoFv: # 0x802316f4
    lfs     f0, -0x1664(rtoc)
    addi    r4, r3, 0x0
    addi    r0, r3, 0x3c
    b       branch_0x80231714

branch_0x80231704:
    stfs    f0, 0x0(r4)
    stfs    f0, 0x4(r4)
    stfs    f0, 0x4(r4)
    addi    r4, r4, 0xc
branch_0x80231714:
    cmplw   r4, r0
    bne+    branch_0x80231704
    blr


.globl entryDrawShadow__16TMBindShadowBodyFv
entryDrawShadow__16TMBindShadowBodyFv: # 0x80231720
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x0
    mr      r0, r4
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    lwz     r3, 0x4(r3)
    lwz     r6, -0x60b4(r13)
    lfs     f0, -0x1618(rtoc)
    addi    r7, r3, 0x10
    lfs     f2, 0x10(r3)
    lfs     f1, 0x0(r6)
    fneg    f3, f0
    fsubs   f1, f2, f1
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x80231790
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80231790
    li      r0, 0x1
branch_0x80231790:
    clrlwi. r0, r0, 24
    beq-    branch_0x802317d4
    lfs     f1, 0x4(r7)
    li      r0, 0x0
    lfs     f0, 0x4(r6)
    fsubs   f1, f1, f0
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x802317c8
    lfs     f0, -0x1618(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802317c8
    li      r0, 0x1
branch_0x802317c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x802317d4
    li      r5, 0x1
branch_0x802317d4:
    clrlwi. r0, r5, 24
    beq-    branch_0x80231818
    lfs     f1, 0x8(r7)
    li      r0, 0x0
    lfs     f0, 0x8(r6)
    fsubs   f1, f1, f0
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x8023180c
    lfs     f0, -0x1618(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8023180c
    li      r0, 0x1
branch_0x8023180c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80231818
    li      r4, 0x1
branch_0x80231818:
    clrlwi. r0, r4, 24
    beq-    branch_0x80231908
    lwz     r3, -0x6100(r13)
    lbzu    r0, 0x65(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802319d0
    li      r0, 0x1
    stb     r0, 0x0(r3)
    addi    r4, sp, 0x58
    lwz     r7, 0x4(r31)
    lwz     r5, -0x6100(r13)
    lwz     r6, 0x10(r7)
    lwz     r0, 0x14(r7)
    lwz     r3, -0x6328(r13)
    stw     r6, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x18(r7)
    stw     r0, 0x64(sp)
    lfs     f30, 0x64(sp)
    lfs     f29, 0x60(sp)
    lfs     f0, 0x60(r5)
    fmr     f3, f30
    lfs     f1, 0x5c(sp)
    fadds   f2, f29, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x58(sp)
    fmr     f31, f1
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802318b0
    lfs     f0, -0x1624(rtoc)
    fmr     f3, f30
    lwz     r3, -0x6328(r13)
    addi    r4, sp, 0x58
    fsubs   f2, f29, f0
    lfs     f1, 0x5c(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f31, f1
branch_0x802318b0:
    lwz     r3, 0x58(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802318c8
    li      r0, 0x1
    b       branch_0x802318cc

branch_0x802318c8:
    li      r0, 0x0
branch_0x802318cc:
    clrlwi. r0, r0, 24
    bne-    branch_0x802319d0
    li      r29, 0x0
    addi    r30, r29, 0x0
    b       branch_0x802318f8

branch_0x802318e0:
    lwz     r3, 0x0(r31)
    fmr     f1, f31
    lwzx    r3, r3, r30
    bl      calc__17TMBindShadowPartsFf
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x802318f8:
    lwz     r0, 0x8(r31)
    cmpw    r29, r0
    blt+    branch_0x802318e0
    b       branch_0x802319d0

branch_0x80231908:
    lwz     r3, 0x0(r7)
    addi    r4, sp, 0x48
    lwz     r0, 0x4(r7)
    lwz     r5, -0x6100(r13)
    stw     r3, 0x4c(sp)
    lwz     r3, -0x6328(r13)
    stw     r0, 0x50(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x54(sp)
    lfs     f29, 0x54(sp)
    lfs     f30, 0x50(sp)
    lfs     f0, 0x60(r5)
    fmr     f3, f29
    lfs     f1, 0x4c(sp)
    fadds   f2, f30, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x48(sp)
    fmr     f31, f1
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8023197c
    lfs     f0, -0x1624(rtoc)
    fmr     f3, f29
    lwz     r3, -0x6328(r13)
    addi    r4, sp, 0x48
    fsubs   f2, f30, f0
    lfs     f1, 0x4c(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f31, f1
branch_0x8023197c:
    lwz     r3, 0x48(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80231994
    li      r0, 0x1
    b       branch_0x80231998

branch_0x80231994:
    li      r0, 0x0
branch_0x80231998:
    clrlwi. r0, r0, 24
    bne-    branch_0x802319d0
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x802319c4

branch_0x802319ac:
    lwz     r3, 0x0(r31)
    fmr     f1, f31
    lwzx    r3, r3, r30
    bl      calc__17TMBindShadowPartsFf
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x802319c4:
    lwz     r0, 0x8(r31)
    cmpw    r29, r0
    blt+    branch_0x802319ac
branch_0x802319d0:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x98
    blr


.globl __ct__16TMBindShadowBodyFP9THitActorP8J3DModelf
__ct__16TMBindShadowBodyFP9THitActorP8J3DModelf: # 0x802319f8
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r22, 0x70(sp)
    addi    r24, r3, 0x0
    mr      r25, r5
    stw     r6, 0x0(r3)
    lis     r3, 0x800
    addi    r0, r3, 0x1
    stw     r4, 0x4(r24)
    stw     r6, 0x8(r24)
    lwz     r5, 0x4(r4)
    stw     r5, 0xc(r24)
    lfs     f0, -0x1650(rtoc)
    stfs    f0, 0x10(r24)
    stfs    f0, 0x14(r24)
    lfs     f2, -0x1624(rtoc)
    stfs    f2, 0x18(r24)
    lwz     r4, 0x4c(r4)
    cmpw    r4, r0
    beq-    branch_0x80231a90
    bge-    branch_0x80231a68
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    beq-    branch_0x80231a74
    b       branch_0x80231aa0

branch_0x80231a68:
    addi    r0, r3, 0x3
    cmpw    r4, r0
    bge-    branch_0x80231aa0
branch_0x80231a74:
    lfs     f0, -0x1614(rtoc)
    stfs    f0, 0x10(r24)
    lfs     f0, -0x1610(rtoc)
    stfs    f0, 0x14(r24)
    lfs     f0, -0x160c(rtoc)
    stfs    f0, 0x18(r24)
    b       branch_0x80231aac

branch_0x80231a90:
    lfs     f0, -0x1608(rtoc)
    stfs    f0, 0x10(r24)
    stfs    f2, 0x14(r24)
    b       branch_0x80231aac

branch_0x80231aa0:
    lfs     f0, -0x1624(rtoc)
    stfs    f0, 0x10(r24)
    stfs    f0, 0x14(r24)
branch_0x80231aac:
    lfs     f0, 0x10(r24)
    lis     r3, 0x800
    lis     r5, 0x8000
    fmuls   f0, f0, f1
    addi    r4, r3, 0x3
    addi    r6, r3, 0x1
    addi    r5, r5, 0x1
    stfs    f0, 0x10(r24)
    li      r7, 0x0
    lfs     f0, 0x14(r24)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(r24)
    lwz     r27, 0x4(r25)
    b       branch_0x80231b64

branch_0x80231ae4:
    lwz     r3, 0x20(r27)
    clrlslwi  r0, r7, 24, 2
    lwzx    r3, r3, r0
    lbz     r0, 0x1a(r3)
    clrlwi  r0, r0, 28
    cmplwi  r0, 0x1
    bne-    branch_0x80231b60
    lwz     r3, 0x4(r24)
    lwz     r0, 0x4c(r3)
    cmpw    r0, r6
    beq-    branch_0x80231b30
    bge-    branch_0x80231b20
    cmpw    r0, r5
    beq-    branch_0x80231b28
    b       branch_0x80231b48

branch_0x80231b20:
    cmpw    r0, r4
    bge-    branch_0x80231b48
branch_0x80231b28:
    li      r0, 0x1
    b       branch_0x80231b4c

branch_0x80231b30:
    cmpwi   r7, 0x17
    bne-    branch_0x80231b40
    li      r0, 0x0
    b       branch_0x80231b4c

branch_0x80231b40:
    li      r0, 0x1
    b       branch_0x80231b4c

branch_0x80231b48:
    li      r0, 0x1
branch_0x80231b4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80231b60
    lwz     r3, 0x8(r24)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r24)
branch_0x80231b60:
    addi    r7, r7, 0x1
branch_0x80231b64:
    lhz     r0, 0x1c(r27)
    cmpw    r7, r0
    blt+    branch_0x80231ae4
    lwz     r0, 0x8(r24)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lis     r4, 0x800
    stw     r3, 0x0(r24)
    lis     r3, 0x8000
    addi    r30, r4, 0x2
    addi    r31, r3, 0x1
    addi    r29, r4, 0x3
    addi    r28, r4, 0x1
    li      r23, 0x0
    li      r26, 0x0
    b       branch_0x80231d80

branch_0x80231ba4:
    lwz     r3, 0x20(r27)
    clrlslwi  r0, r26, 24, 2
    lwzx    r3, r3, r0
    lbz     r0, 0x1a(r3)
    clrlwi  r0, r0, 28
    cmplwi  r0, 0x1
    bne-    branch_0x80231d7c
    lwz     r3, 0x4(r24)
    lwz     r0, 0x4c(r3)
    cmpw    r0, r28
    beq-    branch_0x80231bf0
    bge-    branch_0x80231be0
    cmpw    r0, r31
    beq-    branch_0x80231be8
    b       branch_0x80231c08

branch_0x80231be0:
    cmpw    r0, r29
    bge-    branch_0x80231c08
branch_0x80231be8:
    li      r0, 0x1
    b       branch_0x80231c0c

branch_0x80231bf0:
    cmpwi   r26, 0x17
    bne-    branch_0x80231c00
    li      r0, 0x0
    b       branch_0x80231c0c

branch_0x80231c00:
    li      r0, 0x1
    b       branch_0x80231c0c

branch_0x80231c08:
    li      r0, 0x1
branch_0x80231c0c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80231d7c
    lwz     r3, 0x4c(r3)
    cmpw    r3, r28
    beq-    branch_0x80231c50
    bge-    branch_0x80231c30
    cmpw    r3, r31
    beq-    branch_0x80231c38
    b       branch_0x80231c70

branch_0x80231c30:
    cmpw    r3, r29
    bge-    branch_0x80231c70
branch_0x80231c38:
    cmpwi   r26, 0x1a
    bne-    branch_0x80231c48
    li      r0, 0x1
    b       branch_0x80231c74

branch_0x80231c48:
    li      r0, 0x0
    b       branch_0x80231c74

branch_0x80231c50:
    cmpwi   r26, 0x13
    beq-    branch_0x80231c60
    cmpwi   r26, 0x17
    bne-    branch_0x80231c68
branch_0x80231c60:
    li      r0, 0x1
    b       branch_0x80231c74

branch_0x80231c68:
    li      r0, 0x0
    b       branch_0x80231c74

branch_0x80231c70:
    li      r0, 0x0
branch_0x80231c74:
    clrlwi. r0, r0, 24
    beq-    branch_0x80231cc0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x80231ca4
    lfs     f1, 0x10(r24)
    addi    r3, r22, 0x0
    addi    r4, r25, 0x0
    addi    r6, r24, 0x0
    clrlwi  r5, r26, 24
    bl      __ct__17TMBindShadowPartsFP8J3DModelUcP16TMBindShadowBodyf
branch_0x80231ca4:
    lwz     r3, 0x0(r24)
    li      r0, 0x1
    stwx    r22, r3, r23
    lwz     r3, 0x0(r24)
    lwzx    r3, r3, r23
    stb     r0, 0x15(r3)
    b       branch_0x80231d78

branch_0x80231cc0:
    cmpw    r3, r30
    beq-    branch_0x80231cd8
    bge-    branch_0x80231cf8
    cmpw    r3, r31
    beq-    branch_0x80231cd8
    b       branch_0x80231cf8

branch_0x80231cd8:
    cmpwi   r26, 0x2
    beq-    branch_0x80231ce8
    cmpwi   r26, 0xe
    bne-    branch_0x80231cf0
branch_0x80231ce8:
    li      r0, 0x1
    b       branch_0x80231cfc

branch_0x80231cf0:
    li      r0, 0x0
    b       branch_0x80231cfc

branch_0x80231cf8:
    li      r0, 0x0
branch_0x80231cfc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80231d48
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x80231d2c
    lfs     f1, 0x18(r24)
    addi    r3, r22, 0x0
    addi    r4, r25, 0x0
    addi    r6, r24, 0x0
    clrlwi  r5, r26, 24
    bl      __ct__17TMBindShadowPartsFP8J3DModelUcP16TMBindShadowBodyf
branch_0x80231d2c:
    lwz     r3, 0x0(r24)
    li      r0, 0x1
    stwx    r22, r3, r23
    lwz     r3, 0x0(r24)
    lwzx    r3, r3, r23
    stb     r0, 0x16(r3)
    b       branch_0x80231d78

branch_0x80231d48:
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x80231d70
    lfs     f1, 0x14(r24)
    addi    r3, r22, 0x0
    addi    r4, r25, 0x0
    addi    r6, r24, 0x0
    clrlwi  r5, r26, 24
    bl      __ct__17TMBindShadowPartsFP8J3DModelUcP16TMBindShadowBodyf
branch_0x80231d70:
    lwz     r3, 0x0(r24)
    stwx    r22, r3, r23
branch_0x80231d78:
    addi    r23, r23, 0x4
branch_0x80231d7c:
    addi    r26, r26, 0x1
branch_0x80231d80:
    lhz     r0, 0x1c(r27)
    cmpw    r26, r0
    blt+    branch_0x80231ba4
    lwz     r4, -0x6100(r13)
    addi    r5, sp, 0x48
    stw     r24, 0x60(sp)
    addi    r3, sp, 0x44
    addi    r0, r4, 0x54
    stw     r0, 0x4c(sp)
    addi    r4, r4, 0x4c
    addi    r6, sp, 0x60
    lwz     r0, 0x4c(sp)
    stw     r0, 0x48(sp)
    bl      insert__Q27JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__FQ37JGadget70TList_P16TMBindShadowBody_Q27JGadget31TAllocator_P16TMBindShadowBody__8iteratorRCP16TMBindShadowBody
    mr      r3, r24
    lmw     r22, 0x70(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl calc__17TMBindShadowPartsFf
calc__17TMBindShadowPartsFf: # 0x80231dd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stfd    f31, 0x120(sp)
    stfd    f30, 0x118(sp)
    stw     r31, 0x114(sp)
    mr      r31, r3
    lbz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8023202c
    lwz     r4, 0x4(r31)
    fadds   f0, f1, f1
    lwz     r5, 0xc(r31)
    lwz     r3, 0x4(r4)
    lbz     r0, 0x16(r31)
    lfs     f2, 0x14(r3)
    lwz     r3, -0x6100(r13)
    cmplwi  r0, 0x0
    fsubs   f3, f2, f1
    lfsu    f9, 0x30(r3)
    lwz     r6, 0x10(r31)
    lfs     f4, 0x1c(r5)
    fabs    f5, f3
    lfs     f3, 0x1c(r6)
    lfs     f10, 0x8(r3)
    fsubs   f8, f4, f5
    lfs     f6, 0xc(r5)
    fsubs   f7, f3, f5
    lfs     f5, 0x2c(r5)
    lfs     f4, 0xc(r6)
    fsubs   f8, f8, f1
    lfs     f3, 0x2c(r6)
    fsubs   f1, f7, f1
    lfs     f2, -0x1670(rtoc)
    fnmsubs  f6, f9, f8, f6
    fnmsubs  f4, f9, f1, f4
    fnmsubs  f3, f10, f1, f3
    fnmsubs  f5, f10, f8, f5
    fmuls   f7, f2, f0
    fadds   f1, f6, f4
    fadds   f0, f5, f3
    fmuls   f8, f2, f1
    fmuls   f10, f2, f0
    fsubs   f0, f8, f4
    fsubs   f1, f10, f3
    fabs    f2, f0
    fabs    f1, f1
    fmr     f31, f2
    fmr     f30, f1
    beq-    branch_0x80231ea4
    lfs     f0, 0x18(r4)
    stfs    f0, 0x0(r31)
    b       branch_0x80231ec4

branch_0x80231ea4:
    lbz     r0, 0x15(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80231ebc
    lfs     f0, 0x10(r4)
    stfs    f0, 0x0(r31)
    b       branch_0x80231ec4

branch_0x80231ebc:
    lfs     f0, 0x14(r4)
    stfs    f0, 0x0(r31)
branch_0x80231ec4:
    lfs     f9, 0x0(r31)
    fcmpo   cr0, f2, f9
    bge-    branch_0x80231ed4
    fmr     f31, f9
branch_0x80231ed4:
    fcmpo   cr0, f1, f9
    bge-    branch_0x80231ee0
    fmr     f30, f9
branch_0x80231ee0:
    lbz     r0, 0x15(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80231f44
    fcmpo   cr0, f30, f31
    lwz     r3, -0x6100(r13)
    lfs     f0, 0x68(r3)
    lfs     f1, 0x6c(r3)
    ble-    branch_0x80231f20
    fmuls   f0, f0, f31
    fcmpo   cr0, f30, f0
    ble-    branch_0x80231f10
    fmuls   f30, f30, f1
branch_0x80231f10:
    fcmpo   cr0, f31, f9
    ble-    branch_0x80231f44
    fmr     f31, f9
    b       branch_0x80231f44

branch_0x80231f20:
    fcmpo   cr0, f31, f30
    ble-    branch_0x80231f44
    fmuls   f0, f0, f30
    fcmpo   cr0, f31, f0
    ble-    branch_0x80231f38
    fmuls   f31, f31, f1
branch_0x80231f38:
    fcmpo   cr0, f30, f9
    ble-    branch_0x80231f44
    fmr     f30, f9
branch_0x80231f44:
    lfs     f0, -0x1664(rtoc)
    li      r3, 0x0
    li      r0, 0x1
    stfs    f0, 0xac(sp)
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xb4(sp)
    stfs    f0, 0xb8(sp)
    stb     r3, 0xbc(sp)
    stb     r0, 0xbd(sp)
    stw     r3, 0xc0(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    stfs    f8, 0xa0(sp)
    stfs    f7, 0xa4(sp)
    stfs    f10, 0xa8(sp)
    stfs    f31, 0xac(sp)
    stfs    f30, 0xb0(sp)
    lbz     r0, 0x15(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8023200c
    lwz     r3, 0x4(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    beq-    branch_0x8023200c
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x2
    beq-    branch_0x8023200c
    fsubs   f1, f3, f5
    fsubs   f2, f4, f6
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x1600(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1604(rtoc)
    stw     r0, 0x10c(sp)
    lis     r0, 0x4330
    fcmpo   cr0, f31, f30
    stw     r0, 0x108(sp)
    lfd     f1, 0x108(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fmr     f1, f0
    ble-    branch_0x80232004
    lfs     f0, -0x165c(rtoc)
    fsubs   f1, f1, f0
branch_0x80232004:
    stfs    f1, 0xb4(sp)
    b       branch_0x80232014

branch_0x8023200c:
    lfs     f0, -0x1664(rtoc)
    stfs    f0, 0xb4(sp)
branch_0x80232014:
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0xa0
    lwz     r3, -0x6100(r13)
    lwz     r5, 0x4(r5)
    lwz     r5, 0x4c(r5)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x8023202c:
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lfd     f30, 0x118(sp)
    mtlr    r0
    lwz     r31, 0x114(sp)
    addi    sp, sp, 0x128
    blr


.globl __ct__17TMBindShadowPartsFP8J3DModelUcP16TMBindShadowBodyf
__ct__17TMBindShadowPartsFP8J3DModelUcP16TMBindShadowBodyf: # 0x80232048
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    fmr     f31, f1
    stw     r31, 0x6c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    stw     r30, 0x68(sp)
    clrlwi  r30, r5, 24
    stw     r29, 0x64(sp)
    addi    r29, r4, 0x0
    mr      r4, r30
    lfs     f0, -0x1650(rtoc)
    stfs    f0, 0x0(r31)
    stw     r6, 0x4(r31)
    stw     r3, 0x8(r31)
    stw     r3, 0xc(r31)
    stw     r3, 0x10(r31)
    stb     r0, 0x14(r31)
    stb     r3, 0x15(r31)
    stb     r3, 0x16(r31)
    lwz     r3, 0x4(r29)
    lwz     r3, 0xb0(r3)
    bl      getName__10JUTNameTabCFUs
    stw     r3, 0x8(r31)
    mulli   r3, r30, 0x30
    lwz     r4, 0x58(r29)
    slwi    r0, r30, 2
    add     r3, r4, r3
    stw     r3, 0xc(r31)
    mr      r3, r31
    lwz     r4, 0x4(r29)
    lwz     r5, 0x58(r29)
    lwz     r4, 0x20(r4)
    lwzx    r4, r4, r0
    lwz     r4, 0x10(r4)
    lhz     r0, 0x18(r4)
    mulli   r0, r0, 0x30
    add     r0, r5, r0
    stw     r0, 0x10(r31)
    stfs    f31, 0x0(r31)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl __dt__18J3DMtxCalcBasicAnmFv
__dt__18J3DMtxCalcBasicAnmFv: # 0x80232114
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr.     r31, r3
    beq-    branch_0x802321e0
    lis     r3, 0x803e
    subi    r3, r3, 0x4ed0
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
    beq-    branch_0x802321a0
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
    lfs     f0, -0x166c(rtoc)
    stfs    f0, 0x60(r31)
    stw     r0, 0x5c(r31)
    stfs    f0, 0x64(r31)
branch_0x802321a0:
    cmplwi  r31, 0x0
    beq-    branch_0x802321d0
    lis     r3, 0x803e
    addi    r3, r3, 0x8f4
    stw     r3, 0x4c(r31)
    addi    r5, r3, 0x24
    addi    r0, r31, 0x50
    lwz     r3, 0x0(r31)
    stw     r5, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
branch_0x802321d0:
    extsh.  r0, r4
    ble-    branch_0x802321e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x802321e0:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf
init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf: # 0x802321f8
    stwu    sp, -0x28(sp)
    lis     r6, 0x8040
    addi    r9, r6, 0x47b8
    lwz     r3, 0x0(r4)
    lis     r7, 0x803e
    lwz     r0, 0x4(r4)
    lis     r6, 0x8040
    subi    r8, r7, 0x4f30
    stw     r3, 0x0(r9)
    addi    r7, r6, 0x47c4
    lis     r3, 0x8040
    stw     r0, 0x4(r9)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r9)
    lwz     r6, 0x0(r8)
    lwz     r0, 0x4(r8)
    stw     r6, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r8)
    stw     r0, 0x20(sp)
    lwz     r6, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stw     r6, 0x0(r7)
    stw     r0, 0x4(r7)
    lwz     r0, 0x20(sp)
    addi    sp, sp, 0x28
    stw     r0, 0x8(r7)
    lfs     f1, 0x0(r5)
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfsu   f0, 0x4788(r3)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x4(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r5)
    lfs     f0, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r5)
    stfs    f0, 0xc(r3)
    lfs     f1, 0x10(r5)
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r5)
    lfs     f0, 0x4(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f1, 0x18(r5)
    lfs     f0, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x18(r3)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x1c(r3)
    lfs     f1, 0x20(r5)
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x24(r5)
    lfs     f0, 0x4(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r3)
    lfs     f1, 0x28(r5)
    lfs     f0, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r3)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x2c(r3)
    blr


.globl calc__18J3DMtxCalcBasicAnmFUs
calc__18J3DMtxCalcBasicAnmFUs: # 0x80232310
    mflr    r0
    addi    r3, r3, 0x50
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      calc__13J3DMtxCalcAnmFUs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeDL__Q219TMBindShadowManager26TSetup5$2216ShadowUtil_cppFv
makeDL__Q219TMBindShadowManager26TSetup5$2216ShadowUtil_cppFv: # 0x80232334
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    bl      GDSetDstAlpha
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GDSetZMode
    li      r3, 0x2
    bl      GDSetCullMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x0
    bl      GDSetBlendModeEtc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeDL__Q219TMBindShadowManager26TSetup4$2207ShadowUtil_cppFv
makeDL__Q219TMBindShadowManager26TSetup4$2207ShadowUtil_cppFv: # 0x80232394
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    bl      GDSetDstAlpha
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GDSetZMode
    li      r3, 0x1
    bl      GDSetCullMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    li      r7, 0x1
    li      r8, 0x1
    li      r9, 0x0
    bl      GDSetBlendModeEtc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeDL__Q219TMBindShadowManager26TSetup3$2195ShadowUtil_cppFv
makeDL__Q219TMBindShadowManager26TSetup3$2195ShadowUtil_cppFv: # 0x802323f4
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    bl      GDSetDstAlpha
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GDSetZMode
    li      r3, 0x2
    bl      GDSetCullMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GDSetBlendMode
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeDL__Q219TMBindShadowManager26TSetup2$2190ShadowUtil_cppFv
makeDL__Q219TMBindShadowManager26TSetup2$2190ShadowUtil_cppFv: # 0x80232448
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      GDSetCullMode
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GDSetZMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x0
    bl      GDSetBlendModeEtc
    li      r3, 0x1
    li      r4, 0x0
    bl      GDSetDstAlpha
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeDL__Q219TMBindShadowManager28TCylinder$2171ShadowUtil_cppFv
makeDL__Q219TMBindShadowManager28TCylinder$2171ShadowUtil_cppFv: # 0x802324a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x438(sp)
    stfd    f31, 0x430(sp)
    stfd    f30, 0x428(sp)
    stfd    f29, 0x420(sp)
    stfd    f28, 0x418(sp)
    stfd    f27, 0x410(sp)
    stfd    f26, 0x408(sp)
    stmw    r27, 0x3f4(sp)
    addi    r30, sp, 0x24c
    addi    r29, sp, 0xbc
    li      r27, 0x0
    li      r28, 0x0
    lis     r31, 0x4330
    lfs     f0, -0x166c(rtoc)
    lfs     f27, -0x15f8(rtoc)
    fneg    f31, f0
    lfs     f28, -0x15f4(rtoc)
    lfd     f29, -0x1600(rtoc)
    lfs     f30, -0x1638(rtoc)
branch_0x802324fc:
    xoris   r0, r27, 0x8000
    stw     r0, 0x3ec(sp)
    stw     r31, 0x3e8(sp)
    lfd     f0, 0x3e8(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f28, f0
    fmuls   f0, f27, f0
    fdivs   f26, f0, f30
    fmr     f1, f26
    bl      cosf
    stfsx   f1, r30, r28
    fmr     f1, f26
    bl      sinf
    addi    r27, r27, 0x1
    stfsx   f1, r29, r28
    cmpwi   r27, 0xa
    addi    r28, r28, 0x4
    ble+    branch_0x802324fc
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80232560
    bl      GDOverflowed
branch_0x80232560:
    lwz     r4, -0x5778(r13)
    li      r5, 0x98
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80232594
    bl      GDOverflowed
branch_0x80232594:
    lwz     r4, -0x5778(r13)
    li      r29, 0x0
    li      r5, 0x16
    lwz     r3, 0x8(r4)
    addi    r31, sp, 0x24c
    addi    r30, sp, 0xbc
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r28, 0x0
    stb     r29, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f30, -0x166c(rtoc)
branch_0x802325d4:
    lfsx    f27, r31, r28
    li      r3, 0x4
    stfs    f27, 0x98(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x98(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x98(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x98(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x98(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfsx    f28, r30, r28
    stfs    f28, 0x94(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x94(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x94(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x94(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x94(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    stfs    f31, 0x90(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x90(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x90(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x90(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x90(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    stfs    f27, 0x8c(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x8c(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x8c(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x8c(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x8c(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    stfs    f28, 0x88(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x88(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x88(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x88(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x88(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    stfs    f30, 0x84(sp)
    bl      GDOverflowCheck
    lwz     r4, -0x5778(r13)
    addi    r29, r29, 0x1
    lwz     r0, 0x84(sp)
    cmpwi   r29, 0xa
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    addi    r28, r28, 0x4
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x84(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x84(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r5, 0x84(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    ble+    branch_0x802325d4
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x802328d8
    bl      GDOverflowed
branch_0x802328d8:
    lwz     r4, -0x5778(r13)
    li      r5, 0xa0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x8023290c
    bl      GDOverflowed
branch_0x8023290c:
    lwz     r5, -0x5778(r13)
    li      r29, 0x0
    li      r6, 0xc
    lwz     r4, 0x8(r5)
    li      r3, 0x4
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r29, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfs     f0, -0x1664(rtoc)
    stfs    f0, 0x80(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x80(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x80(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x80(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x80(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfs     f0, -0x1664(rtoc)
    stfs    f0, 0x7c(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x7c(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x7c(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x7c(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x7c(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfs     f0, -0x166c(rtoc)
    stfs    f0, 0x78(sp)
    bl      GDOverflowCheck
    lwz     r4, -0x5778(r13)
    addi    r31, sp, 0x24c
    lwz     r0, 0x78(sp)
    addi    r30, sp, 0xbc
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r28, 0x0
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x78(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x78(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r5, 0x78(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f30, -0x166c(rtoc)
branch_0x80232ac0:
    lfsx    f0, r31, r28
    li      r3, 0x4
    stfs    f0, 0x74(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x74(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x74(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x74(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x74(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfsx    f0, r30, r28
    fneg    f0, f0
    stfs    f0, 0x70(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x70(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x70(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x70(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x70(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    stfs    f30, 0x6c(sp)
    bl      GDOverflowCheck
    lwz     r4, -0x5778(r13)
    addi    r29, r29, 0x1
    lwz     r0, 0x6c(sp)
    cmpwi   r29, 0xa
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    addi    r28, r28, 0x4
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x6c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x6c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r5, 0x6c(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    ble+    branch_0x80232ac0
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80232c60
    bl      GDOverflowed
branch_0x80232c60:
    lwz     r4, -0x5778(r13)
    li      r5, 0xa0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80232c94
    bl      GDOverflowed
branch_0x80232c94:
    lwz     r5, -0x5778(r13)
    li      r29, 0x0
    li      r6, 0xc
    lwz     r4, 0x8(r5)
    li      r3, 0x4
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r29, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfs     f0, -0x1664(rtoc)
    stfs    f0, 0x68(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x68(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x68(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x68(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x68(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfs     f0, -0x1664(rtoc)
    stfs    f0, 0x64(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x64(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x64(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x64(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x64(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    stfs    f31, 0x60(sp)
    bl      GDOverflowCheck
    lwz     r4, -0x5778(r13)
    addi    r30, sp, 0x24c
    lwz     r0, 0x60(sp)
    addi    r31, sp, 0xbc
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r28, 0x0
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x60(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x60(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r5, 0x60(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
branch_0x80232e40:
    lfsx    f0, r30, r28
    li      r3, 0x4
    stfs    f0, 0x5c(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x5c(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x5c(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x5c(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x5c(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lfsx    f0, r31, r28
    stfs    f0, 0x58(sp)
    bl      GDOverflowCheck
    lwz     r5, -0x5778(r13)
    li      r3, 0x4
    lwz     r0, 0x58(sp)
    lwz     r4, 0x8(r5)
    srwi    r6, r0, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x58(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 8
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r0, 0x58(sp)
    lwz     r4, 0x8(r5)
    extrwi  r6, r0, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r6, 0x58(sp)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    stfs    f31, 0x54(sp)
    bl      GDOverflowCheck
    lwz     r4, -0x5778(r13)
    addi    r29, r29, 0x1
    lwz     r0, 0x54(sp)
    cmpwi   r29, 0xa
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    addi    r28, r28, 0x4
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r5, 0x54(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    ble+    branch_0x80232e40
    lmw     r27, 0x3f4(sp)
    lwz     r0, 0x43c(sp)
    lfd     f31, 0x430(sp)
    lfd     f30, 0x428(sp)
    mtlr    r0
    lfd     f29, 0x420(sp)
    lfd     f28, 0x418(sp)
    lfd     f27, 0x410(sp)
    lfd     f26, 0x408(sp)
    addi    sp, sp, 0x438
    blr


.globl GDOverflowCheck
GDOverflowCheck: # 0x80232fec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    add     r3, r4, r3
    cmplw   r3, r0
    ble-    branch_0x80233014
    bl      GDOverflowed
branch_0x80233014:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeDL__Q219TMBindShadowManager26TSetup1$2172ShadowUtil_cppFv
makeDL__Q219TMBindShadowManager26TSetup1$2172ShadowUtil_cppFv: # 0x80233024
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x1
    li      r5, 0x1
    stwu    sp, -0x20(sp)
    li      r6, 0x0
    li      r7, 0x2
    bl      GDSetGenMode2
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GDSetChanCtrl
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GDSetChanCtrl
    li      r3, 0x0
    li      r4, 0x4
    bl      GDSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    li      r7, 0xff
    li      r8, 0xff
    li      r9, 0x4
    bl      GDSetTevOrder
    lwz     r0, -0x1680(rtoc)
    addi    r4, sp, 0x1c
    li      r3, 0x4
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    bl      GDSetChanMatColor
    li      r0, 0x3c
    stw     r0, 0x8(sp)
    li      r3, 0x0
    li      r4, 0x3c
    li      r5, 0x3c
    li      r6, 0x3c
    li      r7, 0x3c
    li      r8, 0x3c
    li      r9, 0x3c
    li      r10, 0x3c
    bl      GDSetCurrentMtx
    lis     r3, 0x803e
    subi    r3, r3, 0x4f24
    bl      GDSetVtxDescv
    lis     r3, 0x803e
    subi    r4, r3, 0x4f14
    li      r3, 0x0
    bl      GDSetVtxAttrFmtv
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl _104_4_calc__18J3DMtxCalcBasicAnmFUs
_104_4_calc__18J3DMtxCalcBasicAnmFUs: # 0x80233128
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calc__18J3DMtxCalcBasicAnmFUs


.globl _104_4_calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo
_104_4_calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo: # 0x8023313c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo


.globl _104_4_init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf
_104_4_init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf: # 0x80233150
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf


.globl _80_calc__18J3DMtxCalcBasicAnmFUs
_80_calc__18J3DMtxCalcBasicAnmFUs: # 0x80233164
    subi    r3, r3, 0x50
    b       calc__18J3DMtxCalcBasicAnmFUs


.globl _80___dt__18J3DMtxCalcBasicAnmFv
_80___dt__18J3DMtxCalcBasicAnmFv: # 0x8023316c
    subi    r3, r3, 0x50
    b       __dt__18J3DMtxCalcBasicAnmFv

