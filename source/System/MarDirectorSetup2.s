
.globl __dt__12TMarDirectorFv
__dt__12TMarDirectorFv: # 0x8029c520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    mr.     r30, r3
    beq-    branch_0x8029c6dc
    lis     r3, __vvt__12TMarDirector@ha
    addi    r3, r3, __vvt__12TMarDirector@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x20
    stw     r0, 0xc(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      exitStage__6MSoundFv
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0xf
    bne-    branch_0x8029c584
    addi    r3, r2, R2Off_m0x558
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029c584
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x8029c584:
    addi    r3, r2, R2Off_m0x550
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029c598
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x8029c598:
    addi    r3, r2, R2Off_m0x548
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029c5ac
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x8029c5ac:
    addi    r3, r2, R2Off_m0x540
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029c5c0
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x8029c5c0:
    addi    r3, r2, R2Off_m0x538
    bl      getVolume__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8029c5d4
    bl      unmountFixed__13JKRMemArchiveFv
branch_0x8029c5d4:
    lwz     r3, 0x18(r30)
    lwz     r3, 0x0(r3)
    lhz     r0, 0xe2(r3)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xe2(r3)
    lbz     r0, 0x7c(r30)
    cmplwi  r0, 0x1
    beq-    branch_0x8029c608
    cmplwi  r0, 0x0
    bne-    branch_0x8029c614
    lbz     r0, 0x7d(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8029c614
branch_0x8029c608:
    bl      THPPlayerStop
    bl      THPPlayerClose
    bl      THPPlayerQuit
branch_0x8029c614:
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r4, 0x2
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r4, 0x3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r4, 0x4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    li      r3, 0x0
    addic.  r0, r30, 0x88
    stw     r3, R13Off_m0x5fdc(r13)
    stw     r3, R13Off_m0x5db8(r13)
    stw     r3, R13Off_m0x6048(r13)
    beq-    branch_0x8029c698
    addi    r3, r30, 0x88
    li      r4, 0x0
    bl      __dt__Q27JGadget20TVector_pointer_voidFv
branch_0x8029c698:
    cmplwi  r30, 0x0
    beq-    branch_0x8029c6cc
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
branch_0x8029c6cc:
    extsh.  r0, r31
    ble-    branch_0x8029c6dc
    mr      r3, r30
    bl      __dl__FPv
branch_0x8029c6dc:
    lwz     r0, 0x3c(sp)
    mr      r3, r30
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setup2__12TMarDirectorFv
setup2__12TMarDirectorFv: # 0x8029c6f8
    mflr    r0
    lis     r5, unk_803a2f48@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x410(sp)
    stmw    r26, 0x3f8(sp)
    addi    r30, r5, unk_803a2f48@l
    addi    r31, r3, 0x0
    addi    r3, r30, 0xf8
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0xf8
    mtlr    r12
    blrl
    stw     r3, 0xbc(r31)
    lwz     r3, 0xbc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8029c7b8
    lwz     r26, 0x10(r3)
    li      r27, 0x0
    b       branch_0x8029c7a8

branch_0x8029c75c:
    lwz     r3, R13Off_m0x5db8(r13)
    lwz     r29, 0x14(r26)
    lwz     r28, 0x4(r3)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8029c7a0
    clrlwi  r0, r27, 16
    stw     r0, 0x134(r3)
    stw     r3, 0x28(r26)
branch_0x8029c7a0:
    addi    r27, r27, 0x1
    addi    r26, r26, 0x2c
branch_0x8029c7a8:
    lwz     r3, 0xbc(r31)
    lwz     r0, 0x14(r3)
    cmplw   r26, r0
    bne+    branch_0x8029c75c
branch_0x8029c7b8:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x530
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x530
    mtlr    r12
    blrl
    lwz     r4, 0x18(r31)
    lwz     r4, 0x0(r4)
    bl      setGamePad__6TMarioFP13TMarioGamePad
    lwz     r5, 0x18(r31)
    addi    r3, r30, 0x10c
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x0(r5)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x10c
    mtlr    r12
    blrl
    stw     r29, 0x120(r3)
    addi    r3, r30, 0x118
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x118
    mtlr    r12
    blrl
    stw     r3, 0x84(r31)
    addi    r3, r30, 0x128
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x128
    mtlr    r12
    blrl
    stw     r3, 0x74(r31)
    li      r29, 0xb
    addi    r3, r30, 0x138
    lwz     r4, 0x74(r31)
    sth     r29, 0xc(r4)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x138
    mtlr    r12
    blrl
    stw     r3, 0xdc(r31)
    li      r3, 0xd2
    li      r0, 0xff
    lfs     f0, -0x528(r2)
    addi    r4, sp, 0x2f0
    lwz     r5, 0xdc(r31)
    stfs    f0, 0x14(r5)
    stb     r3, 0x2ec(sp)
    stb     r3, 0x2ed(sp)
    stb     r3, 0x2ee(sp)
    stb     r0, 0x2ef(sp)
    lwz     r0, 0x2ec(sp)
    stw     r0, 0x2f0(sp)
    lwz     r3, 0xdc(r31)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x14c
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x14c
    mtlr    r12
    blrl
    stw     r3, 0xe0(r31)
    addi    r3, r30, 0x160
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x160
    mtlr    r12
    blrl
    stw     r3, 0x78(r31)
    addi    r3, r30, 0x16c
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x16c
    mtlr    r12
    blrl
    stw     r3, 0xac(r31)
    addi    r3, r30, 0x17c
    lwz     r5, 0x18(r31)
    lwz     r4, 0xac(r31)
    lwz     r0, 0x0(r5)
    stw     r0, 0x10c(r4)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x17c
    mtlr    r12
    blrl
    stw     r3, 0xb0(r31)
    addi    r3, r30, 0x188
    lwz     r5, 0x18(r31)
    lwz     r4, 0xb0(r31)
    lwz     r0, 0x0(r5)
    stw     r0, 0x24c(r4)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x188
    mtlr    r12
    blrl
    stw     r3, 0x70(r31)
    li      r0, 0x0
    lwz     r4, 0x18(r31)
    lwz     r3, 0x70(r31)
    lwz     r4, 0x0(r4)
    stw     r4, 0x38(r3)
    lwz     r4, 0x18(r31)
    lwz     r3, 0x78(r31)
    lwz     r4, 0x0(r4)
    stw     r4, 0xc0(r3)
    lwz     r3, 0x18(r31)
    lwz     r3, 0x0(r3)
    sth     r0, 0xe2(r3)
    lbz     r0, 0x7c(r31)
    cmplwi  r0, 0xf
    bne-    branch_0x8029ca70
    lwz     r3, 0xac(r31)
    sth     r29, 0xc(r3)
    lwz     r3, 0xb0(r31)
    sth     r29, 0xc(r3)
    lwz     r3, 0x18(r31)
    lwz     r3, 0x0(r3)
    lhz     r0, 0xe2(r3)
    ori     r0, r0, 0x20
    sth     r0, 0xe2(r3)
    b       branch_0x8029ca78

branch_0x8029ca70:
    lwz     r3, 0x70(r31)
    sth     r29, 0xc(r3)
branch_0x8029ca78:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x198
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x198
    mtlr    r12
    blrl
    stw     r3, 0x254(r31)
    lwz     r7, R13Off_m0x7100(r13)
    cmplwi  r7, 0x0
    beq-    branch_0x8029cab8
    addi    r7, r7, 0x10
branch_0x8029cab8:
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r4, 0x1
    li      r5, 0x7d
    li      r6, 0x7d
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    lwz     r6, R13Off_m0x62f0(r13)
    li      r4, 0x2
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r5, 0x7e
    addi    r7, r6, 0x70
    li      r6, 0x91
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    lwz     r6, R13Off_m0x62f0(r13)
    li      r4, 0x3
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r5, 0x92
    addi    r7, r6, 0x1ec
    li      r6, 0xa5
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    lwz     r7, R13Off_m0x60d8(r13)
    cmplwi  r7, 0x0
    beq-    branch_0x8029cb14
    addi    r7, r7, 0x70
branch_0x8029cb14:
    lwz     r3, R13Off_m0x5ff0(r13)
    li      r4, 0x4
    li      r5, 0x7c
    li      r6, 0x7c
    bl      setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
    lwz     r4, R13Off_m0x7118(r13)
    li      r7, 0x0
    lwz     r3, R13Off_m0x6044(r13)
    addi    r6, r4, 0x1ec
    addi    r5, r4, 0x13c
    addi    r4, r4, 0x124
    bl      setCameraInfo__6MSoundFP3VecP3VecPA4_fUl
    lbz     r4, 0x7d(r31)
    lbz     r3, 0x7c(r31)
    bl      init__7MSStageFUcUc
    stw     r3, 0x258(r31)
    addi    r3, sp, 0x338
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x348
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x358
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x368
    bl      __ct__Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f__Fv
    addi    r3, sp, 0x3a8
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    li      r0, -0x1
    stw     r0, 0x3e8(sp)
    li      r0, 0x0
    addi    r5, sp, 0x2f4
    sth     r0, 0x3f0(sp)
    li      r4, -0x1
    sth     r0, 0x2f4(sp)
    lwz     r3, 0x40(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x38(r31)
    addi    r5, sp, 0x2f4
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    bl      GXSetDrawDone
    bl      GXWaitDrawDone
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x1a4
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x1a4
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8029cc94
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x1bc
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x1bc
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8029cc94
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x1d8
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x1d8
    mtlr    r12
    blrl
branch_0x8029cc94:
    cmplwi  r3, 0x0
    beq-    branch_0x8029cca0
    bl      initBuriedBuilding__24TMapEventSinkInPollutionFv
branch_0x8029cca0:
    lmw     r26, 0x3f8(sp)
    lwz     r0, 0x414(sp)
    addi    sp, sp, 0x410
    mtlr    r0
    blr


.globl __sinit_MarDirectorSetup2_cpp
__sinit_MarDirectorSetup2_cpp: # 0x8029ccb4
    mflr    r0
    lis     r3, unk_803fc9c0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fc9c0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ccfc
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8029ccfc:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cd2c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8029cd2c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cd5c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8029cd5c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cd8c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8029cd8c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cdbc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8029cdbc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cdec
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8029cdec:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ce1c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8029ce1c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ce4c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8029ce4c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ce7c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8029ce7c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ceac
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8029ceac:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cedc
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8029cedc:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cf0c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8029cf0c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cf3c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8029cf3c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cf6c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8029cf6c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8029cf9c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8029cf9c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8029cfb0
unk_8029cfb0: # 0x8029cfb0
    addi    r3, r3, -0xc
    b       JSGFindObject__12TMarDirectorCFPCcQ26JStage8TEObject


.globl unk_8029cfb8
unk_8029cfb8: # 0x8029cfb8
    addi    r3, r3, -0xc
    b       __dt__12TMarDirectorFv

