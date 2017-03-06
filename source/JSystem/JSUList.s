
.globl __ct__10JSUPtrLinkFPv
__ct__10JSUPtrLinkFPv: # 0x802c5c30
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r4, 0x0(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    blr


.globl __dt__10JSUPtrLinkFv
__dt__10JSUPtrLinkFv: # 0x802c5c48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c5c8c
    lwz     r3, 0x4(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802c5c7c
    mr      r4, r30
    bl      remove__10JSUPtrListFP10JSUPtrLink
branch_0x802c5c7c:
    extsh.  r0, r31
    ble-    branch_0x802c5c8c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c5c8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__10JSUPtrListFb
__ct__10JSUPtrListFb: # 0x802c5ca8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x802c5ccc
    mr      r3, r31
    bl      initiate__10JSUPtrListFv
branch_0x802c5ccc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__10JSUPtrListFv
__dt__10JSUPtrListFv: # 0x802c5ce4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802c5d34
    lwz     r5, 0x0(r31)
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x802c5d18

branch_0x802c5d0c:
    stw     r3, 0x4(r5)
    addi    r6, r6, 0x1
    lwz     r5, 0xc(r5)
branch_0x802c5d18:
    lwz     r0, 0x8(r31)
    cmplw   r6, r0
    blt+    branch_0x802c5d0c
    extsh.  r0, r4
    ble-    branch_0x802c5d34
    mr      r3, r31
    bl      __dl__FPv
branch_0x802c5d34:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initiate__10JSUPtrListFv
initiate__10JSUPtrListFv: # 0x802c5d4c
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl append__10JSUPtrListFP10JSUPtrLink
append__10JSUPtrListFP10JSUPtrLink: # 0x802c5d60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4(r4)
    neg     r0, r4
    cntlzw  r0, r0
    cmplwi  r4, 0x0
    srwi    r3, r0, 5
    beq-    branch_0x802c5da0
    addi    r3, r4, 0x0
    addi    r4, r31, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
branch_0x802c5da0:
    clrlwi. r0, r3, 24
    beq-    branch_0x802c5e04
    lwz     r0, 0x8(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802c5dd8
    stw     r30, 0x4(r31)
    li      r4, 0x0
    li      r0, 0x1
    stw     r4, 0x8(r31)
    stw     r4, 0xc(r31)
    stw     r31, 0x4(r30)
    stw     r31, 0x0(r30)
    stw     r0, 0x8(r30)
    b       branch_0x802c5e04

branch_0x802c5dd8:
    stw     r30, 0x4(r31)
    li      r0, 0x0
    lwz     r4, 0x4(r30)
    stw     r4, 0x8(r31)
    stw     r0, 0xc(r31)
    lwz     r4, 0x4(r30)
    stw     r31, 0xc(r4)
    stw     r31, 0x4(r30)
    lwz     r4, 0x8(r30)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r30)
branch_0x802c5e04:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl prepend__10JSUPtrListFP10JSUPtrLink
prepend__10JSUPtrListFP10JSUPtrLink: # 0x802c5e1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4(r4)
    neg     r0, r4
    cntlzw  r0, r0
    cmplwi  r4, 0x0
    srwi    r3, r0, 5
    beq-    branch_0x802c5e5c
    addi    r3, r4, 0x0
    addi    r4, r31, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
branch_0x802c5e5c:
    clrlwi. r0, r3, 24
    beq-    branch_0x802c5ec0
    lwz     r0, 0x8(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802c5e94
    stw     r30, 0x4(r31)
    li      r4, 0x0
    li      r0, 0x1
    stw     r4, 0x8(r31)
    stw     r4, 0xc(r31)
    stw     r31, 0x4(r30)
    stw     r31, 0x0(r30)
    stw     r0, 0x8(r30)
    b       branch_0x802c5ec0

branch_0x802c5e94:
    stw     r30, 0x4(r31)
    li      r0, 0x0
    stw     r0, 0x8(r31)
    lwz     r0, 0x0(r30)
    stw     r0, 0xc(r31)
    lwz     r4, 0x0(r30)
    stw     r31, 0x8(r4)
    stw     r31, 0x0(r30)
    lwz     r4, 0x8(r30)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r30)
branch_0x802c5ec0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink
insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink: # 0x802c5ed8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x0(r3)
    cmplw   r29, r0
    bne-    branch_0x802c5f98
    lwz     r3, 0x4(r31)
    neg     r0, r3
    cntlzw  r0, r0
    cmplwi  r3, 0x0
    srwi    r4, r0, 5
    beq-    branch_0x802c5f2c
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    mr      r4, r3
branch_0x802c5f2c:
    clrlwi. r0, r4, 24
    beq-    branch_0x802c5f90
    lwz     r0, 0x8(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802c5f64
    stw     r30, 0x4(r31)
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, 0x8(r31)
    stw     r3, 0xc(r31)
    stw     r31, 0x4(r30)
    stw     r31, 0x0(r30)
    stw     r0, 0x8(r30)
    b       branch_0x802c5f90

branch_0x802c5f64:
    stw     r30, 0x4(r31)
    li      r0, 0x0
    stw     r0, 0x8(r31)
    lwz     r0, 0x0(r30)
    stw     r0, 0xc(r31)
    lwz     r3, 0x0(r30)
    stw     r31, 0x8(r3)
    stw     r31, 0x0(r30)
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x802c5f90:
    mr      r3, r4
    b       branch_0x802c6098

branch_0x802c5f98:
    cmplwi  r29, 0x0
    bne-    branch_0x802c6030
    lwz     r3, 0x4(r31)
    neg     r0, r3
    cntlzw  r0, r0
    cmplwi  r3, 0x0
    srwi    r4, r0, 5
    beq-    branch_0x802c5fc4
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    mr      r4, r3
branch_0x802c5fc4:
    clrlwi. r0, r4, 24
    beq-    branch_0x802c6028
    lwz     r0, 0x8(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802c5ffc
    stw     r30, 0x4(r31)
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, 0x8(r31)
    stw     r3, 0xc(r31)
    stw     r31, 0x4(r30)
    stw     r31, 0x0(r30)
    stw     r0, 0x8(r30)
    b       branch_0x802c6028

branch_0x802c5ffc:
    stw     r30, 0x4(r31)
    li      r0, 0x0
    lwz     r3, 0x4(r30)
    stw     r3, 0x8(r31)
    stw     r0, 0xc(r31)
    lwz     r3, 0x4(r30)
    stw     r31, 0xc(r3)
    stw     r31, 0x4(r30)
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x802c6028:
    mr      r3, r4
    b       branch_0x802c6098

branch_0x802c6030:
    lwz     r0, 0x4(r29)
    cmplw   r0, r30
    beq-    branch_0x802c6044
    li      r3, 0x0
    b       branch_0x802c6098

branch_0x802c6044:
    lwz     r3, 0x4(r31)
    neg     r0, r3
    cntlzw  r0, r0
    cmplwi  r3, 0x0
    srwi    r4, r0, 5
    beq-    branch_0x802c6068
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    mr      r4, r3
branch_0x802c6068:
    clrlwi. r0, r4, 24
    beq-    branch_0x802c6094
    lwz     r3, 0x8(r29)
    stw     r30, 0x4(r31)
    stw     r3, 0x8(r31)
    stw     r29, 0xc(r31)
    stw     r31, 0xc(r3)
    stw     r31, 0x8(r29)
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x802c6094:
    mr      r3, r4
branch_0x802c6098:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl remove__10JSUPtrListFP10JSUPtrLink
remove__10JSUPtrListFP10JSUPtrLink: # 0x802c60b4
    lwz     r5, 0x4(r4)
    subf    r0, r5, r3
    cntlzw  r0, r0
    cmplw   r5, r3
    srwi    r6, r0, 5
    bne-    branch_0x802c615c
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802c60e8
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    b       branch_0x802c6148

branch_0x802c60e8:
    lwz     r0, 0x0(r3)
    cmplw   r4, r0
    bne-    branch_0x802c610c
    lwz     r5, 0xc(r4)
    li      r0, 0x0
    stw     r0, 0x8(r5)
    lwz     r0, 0xc(r4)
    stw     r0, 0x0(r3)
    b       branch_0x802c6148

branch_0x802c610c:
    lwz     r0, 0x4(r3)
    cmplw   r4, r0
    bne-    branch_0x802c6130
    lwz     r5, 0x8(r4)
    li      r0, 0x0
    stw     r0, 0xc(r5)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4(r3)
    b       branch_0x802c6148

branch_0x802c6130:
    lwz     r0, 0xc(r4)
    lwz     r5, 0x8(r4)
    stw     r0, 0xc(r5)
    lwz     r0, 0x8(r4)
    lwz     r5, 0xc(r4)
    stw     r0, 0x8(r5)
branch_0x802c6148:
    li      r0, 0x0
    stw     r0, 0x4(r4)
    lwz     r4, 0x8(r3)
    subi    r0, r4, 0x1
    stw     r0, 0x8(r3)
branch_0x802c615c:
    mr      r3, r6
    blr

