
.globl direct__10TSelectDirFv
direct__10TSelectDirFv: # 0x80175ec4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    mr      r30, r3
    stw     r29, 0xc4(sp)
    lbz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80175fe4
    lis     r3, gSetupThread@ha
    addi    r31, r3, gSetupThread@l
    addi    r3, r31, 0x0
    bl      OSIsThreadTerminated
    cmpwi   r3, 0x0
    bne-    branch_0x80175f0c
    li      r3, 0x0
    b       branch_0x8017616c

branch_0x80175f0c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0xb4
    bl      OSJoinThread
    lwz     r0, 0xb4(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x80175f2c
    li      r3, 0x5
    b       branch_0x8017616c

branch_0x80175f2c:
    li      r0, 0x1
    stb     r0, 0x38(r30)
    mr      r7, r30
    lwz     r3, 0x20(r30)
    lbz     r4, 0x40(r30)
    lwz     r5, 0x2c(r30)
    lwz     r6, 0x28(r30)
    bl      initData__11TSelectMenuFUcP10JKRArchiveP19TSelectShineManagerP10TSelectDir
    lwz     r3, 0x20(r30)
    bl      startMove__11TSelectMenuFv
    lwz     r3, 0x20(r30)
    bl      startOpenWindow__11TSelectMenuFv
    lis     r3, gpApplication@ha
    lfs     f1, -0x47d0(r2)
    addi    r3, r3, gpApplication@l
    lfs     f2, -0x47cc(r2)
    addi    r29, r3, 0x34
    lwz     r3, 0x34(r3)
    li      r4, 0xe
    bl      startWipe__9TSMSFaderFUlff
    lbz     r0, 0x40(r30)
    cmplwi  r0, 0x9
    bne-    branch_0x80175fa4
    li      r0, 0xff
    stb     r0, 0xa8(sp)
    addi    r4, sp, 0xa8
    stb     r0, 0xa9(sp)
    stb     r0, 0xaa(sp)
    stb     r0, 0xab(sp)
    b       branch_0x80175fc0

branch_0x80175fa4:
    li      r3, 0x0
    stb     r3, 0xa4(sp)
    li      r0, 0xff
    addi    r4, sp, 0xa4
    stb     r3, 0xa5(sp)
    stb     r3, 0xa6(sp)
    stb     r0, 0xa7(sp)
branch_0x80175fc0:
    lwz     r0, 0x0(r4)
    addi    r4, sp, 0xac
    stw     r0, 0xac(sp)
    lwz     r3, 0x0(r29)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    lwz     r3, R13Off_m0x6044(r13)
    bl      initSound__6MSoundFv
    li      r3, 0x0
    b       branch_0x8017616c

branch_0x80175fe4:
    mr      r3, r30
    bl      direct__Q26JDrama9TDirectorFv
    lis     r3, gpApplication@ha
    addi    r5, r3, gpApplication@l
    addi    r31, r5, 0x34
    lwz     r3, 0x34(r5)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x3
    bge-    branch_0x801760ac
    cmpwi   r0, 0x1
    bge-    branch_0x80176014
    b       branch_0x801760ac

branch_0x80176014:
    lwz     r3, 0x20(r30)
    lbz     r0, 0x14b(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8017602c
    li      r3, 0x4
    b       branch_0x8017616c

branch_0x8017602c:
    lbz     r0, 0x14a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801760ac
    lbz     r0, 0x13b(r3)
    lis     r3, unk_00040003@h
    addi    r4, r3, unk_00040003@l
    stb     r0, 0x13(r5)
    lwz     r5, 0x20(r30)
    lwz     r3, R13Off_m0x6060(r13)
    lbz     r5, 0x13b(r5)
    bl      setFlag__12TFlagManagerFUll
    lwz     r3, 0x0(r31)
    li      r4, 0xf
    lfs     f1, -0x47c8(r2)
    lfs     f2, -0x47cc(r2)
    bl      startWipe__9TSMSFaderFUlff
    li      r0, 0xff
    stb     r0, 0x9c(sp)
    addi    r4, sp, 0xa0
    stb     r0, 0x9d(sp)
    stb     r0, 0x9e(sp)
    stb     r0, 0x9f(sp)
    lwz     r0, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r3, 0x0(r31)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    lwz     r29, R13Off_m0x6044(r13)
    bl      SMSGetVSyncTimesPerSec__Fv
    bl      __cvt_fp2unsigned
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      fadeOutAllSound__6MSoundFUl
branch_0x801760ac:
    lwz     r3, 0x18(r30)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x80176120
    lbz     r0, 0x4c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80176120
    stb     r4, 0x4c(r30)
    li      r4, 0x4
    lwz     r3, 0x0(r31)
    lfs     f1, -0x47c8(r2)
    lfs     f2, -0x47cc(r2)
    bl      startWipe__9TSMSFaderFUlff
    lwz     r29, R13Off_m0x6044(r13)
    bl      SMSGetVSyncTimesPerSec__Fv
    lfs     f0, -0x47d0(r2)
    fmuls   f1, f0, f1
    bl      __cvt_fp2unsigned
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      fadeOutAllSound__6MSoundFUl
    lwz     r3, 0x10(r30)
    lhz     r0, 0xc(r3)
    ori     r0, r0, 0x3
    sth     r0, 0xc(r3)
branch_0x80176120:
    lwz     r3, 0x0(r31)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80176168
    lwz     r3, R13Off_m0x6044(r13)
    bl      stopAllSound__6MSoundFv
    lwz     r3, 0x18(r30)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x80176160
    li      r3, 0x4
    b       branch_0x8017616c

branch_0x80176160:
    li      r3, 0x5
    b       branch_0x8017616c

branch_0x80176168:
    li      r3, 0x1
branch_0x8017616c:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    blr


.globl changeOrder__10TSelectDirFv
changeOrder__10TSelectDirFv: # 0x80176188
    lwz     r5, 0x44(r3)
    li      r0, -0xc
    lhz     r4, 0xc(r5)
    ori     r4, r4, 0xb
    sth     r4, 0xc(r5)
    lwz     r4, 0x48(r3)
    lhz     r3, 0xc(r4)
    and     r0, r3, r0
    sth     r0, 0xc(r4)
    blr


.globl rsetup__10TSelectDirFv
rsetup__10TSelectDirFv: # 0x801761b0
    mflr    r0
    lis     r4, unk_80388458@ha
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x648(sp)
    stmw    r25, 0x62c(sp)
    addi    r31, r4, unk_80388458@l
    addi    r30, r3, 0x0
    addi    r3, r31, 0x20
    li      r4, 0x0
    bl      SMSLoadArchive__FPCcPvUlP7JKRHeap
    addi    r25, r3, 0x0
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801761fc
    mr      r3, r26
    bl      __ct__13JKRMemArchiveFv
branch_0x801761fc:
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x0
    bl      mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
    clrlwi. r0, r3, 24
    bne-    branch_0x8017621c
    li      r3, 0x1
    b       branch_0x801772bc

branch_0x8017621c:
    stw     r26, 0x2c(r30)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80176280
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r29, 0x59c(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x34
    stw     r3, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r29)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r29)
    li      r0, 0x0
    addi    r4, sp, 0x468
    sth     r0, 0xc(r29)
    lwz     r25, 0x59c(sp)
    addi    r3, r25, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r25)
branch_0x80176280:
    stw     r29, 0x10(r30)
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80176330
    lwz     r28, 0x1c(r30)
    addi    r4, r31, 0x44
    stw     r27, 0x2f0(sp)
    stw     r27, 0x598(sp)
    lwz     r3, 0x2f0(sp)
    stw     r27, 0x464(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x2f0(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r25, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r25, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r26, 0x464(sp)
    addi    r4, sp, 0x2ec
    addi    r3, r26, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r26)
    lis     r3, __vvt__Q26JDrama12TDStageGroup@h
    addi    r0, r3, __vvt__Q26JDrama12TDStageGroup@l
    lwz     r3, 0x598(sp)
    addi    r4, r31, 0x54
    stw     r0, 0x0(r3)
    addi    r26, r3, 0x20
    stw     r26, 0x2e8(sp)
    lwz     r3, 0x2e8(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x2e8(sp)
    li      r4, 0x0
    stw     r25, 0x0(r3)
    addi    r3, r3, 0xc
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__Q26JDrama9TFrmGXSet@h
    addi    r0, r3, __vvt__Q26JDrama9TFrmGXSet@l
    stw     r0, 0x0(r26)
    stw     r28, 0x10(r26)
branch_0x80176330:
    stw     r27, 0x14(r30)
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176350
    addi    r3, r25, 0x0
    addi    r4, r31, 0x60
    bl      __ct__11TSelectMenuFPCc
branch_0x80176350:
    stw     r25, 0x20(r30)
    li      r3, 0x120
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176370
    addi    r3, r25, 0x0
    addi    r4, r31, 0x70
    bl      __ct__19TSelectShineManagerFPCc
branch_0x80176370:
    stw     r25, 0x28(r30)
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176390
    addi    r3, r25, 0x0
    addi    r4, r31, 0x84
    bl      __ct__11TSelectGradFPCc
branch_0x80176390:
    stw     r25, 0x24(r30)
    lwz     r3, 0x24(r30)
    lbz     r4, 0x40(r30)
    bl      setStageColor__11TSelectGradFUc
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176400
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r25, 0x594(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r25)
    addi    r3, r31, 0x94
    stw     r3, 0x4(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r25)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r25)
    li      r0, 0x0
    addi    r4, sp, 0x45c
    sth     r0, 0xc(r25)
    lwz     r27, 0x594(sp)
    addi    r3, r27, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r27)
branch_0x80176400:
    stw     r25, 0x61c(sp)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176464
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r25, 0x590(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r25)
    addi    r3, r31, 0xa0
    stw     r3, 0x4(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r25)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r25)
    li      r0, 0x0
    addi    r4, sp, 0x454
    sth     r0, 0xc(r25)
    lwz     r27, 0x590(sp)
    addi    r3, r27, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r27)
branch_0x80176464:
    stw     r25, 0x618(sp)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801764c8
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r25, 0x58c(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r25)
    addi    r3, r31, 0xac
    stw     r3, 0x4(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r25)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r25)
    li      r0, 0x0
    addi    r4, sp, 0x44c
    sth     r0, 0xc(r25)
    lwz     r27, 0x58c(sp)
    addi    r3, r27, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r27)
branch_0x801764c8:
    stw     r25, 0x614(sp)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8017652c
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r27, 0x588(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r27)
    addi    r3, r31, 0xb8
    stw     r3, 0x4(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r27)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r27)
    li      r0, 0x0
    addi    r4, sp, 0x444
    sth     r0, 0xc(r27)
    lwz     r28, 0x588(sp)
    addi    r3, r28, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r28)
branch_0x8017652c:
    addi    r28, r29, 0x10
    stw     r27, 0x610(sp)
    addi    r3, sp, 0x2e4
    addi    r4, r28, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2e4(sp)
    addi    r3, sp, 0x584
    addi    r4, sp, 0x2e0
    stw     r0, 0x2e0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x584(sp)
    addi    r5, sp, 0x440
    addi    r4, r28, 0x0
    stw     r0, 0x580(sp)
    addi    r3, sp, 0x43c
    addi    r6, sp, 0x618
    lwz     r0, 0x580(sp)
    stw     r0, 0x440(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, sp, 0x2dc
    addi    r4, r28, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2dc(sp)
    addi    r3, sp, 0x578
    addi    r4, sp, 0x2d8
    stw     r0, 0x2d8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x578(sp)
    addi    r5, sp, 0x434
    addi    r4, r28, 0x0
    stw     r0, 0x574(sp)
    addi    r3, sp, 0x430
    addi    r6, sp, 0x61c
    lwz     r0, 0x574(sp)
    stw     r0, 0x434(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, sp, 0x2d4
    addi    r4, r28, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2d4(sp)
    addi    r3, sp, 0x56c
    addi    r4, sp, 0x2d0
    stw     r0, 0x2d0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x56c(sp)
    addi    r5, sp, 0x428
    addi    r4, r28, 0x0
    stw     r0, 0x568(sp)
    addi    r3, sp, 0x424
    addi    r6, sp, 0x614
    lwz     r0, 0x568(sp)
    stw     r0, 0x428(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, sp, 0x2cc
    addi    r4, r28, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2cc(sp)
    addi    r3, sp, 0x560
    addi    r4, sp, 0x2c8
    stw     r0, 0x2c8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x560(sp)
    addi    r5, sp, 0x41c
    addi    r4, r28, 0x0
    stw     r0, 0x55c(sp)
    addi    r3, sp, 0x418
    addi    r6, sp, 0x610
    lwz     r0, 0x55c(sp)
    stw     r0, 0x41c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x618(sp)
    addi    r3, sp, 0x2c4
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2c4(sp)
    addi    r3, sp, 0x554
    addi    r4, sp, 0x2c0
    stw     r0, 0x2c0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x554(sp)
    addi    r5, sp, 0x40c
    addi    r4, r25, 0x0
    stw     r0, 0x550(sp)
    addi    r3, sp, 0x408
    addi    r6, r30, 0x20
    lwz     r0, 0x550(sp)
    stw     r0, 0x40c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x61c(sp)
    addi    r3, sp, 0x2bc
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2bc(sp)
    addi    r3, sp, 0x548
    addi    r4, sp, 0x2b8
    stw     r0, 0x2b8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x548(sp)
    addi    r5, sp, 0x3fc
    addi    r4, r25, 0x0
    stw     r0, 0x544(sp)
    addi    r3, sp, 0x3f8
    addi    r6, r30, 0x28
    lwz     r0, 0x544(sp)
    stw     r0, 0x3fc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x614(sp)
    addi    r3, sp, 0x2b4
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2b4(sp)
    addi    r3, sp, 0x53c
    addi    r4, sp, 0x2b0
    stw     r0, 0x2b0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x53c(sp)
    addi    r5, sp, 0x3ec
    addi    r4, r25, 0x0
    stw     r0, 0x538(sp)
    addi    r3, sp, 0x3e8
    addi    r6, r30, 0x24
    lwz     r0, 0x538(sp)
    stw     r0, 0x3ec(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x18(r30)
    li      r0, 0x1
    li      r3, 0xc
    sth     r0, 0xe2(r4)
    lwz     r0, 0x18(r30)
    lwz     r4, 0x20(r30)
    stw     r0, 0x100(r4)
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176764
    addi    r3, r25, 0x0
    li      r4, 0x9
    li      r5, 0x200
    li      r6, 0x0
    bl      __ct__18JPAResourceManagerFUlUlP7JKRHeap
branch_0x80176764:
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80176788
    addi    r3, r26, 0x0
    li      r4, 0x9
    li      r5, 0x200
    li      r6, 0x0
    bl      __ct__18JPAResourceManagerFUlUlP7JKRHeap
branch_0x80176788:
    addi    r3, r25, 0x0
    addi    r4, r31, 0xcc
    li      r5, 0x0
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r25, 0x0
    addi    r4, r31, 0xf4
    li      r5, 0x1
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r25, 0x0
    addi    r4, r31, 0x11c
    li      r5, 0x2
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r25, 0x0
    addi    r4, r31, 0x144
    li      r5, 0x3
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r26, 0x0
    addi    r4, r31, 0x170
    li      r5, 0x4
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r26, 0x0
    addi    r4, r31, 0x198
    li      r5, 0x5
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r26, 0x0
    addi    r4, r31, 0x1c0
    li      r5, 0x6
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r26, 0x0
    addi    r4, r31, 0x1e8
    li      r5, 0x7
    bl      load__18JPAResourceManagerFPCcUs
    addi    r3, r26, 0x0
    addi    r4, r31, 0x210
    li      r5, 0x8
    bl      load__18JPAResourceManagerFPCcUs
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80176844
    addi    r3, r27, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x400
    li      r6, 0x80
    li      r7, 0x100
    li      r8, 0x0
    bl      __ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap
branch_0x80176844:
    stw     r27, 0x30(r30)
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176874
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x400
    li      r6, 0x80
    li      r7, 0x100
    li      r8, 0x0
    bl      __ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap
branch_0x80176874:
    stw     r25, 0x34(r30)
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176898
    lwz     r4, 0x30(r30)
    addi    r3, r25, 0x0
    addi    r5, r31, 0x238
    bl      __ct__15TEmitterViewObjFP17JPAEmitterManagerPCc
branch_0x80176898:
    lwz     r4, 0x61c(sp)
    addi    r3, sp, 0x2ac
    stw     r25, 0x60c(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2ac(sp)
    addi    r3, sp, 0x524
    addi    r4, sp, 0x2a8
    stw     r0, 0x2a8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x524(sp)
    addi    r5, sp, 0x3d8
    addi    r4, r25, 0x0
    stw     r0, 0x520(sp)
    addi    r3, sp, 0x3d4
    addi    r6, sp, 0x60c
    lwz     r0, 0x520(sp)
    stw     r0, 0x3d8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176908
    lwz     r4, 0x34(r30)
    addi    r3, r25, 0x0
    addi    r5, r31, 0x238
    bl      __ct__15TEmitterViewObjFP17JPAEmitterManagerPCc
branch_0x80176908:
    lwz     r4, 0x610(sp)
    addi    r3, sp, 0x2a4
    stw     r25, 0x608(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x2a4(sp)
    addi    r3, sp, 0x518
    addi    r4, sp, 0x2a0
    stw     r0, 0x2a0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x518(sp)
    addi    r5, sp, 0x3c8
    addi    r4, r25, 0x0
    stw     r0, 0x514(sp)
    addi    r3, sp, 0x3c4
    addi    r6, sp, 0x608
    lwz     r0, 0x514(sp)
    stw     r0, 0x3c8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176980
    li      r0, 0x0
    sth     r0, 0x5c4(sp)
    addi    r5, sp, 0x5c4
    addi    r3, r25, 0x0
    addi    r4, r31, 0x24c
    bl      __ct__Q26JDrama11TDStageDispFPCcQ26JDrama10TFlagT_Us_
branch_0x80176980:
    stw     r25, 0x604(sp)
    addi    r3, sp, 0x29c
    lwz     r4, 0x14(r30)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x29c(sp)
    addi    r3, sp, 0x50c
    addi    r4, sp, 0x298
    stw     r0, 0x298(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x50c(sp)
    addi    r5, sp, 0x3b8
    addi    r4, r25, 0x0
    stw     r0, 0x508(sp)
    addi    r3, sp, 0x3b4
    addi    r6, sp, 0x604
    lwz     r0, 0x508(sp)
    stw     r0, 0x3b8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    bl      SMSGetTitleRenderHeight__Fv
    clrlwi  r25, r3, 16
    bl      SMSGetTitleRenderWidth__Fv
    clrlwi  r6, r3, 16
    addi    r7, r25, 0x0
    addi    r3, sp, 0x5f4
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x604(sp)
    bl      getEfbCtrlDisp__Q26JDrama11TDStageDispFv
    addi    r4, sp, 0x5f4
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80176ac4
    stw     r27, 0x294(sp)
    addi    r4, r31, 0x25c
    lwz     r3, 0x294(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r28, 0x294(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x47cc(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801772d0
    li      r4, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r4, 0x1c(r28)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r0, 0x20(r27)
    addi    r0, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, __vvt__Q26JDrama10TOrthoProj@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama10TOrthoProj@l
    addi    r0, r3, 0x24
    sth     r4, 0x24(r27)
    lfs     f0, -0x47c4(r2)
    stfs    f0, 0x28(r27)
    lfs     f0, -0x47c0(r2)
    stfs    f0, 0x2c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    lfs     f0, -0x47cc(r2)
    stfs    f0, 0x30(r27)
    lfs     f0, -0x47bc(r2)
    stfs    f0, 0x34(r27)
    lfs     f0, -0x47b8(r2)
    stfs    f0, 0x38(r27)
    lfs     f0, -0x47b4(r2)
    stfs    f0, 0x3c(r27)
branch_0x80176ac4:
    lwz     r4, 0x614(sp)
    addi    r3, sp, 0x290
    stw     r27, 0x5f0(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x290(sp)
    addi    r3, sp, 0x4fc
    addi    r4, sp, 0x28c
    stw     r0, 0x28c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x4fc(sp)
    addi    r5, sp, 0x3a4
    addi    r4, r25, 0x0
    stw     r0, 0x4f8(sp)
    addi    r3, sp, 0x3a0
    addi    r6, sp, 0x5f0
    lwz     r0, 0x4f8(sp)
    stw     r0, 0x3a4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176b34
    addi    r3, r25, 0x0
    addi    r4, sp, 0x5f4
    addi    r5, r31, 0x26c
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x80176b34:
    stw     r25, 0x5ec(sp)
    addi    r3, sp, 0x284
    lwz     r4, 0x604(sp)
    lwz     r4, 0x14(r4)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x284(sp)
    addi    r3, sp, 0x4f0
    addi    r4, sp, 0x280
    stw     r0, 0x280(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x4f0(sp)
    addi    r5, sp, 0x394
    addi    r4, r25, 0x0
    stw     r0, 0x4ec(sp)
    addi    r3, sp, 0x390
    addi    r6, sp, 0x5ec
    lwz     r0, 0x4ec(sp)
    stw     r0, 0x394(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x5ec(sp)
    lwz     r4, 0x5f0(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x5ec(sp)
    lwz     r4, 0x614(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80176c60
    stw     r27, 0x27c(sp)
    addi    r4, r31, 0x25c
    lwz     r3, 0x27c(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r28, 0x27c(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x47cc(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801772d0
    li      r4, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r4, 0x1c(r28)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r0, 0x20(r27)
    addi    r0, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, __vvt__Q26JDrama10TOrthoProj@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama10TOrthoProj@l
    addi    r0, r3, 0x24
    sth     r4, 0x24(r27)
    lfs     f0, -0x47c4(r2)
    stfs    f0, 0x28(r27)
    lfs     f0, -0x47c0(r2)
    stfs    f0, 0x2c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    lfs     f0, -0x47cc(r2)
    stfs    f0, 0x30(r27)
    lfs     f0, -0x47bc(r2)
    stfs    f0, 0x34(r27)
    lfs     f0, -0x47b8(r2)
    stfs    f0, 0x38(r27)
    lfs     f0, -0x47b4(r2)
    stfs    f0, 0x3c(r27)
branch_0x80176c60:
    lwz     r4, 0x618(sp)
    addi    r3, sp, 0x278
    stw     r27, 0x5e8(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x278(sp)
    addi    r3, sp, 0x4e0
    addi    r4, sp, 0x274
    stw     r0, 0x274(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x4e0(sp)
    addi    r5, sp, 0x380
    addi    r4, r25, 0x0
    stw     r0, 0x4dc(sp)
    addi    r3, sp, 0x37c
    addi    r6, sp, 0x5e8
    lwz     r0, 0x4dc(sp)
    stw     r0, 0x380(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176cd0
    addi    r3, r25, 0x0
    addi    r4, sp, 0x5f4
    addi    r5, r31, 0x278
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x80176cd0:
    stw     r25, 0x5e4(sp)
    addi    r3, sp, 0x26c
    lwz     r4, 0x604(sp)
    lwz     r4, 0x14(r4)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x26c(sp)
    addi    r3, sp, 0x4d4
    addi    r4, sp, 0x268
    stw     r0, 0x268(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x4d4(sp)
    addi    r5, sp, 0x370
    addi    r4, r25, 0x0
    stw     r0, 0x4d0(sp)
    addi    r3, sp, 0x36c
    addi    r6, sp, 0x5e4
    lwz     r0, 0x4d0(sp)
    stw     r0, 0x370(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x5e4(sp)
    lwz     r4, 0x5e8(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x5e4(sp)
    lwz     r4, 0x618(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r0, 0x5e4(sp)
    li      r3, 0x50
    stw     r0, 0x48(r30)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80176e78
    lfs     f0, -0x47b0(r2)
    addi    r4, r31, 0x284
    lfs     f3, -0x47cc(r2)
    lfs     f4, -0x47ac(r2)
    stfs    f0, 0x5a0(sp)
    fmr     f1, f3
    lfs     f2, -0x47c8(r2)
    stfs    f0, 0x5b8(sp)
    lfs     f0, -0x47a8(r2)
    stfs    f3, 0x5ac(sp)
    stfs    f4, 0x5a4(sp)
    stfs    f2, 0x5b0(sp)
    stfs    f4, 0x5bc(sp)
    stw     r27, 0x264(sp)
    stfs    f3, 0x5a8(sp)
    lwz     r3, 0x264(sp)
    stfs    f1, 0x5b4(sp)
    stfs    f0, 0x5c0(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r28, 0x264(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x47cc(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801772d0
    li      r4, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r4, 0x1c(r28)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r0, 0x20(r27)
    addi    r0, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, __vvt__Q26JDrama13TLookAtCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama13TLookAtCamera@l
    addi    r0, r3, 0x24
    sth     r4, 0x24(r27)
    lfs     f0, -0x47a4(r2)
    stfs    f0, 0x28(r27)
    lfs     f0, -0x47a0(r2)
    stfs    f0, 0x2c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    lwz     r3, 0x5ac(sp)
    lwz     r0, 0x5b0(sp)
    stw     r3, 0x30(r27)
    stw     r0, 0x34(r27)
    lwz     r0, 0x5b4(sp)
    stw     r0, 0x38(r27)
    lwz     r3, 0x5a0(sp)
    lwz     r0, 0x5a4(sp)
    stw     r3, 0x3c(r27)
    stw     r0, 0x40(r27)
    lwz     r0, 0x5a8(sp)
    stw     r0, 0x44(r27)
    lfs     f0, -0x479c(r2)
    stfs    f0, 0x48(r27)
    lfs     f0, -0x4798(r2)
    stfs    f0, 0x4c(r27)
    lwz     r3, 0x5b8(sp)
    lwz     r0, 0x5bc(sp)
    stw     r3, 0x10(r27)
    stw     r0, 0x14(r27)
    lwz     r0, 0x5c0(sp)
    stw     r0, 0x18(r27)
branch_0x80176e78:
    lwz     r4, 0x61c(sp)
    addi    r3, sp, 0x260
    stw     r27, 0x5e0(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x260(sp)
    addi    r3, sp, 0x4c4
    addi    r4, sp, 0x25c
    stw     r0, 0x25c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x4c4(sp)
    addi    r5, sp, 0x35c
    addi    r4, r25, 0x0
    stw     r0, 0x4c0(sp)
    addi    r3, sp, 0x358
    addi    r6, sp, 0x5e0
    lwz     r0, 0x4c0(sp)
    stw     r0, 0x35c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80176ee8
    addi    r3, r25, 0x0
    addi    r4, sp, 0x5f4
    addi    r5, r31, 0x294
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x80176ee8:
    stw     r25, 0x5dc(sp)
    addi    r3, sp, 0x254
    lwz     r4, 0x604(sp)
    lwz     r4, 0x14(r4)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x254(sp)
    addi    r3, sp, 0x4b8
    addi    r4, sp, 0x250
    stw     r0, 0x250(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x4b8(sp)
    addi    r5, sp, 0x34c
    addi    r4, r25, 0x0
    stw     r0, 0x4b4(sp)
    addi    r3, sp, 0x348
    addi    r6, sp, 0x5dc
    lwz     r0, 0x4b4(sp)
    stw     r0, 0x34c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x5dc(sp)
    lwz     r4, 0x5e0(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x5dc(sp)
    lwz     r4, 0x61c(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80177014
    stw     r27, 0x24c(sp)
    addi    r4, r31, 0x25c
    lwz     r3, 0x24c(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r28, 0x24c(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x47cc(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801772d0
    li      r4, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r4, 0x1c(r28)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r0, 0x20(r27)
    addi    r0, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, __vvt__Q26JDrama10TOrthoProj@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama10TOrthoProj@l
    addi    r0, r3, 0x24
    sth     r4, 0x24(r27)
    lfs     f0, -0x47c4(r2)
    stfs    f0, 0x28(r27)
    lfs     f0, -0x47c0(r2)
    stfs    f0, 0x2c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    lfs     f0, -0x47cc(r2)
    stfs    f0, 0x30(r27)
    lfs     f0, -0x47bc(r2)
    stfs    f0, 0x34(r27)
    lfs     f0, -0x47b8(r2)
    stfs    f0, 0x38(r27)
    lfs     f0, -0x47b4(r2)
    stfs    f0, 0x3c(r27)
branch_0x80177014:
    lwz     r4, 0x618(sp)
    addi    r3, sp, 0x248
    stw     r27, 0x5d8(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x248(sp)
    addi    r3, sp, 0x4a8
    addi    r4, sp, 0x244
    stw     r0, 0x244(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x4a8(sp)
    addi    r5, sp, 0x338
    addi    r4, r25, 0x0
    stw     r0, 0x4a4(sp)
    addi    r3, sp, 0x334
    addi    r6, sp, 0x5d8
    lwz     r0, 0x4a4(sp)
    stw     r0, 0x338(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80177084
    addi    r3, r25, 0x0
    addi    r4, sp, 0x5f4
    addi    r5, r31, 0x278
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x80177084:
    stw     r25, 0x5d4(sp)
    addi    r3, sp, 0x23c
    lwz     r4, 0x604(sp)
    lwz     r4, 0x14(r4)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x23c(sp)
    addi    r3, sp, 0x49c
    addi    r4, sp, 0x238
    stw     r0, 0x238(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x49c(sp)
    addi    r5, sp, 0x328
    addi    r4, r25, 0x0
    stw     r0, 0x498(sp)
    addi    r3, sp, 0x324
    addi    r6, sp, 0x5d4
    lwz     r0, 0x498(sp)
    stw     r0, 0x328(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x5d4(sp)
    lwz     r4, 0x5d8(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x5d4(sp)
    lwz     r4, 0x618(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r0, 0x5d4(sp)
    li      r3, 0x40
    stw     r0, 0x44(r30)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801771b8
    stw     r27, 0x234(sp)
    addi    r4, r31, 0x25c
    lwz     r3, 0x234(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r28, 0x234(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x47cc(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801772d0
    li      r4, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r4, 0x1c(r28)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r0, 0x20(r27)
    addi    r0, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, __vvt__Q26JDrama10TOrthoProj@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama10TOrthoProj@l
    addi    r0, r3, 0x24
    sth     r4, 0x24(r27)
    lfs     f0, -0x4794(r2)
    stfs    f0, 0x28(r27)
    lfs     f0, -0x4790(r2)
    stfs    f0, 0x2c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    lfs     f0, -0x47cc(r2)
    stfs    f0, 0x30(r27)
    lfs     f0, -0x47bc(r2)
    stfs    f0, 0x34(r27)
    lfs     f0, -0x47b8(r2)
    stfs    f0, 0x38(r27)
    lfs     f0, -0x47b4(r2)
    stfs    f0, 0x3c(r27)
branch_0x801771b8:
    lwz     r4, 0x610(sp)
    addi    r3, sp, 0x230
    stw     r27, 0x5d0(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x230(sp)
    addi    r3, sp, 0x48c
    addi    r4, sp, 0x22c
    stw     r0, 0x22c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x48c(sp)
    addi    r5, sp, 0x314
    addi    r4, r25, 0x0
    stw     r0, 0x488(sp)
    addi    r3, sp, 0x310
    addi    r6, sp, 0x5d0
    lwz     r0, 0x488(sp)
    stw     r0, 0x314(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80177228
    addi    r3, r25, 0x0
    addi    r4, sp, 0x5f4
    addi    r5, r31, 0x26c
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x80177228:
    stw     r25, 0x5cc(sp)
    addi    r3, sp, 0x224
    lwz     r4, 0x604(sp)
    lwz     r4, 0x14(r4)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x224(sp)
    addi    r3, sp, 0x480
    addi    r4, sp, 0x220
    stw     r0, 0x220(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x480(sp)
    addi    r5, sp, 0x304
    addi    r4, r25, 0x0
    stw     r0, 0x47c(sp)
    addi    r3, sp, 0x300
    addi    r6, sp, 0x5cc
    lwz     r0, 0x47c(sp)
    stw     r0, 0x304(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x5cc(sp)
    lwz     r4, 0x5d0(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x5cc(sp)
    lwz     r4, 0x610(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r5, 0x44(r30)
    li      r0, -0xc
    li      r3, 0x0
    lhz     r4, 0xc(r5)
    and     r0, r4, r0
    sth     r0, 0xc(r5)
    lwz     r4, 0x48(r30)
    lhz     r0, 0xc(r4)
    ori     r0, r0, 0xb
    sth     r0, 0xc(r4)
branch_0x801772bc:
    lmw     r25, 0x62c(sp)
    lwz     r0, 0x64c(sp)
    addi    sp, sp, 0x648
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801772d0
set_f___Q29JGeometry8TVec3_f_Ffff_801772d0: # 0x801772d0
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __dt__Q26JDrama9TFrmGXSetFv
__dt__Q26JDrama9TFrmGXSetFv: # 0x801772e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80177338
    lis     r3, __vvt__Q26JDrama9TFrmGXSet@h
    addi    r0, r3, __vvt__Q26JDrama9TFrmGXSet@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80177328
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80177328:
    extsh.  r0, r31
    ble-    branch_0x80177338
    mr      r3, r30
    bl      __dl__FPv
branch_0x80177338:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_Fv
__dt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_Fv: # 0x80177354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801773c4
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r3, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    addic.  r0, r30, 0x10
    stw     r3, 0x0(r30)
    beq-    branch_0x80177394
    addi    r3, r30, 0x10
    li      r4, 0x0
    bl      __dt__Q27JGadget18TList_pointer_voidFv
branch_0x80177394:
    cmplwi  r30, 0x0
    beq-    branch_0x801773b4
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801773b4:
    extsh.  r0, r31
    ble-    branch_0x801773c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801773c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setupThreadFunc__10TSelectDirFPv
setupThreadFunc__10TSelectDirFPv: # 0x801773e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      rsetup__10TSelectDirFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setup__10TSelectDirFPQ26JDrama8TDisplayP13TMarioGamePadUc
setup__10TSelectDirFPQ26JDrama8TDisplayP13TMarioGamePadUc: # 0x80177400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r6
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r4, 0x1c(r3)
    stw     r5, 0x18(r3)
    lwz     r3, R13Off_m0x60f0(r13)
    bl      reset__9RumbleMgrFv
    stb     r31, 0x40(r30)
    lis     r4, gSetupThread@ha
    lis     r3, setupThreadFunc__10TSelectDirFPv@h
    lwz     r6, R13Off_m0x6040(r13)
    addi    r31, r4, gSetupThread@l
    addi    r4, r3, setupThreadFunc__10TSelectDirFPv@l
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    addis   r6, r6, 0x1
    lis     r7, 0x1
    li      r8, 0x11
    li      r9, 0x0
    bl      OSCreateThread
    mr      r3, r31
    bl      OSResumeThread
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__10TSelectDirFv
__dt__10TSelectDirFv: # 0x80177480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr.     r30, r3
    beq-    branch_0x8017751c
    lis     r3, __vvt__10TSelectDir@h
    addi    r3, r3, __vvt__10TSelectDir@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    addi    r3, r2, R2Off_m0x478c
    stw     r0, 0xc(r30)
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801774c8
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x801774c8:
    lwz     r3, 0x18(r30)
    cmplwi  r30, 0x0
    lhz     r0, 0xe2(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0xe2(r3)
    beq-    branch_0x8017750c
    lis     r3, __vvt__Q26JDrama9TDirector@h
    addi    r3, r3, __vvt__Q26JDrama9TDirector@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    addi    r3, r30, 0xc
    stw     r0, 0xc(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage7TSystemFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8017750c:
    extsh.  r0, r31
    ble-    branch_0x8017751c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8017751c:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__10TSelectDirFv
__ct__10TSelectDirFv: # 0x80177538
    mflr    r0
    lis     r4, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r4, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lis     r3, unk_803886f8@ha
    stw     r0, 0x0(r31)
    addi    r3, r3, unk_803886f8@l
    stw     r3, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JStage7TObject@h
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TSystem@h
    stw     r0, 0xc(r31)
    addi    r0, r3, __vvt__Q26JStage7TSystem@l
    lis     r3, __vvt__Q26JDrama9TDirector@h
    stw     r0, 0xc(r31)
    addi    r3, r3, __vvt__Q26JDrama9TDirector@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x20
    lis     r3, __vvt__10TSelectDir@h
    stw     r0, 0xc(r31)
    addi    r4, r3, __vvt__10TSelectDir@l
    li      r5, 0x0
    stw     r5, 0x10(r31)
    addi    r0, r4, 0x20
    addi    r3, r31, 0x0
    stw     r5, 0x14(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0xc(r31)
    stw     r5, 0x20(r31)
    stw     r5, 0x24(r31)
    stw     r5, 0x28(r31)
    stw     r5, 0x2c(r31)
    stw     r5, 0x30(r31)
    stw     r5, 0x34(r31)
    stb     r5, 0x38(r31)
    stw     r5, 0x3c(r31)
    stb     r5, 0x40(r31)
    stw     r5, 0x44(r31)
    stw     r5, 0x48(r31)
    stb     r5, 0x4c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q26JDrama9TDirectorFv
__dt__Q26JDrama9TDirectorFv: # 0x80177600
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8017765c
    lis     r3, __vvt__Q26JDrama9TDirector@h
    addi    r3, r3, __vvt__Q26JDrama9TDirector@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    addi    r3, r30, 0xc
    stw     r0, 0xc(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage7TSystemFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x8017765c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8017765c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_SelectDir_cpp
__sinit_SelectDir_cpp: # 0x80177678
    mflr    r0
    lis     r3, unk_803f4240@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f4240@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801776c0
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801776c0:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801776f0
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801776f0:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80177720
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80177720:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80177750
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80177750:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80177780
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80177780:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801777b0
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801777b0:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801777e0
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801777e0:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80177810
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80177810:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80177840
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80177840:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80177870
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80177870:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801778a0
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801778a0:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801778d0
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801778d0:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80177900
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80177900:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80177930
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80177930:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80177960
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80177960:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80177974
unk_80177974: # 0x80177974
    addi    r3, r3, -0xc
    b       JSGFindObject__Q26JDrama9TDirectorCFPCcQ26JStage8TEObject


.globl unk_8017797c
unk_8017797c: # 0x8017797c
    addi    r3, r3, -0xc
    b       __dt__10TSelectDirFv

