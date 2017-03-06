
.globl __ct__13JPAExTexShapeFPCUc
__ct__13JPAExTexShapeFPCUc: # 0x80335170
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r5, r5, 0x4474
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x4468
    lwz     r31, 0x8(sp)
    stw     r5, 0x0(r31)
    stw     r0, 0x0(r31)
    lbz     r0, 0x10(r4)
    stb     r0, 0x25(r31)
    lbz     r0, 0x11(r4)
    cmpwi   r0, 0x2
    beq-    branch_0x80335238
    bge-    branch_0x803351cc
    cmpwi   r0, 0x0
    bge-    branch_0x803351d8
    b       branch_0x8033524c

branch_0x803351cc:
    cmpwi   r0, 0x4
    bge-    branch_0x8033524c
    b       branch_0x80335244

branch_0x803351d8:
    li      r0, 0x1
    stw     r0, 0x20(r31)
    lha     r3, 0x12(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x8(r31)
    lha     r3, 0x14(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0xc(r31)
    lha     r3, 0x16(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x10(r31)
    lha     r3, 0x18(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x14(r31)
    lha     r3, 0x1a(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x18(r31)
    lha     r3, 0x1c(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1c(r31)
    addi    r3, r31, 0x8
    li      r4, 0x18
    bl      DCStoreRange
    b       branch_0x8033524c

branch_0x80335238:
    li      r0, 0x5
    stw     r0, 0x20(r31)
    b       branch_0x8033524c

branch_0x80335244:
    li      r0, 0x9
    stw     r0, 0x20(r31)
branch_0x8033524c:
    lwz     r3, 0x8(sp)
    lbz     r0, 0x1e(r30)
    stb     r0, 0x24(r3)
    lbz     r0, 0x1f(r30)
    stb     r0, 0x26(r3)
    lbz     r0, 0x20(r30)
    stb     r0, 0x27(r3)
    lbz     r0, 0x30(r30)
    stb     r0, 0x28(r3)
    lbz     r0, 0x33(r30)
    stb     r0, 0x29(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12JPADataBlockFv
__dt__12JPADataBlockFv: # 0x80335290
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x803352c4
    lis     r3, 0x803e
    addi    r3, r3, 0x4474
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x803352c4
    mr      r3, r31
    bl      __dl__FPv
branch_0x803352c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13JPAExTexShapeFv
__dt__13JPAExTexShapeFv: # 0x803352dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80335320
    lis     r3, 0x803e
    addi    r0, r3, 0x4468
    stw     r0, 0x0(r31)
    beq-    branch_0x80335310
    lis     r3, 0x803e
    addi    r0, r3, 0x4474
    stw     r0, 0x0(r31)
branch_0x80335310:
    extsh.  r0, r4
    ble-    branch_0x80335320
    mr      r3, r31
    bl      __dl__FPv
branch_0x80335320:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

