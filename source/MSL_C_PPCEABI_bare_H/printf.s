
.globl sprintf
sprintf: # 0x803396d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    bne-    cr1, branch_0x80339708
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x80339708:
    stw     r3, 0x8(sp)
    lis     r0, 0x200
    addi    r30, r3, 0x0
    stw     r4, 0xc(sp)
    li      r31, -0x1
    stw     r5, 0x10(sp)
    lis     r5, 0x8034
    subi    r3, r5, 0x66a0
    stw     r6, 0x14(sp)
    addi    r5, r4, 0x0
    addi    r6, sp, 0x7c
    stw     r7, 0x18(sp)
    addi    r4, sp, 0x70
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x7c(sp)
    addi    r0, sp, 0x98
    stw     r0, 0x80(sp)
    addi    r0, sp, 0x8
    stw     r0, 0x84(sp)
    li      r0, 0x0
    stw     r30, 0x70(sp)
    stw     r31, 0x74(sp)
    stw     r0, 0x78(sp)
    bl      __pformatter
    cmplw   r3, r31
    bge-    branch_0x80339780
    mr      r4, r3
    b       branch_0x80339784

branch_0x80339780:
    li      r4, -0x2
branch_0x80339784:
    li      r0, 0x0
    stbx    r0, r30, r4
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl snprintf
snprintf: # 0x803397a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    bne-    cr1, branch_0x803397dc
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x803397dc:
    stw     r3, 0x8(sp)
    lis     r0, 0x300
    mr      r30, r3
    stw     r4, 0xc(sp)
    addi    r31, r4, 0x0
    lis     r4, 0x8034
    stw     r5, 0x10(sp)
    subi    r3, r4, 0x66a0
    addi    r4, sp, 0x74
    stw     r6, 0x14(sp)
    addi    r6, sp, 0x80
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x80(sp)
    addi    r0, sp, 0xa0
    stw     r0, 0x84(sp)
    addi    r0, sp, 0x8
    stw     r0, 0x88(sp)
    li      r0, 0x0
    stw     r30, 0x74(sp)
    stw     r31, 0x78(sp)
    stw     r0, 0x7c(sp)
    bl      __pformatter
    cmplw   r3, r31
    bge-    branch_0x80339850
    mr      r4, r3
    b       branch_0x80339854

branch_0x80339850:
    subi    r4, r31, 0x1
branch_0x80339854:
    li      r0, 0x0
    stbx    r0, r30, r4
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl vsnprintf
vsnprintf: # 0x80339874
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    addi    r4, sp, 0x18
    stw     r30, 0x28(sp)
    mr      r30, r3
    lis     r3, 0x8034
    stw     r30, 0x18(sp)
    subi    r3, r3, 0x66a0
    stw     r31, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      __pformatter
    cmplw   r3, r31
    bge-    branch_0x803398c0
    mr      r4, r3
    b       branch_0x803398c4

branch_0x803398c0:
    subi    r4, r31, 0x1
branch_0x803398c4:
    li      r0, 0x0
    stbx    r0, r30, r4
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl vprintf
vprintf: # 0x803398e4
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r5, r5, 0x6480
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x48
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    li      r4, -0x1
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      fwide
    cmpwi   r3, 0x0
    blt-    branch_0x8033992c
    li      r3, -0x1
    b       branch_0x80339944

branch_0x8033992c:
    lis     r3, 0x8034
    subi    r3, r3, 0x6634
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    bl      __pformatter
branch_0x80339944:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __StringWrite
__StringWrite: # 0x80339960
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x8(r3)
    lwz     r6, 0x4(r30)
    add     r0, r3, r5
    cmplw   r0, r6
    bgt-    branch_0x80339994
    mr      r31, r5
    b       branch_0x80339998

branch_0x80339994:
    subf    r31, r3, r6
branch_0x80339998:
    lwz     r0, 0x0(r30)
    addi    r5, r31, 0x0
    add     r3, r0, r3
    bl      memcpy
    lwz     r0, 0x8(r30)
    add     r0, r0, r31
    stw     r0, 0x8(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __FileWrite
__FileWrite: # 0x803399cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    addi    r6, r30, 0x0
    li      r4, 0x1
    bl      fwrite
    cmplw   r31, r3
    bne-    branch_0x80339a08
    mr      r3, r30
    b       branch_0x80339a0c

branch_0x80339a08:
    li      r3, 0x0
branch_0x80339a0c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __pformatter
__pformatter: # 0x80339a24
    mflr    r0
    lis     r7, 0x803b
    stw     r0, 0x4(sp)
    li      r0, 0x20
    stwu    sp, -0x268(sp)
    stmw    r18, 0x230(sp)
    addi    r31, r3, 0x0
    addi    r30, r4, 0x0
    addi    r28, r6, 0x0
    addi    r25, r5, 0x0
    addi    r26, sp, 0x21c
    addi    r23, sp, 0x21b
    subi    r20, r7, 0x5378
    li      r27, 0x0
    stb     r0, 0x19(sp)
    b       branch_0x8033a030

branch_0x80339a64:
    addi    r3, r25, 0x0
    li      r4, 0x25
    bl      strchr
    mr.     r24, r3
    bne-    branch_0x80339ab0
    mr      r3, r25
    bl      strlen
    mr.     r5, r3
    add     r27, r27, r5
    beq-    branch_0x8033a03c
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8033a03c
    li      r3, -0x1
    b       branch_0x8033a040

branch_0x80339ab0:
    subf.   r5, r25, r24
    add     r27, r27, r5
    beq-    branch_0x80339ae0
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80339ae0
    li      r3, -0x1
    b       branch_0x8033a040

branch_0x80339ae0:
    addi    r3, r24, 0x0
    addi    r4, r28, 0x0
    addi    r5, sp, 0x21c
    bl      parse_format
    lbz     r0, 0x221(sp)
    addi    r25, r3, 0x0
    cmpwi   r0, 0x69
    beq-    branch_0x80339ba0
    bge-    branch_0x80339b58
    cmpwi   r0, 0x58
    beq-    branch_0x80339c5c
    bge-    branch_0x80339b34
    cmpwi   r0, 0x45
    beq-    branch_0x80339d18
    bge-    branch_0x80339b28
    cmpwi   r0, 0x25
    beq-    branch_0x80339e9c
    b       branch_0x80339eb0

branch_0x80339b28:
    cmpwi   r0, 0x47
    beq-    branch_0x80339d18
    b       branch_0x80339eb0

branch_0x80339b34:
    cmpwi   r0, 0x64
    beq-    branch_0x80339ba0
    bge-    branch_0x80339b4c
    cmpwi   r0, 0x63
    bge-    branch_0x80339e78
    b       branch_0x80339eb0

branch_0x80339b4c:
    cmpwi   r0, 0x68
    bge-    branch_0x80339eb0
    b       branch_0x80339d18

branch_0x80339b58:
    cmpwi   r0, 0x75
    beq-    branch_0x80339c5c
    bge-    branch_0x80339b88
    cmpwi   r0, 0x6f
    beq-    branch_0x80339c5c
    bge-    branch_0x80339b7c
    cmpwi   r0, 0x6e
    bge-    branch_0x80339e10
    b       branch_0x80339eb0

branch_0x80339b7c:
    cmpwi   r0, 0x73
    beq-    branch_0x80339d3c
    b       branch_0x80339eb0

branch_0x80339b88:
    cmpwi   r0, 0xff
    beq-    branch_0x80339eb0
    bge-    branch_0x80339eb0
    cmpwi   r0, 0x78
    beq-    branch_0x80339c5c
    b       branch_0x80339eb0

branch_0x80339ba0:
    lbz     r0, 0x220(sp)
    cmplwi  r0, 0x3
    bne-    branch_0x80339bc0
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r29, 0x0(r3)
    b       branch_0x80339bf0

branch_0x80339bc0:
    cmplwi  r0, 0x4
    bne-    branch_0x80339be0
    addi    r3, r28, 0x0
    li      r4, 0x2
    bl      __va_arg
    lwz     r21, 0x0(r3)
    lwz     r22, 0x4(r3)
    b       branch_0x80339bf0

branch_0x80339be0:
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r29, 0x0(r3)
branch_0x80339bf0:
    lbz     r3, 0x220(sp)
    cmplwi  r3, 0x2
    bne-    branch_0x80339c04
    extsh   r0, r29
    mr      r29, r0
branch_0x80339c04:
    cmplwi  r3, 0x1
    bne-    branch_0x80339c14
    extsb   r0, r29
    mr      r29, r0
branch_0x80339c14:
    cmplwi  r3, 0x4
    bne-    branch_0x80339c3c
    addi    r4, r22, 0x0
    addi    r3, r21, 0x0
    addi    r5, r26, 0x0
    addi    r6, sp, 0x21c
    bl      longlong2str
    mr.     r19, r3
    beq-    branch_0x80339eb0
    b       branch_0x80339c54

branch_0x80339c3c:
    addi    r3, r29, 0x0
    addi    r4, r26, 0x0
    addi    r5, sp, 0x21c
    bl      long2str
    mr.     r19, r3
    beq-    branch_0x80339eb0
branch_0x80339c54:
    subf    r24, r19, r23
    b       branch_0x80339ef0

branch_0x80339c5c:
    lbz     r0, 0x220(sp)
    cmplwi  r0, 0x3
    bne-    branch_0x80339c7c
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r29, 0x0(r3)
    b       branch_0x80339cac

branch_0x80339c7c:
    cmplwi  r0, 0x4
    bne-    branch_0x80339c9c
    addi    r3, r28, 0x0
    li      r4, 0x2
    bl      __va_arg
    lwz     r21, 0x0(r3)
    lwz     r22, 0x4(r3)
    b       branch_0x80339cac

branch_0x80339c9c:
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r29, 0x0(r3)
branch_0x80339cac:
    lbz     r3, 0x220(sp)
    cmplwi  r3, 0x2
    bne-    branch_0x80339cc0
    clrlwi  r0, r29, 16
    mr      r29, r0
branch_0x80339cc0:
    cmplwi  r3, 0x1
    bne-    branch_0x80339cd0
    clrlwi  r0, r29, 24
    mr      r29, r0
branch_0x80339cd0:
    cmplwi  r3, 0x4
    bne-    branch_0x80339cf8
    addi    r4, r22, 0x0
    addi    r3, r21, 0x0
    addi    r5, r26, 0x0
    addi    r6, sp, 0x21c
    bl      longlong2str
    mr.     r19, r3
    beq-    branch_0x80339eb0
    b       branch_0x80339d10

branch_0x80339cf8:
    addi    r3, r29, 0x0
    addi    r4, r26, 0x0
    addi    r5, sp, 0x21c
    bl      long2str
    mr.     r19, r3
    beq-    branch_0x80339eb0
branch_0x80339d10:
    subf    r24, r19, r23
    b       branch_0x80339ef0

branch_0x80339d18:
    addi    r3, r28, 0x0
    addi    r4, r26, 0x0
    addi    r5, sp, 0x21c
    li      r6, 0x0
    bl      float2str
    mr.     r19, r3
    beq-    branch_0x80339eb0
    subf    r24, r19, r23
    b       branch_0x80339ef0

branch_0x80339d3c:
    lbz     r0, 0x220(sp)
    cmplwi  r0, 0x6
    bne-    branch_0x80339d80
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x80339d64
    subi    r4, r13, 0x7398
branch_0x80339d64:
    addi    r3, sp, 0x1c
    li      r5, 0x200
    bl      wcstombs
    cmpwi   r3, 0x0
    blt-    branch_0x80339eb0
    addi    r19, sp, 0x1c
    b       branch_0x80339d90

branch_0x80339d80:
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r19, 0x0(r3)
branch_0x80339d90:
    cmplwi  r19, 0x0
    bne-    branch_0x80339d9c
    mr      r19, r20
branch_0x80339d9c:
    lbz     r0, 0x21f(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x80339dd0
    lbz     r0, 0x21e(sp)
    lbz     r24, 0x0(r19)
    addi    r19, r19, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x80339ef0
    lwz     r0, 0x228(sp)
    cmpw    r24, r0
    ble-    branch_0x80339ef0
    mr      r24, r0
    b       branch_0x80339ef0

branch_0x80339dd0:
    lbz     r0, 0x21e(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x80339e00
    lwz     r24, 0x228(sp)
    addi    r3, r19, 0x0
    li      r4, 0x0
    addi    r5, r24, 0x0
    bl      memchr
    cmplwi  r3, 0x0
    beq-    branch_0x80339ef0
    subf    r24, r19, r3
    b       branch_0x80339ef0

branch_0x80339e00:
    mr      r3, r19
    bl      strlen
    mr      r24, r3
    b       branch_0x80339ef0

branch_0x80339e10:
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      __va_arg
    lbz     r0, 0x220(sp)
    lwz     r3, 0x0(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80339e54
    bge-    branch_0x80339e3c
    cmpwi   r0, 0x0
    beq-    branch_0x80339e4c
    b       branch_0x8033a030

branch_0x80339e3c:
    cmpwi   r0, 0x4
    beq-    branch_0x80339e68
    bge-    branch_0x8033a030
    b       branch_0x80339e60

branch_0x80339e4c:
    stw     r27, 0x0(r3)
    b       branch_0x8033a030

branch_0x80339e54:
    extsh   r0, r27
    sth     r0, 0x0(r3)
    b       branch_0x8033a030

branch_0x80339e60:
    stw     r27, 0x0(r3)
    b       branch_0x8033a030

branch_0x80339e68:
    stw     r27, 0x4(r3)
    srawi   r0, r27, 31
    stw     r0, 0x0(r3)
    b       branch_0x8033a030

branch_0x80339e78:
    addi    r3, r28, 0x0
    addi    r19, sp, 0x1c
    li      r4, 0x1
    bl      __va_arg
    lwz     r0, 0x0(r3)
    li      r24, 0x1
    extsb   r0, r0
    stb     r0, 0x1c(sp)
    b       branch_0x80339ef0

branch_0x80339e9c:
    li      r0, 0x25
    stb     r0, 0x1c(sp)
    addi    r19, sp, 0x1c
    li      r24, 0x1
    b       branch_0x80339ef0

branch_0x80339eb0:
    mr      r3, r24
    bl      strlen
    mr.     r5, r3
    add     r27, r27, r5
    beq-    branch_0x80339ee8
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r24, 0x0
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80339ee8
    li      r3, -0x1
    b       branch_0x8033a040

branch_0x80339ee8:
    mr      r3, r27
    b       branch_0x8033a040

branch_0x80339ef0:
    lbz     r0, 0x21c(sp)
    addi    r18, r24, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x80339fac
    cmplwi  r0, 0x2
    bne-    branch_0x80339f10
    li      r0, 0x30
    b       branch_0x80339f14

branch_0x80339f10:
    li      r0, 0x20
branch_0x80339f14:
    extsb   r0, r0
    stb     r0, 0x19(sp)
    lbz     r0, 0x0(r19)
    extsb   r0, r0
    cmpwi   r0, 0x2b
    beq-    branch_0x80339f34
    cmpwi   r0, 0x2d
    bne-    branch_0x80339fa0
branch_0x80339f34:
    lbz     r0, 0x19(sp)
    cmpwi   r0, 0x30
    bne-    branch_0x80339fa0
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r19, 0x0
    li      r5, 0x1
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80339f68
    li      r3, -0x1
    b       branch_0x8033a040

branch_0x80339f68:
    addi    r19, r19, 0x1
    subi    r24, r24, 0x1
    b       branch_0x80339fa0

branch_0x80339f74:
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, sp, 0x19
    li      r5, 0x1
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80339f9c
    li      r3, -0x1
    b       branch_0x8033a040

branch_0x80339f9c:
    addi    r18, r18, 0x1
branch_0x80339fa0:
    lwz     r0, 0x224(sp)
    cmpw    r18, r0
    blt+    branch_0x80339f74
branch_0x80339fac:
    cmpwi   r24, 0x0
    beq-    branch_0x80339fdc
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r19, 0x0
    addi    r5, r24, 0x0
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80339fdc
    li      r3, -0x1
    b       branch_0x8033a040

branch_0x80339fdc:
    lbz     r0, 0x21c(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x8033a02c
    li      r19, 0x20
    b       branch_0x8033a020

branch_0x80339ff0:
    mr      r12, r31
    stb     r19, 0x18(sp)
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x1
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8033a01c
    li      r3, -0x1
    b       branch_0x8033a040

branch_0x8033a01c:
    addi    r18, r18, 0x1
branch_0x8033a020:
    lwz     r0, 0x224(sp)
    cmpw    r18, r0
    blt+    branch_0x80339ff0
branch_0x8033a02c:
    add     r27, r27, r18
branch_0x8033a030:
    lbz     r0, 0x0(r25)
    extsb.  r0, r0
    bne+    branch_0x80339a64
branch_0x8033a03c:
    mr      r3, r27
branch_0x8033a040:
    lmw     r18, 0x230(sp)
    lwz     r0, 0x26c(sp)
    addi    sp, sp, 0x268
    mtlr    r0
    blr


.globl float2str
float2str: # 0x8033a054
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r5
    stw     r28, 0x48(sp)
    addi    r28, r4, 0x0
    lbz     r0, 0x4(r5)
    cmplwi  r0, 0x5
    bne-    branch_0x8033a098
    li      r4, 0x3
    bl      __va_arg
    lfd     f31, 0x0(r3)
    b       branch_0x8033a0a4

branch_0x8033a098:
    li      r4, 0x3
    bl      __va_arg
    lfd     f31, 0x0(r3)
branch_0x8033a0a4:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x1fd
    ble-    branch_0x8033a0b8
    li      r3, 0x0
    b       branch_0x8033a668

branch_0x8033a0b8:
    li      r0, 0x0
    fmr     f1, f31
    stb     r0, 0x18(sp)
    li      r0, 0x20
    addi    r3, sp, 0x18
    sth     r0, 0x1a(sp)
    addi    r4, sp, 0x1c
    bl      __num2dec
    lbz     r0, 0x20(sp)
    addi    r31, sp, 0x21
    add     r4, r31, r0
    b       branch_0x8033a100

branch_0x8033a0e8:
    lbz     r3, 0x20(sp)
    subi    r0, r3, 0x1
    stb     r0, 0x20(sp)
    lha     r3, 0x1e(sp)
    addi    r0, r3, 0x1
    sth     r0, 0x1e(sp)
branch_0x8033a100:
    lbz     r0, 0x20(sp)
    cmplwi  r0, 0x1
    ble-    branch_0x8033a118
    lbzu    r0, -0x1(r4)
    cmpwi   r0, 0x30
    beq+    branch_0x8033a0e8
branch_0x8033a118:
    lbz     r0, 0x21(sp)
    cmpwi   r0, 0x49
    beq-    branch_0x8033a14c
    bge-    branch_0x8033a134
    cmpwi   r0, 0x30
    beq-    branch_0x8033a140
    b       branch_0x8033a1b4

branch_0x8033a134:
    cmpwi   r0, 0x4e
    beq-    branch_0x8033a194
    b       branch_0x8033a1b4

branch_0x8033a140:
    li      r0, 0x0
    sth     r0, 0x1e(sp)
    b       branch_0x8033a1b4

branch_0x8033a14c:
    lfd     f0, 0x9d8(rtoc)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8033a174
    lis     r3, 0x803b
    subi    r28, r28, 0x5
    subi    r4, r3, 0x5378
    addi    r3, r28, 0x0
    addi    r4, r4, 0x1
    bl      strcpy
    b       branch_0x8033a18c

branch_0x8033a174:
    lis     r3, 0x803b
    subi    r28, r28, 0x4
    subi    r4, r3, 0x5378
    addi    r3, r28, 0x0
    addi    r4, r4, 0x6
    bl      strcpy
branch_0x8033a18c:
    mr      r3, r28
    b       branch_0x8033a668

branch_0x8033a194:
    lis     r3, 0x803b
    subi    r28, r28, 0x4
    subi    r4, r3, 0x5378
    addi    r3, r28, 0x0
    addi    r4, r4, 0xa
    bl      strcpy
    mr      r3, r28
    b       branch_0x8033a668

branch_0x8033a1b4:
    lha     r4, 0x1e(sp)
    li      r0, 0x0
    lbz     r3, 0x20(sp)
    subi    r30, r28, 0x1
    add     r3, r3, r4
    subi    r3, r3, 0x1
    sth     r3, 0x1e(sp)
    stb     r0, -0x1(r28)
    lbz     r0, 0x5(r29)
    cmpwi   r0, 0x65
    beq-    branch_0x8033a2d0
    bge-    branch_0x8033a208
    cmpwi   r0, 0x46
    beq-    branch_0x8033a664
    bge-    branch_0x8033a1fc
    cmpwi   r0, 0x45
    bge-    branch_0x8033a2d0
    b       branch_0x8033a664

branch_0x8033a1fc:
    cmpwi   r0, 0x48
    bge-    branch_0x8033a664
    b       branch_0x8033a218

branch_0x8033a208:
    cmpwi   r0, 0x67
    beq-    branch_0x8033a218
    bge-    branch_0x8033a664
    b       branch_0x8033a440

branch_0x8033a218:
    lbz     r0, 0x20(sp)
    lwz     r4, 0xc(r29)
    cmpw    r0, r4
    ble-    branch_0x8033a230
    addi    r3, sp, 0x1c
    bl      round_decimal
branch_0x8033a230:
    lha     r4, 0x1e(sp)
    cmpwi   r4, -0x4
    blt-    branch_0x8033a248
    lwz     r3, 0xc(r29)
    cmpw    r4, r3
    blt-    branch_0x8033a294
branch_0x8033a248:
    lbz     r0, 0x3(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a264
    lwz     r3, 0xc(r29)
    subi    r0, r3, 0x1
    stw     r0, 0xc(r29)
    b       branch_0x8033a270

branch_0x8033a264:
    lbz     r3, 0x20(sp)
    subi    r0, r3, 0x1
    stw     r0, 0xc(r29)
branch_0x8033a270:
    lbz     r0, 0x5(r29)
    cmplwi  r0, 0x67
    bne-    branch_0x8033a288
    li      r0, 0x65
    stb     r0, 0x5(r29)
    b       branch_0x8033a2d0

branch_0x8033a288:
    li      r0, 0x45
    stb     r0, 0x5(r29)
    b       branch_0x8033a2d0

branch_0x8033a294:
    lbz     r0, 0x3(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a2b0
    addi    r0, r4, 0x1
    subf    r0, r0, r3
    stw     r0, 0xc(r29)
    b       branch_0x8033a440

branch_0x8033a2b0:
    lbz     r0, 0x20(sp)
    addi    r3, r4, 0x1
    subf.   r0, r3, r0
    stw     r0, 0xc(r29)
    bge-    branch_0x8033a440
    li      r0, 0x0
    stw     r0, 0xc(r29)
    b       branch_0x8033a440

branch_0x8033a2d0:
    lwz     r3, 0xc(r29)
    lbz     r0, 0x20(sp)
    addi    r4, r3, 0x1
    cmpw    r0, r4
    ble-    branch_0x8033a2ec
    addi    r3, sp, 0x1c
    bl      round_decimal
branch_0x8033a2ec:
    lha     r0, 0x1e(sp)
    li      r8, 0x2b
    cmpwi   r0, 0x0
    mr      r4, r0
    bge-    branch_0x8033a308
    neg     r4, r4
    li      r8, 0x2d
branch_0x8033a308:
    lis     r3, 0x6666
    addi    r5, r3, 0x6667
    li      r7, 0x0
    b       branch_0x8033a34c

branch_0x8033a318:
    mulhw   r6, r5, r4
    srawi   r0, r6, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xa
    subf    r4, r0, r4
    srawi   r0, r6, 2
    addi    r4, r4, 0x30
    stb     r4, -0x1(r30)
    srwi    r3, r0, 31
    add     r4, r0, r3
    addi    r7, r7, 0x1
    subi    r30, r30, 0x1
branch_0x8033a34c:
    cmpwi   r4, 0x0
    bne+    branch_0x8033a318
    cmpwi   r7, 0x2
    blt+    branch_0x8033a318
    extsb   r0, r8
    stb     r0, -0x1(r30)
    subi    r30, r30, 0x2
    subf    r0, r30, r28
    lbz     r3, 0x5(r29)
    stb     r3, 0x0(r30)
    lwz     r3, 0xc(r29)
    add     r0, r3, r0
    cmpwi   r0, 0x1fd
    ble-    branch_0x8033a38c
    li      r3, 0x0
    b       branch_0x8033a668

branch_0x8033a38c:
    lbz     r4, 0x20(sp)
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x8033a3b8
    addi    r0, r3, 0x2
    subf    r3, r4, r0
    li      r0, 0x30
    b       branch_0x8033a3b0

branch_0x8033a3ac:
    stbu    r0, -0x1(r30)
branch_0x8033a3b0:
    subic.  r3, r3, 0x1
    bne+    branch_0x8033a3ac
branch_0x8033a3b8:
    lbz     r3, 0x20(sp)
    add     r4, r31, r3
    b       branch_0x8033a3cc

branch_0x8033a3c4:
    lbzu    r0, -0x1(r4)
    stbu    r0, -0x1(r30)
branch_0x8033a3cc:
    subic.  r3, r3, 0x1
    bne+    branch_0x8033a3c4
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x8033a3ec
    lbz     r0, 0x3(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a3f4
branch_0x8033a3ec:
    li      r0, 0x2e
    stbu    r0, -0x1(r30)
branch_0x8033a3f4:
    lbz     r0, 0x21(sp)
    stbu    r0, -0x1(r30)
    lbz     r0, 0x1c(sp)
    extsb.  r0, r0
    beq-    branch_0x8033a414
    li      r0, 0x2d
    stbu    r0, -0x1(r30)
    b       branch_0x8033a664

branch_0x8033a414:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x8033a42c
    li      r0, 0x2b
    stbu    r0, -0x1(r30)
    b       branch_0x8033a664

branch_0x8033a42c:
    cmplwi  r0, 0x2
    bne-    branch_0x8033a664
    li      r0, 0x20
    stbu    r0, -0x1(r30)
    b       branch_0x8033a664

branch_0x8033a440:
    lha     r0, 0x1e(sp)
    lbz     r4, 0x20(sp)
    subf    r0, r0, r4
    subic.  r7, r0, 0x1
    bge-    branch_0x8033a458
    li      r7, 0x0
branch_0x8033a458:
    lwz     r0, 0xc(r29)
    cmpw    r7, r0
    ble-    branch_0x8033a48c
    subf    r0, r0, r7
    addi    r3, sp, 0x1c
    subf    r4, r0, r4
    bl      round_decimal
    lha     r3, 0x1e(sp)
    lbz     r0, 0x20(sp)
    subf    r0, r3, r0
    subic.  r7, r0, 0x1
    bge-    branch_0x8033a48c
    li      r7, 0x0
branch_0x8033a48c:
    lha     r0, 0x1e(sp)
    addic.  r6, r0, 0x1
    bge-    branch_0x8033a49c
    li      r6, 0x0
branch_0x8033a49c:
    add     r0, r6, r7
    cmpwi   r0, 0x1fd
    ble-    branch_0x8033a4b0
    li      r3, 0x0
    b       branch_0x8033a668

branch_0x8033a4b0:
    lbz     r0, 0x20(sp)
    li      r4, 0x0
    li      r3, 0x30
    add     r5, r31, r0
    b       branch_0x8033a4cc

branch_0x8033a4c4:
    stbu    r3, -0x1(r30)
    addi    r4, r4, 0x1
branch_0x8033a4cc:
    lwz     r0, 0xc(r29)
    subf    r0, r7, r0
    cmpw    r4, r0
    blt+    branch_0x8033a4c4
    li      r3, 0x0
    b       branch_0x8033a4f0

branch_0x8033a4e4:
    lbzu    r0, -0x1(r5)
    addi    r3, r3, 0x1
    stbu    r0, -0x1(r30)
branch_0x8033a4f0:
    cmpw    r3, r7
    bge-    branch_0x8033a504
    lbz     r0, 0x20(sp)
    cmpw    r3, r0
    blt+    branch_0x8033a4e4
branch_0x8033a504:
    cmpw    r3, r7
    subf    r3, r3, r7
    li      r4, 0x30
    bge-    branch_0x8033a558
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x8033a54c
branch_0x8033a520:
    stb     r4, -0x1(r30)
    stb     r4, -0x2(r30)
    stb     r4, -0x3(r30)
    stb     r4, -0x4(r30)
    stb     r4, -0x5(r30)
    stb     r4, -0x6(r30)
    stb     r4, -0x7(r30)
    stbu    r4, -0x8(r30)
    bdnz+      branch_0x8033a520
    andi.   r3, r3, 0x7
    beq-    branch_0x8033a558
branch_0x8033a54c:
    mtctr   r3
branch_0x8033a550:
    stbu    r4, -0x1(r30)
    bdnz+      branch_0x8033a550
branch_0x8033a558:
    lwz     r0, 0xc(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x8033a570
    lbz     r0, 0x3(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a578
branch_0x8033a570:
    li      r0, 0x2e
    stbu    r0, -0x1(r30)
branch_0x8033a578:
    cmpwi   r6, 0x0
    beq-    branch_0x8033a61c
    li      r4, 0x0
    li      r3, 0x30
    b       branch_0x8033a594

branch_0x8033a58c:
    stbu    r3, -0x1(r30)
    addi    r4, r4, 0x1
branch_0x8033a594:
    lbz     r0, 0x20(sp)
    subf    r0, r0, r6
    cmpw    r4, r0
    blt+    branch_0x8033a58c
    cmpw    r4, r6
    subf    r3, r4, r6
    bge-    branch_0x8033a624
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x8033a608
branch_0x8033a5bc:
    lbz     r0, -0x1(r5)
    stb     r0, -0x1(r30)
    lbz     r0, -0x2(r5)
    stb     r0, -0x2(r30)
    lbz     r0, -0x3(r5)
    stb     r0, -0x3(r30)
    lbz     r0, -0x4(r5)
    stb     r0, -0x4(r30)
    lbz     r0, -0x5(r5)
    stb     r0, -0x5(r30)
    lbz     r0, -0x6(r5)
    stb     r0, -0x6(r30)
    lbz     r0, -0x7(r5)
    stb     r0, -0x7(r30)
    lbzu    r0, -0x8(r5)
    stbu    r0, -0x8(r30)
    bdnz+      branch_0x8033a5bc
    andi.   r3, r3, 0x7
    beq-    branch_0x8033a624
branch_0x8033a608:
    mtctr   r3
branch_0x8033a60c:
    lbzu    r0, -0x1(r5)
    stbu    r0, -0x1(r30)
    bdnz+      branch_0x8033a60c
    b       branch_0x8033a624

branch_0x8033a61c:
    li      r0, 0x30
    stbu    r0, -0x1(r30)
branch_0x8033a624:
    lbz     r0, 0x1c(sp)
    extsb.  r0, r0
    beq-    branch_0x8033a63c
    li      r0, 0x2d
    stbu    r0, -0x1(r30)
    b       branch_0x8033a664

branch_0x8033a63c:
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x8033a654
    li      r0, 0x2b
    stbu    r0, -0x1(r30)
    b       branch_0x8033a664

branch_0x8033a654:
    cmplwi  r0, 0x2
    bne-    branch_0x8033a664
    li      r0, 0x20
    stbu    r0, -0x1(r30)
branch_0x8033a664:
    mr      r3, r30
branch_0x8033a668:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl round_decimal
round_decimal: # 0x8033a68c
    cmpwi   r4, 0x0
    bge-    branch_0x8033a6b4
branch_0x8033a694:
    li      r5, 0x0
    stb     r5, 0x0(r3)
    li      r4, 0x1
    li      r0, 0x30
    sth     r5, 0x2(r3)
    stb     r4, 0x4(r3)
    stb     r0, 0x5(r3)
    blr

branch_0x8033a6b4:
    lbz     r0, 0x4(r3)
    cmpw    r4, r0
    bgelr-    

    add     r5, r3, r4
    addi    r8, r5, 0x6
    lbzu    r5, -0x1(r8)
    subi    r5, r5, 0x30
    extsb   r6, r5
    cmpwi   r6, 0x5
    bne-    branch_0x8033a71c
    add     r5, r3, r0
    addi    r5, r5, 0x5
branch_0x8033a6e4:
    subi    r5, r5, 0x1
    cmplw   r5, r8
    ble-    branch_0x8033a6fc
    lbz     r0, 0x0(r5)
    cmpwi   r0, 0x30
    beq+    branch_0x8033a6e4
branch_0x8033a6fc:
    cmplw   r5, r8
    bne-    branch_0x8033a710
    lbz     r0, -0x1(r8)
    clrlwi  r0, r0, 31
    b       branch_0x8033a714

branch_0x8033a710:
    li      r0, 0x1
branch_0x8033a714:
    mr      r5, r0
    b       branch_0x8033a77c

branch_0x8033a71c:
    li      r5, 0x5
    eqv     r0, r6, r5
    subfc   r5, r6, r5
    srwi    r0, r0, 31
    addze   r5, r0
    clrlwi  r5, r5, 31
    b       branch_0x8033a77c

branch_0x8033a738:
    lbzu    r0, -0x1(r8)
    add     r7, r0, r5
    subi    r7, r7, 0x30
    extsb   r5, r7
    eqv     r0, r5, r6
    subfc   r5, r5, r6
    srwi    r0, r0, 31
    addze   r5, r0
    clrlwi. r5, r5, 31
    bne-    branch_0x8033a768
    extsb.  r0, r7
    bne-    branch_0x8033a770
branch_0x8033a768:
    subi    r4, r4, 0x1
    b       branch_0x8033a780

branch_0x8033a770:
    addi    r0, r7, 0x30
    stb     r0, 0x0(r8)
    b       branch_0x8033a788

branch_0x8033a77c:
    li      r6, 0x9
branch_0x8033a780:
    cmpwi   r4, 0x0
    bne+    branch_0x8033a738
branch_0x8033a788:
    cmpwi   r5, 0x0
    beq-    branch_0x8033a7b0
    lha     r5, 0x2(r3)
    li      r4, 0x1
    li      r0, 0x31
    addi    r5, r5, 0x1
    sth     r5, 0x2(r3)
    stb     r4, 0x4(r3)
    stb     r0, 0x5(r3)
    blr

branch_0x8033a7b0:
    cmpwi   r4, 0x0
    beq+    branch_0x8033a694
    stb     r4, 0x4(r3)
    blr


.globl longlong2str
longlong2str: # 0x8033a7c0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stmw    r22, 0x18(sp)
    addi    r23, r5, 0x0
    xor     r5, r4, r0
    subi    r27, r23, 0x1
    addi    r24, r6, 0x0
    addi    r30, r4, 0x0
    addi    r31, r3, 0x0
    li      r25, 0x0
    li      r26, 0x0
    stb     r0, -0x1(r23)
    xor     r0, r3, r0
    or.     r0, r5, r0
    bne-    branch_0x8033a830
    lwz     r0, 0xc(r24)
    cmpwi   r0, 0x0
    bne-    branch_0x8033a830
    lbz     r0, 0x3(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a828
    lbz     r0, 0x5(r24)
    cmplwi  r0, 0x6f
    beq-    branch_0x8033a830
branch_0x8033a828:
    mr      r3, r27
    b       branch_0x8033aa8c

branch_0x8033a830:
    lbz     r5, 0x5(r24)
    subi    r0, r5, 0x58
    cmplwi  r0, 0x20
    bgt-    branch_0x8033a8c8
    lis     r5, 0x803e
    addi    r5, r5, 0x6558
    slwi    r0, r0, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr       
    li      r0, 0x0
    xoris   r5, r3, 0x8000
    xoris   r3, r0, 0x8000
    subfc   r0, r0, r4
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg.    r3, r3
    li      r28, 0xa
    li      r29, 0x0
    beq-    branch_0x8033a8c8
    subfic  r30, r30, 0x0
    subfze  r31, r31
    li      r25, 0x1
    b       branch_0x8033a8c8


.incbin "./baserom/code/Text_0x80005600.bin", 0x335290, 0x8033a8c8 - 0x8033a890
branch_0x8033a8c8:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r6, r28, 0x0
    bl      __mod2u
    addi    r22, r4, 0x0
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r6, r28, 0x0
    bl      __div2u
    cmpwi   r22, 0xa
    addi    r30, r4, 0x0
    addi    r31, r3, 0x0
    bge-    branch_0x8033a90c
    addi    r5, r22, 0x30
    b       branch_0x8033a924

branch_0x8033a90c:
    lbz     r0, 0x5(r24)
    cmplwi  r0, 0x78
    bne-    branch_0x8033a920
    addi    r5, r22, 0x57
    b       branch_0x8033a924

branch_0x8033a920:
    addi    r5, r22, 0x37
branch_0x8033a924:
    li      r4, 0x0
    xor     r3, r30, r4
    xor     r0, r31, r4
    or.     r0, r3, r0
    extsb   r0, r5
    addi    r26, r26, 0x1
    stbu    r0, -0x1(r27)
    bne+    branch_0x8033a8c8
    li      r0, 0x8
    xor     r3, r28, r0
    xor     r0, r29, r4
    or.     r0, r3, r0
    bne-    branch_0x8033a97c
    lbz     r0, 0x3(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a97c
    lbz     r0, 0x0(r27)
    cmpwi   r0, 0x30
    beq-    branch_0x8033a97c
    li      r0, 0x30
    stbu    r0, -0x1(r27)
    addi    r26, r26, 0x1
branch_0x8033a97c:
    lbz     r0, 0x0(r24)
    cmplwi  r0, 0x2
    bne-    branch_0x8033a9e0
    lwz     r0, 0x8(r24)
    cmpwi   r25, 0x0
    stw     r0, 0xc(r24)
    bne-    branch_0x8033a9a4
    lbz     r0, 0x1(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a9b0
branch_0x8033a9a4:
    lwz     r3, 0xc(r24)
    subi    r0, r3, 0x1
    stw     r0, 0xc(r24)
branch_0x8033a9b0:
    li      r3, 0x10
    li      r0, 0x0
    xor     r3, r28, r3
    xor     r0, r29, r0
    or.     r0, r3, r0
    bne-    branch_0x8033a9e0
    lbz     r0, 0x3(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x8033a9e0
    lwz     r3, 0xc(r24)
    subi    r0, r3, 0x2
    stw     r0, 0xc(r24)
branch_0x8033a9e0:
    lwz     r3, 0xc(r24)
    subf    r0, r27, r23
    add     r0, r3, r0
    cmpwi   r0, 0x1fd
    ble-    branch_0x8033a9fc
    li      r3, 0x0
    b       branch_0x8033aa8c

branch_0x8033a9fc:
    li      r3, 0x30
    b       branch_0x8033aa0c

branch_0x8033aa04:
    stbu    r3, -0x1(r27)
    addi    r26, r26, 0x1
branch_0x8033aa0c:
    lwz     r0, 0xc(r24)
    cmpw    r26, r0
    blt+    branch_0x8033aa04
    li      r3, 0x10
    li      r0, 0x0
    xor     r3, r28, r3
    xor     r0, r29, r0
    or.     r0, r3, r0
    bne-    branch_0x8033aa4c
    lbz     r0, 0x3(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x8033aa4c
    lbz     r3, 0x5(r24)
    li      r0, 0x30
    stb     r3, -0x1(r27)
    stbu    r0, -0x2(r27)
branch_0x8033aa4c:
    cmpwi   r25, 0x0
    beq-    branch_0x8033aa60
    li      r0, 0x2d
    stbu    r0, -0x1(r27)
    b       branch_0x8033aa88

branch_0x8033aa60:
    lbz     r0, 0x1(r24)
    cmplwi  r0, 0x1
    bne-    branch_0x8033aa78
    li      r0, 0x2b
    stbu    r0, -0x1(r27)
    b       branch_0x8033aa88

branch_0x8033aa78:
    cmplwi  r0, 0x2
    bne-    branch_0x8033aa88
    li      r0, 0x20
    stbu    r0, -0x1(r27)
branch_0x8033aa88:
    mr      r3, r27
branch_0x8033aa8c:
    lmw     r22, 0x18(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl long2str
long2str: # 0x8033aaa0
    li      r7, 0x0
    stb     r7, -0x1(r4)
    cmpwi   r3, 0x0
    subi    r6, r4, 0x1
    li      r8, 0x0
    li      r7, 0x0
    bne-    branch_0x8033aae8
    lwz     r9, 0xc(r5)
    cmpwi   r9, 0x0
    bne-    branch_0x8033aae8
    lbz     r9, 0x3(r5)
    cmplwi  r9, 0x0
    beq-    branch_0x8033aae0
    lbz     r9, 0x5(r5)
    cmplwi  r9, 0x6f
    beq-    branch_0x8033aae8
branch_0x8033aae0:
    mr      r3, r6
    blr

branch_0x8033aae8:
    lbz     r9, 0x5(r5)
    subi    r10, r9, 0x58
    cmplwi  r10, 0x20
    bgt-    branch_0x8033ab54
    lis     r9, 0x803e
    addi    r9, r9, 0x65dc
    slwi    r10, r10, 2
    lwzx    r9, r9, r10
    mtctr   r9
    bctr       
    cmpwi   r3, 0x0
    li      r0, 0xa
    bge-    branch_0x8033ab54
    neg     r3, r3
    li      r8, 0x1
    b       branch_0x8033ab54


.incbin "./baserom/code/Text_0x80005600.bin", 0x335528, 0x8033ab54 - 0x8033ab28
branch_0x8033ab54:
    divwu   r9, r3, r0
    mullw   r9, r9, r0
    subf    r10, r9, r3
    divwu   r3, r3, r0
    cmpwi   r10, 0xa
    bge-    branch_0x8033ab74
    addi    r10, r10, 0x30
    b       branch_0x8033ab8c

branch_0x8033ab74:
    lbz     r9, 0x5(r5)
    cmplwi  r9, 0x78
    bne-    branch_0x8033ab88
    addi    r10, r10, 0x57
    b       branch_0x8033ab8c

branch_0x8033ab88:
    addi    r10, r10, 0x37
branch_0x8033ab8c:
    extsb   r9, r10
    stb     r9, -0x1(r6)
    cmplwi  r3, 0x0
    subi    r6, r6, 0x1
    addi    r7, r7, 0x1
    bne+    branch_0x8033ab54
    cmplwi  r0, 0x8
    bne-    branch_0x8033abd0
    lbz     r3, 0x3(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x8033abd0
    lbz     r3, 0x0(r6)
    cmpwi   r3, 0x30
    beq-    branch_0x8033abd0
    li      r3, 0x30
    stbu    r3, -0x1(r6)
    addi    r7, r7, 0x1
branch_0x8033abd0:
    lbz     r3, 0x0(r5)
    cmplwi  r3, 0x2
    bne-    branch_0x8033ac24
    lwz     r3, 0x8(r5)
    cmpwi   r8, 0x0
    stw     r3, 0xc(r5)
    bne-    branch_0x8033abf8
    lbz     r3, 0x1(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x8033ac04
branch_0x8033abf8:
    lwz     r3, 0xc(r5)
    subi    r3, r3, 0x1
    stw     r3, 0xc(r5)
branch_0x8033ac04:
    cmplwi  r0, 0x10
    bne-    branch_0x8033ac24
    lbz     r3, 0x3(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x8033ac24
    lwz     r3, 0xc(r5)
    subi    r3, r3, 0x2
    stw     r3, 0xc(r5)
branch_0x8033ac24:
    lwz     r9, 0xc(r5)
    subf    r3, r6, r4
    add     r3, r9, r3
    cmpwi   r3, 0x1fd
    ble-    branch_0x8033ac40
    li      r3, 0x0
    blr

branch_0x8033ac40:
    li      r4, 0x30
    b       branch_0x8033ac50

branch_0x8033ac48:
    stbu    r4, -0x1(r6)
    addi    r7, r7, 0x1
branch_0x8033ac50:
    lwz     r3, 0xc(r5)
    cmpw    r7, r3
    blt+    branch_0x8033ac48
    cmplwi  r0, 0x10
    bne-    branch_0x8033ac80
    lbz     r0, 0x3(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8033ac80
    lbz     r3, 0x5(r5)
    li      r0, 0x30
    stb     r3, -0x1(r6)
    stbu    r0, -0x2(r6)
branch_0x8033ac80:
    cmpwi   r8, 0x0
    beq-    branch_0x8033ac94
    li      r0, 0x2d
    stbu    r0, -0x1(r6)
    b       branch_0x8033acbc

branch_0x8033ac94:
    lbz     r0, 0x1(r5)
    cmplwi  r0, 0x1
    bne-    branch_0x8033acac
    li      r0, 0x2b
    stbu    r0, -0x1(r6)
    b       branch_0x8033acbc

branch_0x8033acac:
    cmplwi  r0, 0x2
    bne-    branch_0x8033acbc
    li      r0, 0x20
    stbu    r0, -0x1(r6)
branch_0x8033acbc:
    mr      r3, r6
    blr


.globl parse_format
parse_format: # 0x8033acc4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x1
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    stb     r0, 0x14(sp)
    li      r0, 0x0
    stb     r0, 0x15(sp)
    stb     r0, 0x16(sp)
    stb     r0, 0x17(sp)
    stb     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lbz     r3, 0x1(r3)
    extsb   r3, r3
    cmpwi   r3, 0x25
    bne-    branch_0x8033ad48
    stb     r3, 0x19(sp)
    addi    r3, r31, 0x1
    lwz     r4, 0x14(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0x8(r30)
    stw     r0, 0xc(r30)
    b       branch_0x8033b180

branch_0x8033ad48:
    lis     r4, 0x803e
    addi    r4, r4, 0x6730
branch_0x8033ad50:
    subi    r0, r3, 0x20
    cmplwi  r0, 0x10
    li      r5, 0x1
    bgt-    branch_0x8033adc4
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    li      r0, 0x0
    stb     r0, 0x14(sp)
    b       branch_0x8033adc8


.incbin "./baserom/code/Text_0x80005600.bin", 0x33577c, 0x8033adc4 - 0x8033ad7c
branch_0x8033adc4:
    li      r5, 0x0
branch_0x8033adc8:
    cmpwi   r5, 0x0
    beq-    branch_0x8033addc
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
    b       branch_0x8033ad50

branch_0x8033addc:
    cmpwi   r3, 0x2a
    bne-    branch_0x8033ae20
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    stw     r0, 0x1c(sp)
    bge-    branch_0x8033ae14
    li      r0, 0x0
    stb     r0, 0x14(sp)
    lwz     r0, 0x1c(sp)
    neg     r0, r0
    stw     r0, 0x1c(sp)
branch_0x8033ae14:
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
    b       branch_0x8033ae5c

branch_0x8033ae20:
    lis     r4, 0x803b
    subi    r5, r4, 0x5678
    b       branch_0x8033ae48

branch_0x8033ae2c:
    lwz     r0, 0x1c(sp)
    mulli   r0, r0, 0xa
    add     r3, r3, r0
    subi    r0, r3, 0x30
    stw     r0, 0x1c(sp)
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
branch_0x8033ae48:
    clrlwi  r0, r3, 24
    add     r4, r5, r0
    lbz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 27, 27
    bne+    branch_0x8033ae2c
branch_0x8033ae5c:
    lwz     r0, 0x1c(sp)
    cmpwi   r0, 0x1fd
    ble-    branch_0x8033ae98
    li      r0, 0xff
    stb     r0, 0x19(sp)
    addi    r3, r31, 0x1
    lwz     r4, 0x14(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0x8(r30)
    stw     r0, 0xc(r30)
    b       branch_0x8033b180

branch_0x8033ae98:
    cmpwi   r3, 0x2e
    bne-    branch_0x8033af24
    li      r0, 0x1
    stb     r0, 0x16(sp)
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
    cmpwi   r3, 0x2a
    bne-    branch_0x8033aee8
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      __va_arg
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    stw     r0, 0x20(sp)
    bge-    branch_0x8033aedc
    li      r0, 0x0
    stb     r0, 0x16(sp)
branch_0x8033aedc:
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
    b       branch_0x8033af24

branch_0x8033aee8:
    lis     r4, 0x803b
    subi    r5, r4, 0x5678
    b       branch_0x8033af10

branch_0x8033aef4:
    lwz     r0, 0x20(sp)
    mulli   r0, r0, 0xa
    add     r3, r3, r0
    subi    r0, r3, 0x30
    stw     r0, 0x20(sp)
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
branch_0x8033af10:
    clrlwi  r0, r3, 24
    add     r4, r5, r0
    lbz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 27, 27
    bne+    branch_0x8033aef4
branch_0x8033af24:
    cmpwi   r3, 0x68
    li      r4, 0x1
    beq-    branch_0x8033af4c
    bge-    branch_0x8033af40
    cmpwi   r3, 0x4c
    beq-    branch_0x8033af98
    b       branch_0x8033afa4

branch_0x8033af40:
    cmpwi   r3, 0x6c
    beq-    branch_0x8033af70
    b       branch_0x8033afa4

branch_0x8033af4c:
    li      r0, 0x2
    stb     r0, 0x18(sp)
    lbz     r0, 0x1(r31)
    cmpwi   r0, 0x68
    bne-    branch_0x8033afa8
    stb     r4, 0x18(sp)
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
    b       branch_0x8033afa8

branch_0x8033af70:
    li      r0, 0x3
    stb     r0, 0x18(sp)
    lbz     r0, 0x1(r31)
    cmpwi   r0, 0x6c
    bne-    branch_0x8033afa8
    li      r0, 0x4
    stb     r0, 0x18(sp)
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
    b       branch_0x8033afa8

branch_0x8033af98:
    li      r0, 0x5
    stb     r0, 0x18(sp)
    b       branch_0x8033afa8

branch_0x8033afa4:
    li      r4, 0x0
branch_0x8033afa8:
    cmpwi   r4, 0x0
    beq-    branch_0x8033afb8
    lbzu    r3, 0x1(r31)
    extsb   r3, r3
branch_0x8033afb8:
    subi    r0, r3, 0x45
    stb     r3, 0x19(sp)
    cmplwi  r0, 0x33
    bgt-    branch_0x8033b154
    lis     r3, 0x803e
    addi    r3, r3, 0x6660
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lbz     r0, 0x18(sp)
    cmplwi  r0, 0x5
    bne-    branch_0x8033aff8
    li      r0, 0xff
    stb     r0, 0x19(sp)
    b       branch_0x8033b15c

branch_0x8033aff8:
    lbz     r0, 0x16(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x8033b010
    li      r0, 0x1
    stw     r0, 0x20(sp)
    b       branch_0x8033b15c

branch_0x8033b010:
    lbz     r0, 0x14(sp)
    cmplwi  r0, 0x2
    bne-    branch_0x8033b15c
    li      r0, 0x1
    stb     r0, 0x14(sp)
    b       branch_0x8033b15c


.incbin "./baserom/code/Text_0x80005600.bin", 0x335a28, 0x8033b154 - 0x8033b028
branch_0x8033b154:
    li      r0, 0xff
    stb     r0, 0x19(sp)
branch_0x8033b15c:
    lwz     r4, 0x14(sp)
    addi    r3, r31, 0x1
    lwz     r0, 0x18(sp)
    stw     r4, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0x8(r30)
    stw     r0, 0xc(r30)
branch_0x8033b180:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr

