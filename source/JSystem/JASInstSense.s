
.globl getY__Q28JASystem10TInstSenseCFii
getY__Q28JASystem10TInstSenseCFii: # 0x80310110
    stwu    sp, -0x28(sp)
    li      r6, 0x0
    lbz     r0, 0x8(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8031013c
    bge-    branch_0x80310140
    cmpwi   r0, 0x1
    bge-    branch_0x80310134
    b       branch_0x80310140

branch_0x80310134:
    mr      r6, r5
    b       branch_0x80310140

branch_0x8031013c:
    mr      r6, r4
branch_0x80310140:
    lbz     r0, 0x9(r3)
    cmplwi  r0, 0x7f
    beq-    branch_0x80310154
    cmplwi  r0, 0x0
    bne-    branch_0x80310190
branch_0x80310154:
    xoris   r0, r6, 0x8000
    lfs     f4, 0xc(r3)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f0, 0x10(r3)
    stw     r0, 0x20(sp)
    lfd     f3, 0x678(rtoc)
    fsubs   f1, f0, f4
    lfd     f2, 0x20(sp)
    lfs     f0, 0x670(rtoc)
    fsubs   f2, f2, f3
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fadds   f1, f4, f0
    b       branch_0x8031022c

branch_0x80310190:
    cmpw    r6, r0
    bge-    branch_0x803101e0
    xoris   r4, r6, 0x8000
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    lfd     f3, 0x678(rtoc)
    stw     r4, 0x24(sp)
    lfd     f1, 0x680(rtoc)
    stw     r0, 0x20(sp)
    lfs     f4, 0xc(r3)
    stw     r0, 0x18(sp)
    lfd     f2, 0x20(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f2, f3
    lfs     f3, 0x674(rtoc)
    fsubs   f0, f0, f1
    fsubs   f1, f3, f4
    fdivs   f0, f2, f0
    fmadds  f1, f1, f0, f4
    b       branch_0x8031022c

branch_0x803101e0:
    subf    r4, r0, r6
    lfd     f2, 0x678(rtoc)
    subfic  r0, r0, 0x7f
    lfs     f0, 0x10(r3)
    xoris   r3, r4, 0x8000
    lfs     f4, 0x674(rtoc)
    xoris   r0, r0, 0x8000
    stw     r3, 0x1c(sp)
    lis     r3, 0x4330
    fsubs   f3, f0, f4
    stw     r0, 0x24(sp)
    stw     r3, 0x18(sp)
    stw     r3, 0x20(sp)
    lfd     f1, 0x18(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fmadds  f1, f3, f0, f4
branch_0x8031022c:
    addi    sp, sp, 0x28
    blr


.globl setParams__Q28JASystem10TInstSenseFiiff
setParams__Q28JASystem10TInstSenseFiiff: # 0x80310234
    stb     r4, 0x8(r3)
    stb     r5, 0x9(r3)
    stfs    f1, 0xc(r3)
    stfs    f2, 0x10(r3)
    blr

