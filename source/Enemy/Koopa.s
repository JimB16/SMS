
.globl __dt__13TKoopaManagerFv
__dt__13TKoopaManagerFv: # 0x80122018
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80122060
    lis     r3, 0x803c
    subi    r0, r3, 0x2264
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80122060
    mr      r3, r30
    bl      __dl__FPv
branch_0x80122060:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__13TKoopaManagerFv
loadAfter__13TKoopaManagerFv: # 0x8012207c
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x5798
    stw     r30, 0x10(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1c0
    lbz     r0, 0x1c0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801220cc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2f0
    li      r5, 0x1c0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801220cc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1c1
    lbz     r0, 0x1c1(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801220fc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x314
    li      r5, 0x1c1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801220fc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1c2
    lbz     r0, 0x1c2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8012212c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x338
    li      r5, 0x1c2
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8012212c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1c3
    lbz     r0, 0x1c3(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8012215c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x35c
    li      r5, 0x1c3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8012215c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xf5
    lbz     r0, 0xf5(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8012218c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x380
    li      r5, 0xf5
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8012218c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1f3
    lbz     r0, 0x1f3(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801221bc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x3a4
    li      r5, 0x1f3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801221bc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__13TKoopaManagerFR20JSUMemoryInputStream
load__13TKoopaManagerFR20JSUMemoryInputStream: # 0x801221d4
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r27, r3, 0x0
    addi    r30, r5, 0x5798
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x328
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801227b8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x3c8
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x3dc
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x3dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0xa8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x51a8(rtoc)
    addi    r3, r30, 0x3e8
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x3e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x3f4
    lfs     f0, -0x51a4(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x3f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x400
    lfs     f0, -0x51a0(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x400
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x40c
    lfs     f0, -0x519c(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x40c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x41c
    lfs     f0, -0x5198(rtoc)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x41c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x42c
    lfs     f0, -0x519c(rtoc)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x42c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x438
    lfs     f0, -0x5194(rtoc)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x438
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x444
    lfs     f0, -0x5190(rtoc)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x450
    lfs     f0, -0x518c(rtoc)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x450
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x460
    lfs     f0, -0x5188(rtoc)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x460
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x46c
    lfs     f0, -0x5194(rtoc)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x46c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x480
    lfs     f0, -0x5184(rtoc)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x480
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x490
    lfs     f0, -0x5180(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x490
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x49c
    lfs     f0, -0x5194(rtoc)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x49c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x4ac
    lfs     f0, -0x5194(rtoc)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x4ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x4b8
    lfs     f0, -0x5194(rtoc)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x4b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x4c8
    lfs     f0, -0x517c(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x4c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x4d4
    lfs     f0, -0x5178(rtoc)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x4d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r24, r3, 0x42ac
    stw     r24, 0x210(r31)
    li      r25, 0x1f4
    lis     r3, 0x803b
    stw     r25, 0x220(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x4e0
    stw     r26, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x4e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x224(r31)
    li      r0, 0x19
    addi    r3, r30, 0x4f4
    stw     r0, 0x234(r31)
    stw     r26, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x4f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x238(r31)
    addi    r3, r30, 0x508
    stw     r25, 0x248(r31)
    stw     r26, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x508
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x514
    lfs     f0, -0x5174(rtoc)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x514
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x520
    lfs     f0, -0x519c(rtoc)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x520
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x52c
    lfs     f0, -0x5170(rtoc)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x52c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x53c
    lfs     f0, -0x5194(rtoc)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x53c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x54c
    lfs     f0, -0x5178(rtoc)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x54c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    addi    r3, r30, 0x55c
    lfs     f0, -0x516c(rtoc)
    stfs    f0, 0x2c0(r31)
    stw     r28, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x55c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x570
    lfs     f0, -0x5168(rtoc)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x570
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0x57c
    lfs     f0, -0x5164(rtoc)
    stfs    f0, 0x2e8(r31)
    stw     r28, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0x57c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec(r31)
    addi    r3, r30, 0x588
    lfs     f0, -0x5194(rtoc)
    stfs    f0, 0x2fc(r31)
    stw     r28, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0x588
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x300(r31)
    addi    r3, r30, 0x59c
    lfs     f0, -0x5160(rtoc)
    stfs    f0, 0x310(r31)
    stw     r28, 0x300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x314
    addi    r6, r30, 0x59c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x314(r31)
    mr      r3, r31
    lfs     f0, -0x515c(rtoc)
    stfs    f0, 0x324(r31)
    stw     r28, 0x314(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x801227b8:
    stw     r31, 0x38(r27)
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl createModelData__13TKoopaManagerFv
createModelData__13TKoopaManagerFv: # 0x801227d0
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x5a70
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__13TKoopaManagerFv
createEnemyInstance__13TKoopaManagerFv: # 0x80122804
    li      r3, 0x0
    blr


.globl __ct__13TKoopaManagerFPCc
__ct__13TKoopaManagerFPCc: # 0x8012280c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x2264
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__6TKoopaFv
calcRootMatrix__6TKoopaFv: # 0x80122848
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stfd    f27, 0x118(sp)
    stfd    f26, 0x110(sp)
    stfd    f25, 0x108(sp)
    stfd    f24, 0x100(sp)
    stfd    f23, 0xf8(sp)
    stfd    f22, 0xf0(sp)
    stfd    f21, 0xe8(sp)
    stfd    f20, 0xe0(sp)
    stfd    f19, 0xd8(sp)
    stfd    f18, 0xd0(sp)
    stfd    f17, 0xc8(sp)
    stfd    f16, 0xc0(sp)
    stfd    f15, 0xb8(sp)
    stw     r31, 0xb4(sp)
    addi    r31, r4, 0x5d48
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r5, -0x5db8(r13)
    lwz     r30, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    lfs     f1, -0x514c(rtoc)
    lfs     f31, 0x4(r3)
    addi    r3, sp, 0x68
    lfs     f0, -0x5140(rtoc)
    fmr     f3, f1
    lfs     f30, 0x14(r31)
    lfs     f29, 0x24(r31)
    fmuls   f31, f31, f0
    fmuls   f30, f30, f0
    fmuls   f29, f29, f0
    lfs     f2, 0x34(r29)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, -0x514c(rtoc)
    addi    r3, sp, 0x68
    stfs    f0, 0x74(sp)
    stfs    f0, 0x84(sp)
    stfs    f0, 0x94(sp)
    lfs     f3, 0x24(r31)
    lfs     f11, 0x78(sp)
    lfs     f21, 0x7c(sp)
    lfs     f7, 0x84(sp)
    fmuls   f2, f3, f11
    lfs     f12, 0x4(r31)
    fmuls   f0, f3, f21
    lfs     f8, 0x80(sp)
    lfs     f22, 0x14(r31)
    lfs     f1, 0x20(r31)
    fmuls   f4, f3, f7
    lfs     f19, 0x74(sp)
    fmuls   f23, f3, f8
    lfs     f27, 0x68(sp)
    fmadds  f15, f1, f19, f4
    fmuls   f17, f12, f21
    lfs     f13, 0x6c(sp)
    fmadds  f3, f1, f27, f2
    lfs     f25, 0x0(r31)
    fmadds  f2, f1, f13, f0
    lfs     f9, 0x70(sp)
    fmuls   f16, f12, f11
    fmuls   f20, f22, f11
    lfs     f6, 0x28(r31)
    lfs     f26, 0x88(sp)
    fmuls   f5, f12, f7
    fmuls   f0, f22, f7
    lfs     f28, 0x8c(sp)
    fmuls   f18, f12, f8
    fmuls   f21, f22, f21
    fmuls   f22, f22, f8
    lfs     f10, 0x10(r31)
    fmadds  f1, f1, f9, f23
    lfs     f11, 0x90(sp)
    fmadds  f23, f10, f19, f0
    lfs     f7, 0x94(sp)
    fmadds  f19, f25, f19, f5
    lfs     f24, 0x8(r31)
    fmadds  f17, f25, f13, f17
    fmadds  f16, f25, f27, f16
    lfs     f4, 0x2c(r31)
    fmadds  f0, f6, f7, f15
    lfs     f12, 0x18(r31)
    fmadds  f25, f25, f9, f18
    fmadds  f3, f6, f26, f3
    lfs     f8, 0x1c(r31)
    lfs     f5, 0xc(r31)
    fmadds  f2, f6, f28, f2
    fmadds  f1, f6, f11, f1
    stfs    f3, 0x8(sp)
    fmadds  f13, f10, f13, f21
    fmadds  f18, f10, f27, f20
    stfs    f2, 0xc(sp)
    fmadds  f10, f10, f9, f22
    fmadds  f9, f12, f7, f23
    fmadds  f19, f24, f7, f19
    fadds   f0, f4, f0
    stfs    f1, 0x10(sp)
    fmadds  f1, f24, f26, f16
    fadds   f4, f5, f19
    fmadds  f2, f24, f28, f17
    fmadds  f3, f24, f11, f25
    stfs    f0, 0x14(sp)
    fmadds  f5, f12, f26, f18
    fmadds  f6, f12, f28, f13
    fmadds  f7, f12, f11, f10
    fadds   f8, f8, f9
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lfs     f1, 0x94(sp)
    mr      r3, r29
    lfs     f2, 0x84(sp)
    addi    r31, sp, 0x68
    lfs     f0, 0x74(sp)
    stfs    f0, 0x10(r29)
    stfs    f2, 0x14(r29)
    stfs    f1, 0x18(r29)
    lfs     f0, 0x10(r29)
    fadds   f0, f0, f31
    stfs    f0, 0x10(r29)
    lfs     f0, 0x14(r29)
    fadds   f0, f0, f30
    stfs    f0, 0x14(r29)
    lfs     f0, 0x18(r29)
    fadds   f0, f0, f29
    stfs    f0, 0x18(r29)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x74(sp)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x84(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x94(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f0, -0x5178(rtoc)
    mr      r3, r29
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x60(sp)
    stfs    f0, 0x64(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x5c(sp)
    lwz     r0, 0x60(sp)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x64(sp)
    stw     r0, 0x1c(r3)
    lfs     f0, -0x5178(rtoc)
    stfs    f0, 0x24(r29)
    stfs    f0, 0x28(r29)
    stfs    f0, 0x2c(r29)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    lfd     f27, 0x118(sp)
    lfd     f26, 0x110(sp)
    lfd     f25, 0x108(sp)
    lfd     f24, 0x100(sp)
    lfd     f23, 0xf8(sp)
    lfd     f22, 0xf0(sp)
    lfd     f21, 0xe8(sp)
    lfd     f20, 0xe0(sp)
    lfd     f19, 0xd8(sp)
    lfd     f18, 0xd0(sp)
    lfd     f17, 0xc8(sp)
    lfd     f16, 0xc0(sp)
    lfd     f15, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0x140
    mtlr    r0
    blr


.globl receiveMessage__6TKoopaFP9THitActorUl
receiveMessage__6TKoopaFP9THitActorUl: # 0x80122b54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      receiveMessage__11TSpineEnemyFP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__6TKoopaFUlPQ26JDrama9TGraphics
perform__6TKoopaFUlPQ26JDrama9TGraphics: # 0x80122b74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f0(sp)
    stfd    f31, 0x1e8(sp)
    stmw    r26, 0x1d0(sp)
    clrlwi. r28, r4, 31
    addi    r30, r4, 0x0
    addi    r31, r3, 0x0
    addi    r26, r5, 0x0
    beq-    branch_0x80122bbc
    mr      r3, r31
    bl      getNeckFocus__6TKoopaCFv
    stfs    f1, 0x1b8(r31)
    lwz     r3, 0x19c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80122bbc
    subi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
branch_0x80122bbc:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r26, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    li      r27, 0x0
    li      r29, 0x0
branch_0x80122bd4:
    addi    r0, r29, 0x164
    lwzx    r3, r31, r0
    addi    r4, r30, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
    cmpwi   r27, 0xa
    addi    r29, r29, 0x4
    blt+    branch_0x80122bd4
    lwz     r3, 0x194(r31)
    addi    r4, r30, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x18c(r31)
    addi    r4, r30, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x190(r31)
    addi    r4, r30, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x198(r31)
    addi    r4, r30, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmplwi  r28, 0x0
    beq-    branch_0x80122d8c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lbz     r0, -0x65b8(r13)
    lfs     f31, 0x10(r3)
    extsb.  r0, r0
    bne-    branch_0x80122cd8
    subi    r3, r13, 0x65b4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r4, 0x8012
    stw     r0, -0x65b4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3468
    addi    r4, r4, 0x3038
    subi    r3, r13, 0x65b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x80122cd8:
    lwz     r3, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x65b4
    lwz     r3, 0x14(r3)
    addi    r5, r4, 0x0
    cmplw   r3, r0
    bne-    branch_0x80122d10
    lwz     r3, 0x70(r31)
    lwz     r3, 0x38(r3)
    lfs     f0, 0x194(r3)
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x80122d10
    li      r5, 0x1
branch_0x80122d10:
    clrlwi. r0, r5, 24
    beq-    branch_0x80122d34
    lwz     r3, 0x70(r31)
    lwz     r3, 0x38(r3)
    lfs     f0, 0x1a8(r3)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80122d34
    li      r4, 0x1
branch_0x80122d34:
    clrlwi. r0, r4, 24
    beq-    branch_0x80122d84
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8038
    addi    r29, r3, 0x5d48
    lwz     r28, 0x4(r4)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x0
    mtlr    r12
    blrl
    lwz     r4, 0x70(r31)
    lfs     f1, 0x34(r31)
    lwz     r4, 0x38(r4)
    lfs     f2, 0x16c(r4)
    bl      tumble__8TBathtubFff
branch_0x80122d84:
    mr      r3, r31
    bl      setUpHitActors__6TKoopaFv
branch_0x80122d8c:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80123004
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x4
    bne-    branch_0x80122db0
    li      r0, 0x1
    b       branch_0x80122df0

branch_0x80122db0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x5
    bne-    branch_0x80122dec
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x513c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80122dec
    li      r0, 0x1
    b       branch_0x80122df0

branch_0x80122dec:
    li      r0, 0x0
branch_0x80122df0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80122e50
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x6
    bne-    branch_0x80122e44
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5138(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x80122e44
    lfs     f0, -0x5134(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80122e44
    li      r0, 0x1
    b       branch_0x80122e48

branch_0x80122e44:
    li      r0, 0x0
branch_0x80122e48:
    clrlwi. r0, r0, 24
    beq-    branch_0x80123004
branch_0x80122e50:
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x70(r31)
    mr      r7, r31
    li      r4, 0x1f3
    lwz     r3, 0x38(r3)
    li      r6, 0x3
    lfs     f0, 0x20c(r3)
    stfs    f0, 0x1b8(sp)
    stfs    f0, 0x1bc(sp)
    stfs    f0, 0x1c0(sp)
    lwz     r3, 0x74(r31)
    lwz     r0, 0x1a0(r31)
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80122ed4
    lfs     f0, 0x1b8(sp)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x1bc(sp)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x1c0(sp)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x1b8(sp)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x1bc(sp)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x1c0(sp)
    stfs    f0, 0x17c(r3)
branch_0x80122ed4:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1a0(r31)
    li      r4, 0x1c3
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r29, r3
    beq-    branch_0x80122f20
    addi    r3, r29, 0x154
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
    addi    r3, r29, 0x174
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
branch_0x80122f20:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1a0(r31)
    li      r4, 0x1c2
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r29, r3
    beq-    branch_0x80122f6c
    addi    r3, r29, 0x154
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
    addi    r3, r29, 0x174
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
branch_0x80122f6c:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1a0(r31)
    li      r4, 0x1c1
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r29, r3
    beq-    branch_0x80122fb8
    addi    r3, r29, 0x154
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
    addi    r3, r29, 0x174
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
branch_0x80122fb8:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lwz     r0, 0x1a0(r31)
    li      r4, 0x1c0
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r29, r3
    beq-    branch_0x80123004
    addi    r3, r29, 0x154
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
    addi    r3, r29, 0x174
    addi    r4, sp, 0x1b8
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
branch_0x80123004:
    lmw     r26, 0x1d0(sp)
    lwz     r0, 0x1f4(sp)
    lfd     f31, 0x1e8(sp)
    addi    sp, sp, 0x1f0
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c
set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__8012301c: # 0x8012301c
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    blr


.globl __dt__17TNerveKoopaTumbleFv
__dt__17TNerveKoopaTumbleFv: # 0x80123038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012308c
    lis     r3, 0x803c
    subi    r0, r3, 0x1cd4
    stw     r0, 0x0(r31)
    beq-    branch_0x8012307c
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    stw     r0, 0x0(r31)
    beq-    branch_0x8012307c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8012307c:
    extsh.  r0, r4
    ble-    branch_0x8012308c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012308c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15TNerveKoopaTurnFv
__dt__15TNerveKoopaTurnFv: # 0x801230a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801230e8
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    stw     r0, 0x0(r31)
    beq-    branch_0x801230d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801230d8:
    extsh.  r0, r4
    ble-    branch_0x801230e8
    mr      r3, r31
    bl      __dl__FPv
branch_0x801230e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__6TKoopaFv
reset__6TKoopaFv: # 0x80123100
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    bl      reset__11TSpineEnemyFv
    lwz     r5, 0x70(r30)
    li      r4, 0xc
    lwz     r3, 0x74(r30)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x1bc(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8012317c
    lwz     r3, 0x74(r30)
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80123170
    li      r4, 0x0
    b       branch_0x80123174

branch_0x80123170:
    lwz     r4, 0x30(r3)
branch_0x80123174:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8012317c:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x8012319c
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
branch_0x8012319c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    li      r0, 0x258
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    stw     r0, 0x19c(r30)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl getBasNameTable__6TKoopaCFv
getBasNameTable__6TKoopaCFv: # 0x801231e4
    lis     r3, 0x803c
    subi    r3, r3, 0x22a0
    blr


.globl init__6TKoopaFP12TLiveManager
init__6TKoopaFP12TLiveManager: # 0x801231f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stw     r31, 0x14c(sp)
    mr      r31, r3
    stw     r30, 0x148(sp)
    stw     r29, 0x144(sp)
    stw     r28, 0x140(sp)
    lfs     f0, -0x5198(rtoc)
    stfs    f0, 0xbc(r3)
    lfs     f0, -0x512c(rtoc)
    stfs    f0, 0xc0(r31)
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
    lbz     r0, -0x65b0(r13)
    extsb.  r0, r0
    bne-    branch_0x8012328c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ac(r13)
    subi    r0, r3, 0x1d04
    lis     r4, 0x8012
    stw     r0, -0x65ac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3474
    addi    r4, r4, 0x362c
    subi    r3, r13, 0x65ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b0(r13)
branch_0x8012328c:
    lwz     r3, 0x8c(r31)
    li      r30, 0x0
    subi    r0, r13, 0x65ac
    stw     r30, 0x8(r3)
    li      r4, 0xc
    stw     r30, 0x20(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r30, 0x1c(r3)
    lwz     r3, 0x74(r31)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x801232fc
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x801232ec
    b       branch_0x801232f0

branch_0x801232ec:
    lwz     r30, 0x30(r3)
branch_0x801232f0:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      setAnmSound__10TLiveActorFPCc
branch_0x801232fc:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x8012331c
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
branch_0x8012331c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r30, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x5194(rtoc)
    li      r4, 0x6
    lfs     f0, -0x5130(rtoc)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
    lwz     r3, 0x74(r31)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80123394
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80123388
    li      r4, 0x0
    b       branch_0x8012338c

branch_0x80123388:
    lwz     r4, 0x18(r3)
branch_0x8012338c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80123394:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x801233b4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x801233b4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r30, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x5194(rtoc)
    lfs     f0, -0x5130(rtoc)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801233f4
    li      r4, 0x10
    bl      initSimpleMotionBlend__12MActorAnmBckFi
branch_0x801233f4:
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8038
    addi    r30, r3, 0x5d48
    lwz     r28, -0x60b4(r13)
    lwz     r29, 0x4(r4)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0xf8(sp)
    stfs    f2, 0xfc(sp)
    stfs    f1, 0x100(sp)
    lfs     f1, 0x20(r3)
    lfs     f2, 0x10(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x110(sp)
    stfs    f2, 0x114(sp)
    stfs    f1, 0x118(sp)
    lfs     f1, 0x28(r3)
    lfs     f2, 0x18(r3)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x11c(sp)
    stfs    f2, 0x120(sp)
    stfs    f1, 0x124(sp)
    lfs     f1, 0x0(r28)
    lfs     f0, 0xf8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x104(sp)
    lfs     f1, 0x4(r28)
    lfs     f0, 0xfc(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x8(r28)
    lfs     f0, 0x100(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f1, 0x120(sp)
    lfs     f4, 0x108(sp)
    lfs     f0, 0x114(sp)
    fmuls   f2, f1, f4
    lfs     f3, 0x11c(sp)
    fmuls   f0, f0, f4
    lfs     f5, 0x104(sp)
    lfs     f1, 0x110(sp)
    fmadds  f3, f3, f5, f2
    lfs     f4, 0x124(sp)
    fmadds  f0, f1, f5, f0
    lfs     f6, 0x10c(sp)
    lfs     f2, 0x118(sp)
    fmadds  f1, f4, f6, f3
    fmadds  f2, f2, f6, f0
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5148(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5158(rtoc)
    stw     r0, 0x13c(sp)
    lis     r0, 0x4330
    addi    r3, r31, 0x0
    stw     r0, 0x138(sp)
    lfd     f1, 0x138(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x150(r31)
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    li      r5, 0x0
    lwz     r3, 0xb0(r3)
    lhz     r4, 0x8(r3)
    addi    r28, r3, 0x0
    cmplwi  r4, 0x0
    ble-    branch_0x80123598
    cmplwi  r4, 0x8
    subi    r0, r4, 0x8
    ble-    branch_0x8012358c
    clrlwi  r0, r0, 16
    b       branch_0x80123578

branch_0x80123574:
    addi    r5, r5, 0x8
branch_0x80123578:
    clrlwi  r3, r5, 16
    cmplw   r3, r0
    blt+    branch_0x80123574
    b       branch_0x8012358c

branch_0x80123588:
    addi    r5, r5, 0x1
branch_0x8012358c:
    clrlwi  r0, r5, 16
    cmplw   r0, r4
    blt+    branch_0x80123588
branch_0x80123598:
    addi    r3, r28, 0x0
    subi    r4, rtoc, 0x5128
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1a8(r31)
    addi    r3, r28, 0x0
    subi    r4, rtoc, 0x5124
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1a0(r31)
    addi    r3, r28, 0x0
    subi    r4, rtoc, 0x511c
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x1a4(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x4(r3)
    lis     r3, 0x8012
    lwz     r0, 0x1a0(r31)
    addi    r3, r3, 0x53a0
    lwz     r4, 0x20(r4)
    clrlslwi  r0, r0, 16, 2
    lwzx    r4, r4, r0
    li      r0, 0x0
    stw     r3, 0x8(r4)
    stw     r31, 0x4(r4)
    lfs     f0, -0x5178(rtoc)
    stfs    f0, 0x1b8(r31)
    stb     r0, 0x155(r31)
    b       branch_0x8012360c


.incbin "./baserom/code/Text_0x80005600.bin", 0x11e008, 0x8012360c - 0x80123608
branch_0x8012360c:
    lwz     r0, 0x154(sp)
    lwz     r31, 0x14c(sp)
    lwz     r30, 0x148(sp)
    mtlr    r0
    lwz     r29, 0x144(sp)
    lwz     r28, 0x140(sp)
    addi    sp, sp, 0x150
    blr


.globl __dt__18TNerveKoopaProvokeFv
__dt__18TNerveKoopaProvokeFv: # 0x8012362c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80123670
    lis     r3, 0x803c
    subi    r0, r3, 0x1d04
    stw     r0, 0x0(r31)
    beq-    branch_0x80123660
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80123660:
    extsh.  r0, r4
    ble-    branch_0x80123670
    mr      r3, r31
    bl      __dl__FPv
branch_0x80123670:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__6TKoopaFv
loadAfter__6TKoopaFv: # 0x80123688
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x5798
    bl      loadAfter__Q26JDrama8TNameRefFv
    lis     r3, 0x803c
    lfs     f30, -0x514c(rtoc)
    subi    r28, r3, 0x1e8c
    lfs     f31, -0x5178(rtoc)
    addi    r26, r28, 0x24
    li      r25, 0x0
    li      r29, 0x0
    lis     r27, 0x800
branch_0x801236d0:
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80123708
    lfs     f1, -0x5114(rtoc)
    mr      r3, r24
    addi    r6, r30, 0x0
    addi    r4, r31, 0x5bc
    addi    r5, r27, 0x29
    bl      __ct__11TKoopaPartsFPCcUlP6TKoopaf
    stw     r28, 0x0(r24)
    stw     r26, 0x20(r24)
    stfs    f30, 0x88(r24)
    stfs    f31, 0x8c(r24)
branch_0x80123708:
    addi    r25, r25, 0x1
    addi    r0, r29, 0x164
    cmpwi   r25, 0xa
    stwx    r24, r30, r0
    addi    r29, r29, 0x4
    blt+    branch_0x801236d0
    lis     r3, 0x803c
    subi    r27, r3, 0x1f38
    addi    r26, r27, 0x24
    li      r25, 0x0
    li      r29, 0x0
    lis     r28, 0x800
branch_0x80123738:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80123768
    lfs     f1, -0x5114(rtoc)
    mr      r3, r24
    addi    r6, r30, 0x0
    addi    r4, r31, 0x5cc
    addi    r5, r28, 0x2b
    bl      __ct__11TKoopaPartsFPCcUlP6TKoopaf
    stw     r27, 0x0(r24)
    stw     r26, 0x20(r24)
branch_0x80123768:
    addi    r25, r25, 0x1
    addi    r0, r29, 0x18c
    cmpwi   r25, 0x2
    stwx    r24, r30, r0
    addi    r29, r29, 0x4
    blt+    branch_0x80123738
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x801237c0
    lis     r5, 0x800
    lfs     f1, -0x5114(rtoc)
    mr      r3, r24
    addi    r6, r30, 0x0
    addi    r4, r31, 0x5d8
    addi    r5, r5, 0x2a
    bl      __ct__11TKoopaPartsFPCcUlP6TKoopaf
    lis     r3, 0x803c
    subi    r3, r3, 0x1fe4
    stw     r3, 0x0(r24)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r24)
branch_0x801237c0:
    stw     r24, 0x194(r30)
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80123804
    lis     r5, 0x800
    lfs     f1, -0x5114(rtoc)
    mr      r3, r24
    addi    r6, r30, 0x0
    addi    r4, r31, 0x5e4
    addi    r5, r5, 0x2a
    bl      __ct__11TKoopaPartsFPCcUlP6TKoopaf
    lis     r3, 0x803c
    subi    r3, r3, 0x2090
    stw     r3, 0x0(r24)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r24)
branch_0x80123804:
    stw     r24, 0x198(r30)
    lmw     r24, 0x10(sp)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__11TKoopaPartsFv
__dt__11TKoopaPartsFv: # 0x80123824
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012388c
    lis     r3, 0x803c
    subi    r3, r3, 0x1de0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8012387c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8012387c:
    extsh.  r0, r31
    ble-    branch_0x8012388c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012388c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__6TKoopaFR20JSUMemoryInputStream
load__6TKoopaFR20JSUMemoryInputStream: # 0x801238a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__6TKoopaFPCc
__ct__6TKoopaFPCc: # 0x801238c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x21a4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl updateAnmSound__6TKoopaFv
updateAnmSound__6TKoopaFv: # 0x80123930
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x8
    bne-    branch_0x80123974
    lfs     f0, 0x10(r31)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x160(r31)
    b       branch_0x801239a4

branch_0x80123974:
    lwz     r3, 0x74(r31)
    lwz     r0, 0x1a0(r31)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f1, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x158(r31)
    stfs    f2, 0x15c(r31)
    stfs    f1, 0x160(r31)
branch_0x801239a4:
    lwz     r0, 0x80(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801239e4
    lwz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801239e4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f2, 0xc(r3)
    addi    r4, r31, 0x158
    lfs     f1, 0x10(r3)
    li      r5, 0x0
    lwz     r3, 0x80(r31)
    li      r6, 0x4
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
branch_0x801239e4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl fall__6TKoopaFv
fall__6TKoopaFv: # 0x801239f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f0, -0x5110(rtoc)
    stfs    f0, 0x34(r3)
    lbz     r0, -0x6588(r13)
    extsb.  r0, r0
    bne-    branch_0x80123a58
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6584(r13)
    subi    r0, r3, 0x1ce4
    lis     r4, 0x8012
    stw     r0, -0x6584(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x34b0
    addi    r4, r4, 0x3a90
    subi    r3, r13, 0x6584
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6588(r13)
branch_0x80123a58:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6584
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80123a70
    stw     r0, 0x1c(r4)
branch_0x80123a70:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__15TNerveKoopaFallFv
__dt__15TNerveKoopaFallFv: # 0x80123a90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80123ad4
    lis     r3, 0x803c
    subi    r0, r3, 0x1ce4
    stw     r0, 0x0(r31)
    beq-    branch_0x80123ac4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80123ac4:
    extsh.  r0, r4
    ble-    branch_0x80123ad4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80123ad4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getTargetDir__6TKoopaCFRCQ29JGeometry8TVec3_f_
getTargetDir__6TKoopaCFRCQ29JGeometry8TVec3_f_: # 0x80123aec
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    addi    r31, r3, 0x5d48
    addi    r3, r31, 0x0
    stw     r30, 0xe0(sp)
    stw     r29, 0xdc(sp)
    addi    r29, r4, 0x0
    lwz     r5, -0x5db8(r13)
    lwz     r30, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x4(r29)
    lfs     f0, 0x1c(r3)
    lfs     f3, 0x0(r29)
    fsubs   f4, f1, f0
    lfs     f2, 0xc(r3)
    lfs     f0, 0x10(r3)
    fsubs   f6, f3, f2
    lfs     f1, 0x18(r3)
    fmuls   f2, f1, f4
    lfs     f3, 0x8(r3)
    fmuls   f0, f0, f4
    lfs     f1, 0x0(r3)
    fmadds  f3, f3, f6, f2
    fmadds  f0, f1, f6, f0
    lfs     f5, 0x8(r29)
    lfs     f4, 0x2c(r3)
    lfs     f1, 0x28(r3)
    fsubs   f4, f5, f4
    lfs     f2, 0x20(r3)
    fmadds  f1, f1, f4, f3
    fmadds  f2, f2, f4, f0
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5148(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5158(rtoc)
    stw     r0, 0xd4(sp)
    lis     r0, 0x4330
    stw     r0, 0xd0(sp)
    lfd     f1, 0xd0(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    lwz     r29, 0xdc(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl stagger__6TKoopaFb
stagger__6TKoopaFb: # 0x80123be8
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r5, 0x3450
    stw     r30, 0xb8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xb4(sp)
    addi    r29, r3, 0x0
    lbz     r0, -0x6588(r13)
    extsb.  r0, r0
    bne-    branch_0x80123c50
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6584(r13)
    subi    r0, r3, 0x1ce4
    lis     r3, 0x8012
    stw     r0, -0x6584(r13)
    addi    r4, r3, 0x3a90
    subi    r3, r13, 0x6584
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6588(r13)
branch_0x80123c50:
    lwz     r3, 0x8c(r29)
    subi    r4, r13, 0x6584
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x80123ec0
    lbz     r0, -0x65b0(r13)
    extsb.  r0, r0
    bne-    branch_0x80123ca4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ac(r13)
    subi    r0, r3, 0x1d04
    lis     r3, 0x8012
    stw     r0, -0x65ac(r13)
    addi    r4, r3, 0x362c
    subi    r3, r13, 0x65ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b0(r13)
branch_0x80123ca4:
    lwz     r3, 0x8c(r29)
    subi    r4, r13, 0x65ac
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x80123ec0
    clrlwi. r0, r30, 24
    bne-    branch_0x80123d20
    lbz     r0, -0x65a0(r13)
    extsb.  r0, r0
    bne-    branch_0x80123d0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x1cf4
    lis     r3, 0x8012
    stw     r0, -0x659c(r13)
    addi    r4, r3, 0x3ff0
    subi    r3, r13, 0x659c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a0(r13)
branch_0x80123d0c:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x659c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80123ec0
branch_0x80123d20:
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80123d6c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r3, 0x8012
    stw     r0, -0x65b4(r13)
    addi    r4, r3, 0x3038
    subi    r3, r13, 0x65b4
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x80123d6c:
    lwz     r3, 0x8c(r29)
    subi    r4, r13, 0x65b4
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x80123ec0
    lbz     r0, -0x6598(r13)
    extsb.  r0, r0
    bne-    branch_0x80123dc0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6594(r13)
    subi    r0, r3, 0x1d34
    lis     r3, 0x8012
    stw     r0, -0x6594(r13)
    addi    r4, r3, 0x3f94
    subi    r3, r13, 0x6594
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6598(r13)
branch_0x80123dc0:
    lwz     r3, 0x8c(r29)
    subi    r4, r13, 0x6594
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x80123ec0
    lbz     r0, -0x6580(r13)
    extsb.  r0, r0
    bne-    branch_0x80123e14
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x657c(r13)
    subi    r0, r3, 0x1d24
    lis     r3, 0x8012
    stw     r0, -0x657c(r13)
    addi    r4, r3, 0x3f38
    subi    r3, r13, 0x657c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6580(r13)
branch_0x80123e14:
    lwz     r3, 0x8c(r29)
    subi    r4, r13, 0x657c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x80123ec0
    lbz     r0, -0x6590(r13)
    extsb.  r0, r0
    bne-    branch_0x80123e68
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x658c(r13)
    subi    r0, r3, 0x1d14
    lis     r3, 0x8012
    stw     r0, -0x658c(r13)
    addi    r4, r3, 0x3edc
    subi    r3, r13, 0x658c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6590(r13)
branch_0x80123e68:
    subi    r5, r13, 0x658c
    lwz     r6, 0x8c(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x80123ec0
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80123eb4
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80123eb4
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80123eb4:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80123ec0:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    addi    sp, sp, 0xc0
    blr


.globl __dt__18TNerveKoopaStaggerFv
__dt__18TNerveKoopaStaggerFv: # 0x80123edc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80123f20
    lis     r3, 0x803c
    subi    r0, r3, 0x1d14
    stw     r0, 0x0(r31)
    beq-    branch_0x80123f10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80123f10:
    extsh.  r0, r4
    ble-    branch_0x80123f20
    mr      r3, r31
    bl      __dl__FPv
branch_0x80123f20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__22TNerveKoopaGetShoweredFv
__dt__22TNerveKoopaGetShoweredFv: # 0x80123f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80123f7c
    lis     r3, 0x803c
    subi    r0, r3, 0x1d24
    stw     r0, 0x0(r31)
    beq-    branch_0x80123f6c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80123f6c:
    extsh.  r0, r4
    ble-    branch_0x80123f7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80123f7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TNerveKoopaGetDownFv
__dt__18TNerveKoopaGetDownFv: # 0x80123f94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80123fd8
    lis     r3, 0x803c
    subi    r0, r3, 0x1d34
    stw     r0, 0x0(r31)
    beq-    branch_0x80123fc8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80123fc8:
    extsh.  r0, r4
    ble-    branch_0x80123fd8
    mr      r3, r31
    bl      __dl__FPv
branch_0x80123fd8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TNerveKoopaFlameFv
__dt__16TNerveKoopaFlameFv: # 0x80123ff0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80124044
    lis     r3, 0x803c
    subi    r0, r3, 0x1cf4
    stw     r0, 0x0(r31)
    beq-    branch_0x80124034
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    stw     r0, 0x0(r31)
    beq-    branch_0x80124034
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80124034:
    extsh.  r0, r4
    ble-    branch_0x80124044
    mr      r3, r31
    bl      __dl__FPv
branch_0x80124044:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getShowered__6TKoopaFv
getShowered__6TKoopaFv: # 0x8012405c
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xd8(sp)
    addi    r30, r4, 0x3450
    lbz     r0, -0x6588(r13)
    extsb.  r0, r0
    bne-    branch_0x801240bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6584(r13)
    subi    r0, r3, 0x1ce4
    lis     r3, 0x8012
    stw     r0, -0x6584(r13)
    addi    r4, r3, 0x3a90
    subi    r3, r13, 0x6584
    addi    r5, r30, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6588(r13)
branch_0x801240bc:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x6584
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x801240d8
    li      r3, 0x0
    b       branch_0x80124484

branch_0x801240d8:
    lbz     r0, -0x65b0(r13)
    extsb.  r0, r0
    bne-    branch_0x80124118
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ac(r13)
    subi    r0, r3, 0x1d04
    lis     r3, 0x8012
    stw     r0, -0x65ac(r13)
    addi    r4, r3, 0x362c
    subi    r3, r13, 0x65ac
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b0(r13)
branch_0x80124118:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x65ac
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x80124134
    li      r3, 0x0
    b       branch_0x80124484

branch_0x80124134:
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80124180
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r3, 0x8012
    stw     r0, -0x65b4(r13)
    addi    r4, r3, 0x3038
    subi    r3, r13, 0x65b4
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x80124180:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x65b4
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x8012419c
    li      r3, 0x0
    b       branch_0x80124484

branch_0x8012419c:
    lbz     r0, -0x6598(r13)
    extsb.  r0, r0
    bne-    branch_0x801241dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6594(r13)
    subi    r0, r3, 0x1d34
    lis     r3, 0x8012
    stw     r0, -0x6594(r13)
    addi    r4, r3, 0x3f94
    subi    r3, r13, 0x6594
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6598(r13)
branch_0x801241dc:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x6594
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x801241f8
    li      r3, 0x0
    b       branch_0x80124484

branch_0x801241f8:
    lbz     r0, -0x6580(r13)
    extsb.  r0, r0
    bne-    branch_0x80124238
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x657c(r13)
    subi    r0, r3, 0x1d24
    lis     r3, 0x8012
    stw     r0, -0x657c(r13)
    addi    r4, r3, 0x3f38
    subi    r3, r13, 0x657c
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6580(r13)
branch_0x80124238:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x657c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x80124254
    li      r3, 0x1
    b       branch_0x80124484

branch_0x80124254:
    lbz     r0, -0x6590(r13)
    extsb.  r0, r0
    bne-    branch_0x80124294
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x658c(r13)
    subi    r0, r3, 0x1d14
    lis     r3, 0x8012
    stw     r0, -0x658c(r13)
    addi    r4, r3, 0x3edc
    subi    r3, r13, 0x658c
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6590(r13)
branch_0x80124294:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x658c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x80124314
    lbz     r0, -0x6580(r13)
    extsb.  r0, r0
    bne-    branch_0x801242e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x657c(r13)
    subi    r0, r3, 0x1d24
    lis     r3, 0x8012
    stw     r0, -0x657c(r13)
    addi    r4, r3, 0x3f38
    subi    r3, r13, 0x657c
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6580(r13)
branch_0x801242e8:
    lwz     r5, 0x8c(r31)
    subi    r4, r13, 0x657c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80124300
    stw     r0, 0x1c(r5)
branch_0x80124300:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r3, 0x1
    stw     r4, 0x14(r5)
    b       branch_0x80124484

branch_0x80124314:
    lbz     r0, -0x65a0(r13)
    extsb.  r0, r0
    bne-    branch_0x80124360
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x1cf4
    lis     r3, 0x8012
    stw     r0, -0x659c(r13)
    addi    r4, r3, 0x3ff0
    subi    r3, r13, 0x659c
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a0(r13)
branch_0x80124360:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x659c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x801243e8
    lbz     r0, -0x65a8(r13)
    extsb.  r0, r0
    bne-    branch_0x801243bc
    subi    r3, r13, 0x65a4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65a4(r13)
    subi    r0, r3, 0x1cc4
    lis     r3, 0x8012
    stw     r0, -0x65a4(r13)
    addi    r4, r3, 0x449c
    subi    r3, r13, 0x65a4
    addi    r5, r30, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a8(r13)
branch_0x801243bc:
    lwz     r5, 0x8c(r31)
    subi    r4, r13, 0x65a4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x801243d4
    stw     r0, 0x1c(r5)
branch_0x801243d4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r3, 0x0
    stw     r4, 0x14(r5)
    b       branch_0x80124484

branch_0x801243e8:
    lbz     r0, -0x6580(r13)
    extsb.  r0, r0
    bne-    branch_0x80124428
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x657c(r13)
    subi    r0, r3, 0x1d24
    lis     r3, 0x8012
    stw     r0, -0x657c(r13)
    addi    r4, r3, 0x3f38
    subi    r3, r13, 0x657c
    addi    r5, r30, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6580(r13)
branch_0x80124428:
    subi    r5, r13, 0x657c
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80124480
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80124474
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80124474
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80124474:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80124480:
    li      r3, 0x1
branch_0x80124484:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    addi    sp, sp, 0xe0
    blr


.globl __dt__15TNerveKoopaWaitFv
__dt__15TNerveKoopaWaitFv: # 0x8012449c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801244f0
    lis     r3, 0x803c
    subi    r0, r3, 0x1cc4
    stw     r0, 0x0(r31)
    beq-    branch_0x801244e0
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    stw     r0, 0x0(r31)
    beq-    branch_0x801244e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801244e0:
    extsh.  r0, r4
    ble-    branch_0x801244f0
    mr      r3, r31
    bl      __dl__FPv
branch_0x801244f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl effectsTumble__6TKoopaCFv
effectsTumble__6TKoopaCFv: # 0x80124508
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x8012456c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r4, 0x8012
    stw     r0, -0x65b4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3468
    addi    r4, r4, 0x3038
    subi    r3, r13, 0x65b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x8012456c:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x65b4
    lwz     r3, 0x14(r4)
    cmplw   r0, r3
    bne-    branch_0x8012459c
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x384
    bge-    branch_0x8012459c
    cmpwi   r0, 0xbe
    ble-    branch_0x8012459c
    li      r3, 0x1
    b       branch_0x801245a0

branch_0x8012459c:
    li      r3, 0x0
branch_0x801245a0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getDown__6TKoopaFv
getDown__6TKoopaFv: # 0x801245b4
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    addi    r31, r4, 0x3450
    stw     r30, 0xa0(sp)
    addi    r30, r3, 0x0
    lbz     r0, -0x6588(r13)
    extsb.  r0, r0
    bne-    branch_0x80124614
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6584(r13)
    subi    r0, r3, 0x1ce4
    lis     r3, 0x8012
    stw     r0, -0x6584(r13)
    addi    r4, r3, 0x3a90
    subi    r3, r13, 0x6584
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6588(r13)
branch_0x80124614:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x6584
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801248e4
    lbz     r0, -0x65b0(r13)
    extsb.  r0, r0
    bne-    branch_0x80124668
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ac(r13)
    subi    r0, r3, 0x1d04
    lis     r3, 0x8012
    stw     r0, -0x65ac(r13)
    addi    r4, r3, 0x362c
    subi    r3, r13, 0x65ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b0(r13)
branch_0x80124668:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x65ac
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801248e4
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x801246c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r3, 0x8012
    stw     r0, -0x65b4(r13)
    addi    r4, r3, 0x3038
    subi    r3, r13, 0x65b4
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x801246c8:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x65b4
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801248e4
    lbz     r0, -0x6590(r13)
    extsb.  r0, r0
    bne-    branch_0x8012471c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x658c(r13)
    subi    r0, r3, 0x1d14
    lis     r3, 0x8012
    stw     r0, -0x658c(r13)
    addi    r4, r3, 0x3edc
    subi    r3, r13, 0x658c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6590(r13)
branch_0x8012471c:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x658c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x80124794
    lbz     r0, -0x6598(r13)
    extsb.  r0, r0
    bne-    branch_0x80124770
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6594(r13)
    subi    r0, r3, 0x1d34
    lis     r3, 0x8012
    stw     r0, -0x6594(r13)
    addi    r4, r3, 0x3f94
    subi    r3, r13, 0x6594
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6598(r13)
branch_0x80124770:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6594
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80124788
    stw     r0, 0x1c(r4)
branch_0x80124788:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x80124794:
    lbz     r0, -0x6580(r13)
    extsb.  r0, r0
    bne-    branch_0x801247d4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x657c(r13)
    subi    r0, r3, 0x1d24
    lis     r3, 0x8012
    stw     r0, -0x657c(r13)
    addi    r4, r3, 0x3f38
    subi    r3, r13, 0x657c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6580(r13)
branch_0x801247d4:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x657c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x8012484c
    lbz     r0, -0x6598(r13)
    extsb.  r0, r0
    bne-    branch_0x80124828
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6594(r13)
    subi    r0, r3, 0x1d34
    lis     r3, 0x8012
    stw     r0, -0x6594(r13)
    addi    r4, r3, 0x3f94
    subi    r3, r13, 0x6594
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6598(r13)
branch_0x80124828:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6594
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80124840
    stw     r0, 0x1c(r4)
branch_0x80124840:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8012484c:
    lbz     r0, -0x6598(r13)
    extsb.  r0, r0
    bne-    branch_0x8012488c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6594(r13)
    subi    r0, r3, 0x1d34
    lis     r3, 0x8012
    stw     r0, -0x6594(r13)
    addi    r4, r3, 0x3f94
    subi    r3, r13, 0x6594
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6598(r13)
branch_0x8012488c:
    subi    r5, r13, 0x6594
    lwz     r6, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x801248e4
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x801248d8
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x801248d8
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x801248d8:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x801248e4:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    addi    sp, sp, 0xa8
    blr


.globl allowsLaunch__6TKoopaCFv
allowsLaunch__6TKoopaCFv: # 0x801248fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80124960
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r4, 0x8012
    stw     r0, -0x65b4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3468
    addi    r4, r4, 0x3038
    subi    r3, r13, 0x65b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x80124960:
    lwz     r3, 0x8c(r31)
    subi    r4, r13, 0x65b4
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    bne-    branch_0x8012497c
    li      r3, 0x0
    b       branch_0x80124980

branch_0x8012497c:
    li      r3, 0x1
branch_0x80124980:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getNeckFocus__6TKoopaCFv
getNeckFocus__6TKoopaCFv: # 0x80124994
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      getCurAnmIdx__6MActorCFi
    lwz     r0, 0x74(r31)
    addi    r31, r3, 0x0
    li      r4, 0x0
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x5148(rtoc)
    cmplwi  r31, 0xe
    xoris   r4, r4, 0x8000
    stw     r4, 0x24(sp)
    lfs     f3, 0x10(r3)
    stw     r0, 0x20(sp)
    lfs     f1, -0x5178(rtoc)
    lfd     f0, 0x20(sp)
    fsubs   f2, f0, f2
    bgt-    branch_0x80124c6c
    lis     r3, 0x803c
    subi    r3, r3, 0x2210
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lfs     f0, -0x5134(rtoc)
    lfs     f1, -0x514c(rtoc)
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x80124c6c
    fsubs   f1, f3, f0
    fsubs   f0, f2, f0
    fdivs   f1, f1, f0
    b       branch_0x80124c6c


.incbin "./baserom/code/Text_0x80005600.bin", 0x11f434, 0x80124c6c - 0x80124a34
branch_0x80124c6c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl isFlaming__6TKoopaCFv
isFlaming__6TKoopaCFv: # 0x80124c80
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x74(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x6
    bge-    branch_0x80124cb4
    cmpwi   r3, 0x3
    bge-    branch_0x80124cac
    b       branch_0x80124cb4

branch_0x80124cac:
    li      r3, 0x1
    b       branch_0x80124cb8

branch_0x80124cb4:
    li      r3, 0x0
branch_0x80124cb8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getFlameDirRate__6TKoopaCFv
getFlameDirRate__6TKoopaCFv: # 0x80124cc8
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stmw    r27, 0xc4(sp)
    mr      r27, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r27)
    li      r4, 0x0
    lfs     f31, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lha     r0, 0x8(r3)
    lis     r31, 0x4330
    lwz     r3, 0x70(r27)
    li      r4, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0xbc(sp)
    lwz     r6, 0x38(r3)
    stw     r31, 0xb8(sp)
    lwz     r5, 0x8c(r27)
    lfd     f1, -0x5148(rtoc)
    lfd     f0, 0xb8(sp)
    lwz     r3, 0x74(r27)
    fsubs   f30, f0, f1
    lfs     f29, 0x2ac(r6)
    lwz     r30, 0x234(r6)
    lwz     r29, 0x248(r6)
    lwz     r28, 0x20(r5)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x5
    beq-    branch_0x80124d68
    bge-    branch_0x80124e04
    cmpwi   r3, 0x3
    bge-    branch_0x80124d78
    b       branch_0x80124e04

branch_0x80124d68:
    fmuls   f0, f31, f29
    fdivs   f0, f0, f30
    fneg    f1, f0
    b       branch_0x80124e08

branch_0x80124d78:
    lwz     r4, 0x8c(r27)
    lwz     r0, 0x20(r4)
    cmpw    r0, r30
    bgt-    branch_0x80124d90
    fneg    f1, f29
    b       branch_0x80124de8

branch_0x80124d90:
    cmpw    r28, r29
    bgt-    branch_0x80124de4
    subf    r0, r30, r28
    lfs     f0, -0x5178(rtoc)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x5148(rtoc)
    stw     r0, 0xbc(sp)
    subf    r0, r30, r29
    xoris   r0, r0, 0x8000
    fadds   f3, f0, f29
    stw     r31, 0xb8(sp)
    stw     r0, 0xb4(sp)
    lfd     f0, 0xb8(sp)
    stw     r31, 0xb0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0xb0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fsubs   f1, f0, f29
    b       branch_0x80124de8

branch_0x80124de4:
    lfs     f1, -0x5178(rtoc)
branch_0x80124de8:
    cmpwi   r3, 0x3
    bne-    branch_0x80124e08
    fdivs   f0, f31, f30
    lfs     f2, -0x5178(rtoc)
    fsubs   f0, f2, f0
    fmuls   f1, f1, f0
    b       branch_0x80124e08

branch_0x80124e04:
    lfs     f1, -0x514c(rtoc)
branch_0x80124e08:
    lmw     r27, 0xc4(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    addi    sp, sp, 0xf0
    blr


.globl changeAnm__6TKoopaFiif
changeAnm__6TKoopaFiif: # 0x80124e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80124ea4
    lwz     r3, 0x74(r29)
    mr      r4, r30
    bl      setBckFromIndex__6MActorFi
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80124e94
    li      r4, 0x0
    b       branch_0x80124e9c

branch_0x80124e94:
    slwi    r0, r30, 2
    lwzx    r4, r3, r0
branch_0x80124e9c:
    mr      r3, r29
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80124ea4:
    lwz     r3, 0x74(r29)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpw    r31, r3
    beq-    branch_0x80124ec4
    lwz     r3, 0x74(r29)
    mr      r4, r31
    bl      setBtpFromIndex__6MActorFi
branch_0x80124ec4:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setUpHitActors__6TKoopaFv
setUpHitActors__6TKoopaFv: # 0x80124f08
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e8(sp)
    stfd    f31, 0x1e0(sp)
    stfd    f30, 0x1d8(sp)
    stfd    f29, 0x1d0(sp)
    stfd    f28, 0x1c8(sp)
    stfd    f27, 0x1c0(sp)
    stw     r31, 0x1bc(sp)
    mr      r31, r3
    stw     r30, 0x1b8(sp)
    lwz     r3, 0x74(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x4
    bne-    branch_0x80124f50
    li      r0, 0x1
    b       branch_0x80124f90

branch_0x80124f50:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x5
    bne-    branch_0x80124f8c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x513c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80124f8c
    li      r0, 0x1
    b       branch_0x80124f90

branch_0x80124f8c:
    li      r0, 0x0
branch_0x80124f90:
    clrlwi. r0, r0, 24
    beq-    branch_0x801251f8
    li      r0, 0x2
    lfs     f1, -0x5194(rtoc)
    mtctr   r0
    li      r30, -0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r3, 0x0
branch_0x80124fb4:
    addi    r0, r3, 0x164
    lwzx    r4, r31, r0
    lfs     f2, 0x8c(r4)
    lfs     f0, 0x88(r4)
    fcmpo   cr0, f2, f0
    blt-    branch_0x80124fd4
    mr      r30, r6
    b       branch_0x80124ff0

branch_0x80124fd4:
    lwz     r4, 0x70(r31)
    lwz     r4, 0x38(r4)
    lfs     f0, 0x25c(r4)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80124ff0
    li      r5, 0x1
branch_0x80124ff0:
    addi    r0, r3, 0x168
    lwzx    r4, r31, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    lfs     f2, 0x8c(r4)
    lfs     f0, 0x88(r4)
    fcmpo   cr0, f2, f0
    blt-    branch_0x80125018
    mr      r30, r6
    b       branch_0x80125034

branch_0x80125018:
    lwz     r4, 0x70(r31)
    lwz     r4, 0x38(r4)
    lfs     f0, 0x25c(r4)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80125034
    li      r5, 0x1
branch_0x80125034:
    addi    r0, r3, 0x168
    lwzx    r4, r31, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    lfs     f2, 0x8c(r4)
    lfs     f0, 0x88(r4)
    fcmpo   cr0, f2, f0
    blt-    branch_0x8012505c
    mr      r30, r6
    b       branch_0x80125078

branch_0x8012505c:
    lwz     r4, 0x70(r31)
    lwz     r4, 0x38(r4)
    lfs     f0, 0x25c(r4)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80125078
    li      r5, 0x1
branch_0x80125078:
    addi    r0, r3, 0x168
    lwzx    r4, r31, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    lfs     f2, 0x8c(r4)
    lfs     f0, 0x88(r4)
    fcmpo   cr0, f2, f0
    blt-    branch_0x801250a0
    mr      r30, r6
    b       branch_0x801250bc

branch_0x801250a0:
    lwz     r4, 0x70(r31)
    lwz     r4, 0x38(r4)
    lfs     f0, 0x25c(r4)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801250bc
    li      r5, 0x1
branch_0x801250bc:
    addi    r0, r3, 0x168
    lwzx    r4, r31, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    lfs     f2, 0x8c(r4)
    lfs     f0, 0x88(r4)
    fcmpo   cr0, f2, f0
    blt-    branch_0x801250e4
    mr      r30, r6
    b       branch_0x80125100

branch_0x801250e4:
    lwz     r4, 0x70(r31)
    lwz     r4, 0x38(r4)
    lfs     f0, 0x25c(r4)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80125100
    li      r5, 0x1
branch_0x80125100:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x80124fb4
    clrlwi. r0, r5, 24
    bne-    branch_0x80125290
    cmpwi   r30, 0x0
    blt-    branch_0x80125290
    lwz     r3, 0x74(r31)
    lwz     r0, 0x1a0(r31)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lfs     f5, -0x514c(rtoc)
    lwz     r3, 0x58(r3)
    lfs     f0, -0x50c0(rtoc)
    add     r3, r3, r0
    lfs     f28, 0x0(r3)
    lfs     f27, 0x20(r3)
    fmadds  f1, f28, f28, f5
    lfs     f30, 0x1c(r3)
    lfs     f2, -0x50c4(rtoc)
    lfs     f31, 0xc(r3)
    fmadds  f1, f27, f27, f1
    fsubs   f30, f30, f2
    lfs     f29, 0x2c(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80125178
    fmr     f3, f5
    fmr     f4, f3
    b       branch_0x80125194

branch_0x80125178:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5178(rtoc)
    lfs     f0, -0x514c(rtoc)
    fmuls   f1, f2, f1
    fmuls   f4, f28, f1
    fmuls   f3, f0, f1
    fmuls   f5, f27, f1
branch_0x80125194:
    lwz     r4, 0x70(r31)
    slwi    r0, r30, 2
    add     r3, r31, r0
    lwz     r4, 0x38(r4)
    lwz     r3, 0x164(r3)
    lfs     f1, 0x270(r4)
    lfs     f2, 0x25c(r4)
    lfs     f0, 0x1f8(r4)
    stfs    f31, 0x10(r3)
    stfs    f30, 0x14(r3)
    stfs    f29, 0x18(r3)
    stfs    f4, 0x78(r3)
    stfs    f3, 0x7c(r3)
    stfs    f5, 0x80(r3)
    stfs    f31, 0x6c(r3)
    stfs    f30, 0x70(r3)
    stfs    f29, 0x74(r3)
    stfs    f0, 0x84(r3)
    lfs     f0, -0x50bc(rtoc)
    stfs    f0, 0x88(r3)
    lfs     f0, -0x514c(rtoc)
    stfs    f0, 0x8c(r3)
    stfs    f2, 0x90(r3)
    stfs    f1, 0x94(r3)
    b       branch_0x80125290

branch_0x801251f8:
    lfs     f1, -0x514c(rtoc)
    li      r3, 0x8
    lfs     f0, -0x5178(rtoc)
    subfic  r0, r3, 0xa
    lwz     r4, 0x164(r31)
    cmpwi   r3, 0xa
    mtctr   r0
    stfs    f1, 0x88(r4)
    slwi    r3, r3, 2
    stfs    f0, 0x8c(r4)
    lwz     r4, 0x168(r31)
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    lwz     r4, 0x16c(r31)
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    lwz     r4, 0x170(r31)
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    lwz     r4, 0x174(r31)
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    lwz     r4, 0x178(r31)
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    lwz     r4, 0x17c(r31)
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    lwz     r4, 0x180(r31)
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    bge-    branch_0x80125290
branch_0x80125278:
    addi    r0, r3, 0x164
    lwzx    r4, r31, r0
    addi    r3, r3, 0x4
    stfs    f1, 0x88(r4)
    stfs    f0, 0x8c(r4)
    bdnz+      branch_0x80125278
branch_0x80125290:
    lwz     r3, 0x74(r31)
    lwz     r0, 0x1a8(r31)
    lwz     r4, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x70(r31)
    lwz     r5, 0x58(r4)
    lwz     r4, 0x38(r3)
    add     r5, r5, r0
    lfs     f3, 0x1c(r5)
    lfs     f0, -0x50ec(rtoc)
    lwz     r3, 0x194(r31)
    fsubs   f3, f3, f0
    lfs     f2, 0xc(r5)
    lfs     f4, 0x2c(r5)
    lfs     f1, 0x284(r4)
    lfs     f0, -0x5194(rtoc)
    stfs    f2, 0x10(r3)
    fmuls   f0, f0, f1
    stfs    f3, 0x14(r3)
    stfs    f4, 0x18(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    stfs    f1, 0x50(r3)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, 0x198(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x18(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lfs     f1, -0x5198(rtoc)
    stfs    f1, 0x50(r3)
    lfs     f0, -0x512c(rtoc)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x1ec(sp)
    lfd     f31, 0x1e0(sp)
    lfd     f30, 0x1d8(sp)
    mtlr    r0
    lfd     f29, 0x1d0(sp)
    lfd     f28, 0x1c8(sp)
    lfd     f27, 0x1c0(sp)
    lwz     r31, 0x1bc(sp)
    lwz     r30, 0x1b8(sp)
    addi    sp, sp, 0x1e8
    blr


.globl KoopaNeckCallBack__9_unnamed_FP7J3DNodei
KoopaNeckCallBack__9_unnamed_FP7J3DNodei: # 0x801253a0
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2d0(sp)
    stfd    f31, 0x2c8(sp)
    stfd    f30, 0x2c0(sp)
    stfd    f29, 0x2b8(sp)
    stfd    f28, 0x2b0(sp)
    stfd    f27, 0x2a8(sp)
    stfd    f26, 0x2a0(sp)
    stfd    f25, 0x298(sp)
    stfd    f24, 0x290(sp)
    stfd    f23, 0x288(sp)
    stfd    f22, 0x280(sp)
    stfd    f21, 0x278(sp)
    stfd    f20, 0x270(sp)
    stfd    f19, 0x268(sp)
    stfd    f18, 0x260(sp)
    stfd    f17, 0x258(sp)
    stfd    f16, 0x250(sp)
    stfd    f15, 0x248(sp)
    stw     r31, 0x244(sp)
    stw     r30, 0x240(sp)
    beq-    branch_0x80125408
    li      r3, 0x1
    b       branch_0x80125d18

branch_0x80125408:
    lis     r4, 0x8040
    lwz     r7, 0x4(r3)
    addi    r4, r4, 0x45dc
    lwz     r5, -0x60b4(r13)
    lwz     r4, 0x38(r4)
    mr      r31, r7
    lhz     r0, 0x18(r3)
    lwz     r6, 0x58(r4)
    mulli   r4, r0, 0x30
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lfs     f0, -0x513c(rtoc)
    stw     r3, 0x1fc(sp)
    add     r30, r6, r4
    stw     r0, 0x200(sp)
    li      r4, 0x0
    lwz     r0, 0x8(r5)
    stw     r0, 0x204(sp)
    lfs     f1, 0x200(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x200(sp)
    lfs     f1, 0x1fc(sp)
    lfs     f0, 0xc(r30)
    lfs     f2, 0x2c(r30)
    fsubs   f0, f1, f0
    lfs     f1, 0x1c(r30)
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x200(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x200(sp)
    lfs     f0, 0x204(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x204(sp)
    lwz     r3, 0x74(r7)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x6
    bge-    branch_0x801254b0
    cmpwi   r3, 0x3
    bge-    branch_0x801254a8
    b       branch_0x801254b0

branch_0x801254a8:
    li      r0, 0x1
    b       branch_0x801254b4

branch_0x801254b0:
    li      r0, 0x0
branch_0x801254b4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801256f4
    mr      r3, r31
    bl      getFlameDirRate__6TKoopaCFv
    lwz     r3, 0x70(r31)
    lfs     f0, -0x50b4(rtoc)
    lwz     r3, 0x38(r3)
    fmuls   f3, f1, f0
    lfs     f2, -0x5154(rtoc)
    lfs     f0, 0x2c0(r3)
    lfs     f1, 0x2d4(r3)
    fmuls   f3, f3, f0
    lfs     f0, -0x514c(rtoc)
    fdivs   f2, f3, f2
    fmuls   f1, f2, f1
    fmr     f17, f2
    fcmpo   cr0, f1, f0
    fmr     f16, f1
    ble-    branch_0x80125504
    fneg    f16, f16
branch_0x80125504:
    lbz     r0, 0x154(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80125514
    fneg    f17, f17
branch_0x80125514:
    fmr     f1, f17
    bl      sinf
    fmr     f15, f1
    fmr     f1, f17
    bl      cosf
    lfs     f0, -0x514c(rtoc)
    fneg    f21, f15
    lfs     f12, 0x10(r30)
    mr      r3, r30
    lfs     f6, 0x1c(r30)
    lfs     f11, 0x14(r30)
    lfs     f2, -0x5178(rtoc)
    fmuls   f24, f0, f12
    lfs     f5, 0x0(r30)
    fmuls   f18, f0, f11
    lfs     f10, 0x18(r30)
    lfs     f4, 0x4(r30)
    fmuls   f22, f0, f10
    lfs     f20, 0xc(r30)
    fmuls   f9, f0, f6
    lfs     f8, 0x20(r30)
    fmuls   f7, f2, f6
    fmuls   f11, f2, f11
    lfs     f3, 0x8(r30)
    fmuls   f10, f2, f10
    lfs     f6, 0x24(r30)
    fmadds  f23, f21, f4, f18
    fmuls   f12, f2, f12
    lfs     f2, 0x2c(r30)
    fmadds  f13, f1, f20, f9
    fmadds  f17, f21, f20, f9
    fmadds  f9, f0, f20, f7
    fmadds  f19, f21, f5, f24
    lfs     f7, 0x28(r30)
    fmadds  f20, f1, f2, f17
    fmadds  f21, f21, f3, f22
    fmadds  f17, f1, f8, f19
    fmadds  f19, f1, f5, f24
    fmadds  f5, f0, f5, f12
    stfs    f17, 0x8(sp)
    fmadds  f23, f1, f6, f23
    fmadds  f18, f1, f4, f18
    fmadds  f17, f1, f3, f22
    fmadds  f11, f0, f4, f11
    stfs    f23, 0xc(sp)
    fmadds  f1, f1, f7, f21
    fmadds  f10, f0, f3, f10
    fmadds  f3, f15, f7, f17
    stfs    f1, 0x10(sp)
    fadds   f4, f0, f20
    fmadds  f13, f15, f2, f13
    fmadds  f9, f0, f2, f9
    fmadds  f2, f15, f6, f18
    stfs    f4, 0x14(sp)
    fmadds  f1, f15, f8, f19
    fmadds  f5, f0, f8, f5
    fadds   f4, f0, f13
    fmadds  f6, f0, f6, f11
    fmadds  f7, f0, f7, f10
    fadds   f8, f0, f9
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    fmr     f1, f16
    bl      sinf
    fmr     f15, f1
    fmr     f1, f16
    bl      cosf
    lfs     f2, 0x24(r30)
    fneg    f4, f15
    lfs     f6, -0x514c(rtoc)
    mr      r3, r30
    lfs     f12, 0x14(r30)
    fmuls   f3, f2, f15
    lfs     f8, 0x20(r30)
    fmuls   f0, f2, f1
    lfs     f9, 0x4(r30)
    fmuls   f7, f2, f6
    fmadds  f21, f8, f1, f3
    lfs     f2, 0x28(r30)
    fmadds  f20, f8, f4, f0
    lfs     f22, 0x10(r30)
    fmadds  f19, f8, f6, f7
    fmuls   f5, f12, f6
    lfs     f3, 0x0(r30)
    fmuls   f10, f12, f15
    lfs     f0, 0x2c(r30)
    fmuls   f18, f9, f15
    fmadds  f11, f22, f6, f5
    lfs     f7, -0x5178(rtoc)
    fmuls   f5, f12, f1
    lfs     f8, 0x1c(r30)
    fmadds  f15, f2, f6, f19
    fmuls   f16, f9, f6
    lfs     f23, 0x8(r30)
    fmuls   f17, f9, f1
    lfs     f9, 0x18(r30)
    fmadds  f13, f22, f1, f10
    fmadds  f12, f22, f4, f5
    lfs     f22, 0xc(r30)
    fmadds  f21, f2, f6, f21
    fmadds  f5, f3, f6, f16
    fmadds  f1, f3, f1, f18
    fmadds  f16, f2, f6, f20
    stfs    f21, 0x8(sp)
    fmadds  f10, f9, f6, f11
    fmadds  f3, f3, f4, f17
    fmadds  f4, f23, f6, f5
    fmadds  f2, f2, f7, f19
    stfs    f16, 0xc(sp)
    fadds   f0, f0, f15
    fmadds  f1, f23, f6, f1
    stfs    f2, 0x10(sp)
    fmadds  f2, f23, f6, f3
    fmadds  f3, f23, f7, f5
    stfs    f0, 0x14(sp)
    fmadds  f5, f9, f6, f13
    fadds   f4, f22, f4
    fmadds  f6, f9, f6, f12
    fmadds  f7, f9, f7, f11
    fadds   f8, f8, f10
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
branch_0x801256f4:
    mr      r3, r31
    bl      getNeckFocus__6TKoopaCFv
    lfs     f29, 0x14(r30)
    fmr     f30, f1
    lfs     f23, 0x200(sp)
    lfs     f28, 0x4(r30)
    fmuls   f0, f29, f23
    lfs     f2, 0x1fc(sp)
    lfs     f31, 0x24(r30)
    lfs     f24, 0x204(sp)
    fmadds  f1, f28, f2, f0
    lfs     f0, -0x50c0(rtoc)
    lfs     f21, 0x0(r30)
    fmadds  f1, f31, f24, f1
    lfs     f22, 0x10(r30)
    lfs     f15, 0x20(r30)
    fneg    f1, f1
    fmadds  f17, f29, f1, f23
    fmadds  f16, f28, f1, f2
    fmadds  f18, f31, f1, f24
    fmuls   f1, f17, f17
    fmadds  f1, f16, f16, f1
    fmadds  f1, f18, f18, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012576c
    lfs     f27, -0x514c(rtoc)
    fmr     f20, f27
    fmr     f19, f20
    b       branch_0x80125784

branch_0x8012576c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x5178(rtoc)
    fmuls   f0, f0, f1
    fmuls   f19, f16, f0
    fmuls   f20, f17, f0
    fmuls   f27, f18, f0
branch_0x80125784:
    lfs     f1, 0x1fc(sp)
    lfs     f0, -0x50c0(rtoc)
    fmuls   f1, f1, f1
    fmadds  f1, f23, f23, f1
    fmadds  f1, f24, f24, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801257b8
    lfs     f0, -0x514c(rtoc)
    stfs    f0, 0x204(sp)
    stfs    f0, 0x200(sp)
    stfs    f0, 0x1fc(sp)
    b       branch_0x801257e8

branch_0x801257b8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5178(rtoc)
    lfs     f0, 0x1fc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x200(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x200(sp)
    lfs     f0, 0x204(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x204(sp)
branch_0x801257e8:
    fmuls   f1, f20, f22
    lfd     f0, -0x50b0(rtoc)
    fmadds  f1, f19, f21, f1
    fmadds  f2, f27, f15, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x80125814
    lfs     f1, -0x5178(rtoc)
    lfs     f0, -0x50a8(rtoc)
    fadds   f1, f1, f2
    fdivs   f0, f1, f0
    fmuls   f30, f30, f0
branch_0x80125814:
    fmuls   f2, f21, f27
    lfs     f0, -0x514c(rtoc)
    fmuls   f3, f15, f20
    fmuls   f1, f22, f19
    fmsubs  f16, f15, f19, f2
    fmsubs  f23, f22, f27, f3
    fmsubs  f17, f21, f20, f1
    fmuls   f1, f16, f16
    fmadds  f1, f23, f23, f1
    fmadds  f18, f17, f17, f1
    fcmpo   cr0, f18, f0
    cror    2, 0, 2
    bne-    branch_0x8012584c
    b       branch_0x80125870

branch_0x8012584c:
    frsqrte f3, f18
    lfs     f2, -0x5130(rtoc)
    lfs     f0, -0x50b8(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f18, f1, f0
    fmuls   f0, f2, f0
    fmuls   f18, f18, f0
branch_0x80125870:
    lfs     f0, -0x50c0(rtoc)
    fcmpo   cr0, f18, f0
    cror    2, 0, 2
    bne-    branch_0x8012589c
    lfs     f1, -0x514c(rtoc)
    lfs     f0, -0x5178(rtoc)
    stfs    f1, 0x1bc(sp)
    stfs    f1, 0x1c0(sp)
    stfs    f1, 0x1c4(sp)
    stfs    f0, 0x1c8(sp)
    b       branch_0x801258ec

branch_0x8012589c:
    fmuls   f0, f22, f20
    fmr     f1, f18
    fmadds  f0, f21, f19, f0
    fmadds  f2, f15, f27, f0
    bl      atan2f
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    fmuls   f15, f30, f0
    fmr     f1, f15
    bl      sinf
    fdivs   f1, f1, f18
    fmuls   f0, f23, f1
    fmuls   f2, f16, f1
    stfs    f0, 0x1bc(sp)
    fmuls   f0, f17, f1
    fmr     f1, f15
    stfs    f2, 0x1c0(sp)
    stfs    f0, 0x1c4(sp)
    bl      cosf
    stfs    f1, 0x1c8(sp)
branch_0x801258ec:
    lfs     f1, 0x1bc(sp)
    lfs     f0, 0x1c0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x1c4(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x1c8(sp)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    lfs     f0, -0x50c0(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80125940
    lfs     f0, -0x514c(rtoc)
    stfs    f0, 0x1c8(sp)
    stfs    f0, 0x1c4(sp)
    stfs    f0, 0x1c0(sp)
    stfs    f0, 0x1bc(sp)
    b       branch_0x8012597c

branch_0x80125940:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5178(rtoc)
    lfs     f0, 0x1bc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1bc(sp)
    lfs     f0, 0x1c0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x1c4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c4(sp)
    lfs     f0, 0x1c8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c8(sp)
branch_0x8012597c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x6
    bge-    branch_0x801259a4
    cmpwi   r3, 0x3
    bge-    branch_0x8012599c
    b       branch_0x801259a4

branch_0x8012599c:
    li      r0, 0x1
    b       branch_0x801259a8

branch_0x801259a4:
    li      r0, 0x0
branch_0x801259a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80125ba4
    lfs     f15, 0x204(sp)
    lfs     f16, 0x200(sp)
    fmuls   f1, f19, f15
    lfs     f3, 0x1fc(sp)
    fmuls   f2, f27, f16
    fmuls   f0, f20, f3
    fmsubs  f3, f27, f3, f1
    fmsubs  f1, f20, f15, f2
    fmsubs  f2, f19, f16, f0
    fmuls   f0, f3, f3
    fmadds  f0, f1, f1, f0
    fmadds  f1, f2, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f20, f16
    lfs     f2, 0x1fc(sp)
    fmadds  f0, f19, f2, f0
    fmadds  f2, f27, f15, f0
    bl      atan2f
    fmuls   f2, f16, f29
    lfs     f3, 0x1fc(sp)
    fabs    f4, f1
    lfs     f0, -0x514c(rtoc)
    fmadds  f1, f3, f28, f2
    fmr     f2, f4
    fmadds  f1, f15, f31, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80125a20
    fneg    f2, f4
branch_0x80125a20:
    fmuls   f0, f2, f30
    lfs     f1, -0x5130(rtoc)
    lfs     f18, 0x1c8(sp)
    lfs     f20, 0x1c0(sp)
    fmuls   f15, f1, f0
    fmuls   f0, f18, f20
    lfs     f3, -0x5194(rtoc)
    lfs     f17, 0x1bc(sp)
    lfs     f19, 0x1c4(sp)
    fmuls   f0, f3, f0
    fmuls   f2, f17, f19
    fmr     f1, f15
    fmadds  f16, f3, f2, f0
    bl      sinf
    fmuls   f2, f16, f1
    fmuls   f0, f18, f17
    fmuls   f4, f20, f19
    stfs    f2, 0x1ac(sp)
    fmuls   f2, f17, f17
    fmuls   f3, f20, f20
    lfs     f5, -0x5194(rtoc)
    fmuls   f0, f5, f0
    fmsubs  f0, f5, f4, f0
    fmuls   f0, f0, f1
    stfs    f0, 0x1b0(sp)
    lfs     f0, -0x5178(rtoc)
    fnmsubs  f0, f5, f2, f0
    fnmsubs  f0, f5, f3, f0
    fmuls   f0, f0, f1
    fmr     f1, f15
    stfs    f0, 0x1b4(sp)
    bl      cosf
    stfs    f1, 0x1b8(sp)
    lfs     f1, 0x1ac(sp)
    lfs     f0, 0x1b0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x1b4(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x1b8(sp)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    lfs     f0, -0x50c0(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80125af8
    lfs     f0, -0x514c(rtoc)
    stfs    f0, 0x1b8(sp)
    stfs    f0, 0x1b4(sp)
    stfs    f0, 0x1b0(sp)
    stfs    f0, 0x1ac(sp)
    b       branch_0x80125b34

branch_0x80125af8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5178(rtoc)
    lfs     f0, 0x1ac(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1ac(sp)
    lfs     f0, 0x1b0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b0(sp)
    lfs     f0, 0x1b4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(sp)
    lfs     f0, 0x1b8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(sp)
branch_0x80125b34:
    lfs     f5, 0x1b8(sp)
    lfs     f10, 0x1bc(sp)
    lfs     f8, 0x1c0(sp)
    lfs     f9, 0x1ac(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1c8(sp)
    fmuls   f1, f5, f8
    lfs     f4, 0x1c4(sp)
    lfs     f11, 0x1b0(sp)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x1b4(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x1bc(sp)
    fnmsubs  f0, f11, f10, f0
    fnmsubs  f2, f7, f4, f3
    stfs    f1, 0x1c0(sp)
    stfs    f0, 0x1c4(sp)
    stfs    f2, 0x1c8(sp)
branch_0x80125ba4:
    lfs     f2, -0x5194(rtoc)
    mr      r3, r30
    lfs     f6, 0x1bc(sp)
    lfs     f5, 0x1c0(sp)
    fmuls   f15, f2, f6
    lfs     f8, 0x1c4(sp)
    fmuls   f7, f2, f5
    lfs     f0, 0x1c8(sp)
    fmuls   f1, f2, f8
    fmuls   f17, f2, f0
    lfs     f0, -0x5178(rtoc)
    fmuls   f2, f15, f6
    lfs     f28, 0x24(r30)
    fmuls   f9, f7, f5
    fsubs   f27, f0, f2
    lfs     f4, -0x514c(rtoc)
    fmuls   f13, f1, f8
    lfs     f31, 0x14(r30)
    fsubs   f3, f0, f9
    fsubs   f18, f27, f13
    lfs     f24, 0x4(r30)
    fmuls   f19, f15, f5
    lfs     f29, 0x20(r30)
    fmuls   f16, f17, f8
    fmuls   f1, f28, f4
    lfs     f30, 0x28(r30)
    fadds   f2, f19, f16
    lfs     f26, 0x10(r30)
    fmuls   f0, f31, f4
    fmadds  f1, f29, f4, f1
    lfs     f23, 0x0(r30)
    fmuls   f12, f24, f4
    lfs     f10, 0x2c(r30)
    fmuls   f7, f7, f8
    fmuls   f6, f17, f6
    lfs     f25, 0x18(r30)
    fmadds  f0, f26, f4, f0
    lfs     f11, 0x1c(r30)
    fmadds  f1, f30, f4, f1
    fsubs   f20, f7, f6
    lfs     f22, 0x8(r30)
    fmadds  f21, f23, f4, f12
    lfs     f12, 0xc(r30)
    fmadds  f0, f25, f4, f0
    fmadds  f4, f22, f4, f21
    fmuls   f8, f15, f8
    fmuls   f5, f17, f5
    fsubs   f13, f3, f13
    fmuls   f3, f28, f2
    fmuls   f15, f24, f2
    fmuls   f17, f31, f2
    fsubs   f19, f19, f16
    fmuls   f2, f28, f18
    fmuls   f16, f24, f18
    fmuls   f18, f31, f18
    fsubs   f21, f8, f5
    fmadds  f3, f29, f13, f3
    fmadds  f15, f23, f13, f15
    fmadds  f13, f26, f13, f17
    fmadds  f17, f30, f21, f3
    fadds   f8, f8, f5
    fmuls   f5, f28, f20
    fmuls   f3, f24, f20
    stfs    f17, 0x8(sp)
    fmuls   f17, f31, f20
    fadds   f6, f7, f6
    fmadds  f7, f29, f19, f2
    fmadds  f2, f23, f19, f16
    fmadds  f16, f26, f19, f18
    fmadds  f18, f30, f6, f7
    fsubs   f7, f27, f9
    fmadds  f5, f29, f8, f5
    fmadds  f3, f23, f8, f3
    stfs    f18, 0xc(sp)
    fmadds  f8, f26, f8, f17
    fmadds  f5, f30, f7, f5
    fadds   f9, f10, f1
    fmadds  f1, f22, f21, f15
    stfs    f5, 0x10(sp)
    fmadds  f2, f22, f6, f2
    fmadds  f3, f22, f7, f3
    fadds   f4, f12, f4
    fmadds  f5, f25, f21, f13
    stfs    f9, 0x14(sp)
    fmadds  f6, f25, f6, f16
    fmadds  f7, f25, f7, f8
    fadds   f8, f11, f0
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    lis     r4, 0x8040
    addi    r3, r30, 0x0
    addi    r4, r4, 0x4788
    bl      PSMTXCopy
    li      r3, 0x1
branch_0x80125d18:
    lwz     r0, 0x2d4(sp)
    lfd     f31, 0x2c8(sp)
    lfd     f30, 0x2c0(sp)
    mtlr    r0
    lfd     f29, 0x2b8(sp)
    lfd     f28, 0x2b0(sp)
    lfd     f27, 0x2a8(sp)
    lfd     f26, 0x2a0(sp)
    lfd     f25, 0x298(sp)
    lfd     f24, 0x290(sp)
    lfd     f23, 0x288(sp)
    lfd     f22, 0x280(sp)
    lfd     f21, 0x278(sp)
    lfd     f20, 0x270(sp)
    lfd     f19, 0x268(sp)
    lfd     f18, 0x260(sp)
    lfd     f17, 0x258(sp)
    lfd     f16, 0x250(sp)
    lfd     f15, 0x248(sp)
    lwz     r31, 0x244(sp)
    lwz     r30, 0x240(sp)
    addi    sp, sp, 0x2d0
    blr


.globl getFlameDirDegree__6TKoopaCFv
getFlameDirDegree__6TKoopaCFv: # 0x80125d74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      getFlameDirRate__6TKoopaCFv
    lwz     r3, 0x70(r31)
    lbz     r0, 0x154(r31)
    lwz     r3, 0x38(r3)
    cmplwi  r0, 0x0
    lfs     f0, 0x2c0(r3)
    fmuls   f0, f1, f0
    beq-    branch_0x80125db0
    fneg    f1, f0
    b       branch_0x80125db4

branch_0x80125db0:
    fmr     f1, f0
branch_0x80125db4:
    lfs     f0, 0x34(r31)
    lwz     r0, 0x3c(sp)
    fadds   f1, f0, f1
    lwz     r31, 0x34(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl attack___10TKoopaBodyFP9THitActor
attack___10TKoopaBodyFP9THitActor: # 0x80125dd0
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    addi    r4, r3, 0x0
    lwz     r12, 0x0(r31)
    addi    r3, r31, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80125e34
    bl      SMS_GetMarioHitActor__Fv
    cmplw   r31, r3
    bne-    branch_0x80125e34
    lfs     f2, -0x514c(rtoc)
    addi    r3, sp, 0x10
    lfs     f0, -0x5178(rtoc)
    stfs    f2, 0x10(sp)
    lfs     f1, -0x50d8(rtoc)
    stfs    f0, 0x14(sp)
    stfs    f2, 0x18(sp)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
branch_0x80125e34:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl receiveMessage__10TKoopaBodyFP9THitActorUl
receiveMessage__10TKoopaBodyFP9THitActorUl: # 0x80125e48
    mflr    r0
    cmpwi   r5, 0xf
    stw     r0, 0x4(sp)
    lis     r6, 0x803f
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    addi    r31, r6, 0x3450
    stw     r30, 0xb0(sp)
    beq-    branch_0x801260e0
    bge-    branch_0x801260e0
    cmpwi   r5, 0xe
    bge-    branch_0x80125e7c
    b       branch_0x801260e0

branch_0x80125e7c:
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf800
    cmplwi  r0, 0x24
    bne-    branch_0x801260e0
    lbz     r0, -0x6588(r13)
    lwz     r30, 0x68(r3)
    extsb.  r0, r0
    bne-    branch_0x80125ed0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6584(r13)
    subi    r0, r3, 0x1ce4
    lis     r3, 0x8012
    stw     r0, -0x6584(r13)
    addi    r4, r3, 0x3a90
    subi    r3, r13, 0x6584
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6588(r13)
branch_0x80125ed0:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x6584
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801260e0
    lbz     r0, -0x65b0(r13)
    extsb.  r0, r0
    bne-    branch_0x80125f24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ac(r13)
    subi    r0, r3, 0x1d04
    lis     r3, 0x8012
    stw     r0, -0x65ac(r13)
    addi    r4, r3, 0x362c
    subi    r3, r13, 0x65ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b0(r13)
branch_0x80125f24:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x65ac
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801260e0
    lbz     r0, -0x65a0(r13)
    extsb.  r0, r0
    bne-    branch_0x80125f80
    subi    r3, r13, 0x659c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x1cf4
    lis     r3, 0x8012
    stw     r0, -0x659c(r13)
    addi    r4, r3, 0x3ff0
    subi    r3, r13, 0x659c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a0(r13)
branch_0x80125f80:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x659c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x801260e0
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80125fdc
    subi    r3, r13, 0x65b4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r3, 0x8012
    stw     r0, -0x65b4(r13)
    addi    r4, r3, 0x3038
    subi    r3, r13, 0x65b4
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x80125fdc:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x65b4
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801260e0
    lbz     r0, -0x6598(r13)
    extsb.  r0, r0
    bne-    branch_0x80126030
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6594(r13)
    subi    r0, r3, 0x1d34
    lis     r3, 0x8012
    stw     r0, -0x6594(r13)
    addi    r4, r3, 0x3f94
    subi    r3, r13, 0x6594
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6598(r13)
branch_0x80126030:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x6594
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801260e0
    lbz     r0, -0x6580(r13)
    extsb.  r0, r0
    bne-    branch_0x80126084
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x657c(r13)
    subi    r0, r3, 0x1d24
    lis     r3, 0x8012
    stw     r0, -0x657c(r13)
    addi    r4, r3, 0x3f38
    subi    r3, r13, 0x657c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6580(r13)
branch_0x80126084:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x657c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x801260e0
    lbz     r0, -0x6590(r13)
    extsb.  r0, r0
    bne-    branch_0x801260d4
    subi    r3, r13, 0x658c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x1d14
    lis     r3, 0x8012
    stw     r0, -0x658c(r13)
    addi    r4, r3, 0x3edc
    subi    r3, r13, 0x658c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6590(r13)
branch_0x801260d4:
    subi    r4, r13, 0x658c
    lwz     r3, 0x8c(r30)
    bl      pushNerve__24TSpineBase_10TLiveActor_FPC24TNerveBase_10TLiveActor_
branch_0x801260e0:
    lwz     r0, 0xbc(sp)
    li      r3, 0x1
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xb8
    blr


.globl attack___10TKoopaHeadFP9THitActor
attack___10TKoopaHeadFP9THitActor: # 0x801260fc
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    addi    r4, r3, 0x0
    lwz     r12, 0x0(r31)
    addi    r3, r31, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80126160
    bl      SMS_GetMarioHitActor__Fv
    cmplw   r31, r3
    bne-    branch_0x80126160
    lfs     f2, -0x514c(rtoc)
    addi    r3, sp, 0x10
    lfs     f0, -0x5178(rtoc)
    stfs    f2, 0x10(sp)
    lfs     f1, -0x50d8(rtoc)
    stfs    f0, 0x14(sp)
    stfs    f2, 0x18(sp)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
branch_0x80126160:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl receiveMessage__10TKoopaHeadFP9THitActorUl
receiveMessage__10TKoopaHeadFP9THitActorUl: # 0x80126174
    mflr    r0
    cmpwi   r5, 0xf
    stw     r0, 0x4(sp)
    lis     r6, 0x803f
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r6, 0x3450
    stw     r30, 0xb8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xb4(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x801261b4
    bge-    branch_0x8012646c
    cmpwi   r5, 0xe
    bge-    branch_0x80126208
    b       branch_0x8012646c

branch_0x801261b4:
    lwz     r3, 0x68(r29)
    bl      getShowered__6TKoopaFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8012646c
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r5, 0x68(r29)
    li      r4, 0x6802
    lwz     r3, -0x6044(r13)
    li      r6, 0x0
    lfs     f1, -0x514c(rtoc)
    addi    r5, r5, 0x10
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    b       branch_0x8012646c

branch_0x80126208:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x24
    bne-    branch_0x8012646c
    lbz     r0, -0x6588(r13)
    lwz     r30, 0x68(r29)
    extsb.  r0, r0
    bne-    branch_0x8012625c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6584(r13)
    subi    r0, r3, 0x1ce4
    lis     r3, 0x8012
    stw     r0, -0x6584(r13)
    addi    r4, r3, 0x3a90
    subi    r3, r13, 0x6584
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6588(r13)
branch_0x8012625c:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x6584
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8012646c
    lbz     r0, -0x65b0(r13)
    extsb.  r0, r0
    bne-    branch_0x801262b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ac(r13)
    subi    r0, r3, 0x1d04
    lis     r3, 0x8012
    stw     r0, -0x65ac(r13)
    addi    r4, r3, 0x362c
    subi    r3, r13, 0x65ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b0(r13)
branch_0x801262b0:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x65ac
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8012646c
    lbz     r0, -0x65a0(r13)
    extsb.  r0, r0
    bne-    branch_0x8012630c
    subi    r3, r13, 0x659c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x1cf4
    lis     r3, 0x8012
    stw     r0, -0x659c(r13)
    addi    r4, r3, 0x3ff0
    subi    r3, r13, 0x659c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a0(r13)
branch_0x8012630c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x659c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8012646c
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80126368
    subi    r3, r13, 0x65b4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r3, 0x8012
    stw     r0, -0x65b4(r13)
    addi    r4, r3, 0x3038
    subi    r3, r13, 0x65b4
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x80126368:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x65b4
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8012646c
    lbz     r0, -0x6598(r13)
    extsb.  r0, r0
    bne-    branch_0x801263bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6594(r13)
    subi    r0, r3, 0x1d34
    lis     r3, 0x8012
    stw     r0, -0x6594(r13)
    addi    r4, r3, 0x3f94
    subi    r3, r13, 0x6594
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6598(r13)
branch_0x801263bc:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x6594
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8012646c
    lbz     r0, -0x6580(r13)
    extsb.  r0, r0
    bne-    branch_0x80126410
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x657c(r13)
    subi    r0, r3, 0x1d24
    lis     r3, 0x8012
    stw     r0, -0x657c(r13)
    addi    r4, r3, 0x3f38
    subi    r3, r13, 0x657c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6580(r13)
branch_0x80126410:
    lwz     r3, 0x8c(r30)
    subi    r4, r13, 0x657c
    lwz     r0, 0x14(r3)
    cmplw   r4, r0
    beq-    branch_0x8012646c
    lbz     r0, -0x6590(r13)
    extsb.  r0, r0
    bne-    branch_0x80126460
    subi    r3, r13, 0x658c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x1d14
    lis     r3, 0x8012
    stw     r0, -0x658c(r13)
    addi    r4, r3, 0x3edc
    subi    r3, r13, 0x658c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6590(r13)
branch_0x80126460:
    subi    r4, r13, 0x658c
    lwz     r3, 0x8c(r30)
    bl      pushNerve__24TSpineBase_10TLiveActor_FPC24TNerveBase_10TLiveActor_
branch_0x8012646c:
    lwz     r0, 0xc4(sp)
    li      r3, 0x1
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    addi    sp, sp, 0xc0
    blr


.globl attack___10TKoopaHandFP9THitActor
attack___10TKoopaHandFP9THitActor: # 0x8012648c
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r4)
    mr      r4, r0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__10TKoopaHandFP9THitActorUl
receiveMessage__10TKoopaHandFP9THitActorUl: # 0x801264c8
    li      r3, 0x1
    blr


.globl attack___11TKoopaFlameFP9THitActor
attack___11TKoopaFlameFP9THitActor: # 0x801264d0
    mflr    r0
    li      r5, 0xa
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8012657c
    lwz     r0, -0x60b8(r13)
    cmplw   r31, r0
    bne-    branch_0x8012657c
    lwz     r4, 0x68(r30)
    addi    r3, sp, 0x60
    lfs     f2, -0x514c(rtoc)
    lwz     r4, 0x70(r4)
    lfs     f0, -0x5178(rtoc)
    lwz     r4, 0x38(r4)
    lfs     f1, 0x2e8(r4)
    stfs    f2, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f2, 0x68(sp)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x68(r30)
    li      r0, 0x1
    li      r4, 0x3
    stb     r0, 0x155(r3)
    li      r5, 0x0
    lwz     r3, 0x68(r30)
    lwz     r6, 0x70(r3)
    lwz     r6, 0x38(r6)
    lfs     f1, 0x158(r6)
    bl      changeAnm__6TKoopaFiif
    lwz     r3, 0x68(r30)
    li      r0, 0xf0
    stw     r0, 0x19c(r3)
branch_0x8012657c:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl receiveMessage__11TKoopaFlameFP9THitActorUl
receiveMessage__11TKoopaFlameFP9THitActorUl: # 0x80126594
    cmpwi   r5, 0xf
    beq-    branch_0x801265a0
    b       branch_0x801265a8

branch_0x801265a0:
    li      r3, 0x0
    blr

branch_0x801265a8:
    li      r3, 0x1
    blr


.globl control__11TKoopaFlameFv
control__11TKoopaFlameFv: # 0x801265b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, 0x8c(r3)
    lfs     f0, 0x88(r3)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801265f4
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    b       branch_0x80126690

branch_0x801265f4:
    lfs     f1, 0x8c(r3)
    lfs     f0, 0x84(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(r3)
    lfs     f6, 0x94(r3)
    lfs     f0, -0x514c(rtoc)
    lfs     f5, 0x8c(r3)
    fcmpo   cr0, f6, f0
    lfs     f4, 0x78(r3)
    lfs     f0, 0x6c(r3)
    lfs     f3, 0x7c(r3)
    lfs     f2, 0x70(r3)
    fmadds  f4, f4, f5, f0
    lfs     f1, 0x80(r3)
    lfs     f0, 0x74(r3)
    fmadds  f3, f3, f5, f2
    lfs     f2, 0x90(r3)
    fmadds  f1, f1, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8012664c
    lfs     f0, -0x5194(rtoc)
    fmuls   f6, f0, f2
branch_0x8012664c:
    stfs    f4, 0x10(r3)
    stfs    f3, 0x14(r3)
    stfs    f1, 0x18(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    stfs    f2, 0x50(r3)
    stfs    f6, 0x54(r3)
    stfs    f2, 0x58(r3)
    stfs    f6, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
branch_0x80126690:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__11TKoopaPartsFUlPQ26JDrama9TGraphics
perform__11TKoopaPartsFUlPQ26JDrama9TGraphics: # 0x801266a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x8012671c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80126710

branch_0x801266ec:
    mr      r3, r29
    lwz     r4, 0x44(r29)
    lwz     r12, 0x0(r29)
    lwzx    r4, r4, r31
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80126710:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x801266ec
branch_0x8012671c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl control__11TKoopaPartsFv
control__11TKoopaPartsFv: # 0x80126738
    blr


.globl __ct__11TKoopaPartsFPCcUlP6TKoopaf
__ct__11TKoopaPartsFPCcUlP6TKoopaf: # 0x8012673c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    fmr     f31, f1
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r5
    stw     r29, 0x74(sp)
    stw     r28, 0x70(sp)
    mr      r28, r6
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    lwz     r31, 0x8(sp)
    subi    r3, r3, 0x1de0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x8038
    stw     r0, 0x20(r31)
    addi    r29, r3, 0x5d88
    addi    r3, r29, 0x0
    stw     r28, 0x68(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x0
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x48
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x48(sp)
    addi    r3, sp, 0x64
    addi    r4, sp, 0x44
    stw     r0, 0x44(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x64(sp)
    addi    r5, sp, 0x54
    addi    r4, r29, 0x0
    stw     r0, 0x60(sp)
    addi    r3, sp, 0x50
    addi    r6, sp, 0x8
    lwz     r0, 0x60(sp)
    stw     r0, 0x54(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    fmr     f1, f31
    mr      r3, r31
    fmr     f2, f31
    mr      r4, r30
    fmr     f3, f31
    fmr     f4, f31
    li      r5, 0x5
    lis     r6, 0x8800
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x2
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x1000
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x800
    stw     r0, 0x64(r31)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl execute__18TNerveKoopaGetDownCFP24TSpineBase_10TLiveActor_
execute__18TNerveKoopaGetDownCFP24TSpineBase_10TLiveActor_: # 0x80126894
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stw     r31, 0xfc(sp)
    stw     r30, 0xf8(sp)
    stw     r29, 0xf4(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xf0(sp)
    mr      r28, r4
    lwz     r5, 0x0(r4)
    lis     r4, 0x8038
    addi    r30, r4, 0x5798
    lwz     r3, 0x74(r5)
    addi    r31, r5, 0x0
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x801269b8
    bge-    branch_0x801268f0
    cmpwi   r3, 0x0
    bge-    branch_0x801268fc
    b       branch_0x80126b00

branch_0x801268f0:
    cmpwi   r3, 0x7
    beq-    branch_0x80126ae0
    b       branch_0x80126b00

branch_0x801268fc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80126c10
    lwz     r5, 0x70(r31)
    li      r4, 0x1
    lwz     r3, 0x74(r31)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x1e4(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80126970
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80126964
    li      r4, 0x0
    b       branch_0x80126968

branch_0x80126964:
    lwz     r4, 0x4(r3)
branch_0x80126968:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80126970:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80126990
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80126990:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r29, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r29)
    b       branch_0x80126c10

branch_0x801269b8:
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x5b0
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x5b0
    mtlr    r12
    blrl
    lwz     r4, 0x70(r31)
    lwz     r29, 0x20(r28)
    lwz     r4, 0x38(r4)
    lfs     f31, 0xf4(r4)
    bl      getNumGripsDead__8TBathtubCFv
    addi    r0, r3, 0x2
    lfd     f1, -0x5148(rtoc)
    mullw   r0, r29, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0xec(sp)
    lis     r0, 0x4330
    stw     r0, 0xe8(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f0, f31
    blt-    branch_0x80126c10
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80126c10
    lwz     r5, 0x70(r31)
    li      r4, 0x7
    lwz     r3, 0x74(r31)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x1e4(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80126a98
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80126a8c
    li      r4, 0x0
    b       branch_0x80126a90

branch_0x80126a8c:
    lwz     r4, 0x1c(r3)
branch_0x80126a90:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80126a98:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80126ab8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80126ab8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r29, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r29)
    b       branch_0x80126c10

branch_0x80126ae0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80126c10
    li      r3, 0x1
    b       branch_0x80126c14

branch_0x80126b00:
    lwz     r5, 0x70(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x1e4(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80126b5c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80126b50
    li      r4, 0x0
    b       branch_0x80126b54

branch_0x80126b50:
    lwz     r4, 0x0(r3)
branch_0x80126b54:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80126b5c:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80126b7c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80126b7c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lbz     r0, -0x656c(r13)
    extsb.  r0, r0
    bne-    branch_0x80126be4
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x5b0
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x5b0
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r3, -0x6570(r13)
    stb     r0, -0x656c(r13)
branch_0x80126be4:
    lwz     r3, -0x6570(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r29, 0x0
    li      r4, 0xf5
    li      r6, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80126c10:
    li      r3, 0x0
branch_0x80126c14:
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lwz     r31, 0xfc(sp)
    mtlr    r0
    lwz     r30, 0xf8(sp)
    lwz     r29, 0xf4(sp)
    lwz     r28, 0xf0(sp)
    addi    sp, sp, 0x108
    blr


.globl execute__22TNerveKoopaGetShoweredCFP24TSpineBase_10TLiveActor_
execute__22TNerveKoopaGetShoweredCFP24TSpineBase_10TLiveActor_: # 0x80126c38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0xe
    lwz     r5, 0x70(r30)
    lwz     r3, 0x74(r30)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x298(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80126cb0
    lwz     r3, 0x74(r30)
    li      r4, 0xe
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80126ca4
    li      r4, 0x0
    b       branch_0x80126ca8

branch_0x80126ca4:
    lwz     r4, 0x38(r3)
branch_0x80126ca8:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80126cb0:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80126cd0
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80126cd0:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    li      r4, 0x0
    li      r5, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lwz     r3, 0x74(r30)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80126d14
    li      r3, 0x1
    b       branch_0x80126d18

branch_0x80126d14:
    li      r3, 0x0
branch_0x80126d18:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl execute__18TNerveKoopaStaggerCFP24TSpineBase_10TLiveActor_
execute__18TNerveKoopaStaggerCFP24TSpineBase_10TLiveActor_: # 0x80126d34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x9
    lwz     r5, 0x70(r30)
    lwz     r3, 0x74(r30)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x1d0(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80126dac
    lwz     r3, 0x74(r30)
    li      r4, 0x9
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80126da0
    li      r4, 0x0
    b       branch_0x80126da4

branch_0x80126da0:
    lwz     r4, 0x24(r3)
branch_0x80126da4:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80126dac:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80126dcc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80126dcc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    li      r4, 0x0
    li      r5, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lwz     r3, 0x74(r30)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80126e10
    li      r3, 0x1
    b       branch_0x80126e14

branch_0x80126e10:
    li      r3, 0x0
branch_0x80126e14:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl execute__18TNerveKoopaProvokeCFP24TSpineBase_10TLiveActor_
execute__18TNerveKoopaProvokeCFP24TSpineBase_10TLiveActor_: # 0x80126e30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    lwz     r5, 0x0(r4)
    li      r4, 0x6
    lwz     r3, 0x74(r5)
    mr      r29, r5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80126ea4
    lwz     r3, 0x74(r29)
    li      r4, 0x6
    bl      setBckFromIndex__6MActorFi
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80126e98
    li      r4, 0x0
    b       branch_0x80126e9c

branch_0x80126e98:
    lwz     r4, 0x18(r3)
branch_0x80126e9c:
    mr      r3, r29
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80126ea4:
    lwz     r3, 0x74(r29)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80126ec4
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80126ec4:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r30, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x5194(rtoc)
    li      r4, 0x0
    lfs     f0, -0x5130(rtoc)
    li      r5, 0x0
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
    lwz     r3, 0x74(r29)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80126f78
    lbz     r0, -0x65a8(r13)
    extsb.  r0, r0
    bne-    branch_0x80126f50
    subi    r3, r13, 0x65a4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65a4(r13)
    subi    r0, r3, 0x1cc4
    lis     r4, 0x8012
    stw     r0, -0x65a4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3480
    addi    r4, r4, 0x449c
    subi    r3, r13, 0x65a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a8(r13)
branch_0x80126f50:
    lwz     r0, 0x14(r31)
    subi    r4, r13, 0x65a4
    cmplwi  r0, 0x0
    beq-    branch_0x80126f64
    stw     r0, 0x1c(r31)
branch_0x80126f64:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    li      r3, 0x0
    stw     r4, 0x14(r31)
    b       branch_0x80126f7c

branch_0x80126f78:
    li      r3, 0x0
branch_0x80126f7c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl execute__16TNerveKoopaFlameCFP24TSpineBase_10TLiveActor_
execute__16TNerveKoopaFlameCFP24TSpineBase_10TLiveActor_: # 0x80126f98
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x368(sp)
    stfd    f31, 0x360(sp)
    stmw    r27, 0x34c(sp)
    mr      r30, r4
    addi    r29, r3, 0x3450
    lwz     r5, 0x0(r4)
    lis     r4, 0x8038
    addi    r28, r4, 0x5798
    lwz     r3, 0x74(r5)
    addi    r31, r5, 0x0
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x4
    beq-    branch_0x8012768c
    bge-    branch_0x80126fec
    cmpwi   r3, 0x3
    bge-    branch_0x8012711c
    b       branch_0x80127990

branch_0x80126fec:
    cmpwi   r3, 0x6
    bge-    branch_0x80127990
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80127110
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8012705c
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80127050
    li      r4, 0x0
    b       branch_0x80127054

branch_0x80127050:
    lwz     r4, 0x10(r3)
branch_0x80127054:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8012705c:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012707c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x8012707c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r27, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x5194(rtoc)
    lfs     f0, -0x5130(rtoc)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r27)
    lbz     r0, -0x65a0(r13)
    extsb.  r0, r0
    bne-    branch_0x801270ec
    subi    r3, r13, 0x659c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x1cf4
    lis     r3, 0x8012
    stw     r0, -0x659c(r13)
    addi    r4, r3, 0x3ff0
    subi    r3, r13, 0x659c
    addi    r5, r29, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a0(r13)
branch_0x801270ec:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x659c
    cmplwi  r0, 0x0
    beq-    branch_0x80127100
    stw     r0, 0x1c(r30)
branch_0x80127100:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    b       branch_0x80127a30

branch_0x80127110:
    li      r0, 0x0
    stb     r0, 0x155(r31)
    b       branch_0x80127a30

branch_0x8012711c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80127a30
    lbz     r0, 0x155(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8012717c
    lis     r27, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r27, 0x7653
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80127174
    subi    r3, r27, 0x7653
    addi    r4, r31, 0x158
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80127174:
    li      r0, 0x0
    stb     r0, 0x155(r31)
branch_0x8012717c:
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801271f8
    lbz     r0, -0x65a8(r13)
    extsb.  r0, r0
    bne-    branch_0x801271d0
    subi    r3, r13, 0x65a4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65a4(r13)
    subi    r0, r3, 0x1cc4
    lis     r3, 0x8012
    stw     r0, -0x65a4(r13)
    addi    r4, r3, 0x449c
    subi    r3, r13, 0x65a4
    addi    r5, r29, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a8(r13)
branch_0x801271d0:
    lwz     r0, 0x14(r30)
    subi    r4, r13, 0x65a4
    cmplwi  r0, 0x0
    beq-    branch_0x801271e4
    stw     r0, 0x1c(r30)
branch_0x801271e4:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    li      r3, 0x0
    stw     r4, 0x14(r30)
    b       branch_0x80127a34

branch_0x801271f8:
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x5b0
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x5b0
    mtlr    r12
    blrl
    lwz     r6, -0x609c(r13)
    mr      r27, r3
    lwz     r5, -0x60a0(r13)
    addi    r3, sp, 0x320
    lwz     r4, -0x60a4(r13)
    lfs     f3, 0x0(r6)
    lfs     f2, 0x0(r5)
    lfs     f1, 0x0(r4)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f2, 0x324(r3)
    mr      r3, r27
    lfs     f1, 0x320(sp)
    addi    r5, sp, 0x310
    lfs     f0, 0x324(sp)
    fmuls   f1, f1, f2
    addi    r6, r31, 0x150
    fmuls   f0, f0, f2
    stfs    f1, 0x310(sp)
    stfs    f0, 0x314(sp)
    lfs     f0, 0x328(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x318(sp)
    lwz     r7, 0x70(r31)
    lwz     r4, -0x60b4(r13)
    lwz     r7, 0x38(r7)
    lfs     f1, 0x144(r7)
    bl      getNextGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
    clrlwi. r0, r3, 24
    addi    r28, r3, 0x0
    bne-    branch_0x80127308
    lwz     r6, -0x609c(r13)
    addi    r3, sp, 0x32c
    lwz     r5, -0x60a0(r13)
    lwz     r4, -0x60a4(r13)
    lfs     f3, 0x0(r6)
    lfs     f2, 0x0(r5)
    lfs     f1, 0x0(r4)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f2, 0x310(r3)
    mr      r3, r27
    lfs     f1, 0x32c(sp)
    addi    r5, sp, 0x310
    lfs     f0, 0x330(sp)
    fmuls   f1, f1, f2
    fmuls   f0, f0, f2
    stfs    f1, 0x310(sp)
    stfs    f0, 0x314(sp)
    lfs     f0, 0x334(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x318(sp)
    lwz     r4, -0x60b4(r13)
    bl      getNextJuncture__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stfs    f1, 0x150(r31)
branch_0x80127308:
    lfs     f1, 0x150(r31)
    lfs     f0, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fsubs   f1, f1, f0
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lwz     r3, 0x70(r31)
    lfs     f0, -0x5150(rtoc)
    lwz     r3, 0x38(r3)
    fadds   f2, f0, f1
    lfs     f1, 0x130(r3)
    fneg    f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x80127350
    li      r3, -0x1
    b       branch_0x80127364

branch_0x80127350:
    fcmpo   cr0, f2, f1
    ble-    branch_0x80127360
    li      r3, 0x1
    b       branch_0x80127364

branch_0x80127360:
    li      r3, 0x0
branch_0x80127364:
    clrlwi. r0, r28, 24
    beq-    branch_0x801273d8
    lbz     r0, -0x65a8(r13)
    extsb.  r0, r0
    bne-    branch_0x801273b4
    subi    r3, r13, 0x65a4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65a4(r13)
    subi    r0, r3, 0x1cc4
    lis     r3, 0x8012
    stw     r0, -0x65a4(r13)
    addi    r4, r3, 0x449c
    subi    r3, r13, 0x65a4
    addi    r5, r29, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a8(r13)
branch_0x801273b4:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x65a4
    cmplwi  r0, 0x0
    beq-    branch_0x801273c8
    stw     r0, 0x1c(r30)
branch_0x801273c8:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    b       branch_0x80127a30

branch_0x801273d8:
    cmpwi   r3, 0x0
    beq-    branch_0x8012753c
    bge-    branch_0x801273f0
    cmpwi   r3, -0x1
    bge-    branch_0x801273fc
    b       branch_0x80127a30

branch_0x801273f0:
    cmpwi   r3, 0x2
    bge-    branch_0x80127a30
    b       branch_0x8012749c

branch_0x801273fc:
    lbz     r0, -0x65c0(r13)
    extsb.  r0, r0
    bne-    branch_0x80127444
    subi    r3, r13, 0x65bc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65bc(r13)
    subi    r0, r3, 0x21c4
    lis     r3, 0x8012
    stw     r0, -0x65bc(r13)
    addi    r4, r3, 0x7ab8
    subi    r3, r13, 0x65bc
    addi    r5, r29, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65c0(r13)
branch_0x80127444:
    subi    r5, r13, 0x65bc
    cmplwi  r5, 0x0
    beq-    branch_0x80127a30
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8012748c
    stw     r0, 0x1c(r30)
    lwz     r3, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r3, r0
    bge-    branch_0x8012748c
    lwz     r4, 0x14(r30)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r30)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012748c:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r5, 0x14(r30)
    b       branch_0x80127a30

branch_0x8012749c:
    lbz     r0, -0x65c8(r13)
    extsb.  r0, r0
    bne-    branch_0x801274e4
    subi    r3, r13, 0x65c4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65c4(r13)
    subi    r0, r3, 0x21d4
    lis     r3, 0x8012
    stw     r0, -0x65c4(r13)
    addi    r4, r3, 0x7a4c
    subi    r3, r13, 0x65c4
    addi    r5, r29, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65c8(r13)
branch_0x801274e4:
    subi    r5, r13, 0x65c4
    cmplwi  r5, 0x0
    beq-    branch_0x80127a30
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8012752c
    stw     r0, 0x1c(r30)
    lwz     r3, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r3, r0
    bge-    branch_0x8012752c
    lwz     r4, 0x14(r30)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r30)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012752c:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r5, 0x14(r30)
    b       branch_0x80127a30

branch_0x8012753c:
    lwz     r4, -0x60b4(r13)
    mr      r3, r31
    bl      getTargetDir__6TKoopaCFRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x150(r31)
    lfs     f2, -0x5154(rtoc)
    fsubs   f1, f1, f0
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f2, -0x5150(rtoc)
    li      r4, 0x5
    lfs     f0, -0x514c(rtoc)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi    r0, r0, 31
    stb     r0, 0x154(r31)
    lwz     r5, 0x70(r31)
    lwz     r3, 0x74(r31)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x158(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x801275dc
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x801275d0
    li      r4, 0x0
    b       branch_0x801275d4

branch_0x801275d0:
    lwz     r4, 0x14(r3)
branch_0x801275d4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x801275dc:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x801275fc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x801275fc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r28, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r28)
    lbz     r0, -0x65a0(r13)
    extsb.  r0, r0
    bne-    branch_0x80127668
    subi    r3, r13, 0x659c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x1cf4
    lis     r3, 0x8012
    stw     r0, -0x659c(r13)
    addi    r4, r3, 0x3ff0
    subi    r3, r13, 0x659c
    addi    r5, r29, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a0(r13)
branch_0x80127668:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x659c
    cmplwi  r0, 0x0
    beq-    branch_0x8012767c
    stw     r0, 0x1c(r30)
branch_0x8012767c:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    b       branch_0x80127a30

branch_0x8012768c:
    lwz     r3, 0x70(r31)
    lwz     r4, 0x20(r30)
    lwz     r3, 0x38(r3)
    lwz     r0, 0x220(r3)
    cmpw    r4, r0
    blt-    branch_0x80127a30
    clrlwi. r0, r4, 29
    bne-    branch_0x801278c4
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x5b0
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x5b0
    mtlr    r12
    blrl
    lwz     r6, -0x609c(r13)
    mr      r27, r3
    lwz     r5, -0x60a0(r13)
    addi    r3, sp, 0x2d8
    lwz     r4, -0x60a4(r13)
    lfs     f3, 0x0(r6)
    lfs     f2, 0x0(r5)
    lfs     f1, 0x0(r4)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f2, 0x324(r3)
    mr      r3, r27
    lfs     f1, 0x2d8(sp)
    addi    r5, sp, 0x2c8
    lfs     f0, 0x2dc(sp)
    fmuls   f1, f1, f2
    addi    r6, r31, 0x150
    fmuls   f0, f0, f2
    stfs    f1, 0x2c8(sp)
    stfs    f0, 0x2cc(sp)
    lfs     f0, 0x2e0(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x2d0(sp)
    lwz     r7, 0x70(r31)
    lwz     r4, -0x60b4(r13)
    lwz     r7, 0x38(r7)
    lfs     f1, 0x144(r7)
    bl      getNextGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
    clrlwi. r0, r3, 24
    addi    r28, r3, 0x0
    bne-    branch_0x801277bc
    lwz     r6, -0x609c(r13)
    addi    r3, sp, 0x2e4
    lwz     r5, -0x60a0(r13)
    lwz     r4, -0x60a4(r13)
    lfs     f3, 0x0(r6)
    lfs     f2, 0x0(r5)
    lfs     f1, 0x0(r4)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f2, 0x310(r3)
    mr      r3, r27
    lfs     f1, 0x2e4(sp)
    addi    r5, sp, 0x2c8
    lfs     f0, 0x2e8(sp)
    fmuls   f1, f1, f2
    fmuls   f0, f0, f2
    stfs    f1, 0x2c8(sp)
    stfs    f0, 0x2cc(sp)
    lfs     f0, 0x2ec(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x2d0(sp)
    lwz     r4, -0x60b4(r13)
    bl      getNextJuncture__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stfs    f1, 0x150(r31)
branch_0x801277bc:
    lfs     f1, 0x150(r31)
    lfs     f0, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fsubs   f1, f1, f0
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lwz     r3, 0x70(r31)
    lfs     f0, -0x5150(rtoc)
    lwz     r5, 0x38(r3)
    fadds   f2, f0, f1
    lfs     f1, 0x130(r5)
    fneg    f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x80127804
    li      r3, -0x1
    b       branch_0x80127818

branch_0x80127804:
    fcmpo   cr0, f2, f1
    ble-    branch_0x80127814
    li      r3, 0x1
    b       branch_0x80127818

branch_0x80127814:
    li      r3, 0x0
branch_0x80127818:
    clrlwi. r0, r28, 24
    bne-    branch_0x80127828
    cmpwi   r3, 0x0
    beq-    branch_0x80127a30
branch_0x80127828:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lfs     f31, 0x158(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8012787c
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80127870
    li      r4, 0x0
    b       branch_0x80127874

branch_0x80127870:
    lwz     r4, 0xc(r3)
branch_0x80127874:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8012787c:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012789c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x8012789c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r28, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r28)
    b       branch_0x80127a30

branch_0x801278c4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80127a30
    lwz     r4, 0x70(r31)
    lwz     r3, 0x20(r30)
    lwz     r5, 0x38(r4)
    lwz     r0, 0x248(r5)
    cmpw    r3, r0
    blt-    branch_0x80127a30
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lfs     f31, 0x158(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80127948
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8012793c
    li      r4, 0x0
    b       branch_0x80127940

branch_0x8012793c:
    lwz     r4, 0xc(r3)
branch_0x80127940:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80127948:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80127968
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80127968:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r28, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r28)
    b       branch_0x80127a30

branch_0x80127990:
    lwz     r5, 0x70(r31)
    li      r4, 0x5
    lwz     r3, 0x74(r31)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x158(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x801279ec
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x801279e0
    li      r4, 0x0
    b       branch_0x801279e4

branch_0x801279e0:
    lwz     r4, 0x14(r3)
branch_0x801279e4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x801279ec:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80127a0c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80127a0c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r28, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r28)
branch_0x80127a30:
    li      r3, 0x0
branch_0x80127a34:
    lmw     r27, 0x34c(sp)
    lwz     r0, 0x36c(sp)
    lfd     f31, 0x360(sp)
    addi    sp, sp, 0x368
    mtlr    r0
    blr


.globl __dt__16TNerveKoopaTurnRFv
__dt__16TNerveKoopaTurnRFv: # 0x80127a4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80127aa0
    lis     r3, 0x803c
    subi    r0, r3, 0x21d4
    stw     r0, 0x0(r31)
    beq-    branch_0x80127a90
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    stw     r0, 0x0(r31)
    beq-    branch_0x80127a90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80127a90:
    extsh.  r0, r4
    ble-    branch_0x80127aa0
    mr      r3, r31
    bl      __dl__FPv
branch_0x80127aa0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TNerveKoopaTurnLFv
__dt__16TNerveKoopaTurnLFv: # 0x80127ab8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80127b0c
    lis     r3, 0x803c
    subi    r0, r3, 0x21c4
    stw     r0, 0x0(r31)
    beq-    branch_0x80127afc
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    stw     r0, 0x0(r31)
    beq-    branch_0x80127afc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80127afc:
    extsh.  r0, r4
    ble-    branch_0x80127b0c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80127b0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getSaveParam__13TEnemyManagerCFv
getSaveParam__13TEnemyManagerCFv: # 0x80127b24
    lwz     r3, 0x38(r3)
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c
set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c: # 0x80127b2c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl execute__15TNerveKoopaFallCFP24TSpineBase_10TLiveActor_
execute__15TNerveKoopaFallCFP24TSpineBase_10TLiveActor_: # 0x80127b3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    lwz     r31, 0x0(r4)
    li      r4, 0x2
    lwz     r5, 0x70(r31)
    lwz     r3, 0x74(r31)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x2fc(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80127bb0
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80127ba4
    li      r4, 0x0
    b       branch_0x80127ba8

branch_0x80127ba4:
    lwz     r4, 0x8(r3)
branch_0x80127ba8:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80127bb0:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80127bd0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80127bd0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    li      r3, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl execute__17TNerveKoopaTumbleCFP24TSpineBase_10TLiveActor_
execute__17TNerveKoopaTumbleCFP24TSpineBase_10TLiveActor_: # 0x80127c10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    mr      r28, r4
    lwz     r31, 0x0(r4)
    li      r4, 0x8
    lwz     r5, 0x70(r31)
    lwz     r3, 0x74(r31)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x180(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80127c98
    lwz     r3, 0x74(r31)
    li      r4, 0x8
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80127c8c
    li      r4, 0x0
    b       branch_0x80127c90

branch_0x80127c8c:
    lwz     r4, 0x20(r3)
branch_0x80127c90:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80127c98:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80127cb8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x80127cb8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r29, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    li      r4, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r29)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x20(r28)
    cmpwi   r0, 0xbe
    bne-    branch_0x80127d98
    lwz     r3, -0x7108(r13)
    li      r4, 0x27
    lfs     f1, -0x5178(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lbz     r0, -0x6574(r13)
    extsb.  r0, r0
    bne-    branch_0x80127d50
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8038
    addi    r29, r3, 0x5d48
    lwz     r28, 0x4(r4)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x0
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r3, -0x6578(r13)
    stb     r0, -0x6574(r13)
branch_0x80127d50:
    lwz     r3, -0x6578(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r30, 0x0
    li      r4, 0xf5
    li      r6, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80127d98
    lwz     r3, -0x60f0(r13)
    li      r4, 0x1
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
branch_0x80127d98:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80127db8
    li      r3, 0x1
    b       branch_0x80127dbc

branch_0x80127db8:
    li      r3, 0x0
branch_0x80127dbc:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x78
    blr


.globl execute__15TNerveKoopaWaitCFP24TSpineBase_10TLiveActor_
execute__15TNerveKoopaWaitCFP24TSpineBase_10TLiveActor_: # 0x80127de0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x260(sp)
    stfd    f31, 0x258(sp)
    stmw    r26, 0x240(sp)
    mr      r31, r4
    addi    r28, r3, 0x3450
    lis     r3, 0x8038
    addi    r29, r3, 0x5798
    lwz     r4, 0x0(r4)
    lwz     r0, 0x19c(r4)
    addi    r30, r4, 0x0
    cmpwi   r0, 0x0
    ble-    branch_0x80127ec4
    lwz     r5, 0x70(r30)
    li      r4, 0xc
    lwz     r3, 0x74(r30)
    lwz     r5, 0x38(r5)
    lfs     f31, 0x1bc(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80127e78
    lwz     r3, 0x74(r30)
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80127e6c
    li      r4, 0x0
    b       branch_0x80127e70

branch_0x80127e6c:
    lwz     r4, 0x30(r3)
branch_0x80127e70:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80127e78:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x80127e98
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
branch_0x80127e98:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r27, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    li      r3, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r27)
    b       branch_0x801286a4

branch_0x80127ec4:
    lwz     r4, -0x5db8(r13)
    addi    r3, r29, 0x5b0
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x5b0
    mtlr    r12
    blrl
    lwz     r6, -0x609c(r13)
    mr      r26, r3
    lwz     r5, -0x60a0(r13)
    addi    r3, sp, 0x220
    lwz     r4, -0x60a4(r13)
    lfs     f3, 0x0(r6)
    lfs     f2, 0x0(r5)
    lfs     f1, 0x0(r4)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c
    lwz     r3, 0x70(r30)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f2, 0x324(r3)
    mr      r3, r26
    lfs     f1, 0x220(sp)
    addi    r5, sp, 0x210
    lfs     f0, 0x224(sp)
    fmuls   f1, f1, f2
    addi    r6, r30, 0x150
    fmuls   f0, f0, f2
    stfs    f1, 0x210(sp)
    stfs    f0, 0x214(sp)
    lfs     f0, 0x228(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x218(sp)
    lwz     r7, 0x70(r30)
    lwz     r4, -0x60b4(r13)
    lwz     r7, 0x38(r7)
    lfs     f1, 0x144(r7)
    bl      getNextGrip__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
    clrlwi. r0, r3, 24
    addi    r27, r3, 0x0
    bne-    branch_0x80127fd4
    lwz     r6, -0x609c(r13)
    addi    r3, sp, 0x22c
    lwz     r5, -0x60a0(r13)
    lwz     r4, -0x60a4(r13)
    lfs     f3, 0x0(r6)
    lfs     f2, 0x0(r5)
    lfs     f1, 0x0(r4)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80127b2c
    lwz     r3, 0x70(r30)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f2, 0x310(r3)
    mr      r3, r26
    lfs     f1, 0x22c(sp)
    addi    r5, sp, 0x210
    lfs     f0, 0x230(sp)
    fmuls   f1, f1, f2
    fmuls   f0, f0, f2
    stfs    f1, 0x210(sp)
    stfs    f0, 0x214(sp)
    lfs     f0, 0x234(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x218(sp)
    lwz     r4, -0x60b4(r13)
    bl      getNextJuncture__8TBathtubCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stfs    f1, 0x150(r30)
branch_0x80127fd4:
    lfs     f1, 0x150(r30)
    lfs     f0, 0x34(r30)
    lfs     f2, -0x5154(rtoc)
    fsubs   f1, f1, f0
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lwz     r3, 0x70(r30)
    lfs     f0, -0x5150(rtoc)
    lwz     r5, 0x38(r3)
    fadds   f1, f0, f1
    lfs     f2, 0x130(r5)
    fneg    f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8012801c
    li      r3, -0x1
    b       branch_0x80128030

branch_0x8012801c:
    fcmpo   cr0, f1, f2
    ble-    branch_0x8012802c
    li      r3, 0x1
    b       branch_0x80128030

branch_0x8012802c:
    li      r3, 0x0
branch_0x80128030:
    clrlwi. r0, r27, 24
    beq-    branch_0x80128490
    cmpwi   r3, 0x0
    beq-    branch_0x8012819c
    bge-    branch_0x80128050
    cmpwi   r3, -0x1
    bge-    branch_0x8012805c
    b       branch_0x8012819c

branch_0x80128050:
    cmpwi   r3, 0x2
    bge-    branch_0x8012819c
    b       branch_0x801280fc

branch_0x8012805c:
    lbz     r0, -0x65c0(r13)
    extsb.  r0, r0
    bne-    branch_0x801280a4
    subi    r3, r13, 0x65bc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65bc(r13)
    subi    r0, r3, 0x21c4
    lis     r3, 0x8012
    stw     r0, -0x65bc(r13)
    addi    r4, r3, 0x7ab8
    subi    r3, r13, 0x65bc
    addi    r5, r28, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65c0(r13)
branch_0x801280a4:
    subi    r5, r13, 0x65bc
    cmplwi  r5, 0x0
    beq-    branch_0x80128488
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801280ec
    stw     r0, 0x1c(r31)
    lwz     r3, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r3, r0
    bge-    branch_0x801280ec
    lwz     r4, 0x14(r31)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r31)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x801280ec:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r5, 0x14(r31)
    b       branch_0x80128488

branch_0x801280fc:
    lbz     r0, -0x65c8(r13)
    extsb.  r0, r0
    bne-    branch_0x80128144
    subi    r3, r13, 0x65c4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65c4(r13)
    subi    r0, r3, 0x21d4
    lis     r3, 0x8012
    stw     r0, -0x65c4(r13)
    addi    r4, r3, 0x7a4c
    subi    r3, r13, 0x65c4
    addi    r5, r28, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65c8(r13)
branch_0x80128144:
    subi    r5, r13, 0x65c4
    cmplwi  r5, 0x0
    beq-    branch_0x80128488
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8012818c
    stw     r0, 0x1c(r31)
    lwz     r3, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r3, r0
    bge-    branch_0x8012818c
    lwz     r4, 0x14(r31)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r31)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8012818c:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r5, 0x14(r31)
    b       branch_0x80128488

branch_0x8012819c:
    lwz     r3, 0x74(r30)
    li      r4, 0xc
    lfs     f31, 0x1bc(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x801281f0
    lwz     r3, 0x74(r30)
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x801281e4
    li      r4, 0x0
    b       branch_0x801281e8

branch_0x801281e4:
    lwz     r4, 0x30(r3)
branch_0x801281e8:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x801281f0:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x80128210
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
branch_0x80128210:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r27, r3
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    lfs     f0, -0x5130(rtoc)
    li      r4, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r27)
    lwz     r3, 0x74(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0xc
    beq-    branch_0x80128250
    li      r0, 0x0
    b       branch_0x801283ac

branch_0x80128250:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80128270
    li      r0, 0x1
    b       branch_0x801283ac

branch_0x80128270:
    lwz     r3, 0x74(r30)
    li      r26, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5194(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801282c8
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, 0xc(r3)
    lfs     f2, -0x510c(rtoc)
    fadds   f0, f1, f0
    lfs     f1, -0x5194(rtoc)
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801282c8
    li      r26, 0x1
branch_0x801282c8:
    clrlwi. r0, r26, 24
    beq-    branch_0x801282d8
    li      r0, 0x1
    b       branch_0x801283ac

branch_0x801282d8:
    lwz     r3, 0x74(r30)
    li      r26, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5170(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80128330
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, 0xc(r3)
    lfs     f2, -0x510c(rtoc)
    fadds   f0, f1, f0
    lfs     f1, -0x5170(rtoc)
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80128330
    li      r26, 0x1
branch_0x80128330:
    clrlwi. r0, r26, 24
    beq-    branch_0x80128340
    li      r0, 0x1
    b       branch_0x801283ac

branch_0x80128340:
    lwz     r3, 0x74(r30)
    li      r26, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5108(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80128398
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, 0xc(r3)
    lfs     f2, -0x510c(rtoc)
    fadds   f0, f1, f0
    lfs     f1, -0x5108(rtoc)
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80128398
    li      r26, 0x1
branch_0x80128398:
    clrlwi. r0, r26, 24
    beq-    branch_0x801283a8
    li      r0, 0x1
    b       branch_0x801283ac

branch_0x801283a8:
    li      r0, 0x0
branch_0x801283ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x80128488
    lwz     r4, -0x5db8(r13)
    addi    r3, r29, 0x5b0
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x5b0
    mtlr    r12
    blrl
    bl      allowsTumble__8TBathtubCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80128488
    lbz     r0, -0x65b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80128434
    subi    r3, r13, 0x65b4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65b4(r13)
    subi    r0, r3, 0x1cd4
    lis     r3, 0x8012
    stw     r0, -0x65b4(r13)
    addi    r4, r3, 0x3038
    subi    r3, r13, 0x65b4
    addi    r5, r28, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65b8(r13)
branch_0x80128434:
    subi    r5, r13, 0x65b4
    cmplwi  r5, 0x0
    beq-    branch_0x80128488
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8012847c
    stw     r0, 0x1c(r31)
    lwz     r3, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r3, r0
    bge-    branch_0x8012847c
    lwz     r4, 0x14(r31)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r31)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8012847c:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r5, 0x14(r31)
branch_0x80128488:
    li      r3, 0x0
    b       branch_0x801286a4

branch_0x80128490:
    cmpwi   r3, 0x0
    beq-    branch_0x801285f4
    bge-    branch_0x801284a8
    cmpwi   r3, -0x1
    bge-    branch_0x801284b4
    b       branch_0x801285f4

branch_0x801284a8:
    cmpwi   r3, 0x2
    bge-    branch_0x801285f4
    b       branch_0x80128554

branch_0x801284b4:
    lbz     r0, -0x65c0(r13)
    extsb.  r0, r0
    bne-    branch_0x801284fc
    subi    r3, r13, 0x65bc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65bc(r13)
    subi    r0, r3, 0x21c4
    lis     r3, 0x8012
    stw     r0, -0x65bc(r13)
    addi    r4, r3, 0x7ab8
    subi    r3, r13, 0x65bc
    addi    r5, r28, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65c0(r13)
branch_0x801284fc:
    subi    r5, r13, 0x65bc
    cmplwi  r5, 0x0
    beq-    branch_0x801286a0
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80128544
    stw     r0, 0x1c(r31)
    lwz     r3, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r3, r0
    bge-    branch_0x80128544
    lwz     r4, 0x14(r31)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r31)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80128544:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r5, 0x14(r31)
    b       branch_0x801286a0

branch_0x80128554:
    lbz     r0, -0x65c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8012859c
    subi    r3, r13, 0x65c4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x65c4(r13)
    subi    r0, r3, 0x21d4
    lis     r3, 0x8012
    stw     r0, -0x65c4(r13)
    addi    r4, r3, 0x7a4c
    subi    r3, r13, 0x65c4
    addi    r5, r28, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65c8(r13)
branch_0x8012859c:
    subi    r5, r13, 0x65c4
    cmplwi  r5, 0x0
    beq-    branch_0x801286a0
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801285e4
    stw     r0, 0x1c(r31)
    lwz     r3, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r3, r0
    bge-    branch_0x801285e4
    lwz     r4, 0x14(r31)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r31)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x801285e4:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r5, 0x14(r31)
    b       branch_0x801286a0

branch_0x801285f4:
    lwz     r4, -0x60b4(r13)
    mr      r3, r30
    bl      getTargetDir__6TKoopaCFRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x150(r30)
    lfs     f2, -0x5154(rtoc)
    fsubs   f1, f1, f0
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f2, -0x5150(rtoc)
    lfs     f0, -0x514c(rtoc)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi    r0, r0, 31
    stb     r0, 0x154(r30)
    lbz     r0, -0x65a0(r13)
    extsb.  r0, r0
    bne-    branch_0x80128680
    subi    r3, r13, 0x659c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x21b4
    lis     r3, 0x803c
    stw     r0, -0x659c(r13)
    subi    r0, r3, 0x1cf4
    lis     r3, 0x8012
    stw     r0, -0x659c(r13)
    addi    r4, r3, 0x3ff0
    subi    r3, r13, 0x659c
    addi    r5, r28, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65a0(r13)
branch_0x80128680:
    lwz     r0, 0x14(r31)
    subi    r3, r13, 0x659c
    cmplwi  r0, 0x0
    beq-    branch_0x80128694
    stw     r0, 0x1c(r31)
branch_0x80128694:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r3, 0x14(r31)
branch_0x801286a0:
    li      r3, 0x0
branch_0x801286a4:
    lmw     r26, 0x240(sp)
    lwz     r0, 0x264(sp)
    lfd     f31, 0x258(sp)
    addi    sp, sp, 0x260
    mtlr    r0
    blr


.globl execute__16TNerveKoopaTurnRCFP24TSpineBase_10TLiveActor_
execute__16TNerveKoopaTurnRCFP24TSpineBase_10TLiveActor_: # 0x801286bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stfd    f31, 0x198(sp)
    stw     r31, 0x194(sp)
    lwz     r31, 0x0(r4)
    lfs     f0, -0x5150(rtoc)
    lfs     f3, 0x150(r31)
    lfs     f1, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fsubs   f1, f3, f1
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lwz     r3, 0x70(r31)
    lfs     f0, -0x5150(rtoc)
    lwz     r4, 0x38(r3)
    fadds   f31, f0, f1
    lfs     f0, 0xb8(r4)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8012879c
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f31, 0xb8(r3)
    lfs     f0, -0x514c(rtoc)
    fcmpo   cr0, f31, f0
    ble-    branch_0x80128748
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f0, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xb
    fmuls   f1, f31, f0
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
    b       branch_0x8012876c

branch_0x80128748:
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    fneg    f0, f31
    lfs     f1, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xa
    fmuls   f1, f0, f1
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
branch_0x8012876c:
    lfs     f0, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fadds   f1, f0, f31
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x5150(rtoc)
    li      r0, 0x1
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    b       branch_0x80128820

branch_0x8012879c:
    lfs     f0, -0x514c(rtoc)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8012881c
    ble-    branch_0x801287cc
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f0, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xb
    fmuls   f1, f31, f0
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
    b       branch_0x801287ec

branch_0x801287cc:
    bl      getSaveParam__13TEnemyManagerCFv
    fneg    f0, f31
    lfs     f1, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xa
    fmuls   f1, f0, f1
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
branch_0x801287ec:
    lfs     f0, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fadds   f1, f0, f31
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x5150(rtoc)
    li      r0, 0x1
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    b       branch_0x80128820

branch_0x8012881c:
    li      r0, 0x0
branch_0x80128820:
    clrlwi. r0, r0, 24
    beq-    branch_0x80128830
    li      r3, 0x0
    b       branch_0x80128834

branch_0x80128830:
    li      r3, 0x1
branch_0x80128834:
    lwz     r0, 0x1a4(sp)
    lfd     f31, 0x198(sp)
    lwz     r31, 0x194(sp)
    mtlr    r0
    addi    sp, sp, 0x1a0
    blr


.globl execute__16TNerveKoopaTurnLCFP24TSpineBase_10TLiveActor_
execute__16TNerveKoopaTurnLCFP24TSpineBase_10TLiveActor_: # 0x8012884c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a8(sp)
    stfd    f31, 0x1a0(sp)
    stw     r31, 0x19c(sp)
    lwz     r31, 0x0(r4)
    lfs     f0, -0x5150(rtoc)
    lfs     f3, 0x150(r31)
    lfs     f1, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fsubs   f1, f3, f1
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lwz     r3, 0x70(r31)
    lfs     f0, -0x5150(rtoc)
    lwz     r4, 0x38(r3)
    fadds   f31, f0, f1
    lfs     f0, 0xb8(r4)
    fneg    f0, f0
    fcmpo   cr0, f31, f0
    bge-    branch_0x80128934
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f1, 0xb8(r3)
    lfs     f0, -0x514c(rtoc)
    fneg    f31, f1
    fcmpo   cr0, f31, f0
    ble-    branch_0x801288e0
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f0, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xb
    fmuls   f1, f31, f0
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
    b       branch_0x80128904

branch_0x801288e0:
    lwz     r3, 0x70(r31)
    bl      getSaveParam__13TEnemyManagerCFv
    fneg    f0, f31
    lfs     f1, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xa
    fmuls   f1, f0, f1
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
branch_0x80128904:
    lfs     f0, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fadds   f1, f0, f31
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x5150(rtoc)
    li      r0, 0x1
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    b       branch_0x801289b8

branch_0x80128934:
    lfs     f0, -0x514c(rtoc)
    fcmpo   cr0, f31, f0
    bge-    branch_0x801289b4
    ble-    branch_0x80128964
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f0, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xb
    fmuls   f1, f31, f0
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
    b       branch_0x80128984

branch_0x80128964:
    bl      getSaveParam__13TEnemyManagerCFv
    fneg    f0, f31
    lfs     f1, 0xcc(r3)
    addi    r3, r31, 0x0
    li      r4, 0xa
    fmuls   f1, f0, f1
    li      r5, 0x0
    bl      changeAnm__6TKoopaFiif
branch_0x80128984:
    lfs     f0, 0x34(r31)
    lfs     f2, -0x5154(rtoc)
    fadds   f1, f0, f31
    lfs     f0, -0x5150(rtoc)
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      mod__Q29JGeometry8TUtil_f_Fff
    lfs     f0, -0x5150(rtoc)
    li      r0, 0x1
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    b       branch_0x801289b8

branch_0x801289b4:
    li      r0, 0x0
branch_0x801289b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801289c8
    li      r3, 0x0
    b       branch_0x801289cc

branch_0x801289c8:
    li      r3, 0x1
branch_0x801289cc:
    lwz     r0, 0x1ac(sp)
    lfd     f31, 0x1a0(sp)
    lwz     r31, 0x19c(sp)
    mtlr    r0
    addi    sp, sp, 0x1a8
    blr


.globl __dt__6TKoopaFv
__dt__6TKoopaFv: # 0x801289e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80128a34
    lis     r3, 0x803c
    subi    r3, r3, 0x21a4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x80128a34
    mr      r3, r30
    bl      __dl__FPv
branch_0x80128a34:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TKoopaBodyFv
__dt__10TKoopaBodyFv: # 0x80128a50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80128ad0
    lis     r3, 0x803c
    subi    r3, r3, 0x2090
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128ac0
    lis     r3, 0x803c
    subi    r3, r3, 0x1de0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128ac0
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80128ac0:
    extsh.  r0, r31
    ble-    branch_0x80128ad0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80128ad0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TKoopaHeadFv
__dt__10TKoopaHeadFv: # 0x80128aec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80128b6c
    lis     r3, 0x803c
    subi    r3, r3, 0x1fe4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128b5c
    lis     r3, 0x803c
    subi    r3, r3, 0x1de0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128b5c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80128b5c:
    extsh.  r0, r31
    ble-    branch_0x80128b6c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80128b6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TKoopaHandFv
__dt__10TKoopaHandFv: # 0x80128b88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80128c08
    lis     r3, 0x803c
    subi    r3, r3, 0x1f38
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128bf8
    lis     r3, 0x803c
    subi    r3, r3, 0x1de0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128bf8
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80128bf8:
    extsh.  r0, r31
    ble-    branch_0x80128c08
    mr      r3, r30
    bl      __dl__FPv
branch_0x80128c08:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TKoopaFlameFv
__dt__11TKoopaFlameFv: # 0x80128c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80128ca4
    lis     r3, 0x803c
    subi    r3, r3, 0x1e8c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128c94
    lis     r3, 0x803c
    subi    r3, r3, 0x1de0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80128c94
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80128c94:
    extsh.  r0, r31
    ble-    branch_0x80128ca4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80128ca4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_Koopa_cpp
__sinit_Koopa_cpp: # 0x80128cc0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x3450
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80128d08
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80128d08:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80128d38
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80128d38:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80128d68
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80128d68:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80128d98
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80128d98:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80128dc8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80128dc8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80128df8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80128df8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80128e28
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80128e28:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80128e58
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80128e58:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80128e88
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80128e88:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80128eb8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80128eb8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80128ee8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80128ee8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80128f18
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80128f18:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80128f48
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80128f48:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80128f78
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80128f78:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80128fa8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80128fa8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TKoopaPartsFv
_32___dt__11TKoopaPartsFv: # 0x80128fbc
    subi    r3, r3, 0x20
    b       __dt__11TKoopaPartsFv


.globl _32___dt__11TKoopaFlameFv
_32___dt__11TKoopaFlameFv: # 0x80128fc4
    subi    r3, r3, 0x20
    b       __dt__11TKoopaFlameFv


.globl _32___dt__10TKoopaHandFv
_32___dt__10TKoopaHandFv: # 0x80128fcc
    subi    r3, r3, 0x20
    b       __dt__10TKoopaHandFv


.globl _32___dt__10TKoopaHeadFv
_32___dt__10TKoopaHeadFv: # 0x80128fd4
    subi    r3, r3, 0x20
    b       __dt__10TKoopaHeadFv


.globl _32___dt__10TKoopaBodyFv
_32___dt__10TKoopaBodyFv: # 0x80128fdc
    subi    r3, r3, 0x20
    b       __dt__10TKoopaBodyFv


.globl _32___dt__6TKoopaFv
_32___dt__6TKoopaFv: # 0x80128fe4
    subi    r3, r3, 0x20
    b       __dt__6TKoopaFv

