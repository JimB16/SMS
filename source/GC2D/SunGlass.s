
.globl __dt__9TSunShineFv
__dt__9TSunShineFv: # 0x8017cfc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8017d02c
    lis     r3, 0x803c
    addi    r0, r3, 0x10a0
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d01c
    lis     r3, 0x803c
    addi    r0, r3, 0x10c8
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d01c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8017d01c:
    extsh.  r0, r31
    ble-    branch_0x8017d02c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8017d02c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__9TSunShineFv
loadAfter__9TSunShineFv: # 0x8017d048
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x6
    bne-    branch_0x8017d090
    li      r0, 0x48
    stb     r0, 0x14(r31)
    li      r0, 0x30
    li      r3, 0x0
    stb     r0, 0x15(r31)
    li      r0, 0xff
    stb     r3, 0x16(r31)
    stb     r0, 0x17(r31)
branch_0x8017d090:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl perform__9TSunShineFUlPQ26JDrama9TGraphics
perform__9TSunShineFUlPQ26JDrama9TGraphics: # 0x8017d0a4
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8017d0ec
    lwz     r0, 0x14(r30)
    addi    r4, r5, 0x54
    addi    r5, sp, 0x18
    stw     r0, 0x18(sp)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
branch_0x8017d0ec:
    clrlwi. r0, r31, 31
    beq-    branch_0x8017d168
    lwz     r3, gpSunManager(r13)
    bl      getAddColor__7TSunMgrCFv
    stb     r3, 0x17(r30)
    lbz     r0, 0x28(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8017d124
    bl      SMS_IsMarioStatusElecDamage__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x8017d168
    li      r0, 0x0
    stb     r0, 0x28(r30)
    b       branch_0x8017d168

branch_0x8017d124:
    bl      SMS_IsMarioStatusElecDamage__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8017d168
    li      r0, 0x1
    stb     r0, 0x28(r30)
    addi    r4, sp, 0x1c
    li      r5, 0x200
    lfs     f0, -0x4668(rtoc)
    li      r6, 0x0
    lfs     f1, -0x4664(rtoc)
    li      r7, 0x0
    stfs    f0, 0x1c(sp)
    lfs     f0, -0x4660(rtoc)
    stfs    f1, 0x20(sp)
    lwz     r3, -0x5fdc(r13)
    stfs    f0, 0x24(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
branch_0x8017d168:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl load__9TSunGlassFR20JSUMemoryInputStream
load__9TSunGlassFR20JSUMemoryInputStream: # 0x8017d180
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x18(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x10(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl loadAfter__9TSunGlassFv
loadAfter__9TSunGlassFv: # 0x8017d1bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    lwz     r4, gpMarDirector(r13)
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x8017d24c
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    xoris   r0, r3, 0x8000
    lfd     f3, -0x4650(rtoc)
    stw     r0, 0x34(sp)
    lis     r4, 0x4330
    lfs     f0, -0x4658(rtoc)
    stw     r4, 0x30(sp)
    lbz     r3, 0x1f(r31)
    lfd     f1, 0x30(sp)
    lbz     r0, 0x1e(r31)
    fsubs   f2, f1, f3
    lfs     f1, -0x465c(rtoc)
    subf    r0, r3, r0
    xoris   r0, r0, 0x8000
    fdivs   f2, f2, f0
    stw     r0, 0x2c(sp)
    stw     r4, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r3, 0x24(sp)
branch_0x8017d24c:
    stb     r3, 0x17(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl perform__9TSunGlassFUlPQ26JDrama9TGraphics
perform__9TSunGlassFUlPQ26JDrama9TGraphics: # 0x8017d264
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x38(sp)
    beq-    branch_0x8017d31c
    lbz     r0, 0x26(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8017d31c
    lbz     r9, 0x1d(r3)
    lis     r8, 0x4330
    lbz     r0, 0x1c(r3)
    lhz     r7, 0x24(r3)
    subf    r6, r9, r0
    lha     r0, 0x22(r3)
    mullw   r6, r7, r6
    stw     r9, 0x34(sp)
    lfd     f2, -0x4650(rtoc)
    stw     r8, 0x30(sp)
    lfd     f1, -0x4648(rtoc)
    xoris   r6, r6, 0x8000
    lfd     f0, 0x30(sp)
    xoris   r0, r0, 0x8000
    stw     r6, 0x2c(sp)
    fsubs   f3, f0, f1
    stw     r0, 0x24(sp)
    stw     r8, 0x28(sp)
    stw     r8, 0x20(sp)
    lfd     f1, 0x28(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fadds   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x17(r3)
    lhz     r6, 0x24(r3)
    lha     r0, 0x22(r3)
    cmpw    r6, r0
    bge-    branch_0x8017d314
    addi    r0, r6, 0x1
    sth     r0, 0x24(r3)
    b       branch_0x8017d31c

branch_0x8017d314:
    li      r0, 0x0
    stb     r0, 0x26(r3)
branch_0x8017d31c:
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x8017d344
    lwz     r0, 0x14(r3)
    addi    r4, r5, 0x54
    addi    r5, sp, 0x14
    stw     r0, 0x14(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
branch_0x8017d344:
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl draw__9TSunGlassFRCQ26JDrama5TRectQ28JUtility6TColor
draw__9TSunGlassFRCQ26JDrama5TRectQ28JUtility6TColor: # 0x8017d354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r5
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    lbz     r0, 0x3(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8017d558
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
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
    lfs     f1, -0x4660(rtoc)
    addi    r3, sp, 0x20
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXTrans
    addi    r3, sp, 0x20
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
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
    lhz     r0, 0x1a(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8017d4c8
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    b       branch_0x8017d4dc

branch_0x8017d4c8:
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
branch_0x8017d4dc:
    lwz     r31, 0x0(r31)
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x0(r30)
    lis     r5, 0xcc01
    lwz     r3, 0x4(r30)
    li      r4, 0x0
    extsh   r6, r0
    sth     r6, -0x8000(r5)
    extsh   r7, r3
    sth     r7, -0x8000(r5)
    sth     r4, -0x8000(r5)
    stw     r31, -0x8000(r5)
    lwz     r0, 0x8(r30)
    extsh   r3, r0
    sth     r3, -0x8000(r5)
    sth     r7, -0x8000(r5)
    sth     r4, -0x8000(r5)
    stw     r31, -0x8000(r5)
    lwz     r0, 0xc(r30)
    sth     r3, -0x8000(r5)
    extsh   r0, r0
    sth     r0, -0x8000(r5)
    sth     r4, -0x8000(r5)
    stw     r31, -0x8000(r5)
    sth     r6, -0x8000(r5)
    sth     r0, -0x8000(r5)
    sth     r4, -0x8000(r5)
    stw     r31, -0x8000(r5)
branch_0x8017d558:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl startFade__9TSunGlassFib
startFade__9TSunGlassFib: # 0x8017d574
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r4, 0x0
    lis     r4, 0x4
    lwz     r0, -0x6060(r13)
    mr      r3, r0
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r29, 0x2
    bne-    branch_0x8017d63c
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x0
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8017d62c
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    xoris   r0, r3, 0x8000
    lfd     f3, -0x4650(rtoc)
    stw     r0, 0x54(sp)
    lis     r4, 0x4330
    lfs     f0, -0x4658(rtoc)
    stw     r4, 0x50(sp)
    lbz     r3, 0x1f(r30)
    lfd     f1, 0x50(sp)
    lbz     r0, 0x1e(r30)
    fsubs   f2, f1, f3
    lfs     f1, -0x465c(rtoc)
    subf    r0, r3, r0
    xoris   r0, r0, 0x8000
    fdivs   f2, f2, f0
    stw     r0, 0x4c(sp)
    stw     r4, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r4, 0x44(sp)
branch_0x8017d62c:
    stb     r4, 0x1d(r30)
    li      r0, 0x64
    stb     r0, 0x1c(r30)
    b       branch_0x8017d6c4

branch_0x8017d63c:
    li      r0, 0x64
    stb     r0, 0x1d(r30)
    li      r4, 0x0
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8017d6c0
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    xoris   r0, r3, 0x8000
    lfd     f3, -0x4650(rtoc)
    stw     r0, 0x44(sp)
    lis     r4, 0x4330
    lfs     f0, -0x4658(rtoc)
    stw     r4, 0x40(sp)
    lbz     r3, 0x1f(r30)
    lfd     f1, 0x40(sp)
    lbz     r0, 0x1e(r30)
    fsubs   f2, f1, f3
    lfs     f1, -0x465c(rtoc)
    subf    r0, r3, r0
    xoris   r0, r0, 0x8000
    fdivs   f2, f2, f0
    stw     r0, 0x4c(sp)
    stw     r4, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r4, 0x54(sp)
branch_0x8017d6c0:
    stb     r4, 0x1c(r30)
branch_0x8017d6c4:
    stb     r31, 0x26(r30)
    li      r0, 0x0
    sth     r0, 0x24(r30)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __dt__9TSunGlassFv
__dt__9TSunGlassFv: # 0x8017d6ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8017d744
    lis     r3, 0x803c
    addi    r0, r3, 0x10c8
    stw     r0, 0x0(r30)
    beq-    branch_0x8017d734
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8017d734:
    extsh.  r0, r31
    ble-    branch_0x8017d744
    mr      r3, r30
    bl      __dl__FPv
branch_0x8017d744:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

