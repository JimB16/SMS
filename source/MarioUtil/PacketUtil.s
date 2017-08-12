
.globl SMS_ShowAllShapePacket__FP8J3DModel
SMS_ShowAllShapePacket__FP8J3DModel: # 0x80235728
    stwu    sp, -0x28(sp)
    li      r4, 0x0
    stw     r31, 0x24(sp)
    lwz     r5, 0x4(r3)
    lhz     r8, 0x24(r5)
    cmplwi  r8, 0x0
    ble-    branch_0x8023581c
    cmplwi  r8, 0x8
    addi    r0, r8, -0x8
    ble-    branch_0x802357f0
    clrlwi  r0, r0, 16
    b       branch_0x802357e4

branch_0x80235758:
    clrlwi  r5, r4, 16
    lwz     r6, 0x84(r3)
    mulli   r9, r5, 0x34
    add     r5, r6, r9
    li      r7, 0x1
    stb     r7, 0x30(r5)
    addi    r5, r9, 0x16c
    addi    r10, r9, 0x34
    lwz     r6, 0x84(r3)
    addi    r31, r9, 0x68
    addi    r12, r9, 0x9c
    add     r10, r6, r10
    stb     r7, 0x30(r10)
    addi    r11, r9, 0xd0
    addi    r10, r9, 0x104
    lwz     r6, 0x84(r3)
    addi    r9, r9, 0x138
    addi    r5, r5, 0x30
    add     r31, r6, r31
    stb     r7, 0x30(r31)
    addi    r4, r4, 0x8
    lwz     r6, 0x84(r3)
    add     r12, r6, r12
    stb     r7, 0x30(r12)
    lwz     r6, 0x84(r3)
    add     r11, r6, r11
    stb     r7, 0x30(r11)
    lwz     r6, 0x84(r3)
    add     r10, r6, r10
    stb     r7, 0x30(r10)
    lwz     r6, 0x84(r3)
    add     r9, r6, r9
    stb     r7, 0x30(r9)
    lwz     r6, 0x84(r3)
    stbx    r7, r6, r5
branch_0x802357e4:
    clrlwi  r5, r4, 16
    cmplw   r5, r0
    blt+    branch_0x80235758
branch_0x802357f0:
    li      r7, 0x1
    b       branch_0x80235810

branch_0x802357f8:
    clrlwi  r0, r4, 16
    lwz     r6, 0x84(r3)
    mulli   r5, r0, 0x34
    addi    r0, r5, 0x30
    stbx    r7, r6, r0
    addi    r4, r4, 0x1
branch_0x80235810:
    clrlwi  r0, r4, 16
    cmplw   r0, r8
    blt+    branch_0x802357f8
branch_0x8023581c:
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    blr


.globl SMS_HideAllShapePacket__FP8J3DModel
SMS_HideAllShapePacket__FP8J3DModel: # 0x80235828
    stwu    sp, -0x28(sp)
    li      r4, 0x0
    stw     r31, 0x24(sp)
    lwz     r5, 0x4(r3)
    lhz     r8, 0x24(r5)
    cmplwi  r8, 0x0
    ble-    branch_0x8023591c
    cmplwi  r8, 0x8
    addi    r0, r8, -0x8
    ble-    branch_0x802358f0
    clrlwi  r0, r0, 16
    b       branch_0x802358e4

branch_0x80235858:
    clrlwi  r5, r4, 16
    lwz     r6, 0x84(r3)
    mulli   r9, r5, 0x34
    add     r5, r6, r9
    li      r7, 0x0
    stb     r7, 0x30(r5)
    addi    r5, r9, 0x16c
    addi    r10, r9, 0x34
    lwz     r6, 0x84(r3)
    addi    r31, r9, 0x68
    addi    r12, r9, 0x9c
    add     r10, r6, r10
    stb     r7, 0x30(r10)
    addi    r11, r9, 0xd0
    addi    r10, r9, 0x104
    lwz     r6, 0x84(r3)
    addi    r9, r9, 0x138
    addi    r5, r5, 0x30
    add     r31, r6, r31
    stb     r7, 0x30(r31)
    addi    r4, r4, 0x8
    lwz     r6, 0x84(r3)
    add     r12, r6, r12
    stb     r7, 0x30(r12)
    lwz     r6, 0x84(r3)
    add     r11, r6, r11
    stb     r7, 0x30(r11)
    lwz     r6, 0x84(r3)
    add     r10, r6, r10
    stb     r7, 0x30(r10)
    lwz     r6, 0x84(r3)
    add     r9, r6, r9
    stb     r7, 0x30(r9)
    lwz     r6, 0x84(r3)
    stbx    r7, r6, r5
branch_0x802358e4:
    clrlwi  r5, r4, 16
    cmplw   r5, r0
    blt+    branch_0x80235858
