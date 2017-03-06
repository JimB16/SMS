
.globl loadSuper__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FR20JSUMemoryInputStream
loadSuper__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FR20JSUMemoryInputStream: # 0x802fa76c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfterSuper__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_Fv
loadAfterSuper__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_Fv: # 0x802fa78c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl searchF__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_FUsPCc
searchF__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_FUsPCc: # 0x802fa7ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x7c(sp)
    addi    r29, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802fa7e0
    b       branch_0x802fa878

branch_0x802fa7e0:
    lwz     r4, 0x14(r29)
    addi    r3, sp, 0x54
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x54(sp)
    addi    r29, r29, 0x14
    stw     r0, 0x50(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x70(sp)
    b       branch_0x802fa840

branch_0x802fa804:
    lwz     r3, 0x70(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802fa834
    b       branch_0x802fa878

branch_0x802fa834:
    lwz     r3, 0x70(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
branch_0x802fa840:
    stw     r29, 0x4c(sp)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x4c(sp)
    stw     r0, 0x58(sp)
    stw     r3, 0x48(sp)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x5c(sp)
    cmplw   r3, r0
    bne+    branch_0x802fa804
    li      r3, 0x0
branch_0x802fa878:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl loadAfter__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_Fv
loadAfter__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_Fv: # 0x802fa894
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r4, 0x14(r31)
    addi    r3, sp, 0x4c
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r31, r31, 0x14
    stw     r0, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x68(sp)
    b       branch_0x802fa8f8

branch_0x802fa8d0:
    lwz     r3, 0x68(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
branch_0x802fa8f8:
    stw     r31, 0x44(sp)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x50(sp)
    stw     r3, 0x40(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x58(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x54(sp)
    cmplw   r3, r0
    bne+    branch_0x802fa8d0
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl load__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x802fa940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r22, 0x70(sp)
    addi    r22, r3, 0x0
    addi    r26, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r26, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r6, 0x803b
    lwz     r28, 0x50(sp)
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r29, r22, 0xc
    addi    r27, sp, 0x3c
    addi    r30, sp, 0x58
    subi    r31, r6, 0xf0c
    addi    r23, r5, 0x184
    addi    r24, r4, 0x160
    addi    r25, r3, 0x1c8
    li      r22, 0x0
    b       branch_0x802faa60

branch_0x802fa9a4:
    stw     r30, 0x4c(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x4c(sp)
    li      r5, 0x0
    stw     r31, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r23, 0x0(r3)
    stw     r24, 0x0(r3)
    stw     r25, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r26, 0x0
    addi    r4, r30, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    stw     r3, 0x54(sp)
    lwz     r0, 0x54(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802faa48
    addi    r3, sp, 0x2c
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x48
    addi    r4, sp, 0x28
    stw     r0, 0x28(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x48(sp)
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    stw     r0, 0x44(sp)
    addi    r3, sp, 0x38
    addi    r6, sp, 0x54
    lwz     r0, 0x44(sp)
    stw     r0, 0x3c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x54(sp)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802faa48:
    stw     r25, 0x58(sp)
    addi    r3, sp, 0x58
    li      r4, 0x0
    stw     r24, 0x58(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
branch_0x802faa60:
    cmpw    r22, r28
    blt+    branch_0x802fa9a4
    lmw     r22, 0x70(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl perform__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FUlPQ26JDrama9TGraphics
perform__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FUlPQ26JDrama9TGraphics: # 0x802faa7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x7c(sp)
    addi    r29, r4, 0x0
    lwz     r4, 0x18(r3)
    addi    r3, sp, 0x54
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x54(sp)
    addi    r31, r31, 0x18
    stw     r0, 0x50(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x70(sp)
    b       branch_0x802faae8

branch_0x802faac4:
    lwz     r3, 0x70(sp)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x70(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
branch_0x802faae8:
    stw     r31, 0x4c(sp)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x4c(sp)
    stw     r0, 0x58(sp)
    stw     r3, 0x48(sp)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x5c(sp)
    cmplw   r3, r0
    bne+    branch_0x802faac4
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl searchF__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FUsPCc
searchF__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FUsPCc: # 0x802fab38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x7c(sp)
    addi    r29, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802fab6c
    b       branch_0x802fac04

branch_0x802fab6c:
    lwz     r4, 0x18(r29)
    addi    r3, sp, 0x54
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x54(sp)
    addi    r29, r29, 0x18
    stw     r0, 0x50(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x70(sp)
    b       branch_0x802fabcc

branch_0x802fab90:
    lwz     r3, 0x70(sp)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802fabc0
    b       branch_0x802fac04

branch_0x802fabc0:
    lwz     r3, 0x70(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
branch_0x802fabcc:
    stw     r29, 0x4c(sp)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x4c(sp)
    stw     r0, 0x58(sp)
    stw     r3, 0x48(sp)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x5c(sp)
    cmplw   r3, r0
    bne+    branch_0x802fab90
    li      r3, 0x0
branch_0x802fac04:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl loadAfter__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_Fv
loadAfter__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_Fv: # 0x802fac20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x18(r31)
    addi    r3, sp, 0x4c
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r31, r31, 0x18
    stw     r0, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x68(sp)
    b       branch_0x802fac90

branch_0x802fac68:
    lwz     r3, 0x68(sp)
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
branch_0x802fac90:
    stw     r31, 0x44(sp)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x50(sp)
    stw     r3, 0x40(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x58(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x54(sp)
    cmplw   r3, r0
    bne+    branch_0x802fac68
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl load__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FR20JSUMemoryInputStream
load__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FR20JSUMemoryInputStream: # 0x802facd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r22, 0x70(sp)
    mr      r22, r3
    mr      r26, r4
    lwz     r12, 0x0(r22)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r3, r26, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r6, 0x803b
    lwz     r28, 0x50(sp)
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r29, r22, 0x10
    addi    r27, sp, 0x3c
    addi    r30, sp, 0x58
    subi    r31, r6, 0xf0c
    addi    r23, r5, 0x184
    addi    r24, r4, 0x160
    addi    r25, r3, 0x1c8
    li      r22, 0x0
    b       branch_0x802fae04

branch_0x802fad48:
    stw     r30, 0x4c(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x4c(sp)
    li      r5, 0x0
    stw     r31, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r23, 0x0(r3)
    stw     r24, 0x0(r3)
    stw     r25, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r26, 0x0
    addi    r4, r30, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    stw     r3, 0x54(sp)
    lwz     r0, 0x54(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802fadec
    addi    r3, sp, 0x2c
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x48
    addi    r4, sp, 0x28
    stw     r0, 0x28(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x48(sp)
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    stw     r0, 0x44(sp)
    addi    r3, sp, 0x38
    addi    r6, sp, 0x54
    lwz     r0, 0x44(sp)
    stw     r0, 0x3c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x54(sp)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802fadec:
    stw     r25, 0x58(sp)
    addi    r3, sp, 0x58
    li      r4, 0x0
    stw     r24, 0x58(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
branch_0x802fae04:
    cmpw    r22, r28
    blt+    branch_0x802fad48
    lmw     r22, 0x70(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl load__Q26JDrama11TNameRefGenFR20JSUMemoryInputStream
load__Q26JDrama11TNameRefGenFR20JSUMemoryInputStream: # 0x802fae20
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    subi    r0, r5, 0xf0c
    lis     r7, 0x803e
    stwu    sp, -0x40(sp)
    lis     r6, 0x803e
    lis     r5, 0x803e
    stw     r31, 0x3c(sp)
    addi    r31, sp, 0x18
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    stw     r31, 0x14(sp)
    lwz     r8, 0x14(sp)
    stw     r0, 0x0(r8)
    li      r0, 0x0
    addi    r3, r8, 0x0
    stb     r0, 0x4(r8)
    addi    r0, r7, 0x184
    stw     r0, 0x0(r8)
    addi    r0, r6, 0x160
    stw     r0, 0x0(r8)
    addi    r0, r5, 0x1c8
    li      r5, 0x0
    stw     r0, 0x0(r8)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    cmplwi  r3, 0x0
    stw     r3, 0x4(r29)
    beq-    branch_0x802faec4
    lwz     r3, 0x4(r29)
    mr      r4, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802faec4:
    lis     r3, 0x803e
    lwz     r31, 0x4(r29)
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x18(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x18(sp)
    addi    r3, sp, 0x18
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    lwz     r0, 0x44(sp)
    mr      r3, r31
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl getNameRef__Q26JDrama11TNameRefGenCFPCc
getNameRef__Q26JDrama11TNameRefGenCFPCc: # 0x802faf0c
    mflr    r0
    lis     r3, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    subi    r31, r3, 0x5d48
    stw     r30, 0x70(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fafa4
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802faf9c
    stw     r30, 0x34(sp)
    addi    r4, r31, 0x18
    stw     r30, 0x54(sp)
    lwz     r3, 0x34(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x34(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r31, 0x54(sp)
    addi    r4, sp, 0x30
    addi    r3, r31, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r31)
branch_0x802faf9c:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fafa4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fafe0
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fafd8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x38
    li      r5, 0x2
    bl      __ct__Q26JDrama9TSmJ3DScnFPCcl
branch_0x802fafd8:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fafe0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x44
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb060
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb058
    lfs     f1, 0x410(rtoc)
    mr      r3, r30
    lfs     f2, 0x414(rtoc)
    addi    r4, r31, 0x50
    bl      __ct__Q26JDrama7TCameraFffPCc
    lis     r3, 0x803e
    addi    r3, r3, 0x1b88
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    lfs     f0, 0x418(rtoc)
    stfs    f0, 0x30(r30)
    lfs     f0, 0x41c(rtoc)
    stfs    f0, 0x34(r30)
    lfs     f1, 0x420(rtoc)
    stfs    f1, 0x38(r30)
    fmr     f0, f1
    stfs    f1, 0x3c(r30)
    stfs    f0, 0x40(r30)
    lfs     f0, 0x424(rtoc)
    stfs    f0, 0x44(r30)
branch_0x802fb058:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb060:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x60
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb0c4
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb0bc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6c
    bl      __ct__Q26JDrama6TActorFPCc
    lis     r3, 0x803e
    addi    r3, r3, 0x21b0
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x44(r30)
    stw     r0, 0x48(r30)
    stw     r0, 0x4c(r30)
    stw     r0, 0x50(r30)
    stw     r0, 0x54(r30)
branch_0x802fb0bc:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb0c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x78
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb11c
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb114
    addi    r3, r30, 0x0
    addi    r4, r31, 0x84
    bl      __ct__Q26JDrama8TNameRefFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6028
    lis     r3, 0x803e
    stw     r0, 0x0(r30)
    addi    r0, r3, 0x1d28
    stw     r0, 0x0(r30)
    li      r0, 0x0
    stw     r0, 0xc(r30)
branch_0x802fb114:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb11c:
    addi    r3, r30, 0x0
    addi    r4, rtoc, 0x428
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb20c
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb204
    stw     r30, 0x2c(sp)
    addi    r4, rtoc, 0x430
    stw     r30, 0x48(sp)
    lwz     r3, 0x2c(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r31, 0x2c(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x10
    lfs     f1, 0x420(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_802fb64c
    li      r0, 0x0
    sth     r0, 0x1c(r31)
    lis     r6, 0x803e
    lis     r3, 0x803e
    lwz     r31, 0x48(sp)
    addi    r0, r6, 0x4718
    addi    r5, r3, 0x2054
    lis     r4, 0x803e
    stw     r0, 0x20(r31)
    addi    r0, r4, 0x46b8
    stw     r0, 0x20(r31)
    addi    r4, r5, 0x24
    li      r0, 0x1
    stw     r5, 0x0(r31)
    addi    r3, r31, 0x24
    stw     r4, 0x20(r31)
    stw     r0, 0x64(r31)
    lfs     f2, 0x420(rtoc)
    lfs     f1, 0x438(rtoc)
    fmr     f3, f2
    fmr     f4, f1
    fmr     f5, f2
    fmr     f6, f2
    bl      GXInitLightAttn
    addi    r3, sp, 0x50
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x50(sp)
    addi    r4, sp, 0x28
    addi    r3, r31, 0x24
    stw     r0, 0x28(sp)
    bl      GXInitLightColor
branch_0x802fb204:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb20c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x94
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb260
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb258
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa0
    bl      __ct__Q26JDrama6TLightFPCc
    lis     r3, 0x803e
    addi    r3, r3, 0x1f94
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x68(r30)
branch_0x802fb258:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb260:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb2e0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb2d8
    stw     r30, 0x24(sp)
    addi    r4, r31, 0xb8
    stw     r30, 0x44(sp)
    lwz     r3, 0x24(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x24(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r4, 0x803e
    lwz     r3, 0x44(sp)
    addi    r0, r4, 0x2030
    stw     r0, 0x0(r3)
    li      r0, 0x0
    li      r4, 0x0
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    bl      setLightNum__Q26JDrama9TLightAryFl
branch_0x802fb2d8:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb2e0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb384
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb37c
    stw     r30, 0x20(sp)
    addi    r4, r31, 0xd0
    stw     r30, 0x40(sp)
    lwz     r3, 0x20(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x20(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r4, 0x803e
    lwz     r5, 0x40(sp)
    addi    r0, r4, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x10(r5)
    addi    r0, r3, 0x4590
    lis     r3, 0x803e
    stw     r0, 0x10(r5)
    addi    r3, r3, 0x1f30
    stw     r3, 0x0(r5)
    addi    r0, r3, 0x24
    addi    r3, r5, 0x14
    stw     r0, 0x10(r5)
    li      r4, 0x4c
    li      r5, 0x4c
    li      r6, 0x4c
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
branch_0x802fb37c:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb384:
    addi    r3, r30, 0x0
    addi    r4, rtoc, 0x43c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb404
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb3fc
    stw     r30, 0x1c(sp)
    addi    r4, r31, 0xdc
    stw     r30, 0x3c(sp)
    lwz     r3, 0x1c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x1c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r4, 0x803e
    lwz     r3, 0x3c(sp)
    addi    r0, r4, 0x1f0c
    stw     r0, 0x0(r3)
    li      r0, 0x0
    li      r4, 0x0
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    bl      setAmbNum__Q26JDrama7TAmbAryFl
branch_0x802fb3fc:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb404:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb46c
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb464
    lis     r3, 0x803e
    stw     r30, 0x38(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r30)
    addi    r3, r31, 0xf4
    lwz     r31, 0x38(sp)
    stw     r3, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    addi    r3, r31, 0xc
    addi    r4, sp, 0x18
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803e
    addi    r0, r3, 0x2110
    stw     r0, 0x0(r31)
branch_0x802fb464:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb46c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x108
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb4a0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb498
    mr      r3, r30
    bl      __ct__Q26JDrama11TDrawBufObjFv
branch_0x802fb498:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb4a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x114
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb4e4
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb4dc
    li      r0, 0x0
    sth     r0, 0x68(sp)
    addi    r5, sp, 0x68
    addi    r3, r30, 0x0
    addi    r4, r31, 0x120
    bl      __ct__Q26JDrama11TEfbCtrlTexFPCcQ26JDrama10TFlagT_Us_
branch_0x802fb4dc:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb4e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x130
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fb538
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802fb530
    addi    r3, sp, 0x58
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x280
    li      r7, 0x210
    bl      set__7JUTRectFiiii
    addi    r4, sp, 0x58
    addi    r3, r30, 0x0
    addi    r5, r31, 0x13c
    bl      __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
branch_0x802fb530:
    mr      r3, r30
    b       branch_0x802fb53c

branch_0x802fb538:
    li      r3, 0x0
branch_0x802fb53c:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl __ct__Q26JDrama6TLightFPCc
__ct__Q26JDrama6TLightFPCc: # 0x802fb554
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
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
    li      r8, 0x0
    lis     r3, 0x803e
    sth     r8, 0xc(r31)
    addi    r0, r3, 0x2140
    lis     r6, 0x803e
    stw     r0, 0x0(r31)
    lis     r3, 0x803e
    addi    r5, r3, 0x2054
    lfs     f3, 0x420(rtoc)
    addi    r7, r6, 0x4718
    lis     r4, 0x803e
    stfs    f3, 0x10(r31)
    addi    r6, r4, 0x46b8
    addi    r4, r5, 0x24
    fmr     f2, f3
    stfs    f3, 0x14(r31)
    li      r0, 0x1
    fmr     f5, f3
    stfs    f3, 0x18(r31)
    fmr     f6, f3
    addi    r3, r31, 0x24
    sth     r8, 0x1c(r31)
    stw     r7, 0x20(r31)
    stw     r6, 0x20(r31)
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stw     r0, 0x64(r31)
    lfs     f1, 0x438(rtoc)
    fmr     f4, f1
    bl      GXInitLightAttn
    li      r0, 0xff
    stb     r0, 0x1c(sp)
    addi    r4, sp, 0x18
    addi    r3, r31, 0x24
    stb     r0, 0x1d(sp)
    stb     r0, 0x1e(sp)
    stb     r0, 0x1f(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x18(sp)
    bl      GXInitLightColor
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_802fb64c
set_f___Q29JGeometry8TVec3_f_Ffff_802fb64c: # 0x802fb64c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __ct__Q26JDrama7TCameraFffPCc
__ct__Q26JDrama7TCameraFffPCc: # 0x802fb65c
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f2
    stfd    f30, 0x28(sp)
    fmr     f30, f1
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r7, 0x0
    lis     r3, 0x803e
    sth     r7, 0xc(r31)
    addi    r0, r3, 0x2140
    lis     r6, 0x803e
    stw     r0, 0x0(r31)
    lis     r5, 0x803e
    lis     r3, 0x803e
    lfs     f0, 0x420(rtoc)
    addi    r4, r3, 0x1c64
    addi    r6, r6, 0x4718
    stfs    f0, 0x10(r31)
    addi    r5, r5, 0x45c8
    addi    r0, r4, 0x24
    stfs    f0, 0x14(r31)
    addi    r3, r31, 0x0
    stfs    f0, 0x18(r31)
    sth     r7, 0x1c(r31)
    stw     r6, 0x20(r31)
    stw     r5, 0x20(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    sth     r7, 0x24(r31)
    stfs    f30, 0x28(r31)
    stfs    f31, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x38
    blr


.globl __dt__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_Fv
__dt__Q26JDrama55TNameRefPtrListT_Q26JDrama8TNameRef_Q26JDrama8TNameRef_Fv: # 0x802fb728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fb784
    lis     r3, 0x803e
    addi    r3, r3, 0x2110
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x802fb768
    addi    r3, r30, 0xc
    li      r4, 0x0
    bl      __dt__Q27JGadget18TList_pointer_voidFv
branch_0x802fb768:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x802fb784
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fb784:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

