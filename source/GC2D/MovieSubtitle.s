
.globl __dt__14TMovieSubTitleFv
__dt__14TMovieSubTitleFv: # 0x80182f34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80182f8c
    lis     r3, 0x803c
    addi    r0, r3, 0x1488
    stw     r0, 0x0(r30)
    beq-    branch_0x80182f7c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80182f7c:
    extsh.  r0, r31
    ble-    branch_0x80182f8c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80182f8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setCurMessage__14TMovieSubTitleFv
setCurMessage__14TMovieSubTitleFv: # 0x80182fa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, 0x20(r3)
    lwz     r0, 0x24(r30)
    lhz     r3, 0x0(r3)
    cmplw   r3, r0
    ble-    branch_0x80182fec
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80182ff4
branch_0x80182fec:
    li      r3, 0x0
    b       branch_0x80183000

branch_0x80182ff4:
    lwz     r3, 0x20(r30)
    lwz     r4, 0x24(r30)
    bl      getMessageEntry__14TMessageLoaderFUl
branch_0x80183000:
    lwz     r4, 0x20(r30)
    lwz     r0, 0x0(r3)
    lwz     r4, 0x4(r4)
    lwz     r3, 0x18(r30)
    add     r31, r4, r0
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r31, 0x0
    li      r4, 0x100
    subi    r5, rtoc, 0x44e8
    bl      snprintf
    lwz     r3, 0x1c(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r31, 0x0
    li      r4, 0x100
    subi    r5, rtoc, 0x44e8
    bl      snprintf
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl perform__14TMovieSubTitleFUlPQ26JDrama9TGraphics
perform__14TMovieSubTitleFUlPQ26JDrama9TGraphics: # 0x80183060
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x150(sp)
    stw     r29, 0x14c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x148(sp)
    addi    r28, r4, 0x0
    beq-    branch_0x8018320c
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80183158
    lwz     r3, 0x20(r31)
    lwz     r4, 0x10(r31)
    lhz     r3, 0x0(r3)
    lwz     r0, 0x24(r31)
    lwz     r30, 0x20(r4)
    cmplw   r3, r0
    ble-    branch_0x801830d0
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x801830d8
branch_0x801830d0:
    li      r3, 0x0
    b       branch_0x801830e4

branch_0x801830d8:
    lwz     r3, 0x20(r31)
    lwz     r4, 0x24(r31)
    bl      getMessageEntry__14TMessageLoaderFUl
branch_0x801830e4:
    cmplwi  r3, 0x0
    beq-    branch_0x8018320c
    lwz     r3, 0x20(r31)
    lwz     r0, 0x24(r31)
    lhz     r3, 0x0(r3)
    cmplw   r3, r0
    ble-    branch_0x80183118
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80183120
branch_0x80183118:
    li      r3, 0x0
    b       branch_0x8018312c

branch_0x80183120:
    lwz     r3, 0x20(r31)
    lwz     r4, 0x24(r31)
    bl      getMessageEntry__14TMessageLoaderFUl
branch_0x8018312c:
    lha     r0, 0x6(r3)
    cmpw    r0, r30
    bgt-    branch_0x8018320c
    li      r0, 0x0
    stb     r0, 0x28(r31)
    lwz     r3, 0x14(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x24(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x24(r31)
    b       branch_0x8018320c

branch_0x80183158:
    lwz     r3, 0x20(r31)
    lwz     r4, 0x10(r31)
    lhz     r3, 0x0(r3)
    lwz     r0, 0x24(r31)
    lwz     r30, 0x20(r4)
    cmplw   r3, r0
    ble-    branch_0x8018318c
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x80183194
branch_0x8018318c:
    li      r3, 0x0
    b       branch_0x801831a0

branch_0x80183194:
    lwz     r3, 0x20(r31)
    lwz     r4, 0x24(r31)
    bl      getMessageEntry__14TMessageLoaderFUl
branch_0x801831a0:
    cmplwi  r3, 0x0
    beq-    branch_0x8018320c
    lwz     r3, 0x20(r31)
    lwz     r0, 0x24(r31)
    lhz     r3, 0x0(r3)
    cmplw   r3, r0
    ble-    branch_0x801831d4
    lis     r4, 0x9
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x801831dc
branch_0x801831d4:
    li      r3, 0x0
    b       branch_0x801831e8

branch_0x801831dc:
    lwz     r3, 0x20(r31)
    lwz     r4, 0x24(r31)
    bl      getMessageEntry__14TMessageLoaderFUl
branch_0x801831e8:
    lha     r0, 0x4(r3)
    cmpw    r0, r30
    bgt-    branch_0x8018320c
    li      r0, 0x1
    stb     r0, 0x28(r31)
    mr      r3, r31
    lwz     r4, 0x14(r31)
    stb     r0, 0xc(r4)
    bl      setCurMessage__14TMovieSubTitleFv
branch_0x8018320c:
    rlwinm. r0, r28, 0, 28, 28
    beq-    branch_0x80183254
    addi    r4, r29, 0x54
    addi    r3, sp, 0x54
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0x54
    bl      setup2D__14J2DGrafContextFv
    lwz     r3, 0x14(r31)
    addi    r6, sp, 0x54
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x54(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0x54(sp)
branch_0x80183254:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    lwz     r29, 0x14c(sp)
    lwz     r28, 0x148(sp)
    addi    sp, sp, 0x158
    blr


.globl setupResource__14TMovieSubTitleFPCcP10JKRArchive
setupResource__14TMovieSubTitleFPCcP10JKRArchive: # 0x80183274
    mflr    r0
    lis     r6, 0x803f
    stw     r0, 0x4(sp)
    subi    r6, r6, 0x6900
    lis     r7, 0x8039
    stwu    sp, -0x140(sp)
    stmw    r27, 0x12c(sp)
    addi    r31, r3, 0x0
    addi    r27, r4, 0x0
    addi    r29, r5, 0x0
    subi    r28, r7, 0x76d8
    lwz     r8, 0x18(r6)
    subi    r6, rtoc, 0x44f8
    addi    r3, r6, 0x8
    b       branch_0x801832b4

branch_0x801832b0:
    addi    r6, r6, 0x4
branch_0x801832b4:
    cmplw   r6, r3
    beq-    branch_0x801832c8
    lwz     r0, 0x0(r6)
    cmplw   r0, r8
    bne+    branch_0x801832b0
branch_0x801832c8:
    cmplw   r6, r3
    beq-    branch_0x801832f8
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801832f0
    addi    r3, r30, 0x0
    addi    r5, r29, 0x0
    addi    r4, r28, 0x30
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x801832f0:
    stw     r30, 0x14(r31)
    b       branch_0x8018331c

branch_0x801832f8:
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80183318
    addi    r3, r30, 0x0
    addi    r5, r29, 0x0
    addi    r4, r28, 0x3c
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80183318:
    stw     r30, 0x14(r31)
branch_0x8018331c:
    li      r29, 0x0
    stb     r29, 0x28(r31)
    lis     r30, 0x6d65
    addi    r4, r30, 0x5f61
    lwz     r3, 0x14(r31)
    stb     r29, 0xc(r3)
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x18(r31)
    addi    r4, r30, 0x5f62
    lwz     r3, 0x14(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1c(r31)
    addi    r3, sp, 0x28
    li      r4, 0x20
    li      r5, 0x100
    bl      memset
    stb     r29, 0x127(sp)
    addi    r4, sp, 0x28
    crxor   6, 6, 6
    lwz     r3, 0x18(r31)
    bl      setString__10J2DTextBoxFPCce
    lwz     r3, 0x1c(r31)
    addi    r4, sp, 0x28
    crxor   6, 6, 6
    bl      setString__10J2DTextBoxFPCce
    li      r3, 0xbfc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801833b4
    mr      r3, r29
    bl      __ct__14TMessageLoaderFv
branch_0x801833b4:
    stw     r29, 0x20(r31)
    addi    r5, r27, 0x0
    addi    r3, sp, 0x28
    crxor   6, 6, 6
    addi    r4, r28, 0x20
    bl      sprintf
    addi    r3, sp, 0x28
    li      r4, 0x2e
    bl      strrchr
    subi    r4, rtoc, 0x44f0
    bl      strcpy
    lwz     r3, 0x20(r31)
    addi    r4, sp, 0x28
    bl      loadMessageData__14TMessageLoaderFPCc
    li      r0, 0x0
    stw     r0, 0x24(r31)
    lmw     r27, 0x12c(sp)
    lwz     r0, 0x144(sp)
    addi    sp, sp, 0x140
    mtlr    r0
    blr


.globl __ct__14TMovieSubTitleFPC10TTHPRender
__ct__14TMovieSubTitleFPC10TTHPRender: # 0x80183408
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x8039
    stw     r0, 0x0(r30)
    subi    r3, r3, 0x7690
    stw     r3, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    li      r4, 0x0
    lis     r3, 0x803c
    sth     r4, 0xc(r30)
    addi    r0, r3, 0x1488
    addi    r3, r30, 0x0
    stw     r0, 0x0(r30)
    stw     r31, 0x10(r30)
    stw     r4, 0x14(r30)
    stw     r4, 0x18(r30)
    stw     r4, 0x1c(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

