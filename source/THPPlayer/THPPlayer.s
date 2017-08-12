
.globl THPPlayerSetVolume
THPPlayerSetVolume: # 0x8001e608
    mflr    r0
    lis     r5, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, ActivePlayer@l
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    lwz     r0, 0xa0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001e720
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001e720
    bl      AIGetDSPSampleRate
    cmplwi  r3, 0x0
    bne-    branch_0x8001e660
    li      r30, 0x20
    b       branch_0x8001e664

branch_0x8001e660:
    li      r30, 0x30
branch_0x8001e664:
    cmpwi   r28, 0x7f
    ble-    branch_0x8001e670
    li      r28, 0x7f
branch_0x8001e670:
    cmpwi   r28, 0x0
    bge-    branch_0x8001e67c
    li      r28, 0x0
branch_0x8001e67c:
    lis     r3, unk_0000ea60@ha
    addi    r0, r3, unk_0000ea60@l
    cmpw    r29, r0
    ble-    branch_0x8001e690
    mr      r29, r0
branch_0x8001e690:
    cmpwi   r29, 0x0
    bge-    branch_0x8001e69c
    li      r29, 0x0
branch_0x8001e69c:
    bl      OSDisableInterrupts
    xoris   r0, r28, 0x8000
    lfd     f2, -0x79d0(r2)
    stw     r0, 0x14(sp)
    lis     r4, 0x4330
    cmpwi   r29, 0x0
    stw     r4, 0x10(sp)
    addi    r5, r31, 0xe0
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0xe0(r31)
    beq-    branch_0x8001e704
    mullw   r0, r30, r29
    stw     r0, 0xe8(r31)
    lwz     r0, 0xe8(r31)
    lfs     f1, 0x0(r5)
    xoris   r0, r0, 0x8000
    lfs     f0, 0xdc(r31)
    stw     r0, 0x14(sp)
    fsubs   f1, f1, f0
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    stfs    f0, 0xe4(r31)
    b       branch_0x8001e714

branch_0x8001e704:
    li      r0, 0x0
    stw     r0, 0xe8(r31)
    lfs     f0, 0x0(r5)
    stfs    f0, 0xdc(r31)
branch_0x8001e714:
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x8001e724

branch_0x8001e720:
    li      r3, 0x0
branch_0x8001e724:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl MixAudio__FPsPsUl
MixAudio__FPsPsUl: # 0x8001e744
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r30, r4, ActivePlayer@l
    lwz     r0, 0xa0(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x8001e900
    lbz     r0, 0xa5(r30)
    cmplwi  r0, 0x2
    bne-    branch_0x8001e900
    lbz     r0, 0xa7(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8001e900
    lis     r4, VolumeTable@ha
    addi    r27, r5, 0x0
    addi    r26, r3, 0x0
    addi    r28, r30, 0xe8
    addi    r31, r4, VolumeTable@l
    addi    r29, r30, 0xfc
branch_0x8001e798:
    lwz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8001e7d8
    li      r3, 0x0
    bl      PopDecodedAudioBuffer
    cmplwi  r3, 0x0
    stw     r3, 0x0(r29)
    bne-    branch_0x8001e7cc
    addi    r3, r26, 0x0
    slwi    r5, r27, 2
    li      r4, 0x0
    bl      memset
    b       branch_0x8001e90c

branch_0x8001e7cc:
    lwz     r3, 0xf4(r30)
    addi    r0, r3, 0x1
    stw     r0, 0xf4(r30)
branch_0x8001e7d8:
    lwz     r3, 0x0(r29)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq+    branch_0x8001e798
    cmplw   r0, r27
    blt-    branch_0x8001e7f8
    mr      r4, r27
    b       branch_0x8001e7fc

branch_0x8001e7f8:
    mr      r4, r0
branch_0x8001e7fc:
    cmplwi  r4, 0x0
    mtctr   r4
    lwz     r5, 0x4(r3)
    ble-    branch_0x8001e8bc
branch_0x8001e80c:
    lwz     r3, 0x0(r28)
    cmpwi   r3, 0x0
    beq-    branch_0x8001e834
    addi    r0, r3, -0x1
    stw     r0, 0x0(r28)
    lfs     f1, 0xdc(r30)
    lfs     f0, 0xe4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xdc(r30)
    b       branch_0x8001e83c

branch_0x8001e834:
    lfs     f0, 0xe0(r30)
    stfs    f0, 0xdc(r30)
branch_0x8001e83c:
    lfs     f0, 0xdc(r30)
    lha     r0, 0x0(r5)
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    slwi    r3, r3, 1
    add     r3, r31, r3
    lhz     r3, 0x0(r3)
    mullw   r0, r3, r0
    srawi   r0, r0, 15
    cmpwi   r0, -0x8000
    bge-    branch_0x8001e870
    li      r0, -0x8000
branch_0x8001e870:
    cmpwi   r0, 0x7fff
    ble-    branch_0x8001e87c
    li      r0, 0x7fff
branch_0x8001e87c:
    extsh   r0, r0
    sth     r0, 0x0(r26)
    lha     r0, 0x2(r5)
    mullw   r0, r3, r0
    srawi   r0, r0, 15
    cmpwi   r0, -0x8000
    bge-    branch_0x8001e89c
    li      r0, -0x8000
branch_0x8001e89c:
    cmpwi   r0, 0x7fff
    ble-    branch_0x8001e8a8
    li      r0, 0x7fff
branch_0x8001e8a8:
    extsh   r0, r0
    sth     r0, 0x2(r26)
    addi    r26, r26, 0x4
    addi    r5, r5, 0x4
    bdnz+      branch_0x8001e80c
branch_0x8001e8bc:
    lwz     r3, 0x0(r29)
    subf    r27, r4, r27
    lwz     r0, 0x8(r3)
    subf    r0, r4, r0
    stw     r0, 0x8(r3)
    lwz     r3, 0x0(r29)
    stw     r5, 0x4(r3)
    lwz     r3, 0x0(r29)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8001e8f4
    bl      PushFreeAudioBuffer
    li      r0, 0x0
    stw     r0, 0x0(r29)
branch_0x8001e8f4:
    cmplwi  r27, 0x0
    beq-    branch_0x8001e90c
    b       branch_0x8001e798

branch_0x8001e900:
    slwi    r5, r5, 2
    li      r4, 0x0
    bl      memset
branch_0x8001e90c:
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl THPPlayerDrawDone
THPPlayerDrawDone: # 0x8001e920
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      GXDrawDone
    lwz     r0, R13Off_m0x7140(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8001e980
    lis     r3, UsedTextureSetQueue@ha
    addi    r31, r3, UsedTextureSetQueue@l
branch_0x8001e948:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    li      r5, 0x0
    bl      OSReceiveMessage
    cmpwi   r3, 0x1
    bne-    branch_0x8001e968
    lwz     r0, 0x8(sp)
    b       branch_0x8001e96c

branch_0x8001e968:
    li      r0, 0x0
branch_0x8001e96c:
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8001e980
    bl      PushFreeTextureSet
    b       branch_0x8001e948

branch_0x8001e980:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl THPPlayerGetState
THPPlayerGetState: # 0x8001e994
    lis     r3, ActivePlayer@ha
    addi    r3, r3, ActivePlayer@l
    lbz     r3, 0xa4(r3)
    blr


.globl THPPlayerGetAudioInfo
THPPlayerGetAudioInfo: # 0x8001e9a4
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, ActivePlayer@l
    stwu    sp, -0x8(sp)
    lwz     r0, 0xa0(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8001e9d8
    addi    r4, r4, 0x8c
    li      r5, 0x10
    bl      memcpy
    li      r3, 0x1
    b       branch_0x8001e9dc

branch_0x8001e9d8:
    li      r3, 0x0
branch_0x8001e9dc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl THPPlayerGetVideoInfo
THPPlayerGetVideoInfo: # 0x8001e9ec
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, ActivePlayer@l
    stwu    sp, -0x8(sp)
    lwz     r0, 0xa0(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8001ea20
    addi    r4, r4, 0x80
    li      r5, 0xc
    bl      memcpy
    li      r3, 0x1
    b       branch_0x8001ea24

branch_0x8001ea20:
    li      r3, 0x0
branch_0x8001ea24:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl THPPlayerDrawCurrentFrame
THPPlayerDrawCurrentFrame: # 0x8001ea34
    mflr    r0
    lis     r8, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r31, r8, ActivePlayer@l
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    lwz     r0, 0xa0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001eae8
    lbz     r0, 0xa4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001eae8
    addi    r30, r31, 0xf8
    lwz     r0, 0xf8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001eae8
    bl      THPGXYuv2RgbSetup
    lwz     r5, 0x0(r30)
    extsh   r0, r29
    extsh   r6, r26
    stw     r0, 0x8(sp)
    extsh   r7, r27
    extsh   r10, r28
    lwz     r4, 0x80(r31)
    lwz     r0, 0x84(r31)
    lwz     r3, 0x0(r5)
    extsh   r8, r4
    lwz     r4, 0x4(r5)
    extsh   r9, r0
    lwz     r5, 0x8(r5)
    bl      THPGXYuv2RgbDraw
    bl      THPGXRestore
    lwz     r3, 0x0(r30)
    lwz     r0, 0xc0(r31)
    lwz     r4, 0xc(r3)
    lwz     r3, 0x50(r31)
    add     r4, r4, r0
    divwu   r0, r4, r3
    mullw   r0, r0, r3
    subf    r3, r0, r4
    b       branch_0x8001eaec

branch_0x8001eae8:
    li      r3, -0x1
branch_0x8001eaec:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl ProperTimingForGettingNextFrame__Fv
ProperTimingForGettingNextFrame__Fv: # 0x8001eb00
    mflr    r0
    lis     r3, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, ActivePlayer@l
    stw     r30, 0x10(sp)
    lwz     r3, 0x88(r31)
    clrlwi. r0, r3, 31
    beq-    branch_0x8001eb3c
    bl      VIGetNextField
    cmplwi  r3, 0x0
    bne-    branch_0x8001ec08
    li      r3, 0x1
    b       branch_0x8001ec0c

branch_0x8001eb3c:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8001eb58
    bl      VIGetNextField
    cmplwi  r3, 0x1
    bne-    branch_0x8001ec08
    li      r3, 0x1
    b       branch_0x8001ec0c

branch_0x8001eb58:
    lfs     f1, -0x79c8(r2)
    lfs     f0, 0x4c(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x8(sp)
    lwz     r30, 0xc(sp)
    bl      VIGetTvFormat
    cmplwi  r3, 0x1
    bne-    branch_0x8001ebb4
    lwz     r6, 0xcc(r31)
    srawi   r4, r30, 31
    lwz     r3, 0xc8(r31)
    li      r5, 0x0
    mulhwu  r0, r6, r30
    mullw   r3, r3, r30
    add     r3, r3, r0
    mullw   r0, r6, r4
    mullw   r4, r6, r30
    add     r3, r3, r0
    li      r6, 0x1388
    bl      __div2i
    stw     r4, 0xd4(r31)
    b       branch_0x8001ebe8

branch_0x8001ebb4:
    lwz     r6, 0xcc(r31)
    srawi   r4, r30, 31
    lwz     r3, 0xc8(r31)
    li      r5, 0x0
    mulhwu  r0, r6, r30
    mullw   r3, r3, r30
    add     r3, r3, r0
    mullw   r0, r6, r4
    mullw   r4, r6, r30
    add     r3, r3, r0
    li      r6, 0x176a
    bl      __div2i
    stw     r4, 0xd4(r31)
branch_0x8001ebe8:
    addi    r4, r31, 0xd0
    lwz     r3, 0xd4(r31)
    lwz     r0, 0xd0(r31)
    cmpw    r0, r3
    beq-    branch_0x8001ec08
    stw     r3, 0x0(r4)
    li      r3, 0x1
    b       branch_0x8001ec0c

branch_0x8001ec08:
    li      r3, 0x0
branch_0x8001ec0c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl PlayControl__FUl
PlayControl__FUl: # 0x8001ec24
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r31, r4, ActivePlayer@l
    lwz     r12, R13Off_m0x7138(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x8001ec50
    mtlr    r12
    blrl
branch_0x8001ec50:
    lwz     r0, 0xa0(r31)
    li      r29, -0x1
    cmpwi   r0, 0x0
    beq-    branch_0x8001eed4
    addi    r30, r31, 0xa4
    lbz     r0, 0xa4(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8001eed4
    lwz     r0, 0xa8(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8001ec88
    lwz     r0, 0xac(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001ec98
branch_0x8001ec88:
    li      r0, 0x5
    stb     r0, 0xa5(r31)
    stb     r0, 0x0(r30)
    b       branch_0x8001eed4

branch_0x8001ec98:
    lwz     r0, 0xcc(r31)
    li      r28, 0x1
    lwz     r3, 0xc8(r31)
    li      r4, 0x0
    addc    r0, r0, r28
    stw     r0, 0xcc(r31)
    adde    r0, r3, r4
    addi    r27, r31, 0xc8
    stw     r0, 0xc8(r31)
    lwz     r5, 0xc8(r31)
    lwz     r6, 0xcc(r31)
    xor     r0, r5, r4
    xor     r3, r6, r4
    or.     r0, r3, r0
    bne-    branch_0x8001ed90
    lwz     r3, 0x88(r31)
    clrlwi. r0, r3, 31
    beq-    branch_0x8001ecf0
    bl      VIGetNextField
    cmplwi  r3, 0x0
    bne-    branch_0x8001ed0c
    b       branch_0x8001ed10

branch_0x8001ecf0:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8001ed10
    bl      VIGetNextField
    cmplwi  r3, 0x1
    bne-    branch_0x8001ed0c
    b       branch_0x8001ed10

branch_0x8001ed08:
    b       branch_0x8001ed10

branch_0x8001ed0c:
    li      r28, 0x0
branch_0x8001ed10:
    cmpwi   r28, 0x0
    beq-    branch_0x8001ed80
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001ed70
    addi    r27, r31, 0xf0
    lwz     r3, 0xf4(r31)
    lwz     r0, 0xf0(r31)
    subf    r0, r3, r0
    cmpwi   r0, 0x1
    bgt-    branch_0x8001ed64
    li      r3, 0x0
    bl      PopDecodedTextureSet
    lwz     r4, 0xd8(r31)
    addi    r29, r3, 0x0
    addi    r0, r4, -0x1
    stw     r0, 0xd8(r31)
    lwz     r3, 0x0(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r27)
    b       branch_0x8001ee0c

branch_0x8001ed64:
    li      r0, 0x2
    stb     r0, 0xa5(r31)
    b       branch_0x8001ee0c

branch_0x8001ed70:
    li      r3, 0x0
    bl      PopDecodedTextureSet
    mr      r29, r3
    b       branch_0x8001ee0c

branch_0x8001ed80:
    li      r0, -0x1
    stw     r0, 0x4(r27)
    stw     r0, 0x0(r27)
    b       branch_0x8001ee0c

branch_0x8001ed90:
    xor     r3, r6, r28
    xor     r0, r5, r4
    or.     r0, r3, r0
    bne-    branch_0x8001eda8
    li      r0, 0x2
    stb     r0, 0xa5(r31)
branch_0x8001eda8:
    bl      ProperTimingForGettingNextFrame__Fv
    cmpwi   r3, 0x0
    beq-    branch_0x8001ee0c
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001ee00
    addi    r27, r31, 0xf0
    lwz     r3, 0xf4(r31)
    lwz     r0, 0xf0(r31)
    subf    r0, r3, r0
    cmpwi   r0, 0x1
    bgt-    branch_0x8001ee0c
    li      r3, 0x0
    bl      PopDecodedTextureSet
    lwz     r4, 0xd8(r31)
    addi    r29, r3, 0x0
    addi    r0, r4, -0x1
    stw     r0, 0xd8(r31)
    lwz     r3, 0x0(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r27)
    b       branch_0x8001ee0c

branch_0x8001ee00:
    li      r3, 0x0
    bl      PopDecodedTextureSet
    mr      r29, r3
branch_0x8001ee0c:
    cmplwi  r29, 0x0
    beq-    branch_0x8001ee40
    addis   r0, r29, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8001ee40
    addi    r27, r31, 0xf8
    lwz     r4, 0xf8(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8001ee3c
    addi    r3, r31, 0x240
    li      r5, 0x0
    bl      OSSendMessage
branch_0x8001ee3c:
    stw     r29, 0x0(r27)
branch_0x8001ee40:
    lbz     r0, 0xa6(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x8001eed4
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001ee8c
    lwz     r4, 0xf4(r31)
    lwz     r3, 0xc0(r31)
    lwz     r0, 0x50(r31)
    add     r3, r4, r3
    cmplw   r3, r0
    bne-    branch_0x8001eed4
    lwz     r0, 0xfc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8001eed4
    li      r0, 0x3
    stb     r0, 0xa5(r31)
    stb     r0, 0x0(r30)
    b       branch_0x8001eed4

branch_0x8001ee8c:
    lwz     r3, 0xf8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8001eea8
    lwz     r3, 0xc(r3)
    lwz     r0, 0xc0(r31)
    add     r4, r3, r0
    b       branch_0x8001eeb0

branch_0x8001eea8:
    lwz     r3, 0xc0(r31)
    addi    r4, r3, -0x1
branch_0x8001eeb0:
    lwz     r3, 0x50(r31)
    addi    r0, r3, -0x1
    cmplw   r4, r0
    bne-    branch_0x8001eed4
    cmplwi  r29, 0x0
    bne-    branch_0x8001eed4
    li      r0, 0x3
    stb     r0, 0xa5(r31)
    stb     r0, 0x0(r30)
branch_0x8001eed4:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl THPPlayerPause
THPPlayerPause: # 0x8001eee8
    lis     r3, ActivePlayer@ha
    addi    r3, r3, ActivePlayer@l
    lwz     r0, 0xa0(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8001ef20
    addi    r4, r3, 0xa4
    lbz     r0, 0xa4(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x8001ef20
    li      r0, 0x4
    stb     r0, 0xa5(r3)
    li      r3, 0x1
    stb     r0, 0x0(r4)
    blr

branch_0x8001ef20:
    li      r3, 0x0
    blr


.globl THPPlayerStop
THPPlayerStop: # 0x8001ef28
    mflr    r0
    lis     r3, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, ActivePlayer@l
    lwz     r0, 0xa0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001efec
    addi    r3, r31, 0xa4
    lbz     r0, 0xa4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001efec
    li      r0, 0x0
    stb     r0, 0xa5(r31)
    stb     r0, 0x0(r3)
    lwz     r3, R13Off_m0x7138(r13)
    bl      VISetPostRetraceCallback
    lwz     r0, 0xb0(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8001ef88
    mr      r3, r31
    bl      DVDCancel
    bl      ReadThreadCancel
branch_0x8001ef88:
    bl      VideoDecodeThreadCancel
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001efa8
    bl      AudioDecodeThreadCancel
    li      r3, 0x0
    li      r4, 0x0
    bl      registerMixCallback__Q28JASystem6KernelFPFl_PsUc
branch_0x8001efa8:
    addi    r3, r31, 0x240
    addi    r4, sp, 0x8
    li      r5, 0x0
    bl      OSReceiveMessage
    cmpwi   r3, 0x1
    bne-    branch_0x8001efc8
    lwz     r0, 0x8(sp)
    b       branch_0x8001efcc

branch_0x8001efc8:
    li      r0, 0x0
branch_0x8001efcc:
    cmplwi  r0, 0x0
    bne+    branch_0x8001efa8
    lfs     f0, 0xe0(r31)
    li      r0, 0x0
    stfs    f0, 0xdc(r31)
    stw     r0, 0xe8(r31)
    stw     r0, 0xa8(r31)
    stw     r0, 0xac(r31)
branch_0x8001efec:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl THPPlayerPlay
THPPlayerPlay: # 0x8001f000
    lis     r3, ActivePlayer@ha
    addi    r5, r3, ActivePlayer@l
    lwz     r0, 0xa0(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f054
    addi    r3, r5, 0xa4
    lbz     r0, 0xa4(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x8001f02c
    cmplwi  r0, 0x4
    bne-    branch_0x8001f054
branch_0x8001f02c:
    li      r0, 0x2
    stb     r0, 0x0(r3)
    li      r4, 0x0
    li      r0, -0x1
    stw     r4, 0xd0(r5)
    li      r3, 0x1
    stw     r4, 0xd4(r5)
    stw     r0, 0xcc(r5)
    stw     r0, 0xc8(r5)
    blr

branch_0x8001f054:
    li      r3, 0x0
    blr


.globl THPPlayerPrepare
THPPlayerPrepare: # 0x8001f05c
    mflr    r0
    lis     r6, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r31, r6, ActivePlayer@l
    addi    r26, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0xa0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f2b4
    addi    r30, r31, 0xa4
    lbz     r0, 0xa4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8001f2b4
    cmpwi   r26, 0x0
    ble-    branch_0x8001f120
    lwz     r3, 0x60(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8001f0b8
    li      r3, 0x0
    b       branch_0x8001f2b8

branch_0x8001f0b8:
    lwz     r0, 0x50(r31)
    cmplw   r0, r26
    ble-    branch_0x8001f118
    addi    r0, r26, -0x1
    slwi    r0, r0, 2
    add     r6, r3, r0
    addi    r3, r31, 0x0
    addi    r4, r31, 0x1e0
    li      r5, 0x20
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x8001f0f4
    li      r3, 0x0
    b       branch_0x8001f2b8

branch_0x8001f0f4:
    lwz     r0, 0x64(r31)
    lwz     r3, 0x1e0(r31)
    add     r0, r0, r3
    stw     r0, 0xb8(r31)
    stw     r26, 0xc0(r31)
    lwz     r0, 0x1e4(r31)
    subf    r0, r3, r0
    stw     r0, 0xbc(r31)
    b       branch_0x8001f134

branch_0x8001f118:
    li      r3, 0x0
    b       branch_0x8001f2b8

branch_0x8001f120:
    lwz     r0, 0x64(r31)
    stw     r0, 0xb8(r31)
    lwz     r0, 0x54(r31)
    stw     r0, 0xbc(r31)
    stw     r26, 0xc0(r31)
branch_0x8001f134:
    addi    r27, r31, 0xa7
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001f164
    cmpwi   r29, 0x0
    blt-    branch_0x8001f158
    lwz     r0, 0x98(r31)
    cmplw   r29, r0
    blt-    branch_0x8001f160
branch_0x8001f158:
    li      r3, 0x0
    b       branch_0x8001f2b8

branch_0x8001f160:
    stw     r29, 0xec(r31)
branch_0x8001f164:
    clrlwi  r28, r28, 31
    stb     r28, 0xa6(r31)
    li      r0, 0x0
    addi    r26, r31, 0xb0
    stw     r0, 0xd8(r31)
    lwz     r0, 0xb0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f1f0
    addi    r28, r31, 0xb4
    lwz     r5, 0x58(r31)
    addi    r29, r31, 0x64
    lwz     r4, 0xb4(r31)
    lwz     r6, 0x64(r31)
    addi    r3, r31, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x8001f1b4
    li      r3, 0x0
    b       branch_0x8001f2b8

branch_0x8001f1b4:
    lwz     r4, 0x0(r28)
    li      r3, 0x14
    lwz     r0, 0xb8(r31)
    lwz     r5, 0x0(r29)
    add     r0, r4, r0
    subf    r28, r5, r0
    addi    r4, r28, 0x0
    bl      CreateVideoDecodeThread
    lbz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8001f21c
    li      r3, 0xc
    addi    r4, r28, 0x0
    bl      CreateAudioDecodeThread
    b       branch_0x8001f21c

branch_0x8001f1f0:
    li      r3, 0x14
    li      r4, 0x0
    bl      CreateVideoDecodeThread
    lbz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8001f214
    li      r3, 0xc
    li      r4, 0x0
    bl      CreateAudioDecodeThread
branch_0x8001f214:
    li      r3, 0x8
    bl      CreateReadThread
branch_0x8001f21c:
    bl      InitAllMessageQueue__Fv
    bl      VideoDecodeThreadStart
    lbz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8001f234
    bl      AudioDecodeThreadStart
branch_0x8001f234:
    lwz     r0, 0x0(r26)
    cmpwi   r0, 0x0
    bne-    branch_0x8001f244
    bl      ReadThreadStart
branch_0x8001f244:
    addi    r3, r31, 0x220
    addi    r4, sp, 0x14
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r0, 0x14(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f268
    li      r0, 0x1
    b       branch_0x8001f26c

branch_0x8001f268:
    li      r0, 0x0
branch_0x8001f26c:
    cmpwi   r0, 0x0
    bne-    branch_0x8001f27c
    li      r3, 0x0
    b       branch_0x8001f2b8

branch_0x8001f27c:
    li      r0, 0x1
    stb     r0, 0x0(r30)
    li      r0, 0x0
    lis     r3, PlayControl__FUl@ha
    stb     r0, 0xa5(r31)
    addi    r3, r3, PlayControl__FUl@l
    stw     r0, 0xf8(r31)
    stw     r0, 0xfc(r31)
    stw     r0, 0xf0(r31)
    stw     r0, 0xf4(r31)
    bl      VISetPostRetraceCallback
    stw     r3, R13Off_m0x7138(r13)
    li      r3, 0x1
    b       branch_0x8001f2b8

branch_0x8001f2b4:
    li      r3, 0x0
branch_0x8001f2b8:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl PrepareReady__Fi
PrepareReady__Fi: # 0x8001f2cc
    mflr    r0
    lis     r5, PrepareReadyQueue@ha
    stw     r0, 0x4(sp)
    addi    r4, r3, 0x0
    addi    r3, r5, PrepareReadyQueue@l
    stwu    sp, -0x8(sp)
    li      r5, 0x1
    bl      OSSendMessage
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl InitAllMessageQueue__Fv
InitAllMessageQueue__Fv: # 0x8001f2fc
    mflr    r0
    lis     r3, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, ActivePlayer@l
    stw     r29, 0xc(sp)
    lwz     r0, 0xb0(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8001f34c
    li      r29, 0x0
    li      r31, 0x0
branch_0x8001f330:
    addi    r3, r31, 0x100
    add     r3, r30, r3
    bl      PushFreeReadBuffer
    addi    r29, r29, 0x1
    cmpwi   r29, 0xa
    addi    r31, r31, 0xc
    blt+    branch_0x8001f330
branch_0x8001f34c:
    li      r29, 0x0
    li      r31, 0x0
branch_0x8001f354:
    addi    r3, r31, 0x178
    add     r3, r30, r3
    bl      PushFreeTextureSet
    addi    r29, r29, 0x1
    cmpwi   r29, 0x3
    addi    r31, r31, 0x10
    blt+    branch_0x8001f354
    lbz     r0, 0xa7(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8001f3a0
    li      r29, 0x0
    li      r31, 0x0
branch_0x8001f384:
    addi    r3, r31, 0x1a8
    add     r3, r30, r3
    bl      PushFreeAudioBuffer
    addi    r29, r29, 0x1
    cmpwi   r29, 0x3
    addi    r31, r31, 0xc
    blt+    branch_0x8001f384
branch_0x8001f3a0:
    addi    r3, r30, 0x220
    addi    r4, r13, R13Off_m0x713c
    li      r5, 0x1
    bl      OSInitMessageQueue
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    blr


.globl THPPlayerSetBuffer
THPPlayerSetBuffer: # 0x8001f3cc
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r31, r4, ActivePlayer@l
    lwz     r0, 0xa0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f5e4
    lbz     r0, 0xa4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8001f5e4
    lwz     r0, 0xb0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f418
    stw     r3, 0xb4(r31)
    lwz     r0, 0x58(r31)
    add     r30, r3, r0
    b       branch_0x8001f4f0

branch_0x8001f418:
    stw     r3, 0x100(r31)
    li      r6, 0x8
    subfic  r0, r6, 0xa
    lwz     r4, 0x44(r31)
    mtctr   r0
    cmplwi  r6, 0xa
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r3, r0
    stw     r30, 0x10c(r31)
    mulli   r3, r6, 0xc
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x118(r31)
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x124(r31)
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x130(r31)
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x13c(r31)
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x148(r31)
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x154(r31)
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    bge-    branch_0x8001f4f0
branch_0x8001f4d0:
    addi    r0, r3, 0x100
    stwx    r30, r31, r0
    addi    r3, r3, 0xc
    lwz     r4, 0x44(r31)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    bdnz+      branch_0x8001f4d0
branch_0x8001f4f0:
    lwz     r3, 0x80(r31)
    li      r27, 0x0
    lwz     r0, 0x84(r31)
    li      r29, 0x0
    mullw   r4, r3, r0
    srwi    r3, r4, 2
    addi    r4, r4, 0x1f
    addi    r0, r3, 0x1f
    clrrwi  r26, r4, 5
    clrrwi  r25, r0, 5
branch_0x8001f518:
    add     r28, r31, r29
    stw     r30, 0x178(r28)
    addi    r3, r30, 0x0
    addi    r4, r26, 0x0
    bl      DCInvalidateRange
    add     r30, r30, r26
    stw     r30, 0x17c(r28)
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    bl      DCInvalidateRange
    add     r30, r30, r25
    stw     r30, 0x180(r28)
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    bl      DCInvalidateRange
    addi    r27, r27, 0x1
    cmplwi  r27, 0x3
    add     r30, r30, r25
    addi    r29, r29, 0x10
    blt+    branch_0x8001f518
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8001f5d8
    stw     r30, 0x1a8(r31)
    li      r4, 0x0
    stw     r30, 0x1ac(r31)
    stw     r4, 0x1b0(r31)
    lwz     r0, 0x48(r31)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x1b4(r31)
    stw     r30, 0x1b8(r31)
    stw     r4, 0x1bc(r31)
    lwz     r0, 0x48(r31)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
    stw     r30, 0x1c0(r31)
    stw     r30, 0x1c4(r31)
    stw     r4, 0x1c8(r31)
    lwz     r0, 0x48(r31)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    add     r30, r30, r0
branch_0x8001f5d8:
    stw     r30, 0x9c(r31)
    li      r3, 0x1
    b       branch_0x8001f5e8

branch_0x8001f5e4:
    li      r3, 0x0
branch_0x8001f5e8:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl THPPlayerCalcNeedMemory
THPPlayerCalcNeedMemory: # 0x8001f5fc
    lis     r3, ActivePlayer@ha
    addi    r5, r3, ActivePlayer@l
    lwz     r0, 0xa0(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f69c
    lwz     r0, 0xb0(r5)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f62c
    lwz     r3, 0x58(r5)
    addi    r0, r3, 0x1f
    clrrwi  r6, r0, 5
    b       branch_0x8001f63c

branch_0x8001f62c:
    lwz     r3, 0x44(r5)
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    mulli   r6, r0, 0xa
branch_0x8001f63c:
    lwz     r4, 0x80(r5)
    lwz     r3, 0x84(r5)
    lbz     r0, 0xa7(r5)
    mullw   r3, r4, r3
    addi    r4, r3, 0x1f
    srwi    r3, r3, 2
    clrrwi  r4, r4, 5
    addi    r3, r3, 0x1f
    mulli   r4, r4, 0x3
    clrrwi  r3, r3, 5
    mulli   r3, r3, 0x3
    add     r6, r6, r4
    add     r6, r6, r3
    cmplwi  r0, 0x0
    add     r6, r6, r3
    beq-    branch_0x8001f694
    lwz     r0, 0x48(r5)
    slwi    r3, r0, 2
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    mulli   r0, r0, 0x3
    add     r6, r6, r0
branch_0x8001f694:
    addi    r3, r6, 0x1000
    blr

branch_0x8001f69c:
    li      r3, 0x0
    blr


.globl THPPlayerClose
THPPlayerClose: # 0x8001f6a4
    mflr    r0
    lis     r3, ActivePlayer@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, ActivePlayer@l
    addi    r4, r3, 0xa0
    stwu    sp, -0x8(sp)
    lwz     r0, 0xa0(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f6e8
    lbz     r0, 0xa4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8001f6e8
    li      r0, 0x0
    stw     r0, 0x0(r4)
    bl      DVDClose
    li      r3, 0x1
    b       branch_0x8001f6ec

branch_0x8001f6e8:
    li      r3, 0x0
branch_0x8001f6ec:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl THPPlayerOpen
THPPlayerOpen: # 0x8001f6fc
    mflr    r0
    lis     r5, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r23, 0x14(sp)
    addi    r29, r5, ActivePlayer@l
    addi    r23, r3, 0x0
    addi    r30, r4, 0x0
    lwz     r0, R13Off_m0x7140(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x8001f730
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f730:
    addi    r31, r29, 0xa0
    lwz     r0, 0xa0(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x8001f748
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f748:
    addi    r27, r29, 0x80
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0xc
    bl      memset
    addi    r26, r29, 0x8c
    addi    r3, r26, 0x0
    li      r4, 0x0
    li      r5, 0x10
    bl      memset
    addi    r3, r23, 0x0
    addi    r4, r29, 0x0
    bl      DVDOpen
    cmpwi   r3, 0x0
    bne-    branch_0x8001f78c
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f78c:
    addi    r3, r29, 0x0
    addi    r4, r29, 0x1e0
    li      r5, 0x40
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x8001f7bc
    mr      r3, r29
    bl      DVDClose
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f7bc:
    addi    r28, r29, 0x3c
    addi    r3, r28, 0x0
    addi    r4, r29, 0x1e0
    li      r5, 0x30
    bl      memcpy
    addi    r3, r28, 0x0
    addi    r4, r2, R2Off_m0x79c4
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x8001f7f4
    mr      r3, r29
    bl      DVDClose
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f7f4:
    lwz     r3, 0x40(r29)
    addis   r0, r3, 0xffff
    cmplwi  r0, 0x1000
    beq-    branch_0x8001f814
    mr      r3, r29
    bl      DVDClose
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f814:
    lwz     r24, 0x5c(r29)
    addi    r3, r29, 0x0
    addi    r4, r29, 0x1e0
    addi    r6, r24, 0x0
    li      r5, 0x20
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x8001f848
    mr      r3, r29
    bl      DVDClose
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f848:
    addi    r25, r29, 0x6c
    addi    r3, r25, 0x0
    addi    r4, r29, 0x1e0
    li      r5, 0x14
    bl      memcpy
    li      r0, 0x0
    stb     r0, 0xa7(r29)
    addi    r28, r29, 0xa7
    li      r23, 0x0
    addi    r24, r24, 0x14
    b       branch_0x8001f938

branch_0x8001f874:
    addi    r0, r23, 0x70
    lbzx    r0, r29, r0
    cmpwi   r0, 0x1
    beq-    branch_0x8001f8dc
    bge-    branch_0x8001f92c
    cmpwi   r0, 0x0
    bge-    branch_0x8001f894
    b       branch_0x8001f92c

branch_0x8001f894:
    addi    r3, r29, 0x0
    addi    r6, r24, 0x0
    addi    r4, r29, 0x1e0
    li      r5, 0x20
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x8001f8c4
    mr      r3, r29
    bl      DVDClose
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f8c4:
    addi    r3, r27, 0x0
    addi    r4, r29, 0x1e0
    li      r5, 0xc
    bl      memcpy
    addi    r24, r24, 0xc
    b       branch_0x8001f934

branch_0x8001f8dc:
    addi    r3, r29, 0x0
    addi    r6, r24, 0x0
    addi    r4, r29, 0x1e0
    li      r5, 0x20
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x8001f90c
    mr      r3, r29
    bl      DVDClose
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f90c:
    addi    r3, r26, 0x0
    addi    r4, r29, 0x1e0
    li      r5, 0x10
    bl      memcpy
    li      r0, 0x1
    stb     r0, 0x0(r28)
    addi    r24, r24, 0x10
    b       branch_0x8001f934

branch_0x8001f92c:
    li      r3, 0x0
    b       branch_0x8001f978

branch_0x8001f934:
    addi    r23, r23, 0x1
branch_0x8001f938:
    lwz     r0, 0x0(r25)
    cmplw   r23, r0
    blt+    branch_0x8001f874
    li      r4, 0x0
    stb     r4, 0xa5(r29)
    li      r0, 0x1
    li      r3, 0x1
    stb     r4, 0xa4(r29)
    stb     r4, 0xa6(r29)
    stw     r30, 0xb0(r29)
    stw     r0, 0x0(r31)
    lfs     f0, -0x79c0(r2)
    stfs    f0, 0xdc(r29)
    lfs     f0, 0xdc(r29)
    stfs    f0, 0xe0(r29)
    stw     r4, 0xe8(r29)
branch_0x8001f978:
    lmw     r23, 0x14(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl THPPlayerQuit
THPPlayerQuit: # 0x8001f98c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      LCDisable
    li      r3, 0x0
    li      r4, 0x0
    bl      registerMixCallback__Q28JASystem6KernelFPFl_PsUc
    li      r0, 0x0
    stw     r0, R13Off_m0x7140(r13)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl THPPlayerInit
THPPlayerInit: # 0x8001f9c0
    mflr    r0
    lis     r3, ActivePlayer@ha
    stw     r0, 0x4(sp)
    li      r4, 0x0
    li      r5, 0x1d0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, ActivePlayer@l
    addi    r3, r31, 0x0
    stw     r30, 0x10(sp)
    bl      memset
    bl      LCEnable
    addi    r3, r31, 0x240
    addi    r4, r31, 0x260
    li      r5, 0x3
    bl      OSInitMessageQueue
    bl      THPInit
    cmpwi   r3, 0x0
    bne-    branch_0x8001fa14
    li      r3, 0x0
    b       branch_0x8001fa70

branch_0x8001fa14:
    bl      OSDisableInterrupts
    li      r5, 0x0
    lis     r4, audioCallbackWithMSound__Fl@ha
    stw     r5, R13Off_m0x7134(r13)
    addi    r0, r4, audioCallbackWithMSound__Fl@l
    mr      r30, r3
    stw     r5, R13Off_m0x7130(r13)
    mr      r3, r0
    stw     r5, R13Off_m0x712c(r13)
    li      r4, 0x3
    bl      registerMixCallback__Q28JASystem6KernelFPFl_PsUc
    mr      r3, r30
    bl      OSRestoreInterrupts
    addi    r3, r31, 0x280
    li      r4, 0x0
    li      r5, 0x1180
    bl      memset
    addi    r3, r31, 0x280
    li      r4, 0x1180
    bl      DCFlushRange
    li      r0, 0x1
    stw     r0, R13Off_m0x7140(r13)
    li      r3, 0x1
branch_0x8001fa70:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl audioCallbackWithMSound__Fl
audioCallbackWithMSound__Fl: # 0x8001fa88
    mflr    r0
    lis     r4, ActivePlayer@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, ActivePlayer@l
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lwz     r0, 0xa0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8001fad0
    lbz     r0, 0xa5(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8001fad0
    lbz     r0, 0xa7(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8001fad8
branch_0x8001fad0:
    li      r3, 0x0
    b       branch_0x8001fb20

branch_0x8001fad8:
    bl      OSEnableInterrupts
    lwz     r0, R13Off_m0x7134(r13)
    addi    r30, r3, 0x0
    addi    r5, r29, 0x0
    xori     r0, r0, 0x1
    stw     r0, R13Off_m0x7134(r13)
    li      r4, 0x0
    lwz     r0, R13Off_m0x7134(r13)
    mulli   r0, r0, 0x8c0
    add     r3, r31, r0
    addi    r3, r3, 0x280
    bl      MixAudio__FPsPsUl
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, R13Off_m0x7134(r13)
    mulli   r0, r0, 0x8c0
    add     r3, r31, r0
    addi    r3, r3, 0x280
branch_0x8001fb20:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr

