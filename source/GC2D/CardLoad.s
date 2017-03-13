
.globl __dt__9TCardLoadFv
__dt__9TCardLoadFv: # 0x80163a2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80163a84
    lis     r3, 0x803c
    addi    r0, r3, 0x9c8
    stw     r0, 0x0(r30)
    beq-    branch_0x80163a74
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80163a74:
    extsh.  r0, r31
    ble-    branch_0x80163a84
    mr      r3, r30
    bl      __dl__FPv
branch_0x80163a84:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl changeScene__9TCardLoadFv
changeScene__9TCardLoadFv: # 0x80163aa0

.set var_10C, -0x10C
.set var_108, -0x108
.set var_104, -0x104
.set var_E8, -0xE8
.set var_E4, -0xE4
.set var_D0, -0xD0
.set var_BC, -0xBC
.set var_84, -0x84
.set var_80, -0x80
.set var_6C, -0x6C
.set var_68, -0x68
.set var_64, -0x64
.set var_60, -0x60
.set var_58, -0x58
.set var_40, -0x40
.set var_38, -0x38
.set var_30, -0x30
.set var_28, -0x28
.set var_20, -0x20
.set arg_4,  4

    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e0(sp)
    stmw    r24, 0x1c0(sp)
    mr      r31, r3
    lwz     r30, 0x1c(r3)
    lwz     r29, 0x10(r3)
    cmplwi  r30, 0x35
    bgt-    branch_0x80164fe4
    lis     r3, 0x803c
    addi    r3, r3, 0x9ec
    slwi    r0, r30, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80163ADC:		# jumptable 80163AD8 case 48
    lwz     r3, -0x603c(r13)
    bl      readOptionBlock__12TCardManagerFv
    li      r0, 0x31
    stw     r0, 0x1c(r31)
    b       branch_0x80164fe4

branch_0x80163AF0:		# jumptable 80163AD8 case 49
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r4, r3, 0
cmpwi	  r4, -1
beq	  branch_0x80163BA0
cmpwi	  r4, 0
bne	  branch_0x80163B90
addi	  r25, r1, 0x1E0+var_58
stw	  r25, 0x1E0+var_84(r1)
lis	  r4, unk_803AF0F4@ha
addi	  r0, r4, unk_803AF0F4@l
lwz	  r3, 0x1E0+var_84(r1)
lis	  r5, unk_803E0160@h
addi	  r27, r5, unk_803E0160@l
stw	  r0, 0(r3)
li	  r28, 0
lis	  r6, unk_803E0184@h
stb	  r28, 4(r3)
addi	  r0, r6, unk_803E0184@l
lis	  r4, unk_803E01C8@h
stw	  r0, 0(r3)
addi	  r26, r4, unk_803E01C8@l
li	  r4, 0
stw	  r27, 0(r3)
li	  r5, 0
stw	  r26, 0(r3)
bl	  setBuffer__20JSUMemoryInputStreamFPCvl # JSUMemoryInputStream::setBuffer((void const *,long))
lwz	  r3, -0x603C(r13)
mr	  r4, r25
bl	  getOptionReadStream__12TCardManagerFP20JSUMemoryInputStream #	TCardManager::getOptionReadStream((JSUMemoryInputStream	*))
lwz	  r3, -0x6060(r13)
mr	  r4, r25
bl	  loadOption__12TFlagManagerFR20JSUMemoryInputStream # TFlagManager::loadOption((JSUMemoryInputStream &))
stw	  r28, 0x1C(r31)
addi	  r3, r25, 0
li	  r4, 0
stw	  r26, 0x1E0+var_58(r1)
stw	  r27, 0x1E0+var_58(r1)
bl	  __dt__14JSUInputStreamFv # JSUInputStream::~JSUInputStream((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163B90:
mr	  r3, r31
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163BA0:
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163BAC:		# jumptable 80163AD8 case 0
lwz	  r3, 0x38(r31)
addi	  r4, r31, 0x40
lhz	  r0, 0xE2(r3)
ori	  r0, r0, 1
sth	  r0, 0xE2(r3)
lwz	  r3, -0x603C(r13)
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
li	  r0, 2
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163BD4:		# jumptable 80163AD8 case 1
lwz	  r3, -0x603C(r13)
bl	  unmount__12TCardManagerFv # TCardManager::unmount((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163BE0:		# jumptable 80163AD8 case 2
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r4, r3, 0
cmpwi	  r4, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
cmpwi	  r4, 0
bne	  branch_0x80163C10
li	  r0, 1
stw	  r0, 0x10(r31)
li	  r0, 0x13
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163C10:
mr	  r3, r31
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163C20:		# jumptable 80163AD8 case 3
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -3
bne	  branch_0x80163C48
addi	  r3, r31, 0
li	  r4, 0x1A
bl	  waitForStart__9TCardLoadF10TEProgress	# TCardLoad::waitForStart((TEProgress))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163C48:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x80163C5C
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80163C5C:
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForStart__9TCardLoadF10TEProgress	# TCardLoad::waitForStart((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163C84:		# jumptable 80163AD8 cases 4,5,12,13,16,45,53
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -3
beq	  branch_0x80163CAC
addi	  r3, r31, 0
li	  r4, 0x1A
bl	  waitForStart__9TCardLoadF10TEProgress	# TCardLoad::waitForStart((TEProgress))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163CAC:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x80163CC0
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80163CC0:
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForStart__9TCardLoadF10TEProgress	# TCardLoad::waitForStart((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163CE8:		# jumptable 80163AD8 cases 6,7
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x80163D18
addi	  r3, r31, 0
li	  r4, 8
li	  r5, 0x35
li	  r6, 1
bl	  waitForChoice__9TCardLoadF10TEProgress10TEProgressi #	TCardLoad::waitForChoice((TEProgress,TEProgress,int))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163D18:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x80163D34
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80163D34:
addi	  r3, r31, 0
li	  r4, 8
li	  r5, 0x35
li	  r6, 1
bl	  waitForChoice__9TCardLoadF10TEProgress10TEProgressi #	TCardLoad::waitForChoice((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163D68:		# jumptable 80163AD8 case 8
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x80163DB8
addi	  r3, r31, 0
li	  r4, 9
li	  r5, 0x35
li	  r6, 1
bl	  waitForChoice__9TCardLoadF10TEProgress10TEProgressi #	TCardLoad::waitForChoice((TEProgress,TEProgress,int))
addi	  r26, r3, 0
extsb.	  r0, r26
bne	  branch_0x80163DA0
lwz	  r3, -0x603C(r13)
bl	  format__12TCardManagerFv # TCardManager::format((void))

branch_0x80163DA0:
extsb	  r0, r26
cmpwi	  r0, -1
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163DB8:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x80163DD4
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80163DD4:
addi	  r3, r31, 0
li	  r4, 9
li	  r5, 0x35
li	  r6, 1
bl	  waitForChoice__9TCardLoadF10TEProgress10TEProgressi #	TCardLoad::waitForChoice((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163E08:		# jumptable 80163AD8 case 9
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -1
beq	  branch_0x80163EA4
cmpwi	  r3, 0
bne	  branch_0x80163E80
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80163E34
li	  r0, 4
stw	  r0, 0x10(r31)

branch_0x80163E34:
addi	  r3, r31, 0
li	  r4, 0xA
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 5
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, gpMSound(r13)
li	  r4, 0x4810
bl	  gateCheck__6MSoundFUl	# MSound::gateCheck((ulong))
clrlwi.	  r0, r3, 24
beq	  def_80163AD8	# jumptable 80163AD8 default case
li	  r3, 0x4810
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl # MSoundSESystem::MSoundSE::startSoundSystemSE((ulong,ulong,JAISound **,ulong))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163E80:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80163E94
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80163E94:
addi	  r3, r31, 0
li	  r4, 0xB
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163EA4:
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163EBC:		# jumptable 80163AD8 case 10
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForAnyKey__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKey((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163EE4:		# jumptable 80163AD8 case 11
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForAnyKey__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKey((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r4, r3, 0
addi	  r3, r31, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163F18:		# jumptable 80163AD8 case 26
addi	  r3, r31, 0
li	  r4, 0x29
li	  r5, 2
li	  r6, 0
bl	  waitForChoice__9TCardLoadF10TEProgress10TEProgressi #	TCardLoad::waitForChoice((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, 1
bne	  branch_0x80163F48
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163F48:
extsb.	  r0, r3
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x6060(r13)
bl	  firstStart__12TFlagManagerFv # TFlagManager::firstStart((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163F5C:		# jumptable 80163AD8 case 14
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x80163FAC
addi	  r3, r31, 0
li	  r4, 0xF
li	  r5, 0x10
li	  r6, 0
bl	  waitForChoice__9TCardLoadF10TEProgress10TEProgressi #	TCardLoad::waitForChoice((TEProgress,TEProgress,int))
addi	  r26, r3, 0
extsb.	  r0, r26
bne	  branch_0x80163F94
lwz	  r3, -0x603C(r13)
bl	  createFile__12TCardManagerFv # TCardManager::createFile((void))

branch_0x80163F94:
extsb	  r0, r26
cmpwi	  r0, -1
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163FAC:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x80163FC8
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80163FC8:
addi	  r3, r31, 0
li	  r4, 0xF
li	  r5, 4
li	  r6, 0
bl	  waitForChoice__9TCardLoadF10TEProgress10TEProgressi #	TCardLoad::waitForChoice((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80163FFC:		# jumptable 80163AD8 case 15
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -1
beq	  branch_0x80164098
cmpwi	  r3, 0
bne	  branch_0x80164074
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164028
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164028:
addi	  r3, r31, 0
li	  r4, 0x11
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 5
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, gpMSound(r13)
li	  r4, 0x4810
bl	  gateCheck__6MSoundFUl	# MSound::gateCheck((ulong))
clrlwi.	  r0, r3, 24
beq	  def_80163AD8	# jumptable 80163AD8 default case
li	  r3, 0x4810
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl # MSoundSESystem::MSoundSE::startSoundSystemSE((ulong,ulong,JAISound **,ulong))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164074:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164088
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164088:
addi	  r3, r31, 0
li	  r4, 0x12
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164098:
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801640B0:		# jumptable 80163AD8 case 17
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForAnyKey__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKey((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801640D8:		# jumptable 80163AD8 case 18
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForAnyKey__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKey((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r4, r3, 0
addi	  r3, r31, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x8016410C:		# jumptable 80163AD8 case 19
lwz	  r4, 0x24(r31)
cmpwi	  r4, 0
beq	  branch_0x80164134
mr	  r3, r31
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
addi	  r5, r3, 0
addi	  r3, r31, 0
li	  r4, 2
li	  r6, 1
bl	  selectBookmark__9TCardLoadF10TEProgress10TEProgressb # TCardLoad::selectBookmark((TEProgress,TEProgress,bool))

branch_0x80164134:
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
cmpwi	  r3, 0
bne	  branch_0x8016418C
li	  r0, 0
stb	  r0, 0xB6(r31)
addi	  r3, r31, 0
li	  r4, 0x1B
li	  r5, 0
li	  r6, 1
bl	  selectBookmark__9TCardLoadF10TEProgress10TEProgressb # TCardLoad::selectBookmark((TEProgress,TEProgress,bool))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
slwi	  r0, r0, 5
add	  r3, r31, r0
lwz	  r0, 0x40(r3)
cmpwi	  r0, 1
bne	  def_80163AD8	# jumptable 80163AD8 default case
li	  r0, 0x1E
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x8016418C:
cmpwi	  r3, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
stw	  r3, 0x24(r31)
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  def_80163AD8	# jumptable 80163AD8 default case
li	  r0, 3
stw	  r0, 0x10(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801641B0:		# jumptable 80163AD8 case 28
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
mr.	  r4, r3
bne	  branch_0x80164224
addi	  r3, r31, 0
li	  r4, 0x15
li	  r5, 2
li	  r6, 1
bl	  selectBookmark__9TCardLoadF10TEProgress10TEProgressb # TCardLoad::selectBookmark((TEProgress,TEProgress,bool))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  branch_0x80164208
stb	  r3, 0xB2(r31)
lbz	  r0, 0xB2(r31)
extsb	  r0, r0
slwi	  r3, r0, 5
addi	  r0, r3, 0x40
lwzx	  r0, r31, r0
cmpwi	  r0, 1
bne	  branch_0x80164208
li	  r0, 0x22
stw	  r0, 0x1C(r31)

branch_0x80164208:
lwz	  r0, 0x1C(r31)
cmpwi	  r0, 2
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164224:
cmpwi	  r4, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
mr	  r3, r31
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
addi	  r4, r3, 0
addi	  r3, r31, 0
addi	  r5, r4, 0
li	  r6, 1
bl	  selectBookmark__9TCardLoadF10TEProgress10TEProgressb # TCardLoad::selectBookmark((TEProgress,TEProgress,bool))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  def_80163AD8	# jumptable 80163AD8 default case
li	  r0, 3
stw	  r0, 0x10(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164260:		# jumptable 80163AD8 case 27
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r28, r3
bne	  branch_0x801643F0
mr	  r3, r31
bl	  selectFunction__9TCardLoadFv # TCardLoad::selectFunction((void))
mr	  r26, r3
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
extsb	  r0, r26
cmpwi	  r0, 2
beq	  branch_0x80164318
bge	  branch_0x801642A4
cmpwi	  r0, 0
beq	  branch_0x801642B0
bge	  branch_0x80164304
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801642A4:
cmpwi	  r0, 4
bge	  def_80163AD8	# jumptable 80163AD8 default case
b	  branch_0x80164324

branch_0x801642B0:
lis	  r3, unk_803E9700@ha
lbz	  r0, 0xB0(r31)
addi	  r3, r3, unk_803E9700@l
stb	  r0, 0x38(r3) #(byte_803E9738 - unk_803E9700)(r3)
lbz	  r0, 0xB0(r31)
extsb	  r4, r0
slwi	  r3, r4, 5
addi	  r0, r3, 0x58
lwzx	  r0, r31, r0
cmplwi	  r0, 0
bne	  branch_0x801642F0
lwz	  r3, -0x6060(r13)
bl	  firstStart__12TFlagManagerFv # TFlagManager::firstStart((void))
li	  r0, 0x29
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801642F0:
lwz	  r3, -0x603C(r13)
bl	  readBlock__12TCardManagerFUl # TCardManager::readBlock((ulong))
li	  r0, 0x28
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164304:
lbz	  r3, 0xB0(r31)
li	  r0, 0x1C
stb	  r3, 0xB1(r31)
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164318:
li	  r0, 0x1D
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164324:
lbz	  r3, 0xB0(r31)
li	  r5, 0
li	  r4, 1
extsb	  r3, r3
cmpw	  r5, r3
li	  r0, 0
bne	  branch_0x8016434C
lwz	  r3, 0x748(r31)
stb	  r4, 0xC(r3)
b	  branch_0x80164354

branch_0x8016434C:
lwz	  r3, 0x748(r31)
stb	  r0, 0xC(r3)

branch_0x80164354:
lbz	  r3, 0xB0(r31)
li	  r5, 1
extsb	  r3, r3
cmpw	  r5, r3
bne	  branch_0x80164374
lwz	  r3, 0x74C(r31)
stb	  r4, 0xC(r3)
b	  branch_0x8016437C

branch_0x80164374:
lwz	  r3, 0x74C(r31)
stb	  r0, 0xC(r3)

branch_0x8016437C:
lbz	  r3, 0xB0(r31)
li	  r5, 2
extsb	  r3, r3
cmpw	  r5, r3
bne	  branch_0x8016439C
lwz	  r3, 0x750(r31)
stb	  r4, 0xC(r3)
b	  branch_0x801643A4

branch_0x8016439C:
lwz	  r3, 0x750(r31)
stb	  r0, 0xC(r3)

branch_0x801643A4:
lwz	  r3, 0x2C(r31)
lis	  r4, 0x524F # 0x524F4F54
addi	  r4, r4, 0x4F54 # 0x524F4F54
lwz	  r12, 0(r3)
lwz	  r12, 0x24(r12)
mtlr	  r12
blrl
li	  r26, 0
stb	  r26, 0xCC(r3)
lwz	  r3, -0x70B8(r13)
bl	  moveToUp__13TCameraOptionFv #	TCameraOption::moveToUp((void))
lbz	  r4, 0xB0(r31)
lwz	  r3, -0x603C(r13)
extsb	  r4, r4
bl	  readBlock__12TCardManagerFUl # TCardManager::readBlock((ulong))
li	  r0, 4
stw	  r0, 0x14(r31)
stb	  r26, 0xB8(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801643F0:
cmpwi	  r28, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lbz	  r0, 0xB0(r31)
extsb	  r0, r0
slwi	  r0, r0, 4
add	  r3, r31, r0
lwz	  r3, 0x398(r3)
lwz	  r3, 0(r3)
lbz	  r0, 0xC(r3)
cmplwi	  r0, 0
beq	  branch_0x80164684
li	  r5, 0
stb	  r5, 0xC(r3)
addi	  r3, r1, 0x1E0+var_6C
lbz	  r0, 0xB0(r31)
extsb	  r0, r0
slwi	  r0, r0, 4
add	  r4, r31, r0
lwz	  r4, 0x39C(r4)
lwz	  r4, 0(r4)
stb	  r5, 0xC(r4)
lbz	  r0, 0xB0(r31)
extsb	  r0, r0
slwi	  r0, r0, 4
add	  r4, r31, r0
lwz	  r4, 0x3A0(r4)
lwz	  r4, 0(r4)
stb	  r5, 0xC(r4)
lbz	  r0, 0xB0(r31)
extsb	  r0, r0
slwi	  r0, r0, 4
add	  r4, r31, r0
lwz	  r4, 0x3A4(r4)
lwz	  r4, 0(r4)
stb	  r5, 0xC(r4)
lbz	  r0, 0xB0(r31)
extsb	  r0, r0
slwi	  r4, r0, 4
addi	  r4, r4, 0x368
add	  r4, r31, r4
bl	  copy__7JUTRectFRC7JUTRect # JUTRect::copy((JUTRect const &))
lbz	  r0, 0xB0(r31)
lfs	  f0, -0x49A4(r2)
extsb	  r0, r0
lwz	  r5, 0x1E0+var_6C(r1)
slwi	  r0, r0, 2
lwz	  r4, 0x1E0+var_64(r1)
add	  r3, r31, r0
lwz	  r27, 0x35C(r3)
subf	  r0, r5, r4
lfs	  f1, 0x30(r27)
fcmpo	  cr0, f1, f0
ble	  branch_0x801644CC
lfs	  f0, -0x49A0(r2)
b	  branch_0x801644D0

branch_0x801644CC:
lfs	  f0, -0x499C(r2)

branch_0x801644D0:
fadds	  f1, f1, f0
lfs	  f2, 0x2C(r27)
lfs	  f0, -0x49A4(r2)
fctiwz	  f1, f1
fcmpo	  cr0, f2, f0
stfd	  f1, 0x1E0+var_28(r1)
lwz	  r26, 0x1E0+var_28+4(r1)
ble	  branch_0x801644F8
lfs	  f0, -0x49A0(r2)
b	  branch_0x801644FC

branch_0x801644F8:
lfs	  f0, -0x499C(r2)

branch_0x801644FC:
fadds	  f0, f2, f0
xoris	  r3, r0, 0x8000
xoris	  r0, r26, 0x8000
stw	  r3, 0x1E0+var_30+4(r1)
lis	  r5, 0x4330
fctiwz	  f0, f0
stw	  r0, 0x1E0+var_40+4(r1)
lfd	  f3, -0x4998(r2)
addi	  r3, r27, 0x2C
stw	  r5, 0x1E0+var_30(r1)
stfd	  f0, 0x1E0+var_28(r1)
li	  r4, 0x1E
lfd	  f0, 0x1E0+var_30(r1)
lwz	  r25, 0x1E0+var_28+4(r1)
stw	  r5, 0x1E0+var_40(r1)
fsubs	  f1, f0, f3
xoris	  r0, r25, 0x8000
lfs	  f2, -0x49A4(r2)
stw	  r0, 0x1E0+var_38+4(r1)
lfd	  f0, 0x1E0+var_40(r1)
stw	  r5, 0x1E0+var_38(r1)
fsubs	  f4, f0, f3
lfd	  f0, 0x1E0+var_38(r1)
fsubs	  f3, f0, f3
bl	  setValue__8TCoord2DFlffff # TCoord2D::setValue((long,float,float,float,float))
lwz	  r3, 0(r27)
addi	  r4, r25, 0
addi	  r5, r26, 0
lwz	  r12, 0(r3)
lwz	  r12, 0x14(r12)
mtlr	  r12
blrl
li	  r0, 1
stb	  r0, 0x4F(r27)
lbz	  r0, 0xB0(r31)
lfs	  f0, -0x49A4(r2)
extsb	  r0, r0
lwz	  r5, 0x1E0+var_68(r1)
slwi	  r0, r0, 2
lwz	  r4, 0x1E0+var_60(r1)
add	  r3, r31, r0
lwz	  r27, 0x35C(r3)
subf	  r0, r5, r4
lfs	  f1, 0x18(r27)
fcmpo	  cr0, f1, f0
ble	  branch_0x801645BC
lfs	  f0, -0x49A0(r2)
b	  branch_0x801645C0

branch_0x801645BC:
lfs	  f0, -0x499C(r2)

branch_0x801645C0:
fadds	  f1, f1, f0
lfs	  f2, 0x14(r27)
lfs	  f0, -0x49A4(r2)
fctiwz	  f1, f1
fcmpo	  cr0, f2, f0
stfd	  f1, 0x1E0+var_40(r1)
lwz	  r26, 0x1E0+var_40+4(r1)
ble	  branch_0x801645E8
lfs	  f0, -0x49A0(r2)
b	  branch_0x801645EC

branch_0x801645E8:
lfs	  f0, -0x499C(r2)

branch_0x801645EC:
fadds	  f0, f2, f0
xoris	  r3, r0, 0x8000
xoris	  r0, r26, 0x8000
stw	  r3, 0x1E0+var_38+4(r1)
lis	  r5, 0x4330
fctiwz	  f0, f0
stw	  r0, 0x1E0+var_28+4(r1)
lfd	  f3, -0x4998(r2)
addi	  r3, r27, 0x14
stw	  r5, 0x1E0+var_38(r1)
stfd	  f0, 0x1E0+var_40(r1)
li	  r4, 0x1E
lfd	  f0, 0x1E0+var_38(r1)
lwz	  r25, 0x1E0+var_40+4(r1)
stw	  r5, 0x1E0+var_28(r1)
fsubs	  f2, f0, f3
xoris	  r0, r25, 0x8000
lfs	  f1, -0x49A4(r2)
stw	  r0, 0x1E0+var_30+4(r1)
lfd	  f0, 0x1E0+var_28(r1)
stw	  r5, 0x1E0+var_30(r1)
fsubs	  f4, f0, f3
lfd	  f0, 0x1E0+var_30(r1)
fsubs	  f3, f0, f3
bl	  setValue__8TCoord2DFlffff # TCoord2D::setValue((long,float,float,float,float))
lwz	  r3, 0(r27)
lwz	  r4, 4(r27)
lwz	  r12, 0(r3)
lwz	  r0, 8(r27)
add	  r4, r4, r25
lwz	  r12, 0xC(r12)
add	  r5, r0, r26
mtlr	  r12
blrl
li	  r0, 1
stb	  r0, 0x4E(r27)
li	  r0, 4
stw	  r0, 0x10(r31)

branch_0x80164684:
mr	  r3, r31
bl	  selectFunction__9TCardLoadFv # TCardLoad::selectFunction((void))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r28, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801646AC:		# jumptable 80163AD8 case 30
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x80164788
addi	  r3, r31, 0
li	  r4, 0x1F
li	  r5, 2
li	  r6, 1
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
mr	  r26, r3
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
extsb.	  r0, r26
bne	  branch_0x80164764
lbz	  r25, 0xB0(r31)
addi	  r28, r1, 0x1E0+var_BC
stw	  r28, 0x1E0+var_104(r1)
extsb	  r25, r25
lwz	  r24, 0x1E0+var_104(r1)
mr	  r3, r24
bl	  __ct__10JSUIosBaseFv # JSUIosBase::JSUIosBase((void))
lis	  r3, unk_803E0148@h
addi	  r0, r3, unk_803E0148@l
lis	  r3, unk_803E0120@h
stw	  r0, 0(r24)
addi	  r27, r3, unk_803E0120@l
lis	  r3, unk_803E01A0@h
stw	  r27, 0(r24)
addi	  r26, r3, unk_803E01A0@l
stw	  r26, 0(r24)
addi	  r3, r24, 0
li	  r4, 0
li	  r5, 0
bl	  setBuffer__21JSUMemoryOutputStreamFPvl # JSUMemoryOutputStream::setBuffer((void *,long))
lwz	  r3, -0x603C(r13)
mr	  r4, r28
bl	  getWriteStream__12TCardManagerFP21JSUMemoryOutputStream # TCardManager::getWriteStream((JSUMemoryOutputStream	*))
lwz	  r3, -0x603C(r13)
mr	  r4, r25
bl	  writeBlock__12TCardManagerFUl	# TCardManager::writeBlock((ulong))
stw	  r26, 0x1E0+var_BC(r1)
addi	  r3, r28, 0
li	  r4, 0
stw	  r27, 0x1E0+var_BC(r1)
bl	  __dt__15JSUOutputStreamFv # JSUOutputStream::~JSUOutputStream((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164764:
extsb	  r0, r26
cmpwi	  r0, 1
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
li	  r0, 2
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164788:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x801647A4
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x801647A4:
addi	  r3, r31, 0
li	  r4, 0
li	  r5, 0
li	  r6, 1
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801647D8:		# jumptable 80163AD8 case 31
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -1
beq	  branch_0x80164874
cmpwi	  r3, 0
bne	  branch_0x80164850
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164804
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164804:
addi	  r3, r31, 0
li	  r4, 0x20
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 5
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, gpMSound(r13)
li	  r4, 0x4810
bl	  gateCheck__6MSoundFUl	# MSound::gateCheck((ulong))
clrlwi.	  r0, r3, 24
beq	  def_80163AD8	# jumptable 80163AD8 default case
li	  r3, 0x4810
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl # MSoundSESystem::MSoundSE::startSoundSystemSE((ulong,ulong,JAISound **,ulong))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164850:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164864
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164864:
addi	  r3, r31, 0
li	  r4, 0x21
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164874:
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164884:		# jumptable 80163AD8 case 32
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForAnyKey__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKey((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801648AC:		# jumptable 80163AD8 case 33
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForAnyKeyBM__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKeyBM((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r4, r3, 0
addi	  r3, r31, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801648E0:		# jumptable 80163AD8 case 29
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x801649B4
addi	  r3, r31, 0
li	  r4, 0x1F
li	  r5, 2
li	  r6, 1
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
mr	  r26, r3
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
extsb.	  r0, r26
bne	  branch_0x80164998
lbz	  r25, 0xB0(r31)
addi	  r28, r1, 0x1E0+var_D0
stw	  r28, 0x1E0+var_108(r1)
extsb	  r25, r25
lwz	  r24, 0x1E0+var_108(r1)
mr	  r3, r24
bl	  __ct__10JSUIosBaseFv # JSUIosBase::JSUIosBase((void))
lis	  r3, unk_803E0148@h
addi	  r0, r3, unk_803E0148@l
lis	  r3, unk_803E0120@h
stw	  r0, 0(r24)
addi	  r27, r3, unk_803E0120@l
lis	  r3, unk_803E01A0@h
stw	  r27, 0(r24)
addi	  r26, r3, unk_803E01A0@l
stw	  r26, 0(r24)
addi	  r3, r24, 0
li	  r4, 0
li	  r5, 0
bl	  setBuffer__21JSUMemoryOutputStreamFPvl # JSUMemoryOutputStream::setBuffer((void *,long))
lwz	  r3, -0x603C(r13)
mr	  r4, r28
bl	  getWriteStream__12TCardManagerFP21JSUMemoryOutputStream # TCardManager::getWriteStream((JSUMemoryOutputStream	*))
lwz	  r3, -0x603C(r13)
mr	  r4, r25
bl	  writeBlock__12TCardManagerFUl	# TCardManager::writeBlock((ulong))
stw	  r26, 0x1E0+var_D0(r1)
addi	  r3, r28, 0
li	  r4, 0
stw	  r27, 0x1E0+var_D0(r1)
bl	  __dt__15JSUOutputStreamFv # JSUOutputStream::~JSUOutputStream((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164998:
extsb	  r0, r26
cmpwi	  r0, 1
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x801649B4:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x801649D0
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x801649D0:
addi	  r3, r31, 0
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164A04:		# jumptable 80163AD8 case 34
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x80164A6C
addi	  r3, r31, 0
li	  r4, 0x24
li	  r5, 2
li	  r6, 1
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
mr	  r26, r3
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
extsb.	  r0, r26
bne	  branch_0x80164A50
lbz	  r4, 0xB1(r31)
lwz	  r3, -0x603C(r13)
extsb	  r4, r4
bl	  readBlock__12TCardManagerFUl # TCardManager::readBlock((ulong))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164A50:
extsb	  r0, r26
cmpwi	  r0, 1
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164A6C:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x80164A88
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164A88:
addi	  r3, r31, 0
li	  r4, 0
li	  r5, 0
li	  r6, 1
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164ABC:		# jumptable 80163AD8 case 36
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -1
beq	  branch_0x80164B38
cmpwi	  r3, 0
bne	  branch_0x80164B14
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  def_80163AD8	# jumptable 80163AD8 default case
lbz	  r4, 0xB2(r31)
lwz	  r3, -0x603C(r13)
extsb	  r4, r4
bl	  writeBlock__12TCardManagerFUl	# TCardManager::writeBlock((ulong))
li	  r0, 0x25
stw	  r0, 0x1C(r31)
li	  r30, 0x25
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164B14:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164B28
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164B28:
addi	  r3, r31, 0
li	  r4, 0x26
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164B38:
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164B48:		# jumptable 80163AD8 case 37
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -1
beq	  branch_0x80164BE4
cmpwi	  r3, 0
bne	  branch_0x80164BC0
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164B74
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164B74:
addi	  r3, r31, 0
li	  r4, 0x27
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 5
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, gpMSound(r13)
li	  r4, 0x4810
bl	  gateCheck__6MSoundFUl	# MSound::gateCheck((ulong))
clrlwi.	  r0, r3, 24
beq	  def_80163AD8	# jumptable 80163AD8 default case
li	  r3, 0x4810
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl # MSoundSESystem::MSoundSE::startSoundSystemSE((ulong,ulong,JAISound **,ulong))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164BC0:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164BD4
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164BD4:
addi	  r3, r31, 0
li	  r4, 0x26
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164BE4:
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessageBM__9TCardLoadF10TEProgress # TCardLoad::drawMessageBM((TEProgress))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164BF4:		# jumptable 80163AD8 case 21
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x80164C40
addi	  r3, r31, 0
li	  r4, 0x24
li	  r5, 0x13
li	  r6, 1
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
mr	  r26, r3
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
extsb.	  r0, r26
bne	  def_80163AD8	# jumptable 80163AD8 default case
lbz	  r4, 0xB1(r31)
lwz	  r3, -0x603C(r13)
extsb	  r4, r4
bl	  readBlock__12TCardManagerFUl # TCardManager::readBlock((ulong))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164C40:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r0, 0x10(r31)
cmpwi	  r0, 3
bge	  branch_0x80164C5C
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164C5C:
addi	  r3, r31, 0
li	  r4, 0
li	  r5, 0
li	  r6, 1
bl	  waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi	# TCardLoad::waitForChoiceBM((TEProgress,TEProgress,int))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164C90:		# jumptable 80163AD8 case 39
lwz	  r3, -0x603C(r13)
bl	  probe__12TCardManagerFv # TCardManager::probe((void))
mr.	  r24, r3
bne	  branch_0x80164CC8
addi	  r3, r31, 0
li	  r4, 2
bl	  waitForAnyKeyBM__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKeyBM((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164CC8:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
li	  r4, 0
bl	  waitForAnyKeyBM__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKeyBM((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164CFC:		# jumptable 80163AD8 case 38
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
mr.	  r24, r3
bne	  branch_0x80164D38
addi	  r3, r31, 0
li	  r4, 0
bl	  waitForAnyKeyBM__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKeyBM((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164D38:
cmpwi	  r24, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
li	  r4, 0
bl	  waitForAnyKeyBM__9TCardLoadF10TEProgress # TCardLoad::waitForAnyKeyBM((TEProgress))
extsb	  r0, r3
cmpwi	  r0, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164D6C:		# jumptable 80163AD8 case 40
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r4, r3, 0
cmpwi	  r4, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
cmpwi	  r4, 0
bne	  branch_0x80164E08
addi	  r28, r1, 0x1E0+var_E4
stw	  r28, 0x1E0+var_10C(r1)
lwz	  r24, 0x1E0+var_10C(r1)
mr	  r3, r24
bl	  __ct__10JSUIosBaseFv # JSUIosBase::JSUIosBase((void))
lis	  r3, unk_803E0184@h
addi	  r0, r3, unk_803E0184@l
lis	  r3, unk_803E0160@h
stw	  r0, 0(r24)
addi	  r27, r3, unk_803E0160@l
lis	  r3, unk_803E01C8@h
stw	  r27, 0(r24)
addi	  r26, r3, unk_803E01C8@l
stw	  r26, 0(r24)
addi	  r3, r24, 0
li	  r4, 0
li	  r5, 0
bl	  setBuffer__20JSUMemoryInputStreamFPCvl # JSUMemoryInputStream::setBuffer((void const *,long))
lwz	  r3, -0x603C(r13)
mr	  r4, r28
bl	  getReadStream__12TCardManagerFP20JSUMemoryInputStream	# TCardManager::getReadStream((JSUMemoryInputStream *))
lwz	  r3, -0x6060(r13)
mr	  r4, r28
bl	  load__12TFlagManagerFR20JSUMemoryInputStream # TFlagManager::load((JSUMemoryInputStream &))
stw	  r26, 0x1E0+var_E4(r1)
addi	  r3, r28, 0
li	  r4, 0
stw	  r27, 0x1E0+var_E4(r1)
bl	  __dt__14JSUInputStreamFv # JSUInputStream::~JSUInputStream((void))
li	  r0, 0x29
stw	  r0, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164E08:
mr	  r3, r31
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164E18:		# jumptable 80163AD8 case 41
lwz	  r3, -0x6060(r13)
lis	  r4, 4
bl	  getFlag__12TFlagManagerCFUl #	TFlagManager::getFlag(const(ulong))
cmpwi	  r3, 1
bge	  branch_0x80164E40
lwz	  r3, gpMarDirector(r13)
li	  r4, 0
li	  r5, 0
bl	  setNextStage__12TMarDirectorFUsPQ26JDrama6TActor # TMarDirector::setNextStage((ushort,JDrama::TActor *))
b	  branch_0x80164E50

branch_0x80164E40:
lwz	  r3, gpMarDirector(r13)
li	  r4, 1
li	  r5, 0
bl	  setNextStage__12TMarDirectorFUsPQ26JDrama6TActor # TMarDirector::setNextStage((ushort,JDrama::TActor *))

branch_0x80164E50:
lwz	  r3, -0x603C(r13)
bl	  unmount__12TCardManagerFv # TCardManager::unmount((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164E5C:		# jumptable 80163AD8 case 50
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r4, r3, 0
cmpwi	  r4, -1
beq	  def_80163AD8	# jumptable 80163AD8 default case
cmpwi	  r4, 0
bne	  branch_0x80164F08
addi	  r26, r1, 0x1E0+var_80
stw	  r26, 0x1E0+var_E8(r1)
lis	  r4, unk_803AF0F4@ha
addi	  r0, r4, unk_803AF0F4@l
lwz	  r3, 0x1E0+var_E8(r1)
lis	  r5, unk_803E0120@h
addi	  r27, r5, unk_803E0120@l
stw	  r0, 0(r3)
li	  r0, 0
lis	  r4, unk_803E01A0@h
lis	  r6, unk_803E0148@h
stb	  r0, 4(r3)
addi	  r0, r6, unk_803E0148@l
stw	  r0, 0(r3)
addi	  r28, r4, unk_803E01A0@l
li	  r4, 0
stw	  r27, 0(r3)
li	  r5, 0
stw	  r28, 0(r3)
bl	  setBuffer__21JSUMemoryOutputStreamFPvl # JSUMemoryOutputStream::setBuffer((void *,long))
lwz	  r3, -0x603C(r13)
mr	  r4, r26
bl	  getOptionWriteStream__12TCardManagerFP21JSUMemoryOutputStream	# TCardManager::getOptionWriteStream((JSUMemoryOutputStream *))
lwz	  r3, -0x6060(r13)
mr	  r4, r26
bl	  saveOption__12TFlagManagerFR21JSUMemoryOutputStream #	TFlagManager::saveOption((JSUMemoryOutputStream	&))
lwz	  r3, -0x603C(r13)
bl	  writeOptionBlock__12TCardManagerFv # TCardManager::writeOptionBlock((void))
li	  r0, 0x2F
stw	  r0, 0x1C(r31)
addi	  r3, r26, 0
li	  r4, 0
stw	  r28, 0x1E0+var_80(r1)
stw	  r27, 0x1E0+var_80(r1)
bl	  __dt__15JSUOutputStreamFv # JSUOutputStream::~JSUOutputStream((void))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164F08:
mr	  r3, r31
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164F18:		# jumptable 80163AD8 case 47
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
addi	  r24, r3, 0
cmpwi	  r24, -1
beq	  branch_0x80164FD8
cmpwi	  r24, 0
bne	  branch_0x80164F98
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164F48
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164F48:
addi	  r3, r31, 0
li	  r4, 2
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 5
bne	  def_80163AD8	# jumptable 80163AD8 default case
lwz	  r3, gpMSound(r13)
li	  r4, 0x4810
bl	  gateCheck__6MSoundFUl	# MSound::gateCheck((ulong))
clrlwi.	  r0, r3, 24
beq	  branch_0x80164F88
li	  r3, 0x4810
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl # MSoundSESystem::MSoundSE::startSoundSystemSE((ulong,ulong,JAISound **,ulong))

branch_0x80164F88:
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164F98:
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))
lwz	  r0, 0x10(r31)
cmpwi	  r0, 2
bne	  branch_0x80164FB8
li	  r0, 3
stw	  r0, 0x10(r31)

branch_0x80164FB8:
lwz	  r0, 0x10(r31)
cmpwi	  r0, 5
bne	  def_80163AD8	# jumptable 80163AD8 default case
addi	  r3, r31, 0
addi	  r4, r24, 0
bl	  changeMode__9TCardLoadFl # TCardLoad::changeMode((long))
stw	  r3, 0x1C(r31)
b	  def_80163AD8	# jumptable 80163AD8 default case

branch_0x80164FD8:
addi	  r3, r31, 0
li	  r4, 0
bl	  drawMessage__9TCardLoadF10TEProgress # TCardLoad::drawMessage((TEProgress))

def_80163AD8:		# jumptable 80163AD8 default case
branch_0x80164fe4:
    lwz     r0, 0x1c(r31)
    cmpw    r30, r0
    beq-    branch_0x80165160
    li      r3, 0x0
    stw     r3, 0x24(r31)
    cmpwi   r30, 0x13
    lwz     r0, 0x1c(r31)
    stw     r0, 0x20(r31)
    stw     r3, 0x10(r31)
    sth     r3, 0xb4(r31)
    beq-    branch_0x80165074
    bge-    branch_0x80165048
    cmpwi   r30, 0xe
    bge-    branch_0x8016503c
    cmpwi   r30, 0x6
    bge-    branch_0x80165030
    cmpwi   r30, 0x3
    bge-    branch_0x80165074
    b       branch_0x8016508c

branch_0x80165030:
    cmpwi   r30, 0xc
    bge-    branch_0x80165074
    b       branch_0x8016508c

branch_0x8016503c:
    cmpwi   r30, 0x10
    beq-    branch_0x80165074
    b       branch_0x8016508c

branch_0x80165048:
    cmpwi   r30, 0x2d
    beq-    branch_0x80165074
    bge-    branch_0x80165060
    cmpwi   r30, 0x1c
    beq-    branch_0x8016506c
    b       branch_0x8016508c

branch_0x80165060:
    cmpwi   r30, 0x35
    beq-    branch_0x80165074
    b       branch_0x8016508c

branch_0x8016506c:
    lwz     r3, 0x2a4(r31)
    bl      offCollision__17TMapObjOptionWallFv
branch_0x80165074:
    lwz     r4, 0x38(r31)
    li      r0, 0x0
    lhz     r3, 0xe2(r4)
    ori     r3, r3, 0x1
    sth     r3, 0xe2(r4)
    stb     r0, 0x295(r31)
branch_0x8016508c:
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x13
    beq-    branch_0x80165118
    bge-    branch_0x801650d0
    cmpwi   r0, 0xe
    bge-    branch_0x801650c4
    cmpwi   r0, 0x6
    bge-    branch_0x801650b8
    cmpwi   r0, 0x3
    bge-    branch_0x80165118
    b       branch_0x80165130

branch_0x801650b8:
    cmpwi   r0, 0xc
    bge-    branch_0x80165118
    b       branch_0x80165130

branch_0x801650c4:
    cmpwi   r0, 0x10
    beq-    branch_0x80165118
    b       branch_0x80165130

branch_0x801650d0:
    cmpwi   r0, 0x2d
    beq-    branch_0x80165118
    bge-    branch_0x801650e8
    cmpwi   r0, 0x1c
    beq-    branch_0x801650f4
    b       branch_0x80165130

branch_0x801650e8:
    cmpwi   r0, 0x35
    beq-    branch_0x80165118
    b       branch_0x80165130

branch_0x801650f4:
    lwz     r3, 0x2a4(r31)
    bl      onCollision__17TMapObjOptionWallFv
    li      r0, 0x0
    stb     r0, 0x295(r31)
    lwz     r3, 0x38(r31)
    lhz     r0, 0xe2(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0xe2(r3)
    b       branch_0x80165130

branch_0x80165118:
    li      r0, 0x1
    stb     r0, 0x295(r31)
    lwz     r3, 0x38(r31)
    lhz     r0, 0xe2(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0xe2(r3)
branch_0x80165130:
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x13
    bne-    branch_0x80165160
    li      r24, 0x0
    li      r28, 0x0
branch_0x80165144:
    addi    r0, r28, 0x298
    lwzx    r3, r31, r0
    bl      makeBlockNormal__14TFileLoadBlockFv
    addi    r24, r24, 0x1
    cmpwi   r24, 0x3
    addi    r28, r28, 0x4
    blt+    branch_0x80165144
branch_0x80165160:
    lwz     r0, 0x10(r31)
    cmpw    r29, r0
    beq-    branch_0x801651d0
    cmpwi   r29, 0x0
    bne-    branch_0x8016519c
    lwz     r3, gpMSound(r13)
    li      r4, 0x4819
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016519c
    li      r3, 0x4819
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8016519c:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x801651d0
    lwz     r3, gpMSound(r13)
    li      r4, 0x481a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801651d0
    li      r3, 0x481a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801651d0:
    lmw     r24, 0x1c0(sp)
    lwz     r0, 0x1e4(sp)
    addi    sp, sp, 0x1e0
    mtlr    r0
    blr


.globl setSelected__9TCardLoadFUc
setSelected__9TCardLoadFUc: # 0x801651e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80165240
    lwz     r3, gpMSound(r13)
    li      r4, 0x4813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80165234
    li      r3, 0x4813
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80165234:
    stb     r31, 0xb0(r30)
    mr      r3, r30
    bl      setupScoreScreen__9TCardLoadFv
branch_0x80165240:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl selectFunction__9TCardLoadFv
selectFunction__9TCardLoadFv: # 0x80165258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x498(sp)
    stfd    f31, 0x490(sp)
    stfd    f30, 0x488(sp)
    stfd    f29, 0x480(sp)
    stmw    r20, 0x450(sp)
    mr      r31, r3
    li      r30, -0x1
    lwz     r0, 0x10(r3)
    lbz     r29, 0xb6(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x801665a0
    bge-    branch_0x801652a8
    cmpwi   r0, 0x1
    beq-    branch_0x801656b8
    bge-    branch_0x80165c4c
    cmpwi   r0, 0x0
    bge-    branch_0x801652b8
    b       branch_0x80166b84

branch_0x801652a8:
    cmpwi   r0, 0x5
    beq-    branch_0x80166b60
    bge-    branch_0x80166b84
    b       branch_0x80166a3c

branch_0x801652b8:
    lbz     r0, 0xb0(r31)
    li      r26, 0x1
    li      r28, 0x0
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0x35c(r3)
    addi    r3, sp, 0x378
    lwz     r4, 0x0(r4)
    stb     r26, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x398(r4)
    lwz     r4, 0x0(r4)
    stb     r28, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x39c(r4)
    lwz     r4, 0x0(r4)
    stb     r28, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x3a0(r4)
    lwz     r4, 0x0(r4)
    stb     r28, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x3a4(r4)
    lwz     r4, 0x0(r4)
    stb     r28, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r4, r0, 4
    addi    r4, r4, 0x368
    add     r4, r31, r4
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r3, 0x378(sp)
    lis     r27, 0x4330
    lwz     r0, 0x380(sp)
    lwz     r5, 0x37c(sp)
    subf    r21, r3, r0
    lwz     r0, 0x384(sp)
    xoris   r3, r21, 0x8000
    lbz     r4, 0xb0(r31)
    subf    r0, r5, r0
    stw     r3, 0x44c(sp)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x4998(rtoc)
    stw     r0, 0x444(sp)
    extsb   r0, r4
    slwi    r0, r0, 2
    lfs     f4, -0x49a4(rtoc)
    stw     r3, 0x43c(sp)
    add     r3, r31, r0
    stw     r27, 0x448(sp)
    li      r4, 0x1e
    lwz     r20, 0x35c(r3)
    stw     r27, 0x440(sp)
    lfd     f1, 0x448(sp)
    addi    r3, r20, 0x2c
    stw     r27, 0x438(sp)
    lfd     f2, 0x440(sp)
    fsubs   f1, f1, f3
    lfd     f0, 0x438(sp)
    fsubs   f2, f2, f3
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r20)
    addi    r4, r21, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r26, 0x4f(r20)
    li      r4, 0x1e
    lwz     r3, 0x37c(sp)
    lwz     r0, 0x384(sp)
    lfs     f1, -0x49a4(rtoc)
    subf    r21, r3, r0
    lbz     r3, 0xb0(r31)
    xoris   r0, r21, 0x8000
    lfd     f4, -0x4998(rtoc)
    stw     r0, 0x434(sp)
    extsb   r0, r3
    slwi    r0, r0, 2
    fmr     f2, f1
    stw     r27, 0x430(sp)
    add     r3, r31, r0
    fmr     f3, f1
    lfd     f0, 0x430(sp)
    lwz     r20, 0x35c(r3)
    fsubs   f4, f0, f4
    addi    r3, r20, 0x14
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r20)
    lwz     r0, 0x8(r20)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r20)
    add     r5, r0, r21
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stb     r26, 0x4e(r20)
    lwz     r3, 0x2c4(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801656ac
    lfd     f30, -0x4998(rtoc)
    li      r22, 0x0
    lfs     f29, -0x49a0(rtoc)
branch_0x80165498:
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    cmpw    r22, r0
    bne-    branch_0x8016569c
    add     r5, r31, r28
    addi    r7, r5, 0x2c4
    lwz     r3, 0x2c4(r5)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8016569c
    lwz     r3, 0x2ec(r5)
    li      r0, 0x0
    li      r26, 0x1
    stb     r0, 0xc(r3)
    li      r4, 0x1e
    lwz     r3, 0x2f8(r5)
    stb     r0, 0xc(r3)
    lwz     r3, 0x31c(r5)
    stb     r0, 0xc(r3)
    lwz     r3, 0x0(r7)
    lwz     r3, 0x0(r3)
    stb     r26, 0xc(r3)
    lwz     r6, 0x2d4(r31)
    lwz     r0, 0x2dc(r31)
    lwz     r5, 0x2d0(r31)
    lwz     r3, 0x2d8(r31)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r20, r5, r3
    xoris   r3, r20, 0x8000
    stw     r0, 0x43c(sp)
    lwz     r29, 0x0(r7)
    fmr     f4, f3
    stw     r3, 0x434(sp)
    addi    r3, r29, 0x2c
    stw     r27, 0x430(sp)
    stw     r27, 0x438(sp)
    lfd     f1, 0x430(sp)
    lfd     f0, 0x438(sp)
    fsubs   f1, f1, f30
    fsubs   f2, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r26, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x1e
    lwz     r5, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r6, 0x4(r29)
    subf    r7, r5, r0
    lwz     r0, 0xc(r29)
    subf    r5, r25, r7
    subf    r6, r6, r0
    subf    r0, r20, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x444(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x42c(sp)
    stw     r5, 0x41c(sp)
    stw     r0, 0x40c(sp)
    stw     r27, 0x440(sp)
    stw     r27, 0x428(sp)
    lfd     f1, 0x440(sp)
    stw     r27, 0x418(sp)
    lfd     f0, 0x428(sp)
    fsubs   f3, f1, f30
    stw     r27, 0x408(sp)
    lfd     f1, 0x418(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x408(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f3, f29, f3
    fmuls   f2, f29, f2
    fmuls   f1, f29, f1
    fmuls   f0, f29, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x448(sp)
    stfd    f2, 0x420(sp)
    lwz     r24, 0x44c(sp)
    stfd    f1, 0x410(sp)
    lwz     r23, 0x424(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x400(sp)
    lwz     r6, 0x414(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x404(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3ec(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3fc(sp)
    stw     r6, 0x3f4(sp)
    stw     r0, 0x3e4(sp)
    stw     r27, 0x3f8(sp)
    stw     r27, 0x3f0(sp)
    lfd     f1, 0x3f8(sp)
    stw     r27, 0x3e8(sp)
    lfd     f0, 0x3f0(sp)
    fsubs   f1, f1, f30
    stw     r27, 0x3e0(sp)
    lfd     f3, 0x3e8(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x3e0(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r26, 0x4e(r29)
branch_0x8016569c:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    addi    r28, r28, 0x4
    blt+    branch_0x80165498
branch_0x801656ac:
    li      r0, 0x1
    stw     r0, 0x10(r31)
    b       branch_0x80166b84

branch_0x801656b8:
    li      r21, 0x1
    li      r22, 0x0
    li      r20, 0x0
branch_0x801656c4:
    addi    r0, r20, 0x2c4
    lwzx    r3, r31, r0
    bl      update__7TExPaneFv
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    and     r21, r21, r3
    addi    r20, r20, 0x4
    blt+    branch_0x801656c4
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x35c(r3)
    bl      update__7TExPaneFv
    and     r21, r21, r3
    clrlwi. r0, r21, 24
    beq-    branch_0x80166b84
    lfs     f29, -0x49a4(rtoc)
    li      r22, 0x0
    lfd     f31, -0x4998(rtoc)
    li      r21, 0x0
    lfs     f30, -0x49a0(rtoc)
    li      r20, 0x0
    lis     r27, 0x4330
branch_0x80165724:
    lbz     r3, 0xb0(r31)
    li      r0, 0x1
    extsb   r3, r3
    slwi    r3, r3, 4
    add     r3, r3, r20
    addi    r3, r3, 0x398
    lwzx    r3, r31, r3
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lbz     r4, 0xb0(r31)
    extsb   r4, r4
    slwi    r0, r4, 4
    add     r3, r0, r20
    addi    r0, r3, 0x398
    lwzx    r29, r31, r0
    slwi    r0, r4, 6
    add     r3, r0, r21
    lfs     f1, 0x18(r29)
    addi    r6, r3, 0x3c8
    add     r6, r31, r6
    fcmpo   cr0, f1, f29
    lwz     r5, 0x4(r6)
    lwz     r4, 0xc(r6)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x8(r6)
    subf    r28, r5, r4
    subf    r25, r3, r0
    ble-    branch_0x8016579c
    lfs     f0, -0x49a0(rtoc)
    b       branch_0x801657a0

branch_0x8016579c:
    lfs     f0, -0x499c(rtoc)
branch_0x801657a0:
    fadds   f0, f1, f0
    lfs     f1, 0x14(r29)
    fcmpo   cr0, f1, f29
    fctiwz  f0, f0
    stfd    f0, 0x3e0(sp)
    lwz     r24, 0x3e4(sp)
    ble-    branch_0x801657c4
    lfs     f0, -0x49a0(rtoc)
    b       branch_0x801657c8

branch_0x801657c4:
    lfs     f0, -0x499c(rtoc)
branch_0x801657c8:
    fadds   f0, f1, f0
    xoris   r0, r25, 0x8000
    xoris   r3, r28, 0x8000
    stw     r0, 0x3ec(sp)
    xoris   r0, r24, 0x8000
    fctiwz  f0, f0
    stw     r3, 0x3f4(sp)
    addi    r3, r29, 0x2c
    stw     r0, 0x404(sp)
    li      r4, 0x1
    stfd    f0, 0x3e0(sp)
    lwz     r23, 0x3e4(sp)
    stw     r27, 0x3e8(sp)
    xoris   r0, r23, 0x8000
    stw     r0, 0x3fc(sp)
    lfd     f0, 0x3e8(sp)
    stw     r27, 0x3f0(sp)
    fsubs   f1, f0, f31
    stw     r27, 0x3f8(sp)
    lfd     f0, 0x3f0(sp)
    stw     r27, 0x400(sp)
    lfd     f3, 0x3f8(sp)
    fsubs   f2, f0, f31
    lfd     f0, 0x400(sp)
    fsubs   f3, f3, f31
    fsubs   f4, f0, f31
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    addi    r4, r23, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x1
    lwz     r6, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r5, 0x4(r29)
    subf    r8, r6, r0
    lwz     r0, 0xc(r29)
    subf    r7, r24, r8
    subf    r0, r5, r0
    subf    r6, r23, r0
    subf    r5, r28, r8
    subf    r0, r25, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x40c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x41c(sp)
    stw     r5, 0x42c(sp)
    stw     r0, 0x43c(sp)
    stw     r27, 0x408(sp)
    stw     r27, 0x418(sp)
    lfd     f1, 0x408(sp)
    stw     r27, 0x428(sp)
    lfd     f0, 0x418(sp)
    fsubs   f3, f1, f31
    stw     r27, 0x438(sp)
    lfd     f1, 0x428(sp)
    fsubs   f2, f0, f31
    lfd     f0, 0x438(sp)
    fsubs   f1, f1, f31
    fsubs   f0, f0, f31
    fmuls   f3, f30, f3
    fmuls   f2, f30, f2
    fmuls   f1, f30, f1
    fmuls   f0, f30, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x410(sp)
    stfd    f2, 0x420(sp)
    lwz     r24, 0x414(sp)
    stfd    f1, 0x430(sp)
    lwz     r23, 0x424(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x440(sp)
    lwz     r6, 0x434(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x444(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3d4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x44c(sp)
    stw     r6, 0x3dc(sp)
    stw     r0, 0x3cc(sp)
    stw     r27, 0x448(sp)
    stw     r27, 0x3d8(sp)
    lfd     f1, 0x448(sp)
    stw     r27, 0x3d0(sp)
    lfd     f0, 0x3d8(sp)
    fsubs   f1, f1, f31
    stw     r27, 0x3c8(sp)
    lfd     f3, 0x3d0(sp)
    fsubs   f2, f0, f31
    lfd     f0, 0x3c8(sp)
    fsubs   f3, f3, f31
    fsubs   f4, f0, f31
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r26, 0x4e(r29)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r3, r0, r20
    addi    r0, r3, 0x398
    lwzx    r3, r31, r0
    bl      update__7TExPaneFv
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x58
    lwzx    r0, r31, r0
    cmplwi  r0, 0x0
    bne-    branch_0x80165a04
    cmpwi   r22, 0x0
    ble-    branch_0x80165a30
    li      r0, -0x81
    stw     r0, 0x334(sp)
    lbz     r3, 0xb0(r31)
    lwz     r0, 0x334(sp)
    extsb   r3, r3
    slwi    r3, r3, 4
    add     r3, r3, r20
    addi    r3, r3, 0x398
    lwzx    r3, r31, r3
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x80165a30

branch_0x80165a04:
    li      r0, -0x1
    stw     r0, 0x32c(sp)
    lbz     r3, 0xb0(r31)
    lwz     r0, 0x32c(sp)
    extsb   r3, r3
    slwi    r3, r3, 4
    add     r3, r3, r20
    addi    r3, r3, 0x398
    lwzx    r3, r31, r3
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
branch_0x80165a30:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x4
    addi    r21, r21, 0x10
    addi    r20, r20, 0x4
    blt+    branch_0x80165724
    lis     r3, 0xff
    addi    r0, r3, 0xff
    stw     r0, 0x324(sp)
    lis     r3, 0x6666
    addi    r26, r3, 0x6667
    lbz     r0, 0xb0(r31)
    li      r22, 0x0
    lbz     r3, 0xb6(r31)
    li      r25, 0x0
    extsb   r0, r0
    slwi    r4, r0, 4
    lwz     r0, 0x324(sp)
    extsb   r3, r3
    add     r4, r31, r4
    slwi    r3, r3, 2
    add     r3, r4, r3
    lwz     r3, 0x398(r3)
    li      r27, 0x0
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
branch_0x80165a94:
    add     r4, r31, r27
    lwz     r0, 0x40(r4)
    cmpwi   r0, 0x1
    bne-    branch_0x80165b14
    lwz     r21, 0x53c(r31)
    li      r4, 0x0
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r20, r3, 0x0
    addi    r3, r21, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r20, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r21, 0x540(r31)
    li      r4, 0x0
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r20, r3, 0x0
    addi    r3, r21, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r20, 0x0
    li      r5, 0x14
    bl      strncpy
    add     r5, r31, r25
    lwz     r3, 0x2ec(r5)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x2f8(r5)
    stb     r0, 0xc(r3)
    b       branch_0x80165c24

branch_0x80165b14:
    lwz     r0, 0x58(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80165b90
    lwz     r21, 0x53c(r31)
    li      r4, 0x1b
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r20, r3, 0x0
    addi    r3, r21, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r20, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r21, 0x540(r31)
    li      r4, 0x1b
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r20, r3, 0x0
    addi    r3, r21, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r20, 0x0
    li      r5, 0x14
    bl      strncpy
    add     r5, r31, r25
    lwz     r3, 0x2ec(r5)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x2f8(r5)
    stb     r0, 0xc(r3)
    b       branch_0x80165c24

branch_0x80165b90:
    add     r23, r31, r25
    lwz     r3, 0x2ec(r23)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lhz     r24, 0x5c(r4)
    cmplwi  r24, 0x64
    bge-    branch_0x80165c18
    mulhw   r20, r26, r24
    lwz     r3, 0x304(r23)
    srawi   r0, r20, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r31, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r20, 2
    lwz     r3, 0x310(r23)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r24
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r31, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x2f8(r23)
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x80165c24

branch_0x80165c18:
    lwz     r3, 0x31c(r23)
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80165c24:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    addi    r25, r25, 0x4
    addi    r27, r27, 0x20
    blt+    branch_0x80165a94
    li      r0, 0x0
    stw     r0, 0xc4(r31)
    li      r0, 0x2
    stw     r0, 0x10(r31)
    b       branch_0x80166b84

branch_0x80165c4c:
    lwz     r3, 0x38(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x80165cc4
    extsb.  r0, r29
    bne-    branch_0x80165c90
    lwz     r3, gpMSound(r13)
    li      r4, 0x481b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80165cb8
    li      r3, 0x481b
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80165cb8

branch_0x80165c90:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80165cb8
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80165cb8:
    li      r0, 0x3
    stw     r0, 0x10(r31)
    b       branch_0x80165da8

branch_0x80165cc4:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x80165d18
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x58
    lwzx    r0, r31, r0
    cmplwi  r0, 0x0
    bne-    branch_0x80165cf4
    li      r0, 0x0
    stb     r0, 0xb6(r31)
    b       branch_0x80165cfc

branch_0x80165cf4:
    addi    r0, r29, 0x1
    stb     r0, 0xb6(r31)
branch_0x80165cfc:
    lbz     r0, 0xb6(r31)
    extsb   r0, r0
    cmpwi   r0, 0x3
    ble-    branch_0x80165da8
    li      r0, 0x0
    stb     r0, 0xb6(r31)
    b       branch_0x80165da8

branch_0x80165d18:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80165d68
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x58
    lwzx    r0, r31, r0
    cmplwi  r0, 0x0
    bne-    branch_0x80165d48
    li      r0, 0x0
    stb     r0, 0xb6(r31)
    b       branch_0x80165d50

branch_0x80165d48:
    subi    r0, r29, 0x1
    stb     r0, 0xb6(r31)
branch_0x80165d50:
    lbz     r0, 0xb6(r31)
    extsb.  r0, r0
    bge-    branch_0x80165da8
    li      r0, 0x3
    stb     r0, 0xb6(r31)
    b       branch_0x80165da8

branch_0x80165d68:
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x80165da8
    li      r0, -0x1
    stb     r0, 0xb6(r31)
    li      r4, 0x481d
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80165da0
    li      r3, 0x481d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80165da0:
    li      r0, 0x3
    stw     r0, 0x10(r31)
branch_0x80165da8:
    lbz     r0, 0xb6(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x8016647c
    lwz     r3, 0xc4(r31)
    cmpwi   r3, 0x4
    bne-    branch_0x80166148
    lbz     r5, 0xb0(r31)
    slwi    r3, r0, 4
    lis     r27, 0x4330
    lfd     f5, -0x4998(rtoc)
    extsb   r5, r5
    slwi    r4, r5, 6
    lfs     f2, -0x4990(rtoc)
    add     r3, r4, r3
    addi    r4, r3, 0x3c8
    add     r4, r31, r4
    slwi    r3, r5, 4
    lwz     r7, 0x4(r4)
    lwz     r6, 0xc(r4)
    add     r3, r31, r3
    lwz     r5, 0x0(r4)
    slwi    r0, r0, 2
    lwz     r4, 0x8(r4)
    subf    r23, r7, r6
    subf    r22, r5, r4
    xoris   r6, r23, 0x8000
    xoris   r5, r22, 0x8000
    stw     r6, 0x3cc(sp)
    add     r3, r3, r0
    stw     r5, 0x3dc(sp)
    li      r4, 0x28
    lwz     r25, 0x398(r3)
    stw     r27, 0x3c8(sp)
    addi    r3, r25, 0x2c
    stw     r27, 0x3d8(sp)
    lfd     f1, 0x3c8(sp)
    lfd     f0, 0x3d8(sp)
    fsubs   f1, f1, f5
    stw     r5, 0x3fc(sp)
    fsubs   f0, f0, f5
    stw     r6, 0x404(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x3f8(sp)
    fctiwz  f3, f1
    stw     r27, 0x400(sp)
    fctiwz  f2, f0
    lfd     f0, 0x400(sp)
    stfd    f3, 0x3d0(sp)
    lfd     f1, 0x3f8(sp)
    fsubs   f4, f0, f5
    stfd    f2, 0x3e0(sp)
    lwz     r24, 0x3d4(sp)
    fsubs   f3, f1, f5
    lwz     r28, 0x3e4(sp)
    xoris   r0, r24, 0x8000
    xoris   r5, r28, 0x8000
    stw     r0, 0x3f4(sp)
    stw     r5, 0x3ec(sp)
    stw     r27, 0x3e8(sp)
    stw     r27, 0x3f0(sp)
    lfd     f1, 0x3e8(sp)
    lfd     f0, 0x3f0(sp)
    fsubs   f1, f1, f5
    fsubs   f2, f0, f5
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r25)
    addi    r3, r25, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r25)
    lwz     r0, 0x10(r25)
    lwz     r5, 0x4(r25)
    subf    r8, r6, r0
    lwz     r0, 0xc(r25)
    subf    r7, r23, r8
    lfd     f4, -0x4998(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r6, r22, r0
    subf    r5, r24, r8
    subf    r0, r28, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x40c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x41c(sp)
    stw     r5, 0x42c(sp)
    stw     r0, 0x43c(sp)
    stw     r27, 0x408(sp)
    stw     r27, 0x418(sp)
    lfd     f1, 0x408(sp)
    stw     r27, 0x428(sp)
    lfd     f0, 0x418(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x438(sp)
    lfd     f1, 0x428(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x438(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x410(sp)
    stfd    f2, 0x420(sp)
    lwz     r21, 0x414(sp)
    stfd    f1, 0x430(sp)
    lwz     r20, 0x424(sp)
    xoris   r0, r21, 0x8000
    stfd    f0, 0x440(sp)
    lwz     r6, 0x434(sp)
    xoris   r5, r20, 0x8000
    lwz     r7, 0x444(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3bc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x44c(sp)
    stw     r6, 0x3c4(sp)
    stw     r0, 0x3b4(sp)
    stw     r27, 0x448(sp)
    stw     r27, 0x3c0(sp)
    lfd     f1, 0x448(sp)
    stw     r27, 0x3b8(sp)
    lfd     f0, 0x3c0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3b0(sp)
    lfd     f3, 0x3b8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3b0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r25)
    add     r4, r4, r20
    lwz     r12, 0xc(r12)
    add     r5, r0, r21
    mtlr    r12
    blrl
    stb     r26, 0x4e(r25)
    addi    r3, sp, 0x364
    lbz     r4, 0xb0(r31)
    lbz     r0, 0xb6(r31)
    extsb   r4, r4
    slwi    r4, r4, 4
    extsb   r0, r0
    add     r4, r31, r4
    slwi    r0, r0, 2
    add     r4, r4, r0
    lwz     r4, 0x398(r4)
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x364(sp)
    addi    r4, sp, 0x358
    lwz     r0, 0x36c(sp)
    li      r5, 0x1fa
    lwz     r8, 0x368(sp)
    subf    r3, r6, r0
    lwz     r0, 0x370(sp)
    xoris   r7, r3, 0x8000
    lfd     f4, -0x4998(rtoc)
    xoris   r6, r6, 0x8000
    stw     r7, 0x3ac(sp)
    subf    r0, r8, r0
    lfs     f5, -0x49a0(rtoc)
    stw     r6, 0x3a4(sp)
    xoris   r7, r0, 0x8000
    xoris   r0, r8, 0x8000
    lfs     f0, -0x49a4(rtoc)
    stw     r7, 0x39c(sp)
    lwz     r3, -0x5fdc(r13)
    li      r6, 0x0
    stw     r27, 0x3a8(sp)
    li      r7, 0x0
    stw     r27, 0x3a0(sp)
    lfd     f2, 0x3a8(sp)
    lfd     f1, 0x3a0(sp)
    stw     r0, 0x394(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r27, 0x398(sp)
    fmadds  f3, f5, f2, f1
    stw     r27, 0x390(sp)
    lfd     f2, 0x398(sp)
    lfd     f1, 0x390(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x358(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x35c(sp)
    stfs    f0, 0x360(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r4, -0x5fdc(r13)
    li      r3, 0x0
    li      r0, 0x888
    lwz     r4, 0xc8(r4)
    stw     r4, 0xac(r31)
    lwz     r5, 0xac(r31)
    sth     r3, 0x16c(r5)
    addi    r6, r5, 0x124
    sth     r3, 0x16e(r5)
    sth     r0, 0x170(r5)
    lha     r3, 0x16c(r5)
    lha     r4, 0x16e(r5)
    lha     r5, 0x170(r5)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lwz     r3, 0xac(r31)
    lfs     f0, -0x498c(rtoc)
    stfs    f0, 0x190(r3)
    lfs     f0, -0x4988(rtoc)
    stfs    f0, 0x194(r3)
    lfs     f0, -0x4984(rtoc)
    stfs    f0, 0x198(r3)
    b       branch_0x801663a8

branch_0x80166148:
    cmpwi   r3, 0x2c
    bne-    branch_0x801663a8
    lbz     r5, 0xb0(r31)
    slwi    r3, r0, 4
    lis     r27, 0x4330
    lfd     f4, -0x4998(rtoc)
    extsb   r5, r5
    slwi    r4, r5, 6
    lfs     f2, -0x4990(rtoc)
    add     r3, r4, r3
    addi    r4, r3, 0x3c8
    add     r4, r31, r4
    lwz     r7, 0x4(r4)
    slwi    r3, r5, 4
    lwz     r6, 0xc(r4)
    add     r3, r31, r3
    lwz     r5, 0x0(r4)
    lwz     r4, 0x8(r4)
    subf    r26, r7, r6
    xoris   r6, r26, 0x8000
    subf    r22, r5, r4
    stw     r6, 0x394(sp)
    xoris   r5, r22, 0x8000
    stw     r5, 0x3a4(sp)
    slwi    r0, r0, 2
    add     r3, r3, r0
    stw     r27, 0x390(sp)
    li      r4, 0x28
    lwz     r23, 0x398(r3)
    stw     r27, 0x3a0(sp)
    lfd     f1, 0x390(sp)
    addi    r3, r23, 0x2c
    lfd     f0, 0x3a0(sp)
    fsubs   f1, f1, f4
    stw     r5, 0x3b4(sp)
    fsubs   f0, f0, f4
    stw     r6, 0x3bc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x3b0(sp)
    fctiwz  f3, f1
    stw     r27, 0x3b8(sp)
    fctiwz  f2, f0
    lfd     f1, 0x3b0(sp)
    stfd    f3, 0x398(sp)
    lfd     f0, 0x3b8(sp)
    fsubs   f1, f1, f4
    stfd    f2, 0x3a8(sp)
    lwz     r21, 0x39c(sp)
    fsubs   f2, f0, f4
    lwz     r20, 0x3ac(sp)
    xoris   r0, r21, 0x8000
    xoris   r5, r20, 0x8000
    stw     r0, 0x3cc(sp)
    stw     r5, 0x3c4(sp)
    stw     r27, 0x3c0(sp)
    stw     r27, 0x3c8(sp)
    lfd     f3, 0x3c0(sp)
    lfd     f0, 0x3c8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r20, 0x0
    addi    r5, r21, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r28, 0x1
    stb     r28, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r8, r6, r0
    lwz     r0, 0xc(r23)
    subf    r7, r21, r8
    lfd     f4, -0x4998(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r6, r20, r0
    subf    r5, r26, r8
    subf    r0, r22, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3d4(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x3e4(sp)
    stw     r5, 0x3f4(sp)
    stw     r0, 0x404(sp)
    stw     r27, 0x3d0(sp)
    stw     r27, 0x3e0(sp)
    lfd     f1, 0x3d0(sp)
    stw     r27, 0x3f0(sp)
    lfd     f0, 0x3e0(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x400(sp)
    lfd     f1, 0x3f0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x400(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x3d8(sp)
    stfd    f2, 0x3e8(sp)
    lwz     r21, 0x3dc(sp)
    stfd    f1, 0x3f8(sp)
    lwz     r20, 0x3ec(sp)
    xoris   r0, r21, 0x8000
    stfd    f0, 0x408(sp)
    lwz     r6, 0x3fc(sp)
    xoris   r5, r20, 0x8000
    lwz     r7, 0x40c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x424(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x414(sp)
    stw     r6, 0x41c(sp)
    stw     r0, 0x42c(sp)
    stw     r27, 0x410(sp)
    stw     r27, 0x418(sp)
    lfd     f1, 0x410(sp)
    stw     r27, 0x420(sp)
    lfd     f0, 0x418(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x428(sp)
    lfd     f3, 0x420(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x428(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r20
    lwz     r12, 0xc(r12)
    add     r5, r0, r21
    mtlr    r12
    blrl
    stb     r28, 0x4e(r23)
branch_0x801663a8:
    lwz     r0, 0xc4(r31)
    cmpwi   r0, 0x28
    bge-    branch_0x801663b8
    b       branch_0x801663bc

branch_0x801663b8:
    subfic  r0, r0, 0x50
branch_0x801663bc:
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4998(rtoc)
    stw     r0, 0x394(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4980(rtoc)
    stw     r0, 0x390(sp)
    lfs     f0, -0x497c(rtoc)
    lfd     f1, 0x390(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x398(sp)
    lwz     r0, 0x39c(sp)
    slwi    r3, r0, 24
    addis   r3, r3, 0xff
    addi    r0, r3, 0xff
    stw     r0, 0x308(sp)
    lbz     r0, 0xb0(r31)
    lbz     r3, 0xb6(r31)
    extsb   r4, r0
    lwz     r0, 0x308(sp)
    slwi    r4, r4, 4
    extsb   r3, r3
    add     r4, r31, r4
    slwi    r3, r3, 2
    add     r3, r4, r3
    lwz     r3, 0x398(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lbz     r3, 0xb0(r31)
    lbz     r0, 0xb6(r31)
    extsb   r3, r3
    slwi    r3, r3, 4
    extsb   r0, r0
    add     r3, r31, r3
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x398(r3)
    bl      update__7TExPaneFv
    lwz     r3, 0xc4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0xc4(r31)
    lwz     r0, 0xc4(r31)
    cmpwi   r0, 0x50
    ble-    branch_0x8016647c
    li      r0, 0x0
    stw     r0, 0xc4(r31)
branch_0x8016647c:
    lbz     r3, 0xb6(r31)
    extsb   r0, r29
    extsb   r3, r3
    cmpw    r3, r0
    beq-    branch_0x80166b84
    cmpwi   r3, -0x1
    beq-    branch_0x80166b84
    lwz     r4, 0xac(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801664ac
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x801664ac:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801664d4
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801664d4:
    li      r0, 0x0
    stw     r0, 0xc4(r31)
    extsb   r0, r29
    lis     r3, 0xff
    lbz     r6, 0xb0(r31)
    slwi    r9, r0, 2
    slwi    r0, r0, 4
    extsb   r6, r6
    slwi    r4, r6, 4
    add     r5, r31, r4
    slwi    r4, r6, 6
    add     r5, r5, r9
    add     r4, r4, r0
    lwz     r5, 0x398(r5)
    addi    r0, r4, 0x3c8
    add     r7, r31, r0
    lwz     r8, 0x0(r5)
    lwz     r6, 0x0(r7)
    li      r4, -0x1
    lwz     r5, 0x4(r7)
    addi    r0, r3, 0xff
    stw     r6, 0x14(r8)
    stw     r5, 0x18(r8)
    lwz     r5, 0x8(r7)
    lwz     r3, 0xc(r7)
    stw     r5, 0x1c(r8)
    stw     r3, 0x20(r8)
    stw     r4, 0x300(sp)
    lbz     r4, 0xb0(r31)
    lwz     r3, 0x300(sp)
    extsb   r4, r4
    slwi    r4, r4, 4
    add     r4, r31, r4
    add     r4, r4, r9
    lwz     r4, 0x398(r4)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x2f8(sp)
    lbz     r0, 0xb0(r31)
    lbz     r3, 0xb6(r31)
    extsb   r4, r0
    lwz     r0, 0x2f8(sp)
    slwi    r4, r4, 4
    extsb   r3, r3
    add     r4, r31, r4
    slwi    r3, r3, 2
    add     r3, r4, r3
    lwz     r3, 0x398(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x80166b84

branch_0x801665a0:
    lbz     r0, 0xb0(r31)
    li      r5, 0x0
    addi    r3, sp, 0x33c
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x398(r4)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x39c(r4)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x3a0(r4)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 4
    add     r4, r31, r0
    lwz     r4, 0x3a4(r4)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r4, r0, 4
    addi    r4, r4, 0x368
    add     r4, r31, r4
    bl      copy__7JUTRectFRC7JUTRect
    lbz     r0, 0xb0(r31)
    lfs     f0, -0x49a4(rtoc)
    extsb   r0, r0
    lwz     r5, 0x33c(sp)
    slwi    r0, r0, 2
    lwz     r4, 0x344(sp)
    add     r3, r31, r0
    lwz     r22, 0x35c(r3)
    subf    r0, r5, r4
    lfs     f1, 0x30(r22)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80166668
    lfs     f0, -0x49a0(rtoc)
    b       branch_0x8016666c

branch_0x80166668:
    lfs     f0, -0x499c(rtoc)
branch_0x8016666c:
    fadds   f1, f1, f0
    lfs     f2, 0x2c(r22)
    lfs     f0, -0x49a4(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x390(sp)
    lwz     r21, 0x394(sp)
    ble-    branch_0x80166694
    lfs     f0, -0x49a0(rtoc)
    b       branch_0x80166698

branch_0x80166694:
    lfs     f0, -0x499c(rtoc)
branch_0x80166698:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r21, 0x8000
    stw     r3, 0x39c(sp)
    lis     r5, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x3ac(sp)
    lfd     f3, -0x4998(rtoc)
    addi    r3, r22, 0x2c
    stw     r5, 0x398(sp)
    stfd    f0, 0x390(sp)
    li      r4, 0x1e
    lfd     f0, 0x398(sp)
    lwz     r20, 0x394(sp)
    stw     r5, 0x3a8(sp)
    fsubs   f1, f0, f3
    xoris   r0, r20, 0x8000
    lfs     f2, -0x49a4(rtoc)
    stw     r0, 0x3a4(sp)
    lfd     f0, 0x3a8(sp)
    stw     r5, 0x3a0(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x3a0(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r20, 0x0
    addi    r5, r21, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4f(r22)
    lbz     r0, 0xb0(r31)
    lfs     f0, -0x49a4(rtoc)
    extsb   r0, r0
    lwz     r5, 0x340(sp)
    slwi    r0, r0, 2
    lwz     r4, 0x348(sp)
    add     r3, r31, r0
    lwz     r22, 0x35c(r3)
    subf    r0, r5, r4
    lfs     f1, 0x18(r22)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80166758
    lfs     f0, -0x49a0(rtoc)
    b       branch_0x8016675c

branch_0x80166758:
    lfs     f0, -0x499c(rtoc)
branch_0x8016675c:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r22)
    lfs     f0, -0x49a4(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x390(sp)
    lwz     r21, 0x394(sp)
    ble-    branch_0x80166784
    lfs     f0, -0x49a0(rtoc)
    b       branch_0x80166788

branch_0x80166784:
    lfs     f0, -0x499c(rtoc)
branch_0x80166788:
    fadds   f0, f2, f0
    xoris   r3, r0, 0x8000
    xoris   r0, r21, 0x8000
    stw     r3, 0x39c(sp)
    lis     r28, 0x4330
    fctiwz  f0, f0
    stw     r0, 0x3ac(sp)
    lfd     f3, -0x4998(rtoc)
    addi    r3, r22, 0x14
    stw     r28, 0x398(sp)
    stfd    f0, 0x390(sp)
    li      r4, 0x1e
    lfd     f0, 0x398(sp)
    lwz     r20, 0x394(sp)
    stw     r28, 0x3a8(sp)
    fsubs   f2, f0, f3
    xoris   r0, r20, 0x8000
    lfs     f1, -0x49a4(rtoc)
    stw     r0, 0x3a4(sp)
    lfd     f0, 0x3a8(sp)
    stw     r28, 0x3a0(sp)
    fsubs   f4, f0, f3
    lfd     f0, 0x3a0(sp)
    fsubs   f3, f0, f3
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r22)
    add     r4, r4, r20
    lwz     r12, 0xc(r12)
    add     r5, r0, r21
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x4e(r22)
    li      r0, 0x4
    li      r22, 0x0
    stw     r0, 0x10(r31)
    li      r24, 0x0
    lfd     f30, -0x4998(rtoc)
    lfs     f31, -0x49a0(rtoc)
branch_0x80166830:
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    cmpw    r22, r0
    bne-    branch_0x80166a28
    lbz     r0, 0xb6(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x80166a28
    cmpwi   r0, 0x1
    beq-    branch_0x80166a28
    add     r7, r31, r24
    lwz     r3, 0x2ec(r7)
    li      r0, 0x0
    li      r4, 0x1e
    stb     r0, 0xc(r3)
    lwz     r3, 0x2f8(r7)
    stb     r0, 0xc(r3)
    lwz     r3, 0x31c(r7)
    stb     r0, 0xc(r3)
    lwz     r6, 0x2d4(r31)
    lwz     r0, 0x2dc(r31)
    lwz     r5, 0x2d0(r31)
    lwz     r3, 0x2d8(r31)
    subf    r21, r6, r0
    xoris   r0, r21, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r20, r5, r3
    xoris   r3, r20, 0x8000
    stw     r0, 0x39c(sp)
    lwz     r23, 0x2c4(r7)
    fmr     f2, f1
    stw     r3, 0x394(sp)
    addi    r3, r23, 0x2c
    stw     r28, 0x390(sp)
    stw     r28, 0x398(sp)
    lfd     f3, 0x390(sp)
    lfd     f0, 0x398(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r20, 0x0
    addi    r5, r21, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x1e
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r7, r6, r0
    lwz     r0, 0xc(r23)
    subf    r6, r21, r7
    subf    r8, r5, r0
    subf    r0, r20, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x3a4(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x3b4(sp)
    stw     r5, 0x3c4(sp)
    stw     r0, 0x3d4(sp)
    stw     r28, 0x3a0(sp)
    stw     r28, 0x3b0(sp)
    lfd     f1, 0x3a0(sp)
    stw     r28, 0x3c0(sp)
    lfd     f0, 0x3b0(sp)
    fsubs   f3, f1, f30
    stw     r28, 0x3d0(sp)
    lfd     f1, 0x3c0(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x3d0(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f3, f31, f3
    fmuls   f2, f31, f2
    fmuls   f1, f31, f1
    fmuls   f0, f31, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x3a8(sp)
    stfd    f2, 0x3b8(sp)
    lwz     r21, 0x3ac(sp)
    stfd    f1, 0x3c8(sp)
    lwz     r20, 0x3bc(sp)
    xoris   r0, r21, 0x8000
    stfd    f0, 0x3d8(sp)
    lwz     r6, 0x3cc(sp)
    xoris   r5, r20, 0x8000
    lwz     r7, 0x3dc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3f4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3e4(sp)
    stw     r6, 0x3ec(sp)
    stw     r0, 0x3fc(sp)
    stw     r28, 0x3e0(sp)
    stw     r28, 0x3e8(sp)
    lfd     f1, 0x3e0(sp)
    stw     r28, 0x3f0(sp)
    lfd     f0, 0x3e8(sp)
    fsubs   f1, f1, f30
    stw     r28, 0x3f8(sp)
    lfd     f3, 0x3f0(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x3f8(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r20
    lwz     r12, 0xc(r12)
    add     r5, r0, r21
    mtlr    r12
    blrl
    stb     r29, 0x4e(r23)
branch_0x80166a28:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    addi    r24, r24, 0x4
    blt+    branch_0x80166830
    b       branch_0x80166b84

branch_0x80166a3c:
    lbz     r0, 0xb0(r31)
    li      r20, 0x1
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x35c(r3)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    li      r21, 0x0
    li      r22, 0x0
branch_0x80166a64:
    addi    r0, r22, 0x2c4
    lwzx    r3, r31, r0
    bl      update__7TExPaneFv
    addi    r21, r21, 0x1
    cmpwi   r21, 0x3
    and     r20, r20, r3
    addi    r22, r22, 0x4
    blt+    branch_0x80166a64
    clrlwi. r0, r20, 24
    beq-    branch_0x80166b84
    lbz     r0, 0xb0(r31)
    li      r4, 0x0
    li      r5, 0x0
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x35c(r3)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    cmpw    r5, r0
    bne-    branch_0x80166ae4
    lbz     r0, 0xb6(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x80166ae4
    cmpwi   r0, 0x1
    beq-    branch_0x80166ae4
    lwz     r3, 0x2c4(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
branch_0x80166ae4:
    lbz     r0, 0xb0(r31)
    li      r5, 0x1
    extsb   r0, r0
    cmpw    r5, r0
    bne-    branch_0x80166b1c
    lbz     r0, 0xb6(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x80166b1c
    cmpwi   r0, 0x1
    beq-    branch_0x80166b1c
    lwz     r3, 0x2c8(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
branch_0x80166b1c:
    lbz     r0, 0xb0(r31)
    li      r5, 0x2
    extsb   r0, r0
    cmpw    r5, r0
    bne-    branch_0x80166b54
    lbz     r0, 0xb6(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x80166b54
    cmpwi   r0, 0x1
    beq-    branch_0x80166b54
    lwz     r3, 0x2cc(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
branch_0x80166b54:
    li      r0, 0x5
    stw     r0, 0x10(r31)
    b       branch_0x80166b84

branch_0x80166b60:
    extsb   r0, r29
    cmpwi   r0, -0x1
    beq-    branch_0x80166b7c
    li      r0, 0x1b
    stw     r0, 0x1c(r31)
    mr      r30, r29
    b       branch_0x80166b84

branch_0x80166b7c:
    li      r0, 0x13
    stw     r0, 0x1c(r31)
branch_0x80166b84:
    mr      r3, r30
    lmw     r20, 0x450(sp)
    lwz     r0, 0x49c(sp)
    lfd     f31, 0x490(sp)
    lfd     f30, 0x488(sp)
    mtlr    r0
    lfd     f29, 0x480(sp)
    addi    sp, sp, 0x498
    blr


.globl selectBookmark__9TCardLoadF10TEProgress10TEProgressb
selectBookmark__9TCardLoadF10TEProgress10TEProgressb: # 0x80166ba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x200(sp)
    stfd    f31, 0x1f8(sp)
    stfd    f30, 0x1f0(sp)
    stmw    r20, 0x1c0(sp)
    mr      r31, r3
    addi    r21, r4, 0x0
    addi    r20, r5, 0x0
    addi    r23, r6, 0x0
    li      r28, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80167448
    bge-    branch_0x80166bfc
    cmpwi   r0, 0x1
    beq-    branch_0x801670dc
    bge-    branch_0x8016740c
    cmpwi   r0, 0x0
    bge-    branch_0x80166c0c
    b       branch_0x801679ec

branch_0x80166bfc:
    cmpwi   r0, 0x5
    beq-    branch_0x8016798c
    bge-    branch_0x801679ec
    b       branch_0x80167868

branch_0x80166c0c:
    li      r0, 0x0
    stw     r0, 0x358(r31)
    li      r23, 0x1
    lis     r22, 0x4330
    lwz     r3, 0x2c0(r31)
    li      r4, 0x1e
    stb     r0, 0xc(r3)
    lwz     r3, 0x2a8(r31)
    lwz     r3, 0x0(r3)
    stb     r23, 0xc(r3)
    lwz     r6, 0x2b0(r31)
    lwz     r0, 0x2b8(r31)
    lwz     r5, 0x2ac(r31)
    lwz     r3, 0x2b4(r31)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r21, r5, r3
    xoris   r3, r21, 0x8000
    stw     r0, 0x1b4(sp)
    lwz     r24, 0x2a8(r31)
    fmr     f4, f3
    stw     r3, 0x1bc(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r24, 0x2c
    stw     r22, 0x1b8(sp)
    stw     r22, 0x1b0(sp)
    lfd     f1, 0x1b8(sp)
    lfd     f0, 0x1b0(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r23, 0x4f(r24)
    addi    r3, r24, 0x14
    li      r4, 0x1e
    lwz     r5, 0x8(r24)
    lwz     r0, 0x10(r24)
    lwz     r6, 0x4(r24)
    subf    r7, r5, r0
    lwz     r0, 0xc(r24)
    subf    r5, r25, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r21, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x1ac(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x19c(sp)
    stw     r5, 0x18c(sp)
    stw     r0, 0x17c(sp)
    stw     r22, 0x1a8(sp)
    stw     r22, 0x198(sp)
    lfd     f1, 0x1a8(sp)
    stw     r22, 0x188(sp)
    lfd     f0, 0x198(sp)
    fsubs   f3, f1, f4
    stw     r22, 0x178(sp)
    lfd     f1, 0x188(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x178(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x1a0(sp)
    stfd    f2, 0x190(sp)
    lwz     r25, 0x1a4(sp)
    stfd    f1, 0x180(sp)
    lwz     r21, 0x194(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0x170(sp)
    lwz     r6, 0x184(sp)
    xoris   r5, r21, 0x8000
    lwz     r7, 0x174(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x15c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x16c(sp)
    stw     r6, 0x164(sp)
    stw     r0, 0x154(sp)
    stw     r22, 0x168(sp)
    stw     r22, 0x160(sp)
    lfd     f1, 0x168(sp)
    stw     r22, 0x158(sp)
    lfd     f0, 0x160(sp)
    fsubs   f1, f1, f4
    stw     r22, 0x150(sp)
    lfd     f3, 0x158(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x150(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r24)
    lwz     r4, 0x4(r24)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r24)
    add     r4, r4, r21
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r23, 0x4e(r24)
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x1c
    bne-    branch_0x80166e60
    lbz     r0, 0xb1(r31)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x298(r3)
    bl      makeBlockRock__14TFileLoadBlockFv
    lwz     r22, 0x2bc(r31)
    li      r4, 0x1e
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r22, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0xff
    bl      strncpy
    lwz     r22, 0x2c0(r31)
    li      r4, 0x1e
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r22, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0xff
    bl      strncpy
    b       branch_0x80166eb0

branch_0x80166e60:
    lwz     r22, 0x2bc(r31)
    li      r4, 0x1d
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r22, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0xff
    bl      strncpy
    lwz     r22, 0x2c0(r31)
    li      r4, 0x1d
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r22, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0xff
    bl      strncpy
branch_0x80166eb0:
    lfd     f31, -0x4998(rtoc)
    li      r21, 0x0
    lfs     f30, -0x49a0(rtoc)
    li      r30, 0x0
    lis     r22, 0x4330
branch_0x80166ec4:
    add     r29, r31, r30
    addi    r7, r29, 0x2c4
    lwz     r3, 0x2c4(r29)
    lwz     r3, 0x0(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801670c0
    lwz     r3, 0x2ec(r29)
    li      r24, 0x0
    li      r23, 0x1
    stb     r24, 0xc(r3)
    li      r4, 0x1e
    lwz     r3, 0x2f8(r29)
    stb     r24, 0xc(r3)
    lwz     r3, 0x31c(r29)
    stb     r24, 0xc(r3)
    lwz     r3, 0x0(r7)
    lwz     r3, 0x0(r3)
    stb     r23, 0xc(r3)
    lwz     r6, 0x2d4(r31)
    lwz     r0, 0x2dc(r31)
    lwz     r5, 0x2d0(r31)
    lwz     r3, 0x2d8(r31)
    subf    r27, r6, r0
    xoris   r0, r27, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x15c(sp)
    lwz     r25, 0x0(r7)
    fmr     f4, f3
    stw     r3, 0x154(sp)
    addi    r3, r25, 0x2c
    stw     r22, 0x150(sp)
    stw     r22, 0x158(sp)
    lfd     f1, 0x150(sp)
    lfd     f0, 0x158(sp)
    fsubs   f1, f1, f31
    fsubs   f2, f0, f31
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r23, 0x4f(r25)
    addi    r3, r25, 0x14
    li      r4, 0x1e
    lwz     r5, 0x8(r25)
    lwz     r0, 0x10(r25)
    lwz     r6, 0x4(r25)
    subf    r7, r5, r0
    lwz     r0, 0xc(r25)
    subf    r5, r27, r7
    subf    r6, r6, r0
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x164(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x174(sp)
    stw     r5, 0x184(sp)
    stw     r0, 0x194(sp)
    stw     r22, 0x160(sp)
    stw     r22, 0x170(sp)
    lfd     f1, 0x160(sp)
    stw     r22, 0x180(sp)
    lfd     f0, 0x170(sp)
    fsubs   f3, f1, f31
    stw     r22, 0x190(sp)
    lfd     f1, 0x180(sp)
    fsubs   f2, f0, f31
    lfd     f0, 0x190(sp)
    fsubs   f1, f1, f31
    fsubs   f0, f0, f31
    fmuls   f3, f30, f3
    fmuls   f2, f30, f2
    fmuls   f1, f30, f1
    fmuls   f0, f30, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x168(sp)
    stfd    f2, 0x178(sp)
    lwz     r27, 0x16c(sp)
    stfd    f1, 0x188(sp)
    lwz     r26, 0x17c(sp)
    xoris   r0, r27, 0x8000
    stfd    f0, 0x198(sp)
    lwz     r6, 0x18c(sp)
    xoris   r5, r26, 0x8000
    lwz     r7, 0x19c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x1b4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x1a4(sp)
    stw     r6, 0x1ac(sp)
    stw     r0, 0x1bc(sp)
    stw     r22, 0x1a0(sp)
    stw     r22, 0x1a8(sp)
    lfd     f1, 0x1a0(sp)
    stw     r22, 0x1b0(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f1, f1, f31
    stw     r22, 0x1b8(sp)
    lfd     f3, 0x1b0(sp)
    fsubs   f2, f0, f31
    lfd     f0, 0x1b8(sp)
    fsubs   f3, f3, f31
    fsubs   f4, f0, f31
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r25)
    add     r4, r4, r26
    lwz     r12, 0xc(r12)
    add     r5, r0, r27
    mtlr    r12
    blrl
    stb     r23, 0x4e(r25)
    lwz     r3, 0x34c(r29)
    stb     r24, 0xc(r3)
branch_0x801670c0:
    addi    r21, r21, 0x1
    cmpwi   r21, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x80166ec4
    li      r0, 0x1
    stw     r0, 0x10(r31)
    b       branch_0x801679ec

branch_0x801670dc:
    li      r20, 0x1
    lwz     r3, 0x2a8(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    li      r22, 0x0
    li      r21, 0x0
branch_0x801670f4:
    addi    r0, r21, 0x2c4
    lwzx    r3, r31, r0
    bl      update__7TExPaneFv
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    and     r20, r20, r3
    addi    r21, r21, 0x4
    blt+    branch_0x801670f4
    clrlwi. r0, r20, 24
    beq-    branch_0x801679ec
    lwz     r3, 0x2c0(r31)
    li      r0, 0x1
    lis     r4, 0x51ec
    stb     r0, 0xc(r3)
    lis     r3, 0x6666
    subi    r29, r4, 0x7ae1
    lfs     f31, -0x4978(rtoc)
    addi    r24, r3, 0x6667
    lfd     f30, -0x4970(rtoc)
    li      r27, 0x0
    li      r26, 0x0
    li      r25, 0x0
    lis     r30, 0x4330
branch_0x80167150:
    add     r3, r31, r25
    lwz     r0, 0x40(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x801671d4
    add     r22, r31, r26
    lwz     r3, 0xa0(r31)
    lwz     r23, 0x2e0(r22)
    li      r4, 0x0
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0x14
    bl      strncpy
    addi    r20, r22, 0x2ec
    lwz     r3, 0xa0(r31)
    lwz     r23, 0x2ec(r22)
    li      r4, 0x0
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x0(r20)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x2f8(r22)
    stb     r0, 0xc(r3)
    b       branch_0x801673e4

branch_0x801671d4:
    lwz     r0, 0x58(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80167254
    add     r22, r31, r26
    lwz     r3, 0xa0(r31)
    lwz     r23, 0x2e0(r22)
    li      r4, 0x1b
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0x14
    bl      strncpy
    addi    r20, r22, 0x2ec
    lwz     r3, 0xa0(r31)
    lwz     r23, 0x2ec(r22)
    li      r4, 0x1b
    bl      SMSGetMessageData__FPvUl
    addi    r21, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r21, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x0(r20)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x2f8(r22)
    stb     r0, 0xc(r3)
    b       branch_0x801673e4

branch_0x80167254:
    addi    r4, r3, 0x5c
    lhz     r0, 0x5c(r3)
    cmplwi  r0, 0x78
    blt-    branch_0x80167274
    addi    r0, r26, 0x34c
    lwzx    r3, r31, r0
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x80167274:
    add     r21, r31, r26
    lwz     r3, 0x2ec(r21)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x3e7
    ble-    branch_0x80167294
    li      r0, 0x3e7
branch_0x80167294:
    clrlwi  r22, r0, 16
    cmplwi  r22, 0x64
    bge-    branch_0x80167318
    mulhw   r23, r24, r22
    lwz     r3, 0x304(r21)
    srawi   r0, r23, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r31, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r23, 2
    lwz     r3, 0x310(r21)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r22
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r31, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x2f8(r21)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x31c(r21)
    stb     r0, 0xc(r3)
    b       branch_0x801673e4

branch_0x80167318:
    mulhw   r0, r29, r22
    lwz     r3, 0x328(r21)
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r31, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    stw     r22, 0x154(sp)
    li      r5, 0x0
    lwz     r3, 0x334(r21)
    stw     r30, 0x150(sp)
    lfd     f0, 0x150(sp)
    fsubs   f0, f0, f30
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x158(sp)
    lwz     r0, 0x15c(sp)
    mulli   r0, r0, 0x64
    subf    r0, r0, r22
    clrlwi  r22, r0, 16
    mulhw   r23, r24, r22
    srawi   r0, r23, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r31, r0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r23, 2
    lwz     r3, 0x340(r21)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r22
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r31, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x31c(r21)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x2f8(r21)
    stb     r0, 0xc(r3)
branch_0x801673e4:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x3
    addi    r26, r26, 0x4
    addi    r25, r25, 0x20
    blt+    branch_0x80167150
    li      r0, -0x1
    stb     r0, 0xb0(r31)
    li      r0, 0x2
    stw     r0, 0x10(r31)
    b       branch_0x801679ec

branch_0x8016740c:
    cmpwi   r20, 0x0
    beq-    branch_0x8016742c
    lwz     r3, 0x38(r31)
    lwz     r0, 0x1c(r3)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x8016742c
    li      r0, 0x3
    stw     r0, 0x10(r31)
branch_0x8016742c:
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x801679ec
    li      r0, 0x3
    stw     r0, 0x10(r31)
    b       branch_0x801679ec

branch_0x80167448:
    lwz     r3, 0x38(r31)
    li      r27, 0x0
    lis     r26, 0x4330
    lhz     r0, 0xe2(r3)
    li      r4, 0x1e
    ori     r0, r0, 0x1
    sth     r0, 0xe2(r3)
    lwz     r3, 0x2c0(r31)
    stb     r27, 0xc(r3)
    lwz     r6, 0x2b0(r31)
    lwz     r0, 0x2b8(r31)
    lwz     r5, 0x2ac(r31)
    lwz     r3, 0x2b4(r31)
    subf    r23, r6, r0
    xoris   r0, r23, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r21, r5, r3
    xoris   r3, r21, 0x8000
    stw     r0, 0x15c(sp)
    lwz     r22, 0x2a8(r31)
    fmr     f2, f1
    stw     r3, 0x154(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r22, 0x2c
    stw     r26, 0x150(sp)
    stw     r26, 0x158(sp)
    lfd     f3, 0x150(sp)
    lfd     f0, 0x158(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r21, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r25, 0x1
    stb     r25, 0x4f(r22)
    addi    r3, r22, 0x14
    li      r4, 0x1e
    lwz     r6, 0x8(r22)
    lwz     r0, 0x10(r22)
    lwz     r5, 0x4(r22)
    subf    r7, r6, r0
    lwz     r0, 0xc(r22)
    subf    r6, r23, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r21, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x164(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x174(sp)
    stw     r5, 0x184(sp)
    stw     r0, 0x194(sp)
    stw     r26, 0x160(sp)
    stw     r26, 0x170(sp)
    lfd     f1, 0x160(sp)
    stw     r26, 0x180(sp)
    lfd     f0, 0x170(sp)
    fsubs   f3, f1, f4
    stw     r26, 0x190(sp)
    lfd     f1, 0x180(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x190(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x168(sp)
    stfd    f2, 0x178(sp)
    lwz     r23, 0x16c(sp)
    stfd    f1, 0x188(sp)
    lwz     r21, 0x17c(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x198(sp)
    lwz     r6, 0x18c(sp)
    xoris   r5, r21, 0x8000
    lwz     r7, 0x19c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x1b4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x1a4(sp)
    stw     r6, 0x1ac(sp)
    stw     r0, 0x1bc(sp)
    stw     r26, 0x1a0(sp)
    stw     r26, 0x1a8(sp)
    lfd     f1, 0x1a0(sp)
    stw     r26, 0x1b0(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f1, f1, f4
    stw     r26, 0x1b8(sp)
    lfd     f3, 0x1b0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x1b8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r22)
    add     r4, r4, r21
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r25, 0x4e(r22)
    li      r21, 0x0
    li      r23, 0x0
    lwz     r3, 0x34c(r31)
    stb     r27, 0xc(r3)
    lwz     r3, 0x350(r31)
    stb     r27, 0xc(r3)
    lwz     r3, 0x354(r31)
    stb     r27, 0xc(r3)
    lfd     f30, -0x4998(rtoc)
    lfs     f31, -0x49a0(rtoc)
branch_0x8016764c:
    lbz     r0, 0xb0(r31)
    extsb   r3, r0
    cmpw    r21, r3
    bne-    branch_0x8016767c
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x1c
    beq-    branch_0x8016767c
    slwi    r3, r3, 5
    addi    r0, r3, 0x40
    lwzx    r0, r31, r0
    cmpwi   r0, 0x1
    bne-    branch_0x8016784c
branch_0x8016767c:
    add     r7, r31, r23
    lwz     r3, 0x2ec(r7)
    li      r0, 0x0
    li      r4, 0x1e
    stb     r0, 0xc(r3)
    lwz     r3, 0x2f8(r7)
    stb     r0, 0xc(r3)
    lwz     r3, 0x31c(r7)
    stb     r0, 0xc(r3)
    lwz     r6, 0x2d4(r31)
    lwz     r0, 0x2dc(r31)
    lwz     r5, 0x2d0(r31)
    lwz     r3, 0x2d8(r31)
    subf    r27, r6, r0
    xoris   r0, r27, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r24, r5, r3
    xoris   r3, r24, 0x8000
    stw     r0, 0x15c(sp)
    lwz     r22, 0x2c4(r7)
    fmr     f2, f1
    stw     r3, 0x154(sp)
    addi    r3, r22, 0x2c
    stw     r26, 0x150(sp)
    stw     r26, 0x158(sp)
    lfd     f3, 0x150(sp)
    lfd     f0, 0x158(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    addi    r4, r24, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r25, 0x1
    stb     r25, 0x4f(r22)
    addi    r3, r22, 0x14
    li      r4, 0x1e
    lwz     r6, 0x8(r22)
    lwz     r0, 0x10(r22)
    lwz     r5, 0x4(r22)
    subf    r7, r6, r0
    lwz     r0, 0xc(r22)
    subf    r6, r27, r7
    subf    r8, r5, r0
    subf    r0, r24, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x164(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x174(sp)
    stw     r5, 0x184(sp)
    stw     r0, 0x194(sp)
    stw     r26, 0x160(sp)
    stw     r26, 0x170(sp)
    lfd     f1, 0x160(sp)
    stw     r26, 0x180(sp)
    lfd     f0, 0x170(sp)
    fsubs   f3, f1, f30
    stw     r26, 0x190(sp)
    lfd     f1, 0x180(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x190(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f3, f31, f3
    fmuls   f2, f31, f2
    fmuls   f1, f31, f1
    fmuls   f0, f31, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x168(sp)
    stfd    f2, 0x178(sp)
    lwz     r27, 0x16c(sp)
    stfd    f1, 0x188(sp)
    lwz     r24, 0x17c(sp)
    xoris   r0, r27, 0x8000
    stfd    f0, 0x198(sp)
    lwz     r6, 0x18c(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0x19c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x1b4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x1a4(sp)
    stw     r6, 0x1ac(sp)
    stw     r0, 0x1bc(sp)
    stw     r26, 0x1a0(sp)
    stw     r26, 0x1a8(sp)
    lfd     f1, 0x1a0(sp)
    stw     r26, 0x1b0(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f1, f1, f30
    stw     r26, 0x1b8(sp)
    lfd     f3, 0x1b0(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0x1b8(sp)
    fsubs   f3, f3, f30
    fsubs   f4, f0, f30
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r22)
    lwz     r4, 0x4(r22)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r22)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r27
    mtlr    r12
    blrl
    stb     r25, 0x4e(r22)
branch_0x8016784c:
    addi    r21, r21, 0x1
    cmpwi   r21, 0x3
    addi    r23, r23, 0x4
    blt+    branch_0x8016764c
    li      r0, 0x4
    stw     r0, 0x10(r31)
    b       branch_0x801679ec

branch_0x80167868:
    li      r20, 0x1
    lwz     r3, 0x2a8(r31)
    bl      update__7TExPaneFv
    and     r20, r20, r3
    li      r22, 0x0
    li      r21, 0x0
branch_0x80167880:
    addi    r0, r21, 0x2c4
    lwzx    r3, r31, r0
    bl      update__7TExPaneFv
    addi    r22, r22, 0x1
    cmpwi   r22, 0x3
    and     r20, r20, r3
    addi    r21, r21, 0x4
    blt+    branch_0x80167880
    clrlwi. r0, r20, 24
    beq-    branch_0x801679ec
    lwz     r3, 0x2a8(r31)
    clrlwi. r0, r23, 24
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    beq-    branch_0x80167980
    lbz     r0, 0xb0(r31)
    li      r5, 0x0
    extsb   r3, r0
    cmpw    r5, r3
    bne-    branch_0x801678f4
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x1c
    beq-    branch_0x801678f4
    slwi    r3, r3, 5
    addi    r0, r3, 0x40
    lwzx    r0, r31, r0
    cmpwi   r0, 0x1
    bne-    branch_0x80167900
branch_0x801678f4:
    lwz     r3, 0x2c4(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
branch_0x80167900:
    lbz     r0, 0xb0(r31)
    li      r5, 0x1
    extsb   r3, r0
    cmpw    r5, r3
    bne-    branch_0x80167934
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x1c
    beq-    branch_0x80167934
    slwi    r3, r3, 5
    addi    r0, r3, 0x40
    lwzx    r0, r31, r0
    cmpwi   r0, 0x1
    bne-    branch_0x80167940
branch_0x80167934:
    lwz     r3, 0x2c8(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
branch_0x80167940:
    lbz     r0, 0xb0(r31)
    li      r5, 0x2
    extsb   r3, r0
    cmpw    r5, r3
    bne-    branch_0x80167974
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x1c
    beq-    branch_0x80167974
    slwi    r3, r3, 5
    addi    r0, r3, 0x40
    lwzx    r0, r31, r0
    cmpwi   r0, 0x1
    bne-    branch_0x80167980
branch_0x80167974:
    lwz     r3, 0x2cc(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
branch_0x80167980:
    li      r0, 0x5
    stw     r0, 0x10(r31)
    b       branch_0x801679ec

branch_0x8016798c:
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x1c
    bne-    branch_0x801679b0
    lbz     r0, 0xb1(r31)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x298(r3)
    bl      makeBlockNormal__14TFileLoadBlockFv
branch_0x801679b0:
    lwz     r0, 0x14(r31)
    lbz     r28, 0xb0(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801679d0
    lwz     r3, 0x38(r31)
    lhz     r0, 0xe2(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0xe2(r3)
branch_0x801679d0:
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x801679e8
    stw     r21, 0x1c(r31)
    b       branch_0x801679ec

branch_0x801679e8:
    stw     r20, 0x1c(r31)
branch_0x801679ec:
    lis     r3, 0x38e4
    lfs     f31, -0x4988(rtoc)
    lfs     f30, -0x49a4(rtoc)
    subi    r22, r3, 0x71c7
    li      r20, 0x0
    li      r21, 0x0
branch_0x80167a04:
    lwz     r3, 0x358(r31)
    addi    r0, r21, 0x34c
    lwzx    r23, r31, r0
    mulhwu  r0, r22, r3
    srwi    r0, r0, 4
    mulli   r0, r0, 0x48
    subf.   r0, r0, r3
    bne-    branch_0x80167a94
    mulhwu  r0, r22, r3
    extrwi. r0, r0, 1, 27
    bne-    branch_0x80167a64
    stfs    f30, 0x104(r23)
    mr      r3, r23
    stfs    f31, 0x108(r23)
    stfs    f30, 0x10c(r23)
    stfs    f30, 0x110(r23)
    bl      setBlendKonstColor__10J2DPictureFv
    stfs    f30, 0x114(r23)
    mr      r3, r23
    stfs    f31, 0x118(r23)
    stfs    f30, 0x11c(r23)
    stfs    f30, 0x120(r23)
    bl      setBlendKonstAlpha__10J2DPictureFv
    b       branch_0x80167a94

branch_0x80167a64:
    stfs    f31, 0x104(r23)
    mr      r3, r23
    stfs    f30, 0x108(r23)
    stfs    f30, 0x10c(r23)
    stfs    f30, 0x110(r23)
    bl      setBlendKonstColor__10J2DPictureFv
    stfs    f31, 0x114(r23)
    mr      r3, r23
    stfs    f30, 0x118(r23)
    stfs    f30, 0x11c(r23)
    stfs    f30, 0x120(r23)
    bl      setBlendKonstAlpha__10J2DPictureFv
branch_0x80167a94:
    addi    r20, r20, 0x1
    cmpwi   r20, 0x3
    addi    r21, r21, 0x4
    blt+    branch_0x80167a04
    lwz     r3, 0x358(r31)
    cmpwi   r3, 0x90
    bge-    branch_0x80167abc
    addi    r0, r3, 0x1
    stw     r0, 0x358(r31)
    b       branch_0x80167ac4

branch_0x80167abc:
    li      r0, 0x0
    stw     r0, 0x358(r31)
branch_0x80167ac4:
    mr      r3, r28
    lmw     r20, 0x1c0(sp)
    lwz     r0, 0x204(sp)
    lfd     f31, 0x1f8(sp)
    lfd     f30, 0x1f0(sp)
    mtlr    r0
    addi    sp, sp, 0x200
    blr


.globl drawMessageBM__9TCardLoadF10TEProgress
drawMessageBM__9TCardLoadF10TEProgress: # 0x80167ae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stmw    r25, 0x15c(sp)
    mr      r30, r3
    li      r31, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x801680a8
    bge-    branch_0x80167b24
    cmpwi   r0, 0x1
    beq-    branch_0x80167dbc
    bge-    branch_0x801682e0
    cmpwi   r0, 0x0
    bge-    branch_0x80167b34
    b       branch_0x801682e0

branch_0x80167b24:
    cmpwi   r0, 0x5
    beq-    branch_0x801682d8
    bge-    branch_0x801682e0
    b       branch_0x801682ac

branch_0x80167b34:
    lwz     r0, 0x1c(r30)
    lis     r3, 0x803c
    addi    r28, r3, 0x8f0
    lwz     r29, 0x4e0(r30)
    slwi    r0, r0, 2
    add     r4, r28, r0
    lwz     r3, 0xa0(r30)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r0, 0x1c(r30)
    lwz     r29, 0x4e4(r30)
    slwi    r0, r0, 2
    lwz     r3, 0xa0(r30)
    add     r4, r28, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r3, 0x4cc(r30)
    li      r29, 0x1
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    lis     r28, 0x4330
    li      r4, 0x14
    stb     r29, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x540(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4e4(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4e8(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4ec(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4f0(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4f4(r30)
    stb     r0, 0xc(r3)
    lwz     r6, 0x4d4(r30)
    lwz     r0, 0x4dc(r30)
    lwz     r5, 0x4d0(r30)
    lwz     r3, 0x4d8(r30)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x14c(sp)
    lwz     r27, 0x4cc(r30)
    fmr     f4, f3
    stw     r3, 0x154(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0x150(sp)
    stw     r28, 0x148(sp)
    lfd     f1, 0x150(sp)
    lfd     f0, 0x148(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r6, 0x4(r27)
    subf    r7, r5, r0
    lwz     r0, 0xc(r27)
    subf    r5, r25, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x144(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x134(sp)
    stw     r5, 0x124(sp)
    stw     r0, 0x114(sp)
    stw     r28, 0x140(sp)
    stw     r28, 0x130(sp)
    lfd     f1, 0x140(sp)
    stw     r28, 0x120(sp)
    lfd     f0, 0x130(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x110(sp)
    lfd     f1, 0x120(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x110(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x138(sp)
    stfd    f2, 0x128(sp)
    lwz     r26, 0x13c(sp)
    stfd    f1, 0x118(sp)
    lwz     r25, 0x12c(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x108(sp)
    lwz     r6, 0x11c(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x10c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xf4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x104(sp)
    stw     r6, 0xfc(sp)
    stw     r0, 0xec(sp)
    stw     r28, 0x100(sp)
    stw     r28, 0xf8(sp)
    lfd     f1, 0x100(sp)
    stw     r28, 0xf0(sp)
    lfd     f0, 0xf8(sp)
    fsubs   f1, f1, f4
    stw     r28, 0xe8(sp)
    lfd     f3, 0xf0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xe8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    stw     r29, 0x10(r30)
    b       branch_0x801682e0

branch_0x80167dbc:
    lwz     r3, 0x4cc(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801682e0
    lwz     r3, 0x4e4(r30)
    li      r28, 0x1
    stb     r28, 0xc(r3)
    lwz     r3, 0x4e8(r30)
    stb     r28, 0xc(r3)
    lbz     r0, 0xb0(r30)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x4ec(r3)
    stb     r28, 0xc(r3)
    lbz     r0, 0xb0(r30)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r3, r3, 0x40
    add     r3, r30, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80167e80
    lwz     r25, 0x53c(r30)
    li      r4, 0x0
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x540(r30)
    li      r4, 0x0
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x540(r30)
    li      r0, 0x0
    stb     r28, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r0, 0xc(r3)
    b       branch_0x80168094

branch_0x80167e80:
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80167ef4
    lwz     r25, 0x53c(r30)
    li      r4, 0x1b
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x540(r30)
    li      r4, 0x1b
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x540(r30)
    li      r0, 0x0
    stb     r28, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r0, 0xc(r3)
    b       branch_0x80168094

branch_0x80167ef4:
    lwz     r3, 0x540(r30)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lbz     r0, 0xb0(r30)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x5c
    lhzx    r0, r30, r0
    cmplwi  r0, 0x3e7
    ble-    branch_0x80167f20
    li      r0, 0x3e7
branch_0x80167f20:
    clrlwi  r28, r0, 16
    cmplwi  r28, 0x64
    bge-    branch_0x80167fac
    lis     r3, 0x6666
    lwz     r4, 0x520(r30)
    addi    r0, r3, 0x6667
    mulhw   r27, r0, r28
    li      r0, 0x0
    stb     r0, 0xc(r4)
    srawi   r0, r27, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    lwz     r3, 0x530(r30)
    li      r4, 0x1
    stb     r4, 0xc(r3)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x534(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x538(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x80168094

branch_0x80167fac:
    lis     r3, 0x51ec
    lwz     r4, 0x520(r30)
    subi    r0, r3, 0x7ae1
    mulhw   r0, r0, r28
    li      r3, 0x1
    stb     r3, 0xc(r4)
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    lwz     r3, 0x530(r30)
    li      r4, 0x0
    stb     r4, 0xc(r3)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x524(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    stw     r28, 0xec(sp)
    lis     r0, 0x4330
    lfd     f1, -0x4970(rtoc)
    lis     r3, 0x6666
    stw     r0, 0xe8(sp)
    addi    r0, r3, 0x6667
    lfs     f2, -0x4978(rtoc)
    lfd     f0, 0xe8(sp)
    li      r5, 0x0
    lwz     r3, 0x528(r30)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r4, 0xf4(sp)
    mulli   r4, r4, 0x64
    subf    r4, r4, r28
    clrlwi  r25, r4, 16
    mulhw   r27, r0, r25
    srawi   r0, r27, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x52c(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r25
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x80168094:
    li      r0, 0x0
    sth     r0, 0xb4(r30)
    li      r0, 0x2
    stw     r0, 0x10(r30)
    b       branch_0x801682e0

branch_0x801680a8:
    lha     r0, 0xb4(r30)
    cmpwi   r0, 0xb4
    ble-    branch_0x801682e0
    lwz     r6, 0x4d4(r30)
    lis     r28, 0x4330
    lwz     r0, 0x4dc(r30)
    li      r4, 0x14
    lwz     r5, 0x4d0(r30)
    lwz     r3, 0x4d8(r30)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0xf4(sp)
    lwz     r27, 0x4cc(r30)
    fmr     f2, f1
    stw     r3, 0xec(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0xe8(sp)
    stw     r28, 0xf0(sp)
    lfd     f3, 0xe8(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r5, 0x4(r27)
    subf    r7, r6, r0
    lwz     r0, 0xc(r27)
    subf    r6, r26, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0xfc(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x10c(sp)
    stw     r5, 0x11c(sp)
    stw     r0, 0x12c(sp)
    stw     r28, 0xf8(sp)
    stw     r28, 0x108(sp)
    lfd     f1, 0xf8(sp)
    stw     r28, 0x118(sp)
    lfd     f0, 0x108(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x128(sp)
    lfd     f1, 0x118(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x128(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x100(sp)
    stfd    f2, 0x110(sp)
    lwz     r26, 0x104(sp)
    stfd    f1, 0x120(sp)
    lwz     r25, 0x114(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x130(sp)
    lwz     r6, 0x124(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x134(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x14c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x13c(sp)
    stw     r6, 0x144(sp)
    stw     r0, 0x154(sp)
    stw     r28, 0x138(sp)
    stw     r28, 0x140(sp)
    lfd     f1, 0x138(sp)
    stw     r28, 0x148(sp)
    lfd     f0, 0x140(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x150(sp)
    lfd     f3, 0x148(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x150(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r4, 0x0
    li      r0, 0x4
    lwz     r3, 0x4e8(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x530(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x540(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4e4(r30)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r30)
    b       branch_0x801682e0

branch_0x801682ac:
    lwz     r3, 0x4cc(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801682e0
    lwz     r3, 0x4cc(r30)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r30)
    b       branch_0x801682e0

branch_0x801682d8:
    stw     r4, 0x1c(r30)
    li      r31, 0x0
branch_0x801682e0:
    lha     r4, 0xb4(r30)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0xb4(r30)
    lwz     r0, 0x17c(sp)
    lmw     r25, 0x15c(sp)
    addi    sp, sp, 0x178
    mtlr    r0
    blr


.globl drawMessage__9TCardLoadF10TEProgress
drawMessage__9TCardLoadF10TEProgress: # 0x80168304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r26, 0xc0(sp)
    mr      r28, r3
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x801685d8
    bge-    branch_0x80168340
    cmpwi   r0, 0x1
    beq-    branch_0x801685a8
    bge-    branch_0x801687ec
    cmpwi   r0, 0x0
    bge-    branch_0x80168350
    b       branch_0x801687ec

branch_0x80168340:
    cmpwi   r0, 0x5
    beq-    branch_0x801687e8
    bge-    branch_0x801687ec
    b       branch_0x801687bc

branch_0x80168350:
    lwz     r0, 0x1c(r28)
    lis     r3, 0x803c
    addi    r30, r3, 0x8f0
    lwz     r31, 0x59c(r28)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r3, 0xa0(r28)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r0, 0x1c(r28)
    lwz     r31, 0x5a0(r28)
    slwi    r0, r0, 2
    lwz     r3, 0xa0(r28)
    add     r4, r30, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r3, 0x588(r28)
    li      r31, 0x1
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    lis     r30, 0x4330
    li      r4, 0x14
    stb     r31, 0xc(r3)
    lwz     r3, 0x5a0(r28)
    stb     r0, 0xc(r3)
    lwz     r6, 0x590(r28)
    lwz     r0, 0x598(r28)
    lwz     r5, 0x58c(r28)
    lwz     r3, 0x594(r28)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r27, r5, r3
    xoris   r3, r27, 0x8000
    stw     r0, 0xb4(sp)
    lwz     r29, 0x588(r28)
    fmr     f4, f3
    stw     r3, 0xbc(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0xb8(sp)
    stw     r30, 0xb0(sp)
    lfd     f1, 0xb8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r6, 0x4(r29)
    subf    r7, r5, r0
    lwz     r0, 0xc(r29)
    subf    r5, r26, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r27, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0xac(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x9c(sp)
    stw     r5, 0x8c(sp)
    stw     r0, 0x7c(sp)
    stw     r30, 0xa8(sp)
    stw     r30, 0x98(sp)
    lfd     f1, 0xa8(sp)
    stw     r30, 0x88(sp)
    lfd     f0, 0x98(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x78(sp)
    lfd     f1, 0x88(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x78(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0xa0(sp)
    stfd    f2, 0x90(sp)
    lwz     r27, 0xa4(sp)
    stfd    f1, 0x80(sp)
    lwz     r26, 0x94(sp)
    xoris   r0, r27, 0x8000
    stfd    f0, 0x70(sp)
    lwz     r6, 0x84(sp)
    xoris   r5, r26, 0x8000
    lwz     r7, 0x74(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x5c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x6c(sp)
    stw     r6, 0x64(sp)
    stw     r0, 0x54(sp)
    stw     r30, 0x68(sp)
    stw     r30, 0x60(sp)
    lfd     f1, 0x68(sp)
    stw     r30, 0x58(sp)
    lfd     f0, 0x60(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x50(sp)
    lfd     f3, 0x58(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x50(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r26
    lwz     r12, 0xc(r12)
    add     r5, r0, r27
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    stw     r31, 0x10(r28)
    b       branch_0x801687ec

branch_0x801685a8:
    lwz     r3, 0x588(r28)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801687ec
    lwz     r4, 0x5a0(r28)
    li      r0, 0x1
    li      r3, 0x0
    stb     r0, 0xc(r4)
    li      r0, 0x2
    sth     r3, 0xb4(r28)
    stw     r0, 0x10(r28)
    b       branch_0x801687ec

branch_0x801685d8:
    lha     r0, 0xb4(r28)
    cmpwi   r0, 0xb4
    ble-    branch_0x801687ec
    lwz     r6, 0x590(r28)
    lis     r30, 0x4330
    lwz     r0, 0x598(r28)
    li      r4, 0x14
    lwz     r5, 0x58c(r28)
    lwz     r3, 0x594(r28)
    subf    r27, r6, r0
    xoris   r0, r27, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x5c(sp)
    lwz     r29, 0x588(r28)
    fmr     f2, f1
    stw     r3, 0x54(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0x50(sp)
    stw     r30, 0x58(sp)
    lfd     f3, 0x50(sp)
    lfd     f0, 0x58(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r5, 0x4(r29)
    subf    r7, r6, r0
    lwz     r0, 0xc(r29)
    subf    r6, r27, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r26, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x64(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x74(sp)
    stw     r5, 0x84(sp)
    stw     r0, 0x94(sp)
    stw     r30, 0x60(sp)
    stw     r30, 0x70(sp)
    lfd     f1, 0x60(sp)
    stw     r30, 0x80(sp)
    lfd     f0, 0x70(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x90(sp)
    lfd     f1, 0x80(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x90(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x68(sp)
    stfd    f2, 0x78(sp)
    lwz     r27, 0x6c(sp)
    stfd    f1, 0x88(sp)
    lwz     r26, 0x7c(sp)
    xoris   r0, r27, 0x8000
    stfd    f0, 0x98(sp)
    lwz     r6, 0x8c(sp)
    xoris   r5, r26, 0x8000
    lwz     r7, 0x9c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xb4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xa4(sp)
    stw     r6, 0xac(sp)
    stw     r0, 0xbc(sp)
    stw     r30, 0xa0(sp)
    stw     r30, 0xa8(sp)
    lfd     f1, 0xa0(sp)
    stw     r30, 0xb0(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f1, f1, f4
    stw     r30, 0xb8(sp)
    lfd     f3, 0xb0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xb8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r26
    lwz     r12, 0xc(r12)
    add     r5, r0, r27
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    li      r4, 0x0
    li      r0, 0x4
    lwz     r3, 0x5a0(r28)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r28)
    b       branch_0x801687ec

branch_0x801687bc:
    lwz     r3, 0x588(r28)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801687ec
    lwz     r3, 0x588(r28)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r28)
    b       branch_0x801687ec

branch_0x801687e8:
    stw     r4, 0x1c(r28)
branch_0x801687ec:
    lha     r4, 0xb4(r28)
    li      r3, -0x1
    addi    r0, r4, 0x1
    sth     r0, 0xb4(r28)
    lwz     r0, 0xdc(sp)
    lmw     r26, 0xc0(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl waitForStart__9TCardLoadF10TEProgress
waitForStart__9TCardLoadF10TEProgress: # 0x80168810
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a8(sp)
    stmw    r24, 0x188(sp)
    mr      r26, r3
    li      r27, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80168d7c
    bge-    branch_0x80168850
    cmpwi   r0, 0x1
    beq-    branch_0x80168cec
    bge-    branch_0x80168d50
    cmpwi   r0, 0x0
    bge-    branch_0x80168860
    b       branch_0x80169180

branch_0x80168850:
    cmpwi   r0, 0x5
    beq-    branch_0x80169178
    bge-    branch_0x80169180
    b       branch_0x8016912c

branch_0x80168860:
    lwz     r0, 0x1c(r26)
    lis     r3, 0x803c
    addi    r29, r3, 0x8f0
    lwz     r30, 0x558(r26)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r3, 0xa0(r26)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r0, 0x1c(r26)
    lwz     r30, 0x55c(r26)
    slwi    r0, r0, 2
    lwz     r3, 0xa0(r26)
    add     r4, r29, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r29, 0x580(r26)
    li      r4, 0xd
    lwz     r3, 0xa0(r26)
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r29, 0x584(r26)
    li      r4, 0xd
    lwz     r3, 0xa0(r26)
    bl      SMSGetMessageData__FPvUl
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r28, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r3, 0x544(r26)
    li      r30, 0x1
    lis     r29, 0x4330
    lwz     r3, 0x0(r3)
    li      r4, 0x14
    stb     r30, 0xc(r3)
    lwz     r6, 0x54c(r26)
    lwz     r0, 0x554(r26)
    lwz     r5, 0x548(r26)
    lwz     r3, 0x550(r26)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r28, r5, r3
    xoris   r3, r28, 0x8000
    stw     r0, 0x17c(sp)
    lwz     r31, 0x544(r26)
    fmr     f4, f3
    stw     r3, 0x184(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r31, 0x2c
    stw     r29, 0x180(sp)
    stw     r29, 0x178(sp)
    lfd     f1, 0x180(sp)
    lfd     f0, 0x178(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4f(r31)
    addi    r3, r31, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r31)
    lwz     r0, 0x10(r31)
    lwz     r6, 0x4(r31)
    subf    r7, r5, r0
    lwz     r0, 0xc(r31)
    subf    r5, r25, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r28, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x174(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x164(sp)
    stw     r5, 0x154(sp)
    stw     r0, 0x144(sp)
    stw     r29, 0x170(sp)
    stw     r29, 0x160(sp)
    lfd     f1, 0x170(sp)
    stw     r29, 0x150(sp)
    lfd     f0, 0x160(sp)
    fsubs   f3, f1, f4
    stw     r29, 0x140(sp)
    lfd     f1, 0x150(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x140(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x168(sp)
    stfd    f2, 0x158(sp)
    lwz     r25, 0x16c(sp)
    stfd    f1, 0x148(sp)
    lwz     r24, 0x15c(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0x138(sp)
    lwz     r6, 0x14c(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0x13c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x124(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x134(sp)
    stw     r6, 0x12c(sp)
    stw     r0, 0x11c(sp)
    stw     r29, 0x130(sp)
    stw     r29, 0x128(sp)
    lfd     f1, 0x130(sp)
    stw     r29, 0x120(sp)
    lfd     f0, 0x128(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x118(sp)
    lfd     f3, 0x120(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x118(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r31)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r30, 0x4e(r31)
    li      r0, 0x0
    lwz     r3, 0x584(r26)
    stb     r0, 0xc(r3)
    lwz     r0, 0x1c(r26)
    cmpwi   r0, 0xc
    beq-    branch_0x80168b14
    cmpwi   r0, 0xd
    bne-    branch_0x80168ce0
branch_0x80168b14:
    lwz     r3, 0x56c(r26)
    li      r30, 0x1
    lis     r29, 0x4330
    lwz     r3, 0x0(r3)
    li      r4, 0x14
    stb     r30, 0xc(r3)
    lwz     r6, 0x574(r26)
    lwz     r0, 0x57c(r26)
    lwz     r5, 0x570(r26)
    lwz     r3, 0x578(r26)
    subf    r28, r6, r0
    xoris   r0, r28, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x124(sp)
    lwz     r31, 0x56c(r26)
    fmr     f4, f3
    stw     r3, 0x11c(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r31, 0x2c
    stw     r29, 0x118(sp)
    stw     r29, 0x120(sp)
    lfd     f1, 0x118(sp)
    lfd     f0, 0x120(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r30, 0x4f(r31)
    addi    r3, r31, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r31)
    lwz     r0, 0x10(r31)
    lwz     r6, 0x4(r31)
    subf    r7, r5, r0
    lwz     r0, 0xc(r31)
    subf    r5, r28, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r25, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x12c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x13c(sp)
    stw     r5, 0x14c(sp)
    stw     r0, 0x15c(sp)
    stw     r29, 0x128(sp)
    stw     r29, 0x138(sp)
    lfd     f1, 0x128(sp)
    stw     r29, 0x148(sp)
    lfd     f0, 0x138(sp)
    fsubs   f3, f1, f4
    stw     r29, 0x158(sp)
    lfd     f1, 0x148(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x158(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x130(sp)
    stfd    f2, 0x140(sp)
    lwz     r25, 0x134(sp)
    stfd    f1, 0x150(sp)
    lwz     r24, 0x144(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0x160(sp)
    lwz     r6, 0x154(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0x164(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x17c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x16c(sp)
    stw     r6, 0x174(sp)
    stw     r0, 0x184(sp)
    stw     r29, 0x168(sp)
    stw     r29, 0x170(sp)
    lfd     f1, 0x168(sp)
    stw     r29, 0x178(sp)
    lfd     f0, 0x170(sp)
    fsubs   f1, f1, f4
    stw     r29, 0x180(sp)
    lfd     f3, 0x178(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x180(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r31)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r30, 0x4e(r31)
branch_0x80168ce0:
    li      r0, 0x1
    stw     r0, 0x10(r26)
    b       branch_0x80169180

branch_0x80168cec:
    li      r24, 0x1
    lwz     r3, 0x544(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    lwz     r3, 0x56c(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    clrlwi. r0, r24, 24
    beq-    branch_0x80169180
    li      r0, 0x2
    stw     r0, 0x10(r26)
    li      r4, 0x1
    li      r0, -0x1
    lwz     r3, 0x55c(r26)
    stb     r4, 0xc(r3)
    lwz     r3, 0x584(r26)
    stb     r4, 0xc(r3)
    lwz     r3, 0x560(r26)
    stb     r4, 0xc(r3)
    lwz     r3, 0x564(r26)
    stb     r4, 0xc(r3)
    lwz     r3, 0x568(r26)
    stb     r4, 0xc(r3)
    stb     r0, 0xb0(r26)
    b       branch_0x80169180

branch_0x80168d50:
    lwz     r3, 0x38(r26)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x80168d70
    lbz     r0, 0xb0(r26)
    extsb   r0, r0
    cmpwi   r0, -0x1
    beq-    branch_0x80169180
branch_0x80168d70:
    li      r0, 0x3
    stw     r0, 0x10(r26)
    b       branch_0x80169180

branch_0x80168d7c:
    lwz     r3, 0x55c(r26)
    li      r29, 0x0
    lis     r30, 0x4330
    stb     r29, 0xc(r3)
    li      r4, 0x14
    lwz     r3, 0x560(r26)
    stb     r29, 0xc(r3)
    lwz     r3, 0x564(r26)
    stb     r29, 0xc(r3)
    lwz     r3, 0x568(r26)
    stb     r29, 0xc(r3)
    lwz     r6, 0x54c(r26)
    lwz     r0, 0x554(r26)
    lwz     r5, 0x548(r26)
    lwz     r3, 0x550(r26)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x124(sp)
    lwz     r28, 0x544(r26)
    fmr     f2, f1
    stw     r3, 0x11c(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r28, 0x2c
    stw     r30, 0x118(sp)
    stw     r30, 0x120(sp)
    lfd     f3, 0x118(sp)
    lfd     f0, 0x120(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r25, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r7, r6, r0
    lwz     r0, 0xc(r28)
    subf    r6, r24, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x12c(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x13c(sp)
    stw     r5, 0x14c(sp)
    stw     r0, 0x15c(sp)
    stw     r30, 0x128(sp)
    stw     r30, 0x138(sp)
    lfd     f1, 0x128(sp)
    stw     r30, 0x148(sp)
    lfd     f0, 0x138(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x158(sp)
    lfd     f1, 0x148(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x158(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x130(sp)
    stfd    f2, 0x140(sp)
    lwz     r25, 0x134(sp)
    stfd    f1, 0x150(sp)
    lwz     r24, 0x144(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0x160(sp)
    lwz     r6, 0x154(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0x164(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x17c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x16c(sp)
    stw     r6, 0x174(sp)
    stw     r0, 0x184(sp)
    stw     r30, 0x168(sp)
    stw     r30, 0x170(sp)
    lfd     f1, 0x168(sp)
    stw     r30, 0x178(sp)
    lfd     f0, 0x170(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x180(sp)
    lfd     f3, 0x178(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x180(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    li      r4, 0x14
    lwz     r3, 0x584(r26)
    stb     r29, 0xc(r3)
    lwz     r6, 0x574(r26)
    lwz     r0, 0x57c(r26)
    lwz     r5, 0x570(r26)
    lwz     r3, 0x578(r26)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r24, r5, r3
    xoris   r3, r24, 0x8000
    stw     r0, 0x10c(sp)
    lwz     r28, 0x56c(r26)
    fmr     f2, f1
    stw     r3, 0x114(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r28, 0x2c
    stw     r30, 0x110(sp)
    stw     r30, 0x108(sp)
    lfd     f3, 0x110(sp)
    lfd     f0, 0x108(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r7, r6, r0
    lwz     r0, 0xc(r28)
    subf    r6, r25, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r24, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x104(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0xf4(sp)
    stw     r5, 0xe4(sp)
    stw     r0, 0xd4(sp)
    stw     r30, 0x100(sp)
    stw     r30, 0xf0(sp)
    lfd     f1, 0x100(sp)
    stw     r30, 0xe0(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f3, f1, f4
    stw     r30, 0xd0(sp)
    lfd     f1, 0xe0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xd0(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0xf8(sp)
    stfd    f2, 0xe8(sp)
    lwz     r25, 0xfc(sp)
    stfd    f1, 0xd8(sp)
    lwz     r24, 0xec(sp)
    xoris   r0, r25, 0x8000
    stfd    f0, 0xc8(sp)
    lwz     r6, 0xdc(sp)
    xoris   r5, r24, 0x8000
    lwz     r7, 0xcc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xb4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xc4(sp)
    stw     r6, 0xbc(sp)
    stw     r0, 0xac(sp)
    stw     r30, 0xc0(sp)
    stw     r30, 0xb8(sp)
    lfd     f1, 0xc0(sp)
    stw     r30, 0xb0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f4
    stw     r30, 0xa8(sp)
    lfd     f3, 0xb0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xa8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r24
    lwz     r12, 0xc(r12)
    add     r5, r0, r25
    mtlr    r12
    blrl
    stb     r31, 0x4e(r28)
    li      r0, 0x4
    stw     r0, 0x10(r26)
    b       branch_0x80169180

branch_0x8016912c:
    li      r24, 0x1
    lwz     r3, 0x544(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    lwz     r3, 0x56c(r26)
    bl      update__7TExPaneFv
    and     r24, r24, r3
    clrlwi. r0, r24, 24
    beq-    branch_0x80169180
    lwz     r3, 0x544(r26)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x56c(r26)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r26)
    b       branch_0x80169180

branch_0x80169178:
    stw     r4, 0x1c(r26)
    li      r27, 0x0
branch_0x80169180:
    mr      r3, r27
    lmw     r24, 0x188(sp)
    lwz     r0, 0x1ac(sp)
    addi    sp, sp, 0x1a8
    mtlr    r0
    blr


.globl waitForAnyKeyBM__9TCardLoadF10TEProgress
waitForAnyKeyBM__9TCardLoadF10TEProgress: # 0x80169198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x198(sp)
    stmw    r25, 0x17c(sp)
    mr      r30, r3
    li      r31, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x801697f8
    bge-    branch_0x801691d8
    cmpwi   r0, 0x1
    beq-    branch_0x80169478
    bge-    branch_0x8016979c
    cmpwi   r0, 0x0
    bge-    branch_0x801691e8
    b       branch_0x80169a28

branch_0x801691d8:
    cmpwi   r0, 0x5
    beq-    branch_0x80169a20
    bge-    branch_0x80169a28
    b       branch_0x801699f4

branch_0x801691e8:
    lwz     r0, 0x1c(r30)
    lis     r3, 0x803c
    addi    r28, r3, 0x8f0
    lwz     r29, 0x4e0(r30)
    slwi    r0, r0, 2
    add     r4, r28, r0
    lwz     r3, 0xa0(r30)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r0, 0x1c(r30)
    lwz     r29, 0x4e4(r30)
    slwi    r0, r0, 2
    lwz     r3, 0xa0(r30)
    add     r4, r28, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r29, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r3, 0x4cc(r30)
    li      r29, 0x1
    li      r0, 0x0
    lwz     r3, 0x0(r3)
    lis     r28, 0x4330
    li      r4, 0x14
    stb     r29, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x530(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x540(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4e4(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4e8(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4ec(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4f0(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4f4(r30)
    stb     r0, 0xc(r3)
    lwz     r6, 0x4d4(r30)
    lwz     r0, 0x4dc(r30)
    lwz     r5, 0x4d0(r30)
    lwz     r3, 0x4d8(r30)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0x16c(sp)
    lwz     r27, 0x4cc(r30)
    fmr     f4, f3
    stw     r3, 0x174(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0x170(sp)
    stw     r28, 0x168(sp)
    lfd     f1, 0x170(sp)
    lfd     f0, 0x168(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r6, 0x4(r27)
    subf    r7, r5, r0
    lwz     r0, 0xc(r27)
    subf    r5, r25, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x164(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x154(sp)
    stw     r5, 0x144(sp)
    stw     r0, 0x134(sp)
    stw     r28, 0x160(sp)
    stw     r28, 0x150(sp)
    lfd     f1, 0x160(sp)
    stw     r28, 0x140(sp)
    lfd     f0, 0x150(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x130(sp)
    lfd     f1, 0x140(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x130(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x158(sp)
    stfd    f2, 0x148(sp)
    lwz     r26, 0x15c(sp)
    stfd    f1, 0x138(sp)
    lwz     r25, 0x14c(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x128(sp)
    lwz     r6, 0x13c(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x12c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x114(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x124(sp)
    stw     r6, 0x11c(sp)
    stw     r0, 0x10c(sp)
    stw     r28, 0x120(sp)
    stw     r28, 0x118(sp)
    lfd     f1, 0x120(sp)
    stw     r28, 0x110(sp)
    lfd     f0, 0x118(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x108(sp)
    lfd     f3, 0x110(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x108(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    stw     r29, 0x10(r30)
    b       branch_0x80169a28

branch_0x80169478:
    lwz     r3, 0x4cc(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80169a28
    lwz     r3, 0x4e4(r30)
    li      r4, 0x1
    stb     r4, 0xc(r3)
    lwz     r3, 0x4e8(r30)
    stb     r4, 0xc(r3)
    lbz     r0, 0xb0(r30)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r3, 0x4ec(r3)
    stb     r4, 0xc(r3)
    lwz     r0, 0x1c(r30)
    cmpwi   r0, 0x27
    bne-    branch_0x801694c8
    lbz     r0, 0xb1(r30)
    stb     r0, 0xb0(r30)
branch_0x801694c8:
    lbz     r0, 0xb0(r30)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r3, r3, 0x40
    add     r3, r30, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8016955c
    lwz     r25, 0x53c(r30)
    li      r4, 0x0
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x540(r30)
    li      r4, 0x0
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x540(r30)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x530(r30)
    stb     r0, 0xc(r3)
    b       branch_0x80169788

branch_0x8016955c:
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801695dc
    lwz     r25, 0x53c(r30)
    li      r4, 0x1b
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r25, 0x540(r30)
    li      r4, 0x1b
    lwz     r3, 0xa0(r30)
    bl      SMSGetMessageData__FPvUl
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r27, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x540(r30)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r0, 0xc(r3)
    lwz     r3, 0x530(r30)
    stb     r0, 0xc(r3)
    b       branch_0x80169788

branch_0x801695dc:
    lwz     r3, 0x520(r30)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0xc(r3)
    lwz     r3, 0x540(r30)
    stb     r0, 0xc(r3)
    lbz     r0, 0xb0(r30)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x5c
    lhzx    r0, r30, r0
    cmplwi  r0, 0x3e7
    ble-    branch_0x80169614
    li      r0, 0x3e7
branch_0x80169614:
    clrlwi  r28, r0, 16
    cmplwi  r28, 0x64
    bge-    branch_0x801696a0
    lis     r3, 0x6666
    lwz     r4, 0x520(r30)
    addi    r0, r3, 0x6667
    mulhw   r27, r0, r28
    li      r0, 0x0
    stb     r0, 0xc(r4)
    srawi   r0, r27, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    lwz     r3, 0x530(r30)
    li      r4, 0x1
    stb     r4, 0xc(r3)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x534(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x538(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r28
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x80169788

branch_0x801696a0:
    lis     r3, 0x51ec
    lwz     r4, 0x520(r30)
    subi    r0, r3, 0x7ae1
    mulhw   r0, r0, r28
    li      r3, 0x1
    stb     r3, 0xc(r4)
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    lwz     r3, 0x530(r30)
    li      r4, 0x0
    stb     r4, 0xc(r3)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x524(r30)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    stw     r28, 0x10c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x4970(rtoc)
    lis     r3, 0x6666
    stw     r0, 0x108(sp)
    addi    r0, r3, 0x6667
    lfs     f2, -0x4978(rtoc)
    lfd     f0, 0x108(sp)
    li      r5, 0x0
    lwz     r3, 0x528(r30)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x110(sp)
    lwz     r4, 0x114(sp)
    mulli   r4, r4, 0x64
    subf    r4, r4, r28
    clrlwi  r25, r4, 16
    mulhw   r27, r0, r25
    srawi   r0, r27, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r27, 2
    lwz     r3, 0x52c(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r25
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x80169788:
    li      r0, 0x0
    sth     r0, 0xb4(r30)
    li      r0, 0x2
    stw     r0, 0x10(r30)
    b       branch_0x80169a28

branch_0x8016979c:
    lha     r4, 0xb4(r30)
    cmpwi   r4, 0x258
    bgt-    branch_0x801697b8
    lwz     r3, 0x38(r30)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 25, 26
    beq-    branch_0x801697ec
branch_0x801697b8:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801697e0
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801697e0:
    li      r0, 0x3
    stw     r0, 0x10(r30)
    b       branch_0x80169a28

branch_0x801697ec:
    addi    r0, r4, 0x1
    sth     r0, 0xb4(r30)
    b       branch_0x80169a28

branch_0x801697f8:
    lwz     r6, 0x4d4(r30)
    lis     r28, 0x4330
    lwz     r0, 0x4dc(r30)
    li      r4, 0x14
    lwz     r5, 0x4d0(r30)
    lwz     r3, 0x4d8(r30)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x114(sp)
    lwz     r27, 0x4cc(r30)
    fmr     f2, f1
    stw     r3, 0x10c(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r27, 0x2c
    stw     r28, 0x108(sp)
    stw     r28, 0x110(sp)
    lfd     f3, 0x108(sp)
    lfd     f0, 0x110(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4f(r27)
    addi    r3, r27, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r27)
    lwz     r0, 0x10(r27)
    lwz     r5, 0x4(r27)
    subf    r7, r6, r0
    lwz     r0, 0xc(r27)
    subf    r6, r26, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x11c(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x12c(sp)
    stw     r5, 0x13c(sp)
    stw     r0, 0x14c(sp)
    stw     r28, 0x118(sp)
    stw     r28, 0x128(sp)
    lfd     f1, 0x118(sp)
    stw     r28, 0x138(sp)
    lfd     f0, 0x128(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x148(sp)
    lfd     f1, 0x138(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x148(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x120(sp)
    stfd    f2, 0x130(sp)
    lwz     r26, 0x124(sp)
    stfd    f1, 0x140(sp)
    lwz     r25, 0x134(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x150(sp)
    lwz     r6, 0x144(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x154(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x16c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x15c(sp)
    stw     r6, 0x164(sp)
    stw     r0, 0x174(sp)
    stw     r28, 0x158(sp)
    stw     r28, 0x160(sp)
    lfd     f1, 0x158(sp)
    stw     r28, 0x168(sp)
    lfd     f0, 0x160(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x170(sp)
    lfd     f3, 0x168(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x170(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r27)
    lwz     r4, 0x4(r27)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r27)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r29, 0x4e(r27)
    li      r4, 0x0
    li      r0, 0x4
    lwz     r3, 0x4e4(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x520(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x530(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x540(r30)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4e8(r30)
    stb     r4, 0xc(r3)
    sth     r4, 0xb4(r30)
    stw     r0, 0x10(r30)
    b       branch_0x80169a28

branch_0x801699f4:
    lwz     r3, 0x4cc(r30)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80169a28
    lwz     r3, 0x4cc(r30)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r30)
    b       branch_0x80169a28

branch_0x80169a20:
    li      r31, 0x0
    stw     r4, 0x1c(r30)
branch_0x80169a28:
    mr      r3, r31
    lmw     r25, 0x17c(sp)
    lwz     r0, 0x19c(sp)
    addi    sp, sp, 0x198
    mtlr    r0
    blr


.globl waitForAnyKey__9TCardLoadF10TEProgress
waitForAnyKey__9TCardLoadF10TEProgress: # 0x80169a40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stmw    r25, 0xcc(sp)
    mr      r27, r3
    li      r28, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x80169d74
    bge-    branch_0x80169a80
    cmpwi   r0, 0x1
    beq-    branch_0x80169ce8
    bge-    branch_0x80169d18
    cmpwi   r0, 0x0
    bge-    branch_0x80169a90
    b       branch_0x80169f84

branch_0x80169a80:
    cmpwi   r0, 0x5
    beq-    branch_0x80169f7c
    bge-    branch_0x80169f84
    b       branch_0x80169f50

branch_0x80169a90:
    lwz     r0, 0x1c(r27)
    lis     r3, 0x803c
    addi    r30, r3, 0x8f0
    lwz     r31, 0x59c(r27)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r3, 0xa0(r27)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r0, 0x1c(r27)
    lwz     r31, 0x5a0(r27)
    slwi    r0, r0, 2
    lwz     r3, 0xa0(r27)
    add     r4, r30, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r29, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r3, 0x5a0(r27)
    li      r0, 0x0
    li      r31, 0x1
    stb     r0, 0xc(r3)
    lis     r30, 0x4330
    li      r4, 0x14
    lwz     r3, 0x588(r27)
    lwz     r3, 0x0(r3)
    stb     r31, 0xc(r3)
    lwz     r6, 0x590(r27)
    lwz     r0, 0x598(r27)
    lwz     r5, 0x58c(r27)
    lwz     r3, 0x594(r27)
    subf    r25, r6, r0
    xoris   r0, r25, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r26, r5, r3
    xoris   r3, r26, 0x8000
    stw     r0, 0xbc(sp)
    lwz     r29, 0x588(r27)
    fmr     f4, f3
    stw     r3, 0xc4(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0xc0(sp)
    stw     r30, 0xb8(sp)
    lfd     f1, 0xc0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r6, 0x4(r29)
    subf    r7, r5, r0
    lwz     r0, 0xc(r29)
    subf    r5, r25, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r26, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0xb4(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0xa4(sp)
    stw     r5, 0x94(sp)
    stw     r0, 0x84(sp)
    stw     r30, 0xb0(sp)
    stw     r30, 0xa0(sp)
    lfd     f1, 0xb0(sp)
    stw     r30, 0x90(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x80(sp)
    lfd     f1, 0x90(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x80(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0xa8(sp)
    stfd    f2, 0x98(sp)
    lwz     r26, 0xac(sp)
    stfd    f1, 0x88(sp)
    lwz     r25, 0x9c(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0x78(sp)
    lwz     r6, 0x8c(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0x7c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x64(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x74(sp)
    stw     r6, 0x6c(sp)
    stw     r0, 0x5c(sp)
    stw     r30, 0x70(sp)
    stw     r30, 0x68(sp)
    lfd     f1, 0x70(sp)
    stw     r30, 0x60(sp)
    lfd     f0, 0x68(sp)
    fsubs   f1, f1, f4
    stw     r30, 0x58(sp)
    lfd     f3, 0x60(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x58(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    stw     r31, 0x10(r27)
    b       branch_0x80169f84

branch_0x80169ce8:
    lwz     r3, 0x588(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80169f84
    lwz     r4, 0x5a0(r27)
    li      r0, 0x1
    li      r3, 0x0
    stb     r0, 0xc(r4)
    li      r0, 0x2
    sth     r3, 0xb4(r27)
    stw     r0, 0x10(r27)
    b       branch_0x80169f84

branch_0x80169d18:
    lha     r4, 0xb4(r27)
    cmpwi   r4, 0x258
    bgt-    branch_0x80169d34
    lwz     r3, 0x38(r27)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 25, 26
    beq-    branch_0x80169d68
branch_0x80169d34:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80169d5c
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80169d5c:
    li      r0, 0x3
    stw     r0, 0x10(r27)
    b       branch_0x80169f84

branch_0x80169d68:
    addi    r0, r4, 0x1
    sth     r0, 0xb4(r27)
    b       branch_0x80169f84

branch_0x80169d74:
    lwz     r6, 0x590(r27)
    lis     r30, 0x4330
    lwz     r0, 0x598(r27)
    li      r4, 0x14
    lwz     r5, 0x58c(r27)
    lwz     r3, 0x594(r27)
    subf    r26, r6, r0
    xoris   r0, r26, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r25, r5, r3
    xoris   r3, r25, 0x8000
    stw     r0, 0x64(sp)
    lwz     r29, 0x588(r27)
    fmr     f2, f1
    stw     r3, 0x5c(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r29, 0x2c
    stw     r30, 0x58(sp)
    stw     r30, 0x60(sp)
    lfd     f3, 0x58(sp)
    lfd     f0, 0x60(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r29)
    addi    r3, r29, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r29)
    lwz     r0, 0x10(r29)
    lwz     r5, 0x4(r29)
    subf    r7, r6, r0
    lwz     r0, 0xc(r29)
    subf    r6, r26, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r25, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x6c(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x7c(sp)
    stw     r5, 0x8c(sp)
    stw     r0, 0x9c(sp)
    stw     r30, 0x68(sp)
    stw     r30, 0x78(sp)
    lfd     f1, 0x68(sp)
    stw     r30, 0x88(sp)
    lfd     f0, 0x78(sp)
    fsubs   f3, f1, f4
    stw     r30, 0x98(sp)
    lfd     f1, 0x88(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x98(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x70(sp)
    stfd    f2, 0x80(sp)
    lwz     r26, 0x74(sp)
    stfd    f1, 0x90(sp)
    lwz     r25, 0x84(sp)
    xoris   r0, r26, 0x8000
    stfd    f0, 0xa0(sp)
    lwz     r6, 0x94(sp)
    xoris   r5, r25, 0x8000
    lwz     r7, 0xa4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0xbc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0xac(sp)
    stw     r6, 0xb4(sp)
    stw     r0, 0xc4(sp)
    stw     r30, 0xa8(sp)
    stw     r30, 0xb0(sp)
    lfd     f1, 0xa8(sp)
    stw     r30, 0xb8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f4
    stw     r30, 0xc0(sp)
    lfd     f3, 0xb8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0xc0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r29)
    lwz     r4, 0x4(r29)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r29)
    add     r4, r4, r25
    lwz     r12, 0xc(r12)
    add     r5, r0, r26
    mtlr    r12
    blrl
    stb     r31, 0x4e(r29)
    li      r4, 0x0
    li      r0, 0x4
    lwz     r3, 0x5a0(r27)
    stb     r4, 0xc(r3)
    sth     r4, 0xb4(r27)
    stw     r0, 0x10(r27)
    b       branch_0x80169f84

branch_0x80169f50:
    lwz     r3, 0x588(r27)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80169f84
    lwz     r3, 0x588(r27)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r27)
    b       branch_0x80169f84

branch_0x80169f7c:
    li      r28, 0x0
    stw     r4, 0x1c(r27)
branch_0x80169f84:
    mr      r3, r28
    lmw     r25, 0xcc(sp)
    lwz     r0, 0xec(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi
waitForChoiceBM__9TCardLoadF10TEProgress10TEProgressi: # 0x80169f9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x468(sp)
    stmw    r22, 0x440(sp)
    mr      r31, r3
    addi    r22, r6, 0x0
    li      r30, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8016ae4c
    bge-    branch_0x80169fe0
    cmpwi   r0, 0x1
    beq-    branch_0x8016a338
    bge-    branch_0x8016a64c
    cmpwi   r0, 0x0
    bge-    branch_0x80169ff0
    b       branch_0x8016b0f4

branch_0x80169fe0:
    cmpwi   r0, 0x5
    beq-    branch_0x8016b0d8
    bge-    branch_0x8016b0f4
    b       branch_0x8016b0ac

branch_0x80169ff0:
    lwz     r0, 0x1c(r31)
    lis     r3, 0x803c
    addi    r24, r3, 0x8f0
    lwz     r25, 0x4e0(r31)
    slwi    r0, r0, 2
    add     r4, r24, r0
    lwz     r3, 0xa0(r31)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r23, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r23, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r0, 0x1c(r31)
    lwz     r25, 0x4e4(r31)
    slwi    r0, r0, 2
    lwz     r3, 0xa0(r31)
    add     r4, r24, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r23, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r23, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r3, 0x4cc(r31)
    cmpwi   r22, 0x1
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    bne-    branch_0x8016a0d4
    li      r0, -0x1
    stw     r0, 0x34c(sp)
    lis     r3, 0xff
    li      r4, 0x0
    lwz     r5, 0x4f8(r31)
    addi    r0, r3, 0xff
    lwz     r3, 0x34c(sp)
    lwz     r5, 0x0(r5)
    stw     r3, 0x13c(r5)
    lwz     r3, 0x4f8(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x344(sp)
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0x344(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lwz     r3, 0x4fc(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    b       branch_0x8016a124

branch_0x8016a0d4:
    li      r0, -0x1
    stw     r0, 0x33c(sp)
    lis     r3, 0xff
    li      r4, 0x0
    lwz     r5, 0x4fc(r31)
    addi    r0, r3, 0xff
    lwz     r3, 0x33c(sp)
    lwz     r5, 0x0(r5)
    stw     r3, 0x13c(r5)
    lwz     r3, 0x4fc(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x334(sp)
    lwz     r3, 0x4f8(r31)
    lwz     r0, 0x334(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lwz     r3, 0x4f8(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
branch_0x8016a124:
    lwz     r3, 0x520(r31)
    li      r0, 0x0
    lis     r27, 0x4330
    stb     r0, 0xc(r3)
    li      r4, 0x14
    lwz     r3, 0x530(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x540(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4e4(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4e8(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4ec(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4f0(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4f4(r31)
    stb     r0, 0xc(r3)
    lwz     r6, 0x4d4(r31)
    lwz     r0, 0x4dc(r31)
    lwz     r5, 0x4d0(r31)
    lwz     r3, 0x4d8(r31)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r23, r5, r3
    xoris   r3, r23, 0x8000
    stw     r0, 0x434(sp)
    lwz     r28, 0x4cc(r31)
    fmr     f4, f3
    stw     r3, 0x43c(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r28, 0x2c
    stw     r27, 0x438(sp)
    stw     r27, 0x430(sp)
    lfd     f1, 0x438(sp)
    lfd     f0, 0x430(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r6, 0x4(r28)
    subf    r7, r5, r0
    lwz     r0, 0xc(r28)
    subf    r5, r24, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r23, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x42c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x41c(sp)
    stw     r5, 0x40c(sp)
    stw     r0, 0x3fc(sp)
    stw     r27, 0x428(sp)
    stw     r27, 0x418(sp)
    lfd     f1, 0x428(sp)
    stw     r27, 0x408(sp)
    lfd     f0, 0x418(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3f8(sp)
    lfd     f1, 0x408(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3f8(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x420(sp)
    stfd    f2, 0x410(sp)
    lwz     r24, 0x424(sp)
    stfd    f1, 0x400(sp)
    lwz     r23, 0x414(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x3f0(sp)
    lwz     r6, 0x404(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x3f4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3dc(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3ec(sp)
    stw     r6, 0x3e4(sp)
    stw     r0, 0x3d4(sp)
    stw     r27, 0x3e8(sp)
    stw     r27, 0x3e0(sp)
    lfd     f1, 0x3e8(sp)
    stw     r27, 0x3d8(sp)
    lfd     f0, 0x3e0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3d0(sp)
    lfd     f3, 0x3d8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3d0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    extsb   r0, r22
    stb     r0, 0xb7(r31)
    stw     r26, 0x10(r31)
    b       branch_0x8016b0f4

branch_0x8016a338:
    lwz     r3, 0x4cc(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8016b0f4
    lwz     r3, 0x4e4(r31)
    li      r26, 0x1
    stb     r26, 0xc(r3)
    lwz     r3, 0x4f8(r31)
    lwz     r3, 0x0(r3)
    stb     r26, 0xc(r3)
    lwz     r3, 0x4fc(r31)
    lwz     r3, 0x0(r3)
    stb     r26, 0xc(r3)
    lwz     r3, 0x4e8(r31)
    stb     r26, 0xc(r3)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x4ec(r3)
    stb     r26, 0xc(r3)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r3, r3, 0x40
    add     r3, r31, r3
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8016a41c
    lwz     r23, 0x53c(r31)
    li      r4, 0x0
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r23, 0x540(r31)
    li      r4, 0x0
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x540(r31)
    li      r0, 0x0
    stb     r26, 0xc(r3)
    lwz     r3, 0x520(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x530(r31)
    stb     r0, 0xc(r3)
    b       branch_0x8016a638

branch_0x8016a41c:
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8016a498
    lwz     r23, 0x53c(r31)
    li      r4, 0x1b
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r23, 0x540(r31)
    li      r4, 0x1b
    lwz     r3, 0xa0(r31)
    bl      SMSGetMessageData__FPvUl
    addi    r22, r3, 0x0
    addi    r3, r23, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r22, 0x0
    li      r5, 0x14
    bl      strncpy
    lwz     r3, 0x540(r31)
    li      r0, 0x0
    stb     r26, 0xc(r3)
    lwz     r3, 0x520(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x530(r31)
    stb     r0, 0xc(r3)
    b       branch_0x8016a638

branch_0x8016a498:
    lwz     r3, 0x540(r31)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lbz     r0, 0xb0(r31)
    extsb   r0, r0
    slwi    r3, r0, 5
    addi    r0, r3, 0x5c
    lhzx    r0, r31, r0
    cmplwi  r0, 0x3e7
    ble-    branch_0x8016a4c4
    li      r0, 0x3e7
branch_0x8016a4c4:
    clrlwi  r26, r0, 16
    cmplwi  r26, 0x64
    bge-    branch_0x8016a550
    lis     r3, 0x6666
    lwz     r4, 0x520(r31)
    addi    r0, r3, 0x6667
    mulhw   r22, r0, r26
    li      r0, 0x0
    stb     r0, 0xc(r4)
    srawi   r0, r22, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    lwz     r3, 0x530(r31)
    li      r4, 0x1
    stb     r4, 0xc(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x534(r31)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r22, 2
    lwz     r3, 0x538(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r26
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8016a638

branch_0x8016a550:
    lis     r3, 0x51ec
    lwz     r4, 0x520(r31)
    subi    r0, r3, 0x7ae1
    mulhw   r0, r0, r26
    li      r3, 0x1
    stb     r3, 0xc(r4)
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    lwz     r3, 0x530(r31)
    li      r4, 0x0
    stb     r4, 0xc(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0xc8(r3)
    li      r5, 0x0
    lwz     r3, 0x524(r31)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    stw     r26, 0x3d4(sp)
    lis     r0, 0x4330
    lfd     f1, -0x4970(rtoc)
    lis     r3, 0x6666
    stw     r0, 0x3d0(sp)
    addi    r0, r3, 0x6667
    lfs     f2, -0x4978(rtoc)
    lfd     f0, 0x3d0(sp)
    li      r5, 0x0
    lwz     r3, 0x528(r31)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x3d8(sp)
    lwz     r4, 0x3dc(sp)
    mulli   r4, r4, 0x64
    subf    r4, r4, r26
    clrlwi  r23, r4, 16
    mulhw   r22, r0, r23
    srawi   r0, r22, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xc8(r4)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r22, 2
    lwz     r3, 0x52c(r31)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r23
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8016a638:
    li      r0, 0x0
    stw     r0, 0xc4(r31)
    li      r0, 0x2
    stw     r0, 0x10(r31)
    b       branch_0x8016b0f4

branch_0x8016a64c:
    lwz     r3, 0x38(r31)
    lbz     r29, 0xb7(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8016a66c
    li      r0, 0x0
    stb     r0, 0xb7(r31)
    b       branch_0x8016a6fc

branch_0x8016a66c:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8016a680
    li      r0, 0x1
    stb     r0, 0xb7(r31)
    b       branch_0x8016a6fc

branch_0x8016a680:
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x8016a6bc
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016a6b0
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8016a6b0:
    li      r0, 0x3
    stw     r0, 0x10(r31)
    b       branch_0x8016a6fc

branch_0x8016a6bc:
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x8016a6fc
    li      r0, 0x1
    stb     r0, 0xb7(r31)
    li      r4, 0x481d
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016a6f4
    li      r3, 0x481d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8016a6f4:
    li      r0, 0x3
    stw     r0, 0x10(r31)
branch_0x8016a6fc:
    lwz     r0, 0xc4(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x8016aa6c
    lbz     r0, 0xb7(r31)
    lis     r27, 0x4330
    lfd     f5, -0x4998(rtoc)
    li      r4, 0x28
    extsb   r0, r0
    slwi    r3, r0, 4
    lfs     f2, -0x4990(rtoc)
    addi    r8, r3, 0x500
    add     r8, r31, r8
    slwi    r0, r0, 2
    lwz     r7, 0x4(r8)
    add     r3, r31, r0
    lwz     r5, 0xc(r8)
    lwz     r6, 0x0(r8)
    lwz     r0, 0x8(r8)
    subf    r23, r7, r5
    xoris   r5, r23, 0x8000
    lwz     r28, 0x4f8(r3)
    subf    r22, r6, r0
    xoris   r0, r22, 0x8000
    stw     r5, 0x3d4(sp)
    addi    r3, r28, 0x2c
    stw     r0, 0x3e4(sp)
    stw     r27, 0x3d0(sp)
    stw     r27, 0x3e0(sp)
    lfd     f1, 0x3d0(sp)
    lfd     f0, 0x3e0(sp)
    fsubs   f1, f1, f5
    stw     r0, 0x404(sp)
    fsubs   f0, f0, f5
    stw     r5, 0x40c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x400(sp)
    fctiwz  f3, f1
    stw     r27, 0x408(sp)
    fctiwz  f2, f0
    lfd     f0, 0x408(sp)
    stfd    f3, 0x3d8(sp)
    lfd     f1, 0x400(sp)
    fsubs   f4, f0, f5
    stfd    f2, 0x3e8(sp)
    lwz     r24, 0x3dc(sp)
    fsubs   f3, f1, f5
    lwz     r25, 0x3ec(sp)
    xoris   r0, r24, 0x8000
    xoris   r5, r25, 0x8000
    stw     r0, 0x3fc(sp)
    stw     r5, 0x3f4(sp)
    stw     r27, 0x3f0(sp)
    stw     r27, 0x3f8(sp)
    lfd     f1, 0x3f0(sp)
    lfd     f0, 0x3f8(sp)
    fsubs   f1, f1, f5
    fsubs   f2, f0, f5
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r8, r6, r0
    lwz     r0, 0xc(r28)
    subf    r7, r23, r8
    lfd     f4, -0x4998(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r6, r22, r0
    subf    r5, r24, r8
    subf    r0, r25, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x414(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x424(sp)
    stw     r5, 0x434(sp)
    stw     r0, 0x3cc(sp)
    stw     r27, 0x410(sp)
    stw     r27, 0x420(sp)
    lfd     f1, 0x410(sp)
    stw     r27, 0x430(sp)
    lfd     f0, 0x420(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3c8(sp)
    lfd     f1, 0x430(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3c8(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x418(sp)
    stfd    f2, 0x428(sp)
    lwz     r23, 0x41c(sp)
    stfd    f1, 0x438(sp)
    lwz     r22, 0x42c(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x3c0(sp)
    lwz     r6, 0x43c(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3c4(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3ac(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3bc(sp)
    stw     r6, 0x3b4(sp)
    stw     r0, 0x3a4(sp)
    stw     r27, 0x3b8(sp)
    stw     r27, 0x3b0(sp)
    lfd     f1, 0x3b8(sp)
    stw     r27, 0x3a8(sp)
    lfd     f0, 0x3b0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x3a0(sp)
    lfd     f3, 0x3a8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3a0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    addi    r3, sp, 0x368
    lbz     r0, 0xb7(r31)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x4f8(r4)
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x368(sp)
    addi    r4, sp, 0x35c
    lwz     r0, 0x370(sp)
    li      r5, 0x1fa
    lwz     r8, 0x36c(sp)
    subf    r3, r6, r0
    lwz     r0, 0x374(sp)
    xoris   r7, r3, 0x8000
    lfd     f4, -0x4998(rtoc)
    xoris   r6, r6, 0x8000
    stw     r7, 0x39c(sp)
    subf    r0, r8, r0
    lfs     f5, -0x49a0(rtoc)
    stw     r6, 0x394(sp)
    xoris   r7, r0, 0x8000
    xoris   r0, r8, 0x8000
    lfs     f0, -0x49a4(rtoc)
    stw     r7, 0x38c(sp)
    lwz     r3, -0x5fdc(r13)
    li      r6, 0x0
    stw     r27, 0x398(sp)
    li      r7, 0x0
    stw     r27, 0x390(sp)
    lfd     f2, 0x398(sp)
    lfd     f1, 0x390(sp)
    stw     r0, 0x384(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r27, 0x388(sp)
    fmadds  f3, f5, f2, f1
    stw     r27, 0x380(sp)
    lfd     f2, 0x388(sp)
    lfd     f1, 0x380(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x35c(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x360(sp)
    stfs    f0, 0x364(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r4, -0x5fdc(r13)
    li      r3, 0x0
    li      r0, 0x888
    lwz     r4, 0xc8(r4)
    stw     r4, 0xac(r31)
    lwz     r5, 0xac(r31)
    sth     r3, 0x16c(r5)
    addi    r6, r5, 0x124
    sth     r3, 0x16e(r5)
    sth     r0, 0x170(r5)
    lha     r3, 0x16c(r5)
    lha     r4, 0x16e(r5)
    lha     r5, 0x170(r5)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lwz     r3, 0xac(r31)
    lfs     f0, -0x498c(rtoc)
    stfs    f0, 0x190(r3)
    lfs     f0, -0x4988(rtoc)
    stfs    f0, 0x194(r3)
    lfs     f0, -0x4984(rtoc)
    stfs    f0, 0x198(r3)
    b       branch_0x8016acbc

branch_0x8016aa6c:
    cmpwi   r0, 0x2c
    bne-    branch_0x8016acbc
    lbz     r0, 0xb7(r31)
    lis     r27, 0x4330
    lfd     f4, -0x4998(rtoc)
    li      r4, 0x28
    extsb   r0, r0
    slwi    r3, r0, 4
    lfs     f2, -0x4990(rtoc)
    addi    r8, r3, 0x500
    add     r8, r31, r8
    lwz     r7, 0x4(r8)
    slwi    r0, r0, 2
    lwz     r6, 0xc(r8)
    add     r3, r31, r0
    lwz     r5, 0x0(r8)
    lwz     r0, 0x8(r8)
    subf    r26, r7, r6
    xoris   r6, r26, 0x8000
    lwz     r23, 0x4f8(r3)
    subf    r22, r5, r0
    xoris   r0, r22, 0x8000
    stw     r6, 0x384(sp)
    addi    r3, r23, 0x2c
    stw     r0, 0x394(sp)
    stw     r27, 0x380(sp)
    stw     r27, 0x390(sp)
    lfd     f1, 0x380(sp)
    lfd     f0, 0x390(sp)
    fsubs   f1, f1, f4
    stw     r0, 0x3a4(sp)
    fsubs   f0, f0, f4
    stw     r6, 0x3ac(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x3a0(sp)
    fctiwz  f3, f1
    stw     r27, 0x3a8(sp)
    fctiwz  f2, f0
    lfd     f1, 0x3a0(sp)
    stfd    f3, 0x388(sp)
    lfd     f0, 0x3a8(sp)
    fsubs   f1, f1, f4
    stfd    f2, 0x398(sp)
    lwz     r25, 0x38c(sp)
    fsubs   f2, f0, f4
    lwz     r24, 0x39c(sp)
    xoris   r0, r25, 0x8000
    xoris   r5, r24, 0x8000
    stw     r0, 0x3bc(sp)
    stw     r5, 0x3b4(sp)
    stw     r27, 0x3b0(sp)
    stw     r27, 0x3b8(sp)
    lfd     f3, 0x3b0(sp)
    lfd     f0, 0x3b8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r28, 0x1
    stb     r28, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r8, r6, r0
    lwz     r0, 0xc(r23)
    subf    r7, r25, r8
    lfd     f4, -0x4998(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r6, r24, r0
    subf    r5, r26, r8
    subf    r0, r22, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x3c4(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x3d4(sp)
    stw     r5, 0x3e4(sp)
    stw     r0, 0x3f4(sp)
    stw     r27, 0x3c0(sp)
    stw     r27, 0x3d0(sp)
    lfd     f1, 0x3c0(sp)
    stw     r27, 0x3e0(sp)
    lfd     f0, 0x3d0(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x3f0(sp)
    lfd     f1, 0x3e0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3f0(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x3c8(sp)
    stfd    f2, 0x3d8(sp)
    lwz     r24, 0x3cc(sp)
    stfd    f1, 0x3e8(sp)
    lwz     r22, 0x3dc(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x3f8(sp)
    lwz     r6, 0x3ec(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3fc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x414(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x404(sp)
    stw     r6, 0x40c(sp)
    stw     r0, 0x41c(sp)
    stw     r27, 0x400(sp)
    stw     r27, 0x408(sp)
    lfd     f1, 0x400(sp)
    stw     r27, 0x410(sp)
    lfd     f0, 0x408(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x418(sp)
    lfd     f3, 0x410(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x418(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r28, 0x4e(r23)
branch_0x8016acbc:
    lwz     r0, 0xc4(r31)
    cmpwi   r0, 0x28
    bge-    branch_0x8016accc
    b       branch_0x8016acd0

branch_0x8016accc:
    subfic  r0, r0, 0x50
branch_0x8016acd0:
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4998(rtoc)
    stw     r0, 0x384(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4980(rtoc)
    stw     r0, 0x380(sp)
    lfs     f0, -0x497c(rtoc)
    lfd     f1, 0x380(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x388(sp)
    lwz     r0, 0x38c(sp)
    slwi    r3, r0, 24
    addis   r3, r3, 0xff
    addi    r0, r3, 0xff
    stw     r0, 0x318(sp)
    lbz     r3, 0xb7(r31)
    lwz     r0, 0x318(sp)
    extsb   r3, r3
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0x4f8(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lbz     r0, 0xb7(r31)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x4f8(r3)
    bl      update__7TExPaneFv
    lwz     r3, 0xc4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0xc4(r31)
    lwz     r0, 0xc4(r31)
    cmpwi   r0, 0x50
    ble-    branch_0x8016ad70
    li      r0, 0x0
    stw     r0, 0xc4(r31)
branch_0x8016ad70:
    lbz     r0, 0xb7(r31)
    extsb   r3, r29
    extsb   r0, r0
    cmpw    r3, r0
    beq-    branch_0x8016b0f4
    lwz     r4, 0xac(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8016ad98
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x8016ad98:
    li      r3, 0x0
    extsb   r4, r29
    stw     r3, 0xc4(r31)
    slwi    r0, r4, 2
    add     r23, r31, r0
    lwzu    r3, 0x4f8(r23)
    slwi    r0, r4, 4
    add     r5, r31, r0
    lwz     r6, 0x0(r3)
    lwz     r3, 0x500(r5)
    li      r4, 0x481e
    lwz     r0, 0x504(r5)
    stw     r3, 0x14(r6)
    stw     r0, 0x18(r6)
    lwz     r3, 0x508(r5)
    lwz     r0, 0x50c(r5)
    stw     r3, 0x1c(r6)
    stw     r0, 0x20(r6)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016ae04
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8016ae04:
    li      r0, -0x1
    stw     r0, 0x310(sp)
    lis     r3, 0xff
    addi    r0, r3, 0xff
    lwz     r4, 0x0(r23)
    lwz     r3, 0x310(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x308(sp)
    lbz     r3, 0xb7(r31)
    lwz     r0, 0x308(sp)
    extsb   r3, r3
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0x4f8(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x8016b0f4

branch_0x8016ae4c:
    lwz     r6, 0x4d4(r31)
    lis     r28, 0x4330
    lwz     r0, 0x4dc(r31)
    li      r4, 0x14
    lwz     r5, 0x4d0(r31)
    lwz     r3, 0x4d8(r31)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r22, r5, r3
    xoris   r3, r22, 0x8000
    stw     r0, 0x38c(sp)
    lwz     r23, 0x4cc(r31)
    fmr     f2, f1
    stw     r3, 0x384(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r23, 0x2c
    stw     r28, 0x380(sp)
    stw     r28, 0x388(sp)
    lfd     f3, 0x380(sp)
    lfd     f0, 0x388(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r22, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r29, 0x1
    stb     r29, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r7, r6, r0
    lwz     r0, 0xc(r23)
    subf    r6, r24, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r22, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x394(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x3a4(sp)
    stw     r5, 0x3b4(sp)
    stw     r0, 0x3c4(sp)
    stw     r28, 0x390(sp)
    stw     r28, 0x3a0(sp)
    lfd     f1, 0x390(sp)
    stw     r28, 0x3b0(sp)
    lfd     f0, 0x3a0(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x3c0(sp)
    lfd     f1, 0x3b0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3c0(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x398(sp)
    stfd    f2, 0x3a8(sp)
    lwz     r24, 0x39c(sp)
    stfd    f1, 0x3b8(sp)
    lwz     r22, 0x3ac(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x3c8(sp)
    lwz     r6, 0x3bc(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x3cc(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x3e4(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x3d4(sp)
    stw     r6, 0x3dc(sp)
    stw     r0, 0x3ec(sp)
    stw     r28, 0x3d0(sp)
    stw     r28, 0x3d8(sp)
    lfd     f1, 0x3d0(sp)
    stw     r28, 0x3e0(sp)
    lfd     f0, 0x3d8(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x3e8(sp)
    lfd     f3, 0x3e0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x3e8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r29, 0x4e(r23)
    li      r4, 0x0
    li      r0, 0x4
    lwz     r3, 0x4e8(r31)
    stb     r4, 0xc(r3)
    lwz     r3, 0x520(r31)
    stb     r4, 0xc(r3)
    lwz     r3, 0x530(r31)
    stb     r4, 0xc(r3)
    lwz     r3, 0x540(r31)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4e4(r31)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4f8(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4fc(r31)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4f8(r31)
    lwz     r4, 0x500(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x504(r31)
    stw     r4, 0x14(r5)
    stw     r3, 0x18(r5)
    lwz     r4, 0x508(r31)
    lwz     r3, 0x50c(r31)
    stw     r4, 0x1c(r5)
    stw     r3, 0x20(r5)
    lwz     r3, 0x4fc(r31)
    lwz     r4, 0x510(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x514(r31)
    stw     r4, 0x14(r5)
    stw     r3, 0x18(r5)
    lwz     r4, 0x518(r31)
    lwz     r3, 0x51c(r31)
    stw     r4, 0x1c(r5)
    stw     r3, 0x20(r5)
    stw     r0, 0x10(r31)
    b       branch_0x8016b0f4

branch_0x8016b0ac:
    lwz     r3, 0x4cc(r31)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8016b0f4
    lwz     r3, 0x4cc(r31)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r31)
    b       branch_0x8016b0f4

branch_0x8016b0d8:
    lbz     r0, 0xb7(r31)
    extsb.  r0, r0
    bne-    branch_0x8016b0ec
    stw     r4, 0x1c(r31)
    b       branch_0x8016b0f0

branch_0x8016b0ec:
    stw     r5, 0x1c(r31)
branch_0x8016b0f0:
    lbz     r30, 0xb7(r31)
branch_0x8016b0f4:
    mr      r3, r30
    lmw     r22, 0x440(sp)
    lwz     r0, 0x46c(sp)
    addi    sp, sp, 0x468
    mtlr    r0
    blr


.globl waitForChoice__9TCardLoadF10TEProgress10TEProgressi
waitForChoice__9TCardLoadF10TEProgress10TEProgressi: # 0x8016b10c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x3a8(sp)
    stmw    r22, 0x380(sp)
    mr      r29, r3
    addi    r22, r6, 0x0
    li      r30, -0x1
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x8016bccc
    bge-    branch_0x8016b150
    cmpwi   r0, 0x1
    beq-    branch_0x8016b450
    bge-    branch_0x8016b498
    cmpwi   r0, 0x0
    bge-    branch_0x8016b160
    b       branch_0x8016bf6c

branch_0x8016b150:
    cmpwi   r0, 0x5
    beq-    branch_0x8016bf50
    bge-    branch_0x8016bf6c
    b       branch_0x8016bf24

branch_0x8016b160:
    lwz     r0, 0x1c(r29)
    lis     r3, 0x803c
    addi    r24, r3, 0x8f0
    lwz     r25, 0x49c(r29)
    slwi    r0, r0, 2
    add     r4, r24, r0
    lwz     r3, 0xa0(r29)
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r23, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r23, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r0, 0x1c(r29)
    lwz     r25, 0x4a0(r29)
    slwi    r0, r0, 2
    lwz     r3, 0xa0(r29)
    add     r4, r24, r0
    lwz     r0, 0x0(r4)
    clrlwi  r4, r0, 16
    bl      SMSGetMessageData__FPvUl
    addi    r23, r3, 0x0
    addi    r3, r25, 0x0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r4, r23, 0x0
    li      r5, 0x400
    bl      strncpy
    lwz     r3, 0x488(r29)
    cmpwi   r22, 0x1
    li      r0, 0x1
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    bne-    branch_0x8016b228
    li      r0, -0x1
    stw     r0, 0x290(sp)
    lis     r3, 0xff
    addi    r0, r3, 0xff
    lwz     r4, 0x4a4(r29)
    lwz     r3, 0x290(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x288(sp)
    lwz     r3, 0x4a8(r29)
    lwz     r0, 0x288(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x8016b25c

branch_0x8016b228:
    li      r0, -0x1
    stw     r0, 0x280(sp)
    lis     r3, 0xff
    addi    r0, r3, 0xff
    lwz     r4, 0x4a8(r29)
    lwz     r3, 0x280(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x278(sp)
    lwz     r3, 0x4a4(r29)
    lwz     r0, 0x278(sp)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
branch_0x8016b25c:
    lwz     r3, 0x4a0(r29)
    li      r0, 0x0
    lis     r27, 0x4330
    stb     r0, 0xc(r3)
    li      r4, 0x14
    lwz     r3, 0x4a4(r29)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4a8(r29)
    lwz     r3, 0x0(r3)
    stb     r0, 0xc(r3)
    lwz     r6, 0x490(r29)
    lwz     r0, 0x498(r29)
    lwz     r5, 0x48c(r29)
    lwz     r3, 0x494(r29)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f3, -0x49a4(rtoc)
    subf    r23, r5, r3
    xoris   r3, r23, 0x8000
    stw     r0, 0x374(sp)
    lwz     r28, 0x488(r29)
    fmr     f4, f3
    stw     r3, 0x37c(sp)
    lfd     f2, -0x4998(rtoc)
    addi    r3, r28, 0x2c
    stw     r27, 0x378(sp)
    stw     r27, 0x370(sp)
    lfd     f1, 0x378(sp)
    lfd     f0, 0x370(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x14
    lwz     r5, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r6, 0x4(r28)
    subf    r7, r5, r0
    lwz     r0, 0xc(r28)
    subf    r5, r24, r7
    lfd     f4, -0x4998(rtoc)
    subf    r6, r6, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r23, r6
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x36c(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x35c(sp)
    stw     r5, 0x34c(sp)
    stw     r0, 0x33c(sp)
    stw     r27, 0x368(sp)
    stw     r27, 0x358(sp)
    lfd     f1, 0x368(sp)
    stw     r27, 0x348(sp)
    lfd     f0, 0x358(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x338(sp)
    lfd     f1, 0x348(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x338(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x360(sp)
    stfd    f2, 0x350(sp)
    lwz     r24, 0x364(sp)
    stfd    f1, 0x340(sp)
    lwz     r23, 0x354(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x330(sp)
    lwz     r6, 0x344(sp)
    xoris   r5, r23, 0x8000
    lwz     r7, 0x334(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x31c(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x32c(sp)
    stw     r6, 0x324(sp)
    stw     r0, 0x314(sp)
    stw     r27, 0x328(sp)
    stw     r27, 0x320(sp)
    lfd     f1, 0x328(sp)
    stw     r27, 0x318(sp)
    lfd     f0, 0x320(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x310(sp)
    lfd     f3, 0x318(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x310(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r23
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    extsb   r0, r22
    stb     r0, 0xb7(r29)
    stw     r26, 0x10(r29)
    b       branch_0x8016bf6c

branch_0x8016b450:
    lwz     r3, 0x488(r29)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8016bf6c
    lwz     r4, 0x4a0(r29)
    li      r5, 0x1
    li      r3, 0x0
    stb     r5, 0xc(r4)
    li      r0, 0x2
    lwz     r4, 0x4a4(r29)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    lwz     r4, 0x4a8(r29)
    lwz     r4, 0x0(r4)
    stb     r5, 0xc(r4)
    stw     r3, 0xc4(r29)
    stw     r0, 0x10(r29)
    b       branch_0x8016bf6c

branch_0x8016b498:
    lwz     r3, 0x38(r29)
    lbz     r31, 0xb7(r29)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8016b4b8
    li      r0, 0x0
    stb     r0, 0xb7(r29)
    b       branch_0x8016b57c

branch_0x8016b4b8:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8016b4cc
    li      r0, 0x1
    stb     r0, 0xb7(r29)
    b       branch_0x8016b57c

branch_0x8016b4cc:
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x8016b53c
    extsb.  r0, r31
    bne-    branch_0x8016b508
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016b530
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x8016b530

branch_0x8016b508:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016b530
    li      r3, 0x481d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8016b530:
    li      r0, 0x3
    stw     r0, 0x10(r29)
    b       branch_0x8016b57c

branch_0x8016b53c:
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x8016b57c
    li      r0, 0x1
    stb     r0, 0xb7(r29)
    li      r4, 0x481d
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016b574
    li      r3, 0x481d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8016b574:
    li      r0, 0x3
    stw     r0, 0x10(r29)
branch_0x8016b57c:
    lwz     r0, 0xc4(r29)
    cmpwi   r0, 0x4
    bne-    branch_0x8016b8ec
    lbz     r0, 0xb7(r29)
    lis     r27, 0x4330
    lfd     f5, -0x4998(rtoc)
    li      r4, 0x28
    extsb   r0, r0
    slwi    r3, r0, 4
    lfs     f2, -0x4990(rtoc)
    addi    r8, r3, 0x4ac
    add     r8, r29, r8
    slwi    r0, r0, 2
    lwz     r7, 0x4(r8)
    add     r3, r29, r0
    lwz     r5, 0xc(r8)
    lwz     r6, 0x0(r8)
    lwz     r0, 0x8(r8)
    subf    r23, r7, r5
    xoris   r5, r23, 0x8000
    lwz     r28, 0x4a4(r3)
    subf    r22, r6, r0
    xoris   r0, r22, 0x8000
    stw     r5, 0x314(sp)
    addi    r3, r28, 0x2c
    stw     r0, 0x324(sp)
    stw     r27, 0x310(sp)
    stw     r27, 0x320(sp)
    lfd     f1, 0x310(sp)
    lfd     f0, 0x320(sp)
    fsubs   f1, f1, f5
    stw     r0, 0x344(sp)
    fsubs   f0, f0, f5
    stw     r5, 0x34c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x340(sp)
    fctiwz  f3, f1
    stw     r27, 0x348(sp)
    fctiwz  f2, f0
    lfd     f0, 0x348(sp)
    stfd    f3, 0x318(sp)
    lfd     f1, 0x340(sp)
    fsubs   f4, f0, f5
    stfd    f2, 0x328(sp)
    lwz     r24, 0x31c(sp)
    fsubs   f3, f1, f5
    lwz     r25, 0x32c(sp)
    xoris   r0, r24, 0x8000
    xoris   r5, r25, 0x8000
    stw     r0, 0x33c(sp)
    stw     r5, 0x334(sp)
    stw     r27, 0x330(sp)
    stw     r27, 0x338(sp)
    lfd     f1, 0x330(sp)
    lfd     f0, 0x338(sp)
    fsubs   f1, f1, f5
    fsubs   f2, f0, f5
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    addi    r4, r22, 0x0
    addi    r5, r23, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r26, 0x1
    stb     r26, 0x4f(r28)
    addi    r3, r28, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r28)
    lwz     r0, 0x10(r28)
    lwz     r5, 0x4(r28)
    subf    r8, r6, r0
    lwz     r0, 0xc(r28)
    subf    r7, r23, r8
    lfd     f4, -0x4998(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r6, r22, r0
    subf    r5, r24, r8
    subf    r0, r25, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x354(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x364(sp)
    stw     r5, 0x374(sp)
    stw     r0, 0x30c(sp)
    stw     r27, 0x350(sp)
    stw     r27, 0x360(sp)
    lfd     f1, 0x350(sp)
    stw     r27, 0x370(sp)
    lfd     f0, 0x360(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x308(sp)
    lfd     f1, 0x370(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x308(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x358(sp)
    stfd    f2, 0x368(sp)
    lwz     r23, 0x35c(sp)
    stfd    f1, 0x378(sp)
    lwz     r22, 0x36c(sp)
    xoris   r0, r23, 0x8000
    stfd    f0, 0x300(sp)
    lwz     r6, 0x37c(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x304(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x2ec(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x2fc(sp)
    stw     r6, 0x2f4(sp)
    stw     r0, 0x2e4(sp)
    stw     r27, 0x2f8(sp)
    stw     r27, 0x2f0(sp)
    lfd     f1, 0x2f8(sp)
    stw     r27, 0x2e8(sp)
    lfd     f0, 0x2f0(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x2e0(sp)
    lfd     f3, 0x2e8(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x2e0(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r28)
    lwz     r4, 0x4(r28)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r28)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r23
    mtlr    r12
    blrl
    stb     r26, 0x4e(r28)
    addi    r3, sp, 0x2ac
    lbz     r0, 0xb7(r29)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r4, 0x4a4(r4)
    lwz     r4, 0x0(r4)
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r6, 0x2ac(sp)
    addi    r4, sp, 0x2a0
    lwz     r0, 0x2b4(sp)
    li      r5, 0x1fa
    lwz     r8, 0x2b0(sp)
    subf    r3, r6, r0
    lwz     r0, 0x2b8(sp)
    xoris   r7, r3, 0x8000
    lfd     f4, -0x4998(rtoc)
    xoris   r6, r6, 0x8000
    stw     r7, 0x2dc(sp)
    subf    r0, r8, r0
    lfs     f5, -0x49a0(rtoc)
    stw     r6, 0x2d4(sp)
    xoris   r7, r0, 0x8000
    xoris   r0, r8, 0x8000
    lfs     f0, -0x49a4(rtoc)
    stw     r7, 0x2cc(sp)
    lwz     r3, -0x5fdc(r13)
    li      r6, 0x0
    stw     r27, 0x2d8(sp)
    li      r7, 0x0
    stw     r27, 0x2d0(sp)
    lfd     f2, 0x2d8(sp)
    lfd     f1, 0x2d0(sp)
    stw     r0, 0x2c4(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stw     r27, 0x2c8(sp)
    fmadds  f3, f5, f2, f1
    stw     r27, 0x2c0(sp)
    lfd     f2, 0x2c8(sp)
    lfd     f1, 0x2c0(sp)
    fsubs   f2, f2, f4
    fsubs   f1, f1, f4
    stfs    f3, 0x2a0(sp)
    fmadds  f1, f5, f2, f1
    stfs    f1, 0x2a4(sp)
    stfs    f0, 0x2a8(sp)
    bl      createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    lwz     r4, -0x5fdc(r13)
    li      r3, 0x0
    li      r0, 0x888
    lwz     r4, 0xc8(r4)
    stw     r4, 0xac(r29)
    lwz     r5, 0xac(r29)
    sth     r3, 0x16c(r5)
    addi    r6, r5, 0x124
    sth     r3, 0x16e(r5)
    sth     r0, 0x170(r5)
    lha     r3, 0x16c(r5)
    lha     r4, 0x16e(r5)
    lha     r5, 0x170(r5)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lwz     r3, 0xac(r29)
    lfs     f0, -0x498c(rtoc)
    stfs    f0, 0x190(r3)
    lfs     f0, -0x4988(rtoc)
    stfs    f0, 0x194(r3)
    lfs     f0, -0x4984(rtoc)
    stfs    f0, 0x198(r3)
    b       branch_0x8016bb3c

branch_0x8016b8ec:
    cmpwi   r0, 0x2c
    bne-    branch_0x8016bb3c
    lbz     r0, 0xb7(r29)
    lis     r27, 0x4330
    lfd     f4, -0x4998(rtoc)
    li      r4, 0x28
    extsb   r0, r0
    slwi    r3, r0, 4
    lfs     f2, -0x4990(rtoc)
    addi    r8, r3, 0x4ac
    add     r8, r29, r8
    lwz     r7, 0x4(r8)
    slwi    r0, r0, 2
    lwz     r6, 0xc(r8)
    add     r3, r29, r0
    lwz     r5, 0x0(r8)
    lwz     r0, 0x8(r8)
    subf    r26, r7, r6
    xoris   r6, r26, 0x8000
    lwz     r23, 0x4a4(r3)
    subf    r22, r5, r0
    xoris   r0, r22, 0x8000
    stw     r6, 0x2c4(sp)
    addi    r3, r23, 0x2c
    stw     r0, 0x2d4(sp)
    stw     r27, 0x2c0(sp)
    stw     r27, 0x2d0(sp)
    lfd     f1, 0x2c0(sp)
    lfd     f0, 0x2d0(sp)
    fsubs   f1, f1, f4
    stw     r0, 0x2e4(sp)
    fsubs   f0, f0, f4
    stw     r6, 0x2ec(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f2, f0
    stw     r27, 0x2e0(sp)
    fctiwz  f3, f1
    stw     r27, 0x2e8(sp)
    fctiwz  f2, f0
    lfd     f1, 0x2e0(sp)
    stfd    f3, 0x2c8(sp)
    lfd     f0, 0x2e8(sp)
    fsubs   f1, f1, f4
    stfd    f2, 0x2d8(sp)
    lwz     r25, 0x2cc(sp)
    fsubs   f2, f0, f4
    lwz     r24, 0x2dc(sp)
    xoris   r0, r25, 0x8000
    xoris   r5, r24, 0x8000
    stw     r0, 0x2fc(sp)
    stw     r5, 0x2f4(sp)
    stw     r27, 0x2f0(sp)
    stw     r27, 0x2f8(sp)
    lfd     f3, 0x2f0(sp)
    lfd     f0, 0x2f8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r28, 0x1
    stb     r28, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x28
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r8, r6, r0
    lwz     r0, 0xc(r23)
    subf    r7, r25, r8
    lfd     f4, -0x4998(rtoc)
    subf    r0, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r6, r24, r0
    subf    r5, r26, r8
    subf    r0, r22, r0
    xoris   r7, r7, 0x8000
    xoris   r6, r6, 0x8000
    stw     r7, 0x304(sp)
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r6, 0x314(sp)
    stw     r5, 0x324(sp)
    stw     r0, 0x334(sp)
    stw     r27, 0x300(sp)
    stw     r27, 0x310(sp)
    lfd     f1, 0x300(sp)
    stw     r27, 0x320(sp)
    lfd     f0, 0x310(sp)
    fsubs   f3, f1, f4
    stw     r27, 0x330(sp)
    lfd     f1, 0x320(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x330(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x308(sp)
    stfd    f2, 0x318(sp)
    lwz     r24, 0x30c(sp)
    stfd    f1, 0x328(sp)
    lwz     r22, 0x31c(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x338(sp)
    lwz     r6, 0x32c(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x33c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x354(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x344(sp)
    stw     r6, 0x34c(sp)
    stw     r0, 0x35c(sp)
    stw     r27, 0x340(sp)
    stw     r27, 0x348(sp)
    lfd     f1, 0x340(sp)
    stw     r27, 0x350(sp)
    lfd     f0, 0x348(sp)
    fsubs   f1, f1, f4
    stw     r27, 0x358(sp)
    lfd     f3, 0x350(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x358(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r28, 0x4e(r23)
branch_0x8016bb3c:
    lwz     r0, 0xc4(r29)
    cmpwi   r0, 0x28
    bge-    branch_0x8016bb4c
    b       branch_0x8016bb50

branch_0x8016bb4c:
    subfic  r0, r0, 0x50
branch_0x8016bb50:
    xoris   r0, r0, 0x8000
    lfd     f2, -0x4998(rtoc)
    stw     r0, 0x2c4(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4980(rtoc)
    stw     r0, 0x2c0(sp)
    lfs     f0, -0x497c(rtoc)
    lfd     f1, 0x2c0(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x2c8(sp)
    lwz     r0, 0x2cc(sp)
    slwi    r3, r0, 24
    addis   r3, r3, 0xff
    addi    r0, r3, 0xff
    stw     r0, 0x25c(sp)
    lbz     r3, 0xb7(r29)
    lwz     r0, 0x25c(sp)
    extsb   r3, r3
    slwi    r3, r3, 2
    add     r3, r29, r3
    lwz     r3, 0x4a4(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    lbz     r0, 0xb7(r29)
    extsb   r0, r0
    slwi    r0, r0, 2
    add     r3, r29, r0
    lwz     r3, 0x4a4(r3)
    bl      update__7TExPaneFv
    lwz     r3, 0xc4(r29)
    addi    r0, r3, 0x1
    stw     r0, 0xc4(r29)
    lwz     r0, 0xc4(r29)
    cmpwi   r0, 0x50
    ble-    branch_0x8016bbf0
    li      r0, 0x0
    stw     r0, 0xc4(r29)
branch_0x8016bbf0:
    lbz     r0, 0xb7(r29)
    extsb   r3, r31
    extsb   r0, r0
    cmpw    r3, r0
    beq-    branch_0x8016bf6c
    lwz     r4, 0xac(r29)
    cmplwi  r4, 0x0
    beq-    branch_0x8016bc18
    lwz     r3, -0x5fdc(r13)
    bl      forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
branch_0x8016bc18:
    li      r3, 0x0
    extsb   r4, r31
    stw     r3, 0xc4(r29)
    slwi    r0, r4, 2
    add     r23, r29, r0
    lwzu    r3, 0x4a4(r23)
    slwi    r0, r4, 4
    add     r5, r29, r0
    lwz     r6, 0x0(r3)
    lwz     r3, 0x4ac(r5)
    li      r4, 0x481e
    lwz     r0, 0x4b0(r5)
    stw     r3, 0x14(r6)
    stw     r0, 0x18(r6)
    lwz     r3, 0x4b4(r5)
    lwz     r0, 0x4b8(r5)
    stw     r3, 0x1c(r6)
    stw     r0, 0x20(r6)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016bc84
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8016bc84:
    li      r0, -0x1
    stw     r0, 0x254(sp)
    lis     r3, 0xff
    addi    r0, r3, 0xff
    lwz     r4, 0x0(r23)
    lwz     r3, 0x254(sp)
    lwz     r4, 0x0(r4)
    stw     r3, 0x13c(r4)
    stw     r0, 0x24c(sp)
    lbz     r3, 0xb7(r29)
    lwz     r0, 0x24c(sp)
    extsb   r3, r3
    slwi    r3, r3, 2
    add     r3, r29, r3
    lwz     r3, 0x4a4(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x13c(r3)
    b       branch_0x8016bf6c

branch_0x8016bccc:
    lbz     r0, 0xb7(r29)
    extsb   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x8016bce4
    li      r0, 0x2
    stb     r0, 0xb7(r29)
branch_0x8016bce4:
    lwz     r6, 0x490(r29)
    lis     r28, 0x4330
    lwz     r0, 0x498(r29)
    li      r4, 0x14
    lwz     r5, 0x48c(r29)
    lwz     r3, 0x494(r29)
    subf    r24, r6, r0
    xoris   r0, r24, 0x8000
    lfs     f1, -0x49a4(rtoc)
    subf    r22, r5, r3
    xoris   r3, r22, 0x8000
    stw     r0, 0x2cc(sp)
    lwz     r23, 0x488(r29)
    fmr     f2, f1
    stw     r3, 0x2c4(sp)
    lfd     f4, -0x4998(rtoc)
    addi    r3, r23, 0x2c
    stw     r28, 0x2c0(sp)
    stw     r28, 0x2c8(sp)
    lfd     f3, 0x2c0(sp)
    lfd     f0, 0x2c8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    addi    r4, r22, 0x0
    addi    r5, r24, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x4f(r23)
    addi    r3, r23, 0x14
    li      r4, 0x14
    lwz     r6, 0x8(r23)
    lwz     r0, 0x10(r23)
    lwz     r5, 0x4(r23)
    subf    r7, r6, r0
    lwz     r0, 0xc(r23)
    subf    r6, r24, r7
    lfd     f4, -0x4998(rtoc)
    subf    r8, r5, r0
    lfs     f5, -0x49a0(rtoc)
    subf    r0, r22, r8
    xoris   r5, r6, 0x8000
    xoris   r6, r0, 0x8000
    stw     r5, 0x2d4(sp)
    xoris   r5, r7, 0x8000
    xoris   r0, r8, 0x8000
    stw     r6, 0x2e4(sp)
    stw     r5, 0x2f4(sp)
    stw     r0, 0x304(sp)
    stw     r28, 0x2d0(sp)
    stw     r28, 0x2e0(sp)
    lfd     f1, 0x2d0(sp)
    stw     r28, 0x2f0(sp)
    lfd     f0, 0x2e0(sp)
    fsubs   f3, f1, f4
    stw     r28, 0x300(sp)
    lfd     f1, 0x2f0(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x300(sp)
    fsubs   f1, f1, f4
    fsubs   f0, f0, f4
    fmuls   f3, f5, f3
    fmuls   f2, f5, f2
    fmuls   f1, f5, f1
    fmuls   f0, f5, f0
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f3, 0x2d8(sp)
    stfd    f2, 0x2e8(sp)
    lwz     r24, 0x2dc(sp)
    stfd    f1, 0x2f8(sp)
    lwz     r22, 0x2ec(sp)
    xoris   r0, r24, 0x8000
    stfd    f0, 0x308(sp)
    lwz     r6, 0x2fc(sp)
    xoris   r5, r22, 0x8000
    lwz     r7, 0x30c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x324(sp)
    xoris   r5, r7, 0x8000
    stw     r5, 0x314(sp)
    stw     r6, 0x31c(sp)
    stw     r0, 0x32c(sp)
    stw     r28, 0x310(sp)
    stw     r28, 0x318(sp)
    lfd     f1, 0x310(sp)
    stw     r28, 0x320(sp)
    lfd     f0, 0x318(sp)
    fsubs   f1, f1, f4
    stw     r28, 0x328(sp)
    lfd     f3, 0x320(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x328(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      setValue__8TCoord2DFlffff
    lwz     r3, 0x0(r23)
    lwz     r4, 0x4(r23)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x8(r23)
    add     r4, r4, r22
    lwz     r12, 0xc(r12)
    add     r5, r0, r24
    mtlr    r12
    blrl
    stb     r31, 0x4e(r23)
    li      r4, 0x0
    li      r0, 0x4
    lwz     r3, 0x4a0(r29)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4a4(r29)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4a8(r29)
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    lwz     r3, 0x4a4(r29)
    lwz     r4, 0x4ac(r29)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x4b0(r29)
    stw     r4, 0x14(r5)
    stw     r3, 0x18(r5)
    lwz     r4, 0x4b4(r29)
    lwz     r3, 0x4b8(r29)
    stw     r4, 0x1c(r5)
    stw     r3, 0x20(r5)
    lwz     r3, 0x4a8(r29)
    lwz     r4, 0x4bc(r29)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x4c0(r29)
    stw     r4, 0x14(r5)
    stw     r3, 0x18(r5)
    lwz     r4, 0x4c4(r29)
    lwz     r3, 0x4c8(r29)
    stw     r4, 0x1c(r5)
    stw     r3, 0x20(r5)
    stw     r0, 0x10(r29)
    b       branch_0x8016bf6c

branch_0x8016bf24:
    lwz     r3, 0x488(r29)
    bl      update__7TExPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8016bf6c
    lwz     r3, 0x488(r29)
    li      r4, 0x0
    li      r0, 0x5
    lwz     r3, 0x0(r3)
    stb     r4, 0xc(r3)
    stw     r0, 0x10(r29)
    b       branch_0x8016bf6c

branch_0x8016bf50:
    lbz     r0, 0xb7(r29)
    extsb.  r0, r0
    bne-    branch_0x8016bf64
    stw     r4, 0x1c(r29)
    b       branch_0x8016bf68

branch_0x8016bf64:
    stw     r5, 0x1c(r29)
branch_0x8016bf68:
    lbz     r30, 0xb7(r29)
branch_0x8016bf6c:
    mr      r3, r30
    lmw     r22, 0x380(sp)
    lwz     r0, 0x3ac(sp)
    addi    sp, sp, 0x3a8
    mtlr    r0
    blr


.globl changeMode__9TCardLoadFl
changeMode__9TCardLoadFl: # 0x8016bf84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    lwz     r3, -0x603c(r13)
    bl      probe__12TCardManagerFv
    cmpwi   r31, -0x8
    li      r3, 0x4
    beq-    branch_0x8016c040
    bge-    branch_0x8016bfe0
    cmpwi   r31, -0x80
    beq-    branch_0x8016c010
    bge-    branch_0x8016bfc8
    cmpwi   r31, -0x100
    beq-    branch_0x8016c020
    b       branch_0x8016c04c

branch_0x8016bfc8:
    cmpwi   r31, -0xd
    beq-    branch_0x8016c030
    blt-    branch_0x8016c04c
    cmpwi   r31, -0x9
    bge-    branch_0x8016c038
    b       branch_0x8016c04c

branch_0x8016bfe0:
    cmpwi   r31, -0x4
    beq-    branch_0x8016c048
    bge-    branch_0x8016bffc
    cmpwi   r31, -0x6
    beq-    branch_0x8016c028
    bge-    branch_0x8016c018
    b       branch_0x8016c04c

branch_0x8016bffc:
    cmpwi   r31, -0x2
    beq-    branch_0x8016c010
    bge-    branch_0x8016c04c
    li      r3, 0x3
    b       branch_0x8016c04c

branch_0x8016c010:
    li      r3, 0x4
    b       branch_0x8016c04c

branch_0x8016c018:
    li      r3, 0x2d
    b       branch_0x8016c04c

branch_0x8016c020:
    li      r3, 0x5
    b       branch_0x8016c04c

branch_0x8016c028:
    li      r3, 0x6
    b       branch_0x8016c04c

branch_0x8016c030:
    li      r3, 0x7
    b       branch_0x8016c04c

branch_0x8016c038:
    li      r3, 0xc
    b       branch_0x8016c04c

branch_0x8016c040:
    li      r3, 0xd
    b       branch_0x8016c04c

branch_0x8016c048:
    li      r3, 0xe
branch_0x8016c04c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl titleDraw__9TCardLoadFv
titleDraw__9TCardLoadFv: # 0x8016c060

.set var_140, -0x140
.set var_138, -0x138
.set var_134, -0x134
.set var_130, -0x130
.set var_12C, -0x12C
.set var_128, -0x128
.set var_124, -0x124
.set var_120, -0x120
.set var_11C, -0x11C
.set var_118, -0x118
.set var_114, -0x114
.set var_104, -0x104
.set var_F0, -0xF0
.set var_E8, -0xE8
.set var_E0, -0xE0
.set var_D8, -0xD8
.set var_D0, -0xD0
.set var_C8, -0xC8
.set var_C0, -0xC0
.set var_B8, -0xB8
.set var_B0, -0xB0
.set var_A8, -0xA8
.set var_A0, -0xA0
.set var_98, -0x98
.set var_90, -0x90
.set var_88, -0x88
.set var_80, -0x80
.set var_78, -0x78
.set var_6C, -0x6C
.set var_30, -0x30
.set var_28, -0x28
.set var_20, -0x20
.set var_18, -0x18
.set var_10, -0x10
.set var_8, -8
.set arg_4,  4

    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x270(sp)
    stfd    f31, 0x268(sp)
    stfd    f30, 0x260(sp)
    stfd    f29, 0x258(sp)
    stfd    f28, 0x250(sp)
    stfd    f27, 0x248(sp)
    stfd    f26, 0x240(sp)
    stmw    r17, 0x204(sp)
    mr      r29, r3
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x7
    bgt-    branch_0x8016cb60
    lis     r3, 0x803c
    addi    r3, r3, 0xac4
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8016C0B0:		# jumptable 8016C0AC case 0
    li      r0, 0x1
    stw     r0, 0x18(r29)
    b       branch_0x8016cb60

branch_0x8016C0BC:		# jumptable 8016C0AC case 1
lfs	  f27, -0x4964(r2)
li	  r17, 0
lfs	  f26, -0x4960(r2)
li	  r18, 0
lfs	  f29, -0x49A4(r2)
lfs	  f28, -0x4968(r2)
li	  r19, 0

branch_0x8016C0D8:
addi	  r21, r17, 0x266
add	  r21, r29, r21
lbz	  r0, 0(r21)
cmpwi	  r0, 1
beq	  branch_0x8016C1A0
bge	  branch_0x8016C0FC
cmpwi	  r0, 0
bge	  branch_0x8016C174
b	  branch_0x8016C2F4

branch_0x8016C0FC:
cmpwi	  r0, 4
beq	  branch_0x8016C108
b	  branch_0x8016C2F4

branch_0x8016C108:
addi	  r0, r19, 0x242
lhz	  r3, 0x27A(r29)
lhzx	  r0, r29, r0
cmplw	  r3, r0
ble	  branch_0x8016C2F4
addi	  r22, r18, 0x1D4
add	  r22, r29, r22
lwz	  r4, 0(r22)
li	  r20, 1
addi	  r3, r1, 0x270+var_104
lwz	  r4, 0(r4)
stb	  r20, 0xC(r4)
lwz	  r4, 0(r22)
lwz	  r4, 0(r4)
addi	  r4, r4, 0x14
bl	  copy__7JUTRectFRC7JUTRect # JUTRect::copy((JUTRect const &))
lwz	  r5, 0(r22)
li	  r4, 0
li	  r0, 0xB4
lwz	  r3, 0(r5)
stb	  r4, 0xCC(r3)
stfs	  f29, 0x44(r5)
stfs	  f28, 0x48(r5)
sth	  r0, 0x4C(r5)
stb	  r20, 0x50(r5)
stb	  r4, 0(r21)
b	  branch_0x8016C2F4

branch_0x8016C174:
addi	  r0, r18, 0x1D4
lwzx	  r3, r29, r0
bl	  update__7TExPaneFv # TExPane::update((void))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016C2F4
li	  r0, 1
stb	  r0, 0(r21)
addi	  r0, r19, 0x242
li	  r3, 0
sthx	  r3, r29, r0
b	  branch_0x8016C2F4

branch_0x8016C1A0:
cmpwi	  r17, 0x11
bne	  branch_0x8016C2F4
li	  r7, 0
li	  r0, 2
sth	  r7, 0x27A(r29)
mtctr	  r0
li	  r5, 0xB4
li	  r3, 0xFF
li	  r0, 1

branch_0x8016C1C4:
addi	  r6, r7, 0x1D4
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1D8
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1DC
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1E0
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1E4
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1E8
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1EC
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1F0
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
addi	  r6, r7, 0x1F4
addi	  r7, r7, 0x24
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r6
lwz	  r4, 0(r8)
stb	  r5, 0xCC(r4)
stfs	  f27, 0x44(r8)
stfs	  f26, 0x48(r8)
sth	  r3, 0x4C(r8)
stb	  r0, 0x50(r8)
bdnz	  branch_0x8016C1C4
li	  r0, 3
stw	  r0, 0x18(r29)

branch_0x8016C2F4:
lhz	  r3, 0x27A(r29)
addi	  r17, r17, 1
cmpwi	  r17, 0x12
addi	  r0, r3, 1
sth	  r0, 0x27A(r29)
addi	  r18, r18, 4
addi	  r19, r19, 2
blt	  branch_0x8016C0D8
b	  def_8016C0AC	# jumptable 8016C0AC default case

branch_0x8016C318:		# jumptable 8016C0AC case 3
lhz	  r0, 0x27A(r29)
cmplwi	  r0, 0xA0
ble	  branch_0x8016C4FC
li	  r19, 1
li	  r20, 0
li	  r17, 0

branch_0x8016C330:
addi	  r18, r17, 0x1D4
add	  r18, r29, r18
lwz	  r3, 0(r18)
bl	  update__7TExPaneFv # TExPane::update((void))
lwz	  r4, 0(r18)
and	  r19, r19, r3
lwz	  r3, 0(r4)
lwz	  r0, 0x140(r3)
stw	  r0, 0x270+var_138(r1)
lbz	  r3, 0x270+var_138(r1)
addi	  r3, r3, 7
clrlwi	  r0, r3, 16
cmplwi	  r0, 0xFF
ble	  branch_0x8016C36C
li	  r3, 0xFF

branch_0x8016C36C:
slwi	  r3, r3, 24
addis	  r3, r3, 0x100
addi	  r0, r3, -0x100
stw	  r0, 0x270+var_140(r1)
addi	  r20, r20, 1
cmpwi	  r20, 0x12
lwz	  r3, 0(r18)
addi	  r17, r17, 4
lwz	  r0, 0x270+var_140(r1)
lwz	  r3, 0(r3)
stw	  r0, 0x140(r3)
blt	  branch_0x8016C330
clrlwi.	  r0, r19, 24
beq	  branch_0x8016C4FC
li	  r0, 2
lfs	  f1, -0x4980(r2)
mtctr	  r0
lfs	  f0, -0x495C(r2)
li	  r3, 0
li	  r6, 0xFF
li	  r4, 0
li	  r0, 1

branch_0x8016C3C4:
addi	  r7, r3, 0x1D4
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1D8
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1DC
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1E0
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1E4
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1E8
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1EC
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1F0
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
addi	  r7, r3, 0x1F4
addi	  r3, r3, 0x24
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
lwzx	  r8, r29, r7
lwz	  r5, 0(r8)
stb	  r6, 0xCC(r5)
stfs	  f1, 0x44(r8)
stfs	  f0, 0x48(r8)
sth	  r4, 0x4C(r8)
stb	  r0, 0x50(r8)
bdnz	  branch_0x8016C3C4
li	  r0, 0
sth	  r0, 0x27A(r29)
li	  r0, 2
stw	  r0, 0x18(r29)

branch_0x8016C4FC:
lhz	  r3, 0x27A(r29)
addi	  r0, r3, 1
sth	  r0, 0x27A(r29)
b	  def_8016C0AC	# jumptable 8016C0AC default case

branch_0x8016C50C:		# jumptable 8016C0AC case 2
lwz	  r3, 0xF0(r29)
lwz	  r3, 0(r3)
lbz	  r18, 0xCC(r3)
addi	  r18, r18, 1
clrlwi	  r0, r18, 16
cmplwi	  r0, 0xFF
ble	  branch_0x8016C570
li	  r19, 1
li	  r18, 0xFF
li	  r20, 0
li	  r17, 0

branch_0x8016C538:
addi	  r0, r17, 0x1D4
lwzx	  r3, r29, r0
bl	  update__7TExPaneFv # TExPane::update((void))
addi	  r20, r20, 1
cmpwi	  r20, 0x12
and	  r19, r19, r3
addi	  r17, r17, 4
blt	  branch_0x8016C538
clrlwi.	  r0, r19, 24
beq	  branch_0x8016C570
li	  r0, 0
stw	  r0, 0xBC(r29)
li	  r0, 4
stw	  r0, 0x18(r29)

branch_0x8016C570:
lwz	  r3, 0xF0(r29)
lwz	  r3, 0(r3)
stb	  r18, 0xCC(r3)
lwz	  r3, 0xF4(r29)
lwz	  r3, 0(r3)
stb	  r18, 0xCC(r3)
b	  def_8016C0AC	# jumptable 8016C0AC default case

branch_0x8016C58C:		# jumptable 8016C0AC case 4
lfd	  f30, -0x4998(r2)
li	  r30, 0
lfs	  f31, -0x49A0(r2)
li	  r28, 0
lfs	  f26, -0x4980(r2)
lfs	  f27, -0x4958(r2)
li	  r27, 0
lfs	  f28, -0x49A4(r2)
li	  r26, 0
lfs	  f29, -0x4954(r2)
lis	  r24, 0x4330

branch_0x8016C5B8:
addi	  r31, r30, 0x236
add	  r31, r29, r31
lbz	  r0, 0(r31)
cmpwi	  r0, 2
beq	  branch_0x8016C68C
bge	  branch_0x8016C5E0
cmpwi	  r0, 0
beq	  branch_0x8016C5F0
bge	  branch_0x8016C61C
b	  branch_0x8016CB3C

branch_0x8016C5E0:
cmpwi	  r0, 4
beq	  branch_0x8016C900
bge	  branch_0x8016CB3C
b	  branch_0x8016C6B8

branch_0x8016C5F0:
addi	  r0, r26, 0xF8
lwzx	  r3, r29, r0
bl	  update__7TExPaneFv # TExPane::update((void))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016CB3C
li	  r0, 1
stb	  r0, 0(r31)
addi	  r0, r27, 0x220
li	  r3, 0
sthx	  r3, r29, r0
b	  branch_0x8016CB3C

branch_0x8016C61C:
addi	  r4, r27, 0x220
add	  r4, r29, r4
lhz	  r3, 0(r4)
addi	  r0, r3, 1
sth	  r0, 0(r4)
lhz	  r0, 0(r4)
cmplwi	  r0, 0x1F4
ble	  branch_0x8016CB3C
addi	  r17, r26, 0xF8
add	  r17, r29, r17
lwz	  r4, 0(r17)
addi	  r3, r1, 0x270+var_114
lwz	  r4, 0(r4)
addi	  r4, r4, 0x14
bl	  copy__7JUTRectFRC7JUTRect # JUTRect::copy((JUTRect const &))
lwz	  r7, 0(r17)
li	  r6, 0xFF
li	  r4, 0
lwz	  r5, 0(r7)
li	  r3, 1
li	  r0, 2
stb	  r6, 0xCC(r5)
stfs	  f26, 0x44(r7)
stfs	  f27, 0x48(r7)
sth	  r4, 0x4C(r7)
stb	  r3, 0x50(r7)
stb	  r0, 0(r31)
b	  branch_0x8016CB3C

branch_0x8016C68C:
addi	  r0, r26, 0xF8
lwzx	  r3, r29, r0
bl	  update__7TExPaneFv # TExPane::update((void))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016CB3C
addi	  r0, r27, 0x220
li	  r3, 0
sthx	  r3, r29, r0
li	  r0, 3
stb	  r0, 0(r31)
b	  branch_0x8016CB3C

branch_0x8016C6B8:
addi	  r4, r27, 0x220
add	  r4, r29, r4
lhz	  r3, 0(r4)
addi	  r0, r3, 1
sth	  r0, 0(r4)
lhz	  r0, 0(r4)
cmplwi	  r0, 0x12C
ble	  branch_0x8016CB3C
addi	  r18, r26, 0xF8
add	  r18, r29, r18
lwz	  r4, 0(r18)
addi	  r3, r1, 0x270+var_124
lwz	  r4, 0(r4)
addi	  r4, r4, 0x14
bl	  copy__7JUTRectFRC7JUTRect # JUTRect::copy((JUTRect const &))
lwz	  r5, 0x270+var_120(r1)
li	  r4, 0x19
lwz	  r0, 0x270+var_118(r1)
lwz	  r3, 0x270+var_124(r1)
subf	  r20, r5, r0
lwz	  r0, 0x270+var_11C(r1)
slwi	  r21, r20, 1
lwz	  r23, 0(r18)
subf	  r19, r3, r0
slwi	  r22, r19, 1
xoris	  r0, r19, 0x8000
xoris	  r3, r20, 0x8000
stw	  r0, 0x270+var_78+4(r1)
xoris	  r5, r22, 0x8000
xoris	  r0, r21, 0x8000
stw	  r3, 0x270+var_80+4(r1)
addi	  r3, r23, 0x2C
stw	  r5, 0x270+var_88+4(r1)
stw	  r0, 0x270+var_90+4(r1)
stw	  r24, 0x270+var_78(r1)
stw	  r24, 0x270+var_80(r1)
lfd	  f1, 0x270+var_78(r1)
stw	  r24, 0x270+var_88(r1)
lfd	  f0, 0x270+var_80(r1)
fsubs	  f1, f1, f30
stw	  r24, 0x270+var_90(r1)
lfd	  f3, 0x270+var_88(r1)
fsubs	  f2, f0, f30
lfd	  f0, 0x270+var_90(r1)
fsubs	  f3, f3, f30
fsubs	  f4, f0, f30
bl	  setValue__8TCoord2DFlffff # TCoord2D::setValue((long,float,float,float,float))
lwz	  r3, 0(r23)
addi	  r4, r22, 0
addi	  r5, r21, 0
lwz	  r12, 0(r3)
lwz	  r12, 0x14(r12)
mtlr	  r12
blrl
li	  r25, 1
stb	  r25, 0x4F(r23)
addi	  r3, r23, 0x14
li	  r4, 0x19
lwz	  r6, 8(r23)
lwz	  r0, 0x10(r23)
lwz	  r5, 4(r23)
subf	  r8, r6, r0
lwz	  r0, 0xC(r23)
subf	  r7, r21, r8
subf	  r0, r5, r0
subf	  r6, r22, r0
subf	  r5, r20, r8
subf	  r0, r19, r0
xoris	  r7, r7, 0x8000
xoris	  r6, r6, 0x8000
stw	  r7, 0x270+var_98+4(r1)
xoris	  r5, r5, 0x8000
xoris	  r0, r0, 0x8000
stw	  r6, 0x270+var_A8+4(r1)
stw	  r5, 0x270+var_B8+4(r1)
stw	  r0, 0x270+var_C8+4(r1)
stw	  r24, 0x270+var_98(r1)
stw	  r24, 0x270+var_A8(r1)
lfd	  f1, 0x270+var_98(r1)
stw	  r24, 0x270+var_B8(r1)
lfd	  f0, 0x270+var_A8(r1)
fsubs	  f3, f1, f30
stw	  r24, 0x270+var_C8(r1)
lfd	  f1, 0x270+var_B8(r1)
fsubs	  f2, f0, f30
lfd	  f0, 0x270+var_C8(r1)
fsubs	  f1, f1, f30
fsubs	  f0, f0, f30
fmuls	  f3, f31, f3
fmuls	  f2, f31, f2
fmuls	  f1, f31, f1
fmuls	  f0, f31, f0
fctiwz	  f3, f3
fctiwz	  f2, f2
fctiwz	  f1, f1
fctiwz	  f0, f0
stfd	  f3, 0x270+var_A0(r1)
stfd	  f2, 0x270+var_B0(r1)
lwz	  r22, 0x270+var_A0+4(r1)
stfd	  f1, 0x270+var_C0(r1)
lwz	  r21, 0x270+var_B0+4(r1)
xoris	  r0, r22, 0x8000
stfd	  f0, 0x270+var_D0(r1)
lwz	  r6, 0x270+var_C0+4(r1)
xoris	  r5, r21, 0x8000
lwz	  r7, 0x270+var_D0+4(r1)
xoris	  r6, r6, 0x8000
stw	  r5, 0x270+var_E8+4(r1)
xoris	  r5, r7, 0x8000
stw	  r5, 0x270+var_D8+4(r1)
stw	  r6, 0x270+var_E0+4(r1)
stw	  r0, 0x270+var_F0+4(r1)
stw	  r24, 0x270+var_D8(r1)
stw	  r24, 0x270+var_E0(r1)
lfd	  f1, 0x270+var_D8(r1)
stw	  r24, 0x270+var_E8(r1)
lfd	  f0, 0x270+var_E0(r1)
fsubs	  f1, f1, f30
stw	  r24, 0x270+var_F0(r1)
lfd	  f3, 0x270+var_E8(r1)
fsubs	  f2, f0, f30
lfd	  f0, 0x270+var_F0(r1)
fsubs	  f3, f3, f30
fsubs	  f4, f0, f30
bl	  setValue__8TCoord2DFlffff # TCoord2D::setValue((long,float,float,float,float))
lwz	  r3, 0(r23)
lwz	  r4, 4(r23)
lwz	  r12, 0(r3)
lwz	  r0, 8(r23)
add	  r4, r4, r21
lwz	  r12, 0xC(r12)
add	  r5, r0, r22
mtlr	  r12
blrl
stb	  r25, 0x4E(r23)
li	  r4, 0
li	  r0, 0xFF
lwz	  r5, 0(r18)
lwz	  r3, 0(r5)
stb	  r4, 0xCC(r3)
stfs	  f28, 0x44(r5)
stfs	  f29, 0x48(r5)
sth	  r0, 0x4C(r5)
stb	  r25, 0x50(r5)
stb	  r4, 0(r31)
b	  branch_0x8016CB3C

branch_0x8016C900:
addi	  r17, r27, 0x220
lhz	  r3, 0x27A(r29)
add	  r17, r29, r17
lhz	  r0, 0(r17)
cmplw	  r3, r0
ble	  branch_0x8016CB3C
addi	  r4, r28, 0x124
addi	  r3, r1, 0x270+var_134
add	  r4, r29, r4
bl	  copy__7JUTRectFRC7JUTRect # JUTRect::copy((JUTRect const &))
lwz	  r4, 0x270+var_130(r1)
addi	  r20, r26, 0xF8
lwz	  r0, 0x270+var_128(r1)
add	  r20, r29, r20
lwz	  r3, 0x270+var_134(r1)
subf	  r18, r4, r0
lwz	  r0, 0x270+var_12C(r1)
slwi	  r23, r18, 1
lwz	  r21, 0(r20)
subf	  r19, r3, r0
slwi	  r22, r19, 1
xoris	  r0, r19, 0x8000
xoris	  r3, r18, 0x8000
stw	  r0, 0x270+var_F0+4(r1)
xoris	  r4, r22, 0x8000
xoris	  r0, r23, 0x8000
stw	  r3, 0x270+var_E8+4(r1)
addi	  r3, r21, 0x2C
stw	  r4, 0x270+var_E0+4(r1)
li	  r4, 0x19
stw	  r0, 0x270+var_D8+4(r1)
stw	  r24, 0x270+var_F0(r1)
stw	  r24, 0x270+var_E8(r1)
lfd	  f1, 0x270+var_F0(r1)
stw	  r24, 0x270+var_E0(r1)
lfd	  f0, 0x270+var_E8(r1)
fsubs	  f1, f1, f30
stw	  r24, 0x270+var_D8(r1)
lfd	  f3, 0x270+var_E0(r1)
fsubs	  f2, f0, f30
lfd	  f0, 0x270+var_D8(r1)
fsubs	  f3, f3, f30
fsubs	  f4, f0, f30
bl	  setValue__8TCoord2DFlffff # TCoord2D::setValue((long,float,float,float,float))
lwz	  r3, 0(r21)
addi	  r4, r22, 0
addi	  r5, r23, 0
lwz	  r12, 0(r3)
lwz	  r12, 0x14(r12)
mtlr	  r12
blrl
li	  r25, 1
stb	  r25, 0x4F(r21)
addi	  r3, r21, 0x14
li	  r4, 0x19
lwz	  r6, 8(r21)
lwz	  r0, 0x10(r21)
lwz	  r5, 4(r21)
subf	  r8, r6, r0
lwz	  r0, 0xC(r21)
subf	  r7, r23, r8
subf	  r0, r5, r0
subf	  r6, r22, r0
subf	  r5, r18, r8
subf	  r0, r19, r0
xoris	  r7, r7, 0x8000
xoris	  r6, r6, 0x8000
stw	  r7, 0x270+var_D0+4(r1)
xoris	  r5, r5, 0x8000
xoris	  r0, r0, 0x8000
stw	  r6, 0x270+var_C0+4(r1)
stw	  r5, 0x270+var_B0+4(r1)
stw	  r0, 0x270+var_A0+4(r1)
stw	  r24, 0x270+var_D0(r1)
stw	  r24, 0x270+var_C0(r1)
lfd	  f1, 0x270+var_D0(r1)
stw	  r24, 0x270+var_B0(r1)
lfd	  f0, 0x270+var_C0(r1)
fsubs	  f3, f1, f30
stw	  r24, 0x270+var_A0(r1)
lfd	  f1, 0x270+var_B0(r1)
fsubs	  f2, f0, f30
lfd	  f0, 0x270+var_A0(r1)
fsubs	  f1, f1, f30
fsubs	  f0, f0, f30
fmuls	  f3, f31, f3
fmuls	  f2, f31, f2
fmuls	  f1, f31, f1
fmuls	  f0, f31, f0
fctiwz	  f3, f3
fctiwz	  f2, f2
fctiwz	  f1, f1
fctiwz	  f0, f0
stfd	  f3, 0x270+var_C8(r1)
stfd	  f2, 0x270+var_B8(r1)
lwz	  r23, 0x270+var_C8+4(r1)
stfd	  f1, 0x270+var_A8(r1)
lwz	  r22, 0x270+var_B8+4(r1)
xoris	  r0, r23, 0x8000
stfd	  f0, 0x270+var_98(r1)
lwz	  r6, 0x270+var_A8+4(r1)
xoris	  r5, r22, 0x8000
lwz	  r7, 0x270+var_98+4(r1)
xoris	  r6, r6, 0x8000
stw	  r5, 0x270+var_80+4(r1)
xoris	  r5, r7, 0x8000
stw	  r5, 0x270+var_90+4(r1)
stw	  r6, 0x270+var_88+4(r1)
stw	  r0, 0x270+var_78+4(r1)
stw	  r24, 0x270+var_90(r1)
stw	  r24, 0x270+var_88(r1)
lfd	  f1, 0x270+var_90(r1)
stw	  r24, 0x270+var_80(r1)
lfd	  f0, 0x270+var_88(r1)
fsubs	  f1, f1, f30
stw	  r24, 0x270+var_78(r1)
lfd	  f3, 0x270+var_80(r1)
fsubs	  f2, f0, f30
lfd	  f0, 0x270+var_78(r1)
fsubs	  f3, f3, f30
fsubs	  f4, f0, f30
bl	  setValue__8TCoord2DFlffff # TCoord2D::setValue((long,float,float,float,float))
lwz	  r3, 0(r21)
lwz	  r4, 4(r21)
lwz	  r12, 0(r3)
lwz	  r0, 8(r21)
add	  r4, r4, r22
lwz	  r12, 0xC(r12)
add	  r5, r0, r23
mtlr	  r12
blrl
stb	  r25, 0x4E(r21)
li	  r4, 0
li	  r0, 0xFF
lwz	  r5, 0(r20)
lwz	  r3, 0(r5)
stb	  r4, 0xCC(r3)
stfs	  f28, 0x44(r5)
stfs	  f29, 0x48(r5)
sth	  r0, 0x4C(r5)
stb	  r25, 0x50(r5)
stb	  r4, 0(r31)
sth	  r4, 0(r17)

branch_0x8016CB3C:
addi	  r30, r30, 1
cmpwi	  r30, 0xB
addi	  r28, r28, 0x10
addi	  r27, r27, 2
addi	  r26, r26, 4
blt	  branch_0x8016C5B8
lhz	  r3, 0x27A(r29)
addi	  r0, r3, 1
sth	  r0, 0x27A(r29)

def_8016C0AC:		# jumptable 8016C0AC default case
branch_0x8016cb60:
    lwz     r4, 0x18(r29)
    li      r3, 0x4
    eqv     r0, r4, r3
    subfc   r3, r4, r3
    srwi    r0, r0, 31
    addze   r3, r0
    clrlwi  r3, r3, 31
    lwz     r0, 0x274(sp)
    lfd     f31, 0x268(sp)
    lfd     f30, 0x260(sp)
    lfd     f29, 0x258(sp)
    lfd     f28, 0x250(sp)
    lfd     f27, 0x248(sp)
    lfd     f26, 0x240(sp)
    lmw     r17, 0x204(sp)
    addi    sp, sp, 0x270
    mtlr    r0
    blr


.globl perform__9TCardLoadFUlPQ26JDrama9TGraphics
perform__9TCardLoadFUlPQ26JDrama9TGraphics: # 0x8016cba8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x380(sp)
    stmw    r25, 0x364(sp)
    addi    r29, r4, 0x0
    addi    r31, r3, 0x0
    addi    r30, r5, 0x0
    beq-    branch_0x8016d89c
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0xa
    bgt-    branch_0x8016d880
    lis     r3, 0x803c
    addi    r3, r3, 0xb0c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8016CBF0:		# jumptable 8016CBEC case 0
    mr      r3, r31
    bl      changeScene__9TCardLoadFv
    lbz     r0, 0x295(r31)
    lwz     r3, 0x27c(r31)
    cmplwi  r0, 0x0
    lbzu    r4, 0xcc(r3)
    beq-    branch_0x8016cc28
    cmpwi   r4, 0xff
    bge-    branch_0x8016cc28
    addi    r4, r4, 0x8
    cmpwi   r4, 0xff
    ble-    branch_0x8016cc24
    li      r4, 0xff
branch_0x8016cc24:
    stb     r4, 0x0(r3)
branch_0x8016cc28:
    lbz     r0, 0x295(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8016cc50
    cmpwi   r4, 0x0
    ble-    branch_0x8016cc50
    subic.  r4, r4, 0x8
    bge-    branch_0x8016cc48
    li      r4, 0x0
branch_0x8016cc48:
    lwz     r3, 0x27c(r31)
    stb     r4, 0xcc(r3)
branch_0x8016cc50:
    cmpwi   r4, 0x0
    beq-    branch_0x8016cd24
    lbz     r0, 0x294(r31)
    cmplwi  r0, 0x32
    bge-    branch_0x8016cc68
    b       branch_0x8016cc6c

branch_0x8016cc68:
    subfic  r0, r0, 0x64
branch_0x8016cc6c:
    xoris   r0, r0, 0x8000
    lfd     f1, -0x4998(rtoc)
    stw     r0, 0x35c(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4950(rtoc)
    addi    r3, sp, 0x33c
    stw     r0, 0x358(sp)
    lfs     f2, -0x4988(rtoc)
    lfd     f0, 0x358(sp)
    lwz     r6, 0x288(r31)
    fsubs   f4, f0, f1
    lfs     f0, -0x4948(rtoc)
    lfs     f1, -0x494c(rtoc)
    lwz     r7, 0x28c(r31)
    fdivs   f4, f4, f3
    lwz     r5, 0x284(r31)
    lwz     r4, 0x280(r31)
    fsubs   f3, f2, f4
    fmuls   f2, f1, f4
    fmuls   f1, f0, f3
    fmuls   f0, f4, f3
    fmadds  f0, f1, f3, f0
    fmadds  f0, f2, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0x350(sp)
    lwz     r0, 0x354(sp)
    extsh   r0, r0
    add     r6, r6, r0
    bl      set__7JUTRectFiiii
    lwz     r4, 0x27c(r31)
    lwz     r3, 0x33c(sp)
    lwz     r0, 0x340(sp)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r3, 0x344(sp)
    lwz     r0, 0x348(sp)
    stw     r3, 0x1c(r4)
    stw     r0, 0x20(r4)
    lbz     r3, 0x294(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x294(r31)
    lbz     r0, 0x294(r31)
    cmplwi  r0, 0x64
    ble-    branch_0x8016cd24
    li      r0, 0x0
    stb     r0, 0x294(r31)
branch_0x8016cd24:
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x13
    beq-    branch_0x8016cd60
    subi    r0, r3, 0xc
    cmplwi  r0, 0x1
    ble-    branch_0x8016cd60
    subi    r0, r3, 0x3
    cmplwi  r0, 0x2
    ble-    branch_0x8016cd60
    cmpwi   r3, 0x2d
    beq-    branch_0x8016cd60
    cmpwi   r3, 0x10
    beq-    branch_0x8016cd60
    cmpwi   r3, 0x35
    bne-    branch_0x8016d880
branch_0x8016cd60:
    lwz     r3, 0x2a4(r31)
    bl      offCollision__17TMapObjOptionWallFv
    lwz     r3, -0x70b8(r13)
    lbz     r0, 0x0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8016d880
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x8016cd8c
    li      r0, 0x3
    stw     r0, 0x10(r31)
branch_0x8016cd8c:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x5
    bne-    branch_0x8016d880
    li      r0, 0x6
    stw     r0, 0x14(r31)
    b       branch_0x8016d880

branch_0x8016CDA4:		# jumptable 8016CBEC case 4
li	  r28, 1
lwz	  r3, -0x603C(r13)
bl	  getLastStatus__12TCardManagerFv # TCardManager::getLastStatus((void))
cmpwi	  r3, -1
beq	  branch_0x8016CE54
cmpwi	  r3, 0
bne	  branch_0x8016CE40
lbz	  r0, 0xB8(r31)
cmplwi	  r0, 0
bne	  branch_0x8016CE54
addi	  r27, r1, 0x20C
stw	  r27, 0x118(r1)
lwz	  r25, 0x118(r1)
mr	  r3, r25
bl	  __ct__14JSUInputStreamFv # JSUInputStream::JSUInputStream((void))
lis	  r3, unk_803E0160@h
addi	  r0, r3, unk_803E0160@l
lis	  r3, unk_803E01C8@h
stw	  r0, 0(r25)
addi	  r26, r3, unk_803E01C8@l
stw	  r26, 0(r25)
addi	  r3, r25, 0
li	  r4, 0
li	  r5, 0
bl	  setBuffer__20JSUMemoryInputStreamFPCvl # JSUMemoryInputStream::setBuffer((void const *,long))
lwz	  r3, -0x603C(r13)
mr	  r4, r27
bl	  getReadStream__12TCardManagerFP20JSUMemoryInputStream	# TCardManager::getReadStream((JSUMemoryInputStream *))
lwz	  r3, -0x6060(r13)
mr	  r4, r27
bl	  load__12TFlagManagerFR20JSUMemoryInputStream # TFlagManager::load((JSUMemoryInputStream &))
stw	  r26, 0x20C(r1)
addi	  r3, r27, 0
li	  r4, 0
bl	  __dt__20JSURandomInputStreamFv # JSURandomInputStream::~JSURandomInputStream((void))
mr	  r3, r31
bl	  setupScoreScreen__9TCardLoadFv # TCardLoad::setupScoreScreen((void))
stb	  r28, 0xB8(r31)
b	  branch_0x8016CE54

branch_0x8016CE40:
li	  r0, 0
stw	  r0, 0x14(r31)
li	  r0, 3
stw	  r0, 0x1C(r31)
stw	  r28, 0x10(r31)

branch_0x8016CE54:
lwz	  r3, -0x70B8(r13)
lha	  r0, 0x16(r3)
cmpwi	  r0, 0
beq	  branch_0x8016CE6C
li	  r0, 0
stb	  r0, 0xB8(r31)

branch_0x8016CE6C:
lbz	  r0, 0xB8(r31)
cmplwi	  r0, 0
beq	  def_8016CBEC	# jumptable 8016CBEC default case
lwz	  r3, 0x2C(r31)
lis	  r26, 0x524F #	0x524F4F54
addi	  r4, r26, 0x4F54 # 0x524F4F54
lwz	  r12, 0(r3)
lwz	  r12, 0x24(r12)
mtlr	  r12
blrl
mr	  r27, r3
lwz	  r3, 0x28(r31)
addi	  r4, r26, 0x4F54 # 0x524F4F54
lwz	  r12, 0(r3)
lwz	  r12, 0x24(r12)
mtlr	  r12
blrl
lbz	  r5, 0xCC(r27)
addi	  r5, r5, 4
cmpwi	  r5, 0xFF
ble	  branch_0x8016CEC8
li	  r5, 0xFF
b	  branch_0x8016CECC

branch_0x8016CEC8:
li	  r28, 0

branch_0x8016CECC:
stb	  r5, 0xCC(r27)
lwz	  r4, 0x5A4(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x5E0(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x61C(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x658(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x694(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x6D0(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x70C(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x764(r31)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x760(r31)
stb	  r5, 0xCC(r4)
lbz	  r4, 0xCC(r3)
addic.	  r4, r4, -4
bge	  branch_0x8016CF2C
li	  r4, 0
b	  branch_0x8016CF30

branch_0x8016CF2C:
li	  r28, 0

branch_0x8016CF30:
clrlwi.	  r0, r28, 24
stb	  r4, 0xCC(r3)
beq	  def_8016CBEC	# jumptable 8016CBEC default case
li	  r0, 1
stw	  r0, 0x14(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016CF48:		# jumptable 8016CBEC case 5
lwz	  r3, 0x2C(r31)
lis	  r27, 0x524F #	0x524F4F54
addi	  r4, r27, 0x4F54 # 0x524F4F54
lwz	  r12, 0(r3)
li	  r26, 1
lwz	  r12, 0x24(r12)
mtlr	  r12
blrl
mr	  r28, r3
lwz	  r3, 0x28(r31)
addi	  r4, r27, 0x4F54 # 0x524F4F54
lwz	  r12, 0(r3)
lwz	  r12, 0x24(r12)
mtlr	  r12
blrl
lbz	  r0, 0xCC(r28)
addic.	  r0, r0, -4
bge	  branch_0x8016CF98
li	  r0, 0
b	  branch_0x8016CF9C

branch_0x8016CF98:
li	  r26, 0

branch_0x8016CF9C:
stb	  r0, 0xCC(r28)
lwz	  r4, 0x5A4(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x5E0(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x61C(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x658(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x694(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x6D0(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x70C(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x764(r31)
stb	  r0, 0xCC(r4)
lwz	  r4, 0x760(r31)
stb	  r0, 0xCC(r4)
lbz	  r4, 0xCC(r3)
addi	  r4, r4, 4
cmpwi	  r4, 0xFF
ble	  branch_0x8016D000
li	  r4, 0xFF
b	  branch_0x8016D004

branch_0x8016D000:
li	  r26, 0

branch_0x8016D004:
clrlwi.	  r0, r26, 24
stb	  r4, 0xCC(r3)
beq	  def_8016CBEC	# jumptable 8016CBEC default case
lbz	  r0, 0xB8(r31)
cmplwi	  r0, 0
beq	  branch_0x8016D030
lwz	  r3, -0x70B8(r13)
bl	  moveToDown__13TCameraOptionFv	# TCameraOption::moveToDown((void))
li	  r0, 0
stb	  r0, 0xB8(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D030:
lwz	  r3, -0x70B8(r13)
lha	  r0, 0x16(r3)
cmpwi	  r0, 0
bne	  def_8016CBEC	# jumptable 8016CBEC default case
li	  r28, 0
stw	  r28, 0x14(r31)
li	  r0, 2
addi	  r4, r31, 0x40
stw	  r0, 0x1C(r31)
lwz	  r3, -0x603C(r13)
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
stw	  r28, 0x10(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D064:		# jumptable 8016CBEC case 1
lwz	  r3, 0x38(r31)
lwz	  r3, 0xD4(r3)
rlwinm.	  r0, r3, 0,26,26
bne	  branch_0x8016D07C
rlwinm.	  r0, r3, 0,25,25
beq	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D07C:
lwz	  r3, gpMSound(r13)
li	  r4, 0x481D
bl	  gateCheck__6MSoundFUl	# MSound::gateCheck((ulong))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016D0A4
li	  r3, 0x481D
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl # MSoundSESystem::MSoundSE::startSoundSystemSE((ulong,ulong,JAISound **,ulong))

branch_0x8016D0A4:
li	  r0, 1
stb	  r0, 0xB8(r31)
li	  r0, 5
stw	  r0, 0x14(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D0B8:		# jumptable 8016CBEC case 6
lwz	  r3, 0x774(r31)
bl	  movementCard2Option__14TOptionControlFv # TOptionControl::movementCard2Option((void))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016D0E4
lwz	  r4, 0x38(r31)
li	  r0, 2
lhz	  r3, 0xE2(r4)
clrrwi	  r3, r3, 1
sth	  r3, 0xE2(r4)
stw	  r0, 0x14(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D0E4:
lwz	  r3, -0x70B8(r13)
lbz	  r0, 0(r3)
clrlwi.	  r0, r0, 31
beq	  def_8016CBEC	# jumptable 8016CBEC default case
li	  r0, 7
stw	  r0, 0x14(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D100:		# jumptable 8016CBEC case 2
lwz	  r3, 0x774(r31)
bl	  movementOption__14TOptionControlFv # TOptionControl::movementOption((void))
clrlwi.	  r0, r3, 24
beq	  def_8016CBEC	# jumptable 8016CBEC default case
li	  r0, 7
stw	  r0, 0x14(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D11C:		# jumptable 8016CBEC case 7
lwz	  r3, -0x70B8(r13)
lbz	  r0, 0(r3)
clrlwi.	  r0, r0, 31
bne	  branch_0x8016D138
li	  r0, 6
stw	  r0, 0x14(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D138:
lwz	  r3, 0x774(r31)
bl	  movementOption2Card__14TOptionControlFv # TOptionControl::movementOption2Card((void))
clrlwi.	  r0, r3, 24
beq	  def_8016CBEC	# jumptable 8016CBEC default case
lwz	  r3, 0x2A4(r31)
bl	  onCollision__17TMapObjOptionWallFv # TMapObjOptionWall::onCollision((void))
li	  r28, 0
stw	  r28, 0x14(r31)
lwz	  r3, 0x38(r31)
lhz	  r0, 0xE2(r3)
ori	  r0, r0, 1
sth	  r0, 0xE2(r3)
lwz	  r3, 0x774(r31)
bl	  isChangedSetting__14TOptionControlCFv	# TOptionControl::isChangedSetting(const(void))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016D194
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
li	  r0, 0x32
stw	  r0, 0x1C(r31)
stw	  r28, 0x10(r31)
b	  branch_0x8016D1AC

branch_0x8016D194:
lwz	  r3, -0x603C(r13)
addi	  r4, r31, 0x40
bl	  getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo	# TCardManager::getBookmarkInfos((TCardBookmarkInfo *))
li	  r0, 2
stw	  r0, 0x1C(r31)
stw	  r28, 0x10(r31)

branch_0x8016D1AC:
lwz	  r3, 0x774(r31)
bl	  resetChangedSetting__14TOptionControlFv # TOptionControl::resetChangedSetting((void))
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D1B8:		# jumptable 8016CBEC case 8
lwz	  r3, 0x21C(r31)
addi	  r4, r3, 0xCC
lbz	  r3, 0xCC(r3)
addi	  r3, r3, -4
extsh.	  r0, r3
bge	  branch_0x8016D1D4
li	  r3, 0

branch_0x8016D1D4:
stb	  r3, 0(r4)
lwz	  r3, -0x70B8(r13)
lha	  r0, 0xE(r3)
cmpwi	  r0, 0
bne	  def_8016CBEC	# jumptable 8016CBEC default case
lis	  r3, (0x8001000C+2)@h
addi	  r3, r3, (0x8001000C+2)@l
bl	  startBGM__5MSBgmFUl #	MSBgm::startBGM((ulong))
li	  r0, 0x30
stw	  r0, 0x1C(r31)
li	  r0, 0
stw	  r0, 0x14(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D208:		# jumptable 8016CBEC case 3
mr	  r3, r31
bl	  titleDraw__9TCardLoadFv # TCardLoad::titleDraw((void))
lwz	  r0, 0x18(r31)
cmpwi	  r0, 4
blt	  branch_0x8016D2C0
blt	  branch_0x8016D2A0
lwz	  r0, 0xBC(r31)
cmpwi	  r0, 0x64
blt	  branch_0x8016D2A0
lwz	  r3, -0x70B8(r13)
lha	  r0, 0xA(r3)
cmpwi	  r0, 0
bne	  branch_0x8016D2A0
lwz	  r3, 0x38(r31)
lwz	  r0, 0xD4(r3)
rlwinm.	  r0, r0, 0,26,26
bne	  branch_0x8016D258
lwz	  r0, 0x1C(r3)
rlwinm.	  r0, r0, 0,19,19
beq	  branch_0x8016D2A0

branch_0x8016D258:
lwz	  r3, gpMSound(r13)
li	  r4, 0x4810
bl	  gateCheck__6MSoundFUl	# MSound::gateCheck((ulong))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016D280
li	  r3, 0x4810
li	  r4, 0
li	  r5, 0
li	  r6, 0
bl	  startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl # MSoundSESystem::MSoundSE::startSoundSystemSE((ulong,ulong,JAISound **,ulong))

branch_0x8016D280:
lwz	  r3, -0x70B8(r13)
bl	  moveToLoadFromTitle__13TCameraOptionFv # TCameraOption::moveToLoadFromTitle((void))
lwz	  r3, MarioActor(r13)
li	  r4, 0
lfs	  f1, -0x49A4(r2)
bl	  waitingStart__6TMarioFPCQ29JGeometry8TVec3_f_f
li	  r0, 8
stw	  r0, 0x14(r31)

branch_0x8016D2A0:
lwz	  r3, 0xF0(r31)
bl	  update__7TExPaneFv # TExPane::update((void))
lwz	  r3, 0xF4(r31)
bl	  update__7TExPaneFv # TExPane::update((void))
lwz	  r3, 0xBC(r31)
addi	  r0, r3, 1
stw	  r0, 0xBC(r31)
b	  branch_0x8016D50C

branch_0x8016D2C0:
lwz	  r3, 0x38(r31)
lwz	  r0, 0xD4(r3)
rlwinm.	  r0, r0, 0,26,26
bne	  branch_0x8016D2DC
lwz	  r0, 0x1C(r3)
rlwinm.	  r0, r0, 0,19,19
beq	  branch_0x8016D50C

branch_0x8016D2DC:
lwz	  r7, 0xF0(r31)
lwz	  r3, 0(r7)
lbz	  r3, 0xCC(r3)
extsh.	  r0, r3
bge	  branch_0x8016D2F8
li	  r6, 0
b	  branch_0x8016D2FC

branch_0x8016D2F8:
mr	  r6, r3

branch_0x8016D2FC:
extsh	  r0, r6
cmpwi	  r0, 0xFF
ble	  branch_0x8016D30C
li	  r6, 0xFF

branch_0x8016D30C:
extsh	  r3, r3
lwz	  r4, 0(r7)
xoris	  r0, r3, 0x8000
stw	  r0, 0x354(r1)
lis	  r5, 0x4330
subfic	  r0, r3, 0xFF
stb	  r6, 0xCC(r4)
xoris	  r4, r0, 0x8000
li	  r3, 0xFF
stw	  r5, 0x350(r1)
li	  r0, 1
lfd	  f2, -0x4998(r2)
stw	  r4, 0x35C(r1)
lfd	  f0, 0x350(r1)
stw	  r5, 0x358(r1)
fsubs	  f1, f0, f2
lfd	  f0, 0x358(r1)
stfs	  f1, 0x44(r7)
fsubs	  f1, f0, f2
lfs	  f0, -0x4944(r2)
fdivs	  f0, f1, f0
stfs	  f0, 0x48(r7)
sth	  r3, 0x4C(r7)
stb	  r0, 0x50(r7)
lwz	  r8, 0xF4(r31)
lwz	  r3, 0(r8)
lbz	  r3, 0xCC(r3)
extsh.	  r0, r3
bge	  branch_0x8016D388
li	  r5, 0
b	  branch_0x8016D38C

branch_0x8016D388:
mr	  r5, r3

branch_0x8016D38C:
extsh	  r0, r5
cmpwi	  r0, 0xFF
ble	  branch_0x8016D39C
li	  r5, 0xFF

branch_0x8016D39C:
extsh	  r3, r3
lwz	  r4, 0(r8)
xoris	  r0, r3, 0x8000
stw	  r0, 0x354(r1)
subfic	  r0, r3, 0xFF
xoris	  r3, r0, 0x8000
stb	  r5, 0xCC(r4)
lis	  r4, 0x4330
li	  r7, 0x10
stw	  r3, 0x35C(r1)
subfic	  r0, r7, 0x12
lfd	  f2, -0x4998(r2)
li	  r6, 0xFF
stw	  r4, 0x350(r1)
li	  r5, 0
mtctr	  r0
lfd	  f0, 0x350(r1)
cmpwi	  r7, 0x12
stw	  r4, 0x358(r1)
li	  r4, 1
fsubs	  f1, f0, f2
lfd	  f0, 0x358(r1)
slwi	  r3, r7, 2
stfs	  f1, 0x44(r8)
fsubs	  f1, f0, f2
lfs	  f0, -0x4944(r2)
fdivs	  f0, f1, f0
stfs	  f0, 0x48(r8)
sth	  r6, 0x4C(r8)
stb	  r4, 0x50(r8)
lwz	  r4, 0x1D4(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1D8(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1DC(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1E0(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1E4(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1E8(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1EC(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1F0(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1F4(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1F8(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1FC(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x200(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x204(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x208(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x20C(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x210(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
bge	  branch_0x8016D4F0

branch_0x8016D4D8:
addi	  r0, r3, 0x1D4
lwzx	  r4, r31, r0
addi	  r3, r3, 4
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
bdnz	  branch_0x8016D4D8

branch_0x8016D4F0:
li	  r0, 0
sth	  r0, 0x27A(r31)
lwz	  r0, 0x18(r31)
cmpwi	  r0, 4
bge	  branch_0x8016D50C
li	  r0, 4
stw	  r0, 0x18(r31)

branch_0x8016D50C:
lwz	  r3, 0xC0(r31)
lis	  r0, 0x4330
lfd	  f3, -0x4998(r2)
xoris	  r3, r3, 0x8000
lfs	  f1, -0x4940(r2)
stw	  r3, 0x354(r1)
lfs	  f0, -0x493C(r2)
stw	  r0, 0x350(r1)
lfd	  f2, 0x350(r1)
fsubs	  f2, f2, f3
fdivs	  f1, f2, f1
fcmpo	  cr0, f1, f0
ble	  def_8016CBEC	# jumptable 8016CBEC default case
lis	  r28, 3 # 0x3001C
lwz	  r3, -0x6060(r13)
addi	  r4, r28, 0x1C	# 0x3001C
bl	  getBool__12TFlagManagerCFUl #	TFlagManager::getBool(const(ulong))
clrlwi.	  r0, r3, 24
beq	  branch_0x8016D580
lwz	  r3, gpMarDirector(r13)
li	  r4, 9
bl	  fireStreamingMovie__12TMarDirectorFUc	# TMarDirector::fireStreamingMovie((uchar))
lwz	  r3, -0x6060(r13)
addi	  r5, r28, 0x1C	# 0x3001C
li	  r4, 0
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
li	  r0, 0
stw	  r0, 0xC0(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D580:
lwz	  r3, gpMarDirector(r13)
li	  r4, 0xC
bl	  fireStreamingMovie__12TMarDirectorFUc	# TMarDirector::fireStreamingMovie((uchar))
lwz	  r3, -0x6060(r13)
addi	  r5, r28, 0x1C	# 0x3001C
li	  r4, 1
bl	  setBool__12TFlagManagerFbUl #	TFlagManager::setBool((bool,ulong))
li	  r0, 0
stw	  r0, 0xC0(r31)
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D5A8:		# jumptable 8016CBEC case 9
lwz	  r3, -0x70B8(r13)
lha	  r0, 0xA(r3)
cmpwi	  r0, 0
bne	  branch_0x8016D5C0
li	  r0, 3
stw	  r0, 0x14(r31)

branch_0x8016D5C0:
lwz	  r3, 0x38(r31)
lwz	  r0, 0xD4(r3)
rlwinm.	  r0, r0, 0,26,26
bne	  branch_0x8016D5DC
lwz	  r0, 0x1C(r3)
rlwinm.	  r0, r0, 0,19,19
beq	  branch_0x8016D80C

branch_0x8016D5DC:
lwz	  r7, 0xF0(r31)
lwz	  r3, 0(r7)
lbz	  r3, 0xCC(r3)
extsh.	  r0, r3
bge	  branch_0x8016D5F8
li	  r6, 0
b	  branch_0x8016D5FC

branch_0x8016D5F8:
mr	  r6, r3

branch_0x8016D5FC:
extsh	  r0, r6
cmpwi	  r0, 0xFF
ble	  branch_0x8016D60C
li	  r6, 0xFF

branch_0x8016D60C:
extsh	  r3, r3
lwz	  r4, 0(r7)
xoris	  r0, r3, 0x8000
stw	  r0, 0x354(r1)
lis	  r5, 0x4330
subfic	  r0, r3, 0xFF
stb	  r6, 0xCC(r4)
xoris	  r4, r0, 0x8000
li	  r3, 0xFF
stw	  r5, 0x350(r1)
li	  r0, 1
lfd	  f2, -0x4998(r2)
stw	  r4, 0x35C(r1)
lfd	  f0, 0x350(r1)
stw	  r5, 0x358(r1)
fsubs	  f1, f0, f2
lfd	  f0, 0x358(r1)
stfs	  f1, 0x44(r7)
fsubs	  f1, f0, f2
lfs	  f0, -0x4944(r2)
fdivs	  f0, f1, f0
stfs	  f0, 0x48(r7)
sth	  r3, 0x4C(r7)
stb	  r0, 0x50(r7)
lwz	  r8, 0xF4(r31)
lwz	  r3, 0(r8)
lbz	  r3, 0xCC(r3)
extsh.	  r0, r3
bge	  branch_0x8016D688
li	  r5, 0
b	  branch_0x8016D68C

branch_0x8016D688:
mr	  r5, r3

branch_0x8016D68C:
extsh	  r0, r5
cmpwi	  r0, 0xFF
ble	  branch_0x8016D69C
li	  r5, 0xFF

branch_0x8016D69C:
extsh	  r3, r3
lwz	  r4, 0(r8)
xoris	  r0, r3, 0x8000
stw	  r0, 0x354(r1)
subfic	  r0, r3, 0xFF
xoris	  r3, r0, 0x8000
stb	  r5, 0xCC(r4)
lis	  r4, 0x4330
li	  r7, 0x10
stw	  r3, 0x35C(r1)
subfic	  r0, r7, 0x12
lfd	  f2, -0x4998(r2)
li	  r6, 0xFF
stw	  r4, 0x350(r1)
li	  r5, 0
mtctr	  r0
lfd	  f0, 0x350(r1)
cmpwi	  r7, 0x12
stw	  r4, 0x358(r1)
li	  r4, 1
fsubs	  f1, f0, f2
lfd	  f0, 0x358(r1)
slwi	  r3, r7, 2
stfs	  f1, 0x44(r8)
fsubs	  f1, f0, f2
lfs	  f0, -0x4944(r2)
fdivs	  f0, f1, f0
stfs	  f0, 0x48(r8)
sth	  r6, 0x4C(r8)
stb	  r4, 0x50(r8)
lwz	  r4, 0x1D4(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1D8(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1DC(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1E0(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1E4(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1E8(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1EC(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1F0(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1F4(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1F8(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x1FC(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x200(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x204(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x208(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x20C(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
lwz	  r4, 0x210(r31)
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
bge	  branch_0x8016D7F0

branch_0x8016D7D8:
addi	  r0, r3, 0x1D4
lwzx	  r4, r31, r0
addi	  r3, r3, 4
lwz	  r4, 0(r4)
stb	  r5, 0xCC(r4)
bdnz	  branch_0x8016D7D8

branch_0x8016D7F0:
li	  r4, 0
sth	  r4, 0x27A(r31)
li	  r3, 4
li	  r0, 3
stw	  r4, 0xBC(r31)
stw	  r3, 0x18(r31)
stw	  r0, 0x14(r31)

branch_0x8016D80C:
mr	  r3, r31
bl	  titleDraw__9TCardLoadFv # TCardLoad::titleDraw((void))
b	  def_8016CBEC	# jumptable 8016CBEC default case

branch_0x8016D818:		# jumptable 8016CBEC case 10
lis	  r3, 0x80010010@h
addi	  r3, r3, 0x80010010@l
bl	  startBGM__5MSBgmFUl #	MSBgm::startBGM((ulong))
lwz	  r6, 0x38(r31)
li	  r3, 9
li	  r4, 1
lhz	  r5, 0xE2(r6)
li	  r0, 0
ori	  r5, r5, 1
sth	  r5, 0xE2(r6)
lwz	  r6, MarioActor(r13)
lwz	  r5, 0x118(r6)
rlwinm	  r5, r5, 0,17,15
stw	  r5, 0x118(r6)
stw	  r3, 0x14(r31)
stw	  r4, 0x18(r31)
lwz	  r3, 0xF0(r31)
lwz	  r3, 0(r3)
stb	  r0, 0xCC(r3)
lwz	  r3, 0xF4(r31)
lwz	  r3, 0(r3)
stb	  r0, 0xCC(r3)
sth	  r0, 0x27A(r31)
stw	  r0, 0xC0(r31)
lwz	  r3, 0x21C(r31)
stb	  r4, 0xC(r3)

def_8016CBEC:		# jumptable 8016CBEC default case
branch_0x8016d880:
    lis     r3, 0x1000
    lwz     r4, 0xc0(r31)
    subi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x8016d89c
    addi    r0, r4, 0x1
    stw     r0, 0xc0(r31)
branch_0x8016d89c:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x8016d9bc
    addi    r4, r30, 0x54
    addi    r26, r30, 0x64
    addi    r3, sp, 0x23c
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x23c
    bl      setup2D__14J2DGrafContextFv
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x9
    bgt-    branch_0x8016d968
    lis     r3, 0x803c
    addi    r3, r3, 0xae4
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8016D8E0:		# jumptable 8016D8DC case 0
    lwz     r3, 0x28(r31)
    addi    r6, sp, 0x23c
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    b       branch_0x8016d968

branch_0x8016D8F8:		# jumptable 8016D8DC case 1
lwz	  r3, 0x2C(r31)
addi	  r6, r1, 0x23C
li	  r4, 0
li	  r5, 0
bl	  draw__9J2DScreenFiiPC14J2DGrafContext	# J2DScreen::draw((int,int,J2DGrafContext const	*))
b	  def_8016D8DC	# jumptable 8016D8DC default case

branch_0x8016D910:		# jumptable 8016D8DC case 2
lwz	  r3, 0x774(r31)
addi	  r4, r1, 0x23C
bl	  draw__14TOptionControlFP13J2DOrthoGraph # TOptionControl::draw((J2DOrthoGraph	*))
b	  def_8016D8DC	# jumptable 8016D8DC default case

branch_0x8016D920:		# jumptable 8016D8DC cases 4,5
lwz	  r3, 0x2C(r31)
addi	  r6, r1, 0x23C
li	  r4, 0
li	  r5, 0
bl	  draw__9J2DScreenFiiPC14J2DGrafContext	# J2DScreen::draw((int,int,J2DGrafContext const	*))
addi	  r3, r1, 0x23C
bl	  setup2D__14J2DGrafContextFv #	J2DGrafContext::setup2D((void))
lwz	  r3, 0x28(r31)
addi	  r6, r1, 0x23C
li	  r4, 0
li	  r5, 0
bl	  draw__9J2DScreenFiiPC14J2DGrafContext	# J2DScreen::draw((int,int,J2DGrafContext const	*))
b	  def_8016D8DC	# jumptable 8016D8DC default case

branch_0x8016D954:		# jumptable 8016D8DC cases 3,8,9
lwz	  r3, 0x34(r31)
addi	  r6, r1, 0x23C
li	  r4, 0
li	  r5, 0
bl	  draw__9J2DScreenFiiPC14J2DGrafContext	# J2DScreen::draw((int,int,J2DGrafContext const	*))

def_8016D8DC:		# jumptable 8016D8DC default case
branch_0x8016d968:
    lwz     r3, 0x0(r26)
    lwz     r0, 0x4(r26)
    stw     r3, 0x64(r30)
    stw     r0, 0x68(r30)
    lwz     r3, 0x8(r26)
    lwz     r0, 0xc(r26)
    stw     r3, 0x6c(r30)
    stw     r0, 0x70(r30)
    lwz     r4, 0x68(r30)
    lwz     r5, 0x70(r30)
    lwz     r3, 0x64(r30)
    lwz     r0, 0x6c(r30)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x23c(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0x23c(sp)
branch_0x8016d9bc:
    lmw     r25, 0x364(sp)
    lwz     r0, 0x384(sp)
    addi    sp, sp, 0x380
    mtlr    r0
    blr


.globl __ct__14JSUInputStreamFv
__ct__14JSUInputStreamFv: # 0x8016d9d0
    lis     r4, 0x803b
    subi    r0, r4, 0xf0c
    stw     r0, 0x0(r3)
    li      r0, 0x0
    lis     r4, 0x803e
    stb     r0, 0x4(r3)
    addi    r0, r4, 0x184
    stw     r0, 0x0(r3)
    blr


.globl loadAfter__9TCardLoadFv
loadAfter__9TCardLoadFv: # 0x8016d9f4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    subi    r31, r4, 0x7f88
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    addi    r29, r3, 0x0
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x118
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x118
    mtlr    r12
    blrl
    stw     r3, 0x298(r29)
    addi    r3, r31, 0x12c
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x12c
    mtlr    r12
    blrl
    stw     r3, 0x29c(r29)
    addi    r3, r31, 0x140
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x140
    mtlr    r12
    blrl
    stw     r3, 0x2a0(r29)
    addi    r3, r31, 0x154
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x154
    mtlr    r12
    blrl
    stw     r3, 0x2a4(r29)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl setupScoreScreen__9TCardLoadFv
setupScoreScreen__9TCardLoadFv: # 0x8016daf8
    mflr    r0
    lis     r4, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stmw    r19, 0xfc(sp)
    addi    r30, r3, 0x0
    lwz     r0, -0x6060(r13)
    mr      r3, r0
    bl      getFlag__12TFlagManagerCFUl
    addi    r22, r3, 0x0
    cmpwi   r22, 0x64
    bge-    branch_0x8016db9c
    lis     r4, 0x6666
    lwz     r3, 0x768(r30)
    addi    r0, r4, 0x6667
    mulhw   r19, r0, r22
    srawi   r0, r19, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r19, 2
    lwz     r3, 0x76c(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r22
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x770(r30)
    li      r0, 0x0
    stb     r0, 0xc(r3)
    b       branch_0x8016dc44

branch_0x8016db9c:
    lis     r4, 0x51ec
    lwz     r3, 0x768(r30)
    subi    r0, r4, 0x7ae1
    mulhw   r0, r0, r22
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, 0x6666
    lwz     r3, 0x76c(r30)
    subi    r19, r22, 0x64
    addi    r0, r4, 0x6667
    mulhw   r20, r0, r19
    srawi   r0, r20, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r20, 2
    lwz     r3, 0x770(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r19
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xc8(r4)
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x770(r30)
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8016dc44:
    lis     r3, 0x8039
    subi    r6, r3, 0x7e8c
    lwz     r5, 0x0(r6)
    lis     r4, 0x51ec
    lwz     r0, 0x4(r6)
    lis     r3, 0x6666
    subi    r22, r4, 0x7ae1
    stw     r5, 0xd8(sp)
    addi    r24, r3, 0x6667
    addi    r23, sp, 0xd8
    stw     r0, 0xdc(sp)
    li      r31, 0x0
    li      r27, 0x0
    lwz     r3, 0x8(r6)
    li      r28, 0x0
    lwz     r0, 0xc(r6)
    li      r26, 0x0
    stw     r3, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0xf0(sp)
branch_0x8016dca8:
    lwzx    r25, r23, r26
    li      r21, 0x0
    lwz     r3, -0x6060(r13)
    addis   r4, r25, 0x1
    addi    r4, r4, 0x3a5
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016dcdc
    addi    r0, r28, 0x5a4
    lwzx    r3, r30, r0
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8016dcec

branch_0x8016dcdc:
    addi    r0, r28, 0x5a4
    lwzx    r3, r30, r0
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8016dcec:
    addi    r19, r25, 0x0
    li      r20, 0x0
branch_0x8016dcf4:
    addi    r3, r19, 0x0
    addi    r4, r20, 0x0
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8016dd18
    li      r3, 0x0
    b       branch_0x8016dd28

branch_0x8016dd18:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8016dd28:
    clrlwi. r0, r3, 24
    beq-    branch_0x8016dd34
    addi    r21, r21, 0x1
branch_0x8016dd34:
    addi    r20, r20, 0x1
    cmpwi   r20, 0x8
    blt+    branch_0x8016dcf4
    add     r29, r30, r28
    lwz     r5, 0x5b4(r29)
    clrlwi  r4, r21, 24
    add     r31, r31, r4
    cmplwi  r5, 0x0
    li      r6, 0x0
    li      r3, 0x1
    li      r0, 0x0
    beq-    branch_0x8016dd78
    cmpw    r6, r4
    bge-    branch_0x8016dd74
    stb     r3, 0xc(r5)
    b       branch_0x8016dd78

branch_0x8016dd74:
    stb     r0, 0xc(r5)
branch_0x8016dd78:
    lwz     r5, 0x5b8(r29)
    li      r6, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x8016dd9c
    cmpw    r6, r4
    bge-    branch_0x8016dd98
    stb     r3, 0xc(r5)
    b       branch_0x8016dd9c

branch_0x8016dd98:
    stb     r0, 0xc(r5)
branch_0x8016dd9c:
    lwz     r5, 0x5bc(r29)
    li      r6, 0x2
    cmplwi  r5, 0x0
    beq-    branch_0x8016ddc0
    cmpw    r6, r4
    bge-    branch_0x8016ddbc
    stb     r3, 0xc(r5)
    b       branch_0x8016ddc0

branch_0x8016ddbc:
    stb     r0, 0xc(r5)
branch_0x8016ddc0:
    lwz     r5, 0x5c0(r29)
    li      r6, 0x3
    cmplwi  r5, 0x0
    beq-    branch_0x8016dde4
    cmpw    r6, r4
    bge-    branch_0x8016dde0
    stb     r3, 0xc(r5)
    b       branch_0x8016dde4

branch_0x8016dde0:
    stb     r0, 0xc(r5)
branch_0x8016dde4:
    lwz     r5, 0x5c4(r29)
    li      r6, 0x4
    cmplwi  r5, 0x0
    beq-    branch_0x8016de08
    cmpw    r6, r4
    bge-    branch_0x8016de04
    stb     r3, 0xc(r5)
    b       branch_0x8016de08

branch_0x8016de04:
    stb     r0, 0xc(r5)
branch_0x8016de08:
    lwz     r5, 0x5c8(r29)
    li      r6, 0x5
    cmplwi  r5, 0x0
    beq-    branch_0x8016de2c
    cmpw    r6, r4
    bge-    branch_0x8016de28
    stb     r3, 0xc(r5)
    b       branch_0x8016de2c

branch_0x8016de28:
    stb     r0, 0xc(r5)
branch_0x8016de2c:
    lwz     r5, 0x5cc(r29)
    li      r6, 0x6
    cmplwi  r5, 0x0
    beq-    branch_0x8016de50
    cmpw    r6, r4
    bge-    branch_0x8016de4c
    stb     r3, 0xc(r5)
    b       branch_0x8016de50

branch_0x8016de4c:
    stb     r0, 0xc(r5)
branch_0x8016de50:
    lwz     r5, 0x5d0(r29)
    li      r6, 0x7
    cmplwi  r5, 0x0
    beq-    branch_0x8016de74
    cmpw    r6, r4
    bge-    branch_0x8016de70
    stb     r3, 0xc(r5)
    b       branch_0x8016de74

branch_0x8016de70:
    stb     r0, 0xc(r5)
branch_0x8016de74:
    addi    r21, r25, 0x0
    li      r20, 0x0
    li      r19, 0x0
branch_0x8016de80:
    addi    r3, r21, 0x0
    addi    r4, r20, 0x1
    li      r5, 0x1
    bl      SMS_getShineID__FUlUlb
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8016dea4
    li      r3, 0x0
    b       branch_0x8016deb4

branch_0x8016dea4:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8016deb4:
    clrlwi. r0, r3, 24
    beq-    branch_0x8016ded4
    addi    r0, r19, 0x5d4
    lwzx    r3, r29, r0
    li      r0, 0x1
    addi    r31, r31, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8016dee4

branch_0x8016ded4:
    addi    r0, r19, 0x5d4
    lwzx    r3, r29, r0
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8016dee4:
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    addi    r19, r19, 0x4
    blt+    branch_0x8016de80
    addi    r3, r25, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_getShineID__FUlUlb
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8016df18
    li      r3, 0x0
    b       branch_0x8016df28

branch_0x8016df18:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8016df28:
    clrlwi. r0, r3, 24
    beq-    branch_0x8016df44
    lwz     r3, 0x5dc(r29)
    li      r0, 0x1
    addi    r31, r31, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8016df50

branch_0x8016df44:
    lwz     r3, 0x5dc(r29)
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8016df50:
    addis   r4, r25, 0x2
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x5
    bl      getFlag__12TFlagManagerCFUl
    addi    r20, r3, 0x0
    cmpwi   r20, 0x3e7
    ble-    branch_0x8016df70
    li      r20, 0x3e7
branch_0x8016df70:
    cmpwi   r20, 0x64
    bge-    branch_0x8016dfe4
    mulhw   r19, r24, r20
    lwz     r4, 0x5b0(r29)
    srawi   r0, r19, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    li      r3, 0x0
    stb     r3, 0xc(r4)
    slwi    r3, r0, 2
    addi    r0, r3, 0xc8
    lwzx    r4, r30, r0
    li      r5, 0x0
    lwz     r3, 0x5a8(r29)
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r19, 2
    lwz     r3, 0x5ac(r29)
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r20
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r30, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8016e088

branch_0x8016dfe4:
    mulhw   r0, r22, r20
    lwz     r3, 0x5a8(r29)
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r19, r0, r4
    slwi    r4, r19, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r30, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    mulli   r0, r19, 0x64
    lwz     r3, 0x5ac(r29)
    subf    r0, r0, r20
    clrlwi  r21, r0, 24
    mulhw   r19, r24, r21
    srawi   r0, r19, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r4, r0, 2
    addi    r0, r4, 0xc8
    lwzx    r4, r30, r0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r19, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r0, r0, r21
    slwi    r3, r0, 2
    addi    r0, r3, 0xc8
    lwz     r3, 0x5b0(r29)
    lwzx    r4, r30, r0
    addi    r19, r29, 0x5b0
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x0(r19)
    li      r0, 0x1
    stb     r0, 0xc(r3)
branch_0x8016e088:
    addi    r27, r27, 0x1
    lwz     r3, 0x5a4(r29)
    li      r0, 0x0
    cmpwi   r27, 0x7
    stb     r0, 0xcc(r3)
    addi    r28, r28, 0x3c
    addi    r26, r26, 0x4
    blt+    branch_0x8016dca8
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x56
    li      r19, 0x0
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016e0c8
    li      r19, 0x1
branch_0x8016e0c8:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x58
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016e0e4
    addi    r19, r19, 0x1
branch_0x8016e0e4:
    clrlwi  r0, r19, 16
    cmplwi  r0, 0x9
    add     r31, r31, r19
    ble-    branch_0x8016e0f8
    li      r19, 0x9
branch_0x8016e0f8:
    lis     r4, 0x6666
    lwz     r3, 0x2c(r30)
    clrlwi  r5, r19, 16
    addi    r0, r4, 0x6667
    lwz     r12, 0x0(r3)
    mulhw   r0, r0, r5
    lwz     r12, 0x24(r12)
    mtlr    r12
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    lis     r4, 0x6e
    addi    r4, r4, 0x5f66
    lwz     r19, 0x20(r5)
    blrl
    addi    r4, r19, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3a6
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8016e194
    lwz     r3, 0x2c(r30)
    lis     r4, 0x7374
    addi    r4, r4, 0x5f37
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    b       branch_0x8016e1b8

branch_0x8016e194:
    lwz     r3, 0x2c(r30)
    lis     r4, 0x7374
    addi    r4, r4, 0x5f37
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8016e1b8:
    lwz     r3, 0x2c(r30)
    lis     r4, 0x7374
    addi    r4, r4, 0x5f37
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0xff
    stb     r0, 0xcc(r3)
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_getShineID__FUlUlb
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8016e200
    li      r3, 0x0
    b       branch_0x8016e210

branch_0x8016e200:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8016e210:
    clrlwi. r0, r3, 24
    beq-    branch_0x8016e244
    lwz     r3, 0x2c(r30)
    lis     r4, 0x7368
    addi    r4, r4, 0x3761
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0xc(r3)
    addi    r31, r31, 0x1
    b       branch_0x8016e268

branch_0x8016e244:
    lwz     r3, 0x2c(r30)
    lis     r4, 0x7368
    addi    r4, r4, 0x3761
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8016e268:
    lis     r4, 0x2
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x6
    bl      getFlag__12TFlagManagerCFUl
    addi    r20, r3, 0x0
    cmpwi   r20, 0x3e7
    ble-    branch_0x8016e288
    li      r20, 0x3e7
branch_0x8016e288:
    cmpwi   r20, 0x64
    bge-    branch_0x8016e34c
    lwz     r3, 0x2c(r30)
    lis     r22, 0x6e5f
    addi    r4, r22, 0x3763
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lis     r4, 0x6666
    addi    r0, r4, 0x6667
    mulhw   r19, r0, r20
    li      r0, 0x0
    stb     r0, 0xc(r3)
    srawi   r0, r19, 2
    srwi    r4, r0, 31
    lwz     r3, 0x2c(r30)
    add     r0, r0, r4
    slwi    r0, r0, 2
    lwz     r12, 0x0(r3)
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    addi    r4, r22, 0x3761
    lwz     r12, 0x24(r12)
    lwz     r21, 0x20(r5)
    mtlr    r12
    blrl
    addi    r4, r21, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r19, 2
    lwz     r3, 0x2c(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r12, 0x0(r3)
    mulli   r0, r0, 0xa
    lwz     r12, 0x24(r12)
    subf    r0, r0, r20
    mtlr    r12
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    addi    r4, r22, 0x3762
    lwz     r19, 0x20(r5)
    blrl
    addi    r4, r19, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    b       branch_0x8016e458

branch_0x8016e34c:
    lwz     r3, 0x2c(r30)
    lis     r22, 0x6e5f
    addi    r4, r22, 0x3763
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lis     r4, 0x51ec
    subi    r0, r4, 0x7ae1
    mulhw   r0, r0, r20
    li      r4, 0x1
    stb     r4, 0xc(r3)
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    lwz     r3, 0x2c(r30)
    add     r21, r0, r4
    slwi    r0, r21, 2
    lwz     r12, 0x0(r3)
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    addi    r4, r22, 0x3761
    lwz     r12, 0x24(r12)
    lwz     r19, 0x20(r5)
    mtlr    r12
    blrl
    addi    r4, r19, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    mulli   r0, r21, 0x64
    lwz     r3, 0x2c(r30)
    lwz     r12, 0x0(r3)
    lis     r4, 0x6666
    subf    r20, r0, r20
    lwz     r12, 0x24(r12)
    addi    r0, r4, 0x6667
    mulhw   r19, r0, r20
    mtlr    r12
    srawi   r0, r19, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    addi    r4, r22, 0x3762
    lwz     r21, 0x20(r5)
    blrl
    addi    r4, r21, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r19, 2
    lwz     r3, 0x2c(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r12, 0x0(r3)
    mulli   r0, r0, 0xa
    lwz     r12, 0x24(r12)
    subf    r0, r0, r20
    mtlr    r12
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    addi    r4, r22, 0x3763
    lwz     r19, 0x20(r5)
    blrl
    addi    r4, r19, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
branch_0x8016e458:
    lwz     r3, -0x6060(r13)
    lis     r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    clrlwi  r0, r31, 16
    subf    r22, r0, r3
    cmpwi   r22, 0x64
    ble-    branch_0x8016e478
    li      r22, 0x63
branch_0x8016e478:
    cmpwi   r22, 0x0
    bge-    branch_0x8016e484
    li      r22, 0x0
branch_0x8016e484:
    lis     r4, 0x6666
    lwz     r3, 0x2c(r30)
    addi    r0, r4, 0x6667
    mulhw   r20, r0, r22
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    srawi   r0, r20, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    lis     r19, 0x6e
    addi    r4, r19, 0x5f64
    lwz     r21, 0x20(r5)
    blrl
    addi    r4, r21, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    srawi   r0, r20, 2
    lwz     r3, 0x2c(r30)
    srwi    r4, r0, 31
    add     r0, r0, r4
    lwz     r12, 0x0(r3)
    mulli   r0, r0, 0xa
    lwz     r12, 0x24(r12)
    subf    r0, r0, r22
    mtlr    r12
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r5, 0xc8(r4)
    addi    r4, r19, 0x5f65
    lwz     r19, 0x20(r5)
    blrl
    addi    r4, r19, 0x0
    li      r5, 0x0
    bl      changeTexture__10J2DPictureFPC7ResTIMGUc
    lwz     r3, 0x764(r30)
    li      r0, 0x0
    stb     r0, 0xcc(r3)
    lwz     r3, 0x760(r30)
    stb     r0, 0xcc(r3)
    lwz     r0, 0x134(sp)
    lmw     r19, 0xfc(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl load__9TCardLoadFR20JSUMemoryInputStream
load__9TCardLoadFR20JSUMemoryInputStream: # 0x8016e544
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x240(sp)
    stfd    f31, 0x238(sp)
    stfd    f30, 0x230(sp)
    stmw    r18, 0x1f8(sp)
    addi    r31, r3, 0x0
    subi    r30, r5, 0x7f88
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xf
    bne-    branch_0x8016f880
    subi    r3, rtoc, 0x4938
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r19, r3, 0x0
    addi    r3, r30, 0x164
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0xa0(r31)
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8016e5b4
    addi    r3, r20, 0x0
    addi    r5, r19, 0x0
    addi    r4, r30, 0x17c
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x8016e5b4:
    stw     r20, 0x28(r31)
    li      r4, 0x2
    lwz     r3, 0x28(r31)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8016e5e4
    addi    r3, r20, 0x0
    addi    r5, r19, 0x0
    addi    r4, r30, 0x188
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x8016e5e4:
    stw     r20, 0x2c(r31)
    li      r4, 0x2
    lwz     r3, 0x2c(r31)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    li      r3, 0x28
    bl      __nw__FUl
    stw     r3, 0x774(r31)
    lwz     r3, 0x774(r31)
    bl      load__14TOptionControlFv
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8016e628
    addi    r3, r20, 0x0
    addi    r5, r19, 0x0
    addi    r4, r30, 0x198
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x8016e628:
    stw     r20, 0x34(r31)
    li      r4, 0x2
    lwz     r3, 0x34(r31)
    bl      setCullBack__7J2DPaneF11_GXCullMode
    li      r22, 0x0
    li      r19, 0x0
branch_0x8016e640:
    addi    r6, r22, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1cc
    addi    r5, r30, 0x1a4
    li      r4, 0x28
    bl      snprintf
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8016e688
    addi    r3, sp, 0x1cc
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r20, 0x0
    stw     r20, 0x28(r21)
    addi    r4, r3, 0x0
    mr      r3, r21
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r20, 0x50(r21)
branch_0x8016e688:
    addi    r22, r22, 0x1
    addi    r0, r19, 0xc8
    cmpwi   r22, 0xa
    stwx    r21, r31, r0
    addi    r19, r19, 0x4
    blt+    branch_0x8016e640
    li      r0, 0xb
    mtctr   r0
    li      r7, 0x0
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x4
branch_0x8016e6b8:
    addi    r8, r3, 0x220
    cmpwi   r7, 0x4
    addi    r0, r4, 0x96
    add     r8, r31, r8
    sth     r0, 0x0(r8)
    ble-    branch_0x8016e6dc
    lhz     r6, 0x0(r8)
    addi    r0, r6, 0x14
    sth     r0, 0x0(r8)
branch_0x8016e6dc:
    addi    r0, r7, 0x236
    stbx    r5, r31, r0
    addi    r7, r7, 0x1
    addi    r3, r3, 0x2
    addi    r4, r4, 0x19
    bdnz+      branch_0x8016e6b8
    li      r0, 0x0
    sth     r0, 0x242(r31)
    li      r4, 0x1
    li      r6, 0x4
    mulli   r5, r4, 0x190
    stb     r6, 0x266(r31)
    li      r3, 0x2
    sth     r5, 0x244(r31)
    mulli   r4, r3, 0x190
    stb     r6, 0x267(r31)
    sth     r4, 0x246(r31)
    li      r0, 0x3
    mulli   r3, r0, 0x190
    stb     r6, 0x268(r31)
    sth     r3, 0x248(r31)
    mulli   r4, r6, 0x190
    stb     r6, 0x269(r31)
    li      r0, 0x5
    sth     r4, 0x24a(r31)
    mulli   r3, r0, 0x190
    stb     r6, 0x26a(r31)
    li      r0, 0x6
    sth     r3, 0x24c(r31)
    mulli   r4, r0, 0x190
    stb     r6, 0x26b(r31)
    li      r0, 0x7
    sth     r4, 0x24e(r31)
    mulli   r3, r0, 0x190
    stb     r6, 0x26c(r31)
    li      r4, 0x9
    sth     r3, 0x250(r31)
    li      r7, 0x10
    li      r0, 0xc80
    stb     r6, 0x26d(r31)
    mulli   r5, r4, 0x190
    sth     r0, 0x252(r31)
    li      r3, 0xa
    stb     r6, 0x26e(r31)
    mulli   r4, r3, 0x190
    sth     r5, 0x254(r31)
    li      r0, 0xb
    stb     r6, 0x26f(r31)
    mulli   r3, r0, 0x190
    sth     r4, 0x256(r31)
    li      r0, 0xc
    stb     r6, 0x270(r31)
    mulli   r4, r0, 0x190
    sth     r3, 0x258(r31)
    li      r0, 0xd
    stb     r6, 0x271(r31)
    mulli   r3, r0, 0x190
    sth     r4, 0x25a(r31)
    li      r0, 0xe
    stb     r6, 0x272(r31)
    mulli   r4, r0, 0x190
    sth     r3, 0x25c(r31)
    li      r0, 0xf
    stb     r6, 0x273(r31)
    mulli   r3, r0, 0x190
    sth     r4, 0x25e(r31)
    subfic  r0, r7, 0x12
    stb     r6, 0x274(r31)
    cmpwi   r7, 0x12
    mulli   r4, r7, 0x190
    mtctr   r0
    sth     r3, 0x260(r31)
    stb     r6, 0x275(r31)
    slwi    r3, r7, 1
    bge-    branch_0x8016e828
branch_0x8016e808:
    addi    r0, r3, 0x242
    sthx    r4, r31, r0
    addi    r0, r7, 0x266
    addi    r3, r3, 0x2
    stbx    r6, r31, r0
    addi    r4, r4, 0x190
    addi    r7, r7, 0x1
    bdnz+      branch_0x8016e808
branch_0x8016e828:
    lwz     r3, 0x34(r31)
    lis     r4, 0x524f
    addi    r4, r4, 0x4f54
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x21c(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x8016e86c
    lis     r5, 0x7469
    lwz     r4, 0x34(r31)
    addi    r3, r19, 0x0
    addi    r5, r5, 0x746c
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016e86c:
    stw     r19, 0xf0(r31)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x8016e894
    lis     r5, 0x6e69
    lwz     r4, 0x34(r31)
    addi    r3, r19, 0x0
    addi    r5, r5, 0x6e74
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016e894:
    lis     r3, 0x6666
    stw     r19, 0xf4(r31)
    addi    r28, r3, 0x6667
    li      r26, 0x0
    li      r19, 0x0
    li      r20, 0x0
branch_0x8016e8ac:
    cmpwi   r26, 0x9
    bge-    branch_0x8016e8c0
    addis   r21, r26, 0x735f
    addi    r21, r21, 0x3031
    b       branch_0x8016e8f8

branch_0x8016e8c0:
    addi    r5, r26, 0x1
    mulhw   r0, r28, r5
    srawi   r4, r0, 2
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    srwi    r3, r4, 31
    mulli   r0, r0, 0xa
    add     r3, r4, r3
    slwi    r3, r3, 8
    addis   r3, r3, 0x735f
    subf    r0, r0, r5
    add     r21, r3, r0
    addi    r21, r21, 0x3030
branch_0x8016e8f8:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x8016e918
    lwz     r4, 0x34(r31)
    addi    r3, r22, 0x0
    addi    r5, r21, 0x0
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016e918:
    addi    r6, r20, 0xf8
    add     r6, r31, r6
    stw     r22, 0x0(r6)
    addi    r0, r19, 0x124
    addi    r26, r26, 0x1
    lwz     r3, 0x0(r6)
    li      r5, 0x0
    add     r4, r31, r0
    lwz     r3, 0x0(r3)
    cmpwi   r26, 0xb
    addi    r19, r19, 0x10
    stb     r5, 0xcc(r3)
    addi    r20, r20, 0x4
    lwz     r3, 0x0(r6)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x8(r4)
    stw     r0, 0xc(r4)
    blt+    branch_0x8016e8ac
    lis     r4, 0x6666
    lfs     f30, -0x49a4(rtoc)
    lis     r3, 0x100
    lfs     f31, -0x4930(rtoc)
    addi    r28, r4, 0x6667
    subi    r21, r3, 0x100
    li      r26, 0x0
    li      r19, 0x0
branch_0x8016e998:
    cmpwi   r26, 0x9
    bge-    branch_0x8016e9ac
    addis   r20, r26, 0x705f
    addi    r20, r20, 0x3031
    b       branch_0x8016e9e4

branch_0x8016e9ac:
    addi    r5, r26, 0x1
    mulhw   r0, r28, r5
    srawi   r4, r0, 2
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    srwi    r3, r4, 31
    mulli   r0, r0, 0xa
    add     r3, r4, r3
    slwi    r3, r3, 8
    addis   r3, r3, 0x705f
    subf    r0, r0, r5
    add     r20, r3, r0
    addi    r20, r20, 0x3030
branch_0x8016e9e4:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x8016ea04
    lwz     r4, 0x34(r31)
    addi    r3, r22, 0x0
    addi    r5, r20, 0x0
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016ea04:
    addi    r5, r19, 0x1d4
    add     r5, r31, r5
    stw     r22, 0x0(r5)
    addi    r26, r26, 0x1
    li      r29, 0x0
    stw     r21, 0x1a8(sp)
    li      r0, 0xff
    cmpwi   r26, 0x12
    lwz     r4, 0x0(r5)
    li      r20, 0x1
    lwz     r3, 0x1a8(sp)
    addi    r19, r19, 0x4
    lwz     r4, 0x0(r4)
    stw     r3, 0x140(r4)
    lwz     r4, 0x0(r5)
    lwz     r3, 0x0(r4)
    stb     r29, 0xcc(r3)
    stfs    f30, 0x44(r4)
    stfs    f31, 0x48(r4)
    sth     r0, 0x4c(r4)
    stb     r20, 0x50(r4)
    blt+    branch_0x8016e998
    lwz     r3, 0x28(r31)
    lis     r4, 0x7961
    addi    r4, r4, 0x6a69
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x27c(r31)
    lis     r3, 0x73
    addi    r4, r3, 0x5f31
    lwz     r5, 0x27c(r31)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x280(r31)
    stw     r0, 0x284(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x288(r31)
    stw     r0, 0x28c(r31)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x290(r31)
    li      r3, 0x54
    lwz     r4, 0x27c(r31)
    stb     r20, 0xc(r4)
    lwz     r4, 0x290(r31)
    stb     r20, 0xc(r4)
    lwz     r4, 0x27c(r31)
    stb     r29, 0xcc(r4)
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x8016eafc
    lis     r5, 0x77
    lwz     r4, 0x28(r31)
    addi    r3, r19, 0x0
    addi    r5, r5, 0x5f30
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016eafc:
    stw     r19, 0x2a8(r31)
    lis     r19, 0x6d5f
    addi    r4, r19, 0x3061
    lwz     r3, 0x2a8(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x2ac(r31)
    stw     r0, 0x2b0(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x2b4(r31)
    stw     r0, 0x2b8(r31)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2bc(r31)
    li      r4, 0x100
    lwz     r20, 0x2bc(r31)
    mr      r3, r20
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r20
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addi    r4, r19, 0x3062
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2c0(r31)
    li      r4, 0x100
    lwz     r19, 0x2c0(r31)
    mr      r3, r19
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r19
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8016ebcc
    addi    r3, r30, 0x1c8
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r19, 0x0
    stw     r19, 0x28(r20)
    addi    r4, r3, 0x0
    mr      r3, r20
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r19, 0x50(r20)
branch_0x8016ebcc:
    addi    r24, r20, 0x0
    li      r25, 0x0
    li      r19, 0x0
    li      r20, 0x0
    li      r21, 0x0
branch_0x8016ebe0:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x8016ec04
    addis   r5, r25, 0x77
    lwz     r4, 0x28(r31)
    addi    r3, r22, 0x0
    addi    r5, r5, 0x5f31
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016ec04:
    add     r23, r31, r21
    stw     r22, 0x2c4(r23)
    addis   r4, r20, 0x6d5f
    addi    r4, r4, 0x3161
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2e0(r23)
    li      r4, 0x80
    lwz     r22, 0x2e0(r23)
    mr      r3, r22
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r22
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addis   r4, r20, 0x6d5f
    addi    r4, r4, 0x3162
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2ec(r23)
    li      r4, 0x80
    lwz     r22, 0x2ec(r23)
    mr      r3, r22
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r22
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addis   r4, r25, 0x7368
    addi    r4, r4, 0x6e30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2f8(r23)
    addis   r4, r19, 0x6e5f
    addi    r4, r4, 0x3061
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x304(r23)
    addis   r4, r19, 0x6e5f
    addi    r4, r4, 0x3062
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x310(r23)
    addis   r4, r25, 0x7368
    addi    r4, r4, 0x7030
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x31c(r23)
    addis   r4, r19, 0x6e70
    addi    r4, r4, 0x3061
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x328(r23)
    addis   r4, r19, 0x6e70
    addi    r4, r4, 0x3062
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x334(r23)
    addis   r4, r19, 0x6e70
    addi    r4, r4, 0x3063
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x340(r23)
    addis   r4, r19, 0x6372
    addi    r4, r4, 0x6131
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x34c(r23)
    mr      r4, r24
    lwz     r3, 0x34c(r23)
    lfs     f1, -0x49a4(rtoc)
    lbz     r5, 0xfc(r3)
    bl      insert__10J2DPictureFP10JUTTextureUcf
    lwz     r3, 0x28(r31)
    addis   r4, r19, 0x6372
    addi    r4, r4, 0x6132
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    li      r0, 0x0
    cmpwi   r25, 0x3
    stb     r0, 0xc(r3)
    addi    r19, r19, 0x100
    addi    r20, r20, 0x2
    addi    r21, r21, 0x4
    blt+    branch_0x8016ebe0
    lwz     r3, 0x2c4(r31)
    li      r26, 0x0
    li      r20, 0x0
    lwz     r4, 0x0(r3)
    li      r21, 0x0
    li      r22, 0x0
    lwz     r3, 0x14(r4)
    lwz     r0, 0x18(r4)
    stw     r3, 0x2d0(r31)
    stw     r0, 0x2d4(r31)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x2d8(r31)
    stw     r0, 0x2dc(r31)
branch_0x8016ee0c:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x8016ee30
    addis   r5, r26, 0x77
    lwz     r4, 0x28(r31)
    addi    r3, r19, 0x0
    addi    r5, r5, 0x5f34
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016ee30:
    addi    r3, r22, 0x35c
    add     r3, r31, r3
    stw     r19, 0x0(r3)
    addis   r28, r26, 0x735f
    add     r27, r31, r21
    lwz     r3, 0x0(r3)
    add     r29, r31, r20
    li      r25, 0x0
    lwz     r4, 0x0(r3)
    li      r23, 0x0
    li      r24, 0x0
    lwz     r3, 0x14(r4)
    li      r19, 0x0
    lwz     r0, 0x18(r4)
    addi    r28, r28, 0x3261
    stw     r3, 0x368(r27)
    stw     r0, 0x36c(r27)
    lwz     r3, 0x1c(r4)
    lwz     r0, 0x20(r4)
    stw     r3, 0x370(r27)
    stw     r0, 0x374(r27)
branch_0x8016ee84:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016eea4
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    add     r5, r28, r19
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016eea4:
    addi    r3, r24, 0x398
    add     r3, r27, r3
    stw     r18, 0x0(r3)
    addi    r0, r23, 0x3c8
    addi    r25, r25, 0x1
    lwz     r3, 0x0(r3)
    add     r4, r29, r0
    cmpwi   r25, 0x4
    lwz     r5, 0x0(r3)
    addi    r23, r23, 0x10
    addi    r24, r24, 0x4
    lwz     r3, 0x14(r5)
    addi    r19, r19, 0x100
    lwz     r0, 0x18(r5)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x8(r4)
    stw     r0, 0xc(r4)
    blt+    branch_0x8016ee84
    addi    r26, r26, 0x1
    cmpwi   r26, 0x3
    addi    r20, r20, 0x40
    addi    r21, r21, 0x10
    addi    r22, r22, 0x4
    blt+    branch_0x8016ee0c
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016ef34
    lis     r5, 0x77
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    addi    r5, r5, 0x5f37
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016ef34:
    stw     r18, 0x488(r31)
    lis     r19, 0x6d5f
    addi    r4, r19, 0x3261
    lwz     r3, 0x488(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x48c(r31)
    stw     r0, 0x490(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x494(r31)
    stw     r0, 0x498(r31)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x49c(r31)
    li      r4, 0x400
    lwz     r20, 0x49c(r31)
    mr      r3, r20
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r20
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addi    r4, r19, 0x3262
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x4a0(r31)
    li      r4, 0x400
    lwz     r19, 0x4a0(r31)
    mr      r3, r19
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r19
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r19, 0x0
    li      r20, 0x0
    li      r21, 0x0
    li      r22, 0x0
branch_0x8016efe4:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016f008
    addis   r5, r22, 0x735f
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    addi    r5, r5, 0x3661
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016f008:
    addi    r3, r21, 0x4a4
    add     r3, r31, r3
    stw     r18, 0x0(r3)
    addi    r0, r20, 0x4ac
    addi    r19, r19, 0x1
    lwz     r3, 0x0(r3)
    add     r4, r31, r0
    cmpwi   r19, 0x2
    lwz     r5, 0x0(r3)
    addi    r20, r20, 0x10
    addi    r21, r21, 0x4
    lwz     r3, 0x14(r5)
    addi    r22, r22, 0x100
    lwz     r0, 0x18(r5)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x8(r4)
    stw     r0, 0xc(r4)
    blt+    branch_0x8016efe4
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016f080
    lis     r5, 0x77
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    addi    r5, r5, 0x5f38
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016f080:
    stw     r18, 0x4cc(r31)
    lis     r19, 0x6d5f
    addi    r4, r19, 0x3461
    lwz     r3, 0x4cc(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x4d0(r31)
    stw     r0, 0x4d4(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x4d8(r31)
    stw     r0, 0x4dc(r31)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x4e0(r31)
    li      r4, 0x400
    lwz     r20, 0x4e0(r31)
    mr      r3, r20
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r20
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addi    r4, r19, 0x3462
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x4e4(r31)
    li      r4, 0x400
    lwz     r19, 0x4e4(r31)
    mr      r3, r19
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r19
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    lis     r4, 0x74
    addi    r4, r4, 0x5f30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x4e8(r31)
    li      r19, 0x0
    li      r20, 0x0
branch_0x8016f148:
    lwz     r3, 0x28(r31)
    addis   r4, r19, 0x74
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r19, r19, 0x1
    addi    r0, r20, 0x4ec
    cmpwi   r19, 0x3
    stwx    r3, r31, r0
    addi    r20, r20, 0x4
    blt+    branch_0x8016f148
    li      r19, 0x0
    li      r20, 0x0
    li      r21, 0x0
    li      r22, 0x0
branch_0x8016f18c:
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016f1b0
    addis   r5, r22, 0x735f
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    addi    r5, r5, 0x3662
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016f1b0:
    addi    r3, r21, 0x4f8
    add     r3, r31, r3
    stw     r18, 0x0(r3)
    addi    r0, r20, 0x500
    addi    r19, r19, 0x1
    lwz     r3, 0x0(r3)
    add     r4, r31, r0
    cmpwi   r19, 0x2
    lwz     r5, 0x0(r3)
    addi    r20, r20, 0x10
    addi    r21, r21, 0x4
    lwz     r3, 0x14(r5)
    addi    r22, r22, 0x100
    lwz     r0, 0x18(r5)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x8(r4)
    stw     r0, 0xc(r4)
    blt+    branch_0x8016f18c
    lwz     r3, 0x28(r31)
    lis     r19, 0x665f
    addi    r4, r19, 0x7368
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x520(r31)
    addi    r4, r19, 0x7369
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x530(r31)
    li      r19, 0x0
    li      r20, 0x0
branch_0x8016f248:
    lwz     r3, 0x28(r31)
    addis   r4, r19, 0x6e5f
    addi    r4, r4, 0x3361
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r19, r19, 0x1
    addi    r0, r20, 0x524
    cmpwi   r19, 0x3
    stwx    r3, r31, r0
    addi    r20, r20, 0x4
    blt+    branch_0x8016f248
    li      r19, 0x0
    li      r20, 0x0
branch_0x8016f284:
    lwz     r3, 0x28(r31)
    addis   r4, r19, 0x6e5f
    addi    r4, r4, 0x3461
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r19, r19, 0x1
    addi    r0, r20, 0x534
    cmpwi   r19, 0x2
    stwx    r3, r31, r0
    addi    r20, r20, 0x4
    blt+    branch_0x8016f284
    lwz     r3, 0x28(r31)
    lis     r19, 0x6d5f
    addi    r4, r19, 0x3361
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x53c(r31)
    li      r4, 0x14
    lwz     r20, 0x53c(r31)
    mr      r3, r20
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r20
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addi    r4, r19, 0x3362
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x540(r31)
    li      r4, 0x14
    lwz     r19, 0x540(r31)
    mr      r3, r19
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r19
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016f350
    lis     r5, 0x77
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    addi    r5, r5, 0x5f39
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016f350:
    stw     r18, 0x544(r31)
    lis     r19, 0x6d5f
    addi    r4, r19, 0x3561
    lwz     r3, 0x544(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x548(r31)
    stw     r0, 0x54c(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x550(r31)
    stw     r0, 0x554(r31)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x558(r31)
    li      r4, 0x400
    lwz     r20, 0x558(r31)
    mr      r3, r20
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r20
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addi    r4, r19, 0x3562
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x55c(r31)
    li      r4, 0x400
    lwz     r19, 0x55c(r31)
    mr      r3, r19
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r19
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x55c(r31)
    li      r0, 0x0
    li      r19, 0x0
    stb     r0, 0xc(r3)
    li      r20, 0x0
branch_0x8016f404:
    lwz     r3, 0x28(r31)
    addis   r4, r19, 0x735f
    addi    r4, r4, 0x3061
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r19, r19, 0x1
    addi    r0, r20, 0x560
    cmpwi   r19, 0x3
    stwx    r3, r31, r0
    addi    r20, r20, 0x4
    blt+    branch_0x8016f404
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016f45c
    lis     r5, 0x775f
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    addi    r5, r5, 0x3131
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016f45c:
    stw     r18, 0x56c(r31)
    lis     r19, 0x6d5f
    addi    r4, r19, 0x3761
    lwz     r3, 0x56c(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x570(r31)
    stw     r0, 0x574(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x578(r31)
    stw     r0, 0x57c(r31)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x580(r31)
    li      r4, 0x400
    lwz     r20, 0x580(r31)
    mr      r3, r20
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r20
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addi    r4, r19, 0x3762
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x584(r31)
    li      r4, 0x400
    lwz     r19, 0x584(r31)
    mr      r3, r19
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r19
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r4, 0x584(r31)
    li      r0, 0x0
    li      r3, 0x54
    stb     r0, 0xc(r4)
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x8016f52c
    lis     r5, 0x775f
    lwz     r4, 0x28(r31)
    addi    r3, r18, 0x0
    addi    r5, r5, 0x3130
    bl      __ct__7TExPaneFP9J2DScreenUl
branch_0x8016f52c:
    stw     r18, 0x588(r31)
    lis     r19, 0x6d5f
    addi    r4, r19, 0x3661
    lwz     r3, 0x588(r31)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r3, 0x58c(r31)
    stw     r0, 0x590(r31)
    lwz     r3, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r3, 0x594(r31)
    stw     r0, 0x598(r31)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x59c(r31)
    li      r4, 0x400
    lwz     r20, 0x59c(r31)
    mr      r3, r20
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r20
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x28(r31)
    addi    r4, r19, 0x3662
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x5a0(r31)
    li      r4, 0x400
    lwz     r19, 0x5a0(r31)
    mr      r3, r19
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    mr      r3, r19
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0xe0(r30)
    addi    r29, sp, 0x1b0
    lwz     r0, 0xe4(r30)
    li      r25, 0x0
    li      r23, 0x0
    stw     r3, 0x1b0(sp)
    li      r22, 0x0
    li      r21, 0x0
    stw     r0, 0x1b4(sp)
    lwz     r3, 0xe8(r30)
    lwz     r0, 0xec(r30)
    stw     r3, 0x1b8(sp)
    stw     r0, 0x1bc(sp)
    lwz     r3, 0xf0(r30)
    lwz     r0, 0xf4(r30)
    stw     r3, 0x1c0(sp)
    stw     r0, 0x1c4(sp)
    lwz     r0, 0xf8(r30)
    stw     r0, 0x1c8(sp)
branch_0x8016f618:
    lwz     r3, 0x2c(r31)
    addis   r4, r25, 0x7374
    addi    r4, r4, 0x5f30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r27, r31, r21
    addis   r19, r22, 0x6e5f
    stw     r3, 0x5a4(r27)
    li      r24, 0x0
    li      r20, 0x0
    addi    r19, r19, 0x3061
branch_0x8016f64c:
    lwz     r3, 0x2c(r31)
    add     r4, r19, r24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    addi    r0, r20, 0x5a8
    cmpwi   r24, 0x3
    stwx    r3, r27, r0
    addi    r20, r20, 0x4
    blt+    branch_0x8016f64c
    addis   r28, r22, 0x7368
    lwzx    r30, r29, r23
    li      r24, 0x0
    li      r20, 0x0
    addi    r28, r28, 0x3061
branch_0x8016f690:
    lwz     r3, 0x2c(r31)
    add     r4, r28, r24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r26, r20, 0x5b4
    add     r26, r27, r26
    stw     r3, 0x0(r26)
    addi    r3, r30, 0x0
    addi    r4, r24, 0x0
    li      r5, 0x0
    bl      SMS_getShineID__FUlUlb
    extsh   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x8016f6d8
    li      r3, 0x0
    b       branch_0x8016f6e8

branch_0x8016f6d8:
    lwz     r0, -0x6060(r13)
    clrlwi  r4, r3, 24
    mr      r3, r0
    bl      getShineFlag__12TFlagManagerCFUc
branch_0x8016f6e8:
    clrlwi. r0, r3, 24
    bne-    branch_0x8016f6fc
    lwz     r3, 0x0(r26)
    li      r0, 0x0
    stb     r0, 0xc(r3)
branch_0x8016f6fc:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x8
    addi    r20, r20, 0x4
    blt+    branch_0x8016f690
    addis   r20, r22, 0x7368
    li      r26, 0x0
    li      r24, 0x0
    li      r19, 0x0
    addi    r20, r20, 0x3069
branch_0x8016f720:
    lwz     r3, 0x2c(r31)
    add     r4, r20, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r4, r24, 0x5d4
    add     r4, r27, r4
    stw     r3, 0x0(r4)
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    lwz     r3, 0x0(r4)
    addi    r24, r24, 0x4
    stb     r19, 0xc(r3)
    blt+    branch_0x8016f720
    lwz     r3, 0x2c(r31)
    addis   r4, r22, 0x7368
    addi    r4, r4, 0x306b
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x5dc(r27)
    addi    r25, r25, 0x1
    cmpwi   r25, 0x7
    lwz     r3, 0x5dc(r27)
    li      r19, 0x0
    addi    r22, r22, 0x100
    stb     r19, 0xc(r3)
    addi    r21, r21, 0x3c
    addi    r23, r23, 0x4
    blt+    branch_0x8016f618
    li      r20, 0x0
    li      r24, 0x0
branch_0x8016f7a8:
    lwz     r3, 0x2c(r31)
    addis   r4, r20, 0x74
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r4, r24, 0x748
    add     r4, r31, r4
    stw     r3, 0x0(r4)
    addi    r20, r20, 0x1
    cmpwi   r20, 0x3
    lwz     r3, 0x0(r4)
    addi    r24, r24, 0x4
    stb     r19, 0xc(r3)
    blt+    branch_0x8016f7a8
    lwz     r3, 0x2c(r31)
    lis     r4, 0x74
    addi    r4, r4, 0x5f70
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x760(r31)
    lis     r3, 0x735f
    addi    r4, r3, 0x746c
    lwz     r3, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x764(r31)
    lis     r19, 0x6e
    addi    r4, r19, 0x5f61
    lwz     r3, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x768(r31)
    addi    r4, r19, 0x5f62
    lwz     r3, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x76c(r31)
    addi    r4, r19, 0x5f63
    lwz     r3, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x770(r31)
branch_0x8016f880:
    lmw     r18, 0x1f8(sp)
    lwz     r0, 0x244(sp)
    lfd     f31, 0x238(sp)
    lfd     f30, 0x230(sp)
    mtlr    r0
    addi    sp, sp, 0x240
    blr


.globl __ct__9TCardLoadFPCc
__ct__9TCardLoadFPCc: # 0x8016f89c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r29, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r29)
    stw     r4, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r29)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r29)
    li      r30, 0x0
    lis     r3, 0x803c
    sth     r30, 0xc(r29)
    addi    r0, r3, 0x9c8
    lis     r3, 0x8015
    stw     r0, 0x0(r29)
    li      r0, 0x5
    addi    r31, r3, 0xe0
    stw     r0, 0x10(r29)
    li      r0, 0xa
    addi    r4, r31, 0x0
    stw     r0, 0x14(r29)
    addi    r3, r29, 0x124
    li      r5, 0x0
    stw     r30, 0x1c(r29)
    li      r6, 0x10
    li      r7, 0xb
    stw     r30, 0x28(r29)
    stw     r30, 0x2c(r29)
    stw     r30, 0x30(r29)
    stw     r30, 0xa0(r29)
    stw     r30, 0xa4(r29)
    lfs     f0, -0x492c(rtoc)
    stfs    f0, 0xa8(r29)
    stw     r30, 0xac(r29)
    stb     r30, 0xb8(r29)
    stw     r30, 0xbc(r29)
    bl      __construct_array
    stw     r30, 0x27c(r29)
    addi    r3, r29, 0x280
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r30, 0x290(r29)
    addi    r3, r29, 0x2ac
    li      r4, 0x0
    stb     r30, 0x294(r29)
    li      r5, 0x0
    li      r6, 0x0
    stb     r30, 0x295(r29)
    li      r7, 0x0
    stw     r30, 0x2a4(r29)
    stw     r30, 0x2a8(r29)
    bl      set__7JUTRectFiiii
    addi    r3, r29, 0x2d0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r4, r31, 0x0
    addi    r3, r29, 0x368
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x3
    bl      __construct_array
    addi    r4, r31, 0x0
    addi    r3, r29, 0x3c8
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0xc
    bl      __construct_array
    addi    r3, r29, 0x48c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r4, r31, 0x0
    addi    r3, r29, 0x4ac
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x2
    bl      __construct_array
    addi    r3, r29, 0x4d0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r4, r31, 0x0
    addi    r3, r29, 0x500
    li      r5, 0x0
    li      r6, 0x10
    li      r7, 0x2
    bl      __construct_array
    stw     r30, 0x544(r29)
    addi    r3, r29, 0x548
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r30, 0x558(r29)
    addi    r3, r29, 0x570
    li      r4, 0x0
    stw     r30, 0x55c(r29)
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r29, 0x58c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r30, 0x774(r29)
    mr      r3, r29
    stw     r29, -0x63e0(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl SMS_getShineID__FUlUlb
SMS_getShineID__FUlUlb: # 0x8016fac0
    cmplwi  r3, 0x9
    ble-    branch_0x8016fad0
    li      r3, -0x1
    blr

branch_0x8016fad0:
    clrlwi. r0, r5, 24
    beq-    branch_0x8016faf0
    lis     r5, 0x803c
    slwi    r3, r3, 2
    addi    r0, r5, 0x8c8
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    b       branch_0x8016fb04

branch_0x8016faf0:
    lis     r5, 0x803c
    slwi    r3, r3, 2
    addi    r0, r5, 0x8a0
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
branch_0x8016fb04:
    cmplwi  r3, 0x0
    bne-    branch_0x8016fb14
    li      r3, -0x1
    blr

branch_0x8016fb14:
    lbzx    r3, r3, r4
    blr


.globl __sinit_CardLoad_cpp
__sinit_CardLoad_cpp: # 0x8016fb1c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x40d0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fb64
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8016fb64:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fb94
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8016fb94:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fbc4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8016fbc4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fbf4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8016fbf4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fc24
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8016fc24:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fc54
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8016fc54:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fc84
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8016fc84:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fcb4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8016fcb4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fce4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8016fce4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fd14
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8016fd14:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fd44
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8016fd44:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fd74
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8016fd74:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fda4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8016fda4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fdd4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8016fdd4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8016fe04
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8016fe04:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

