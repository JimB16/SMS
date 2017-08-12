
.globl drawSyncCallback__8TTimeRecFUs
drawSyncCallback__8TTimeRecFUs: # 0x802a8db8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r5, 0x814(r3)
    lhz     r4, 0x81a(r3)
    mulli   r5, r5, 0x408
    subf    r0, r4, r0
    addi    r4, r5, 0x208
    slwi    r0, r0, 3
    add     r31, r4, r0
    add     r31, r3, r31
    bl      OSGetTick
    stw     r3, 0x0(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl snapGXTime__8TTimeRecFUl
snapGXTime__8TTimeRecFUl: # 0x802a8e08
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r0, 0x814(r3)
    mulli   r5, r0, 0x408
    addi    r8, r5, 0x208
    add     r8, r3, r8
    lwz     r6, 0x200(r8)
    cmpwi   r6, 0x40
    bge-    branch_0x802a8e54
    addi    r5, r6, 0x1
    slwi    r0, r6, 3
    stw     r5, 0x200(r8)
    add     r5, r8, r0
    stw     r7, 0x0(r5)
    li      r7, 0x1
    stw     r4, 0x4(r5)
branch_0x802a8e54:
    clrlwi. r0, r7, 24
    beq-    branch_0x802a8ea0
    lhz     r0, 0x81c(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x802a8ea0
    lwz     r0, 0x814(r3)
    lwz     r6, R13Off_m0x5ff0(r13)
    mulli   r4, r0, 0x408
    lhz     r5, 0x81a(r3)
    addi    r0, r4, 0x408
    lwzx    r3, r3, r0
    cmplwi  r6, 0x0
    addi    r31, r3, -0x1
    add     r31, r5, r31
    beq-    branch_0x802a8e98
    mr      r3, r6
    bl      pushBreakPoint__16TDrawSyncManagerFv
branch_0x802a8e98:
    mr      r3, r31
    bl      GXSetDrawSync
branch_0x802a8ea0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl flip__8TTimeRecFv
flip__8TTimeRecFv: # 0x802a8eb4
    lwz     r5, R13Off_m0x5ff8(r13)
    lwz     r0, 0x814(r5)
    mulli   r4, r0, 0x408
    addi    r4, r4, 0x4
    add     r4, r5, r4
    lwz     r5, 0x404(r4)
    addi    r6, r4, 0x204
    cmpwi   r5, 0x3
    blt-    branch_0x802a8f10
    subic.  r0, r5, 0x1
    slwi    r4, r0, 3
    mtctr   r0
    lwzx    r5, r6, r4
    ble-    branch_0x802a8f10
branch_0x802a8eec:
    addi    r4, r4, -0x8
    add     r7, r6, r4
    lwz     r0, 0x0(r7)
    cmplwi  r0, 0x0
    bne-    branch_0x802a8f08
    stw     r5, 0x0(r7)
    b       branch_0x802a8f0c

branch_0x802a8f08:
    mr      r5, r0
branch_0x802a8f0c:
    bdnz+      branch_0x802a8eec
branch_0x802a8f10:
    lwz     r0, 0x814(r3)
    li      r5, 0x0
    xori     r0, r0, 0x1
    stw     r0, 0x814(r3)
    lwz     r0, 0x814(r3)
    mulli   r4, r0, 0x408
    addi    r0, r4, 0x204
    stwx    r5, r3, r0
    lwz     r0, 0x814(r3)
    mulli   r4, r0, 0x408
    addi    r0, r4, 0x408
    stwx    r5, r3, r0
    blr


.globl __ct__10TTimeArrayFv
__ct__10TTimeArrayFv: # 0x802a8f44
    li      r0, 0x0
    stw     r0, 0x200(r3)
    blr


.globl start__8TTimeRecFUs
start__8TTimeRecFUs: # 0x802a8f50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    lwz     r0, R13Off_m0x5ff8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802a8fd0
    li      r3, 0x820
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a8fcc
    lis     r3, __vvt__17TDrawSyncCallback@ha
    addi    r0, r3, __vvt__17TDrawSyncCallback@l
    lis     r3, __vvt__8TTimeRec@ha
    stw     r0, 0x0(r30)
    addi    r0, r3, __vvt__8TTimeRec@l
    lis     r3, __ct__10TTimeArrayFv@ha
    stw     r0, 0x0(r30)
    addi    r4, r3, __ct__10TTimeArrayFv@l
    addi    r3, r30, 0x4
    li      r5, 0x0
    li      r6, 0x204
    li      r7, 0x4
    bl      __construct_array
    li      r0, 0x0
    stw     r0, 0x814(r30)
    stb     r0, 0x818(r30)
    sth     r31, 0x81a(r30)
    sth     r0, 0x81c(r30)
branch_0x802a8fcc:
    stw     r30, R13Off_m0x5ff8(r13)
branch_0x802a8fd0:
    lwz     r0, 0x1c(sp)
    lwz     r3, R13Off_m0x5ff8(r13)
    lwz     r31, 0x14(sp)
    mtlr    r0
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl append__10TTimeArrayFUlUl
append__10TTimeArrayFUlUl: # 0x802a8fec
    lwz     r7, 0x200(r3)
    li      r0, 0x0
    cmpwi   r7, 0x40
    bge-    branch_0x802a9018
    addi    r6, r7, 0x1
    slwi    r0, r7, 3
    stw     r6, 0x200(r3)
    add     r3, r3, r0
    stw     r4, 0x0(r3)
    li      r0, 0x1
    stw     r5, 0x4(r3)
branch_0x802a9018:
    mr      r3, r0
    blr

