
.globl main__Q28JASystem10HardStreamFv
main__Q28JASystem10HardStreamFv: # 0x80318060
    mflr    r0
    lis     r3, unk_803fdb20@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, unk_803fdb20@l
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    stw     r28, 0x38(sp)
    lbz     r0, R13Off_m0x5b50(r13)
    extsb.  r0, r0
    bne-    branch_0x803180a0
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x5b54(r13)
    stb     r0, R13Off_m0x5b50(r13)
branch_0x803180a0:
    lbz     r0, R13Off_m0x5b4e(r13)
    extsb.  r0, r0
    bne-    branch_0x803180bc
    li      r3, 0x0
    li      r0, 0x1
    stb     r3, R13Off_m0x5b4f(r13)
    stb     r0, R13Off_m0x5b4e(r13)
branch_0x803180bc:
    lbz     r0, R13Off_m0x5b60(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x803184c4
    lis     r3, unk_803e3068@h
    addi    r28, r3, unk_803e3068@l
    addi    r29, r31, 0x14
    addi    r30, r31, 0x17
branch_0x803180d8:
    lbz     r0, 0x0(r30)
    cmplwi  r0, 0x6
    bgt-    branch_0x803184c4
    slwi    r0, r0, 2
    lwzx    r0, r28, r0
    mtctr   r0
    bctr       
branch_0x803180f4:
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x803184c4
    addi    r3, r31, 0xc
    bl      getIntroNum__Q38JASystem10HardStream8TControlFv
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xffff
    beq-    branch_0x80318148
    addi    r4, r3, 0x0
    addi    r3, r31, 0xc
    addi    r5, r31, 0x5c
    addi    r6, r13, R13Off_m0x5b54
    bl      startFirst__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
    cmpwi   r3, 0x0
    bne-    branch_0x8031813c
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x8031813c:
    li      r0, 0x0
    sth     r0, 0x14(r31)
    b       branch_0x80318188

branch_0x80318148:
    addi    r3, r31, 0xc
    bl      getLoopNum__Q38JASystem10HardStream8TControlFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0xc
    addi    r5, r31, 0x5c
    addi    r6, r13, R13Off_m0x5b54
    bl      startFirst__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
    cmpwi   r3, 0x0
    bne-    branch_0x80318178
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x80318178:
    addi    r3, r31, 0xc
    bl      clearListOne__Q38JASystem10HardStream8TControlFv
    li      r0, 0x1
    sth     r0, 0x14(r31)
branch_0x80318188:
    li      r0, 0x3
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x80318194:
    addi    r29, r31, 0x14
    lhz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x803181fc
    addi    r3, r31, 0xc
    bl      getLoopNum__Q38JASystem10HardStream8TControlFv
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xffff
    beq-    branch_0x803181fc
    addi    r4, r3, 0x0
    addi    r3, r31, 0xc
    addi    r5, r31, 0x5c
    addi    r6, r13, R13Off_m0x5b54
    bl      startSecond__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
    cmpwi   r3, 0x0
    bne-    branch_0x803181e0
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x803181e0:
    addi    r3, r31, 0xc
    bl      clearListOne__Q38JASystem10HardStream8TControlFv
    li      r0, 0x1
    sth     r0, 0x0(r29)
    li      r0, 0x4
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x803181fc:
    addi    r3, r31, 0xc
    bl      clearListOne__Q38JASystem10HardStream8TControlFv
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80318250
    lhz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8031823c
    addi    r3, r31, 0x410
    li      r4, 0x0
    bl      DVDStopStreamAtEndAsync
    li      r0, 0x4
    stb     r0, 0x0(r30)
    li      r0, 0x2
    sth     r0, 0x0(r29)
    b       branch_0x803184c4

branch_0x8031823c:
    li      r0, 0x3
    sth     r0, 0x0(r29)
    li      r0, 0x4
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x80318250:
    addi    r3, r31, 0xc
    bl      getIntroNum__Q38JASystem10HardStream8TControlFv
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xffff
    beq-    branch_0x80318298
    addi    r4, r3, 0x0
    addi    r3, r31, 0xc
    addi    r5, r31, 0x5c
    addi    r6, r13, R13Off_m0x5b54
    bl      startSecond__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
    cmpwi   r3, 0x0
    bne-    branch_0x8031828c
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x8031828c:
    li      r0, 0x0
    sth     r0, 0x0(r29)
    b       branch_0x803182d8

branch_0x80318298:
    addi    r3, r31, 0xc
    bl      getLoopNum__Q38JASystem10HardStream8TControlFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0xc
    addi    r5, r31, 0x5c
    addi    r6, r13, R13Off_m0x5b54
    bl      startSecond__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
    cmpwi   r3, 0x0
    bne-    branch_0x803182c8
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x803182c8:
    addi    r3, r31, 0xc
    bl      clearListOne__Q38JASystem10HardStream8TControlFv
    li      r0, 0x1
    sth     r0, 0x0(r29)
branch_0x803182d8:
    li      r0, 0x4
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x803182e4:
    addi    r3, r31, 0xc
    bl      getCurVol__Q38JASystem10HardStream8TControlFv
    mr      r28, r3
    bl      AISetStreamVolLeft
    mr      r3, r28
    bl      AISetStreamVolRight
    lbz     r0, R13Off_m0x5b4f(r13)
    lis     r3, getAddrCallback__Q28JASystem10HardStreamFlP15DVDCommandBlock@ha
    addi    r4, r3, getAddrCallback__Q28JASystem10HardStreamFlP15DVDCommandBlock@l
    mulli   r0, r0, 0x30
    add     r3, r31, r0
    addi    r3, r3, 0x110
    bl      DVDGetStreamPlayAddrAsync
    lbz     r4, R13Off_m0x5b4f(r13)
    li      r3, 0x10
    addi    r0, r4, 0x1
    stb     r0, R13Off_m0x5b4f(r13)
    lbz     r4, R13Off_m0x5b4f(r13)
    divw    r0, r4, r3
    mullw   r0, r0, r3
    subf    r0, r0, r4
    stb     r0, R13Off_m0x5b4f(r13)
    b       branch_0x803184c4

branch_0x80318340:
    lwz     r4, 0x10(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x80318370
    addi    r3, r31, 0x14
    lhz     r0, 0x14(r31)
    cmplwi  r0, 0x2
    beq-    branch_0x80318364
    li      r0, 0x3
    sth     r0, 0x0(r3)
branch_0x80318364:
    li      r0, 0x4
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x80318370:
    lhz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x80318410
    lwz     r3, 0x0(r4)
    lhz     r0, 0x6(r3)
    cmplwi  r0, 0xffff
    bne-    branch_0x803183cc
    lwz     r0, 0x4(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x803183b8
    addi    r3, r31, 0x410
    li      r4, 0x0
    bl      DVDStopStreamAtEndAsync
    addi    r3, r31, 0xc
    bl      clearListOne__Q38JASystem10HardStream8TControlFv
    li      r0, 0x2
    sth     r0, 0x0(r29)
    b       branch_0x8031847c

branch_0x803183b8:
    addi    r3, r31, 0xc
    bl      clearListOne__Q38JASystem10HardStream8TControlFv
    li      r0, 0x1
    sth     r0, 0x0(r29)
    b       branch_0x803180d8

branch_0x803183cc:
    addi    r3, r31, 0xc
    bl      getLoopNum__Q38JASystem10HardStream8TControlFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0xc
    addi    r5, r31, 0x5c
    addi    r6, r13, R13Off_m0x5b54
    bl      startSecond__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
    cmpwi   r3, 0x0
    bne-    branch_0x803183fc
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x803183fc:
    addi    r3, r31, 0xc
    bl      clearListOne__Q38JASystem10HardStream8TControlFv
    li      r0, 0x1
    sth     r0, 0x0(r29)
    b       branch_0x8031847c

branch_0x80318410:
    cmplwi  r4, 0x0
    bne-    branch_0x8031842c
    li      r0, 0x3
    sth     r0, 0x0(r29)
    li      r0, 0x4
    stb     r0, 0x0(r30)
    b       branch_0x8031847c

branch_0x8031842c:
    addi    r3, r31, 0xc
    bl      getIntroNum__Q38JASystem10HardStream8TControlFv
    clrlwi  r0, r3, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x8031844c
    li      r0, 0x0
    sth     r0, 0x0(r29)
    b       branch_0x803180d8

branch_0x8031844c:
    addi    r4, r3, 0x0
    addi    r3, r31, 0xc
    addi    r5, r31, 0x5c
    addi    r6, r13, R13Off_m0x5b54
    bl      startSecond__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
    cmpwi   r3, 0x0
    bne-    branch_0x80318474
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x80318474:
    li      r0, 0x0
    sth     r0, 0x0(r29)
branch_0x8031847c:
    li      r0, 0x4
    stb     r0, 0x0(r30)
    b       branch_0x803184c4

branch_0x80318488:
    li      r3, 0x0
    bl      AISetStreamVolLeft
    li      r3, 0x0
    bl      AISetStreamVolRight
    li      r3, 0x0
    bl      AISetStreamPlayState
    addi    r3, r31, 0x440
    li      r4, 0x0
    bl      DVDCancelStreamAsync
    li      r29, 0x0
    stb     r29, 0x0(r30)
    addi    r3, r31, 0xc
    sth     r29, 0x14(r31)
    bl      resetFader__Q38JASystem10HardStream8TControlFv
    stb     r29, 0x16(r31)
branch_0x803184c4:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl firstBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo
firstBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo: # 0x803184e4
    mflr    r0
    lis     r3, unk_803fdb20@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, unk_803fdb20@l
    addi    r3, r31, 0x16
    stw     r30, 0x18(sp)
    lbz     r0, 0x16(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80318548
    addi    r3, r31, 0xc
    bl      getCurVol__Q38JASystem10HardStream8TControlFv
    mr      r30, r3
    bl      AISetStreamVolLeft
    mr      r3, r30
    bl      AISetStreamVolRight
    li      r3, 0x1
    bl      AISetStreamSampleRate
    bl      AIResetStreamSampleCount
    li      r3, 0x1
    bl      AISetStreamPlayState
    li      r0, 0x2
    stb     r0, 0x17(r31)
    b       branch_0x80318558

branch_0x80318548:
    li      r0, 0x4
    stb     r0, 0x17(r31)
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x80318558:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl secondBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo
secondBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo: # 0x80318570
    lis     r3, strCtrl__Q28JASystem10HardStream@ha
    addi    r3, r3, strCtrl__Q28JASystem10HardStream@l
    li      r0, 0x4
    stb     r0, 0xb(r3)
    blr


.globl getAddrCallback__Q28JASystem10HardStreamFlP15DVDCommandBlock
getAddrCallback__Q28JASystem10HardStreamFlP15DVDCommandBlock: # 0x80318584
    mflr    r0
    lis     r4, unk_803fdb20@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, unk_803fdb20@l
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    lbz     r0, R13Off_m0x5b48(r13)
    extsb.  r0, r0
    bne-    branch_0x803185c0
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x5b4c(r13)
    stb     r0, R13Off_m0x5b48(r13)
branch_0x803185c0:
    lhz     r0, 0x14(r31)
    cmplwi  r0, 0x3
    bne-    branch_0x80318614
    lbz     r0, 0x58(r31)
    xori     r0, r0, 0x1
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r0, 0x50(r3)
    cmplw   r30, r0
    bne-    branch_0x803185f4
    li      r0, 0x1
    stw     r0, R13Off_m0x5b4c(r13)
    b       branch_0x803186ec

branch_0x803185f4:
    lwz     r0, R13Off_m0x5b4c(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x803186ec
    li      r0, 0x0
    stw     r0, R13Off_m0x5b4c(r13)
    li      r0, 0x5
    stb     r0, 0x17(r31)
    b       branch_0x803186ec

branch_0x80318614:
    cmplwi  r0, 0x2
    bne-    branch_0x803186b4
    lbz     r0, 0x58(r31)
    xori     r0, r0, 0x1
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x50(r3)
    addi    r0, r3, -0x8000
    cmplw   r30, r0
    bne-    branch_0x80318648
    li      r0, 0x1
    stw     r0, R13Off_m0x5b4c(r13)
    b       branch_0x803186ec

branch_0x80318648:
    lwz     r0, R13Off_m0x5b4c(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x803186ec
    li      r0, 0x6
    stb     r0, 0x17(r31)
    addi    r3, r31, 0x10
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x803186a8
    li      r4, 0x0
    stw     r4, 0x0(r3)
    addi    r5, r4, 0x0
    addi    r3, r4, 0x0
    b       branch_0x8031869c

branch_0x80318680:
    lwz     r0, R13Off_m0x5b58(r13)
    addi    r5, r5, 0x1
    add     r6, r0, r3
    stw     r4, 0x0(r6)
    addi    r3, r3, 0xc
    stw     r4, 0x4(r6)
    stw     r4, 0x8(r6)
branch_0x8031869c:
    lwz     r0, R13Off_m0x73d8(r13)
    cmpw    r5, r0
    blt+    branch_0x80318680
branch_0x803186a8:
    li      r0, 0x0
    stw     r0, R13Off_m0x5b4c(r13)
    b       branch_0x803186ec

branch_0x803186b4:
    addi    r3, r31, 0xc
    bl      getLastAddr__Q38JASystem10HardStream8TControlFv
    cmplw   r30, r3
    bne-    branch_0x803186d0
    li      r0, 0x1
    stw     r0, R13Off_m0x5b4c(r13)
    b       branch_0x803186ec

branch_0x803186d0:
    lwz     r0, R13Off_m0x5b4c(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x803186ec
    li      r0, 0x0
    stw     r0, R13Off_m0x5b4c(r13)
    li      r0, 0x5
    stb     r0, 0x17(r31)
branch_0x803186ec:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __ct__Q38JASystem10HardStream8TControlFv
__ct__Q38JASystem10HardStream8TControlFv: # 0x80318704
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stb     r0, 0xa(r3)
    sth     r0, 0x8(r3)
    stb     r0, 0xb(r3)
    lfs     f1, 0x73c(r2)
    stfs    f1, 0xc(r3)
    lfs     f0, 0x738(r2)
    stfs    f0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x24(r3)
    stfs    f1, 0x2c(r3)
    stfs    f1, 0x30(r3)
    stfs    f1, 0x28(r3)
    stfs    f0, 0x34(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r3)
    stb     r0, 0x4c(r3)
    blr


.globl getIntroNum__Q38JASystem10HardStream8TControlFv
getIntroNum__Q38JASystem10HardStream8TControlFv: # 0x80318764
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8031877c
    lis     r3, unk_0000ffff@ha
    addi    r3, r3, unk_0000ffff@l
    blr

branch_0x8031877c:
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80318794
    lis     r3, unk_0000ffff@ha
    addi    r3, r3, unk_0000ffff@l
    blr

branch_0x80318794:
    lhz     r3, 0x4(r3)
    blr


.globl getLoopNum__Q38JASystem10HardStream8TControlFv
getLoopNum__Q38JASystem10HardStream8TControlFv: # 0x8031879c
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x803187b4
    lis     r3, unk_0000ffff@ha
    addi    r3, r3, unk_0000ffff@l
    blr

branch_0x803187b4:
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x803187cc
    lis     r3, unk_0000ffff@ha
    addi    r3, r3, unk_0000ffff@l
    blr

branch_0x803187cc:
    lhz     r3, 0x6(r3)
    blr


.globl clearListOne__Q38JASystem10HardStream8TControlFv
clearListOne__Q38JASystem10HardStream8TControlFv: # 0x803187d4
    lwz     r5, 0x4(r3)
    cmplwi  r5, 0x0
    bne-    branch_0x803187e8
    li      r3, 0x0
    blr

branch_0x803187e8:
    lwz     r4, 0x4(r5)
    li      r0, 0x0
    stw     r4, 0x4(r3)
    li      r3, 0x1
    stw     r0, 0x0(r5)
    stw     r0, 0x4(r5)
    stw     r0, 0x8(r5)
    blr


.globl getLastAddr__Q38JASystem10HardStream8TControlFv
getLastAddr__Q38JASystem10HardStream8TControlFv: # 0x80318808
    lbz     r0, 0x4c(r3)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x44(r3)
    blr


.globl startFirst__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
startFirst__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl: # 0x8031881c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    lis     r4, rootDir__Q28JASystem10HardStream@h
    stwu    sp, -0x88(sp)
    mulli   r0, r0, 0x24
    stmw    r27, 0x74(sp)
    mr      r31, r6
    addi    r29, r3, 0x0
    addi    r30, r5, 0x0
    addi    r4, r4, rootDir__Q28JASystem10HardStream@l
    lwz     r7, 0x0(r31)
    lwz     r6, R13Off_m0x5b5c(r13)
    mulli   r3, r7, 0x3c
    add     r27, r30, r3
    add     r28, r6, r0
    addi    r3, sp, 0x30
    bl      strcpy
    addi    r3, sp, 0x30
    addi    r4, r28, 0x0
    bl      strcat
    addi    r3, sp, 0x30
    addi    r4, r27, 0x0
    bl      DVDOpen
    cmpwi   r3, 0x0
    bne-    branch_0x8031888c
    li      r0, 0x0
    b       branch_0x80318890

branch_0x8031888c:
    li      r0, 0x1
branch_0x80318890:
    cmpwi   r0, 0x0
    bne-    branch_0x803188a0
    li      r3, 0x0
    b       branch_0x80318928

branch_0x803188a0:
    lwz     r4, 0x0(r31)
    lis     r3, firstBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo@ha
    addi    r6, r3, firstBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo@l
    lbz     r0, 0x4c(r29)
    mulli   r3, r4, 0x3c
    add     r3, r30, r3
    lwz     r4, 0x34(r3)
    slwi    r0, r0, 2
    lwz     r5, 0x30(r3)
    add     r3, r29, r0
    addi    r0, r4, -0x8000
    add     r0, r5, r0
    stw     r0, 0x44(r3)
    li      r4, 0x0
    li      r5, 0x0
    lbz     r0, 0x4c(r29)
    xori     r0, r0, 0x1
    stb     r0, 0x4c(r29)
    lwz     r0, 0x0(r31)
    mulli   r0, r0, 0x3c
    add     r3, r30, r0
    bl      DVDPrepareStreamAsync
    lwz     r4, 0x0(r31)
    lis     r3, unk_aaaaaaab@ha
    addi    r0, r3, unk_aaaaaaab@l
    addi    r3, r4, 0x1
    stw     r3, 0x0(r31)
    li      r3, 0x1
    lwz     r4, 0x0(r31)
    mulhwu  r0, r0, r4
    srwi    r0, r0, 1
    mulli   r0, r0, 0x3
    subf    r0, r0, r4
    stw     r0, 0x0(r31)
branch_0x80318928:
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl startSecond__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl
startSecond__Q38JASystem10HardStream8TControlFUsP11DVDFileInfoPUl: # 0x8031893c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    lis     r4, rootDir__Q28JASystem10HardStream@h
    stwu    sp, -0x88(sp)
    mulli   r0, r0, 0x24
    stmw    r27, 0x74(sp)
    mr      r31, r6
    addi    r29, r3, 0x0
    addi    r30, r5, 0x0
    addi    r4, r4, rootDir__Q28JASystem10HardStream@l
    lwz     r7, 0x0(r31)
    lwz     r6, R13Off_m0x5b5c(r13)
    mulli   r3, r7, 0x3c
    add     r27, r30, r3
    add     r28, r6, r0
    addi    r3, sp, 0x30
    bl      strcpy
    addi    r3, sp, 0x30
    addi    r4, r28, 0x0
    bl      strcat
    addi    r3, sp, 0x30
    addi    r4, r27, 0x0
    bl      DVDOpen
    cmpwi   r3, 0x0
    bne-    branch_0x803189ac
    li      r0, 0x0
    b       branch_0x803189b0

branch_0x803189ac:
    li      r0, 0x1
branch_0x803189b0:
    cmpwi   r0, 0x0
    bne-    branch_0x803189c0
    li      r3, 0x0
    b       branch_0x80318a48

branch_0x803189c0:
    lwz     r4, 0x0(r31)
    lis     r3, secondBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo@ha
    addi    r6, r3, secondBgmCallback__Q28JASystem10HardStreamFlP11DVDFileInfo@l
    lbz     r0, 0x4c(r29)
    mulli   r3, r4, 0x3c
    add     r3, r30, r3
    lwz     r4, 0x34(r3)
    slwi    r0, r0, 2
    lwz     r5, 0x30(r3)
    add     r3, r29, r0
    addi    r0, r4, -0x8000
    add     r0, r5, r0
    stw     r0, 0x44(r3)
    li      r4, 0x0
    li      r5, 0x0
    lbz     r0, 0x4c(r29)
    xori     r0, r0, 0x1
    stb     r0, 0x4c(r29)
    lwz     r0, 0x0(r31)
    mulli   r0, r0, 0x3c
    add     r3, r30, r0
    bl      DVDPrepareStreamAsync
    lwz     r4, 0x0(r31)
    lis     r3, unk_aaaaaaab@ha
    addi    r0, r3, unk_aaaaaaab@l
    addi    r3, r4, 0x1
    stw     r3, 0x0(r31)
    li      r3, 0x1
    lwz     r4, 0x0(r31)
    mulhwu  r0, r0, r4
    srwi    r0, r0, 1
    mulli   r0, r0, 0x3
    subf    r0, r0, r4
    stw     r0, 0x0(r31)
branch_0x80318a48:
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl resetFader__Q38JASystem10HardStream8TControlFv
resetFader__Q38JASystem10HardStream8TControlFv: # 0x80318a5c
    li      r0, 0x0
    stw     r0, 0x14(r3)
    lfs     f0, 0x738(r2)
    stfs    f0, 0x20(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x18(r3)
    stfs    f0, 0x24(r3)
    stw     r0, 0x3c(r3)
    lfs     f0, 0x73c(r2)
    stfs    f0, 0x30(r3)
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x28(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x40(r3)
    blr


.globl getCurVol__Q38JASystem10HardStream8TControlFv
getCurVol__Q38JASystem10HardStream8TControlFv: # 0x80318a98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      calcCurVolume__Q38JASystem10HardStream8TControlFv
    mr      r3, r31
    lfs     f1, 0x10(r31)
    bl      volFloatToU8__Q38JASystem10HardStream8TControlFf
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcCurVolume__Q38JASystem10HardStream8TControlFv
calcCurVolume__Q38JASystem10HardStream8TControlFv: # 0x80318ad0
    stwu    sp, -0x18(sp)
    lfs     f0, 0x73c(r2)
    lwz     r4, 0x14(r3)
    fmr     f6, f0
    fmr     f5, f0
    cmplwi  r4, 0x0
    beq-    branch_0x80318b74
    lwz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80318b18
    stw     r4, 0x14(sp)
    lis     r0, 0x4330
    lfd     f2, 0x740(r2)
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f0, f1
    stfs    f1, 0x20(r3)
branch_0x80318b18:
    lwz     r4, 0x38(r3)
    lis     r0, unk_43300000@h
    lfd     f3, 0x740(r2)
    stw     r4, 0x14(sp)
    lfs     f4, 0x20(r3)
    stw     r0, 0x10(sp)
    lfs     f1, 0x73c(r2)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f3
    fmuls   f2, f4, f2
    fcmpo   cr0, f2, f1
    fmr     f6, f2
    cror    2, 1, 2
    bne-    branch_0x80318b6c
    addi    r0, r0, unk_43300000@l
    fmr     f6, f1
    stw     r0, 0x14(r3)
    lfs     f1, 0x738(r2)
    stfs    f1, 0x20(r3)
    stw     r0, 0x38(r3)
    b       branch_0x80318b74

branch_0x80318b6c:
    addi    r0, r4, 0x1
    stw     r0, 0x38(r3)
branch_0x80318b74:
    lwz     r4, 0x18(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80318c80
    lwz     r0, 0x3c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80318bb0
    stw     r4, 0x14(sp)
    lis     r0, 0x4330
    lfd     f2, 0x740(r2)
    stw     r0, 0x10(sp)
    lfs     f3, 0x73c(r2)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    stfs    f1, 0x24(r3)
branch_0x80318bb0:
    lwz     r4, 0x3c(r3)
    lis     r0, unk_43300000@h
    lfd     f4, 0x740(r2)
    stw     r4, 0x14(sp)
    lfs     f5, 0x24(r3)
    stw     r0, 0x10(sp)
    lfs     f2, 0x73c(r2)
    lfd     f3, 0x10(sp)
    lfs     f1, 0x738(r2)
    fsubs   f3, f3, f4
    fnmsubs  f3, f5, f3, f2
    fcmpo   cr0, f3, f1
    fmr     f5, f3
    cror    2, 0, 2
    bne-    branch_0x80318c78
    addi    r5, r0, unk_43300000@l
    fmr     f5, f1
    stw     r5, 0x14(r3)
    lis     r4, strCtrl__Q28JASystem10HardStream@ha
    li      r0, 0x6
    stfs    f1, 0x20(r3)
    addi    r4, r4, strCtrl__Q28JASystem10HardStream@l
    stw     r5, 0x38(r3)
    stw     r5, 0x18(r3)
    stfs    f1, 0x24(r3)
    stw     r5, 0x3c(r3)
    stfs    f2, 0x30(r3)
    stfs    f2, 0x2c(r3)
    stfs    f2, 0x28(r3)
    stw     r5, 0x1c(r3)
    stw     r5, 0x40(r3)
    stb     r0, 0xb(r3)
    lwzu    r0, 0x4(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80318c80
    stw     r5, 0x0(r4)
    addi    r6, r5, 0x0
    addi    r4, r5, 0x0
    b       branch_0x80318c68

branch_0x80318c4c:
    lwz     r0, R13Off_m0x5b58(r13)
    addi    r6, r6, 0x1
    add     r7, r0, r4
    stw     r5, 0x0(r7)
    addi    r4, r4, 0xc
    stw     r5, 0x4(r7)
    stw     r5, 0x8(r7)
branch_0x80318c68:
    lwz     r0, R13Off_m0x73d8(r13)
    cmpw    r6, r0
    blt+    branch_0x80318c4c
    b       branch_0x80318c80

branch_0x80318c78:
    addi    r0, r4, 0x1
    stw     r0, 0x3c(r3)
branch_0x80318c80:
    lwz     r4, 0x1c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80318d30
    lwz     r0, 0x40(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80318cc4
    stw     r4, 0x14(sp)
    lis     r0, 0x4330
    lfs     f4, 0x28(r3)
    stw     r0, 0x10(sp)
    lfs     f3, 0x30(r3)
    lfd     f2, 0x740(r2)
    lfd     f1, 0x10(sp)
    fsubs   f3, f4, f3
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    stfs    f1, 0x34(r3)
branch_0x80318cc4:
    lwz     r5, 0x40(r3)
    lis     r4, 0x4330
    lwz     r0, 0x1c(r3)
    stw     r5, 0x14(sp)
    lfd     f3, 0x740(r2)
    cmplw   r5, r0
    stw     r4, 0x10(sp)
    lfs     f4, 0x34(r3)
    lfd     f2, 0x10(sp)
    lfs     f1, 0x30(r3)
    fsubs   f2, f2, f3
    fmadds  f2, f4, f2, f1
    blt-    branch_0x80318d24
    lfs     f1, 0x28(r3)
    li      r0, 0x0
    stfs    f1, 0x30(r3)
    fmr     f2, f1
    lfs     f1, 0x30(r3)
    stfs    f1, 0x28(r3)
    stw     r0, 0x1c(r3)
    lfs     f1, 0x738(r2)
    stfs    f1, 0x34(r3)
    stw     r0, 0x40(r3)
    b       branch_0x80318d2c

branch_0x80318d24:
    addi    r0, r5, 0x1
    stw     r0, 0x40(r3)
branch_0x80318d2c:
    stfs    f2, 0x2c(r3)
branch_0x80318d30:
    fmuls   f2, f6, f5
    lfs     f3, 0x2c(r3)
    lfs     f1, 0xc(r3)
    fmuls   f2, f3, f2
    fmuls   f0, f0, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r3)
    addi    sp, sp, 0x18
    blr


.globl volFloatToU8__Q38JASystem10HardStream8TControlFf
volFloatToU8__Q38JASystem10HardStream8TControlFf: # 0x80318d54
    stwu    sp, -0x20(sp)
    lfs     f0, 0x73c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80318d68
    fmr     f1, f0
branch_0x80318d68:
    lfs     f0, 0x738(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80318d78
    fmr     f1, f0
branch_0x80318d78:
    lfs     f0, 0x748(r2)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    addi    sp, sp, 0x20
    blr


.globl __sinit_JASHardStream_cpp
__sinit_JASHardStream_cpp: # 0x80318d94
    mflr    r0
    lis     r3, strCtrl__Q28JASystem10HardStream@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, strCtrl__Q28JASystem10HardStream@l
    stwu    sp, -0x8(sp)
    bl      __ct__Q38JASystem10HardStream8TControlFv
    lis     r4, __dt__Q38JASystem10HardStream8TControlFv@ha
    lis     r5, unk_803fdb20@ha
    addi    r4, r4, __dt__Q38JASystem10HardStream8TControlFv@l
    addi    r5, r5, unk_803fdb20@l
    bl      __register_global_object
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__Q38JASystem10HardStream8TControlFv
__dt__Q38JASystem10HardStream8TControlFv: # 0x80318dd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80318df8
    extsh.  r0, r4
    ble-    branch_0x80318df8
    mr      r3, r31
    bl      __dl__FPv
branch_0x80318df8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

