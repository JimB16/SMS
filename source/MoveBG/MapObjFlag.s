
.globl __dt__18TMapObjFlagManagerFv
__dt__18TMapObjFlagManagerFv: # 0x801db248
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801db2a0
    lis     r3, 0x803d
    addi    r0, r3, 0x1f60
    stw     r0, 0x0(r30)
    beq-    branch_0x801db290
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801db290:
    extsh.  r0, r31
    ble-    branch_0x801db2a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801db2a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__18TMapObjFlagManagerFPCc
__ct__18TMapObjFlagManagerFPCc: # 0x801db2bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lis     r3, 0x803d
    sth     r0, 0xc(r31)
    addi    r0, r3, 0x1f60
    lis     r3, 0x801e
    stw     r0, 0x0(r31)
    subi    r4, r3, 0x4cb8
    addi    r3, r31, 0x10
    li      r5, 0x0
    li      r6, 0x58
    li      r7, 0xf
    bl      __construct_array
    stw     r31, -0x6280(r13)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q218TMapObjFlagManager15TMapObjFlagInfoFv
__ct__Q218TMapObjFlagManager15TMapObjFlagInfoFv: # 0x801db348
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x54(r3)
    blr


.globl load__18TMapObjFlagManagerFR20JSUMemoryInputStream
load__18TMapObjFlagManagerFR20JSUMemoryInputStream: # 0x801db358
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x8
    bl      readString__14JSUInputStreamFPcUs
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x801db3b8
    bge-    branch_0x801db3a0
    cmpwi   r0, 0x0
    beq-    branch_0x801db3ac
    b       branch_0x801db3d0

branch_0x801db3a0:
    cmpwi   r0, 0x4
    beq-    branch_0x801db3c4
    b       branch_0x801db3d0

branch_0x801db3ac:
    lfs     f0, -0x2584(rtoc)
    stfs    f0, -0x78d8(r13)
    b       branch_0x801db3d8

branch_0x801db3b8:
    lfs     f0, -0x2584(rtoc)
    stfs    f0, -0x78d8(r13)
    b       branch_0x801db3d8

branch_0x801db3c4:
    lfs     f0, -0x2580(rtoc)
    stfs    f0, -0x78d8(r13)
    b       branch_0x801db3d8

branch_0x801db3d0:
    lfs     f0, -0x257c(rtoc)
    stfs    f0, -0x78d8(r13)
branch_0x801db3d8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl registerObj__18TMapObjFlagManagerFP11TMapObjFlagPCc
registerObj__18TMapObjFlagManagerFP11TMapObjFlagPCc: # 0x801db3ec
    mflr    r0
    lis     r6, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x3e8(sp)
    stw     r31, 0x3e4(sp)
    addi    r31, r6, 0x2460
    stw     r30, 0x3e0(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x3dc(sp)
    addi    r29, r4, 0x0
    subi    r4, rtoc, 0x2578
    stw     r28, 0x3d8(sp)
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db480
    lwz     r0, 0x64(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db460
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x394
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x394
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x64(r28)
branch_0x801db460:
    lwz     r0, 0x10(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x14(r3)
    lwz     r3, 0x10(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r28)
    b       branch_0x801db9f4

branch_0x801db480:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x38
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db4e4
    lwz     r0, 0xbc(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db4c4
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x354
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x354
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0xbc(r28)
branch_0x801db4c4:
    lwz     r0, 0x68(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x6c(r3)
    lwz     r3, 0x68(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x68(r28)
    b       branch_0x801db9f4

branch_0x801db4e4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x44
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db548
    lwz     r0, 0x114(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db528
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x314
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x314
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x114(r28)
branch_0x801db528:
    lwz     r0, 0xc0(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0xc4(r3)
    lwz     r3, 0xc0(r28)
    addi    r0, r3, 0x1
    stw     r0, 0xc0(r28)
    b       branch_0x801db9f4

branch_0x801db548:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x50
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db5ac
    lwz     r0, 0x16c(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db58c
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x2d4
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x2d4
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x16c(r28)
branch_0x801db58c:
    lwz     r0, 0x118(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x11c(r3)
    lwz     r3, 0x118(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x118(r28)
    b       branch_0x801db9f4

branch_0x801db5ac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x5c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db610
    lwz     r0, 0x1c4(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db5f0
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x294
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x294
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x1c4(r28)
branch_0x801db5f0:
    lwz     r0, 0x170(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x174(r3)
    lwz     r3, 0x170(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x170(r28)
    b       branch_0x801db9f4

branch_0x801db610:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x68
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db674
    lwz     r0, 0x21c(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db654
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x254
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x254
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x21c(r28)
branch_0x801db654:
    lwz     r0, 0x1c8(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x1cc(r3)
    lwz     r3, 0x1c8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c8(r28)
    b       branch_0x801db9f4

branch_0x801db674:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x78
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db6d8
    lwz     r0, 0x274(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db6b8
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x214
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x214
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x274(r28)
branch_0x801db6b8:
    lwz     r0, 0x220(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x224(r3)
    lwz     r3, 0x220(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x220(r28)
    b       branch_0x801db9f4

branch_0x801db6d8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x88
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db73c
    lwz     r0, 0x2cc(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db71c
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1d4
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x1d4
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x2cc(r28)
branch_0x801db71c:
    lwz     r0, 0x278(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x27c(r3)
    lwz     r3, 0x278(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x278(r28)
    b       branch_0x801db9f4

branch_0x801db73c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x9c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db7a0
    lwz     r0, 0x324(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db780
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x194
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x194
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x324(r28)
branch_0x801db780:
    lwz     r0, 0x2d0(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x2d4(r3)
    lwz     r3, 0x2d0(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x2d0(r28)
    b       branch_0x801db9f4

branch_0x801db7a0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xa8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db804
    lwz     r0, 0x37c(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db7e4
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x154
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x154
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x37c(r28)
branch_0x801db7e4:
    lwz     r0, 0x328(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x32c(r3)
    lwz     r3, 0x328(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x328(r28)
    b       branch_0x801db9f4

branch_0x801db804:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xbc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db868
    lwz     r0, 0x3d4(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db848
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x114
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x114
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x3d4(r28)
branch_0x801db848:
    lwz     r0, 0x380(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x384(r3)
    lwz     r3, 0x380(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x380(r28)
    b       branch_0x801db9f4

branch_0x801db868:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db8cc
    lwz     r0, 0x42c(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db8ac
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0xd4
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0xd4
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x42c(r28)
branch_0x801db8ac:
    lwz     r0, 0x3d8(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x3dc(r3)
    lwz     r3, 0x3d8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x3d8(r28)
    b       branch_0x801db9f4

branch_0x801db8cc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xd8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db930
    lwz     r0, 0x484(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db910
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x94
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x94
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x484(r28)
branch_0x801db910:
    lwz     r0, 0x430(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x434(r3)
    lwz     r3, 0x430(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x430(r28)
    b       branch_0x801db9f4

branch_0x801db930:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db994
    lwz     r0, 0x4dc(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db974
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x54
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x54
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x4dc(r28)
branch_0x801db974:
    lwz     r0, 0x488(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x48c(r3)
    lwz     r3, 0x488(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x488(r28)
    b       branch_0x801db9f4

branch_0x801db994:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801db9f4
    lwz     r0, 0x534(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801db9d8
    addi    r6, r30, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x14
    addi    r5, r31, 0x20
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x14
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x534(r28)
branch_0x801db9d8:
    lwz     r0, 0x4e0(r28)
    slwi    r0, r0, 2
    add     r3, r28, r0
    stw     r29, 0x4e4(r3)
    lwz     r3, 0x4e0(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x4e0(r28)
branch_0x801db9f4:
    lwz     r0, 0x3ec(sp)
    lwz     r31, 0x3e4(sp)
    lwz     r30, 0x3e0(sp)
    mtlr    r0
    lwz     r29, 0x3dc(sp)
    lwz     r28, 0x3d8(sp)
    addi    sp, sp, 0x3e8
    blr


.globl perform__18TMapObjFlagManagerFUlPQ26JDrama9TGraphics
perform__18TMapObjFlagManagerFUlPQ26JDrama9TGraphics: # 0x801dba14
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stmw    r24, 0x98(sp)
    addi    r24, r4, 0x0
    addi    r31, r3, 0x0
    beq-    branch_0x801dbb70
    lfs     f31, -0x2570(rtoc)
    li      r26, 0x0
    lfs     f29, -0x256c(rtoc)
    li      r29, 0x0
    lfs     f30, -0x2568(rtoc)
branch_0x801dba54:
    add     r27, r31, r29
    li      r25, 0x0
    li      r30, 0x0
    b       branch_0x801dbb54

branch_0x801dba64:
    addi    r0, r30, 0x14
    lwzx    r28, r27, r0
    lfs     f0, 0x38(r28)
    addi    r3, r28, 0x8c
    lfs     f1, 0x34(r28)
    lfs     f2, 0x30(r28)
    fmuls   f0, f31, f0
    fmuls   f1, f31, f1
    lfs     f3, 0x18(r28)
    fmuls   f2, f31, f2
    fctiwz  f0, f0
    fctiwz  f4, f1
    fctiwz  f5, f2
    lfs     f2, 0x14(r28)
    stfd    f0, 0x80(sp)
    lfs     f1, 0x10(r28)
    stfd    f4, 0x88(sp)
    lwz     r6, 0x84(sp)
    stfd    f5, 0x90(sp)
    lwz     r5, 0x8c(sp)
    lwz     r4, 0x94(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x88(r28)
    lfs     f0, -0x78d8(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x88(r28)
    lfs     f0, 0x88(r28)
    fcmpo   cr0, f0, f29
    ble-    branch_0x801dbaf4
    fsubs   f0, f0, f29
    stfs    f0, 0x88(r28)
branch_0x801dbaf4:
    lfs     f0, 0x28(r28)
    fcmpo   cr0, f0, f30
    ble-    branch_0x801dbb4c
    lfs     f0, 0x2c(r28)
    fcmpo   cr0, f0, f30
    ble-    branch_0x801dbb4c
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x801dbb4c
    lwz     r3, gpMSound(r13)
    li      r4, 0x302f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801dbb4c
    addi    r4, r28, 0x10
    li      r3, 0x302f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801dbb4c:
    addi    r25, r25, 0x1
    addi    r30, r30, 0x4
branch_0x801dbb54:
    lwz     r0, 0x10(r27)
    cmpw    r25, r0
    blt+    branch_0x801dba64
    addi    r26, r26, 0x1
    cmpwi   r26, 0xf
    addi    r29, r29, 0x58
    blt+    branch_0x801dba54
branch_0x801dbb70:
    rlwinm. r0, r24, 0, 28, 28
    beq-    branch_0x801dbc04
    mr      r3, r31
    bl      initDraw__18TMapObjFlagManagerFv
    li      r25, 0x0
    li      r30, 0x0
branch_0x801dbb88:
    add     r27, r31, r30
    lwz     r0, 0x10(r27)
    cmpwi   r0, 0x0
    beq-    branch_0x801dbbf4
    lwz     r4, 0x64(r27)
    li      r29, 0x0
    addi    r3, sp, 0x2c
    stw     r29, 0x54(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r29, 0x7c(sp)
    addi    r3, sp, 0x2c
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r26, 0x0
    li      r29, 0x0
    b       branch_0x801dbbdc

branch_0x801dbbc8:
    addi    r0, r29, 0x14
    lwzx    r3, r27, r0
    bl      draw__11TMapObjFlagFv
    addi    r26, r26, 0x1
    addi    r29, r29, 0x4
branch_0x801dbbdc:
    lwz     r0, 0x10(r27)
    cmpw    r26, r0
    blt+    branch_0x801dbbc8
    addi    r3, sp, 0x2c
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
branch_0x801dbbf4:
    addi    r25, r25, 0x1
    cmpwi   r25, 0xf
    addi    r30, r30, 0x58
    blt+    branch_0x801dbb88
branch_0x801dbc04:
    lmw     r24, 0x98(sp)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lfd     f29, 0xb8(sp)
    addi    sp, sp, 0xd0
    blr


.globl initDraw__18TMapObjFlagManagerFv
initDraw__18TMapObjFlagManagerFv: # 0x801dbc24
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x9
    li      r5, 0x1
    stwu    sp, -0x18(sp)
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x2588(rtoc)
    addi    r4, sp, 0x14
    li      r3, 0x4
    stw     r0, 0x10(sp)
    lwz     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetZCompLoc
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__11TMapObjFlagFPCc
__ct__11TMapObjFlagFPCc: # 0x801dbdec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    lwz     r31, 0x8(sp)
    addi    r3, r3, 0x1f84
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    lfs     f0, -0x2564(rtoc)
    stfs    f0, 0x68(r31)
    stfs    f0, 0x6c(r31)
    stw     r0, 0x70(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    lfs     f0, -0x2560(rtoc)
    stfs    f0, 0x7c(r31)
    lfs     f0, -0x255c(rtoc)
    stfs    f0, 0x80(r31)
    lfs     f0, -0x2558(rtoc)
    stfs    f0, 0x84(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2548(rtoc)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x2554(rtoc)
    mr      r3, r31
    stw     r0, 0x38(sp)
    lfs     f0, -0x256c(rtoc)
    li      r0, 0x1
    lfd     f2, 0x38(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x88(r31)
    stw     r0, 0xbc(r31)
    lfs     f0, -0x2564(rtoc)
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0x90(r31)
    stfs    f0, 0xac(r31)
    stfs    f0, 0x9c(r31)
    lfs     f0, -0x2550(rtoc)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xa0(r31)
    stfs    f0, 0x8c(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl load__11TMapObjFlagFR20JSUMemoryInputStream
load__11TMapObjFlagFR20JSUMemoryInputStream: # 0x801dbee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x40
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, r30, 0x0
    addi    r4, sp, 0x10
    bl      init__11TMapObjFlagFPCc
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl init__11TMapObjFlagFPCc
init__11TMapObjFlagFPCc: # 0x801dbf34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stmw    r25, 0x54(sp)
    mr      r28, r3
    mr      r29, r4
    lfs     f2, -0x2540(rtoc)
    lfs     f0, 0x2c(r3)
    fmuls   f0, f2, f0
    stfs    f0, 0x68(r3)
    lfs     f0, 0x28(r3)
    fmuls   f0, f2, f0
    stfs    f0, 0x6c(r3)
    lfs     f1, 0x7c(r3)
    lfs     f0, 0x2c(r3)
    fdivs   f0, f1, f0
    stfs    f0, 0x7c(r3)
    lfs     f1, 0x80(r3)
    lfs     f0, 0x28(r3)
    fdivs   f0, f1, f0
    stfs    f0, 0x80(r3)
    lfs     f1, 0x84(r3)
    lfs     f0, 0x2c(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x84(r3)
    lfs     f1, 0x68(r3)
    lfs     f0, -0x253c(rtoc)
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x70(r3)
    lfs     f0, 0x6c(r3)
    fdivs   f0, f0, f2
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x74(r3)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x2
    bge-    branch_0x801dbff0
    li      r0, 0x3
    stw     r0, 0x70(r28)
branch_0x801dbff0:
    lwz     r0, 0x74(r28)
    cmpwi   r0, 0x2
    bge-    branch_0x801dc004
    li      r0, 0x3
    stw     r0, 0x74(r28)
branch_0x801dc004:
    lfs     f0, 0x38(r28)
    addi    r3, r28, 0x8c
    lfs     f2, -0x2570(rtoc)
    lfs     f1, 0x34(r28)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r28)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r28)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r28)
    fctiwz  f5, f2
    lfs     f2, 0x14(r28)
    fctiwz  f0, f0
    stfd    f4, 0x48(sp)
    stfd    f5, 0x40(sp)
    lwz     r5, 0x4c(sp)
    stfd    f0, 0x38(sp)
    lwz     r4, 0x44(sp)
    lwz     r6, 0x3c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x70(r28)
    lis     r31, 0x4330
    lwz     r0, 0x74(r28)
    xoris   r4, r3, 0x8000
    lwz     r3, -0x5f2c(r13)
    xoris   r0, r0, 0x8000
    stw     r4, 0x34(sp)
    lwz     r12, 0x0(r3)
    stw     r0, 0x2c(sp)
    lwz     r12, 0x28(r12)
    stw     r31, 0x30(sp)
    lfd     f3, -0x2548(rtoc)
    mtlr    r12
    stw     r31, 0x28(sp)
    lfd     f1, 0x30(sp)
    lfd     f0, 0x28(sp)
    fsubs   f2, f1, f3
    lfs     f4, 0x68(r28)
    fsubs   f0, f0, f3
    lfs     f1, 0x6c(r28)
    fdivs   f29, f4, f2
    fdivs   f28, f1, f0
    blrl
    lwz     r0, 0x74(r28)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x78(r28)
    lis     r3, 0x8002
    addi    r26, r3, 0x10dc
    lfs     f30, -0x2564(rtoc)
    li      r30, 0x0
    lfd     f31, -0x2548(rtoc)
    li      r27, 0x0
    b       branch_0x801dc17c

branch_0x801dc0e0:
    lwz     r25, 0x70(r28)
    mulli   r3, r25, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r26, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    xoris   r0, r30, 0x8000
    lwz     r5, 0x78(r28)
    stw     r0, 0x2c(sp)
    li      r6, 0x0
    li      r4, 0x0
    stw     r31, 0x28(sp)
    lfd     f0, 0x28(sp)
    stwx    r3, r5, r27
    fsubs   f0, f0, f31
    fmuls   f1, f0, f28
    b       branch_0x801dc168

branch_0x801dc130:
    xoris   r0, r6, 0x8000
    lwz     r3, 0x78(r28)
    stw     r0, 0x2c(sp)
    addi    r6, r6, 0x1
    lwzx    r0, r27, r3
    stw     r31, 0x28(sp)
    add     r3, r0, r4
    lfd     f0, 0x28(sp)
    addi    r4, r4, 0xc
    stfs    f30, 0x0(r3)
    fsubs   f0, f0, f31
    stfs    f1, 0x4(r3)
    fmuls   f0, f0, f29
    stfs    f0, 0x8(r3)
branch_0x801dc168:
    lwz     r0, 0x70(r28)
    cmpw    r6, r0
    blt+    branch_0x801dc130
    addi    r30, r30, 0x1
    addi    r27, r27, 0x4
branch_0x801dc17c:
    lwz     r0, 0x74(r28)
    cmpw    r30, r0
    blt+    branch_0x801dc0e0
    lbz     r0, -0x6278(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc1a4
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, -0x627c(r13)
    stb     r0, -0x6278(r13)
branch_0x801dc1a4:
    lwz     r3, -0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6280(r13)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      registerObj__18TMapObjFlagManagerFP11TMapObjFlagPCc
    lfs     f1, -0x2564(rtoc)
    lis     r4, 0x4000
    addi    r3, r28, 0x0
    fmr     f2, f1
    addi    r4, r4, 0xd
    fmr     f3, f1
    li      r5, 0x1
    fmr     f4, f1
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lmw     r25, 0x54(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    addi    sp, sp, 0x90
    blr


.globl updateVertex__11TMapObjFlagFv
updateVertex__11TMapObjFlagFv: # 0x801dc214
    stwu    sp, -0x38(sp)
    li      r10, 0x0
    lis     r8, 0x4330
    lfs     f4, -0x256c(rtoc)
    lfs     f3, -0x2534(rtoc)
    lfs     f5, -0x2538(rtoc)
    lfd     f8, -0x2548(rtoc)
    lwz     r7, -0x5ea8(r13)
    lfs     f1, -0x2570(rtoc)
    lwz     r6, -0x5eac(r13)
    b       branch_0x801dc338

branch_0x801dc240:
    xoris   r0, r10, 0x8000
    lfs     f0, 0x80(r3)
    stw     r0, 0x34(sp)
    slwi    r9, r10, 2
    li      r11, 0x0
    stw     r8, 0x30(sp)
    lfd     f2, 0x30(sp)
    fsubs   f2, f2, f8
    fmuls   f9, f2, f0
    b       branch_0x801dc324

branch_0x801dc268:
    xoris   r0, r11, 0x8000
    lfs     f0, 0x7c(r3)
    xoris   r4, r4, 0x8000
    stw     r0, 0x34(sp)
    neg     r0, r11
    lfs     f6, 0x88(r3)
    stw     r4, 0x2c(sp)
    xoris   r0, r0, 0x8000
    stw     r8, 0x30(sp)
    stw     r8, 0x28(sp)
    lfd     f7, 0x30(sp)
    lfd     f2, 0x28(sp)
    fsubs   f7, f7, f8
    stw     r0, 0x24(sp)
    fsubs   f2, f2, f8
    stw     r8, 0x20(sp)
    fdivs   f7, f7, f2
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f8
    fmadds  f0, f2, f0, f9
    fadds   f0, f6, f0
    b       branch_0x801dc2c4

branch_0x801dc2c0:
    fsubs   f0, f0, f4
branch_0x801dc2c4:
    fcmpo   cr0, f0, f5
    cror    2, 1, 2
    beq+    branch_0x801dc2c0
    b       branch_0x801dc2d8

branch_0x801dc2d4:
    fadds   f0, f0, f4
branch_0x801dc2d8:
    fcmpo   cr0, f0, f3
    blt+    branch_0x801dc2d4
    fmuls   f0, f1, f0
    lfs     f2, 0x84(r3)
    lwz     r4, 0x78(r3)
    mulli   r0, r11, 0xc
    fmuls   f2, f2, f7
    fctiwz  f0, f0
    lwzx    r4, r9, r4
    stfd    f0, 0x20(sp)
    lwz     r5, 0x24(sp)
    clrlwi  r5, r5, 16
    sraw    r5, r5, r6
    slwi    r5, r5, 2
    lfsx    f0, r7, r5
    fmuls   f0, f2, f0
    stfsx   f0, r4, r0
    lwz     r0, 0xbc(r3)
    add     r11, r11, r0
branch_0x801dc324:
    lwz     r4, 0x70(r3)
    cmpw    r11, r4
    blt+    branch_0x801dc268
    lwz     r0, 0xbc(r3)
    add     r10, r10, r0
branch_0x801dc338:
    lwz     r0, 0x74(r3)
    cmpw    r10, r0
    blt+    branch_0x801dc240
    addi    sp, sp, 0x38
    blr


.globl draw__11TMapObjFlagFv
draw__11TMapObjFlagFv: # 0x801dc34c
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x45dc
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stfd    f30, 0xf8(sp)
    stfd    f29, 0xf0(sp)
    stfd    f28, 0xe8(sp)
    stfd    f27, 0xe0(sp)
    stfd    f26, 0xd8(sp)
    stfd    f25, 0xd0(sp)
    stmw    r27, 0xbc(sp)
    addi    r28, sp, 0x74
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    addi    r3, r28, 0x0
    addi    r5, r28, 0x0
    addi    r4, r27, 0x8c
    bl      PSMTXConcat
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r4, 0xbc(r27)
    lis     r30, 0x4330
    lwz     r6, 0x70(r27)
    li      r28, 0x0
    slwi    r0, r4, 1
    subf    r0, r0, r6
    lwz     r3, 0x74(r27)
    divw    r5, r0, r4
    lfd     f31, -0x2548(rtoc)
    lfs     f30, -0x2550(rtoc)
    lfs     f25, -0x2564(rtoc)
    subi    r0, r3, 0x1
    subi    r4, r6, 0x1
    xoris   r3, r4, 0x8000
    stw     r3, 0xb4(sp)
    xoris   r0, r0, 0x8000
    addi    r3, r5, 0x2
    stw     r0, 0xac(sp)
    clrlslwi  r29, r3, 17, 1
    lis     r31, 0xcc01
    stw     r30, 0xb0(sp)
    stw     r30, 0xa8(sp)
    lfd     f1, 0xb0(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f1, f1, f31
    fsubs   f0, f0, f31
    fdivs   f28, f30, f1
    fdivs   f27, f30, f0
    b       branch_0x801dc5c0

branch_0x801dc420:
    subi    r4, r3, 0x1
    addi    r0, r28, 0x1
    subf    r3, r28, r4
    subf    r0, r0, r4
    xoris   r3, r3, 0x8000
    xoris   r0, r0, 0x8000
    stw     r3, 0xac(sp)
    mr      r5, r29
    stw     r0, 0xb4(sp)
    li      r3, 0x98
    li      r4, 0x0
    stw     r30, 0xa8(sp)
    stw     r30, 0xb0(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f31
    fsubs   f0, f0, f31
    fmuls   f26, f27, f1
    fmuls   f29, f27, f0
    bl      GXBegin
    lwz     r3, 0x78(r27)
    slwi    r5, r28, 2
    addi    r0, r5, 0x4
    lwzx    r4, r3, r5
    li      r7, 0x1
    lfs     f2, 0x8(r4)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x0(r4)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    lwzx    r3, r3, r0
    lfs     f2, 0x8(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    b       branch_0x801dc548

branch_0x801dc4cc:
    lwz     r3, 0x78(r27)
    xoris   r0, r7, 0x8000
    stw     r0, 0xac(sp)
    mulli   r6, r7, 0xc
    lwzx    r0, r5, r3
    stw     r30, 0xa8(sp)
    add     r4, r0, r6
    lfd     f0, 0xa8(sp)
    addi    r0, r3, 0x4
    lfs     f3, 0x8(r4)
    fsubs   f0, f0, f31
    lfs     f2, 0x4(r4)
    lfs     f1, 0x0(r4)
    stfs    f1, -0x8000(r31)
    fmuls   f4, f28, f0
    stfs    f2, -0x8000(r31)
    stfs    f3, -0x8000(r31)
    stfs    f4, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    lwzx    r0, r5, r0
    add     r3, r0, r6
    lfs     f2, 0x8(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f4, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    lwz     r0, 0xbc(r27)
    add     r7, r7, r0
branch_0x801dc548:
    lwz     r4, 0xbc(r27)
    lwz     r3, 0x70(r27)
    subf    r0, r4, r3
    cmpw    r7, r0
    blt+    branch_0x801dc4cc
    subi    r0, r3, 0x1
    lwz     r3, 0x78(r27)
    mulli   r7, r0, 0xc
    lwzx    r0, r3, r5
    add     r6, r0, r7
    lfs     f2, 0x8(r6)
    addi    r0, r5, 0x4
    lfs     f1, 0x4(r6)
    add     r28, r28, r4
    lfs     f0, 0x0(r6)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    lwzx    r0, r3, r0
    add     r3, r0, r7
    lfs     f2, 0x8(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
branch_0x801dc5c0:
    lwz     r0, 0xbc(r27)
    lwz     r3, 0x74(r27)
    subf    r0, r0, r3
    cmpw    r28, r0
    blt+    branch_0x801dc420
    lmw     r27, 0xbc(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    lfd     f28, 0xe8(sp)
    lfd     f27, 0xe0(sp)
    lfd     f26, 0xd8(sp)
    lfd     f25, 0xd0(sp)
    addi    sp, sp, 0x108
    blr


.globl __dt__11TMapObjFlagFv
__dt__11TMapObjFlagFv: # 0x801dc604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dc66c
    lis     r3, 0x803d
    addi    r3, r3, 0x1f84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dc65c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801dc65c:
    extsh.  r0, r31
    ble-    branch_0x801dc66c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dc66c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjFlag_cpp
__sinit_MapObjFlag_cpp: # 0x801dc688
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x63e8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc6d0
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801dc6d0:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc700
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801dc700:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc730
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801dc730:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc760
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801dc760:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc790
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801dc790:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc7c0
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801dc7c0:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc7f0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801dc7f0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc820
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801dc820:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc850
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801dc850:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc880
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801dc880:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc8b0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801dc8b0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc8e0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801dc8e0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc910
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801dc910:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc940
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801dc940:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801dc970
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801dc970:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TMapObjFlagFv
_32___dt__11TMapObjFlagFv: # 0x801dc984
    subi    r3, r3, 0x20
    b       __dt__11TMapObjFlagFv

