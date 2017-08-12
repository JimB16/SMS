
.globl __ct__10JUTRomFontFP7JKRHeap
__ct__10JUTRomFontFP7JKRHeap: # 0x802f248c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7JUTFontFv
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__10JUTRomFont@h
    addi    r0, r3, __vvt__10JUTRomFont@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      initiate__10JUTRomFontFP7JKRHeap
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initiate__10JUTRomFontFP7JKRHeap
initiate__10JUTRomFontFP7JKRHeap: # 0x802f24e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      initiate__7JUTFontFv
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      loadImage__10JUTRomFontFP7JKRHeap
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10JUTRomFontFv
__dt__10JUTRomFontFv: # 0x802f252c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f25ac
    lis     r3, __vvt__10JUTRomFont@h
    addi    r0, r3, __vvt__10JUTRomFont@l
    stw     r0, 0x0(r30)
    lwz     r3, R13Off_m0x5dd0(r13)
    addi    r0, r3, -0x1
    stw     r0, R13Off_m0x5dd0(r13)
    lwz     r0, R13Off_m0x5dd0(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802f2588
    lwz     r3, R13Off_m0x5dd4(r13)
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r0, 0x0
    stw     r0, R13Off_m0x5dd4(r13)
    stw     r0, R13Off_m0x5dd8(r13)
branch_0x802f2588:
    cmplwi  r30, 0x0
    beq-    branch_0x802f259c
    lis     r3, __vvt__7JUTFont@h
    addi    r0, r3, __vvt__7JUTFont@l
    stw     r0, 0x0(r30)
branch_0x802f259c:
    extsh.  r0, r31
    ble-    branch_0x802f25ac
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f25ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadImage__10JUTRomFontFP7JKRHeap
loadImage__10JUTRomFontFP7JKRHeap: # 0x802f25c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr.     r30, r4
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x802f25f0
    lwz     r30, R13Off_m0x5f2c(r13)
branch_0x802f25f0:
    lwz     r0, R13Off_m0x5dd4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802f2674
    bl      OSGetFontEncode
    lis     r5, unk_803aa220@ha
    crxor   6, 6, 6
    clrlwi  r4, r3, 16
    addi    r3, r5, unk_803aa220@l
    bl      JUTReportConsole_f
    bl      OSGetFontEncode
    clrlwi  r0, r3, 16
    crxor   6, 6, 6
    mulli   r4, r0, 0xc
    lis     r3, saoAboutEncoding___10JUTRomFont@h
    addi    r0, r3, saoAboutEncoding___10JUTRomFont@l
    add     r0, r0, r4
    stw     r0, R13Off_m0x5dd8(r13)
    lis     r3, unk_803aa238@ha
    addi    r3, r3, unk_803aa238@l
    lwz     r4, R13Off_m0x5dd8(r13)
    lwz     r31, 0x4(r4)
    mr      r4, r31
    bl      JUTReportConsole_f
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, R13Off_m0x5dd4(r13)
    lwz     r3, R13Off_m0x5dd4(r13)
    bl      OSInitFont
    lwz     r3, R13Off_m0x5dd4(r13)
    lhz     r0, 0xc(r3)
    stw     r0, 0x8(r29)
branch_0x802f2674:
    lwz     r3, R13Off_m0x5dd0(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5dd0(r13)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setGX__10JUTRomFontFv
setGX__10JUTRomFontFv: # 0x802f269c
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      GXSetNumChans
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0xf
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl drawChar_scale__10JUTRomFontFffffib
drawChar_scale__10JUTRomFontFffffib: # 0x802f2774
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x180(sp)
    stfd    f31, 0x178(sp)
    stfd    f30, 0x170(sp)
    fmr     f30, f2
    stfd    f29, 0x168(sp)
    stfd    f28, 0x160(sp)
    fmr     f28, f1
    stfd    f27, 0x158(sp)
    fmr     f27, f3
    stfd    f26, 0x150(sp)
    fmr     f26, f4
    stmw    r25, 0x134(sp)
    mr.     r27, r4
    mr      r25, r3
    bne-    branch_0x802f27c0
    lfs     f1, 0x388(r2)
    b       branch_0x802f2b9c

branch_0x802f27c0:
    mr      r3, r25
    lwz     r12, 0x0(r25)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    xoris   r0, r3, 0x8000
    lfd     f1, 0x390(r2)
    stw     r0, 0x12c(sp)
    lis     r26, 0x4330
    addi    r3, r25, 0x0
    stw     r26, 0x128(sp)
    lwz     r12, 0x0(r25)
    lfd     f0, 0x128(sp)
    lwz     r12, 0x24(r12)
    fsubs   f0, f0, f1
    mtlr    r12
    fdivs   f31, f27, f0
    blrl
    xoris   r0, r3, 0x8000
    lfd     f1, 0x390(r2)
    stw     r0, 0x124(sp)
    cmpwi   r27, 0x100
    addi    r3, sp, 0x6c
    stw     r26, 0x120(sp)
    lfd     f0, 0x120(sp)
    fsubs   f0, f0, f1
    fdivs   f29, f26, f0
    blt-    branch_0x802f2840
    srawi   r0, r27, 8
    extsb   r0, r0
    stb     r0, 0x6c(sp)
    addi    r3, r3, 0x1
branch_0x802f2840:
    extsb   r0, r27
    stb     r0, 0x0(r3)
    addi    r3, sp, 0x6c
    addi    r4, sp, 0x78
    addi    r5, sp, 0x74
    addi    r6, sp, 0x70
    addi    r7, sp, 0x80
    bl      OSGetFontTexture
    lwz     r4, 0x78(sp)
    addi    r3, sp, 0x48
    li      r5, 0x200
    li      r6, 0x200
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, 0x388(r2)
    addi    r3, sp, 0x48
    li      r4, 0x1
    fmr     f2, f1
    li      r5, 0x1
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x48
    li      r4, 0x0
    bl      GXLoadTexObj
    lbz     r0, 0x4(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x802f28d4
    lwz     r3, 0x80(sp)
    lwz     r0, 0x8(r25)
    subf    r30, r3, r0
    b       branch_0x802f28d8

branch_0x802f28d4:
    li      r30, 0x0
branch_0x802f28d8:
    xoris   r3, r30, 0x8000
    lwz     r0, 0x80(sp)
    stw     r3, 0x124(sp)
    lis     r31, 0x4330
    xoris   r0, r0, 0x8000
    lfd     f3, 0x390(r2)
    stw     r31, 0x120(sp)
    mr      r3, r25
    lfs     f1, 0x38c(r2)
    lfd     f0, 0x120(sp)
    stw     r0, 0x12c(sp)
    fsubs   f0, f0, f3
    lwz     r12, 0x0(r25)
    stw     r31, 0x128(sp)
    lwz     r12, 0x1c(r12)
    fmuls   f2, f31, f0
    lfd     f0, 0x128(sp)
    mtlr    r12
    fmadds  f28, f2, f1, f28
    fsubs   f0, f0, f3
    fmadds  f27, f0, f31, f28
    blrl
    xoris   r0, r3, 0x8000
    lfd     f1, 0x390(r2)
    stw     r0, 0x11c(sp)
    mr      r3, r25
    lwz     r12, 0x0(r25)
    stw     r31, 0x118(sp)
    lwz     r12, 0x20(r12)
    lfd     f0, 0x118(sp)
    mtlr    r12
    fsubs   f0, f0, f1
    fnmsubs  f26, f29, f0, f30
    blrl
    xoris   r0, r3, 0x8000
    lwz     r5, 0x74(sp)
    stw     r0, 0x114(sp)
    mr      r3, r25
    lwz     r0, 0x80(sp)
    slwi    r4, r5, 15
    stw     r31, 0x110(sp)
    srawi   r29, r4, 9
    lwz     r12, 0x0(r25)
    lfd     f1, 0x390(r2)
    add     r0, r5, r0
    lfd     f0, 0x110(sp)
    addze   r29, r29
    slwi    r4, r0, 15
    fsubs   f0, f0, f1
    lwz     r0, 0x70(sp)
    srawi   r28, r4, 9
    lwz     r12, 0x24(r12)
    addze   r28, r28
    slwi    r0, r0, 15
    fmadds  f29, f29, f0, f30
    srawi   r27, r0, 9
    mtlr    r12
    addze   r27, r27
    blrl
    lwz     r0, 0x70(sp)
    li      r4, 0x0
    li      r5, 0x4
    add     r0, r0, r3
    slwi    r0, r0, 15
    srawi   r26, r0, 9
    addze   r26, r26
    li      r3, 0x80
    bl      GXBegin
    fctiwz  f7, f28
    lfd     f6, 0x390(r2)
    fctiwz  f2, f26
    lis     r3, 0xcc01
    fctiwz  f3, f27
    stfd    f7, 0x108(sp)
    fctiwz  f1, f29
    lfs     f4, 0x388(r2)
    clrlwi  r0, r29, 16
    stfd    f2, 0xf8(sp)
    lwz     r5, 0x10c(sp)
    lwz     r4, 0xfc(sp)
    clrlwi  r7, r28, 16
    extsh   r5, r5
    stfd    f3, 0xe8(sp)
    xoris   r5, r5, 0x8000
    stw     r5, 0x104(sp)
    extsh   r4, r4
    xoris   r5, r4, 0x8000
    lwz     r4, 0xec(sp)
    stw     r31, 0x100(sp)
    extsh   r4, r4
    stw     r5, 0xf4(sp)
    xoris   r5, r4, 0x8000
    lfd     f0, 0x100(sp)
    stw     r31, 0xf0(sp)
    fsubs   f5, f0, f6
    lfd     f0, 0xf0(sp)
    stfd    f2, 0xd8(sp)
    fsubs   f0, f0, f6
    stfs    f5, -0x8000(r3)
    lwz     r4, 0xdc(sp)
    stfs    f0, -0x8000(r3)
    extsh   r4, r4
    stw     r5, 0xe4(sp)
    xoris   r4, r4, 0x8000
    stfs    f4, -0x8000(r3)
    lwz     r5, 0xc(r25)
    stw     r31, 0xe0(sp)
    stw     r4, 0xd4(sp)
    lfd     f0, 0xe0(sp)
    stw     r5, -0x8000(r3)
    fsubs   f2, f0, f6
    stw     r31, 0xd0(sp)
    sth     r29, -0x8000(r3)
    lfd     f0, 0xd0(sp)
    sth     r27, -0x8000(r3)
    fsubs   f0, f0, f6
    stfd    f3, 0xc8(sp)
    stfs    f2, -0x8000(r3)
    lwz     r4, 0xcc(sp)
    stfs    f0, -0x8000(r3)
    extsh   r4, r4
    xoris   r5, r4, 0x8000
    stfd    f1, 0xb8(sp)
    lwz     r4, 0xbc(sp)
    stw     r5, 0xc4(sp)
    extsh   r4, r4
    stfs    f4, -0x8000(r3)
    xoris   r4, r4, 0x8000
    lwz     r5, 0x10(r25)
    stw     r31, 0xc0(sp)
    stw     r4, 0xb4(sp)
    lfd     f0, 0xc0(sp)
    stw     r5, -0x8000(r3)
    fsubs   f2, f0, f6
    stw     r31, 0xb0(sp)
    sth     r28, -0x8000(r3)
    lfd     f0, 0xb0(sp)
    sth     r27, -0x8000(r3)
    fsubs   f0, f0, f6
    stfs    f2, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfd    f7, 0xa8(sp)
    lwz     r4, 0x80(sp)
    stfd    f1, 0x98(sp)
    lwz     r6, 0xac(sp)
    add     r4, r4, r30
    lwz     r5, 0x9c(sp)
    xoris   r4, r4, 0x8000
    extsh   r6, r6
    xoris   r6, r6, 0x8000
    stfs    f4, -0x8000(r3)
    extsh   r5, r5
    stw     r6, 0xa4(sp)
    xoris   r5, r5, 0x8000
    lwz     r6, 0x18(r25)
    stw     r31, 0xa0(sp)
    stw     r5, 0x94(sp)
    lfd     f0, 0xa0(sp)
    stw     r6, -0x8000(r3)
    fsubs   f1, f0, f6
    stw     r31, 0x90(sp)
    sth     r7, -0x8000(r3)
    lfd     f0, 0x90(sp)
    sth     r26, -0x8000(r3)
    fsubs   f0, f0, f6
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stw     r4, 0x8c(sp)
    stfs    f4, -0x8000(r3)
    stw     r31, 0x88(sp)
    lwz     r4, 0x14(r25)
    lfd     f0, 0x88(sp)
    stw     r4, -0x8000(r3)
    fsubs   f0, f0, f6
    sth     r0, -0x8000(r3)
    fmuls   f1, f31, f0
    sth     r26, -0x8000(r3)
branch_0x802f2b9c:
    lmw     r25, 0x134(sp)
    lwz     r0, 0x184(sp)
    lfd     f31, 0x178(sp)
    lfd     f30, 0x170(sp)
    mtlr    r0
    lfd     f29, 0x168(sp)
    lfd     f28, 0x160(sp)
    lfd     f27, 0x158(sp)
    lfd     f26, 0x150(sp)
    addi    sp, sp, 0x180
    blr


.globl getDescent__10JUTRomFontCFv
getDescent__10JUTRomFontCFv: # 0x802f2bc8
    lwz     r3, R13Off_m0x5dd4(r13)
    lhz     r3, 0xa(r3)
    blr


.globl getAscent__10JUTRomFontCFv
getAscent__10JUTRomFontCFv: # 0x802f2bd4
    lwz     r3, R13Off_m0x5dd4(r13)
    lhz     r3, 0x8(r3)
    blr


.globl getHeight__10JUTRomFontCFv
getHeight__10JUTRomFontCFv: # 0x802f2be0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    add     r3, r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getWidth__10JUTRomFontCFv
getWidth__10JUTRomFontCFv: # 0x802f2c3c
    lwz     r3, R13Off_m0x5dd4(r13)
    lhz     r3, 0xc(r3)
    blr


.globl getWidthEntry__10JUTRomFontCFiPQ27JUTFont6TWidth
getWidthEntry__10JUTRomFontCFiPQ27JUTFont6TWidth: # 0x802f2c48
    mflr    r0
    cmpwi   r4, 0x100
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    addi    r3, sp, 0x14
    blt-    branch_0x802f2c78
    srawi   r0, r4, 8
    extsb   r0, r0
    stb     r0, 0x14(sp)
    addi    r3, r3, 0x1
branch_0x802f2c78:
    extsb   r0, r4
    stb     r0, 0x0(r3)
    addi    r3, sp, 0x14
    addi    r4, sp, 0x18
    bl      OSGetFontWidth
    lwz     r3, 0x18(sp)
    li      r0, 0x0
    stb     r3, 0x1(r31)
    stb     r0, 0x0(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl isLeadByte__10JUTRomFontCFi
isLeadByte__10JUTRomFontCFi: # 0x802f2cb0
    mflr    r0
    mr      r3, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, R13Off_m0x5dd8(r13)
    lwz     r12, 0x8(r5)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getLeading__10JUTRomFontCFv
getLeading__10JUTRomFontCFv: # 0x802f2ce0
    lwz     r3, R13Off_m0x5dd4(r13)
    lhz     r3, 0xe(r3)
    blr


.globl getResFont__10JUTRomFontCFv
getResFont__10JUTRomFontCFv: # 0x802f2cec
    li      r3, 0x0
    blr


.globl getFontType__10JUTRomFontCFv
getFontType__10JUTRomFontCFv: # 0x802f2cf4
    lwz     r3, R13Off_m0x5dd8(r13)
    lwz     r3, 0x0(r3)
    blr

