
.globl init__Q28JASystem10TTrackPortFv
init__Q28JASystem10TTrackPortFv: # 0x8031e15c
    li      r0, 0x2
    li      r4, 0x0
    mtctr   r0
    addi    r7, r4, 0x0
    addi    r6, r4, 0x0
    addi    r5, r4, 0x0
    li      r9, 0x0
branch_0x8031e178:
    add     r8, r3, r9
    stb     r7, 0x0(r8)
    addi    r0, r4, 0x20
    addi    r9, r9, 0x1
    stb     r6, 0x10(r8)
    add     r8, r3, r9
    addi    r9, r9, 0x1
    sthx    r5, r3, r0
    addi    r0, r4, 0x22
    stb     r7, 0x0(r8)
    stb     r6, 0x10(r8)
    add     r8, r3, r9
    addi    r9, r9, 0x1
    sthx    r5, r3, r0
    addi    r0, r4, 0x24
    stb     r7, 0x0(r8)
    stb     r6, 0x10(r8)
    add     r8, r3, r9
    addi    r9, r9, 0x1
    sthx    r5, r3, r0
    addi    r0, r4, 0x26
    stb     r7, 0x0(r8)
    stb     r6, 0x10(r8)
    add     r8, r3, r9
    addi    r9, r9, 0x1
    sthx    r5, r3, r0
    addi    r0, r4, 0x28
    stb     r7, 0x0(r8)
    stb     r6, 0x10(r8)
    add     r8, r3, r9
    addi    r9, r9, 0x1
    sthx    r5, r3, r0
    addi    r0, r4, 0x2a
    stb     r7, 0x0(r8)
    stb     r6, 0x10(r8)
    add     r8, r3, r9
    addi    r9, r9, 0x1
    sthx    r5, r3, r0
    addi    r0, r4, 0x2c
    stb     r7, 0x0(r8)
    stb     r6, 0x10(r8)
    add     r8, r3, r9
    addi    r9, r9, 0x1
    sthx    r5, r3, r0
    addi    r0, r4, 0x2e
    addi    r4, r4, 0x10
    stb     r7, 0x0(r8)
    stb     r6, 0x10(r8)
    sthx    r5, r3, r0
    bdnz+      branch_0x8031e178
    blr

