
.globl TRK_main
TRK_main: # 0x803416ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      TRKInitializeNub
    lis     r4, 0x8040
    stwu    r3, 0x2568(r4)
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x803416d8
    bl      TRKNubWelcome
    bl      TRKNubMainLoop
branch_0x803416d8:
    bl      TRKTerminateNub
    lis     r4, 0x8040
    stw     r3, 0x2568(r4)
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

