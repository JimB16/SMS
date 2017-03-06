
.globl Run
Run: # 0x80346af4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    bl      ICFlashInvalidate
    sync
    isync
    mtlr    r31
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x341520, 0x80346b34 - 0x80346b20

.globl Callback
Callback: # 0x80346b34
    li      r0, 0x1
    stw     r0, -0x59f0(r13)
    blr


.globl __OSReboot
__OSReboot: # 0x80346b40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x340(sp)
    stw     r31, 0x33c(sp)
    stw     r30, 0x338(sp)
    lis     r3, 0x8040
    addi    r30, r3, 0x2620
    bl      OSDisableInterrupts
    lwz     r5, -0x59f8(r13)
    lis     r4, 0x8130
    lwz     r0, -0x59f4(r13)
    li      r3, 0x0
    lis     r31, 0x8180
    li      r7, 0x1
    stw     r3, -0x4(r31)
    lis     r6, 0x8000
    stw     r3, -0x8(r31)
    addi    r3, sp, 0x70
    stb     r7, 0x30e2(r6)
    stw     r5, -0x2010(r4)
    stw     r0, -0x2014(r4)
    bl      OSClearContext
    addi    r3, sp, 0x70
    bl      OSSetCurrentContext
    bl      DVDInit
    li      r3, 0x1
    bl      DVDSetAutoInvalidation
    lis     r3, 0x8034
    addi    r3, r3, 0x6b34
    bl      __DVDPrepareResetAsync
    bl      DVDCheckDisk
    cmpwi   r3, 0x0
    bne-    branch_0x80346bcc
    lwz     r3, -0x4(r31)
    bl      __OSDoHotReset
branch_0x80346bcc:
    li      r3, -0x20
    bl      __OSMaskInterrupts
    li      r3, 0x400
    bl      __OSUnmaskInterrupts
    bl      OSEnableInterrupts
    b       branch_0x80346be4

branch_0x80346be4:
    b       branch_0x80346be8

branch_0x80346be8:
    lwz     r0, -0x59f0(r13)
    cmpwi   r0, 0x0
    beq+    branch_0x80346be8
    mr      r4, r30
    addi    r3, sp, 0x40
    li      r5, 0x20
    li      r6, 0x2440
    li      r7, 0x0
    bl      DVDReadAbsAsyncForBS
    lis     r31, 0x8180
    b       branch_0x80346c14

branch_0x80346c14:
    b       branch_0x80346c18

branch_0x80346c18:
    lwz     r0, 0x4c(sp)
    cmpwi   r0, 0x1
    beq+    branch_0x80346c18
    bge-    branch_0x80346c38
    cmpwi   r0, -0x1
    beq-    branch_0x80346c44
    bge-    branch_0x80346c50
    b       branch_0x80346c18

branch_0x80346c38:
    cmpwi   r0, 0xc
    bge+    branch_0x80346c18
    b       branch_0x80346c44

branch_0x80346c44:
    lwz     r3, -0x4(r31)
    bl      __OSDoHotReset
    b       branch_0x80346c18

branch_0x80346c50:
    lwz     r3, 0x18(r30)
    lwz     r4, 0x14(r30)
    addi    r0, r3, 0x1f
    addi    r4, r4, 0x20
    clrrwi  r30, r0, 5
    b       branch_0x80346c68

branch_0x80346c68:
    b       branch_0x80346c6c

branch_0x80346c6c:
    lwz     r0, -0x59f0(r13)
    cmpwi   r0, 0x0
    beq+    branch_0x80346c6c
    mr      r5, r30
    addi    r3, sp, 0x10
    addi    r6, r4, 0x2440
    lis     r4, 0x8130
    li      r7, 0x0
    bl      DVDReadAbsAsyncForBS
    lis     r31, 0x8180
    b       branch_0x80346c98

branch_0x80346c98:
    b       branch_0x80346c9c

branch_0x80346c9c:
    lwz     r0, 0x1c(sp)
    cmpwi   r0, 0x1
    beq+    branch_0x80346c9c
    bge-    branch_0x80346cbc
    cmpwi   r0, -0x1
    beq-    branch_0x80346cc8
    bge-    branch_0x80346cd4
    b       branch_0x80346c9c

branch_0x80346cbc:
    cmpwi   r0, 0xc
    bge+    branch_0x80346c9c
    b       branch_0x80346cc8

branch_0x80346cc8:
    lwz     r3, -0x4(r31)
    bl      __OSDoHotReset
    b       branch_0x80346c9c

branch_0x80346cd4:
    lis     r3, 0x8130
    mr      r4, r30
    bl      ICInvalidateRange
    lis     r3, 0x8130
    bl      Run
    lwz     r0, 0x344(sp)
    lwz     r31, 0x33c(sp)
    lwz     r30, 0x338(sp)
    addi    sp, sp, 0x340
    mtlr    r0
    blr

