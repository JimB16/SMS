
.globl init__Q38JASystem6Driver8DSPQueueFUl
init__Q38JASystem6Driver8DSPQueueFUl: # 0x803114e0
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stw     r3, -0x7428(r13)
    lwz     r4, -0x5b30(r13)
    lwz     r0, -0x7428(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    lwz     r0, -0x7428(r13)
    li      r5, 0x0
    stw     r3, -0x5c50(r13)
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    lwz     r0, -0x7428(r13)
    stw     r3, -0x5c4c(r13)
    lwz     r3, -0x5c50(r13)
    slwi    r4, r0, 2
    bl      bzero__Q28JASystem4CalcFPvUl
    lwz     r0, -0x7428(r13)
    lwz     r3, -0x5c4c(r13)
    slwi    r4, r0, 2
    bl      bzero__Q28JASystem4CalcFPvUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl enQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel
enQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel: # 0x80311550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r4, -0x5c48(r13)
    lwz     r0, -0x7428(r13)
    cmplw   r4, r0
    bne-    branch_0x8031157c
    li      r3, 0x0
    b       branch_0x803115ec

branch_0x8031157c:
    lwz     r0, 0xc0(r31)
    clrlwi  r3, r0, 24
    bl      breakLower__Q28JASystem11TDSPChannelFUc
    cmpwi   r3, 0x0
    bne-    branch_0x80311598
    li      r3, 0x0
    b       branch_0x803115ec

branch_0x80311598:
    lwz     r0, -0x5c40(r13)
    li      r5, 0x0
    lwz     r3, -0x5c4c(r13)
    slwi    r0, r0, 2
    stwx    r5, r3, r0
    lwz     r0, -0x5c40(r13)
    lwz     r3, -0x5c50(r13)
    slwi    r0, r0, 2
    stwx    r31, r3, r0
    lwz     r4, -0x5c40(r13)
    lwz     r3, -0x5c48(r13)
    addi    r4, r4, 0x1
    lwz     r0, -0x7428(r13)
    stw     r4, -0x5c40(r13)
    addi    r4, r3, 0x1
    lwz     r3, -0x5c40(r13)
    stw     r4, -0x5c48(r13)
    cmplw   r3, r0
    bne-    branch_0x803115e8
    stw     r5, -0x5c40(r13)
branch_0x803115e8:
    li      r3, 0x1
branch_0x803115ec:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl deQueue__Q38JASystem6Driver8DSPQueueFUc
deQueue__Q38JASystem6Driver8DSPQueueFUc: # 0x80311600
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    clrlwi  r31, r3, 24
    stw     r30, 0x10(sp)
    b       branch_0x803116e4

branch_0x8031161c:
    lwz     r3, -0x5c44(r13)
    lwz     r4, -0x5c50(r13)
    slwi    r0, r3, 2
    lwzx    r0, r4, r0
    cmplwi  r0, 0x0
    mr      r30, r0
    beq-    branch_0x803116b8
    li      r3, 0x0
    addi    r4, r30, 0x0
    bl      alloc__Q28JASystem11TDSPChannelFUlUl
    cmplwi  r3, 0x0
    beq-    branch_0x803116f0
    stw     r3, 0x20(r30)
    mr      r3, r30
    bl      playLogicalChannel__Q28JASystem8TChannelFv
    lwz     r3, 0x4(r30)
    mr      r4, r30
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x8031167c
    lwz     r3, 0x4(r30)
    addi    r4, r30, 0x0
    li      r5, 0x1
    bl      addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x8031167c:
    lwz     r3, -0x5c44(r13)
    lwz     r0, -0x7428(r13)
    addi    r3, r3, 0x1
    stw     r3, -0x5c44(r13)
    lwz     r3, -0x5c44(r13)
    cmplw   r3, r0
    bne-    branch_0x803116a0
    li      r0, 0x0
    stw     r0, -0x5c44(r13)
branch_0x803116a0:
    lwz     r3, -0x5c48(r13)
    cmplwi  r31, 0x1
    subi    r0, r3, 0x1
    stw     r0, -0x5c48(r13)
    beq-    branch_0x803116f0
    b       branch_0x803116e4

branch_0x803116b8:
    addi    r3, r3, 0x1
    lwz     r0, -0x7428(r13)
    stw     r3, -0x5c44(r13)
    lwz     r3, -0x5c44(r13)
    cmplw   r3, r0
    bne-    branch_0x803116d8
    li      r0, 0x0
    stw     r0, -0x5c44(r13)
branch_0x803116d8:
    lwz     r3, -0x5c48(r13)
    subi    r0, r3, 0x1
    stw     r0, -0x5c48(r13)
branch_0x803116e4:
    lwz     r0, -0x5c48(r13)
    cmplwi  r0, 0x0
    bne+    branch_0x8031161c
branch_0x803116f0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl deleteQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel
deleteQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel: # 0x80311708
    lwz     r0, -0x5c48(r13)
    li      r8, 0x0
    lwz     r7, -0x5c50(r13)
    cmplwi  r0, 0x0
    mtctr   r0
    lwz     r5, -0x5c44(r13)
    lwz     r6, -0x7428(r13)
    ble-    branch_0x80311760
branch_0x80311728:
    add     r4, r5, r8
    divwu   r0, r4, r6
    mullw   r0, r0, r6
    subf    r0, r0, r4
    slwi    r4, r0, 2
    lwzx    r0, r7, r4
    cmplw   r0, r3
    bne-    branch_0x80311758
    li      r0, 0x0
    stwx    r0, r7, r4
    li      r3, 0x1
    blr

branch_0x80311758:
    addi    r8, r8, 0x1
    bdnz+      branch_0x80311728
branch_0x80311760:
    li      r3, 0x0
    blr


.globl checkQueue__Q38JASystem6Driver8DSPQueueFv
checkQueue__Q38JASystem6Driver8DSPQueueFv: # 0x80311768
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      deQueue__Q38JASystem6Driver8DSPQueueFUc
    li      r31, 0x0
    b       branch_0x80311824

branch_0x80311788:
    lwz     r0, -0x5c44(r13)
    lwz     r3, -0x7428(r13)
    add     r4, r0, r31
    lwz     r5, -0x5c50(r13)
    divwu   r0, r4, r3
    mullw   r0, r0, r3
    subf    r0, r0, r4
    slwi    r6, r0, 2
    lwzx    r0, r5, r6
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x80311820
    lwz     r5, -0x5c4c(r13)
    lwzx    r4, r5, r6
    addi    r0, r4, 0x1
    stwx    r0, r5, r6
    lwz     r4, 0x30(r3)
    cmpwi   r4, 0x0
    ble-    branch_0x803117dc
    subi    r0, r4, 0x1
    stw     r0, 0x30(r3)
branch_0x803117dc:
    lwz     r0, 0x30(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80311820
    lwz     r12, 0x28(r3)
    li      r4, 0x6
    mtlr    r12
    blrl
    lwz     r0, -0x5c44(r13)
    li      r6, 0x0
    lwz     r3, -0x7428(r13)
    add     r4, r0, r31
    lwz     r5, -0x5c50(r13)
    divwu   r0, r4, r3
    mullw   r0, r0, r3
    subf    r0, r0, r4
    slwi    r0, r0, 2
    stwx    r6, r5, r0
branch_0x80311820:
    addi    r31, r31, 0x1
branch_0x80311824:
    lwz     r0, -0x5c48(r13)
    cmplw   r31, r0
    blt+    branch_0x80311788
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

