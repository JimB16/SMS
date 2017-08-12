
.globl GXSetMisc
GXSetMisc: # 0x8035d878
    cmpwi   r3, 0x1
    beq-    branch_0x8035d890
    bltlr-    

    cmpwi   r3, 0x3
    bgelr-    

    b       branch_0x8035d8d8

branch_0x8035d890:
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x1
    sth     r4, 0x4(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lhz     r3, 0x4(r4)
    cntlzw  r3, r3
    extrwi  r3, r3, 16, 11
    sth     r3, 0x0(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    sth     r0, 0x2(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    lhz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x4f4(r3)
    blr

branch_0x8035d8d8:
    neg     r4, r4
    lwz     r3, R13Off_m0x72f8(r13)
    subic   r0, r4, 0x1
    subfe   r0, r0, r4
    stb     r0, 0x4f1(r3)
    blr


.globl GXFlush
GXFlush: # 0x8035d8f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8035d910
    bl      __GXSetDirtyState
branch_0x8035d910:
    li      r0, 0x0
    lis     r3, 0xcc01
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    stw     r0, -0x8000(r3)
    bl      PPCSync
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXSetDrawSync
GXSetDrawSync: # 0x8035d94c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      OSDisableInterrupts
    li      r6, 0x61
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    clrlwi  r0, r30, 16
    stb     r6, -0x8000(r5)
    oris    r0, r0, 0x4800
    stw     r0, -0x8000(r5)
    clrrwi  r0, r0, 16
    insrwi  r0, r30, 16, 16
    clrlwi  r0, r0, 8
    stb     r6, -0x8000(r5)
    oris    r0, r0, 0x4700
    stw     r0, -0x8000(r5)
    mr      r30, r3
    lwz     r0, 0x4f4(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8035d9b0
    bl      __GXSetDirtyState
branch_0x8035d9b0:
    li      r31, 0x0
    lis     r3, 0xcc01
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    bl      PPCSync
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r3, R13Off_m0x72f8(r13)
    sth     r31, 0x2(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXSetDrawDone
GXSetDrawDone: # 0x8035da04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    bl      OSDisableInterrupts
    li      r0, 0x61
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r6, 0xcc01
    lis     r5, unk_45000002@h
    stb     r0, -0x8000(r6)
    addi    r0, r5, unk_45000002@l
    stw     r0, -0x8000(r6)
    mr      r30, r3
    lwz     r0, 0x4f4(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8035da4c
    bl      __GXSetDirtyState
branch_0x8035da4c:
    li      r31, 0x0
    lis     r3, 0xcc01
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    stw     r31, -0x8000(r3)
    bl      PPCSync
    stb     r31, R13Off_m0x57a0(r13)
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXWaitDrawDone
GXWaitDrawDone: # 0x8035da9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    mr      r31, r3
    b       branch_0x8035dac0

branch_0x8035dab8:
    addi    r3, r13, R13Off_m0x579c
    bl      OSSleepThread
branch_0x8035dac0:
    lbz     r0, R13Off_m0x57a0(r13)
    cmplwi  r0, 0x0
    beq+    branch_0x8035dab8
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl GXDrawDone
GXDrawDone: # 0x8035dae8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      OSDisableInterrupts
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r4, unk_45000002@h
    stb     r0, -0x8000(r5)
    addi    r0, r4, unk_45000002@l
    stw     r0, -0x8000(r5)
    mr      r31, r3
    bl      GXFlush
    li      r0, 0x0
    stb     r0, R13Off_m0x57a0(r13)
    mr      r3, r31
    bl      OSRestoreInterrupts
    bl      OSDisableInterrupts
    mr      r31, r3
    b       branch_0x8035db40

branch_0x8035db38:
    addi    r3, r13, R13Off_m0x579c
    bl      OSSleepThread
branch_0x8035db40:
    lbz     r0, R13Off_m0x57a0(r13)
    cmplwi  r0, 0x0
    beq+    branch_0x8035db38
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXPixModeSync
GXPixModeSync: # 0x8035db68
    li      r0, 0x61
    lwz     r4, R13Off_m0x72f8(r13)
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r0, 0x0
    lwz     r3, 0x1dc(r4)
    stw     r3, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXPokeAlphaMode
GXPokeAlphaMode: # 0x8035db8c
    lwz     r5, R13Off_m0x57d0(r13)
    clrlwi  r0, r4, 24
    insrwi  r0, r3, 24, 0
    sth     r0, 0x6(r5)
    blr


.globl GXPokeAlphaRead
GXPokeAlphaRead: # 0x8035dba0
    rlwinm  r0, r3, 0, 30, 28
    lwz     r3, R13Off_m0x57d0(r13)
    ori     r0, r0, 0x4
    sth     r0, 0x8(r3)
    blr


.globl GXPokeAlphaUpdate
GXPokeAlphaUpdate: # 0x8035dbb4
    lwz     r4, R13Off_m0x57d0(r13)
    clrlslwi  r0, r3, 24, 4
    lhzu    r3, 0x2(r4)
    rlwinm  r3, r3, 0, 28, 26
    or      r0, r3, r0
    sth     r0, 0x0(r4)
    blr


.globl GXPokeBlendMode
GXPokeBlendMode: # 0x8035dbd0
    lwz     r7, R13Off_m0x57d0(r13)
    cmpwi   r3, 0x1
    li      r9, 0x1
    addi    r10, r7, 0x2
    lhz     r7, 0x2(r7)
    beq-    branch_0x8035dbf4
    cmpwi   r3, 0x3
    beq-    branch_0x8035dbf4
    li      r9, 0x0
branch_0x8035dbf4:
    clrrwi  r8, r7, 1
    subfic  r0, r3, 0x3
    cntlzw  r7, r0
    subfic  r0, r3, 0x2
    or      r8, r8, r9
    cntlzw  r0, r0
    rlwinm  r8, r8, 0, 21, 19
    extlwi  r3, r7, 21, 6
    or      r3, r8, r3
    rlwinm  r3, r3, 0, 31, 29
    rlwinm  r0, r0, 28, 4, 30
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 20, 15
    slwi    r0, r6, 12
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 24, 20
    slwi    r0, r4, 8
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 27, 23
    slwi    r0, r5, 5
    or      r0, r3, r0
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4100
    sth     r0, 0x0(r10)
    blr


.globl GXPokeColorUpdate
GXPokeColorUpdate: # 0x8035dc58
    lwz     r4, R13Off_m0x57d0(r13)
    clrlslwi  r0, r3, 24, 3
    lhzu    r3, 0x2(r4)
    rlwinm  r3, r3, 0, 29, 27
    or      r0, r3, r0
    sth     r0, 0x0(r4)
    blr


.globl GXPokeDstAlpha
GXPokeDstAlpha: # 0x8035dc74
    lwz     r5, R13Off_m0x57d0(r13)
    clrlslwi  r0, r3, 24, 8
    insrwi  r0, r4, 8, 24
    sth     r0, 0x4(r5)
    blr


.globl GXPokeDither
GXPokeDither: # 0x8035dc88
    lwz     r4, R13Off_m0x57d0(r13)
    clrlslwi  r0, r3, 24, 2
    lhzu    r3, 0x2(r4)
    rlwinm  r3, r3, 0, 30, 28
    or      r0, r3, r0
    sth     r0, 0x0(r4)
    blr


.globl GXPokeZMode
GXPokeZMode: # 0x8035dca4
    clrlwi  r0, r3, 24
    lwz     r3, R13Off_m0x57d0(r13)
    rlwinm  r6, r0, 0, 31, 27
    slwi    r0, r4, 1
    or      r0, r6, r0
    rlwinm  r4, r0, 0, 28, 26
    clrlslwi  r0, r5, 24, 4
    or      r0, r4, r0
    sth     r0, 0x0(r3)
    blr


.globl GXPeekARGB
GXPeekARGB: # 0x8035dccc
    clrlslwi  r0, r3, 16, 2
    oris    r0, r0, 0xc800
    rlwinm  r3, r0, 0, 20, 9
    clrlslwi  r0, r4, 16, 12
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 10, 7
    lwz     r0, 0x0(r3)
    stw     r0, 0x0(r5)
    blr


.globl GXPeekZ
GXPeekZ: # 0x8035dcf0
    clrlslwi  r0, r3, 16, 2
    oris    r0, r0, 0xc800
    rlwinm  r3, r0, 0, 20, 9
    clrlslwi  r0, r4, 16, 12
    or      r0, r3, r0
    rlwinm  r0, r0, 0, 10, 7
    oris    r3, r0, 0x40
    lwz     r0, 0x0(r3)
    stw     r0, 0x0(r5)
    blr


.globl GXSetDrawSyncCallback
GXSetDrawSyncCallback: # 0x8035dd18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r31, R13Off_m0x57a8(r13)
    bl      OSDisableInterrupts
    stw     r30, R13Off_m0x57a8(r13)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GXTokenInterruptHandler
GXTokenInterruptHandler: # 0x8035dd5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    stw     r30, 0x2d8(sp)
    mr      r30, r4
    lwz     r0, R13Off_m0x57a8(r13)
    lwz     r3, R13Off_m0x57d0(r13)
    cmplwi  r0, 0x0
    lhz     r31, 0xe(r3)
    beq-    branch_0x8035ddb8
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r12, R13Off_m0x57a8(r13)
    addi    r3, r31, 0x0
    mtlr    r12
    blrl
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r30
    bl      OSSetCurrentContext
branch_0x8035ddb8:
    lwz     r3, R13Off_m0x57d0(r13)
    lhzu    r0, 0xa(r3)
    rlwinm  r0, r0, 0, 30, 28
    ori     r0, r0, 0x4
    sth     r0, 0x0(r3)
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    lwz     r30, 0x2d8(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl GXFinishInterruptHandler
GXFinishInterruptHandler: # 0x8035dde4
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e0(sp)
    stw     r31, 0x2dc(sp)
    addi    r31, r4, 0x0
    lwz     r5, R13Off_m0x57d0(r13)
    lhz     r0, 0xa(r5)
    rlwinm  r0, r0, 0, 29, 27
    ori     r0, r0, 0x8
    sth     r0, 0xa(r5)
    lwz     r0, R13Off_m0x57a4(r13)
    stb     r3, R13Off_m0x57a0(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8035de4c
    addi    r3, sp, 0x10
    bl      OSClearContext
    addi    r3, sp, 0x10
    bl      OSSetCurrentContext
    lwz     r12, R13Off_m0x57a4(r13)
    mtlr    r12
    blrl
    addi    r3, sp, 0x10
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
branch_0x8035de4c:
    addi    r3, r13, R13Off_m0x579c
    bl      OSWakeupThread
    lwz     r0, 0x2e4(sp)
    lwz     r31, 0x2dc(sp)
    addi    sp, sp, 0x2e0
    mtlr    r0
    blr


.globl __GXPEInit
__GXPEInit: # 0x8035de68
    mflr    r0
    lis     r3, GXTokenInterruptHandler@ha
    stw     r0, 0x4(sp)
    addi    r4, r3, GXTokenInterruptHandler@l
    li      r3, 0x12
    stwu    sp, -0x8(sp)
    bl      __OSSetInterruptHandler
    lis     r3, GXFinishInterruptHandler@ha
    addi    r4, r3, GXFinishInterruptHandler@l
    li      r3, 0x13
    bl      __OSSetInterruptHandler
    addi    r3, r13, R13Off_m0x579c
    bl      OSInitThreadQueue
    li      r3, 0x2000
    bl      __OSUnmaskInterrupts
    li      r3, 0x1000
    bl      __OSUnmaskInterrupts
    lwz     r3, R13Off_m0x57d0(r13)
    lhzu    r0, 0xa(r3)
    rlwinm  r0, r0, 0, 30, 28
    ori     r0, r0, 0x4
    rlwinm  r0, r0, 0, 29, 27
    ori     r0, r0, 0x8
    clrrwi  r0, r0, 1
    ori     r0, r0, 0x1
    rlwinm  r0, r0, 0, 31, 29
    ori     r0, r0, 0x2
    sth     r0, 0x0(r3)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

