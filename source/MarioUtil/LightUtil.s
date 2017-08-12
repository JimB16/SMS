
.globl __dt__22TLightWithDBSetManagerFv
__dt__22TLightWithDBSetManagerFv: # 0x80228144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022819c
    lis     r3, __vvt__22TLightWithDBSetManager@ha
    addi    r0, r3, __vvt__22TLightWithDBSetManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022818c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022818c:
    extsh.  r0, r31
    ble-    branch_0x8022819c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022819c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getLightPos__22TLightWithDBSetManagerCFv
getLightPos__22TLightWithDBSetManagerCFv: # 0x802281b8
    lwz     r3, R13Off_m0x6110(r13)
    blr


.globl makeDrawBuffer__22TLightWithDBSetManagerFv
makeDrawBuffer__22TLightWithDBSetManagerFv: # 0x802281c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
branch_0x802281e4:
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r31
    lbz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80228208
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
branch_0x80228208:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x802281e4
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl addChildGroupObj__22TLightWithDBSetManagerFPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
addChildGroupObj__22TLightWithDBSetManagerFPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_: # 0x80228234
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r21, 0x7c(sp)
    addi    r30, r4, 0x10
    addi    r23, r3, 0x0
    addi    r29, sp, 0x48
    addi    r28, sp, 0x40
    addi    r27, sp, 0x3c
    addi    r26, sp, 0x34
    li      r24, 0x0
    li      r22, 0x0
branch_0x80228264:
    lwz     r3, 0x14(r23)
    lwzx    r25, r3, r22
    lbz     r0, 0x20(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x80228340
    li      r31, 0x0
    addi    r21, r31, 0x0
    b       branch_0x80228334

branch_0x80228284:
    lwz     r5, 0x10(r25)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x64
    lwzx    r5, r5, r21
    lwz     r0, 0x14(r5)
    stw     r0, 0x70(sp)
    bl      end__Q27JGadget34TList_pointer_PQ26JDrama8TViewObj_Fv
    lwz     r0, 0x64(sp)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    stw     r0, 0x60(sp)
    addi    r3, sp, 0x44
    addi    r6, sp, 0x70
    lwz     r0, 0x60(sp)
    stw     r0, 0x48(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x44(sp)
    addi    r4, r28, 0x0
    addi    r3, sp, 0x5c
    stw     r0, 0x40(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r5, 0x10(r25)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x54
    lwzx    r5, r5, r21
    lwz     r0, 0x18(r5)
    stw     r0, 0x6c(sp)
    bl      end__Q27JGadget34TList_pointer_PQ26JDrama8TViewObj_Fv
    lwz     r0, 0x54(sp)
    addi    r4, r30, 0x0
    addi    r5, r27, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x38
    addi    r6, sp, 0x6c
    lwz     r0, 0x50(sp)
    stw     r0, 0x3c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x38(sp)
    addi    r4, r26, 0x0
    addi    r3, sp, 0x4c
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    addi    r31, r31, 0x1
    addi    r21, r21, 0x4
branch_0x80228334:
    lwz     r0, 0x1c(r25)
    cmpw    r31, r0
    blt+    branch_0x80228284
branch_0x80228340:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x4
    addi    r22, r22, 0x4
    blt+    branch_0x80228264
    lmw     r21, 0x7c(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
__ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator: # 0x80228364
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    blr


.globl end__Q27JGadget34TList_pointer_PQ26JDrama8TViewObj_Fv
end__Q27JGadget34TList_pointer_PQ26JDrama8TViewObj_Fv: # 0x80228370
    stwu    sp, -0x20(sp)
    addi    r0, r4, 0x8
    stw     r0, 0x14(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    addi    sp, sp, 0x20
    stw     r0, 0x0(r3)
    blr


.globl perform__22TLightWithDBSetManagerFUlPQ26JDrama9TGraphics
perform__22TLightWithDBSetManagerFUlPQ26JDrama9TGraphics: # 0x80228394
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r27, r4, 0x0
    addi    r26, r3, 0x0
    addi    r28, r5, 0x0
    beq-    branch_0x80228430
    rlwinm. r0, r27, 0, 12, 12
    beq-    branch_0x802283cc
    li      r0, 0x3
    li      r30, 0x4
    b       branch_0x802283e8

branch_0x802283cc:
    rlwinm. r0, r27, 0, 13, 13
    beq-    branch_0x802283e0
    li      r0, 0x2
    li      r30, 0x3
    b       branch_0x802283e8

branch_0x802283e0:
    li      r0, 0x0
    li      r30, 0x2
branch_0x802283e8:
    mr      r29, r0
    slwi    r31, r0, 2
    b       branch_0x80228428

branch_0x802283f4:
    lwz     r3, 0x14(r26)
    lwzx    r3, r3, r31
    lbz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80228420
    lwz     r12, 0x0(r3)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80228420:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x80228428:
    cmpw    r29, r30
    blt+    branch_0x802283f4
branch_0x80228430:
    rlwinm. r0, r27, 0, 21, 21
    beq-    branch_0x8022847c
    li      r29, 0x0
    li      r31, 0x0
branch_0x80228440:
    lwz     r3, 0x14(r26)
    lwzx    r3, r3, r31
    lbz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8022846c
    lwz     r12, 0x0(r3)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x8022846c:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x80228440
branch_0x8022847c:
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl loadAfter__22TLightWithDBSetManagerFv
loadAfter__22TLightWithDBSetManagerFv: # 0x80228490
    mflr    r0
    lis     r4, unk_8039d9b8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, unk_8039d9b8@l
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r5, R13Off_m0x5db8(r13)
    lwz     r30, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    mr      r31, r3
    lwz     r3, 0x10(r3)
    addi    r4, sp, 0x38
    addi    r3, r3, 0x24
    bl      GXGetLightColor
    lwz     r0, 0x38(sp)
    stw     r0, 0x18(r29)
    lwz     r4, 0x10(r31)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x1c(r29)
    stw     r0, 0x20(r29)
    lwz     r0, 0x18(r4)
    stw     r0, 0x24(r29)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__22TLightWithDBSetManagerFPCc
__ct__22TLightWithDBSetManagerFPCc: # 0x80228534
    mflr    r0
    lis     r5, unk_8039d868@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r5, unk_8039d868@l
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r28, 0x70(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r28, 0x8(sp)
    mr      r3, r4
    stw     r0, 0x0(r28)
    stw     r4, 0x4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r28)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r29, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r29, 0x0(r28)
    li      r30, 0x0
    lis     r3, __vvt__22TLightWithDBSetManager@ha
    sth     r30, 0xc(r28)
    addi    r3, r3, __vvt__22TLightWithDBSetManager@l
    li      r0, 0x1
    stw     r3, 0x0(r28)
    li      r3, 0x10
    stw     r30, 0x10(r28)
    stw     r30, 0x14(r28)
    stb     r30, 0x54(r28)
    stb     r0, 0x55(r28)
    bl      __nwa__FUl
    stw     r3, 0x14(r28)
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80228620
    stw     r28, 0x1c(sp)
    addi    r4, r31, 0x15c
    lwz     r3, 0x1c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x1c(sp)
    li      r4, 0x0
    stw     r29, 0x0(r3)
    addi    r3, r3, 0xc
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r28)
    lis     r3, __vvt__21TPlayerLightWithDBSet@ha
    li      r4, 0x2
    stw     r30, 0x10(r28)
    addi    r0, r3, __vvt__21TPlayerLightWithDBSet@l
    stw     r30, 0x14(r28)
    stw     r30, 0x18(r28)
    stw     r4, 0x1c(r28)
    stb     r30, 0x20(r28)
    stw     r0, 0x0(r28)
branch_0x80228620:
    lwz     r4, 0x8(sp)
    li      r3, 0x24
    lwz     r4, 0x14(r4)
    stw     r28, 0x0(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8022869c
    stw     r28, 0x18(sp)
    addi    r4, r31, 0x170
    lwz     r3, 0x18(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x18(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r28)
    li      r5, 0x0
    lis     r3, __vvt__21TObjectLightWithDBSet@ha
    stw     r5, 0x10(r28)
    li      r4, 0x2
    addi    r0, r3, __vvt__21TObjectLightWithDBSet@l
    stw     r5, 0x14(r28)
    stw     r5, 0x18(r28)
    stw     r4, 0x1c(r28)
    stb     r5, 0x20(r28)
    stw     r0, 0x0(r28)
branch_0x8022869c:
    lwz     r4, 0x8(sp)
    li      r3, 0x24
    lwz     r4, 0x14(r4)
    stw     r28, 0x4(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80228718
    stw     r28, 0x14(sp)
    addi    r4, r31, 0x188
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x14(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r28)
    li      r5, 0x0
    lis     r3, __vvt__24TMapObjectLightWithDBSet@ha
    stw     r5, 0x10(r28)
    li      r4, 0x2
    addi    r0, r3, __vvt__24TMapObjectLightWithDBSet@l
    stw     r5, 0x14(r28)
    stw     r5, 0x18(r28)
    stw     r4, 0x1c(r28)
    stb     r5, 0x20(r28)
    stw     r0, 0x0(r28)
branch_0x80228718:
    lwz     r4, 0x8(sp)
    li      r3, 0x24
    lwz     r4, 0x14(r4)
    stw     r28, 0x8(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80228794
    stw     r28, 0x10(sp)
    addi    r4, r31, 0x1a4
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r28)
    li      r5, 0x0
    lis     r3, __vvt__23TIndirectLightWithDBSet@ha
    stw     r5, 0x10(r28)
    li      r4, 0x2
    addi    r0, r3, __vvt__23TIndirectLightWithDBSet@l
    stw     r5, 0x14(r28)
    stw     r5, 0x18(r28)
    stw     r4, 0x1c(r28)
    stb     r5, 0x20(r28)
    stw     r0, 0x0(r28)
branch_0x80228794:
    lwz     r4, 0x8(sp)
    lwz     r3, 0x14(r4)
    stw     r28, 0xc(r3)
    stw     r4, R13Off_m0x610c(r13)
    lfs     f0, -0x17a4(r2)
    stfs    f0, 0x48(r4)
    stfs    f0, 0x4c(r4)
    stfs    f0, 0x50(r4)
    lfs     f0, -0x17a8(r2)
    stfs    f0, 0x28(r4)
    lfs     f0, -0x1798(r2)
    stfs    f0, 0x2c(r4)
    lfs     f0, -0x1794(r2)
    stfs    f0, 0x30(r4)
    lfs     f0, -0x17a0(r2)
    stfs    f0, 0x34(r4)
    lfs     f0, -0x1790(r2)
    stfs    f0, 0x38(r4)
    lfs     f0, -0x178c(r2)
    stfs    f0, 0x3c(r4)
    lfs     f0, -0x1788(r2)
    stfs    f0, 0x40(r4)
    lfs     f0, -0x1784(r2)
    stfs    f0, 0x44(r4)
    lwz     r3, 0x144(r31)
    lwz     r0, 0x148(r31)
    stw     r3, 0x30(sp)
    mr      r3, r4
    stw     r0, 0x34(sp)
    lwz     r0, 0x14c(r31)
    stw     r0, 0x38(sp)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x30(r4)
    stfs    f0, 0x40(sp)
    lfs     f0, 0x34(r4)
    stfs    f0, 0x44(sp)
    lfs     f3, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f2, f3, f3
    lfs     f4, 0x30(sp)
    fmuls   f1, f0, f0
    lfs     f5, 0x34(sp)
    fsubs   f0, f3, f0
    fsubs   f2, f2, f1
    fmuls   f1, f4, f0
    fsubs   f0, f5, f4
    fmuls   f2, f4, f2
    fmuls   f1, f5, f1
    fmuls   f2, f5, f2
    stfs    f2, 0x48(sp)
    stfs    f1, 0x50(sp)
    stfs    f0, 0x58(sp)
    lfs     f3, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f2, f3, f3
    lfs     f4, 0x34(sp)
    fmuls   f1, f0, f0
    lfs     f5, 0x38(sp)
    fsubs   f0, f3, f0
    fsubs   f2, f2, f1
    fmuls   f1, f4, f0
    fsubs   f0, f5, f4
    fmuls   f2, f4, f2
    fmuls   f1, f5, f1
    fmuls   f2, f5, f2
    stfs    f2, 0x4c(sp)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x5c(sp)
    lfs     f2, 0x5c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f2, f2, f1
    lfs     f4, 0x54(sp)
    fmuls   f0, f0, f1
    lfs     f3, 0x58(sp)
    lfs     f1, 0x48(sp)
    fmsubs  f2, f3, f4, f2
    fmsubs  f0, f1, f4, f0
    fdivs   f0, f2, f0
    stfs    f0, 0x40(r4)
    lfs     f3, 0x48(sp)
    lfs     f2, 0x40(r4)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x50(sp)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x3c(r4)
    lfs     f3, 0x3c(sp)
    lfs     f0, 0x3c(r4)
    fmuls   f1, f3, f3
    lfs     f2, 0x40(r4)
    fmuls   f0, f3, f0
    lfs     f3, 0x30(sp)
    fmadds  f0, f2, f1, f0
    fsubs   f0, f3, f0
    stfs    f0, 0x38(r4)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl __dt__15TLightWithDBSetFv
__dt__15TLightWithDBSetFv: # 0x80228938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80228990
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80228980
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80228980:
    extsh.  r0, r31
    ble-    branch_0x80228990
    mr      r3, r30
    bl      __dl__FPv
branch_0x80228990:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl makeDrawBuffer__23TIndirectLightWithDBSetFv
makeDrawBuffer__23TIndirectLightWithDBSetFv: # 0x802289ac
    mflr    r0
    lis     r4, unk_8039d868@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r25, 0x7c(sp)
    li      r30, 0x0
    addi    r27, r3, 0x0
    addi    r26, r30, 0x0
    addi    r31, r4, unk_8039d868@l
    b       branch_0x802289fc

branch_0x802289d4:
    lwz     r4, 0x10(r3)
    addi    r0, r26, 0x4
    addi    r3, r31, 0xe0
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802289f4
    b       branch_0x80228a10

branch_0x802289f4:
    addi    r30, r30, 0x1
    addi    r26, r26, 0x6c
branch_0x802289fc:
    lwz     r3, R13Off_m0x6114(r13)
    lwz     r0, 0x14(r3)
    cmpw    r30, r0
    blt+    branch_0x802289d4
    li      r30, -0x1
branch_0x80228a10:
    li      r29, 0x0
    li      r26, 0x0
    b       branch_0x80228a44

branch_0x80228a1c:
    lwz     r4, 0x10(r3)
    addi    r0, r26, 0x4
    addi    r3, r31, 0xf8
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80228a3c
    b       branch_0x80228a58

branch_0x80228a3c:
    addi    r29, r29, 0x1
    addi    r26, r26, 0x18
branch_0x80228a44:
    lwz     r3, R13Off_m0x6118(r13)
    lwz     r0, 0x14(r3)
    cmpw    r29, r0
    blt+    branch_0x80228a1c
    li      r29, -0x1
branch_0x80228a58:
    lwz     r0, 0x1c(r27)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x10(r27)
    li      r28, 0x0
    li      r26, 0x0
    b       branch_0x80228b20

branch_0x80228a74:
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80228a9c
    addi    r3, r13, R13Off_m0x7710
    lwzx    r6, r3, r26
    addi    r3, r25, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x100
    bl      __ct__16TLightDrawBufferFiUlPCc
branch_0x80228a9c:
    lwz     r4, 0x10(r27)
    li      r3, 0x74
    stwx    r25, r4, r26
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80228ac0
    addi    r3, r25, 0x0
    addi    r4, r31, 0x1c4
    bl      __ct__12TLightCommonFPCc
branch_0x80228ac0:
    lwz     r3, 0x10(r27)
    mr      r4, r25
    lwzx    r3, r3, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    stw     r29, 0x20(r3)
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    stw     r30, 0x24(r3)
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x80228b20:
    lwz     r0, 0x1c(r27)
    cmpw    r28, r0
    blt+    branch_0x80228a74
    lmw     r25, 0x7c(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl setLight__16TLightDrawBufferFP12TLightCommon
setLight__16TLightDrawBufferFP12TLightCommon: # 0x80228b40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stw     r4, 0x10(r3)
    lwz     r3, 0x10(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeDrawBuffer__24TMapObjectLightWithDBSetFv
makeDrawBuffer__24TMapObjectLightWithDBSetFv: # 0x80228b74
    mflr    r0
    lis     r4, unk_8039d868@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r25, 0x7c(sp)
    li      r30, 0x0
    addi    r27, r3, 0x0
    addi    r26, r30, 0x0
    addi    r31, r4, unk_8039d868@l
    b       branch_0x80228bc4

branch_0x80228b9c:
    lwz     r4, 0x10(r3)
    addi    r0, r26, 0x4
    addi    r3, r31, 0x7c
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80228bbc
    b       branch_0x80228bd8

branch_0x80228bbc:
    addi    r30, r30, 0x1
    addi    r26, r26, 0x6c
branch_0x80228bc4:
    lwz     r3, R13Off_m0x6114(r13)
    lwz     r0, 0x14(r3)
    cmpw    r30, r0
    blt+    branch_0x80228b9c
    li      r30, -0x1
branch_0x80228bd8:
    li      r29, 0x0
    li      r26, 0x0
    b       branch_0x80228c0c

branch_0x80228be4:
    lwz     r4, 0x10(r3)
    addi    r0, r26, 0x4
    addi    r3, r31, 0x94
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80228c04
    b       branch_0x80228c20

branch_0x80228c04:
    addi    r29, r29, 0x1
    addi    r26, r26, 0x18
branch_0x80228c0c:
    lwz     r3, R13Off_m0x6118(r13)
    lwz     r0, 0x14(r3)
    cmpw    r29, r0
    blt+    branch_0x80228be4
    li      r29, -0x1
branch_0x80228c20:
    lwz     r0, 0x1c(r27)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x10(r27)
    li      r28, 0x0
    li      r26, 0x0
    b       branch_0x80228ce8

branch_0x80228c3c:
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80228c64
    addi    r3, r13, R13Off_m0x7718
    lwzx    r6, r3, r26
    addi    r3, r25, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x100
    bl      __ct__16TLightDrawBufferFiUlPCc
branch_0x80228c64:
    lwz     r4, 0x10(r27)
    li      r3, 0x74
    stwx    r25, r4, r26
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80228c88
    addi    r3, r25, 0x0
    addi    r4, r31, 0x1c4
    bl      __ct__12TLightCommonFPCc
branch_0x80228c88:
    lwz     r3, 0x10(r27)
    mr      r4, r25
    lwzx    r3, r3, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    stw     r29, 0x20(r3)
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    stw     r30, 0x24(r3)
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x80228ce8:
    lwz     r0, 0x1c(r27)
    cmpw    r28, r0
    blt+    branch_0x80228c3c
    lmw     r25, 0x7c(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl makeDrawBuffer__21TObjectLightWithDBSetFv
makeDrawBuffer__21TObjectLightWithDBSetFv: # 0x80228d08
    mflr    r0
    lis     r4, unk_8039d868@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r25, 0x8c(sp)
    li      r30, 0x0
    addi    r27, r3, 0x0
    addi    r26, r30, 0x0
    addi    r31, r4, unk_8039d868@l
    b       branch_0x80228d58

branch_0x80228d30:
    lwz     r4, 0x10(r3)
    addi    r0, r26, 0x4
    addi    r3, r31, 0x40
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80228d50
    b       branch_0x80228d6c

branch_0x80228d50:
    addi    r30, r30, 0x1
    addi    r26, r26, 0x6c
branch_0x80228d58:
    lwz     r3, R13Off_m0x6114(r13)
    lwz     r0, 0x14(r3)
    cmpw    r30, r0
    blt+    branch_0x80228d30
    li      r30, -0x1
branch_0x80228d6c:
    li      r29, 0x0
    li      r26, 0x0
    b       branch_0x80228da0

branch_0x80228d78:
    lwz     r4, 0x10(r3)
    addi    r0, r26, 0x4
    addi    r3, r31, 0x58
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80228d98
    b       branch_0x80228db4

branch_0x80228d98:
    addi    r29, r29, 0x1
    addi    r26, r26, 0x18
branch_0x80228da0:
    lwz     r3, R13Off_m0x6118(r13)
    lwz     r0, 0x14(r3)
    cmpw    r29, r0
    blt+    branch_0x80228d78
    li      r29, -0x1
branch_0x80228db4:
    lwz     r0, 0x1c(r27)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x10(r27)
    li      r28, 0x0
    li      r26, 0x0
    b       branch_0x80228e8c

branch_0x80228dd0:
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80228e08
    add     r0, r29, r28
    lwz     r4, R13Off_m0x6118(r13)
    mulli   r3, r0, 0x18
    lwz     r4, 0x10(r4)
    addi    r0, r3, 0x4
    lwzx    r6, r4, r0
    addi    r3, r25, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x100
    bl      __ct__16TLightDrawBufferFiUlPCc
branch_0x80228e08:
    lwz     r4, 0x10(r27)
    li      r3, 0x74
    stwx    r25, r4, r26
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80228e2c
    addi    r3, r25, 0x0
    addi    r4, r31, 0x1c4
    bl      __ct__12TLightCommonFPCc
branch_0x80228e2c:
    lwz     r3, 0x10(r27)
    mr      r4, r25
    lwzx    r3, r3, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    stw     r29, 0x20(r3)
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    stw     r30, 0x24(r3)
    lwz     r3, 0x10(r27)
    lwzx    r3, r3, r26
    lwz     r3, 0x10(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x80228e8c:
    lwz     r0, 0x1c(r27)
    cmpw    r28, r0
    blt+    branch_0x80228dd0
    lmw     r25, 0x8c(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl makeDrawBuffer__21TPlayerLightWithDBSetFv
makeDrawBuffer__21TPlayerLightWithDBSetFv: # 0x80228eac
    mflr    r0
    lis     r4, unk_8039d868@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r24, 0x88(sp)
    li      r29, 0x0
    addi    r26, r3, 0x0
    addi    r25, r29, 0x0
    addi    r30, r4, unk_8039d868@l
    b       branch_0x80228efc

branch_0x80228ed4:
    lwz     r4, 0x10(r3)
    addi    r0, r25, 0x4
    addi    r3, r30, 0xc
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80228ef4
    b       branch_0x80228f10

branch_0x80228ef4:
    addi    r29, r29, 0x1
    addi    r25, r25, 0x6c
branch_0x80228efc:
    lwz     r3, R13Off_m0x6114(r13)
    lwz     r0, 0x14(r3)
    cmpw    r29, r0
    blt+    branch_0x80228ed4
    li      r29, -0x1
branch_0x80228f10:
    li      r28, 0x0
    li      r25, 0x0
    b       branch_0x80228f44

branch_0x80228f1c:
    lwz     r4, 0x10(r3)
    addi    r0, r25, 0x4
    addi    r3, r30, 0x20
    lwzx    r4, r4, r0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80228f3c
    b       branch_0x80228f58

branch_0x80228f3c:
    addi    r28, r28, 0x1
    addi    r25, r25, 0x18
branch_0x80228f44:
    lwz     r3, R13Off_m0x6118(r13)
    lwz     r0, 0x14(r3)
    cmpw    r28, r0
    blt+    branch_0x80228f1c
    li      r28, -0x1
branch_0x80228f58:
    lwz     r0, 0x1c(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lis     r4, __vvt__11TLightMario@ha
    stw     r3, 0x10(r26)
    addi    r31, r4, __vvt__11TLightMario@l
    li      r27, 0x0
    li      r25, 0x0
    b       branch_0x8022903c

branch_0x80228f7c:
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80228fb4
    add     r0, r28, r27
    lwz     r4, R13Off_m0x6118(r13)
    mulli   r3, r0, 0x18
    lwz     r4, 0x10(r4)
    addi    r0, r3, 0x4
    lwzx    r6, r4, r0
    addi    r3, r24, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x80
    bl      __ct__16TLightDrawBufferFiUlPCc
branch_0x80228fb4:
    lwz     r4, 0x10(r26)
    li      r3, 0x74
    stwx    r24, r4, r25
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80228fdc
    addi    r3, r24, 0x0
    addi    r4, r30, 0x1d4
    bl      __ct__12TLightCommonFPCc
    stw     r31, 0x0(r24)
branch_0x80228fdc:
    lwz     r3, 0x10(r26)
    mr      r4, r24
    lwzx    r3, r3, r25
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r26)
    lwzx    r3, r3, r25
    lwz     r3, 0x10(r3)
    stw     r28, 0x20(r3)
    lwz     r3, 0x10(r26)
    lwzx    r3, r3, r25
    lwz     r3, 0x10(r3)
    stw     r29, 0x24(r3)
    lwz     r3, 0x10(r26)
    lwzx    r3, r3, r25
    lwz     r3, 0x10(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
    addi    r25, r25, 0x4
branch_0x8022903c:
    lwz     r0, 0x1c(r26)
    cmpw    r27, r0
    blt+    branch_0x80228f7c
    lmw     r24, 0x88(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl __dt__12TLightCommonFv
__dt__12TLightCommonFv: # 0x8022905c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802290b4
    lis     r3, __vvt__12TLightCommon@ha
    addi    r0, r3, __vvt__12TLightCommon@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802290a4
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802290a4:
    extsh.  r0, r31
    ble-    branch_0x802290b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x802290b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl resetLightDrawBuffer__15TLightWithDBSetFv
resetLightDrawBuffer__15TLightWithDBSetFv: # 0x802290d0
    lwz     r6, 0x14(r3)
    cmplwi  r6, 0x0
    beqlr-    

    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lis     r4, j3dSys@h
    addi    r5, r4, j3dSys@l
    stw     r6, 0x44(r5)
    li      r0, 0x0
    lwz     r4, 0x18(r3)
    stw     r4, 0x48(r5)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    blr


.globl changeLightDrawBuffer__15TLightWithDBSetFi
changeLightDrawBuffer__15TLightWithDBSetFi: # 0x8022910c
    li      r0, 0x0
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x1c(r3)
    cmpw    r4, r0
    ble-    branch_0x80229128
    li      r4, 0x0
branch_0x80229128:
    lis     r5, j3dSys@h
    addi    r5, r5, j3dSys@l
    addi    r6, r5, 0x44
    lwz     r0, 0x44(r5)
    addi    r7, r5, 0x48
    slwi    r5, r4, 2
    stw     r0, 0x14(r3)
    lwz     r0, 0x0(r7)
    stw     r0, 0x18(r3)
    lwz     r4, 0x10(r3)
    lwzx    r4, r4, r5
    lwz     r4, 0x14(r4)
    lwz     r0, 0x10(r4)
    stw     r0, 0x0(r6)
    lwz     r3, 0x10(r3)
    lwzx    r3, r3, r5
    lwz     r3, 0x18(r3)
    lwz     r0, 0x10(r3)
    stw     r0, 0x0(r7)
    blr


.globl perform__15TLightWithDBSetFUlPQ26JDrama9TGraphics
perform__15TLightWithDBSetFUlPQ26JDrama9TGraphics: # 0x80229178
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    addi    r25, r4, 0x0
    addi    r30, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x8022923c
    rlwinm  r28, r25, 0, 15, 15
    rlwinm  r27, r25, 0, 14, 14
    li      r26, 0x0
    li      r29, 0x0
    b       branch_0x80229230

branch_0x802291b0:
    lwz     r3, 0x10(r30)
    addi    r5, r31, 0x0
    li      r4, 0x20
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmplwi  r28, 0x0
    beq-    branch_0x802291fc
    lwz     r3, 0x10(r30)
    addi    r5, r31, 0x0
    li      r4, 0x8
    lwzx    r3, r3, r29
    lwz     r3, 0x14(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802291fc:
    cmplwi  r27, 0x0
    beq-    branch_0x80229228
    lwz     r3, 0x10(r30)
    addi    r5, r31, 0x0
    li      r4, 0x8
    lwzx    r3, r3, r29
    lwz     r3, 0x18(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80229228:
    addi    r26, r26, 0x1
    addi    r29, r29, 0x4
branch_0x80229230:
    lwz     r0, 0x1c(r30)
    cmpw    r26, r0
    blt+    branch_0x802291b0
branch_0x8022923c:
    rlwinm. r0, r25, 0, 21, 21
    beq-    branch_0x802292ac
    li      r26, 0x0
    li      r29, 0x0
    b       branch_0x802292a0

branch_0x80229250:
    lwz     r3, 0x10(r30)
    addi    r5, r31, 0x0
    li      r4, 0x480
    lwzx    r3, r3, r29
    lwz     r3, 0x14(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r30)
    addi    r5, r31, 0x0
    li      r4, 0x480
    lwzx    r3, r3, r29
    lwz     r3, 0x18(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
    addi    r29, r29, 0x4
branch_0x802292a0:
    lwz     r0, 0x1c(r30)
    cmpw    r26, r0
    blt+    branch_0x80229250
branch_0x802292ac:
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl perform__16TLightDrawBufferFUlPQ26JDrama9TGraphics
perform__16TLightDrawBufferFUlPQ26JDrama9TGraphics: # 0x802292c0
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x8(sp)
    beq-    branch_0x802292f4
    lwz     r3, 0x10(r6)
    mr      r4, r5
    lwz     r5, 0x80(r6)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
branch_0x802292f4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__16TLightDrawBufferFiUlPCc
__ct__16TLightDrawBufferFiUlPCc: # 0x80229304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r5
    stw     r28, 0x20(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r31, 0x8(sp)
    mr      r3, r30
    stw     r0, 0x0(r31)
    stw     r30, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    crxor   6, 6, 6
    stw     r0, 0x0(r31)
    li      r8, 0x0
    lis     r3, __vvt__16TLightDrawBuffer@ha
    sth     r8, 0xc(r31)
    addi    r0, r3, __vvt__16TLightDrawBuffer@l
    stw     r0, 0x0(r31)
    addi    r6, r30, 0x0
    addi    r3, r31, 0x1c
    stw     r8, 0x10(r31)
    li      r4, 0x32
    addi    r5, r2, R2Off_m0x1780
    stw     r8, 0x14(r31)
    addi    r7, r2, R2Off_m0x1778
    stw     r8, 0x18(r31)
    stw     r28, 0x80(r31)
    bl      snprintf
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802293c0
    addi    r3, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r31, 0x1c
    li      r4, 0x3
    bl      __ct__Q26JDrama11TDrawBufObjFUlUlPCc
branch_0x802293c0:
    lwz     r31, 0x8(sp)
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    li      r4, 0x32
    stw     r28, 0x14(r31)
    addi    r3, r31, 0x4e
    addi    r5, r2, R2Off_m0x1780
    addi    r7, r2, R2Off_m0x1774
    bl      snprintf
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80229408
    addi    r3, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r31, 0x4e
    li      r4, 0x4
    bl      __ct__Q26JDrama11TDrawBufObjFUlUlPCc
branch_0x80229408:
    lwz     r3, 0x8(sp)
    stw     r28, 0x18(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl getAmbColor__11TLightMarioCFi
getAmbColor__11TLightMarioCFi: # 0x80229430
    stwu    sp, -0x48(sp)
    lbz     r0, 0x28(r3)
    lwz     r5, 0x24(r3)
    cmplwi  r0, 0x0
    add     r0, r4, r5
    mr      r6, r0
    beq-    branch_0x8022946c
    cmpwi   r0, 0x2
    blt-    branch_0x80229458
    li      r6, 0x0
branch_0x80229458:
    slwi    r0, r6, 2
    add     r4, r3, r0
    lwz     r0, 0x29(r4)
    stw     r0, 0x2c(sp)
    b       branch_0x802294c8

branch_0x8022946c:
    lwz     r4, 0x20(r3)
    lis     r0, 0x4330
    lwz     r5, R13Off_m0x6118(r13)
    add     r6, r6, r4
    lfd     f2, -0x17b0(r2)
    mulli   r4, r6, 0x18
    lwz     r5, 0x10(r5)
    addi    r4, r4, 0x14
    lwzx    r4, r5, r4
    stw     r4, 0x28(sp)
    lbz     r4, 0x2b(sp)
    lfs     f0, 0x18(r3)
    stw     r4, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stb     r0, 0x2b(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
branch_0x802294c8:
    lwz     r4, 0x2c(sp)
    lis     r0, 0x4330
    lfd     f2, -0x17b0(r2)
    stw     r4, 0x30(sp)
    lbz     r4, 0x33(sp)
    lfs     f0, 0x14(r3)
    stw     r4, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f1, 0x38(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    stb     r0, 0x33(sp)
    lwz     r3, 0x30(sp)
    addi    sp, sp, 0x48
    blr


.globl getLightColor__11TLightMarioCFi
getLightColor__11TLightMarioCFi: # 0x80229510
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lbz     r0, 0x28(r3)
    lwz     r3, 0x24(r3)
    cmplwi  r0, 0x0
    add     r0, r4, r3
    beq-    branch_0x80229558
    cmpwi   r0, 0x4
    blt-    branch_0x80229544
    li      r0, 0x0
branch_0x80229544:
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r0, 0x31(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x802295bc

branch_0x80229558:
    add     r0, r0, r3
    lwz     r3, R13Off_m0x6114(r13)
    mulli   r0, r0, 0x6c
    lwz     r3, 0x10(r3)
    add     r3, r3, r0
    addi    r3, r3, 0x24
    addi    r4, sp, 0x20
    bl      GXGetLightColor
    lwz     r3, 0x20(sp)
    lis     r0, 0x4330
    lfd     f2, -0x17b0(r2)
    stw     r3, 0x28(sp)
    lbz     r3, 0x2b(sp)
    lfs     f0, 0x1c(r31)
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stb     r0, 0x2b(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
branch_0x802295bc:
    lwz     r3, 0x2c(sp)
    lis     r0, 0x4330
    lfd     f2, -0x17b0(r2)
    stw     r3, 0x30(sp)
    lbz     r3, 0x33(sp)
    lfs     f0, 0x14(r31)
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f1, 0x38(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    stb     r0, 0x33(sp)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setLight__11TLightMarioFPCQ26JDrama9TGraphicsi
setLight__11TLightMarioFPCQ26JDrama9TGraphicsi: # 0x80229610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r26, 0x98(sp)
    addi    r29, r3, 0x0
    addi    r26, r4, 0x0
    addi    r30, r5, 0x0
    bl      ReInitializeGX
    bl      SMS_DrawInit__Fv
    mr      r3, r29
    lwz     r12, 0x0(r29)
    slwi    r31, r30, 1
    addi    r4, r31, 0x0
    lwz     r12, 0x2c(r12)
    addi    r28, r26, 0xb4
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r5, sp, 0x3c
    bl      PSMTXMultVec
    lfs     f1, 0x3c(sp)
    addi    r3, sp, 0x48
    lfs     f2, 0x40(sp)
    lfs     f3, 0x44(sp)
    bl      GXInitLightPos
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r31
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x38(sp)
    addi    r4, sp, 0x38
    addi    r3, sp, 0x48
    bl      GXInitLightColor
    lfs     f2, -0x17a4(r2)
    addi    r3, sp, 0x48
    lfs     f1, -0x17a8(r2)
    fmr     f3, f2
    fmr     f4, f1
    fmr     f5, f2
    fmr     f6, f2
    bl      GXInitLightAttn
    addi    r3, sp, 0x48
    li      r4, 0x1
    bl      GXLoadLightObjImm
    lwz     r27, R13Off_m0x610c(r13)
    lbz     r0, 0x54(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x80229790
    lbz     r0, 0x55(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x80229790
    addi    r3, r28, 0x0
    addi    r4, r27, 0x1c
    addi    r5, sp, 0x20
    bl      PSMTXMultVec
    lfs     f1, 0x20(sp)
    addi    r3, sp, 0x48
    lfs     f2, 0x24(sp)
    lfs     f3, 0x28(sp)
    bl      GXInitLightPos
    lwz     r3, 0x18(r27)
    lis     r0, 0x4330
    lfd     f2, -0x17b0(r2)
    addi    r4, sp, 0x2c
    stw     r3, 0x1c(sp)
    addi    r3, sp, 0x48
    lbz     r5, 0x1f(sp)
    lfs     f0, 0x28(r27)
    stw     r5, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f1, 0x90(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stb     r0, 0x1f(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x2c(sp)
    bl      GXInitLightColor
    lfs     f2, -0x17a4(r2)
    addi    r3, sp, 0x48
    lfs     f1, -0x17a8(r2)
    fmr     f3, f2
    bl      GXInitLightAttnA
    lfs     f1, -0x17a0(r2)
    addi    r3, sp, 0x48
    lfs     f2, -0x179c(r2)
    li      r4, 0x3
    bl      GXInitLightDistAttn
    addi    r3, sp, 0x48
    li      r4, 0x2
    bl      GXLoadLightObjImm
branch_0x80229790:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r31, 0x0
    addi    r28, r26, 0xb4
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r5, sp, 0x3c
    bl      PSMTXMultVec
    addi    r3, sp, 0x3c
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0x3c(sp)
    addi    r3, sp, 0x48
    lfs     f2, 0x40(sp)
    lfs     f0, 0x44(sp)
    fneg    f1, f1
    fneg    f2, f2
    fneg    f3, f0
    bl      GXInitSpecularDir
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r31
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x34(sp)
    addi    r4, sp, 0x34
    addi    r3, sp, 0x48
    bl      GXInitLightColor
    lfs     f2, 0x10(r29)
    addi    r3, sp, 0x48
    lfs     f0, -0x179c(r2)
    lfs     f1, -0x17a4(r2)
    fmuls   f4, f2, f0
    lfs     f3, -0x17a8(r2)
    fmr     f2, f1
    fmr     f5, f1
    fsubs   f6, f3, f4
    bl      GXInitLightAttn
    addi    r3, sp, 0x48
    li      r4, 0x4
    bl      GXLoadLightObjImm
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    stw     r3, 0x30(sp)
    addi    r4, sp, 0x30
    li      r3, 0x4
    bl      GXSetChanAmbColor
    lmw     r26, 0x98(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl perform__11TLightMarioFUlPQ26JDrama9TGraphics
perform__11TLightMarioFUlPQ26JDrama9TGraphics: # 0x80229880
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x8(sp)
    beq-    branch_0x802298b0
    lwz     r12, 0x0(r3)
    mr      r4, r5
    lwz     r6, R13Off_m0x6098(r13)
    lwz     r12, 0x30(r12)
    lha     r5, 0x0(r6)
    mtlr    r12
    blrl
branch_0x802298b0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__12TLightShadowFUlPQ26JDrama9TGraphics
perform__12TLightShadowFUlPQ26JDrama9TGraphics: # 0x802298c0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x8(sp)
    beq-    branch_0x802298ec
    lwz     r12, 0x0(r3)
    addi    r4, r5, 0x0
    li      r5, 0x1
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
branch_0x802298ec:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__12TLightCommonFUlPQ26JDrama9TGraphics
perform__12TLightCommonFUlPQ26JDrama9TGraphics: # 0x802298fc
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 24, 24
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x802299f8
    bl      ReInitializeGX
    bl      SMS_DrawInit__Fv
    mr      r3, r27
    lwz     r12, 0x0(r27)
    li      r4, 0x0
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x0(r27)
    li      r4, 0x0
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x0(r27)
    li      r4, 0x0
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x0(r3)
    addi    r3, sp, 0x24
    lfs     f2, 0x4(r31)
    lfs     f3, 0x8(r30)
    bl      GXInitLightPos
    mr      r3, r27
    lwz     r12, 0x0(r27)
    li      r4, 0x0
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x14(sp)
    addi    r4, sp, 0x14
    addi    r3, sp, 0x24
    bl      GXInitLightColor
    lfs     f1, -0x17a4(r2)
    addi    r3, sp, 0x24
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    fmr     f5, f1
    fmr     f6, f1
    bl      GXInitLightAttn
    addi    r3, sp, 0x24
    li      r4, 0x1
    bl      GXLoadLightObjImm
    addi    r3, sp, 0x24
    li      r4, 0x2
    bl      GXLoadLightObjImm
    addi    r3, sp, 0x24
    li      r4, 0x4
    bl      GXLoadLightObjImm
branch_0x802299f8:
    rlwinm. r0, r28, 0, 26, 26
    beq-    branch_0x80229a1c
    mr      r3, r27
    lwz     r12, 0x0(r27)
    addi    r4, r29, 0x0
    li      r5, 0x0
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
branch_0x80229a1c:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl setLight__12TLightCommonFPCQ26JDrama9TGraphicsi
setLight__12TLightCommonFPCQ26JDrama9TGraphicsi: # 0x80229a30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r26, 0x98(sp)
    addi    r29, r3, 0x0
    addi    r26, r4, 0x0
    addi    r30, r5, 0x0
    bl      ReInitializeGX
    bl      SMS_DrawInit__Fv
    mr      r3, r29
    lwz     r12, 0x0(r29)
    slwi    r31, r30, 1
    addi    r4, r31, 0x0
    lwz     r12, 0x2c(r12)
    addi    r28, r26, 0xb4
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r5, sp, 0x3c
    bl      PSMTXMultVec
    lfs     f1, 0x3c(sp)
    addi    r3, sp, 0x48
    lfs     f2, 0x40(sp)
    lfs     f3, 0x44(sp)
    bl      GXInitLightPos
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r31
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x38(sp)
    addi    r4, sp, 0x38
    addi    r3, sp, 0x48
    bl      GXInitLightColor
    lfs     f2, -0x17a4(r2)
    addi    r3, sp, 0x48
    lfs     f1, -0x17a8(r2)
    fmr     f3, f2
    fmr     f4, f1
    fmr     f5, f2
    fmr     f6, f2
    bl      GXInitLightAttn
    addi    r3, sp, 0x48
    li      r4, 0x1
    bl      GXLoadLightObjImm
    lwz     r27, R13Off_m0x610c(r13)
    lbz     r0, 0x54(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x80229bb0
    lbz     r0, 0x55(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x80229bb0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x1c
    addi    r5, sp, 0x20
    bl      PSMTXMultVec
    lfs     f1, 0x20(sp)
    addi    r3, sp, 0x48
    lfs     f2, 0x24(sp)
    lfs     f3, 0x28(sp)
    bl      GXInitLightPos
    lwz     r3, 0x18(r27)
    lis     r0, 0x4330
    lfd     f2, -0x17b0(r2)
    addi    r4, sp, 0x2c
    stw     r3, 0x1c(sp)
    addi    r3, sp, 0x48
    lbz     r5, 0x1f(sp)
    lfs     f0, 0x28(r27)
    stw     r5, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f1, 0x90(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stb     r0, 0x1f(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x2c(sp)
    bl      GXInitLightColor
    lfs     f2, -0x17a4(r2)
    addi    r3, sp, 0x48
    lfs     f1, -0x17a8(r2)
    fmr     f3, f2
    bl      GXInitLightAttnA
    lfs     f1, -0x17a0(r2)
    addi    r3, sp, 0x48
    lfs     f2, -0x179c(r2)
    li      r4, 0x3
    bl      GXInitLightDistAttn
    addi    r3, sp, 0x48
    li      r4, 0x2
    bl      GXLoadLightObjImm
branch_0x80229bb0:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r31, 0x0
    addi    r28, r26, 0xb4
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r5, sp, 0x3c
    bl      PSMTXMultVec
    addi    r3, sp, 0x3c
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0x3c(sp)
    addi    r3, sp, 0x48
    lfs     f2, 0x40(sp)
    lfs     f0, 0x44(sp)
    fneg    f1, f1
    fneg    f2, f2
    fneg    f3, f0
    bl      GXInitSpecularDir
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r31
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x34(sp)
    addi    r4, sp, 0x34
    addi    r3, sp, 0x48
    bl      GXInitLightColor
    lfs     f2, 0x10(r29)
    addi    r3, sp, 0x48
    lfs     f0, -0x179c(r2)
    lfs     f1, -0x17a4(r2)
    fmuls   f4, f2, f0
    lfs     f3, -0x17a8(r2)
    fmr     f2, f1
    fmr     f5, f1
    fsubs   f6, f3, f4
    bl      GXInitLightAttn
    addi    r3, sp, 0x48
    li      r4, 0x4
    bl      GXLoadLightObjImm
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    stw     r3, 0x30(sp)
    addi    r4, sp, 0x30
    li      r3, 0x4
    bl      GXSetChanAmbColor
    lmw     r26, 0x98(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl getLightPosition__12TLightCommonFi
getLightPosition__12TLightCommonFi: # 0x80229ca0
    lbz     r0, 0x41(r3)
    mr      r5, r3
    cmplwi  r0, 0x0
    beq-    branch_0x80229ccc
    cmpwi   r4, 0x4
    blt-    branch_0x80229cbc
    li      r4, 0x0
branch_0x80229cbc:
    mulli   r3, r4, 0xc
    addi    r3, r3, 0x44
    add     r3, r5, r3
    blr

branch_0x80229ccc:
    lwz     r0, 0x24(r5)
    lwz     r5, R13Off_m0x6114(r13)
    add     r4, r4, r0
    mulli   r3, r4, 0x6c
    lwz     r0, 0x10(r5)
    addi    r3, r3, 0x10
    add     r3, r0, r3
    blr


.globl getAmbColor__12TLightCommonCFi
getAmbColor__12TLightCommonCFi: # 0x80229cec
    stwu    sp, -0x40(sp)
    lbz     r0, 0x28(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80229d18
    cmpwi   r4, 0x2
    blt-    branch_0x80229d08
    li      r4, 0x0
branch_0x80229d08:
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x29(r3)
    b       branch_0x80229d70

branch_0x80229d18:
    lwz     r6, 0x20(r3)
    lis     r0, 0x4330
    lwz     r5, R13Off_m0x6118(r13)
    add     r4, r4, r6
    lfd     f2, -0x17b0(r2)
    mulli   r4, r4, 0x18
    lwz     r5, 0x10(r5)
    addi    r4, r4, 0x14
    lwzx    r4, r5, r4
    stw     r4, 0x28(sp)
    lbz     r4, 0x2b(sp)
    lfs     f0, 0x18(r3)
    stw     r4, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f1, 0x38(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    stb     r0, 0x2b(sp)
    lwz     r3, 0x28(sp)
branch_0x80229d70:
    addi    sp, sp, 0x40
    blr


.globl getLightColor__12TLightCommonCFi
getLightColor__12TLightCommonCFi: # 0x80229d78
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lbz     r0, 0x28(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80229db8
    cmpwi   r5, 0x4
    blt-    branch_0x80229da8
    li      r5, 0x0
branch_0x80229da8:
    slwi    r0, r5, 2
    add     r3, r31, r0
    lwz     r3, 0x31(r3)
    b       branch_0x80229e1c

branch_0x80229db8:
    lwz     r0, 0x24(r31)
    addi    r4, sp, 0x20
    lwz     r3, R13Off_m0x6114(r13)
    add     r5, r5, r0
    mulli   r0, r5, 0x6c
    lwz     r3, 0x10(r3)
    add     r3, r3, r0
    addi    r3, r3, 0x24
    bl      GXGetLightColor
    lwz     r3, 0x20(sp)
    lis     r0, 0x4330
    lfd     f2, -0x17b0(r2)
    stw     r3, 0x28(sp)
    lbz     r3, 0x2b(sp)
    lfs     f0, 0x1c(r31)
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f1, 0x38(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    stb     r0, 0x2b(sp)
    lwz     r3, 0x28(sp)
branch_0x80229e1c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl loadAfter__12TLightCommonFv
loadAfter__12TLightCommonFv: # 0x80229e30
    mflr    r0
    lis     r5, unk_8039d868@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x94(sp)
    stw     r28, 0x90(sp)
    addi    r28, r5, unk_8039d868@l
    addi    r3, r28, 0x1e4
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x1e4
    mtlr    r12
    blrl
    stw     r3, R13Off_m0x6118(r13)
    addi    r3, r28, 0x150
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x150
    mtlr    r12
    blrl
    stw     r3, R13Off_m0x6114(r13)
    li      r31, 0x0
    lfs     f0, -0x1770(r2)
    li      r29, 0x0
    lwz     r3, R13Off_m0x6114(r13)
    li      r28, 0x0
    lwz     r3, 0x10(r3)
    addi    r0, r3, 0x10
    stw     r0, R13Off_m0x6110(r13)
    stfs    f0, 0x10(r30)
branch_0x80229edc:
    lwz     r0, 0x24(r30)
    addi    r4, sp, 0x80
    lwz     r3, R13Off_m0x6114(r13)
    add     r0, r31, r0
    mulli   r0, r0, 0x6c
    lwz     r3, 0x10(r3)
    add     r3, r3, r0
    addi    r3, r3, 0x24
    bl      GXGetLightColor
    lwz     r0, 0x80(sp)
    addi    r3, r28, 0x31
    add     r5, r30, r29
    stwx    r0, r30, r3
    addi    r29, r29, 0xc
    addi    r28, r28, 0x4
    lwz     r0, 0x24(r30)
    lwz     r4, R13Off_m0x6114(r13)
    add     r0, r31, r0
    mulli   r3, r0, 0x6c
    lwz     r4, 0x10(r4)
    addi    r0, r3, 0x10
    add     r4, r4, r0
    lwz     r3, 0x0(r4)
    addi    r31, r31, 0x1
    lwz     r0, 0x4(r4)
    cmpwi   r31, 0x4
    stw     r3, 0x44(r5)
    stw     r0, 0x48(r5)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(r5)
    blt+    branch_0x80229edc
    lwz     r0, 0x20(r30)
    lwz     r4, R13Off_m0x6118(r13)
    mulli   r3, r0, 0x18
    lwz     r4, 0x10(r4)
    addi    r0, r3, 0x14
    lwzx    r0, r4, r0
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0x29(r30)
    lwz     r3, 0x20(r30)
    lwz     r4, R13Off_m0x6118(r13)
    addi    r0, r3, 0x1
    mulli   r3, r0, 0x18
    lwz     r4, 0x10(r4)
    addi    r0, r3, 0x14
    lwzx    r0, r4, r0
    stw     r0, 0x2d(r30)
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl __ct__12TLightCommonFPCc
__ct__12TLightCommonFPCc: # 0x80229fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r30, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r30)
    stw     r4, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    li      r31, 0x0
    lis     r3, __vvt__12TLightCommon@ha
    sth     r31, 0xc(r30)
    addi    r0, r3, __vvt__12TLightCommon@l
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    stw     r0, 0x0(r30)
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r3, r30, 0x44
    lfs     f0, -0x17a4(r2)
    li      r5, 0x0
    li      r6, 0xc
    stfs    f0, 0x10(r30)
    li      r7, 0x4
    lfs     f0, -0x17a8(r2)
    stfs    f0, 0x14(r30)
    stfs    f0, 0x18(r30)
    stfs    f0, 0x1c(r30)
    stw     r31, 0x20(r30)
    stw     r31, 0x24(r30)
    stb     r31, 0x28(r30)
    stb     r31, 0x41(r30)
    bl      __construct_array
    stw     r31, R13Off_m0x6118(r13)
    mr      r3, r30
    lfs     f0, -0x1770(r2)
    stw     r31, R13Off_m0x6114(r13)
    stw     r31, R13Off_m0x6110(r13)
    stfs    f0, 0x10(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TIndirectLightWithDBSetFv
__dt__23TIndirectLightWithDBSetFv: # 0x8022a088
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022a0f0
    lis     r3, __vvt__23TIndirectLightWithDBSet@ha
    addi    r0, r3, __vvt__23TIndirectLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a0e0
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a0e0
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022a0e0:
    extsh.  r0, r31
    ble-    branch_0x8022a0f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022a0f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TMapObjectLightWithDBSetFv
__dt__24TMapObjectLightWithDBSetFv: # 0x8022a10c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022a174
    lis     r3, __vvt__24TMapObjectLightWithDBSet@ha
    addi    r0, r3, __vvt__24TMapObjectLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a164
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a164
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022a164:
    extsh.  r0, r31
    ble-    branch_0x8022a174
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022a174:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TObjectLightWithDBSetFv
__dt__21TObjectLightWithDBSetFv: # 0x8022a190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022a1f8
    lis     r3, __vvt__21TObjectLightWithDBSet@ha
    addi    r0, r3, __vvt__21TObjectLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a1e8
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a1e8
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022a1e8:
    extsh.  r0, r31
    ble-    branch_0x8022a1f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022a1f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TPlayerLightWithDBSetFv
__dt__21TPlayerLightWithDBSetFv: # 0x8022a214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022a27c
    lis     r3, __vvt__21TPlayerLightWithDBSet@ha
    addi    r0, r3, __vvt__21TPlayerLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a26c
    lis     r3, __vvt__15TLightWithDBSet@ha
    addi    r0, r3, __vvt__15TLightWithDBSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a26c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022a26c:
    extsh.  r0, r31
    ble-    branch_0x8022a27c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022a27c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TLightDrawBufferFv
__dt__16TLightDrawBufferFv: # 0x8022a298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022a2f0
    lis     r3, __vvt__16TLightDrawBuffer@ha
    addi    r0, r3, __vvt__16TLightDrawBuffer@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a2e0
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022a2e0:
    extsh.  r0, r31
    ble-    branch_0x8022a2f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022a2f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TLightMarioFv
__dt__11TLightMarioFv: # 0x8022a30c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022a374
    lis     r3, __vvt__11TLightMario@ha
    addi    r0, r3, __vvt__11TLightMario@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a364
    lis     r3, __vvt__12TLightCommon@ha
    addi    r0, r3, __vvt__12TLightCommon@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a364
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022a364:
    extsh.  r0, r31
    ble-    branch_0x8022a374
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022a374:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TLightShadowFv
__dt__12TLightShadowFv: # 0x8022a390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022a3f8
    lis     r3, __vvt__12TLightShadow@ha
    addi    r0, r3, __vvt__12TLightShadow@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a3e8
    lis     r3, __vvt__12TLightCommon@ha
    addi    r0, r3, __vvt__12TLightCommon@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022a3e8
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022a3e8:
    extsh.  r0, r31
    ble-    branch_0x8022a3f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022a3f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