branch_0x802358f0:
    li      r7, 0x0
    b       branch_0x80235910

branch_0x802358f8:
    clrlwi  r0, r4, 16
    lwz     r6, 0x84(r3)
    mulli   r5, r0, 0x34
    addi    r0, r5, 0x30
    stbx    r7, r6, r0
    addi    r4, r4, 0x1
branch_0x80235910:
    clrlwi  r0, r4, 16
    cmplw   r0, r8
    blt+    branch_0x802358f8
branch_0x8023591c:
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    blr


.globl SMS_InitPacket_TwoTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10PC8_GXColor
SMS_InitPacket_TwoTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10PC8_GXColor: # 0x80235928
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x80(sp)
    stmw    r26, 0x68(sp)
    mr      r26, r5
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    lwz     r10, 0x4(r3)
    lwz     r11, 0x84(r3)
    lwz     r3, 0x28(r10)
    lwzx    r3, r3, r0
    lwz     r3, 0x4(r3)
    lhz     r0, 0x4(r3)
    li      r3, 0x18
    mulli   r0, r0, 0x34
    add     r31, r11, r0
    bl      __nw__FUl
    li      r0, 0xa
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r26, 0x4(r3)
    stw     r27, 0xc(r3)
    stw     r28, 0x8(r3)
    stw     r29, 0x10(r3)
    stw     r30, 0x14(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x84(sp)
    lmw     r26, 0x68(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor: # 0x802359b8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x64(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x60(sp)
    mr      r28, r5
    lwz     r8, 0x4(r3)
    lwz     r9, 0x84(r3)
    lwz     r3, 0x28(r8)
    lwzx    r3, r3, r0
    lwz     r4, 0x4(r3)
    li      r3, 0x10
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r31, r9, r0
    bl      __nw__FUl
    li      r0, 0x9
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r28, 0x4(r3)
    stw     r29, 0x8(r3)
    stw     r30, 0xc(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl SMS_InitPacket_OneTevKColorAndFog__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
SMS_InitPacket_OneTevKColorAndFog__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor: # 0x80235a50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r26, 0x88(sp)
    mr      r30, r3
    clrlslwi  r31, r4, 16, 2
    mr      r26, r5
    addi    r27, r6, 0x0
    lwz     r3, 0x4(r3)
    lwz     r7, 0x84(r30)
    lwz     r3, 0x28(r3)
    lwzx    r4, r3, r31
    li      r3, 0x18
    lwz     r4, 0x4(r4)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r28, r7, r0
    bl      __nw__FUl
    addi    r29, r3, 0x0
    li      r0, 0x8
    stw     r0, 0x0(r3)
    li      r0, 0x6
    cmplwi  r27, 0x0
    stw     r0, 0x4(r3)
    stw     r26, 0x8(r3)
    beq-    branch_0x80235ac0
    stw     r27, 0xc(r29)
    b       branch_0x80235ae8

branch_0x80235ac0:
    lwz     r3, 0x4(r30)
    mr      r4, r26
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r31
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    stw     r3, 0xc(r29)
branch_0x80235ae8:
    lwz     r3, 0x4(r30)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r31
    lwz     r3, 0x30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    li      r0, 0x5
    stw     r0, 0x10(r29)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r3, 0x14(r29)
    stw     r29, 0xc(r28)
    stw     r0, 0x10(r28)
    lwz     r0, 0xa4(sp)
    lmw     r26, 0x88(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl SMS_InitPacket_TwoTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor14_GXTevKColorIDPC8_GXColor
SMS_InitPacket_TwoTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor14_GXTevKColorIDPC8_GXColor: # 0x80235b38
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x78(sp)
    stmw    r27, 0x64(sp)
    mr      r27, r5
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    lwz     r9, 0x4(r3)
    lwz     r10, 0x84(r3)
    lwz     r3, 0x28(r9)
    lwzx    r3, r3, r0
    lwz     r4, 0x4(r3)
    li      r3, 0x14
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r31, r10, r0
    bl      __nw__FUl
    li      r0, 0x7
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r27, 0x4(r3)
    stw     r28, 0xc(r3)
    stw     r29, 0x8(r3)
    stw     r30, 0x10(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x7c(sp)
    lmw     r27, 0x64(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor: # 0x80235bc0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x5c(sp)
    mr      r29, r5
    lwz     r7, 0x4(r3)
    lwz     r8, 0x84(r3)
    lwz     r3, 0x28(r7)
    lwzx    r4, r3, r0
    li      r3, 0xc
    lwz     r4, 0x4(r4)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r31, r8, r0
    bl      __nw__FUl
    li      r0, 0x6
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r29, 0x4(r3)
    stw     r30, 0x8(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl SMS_InitPacket_Fog__FP8J3DModelUs
SMS_InitPacket_Fog__FP8J3DModelUs: # 0x80235c48
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    lwz     r6, 0x4(r3)
    lwz     r5, 0x84(r3)
    lwz     r3, 0x28(r6)
    lwzx    r4, r3, r0
    lwz     r3, 0x30(r4)
    lwz     r4, 0x4(r4)
    lwz     r12, 0x0(r3)
    lhz     r0, 0x4(r4)
    lwz     r12, 0x1c(r12)
    mulli   r0, r0, 0x34
    mtlr    r12
    add     r30, r5, r0
    blrl
    addi    r31, r3, 0x0
    li      r3, 0x8
    bl      __nw__FUl
    li      r0, 0x5
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r31, 0x4(r3)
    stw     r3, 0xc(r30)
    stw     r0, 0x10(r30)
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl SMS_InitPacket_ThreeTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
SMS_InitPacket_ThreeTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10: # 0x80235cd4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x88(sp)
    stmw    r25, 0x6c(sp)
    mr      r25, r5
    addi    r26, r6, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    lwz     r11, 0x4(r3)
    lwz     r12, 0x84(r3)
    lwz     r3, 0x28(r11)
    lwzx    r3, r3, r0
    lwz     r3, 0x4(r3)
    lhz     r0, 0x4(r3)
    li      r3, 0x1c
    mulli   r0, r0, 0x34
    add     r31, r12, r0
    bl      __nw__FUl
    li      r0, 0x3
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r25, 0x4(r3)
    stw     r26, 0x10(r3)
    stw     r27, 0x8(r3)
    stw     r28, 0x14(r3)
    stw     r29, 0xc(r3)
    stw     r30, 0x18(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x8c(sp)
    lmw     r25, 0x6c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10: # 0x80235d6c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x78(sp)
    stmw    r27, 0x64(sp)
    mr      r27, r5
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    lwz     r9, 0x4(r3)
    lwz     r10, 0x84(r3)
    lwz     r3, 0x28(r9)
    lwzx    r3, r3, r0
    lwz     r4, 0x4(r3)
    li      r3, 0x14
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r31, r10, r0
    bl      __nw__FUl
    li      r0, 0x2
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r27, 0x4(r3)
    stw     r28, 0xc(r3)
    stw     r29, 0x8(r3)
    stw     r30, 0x10(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x7c(sp)
    lmw     r27, 0x64(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10: # 0x80235df4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x5c(sp)
    mr      r29, r5
    lwz     r7, 0x4(r3)
    lwz     r8, 0x84(r3)
    lwz     r3, 0x28(r7)
    lwzx    r4, r3, r0
    li      r3, 0xc
    lwz     r4, 0x4(r4)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r31, r8, r0
    bl      __nw__FUl
    li      r0, 0x1
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r29, 0x4(r3)
    stw     r30, 0x8(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl SMS_InitPacket_MatColor__FP8J3DModelUs12_GXChannelIDPC8_GXColor
SMS_InitPacket_MatColor__FP8J3DModelUs12_GXChannelIDPC8_GXColor: # 0x80235e7c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 16, 2
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x5c(sp)
    mr      r29, r5
    lwz     r7, 0x4(r3)
    lwz     r8, 0x84(r3)
    lwz     r3, 0x28(r7)
    lwzx    r4, r3, r0
    li      r3, 0xc
    lwz     r4, 0x4(r4)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r31, r8, r0
    bl      __nw__FUl
    li      r0, 0x0
    stw     r0, 0x0(r3)
    lis     r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@h
    addi    r0, r4, ShapePacketCallBackFunc__FP17J3DCallBackPacketi@l
    stw     r29, 0x4(r3)
    stw     r30, 0x8(r3)
    stw     r3, 0xc(r31)
    stw     r0, 0x10(r31)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl ShapePacketCallBackFunc__FP17J3DCallBackPacketi
ShapePacketCallBackFunc__FP17J3DCallBackPacketi: # 0x80235f04
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stw     r31, 0x174(sp)
    lwz     r5, 0xc(r3)
    bne-    branch_0x80236634
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0xa
    bgt-    branch_0x8023667c
    lis     r3, unk_803dbb10@ha
    addi    r3, r3, unk_803dbb10@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80235f44:
    lwz     r3, 0x8(r5)
    li      r0, 0x10
    lis     r7, 0xcc01
    lwz     r3, 0x0(r3)
    li      r6, 0x0
    stw     r3, 0x164(sp)
    lwz     r4, 0x4(r5)
    lbz     r3, 0x164(sp)
    stb     r0, -0x8000(r7)
    clrlwi  r5, r4, 31
    lbz     r0, 0x165(sp)
    sth     r6, -0x8000(r7)
    addi    r6, r5, 0x100c
    lbz     r4, 0x166(sp)
    slwi    r0, r0, 16
    insrwi  r0, r3, 8, 0
    lbz     r5, 0x167(sp)
    insrwi  r0, r4, 8, 16
    sth     r6, -0x8000(r7)
    or      r0, r5, r0
    stw     r0, -0x8000(r7)
    b       branch_0x8023667c

branch_0x80235f9c:
    lwz     r4, 0x8(r5)
    li      r0, 0x61
    lis     r3, 0xcc01
    lwz     r6, 0x0(r4)
    lwz     r4, 0x4(r4)
    stw     r6, 0x15c(sp)
    stw     r4, 0x160(sp)
    lwz     r4, 0x4(r5)
    lha     r8, 0x162(sp)
    slwi    r4, r4, 1
    lha     r9, 0x15c(sp)
    addi    r7, r4, 0xe0
    stb     r0, -0x8000(r3)
    clrlslwi  r8, r8, 21, 12
    lha     r5, 0x15e(sp)
    insrwi  r8, r9, 11, 21
    lha     r6, 0x160(sp)
    insrwi  r8, r7, 8, 0
    stw     r8, -0x8000(r3)
    clrlslwi  r5, r5, 21, 12
    addi    r4, r4, 0xe1
    insrwi  r5, r6, 11, 21
    stb     r0, -0x8000(r3)
    insrwi  r5, r4, 8, 0
    stw     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r5, -0x8000(r3)
    b       branch_0x8023667c

branch_0x80236014:
    lwz     r4, 0xc(r5)
    li      r9, 0x61
    lis     r8, 0xcc01
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x154(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0x4(r5)
    lha     r7, 0x15a(sp)
    slwi    r11, r0, 1
    lha     r10, 0x154(sp)
    clrlslwi  r7, r7, 21, 12
    stb     r9, -0x8000(r8)
    addi    r6, r11, 0xe0
    lha     r3, 0x156(sp)
    insrwi  r7, r10, 11, 21
    lha     r4, 0x158(sp)
    insrwi  r7, r6, 8, 0
    stw     r7, -0x8000(r8)
    clrlslwi  r3, r3, 21, 12
    addi    r0, r11, 0xe1
    insrwi  r3, r4, 11, 21
    stb     r9, -0x8000(r8)
    insrwi  r3, r0, 8, 0
    stw     r3, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stw     r3, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stw     r3, -0x8000(r8)
    lwz     r4, 0x10(r5)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x14c(sp)
    stw     r0, 0x150(sp)
    lwz     r0, 0x8(r5)
    lha     r6, 0x152(sp)
    slwi    r10, r0, 1
    lha     r3, 0x14e(sp)
    lha     r7, 0x14c(sp)
    clrlslwi  r6, r6, 21, 12
    addi    r5, r10, 0xe0
    stb     r9, -0x8000(r8)
    insrwi  r6, r7, 11, 21
    insrwi  r6, r5, 8, 0
    lha     r4, 0x150(sp)
    stw     r6, -0x8000(r8)
    clrlslwi  r3, r3, 21, 12
    addi    r0, r10, 0xe1
    insrwi  r3, r4, 11, 21
    stb     r9, -0x8000(r8)
    insrwi  r3, r0, 8, 0
    stw     r3, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stw     r3, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stw     r3, -0x8000(r8)
    b       branch_0x8023667c

branch_0x802360f8:
    lwz     r4, 0x10(r5)
    li      r0, 0x61
    lis     r3, 0xcc01
    lwz     r6, 0x0(r4)
    lwz     r4, 0x4(r4)
    stw     r6, 0x144(sp)
    stw     r4, 0x148(sp)
    lwz     r4, 0x4(r5)
    lha     r9, 0x14a(sp)
    slwi    r4, r4, 1
    lha     r10, 0x144(sp)
    addi    r8, r4, 0xe0
    stb     r0, -0x8000(r3)
    clrlslwi  r9, r9, 21, 12
    lha     r6, 0x146(sp)
    insrwi  r9, r10, 11, 21
    lha     r7, 0x148(sp)
    insrwi  r9, r8, 8, 0
    stw     r9, -0x8000(r3)
    clrlslwi  r6, r6, 21, 12
    addi    r4, r4, 0xe1
    insrwi  r6, r7, 11, 21
    stb     r0, -0x8000(r3)
    insrwi  r6, r4, 8, 0
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    lwz     r4, 0x14(r5)
    lwz     r6, 0x0(r4)
    lwz     r4, 0x4(r4)
    stw     r6, 0x13c(sp)
    stw     r4, 0x140(sp)
    lwz     r4, 0x8(r5)
    lha     r9, 0x142(sp)
    slwi    r4, r4, 1
    lha     r6, 0x13e(sp)
    addi    r8, r4, 0xe0
    lha     r10, 0x13c(sp)
    clrlslwi  r9, r9, 21, 12
    stb     r0, -0x8000(r3)
    insrwi  r9, r10, 11, 21
    lha     r7, 0x140(sp)
    insrwi  r9, r8, 8, 0
    stw     r9, -0x8000(r3)
    clrlslwi  r6, r6, 21, 12
    addi    r4, r4, 0xe1
    insrwi  r6, r7, 11, 21
    stb     r0, -0x8000(r3)
    insrwi  r6, r4, 8, 0
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    lwz     r4, 0x18(r5)
    lwz     r6, 0x0(r4)
    lwz     r4, 0x4(r4)
    stw     r6, 0x134(sp)
    stw     r4, 0x138(sp)
    lwz     r4, 0xc(r5)
    lha     r5, 0x13a(sp)
    slwi    r8, r4, 1
    lha     r6, 0x134(sp)
    clrlslwi  r7, r5, 21, 12
    lha     r5, 0x136(sp)
    insrwi  r7, r6, 11, 21
    stb     r0, -0x8000(r3)
    addi    r4, r8, 0xe0
    lha     r6, 0x138(sp)
    insrwi  r7, r4, 8, 0
    stw     r7, -0x8000(r3)
    clrlslwi  r5, r5, 21, 12
    addi    r4, r8, 0xe1
    insrwi  r5, r6, 11, 21
    stb     r0, -0x8000(r3)
    insrwi  r5, r4, 8, 0
    stw     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r5, -0x8000(r3)
    b       branch_0x8023667c

branch_0x80236248:
    lwz     r3, 0x4(r5)
    lwz     r4, 0x8(r5)
    bl      GXCallDisplayList
    b       branch_0x8023667c

branch_0x80236258:
    lwz     r31, 0x4(r5)
    addi    r4, sp, 0xfc
    lwz     r0, 0x14(r31)
    stw     r0, 0xfc(sp)
    lbz     r3, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f2, 0x8(r31)
    lfs     f3, 0xc(r31)
    lfs     f4, 0x10(r31)
    bl      FifoSetFog__F10_GXFogTypeffff8_GXColor
    lbz     r3, 0x1(r31)
    addi    r5, r31, 0x18
    lhz     r4, 0x2(r31)
    bl      FifoSetFogRangeAdj__FUcUsP14_GXFogAdjTable
    b       branch_0x8023667c

branch_0x80236294:
    lwz     r3, 0x8(r5)
    li      r6, 0x61
    lis     r4, 0xcc01
    lwz     r0, 0x0(r3)
    stw     r0, 0x130(sp)
    lwz     r0, 0x4(r5)
    lbz     r3, 0x133(sp)
    slwi    r8, r0, 1
    lbz     r7, 0x130(sp)
    insrwi  r7, r3, 8, 12
    stb     r6, -0x8000(r4)
    addi    r5, r8, 0xe0
    lbz     r0, 0x131(sp)
    oris    r7, r7, 0x80
    lbz     r3, 0x132(sp)
    slwi    r5, r5, 24
    insrwi  r3, r0, 8, 12
    or      r5, r7, r5
    stw     r5, -0x8000(r4)
    addi    r0, r8, 0xe1
    oris    r3, r3, 0x80
    slwi    r0, r0, 24
    stb     r6, -0x8000(r4)
    or      r0, r3, r0
    stw     r0, -0x8000(r4)
    b       branch_0x8023667c

branch_0x802362fc:
    lwz     r3, 0xc(r5)
    li      r7, 0x61
    lis     r6, 0xcc01
    lwz     r0, 0x0(r3)
    stw     r0, 0x12c(sp)
    lwz     r0, 0x4(r5)
    lbz     r3, 0x12f(sp)
    slwi    r9, r0, 1
    lbz     r8, 0x12c(sp)
    insrwi  r8, r3, 8, 12
    stb     r7, -0x8000(r6)
    addi    r4, r9, 0xe0
    lbz     r0, 0x12d(sp)
    oris    r8, r8, 0x80
    lbz     r3, 0x12e(sp)
    slwi    r4, r4, 24
    insrwi  r3, r0, 8, 12
    or      r4, r8, r4
    stw     r4, -0x8000(r6)
    addi    r0, r9, 0xe1
    oris    r3, r3, 0x80
    slwi    r0, r0, 24
    stb     r7, -0x8000(r6)
    or      r0, r3, r0
    stw     r0, -0x8000(r6)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x0(r3)
    stw     r0, 0x128(sp)
    lwz     r0, 0x8(r5)
    lbz     r3, 0x12b(sp)
    slwi    r8, r0, 1
    lbz     r5, 0x128(sp)
    insrwi  r5, r3, 8, 12
    stb     r7, -0x8000(r6)
    addi    r4, r8, 0xe0
    lbz     r0, 0x129(sp)
    lbz     r3, 0x12a(sp)
    oris    r5, r5, 0x80
    insrwi  r3, r0, 8, 12
    slwi    r4, r4, 24
    or      r4, r5, r4
    stw     r4, -0x8000(r6)
    addi    r0, r8, 0xe1
    oris    r3, r3, 0x80
    slwi    r0, r0, 24
    stb     r7, -0x8000(r6)
    or      r0, r3, r0
    stw     r0, -0x8000(r6)
    b       branch_0x8023667c

branch_0x802363c0:
    lwz     r3, 0xc(r5)
    li      r7, 0x61
    lis     r6, 0xcc01
    lwz     r0, 0x0(r3)
    addi    r4, sp, 0xe8
    stw     r0, 0x124(sp)
    lwz     r0, 0x8(r5)
    lbz     r3, 0x127(sp)
    slwi    r10, r0, 1
    lbz     r9, 0x124(sp)
    insrwi  r9, r3, 8, 12
    stb     r7, -0x8000(r6)
    addi    r8, r10, 0xe0
    lbz     r0, 0x125(sp)
    oris    r9, r9, 0x80
    lbz     r3, 0x126(sp)
    slwi    r8, r8, 24
    insrwi  r3, r0, 8, 12
    or      r8, r9, r8
    stw     r8, -0x8000(r6)
    addi    r0, r10, 0xe1
    oris    r3, r3, 0x80
    slwi    r0, r0, 24
    stb     r7, -0x8000(r6)
    or      r0, r3, r0
    stw     r0, -0x8000(r6)
    lwz     r31, 0x14(r5)
    lwz     r0, 0x14(r31)
    stw     r0, 0xe8(sp)
    lbz     r3, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f2, 0x8(r31)
    lfs     f3, 0xc(r31)
    lfs     f4, 0x10(r31)
    bl      FifoSetFog__F10_GXFogTypeffff8_GXColor
    lbz     r3, 0x1(r31)
    addi    r5, r31, 0x18
    lhz     r4, 0x2(r31)
    bl      FifoSetFogRangeAdj__FUcUsP14_GXFogAdjTable
    b       branch_0x8023667c

branch_0x80236460:
    lwz     r4, 0x8(r5)
    li      r7, 0x61
    lis     r6, 0xcc01
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x11c(sp)
    stw     r0, 0x120(sp)
    lwz     r0, 0x4(r5)
    lha     r9, 0x122(sp)
    slwi    r11, r0, 1
    lha     r10, 0x11c(sp)
    clrlslwi  r9, r9, 21, 12
    stb     r7, -0x8000(r6)
    addi    r8, r11, 0xe0
    lha     r3, 0x11e(sp)
    insrwi  r9, r10, 11, 21
    lha     r4, 0x120(sp)
    insrwi  r9, r8, 8, 0
    stw     r9, -0x8000(r6)
    clrlslwi  r3, r3, 21, 12
    addi    r0, r11, 0xe1
    insrwi  r3, r4, 11, 21
    stb     r7, -0x8000(r6)
    insrwi  r3, r0, 8, 0
    stw     r3, -0x8000(r6)
    stb     r7, -0x8000(r6)
    stw     r3, -0x8000(r6)
    stb     r7, -0x8000(r6)
    stw     r3, -0x8000(r6)
    lwz     r3, 0xc(r5)
    lwz     r0, 0x0(r3)
    stw     r0, 0x118(sp)
    lbz     r3, 0x11b(sp)
    lbz     r4, 0x118(sp)
    insrwi  r4, r3, 8, 12
    stb     r7, -0x8000(r6)
    oris    r4, r4, 0xe080
    lbz     r0, 0x119(sp)
    stw     r4, -0x8000(r6)
    lbz     r3, 0x11a(sp)
    insrwi  r3, r0, 8, 12
    stb     r7, -0x8000(r6)
    oris    r0, r3, 0xe180
    stw     r0, -0x8000(r6)
    b       branch_0x8023667c

branch_0x80236514:
    lwz     r4, 0xc(r5)
    li      r0, 0x61
    lis     r3, 0xcc01
    lwz     r6, 0x0(r4)
    lwz     r4, 0x4(r4)
    stw     r6, 0x110(sp)
    stw     r4, 0x114(sp)
    lwz     r4, 0x4(r5)
    lha     r9, 0x116(sp)
    slwi    r4, r4, 1
    lha     r10, 0x110(sp)
    addi    r8, r4, 0xe0
    stb     r0, -0x8000(r3)
    clrlslwi  r9, r9, 21, 12
    lha     r6, 0x112(sp)
    insrwi  r9, r10, 11, 21
    lha     r7, 0x114(sp)
    insrwi  r9, r8, 8, 0
    stw     r9, -0x8000(r3)
    clrlslwi  r6, r6, 21, 12
    addi    r4, r4, 0xe1
    insrwi  r6, r7, 11, 21
    stb     r0, -0x8000(r3)
    insrwi  r6, r4, 8, 0
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    lwz     r4, 0x10(r5)
    lwz     r6, 0x0(r4)
    lwz     r4, 0x4(r4)
    stw     r6, 0x108(sp)
    stw     r4, 0x10c(sp)
    lwz     r4, 0x8(r5)
    lha     r9, 0x10e(sp)
    slwi    r4, r4, 1
    lha     r6, 0x10a(sp)
    addi    r8, r4, 0xe0
    lha     r10, 0x108(sp)
    clrlslwi  r9, r9, 21, 12
    stb     r0, -0x8000(r3)
    insrwi  r9, r10, 11, 21
    lha     r7, 0x10c(sp)
    insrwi  r9, r8, 8, 0
    stw     r9, -0x8000(r3)
    clrlslwi  r6, r6, 21, 12
    addi    r4, r4, 0xe1
    insrwi  r6, r7, 11, 21
    stb     r0, -0x8000(r3)
    insrwi  r6, r4, 8, 0
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    lwz     r4, 0x14(r5)
    lwz     r4, 0x0(r4)
    stw     r4, 0x104(sp)
    lbz     r5, 0x107(sp)
    lbz     r6, 0x104(sp)
    insrwi  r6, r5, 8, 12
    stb     r0, -0x8000(r3)
    oris    r6, r6, 0xe080
    lbz     r4, 0x105(sp)
    stw     r6, -0x8000(r3)
    lbz     r5, 0x106(sp)
    insrwi  r5, r4, 8, 12
    stb     r0, -0x8000(r3)
    oris    r0, r5, 0xe180
    stw     r0, -0x8000(r3)
    b       branch_0x8023667c

branch_0x80236634:
    cmpwi   r4, 0x1
    bne-    branch_0x8023667c
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0x8
    beq-    branch_0x80236658
    bge-    branch_0x8023667c
    cmpwi   r0, 0x5
    beq-    branch_0x80236658
    b       branch_0x8023667c

branch_0x80236658:
    lfs     f1, -0x15a4(r2)
    addi    r4, sp, 0x100
    lwz     r0, R2Off_m0x15a8(r2)
    li      r3, 0x0
    fmr     f2, f1
    fmr     f3, f1
    stw     r0, 0x100(sp)
    fmr     f4, f1
    bl      FifoSetFog__F10_GXFogTypeffff8_GXColor
branch_0x8023667c:
    lwz     r0, 0x17c(sp)
    li      r3, 0x1
    lwz     r31, 0x174(sp)
    addi    sp, sp, 0x178
    mtlr    r0
    blr


.globl FifoSetFog__F10_GXFogTypeffff8_GXColor
FifoSetFog__F10_GXFogTypeffff8_GXColor: # 0x80236694
    mflr    r0
    fcmpu   cr0, f4, f3
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    addi    r26, r3, 0x0
    addi    r31, r4, 0x0
    beq-    branch_0x802366bc
    fcmpu   cr0, f2, f1
    bne-    branch_0x802366cc
branch_0x802366bc:
    lfs     f3, -0x15a4(r2)
    lfs     f4, -0x15a0(r2)
    stfs    f3, 0x28(sp)
    b       branch_0x802366ec

branch_0x802366cc:
    fsubs   f0, f4, f3
    fsubs   f5, f2, f1
    fmuls   f3, f4, f3
    fdivs   f4, f4, f0
    fmuls   f2, f0, f5
    fdivs   f0, f1, f5
    fdivs   f3, f3, f2
    stfs    f0, 0x28(sp)
branch_0x802366ec:
    lfs     f1, -0x15a0(r2)
    li      r28, 0x1
    lfd     f0, -0x1598(r2)
    b       branch_0x80236704

branch_0x802366fc:
    fmuls   f4, f4, f1
    addi    r28, r28, 0x1
branch_0x80236704:
    fcmpo   cr0, f4, f0
    bgt+    branch_0x802366fc
    lfd     f0, -0x1588(r2)
    lfs     f2, -0x1590(r2)
    lfs     f1, -0x15a4(r2)
    b       branch_0x80236724

branch_0x8023671c:
    fmuls   f4, f4, f2
    addi    r28, r28, -0x1
branch_0x80236724:
    fcmpo   cr0, f4, f1
    ble-    branch_0x80236734
    fcmpo   cr0, f4, f0
    blt+    branch_0x8023671c
branch_0x80236734:
    li      r0, 0x1
    lfs     f0, -0x1580(r2)
    slw     r0, r0, r28
    lfd     f2, -0x1578(r2)
    xoris   r0, r0, 0x8000
    fmuls   f1, f0, f4
    stw     r0, 0x34(sp)
    lis     r0, unk_43300061@h
    addi    r29, r0, unk_43300061@l
    lwz     r27, 0x28(sp)
    stw     r0, 0x30(sp)
    lis     r30, 0xcc01
    lfd     f0, 0x30(sp)
    stb     r29, -0x8000(r30)
    fsubs   f0, f0, f2
    fdivs   f0, f3, f0
    stfs    f0, 0x24(sp)
    lwz     r0, 0x24(sp)
    srwi    r0, r0, 12
    oris    r0, r0, 0xee00
    stw     r0, -0x8000(r30)
    stb     r29, -0x8000(r30)
    bl      __cvt_fp2unsigned
    oris    r0, r3, 0xef00
    stw     r0, -0x8000(r30)
    slwi    r0, r26, 21
    inslwi  r0, r27, 20, 12
    stb     r29, -0x8000(r30)
    oris    r3, r28, 0xf000
    oris    r0, r0, 0xf100
    stw     r3, -0x8000(r30)
    stb     r29, -0x8000(r30)
    stw     r0, -0x8000(r30)
    lbz     r0, 0x1(r31)
    lbz     r3, 0x2(r31)
    lbz     r4, 0x0(r31)
    insrwi  r3, r0, 8, 16
    insrwi  r3, r4, 8, 8
    stb     r29, -0x8000(r30)
    oris    r0, r3, 0xf200
    stw     r0, -0x8000(r30)
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl FifoSetFogRangeAdj__FUcUsP14_GXFogAdjTable
FifoSetFogRangeAdj__FUcUsP14_GXFogAdjTable: # 0x802367ec
    clrlwi. r0, r3, 24
    beq-    branch_0x802368fc
    li      r10, 0x0
    lhz     r8, 0x2(r5)
    srawi   r10, r10, 1
    lhz     r7, 0x0(r5)
    addze   r10, r10
    addi    r9, r10, 0xe9
    slwi    r9, r9, 24
    slwi    r8, r8, 12
    or      r8, r9, r8
    li      r10, 0x2
    srawi   r10, r10, 1
    addze   r10, r10
    addi    r9, r10, 0xe9
    li      r0, 0x61
    lis     r6, 0xcc01
    stb     r0, -0x8000(r6)
    or      r7, r8, r7
    li      r10, 0x4
    srawi   r10, r10, 1
    stw     r7, -0x8000(r6)
    addi    r7, r5, 0x4
    lhz     r8, 0x6(r5)
    slwi    r9, r9, 24
    lhz     r7, 0x0(r7)
    addze   r10, r10
    slwi    r8, r8, 12
    or      r8, r9, r8
    stb     r0, -0x8000(r6)
    or      r7, r8, r7
    addi    r9, r10, 0xe9
    stw     r7, -0x8000(r6)
    addi    r7, r5, 0x8
    lhz     r8, 0xa(r5)
    li      r10, 0x6
    lhz     r7, 0x0(r7)
    srawi   r10, r10, 1
    slwi    r9, r9, 24
    slwi    r8, r8, 12
    stb     r0, -0x8000(r6)
    or      r8, r9, r8
    or      r7, r8, r7
    addze   r10, r10
    stw     r7, -0x8000(r6)
    addi    r7, r5, 0xc
    lhz     r8, 0xe(r5)
    addi    r9, r10, 0xe9
    lhz     r7, 0x0(r7)
    li      r10, 0x8
    srawi   r10, r10, 1
    slwi    r9, r9, 24
    stb     r0, -0x8000(r6)
    slwi    r8, r8, 12
    or      r8, r9, r8
    or      r7, r8, r7
    addze   r10, r10
    stw     r7, -0x8000(r6)
    addi    r7, r5, 0x10
    lhz     r8, 0x12(r5)
    addi    r9, r10, 0xe9
    lhz     r7, 0x0(r7)
    slwi    r9, r9, 24
    slwi    r8, r8, 12
    or      r8, r9, r8
    stb     r0, -0x8000(r6)
    or      r7, r8, r7
    stw     r7, -0x8000(r6)
branch_0x802368fc:
    clrlwi  r4, r4, 16
    addi    r0, r4, 0x156
    li      r4, 0x61
    lis     r5, 0xcc01
    stb     r4, -0x8000(r5)
    oris    r4, r0, 0xe800
    clrlslwi  r0, r3, 24, 10
    or      r0, r4, r0
    stw     r0, -0x8000(r5)
    blr

