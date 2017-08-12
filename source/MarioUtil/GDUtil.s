
.globl make__10TGDLStaticFv
make__10TGDLStaticFv: # 0x80236924
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802369c4
    lwz     r3, 0x18(r31)
    li      r4, 0x20
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    stw     r0, 0x18(r31)
    lwz     r3, 0x18(r31)
    bl      __nwa__FUli
    stw     r3, 0x14(r31)
    li      r4, 0x0
    lwz     r3, 0x14(r31)
    lwz     r5, 0x18(r31)
    bl      memset
    lwz     r4, 0x14(r31)
    mr      r3, r31
    lwz     r5, 0x18(r31)
    bl      GDInitGDLObj
    lis     r3, TGDLStaticOverFlow__Fv@h
    addi    r3, r3, TGDLStaticOverFlow__Fv@l
    bl      GDSetOverflowCallback
    li      r0, 0x0
    stb     r0, 0x10(r31)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802369c0
    mr      r3, r27
    bl      __ct__11JKRDisposerFv
    lis     r3, __vvt__Q210TGDLStatic12TGDLSentinel@ha
    addi    r0, r3, __vvt__Q210TGDLStatic12TGDLSentinel@l
    stw     r0, 0x0(r27)
    stw     r31, 0x18(r27)
branch_0x802369c0:
    stw     r27, 0x1c(r31)
branch_0x802369c4:
    lis     r4, TGDLStaticOverFlow__Fv@h
    lwz     r27, R13Off_m0x5778(r13)
    lis     r3, __vvt__Q210TGDLStatic12TGDLSentinel@ha
    addi    r29, r4, TGDLStaticOverFlow__Fv@l
    addi    r30, r3, __vvt__Q210TGDLStatic12TGDLSentinel@l
branch_0x802369d8:
    li      r28, 0x0
    stb     r28, 0x11(r31)
    mr      r3, r31
    stw     r31, R13Off_m0x60e8(r13)
    stw     r31, R13Off_m0x5778(r13)
    lwz     r12, 0x20(r31)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    bl      GDPadCurr32
    bl      GDFlushCurrToMem
    lbz     r0, 0x11(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80236a1c
    li      r0, 0x1
    stb     r0, 0x10(r31)
    b       branch_0x80236a9c

branch_0x80236a1c:
    lwz     r0, 0x18(r31)
    li      r4, 0x20
    slwi    r0, r0, 1
    stw     r0, 0x18(r31)
    lwz     r3, 0x18(r31)
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    stw     r0, 0x18(r31)
    lwz     r3, 0x18(r31)
    bl      __nwa__FUli
    stw     r3, 0x14(r31)
    li      r4, 0x0
    lwz     r3, 0x14(r31)
    lwz     r5, 0x18(r31)
    bl      memset
    lwz     r4, 0x14(r31)
    mr      r3, r31
    lwz     r5, 0x18(r31)
    bl      GDInitGDLObj
    mr      r3, r29
    bl      GDSetOverflowCallback
    stb     r28, 0x10(r31)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80236a94
    mr      r3, r28
    bl      __ct__11JKRDisposerFv
    stw     r30, 0x0(r28)
    stw     r31, 0x18(r28)
branch_0x80236a94:
    stw     r28, 0x1c(r31)
    b       branch_0x802369d8

branch_0x80236a9c:
    stw     r27, R13Off_m0x5778(r13)
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl alloc__10TGDLStaticFUl
alloc__10TGDLStaticFUl: # 0x80236ab4
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    stwu    sp, -0x18(sp)
    li      r4, 0x20
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    stw     r0, 0x18(r3)
    lwz     r3, 0x18(r3)
    bl      __nwa__FUli
    stw     r3, 0x14(r31)
    li      r4, 0x0
    lwz     r3, 0x14(r31)
    lwz     r5, 0x18(r31)
    bl      memset
    lwz     r4, 0x14(r31)
    mr      r3, r31
    lwz     r5, 0x18(r31)
    bl      GDInitGDLObj
    lis     r3, TGDLStaticOverFlow__Fv@h
    addi    r3, r3, TGDLStaticOverFlow__Fv@l
    bl      GDSetOverflowCallback
    li      r0, 0x0
    stb     r0, 0x10(r31)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80236b44
    mr      r3, r30
    bl      __ct__11JKRDisposerFv
    lis     r3, __vvt__Q210TGDLStatic12TGDLSentinel@ha
    addi    r0, r3, __vvt__Q210TGDLStatic12TGDLSentinel@l
    stw     r0, 0x0(r30)
    stw     r31, 0x18(r30)
branch_0x80236b44:
    stw     r30, 0x1c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TGDLStaticFv
__dt__10TGDLStaticFv: # 0x80236b60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80236b9c
    lis     r3, __vvt__10TGDLStatic@ha
    addi    r0, r3, __vvt__10TGDLStatic@l
    stw     r0, 0x20(r31)
    li      r3, 0x0
    extsh.  r0, r4
    stw     r3, 0x14(r31)
    ble-    branch_0x80236b9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80236b9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q210TGDLStatic12TGDLSentinelFv
__dt__Q210TGDLStatic12TGDLSentinelFv: # 0x80236bb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80236c10
    lis     r3, __vvt__Q210TGDLStatic12TGDLSentinel@ha
    addi    r0, r3, __vvt__Q210TGDLStatic12TGDLSentinel@l
    stw     r0, 0x0(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    lwz     r5, 0x18(r30)
    li      r4, 0x0
    stw     r0, 0x14(r5)
    stw     r0, 0x1c(r5)
    stb     r0, 0x10(r5)
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r31
    ble-    branch_0x80236c10
    mr      r3, r30
    bl      __dl__FPv
branch_0x80236c10:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl TGDLStaticOverFlow__Fv
TGDLStaticOverFlow__Fv: # 0x80236c2c
    lwz     r3, R13Off_m0x60e8(r13)
    li      r0, 0x1
    stb     r0, 0x11(r3)
    blr

