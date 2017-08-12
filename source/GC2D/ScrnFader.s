
.globl __dt__9TSMSFaderFv
__dt__9TSMSFaderFv: # 0x8013f5c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013f61c
    lis     r3, __vvt__9TSMSFader@ha
    addi    r0, r3, __vvt__9TSMSFader@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8013f60c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8013f60c:
    extsh.  r0, r31
    ble-    branch_0x8013f61c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013f61c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setFadeStatus__9TSMSFaderFQ29TSMSFader11EFadeStatus
setFadeStatus__9TSMSFaderFQ29TSMSFader11EFadeStatus: # 0x8013f638
    cmpwi   r4, 0x1
    beq-    branch_0x8013f650
    bgelr-    

    cmpwi   r4, 0x0
    bge-    branch_0x8013f668
    blr

branch_0x8013f650:
    stw     r4, 0x20(r3)
    li      r4, 0x0
    li      r0, 0x12
    stb     r4, 0x1b(r3)
    stw     r0, 0x24(r3)
    blr

branch_0x8013f668:
    stw     r4, 0x20(r3)
    li      r4, 0xff
    li      r0, 0x12
    stb     r4, 0x1b(r3)
    stw     r0, 0x24(r3)
    blr


.globl setDisplaySize__9TSMSFaderFii
setDisplaySize__9TSMSFaderFii: # 0x8013f680
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    addi    r4, r5, 0x0
    stwu    sp, -0x8(sp)
    bl      Hx_ResetWipe
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__9TSMSFaderFR20JSUMemoryInputStream
load__9TSMSFaderFR20JSUMemoryInputStream: # 0x8013f6a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x20(r31)
    lwz     r3, 0x24(sp)
    cmpwi   r0, 0x3
    beq-    branch_0x8013f710
    bge-    branch_0x8013f734
    cmpwi   r0, 0x0
    beq-    branch_0x8013f6f8
    b       branch_0x8013f734

branch_0x8013f6f8:
    li      r0, 0x2
    stw     r0, 0x20(r31)
    li      r0, 0x0
    sth     r0, 0x12(r31)
    sth     r3, 0x10(r31)
    b       branch_0x8013f734

branch_0x8013f710:
    li      r0, 0x2
    stw     r0, 0x20(r31)
    lhz     r4, 0x10(r31)
    lhz     r0, 0x12(r31)
    subf    r0, r0, r4
    mullw   r0, r3, r0
    divw    r0, r0, r4
    sth     r0, 0x12(r31)
    sth     r3, 0x10(r31)
branch_0x8013f734:
    addi    r3, r30, 0x0
    addi    r4, sp, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x28(sp)
    srwi    r0, r3, 24
    stb     r0, 0x2c(sp)
    extrwi  r0, r3, 8, 8
    stb     r0, 0x2d(sp)
    extrwi  r0, r3, 8, 16
    stb     r0, 0x2e(sp)
    stb     r3, 0x2f(sp)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x18(r31)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0xd2
    ble-    branch_0x8013f780
    li      r0, 0xd2
    stb     r0, 0x18(r31)
branch_0x8013f780:
    lbz     r0, 0x19(r31)
    cmplwi  r0, 0xd2
    ble-    branch_0x8013f794
    li      r0, 0xd2
    stb     r0, 0x19(r31)
branch_0x8013f794:
    lbz     r0, 0x1a(r31)
    cmplwi  r0, 0xd2
    ble-    branch_0x8013f7a8
    li      r0, 0xd2
    stb     r0, 0x1a(r31)
branch_0x8013f7a8:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl setColor__9TSMSFaderFQ28JUtility6TColor
setColor__9TSMSFaderFQ28JUtility6TColor: # 0x8013f7c0
    lwz     r0, 0x0(r4)
    stw     r0, 0x18(r3)
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0xd2
    ble-    branch_0x8013f7dc
    li      r0, 0xd2
    stb     r0, 0x18(r3)
branch_0x8013f7dc:
    lbz     r0, 0x19(r3)
    cmplwi  r0, 0xd2
    ble-    branch_0x8013f7f0
    li      r0, 0xd2
    stb     r0, 0x19(r3)
branch_0x8013f7f0:
    lbz     r0, 0x1a(r3)
    cmplwi  r0, 0xd2
    blelr-    

    li      r0, 0xd2
    stb     r0, 0x1a(r3)
    blr


.globl startFadeoutT__9TSMSFaderFf
startFadeoutT__9TSMSFaderFf: # 0x8013f808
    lbz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8013f81c
    li      r0, 0x11
    b       branch_0x8013f820

branch_0x8013f81c:
    li      r0, 0xf
branch_0x8013f820:
    stw     r0, 0x24(r3)
    stfs    f1, 0x28(r3)
    lfs     f0, -0x4ca8(r2)
    stfs    f0, 0x2c(r3)
    blr


.globl startFadeinT__9TSMSFaderFf
startFadeinT__9TSMSFaderFf: # 0x8013f834
    lbz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8013f848
    li      r0, 0x10
    b       branch_0x8013f84c

branch_0x8013f848:
    li      r0, 0xe
branch_0x8013f84c:
    stw     r0, 0x24(r3)
    stfs    f1, 0x28(r3)
    lfs     f0, -0x4ca8(r2)
    stfs    f0, 0x2c(r3)
    blr


.globl startWipe__9TSMSFaderFUlff
startWipe__9TSMSFaderFUlff: # 0x8013f860
    stw     r4, 0x24(r3)
    stfs    f1, 0x28(r3)
    stfs    f2, 0x2c(r3)
    blr


.globl requestWipe__9TSMSFaderFPQ29TSMSFader11WipeRequest
requestWipe__9TSMSFaderFPQ29TSMSFader11WipeRequest: # 0x8013f870
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x18(sp)
    stb     r0, 0x1c(r3)
    lis     r3, unk_80387790@h
    addi    r28, r3, unk_80387790@l
    lwz     r0, 0x0(r4)
    stw     r0, 0x30(r29)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x34(r29)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x14(r29)
    lwz     r0, 0x0(r4)
    fmuls   f0, f1, f0
    cmpwi   r0, 0xd
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r31, 0x14(sp)
    beq-    branch_0x8013f8e8
    bge-    branch_0x8013f920
    cmpwi   r0, 0xc
    bge-    branch_0x8013f900
    b       branch_0x8013f920

branch_0x8013f8e8:
    bl      Hx_RemoveResource
    addi    r3, r28, 0x60
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r4, 0x0
    bl      Hx_ProvideResource
    b       branch_0x8013f920

branch_0x8013f900:
    bl      Hx_RemoveResource
    addi    r3, r28, 0x40
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r4, 0x0
    bl      Hx_ProvideResource
    addi    r3, r28, 0x20
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      Hx_ProvideResourceEx
branch_0x8013f920:
    lwz     r3, 0x0(r30)
    cmpwi   r3, 0x10
    beq-    branch_0x8013f94c
    bge-    branch_0x8013f940
    cmpwi   r3, 0xe
    beq-    branch_0x8013f94c
    bge-    branch_0x8013f9a8
    b       branch_0x8013fa04

branch_0x8013f940:
    cmpwi   r3, 0x12
    bge-    branch_0x8013fa04
    b       branch_0x8013f9a8

branch_0x8013f94c:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x3
    beq-    branch_0x8013f980
    bge-    branch_0x8013fa2c
    cmpwi   r0, 0x0
    beq-    branch_0x8013f968
    b       branch_0x8013fa2c

branch_0x8013f968:
    li      r0, 0x2
    stw     r0, 0x20(r29)
    li      r0, 0x0
    sth     r0, 0x12(r29)
    sth     r31, 0x10(r29)
    b       branch_0x8013fa2c

branch_0x8013f980:
    li      r0, 0x2
    stw     r0, 0x20(r29)
    lhz     r3, 0x10(r29)
    lhz     r0, 0x12(r29)
    subf    r0, r0, r3
    mullw   r0, r31, r0
    divw    r0, r0, r3
    sth     r0, 0x12(r29)
    sth     r31, 0x10(r29)
    b       branch_0x8013fa2c

branch_0x8013f9a8:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x2
    beq-    branch_0x8013f9dc
    bge-    branch_0x8013fa2c
    cmpwi   r0, 0x1
    bge-    branch_0x8013f9c4
    b       branch_0x8013fa2c

branch_0x8013f9c4:
    li      r0, 0x3
    stw     r0, 0x20(r29)
    li      r0, 0x0
    sth     r0, 0x12(r29)
    sth     r31, 0x10(r29)
    b       branch_0x8013fa2c

branch_0x8013f9dc:
    li      r0, 0x3
    stw     r0, 0x20(r29)
    lhz     r3, 0x10(r29)
    lhz     r0, 0x12(r29)
    subf    r0, r0, r3
    mullw   r0, r31, r0
    divw    r0, r0, r3
    sth     r0, 0x12(r29)
    sth     r31, 0x10(r29)
    b       branch_0x8013fa2c

branch_0x8013fa04:
    mr      r4, r31
    bl      Hx_StartWipe
    lwz     r3, 0x0(r30)
    bl      Hx_GetWipeType
    cmpwi   r3, 0x1
    bne-    branch_0x8013fa24
    li      r0, 0x2
    b       branch_0x8013fa28

branch_0x8013fa24:
    li      r0, 0x3
branch_0x8013fa28:
    stw     r0, 0x20(r29)
branch_0x8013fa2c:
    li      r0, 0x12
    stw     r0, 0x0(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl drawFadeinout__9TSMSFaderFRCQ26JDrama5TRect
drawFadeinout__9TSMSFaderFRCQ26JDrama5TRect: # 0x8013fa54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x78(sp)
    mr      r30, r3
    lwz     r0, 0x30(r3)
    cmpwi   r0, 0x10
    bge-    branch_0x8013fa88
    cmpwi   r0, 0xe
    bge-    branch_0x8013fa94
    b       branch_0x8013fc70

branch_0x8013fa88:
    cmpwi   r0, 0x12
    bge-    branch_0x8013fc70
    b       branch_0x8013fb84

branch_0x8013fa94:
    lbz     r0, 0x1b(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8013fc70
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
    lfs     f1, -0x4ca8(r2)
    addi    r3, sp, 0x40
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXTrans
    addi    r3, sp, 0x40
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
    lwz     r0, 0x18(r30)
    addi    r4, sp, 0x74
    addi    r3, r31, 0x0
    stw     r0, 0x74(sp)
    bl      fill_rect__9_unnamed_FRCQ26JDrama5TRectQ28JUtility6TColor
    b       branch_0x8013fc70

branch_0x8013fb84:
    lbz     r0, 0x1b(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8013fc70
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
    lfs     f1, -0x4ca8(r2)
    addi    r3, sp, 0x10
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXTrans
    addi    r3, sp, 0x10
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
    lwz     r0, 0x18(r30)
    addi    r4, sp, 0x70
    addi    r3, r31, 0x0
    stw     r0, 0x70(sp)
    bl      draw_wipe_box__9_unnamed_FRCQ26JDrama5TRectQ28JUtility6TColor
branch_0x8013fc70:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl draw__9TSMSFaderFRCQ26JDrama5TRect
draw__9TSMSFaderFRCQ26JDrama5TRect: # 0x8013fc88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8013fe0c
    bge-    branch_0x8013fdb4
    cmpwi   r0, 0x0
    bge-    branch_0x8013fcc0
    b       branch_0x8013fdb4

branch_0x8013fcc0:
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
    lfs     f1, -0x4ca8(r2)
    addi    r3, sp, 0x10
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXTrans
    addi    r3, sp, 0x10
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
    lwz     r3, 0x18(r30)
    li      r0, 0xff
    addi    r4, sp, 0x40
    stw     r3, 0x44(sp)
    mr      r3, r31
    stb     r0, 0x47(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x40(sp)
    bl      fill_rect__9_unnamed_FRCQ26JDrama5TRectQ28JUtility6TColor
    b       branch_0x8013fe0c

branch_0x8013fdb4:
    lwz     r0, 0x30(r30)
    cmpwi   r0, 0x12
    bge-    branch_0x8013fddc
    cmpwi   r0, 0xe
    bge-    branch_0x8013fdcc
    b       branch_0x8013fddc

branch_0x8013fdcc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      drawFadeinout__9TSMSFaderFRCQ26JDrama5TRect
    b       branch_0x8013fe0c

branch_0x8013fddc:
    lfs     f1, 0x14(r30)
    bl      Hx_UpdateWipe
    cmplwi  r3, 0x3
    bne-    branch_0x8013fe0c
    lwz     r3, 0x30(r30)
    bl      Hx_GetWipeType
    cmpwi   r3, 0x0
    beq-    branch_0x8013fe04
    li      r0, 0x1
    b       branch_0x8013fe08

branch_0x8013fe04:
    li      r0, 0x0
branch_0x8013fe08:
    stw     r0, 0x20(r30)
branch_0x8013fe0c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl update__9TSMSFaderFv
update__9TSMSFaderFv: # 0x8013fe24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x12
    beq-    branch_0x8013fe90
    lfs     f1, -0x4ca4(r2)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x2c(r31)
    fdivs   f1, f1, f0
    lfs     f0, -0x4ca8(r2)
    fsubs   f2, f2, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x8013fe68
    fmr     f2, f0
branch_0x8013fe68:
    stfs    f2, 0x2c(r31)
    lfs     f0, -0x4ca8(r2)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8013fe90
    addi    r3, r31, 0x0
    addi    r4, r31, 0x24
    bl      requestWipe__9TSMSFaderFPQ29TSMSFader11WipeRequest
    li      r0, 0x12
    stw     r0, 0x24(r31)
branch_0x8013fe90:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8013fea4
    li      r0, 0xff
    stb     r0, 0x1b(r31)
branch_0x8013fea4:
    lwz     r0, 0x30(r31)
    cmpwi   r0, 0x12
    bge-    branch_0x8013ff6c
    cmpwi   r0, 0xe
    bge-    branch_0x8013febc
    b       branch_0x8013ff6c

branch_0x8013febc:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8013fef0
    bge-    branch_0x8013fed8
    cmpwi   r0, 0x0
    beq-    branch_0x8013fee4
    b       branch_0x8013ff6c

branch_0x8013fed8:
    cmpwi   r0, 0x4
    bge-    branch_0x8013ff6c
    b       branch_0x8013ff30

branch_0x8013fee4:
    li      r0, 0xff
    stb     r0, 0x1b(r31)
    b       branch_0x8013ff6c

branch_0x8013fef0:
    lhz     r3, 0x12(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x12(r31)
    mulli   r4, r3, 0xff
    lhz     r3, 0x10(r31)
    addi    r0, r3, 0x1
    divw    r0, r4, r0
    subfic  r0, r0, 0xff
    stb     r0, 0x1b(r31)
    lhz     r3, 0x12(r31)
    lhz     r0, 0x10(r31)
    cmplw   r3, r0
    ble-    branch_0x8013ff6c
    li      r0, 0x1
    stw     r0, 0x20(r31)
    b       branch_0x8013ff6c

branch_0x8013ff30:
    lhz     r3, 0x12(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x12(r31)
    clrlwi  r0, r0, 16
    mulli   r4, r0, 0xff
    lhz     r3, 0x10(r31)
    addi    r0, r3, 0x1
    divw    r0, r4, r0
    stb     r0, 0x1b(r31)
    lhz     r3, 0x12(r31)
    lhz     r0, 0x10(r31)
    cmplw   r3, r0
    ble-    branch_0x8013ff6c
    li      r0, 0x0
    stw     r0, 0x20(r31)
branch_0x8013ff6c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl perform__9TSMSFaderFUlPQ26JDrama9TGraphics
perform__9TSMSFaderFUlPQ26JDrama9TGraphics: # 0x8013ff80
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8013ffb8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
branch_0x8013ffb8:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x8013fff0
    addi    r3, sp, 0x18
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x280
    li      r7, 0x1e0
    bl      set__7JUTRectFiiii
    lwz     r12, 0x0(r30)
    mr      r3, r30
    addi    r4, sp, 0x18
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
branch_0x8013fff0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __ct__9TSMSFaderFQ28JUtility6TColorfPCc
__ct__9TSMSFaderFQ28JUtility6TColorfPCc: # 0x80140008
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r31, 0x8(sp)
    mr      r3, r5
    stw     r0, 0x0(r31)
    stw     r5, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r6, 0x0
    lis     r3, __vvt__9TSMSFader@ha
    sth     r6, 0xc(r31)
    addi    r3, r3, __vvt__9TSMSFader@l
    li      r0, 0xe
    stw     r3, 0x0(r31)
    li      r3, 0x280
    li      r4, 0x1e0
    sth     r6, 0x10(r31)
    sth     r6, 0x12(r31)
    stfs    f31, 0x14(r31)
    lwz     r5, 0x0(r30)
    stw     r5, 0x18(r31)
    stb     r6, 0x1c(r31)
    stw     r6, 0x20(r31)
    stw     r0, 0x30(r31)
    lfs     f0, -0x4ca8(r2)
    stfs    f0, 0x34(r31)
    bl      Hx_ResetWipe
    li      r0, 0x12
    stw     r0, 0x24(r31)
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl draw_wipe_box__9_unnamed_FRCQ26JDrama5TRectQ28JUtility6TColor
draw_wipe_box__9_unnamed_FRCQ26JDrama5TRectQ28JUtility6TColor: # 0x801400cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r4, 0x0
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
    lbz     r0, 0x3(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x80140160
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    b       branch_0x80140174

branch_0x80140160:
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
branch_0x80140174:
    lwz     r6, 0xc(r31)
    lis     r4, 0x4330
    lwz     r9, 0x4(r31)
    addi    r3, sp, 0x44
    lwz     r8, 0x8(r31)
    subf    r0, r9, r6
    lwz     r10, 0x0(r31)
    srawi   r5, r0, 1
    lbz     r7, 0x3(r30)
    subf    r0, r10, r8
    lfd     f3, -0x4c98(r2)
    mullw   r5, r7, r5
    lfs     f2, -0x4ca0(r2)
    srawi   r0, r0, 1
    mullw   r0, r7, r0
    xoris   r5, r5, 0x8000
    stw     r5, 0x84(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x74(sp)
    stw     r4, 0x80(sp)
    stw     r4, 0x70(sp)
    lfd     f1, 0x80(sp)
    lfd     f0, 0x70(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fdivs   f1, f1, f2
    fctiwz  f1, f1
    fdivs   f0, f0, f2
    stfd    f1, 0x78(sp)
    stfd    f1, 0x60(sp)
    lwz     r4, 0x7c(sp)
    lwz     r0, 0x64(sp)
    fctiwz  f0, f0
    subf    r7, r4, r6
    add     r5, r9, r0
    stfd    f0, 0x68(sp)
    stfd    f0, 0x58(sp)
    lwz     r4, 0x6c(sp)
    lwz     r0, 0x5c(sp)
    subf    r6, r4, r8
    add     r4, r10, r0
    bl      set__7JUTRectFiiii
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x10
    bl      GXBegin
    lwz     r0, 0x0(r31)
    lis     r8, 0xcc01
    lwz     r3, 0x4(r31)
    li      r7, 0x0
    extsh   r9, r0
    sth     r9, -0x8000(r8)
    extsh   r10, r3
    lwz     r0, 0x44(sp)
    li      r6, 0xff
    sth     r10, -0x8000(r8)
    extsh   r3, r0
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    lwz     r0, 0x4c(sp)
    extsh   r5, r0
    sth     r5, -0x8000(r8)
    sth     r10, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    lwz     r0, 0x48(sp)
    sth     r5, -0x8000(r8)
    extsh   r11, r0
    sth     r11, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r9, -0x8000(r8)
    sth     r11, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r5, -0x8000(r8)
    sth     r10, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    lwz     r0, 0x8(r31)
    extsh   r4, r0
    sth     r4, -0x8000(r8)
    sth     r10, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    lwz     r0, 0x50(sp)
    sth     r4, -0x8000(r8)
    extsh   r0, r0
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r5, -0x8000(r8)
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r3, -0x8000(r8)
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r4, -0x8000(r8)
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    lwz     r0, 0xc(r31)
    sth     r4, -0x8000(r8)
    extsh   r0, r0
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r3, -0x8000(r8)
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r9, -0x8000(r8)
    sth     r11, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r3, -0x8000(r8)
    sth     r11, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r3, -0x8000(r8)
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    sth     r9, -0x8000(r8)
    sth     r0, -0x8000(r8)
    sth     r7, -0x8000(r8)
    stw     r6, -0x8000(r8)
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl fill_rect__9_unnamed_FRCQ26JDrama5TRectQ28JUtility6TColor
fill_rect__9_unnamed_FRCQ26JDrama5TRectQ28JUtility6TColor: # 0x80140390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
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
    lbz     r0, 0x3(r31)
    cmplwi  r0, 0xff
    bne-    branch_0x80140424
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    b       branch_0x80140438

branch_0x80140424:
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
branch_0x80140438:
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
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __sinit_ScrnFader_cpp
__sinit_ScrnFader_cpp: # 0x801404cc
    mflr    r0
    lis     r3, unk_803f3d38@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f3d38@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80140514
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80140514:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80140544
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80140544:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80140574
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80140574:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801405a4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801405a4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801405d4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801405d4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80140604
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80140604:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80140634
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80140634:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80140664
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80140664:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80140694
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80140694:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801406c4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801406c4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801406f4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801406f4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80140724
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80140724:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80140754
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80140754:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80140784
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80140784:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801407b4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801407b4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

