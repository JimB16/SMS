
.globl getMessageEntry__14TMessageLoaderFUl
getMessageEntry__14TMessageLoaderFUl: # 0x8015724c
    lhz     r0, 0x0(r3)
    clrlwi  r5, r4, 16
    cmplw   r5, r0
    blt-    branch_0x80157264
    li      r0, 0x0
    b       branch_0x80157270

branch_0x80157264:
    mulli   r4, r4, 0xc
    addi    r0, r4, 0x8
    add     r0, r3, r0
branch_0x80157270:
    mr      r3, r0
    blr


.globl parseBlock__14TMessageLoaderFUlUlPv
parseBlock__14TMessageLoaderFUlUlPv: # 0x80157278
    mflr    r0
    lis     r7, __vvt__10JSUIosBase@ha
    stw     r0, 0x4(sp)
    lis     r9, __vvt__14JSUInputStream@h
    lis     r8, __vvt__20JSURandomInputStream@h
    stwu    sp, -0xb8(sp)
    stmw    r17, 0x7c(sp)
    addi    r0, sp, 0x5c
    addi    r25, r9, __vvt__14JSUInputStream@l
    addi    r26, r8, __vvt__20JSURandomInputStream@l
    addi    r20, r3, 0x0
    addi    r21, r5, 0x0
    stw     r0, 0x54(sp)
    addi    r0, r7, __vvt__10JSUIosBase@l
    lis     r7, __vvt__20JSUMemoryInputStream@h
    lwz     r10, 0x54(sp)
    addi    r27, r7, __vvt__20JSUMemoryInputStream@l
    stw     r0, 0x0(r10)
    li      r0, 0x0
    addi    r3, r10, 0x0
    stb     r0, 0x4(r10)
    addi    r0, r4, 0x0
    addi    r4, r6, 0x0
    stw     r25, 0x0(r10)
    mr      r5, r0
    stw     r26, 0x0(r10)
    stw     r27, 0x0(r10)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lis     r3, unk_53545231@h
    lis     r4, unk_44415431@h
    lis     r5, unk_494e4631@h
    addi    r30, r3, unk_53545231@l
    addi    r29, r4, unk_44415431@l
    addi    r28, r5, unk_494e4631@l
    addi    r31, sp, 0x38
    li      r22, 0x0
    b       branch_0x80157470

branch_0x8015730c:
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x74
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x74(sp)
    cmpw    r0, r28
    beq-    branch_0x80157344
    bge-    branch_0x80157338
    cmpw    r0, r29
    beq-    branch_0x80157428
    b       branch_0x80157454

branch_0x80157338:
    cmpw    r0, r30
    beq-    branch_0x80157448
    b       branch_0x80157454

branch_0x80157344:
    lwz     r3, 0x64(sp)
    lwz     r0, 0x6c(sp)
    add     r18, r3, r0
    lwz     r24, 0x0(r18)
    addi    r18, r18, 0x4
    stw     r31, 0x2c(sp)
    addi    r19, r24, -0x8
    lwz     r17, 0x2c(sp)
    mr      r3, r17
    bl      __ct__10JSUIosBaseFv
    stw     r25, 0x0(r17)
    addi    r3, r17, 0x0
    addi    r4, r18, 0x0
    stw     r26, 0x0(r17)
    mr      r5, r19
    stw     r27, 0x0(r17)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r31, 0x0
    addi    r4, r20, 0x0
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x28
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x28(sp)
    addi    r3, r31, 0x0
    li      r4, 0x2
    sth     r0, 0x2(r20)
    bl      skip__20JSURandomInputStreamFl
    li      r18, 0x0
    addi    r19, r18, 0x0
    b       branch_0x801573f4

branch_0x801573d8:
    addi    r4, r19, 0x8
    addi    r3, sp, 0x38
    add     r4, r20, r4
    li      r5, 0xc
    bl      read__14JSUInputStreamFPvl
    addi    r18, r18, 0x1
    addi    r19, r19, 0xc
branch_0x801573f4:
    lhz     r0, 0x0(r20)
    cmpw    r18, r0
    blt+    branch_0x801573d8
    stw     r27, 0x38(sp)
    addi    r3, sp, 0x38
    li      r4, 0x0
    stw     r26, 0x38(sp)
    bl      __dt__14JSUInputStreamFv
    stw     r24, 0x70(sp)
    addi    r3, sp, 0x5c
    li      r4, 0x4
    bl      skip__20JSURandomInputStreamFl
    b       branch_0x8015745c

branch_0x80157428:
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x70
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x64(sp)
    lwz     r0, 0x6c(sp)
    add     r23, r3, r0
    b       branch_0x8015745c

branch_0x80157448:
    li      r0, 0x0
    stw     r0, 0x70(sp)
    b       branch_0x8015745c

branch_0x80157454:
    li      r0, 0x0
    stw     r0, 0x70(sp)
branch_0x8015745c:
    lwz     r4, 0x70(sp)
    addi    r3, sp, 0x5c
    addi    r4, r4, -0x8
    bl      skip__20JSURandomInputStreamFl
    addi    r22, r22, 0x1
branch_0x80157470:
    cmplw   r22, r21
    blt+    branch_0x8015730c
    lis     r3, __vvt__20JSUMemoryInputStream@h
    addi    r0, r3, __vvt__20JSUMemoryInputStream@l
    lis     r3, __vvt__20JSURandomInputStream@h
    stw     r0, 0x5c(sp)
    addi    r0, r3, __vvt__20JSURandomInputStream@l
    stw     r0, 0x5c(sp)
    addi    r3, sp, 0x5c
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    mr      r3, r23
    lmw     r17, 0x7c(sp)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl __ct__10JSUIosBaseFv
__ct__10JSUIosBaseFv: # 0x801574b4
    lis     r4, __vvt__10JSUIosBase@ha
    addi    r0, r4, __vvt__10JSUIosBase@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stb     r0, 0x4(r3)
    blr


.globl loadMessageData__14TMessageLoaderFPCc
loadMessageData__14TMessageLoaderFPCc: # 0x801574cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r4, r3
    bne-    branch_0x801574f8
    li      r3, -0x1
    b       branch_0x8015752c

branch_0x801574f8:
    lwz     r0, 0x8(r4)
    mr      r3, r31
    lwz     r5, 0xc(r4)
    addi    r6, r4, 0x20
    slwi    r4, r0, 5
    bl      parseBlock__14TMessageLoaderFUlUlPv
    stw     r3, 0x4(r31)
    lwz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80157528
    li      r3, -0x1
    b       branch_0x8015752c

branch_0x80157528:
    lhz     r3, 0x2(r31)
branch_0x8015752c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14TMessageLoaderFPCc
__ct__14TMessageLoaderFPCc: # 0x80157540
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    sth     r0, 0x0(r3)
    mr      r3, r4
    stw     r0, 0x4(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r4, r3
    beq-    branch_0x80157594
    lwz     r0, 0x8(r4)
    mr      r3, r31
    lwz     r5, 0xc(r4)
    addi    r6, r4, 0x20
    slwi    r4, r0, 5
    bl      parseBlock__14TMessageLoaderFUlUlPv
    stw     r3, 0x4(r31)
    lwz     r0, 0x4(r31)
    cmplwi  r0, 0x0
branch_0x80157594:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__14TMessageLoaderFv
__ct__14TMessageLoaderFv: # 0x801575ac
    li      r0, 0x0
    sth     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr

