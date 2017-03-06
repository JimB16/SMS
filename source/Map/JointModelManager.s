
.globl __dt__18TJointModelManagerFv
__dt__18TJointModelManagerFv: # 0x80188408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x30(sp)
    mr.     r28, r3
    beq-    branch_0x801884c0
    lis     r3, 0x803c
    addi    r3, r3, 0x1608
    addic.  r0, r28, 0x20
    stw     r3, 0x0(r28)
    beq-    branch_0x80188490
    addic.  r0, r28, 0x3c
    beq-    branch_0x80188490
    addi    r30, r28, 0x3c
    addi    r3, sp, 0x28
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iteratorFPQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__6TNode_
    lwz     r0, 0x28(sp)
    addi    r31, sp, 0x24
    addi    r3, sp, 0x20
    stw     r0, 0x24(sp)
    lwz     r4, 0x44(r28)
    bl      __ct__Q37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iteratorFPQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__6TNode_
    lwz     r0, 0x20(sp)
    addi    r5, sp, 0x1c
    addi    r4, r30, 0x0
    stw     r0, 0x1c(sp)
    addi    r6, r31, 0x0
    addi    r3, sp, 0x18
    bl      erase__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__FQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iteratorQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iterator
branch_0x80188490:
    cmplwi  r28, 0x0
    beq-    branch_0x801884b0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801884b0:
    extsh.  r0, r29
    ble-    branch_0x801884c0
    mr      r3, r28
    bl      __dl__FPv
branch_0x801884c0:
    lwz     r0, 0x44(sp)
    mr      r3, r28
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl erase__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__FQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iteratorQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iterator
erase__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__FQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iteratorQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iterator: # 0x801884e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r27, 0x54(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    b       branch_0x80188548

branch_0x80188508:
    lwz     r0, 0x18(sp)
    stw     r0, 0x44(sp)
    lwz     r3, 0x44(sp)
    lwz     r27, 0x0(r3)
    lwz     r4, 0x4(r3)
    stw     r27, 0x0(r4)
    lwz     r4, 0x44(sp)
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r27)
    bl      __dl__FPv
    lwz     r3, 0x4(r29)
    subi    r0, r3, 0x1
    stw     r0, 0x4(r29)
    stw     r27, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x0(r30)
branch_0x80188548:
    lwz     r0, 0x0(r31)
    stw     r0, 0x38(sp)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x38(sp)
    stw     r3, 0x18(sp)
    lwz     r3, 0x18(sp)
    stw     r3, 0x34(sp)
    lwz     r3, 0x34(sp)
    cmplw   r3, r0
    bne+    branch_0x80188508
    lwz     r0, 0x0(r30)
    stw     r0, 0x0(r28)
    lmw     r27, 0x54(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __ct__Q37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iteratorFPQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__6TNode_
__ct__Q37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iteratorFPQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__6TNode_: # 0x8018858c
    stw     r4, 0x0(r3)
    blr


.globl newJointModel__18TJointModelManagerCFi
newJointModel__18TJointModelManagerCFi: # 0x80188594
    mflr    r0
    li      r3, 0x30
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801885bc
    mr      r3, r31
    bl      __ct__11TJointModelFv
branch_0x801885bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__18TJointModelManagerFPCc
__ct__18TJointModelManagerFPCc: # 0x801885d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803c
    sth     r4, 0xc(r31)
    addi    r0, r3, 0x1608
    addi    r3, r31, 0x20
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x18(r31)
    stw     r4, 0x1c(r31)
    bl      __ct__13MActorAnmDataFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl erase__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__FQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iterator
erase__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__FQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iterator: # 0x80188658
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


.globl initJointModel__18TJointModelManagerFPCcPPCc
initJointModel__18TJointModelManagerFPCcPPCc: # 0x801886c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8018878c
    stw     r4, 0x1c(r28)
    addi    r3, r28, 0x20
    li      r5, 0x0
    lwz     r4, 0x1c(r28)
    bl      init__13MActorAnmDataFPCcPPCc
    lwz     r0, 0x10(r28)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x14(r28)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80188780

branch_0x80188724:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x14(r28)
    clrlwi  r0, r30, 16
    addi    r4, r28, 0x0
    stwx    r3, r5, r31
    addi    r6, r28, 0x20
    lwz     r3, 0x14(r28)
    lwzx    r3, r3, r31
    stw     r0, 0x4(r3)
    lwz     r3, 0x14(r28)
    lwzx    r5, r29, r31
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80188780:
    lwz     r0, 0x10(r28)
    cmpw    r30, r0
    blt+    branch_0x80188724
branch_0x8018878c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl perform__18TJointModelManagerFUlPQ26JDrama9TGraphics
perform__18TJointModelManagerFUlPQ26JDrama9TGraphics: # 0x801887ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x801887fc

branch_0x801887d4:
    lwz     r3, 0x14(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801887fc:
    lwz     r0, 0x10(r27)
    cmpw    r30, r0
    blt+    branch_0x801887d4
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __sinit_JointModelManager_cpp
__sinit_JointModelManager_cpp: # 0x8018881c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x78b0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80188864
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80188864:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80188894
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80188894:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801888c4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801888c4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801888f4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801888f4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80188924
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80188924:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80188954
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80188954:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80188984
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80188984:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801889b4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801889b4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801889e4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801889e4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80188a14
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80188a14:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80188a44
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80188a44:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80188a74
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80188a74:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80188aa4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80188aa4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80188ad4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80188ad4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80188b04
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80188b04:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

