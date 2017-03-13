
.globl setupPerformList_console__12TMarDirectorFv
setupPerformList_console__12TMarDirectorFv: # 0x8029ad3c
    mflr    r0
    lis     r5, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    addi    r31, r5, 0x2a68
    addi    r28, r3, 0x0
    addi    r3, r31, 0xe0
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0xe0
    mtlr    r12
    blrl
    addi    r29, r3, 0x0
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8029ada8
    lwz     r4, -0x5fdc(r13)
    addi    r3, r27, 0x0
    addi    r5, r31, 0xec
    bl      __ct__15TEmitterViewObjFP17JPAEmitterManagerPCc
branch_0x8029ada8:
    addi    r30, r29, 0x10
    stw     r27, 0x5c(sp)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x3c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x3c(sp)
    addi    r4, sp, 0x38
    addi    r3, sp, 0x58
    stw     r0, 0x38(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x58(sp)
    addi    r5, sp, 0x48
    addi    r4, r30, 0x0
    stw     r0, 0x54(sp)
    addi    r3, sp, 0x44
    addi    r6, sp, 0x5c
    lwz     r0, 0x54(sp)
    stw     r0, 0x48(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x44(sp)
    addi    r3, sp, 0x50
    addi    r4, sp, 0x40
    stw     r0, 0x40(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, 0x30(r28)
    addi    r4, r29, 0x0
    li      r5, 0x3
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r3, 0x30(r28)
    addi    r4, r31, 0x100
    li      r5, 0x3
    bl      push_back__12TPerformListFPCcUl
    lwz     r3, 0x30(r28)
    subi    r4, rtoc, 0x5b0
    li      r5, 0x3
    bl      push_back__12TPerformListFPCcUl
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl initECDisp__12TMarDirectorFP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_PQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
initECDisp__12TMarDirectorFP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_PQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_: # 0x8029ae4c
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x370(sp)
    stfd    f31, 0x368(sp)
    stfd    f30, 0x360(sp)
    stmw    r20, 0x330(sp)
    addi    r30, r3, 0x0
    addi    r29, r5, 0x0
    addi    r31, r4, 0x2a68
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8029aef0
    stw     r20, 0x244(sp)
    addi    r4, r31, 0x10c
    stw     r20, 0x2a0(sp)
    lwz     r3, 0x244(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x244(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r21, 0x2a0(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x1e98
    stw     r0, 0x0(r21)
    addi    r3, r21, 0x10
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    li      r0, 0x0
    lis     r3, 0x803e
    sth     r0, 0x20(r21)
    addi    r0, r3, 0x1e74
    stw     r0, 0x0(r20)
branch_0x8029aef0:
    mr      r24, r20
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r21, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r6, r3, 16
    addi    r7, r21, 0x0
    addi    r3, sp, 0x308
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    addi    r4, sp, 0x308
    addi    r3, r24, 0x0
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    addi    r21, r29, 0x10
    stw     r20, 0x2ec(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x1cc
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x1cc(sp)
    addi    r4, sp, 0x1c8
    addi    r3, sp, 0x29c
    stw     r0, 0x1c8(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x29c(sp)
    addi    r5, sp, 0x240
    addi    r4, r21, 0x0
    stw     r0, 0x298(sp)
    addi    r3, sp, 0x23c
    addi    r6, sp, 0x2ec
    lwz     r0, 0x298(sp)
    stw     r0, 0x240(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x23c(sp)
    addi    r3, sp, 0x294
    addi    r4, sp, 0x238
    stw     r0, 0x238(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r4, -0x5db8(r13)
    subi    r3, rtoc, 0x5a8
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x5a8
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r22, r3, 0x0
    addi    r3, r31, 0x118
    lwz     r21, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r21)
    addi    r4, r3, 0x0
    addi    r3, r21, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x118
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r25, r3, 0x0
    addi    r21, r31, 0x12c
    lwz     r20, 0x4(r4)
    addi    r26, r31, 0x140
    addi    r3, r31, 0x150
    li      r27, 0x0
    li      r28, 0x0
    li      r23, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x150
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8029b130
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8029b04c
    addi    r3, r27, 0x0
    addi    r5, r21, 0x0
    li      r4, 0x0
    bl      __ct__9TLensGlowFbPCc
branch_0x8029b04c:
    addi    r20, r29, 0x10
    stw     r27, 0x2e4(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x1c4
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x1c4(sp)
    addi    r4, sp, 0x1c0
    addi    r3, sp, 0x288
    stw     r0, 0x1c0(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x288(sp)
    addi    r5, sp, 0x230
    addi    r4, r20, 0x0
    stw     r0, 0x284(sp)
    addi    r3, sp, 0x22c
    addi    r6, sp, 0x2e4
    lwz     r0, 0x284(sp)
    stw     r0, 0x230(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x22c(sp)
    addi    r3, sp, 0x280
    addi    r4, sp, 0x228
    stw     r0, 0x228(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8029b0c8
    addi    r3, r21, 0x0
    addi    r4, r26, 0x0
    bl      __ct__10TLensFlareFPCc
branch_0x8029b0c8:
    addi    r20, r29, 0x10
    stw     r21, 0x2e0(sp)
    addi    r28, r21, 0x0
    addi    r4, r20, 0x0
    addi    r3, sp, 0x1bc
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x1bc(sp)
    addi    r4, sp, 0x1b8
    addi    r3, sp, 0x27c
    stw     r0, 0x1b8(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x27c(sp)
    addi    r5, sp, 0x224
    addi    r4, r20, 0x0
    stw     r0, 0x278(sp)
    addi    r3, sp, 0x220
    addi    r6, sp, 0x2e0
    lwz     r0, 0x278(sp)
    stw     r0, 0x224(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x220(sp)
    addi    r3, sp, 0x274
    addi    r4, sp, 0x21c
    stw     r0, 0x21c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    b       branch_0x8029b264

branch_0x8029b130:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x15c
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x15c
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8029b264
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8029b184
    addi    r3, r27, 0x0
    addi    r5, r21, 0x0
    li      r4, 0x1
    bl      __ct__9TLensGlowFbPCc
branch_0x8029b184:
    addi    r20, r29, 0x10
    stw     r27, 0x2dc(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x1b4
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x1b4(sp)
    addi    r4, sp, 0x1b0
    addi    r3, sp, 0x26c
    stw     r0, 0x1b0(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x26c(sp)
    addi    r5, sp, 0x218
    addi    r4, r20, 0x0
    stw     r0, 0x268(sp)
    addi    r3, sp, 0x214
    addi    r6, sp, 0x2dc
    lwz     r0, 0x268(sp)
    stw     r0, 0x218(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x214(sp)
    addi    r3, sp, 0x264
    addi    r4, sp, 0x210
    stw     r0, 0x210(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8029b200
    addi    r3, r21, 0x0
    addi    r4, r26, 0x0
    bl      __ct__10TLensFlareFPCc
branch_0x8029b200:
    addi    r20, r29, 0x10
    stw     r21, 0x2d8(sp)
    addi    r28, r21, 0x0
    addi    r4, r20, 0x0
    addi    r3, sp, 0x1ac
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x1ac(sp)
    addi    r4, sp, 0x1a8
    addi    r3, sp, 0x260
    stw     r0, 0x1a8(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x260(sp)
    addi    r5, sp, 0x20c
    addi    r4, r20, 0x0
    stw     r0, 0x25c(sp)
    addi    r3, sp, 0x208
    addi    r6, sp, 0x2d8
    lwz     r0, 0x25c(sp)
    stw     r0, 0x20c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x208(sp)
    addi    r3, sp, 0x258
    addi    r4, sp, 0x204
    stw     r0, 0x204(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
branch_0x8029b264:
    cmplwi  r25, 0x0
    bne-    branch_0x8029b27c
    cmplwi  r28, 0x0
    bne-    branch_0x8029b27c
    cmplwi  r27, 0x0
    beq-    branch_0x8029b38c
branch_0x8029b27c:
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x578(rtoc)
    srawi   r0, r0, 1
    addze   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x32c(sp)
    lis     r21, 0x4330
    stw     r21, 0x328(sp)
    lfd     f0, 0x328(sp)
    fsubs   f30, f0, f1
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x578(rtoc)
    srawi   r0, r0, 1
    addze   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x324(sp)
    li      r3, 0x40
    stw     r21, 0x320(sp)
    lfd     f0, 0x320(sp)
    fsubs   f31, f0, f1
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8029b388
    stw     r21, 0x200(sp)
    addi    r4, r31, 0x168
    lwz     r3, 0x200(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r23, 0x200(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r23)
    addi    r3, r23, 0x10
    lfs     f1, -0x5a0(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58
    li      r4, 0x0
    fneg    f1, f30
    lis     r3, 0x803e
    sth     r4, 0x1c(r23)
    addi    r0, r3, 0x4718
    fneg    f0, f31
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r0, r3, 0x45c8
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r21)
    addi    r0, r3, 0x24
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x19c0
    addi    r0, r3, 0x24
    sth     r4, 0x24(r21)
    lfs     f2, -0x59c(rtoc)
    stfs    f2, 0x28(r21)
    lfs     f2, -0x598(rtoc)
    stfs    f2, 0x2c(r21)
    stw     r3, 0x0(r21)
    stw     r0, 0x20(r21)
    stfs    f1, 0x30(r21)
    stfs    f31, 0x34(r21)
    stfs    f30, 0x38(r21)
    stfs    f0, 0x3c(r21)
branch_0x8029b388:
    mr      r23, r21
branch_0x8029b38c:
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8029b47c
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x570(rtoc)
    stw     r0, 0x324(sp)
    lis     r26, 0x4330
    stw     r26, 0x320(sp)
    lfd     f0, 0x320(sp)
    fsubs   f30, f0, f1
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    stw     r21, 0x1fc(sp)
    lfd     f1, -0x570(rtoc)
    addi    r4, r31, 0x168
    stw     r0, 0x32c(sp)
    lwz     r3, 0x1fc(sp)
    stw     r26, 0x328(sp)
    lfd     f0, 0x328(sp)
    fsubs   f31, f0, f1
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r26, 0x1fc(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r26)
    addi    r3, r26, 0x10
    lfs     f1, -0x5a0(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0x1c(r26)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r0, r3, 0x45c8
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r21)
    addi    r0, r3, 0x24
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x19c0
    addi    r0, r3, 0x24
    sth     r4, 0x24(r21)
    lfs     f0, -0x594(rtoc)
    stfs    f0, 0x28(r21)
    lfs     f0, -0x590(rtoc)
    stfs    f0, 0x2c(r21)
    stw     r3, 0x0(r21)
    stw     r0, 0x20(r21)
    lfs     f0, -0x5a0(rtoc)
    stfs    f0, 0x30(r21)
    stfs    f0, 0x34(r21)
    stfs    f30, 0x38(r21)
    stfs    f31, 0x3c(r21)
branch_0x8029b47c:
    addi    r20, r21, 0x0
    addi    r3, r30, 0x0
    addi    r4, r24, 0x0
    li      r5, 0x80
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8029b4b8
    addi    r3, sp, 0x2f8
    bl      SMSGetRederRect_Game__Fv
    addi    r3, r21, 0x0
    addi    r4, sp, 0x2f8
    addi    r5, r31, 0x178
    bl      __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
branch_0x8029b4b8:
    addi    r3, r30, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r20, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x184
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x184
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r26, r3, 0x0
    addi    r3, r31, 0x19c
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x19c
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x1ac
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1ac
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r22, r3, 0x0
    addi    r3, r31, 0x1c0
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1c0
    mtlr    r12
    blrl
    cmplwi  r25, 0x0
    addi    r21, r3, 0x0
    bne-    branch_0x8029b5c0
    cmplwi  r28, 0x0
    bne-    branch_0x8029b5c0
    cmplwi  r27, 0x0
    beq-    branch_0x8029b6a8
branch_0x8029b5c0:
    addi    r3, r30, 0x0
    addi    r4, r23, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x4
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x480
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    cmplwi  r25, 0x0
    beq-    branch_0x8029b608
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x204
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x8029b608:
    cmplwi  r27, 0x0
    beq-    branch_0x8029b620
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x204
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x8029b620:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    cmplwi  r28, 0x0
    beq-    branch_0x8029b6a8
    addi    r3, r30, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x4
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x80
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x204
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x8029b6a8:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x1cc
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1cc
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r22, r3, 0x0
    addi    r3, r31, 0x1dc
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1dc
    mtlr    r12
    blrl
    addi    r20, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x4
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x480
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r20, 0x0
    li      r5, 0x480
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1ec
    li      r5, 0x204
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1fc
    li      r5, 0x204
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r20, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8029b888
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x570(rtoc)
    stw     r0, 0x324(sp)
    lis     r22, 0x4330
    stw     r22, 0x320(sp)
    lfd     f0, 0x320(sp)
    fsubs   f31, f0, f1
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    stw     r21, 0x1e0(sp)
    lfd     f1, -0x570(rtoc)
    addi    r4, r31, 0x168
    stw     r0, 0x32c(sp)
    lwz     r3, 0x1e0(sp)
    stw     r22, 0x328(sp)
    lfd     f0, 0x328(sp)
    fsubs   f30, f0, f1
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r22, 0x1e0(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r22)
    addi    r3, r22, 0x10
    lfs     f1, -0x5a0(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0x1c(r22)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r0, r3, 0x45c8
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r21)
    addi    r0, r3, 0x24
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x19c0
    addi    r0, r3, 0x24
    sth     r4, 0x24(r21)
    lfs     f0, -0x59c(rtoc)
    stfs    f0, 0x28(r21)
    lfs     f0, -0x598(rtoc)
    stfs    f0, 0x2c(r21)
    stw     r3, 0x0(r21)
    stw     r0, 0x20(r21)
    lfs     f0, -0x5a0(rtoc)
    stfs    f0, 0x30(r21)
    stfs    f0, 0x34(r21)
    stfs    f31, 0x38(r21)
    stfs    f30, 0x3c(r21)
branch_0x8029b888:
    addi    r4, r21, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x100
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x100
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8029b994
    stw     r21, 0x1d8(sp)
    addi    r4, r31, 0x168
    lwz     r3, 0x1d8(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r22, 0x1d8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r22)
    addi    r3, r22, 0x10
    lfs     f1, -0x5a0(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0x1c(r22)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r0, r3, 0x45c8
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r21)
    addi    r0, r3, 0x24
    lis     r3, 0x803e
    stw     r0, 0x20(r21)
    addi    r3, r3, 0x19c0
    addi    r0, r3, 0x24
    sth     r4, 0x24(r21)
    lfs     f0, -0x58c(rtoc)
    stfs    f0, 0x28(r21)
    lfs     f0, -0x588(rtoc)
    stfs    f0, 0x2c(r21)
    stw     r3, 0x0(r21)
    stw     r0, 0x20(r21)
    lfs     f0, -0x5a0(rtoc)
    stfs    f0, 0x30(r21)
    lfs     f0, -0x584(rtoc)
    stfs    f0, 0x34(r21)
    lfs     f0, -0x580(rtoc)
    stfs    f0, 0x38(r21)
    lfs     f0, -0x57c(rtoc)
    stfs    f0, 0x3c(r21)
branch_0x8029b994:
    addi    r3, r30, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0xe0
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0xe0
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, -0x5db8(r13)
    subi    r3, rtoc, 0x5b0
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x5b0
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r30, 0x0
    addi    r4, r24, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lmw     r20, 0x330(sp)
    lwz     r0, 0x374(sp)
    lfd     f31, 0x368(sp)
    lfd     f30, 0x360(sp)
    mtlr    r0
    addi    sp, sp, 0x370
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58
set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58: # 0x8029ba58
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __dt__Q26JDrama8TEfbCtrlFv
__dt__Q26JDrama8TEfbCtrlFv: # 0x8029ba68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8029bac0
    lis     r3, 0x803e
    addi    r0, r3, 0x1e98
    stw     r0, 0x0(r30)
    beq-    branch_0x8029bab0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8029bab0:
    extsh.  r0, r31
    ble-    branch_0x8029bac0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8029bac0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initECTMir__12TMarDirectorFP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
initECTMir__12TMarDirectorFP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_: # 0x8029badc
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r4, 0x2a68
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lwz     r3, -0x5db8(r13)
    lwz     r30, 0x4(r3)
    addi    r3, r31, 0x20c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x20c
    mtlr    r12
    blrl
    addi    r29, r3, 0x0
    li      r0, 0x228
    lis     r3, 0x803e
    sth     r0, 0x20(r29)
    subi    r0, r3, 0xcb0
    stw     r0, 0x44(r29)
    addi    r3, r31, 0x21c
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x21c
    mtlr    r12
    blrl
    addi    r30, r3, 0x60
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      setTexAttb__Q26JDrama11TEfbCtrlTexFRC9_GXTexObj
    mr      r3, r30
    bl      GXGetTexObjHeight
    clrlwi  r31, r3, 16
    addi    r3, r30, 0x0
    bl      GXGetTexObjWidth
    clrlwi  r6, r3, 16
    addi    r7, r31, 0x0
    addi    r3, sp, 0x64
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r29, 0x0
    addi    r4, sp, 0x64
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    lwz     r0, 0x8c(sp)
    mr      r3, r29
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl initECTGft__12TMarDirectorFP12TPerformListP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_PQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
initECTGft__12TMarDirectorFP12TPerformListP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_PQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_: # 0x8029bbd4
    mflr    r0
    lis     r7, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x218(sp)
    stfd    f31, 0x210(sp)
    stfd    f30, 0x208(sp)
    stfd    f29, 0x200(sp)
    stfd    f28, 0x1f8(sp)
    stfd    f27, 0x1f0(sp)
    stfd    f26, 0x1e8(sp)
    stmw    r14, 0x1a0(sp)
    addi    r24, r3, 0x0
    addi    r29, r4, 0x0
    addi    r17, r6, 0x0
    addi    r28, r7, 0x2a68
    lwz     r5, gpPollution(r13)
    lwz     r0, 0x10(r5)
    cmpwi   r0, 0x0
    bne-    branch_0x8029bc68
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x228
    lwz     r14, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r14)
    addi    r4, r3, 0x0
    addi    r3, r14, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x228
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8029c178
    addi    r4, r3, 0x34
    addi    r3, r29, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    b       branch_0x8029c178

branch_0x8029bc68:
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x238
    lwz     r14, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r14)
    addi    r4, r3, 0x0
    addi    r3, r14, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x238
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    stw     r3, 0x188(sp)
    addi    r3, r28, 0x19c
    lwz     r14, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r14)
    addi    r4, r3, 0x0
    addi    r3, r14, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x19c
    mtlr    r12
    blrl
    stw     r3, 0x184(sp)
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8029bcf0
    li      r0, 0x0
    sth     r0, 0x148(sp)
    addi    r5, sp, 0x148
    addi    r3, r23, 0x0
    addi    r4, r28, 0x248
    bl      __ct__Q26JDrama11TEfbCtrlTexFPCcQ26JDrama10TFlagT_Us_
branch_0x8029bcf0:
    addi    r14, r17, 0x10
    stw     r23, 0x120(sp)
    addi    r21, r23, 0x0
    addi    r4, r14, 0x0
    addi    r3, sp, 0xa8
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xa8(sp)
    addi    r4, sp, 0xa4
    addi    r3, sp, 0xf4
    stw     r0, 0xa4(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xf4(sp)
    addi    r5, sp, 0xc8
    addi    r4, r14, 0x0
    stw     r0, 0xf0(sp)
    addi    r3, sp, 0xc4
    addi    r6, sp, 0x120
    lwz     r0, 0xf0(sp)
    stw     r0, 0xc8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xc4(sp)
    addi    r3, sp, 0xec
    addi    r4, sp, 0xc0
    stw     r0, 0xc0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    addi    r3, sp, 0x16c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x16c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x200
    li      r7, 0x200
    bl      set__7JUTRectFiiii
    addi    r3, r21, 0x0
    addi    r4, sp, 0x16c
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    addi    r3, r24, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x80
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8029bdc0
    addi    r3, r23, 0x0
    addi    r4, sp, 0x16c
    addi    r5, r28, 0x258
    bl      __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
branch_0x8029bdc0:
    addi    r3, r24, 0x0
    addi    r4, r23, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8029be88
    stw     r26, 0xbc(sp)
    addi    r4, r28, 0x168
    lwz     r3, 0xbc(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r22, 0xbc(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r22)
    addi    r3, r22, 0x10
    lfs     f1, -0x5a0(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58
    li      r0, 0x0
    lis     r3, 0x803e
    sth     r0, 0x1c(r22)
    addi    r5, r3, 0x4718
    lis     r3, 0x803e
    stw     r5, 0x20(r26)
    addi    r5, r3, 0x45c8
    lis     r3, 0x803e
    stw     r5, 0x20(r26)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r26)
    addi    r4, r3, 0x24
    lis     r3, 0x803e
    stw     r4, 0x20(r26)
    addi    r4, r3, 0x19c0
    addi    r3, r4, 0x24
    sth     r0, 0x24(r26)
    lfs     f0, -0x59c(rtoc)
    stfs    f0, 0x28(r26)
    lfs     f0, -0x598(rtoc)
    stfs    f0, 0x2c(r26)
    stw     r4, 0x0(r26)
    stw     r3, 0x20(r26)
    lfs     f0, -0x5a0(rtoc)
    stfs    f0, 0x30(r26)
    stfs    f0, 0x34(r26)
    lfs     f0, -0x568(rtoc)
    stfs    f0, 0x38(r26)
    stfs    f0, 0x3c(r26)
branch_0x8029be88:
    addi    r4, r26, 0x0
    addi    r3, r24, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, 0x184(sp)
    mr      r3, r24
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, 0x188(sp)
    mr      r3, r24
    lis     r5, 0x100
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r24, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lis     r4, 0x803e
    lfd     f28, -0x570(rtoc)
    addi    r22, r4, 0x1c64
    lfs     f29, -0x59c(rtoc)
    lis     r4, 0x803e
    lfs     f30, -0x598(rtoc)
    lis     r3, 0x803e
    lfs     f31, -0x5a0(rtoc)
    addi    r21, r3, 0x19c0
    addi    r0, r4, 0x45c8
    lis     r5, 0x803e
    stw     r0, 0x18c(sp)
    lis     r3, 0x803e
    addi    r24, r17, 0x10
    addi    r19, r22, 0x24
    addi    r20, r21, 0x24
    addi    r15, r5, 0x2140
    addi    r16, sp, 0x13c
    addi    r17, sp, 0x9c
    addi    r18, sp, 0xb8
    addi    r14, r3, 0x4718
    li      r26, 0x0
    li      r25, 0x0
    lis     r23, 0x4330
    b       branch_0x8029c168

branch_0x8029bf2c:
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8029bf54
    li      r0, 0x0
    sth     r0, 0x13c(sp)
    addi    r3, r31, 0x0
    addi    r5, r16, 0x0
    addi    r4, r28, 0x258
    bl      __ct__Q26JDrama11TEfbCtrlTexFPCcQ26JDrama10TFlagT_Us_
branch_0x8029bf54:
    stw     r31, 0x110(sp)
    addi    r27, r31, 0x0
    addi    r4, r24, 0x0
    addi    r3, sp, 0xa0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xa0(sp)
    addi    r4, r17, 0x0
    addi    r3, sp, 0xe4
    stw     r0, 0x9c(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xe4(sp)
    addi    r4, r24, 0x0
    addi    r5, r18, 0x0
    stw     r0, 0xe0(sp)
    addi    r3, sp, 0xb4
    addi    r6, sp, 0x110
    lwz     r0, 0xe0(sp)
    stw     r0, 0xb8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xb4(sp)
    addi    r3, sp, 0xdc
    addi    r4, sp, 0xb0
    stw     r0, 0xb0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r4, gpPollution(r13)
    li      r9, 0x28
    addi    r3, sp, 0x14c
    lwz     r6, 0x14(r4)
    li      r4, 0x0
    li      r5, 0x0
    lwzx    r8, r6, r25
    li      r6, 0x0
    li      r7, 0x0
    lwz     r30, 0x58(r8)
    lwz     r0, 0x1c(r30)
    add     r0, r30, r0
    stw     r0, 0x2c(r31)
    lhz     r0, 0x2(r30)
    stw     r0, 0x15c(sp)
    lhz     r0, 0x4(r30)
    stw     r0, 0x160(sp)
    lwz     r0, 0x15c(sp)
    lwz     r8, 0x160(sp)
    stw     r0, 0x24(r31)
    stw     r8, 0x28(r31)
    stw     r9, 0x30(r31)
    bl      set__7JUTRectFiiii
    lwz     r6, 0x15c(sp)
    addi    r3, sp, 0x14c
    lwz     r7, 0x160(sp)
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r27, 0x0
    addi    r4, sp, 0x14c
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x80
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8029c064
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14c
    addi    r5, r28, 0x258
    bl      __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
branch_0x8029c064:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8029c118
    lhz     r0, 0x2(r30)
    addi    r4, r28, 0x168
    lhz     r3, 0x4(r30)
    stw     r0, 0x19c(sp)
    stw     r3, 0x194(sp)
    stw     r23, 0x198(sp)
    stw     r23, 0x190(sp)
    lfd     f1, 0x198(sp)
    lfd     f0, 0x190(sp)
    stw     r31, 0xac(sp)
    fsubs   f26, f1, f28
    fsubs   f27, f0, f28
    lwz     r3, 0xac(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r30, 0xac(sp)
    stw     r15, 0x0(r30)
    addi    r3, r30, 0x10
    lfs     f1, -0x5a0(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8029ba58
    li      r0, 0x0
    lwz     r4, 0x18c(sp)
    sth     r0, 0x1c(r30)
    stw     r14, 0x20(r31)
    stw     r4, 0x20(r31)
    stw     r22, 0x0(r31)
    stw     r19, 0x20(r31)
    sth     r0, 0x24(r31)
    stfs    f29, 0x28(r31)
    stfs    f30, 0x2c(r31)
    stw     r21, 0x0(r31)
    stw     r20, 0x20(r31)
    stfs    f31, 0x30(r31)
    stfs    f31, 0x34(r31)
    stfs    f26, 0x38(r31)
    stfs    f27, 0x3c(r31)
branch_0x8029c118:
    addi    r4, r31, 0x0
    addi    r3, r29, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, 0x184(sp)
    mr      r3, r29
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    slwi    r0, r26, 16
    lwz     r4, 0x188(sp)
    oris    r5, r0, 0x200
    addi    r3, r29, 0x0
    ori     r5, r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r26, r26, 0x1
    addi    r25, r25, 0x4
branch_0x8029c168:
    lwz     r3, gpPollution(r13)
    lwz     r0, 0x10(r3)
    cmpw    r26, r0
    blt+    branch_0x8029bf2c
branch_0x8029c178:
    lmw     r14, 0x1a0(sp)
    lwz     r0, 0x21c(sp)
    lfd     f31, 0x210(sp)
    lfd     f30, 0x208(sp)
    mtlr    r0
    lfd     f29, 0x200(sp)
    lfd     f28, 0x1f8(sp)
    lfd     f27, 0x1f0(sp)
    lfd     f26, 0x1e8(sp)
    addi    sp, sp, 0x218
    blr

