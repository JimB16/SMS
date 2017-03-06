
.globl __ct__15J3DJointFactoryFRC13J3DJointBlock
__ct__15J3DJointFactoryFRC13J3DJointBlock: # 0x802e5020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r4, 0xc(r4)
    bl      JSUConvertOffsetToPtr_16J3DJointInitData___FPCvUl
    stw     r3, 0x0(r30)
    mr      r3, r31
    lwz     r4, 0x10(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvUl
    stw     r3, 0x4(r30)
    mr      r3, r30
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl create__15J3DJointFactoryFi
create__15J3DJointFactoryFi: # 0x802e5078
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x64
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802e50c8
    stw     r30, 0x24(sp)
    lwz     r3, 0x24(sp)
    bl      __ct__7J3DNodeFv
    lis     r4, 0x803e
    lwz     r3, 0x24(sp)
    addi    r0, r4, 0x7f0
    stw     r0, 0x0(r3)
    bl      initialize__8J3DJointFv
branch_0x802e50c8:
    sth     r29, 0x18(r30)
    slwi    r0, r29, 1
    li      r3, 0x0
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    lhzx    r4, r4, r0
    slwi    r4, r4, 6
    lhzx    r4, r5, r4
    stb     r4, 0x1a(r30)
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    lhzx    r4, r4, r0
    slwi    r4, r4, 6
    add     r4, r5, r4
    lbz     r4, 0x2(r4)
    stb     r4, 0x1b(r30)
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    lhzx    r4, r4, r0
    slwi    r4, r4, 6
    addi    r6, r4, 0x4
    add     r6, r5, r6
    lfs     f0, 0x0(r6)
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x20(r30)
    lfs     f0, 0x8(r6)
    stfs    f0, 0x24(r30)
    lha     r4, 0xc(r6)
    sth     r4, 0x28(r30)
    lha     r4, 0xe(r6)
    sth     r4, 0x2a(r30)
    lha     r4, 0x10(r6)
    sth     r4, 0x2c(r30)
    lfs     f0, 0x14(r6)
    stfs    f0, 0x30(r30)
    lfs     f0, 0x18(r6)
    stfs    f0, 0x34(r30)
    lfs     f0, 0x1c(r6)
    stfs    f0, 0x38(r30)
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    lhzx    r4, r4, r0
    slwi    r4, r4, 6
    add     r4, r5, r4
    lfs     f0, 0x24(r4)
    stfs    f0, 0x3c(r30)
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    lhzx    r4, r4, r0
    slwi    r4, r4, 6
    addi    r4, r4, 0x28
    add     r6, r5, r4
    lwz     r5, 0x0(r6)
    lwz     r4, 0x4(r6)
    stw     r5, 0x40(r30)
    stw     r4, 0x44(r30)
    lwz     r4, 0x8(r6)
    stw     r4, 0x48(r30)
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    lhzx    r0, r4, r0
    slwi    r4, r0, 6
    addi    r0, r4, 0x34
    add     r5, r5, r0
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x4c(r30)
    stw     r0, 0x50(r30)
    lwz     r0, 0x8(r5)
    stw     r0, 0x54(r30)
    stw     r3, 0x58(r30)
    stw     r3, 0x5c(r30)
    lbz     r0, 0x1b(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x802e51fc
    stb     r3, 0x1b(r30)
branch_0x802e51fc:
    lwz     r0, 0x44(sp)
    mr      r3, r30
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl JSUConvertOffsetToPtr_Us___FPCvUl
JSUConvertOffsetToPtr_Us___FPCvUl: # 0x802e521c
    cmplwi  r4, 0x0
    bne-    branch_0x802e522c
    li      r3, 0x0
    blr

branch_0x802e522c:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_16J3DJointInitData___FPCvUl
JSUConvertOffsetToPtr_16J3DJointInitData___FPCvUl: # 0x802e5234
    cmplwi  r4, 0x0
    bne-    branch_0x802e5244
    li      r3, 0x0
    blr

branch_0x802e5244:
    add     r3, r3, r4
    blr

