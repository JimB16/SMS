
.globl __dt__17TMarioPositionObjFv
__dt__17TMarioPositionObjFv: # 0x80280e1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80280e74
    lis     r3, 0x803e
    subi    r0, r3, 0x14c8
    stw     r0, 0x0(r30)
    beq-    branch_0x80280e64
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80280e64:
    extsh.  r0, r31
    ble-    branch_0x80280e74
    mr      r3, r30
    bl      __dl__FPv
branch_0x80280e74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__17TMarioPositionObjFUlPQ26JDrama9TGraphics
perform__17TMarioPositionObjFUlPQ26JDrama9TGraphics: # 0x80280e90
    blr


.globl load__17TMarioPositionObjFR20JSUMemoryInputStream
load__17TMarioPositionObjFR20JSUMemoryInputStream: # 0x80280e94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stmw    r20, 0xa0(sp)
    addi    r20, r3, 0x0
    addi    r24, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r26, r24, 0x0
    addi    r29, r24, 0x0
    addi    r25, r24, 0x0
    addi    r28, r24, 0x0
    addi    r27, r24, 0x0
    addi    r23, sp, 0x44
    addi    r22, sp, 0x48
    li      r21, 0x0
    li      r31, 0x0
    b       branch_0x80280f84

branch_0x80280ed8:
    addi    r3, r24, 0x0
    addi    r4, sp, 0x4c
    li      r5, 0x50
    bl      readString__14JSUInputStreamFPcUs
    add     r30, r20, r31
    addi    r3, r24, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r26, 0x0
    addi    r4, r30, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r24, 0x0
    addi    r4, r30, 0x70
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r25, 0x0
    addi    r4, r30, 0x74
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r28, 0x0
    addi    r4, r30, 0x78
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r24, 0x0
    addi    r4, sp, 0x40
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r24, 0x0
    addi    r4, r23, 0x0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r27, 0x0
    addi    r4, r22, 0x0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r21, r21, 0x1
    addi    r31, r31, 0xc
branch_0x80280f84:
    cmplwi  r21, 0x8
    bge-    branch_0x80280fc0
    mr      r3, r24
    lwz     r12, 0x0(r24)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x24
    addi    r3, r24, 0x0
    lwz     r12, 0x0(r24)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    cmplw   r3, r30
    bgt+    branch_0x80280ed8
branch_0x80280fc0:
    stw     r21, 0xd0(r20)
    lmw     r20, 0xa0(sp)
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl getPosition__20JSUMemoryInputStreamCFv
getPosition__20JSUMemoryInputStreamCFv: # 0x80280fd8
    lwz     r3, 0x10(r3)
    blr


.globl getLength__20JSUMemoryInputStreamCFv
getLength__20JSUMemoryInputStreamCFv: # 0x80280fe0
    lwz     r3, 0xc(r3)
    blr
