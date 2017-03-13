
.globl GXGetTexBufferSize
GXGetTexBufferSize: # 0x8035f8b4
    stwu    sp, -0x28(sp)
    cmplwi  r5, 0x3c
    stw     r31, 0x24(sp)
    bgt-    branch_0x8035f900
    lis     r8, 0x803f
    subi    r8, r8, 0x6e98
    slwi    r0, r5, 2
    lwzx    r0, r8, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035f8dc:		# jumptable 8035F8D8 cases 0,8,14,32,48
    li      r0, 0x3
    li      r8, 0x3
    b       branch_0x8035f908

branch_0x8035f8e8:		# jumptable 8035F8D8 cases 1,2,9,17,34,39-42,57,58
    li	    r0, 0x3
    li	    r8, 0x2
    b	    branch_0x8035f908

branch_0x8035f8f4:		# jumptable 8035F8D8 cases 3-6,10,19,22,35,43,44,60
    li	    r0, 0x2
    li	    r8, 0x2
    b	    branch_0x8035f908

def_8035F8D8:		# jumptable 8035F8D8 default case
branch_0x8035f900:
    li      r8, 0x0
    li      r0, 0x0
branch_0x8035f908:
    cmplwi  r5, 0x6
    beq-    branch_0x8035f918
    cmplwi  r5, 0x16
    bne-    branch_0x8035f920
branch_0x8035f918:
    li      r5, 0x40
    b       branch_0x8035f924

branch_0x8035f920:
    li      r5, 0x20
branch_0x8035f924:
    clrlwi  r6, r6, 24
    cmplwi  r6, 0x1
    bne-    branch_0x8035f9cc
    clrlwi  r9, r7, 24
    li      r6, 0x1
    mtctr   r9
    slw     r7, r6, r8
    slw     r6, r6, r0
    cmplwi  r9, 0x0
    subi    r10, r6, 0x1
    subi    r7, r7, 0x1
    li      r31, 0x0
    ble-    branch_0x8035fa00
branch_0x8035f958:
    clrlwi  r11, r3, 16
    add     r6, r11, r10
    clrlwi  r12, r4, 16
    sraw    r9, r6, r0
    add     r6, r12, r7
    sraw    r6, r6, r8
    mullw   r6, r9, r6
    mullw   r6, r5, r6
    cmplwi  r11, 0x1
    add     r31, r31, r6
    bne-    branch_0x8035f98c
    cmplwi  r12, 0x1
    beq-    branch_0x8035fa00
branch_0x8035f98c:
    clrlwi  r3, r3, 16
    cmplwi  r3, 0x1
    ble-    branch_0x8035f9a0
    srawi   r6, r11, 1
    b       branch_0x8035f9a4

branch_0x8035f9a0:
    li      r6, 0x1
branch_0x8035f9a4:
    clrlwi  r3, r4, 16
    cmplwi  r3, 0x1
    clrlwi  r3, r6, 16
    ble-    branch_0x8035f9bc
    srawi   r4, r12, 1
    b       branch_0x8035f9c0

branch_0x8035f9bc:
    li      r4, 0x1
branch_0x8035f9c0:
    clrlwi  r4, r4, 16
    bdnz+      branch_0x8035f958
    b       branch_0x8035fa00

branch_0x8035f9cc:
    li      r6, 0x1
    slw     r7, r6, r0
    slw     r6, r6, r8
    clrlwi  r9, r3, 16
    subi    r3, r7, 0x1
    add     r7, r9, r3
    clrlwi  r4, r4, 16
    subi    r3, r6, 0x1
    sraw    r6, r7, r0
    add     r0, r4, r3
    sraw    r0, r0, r8
    mullw   r0, r6, r0
    mullw   r31, r5, r0
branch_0x8035fa00:
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    blr


.globl __GetImageTileCount
__GetImageTileCount: # 0x8035fa10
    cmplwi  r3, 0x3c
    bgt-    branch_0x8035fa54
    lis     r9, 0x803f
    subi    r9, r9, 0x6da4
    slwi    r0, r3, 2
    lwzx    r0, r9, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035fa30:		# jumptable 8035FA2C cases 0,8,14,32,48
    li      r11, 0x3
    li      r12, 0x3
    b       branch_0x8035fa5c

branch_0x8035fa3c:		# jumptable 8035FA2C cases 1,2,9,17,34,39-42,57,58
    li	    r11, 0x3
    li	    r12, 0x2
    b	    branch_0x8035fa5c

branch_0x8035fa48:		# jumptable 8035FA2C cases 3-6,10,19,22,35,43,44,60
    li	    r11, 0x2
    li	    r12, 0x2
    b	    branch_0x8035fa5c

def_8035FA2C:		# jumptable 8035FA2C default case
branch_0x8035fa54:
    li      r12, 0x0
    li      r11, 0x0
branch_0x8035fa5c:
    clrlwi. r0, r4, 16
    bne-    branch_0x8035fa68
    li      r4, 0x1
branch_0x8035fa68:
    clrlwi. r0, r5, 16
    bne-    branch_0x8035fa74
    li      r5, 0x1
branch_0x8035fa74:
    li      r10, 0x1
    slw     r9, r10, r11
    clrlwi  r4, r4, 16
    subi    r0, r9, 0x1
    add     r0, r4, r0
    sraw    r0, r0, r11
    slw     r4, r10, r12
    stw     r0, 0x0(r6)
    clrlwi  r5, r5, 16
    subi    r0, r4, 0x1
    add     r0, r5, r0
    sraw    r0, r0, r12
    cmpwi   r3, 0x6
    stw     r0, 0x0(r7)
    beq-    branch_0x8035fabc
    cmpwi   r3, 0x16
    beq-    branch_0x8035fabc
    li      r10, 0x0
branch_0x8035fabc:
    cmpwi   r10, 0x0
    beq-    branch_0x8035facc
    li      r0, 0x2
    b       branch_0x8035fad0

branch_0x8035facc:
    li      r0, 0x1
branch_0x8035fad0:
    stw     r0, 0x0(r8)
    blr


.globl GXInitTexObj
GXInitTexObj: # 0x8035fad8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r24, 0x40(sp)
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r31, r3, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r24, r8, 0x0
    addi    r25, r9, 0x0
    addi    r26, r10, 0x0
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
    lwz     r4, 0x0(r31)
    clrlwi. r0, r26, 24
    slwi    r3, r25, 2
    clrrwi  r4, r4, 2
    or      r4, r4, r24
    stw     r4, 0x0(r31)
    lwz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 30, 27
    or      r0, r0, r3
    stw     r0, 0x0(r31)
    lwz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 28, 26
    ori     r0, r0, 0x10
    stw     r0, 0x0(r31)
    beq-    branch_0x8035fbf0
    lbz     r3, 0x1f(r31)
    subi    r0, r30, 0x8
    cmplwi  r0, 0x2
    ori     r0, r3, 0x1
    stb     r0, 0x1f(r31)
    bgt-    branch_0x8035fb7c
    lwz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 27, 23
    ori     r0, r0, 0xa0
    stw     r0, 0x0(r31)
    b       branch_0x8035fb8c

branch_0x8035fb7c:
    lwz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 27, 23
    ori     r0, r0, 0xc0
    stw     r0, 0x0(r31)
branch_0x8035fb8c:
    clrlwi  r3, r28, 16
    clrlwi  r0, r29, 16
    cmplw   r3, r0
    ble-    branch_0x8035fba8
    cntlzw  r0, r3
    subfic  r0, r0, 0x1f
    b       branch_0x8035fbb0

branch_0x8035fba8:
    cntlzw  r0, r0
    subfic  r0, r0, 0x1f
branch_0x8035fbb0:
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lwz     r3, 0x4(r31)
    stw     r0, 0x38(sp)
    lfd     f1, 0xb88(rtoc)
    rlwinm  r3, r3, 0, 24, 15
    lfd     f0, 0x38(sp)
    lfs     f2, 0xb80(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    insrwi  r3, r0, 8, 16
    stw     r3, 0x4(r31)
    b       branch_0x8035fc00

branch_0x8035fbf0:
    lwz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 27, 23
    ori     r0, r0, 0x80
    stw     r0, 0x0(r31)
branch_0x8035fc00:
    stw     r30, 0x14(r31)
    clrlwi  r3, r29, 16
    clrlwi  r7, r30, 28
    lwz     r5, 0x8(r31)
    clrlwi  r4, r28, 16
    subi    r0, r3, 0x1
    clrrwi  r6, r5, 10
    subi    r5, r4, 0x1
    or      r5, r6, r5
    stw     r5, 0x8(r31)
    slwi    r5, r0, 10
    extrwi  r0, r27, 25, 2
    lwz     r6, 0x8(r31)
    cmplwi  r7, 0xe
    rlwinm  r6, r6, 0, 22, 11
    or      r5, r6, r5
    stw     r5, 0x8(r31)
    lwz     r5, 0x8(r31)
    rlwinm  r5, r5, 0, 12, 7
    insrwi  r5, r30, 4, 8
    stw     r5, 0x8(r31)
    lwz     r5, 0xc(r31)
    clrrwi  r5, r5, 21
    or      r0, r5, r0
    stw     r0, 0xc(r31)
    bgt-    branch_0x8035fce4
    lis     r5, 0x803f
    subi    r5, r5, 0x6cb0
    slwi    r0, r7, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035fc80:		# jumptable 8035FC7C cases 0,8
    li      r0, 0x1
    stb     r0, 0x1e(r31)
    li      r0, 0x3
    li      r7, 0x3
    b       branch_0x8035fcf4

branch_0x8035fc94:		# jumptable 8035FC7C cases 1,2,9
    li	    r0, 0x2
    stb	    r0, 0x1E(r31)
    li	    r0, 0x3
    li	    r7, 0x2
    b	    branch_0x8035fcf4

branch_0x8035fca8:		# jumptable 8035FC7C cases 3-5,10
    li	    r0, 0x2
    stb	    r0, 0x1E(r31)
    li	    r0, 0x2
    li	    r7, 0x2
    b	    branch_0x8035fcf4

branch_0x8035fcbc:		# jumptable 8035FC7C case 6
    li	    r0, 0x3
    stb	    r0, 0x1E(r31)
    li	    r0, 0x2
    li	    r7, 0x2
    b	    branch_0x8035fcf4

branch_0x8035fcd0:		# jumptable 8035FC7C case 14
    li	    r0, 0x0
    stb	    r0, 0x1E(r31)
    li	    r0, 0x3
    li	    r7, 0x3
    b	    branch_0x8035fcf4

def_8035FC7C:		# jumptable 8035FC7C default case
branch_0x8035fce4:
    li      r0, 0x2
    stb     r0, 0x1e(r31)
    li      r0, 0x2
    li      r7, 0x2
branch_0x8035fcf4:
    clrlwi  r8, r0, 16
    li      r6, 0x1
    slw     r5, r6, r8
    clrlwi  r7, r7, 16
    subi    r0, r5, 0x1
    slw     r5, r6, r7
    add     r4, r4, r0
    subi    r0, r5, 0x1
    sraw    r4, r4, r8
    add     r0, r3, r0
    sraw    r0, r0, r7
    mullw   r0, r4, r0
    clrlwi  r0, r0, 17
    sth     r0, 0x1c(r31)
    lbz     r0, 0x1f(r31)
    ori     r0, r0, 0x2
    stb     r0, 0x1f(r31)
    lwz     r0, 0x64(sp)
    lmw     r24, 0x40(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl GXInitTexObjCI
GXInitTexObjCI: # 0x8035fd4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r31, 0x38(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      GXInitTexObj
    lbz     r0, 0x1f(r30)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x1f(r30)
    stw     r31, 0x18(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl GXInitTexObjLOD
GXInitTexObjLOD: # 0x8035fd94
    stwu    sp, -0x38(sp)
    lfs     f0, 0xb90(rtoc)
    fcmpo   cr0, f3, f0
    bge-    branch_0x8035fdac
    fmr     f3, f0
    b       branch_0x8035fdc0

branch_0x8035fdac:
    lfs     f0, 0xb94(rtoc)
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x8035fdc0
    lfs     f3, 0xb98(rtoc)
branch_0x8035fdc0:
    lfs     f0, 0xb9c(rtoc)
    cmpwi   r5, 0x1
    lwz     r0, 0x0(r3)
    fmuls   f0, f0, f3
    rlwinm  r5, r0, 0, 23, 14
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    insrwi  r5, r0, 8, 15
    stw     r5, 0x0(r3)
    bne-    branch_0x8035fdf4
    li      r5, 0x1
    b       branch_0x8035fdf8

branch_0x8035fdf4:
    li      r5, 0x0
branch_0x8035fdf8:
    lwz     r9, 0x0(r3)
    clrlwi. r0, r7, 24
    slwi    r5, r5, 4
    rlwinm  r7, r9, 0, 28, 26
    or      r5, r7, r5
    stw     r5, 0x0(r3)
    subi    r5, r13, 0x72e0
    lbzx    r0, r5, r4
    lwz     r7, 0x0(r3)
    slwi    r0, r0, 5
    rlwinm  r4, r7, 0, 27, 23
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    beq-    branch_0x8035fe38
    li      r0, 0x0
    b       branch_0x8035fe3c

branch_0x8035fe38:
    li      r0, 0x1
branch_0x8035fe3c:
    lwz     r4, 0x0(r3)
    slwi    r0, r0, 8
    rlwinm  r4, r4, 0, 24, 22
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    slwi    r4, r8, 19
    clrlslwi  r0, r6, 24, 21
    lwz     r5, 0x0(r3)
    rlwinm  r5, r5, 0, 15, 13
    stw     r5, 0x0(r3)
    lwz     r5, 0x0(r3)
    rlwinm  r5, r5, 0, 14, 12
    stw     r5, 0x0(r3)
    lwz     r5, 0x0(r3)
    rlwinm  r5, r5, 0, 13, 10
    or      r4, r5, r4
    stw     r4, 0x0(r3)
    lwz     r4, 0x0(r3)
    rlwinm  r4, r4, 0, 11, 9
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    lfs     f0, 0xba0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8035fea4
    fmr     f1, f0
    b       branch_0x8035feb4

branch_0x8035fea4:
    lfs     f0, 0xba4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8035feb4
    fmr     f1, f0
branch_0x8035feb4:
    lfs     f3, 0xb80(rtoc)
    lfs     f0, 0xba0(rtoc)
    fmuls   f1, f3, f1
    fcmpo   cr0, f2, f0
    fctiwz  f1, f1
    stfd    f1, 0x30(sp)
    lwz     r4, 0x34(sp)
    bge-    branch_0x8035fedc
    fmr     f2, f0
    b       branch_0x8035feec

branch_0x8035fedc:
    lfs     f0, 0xba4(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x8035feec
    fmr     f2, f0
branch_0x8035feec:
    lwz     r0, 0x4(r3)
    clrrwi  r0, r0, 8
    insrwi  r0, r4, 8, 24
    stw     r0, 0x4(r3)
    lfs     f0, 0xb80(rtoc)
    lwz     r0, 0x4(r3)
    fmuls   f0, f0, f2
    rlwinm  r4, r0, 0, 24, 15
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    insrwi  r4, r0, 8, 16
    stw     r4, 0x4(r3)
    addi    sp, sp, 0x38
    blr


.globl GXGetTexObjAll
GXGetTexObjAll: # 0x8035ff28
    lwz     r0, 0xc(r3)
    clrlslwi  r0, r0, 11, 5
    stw     r0, 0x0(r4)
    lwz     r0, 0x8(r3)
    clrlwi  r4, r0, 22
    addi    r0, r4, 0x1
    sth     r0, 0x0(r5)
    lwz     r0, 0x8(r3)
    extrwi  r4, r0, 10, 12
    addi    r0, r4, 0x1
    sth     r0, 0x0(r6)
    lwz     r0, 0x14(r3)
    stw     r0, 0x0(r7)
    lwz     r0, 0x0(r3)
    clrlwi  r0, r0, 30
    stw     r0, 0x0(r8)
    lwz     r0, 0x0(r3)
    extrwi  r0, r0, 2, 28
    stw     r0, 0x0(r9)
    lbz     r0, 0x1f(r3)
    clrlwi  r3, r0, 31
    subi    r0, r3, 0x1
    cntlzw  r0, r0
    extrwi  r0, r0, 8, 19
    stb     r0, 0x0(r10)
    blr


.globl GXGetTexObjWidth
GXGetTexObjWidth: # 0x8035ff90
    lwz     r0, 0x8(r3)
    clrlwi  r3, r0, 22
    addi    r3, r3, 0x1
    blr


.globl GXGetTexObjHeight
GXGetTexObjHeight: # 0x8035ffa0
    lwz     r0, 0x8(r3)
    extrwi  r3, r0, 10, 12
    addi    r3, r3, 0x1
    blr


.globl GXGetTexObjFmt
GXGetTexObjFmt: # 0x8035ffb0
    lwz     r3, 0x14(r3)
    blr


.globl GXLoadTexObjPreLoaded
GXLoadTexObjPreLoaded: # 0x8035ffb8
    mflr    r0
    subi    r7, r13, 0x7578
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lis     r31, 0xcc01
    stw     r30, 0x20(sp)
    li      r30, 0x61
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    subi    r5, r13, 0x7568
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r6, 0x0(r3)
    subi    r3, r13, 0x7588
    lbzx    r0, r3, r29
    subi    r3, r13, 0x7580
    slwi    r0, r0, 24
    insrwi  r0, r6, 24, 8
    stw     r0, 0x0(r28)
    subi    r6, r13, 0x7570
    lbzx    r0, r3, r29
    subi    r3, r13, 0x7560
    lwz     r8, 0x4(r28)
    slwi    r0, r0, 24
    insrwi  r0, r8, 24, 8
    stw     r0, 0x4(r28)
    lbzx    r0, r7, r29
    lwz     r8, 0x8(r28)
    slwi    r0, r0, 24
    insrwi  r0, r8, 24, 8
    stw     r0, 0x8(r28)
    lbzx    r0, r6, r29
    lwz     r7, 0x0(r4)
    slwi    r0, r0, 24
    insrwi  r0, r7, 24, 8
    stw     r0, 0x0(r4)
    lbzx    r0, r5, r29
    lwz     r6, 0x4(r4)
    slwi    r0, r0, 24
    insrwi  r0, r6, 24, 8
    stw     r0, 0x4(r4)
    lbzx    r0, r3, r29
    lwz     r5, 0xc(r28)
    slwi    r0, r0, 24
    insrwi  r0, r5, 24, 8
    stw     r0, 0xc(r28)
    stb     r30, -0x8000(r31)
    lwz     r0, 0x0(r28)
    stw     r0, -0x8000(r31)
    stb     r30, -0x8000(r31)
    lwz     r0, 0x4(r28)
    stw     r0, -0x8000(r31)
    stb     r30, -0x8000(r31)
    lwz     r0, 0x8(r28)
    stw     r0, -0x8000(r31)
    stb     r30, -0x8000(r31)
    lwz     r0, 0x0(r4)
    stw     r0, -0x8000(r31)
    stb     r30, -0x8000(r31)
    lwz     r0, 0x4(r4)
    stw     r0, -0x8000(r31)
    stb     r30, -0x8000(r31)
    lwz     r0, 0xc(r28)
    stw     r0, -0x8000(r31)
    lbz     r0, 0x1f(r28)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80360100
    lwz     r4, -0x72f8(r13)
    lwz     r3, 0x18(r28)
    lwz     r12, 0x414(r4)
    mtlr    r12
    blrl
    subi    r4, r13, 0x7558
    lwz     r5, 0x4(r3)
    lbzx    r0, r4, r29
    slwi    r0, r0, 24
    insrwi  r0, r5, 24, 8
    stw     r0, 0x4(r3)
    stb     r30, -0x8000(r31)
    lwz     r0, 0x4(r3)
    stw     r0, -0x8000(r31)
branch_0x80360100:
    lwz     r3, -0x72f8(r13)
    slwi    r5, r29, 2
    lwz     r4, 0x8(r28)
    li      r0, 0x0
    add     r3, r3, r5
    stw     r4, 0x45c(r3)
    lwz     r3, -0x72f8(r13)
    lwz     r4, 0x0(r28)
    add     r3, r3, r5
    stw     r4, 0x47c(r3)
    lwz     r4, -0x72f8(r13)
    lwz     r3, 0x4f4(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x4f4(r4)
    lwz     r3, -0x72f8(r13)
    sth     r0, 0x2(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl GXLoadTexObj
GXLoadTexObj: # 0x80360160
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r5, -0x72f8(r13)
    lwz     r12, 0x410(r5)
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    bl      GXLoadTexObjPreLoaded
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXInitTlutObj
GXInitTlutObj: # 0x803601b4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    slwi    r5, r5, 10
    extrwi  r0, r4, 25, 2
    lwz     r7, 0x0(r3)
    rlwinm  r4, r7, 0, 22, 19
    or      r4, r4, r5
    stw     r4, 0x0(r3)
    lwz     r4, 0x4(r3)
    clrrwi  r4, r4, 21
    or      r0, r4, r0
    stw     r0, 0x4(r3)
    lwz     r0, 0x4(r3)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x6400
    stw     r0, 0x4(r3)
    sth     r6, 0x8(r3)
    blr


.globl GXLoadTlut
GXLoadTlut: # 0x803601fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    addi    r3, r4, 0x0
    lwz     r5, -0x72f8(r13)
    lwz     r12, 0x414(r5)
    mtlr    r12
    blrl
    mr      r31, r3
    bl      __GXFlushTextureState
    li      r4, 0x61
    lis     r3, 0xcc01
    stb     r4, -0x8000(r3)
    lwz     r0, 0x4(r30)
    stw     r0, -0x8000(r3)
    stb     r4, -0x8000(r3)
    lwz     r0, 0x0(r31)
    stw     r0, -0x8000(r3)
    bl      __GXFlushTextureState
    lwz     r0, 0x0(r31)
    lwz     r3, 0x0(r30)
    clrlwi  r0, r0, 22
    rlwimi  r0, r3, 0, 0, 21
    stw     r0, 0x0(r30)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r3, 0x4(r31)
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r30)
    stw     r0, 0xc(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GXInitTexCacheRegion
GXInitTexCacheRegion: # 0x80360298
    cmpwi   r6, 0x1
    beq-    branch_0x803602c4
    bge-    branch_0x803602b0
    cmpwi   r6, 0x0
    bge-    branch_0x803602bc
    b       branch_0x803602d0

branch_0x803602b0:
    cmpwi   r6, 0x3
    bge-    branch_0x803602d0
    b       branch_0x803602cc

branch_0x803602bc:
    li      r10, 0x3
    b       branch_0x803602d0

branch_0x803602c4:
    li      r10, 0x4
    b       branch_0x803602d0

branch_0x803602cc:
    li      r10, 0x5
branch_0x803602d0:
    li      r0, 0x0
    stw     r0, 0x0(r3)
    srwi    r6, r5, 5
    slwi    r5, r10, 15
    lwz     r9, 0x0(r3)
    slwi    r0, r10, 18
    cmpwi   r8, 0x2
    clrrwi  r9, r9, 15
    or      r6, r9, r6
    stw     r6, 0x0(r3)
    lwz     r6, 0x0(r3)
    rlwinm  r6, r6, 0, 17, 13
    or      r5, r6, r5
    stw     r5, 0x0(r3)
    lwz     r5, 0x0(r3)
    rlwinm  r5, r5, 0, 14, 10
    or      r0, r5, r0
    stw     r0, 0x0(r3)
    lwz     r0, 0x0(r3)
    rlwinm  r0, r0, 0, 11, 9
    stw     r0, 0x0(r3)
    beq-    branch_0x80360358
    bge-    branch_0x8036033c
    cmpwi   r8, 0x0
    beq-    branch_0x80360348
    bge-    branch_0x80360350
    b       branch_0x80360364

branch_0x8036033c:
    cmpwi   r8, 0x4
    bge-    branch_0x80360364
    b       branch_0x80360360

branch_0x80360348:
    li      r10, 0x3
    b       branch_0x80360364

branch_0x80360350:
    li      r10, 0x4
    b       branch_0x80360364

branch_0x80360358:
    li      r10, 0x5
    b       branch_0x80360364

branch_0x80360360:
    li      r10, 0x0
branch_0x80360364:
    li      r0, 0x0
    stw     r0, 0x4(r3)
    srwi    r7, r7, 5
    slwi    r6, r10, 15
    lwz     r8, 0x4(r3)
    slwi    r5, r10, 18
    li      r0, 0x1
    clrrwi  r8, r8, 15
    or      r7, r8, r7
    stw     r7, 0x4(r3)
    lwz     r7, 0x4(r3)
    rlwinm  r7, r7, 0, 17, 13
    or      r6, r7, r6
    stw     r6, 0x4(r3)
    lwz     r6, 0x4(r3)
    rlwinm  r6, r6, 0, 14, 10
    or      r5, r6, r5
    stw     r5, 0x4(r3)
    stb     r4, 0xc(r3)
    stb     r0, 0xd(r3)
    blr


.globl GXInitTlutRegion
GXInitTlutRegion: # 0x803603b8
    li      r0, 0x0
    stw     r0, 0x0(r3)
    addis   r0, r4, 0xfff8
    srwi    r4, r0, 9
    lwz     r6, 0x0(r3)
    slwi    r0, r5, 10
    clrrwi  r5, r6, 10
    or      r4, r5, r4
    stw     r4, 0x0(r3)
    lwz     r4, 0x0(r3)
    rlwinm  r4, r4, 0, 22, 10
    or      r0, r4, r0
    stw     r0, 0x0(r3)
    lwz     r0, 0x0(r3)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x6500
    stw     r0, 0x0(r3)
    blr


.globl GXInvalidateTexAll
GXInvalidateTexAll: # 0x80360400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      __GXFlushTextureState
    li      r6, 0x61
    lis     r3, 0x6600
    lis     r5, 0xcc01
    stb     r6, -0x8000(r5)
    addi    r4, r3, 0x1000
    addi    r0, r3, 0x1100
    stw     r4, -0x8000(r5)
    stb     r6, -0x8000(r5)
    stw     r0, -0x8000(r5)
    bl      __GXFlushTextureState
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXSetTexRegionCallback
GXSetTexRegionCallback: # 0x80360448
    lwz     r4, -0x72f8(r13)
    lwzu    r0, 0x410(r4)
    stw     r3, 0x0(r4)
    mr      r3, r0
    blr


.globl GXSetTlutRegionCallback
GXSetTlutRegionCallback: # 0x8036045c
    lwz     r4, -0x72f8(r13)
    lwzu    r0, 0x414(r4)
    stw     r3, 0x0(r4)
    mr      r3, r0
    blr


.globl GXSetTexCoordScaleManually
GXSetTexCoordScaleManually: # 0x80360470
    lwz     r7, -0x72f8(r13)
    li      r0, 0x1
    clrlwi. r4, r4, 24
    addi    r8, r7, 0x4dc
    lwz     r7, 0x4dc(r7)
    slw     r0, r0, r3
    andc    r7, r7, r0
    slw     r0, r4, r3
    or      r0, r7, r0
    stw     r0, 0x0(r8)
    beqlr-    

    lwz     r4, -0x72f8(r13)
    slwi    r8, r3, 2
    subi    r0, r5, 0x1
    add     r5, r4, r8
    lwz     r4, 0xb8(r5)
    subi    r3, r6, 0x1
    li      r7, 0x61
    clrrwi  r4, r4, 16
    insrwi  r4, r0, 16, 16
    stw     r4, 0xb8(r5)
    lis     r6, 0xcc01
    li      r0, 0x0
    lwz     r4, -0x72f8(r13)
    add     r5, r4, r8
    lwz     r4, 0xd8(r5)
    clrrwi  r4, r4, 16
    insrwi  r4, r3, 16, 16
    stw     r4, 0xd8(r5)
    lwz     r5, -0x72f8(r13)
    stb     r7, -0x8000(r6)
    add     r4, r5, r8
    lwz     r3, 0xb8(r4)
    stw     r3, -0x8000(r6)
    stb     r7, -0x8000(r6)
    lwz     r3, 0xd8(r4)
    stw     r3, -0x8000(r6)
    sth     r0, 0x2(r5)
    blr


.globl GXSetTexCoordCylWrap
GXSetTexCoordCylWrap: # 0x8036050c
    lwz     r0, -0x72f8(r13)
    slwi    r8, r3, 2
    clrlslwi  r4, r4, 24, 17
    add     r7, r0, r8
    lwz     r6, 0xb8(r7)
    li      r0, 0x1
    slw     r0, r0, r3
    rlwinm  r6, r6, 0, 15, 13
    or      r4, r6, r4
    stw     r4, 0xb8(r7)
    clrlslwi  r4, r5, 24, 17
    lwz     r3, -0x72f8(r13)
    add     r5, r3, r8
    lwz     r3, 0xd8(r5)
    rlwinm  r3, r3, 0, 15, 13
    or      r3, r3, r4
    stw     r3, 0xd8(r5)
    lwz     r7, -0x72f8(r13)
    lwz     r3, 0x4dc(r7)
    and.    r0, r3, r0
    beqlr-    

    li      r6, 0x61
    lis     r5, 0xcc01
    stb     r6, -0x8000(r5)
    add     r4, r7, r8
    li      r0, 0x0
    lwz     r3, 0xb8(r4)
    stw     r3, -0x8000(r5)
    stb     r6, -0x8000(r5)
    lwz     r3, 0xd8(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r7)
    blr


.globl __SetSURegs
__SetSURegs: # 0x80360590
    lwz     r5, -0x72f8(r13)
    slwi    r0, r4, 2
    slwi    r9, r3, 2
    add     r4, r5, r0
    add     r3, r5, r9
    lwz     r5, 0x45c(r3)
    li      r7, 0x61
    lwz     r3, 0xb8(r4)
    lis     r6, 0xcc01
    clrrwi  r3, r3, 16
    insrwi  r3, r5, 10, 22
    stw     r3, 0xb8(r4)
    li      r3, 0x0
    lwz     r4, -0x72f8(r13)
    add     r8, r4, r0
    lwz     r4, 0xd8(r8)
    clrrwi  r4, r4, 16
    rlwimi  r4, r5, 22, 22, 31
    stw     r4, 0xd8(r8)
    lwz     r5, -0x72f8(r13)
    add     r4, r5, r9
    lwz     r9, 0x47c(r4)
    add     r10, r5, r0
    lwz     r5, 0xb8(r10)
    extrwi  r4, r9, 2, 28
    subfic  r8, r4, 0x1
    clrlwi  r4, r9, 30
    subfic  r4, r4, 0x1
    cntlzw  r4, r4
    rlwinm  r5, r5, 0, 16, 14
    rlwinm  r4, r4, 11, 8, 15
    or      r4, r5, r4
    stw     r4, 0xb8(r10)
    cntlzw  r4, r8
    rlwinm  r4, r4, 11, 8, 15
    lwz     r5, -0x72f8(r13)
    add     r8, r5, r0
    lwz     r5, 0xd8(r8)
    rlwinm  r5, r5, 0, 16, 14
    or      r4, r5, r4
    stw     r4, 0xd8(r8)
    lwz     r5, -0x72f8(r13)
    stb     r7, -0x8000(r6)
    add     r4, r5, r0
    lwz     r0, 0xb8(r4)
    stw     r0, -0x8000(r6)
    stb     r7, -0x8000(r6)
    lwz     r0, 0xd8(r4)
    stw     r0, -0x8000(r6)
    sth     r3, 0x2(r5)
    blr


.globl __GXSetSUTexRegs
__GXSetSUTexRegs: # 0x8036065c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4dc(r3)
    cmplwi  r0, 0xff
    beq-    branch_0x803607c4
    lwz     r0, 0x204(r3)
    li      r31, 0x0
    extrwi  r3, r0, 4, 18
    addi    r30, r3, 0x1
    extrwi  r27, r0, 3, 13
    b       branch_0x80360730

branch_0x80360694:
    cmpwi   r31, 0x2
    beq-    branch_0x803606e4
    bge-    branch_0x803606b0
    cmpwi   r31, 0x0
    beq-    branch_0x803606bc
    bge-    branch_0x803606d0
    b       branch_0x80360708

branch_0x803606b0:
    cmpwi   r31, 0x4
    bge-    branch_0x80360708
    b       branch_0x803606f8

branch_0x803606bc:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x120(r3)
    clrlwi  r29, r0, 29
    extrwi  r28, r0, 3, 26
    b       branch_0x80360708

branch_0x803606d0:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x120(r3)
    extrwi  r29, r0, 3, 23
    extrwi  r28, r0, 3, 20
    b       branch_0x80360708

branch_0x803606e4:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x120(r3)
    extrwi  r29, r0, 3, 17
    extrwi  r28, r0, 3, 14
    b       branch_0x80360708

branch_0x803606f8:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x120(r3)
    extrwi  r29, r0, 3, 11
    extrwi  r28, r0, 3, 8
branch_0x80360708:
    lwz     r3, -0x72f8(r13)
    li      r0, 0x1
    slw     r0, r0, r28
    lwz     r3, 0x4dc(r3)
    and.    r0, r3, r0
    bne-    branch_0x8036072c
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      __SetSURegs
branch_0x8036072c:
    addi    r31, r31, 0x1
branch_0x80360730:
    cmplw   r31, r27
    blt+    branch_0x80360694
    li      r31, 0x0
    addi    r27, r31, 0x0
    b       branch_0x803607bc

branch_0x80360744:
    lwz     r5, -0x72f8(r13)
    addi    r3, r27, 0x49c
    extlwi  r4, r31, 30, 1
    lwzx    r3, r5, r3
    clrlwi. r0, r31, 31
    addi    r4, r4, 0x100
    add     r4, r5, r4
    rlwinm  r29, r3, 0, 24, 22
    beq-    branch_0x80360774
    lwz     r0, 0x0(r4)
    extrwi  r28, r0, 3, 14
    b       branch_0x8036077c

branch_0x80360774:
    lwz     r0, 0x0(r4)
    extrwi  r28, r0, 3, 26
branch_0x8036077c:
    cmplwi  r29, 0xff
    beq-    branch_0x803607b4
    li      r4, 0x1
    lwz     r3, 0x4dc(r5)
    slw     r0, r4, r28
    and.    r0, r3, r0
    bne-    branch_0x803607b4
    lwz     r3, 0x4e0(r5)
    slw     r0, r4, r31
    and.    r0, r3, r0
    beq-    branch_0x803607b4
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      __SetSURegs
branch_0x803607b4:
    addi    r27, r27, 0x4
    addi    r31, r31, 0x1
branch_0x803607bc:
    cmplw   r31, r30
    blt+    branch_0x80360744
branch_0x803607c4:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __GXSetTmemConfig
__GXSetTmemConfig: # 0x803607d8
    stwu    sp, -0x18(sp)
    cmpwi   r3, 0x1
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    beq-    branch_0x803607f4
    bge-    branch_0x80360900
    b       branch_0x80360900

branch_0x803607f4:
    li      r0, 0x61
    lis     r3, 0xcc01
    lis     r4, 0x8c0e
    stb     r0, -0x8000(r3)
    subi    r4, r4, 0x8000
    stw     r4, -0x8000(r3)
    lis     r4, 0x900e
    lis     r7, 0x8d0e
    stb     r0, -0x8000(r3)
    subi    r4, r4, 0x4000
    lis     r6, 0x910e
    stw     r4, -0x8000(r3)
    lis     r5, 0x8e0e
    lis     r4, 0x920e
    stb     r0, -0x8000(r3)
    subi    r7, r7, 0x7800
    lis     r30, 0x8f0e
    stw     r7, -0x8000(r3)
    lis     r12, 0x930e
    lis     r11, 0xac0e
    stb     r0, -0x8000(r3)
    subi    r6, r6, 0x3800
    lis     r10, 0xb00e
    stw     r6, -0x8000(r3)
    lis     r9, 0xad0e
    lis     r8, 0xb10e
    stb     r0, -0x8000(r3)
    subi    r5, r5, 0x7000
    lis     r7, 0xae0e
    stw     r5, -0x8000(r3)
    lis     r6, 0xb20e
    lis     r5, 0xaf0e
    stb     r0, -0x8000(r3)
    subi    r31, r4, 0x3000
    lis     r4, 0xb30e
    stw     r31, -0x8000(r3)
    subi    r30, r30, 0x6800
    subi    r12, r12, 0x2800
    stb     r0, -0x8000(r3)
    subi    r11, r11, 0x6000
    subi    r10, r10, 0x2000
    stw     r30, -0x8000(r3)
    subi    r9, r9, 0x5800
    subi    r8, r8, 0x1800
    stb     r0, -0x8000(r3)
    subi    r7, r7, 0x5000
    subi    r6, r6, 0x1000
    stw     r12, -0x8000(r3)
    subi    r5, r5, 0x4800
    subi    r4, r4, 0x800
    stb     r0, -0x8000(r3)
    stw     r11, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r10, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r9, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r8, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r7, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r4, -0x8000(r3)
    b       branch_0x80360a08

branch_0x80360900:
    li      r0, 0x61
    lis     r3, 0xcc01
    lis     r4, 0x8c0e
    stb     r0, -0x8000(r3)
    subi    r4, r4, 0x8000
    stw     r4, -0x8000(r3)
    lis     r4, 0x900e
    lis     r7, 0x8d0e
    stb     r0, -0x8000(r3)
    subi    r4, r4, 0x4000
    lis     r6, 0x910e
    stw     r4, -0x8000(r3)
    lis     r5, 0x8e0e
    lis     r4, 0x920e
    stb     r0, -0x8000(r3)
    subi    r7, r7, 0x7c00
    lis     r31, 0x8f0e
    stw     r7, -0x8000(r3)
    lis     r12, 0x930e
    lis     r11, 0xac0e
    stb     r0, -0x8000(r3)
    subi    r6, r6, 0x3c00
    lis     r10, 0xb00e
    stw     r6, -0x8000(r3)
    lis     r9, 0xad0e
    lis     r8, 0xb10e
    stb     r0, -0x8000(r3)
    subi    r5, r5, 0x7800
    lis     r7, 0xae0e
    stw     r5, -0x8000(r3)
    lis     r6, 0xb20e
    lis     r5, 0xaf0e
    stb     r0, -0x8000(r3)
    subi    r30, r4, 0x3800
    lis     r4, 0xb30e
    stw     r30, -0x8000(r3)
    subi    r31, r31, 0x7400
    subi    r12, r12, 0x3400
    stb     r0, -0x8000(r3)
    subi    r11, r11, 0x7000
    subi    r10, r10, 0x3000
    stw     r31, -0x8000(r3)
    subi    r9, r9, 0x6c00
    subi    r8, r8, 0x2c00
    stb     r0, -0x8000(r3)
    subi    r7, r7, 0x6800
    subi    r6, r6, 0x2800
    stw     r12, -0x8000(r3)
    subi    r5, r5, 0x6400
    subi    r4, r4, 0x2400
    stb     r0, -0x8000(r3)
    stw     r11, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r10, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r9, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r8, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r7, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r6, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    stw     r4, -0x8000(r3)
branch_0x80360a08:
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr

