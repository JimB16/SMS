
.globl load__Q26JDrama6TActorFR20JSUMemoryInputStream
load__Q26JDrama6TActorFR20JSUMemoryInputStream: # 0x802f6dd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xa8(sp)
    stw     r29, 0xa4(sp)
    addi    r29, r4, 0x0
    bl      load__Q26JDrama10TPlacementFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, r31, 0x30
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x2c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x4c
    li      r5, 0x50
    bl      readString__14JSUInputStreamFPcUs
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, sp, 0x4c
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x4c
    mtlr    r12
    blrl
    stw     r3, 0x3c(r31)
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802f6eec
    stw     r30, 0x40(sp)
    lis     r3, unk_803aa258@ha
    addi    r4, r3, unk_803aa258@l
    lwz     r3, 0x40(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x40(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__Q26JDrama9TLightMap@h
    addi    r0, r3, __vvt__Q26JDrama9TLightMap@l
    stw     r0, 0x0(r30)
    li      r0, 0x0
    stw     r0, 0x10(r30)
    stw     r0, 0x14(r30)
branch_0x802f6eec:
    stw     r30, 0x40(r31)
    mr      r3, r30
    mr      r4, r29
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl perform__Q26JDrama6TActorFUlPQ26JDrama9TGraphics
perform__Q26JDrama6TActorFUlPQ26JDrama9TGraphics: # 0x802f6f24
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x8(sp)
    beq-    branch_0x802f6f58
    lwz     r3, 0x40(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802f6f58
    lwz     r12, 0x0(r3)
    ori     r4, r4, 0x20
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802f6f58:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__Q26JDrama6TActorFv
__dt__Q26JDrama6TActorFv: # 0x802f6f68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f6fe8
    lis     r3, __vvt__Q26JDrama6TActor@h
    addi    r3, r3, __vvt__Q26JDrama6TActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x20
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage6TActorFv
    cmplwi  r30, 0x0
    beq-    branch_0x802f6fd8
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802f6fd8
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f6fd8:
    extsh.  r0, r31
    ble-    branch_0x802f6fe8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f6fe8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSGGetTranslation__Q26JDrama6TActorCFP3Vec
JSGGetTranslation__Q26JDrama6TActorCFP3Vec: # 0x802f7004
    lwz     r5, 0x10(r3)
    lwz     r0, 0x14(r3)
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x18(r3)
    stw     r0, 0x8(r4)
    blr


.globl JSGSetTranslation__Q26JDrama6TActorFRC3Vec
JSGSetTranslation__Q26JDrama6TActorFRC3Vec: # 0x802f7020
    lfs     f0, 0x0(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x18(r3)
    blr


.globl JSGGetScaling__Q26JDrama6TActorCFP3Vec
JSGGetScaling__Q26JDrama6TActorCFP3Vec: # 0x802f703c
    lwz     r5, 0x24(r3)
    lwz     r0, 0x28(r3)
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x2c(r3)
    stw     r0, 0x8(r4)
    blr


.globl JSGSetScaling__Q26JDrama6TActorFRC3Vec
JSGSetScaling__Q26JDrama6TActorFRC3Vec: # 0x802f7058
    lfs     f0, 0x0(r4)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x2c(r3)
    blr


.globl JSGGetRotation__Q26JDrama6TActorCFP3Vec
JSGGetRotation__Q26JDrama6TActorCFP3Vec: # 0x802f7074
    lwz     r5, 0x30(r3)
    lwz     r0, 0x34(r3)
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x38(r3)
    stw     r0, 0x8(r4)
    blr


.globl JSGSetRotation__Q26JDrama6TActorFRC3Vec
JSGSetRotation__Q26JDrama6TActorFRC3Vec: # 0x802f7090
    lfs     f0, 0x0(r4)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x38(r3)
    blr


.globl unk_802f70ac
unk_802f70ac: # 0x802f70ac
    addi    r3, r3, -0x20
    b       __dt__Q26JDrama6TActorFv

