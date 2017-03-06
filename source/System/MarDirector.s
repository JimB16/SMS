
.globl registerEventWatcher__12TMarDirectorFP13TEventWatcher
registerEventWatcher__12TMarDirectorFP13TEventWatcher: # 0x80296cd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r4, 0x3c(sp)
    lwz     r4, 0x80(r3)
    addi    r3, sp, 0x20
    addi    r31, r4, 0x10
    addi    r4, r31, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x20(sp)
    addi    r4, sp, 0x1c
    addi    r3, sp, 0x38
    stw     r0, 0x1c(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x38(sp)
    addi    r5, sp, 0x2c
    addi    r4, r31, 0x0
    stw     r0, 0x34(sp)
    addi    r3, sp, 0x28
    addi    r6, sp, 0x3c
    lwz     r0, 0x34(sp)
    stw     r0, 0x2c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x28(sp)
    addi    r3, sp, 0x30
    addi    r4, sp, 0x24
    stw     r0, 0x24(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setup__12TMarDirectorFPQ26JDrama8TDisplayPP13TMarioGamePadUcUc
setup__12TMarDirectorFPQ26JDrama8TDisplayPP13TMarioGamePadUcUc: # 0x80296d60
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    li      r9, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r4, 0xc0(r3)
    lis     r4, 0x8040
    lis     r3, 0x8029
    stw     r5, 0x18(r8)
    subi    r31, r4, 0x3418
    addi    r4, r3, 0x6dd4
    stb     r6, 0x7c(r8)
    mr      r3, r31
    addi    r5, r8, 0x0
    stb     r7, 0x7d(r8)
    lis     r7, 0x1
    li      r8, 0x11
    lwz     r6, -0x6040(r13)
    addis   r6, r6, 0x1
    bl      OSCreateThread
    mr      r3, r31
    bl      OSResumeThread
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setupThreadFunc__12TMarDirectorFPv
setupThreadFunc__12TMarDirectorFPv: # 0x80296dd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadResource__12TMarDirectorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__12TMarDirectorFv
__ct__12TMarDirectorFv: # 0x80296df4
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, 0x2818
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r28, 0x8(sp)
    addi    r3, r31, 0xc
    stw     r0, 0x0(r28)
    stw     r3, 0x4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r28)
    lis     r3, 0x803e
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0xc(r28)
    addi    r0, r3, 0x4748
    lis     r3, 0x803e
    stw     r0, 0xc(r28)
    addi    r3, r3, 0x1d50
    stw     r3, 0x0(r28)
    addi    r0, r3, 0x20
    lis     r3, 0x803e
    stw     r0, 0xc(r28)
    subi    r4, r3, 0xf38
    li      r5, 0x0
    stw     r5, 0x10(r28)
    addi    r0, r4, 0x20
    li      r3, 0x1c
    stw     r5, 0x14(r28)
    stw     r4, 0x0(r28)
    stw     r0, 0xc(r28)
    stw     r5, 0x18(r28)
    stw     r5, 0x1c(r28)
    stw     r5, 0x20(r28)
    stw     r5, 0x24(r28)
    stw     r5, 0x28(r28)
    stw     r5, 0x2c(r28)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80296ef8
    stw     r28, 0x1c(sp)
    addi    r4, r31, 0x18
    stw     r28, 0x48(sp)
    lwz     r3, 0x1c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x1c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r29, 0x48(sp)
    addi    r3, r29, 0x10
    bl      Initialize___Q27JGadget19TSingleNodeLinkListFv
    lis     r3, 0x803e
    subi    r0, r3, 0xd38
    stw     r0, 0x0(r29)
branch_0x80296ef8:
    lwz     r4, 0x8(sp)
    li      r3, 0x1c
    stw     r28, 0x30(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80296f58
    stw     r28, 0x18(sp)
    addi    r4, r31, 0x18
    stw     r28, 0x44(sp)
    lwz     r3, 0x18(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x18(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r29, 0x44(sp)
    addi    r3, r29, 0x10
    bl      Initialize___Q27JGadget19TSingleNodeLinkListFv
    lis     r3, 0x803e
    subi    r0, r3, 0xd38
    stw     r0, 0x0(r29)
branch_0x80296f58:
    lwz     r4, 0x8(sp)
    li      r3, 0x1c
    stw     r28, 0x34(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80296fb8
    stw     r28, 0x14(sp)
    addi    r4, r31, 0x18
    stw     r28, 0x40(sp)
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x14(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r29, 0x40(sp)
    addi    r3, r29, 0x10
    bl      Initialize___Q27JGadget19TSingleNodeLinkListFv
    lis     r3, 0x803e
    subi    r0, r3, 0xd38
    stw     r0, 0x0(r29)
branch_0x80296fb8:
    lwz     r4, 0x8(sp)
    li      r3, 0x1c
    stw     r28, 0x38(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80297018
    stw     r28, 0x10(sp)
    addi    r4, r31, 0x18
    stw     r28, 0x3c(sp)
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r29, 0x3c(sp)
    addi    r3, r29, 0x10
    bl      Initialize___Q27JGadget19TSingleNodeLinkListFv
    lis     r3, 0x803e
    subi    r0, r3, 0xd38
    stw     r0, 0x0(r29)
branch_0x80297018:
    lwz     r4, 0x8(sp)
    li      r3, 0x1c
    stw     r28, 0x3c(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80297078
    stw     r28, 0xc(sp)
    addi    r4, r31, 0x18
    stw     r28, 0x38(sp)
    lwz     r3, 0xc(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0xc(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r29, 0x38(sp)
    addi    r3, r29, 0x10
    bl      Initialize___Q27JGadget19TSingleNodeLinkListFv
    lis     r3, 0x803e
    subi    r0, r3, 0xd38
    stw     r0, 0x0(r29)
branch_0x80297078:
    lwz     r29, 0x8(sp)
    li      r30, 0x0
    addi    r4, sp, 0x34
    stw     r28, 0x40(r29)
    addi    r28, r29, 0x88
    addi    r3, r28, 0x0
    stw     r30, 0x44(r29)
    stw     r30, 0x48(r29)
    sth     r30, 0x4c(r29)
    sth     r30, 0x4e(r29)
    sth     r30, 0x50(r29)
    stw     r30, 0x54(r29)
    stw     r30, 0x68(r29)
    lfs     f0, -0x608(rtoc)
    stfs    f0, 0x6c(r29)
    stw     r30, 0x80(r29)
    bl      __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    stw     r30, 0xa0(r29)
    lis     r3, 0x8029
    addi    r4, r3, 0x7170
    stw     r30, 0xb8(r29)
    addi    r3, r29, 0x12c
    li      r5, 0x0
    stw     r30, 0xbc(r29)
    li      r6, 0x24
    li      r7, 0x8
    stw     r30, 0xcc(r29)
    stw     r30, 0xc8(r29)
    stw     r30, 0xd4(r29)
    stw     r30, 0xd8(r29)
    stw     r30, 0xdc(r29)
    sth     r30, 0x128(r29)
    bl      __construct_array
    stb     r30, 0x24c(r29)
    addi    r3, r28, 0x0
    li      r4, 0x64
    stb     r30, 0x24d(r29)
    stw     r30, 0x250(r29)
    stw     r30, 0x25c(r29)
    stb     r30, 0x260(r29)
    stw     r29, -0x6048(r13)
    stw     r30, 0x58(r29)
    stw     r30, 0x5c(r29)
    stb     r30, 0x64(r29)
    bl      reserve__Q27JGadget20TVector_pointer_voidFUl
    mr      r3, r29
    bl      initLoadParticle__12TMarDirectorFv
    stb     r30, 0x126(r29)
    addi    r3, r29, 0xe8
    addi    r4, r31, 0x24
    stb     r30, 0x125(r29)
    stb     r30, 0x124(r29)
    bl      OSInitStopwatch
    lwz     r0, 0x64(sp)
    mr      r3, r29
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl __ct__Q212TMarDirector9TDemoInfoFv
__ct__Q212TMarDirector9TDemoInfoFv: # 0x80297170
    li      r0, 0x0
    sth     r0, 0x20(r3)
    blr


.globl Initialize___Q27JGadget19TSingleNodeLinkListFv
Initialize___Q27JGadget19TSingleNodeLinkListFv: # 0x8029717c
    li      r4, 0x0
    stw     r4, 0x0(r3)
    addi    r0, r3, 0x4
    stw     r4, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl __sinit_MarDirector_cpp
__sinit_MarDirector_cpp: # 0x80297194
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x3868
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802971dc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802971dc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8029720c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8029720c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8029723c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8029723c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8029726c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8029726c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8029729c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8029729c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802972cc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802972cc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802972fc
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802972fc:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8029732c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8029732c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8029735c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8029735c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8029738c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8029738c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802973bc
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802973bc:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802973ec
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802973ec:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8029741c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8029741c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8029744c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8029744c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8029747c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8029747c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

