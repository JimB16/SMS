
.globl __GXSetDirtyState
__GXSetDirtyState: # 0x8035dee8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8035df08
    bl      __GXSetSUTexRegs
branch_0x8035df08:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8035df1c
    bl      __GXUpdateBPMask
branch_0x8035df1c:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8035df30
    bl      __GXSetGenMode
branch_0x8035df30:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8035df44
    bl      __GXSetVCD
branch_0x8035df44:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8035df58
    bl      __GXSetVAT
branch_0x8035df58:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 27, 28
    beq-    branch_0x8035df6c
    bl      __GXCalculateVLim
branch_0x8035df6c:
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x0
    stw     r0, 0x4f4(r3)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXBegin
GXBegin: # 0x8035df88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r6, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8035e038
    clrlwi. r0, r0, 31
    beq-    branch_0x8035dfc8
    bl      __GXSetSUTexRegs
branch_0x8035dfc8:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8035dfdc
    bl      __GXUpdateBPMask
branch_0x8035dfdc:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8035dff0
    bl      __GXSetGenMode
branch_0x8035dff0:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8035e004
    bl      __GXSetVCD
branch_0x8035e004:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8035e018
    bl      __GXSetVAT
branch_0x8035e018:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    rlwinm. r0, r0, 0, 27, 28
    beq-    branch_0x8035e02c
    bl      __GXCalculateVLim
branch_0x8035e02c:
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x0
    stw     r0, 0x4f4(r3)
branch_0x8035e038:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8035e04c
    bl      __GXSendFlushPrim
branch_0x8035e04c:
    or      r0, r30, r29
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    sth     r31, -0x8000(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __GXSendFlushPrim
__GXSendFlushPrim: # 0x8035e078
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x98
    lis     r5, 0xcc01
    lhz     r6, 0x4(r3)
    li      r4, 0x0
    lhz     r3, 0x6(r3)
    mullw   r7, r6, r3
    stb     r0, -0x8000(r5)
    sth     r6, -0x8000(r5)
    addi    r3, r7, 0x3
    cmplwi  r7, 0x0
    srwi    r3, r3, 2
    ble-    branch_0x8035e0f0
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x8035e0e4
branch_0x8035e0b8:
    stw     r4, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stw     r4, -0x8000(r5)
    stw     r4, -0x8000(r5)
    bdnz+      branch_0x8035e0b8
    andi.   r3, r3, 0x7
    beq-    branch_0x8035e0f0
branch_0x8035e0e4:
    mtctr   r3
branch_0x8035e0e8:
    stw     r4, -0x8000(r5)
    bdnz+      branch_0x8035e0e8
branch_0x8035e0f0:
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x1
    sth     r0, 0x2(r3)
    blr


.globl GXSetLineWidth
GXSetLineWidth: # 0x8035e100
    lwz     r5, R13Off_m0x72f8(r13)
    slwi    r6, r4, 16
    li      r4, 0x61
    lwz     r0, 0x7c(r5)
    addi    r7, r5, 0x7c
    lis     r5, 0xcc01
    clrrwi  r0, r0, 8
    insrwi  r0, r3, 8, 24
    stw     r0, 0x0(r7)
    li      r0, 0x0
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r7, r3, 0x7c
    lwz     r3, 0x7c(r3)
    rlwinm  r3, r3, 0, 16, 12
    or      r3, r3, r6
    stw     r3, 0x0(r7)
    stb     r4, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x7c(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetPointSize
GXSetPointSize: # 0x8035e158
    lwz     r5, R13Off_m0x72f8(r13)
    slwi    r6, r4, 19
    lwzu    r0, 0x7c(r5)
    li      r4, 0x61
    rlwinm  r0, r0, 0, 24, 15
    insrwi  r0, r3, 8, 16
    stw     r0, 0x0(r5)
    lis     r5, 0xcc01
    li      r0, 0x0
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r7, r3, 0x7c
    lwz     r3, 0x7c(r3)
    rlwinm  r3, r3, 0, 13, 9
    or      r3, r3, r6
    stw     r3, 0x0(r7)
    stb     r4, -0x8000(r5)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r3, 0x7c(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXEnableTexOffsets
GXEnableTexOffsets: # 0x8035e1ac
    lwz     r0, R13Off_m0x72f8(r13)
    slwi    r7, r3, 2
    add     r6, r0, r7
    lwz     r3, 0xb8(r6)
    clrlslwi  r0, r4, 24, 18
    clrlslwi  r4, r5, 24, 19
    rlwinm  r3, r3, 0, 14, 12
    or      r0, r3, r0
    stw     r0, 0xb8(r6)
    li      r3, 0x61
    lis     r5, 0xcc01
    lwz     r6, R13Off_m0x72f8(r13)
    li      r0, 0x0
    add     r8, r6, r7
    lwz     r6, 0xb8(r8)
    rlwinm  r6, r6, 0, 13, 11
    or      r4, r6, r4
    stw     r4, 0xb8(r8)
    lwz     r4, R13Off_m0x72f8(r13)
    stb     r3, -0x8000(r5)
    add     r3, r4, r7
    lwz     r3, 0xb8(r3)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetCullMode
GXSetCullMode: # 0x8035e210
    cmpwi   r3, 0x2
    beq-    branch_0x8035e230
    bge-    branch_0x8035e234
    cmpwi   r3, 0x1
    bge-    branch_0x8035e228
    b       branch_0x8035e234

branch_0x8035e228:
    li      r3, 0x2
    b       branch_0x8035e234

branch_0x8035e230:
    li      r3, 0x1
branch_0x8035e234:
    lwz     r4, R13Off_m0x72f8(r13)
    slwi    r0, r3, 14
    lwzu    r3, 0x204(r4)
    rlwinm  r3, r3, 0, 18, 15
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetCoPlanar
GXSetCoPlanar: # 0x8035e260
    lwz     r4, R13Off_m0x72f8(r13)
    clrlslwi  r0, r3, 24, 19
    li      r5, 0x61
    lwz     r3, 0x204(r4)
    addi    r6, r4, 0x204
    lis     r4, 0xcc01
    rlwinm  r3, r3, 0, 13, 11
    or      r0, r3, r0
    stw     r0, 0x0(r6)
    lis     r0, 0xfe08
    stb     r5, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stw     r0, -0x8000(r4)
    stb     r5, -0x8000(r4)
    lwz     r0, 0x204(r3)
    stw     r0, -0x8000(r4)
    blr


.globl __GXSetGenMode
__GXSetGenMode: # 0x8035e2a4
    li      r0, 0x61
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r5, unk_cc00ffff@ha
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r3, 0x204(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr

