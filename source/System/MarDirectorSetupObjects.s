
.globl setupObjects__12TMarDirectorFv
setupObjects__12TMarDirectorFv: # 0x802b76f4
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0xb28(sp)
    stfd    f31, 0xb20(sp)
    stfd    f30, 0xb18(sp)
    stmw    r20, 0xae8(sp)
    addi    r30, r3, 0x0
    subi    r31, r4, 0x7228
    lwz     r0, -0x6060(r13)
    mr      r3, r0
    bl      resetStage__12TFlagManagerFv
    lis     r4, 0x6
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3
    li      r5, 0x1
    bl      setFlag__12TFlagManagerFUll
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    addi    r29, r3, 0xe
    lbz     r0, 0xe(r3)
    cmpwi   r0, 0x5
    beq-    branch_0x802b7a00
    bge-    branch_0x802b7a24
    cmpwi   r0, 0x1
    beq-    branch_0x802b7760
    b       branch_0x802b7a24

branch_0x802b7760:
    lis     r20, 0x3
    lwz     r3, -0x6060(r13)
    addi    r5, r20, 0xd
    li      r4, 0x0
    bl      setBool__12TFlagManagerFbUl
    lwz     r3, -0x6060(r13)
    addi    r5, r20, 0x5
    li      r4, 0x0
    bl      setBool__12TFlagManagerFbUl
    lwz     r3, -0x6060(r13)
    addi    r4, r20, 0x3
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802b77b8
    lwz     r3, -0x6060(r13)
    addi    r5, r20, 0x3
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lhz     r0, 0x4e(r30)
    ori     r0, r0, 0x2
    sth     r0, 0x4e(r30)
    b       branch_0x802b77c8

branch_0x802b77b8:
    lwz     r3, -0x6060(r13)
    li      r4, 0x1
    lis     r5, 0x3
    bl      setBool__12TFlagManagerFbUl
branch_0x802b77c8:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x9
    bgt-    branch_0x802b7a24
    lis     r3, 0x803e
    subi    r3, r3, 0x520
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x802B77EC:		# jumptable 802B77E8 cases 0,1,7,9
    lhz     r0, 0x4e(r30)
    ori     r0, r0, 0x2
    sth     r0, 0x4e(r30)
    b       branch_0x802b7a24

branch_0x802B77FC:		# jumptable 802B77E8 case 5
lis	  r4, 1	# 0x10386
lwz	  r3, -0x6060(r13)
addi	  r4, r4, 0x386	# 0x10386
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
bne	  branch_0x802B7848
lwz	  r3, -0x6060(r13)
lis	  r4, 4
bl	  getFlag__12TFlagManagerCFUl #	TFlagManager::getFlag(const(ulong))
cmpwi	  r3, 3
blt	  branch_0x802B7848
lis	  r4, 5	# 0x50001
lwz	  r3, -0x6060(r13)
addi	  r5, r4, 1 # 0x50001
li	  r4, 1
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
lhz	  r0, 0x4E(r30)
ori	  r0, r0, 2
sth	  r0, 0x4E(r30)

branch_0x802B7848:
lis	  r4, 1	# 0x10387
lwz	  r3, -0x6060(r13)
addi	  r4, r4, 0x387	# 0x10387
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
bne	  def_802B77E8	# jumptable 802B77E8 default case
lwz	  r3, -0x6060(r13)
lis	  r4, 4
bl	  getFlag__12TFlagManagerCFUl #	TFlagManager::getFlag(const(ulong))
cmpwi	  r3, 5
blt	  def_802B77E8	# jumptable 802B77E8 default case
lis	  r4, 5	# 0x50002
lwz	  r3, -0x6060(r13)
addi	  r5, r4, 2 # 0x50002
li	  r4, 1
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
lhz	  r0, 0x4E(r30)
ori	  r0, r0, 2
sth	  r0, 0x4E(r30)
b	  def_802B77E8	# jumptable 802B77E8 default case

branch_0x802B7898:		# jumptable 802B77E8 case 8
lwz	  r3, -0x6060(r13)
lis	  r4, 4
bl	  getFlag__12TFlagManagerCFUl #	TFlagManager::getFlag(const(ulong))
lwz	  r0, -0x6060(r13)
lis	  r4, 1	# 0x1038F
addi	  r20, r3, 0
mr	  r3, r0
addi	  r4, r4, 0x38F	# 0x1038F
li	  r21, 0
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
bne	  branch_0x802B78EC
lwz	  r3, -0x6060(r13)
li	  r4, 0x21
bl	  getShineFlag__12TFlagManagerCFUc # TFlagManager::getShineFlag(const(uchar))
clrlwi.	  r0, r3, 24
beq	  branch_0x802B78EC
lhz	  r0, 0x4E(r30)
li	  r21, 1
ori	  r0, r0, 2
sth	  r0, 0x4E(r30)

branch_0x802B78EC:
cmpwi	  r21, 0
bne	  branch_0x802B793C
lwz	  r3, -0x6060(r13)
li	  r4, 1
li	  r5, 1
bl	  getNozzleRight__12TFlagManagerCFUcUc # TFlagManager::getNozzleRight(const(uchar,uchar))
clrlwi.	  r0, r3, 24
bne	  branch_0x802B793C
lis	  r4, 1	# 0x1038F
lwz	  r3, -0x6060(r13)
addi	  r4, r4, 0x38F	# 0x1038F
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
beq	  branch_0x802B793C
cmpwi	  r20, 0x19
blt	  branch_0x802B793C
lhz	  r0, 0x4E(r30)
li	  r21, 2
ori	  r0, r0, 2
sth	  r0, 0x4E(r30)

branch_0x802B793C:
cmpwi	  r21, 0
bne	  branch_0x802B798C
lwz	  r3, -0x6060(r13)
li	  r4, 1
li	  r5, 0
bl	  getNozzleRight__12TFlagManagerCFUcUc # TFlagManager::getNozzleRight(const(uchar,uchar))
clrlwi.	  r0, r3, 24
bne	  branch_0x802B798C
lwz	  r3, -0x6060(r13)
li	  r4, 1
li	  r5, 1
bl	  getNozzleRight__12TFlagManagerCFUcUc # TFlagManager::getNozzleRight(const(uchar,uchar))
clrlwi.	  r0, r3, 24
beq	  branch_0x802B798C
cmpwi	  r20, 0x1E
blt	  branch_0x802B798C
lhz	  r0, 0x4E(r30)
li	  r21, 3
ori	  r0, r0, 2
sth	  r0, 0x4E(r30)

branch_0x802B798C:
lis	  r20, 6 # 0x60003
lwz	  r3, -0x6060(r13)
addi	  r5, r21, 0
addi	  r4, r20, 3 # 0x60003
bl	  setFlag__12TFlagManagerFUll #	TFlagManager::setFlag((ulong,long))
lwz	  r3, -0x6060(r13)
lis	  r4, 4
bl	  getFlag__12TFlagManagerCFUl #	TFlagManager::getFlag(const(ulong))
cmpwi	  r3, 0x14
blt	  branch_0x802B79D4	# jumptable 802B77E8 case 2
lwz	  r3, -0x6060(r13)
addi	  r4, r20, 3 # 0x60003
bl	  getFlag__12TFlagManagerCFUl #	TFlagManager::getFlag(const(ulong))
cmpwi	  r3, 0
bne	  branch_0x802B79D4	# jumptable 802B77E8 case 2
lhz	  r0, 0x4E(r30)
ori	  r0, r0, 2
sth	  r0, 0x4E(r30)

