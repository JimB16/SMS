
.globl __dt__11TProgSelectFv
__dt__11TProgSelectFv: # 0x8017d9f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8017da4c
    lis     r3, 0x803c
    addi    r0, r3, 0x1254
    stw     r0, 0x0(r30)
    beq-    branch_0x8017da3c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8017da3c:
    extsh.  r0, r31
    ble-    branch_0x8017da4c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8017da4c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__11TProgSelectFUlPQ26JDrama9TGraphics
perform__11TProgSelectFUlPQ26JDrama9TGraphics: # 0x8017da68
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x1f8(sp)
    stw     r31, 0x1f4(sp)
    stw     r30, 0x1f0(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1ec(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x1e8(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x8017dcb0
    lbz     r0, 0x15(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8017dad0
    lwz     r3, 0x10(r28)
    addi    r0, r3, 0x10
    stw     r0, 0x10(r28)
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0xff
    ble-    branch_0x8017daf8
    li      r0, 0xff
    stw     r0, 0x10(r28)
    li      r0, 0x0
    stb     r0, 0x15(r28)
    b       branch_0x8017daf8

branch_0x8017dad0:
    lwz     r3, 0x10(r28)
    subi    r0, r3, 0x10
    stw     r0, 0x10(r28)
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x0
    bge-    branch_0x8017daf8
    li      r0, 0x0
    stw     r0, 0x10(r28)
    li      r0, 0x1
    stb     r0, 0x15(r28)
branch_0x8017daf8:
    lwz     r3, 0x18(r28)
    lbz     r31, 0x14(r28)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8017db24
    cmplwi  r31, 0x0
    beq-    branch_0x8017dbe8
    li      r0, 0x0
    stb     r0, 0x14(r28)
    stw     r0, 0x128(r28)
    b       branch_0x8017dbe8

branch_0x8017db24:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8017db48
    cmplwi  r31, 0x1
    beq-    branch_0x8017dbe8
    li      r0, 0x1
    stb     r0, 0x14(r28)
    li      r0, 0x0
    stw     r0, 0x128(r28)
    b       branch_0x8017dbe8

branch_0x8017db48:
    rlwinm. r0, r3, 0, 26, 26
    bne-    branch_0x8017db90
    lwz     r3, 0x128(r28)
    lis     r0, 0x4330
    addi    r3, r3, 0x1
    stw     r3, 0x128(r28)
    lwz     r3, 0x128(r28)
    lfd     f3, -0x4638(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f1, 0x12c(r28)
    stw     r3, 0x1e4(sp)
    lfs     f0, -0x4640(rtoc)
    stw     r0, 0x1e0(sp)
    lfd     f2, 0x1e0(sp)
    fsubs   f2, f2, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8017dbe8
branch_0x8017db90:
    lbz     r0, 0x14(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8017dbc0
    lis     r3, 0x803c
    crxor   6, 6, 6
    addi    r5, r3, 0x117c
    addi    r3, r28, 0x1c
    li      r4, 0x100
    bl      snprintf
    li      r3, 0x1
    bl      OSSetProgressiveMode
    b       branch_0x8017dbe0

branch_0x8017dbc0:
    lis     r3, 0x803c
    crxor   6, 6, 6
    addi    r5, r3, 0x11ec
    addi    r3, r28, 0x1c
    li      r4, 0x100
    bl      snprintf
    li      r3, 0x0
    bl      OSSetProgressiveMode
branch_0x8017dbe0:
    li      r0, 0x1
    stb     r0, 0x16(r28)
branch_0x8017dbe8:
    lbz     r0, 0x14(r28)
    cmplw   r31, r0
    beq-    branch_0x8017dc74
    li      r6, 0xff
    lis     r4, 0xff
    stw     r6, 0x10(r28)
    addi    r0, r4, 0xff
    stw     r0, 0x74(sp)
    slwi    r0, r31, 2
    lis     r3, 0x7f7f
    lwz     r5, 0x74(sp)
    add     r7, r28, r0
    stw     r4, 0x7c(sp)
    addi    r4, r3, 0x7fff
    addi    r0, r3, 0x7f00
    stw     r5, 0x78(sp)
    lwz     r3, 0x7c(sp)
    lbz     r5, 0x14(r28)
    slwi    r5, r5, 2
    add     r5, r28, r5
    lwz     r5, 0x120(r5)
    stw     r3, 0x120(r5)
    lwz     r3, 0x78(sp)
    stw     r3, 0x11c(r5)
    stw     r4, 0x64(sp)
    lwz     r3, 0x64(sp)
    stw     r0, 0x6c(sp)
    stw     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    lwz     r3, 0x120(r7)
    stw     r0, 0x120(r3)
    lwz     r0, 0x68(sp)
    stw     r0, 0x11c(r3)
    lwz     r3, 0x120(r7)
    stb     r6, 0xcc(r3)
branch_0x8017dc74:
    lwz     r3, 0x10(r28)
    lis     r0, 0xff
    addis   r3, r3, 0xff
    stw     r0, 0x5c(sp)
    stw     r3, 0x54(sp)
    lwz     r0, 0x5c(sp)
    lwz     r3, 0x54(sp)
    stw     r3, 0x58(sp)
    lbz     r3, 0x14(r28)
    slwi    r3, r3, 2
    add     r3, r28, r3
    lwz     r3, 0x120(r3)
    stw     r0, 0x120(r3)
    lwz     r0, 0x58(sp)
    stw     r0, 0x11c(r3)
branch_0x8017dcb0:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x8017dd60
    addi    r4, r30, 0x54
    addi    r3, sp, 0xe8
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0xe8
    bl      setup2D__14J2DGrafContextFv
    lwz     r4, -0x6038(r13)
    addi    r3, sp, 0x84
    li      r5, 0x0
    bl      __ct__8J2DPrintFP7JUTFonti
    li      r0, 0x20
    stw     r0, 0xd4(sp)
    li      r0, 0xff
    addi    r3, sp, 0x84
    stw     r0, 0x8(sp)
    addi    r4, r28, 0x1c
    li      r5, 0x168
    li      r6, 0xa0
    li      r7, 0x0
    li      r8, 0x2
    li      r9, 0x91
    li      r10, 0x12c
    bl      printReturn__8J2DPrintFPCcii18J2DTextBoxHBinding18J2DTextBoxVBindingiiUc
    lbz     r0, 0x16(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8017dd3c
    lwz     r3, 0x120(r28)
    li      r4, 0xf0
    li      r5, 0x190
    bl      draw__10J2DTextBoxFii
    lwz     r3, 0x124(r28)
    li      r4, 0x154
    li      r5, 0x190
    bl      draw__10J2DTextBoxFii
branch_0x8017dd3c:
    addi    r3, sp, 0x84
    li      r4, -0x1
    bl      __dt__8J2DPrintFv
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0xe8(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0xe8(sp)
branch_0x8017dd60:
    lwz     r0, 0x1fc(sp)
    lwz     r31, 0x1f4(sp)
    lwz     r30, 0x1f0(sp)
    mtlr    r0
    lwz     r29, 0x1ec(sp)
    lwz     r28, 0x1e8(sp)
    addi    sp, sp, 0x1f8
    blr


.globl __ct__11TProgSelectFUcPCc
__ct__11TProgSelectFUcPCc: # 0x8017dd80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    stw     r29, 0x8c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r30, 0x8(sp)
    mr      r3, r5
    stw     r0, 0x0(r30)
    stw     r5, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r30)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r30)
    li      r31, 0x0
    lis     r3, 0x803c
    sth     r31, 0xc(r30)
    addi    r3, r3, 0x1254
    li      r0, 0xff
    stw     r3, 0x0(r30)
    stw     r0, 0x10(r30)
    stb     r29, 0x14(r30)
    stb     r31, 0x15(r30)
    stb     r31, 0x16(r30)
    bl      SMSGetVSyncTimesPerSec__Fv
    stw     r31, 0x128(r30)
    lis     r3, 0x803c
    addi    r5, r3, 0x1148
    crxor   6, 6, 6
    stfs    f1, 0x12c(r30)
    addi    r3, r30, 0x1c
    li      r4, 0x100
    bl      snprintf
    li      r3, 0x128
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8017de3c
    lwz     r4, -0x6038(r13)
    addi    r3, r29, 0x0
    subi    r5, r13, 0x7b28
    lwz     r4, 0x48(r4)
    bl      __ct__10J2DTextBoxFPC7ResFONTPCc
branch_0x8017de3c:
    lwz     r4, 0x8(sp)
    li      r3, 0x128
    stw     r29, 0x120(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8017de68
    lwz     r4, -0x6038(r13)
    addi    r3, r29, 0x0
    subi    r5, r13, 0x7b24
    lwz     r4, 0x48(r4)
    bl      __ct__10J2DTextBoxFPC7ResFONTPCc
branch_0x8017de68:
    lwz     r6, 0x8(sp)
    li      r0, 0x1c
    stw     r29, 0x124(r6)
    lwz     r3, 0x120(r6)
    stw     r0, 0x114(r3)
    stw     r0, 0x118(r3)
    lwz     r3, 0x124(r6)
    stw     r0, 0x114(r3)
    stw     r0, 0x118(r3)
    lbz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    bne-    branch_0x8017def8
    lis     r3, 0xff
    addi    r0, r3, 0xff
    stw     r3, 0x7c(sp)
    lis     r3, 0x7f7f
    stw     r0, 0x74(sp)
    addi    r4, r3, 0x7fff
    lwz     r5, 0x7c(sp)
    addi    r0, r3, 0x7f00
    lwz     r3, 0x74(sp)
    stw     r3, 0x78(sp)
    lwz     r7, 0x120(r6)
    stw     r5, 0x120(r7)
    lwz     r3, 0x78(sp)
    stw     r3, 0x11c(r7)
    stw     r4, 0x64(sp)
    lwz     r3, 0x64(sp)
    stw     r0, 0x6c(sp)
    stw     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    lwz     r3, 0x124(r6)
    stw     r0, 0x120(r3)
    lwz     r0, 0x68(sp)
    stw     r0, 0x11c(r3)
    b       branch_0x8017df54

branch_0x8017def8:
    lis     r3, 0xff
    addi    r0, r3, 0xff
    stw     r3, 0x5c(sp)
    lis     r3, 0x7f7f
    stw     r0, 0x54(sp)
    addi    r4, r3, 0x7fff
    lwz     r5, 0x5c(sp)
    addi    r0, r3, 0x7f00
    lwz     r3, 0x54(sp)
    stw     r3, 0x58(sp)
    lwz     r7, 0x124(r6)
    stw     r5, 0x120(r7)
    lwz     r3, 0x58(sp)
    stw     r3, 0x11c(r7)
    stw     r4, 0x44(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x4c(sp)
    stw     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x120(r6)
    stw     r0, 0x120(r3)
    lwz     r0, 0x48(sp)
    stw     r0, 0x11c(r3)
branch_0x8017df54:
    lwz     r0, 0x9c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr

