
.globl __ct__13J3DVertexDataFv
__ct__13J3DVertexDataFv: # 0x802ed614
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    stw     r0, 0x2c(r3)
    stw     r0, 0x30(r3)
    stw     r0, 0x34(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r3)
    blr


.globl __dt__13J3DVertexDataFv
__dt__13J3DVertexDataFv: # 0x802ed660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802ed688
    extsh.  r0, r4
    ble-    branch_0x802ed688
    mr      r3, r31
    bl      __dl__FPv
branch_0x802ed688:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__15J3DVertexBufferFP13J3DVertexData
__ct__15J3DVertexBufferFP13J3DVertexData: # 0x802ed6a0
    lis     r5, __vvt__15J3DVertexBuffer@h
    addi    r0, r5, __vvt__15J3DVertexBuffer@l
    stw     r0, 0x38(r3)
    li      r5, 0x0
    stw     r4, 0x0(r3)
    lwz     r0, 0x10(r4)
    stw     r0, 0x4(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0xc(r3)
    lwz     r0, 0x1c(r4)
    stw     r0, 0x14(r3)
    stw     r5, 0x8(r3)
    stw     r5, 0x10(r3)
    stw     r5, 0x18(r3)
    lwz     r0, 0x10(r4)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x24(r3)
    stw     r5, 0x20(r3)
    stw     r5, 0x28(r3)
    lwz     r0, 0x10(r4)
    stw     r0, 0x2c(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x30(r3)
    lwz     r0, 0x1c(r4)
    stw     r0, 0x34(r3)
    blr


.globl __dt__15J3DVertexBufferFv
__dt__15J3DVertexBufferFv: # 0x802ed70c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802ed740
    lis     r3, __vvt__15J3DVertexBuffer@h
    addi    r3, r3, __vvt__15J3DVertexBuffer@l
    extsh.  r0, r4
    stw     r3, 0x38(r31)
    ble-    branch_0x802ed740
    mr      r3, r31
    bl      __dl__FPv
branch_0x802ed740:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl copyTransformedVtxArray__15J3DVertexBufferFv
copyTransformedVtxArray__15J3DVertexBufferFv: # 0x802ed758
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802ed78c
    lwz     r0, 0x20(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x802ed80c
branch_0x802ed78c:
    li      r30, 0x0
    li      r31, 0x0
branch_0x802ed794:
    cmpwi   r30, 0x0
    beq-    branch_0x802ed7ac
    addi    r0, r31, 0x1c
    lwzx    r0, r29, r0
    cmplwi  r0, 0x0
    bne-    branch_0x802ed7c8
branch_0x802ed7ac:
    lwz     r3, 0x0(r29)
    li      r4, 0x20
    lwz     r0, 0x0(r3)
    mulli   r3, r0, 0xc
    bl      __nwa__FUli
    addi    r0, r31, 0x1c
    stwx    r3, r29, r0
branch_0x802ed7c8:
    cmpwi   r30, 0x0
    beq-    branch_0x802ed7e0
    addi    r0, r31, 0x24
    lwzx    r0, r29, r0
    cmplwi  r0, 0x0
    bne-    branch_0x802ed7fc
branch_0x802ed7e0:
    lwz     r3, 0x0(r29)
    li      r4, 0x20
    lwz     r0, 0x4(r3)
    mulli   r3, r0, 0xc
    bl      __nwa__FUli
    addi    r0, r31, 0x24
    stwx    r3, r29, r0
branch_0x802ed7fc:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x2
    addi    r31, r31, 0x4
    blt+    branch_0x802ed794
branch_0x802ed80c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__14J3DDrawMtxDataFv
__ct__14J3DDrawMtxDataFv: # 0x802ed828
    li      r0, 0x0
    sth     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl __dt__14J3DDrawMtxDataFv
__dt__14J3DDrawMtxDataFv: # 0x802ed83c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802ed864
    extsh.  r0, r4
    ble-    branch_0x802ed864
    mr      r3, r31
    bl      __dl__FPv
branch_0x802ed864:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

