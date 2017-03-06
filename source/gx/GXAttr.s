
.globl __GXXfVtxSpecs
__GXXfVtxSpecs: # 0x8035be70
    lwz     r5, -0x72f8(r13)
    lwz     r4, 0x14(r5)
    extrwi. r0, r4, 2, 17
    beq-    branch_0x8035be88
    li      r3, 0x1
    b       branch_0x8035be8c

branch_0x8035be88:
    li      r3, 0x0
branch_0x8035be8c:
    extrwi. r0, r4, 2, 15
    beq-    branch_0x8035be9c
    li      r4, 0x1
    b       branch_0x8035bea0

branch_0x8035be9c:
    li      r4, 0x0
branch_0x8035bea0:
    lbz     r0, 0x41d(r5)
    add     r7, r3, r4
    cmplwi  r0, 0x0
    beq-    branch_0x8035beb8
    li      r4, 0x2
    b       branch_0x8035bed0

branch_0x8035beb8:
    lbz     r0, 0x41c(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8035becc
    li      r4, 0x1
    b       branch_0x8035bed0

branch_0x8035becc:
    li      r4, 0x0
branch_0x8035bed0:
    lwz     r6, 0x18(r5)
    clrlwi. r0, r6, 30
    beq-    branch_0x8035bee4
    li      r3, 0x1
    b       branch_0x8035bee8

branch_0x8035bee4:
    li      r3, 0x0
branch_0x8035bee8:
    extrwi. r0, r6, 2, 28
    beq-    branch_0x8035bef8
    li      r5, 0x1
    b       branch_0x8035befc

branch_0x8035bef8:
    li      r5, 0x0
branch_0x8035befc:
    extrwi. r0, r6, 2, 26
    add     r8, r3, r5
    beq-    branch_0x8035bf10
    li      r3, 0x1
    b       branch_0x8035bf14

branch_0x8035bf10:
    li      r3, 0x0
branch_0x8035bf14:
    extrwi. r0, r6, 2, 24
    add     r8, r8, r3
    beq-    branch_0x8035bf28
    li      r3, 0x1
    b       branch_0x8035bf2c

branch_0x8035bf28:
    li      r3, 0x0
branch_0x8035bf2c:
    extrwi. r0, r6, 2, 22
    add     r8, r8, r3
    beq-    branch_0x8035bf40
    li      r3, 0x1
    b       branch_0x8035bf44

branch_0x8035bf40:
    li      r3, 0x0
branch_0x8035bf44:
    extrwi. r0, r6, 2, 20
    add     r8, r8, r3
    beq-    branch_0x8035bf58
    li      r3, 0x1
    b       branch_0x8035bf5c

branch_0x8035bf58:
    li      r3, 0x0
branch_0x8035bf5c:
    extrwi. r0, r6, 2, 18
    add     r8, r8, r3
    beq-    branch_0x8035bf70
    li      r3, 0x1
    b       branch_0x8035bf74

branch_0x8035bf70:
    li      r3, 0x0
branch_0x8035bf74:
    extrwi. r0, r6, 2, 16
    add     r8, r8, r3
    beq-    branch_0x8035bf88
    li      r6, 0x1
    b       branch_0x8035bf8c

branch_0x8035bf88:
    li      r6, 0x0
branch_0x8035bf8c:
    li      r0, 0x10
    lwz     r3, -0x72f8(r13)
    lis     r5, 0xcc01
    add     r8, r8, r6
    stb     r0, -0x8000(r5)
    slwi    r0, r4, 2
    li      r4, 0x1008
    stw     r4, -0x8000(r5)
    slwi    r4, r8, 4
    or      r0, r7, r0
    or      r0, r4, r0
    stw     r0, -0x8000(r5)
    li      r0, 0x1
    sth     r0, 0x2(r3)
    blr


.globl GXSetVtxDesc
GXSetVtxDesc: # 0x8035bfc8
    cmplwi  r3, 0x19
    bgt-    branch_0x8035c2cc
    lis     r5, 0x803f
    subi    r5, r5, 0x7240
    slwi    r0, r3, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr       
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x14(r3)
    clrrwi  r0, r0, 1
    or      r0, r0, r4
    stw     r0, 0x0(r3)
    b       branch_0x8035c2cc


.incbin "./baserom/code/Text_0x80005600.bin", 0x356a00, 0x8035c2cc - 0x8035c000
branch_0x8035c2cc:
    lwz     r3, -0x72f8(r13)
    lbz     r0, 0x41c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8035c2e8
    lbz     r0, 0x41d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8035c308
branch_0x8035c2e8:
    addi    r4, r3, 0x14
    lwz     r0, 0x418(r3)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 11
    rlwinm  r3, r3, 0, 21, 18
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    b       branch_0x8035c314

branch_0x8035c308:
    lwzu    r0, 0x14(r3)
    rlwinm  r0, r0, 0, 21, 18
    stw     r0, 0x0(r3)
branch_0x8035c314:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetVtxDescv
GXSetVtxDescv: # 0x8035c328
    lis     r4, 0x803f
    subi    r4, r4, 0x71d8
    b       branch_0x8035c644

branch_0x8035c334:
    lwz     r5, 0x0(r3)
    lwz     r0, 0x4(r3)
    cmplwi  r5, 0x19
    bgt-    branch_0x8035c640
    slwi    r5, r5, 2
    lwzx    r5, r4, r5
    mtctr   r5
    bctr       
    lwz     r5, -0x72f8(r13)
    addi    r6, r5, 0x14
    lwz     r5, 0x14(r5)
    clrrwi  r5, r5, 1
    or      r0, r5, r0
    stw     r0, 0x0(r6)
    b       branch_0x8035c640


.incbin "./baserom/code/Text_0x80005600.bin", 0x356d70, 0x8035c640 - 0x8035c370
branch_0x8035c640:
    addi    r3, r3, 0x8
branch_0x8035c644:
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0xff
    bne+    branch_0x8035c334
    lwz     r3, -0x72f8(r13)
    lbz     r0, 0x41c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8035c66c
    lbz     r0, 0x41d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8035c68c
branch_0x8035c66c:
    addi    r4, r3, 0x14
    lwz     r0, 0x418(r3)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 11
    rlwinm  r3, r3, 0, 21, 18
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    b       branch_0x8035c698

branch_0x8035c68c:
    lwzu    r0, 0x14(r3)
    rlwinm  r0, r0, 0, 21, 18
    stw     r0, 0x0(r3)
branch_0x8035c698:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x4f4(r3)
    blr


.globl __GXSetVCD
__GXSetVCD: # 0x8035c6ac
    mflr    r0
    li      r6, 0x8
    stw     r0, 0x4(sp)
    lis     r5, 0xcc01
    li      r3, 0x50
    stwu    sp, -0x8(sp)
    li      r0, 0x60
    stb     r6, -0x8000(r5)
    lwz     r4, -0x72f8(r13)
    stb     r3, -0x8000(r5)
    lwz     r3, 0x14(r4)
    stw     r3, -0x8000(r5)
    stb     r6, -0x8000(r5)
    stb     r0, -0x8000(r5)
    lwz     r0, 0x18(r4)
    stw     r0, -0x8000(r5)
    bl      __GXXfVtxSpecs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __GXCalculateVLim
__GXCalculateVLim: # 0x8035c700
    lwz     r3, -0x72f8(r13)
    lhz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lwz     r9, 0x14(r3)
    subi    r5, r13, 0x72e8
    lwz     r8, 0x1c(r3)
    clrlwi  r0, r9, 31
    lwz     r4, 0x18(r3)
    extrwi  r6, r9, 1, 30
    add     r0, r0, r6
    extrwi  r6, r9, 1, 29
    add     r0, r0, r6
    extrwi  r7, r9, 1, 28
    extrwi  r6, r9, 2, 21
    lbzx    r5, r5, r6
    extrwi  r8, r8, 1, 22
    add     r0, r0, r7
    extrwi  r6, r9, 1, 27
    add     r0, r0, r6
    extrwi  r6, r9, 1, 26
    add     r0, r0, r6
    extrwi  r6, r9, 1, 25
    add     r0, r0, r6
    extrwi  r6, r9, 1, 24
    add     r0, r0, r6
    extrwi  r6, r9, 1, 23
    add     r0, r0, r6
    cmpwi   r8, 0x1
    add     r0, r0, r5
    bne-    branch_0x8035c784
    li      r8, 0x3
    b       branch_0x8035c788

branch_0x8035c784:
    li      r8, 0x1
branch_0x8035c788:
    extrwi  r6, r9, 2, 19
    subi    r5, r13, 0x72e8
    lbzx    r6, r5, r6
    extrwi  r5, r9, 2, 17
    subi    r7, r13, 0x72f0
    mullw   r8, r6, r8
    lbzx    r6, r7, r5
    add     r0, r0, r8
    extrwi  r5, r9, 2, 15
    lbzx    r9, r7, r5
    add     r0, r0, r6
    clrlwi  r6, r4, 30
    subi    r8, r13, 0x72ec
    extrwi  r5, r4, 2, 28
    lbzx    r7, r8, r6
    add     r0, r0, r9
    lbzx    r6, r8, r5
    add     r0, r0, r7
    extrwi  r5, r4, 2, 26
    lbzx    r7, r8, r5
    add     r0, r0, r6
    extrwi  r5, r4, 2, 24
    lbzx    r6, r8, r5
    add     r0, r0, r7
    extrwi  r5, r4, 2, 22
    lbzx    r7, r8, r5
    add     r0, r0, r6
    extrwi  r5, r4, 2, 20
    lbzx    r6, r8, r5
    extrwi  r5, r4, 2, 18
    add     r0, r0, r7
    lbzx    r5, r8, r5
    extrwi  r4, r4, 2, 16
    add     r0, r0, r6
    lbzx    r4, r8, r4
    add     r0, r0, r5
    add     r0, r0, r4
    sth     r0, 0x6(r3)
    blr


.globl GXGetVtxDesc
GXGetVtxDesc: # 0x8035c824
    cmplwi  r3, 0x19
    bgt-    branch_0x8035c9cc
    lis     r5, 0x803f
    subi    r5, r5, 0x7170
    slwi    r0, r3, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr       
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x14(r3)
    clrlwi  r0, r0, 31
    b       branch_0x8035c9d0


.incbin "./baserom/code/Text_0x80005600.bin", 0x357254, 0x8035c9cc - 0x8035c854
branch_0x8035c9cc:
    li      r0, 0x0
branch_0x8035c9d0:
    stw     r0, 0x0(r4)
    blr


.globl GXGetVtxDescv
GXGetVtxDescv: # 0x8035c9d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
branch_0x8035c9fc:
    add     r4, r29, r31
    stw     r30, 0x0(r4)
    addi    r3, r30, 0x0
    addi    r4, r4, 0x4
    bl      GXGetVtxDesc
    addi    r30, r30, 0x1
    cmpwi   r30, 0x1a
    addi    r31, r31, 0x8
    blt+    branch_0x8035c9fc
    slwi    r0, r30, 3
    li      r3, 0xff
    stwx    r3, r29, r0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GXClearVtxDesc
GXClearVtxDesc: # 0x8035ca48
    lwz     r3, -0x72f8(r13)
    li      r4, 0x0
    stw     r4, 0x14(r3)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x14(r3)
    rlwinm  r0, r0, 0, 23, 20
    ori     r0, r0, 0x200
    stw     r0, 0x0(r3)
    lwz     r3, -0x72f8(r13)
    stw     r4, 0x18(r3)
    lwz     r3, -0x72f8(r13)
    stb     r4, 0x41c(r3)
    lwz     r3, -0x72f8(r13)
    stb     r4, 0x41d(r3)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetVtxAttrFmt
GXSetVtxAttrFmt: # 0x8035ca94
    subi    r0, r4, 0x9
    lwz     r8, -0x72f8(r13)
    slwi    r4, r3, 2
    add     r9, r8, r4
    cmplwi  r0, 0x10
    addi    r4, r9, 0x1c
    addi    r8, r9, 0x3c
    addi    r9, r9, 0x5c
    bgt-    branch_0x8035cdbc
    lis     r10, 0x803f
    subi    r10, r10, 0x7108
    slwi    r0, r0, 2
    lwzx    r0, r10, r0
    mtctr   r0
    bctr       
    lwz     r0, 0x0(r4)
    slwi    r6, r6, 1
    clrrwi  r0, r0, 1
    or      r0, r0, r5
    stw     r0, 0x0(r4)
    clrlslwi  r0, r7, 24, 4
    lwz     r5, 0x0(r4)
    rlwinm  r5, r5, 0, 31, 27
    or      r5, r5, r6
    stw     r5, 0x0(r4)
    lwz     r5, 0x0(r4)
    rlwinm  r5, r5, 0, 28, 22
    or      r0, r5, r0
    stw     r0, 0x0(r4)
    b       branch_0x8035cdbc


.incbin "./baserom/code/Text_0x80005600.bin", 0x35750c, 0x8035cdbc - 0x8035cb0c
branch_0x8035cdbc:
    lwz     r5, -0x72f8(r13)
    clrlwi  r0, r3, 24
    li      r3, 0x1
    lwz     r4, 0x4f4(r5)
    slw     r0, r3, r0
    clrlwi  r0, r0, 24
    ori     r3, r4, 0x10
    stw     r3, 0x4f4(r5)
    lwz     r4, -0x72f8(r13)
    lbz     r3, 0x4f2(r4)
    or      r0, r3, r0
    stb     r0, 0x4f2(r4)
    blr


.globl GXSetVtxAttrFmtv
GXSetVtxAttrFmtv: # 0x8035cdf0
    lwz     r6, -0x72f8(r13)
    slwi    r0, r3, 2
    lis     r5, 0x803f
    add     r6, r6, r0
    addi    r8, r6, 0x1c
    addi    r9, r6, 0x3c
    addi    r10, r6, 0x5c
    subi    r5, r5, 0x70c4
    b       branch_0x8035d12c

branch_0x8035ce14:
    lwz     r6, 0x0(r4)
    lbz     r7, 0xc(r4)
    subi    r11, r6, 0x9
    lwz     r6, 0x8(r4)
    cmplwi  r11, 0x10
    lwz     r0, 0x4(r4)
    bgt-    branch_0x8035d128
    slwi    r11, r11, 2
    lwzx    r11, r5, r11
    mtctr   r11
    bctr       
    lwz     r12, 0x0(r8)
    slwi    r11, r6, 1
    slwi    r6, r7, 4
    clrrwi  r7, r12, 1
    or      r0, r7, r0
    stw     r0, 0x0(r8)
    lwz     r0, 0x0(r8)
    rlwinm  r0, r0, 0, 31, 27
    or      r0, r0, r11
    stw     r0, 0x0(r8)
    lwz     r0, 0x0(r8)
    rlwinm  r0, r0, 0, 28, 22
    or      r0, r0, r6
    stw     r0, 0x0(r8)
    b       branch_0x8035d128


.incbin "./baserom/code/Text_0x80005600.bin", 0x35787c, 0x8035d128 - 0x8035ce7c
branch_0x8035d128:
    addi    r4, r4, 0x10
branch_0x8035d12c:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0xff
    bne+    branch_0x8035ce14
    lwz     r5, -0x72f8(r13)
    clrlwi  r0, r3, 24
    li      r3, 0x1
    lwz     r4, 0x4f4(r5)
    slw     r0, r3, r0
    clrlwi  r0, r0, 24
    ori     r3, r4, 0x10
    stw     r3, 0x4f4(r5)
    lwz     r4, -0x72f8(r13)
    lbz     r3, 0x4f2(r4)
    or      r0, r3, r0
    stb     r0, 0x4f2(r4)
    blr


.globl __GXSetVAT
__GXSetVAT: # 0x8035d16c
    lwz     r10, -0x72f8(r13)
    li      r12, 0x0
    li      r11, 0x0
    lis     r7, 0xcc01
    b       branch_0x8035d1ec

branch_0x8035d180:
    clrlwi  r9, r12, 24
    lbz     r3, 0x4f2(r10)
    li      r0, 0x1
    slw     r0, r0, r9
    and.    r0, r3, r0
    beq-    branch_0x8035d1e4
    li      r8, 0x8
    stb     r8, -0x8000(r7)
    ori     r3, r9, 0x70
    addi    r0, r11, 0x1c
    stb     r3, -0x8000(r7)
    ori     r5, r9, 0x80
    addi    r4, r11, 0x3c
    lwzx    r6, r10, r0
    ori     r3, r9, 0x90
    addi    r0, r11, 0x5c
    stw     r6, -0x8000(r7)
    stb     r8, -0x8000(r7)
    stb     r5, -0x8000(r7)
    lwzx    r4, r10, r4
    stw     r4, -0x8000(r7)
    stb     r8, -0x8000(r7)
    stb     r3, -0x8000(r7)
    lwzx    r0, r10, r0
    stw     r0, -0x8000(r7)
branch_0x8035d1e4:
    addi    r11, r11, 0x4
    addi    r12, r12, 0x1
branch_0x8035d1ec:
    clrlwi  r0, r12, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8035d180
    lwz     r3, -0x72f8(r13)
    li      r0, 0x0
    stb     r0, 0x4f2(r3)
    blr


.globl GXGetVtxAttrFmt
GXGetVtxAttrFmt: # 0x8035d208
    subi    r0, r4, 0x9
    lwz     r4, -0x72f8(r13)
    slwi    r3, r3, 2
    add     r4, r4, r3
    cmplwi  r0, 0x10
    addi    r3, r4, 0x1c
    addi    r8, r4, 0x3c
    addi    r9, r4, 0x5c
    bgt-    branch_0x8035d438
    lis     r4, 0x803f
    subi    r4, r4, 0x7080
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    lwz     r0, 0x0(r3)
    clrlwi  r0, r0, 31
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r3)
    extrwi  r0, r0, 3, 28
    stw     r0, 0x0(r6)
    lwz     r0, 0x0(r3)
    extrwi  r0, r0, 5, 23
    stb     r0, 0x0(r7)
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x357c6c, 0x8035d438 - 0x8035d26c
branch_0x8035d438:
    li      r0, 0x1
    stw     r0, 0x0(r5)
    li      r0, 0x0
    stw     r0, 0x0(r6)
    stb     r0, 0x0(r7)
    blr


