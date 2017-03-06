
.globl __ct__Q26JDrama9TSmJ3DScnFPCcl
__ct__Q26JDrama9TSmJ3DScnFPCcl: # 0x802fc540
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    addi    r28, r5, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r29, 0x8(sp)
    mr      r3, r4
    stw     r29, 0x1c(sp)
    stw     r0, 0x0(r29)
    stw     r4, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r29)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r29)
    li      r30, 0x0
    addi    r4, sp, 0x14
    sth     r30, 0xc(r29)
    lwz     r31, 0x1c(sp)
    addi    r3, r31, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    lis     r3, 0x803e
    stw     r0, 0x0(r31)
    addi    r0, r3, 0x2250
    stw     r0, 0x0(r29)
    stw     r30, 0x20(r29)
    stw     r28, 0x28(r29)
    lwz     r0, 0x28(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x24(r29)
    li      r29, 0x0
    b       branch_0x802fc614

branch_0x802fc5e4:
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802fc600
    addi    r3, r28, 0x0
    li      r4, 0x400
    bl      __ct__13J3DDrawBufferFUl
branch_0x802fc600:
    lwz     r3, 0x8(sp)
    addi    r29, r29, 0x1
    lwz     r3, 0x24(r3)
    stwx    r28, r3, r30
    addi    r30, r30, 0x4
branch_0x802fc614:
    lwz     r3, 0x8(sp)
    lwz     r0, 0x28(r3)
    cmpw    r29, r0
    blt+    branch_0x802fc5e4
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl perform__Q26JDrama9TSmJ3DScnFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TSmJ3DScnFUlPQ26JDrama9TGraphics: # 0x802fc644
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 30
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r4, 0x0
    addi    r31, r3, 0x0
    addi    r28, r5, 0x0
    beq-    branch_0x802fc678
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    bl      perform__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FUlPQ26JDrama9TGraphics
branch_0x802fc678:
    rlwinm. r0, r27, 0, 28, 28
    beq-    branch_0x802fc744
    lwz     r3, 0x20(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802fc6a4
    lwz     r12, 0x0(r3)
    addi    r5, r28, 0x0
    li      r4, 0x20
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802fc6a4:
    lis     r4, 0x8040
    addi    r30, r4, 0x45dc
    addi    r3, r28, 0xb4
    addi    r4, r30, 0x0
    bl      PSMTXCopy
    mr      r3, r30
    bl      drawInit__6J3DSysFv
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x802fc6e0

branch_0x802fc6cc:
    lwz     r3, 0x24(r31)
    lwzx    r3, r3, r30
    bl      frameInit__13J3DDrawBufferFv
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x802fc6e0:
    lwz     r0, 0x28(r31)
    cmpw    r29, r0
    blt+    branch_0x802fc6cc
    lwz     r4, 0x24(r31)
    lis     r3, 0x8040
    addi    r30, r3, 0x45dc
    lwz     r0, 0x0(r4)
    addi    r3, r31, 0x0
    addi    r5, r28, 0x0
    stw     r0, 0x44(r30)
    ori     r4, r27, 0x204
    lwz     r6, 0x24(r31)
    lwz     r0, 0x4(r6)
    stw     r0, 0x48(r30)
    bl      perform__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FUlPQ26JDrama9TGraphics
    li      r0, 0x3
    stwu    r0, 0x4c(r30)
    lwz     r3, 0x24(r31)
    lwz     r3, 0x0(r3)
    bl      draw__13J3DDrawBufferCFv
    li      r0, 0x4
    stw     r0, 0x0(r30)
    lwz     r3, 0x24(r31)
    lwz     r3, 0x4(r3)
    bl      draw__13J3DDrawBufferCFv
branch_0x802fc744:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl loadSuper__Q26JDrama9TSmJ3DScnFR20JSUMemoryInputStream
loadSuper__Q26JDrama9TSmJ3DScnFR20JSUMemoryInputStream: # 0x802fc758
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1c(sp)
    bl      loadSuper__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FR20JSUMemoryInputStream
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802fc7d4
    stw     r29, 0x10(sp)
    lis     r3, 0x803b
    subi    r4, r3, 0x5b78
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803e
    addi    r0, r3, 0x1ee8
    stw     r0, 0x0(r29)
    li      r0, 0x0
    stw     r0, 0x10(r29)
    stw     r0, 0x14(r29)
branch_0x802fc7d4:
    stw     r29, 0x20(r30)
    mr      r3, r29
    mr      r4, r31
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__Q26JDrama9TSmJ3DScnFv
__dt__Q26JDrama9TSmJ3DScnFv: # 0x802fc80c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fc88c
    lis     r3, 0x803e
    addi    r0, r3, 0x2250
    stw     r0, 0x0(r30)
    beq-    branch_0x802fc87c
    lis     r3, 0x803c
    addi    r3, r3, 0xf5c
    addic.  r0, r30, 0x10
    stw     r3, 0x0(r30)
    beq-    branch_0x802fc85c
    addi    r3, r30, 0x10
    li      r4, 0x0
    bl      __dt__Q27JGadget18TList_pointer_voidFv
branch_0x802fc85c:
    cmplwi  r30, 0x0
    beq-    branch_0x802fc87c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fc87c:
    extsh.  r0, r31
    ble-    branch_0x802fc88c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fc88c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