branch_0x802B79D4:		# jumptable 802B77E8 case 2
lwz	  r3, -0x6060(r13)
lis	  r4, 4
bl	  getFlag__12TFlagManagerCFUl #	TFlagManager::getFlag(const(ulong))
cmpwi	  r3, 0x14
blt	  def_802B77E8	# jumptable 802B77E8 default case
lis	  r4, 5	# 0x50004
lwz	  r3, -0x6060(r13)
addi	  r5, r4, 4 # 0x50004
li	  r4, 1
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
b	  def_802B77E8	# jumptable 802B77E8 default case

branch_0x802B7A00:
branch_0x802b7a00:
    lbz     r0, 0x1(r29)
    cmpwi   r0, 0x3
    beq-    branch_0x802b7a10
    b       branch_0x802b7a24

branch_0x802b7a10:
    lis     r4, 0x5
    lwz     r3, -0x6060(r13)
    addi    r5, r4, 0x3
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl

def_802B77E8:		# jumptable 802B77E8 default case
branch_0x802b7a24:
    lbz     r3, 0x0(r29)
    bl      SMS_getShineStage__FUc
    clrlwi  r4, r3, 24
    lwz     r3, -0x6060(r13)
    addis   r5, r4, 0x1
    addi    r5, r5, 0x3a5
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lbz     r3, 0x7c(r30)
    lbz     r4, 0x7d(r30)
    bl      setMSoundEnterStage__10MSMainProcFUcUc
    lis     r20, 0x3
    lwz     r3, -0x6060(r13)
    addi    r4, r20, 0x7
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x802b7a84
    lwz     r3, -0x6060(r13)
    addi    r5, r20, 0x7
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lwz     r3, gpMSound(r13)
    li      r4, 0x100
    bl      loadWave__6MSoundF13MS_SCENE_WAVE
branch_0x802b7a84:
    lwz     r3, gpMSound(r13)
    bl      initSound__6MSoundFv
    li      r20, 0x0
    stw     r20, 0x10(r30)
    mr      r3, r30
    bl      decideMarioPosIdx__12TMarDirectorFv
    mr      r3, r30
    bl      createObjects__12TMarDirectorFv
    bl      init__7TParamsFv
    addi    r22, sp, 0xabc
    lwz     r5, -0x6054(r13)
    stw     r22, 0x8fc(sp)
    lis     r7, 0x803b
    subi    r0, r7, 0xf0c
    lwz     r4, -0x6058(r13)
    lwz     r3, 0x8fc(sp)
    lis     r7, 0x803e
    stw     r0, 0x0(r3)
    lis     r6, 0x803e
    addi    r0, r6, 0x184
    stb     r20, 0x4(r3)
    lis     r6, 0x803e
    addi    r21, r7, 0x160
    stw     r0, 0x0(r3)
    addi    r20, r6, 0x1c8
    stw     r21, 0x0(r3)
    stw     r20, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r3, -0x5db8(r13)
    mr      r4, r22
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stw     r20, 0xabc(sp)
    mr      r26, r3
    addi    r3, r22, 0x0
    stw     r21, 0xabc(sp)
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x20
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x20
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r28, r3, 0x0
    beq-    branch_0x802b7b88
    addi    r3, r31, 0x30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x30
    mtlr    r12
    blrl
    mr      r27, r3
    b       branch_0x802b7bb8

branch_0x802b7b88:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x30
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x30
    mtlr    r12
    blrl
    mr      r27, r3
branch_0x802b7bb8:
    lwz     r0, gpMarioParticleManager(r13)
    addi    r20, r27, 0x10
    addi    r4, r20, 0x0
    stw     r0, 0x8f8(sp)
    addi    r3, sp, 0x4c4
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x4c4(sp)
    addi    r4, sp, 0x4c0
    addi    r3, sp, 0x7dc
    stw     r0, 0x4c0(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x7dc(sp)
    addi    r5, sp, 0x638
    addi    r4, r20, 0x0
    stw     r0, 0x7d8(sp)
    addi    r3, sp, 0x634
    addi    r6, sp, 0x8f8
    lwz     r0, 0x7d8(sp)
    stw     r0, 0x638(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x634(sp)
    addi    r3, sp, 0x7d4
    addi    r4, sp, 0x630
    stw     r0, 0x630(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b7d0c
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x10(rtoc)
    stw     r0, 0xae4(sp)
    lis     r21, 0x4330
    stw     r21, 0xae0(sp)
    lfd     f0, 0xae0(sp)
    fsubs   f30, f0, f1
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    stw     r20, 0x62c(sp)
    lfd     f1, -0x10(rtoc)
    addi    r4, r31, 0x44
    stw     r0, 0xadc(sp)
    lwz     r3, 0x62c(sp)
    stw     r21, 0xad8(sp)
    lfd     f0, 0xad8(sp)
    fsubs   f31, f0, f1
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r21, 0x62c(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r21)
    addi    r3, r21, 0x10
    lfs     f1, -0x38(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_802b9798
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0x1c(r21)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r20)
    addi    r0, r3, 0x45c8
    lis     r3, 0x803e
    stw     r0, 0x20(r20)
    addi    r3, r3, 0x1c64
    stw     r3, 0x0(r20)
    addi    r0, r3, 0x24
    lis     r3, 0x803e
    stw     r0, 0x20(r20)
    addi    r3, r3, 0x19c0
    addi    r0, r3, 0x24
    sth     r4, 0x24(r20)
    lfs     f0, -0x34(rtoc)
    stfs    f0, 0x28(r20)
    lfs     f0, -0x30(rtoc)
    stfs    f0, 0x2c(r20)
    stw     r3, 0x0(r20)
    stw     r0, 0x20(r20)
    lfs     f0, -0x38(rtoc)
    stfs    f0, 0x30(r20)
    stfs    f0, 0x34(r20)
    stfs    f30, 0x38(r20)
    stfs    f31, 0x3c(r20)
branch_0x802b7d0c:
    addi    r21, r27, 0x10
    stw     r20, 0x8f0(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x4bc
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x4bc(sp)
    addi    r4, sp, 0x4b8
    addi    r3, sp, 0x7cc
    stw     r0, 0x4b8(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x7cc(sp)
    addi    r5, sp, 0x628
    addi    r4, r21, 0x0
    stw     r0, 0x7c8(sp)
    addi    r3, sp, 0x624
    addi    r6, sp, 0x8f0
    lwz     r0, 0x7c8(sp)
    stw     r0, 0x628(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x624(sp)
    addi    r3, sp, 0x7c4
    addi    r4, sp, 0x620
    stw     r0, 0x620(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802b7dcc
    lis     r3, 0x803e
    stw     r29, 0x8ec(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    addi    r3, r31, 0x54
    stw     r3, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r29)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r29)
    li      r0, 0x0
    addi    r4, sp, 0x7bc
    sth     r0, 0xc(r29)
    lwz     r20, 0x8ec(sp)
    addi    r3, r20, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r20)
branch_0x802b7dcc:
    addi    r20, r28, 0x10
    stw     r29, 0x8e8(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x4b4
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x4b4(sp)
    addi    r4, sp, 0x4b0
    addi    r3, sp, 0x7b8
    stw     r0, 0x4b0(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x7b8(sp)
    addi    r5, sp, 0x61c
    addi    r4, r20, 0x0
    stw     r0, 0x7b4(sp)
    addi    r3, sp, 0x618
    addi    r6, sp, 0x8e8
    lwz     r0, 0x7b4(sp)
    stw     r0, 0x61c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x618(sp)
    addi    r3, sp, 0x7b0
    addi    r4, sp, 0x614
    stw     r0, 0x614(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b7e84
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0x64
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r21)
    subi    r3, r3, 0xca8
    li      r0, -0x1
    stw     r3, 0x0(r21)
    stw     r0, 0x10(r21)
    sth     r4, 0x14(r21)
branch_0x802b7e84:
    addi    r20, r29, 0x10
    stw     r21, 0x8e0(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x4ac
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x4ac(sp)
    addi    r4, sp, 0x4a8
    addi    r3, sp, 0x7a8
    stw     r0, 0x4a8(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x7a8(sp)
    addi    r5, sp, 0x610
    addi    r4, r20, 0x0
    stw     r0, 0x7a4(sp)
    addi    r3, sp, 0x60c
    addi    r6, sp, 0x8e0
    lwz     r0, 0x7a4(sp)
    stw     r0, 0x610(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x60c(sp)
    addi    r3, sp, 0x7a0
    addi    r4, sp, 0x608
    stw     r0, 0x608(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b7f40
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0x7c
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0xff01
    stw     r0, 0x0(r20)
    subi    r0, r3, 0x1
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b7f40:
    addi    r21, r29, 0x10
    stw     r20, 0x8d8(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x4a4
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x4a4(sp)
    addi    r4, sp, 0x4a0
    addi    r3, sp, 0x798
    stw     r0, 0x4a0(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x798(sp)
    addi    r5, sp, 0x604
    addi    r4, r21, 0x0
    stw     r0, 0x794(sp)
    addi    r3, sp, 0x600
    addi    r6, sp, 0x8d8
    lwz     r0, 0x794(sp)
    stw     r0, 0x604(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x600(sp)
    addi    r3, sp, 0x790
    addi    r4, sp, 0x5fc
    stw     r0, 0x5fc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b7ffc
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0x98
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0x1
    stw     r0, 0x0(r20)
    subi    r0, r3, 0x1
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b7ffc:
    addi    r21, r29, 0x10
    stw     r20, 0x8d0(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x49c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x49c(sp)
    addi    r4, sp, 0x498
    addi    r3, sp, 0x788
    stw     r0, 0x498(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x788(sp)
    addi    r5, sp, 0x5f8
    addi    r4, r21, 0x0
    stw     r0, 0x784(sp)
    addi    r3, sp, 0x5f4
    addi    r6, sp, 0x8d0
    lwz     r0, 0x784(sp)
    stw     r0, 0x5f8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5f4(sp)
    addi    r3, sp, 0x780
    addi    r4, sp, 0x5f0
    stw     r0, 0x5f0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b80b4
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0xb0
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r21)
    subi    r3, r3, 0xca8
    li      r0, -0x1
    stw     r3, 0x0(r21)
    stw     r0, 0x10(r21)
    sth     r4, 0x14(r21)
branch_0x802b80b4:
    addi    r20, r29, 0x10
    stw     r21, 0x8c8(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x494
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x494(sp)
    addi    r4, sp, 0x490
    addi    r3, sp, 0x778
    stw     r0, 0x490(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x778(sp)
    addi    r5, sp, 0x5ec
    addi    r4, r20, 0x0
    stw     r0, 0x774(sp)
    addi    r3, sp, 0x5e8
    addi    r6, sp, 0x8c8
    lwz     r0, 0x774(sp)
    stw     r0, 0x5ec(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5e8(sp)
    addi    r3, sp, 0x770
    addi    r4, sp, 0x5e4
    stw     r0, 0x5e4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b8170
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0xc4
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0x1
    stw     r0, 0x0(r20)
    subi    r0, r3, 0x1
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b8170:
    addi    r21, r29, 0x10
    stw     r20, 0x8c0(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x48c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x48c(sp)
    addi    r4, sp, 0x488
    addi    r3, sp, 0x768
    stw     r0, 0x488(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x768(sp)
    addi    r5, sp, 0x5e0
    addi    r4, r21, 0x0
    stw     r0, 0x764(sp)
    addi    r3, sp, 0x5dc
    addi    r6, sp, 0x8c0
    lwz     r0, 0x764(sp)
    stw     r0, 0x5e0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5dc(sp)
    addi    r3, sp, 0x760
    addi    r4, sp, 0x5d8
    stw     r0, 0x5d8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b822c
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0xdc
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0xff01
    stw     r0, 0x0(r20)
    subi    r0, r3, 0x1
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b822c:
    addi    r21, r29, 0x10
    stw     r20, 0x8b8(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x484
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x484(sp)
    addi    r4, sp, 0x480
    addi    r3, sp, 0x758
    stw     r0, 0x480(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x758(sp)
    addi    r5, sp, 0x5d4
    addi    r4, r21, 0x0
    stw     r0, 0x754(sp)
    addi    r3, sp, 0x5d0
    addi    r6, sp, 0x8b8
    lwz     r0, 0x754(sp)
    stw     r0, 0x5d4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5d0(sp)
    addi    r3, sp, 0x750
    addi    r4, sp, 0x5cc
    stw     r0, 0x5cc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b82e8
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0xf4
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0xff01
    stw     r0, 0x0(r20)
    subi    r0, r3, 0x1
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b82e8:
    addi    r21, r29, 0x10
    stw     r20, 0x8b0(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x47c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x47c(sp)
    addi    r4, sp, 0x478
    addi    r3, sp, 0x748
    stw     r0, 0x478(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x748(sp)
    addi    r5, sp, 0x5c8
    addi    r4, r21, 0x0
    stw     r0, 0x744(sp)
    addi    r3, sp, 0x5c4
    addi    r6, sp, 0x8b0
    lwz     r0, 0x744(sp)
    stw     r0, 0x5c8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5c4(sp)
    addi    r3, sp, 0x740
    addi    r4, sp, 0x5c0
    stw     r0, 0x5c0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b83a4
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0x108
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0xffff
    stw     r0, 0x0(r20)
    addi    r0, r3, 0xff
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b83a4:
    addi    r21, r29, 0x10
    stw     r20, 0x8a8(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x474
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x474(sp)
    addi    r4, sp, 0x470
    addi    r3, sp, 0x738
    stw     r0, 0x470(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x738(sp)
    addi    r5, sp, 0x5bc
    addi    r4, r21, 0x0
    stw     r0, 0x734(sp)
    addi    r3, sp, 0x5b8
    addi    r6, sp, 0x8a8
    lwz     r0, 0x734(sp)
    stw     r0, 0x5bc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5b8(sp)
    addi    r3, sp, 0x730
    addi    r4, sp, 0x5b4
    stw     r0, 0x5b4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b8460
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0x11c
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0xff01
    stw     r0, 0x0(r20)
    subi    r0, r3, 0x1
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b8460:
    addi    r21, r29, 0x10
    stw     r20, 0x8a0(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x46c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x46c(sp)
    addi    r4, sp, 0x468
    addi    r3, sp, 0x728
    stw     r0, 0x468(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x728(sp)
    addi    r5, sp, 0x5b0
    addi    r4, r21, 0x0
    stw     r0, 0x724(sp)
    addi    r3, sp, 0x5ac
    addi    r6, sp, 0x8a0
    lwz     r0, 0x724(sp)
    stw     r0, 0x5b0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5ac(sp)
    addi    r3, sp, 0x720
    addi    r4, sp, 0x5a8
    stw     r0, 0x5a8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b851c
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0x13c
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0xff00
    stw     r0, 0x0(r20)
    addi    r0, r3, 0xff
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b851c:
    addi    r21, r29, 0x10
    stw     r20, 0x898(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x464
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x464(sp)
    addi    r4, sp, 0x460
    addi    r3, sp, 0x718
    stw     r0, 0x460(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x718(sp)
    addi    r5, sp, 0x5a4
    addi    r4, r21, 0x0
    stw     r0, 0x714(sp)
    addi    r3, sp, 0x5a0
    addi    r6, sp, 0x898
    lwz     r0, 0x714(sp)
    stw     r0, 0x5a4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x5a0(sp)
    addi    r3, sp, 0x710
    addi    r4, sp, 0x59c
    stw     r0, 0x59c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b85d4
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0x154
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r21)
    subi    r3, r3, 0xca8
    li      r0, 0xff
    stw     r3, 0x0(r21)
    stw     r0, 0x10(r21)
    sth     r4, 0x14(r21)
branch_0x802b85d4:
    addi    r20, r29, 0x10
    stw     r21, 0x890(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x45c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x45c(sp)
    addi    r4, sp, 0x458
    addi    r3, sp, 0x708
    stw     r0, 0x458(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x708(sp)
    addi    r5, sp, 0x598
    addi    r4, r20, 0x0
    stw     r0, 0x704(sp)
    addi    r3, sp, 0x594
    addi    r6, sp, 0x890
    lwz     r0, 0x704(sp)
    stw     r0, 0x598(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x594(sp)
    addi    r3, sp, 0x700
    addi    r4, sp, 0x590
    stw     r0, 0x590(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b868c
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0x170
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r21)
    subi    r3, r3, 0xca8
    li      r0, -0x1
    stw     r3, 0x0(r21)
    stw     r0, 0x10(r21)
    sth     r4, 0x14(r21)
branch_0x802b868c:
    addi    r20, r29, 0x10
    stw     r21, 0x888(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x454
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x454(sp)
    addi    r4, sp, 0x450
    addi    r3, sp, 0x6f8
    stw     r0, 0x450(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6f8(sp)
    addi    r5, sp, 0x58c
    addi    r4, r20, 0x0
    stw     r0, 0x6f4(sp)
    addi    r3, sp, 0x588
    addi    r6, sp, 0x888
    lwz     r0, 0x6f4(sp)
    stw     r0, 0x58c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x588(sp)
    addi    r3, sp, 0x6f0
    addi    r4, sp, 0x584
    stw     r0, 0x584(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802b8748
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r20)
    addi    r3, r31, 0x184
    stw     r3, 0x4(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r20)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r20)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r20)
    subi    r0, r3, 0xca8
    lis     r3, 0xff
    stw     r0, 0x0(r20)
    addi    r0, r3, 0xff
    stw     r0, 0x10(r20)
    sth     r4, 0x14(r20)
branch_0x802b8748:
    addi    r21, r29, 0x10
    stw     r20, 0x880(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x44c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x44c(sp)
    addi    r4, sp, 0x448
    addi    r3, sp, 0x6e8
    stw     r0, 0x448(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6e8(sp)
    addi    r5, sp, 0x580
    addi    r4, r21, 0x0
    stw     r0, 0x6e4(sp)
    addi    r3, sp, 0x57c
    addi    r6, sp, 0x880
    lwz     r0, 0x6e4(sp)
    stw     r0, 0x580(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x57c(sp)
    addi    r3, sp, 0x6e0
    addi    r4, sp, 0x578
    stw     r0, 0x578(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b8800
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0x19c
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r21)
    subi    r3, r3, 0xca8
    li      r0, -0x1
    stw     r3, 0x0(r21)
    stw     r0, 0x10(r21)
    sth     r4, 0x14(r21)
branch_0x802b8800:
    addi    r20, r29, 0x10
    stw     r21, 0x878(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x444
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x444(sp)
    addi    r4, sp, 0x440
    addi    r3, sp, 0x6d8
    stw     r0, 0x440(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6d8(sp)
    addi    r5, sp, 0x574
    addi    r4, r20, 0x0
    stw     r0, 0x6d4(sp)
    addi    r3, sp, 0x570
    addi    r6, sp, 0x878
    lwz     r0, 0x6d4(sp)
    stw     r0, 0x574(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x570(sp)
    addi    r3, sp, 0x6d0
    addi    r4, sp, 0x56c
    stw     r0, 0x56c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    addi    r3, r31, 0x1b4
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, -0x70b0(r13)
    bl      makeGraphGroup__10TConductorFPv
    addi    r3, r31, 0x1cc
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r20, r3
    beq-    branch_0x802b89e0
    lwz     r3, 0xb8(r30)
    mr      r4, r20
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r24, sp, 0xaa0
    stw     r24, 0x874(sp)
    lis     r5, 0x803b
    subi    r23, r5, 0xf0c
    lwz     r6, 0x874(sp)
    lis     r4, 0x803e
    addi    r21, r4, 0x184
    stw     r23, 0x0(r6)
    li      r22, 0x0
    lis     r5, 0x803e
    stb     r22, 0x4(r6)
    addi    r29, r5, 0x160
    lis     r4, 0x803e
    stw     r21, 0x0(r6)
    addi    r25, r4, 0x1c8
    addi    r5, r3, 0x0
    stw     r29, 0x0(r6)
    addi    r3, r6, 0x0
    mr      r4, r20
    stw     r25, 0x0(r6)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r20, sp, 0xa8c
    stw     r20, 0x870(sp)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x870(sp)
    stw     r23, 0x0(r3)
    stb     r22, 0x4(r3)
    stw     r21, 0x0(r3)
    stw     r29, 0x0(r3)
    stw     r25, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r24, 0x0
    addi    r4, r20, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    mr.     r22, r3
    beq-    branch_0x802b89a8
    addi    r21, r27, 0x10
    stw     r22, 0x86c(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x43c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x43c(sp)
    addi    r4, sp, 0x438
    addi    r3, sp, 0x6cc
    stw     r0, 0x438(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6cc(sp)
    addi    r5, sp, 0x560
    addi    r4, r21, 0x0
    stw     r0, 0x6c8(sp)
    addi    r3, sp, 0x55c
    addi    r6, sp, 0x86c
    lwz     r0, 0x6c8(sp)
    stw     r0, 0x560(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x55c(sp)
    addi    r3, sp, 0x6c4
    addi    r4, sp, 0x558
    stw     r0, 0x558(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    mr      r3, r22
    lwz     r12, 0x0(r22)
    mr      r4, r20
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802b89a8:
    lis     r3, 0x803e
    addi    r21, r3, 0x1c8
    lis     r3, 0x803e
    stw     r21, 0xa8c(sp)
    addi    r20, r3, 0x160
    stw     r20, 0xa8c(sp)
    addi    r3, sp, 0xa8c
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    stw     r21, 0xaa0(sp)
    addi    r3, sp, 0xaa0
    li      r4, 0x0
    stw     r20, 0xaa0(sp)
    bl      __dt__14JSUInputStreamFv
branch_0x802b89e0:
    addi    r3, r31, 0x1e4
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r0, r3
    lwz     r3, 0xb8(r30)
    mr      r20, r0
    lwz     r12, 0x0(r3)
    mr      r4, r20
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r24, sp, 0xa78
    stw     r24, 0x868(sp)
    lis     r5, 0x803b
    subi    r23, r5, 0xf0c
    lwz     r6, 0x868(sp)
    lis     r4, 0x803e
    addi    r21, r4, 0x184
    stw     r23, 0x0(r6)
    li      r22, 0x0
    lis     r5, 0x803e
    stb     r22, 0x4(r6)
    addi    r29, r5, 0x160
    lis     r4, 0x803e
    stw     r21, 0x0(r6)
    addi    r25, r4, 0x1c8
    addi    r5, r3, 0x0
    stw     r29, 0x0(r6)
    addi    r3, r6, 0x0
    mr      r4, r20
    stw     r25, 0x0(r6)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r20, sp, 0xa64
    stw     r20, 0x864(sp)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x864(sp)
    stw     r23, 0x0(r3)
    stb     r22, 0x4(r3)
    stw     r21, 0x0(r3)
    stw     r29, 0x0(r3)
    stw     r25, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r24, 0x0
    addi    r4, r20, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    mr.     r22, r3
    beq-    branch_0x802b8b14
    addi    r21, r27, 0x10
    stw     r22, 0x860(sp)
    addi    r4, r21, 0x0
    addi    r3, sp, 0x434
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x434(sp)
    addi    r4, sp, 0x430
    addi    r3, sp, 0x6c0
    stw     r0, 0x430(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6c0(sp)
    addi    r5, sp, 0x54c
    addi    r4, r21, 0x0
    stw     r0, 0x6bc(sp)
    addi    r3, sp, 0x548
    addi    r6, sp, 0x860
    lwz     r0, 0x6bc(sp)
    stw     r0, 0x54c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x548(sp)
    addi    r3, sp, 0x6b8
    addi    r4, sp, 0x544
    stw     r0, 0x544(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    mr      r3, r22
    lwz     r12, 0x0(r22)
    mr      r4, r20
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802b8b14:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x1fc
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1fc
    mtlr    r12
    blrl
    mr      r22, r3
    bl      SMSGetGameVideoHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x10(rtoc)
    stw     r0, 0xadc(sp)
    lis     r20, 0x4330
    stw     r20, 0xad8(sp)
    lfd     f0, 0xad8(sp)
    fsubs   f31, f0, f1
    bl      SMSGetGameVideoWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f2, -0x10(rtoc)
    stw     r0, 0xae4(sp)
    lis     r4, 0x803e
    lis     r3, 0x803e
    lfs     f0, -0x2c(rtoc)
    stw     r20, 0xae0(sp)
    addi    r21, r4, 0x1c8
    lfd     f1, 0xae0(sp)
    addi    r20, r3, 0x160
    addi    r3, sp, 0xa64
    fsubs   f1, f1, f2
    li      r4, 0x0
    fmuls   f0, f0, f1
    fdivs   f0, f0, f31
    stfs    f0, 0x4c(r22)
    stw     r21, 0xa64(sp)
    stw     r20, 0xa64(sp)
    bl      __dt__14JSUInputStreamFv
    stw     r21, 0xa78(sp)
    addi    r3, sp, 0xa78
    li      r4, 0x0
    stw     r20, 0xa78(sp)
    bl      __dt__14JSUInputStreamFv
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b8c28
    lis     r3, 0x803e
    stw     r21, 0x858(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0x208
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r0, 0x0
    addi    r4, sp, 0x6b0
    sth     r0, 0xc(r21)
    lwz     r20, 0x858(sp)
    addi    r3, r20, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r20)
branch_0x802b8c28:
    stw     r21, 0x80(r30)
    addi    r20, r28, 0x10
    addi    r4, r20, 0x0
    lwz     r0, 0x80(r30)
    addi    r3, sp, 0x42c
    stw     r0, 0x854(sp)
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x42c(sp)
    addi    r4, sp, 0x428
    addi    r3, sp, 0x6ac
    stw     r0, 0x428(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6ac(sp)
    addi    r5, sp, 0x53c
    addi    r4, r20, 0x0
    stw     r0, 0x6a8(sp)
    addi    r3, sp, 0x538
    addi    r6, sp, 0x854
    lwz     r0, 0x6a8(sp)
    stw     r0, 0x53c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x538(sp)
    addi    r3, sp, 0x6a4
    addi    r4, sp, 0x534
    stw     r0, 0x534(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    addi    r3, r31, 0x21c
    bl      findFirstFile__13JKRFileLoaderFPCc
    mr.     r20, r3
    beq-    branch_0x802b8d2c
    addi    r3, r31, 0x21c
    bl      changeDirectory__13JKRFileLoaderFPCc
branch_0x802b8ca8:
    lwz     r3, 0x0(r20)
    subi    r4, rtoc, 0x28
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802b8ce8
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b8cdc
    lwz     r5, 0x0(r20)
    addi    r3, r21, 0x0
    addi    r4, r31, 0x228
    bl      __ct__13TEventWatcherFPCcPCc
branch_0x802b8cdc:
    addi    r3, r30, 0x0
    addi    r4, r21, 0x0
    bl      registerEventWatcher__12TMarDirectorFP13TEventWatcher
branch_0x802b8ce8:
    mr      r3, r20
    lwz     r12, 0xc(r20)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne+    branch_0x802b8ca8
    cmplwi  r20, 0x0
    beq-    branch_0x802b8d24
    mr      r3, r20
    lwz     r12, 0xc(r20)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802b8d24:
    subi    r3, rtoc, 0x24
    bl      changeDirectory__13JKRFileLoaderFPCc
branch_0x802b8d2c:
    addi    r3, r31, 0x238
    bl      findFirstFile__13JKRFileLoaderFPCc
    mr.     r20, r3
    beq-    branch_0x802b8dc8
    addi    r3, r31, 0x238
    bl      changeDirectory__13JKRFileLoaderFPCc
branch_0x802b8d44:
    lwz     r3, 0x0(r20)
    subi    r4, rtoc, 0x28
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x802b8d84
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b8d78
    lwz     r5, 0x0(r20)
    addi    r3, r21, 0x0
    addi    r4, r31, 0x228
    bl      __ct__13TEventWatcherFPCcPCc
branch_0x802b8d78:
    addi    r3, r30, 0x0
    addi    r4, r21, 0x0
    bl      registerEventWatcher__12TMarDirectorFP13TEventWatcher
branch_0x802b8d84:
    mr      r3, r20
    lwz     r12, 0xc(r20)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne+    branch_0x802b8d44
    cmplwi  r20, 0x0
    beq-    branch_0x802b8dc0
    mr      r3, r20
    lwz     r12, 0xc(r20)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802b8dc0:
    subi    r3, rtoc, 0x24
    bl      changeDirectory__13JKRFileLoaderFPCc
branch_0x802b8dc8:
    bl      finalize__7TParamsFv
    subi    r3, rtoc, 0x20
    bl      getVolume__13JKRFileLoaderFPCc
    bl      unmountFixed__13JKRMemArchiveFv
    lwz     r3, -0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x70b0(r13)
    bl      initGraphGroup__10TConductorFv
    lwz     r3, -0x70b0(r13)
    bl      init__10TConductorFv
    addi    r3, r31, 0x248
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x248
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x802b8e40
    mr      r3, r28
branch_0x802b8e40:
    lwz     r0, -0x70b0(r13)
    addi    r20, r3, 0x10
    addi    r4, r20, 0x0
    stw     r0, 0x850(sp)
    addi    r3, sp, 0x424
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x424(sp)
    addi    r4, sp, 0x420
    addi    r3, sp, 0x6a0
    stw     r0, 0x420(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x6a0(sp)
    addi    r5, sp, 0x530
    addi    r4, r20, 0x0
    stw     r0, 0x69c(sp)
    addi    r3, sp, 0x52c
    addi    r6, sp, 0x850
    lwz     r0, 0x69c(sp)
    stw     r0, 0x530(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x52c(sp)
    addi    r3, sp, 0x698
    addi    r4, sp, 0x528
    stw     r0, 0x528(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, -0x610c(r13)
    bl      makeDrawBuffer__22TLightWithDBSetManagerFv
    lwz     r0, -0x610c(r13)
    mr      r4, r20
    addi    r3, sp, 0x41c
    stw     r0, 0x84c(sp)
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x41c(sp)
    addi    r4, sp, 0x418
    addi    r3, sp, 0x694
    stw     r0, 0x418(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x694(sp)
    addi    r5, sp, 0x524
    addi    r4, r20, 0x0
    stw     r0, 0x690(sp)
    addi    r3, sp, 0x520
    addi    r6, sp, 0x84c
    lwz     r0, 0x690(sp)
    stw     r0, 0x524(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x520(sp)
    addi    r3, sp, 0x68c
    addi    r4, sp, 0x51c
    stw     r0, 0x51c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, gpCamera(r13)
    bl      setNoticeInfo__15CPolarSubCameraFv
    stw     r28, 0x10(r30)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b8f78
    lis     r3, 0x803e
    stw     r21, 0x848(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0x254
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r0, 0x0
    addi    r4, sp, 0x684
    sth     r0, 0xc(r21)
    lwz     r20, 0x848(sp)
    addi    r3, r20, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r20)
branch_0x802b8f78:
    addi    r20, r28, 0x10
    stw     r21, 0xa60(sp)
    addi    r3, sp, 0x518
    addi    r4, r20, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x518(sp)
    addi    r3, sp, 0x844
    addi    r4, sp, 0x514
    stw     r0, 0x514(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x844(sp)
    addi    r5, sp, 0x680
    addi    r4, r20, 0x0
    stw     r0, 0x840(sp)
    addi    r3, sp, 0x67c
    addi    r6, sp, 0xa60
    lwz     r0, 0x840(sp)
    stw     r0, 0x680(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x802b9018
    lis     r3, 0x803e
    lwz     r20, 0xc0(r30)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r21)
    addi    r3, r31, 0x268
    stw     r3, 0x4(r21)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r21)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r21)
    li      r0, 0x0
    lis     r3, 0x803e
    sth     r0, 0xc(r21)
    addi    r0, r3, 0x1ec0
    stw     r0, 0x0(r21)
    stw     r20, 0x10(r21)
branch_0x802b9018:
    lwz     r4, -0x5db8(r13)
    addi    r29, r21, 0x0
    addi    r3, r31, 0x274
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x274
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r20, r3, 0x0
    addi    r3, r31, 0x288
    lwz     r21, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r21)
    addi    r4, r3, 0x0
    addi    r3, r21, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x288
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    li      r21, 0x5
    addi    r3, r31, 0x298
    stw     r21, 0xc(r4)
    lwz     r4, -0x5db8(r13)
    lwz     r22, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r22)
    addi    r4, r3, 0x0
    addi    r3, r22, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x298
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    addi    r3, r31, 0x2a8
    stw     r21, 0xc(r4)
    lwz     r4, -0x5db8(r13)
    lwz     r21, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r21)
    addi    r4, r3, 0x0
    addi    r3, r21, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x2a8
    mtlr    r12
    blrl
    lwz     r3, 0x10(r3)
    li      r0, 0x1
    addi    r4, r20, 0x0
    stw     r0, 0xc(r3)
    lwz     r3, -0x610c(r13)
    bl      addChildGroupObj__22TLightWithDBSetManagerFPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
    lwz     r3, 0x40(r30)
    addi    r4, r29, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r3, 0x38(r30)
    mr      r6, r28
    lwz     r4, 0x3c(r30)
    lwz     r5, 0xa60(sp)
    bl      initECTGft__12TMarDirectorFP12TPerformListP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_PQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
    lwz     r3, 0x1c(r30)
    lwz     r4, 0xa60(sp)
    bl      initECTMir__12TMarDirectorFP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x2bc
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x2bc
    mtlr    r12
    blrl
    lhz     r4, 0x20(r3)
    mr      r20, r3
    lis     r3, 0x803e
    subi    r0, r3, 0xcb0
    ori     r3, r4, 0x122f
    sth     r3, 0x20(r20)
    addi    r3, r31, 0x2d4
    stw     r0, 0x44(r20)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x2d4
    mtlr    r12
    blrl
    lwz     r6, 0x10(r3)
    addi    r4, sp, 0x900
    addi    r3, r20, 0x0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x900(sp)
    stw     r0, 0x904(sp)
    lwz     r5, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r5, 0x908(sp)
    stw     r0, 0x90c(sp)
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x910(sp)
    stw     r0, 0x914(sp)
    lwz     r5, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r5, 0x918(sp)
    stw     r0, 0x91c(sp)
    bl      setTexAttb__Q26JDrama11TEfbCtrlTexFRC9_GXTexObj
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r21, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r6, r3, 16
    addi    r7, r21, 0x0
    addi    r3, sp, 0xa4c
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r20, 0x0
    addi    r4, sp, 0xa4c
    bl      setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x2ec
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x2ec
    mtlr    r12
    blrl
    lwz     r4, 0xa4c(sp)
    lwz     r0, 0xa50(sp)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r4, 0xa54(sp)
    lwz     r0, 0xa58(sp)
    stw     r4, 0x18(r3)
    stw     r0, 0x1c(r3)
    addi    r3, sp, 0x950
    bl      __ct__10JKRDvdFileFv
    addi    r3, sp, 0x950
    addi    r4, r31, 0x300
    bl      open__10JKRDvdFileFPCc
    lwz     r25, 0x9e0(sp)
    addi    r3, sp, 0x950
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    addi    r26, sp, 0x938
    stw     r26, 0x814(sp)
    lis     r4, 0x803b
    subi    r20, r4, 0xf0c
    lwz     r6, 0x814(sp)
    lis     r5, 0x803e
    addi    r22, r5, 0x184
    stw     r20, 0x0(r6)
    li      r21, 0x0
    lis     r4, 0x803e
    stb     r21, 0x4(r6)
    addi    r23, r4, 0x160
    lis     r5, 0x803e
    stw     r22, 0x0(r6)
    addi    r24, r5, 0x1c8
    addi    r4, r3, 0x0
    stw     r23, 0x0(r6)
    addi    r3, r6, 0x0
    mr      r5, r25
    stw     r24, 0x0(r6)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r25, sp, 0x924
    stw     r25, 0x810(sp)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x810(sp)
    stw     r20, 0x0(r3)
    stb     r21, 0x4(r3)
    stw     r22, 0x0(r3)
    stw     r23, 0x0(r3)
    stw     r24, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    bl      genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    addi    r21, r3, 0x0
    addi    r20, r27, 0x10
    stw     r21, 0x80c(sp)
    addi    r4, r20, 0x0
    addi    r3, sp, 0x408
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x408(sp)
    addi    r4, sp, 0x404
    addi    r3, sp, 0x658
    stw     r0, 0x404(sp)
    bl      __ct__Q37JGadget34TList_pointer_PQ26JDrama8TViewObj_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x658(sp)
    addi    r5, sp, 0x4fc
    addi    r4, r20, 0x0
    stw     r0, 0x654(sp)
    addi    r3, sp, 0x4f8
    addi    r6, sp, 0x80c
    lwz     r0, 0x654(sp)
    stw     r0, 0x4fc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x4f8(sp)
    addi    r3, sp, 0x650
    addi    r4, sp, 0x4f4
    stw     r0, 0x4f4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    mr      r3, r21
    lwz     r12, 0x0(r21)
    mr      r4, r25
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r24, 0x924(sp)
    addi    r3, r25, 0x0
    li      r4, 0x0
    stw     r23, 0x924(sp)
    bl      __dt__14JSUInputStreamFv
    stw     r24, 0x938(sp)
    addi    r3, r26, 0x0
    li      r4, 0x0
    stw     r23, 0x938(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r3, sp, 0x950
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x318
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x318
    mtlr    r12
    blrl
    stw     r3, 0x28(r30)
    addi    r3, r31, 0x330
    lwz     r4, -0x5db8(r13)
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x330
    mtlr    r12
    blrl
    stw     r3, 0x2c(r30)
    addi    r3, r31, 0x348
    lwz     r4, -0x5db8(r13)
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x348
    mtlr    r12
    blrl
    stw     r3, 0x1c(r30)
    addi    r3, r31, 0x358
    lwz     r4, -0x5db8(r13)
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x358
    mtlr    r12
    blrl
    stw     r3, 0x20(r30)
    addi    r3, r31, 0x370
    lwz     r4, -0x5db8(r13)
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x370
    mtlr    r12
    blrl
    stw     r3, 0x24(r30)
    addi    r3, r31, 0x384
    lwz     r4, -0x5db8(r13)
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x384
    mtlr    r12
    blrl
    stw     r3, 0x44(r30)
    addi    r3, r31, 0x394
    lwz     r4, -0x5db8(r13)
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x394
    mtlr    r12
    blrl
    stw     r3, 0x48(r30)
    mr      r5, r28
    lwz     r3, 0x24(r30)
    lwz     r4, 0xa60(sp)
    bl      initECDisp__12TMarDirectorFP12TPerformListPQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_PQ26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_
    lwz     r4, -0x5db8(r13)
    subi    r3, rtoc, 0x18
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x18
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0x28(r30)
    mr      r20, r0
    addi    r4, r20, 0x0
    li      r5, 0x1
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x3a4
    lwz     r21, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r21)
    addi    r4, r3, 0x0
    addi    r3, r21, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3a4
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r21, r3, 0x0
    beq-    branch_0x802b95c8
    lwz     r3, 0x28(r30)
    addi    r4, r21, 0x0
    li      r5, 0x1
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x802b95c8:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x3b8
    lwz     r22, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r22)
    addi    r4, r3, 0x0
    addi    r3, r22, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3b8
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r22, r3, 0x0
    li      r24, 0x0
    beq-    branch_0x802b9658
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x3c8
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3c8
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0x28(r30)
    mr      r24, r0
    addi    r4, r24, 0x0
    li      r5, 0x1
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r3, 0x28(r30)
    addi    r4, r22, 0x0
    li      r5, 0x1
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x802b9658:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x3dc
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3dc
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r25, r3, 0x0
    addi    r3, r31, 0x3ec
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x3ec
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0x28(r30)
    mr      r23, r0
    addi    r4, r25, 0x0
    li      r5, 0x1
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r3, 0x2c(r30)
    addi    r4, r20, 0x0
    li      r5, 0x2
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    cmplwi  r21, 0x0
    beq-    branch_0x802b96f4
    lwz     r3, 0x2c(r30)
    addi    r4, r21, 0x0
    li      r5, 0x2
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x802b96f4:
    cmplwi  r22, 0x0
    beq-    branch_0x802b971c
    lwz     r3, 0x2c(r30)
    addi    r4, r24, 0x0
    li      r5, 0x2
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r3, 0x2c(r30)
    addi    r4, r22, 0x0
    li      r5, 0x2
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x802b971c:
    lwz     r3, 0x2c(r30)
    addi    r4, r25, 0x0
    li      r5, 0x2
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r3, 0x2c(r30)
    addi    r4, r23, 0x0
    li      r5, 0x2
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    mr      r3, r30
    bl      setupPerformList_console__12TMarDirectorFv
    lwz     r3, 0x24(r30)
    addi    r4, r29, 0x0
    li      r5, 0x100
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    lwz     r3, 0x34(r30)
    bl      preEntry__12TMarDirectorFP12TPerformList
    mr      r3, r30
    bl      setup2__12TMarDirectorFv
    lwz     r3, -0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lmw     r20, 0xae8(sp)
    li      r3, 0x0
    lwz     r0, 0xb2c(sp)
    lfd     f31, 0xb20(sp)
    lfd     f30, 0xb18(sp)
    mtlr    r0
    addi    sp, sp, 0xb28
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_802b9798
set_f___Q29JGeometry8TVec3_f_Ffff_802b9798: # 0x802b9798
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl decideMarioPosIdx__12TMarDirectorFv
decideMarioPosIdx__12TMarDirectorFv: # 0x802b97a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    li      r30, 0x0
    addi    r28, r3, 0x0
    li      r31, 0x1
    stb     r30, 0xd0(r3)
    lis     r3, 0x803f
    subi    r29, r3, 0x6900
    stb     r30, 0xd1(r28)
    addi    r26, r29, 0xa
    stw     r31, 0xe4(r28)
    lbz     r0, 0xe(r29)
    cmplwi  r0, 0xf
    bgt-    branch_0x802b9a24
    lis     r3, 0x803e
    subi    r3, r3, 0x4d0
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x802B9800:		# jumptable 802B97FC case 15
    li      r0, 0xe
    stw     r0, 0xe4(r28)
    li      r0, 0xff
    addi    r4, sp, 0x48
    stb     r30, 0x44(sp)
    stb     r30, 0x45(sp)
    stb     r30, 0x46(sp)
    stb     r0, 0x47(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x34(r29)
    bl      setColor__9TSMSFaderFQ28JUtility6TColor
    b       branch_0x802b9a24

branch_0x802B9834:		# jumptable 802B97FC case 0
lis	  r27, 3 # 0x30001
lwz	  r3, -0x6060(r13)
addi	  r4, r27, 1 # 0x30001
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
beq	  def_802B97FC	# jumptable 802B97FC default case
lwz	  r3, -0x6060(r13)
addi	  r5, r27, 1 # 0x30001
li	  r4, 0
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B9860:		# jumptable 802B97FC cases 2-6,8,9
li	  r0, 0xE
stw	  r0, 0xE4(r28)
li	  r5, 0xD2
lis	  r3, unk_803E9700@ha
stb	  r5, 0x68+var_2C(r1)
li	  r0, 0xFF
addi	  r3, r3, unk_803E9700@l
stb	  r5, 0x68+var_2C+1(r1)
addi	  r4, r1, 0x68+var_28
stb	  r5, 0x68+var_2C+2(r1)
stb	  r0, 0x68+var_2C+3(r1)
lwz	  r0, 0x68+var_2C(r1)
stw	  r0, 0x68+var_28(r1)
lwz	  r3, 0x34(r3) #(dword_803E9734 -	unk_803E9700)(r3)
bl	  setColor__9TSMSFaderFQ28JUtility6TColor # TSMSFader::setColor((JUtility::TColor))
li	  r0, 1
stb	  r0, 0xD1(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B98A8:		# jumptable 802B97FC case 1
lis	  r27, 3 # 0x30004
lwz	  r3, -0x6060(r13)
addi	  r4, r27, 1 # 0x30001
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
beq	  branch_0x802B98D4
lwz	  r3, -0x6060(r13)
addi	  r5, r27, 1 # 0x30001
li	  r4, 0
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B98D4:
lwz	  r3, -0x6060(r13)
addi	  r4, r27, 4 # 0x30004
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
beq	  branch_0x802B9904
lwz	  r3, -0x6060(r13)
addi	  r5, r27, 4 # 0x30004
li	  r4, 0
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
li	  r0, 4
stb	  r0, 0xD0(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B9904:
lbz	  r3, 0(r26)
bl	  SMS_getShineStage__FUc # SMS_getShineStage(uchar)
clrlwi	  r0, r3, 24
cmplwi	  r0, 9		# switch 10 cases
bgt	  def_802B97FC	# jumptable 802B97FC default case
lis	  r3, jpt_802B992C@ha
addi	  r3, r3, jpt_802B992C@l
slwi	  r0, r0, 2
lwzx	  r0, r3, r0
mtctr	  r0
bctr			# switch jump

branch_0x802B9930:		# jumptable 802B992C case 2
stb	  r31, 0xD0(r28)
li	  r3, 2
li	  r0, 7
stb	  r3, 0xD1(r28)
stw	  r0, 0xE4(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B9948:		# jumptable 802B992C case 3
li	  r3, 2
stb	  r3, 0xD0(r28)
li	  r0, 7
stb	  r3, 0xD1(r28)
stw	  r0, 0xE4(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B9960:		# jumptable 802B992C case 4
li	  r0, 3
stb	  r0, 0xD0(r28)
li	  r3, 2
li	  r0, 7
stb	  r3, 0xD1(r28)
stw	  r0, 0xE4(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B997C:		# jumptable 802B992C case 5
li	  r0, 4
stb	  r0, 0xD0(r28)
li	  r3, 2
li	  r0, 7
stb	  r3, 0xD1(r28)
stw	  r0, 0xE4(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B9998:		# jumptable 802B992C case 6
li	  r0, 5
stb	  r0, 0xD0(r28)
li	  r3, 2
li	  r0, 7
stb	  r3, 0xD1(r28)
stw	  r0, 0xE4(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B99B4:		# jumptable 802B992C case 7
li	  r0, 6
stb	  r0, 0xD0(r28)
li	  r3, 2
li	  r0, 7
stb	  r3, 0xD1(r28)
stw	  r0, 0xE4(r28)
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B99D0:		# jumptable 802B992C case 8
li	  r0, 7
stb	  r0, 0xD0(r28)
li	  r0, 2
li	  r3, 0xE
stb	  r0, 0xD1(r28)
li	  r0, 0xFF
addi	  r4, r1, 0x68+var_30
stw	  r3, 0xE4(r28)
stb	  r30, 0x68+var_34(r1)
stb	  r30, 0x68+var_34+1(r1)
stb	  r30, 0x68+var_34+2(r1)
stb	  r0, 0x68+var_34+3(r1)
lwz	  r0, 0x68+var_34(r1)
stw	  r0, 0x68+var_30(r1)
lwz	  r3, 0x34(r29) #(dword_803E9734 -	unk_803E9700)(r29)
bl	  setColor__9TSMSFaderFQ28JUtility6TColor # TSMSFader::setColor((JUtility::TColor))
b	  def_802B97FC	# jumptable 802B97FC default case

branch_0x802B9A14:		# jumptable 802B992C case 9
li	  r0, 8
stb	  r0, 0xD0(r28)
li	  r0, 7
stw	  r0, 0xE4(r28)

def_802B992C:
def_802B97FC:		# jumptable 802B97FC default case
branch_0x802b9a24:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __sinit_MarDirectorSetupObjects_cpp
__sinit_MarDirectorSetupObjects_cpp: # 0x802b9a38
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x2c28
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9a80
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802b9a80:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9ab0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802b9ab0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9ae0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802b9ae0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9b10
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802b9b10:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9b40
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802b9b40:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9b70
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802b9b70:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9ba0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802b9ba0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9bd0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802b9bd0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9c00
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802b9c00:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9c30
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802b9c30:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9c60
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802b9c60:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9c90
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802b9c90:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9cc0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802b9cc0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9cf0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802b9cf0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802b9d20
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802b9d20:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

