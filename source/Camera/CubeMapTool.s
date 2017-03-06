
.globl __dt__15TCubeStreamInfoFv
__dt__15TCubeStreamInfoFv: # 0x80030330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80030388
    lis     r3, 0x803b
    subi    r0, r3, 0x2d58
    stw     r0, 0x0(r30)
    beq-    branch_0x80030378
    lis     r3, 0x803b
    subi    r0, r3, 0x2d18
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80030378:
    extsh.  r0, r31
    ble-    branch_0x80030388
    mr      r3, r30
    bl      __dl__FPv
branch_0x80030388:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__15TCubeStreamInfoFR20JSUMemoryInputStream
load__15TCubeStreamInfoFR20JSUMemoryInputStream: # 0x800303a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x74(sp)
    addi    r29, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, r29, 0xc
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x2c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x24(r29)
    mr      r3, r30
    lfs     f1, -0x7600(rtoc)
    addi    r4, sp, 0x58
    li      r5, 0x4
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r29)
    lfs     f0, 0x28(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r29)
    lfs     f0, 0x2c(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r29)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x58(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x54
    extsh   r0, r0
    sth     r0, 0x30(r29)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x50(sp)
    lis     r31, 0x4330
    addi    r3, r30, 0x0
    stw     r0, 0x34(r29)
    addi    r4, sp, 0x5c
    li      r5, 0x4
    lwz     r0, 0x34(r29)
    lfd     f1, -0x75f8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x6c(sp)
    stw     r31, 0x68(sp)
    lfd     f0, 0x68(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x3c(r29)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x5c(sp)
    mr      r3, r30
    lfd     f1, -0x75f8(rtoc)
    addi    r4, r29, 0x38
    xoris   r0, r0, 0x8000
    stw     r0, 0x64(sp)
    li      r5, 0x4
    stw     r31, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x40(r29)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl load__15TCubeCameraInfoFR20JSUMemoryInputStream
load__15TCubeCameraInfoFR20JSUMemoryInputStream: # 0x80030544
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0xc
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x24(r30)
    mr      r3, r31
    lfs     f1, -0x7600(rtoc)
    addi    r4, sp, 0x58
    li      r5, 0x4
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r30)
    lfs     f0, 0x28(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r30)
    lfs     f0, 0x2c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r30)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x58(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x54
    extsh   r0, r0
    sth     r0, 0x30(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x50(sp)
    mr      r3, r31
    stw     r0, 0x34(r30)
    bl      readString__14JSUInputStreamFv
    mr      r31, r3
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, -0x70c0(r13)
    mr      r5, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    stw     r3, 0x38(r30)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl load__16TCubeGeneralInfoFR20JSUMemoryInputStream
load__16TCubeGeneralInfoFR20JSUMemoryInputStream: # 0x800306a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0xc
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x24(r30)
    mr      r3, r31
    lfs     f1, -0x7600(rtoc)
    addi    r4, sp, 0x58
    li      r5, 0x4
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r30)
    lfs     f0, 0x28(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r30)
    lfs     f0, 0x2c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r30)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x58(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x54
    extsh   r0, r0
    sth     r0, 0x30(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x50(sp)
    stw     r0, 0x34(r30)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__15TCubeCameraInfoFv
__dt__15TCubeCameraInfoFv: # 0x800307dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80030834
    lis     r3, 0x803b
    subi    r0, r3, 0x2d38
    stw     r0, 0x0(r30)
    beq-    branch_0x80030824
    lis     r3, 0x803b
    subi    r0, r3, 0x2d18
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80030824:
    extsh.  r0, r31
    ble-    branch_0x80030834
    mr      r3, r30
    bl      __dl__FPv
branch_0x80030834:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TCubeGeneralInfoFv
__dt__16TCubeGeneralInfoFv: # 0x80030850
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80030898
    lis     r3, 0x803b
    subi    r0, r3, 0x2d18
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x80030898
    mr      r3, r30
    bl      __dl__FPv
branch_0x80030898:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

