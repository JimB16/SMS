
.globl __dt__14TGXAlphaUpdateFv
__dt__14TGXAlphaUpdateFv: # 0x80296938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80296990
    lis     r3, 0x803e
    subi    r0, r3, 0x10e0
    stw     r0, 0x0(r30)
    beq-    branch_0x80296980
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80296980:
    extsh.  r0, r31
    ble-    branch_0x80296990
    mr      r3, r30
    bl      __dl__FPv
branch_0x80296990:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__14TGXAlphaUpdateFUlPQ26JDrama9TGraphics
perform__14TGXAlphaUpdateFUlPQ26JDrama9TGraphics: # 0x802969ac
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 1, 1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    beq-    branch_0x802969d0
    li      r3, 0x1
    bl      GXSetAlphaUpdate
branch_0x802969d0:
    rlwinm. r0, r31, 0, 2, 2
    beq-    branch_0x802969ec
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
branch_0x802969ec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl perform__9TReInitGXFUlPQ26JDrama9TGraphics
perform__9TReInitGXFUlPQ26JDrama9TGraphics: # 0x80296a00
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 24, 24
    stwu    sp, -0x8(sp)
    beq-    branch_0x80296a18
    bl      ReInitializeGX
branch_0x80296a18:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__12TSMSDrawInitFUlPQ26JDrama9TGraphics
perform__12TSMSDrawInitFUlPQ26JDrama9TGraphics: # 0x80296a28
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x8(sp)
    beq-    branch_0x80296a40
    bl      SMS_DrawInit__Fv
branch_0x80296a40:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__17TJ3DSysSetViewMtxFUlPQ26JDrama9TGraphics
perform__17TJ3DSysSetViewMtxFUlPQ26JDrama9TGraphics: # 0x80296a50
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 29, 29
    stwu    sp, -0x8(sp)
    beq-    branch_0x80296a74
    lis     r4, 0x8040
    addi    r3, r5, 0xb4
    addi    r4, r4, 0x45dc
    bl      PSMTXCopy
branch_0x80296a74:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__11TJ3DSysFlagFUlPQ26JDrama9TGraphics
perform__11TJ3DSysFlagFUlPQ26JDrama9TGraphics: # 0x80296a84
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 24, 24
    stwu    sp, -0x20(sp)
    beq-    branch_0x80296aac
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x34(r3)
branch_0x80296aac:
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x80296af8
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    addi    r4, sp, 0x1c
    ori     r0, r0, 0x2
    stw     r0, 0x34(r3)
    li      r3, 0x4
    lwz     r0, -0x610(rtoc)
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
branch_0x80296af8:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__9TReInitGXFv
__dt__9TReInitGXFv: # 0x80296b08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80296b60
    lis     r3, 0x803e
    subi    r0, r3, 0x10bc
    stw     r0, 0x0(r30)
    beq-    branch_0x80296b50
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80296b50:
    extsh.  r0, r31
    ble-    branch_0x80296b60
    mr      r3, r30
    bl      __dl__FPv
branch_0x80296b60:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TSMSDrawInitFv
__dt__12TSMSDrawInitFv: # 0x80296b7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80296bd4
    lis     r3, 0x803e
    subi    r0, r3, 0x1098
    stw     r0, 0x0(r30)
    beq-    branch_0x80296bc4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80296bc4:
    extsh.  r0, r31
    ble-    branch_0x80296bd4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80296bd4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TJ3DSysSetViewMtxFv
__dt__17TJ3DSysSetViewMtxFv: # 0x80296bf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80296c48
    lis     r3, 0x803e
    subi    r0, r3, 0x1074
    stw     r0, 0x0(r30)
    beq-    branch_0x80296c38
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80296c38:
    extsh.  r0, r31
    ble-    branch_0x80296c48
    mr      r3, r30
    bl      __dl__FPv
branch_0x80296c48:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TJ3DSysFlagFv
__dt__11TJ3DSysFlagFv: # 0x80296c64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80296cbc
    lis     r3, 0x803e
    subi    r0, r3, 0x1050
    stw     r0, 0x0(r30)
    beq-    branch_0x80296cac
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80296cac:
    extsh.  r0, r31
    ble-    branch_0x80296cbc
    mr      r3, r30
    bl      __dl__FPv
branch_0x80296cbc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

