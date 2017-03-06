
.globl loadMtxIndx_PNGP__11J3DShapeMtxCFiUs
loadMtxIndx_PNGP__11J3DShapeMtxCFiUs: # 0x802dfaac
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x45dc
    addi    r3, r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    bl      loadPosMtxIndx__6J3DSysCFiUs
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      loadNrmMtxIndx__6J3DSysCFiUs
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl loadMtxIndx_PCPU__11J3DShapeMtxCFiUs
loadMtxIndx_PCPU__11J3DShapeMtxCFiUs: # 0x802dfb08
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x45dc
    addi    r3, r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    mulli   r4, r29, 0x3
    bl      GXLoadPosMtxImm
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      loadNrmMtxIndx__6J3DSysCFiUs
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl loadMtxIndx_NCPU__11J3DShapeMtxCFiUs
loadMtxIndx_NCPU__11J3DShapeMtxCFiUs: # 0x802dfb68
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x45dc
    addi    r3, r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    bl      loadPosMtxIndx__6J3DSysCFiUs
    mulli   r4, r30, 0x3
    addi    r3, r31, 0x0
    bl      GXLoadNrmMtxImm
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl loadMtxIndx_PNCPU__11J3DShapeMtxCFiUs
loadMtxIndx_PNCPU__11J3DShapeMtxCFiUs: # 0x802dfbb4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x45dc
    addi    r3, r31, 0x0
    stw     r30, 0x18(sp)
    mulli   r30, r4, 0x3
    addi    r4, r30, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      GXLoadNrmMtxImm
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl load__11J3DShapeMtxCFv
load__11J3DShapeMtxCFv: # 0x802dfc04
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lwz     r0, -0x5e90(r13)
    addi    r12, sp, 0xc
    mulli   r5, r0, 0xc
    addi    r0, r4, 0x11e0
    add     r6, r0, r5
    lwz     r5, 0x0(r6)
    li      r4, 0x0
    lwz     r0, 0x4(r6)
    stw     r5, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x14(sp)
    lhz     r5, 0x4(r3)
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcNBTScale__11J3DShapeMtxFRC3VecPA3_A3_fPA3_A3_f
calcNBTScale__11J3DShapeMtxFRC3VecPA3_A3_fPA3_A3_f: # 0x802dfc60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lhz     r0, 0x4(r3)
    mulli   r0, r0, 0x24
    add     r3, r5, r0
    add     r4, r31, r0
    bl      J3DPSMtx33Copy__FPA3_fPA3_f
    lhz     r0, 0x4(r29)
    addi    r4, r30, 0x0
    mulli   r0, r0, 0x24
    add     r3, r31, r0
    bl      J3DScaleNrmMtx33__FPA3_fRC3Vec
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__11J3DShapeMtxFv
__dt__11J3DShapeMtxFv: # 0x802dfcc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dfcfc
    lis     r3, 0x803e
    addi    r3, r3, 0x125c
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802dfcfc
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dfcfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13J3DShapeMtxDLCFv
load__13J3DShapeMtxDLCFv: # 0x802dfd14
    mflr    r0
    li      r4, 0x20
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x8(r3)
    bl      GXCallDisplayList
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__16J3DShapeMtxMultiCFv
load__16J3DShapeMtxMultiCFv: # 0x802dfd3c
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x11e0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r5, -0x5e90(r13)
    mulli   r4, r5, 0xc
    add     r5, r0, r4
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x14(sp)
    b       branch_0x802dfdbc

branch_0x802dfd90:
    lwz     r3, 0xc(r29)
    lhzx    r5, r3, r31
    cmplwi  r5, 0xffff
    beq-    branch_0x802dfdb4
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r12, sp, 0xc
    bl      __ptmf_scall
    ori     r0, r0, 0x0
branch_0x802dfdb4:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x2
branch_0x802dfdbc:
    lhz     r0, 0x8(r29)
    cmpw    r30, r0
    blt+    branch_0x802dfd90
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl calcNBTScale__16J3DShapeMtxMultiFRC3VecPA3_A3_fPA3_A3_f
calcNBTScale__16J3DShapeMtxMultiFRC3VecPA3_A3_fPA3_A3_f: # 0x802dfde4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x802dfe50

branch_0x802dfe10:
    lwz     r3, 0xc(r26)
    lhzx    r0, r3, r31
    cmplwi  r0, 0xffff
    beq-    branch_0x802dfe48
    mulli   r0, r0, 0x24
    add     r3, r28, r0
    add     r4, r29, r0
    bl      J3DPSMtx33Copy__FPA3_fPA3_f
    lwz     r3, 0xc(r26)
    mr      r4, r27
    lhzx    r0, r3, r31
    mulli   r0, r0, 0x24
    add     r3, r29, r0
    bl      J3DScaleNrmMtx33__FPA3_fRC3Vec
branch_0x802dfe48:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x2
branch_0x802dfe50:
    lhz     r0, 0x8(r26)
    cmpw    r30, r0
    blt+    branch_0x802dfe10
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__12J3DShapeDrawFPCUcUl
__ct__12J3DShapeDrawFPCUcUl: # 0x802dfe70
    lis     r6, 0x803e
    addi    r0, r6, 0x1210
    stw     r0, 0x0(r3)
    stw     r4, 0x8(r3)
    stw     r5, 0x4(r3)
    blr


.globl draw__12J3DShapeDrawCFv
draw__12J3DShapeDrawCFv: # 0x802dfe88
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x8(r3)
    lwz     r4, 0x4(r4)
    bl      GXCallDisplayList
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initialize__8J3DShapeFv
initialize__8J3DShapeFv: # 0x802dfeb4
    li      r5, 0x0
    lis     r4, 0x1
    stw     r5, 0x0(r3)
    subi    r0, r4, 0x1
    sth     r0, 0x4(r3)
    subi    r0, r13, 0x5e88
    sth     r5, 0x6(r3)
    stw     r5, 0x8(r3)
    lfs     f0, 0x2a0(rtoc)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x20(r3)
    stfs    f0, 0x24(r3)
    stw     r5, 0x2c(r3)
    stw     r5, 0x34(r3)
    stw     r5, 0x38(r3)
    stw     r5, 0x44(r3)
    stw     r5, 0x48(r3)
    stw     r5, 0x4c(r3)
    stw     r5, 0x50(r3)
    stw     r5, 0x54(r3)
    stw     r0, 0x58(r3)
    stb     r5, 0x30(r3)
    blr


.globl calcNBTScale__8J3DShapeFRC3VecPA3_A3_fPA3_A3_f
calcNBTScale__8J3DShapeFRC3VecPA3_A3_fPA3_A3_f: # 0x802dff20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    li      r31, 0x0
    b       branch_0x802dff74

branch_0x802dff48:
    lwz     r3, 0x34(r27)
    clrlslwi  r0, r31, 16, 2
    addi    r4, r28, 0x0
    lwzx    r3, r3, r0
    addi    r5, r29, 0x0
    mr      r6, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
branch_0x802dff74:
    lhz     r0, 0x6(r27)
    clrlwi  r3, r31, 16
    cmplw   r3, r0
    blt+    branch_0x802dff48
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl countBumpMtxNum__8J3DShapeCFv
countBumpMtxNum__8J3DShapeCFv: # 0x802dff98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x802dffe4

branch_0x802dffc0:
    lwz     r3, 0x34(r29)
    clrlslwi  r0, r30, 16, 2
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    add     r31, r31, r3
    addi    r30, r30, 0x1
branch_0x802dffe4:
    lhz     r0, 0x6(r29)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    blt+    branch_0x802dffc0
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl makeVtxArrayCmd__8J3DShapeFv
makeVtxArrayCmd__8J3DShapeFv: # 0x802e0014
    mflr    r0
    li      r9, 0x8
    stw     r0, 0x4(sp)
    subfic  r0, r9, 0xc
    li      r8, 0x0
    mtctr   r0
    stwu    sp, -0xb0(sp)
    cmpwi   r9, 0xc
    stmw    r27, 0x9c(sp)
    addi    r7, sp, 0x58
    addi    r6, sp, 0x90
    lwz     r4, 0x44(r3)
    lwz     r5, 0xc(r4)
    slwi    r4, r9, 2
    stb     r8, 0x88(sp)
    stw     r8, 0x58(sp)
    stb     r8, 0x89(sp)
    stw     r8, 0x5c(sp)
    stb     r8, 0x8a(sp)
    stw     r8, 0x60(sp)
    stb     r8, 0x8b(sp)
    stw     r8, 0x64(sp)
    stb     r8, 0x8c(sp)
    stw     r8, 0x68(sp)
    stb     r8, 0x8d(sp)
    stw     r8, 0x6c(sp)
    stb     r8, 0x8e(sp)
    stw     r8, 0x70(sp)
    stb     r8, 0x8f(sp)
    stw     r8, 0x74(sp)
    bge-    branch_0x802e00a4
