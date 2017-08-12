
.globl create__13JKRAramStreamFl
create__13JKRAramStreamFl: # 0x802f0cf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x5df8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802f0d44
    lwz     r4, R13Off_m0x5f30(r13)
    li      r3, 0x60
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802f0d30
    mr      r4, r31
    bl      __ct__13JKRAramStreamFl
branch_0x802f0d30:
    stw     r3, R13Off_m0x5df8(r13)
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
branch_0x802f0d44:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r3, R13Off_m0x5df8(r13)
    mtlr    r0
    blr


.globl __ct__13JKRAramStreamFl
__ct__13JKRAramStreamFl: # 0x802f0d5c
    mflr    r0
    mr      r6, r4
    stw     r0, 0x4(sp)
    li      r4, 0x4000
    li      r5, 0x10
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9JKRThreadFUlii
    lis     r3, __vvt__13JKRAramStream@h
    lwz     r31, 0x8(sp)
    addi    r0, r3, __vvt__13JKRAramStream@l
    stw     r0, 0x0(r31)
    lwz     r3, 0x2c(r31)
    bl      OSResumeThread
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13JKRAramStreamFv
__dt__13JKRAramStreamFv: # 0x802f0db4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f0dfc
    lis     r3, __vvt__13JKRAramStream@h
    addi    r0, r3, __vvt__13JKRAramStream@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__9JKRThreadFv
    extsh.  r0, r31
    ble-    branch_0x802f0dfc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f0dfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl run__13JKRAramStreamFv
run__13JKRAramStreamFv: # 0x802f0e18
    mflr    r0
    lis     r3, sMessageBuffer__13JKRAramStream@h
    stw     r0, 0x4(sp)
    li      r5, 0x4
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, sMessageBuffer__13JKRAramStream@l
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10
    bl      OSInitMessageQueue
branch_0x802f0e40:
    addi    r3, r31, 0x10
    addi    r4, sp, 0xc
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r3, 0xc(sp)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x802f0e78
    bge+    branch_0x802f0e40
    cmpwi   r0, 0x1
    bge-    branch_0x802f0e70
    b       branch_0x802f0e40

branch_0x802f0e70:
    bl      readFromAram__13JKRAramStreamFv
    b       branch_0x802f0e40

branch_0x802f0e78:
    bl      writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
    b       branch_0x802f0e40


.globl readFromAram__13JKRAramStreamFv
readFromAram__13JKRAramStreamFv: # 0x802f0e80
    li      r3, 0x1
    blr


.globl writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
writeToAram__13JKRAramStreamFP20JKRAramStreamCommand: # 0x802f0e88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    mr      r26, r3
    li      r29, 0x0
    lwz     r0, 0x18(r3)
    lwz     r31, 0x8(r3)
    cmplwi  r0, 0x0
    lwz     r30, 0x14(r3)
    mr      r24, r0
    lwz     r28, 0x4(r3)
    lwz     r0, 0x1c(r3)
    lwz     r27, 0x20(r3)
    beq-    branch_0x802f0eec
    cmplwi  r0, 0x0
    bne-    branch_0x802f0ed8
    lis     r3, unk_00008000@ha
    addi    r25, r3, unk_00008000@l
    b       branch_0x802f0edc

branch_0x802f0ed8:
    mr      r25, r0
branch_0x802f0edc:
    stw     r25, 0x1c(r26)
    li      r0, 0x0
    stb     r0, 0x24(r26)
    b       branch_0x802f0f4c

branch_0x802f0eec:
    cmplwi  r0, 0x0
    bne-    branch_0x802f0f00
    lis     r3, unk_00008000@ha
    addi    r25, r3, unk_00008000@l
    b       branch_0x802f0f04

branch_0x802f0f00:
    mr      r25, r0
branch_0x802f0f04:
    cmplwi  r27, 0x0
    beq-    branch_0x802f0f28
    addi    r3, r25, 0x0
    addi    r5, r27, 0x0
    li      r4, -0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x18(r26)
    mr      r24, r3
    b       branch_0x802f0f40

branch_0x802f0f28:
    addi    r3, r25, 0x0
    li      r4, -0x20
    li      r5, 0x0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x18(r26)
    mr      r24, r3
branch_0x802f0f40:
    stw     r25, 0x1c(r26)
    li      r0, 0x1
    stb     r0, 0x24(r26)
branch_0x802f0f4c:
    cmplwi  r24, 0x0
    bne-    branch_0x802f0fa0
    cmplwi  r27, 0x0
    bne-    branch_0x802f0f74
    lwz     r3, R13Off_m0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    b       branch_0x802f0f88

branch_0x802f0f74:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
branch_0x802f0f88:
    lis     r3, unk_803aa110@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_803aa110@l
    li      r4, 0xa9
    addi    r5, r2, R2Off_0x368
    bl      OSPanic
branch_0x802f0fa0:
    cmplwi  r24, 0x0
    beq-    branch_0x802f1030
    lwz     r3, 0x10(r26)
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
    b       branch_0x802f1008

branch_0x802f0fbc:
    cmplw   r31, r25
    ble-    branch_0x802f0fcc
    mr      r27, r25
    b       branch_0x802f0fd0

branch_0x802f0fcc:
    mr      r27, r31
branch_0x802f0fd0:
    lwz     r3, 0x10(r26)
    addi    r4, r24, 0x0
    addi    r5, r27, 0x0
    bl      read__14JSUInputStreamFPvl
    addi    r4, r24, 0x0
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    li      r3, 0x0
    li      r7, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    subf    r31, r27, r31
    add     r30, r30, r27
    add     r29, r29, r27
    add     r28, r28, r27
branch_0x802f1008:
    cmplwi  r31, 0x0
    bne+    branch_0x802f0fbc
    lbz     r0, 0x24(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x802f1030
    addi    r3, r24, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r0, 0x0
    stb     r0, 0x24(r26)
branch_0x802f1030:
    addi    r4, r29, 0x0
    addi    r3, r26, 0x2c
    li      r5, 0x0
    bl      OSSendMessage
    mr      r3, r29
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUl
write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUl: # 0x802f1058
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    addi    r28, r4, 0x0
    addi    r30, r6, 0x0
    li      r3, 0x58
    li      r5, -0x4
    lwz     r0, R13Off_m0x5f30(r13)
    mr      r4, r0
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x802f10a0
    mr      r3, r31
    bl      __ct__20JKRAramStreamCommandFv
    mr      r31, r3
branch_0x802f10a0:
    li      r0, 0x2
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x2c
    stw     r28, 0x4(r31)
    addi    r4, r31, 0x4c
    li      r5, 0x1
    stw     r29, 0x8(r31)
    stw     r27, 0x10(r31)
    stw     r0, 0x28(r31)
    stw     r30, 0x14(r31)
    lwz     r0, R13Off_m0x5df4(r13)
    stw     r0, 0x18(r31)
    lwz     r0, R13Off_m0x5dec(r13)
    stw     r0, 0x20(r31)
    lwz     r0, R13Off_m0x5df0(r13)
    stw     r0, 0x1c(r31)
    bl      OSInitMessageQueue
    lis     r3, sMessageQueue__13JKRAramStream@h
    addi    r3, r3, sMessageQueue__13JKRAramStream@l
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      OSSendMessage
    mr      r3, r31
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl sync__13JKRAramStreamFP20JKRAramStreamCommandi
sync__13JKRAramStreamFP20JKRAramStreamCommandi: # 0x802f1114
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x802f115c
    addi    r3, r31, 0x2c
    addi    r4, sp, 0x10
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r0, 0x10(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x802f1154
    li      r3, 0x0
    b       branch_0x802f1194

branch_0x802f1154:
    mr      r3, r31
    b       branch_0x802f1194

branch_0x802f115c:
    addi    r3, r31, 0x2c
    addi    r4, sp, 0x10
    li      r5, 0x0
    bl      OSReceiveMessage
    cmpwi   r3, 0x0
    bne-    branch_0x802f117c
    li      r3, 0x0
    b       branch_0x802f1194

branch_0x802f117c:
    lwz     r0, 0x10(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x802f1190
    li      r3, 0x0
    b       branch_0x802f1194

branch_0x802f1190:
    mr      r3, r31
branch_0x802f1194:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap: # 0x802f11a8
    lis     r6, unk_00008000@ha
    li      r7, 0x0
    addi    r0, r6, unk_00008000@l
    stw     r7, R13Off_m0x5df4(r13)
    cmplwi  r3, 0x0
    stw     r0, R13Off_m0x5df0(r13)
    stw     r7, R13Off_m0x5dec(r13)
    beq-    branch_0x802f11d4
    addi    r0, r3, 0x1f
    clrrwi  r0, r0, 5
    stw     r0, R13Off_m0x5df4(r13)
branch_0x802f11d4:
    cmplwi  r4, 0x0
    beq-    branch_0x802f11e4
    clrrwi  r0, r4, 5
    stw     r0, R13Off_m0x5df0(r13)
branch_0x802f11e4:
    cmplwi  r5, 0x0
    beqlr-    

    cmplwi  r3, 0x0
    bnelr-    

    stw     r5, R13Off_m0x5dec(r13)
    blr


.globl __ct__20JKRAramStreamCommandFv
__ct__20JKRAramStreamCommandFv: # 0x802f11fc
    li      r0, 0x0
    stb     r0, 0x24(r3)
    blr

