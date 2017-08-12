
.globl __va_arg
__va_arg: # 0x80337ccc
    clrlwi  r0, r4, 24
    lbz     r6, 0x0(r3)
    cmplwi  r0, 0x4
    addi    r7, r3, 0x0
    extsb   r6, r6
    li      r5, 0x8
    li      r8, 0x4
    li      r9, 0x1
    li      r10, 0x0
    li      r11, 0x0
    li      r12, 0x4
    bne-    branch_0x80337d18
    lwz     r4, 0x4(r3)
    addi    r0, r4, 0xf
    clrrwi  r4, r0, 4
    addi    r0, r4, 0x10
    stw     r0, 0x4(r3)
    mr      r3, r4
    blr

branch_0x80337d18:
    cmplwi  r0, 0x3
    bne-    branch_0x80337d38
    lbz     r6, 0x1(r3)
    addi    r7, r3, 0x1
    li      r8, 0x8
    extsb   r6, r6
    li      r11, 0x20
    li      r12, 0x8
branch_0x80337d38:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x2
    bne-    branch_0x80337d5c
    clrlwi. r0, r6, 31
    li      r8, 0x8
    li      r5, 0x7
    beq-    branch_0x80337d58
    li      r10, 0x1
branch_0x80337d58:
    li      r9, 0x2
branch_0x80337d5c:
    cmpw    r6, r5
    bge-    branch_0x80337d84
    add     r6, r6, r10
    lwz     r5, 0x8(r3)
    mullw   r3, r6, r12
    add     r0, r6, r9
    add     r6, r11, r3
    stb     r0, 0x0(r7)
    add     r6, r5, r6
    b       branch_0x80337dac

branch_0x80337d84:
    li      r0, 0x8
    stb     r0, 0x0(r7)
    addi    r0, r8, -0x1
    not     r6, r0
    lwz     r0, 0x4(r3)
    add     r5, r8, r0
    addi    r0, r5, -0x1
    and     r6, r6, r0
    add     r0, r6, r8
    stw     r0, 0x4(r3)
branch_0x80337dac:
    clrlwi. r0, r4, 24
    bne-    branch_0x80337db8
    lwz     r6, 0x0(r6)
branch_0x80337db8:
    mr      r3, r6
    blr

