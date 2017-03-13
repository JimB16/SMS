
.globl __dt__8TWoodLogFv
__dt__8TWoodLogFv: # 0x801c4958
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c49d8
    lis     r3, 0x803d
    subi    r3, r3, 0x3f28
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c49c8
    lis     r3, 0x803d
    addi    r3, r3, 0x2058
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c49c8
    lis     r3, 0x803d
    subi    r3, r3, 0x43d4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801c49c8:
    extsh.  r0, r31
    ble-    branch_0x801c49d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c49d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__8TWoodLogFv
control__8TWoodLogFv: # 0x801c49f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    bl      control__17TMapObjFloatOnSeaFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r4, sp, 0x54
    bl      PSMTXInverse
    lwz     r6, MarioHitActorPos(r13)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x48
    lfs     f0, 0x0(r6)
    addi    r5, sp, 0x3c
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x8(r6)
    stfs    f0, 0x50(sp)
    bl      PSMTXMultVec
    bl      SMS_IsMarioStatusTypeSwimming__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c4ad8
    lfs     f1, -0x2a74(rtoc)
    lfs     f0, 0x40(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c4ad8
    lfs     f2, -0x2a70(rtoc)
    lfs     f3, 0x3c(sp)
    fcmpo   cr0, f2, f3
    bge-    branch_0x801c4ad8
    lfs     f1, -0x2a6c(rtoc)
    fcmpo   cr0, f3, f1
    bge-    branch_0x801c4ad8
    lfs     f0, -0x2a68(rtoc)
    lfs     f4, 0x44(sp)
    fcmpo   cr0, f0, f4
    bge-    branch_0x801c4ad8
    lfs     f0, -0x2a64(rtoc)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801c4ad8
    lfs     f0, -0x2a78(rtoc)
    fcmpo   cr0, f3, f0
    ble-    branch_0x801c4ab4
    stfs    f1, 0x3c(sp)
    b       branch_0x801c4ab8

branch_0x801c4ab4:
    stfs    f2, 0x3c(sp)
branch_0x801c4ab8:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r4, sp, 0x3c
    addi    r5, sp, 0x30
    bl      PSMTXMultVec
    addi    r3, sp, 0x30
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
branch_0x801c4ad8:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl __ct__14TBellWatermillFPCc
__ct__14TBellWatermillFPCc: # 0x801c4aec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjTurnFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x3dc0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2a78(rtoc)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x170(r31)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x178(r31)
    stfs    f0, 0x17c(r31)
    stfs    f0, 0x180(r31)
    stfs    f0, 0x184(r31)
    stfs    f0, 0x188(r31)
    stfs    f0, 0x18c(r31)
    stb     r0, 0x190(r31)
    stb     r0, 0x1a0(r31)
    stw     r0, 0x1a4(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__14TBellWatermillFv
loadAfter__14TBellWatermillFv: # 0x801c4b68
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x13c0
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    bl      loadAfter__11TMapObjTurnFv
    li      r0, 0x2
    stw     r0, 0x150(r29)
    addi    r3, r31, 0xf8
    lfs     f0, -0x2a60(rtoc)
    stfs    f0, 0x15c(r29)
    lfs     f0, -0x2a5c(rtoc)
    stfs    f0, 0x160(r29)
    lfs     f0, -0x2a58(rtoc)
    stfs    f0, 0x164(r29)
    stfs    f0, 0x18c(r29)
    lfs     f0, -0x2a54(rtoc)
    stfs    f0, 0x174(r29)
    lfs     f0, -0x2a50(rtoc)
    stfs    f0, 0x180(r29)
    lfs     f0, -0x2a4c(rtoc)
    stfs    f0, 0x184(r29)
    lfs     f0, -0x2a48(rtoc)
    stfs    f0, 0x16c(r29)
    lfs     f0, -0x2a44(rtoc)
    stfs    f0, 0x188(r29)
    lfs     f0, -0x2a40(rtoc)
    stfs    f0, 0x17c(r29)
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0xf8
    mtlr    r12
    blrl
    stw     r3, 0x194(r29)
    addi    r3, r31, 0x104
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x104
    mtlr    r12
    blrl
    stw     r3, 0x198(r29)
    addi    r3, r31, 0x110
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x110
    mtlr    r12
    blrl
    stw     r3, 0x19c(r29)
    li      r0, 0x1
    stb     r0, 0x1a0(r29)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl control__14TBellWatermillFv
control__14TBellWatermillFv: # 0x801c4c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c0(sp)
    stfd    f31, 0x1b8(sp)
    stfd    f30, 0x1b0(sp)
    stfd    f29, 0x1a8(sp)
    stfd    f28, 0x1a0(sp)
    stfd    f27, 0x198(sp)
    stfd    f26, 0x190(sp)
    stmw    r27, 0x17c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lfs     f1, -0x2a78(rtoc)
    lfs     f2, 0x158(r31)
    fcmpu   cr0, f1, f2
    bne-    branch_0x801c4cf0
    lfs     f0, 0x178(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801c4cf0
    lfs     f0, 0x170(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c5448
branch_0x801c4cf0:
    lfs     f1, 0x16c(r31)
    fcmpo   cr0, f2, f1
    fneg    f0, f1
    ble-    branch_0x801c4d08
    fmr     f2, f1
    b       branch_0x801c4d14

branch_0x801c4d08:
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c4d14
    fmr     f2, f0
branch_0x801c4d14:
    lfs     f0, 0x154(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x154(r31)
    lfs     f2, 0x154(r31)
    lfs     f0, -0x2a3c(rtoc)
    b       branch_0x801c4d30

branch_0x801c4d2c:
    fsubs   f2, f2, f0
branch_0x801c4d30:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801c4d2c
    lfs     f1, -0x2a3c(rtoc)
    lfs     f0, -0x2a78(rtoc)
    b       branch_0x801c4d4c

branch_0x801c4d48:
    fadds   f2, f2, f1
branch_0x801c4d4c:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801c4d48
    stfs    f2, 0x154(r31)
    li      r4, 0x3044
    lfs     f0, 0x158(r31)
    lwz     r3, gpMSound(r13)
    fabs    f27, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c4d9c
    fmr     f1, f27
    addi    r4, r31, 0x10
    addi    r8, r31, 0x1a4
    li      r3, 0x3044
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801c4d9c:
    lfs     f1, 0x160(r31)
    lfs     f0, 0x158(r31)
    fabs    f1, f1
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x801c4dbc
    lfs     f0, -0x2a78(rtoc)
    stfs    f0, 0x158(r31)
branch_0x801c4dbc:
    lbz     r0, 0x190(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801c4de4
    lfs     f0, -0x2a78(rtoc)
    lfs     f1, 0x158(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x801c4de4
    lfs     f0, 0x160(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x158(r31)
branch_0x801c4de4:
    lfs     f4, 0x170(r31)
    lfs     f1, -0x2a78(rtoc)
    fcmpo   cr0, f4, f1
    bge-    branch_0x801c4e34
    lfs     f2, 0x178(r31)
    lfs     f0, 0x17c(r31)
    fabs    f3, f2
    fcmpo   cr0, f3, f0
    bge-    branch_0x801c4e14
    stfs    f1, 0x170(r31)
    stfs    f1, 0x178(r31)
    b       branch_0x801c4e58

branch_0x801c4e14:
    fsubs   f0, f4, f2
    stfs    f0, 0x170(r31)
    lfs     f0, 0x188(r31)
    lfs     f1, 0x178(r31)
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x178(r31)
    b       branch_0x801c4e58

branch_0x801c4e34:
    lbz     r0, 0x190(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801c4e58
    fcmpu   cr0, f1, f4
    beq-    branch_0x801c4e58
    lfs     f1, 0x178(r31)
    lfs     f0, 0x184(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x178(r31)
branch_0x801c4e58:
    lfs     f1, 0x170(r31)
    lfs     f0, 0x178(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x170(r31)
    lfs     f1, 0x170(r31)
    lfs     f0, 0x174(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c5214
    lwz     r29, 0x194(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r29)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2a78(rtoc)
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c4f04
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r29)
    li      r4, 0x0
    lfs     f27, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r29)
    li      r4, 0x0
    lfs     f28, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x2a28(rtoc)
    fadds   f3, f28, f27
    xoris   r3, r3, 0x8000
    stw     r3, 0x174(sp)
    lfs     f0, -0x2a40(rtoc)
    stw     r0, 0x170(sp)
    lfd     f1, 0x170(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x801c4f68
branch_0x801c4f04:
    mr      r3, r29
    lhz     r4, 0x138(r29)
    bl      startAnim__11TMapObjBaseFUs
    bl      SMSGetAnmFrameRate__Fv
    fmr     f27, f1
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f27, 0xc(r3)
    lbz     r0, 0x13a(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801c4f68
    lis     r28, 0x1
    lwz     r3, gpMSound(r13)
    subi    r4, r28, 0x7648
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c4f68
    subi    r3, r28, 0x7648
    addi    r4, r29, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c4f68:
    lwz     r29, 0x198(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r29)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2a78(rtoc)
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c4ff4
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r29)
    li      r4, 0x0
    lfs     f27, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r29)
    li      r4, 0x0
    lfs     f28, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x2a28(rtoc)
    fadds   f3, f28, f27
    xoris   r3, r3, 0x8000
    stw     r3, 0x174(sp)
    lfs     f0, -0x2a40(rtoc)
    stw     r0, 0x170(sp)
    lfd     f1, 0x170(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x801c5058
branch_0x801c4ff4:
    mr      r3, r29
    lhz     r4, 0x138(r29)
    bl      startAnim__11TMapObjBaseFUs
    bl      SMSGetAnmFrameRate__Fv
    fmr     f27, f1
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f27, 0xc(r3)
    lbz     r0, 0x13a(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801c5058
    lis     r28, 0x1
    lwz     r3, gpMSound(r13)
    subi    r4, r28, 0x7648
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c5058
    subi    r3, r28, 0x7648
    addi    r4, r29, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c5058:
    lwz     r29, 0x19c(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r29)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2a78(rtoc)
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c50e4
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r29)
    li      r4, 0x0
    lfs     f27, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r29)
    li      r4, 0x0
    lfs     f28, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x2a28(rtoc)
    fadds   f3, f28, f27
    xoris   r3, r3, 0x8000
    stw     r3, 0x174(sp)
    lfs     f0, -0x2a40(rtoc)
    stw     r0, 0x170(sp)
    lfd     f1, 0x170(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x801c5148
branch_0x801c50e4:
    mr      r3, r29
    lhz     r4, 0x138(r29)
    bl      startAnim__11TMapObjBaseFUs
    bl      SMSGetAnmFrameRate__Fv
    fmr     f27, f1
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f27, 0xc(r3)
    lbz     r0, 0x13a(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801c5148
    lis     r28, 0x1
    lwz     r3, gpMSound(r13)
    subi    r4, r28, 0x7648
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c5148
    subi    r3, r28, 0x7648
    addi    r4, r29, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c5148:
    lfs     f0, 0x174(r31)
    stfs    f0, 0x170(r31)
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c5214
    lfd     f27, -0x2a28(rtoc)
    li      r27, 0x0
    lfs     f28, -0x2a38(rtoc)
    lis     r30, 0x4330
    lfs     f29, -0x2a58(rtoc)
    lfs     f30, -0x2a34(rtoc)
    lis     r28, 0x2000
    lfs     f31, -0x2a30(rtoc)
branch_0x801c517c:
    lwz     r3, gpItemManager(r13)
    addi    r4, r28, 0xe
    bl      makeObjAppeared__18TMapObjBaseManagerFUl
    mr.     r29, r3
    beq-    branch_0x801c5200
    lfs     f0, 0x10(r31)
    stfs    f0, 0x10(r29)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x14(r29)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x18(r29)
    bl      rand
    xoris   r0, r3, 0x8000
    stw     r0, 0x174(sp)
    stw     r30, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f27
    fmuls   f26, f28, f0
    bl      rand
    xoris   r0, r3, 0x8000
    stfs    f29, 0xac(r29)
    fmsubs  f0, f29, f26, f31
    stw     r0, 0x16c(sp)
    stw     r30, 0x168(sp)
    lfd     f1, 0x168(sp)
    fsubs   f1, f1, f27
    fmuls   f1, f28, f1
    fmadds  f1, f30, f1, f29
    stfs    f1, 0xb0(r29)
    stfs    f0, 0xb4(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r29)
branch_0x801c5200:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x5
    blt+    branch_0x801c517c
    li      r0, 0x0
    stb     r0, 0x1a0(r31)
branch_0x801c5214:
    lfs     f2, 0x170(r31)
    li      r0, 0x0
    lfs     f1, 0x110(r31)
    addi    r4, sp, 0x130
    lfs     f0, 0x108(r31)
    fadds   f1, f2, f1
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    stb     r0, 0x190(r31)
    lfs     f0, 0x154(r31)
    stfs    f0, 0x38(r31)
    lfs     f3, -0x2a2c(rtoc)
    lfs     f0, 0x38(r31)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f3, f0
    lwz     r6, -0x5ea8(r13)
    lwz     r3, -0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x168(sp)
    lwz     r5, 0x16c(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f4, r3, r0
    fneg    f0, f1
    stfs    f4, 0x130(sp)
    stfs    f0, 0x134(sp)
    lfs     f2, -0x2a78(rtoc)
    stfs    f2, 0x138(sp)
    stfs    f2, 0x13c(sp)
    stfs    f1, 0x140(sp)
    stfs    f4, 0x144(sp)
    stfs    f2, 0x148(sp)
    stfs    f2, 0x14c(sp)
    stfs    f2, 0x150(sp)
    stfs    f2, 0x154(sp)
    lfs     f1, -0x2a40(rtoc)
    stfs    f1, 0x158(sp)
    stfs    f2, 0x15c(sp)
    lfs     f0, 0x34(r31)
    fcmpu   cr0, f2, f0
    beq-    branch_0x801c53a0
    lfs     f0, 0x38(r31)
    mr      r5, r4
    lwz     r0, -0x5eac(r13)
    addi    r3, sp, 0x100
    fmuls   f0, f3, f0
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x168(sp)
    lwz     r7, 0x16c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f4, r8, r0
    lfsx    f5, r6, r0
    fneg    f0, f4
    stfs    f5, 0x130(sp)
    stfs    f0, 0x134(sp)
    stfs    f2, 0x138(sp)
    stfs    f2, 0x13c(sp)
    stfs    f4, 0x140(sp)
    stfs    f5, 0x144(sp)
    stfs    f2, 0x148(sp)
    stfs    f2, 0x14c(sp)
    stfs    f2, 0x150(sp)
    stfs    f2, 0x154(sp)
    stfs    f1, 0x158(sp)
    stfs    f2, 0x15c(sp)
    lfs     f0, 0x34(r31)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f3, f0
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x170(sp)
    lwz     r7, 0x174(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f3
    stfs    f4, 0x100(sp)
    stfs    f2, 0x104(sp)
    stfs    f3, 0x108(sp)
    stfs    f2, 0x10c(sp)
    stfs    f2, 0x110(sp)
    stfs    f1, 0x114(sp)
    stfs    f2, 0x118(sp)
    stfs    f2, 0x11c(sp)
    stfs    f0, 0x120(sp)
    stfs    f2, 0x124(sp)
    stfs    f4, 0x128(sp)
    stfs    f2, 0x12c(sp)
    bl      PSMTXConcat
    b       branch_0x801c5408

branch_0x801c53a0:
    lfs     f0, 0x38(r31)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f3, f0
    lwz     r5, -0x5ea8(r13)
    lwz     r3, -0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x168(sp)
    lwz     r4, 0x16c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    lfsx    f4, r3, r0
    fneg    f0, f3
    stfs    f4, 0x130(sp)
    stfs    f0, 0x134(sp)
    stfs    f2, 0x138(sp)
    stfs    f2, 0x13c(sp)
    stfs    f3, 0x140(sp)
    stfs    f4, 0x144(sp)
    stfs    f2, 0x148(sp)
    stfs    f2, 0x14c(sp)
    stfs    f2, 0x150(sp)
    stfs    f2, 0x154(sp)
    stfs    f1, 0x158(sp)
    stfs    f2, 0x15c(sp)
branch_0x801c5408:
    lfs     f0, 0x10(r31)
    addi    r3, r31, 0x0
    addi    r28, sp, 0x130
    stfs    f0, 0x13c(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x15c(sp)
    lfs     f1, 0x14c(sp)
    lfs     f0, 0x108(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14c(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mr      r3, r28
    bl      PSMTXCopy
branch_0x801c5448:
    lmw     r27, 0x17c(sp)
    lwz     r0, 0x1c4(sp)
    lfd     f31, 0x1b8(sp)
    lfd     f30, 0x1b0(sp)
    mtlr    r0
    lfd     f29, 0x1a8(sp)
    lfd     f28, 0x1a0(sp)
    lfd     f27, 0x198(sp)
    lfd     f26, 0x190(sp)
    addi    sp, sp, 0x1c0
    blr


.globl touchWater__14TBellWatermillFP9THitActor
touchWater__14TBellWatermillFP9THitActor: # 0x801c5474
    li      r0, 0x1
    stb     r0, 0x190(r3)
    lfs     f1, 0x158(r3)
    lfs     f0, 0x16c(r3)
    fabs    f2, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x801c54b4
    lfs     f1, 0x178(r3)
    lfs     f0, 0x180(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x178(r3)
    lfs     f1, 0x158(r3)
    lfs     f0, 0x15c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x158(r3)
    b       branch_0x801c54c0

branch_0x801c54b4:
    lfs     f0, 0x15c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x158(r3)
branch_0x801c54c0:
    lfs     f0, 0x158(r3)
    lfs     f1, 0x164(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801c54d4
    stfs    f1, 0x158(r3)
branch_0x801c54d4:
    li      r3, 0x1
    blr


.globl __ct__11TBiancoBellFPCc
__ct__11TBiancoBellFPCc: # 0x801c54dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x3c4c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    sth     r0, 0x138(r31)
    stb     r0, 0x13a(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__11TBiancoBellFv
initMapObj__11TBiancoBellFv: # 0x801c552c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lis     r4, 0x8039
    lwz     r3, 0x4(r31)
    addi    r4, r4, 0x14b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c5570
    li      r0, 0x1
    sth     r0, 0x138(r31)
    li      r0, 0x0
    stb     r0, 0x13a(r31)
    b       branch_0x801c55ac

branch_0x801c5570:
    lis     r4, 0x8039
    lwz     r3, 0x4(r31)
    addi    r4, r4, 0x14c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c559c
    li      r0, 0x2
    sth     r0, 0x138(r31)
    li      r0, 0x1
    stb     r0, 0x13a(r31)
    b       branch_0x801c55ac

branch_0x801c559c:
    li      r0, 0x3
    sth     r0, 0x138(r31)
    li      r0, 0x0
    stb     r0, 0x13a(r31)
branch_0x801c55ac:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__11TBiancoBellFP9THitActor
touchPlayer__11TBiancoBellFP9THitActor: # 0x801c55c0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2a78(rtoc)
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c5668
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f31, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x2a28(rtoc)
    fadds   f3, f30, f31
    xoris   r3, r3, 0x8000
    stw     r3, 0x44(sp)
    lfs     f0, -0x2a40(rtoc)
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x801c56c0
branch_0x801c5668:
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      startAnim__11TMapObjBaseFUs
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    lis     r31, 0x1
    subi    r4, r31, 0x7648
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c56c0
    subi    r3, r31, 0x7648
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c56c0:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl touchWater__11TBiancoBellFP9THitActor
touchWater__11TBiancoBellFP9THitActor: # 0x801c56e0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2a78(rtoc)
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c5788
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f31, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x2a28(rtoc)
    fadds   f3, f30, f31
    xoris   r3, r3, 0x8000
    stw     r3, 0x44(sp)
    lfs     f0, -0x2a40(rtoc)
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x801c57e0
branch_0x801c5788:
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      startAnim__11TMapObjBaseFUs
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    lis     r31, 0x1
    subi    r4, r31, 0x7648
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c57e0
    subi    r3, r31, 0x7648
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801c57e0:
    lwz     r0, 0x64(sp)
    li      r3, 0x1
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl __ct__15TLampSeesawMainFPCc
__ct__15TLampSeesawMainFPCc: # 0x801c5804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x3980
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    li      r0, 0x0
    subi    r4, r3, 0x3ae8
    stw     r0, 0x138(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    lfs     f0, -0x2a20(rtoc)
    stfs    f0, 0x140(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lfs     f0, -0x2a78(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x2a1c(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x2a18(rtoc)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x2a44(rtoc)
    stfs    f0, 0x150(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TLampSeesawFv
__dt__11TLampSeesawFv: # 0x801c588c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c58f4
    lis     r3, 0x803d
    subi    r3, r3, 0x3980
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c58e4
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c58e4:
    extsh.  r0, r31
    ble-    branch_0x801c58f4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c58f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__15TLampSeesawMainFv
loadAfter__15TLampSeesawMainFv: # 0x801c5910
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x14dc
    stwu    sp, -0x90(sp)
    stmw    r25, 0x74(sp)
    addi    r31, r3, 0x0
    mr      r3, r0
    bl      strlen
    lwz     r6, 0x4(r31)
    addi    r29, r3, 0x0
    lis     r3, 0x8039
    crxor   6, 6, 6
    add     r4, r6, r29
    lbzx    r28, r6, r29
    addi    r5, r3, 0x14f0
    lbz     r27, 0x1(r4)
    addi    r3, sp, 0x28
    lbz     r26, 0x2(r4)
    lbz     r25, 0x3(r4)
    li      r4, 0x40
    bl      snprintf
    addi    r30, sp, 0x28
    stbx    r28, r30, r29
    addi    r3, sp, 0x29
    addi    r5, sp, 0x2a
    stbx    r27, r3, r29
    addi    r4, sp, 0x2b
    addi    r3, r30, 0x0
    stbx    r26, r5, r29
    stbx    r25, r4, r29
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    stw     r3, 0x138(r31)
    lwz     r3, 0x138(r31)
    stw     r31, 0x138(r3)
    lwz     r0, 0x94(sp)
    lmw     r25, 0x74(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl control__15TLampSeesawMainFv
control__15TLampSeesawMainFv: # 0x801c59d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801c5a0c
    bge-    branch_0x801c5a00
    b       branch_0x801c5bac

branch_0x801c5a00:
    cmpwi   r0, 0x4
    bge-    branch_0x801c5bac
    b       branch_0x801c5ab8

branch_0x801c5a0c:
    lfs     f1, 0x14(r31)
    lfs     f3, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fadds   f1, f1, f3
    fcmpo   cr0, f1, f0
    blt-    branch_0x801c5a3c
    lwz     r3, 0x138(r31)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x13c(r3)
    fsubs   f0, f0, f3
    fcmpo   cr0, f0, f2
    bge-    branch_0x801c5a70
branch_0x801c5a3c:
    fabs    f1, f3
    lfs     f0, 0x150(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c5a58
    lfs     f0, -0x2a78(rtoc)
    stfs    f0, 0x144(r31)
    b       branch_0x801c5a88

branch_0x801c5a58:
    lfs     f0, 0x14c(r31)
    lfs     f1, 0x144(r31)
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    b       branch_0x801c5a88

branch_0x801c5a70:
    stfs    f1, 0x14(r31)
    lwz     r3, 0x138(r31)
    lfs     f0, 0x144(r31)
    lfs     f1, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
branch_0x801c5a88:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x148(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, 0x150(r31)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c5bac
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801c5bac

branch_0x801c5ab8:
    lfs     f1, 0x144(r31)
    lfs     f0, -0x2a78(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c5ad8
    lfs     f0, 0x150(r31)
    fneg    f0, f0
    stfs    f0, 0x144(r31)
    b       branch_0x801c5ae0

branch_0x801c5ad8:
    lfs     f0, 0x150(r31)
    stfs    f0, 0x144(r31)
branch_0x801c5ae0:
    lfs     f1, 0x14(r31)
    lfs     f3, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fadds   f1, f1, f3
    fcmpo   cr0, f1, f0
    blt-    branch_0x801c5b10
    lwz     r3, 0x138(r31)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x13c(r3)
    fsubs   f0, f0, f3
    fcmpo   cr0, f0, f2
    bge-    branch_0x801c5b44
branch_0x801c5b10:
    fabs    f1, f3
    lfs     f0, 0x150(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c5b2c
    lfs     f0, -0x2a78(rtoc)
    stfs    f0, 0x144(r31)
    b       branch_0x801c5b5c

branch_0x801c5b2c:
    lfs     f0, 0x14c(r31)
    lfs     f1, 0x144(r31)
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    b       branch_0x801c5b5c

branch_0x801c5b44:
    stfs    f1, 0x14(r31)
    lwz     r3, 0x138(r31)
    lfs     f0, 0x144(r31)
    lfs     f1, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
branch_0x801c5b5c:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x148(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f0, 0x144(r31)
    lfs     f2, 0x150(r31)
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x801c5bac
    lfs     f1, 0x110(r31)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x801c5bac
    lfs     f0, -0x2a78(rtoc)
    li      r0, 0x1
    stfs    f0, 0x144(r31)
    sth     r0, 0xfc(r31)
branch_0x801c5bac:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl touchPlayer__15TLampSeesawMainFP9THitActor
touchPlayer__15TLampSeesawMainFP9THitActor: # 0x801c5bc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c5bf8
    mr      r3, r31
    lfs     f1, 0x140(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
branch_0x801c5bf8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl pushDown__15TLampSeesawMainFf
pushDown__15TLampSeesawMainFf: # 0x801c5c0c
    li      r0, 0x2
    sth     r0, 0xfc(r3)
    lfs     f0, 0x144(r3)
    fsubs   f0, f0, f1
    stfs    f0, 0x144(r3)
    blr


.globl __ct__11TLampSeesawFPCc
__ct__11TLampSeesawFPCc: # 0x801c5c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x3980
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    lfs     f0, -0x2a20(rtoc)
    stfs    f0, 0x140(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__11TLampSeesawFR20JSUMemoryInputStream
load__11TLampSeesawFR20JSUMemoryInputStream: # 0x801c5c78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x110(r30)
    mr      r3, r31
    lfs     f0, 0x14(sp)
    addi    r4, r30, 0x140
    li      r5, 0x4
    fsubs   f0, f1, f0
    stfs    f0, 0x13c(r30)
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x140(r30)
    lfs     f0, -0x2a14(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x140(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl touchPlayer__11TLampSeesawFP9THitActor
touchPlayer__11TLampSeesawFP9THitActor: # 0x801c5cf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c5d2c
    lwz     r3, 0x138(r31)
    lfs     f0, 0x140(r31)
    lwz     r12, 0x0(r3)
    fneg    f1, f0
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
branch_0x801c5d2c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl pushDown__11TLampSeesawFf
pushDown__11TLampSeesawFf: # 0x801c5d40
    blr


.globl __ct__15TLeafBoatRottenFPCc
__ct__15TLeafBoatRottenFPCc: # 0x801c5d44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9TLeafBoatFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x3818
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0xff
    addi    r3, r31, 0x0
    stw     r4, 0x170(r31)
    sth     r0, 0x178(r31)
    sth     r0, 0x17a(r31)
    sth     r0, 0x17c(r31)
    sth     r0, 0x17e(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__9TLeafBoatFv
__dt__9TLeafBoatFv: # 0x801c5da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c5e0c
    lis     r3, 0x803d
    subi    r3, r3, 0x36b4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c5dfc
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c5dfc:
    extsh.  r0, r31
    ble-    branch_0x801c5e0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c5e0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__15TLeafBoatRottenFR20JSUMemoryInputStream
load__15TLeafBoatRottenFR20JSUMemoryInputStream: # 0x801c5e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x170
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x170(r30)
    addi    r3, r30, 0x0
    mulli   r0, r0, 0xa
    stw     r0, 0x170(r30)
    bl      getModel__10TLiveActorCFv
    addi    r6, r30, 0x178
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__15TLeafBoatRottenFUlPQ26JDrama9TGraphics
perform__15TLeafBoatRottenFUlPQ26JDrama9TGraphics: # 0x801c5e94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__15TLeafBoatRottenFv
control__15TLeafBoatRottenFv: # 0x801c5eb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    bl      control__9TLeafBoatFv
    mr      r3, r31
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c5f0c
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801c5ef0
    li      r0, 0x1
    b       branch_0x801c5ef4

branch_0x801c5ef0:
    li      r0, 0x0
branch_0x801c5ef4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c5f0c
    lwz     r3, 0x170(r31)
    li      r0, 0x2
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
branch_0x801c5f0c:
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801c5f2c
    bge-    branch_0x801c5f20
    b       branch_0x801c615c

branch_0x801c5f20:
    cmpwi   r0, 0x4
    bge-    branch_0x801c615c
    b       branch_0x801c6078

branch_0x801c5f2c:
    lwz     r3, 0x104(r31)
    lis     r5, 0x4330
    lwz     r0, 0x170(r31)
    subi    r4, r13, 0x7998
    xoris   r3, r3, 0x8000
    xoris   r0, r0, 0x8000
    stw     r3, 0x7c(sp)
    lha     r6, -0x7998(r13)
    stw     r0, 0x74(sp)
    subfic  r0, r6, 0xff
    lfd     f2, -0x2a28(rtoc)
    stw     r5, 0x78(sp)
    xoris   r3, r0, 0x8000
    xoris   r0, r6, 0x8000
    stw     r5, 0x70(sp)
    lfd     f1, 0x78(sp)
    lfd     f0, 0x70(sp)
    fsubs   f1, f1, f2
    stw     r3, 0x6c(sp)
    fsubs   f0, f0, f2
    stw     r0, 0x64(sp)
    fdivs   f3, f1, f0
    stw     r5, 0x68(sp)
    stw     r5, 0x60(sp)
    lfd     f1, 0x68(sp)
    lfd     f0, 0x60(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x178(r31)
    lha     r6, 0x2(r4)
    subfic  r0, r6, 0xff
    xoris   r3, r0, 0x8000
    xoris   r0, r6, 0x8000
    stw     r3, 0x54(sp)
    stw     r0, 0x4c(sp)
    stw     r5, 0x50(sp)
    stw     r5, 0x48(sp)
    lfd     f1, 0x50(sp)
    lfd     f0, 0x48(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x17a(r31)
    lha     r4, 0x4(r4)
    subfic  r0, r4, 0xff
    xoris   r3, r0, 0x8000
    xoris   r0, r4, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x34(sp)
    stw     r5, 0x38(sp)
    stw     r5, 0x30(sp)
    lfd     f1, 0x38(sp)
    lfd     f0, 0x30(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x17c(r31)
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801c6058
    li      r0, 0x1
    b       branch_0x801c605c

branch_0x801c6058:
    li      r0, 0x0
branch_0x801c605c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c615c
    lfs     f0, -0x2a10(rtoc)
    li      r0, 0x3
    stfs    f0, 0x174(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801c615c

branch_0x801c6078:
    lfs     f1, 0x174(r31)
    lfs     f0, -0x79a0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x174(r31)
    lfs     f0, 0x174(r31)
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x17e(r31)
    lfs     f1, 0x174(r31)
    lfs     f0, -0x799c(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c60f4
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    lhz     r0, 0x5c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801c60cc
    li      r0, 0x1
    b       branch_0x801c60d0

branch_0x801c60cc:
    li      r0, 0x0
branch_0x801c60d0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c60e0
    li      r0, 0x0
    b       branch_0x801c60e4

branch_0x801c60e0:
    li      r0, 0x1
branch_0x801c60e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c60f4
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
branch_0x801c60f4:
    lfs     f1, 0x174(r31)
    lfs     f0, -0x2a78(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801c615c
    lfs     f0, -0x2a40(rtoc)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    li      r3, 0xff
    sth     r3, 0x178(r31)
    li      r0, 0x1
    sth     r3, 0x17a(r31)
    sth     r3, 0x17c(r31)
    sth     r3, 0x17e(r31)
    sth     r0, 0xfc(r31)
branch_0x801c615c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl __ct__9TLeafBoatFPCc
__ct__9TLeafBoatFPCc: # 0x801c6170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x36b4
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f2, -0x2a78(rtoc)
    stfs    f2, 0x138(r31)
    stfs    f2, 0x13c(r31)
    stfs    f2, 0x140(r31)
    lfs     f1, -0x2a0c(rtoc)
    stfs    f1, 0x144(r31)
    stfs    f2, 0x148(r31)
    lfs     f0, -0x2a08(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f1, 0x150(r31)
    lfs     f0, -0x2a04(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2a00(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x29fc(rtoc)
    stfs    f0, 0x15c(r31)
    stw     r0, 0x160(r31)
    stfs    f2, 0x16c(r31)
    stfs    f2, 0x168(r31)
    stfs    f2, 0x164(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__9TLeafBoatFv
initMapObj__9TLeafBoatFv: # 0x801c6208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x2a40(rtoc)
    stfs    f0, 0x138(r31)
    lfs     f0, -0x2a44(rtoc)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x2a1c(rtoc)
    stfs    f0, 0x148(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calc__9TLeafBoatFv
calc__9TLeafBoatFv: # 0x801c6250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lfs     f1, -0x2a78(rtoc)
    lfs     f0, 0x144(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c6314
    lwz     r3, 0x160(r31)
    cmpwi   r3, 0x8
    ble-    branch_0x801c630c
    lfs     f0, 0xb4(r31)
    lfs     f1, 0xac(r31)
    fabs    f2, f0
    lfs     f0, -0x2a4c(rtoc)
    fabs    f1, f1
    fadds   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c6300
    lfs     f2, 0x14(r31)
    mr      r3, r31
    lfs     f1, 0x108(r31)
    addi    r6, r31, 0x164
    lfs     f3, 0x18(r31)
    lfs     f0, 0x10(r31)
    fsubs   f1, f2, f1
    addi    r7, sp, 0x20
    stfs    f0, 0x164(r31)
    li      r4, 0x1e8
    li      r5, 0x3
    stfs    f1, 0x168(r31)
    stfs    f3, 0x16c(r31)
    lfs     f0, -0x2a04(rtoc)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    bl      emitAndBindScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x164
    addi    r7, sp, 0x20
    li      r4, 0x107
    li      r5, 0x1
    bl      emitAndBindScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x801c6300:
    li      r0, 0x0
    stw     r0, 0x160(r31)
    b       branch_0x801c6314

branch_0x801c630c:
    addi    r0, r3, 0x1
    stw     r0, 0x160(r31)
branch_0x801c6314:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl control__9TLeafBoatFv
control__9TLeafBoatFv: # 0x801c6328
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r30
    bl      marioHipAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c6364
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x154(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r30)
branch_0x801c6364:
    mr      r3, r30
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801c63c8
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x150(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r30)
    bl      SMS_GetMarioWaterGun__Fv
    lbz     r0, 0x1c86(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x801c63c8
    bl      SMS_GetMarioWaterGun__Fv
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    lfs     f2, 0x0(r3)
    lfs     f1, 0x144(r30)
    lfs     f0, 0xac(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xac(r30)
    lfs     f2, 0x20(r3)
    lfs     f1, 0x144(r30)
    lfs     f0, 0xb4(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
branch_0x801c63c8:
    lwz     r3, -0x70e4(r13)
    addi    r4, r30, 0x10
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x801c6470
    lwz     r4, -0x70e4(r13)
    slwi    r0, r3, 2
    lfs     f1, -0x2a78(rtoc)
    addi    r3, sp, 0x4c
    lwz     r4, 0x14(r4)
    lfs     f5, -0x2a2c(rtoc)
    fmr     f2, f1
    lwz     r4, 0x10(r4)
    fmr     f3, f1
    lwzx    r31, r4, r0
    lfs     f0, 0x20(r31)
    lfs     f4, 0x1c(r31)
    lfs     f6, 0x18(r31)
    fmuls   f0, f5, f0
    fmuls   f4, f5, f4
    fmuls   f5, f5, f6
    fctiwz  f0, f0
    fctiwz  f4, f4
    fctiwz  f5, f5
    stfd    f0, 0x80(sp)
    stfd    f5, 0x90(sp)
    lwz     r6, 0x84(sp)
    stfd    f4, 0x88(sp)
    lwz     r4, 0x94(sp)
    lwz     r5, 0x8c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lfs     f2, -0x2a14(rtoc)
    lfs     f0, 0x40(r31)
    lfs     f1, 0x54(sp)
    fmuls   f2, f2, f0
    lfs     f0, 0xac(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xac(r30)
    lfs     f1, 0x74(sp)
    lfs     f0, 0xb4(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xb4(r30)
branch_0x801c6470:
    lfs     f1, 0x14(r30)
    lfs     f0, 0xb0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x108(r30)
    lfs     f2, 0x110(r30)
    fsubs   f1, f1, f0
    lfs     f3, 0x158(r30)
    lfs     f0, 0xb0(r30)
    fsubs   f1, f2, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0xb0(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x15c(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lfs     f1, 0xac(r30)
    lfs     f0, 0x148(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r30)
    lfs     f1, 0xb4(r30)
    lfs     f0, 0x148(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl bind__9TLeafBoatFv
bind__9TLeafBoatFv: # 0x801c64ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r3
    addi    r4, sp, 0xd0
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xdc(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, 0xd4(sp)
    stw     r3, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x88(sp)
    lfs     f0, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x7c(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x7c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x108(r31)
    lwz     r3, gpMap(r13)
    fsubs   f2, f1, f0
    lfs     f1, 0xd4(sp)
    lfs     f3, 0xdc(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    lfs     f3, 0x14(r31)
    lfs     f2, 0x108(r31)
    lfs     f0, -0x29f8(rtoc)
    fsubs   f2, f3, f2
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c6604
    lwz     r6, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    addi    r5, sp, 0xc4
    lwz     r4, 0xd0(sp)
    stw     r6, 0xc4(sp)
    lfs     f1, -0x2a40(rtoc)
    stw     r0, 0xc8(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xcc(sp)
    bl      calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_
    lfs     f0, 0xac(r31)
    lfs     f1, -0x29f4(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(r31)
    lfs     f0, 0xb4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xdc(sp)
branch_0x801c6604:
    lfs     f0, 0xd4(sp)
    li      r5, 0x4
    lfs     f1, 0xd8(sp)
    li      r0, 0x2
    stfs    f0, 0xb8(sp)
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x8c
    lfs     f0, 0x108(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xdc(sp)
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xbc(r31)
    lwz     r6, 0xb8(sp)
    lwz     r7, 0xbc(sp)
    stw     r6, 0x8c(sp)
    lwz     r6, 0xc0(sp)
    stw     r7, 0x90(sp)
    stw     r6, 0x94(sp)
    stfs    f0, 0x98(sp)
    stw     r5, 0x9c(sp)
    stw     r0, 0xa4(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x801c6678
    addi    r3, r31, 0x0
    addi    r4, sp, 0xd4
    addi    r5, sp, 0x8c
    bl      touchWall__9TLeafBoatFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord
branch_0x801c6678:
    lwz     r0, 0xd4(sp)
    addi    r3, sp, 0x50
    lwz     r5, 0xd8(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x50(sp)
    lwz     r0, 0xdc(sp)
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0x9c(r31)
    lwz     r3, MarioHitActorPos(r13)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x108(r31)
    lfs     f4, 0x4(r3)
    fsubs   f5, f1, f0
    lfs     f3, 0x0(r3)
    lfs     f2, 0x10(r31)
    lfs     f1, 0x8(r3)
    fcmpo   cr0, f4, f5
    lfs     f0, 0x18(r31)
    fsubs   f2, f3, f2
    lfs     f3, 0xbc(r31)
    fsubs   f1, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801c6720
    lfs     f0, -0x2a34(rtoc)
    fsubs   f0, f5, f0
    fcmpo   cr0, f0, f4
    bge-    branch_0x801c6720
    fmuls   f1, f1, f1
    fmuls   f0, f3, f3
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c6720
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x801c6720:
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl touchWall__9TLeafBoatFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord
touchWall__9TLeafBoatFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord: # 0x801c6734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    li      r3, 0x0
    lwz     r0, 0x14(r5)
    lfs     f0, -0x2a78(rtoc)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x801c6858
branch_0x801c6760:
    addi    r0, r3, 0x1c
    lwz     r6, 0xac(r31)
    lwzx    r7, r5, r0
    lwz     r0, 0xb0(r31)
    stw     r6, 0x54(sp)
    mr      r6, r7
    stw     r0, 0x58(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x58(sp)
    lfs     f2, 0x38(r7)
    lfs     f3, 0x54(sp)
    fmuls   f1, f1, f2
    lfs     f4, 0x34(r7)
    lfs     f5, 0x5c(sp)
    lfs     f6, 0x3c(r7)
    fmadds  f1, f3, f4, f1
    fmadds  f1, f5, f6, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c6850
    lfs     f0, 0x4(r4)
    mr      r3, r31
    lfs     f1, 0x0(r4)
    addi    r5, sp, 0x60
    fmuls   f0, f0, f2
    lfs     f5, 0x8(r4)
    lfs     f3, 0x40(r7)
    fmadds  f4, f1, f4, f0
    lfs     f2, 0xbc(r31)
    lfs     f1, 0x34(r7)
    lfs     f0, 0x0(r4)
    fmadds  f4, f5, f6, f4
    fadds   f3, f4, f3
    fsubs   f2, f2, f3
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x0(r4)
    lfs     f0, 0xbc(r31)
    lfs     f1, 0x3c(r7)
    fsubs   f2, f0, f3
    lfs     f0, 0x8(r4)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x8(r4)
    mr      r4, r6
    lwz     r6, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x2a40(rtoc)
    stw     r6, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x68(sp)
    bl      calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_
    lfs     f1, 0x60(sp)
    lfs     f0, 0x140(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r31)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x140(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    b       branch_0x801c6858

branch_0x801c6850:
    addi    r3, r3, 0x4
    bdnz+      branch_0x801c6760
branch_0x801c6858:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl touchActor__9TLeafBoatFP9THitActor
touchActor__9TLeafBoatFP9THitActor: # 0x801c686c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801c68a0
    li      r0, 0x1
    b       branch_0x801c68a4

branch_0x801c68a0:
    li      r0, 0x0
branch_0x801c68a4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c6a04
    lfs     f1, 0x10(r31)
    lfs     f0, 0x10(r30)
    lfs     f4, 0x18(r31)
    fsubs   f0, f1, f0
    lfs     f2, 0x18(r30)
    lfs     f3, -0x2a78(rtoc)
    fsubs   f1, f4, f2
    stfs    f0, 0x40(sp)
    stfs    f3, 0x44(sp)
    stfs    f1, 0x48(sp)
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f4, 0x40(sp)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x38(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x34(sp)
    lfs     f2, 0x30(sp)
    fmuls   f0, f1, f0
    lfs     f5, 0x48(sp)
    lfs     f1, 0x38(sp)
    fmadds  f0, f4, f2, f0
    fmadds  f0, f5, f1, f0
    fcmpo   cr0, f0, f3
    blt-    branch_0x801c6a04
    fcmpu   cr0, f3, f4
    bne-    branch_0x801c6928
    fcmpu   cr0, f3, f5
    beq-    branch_0x801c6934
branch_0x801c6928:
    addi    r3, sp, 0x40
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
branch_0x801c6934:
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f5, 0x40(sp)
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x2c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x28(sp)
    lfs     f2, 0x24(sp)
    fmuls   f0, f1, f0
    lwz     r0, 0x4c(r31)
    lfs     f3, 0x48(sp)
    lfs     f1, 0x2c(sp)
    rlwinm. r0, r0, 0, 3, 3
    fmadds  f0, f5, f2, f0
    fmadds  f4, f3, f1, f0
    beq-    branch_0x801c6984
    li      r0, 0x1
    b       branch_0x801c6988

branch_0x801c6984:
    li      r0, 0x0
branch_0x801c6988:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c69cc
    lfs     f3, -0x2a40(rtoc)
    fmuls   f1, f5, f4
    lfs     f2, 0x138(r30)
    lfs     f0, 0xac(r30)
    fadds   f2, f3, f2
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xac(r30)
    lfs     f0, 0x138(r30)
    lfs     f1, 0x48(sp)
    fadds   f2, f3, f0
    lfs     f0, 0xb4(r30)
    fmuls   f1, f1, f4
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
    b       branch_0x801c6a04

branch_0x801c69cc:
    lfs     f3, -0x2a40(rtoc)
    fmuls   f1, f5, f4
    lfs     f2, 0x13c(r30)
    lfs     f0, 0xac(r30)
    fadds   f2, f3, f2
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xac(r30)
    lfs     f0, 0x13c(r30)
    lfs     f1, 0x48(sp)
    fadds   f2, f3, f0
    lfs     f0, 0xb4(r30)
    fmuls   f1, f1, f4
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
branch_0x801c6a04:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __ct__19TBiancoMiniWindmillFPCc
__ct__19TBiancoMiniWindmillFPCc: # 0x801c6a1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    lwz     r30, 0x8(sp)
    subi    r3, r3, 0x3550
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2a28(rtoc)
    stw     r0, 0x1c(sp)
    lis     r31, 0x4330
    lfs     f1, -0x2a38(rtoc)
    stw     r31, 0x18(sp)
    lfs     f0, -0x2a3c(rtoc)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x150(r30)
    lfs     f0, -0x2a78(rtoc)
    stfs    f0, 0x154(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2a28(rtoc)
    stw     r0, 0x14(sp)
    li      r0, 0x0
    lfs     f1, -0x2a38(rtoc)
    mr      r3, r30
    stw     r31, 0x10(sp)
    lfs     f0, -0x2a40(rtoc)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fadds   f0, f0, f1
    stfs    f0, 0x158(r30)
    stw     r0, 0x15c(r30)
    stw     r0, 0x160(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl initMapObj__19TBiancoMiniWindmillFv
initMapObj__19TBiancoMiniWindmillFv: # 0x801c6ae8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x2a78(rtoc)
    li      r3, 0x6c
    stfs    f0, 0x13c(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801c6b2c
    lis     r3, 0x8039
    addi    r4, r3, 0x1508
    addi    r3, r30, 0x0
    bl      __ct__16TMapObjMessengerFPCc
branch_0x801c6b2c:
    stw     r30, 0x15c(r31)
    li      r4, 0x0
    li      r5, 0x1
    lfs     f1, -0x2a78(rtoc)
    li      r6, 0x0
    lwz     r3, 0x15c(r31)
    fmr     f2, f1
    lfs     f3, -0x29f0(rtoc)
    lfs     f4, -0x29ec(rtoc)
    bl      initHitActor__9THitActorFUlUsiffff
    lfs     f2, -0x2a2c(rtoc)
    lfs     f0, 0x34(r31)
    lwz     r0, -0x5eac(r13)
    fmuls   f1, f2, f0
    lwz     r5, -0x5ea8(r13)
    lfs     f3, -0x79a8(r13)
    lfs     f0, 0x10(r31)
    fctiwz  f1, f1
    lwz     r3, 0x15c(r31)
    stfd    f1, 0x30(sp)
    lwz     r4, 0x34(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x79a4(r13)
    lwz     r3, 0x15c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f0, 0x34(r31)
    lwz     r0, -0x5eac(r13)
    fmuls   f1, f2, f0
    lwz     r5, -0x5ea4(r13)
    lfs     f2, -0x79a8(r13)
    lfs     f0, 0x18(r31)
    fctiwz  f1, f1
    lwz     r3, 0x15c(r31)
    stfd    f1, 0x28(sp)
    lwz     r4, 0x2c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x18(r3)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl control__19TBiancoMiniWindmillFv
control__19TBiancoMiniWindmillFv: # 0x801c6c04
    lfs     f1, 0x154(r3)
    lfs     f0, 0x158(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c6c24
    lfs     f0, -0x79b0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x154(r3)
    b       branch_0x801c6c28

branch_0x801c6c24:
    stfs    f0, 0x154(r3)
branch_0x801c6c28:
    lfs     f1, 0x150(r3)
    lfs     f0, 0x154(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x150(r3)
    lfs     f2, 0x150(r3)
    lfs     f0, -0x2a3c(rtoc)
    b       branch_0x801c6c48

branch_0x801c6c44:
    fsubs   f2, f2, f0
branch_0x801c6c48:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801c6c44
    lfs     f1, -0x2a3c(rtoc)
    lfs     f0, -0x2a78(rtoc)
    b       branch_0x801c6c64

branch_0x801c6c60:
    fadds   f2, f2, f1
branch_0x801c6c64:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801c6c60
    stfs    f2, 0x150(r3)
    blr


.globl calc__19TBiancoMiniWindmillFv
calc__19TBiancoMiniWindmillFv: # 0x801c6c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    addi    r30, sp, 0x3c
    lfs     f3, -0x2a78(rtoc)
    lfs     f2, -0x2a40(rtoc)
    stfs    f3, 0x68(sp)
    lfs     f1, -0x2a2c(rtoc)
    stfs    f3, 0x58(sp)
    lwz     r0, -0x5eac(r13)
    stfs    f3, 0x48(sp)
    lwz     r6, -0x5ea8(r13)
    stfs    f3, 0x54(sp)
    lwz     r4, -0x5ea4(r13)
    stfs    f3, 0x44(sp)
    stfs    f3, 0x60(sp)
    stfs    f3, 0x40(sp)
    stfs    f3, 0x5c(sp)
    stfs    f3, 0x4c(sp)
    stfs    f2, 0x64(sp)
    stfs    f2, 0x50(sp)
    stfs    f2, 0x3c(sp)
    lfs     f0, 0x150(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f4, r4, r0
    fneg    f0, f1
    stfs    f4, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f3, 0x44(sp)
    stfs    f3, 0x48(sp)
    stfs    f1, 0x4c(sp)
    stfs    f4, 0x50(sp)
    stfs    f3, 0x54(sp)
    stfs    f3, 0x58(sp)
    stfs    f3, 0x5c(sp)
    stfs    f3, 0x60(sp)
    stfs    f2, 0x64(sp)
    stfs    f3, 0x68(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r4, r30, 0x0
    addi    r5, r30, 0x0
    bl      PSMTXConcat
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x30
    lfs     f0, 0xc(r4)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x58(sp)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x68(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, r30, 0x0
    addi    r4, r4, 0x30
    bl      PSMTXCopy
    lwz     r4, 0x15c(r31)
    lwz     r3, gpMSound(r13)
    addi    r4, r4, 0x10
    bl      getDistPowFromCamera__6MSoundFRC3Vec
    lfs     f0, -0x29e8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c6df4
    lfs     f0, 0x154(r31)
    li      r4, 0x3045
    lwz     r5, 0x15c(r31)
    fabs    f31, f0
    lwz     r3, gpMSound(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c6df4
    fmr     f1, f31
    addi    r4, r30, 0x0
    addi    r8, r31, 0x160
    li      r3, 0x3045
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801c6df4:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl touchWater__19TBiancoMiniWindmillFP9THitActor
touchWater__19TBiancoMiniWindmillFP9THitActor: # 0x801c6e10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getWaterPos__11TMapObjBaseFP9THitActor
    lfs     f2, 0x14(r30)
    lfs     f1, -0x79a4(r13)
    lfs     f0, -0x29f0(rtoc)
    fadds   f1, f2, f1
    lfs     f2, 0x4(r3)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801c6e5c
    li      r3, 0x1
    b       branch_0x801c6f14

branch_0x801c6e5c:
    mr      r3, r31
    bl      getWaterSpeed__11TMapObjBaseFP9THitActor
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x18(r3)
    lfs     f2, 0x0(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x8(r3)
    lfs     f5, 0x8(r31)
    lfs     f4, 0x28(r3)
    fmadds  f0, f2, f1, f0
    lfs     f3, -0x2a78(rtoc)
    fmadds  f0, f5, f4, f0
    fcmpo   cr0, f0, f3
    ble-    branch_0x801c6eac
    li      r3, 0x0
    b       branch_0x801c6f14

branch_0x801c6eac:
    lfs     f1, 0x154(r30)
    lfs     f0, -0x79b4(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x154(r30)
    lfs     f0, 0x154(r30)
    lfs     f1, -0x79ac(r13)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801c6f10
    stfs    f1, 0x154(r30)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x3c
    lwz     r5, 0x15c(r30)
    lfs     f2, -0x29e4(rtoc)
    lfs     f1, 0x14(r5)
    lfs     f4, 0x18(r30)
    lfs     f0, 0x10(r30)
    fadds   f1, f2, f1
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f4, 0x44(sp)
    stfs    f3, 0x13c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
branch_0x801c6f10:
    li      r3, 0x1
branch_0x801c6f14:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __ct__24TBiancoWatermillVerticalFPCc
__ct__24TBiancoWatermillVerticalFPCc: # 0x801c6f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x33e0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2a78(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stw     r0, 0x140(r31)
    stb     r0, 0x144(r31)
    stw     r0, 0x148(r31)
    stw     r0, 0x14c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__24TBiancoWatermillVerticalFR20JSUMemoryInputStream
load__24TBiancoWatermillVerticalFR20JSUMemoryInputStream: # 0x801c6f90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x13c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x13c(r30)
    lfs     f0, -0x2a54(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x13c(r30)
    lfs     f0, 0x13c(r30)
    stfs    f0, 0x138(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__24TBiancoWatermillVerticalFv
loadAfter__24TBiancoWatermillVerticalFv: # 0x801c6ff0
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x13c0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    bl      loadAfter__11TMapObjBaseFv
    lwz     r3, 0x4(r29)
    addi    r4, r31, 0x164
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c7060
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x17c
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x17c
    mtlr    r12
    blrl
    stw     r3, 0x140(r29)
    b       branch_0x801c7090

branch_0x801c7060:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x18c
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x18c
    mtlr    r12
    blrl
    stw     r3, 0x140(r29)
branch_0x801c7090:
    lfs     f0, -0x2a54(rtoc)
    stfs    f0, 0xbc(r29)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl control__24TBiancoWatermillVerticalFv
control__24TBiancoWatermillVerticalFv: # 0x801c70b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lfs     f1, 0x138(r3)
    lfs     f0, 0x13c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c7130
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c7110
    lfs     f0, -0x79c0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x138(r30)
    lfs     f0, 0x138(r30)
    lfs     f1, 0x13c(r30)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801c7130
    stfs    f1, 0x138(r30)
    b       branch_0x801c7130

branch_0x801c7110:
    lfs     f0, -0x79c0(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x138(r30)
    lfs     f0, 0x138(r30)
    lfs     f1, 0x13c(r30)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801c7130
    stfs    f1, 0x138(r30)
branch_0x801c7130:
    lfs     f1, 0x34(r30)
    lfs     f0, 0x138(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lfs     f2, 0x34(r30)
    lfs     f0, -0x2a3c(rtoc)
    b       branch_0x801c7150

branch_0x801c714c:
    fsubs   f2, f2, f0
branch_0x801c7150:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801c714c
    lfs     f1, -0x2a3c(rtoc)
    lfs     f0, -0x2a78(rtoc)
    b       branch_0x801c716c

branch_0x801c7168:
    fadds   f2, f2, f1
branch_0x801c716c:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801c7168
    stfs    f2, 0x34(r30)
    lfs     f1, 0x138(r30)
    lfs     f0, -0x79b8(r13)
    lwz     r3, 0x140(r30)
    fmuls   f30, f1, f0
    lfs     f0, 0x34(r3)
    fadds   f0, f0, f30
    stfs    f0, 0x34(r3)
    lwz     r3, 0x140(r30)
    lfs     f0, -0x2a3c(rtoc)
    lfsu    f2, 0x34(r3)
    b       branch_0x801c71a8

branch_0x801c71a4:
    fsubs   f2, f2, f0
branch_0x801c71a8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801c71a4
    lfs     f1, -0x2a3c(rtoc)
    lfs     f0, -0x2a78(rtoc)
    b       branch_0x801c71c4

branch_0x801c71c0:
    fadds   f2, f2, f1
branch_0x801c71c4:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801c71c0
    stfs    f2, 0x0(r3)
    li      r4, 0x3040
    lfs     f0, 0x138(r30)
    lwz     r3, gpMSound(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c7214
    fmr     f1, f31
    addi    r4, r30, 0x10
    addi    r8, r30, 0x148
    li      r3, 0x3040
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801c7214:
    lwz     r5, 0x140(r30)
    fabs    f31, f30
    lwz     r3, gpMSound(r13)
    li      r4, 0x3042
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c725c
    fmr     f1, f31
    addi    r4, r31, 0x0
    addi    r8, r30, 0x14c
    li      r3, 0x3042
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801c725c:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl setGroundCollision__24TBiancoWatermillVerticalFv
setGroundCollision__24TBiancoWatermillVerticalFv: # 0x801c727c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lbz     r0, 0x144(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801c72a8
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801c72dc
branch_0x801c72a8:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0xec(r31)
    lwz     r4, 0x58(r3)
    lwz     r3, 0x8(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x801c72d4
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801c72d4:
    li      r0, 0x0
    stb     r0, 0x144(r31)
branch_0x801c72dc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl touchWater__24TBiancoWatermillVerticalFP9THitActor
touchWater__24TBiancoWatermillVerticalFP9THitActor: # 0x801c72f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      getWaterPlane__11TMapObjBaseFP9THitActor
    cmplwi  r3, 0x0
    bne-    branch_0x801c7334
    li      r0, 0x1
    stb     r0, 0x144(r29)
    li      r3, 0x0
    b       branch_0x801c7448

branch_0x801c7334:
    mr      r3, r30
    bl      waterHitPlane__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    bne-    branch_0x801c734c
    li      r3, 0x0
    b       branch_0x801c7448

branch_0x801c734c:
    mr      r3, r30
    bl      getWaterPos__11TMapObjBaseFP9THitActor
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getWaterSpeed__11TMapObjBaseFP9THitActor
    lfs     f2, 0x8(r3)
    lfs     f0, 0x0(r3)
    lfs     f1, -0x2a78(rtoc)
    stfs    f0, 0x24(sp)
    stfs    f1, 0x28(sp)
    stfs    f2, 0x2c(sp)
    lfs     f0, 0x24(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801c7390
    lfs     f0, 0x2c(sp)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801c739c
branch_0x801c7390:
    addi    r3, sp, 0x24
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
branch_0x801c739c:
    lfs     f1, 0x0(r31)
    mr      r3, r29
    lfs     f2, 0x8(r31)
    addi    r4, sp, 0x18
    bl      getVerticalVecToTargetXZ__11TMapObjBaseCFffPQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x18
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f31, 0xbc(r29)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      getDistanceXZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
    fsubs   f0, f31, f1
    lfs     f2, 0x28(sp)
    lfs     f1, 0x1c(sp)
    lfs     f4, 0x24(sp)
    fdivs   f7, f0, f31
    lfs     f3, 0x18(sp)
    lfs     f6, 0x2c(sp)
    lfs     f5, 0x20(sp)
    lfs     f0, -0x2a78(rtoc)
    fmuls   f1, f2, f1
    fmadds  f1, f4, f3, f1
    fmadds  f1, f6, f5, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c7424
    lfs     f1, 0x138(r29)
    lfs     f0, -0x79bc(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c7444
    lfs     f0, -0x79c4(r13)
    fmadds  f0, f0, f7, f1
    stfs    f0, 0x138(r29)
    b       branch_0x801c7444

branch_0x801c7424:
    lfs     f0, -0x79bc(r13)
    lfs     f1, 0x138(r29)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x801c7444
    lfs     f0, -0x79c4(r13)
    fnmsubs  f0, f0, f7, f1
    stfs    f0, 0x138(r29)
branch_0x801c7444:
    li      r3, 0x1
branch_0x801c7448:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x48
    blr


.globl __ct__16TBiancoWatermillFPCc
__ct__16TBiancoWatermillFPCc: # 0x801c7468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x327c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x29e0(rtoc)
    stfs    f0, 0x138(r31)
    stw     r0, 0x13c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__16TBiancoWatermillFv
initMapObj__16TBiancoWatermillFv: # 0x801c74bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lis     r4, 0x8039
    lwz     r3, 0xf4(r31)
    addi    r4, r4, 0x155c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c74f8
    lfs     f0, -0x29dc(rtoc)
    stfs    f0, 0xbc(r31)
    b       branch_0x801c7518

branch_0x801c74f8:
    lis     r4, 0x8039
    lwz     r3, 0xf4(r31)
    addi    r4, r4, 0x156c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801c7518
    lfs     f0, -0x29dc(rtoc)
    stfs    f0, 0xbc(r31)
branch_0x801c7518:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__16TBiancoWatermillFv
control__16TBiancoWatermillFv: # 0x801c752c
    mflr    r0
    li      r4, 0x3043
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f1, 0x38(r3)
    lfs     f0, 0x138(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(r3)
    lfs     f0, 0x138(r3)
    lwz     r3, gpMSound(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c7598
    fmr     f1, f31
    addi    r4, r31, 0x10
    addi    r8, r31, 0x13c
    li      r3, 0x3043
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801c7598:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl touchWater__16TBiancoWatermillFP9THitActor
touchWater__16TBiancoWatermillFP9THitActor: # 0x801c75b0
    li      r3, 0x0
    blr


.globl turnByEnemy__16TBiancoWatermillFP9THitActorPC12TBGCheckData
turnByEnemy__16TBiancoWatermillFP9THitActorPC12TBGCheckData: # 0x801c75b8
    blr


.globl initMapObj__17TMapObjRootPakkunFv
initMapObj__17TMapObjRootPakkunFv: # 0x801c75bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    li      r3, 0x40
    bl      __nw__FUl
    stw     r3, 0x138(r31)
    lwz     r4, 0x74(r31)
    lwz     r3, 0x138(r31)
    lwz     r4, 0x4(r4)
    bl      init__19TTrembleModelEffectFP8J3DModel
    lfs     f2, -0x2a40(rtoc)
    li      r4, 0x2ee0
    lwz     r3, 0x138(r31)
    fmr     f3, f2
    lfs     f1, -0x2a34(rtoc)
    bl      tremble__19TTrembleModelEffectFfffi
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl drawObject__17TMapObjRootPakkunFPQ26JDrama9TGraphics
drawObject__17TMapObjRootPakkunFPQ26JDrama9TGraphics: # 0x801c761c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      drawObject__10TLiveActorFPQ26JDrama9TGraphics
    lwz     r3, MarioHitActorPos(r13)
    lfs     f1, 0x18(r31)
    lfs     f2, 0x8(r3)
    lfs     f0, -0x29d8(rtoc)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801c769c
    lwz     r3, 0x138(r31)
    bl      movement__19TTrembleModelEffectFv
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801c7670
    li      r0, 0x1
    b       branch_0x801c7674

branch_0x801c7670:
    li      r0, 0x0
branch_0x801c7674:
    clrlwi. r0, r0, 24
    bne-    branch_0x801c769c
    lwz     r3, 0x138(r31)
    lfs     f1, -0x79d4(r13)
    lfs     f2, -0x79d0(r13)
    lfs     f3, -0x79cc(r13)
    lwz     r4, -0x79c8(r13)
    bl      tremble__19TTrembleModelEffectFfffi
    lwz     r0, -0x79c8(r13)
    stw     r0, 0x104(r31)
branch_0x801c769c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__12TBigWindmillFR20JSUMemoryInputStream
load__12TBigWindmillFR20JSUMemoryInputStream: # 0x801c76b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stmw    r24, 0x38(sp)
    mr      r24, r3
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lis     r3, 0x8039
    lfs     f30, -0x2a40(rtoc)
    lfs     f31, -0x2a78(rtoc)
    addi    r29, sp, 0x10
    addi    r28, sp, 0x1c
    addi    r27, sp, 0x28
    addi    r30, r3, 0x157c
    li      r25, 0x0
    li      r31, 0x0
branch_0x801c76f4:
    stfs    f30, 0x10(sp)
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    stfs    f31, 0x1c(sp)
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    stfs    f31, 0x28(sp)
    stfs    f30, 0x14(sp)
    stfs    f31, 0x20(sp)
    stfs    f31, 0x2c(sp)
    stfs    f30, 0x18(sp)
    stfs    f31, 0x24(sp)
    stfs    f31, 0x30(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r26, r31, 0x138
    add     r26, r24, r26
    stw     r3, 0x0(r26)
    lwz     r3, 0x0(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r26)
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    cmpwi   r25, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x801c76f4
    lmw     r24, 0x38(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl control__12TBigWindmillFv
control__12TBigWindmillFv: # 0x801c7790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stfd    f28, 0x50(sp)
    stfd    f27, 0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r27, r3
    bl      control__11TMapObjBaseFv
    lfs     f1, 0x38(r27)
    lfs     f0, -0x79d8(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(r27)
    lfs     f2, 0x38(r27)
    lfs     f0, -0x2a3c(rtoc)
    b       branch_0x801c77dc

branch_0x801c77d8:
    fsubs   f2, f2, f0
branch_0x801c77dc:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801c77d8
    lfs     f1, -0x2a3c(rtoc)
    lfs     f0, -0x2a78(rtoc)
    b       branch_0x801c77f8

branch_0x801c77f4:
    fadds   f2, f2, f1
branch_0x801c77f8:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801c77f4
    stfs    f2, 0x38(r27)
    mr      r3, r27
    bl      setRootMtxRotZ__11TMapObjBaseFv
    lfs     f0, -0x79d8(r13)
    li      r4, 0x3047
    lwz     r3, gpMSound(r13)
    fabs    f28, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801c7850
    fmr     f1, f28
    addi    r4, r27, 0x10
    addi    r8, r27, 0x148
    li      r3, 0x3047
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801c7850:
    lfs     f1, 0x38(r27)
    li      r28, 0x0
    lfs     f0, -0x62a0(r13)
    li      r31, 0x0
    lfs     f28, -0x29d4(rtoc)
    fadds   f31, f1, f0
    lfs     f29, -0x29d0(rtoc)
    lfs     f30, -0x2a3c(rtoc)
branch_0x801c7870:
    addi    r29, r31, 0x138
    add     r29, r27, r29
    lwz     r3, 0x0(r29)
    bl      getModel__10TLiveActorCFv
    fmuls   f27, f28, f31
    lwz     r30, 0x58(r3)
    fmr     f1, f27
    bl      cosf
    lfs     f2, -0x79e0(r13)
    lfs     f0, 0x10(r27)
    fmadds  f0, f2, f1, f0
    fmr     f1, f27
    stfs    f0, 0xc(r30)
    lfs     f27, 0x108(r27)
    bl      sinf
    lfs     f2, -0x79e0(r13)
    fadds   f31, f31, f29
    lfs     f0, 0x14(r27)
    fmadds  f0, f2, f1, f0
    fcmpo   cr0, f31, f30
    fsubs   f0, f0, f27
    stfs    f0, 0x1c(r30)
    lfs     f1, 0x18(r27)
    lfs     f0, -0x79dc(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(r30)
    lwz     r3, 0x0(r29)
    lfs     f2, 0x2c(r30)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0xc(r30)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    ble-    branch_0x801c78fc
    fsubs   f31, f31, f30
branch_0x801c78fc:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x801c7870
    lmw     r27, 0x34(sp)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lfd     f28, 0x50(sp)
    lfd     f27, 0x48(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__14TBellWatermillFv
__dt__14TBellWatermillFv: # 0x801c7934
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c79b4
    lis     r3, 0x803d
    subi    r3, r3, 0x3dc0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c79a4
    lis     r3, 0x803d
    subi    r3, r3, 0x70d0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c79a4
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801c79a4:
    extsh.  r0, r31
    ble-    branch_0x801c79b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c79b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBiancoBellFv
__dt__11TBiancoBellFv: # 0x801c79d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7a38
    lis     r3, 0x803d
    subi    r3, r3, 0x3c4c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7a28
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7a28:
    extsh.  r0, r31
    ble-    branch_0x801c7a38
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7a38:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TLampSeesawMainFv
__dt__15TLampSeesawMainFv: # 0x801c7a54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7ad4
    lis     r3, 0x803d
    subi    r3, r3, 0x3ae8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7ac4
    lis     r3, 0x803d
    subi    r3, r3, 0x3980
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7ac4
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7ac4:
    extsh.  r0, r31
    ble-    branch_0x801c7ad4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7ad4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TLeafBoatRottenFv
__dt__15TLeafBoatRottenFv: # 0x801c7af0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7b70
    lis     r3, 0x803d
    subi    r3, r3, 0x3818
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7b60
    lis     r3, 0x803d
    subi    r3, r3, 0x36b4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7b60
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7b60:
    extsh.  r0, r31
    ble-    branch_0x801c7b70
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7b70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__19TBiancoMiniWindmillFv
__dt__19TBiancoMiniWindmillFv: # 0x801c7b8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7c0c
    lis     r3, 0x803d
    subi    r3, r3, 0x3550
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7bfc
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7bfc
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7bfc:
    extsh.  r0, r31
    ble-    branch_0x801c7c0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7c0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TBiancoWatermillVerticalFv
__dt__24TBiancoWatermillVerticalFv: # 0x801c7c28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7c90
    lis     r3, 0x803d
    subi    r3, r3, 0x33e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7c80
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7c80:
    extsh.  r0, r31
    ble-    branch_0x801c7c90
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7c90:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TBiancoWatermillFv
__dt__16TBiancoWatermillFv: # 0x801c7cac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7d14
    lis     r3, 0x803d
    subi    r3, r3, 0x327c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7d04
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7d04:
    extsh.  r0, r31
    ble-    branch_0x801c7d14
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7d14:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TMapObjRootPakkunFv
__dt__17TMapObjRootPakkunFv: # 0x801c7d30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7d98
    lis     r3, 0x803d
    subi    r3, r3, 0x3118
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7d88
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7d88:
    extsh.  r0, r31
    ble-    branch_0x801c7d98
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7d98:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TBigWindmillFv
__dt__12TBigWindmillFv: # 0x801c7db4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801c7e1c
    lis     r3, 0x803d
    subi    r3, r3, 0x2fb4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801c7e0c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801c7e0c:
    extsh.  r0, r31
    ble-    branch_0x801c7e1c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801c7e1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjBianco_cpp
__sinit_MapObjBianco_cpp: # 0x801c7e38
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6910
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7e80
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801c7e80:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7eb0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801c7eb0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7ee0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801c7ee0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7f10
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801c7f10:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7f40
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801c7f40:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7f70
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801c7f70:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7fa0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801c7fa0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801c7fd0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801c7fd0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801c8000
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801c8000:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801c8030
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801c8030:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801c8060
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801c8060:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801c8090
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801c8090:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801c80c0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801c80c0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801c80f0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801c80f0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801c8120
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801c8120:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12TBigWindmillFv
_32___dt__12TBigWindmillFv: # 0x801c8134
    subi    r3, r3, 0x20
    b       __dt__12TBigWindmillFv


.globl _32___dt__17TMapObjRootPakkunFv
_32___dt__17TMapObjRootPakkunFv: # 0x801c813c
    subi    r3, r3, 0x20
    b       __dt__17TMapObjRootPakkunFv


.globl _32___dt__16TBiancoWatermillFv
_32___dt__16TBiancoWatermillFv: # 0x801c8144
    subi    r3, r3, 0x20
    b       __dt__16TBiancoWatermillFv


.globl _32___dt__24TBiancoWatermillVerticalFv
_32___dt__24TBiancoWatermillVerticalFv: # 0x801c814c
    subi    r3, r3, 0x20
    b       __dt__24TBiancoWatermillVerticalFv


.globl _32___dt__19TBiancoMiniWindmillFv
_32___dt__19TBiancoMiniWindmillFv: # 0x801c8154
    subi    r3, r3, 0x20
    b       __dt__19TBiancoMiniWindmillFv


.globl _32___dt__9TLeafBoatFv
_32___dt__9TLeafBoatFv: # 0x801c815c
    subi    r3, r3, 0x20
    b       __dt__9TLeafBoatFv


.globl _32___dt__15TLeafBoatRottenFv
_32___dt__15TLeafBoatRottenFv: # 0x801c8164
    subi    r3, r3, 0x20
    b       __dt__15TLeafBoatRottenFv


.globl _32___dt__11TLampSeesawFv
_32___dt__11TLampSeesawFv: # 0x801c816c
    subi    r3, r3, 0x20
    b       __dt__11TLampSeesawFv


.globl _32___dt__15TLampSeesawMainFv
_32___dt__15TLampSeesawMainFv: # 0x801c8174
    subi    r3, r3, 0x20
    b       __dt__15TLampSeesawMainFv


.globl _32___dt__11TBiancoBellFv
_32___dt__11TBiancoBellFv: # 0x801c817c
    subi    r3, r3, 0x20
    b       __dt__11TBiancoBellFv


.globl _32___dt__14TBellWatermillFv
_32___dt__14TBellWatermillFv: # 0x801c8184
    subi    r3, r3, 0x20
    b       __dt__14TBellWatermillFv


.globl _32___dt__8TWoodLogFv
_32___dt__8TWoodLogFv: # 0x801c818c
    subi    r3, r3, 0x20
    b       __dt__8TWoodLogFv
