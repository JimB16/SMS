
.globl preEntry__12TMarDirectorFP12TPerformList
preEntry__12TMarDirectorFP12TPerformList: # 0x8029c1a4
    mflr    r0
    lis     r5, unk_803a2cd0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stmw    r25, 0xcc(sp)
    addi    r30, r5, unk_803a2cd0@l
    addi    r31, r3, 0x0
    addi    r3, r30, 0x54
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x54
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x6c
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x6c
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r27, r3, 0x0
    addi    r3, r30, 0x80
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x80
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r26, r3, 0x0
    addi    r3, r30, 0x90
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x90
    mtlr    r12
    blrl
    addi    r25, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x4
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x9c
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0xac
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0xbc
    li      r5, 0x204
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0xc8
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0xd8
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x204
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x204
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0xe8
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x108
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    lis     r4, unk_04000200@h
    addi    r3, r31, 0x0
    addi    r5, r4, unk_04000200@l
    addi    r4, r2, R2Off_m0x560
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x128
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x148
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    lis     r4, unk_02000200@h
    addi    r3, r31, 0x0
    addi    r5, r4, unk_02000200@l
    addi    r4, r2, R2Off_m0x560
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x168
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x17c
    li      r5, 0x204
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18c
    li      r5, 0x400
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1a0
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1b0
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1c0
    li      r5, 0x204
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1d8
    li      r5, 0x204
    bl      push_back__12TPerformListFPCcUl
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8029c410
    addi    r3, sp, 0xb8
    bl      SMSGetRederRect_Game__Fv
    addi    r3, r26, 0x0
    addi    r4, sp, 0xb8
    addi    r5, r30, 0x1e8
    bl      __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
branch_0x8029c410:
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x8
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1f8
    li      r5, 0x4
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x208
    li      r5, 0x4
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x21c
    li      r5, 0x4
    bl      push_back__12TPerformListFPCcUl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x234
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x234
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r26, r3, 0x0
    beq-    branch_0x8029c4bc
    addi    r3, r31, 0x0
    addi    r4, r30, 0x24c
    li      r5, 0x480
    bl      push_back__12TPerformListFPCcUl
    lis     r5, unk_40000204@h
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r5, unk_40000204@l
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
branch_0x8029c4bc:
    addi    r3, r31, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x10
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x4
    bl      push_back__12TPerformListFPQ26JDrama8TViewObjUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x260
    lis     r5, 0x1000
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x260
    li      r5, 0x204
    bl      push_back__12TPerformListFPCcUl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x260
    lis     r5, 0x800
    bl      push_back__12TPerformListFPCcUl
    lmw     r25, 0xcc(sp)
    lwz     r0, 0xec(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr

