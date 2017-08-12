
.globl __ct__Q38JASystem6Kernel5THeapFv
__ct__Q38JASystem6Kernel5THeapFv: # 0x80318e10
    li      r6, 0x0
    stw     r6, 0x8(r3)
    li      r0, 0x1
    stw     r6, 0xc(r3)
    stw     r6, 0x10(r3)
    lwz     r5, R13Off_m0x5b40(r13)
    addi    r4, r5, 0x1
    stw     r4, R13Off_m0x5b40(r13)
    stw     r5, 0x4(r3)
    stb     r6, 0x0(r3)
    stb     r0, 0x1(r3)
    sth     r6, 0x2(r3)
    stw     r6, 0x14(r3)
    stw     r6, 0x18(r3)
    stw     r6, 0x1c(r3)
    stw     r6, 0x20(r3)
    stw     r6, 0x24(r3)
    stw     r6, 0x28(r3)
    blr


.globl selfAlloc__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUlUl
selfAlloc__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUlUl: # 0x80318e5c
    lwz     r7, 0x8(r3)
    cmplwi  r7, 0x0
    beq-    branch_0x80318e7c
    addis   r0, r7, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80318e7c
    li      r3, 0x0
    blr

branch_0x80318e7c:
    stw     r6, 0x8(r3)
    li      r6, 0x0
    stw     r5, 0x10(r3)
    stw     r6, 0xc(r3)
    stb     r6, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    sth     r6, 0x2(r3)
    stw     r6, 0x14(r3)
    stw     r4, 0x18(r3)
    lwz     r5, 0x14(r4)
    cmplwi  r5, 0x0
    bne-    branch_0x80318ed4
    stw     r3, 0x14(r4)
    stw     r6, 0x1c(r3)
    lwz     r5, 0x8(r4)
    lwz     r0, 0x8(r3)
    lwz     r3, 0x10(r3)
    subf    r0, r5, r0
    add     r0, r3, r0
    stw     r0, 0xc(r4)
    b       branch_0x80318f48

branch_0x80318ed4:
    lwz     r6, 0x8(r3)
    mr      r7, r5
    lwz     r0, 0x8(r5)
    cmplw   r6, r0
    bge-    branch_0x80318ef4
    stw     r5, 0x1c(r3)
    stw     r3, 0x14(r4)
    b       branch_0x80318f48

branch_0x80318ef4:
    lwz     r5, 0x1c(r7)
    cmplwi  r5, 0x0
    bne-    branch_0x80318f28
    li      r0, 0x0
    stw     r0, 0x1c(r3)
    stw     r3, 0x1c(r7)
    lwz     r5, 0x8(r4)
    lwz     r0, 0x8(r3)
    lwz     r3, 0x10(r3)
    subf    r0, r5, r0
    add     r0, r3, r0
    stw     r0, 0xc(r4)
    b       branch_0x80318f48

branch_0x80318f28:
    lwz     r0, 0x8(r5)
    cmplw   r6, r0
    bge-    branch_0x80318f40
    stw     r5, 0x1c(r3)
    stw     r3, 0x1c(r7)
    b       branch_0x80318f48

branch_0x80318f40:
    mr      r7, r5
    b       branch_0x80318ef4

branch_0x80318f48:
    lhz     r5, 0x2(r4)
    li      r3, 0x1
    addi    r0, r5, 0x1
    sth     r0, 0x2(r4)
    blr


.globl initMotherHeap__Q38JASystem6Kernel5THeapFUlUlUc
initMotherHeap__Q38JASystem6Kernel5THeapFUlUlUc: # 0x80318f5c
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    stw     r0, 0x8(r3)
    li      r7, 0x0
    clrlwi  r0, r4, 27
    stw     r7, 0xc(r3)
    subf    r4, r0, r5
    li      r0, 0x1
    stw     r4, 0x10(r3)
    lwz     r5, R13Off_m0x5b40(r13)
    addi    r4, r5, 0x1
    stw     r4, R13Off_m0x5b40(r13)
    stw     r5, 0x4(r3)
    stb     r0, 0x0(r3)
    stb     r6, 0x1(r3)
    sth     r7, 0x2(r3)
    stw     r7, 0x14(r3)
    stw     r7, 0x18(r3)
    stw     r7, 0x1c(r3)
    stw     r7, 0x20(r3)
    stw     r7, 0x24(r3)
    stw     r7, 0x28(r3)
    blr


.globl allocHeapCheck__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUl
allocHeapCheck__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUl: # 0x80318fb8
    lwz     r6, 0x8(r4)
    addi    r0, r5, 0x1f
    clrrwi  r0, r0, 5
    cmplwi  r6, 0x0
    bne-    branch_0x80318fd4
    li      r3, 0x0
    blr

branch_0x80318fd4:
    lwz     r5, 0x8(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80318ff4
    addis   r5, r5, 0x1
    cmplwi  r5, 0xffff
    beq-    branch_0x80318ff4
    li      r3, 0x0
    blr

branch_0x80318ff4:
    lwz     r7, 0xc(r4)
    lwz     r5, 0x10(r4)
    subf    r5, r7, r5
    cmplw   r5, r0
    bge-    branch_0x803190e4
    lwz     r7, 0x14(r4)
    lis     r5, unk_0fffffff@ha
    addi    r8, r6, 0x0
    addi    r9, r7, 0x0
    addi    r12, r5, unk_0fffffff@l
    li      r10, 0x0
branch_0x80319020:
    cmplwi  r9, 0x0
    beq-    branch_0x80319060
    lwz     r6, 0x8(r9)
    subf    r5, r8, r6
    cmplw   r5, r0
    blt-    branch_0x80319050
    subf    r5, r0, r5
    cmplw   r5, r12
    bge-    branch_0x80319050
    addi    r10, r9, 0x0
    addi    r11, r8, 0x0
    addi    r12, r5, 0x0
branch_0x80319050:
    lwz     r5, 0x10(r9)
    lwz     r9, 0x1c(r9)
    add     r8, r6, r5
    b       branch_0x80319020

branch_0x80319060:
    cmplwi  r10, 0x0
    bne-    branch_0x80319070
    li      r3, 0x0
    blr

branch_0x80319070:
    cmplw   r10, r7
    bne-    branch_0x80319084
    stw     r7, 0x1c(r3)
    stw     r3, 0x14(r4)
    b       branch_0x803190a8

branch_0x80319084:
    mr      r6, r7
branch_0x80319088:
    lwz     r5, 0x1c(r6)
    cmplw   r5, r10
    bne-    branch_0x803190a0
    stw     r5, 0x1c(r3)
    stw     r3, 0x1c(r6)
    b       branch_0x803190a8

branch_0x803190a0:
    mr      r6, r5
    b       branch_0x80319088

branch_0x803190a8:
    stw     r11, 0x8(r3)
    li      r5, 0x0
    stw     r0, 0x10(r3)
    stw     r5, 0xc(r3)
    stb     r5, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    sth     r5, 0x2(r3)
    stw     r5, 0x14(r3)
    stw     r4, 0x18(r3)
    li      r3, 0x1
    lhz     r5, 0x2(r4)
    addi    r0, r5, 0x1
    sth     r0, 0x2(r4)
    blr

branch_0x803190e4:
    add     r5, r6, r7
    stw     r5, 0x8(r3)
    li      r6, 0x0
    stw     r0, 0x10(r3)
    stw     r6, 0xc(r3)
    stb     r6, 0x0(r3)
    lbz     r5, 0x1(r4)
    stb     r5, 0x1(r3)
    sth     r6, 0x2(r3)
    stw     r6, 0x14(r3)
    stw     r4, 0x18(r3)
    lwz     r7, 0x14(r4)
    cmplwi  r7, 0x0
    bne-    branch_0x80319128
    stw     r3, 0x14(r4)
    stw     r6, 0x1c(r3)
    b       branch_0x80319144

branch_0x80319128:
    lwz     r5, 0x1c(r7)
    cmplwi  r5, 0x0
    bne-    branch_0x8031913c
    stw     r3, 0x1c(r7)
    b       branch_0x80319144

branch_0x8031913c:
    mr      r7, r5
    b       branch_0x80319128

branch_0x80319144:
    li      r5, 0x0
    stw     r5, 0x1c(r3)
    li      r3, 0x1
    lwz     r5, 0xc(r4)
    add     r0, r5, r0
    stw     r0, 0xc(r4)
    lhz     r5, 0x2(r4)
    addi    r0, r5, 0x1
    sth     r0, 0x2(r4)
    blr


.globl alloc__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUl
alloc__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUl: # 0x8031916c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      allocHeapCheck__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUl
    cmpwi   r3, 0x0
    bne-    branch_0x80319194
    li      r3, 0x0
    b       branch_0x80319198

branch_0x80319194:
    lwz     r3, 0x8(r31)
branch_0x80319198:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl free__Q38JASystem6Kernel5THeapFv
free__Q38JASystem6Kernel5THeapFv: # 0x803191ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x803191d8
    li      r3, 0x0
    b       branch_0x80319334

branch_0x803191d8:
    lwz     r3, 0x14(r31)
    b       branch_0x803191ec

branch_0x803191e0:
    lwz     r30, 0x1c(r3)
    bl      free__Q38JASystem6Kernel5THeapFv
    mr      r3, r30
branch_0x803191ec:
    cmplwi  r3, 0x0
    bne+    branch_0x803191e0
    li      r0, 0x0
    stw     r0, 0x14(r31)
    lwz     r3, 0x24(r31)
    b       branch_0x80319210

branch_0x80319204:
    lwz     r30, 0x28(r3)
    bl      free__Q38JASystem6Kernel5THeapFv
    mr      r3, r30
branch_0x80319210:
    cmplwi  r3, 0x0
    bne+    branch_0x80319204
    li      r4, 0x0
    stw     r4, 0x24(r31)
    lwz     r3, 0x18(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x803192c8
    lwzu    r6, 0x14(r3)
    cmplw   r6, r31
    bne-    branch_0x80319258
    lwz     r0, 0x1c(r31)
    stw     r0, 0x0(r3)
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x803192b8
    lwz     r3, 0x18(r31)
    stw     r4, 0xc(r3)
    b       branch_0x803192b8

branch_0x80319258:
    cmplwi  r6, 0x0
    bne-    branch_0x80319270
    li      r0, 0x0
    stw     r0, 0x8(r31)
    li      r3, 0x0
    b       branch_0x80319334

branch_0x80319270:
    lwz     r0, 0x1c(r6)
    cmplw   r0, r31
    bne-    branch_0x803192b0
    lwz     r0, 0x1c(r31)
    stw     r0, 0x1c(r6)
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x803192b8
    lwz     r5, 0x18(r31)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x10(r6)
    lwz     r4, 0x8(r5)
    add     r0, r3, r0
    subf    r0, r4, r0
    stw     r0, 0xc(r5)
    b       branch_0x803192b8

branch_0x803192b0:
    mr      r6, r0
    b       branch_0x80319258

branch_0x803192b8:
    lwz     r4, 0x18(r31)
    lhz     r3, 0x2(r4)
    addi    r0, r3, -0x1
    sth     r0, 0x2(r4)
branch_0x803192c8:
    lwz     r3, 0x20(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80319328
    lwzu    r4, 0x24(r3)
    cmplw   r4, r31
    bne-    branch_0x803192ec
    lwz     r0, 0x28(r31)
    stw     r0, 0x0(r3)
    b       branch_0x8031931c

branch_0x803192ec:
    cmplwi  r4, 0x0
    bne-    branch_0x803192fc
    li      r3, 0x0
    b       branch_0x80319334

branch_0x803192fc:
    lwz     r0, 0x28(r4)
    cmplw   r0, r31
    bne-    branch_0x80319314
    lwz     r0, 0x28(r31)
    stw     r0, 0x28(r4)
    b       branch_0x8031931c

branch_0x80319314:
    mr      r4, r0
    b       branch_0x803192ec

branch_0x8031931c:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r0, 0x28(r31)
branch_0x80319328:
    li      r0, 0x0
    stw     r0, 0x8(r31)
    li      r3, 0x1
branch_0x80319334:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__Q38JASystem6Kernel10TSolidHeapFv
__ct__Q38JASystem6Kernel10TSolidHeapFv: # 0x8031934c
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl alloc__Q38JASystem6Kernel10TSolidHeapFl
alloc__Q38JASystem6Kernel10TSolidHeapFl: # 0x80319368
    lwz     r5, 0x0(r3)
    addi    r0, r4, 0x1f
    clrrwi  r4, r0, 5
    cmplwi  r5, 0x0
    bne-    branch_0x80319384
    li      r3, 0x0
    blr

branch_0x80319384:
    lwz     r6, 0x4(r3)
    lwz     r0, 0x8(r3)
    add     r4, r6, r4
    add     r0, r5, r0
    cmplw   r4, r0
    bgt-    branch_0x803193a4
    stw     r4, 0x4(r3)
    b       branch_0x803193ac

branch_0x803193a4:
    li      r3, 0x0
    blr

branch_0x803193ac:
    lwz     r4, 0xc(r3)
    addi    r0, r4, 0x1
    stw     r0, 0xc(r3)
    stw     r6, 0x10(r3)
    mr      r3, r6
    blr


.globl init__Q38JASystem6Kernel10TSolidHeapFPUcl
init__Q38JASystem6Kernel10TSolidHeapFPUcl: # 0x803193c4
    li      r6, 0x0
    cmplwi  r4, 0x0
    stw     r6, 0xc(r3)
    bne-    branch_0x803193e4
    stw     r6, 0x8(r3)
    stw     r6, 0x4(r3)
    stw     r6, 0x10(r3)
    blr

branch_0x803193e4:
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    stw     r0, 0x0(r3)
    clrlwi  r0, r4, 27
    subf    r0, r0, r5
    lwz     r4, 0x0(r3)
    stw     r4, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r6, 0x10(r3)
    blr


.globl getRemain__Q38JASystem6Kernel10TSolidHeapFv
getRemain__Q38JASystem6Kernel10TSolidHeapFv: # 0x8031940c
    lwz     r5, 0x0(r3)
    lwz     r4, 0x4(r3)
    lwz     r0, 0x8(r3)
    subf    r3, r5, r4
    subf    r3, r3, r0
    blr

