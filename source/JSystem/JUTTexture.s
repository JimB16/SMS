
.globl __ct__10JUTTextureFii9_GXTexFmt
__ct__10JUTTextureFii9_GXTexFmt: # 0x802ca4ec
    mflr    r0
    li      r7, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    li      r31, 0x1
    addi    r29, r6, 0x0
    addi    r28, r5, 0x0
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r5, r29, 0x0
    li      r6, 0x0
    stb     r31, 0x50(r3)
    clrlwi  r3, r4, 16
    clrlwi  r4, r28, 16
    bl      GXGetTexBufferSize
    addi    r30, r3, 0x0
    addi    r3, r30, 0x20
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x4c(r26)
    li      r5, 0x0
    li      r0, 0x20
    lwz     r4, 0x4c(r26)
    addi    r3, r26, 0x0
    stb     r29, 0x0(r4)
    stb     r5, 0x1(r4)
    sth     r27, 0x2(r4)
    sth     r28, 0x4(r4)
    stb     r5, 0x6(r4)
    stb     r5, 0x7(r4)
    stb     r5, 0x8(r4)
    stb     r5, 0x9(r4)
    sth     r5, 0xa(r4)
    stw     r5, 0xc(r4)
    stb     r5, 0x10(r4)
    stb     r5, 0x11(r4)
    stb     r5, 0x12(r4)
    stb     r5, 0x13(r4)
    stb     r31, 0x14(r4)
    stb     r31, 0x15(r4)
    stb     r5, 0x16(r4)
    stb     r5, 0x17(r4)
    stb     r31, 0x18(r4)
    sth     r5, 0x1a(r4)
    stw     r0, 0x1c(r4)
    stw     r5, 0x28(r26)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lwz     r3, 0x24(r26)
    mr      r4, r30
    bl      DCFlushRange
    mr      r3, r26
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__10JUTTextureFv
__dt__10JUTTextureFv: # 0x802ca5d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ca624
    lbz     r0, 0x50(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802ca604
    lwz     r3, 0x4c(r30)
    bl      __dla__FPv
branch_0x802ca604:
    lwz     r3, 0x28(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802ca614
    bl      __dl__FPv
branch_0x802ca614:
    extsh.  r0, r31
    ble-    branch_0x802ca624
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ca624:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl storeTIMG__10JUTTextureFPC7ResTIMG
storeTIMG__10JUTTextureFPC7ResTIMG: # 0x802ca640
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    beq-    branch_0x802ca7ac
    stw     r4, 0x20(r31)
    lwz     r3, 0x20(r31)
    lwz     r0, 0x1c(r3)
    add     r0, r3, r0
    stw     r0, 0x24(r31)
    lwz     r3, 0x20(r31)
    lwz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802ca690
    addi    r0, r3, 0x20
    stw     r0, 0x24(r31)
branch_0x802ca690:
    lwz     r3, 0x28(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ca6a0
    bl      __dl__FPv
branch_0x802ca6a0:
    li      r4, 0x0
    stw     r4, 0x28(r31)
    stw     r4, 0x2c(r31)
    stw     r4, 0x30(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x0(r3)
    stw     r0, 0x34(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x1(r3)
    stw     r0, 0x38(r31)
    lwz     r3, 0x20(r31)
    lhz     r0, 0x2(r3)
    sth     r0, 0x3c(r31)
    lwz     r3, 0x20(r31)
    lhz     r0, 0x4(r3)
    sth     r0, 0x3e(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x6(r3)
    stb     r0, 0x40(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x7(r3)
    stb     r0, 0x41(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x14(r3)
    stb     r0, 0x42(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x15(r3)
    stb     r0, 0x43(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x16(r3)
    extsb   r0, r0
    sth     r0, 0x44(r31)
    lwz     r3, 0x20(r31)
    lbz     r0, 0x17(r3)
    extsb   r0, r0
    sth     r0, 0x46(r31)
    lwz     r3, 0x20(r31)
    lha     r0, 0x1a(r3)
    sth     r0, 0x48(r31)
    lwz     r3, 0x20(r31)
    lhz     r0, 0xa(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802ca758
    mr      r3, r31
    bl      initTexObj__10JUTTextureFv
    b       branch_0x802ca7ac

branch_0x802ca758:
    cmplwi  r0, 0x100
    ble-    branch_0x802ca764
    li      r4, 0x10
branch_0x802ca764:
    addi    r30, r4, 0x0
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802ca79c
    lwz     r7, 0x20(r31)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    lwz     r0, 0xc(r7)
    lbz     r5, 0x9(r7)
    lbz     r6, 0x1(r7)
    add     r8, r7, r0
    lhz     r7, 0xa(r7)
    bl      __ct__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
branch_0x802ca79c:
    stw     r29, 0x28(r31)
    mr      r3, r31
    lwz     r4, 0x28(r31)
    bl      attachPalette__10JUTTextureFP10JUTPalette
branch_0x802ca7ac:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl attachPalette__10JUTTextureFP10JUTPalette
attachPalette__10JUTTextureFP10JUTPalette: # 0x802ca7c8
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x802ca7fc
    lwz     r0, 0x28(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802ca7fc
    stw     r0, 0x2c(r3)
    lwz     r4, 0x2c(r3)
    lwz     r4, 0xc(r4)
    bl      initTexObj__10JUTTextureF7_GXTlut
    b       branch_0x802ca824

branch_0x802ca7fc:
    lwz     r5, 0x20(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x802ca824
    lbz     r0, 0x8(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x802ca824
    stw     r4, 0x2c(r3)
    lwz     r4, 0x2c(r3)
    lwz     r4, 0xc(r4)
    bl      initTexObj__10JUTTextureF7_GXTlut
branch_0x802ca824:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initTexObj__10JUTTextureFv
initTexObj__10JUTTextureFv: # 0x802ca834
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r7, 0x20(r3)
    lbz     r0, 0x10(r7)
    cmplwi  r0, 0x0
    beq-    branch_0x802ca860
    li      r0, 0x1
    b       branch_0x802ca864

branch_0x802ca860:
    li      r0, 0x0
branch_0x802ca864:
    lwz     r3, 0x1c(r7)
    mr      r10, r0
    cmplwi  r3, 0x0
    beq-    branch_0x802ca878
    b       branch_0x802ca87c

branch_0x802ca878:
    li      r3, 0x20
branch_0x802ca87c:
    add     r4, r7, r3
    lhz     r5, 0x2(r7)
    lhz     r6, 0x4(r7)
    mr      r3, r31
    lbz     r7, 0x0(r7)
    lbz     r8, 0x40(r31)
    lbz     r9, 0x41(r31)
    bl      GXInitTexObj
    lha     r0, 0x48(r31)
    lis     r4, 0x4330
    lwz     r8, 0x20(r31)
    addi    r3, r31, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    lhz     r5, 0x44(r31)
    stw     r4, 0x10(sp)
    lhz     r0, 0x46(r31)
    lfd     f1, 0x140(r2)
    lfd     f0, 0x10(sp)
    stw     r5, 0x24(sp)
    fsubs   f1, f0, f1
    lfs     f0, 0x134(r2)
    stw     r0, 0x1c(sp)
    lfd     f4, 0x138(r2)
    fdivs   f3, f1, f0
    stw     r4, 0x20(sp)
    lfs     f2, 0x130(r2)
    stw     r4, 0x18(sp)
    lfd     f1, 0x20(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f1, f4
    lbz     r4, 0x42(r31)
    fsubs   f0, f0, f4
    lbz     r5, 0x43(r31)
    fmuls   f1, f1, f2
    lbz     r6, 0x12(r8)
    fmuls   f2, f0, f2
    lbz     r7, 0x11(r8)
    lbz     r8, 0x13(r8)
    bl      GXInitTexObjLOD
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl initTexObj__10JUTTextureF7_GXTlut
initTexObj__10JUTTextureF7_GXTlut: # 0x802ca930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x20(r3)
    lbz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802ca95c
    li      r0, 0x1
    b       branch_0x802ca960

branch_0x802ca95c:
    li      r0, 0x0
branch_0x802ca960:
    stw     r4, 0x30(r31)
    mr      r10, r0
    lwz     r7, 0x20(r31)
    lwz     r3, 0x1c(r7)
    cmplwi  r3, 0x0
    beq-    branch_0x802ca97c
    b       branch_0x802ca980

branch_0x802ca97c:
    li      r3, 0x20
branch_0x802ca980:
    lwz     r0, 0x30(r31)
    add     r4, r7, r3
    addi    r3, r31, 0x0
    stw     r0, 0x8(sp)
    lhz     r5, 0x2(r7)
    lhz     r6, 0x4(r7)
    lbz     r7, 0x0(r7)
    lbz     r8, 0x40(r31)
    lbz     r9, 0x41(r31)
    bl      GXInitTexObjCI
    lha     r0, 0x48(r31)
    lis     r4, 0x4330
    lwz     r8, 0x20(r31)
    addi    r3, r31, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    lhz     r5, 0x44(r31)
    stw     r4, 0x18(sp)
    lhz     r0, 0x46(r31)
    lfd     f1, 0x140(r2)
    lfd     f0, 0x18(sp)
    stw     r5, 0x2c(sp)
    fsubs   f1, f0, f1
    lfs     f0, 0x134(r2)
    stw     r0, 0x24(sp)
    lfd     f4, 0x138(r2)
    fdivs   f3, f1, f0
    stw     r4, 0x28(sp)
    lfs     f2, 0x130(r2)
    stw     r4, 0x20(sp)
    lfd     f1, 0x28(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f1, f4
    lbz     r4, 0x42(r31)
    fsubs   f0, f0, f4
    lbz     r5, 0x43(r31)
    fmuls   f1, f1, f2
    lbz     r6, 0x12(r8)
    fmuls   f2, f0, f2
    lbz     r7, 0x11(r8)
    lbz     r8, 0x13(r8)
    bl      GXInitTexObjLOD
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl load__10JUTTextureF11_GXTexMapID
load__10JUTTextureF11_GXTexMapID: # 0x802caa3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x2c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802caa68
    bl      load__10JUTPaletteFv
branch_0x802caa68:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      GXLoadTexObj
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

