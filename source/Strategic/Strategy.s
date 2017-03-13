
.globl __dt__9TStrategyFv
__dt__9TStrategyFv: # 0x80223180
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802231d8
    lis     r3, 0x803e
    subi    r0, r3, 0x5be0
    stw     r0, 0x0(r30)
    beq-    branch_0x802231c8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802231c8:
    extsh.  r0, r31
    ble-    branch_0x802231d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802231d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__9TStrategyFUlPQ26JDrama9TGraphics
perform__9TStrategyFUlPQ26JDrama9TGraphics: # 0x802231f4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 30
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x802232b0
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223238
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223238:
    lwz     r3, 0x1c(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223250
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223250:
    lwz     r3, 0x20(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223268
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223268:
    lwz     r3, 0x3c(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223280
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223280:
    lwz     r3, 0x28(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223298
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223298:
    lwz     r3, 0x34(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802232b0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802232b0:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x80223360
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802232d0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802232d0:
    lwz     r3, 0x1c(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802232e8
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x802232e8:
    lwz     r3, 0x20(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223300
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223300:
    lwz     r3, 0x24(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223318
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223318:
    lwz     r3, 0x3c(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223330
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223330:
    lwz     r3, 0x28(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223348
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223348:
    lwz     r3, 0x34(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80223360
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
branch_0x80223360:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl searchF__9TStrategyFUsPCc
searchF__9TStrategyFUsPCc: # 0x8022337c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802233a8
    b       branch_0x802233f8

branch_0x802233a8:
    li      r30, 0x0
    li      r31, 0x0
branch_0x802233b0:
    addi    r0, r31, 0x10
    lwzx    r3, r27, r0
    cmplwi  r3, 0x0
    beq-    branch_0x802233e4
    lwz     r12, 0x0(r3)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802233e4
    b       branch_0x802233f8

branch_0x802233e4:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x10
    addi    r31, r31, 0x4
    blt+    branch_0x802233b0
    li      r3, 0x0
branch_0x802233f8:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl loadAfter__9TStrategyFv
loadAfter__9TStrategyFv: # 0x8022340c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r30, 0x0
    li      r31, 0x0
branch_0x80223434:
    addi    r0, r31, 0x10
    lwzx    r3, r29, r0
    cmplwi  r3, 0x0
    beq-    branch_0x80223454
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x80223454:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x10
    addi    r31, r31, 0x4
    blt+    branch_0x80223434
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl load__9TStrategyFR20JSUMemoryInputStream
load__9TStrategyFR20JSUMemoryInputStream: # 0x80223480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r21, 0x44(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r3, 0x808
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802234b0
    bl      __ct__12TObjHitCheckFv
branch_0x802234b0:
    addi    r3, r29, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r6, 0x803b
    lwz     r30, 0x20(sp)
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r31, sp, 0x24
    subi    r23, r6, 0xf0c
    addi    r25, r5, 0x184
    addi    r26, r4, 0x160
    addi    r27, r3, 0x1c8
    li      r22, 0x0
    b       branch_0x80223578

branch_0x802234f0:
    stw     r31, 0x1c(sp)
    li      r24, 0x0
    li      r4, 0x0
    lwz     r3, 0x1c(sp)
    li      r5, 0x0
    stw     r23, 0x0(r3)
    stb     r24, 0x4(r3)
    stw     r25, 0x0(r3)
    stw     r26, 0x0(r3)
    stw     r27, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    mr.     r21, r3
    beq-    branch_0x80223560
    stw     r21, 0x4c(r28)
    addi    r3, r21, 0x0
    addi    r4, r31, 0x0
    lwz     r12, 0x0(r21)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r24, 0x4c(r28)
    lwz     r0, 0x20(r21)
    slwi    r3, r0, 2
    addi    r0, r3, 0x10
    stwx    r21, r28, r0
branch_0x80223560:
    stw     r27, 0x24(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    stw     r26, 0x24(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r22, r22, 0x1
branch_0x80223578:
    cmpw    r22, r30
    blt+    branch_0x802234f0
    stw     r28, gpStrategy(r13)
    lmw     r21, 0x44(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__9TStrategyFPCc
__ct__9TStrategyFPCc: # 0x80223598
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r31)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r31)
    subi    r0, r3, 0x5be0
    li      r3, 0x0
    stw     r0, 0x0(r31)
    cmpwi   r3, 0x10
    sth     r4, 0x50(r31)
    bge-    branch_0x80223638
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x18(r31)
    stw     r4, 0x1c(r31)
    stw     r4, 0x20(r31)
    stw     r4, 0x24(r31)
    stw     r4, 0x28(r31)
    stw     r4, 0x2c(r31)
    stw     r4, 0x30(r31)
    stw     r4, 0x34(r31)
    stw     r4, 0x38(r31)
    stw     r4, 0x3c(r31)
    stw     r4, 0x40(r31)
    stw     r4, 0x44(r31)
    stw     r4, 0x48(r31)
    stw     r4, 0x4c(r31)
branch_0x80223638:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl loadSuper__12TIdxGroupObjFR20JSUMemoryInputStream
loadSuper__12TIdxGroupObjFR20JSUMemoryInputStream: # 0x80223650
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      loadSuper__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_FR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TIdxGroupObjFv
__dt__12TIdxGroupObjFv: # 0x80223698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80223718
    lis     r3, 0x803e
    subi    r0, r3, 0x5bbc
    stw     r0, 0x0(r30)
    beq-    branch_0x80223708
    lis     r3, 0x803e
    subi    r3, r3, 0x5b90
    addic.  r0, r30, 0x10
    stw     r3, 0x0(r30)
    beq-    branch_0x802236e8
    addi    r3, r30, 0x10
    li      r4, 0x0
    bl      __dt__Q27JGadget18TList_pointer_voidFv
branch_0x802236e8:
    cmplwi  r30, 0x0
    beq-    branch_0x80223708
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80223708:
    extsh.  r0, r31
    ble-    branch_0x80223718
    mr      r3, r30
    bl      __dl__FPv
branch_0x80223718:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv
__dt__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv: # 0x80223734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802237a4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b90
    addic.  r0, r30, 0x10
    stw     r3, 0x0(r30)
    beq-    branch_0x80223774
    addi    r3, r30, 0x10
    li      r4, 0x0
    bl      __dt__Q27JGadget18TList_pointer_voidFv
branch_0x80223774:
    cmplwi  r30, 0x0
    beq-    branch_0x80223794
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80223794:
    extsh.  r0, r31
    ble-    branch_0x802237a4
    mr      r3, r30
    bl      __dl__FPv
branch_0x802237a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

