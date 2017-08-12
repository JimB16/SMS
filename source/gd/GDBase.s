
.globl GDInitGDLObj
GDInitGDLObj: # 0x803646f8
    stw     r4, 0x0(r3)
    add     r0, r4, r5
    stw     r4, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r5, 0x4(r3)
    blr


.globl GDFlushCurrToMem
GDFlushCurrToMem: # 0x80364710
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x0(r4)
    lwz     r4, 0x4(r4)
    bl      DCFlushRange
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GDPadCurr32
GDPadCurr32: # 0x8036473c
    lwz     r3, R13Off_m0x5778(r13)
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 27
    beqlr-    

    cmplwi  r0, 0x20
    subfic  r3, r0, 0x20
    li      r6, 0x0
    bgelr-    

    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x80364814
branch_0x80364768:
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    bdnz+      branch_0x80364768
    andi.   r3, r3, 0x7
    beqlr-    

branch_0x80364814:
    mtctr   r3
branch_0x80364818:
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    bdnz+      branch_0x80364818
    blr


.globl GDOverflowed
GDOverflowed: # 0x80364834
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, R13Off_m0x5774(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80364854
    mtlr    r12
    blrl
branch_0x80364854:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GDSetOverflowCallback
GDSetOverflowCallback: # 0x80364864
    stw     r3, R13Off_m0x5774(r13)
    blr

