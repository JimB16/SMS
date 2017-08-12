
.globl direct_dolby__10TGCLogoDirFv
direct_dolby__10TGCLogoDirFv: # 0x80295524
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    li      r31, 0x0
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r3
    lwz     r0, 0x1c(r3)
    cmpwi   r0, 0x1
    mr      r30, r0
    beq-    branch_0x80295598
    bge-    branch_0x80295564
    cmpwi   r0, 0x0
    bge-    branch_0x80295570
    b       branch_0x80295600

branch_0x80295564:
    cmpwi   r0, 0x3
    bge-    branch_0x80295600
    b       branch_0x802955e4

branch_0x80295570:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80295600
    li      r0, 0x0
    stw     r0, 0x24(r29)
    li      r30, 0x1
    b       branch_0x80295600

branch_0x80295598:
    lwz     r3, 0x24(r29)
    lis     r0, 0x4330
    addi    r3, r3, 0x1
    stw     r3, 0x24(r29)
    lwz     r3, 0x24(r29)
    lfd     f3, -0x630(r2)
    xoris   r3, r3, 0x8000
    lfs     f1, 0x28(r29)
    stw     r3, 0x54(sp)
    lfs     f0, -0x640(r2)
    stw     r0, 0x50(sp)
    lfd     f2, 0x50(sp)
    fsubs   f2, f2, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80295600
    li      r30, 0x2
    b       branch_0x80295600

branch_0x802955e4:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80295600
    li      r31, 0x1
branch_0x80295600:
    lwz     r0, 0x1c(r29)
    cmpwi   r0, 0x2
    beq-    branch_0x80295630
    lwz     r3, 0x2c(r29)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x80295630
    li      r30, 0x2
branch_0x80295630:
    lwz     r0, 0x1c(r29)
    cmpw    r30, r0
    beq-    branch_0x80295668
    cmpwi   r30, 0x2
    beq-    branch_0x80295648
    b       branch_0x80295664

branch_0x80295648:
    lis     r3, gpApplication@ha
    lfs     f1, -0x63c(r2)
    addi    r3, r3, gpApplication@l
    lfs     f2, -0x638(r2)
    lwz     r3, 0x34(r3)
    li      r4, 0xf
    bl      startWipe__9TSMSFaderFUlff
branch_0x80295664:
    stw     r30, 0x1c(r29)
branch_0x80295668:
    lwz     r0, 0x6c(sp)
    mr      r3, r31
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl direct_nlogo__10TGCLogoDirFv
direct_nlogo__10TGCLogoDirFv: # 0x80295688
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stmw    r27, 0x11c(sp)
    mr      r29, r3
    li      r31, 0x0
    lwz     r0, 0x1c(r3)
    cmpwi   r0, 0x2
    mr      r30, r0
    beq-    branch_0x80295970
    bge-    branch_0x802956c4
    cmpwi   r0, 0x0
    beq-    branch_0x802956d4
    bge-    branch_0x802957f0
    b       branch_0x8029598c

branch_0x802956c4:
    cmpwi   r0, 0x4
    beq-    branch_0x80295924
    bge-    branch_0x8029598c
    b       branch_0x80295904

branch_0x802956d4:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80295740
    lwz     r3, 0x40(r29)
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80295704
    li      r0, 0x3
    b       branch_0x80295708

branch_0x80295704:
    li      r0, 0x1
branch_0x80295708:
    lwz     r3, R13Off_m0x6044(r13)
    mr      r30, r0
    li      r4, 0x7914
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80295734
    li      r3, 0x7914
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80295734:
    li      r0, 0x0
    stw     r0, 0x24(r29)
    b       branch_0x8029598c

branch_0x80295740:
    lwz     r3, 0x40(r29)
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8029598c
    bl      VIGetTvFormat
    cmplwi  r3, 0x0
    bne-    branch_0x8029598c
    bl      VIGetDTVStatus
    cmplwi  r3, 0x1
    bne-    branch_0x8029598c
    bl      OSGetProgressiveMode
    cmplwi  r3, 0x1
    bne-    branch_0x80295784
    lwz     r3, 0x40(r29)
    li      r0, 0x0
    sth     r0, 0xc(r3)
    b       branch_0x8029598c

branch_0x80295784:
    lwz     r3, 0x2c(r29)
    lwz     r0, 0x18(r3)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802957e4
    lha     r3, 0x44(r29)
    addi    r0, r3, 0x1
    sth     r0, 0x44(r29)
    bl      SMSGetVSyncTimesPerSec__Fv
    lha     r3, 0x44(r29)
    lis     r0, 0x4330
    lfd     f3, -0x630(r2)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x628(r2)
    stw     r3, 0x114(sp)
    stw     r0, 0x110(sp)
    lfd     f2, 0x110(sp)
    fsubs   f2, f2, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8029598c
    lwz     r3, 0x40(r29)
    li      r0, 0x0
    sth     r0, 0xc(r3)
    b       branch_0x8029598c

branch_0x802957e4:
    li      r0, 0x0
    sth     r0, 0x44(r29)
    b       branch_0x8029598c

branch_0x802957f0:
    lwz     r3, 0x24(r29)
    lis     r28, 0x4330
    addi    r0, r3, 0x1
    stw     r0, 0x24(r29)
    lwz     r0, 0x24(r29)
    lfd     f3, -0x630(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, 0x28(r29)
    stw     r0, 0x114(sp)
    lfs     f0, -0x640(r2)
    stw     r28, 0x110(sp)
    lfd     f2, 0x110(sp)
    fsubs   f2, f2, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80295844
    li      r30, 0x2
    li      r3, 0x0
    bl      OSSetProgressiveMode
    b       branch_0x8029598c

branch_0x80295844:
    lwz     r3, 0x40(r29)
    li      r27, 0x0
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x802958ec
    bl      VIGetTvFormat
    cmplwi  r3, 0x0
    bne-    branch_0x802958ec
    bl      VIGetDTVStatus
    cmplwi  r3, 0x1
    bne-    branch_0x802958ec
    bl      OSGetProgressiveMode
    cmplwi  r3, 0x1
    bne-    branch_0x8029588c
    lwz     r3, 0x40(r29)
    sth     r27, 0xc(r3)
    li      r27, 0x1
    b       branch_0x802958ec

branch_0x8029588c:
    lwz     r3, 0x2c(r29)
    lwz     r0, 0x18(r3)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802958e8
    lha     r3, 0x44(r29)
    addi    r0, r3, 0x1
    sth     r0, 0x44(r29)
    bl      SMSGetVSyncTimesPerSec__Fv
    lha     r0, 0x44(r29)
    lfd     f3, -0x630(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x628(r2)
    stw     r0, 0x114(sp)
    stw     r28, 0x110(sp)
    lfd     f2, 0x110(sp)
    fsubs   f2, f2, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x802958ec
    lwz     r3, 0x40(r29)
    sth     r27, 0xc(r3)
    li      r27, 0x1
    b       branch_0x802958ec

branch_0x802958e8:
    sth     r27, 0x44(r29)
branch_0x802958ec:
    clrlwi. r0, r27, 24
    beq-    branch_0x8029598c
    li      r0, 0x0
    stw     r0, 0x24(r29)
    li      r30, 0x3
    b       branch_0x8029598c

branch_0x80295904:
    lwz     r3, 0x40(r29)
    lbz     r0, 0x16(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8029598c
    li      r0, 0x0
    stw     r0, 0x24(r29)
    li      r30, 0x4
    b       branch_0x8029598c

branch_0x80295924:
    lwz     r3, 0x24(r29)
    lis     r0, 0x4330
    addi    r3, r3, 0x1
    stw     r3, 0x24(r29)
    lwz     r3, 0x24(r29)
    lfd     f3, -0x630(r2)
    xoris   r3, r3, 0x8000
    lfs     f1, 0x28(r29)
    stw     r3, 0x114(sp)
    lfs     f0, -0x624(r2)
    stw     r0, 0x110(sp)
    lfd     f2, 0x110(sp)
    fsubs   f2, f2, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8029598c
    li      r30, 0x2
    b       branch_0x8029598c

branch_0x80295970:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lwz     r3, 0x34(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8029598c
    li      r31, 0x1
branch_0x8029598c:
    lwz     r0, 0x1c(r29)
    cmpwi   r0, 0x2
    beq-    branch_0x802959bc
    lwz     r3, 0x2c(r29)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x802959bc
    li      r30, 0x2
branch_0x802959bc:
    lwz     r0, 0x1c(r29)
    cmpw    r30, r0
    beq-    branch_0x802959f4
    cmpwi   r30, 0x2
    beq-    branch_0x802959d4
    b       branch_0x802959f0

branch_0x802959d4:
    lis     r3, gpApplication@ha
    lfs     f1, -0x63c(r2)
    addi    r3, r3, gpApplication@l
    lfs     f2, -0x638(r2)
    lwz     r3, 0x34(r3)
    li      r4, 0xf
    bl      startWipe__9TSMSFaderFUlff
branch_0x802959f0:
    stw     r30, 0x1c(r29)
branch_0x802959f4:
    mr      r3, r31
    lmw     r27, 0x11c(sp)
    lwz     r0, 0x134(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl direct__10TGCLogoDirFv
direct__10TGCLogoDirFv: # 0x80295a0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    li      r31, 0x1
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x6c(sp)
    bl      direct__Q26JDrama9TDirectorFv
    lwz     r0, 0x18(r30)
    cmpwi   r0, 0x1
    mr      r29, r0
    beq-    branch_0x80295b24
    bge-    branch_0x80295b38
    cmpwi   r0, 0x0
    bge-    branch_0x80295a50
    b       branch_0x80295b38

branch_0x80295a50:
    mr      r3, r30
    bl      direct_nlogo__10TGCLogoDirFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80295b38
    lwz     r3, 0x2c(r30)
    li      r4, 0x1
    lhz     r5, -0x6008(r13)
    lha     r0, 0x78(r3)
    slw     r0, r4, r0
    clrlwi  r0, r0, 16
    and.    r0, r5, r0
    beq-    branch_0x80295a88
    li      r31, 0x4
    b       branch_0x80295b38

branch_0x80295a88:
    lwz     r7, 0x40(r30)
    addi    r3, sp, 0x58
    li      r4, 0xfe
    lhz     r0, 0xc(r7)
    li      r5, 0xc9
    li      r6, 0x194
    ori     r0, r0, 0xffff
    sth     r0, 0xc(r7)
    li      r7, 0x10f
    lwz     r0, 0x30(r30)
    lwz     r8, 0x20(r30)
    stw     r0, 0x10(r8)
    bl      set__7JUTRectFiiii
    lwz     r7, 0x20(r30)
    lis     r3, gpApplication@ha
    lwz     r4, 0x58(sp)
    li      r0, 0xff
    lwz     r5, 0x5c(sp)
    addi    r3, r3, gpApplication@l
    stw     r4, 0x14(r7)
    li      r4, 0xe
    stw     r5, 0x18(r7)
    lwz     r6, 0x60(sp)
    lwz     r5, 0x64(sp)
    stw     r6, 0x1c(r7)
    stw     r5, 0x20(r7)
    stb     r0, 0x50(sp)
    stb     r0, 0x51(sp)
    stb     r0, 0x52(sp)
    stb     r0, 0x53(sp)
    lwz     r5, 0x20(r30)
    lwz     r0, 0x50(sp)
    stw     r0, 0x24(r5)
    lwz     r3, 0x34(r3)
    lfs     f1, -0x63c(r2)
    lfs     f2, -0x638(r2)
    bl      startWipe__9TSMSFaderFUlff
    li      r29, 0x1
    b       branch_0x80295b38

branch_0x80295b24:
    mr      r3, r30
    bl      direct_dolby__10TGCLogoDirFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80295b38
    li      r31, 0x4
branch_0x80295b38:
    lwz     r0, 0x18(r30)
    cmpw    r29, r0
    beq-    branch_0x80295b50
    stw     r29, 0x18(r30)
    li      r0, 0x0
    stw     r0, 0x1c(r30)
branch_0x80295b50:
    lwz     r0, 0x7c(sp)
    mr      r3, r31
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__10TGCLogoDirFv
__dt__10TGCLogoDirFv: # 0x80295b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr.     r30, r3
    beq-    branch_0x80295bf4
    lis     r3, __vvt__10TGCLogoDir@ha
    addi    r3, r3, __vvt__10TGCLogoDir@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    stw     r0, 0xc(r30)
    lwz     r3, 0x2c(r30)
    lhz     r0, 0xe2(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0xe2(r3)
    beq-    branch_0x80295be4
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
branch_0x80295be4:
    extsh.  r0, r31
    ble-    branch_0x80295bf4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80295bf4:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl setup__10TGCLogoDirFPQ26JDrama8TDisplayP13TMarioGamePad
setup__10TGCLogoDirFPQ26JDrama8TDisplayP13TMarioGamePad: # 0x80295c10
    mflr    r0
    lis     r6, unk_803a2728@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x280(sp)
    stfd    f31, 0x278(sp)
    stfd    f30, 0x270(sp)
    stfd    f29, 0x268(sp)
    stfd    f28, 0x260(sp)
    stmw    r25, 0x244(sp)
    addi    r31, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, unk_803a2728@l
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80295cec
    stw     r27, 0x10c(sp)
    addi    r4, r30, 0x20
    stw     r27, 0x1f8(sp)
    lwz     r3, 0x10c(sp)
    stw     r27, 0x18c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10c(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r25, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r25, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r26, 0x18c(sp)
    addi    r4, sp, 0x108
    addi    r3, r26, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r26)
    lis     r3, __vvt__Q26JDrama12TDStageGroup@h
    addi    r0, r3, __vvt__Q26JDrama12TDStageGroup@l
    lwz     r3, 0x1f8(sp)
    addi    r4, r30, 0x30
    stw     r0, 0x0(r3)
    addi    r26, r3, 0x20
    stw     r26, 0x104(sp)
    lwz     r3, 0x104(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x104(sp)
    li      r4, 0x0
    stw     r25, 0x0(r3)
    addi    r3, r3, 0xc
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__Q26JDrama9TFrmGXSet@h
    addi    r0, r3, __vvt__Q26JDrama9TFrmGXSet@l
    stw     r0, 0x0(r26)
    stw     r28, 0x10(r26)
branch_0x80295cec:
    stw     r27, 0x14(r31)
    li      r0, 0x1
    li      r3, 0x20
    stw     r29, 0x2c(r31)
    lwz     r4, 0x2c(r31)
    sth     r0, 0xe2(r4)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80295d60
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r27, 0x1f0(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r27)
    addi    r3, r30, 0x3c
    stw     r3, 0x4(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r27)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r27)
    li      r0, 0x0
    addi    r4, sp, 0x180
    sth     r0, 0xc(r27)
    lwz     r28, 0x1f0(sp)
    addi    r3, r28, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r28)
branch_0x80295d60:
    stw     r27, 0x10(r31)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80295dc4
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    stw     r26, 0x1ec(sp)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    stw     r0, 0x0(r26)
    addi    r3, r30, 0x4c
    stw     r3, 0x4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r26)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r26)
    li      r0, 0x0
    addi    r4, sp, 0x178
    sth     r0, 0xc(r26)
    lwz     r28, 0x1ec(sp)
    addi    r3, r28, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r0, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    stw     r0, 0x0(r28)
branch_0x80295dc4:
    addi    r25, r27, 0x10
    stw     r26, 0x228(sp)
    addi    r3, sp, 0x100
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x100(sp)
    addi    r3, sp, 0x1e8
    addi    r4, sp, 0xfc
    stw     r0, 0xfc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1e8(sp)
    addi    r5, sp, 0x174
    addi    r4, r25, 0x0
    stw     r0, 0x1e4(sp)
    addi    r3, sp, 0x170
    addi    r6, sp, 0x228
    lwz     r0, 0x1e4(sp)
    stw     r0, 0x174(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80295e40
    addi    r3, r30, 0x58
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r27, 0x0
    stw     r27, 0x28(r25)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r25)
branch_0x80295e40:
    stw     r25, 0x34(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80295e74
    addi    r3, r30, 0x7c
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r27, 0x0
    stw     r27, 0x28(r25)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r25)
branch_0x80295e74:
    stw     r25, 0x30(r31)
    li      r3, 0x28
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80295f04
    lwz     r25, 0x34(r31)
    lis     r4, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r4, __vvt__Q26JDrama8TNameRef@l
    stw     r26, 0x1dc(sp)
    addi    r3, r30, 0xa0
    stw     r0, 0x0(r26)
    stw     r3, 0x4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r26)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r26)
    li      r28, 0x0
    lis     r3, __vvt__11TNintendo2D@ha
    sth     r28, 0xc(r26)
    addi    r0, r3, __vvt__11TNintendo2D@l
    li      r4, 0x85
    lwz     r27, 0x1dc(sp)
    li      r5, 0xaa
    li      r6, 0x1fd
    stw     r0, 0x0(r27)
    addi    r3, r27, 0x14
    li      r7, 0x112
    stw     r25, 0x10(r27)
    bl      set__7JUTRectFiiii
    li      r0, 0xdc
    stb     r0, 0x24(r27)
    li      r0, 0xff
    stb     r28, 0x25(r27)
    stb     r28, 0x26(r27)
    stb     r0, 0x27(r27)
branch_0x80295f04:
    stw     r26, 0x20(r31)
    addi    r3, sp, 0xf8
    lwz     r4, 0x228(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xf8(sp)
    addi    r3, sp, 0x1d8
    addi    r4, sp, 0xf4
    stw     r0, 0xf4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1d8(sp)
    addi    r5, sp, 0x160
    addi    r4, r25, 0x0
    stw     r0, 0x1d4(sp)
    addi    r3, sp, 0x15c
    addi    r6, r31, 0x20
    lwz     r0, 0x1d4(sp)
    stw     r0, 0x160(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x130
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80295f74
    addi    r3, r25, 0x0
    addi    r5, r30, 0xac
    li      r4, 0x0
    bl      __ct__11TProgSelectFUcPCc
branch_0x80295f74:
    stw     r25, 0x40(r31)
    addi    r3, sp, 0xf0
    lwz     r0, 0x2c(r31)
    lwz     r4, 0x40(r31)
    stw     r0, 0x18(r4)
    lwz     r4, 0x40(r31)
    lhz     r0, 0xc(r4)
    ori     r0, r0, 0xffff
    sth     r0, 0xc(r4)
    lwz     r4, 0x228(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xf0(sp)
    addi    r3, sp, 0x1c0
    addi    r4, sp, 0xec
    stw     r0, 0xec(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1c0(sp)
    addi    r5, sp, 0x14c
    addi    r4, r25, 0x0
    stw     r0, 0x1bc(sp)
    addi    r3, sp, 0x148
    addi    r6, r31, 0x40
    lwz     r0, 0x1bc(sp)
    stw     r0, 0x14c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80296008
    li      r0, 0x0
    sth     r0, 0x204(sp)
    addi    r5, sp, 0x204
    addi    r3, r25, 0x0
    addi    r4, r30, 0xb8
    bl      __ct__Q26JDrama11TDStageDispFPCcQ26JDrama10TFlagT_Us_
branch_0x80296008:
    stw     r25, 0x224(sp)
    addi    r3, sp, 0xe8
    lwz     r4, 0x14(r31)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xe8(sp)
    addi    r3, sp, 0x1b4
    addi    r4, sp, 0xe4
    stw     r0, 0xe4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1b4(sp)
    addi    r5, sp, 0x13c
    addi    r4, r25, 0x0
    stw     r0, 0x1b0(sp)
    addi    r3, sp, 0x138
    addi    r6, sp, 0x224
    lwz     r0, 0x1b0(sp)
    stw     r0, 0x13c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    bl      SMSGetGCLogoRenderHeight__Fv
    clrlwi  r25, r3, 16
    bl      SMSGetGCLogoRenderWidth__Fv
    clrlwi  r6, r3, 16
    addi    r7, r25, 0x0
    addi    r3, sp, 0x214
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r3, 0x224(sp)
    bl      getEfbCtrlDisp__Q26JDrama11TDStageDispFv
    addi    r4, sp, 0x214
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    lwz     r3, 0x218(sp)
    lis     r28, 0x4330
    lwz     r0, 0x220(sp)
    lfd     f3, -0x630(r2)
    subf    r0, r3, r0
    lwz     r3, 0x214(sp)
    xoris   r4, r0, 0x8000
    lwz     r0, 0x21c(sp)
    stw     r4, 0x23c(sp)
    subf    r0, r3, r0
    lfs     f4, -0x620(r2)
    stw     r28, 0x238(sp)
    subfic  r0, r0, 0x280
    srawi   r0, r0, 1
    lfs     f1, -0x61c(r2)
    lfd     f0, 0x238(sp)
    addze   r0, r0
    fsubs   f2, f0, f3
    xoris   r0, r0, 0x8000
    stw     r0, 0x234(sp)
    li      r3, 0x40
    lfs     f0, -0x618(r2)
    fmuls   f4, f4, f2
    stw     r28, 0x230(sp)
    lfd     f2, 0x230(sp)
    fsubs   f1, f1, f4
    fmr     f30, f4
    fsubs   f29, f2, f3
    fmuls   f28, f1, f0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802961d8
    lwz     r0, 0x21c(sp)
    addi    r4, r30, 0xc8
    lwz     r3, 0x214(sp)
    stw     r27, 0xe0(sp)
    subf    r0, r3, r0
    lfd     f1, -0x630(r2)
    xoris   r0, r0, 0x8000
    lwz     r3, 0xe0(sp)
    stw     r0, 0x234(sp)
    stw     r28, 0x230(sp)
    lfd     f0, 0x230(sp)
    fsubs   f0, f0, f1
    fadds   f31, f29, f0
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r28, 0xe0(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x10
    lfs     f1, -0x638(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80296320
    li      r4, 0x0
    fadds   f0, f28, f30
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r4, 0x1c(r28)
    addi    r0, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r0, 0x20(r27)
    addi    r0, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r0, 0x20(r27)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    addi    r0, r3, 0x24
    stw     r3, 0x0(r27)
    lis     r3, __vvt__Q26JDrama10TOrthoProj@h
    addi    r3, r3, __vvt__Q26JDrama10TOrthoProj@l
    stw     r0, 0x20(r27)
    addi    r0, r3, 0x24
    sth     r4, 0x24(r27)
    lfs     f1, -0x614(r2)
    stfs    f1, 0x28(r27)
    lfs     f1, -0x628(r2)
    stfs    f1, 0x2c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    stfs    f29, 0x30(r27)
    stfs    f28, 0x34(r27)
    stfs    f31, 0x38(r27)
    stfs    f0, 0x3c(r27)
branch_0x802961d8:
    lwz     r4, 0x228(sp)
    addi    r3, sp, 0xdc
    stw     r27, 0x210(sp)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xdc(sp)
    addi    r3, sp, 0x1a4
    addi    r4, sp, 0xd8
    stw     r0, 0xd8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1a4(sp)
    addi    r5, sp, 0x128
    addi    r4, r25, 0x0
    stw     r0, 0x1a0(sp)
    addi    r3, sp, 0x124
    addi    r6, sp, 0x210
    lwz     r0, 0x1a0(sp)
    stw     r0, 0x128(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80296248
    addi    r3, r25, 0x0
    addi    r4, sp, 0x214
    addi    r5, r30, 0xd8
    bl      __ct__Q26JDrama7TScreenFRCQ26JDrama5TRectPCc
branch_0x80296248:
    stw     r25, 0x20c(sp)
    addi    r3, sp, 0xd0
    lwz     r4, 0x224(sp)
    lwz     r4, 0x14(r4)
    addi    r25, r4, 0x10
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xd0(sp)
    addi    r3, sp, 0x198
    addi    r4, sp, 0xcc
    stw     r0, 0xcc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x198(sp)
    addi    r5, sp, 0x118
    addi    r4, r25, 0x0
    stw     r0, 0x194(sp)
    addi    r3, sp, 0x114
    addi    r6, sp, 0x20c
    lwz     r0, 0x194(sp)
    stw     r0, 0x118(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x20c(sp)
    lwz     r4, 0x210(sp)
    bl      assignCamera__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    lwz     r3, 0x20c(sp)
    lwz     r4, 0x228(sp)
    bl      assignViewObj__Q26JDrama7TScreenFPQ26JDrama8TViewObj
    li      r0, 0x0
    stb     r0, 0x1fc(sp)
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    stb     r0, 0x1fd(sp)
    addi    r25, r3, 0x34
    addi    r4, sp, 0x200
    stb     r0, 0x1fe(sp)
    stb     r0, 0x1ff(sp)
    lwz     r0, 0x1fc(sp)
    stw     r0, 0x200(sp)
    lwz     r3, 0x34(r3)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    lwz     r3, 0x0(r25)
    li      r4, 0xe
    lfs     f1, -0x63c(r2)
    lfs     f2, -0x638(r2)
    bl      startWipe__9TSMSFaderFUlff
    lmw     r25, 0x244(sp)
    lwz     r0, 0x284(sp)
    lfd     f31, 0x278(sp)
    lfd     f30, 0x270(sp)
    mtlr    r0
    lfd     f29, 0x268(sp)
    lfd     f28, 0x260(sp)
    addi    sp, sp, 0x280
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80296320
set_f___Q29JGeometry8TVec3_f_Ffff_80296320: # 0x80296320
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __ct__10TGCLogoDirFv
__ct__10TGCLogoDirFv: # 0x80296330
    mflr    r0
    lis     r4, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r4, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lis     r3, unk_803a280c@h
    addi    r3, r3, unk_803a280c@l
    lwz     r30, 0x8(sp)
    stw     r0, 0x0(r30)
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JStage7TObject@h
    sth     r3, 0x8(r30)
    addi    r0, r4, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TSystem@h
    stw     r0, 0xc(r30)
    addi    r0, r3, __vvt__Q26JStage7TSystem@l
    lis     r3, __vvt__Q26JDrama9TDirector@h
    stw     r0, 0xc(r30)
    addi    r3, r3, __vvt__Q26JDrama9TDirector@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    lis     r3, __vvt__10TGCLogoDir@ha
    stw     r0, 0xc(r30)
    li      r31, 0x0
    addi    r3, r3, __vvt__10TGCLogoDir@l
    stw     r31, 0x10(r30)
    addi    r0, r3, 0x20
    stw     r31, 0x14(r30)
    stw     r3, 0x0(r30)
    stw     r0, 0xc(r30)
    stw     r31, 0x18(r30)
    stw     r31, 0x1c(r30)
    bl      SMSGetVSyncTimesPerSec__Fv
    stw     r31, 0x24(r30)
    mr      r3, r30
    stfs    f1, 0x28(r30)
    stw     r31, 0x3c(r30)
    sth     r31, 0x44(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__11TNintendo2DFUlPQ26JDrama9TGraphics
perform__11TNintendo2DFUlPQ26JDrama9TGraphics: # 0x802963f0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x802965ac
    li      r3, 0x2
    bl      GXSetCullMode
    lfs     f1, -0x638(r2)
    addi    r3, sp, 0x44
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXTrans
    addi    r3, sp, 0x44
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
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
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
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
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    lwz     r3, 0x10(r31)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTevOp
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x14(r31)
    lis     r7, 0xcc01
    lwz     r3, 0x18(r31)
    li      r6, 0x0
    extsh   r8, r0
    sth     r8, -0x8000(r7)
    extsh   r9, r3
    li      r3, 0x1
    sth     r9, -0x8000(r7)
    sth     r6, -0x8000(r7)
    lwz     r5, 0x24(r31)
    stw     r5, -0x8000(r7)
    stb     r6, -0x8000(r7)
    stb     r6, -0x8000(r7)
    lwz     r0, 0x1c(r31)
    extsh   r4, r0
    sth     r4, -0x8000(r7)
    sth     r9, -0x8000(r7)
    sth     r6, -0x8000(r7)
    stw     r5, -0x8000(r7)
    stb     r3, -0x8000(r7)
    stb     r6, -0x8000(r7)
    lwz     r0, 0x20(r31)
    sth     r4, -0x8000(r7)
    extsh   r0, r0
    sth     r0, -0x8000(r7)
    sth     r6, -0x8000(r7)
    stw     r5, -0x8000(r7)
    stb     r3, -0x8000(r7)
    stb     r3, -0x8000(r7)
    sth     r8, -0x8000(r7)
    sth     r0, -0x8000(r7)
    sth     r6, -0x8000(r7)
    stw     r5, -0x8000(r7)
    stb     r6, -0x8000(r7)
    stb     r3, -0x8000(r7)
branch_0x802965ac:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl __dt__11TNintendo2DFv
__dt__11TNintendo2DFv: # 0x802965c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80296618
    lis     r3, __vvt__11TNintendo2D@ha
    addi    r0, r3, __vvt__11TNintendo2D@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80296608
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80296608:
    extsh.  r0, r31
    ble-    branch_0x80296618
    mr      r3, r30
    bl      __dl__FPv
branch_0x80296618:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_GCLogoDir_cpp
__sinit_GCLogoDir_cpp: # 0x80296634
    mflr    r0
    lis     r3, unk_803fc6e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fc6e0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8029667c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8029667c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802966ac
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x802966ac:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802966dc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x802966dc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8029670c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8029670c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8029673c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8029673c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8029676c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8029676c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8029679c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8029679c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802967cc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x802967cc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802967fc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x802967fc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8029682c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8029682c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8029685c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8029685c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8029688c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8029688c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802968bc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x802968bc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802968ec
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x802968ec:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8029691c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8029691c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80296930
unk_80296930: # 0x80296930
    addi    r3, r3, -0xc
    b       __dt__10TGCLogoDirFv