branch_0x802e0090:
    stb     r8, 0x0(r6)
    addi    r6, r6, 0x1
    stwx    r8, r7, r4
    addi    r4, r4, 0x4
    bdnz+      branch_0x802e0090
branch_0x802e00a4:
    addi    r8, sp, 0x88
    addi    r4, sp, 0x58
    b       branch_0x802e01e8

branch_0x802e00b0:
    cmpwi   r6, 0xa
    beq-    branch_0x802e0120
    bge-    branch_0x802e00c8
    cmpwi   r6, 0x9
    bge-    branch_0x802e00dc
    b       branch_0x802e01e4

branch_0x802e00c8:
    cmpwi   r6, 0x15
    bge-    branch_0x802e01e4
    cmpwi   r6, 0xd
    bge-    branch_0x802e0198
    b       branch_0x802e0164

branch_0x802e00dc:
    lwz     r0, 0x8(r5)
    cmpwi   r0, 0x4
    bne-    branch_0x802e00f8
    subi    r0, r6, 0x9
    li      r6, 0xc
    stbx    r6, r8, r0
    b       branch_0x802e0104

branch_0x802e00f8:
    subi    r0, r6, 0x9
    li      r6, 0x6
    stbx    r6, r8, r0
branch_0x802e0104:
    lwz     r6, 0x44(r3)
    lwz     r0, 0x0(r5)
    lwz     r7, 0x10(r6)
    slwi    r6, r0, 2
    subi    r0, r6, 0x24
    stwx    r7, r4, r0
    b       branch_0x802e01e4

branch_0x802e0120:
    lwz     r0, 0x8(r5)
    cmpwi   r0, 0x4
    bne-    branch_0x802e013c
    subi    r0, r6, 0x9
    li      r6, 0xc
    stbx    r6, r8, r0
    b       branch_0x802e0148

branch_0x802e013c:
    subi    r0, r6, 0x9
    li      r6, 0x6
    stbx    r6, r8, r0
branch_0x802e0148:
    lwz     r6, 0x44(r3)
    lwz     r0, 0x0(r5)
    lwz     r7, 0x14(r6)
    slwi    r6, r0, 2
    subi    r0, r6, 0x24
    stwx    r7, r4, r0
    b       branch_0x802e01e4

branch_0x802e0164:
    subi    r0, r6, 0x9
    li      r6, 0x4
    stbx    r6, r8, r0
    lwz     r9, 0x0(r5)
    lwz     r7, 0x44(r3)
    subi    r0, r9, 0xb
    clrlslwi  r6, r0, 24, 2
    addi    r0, r6, 0x1c
    slwi    r6, r9, 2
    lwzx    r7, r7, r0
    subi    r0, r6, 0x24
    stwx    r7, r4, r0
    b       branch_0x802e01e4

branch_0x802e0198:
    lwz     r0, 0x8(r5)
    cmpwi   r0, 0x4
    bne-    branch_0x802e01b4
    subi    r0, r6, 0x9
    li      r6, 0x8
    stbx    r6, r8, r0
    b       branch_0x802e01c0

branch_0x802e01b4:
    subi    r0, r6, 0x9
    li      r6, 0x4
    stbx    r6, r8, r0
branch_0x802e01c0:
    lwz     r9, 0x0(r5)
    lwz     r7, 0x44(r3)
    subi    r0, r9, 0xd
    clrlslwi  r6, r0, 24, 2
    addi    r0, r6, 0x24
    slwi    r6, r9, 2
    lwzx    r7, r7, r0
    subi    r0, r6, 0x24
    stwx    r7, r4, r0
branch_0x802e01e4:
    addi    r5, r5, 0x10
branch_0x802e01e8:
    lwz     r6, 0x0(r5)
    cmpwi   r6, 0xff
    bne+    branch_0x802e00b0
    lwz     r6, 0x2c(r3)
    li      r5, 0x1
    b       branch_0x802e0234

branch_0x802e0200:
    cmpwi   r0, 0x19
    bne-    branch_0x802e0230
    lwz     r0, 0x4(r6)
    cmpwi   r0, 0x0
    beq-    branch_0x802e0230
    stb     r5, 0x30(r3)
    lbz     r0, 0x89(sp)
    mulli   r0, r0, 0x3
    stb     r0, 0x89(sp)
    lwz     r4, 0x44(r3)
    lwz     r0, 0x18(r4)
    stw     r0, 0x5c(sp)
branch_0x802e0230:
    addi    r6, r6, 0x8
branch_0x802e0234:
    lwz     r0, 0x0(r6)
    cmpwi   r0, 0xff
    bne+    branch_0x802e0200
    addi    r30, sp, 0x88
    addi    r31, r30, 0x0
    addi    r28, sp, 0x58
    li      r27, 0x0
    li      r29, 0x0
branch_0x802e0254:
    lwzx    r4, r28, r29
    cmplwi  r4, 0x0
    beq-    branch_0x802e0270
    lbz     r5, 0x0(r30)
    addi    r3, r27, 0x9
    bl      GDSetArray
    b       branch_0x802e0280

branch_0x802e0270:
    lbz     r5, 0x0(r31)
    addi    r3, r27, 0x9
    li      r4, 0x0
    bl      GDSetArrayRaw
branch_0x802e0280:
    addi    r27, r27, 0x1
    cmpwi   r27, 0xc
    addi    r31, r31, 0x1
    addi    r30, r30, 0x1
    addi    r29, r29, 0x4
    blt+    branch_0x802e0254
    lmw     r27, 0x9c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl makeVcdVatCmd__8J3DShapeFv
makeVcdVatCmd__8J3DShapeFv: # 0x802e02ac
    mflr    r0
    li      r5, 0xc0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r4, 0x28(r3)
    addi    r3, sp, 0x14
    bl      GDInitGDLObj
    addi    r0, sp, 0x14
    stw     r0, -0x5778(r13)
    lwz     r3, 0x2c(r31)
    bl      GDSetVtxDescv
    mr      r3, r31
    bl      makeVtxArrayCmd__8J3DShapeFv
    lwz     r4, 0x44(r31)
    li      r3, 0x0
    lbz     r5, 0x30(r31)
    lwz     r4, 0xc(r4)
    bl      J3DSetVtxAttrFmtv__F9_GXVtxFmtP17_GXVtxAttrFmtListb
    bl      GDPadCurr32
    bl      GDFlushCurrToMem
    li      r0, 0x0
    stw     r0, -0x5778(r13)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl loadVtxArray__8J3DShapeCFv
loadVtxArray__8J3DShapeCFv: # 0x802e0320
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x45dc
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    li      r3, 0x9
    lwz     r4, 0x10c(r31)
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
    lbz     r0, 0x30(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802e0364
    lwz     r4, 0x110(r31)
    li      r3, 0xa
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
branch_0x802e0364:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r4, 0x114(r3)
    li      r3, 0xb
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl draw__8J3DShapeCFv
draw__8J3DShapeCFv: # 0x802e0390
    mflr    r0
    li      r4, 0xc0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    lwz     r3, 0x28(r3)
    bl      GXCallDisplayList
    lwz     r0, 0x8(r31)
    lis     r3, 0x8040
    addi    r30, r3, 0x45dc
    extrwi  r0, r0, 2, 28
    stw     r0, -0x5e90(r13)
    li      r3, 0x9
    lwz     r4, 0x10c(r30)
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
    lbz     r0, 0x30(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802e03f0
    lwz     r4, 0x110(r30)
    li      r3, 0xa
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
branch_0x802e03f0:
    lis     r3, 0x8040
    addi    r30, r3, 0x45dc
    lwz     r4, 0x114(r30)
    li      r3, 0xb
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
    lwz     r4, 0x58(r31)
    li      r3, 0x15
    lwz     r6, 0x50(r31)
    li      r5, 0x30
    lwz     r0, 0x0(r4)
    slwi    r0, r0, 2
    lwzx    r0, r6, r0
    stw     r0, 0x104(r30)
    lwz     r4, 0x104(r30)
    bl      GXSetArray
    lwz     r4, 0x58(r31)
    li      r3, 0x16
    lwz     r6, 0x54(r31)
    li      r5, 0x24
    lwz     r0, 0x0(r4)
    slwi    r0, r0, 2
    lwzx    r0, r6, r0
    stw     r0, 0x108(r30)
    lwz     r4, 0x108(r30)
    bl      GXSetArray
    lbz     r0, 0x43(r31)
    li      r3, 0x0
    stw     r0, 0x8(sp)
    lbz     r4, 0x3c(r31)
    lbz     r5, 0x3d(r31)
    lbz     r6, 0x3e(r31)
    lbz     r7, 0x3f(r31)
    lbz     r8, 0x40(r31)
    lbz     r9, 0x41(r31)
    lbz     r10, 0x42(r31)
    bl      JRNLoadCurrentMtx__FUlUlUlUlUlUlUlUlUl
    li      r29, 0x0
    b       branch_0x802e04cc

branch_0x802e0488:
    lwz     r3, 0x34(r31)
    clrlslwi  r30, r29, 16, 2
    lwzx    r3, r3, r30
    cmplwi  r3, 0x0
    beq-    branch_0x802e04ac
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x802e04ac:
    lwz     r3, 0x38(r31)
    lwzx    r4, r3, r30
    cmplwi  r4, 0x0
    beq-    branch_0x802e04c8
    lwz     r3, 0x8(r4)
    lwz     r4, 0x4(r4)
    bl      GXCallDisplayList
branch_0x802e04c8:
    addi    r29, r29, 0x1
branch_0x802e04cc:
    lhz     r0, 0x6(r31)
    clrlwi  r3, r29, 16
    cmplw   r3, r0
    blt+    branch_0x802e0488
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __dt__12J3DShapeDrawFv
__dt__12J3DShapeDrawFv: # 0x802e04f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e052c
    lis     r3, 0x803e
    addi    r3, r3, 0x1210
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802e052c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e052c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16J3DShapeMtxMultiFv
__dt__16J3DShapeMtxMultiFv: # 0x802e0544
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e0588
    lis     r3, 0x803e
    addi    r0, r3, 0x121c
    stw     r0, 0x0(r31)
    beq-    branch_0x802e0578
    lis     r3, 0x803e
    addi    r0, r3, 0x125c
    stw     r0, 0x0(r31)
branch_0x802e0578:
    extsh.  r0, r4
    ble-    branch_0x802e0588
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e0588:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__16J3DShapeMtxMultiCFv
getType__16J3DShapeMtxMultiCFv: # 0x802e05a0
    lis     r3, 0x534d
    addi    r3, r3, 0x4d4c
    blr


.globl getUseMtxNum__16J3DShapeMtxMultiCFv
getUseMtxNum__16J3DShapeMtxMultiCFv: # 0x802e05ac
    lhz     r3, 0x8(r3)
    blr


.globl getUseMtxIndex__16J3DShapeMtxMultiCFUs
getUseMtxIndex__16J3DShapeMtxMultiCFUs: # 0x802e05b4
    lwz     r3, 0xc(r3)
    clrlslwi  r0, r4, 16, 1
    lhzx    r3, r3, r0
    blr


.globl __dt__13J3DShapeMtxDLFv
__dt__13J3DShapeMtxDLFv: # 0x802e05c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e0608
    lis     r3, 0x803e
    addi    r0, r3, 0x123c
    stw     r0, 0x0(r31)
    beq-    branch_0x802e05f8
    lis     r3, 0x803e
    addi    r0, r3, 0x125c
    stw     r0, 0x0(r31)
branch_0x802e05f8:
    extsh.  r0, r4
    ble-    branch_0x802e0608
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e0608:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcNBTScale__13J3DShapeMtxDLFRC3VecPA3_A3_fPA3_A3_f
calcNBTScale__13J3DShapeMtxDLFRC3VecPA3_A3_fPA3_A3_f: # 0x802e0620
    blr


.globl getType__11J3DShapeMtxCFv
getType__11J3DShapeMtxCFv: # 0x802e0624
    lis     r3, 0x534d
    addi    r3, r3, 0x5458
    blr


.globl __sinit_J3DShape_cpp
__sinit_J3DShape_cpp: # 0x802e0630
    lis     r3, 0x803e
    addi    r4, r3, 0x11b0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x30(r4)
    stw     r0, 0x34(r4)
    lwz     r0, 0x8(r4)
    stw     r0, 0x38(r4)
    lwz     r3, 0xc(r4)
    lwz     r0, 0x10(r4)
    stw     r3, 0x3c(r4)
    stw     r0, 0x40(r4)
    lwz     r0, 0x14(r4)
    stw     r0, 0x44(r4)
    lwz     r3, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r3, 0x48(r4)
    stw     r0, 0x4c(r4)
    lwz     r0, 0x20(r4)
    stw     r0, 0x50(r4)
    lwz     r3, 0x24(r4)
    lwz     r0, 0x28(r4)
    stw     r3, 0x54(r4)
    stw     r0, 0x58(r4)
    lwz     r0, 0x2c(r4)
    stw     r0, 0x5c(r4)
    blr

