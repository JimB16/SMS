
.globl __dt__15TStageEnemyInfoFv
__dt__15TStageEnemyInfoFv: # 0x8008eec4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008ef0c
    lis     r3, __vvt__15TStageEnemyInfo@h
    addi    r0, r3, __vvt__15TStageEnemyInfo@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x8008ef0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008ef0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getMatchedInfo__20TStageEnemyInfoTableFl
getMatchedInfo__20TStageEnemyInfoTableFl: # 0x8008ef28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x10
    stw     r29, 0x94(sp)
    addi    r29, r3, 0x14
    stw     r28, 0x90(sp)
    li      r28, 0x0
    lwz     r5, 0x10(r3)
    lwz     r3, 0x14(r3)
    b       branch_0x8008ef7c

branch_0x8008ef60:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x10(r4)
    and.    r0, r31, r0
    beq-    branch_0x8008ef78
    lwz     r0, 0x14(r4)
    add     r28, r28, r0
branch_0x8008ef78:
    addi    r5, r5, 0x4
branch_0x8008ef7c:
    cmplw   r5, r3
    bne+    branch_0x8008ef60
    cmpwi   r28, 0x0
    bne-    branch_0x8008ef94
    li      r3, 0x0
    b       branch_0x8008f01c

branch_0x8008ef94:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6768(r2)
    stw     r0, 0x8c(sp)
    lis     r3, 0x4330
    xoris   r0, r28, 0x8000
    lfs     f1, -0x6770(r2)
    stw     r3, 0x88(sp)
    lwz     r6, 0x0(r30)
    stw     r0, 0x84(sp)
    lfd     f0, 0x88(sp)
    stw     r3, 0x80(sp)
    fsubs   f2, f0, f3
    lwz     r4, 0x0(r29)
    lfd     f0, 0x80(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r5, 0x7c(sp)
    b       branch_0x8008f010

branch_0x8008efec:
    lwz     r3, 0x0(r6)
    lwz     r0, 0x10(r3)
    and.    r0, r31, r0
    beq-    branch_0x8008f00c
    lwz     r0, 0x14(r3)
    subf.   r5, r0, r5
    bgt-    branch_0x8008f00c
    b       branch_0x8008f01c

branch_0x8008f00c:
    addi    r6, r6, 0x4
branch_0x8008f010:
    cmplw   r6, r4
    bne+    branch_0x8008efec
    li      r3, 0x0
branch_0x8008f01c:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl __ct__20TStageEnemyInfoTableFPCc
__ct__20TStageEnemyInfoTableFPCc: # 0x8008f03c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r30, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r30, 0x14(sp)
    stw     r0, 0x0(r30)
    lwz     r31, 0x14(sp)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    addi    r3, r31, 0xc
    addi    r4, sp, 0x10
    bl      __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_@h
    addi    r0, r3, __vvt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_@l
    lis     r3, __vvt__20TStageEnemyInfoTable@h
    stw     r0, 0x0(r31)
    addi    r0, r3, __vvt__20TStageEnemyInfoTable@l
    stw     r0, 0x0(r30)
    mr      r4, r30
    lwz     r3, R13Off_m0x70b0(r13)
    bl      registerEnemyInfoTable__10TConductorFP20TStageEnemyInfoTable
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_Fv
__dt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_Fv: # 0x8008f0c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008f124
    lis     r3, __vvt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_@h
    addi    r3, r3, __vvt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_@l
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x8008f108
    addi    r3, r30, 0xc
    li      r4, 0x0
    bl      __dt__Q27JGadget20TVector_pointer_voidFv
branch_0x8008f108:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x8008f124
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008f124:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__15TStageEnemyInfoFR20JSUMemoryInputStream
load__15TStageEnemyInfoFR20JSUMemoryInputStream: # 0x8008f140
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stw     r31, 0x114(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x110(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, sp, 0x10
    bl      strlen
    addi    r0, r3, 0x1
    rotlwi  r3, r0, 0
    bl      __nwa__FUl
    stw     r3, 0xc(r30)
    addi    r4, sp, 0x10
    lwz     r3, 0xc(r30)
    bl      strcpy
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x11c(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    mtlr    r0
    addi    sp, sp, 0x118
    blr


.globl __dt__20TStageEnemyInfoTableFv
__dt__20TStageEnemyInfoTableFv: # 0x8008f1cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008f238
    lis     r3, __vvt__20TStageEnemyInfoTable@h
    addi    r0, r3, __vvt__20TStageEnemyInfoTable@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8008f228
    lis     r3, __vvt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_@h
    addi    r3, r3, __vvt__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_@l
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x8008f21c
    addi    r3, r30, 0xc
    li      r4, 0x0
    bl      __dt__Q27JGadget20TVector_pointer_voidFv
branch_0x8008f21c:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8008f228:
    extsh.  r0, r31
    ble-    branch_0x8008f238
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008f238:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_Fv
loadAfter__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_Fv: # 0x8008f254
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r31, 0x10(r30)
    b       branch_0x8008f290

branch_0x8008f278:
    lwz     r3, 0x0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x4
branch_0x8008f290:
    lwz     r0, 0x14(r30)
    cmplw   r31, r0
    bne+    branch_0x8008f278
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl searchF__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_FUsPCc
searchF__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_FUsPCc: # 0x8008f2b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8008f2ec
    b       branch_0x8008f330

branch_0x8008f2ec:
    lwz     r31, 0x10(r28)
    b       branch_0x8008f320

branch_0x8008f2f4:
    lwz     r3, 0x0(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8008f31c
    b       branch_0x8008f330

branch_0x8008f31c:
    addi    r31, r31, 0x4
branch_0x8008f320:
    lwz     r0, 0x14(r28)
    cmplw   r31, r0
    bne+    branch_0x8008f2f4
    li      r3, 0x0
branch_0x8008f330:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl load__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream
load__53TNameRefPtrAryT_15TStageEnemyInfo_Q26JDrama8TNameRef_FR20JSUMemoryInputStream: # 0x8008f350
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r23, 0x3c(sp)
    addi    r23, r3, 0x0
    addi    r30, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x1c(sp)
    addi    r24, r23, 0xc
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    bl      reserve__Q27JGadget20TVector_pointer_voidFUl
    lis     r6, __vvt__10JSUIosBase@ha
    lis     r5, __vvt__14JSUInputStream@h
    lis     r4, __vvt__20JSURandomInputStream@h
    lis     r3, __vvt__20JSUMemoryInputStream@h
    addi    r25, sp, 0x24
    addi    r26, r6, __vvt__10JSUIosBase@l
    addi    r27, r5, __vvt__14JSUInputStream@l
    addi    r28, r4, __vvt__20JSURandomInputStream@l
    addi    r29, r3, __vvt__20JSUMemoryInputStream@l
    li      r23, 0x0
    b       branch_0x8008f444

branch_0x8008f3bc:
    stw     r25, 0x18(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x18(sp)
    li      r5, 0x0
    stw     r26, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r27, 0x0(r3)
    stw     r28, 0x0(r3)
    stw     r29, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    stw     r3, 0x20(sp)
    lwz     r0, 0x20(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x8008f42c
    lwz     r4, 0x8(r24)
    addi    r3, r24, 0x0
    addi    r5, sp, 0x20
    bl      insert__Q27JGadget20TVector_pointer_voidFPPvRCPv
    lwz     r3, 0x20(sp)
    mr      r4, r25
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8008f42c:
    stw     r29, 0x24(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    stw     r28, 0x24(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r23, r23, 0x1
branch_0x8008f444:
    cmplw   r23, r31
    blt+    branch_0x8008f3bc
    lmw     r23, 0x3c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr

