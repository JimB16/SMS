
.globl monteMESetAnmWhenNear__8TBaseNPCFv
monteMESetAnmWhenNear__8TBaseNPCFv: # 0x80202428
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0xd0(r3)
    lwz     r5, 0x14(r3)
    cmpwi   r5, 0x4
    beq-    branch_0x80202638
    bge-    branch_0x80202460
    cmpwi   r5, 0x2
    beq-    branch_0x80202510
    bge-    branch_0x8020246c
    b       branch_0x802025b4

branch_0x80202460:
    cmpwi   r5, 0xa
    beq-    branch_0x8020246c
    b       branch_0x802025b4

branch_0x8020246c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80202638
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x802024a0
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202638
branch_0x802024a0:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802024b8
    li      r0, 0x1
    b       branch_0x802024bc

branch_0x802024b8:
    li      r0, 0x0
branch_0x802024bc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802024fc
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x802024e4
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202638

branch_0x802024e4:
    lwz     r4, 0x190(r31)
    li      r3, 0x4
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202638

branch_0x802024fc:
    addi    r3, r31, 0x0
    li      r4, 0x4
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80202638

branch_0x80202510:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80202638
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80202544
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202638
branch_0x80202544:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020255c
    li      r0, 0x1
    b       branch_0x80202560

branch_0x8020255c:
    li      r0, 0x0
branch_0x80202560:
    clrlwi. r0, r0, 24
    beq-    branch_0x802025a0
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80202588
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202638

branch_0x80202588:
    lwz     r4, 0x190(r31)
    li      r3, 0x3
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202638

branch_0x802025a0:
    addi    r3, r31, 0x0
    li      r4, 0x3
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80202638

branch_0x802025b4:
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x802025d4
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202638
branch_0x802025d4:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802025ec
    li      r0, 0x1
    b       branch_0x802025f0

branch_0x802025ec:
    li      r0, 0x0
branch_0x802025f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80202628
    cmpwi   r5, 0x3
    bne-    branch_0x80202610
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202638

branch_0x80202610:
    lwz     r4, 0x190(r31)
    li      r3, 0x3
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202638

branch_0x80202628:
    addi    r3, r31, 0x0
    li      r4, 0x3
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80202638:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl monteMESetAnmWhenFar__8TBaseNPCFv
monteMESetAnmWhenFar__8TBaseNPCFv: # 0x8020264c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0xd0(r3)
    lwz     r5, 0x14(r3)
    cmpwi   r5, 0x2
    beq-    branch_0x8020268c
    bge-    branch_0x80202680
    cmpwi   r5, 0x1
    bge-    branch_0x80202858
    b       branch_0x802027d4

branch_0x80202680:
    cmpwi   r5, 0x4
    bge-    branch_0x802027d4
    b       branch_0x80202730

branch_0x8020268c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80202858
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x802026c0
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202858
branch_0x802026c0:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802026d8
    li      r0, 0x1
    b       branch_0x802026dc

branch_0x802026d8:
    li      r0, 0x0
branch_0x802026dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8020271c
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80202704
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202858

branch_0x80202704:
    lwz     r4, 0x190(r31)
    li      r3, 0x1
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202858

branch_0x8020271c:
    addi    r3, r31, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80202858

branch_0x80202730:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80202858
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80202764
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202858
branch_0x80202764:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020277c
    li      r0, 0x1
    b       branch_0x80202780

branch_0x8020277c:
    li      r0, 0x0
branch_0x80202780:
    clrlwi. r0, r0, 24
    beq-    branch_0x802027c0
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x802027a8
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202858

branch_0x802027a8:
    lwz     r4, 0x190(r31)
    li      r3, 0x2
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202858

branch_0x802027c0:
    addi    r3, r31, 0x0
    li      r4, 0x2
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80202858

branch_0x802027d4:
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x802027f4
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202858
branch_0x802027f4:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020280c
    li      r0, 0x1
    b       branch_0x80202810

branch_0x8020280c:
    li      r0, 0x0
branch_0x80202810:
    clrlwi. r0, r0, 24
    beq-    branch_0x80202848
    cmpwi   r5, 0x2
    bne-    branch_0x80202830
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202858

branch_0x80202830:
    lwz     r4, 0x190(r31)
    li      r3, 0x2
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202858

branch_0x80202848:
    addi    r3, r31, 0x0
    li      r4, 0x2
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80202858:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl sunflowerReviving__8TBaseNPCFv
sunflowerReviving__8TBaseNPCFv: # 0x8020286c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    lbz     r0, 0x1d8(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8020291c
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1a
    bne-    branch_0x8020291c
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8020291c
    lbz     r0, 0x1d8(r30)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x1d8(r30)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x80202910
    lwz     r3, 0x170(r30)
    rlwinm. r0, r3, 0, 21, 21
    beq-    branch_0x802028e4
    li      r4, 0x1
    b       branch_0x80202900

branch_0x802028e4:
    clrlwi. r0, r3, 31
    beq-    branch_0x802028fc
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x802028fc
    li      r4, 0x13
    b       branch_0x80202900

branch_0x802028fc:
    li      r4, 0x6
branch_0x80202900:
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80202918

branch_0x80202910:
    mr      r3, r30
    bl      npcWaitIn__8TBaseNPCFv
branch_0x80202918:
    li      r31, 0x1
branch_0x8020291c:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl sunflowerReviveIn__8TBaseNPCFv
sunflowerReviveIn__8TBaseNPCFv: # 0x80202938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x1d8(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80202a04
    lbz     r0, 0x1d8(r3)
    lis     r4, 0x400
    li      r6, 0x0
    clrrwi  r0, r0, 1
    stb     r0, 0x1d8(r3)
    addi    r0, r4, 0x1e
    lbz     r5, 0x1d8(r3)
    ori     r5, r5, 0x2
    stb     r5, 0x1d8(r3)
    lwz     r5, 0xd0(r3)
    stw     r6, 0x18(r5)
    lwz     r5, 0xd0(r3)
    stw     r6, 0x1c(r5)
    lwz     r5, 0x4c(r3)
    cmpw    r5, r0
    bge-    branch_0x8020299c
    addi    r0, r4, 0x1c
    cmpw    r5, r0
    bge-    branch_0x80202a04
branch_0x8020299c:
    lwz     r4, 0x18c(r3)
    lwz     r0, 0x24(r4)
    cmpwi   r0, 0x0
    ble-    branch_0x802029b4
    li      r0, 0x1
    b       branch_0x802029b8

branch_0x802029b4:
    li      r0, 0x0
branch_0x802029b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x802029f8
    lwz     r4, 0xd0(r3)
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x1a
    bne-    branch_0x802029e0
    lwz     r3, 0x190(r3)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202a04

branch_0x802029e0:
    lwz     r4, 0x190(r3)
    li      r3, 0x1a
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202a04

branch_0x802029f8:
    li      r4, 0x1a
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80202a04:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl sunflowerDownIn___8TBaseNPCFv
sunflowerDownIn___8TBaseNPCFv: # 0x80202a14
    lbz     r0, 0x1d8(r3)
    lis     r5, 0x8039
    lis     r4, 0x8039
    ori     r0, r0, 0x1
    stb     r0, 0x1d8(r3)
    addi    r5, r5, 0x4998
    addi    r0, r4, 0x49b0
    lbz     r4, 0x1d8(r3)
    rlwinm  r4, r4, 0, 31, 29
    stb     r4, 0x1d8(r3)
    lwz     r4, 0xd0(r3)
    stw     r5, 0x18(r4)
    lwz     r3, 0xd0(r3)
    stw     r0, 0x1c(r3)
    blr


.globl peachTiredIn___8TBaseNPCFv
peachTiredIn___8TBaseNPCFv: # 0x80202a50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x1d8(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80202afc
    lbz     r5, 0x1d8(r3)
    lis     r4, 0x400
    addi    r0, r4, 0x1e
    ori     r5, r5, 0x2
    stb     r5, 0x1d8(r3)
    lwz     r5, 0x4c(r3)
    cmpw    r5, r0
    bge-    branch_0x80202a94
    addi    r0, r4, 0x1c
    cmpw    r5, r0
    bge-    branch_0x80202afc
branch_0x80202a94:
    lwz     r4, 0x18c(r3)
    lwz     r0, 0x24(r4)
    cmpwi   r0, 0x0
    ble-    branch_0x80202aac
    li      r0, 0x1
    b       branch_0x80202ab0

branch_0x80202aac:
    li      r0, 0x0
branch_0x80202ab0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80202af0
    lwz     r4, 0xd0(r3)
    lwz     r0, 0x14(r4)
    cmpwi   r0, 0x10
    bne-    branch_0x80202ad8
    lwz     r3, 0x190(r3)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202afc

branch_0x80202ad8:
    lwz     r4, 0x190(r3)
    li      r3, 0x10
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202afc

branch_0x80202af0:
    li      r4, 0x10
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80202afc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl peachParasolOut___8TBaseNPCFv
peachParasolOut___8TBaseNPCFv: # 0x80202b0c
    lbz     r0, 0x1d8(r3)
    clrlwi. r0, r0, 31
    beqlr-    

    lbz     r4, 0x1d8(r3)
    li      r0, 0x0
    clrrwi  r4, r4, 1
    stb     r4, 0x1d8(r3)
    lwz     r4, 0xd0(r3)
    stw     r0, 0x18(r4)
    lwz     r3, 0xd0(r3)
    stw     r0, 0x1c(r3)
    blr


.globl peachParasolIn___8TBaseNPCFv
peachParasolIn___8TBaseNPCFv: # 0x80202b3c
    lbz     r0, 0x1d8(r3)
    lis     r5, 0x8039
    lis     r4, 0x8039
    ori     r0, r0, 0x1
    stb     r0, 0x1d8(r3)
    addi    r5, r5, 0x4950
    addi    r0, r4, 0x4968
    lwz     r4, 0xd0(r3)
    stw     r5, 0x18(r4)
    lwz     r3, 0xd0(r3)
    stw     r0, 0x1c(r3)
    blr


.globl npcMareStanding__8TBaseNPCFv
npcMareStanding__8TBaseNPCFv: # 0x80202b6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r3, 0xd0(r3)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x7
    beq-    branch_0x80202c8c
    bge-    branch_0x80202ba8
    cmpwi   r0, 0x5
    beq-    branch_0x80202bb4
    b       branch_0x80202ca8

branch_0x80202ba8:
    cmpwi   r0, 0xe
    beq-    branch_0x80202bb4
    b       branch_0x80202ca8

branch_0x80202bb4:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80202cac
    lwz     r5, 0x22c(r30)
    li      r4, 0x0
    lwz     r3, 0x0(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    lwz     r3, 0x4(r5)
    cmpw    r0, r3
    blt-    branch_0x80202bf4
    stw     r3, 0x0(r5)
    li      r4, 0x1
branch_0x80202bf4:
    clrlwi. r0, r4, 24
    beq-    branch_0x80202cac
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80202c1c
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202cac
branch_0x80202c1c:
    lwz     r3, 0x18c(r30)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80202c34
    li      r0, 0x1
    b       branch_0x80202c38

branch_0x80202c34:
    li      r0, 0x0
branch_0x80202c38:
    clrlwi. r0, r0, 24
    beq-    branch_0x80202c78
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x80202c60
    lwz     r3, 0x190(r30)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202cac

branch_0x80202c60:
    lwz     r4, 0x190(r30)
    li      r3, 0x7
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202cac

branch_0x80202c78:
    addi    r3, r30, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80202cac

branch_0x80202c8c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80202cac
    li      r31, 0x1
    b       branch_0x80202cac

branch_0x80202ca8:
    li      r31, 0x1
branch_0x80202cac:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl npcMareStandIn__8TBaseNPCFv
npcMareStandIn__8TBaseNPCFv: # 0x80202cc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    lwz     r3, 0xd0(r3)
    lwz     r5, 0x14(r3)
    cmpwi   r5, 0xe
    beq-    branch_0x80202d00
    bge-    branch_0x80202d60
    cmpwi   r5, 0x5
    beq-    branch_0x80202d00
    b       branch_0x80202d60

branch_0x80202d00:
    lwz     r30, 0x22c(r31)
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x80202de4
    li      r0, 0x0
    stw     r0, 0x0(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1da8(rtoc)
    stw     r0, 0x48(sp)
    lfs     f0, -0x1da4(rtoc)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    addi    r0, r3, 0xf1
    stw     r0, 0x4(r30)
    b       branch_0x80202de4

branch_0x80202d60:
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80202d80
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202de4
branch_0x80202d80:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80202d98
    li      r0, 0x1
    b       branch_0x80202d9c

branch_0x80202d98:
    li      r0, 0x0
branch_0x80202d9c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80202dd4
    cmpwi   r5, 0x7
    bne-    branch_0x80202dbc
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202de4

branch_0x80202dbc:
    lwz     r4, 0x190(r31)
    li      r3, 0x7
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202de4

branch_0x80202dd4:
    addi    r3, r31, 0x0
    li      r4, 0x7
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80202de4:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl npcBlowning__8TBaseNPCFv
npcBlowning__8TBaseNPCFv: # 0x80202e1c
    lwz     r0, 0xf0(r3)
    li      r3, 0x0
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80202e34
    li      r0, 0x1
    b       branch_0x80202e38

branch_0x80202e34:
    li      r0, 0x0
branch_0x80202e38:
    cmpwi   r0, 0x0
    bnelr-    

    li      r3, 0x1
    blr


.globl npcBlownIn__8TBaseNPCFv
npcBlownIn__8TBaseNPCFv: # 0x80202e48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80202e7c
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80202ee8
branch_0x80202e7c:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80202e94
    li      r0, 0x1
    b       branch_0x80202e98

branch_0x80202e94:
    li      r0, 0x0
branch_0x80202e98:
    clrlwi. r0, r0, 24
    beq-    branch_0x80202ed8
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0xe
    bne-    branch_0x80202ec0
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80202ee8

branch_0x80202ec0:
    lwz     r4, 0x190(r31)
    li      r3, 0xe
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80202ee8

branch_0x80202ed8:
    addi    r3, r31, 0x0
    li      r4, 0xe
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80202ee8:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r3, 0x22c(r31)
    stw     r0, 0x0(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcMadding__8TBaseNPCFv
npcMadding__8TBaseNPCFv: # 0x80202f24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    li      r31, 0x0
    stw     r30, 0xb0(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 6, 6
    bne-    branch_0x80202f54
    li      r31, 0x1
    b       branch_0x802031d0

branch_0x80202f54:
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0xa
    bge-    branch_0x80202f70
    cmpwi   r0, 0x4
    beq-    branch_0x80202f7c
    b       branch_0x802031d0

branch_0x80202f70:
    cmpwi   r0, 0xc
    bge-    branch_0x802031d0
    b       branch_0x802031ac

branch_0x80202f7c:
    lwz     r6, 0x228(r30)
    addi    r3, r30, 0x10
    lwz     r4, -0x60b4(r13)
    addi    r5, r30, 0x34
    lfs     f1, 0x2ac(r6)
    bl      SMS_GoRotate__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
    lwz     r4, -0x60b4(r13)
    lfs     f0, -0x1da0(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x70(sp)
    lfs     f2, 0x68(sp)
    lfs     f1, 0x10(r30)
    fsubs   f1, f2, f1
    stfs    f1, 0x68(sp)
    lfs     f2, 0x6c(sp)
    lfs     f1, 0x14(r30)
    fsubs   f1, f2, f1
    stfs    f1, 0x6c(sp)
    lfs     f2, 0x70(sp)
    lfs     f1, 0x18(r30)
    fsubs   f1, f2, f1
    stfs    f1, 0x70(sp)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lfs     f1, 0xa0(sp)
    lfs     f2, 0x98(sp)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80203040
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80203038
    lfs     f2, -0x1d90(rtoc)
    b       branch_0x802030b4

branch_0x80203038:
    lfs     f2, -0x1d8c(rtoc)
    b       branch_0x802030b4

branch_0x80203040:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8020307c
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x1d98(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1d88(rtoc)
    stw     r0, 0xac(sp)
    lis     r0, 0x4330
    stw     r0, 0xa8(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x802030b4

branch_0x8020307c:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x1d98(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x1d88(rtoc)
    stw     r0, 0xac(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1d84(rtoc)
    stw     r0, 0xa8(sp)
    lfd     f2, 0xa8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x802030b4:
    lfs     f1, 0x34(r30)
    lfs     f0, -0x1d80(rtoc)
    fsubs   f1, f1, f2
    fabs    f2, f1
    b       branch_0x802030cc

branch_0x802030c8:
    fsubs   f2, f2, f0
branch_0x802030cc:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x802030c8
    lfs     f1, -0x1d80(rtoc)
    lfs     f0, -0x1da0(rtoc)
    b       branch_0x802030e8

branch_0x802030e4:
    fadds   f2, f2, f1
branch_0x802030e8:
    fcmpo   cr0, f2, f0
    blt+    branch_0x802030e4
    lfs     f0, -0x1d7c(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80203188
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x8020311c
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80203188
branch_0x8020311c:
    lwz     r3, 0x18c(r30)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80203134
    li      r0, 0x1
    b       branch_0x80203138

branch_0x80203134:
    li      r0, 0x0
branch_0x80203138:
    clrlwi. r0, r0, 24
    beq-    branch_0x80203178
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0xa
    bne-    branch_0x80203160
    lwz     r3, 0x190(r30)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80203188

branch_0x80203160:
    lwz     r4, 0x190(r30)
    li      r3, 0xa
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80203188

branch_0x80203178:
    addi    r3, r30, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80203188:
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802031d0
    lbz     r0, 0x1da(r30)
    ori     r0, r0, 0x1
    stb     r0, 0x1da(r30)
    b       branch_0x802031d0

branch_0x802031ac:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x802031d0
    lwz     r0, 0xf0(r30)
    li      r31, 0x1
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
branch_0x802031d0:
    lwz     r0, 0xbc(sp)
    mr      r3, r31
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xb8
    blr


.globl npcMadIn__8TBaseNPCFv
npcMadIn__8TBaseNPCFv: # 0x802031ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x200
    stw     r0, 0xf0(r3)
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x7
    beq-    branch_0x80203228
    lwz     r0, 0x170(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x802032b4
branch_0x80203228:
    lis     r3, 0x400
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80203244
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x802032e4
branch_0x80203244:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020325c
    li      r0, 0x1
    b       branch_0x80203260

branch_0x8020325c:
    li      r0, 0x0
branch_0x80203260:
    clrlwi. r0, r0, 24
    beq-    branch_0x802032a0
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0xa
    bne-    branch_0x80203288
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x802032e4

branch_0x80203288:
    lwz     r4, 0x190(r31)
    li      r3, 0xa
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x802032e4

branch_0x802032a0:
    addi    r3, r31, 0x0
    li      r4, 0xa
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x802032e4

branch_0x802032b4:
    addi    r3, r31, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
branch_0x802032e4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcThrowing__8TBaseNPCFv
npcThrowing__8TBaseNPCFv: # 0x802032f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r3, 0x8c(r3)
    lwz     r4, -0x6220(r13)
    lwz     r3, 0x20(r3)
    lha     r4, 0xb8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80203334
    cmpwi   r4, 0x14
    blt-    branch_0x80203340
branch_0x80203334:
    subi    r0, r4, 0x14
    cmpw    r3, r0
    bne-    branch_0x8020335c
branch_0x80203340:
    lwz     r0, 0x64(r30)
    li      r3, 0x1e
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    bl      CLBPalFrame_l___Fl
    stw     r3, 0x1dc(r30)
    b       branch_0x8020338c

branch_0x8020335c:
    cmpw    r3, r4
    bne-    branch_0x80203374
    lwz     r3, 0x17c(r30)
    mr      r4, r30
    bl      throwMario__9TNpcThrowFP9THitActor
    b       branch_0x8020338c

branch_0x80203374:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8020338c
    li      r31, 0x1
branch_0x8020338c:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl npcThrowIn__8TBaseNPCFv
npcThrowIn__8TBaseNPCFv: # 0x802033a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x802033dc
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80203448
branch_0x802033dc:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802033f4
    li      r0, 0x1
    b       branch_0x802033f8

branch_0x802033f4:
    li      r0, 0x0
branch_0x802033f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80203438
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0xd
    bne-    branch_0x80203420
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80203448

branch_0x80203420:
    lwz     r4, 0x190(r31)
    li      r3, 0xd
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80203448

branch_0x80203438:
    addi    r3, r31, 0x0
    li      r4, 0xd
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80203448:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcSinking__8TBaseNPCFv
npcSinking__8TBaseNPCFv: # 0x8020347c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stfd    f30, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r4, 0x228(r3)
    lfs     f2, 0x1c4(r3)
    lfs     f1, 0x2fc(r4)
    lfs     f0, 0x14(r3)
    fsubs   f1, f2, f1
    fcmpu   cr0, f0, f1
    fmr     f31, f1
    beq-    branch_0x802035a4
    lfs     f30, 0x2e8(r4)
    mr      r3, r31
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802034e8
    lfs     f1, -0x1d78(rtoc)
    addi    r3, r31, 0x178
    lfs     f0, 0x14(r31)
    fdivs   f2, f1, f30
    fsubs   f0, f0, f31
    fmuls   f2, f2, f0
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
branch_0x802034e8:
    fmr     f1, f31
    addi    r3, r31, 0x14
    fmr     f2, f30
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    cmpwi   r3, 0x0
    bne-    branch_0x802035a4
    lwz     r4, 0xf0(r31)
    lis     r3, 0x400
    addi    r0, r3, 0x1e
    oris    r4, r4, 0x80
    stw     r4, 0xf0(r31)
    lwz     r4, 0x64(r31)
    ori     r4, r4, 0x1
    stw     r4, 0x64(r31)
    lwz     r4, 0x4c(r31)
    cmpw    r4, r0
    bge-    branch_0x80203538
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x802035a4
branch_0x80203538:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80203550
    li      r0, 0x1
    b       branch_0x80203554

branch_0x80203550:
    li      r0, 0x0
branch_0x80203554:
    clrlwi. r0, r0, 24
    beq-    branch_0x80203594
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x10
    bne-    branch_0x8020357c
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x802035a4

branch_0x8020357c:
    lwz     r4, 0x190(r31)
    li      r3, 0x10
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x802035a4

branch_0x80203594:
    addi    r3, r31, 0x0
    li      r4, 0x10
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802035a4:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl npcWetting__8TBaseNPCFv
npcWetting__8TBaseNPCFv: # 0x802035c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x160(sp)
    stw     r31, 0x15c(sp)
    li      r31, 0x0
    stw     r30, 0x158(sp)
    mr      r30, r3
    stw     r29, 0x154(sp)
    stw     r28, 0x150(sp)
    lbz     r0, 0x1da(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802036b8
    lbz     r0, 0x1da(r30)
    li      r29, 0x0
    addi    r3, r30, 0x0
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x1da(r30)
    li      r4, 0x11
    li      r5, 0x1
    stb     r29, 0x1d9(r30)
    lwz     r0, 0x170(r30)
    ori     r0, r0, 0x200
    stw     r0, 0x170(r30)
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    lfs     f1, -0x1da0(rtoc)
    stfs    f1, 0x140(r30)
    lwz     r3, 0x228(r30)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r30)
    stw     r29, 0x1cc(r30)
    stfs    f1, 0x1d0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80203668
    b       branch_0x80203678

branch_0x80203668:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x80203678:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x80203690
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x802036b0

branch_0x80203690:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x802036b0
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802036b0:
    li      r31, 0x1
    b       branch_0x80204204

branch_0x802036b8:
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x19
    bne-    branch_0x80203828
    lfs     f1, -0x1da0(rtoc)
    lfs     f0, 0x178(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80203794
    li      r29, 0x0
    stb     r29, 0x1d9(r30)
    addi    r3, r30, 0x0
    li      r4, 0x11
    lwz     r0, 0x170(r30)
    li      r5, 0x1
    ori     r0, r0, 0x200
    stw     r0, 0x170(r30)
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    lfs     f1, -0x1da0(rtoc)
    stfs    f1, 0x140(r30)
    lwz     r3, 0x228(r30)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r30)
    stw     r29, 0x1cc(r30)
    stfs    f1, 0x1d0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80203744
    b       branch_0x80203754

branch_0x80203744:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x80203754:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x8020376c
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x8020378c

branch_0x8020376c:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x8020378c
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x8020378c:
    li      r31, 0x1
    b       branch_0x80204204

branch_0x80203794:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204204
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x802037d8
    li      r29, 0x0
    b       branch_0x802037e8

branch_0x802037d8:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x802037e8:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x80203800
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80203820

branch_0x80203800:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80203820
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80203820:
    li      r31, 0x1
    b       branch_0x80204204

branch_0x80203828:
    li      r29, 0x1
    addi    r3, r30, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80203850
    mr      r3, r30
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80203850
    li      r29, 0x0
branch_0x80203850:
    clrlwi. r0, r29, 24
    bne-    branch_0x80203868
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x11
    bne-    branch_0x80203a94
branch_0x80203868:
    lwz     r3, 0xd0(r30)
    lwz     r3, 0x14(r3)
    subi    r0, r3, 0x5
    cmplwi  r0, 0x16
    bgt-    branch_0x80204204
    lis     r3, 0x803e
    subi    r3, r3, 0x7c6c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204204
    lwz     r28, 0x22c(r30)
    lwz     r0, 0x0(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80203904
    li      r0, 0x0
    stw     r0, 0x0(r28)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x14c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1da8(rtoc)
    stw     r0, 0x148(sp)
    lfs     f0, -0x1d74(rtoc)
    lfd     f2, 0x148(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x140(sp)
    lwz     r3, 0x144(sp)
    addi    r0, r3, 0xf1
    stw     r0, 0x4(r28)
branch_0x80203904:
    lwz     r5, 0x22c(r30)
    li      r4, 0x0
    lwz     r3, 0x0(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    lwz     r3, 0x4(r5)
    cmpw    r0, r3
    blt-    branch_0x80203930
    stw     r3, 0x0(r5)
    li      r4, 0x1
branch_0x80203930:
    clrlwi. r0, r4, 24
    beq-    branch_0x80204204
    li      r28, 0x7
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x144(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1da8(rtoc)
    stw     r0, 0x140(sp)
    lfs     f0, -0x1d70(rtoc)
    lfd     f2, 0x140(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80203974
    li      r28, 0x1b
branch_0x80203974:
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80203994
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80204204
branch_0x80203994:
    lwz     r3, 0x18c(r30)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802039ac
    li      r0, 0x1
    b       branch_0x802039b0

branch_0x802039ac:
    li      r0, 0x0
branch_0x802039b0:
    clrlwi. r0, r0, 24
    beq-    branch_0x802039ec
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpw    r28, r0
    bne-    branch_0x802039d8
    lwz     r3, 0x190(r30)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80204204

branch_0x802039d8:
    lwz     r3, 0x190(r30)
    li      r0, 0x0
    stw     r28, 0x0(r3)
    stb     r0, 0x4(r3)
    b       branch_0x80204204

branch_0x802039ec:
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80204204


.incbin "./baserom/code/Text_0x80005600.bin", 0x1fe400, 0x80203a94 - 0x80203a00
branch_0x80203a94:
    li      r29, 0x1
    addi    r28, r29, 0x0
    addi    r3, r30, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80203ac0
    mr      r3, r30
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80203ac0
    li      r28, 0x0
branch_0x80203ac0:
    clrlwi. r0, r28, 24
    bne-    branch_0x80203afc
    li      r28, 0x1
    addi    r3, r30, 0x0
    bl      isSpecialMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80203af0
    mr      r3, r30
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80203af0
    li      r28, 0x0
branch_0x80203af0:
    clrlwi. r0, r28, 24
    bne-    branch_0x80203afc
    li      r29, 0x0
branch_0x80203afc:
    clrlwi. r0, r29, 24
    beq-    branch_0x80203dc0
    mr      r3, r30
    bl      isMadNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80203dc0
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    beq-    branch_0x80203dc0
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0xa
    bge-    branch_0x80203b4c
    cmpwi   r0, 0x5
    beq-    branch_0x80203b64
    bge-    branch_0x80204204
    cmpwi   r0, 0x4
    bge-    branch_0x80203c78
    b       branch_0x80204204

branch_0x80203b4c:
    cmpwi   r0, 0x14
    beq-    branch_0x80203b64
    bge-    branch_0x80204204
    cmpwi   r0, 0xc
    bge-    branch_0x80204204
    b       branch_0x80203c90

branch_0x80203b64:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204204
    mr      r3, r30
    bl      isStateGoToMad___8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80203bf8
    lwz     r0, 0xf0(r30)
    oris    r0, r0, 0x200
    stw     r0, 0xf0(r30)
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x7
    beq-    branch_0x80203bb0
    lwz     r0, 0x170(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x80203bc4
branch_0x80203bb0:
    addi    r3, r30, 0x0
    li      r4, 0xa
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80204204

branch_0x80203bc4:
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r30)
    lwz     r3, 0x228(r30)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r30)
    stw     r0, 0x1cc(r30)
    stfs    f1, 0x1d0(r30)
    b       branch_0x80204204

branch_0x80203bf8:
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80203c28
    li      r29, 0x0
    b       branch_0x80203c38

branch_0x80203c28:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x80203c38:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x80203c50
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80203c70

branch_0x80203c50:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80203c70
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80203c70:
    li      r31, 0x1
    b       branch_0x80204204

branch_0x80203c78:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 6, 6
    beq-    branch_0x80204204
    mr      r3, r30
    bl      npcMadding__8TBaseNPCFv
    b       branch_0x80204204

branch_0x80203c90:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 6, 6
    beq-    branch_0x80203d2c
    mr      r3, r30
    bl      npcMadding__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80204204
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80203cdc
    li      r29, 0x0
    b       branch_0x80203cec

branch_0x80203cdc:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x80203cec:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x80203d04
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80203d24

branch_0x80203d04:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80203d24
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80203d24:
    li      r31, 0x1
    b       branch_0x80204204

branch_0x80203d2c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204204
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80203d70
    li      r29, 0x0
    b       branch_0x80203d80

branch_0x80203d70:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x80203d80:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x80203d98
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80203db8

branch_0x80203d98:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80203db8
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80203db8:
    li      r31, 0x1
    b       branch_0x80204204

branch_0x80203dc0:
    li      r28, 0x0
    addi    r3, r30, 0x0
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80203de4
    lbz     r0, 0x1d8(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80203de4
    li      r28, 0x1
branch_0x80203de4:
    clrlwi. r0, r28, 24
    beq-    branch_0x80203ed8
    lbz     r0, 0x1d8(r30)
    li      r29, 0x0
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80203e50
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1a
    bne-    branch_0x80203e50
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80203e50
    lbz     r0, 0x1d8(r30)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x1d8(r30)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x80203e44
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80203e4c

branch_0x80203e44:
    mr      r3, r30
    bl      npcWaitIn__8TBaseNPCFv
branch_0x80203e4c:
    li      r29, 0x1
branch_0x80203e50:
    clrlwi. r0, r29, 24
    beq-    branch_0x80204204
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80203e88
    li      r29, 0x0
    b       branch_0x80203e98

branch_0x80203e88:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x80203e98:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x80203eb0
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80203ed0

branch_0x80203eb0:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80203ed0
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80203ed0:
    li      r31, 0x1
    b       branch_0x80204204

branch_0x80203ed8:
    lis     r29, 0x400
    lwz     r3, 0x4c(r30)
    addi    r0, r29, 0x18
    cmpw    r3, r0
    bge-    branch_0x80204148
    addi    r0, r29, 0x16
    cmpw    r3, r0
    bge-    branch_0x80203efc
    b       branch_0x80204148

branch_0x80203efc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204204
    lwz     r3, 0xd0(r30)
    lwz     r3, 0x14(r3)
    subi    r0, r3, 0x5
    cmplwi  r0, 0x13
    bgt-    branch_0x80204204
    lis     r4, 0x803e
    subi    r4, r4, 0x7cbc
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    lwz     r4, 0x4c(r30)
    addi    r0, r29, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80203f58
    addi    r0, r29, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80204204
branch_0x80203f58:
    lwz     r4, 0x18c(r30)
    lwz     r0, 0x24(r4)
    cmpwi   r0, 0x0
    ble-    branch_0x80203f70
    li      r0, 0x1
    b       branch_0x80203f74

branch_0x80203f70:
    li      r0, 0x0
branch_0x80203f74:
    clrlwi. r0, r0, 24
    beq-    branch_0x80203fac
    cmpwi   r3, 0x7
    bne-    branch_0x80203f94
    lwz     r3, 0x190(r30)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80204204

branch_0x80203f94:
    lwz     r4, 0x190(r30)
    li      r3, 0x7
    li      r0, 0x0
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80204204

branch_0x80203fac:
    addi    r3, r30, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80204204


.incbin "./baserom/code/Text_0x80005600.bin", 0x1fe9c0, 0x80204148 - 0x80203fc0
branch_0x80204148:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204204
    lwz     r3, 0xd0(r30)
    lwz     r3, 0x14(r3)
    subi    r0, r3, 0x5
    cmplwi  r0, 0x14
    bgt-    branch_0x80204204
    lis     r3, 0x803e
    subi    r3, r3, 0x7d10
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 6, 4
    stw     r0, 0xf0(r30)
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x802041b8
    li      r29, 0x0
    b       branch_0x802041c8

branch_0x802041b8:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r29, r3, r0
branch_0x802041c8:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r29, r3
    bne-    branch_0x802041e0
    mr      r3, r30
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80204200

branch_0x802041e0:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80204200
    addi    r3, r30, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204200:
    li      r31, 0x1
branch_0x80204204:
    lwz     r0, 0x164(sp)
    mr      r3, r31
    lwz     r31, 0x15c(sp)
    lwz     r30, 0x158(sp)
    mtlr    r0
    lwz     r29, 0x154(sp)
    lwz     r28, 0x150(sp)
    addi    sp, sp, 0x160
    blr


.globl npcWetIn__8TBaseNPCFv
npcWetIn__8TBaseNPCFv: # 0x80204228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    li      r30, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x48(sp)
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80204268
    lbz     r0, 0x1d8(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80204268
    li      r30, 0x1
branch_0x80204268:
    clrlwi. r0, r30, 24
    bne-    branch_0x802044d8
    lfs     f1, -0x1da0(rtoc)
    li      r31, 0x5
    lfs     f0, 0x178(r29)
    li      r30, 0x1
    fcmpu   cr0, f1, f0
    beq-    branch_0x80204290
    li      r31, 0x19
    b       branch_0x80204448

branch_0x80204290:
    lwz     r0, 0x170(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x802042d8
    addi    r3, r29, 0x0
    li      r31, 0x14
    li      r28, 0x1
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802042c8
    mr      r3, r29
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802042c8
    li      r28, 0x0
branch_0x802042c8:
    clrlwi. r0, r28, 24
    beq-    branch_0x80204448
    li      r30, 0x0
    b       branch_0x80204448

branch_0x802042d8:
    li      r28, 0x1
    addi    r3, r29, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80204300
    mr      r3, r29
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80204300
    li      r28, 0x0
branch_0x80204300:
    clrlwi. r0, r28, 24
    bne-    branch_0x80204318
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0xd
    bne-    branch_0x80204368
branch_0x80204318:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x80204360
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1da8(rtoc)
    stw     r0, 0x40(sp)
    lfs     f0, -0x1d70(rtoc)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80204360
    li      r31, 0xb
    b       branch_0x80204448

branch_0x80204360:
    li      r30, 0x0
    b       branch_0x80204448

branch_0x80204368:
    li      r28, 0x1
    addi    r3, r29, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80204390
    mr      r3, r29
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80204390
    li      r28, 0x0
branch_0x80204390:
    clrlwi. r0, r28, 24
    bne-    branch_0x802043a8
    lwz     r4, 0x4c(r29)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x11
    bne-    branch_0x802043e4
branch_0x802043a8:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1da8(rtoc)
    stw     r0, 0x40(sp)
    lfs     f0, -0x1d70(rtoc)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80204448
    li      r31, 0xb
    b       branch_0x80204448

branch_0x802043e4:
    lis     r3, 0x400
    addi    r0, r3, 0x18
    cmpw    r4, r0
    bge-    branch_0x80204448
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80204404
    b       branch_0x80204448

branch_0x80204404:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 5, 5
    bne-    branch_0x80204448
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    lfs     f1, -0x1da8(rtoc)
    stw     r0, 0x40(sp)
    lfs     f0, -0x1d70(rtoc)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80204448
    li      r31, 0xb
branch_0x80204448:
    lis     r3, 0x400
    lwz     r4, 0x4c(r29)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80204468
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x802044d8
branch_0x80204468:
    lwz     r3, 0x18c(r29)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80204480
    li      r0, 0x1
    b       branch_0x80204484

branch_0x80204480:
    li      r0, 0x0
branch_0x80204484:
    clrlwi. r0, r0, 24
    beq-    branch_0x802044c8
    lwz     r3, 0xd0(r29)
    lwz     r0, 0x14(r3)
    cmpw    r31, r0
    bne-    branch_0x802044ac
    lwz     r3, 0x190(r29)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x802044d8

branch_0x802044ac:
    lwz     r4, 0x190(r29)
    neg     r3, r30
    subic   r0, r3, 0x1
    stw     r31, 0x0(r4)
    subfe   r0, r0, r3
    stb     r0, 0x4(r4)
    b       branch_0x802044d8

branch_0x802044c8:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802044d8:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r29)
    lwz     r3, 0x228(r29)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r29)
    stw     r0, 0x1cc(r29)
    stfs    f1, 0x1d0(r29)
    lwz     r3, 0x22c(r29)
    stw     r0, 0x0(r3)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl npcHappyIn__8TBaseNPCFUc
npcHappyIn__8TBaseNPCFUc: # 0x80204520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stb     r4, 0x1d9(r3)
    lis     r3, 0x400
    addi    r0, r3, 0x1e
    lwz     r4, 0x170(r31)
    ori     r4, r4, 0x200
    stw     r4, 0x170(r31)
    lwz     r4, 0x4c(r31)
    cmpw    r4, r0
    bge-    branch_0x80204564
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x802045d0
branch_0x80204564:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020457c
    li      r0, 0x1
    b       branch_0x80204580

branch_0x8020457c:
    li      r0, 0x0
branch_0x80204580:
    clrlwi. r0, r0, 24
    beq-    branch_0x802045c0
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x11
    bne-    branch_0x802045a8
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x802045d0

branch_0x802045a8:
    lwz     r4, 0x190(r31)
    li      r3, 0x11
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x802045d0

branch_0x802045c0:
    addi    r3, r31, 0x0
    li      r4, 0x11
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802045d0:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcDanceIn__8TBaseNPCFv
npcDanceIn__8TBaseNPCFv: # 0x80204604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r4, 0x170(r3)
    lis     r3, 0x400
    addi    r0, r3, 0x1e
    ori     r4, r4, 0x4
    stw     r4, 0x170(r31)
    lwz     r4, 0x4c(r31)
    cmpw    r4, r0
    bge-    branch_0x80204644
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x802046b0
branch_0x80204644:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020465c
    li      r0, 0x1
    b       branch_0x80204660

branch_0x8020465c:
    li      r0, 0x0
branch_0x80204660:
    clrlwi. r0, r0, 24
    beq-    branch_0x802046a0
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x16
    bne-    branch_0x80204688
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x802046b0

branch_0x80204688:
    lwz     r4, 0x190(r31)
    li      r3, 0x16
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x802046b0

branch_0x802046a0:
    addi    r3, r31, 0x0
    li      r4, 0x16
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802046b0:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcTakenIn__8TBaseNPCFv
npcTakenIn__8TBaseNPCFv: # 0x802046e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80204718
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80204784
branch_0x80204718:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80204730
    li      r0, 0x1
    b       branch_0x80204734

branch_0x80204730:
    li      r0, 0x0
branch_0x80204734:
    clrlwi. r0, r0, 24
    beq-    branch_0x80204774
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x9
    bne-    branch_0x8020475c
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80204784

branch_0x8020475c:
    lwz     r4, 0x190(r31)
    li      r3, 0x9
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80204784

branch_0x80204774:
    addi    r3, r31, 0x0
    li      r4, 0x9
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204784:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcTalkOut__8TBaseNPCFv
npcTalkOut__8TBaseNPCFv: # 0x802047b8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x3c
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    sth     r0, 0x1e0(r3)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x80204970
    li      r0, 0x78
    sth     r0, 0x1e2(r31)
    li      r4, 0x0
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x8020480c
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8020480c
    li      r4, 0x1
branch_0x8020480c:
    clrlwi. r0, r4, 24
    beq-    branch_0x80204868
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80204868
    lbz     r0, 0x1d8(r31)
    lis     r4, 0x8039
    lis     r3, 0x8039
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x1d8(r31)
    addi    r7, r4, 0x4978
    addi    r0, r3, 0x4988
    lbz     r5, 0x1d8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    ori     r5, r5, 0x4
    stb     r5, 0x1d8(r31)
    li      r5, 0x0
    lwz     r6, 0xd0(r31)
    stw     r7, 0x18(r6)
    lwz     r6, 0xd0(r31)
    stw     r0, 0x1c(r6)
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204868:
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802048b8
    lwz     r0, 0x170(r31)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0x170(r31)
    lwz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802048b8
    addi    r3, sp, 0x34
    addi    r4, r31, 0x0
    bl      getCursorPos__8TBaseNPCCFv
    lwz     r3, 0x184(r31)
    addi    r4, sp, 0x34
    lfs     f1, 0x34(r31)
    li      r5, 0x28
    bl      requestAppearCoin__8TNpcCoinFRC3Vecfi
    li      r0, 0x168
    sth     r0, 0x1e0(r31)
    sth     r0, 0x1e2(r31)
branch_0x802048b8:
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 13, 11
    stw     r0, 0xf0(r31)
    bl      changeNerveFromTalk___8TBaseNPCFv
    lwz     r0, 0x17c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80204970
    lwz     r4, 0x4c(r31)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80204970
    lis     r3, 0x400
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80204904
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80204970
branch_0x80204904:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020491c
    li      r0, 0x1
    b       branch_0x80204920

branch_0x8020491c:
    li      r0, 0x0
branch_0x80204920:
    clrlwi. r0, r0, 24
    beq-    branch_0x80204960
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80204948
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80204970

branch_0x80204948:
    lwz     r4, 0x190(r31)
    li      r3, 0x4
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80204970

branch_0x80204960:
    addi    r3, r31, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204970:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl npcTalking__8TBaseNPCFv
npcTalking__8TBaseNPCFv: # 0x80204984
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    li      r30, 0x0
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802049bc
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802049bc
    li      r30, 0x1
branch_0x802049bc:
    clrlwi. r0, r30, 24
    beq-    branch_0x80204a24
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80204b0c
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1a
    bne-    branch_0x80204b0c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204b0c
    lbz     r0, 0x1d8(r31)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x1d8(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x80204a18
    mr      r3, r31
    bl      requestTalkAnm___8TBaseNPCFv
    b       branch_0x80204b0c

branch_0x80204a18:
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    b       branch_0x80204b0c

branch_0x80204a24:
    mr      r3, r31
    bl      isTurnToMarioWhenTalk__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80204a68
    lfs     f1, 0x144(r31)
    addi    r3, r31, 0x10
    lwz     r4, -0x60b4(r13)
    addi    r5, r31, 0x34
    bl      SMS_GoRotate__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80204a68
    lbz     r0, 0x1da(r31)
    ori     r0, r0, 0x1
    stb     r0, 0x1da(r31)
branch_0x80204a68:
    lwz     r3, 0x4c(r31)
    li      r4, 0x0
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80204a8c
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80204a8c
    li      r4, 0x1
branch_0x80204a8c:
    clrlwi. r0, r4, 24
    beq-    branch_0x80204b0c
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1a
    bne-    branch_0x80204b0c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204b0c
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80204b0c
    lbz     r0, 0x1d8(r31)
    lis     r4, 0x8039
    lis     r3, 0x8039
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x1d8(r31)
    addi    r7, r4, 0x4978
    addi    r0, r3, 0x4988
    lbz     r5, 0x1d8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    ori     r5, r5, 0x4
    stb     r5, 0x1d8(r31)
    li      r5, 0x0
    lwz     r6, 0xd0(r31)
    stw     r7, 0x18(r6)
    lwz     r6, 0xd0(r31)
    stw     r0, 0x1c(r6)
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204b0c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl npcTalkIn__8TBaseNPCFv
npcTalkIn__8TBaseNPCFv: # 0x80204b24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x8
    stw     r0, 0xf0(r3)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1c
    beq-    branch_0x80204c80
    cmplwi  r0, 0x1d
    beq-    branch_0x80204c80
    li      r30, 0x0
    addi    r3, r31, 0x0
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80204b84
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80204b84
    li      r30, 0x1
branch_0x80204b84:
    clrlwi. r0, r30, 24
    bne-    branch_0x80204c80
    lwz     r4, 0x4c(r31)
    li      r3, 0x0
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80204bb0
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80204bb0
    li      r3, 0x1
branch_0x80204bb0:
    clrlwi. r0, r3, 24
    beq-    branch_0x80204c44
    lis     r3, 0x400
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80204bd4
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80204c80
branch_0x80204bd4:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80204bec
    li      r0, 0x1
    b       branch_0x80204bf0

branch_0x80204bec:
    li      r0, 0x0
branch_0x80204bf0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80204c30
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1a
    bne-    branch_0x80204c18
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80204c80

branch_0x80204c18:
    lwz     r4, 0x190(r31)
    li      r3, 0x1a
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80204c80

branch_0x80204c30:
    addi    r3, r31, 0x0
    li      r4, 0x1a
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x80204c80

branch_0x80204c44:
    lwz     r3, 0x170(r31)
    rlwinm. r0, r3, 0, 21, 21
    beq-    branch_0x80204c58
    li      r4, 0x1
    b       branch_0x80204c74

branch_0x80204c58:
    clrlwi. r0, r3, 31
    beq-    branch_0x80204c70
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x80204c70
    li      r4, 0x13
    b       branch_0x80204c74

branch_0x80204c70:
    li      r4, 0x6
branch_0x80204c74:
    addi    r3, r31, 0x0
    li      r5, 0x1
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204c80:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl npcStepIn__8TBaseNPCFv
npcStepIn__8TBaseNPCFv: # 0x80204cb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80204cec
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80204d58
branch_0x80204cec:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80204d04
    li      r0, 0x1
    b       branch_0x80204d08

branch_0x80204d04:
    li      r0, 0x0
branch_0x80204d08:
    clrlwi. r0, r0, 24
    beq-    branch_0x80204d48
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80204d30
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80204d58

branch_0x80204d30:
    lwz     r4, 0x190(r31)
    li      r3, 0x4
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80204d58

branch_0x80204d48:
    addi    r3, r31, 0x0
    li      r4, 0x4
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204d58:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcRecoverAfterIn__8TBaseNPCFv
npcRecoverAfterIn__8TBaseNPCFv: # 0x80204d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80204dc0
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80204e2c
branch_0x80204dc0:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80204dd8
    li      r0, 0x1
    b       branch_0x80204ddc

branch_0x80204dd8:
    li      r0, 0x0
branch_0x80204ddc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80204e1c
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80204e04
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80204e2c

branch_0x80204e04:
    lwz     r4, 0x190(r31)
    li      r3, 0x3
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x80204e2c

branch_0x80204e1c:
    addi    r3, r31, 0x0
    li      r4, 0x3
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80204e2c:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcRecoverFromSinking__8TBaseNPCFv
npcRecoverFromSinking__8TBaseNPCFv: # 0x80204e60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    li      r30, 0x0
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 4, 4
    bne-    branch_0x80204f58
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x1d6c(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80204f58
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x800
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x1c4(r31)
    lfs     f0, 0x14(r31)
    lfs     f4, -0x1da0(rtoc)
    fsubs   f0, f2, f0
    lfs     f2, -0x1d68(rtoc)
    fcmpo   cr0, f1, f4
    fadds   f5, f2, f0
    ble-    branch_0x80204f40
    lfs     f2, -0x1d78(rtoc)
    lfs     f3, -0x1d64(rtoc)
    fdivs   f0, f2, f1
    fmuls   f0, f5, f0
    fmadds  f5, f3, f0, f2
    fcmpo   cr0, f5, f4
    ble-    branch_0x80204f2c
    frsqrte f4, f5
    lfd     f3, -0x1d60(rtoc)
    lfd     f0, -0x1d58(rtoc)
    fmul    f2, f4, f4
    fmul    f3, f3, f4
    fnmsub   f0, f5, f2, f0
    fmul    f0, f3, f0
    fmul    f0, f5, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f5, 0x10(sp)
branch_0x80204f2c:
    lfs     f2, -0x1d70(rtoc)
    lfs     f0, -0x1d78(rtoc)
    fmuls   f1, f2, f1
    fadds   f0, f0, f5
    fmuls   f4, f1, f0
branch_0x80204f40:
    stfs    f4, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1d50(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80204f58
    stfs    f0, 0xb0(r31)
branch_0x80204f58:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80204fac
    lwz     r4, 0xf0(r31)
    lis     r3, 0xf7c0
    subi    r0, r3, 0x11
    rlwinm  r3, r4, 0, 25, 23
    stw     r3, 0xf0(r31)
    li      r30, 0x1
    lfs     f0, -0x1da0(rtoc)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lfs     f0, 0x1c4(r31)
    stfs    f0, 0x14(r31)
    lwz     r3, 0xf0(r31)
    and     r0, r3, r0
    stw     r0, 0xf0(r31)
    b       branch_0x80205024

branch_0x80204fac:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 4, 4
    beq-    branch_0x80205024
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb0(r31)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80204fec
    stfs    f1, 0xb0(r31)
branch_0x80204fec:
    lfs     f1, 0x14(r31)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1da0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80205024
    lfs     f0, 0x14(r31)
    lfs     f1, 0x1c4(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80205024
    stfs    f1, 0x14(r31)
branch_0x80205024:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl npcFallIn__8TBaseNPCFv
npcFallIn__8TBaseNPCFv: # 0x80205040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80205074
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x802050e0
branch_0x80205074:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8020508c
    li      r0, 0x1
    b       branch_0x80205090

branch_0x8020508c:
    li      r0, 0x0
branch_0x80205090:
    clrlwi. r0, r0, 24
    beq-    branch_0x802050d0
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x802050b8
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x802050e0

branch_0x802050b8:
    lwz     r4, 0x190(r31)
    li      r3, 0x2
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x802050e0

branch_0x802050d0:
    addi    r3, r31, 0x0
    li      r4, 0x2
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802050e0:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r31)
    lwz     r3, 0x228(r31)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r31)
    stw     r0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl npcWaitIn__8TBaseNPCFv
npcWaitIn__8TBaseNPCFv: # 0x80205114
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    li      r31, 0x1
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    lwz     r3, 0x170(r3)
    rlwinm. r0, r3, 0, 21, 21
    bne-    branch_0x80205228
    lfs     f1, -0x1da0(rtoc)
    lfs     f0, 0x178(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80205158
    li      r31, 0xf
    b       branch_0x80205228

branch_0x80205158:
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x80205168
    li      r31, 0x11
    b       branch_0x80205228

branch_0x80205168:
    clrlwi. r0, r3, 31
    beq-    branch_0x80205190
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x80205190
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x80205188
    li      r31, 0x13
    b       branch_0x80205228

branch_0x80205188:
    li      r31, 0x12
    b       branch_0x80205228

branch_0x80205190:
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8020521c
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x802051b8
    b       branch_0x802051bc

branch_0x802051b8:
    lwz     r29, 0x1c(r3)
branch_0x802051bc:
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r29, r3
    bne-    branch_0x80205228
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x802051ec
    cmplwi  r0, 0x2
    beq-    branch_0x802051ec
    li      r4, 0x0
branch_0x802051ec:
    clrlwi. r0, r4, 24
    bne-    branch_0x80205204
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x4
    beq-    branch_0x80205204
    li      r3, 0x0
branch_0x80205204:
    clrlwi. r0, r3, 24
    bne-    branch_0x80205228
    mr      r3, r30
    bl      getNpcWaitAnmBase___8TBaseNPCFv
    mr      r31, r3
    b       branch_0x80205228

branch_0x8020521c:
    mr      r3, r30
    bl      getNpcWaitAnmBase___8TBaseNPCFv
    mr      r31, r3
branch_0x80205228:
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80205248
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x802052b0
branch_0x80205248:
    lwz     r3, 0x18c(r30)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80205260
    li      r0, 0x1
    b       branch_0x80205264

branch_0x80205260:
    li      r0, 0x0
branch_0x80205264:
    clrlwi. r0, r0, 24
    beq-    branch_0x802052a0
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpw    r31, r0
    bne-    branch_0x8020528c
    lwz     r3, 0x190(r30)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x802052b0

branch_0x8020528c:
    lwz     r3, 0x190(r30)
    li      r0, 0x1
    stw     r31, 0x0(r3)
    stb     r0, 0x4(r3)
    b       branch_0x802052b0

branch_0x802052a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802052b0:
    lfs     f1, -0x1da0(rtoc)
    li      r0, 0x0
    stfs    f1, 0x140(r30)
    lwz     r3, 0x228(r30)
    lfs     f0, 0x144(r3)
    stfs    f0, 0x144(r30)
    stw     r0, 0x1cc(r30)
    stfs    f1, 0x1d0(r30)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl getNpcWaitAnmBase___8TBaseNPCFv
getNpcWaitAnmBase___8TBaseNPCFv: # 0x802052ec
    lhz     r0, 0x1e2(r3)
    li      r4, 0x1
    cmplwi  r0, 0x0
    bne-    branch_0x8020534c
    lwz     r3, 0x170(r3)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80205310
    li      r4, 0xc
    b       branch_0x8020534c

branch_0x80205310:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x80205320
    li      r4, 0x15
    b       branch_0x8020534c

branch_0x80205320:
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x80205330
    li      r4, 0x6
    b       branch_0x8020534c

branch_0x80205330:
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x80205340
    li      r4, 0x17
    b       branch_0x8020534c

branch_0x80205340:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8020534c
    li      r4, 0x16
branch_0x8020534c:
    mr      r3, r4
    blr


.globl walkAnmRateChange___8TBaseNPCFv
walkAnmRateChange___8TBaseNPCFv: # 0x80205354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    stw     r30, 0xc0(sp)
    lfs     f2, 0x94(r3)
    lfs     f1, 0x9c(r3)
    fmuls   f2, f2, f2
    lfs     f0, -0x1da0(rtoc)
    fmuls   f1, f1, f1
    fadds   f31, f2, f1
    fcmpo   cr0, f31, f0
    ble-    branch_0x802053c4
    frsqrte f3, f31
    lfd     f2, -0x1d60(rtoc)
    lfd     f0, -0x1d58(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f31, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f31, f0
    frsp    f0, f0
    stfs    f0, 0x7c(sp)
    lfs     f31, 0x7c(sp)
branch_0x802053c4:
    lfs     f0, -0x1d7c(rtoc)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80205500
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x8
    beq-    branch_0x802053f0
    bge-    branch_0x802054f4
    cmpwi   r0, 0x0
    beq-    branch_0x802053f0
    b       branch_0x802054f4

branch_0x802053f0:
    lwz     r3, -0x6220(r13)
    addi    r3, r3, 0x194
    lwz     r3, 0x0(r3)
    bl      CLBPalFrame_l___Fl
    lwz     r4, -0x6220(r13)
    mr      r30, r3
    lfs     f1, -0x1da0(rtoc)
    addi    r3, r31, 0x1d0
    lfs     f2, 0x180(r4)
    lfs     f3, -0x1d7c(rtoc)
    bl      CLBChaseDecrease__FPffff
    lwz     r4, 0x1cc(r31)
    cmpw    r4, r30
    bge-    branch_0x80205430
    addi    r0, r4, 0x1
    stw     r0, 0x1cc(r31)
branch_0x80205430:
    lwz     r0, 0x1cc(r31)
    cmpw    r0, r30
    bge-    branch_0x80205444
    cmpwi   r3, 0x0
    bne-    branch_0x802054e0
branch_0x80205444:
    li      r0, 0x0
    stw     r0, 0x1cc(r31)
    li      r3, 0x1
    lfs     f0, -0x1da0(rtoc)
    stfs    f0, 0x1d0(r31)
    lwz     r4, 0x18c(r31)
    lwz     r5, 0x24(r4)
    cmpwi   r5, 0x0
    ble-    branch_0x8020546c
    mr      r0, r3
branch_0x8020546c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8020549c
    lfs     f1, 0x28(r4)
    lfs     f0, -0x1da0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8020548c
    li      r0, 0x1
    b       branch_0x80205490

branch_0x8020548c:
    li      r0, 0x0
branch_0x80205490:
    clrlwi. r0, r0, 24
    bne-    branch_0x8020549c
    li      r3, 0x0
branch_0x8020549c:
    clrlwi. r0, r3, 24
    bne-    branch_0x802054b0
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    b       branch_0x8020575c

branch_0x802054b0:
    cmpwi   r5, 0x0
    ble-    branch_0x802054c0
    li      r0, 0x1
    b       branch_0x802054c4

branch_0x802054c0:
    li      r0, 0x0
branch_0x802054c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8020575c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, 0x1d0(r31)
    bl      setFrameRate__6MActorFfi
    b       branch_0x8020575c

branch_0x802054e0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, 0x1d0(r31)
    bl      setFrameRate__6MActorFfi
    b       branch_0x8020575c

branch_0x802054f4:
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    b       branch_0x8020575c

branch_0x80205500:
    li      r0, 0x0
    stw     r0, 0x1cc(r31)
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x8
    beq-    branch_0x80205528
    bge-    branch_0x8020562c
    cmpwi   r0, 0x0
    beq-    branch_0x80205528
    b       branch_0x8020562c

branch_0x80205528:
    lwz     r3, 0x228(r31)
    addi    r30, r3, 0x7c
    bl      SMSGetAnmFrameRate__Fv
    lwz     r3, 0xd0(r31)
    lfs     f0, 0x0(r30)
    lwz     r0, 0x14(r3)
    fmuls   f30, f0, f1
    cmpwi   r0, 0x8
    bne-    branch_0x80205588
    lwz     r3, 0x228(r31)
    addi    r30, r3, 0xa4
    bl      SMSGetAnmFrameRate__Fv
    lwz     r0, 0x170(r31)
    lfs     f0, 0x0(r30)
    lwz     r3, 0x228(r31)
    rlwinm. r0, r0, 0, 17, 17
    fmuls   f29, f0, f1
    lfs     f2, 0xe0(r3)
    beq-    branch_0x802055a4
    lwz     r3, -0x6220(r13)
    lfs     f0, 0x270(r3)
    fmuls   f29, f29, f0
    fmuls   f2, f2, f0
    b       branch_0x802055a4

branch_0x80205588:
    lwz     r3, 0x228(r31)
    addi    r30, r3, 0x90
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, 0x0(r30)
    lwz     r3, 0x228(r31)
    fmuls   f29, f0, f1
    lfs     f2, 0xcc(r3)
branch_0x802055a4:
    fcmpo   cr0, f31, f2
    ble-    branch_0x802055b0
    fmr     f31, f2
branch_0x802055b0:
    lwz     r3, 0x228(r31)
    fmr     f3, f31
    lfs     f1, 0xb8(r3)
    bl      CLBCalcRatio_f___Ffff
    lfs     f0, -0x1d78(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802055d4
    fmr     f1, f0
    b       branch_0x802055e4

branch_0x802055d4:
    lfs     f0, -0x1da0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802055e4
    fmr     f1, f0
branch_0x802055e4:
    fmr     f3, f1
    fmr     f1, f30
    fmr     f2, f29
    bl      CLBLinearInbetween_f___Ffff
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80205604
    fmr     f1, f29
branch_0x80205604:
    lwz     r4, -0x6220(r13)
    addi    r3, r31, 0x1d0
    lfs     f3, -0x1da0(rtoc)
    lfs     f2, 0x16c(r4)
    bl      CLBChaseDecrease__FPffff
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, 0x1d0(r31)
    bl      setFrameRate__6MActorFfi
    b       branch_0x8020575c

branch_0x8020562c:
    lfs     f0, -0x1da0(rtoc)
    stfs    f0, 0x1d0(r31)
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802056d0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x80205660
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x8020575c
branch_0x80205660:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80205678
    li      r0, 0x1
    b       branch_0x8020567c

branch_0x80205678:
    li      r0, 0x0
branch_0x8020567c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802056bc
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x8
    bne-    branch_0x802056a4
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x8020575c

branch_0x802056a4:
    lwz     r4, 0x190(r31)
    li      r3, 0x8
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x8020575c

branch_0x802056bc:
    addi    r3, r31, 0x0
    li      r4, 0x8
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    b       branch_0x8020575c

branch_0x802056d0:
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x1e
    cmpw    r4, r0
    bge-    branch_0x802056f0
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x8020575c
branch_0x802056f0:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80205708
    li      r0, 0x1
    b       branch_0x8020570c

branch_0x80205708:
    li      r0, 0x0
branch_0x8020570c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8020574c
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80205734
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x8020575c

branch_0x80205734:
    lwz     r4, 0x190(r31)
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, 0x0(r4)
    stb     r0, 0x4(r4)
    b       branch_0x8020575c

branch_0x8020574c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x8020575c:
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lfd     f29, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    addi    sp, sp, 0xe0
    blr


.globl randomizeBckAndBtpFrame___8TBaseNPCFv
randomizeBckAndBtpFrame___8TBaseNPCFv: # 0x80205780
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    mr      r27, r3
    li      r29, 0x0
    li      r28, 0x0
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    mr.     r31, r3
    beq-    branch_0x80205828
    lha     r30, 0x8(r31)
    mr      r29, r30
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x34(sp)
    lis     r3, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x1da8(rtoc)
    stw     r3, 0x30(sp)
    stw     r0, 0x2c(sp)
    lfd     f0, 0x30(sp)
    stw     r3, 0x28(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x28(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stfd    f0, 0x20(sp)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    lwz     r28, 0x24(sp)
    stw     r0, 0x14(sp)
    stw     r3, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f3
    stfs    f0, 0x10(r31)
branch_0x80205828:
    lwz     r3, 0x74(r27)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    mr.     r31, r3
    beq-    branch_0x802058c4
    lha     r30, 0x8(r31)
    extsh   r0, r29
    cmpw    r30, r0
    bne-    branch_0x80205854
    mr      r0, r28
    b       branch_0x802058a0

branch_0x80205854:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1d98(rtoc)
    stw     r0, 0x14(sp)
    lis     r3, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x1da8(rtoc)
    stw     r3, 0x10(sp)
    stw     r0, 0x1c(sp)
    lfd     f0, 0x10(sp)
    stw     r3, 0x18(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x18(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
branch_0x802058a0:
    extsh   r0, r0
    lfd     f1, -0x1d98(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r31)
branch_0x802058c4:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl requestTalkAnm___8TBaseNPCFv
requestTalkAnm___8TBaseNPCFv: # 0x802058d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x170(r3)
    rlwinm. r0, r4, 0, 21, 21
    beq-    branch_0x802058f8
    li      r4, 0x1
    b       branch_0x80205914

branch_0x802058f8:
    clrlwi. r0, r4, 31
    beq-    branch_0x80205910
    rlwinm. r0, r4, 0, 29, 29
    bne-    branch_0x80205910
    li      r4, 0x13
    b       branch_0x80205914

branch_0x80205910:
    li      r4, 0x6
branch_0x80205914:
    lis     r5, 0x400
    lwz     r6, 0x4c(r3)
    addi    r0, r5, 0x1e
    cmpw    r6, r0
    bge-    branch_0x80205934
    addi    r0, r5, 0x1c
    cmpw    r6, r0
    bge-    branch_0x80205994
branch_0x80205934:
    lwz     r5, 0x18c(r3)
    lwz     r0, 0x24(r5)
    cmpwi   r0, 0x0
    ble-    branch_0x8020594c
    li      r0, 0x1
    b       branch_0x80205950

branch_0x8020594c:
    li      r0, 0x0
branch_0x80205950:
    clrlwi. r0, r0, 24
    beq-    branch_0x8020598c
    lwz     r5, 0xd0(r3)
    lwz     r0, 0x14(r5)
    cmpw    r4, r0
    bne-    branch_0x80205978
    lwz     r3, 0x190(r3)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80205994

branch_0x80205978:
    lwz     r3, 0x190(r3)
    li      r0, 0x1
    stw     r4, 0x0(r3)
    stb     r0, 0x4(r3)
    b       branch_0x80205994

branch_0x8020598c:
    li      r5, 0x1
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80205994:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setKeepAnm___8TBaseNPCFv
setKeepAnm___8TBaseNPCFv: # 0x802059a4
    mflr    r0
    li      r7, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x190(r3)
    lwz     r4, 0x0(r6)
    lbz     r5, 0x4(r6)
    cmpwi   r4, -0x1
    stw     r7, 0x0(r6)
    beq-    branch_0x802059ec
    lwz     r6, 0xd0(r3)
    lwz     r0, 0x14(r6)
    cmpw    r4, r0
    bne-    branch_0x802059e8
    lwz     r3, 0x190(r3)
    stw     r7, 0x0(r3)
    b       branch_0x802059ec

branch_0x802059e8:
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x802059ec:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff: # 0x802059fc
    mflr    r0
    lis     r6, 0x400
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x1e
    stwu    sp, -0x8(sp)
    lwz     r7, 0x4c(r3)
    cmpw    r7, r0
    bge-    branch_0x80205a28
    addi    r0, r6, 0x1c
    cmpw    r7, r0
    bge-    branch_0x80205a8c
branch_0x80205a28:
    lwz     r6, 0x18c(r3)
    lwz     r0, 0x24(r6)
    cmpwi   r0, 0x0
    ble-    branch_0x80205a40
    li      r0, 0x1
    b       branch_0x80205a44

branch_0x80205a40:
    li      r0, 0x0
branch_0x80205a44:
    clrlwi. r0, r0, 24
    beq-    branch_0x80205a88
    lwz     r6, 0xd0(r3)
    lwz     r0, 0x14(r6)
    cmpw    r4, r0
    bne-    branch_0x80205a6c
    lwz     r3, 0x190(r3)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    b       branch_0x80205a8c

branch_0x80205a6c:
    lwz     r3, 0x190(r3)
    neg     r5, r5
    subic   r0, r5, 0x1
    stw     r4, 0x0(r3)
    subfe   r0, r0, r5
    stb     r0, 0x4(r3)
    b       branch_0x80205a8c

branch_0x80205a88:
    bl      setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
branch_0x80205a8c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
setNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff: # 0x80205a9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r26, 0x48(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x400
    addi    r0, r3, 0x1e
    addi    r30, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r6, 0x4c(r31)
    cmpw    r6, r0
    bge-    branch_0x80205ad8
    addi    r0, r3, 0x1c
    cmpw    r6, r0
    bge-    branch_0x80205efc
branch_0x80205ad8:
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpw    r30, r0
    beq-    branch_0x80205efc
    mr      r4, r30
    bl      setBckAndBtpAnm__7TLodAnmFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80205efc
    cmpwi   r30, 0x11
    bne-    branch_0x80205b60
    lbz     r0, 0x1d9(r31)
    cmpwi   r0, 0x3
    bge-    branch_0x80205b60
    cmpwi   r0, 0x0
    bge-    branch_0x80205b24
    b       branch_0x80205b60

branch_0x80205b24:
    mr      r3, r31
    bl      emitHappyEffect___8TBaseNPCFv
    lis     r28, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r28, 0x77f8
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80205b60
    subi    r3, r28, 0x77f8
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80205b60:
    mr      r3, r31
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80205c30
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    lbz     r4, 0x1d8(r31)
    addi    r28, r3, 0x0
    clrlwi. r0, r4, 31
    beq-    branch_0x80205bf4
    cmpwi   r30, 0x5
    bne-    branch_0x80205bc4
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1a
    bne-    branch_0x80205bac
    li      r4, 0x1
    b       branch_0x80205bb0

branch_0x80205bac:
    li      r4, 0x1
branch_0x80205bb0:
    lwz     r3, 0x74(r31)
    bl      setBrkFromIndex__6MActorFi
    li      r0, 0x0
    stb     r0, 0x4(r28)
    b       branch_0x80205c30

branch_0x80205bc4:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1a
    bne-    branch_0x80205bdc
    li      r4, 0x0
    b       branch_0x80205be0

branch_0x80205bdc:
    li      r4, 0x0
branch_0x80205be0:
    lwz     r3, 0x74(r31)
    bl      setBrkFromIndex__6MActorFi
    lfs     f0, -0x1da0(rtoc)
    stfs    f0, 0xc(r28)
    b       branch_0x80205c30

branch_0x80205bf4:
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x80205c30
    cmpwi   r30, 0x1a
    bne-    branch_0x80205c30
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1a
    bne-    branch_0x80205c1c
    li      r4, 0x0
    b       branch_0x80205c20

branch_0x80205c1c:
    li      r4, 0x0
branch_0x80205c20:
    lwz     r3, 0x74(r31)
    bl      setBrkFromIndex__6MActorFi
    li      r0, 0x0
    stb     r0, 0x4(r28)
branch_0x80205c30:
    lwz     r0, 0x168(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80205ed0
    mr      r3, r31
    bl      isPartsAnmNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80205ed0
    lis     r3, 0x400
    lwz     r4, 0x4c(r31)
    addi    r0, r3, 0x15
    cmpw    r4, r0
    beq-    branch_0x80205e5c
    bge-    branch_0x80205c74
    addi    r0, r3, 0x10
    cmpw    r4, r0
    beq-    branch_0x80205df8
    b       branch_0x80205ed0

branch_0x80205c74:
    addi    r0, r3, 0x18
    cmpw    r4, r0
    beq-    branch_0x80205c84
    b       branch_0x80205ed0

branch_0x80205c84:
    lbz     r0, 0x1d8(r31)
    li      r4, 0x0
    lwz     r3, 0x168(r31)
    li      r5, 0x0
    clrlwi  r0, r0, 31
    neg     r6, r0
    subic   r0, r6, 0x1
    subfe   r26, r0, r6
    bl      getPartsMActor__9TNpcPartsFii
    cmplwi  r3, 0x0
    beq-    branch_0x80205d08
    cmpwi   r30, 0x5
    beq-    branch_0x80205cbc
    b       branch_0x80205cd4

branch_0x80205cbc:
    clrlwi. r0, r26, 24
    beq-    branch_0x80205ccc
    li      r27, 0x4
    b       branch_0x80205ce8

branch_0x80205ccc:
    li      r27, 0x6
    b       branch_0x80205ce8

branch_0x80205cd4:
    clrlwi. r0, r26, 24
    beq-    branch_0x80205ce4
    li      r27, 0x3
    b       branch_0x80205ce8

branch_0x80205ce4:
    li      r27, 0x5
branch_0x80205ce8:
    addi    r28, r3, 0x0
    addi    r4, r27, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80205d08
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x80205d08:
    lwz     r3, 0x168(r31)
    li      r4, 0x3
    li      r5, 0x0
    bl      getPartsMActor__9TNpcPartsFii
    cmplwi  r3, 0x0
    beq-    branch_0x80205da4
    subi    r0, r30, 0x5
    cmplwi  r0, 0x15
    bgt-    branch_0x80205d5c
    lis     r4, 0x803e
    subi    r4, r4, 0x7c10
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    li      r26, 0x7
    b       branch_0x80205d84


.incbin "./baserom/code/Text_0x80005600.bin", 0x20074c, 0x80205d5c - 0x80205d4c
branch_0x80205d5c:
    clrlwi. r0, r26, 24
    beq-    branch_0x80205d6c
    li      r26, 0xb
    b       branch_0x80205d84

branch_0x80205d6c:
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80205d80
    li      r26, 0x9
    b       branch_0x80205d84

branch_0x80205d80:
    li      r26, 0x8
branch_0x80205d84:
    addi    r27, r3, 0x0
    addi    r4, r26, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80205da4
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x80205da4:
    lwz     r3, 0x168(r31)
    li      r4, 0x4
    li      r5, 0x0
    bl      getPartsMActor__9TNpcPartsFii
    cmplwi  r3, 0x0
    beq-    branch_0x80205ed0
    cmpwi   r30, 0x5
    beq-    branch_0x80205dc8
    b       branch_0x80205dd0

branch_0x80205dc8:
    li      r26, -0x1
    b       branch_0x80205dd4

branch_0x80205dd0:
    li      r26, 0x11
branch_0x80205dd4:
    addi    r27, r3, 0x0
    addi    r4, r26, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80205ed0
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    bl      setBckFromIndex__6MActorFi
    b       branch_0x80205ed0

branch_0x80205df8:
    cmpwi   r30, 0x6
    li      r28, 0x1
    beq-    branch_0x80205e14
    bge-    branch_0x80205e20
    cmpwi   r30, 0x5
    bge-    branch_0x80205e1c
    b       branch_0x80205e20

branch_0x80205e14:
    li      r28, 0x2
    b       branch_0x80205e20

branch_0x80205e1c:
    li      r28, 0x3
branch_0x80205e20:
    lwz     r3, 0x168(r31)
    li      r4, 0x9
    li      r5, 0x0
    bl      getPartsMActor__9TNpcPartsFii
    cmplwi  r3, 0x0
    beq-    branch_0x80205ed0
    addi    r27, r3, 0x0
    addi    r4, r28, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80205ed0
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    bl      setBckFromIndex__6MActorFi
    b       branch_0x80205ed0

branch_0x80205e5c:
    cmpwi   r30, 0x6
    li      r26, 0x0
    addi    r28, r26, 0x0
    beq-    branch_0x80205e88
    bge-    branch_0x80205e8c
    cmpwi   r30, 0x5
    bge-    branch_0x80205e7c
    b       branch_0x80205e8c

branch_0x80205e7c:
    li      r26, 0x2
    li      r28, 0x1
    b       branch_0x80205e8c

branch_0x80205e88:
    li      r26, 0x1
branch_0x80205e8c:
    lwz     r3, 0x168(r31)
    li      r4, 0xa
    li      r5, 0x0
    bl      getPartsMActor__9TNpcPartsFii
    mr.     r27, r3
    beq-    branch_0x80205ed0
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80205ec4
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x80205ec4:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80205ed0:
    cmpwi   r29, 0x1
    bne-    branch_0x80205ee8
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(r3)
    b       branch_0x80205ef4

branch_0x80205ee8:
    lwz     r3, 0x18c(r31)
    li      r0, 0x0
    stw     r0, 0x24(r3)
branch_0x80205ef4:
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
branch_0x80205efc:
    lmw     r26, 0x48(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl CLBPalFrame_l___Fl
CLBPalFrame_l___Fl: # 0x80205f10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x1d78(rtoc)
    xoris   r0, r31, 0x8000
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    fdivs   f0, f0, f1
    stw     r0, 0x10(sp)
    lfd     f2, -0x1d98(rtoc)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      CLBRoundf_l___Ff
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl CLBRoundf_l___Ff
CLBRoundf_l___Ff: # 0x80205f68
    stwu    sp, -0x18(sp)
    lfs     f0, -0x1da0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80205f80
    lfs     f0, -0x1d70(rtoc)
    b       branch_0x80205f84

branch_0x80205f80:
    lfs     f0, -0x1d4c(rtoc)
branch_0x80205f84:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl __sinit_NpcAnm_cpp
__sinit_NpcAnm_cpp: # 0x80205f9c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5328
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80205fe4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80205fe4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80206014
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80206014:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80206044
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80206044:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80206074
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80206074:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802060a4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802060a4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802060d4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802060d4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80206104
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80206104:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80206134
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80206134:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80206164
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80206164:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80206194
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80206194:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802061c4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802061c4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802061f4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802061f4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80206224
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80206224:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80206254
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80206254:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80206284
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80206284:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

