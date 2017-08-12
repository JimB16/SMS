
.globl __dt__18TMapObjBaseManagerFv
__dt__18TMapObjBaseManagerFv: # 0x801b5320
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b5398
    lis     r3, __vvt__18TMapObjBaseManager@ha
    addi    r0, r3, __vvt__18TMapObjBaseManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801b5388
    lis     r3, __vvt__12TLiveManager@ha
    addi    r0, r3, __vvt__12TLiveManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801b5388
    lis     r3, __vvt__11TObjManager@ha
    addi    r0, r3, __vvt__11TObjManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801b5388
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801b5388:
    extsh.  r0, r31
    ble-    branch_0x801b5398
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b5398:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__18TMapObjBaseManagerFPCc
__ct__18TMapObjBaseManagerFPCc: # 0x801b53b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TLiveManagerFPCc
    lis     r3, __vvt__18TMapObjBaseManager@ha
    addi    r0, r3, __vvt__18TMapObjBaseManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lfs     f0, -0x2c88(r2)
    stfs    f0, 0x38(r31)
    stfs    f0, 0x3c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__18TMapObjBaseManagerFR20JSUMemoryInputStream
load__18TMapObjBaseManagerFR20JSUMemoryInputStream: # 0x801b53fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__12TLiveManagerFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x3c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getObjNumWithActorType__18TMapObjBaseManagerCFUl
getObjNumWithActorType__18TMapObjBaseManagerCFUl: # 0x801b5454
    lwz     r0, 0x14(r3)
    li      r7, 0x0
    li      r5, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x801b54a0
branch_0x801b546c:
    lwz     r6, 0x18(r3)
    lwzx    r6, r6, r5
    lwz     r0, 0x4c(r6)
    cmplw   r0, r4
    bne-    branch_0x801b5488
    li      r0, 0x1
    b       branch_0x801b548c

branch_0x801b5488:
    li      r0, 0x0
branch_0x801b548c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b5498
    addi    r7, r7, 0x1
branch_0x801b5498:
    addi    r5, r5, 0x4
    bdnz+      branch_0x801b546c
branch_0x801b54a0:
    mr      r3, r7
    blr


.globl createModelData__18TMapObjBaseManagerFv
createModelData__18TMapObjBaseManagerFv: # 0x801b54a8
    mflr    r0
    lis     r4, entry_3271@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3271@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl clipActors__18TMapObjBaseManagerFPQ26JDrama9TGraphics
clipActors__18TMapObjBaseManagerFPQ26JDrama9TGraphics: # 0x801b54dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x30(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x801b5500
    lfs     f1, 0x38(r3)
    lfs     f2, 0x3c(r3)
    bl      clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
branch_0x801b5500:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getActorTypeByEventID__18TMapObjBaseManagerFUl
getActorTypeByEventID__18TMapObjBaseManagerFUl: # 0x801b5510
    cmplwi  r3, 0x32
    bge-    branch_0x801b5524
    lis     r3, unk_2000000e@h
    addi    r3, r3, unk_2000000e@l
    blr

branch_0x801b5524:
    cmpwi   r3, 0x3e9
    beq-    branch_0x801b55c0
    bge-    branch_0x801b5560
    cmpwi   r3, 0xc8
    beq-    branch_0x801b559c
    bge-    branch_0x801b5548
    cmpwi   r3, 0x64
    beq-    branch_0x801b5590
    b       branch_0x801b5608

branch_0x801b5548:
    cmpwi   r3, 0x309
    beq-    branch_0x801b55a8
    blt-    branch_0x801b5608
    cmpwi   r3, 0x3e8
    bge-    branch_0x801b55b4
    b       branch_0x801b5608

branch_0x801b5560:
    cmpwi   r3, 0x7d0
    beq-    branch_0x801b55f0
    bge-    branch_0x801b5584
    cmpwi   r3, 0x3ec
    beq-    branch_0x801b55e4
    bge-    branch_0x801b5608
    cmpwi   r3, 0x3eb
    bge-    branch_0x801b55d8
    b       branch_0x801b55cc

branch_0x801b5584:
    cmpwi   r3, 0x7d2
    bge-    branch_0x801b5608
    b       branch_0x801b55fc

branch_0x801b5590:
    lis     r3, unk_2000000e@h
    addi    r3, r3, unk_2000000e@l
    blr

branch_0x801b559c:
    lis     r3, unk_2000000f@h
    addi    r3, r3, unk_2000000f@l
    blr

branch_0x801b55a8:
    lis     r3, unk_20000013@h
    addi    r3, r3, unk_20000013@l
    blr

branch_0x801b55b4:
    lis     r3, unk_40000394@h
    addi    r3, r3, unk_40000394@l
    blr

branch_0x801b55c0:
    lis     r3, unk_40000393@h
    addi    r3, r3, unk_40000393@l
    blr

branch_0x801b55cc:
    lis     r3, unk_40000391@h
    addi    r3, r3, unk_40000391@l
    blr

branch_0x801b55d8:
    lis     r3, unk_40000392@h
    addi    r3, r3, unk_40000392@l
    blr

branch_0x801b55e4:
    lis     r3, unk_40000390@h
    addi    r3, r3, unk_40000390@l
    blr

branch_0x801b55f0:
    lis     r3, unk_20000005@h
    addi    r3, r3, unk_20000005@l
    blr

branch_0x801b55fc:
    lis     r3, unk_20000005@h
    addi    r3, r3, unk_20000005@l
    blr

branch_0x801b5608:
    li      r3, 0x0
    blr


.globl newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc: # 0x801b5610
    mflr    r0
    lis     r5, unk_80390450@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x2a8(sp)
    stw     r31, 0x2a4(sp)
    addi    r31, r5, unk_80390450@l
    stw     r30, 0x2a0(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x29c(sp)
    addi    r29, r3, 0x0
    bl      newAndRegisterCoin__12TItemManagerFUl
    cmplwi  r3, 0x0
    beq-    branch_0x801b5648
    b       branch_0x801b5c68

branch_0x801b5648:
    cmpwi   r29, 0x3eb
    beq-    branch_0x801b593c
    bge-    branch_0x801b5678
    cmpwi   r29, 0x3e8
    beq-    branch_0x801b56e4
    bge-    branch_0x801b566c
    cmpwi   r29, 0x309
    beq-    branch_0x801b569c
    b       branch_0x801b5c5c

branch_0x801b566c:
    cmpwi   r29, 0x3ea
    bge-    branch_0x801b5874
    b       branch_0x801b57ac

branch_0x801b5678:
    cmpwi   r29, 0x7d0
    beq-    branch_0x801b5acc
    bge-    branch_0x801b5690
    cmpwi   r29, 0x3ed
    bge-    branch_0x801b5c5c
    b       branch_0x801b5a04

branch_0x801b5690:
    cmpwi   r29, 0x7d2
    bge-    branch_0x801b5c5c
    b       branch_0x801b5b94

branch_0x801b569c:
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x194
    addi    r5, r31, 0x154
    li      r4, 0x100
    bl      snprintf
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, sp, 0x194
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x194
    mtlr    r12
    blrl
    b       branch_0x801b5c68

branch_0x801b56e4:
    lfs     f0, -0x2c88(r2)
    addi    r3, r31, 0x164
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0x17c(sp)
    stfs    f1, 0x170(sp)
    stfs    f0, 0x188(sp)
    stfs    f1, 0x174(sp)
    stfs    f0, 0x180(sp)
    stfs    f0, 0x18c(sp)
    stfs    f1, 0x178(sp)
    stfs    f0, 0x184(sp)
    stfs    f0, 0x190(sp)
    bl      newItemByName__FPCc
    mr.     r30, r3
    bne-    branch_0x801b572c
    addi    r3, r31, 0x164
    bl      newUniqueObjByName__FPCc
    mr      r30, r3
branch_0x801b572c:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b5744
    li      r0, 0x1
    b       branch_0x801b5748

branch_0x801b5744:
    li      r0, 0x0
branch_0x801b5748:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b5754
    b       branch_0x801b5c64

branch_0x801b5754:
    lwz     r5, 0x188(sp)
    mr      r3, r30
    lwz     r0, 0x18c(sp)
    addi    r4, r31, 0x164
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x190(sp)
    stw     r0, 0x18(r30)
    lwz     r5, 0x17c(sp)
    lwz     r0, 0x180(sp)
    stw     r5, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0x184(sp)
    stw     r0, 0x38(r30)
    lwz     r5, 0x170(sp)
    lwz     r0, 0x174(sp)
    stw     r5, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0x178(sp)
    stw     r0, 0x2c(r30)
    bl      initAndRegister__11TMapObjBaseFPCc
    b       branch_0x801b5c64

branch_0x801b57ac:
    lfs     f0, -0x2c88(r2)
    addi    r3, r31, 0x170
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0x158(sp)
    stfs    f1, 0x14c(sp)
    stfs    f0, 0x164(sp)
    stfs    f1, 0x150(sp)
    stfs    f0, 0x15c(sp)
    stfs    f0, 0x168(sp)
    stfs    f1, 0x154(sp)
    stfs    f0, 0x160(sp)
    stfs    f0, 0x16c(sp)
    bl      newItemByName__FPCc
    mr.     r30, r3
    bne-    branch_0x801b57f4
    addi    r3, r31, 0x170
    bl      newUniqueObjByName__FPCc
    mr      r30, r3
branch_0x801b57f4:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b580c
    li      r0, 0x1
    b       branch_0x801b5810

branch_0x801b580c:
    li      r0, 0x0
branch_0x801b5810:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b581c
    b       branch_0x801b5c64

branch_0x801b581c:
    lwz     r5, 0x164(sp)
    mr      r3, r30
    lwz     r0, 0x168(sp)
    addi    r4, r31, 0x170
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x16c(sp)
    stw     r0, 0x18(r30)
    lwz     r5, 0x158(sp)
    lwz     r0, 0x15c(sp)
    stw     r5, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0x160(sp)
    stw     r0, 0x38(r30)
    lwz     r5, 0x14c(sp)
    lwz     r0, 0x150(sp)
    stw     r5, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0x154(sp)
    stw     r0, 0x2c(r30)
    bl      initAndRegister__11TMapObjBaseFPCc
    b       branch_0x801b5c64

branch_0x801b5874:
    lfs     f0, -0x2c88(r2)
    addi    r3, r31, 0x17c
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0x134(sp)
    stfs    f1, 0x128(sp)
    stfs    f0, 0x140(sp)
    stfs    f1, 0x12c(sp)
    stfs    f0, 0x138(sp)
    stfs    f0, 0x144(sp)
    stfs    f1, 0x130(sp)
    stfs    f0, 0x13c(sp)
    stfs    f0, 0x148(sp)
    bl      newItemByName__FPCc
    mr.     r30, r3
    bne-    branch_0x801b58bc
    addi    r3, r31, 0x17c
    bl      newUniqueObjByName__FPCc
    mr      r30, r3
branch_0x801b58bc:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b58d4
    li      r0, 0x1
    b       branch_0x801b58d8

branch_0x801b58d4:
    li      r0, 0x0
branch_0x801b58d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b58e4
    b       branch_0x801b5c64

branch_0x801b58e4:
    lwz     r5, 0x140(sp)
    mr      r3, r30
    lwz     r0, 0x144(sp)
    addi    r4, r31, 0x17c
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x148(sp)
    stw     r0, 0x18(r30)
    lwz     r5, 0x134(sp)
    lwz     r0, 0x138(sp)
    stw     r5, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0x13c(sp)
    stw     r0, 0x38(r30)
    lwz     r5, 0x128(sp)
    lwz     r0, 0x12c(sp)
    stw     r5, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0x130(sp)
    stw     r0, 0x2c(r30)
    bl      initAndRegister__11TMapObjBaseFPCc
    b       branch_0x801b5c64

branch_0x801b593c:
    lfs     f0, -0x2c88(r2)
    addi    r3, r31, 0x188
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0x110(sp)
    stfs    f1, 0x104(sp)
    stfs    f0, 0x11c(sp)
    stfs    f1, 0x108(sp)
    stfs    f0, 0x114(sp)
    stfs    f0, 0x120(sp)
    stfs    f1, 0x10c(sp)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x124(sp)
    bl      newItemByName__FPCc
    mr.     r30, r3
    bne-    branch_0x801b5984
    addi    r3, r31, 0x188
    bl      newUniqueObjByName__FPCc
    mr      r30, r3
branch_0x801b5984:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b599c
    li      r0, 0x1
    b       branch_0x801b59a0

branch_0x801b599c:
    li      r0, 0x0
branch_0x801b59a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b59ac
    b       branch_0x801b5c64

branch_0x801b59ac:
    lwz     r5, 0x11c(sp)
    mr      r3, r30
    lwz     r0, 0x120(sp)
    addi    r4, r31, 0x188
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x124(sp)
    stw     r0, 0x18(r30)
    lwz     r5, 0x110(sp)
    lwz     r0, 0x114(sp)
    stw     r5, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0x118(sp)
    stw     r0, 0x38(r30)
    lwz     r5, 0x104(sp)
    lwz     r0, 0x108(sp)
    stw     r5, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0x10c(sp)
    stw     r0, 0x2c(r30)
    bl      initAndRegister__11TMapObjBaseFPCc
    b       branch_0x801b5c64

branch_0x801b5a04:
    lfs     f0, -0x2c88(r2)
    addi    r3, r31, 0x194
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0xec(sp)
    stfs    f1, 0xe0(sp)
    stfs    f0, 0xf8(sp)
    stfs    f1, 0xe4(sp)
    stfs    f0, 0xf0(sp)
    stfs    f0, 0xfc(sp)
    stfs    f1, 0xe8(sp)
    stfs    f0, 0xf4(sp)
    stfs    f0, 0x100(sp)
    bl      newItemByName__FPCc
    mr.     r30, r3
    bne-    branch_0x801b5a4c
    addi    r3, r31, 0x194
    bl      newUniqueObjByName__FPCc
    mr      r30, r3
branch_0x801b5a4c:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b5a64
    li      r0, 0x1
    b       branch_0x801b5a68

branch_0x801b5a64:
    li      r0, 0x0
branch_0x801b5a68:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b5a74
    b       branch_0x801b5c64

branch_0x801b5a74:
    lwz     r5, 0xf8(sp)
    mr      r3, r30
    lwz     r0, 0xfc(sp)
    addi    r4, r31, 0x194
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x100(sp)
    stw     r0, 0x18(r30)
    lwz     r5, 0xec(sp)
    lwz     r0, 0xf0(sp)
    stw     r5, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0xf4(sp)
    stw     r0, 0x38(r30)
    lwz     r5, 0xe0(sp)
    lwz     r0, 0xe4(sp)
    stw     r5, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0xe8(sp)
    stw     r0, 0x2c(r30)
    bl      initAndRegister__11TMapObjBaseFPCc
    b       branch_0x801b5c64

branch_0x801b5acc:
    lfs     f0, -0x2c88(r2)
    addi    r3, r31, 0x1a4
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0xc8(sp)
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xd4(sp)
    stfs    f1, 0xc0(sp)
    stfs    f0, 0xcc(sp)
    stfs    f0, 0xd8(sp)
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xd0(sp)
    stfs    f0, 0xdc(sp)
    bl      newItemByName__FPCc
    mr.     r30, r3
    bne-    branch_0x801b5b14
    addi    r3, r31, 0x1a4
    bl      newUniqueObjByName__FPCc
    mr      r30, r3
branch_0x801b5b14:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b5b2c
    li      r0, 0x1
    b       branch_0x801b5b30

branch_0x801b5b2c:
    li      r0, 0x0
branch_0x801b5b30:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b5b3c
    b       branch_0x801b5c64

branch_0x801b5b3c:
    lwz     r5, 0xd4(sp)
    mr      r3, r30
    lwz     r0, 0xd8(sp)
    addi    r4, r31, 0x1a4
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x18(r30)
    lwz     r5, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    stw     r5, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0xd0(sp)
    stw     r0, 0x38(r30)
    lwz     r5, 0xbc(sp)
    lwz     r0, 0xc0(sp)
    stw     r5, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0xc4(sp)
    stw     r0, 0x2c(r30)
    bl      initAndRegister__11TMapObjBaseFPCc
    b       branch_0x801b5c64

branch_0x801b5b94:
    lfs     f0, -0x2c88(r2)
    addi    r3, r31, 0x1b0
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0xa4(sp)
    stfs    f1, 0x98(sp)
    stfs    f0, 0xb0(sp)
    stfs    f1, 0x9c(sp)
    stfs    f0, 0xa8(sp)
    stfs    f0, 0xb4(sp)
    stfs    f1, 0xa0(sp)
    stfs    f0, 0xac(sp)
    stfs    f0, 0xb8(sp)
    bl      newItemByName__FPCc
    mr.     r30, r3
    bne-    branch_0x801b5bdc
    addi    r3, r31, 0x1b0
    bl      newUniqueObjByName__FPCc
    mr      r30, r3
branch_0x801b5bdc:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b5bf4
    li      r0, 0x1
    b       branch_0x801b5bf8

branch_0x801b5bf4:
    li      r0, 0x0
branch_0x801b5bf8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b5c04
    b       branch_0x801b5c64

branch_0x801b5c04:
    lwz     r5, 0xb0(sp)
    mr      r3, r30
    lwz     r0, 0xb4(sp)
    addi    r4, r31, 0x1b0
    stw     r5, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0xb8(sp)
    stw     r0, 0x18(r30)
    lwz     r5, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    stw     r5, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0xac(sp)
    stw     r0, 0x38(r30)
    lwz     r5, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r5, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0xa0(sp)
    stw     r0, 0x2c(r30)
    bl      initAndRegister__11TMapObjBaseFPCc
    b       branch_0x801b5c64

branch_0x801b5c5c:
    li      r3, 0x0
    b       branch_0x801b5c68

branch_0x801b5c64:
    mr      r3, r30
branch_0x801b5c68:
    lwz     r0, 0x2ac(sp)
    lwz     r31, 0x2a4(sp)
    lwz     r30, 0x2a0(sp)
    mtlr    r0
    lwz     r29, 0x29c(sp)
    addi    sp, sp, 0x2a8
    blr


.globl newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801b5c84
    mflr    r0
    lis     r7, item_names_2995@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    li      r26, 0x0
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    addi    r27, r7, item_names_2995@l
    b       branch_0x801b5cec

branch_0x801b5cb4:
    mr      r3, r28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5ce8
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801b5ce0
    addi    r3, r26, 0x0
    addi    r4, r28, 0x0
    bl      __ct__5TItemFPCc
branch_0x801b5ce0:
    mr      r0, r26
    b       branch_0x801b5d00

branch_0x801b5ce8:
    addi    r26, r26, 0x4
branch_0x801b5cec:
    add     r3, r27, r26
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    bne+    branch_0x801b5cb4
    li      r0, 0x0
branch_0x801b5d00:
    cmplwi  r0, 0x0
    mr      r26, r0
    bne-    branch_0x801b5d18
    mr      r3, r28
    bl      newUniqueObjByName__FPCc
    mr      r26, r3
branch_0x801b5d18:
    lwz     r3, 0x4c(r26)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b5d30
    li      r0, 0x1
    b       branch_0x801b5d34

branch_0x801b5d30:
    li      r0, 0x0
branch_0x801b5d34:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b5d44
    mr      r3, r26
    b       branch_0x801b5d9c

branch_0x801b5d44:
    lwz     r5, 0x0(r29)
    mr      r3, r26
    lwz     r0, 0x4(r29)
    mr      r4, r28
    stw     r5, 0x10(r26)
    stw     r0, 0x14(r26)
    lwz     r0, 0x8(r29)
    stw     r0, 0x18(r26)
    lwz     r5, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r5, 0x30(r26)
    stw     r0, 0x34(r26)
    lwz     r0, 0x8(r30)
    stw     r0, 0x38(r26)
    lwz     r5, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r5, 0x24(r26)
    stw     r0, 0x28(r26)
    lwz     r0, 0x8(r31)
    stw     r0, 0x2c(r26)
    bl      initAndRegister__11TMapObjBaseFPCc
    mr      r3, r26
branch_0x801b5d9c:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl newUniqueObjByName__FPCc
newUniqueObjByName__FPCc: # 0x801b5db0
    mflr    r0
    lis     r4, unk_80390450@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, unk_80390450@l
    addi    r4, r31, 0x194
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5e04
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5dfc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c0
    bl      __ct__11TResetFruitFPCc
branch_0x801b5dfc:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5e04:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x188
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5e3c
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5e34
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c0
    bl      __ct__11TResetFruitFPCc
branch_0x801b5e34:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5e3c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x170
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5e74
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5e6c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c0
    bl      __ct__11TResetFruitFPCc
branch_0x801b5e6c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5e74:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x17c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5eac
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5ea4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c0
    bl      __ct__11TResetFruitFPCc
branch_0x801b5ea4:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5eac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x164
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5ee4
    li      r3, 0x1a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5edc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c0
    bl      __ct__11TResetFruitFPCc
branch_0x801b5edc:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5ee4:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c80
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5f04
    lwz     r3, R13Off_m0x62b0(r13)
    lwz     r3, 0x78(r3)
    b       branch_0x801b6968

branch_0x801b5f04:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5f3c
    li      r3, 0x164
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5f34
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1dc
    bl      __ct__8TCoinRedFPCc
branch_0x801b5f34:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5f3c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5f74
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5f6c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1f4
    bl      __ct__9TCoinBlueFPCc
branch_0x801b5f6c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5f74:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x200
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b5fc0
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b5fb8
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c78
    bl      __ct__5TItemFPCc
    lis     r3, __vvt__11TItemNozzle@ha
    addi    r3, r3, __vvt__11TItemNozzle@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x801b5fb8:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b5fc0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x214
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b600c
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6004
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c78
    bl      __ct__5TItemFPCc
    lis     r3, __vvt__11TItemNozzle@ha
    addi    r3, r3, __vvt__11TItemNozzle@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x801b6004:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b600c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x228
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6058
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6050
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c78
    bl      __ct__5TItemFPCc
    lis     r3, __vvt__11TItemNozzle@ha
    addi    r3, r3, __vvt__11TItemNozzle@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x801b6050:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6058:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x23c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b60a4
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b609c
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c78
    bl      __ct__5TItemFPCc
    lis     r3, __vvt__11TItemNozzle@ha
    addi    r3, r3, __vvt__11TItemNozzle@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x801b609c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b60a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x250
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b60f0
    li      r3, 0x148
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b60e8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x260
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, __vvt__15TBreakableBlock@ha
    addi    r3, r3, __vvt__15TBreakableBlock@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x801b60e8:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b60f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x270
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6128
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6120
    addi    r3, r30, 0x0
    addi    r4, r31, 0x27c
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b6120:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6128:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x290
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6190
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6188
    addi    r3, r30, 0x0
    addi    r4, r31, 0x29c
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__11TJuiceBlock@ha
    addi    r3, r3, __vvt__11TJuiceBlock@l
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x14c(r30)
    lfs     f1, -0x2c84(r2)
    stfs    f1, 0x140(r30)
    fmr     f0, f1
    stfs    f1, 0x144(r30)
    stfs    f0, 0x148(r30)
branch_0x801b6188:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6190:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6214
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b620c
    stw     r30, 0x30(sp)
    addi    r4, r31, 0x2bc
    lwz     r3, 0x30(sp)
    bl      __ct__11TMapObjBaseFPCc
    lwz     r4, 0x30(sp)
    lis     r3, __vvt__11TJuiceBlock@ha
    addi    r3, r3, __vvt__11TJuiceBlock@l
    stw     r3, 0x0(r4)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r4)
    addi    r3, r4, 0x140
    stw     r0, 0x14c(r4)
    lfs     f1, -0x2c84(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801b6c14
    lis     r3, __vvt__12TTelesaBlock@ha
    addi    r3, r3, __vvt__12TTelesaBlock@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x801b620c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6214:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2cc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b624c
    li      r3, 0x194
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6244
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2d8
    bl      __ct__10TLeanBlockFPCc
branch_0x801b6244:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b624c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6298
    li      r3, 0x194
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6290
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2f4
    bl      __ct__10TLeanBlockFPCc
    lis     r3, __vvt__11TCraneCargo@ha
    addi    r3, r3, __vvt__11TCraneCargo@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
branch_0x801b6290:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6298:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x304
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b62d0
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b62c8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x304
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b62c8:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b62d0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x318
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6308
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6300
    addi    r3, r30, 0x0
    addi    r4, r31, 0x27c
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b6300:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6308:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x328
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6340
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6338
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c70
    bl      __ct__5TCoinFPCc
branch_0x801b6338:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6340:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x334
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6378
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6370
    addi    r3, r30, 0x0
    addi    r4, r31, 0x344
    bl      __ct__5TItemFPCc
branch_0x801b6370:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6378:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x350
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b63f0
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b63e8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x364
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, __vvt__20TRevolvingFenceInner@h
    stw     r0, 0x20(r30)
    li      r0, 0x0
    addi    r4, r3, __vvt__20TRevolvingFenceInner@l
    stb     r0, 0x138(r30)
    addi    r3, r4, 0x24
    li      r0, 0x1
    stw     r4, 0x0(r30)
    stw     r3, 0x20(r30)
    lfs     f0, -0x2c88(r2)
    stfs    f0, 0x13c(r30)
    stb     r0, 0x140(r30)
branch_0x801b63e8:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b63f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1a4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b642c
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6424
    addi    r3, r30, 0x0
    addi    r5, r31, 0x374
    li      r4, 0x0
    bl      __ct__12TMushroom1upFiPCc
branch_0x801b6424:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b642c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1b0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6468
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6460
    addi    r3, r30, 0x0
    addi    r5, r31, 0x374
    li      r4, 0x1
    bl      __ct__12TMushroom1upFiPCc
branch_0x801b6460:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6468:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x384
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b64a4
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b649c
    addi    r3, r30, 0x0
    addi    r5, r31, 0x374
    li      r4, 0x2
    bl      __ct__12TMushroom1upFiPCc
branch_0x801b649c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b64a4:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c68
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b64dc
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b64d4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x27c
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b64d4:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b64dc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x394
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6514
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b650c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x27c
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b650c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6514:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3a0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b654c
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6544
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3b4
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b6544:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b654c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3c0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b65a0
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6598
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3cc
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__9TSandLeaf@h
    addi    r3, r3, __vvt__9TSandLeaf@l
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x138(r30)
branch_0x801b6598:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b65a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6610
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6608
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3e8
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__9TSandLeaf@h
    addi    r3, r3, __vvt__9TSandLeaf@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, __vvt__9TSandBomb@ha
    stw     r0, 0x20(r30)
    li      r4, 0x0
    addi    r3, r3, __vvt__9TSandBomb@l
    stw     r4, 0x138(r30)
    addi    r0, r3, 0x24
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
    stw     r4, 0x13c(r30)
    stb     r4, 0x140(r30)
branch_0x801b6608:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6610:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6648
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6640
    addi    r3, r30, 0x0
    addi    r4, r31, 0x408
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b6640:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6648:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x418
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b66dc
    li      r3, 0x168
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b66d4
    stw     r30, 0x48(sp)
    addi    r4, r31, 0x424
    lwz     r3, 0x48(sp)
    bl      __ct__11TMapObjBaseFPCc
    lwz     r31, 0x48(sp)
    lis     r3, __vvt__10TMerryPole@ha
    addi    r3, r3, __vvt__10TMerryPole@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x138
    stw     r0, 0x20(r31)
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f0, -0x2c88(r2)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x2c84(r2)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x138(r31)
branch_0x801b66d4:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b66dc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x440
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6714
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b670c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x440
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b670c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6714:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x44c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b674c
    li      r3, 0x138
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6744
    addi    r3, r30, 0x0
    addi    r4, r31, 0x458
    bl      __ct__11TMapObjBaseFPCc
branch_0x801b6744:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b674c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x474
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b67a0
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6798
    addi    r3, r30, 0x0
    addi    r4, r31, 0x480
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__18TMapObjChangeStage@ha
    addi    r3, r3, __vvt__18TMapObjChangeStage@l
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    sth     r0, 0x138(r30)
branch_0x801b6798:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b67a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x494
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b680c
    li      r3, 0x140
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6804
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4ac
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__18TMapObjChangeStage@ha
    addi    r3, r3, __vvt__18TMapObjChangeStage@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, __vvt__24TChangeStageMerrygoround@h
    stw     r0, 0x20(r30)
    li      r4, 0x0
    addi    r3, r3, __vvt__24TChangeStageMerrygoround@l
    sth     r4, 0x138(r30)
    addi    r0, r3, 0x24
    stw     r3, 0x0(r30)
    stw     r0, 0x20(r30)
    stb     r4, 0x13c(r30)
branch_0x801b6804:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b680c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4d4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6844
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b683c
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x2c60
    bl      __ct__14TCogwheelScaleFPCc
branch_0x801b683c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6844:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4e4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b687c
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6874
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4f4
    bl      __ct__14TCogwheelScaleFPCc
branch_0x801b6874:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b687c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x500
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b68b4
    li      r3, 0x1c0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b68ac
    addi    r3, r30, 0x0
    addi    r4, r31, 0x514
    bl      __ct__19THangingBridgeBoardFPCc
branch_0x801b68ac:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b68b4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x520
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b68ec
    li      r3, 0x1c0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b68e4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x514
    bl      __ct__19THangingBridgeBoardFPCc
branch_0x801b68e4:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b68ec:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x538
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6964
    li      r3, 0x144
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b695c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x554
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, __vvt__20TRevolvingFenceInner@h
    stw     r0, 0x20(r30)
    li      r0, 0x0
    addi    r4, r3, __vvt__20TRevolvingFenceInner@l
    stb     r0, 0x138(r30)
    addi    r3, r4, 0x24
    li      r0, 0x1
    stw     r4, 0x0(r30)
    stw     r3, 0x20(r30)
    lfs     f0, -0x2c88(r2)
    stfs    f0, 0x13c(r30)
    stb     r0, 0x140(r30)
branch_0x801b695c:
    mr      r3, r30
    b       branch_0x801b6968

branch_0x801b6964:
    li      r3, 0x0
branch_0x801b6968:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __dt__18TMapObjChangeStageFv
__dt__18TMapObjChangeStageFv: # 0x801b6980
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b69e8
    lis     r3, __vvt__18TMapObjChangeStage@ha
    addi    r3, r3, __vvt__18TMapObjChangeStage@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b69d8
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b69d8:
    extsh.  r0, r31
    ble-    branch_0x801b69e8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b69e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TSandLeafFv
__dt__9TSandLeafFv: # 0x801b6a04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b6a6c
    lis     r3, __vvt__9TSandLeaf@h
    addi    r3, r3, __vvt__9TSandLeaf@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b6a5c
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b6a5c:
    extsh.  r0, r31
    ble-    branch_0x801b6a6c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b6a6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__6TFenceFv
__dt__6TFenceFv: # 0x801b6a88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b6af0
    lis     r3, __vvt__6TFence@h
    addi    r3, r3, __vvt__6TFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b6ae0
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b6ae0:
    extsh.  r0, r31
    ble-    branch_0x801b6af0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b6af0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TLeanBlockFv
__dt__10TLeanBlockFv: # 0x801b6b0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b6b74
    lis     r3, __vvt__10TLeanBlock@ha
    addi    r3, r3, __vvt__10TLeanBlock@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b6b64
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b6b64:
    extsh.  r0, r31
    ble-    branch_0x801b6b74
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b6b74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TJuiceBlockFv
__dt__11TJuiceBlockFv: # 0x801b6b90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b6bf8
    lis     r3, __vvt__11TJuiceBlock@ha
    addi    r3, r3, __vvt__11TJuiceBlock@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b6be8
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b6be8:
    extsh.  r0, r31
    ble-    branch_0x801b6bf8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b6bf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801b6c14
set_f___Q29JGeometry8TVec3_f_Ffff_801b6c14: # 0x801b6c14
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __dt__5TItemFv
__dt__5TItemFv: # 0x801b6c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b6ca4
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b6c94
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b6c94
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b6c94:
    extsh.  r0, r31
    ble-    branch_0x801b6ca4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b6ca4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl newItemByName__FPCc
newItemByName__FPCc: # 0x801b6cc0
    mflr    r0
    lis     r4, item_names_2995@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, item_names_2995@l
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x801b6d24

branch_0x801b6cec:
    mr      r3, r29
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801b6d20
    li      r3, 0x154
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801b6d18
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      __ct__5TItemFPCc
branch_0x801b6d18:
    mr      r3, r30
    b       branch_0x801b6d38

branch_0x801b6d20:
    addi    r31, r31, 0x4
branch_0x801b6d24:
    add     r3, r30, r31
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    bne+    branch_0x801b6cec
    li      r3, 0x0
branch_0x801b6d38:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl makeObjAppeared__18TMapObjBaseManagerFUl
makeObjAppeared__18TMapObjBaseManagerFUl: # 0x801b6d54
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x801b6e24
branch_0x801b6d78:
    lwz     r6, 0x18(r3)
    lwzx    r6, r6, r5
    lwz     r0, 0x4c(r6)
    addi    r31, r6, 0x0
    cmplw   r0, r4
    bne-    branch_0x801b6d98
    li      r0, 0x1
    b       branch_0x801b6d9c

branch_0x801b6d98:
    li      r0, 0x0
branch_0x801b6d9c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b6df4
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 12, 12
    bne-    branch_0x801b6df4
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x801b6df4
    lwz     r6, 0x4c(r31)
    addis   r0, r6, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b6dd4
    li      r0, 0x1
    b       branch_0x801b6dd8

branch_0x801b6dd4:
    li      r0, 0x0
branch_0x801b6dd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b6dec
    lwz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b6df4
branch_0x801b6dec:
    li      r0, 0x1
    b       branch_0x801b6df8

branch_0x801b6df4:
    li      r0, 0x0
branch_0x801b6df8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b6e1c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    b       branch_0x801b6e28

branch_0x801b6e1c:
    addi    r5, r5, 0x4
    bdnz+      branch_0x801b6d78
branch_0x801b6e24:
    li      r3, 0x0
branch_0x801b6e28:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl makeObjAppear__18TMapObjBaseManagerFUl
makeObjAppear__18TMapObjBaseManagerFUl: # 0x801b6e3c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x801b6f0c
branch_0x801b6e60:
    lwz     r6, 0x18(r3)
    lwzx    r6, r6, r5
    lwz     r0, 0x4c(r6)
    addi    r31, r6, 0x0
    cmplw   r0, r4
    bne-    branch_0x801b6e80
    li      r0, 0x1
    b       branch_0x801b6e84

branch_0x801b6e80:
    li      r0, 0x0
branch_0x801b6e84:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b6edc
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 12, 12
    bne-    branch_0x801b6edc
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x801b6edc
    lwz     r6, 0x4c(r31)
    addis   r0, r6, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b6ebc
    li      r0, 0x1
    b       branch_0x801b6ec0

branch_0x801b6ebc:
    li      r0, 0x0
branch_0x801b6ec0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b6ed4
    lwz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b6edc
branch_0x801b6ed4:
    li      r0, 0x1
    b       branch_0x801b6ee0

branch_0x801b6edc:
    li      r0, 0x0
branch_0x801b6ee0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b6f04
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    b       branch_0x801b6f10

branch_0x801b6f04:
    addi    r5, r5, 0x4
    bdnz+      branch_0x801b6e60
branch_0x801b6f0c:
    li      r3, 0x0
branch_0x801b6f10:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl makeObjAppear__18TMapObjBaseManagerFfffUlb
makeObjAppear__18TMapObjBaseManagerFfffUlb: # 0x801b6f24
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r5, 24
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f3
    stfd    f30, 0x48(sp)
    fmr     f30, f1
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x3c(sp)
    beq-    branch_0x801b6fa4
    lfs     f0, -0x2c58(r2)
    fmr     f1, f30
    fmr     f3, f31
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f0, f2
    addi    r4, sp, 0x30
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x30(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801b6f90
    li      r0, 0x1
    b       branch_0x801b6f94

branch_0x801b6f90:
    li      r0, 0x0
branch_0x801b6f94:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b6fa8
    li      r3, 0x0
    b       branch_0x801b7078

branch_0x801b6fa4:
    fmr     f1, f2
branch_0x801b6fa8:
    lwz     r0, 0x14(r30)
    li      r3, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x801b7074
branch_0x801b6fbc:
    lwz     r4, 0x18(r30)
    lwzx    r4, r4, r3
    lwz     r0, 0x4c(r4)
    addi    r29, r4, 0x0
    cmplw   r0, r31
    bne-    branch_0x801b6fdc
    li      r0, 0x1
    b       branch_0x801b6fe0

branch_0x801b6fdc:
    li      r0, 0x0
branch_0x801b6fe0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b7038
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 12, 12
    bne-    branch_0x801b7038
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x801b7038
    lwz     r4, 0x4c(r29)
    addis   r0, r4, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b7018
    li      r0, 0x1
    b       branch_0x801b701c

branch_0x801b7018:
    li      r0, 0x0
branch_0x801b701c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b7030
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801b7038
branch_0x801b7030:
    li      r0, 0x1
    b       branch_0x801b703c

branch_0x801b7038:
    li      r0, 0x0
branch_0x801b703c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b706c
    stfs    f30, 0x10(r29)
    mr      r3, r29
    stfs    f1, 0x14(r29)
    stfs    f31, 0x18(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    b       branch_0x801b7078

branch_0x801b706c:
    addi    r3, r3, 0x4
    bdnz+      branch_0x801b6fbc
branch_0x801b7074:
    li      r3, 0x0
branch_0x801b7078:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x58
    blr


.globl __ct__14TMapObjManagerFPCc
__ct__14TMapObjManagerFPCc: # 0x801b709c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    mr      r3, r31
    bl      __ct__12TLiveManagerFPCc
    lis     r3, __vvt__18TMapObjBaseManager@ha
    addi    r0, r3, __vvt__18TMapObjBaseManager@l
    stw     r0, 0x0(r31)
    lis     r3, __vvt__14TMapObjManager@ha
    addi    r4, r3, __vvt__14TMapObjManager@l
    lfs     f0, -0x2c88(r2)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stfs    f0, 0x38(r31)
    stfs    f0, 0x3c(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x40(r31)
    stw     r0, 0x50(r31)
    stw     r0, 0x54(r31)
    stw     r0, 0x58(r31)
    stw     r0, 0x5c(r31)
    stw     r0, 0x60(r31)
    stw     r0, 0x64(r31)
    stw     r0, 0x68(r31)
    stw     r0, 0x6c(r31)
    stw     r0, 0x70(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    stw     r0, 0x7c(r31)
    stw     r0, 0x80(r31)
    stw     r0, 0x84(r31)
    stw     r0, 0x88(r31)
    stw     r0, 0x8c(r31)
    stw     r0, 0x90(r31)
    stw     r0, 0x94(r31)
    stw     r0, 0x98(r31)
    stw     r0, 0x9c(r31)
    stw     r0, 0xa0(r31)
    stw     r0, 0xa4(r31)
    stw     r0, 0xc0(r31)
    stw     r0, 0xc4(r31)
    stw     r0, 0xc8(r31)
    stw     r0, 0xcc(r31)
    stw     r31, R13Off_m0x62b8(r13)
    stfs    f0, 0xd8(r31)
    stfs    f0, 0xd4(r31)
    stfs    f0, 0xd0(r31)
    bl      initKeyCode__14TMapObjManagerFv
    lfs     f0, -0x2c88(r2)
    li      r5, 0xff
    li      r4, 0xb4
    stfs    f0, 0x4c(r31)
    li      r0, 0x7d
    addi    r3, r31, 0x0
    stfs    f0, 0x48(r31)
    stfs    f0, 0x44(r31)
    sth     r5, 0xa8(r31)
    sth     r4, 0xaa(r31)
    sth     r5, 0xac(r31)
    sth     r5, 0xae(r31)
    sth     r5, 0xb0(r31)
    sth     r5, 0xb2(r31)
    sth     r0, 0xb4(r31)
    sth     r5, 0xb6(r31)
    sth     r4, 0xb8(r31)
    sth     r5, 0xba(r31)
    sth     r4, 0xbc(r31)
    sth     r5, 0xbe(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__14TMapObjManagerFR20JSUMemoryInputStream
load__14TMapObjManagerFR20JSUMemoryInputStream: # 0x801b71cc
    mflr    r0
    lis     r5, unk_80390450@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x150(sp)
    addi    r30, r5, unk_80390450@l
    stw     r29, 0x14c(sp)
    addi    r29, r4, 0x0
    bl      load__12TLiveManagerFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, r31, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r31, 0x3c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801b7230
    mr      r3, r29
    bl      __ct__13MActorAnmDataFv
branch_0x801b7230:
    stw     r29, 0x40(r31)
    addi    r4, r30, 0x564
    li      r5, 0x0
    lwz     r3, 0x40(r31)
    bl      init__13MActorAnmDataFPCcPPCc
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x570
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x570
    mtlr    r12
    blrl
    stw     r3, 0x50(r31)
    addi    r3, r30, 0x58c
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x58c
    mtlr    r12
    blrl
    stw     r3, 0x54(r31)
    addi    r3, r30, 0x5a8
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x5a8
    mtlr    r12
    blrl
    stw     r3, 0x58(r31)
    addi    r3, r30, 0x5c8
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x5c8
    mtlr    r12
    blrl
    stw     r3, 0x5c(r31)
    addi    r3, r30, 0x5e8
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x5e8
    mtlr    r12
    blrl
    stw     r3, 0x60(r31)
    addi    r3, r30, 0x604
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x604
    mtlr    r12
    blrl
    stw     r3, 0x64(r31)
    addi    r3, r30, 0x620
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b737c
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b7380

branch_0x801b737c:
    li      r3, 0x0
branch_0x801b7380:
    stw     r3, 0x68(r31)
    addi    r3, r30, 0x638
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b739c
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b73a0

branch_0x801b739c:
    li      r3, 0x0
branch_0x801b73a0:
    stw     r3, 0x6c(r31)
    addi    r3, r30, 0x658
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b73bc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b73c0

branch_0x801b73bc:
    li      r3, 0x0
branch_0x801b73c0:
    stw     r3, 0x70(r31)
    addi    r3, r30, 0x674
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b73dc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b73e0

branch_0x801b73dc:
    li      r3, 0x0
branch_0x801b73e0:
    stw     r3, 0x74(r31)
    addi    r3, r30, 0x690
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b73fc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b7400

branch_0x801b73fc:
    li      r3, 0x0
branch_0x801b7400:
    stw     r3, 0x78(r31)
    addi    r3, r30, 0x6b0
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b741c
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b7420

branch_0x801b741c:
    li      r3, 0x0
branch_0x801b7420:
    stw     r3, 0x7c(r31)
    addi    r3, r30, 0x6cc
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b743c
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b7440

branch_0x801b743c:
    li      r3, 0x0
branch_0x801b7440:
    stw     r3, 0x80(r31)
    addi    r3, r30, 0x6e8
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b745c
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b7460

branch_0x801b745c:
    li      r3, 0x0
branch_0x801b7460:
    stw     r3, 0x84(r31)
    addi    r3, r30, 0x708
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b747c
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b7480

branch_0x801b747c:
    li      r3, 0x0
branch_0x801b7480:
    stw     r3, 0x88(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x801b74b4
    addi    r3, r30, 0x72c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b74ac
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b74b0

branch_0x801b74ac:
    li      r3, 0x0
branch_0x801b74b0:
    stw     r3, 0x8c(r31)
branch_0x801b74b4:
    addi    r3, r30, 0x748
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b74cc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b74d0

branch_0x801b74cc:
    li      r3, 0x0
branch_0x801b74d0:
    stw     r3, 0x90(r31)
    addi    r3, r30, 0x764
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b74ec
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b74f0

branch_0x801b74ec:
    li      r3, 0x0
branch_0x801b74f0:
    stw     r3, 0x94(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r4, 0x7c(r3)
    cmplwi  r4, 0x3
    bne-    branch_0x801b7518
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x801b7520
    cmplwi  r0, 0x5
    beq-    branch_0x801b7520
branch_0x801b7518:
    cmplwi  r4, 0x1e
    bne-    branch_0x801b75c0
branch_0x801b7520:
    addi    r3, r30, 0x780
    lis     r4, 0x1022
    bl      SMS_MakeSDLModelData__FPCcUl
    stw     r3, 0x98(r31)
    mr      r3, r31
    bl      getMActorAnmData__11TObjManagerFv
    mr      r4, r3
    lwz     r3, 0x98(r31)
    li      r5, 0x3
    bl      SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
    stw     r3, 0x9c(r31)
    mr      r3, r31
    bl      getMActorAnmData__11TObjManagerFv
    mr      r4, r3
    lwz     r3, 0x98(r31)
    li      r5, 0x3
    bl      SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
    stw     r3, 0xa0(r31)
    mr      r3, r31
    bl      getMActorAnmData__11TObjManagerFv
    mr      r4, r3
    lwz     r3, 0x98(r31)
    li      r5, 0x3
    bl      SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
    stw     r3, 0xa4(r31)
    addi    r5, r31, 0xa8
    li      r4, 0x2
    lwz     r3, 0x9c(r31)
    lwz     r3, 0x4(r3)
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0xa0(r31)
    addi    r5, r31, 0xb0
    li      r4, 0x2
    lwz     r3, 0x4(r3)
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0xa4(r31)
    addi    r5, r31, 0xb8
    li      r4, 0x2
    lwz     r3, 0x4(r3)
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
branch_0x801b75c0:
    addi    r3, r30, 0x79c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b75d8
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b75dc

branch_0x801b75d8:
    li      r3, 0x0
branch_0x801b75dc:
    stw     r3, 0xc0(r31)
    addi    r3, r30, 0x7bc
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x801b75f8
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    b       branch_0x801b75fc

branch_0x801b75f8:
    li      r3, 0x0
branch_0x801b75fc:
    stw     r3, 0xc4(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801b761c
    addi    r3, r30, 0x7d8
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0xcc(r31)
branch_0x801b761c:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xd
    bne-    branch_0x801b7638
    addi    r3, r30, 0x7d8
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0xcc(r31)
branch_0x801b7638:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x9
    bne-    branch_0x801b7654
    addi    r3, r30, 0x7f8
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0xc8(r31)
branch_0x801b7654:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x801b7670
    addi    r3, r30, 0x7d8
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0xcc(r31)
branch_0x801b7670:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    lwz     r29, 0x14c(sp)
    addi    sp, sp, 0x158
    blr


.globl loadAfter__14TMapObjManagerFv
loadAfter__14TMapObjManagerFv: # 0x801b768c
    mflr    r0
    lis     r4, unk_80390450@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r4, unk_80390450@l
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    bl      loadAfter__Q26JDrama8TNameRefFv
    lfs     f0, -0x2c54(r2)
    addi    r3, r31, 0x270
    stfs    f0, 0x38(r30)
    lfs     f0, -0x2c50(r2)
    stfs    f0, 0x3c(r30)
    lfs     f0, -0x2c88(r2)
    lfs     f1, -0x2c84(r2)
    stfs    f0, 0x5c(sp)
    stfs    f1, 0x50(sp)
    stfs    f0, 0x68(sp)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x60(sp)
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x58(sp)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x70(sp)
    bl      newItemByName__FPCc
    cmplwi  r3, 0x0
    bne-    branch_0x801b770c
    addi    r3, r31, 0x270
    bl      newUniqueObjByName__FPCc
branch_0x801b770c:
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b7724
    li      r0, 0x1
    b       branch_0x801b7728

branch_0x801b7724:
    li      r0, 0x0
branch_0x801b7728:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b7780
    lwz     r5, 0x68(sp)
    addi    r4, r31, 0x270
    lwz     r0, 0x6c(sp)
    stw     r5, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x70(sp)
    stw     r0, 0x18(r3)
    lwz     r5, 0x5c(sp)
    lwz     r0, 0x60(sp)
    stw     r5, 0x30(r3)
    stw     r0, 0x34(r3)
    lwz     r0, 0x64(sp)
    stw     r0, 0x38(r3)
    lwz     r5, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r5, 0x24(r3)
    stw     r0, 0x28(r3)
    lwz     r0, 0x58(sp)
    stw     r0, 0x2c(r3)
    bl      initAndRegister__11TMapObjBaseFPCc
branch_0x801b7780:
    lfs     f30, -0x2c84(r2)
    li      r30, 0x0
    lfs     f31, -0x2c88(r2)
branch_0x801b778c:
    stfs    f30, 0x2c(sp)
    addi    r3, r31, 0x290
    stfs    f31, 0x38(sp)
    stfs    f31, 0x44(sp)
    stfs    f30, 0x30(sp)
    stfs    f31, 0x3c(sp)
    stfs    f31, 0x48(sp)
    stfs    f30, 0x34(sp)
    stfs    f31, 0x40(sp)
    stfs    f31, 0x4c(sp)
    bl      newItemByName__FPCc
    cmplwi  r3, 0x0
    bne-    branch_0x801b77c8
    addi    r3, r31, 0x290
    bl      newUniqueObjByName__FPCc
branch_0x801b77c8:
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b77e0
    li      r0, 0x1
    b       branch_0x801b77e4

branch_0x801b77e0:
    li      r0, 0x0
branch_0x801b77e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b783c
    lwz     r5, 0x44(sp)
    addi    r4, r31, 0x290
    lwz     r0, 0x48(sp)
    stw     r5, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x18(r3)
    lwz     r5, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r5, 0x30(r3)
    stw     r0, 0x34(r3)
    lwz     r0, 0x40(sp)
    stw     r0, 0x38(r3)
    lwz     r5, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r5, 0x24(r3)
    stw     r0, 0x28(r3)
    lwz     r0, 0x34(sp)
    stw     r0, 0x2c(r3)
    bl      initAndRegister__11TMapObjBaseFPCc
branch_0x801b783c:
    addi    r30, r30, 0x1
    cmpwi   r30, 0xa
    blt+    branch_0x801b778c
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x90
    blr


.globl entryStaticDrawBufferSun__14TMapObjManagerFP8J3DModel
entryStaticDrawBufferSun__14TMapObjManagerFP8J3DModel: # 0x801b7868
    mflr    r0
    lis     r5, j3dSys@h
    stw     r0, 0x4(sp)
    addi    r6, r5, j3dSys@l
    stwu    sp, -0x8(sp)
    lwz     r7, 0x50(r3)
    lwz     r0, 0x10(r7)
    stw     r0, 0x44(r6)
    lwz     r5, 0x54(r3)
    mr      r3, r4
    lwz     r0, 0x10(r5)
    stw     r0, 0x48(r6)
    lwz     r12, 0x0(r4)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entryStaticDrawBufferShadow__14TMapObjManagerFP8J3DModel
entryStaticDrawBufferShadow__14TMapObjManagerFP8J3DModel: # 0x801b78b8
    mflr    r0
    lis     r5, j3dSys@h
    stw     r0, 0x4(sp)
    addi    r6, r5, j3dSys@l
    stwu    sp, -0x8(sp)
    lwz     r7, 0x58(r3)
    lwz     r0, 0x10(r7)
    stw     r0, 0x44(r6)
    lwz     r5, 0x5c(r3)
    mr      r3, r4
    lwz     r0, 0x10(r5)
    stw     r0, 0x48(r6)
    lwz     r12, 0x0(r4)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__10TMerryPoleFv
__dt__10TMerryPoleFv: # 0x801b7908
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b7970
    lis     r3, __vvt__10TMerryPole@ha
    addi    r3, r3, __vvt__10TMerryPole@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b7960
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b7960:
    extsh.  r0, r31
    ble-    branch_0x801b7970
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b7970:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRootJointMtx__10TMerryPoleCFv
getRootJointMtx__10TMerryPoleCFv: # 0x801b798c
    addi    r3, r3, 0x138
    blr


.globl __dt__14TMapObjManagerFv
__dt__14TMapObjManagerFv: # 0x801b7994
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b7a0c
    lis     r3, __vvt__14TMapObjManager@ha
    addi    r0, r3, __vvt__14TMapObjManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801b79fc
    lis     r3, __vvt__18TMapObjBaseManager@ha
    addi    r0, r3, __vvt__18TMapObjBaseManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801b79fc
    lis     r3, __vvt__12TLiveManager@ha
    addi    r0, r3, __vvt__12TLiveManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801b79fc
    lis     r3, __vvt__11TObjManager@ha
    addi    r0, r3, __vvt__11TObjManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TViewObjFv
branch_0x801b79fc:
    extsh.  r0, r31
    ble-    branch_0x801b7a0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b7a0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl hasMapCollision__14TMapObjManagerCFv
hasMapCollision__14TMapObjManagerCFv: # 0x801b7a28
    li      r3, 0x1
    blr


.globl __sinit_MapObjManager_cpp
__sinit_MapObjManager_cpp: # 0x801b7a30
    mflr    r0
    lis     r3, unk_803f92a0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f92a0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7a78
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801b7a78:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7aa8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801b7aa8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7ad8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801b7ad8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7b08
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801b7b08:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7b38
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801b7b38:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7b68
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801b7b68:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7b98
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801b7b98:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7bc8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801b7bc8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7bf8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801b7bf8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7c28
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801b7c28:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7c58
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801b7c58:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7c88
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801b7c88:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7cb8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801b7cb8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7ce8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801b7ce8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801b7d18
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801b7d18:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801b7d2c
unk_801b7d2c: # 0x801b7d2c
    addi    r3, r3, -0x20
    b       __dt__10TMerryPoleFv

