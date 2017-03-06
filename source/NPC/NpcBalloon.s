
.globl updateBalloon__11TNpcBalloonFv
updateBalloon__11TNpcBalloonFv: # 0x8021696c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r4, 0x4(r3)
    li      r3, 0x0
    cmpwi   r4, 0x0
    ble-    branch_0x802169c4
    subi    r0, r4, 0x1
    stw     r0, 0x4(r31)
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802169c4
    lwz     r3, -0x6048(r13)
    li      r5, 0x1
    lwz     r4, 0x0(r31)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, -0x1
    stw     r0, 0x4(r31)
    li      r3, 0x1
branch_0x802169c4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setNextMessage__11TNpcBalloonFUll
setNextMessage__11TNpcBalloonFUll: # 0x802169d8
    stw     r4, 0x0(r3)
    stw     r5, 0x4(r3)
    blr
