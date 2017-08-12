
.globl calc__11J3DTexNoAnmCFPUs
calc__11J3DTexNoAnmCFPUs: # 0x802efcec
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x8(r3)
    lhz     r4, 0x4(r6)
    bl      getTexNo__16J3DAnmTexPatternCFUsPUs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initialize__14J3DMaterialAnmFv
initialize__14J3DMaterialAnmFv: # 0x802efd1c
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0x2c(r3)
    stw     r0, 0x30(r3)
    stw     r0, 0x34(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r3)
    stw     r0, 0x44(r3)
    stw     r0, 0x48(r3)
    stw     r0, 0x4c(r3)
    stw     r0, 0x50(r3)
    stw     r0, 0x54(r3)
    stw     r0, 0x58(r3)
    stw     r0, 0x5c(r3)
    stw     r0, 0x60(r3)
    stw     r0, 0x64(r3)
    stw     r0, 0x68(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    blr


.globl calc__14J3DMaterialAnmCFP11J3DMaterial
calc__14J3DMaterialAnmCFP11J3DMaterial: # 0x802efd8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    li      r27, 0x0
    li      r29, 0x0
branch_0x802efdac:
    addi    r28, r29, 0x4
    add     r28, r30, r28
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802efdf8
    lwz     r3, 0x20(r31)
    mr      r4, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r28)
    mr      r5, r3
    lwz     r3, 0x4(r4)
    lhz     r4, 0x0(r4)
    lwz     r12, 0xc(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802efdf8:
    addi    r27, r27, 0x1
    cmplwi  r27, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x802efdac
    li      r27, 0x0
    li      r29, 0x0
branch_0x802efe10:
    addi    r0, r29, 0x2c
    lwzx    r3, r30, r0
    cmplwi  r3, 0x0
    beq-    branch_0x802efe50
    lwz     r12, 0x0(r3)
    addi    r4, sp, 0x18
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28(r31)
    mr      r4, r27
    lhz     r5, 0x18(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x802efe50:
    addi    r27, r27, 0x1
    cmplwi  r27, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x802efe10
    li      r27, 0x0
    li      r29, 0x0
branch_0x802efe68:
    addi    r28, r29, 0x4c
    add     r28, r30, r28
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802efea8
    lwz     r3, 0x28(r31)
    mr      r4, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r28)
    mr      r5, r3
    lwz     r3, 0x4(r4)
    lhz     r4, 0x0(r4)
    bl      getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10
branch_0x802efea8:
    addi    r27, r27, 0x1
    cmplwi  r27, 0x3
    addi    r29, r29, 0x4
    blt+    branch_0x802efe68
    li      r27, 0x0
    li      r29, 0x0
branch_0x802efec0:
    addi    r28, r29, 0x5c
    add     r28, r30, r28
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802eff00
    lwz     r3, 0x28(r31)
    mr      r4, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r28)
    mr      r5, r3
    lwz     r3, 0x4(r4)
    lhz     r4, 0x0(r4)
    bl      getTevKonstReg__15J3DAnmTevRegKeyCFUsP8_GXColor
branch_0x802eff00:
    addi    r27, r27, 0x1
    cmplwi  r27, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x802efec0
    li      r27, 0x0
    li      r29, 0x0
branch_0x802eff18:
    addi    r28, r29, 0xc
    add     r28, r30, r28
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802eff5c
    lwz     r3, 0x24(r31)
    mr      r4, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r28)
    addi    r5, r3, 0x10
    lwz     r3, 0x4(r4)
    lhz     r4, 0x0(r4)
    lfs     f1, 0x4(r3)
    bl      calcTransform__19J3DAnmTextureSRTKeyCFfUsP17J3DTextureSRTInfo
branch_0x802eff5c:
    addi    r27, r27, 0x1
    cmplwi  r27, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x802eff18
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__14J3DMaterialAnmFv
__dt__14J3DMaterialAnmFv: # 0x802eff80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802effb4
    lis     r3, __vvt__14J3DMaterialAnm@h
    addi    r3, r3, __vvt__14J3DMaterialAnm@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802effb4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802effb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

