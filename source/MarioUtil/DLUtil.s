
.globl draw__15TDLColorTexQuadFv
draw__15TDLColorTexQuadFv: # 0x80224f0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80224f98
    lhz     r0, 0x4(r31)
    li      r3, 0x9
    li      r5, 0xc
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x14(r4)
    bl      GXSetArray
    lhz     r0, 0x4(r31)
    li      r3, 0xb
    li      r5, 0x4
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x20(r4)
    bl      GXSetArray
    li      r3, 0xd
    subi    r4, r13, 0x7720
    li      r5, 0x2
    bl      GXSetArray
    bl      GXInvalidateVtxCache
    lhz     r0, 0x4(r31)
    lwz     r3, 0x1c(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    addi    r0, r3, 0x1f
    lwz     r3, 0xc(r4)
    clrrwi  r4, r0, 5
    bl      GXCallDisplayList
branch_0x80224f98:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setEnd__15TDLColorTexQuadFv
setEnd__15TDLColorTexQuadFv: # 0x80224fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r4, 0x8(r3)
    li      r3, 0x0
    lhz     r0, 0x4(r31)
    addi    r4, r4, 0x2
    slwi    r0, r0, 2
    rlwinm  r5, r4, 2, 16, 23
    add     r4, r31, r0
    lwz     r4, 0xc(r4)
    srawi   r0, r5, 8
    stb     r0, 0x1(r4)
    lhz     r0, 0x4(r31)
    lhz     r4, 0x8(r31)
    slwi    r0, r0, 2
    addi    r5, r4, 0x2
    add     r4, r31, r0
    lwz     r4, 0xc(r4)
    clrlslwi  r0, r5, 26, 2
    stb     r0, 0x2(r4)
    lhz     r5, 0xa(r31)
    lhz     r0, 0x8(r31)
    slwi    r4, r5, 3
    mullw   r0, r5, r0
    slwi    r0, r0, 2
    add     r4, r4, r0
    addi    r0, r4, 0x3
    stw     r0, 0x1c(r31)
    lwz     r6, 0x1c(r31)
    lhz     r0, 0x4(r31)
    addi    r4, r6, 0x1f
    clrrwi  r4, r4, 5
    slwi    r0, r0, 2
    subf.   r5, r6, r4
    add     r4, r31, r0
    lwz     r0, 0xc(r4)
    add     r4, r0, r6
    ble-    branch_0x802250c0
    cmpwi   r5, 0x8
    subi    r6, r5, 0x8
    ble-    branch_0x802250a0
    addi    r0, r6, 0x7
    srwi    r0, r0, 3
    cmpwi   r6, 0x0
    mtctr   r0
    ble-    branch_0x802250a0
    mr      r0, r3
branch_0x80225074:
    stb     r0, 0x0(r4)
    addi    r3, r3, 0x8
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    addi    r4, r4, 0x8
    bdnz+      branch_0x80225074
branch_0x802250a0:
    subf    r0, r3, r5
    cmpw    r3, r5
    mtctr   r0
    li      r0, 0x0
    bge-    branch_0x802250c0
branch_0x802250b4:
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bdnz+      branch_0x802250b4
branch_0x802250c0:
    lhz     r0, 0x4(r31)
    lwz     r3, 0x1c(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    addi    r0, r3, 0x1f
    lwz     r3, 0xc(r4)
    clrrwi  r4, r0, 5
    bl      DCStoreRange
    lhz     r3, 0x4(r31)
    lhz     r0, 0x8(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    mulli   r4, r0, 0x30
    lwz     r3, 0x14(r3)
    bl      DCStoreRange
    lhz     r0, 0x4(r31)
    lwz     r4, 0x1c(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xc(r3)
    bl      DCStoreRange
    lhz     r3, 0x4(r31)
    lhz     r0, 0x8(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    lwz     r3, 0x20(r3)
    slwi    r4, r0, 2
    bl      DCStoreRange
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl requestCol__15TDLColorTexQuadFPCQ29JGeometry8TVec3_f_8_GXColori
requestCol__15TDLColorTexQuadFPCQ29JGeometry8TVec3_f_8_GXColori: # 0x80225144
    lhz     r8, 0x8(r3)
    lhz     r0, 0x6(r3)
    cmplw   r8, r0
    bge-    branch_0x80225320
    lhz     r7, 0x4(r3)
    mulli   r9, r8, 0x30
    lwz     r8, 0x0(r4)
    lwz     r0, 0x4(r4)
    slwi    r7, r7, 2
    add     r7, r3, r7
    lwz     r10, 0x14(r7)
    clrlwi  r7, r6, 30
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r0, 0x4(r9)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r9)
    lhz     r0, 0x8(r3)
    lhz     r10, 0x4(r3)
    slwi    r9, r0, 2
    lwz     r8, 0xc(r4)
    slwi    r10, r10, 2
    lwz     r0, 0x10(r4)
    addi    r9, r9, 0x1
    add     r10, r3, r10
    mulli   r9, r9, 0xc
    lwz     r10, 0x14(r10)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r0, 0x4(r9)
    lwz     r0, 0x14(r4)
    stw     r0, 0x8(r9)
    lhz     r0, 0x8(r3)
    lhz     r10, 0x4(r3)
    slwi    r9, r0, 2
    lwz     r8, 0x18(r4)
    slwi    r10, r10, 2
    lwz     r0, 0x1c(r4)
    addi    r9, r9, 0x2
    add     r10, r3, r10
    mulli   r9, r9, 0xc
    lwz     r10, 0x14(r10)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r0, 0x4(r9)
    lwz     r0, 0x20(r4)
    stw     r0, 0x8(r9)
    lhz     r0, 0x8(r3)
    lhz     r10, 0x4(r3)
    slwi    r9, r0, 2
    lwz     r8, 0x24(r4)
    slwi    r10, r10, 2
    lwz     r0, 0x28(r4)
    addi    r9, r9, 0x3
    add     r10, r3, r10
    mulli   r9, r9, 0xc
    lwz     r10, 0x14(r10)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r0, 0x4(r9)
    lwz     r0, 0x2c(r4)
    stw     r0, 0x8(r9)
    lhz     r0, 0x4(r3)
    lhz     r4, 0x8(r3)
    slwi    r8, r0, 2
    lwz     r0, 0x0(r5)
    add     r5, r3, r8
    lwz     r5, 0x20(r5)
    slwi    r4, r4, 2
    stwx    r0, r5, r4
    lhz     r0, 0x4(r3)
    lhz     r10, 0x8(r3)
    slwi    r0, r0, 2
    lhz     r8, 0xa(r3)
    add     r4, r3, r0
    rlwinm  r0, r10, 2, 16, 23
    lwz     r9, 0xc(r4)
    srawi   r5, r0, 8
    clrlslwi  r0, r10, 26, 2
    srawi   r4, r0, 2
    slwi    r8, r8, 3
    slwi    r0, r10, 4
    add     r8, r8, r0
    clrlslwi  r11, r10, 26, 2
    addi    r8, r8, 0x3
    add     r8, r9, r8
    stb     r5, 0x0(r8)
    addi    r0, r11, 0x1
    clrlwi  r9, r5, 24
    stb     r11, 0x1(r8)
    clrlwi  r10, r4, 24
    stb     r4, 0x2(r8)
    stb     r7, 0x3(r8)
    stb     r5, 0x4(r8)
    stb     r0, 0x5(r8)
    addi    r8, r8, 0x6
    addi    r0, r6, 0x1
    stb     r10, 0x0(r8)
    clrlwi  r0, r0, 30
    stb     r0, 0x1(r8)
    addi    r4, r6, 0x2
    addi    r0, r11, 0x2
    stb     r9, 0x2(r8)
    clrlwi  r4, r4, 30
    stb     r0, 0x3(r8)
    addi    r0, r6, 0x3
    clrlwi  r0, r0, 30
    stb     r10, 0x4(r8)
    stb     r4, 0x5(r8)
    addi    r4, r11, 0x3
    stb     r9, 0x6(r8)
    stb     r4, 0x7(r8)
    stb     r10, 0x8(r8)
    stb     r0, 0x9(r8)
    lhz     r4, 0x8(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x8(r3)
    li      r3, 0x1
    blr

branch_0x80225320:
    li      r3, 0x0
    blr


.globl createBuffer__15TDLColorTexQuadFUs
createBuffer__15TDLColorTexQuadFUs: # 0x80225328
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    sth     r30, 0x6(r3)
    sth     r0, 0x4(r29)
    stw     r0, 0x1c(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r0, 0x4
    sth     r0, 0xa(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    clrlwi  r31, r30, 16
    mulli   r0, r31, 0xc
    slwi    r30, r0, 2
    addi    r3, r30, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x14(r29)
    addi    r3, r30, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x18(r29)
    slwi    r30, r31, 2
    addi    r3, r30, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x20(r29)
    addi    r3, r30, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x24(r29)
    li      r0, 0x80
    lwz     r3, 0xc(r29)
    stb     r0, 0x0(r3)
    lwz     r3, 0x10(r29)
    stb     r0, 0x0(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl draw__10TDLTexQuadFv
draw__10TDLTexQuadFv: # 0x80225408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802254fc
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x3
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x2
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    lhz     r0, 0x4(r31)
    li      r3, 0x9
    li      r5, 0xc
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x14(r4)
    bl      GXSetArray
    li      r3, 0xd
    subi    r4, r13, 0x7720
    li      r5, 0x2
    bl      GXSetArray
    bl      GXInvalidateVtxCache
    li      r5, 0x0
    li      r4, 0x0
    b       branch_0x802254cc

branch_0x802254b0:
    lhz     r0, 0x4(r31)
    slwi    r3, r0, 2
    addi    r0, r3, 0xc
    lwzx    r3, r31, r0
    addi    r0, r3, 0x3
    stbx    r4, r5, r0
    addi    r5, r5, 0x1
branch_0x802254cc:
    lhz     r0, 0xa(r31)
    slwi    r0, r0, 3
    cmpw    r5, r0
    blt+    branch_0x802254b0
    lhz     r0, 0x4(r31)
    lwz     r3, 0x1c(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    addi    r0, r3, 0x1f
    lwz     r3, 0xc(r4)
    clrrwi  r4, r0, 5
    bl      GXCallDisplayList
branch_0x802254fc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setEnd__10TDLTexQuadFv
setEnd__10TDLTexQuadFv: # 0x80225510
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r4, 0x8(r3)
    li      r3, 0x0
    lhz     r0, 0x4(r31)
    addi    r4, r4, 0x2
    slwi    r0, r0, 2
    rlwinm  r5, r4, 2, 16, 23
    add     r4, r31, r0
    lwz     r4, 0xc(r4)
    srawi   r0, r5, 8
    stb     r0, 0x1(r4)
    lhz     r0, 0x4(r31)
    lhz     r4, 0x8(r31)
    slwi    r0, r0, 2
    addi    r5, r4, 0x2
    add     r4, r31, r0
    lwz     r4, 0xc(r4)
    clrlslwi  r0, r5, 26, 2
    stb     r0, 0x2(r4)
    lhz     r5, 0xa(r31)
    lhz     r0, 0x8(r31)
    slwi    r4, r5, 3
    mullw   r0, r5, r0
    slwi    r0, r0, 2
    add     r4, r4, r0
    addi    r0, r4, 0x3
    stw     r0, 0x1c(r31)
    lwz     r5, 0x1c(r31)
    lhz     r0, 0x4(r31)
    addi    r4, r5, 0x1f
    clrrwi  r4, r4, 5
    slwi    r0, r0, 2
    subf.   r6, r5, r4
    add     r4, r31, r0
    lwz     r0, 0xc(r4)
    add     r5, r0, r5
    ble-    branch_0x80225624
    cmpwi   r6, 0x8
    subi    r4, r6, 0x8
    ble-    branch_0x80225604
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmpwi   r4, 0x0
    mtctr   r0
    ble-    branch_0x80225604
    li      r0, 0x0
branch_0x802255d8:
    stb     r0, 0x0(r5)
    addi    r3, r3, 0x8
    stb     r0, 0x1(r5)
    stb     r0, 0x2(r5)
    stb     r0, 0x3(r5)
    stb     r0, 0x4(r5)
    stb     r0, 0x5(r5)
    stb     r0, 0x6(r5)
    stb     r0, 0x7(r5)
    addi    r5, r5, 0x8
    bdnz+      branch_0x802255d8
branch_0x80225604:
    subf    r0, r3, r6
    cmpw    r3, r6
    mtctr   r0
    li      r0, 0x0
    bge-    branch_0x80225624
branch_0x80225618:
    stb     r0, 0x0(r5)
    addi    r5, r5, 0x1
    bdnz+      branch_0x80225618
branch_0x80225624:
    lhz     r0, 0x4(r31)
    lwz     r3, 0x1c(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    addi    r0, r3, 0x1f
    lwz     r3, 0xc(r4)
    clrrwi  r4, r0, 5
    bl      DCStoreRange
    lhz     r3, 0x4(r31)
    lhz     r0, 0x8(r31)
    slwi    r3, r3, 2
    add     r3, r31, r3
    mulli   r4, r0, 0x30
    lwz     r3, 0x14(r3)
    bl      DCStoreRange
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl request__10TDLTexQuadFPCQ29JGeometry8TVec3_f_
request__10TDLTexQuadFPCQ29JGeometry8TVec3_f_: # 0x80225674
    lhz     r6, 0x8(r3)
    lhz     r0, 0x6(r3)
    cmplw   r6, r0
    bge-    branch_0x80225808
    lhz     r5, 0x4(r3)
    mulli   r8, r6, 0x30
    lwz     r0, 0x0(r4)
    lwz     r6, 0x4(r4)
    slwi    r5, r5, 2
    add     r5, r3, r5
    lwz     r9, 0x14(r5)
    li      r7, 0x0
    li      r5, 0x1
    add     r8, r9, r8
    stw     r0, 0x0(r8)
    li      r0, 0x2
    stw     r6, 0x4(r8)
    lwz     r6, 0x8(r4)
    stw     r6, 0x8(r8)
    lhz     r6, 0x8(r3)
    lhz     r10, 0x4(r3)
    slwi    r9, r6, 2
    lwz     r8, 0xc(r4)
    slwi    r10, r10, 2
    lwz     r6, 0x10(r4)
    addi    r9, r9, 0x1
    add     r10, r3, r10
    mulli   r9, r9, 0xc
    lwz     r10, 0x14(r10)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r6, 0x4(r9)
    lwz     r6, 0x14(r4)
    stw     r6, 0x8(r9)
    lhz     r6, 0x8(r3)
    lhz     r10, 0x4(r3)
    slwi    r9, r6, 2
    lwz     r8, 0x18(r4)
    slwi    r10, r10, 2
    lwz     r6, 0x1c(r4)
    addi    r9, r9, 0x2
    add     r10, r3, r10
    mulli   r9, r9, 0xc
    lwz     r10, 0x14(r10)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r6, 0x4(r9)
    lwz     r6, 0x20(r4)
    stw     r6, 0x8(r9)
    lhz     r6, 0x8(r3)
    lhz     r10, 0x4(r3)
    slwi    r9, r6, 2
    lwz     r8, 0x24(r4)
    slwi    r10, r10, 2
    lwz     r6, 0x28(r4)
    addi    r9, r9, 0x3
    add     r10, r3, r10
    mulli   r9, r9, 0xc
    lwz     r10, 0x14(r10)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r6, 0x4(r9)
    lwz     r4, 0x2c(r4)
    stw     r4, 0x8(r9)
    lhz     r4, 0xa(r3)
    lhz     r11, 0x8(r3)
    slwi    r6, r4, 3
    lhz     r9, 0x4(r3)
    mullw   r4, r11, r4
    slwi    r9, r9, 2
    add     r9, r3, r9
    slwi    r4, r4, 2
    lwz     r10, 0xc(r9)
    add     r6, r6, r4
    rlwinm  r4, r11, 2, 16, 23
    addi    r12, r6, 0x3
    srawi   r9, r4, 8
    add     r12, r10, r12
    clrlslwi  r8, r11, 26, 2
    stb     r9, 0x0(r12)
    clrlslwi  r4, r11, 26, 2
    stb     r4, 0x1(r12)
    addi    r6, r8, 0x1
    addi    r4, r8, 0x2
    stb     r7, 0x2(r12)
    stb     r9, 0x3(r12)
    stb     r6, 0x4(r12)
    stb     r5, 0x5(r12)
    stb     r9, 0x6(r12)
    stb     r4, 0x7(r12)
    stb     r0, 0x8(r12)
    addi    r0, r8, 0x3
    stb     r9, 0x9(r12)
    stbu    r0, 0xa(r12)
    li      r0, 0x3
    stb     r0, 0x1(r12)
    lhz     r4, 0x8(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x8(r3)
    li      r3, 0x1
    blr

branch_0x80225808:
    li      r3, 0x0
    blr


.globl createBuffer__10TDLTexQuadFUs
createBuffer__10TDLTexQuadFUs: # 0x80225810
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    sth     r31, 0x6(r3)
    sth     r0, 0x4(r30)
    stw     r0, 0x1c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r0, 0x3
    sth     r0, 0xa(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    clrlwi  r0, r31, 16
    mulli   r0, r0, 0xc
    slwi    r31, r0, 2
    addi    r3, r31, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x14(r30)
    addi    r3, r31, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x18(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createDLBuffer__10TDLTexQuadFUs
createDLBuffer__10TDLTexQuadFUs: # 0x802258b0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    li      r4, 0x20
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    lhz     r3, 0xa(r3)
    mullw   r0, r3, r0
    slwi    r3, r3, 3
    slwi    r0, r0, 2
    add     r3, r3, r0
    addi    r0, r3, 0x22
    clrrwi  r30, r0, 5
    addi    r3, r30, 0x0
    bl      __nwa__FUli
    stw     r3, 0xc(r31)
    addi    r3, r30, 0x0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x10(r31)
    li      r0, 0x80
    li      r5, 0x0
    lwz     r3, 0xc(r31)
    li      r4, 0x0
    stb     r0, 0x0(r3)
    lwz     r3, 0x10(r31)
    stb     r0, 0x0(r3)
    b       branch_0x80225940

branch_0x80225928:
    lwz     r3, 0xc(r31)
    addi    r0, r5, 0x3
    addi    r5, r5, 0x1
    stbx    r4, r3, r0
    lwz     r3, 0x10(r31)
    stbx    r4, r3, r0
branch_0x80225940:
    lhz     r0, 0xa(r31)
    slwi    r0, r0, 3
    cmpw    r5, r0
    blt+    branch_0x80225928
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

