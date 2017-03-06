
.globl update__10TSpcInterpFv
update__10TSpcInterpFv: # 0x8021d680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    stw     r28, 0x38(sp)
    lwz     r4, 0x0(r3)
    lis     r3, 0x803e
    subi    r31, r3, 0x5fe0
    cmplwi  r4, 0x0
    beq-    branch_0x8021d6c0
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8021d6d4
branch_0x8021d6c0:
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2ce0
    bl      SpcTrace__FPCce
    b       branch_0x8021db7c

branch_0x8021d6d4:
    lis     r4, 0x803a
    lis     r3, 0x803b
    subi    r28, r4, 0x2cc4
    subi    r29, r3, 0x5728
    b       branch_0x8021db68

branch_0x8021d6e8:
    lwz     r0, 0x14(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8021d700
    lwz     r3, 0xc(r30)
    subi    r0, r3, 0x1
    stw     r0, 0xc(r30)
branch_0x8021d700:
    lwz     r4, 0x0(r30)
    lwz     r3, 0x8(r30)
    lwz     r5, 0x0(r4)
    addi    r0, r3, 0x1
    lwz     r4, 0x4(r5)
    add     r3, r4, r3
    add     r3, r5, r3
    lbz     r4, 0x0(r3)
    stw     r0, 0x8(r30)
    lbz     r0, -0x6148(r13)
    extsb.  r0, r0
    bne-    branch_0x8021daf8
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r3, 0x1e0(r31)
    stw     r0, 0x1e4(r31)
    lwz     r0, 0x8(r31)
    stw     r0, 0x1e8(r31)
    lwz     r3, 0xc(r31)
    lwz     r0, 0x10(r31)
    stw     r3, 0x1ec(r31)
    stw     r0, 0x1f0(r31)
    lwz     r0, 0x14(r31)
    stw     r0, 0x1f4(r31)
    lwz     r3, 0x18(r31)
    lwz     r0, 0x1c(r31)
    stw     r3, 0x1f8(r31)
    stw     r0, 0x1fc(r31)
    lwz     r0, 0x20(r31)
    stw     r0, 0x200(r31)
    lwz     r3, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r3, 0x204(r31)
    stw     r0, 0x208(r31)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x20c(r31)
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r3, 0x210(r31)
    stw     r0, 0x214(r31)
    lwz     r0, 0x38(r31)
    stw     r0, 0x218(r31)
    lwz     r3, 0x3c(r31)
    lwz     r0, 0x40(r31)
    stw     r3, 0x21c(r31)
    stw     r0, 0x220(r31)
    lwz     r0, 0x44(r31)
    stw     r0, 0x224(r31)
    lwz     r3, 0x48(r31)
    lwz     r0, 0x4c(r31)
    stw     r3, 0x228(r31)
    stw     r0, 0x22c(r31)
    lwz     r0, 0x50(r31)
    stw     r0, 0x230(r31)
    lwz     r3, 0x54(r31)
    lwz     r0, 0x58(r31)
    stw     r3, 0x234(r31)
    stw     r0, 0x238(r31)
    lwz     r0, 0x5c(r31)
    stw     r0, 0x23c(r31)
    lwz     r3, 0x60(r31)
    lwz     r0, 0x64(r31)
    stw     r3, 0x240(r31)
    stw     r0, 0x244(r31)
    lwz     r0, 0x68(r31)
    stw     r0, 0x248(r31)
    lwz     r3, 0x6c(r31)
    lwz     r0, 0x70(r31)
    stw     r3, 0x24c(r31)
    stw     r0, 0x250(r31)
    lwz     r0, 0x74(r31)
    stw     r0, 0x254(r31)
    lwz     r3, 0x78(r31)
    lwz     r0, 0x7c(r31)
    stw     r3, 0x258(r31)
    stw     r0, 0x25c(r31)
    lwz     r0, 0x80(r31)
    stw     r0, 0x260(r31)
    lwz     r3, 0x84(r31)
    lwz     r0, 0x88(r31)
    stw     r3, 0x264(r31)
    stw     r0, 0x268(r31)
    lwz     r0, 0x8c(r31)
    stw     r0, 0x26c(r31)
    lwz     r3, 0x90(r31)
    lwz     r0, 0x94(r31)
    stw     r3, 0x270(r31)
    stw     r0, 0x274(r31)
    lwz     r0, 0x98(r31)
    stw     r0, 0x278(r31)
    lwz     r3, 0x9c(r31)
    lwz     r0, 0xa0(r31)
    stw     r3, 0x27c(r31)
    stw     r0, 0x280(r31)
    lwz     r0, 0xa4(r31)
    stw     r0, 0x284(r31)
    lwz     r3, 0xa8(r31)
    lwz     r0, 0xac(r31)
    stw     r3, 0x288(r31)
    stw     r0, 0x28c(r31)
    lwz     r0, 0xb0(r31)
    stw     r0, 0x290(r31)
    lwz     r3, 0xb4(r31)
    lwz     r0, 0xb8(r31)
    stw     r3, 0x294(r31)
    stw     r0, 0x298(r31)
    lwz     r0, 0xbc(r31)
    stw     r0, 0x29c(r31)
    lwz     r3, 0xc0(r31)
    lwz     r0, 0xc4(r31)
    stw     r3, 0x2a0(r31)
    stw     r0, 0x2a4(r31)
    lwz     r0, 0xc8(r31)
    stw     r0, 0x2a8(r31)
    lwz     r3, 0xcc(r31)
    lwz     r0, 0xd0(r31)
    stw     r3, 0x2ac(r31)
    stw     r0, 0x2b0(r31)
    lwz     r0, 0xd4(r31)
    stw     r0, 0x2b4(r31)
    lwz     r3, 0xd8(r31)
    lwz     r0, 0xdc(r31)
    stw     r3, 0x2b8(r31)
    stw     r0, 0x2bc(r31)
    lwz     r0, 0xe0(r31)
    stw     r0, 0x2c0(r31)
    lwz     r3, 0xe4(r31)
    lwz     r0, 0xe8(r31)
    stw     r3, 0x2c4(r31)
    stw     r0, 0x2c8(r31)
    lwz     r0, 0xec(r31)
    stw     r0, 0x2cc(r31)
    lwz     r3, 0xf0(r31)
    lwz     r0, 0xf4(r31)
    stw     r3, 0x2d0(r31)
    stw     r0, 0x2d4(r31)
    lwz     r0, 0xf8(r31)
    stw     r0, 0x2d8(r31)
    lwz     r3, 0xfc(r31)
    lwz     r0, 0x100(r31)
    stw     r3, 0x2dc(r31)
    stw     r0, 0x2e0(r31)
    lwz     r0, 0x104(r31)
    stw     r0, 0x2e4(r31)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x10c(r31)
    stw     r3, 0x2e8(r31)
    stw     r0, 0x2ec(r31)
    lwz     r0, 0x110(r31)
    stw     r0, 0x2f0(r31)
    lwz     r3, 0x114(r31)
    lwz     r0, 0x118(r31)
    stw     r3, 0x2f4(r31)
    stw     r0, 0x2f8(r31)
    lwz     r0, 0x11c(r31)
    stw     r0, 0x2fc(r31)
    lwz     r3, 0x120(r31)
    lwz     r0, 0x124(r31)
    stw     r3, 0x300(r31)
    stw     r0, 0x304(r31)
    lwz     r0, 0x128(r31)
    stw     r0, 0x308(r31)
    lwz     r3, 0x12c(r31)
    lwz     r0, 0x130(r31)
    stw     r3, 0x30c(r31)
    stw     r0, 0x310(r31)
    lwz     r0, 0x134(r31)
    stw     r0, 0x314(r31)
    lwz     r3, 0x138(r31)
    lwz     r0, 0x13c(r31)
    stw     r3, 0x318(r31)
    stw     r0, 0x31c(r31)
    lwz     r0, 0x140(r31)
    stw     r0, 0x320(r31)
    lwz     r3, 0x144(r31)
    lwz     r0, 0x148(r31)
    stw     r3, 0x324(r31)
    stw     r0, 0x328(r31)
    lwz     r0, 0x14c(r31)
    stw     r0, 0x32c(r31)
    lwz     r3, 0x150(r31)
    lwz     r0, 0x154(r31)
    stw     r3, 0x330(r31)
    stw     r0, 0x334(r31)
    lwz     r0, 0x158(r31)
    stw     r0, 0x338(r31)
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x160(r31)
    stw     r3, 0x33c(r31)
    stw     r0, 0x340(r31)
    lwz     r0, 0x164(r31)
    stw     r0, 0x344(r31)
    lwz     r3, 0x168(r31)
    lwz     r0, 0x16c(r31)
    stw     r3, 0x348(r31)
    stw     r0, 0x34c(r31)
    lwz     r0, 0x170(r31)
    stw     r0, 0x350(r31)
    lwz     r3, 0x174(r31)
    lwz     r0, 0x178(r31)
    stw     r3, 0x354(r31)
    stw     r0, 0x358(r31)
    lwz     r0, 0x17c(r31)
    stw     r0, 0x35c(r31)
    lwz     r3, 0x180(r31)
    lwz     r0, 0x184(r31)
    stw     r3, 0x360(r31)
    stw     r0, 0x364(r31)
    lwz     r0, 0x188(r31)
    stw     r0, 0x368(r31)
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x190(r31)
    stw     r3, 0x36c(r31)
    stw     r0, 0x370(r31)
    lwz     r0, 0x194(r31)
    stw     r0, 0x374(r31)
    lwz     r5, 0x198(r31)
    li      r0, 0x1
    lwz     r3, 0x19c(r31)
    stw     r5, 0x378(r31)
    stw     r3, 0x37c(r31)
    lwz     r3, 0x1a0(r31)
    stw     r3, 0x380(r31)
    lwz     r5, 0x1a4(r31)
    lwz     r3, 0x1a8(r31)
    stw     r5, 0x384(r31)
    stw     r3, 0x388(r31)
    lwz     r3, 0x1ac(r31)
    stw     r3, 0x38c(r31)
    lwz     r5, 0x1b0(r31)
    lwz     r3, 0x1b4(r31)
    stw     r5, 0x390(r31)
    stw     r3, 0x394(r31)
    lwz     r3, 0x1b8(r31)
    stw     r3, 0x398(r31)
    lwz     r5, 0x1bc(r31)
    lwz     r3, 0x1c0(r31)
    stw     r5, 0x39c(r31)
    stw     r3, 0x3a0(r31)
    lwz     r3, 0x1c4(r31)
    stw     r3, 0x3a4(r31)
    lwz     r5, 0x1c8(r31)
    lwz     r3, 0x1cc(r31)
    stw     r5, 0x3a8(r31)
    stw     r3, 0x3ac(r31)
    lwz     r3, 0x1d0(r31)
    stw     r3, 0x3b0(r31)
    lwz     r5, 0x1d4(r31)
    lwz     r3, 0x1d8(r31)
    stw     r5, 0x3b4(r31)
    stw     r3, 0x3b8(r31)
    lwz     r3, 0x1dc(r31)
    stw     r3, 0x3bc(r31)
    stb     r0, -0x6148(r13)
branch_0x8021daf8:
    cmplwi  r4, 0x28
    blt-    branch_0x8021db28
    addi    r3, r28, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r3, 0x0(r29)
    lwz     r0, 0x4(r29)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0x34(sp)
    b       branch_0x8021db48

branch_0x8021db28:
    mulli   r0, r4, 0xc
    add     r4, r31, r0
    lwz     r3, 0x1e0(r4)
    lwz     r0, 0x1e4(r4)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x1e8(r4)
    stw     r0, 0x34(sp)
branch_0x8021db48:
    addi    r3, sp, 0x2c
    bl      __ptmf_test
    cmpwi   r3, 0x0
    beq-    branch_0x8021db68
    addi    r3, r30, 0x0
    addi    r12, sp, 0x2c
    bl      __ptmf_scall
    ori     r0, r0, 0x0
branch_0x8021db68:
    lwz     r0, 0xc(r30)
    cmpwi   r0, 0x0
    bgt+    branch_0x8021d6e8
    lwz     r0, 0x4(r30)
    stw     r0, 0xc(r30)
branch_0x8021db7c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl verifyArgNum__10TSpcInterpFUlPUl
verifyArgNum__10TSpcInterpFUlPUl: # 0x8021db9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r5
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    lis     r4, 0x803a
    stw     r28, 0x30(sp)
    addi    r28, r3, 0x0
    subi    r31, r4, 0x2ce0
    lwz     r5, 0x0(r5)
    cmplw   r29, r5
    beq-    branch_0x8021dc9c
    lwz     r4, 0x58(r28)
    addi    r6, r29, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0x198
    bl      SpcTrace__FPCce
    b       branch_0x8021dc20

branch_0x8021dbf0:
    lwz     r3, 0x1c(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021dc0c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021dc14

branch_0x8021dc0c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x8021dc14:
    lwz     r3, 0x0(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x0(r30)
branch_0x8021dc20:
    lwz     r0, 0x0(r30)
    cmplw   r29, r0
    blt+    branch_0x8021dbf0
    b       branch_0x8021dc90

branch_0x8021dc30:
    li      r0, 0x0
    stw     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x8021dc5c
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021dc84

branch_0x8021dc5c:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x8021dc84:
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
branch_0x8021dc90:
    lwz     r0, 0x0(r30)
    cmplw   r29, r0
    bgt+    branch_0x8021dc30
branch_0x8021dc9c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl dump__10TSpcInterpFv
dump__10TSpcInterpFv: # 0x8021dcbc
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x80(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x1d0
    stw     r29, 0x7c(sp)
    stw     r28, 0x78(sp)
    bl      SpcTrace__FPCce
    lwz     r4, 0x0(r30)
    addi    r3, r31, 0x1f0
    crxor   6, 6, 6
    lwz     r4, 0x0(r4)
    lwz     r4, 0x4(r4)
    bl      SpcTrace__FPCce
    lwz     r4, 0x0(r30)
    addi    r3, r31, 0x200
    crxor   6, 6, 6
    lwz     r4, 0x0(r4)
    lwz     r4, 0x8(r4)
    bl      SpcTrace__FPCce
    lwz     r4, 0x0(r30)
    addi    r3, r31, 0x210
    crxor   6, 6, 6
    lwz     r4, 0x0(r4)
    lwz     r4, 0xc(r4)
    bl      SpcTrace__FPCce
    lwz     r4, 0x0(r30)
    addi    r3, r31, 0x220
    crxor   6, 6, 6
    lwz     r4, 0x0(r4)
    lwz     r4, 0x10(r4)
    bl      SpcTrace__FPCce
    lwz     r4, 0x0(r30)
    addi    r3, r31, 0x230
    crxor   6, 6, 6
    lwz     r4, 0x0(r4)
    lwz     r4, 0x14(r4)
    bl      SpcTrace__FPCce
    li      r28, 0x0
    li      r29, 0x0
branch_0x8021dd70:
    addi    r0, r29, 0x48
    crxor   6, 6, 6
    lwzx    r5, r30, r0
    addi    r4, r28, 0x0
    addi    r3, r31, 0x240
    bl      SpcTrace__FPCce
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x8021dd70
    li      r28, 0x0
    b       branch_0x8021de04

branch_0x8021dda0:
    subi    r0, r3, 0x1
    lwz     r3, 0x20(r30)
    subf    r0, r28, r0
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8021ddd8
    bge-    branch_0x8021ddec
    cmpwi   r0, 0x0
    bge-    branch_0x8021ddd0
    b       branch_0x8021ddec

branch_0x8021ddd0:
    lwz     r5, 0x4(r3)
    b       branch_0x8021ddf0

branch_0x8021ddd8:
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    b       branch_0x8021ddf0

branch_0x8021ddec:
    li      r5, 0x0
branch_0x8021ddf0:
    addi    r4, r28, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0x254
    bl      SpcTrace__FPCce
    addi    r28, r28, 0x1
branch_0x8021de04:
    lwz     r3, 0x1c(r30)
    cmpw    r28, r3
    blt+    branch_0x8021dda0
    li      r28, 0x0
    b       branch_0x8021de44

branch_0x8021de18:
    subi    r0, r3, 0x1
    lwz     r3, 0x40(r30)
    subf    r0, r28, r0
    crxor   6, 6, 6
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r5, 0x0(r3)
    addi    r4, r28, 0x0
    addi    r3, r31, 0x26c
    bl      SpcTrace__FPCce
    addi    r28, r28, 0x1
branch_0x8021de44:
    lwz     r3, 0x3c(r30)
    cmpw    r28, r3
    blt+    branch_0x8021de18
    li      r28, 0x0
    b       branch_0x8021debc

branch_0x8021de58:
    subi    r0, r3, 0x1
    lwz     r3, 0x30(r30)
    subf    r0, r28, r0
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8021de90
    bge-    branch_0x8021dea4
    cmpwi   r0, 0x0
    bge-    branch_0x8021de88
    b       branch_0x8021dea4

branch_0x8021de88:
    lwz     r5, 0x4(r3)
    b       branch_0x8021dea8

branch_0x8021de90:
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    b       branch_0x8021dea8

branch_0x8021dea4:
    li      r5, 0x0
branch_0x8021dea8:
    addi    r4, r28, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0x284
    bl      SpcTrace__FPCce
    addi    r28, r28, 0x1
branch_0x8021debc:
    lwz     r3, 0x2c(r30)
    cmpw    r28, r3
    blt+    branch_0x8021de58
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x8021df20

branch_0x8021ded4:
    lwz     r10, 0x0(r4)
    addi    r4, r28, 0x0
    addi    r3, r31, 0x29c
    crxor   6, 6, 6
    lwz     r8, 0x10(r10)
    lwz     r0, 0x14(r10)
    add     r9, r8, r29
    add     r9, r10, r9
    mulli   r5, r0, 0x14
    lwz     r0, 0x4(r9)
    lwz     r6, 0x0(r9)
    lwz     r7, 0x4(r9)
    add     r5, r8, r5
    add     r5, r5, r0
    lwz     r8, 0x8(r9)
    add     r5, r10, r5
    bl      SpcTrace__FPCce
    addi    r28, r28, 0x1
    addi    r29, r29, 0x14
branch_0x8021df20:
    lwz     r4, 0x0(r30)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x14(r3)
    cmplw   r28, r0
    blt+    branch_0x8021ded4
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl __dt__10TSpcInterpFv
__dt__10TSpcInterpFv: # 0x8021df54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8021dfec
    lis     r3, 0x803e
    subi    r3, r3, 0x5c20
    addic.  r0, r30, 0x38
    stw     r3, 0x5c(r30)
    beq-    branch_0x8021df9c
    lis     r3, 0x803e
    subi    r0, r3, 0x5c00
    stw     r0, 0x44(r30)
    lwz     r3, 0x40(r30)
    bl      __dla__FPv
branch_0x8021df9c:
    addic.  r0, r30, 0x28
    beq-    branch_0x8021dfbc
    lis     r3, 0x803e
    subi    r0, r3, 0x5c0c
    stw     r0, 0x34(r30)
    li      r4, 0x0
    lwz     r3, 0x30(r30)
    bl      __destroy_new_array
branch_0x8021dfbc:
    addic.  r0, r30, 0x18
    beq-    branch_0x8021dfdc
    lis     r3, 0x803e
    subi    r0, r3, 0x5c0c
    stw     r0, 0x24(r30)
    li      r4, 0x0
    lwz     r3, 0x20(r30)
    bl      __destroy_new_array
branch_0x8021dfdc:
    extsh.  r0, r31
    ble-    branch_0x8021dfec
    mr      r3, r30
    bl      __dl__FPv
branch_0x8021dfec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__10TSpcInterpFP10TSpcBinaryPviiii
__ct__10TSpcInterpFP10TSpcBinaryPviiii: # 0x8021e008
    mflr    r0
    lis     r10, 0x803e
    stw     r0, 0x4(sp)
    subi    r0, r10, 0x5c20
    lis     r10, 0x803a
    stwu    sp, -0xa8(sp)
    stmw    r24, 0x88(sp)
    li      r31, 0x0
    subi    r29, r10, 0x2ce0
    addi    r24, r8, 0x0
    mr      r28, r9
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    subi    r26, r3, 0x5c0c
    lwz     r30, 0x8(sp)
    stw     r0, 0x5c(r30)
    stw     r4, 0x0(r30)
    stw     r6, 0x4(r30)
    stw     r31, 0x8(r30)
    stw     r6, 0xc(r30)
    stw     r5, 0x10(r30)
    stw     r26, 0x24(r30)
    stw     r7, 0x18(r30)
    stw     r31, 0x1c(r30)
    stw     r31, 0x20(r30)
    lwz     r25, 0x18(r30)
    slwi    r3, r25, 3
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8022
    subi    r27, r4, 0x1d30
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x8
    bl      __construct_new_array
    stw     r3, 0x20(r30)
    stw     r26, 0x34(r30)
    stw     r24, 0x28(r30)
    stw     r31, 0x2c(r30)
    stw     r31, 0x30(r30)
    lwz     r25, 0x28(r30)
    slwi    r3, r25, 3
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r27, 0x0
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x8
    bl      __construct_new_array
    lis     r4, 0x803e
    stw     r3, 0x30(r30)
    subi    r0, r4, 0x5c00
    stw     r0, 0x44(r30)
    stw     r28, 0x38(r30)
    stw     r31, 0x3c(r30)
    stw     r31, 0x40(r30)
    lwz     r0, 0x38(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x40(r30)
    lwz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8021e114
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8021e128
branch_0x8021e114:
    addi    r3, r29, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r3, 0x8(sp)
    b       branch_0x8021e1f8

branch_0x8021e128:
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x53
    bne-    branch_0x8021e158
    lbz     r0, 0x1(r3)
    cmpwi   r0, 0x50
    bne-    branch_0x8021e158
    lbz     r0, 0x2(r3)
    cmpwi   r0, 0x43
    bne-    branch_0x8021e158
    lbz     r0, 0x3(r3)
    cmpwi   r0, 0x42
    beq-    branch_0x8021e164
branch_0x8021e158:
    addi    r3, r29, 0x2d0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
branch_0x8021e164:
    lwz     r3, 0x8(sp)
    li      r0, 0x0
    li      r30, 0x0
    stw     r0, 0x48(r3)
    stw     r0, 0x4c(r3)
    stw     r0, 0x50(r3)
    stw     r0, 0x54(r3)
    b       branch_0x8021e1e0

branch_0x8021e184:
    li      r0, 0x0
    stw     r0, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r4, 0x2c(r3)
    lwz     r0, 0x28(r3)
    cmpw    r4, r0
    blt-    branch_0x8021e1b0
    addi    r3, r29, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021e1dc

branch_0x8021e1b0:
    lwz     r5, 0x30(r3)
    slwi    r4, r4, 3
    lwz     r3, 0x7c(sp)
    lwz     r0, 0x80(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r4, 0x8(sp)
    lwz     r3, 0x2c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r4)
branch_0x8021e1dc:
    addi    r30, r30, 0x1
branch_0x8021e1e0:
    lwz     r3, 0x8(sp)
    lwz     r4, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r0, 0x18(r4)
    cmpw    r30, r0
    blt+    branch_0x8021e184
branch_0x8021e1f8:
    lmw     r24, 0x88(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl __dt__13TSpcStack_Ul_Fv
__dt__13TSpcStack_Ul_Fv: # 0x8021e20c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8021e250
    lis     r3, 0x803e
    subi    r0, r3, 0x5c00
    stw     r0, 0xc(r30)
    lwz     r3, 0x8(r30)
    bl      __dla__FPv
    extsh.  r0, r31
    ble-    branch_0x8021e250
    mr      r3, r30
    bl      __dl__FPv
branch_0x8021e250:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TSpcStack_9TSpcSlice_Fv
__dt__21TSpcStack_9TSpcSlice_Fv: # 0x8021e26c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8021e2b4
    lis     r3, 0x803e
    subi    r0, r3, 0x5c0c
    stw     r0, 0xc(r30)
    li      r4, 0x0
    lwz     r3, 0x8(r30)
    bl      __destroy_new_array
    extsh.  r0, r31
    ble-    branch_0x8021e2b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8021e2b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__9TSpcSliceFv
__ct__9TSpcSliceFv: # 0x8021e2d0
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl dispatchBuiltin__10TSpcInterpFUlUl
dispatchBuiltin__10TSpcInterpFUlUl: # 0x8021e2e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      dispatchBuiltinDefault__10TSpcInterpFUlUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl dispatchBuiltinDefault__10TSpcInterpFUlUl
dispatchBuiltinDefault__10TSpcInterpFUlUl: # 0x8021e300
    mflr    r0
    stw     r0, 0x4(sp)
    mulli   r0, r4, 0x14
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x7c(sp)
    mr      r29, r3
    stw     r28, 0x78(sp)
    lwz     r6, 0x0(r3)
    lis     r3, 0x803a
    subi    r31, r3, 0x2ce0
    lwz     r7, 0x0(r6)
    lwz     r6, 0x10(r7)
    add     r5, r6, r0
    add.    r5, r7, r5
    bne-    branch_0x8021e3e4
    addi    r3, r31, 0x2ec
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    li      r28, 0x0
    b       branch_0x8021e384

branch_0x8021e35c:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e378
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021e380

branch_0x8021e378:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8021e380:
    addi    r28, r28, 0x1
branch_0x8021e384:
    cmpw    r28, r30
    blt+    branch_0x8021e35c
    li      r0, 0x0
    stw     r0, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8021e3b8
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021e4d4

branch_0x8021e3b8:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x8021e4d4

branch_0x8021e3e4:
    lwz     r0, 0x10(r5)
    cmplwi  r0, 0x0
    mr      r12, r0
    bne-    branch_0x8021e4a8
    lwz     r4, 0x14(r7)
    addi    r3, r31, 0x308
    lwz     r0, 0x4(r5)
    crxor   6, 6, 6
    mulli   r4, r4, 0x14
    add     r4, r6, r4
    add     r4, r4, r0
    add     r4, r7, r4
    bl      SpcTrace__FPCce
    li      r28, 0x0
    b       branch_0x8021e448

branch_0x8021e420:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e43c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021e444

branch_0x8021e43c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8021e444:
    addi    r28, r28, 0x1
branch_0x8021e448:
    cmpw    r28, r30
    blt+    branch_0x8021e420
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8021e47c
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021e4d4

branch_0x8021e47c:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x8021e4d4

branch_0x8021e4a8:
    lwz     r3, 0x14(r7)
    mtlr    r12
    lwz     r0, 0x4(r5)
    addi    r4, r30, 0x0
    mulli   r3, r3, 0x14
    add     r3, r6, r3
    add     r0, r3, r0
    add     r0, r7, r0
    stw     r0, 0x58(r29)
    addi    r3, r29, 0x0
    blrl
branch_0x8021e4d4:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl execend__10TSpcInterpFv
execend__10TSpcInterpFv: # 0x8021e4f4
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    lis     r4, 0x803a
    subi    r0, r4, 0x29ac
    crxor   6, 6, 6
    stwu    sp, -0x8(sp)
    stw     r5, 0x4(r3)
    stw     r5, 0xc(r3)
    mr      r3, r0
    bl      SpcTrace__FPCce
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execint1__10TSpcInterpFv
execint1__10TSpcInterpFv: # 0x8021e530
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r0, 0xc(sp)
    li      r0, 0x1
    stw     r0, 0x10(sp)
    lwz     r4, 0x1c(r3)
    lwz     r0, 0x18(r3)
    cmpw    r4, r0
    blt-    branch_0x8021e570
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8021e598

branch_0x8021e570:
    lwz     r6, 0x20(r3)
    slwi    r5, r4, 3
    lwz     r4, 0xc(sp)
    lwz     r0, 0x10(sp)
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x1c(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r3)
branch_0x8021e598:
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execint0__10TSpcInterpFv
execint0__10TSpcInterpFv: # 0x8021e5a8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r0, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r4, 0x1c(r3)
    lwz     r0, 0x18(r3)
    cmpw    r4, r0
    blt-    branch_0x8021e5e4
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8021e60c

branch_0x8021e5e4:
    lwz     r6, 0x20(r3)
    slwi    r5, r4, 3
    lwz     r4, 0xc(sp)
    lwz     r0, 0x10(sp)
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x1c(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r3)
branch_0x8021e60c:
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execpop__10TSpcInterpFv
execpop__10TSpcInterpFv: # 0x8021e61c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x1c(r3)
    cmpwi   r4, 0x0
    bgt-    branch_0x8021e648
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2b98
    bl      SpcTrace__FPCce
    b       branch_0x8021e650

branch_0x8021e648:
    subi    r0, r4, 0x1
    stw     r0, 0x1c(r3)
branch_0x8021e650:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execjmp__10TSpcInterpFv
execjmp__10TSpcInterpFv: # 0x8021e660
    stwu    sp, -0x28(sp)
    lwz     r5, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r6, 0x0(r5)
    lwz     r5, 0x4(r6)
    add     r5, r5, r0
    add     r5, r6, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x1c(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x1d(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x1e(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x1f(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x28
    stw     r0, 0x8(r3)
    blr


.globl execjne__10TSpcInterpFv
execjne__10TSpcInterpFv: # 0x8021e6b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r5, 0x0(r4)
    lwz     r4, 0x4(r5)
    add     r4, r4, r0
    add     r4, r5, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x34(sp)
    lbzu    r0, 0x1(r4)
    stb     r0, 0x35(sp)
    lbz     r0, 0x1(r4)
    stb     r0, 0x36(sp)
    lbz     r0, 0x2(r4)
    stb     r0, 0x37(sp)
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x4
    stw     r0, 0x8(r31)
    lwz     r3, 0x1c(r31)
    lwz     r30, 0x34(sp)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e758
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2b98
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
    b       branch_0x8021e780

branch_0x8021e758:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
branch_0x8021e780:
    lwz     r0, 0x38(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8021e7a4
    bge-    branch_0x8021e7b8
    cmpwi   r0, 0x0
    bge-    branch_0x8021e79c
    b       branch_0x8021e7b8

branch_0x8021e79c:
    lwz     r0, 0x3c(sp)
    b       branch_0x8021e7bc

branch_0x8021e7a4:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    b       branch_0x8021e7bc

branch_0x8021e7b8:
    li      r0, 0x0
branch_0x8021e7bc:
    cmpwi   r0, 0x0
    bne-    branch_0x8021e7c8
    stw     r30, 0x8(r31)
branch_0x8021e7c8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl execret0__10TSpcInterpFv
execret0__10TSpcInterpFv: # 0x8021e7e0
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    addi    r29, r3, 0x0
    subi    r31, r4, 0x2ce0
    stw     r0, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x1c(r3)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8021e828
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021e850

branch_0x8021e828:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8021e850:
    lwz     r3, 0x3c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e87c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
    b       branch_0x8021e894

branch_0x8021e87c:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
branch_0x8021e894:
    lwz     r3, 0x3c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e8c0
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r27, r3, r0
    b       branch_0x8021e8d8

branch_0x8021e8c0:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r27, r3, r0
branch_0x8021e8d8:
    lwz     r3, 0x3c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e904
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r26, r3, r0
    b       branch_0x8021e91c

branch_0x8021e904:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r26, r3, r0
branch_0x8021e91c:
    lwz     r28, 0x2c(r29)
    b       branch_0x8021e94c

branch_0x8021e924:
    lwz     r3, 0x2c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e940
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021e948

branch_0x8021e940:
    subi    r0, r3, 0x1
    stw     r0, 0x2c(r29)
branch_0x8021e948:
    subi    r28, r28, 0x1
branch_0x8021e94c:
    cmplw   r28, r26
    bgt+    branch_0x8021e924
    slwi    r0, r30, 2
    add     r3, r29, r0
    stw     r27, 0x48(r3)
    lwz     r3, 0x3c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021e98c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    b       branch_0x8021e9a4

branch_0x8021e98c:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
branch_0x8021e9a4:
    stw     r0, 0x8(r29)
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl execret__10TSpcInterpFv
execret__10TSpcInterpFv: # 0x8021e9bc
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    mr      r29, r3
    subi    r31, r4, 0x2ce0
    lwz     r3, 0x3c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021ea04
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
    b       branch_0x8021ea1c

branch_0x8021ea04:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
branch_0x8021ea1c:
    lwz     r3, 0x3c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021ea48
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r28, r3, r0
    b       branch_0x8021ea60

branch_0x8021ea48:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r28, r3, r0
branch_0x8021ea60:
    lwz     r3, 0x3c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021ea8c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r27, r3, r0
    b       branch_0x8021eaa4

branch_0x8021ea8c:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r27, r3, r0
branch_0x8021eaa4:
    lwz     r26, 0x2c(r29)
    b       branch_0x8021ead4

branch_0x8021eaac:
    lwz     r3, 0x2c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021eac8
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021ead0

branch_0x8021eac8:
    subi    r0, r3, 0x1
    stw     r0, 0x2c(r29)
branch_0x8021ead0:
    subi    r26, r26, 0x1
branch_0x8021ead4:
    cmplw   r26, r27
    bgt+    branch_0x8021eaac
    slwi    r0, r30, 2
    add     r3, r29, r0
    stw     r28, 0x48(r3)
    lwz     r3, 0x3c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021eb14
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    b       branch_0x8021eb2c

branch_0x8021eb14:
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r29)
    lwz     r0, 0x3c(r29)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
branch_0x8021eb2c:
    stw     r0, 0x8(r29)
    lmw     r26, 0x30(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl execmkds__10TSpcInterpFv
execmkds__10TSpcInterpFv: # 0x8021eb44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r5, 0x0(r4)
    lwz     r4, 0x4(r5)
    add     r4, r4, r0
    add     r4, r5, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x20(sp)
    lbzu    r0, 0x1(r4)
    stb     r0, 0x21(sp)
    lbz     r0, 0x1(r4)
    stb     r0, 0x22(sp)
    lbz     r0, 0x2(r4)
    stb     r0, 0x23(sp)
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x4
    stw     r0, 0x8(r31)
    lwz     r30, 0x20(sp)
    lwz     r3, 0x3c(r31)
    slwi    r0, r30, 2
    lwz     r4, 0x40(r31)
    add     r5, r31, r0
    subi    r0, r3, 0x1
    lwz     r6, 0x48(r5)
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    stw     r0, 0x48(r5)
    lwz     r4, 0x3c(r31)
    lwz     r0, 0x38(r31)
    cmpw    r4, r0
    blt-    branch_0x8021ebec
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8021ec04

branch_0x8021ebec:
    lwz     r3, 0x40(r31)
    slwi    r0, r4, 2
    stwx    r6, r3, r0
    lwz     r3, 0x3c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x3c(r31)
branch_0x8021ec04:
    lwz     r4, 0x3c(r31)
    lwz     r0, 0x38(r31)
    cmpw    r4, r0
    blt-    branch_0x8021ec28
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8021ec40

branch_0x8021ec28:
    lwz     r3, 0x40(r31)
    slwi    r0, r4, 2
    stwx    r30, r3, r0
    lwz     r3, 0x3c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x3c(r31)
branch_0x8021ec40:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl execmkfr__10TSpcInterpFv
execmkfr__10TSpcInterpFv: # 0x8021ec58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r31, r3
    lwz     r4, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r5, 0x0(r4)
    lwz     r4, 0x4(r5)
    add     r4, r4, r0
    add     r4, r5, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x20(sp)
    lbzu    r0, 0x1(r4)
    stb     r0, 0x21(sp)
    lbz     r0, 0x1(r4)
    stb     r0, 0x22(sp)
    lbz     r0, 0x2(r4)
    stb     r0, 0x23(sp)
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x4
    stw     r0, 0x8(r31)
    lwz     r0, 0x3c(r31)
    lwz     r28, 0x20(sp)
    cmpwi   r0, 0x0
    ble-    branch_0x8021ed30
    lis     r3, 0x803a
    subi    r30, r3, 0x2bb4
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x8021ed28

branch_0x8021ecd4:
    stw     r29, 0x24(sp)
    stw     r29, 0x28(sp)
    lwz     r3, 0x2c(r31)
    lwz     r0, 0x28(r31)
    cmpw    r3, r0
    blt-    branch_0x8021ecfc
    addi    r3, r30, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021ed24

branch_0x8021ecfc:
    lwz     r5, 0x30(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x2c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r31)
branch_0x8021ed24:
    addi    r27, r27, 0x1
branch_0x8021ed28:
    cmpw    r27, r28
    blt+    branch_0x8021ecd4
branch_0x8021ed30:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl execfunc__10TSpcInterpFv
execfunc__10TSpcInterpFv: # 0x8021ed44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    lwz     r6, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r7, 0x0(r6)
    lwz     r6, 0x4(r7)
    add     r6, r6, r0
    add     r6, r7, r6
    lbz     r0, 0x0(r6)
    stb     r0, 0x34(sp)
    lbzu    r0, 0x1(r6)
    stb     r0, 0x35(sp)
    lbz     r0, 0x1(r6)
    stb     r0, 0x36(sp)
    lbz     r0, 0x2(r6)
    stb     r0, 0x37(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r6, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r7, 0x0(r6)
    lwz     r4, 0x34(sp)
    lwz     r6, 0x4(r7)
    add     r6, r6, r0
    add     r6, r7, r6
    lbz     r0, 0x0(r6)
    stb     r0, 0x2c(sp)
    lbzu    r0, 0x1(r6)
    stb     r0, 0x2d(sp)
    lbz     r0, 0x1(r6)
    stb     r0, 0x2e(sp)
    lbz     r0, 0x2(r6)
    stb     r0, 0x2f(sp)
    lwz     r5, 0x8(r3)
    addi    r0, r5, 0x4
    stw     r0, 0x8(r3)
    lwz     r12, 0x5c(r3)
    lwz     r5, 0x2c(sp)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl execcall__10TSpcInterpFv
execcall__10TSpcInterpFv: # 0x8021ee00
    mflr    r0
    lis     r6, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r26, 0x70(sp)
    mr      r27, r3
    subi    r31, r6, 0x2ce0
    lwz     r5, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r7, 0x0(r5)
    lwz     r5, 0x4(r7)
    add     r5, r5, r0
    add     r5, r7, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x50(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x51(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x52(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x53(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r5, 0x0(r4)
    lwz     r30, 0x50(sp)
    lwz     r4, 0x4(r5)
    add     r4, r4, r0
    add     r4, r5, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x4c(sp)
    lbzu    r0, 0x1(r4)
    stb     r0, 0x4d(sp)
    lbz     r0, 0x1(r4)
    stb     r0, 0x4e(sp)
    lbz     r0, 0x2(r4)
    stb     r0, 0x4f(sp)
    lwz     r3, 0x8(r27)
    addi    r0, r3, 0x4
    stw     r0, 0x8(r27)
    lwz     r5, 0x3c(r27)
    lwz     r0, 0x38(r27)
    lwz     r29, 0x4c(sp)
    cmpw    r5, r0
    lwz     r4, 0x8(r27)
    blt-    branch_0x8021eed0
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021eee8

branch_0x8021eed0:
    lwz     r3, 0x40(r27)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x3c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x3c(r27)
branch_0x8021eee8:
    lwz     r5, 0x3c(r27)
    lwz     r0, 0x38(r27)
    lwz     r4, 0x2c(r27)
    cmpw    r5, r0
    blt-    branch_0x8021ef0c
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021ef24

branch_0x8021ef0c:
    lwz     r3, 0x40(r27)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x3c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x3c(r27)
branch_0x8021ef24:
    li      r26, 0x0
    li      r28, 0x0
    b       branch_0x8021ef84

branch_0x8021ef30:
    stw     r28, 0x5c(sp)
    stw     r28, 0x60(sp)
    lwz     r3, 0x2c(r27)
    lwz     r0, 0x28(r27)
    cmpw    r3, r0
    blt-    branch_0x8021ef58
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021ef80

branch_0x8021ef58:
    lwz     r5, 0x30(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x2c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r27)
branch_0x8021ef80:
    addi    r26, r26, 0x1
branch_0x8021ef84:
    cmpw    r26, r29
    blt+    branch_0x8021ef30
    li      r28, 0x0
    b       branch_0x8021f024

branch_0x8021ef94:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021efd0
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8021eff8

branch_0x8021efd0:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8021eff8:
    lwz     r3, 0x2c(r27)
    lwz     r5, 0x30(r27)
    subi    r0, r3, 0x1
    lwz     r3, 0x54(sp)
    subf    r4, r28, r0
    lwz     r0, 0x58(sp)
    slwi    r4, r4, 3
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    addi    r28, r28, 0x1
    stw     r0, 0x4(r4)
branch_0x8021f024:
    cmpw    r28, r29
    blt+    branch_0x8021ef94
    stw     r30, 0x8(r27)
    lmw     r26, 0x70(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl execshr__10TSpcInterpFv
execshr__10TSpcInterpFv: # 0x8021f044
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f0a0
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021f0c4

branch_0x8021f0a0:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021f0c4:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f104
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x8021f128

branch_0x8021f104:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x8021f128:
    lwz     r0, 0x24(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x34(sp)
    beq-    branch_0x8021f150
    bge-    branch_0x8021f164
    cmpwi   r4, 0x0
    bge-    branch_0x8021f148
    b       branch_0x8021f164

branch_0x8021f148:
    lwz     r3, 0x34(sp)
    b       branch_0x8021f168

branch_0x8021f150:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    b       branch_0x8021f168

branch_0x8021f164:
    li      r3, 0x0
branch_0x8021f168:
    cmpwi   r30, 0x1
    beq-    branch_0x8021f188
    bge-    branch_0x8021f19c
    cmpwi   r30, 0x0
    bge-    branch_0x8021f180
    b       branch_0x8021f19c

branch_0x8021f180:
    lwz     r4, 0x3c(sp)
    b       branch_0x8021f1a0

branch_0x8021f188:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r4, 0x44(sp)
    b       branch_0x8021f1a0

branch_0x8021f19c:
    li      r4, 0x0
branch_0x8021f1a0:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    sraw    r0, r3, r4
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8021f1d0
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021f1f8

branch_0x8021f1d0:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8021f1f8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl execshl__10TSpcInterpFv
execshl__10TSpcInterpFv: # 0x8021f214
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f270
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021f294

branch_0x8021f270:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021f294:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f2d4
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x8021f2f8

branch_0x8021f2d4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x8021f2f8:
    lwz     r0, 0x24(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x34(sp)
    beq-    branch_0x8021f320
    bge-    branch_0x8021f334
    cmpwi   r4, 0x0
    bge-    branch_0x8021f318
    b       branch_0x8021f334

branch_0x8021f318:
    lwz     r3, 0x34(sp)
    b       branch_0x8021f338

branch_0x8021f320:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    b       branch_0x8021f338

branch_0x8021f334:
    li      r3, 0x0
branch_0x8021f338:
    cmpwi   r30, 0x1
    beq-    branch_0x8021f358
    bge-    branch_0x8021f36c
    cmpwi   r30, 0x0
    bge-    branch_0x8021f350
    b       branch_0x8021f36c

branch_0x8021f350:
    lwz     r4, 0x3c(sp)
    b       branch_0x8021f370

branch_0x8021f358:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r4, 0x44(sp)
    b       branch_0x8021f370

branch_0x8021f36c:
    li      r4, 0x0
branch_0x8021f370:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    slw     r0, r3, r4
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8021f3a0
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021f3c8

branch_0x8021f3a0:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8021f3c8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl execbor__10TSpcInterpFv
execbor__10TSpcInterpFv: # 0x8021f3e4
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f440
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021f464

branch_0x8021f440:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021f464:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f4a4
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x8021f4c8

branch_0x8021f4a4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x8021f4c8:
    lwz     r0, 0x24(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x34(sp)
    beq-    branch_0x8021f4f0
    bge-    branch_0x8021f504
    cmpwi   r4, 0x0
    bge-    branch_0x8021f4e8
    b       branch_0x8021f504

branch_0x8021f4e8:
    lwz     r3, 0x34(sp)
    b       branch_0x8021f508

branch_0x8021f4f0:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    b       branch_0x8021f508

branch_0x8021f504:
    li      r3, 0x0
branch_0x8021f508:
    cmpwi   r30, 0x1
    beq-    branch_0x8021f528
    bge-    branch_0x8021f53c
    cmpwi   r30, 0x0
    bge-    branch_0x8021f520
    b       branch_0x8021f53c

branch_0x8021f520:
    lwz     r4, 0x3c(sp)
    b       branch_0x8021f540

branch_0x8021f528:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r4, 0x44(sp)
    b       branch_0x8021f540

branch_0x8021f53c:
    li      r4, 0x0
branch_0x8021f540:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    or      r0, r3, r4
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8021f570
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021f598

branch_0x8021f570:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8021f598:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl execband__10TSpcInterpFv
execband__10TSpcInterpFv: # 0x8021f5b4
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f610
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021f634

branch_0x8021f610:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021f634:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f674
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x8021f698

branch_0x8021f674:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x8021f698:
    lwz     r0, 0x24(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x34(sp)
    beq-    branch_0x8021f6c0
    bge-    branch_0x8021f6d4
    cmpwi   r4, 0x0
    bge-    branch_0x8021f6b8
    b       branch_0x8021f6d4

branch_0x8021f6b8:
    lwz     r3, 0x34(sp)
    b       branch_0x8021f6d8

branch_0x8021f6c0:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    b       branch_0x8021f6d8

branch_0x8021f6d4:
    li      r3, 0x0
branch_0x8021f6d8:
    cmpwi   r30, 0x1
    beq-    branch_0x8021f6f8
    bge-    branch_0x8021f70c
    cmpwi   r30, 0x0
    bge-    branch_0x8021f6f0
    b       branch_0x8021f70c

branch_0x8021f6f0:
    lwz     r4, 0x3c(sp)
    b       branch_0x8021f710

branch_0x8021f6f8:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r4, 0x44(sp)
    b       branch_0x8021f710

branch_0x8021f70c:
    li      r4, 0x0
branch_0x8021f710:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    and     r0, r3, r4
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8021f740
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021f768

branch_0x8021f740:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8021f768:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl execor__10TSpcInterpFv
execor__10TSpcInterpFv: # 0x8021f784
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f7e0
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x28(sp)
    b       branch_0x8021f804

branch_0x8021f7e0:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x28(sp)
branch_0x8021f804:
    stw     r4, 0x34(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f848
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
    b       branch_0x8021f86c

branch_0x8021f848:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
branch_0x8021f86c:
    lwz     r0, 0x20(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x30(sp)
    beq-    branch_0x8021f894
    bge-    branch_0x8021f8a8
    cmpwi   r4, 0x0
    bge-    branch_0x8021f88c
    b       branch_0x8021f8a8

branch_0x8021f88c:
    lwz     r0, 0x30(sp)
    b       branch_0x8021f8ac

branch_0x8021f894:
    lfs     f0, 0x30(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    b       branch_0x8021f8ac

branch_0x8021f8a8:
    li      r0, 0x0
branch_0x8021f8ac:
    cmpwi   r0, 0x0
    li      r29, 0x1
    bne-    branch_0x8021f8cc
    addi    r3, sp, 0x34
    bl      getDataInt__9TSpcSliceCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8021f8cc
    li      r29, 0x0
branch_0x8021f8cc:
    clrlwi. r0, r29, 24
    beq-    branch_0x8021f8dc
    li      r3, 0x1
    b       branch_0x8021f8e0

branch_0x8021f8dc:
    li      r3, 0x0
branch_0x8021f8e0:
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r3, 0x18(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8021f90c
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021f934

branch_0x8021f90c:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8021f934:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl getDataInt__9TSpcSliceCFv
getDataInt__9TSpcSliceCFv: # 0x8021f950
    stwu    sp, -0x18(sp)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8021f978
    bge-    branch_0x8021f98c
    cmpwi   r0, 0x0
    bge-    branch_0x8021f970
    b       branch_0x8021f98c

branch_0x8021f970:
    lwz     r3, 0x4(r3)
    b       branch_0x8021f990

branch_0x8021f978:
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    b       branch_0x8021f990

branch_0x8021f98c:
    li      r3, 0x0
branch_0x8021f990:
    addi    sp, sp, 0x18
    blr


.globl execand__10TSpcInterpFv
execand__10TSpcInterpFv: # 0x8021f998
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021f9f4
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x28(sp)
    b       branch_0x8021fa18

branch_0x8021f9f4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x28(sp)
branch_0x8021fa18:
    stw     r4, 0x34(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021fa5c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
    b       branch_0x8021fa80

branch_0x8021fa5c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
branch_0x8021fa80:
    lwz     r0, 0x20(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x30(sp)
    beq-    branch_0x8021faa8
    bge-    branch_0x8021fabc
    cmpwi   r4, 0x0
    bge-    branch_0x8021faa0
    b       branch_0x8021fabc

branch_0x8021faa0:
    lwz     r0, 0x30(sp)
    b       branch_0x8021fac0

branch_0x8021faa8:
    lfs     f0, 0x30(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    b       branch_0x8021fac0

branch_0x8021fabc:
    li      r0, 0x0
branch_0x8021fac0:
    cmpwi   r0, 0x0
    li      r29, 0x0
    beq-    branch_0x8021fae0
    addi    r3, sp, 0x34
    bl      getDataInt__9TSpcSliceCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8021fae0
    li      r29, 0x1
branch_0x8021fae0:
    clrlwi. r0, r29, 24
    beq-    branch_0x8021faf0
    li      r3, 0x1
    b       branch_0x8021faf4

branch_0x8021faf0:
    li      r3, 0x0
branch_0x8021faf4:
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r3, 0x18(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8021fb20
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021fb48

branch_0x8021fb20:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8021fb48:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl execnot__10TSpcInterpFv
execnot__10TSpcInterpFv: # 0x8021fb64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021fbb4
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2b98
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
    b       branch_0x8021fbd8

branch_0x8021fbb4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
branch_0x8021fbd8:
    lwz     r0, 0x20(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x28(sp)
    beq-    branch_0x8021fc00
    bge-    branch_0x8021fc14
    cmpwi   r4, 0x0
    bge-    branch_0x8021fbf8
    b       branch_0x8021fc14

branch_0x8021fbf8:
    lwz     r0, 0x28(sp)
    b       branch_0x8021fc18

branch_0x8021fc00:
    lfs     f0, 0x28(sp)
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    b       branch_0x8021fc18

branch_0x8021fc14:
    li      r0, 0x0
branch_0x8021fc18:
    cmpwi   r0, 0x0
    bne-    branch_0x8021fc28
    li      r3, 0x1
    b       branch_0x8021fc2c

branch_0x8021fc28:
    li      r3, 0x0
branch_0x8021fc2c:
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r3, 0x18(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021fc5c
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8021fc84

branch_0x8021fc5c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021fc84:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl execneg__10TSpcInterpFv
execneg__10TSpcInterpFv: # 0x8021fc98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021fce8
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2b98
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x14(sp)
    b       branch_0x8021fd0c

branch_0x8021fce8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x14(sp)
branch_0x8021fd0c:
    stw     r4, 0x18(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x18(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8021fd44
    bge-    branch_0x8021fd50
    cmpwi   r0, 0x0
    bge-    branch_0x8021fd34
    b       branch_0x8021fd50

branch_0x8021fd34:
    lwz     r0, 0x1c(sp)
    neg     r0, r0
    stw     r0, 0x1c(sp)
    b       branch_0x8021fd50

branch_0x8021fd44:
    lfs     f0, 0x1c(sp)
    fneg    f0, f0
    stfs    f0, 0x1c(sp)
branch_0x8021fd50:
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021fd74
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8021fd9c

branch_0x8021fd74:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021fd9c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl execle__10TSpcInterpFv
execle__10TSpcInterpFv: # 0x8021fdb0
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021fe10
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x8021fe34

branch_0x8021fe10:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x8021fe34:
    stw     r4, 0x30(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021fe78
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
    b       branch_0x8021fe9c

branch_0x8021fe78:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
branch_0x8021fe9c:
    stw     r4, 0x28(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x28(sp)
    cmplwi  r0, 0x1
    beq-    branch_0x8021fec0
    lwz     r0, 0x30(sp)
    cmplwi  r0, 0x1
    bne-    branch_0x8021fef0
branch_0x8021fec0:
    addi    r3, sp, 0x30
    bl      getDataFloat__9TSpcSliceCFv
    fmr     f31, f1
    addi    r3, sp, 0x28
    bl      getDataFloat__9TSpcSliceCFv
    fcmpo   cr0, f1, f31
    cror    2, 0, 2
    bne-    branch_0x8021fee8
    li      r3, 0x1
    b       branch_0x8021ff18

branch_0x8021fee8:
    li      r3, 0x0
    b       branch_0x8021ff18

branch_0x8021fef0:
    addi    r3, sp, 0x30
    bl      getDataInt__9TSpcSliceCFv
    addi    r29, r3, 0x0
    addi    r3, sp, 0x28
    bl      getDataInt__9TSpcSliceCFv
    cmpw    r3, r29
    bgt-    branch_0x8021ff14
    li      r3, 0x1
    b       branch_0x8021ff18

branch_0x8021ff14:
    li      r3, 0x0
branch_0x8021ff18:
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r3, 0x14(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8021ff44
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021ff6c

branch_0x8021ff44:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8021ff6c:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl getDataFloat__9TSpcSliceCFv
getDataFloat__9TSpcSliceCFv: # 0x8021ff8c
    stwu    sp, -0x18(sp)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8021ffd0
    bge-    branch_0x8021ffd8
    cmpwi   r0, 0x0
    bge-    branch_0x8021ffac
    b       branch_0x8021ffd8

branch_0x8021ffac:
    lwz     r3, 0x4(r3)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f1, f0, f1
    b       branch_0x8021ffdc

branch_0x8021ffd0:
    lfs     f1, 0x4(r3)
    b       branch_0x8021ffdc

branch_0x8021ffd8:
    lfs     f1, -0x18a8(rtoc)
branch_0x8021ffdc:
    addi    sp, sp, 0x18
    blr


.globl execge__10TSpcInterpFv
execge__10TSpcInterpFv: # 0x8021ffe4
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220044
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x80220068

branch_0x80220044:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x80220068:
    stw     r4, 0x30(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x802200ac
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
    b       branch_0x802200d0

branch_0x802200ac:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
branch_0x802200d0:
    stw     r4, 0x28(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x28(sp)
    cmplwi  r0, 0x1
    beq-    branch_0x802200f4
    lwz     r0, 0x30(sp)
    cmplwi  r0, 0x1
    bne-    branch_0x80220124
branch_0x802200f4:
    addi    r3, sp, 0x30
    bl      getDataFloat__9TSpcSliceCFv
    fmr     f31, f1
    addi    r3, sp, 0x28
    bl      getDataFloat__9TSpcSliceCFv
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x8022011c
    li      r3, 0x1
    b       branch_0x8022014c

branch_0x8022011c:
    li      r3, 0x0
    b       branch_0x8022014c

branch_0x80220124:
    addi    r3, sp, 0x30
    bl      getDataInt__9TSpcSliceCFv
    addi    r29, r3, 0x0
    addi    r3, sp, 0x28
    bl      getDataInt__9TSpcSliceCFv
    cmpw    r3, r29
    blt-    branch_0x80220148
    li      r3, 0x1
    b       branch_0x8022014c

branch_0x80220148:
    li      r3, 0x0
branch_0x8022014c:
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r3, 0x14(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x80220178
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802201a0

branch_0x80220178:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x802201a0:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl execlt__10TSpcInterpFv
execlt__10TSpcInterpFv: # 0x802201c0
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220220
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x80220244

branch_0x80220220:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x80220244:
    stw     r4, 0x30(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220288
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
    b       branch_0x802202ac

branch_0x80220288:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
branch_0x802202ac:
    stw     r4, 0x28(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x28(sp)
    cmplwi  r0, 0x1
    beq-    branch_0x802202d0
    lwz     r0, 0x30(sp)
    cmplwi  r0, 0x1
    bne-    branch_0x802202fc
branch_0x802202d0:
    addi    r3, sp, 0x30
    bl      getDataFloat__9TSpcSliceCFv
    fmr     f31, f1
    addi    r3, sp, 0x28
    bl      getDataFloat__9TSpcSliceCFv
    fcmpo   cr0, f1, f31
    bge-    branch_0x802202f4
    li      r3, 0x1
    b       branch_0x80220324

branch_0x802202f4:
    li      r3, 0x0
    b       branch_0x80220324

branch_0x802202fc:
    addi    r3, sp, 0x30
    bl      getDataInt__9TSpcSliceCFv
    addi    r29, r3, 0x0
    addi    r3, sp, 0x28
    bl      getDataInt__9TSpcSliceCFv
    cmpw    r3, r29
    bge-    branch_0x80220320
    li      r3, 0x1
    b       branch_0x80220324

branch_0x80220320:
    li      r3, 0x0
branch_0x80220324:
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r3, 0x14(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x80220350
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80220378

branch_0x80220350:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80220378:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl execgt__10TSpcInterpFv
execgt__10TSpcInterpFv: # 0x80220398
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x802203f8
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x8022041c

branch_0x802203f8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x8022041c:
    stw     r4, 0x30(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220460
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
    b       branch_0x80220484

branch_0x80220460:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x1c(sp)
branch_0x80220484:
    stw     r4, 0x28(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x28(sp)
    cmplwi  r0, 0x1
    beq-    branch_0x802204a8
    lwz     r0, 0x30(sp)
    cmplwi  r0, 0x1
    bne-    branch_0x802204d4
branch_0x802204a8:
    addi    r3, sp, 0x30
    bl      getDataFloat__9TSpcSliceCFv
    fmr     f31, f1
    addi    r3, sp, 0x28
    bl      getDataFloat__9TSpcSliceCFv
    fcmpo   cr0, f1, f31
    ble-    branch_0x802204cc
    li      r3, 0x1
    b       branch_0x802204fc

branch_0x802204cc:
    li      r3, 0x0
    b       branch_0x802204fc

branch_0x802204d4:
    addi    r3, sp, 0x30
    bl      getDataInt__9TSpcSliceCFv
    addi    r29, r3, 0x0
    addi    r3, sp, 0x28
    bl      getDataInt__9TSpcSliceCFv
    cmpw    r3, r29
    ble-    branch_0x802204f8
    li      r3, 0x1
    b       branch_0x802204fc

branch_0x802204f8:
    li      r3, 0x0
branch_0x802204fc:
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r3, 0x14(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x80220528
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80220550

branch_0x80220528:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80220550:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl execne__10TSpcInterpFv
execne__10TSpcInterpFv: # 0x80220570
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x802205c8
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
    b       branch_0x802205ec

branch_0x802205c8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
branch_0x802205ec:
    stw     r4, 0x2c(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x30(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220630
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x18(sp)
    b       branch_0x80220654

branch_0x80220630:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x18(sp)
branch_0x80220654:
    stw     r4, 0x24(sp)
    addi    r3, sp, 0x24
    lwz     r0, 0x18(sp)
    addi    r4, sp, 0x2c
    stw     r0, 0x28(sp)
    bl      __ne__9TSpcSliceCFRC9TSpcSlice
    li      r0, 0x0
    stw     r0, 0xc(sp)
    stw     r3, 0x10(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x80220698
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802206c0

branch_0x80220698:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0xc(sp)
    lwz     r0, 0x10(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x802206c0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __ne__9TSpcSliceCFRC9TSpcSlice
__ne__9TSpcSliceCFRC9TSpcSlice: # 0x802206d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lwz     r5, 0x0(r3)
    cmplwi  r5, 0x2
    bne-    branch_0x80220720
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x2
    bne-    branch_0x80220720
    lwz     r3, 0x4(r3)
    lwz     r4, 0x4(r4)
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x80220718
    li      r3, 0x1
    b       branch_0x80220864

branch_0x80220718:
    li      r3, 0x0
    b       branch_0x80220864

branch_0x80220720:
    cmplwi  r5, 0x1
    beq-    branch_0x80220734
    lwz     r6, 0x0(r4)
    cmplwi  r6, 0x1
    bne-    branch_0x802207e0
branch_0x80220734:
    cmpwi   r5, 0x1
    beq-    branch_0x80220770
    bge-    branch_0x80220778
    cmpwi   r5, 0x0
    bge-    branch_0x8022074c
    b       branch_0x80220778

branch_0x8022074c:
    lwz     r3, 0x4(r3)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f2, f0, f1
    b       branch_0x8022077c

branch_0x80220770:
    lfs     f2, 0x4(r3)
    b       branch_0x8022077c

branch_0x80220778:
    lfs     f2, -0x18a8(rtoc)
branch_0x8022077c:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x802207bc
    bge-    branch_0x802207c4
    cmpwi   r0, 0x0
    bge-    branch_0x80220798
    b       branch_0x802207c4

branch_0x80220798:
    lwz     r3, 0x4(r4)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    b       branch_0x802207c8

branch_0x802207bc:
    lfs     f0, 0x4(r4)
    b       branch_0x802207c8

branch_0x802207c4:
    lfs     f0, -0x18a8(rtoc)
branch_0x802207c8:
    fcmpu   cr0, f2, f0
    beq-    branch_0x802207d8
    li      r3, 0x1
    b       branch_0x80220864

branch_0x802207d8:
    li      r3, 0x0
    b       branch_0x80220864

branch_0x802207e0:
    cmpwi   r5, 0x1
    beq-    branch_0x80220800
    bge-    branch_0x80220814
    cmpwi   r5, 0x0
    bge-    branch_0x802207f8
    b       branch_0x80220814

branch_0x802207f8:
    lwz     r0, 0x4(r3)
    b       branch_0x80220818

branch_0x80220800:
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    b       branch_0x80220818

branch_0x80220814:
    li      r0, 0x0
branch_0x80220818:
    cmpwi   r6, 0x1
    beq-    branch_0x80220838
    bge-    branch_0x8022084c
    cmpwi   r6, 0x0
    bge-    branch_0x80220830
    b       branch_0x8022084c

branch_0x80220830:
    lwz     r3, 0x4(r4)
    b       branch_0x80220850

branch_0x80220838:
    lfs     f0, 0x4(r4)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    b       branch_0x80220850

branch_0x8022084c:
    li      r3, 0x0
branch_0x80220850:
    cmpw    r0, r3
    beq-    branch_0x80220860
    li      r3, 0x1
    b       branch_0x80220864

branch_0x80220860:
    li      r3, 0x0
branch_0x80220864:
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execeq__10TSpcInterpFv
execeq__10TSpcInterpFv: # 0x80220874
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x802208cc
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
    b       branch_0x802208f0

branch_0x802208cc:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
branch_0x802208f0:
    stw     r4, 0x2c(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x30(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220934
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x18(sp)
    b       branch_0x80220958

branch_0x80220934:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x18(sp)
branch_0x80220958:
    stw     r4, 0x24(sp)
    addi    r3, sp, 0x24
    lwz     r0, 0x18(sp)
    addi    r4, sp, 0x2c
    stw     r0, 0x28(sp)
    bl      __eq__9TSpcSliceCFRC9TSpcSlice
    li      r0, 0x0
    stw     r0, 0xc(sp)
    stw     r3, 0x10(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8022099c
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802209c4

branch_0x8022099c:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0xc(sp)
    lwz     r0, 0x10(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x802209c4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __eq__9TSpcSliceCFRC9TSpcSlice
__eq__9TSpcSliceCFRC9TSpcSlice: # 0x802209dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lwz     r5, 0x0(r3)
    cmplwi  r5, 0x2
    bne-    branch_0x80220a24
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x2
    bne-    branch_0x80220a24
    lwz     r3, 0x4(r3)
    lwz     r4, 0x4(r4)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80220a1c
    li      r3, 0x1
    b       branch_0x80220b68

branch_0x80220a1c:
    li      r3, 0x0
    b       branch_0x80220b68

branch_0x80220a24:
    cmplwi  r5, 0x1
    beq-    branch_0x80220a38
    lwz     r6, 0x0(r4)
    cmplwi  r6, 0x1
    bne-    branch_0x80220ae4
branch_0x80220a38:
    cmpwi   r5, 0x1
    beq-    branch_0x80220a74
    bge-    branch_0x80220a7c
    cmpwi   r5, 0x0
    bge-    branch_0x80220a50
    b       branch_0x80220a7c

branch_0x80220a50:
    lwz     r3, 0x4(r3)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f2, f0, f1
    b       branch_0x80220a80

branch_0x80220a74:
    lfs     f2, 0x4(r3)
    b       branch_0x80220a80

branch_0x80220a7c:
    lfs     f2, -0x18a8(rtoc)
branch_0x80220a80:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x80220ac0
    bge-    branch_0x80220ac8
    cmpwi   r0, 0x0
    bge-    branch_0x80220a9c
    b       branch_0x80220ac8

branch_0x80220a9c:
    lwz     r3, 0x4(r4)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    b       branch_0x80220acc

branch_0x80220ac0:
    lfs     f0, 0x4(r4)
    b       branch_0x80220acc

branch_0x80220ac8:
    lfs     f0, -0x18a8(rtoc)
branch_0x80220acc:
    fcmpu   cr0, f2, f0
    bne-    branch_0x80220adc
    li      r3, 0x1
    b       branch_0x80220b68

branch_0x80220adc:
    li      r3, 0x0
    b       branch_0x80220b68

branch_0x80220ae4:
    cmpwi   r5, 0x1
    beq-    branch_0x80220b04
    bge-    branch_0x80220b18
    cmpwi   r5, 0x0
    bge-    branch_0x80220afc
    b       branch_0x80220b18

branch_0x80220afc:
    lwz     r0, 0x4(r3)
    b       branch_0x80220b1c

branch_0x80220b04:
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    b       branch_0x80220b1c

branch_0x80220b18:
    li      r0, 0x0
branch_0x80220b1c:
    cmpwi   r6, 0x1
    beq-    branch_0x80220b3c
    bge-    branch_0x80220b50
    cmpwi   r6, 0x0
    bge-    branch_0x80220b34
    b       branch_0x80220b50

branch_0x80220b34:
    lwz     r3, 0x4(r4)
    b       branch_0x80220b54

branch_0x80220b3c:
    lfs     f0, 0x4(r4)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    b       branch_0x80220b54

branch_0x80220b50:
    li      r3, 0x0
branch_0x80220b54:
    cmpw    r0, r3
    bne-    branch_0x80220b64
    li      r3, 0x1
    b       branch_0x80220b68

branch_0x80220b64:
    li      r3, 0x0
branch_0x80220b68:
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execass__10TSpcInterpFv
execass__10TSpcInterpFv: # 0x80220b78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220bc8
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2b98
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x80220bec

branch_0x80220bc8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x80220bec:
    stw     r4, 0x74(sp)
    lwz     r0, 0x64(sp)
    stw     r0, 0x78(sp)
    lwz     r5, 0x8(r31)
    addi    r0, r5, 0x1
    stw     r0, 0x8(r31)
    lwz     r5, 0x0(r31)
    lwz     r0, 0x8(r31)
    lwz     r6, 0x0(r5)
    lwz     r5, 0x4(r6)
    add     r5, r5, r0
    add     r5, r6, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x54(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x55(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x56(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x57(sp)
    lwz     r4, 0x8(r31)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r31)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x54(sp)
    lwz     r7, 0x0(r4)
    lwz     r4, 0x8(r31)
    slwi    r0, r0, 2
    lwz     r6, 0x4(r7)
    add     r5, r31, r0
    add     r4, r6, r4
    add     r4, r7, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x4c(sp)
    lbzu    r0, 0x1(r4)
    stb     r0, 0x4d(sp)
    lbz     r0, 0x1(r4)
    stb     r0, 0x4e(sp)
    lbz     r0, 0x2(r4)
    stb     r0, 0x4f(sp)
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x4
    stw     r0, 0x8(r31)
    lwz     r3, 0x48(r5)
    lwz     r0, 0x4c(sp)
    lwz     r5, 0x30(r31)
    add     r0, r3, r0
    lwz     r3, 0x74(sp)
    slwi    r4, r0, 3
    lwz     r0, 0x78(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl execmod__10TSpcInterpFv
execmod__10TSpcInterpFv: # 0x80220cd4
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220d30
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x80220d54

branch_0x80220d30:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x80220d54:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220d94
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x80220db8

branch_0x80220d94:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x80220db8:
    lwz     r0, 0x24(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x34(sp)
    beq-    branch_0x80220de0
    bge-    branch_0x80220df4
    cmpwi   r4, 0x0
    bge-    branch_0x80220dd8
    b       branch_0x80220df4

branch_0x80220dd8:
    lwz     r4, 0x34(sp)
    b       branch_0x80220df8

branch_0x80220de0:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r4, 0x44(sp)
    b       branch_0x80220df8

branch_0x80220df4:
    li      r4, 0x0
branch_0x80220df8:
    cmpwi   r30, 0x1
    beq-    branch_0x80220e18
    bge-    branch_0x80220e2c
    cmpwi   r30, 0x0
    bge-    branch_0x80220e10
    b       branch_0x80220e2c

branch_0x80220e10:
    lwz     r3, 0x3c(sp)
    b       branch_0x80220e30

branch_0x80220e18:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    b       branch_0x80220e30

branch_0x80220e2c:
    li      r3, 0x0
branch_0x80220e30:
    divw    r0, r4, r3
    mullw   r0, r0, r3
    li      r3, 0x0
    stw     r3, 0x18(sp)
    subf    r0, r0, r4
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80220e68
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80220e90

branch_0x80220e68:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80220e90:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl execdiv__10TSpcInterpFv
execdiv__10TSpcInterpFv: # 0x80220eac
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220f08
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
    b       branch_0x80220f2c

branch_0x80220f08:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
branch_0x80220f2c:
    lwz     r0, 0x38(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80220f6c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
    b       branch_0x80220f90

branch_0x80220f6c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
branch_0x80220f90:
    lwz     r0, 0x30(sp)
    cmplwi  r4, 0x1
    stw     r0, 0x48(sp)
    beq-    branch_0x80220fa8
    cmplwi  r30, 0x1
    bne-    branch_0x802210a0
branch_0x80220fa8:
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x40(sp)
    beq-    branch_0x80220ff0
    bge-    branch_0x80220ff8
    cmpwi   r4, 0x0
    bge-    branch_0x80220fcc
    b       branch_0x80220ff8

branch_0x80220fcc:
    lwz     r3, 0x48(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f2, f0, f1
    b       branch_0x80220ffc

branch_0x80220ff0:
    lfs     f2, 0x48(sp)
    b       branch_0x80220ffc

branch_0x80220ff8:
    lfs     f2, -0x18a8(rtoc)
branch_0x80220ffc:
    cmpwi   r30, 0x1
    beq-    branch_0x80221038
    bge-    branch_0x80221040
    cmpwi   r30, 0x0
    bge-    branch_0x80221014
    b       branch_0x80221040

branch_0x80221014:
    lwz     r3, 0x50(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    b       branch_0x80221044

branch_0x80221038:
    lfs     f0, 0x50(sp)
    b       branch_0x80221044

branch_0x80221040:
    lfs     f0, -0x18a8(rtoc)
branch_0x80221044:
    fdivs   f0, f2, f0
    li      r0, 0x1
    stw     r0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80221074
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80221168

branch_0x80221074:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x80221168

branch_0x802210a0:
    cmpwi   r4, 0x1
    beq-    branch_0x802210c0
    bge-    branch_0x802210d4
    cmpwi   r4, 0x0
    bge-    branch_0x802210b8
    b       branch_0x802210d4

branch_0x802210b8:
    lwz     r0, 0x48(sp)
    b       branch_0x802210d8

branch_0x802210c0:
    lfs     f0, 0x48(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    b       branch_0x802210d8

branch_0x802210d4:
    li      r0, 0x0
branch_0x802210d8:
    cmpwi   r30, 0x1
    beq-    branch_0x802210f8
    bge-    branch_0x8022110c
    cmpwi   r30, 0x0
    bge-    branch_0x802210f0
    b       branch_0x8022110c

branch_0x802210f0:
    lwz     r3, 0x50(sp)
    b       branch_0x80221110

branch_0x802210f8:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    b       branch_0x80221110

branch_0x8022110c:
    li      r3, 0x0
branch_0x80221110:
    divw    r0, r0, r3
    li      r3, 0x0
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80221140
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80221168

branch_0x80221140:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80221168:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl execmul__10TSpcInterpFv
execmul__10TSpcInterpFv: # 0x80221184
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x802211e0
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
    b       branch_0x80221204

branch_0x802211e0:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
branch_0x80221204:
    lwz     r0, 0x38(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80221244
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
    b       branch_0x80221268

branch_0x80221244:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
branch_0x80221268:
    lwz     r0, 0x30(sp)
    cmplwi  r4, 0x1
    stw     r0, 0x48(sp)
    beq-    branch_0x80221280
    cmplwi  r30, 0x1
    bne-    branch_0x80221378
branch_0x80221280:
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x40(sp)
    beq-    branch_0x802212c8
    bge-    branch_0x802212d0
    cmpwi   r4, 0x0
    bge-    branch_0x802212a4
    b       branch_0x802212d0

branch_0x802212a4:
    lwz     r3, 0x48(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f2, f0, f1
    b       branch_0x802212d4

branch_0x802212c8:
    lfs     f2, 0x48(sp)
    b       branch_0x802212d4

branch_0x802212d0:
    lfs     f2, -0x18a8(rtoc)
branch_0x802212d4:
    cmpwi   r30, 0x1
    beq-    branch_0x80221310
    bge-    branch_0x80221318
    cmpwi   r30, 0x0
    bge-    branch_0x802212ec
    b       branch_0x80221318

branch_0x802212ec:
    lwz     r3, 0x50(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    b       branch_0x8022131c

branch_0x80221310:
    lfs     f0, 0x50(sp)
    b       branch_0x8022131c

branch_0x80221318:
    lfs     f0, -0x18a8(rtoc)
branch_0x8022131c:
    li      r0, 0x1
    fmuls   f0, f2, f0
    stw     r0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8022134c
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80221440

branch_0x8022134c:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x80221440

branch_0x80221378:
    cmpwi   r4, 0x1
    beq-    branch_0x80221398
    bge-    branch_0x802213ac
    cmpwi   r4, 0x0
    bge-    branch_0x80221390
    b       branch_0x802213ac

branch_0x80221390:
    lwz     r0, 0x48(sp)
    b       branch_0x802213b0

branch_0x80221398:
    lfs     f0, 0x48(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    b       branch_0x802213b0

branch_0x802213ac:
    li      r0, 0x0
branch_0x802213b0:
    cmpwi   r30, 0x1
    beq-    branch_0x802213d0
    bge-    branch_0x802213e4
    cmpwi   r30, 0x0
    bge-    branch_0x802213c8
    b       branch_0x802213e4

branch_0x802213c8:
    lwz     r3, 0x50(sp)
    b       branch_0x802213e8

branch_0x802213d0:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    b       branch_0x802213e8

branch_0x802213e4:
    li      r3, 0x0
branch_0x802213e8:
    mullw   r0, r0, r3
    li      r3, 0x0
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80221418
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80221440

branch_0x80221418:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80221440:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl execsub__10TSpcInterpFv
execsub__10TSpcInterpFv: # 0x8022145c
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x802214b8
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
    b       branch_0x802214dc

branch_0x802214b8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
branch_0x802214dc:
    lwz     r0, 0x38(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8022151c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
    b       branch_0x80221540

branch_0x8022151c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
branch_0x80221540:
    lwz     r0, 0x30(sp)
    cmplwi  r4, 0x1
    stw     r0, 0x48(sp)
    beq-    branch_0x80221558
    cmplwi  r30, 0x1
    bne-    branch_0x80221650
branch_0x80221558:
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x40(sp)
    beq-    branch_0x802215a0
    bge-    branch_0x802215a8
    cmpwi   r4, 0x0
    bge-    branch_0x8022157c
    b       branch_0x802215a8

branch_0x8022157c:
    lwz     r3, 0x48(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f2, f0, f1
    b       branch_0x802215ac

branch_0x802215a0:
    lfs     f2, 0x48(sp)
    b       branch_0x802215ac

branch_0x802215a8:
    lfs     f2, -0x18a8(rtoc)
branch_0x802215ac:
    cmpwi   r30, 0x1
    beq-    branch_0x802215e8
    bge-    branch_0x802215f0
    cmpwi   r30, 0x0
    bge-    branch_0x802215c4
    b       branch_0x802215f0

branch_0x802215c4:
    lwz     r3, 0x50(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    b       branch_0x802215f4

branch_0x802215e8:
    lfs     f0, 0x50(sp)
    b       branch_0x802215f4

branch_0x802215f0:
    lfs     f0, -0x18a8(rtoc)
branch_0x802215f4:
    li      r0, 0x1
    fsubs   f0, f2, f0
    stw     r0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80221624
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80221718

branch_0x80221624:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x80221718

branch_0x80221650:
    cmpwi   r4, 0x1
    beq-    branch_0x80221670
    bge-    branch_0x80221684
    cmpwi   r4, 0x0
    bge-    branch_0x80221668
    b       branch_0x80221684

branch_0x80221668:
    lwz     r3, 0x48(sp)
    b       branch_0x80221688

branch_0x80221670:
    lfs     f0, 0x48(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    b       branch_0x80221688

branch_0x80221684:
    li      r3, 0x0
branch_0x80221688:
    cmpwi   r30, 0x1
    beq-    branch_0x802216a8
    bge-    branch_0x802216bc
    cmpwi   r30, 0x0
    bge-    branch_0x802216a0
    b       branch_0x802216bc

branch_0x802216a0:
    lwz     r4, 0x50(sp)
    b       branch_0x802216c0

branch_0x802216a8:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r4, 0x5c(sp)
    b       branch_0x802216c0

branch_0x802216bc:
    li      r4, 0x0
branch_0x802216c0:
    li      r0, 0x0
    stw     r0, 0x24(sp)
    subf    r0, r4, r3
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x802216f0
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80221718

branch_0x802216f0:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80221718:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl execadd__10TSpcInterpFv
execadd__10TSpcInterpFv: # 0x80221734
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    lwz     r3, 0x1c(r3)
    cmpwi   r3, 0x0
    bgt-    branch_0x80221790
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
    b       branch_0x802217b4

branch_0x80221790:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
branch_0x802217b4:
    lwz     r0, 0x38(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x802217f4
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
    b       branch_0x80221818

branch_0x802217f4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x30(sp)
branch_0x80221818:
    lwz     r0, 0x30(sp)
    cmplwi  r4, 0x1
    stw     r0, 0x48(sp)
    beq-    branch_0x80221830
    cmplwi  r30, 0x1
    bne-    branch_0x80221928
branch_0x80221830:
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x40(sp)
    beq-    branch_0x80221878
    bge-    branch_0x80221880
    cmpwi   r4, 0x0
    bge-    branch_0x80221854
    b       branch_0x80221880

branch_0x80221854:
    lwz     r3, 0x48(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f2, f0, f1
    b       branch_0x80221884

branch_0x80221878:
    lfs     f2, 0x48(sp)
    b       branch_0x80221884

branch_0x80221880:
    lfs     f2, -0x18a8(rtoc)
branch_0x80221884:
    cmpwi   r30, 0x1
    beq-    branch_0x802218c0
    bge-    branch_0x802218c8
    cmpwi   r30, 0x0
    bge-    branch_0x8022189c
    b       branch_0x802218c8

branch_0x8022189c:
    lwz     r3, 0x50(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    b       branch_0x802218cc

branch_0x802218c0:
    lfs     f0, 0x50(sp)
    b       branch_0x802218cc

branch_0x802218c8:
    lfs     f0, -0x18a8(rtoc)
branch_0x802218cc:
    li      r0, 0x1
    fadds   f0, f2, f0
    stw     r0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x802218fc
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802219f0

branch_0x802218fc:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x802219f0

branch_0x80221928:
    cmpwi   r4, 0x1
    beq-    branch_0x80221948
    bge-    branch_0x8022195c
    cmpwi   r4, 0x0
    bge-    branch_0x80221940
    b       branch_0x8022195c

branch_0x80221940:
    lwz     r3, 0x48(sp)
    b       branch_0x80221960

branch_0x80221948:
    lfs     f0, 0x48(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    b       branch_0x80221960

branch_0x8022195c:
    li      r3, 0x0
branch_0x80221960:
    cmpwi   r30, 0x1
    beq-    branch_0x80221980
    bge-    branch_0x80221994
    cmpwi   r30, 0x0
    bge-    branch_0x80221978
    b       branch_0x80221994

branch_0x80221978:
    lwz     r4, 0x50(sp)
    b       branch_0x80221998

branch_0x80221980:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r4, 0x5c(sp)
    b       branch_0x80221998

branch_0x80221994:
    li      r4, 0x0
branch_0x80221998:
    li      r0, 0x0
    stw     r0, 0x24(sp)
    add     r0, r3, r4
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x802219c8
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802219f0

branch_0x802219c8:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x802219f0:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl execdec__10TSpcInterpFv
execdec__10TSpcInterpFv: # 0x80221a0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    lwz     r6, 0x8(r3)
    addi    r0, r6, 0x1
    stw     r0, 0x8(r3)
    lwz     r6, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r7, 0x0(r6)
    lwz     r6, 0x4(r7)
    add     r6, r6, r0
    add     r6, r7, r6
    lbz     r0, 0x0(r6)
    stb     r0, 0x58(sp)
    lbzu    r0, 0x1(r6)
    stb     r0, 0x59(sp)
    lbz     r0, 0x1(r6)
    stb     r0, 0x5a(sp)
    lbz     r0, 0x2(r6)
    stb     r0, 0x5b(sp)
    lwz     r5, 0x8(r3)
    addi    r0, r5, 0x4
    stw     r0, 0x8(r3)
    lwz     r5, 0x0(r3)
    lwz     r0, 0x58(sp)
    lwz     r8, 0x0(r5)
    slwi    r0, r0, 2
    lwz     r5, 0x8(r3)
    lwz     r7, 0x4(r8)
    add     r6, r3, r0
    add     r5, r7, r5
    add     r5, r8, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x50(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x51(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x52(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x53(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r5, 0x50(sp)
    lwz     r6, 0x48(r6)
    lwz     r4, 0x30(r3)
    add     r0, r6, r5
    slwi    r0, r0, 3
    add     r7, r4, r0
    lwz     r0, 0x0(r7)
    cmpwi   r0, 0x1
    beq-    branch_0x80221afc
    bge-    branch_0x80221b0c
    cmpwi   r0, 0x0
    bge-    branch_0x80221aec
    b       branch_0x80221b0c

branch_0x80221aec:
    lwz     r4, 0x4(r7)
    subi    r0, r4, 0x1
    stw     r0, 0x4(r7)
    b       branch_0x80221b0c

branch_0x80221afc:
    lfs     f1, 0x4(r7)
    lfs     f0, -0x1898(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r7)
branch_0x80221b0c:
    lwz     r8, 0x1c(r3)
    add     r4, r6, r5
    lwz     r0, 0x18(r3)
    slwi    r4, r4, 3
    lwz     r5, 0x30(r3)
    cmpw    r8, r0
    add     r7, r5, r4
    blt-    branch_0x80221b40
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80221b68

branch_0x80221b40:
    lwz     r6, 0x20(r3)
    slwi    r5, r8, 3
    lwz     r4, 0x0(r7)
    lwz     r0, 0x4(r7)
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x1c(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r3)
branch_0x80221b68:
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl execinc__10TSpcInterpFv
execinc__10TSpcInterpFv: # 0x80221b78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    lwz     r6, 0x8(r3)
    addi    r0, r6, 0x1
    stw     r0, 0x8(r3)
    lwz     r6, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r7, 0x0(r6)
    lwz     r6, 0x4(r7)
    add     r6, r6, r0
    add     r6, r7, r6
    lbz     r0, 0x0(r6)
    stb     r0, 0x58(sp)
    lbzu    r0, 0x1(r6)
    stb     r0, 0x59(sp)
    lbz     r0, 0x1(r6)
    stb     r0, 0x5a(sp)
    lbz     r0, 0x2(r6)
    stb     r0, 0x5b(sp)
    lwz     r5, 0x8(r3)
    addi    r0, r5, 0x4
    stw     r0, 0x8(r3)
    lwz     r5, 0x0(r3)
    lwz     r0, 0x58(sp)
    lwz     r8, 0x0(r5)
    slwi    r0, r0, 2
    lwz     r5, 0x8(r3)
    lwz     r7, 0x4(r8)
    add     r6, r3, r0
    add     r5, r7, r5
    add     r5, r8, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x50(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x51(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x52(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x53(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r5, 0x50(sp)
    lwz     r6, 0x48(r6)
    lwz     r4, 0x30(r3)
    add     r0, r6, r5
    slwi    r0, r0, 3
    add     r7, r4, r0
    lwz     r0, 0x0(r7)
    cmpwi   r0, 0x1
    beq-    branch_0x80221c68
    bge-    branch_0x80221c78
    cmpwi   r0, 0x0
    bge-    branch_0x80221c58
    b       branch_0x80221c78

branch_0x80221c58:
    lwz     r4, 0x4(r7)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r7)
    b       branch_0x80221c78

branch_0x80221c68:
    lfs     f1, 0x4(r7)
    lfs     f0, -0x1898(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r7)
branch_0x80221c78:
    lwz     r8, 0x1c(r3)
    add     r4, r6, r5
    lwz     r0, 0x18(r3)
    slwi    r4, r4, 3
    lwz     r5, 0x30(r3)
    cmpw    r8, r0
    add     r7, r5, r4
    blt-    branch_0x80221cac
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80221cd4

branch_0x80221cac:
    lwz     r6, 0x20(r3)
    slwi    r5, r8, 3
    lwz     r4, 0x0(r7)
    lwz     r0, 0x4(r7)
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x1c(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r3)
branch_0x80221cd4:
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl execnop__10TSpcInterpFv
execnop__10TSpcInterpFv: # 0x80221ce4
    blr


.globl execvar__10TSpcInterpFv
execvar__10TSpcInterpFv: # 0x80221ce8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    lwz     r6, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r7, 0x0(r6)
    lwz     r6, 0x4(r7)
    add     r6, r6, r0
    add     r6, r7, r6
    lbz     r0, 0x0(r6)
    stb     r0, 0x38(sp)
    lbzu    r0, 0x1(r6)
    stb     r0, 0x39(sp)
    lbz     r0, 0x1(r6)
    stb     r0, 0x3a(sp)
    lbz     r0, 0x2(r6)
    stb     r0, 0x3b(sp)
    lwz     r5, 0x8(r3)
    addi    r0, r5, 0x4
    stw     r0, 0x8(r3)
    lwz     r5, 0x0(r3)
    lwz     r0, 0x38(sp)
    lwz     r8, 0x0(r5)
    slwi    r0, r0, 2
    lwz     r5, 0x8(r3)
    lwz     r7, 0x4(r8)
    add     r6, r3, r0
    add     r5, r7, r5
    add     r5, r8, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x30(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x31(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x32(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x33(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r5, 0x48(r6)
    lwz     r4, 0x30(sp)
    lwz     r8, 0x1c(r3)
    add     r4, r5, r4
    lwz     r0, 0x18(r3)
    lwz     r5, 0x30(r3)
    slwi    r4, r4, 3
    cmpw    r8, r0
    add     r7, r5, r4
    blt-    branch_0x80221dc4
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80221dec

branch_0x80221dc4:
    lwz     r6, 0x20(r3)
    slwi    r5, r8, 3
    lwz     r4, 0x0(r7)
    lwz     r0, 0x4(r7)
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x1c(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r3)
branch_0x80221dec:
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl execadr__10TSpcInterpFv
execadr__10TSpcInterpFv: # 0x80221dfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      fetchU32__10TSpcInterpFv
    li      r0, 0x0
    stw     r0, 0xc(sp)
    stw     r3, 0x10(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80221e44
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80221e6c

branch_0x80221e44:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0xc(sp)
    lwz     r0, 0x10(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80221e6c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl fetchU32__10TSpcInterpFv
fetchU32__10TSpcInterpFv: # 0x80221e80
    stwu    sp, -0x20(sp)
    lwz     r5, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r6, 0x0(r5)
    lwz     r5, 0x4(r6)
    add     r5, r5, r0
    add     r5, r6, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x1c(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x1d(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x1e(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x1f(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r3, 0x1c(sp)
    addi    sp, sp, 0x20
    blr


.globl execstr__10TSpcInterpFv
execstr__10TSpcInterpFv: # 0x80221ed4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      fetchU32__10TSpcInterpFv
    lwz     r29, 0x0(r31)
    mr      r30, r3
    lwz     r28, 0x0(r29)
    mr      r3, r29
    bl      getHeader__10TSpcBinaryCFv
    lwz     r5, 0x8(r3)
    slwi    r4, r30, 2
    lwz     r3, 0xc(r28)
    li      r0, 0x2
    add     r5, r5, r4
    lwz     r6, 0x0(r29)
    slwi    r3, r3, 2
    lwz     r4, 0x8(r28)
    lwzx    r5, r6, r5
    add     r3, r4, r3
    add     r3, r3, r5
    stw     r0, 0x1c(sp)
    add.    r3, r6, r3
    bne-    branch_0x80221f5c
    subi    r0, rtoc, 0x1894
    stw     r0, 0x20(sp)
    b       branch_0x80221f60

branch_0x80221f5c:
    stw     r3, 0x20(sp)
branch_0x80221f60:
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80221f84
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80221fac

branch_0x80221f84:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80221fac:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl getHeader__10TSpcBinaryCFv
getHeader__10TSpcBinaryCFv: # 0x80221fcc
    lwz     r3, 0x0(r3)
    blr


.globl execflt__10TSpcInterpFv
execflt__10TSpcInterpFv: # 0x80221fd4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x30(sp)
    stw     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    li      r0, 0x1
    lwz     r6, 0x0(r3)
    lwz     r5, 0x8(r3)
    lwz     r7, 0x0(r6)
    lwz     r6, 0x4(r7)
    add     r5, r6, r5
    add     r5, r7, r5
    lbz     r6, 0x0(r5)
    stb     r6, 0x1c(sp)
    lbzu    r6, 0x1(r5)
    stb     r6, 0x1d(sp)
    lbz     r6, 0x1(r5)
    stb     r6, 0x1e(sp)
    lbz     r6, 0x2(r5)
    stb     r6, 0x1f(sp)
    lwz     r4, 0x8(r3)
    addi    r4, r4, 0x4
    stw     r4, 0x8(r3)
    stw     r0, 0x28(sp)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x2c(sp)
    lwz     r4, 0x1c(r3)
    lwz     r0, 0x18(r3)
    cmpw    r4, r0
    blt-    branch_0x80222064
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8022208c

branch_0x80222064:
    lwz     r6, 0x20(r3)
    slwi    r5, r4, 3
    lwz     r4, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r5, r6, r5
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r4, 0x1c(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r3)
branch_0x8022208c:
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl execint__10TSpcInterpFv
execint__10TSpcInterpFv: # 0x8022209c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      fetchS32__10TSpcInterpFv
    li      r0, 0x0
    stw     r0, 0xc(sp)
    stw     r3, 0x10(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802220e4
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8022210c

branch_0x802220e4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0xc(sp)
    lwz     r0, 0x10(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8022210c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl fetchS32__10TSpcInterpFv
fetchS32__10TSpcInterpFv: # 0x80222120
    stwu    sp, -0x20(sp)
    lwz     r5, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r6, 0x0(r5)
    lwz     r5, 0x4(r6)
    add     r5, r5, r0
    add     r5, r6, r5
    lbz     r0, 0x0(r5)
    stb     r0, 0x1c(sp)
    lbzu    r0, 0x1(r5)
    stb     r0, 0x1d(sp)
    lbz     r0, 0x1(r5)
    stb     r0, 0x1e(sp)
    lbz     r0, 0x2(r5)
    stb     r0, 0x1f(sp)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    lwz     r3, 0x1c(sp)
    addi    sp, sp, 0x20
    blr


.globl bindSystemDataToSymbol__10TSpcBinaryFPCcUl
bindSystemDataToSymbol__10TSpcBinaryFPCcUl: # 0x80222174
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r25, 0x44(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    li      r26, 0x0
    b       branch_0x802221a8

branch_0x80222198:
    mulli   r0, r26, 0x3
    extsb   r3, r3
    add     r26, r3, r0
    addi    r4, r4, 0x1
branch_0x802221a8:
    lbz     r3, 0x0(r4)
    extsb.  r0, r3
    bne+    branch_0x80222198
    li      r27, 0x0
    addi    r28, r27, 0x0
    b       branch_0x80222204

branch_0x802221c0:
    lwz     r0, 0x10(r3)
    add     r5, r3, r0
    add     r25, r5, r28
    lwz     r0, 0xc(r25)
    cmplw   r26, r0
    bne-    branch_0x802221fc
    mulli   r3, r4, 0x14
    lwz     r0, 0x4(r25)
    add     r4, r3, r0
    add     r4, r5, r4
    addi    r3, r30, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802221fc
    b       branch_0x80222218

branch_0x802221fc:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x14
branch_0x80222204:
    lwz     r3, 0x0(r29)
    lwz     r4, 0x14(r3)
    cmplw   r27, r4
    blt+    branch_0x802221c0
    li      r25, 0x0
branch_0x80222218:
    cmplwi  r25, 0x0
    bne-    branch_0x80222238
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x298c
    addi    r4, r30, 0x0
    bl      SpcTrace__FPCce
    b       branch_0x8022223c

branch_0x80222238:
    stw     r31, 0x10(r25)
branch_0x8022223c:
    lmw     r25, 0x44(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl searchSymbol__10TSpcBinaryFPCc
searchSymbol__10TSpcBinaryFPCc: # 0x80222250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    li      r28, 0x0
    b       branch_0x80222280

branch_0x80222270:
    mulli   r0, r28, 0x3
    extsb   r3, r3
    add     r28, r3, r0
    addi    r4, r4, 0x1
branch_0x80222280:
    lbz     r3, 0x0(r4)
    extsb.  r0, r3
    bne+    branch_0x80222270
    li      r26, 0x0
    li      r29, 0x0
    b       branch_0x802222e0

branch_0x80222298:
    lwz     r0, 0x10(r3)
    add     r5, r3, r0
    add     r27, r5, r29
    lwz     r0, 0xc(r27)
    cmplw   r28, r0
    bne-    branch_0x802222d8
    mulli   r3, r4, 0x14
    lwz     r0, 0x4(r27)
    add     r4, r3, r0
    add     r4, r5, r4
    addi    r3, r31, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802222d8
    mr      r3, r27
    b       branch_0x802222f4

branch_0x802222d8:
    addi    r26, r26, 0x1
    addi    r29, r29, 0x14
branch_0x802222e0:
    lwz     r3, 0x0(r30)
    lwz     r4, 0x14(r3)
    cmplw   r26, r4
    blt+    branch_0x80222298
    li      r3, 0x0
branch_0x802222f4:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl initUserBuiltin__10TSpcBinaryFv
initUserBuiltin__10TSpcBinaryFv: # 0x80222308
    blr


.globl init__10TSpcBinaryFv
init__10TSpcBinaryFv: # 0x8022230c
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    li      r5, 0x0
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    subi    r31, r4, 0x2ce0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    addi    r3, r5, 0x0
    b       branch_0x80222384

branch_0x80222338:
    lwz     r0, 0x10(r6)
    mulli   r4, r4, 0x14
    add     r9, r6, r0
    add     r8, r9, r3
    lwz     r0, 0x4(r8)
    li      r6, 0x0
    add     r7, r4, r0
    add     r7, r9, r7
    b       branch_0x8022236c

branch_0x8022235c:
    mulli   r0, r6, 0x3
    extsb   r4, r4
    add     r6, r4, r0
    addi    r7, r7, 0x1
branch_0x8022236c:
    lbz     r4, 0x0(r7)
    extsb.  r0, r4
    bne+    branch_0x8022235c
    stw     r6, 0xc(r8)
    addi    r5, r5, 0x1
    addi    r3, r3, 0x14
branch_0x80222384:
    lwz     r6, 0x0(r30)
    lwz     r4, 0x14(r6)
    cmplw   r5, r4
    blt+    branch_0x80222338
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1890
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x802223bc
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1890
    bl      SpcTrace__FPCce
    b       branch_0x802223c8

branch_0x802223bc:
    lis     r4, 0x8022
    addi    r0, r4, 0x309c
    stw     r0, 0x10(r3)
branch_0x802223c8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1888
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x802223f0
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1888
    bl      SpcTrace__FPCce
    b       branch_0x802223fc

branch_0x802223f0:
    lis     r4, 0x8022
    addi    r0, r4, 0x2fb4
    stw     r0, 0x10(r3)
branch_0x802223fc:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1880
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x80222424
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1880
    bl      SpcTrace__FPCce
    b       branch_0x80222430

branch_0x80222424:
    lis     r4, 0x8022
    addi    r0, r4, 0x2ed0
    stw     r0, 0x10(r3)
branch_0x80222430:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1878
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x80222458
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1878
    bl      SpcTrace__FPCce
    b       branch_0x80222464

branch_0x80222458:
    lis     r4, 0x8022
    addi    r0, r4, 0x2dec
    stw     r0, 0x10(r3)
branch_0x80222464:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1870
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x8022248c
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1870
    bl      SpcTrace__FPCce
    b       branch_0x80222498

branch_0x8022248c:
    lis     r4, 0x8022
    addi    r0, r4, 0x2bf4
    stw     r0, 0x10(r3)
branch_0x80222498:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1868
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x802224c0
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1868
    bl      SpcTrace__FPCce
    b       branch_0x802224cc

branch_0x802224c0:
    lis     r4, 0x8022
    addi    r0, r4, 0x2b14
    stw     r0, 0x10(r3)
branch_0x802224cc:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1860
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x802224f4
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1860
    bl      SpcTrace__FPCce
    b       branch_0x80222500

branch_0x802224f4:
    lis     r4, 0x8022
    addi    r0, r4, 0x2954
    stw     r0, 0x10(r3)
branch_0x80222500:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x185c
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x80222528
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x185c
    bl      SpcTrace__FPCce
    b       branch_0x80222534

branch_0x80222528:
    lis     r4, 0x8022
    addi    r0, r4, 0x2778
    stw     r0, 0x10(r3)
branch_0x80222534:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x1854
    bl      searchSymbol__10TSpcBinaryFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x8022255c
    addi    r3, r31, 0x354
    crxor   6, 6, 6
    subi    r4, rtoc, 0x1854
    bl      SpcTrace__FPCce
    b       branch_0x80222568

branch_0x8022255c:
    lis     r4, 0x8022
    addi    r0, r4, 0x260c
    stw     r0, 0x10(r3)
branch_0x80222568:
    addi    r3, r31, 0x374
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    mr      r3, r30
    lwz     r12, 0x4(r30)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x39c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __dt__10TSpcBinaryFv
__dt__10TSpcBinaryFv: # 0x802225ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802225e0
    lis     r3, 0x803e
    subi    r3, r3, 0x5bf4
    extsh.  r0, r4
    stw     r3, 0x4(r31)
    ble-    branch_0x802225e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x802225e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__10TSpcBinaryFPv
__ct__10TSpcBinaryFPv: # 0x802225f8
    lis     r5, 0x803e
    subi    r0, r5, 0x5bf4
    stw     r0, 0x4(r3)
    stw     r4, 0x0(r3)
    blr


.globl spcTypeof__FP10TSpcInterpUl
spcTypeof__FP10TSpcInterpUl: # 0x8022260c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    addi    r28, r4, 0x0
    cmplwi  r28, 0x1
    lis     r4, 0x803a
    subi    r29, r4, 0x2ce0
    beq-    branch_0x802226b8
    beq-    branch_0x802226b8
    lwz     r4, 0x58(r31)
    addi    r5, r28, 0x0
    addi    r3, r29, 0x198
    crxor   6, 6, 6
    li      r6, 0x1
    bl      SpcTrace__FPCce
    b       branch_0x80222688

branch_0x80222660:
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8022267c
    addi    r3, r29, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222684

branch_0x8022267c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80222684:
    subi    r28, r28, 0x1
branch_0x80222688:
    cmplwi  r28, 0x1
    bgt+    branch_0x80222660
    li      r30, 0x0
    b       branch_0x802226b0

branch_0x80222698:
    stw     r30, 0x3c(sp)
    addi    r3, r31, 0x18
    addi    r4, sp, 0x3c
    stw     r30, 0x40(sp)
    bl      push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice
    addi    r28, r28, 0x1
branch_0x802226b0:
    cmplwi  r28, 0x1
    blt+    branch_0x80222698
branch_0x802226b8:
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x802226e8
    addi    r3, r29, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r3, 0x0(r3)
    b       branch_0x80222704

branch_0x802226e8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r3, 0x0(r3)
branch_0x80222704:
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r3, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80222730
    addi    r3, r29, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222758

branch_0x80222730:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80222758:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl spcFloat__FP10TSpcInterpUl
spcFloat__FP10TSpcInterpUl: # 0x80222778
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    addi    r28, r4, 0x0
    cmplwi  r28, 0x1
    lis     r4, 0x803a
    subi    r31, r4, 0x2ce0
    beq-    branch_0x80222824
    beq-    branch_0x80222824
    lwz     r4, 0x58(r30)
    addi    r5, r28, 0x0
    addi    r3, r31, 0x198
    crxor   6, 6, 6
    li      r6, 0x1
    bl      SpcTrace__FPCce
    b       branch_0x802227f4

branch_0x802227cc:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x802227e8
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802227f0

branch_0x802227e8:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x802227f0:
    subi    r28, r28, 0x1
branch_0x802227f4:
    cmplwi  r28, 0x1
    bgt+    branch_0x802227cc
    li      r29, 0x0
    b       branch_0x8022281c

branch_0x80222804:
    stw     r29, 0x34(sp)
    addi    r3, r30, 0x18
    addi    r4, sp, 0x34
    stw     r29, 0x38(sp)
    bl      push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice
    addi    r28, r28, 0x1
branch_0x8022281c:
    cmplwi  r28, 0x1
    blt+    branch_0x80222804
branch_0x80222824:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8022286c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x80222894

branch_0x8022286c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x80222894:
    lwz     r0, 0x48(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802228d4
    bge-    branch_0x802228dc
    cmpwi   r0, 0x0
    bge-    branch_0x802228b0
    b       branch_0x802228dc

branch_0x802228b0:
    lwz     r3, 0x4c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18a0(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    b       branch_0x802228e0

branch_0x802228d4:
    lfs     f0, 0x4c(sp)
    b       branch_0x802228e0

branch_0x802228dc:
    lfs     f0, -0x18a8(rtoc)
branch_0x802228e0:
    li      r0, 0x1
    stw     r0, 0x50(sp)
    stfs    f0, 0x54(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8022290c
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222934

branch_0x8022290c:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80222934:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl spcInt__FP10TSpcInterpUl
spcInt__FP10TSpcInterpUl: # 0x80222954
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    addi    r28, r4, 0x0
    cmplwi  r28, 0x1
    lis     r4, 0x803a
    subi    r31, r4, 0x2ce0
    beq-    branch_0x80222a00
    beq-    branch_0x80222a00
    lwz     r4, 0x58(r30)
    addi    r5, r28, 0x0
    addi    r3, r31, 0x198
    crxor   6, 6, 6
    li      r6, 0x1
    bl      SpcTrace__FPCce
    b       branch_0x802229d0

branch_0x802229a8:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x802229c4
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802229cc

branch_0x802229c4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x802229cc:
    subi    r28, r28, 0x1
branch_0x802229d0:
    cmplwi  r28, 0x1
    bgt+    branch_0x802229a8
    li      r29, 0x0
    b       branch_0x802229f8

branch_0x802229e0:
    stw     r29, 0x34(sp)
    addi    r3, r30, 0x18
    addi    r4, sp, 0x34
    stw     r29, 0x38(sp)
    bl      push__21TSpcStack_9TSpcSlice_FRC9TSpcSlice
    addi    r28, r28, 0x1
branch_0x802229f8:
    cmplwi  r28, 0x1
    blt+    branch_0x802229e0
branch_0x80222a00:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80222a3c
    addi    r3, r31, 0x148
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x80222a64

branch_0x80222a3c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x80222a64:
    lwz     r0, 0x48(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80222a88
    bge-    branch_0x80222a9c
    cmpwi   r0, 0x0
    bge-    branch_0x80222a80
    b       branch_0x80222a9c

branch_0x80222a80:
    lwz     r3, 0x4c(sp)
    b       branch_0x80222aa0

branch_0x80222a88:
    lfs     f0, 0x4c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    b       branch_0x80222aa0

branch_0x80222a9c:
    li      r3, 0x0
branch_0x80222aa0:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r3, 0x54(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x80222acc
    addi    r3, r31, 0x12c
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222af4

branch_0x80222acc:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80222af4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl spcDump__FP10TSpcInterpUl
spcDump__FP10TSpcInterpUl: # 0x80222b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r3, 0x0
    bl      dump__10TSpcInterpFv
    lis     r3, 0x803a
    subi    r31, r3, 0x2b98
    li      r30, 0x0
    b       branch_0x80222b74

branch_0x80222b4c:
    lwz     r3, 0x1c(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x80222b68
    addi    r3, r31, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222b70

branch_0x80222b68:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x80222b70:
    addi    r30, r30, 0x1
branch_0x80222b74:
    cmpw    r30, r29
    blt+    branch_0x80222b4c
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80222bac
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80222bd4

branch_0x80222bac:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x80222bd4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl spcPrint__FP10TSpcInterpUl
spcPrint__FP10TSpcInterpUl: # 0x80222bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x3c(sp)
    lis     r29, 0x4330
    stw     r28, 0x38(sp)
    li      r28, 0x0
    lfd     f31, -0x18a0(rtoc)
    b       branch_0x80222d28

branch_0x80222c2c:
    lwz     r0, 0x1c(r30)
    subf    r3, r28, r31
    lwz     r4, 0x20(r30)
    subf    r0, r3, r0
    slwi    r0, r0, 3
    add     r3, r4, r0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80222cb4
    bge-    branch_0x80222c60
    cmpwi   r0, 0x0
    bge-    branch_0x80222c6c
    b       branch_0x80222d24

branch_0x80222c60:
    cmpwi   r0, 0x3
    bge-    branch_0x80222d24
    b       branch_0x80222d00

branch_0x80222c6c:
    cmpwi   r0, 0x1
    beq-    branch_0x80222c8c
    bge-    branch_0x80222ca0
    cmpwi   r0, 0x0
    bge-    branch_0x80222c84
    b       branch_0x80222ca0

branch_0x80222c84:
    lwz     r4, 0x4(r3)
    b       branch_0x80222ca4

branch_0x80222c8c:
    lfs     f0, 0x4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r4, 0x34(sp)
    b       branch_0x80222ca4

branch_0x80222ca0:
    li      r4, 0x0
branch_0x80222ca4:
    crxor   6, 6, 6
    subi    r3, rtoc, 0x184c
    bl      SpcTrace__FPCce
    b       branch_0x80222d24

branch_0x80222cb4:
    beq-    branch_0x80222ce4
    bge-    branch_0x80222cec
    cmpwi   r0, 0x0
    bge-    branch_0x80222cc8
    b       branch_0x80222cec

branch_0x80222cc8:
    lwz     r0, 0x4(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    stw     r29, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f1, f0, f31
    b       branch_0x80222cf0

branch_0x80222ce4:
    lfs     f1, 0x4(r3)
    b       branch_0x80222cf0

branch_0x80222cec:
    lfs     f1, -0x18a8(rtoc)
branch_0x80222cf0:
    creqv   6, 6, 6
    subi    r3, rtoc, 0x1848
    bl      SpcTrace__FPCce
    b       branch_0x80222d24

branch_0x80222d00:
    cmpwi   r0, 0x2
    beq-    branch_0x80222d0c
    b       branch_0x80222d14

branch_0x80222d0c:
    lwz     r4, 0x4(r3)
    b       branch_0x80222d18

branch_0x80222d14:
    subi    r4, rtoc, 0x1894
branch_0x80222d18:
    crxor   6, 6, 6
    subi    r3, rtoc, 0x1844
    bl      SpcTrace__FPCce
branch_0x80222d24:
    addi    r28, r28, 0x1
branch_0x80222d28:
    cmpw    r28, r31
    blt+    branch_0x80222c2c
    lis     r3, 0x803a
    subi    r29, r3, 0x2b98
    li      r28, 0x0
    b       branch_0x80222d68

branch_0x80222d40:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80222d5c
    addi    r3, r29, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222d64

branch_0x80222d5c:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80222d64:
    addi    r28, r28, 0x1
branch_0x80222d68:
    cmpw    r28, r31
    blt+    branch_0x80222d40
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x80222da0
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80222dc8

branch_0x80222da0:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80222dc8:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x50
    blr


.globl spcUnlock__FP10TSpcInterpUl
spcUnlock__FP10TSpcInterpUl: # 0x80222dec
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x803a
    stw     r30, 0x38(sp)
    subi    r30, r3, 0x2b98
    stw     r29, 0x34(sp)
    li      r29, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r4, 0x0
    stw     r0, 0x14(r31)
    b       branch_0x80222e50

branch_0x80222e28:
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80222e44
    addi    r3, r30, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222e4c

branch_0x80222e44:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80222e4c:
    addi    r29, r29, 0x1
branch_0x80222e50:
    cmpw    r29, r28
    blt+    branch_0x80222e28
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80222e88
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80222eb0

branch_0x80222e88:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80222eb0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl spcLock__FP10TSpcInterpUl
spcLock__FP10TSpcInterpUl: # 0x80222ed0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x803a
    stw     r30, 0x38(sp)
    subi    r30, r3, 0x2b98
    stw     r29, 0x34(sp)
    li      r29, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r4, 0x0
    stw     r0, 0x14(r31)
    b       branch_0x80222f34

branch_0x80222f0c:
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80222f28
    addi    r3, r30, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80222f30

branch_0x80222f28:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80222f30:
    addi    r29, r29, 0x1
branch_0x80222f34:
    cmpw    r29, r28
    blt+    branch_0x80222f0c
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80222f6c
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80222f94

branch_0x80222f6c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80222f94:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl spcExit__FP10TSpcInterpUl
spcExit__FP10TSpcInterpUl: # 0x80222fb4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    li      r29, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r4, 0x0
    stw     r0, 0x4(r3)
    lis     r3, 0x803a
    subi    r30, r3, 0x2b98
    stw     r0, 0xc(r31)
    b       branch_0x8022301c

branch_0x80222ff4:
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80223010
    addi    r3, r30, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80223018

branch_0x80223010:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80223018:
    addi    r29, r29, 0x1
branch_0x8022301c:
    cmpw    r29, r28
    blt+    branch_0x80222ff4
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80223054
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x8022307c

branch_0x80223054:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8022307c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl spcYield__FP10TSpcInterpUl
spcYield__FP10TSpcInterpUl: # 0x8022309c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x803a
    stw     r30, 0x38(sp)
    subi    r30, r3, 0x2b98
    stw     r29, 0x34(sp)
    li      r29, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r4, 0x0
    stw     r0, 0xc(r31)
    b       branch_0x80223100

branch_0x802230d8:
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x802230f4
    addi    r3, r30, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802230fc

branch_0x802230f4:
    subi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x802230fc:
    addi    r29, r29, 0x1
branch_0x80223100:
    cmpw    r29, r28
    blt+    branch_0x802230d8
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80223138
    lis     r3, 0x803a
    crxor   6, 6, 6
    subi    r3, r3, 0x2bb4
    bl      SpcTrace__FPCce
    b       branch_0x80223160

branch_0x80223138:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80223160:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr

