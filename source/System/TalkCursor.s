
.globl __dt__11TTalkCursorFv
__dt__11TTalkCursorFv: # 0x802a55c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a5620
    lis     r3, __vvt__11TTalkCursor@ha
    addi    r0, r3, __vvt__11TTalkCursor@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802a5610
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a5610:
    extsh.  r0, r31
    ble-    branch_0x802a5620
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a5620:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl associateNPC__11TTalkCursorFP8TBaseNPC
associateNPC__11TTalkCursorFP8TBaseNPC: # 0x802a563c
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x802a56a8
    addi    r3, sp, 0x30
    bl      getCursorPos__8TBaseNPCCFv
    addi    r3, sp, 0x3c
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, 0x30(sp)
    addi    r3, sp, 0x3c
    lfs     f1, 0x34(sp)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x38(sp)
    stfs    f1, 0x58(sp)
    stfs    f0, 0x68(sp)
    lwz     r4, 0x10(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lhz     r3, 0xc(r31)
    li      r0, -0x205
    and     r0, r3, r0
    sth     r0, 0xc(r31)
    b       branch_0x802a56b4

branch_0x802a56a8:
    lhz     r0, 0xc(r31)
    ori     r0, r0, 0x204
    sth     r0, 0xc(r31)
branch_0x802a56b4:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl perform__11TTalkCursorFUlPQ26JDrama9TGraphics
perform__11TTalkCursorFUlPQ26JDrama9TGraphics: # 0x802a56c8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x8(sp)
    beq-    branch_0x802a56f0
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x1
    bl      GXSetZMode
    b       branch_0x802a56f8

branch_0x802a56f0:
    lwz     r3, 0x10(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x802a56f8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__11TTalkCursorFv
loadAfter__11TTalkCursorFv: # 0x802a5708
    mflr    r0
    lis     r4, unk_803a3ee0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r28, r3, 0x0
    addi    r31, r4, unk_803a3ee0@l
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a573c
    mr      r3, r29
    bl      __ct__13MActorAnmDataFv
branch_0x802a573c:
    addi    r30, r29, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe0
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a576c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x802a576c:
    stw     r29, 0x10(r28)
    addi    r3, r31, 0xf4
    lwz     r30, 0x10(r28)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802a57b0
    addi    r3, r29, 0x0
    lis     r4, unk_10020000@h
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x802a57b0:
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x114
    bl      setBck__6MActorFPCc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x120
    bl      setBrk__6MActorFPCc
    lhz     r0, 0xc(r28)
    ori     r0, r0, 0x204
    sth     r0, 0xc(r28)
    lwz     r0, 0x34(sp)
    lmw     r27, 0x1c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