.globl GXGetVtxAttrFmtv
GXGetVtxAttrFmtv: # 0x8035d450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x9
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
branch_0x8035d474:
    stw     r31, 0x0(r30)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x4
    addi    r6, r30, 0x8
    addi    r7, r30, 0xc
    bl      GXGetVtxAttrFmt
    addi    r31, r31, 0x1
    cmpwi   r31, 0x1a
    addi    r30, r30, 0x10
    blt+    branch_0x8035d474
    li      r0, 0xff
    stw     r0, 0x0(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GXSetArray
GXSetArray: # 0x8035d4c4
    cmpwi   r3, 0x19
    bne-    branch_0x8035d4d0
    li      r3, 0xa
branch_0x8035d4d0:
    li      r0, 0x8
    subi    r6, r3, 0x9
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    ori     r0, r6, 0xa0
    clrlwi  r4, r4, 2
    stb     r0, -0x8000(r3)
    subic.  r0, r6, 0xc
    stw     r4, -0x8000(r3)
    blt-    branch_0x8035d510
    cmpwi   r0, 0x4
    bge-    branch_0x8035d510
    lwz     r3, -0x72f8(r13)
    slwi    r0, r0, 2
    add     r3, r3, r0
    stw     r4, 0x88(r3)
branch_0x8035d510:
    li      r0, 0x8
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    ori     r0, r6, 0xb0
    clrlwi  r4, r5, 24
    stb     r0, -0x8000(r3)
    subic.  r0, r6, 0xc
    stw     r4, -0x8000(r3)
    bltlr-    

    cmpwi   r0, 0x4
    bgelr-    

    lwz     r3, -0x72f8(r13)
    slwi    r0, r0, 2
    add     r3, r3, r0
    stw     r4, 0x98(r3)
    blr


.globl GXInvalidateVtxCache
GXInvalidateVtxCache: # 0x8035d550
    li      r0, 0x48
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    blr


.globl GXSetTexCoordGen2
GXSetTexCoordGen2: # 0x8035d560
    mflr    r0
    cmplwi  r5, 0x14
    stw     r0, 0x4(sp)
    li      r11, 0x0
    li      r12, 0x0
    stwu    sp, -0x8(sp)
    li      r10, 0x5
    bgt-    branch_0x8035d614
    lis     r9, 0x803f
    subi    r9, r9, 0x7020
    slwi    r0, r5, 2
    lwzx    r0, r9, r0
    mtctr   r0
    bctr       
    li      r10, 0x0
    li      r12, 0x1
    b       branch_0x8035d614


.incbin "./baserom/code/Text_0x80005600.bin", 0x357fa4, 0x8035d614 - 0x8035d5a4
branch_0x8035d614:
    cmpwi   r4, 0x1
    beq-    branch_0x8035d63c
    bge-    branch_0x8035d62c
    cmpwi   r4, 0x0
    bge-    branch_0x8035d650
    b       branch_0x8035d6cc

branch_0x8035d62c:
    cmpwi   r4, 0xa
    beq-    branch_0x8035d6a4
    bge-    branch_0x8035d6cc
    b       branch_0x8035d668

branch_0x8035d63c:
    slwi    r0, r12, 2
    rlwinm  r4, r0, 0, 28, 19
    slwi    r0, r10, 7
    or      r11, r4, r0
    b       branch_0x8035d6cc

branch_0x8035d650:
    slwi    r0, r12, 2
    ori     r0, r0, 0x2
    rlwinm  r4, r0, 0, 28, 19
    slwi    r0, r10, 7
    or      r11, r4, r0
    b       branch_0x8035d6cc

branch_0x8035d668:
    slwi    r0, r12, 2
    rlwinm  r0, r0, 0, 28, 24
    ori     r0, r0, 0x10
    rlwinm  r9, r0, 0, 25, 19
    slwi    r0, r10, 7
    or      r9, r9, r0
    subi    r5, r5, 0xc
    subi    r0, r4, 0x2
    rlwinm  r9, r9, 0, 20, 16
    slwi    r4, r5, 12
    or      r4, r9, r4
    rlwinm  r4, r4, 0, 17, 13
    slwi    r0, r0, 15
    or      r11, r4, r0
    b       branch_0x8035d6cc

branch_0x8035d6a4:
    cmpwi   r5, 0x13
    slwi    r0, r12, 2
    bne-    branch_0x8035d6bc
    rlwinm  r0, r0, 0, 28, 24
    ori     r0, r0, 0x20
    b       branch_0x8035d6c4

branch_0x8035d6bc:
    rlwinm  r0, r0, 0, 28, 24
    ori     r0, r0, 0x30
branch_0x8035d6c4:
    rlwinm  r0, r0, 0, 25, 19
    ori     r11, r0, 0x100
branch_0x8035d6cc:
    li      r10, 0x10
    lis     r9, 0xcc01
    stb     r10, -0x8000(r9)
    addi    r0, r3, 0x1040
    subi    r4, r8, 0x40
    stw     r0, -0x8000(r9)
    rlwinm  r5, r4, 0, 24, 22
    clrlslwi  r4, r7, 24, 8
    stw     r11, -0x8000(r9)
    addi    r0, r3, 0x1050
    cmplwi  r3, 0x6
    stb     r10, -0x8000(r9)
    or      r4, r5, r4
    stw     r0, -0x8000(r9)
    stw     r4, -0x8000(r9)
    bgt-    branch_0x8035d7fc
    lis     r4, 0x803f
    subi    r4, r4, 0x703c
    slwi    r0, r3, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    lwz     r4, -0x72f8(r13)
    slwi    r0, r6, 6
    addi    r5, r4, 0x80
    lwz     r4, 0x80(r4)
    rlwinm  r4, r4, 0, 26, 19
    or      r0, r4, r0
    stw     r0, 0x0(r5)
    b       branch_0x8035d818


.incbin "./baserom/code/Text_0x80005600.bin", 0x358144, 0x8035d7fc - 0x8035d744
branch_0x8035d7fc:
    lwz     r4, -0x72f8(r13)
    slwi    r0, r6, 18
    addi    r5, r4, 0x84
    lwz     r4, 0x84(r4)
    rlwinm  r4, r4, 0, 14, 7
    or      r0, r4, r0
    stw     r0, 0x0(r5)
branch_0x8035d818:
    addi    r3, r3, 0x1
    bl      __GXSetMatrixIndex
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXSetNumTexGens
GXSetNumTexGens: # 0x8035d830
    lwz     r4, -0x72f8(r13)
    clrlwi  r7, r3, 24
    li      r3, 0x10
    addi    r6, r4, 0x204
    lwz     r5, 0x204(r4)
    lis     r4, 0xcc01
    li      r0, 0x103f
    clrrwi  r5, r5, 4
    or      r5, r5, r7
    stw     r5, 0x0(r6)
    stb     r3, -0x8000(r4)
    lwz     r3, -0x72f8(r13)
    stw     r0, -0x8000(r4)
    stw     r7, -0x8000(r4)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x4f4(r3)
    blr

