
.globl __ct__10JPATextureFPCUcP7JKRHeap
__ct__10JPATextureFPCUcP7JKRHeap: # 0x80336974
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__12JPADataBlockFPCUcP7JKRHeap
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__10JPATexture@h
    addi    r0, r3, __vvt__10JPATexture@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x8
    stb     r0, 0x58(r31)
    stw     r0, 0x30(r31)
    lwz     r4, 0x4(r31)
    addi    r4, r4, 0x20
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initialize__17JPADefaultTextureFP7JKRHeap
initialize__17JPADefaultTextureFP7JKRHeap: # 0x803369d4
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x20
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x80
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x0(r31)
    li      r7, 0x0
    li      r6, 0xff
    lwz     r4, 0x0(r31)
    li      r5, 0x1a
    li      r3, 0x80
    stb     r7, 0x0(r4)
    li      r0, 0xd6
    lwz     r4, 0x0(r31)
    stb     r6, 0x1(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x2(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x3(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x4(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x5(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x6(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x7(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x8(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x9(r4)
    lwz     r4, 0x0(r31)
    stb     r5, 0xa(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0xb(r4)
    lwz     r4, 0x0(r31)
    stb     r3, 0xc(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0xd(r4)
    lwz     r4, 0x0(r31)
    stb     r0, 0xe(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0xf(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x10(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x11(r4)
    lwz     r4, 0x0(r31)
    stb     r3, 0x12(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x13(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x14(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x15(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x16(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x17(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x18(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x19(r4)
    lwz     r4, 0x0(r31)
    stb     r0, 0x1a(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x1b(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x1c(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x1d(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x1e(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x1f(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x20(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x21(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x22(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x23(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x24(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x25(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x26(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x27(r4)
    lwz     r4, 0x0(r31)
    stb     r0, 0x28(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x29(r4)
    lwz     r4, 0x0(r31)
    stb     r3, 0x2a(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x2b(r4)
    lwz     r4, 0x0(r31)
    stb     r5, 0x2c(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x2d(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x2e(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x2f(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x30(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x31(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x32(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x33(r4)
    lwz     r4, 0x0(r31)
    stb     r3, 0x34(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x35(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x36(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x37(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x38(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x39(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x3a(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x3b(r4)
    lwz     r4, 0x0(r31)
    stb     r0, 0x3c(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x3d(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x3e(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x3f(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x40(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x41(r4)
    lwz     r4, 0x0(r31)
    stb     r0, 0x42(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x43(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x44(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x45(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x46(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x47(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x48(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x49(r4)
    lwz     r4, 0x0(r31)
    stb     r3, 0x4a(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x4b(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x4c(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x4d(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x4e(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x4f(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x50(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x51(r4)
    lwz     r4, 0x0(r31)
    stb     r5, 0x52(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x53(r4)
    lwz     r4, 0x0(r31)
    stb     r3, 0x54(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x55(r4)
    lwz     r4, 0x0(r31)
    stb     r0, 0x56(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x57(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x58(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x59(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x5a(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x5b(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x5c(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x5d(r4)
    lwz     r4, 0x0(r31)
    stb     r7, 0x5e(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x5f(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x60(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x61(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x62(r4)
    lwz     r4, 0x0(r31)
    stb     r6, 0x63(r4)
    lwz     r4, 0x0(r31)
    stb     r0, 0x64(r4)
    lwz     r8, 0x0(r31)
    li      r4, 0x80
    stb     r6, 0x65(r8)
    lwz     r8, 0x0(r31)
    stb     r7, 0x66(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x67(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x68(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x69(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x6a(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x6b(r8)
    lwz     r8, 0x0(r31)
    stb     r3, 0x6c(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x6d(r8)
    lwz     r8, 0x0(r31)
    stb     r7, 0x6e(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x6f(r8)
    lwz     r8, 0x0(r31)
    stb     r0, 0x70(r8)
    lwz     r8, 0x0(r31)
    stb     r6, 0x71(r8)
    lwz     r8, 0x0(r31)
    stb     r3, 0x72(r8)
    lwz     r3, 0x0(r31)
    stb     r6, 0x73(r3)
    lwz     r3, 0x0(r31)
    stb     r5, 0x74(r3)
    lwz     r3, 0x0(r31)
    stb     r6, 0x75(r3)
    lwz     r3, 0x0(r31)
    stb     r7, 0x76(r3)
    lwz     r3, 0x0(r31)
    stb     r6, 0x77(r3)
    lwz     r3, 0x0(r31)
    stb     r7, 0x78(r3)
    lwz     r3, 0x0(r31)
    stb     r6, 0x79(r3)
    lwz     r3, 0x0(r31)
    stb     r7, 0x7a(r3)
    lwz     r3, 0x0(r31)
    stb     r6, 0x7b(r3)
    lwz     r3, 0x0(r31)
    stb     r7, 0x7c(r3)
    lwz     r3, 0x0(r31)
    stb     r6, 0x7d(r3)
    lwz     r3, 0x0(r31)
    stb     r7, 0x7e(r3)
    lwz     r3, 0x0(r31)
    stb     r6, 0x7f(r3)
    lwz     r3, 0x0(r31)
    bl      DCStoreRange
    lwz     r4, 0x0(r31)
    addi    r3, r31, 0x4
    li      r5, 0x8
    li      r6, 0x8
    li      r7, 0x3
    li      r8, 0x1
    li      r9, 0x1
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, 0x980(r2)
    addi    r3, r31, 0x4
    li      r4, 0x1
    fmr     f2, f1
    li      r5, 0x1
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__10JPATextureFv
__dt__10JPATextureFv: # 0x80336e7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80336ed8
    lis     r3, __vvt__10JPATexture@h
    addi    r0, r3, __vvt__10JPATexture@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x8
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    cmplwi  r30, 0x0
    beq-    branch_0x80336ec8
    lis     r3, __vvt__12JPADataBlock@h
    addi    r0, r3, __vvt__12JPADataBlock@l
    stw     r0, 0x0(r30)
branch_0x80336ec8:
    extsh.  r0, r31
    ble-    branch_0x80336ed8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80336ed8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

