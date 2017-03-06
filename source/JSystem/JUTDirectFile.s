
.globl __ct__13JUTDirectFileFv
__ct__13JUTDirectFileFv: # 0x802f67f8
    li      r4, 0x0
    stw     r4, 0x828(r3)
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    stw     r4, 0x82c(r3)
    stw     r4, 0x824(r3)
    stw     r0, 0x820(r3)
    stb     r4, 0x830(r3)
    blr


.globl __dt__13JUTDirectFileFv
__dt__13JUTDirectFileFv: # 0x802f681c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802f684c
    li      r3, 0x0
    extsh.  r0, r4
    stb     r3, 0x830(r31)
    ble-    branch_0x802f684c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802f684c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl fopen__13JUTDirectFileFPc
fopen__13JUTDirectFileFPc: # 0x802f6864
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr.     r31, r4
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x802f6890
    li      r3, 0x0
    b       branch_0x802f68ec

branch_0x802f6890:
    bl      OSEnableInterrupts
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r29, 0x834
    bl      DVDOpen
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      OSRestoreInterrupts
    cmpwi   r31, 0x0
    bne-    branch_0x802f68c8
    li      r0, 0x0
    stb     r0, 0x830(r29)
    li      r3, 0x0
    b       branch_0x802f68ec

branch_0x802f68c8:
    bl      OSEnableInterrupts
    lwz     r0, 0x868(r29)
    stw     r0, 0x828(r29)
    bl      OSRestoreInterrupts
    li      r0, 0x0
    stw     r0, 0x82c(r29)
    li      r0, 0x1
    li      r3, 0x1
    stb     r0, 0x830(r29)
branch_0x802f68ec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl fclose__13JUTDirectFileFv
fclose__13JUTDirectFileFv: # 0x802f6908
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lbz     r0, 0x830(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802f694c
    bl      OSEnableInterrupts
    addi    r31, r3, 0x0
    addi    r3, r30, 0x834
    bl      DVDClose
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r0, 0x0
    stb     r0, 0x830(r30)
branch_0x802f694c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl fgets__13JUTDirectFileFPvi
fgets__13JUTDirectFileFPvi: # 0x802f6964
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    mr      r28, r3
    addi    r29, r5, 0x0
    lbz     r0, 0x830(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802f6990
    li      r3, -0x1
    b       branch_0x802f6b88

branch_0x802f6990:
    cmpwi   r29, 0x0
    bne-    branch_0x802f69a0
    li      r3, 0x0
    b       branch_0x802f6b88

branch_0x802f69a0:
    cmpwi   r29, 0x1
    bne-    branch_0x802f69b0
    li      r3, 0x1
    b       branch_0x802f6b88

branch_0x802f69b0:
    cmplwi  r4, 0x0
    bne-    branch_0x802f69c0
    li      r3, -0x1
    b       branch_0x802f6b88

branch_0x802f69c0:
    lwz     r3, 0x82c(r28)
    lwz     r0, 0x828(r28)
    cmplw   r3, r0
    blt-    branch_0x802f69d8
    li      r3, -0x1
    b       branch_0x802f6b88

branch_0x802f69d8:
    addi    r31, r4, 0x0
    li      r30, 0x0
    b       branch_0x802f6b58

branch_0x802f69e4:
    lwz     r0, 0x824(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x802f6a90
    clrrwi  r0, r3, 5
    subf    r0, r0, r4
    stw     r0, 0x824(r28)
    lwz     r0, 0x824(r28)
    cmplwi  r0, 0x800
    ble-    branch_0x802f6a10
    li      r0, 0x800
    stw     r0, 0x824(r28)
branch_0x802f6a10:
    bl      OSEnableInterrupts
    lwz     r4, 0x824(r28)
    addi    r25, r3, 0x0
    lwz     r0, 0x82c(r28)
    addi    r3, r28, 0x834
    addi    r5, r4, 0x1f
    lwz     r4, 0x820(r28)
    clrrwi  r5, r5, 5
    clrrwi  r6, r0, 5
    li      r7, 0x0
    li      r8, 0x2
    bl      DVDReadAsyncPrio
    addi    r26, r3, 0x0
    addi    r3, r25, 0x0
    bl      OSRestoreInterrupts
    cmpwi   r26, 0x0
    bne-    branch_0x802f6a5c
    li      r0, -0x1
    b       branch_0x802f6a80

branch_0x802f6a5c:
    bl      OSEnableInterrupts
    mr      r25, r3
branch_0x802f6a64:
    addi    r3, r28, 0x834
    bl      DVDGetCommandBlockStatus
    cmpwi   r3, 0x0
    bne+    branch_0x802f6a64
    mr      r3, r25
    bl      OSRestoreInterrupts
    lwz     r0, 0x824(r28)
branch_0x802f6a80:
    cmpwi   r0, 0x0
    bge-    branch_0x802f6a90
    li      r3, -0x1
    b       branch_0x802f6b88

branch_0x802f6a90:
    lwz     r3, 0x82c(r28)
    lwz     r0, 0x824(r28)
    clrlwi  r3, r3, 21
    subf    r4, r3, r0
    add     r0, r30, r4
    cmplw   r0, r27
    addi    r5, r3, 0x0
    ble-    branch_0x802f6ab8
    subf    r3, r30, r29
    subi    r4, r3, 0x1
branch_0x802f6ab8:
    cmplwi  r4, 0x0
    mtctr   r4
    li      r6, 0x0
    li      r7, 0x0
    ble-    branch_0x802f6b00
branch_0x802f6acc:
    lwz     r3, 0x820(r28)
    mr      r0, r5
    addi    r5, r5, 0x1
    lbzx    r0, r3, r0
    cmpwi   r0, 0xa
    stb     r0, 0x0(r31)
    addi    r31, r31, 0x1
    bne-    branch_0x802f6af8
    addi    r4, r7, 0x1
    li      r6, 0x1
    b       branch_0x802f6b00

branch_0x802f6af8:
    addi    r7, r7, 0x1
    bdnz+      branch_0x802f6acc
branch_0x802f6b00:
    cmplwi  r5, 0x800
    blt-    branch_0x802f6b10
    li      r0, 0x0
    stw     r0, 0x824(r28)
branch_0x802f6b10:
    cmpwi   r6, 0x1
    bne-    branch_0x802f6b34
    li      r0, 0x0
    stb     r0, 0x0(r31)
    add     r30, r30, r4
    lwz     r0, 0x82c(r28)
    add     r0, r0, r4
    stw     r0, 0x82c(r28)
    b       branch_0x802f6b6c

branch_0x802f6b34:
    lwz     r0, 0x82c(r28)
    add     r30, r30, r4
    cmpw    r30, r27
    add     r0, r0, r4
    stw     r0, 0x82c(r28)
    blt-    branch_0x802f6b5c
    li      r0, 0x0
    stb     r0, 0x0(r31)
    b       branch_0x802f6b6c

branch_0x802f6b58:
    subi    r27, r29, 0x1
branch_0x802f6b5c:
    lwz     r3, 0x82c(r28)
    lwz     r4, 0x828(r28)
    cmplw   r3, r4
    blt+    branch_0x802f69e4
branch_0x802f6b6c:
    lwz     r3, 0x82c(r28)
    lwz     r0, 0x828(r28)
    cmplw   r3, r0
    blt-    branch_0x802f6b84
    li      r0, 0x0
    stb     r0, 0x0(r31)
branch_0x802f6b84:
    mr      r3, r30
branch_0x802f6b88:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

