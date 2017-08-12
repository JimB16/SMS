
.globl __destroy_new_array
__destroy_new_array: # 0x80337e20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr.     r26, r3
    addi    r27, r4, 0x0
    beq-    branch_0x80337e88
    cmplwi  r27, 0x0
    beq-    branch_0x80337e80
    lwz     r30, -0x8(r26)
    li      r29, 0x0
    lwz     r31, -0x4(r26)
    mullw   r0, r30, r31
    add     r28, r26, r0
    b       branch_0x80337e78

branch_0x80337e5c:
    addi    r12, r27, 0x0
    subf    r28, r30, r28
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, -0x1
    blrl
    addi    r29, r29, 0x1
branch_0x80337e78:
    cmplw   r29, r31
    blt+    branch_0x80337e5c
branch_0x80337e80:
    addi    r3, r26, -0x8
    bl      __dla__FPv
branch_0x80337e88:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __destroy_arr
__destroy_arr: # 0x80337e9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    mullw   r0, r29, r30
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    add     r31, r3, r0
    b       branch_0x80337eec

branch_0x80337ed0:
    addi    r12, r28, 0x0
    subf    r31, r29, r31
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, -0x1
    blrl
    addi    r30, r30, -0x1
branch_0x80337eec:
    cmplwi  r30, 0x0
    bne+    branch_0x80337ed0
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl __construct_array
__construct_array: # 0x80337f14
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x1c(sp)
    stw     r29, 0x20(sp)
    stw     r30, 0x24(sp)
    stw     r5, 0x28(sp)
    lwz     r3, 0x24(sp)
    stw     r3, 0x2c(sp)
    stw     r0, 0x2c(sp)
    b       branch_0x80337f88

branch_0x80337f64:
    addi    r12, r28, 0x0
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x1
    blrl
    lwz     r3, 0x2c(sp)
    add     r31, r31, r29
    addi    r0, r3, 0x1
    stw     r0, 0x2c(sp)
branch_0x80337f88:
    lwz     r4, 0x2c(sp)
    cmplw   r4, r30
    blt+    branch_0x80337f64
    lwz     r0, 0x24(sp)
    cmplw   r4, r0
    bge-    branch_0x80337ff4
    lwz     r0, 0x28(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x80337ff4
    lwz     r0, 0x20(sp)
    lwz     r3, 0x1c(sp)
    mullw   r0, r0, r4
    add     r31, r3, r0
    b       branch_0x80337fe8

branch_0x80337fc0:
    lwz     r0, 0x20(sp)
    li      r4, -0x1
    lwz     r12, 0x28(sp)
    subf    r31, r0, r31
    mtlr    r12
    addi    r3, r31, 0x0
    blrl
    lwz     r3, 0x2c(sp)
    addi    r0, r3, -0x1
    stw     r0, 0x2c(sp)
branch_0x80337fe8:
    lwz     r0, 0x2c(sp)
    cmplwi  r0, 0x0
    bne+    branch_0x80337fc0
branch_0x80337ff4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl __dt__26__partial_array_destructorFv
__dt__26__partial_array_destructorFv: # 0x80338014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    mr.     r29, r3
    beq-    branch_0x803380ac
    lwz     r4, 0x10(r29)
    lwz     r0, 0x8(r29)
    cmplw   r4, r0
    bge-    branch_0x8033809c
    lwz     r0, 0xc(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8033809c
    lwz     r0, 0x4(r29)
    lwz     r3, 0x0(r29)
    mullw   r0, r0, r4
    add     r31, r3, r0
    b       branch_0x80338090

branch_0x80338068:
    lwz     r0, 0x4(r29)
    li      r4, -0x1
    lwz     r12, 0xc(r29)
    subf    r31, r0, r31
    mtlr    r12
    addi    r3, r31, 0x0
    blrl
    lwz     r3, 0x10(r29)
    addi    r0, r3, -0x1
    stw     r0, 0x10(r29)
branch_0x80338090:
    lwz     r0, 0x10(r29)
    cmplwi  r0, 0x0
    bne+    branch_0x80338068
branch_0x8033809c:
    extsh.  r0, r30
    ble-    branch_0x803380ac
    mr      r3, r29
    bl      __dl__FPv
branch_0x803380ac:
    lwz     r0, 0x24(sp)
    mr      r3, r29
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __construct_new_array
__construct_new_array: # 0x803380cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr.     r30, r3
    addi    r27, r4, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    beq-    branch_0x803381bc
    stw     r28, 0x0(r30)
    cmplwi  r27, 0x0
    stw     r29, 0x4(r30)
    addi    r30, r30, 0x8
    beq-    branch_0x803381bc
    stw     r30, 0x1c(sp)
    li      r0, 0x0
    addi    r31, r30, 0x0
    stw     r28, 0x20(sp)
    stw     r29, 0x24(sp)
    stw     r5, 0x28(sp)
    lwz     r3, 0x24(sp)
    stw     r3, 0x2c(sp)
    stw     r0, 0x2c(sp)
    b       branch_0x80338150

branch_0x8033812c:
    addi    r12, r27, 0x0
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x1
    blrl
    lwz     r3, 0x2c(sp)
    add     r31, r31, r28
    addi    r0, r3, 0x1
    stw     r0, 0x2c(sp)
branch_0x80338150:
    lwz     r4, 0x2c(sp)
    cmplw   r4, r29
    blt+    branch_0x8033812c
    lwz     r0, 0x24(sp)
    cmplw   r4, r0
    bge-    branch_0x803381bc
    lwz     r0, 0x28(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x803381bc
    lwz     r0, 0x20(sp)
    lwz     r3, 0x1c(sp)
    mullw   r0, r0, r4
    add     r31, r3, r0
    b       branch_0x803381b0

branch_0x80338188:
    lwz     r0, 0x20(sp)
    li      r4, -0x1
    lwz     r12, 0x28(sp)
    subf    r31, r0, r31
    mtlr    r12
    addi    r3, r31, 0x0
    blrl
    lwz     r3, 0x2c(sp)
    addi    r0, r3, -0x1
    stw     r0, 0x2c(sp)
branch_0x803381b0:
    lwz     r0, 0x2c(sp)
    cmplwi  r0, 0x0
    bne+    branch_0x80338188
branch_0x803381bc:
    mr      r3, r30
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr

