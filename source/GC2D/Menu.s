
.globl __dt__10TFlashPaneFv
__dt__10TFlashPaneFv: # 0x8013efa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013f000
    lis     r3, 0x803c
    subi    r0, r3, 0xa8
    stw     r0, 0x0(r30)
    beq-    branch_0x8013eff0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8013eff0:
    extsh.  r0, r31
    ble-    branch_0x8013f000
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013f000:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__10TFlashPaneFUlPQ26JDrama9TGraphics
perform__10TFlashPaneFUlPQ26JDrama9TGraphics: # 0x8013f01c
    clrlwi. r0, r4, 31
    beqlr-    

    lwz     r4, 0x14(r3)
    lwz     r0, 0x18(r3)
    add     r0, r4, r0
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r3)
    cmpwi   r0, 0x0
    bge-    branch_0x8013f060
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8013f07c
    li      r0, 0x0
    stw     r0, 0x14(r3)
    li      r0, 0x4
    stw     r0, 0x18(r3)
    b       branch_0x8013f07c

branch_0x8013f060:
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0xff
    blt-    branch_0x8013f07c
    li      r0, 0xff
    stw     r0, 0x14(r3)
    li      r0, -0x4
    stw     r0, 0x18(r3)
branch_0x8013f07c:
    lwz     r0, 0x14(r3)
    lwz     r3, 0x10(r3)
    stb     r0, 0xcc(r3)
    blr


.globl perform__10TMenuPlaneFUlPQ26JDrama9TGraphics
perform__10TMenuPlaneFUlPQ26JDrama9TGraphics: # 0x8013f08c
    stwu    sp, -0x78(sp)
    lwz     r5, 0x18(r3)
    rlwinm. r0, r5, 0, 29, 29
    bne-    branch_0x8013f210
    clrlwi. r0, r4, 31
    beq-    branch_0x8013f210
    lwz     r4, 0x10(r3)
    lwz     r0, 0x34(r3)
    lwz     r4, 0xd4(r4)
    and.    r0, r4, r0
    beq-    branch_0x8013f0c4
    ori     r0, r5, 0x1
    stw     r0, 0x18(r3)
    b       branch_0x8013f210

branch_0x8013f0c4:
    lwz     r0, 0x38(r3)
    and.    r0, r4, r0
    beq-    branch_0x8013f0dc
    ori     r0, r5, 0x2
    stw     r0, 0x18(r3)
    b       branch_0x8013f210

branch_0x8013f0dc:
    lwz     r0, 0x28(r3)
    cmpwi   r0, 0x1
    ble-    branch_0x8013f210
    rlwinm. r0, r4, 0, 27, 30
    beq-    branch_0x8013f210
    lwz     r0, 0x24(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x2c(r3)
    lwz     r5, 0x30(r3)
    slwi    r4, r0, 2
    lwz     r0, 0x70(sp)
    lwzx    r4, r5, r4
    stw     r0, 0xf0(r4)
    lwz     r0, 0x24(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x2c(r3)
    lwz     r5, 0x30(r3)
    slwi    r4, r0, 2
    lwz     r0, 0x6c(sp)
    lwzx    r4, r5, r4
    stw     r0, 0xf4(r4)
    lwz     r4, 0x10(r3)
    lwz     r0, 0xd4(r4)
    rlwinm. r0, r0, 0, 27, 28
    beq-    branch_0x8013f170
    lwz     r0, 0x2c(r3)
    lbz     r5, 0x3c(r3)
    cmpw    r0, r5
    bge-    branch_0x8013f168
    lwz     r4, 0x28(r3)
    add     r0, r0, r5
    cmpw    r4, r0
    ble-    branch_0x8013f170
    stw     r0, 0x2c(r3)
    b       branch_0x8013f170

branch_0x8013f168:
    subf    r0, r5, r0
    stw     r0, 0x2c(r3)
branch_0x8013f170:
    lwz     r4, 0x10(r3)
    lwz     r4, 0xd4(r4)
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x8013f1a4
    lwz     r0, 0x2c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8013f194
    lwz     r0, 0x28(r3)
    stw     r0, 0x2c(r3)
branch_0x8013f194:
    lwz     r4, 0x2c(r3)
    subi    r0, r4, 0x1
    stw     r0, 0x2c(r3)
    b       branch_0x8013f1d0

branch_0x8013f1a4:
    rlwinm. r0, r4, 0, 29, 29
    beq-    branch_0x8013f1d0
    lwz     r4, 0x2c(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x2c(r3)
    lwz     r4, 0x2c(r3)
    lwz     r0, 0x28(r3)
    cmpw    r4, r0
    blt-    branch_0x8013f1d0
    li      r0, 0x0
    stw     r0, 0x2c(r3)
branch_0x8013f1d0:
    lwz     r0, 0x1c(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x2c(r3)
    lwz     r5, 0x30(r3)
    slwi    r4, r0, 2
    lwz     r0, 0x68(sp)
    lwzx    r4, r5, r4
    stw     r0, 0xf0(r4)
    lwz     r0, 0x20(r3)
    stw     r0, 0x64(sp)
    lwz     r0, 0x2c(r3)
    lwz     r4, 0x30(r3)
    slwi    r3, r0, 2
    lwz     r0, 0x64(sp)
    lwzx    r3, r4, r3
    stw     r0, 0xf4(r3)
branch_0x8013f210:
    addi    sp, sp, 0x78
    blr


.globl __ct__10TMenuPlaneFPC13TMarioGamePadP7J2DPaneUlUl
__ct__10TMenuPlaneFPC13TMarioGamePadP7J2DPaneUlUl: # 0x8013f218
    mflr    r0
    lis     r8, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r8, 0x20f0
    stwu    sp, -0x4c0(sp)
    stmw    r27, 0x4ac(sp)
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x8038
    addi    r3, r3, 0x7780
    lwz     r31, 0x8(sp)
    stw     r0, 0x0(r31)
    stw     r3, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r31)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803c
    sth     r4, 0xc(r31)
    subi    r0, r3, 0x84
    li      r3, 0xff
    stw     r0, 0x0(r31)
    li      r0, 0x3c
    stw     r27, 0x10(r31)
    stw     r28, 0x14(r31)
    stw     r4, 0x18(r31)
    stb     r3, 0x1c(r31)
    stb     r0, 0x1d(r31)
    stb     r4, 0x1e(r31)
    stb     r3, 0x1f(r31)
    stb     r3, 0x20(r31)
    stb     r3, 0x21(r31)
    stb     r4, 0x22(r31)
    stb     r3, 0x23(r31)
    stb     r3, 0x24(r31)
    stb     r3, 0x25(r31)
    stb     r3, 0x26(r31)
    stb     r3, 0x27(r31)
    stw     r4, 0x28(r31)
    stw     r4, 0x2c(r31)
    stw     r4, 0x30(r31)
    stw     r29, 0x34(r31)
    stw     r30, 0x38(r31)
    stb     r4, 0x3c(r31)
    lwz     r3, 0x14(r31)
    lwz     r7, 0xd0(r3)
    cmplwi  r7, 0x0
    beq-    branch_0x8013f2f0
    subi    r7, r7, 0xc
branch_0x8013f2f0:
    addi    r5, sp, 0xa0
    b       branch_0x8013f384

branch_0x8013f2f8:
    lwz     r4, 0xc(r7)
    lhz     r0, 0x4(r4)
    cmplwi  r0, 0x13
    bne-    branch_0x8013f374
    lwz     r3, 0x10(r4)
    addis   r0, r3, 0x8d8d
    cmplwi  r0, 0x6574
    beq-    branch_0x8013f374
    lwz     r6, 0x8(sp)
    lwz     r0, 0x28(r6)
    slwi    r0, r0, 2
    stwx    r4, r5, r0
    lwz     r0, 0x28(r6)
    cmpwi   r0, 0x0
    bne-    branch_0x8013f364
    lwz     r0, 0xf0(r4)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x9c(sp)
    stw     r0, 0x24(r6)
    lwz     r0, 0x1c(r6)
    stw     r0, 0x98(sp)
    lwz     r0, 0x98(sp)
    stw     r0, 0xf0(r4)
    lwz     r0, 0x20(r6)
    stw     r0, 0x94(sp)
    lwz     r0, 0x94(sp)
    stw     r0, 0xf4(r4)
branch_0x8013f364:
    lwz     r4, 0x8(sp)
    lwz     r3, 0x28(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x28(r4)
branch_0x8013f374:
    lwz     r7, 0x18(r7)
    cmplwi  r7, 0x0
    beq-    branch_0x8013f384
    subi    r7, r7, 0xc
branch_0x8013f384:
    cmplwi  r7, 0x0
    bne+    branch_0x8013f2f8
    lwz     r31, 0x8(sp)
    lwz     r0, 0x28(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x30(r31)
    addi    r5, sp, 0xa0
    li      r6, 0x0
    li      r4, 0x0
    b       branch_0x8013f3c4

branch_0x8013f3b0:
    lwzx    r0, r5, r4
    addi    r6, r6, 0x1
    lwz     r3, 0x30(r3)
    stwx    r0, r3, r4
    addi    r4, r4, 0x4
branch_0x8013f3c4:
    lwz     r3, 0x8(sp)
    lwz     r0, 0x28(r3)
    cmpw    r6, r0
    blt+    branch_0x8013f3b0
    lmw     r27, 0x4ac(sp)
    lwz     r0, 0x4c4(sp)
    addi    sp, sp, 0x4c0
    mtlr    r0
    blr


.globl perform__9TMenuBaseFUlPQ26JDrama9TGraphics
perform__9TMenuBaseFUlPQ26JDrama9TGraphics: # 0x8013f3e8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x118(sp)
    stw     r31, 0x114(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x110(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8013f468
    addi    r4, r31, 0x54
    addi    r3, sp, 0x18
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x18
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x10(r30)
    addi    r6, sp, 0x18
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lwz     r4, 0x68(r31)
    lwz     r5, 0x70(r31)
    lwz     r3, 0x64(r31)
    lwz     r0, 0x6c(r31)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x18(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0x18(sp)
branch_0x8013f468:
    lwz     r0, 0x11c(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    mtlr    r0
    addi    sp, sp, 0x118
    blr


.globl __dt__13J2DOrthoGraphFv
__dt__13J2DOrthoGraphFv: # 0x8013f480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8013f4c4
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    stw     r0, 0x0(r31)
    beq-    branch_0x8013f4b4
    lis     r3, 0x803e
    addi    r0, r3, 0x1448
    stw     r0, 0x0(r31)
branch_0x8013f4b4:
    extsh.  r0, r4
    ble-    branch_0x8013f4c4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8013f4c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__10TMenuPlaneFv
__dt__10TMenuPlaneFv: # 0x8013f4dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013f534
    lis     r3, 0x803c
    subi    r0, r3, 0x84
    stw     r0, 0x0(r30)
    beq-    branch_0x8013f524
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8013f524:
    extsh.  r0, r31
    ble-    branch_0x8013f534
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013f534:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TMenuBaseFv
__dt__9TMenuBaseFv: # 0x8013f550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8013f5a8
    lis     r3, 0x803c
    subi    r0, r3, 0x60
    stw     r0, 0x0(r30)
    beq-    branch_0x8013f598
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8013f598:
    extsh.  r0, r31
    ble-    branch_0x8013f5a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8013f5a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

