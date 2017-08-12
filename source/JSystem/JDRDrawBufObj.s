
.globl __ct__Q26JDrama11TDrawBufObjFv
__ct__Q26JDrama11TDrawBufObjFv: # 0x802f816c
    mflr    r0
    lis     r4, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r4, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lis     r3, unk_803aa268@ha
    stw     r0, 0x0(r31)
    addi    r3, r3, unk_803aa268@l
    stw     r3, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__Q26JDrama11TDrawBufObj@h
    sth     r4, 0xc(r31)
    addi    r3, r3, __vvt__Q26JDrama11TDrawBufObj@l
    li      r0, 0x7
    stw     r3, 0x0(r31)
    mr      r3, r31
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q26JDrama11TDrawBufObjFUlUlPCc
__ct__Q26JDrama11TDrawBufObjFUlUlPCc: # 0x802f81e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r5
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r31, 0x8(sp)
    mr      r3, r6
    stw     r0, 0x0(r31)
    stw     r6, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lis     r3, __vvt__Q26JDrama11TDrawBufObj@h
    sth     r0, 0xc(r31)
    addi    r0, r3, __vvt__Q26JDrama11TDrawBufObj@l
    li      r3, 0x24
    stw     r0, 0x0(r31)
    stw     r30, 0x14(r31)
    stw     r29, 0x18(r31)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802f8270
    mr      r3, r29
    lwz     r4, 0x14(r31)
    bl      __ct__13J3DDrawBufferFUl
branch_0x802f8270:
    lwz     r3, 0x8(sp)
    stw     r29, 0x10(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl load__Q26JDrama11TDrawBufObjFR20JSUMemoryInputStream
load__Q26JDrama11TDrawBufObjFR20JSUMemoryInputStream: # 0x802f8294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802f82f0
    mr      r3, r31
    lwz     r4, 0x14(r30)
    bl      __ct__13J3DDrawBufferFUl
branch_0x802f82f0:
    stw     r31, 0x10(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__Q26JDrama11TDrawBufObjFUlPQ26JDrama9TGraphics
perform__Q26JDrama11TDrawBufObjFUlPQ26JDrama9TGraphics: # 0x802f830c
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 24, 24
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802f8338
    lwz     r3, 0x10(r30)
    bl      frameInit__13J3DDrawBufferFv
branch_0x802f8338:
    rlwinm. r0, r31, 0, 21, 21
    beq-    branch_0x802f8378
    lwz     r0, 0x18(r30)
    clrlwi. r0, r0, 30
    beq-    branch_0x802f835c
    lis     r3, j3dSys@h
    lwz     r0, 0x10(r30)
    addi    r3, r3, j3dSys@l
    stw     r0, 0x44(r3)
branch_0x802f835c:
    lwz     r0, 0x18(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802f8378
    lis     r3, j3dSys@h
    lwz     r0, 0x10(r30)
    addi    r3, r3, j3dSys@l
    stw     r0, 0x48(r3)
branch_0x802f8378:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x802f8398
    lis     r3, j3dSys@h
    lwz     r0, 0x18(r30)
    addi    r3, r3, j3dSys@l
    stw     r0, 0x4c(r3)
    lwz     r3, 0x10(r30)
    bl      draw__13J3DDrawBufferCFv
branch_0x802f8398:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr

