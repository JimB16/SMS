
.globl __dt__8TWoodBoxFv
__dt__8TWoodBoxFv: # 0x801fe690
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fe710
    lis     r3, 0x803d
    addi    r3, r3, 0x6ee0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fe700
    lis     r3, 0x803d
    addi    r3, r3, 0x7050
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fe700
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801fe700:
    extsh.  r0, r31
    ble-    branch_0x801fe710
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fe710:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__8TWoodBoxFPCc
__ct__8TWoodBoxFPCc: # 0x801fe72c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    addi    r6, r3, 0x7050
    li      r8, 0x0
    stw     r8, 0x138(r31)
    lis     r3, 0x803d
    addi    r4, r3, 0x6ee0
    lfs     f0, -0x1e48(rtoc)
    li      r7, 0x1
    addi    r5, r6, 0x24
    stfs    f0, 0x13c(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stfs    f0, 0x140(r31)
    stw     r8, 0x144(r31)
    stw     r8, 0x148(r31)
    stb     r7, 0x14c(r31)
    stw     r6, 0x0(r31)
    stw     r5, 0x20(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__13TBreakHideObjFv
__dt__13TBreakHideObjFv: # 0x801fe7bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fe83c
    lis     r3, 0x803d
    addi    r3, r3, 0x7050
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fe82c
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fe82c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801fe82c:
    extsh.  r0, r31
    ble-    branch_0x801fe83c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fe83c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__8TWoodBoxFv
loadAfter__8TWoodBoxFv: # 0x801fe858
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    bl      loadAfter__11TMapObjBaseFv
    lwz     r4, 0x4(r31)
    lwz     r3, 0x134(r31)
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x138(r31)
    lwz     r3, 0x138(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801fe938
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801fe8a8
    li      r0, 0x1
    b       branch_0x801fe8ac

branch_0x801fe8a8:
    li      r0, 0x0
branch_0x801fe8ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fe8dc
    lwz     r3, gpMarDirector(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, -0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801fe8dc
    li      r0, 0x0
    stb     r0, 0x14c(r31)
branch_0x801fe8dc:
    lwz     r3, 0x138(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x801fe8f8
    li      r0, 0x1
    b       branch_0x801fe8fc

branch_0x801fe8f8:
    li      r0, 0x0
branch_0x801fe8fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fe938
    lwz     r3, 0x4(r31)
    bl      strlen
    addi    r30, r3, 0x0
    addi    r3, r30, 0x13
    bl      __nwa__FUl
    stw     r3, 0x144(r31)
    lis     r3, 0x8039
    addi    r5, r3, 0x4658
    crxor   6, 6, 6
    lwz     r6, 0x4(r31)
    lwz     r3, 0x144(r31)
    addi    r4, r30, 0x13
    bl      snprintf
branch_0x801fe938:
    mr      r3, r31
    bl      checkOnManhole__11TMapObjBaseFv
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl kill__8TWoodBoxFv
kill__8TWoodBoxFv: # 0x801fe958
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stw     r31, 0xec(sp)
    addi    r31, r3, 0x0
    bl      startAnim__11TMapObjBaseFUs
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r4, 0x64(r31)
    li      r3, -0x1
    li      r0, 0x2
    ori     r4, r4, 0x1
    stw     r4, 0x64(r31)
    li      r4, 0x380a
    lwz     r5, 0xf0(r31)
    ori     r5, r5, 0x18
    stw     r5, 0xf0(r31)
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801fe9d4
    addi    r4, r31, 0x10
    li      r3, 0x380a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801fe9d4:
    lwz     r3, MarioHitActorPos(r13)
    addi    r4, sp, 0xe0
    lfs     f3, -0x1e44(rtoc)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x8(r3)
    lfs     f4, -0x1e40(rtoc)
    fadds   f1, f3, f1
    lfs     f2, 0x4(r3)
    fadds   f3, f3, f0
    lwz     r3, gpMap(r13)
    fadds   f2, f4, f2
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x1e3c(rtoc)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f1, f0, f1
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fea68
    lwz     r3, 0xe0(sp)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801fea68
    cmplw   r3, r31
    beq-    branch_0x801fea68
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x1c
    bne-    branch_0x801fea4c
    li      r0, 0x1
    b       branch_0x801fea50

branch_0x801fea4c:
    li      r0, 0x0
branch_0x801fea50:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fea68
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801fea68:
    lwz     r3, MarioHitActorPos(r13)
    addi    r4, sp, 0xdc
    lfs     f1, -0x1e38(rtoc)
    lfs     f0, 0x0(r3)
    lfs     f4, -0x1e40(rtoc)
    lfs     f2, 0x4(r3)
    fadds   f1, f1, f0
    lfs     f3, -0x1e44(rtoc)
    lfs     f0, 0x8(r3)
    fadds   f2, f4, f2
    lwz     r3, gpMap(r13)
    fadds   f3, f3, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x1e3c(rtoc)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f1, f0, f1
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801feb00
    lwz     r3, 0xdc(sp)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801feb00
    cmplw   r3, r31
    beq-    branch_0x801feb00
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x1c
    bne-    branch_0x801feae4
    li      r0, 0x1
    b       branch_0x801feae8

branch_0x801feae4:
    li      r0, 0x0
branch_0x801feae8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801feb00
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801feb00:
    lwz     r3, MarioHitActorPos(r13)
    addi    r4, sp, 0xd8
    lfs     f1, -0x1e44(rtoc)
    lfs     f0, 0x0(r3)
    lfs     f4, -0x1e40(rtoc)
    lfs     f2, 0x4(r3)
    fadds   f1, f1, f0
    lfs     f3, -0x1e38(rtoc)
    lfs     f0, 0x8(r3)
    fadds   f2, f4, f2
    lwz     r3, gpMap(r13)
    fadds   f3, f3, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x1e3c(rtoc)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f1, f0, f1
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801feb98
    lwz     r3, 0xd8(sp)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801feb98
    cmplw   r3, r31
    beq-    branch_0x801feb98
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x1c
    bne-    branch_0x801feb7c
    li      r0, 0x1
    b       branch_0x801feb80

branch_0x801feb7c:
    li      r0, 0x0
branch_0x801feb80:
    clrlwi. r0, r0, 24
    beq-    branch_0x801feb98
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801feb98:
    lwz     r3, MarioHitActorPos(r13)
    addi    r4, sp, 0xd4
    lfs     f3, -0x1e38(rtoc)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x8(r3)
    lfs     f4, -0x1e40(rtoc)
    fadds   f1, f3, f1
    lfs     f2, 0x4(r3)
    fadds   f3, f3, f0
    lwz     r3, gpMap(r13)
    fadds   f2, f4, f2
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x1e3c(rtoc)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f1, f0, f1
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fec2c
    lwz     r3, 0xd4(sp)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801fec2c
    cmplw   r3, r31
    beq-    branch_0x801fec2c
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x1c
    bne-    branch_0x801fec10
    li      r0, 0x1
    b       branch_0x801fec14

branch_0x801fec10:
    li      r0, 0x0
branch_0x801fec14:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fec2c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801fec2c:
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl initMapObj__13TBreakHideObjFv
initMapObj__13TBreakHideObjFv: # 0x801fec40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x2c3
    bne-    branch_0x801fec70
    li      r0, 0x1
    b       branch_0x801fec74

branch_0x801fec70:
    li      r0, 0x0
branch_0x801fec74:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fece4
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x6b
    lbz     r0, 0x6b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fecb0
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x4670
    li      r5, 0x6b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801fecb0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x6c
    lbz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801fece4
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x4694
    li      r5, 0x6c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801fece4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__13TBreakHideObjFv
control__13TBreakHideObjFv: # 0x801fecf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801fed24
    bge-    branch_0x801fed60
    b       branch_0x801fed60

branch_0x801fed24:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801fed60
    mr      r3, r31
    lfs     f1, -0x1e48(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801fed60:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__13TBreakHideObjFP9THitActorUl
receiveMessage__13TBreakHideObjFP9THitActorUl: # 0x801fed74
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801fee28
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x2c3
    bne-    branch_0x801feda8
    li      r0, 0x1
    b       branch_0x801fedac

branch_0x801feda8:
    li      r0, 0x0
branch_0x801fedac:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fee0c
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    li      r4, 0x6b
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    li      r4, 0x6c
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x38a3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801fee0c
    addi    r4, r31, 0x10
    li      r3, 0x38a3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801fee0c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801fee2c

branch_0x801fee28:
    li      r3, 0x0
branch_0x801fee2c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl kill__13TBreakHideObjFv
kill__13TBreakHideObjFv: # 0x801fee40
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      startAnim__11TMapObjBaseFUs
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r4, 0x64(r31)
    li      r3, -0x1
    li      r0, 0x2
    ori     r4, r4, 0x1
    stw     r4, 0x64(r31)
    lwz     r4, 0xf0(r31)
    ori     r4, r4, 0x18
    stw     r4, 0xf0(r31)
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__19THideObjPictureTwinFPCc
__ct__19THideObjPictureTwinFPCc: # 0x801feea0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    mr      r3, r31
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    addi    r8, r3, 0x733c
    li      r10, 0x0
    stw     r10, 0x138(r31)
    lis     r3, 0x803d
    addi    r6, r3, 0x71c0
    lfs     f0, -0x1e48(rtoc)
    li      r9, 0x1
    addi    r7, r8, 0x24
    stfs    f0, 0x13c(r31)
    addi    r0, r6, 0x24
    addi    r3, r31, 0x178
    stfs    f0, 0x140(r31)
    li      r4, 0x0
    li      r5, 0x19
    stw     r10, 0x144(r31)
    stw     r10, 0x148(r31)
    stb     r9, 0x14c(r31)
    stw     r8, 0x0(r31)
    stw     r7, 0x20(r31)
    stb     r9, 0x150(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x1e34(rtoc)
    stfs    f0, 0x168(r31)
    sth     r10, 0x16c(r31)
    sth     r10, 0x16e(r31)
    sth     r10, 0x170(r31)
    sth     r10, 0x172(r31)
    stw     r6, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r10, 0x174(r31)
    bl      memset
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TWaterHitPictureHideObjFv
__dt__23TWaterHitPictureHideObjFv: # 0x801fef7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801feffc
    lis     r3, 0x803d
    addi    r3, r3, 0x733c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fefec
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fefec
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801fefec:
    extsh.  r0, r31
    ble-    branch_0x801feffc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801feffc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__19THideObjPictureTwinFv
initMapObj__19THideObjPictureTwinFv: # 0x801ff018
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lis     r3, 0x8039
    lwz     r6, 0x4(r31)
    addi    r5, r3, 0x46b8
    crxor   6, 6, 6
    addi    r3, r31, 0x178
    li      r4, 0x19
    bl      snprintf
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__19THideObjPictureTwinFv
loadAfter__19THideObjPictureTwinFv: # 0x801ff060
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r25, 0x74(sp)
    addi    r31, r3, 0x0
    addi    r30, r4, 0x4560
    bl      loadAfter__23TWaterHitPictureHideObjFv
    lwz     r3, 0x4(r31)
    addi    r4, r30, 0x164
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801ff124
    addi    r3, r30, 0x164
    bl      strlen
    lwz     r4, 0x4(r31)
    addi    r29, r3, 0x0
    addi    r3, sp, 0x28
    crxor   6, 6, 6
    add     r6, r4, r29
    lbzx    r28, r4, r29
    addi    r5, r30, 0x174
    lbz     r27, 0x1(r6)
    li      r4, 0x40
    lbz     r26, 0x2(r6)
    lbz     r25, 0x3(r6)
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
    stw     r3, 0x174(r31)
    lwz     r3, 0x174(r31)
    stw     r31, 0x174(r3)
branch_0x801ff124:
    lmw     r25, 0x74(sp)
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl afterFinishedAnim__19THideObjPictureTwinFv
afterFinishedAnim__19THideObjPictureTwinFv: # 0x801ff138
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r31, 0x138(r30)
    cmplwi  r31, 0x0
    beq-    branch_0x801ff2cc
    lbz     r0, 0x14c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801ff2cc
    mr      r3, r31
    bl      isCoin__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801ff1d0
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801ff1a0
    li      r0, 0x1
    b       branch_0x801ff1a4

branch_0x801ff1a0:
    li      r0, 0x0
branch_0x801ff1a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff1c4
    lis     r4, 0x2000
    lwz     r3, gpItemManager(r13)
    addi    r4, r4, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr.     r31, r3
    beq-    branch_0x801ff2d4
branch_0x801ff1c4:
    mr      r3, r31
    bl      appearWithoutSound__5TCoinFv
    b       branch_0x801ff1e4

branch_0x801ff1d0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801ff1e4:
    lwz     r4, 0x174(r30)
    addi    r3, sp, 0x34
    lfsu    f0, 0x10(r4)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x18(r31)
    lwz     r4, 0x174(r30)
    lfs     f1, 0x30(r4)
    lfs     f2, 0x34(r4)
    lfs     f3, 0x38(r4)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f4, 0x13c(r30)
    mr      r3, r31
    lfs     f0, 0x3c(sp)
    lfs     f2, 0x4c(sp)
    lfs     f1, 0x140(r30)
    fmuls   f0, f0, f4
    lfs     f3, 0x5c(sp)
    fmadds  f1, f2, f4, f1
    stfs    f0, 0xac(r31)
    fmuls   f0, f3, f4
    stfs    f1, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    bl      isCoin__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801ff26c
    stw     r30, 0x148(r31)
    lwz     r0, 0x148(r30)
    stw     r0, 0x14c(r31)
branch_0x801ff26c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x4843
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ff294
    li      r3, 0x4843
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801ff294:
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x30(sp)
    addi    r0, sp, 0x30
    addi    r4, r30, 0x178
    stw     r0, 0x8(sp)
    addi    r5, r31, 0x10
    li      r6, -0x1
    lfs     f1, -0x1e48(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x801ff2cc:
    li      r0, 0x3
    sth     r0, 0xfc(r30)
branch_0x801ff2d4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __ct__23TWaterHitPictureHideObjFPCc
__ct__23TWaterHitPictureHideObjFPCc: # 0x801ff2ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    addi    r4, r3, 0x733c
    li      r6, 0x0
    stw     r6, 0x138(r31)
    li      r5, 0x1
    addi    r0, r4, 0x24
    lfs     f0, -0x1e48(rtoc)
    mr      r3, r31
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stw     r6, 0x144(r31)
    stw     r6, 0x148(r31)
    stb     r5, 0x14c(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stb     r5, 0x150(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x1e34(rtoc)
    stfs    f0, 0x168(r31)
    sth     r6, 0x16c(r31)
    sth     r6, 0x16e(r31)
    sth     r6, 0x170(r31)
    sth     r6, 0x172(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__23TWaterHitPictureHideObjFR20JSUMemoryInputStream
load__23TWaterHitPictureHideObjFR20JSUMemoryInputStream: # 0x801ff398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    addi    r29, r4, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x48
    addi    r5, r31, 0x13c
    addi    r6, r31, 0x140
    addi    r7, r31, 0x148
    bl      loadHideObjInfo__11TMapObjBaseFR20JSUMemoryInputStreamPlPfPfPl
    lwz     r0, 0x48(sp)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stw     r0, 0x134(r31)
    addi    r30, r3, 0x57
    lbz     r0, 0x57(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ff410
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x46e8
    li      r5, 0x57
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801ff410:
    addi    r3, r29, 0x0
    addi    r4, sp, 0x58
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x54
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x58(sp)
    li      r0, 0xff
    addi    r3, r31, 0x0
    clrlwi  r4, r4, 24
    sth     r4, 0x16c(r31)
    lwz     r4, 0x54(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x16e(r31)
    lwz     r4, 0x50(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x170(r31)
    sth     r0, 0x172(r31)
    lfs     f0, -0x1e30(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x1e2c(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x1e28(rtoc)
    stfs    f0, 0x15c(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, -0x1e24(rtoc)
    lfs     f1, 0x18(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ff4d4
    lfs     f0, -0x1e48(rtoc)
    mr      r3, r31
    stfs    f0, 0x108(r31)
    lfs     f0, -0x1e20(rtoc)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f1, 0x110(r31)
    lfs     f0, 0x108(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f0, -0x1e1c(rtoc)
    stfs    f0, 0x154(r31)
    b       branch_0x801ff524

branch_0x801ff4d4:
    lfs     f0, -0x1e18(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ff51c
    lfs     f1, -0x1e14(rtoc)
    mr      r3, r31
    lfs     f0, 0x28(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x108(r31)
    lfs     f0, -0x1e10(rtoc)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f1, 0x110(r31)
    lfs     f0, 0x108(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f0, -0x1e0c(rtoc)
    stfs    f0, 0x154(r31)
    b       branch_0x801ff524

branch_0x801ff51c:
    lfs     f0, -0x1e30(rtoc)
    stfs    f0, 0x154(r31)
branch_0x801ff524:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r5, r31, 0x16c
    li      r4, 0x1
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl loadAfter__23TWaterHitPictureHideObjFv
loadAfter__23TWaterHitPictureHideObjFv: # 0x801ff554
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    bl      loadAfter__11TMapObjBaseFv
    lwz     r4, 0x4(r31)
    lwz     r3, 0x134(r31)
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x138(r31)
    lwz     r3, 0x138(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801ff634
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801ff5a4
    li      r0, 0x1
    b       branch_0x801ff5a8

branch_0x801ff5a4:
    li      r0, 0x0
branch_0x801ff5a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff5d8
    lwz     r3, gpMarDirector(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, -0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801ff5d8
    li      r0, 0x0
    stb     r0, 0x14c(r31)
branch_0x801ff5d8:
    lwz     r3, 0x138(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x801ff5f4
    li      r0, 0x1
    b       branch_0x801ff5f8

branch_0x801ff5f4:
    li      r0, 0x0
branch_0x801ff5f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff634
    lwz     r3, 0x4(r31)
    bl      strlen
    addi    r30, r3, 0x0
    addi    r3, r30, 0x13
    bl      __nwa__FUl
    stw     r3, 0x144(r31)
    lis     r3, 0x8039
    addi    r5, r3, 0x4658
    crxor   6, 6, 6
    lwz     r6, 0x4(r31)
    lwz     r3, 0x144(r31)
    addi    r4, r30, 0x13
    bl      snprintf
branch_0x801ff634:
    lwz     r3, 0x138(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801ff69c
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801ff658
    li      r0, 0x1
    b       branch_0x801ff65c

branch_0x801ff658:
    li      r0, 0x0
branch_0x801ff65c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff69c
    lwz     r3, gpMarDirector(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, -0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801ff69c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    b       branch_0x801ff8a0

branch_0x801ff69c:
    lis     r3, 0x4000
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x20
    cmpw    r4, r0
    beq-    branch_0x801ff778
    bge-    branch_0x801ff6f0
    addi    r0, r3, 0x13
    cmpw    r4, r0
    beq-    branch_0x801ff764
    bge-    branch_0x801ff6d4
    addi    r0, r3, 0x12
    cmpw    r4, r0
    bge-    branch_0x801ff710
    b       branch_0x801ff7d8

branch_0x801ff6d4:
    addi    r0, r3, 0x1b
    cmpw    r4, r0
    bge-    branch_0x801ff7d8
    addi    r0, r3, 0x18
    cmpw    r4, r0
    bge-    branch_0x801ff764
    b       branch_0x801ff7d8

branch_0x801ff6f0:
    addi    r0, r3, 0x1a2
    cmpw    r4, r0
    beq-    branch_0x801ff79c
    bge-    branch_0x801ff7d8
    addi    r0, r3, 0x1a1
    cmpw    r4, r0
    bge-    branch_0x801ff7c0
    b       branch_0x801ff7d8

branch_0x801ff710:
    lfs     f0, -0x1e08(rtoc)
    mr      r3, r31
    stfs    f0, 0x164(r31)
    lfs     f0, -0x1e04(rtoc)
    stfs    f0, 0x168(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, -0x1e24(rtoc)
    lfs     f1, 0x18(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ff748
    lfs     f0, -0x1e00(rtoc)
    stfs    f0, 0x154(r31)
    b       branch_0x801ff750

branch_0x801ff748:
    lfs     f0, -0x1dfc(rtoc)
    stfs    f0, 0x154(r31)
branch_0x801ff750:
    lfs     f0, -0x1df8(rtoc)
    li      r0, 0x0
    stfs    f0, 0x15c(r31)
    stb     r0, 0x150(r31)
    b       branch_0x801ff7d8

branch_0x801ff764:
    lfs     f0, -0x1df4(rtoc)
    li      r0, 0x1
    stfs    f0, 0x164(r31)
    stb     r0, 0x150(r31)
    b       branch_0x801ff7d8

branch_0x801ff778:
    lfs     f0, -0x1df0(rtoc)
    li      r0, 0x0
    stfs    f0, 0x154(r31)
    lfs     f0, -0x1e10(rtoc)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x1dec(rtoc)
    stfs    f0, 0x168(r31)
    stb     r0, 0x150(r31)
    b       branch_0x801ff7d8

branch_0x801ff79c:
    lfs     f0, -0x1e48(rtoc)
    li      r0, 0x0
    stfs    f0, 0x164(r31)
    lfs     f0, -0x1de8(rtoc)
    stfs    f0, 0x168(r31)
    lfs     f0, -0x1e28(rtoc)
    stfs    f0, 0x154(r31)
    stb     r0, 0x150(r31)
    b       branch_0x801ff7d8

branch_0x801ff7c0:
    lfs     f0, -0x1e48(rtoc)
    li      r0, 0x1
    stfs    f0, 0x164(r31)
    lfs     f0, -0x1e34(rtoc)
    stfs    f0, 0x168(r31)
    stb     r0, 0x150(r31)
branch_0x801ff7d8:
    lbz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801ff7f0
    lfs     f0, 0x168(r31)
    stfs    f0, 0x160(r31)
    b       branch_0x801ff7f8

branch_0x801ff7f0:
    lfs     f0, 0x164(r31)
    stfs    f0, 0x160(r31)
branch_0x801ff7f8:
    lwz     r3, 0x138(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801ff8a0
    bl      isCoin__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801ff820
    lwz     r3, 0x138(r31)
    lwz     r0, 0xf8(r3)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0xf8(r3)
branch_0x801ff820:
    lwz     r4, 0x138(r31)
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x801ff83c
    li      r0, 0x1
    b       branch_0x801ff840

branch_0x801ff83c:
    li      r0, 0x0
branch_0x801ff840:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff8a0
    lwz     r0, 0x134(r4)
    lwz     r3, -0x6060(r13)
    clrlwi  r4, r0, 24
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    beq-    branch_0x801ff8a0
    lbz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801ff878
    lfs     f0, 0x164(r31)
    stfs    f0, 0x160(r31)
    b       branch_0x801ff880

branch_0x801ff878:
    lfs     f0, 0x168(r31)
    stfs    f0, 0x160(r31)
branch_0x801ff880:
    lfs     f0, 0x160(r31)
    li      r0, 0x3
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r3, 0x64(sp)
    clrlwi  r3, r3, 24
    sth     r3, 0x172(r31)
    sth     r0, 0xfc(r31)
branch_0x801ff8a0:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl receiveMessage__23TWaterHitPictureHideObjFP9THitActorUl
receiveMessage__23TWaterHitPictureHideObjFP9THitActorUl: # 0x801ff8b8
    mflr    r0
    cmplwi  r5, 0x5
    stw     r0, 0x4(sp)
    addi    r6, r3, 0x0
    stwu    sp, -0x8(sp)
    bne-    branch_0x801ff96c
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801ff8e8
    li      r0, 0x1
    b       branch_0x801ff8ec

branch_0x801ff8e8:
    li      r0, 0x0
branch_0x801ff8ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ff934
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xf
    bne-    branch_0x801ff908
    li      r0, 0x1
    b       branch_0x801ff90c

branch_0x801ff908:
    li      r0, 0x0
branch_0x801ff90c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ff934
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801ff928
    li      r0, 0x1
    b       branch_0x801ff92c

branch_0x801ff928:
    li      r0, 0x0
branch_0x801ff92c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff96c
branch_0x801ff934:
    lwz     r4, 0x64(r6)
    li      r0, 0x1
    li      r3, 0x1
    clrrwi  r4, r4, 1
    stw     r4, 0x64(r6)
    lwz     r4, 0x64(r6)
    rlwinm  r4, r4, 0, 30, 28
    stw     r4, 0x64(r6)
    lwz     r4, 0x64(r6)
    rlwinm  r4, r4, 0, 31, 29
    stw     r4, 0x64(r6)
    sth     r0, 0xfc(r6)
    stb     r0, 0x14c(r6)
    b       branch_0x801ffa40

branch_0x801ff96c:
    lhz     r0, 0xfc(r6)
    cmplwi  r0, 0x3
    bne-    branch_0x801ff980
    li      r0, 0x1
    b       branch_0x801ff984

branch_0x801ff980:
    li      r0, 0x0
branch_0x801ff984:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff994
    li      r3, 0x0
    b       branch_0x801ffa40

branch_0x801ff994:
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x801ff9ac
    li      r0, 0x1
    b       branch_0x801ff9b0

branch_0x801ff9ac:
    li      r0, 0x0
branch_0x801ff9b0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ff9c8
    li      r0, 0x2
    sth     r0, 0xfc(r6)
    li      r3, 0x1
    b       branch_0x801ffa40

branch_0x801ff9c8:
    cmplwi  r5, 0x5
    bne-    branch_0x801ffa38
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801ff9e4
    li      r0, 0x1
    b       branch_0x801ff9e8

branch_0x801ff9e4:
    li      r0, 0x0
branch_0x801ff9e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ffa30
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xf
    bne-    branch_0x801ffa04
    li      r0, 0x1
    b       branch_0x801ffa08

branch_0x801ffa04:
    li      r0, 0x0
branch_0x801ffa08:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ffa30
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801ffa24
    li      r0, 0x1
    b       branch_0x801ffa28

branch_0x801ffa24:
    li      r0, 0x0
branch_0x801ffa28:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ffa38
branch_0x801ffa30:
    li      r0, 0x1
    stb     r0, 0x14c(r6)
branch_0x801ffa38:
    mr      r3, r6
    bl      receiveMessage__11TMapObjBaseFP9THitActorUl
branch_0x801ffa40:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__23TWaterHitPictureHideObjFv
control__23TWaterHitPictureHideObjFv: # 0x801ffa50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801ffafc
    bge-    branch_0x801ffb14
    cmpwi   r0, 0x1
    bge-    branch_0x801ffa88
    b       branch_0x801ffb14


.incbin "./baserom/code/Text_0x80005600.bin", 0x1fa484, 0x801ffa88 - 0x801ffa84
branch_0x801ffa88:
    lbz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801ffabc
    lfs     f1, 0x160(r31)
    lfs     f0, 0x15c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x160(r31)
    lfs     f0, 0x160(r31)
    lfs     f1, 0x168(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801ffae0
    stfs    f1, 0x160(r31)
    b       branch_0x801ffae0

branch_0x801ffabc:
    lfs     f1, 0x160(r31)
    lfs     f0, 0x15c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x160(r31)
    lfs     f0, 0x160(r31)
    lfs     f1, 0x164(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801ffae0
    stfs    f1, 0x160(r31)
branch_0x801ffae0:
    lfs     f0, 0x160(r31)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x172(r31)
    b       branch_0x801ffb14

branch_0x801ffafc:
    mr      r3, r31
    lfs     f1, 0x158(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x178(r12)
    mtlr    r12
    blrl
branch_0x801ffb14:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl touchActor__23TWaterHitPictureHideObjFP9THitActor
touchActor__23TWaterHitPictureHideObjFP9THitActor: # 0x801ffb28
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x801ffb40
    li      r0, 0x1
    b       branch_0x801ffb44

branch_0x801ffb40:
    li      r0, 0x0
branch_0x801ffb44:
    clrlwi. r0, r0, 24
    beqlr-    

    li      r0, 0x2
    sth     r0, 0xfc(r3)
    blr


.globl touchWater__23TWaterHitPictureHideObjFP9THitActor
touchWater__23TWaterHitPictureHideObjFP9THitActor: # 0x801ffb58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      getWaterSpeed__11TMapObjBaseFP9THitActor
    addi    r31, r3, 0x0
    addi    r3, r29, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, 0x4(r31)
    lfs     f1, 0x18(r3)
    lfs     f2, 0x8(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r31)
    lfs     f4, 0x28(r3)
    lfs     f3, 0x8(r31)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x1e48(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ffbc8
    li      r3, 0x0
    b       branch_0x801ffc90

branch_0x801ffbc8:
    mr      r3, r30
    bl      getWaterID__11TMapObjBaseFP9THitActor
    lwz     r4, gpModelWaterManager(r13)
    slwi    r0, r3, 1
    add     r3, r4, r0
    lhz     r0, 0x414(r3)
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    bne-    branch_0x801ffbf4
    li      r0, 0x1
    b       branch_0x801ffbf8

branch_0x801ffbf4:
    li      r0, 0x0
branch_0x801ffbf8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ffc3c
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r29, 0x10
    lfs     f1, -0x1e48(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
branch_0x801ffc3c:
    mr      r3, r29
    lfs     f1, 0x154(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x178(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x1a1
    bne-    branch_0x801ffc6c
    li      r0, 0x1
    b       branch_0x801ffc70

branch_0x801ffc6c:
    li      r0, 0x0
branch_0x801ffc70:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ffc8c
    lfs     f1, -0x1de8(rtoc)
    mr      r3, r29
    lfs     f2, 0x154(r29)
    li      r4, 0x296e
    bl      soundBas__11TMapObjBaseFUlff
branch_0x801ffc8c:
    li      r3, 0x1
branch_0x801ffc90:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl forward__23TWaterHitPictureHideObjFf
forward__23TWaterHitPictureHideObjFf: # 0x801ffcac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lbz     r0, 0x150(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ffd00
    lfs     f0, 0x160(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0x160(r31)
    lfs     f1, 0x160(r31)
    lfs     f0, 0x164(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ffd30
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x174(r12)
    mtlr    r12
    blrl
    b       branch_0x801ffd30

branch_0x801ffd00:
    lfs     f0, 0x160(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x160(r31)
    lfs     f1, 0x160(r31)
    lfs     f0, 0x168(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ffd30
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x174(r12)
    mtlr    r12
    blrl
branch_0x801ffd30:
    lfs     f1, 0x168(r31)
    lfs     f2, 0x160(r31)
    lfs     f0, 0x164(r31)
    fcmpo   cr0, f2, f1
    ble-    branch_0x801ffd4c
    fmr     f2, f1
    b       branch_0x801ffd58

branch_0x801ffd4c:
    fcmpo   cr0, f2, f0
    bge-    branch_0x801ffd58
    fmr     f2, f0
branch_0x801ffd58:
    stfs    f2, 0x160(r31)
    lfs     f0, 0x160(r31)
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x172(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl afterFinishedAnim__23TWaterHitPictureHideObjFv
afterFinishedAnim__23TWaterHitPictureHideObjFv: # 0x801ffd88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x1a1
    bne-    branch_0x801ffdb4
    li      r0, 0x1
    b       branch_0x801ffdb8

branch_0x801ffdb4:
    li      r0, 0x0
branch_0x801ffdb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ffe18
    lwz     r3, gpMSound(r13)
    li      r4, 0x296f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ffdf0
    addi    r4, r31, 0x10
    li      r3, 0x296f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ffdf0:
    lwz     r3, gpMSound(r13)
    li      r4, 0x484d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ffe18
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801ffe18:
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x4
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl touchPlayer__15THipDropHideObjFP9THitActor
touchPlayer__15THipDropHideObjFP9THitActor: # 0x801ffe74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      SMS_IsMarioStatusHipDrop__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801ffec0
    mr      r3, r31
    lfs     f1, -0x1e48(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801ffec0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__17TFruitBasketEventFPCc
__ct__17TFruitBasketEventFPCc: # 0x801ffed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__12THideObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7918
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    addi    r4, r3, 0x77a0
    lis     r3, 0x803d
    stw     r4, 0x0(r31)
    addi    r0, r4, 0x24
    addi    r4, r3, 0x7628
    stw     r0, 0x20(r31)
    li      r5, 0x0
    addi    r0, r4, 0x24
    stw     r5, 0x150(r31)
    mr      r3, r31
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x154(r31)
    stw     r5, 0x158(r31)
    stw     r5, 0x15c(r31)
    stw     r5, 0x160(r31)
    stw     r5, 0x164(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__12TFruitBasketFv
__dt__12TFruitBasketFv: # 0x801fff5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fffdc
    lis     r3, 0x803d
    addi    r3, r3, 0x77a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fffcc
    lis     r3, 0x803d
    addi    r3, r3, 0x7918
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fffcc
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801fffcc:
    extsh.  r0, r31
    ble-    branch_0x801fffdc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fffdc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TFruitHitHideObjFv
__dt__16TFruitHitHideObjFv: # 0x801ffff8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80200078
    lis     r3, 0x803d
    addi    r3, r3, 0x7918
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200068
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200068
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x80200068:
    extsh.  r0, r31
    ble-    branch_0x80200078
    mr      r3, r30
    bl      __dl__FPv
branch_0x80200078:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl reset__17TFruitBasketEventFv
reset__17TFruitBasketEventFv: # 0x80200094
    li      r0, 0x0
    stw     r0, 0x154(r3)
    stw     r0, 0x158(r3)
    stw     r0, 0x15c(r3)
    stw     r0, 0x160(r3)
    stw     r0, 0x164(r3)
    blr


.globl getFruitNum__17TFruitBasketEventCFi
getFruitNum__17TFruitBasketEventCFi: # 0x802000b0
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x154(r3)
    blr


.globl countFruit__17TFruitBasketEventFP9THitActor
countFruit__17TFruitBasketEventFP9THitActor: # 0x802000c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    bl      countFruit__12TFruitBasketFP9THitActor
    lis     r3, 0x4000
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x393
    cmpw    r4, r0
    beq-    branch_0x80200138
    bge-    branch_0x80200118
    addi    r0, r3, 0x391
    cmpw    r4, r0
    beq-    branch_0x80200148
    bge-    branch_0x80200158
    addi    r0, r3, 0x390
    cmpw    r4, r0
    bge-    branch_0x80200168
    b       branch_0x8020018c

branch_0x80200118:
    addi    r0, r3, 0x395
    cmpw    r4, r0
    beq-    branch_0x8020017c
    bge-    branch_0x8020018c
    lwz     r3, 0x154(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x154(r31)
    b       branch_0x8020017c

branch_0x80200138:
    lwz     r3, 0x158(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x158(r31)
    b       branch_0x8020017c

branch_0x80200148:
    lwz     r3, 0x15c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x15c(r31)
    b       branch_0x8020017c

branch_0x80200158:
    lwz     r3, 0x160(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x160(r31)
    b       branch_0x8020017c

branch_0x80200168:
    lwz     r3, 0x164(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x164(r31)
    b       branch_0x8020017c


.incbin "./baserom/code/Text_0x80005600.bin", 0x1fab78, 0x8020017c - 0x80200178
branch_0x8020017c:
    mr      r3, r30
    bl      makeObjWaitingToAppear__11TResetFruitFv
    li      r0, 0x0
    sth     r0, 0x48(r31)
branch_0x8020018c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__12TFruitBasketFv
loadAfter__12TFruitBasketFv: # 0x802001a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    bl      loadAfter__11TMapObjBaseFv
    lwz     r4, 0x4(r31)
    lwz     r3, 0x134(r31)
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x138(r31)
    lwz     r3, 0x138(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80200284
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x802001f4
    li      r0, 0x1
    b       branch_0x802001f8

branch_0x802001f4:
    li      r0, 0x0
branch_0x802001f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80200228
    lwz     r3, gpMarDirector(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, -0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80200228
    li      r0, 0x0
    stb     r0, 0x14c(r31)
branch_0x80200228:
    lwz     r3, 0x138(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x80200244
    li      r0, 0x1
    b       branch_0x80200248

branch_0x80200244:
    li      r0, 0x0
branch_0x80200248:
    clrlwi. r0, r0, 24
    beq-    branch_0x80200284
    lwz     r3, 0x4(r31)
    bl      strlen
    addi    r30, r3, 0x0
    addi    r3, r30, 0x13
    bl      __nwa__FUl
    stw     r3, 0x144(r31)
    lis     r3, 0x8039
    addi    r5, r3, 0x4658
    crxor   6, 6, 6
    lwz     r6, 0x4(r31)
    lwz     r3, 0x144(r31)
    addi    r4, r30, 0x13
    bl      snprintf
branch_0x80200284:
    lfs     f1, -0x1e48(rtoc)
    lfs     f0, 0x30(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x802002b4
    lfs     f0, -0x1de4(rtoc)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, -0x1de8(rtoc)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x802002b4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl touchFruit__12TFruitBasketFP9THitActor
touchFruit__12TFruitBasketFP9THitActor: # 0x802002cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    mr      r30, r3
    lfs     f1, 0x30(r3)
    lfs     f0, -0x1de0(rtoc)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80200310
    lwz     r3, 0xc4(r31)
    lwz     r0, 0x44(r3)
    cmplw   r0, r30
    beq-    branch_0x80200338
    b       branch_0x80200350

branch_0x80200310:
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x28
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x28(sp)
    lwz     r0, 0x44(r3)
    cmplw   r0, r30
    bne-    branch_0x80200350
branch_0x80200338:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x174(r12)
    mtlr    r12
    blrl
branch_0x80200350:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl countFruit__12TFruitBasketFP9THitActor
countFruit__12TFruitBasketFP9THitActor: # 0x80200368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    subi    r4, rtoc, 0x1ddc
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    bl      setBck__6MActorFPCc
    lwz     r0, 0x138(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80200410
    mr      r3, r30
    lfs     f1, -0x1e48(rtoc)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMSound(r13)
    li      r4, 0x3809
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802003e4
    addi    r4, r30, 0x10
    li      r3, 0x3809
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802003e4:
    lwz     r3, gpMSound(r13)
    li      r4, 0x480a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802004f4
    li      r3, 0x480a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x802004f4

branch_0x80200410:
    lwz     r3, 0x150(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x80200450
    lwz     r3, gpMSound(r13)
    li      r4, 0x384e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802004f4
    addi    r4, r30, 0x10
    li      r3, 0x384e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x802004f4

branch_0x80200450:
    lwz     r0, 0x4c(r31)
    cmplw   r0, r3
    bne-    branch_0x80200464
    li      r0, 0x1
    b       branch_0x80200468

branch_0x80200464:
    li      r0, 0x0
branch_0x80200468:
    clrlwi. r0, r0, 24
    beq-    branch_0x802004cc
    lwz     r3, gpMSound(r13)
    li      r4, 0x3809
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802004a0
    addi    r4, r30, 0x10
    li      r3, 0x3809
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802004a0:
    lwz     r3, gpMSound(r13)
    li      r4, 0x480a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802004f4
    li      r3, 0x480a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x802004f4

branch_0x802004cc:
    lwz     r3, gpMSound(r13)
    li      r4, 0x483d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802004f4
    li      r3, 0x483d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x802004f4:
    mr      r3, r31
    bl      makeObjWaitingToAppear__11TResetFruitFv
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl load__16TFruitHitHideObjFR20JSUMemoryInputStream
load__16TFruitHitHideObjFR20JSUMemoryInputStream: # 0x80200514
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
    addi    r5, r30, 0x13c
    addi    r6, r30, 0x140
    addi    r7, r30, 0x148
    bl      loadHideObjInfo__11TMapObjBaseFR20JSUMemoryInputStreamPlPfPfPl
    lwz     r0, 0x14(sp)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stw     r0, 0x134(r30)
    addi    r31, r3, 0x57
    lbz     r0, 0x57(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80200588
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x46e8
    li      r5, 0x57
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x80200588:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl touchActor__16TFruitHitHideObjFP9THitActor
touchActor__16TFruitHitHideObjFP9THitActor: # 0x802005a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      isFruit__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x802005e4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
branch_0x802005e4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl touchFruit__16TFruitHitHideObjFP9THitActor
touchFruit__16TFruitHitHideObjFP9THitActor: # 0x802005fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r0, 0x138(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80200664
    mr      r3, r30
    lfs     f1, -0x1e38(rtoc)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x80200664:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__16TWaterHitHideObjFR20JSUMemoryInputStream
load__16TWaterHitHideObjFR20JSUMemoryInputStream: # 0x80200690
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
    addi    r5, r30, 0x13c
    addi    r6, r30, 0x140
    addi    r7, r30, 0x148
    bl      loadHideObjInfo__11TMapObjBaseFR20JSUMemoryInputStreamPlPfPfPl
    lwz     r0, 0x14(sp)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stw     r0, 0x134(r30)
    addi    r31, r3, 0x57
    lbz     r0, 0x57(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80200704
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x46e8
    li      r5, 0x57
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x80200704:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl touchWater__16TWaterHitHideObjFP9THitActor
touchWater__16TWaterHitHideObjFP9THitActor: # 0x8020071c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x138(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80200768
    mr      r3, r31
    lfs     f1, -0x1e38(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x80200768:
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__8THideObjFP9THitActor
touchPlayer__8THideObjFP9THitActor: # 0x80200780
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      marioHeadAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802007d8
    lwz     r0, 0x138(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802007d8
    mr      r3, r31
    lfs     f1, -0x1e04(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x802007d8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12THideObjBaseFPCc
__ct__12THideObjBaseFPCc: # 0x802007ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x138(r31)
    lfs     f0, -0x1e48(rtoc)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stw     r4, 0x144(r31)
    stw     r4, 0x148(r31)
    stb     r0, 0x14c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__12THideObjBaseFR20JSUMemoryInputStream
load__12THideObjBaseFR20JSUMemoryInputStream: # 0x80200854
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
    addi    r5, r30, 0x13c
    addi    r6, r30, 0x140
    addi    r7, r30, 0x148
    bl      loadHideObjInfo__11TMapObjBaseFR20JSUMemoryInputStreamPlPfPfPl
    lwz     r0, 0x14(sp)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stw     r0, 0x134(r30)
    addi    r31, r3, 0x57
    lbz     r0, 0x57(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802008c8
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x46e8
    li      r5, 0x57
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x802008c8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl loadAfter__12THideObjBaseFv
loadAfter__12THideObjBaseFv: # 0x802008e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    bl      loadAfter__11TMapObjBaseFv
    lwz     r4, 0x4(r31)
    lwz     r3, 0x134(r31)
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x138(r31)
    lwz     r3, 0x138(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802009c0
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x80200930
    li      r0, 0x1
    b       branch_0x80200934

branch_0x80200930:
    li      r0, 0x0
branch_0x80200934:
    clrlwi. r0, r0, 24
    beq-    branch_0x80200964
    lwz     r3, gpMarDirector(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, -0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    beq-    branch_0x80200964
    li      r0, 0x0
    stb     r0, 0x14c(r31)
branch_0x80200964:
    lwz     r3, 0x138(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x80200980
    li      r0, 0x1
    b       branch_0x80200984

branch_0x80200980:
    li      r0, 0x0
branch_0x80200984:
    clrlwi. r0, r0, 24
    beq-    branch_0x802009c0
    lwz     r3, 0x4(r31)
    bl      strlen
    addi    r30, r3, 0x0
    addi    r3, r30, 0x13
    bl      __nwa__FUl
    stw     r3, 0x144(r31)
    lis     r3, 0x8039
    addi    r5, r3, 0x4658
    crxor   6, 6, 6
    lwz     r6, 0x4(r31)
    lwz     r3, 0x144(r31)
    addi    r4, r30, 0x13
    bl      snprintf
branch_0x802009c0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl receiveMessage__12THideObjBaseFP9THitActorUl
receiveMessage__12THideObjBaseFP9THitActorUl: # 0x802009d8
    mflr    r0
    cmplwi  r5, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x80200a58
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x80200a04
    li      r0, 0x1
    b       branch_0x80200a08

branch_0x80200a04:
    li      r0, 0x0
branch_0x80200a08:
    clrlwi. r0, r0, 24
    bne-    branch_0x80200a50
    addis   r0, r6, 0xe000
    cmplwi  r0, 0xf
    bne-    branch_0x80200a24
    li      r0, 0x1
    b       branch_0x80200a28

branch_0x80200a24:
    li      r0, 0x0
branch_0x80200a28:
    clrlwi. r0, r0, 24
    bne-    branch_0x80200a50
    addis   r0, r6, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x80200a44
    li      r0, 0x1
    b       branch_0x80200a48

branch_0x80200a44:
    li      r0, 0x0
branch_0x80200a48:
    clrlwi. r0, r0, 24
    beq-    branch_0x80200a58
branch_0x80200a50:
    li      r0, 0x1
    stb     r0, 0x14c(r3)
branch_0x80200a58:
    bl      receiveMessage__11TMapObjBaseFP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitEffect__12THideObjBaseFv
emitEffect__12THideObjBaseFv: # 0x80200a6c
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x10
    li      r4, 0x57
    stwu    sp, -0x8(sp)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appearObjFromPoint__12THideObjBaseFRCQ29JGeometry8TVec3_f_
appearObjFromPoint__12THideObjBaseFRCQ29JGeometry8TVec3_f_: # 0x80200aa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    lwz     r3, 0x138(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80200be0
    lbz     r0, 0x14c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80200be0
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x80200af4
    li      r0, 0x1
    b       branch_0x80200af8

branch_0x80200af4:
    li      r0, 0x0
branch_0x80200af8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80200b38
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r3)
    lwz     r3, 0x138(r31)
    lfs     f0, 0x10(r31)
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x138(r31)
    lwz     r4, 0x144(r31)
    bl      appearWithDemo__6TShineFPCc
    b       branch_0x80200bc4

branch_0x80200b38:
    addis   r0, r4, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x80200b4c
    li      r0, 0x1
    b       branch_0x80200b50

branch_0x80200b4c:
    li      r0, 0x0
branch_0x80200b50:
    clrlwi. r0, r0, 24
    beq-    branch_0x80200b74
    lis     r4, 0x2000
    lwz     r3, gpItemManager(r13)
    addi    r4, r4, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr.     r30, r3
    bne-    branch_0x80200b78
    b       branch_0x80200be0

branch_0x80200b74:
    mr      r30, r3
branch_0x80200b78:
    lfs     f1, 0x13c(r31)
    mr      r3, r31
    lfs     f2, 0x140(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      throwObjToFrontFromPoint__11TMapObjBaseCFP11TMapObjBaseRCQ29JGeometry8TVec3_f_ff
    mr      r3, r30
    bl      isCoin__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80200bac
    stw     r31, 0x148(r30)
    lwz     r0, 0x148(r31)
    stw     r0, 0x14c(r30)
branch_0x80200bac:
    mr      r3, r30
    bl      isFruit__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80200bc4
    mr      r3, r30
    bl      makeObjLiving__11TResetFruitFv
branch_0x80200bc4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x14c(r31)
branch_0x80200be0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl appearObj__12THideObjBaseFf
appearObj__12THideObjBaseFf: # 0x80200bfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lfs     f2, 0x14(r3)
    addi    r4, sp, 0x14
    lfs     f3, 0x18(r3)
    lfs     f0, 0x10(r3)
    fadds   f1, f2, f1
    stfs    f0, 0x14(sp)
    stfs    f1, 0x18(sp)
    stfs    f3, 0x1c(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__19THideObjPictureTwinFv
__dt__19THideObjPictureTwinFv: # 0x80200c48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80200cc8
    lis     r3, 0x803d
    addi    r3, r3, 0x71c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200cb8
    lis     r3, 0x803d
    addi    r3, r3, 0x733c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200cb8
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x80200cb8:
    extsh.  r0, r31
    ble-    branch_0x80200cc8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80200cc8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getObjAppearPos__19THideObjPictureTwinCFv
getObjAppearPos__19THideObjPictureTwinCFv: # 0x80200ce4
    lwz     r3, 0x174(r3)
    addi    r3, r3, 0x10
    blr


.globl __dt__15THipDropHideObjFv
__dt__15THipDropHideObjFv: # 0x80200cf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80200d70
    lis     r3, 0x803d
    addi    r3, r3, 0x74b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200d60
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200d60
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x80200d60:
    extsh.  r0, r31
    ble-    branch_0x80200d70
    mr      r3, r30
    bl      __dl__FPv
branch_0x80200d70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TFruitBasketEventFv
__dt__17TFruitBasketEventFv: # 0x80200d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80200e0c
    lis     r3, 0x803d
    addi    r3, r3, 0x7628
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200dfc
    lis     r3, 0x803d
    addi    r3, r3, 0x77a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200dfc
    lis     r3, 0x803d
    addi    r3, r3, 0x7918
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__12THideObjBaseFv
branch_0x80200dfc:
    extsh.  r0, r31
    ble-    branch_0x80200e0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80200e0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TWaterHitHideObjFv
__dt__16TWaterHitHideObjFv: # 0x80200e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80200ea8
    lis     r3, 0x803d
    addi    r3, r3, 0x7a8c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200e98
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200e98
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x80200e98:
    extsh.  r0, r31
    ble-    branch_0x80200ea8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80200ea8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8THideObjFv
__dt__8THideObjFv: # 0x80200ec4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80200f44
    lis     r3, 0x803d
    addi    r3, r3, 0x7bfc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200f34
    lis     r3, 0x803d
    addi    r3, r3, 0x7d6c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80200f34
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x80200f34:
    extsh.  r0, r31
    ble-    branch_0x80200f44
    mr      r3, r30
    bl      __dl__FPv
branch_0x80200f44:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjHide_cpp
__sinit_MapObjHide_cpp: # 0x80200f60
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5498
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80200fa8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80200fa8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80200fd8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80200fd8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80201008
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80201008:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80201038
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80201038:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80201068
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80201068:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80201098
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80201098:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802010c8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802010c8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802010f8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802010f8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80201128
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80201128:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80201158
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80201158:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80201188
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80201188:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802011b8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802011b8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802011e8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802011e8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80201218
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80201218:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80201248
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80201248:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12THideObjBaseFv
_32___dt__12THideObjBaseFv: # 0x8020125c
    subi    r3, r3, 0x20
    b       __dt__12THideObjBaseFv


.globl _32___dt__8THideObjFv
_32___dt__8THideObjFv: # 0x80201264
    subi    r3, r3, 0x20
    b       __dt__8THideObjFv


.globl _32___dt__16TWaterHitHideObjFv
_32___dt__16TWaterHitHideObjFv: # 0x8020126c
    subi    r3, r3, 0x20
    b       __dt__16TWaterHitHideObjFv


.globl _32___dt__16TFruitHitHideObjFv
_32___dt__16TFruitHitHideObjFv: # 0x80201274
    subi    r3, r3, 0x20
    b       __dt__16TFruitHitHideObjFv


.globl _32___dt__12TFruitBasketFv
_32___dt__12TFruitBasketFv: # 0x8020127c
    subi    r3, r3, 0x20
    b       __dt__12TFruitBasketFv


.globl _32___dt__17TFruitBasketEventFv
_32___dt__17TFruitBasketEventFv: # 0x80201284
    subi    r3, r3, 0x20
    b       __dt__17TFruitBasketEventFv


.globl _32___dt__15THipDropHideObjFv
_32___dt__15THipDropHideObjFv: # 0x8020128c
    subi    r3, r3, 0x20
    b       __dt__15THipDropHideObjFv


.globl _32___dt__23TWaterHitPictureHideObjFv
_32___dt__23TWaterHitPictureHideObjFv: # 0x80201294
    subi    r3, r3, 0x20
    b       __dt__23TWaterHitPictureHideObjFv


.globl _32___dt__19THideObjPictureTwinFv
_32___dt__19THideObjPictureTwinFv: # 0x8020129c
    subi    r3, r3, 0x20
    b       __dt__19THideObjPictureTwinFv


.globl _32___dt__13TBreakHideObjFv
_32___dt__13TBreakHideObjFv: # 0x802012a4
    subi    r3, r3, 0x20
    b       __dt__13TBreakHideObjFv


.globl _32___dt__8TWoodBoxFv
_32___dt__8TWoodBoxFv: # 0x802012ac
    subi    r3, r3, 0x20
    b       __dt__8TWoodBoxFv

