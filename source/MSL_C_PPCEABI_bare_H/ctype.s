
.globl toupper
toupper: # 0x80338f3c
    cmpwi   r3, -0x1
    bne-    branch_0x80338f4c
    li      r3, -0x1
    blr

branch_0x80338f4c:
    lis     r4, unk_803aab88@ha
    clrlwi  r3, r3, 24
    addi    r0, r4, unk_803aab88@l
    add     r3, r0, r3
    lbz     r3, 0x0(r3)
    blr


.globl tolower
tolower: # 0x80338f64
    cmpwi   r3, -0x1
    bne-    branch_0x80338f74
    li      r3, -0x1
    blr

branch_0x80338f74:
    lis     r4, unk_803aaa88@ha
    clrlwi  r3, r3, 24
    addi    r0, r4, unk_803aaa88@l
    add     r3, r0, r3
    lbz     r3, 0x0(r3)
    blr

