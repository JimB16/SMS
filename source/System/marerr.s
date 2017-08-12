
.globl MarErrInit__Fv
MarErrInit__Fv: # 0x8029cfc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    bl      start__14JUTDirectPrintFv
    addi    r31, r3, 0x0
    li      r3, 0x0
    bl      createManager__17JUTConsoleManagerFP7JKRHeap
    mr      r3, r31
    bl      create__12JUTExceptionFP14JUTDirectPrint
    li      r3, 0x1400
    bl      __nwa__FUl
    li      r4, 0x1400
    bl      createConsole__12JUTExceptionFPvUl
    lis     r3, sStrMapFile@h
    addi    r3, r3, sStrMapFile@l
    bl      appendMapFile__12JUTExceptionFPc
    lis     r3, MarErrException__FUsP9OSContextUlUl@ha
    addi    r3, r3, MarErrException__FUsP9OSContextUlUl@l
    bl      setPreUserCallback__12JUTExceptionFPFUsP9OSContextUlUl_v
    lwz     r4, R13Off_m0x5f08(r13)
    li      r3, -0x1
    li      r0, 0x8
    stw     r3, 0x68(r4)
    stw     r3, 0x6c(r4)
    lwz     r3, R13Off_m0x5f08(r13)
    stw     r0, 0x80(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl MarErrException__FUsP9OSContextUlUl
MarErrException__FUsP9OSContextUlUl: # 0x8029d040
    mflr    r0
    lis     r3, cDispExceptionCommand__9_unnamed_@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, cDispExceptionCommand__9_unnamed_@l
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    li      r29, 0x0
    b       branch_0x8029d0ac

branch_0x8029d068:
    li      r3, 0x64
    bl      waitTime__12JUTExceptionFl
    lwz     r3, R13Off_m0x5f08(r13)
    addi    r4, sp, 0x18
    li      r5, 0x0
    bl      readPad__12JUTExceptionFPUlPUl
    lwz     r3, 0x18(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x8029d0ac
    lwz     r0, 0x0(r30)
    clrlwi  r3, r3, 16
    cmplw   r3, r0
    bne-    branch_0x8029d0a4
    addi    r0, r29, 0x1
    b       branch_0x8029d0a8

branch_0x8029d0a4:
    li      r0, 0x0
branch_0x8029d0a8:
    mr      r29, r0
branch_0x8029d0ac:
    slwi    r0, r29, 2
    add     r30, r31, r0
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    bne+    branch_0x8029d068
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr

