
.globl __ct__17TCamSaveKindParamFPCc
__ct__17TCamSaveKindParamFPCc: # 0x8002a3e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r23, 0x14(sp)
    mr      r31, r3
    li      r25, 0x0
    stw     r4, 0x0(r3)
    lis     r3, unk_80374998@h
    addi    r30, r3, unk_80374998@l
    stw     r25, 0x4(r31)
    addi    r3, r2, R2Off_m0x7808
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r2, R2Off_m0x7808
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r26, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x7800(r2)
    addi    r3, r30, 0x20
    stfs    f0, 0x18(r31)
    stw     r26, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x20
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x2c
    lfs     f0, -0x77fc(r2)
    stfs    f0, 0x2c(r31)
    stw     r26, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x2c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x38
    lfs     f0, -0x77f8(r2)
    stfs    f0, 0x40(r31)
    stw     r26, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x38
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x44
    lfs     f0, -0x77f4(r2)
    stfs    f0, 0x54(r31)
    stw     r26, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x44
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x54
    lfs     f0, -0x77f0(r2)
    stfs    f0, 0x68(r31)
    stw     r26, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x64
    lfs     f0, -0x77ec(r2)
    stfs    f0, 0x7c(r31)
    stw     r26, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x64
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r28, r3, __vvt__10TParamT_s_@l
    stw     r28, 0x80(r31)
    li      r0, 0x37e
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x90(r31)
    addi    r27, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x74
    stw     r27, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x74
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x94(r31)
    li      r0, 0x2710
    addi    r3, r30, 0x84
    sth     r0, 0xa4(r31)
    stw     r27, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x84
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x9c
    lfs     f0, -0x77e8(r2)
    stfs    f0, 0xb8(r31)
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x9c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xbc(r31)
    li      r23, 0xfa
    addi    r3, r30, 0xb8
    sth     r23, 0xcc(r31)
    stw     r27, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xb8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xd0(r31)
    addi    r3, r30, 0xd4
    sth     r23, 0xe0(r31)
    stw     r27, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xd4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0xe4
    lfs     f0, -0x77e4(r2)
    stfs    f0, 0xf4(r31)
    stw     r26, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xe4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0xfc
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xfc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x114
    lfs     f0, -0x77dc(r2)
    stfs    f0, 0x11c(r31)
    stw     r26, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x114
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x12c
    lfs     f0, -0x77d8(r2)
    stfs    f0, 0x130(r31)
    stw     r26, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x144
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x144(r31)
    stw     r26, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x144
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x158
    lfs     f0, -0x77e8(r2)
    stfs    f0, 0x158(r31)
    stw     r26, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x158
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x170
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x16c(r31)
    stw     r26, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x170
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x188
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x180(r31)
    stw     r26, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x188
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x1a0
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x194(r31)
    stw     r26, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x1a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x1b8
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x1b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x1cc
    lfs     f0, -0x77f0(r2)
    stfs    f0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x1cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x1e0
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x1e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x1d4(r31)
    addi    r3, r30, 0x1f8
    sth     r25, 0x1e4(r31)
    stw     r27, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x1f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x1e8(r31)
    addi    r3, r30, 0x210
    sth     r25, 0x1f8(r31)
    stw     r27, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x210
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x1fc(r31)
    addi    r3, r30, 0x220
    sth     r25, 0x20c(r31)
    stw     r27, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x220
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x210(r31)
    addi    r3, r30, 0x230
    sth     r25, 0x220(r31)
    stw     r27, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x230
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0x244
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x234(r31)
    stw     r26, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x244
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x238(r31)
    addi    r3, r30, 0x254
    sth     r25, 0x248(r31)
    stw     r27, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x254
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r23, r3, __vvt__10TParamT_l_@l
    stw     r23, 0x24c(r31)
    lis     r3, __vvt__11TParamRT_l_@ha
    addi    r24, r3, __vvt__11TParamRT_l_@l
    stw     r25, 0x25c(r31)
    addi    r3, r30, 0x26c
    stw     r24, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x26c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x260(r31)
    addi    r3, r30, 0x288
    stw     r25, 0x270(r31)
    stw     r24, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x288
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x29c
    lfs     f0, -0x77d4(r2)
    stfs    f0, 0x284(r31)
    stw     r26, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x29c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x2b0
    lfs     f0, -0x77d0(r2)
    stfs    f0, 0x298(r31)
    stw     r26, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x2b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x2c8
    lfs     f0, -0x77cc(r2)
    stfs    f0, 0x2ac(r31)
    stw     r26, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    addi    r3, r30, 0x2e0
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x2c0(r31)
    stw     r26, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x2e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x2f8
    lfs     f0, -0x77c8(r2)
    stfs    f0, 0x2d4(r31)
    stw     r26, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x2f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0x310
    lfs     f0, -0x77c4(r2)
    stfs    f0, 0x2e8(r31)
    stw     r26, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0x310
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec(r31)
    addi    r3, r30, 0x328
    lfs     f0, -0x77c0(r2)
    stfs    f0, 0x2fc(r31)
    stw     r26, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0x328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x300(r31)
    addi    r3, r30, 0x340
    lfs     f0, -0x77bc(r2)
    stfs    f0, 0x310(r31)
    stw     r26, 0x300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x314
    addi    r6, r30, 0x340
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x314(r31)
    addi    r3, r30, 0x358
    lfs     f0, -0x77b8(r2)
    stfs    f0, 0x324(r31)
    stw     r26, 0x314(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x328
    addi    r6, r30, 0x358
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x328(r31)
    addi    r3, r30, 0x370
    lfs     f0, -0x77c8(r2)
    stfs    f0, 0x338(r31)
    stw     r26, 0x328(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x33c
    addi    r6, r30, 0x370
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x33c(r31)
    addi    r3, r30, 0x384
    lfs     f0, -0x77b4(r2)
    stfs    f0, 0x34c(r31)
    stw     r26, 0x33c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x350
    addi    r6, r30, 0x384
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x350(r31)
    addi    r3, r30, 0x398
    lfs     f0, -0x77b0(r2)
    stfs    f0, 0x360(r31)
    stw     r26, 0x350(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x364
    addi    r6, r30, 0x398
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x364(r31)
    addi    r3, r30, 0x3ac
    lfs     f0, -0x77ac(r2)
    stfs    f0, 0x374(r31)
    stw     r26, 0x364(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x378
    addi    r6, r30, 0x3ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x378(r31)
    addi    r3, r30, 0x3c0
    lfs     f0, -0x77b0(r2)
    stfs    f0, 0x388(r31)
    stw     r26, 0x378(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x38c
    addi    r6, r30, 0x3c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x38c(r31)
    addi    r3, r30, 0x3d4
    lfs     f0, -0x77a8(r2)
    stfs    f0, 0x39c(r31)
    stw     r26, 0x38c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a0
    addi    r6, r30, 0x3d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a0(r31)
    addi    r3, r30, 0x3e4
    lfs     f0, -0x77a4(r2)
    stfs    f0, 0x3b0(r31)
    stw     r26, 0x3a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b4
    addi    r6, r30, 0x3e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x3b4(r31)
    li      r29, 0x10
    addi    r3, r30, 0x3f4
    sth     r29, 0x3c4(r31)
    stw     r27, 0x3b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3c8
    addi    r6, r30, 0x3f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x3c8(r31)
    addi    r3, r30, 0x408
    sth     r29, 0x3d8(r31)
    stw     r27, 0x3c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3dc
    addi    r6, r30, 0x408
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x3dc(r31)
    addi    r3, r30, 0x41c
    sth     r29, 0x3ec(r31)
    stw     r27, 0x3dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f0
    addi    r6, r30, 0x41c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x3f0(r31)
    addi    r3, r30, 0x430
    sth     r29, 0x400(r31)
    stw     r27, 0x3f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x404
    addi    r6, r30, 0x430
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x404(r31)
    addi    r3, r30, 0x444
    sth     r29, 0x414(r31)
    stw     r27, 0x404(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x418
    addi    r6, r30, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x418(r31)
    addi    r3, r30, 0x458
    sth     r29, 0x428(r31)
    stw     r27, 0x418(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x42c
    addi    r6, r30, 0x458
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x42c(r31)
    addi    r3, r30, 0x468
    sth     r29, 0x43c(r31)
    stw     r27, 0x42c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x440
    addi    r6, r30, 0x468
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x440(r31)
    addi    r3, r30, 0x478
    sth     r29, 0x450(r31)
    stw     r27, 0x440(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x454
    addi    r6, r30, 0x478
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x454(r31)
    addi    r3, r30, 0x490
    sth     r29, 0x464(r31)
    stw     r27, 0x454(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x468
    addi    r6, r30, 0x490
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x468(r31)
    addi    r3, r30, 0x4a4
    sth     r29, 0x478(r31)
    stw     r27, 0x468(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x47c
    addi    r6, r30, 0x4a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x47c(r31)
    addi    r3, r30, 0x4b4
    sth     r29, 0x48c(r31)
    stw     r27, 0x47c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x490
    addi    r6, r30, 0x4b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x490(r31)
    addi    r3, r30, 0x4c8
    sth     r29, 0x4a0(r31)
    stw     r27, 0x490(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4a4
    addi    r6, r30, 0x4c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x4a4(r31)
    addi    r3, r30, 0x4d8
    sth     r29, 0x4b4(r31)
    stw     r27, 0x4a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4b8
    addi    r6, r30, 0x4d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x4b8(r31)
    addi    r3, r30, 0x4ec
    sth     r29, 0x4c8(r31)
    stw     r27, 0x4b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4cc
    addi    r6, r30, 0x4ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x4cc(r31)
    addi    r3, r30, 0x4fc
    sth     r29, 0x4dc(r31)
    stw     r27, 0x4cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4e0
    addi    r6, r30, 0x4fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x4e0(r31)
    addi    r3, r30, 0x50c
    sth     r29, 0x4f0(r31)
    stw     r27, 0x4e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4f4
    addi    r6, r30, 0x50c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x4f4(r31)
    addi    r3, r30, 0x520
    sth     r29, 0x504(r31)
    stw     r27, 0x4f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x508
    addi    r6, r30, 0x520
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x508(r31)
    addi    r3, r30, 0x534
    sth     r29, 0x518(r31)
    stw     r27, 0x508(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x51c
    addi    r6, r30, 0x534
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x51c(r31)
    addi    r3, r30, 0x548
    sth     r29, 0x52c(r31)
    stw     r27, 0x51c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x530
    addi    r6, r30, 0x548
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x530(r31)
    addi    r3, r30, 0x55c
    sth     r29, 0x540(r31)
    stw     r27, 0x530(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x544
    addi    r6, r30, 0x55c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x544(r31)
    addi    r3, r30, 0x56c
    sth     r29, 0x554(r31)
    stw     r27, 0x544(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x558
    addi    r6, r30, 0x56c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x558(r31)
    addi    r3, r30, 0x57c
    sth     r29, 0x568(r31)
    stw     r27, 0x558(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x56c
    addi    r6, r30, 0x57c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x56c(r31)
    addi    r3, r30, 0x58c
    sth     r29, 0x57c(r31)
    stw     r27, 0x56c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x580
    addi    r6, r30, 0x58c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x580(r31)
    addi    r3, r30, 0x59c
    sth     r29, 0x590(r31)
    stw     r27, 0x580(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x594
    addi    r6, r30, 0x59c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x594(r31)
    li      r26, 0x1
    addi    r3, r30, 0x5ac
    sth     r26, 0x5a4(r31)
    stw     r27, 0x594(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x5a8
    addi    r6, r30, 0x5ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x5a8(r31)
    addi    r3, r30, 0x5bc
    sth     r26, 0x5b8(r31)
    stw     r27, 0x5a8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x5bc
    addi    r6, r30, 0x5bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x5bc(r31)
    addi    r3, r30, 0x5cc
    sth     r26, 0x5cc(r31)
    stw     r27, 0x5bc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x5d0
    addi    r6, r30, 0x5cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x5d0(r31)
    addi    r3, r30, 0x5dc
    sth     r26, 0x5e0(r31)
    stw     r27, 0x5d0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x5e4
    addi    r6, r30, 0x5dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x5e4(r31)
    addi    r3, r30, 0x5ec
    sth     r26, 0x5f4(r31)
    stw     r27, 0x5e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x5f8
    addi    r6, r30, 0x5ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x5f8(r31)
    addi    r3, r30, 0x5fc
    sth     r26, 0x608(r31)
    stw     r27, 0x5f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x60c
    addi    r6, r30, 0x5fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x60c(r31)
    addi    r3, r30, 0x610
    sth     r29, 0x61c(r31)
    stw     r27, 0x60c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x620
    addi    r6, r30, 0x610
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x620(r31)
    addi    r3, r30, 0x624
    sth     r29, 0x630(r31)
    stw     r27, 0x620(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x634
    addi    r6, r30, 0x624
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x634(r31)
    addi    r3, r30, 0x638
    sth     r26, 0x644(r31)
    stw     r27, 0x634(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x648
    addi    r6, r30, 0x638
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x648(r31)
    addi    r3, r30, 0x64c
    sth     r26, 0x658(r31)
    stw     r27, 0x648(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x65c
    addi    r6, r30, 0x64c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x65c(r31)
    addi    r3, r30, 0x660
    sth     r26, 0x66c(r31)
    stw     r27, 0x65c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x670
    addi    r6, r30, 0x660
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x670(r31)
    addi    r3, r30, 0x674
    sth     r26, 0x680(r31)
    stw     r27, 0x670(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x684
    addi    r6, r30, 0x674
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x684(r31)
    addi    r3, r30, 0x688
    sth     r26, 0x694(r31)
    stw     r27, 0x684(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x698
    addi    r6, r30, 0x688
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x698(r31)
    addi    r3, r30, 0x69c
    sth     r26, 0x6a8(r31)
    stw     r27, 0x698(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6ac
    addi    r6, r30, 0x69c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6ac(r31)
    addi    r3, r30, 0x6ac
    sth     r29, 0x6bc(r31)
    stw     r27, 0x6ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c0
    addi    r6, r30, 0x6ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6c0(r31)
    addi    r3, r30, 0x6bc
    sth     r29, 0x6d0(r31)
    stw     r27, 0x6c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6d4
    addi    r6, r30, 0x6bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6d4(r31)
    addi    r3, r30, 0x6cc
    sth     r29, 0x6e4(r31)
    stw     r27, 0x6d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6e8
    addi    r6, r30, 0x6cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6e8(r31)
    addi    r3, r30, 0x6dc
    sth     r29, 0x6f8(r31)
    stw     r27, 0x6e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6fc
    addi    r6, r30, 0x6dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6fc(r31)
    addi    r3, r30, 0x6ec
    sth     r29, 0x70c(r31)
    stw     r27, 0x6fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x710
    addi    r6, r30, 0x6ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x710(r31)
    addi    r3, r30, 0x6fc
    sth     r29, 0x720(r31)
    stw     r27, 0x710(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x724
    addi    r6, r30, 0x6fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x724(r31)
    addi    r3, r30, 0x70c
    sth     r29, 0x734(r31)
    stw     r27, 0x724(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x738
    addi    r6, r30, 0x70c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x738(r31)
    addi    r3, r30, 0x71c
    sth     r29, 0x748(r31)
    stw     r27, 0x738(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x74c
    addi    r6, r30, 0x71c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x74c(r31)
    addi    r3, r30, 0x730
    sth     r29, 0x75c(r31)
    stw     r27, 0x74c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x760
    addi    r6, r30, 0x730
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x760(r31)
    addi    r3, r30, 0x744
    sth     r29, 0x770(r31)
    stw     r27, 0x760(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x774
    addi    r6, r30, 0x744
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x774(r31)
    addi    r3, r30, 0x754
    sth     r29, 0x784(r31)
    stw     r27, 0x774(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x788
    addi    r6, r30, 0x754
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x788(r31)
    addi    r3, r30, 0x768
    sth     r29, 0x798(r31)
    stw     r27, 0x788(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x79c
    addi    r6, r30, 0x768
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x79c(r31)
    addi    r3, r30, 0x77c
    sth     r29, 0x7ac(r31)
    stw     r27, 0x79c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x7b0
    addi    r6, r30, 0x77c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x7b0(r31)
    addi    r3, r30, 0x790
    sth     r29, 0x7c0(r31)
    stw     r27, 0x7b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x7c4
    addi    r6, r30, 0x790
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x7c4(r31)
    addi    r3, r30, 0x7a4
    sth     r29, 0x7d4(r31)
    stw     r27, 0x7c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x7d8
    addi    r6, r30, 0x7a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x7d8(r31)
    addi    r3, r30, 0x7b4
    sth     r29, 0x7e8(r31)
    stw     r27, 0x7d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x7ec
    addi    r6, r30, 0x7b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x7ec(r31)
    addi    r3, r30, 0x7c4
    sth     r29, 0x7fc(r31)
    stw     r27, 0x7ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x800
    addi    r6, r30, 0x7c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x800(r31)
    addi    r3, r30, 0x7d4
    sth     r29, 0x810(r31)
    stw     r27, 0x800(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x814
    addi    r6, r30, 0x7d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x814(r31)
    addi    r3, r30, 0x7ec
    sth     r29, 0x824(r31)
    stw     r27, 0x814(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x828
    addi    r6, r30, 0x7ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x828(r31)
    addi    r3, r30, 0x800
    sth     r29, 0x838(r31)
    stw     r27, 0x828(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x83c
    addi    r6, r30, 0x800
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x83c(r31)
    addi    r3, r30, 0x810
    sth     r29, 0x84c(r31)
    stw     r27, 0x83c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x850
    addi    r6, r30, 0x810
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x850(r31)
    addi    r3, r30, 0x824
    sth     r29, 0x860(r31)
    stw     r27, 0x850(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x864
    addi    r6, r30, 0x824
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x864(r31)
    addi    r3, r30, 0x834
    sth     r29, 0x874(r31)
    stw     r27, 0x864(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x878
    addi    r6, r30, 0x834
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x878(r31)
    addi    r3, r30, 0x848
    sth     r29, 0x888(r31)
    stw     r27, 0x878(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x88c
    addi    r6, r30, 0x848
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x88c(r31)
    addi    r3, r30, 0x85c
    sth     r29, 0x89c(r31)
    stw     r27, 0x88c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8a0
    addi    r6, r30, 0x85c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x8a0(r31)
    addi    r3, r30, 0x86c
    sth     r29, 0x8b0(r31)
    stw     r27, 0x8a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8b4
    addi    r6, r30, 0x86c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x8b4(r31)
    addi    r3, r30, 0x87c
    sth     r29, 0x8c4(r31)
    stw     r27, 0x8b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8c8
    addi    r6, r30, 0x87c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x8c8(r31)
    addi    r3, r30, 0x88c
    sth     r29, 0x8d8(r31)
    stw     r27, 0x8c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8dc
    addi    r6, r30, 0x88c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x8dc(r31)
    addi    r3, r30, 0x8a0
    sth     r29, 0x8ec(r31)
    stw     r27, 0x8dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8f0
    addi    r6, r30, 0x8a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x8f0(r31)
    addi    r3, r30, 0x8b0
    sth     r29, 0x900(r31)
    stw     r27, 0x8f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x904
    addi    r6, r30, 0x8b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x904(r31)
    addi    r3, r30, 0x8c8
    sth     r29, 0x914(r31)
    stw     r27, 0x904(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x918
    addi    r6, r30, 0x8c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x918(r31)
    addi    r3, r30, 0x8d8
    sth     r29, 0x928(r31)
    stw     r27, 0x918(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x92c
    addi    r6, r30, 0x8d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x92c(r31)
    addi    r3, r30, 0x8e8
    sth     r29, 0x93c(r31)
    stw     r27, 0x92c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x940
    addi    r6, r30, 0x8e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x940(r31)
    addi    r3, r30, 0x8fc
    sth     r29, 0x950(r31)
    stw     r27, 0x940(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x954
    addi    r6, r30, 0x8fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x954(r31)
    mr      r3, r31
    sth     r29, 0x964(r31)
    stw     r27, 0x954(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r23, 0x14(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__10TCamSaveExFv
__ct__10TCamSaveExFv: # 0x8002b7c8
    mflr    r0
    lis     r4, unk_80374998@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r30, r4, unk_80374998@l
    addi    r0, r30, 0x910
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x92c
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x92c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x77a0(r2)
    addi    r3, r30, 0x938
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x938
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x948
    lfs     f0, -0x77e8(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x948
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x95c
    lfs     f0, -0x77c8(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x95c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x44(r31)
    li      r0, -0x2710
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x54(r31)
    addi    r26, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0x96c
    stw     r26, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x96c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x97c
    lfs     f0, -0x779c(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x97c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x990
    lfs     f0, -0x7798(r2)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x990
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x9a8
    lfs     f0, -0x77d0(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x9a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x9b8
    lfs     f0, -0x77d8(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x9b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x9d0
    lfs     f0, -0x7794(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x9d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x9e8
    lfs     f0, -0x7790(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x9e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x9f8
    lfs     f0, -0x77d8(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x9f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0xa08
    lfs     f0, -0x778c(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xa08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r0, r3, __vvt__11TParamT_Uc_@l
    stw     r0, 0xf8(r31)
    li      r0, 0x18
    lis     r3, __vvt__12TParamRT_Uc_@ha
    stb     r0, 0x108(r31)
    addi    r0, r3, __vvt__12TParamRT_Uc_@l
    addi    r3, r30, 0xa1c
    stw     r0, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xa1c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x10c(r31)
    li      r0, 0x2
    addi    r3, r30, 0xa30
    sth     r0, 0x11c(r31)
    stw     r26, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0xa30
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x120(r31)
    li      r0, 0xa
    addi    r3, r30, 0xa44
    sth     r0, 0x130(r31)
    stw     r26, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0xa44
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x134(r31)
    li      r25, 0x32
    addi    r3, r30, 0xa58
    sth     r25, 0x144(r31)
    stw     r26, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0xa58
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0xa74
    lfs     f0, -0x7790(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0xa74
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x15c(r31)
    addi    r3, r30, 0xa88
    sth     r25, 0x16c(r31)
    stw     r26, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0xa88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0xa9c
    lfs     f0, -0x7788(r2)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0xa9c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x184(r31)
    li      r0, 0x3c
    addi    r3, r30, 0xab4
    sth     r0, 0x194(r31)
    stw     r26, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0xab4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    li      r0, 0x7fff
    addi    r3, r30, 0xacc
    sth     r0, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0xacc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1ac(r31)
    li      r0, -0x3e00
    addi    r3, r30, 0xae0
    sth     r0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0xae0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    li      r0, 0x3e00
    addi    r3, r30, 0xaf4
    sth     r0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0xaf4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    li      r0, 0x2000
    addi    r3, r30, 0xb08
    sth     r0, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0xb08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1e8(r31)
    addi    r3, r30, 0xb1c
    sth     r25, 0x1f8(r31)
    stw     r26, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0xb1c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    mr      r3, r31
    lfs     f0, -0x7800(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__18TCamSaveJetCoasterFv
__ct__18TCamSaveJetCoasterFv: # 0x8002bcb8
    mflr    r0
    lis     r4, unk_80374998@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r31, r4, unk_80374998@l
    addi    r0, r31, 0xb34
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r31, 0xb54
    stw     r0, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x8
    addi    r6, r31, 0xb54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x8(r30)
    li      r29, 0x2710
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r29, 0x18(r30)
    addi    r28, r3, __vvt__11TParamRT_s_@l
    addi    r3, r31, 0xb6c
    stw     r28, 0x8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x1c
    addi    r6, r31, 0xb6c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c(r30)
    addi    r3, r31, 0xb84
    sth     r29, 0x2c(r30)
    stw     r28, 0x1c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x30
    addi    r6, r31, 0xb84
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x30(r30)
    li      r29, 0xfa
    addi    r3, r31, 0xba0
    sth     r29, 0x40(r30)
    stw     r28, 0x30(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x44
    addi    r6, r31, 0xba0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x44(r30)
    addi    r3, r31, 0xbbc
    sth     r29, 0x54(r30)
    stw     r28, 0x44(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x58
    addi    r6, r31, 0xbbc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x58(r30)
    li      r29, 0x19
    addi    r3, r31, 0xbd4
    sth     r29, 0x68(r30)
    stw     r28, 0x58(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x6c
    addi    r6, r31, 0xbd4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x6c(r30)
    mr      r3, r30
    sth     r29, 0x7c(r30)
    stw     r28, 0x6c(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
    mr      r3, r30
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__13TCamSaveShakeFPCc
__ct__13TCamSaveShakeFPCc: # 0x8002be14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    mr      r29, r3
    li      r31, 0x0
    stw     r4, 0x0(r3)
    lis     r3, unk_80374998@h
    addi    r30, r3, unk_80374998@l
    stw     r31, 0x4(r29)
    addi    r3, r30, 0xbec
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r29, 0x8
    addi    r6, r30, 0xbec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r27, r3, __vvt__10TParamT_s_@l
    stw     r27, 0x8(r29)
    li      r0, 0x28
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x18(r29)
    addi    r28, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0xbf8
    stw     r28, 0x8(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r29, 0x1c
    addi    r6, r30, 0xbf8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r25, r3, __vvt__10TParamT_f_@l
    stw     r25, 0x1c(r29)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r26, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x7784(r2)
    addi    r3, r30, 0xc04
    stfs    f0, 0x2c(r29)
    stw     r26, 0x1c(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r29, 0x30
    addi    r6, r30, 0xc04
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x30(r29)
    li      r0, 0x1388
    addi    r3, r30, 0xc10
    sth     r0, 0x40(r29)
    stw     r28, 0x30(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r29, 0x44
    addi    r6, r30, 0xc10
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x44(r29)
    addi    r3, r30, 0xc1c
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x54(r29)
    stw     r26, 0x44(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r29, 0x58
    addi    r6, r30, 0xc1c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x58(r29)
    addi    r3, r30, 0xc28
    sth     r31, 0x68(r29)
    stw     r28, 0x58(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r29, 0x6c
    addi    r6, r30, 0xc28
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x6c(r29)
    addi    r3, r30, 0xc34
    lfs     f0, -0x77e0(r2)
    stfs    f0, 0x7c(r29)
    stw     r26, 0x6c(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r29, 0x80
    addi    r6, r30, 0xc34
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x80(r29)
    mr      r3, r29
    sth     r31, 0x90(r29)
    stw     r28, 0x80(r29)
    lwz     r4, 0x0(r29)
    bl      load__7TParamsFPCc
    mr      r3, r29
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__14TCamSaveNoticeFv
__ct__14TCamSaveNoticeFv: # 0x8002bfac
    mflr    r0
    lis     r4, unk_80374998@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, unk_80374998@l
    addi    r0, r30, 0xc40
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r2, R2Off_m0x7780
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r2, R2Off_m0x7780
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x7778(r2)
    addi    r3, r30, 0xc5c
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0xc5c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0xc68
    lfs     f0, -0x7774(r2)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0xc68
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0xc78
    lfs     f0, -0x77d0(r2)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0xc78
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0xc88
    lfs     f0, -0x7770(r2)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0xc88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0xc94
    lfs     f0, -0x776c(r2)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0xc94
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_s_@ha
    addi    r0, r3, __vvt__10TParamT_s_@l
    stw     r0, 0x6c(r31)
    li      r0, 0x12c
    lis     r3, __vvt__11TParamRT_s_@ha
    sth     r0, 0x7c(r31)
    addi    r0, r3, __vvt__11TParamRT_s_@l
    addi    r3, r30, 0xca4
    stw     r0, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0xca4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0xcb8
    lfs     f0, -0x77d8(r2)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0xcb8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0xcd0
    lfs     f0, -0x7784(r2)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0xcd0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    mr      r3, r31
    lfs     f0, -0x77d0(r2)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
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

