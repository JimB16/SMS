
.globl __dt__15TMapWireManagerFv
__dt__15TMapWireManagerFv: # 0x801988d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80198930
    lis     r3, __vvt__15TMapWireManager@h
    addi    r0, r3, __vvt__15TMapWireManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80198920
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80198920:
    extsh.  r0, r31
    ble-    branch_0x80198930
    mr      r3, r30
    bl      __dl__FPv
branch_0x80198930:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__15TMapWireManagerFPCc
__ct__15TMapWireManagerFPCc: # 0x8019894c
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r8, 0x0
    lis     r3, __vvt__15TMapWireManager@h
    sth     r8, 0xc(r31)
    addi    r0, r3, __vvt__15TMapWireManager@l
    li      r7, 0x78
    stw     r0, 0x0(r31)
    addi    r6, r13, R13Off_m0x6304
    li      r5, 0xff
    stw     r8, 0x10(r31)
    li      r0, 0x32
    addi    r4, r13, R13Off_m0x6300
    stw     r8, 0x18(r31)
    mr      r3, r31
    stw     r8, 0x1c(r31)
    stw     r8, 0x24(r31)
    sth     r8, 0x28(r31)
    stw     r31, R13Off_m0x6308(r13)
    stb     r7, R13Off_m0x6304(r13)
    stb     r7, 0x1(r6)
    stb     r7, 0x2(r6)
    stb     r5, 0x3(r6)
    stb     r0, R13Off_m0x6300(r13)
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r5, 0x3(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__15TMapWireManagerFR20JSUMemoryInputStream
load__15TMapWireManagerFR20JSUMemoryInputStream: # 0x80198a00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x40(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    mr      r3, r29
    bl      readString__14JSUInputStreamFv
    addi    r3, r29, 0x0
    addi    r4, r31, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r13, R13Off_m0x7ad4
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r13, R13Off_m0x7ad0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    stb     r0, R13Off_m0x6304(r13)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    addi    r30, r13, R13Off_m0x6304
    addi    r3, r29, 0x0
    stb     r0, 0x1(r30)
    addi    r4, sp, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    stb     r0, 0x2(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    stb     r0, R13Off_m0x6300(r13)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    addi    r30, r13, R13Off_m0x6300
    addi    r3, r29, 0x0
    stb     r0, 0x1(r30)
    addi    r4, sp, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    stb     r0, 0x2(r30)
    lwz     r0, 0x14(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x18(r31)
    lwz     r0, 0x20(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x24(r31)
    li      r29, 0x0
    li      r30, 0x0
    lwz     r3, R13Off_m0x70e8(r13)
    lbz     r0, 0x10(r3)
    stw     r0, 0x10(r31)
    b       branch_0x80198b84

branch_0x80198b40:
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80198b58
    mr      r3, r28
    bl      __ct__8TMapWireFv
branch_0x80198b58:
    lwz     r3, 0x18(r31)
    stwx    r28, r3, r30
    lwz     r4, R13Off_m0x70e8(r13)
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r4)
    lwzx    r3, r3, r30
    lwz     r4, 0x10(r4)
    lwzx    r4, r4, r30
    bl      init__8TMapWireFPC16TCubeGeneralInfo
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80198b84:
    lwz     r0, 0x10(r31)
    cmpw    r29, r0
    blt+    branch_0x80198b40
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl loadAfter__15TMapWireManagerFv
loadAfter__15TMapWireManagerFv: # 0x80198bb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r29, R13Off_m0x60d8(r13)
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80198c80
    stw     r30, 0x1c(sp)
    lis     r3, unk_80389f48@ha
    addi    r4, r3, unk_80389f48@l
    stw     r29, 0x0(r30)
    lwz     r29, 0x1c(sp)
    addi    r3, r29, 0x4
    bl      __ct__13TMapWireActorFPCc
    li      r0, 0x0
    stw     r0, 0x7c(r29)
    addi    r0, r29, 0x4
    lis     r3, unk_40000098@h
    stw     r0, 0x18(sp)
    addi    r4, r3, unk_40000098@l
    li      r5, 0x1
    lwz     r3, 0x18(sp)
    lis     r6, 0x8000
    stw     r29, 0x74(r3)
    lfs     f3, -0x41ec(r2)
    lfs     f1, -0x7ac8(r13)
    fmr     f4, f3
    lfs     f2, -0x7ac4(r13)
    bl      initHitActor__9THitActorFUlUsiffff
    bl      getInstance__Q26JDrama11TNameRefGenFv
    bl      getRootNameRef__Q26JDrama11TNameRefGenFv
    lis     r4, unk_80389f58@ha
    addi    r4, r4, unk_80389f58@l
    bl      search__Q26JDrama8TNameRefFPCc
    bl      getChildren__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv
    addi    r29, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, sp, 0x14
    bl      end__Q27JGadget26TList_pointer_P9THitActor_Fv
    lwz     r0, 0x14(sp)
    addi    r5, sp, 0x10
    addi    r4, r29, 0x0
    stw     r0, 0x10(sp)
    addi    r3, sp, 0xc
    addi    r6, sp, 0x18
    bl      insert__Q27JGadget26TList_pointer_P9THitActor_FQ37JGadget26TList_pointer_P9THitActor_8iteratorRCP9THitActor
branch_0x80198c80:
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x24(r31)
    slwi    r0, r0, 2
    stwx    r30, r3, r0
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl insert__Q27JGadget26TList_pointer_P9THitActor_FQ37JGadget26TList_pointer_P9THitActor_8iteratorRCP9THitActor
insert__Q27JGadget26TList_pointer_P9THitActor_FQ37JGadget26TList_pointer_P9THitActor_8iteratorRCP9THitActor: # 0x80198cb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x1c
    lwz     r0, 0x0(r5)
    addi    r5, sp, 0x18
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x0(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getChildren__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv
getChildren__Q26JDrama47TViewObjPtrListT_9THitActor_Q26JDrama8TViewObj_Fv: # 0x80198d04
    addi    r3, r3, 0x10
    blr


.globl search__Q26JDrama8TNameRefFPCc
search__Q26JDrama8TNameRefFPCc: # 0x80198d0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r31
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRootNameRef__Q26JDrama11TNameRefGenFv
getRootNameRef__Q26JDrama11TNameRefGenFv: # 0x80198d64
    lwz     r3, 0x4(r3)
    blr


.globl getInstance__Q26JDrama11TNameRefGenFv
getInstance__Q26JDrama11TNameRefGenFv: # 0x80198d6c
    lwz     r3, R13Off_m0x5db8(r13)
    blr


.globl __dt__13TMapWireActorFv
__dt__13TMapWireActorFv: # 0x80198d74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80198df4
    lis     r3, __vvt__13TMapWireActor@h
    addi    r3, r3, __vvt__13TMapWireActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80198de4
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80198de4
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80198de4:
    extsh.  r0, r31
    ble-    branch_0x80198df4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80198df4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__15TMapWireManagerFUlPQ26JDrama9TGraphics
perform__15TMapWireManagerFUlPQ26JDrama9TGraphics: # 0x80198e10
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    beq-    branch_0x80198ef4
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x80198e50

branch_0x80198e3c:
    lwz     r3, 0x24(r30)
    lwzx    r3, r3, r29
    bl      doActorToWire__20TMapWireActorManagerFv
    addi    r28, r28, 0x1
    addi    r29, r29, 0x4
branch_0x80198e50:
    lwz     r0, 0x1c(r30)
    cmpw    r28, r0
    blt+    branch_0x80198e3c
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x80198e7c

branch_0x80198e68:
    lwz     r3, 0x18(r30)
    lwzx    r3, r3, r29
    bl      move__8TMapWireFv
    addi    r28, r28, 0x1
    addi    r29, r29, 0x4
branch_0x80198e7c:
    lwz     r0, 0x10(r30)
    cmpw    r28, r0
    blt+    branch_0x80198e68
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x80198ee8

branch_0x80198e94:
    lwz     r3, 0x24(r30)
    lwzx    r28, r3, r29
    lwz     r0, 0x68(r28)
    ori     r0, r0, 0x1
    stw     r0, 0x68(r28)
    lwz     r0, 0x7c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80198ee0
    lwz     r3, R13Off_m0x60d8(r13)
    bl      getTakenMtx__6TMarioFv
    lwz     r0, 0x68(r28)
    clrrwi  r0, r0, 1
    stw     r0, 0x68(r28)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x14(r28)
    stfs    f1, 0x18(r28)
    stfs    f2, 0x1c(r28)
branch_0x80198ee0:
    addi    r27, r27, 0x1
    addi    r29, r29, 0x4
branch_0x80198ee8:
    lwz     r0, 0x1c(r30)
    cmpw    r27, r0
    blt+    branch_0x80198e94
branch_0x80198ef4:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x80198f80
    bl      initDraw__Fv
    lwz     r0, R13Off_m0x6304(r13)
    addi    r4, sp, 0x1c
    li      r3, 0x4
    stw     r0, 0x1c(sp)
    bl      GXSetChanMatColor
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x80198f34

branch_0x80198f20:
    lwz     r3, 0x18(r30)
    lwzx    r3, r3, r29
    bl      drawUpper__8TMapWireCFv
    addi    r27, r27, 0x1
    addi    r29, r29, 0x4
branch_0x80198f34:
    lwz     r0, 0x10(r30)
    cmpw    r27, r0
    blt+    branch_0x80198f20
    lwz     r0, R13Off_m0x6300(r13)
    addi    r4, sp, 0x18
    li      r3, 0x4
    stw     r0, 0x18(sp)
    bl      GXSetChanMatColor
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x80198f74

branch_0x80198f60:
    lwz     r3, 0x18(r30)
    lwzx    r3, r3, r29
    bl      drawLower__8TMapWireCFv
    addi    r27, r27, 0x1
    addi    r29, r29, 0x4
branch_0x80198f74:
    lwz     r0, 0x10(r30)
    cmpw    r27, r0
    blt+    branch_0x80198f60
branch_0x80198f80:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x80198fb4
    li      r27, 0x0
    li      r31, 0x0
    b       branch_0x80198fa8

branch_0x80198f94:
    lwz     r3, 0x18(r30)
    lwzx    r3, r3, r31
    bl      calcViewAndDBEntry__8TMapWireFv
    addi    r27, r27, 0x1
    addi    r31, r31, 0x4
branch_0x80198fa8:
    lwz     r0, 0x10(r30)
    cmpw    r27, r0
    blt+    branch_0x80198f94
branch_0x80198fb4:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getPointPosInNthWire__15TMapWireManagerCFiRCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
getPointPosInNthWire__15TMapWireManagerCFiRCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x80198fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    slwi    r31, r4, 2
    addi    r4, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r3, 0x18(r3)
    lwzx    r3, r3, r31
    bl      getPosInWire__8TMapWireCFRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x18(r29)
    mr      r4, r30
    lwzx    r3, r3, r31
    bl      getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl getWireNo__15TMapWireManagerCFRCQ29JGeometry8TVec3_f_
getWireNo__15TMapWireManagerCFRCQ29JGeometry8TVec3_f_: # 0x80199028
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x70e8(r13)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl doActorToWire__20TMapWireActorManagerFv
doActorToWire__20TMapWireActorManagerFv: # 0x8019904c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    stw     r28, 0x48(sp)
    lwz     r4, 0x0(r30)
    lwz     r3, R13Off_m0x70e8(r13)
    lwz     r31, 0x7c(r30)
    addi    r4, r4, 0x10
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x801990a0
    lwz     r4, R13Off_m0x6308(r13)
    clrlslwi  r0, r3, 16, 2
    lwz     r3, 0x18(r4)
    lwzx    r0, r3, r0
    stw     r0, 0x7c(r30)
    b       branch_0x801990a8

branch_0x801990a0:
    li      r0, 0x0
    stw     r0, 0x7c(r30)
branch_0x801990a8:
    lwz     r3, 0x70(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801990d4
    lwz     r3, 0x68(r3)
    addi    r0, r30, 0x4
    cmplw   r3, r0
    beq-    branch_0x801990d4
    li      r0, 0x0
    stw     r0, 0x70(r30)
    li      r0, 0x1
    stb     r0, 0x74(r30)
branch_0x801990d4:
    lwz     r3, 0x78(r30)
    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8019915c
    li      r28, 0x0
    addi    r29, r28, 0x0
    b       branch_0x80199150

branch_0x801990f0:
    lwz     r3, 0x48(r30)
    lwzx    r3, r3, r29
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80199110
    li      r0, 0x1
    b       branch_0x80199114

branch_0x80199110:
    li      r0, 0x0
branch_0x80199114:
    clrlwi. r0, r0, 24
    beq-    branch_0x80199148
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x4
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80199148
    lwz     r3, 0x48(r30)
    lwzx    r0, r3, r29
    stw     r0, 0x70(r30)
branch_0x80199148:
    addi    r28, r28, 0x1
    addi    r29, r29, 0x4
branch_0x80199150:
    lhz     r0, 0x4c(r30)
    cmpw    r28, r0
    blt+    branch_0x801990f0
branch_0x8019915c:
    cmplwi  r31, 0x0
    beq-    branch_0x80199180
    lwz     r0, 0x7c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80199180
    cmplw   r0, r31
    beq-    branch_0x80199180
    li      r0, 0x1
    stb     r0, 0x74(r30)
branch_0x80199180:
    lbz     r0, 0x74(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801991a8
    cmplwi  r31, 0x0
    beq-    branch_0x8019919c
    mr      r3, r31
    bl      release__8TMapWireFv
branch_0x8019919c:
    li      r0, 0x0
    stb     r0, 0x74(r30)
    b       branch_0x80199210

branch_0x801991a8:
    lwz     r0, 0x70(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801991f4
    lwz     r0, 0x7c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801991d4
    lwz     r3, R13Off_m0x60d8(r13)
    bl      getTakenMtx__6TMarioFv
    mr      r4, r3
    lwz     r3, 0x7c(r30)
    bl      setFootPointsAtHanged__8TMapWireFPA4_f
branch_0x801991d4:
    cmplwi  r31, 0x0
    beq-    branch_0x801991f4
    lwz     r3, R13Off_m0x60d8(r13)
    bl      getTakenMtx__6TMarioFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      setFootPointsAtHanged__8TMapWireFPA4_f
    stw     r31, 0x7c(r30)
branch_0x801991f4:
    lwz     r0, 0x7c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80199210
    cmplwi  r31, 0x0
    beq-    branch_0x80199210
    mr      r3, r31
    bl      release__8TMapWireFv
branch_0x80199210:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl initDraw__Fv
initDraw__Fv: # 0x80199230
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    bl      GXSetColorUpdate
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
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
    lwz     r0, R2Off_m0x41f0(r2)
    addi    r4, sp, 0x10
    li      r3, 0x4
    stw     r0, 0xc(sp)
    lwz     r0, 0xc(sp)
    stw     r0, 0x10(sp)
    bl      GXSetChanMatColor
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
    li      r3, 0x18
    li      r4, 0x0
    bl      GXSetLineWidth
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0xff
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__13TMapWireActorFPCc
__ct__13TMapWireActorFPCc: # 0x80199378
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__13TMapWireActor@h
    stw     r0, 0x20(r31)
    li      r5, 0x0
    addi    r4, r3, __vvt__13TMapWireActor@l
    stw     r5, 0x68(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stw     r5, 0x6c(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stb     r5, 0x70(r31)
    stw     r5, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__13TMapWireActorFP9THitActorUl
receiveMessage__13TMapWireActorFP9THitActorUl: # 0x801993e4
    cmplwi  r5, 0x8
    bne-    branch_0x80199410
    lwz     r0, 0x6c(r3)
    cmplw   r4, r0
    bne-    branch_0x80199410
    li      r0, 0x0
    stw     r0, 0x6c(r3)
    li      r0, 0x1
    stb     r0, 0x70(r3)
    li      r3, 0x1
    blr

branch_0x80199410:
    li      r3, 0x0
    blr


.globl getTipPoints__13TMapWireActorCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
getTipPoints__13TMapWireActorCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x80199418
    lwz     r3, 0x74(r3)
    lwz     r6, 0x7c(r3)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r6)
    stw     r0, 0x8(r4)
    lwz     r3, 0xc(r6)
    lwz     r0, 0x10(r6)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x14(r6)
    stw     r0, 0x8(r5)
    blr


.globl getPosInWire__13TMapWireActorCFv
getPosInWire__13TMapWireActorCFv: # 0x80199454
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r6, r6, 0x10
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    addi    r5, sp, 0x8c
    lwz     r4, 0x74(r3)
    addi    r3, sp, 0x80
    lfs     f0, -0x41ec(r2)
    lwz     r8, 0x7c(r4)
    addi    r4, sp, 0x98
    lwz     r7, 0x0(r8)
    lwz     r0, 0x4(r8)
    stw     r7, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x8(r8)
    stw     r0, 0xa0(sp)
    lwz     r7, 0xc(r8)
    lwz     r0, 0x10(r8)
    stw     r7, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x14(r8)
    stw     r0, 0x94(sp)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0x90(sp)
    bl      MsPerpendicFootToLineR__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x8c(sp)
    lwz     r4, 0x80(sp)
    stw     r0, 0x4c(sp)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0x50(sp)
    lfs     f0, 0x98(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x84(sp)
    lfs     f1, 0x4c(sp)
    stw     r4, 0xa4(sp)
    fsubs   f0, f1, f0
    lwz     r0, 0x88(sp)
    stw     r3, 0xa8(sp)
    stfs    f0, 0x4c(sp)
    stw     r0, 0xac(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x9c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0xa0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x50(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x6c(sp)
    lfs     f2, 0x70(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r0, 0xa4(sp)
    fmr     f31, f1
    lwz     r3, 0xa8(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x60(sp)
    lfs     f0, 0x98(sp)
    stw     r0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x9c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0xa0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lwz     r0, 0x5c(sp)
    lwz     r3, 0x60(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x78(sp)
    lfs     f2, 0x7c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fdivs   f1, f1, f31
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl getTakingMtx__13TMapWireActorFv
getTakingMtx__13TMapWireActorFv: # 0x801995fc
    li      r3, 0x0
    blr


.globl __sinit_MapWireManager_cpp
__sinit_MapWireManager_cpp: # 0x80199604
    mflr    r0
    li      r3, -0x1
    stw     r0, 0x4(sp)
    lis     r4, unk_803f8310@ha
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r4, unk_803f8310@l
    lbz     r0, R13Off_m0x7204(r13)
    stw     r3, R13Off_m0x6304(r13)
    extsb.  r0, r0
    stw     r3, R13Off_m0x6300(r13)
    bne-    branch_0x80199658
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80199658:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80199688
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80199688:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801996b8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801996b8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801996e8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801996e8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80199718
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80199718:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80199748
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80199748:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80199778
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80199778:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801997a8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801997a8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801997d8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801997d8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80199808
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80199808:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80199838
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80199838:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80199868
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80199868:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80199898
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80199898:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801998c8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801998c8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801998f8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801998f8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8019990c
unk_8019990c: # 0x8019990c
    addi    r3, r3, -0x20
    b       __dt__13TMapWireActorFv

