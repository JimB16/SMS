
.globl searchF__Q26JDrama9TDirectorFUsPCc
searchF__Q26JDrama9TDirectorFUsPCc: # 0x802f7c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802f7ca8
    b       branch_0x802f7d0c

branch_0x802f7ca8:
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802f7cd8
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802f7cd8
    b       branch_0x802f7d0c

branch_0x802f7cd8:
    lwz     r3, 0x14(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802f7d08
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802f7d08
    b       branch_0x802f7d0c

branch_0x802f7d08:
    li      r3, 0x0
branch_0x802f7d0c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl direct__Q26JDrama9TDirectorFv
direct__Q26JDrama9TDirectorFv: # 0x802f7d28
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x118(sp)
    li      r7, 0x0
    stw     r31, 0x114(sp)
    stw     r30, 0x110(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x50
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x60
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x70
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x80
    bl      __ct__Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f__Fv
    addi    r3, sp, 0xc0
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    li      r0, -0x1
    stw     r0, 0x100(sp)
    li      r31, 0x0
    li      r0, 0x1
    sth     r31, 0x108(sp)
    addi    r5, sp, 0xc
    li      r4, 0x3
    sth     r0, 0xc(sp)
    lwz     r3, 0x10(r30)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    sth     r31, 0xc(sp)
    addi    r5, sp, 0xc
    li      r4, 0x8
    lwz     r3, 0x14(r30)
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r0, 0x11c(sp)
    li      r3, 0x0
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    mtlr    r0
    addi    sp, sp, 0x118
    blr


.globl JSGFindObject__Q26JDrama9TDirectorCFPCcQ26JStage8TEObject
JSGFindObject__Q26JDrama9TDirectorCFPCcQ26JStage8TEObject: # 0x802f7df0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    mr.     r31, r3
    beq-    branch_0x802f7e88
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x2
    beq-    branch_0x802f7e74
    bge-    branch_0x802f7e88
    cmpwi   r3, 0x1
    bge-    branch_0x802f7e60
    b       branch_0x802f7e88

branch_0x802f7e60:
    cmplwi  r31, 0x0
    beq-    branch_0x802f7e6c
    addi    r31, r31, 0x20
branch_0x802f7e6c:
    mr      r3, r31
    b       branch_0x802f7e8c

branch_0x802f7e74:
    cmplwi  r31, 0x0
    beq-    branch_0x802f7e80
    addi    r31, r31, 0x20
branch_0x802f7e80:
    mr      r3, r31
    b       branch_0x802f7e8c

branch_0x802f7e88:
    li      r3, 0x0
branch_0x802f7e8c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl _12___dt__Q26JDrama9TDirectorFv
_12___dt__Q26JDrama9TDirectorFv: # 0x802f7ea4
    subi    r3, r3, 0xc
    b       __dt__Q26JDrama9TDirectorFv

