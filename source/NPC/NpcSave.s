
.globl __ct__10TNpcParamsFv
__ct__10TNpcParamsFv: # 0x8020d580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    li      r30, 0x0
    mr      r28, r3
    stw     r30, R13Off_m0x6210(r13)
    stw     r30, R13Off_m0x620c(r13)
    stw     r30, R13Off_m0x6208(r13)
    stw     r30, R13Off_m0x6204(r13)
    stw     r30, R13Off_m0x6200(r13)
    stw     r30, R13Off_m0x61fc(r13)
    bl      initDownSunflowerNum__9TNpcEventFv
    stw     r30, R13Off_m0x61f8(r13)
    li      r3, 0x10c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8020d5d0
    mr      r3, r29
    bl      __ct__20TNpcSaveStageFarClipFv
branch_0x8020d5d0:
    stw     r29, 0x0(r28)
    li      r3, 0x288
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8020d5ec
    mr      r3, r29
    bl      __ct__14TNpcSaveNormalFv
branch_0x8020d5ec:
    stw     r29, 0x4(r28)
    lis     r3, sSaveFileName_1960@ha
    addi    r30, r3, sSaveFileName_1960@l
    lwz     r0, 0x4(r28)
    li      r29, 0x0
    li      r31, 0x0
    stw     r0, R13Off_m0x6220(r13)
branch_0x8020d608:
    cmpwi   r29, 0xa
    bge-    branch_0x8020d624
    cmpwi   r29, 0x5
    bge-    branch_0x8020d650
    cmpwi   r29, 0x1
    bge-    branch_0x8020d630
    b       branch_0x8020d650

branch_0x8020d624:
    cmpwi   r29, 0xc
    bge-    branch_0x8020d650
    b       branch_0x8020d640

branch_0x8020d630:
    lwz     r3, 0x8(r28)
    addi    r0, r31, 0x8
    stwx    r3, r28, r0
    b       branch_0x8020d678

branch_0x8020d640:
    lwz     r3, 0x2c(r28)
    addi    r0, r31, 0x8
    stwx    r3, r28, r0
    b       branch_0x8020d678

branch_0x8020d650:
    li      r3, 0x38c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8020d670
    add     r3, r30, r31
    lwz     r4, 0x0(r3)
    mr      r3, r27
    bl      __ct__18TNpcSaveIndividualFPCc
branch_0x8020d670:
    addi    r0, r31, 0x8
    stwx    r27, r28, r0
branch_0x8020d678:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x1d
    addi    r31, r31, 0x4
    blt+    branch_0x8020d608
    mr      r3, r28
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__18TNpcSaveIndividualFPCc
__ct__18TNpcSaveIndividualFPCc: # 0x8020d6a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r31, r3
    li      r27, 0x0
    stw     r4, 0x0(r3)
    lis     r3, unk_80395068@h
    addi    r30, r3, unk_80395068@l
    stw     r27, 0x4(r31)
    addi    r3, r30, 0x2b8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x2b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x1c90(r2)
    addi    r3, r30, 0x2c8
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x1c8c(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x2e8
    lfs     f0, -0x1c88(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0x1c84(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x314
    lfs     f0, -0x1c80(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x328
    lfs     f0, -0x1c7c(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x33c
    lfs     f0, -0x1c78(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x33c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x350
    lfs     f0, -0x1c74(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x350
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x364
    lfs     f0, -0x1c70(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x364
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x374
    lfs     f0, -0x1c74(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x374
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x384
    lfs     f0, -0x1c6c(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x384
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x390
    lfs     f0, -0x1c68(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x390
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x39c
    lfs     f0, -0x1c64(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x39c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x3ac
    lfs     f0, -0x1c7c(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x3ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x3bc
    lfs     f0, -0x1c60(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x3bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x3cc
    lfs     f0, -0x1c5c(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x3cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x3dc
    lfs     f0, -0x1c5c(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x3dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x3ec
    lfs     f0, -0x1c5c(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x3ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x3fc
    lfs     f0, -0x1c5c(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x3fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x410
    lfs     f0, -0x1c58(r2)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x410
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x424
    lfs     f0, -0x1c54(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x424
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x434
    lfs     f0, -0x1c50(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x434
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x444
    lfs     f0, -0x1c4c(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x458
    lfs     f0, -0x1c48(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x458
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x470
    lfs     f0, -0x1c44(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x470
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x484
    lfs     f0, -0x1c40(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x484
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x49c
    lfs     f0, -0x1c3c(r2)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x49c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0x4b4
    lfs     f0, -0x1c38(r2)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x4b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0x4cc
    lfs     f0, -0x1c34(r2)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x4cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x4dc
    lfs     f0, -0x1c30(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x4dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x4f0
    lfs     f0, -0x1c2c(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x4f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x504
    lfs     f0, -0x1c38(r2)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x504
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x514
    lfs     f0, -0x1c48(r2)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x514
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x524
    lfs     f0, -0x1c28(r2)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x524
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    addi    r3, r30, 0x53c
    lfs     f0, -0x1c24(r2)
    stfs    f0, 0x2c0(r31)
    stw     r28, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x53c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x548
    lfs     f0, -0x1c74(r2)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x548
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0x554
    lfs     f0, -0x1c20(r2)
    stfs    f0, 0x2e8(r31)
    stw     r28, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0x554
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec(r31)
    addi    r3, r30, 0x560
    lfs     f0, -0x1c1c(r2)
    stfs    f0, 0x2fc(r31)
    stw     r28, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0x560
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r0, r3, __vvt__11TParamT_Uc_@l
    stw     r0, 0x300(r31)
    li      r0, 0x96
    lis     r3, __vvt__12TParamRT_Uc_@ha
    stb     r0, 0x310(r31)
    addi    r0, r3, __vvt__12TParamRT_Uc_@l
    addi    r3, r30, 0x570
    stw     r0, 0x300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x314
    addi    r6, r30, 0x570
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x314(r31)
    addi    r3, r30, 0x588
    lfs     f0, -0x1c18(r2)
    stfs    f0, 0x324(r31)
    stw     r28, 0x314(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x328
    addi    r6, r30, 0x588
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r29, r3, __vvt__10TParamT_s_@l
    stw     r29, 0x328(r31)
    li      r0, -0x2000
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x338(r31)
    addi    r28, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x598
    stw     r28, 0x328(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x33c
    addi    r6, r30, 0x598
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x33c(r31)
    addi    r3, r30, 0x5a8
    sth     r27, 0x34c(r31)
    stw     r28, 0x33c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x350
    addi    r6, r30, 0x5a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x350(r31)
    li      r0, 0x3a98
    addi    r3, r30, 0x5b8
    sth     r0, 0x360(r31)
    stw     r28, 0x350(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x364
    addi    r6, r30, 0x5b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x364(r31)
    li      r0, 0x1f4
    addi    r3, r30, 0x5cc
    sth     r0, 0x374(r31)
    stw     r28, 0x364(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x378
    addi    r6, r30, 0x5cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x378(r31)
    li      r0, 0x2bc
    addi    r3, r31, 0x0
    sth     r0, 0x388(r31)
    stw     r28, 0x378(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__14TNpcSaveNormalFv
__ct__14TNpcSaveNormalFv: # 0x8020ded4
    mflr    r0
    lis     r4, unk_80395068@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r30, r4, unk_80395068@l
    addi    r0, r30, 0x5e0
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x5f4
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x5f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x1c14(r2)
    addi    r3, r30, 0x610
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x610
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x620
    lfs     f0, -0x1c90(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x620
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x634
    lfs     f0, -0x1c14(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x634
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x648
    lfs     f0, -0x1c14(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x648
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x660
    lfs     f0, -0x1c10(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x660
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x678
    lfs     f0, -0x1c44(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x678
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x690
    lfs     f0, -0x1c90(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x690
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x6ac
    lfs     f0, -0x1c14(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x6ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0xa8(r31)
    li      r24, 0x28
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r24, 0xb8(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x6c0
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x6c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xbc(r31)
    addi    r3, r30, 0x6d8
    sth     r24, 0xcc(r31)
    stw     r26, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x6d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x6ec
    lfs     f0, -0x1c0c(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x6ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xe4(r31)
    li      r0, 0x5dc
    addi    r3, r30, 0x700
    sth     r0, 0xf4(r31)
    stw     r26, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x700
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xf8(r31)
    li      r0, 0x3c
    addi    r3, r30, 0x718
    sth     r0, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x718
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x72c
    lfs     f0, -0x1c10(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x72c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x744
    lfs     f0, -0x1c90(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x744
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x758
    lfs     f0, -0x1c8c(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x758
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x764
    lfs     f0, -0x1c20(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x764
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x77c
    lfs     f0, -0x1c08(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x77c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x794
    lfs     f0, -0x1c04(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x794
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r24, r3, __vvt__10TParamT_l_@l
    stw     r24, 0x184(r31)
    li      r0, 0xa
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x194(r31)
    addi    r25, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x7ac
    stw     r25, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x7ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x198(r31)
    li      r0, 0x14
    addi    r3, r30, 0x7c0
    stw     r0, 0x1a8(r31)
    stw     r25, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x7c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x7d4
    lfs     f0, -0x1c00(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x7d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x7e4
    lfs     f0, -0x1bfc(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x7e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x7f4
    lfs     f0, -0x1bf8(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x7f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x1e8(r31)
    li      r0, 0x6
    addi    r3, r30, 0x808
    stw     r0, 0x1f8(r31)
    stw     r25, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x808
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1fc(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x820
    sth     r0, 0x20c(r31)
    stw     r26, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x820
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x210(r31)
    li      r0, 0xbb8
    addi    r3, r30, 0x838
    sth     r0, 0x220(r31)
    stw     r26, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x838
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x224(r31)
    li      r0, 0x64
    addi    r3, r30, 0x850
    sth     r0, 0x234(r31)
    stw     r26, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x850
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x238(r31)
    li      r0, 0x4b0
    addi    r3, r30, 0x868
    sth     r0, 0x248(r31)
    stw     r26, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x868
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x87c
    lfs     f0, -0x1c74(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x87c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x890
    lfs     f0, -0x1c78(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x890
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    mr      r3, r31
    lfs     f0, -0x1bf4(r2)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__20TNpcSaveStageFarClipFv
__ct__20TNpcSaveStageFarClipFv: # 0x8020e4d0
    mflr    r0
    lis     r4, unk_80395068@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, unk_80395068@l
    addi    r0, r30, 0x8a0
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x8b4
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x8b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x1bf0(r2)
    addi    r3, r30, 0x8c4
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x8c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x8d8
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x8d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x8ec
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x8ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x900
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x900
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x914
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x914
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x928
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x928
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x93c
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x93c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x950
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x950
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x964
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x964
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x978
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x978
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x98c
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x98c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x9a4
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x9a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    mr      r3, r31
    lfs     f0, -0x1bf0(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr

