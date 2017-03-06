
.globl TRKDoNotifyStopped
TRKDoNotifyStopped: # 0x8033f944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r4, sp, 0xc
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x8
    bl      TRKGetFreeBuffer
    mr.     r31, r3
    bne-    branch_0x8033fa00
    lwz     r5, 0xc(sp)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x880
    blt-    branch_0x8033f988
    li      r4, 0x301
    b       branch_0x8033f9a8

branch_0x8033f988:
    addi    r0, r3, 0x1
    add     r3, r5, r3
    stw     r0, 0xc(r5)
    li      r4, 0x0
    stb     r30, 0x10(r3)
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8033f9a8:
    cmpwi   r4, 0x0
    bne-    branch_0x8033f9d0
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x90
    bne-    branch_0x8033f9c8
    lwz     r3, 0xc(sp)
    bl      TRKTargetAddStopInfo
    b       branch_0x8033f9d0

branch_0x8033f9c8:
    lwz     r3, 0xc(sp)
    bl      TRKTargetAddExceptionInfo
branch_0x8033f9d0:
    lwz     r3, 0xc(sp)
    addi    r4, sp, 0x10
    li      r5, 0x2
    li      r6, 0x3
    li      r7, 0x1
    bl      TRKRequestSend
    mr.     r31, r3
    bne-    branch_0x8033f9f8
    lwz     r3, 0x10(sp)
    bl      TRKReleaseBuffer
branch_0x8033f9f8:
    lwz     r3, 0x8(sp)
    bl      TRKReleaseBuffer
branch_0x8033fa00:
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

