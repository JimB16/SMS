
.globl __dt__11TAlphaCatchFv
__dt__11TAlphaCatchFv: # 0x802a5834
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a588c
    lis     r3, 0x803e
    subi    r0, r3, 0xc58
    stw     r0, 0x0(r30)
    beq-    branch_0x802a587c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a587c:
    extsh.  r0, r31
    ble-    branch_0x802a588c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a588c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__11TAlphaCatchFUlPQ26JDrama9TGraphics
perform__11TAlphaCatchFUlPQ26JDrama9TGraphics: # 0x802a58a8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x8(sp)
    beq-    branch_0x802a58dc
    lwz     r3, -0x5ff0(r13)
    bl      pushBreakPoint__16TDrawSyncManagerFv
    li      r3, 0x7c
    bl      GXSetDrawSync
    lwz     r3, -0x5ff0(r13)
    bl      pushBreakPoint__16TDrawSyncManagerFv
    li      r3, 0x0
    bl      GXSetDrawSync
branch_0x802a58dc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__13TZBufferCatchFUlPQ26JDrama9TGraphics
perform__13TZBufferCatchFUlPQ26JDrama9TGraphics: # 0x802a58ec
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x8(sp)
    beq-    branch_0x802a5914
    lwz     r3, -0x5ff0(r13)
    bl      pushBreakPoint__16TDrawSyncManagerFv
    bl      ReInitializeGX
    li      r3, 0x7d
    bl      GXSetDrawSync
branch_0x802a5914:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TZBufferCatchFv
__dt__13TZBufferCatchFv: # 0x802a5924
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a597c
    lis     r3, 0x803e
    subi    r0, r3, 0xc34
    stw     r0, 0x0(r30)
    beq-    branch_0x802a596c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a596c:
    extsh.  r0, r31
    ble-    branch_0x802a597c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a597c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

