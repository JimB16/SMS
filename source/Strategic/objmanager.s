
.globl searchF__11TObjManagerFUsPCc
searchF__11TObjManagerFUsPCc: # 0x8021c364
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8021c390
    b       branch_0x8021c3e0

branch_0x8021c390:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8021c3d0

branch_0x8021c39c:
    lwz     r3, 0x18(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8021c3c8
    b       branch_0x8021c3e0

branch_0x8021c3c8:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8021c3d0:
    lwz     r0, 0x14(r27)
    cmpw    r30, r0
    blt+    branch_0x8021c39c
    li      r3, 0x0
branch_0x8021c3e0:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getModelDataKeeper__11TObjManagerFv
getModelDataKeeper__11TObjManagerFv: # 0x8021c3f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8021c428
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
branch_0x8021c428:
    lwz     r0, 0x1c(sp)
    lwz     r3, 0x24(r31)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createAnmData__11TObjManagerFv
createAnmData__11TObjManagerFv: # 0x8021c440
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x4c
    stw     r30, 0x18(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8021c470
    mr      r3, r30
    bl      __ct__13MActorAnmDataFv
branch_0x8021c470:
    stw     r30, 0x20(r31)
    li      r5, 0x0
    lwz     r4, 0x1c(r31)
    lwz     r3, 0x20(r31)
    lwz     r4, 0xc(r4)
    bl      init__13MActorAnmDataFPCcPPCc
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl createModelData__11TObjManagerFv
createModelData__11TObjManagerFv: # 0x8021c4a0
    mflr    r0
    lis     r4, entry_1734@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_1734@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc: # 0x8021c4d4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    addi    r28, r5, 0x0
    stw     r0, 0x28(r3)
    stw     r0, 0x2c(r3)
    b       branch_0x8021c530

branch_0x8021c50c:
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8021c524
    lwz     r3, 0x2c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r30)
branch_0x8021c524:
    lwz     r3, 0x28(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x28(r30)
branch_0x8021c530:
    lwz     r0, 0x28(r30)
    mulli   r0, r0, 0xc
    add     r3, r31, r0
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x8021c50c
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8021c564
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      __ct__16TModelDataKeeperFPCc
branch_0x8021c564:
    stw     r29, 0x24(r30)
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x8021c590

branch_0x8021c574:
    add     r5, r31, r29
    lwz     r3, 0x24(r30)
    lwz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    bl      createAndKeepData__16TModelDataKeeperFPCcUl
    addi    r28, r28, 0x1
    addi    r29, r29, 0xc
branch_0x8021c590:
    lwz     r0, 0x28(r30)
    cmpw    r28, r0
    blt+    branch_0x8021c574
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl createModelDataArray__11TObjManagerFPC19TModelDataLoadEntry
createModelDataArray__11TObjManagerFPC19TModelDataLoadEntry: # 0x8021c5bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x1c(r3)
    lwz     r5, 0xc(r5)
    bl      createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__11TObjManagerFUlPQ26JDrama9TGraphics
perform__11TObjManagerFUlPQ26JDrama9TGraphics: # 0x8021c5e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x30(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8021c650
    li      r0, 0xff
    lwz     r30, R13Off_m0x5ff8(r13)
    stb     r0, 0x34(sp)
    cmplwi  r30, 0x0
    stb     r0, 0x35(sp)
    stb     r0, 0x36(sp)
    stb     r0, 0x37(sp)
    lwz     r31, 0x34(sp)
    beq-    branch_0x8021c650
    bl      OSGetTick
    lwz     r0, 0x814(r30)
    addi    r4, r3, 0x0
    addi    r5, r31, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r30, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8021c650:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8021c678

branch_0x8021c65c:
    lwz     r3, 0x18(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8021c678:
    lwz     r0, 0x14(r27)
    cmpw    r30, r0
    blt+    branch_0x8021c65c
    lwz     r0, 0x30(r27)
    clrlwi. r0, r0, 31
    beq-    branch_0x8021c6bc
    lwz     r30, R13Off_m0x5ff8(r13)
    cmplwi  r30, 0x0
    beq-    branch_0x8021c6bc
    bl      OSGetTick
    lwz     r0, 0x814(r30)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r30, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8021c6bc:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl getMActorAnmData__11TObjManagerFv
getMActorAnmData__11TObjManagerFv: # 0x8021c6d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8021c704
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
branch_0x8021c704:
    lwz     r0, 0x1c(sp)
    lwz     r3, 0x20(r31)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__11TObjManagerFR20JSUMemoryInputStream
load__11TObjManagerFR20JSUMemoryInputStream: # 0x8021c71c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stw     r31, 0x13c(sp)
    stw     r30, 0x138(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x134(sp)
    addi    r29, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x2c
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, sp, 0x2c
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x2c
    mtlr    r12
    blrl
    stw     r3, 0x1c(r29)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x28(sp)
    stw     r0, 0x10(r29)
    lwz     r0, 0x10(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x18(r29)
    lwz     r0, 0x144(sp)
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    mtlr    r0
    lwz     r29, 0x134(sp)
    addi    sp, sp, 0x140
    blr


.globl manageObj__11TObjManagerFP9THitActor
manageObj__11TObjManagerFP9THitActor: # 0x8021c7c4
    lwz     r0, 0x14(r3)
    lwz     r5, 0x18(r3)
    slwi    r0, r0, 2
    stwx    r4, r5, r0
    lwz     r4, 0x14(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x14(r3)
    blr


.globl __ct__11TObjManagerFPCc
__ct__11TObjManagerFPCc: # 0x8021c7e4
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
    li      r4, 0x0
    lis     r3, __vvt__11TObjManager@ha
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__11TObjManager@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x18(r31)
    stw     r4, 0x1c(r31)
    stw     r4, 0x20(r31)
    stw     r4, 0x24(r31)
    stw     r4, 0x28(r31)
    stw     r4, 0x2c(r31)
    stw     r4, 0x30(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl getRes__9TObjCharaCFPCc
getRes__9TObjCharaCFPCc: # 0x8021c870
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    li      r4, 0x100
    stwu    sp, -0x110(sp)
    addi    r5, r2, R2Off_m0x18b8
    lwz     r6, 0xc(r3)
    addi    r3, sp, 0x10
    bl      snprintf
    addi    r3, sp, 0x10
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r0, 0x114(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl __dt__9TObjCharaFv
__dt__9TObjCharaFv: # 0x8021c8b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8021c908
    lis     r3, __vvt__9TObjChara@ha
    addi    r0, r3, __vvt__9TObjChara@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8021c8f8
    lis     r3, __vvt__Q26JDrama10TCharacter@ha
    addi    r0, r3, __vvt__Q26JDrama10TCharacter@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8021c8f8:
    extsh.  r0, r31
    ble-    branch_0x8021c908
    mr      r3, r30
    bl      __dl__FPv
branch_0x8021c908:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__9TObjCharaFR20JSUMemoryInputStream
load__9TObjCharaFR20JSUMemoryInputStream: # 0x8021c924
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0xc(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama10TCharacterFv
__dt__Q26JDrama10TCharacterFv: # 0x8021c968
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8021c9b0
    lis     r3, __vvt__Q26JDrama10TCharacter@ha
    addi    r0, r3, __vvt__Q26JDrama10TCharacter@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x8021c9b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8021c9b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

