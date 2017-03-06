
.globl FormatCallback
FormatCallback: # 0x80358a6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x8040
    stw     r29, 0x14(sp)
    mulli   r5, r30, 0x110
    stw     r28, 0x10(sp)
    addi    r0, r3, 0x3460
    mr.     r28, r4
    add     r31, r0, r5
    blt-    branch_0x80358b64
    lwz     r3, 0x28(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x28(r31)
    lwz     r4, 0x28(r31)
    cmpwi   r4, 0x5
    bge-    branch_0x80358ae0
    lwz     r0, 0xc(r31)
    lis     r3, 0x8036
    subi    r5, r3, 0x7594
    mullw   r4, r0, r4
    addi    r3, r30, 0x0
    bl      __CARDEraseSector
    mr.     r28, r3
    blt-    branch_0x80358b64
    b       branch_0x80358b90

branch_0x80358ae0:
    cmpwi   r4, 0xa
    bge-    branch_0x80358b20
    lwz     r0, 0xc(r31)
    subi    r6, r4, 0x5
    lis     r3, 0x8036
    lwz     r5, 0x80(r31)
    mullw   r4, r0, r6
    slwi    r0, r6, 13
    subi    r7, r3, 0x7594
    add     r6, r5, r0
    addi    r3, r30, 0x0
    li      r5, 0x2000
    bl      __CARDWrite
    mr.     r28, r3
    blt-    branch_0x80358b64
    b       branch_0x80358b90

branch_0x80358b20:
    lwz     r3, 0x80(r31)
    li      r5, 0x2000
    addi    r0, r3, 0x2000
    stw     r0, 0x84(r31)
    lwz     r4, 0x80(r31)
    lwz     r3, 0x84(r31)
    addi    r4, r4, 0x4000
    bl      memcpy
    lwz     r3, 0x80(r31)
    li      r5, 0x2000
    addi    r0, r3, 0x6000
    stw     r0, 0x88(r31)
    lwz     r4, 0x80(r31)
    lwz     r3, 0x88(r31)
    addis   r4, r4, 0x1
    subi    r4, r4, 0x8000
    bl      memcpy
branch_0x80358b64:
    lwz     r29, 0xd0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0xd0(r31)
    mr      r4, r28
    bl      __CARDPutControlBlock
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    blrl
branch_0x80358b90:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __CARDFormatRegionAsync
__CARDFormatRegionAsync: # 0x80358bb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r18, 0x20(sp)
    addi    r20, r4, 0x0
    addi    r22, r3, 0x0
    addi    r19, r5, 0x0
    addi    r4, sp, 0x18
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x80358be0
    b       branch_0x803591f4

branch_0x80358be0:
    lwz     r3, 0x18(sp)
    li      r4, 0xff
    li      r5, 0x2000
    lwz     r27, 0x80(r3)
    mr      r3, r27
    bl      memset
    lis     r3, 0xcc00
    lhz     r18, 0x206e(r3)
    sth     r20, 0x24(r27)
    bl      __OSLockSram
    lwz     r0, 0xc(r3)
    stw     r0, 0x14(r27)
    lbz     r0, 0x12(r3)
    li      r3, 0x0
    stw     r0, 0x18(r27)
    bl      __OSUnlockSram
    bl      OSGetTime
    addi    r21, r4, 0x0
    addi    r20, r3, 0x0
    addi    r26, r21, 0x0
    addi    r30, r20, 0x0
    bl      __OSLockSramEx
    mulli   r0, r22, 0xc
    add     r25, r3, r0
    lis     r3, 0x41c6
    addi    r24, r25, 0x0
    addi    r31, r3, 0x4e6d
    li      r28, 0x0
    li      r23, 0x4
    b       branch_0x80358fc8

branch_0x80358c58:
    mullw   r5, r30, r31
    mulhwu  r3, r26, r31
    li      r30, 0x0
    add     r5, r5, r3
    mullw   r3, r26, r30
    mullw   r0, r26, r31
    li      r29, 0x3039
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    lbz     r0, 0x0(r24)
    mulhwu  r5, r4, r31
    add     r6, r6, r5
    addc    r8, r4, r0
    extsh   r7, r28
    mullw   r5, r4, r30
    stbx    r8, r27, r7
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    li      r26, 0x7fff
    and     r0, r3, r30
    and     r4, r4, r26
    mullw   r5, r0, r31
    mulhwu  r3, r4, r31
    add     r5, r5, r3
    mullw   r3, r4, r30
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    mulhwu  r5, r4, r31
    addi    r9, r28, 0x1
    extsh   r9, r9
    lbzx    r0, r25, r9
    add     r6, r6, r5
    mullw   r5, r4, r30
    addc    r7, r4, r0
    mullw   r0, r4, r31
    stbx    r7, r27, r9
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    and     r0, r3, r30
    and     r4, r4, r26
    mullw   r5, r0, r31
    mulhwu  r3, r4, r31
    add     r5, r5, r3
    mullw   r3, r4, r30
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    mulhwu  r5, r4, r31
    addi    r9, r28, 0x2
    extsh   r9, r9
    lbzx    r0, r25, r9
    add     r6, r6, r5
    mullw   r5, r4, r30
    addc    r7, r4, r0
    mullw   r0, r4, r31
    stbx    r7, r27, r9
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    and     r0, r3, r30
    and     r4, r4, r26
    mullw   r5, r0, r31
    mulhwu  r3, r4, r31
    add     r5, r5, r3
    mullw   r3, r4, r30
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    mulhwu  r5, r4, r31
    addi    r9, r28, 0x3
    extsh   r9, r9
    lbzx    r0, r25, r9
    add     r6, r6, r5
    mullw   r5, r4, r30
    addc    r7, r4, r0
    mullw   r0, r4, r31
    stbx    r7, r27, r9
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    and     r0, r3, r30
    and     r4, r4, r26
    mullw   r5, r0, r31
    mulhwu  r3, r4, r31
    add     r5, r5, r3
    mullw   r3, r4, r30
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    mulhwu  r5, r4, r31
    addi    r9, r28, 0x4
    extsh   r9, r9
    lbzx    r0, r25, r9
    add     r6, r6, r5
    mullw   r5, r4, r30
    addc    r7, r4, r0
    mullw   r0, r4, r31
    stbx    r7, r27, r9
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    and     r0, r3, r30
    and     r4, r4, r26
    mullw   r5, r0, r31
    mulhwu  r3, r4, r31
    add     r5, r5, r3
    mullw   r3, r4, r30
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    mulhwu  r5, r4, r31
    addi    r9, r28, 0x5
    extsh   r9, r9
    lbzx    r0, r25, r9
    add     r6, r6, r5
    mullw   r5, r4, r30
    addc    r7, r4, r0
    mullw   r0, r4, r31
    stbx    r7, r27, r9
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    and     r0, r3, r30
    and     r4, r4, r26
    mullw   r5, r0, r31
    mulhwu  r3, r4, r31
    add     r5, r5, r3
    mullw   r3, r4, r30
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    mulhwu  r5, r4, r31
    addi    r9, r28, 0x6
    extsh   r9, r9
    lbzx    r0, r25, r9
    add     r6, r6, r5
    mullw   r5, r4, r30
    addc    r7, r4, r0
    mullw   r0, r4, r31
    stbx    r7, r27, r9
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    and     r0, r3, r30
    and     r4, r4, r26
    mullw   r5, r0, r31
    mulhwu  r3, r4, r31
    add     r5, r5, r3
    mullw   r3, r4, r30
    mullw   r0, r4, r31
    addc    r4, r0, r29
    add     r0, r5, r3
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r31
    mulhwu  r5, r4, r31
    addi    r9, r28, 0x7
    extsh   r9, r9
    lbzx    r0, r25, r9
    add     r6, r6, r5
    mullw   r5, r4, r30
    addc    r7, r4, r0
    mullw   r0, r4, r31
    stbx    r7, r27, r9
    addc    r4, r0, r29
    add     r0, r6, r5
    adde    r3, r0, r30
    li      r5, 0x10
    bl      __shr2i
    and     r26, r4, r26
    and     r30, r3, r30
    addi    r24, r24, 0x8
    addi    r28, r28, 0x8
branch_0x80358fc8:
    extsh   r0, r28
    cmpw    r0, r23
    blt+    branch_0x80358c58
    b       branch_0x803591ec

branch_0x80358fd8:
    lis     r3, 0x41c6
    addi    r25, r3, 0x4e6d
    b       branch_0x80359060

branch_0x80358fe4:
    mullw   r5, r30, r25
    mulhwu  r3, r26, r25
    li      r24, 0x0
    add     r5, r5, r3
    mullw   r3, r26, r24
    mullw   r0, r26, r25
    li      r23, 0x3039
    addc    r4, r0, r23
    add     r0, r5, r3
    adde    r3, r0, r24
    li      r5, 0x10
    bl      __shr2i
    mullw   r6, r3, r25
    lbz     r0, 0x0(r29)
    mulhwu  r5, r4, r25
    add     r6, r6, r5
    addc    r8, r4, r0
    extsh   r7, r28
    mullw   r5, r4, r24
    stbx    r8, r27, r7
    mullw   r0, r4, r25
    addc    r4, r0, r23
    add     r0, r6, r5
    adde    r3, r0, r24
    li      r5, 0x10
    bl      __shr2i
    li      r0, 0x7fff
    and     r26, r4, r0
    and     r30, r3, r24
    addi    r29, r29, 0x1
    addi    r28, r28, 0x1
branch_0x80359060:
    extsh   r0, r28
    cmpwi   r0, 0xc
    blt+    branch_0x80358fe4
    li      r3, 0x0
    bl      __OSUnlockSramEx
    stw     r18, 0x1c(r27)
    li      r18, 0x0
    addi    r3, r27, 0x0
    stw     r21, 0x10(r27)
    addi    r5, r27, 0x1fc
    addi    r6, r27, 0x1fe
    stw     r20, 0xc(r27)
    li      r4, 0x1fc
    sth     r18, 0x20(r27)
    lwz     r7, 0x18(sp)
    lhz     r0, 0x8(r7)
    sth     r0, 0x22(r27)
    bl      __CARDCheckSum
    b       branch_0x803590f4

branch_0x803590ac:
    lwz     r4, 0x18(sp)
    extsh   r3, r18
    addi    r0, r3, 0x1
    lwz     r3, 0x80(r4)
    slwi    r0, r0, 13
    li      r4, 0xff
    add     r20, r3, r0
    addi    r3, r20, 0x0
    li      r5, 0x2000
    bl      memset
    addi    r4, r20, 0x1fc0
    sth     r18, 0x1ffa(r20)
    addi    r3, r20, 0x0
    addi    r5, r4, 0x3c
    addi    r6, r4, 0x3e
    li      r4, 0x1ffc
    bl      __CARDCheckSum
    addi    r18, r18, 0x1
branch_0x803590f4:
    extsh   r0, r18
    cmpwi   r0, 0x2
    blt+    branch_0x803590ac
    li      r18, 0x0
    b       branch_0x80359164

branch_0x80359108:
    lwz     r4, 0x18(sp)
    extsh   r3, r18
    addi    r0, r3, 0x3
    lwz     r3, 0x80(r4)
    slwi    r0, r0, 13
    li      r4, 0x0
    add     r20, r3, r0
    addi    r3, r20, 0x0
    li      r5, 0x2000
    bl      memset
    sth     r18, 0x4(r20)
    li      r0, 0x4
    addi    r5, r20, 0x0
    lwz     r4, 0x18(sp)
    addi    r3, r20, 0x4
    addi    r6, r20, 0x2
    lhz     r7, 0x10(r4)
    li      r4, 0x1ffc
    subi    r7, r7, 0x5
    sth     r7, 0x6(r20)
    sth     r0, 0x8(r20)
    bl      __CARDCheckSum
    addi    r18, r18, 0x1
branch_0x80359164:
    extsh   r0, r18
    cmpwi   r0, 0x2
    blt+    branch_0x80359108
    cmplwi  r19, 0x0
    beq-    branch_0x80359180
    mr      r0, r19
    b       branch_0x80359188

branch_0x80359180:
    lis     r3, 0x8035
    addi    r0, r3, 0x432c
branch_0x80359188:
    lwz     r5, 0x18(sp)
    lis     r3, 0x1
    subi    r4, r3, 0x6000
    stw     r0, 0xd0(r5)
    lwz     r3, 0x18(sp)
    lwz     r3, 0x80(r3)
    bl      DCStoreRange
    lwz     r4, 0x18(sp)
    li      r0, 0x0
    lis     r3, 0x8036
    stw     r0, 0x28(r4)
    subi    r5, r3, 0x7594
    addi    r3, r22, 0x0
    lwz     r6, 0x18(sp)
    lwz     r4, 0xc(r6)
    lwz     r0, 0x28(r6)
    mullw   r4, r4, r0
    bl      __CARDEraseSector
    mr.     r18, r3
    bge-    branch_0x803591e4
    lwz     r3, 0x18(sp)
    mr      r4, r18
    bl      __CARDPutControlBlock
branch_0x803591e4:
    mr      r3, r18
    b       branch_0x803591f4

branch_0x803591ec:
    add     r29, r25, r0
    b       branch_0x80358fd8

branch_0x803591f4:
    lmw     r18, 0x20(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl CARDFormat
CARDFormat: # 0x80359208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSGetFontEncode
    lis     r5, 0x8035
    addi    r4, r3, 0x0
    addi    r5, r5, 0x4330
    addi    r3, r31, 0x0
    bl      __CARDFormatRegionAsync
    cmpwi   r3, 0x0
    bge-    branch_0x80359240
    b       branch_0x80359248

branch_0x80359240:
    mr      r3, r31
    bl      __CARDSync
branch_0x80359248:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

