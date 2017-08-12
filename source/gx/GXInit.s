
.globl __GXDefaultTexRegionCallback
__GXDefaultTexRegionCallback: # 0x8035a5c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      GXGetTexObjFmt
    cmpwi   r3, 0x8
    beq-    branch_0x8035a610
    cmpwi   r3, 0x9
    beq-    branch_0x8035a610
    cmpwi   r3, 0xa
    beq-    branch_0x8035a610
    lwz     r5, R13Off_m0x72f8(r13)
    lwz     r3, 0x2c8(r5)
    clrlwi  r0, r3, 29
    addi    r4, r3, 0x1
    slwi    r3, r0, 4
    stw     r4, 0x2c8(r5)
    addi    r3, r3, 0x208
    add     r3, r5, r3
    b       branch_0x8035a630

branch_0x8035a610:
    lwz     r5, R13Off_m0x72f8(r13)
    lwz     r3, 0x2cc(r5)
    clrlwi  r0, r3, 30
    addi    r4, r3, 0x1
    slwi    r3, r0, 4
    stw     r4, 0x2cc(r5)
    addi    r3, r3, 0x288
    add     r3, r5, r3
branch_0x8035a630:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __GXDefaultTlutRegionCallback
__GXDefaultTlutRegionCallback: # 0x8035a640
    cmplwi  r3, 0x14
    blt-    branch_0x8035a650
    li      r3, 0x0
    b       branch_0x8035a660

branch_0x8035a650:
    slwi    r3, r3, 4
    lwz     r0, R13Off_m0x72f8(r13)
    addi    r3, r3, 0x2d0
    add     r3, r0, r3
branch_0x8035a660:
    blr


.globl GXInit
GXInit: # 0x8035a664
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    mr      r27, r3
    mr      r26, r4
    lwz     r3, R13Off_m0x72f8(r13)
    li      r31, 0x0
    lis     r4, gxData@h
    stb     r31, 0x4f0(r3)
    li      r0, 0x1
    addi    r30, r4, gxData@l
    lwz     r5, R13Off_m0x72f8(r13)
    li      r3, 0x1
    li      r4, 0x0
    stb     r0, 0x4f1(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    stw     r31, 0x4dc(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    stw     r31, 0x4e0(r5)
    bl      GXSetMisc
    lis     r4, unk_cc003000@h
    addi    r5, r4, unk_cc003000@l
    stw     r4, R13Off_m0x57d4(r13)
    addi    r3, r4, 0x1000
    addi    r0, r4, 0x4000
    stw     r5, R13Off_m0x57d8(r13)
    stw     r3, R13Off_m0x57d0(r13)
    stw     r0, R13Off_m0x57cc(r13)
    bl      __GXFifoInit
    mr      r4, r27
    mr      r5, r26
    addi    r3, r30, 0x4f8
    bl      GXInitFifoBase
    addi    r3, r30, 0x4f8
    bl      GXSetCPUFifo
    addi    r3, r30, 0x4f8
    bl      GXSetGPFifo
    bl      __GXPEInit
    bl      PPCMfhid2
    lis     r4, unk_0c008000@ha
    mr      r26, r3
    addi    r3, r4, unk_0c008000@l
    bl      PPCMtwpar
    oris    r3, r26, 0x4000
    bl      PPCMthid2
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0xff
    li      r7, 0x0
    stw     r31, 0x204(r3)
    li      r3, 0xc0
    li      r4, 0xc1
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r6, r5, 0x204
    lwz     r5, 0x0(r6)
    clrlwi  r5, r5, 8
    stw     r5, 0x0(r6)
    lwz     r5, R13Off_m0x72f8(r13)
    stw     r0, 0x124(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x124
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0xf00
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    stw     r31, 0x7c(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x7c
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x2200
    stw     r0, 0x0(r5)
    b       branch_0x8035a78c

branch_0x8035a78c:
    li      r0, 0x10
    mtctr   r0
    b       branch_0x8035a798

branch_0x8035a798:
    b       branch_0x8035a79c

branch_0x8035a79c:
    lwz     r6, R13Off_m0x72f8(r13)
    srwi    r8, r7, 1
    addi    r26, r31, 0x130
    li      r5, 0x0
    stwx    r5, r6, r26
    slwi    r28, r8, 2
    slwi    r11, r3, 24
    lwz     r6, R13Off_m0x72f8(r13)
    addi    r27, r31, 0x170
    addi    r12, r31, 0x49c
    stwx    r5, r6, r27
    slwi    r10, r4, 24
    addi    r9, r8, 0xf6
    lwz     r6, R13Off_m0x72f8(r13)
    addi    r0, r28, 0x100
    addi    r8, r8, 0x28
    stwx    r5, r6, r0
    li      r29, 0xff
    addi    r6, r28, 0x1b0
    lwz     r28, R13Off_m0x72f8(r13)
    slwi    r9, r9, 24
    slwi    r8, r8, 24
    stwx    r29, r28, r12
    addi    r31, r31, 0x4
    addi    r3, r3, 0x2
    lwz     r12, R13Off_m0x72f8(r13)
    addi    r4, r4, 0x2
    addi    r7, r7, 0x1
    add     r26, r12, r26
    lwz     r12, 0x0(r26)
    clrlwi  r12, r12, 8
    or      r11, r12, r11
    stw     r11, 0x0(r26)
    lwz     r11, R13Off_m0x72f8(r13)
    add     r12, r11, r27
    lwz     r11, 0x0(r12)
    clrlwi  r11, r11, 8
    or      r10, r11, r10
    stw     r10, 0x0(r12)
    lwz     r10, R13Off_m0x72f8(r13)
    add     r6, r10, r6
    lwz     r10, 0x0(r6)
    clrlwi  r10, r10, 8
    or      r9, r10, r9
    stw     r9, 0x0(r6)
    lwz     r6, R13Off_m0x72f8(r13)
    add     r6, r6, r0
    lwz     r0, 0x0(r6)
    clrlwi  r0, r0, 8
    or      r0, r0, r8
    stw     r0, 0x0(r6)
    bdnz+      branch_0x8035a79c
    lwz     r3, R13Off_m0x72f8(r13)
    li      r8, 0x30
    li      r9, 0x31
    stw     r5, 0x120(r3)
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r3, r3, 0x120
    lwz     r0, 0x0(r3)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x2700
    stw     r0, 0x0(r3)
    b       branch_0x8035a898

branch_0x8035a898:
    li      r0, 0x4
    mtctr   r0
    b       branch_0x8035a8a4

branch_0x8035a8a4:
    b       branch_0x8035a8a8

branch_0x8035a8a8:
    lwz     r3, R13Off_m0x72f8(r13)
    slwi    r4, r8, 24
    addi    r7, r5, 0xb8
    li      r29, 0x0
    stwx    r29, r3, r7
    addi    r6, r5, 0xd8
    slwi    r0, r9, 24
    lwz     r3, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x4
    addi    r8, r8, 0x2
    stwx    r29, r3, r6
    addi    r9, r9, 0x2
    lwz     r3, R13Off_m0x72f8(r13)
    add     r10, r3, r7
    lwz     r3, 0x0(r10)
    addi    r7, r5, 0xb8
    clrlwi  r3, r3, 8
    or      r3, r3, r4
    stw     r3, 0x0(r10)
    slwi    r4, r8, 24
    addi    r8, r8, 0x2
    lwz     r3, R13Off_m0x72f8(r13)
    add     r10, r3, r6
    lwz     r3, 0x0(r10)
    addi    r6, r5, 0xd8
    addi    r5, r5, 0x4
    clrlwi  r3, r3, 8
    or      r0, r3, r0
    stw     r0, 0x0(r10)
    slwi    r0, r9, 24
    addi    r9, r9, 0x2
    lwz     r3, R13Off_m0x72f8(r13)
    stwx    r29, r3, r7
    lwz     r3, R13Off_m0x72f8(r13)
    stwx    r29, r3, r6
    lwz     r3, R13Off_m0x72f8(r13)
    add     r10, r3, r7
    lwz     r3, 0x0(r10)
    clrlwi  r3, r3, 8
    or      r3, r3, r4
    stw     r3, 0x0(r10)
    lwz     r3, R13Off_m0x72f8(r13)
    add     r10, r3, r6
    lwz     r3, 0x0(r10)
    clrlwi  r3, r3, 8
    or      r0, r3, r0
    stw     r0, 0x0(r10)
    bdnz+      branch_0x8035a8a8
    lwz     r5, R13Off_m0x72f8(r13)
    lis     r3, unk_10624dd3@h
    lis     r4, 0x8000
    addi    r5, r5, 0xf8
    lwz     r0, 0x0(r5)
    addi    r3, r3, unk_10624dd3@l
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x2000
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0xfc
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x2100
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x1d0
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4100
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x1d4
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4200
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x1d8
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4000
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x1dc
    lwz     r0, 0x0(r5)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4300
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    addi    r5, r5, 0x1fc
    lwz     r0, 0x0(r5)
    rlwinm  r0, r0, 0, 25, 22
    stw     r0, 0x0(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    stw     r29, 0x4f4(r5)
    lwz     r5, R13Off_m0x72f8(r13)
    stb     r29, 0x4f2(r5)
    lwz     r0, 0xf8(r4)
    mulhwu  r0, r3, r0
    srwi    r26, r0, 5
    bl      __GXFlushTextureState
    srwi    r0, r26, 11
    oris    r0, r0, 0x6900
    li      r28, 0x61
    lis     r31, 0xcc01
    stb     r28, -0x8000(r31)
    ori     r0, r0, 0x400
    stw     r0, -0x8000(r31)
    bl      __GXFlushTextureState
    lis     r3, unk_3e0f83e1@ha
    stb     r28, -0x8000(r31)
    addi    r0, r3, unk_3e0f83e1@l
    mulhwu  r0, r0, r26
    srwi    r0, r0, 10
    oris    r0, r0, 0x4600
    ori     r0, r0, 0x200
    stw     r0, -0x8000(r31)
    mr      r7, r29
    b       branch_0x8035aa80

branch_0x8035aa80:
    li      r0, 0x2
    mtctr   r0
    b       branch_0x8035aa8c

branch_0x8035aa8c:
    b       branch_0x8035aa90

branch_0x8035aa90:
    lwz     r0, R13Off_m0x72f8(r13)
    addi    r8, r7, 0x1c
    ori     r5, r29, 0x80
    add     r8, r0, r8
    lwz     r0, 0x0(r8)
    addi    r9, r7, 0x3c
    addi    r3, r7, 0x3c
    rlwinm  r0, r0, 0, 2, 0
    oris    r0, r0, 0x4000
    stw     r0, 0x0(r8)
    addi    r7, r7, 0x4
    li      r6, 0x8
    lwz     r0, R13Off_m0x72f8(r13)
    addi    r8, r7, 0x1c
    addi    r29, r29, 0x1
    add     r9, r0, r9
    lwz     r0, 0x0(r9)
    clrlwi  r0, r0, 1
    oris    r0, r0, 0x8000
    stw     r0, 0x0(r9)
    addi    r9, r7, 0x3c
    stb     r6, -0x8000(r31)
    lwz     r4, R13Off_m0x72f8(r13)
    stb     r5, -0x8000(r31)
    ori     r5, r29, 0x80
    add     r8, r4, r8
    lwzx    r0, r4, r3
    addi    r3, r7, 0x3c
    addi    r7, r7, 0x4
    stw     r0, -0x8000(r31)
    addi    r29, r29, 0x1
    lwz     r0, 0x0(r8)
    rlwinm  r0, r0, 0, 2, 0
    oris    r0, r0, 0x4000
    stw     r0, 0x0(r8)
    addi    r8, r7, 0x1c
    lwz     r0, R13Off_m0x72f8(r13)
    add     r9, r0, r9
    lwz     r0, 0x0(r9)
    clrlwi  r0, r0, 1
    oris    r0, r0, 0x8000
    stw     r0, 0x0(r9)
    addi    r9, r7, 0x3c
    stb     r6, -0x8000(r31)
    lwz     r4, R13Off_m0x72f8(r13)
    stb     r5, -0x8000(r31)
    ori     r5, r29, 0x80
    add     r8, r4, r8
    lwzx    r0, r4, r3
    addi    r3, r7, 0x3c
    addi    r7, r7, 0x4
    stw     r0, -0x8000(r31)
    addi    r29, r29, 0x1
    lwz     r0, 0x0(r8)
    rlwinm  r0, r0, 0, 2, 0
    oris    r0, r0, 0x4000
    stw     r0, 0x0(r8)
    addi    r8, r7, 0x1c
    lwz     r0, R13Off_m0x72f8(r13)
    add     r9, r0, r9
    lwz     r0, 0x0(r9)
    clrlwi  r0, r0, 1
    oris    r0, r0, 0x8000
    stw     r0, 0x0(r9)
    addi    r9, r7, 0x3c
    stb     r6, -0x8000(r31)
    lwz     r4, R13Off_m0x72f8(r13)
    stb     r5, -0x8000(r31)
    ori     r5, r29, 0x80
    add     r8, r4, r8
    lwzx    r0, r4, r3
    addi    r3, r7, 0x3c
    addi    r7, r7, 0x4
    stw     r0, -0x8000(r31)
    addi    r29, r29, 0x1
    lwz     r0, 0x0(r8)
    rlwinm  r0, r0, 0, 2, 0
    oris    r0, r0, 0x4000
    stw     r0, 0x0(r8)
    lwz     r0, R13Off_m0x72f8(r13)
    add     r9, r0, r9
    lwz     r0, 0x0(r9)
    clrlwi  r0, r0, 1
    oris    r0, r0, 0x8000
    stw     r0, 0x0(r9)
    stb     r6, -0x8000(r31)
    lwz     r4, R13Off_m0x72f8(r13)
    stb     r5, -0x8000(r31)
    lwzx    r0, r4, r3
    stw     r0, -0x8000(r31)
    bdnz+      branch_0x8035aa90
    li      r4, 0x10
    lis     r6, 0xcc01
    stb     r4, -0x8000(r6)
    li      r0, 0x1000
    li      r29, 0x0
    stw     r0, -0x8000(r6)
    li      r0, 0x3f
    slwi    r28, r29, 15
    stw     r0, -0x8000(r6)
    li      r0, 0x1012
    li      r5, 0x1
    stb     r4, -0x8000(r6)
    li      r4, 0x61
    lis     r3, unk_5800000f@h
    stw     r0, -0x8000(r6)
    addi    r0, r3, unk_5800000f@l
    addis   r26, r28, 0x8
    stw     r5, -0x8000(r6)
    slwi    r27, r29, 4
    stb     r4, -0x8000(r6)
    stw     r0, -0x8000(r6)
    b       branch_0x8035ac54

branch_0x8035ac54:
    b       branch_0x8035ac58

branch_0x8035ac58:
    b       branch_0x8035ac5c

branch_0x8035ac5c:
    lwz     r0, R13Off_m0x72f8(r13)
    addi    r3, r27, 0x208
    mr      r5, r28
    mr      r7, r26
    add     r3, r0, r3
    li      r4, 0x0
    li      r6, 0x0
    li      r8, 0x0
    bl      GXInitTexCacheRegion
    addis   r26, r26, 0x1
    addis   r28, r28, 0x1
    addi    r26, r26, -0x8000
    addi    r28, r28, -0x8000
    addi    r27, r27, 0x10
    addi    r29, r29, 0x1
    cmplwi  r29, 0x8
    blt+    branch_0x8035ac5c
    li      r29, 0x0
    slwi    r3, r29, 1
    addi    r26, r3, 0x9
    addi    r27, r3, 0x8
    slwi    r28, r29, 4
    b       branch_0x8035acb8

branch_0x8035acb8:
    b       branch_0x8035acbc

branch_0x8035acbc:
    b       branch_0x8035acc0

branch_0x8035acc0:
    lwz     r0, R13Off_m0x72f8(r13)
    addi    r3, r28, 0x288
    slwi    r5, r27, 15
    add     r3, r0, r3
    slwi    r7, r26, 15
    li      r4, 0x0
    li      r6, 0x0
    li      r8, 0x0
    bl      GXInitTexCacheRegion
    addi    r26, r26, 0x2
    addi    r27, r27, 0x2
    addi    r28, r28, 0x10
    addi    r29, r29, 0x1
    cmplwi  r29, 0x4
    blt+    branch_0x8035acc0
    li      r28, 0x0
    slwi    r3, r28, 13
    addis   r26, r3, 0xc
    slwi    r27, r28, 4
    b       branch_0x8035ad10

branch_0x8035ad10:
    b       branch_0x8035ad14

branch_0x8035ad14:
    b       branch_0x8035ad18

branch_0x8035ad18:
    lwz     r0, R13Off_m0x72f8(r13)
    addi    r3, r27, 0x2d0
    mr      r4, r26
    add     r3, r0, r3
    li      r5, 0x10
    bl      GXInitTlutRegion
    addi    r26, r26, 0x2000
    addi    r27, r27, 0x10
    addi    r28, r28, 0x1
    cmplwi  r28, 0x10
    blt+    branch_0x8035ad18
    li      r27, 0x0
    slwi    r3, r27, 15
    addis   r26, r3, 0xe
    b       branch_0x8035ad54

branch_0x8035ad54:
    b       branch_0x8035ad58

branch_0x8035ad58:
    b       branch_0x8035ad5c

branch_0x8035ad5c:
    addi    r0, r27, 0x10
    lwz     r5, R13Off_m0x72f8(r13)
    slwi    r3, r0, 4
    addi    r3, r3, 0x2d0
    mr      r4, r26
    add     r3, r5, r3
    li      r5, 0x40
    bl      GXInitTlutRegion
    addis   r26, r26, 0x1
    addi    r26, r26, -0x8000
    addi    r27, r27, 0x1
    cmplwi  r27, 0x4
    blt+    branch_0x8035ad5c
    lwz     r4, R13Off_m0x57d4(r13)
    li      r12, 0x0
    li      r3, 0x8
    sth     r12, 0x6(r4)
    lis     r11, 0xcc01
    li      r10, 0x20
    lwz     r4, R13Off_m0x72f8(r13)
    li      r8, 0x10
    li      r7, 0x1006
    addi    r4, r4, 0x4ec
    lwz     r0, 0x0(r4)
    li      r6, 0x61
    lis     r5, 0x2300
    rlwinm  r0, r0, 0, 28, 23
    stw     r0, 0x0(r4)
    lis     r4, 0x2400
    lis     r0, unk_67000000@h
    stb     r3, -0x8000(r11)
    addi    r3, r0, unk_67000000@l
    lwz     r9, R13Off_m0x72f8(r13)
    stb     r10, -0x8000(r11)
    lwz     r9, 0x4ec(r9)
    stw     r9, -0x8000(r11)
    stb     r8, -0x8000(r11)
    stw     r7, -0x8000(r11)
    stw     r12, -0x8000(r11)
    stb     r6, -0x8000(r11)
    stw     r5, -0x8000(r11)
    stb     r6, -0x8000(r11)
    stw     r4, -0x8000(r11)
    stb     r6, -0x8000(r11)
    stw     r0, -0x8000(r11)
    bl      __GXSetTmemConfig
    bl      __GXInitGX
    addi    r3, r30, 0x4f8
    lmw     r26, 0x30(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __GXInitGX
__GXInitGX: # 0x8035ae30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    lwz     r4, R2Off_0xb28(r2)
    lwz     r3, R2Off_0xb2c(r2)
    lwz     r0, R2Off_0xb30(r2)
    stw     r4, 0x28(sp)
    stw     r3, 0x24(sp)
    stw     r0, 0x20(sp)
    bl      VIGetTvFormat
    cmpwi   r3, 0x2
    beq-    branch_0x8035aeb8
    bge-    branch_0x8035ae7c
    cmpwi   r3, 0x0
    beq-    branch_0x8035ae88
    bge-    branch_0x8035ae98
    b       branch_0x8035aec8

branch_0x8035ae7c:
    cmpwi   r3, 0x5
    beq-    branch_0x8035aea8
    b       branch_0x8035aec8

branch_0x8035ae88:
    lis     r3, GXNtsc480IntDf@ha
    addi    r0, r3, GXNtsc480IntDf@l
    mr      r31, r0
    b       branch_0x8035aed4

branch_0x8035ae98:
    lis     r3, GXPal528IntDf@ha
    addi    r0, r3, GXPal528IntDf@l
    mr      r31, r0
    b       branch_0x8035aed4

branch_0x8035aea8:
    lis     r3, GXEurgb60Hz480IntDf@ha
    addi    r0, r3, GXEurgb60Hz480IntDf@l
    mr      r31, r0
    b       branch_0x8035aed4

branch_0x8035aeb8:
    lis     r3, GXMpal480IntDf@ha
    addi    r0, r3, GXMpal480IntDf@l
    mr      r31, r0
    b       branch_0x8035aed4

branch_0x8035aec8:
    lis     r3, GXNtsc480IntDf@ha
    addi    r0, r3, GXNtsc480IntDf@l
    mr      r31, r0
branch_0x8035aed4:
    lwz     r0, 0x28(sp)
    lis     r4, unk_00ffffff@ha
    addi    r3, sp, 0x1c
    stw     r0, 0x1c(sp)
    addi    r4, r4, unk_00ffffff@l
    bl      GXSetCopyClear
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x5
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x2
    li      r4, 0x1
    li      r5, 0x6
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x3
    li      r4, 0x1
    li      r5, 0x7
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x8
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x5
    li      r4, 0x1
    li      r5, 0x9
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x6
    li      r4, 0x1
    li      r5, 0xa
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x7
    li      r4, 0x1
    li      r5, 0xb
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTexGens
    bl      GXClearVtxDesc
    bl      GXInvalidateVtxCache
    li      r30, 0x9
    b       branch_0x8035afe4

branch_0x8035afe4:
    b       branch_0x8035afe8

branch_0x8035afe8:
    b       branch_0x8035afec

branch_0x8035afec:
    lwz     r4, R13Off_m0x72f8(r13)
    mr      r3, r30
    li      r5, 0x0
    bl      GXSetArray
    addi    r30, r30, 0x1
    cmplwi  r30, 0x18
    ble+    branch_0x8035afec
    li      r3, 0x6
    li      r4, 0x0
    bl      GXSetLineWidth
    li      r3, 0x6
    li      r4, 0x0
    bl      GXSetPointSize
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x6
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    lfs     f1, 0xb34(r2)
    addi    r3, sp, 0x2c
    lfs     f0, 0xb38(r2)
    li      r4, 0x0
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x34(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x2c
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x2c
    li      r4, 0x3c
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    addi    r3, sp, 0x2c
    li      r4, 0x7d
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    lhz     r4, 0x4(r31)
    lis     r3, 0x4330
    lhz     r0, 0x8(r31)
    stw     r4, 0x6c(sp)
    lfs     f1, 0xb38(r2)
    stw     r0, 0x64(sp)
    lfd     f4, 0xb40(r2)
    fmr     f2, f1
    stw     r3, 0x68(sp)
    fmr     f5, f1
    lfs     f6, 0xb34(r2)
    stw     r3, 0x60(sp)
    lfd     f3, 0x68(sp)
    lfd     f0, 0x60(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      GXSetViewport
    li      r3, 0x0
    bl      GXSetCoPlanar
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetClipMode
    lhz     r5, 0x4(r31)
    li      r3, 0x0
    lhz     r6, 0x6(r31)
    li      r4, 0x0
    bl      GXSetScissor
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetScissorBoxOffset
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x24(sp)
    addi    r4, sp, 0x18
    li      r3, 0x4
    stw     r0, 0x18(sp)
    bl      GXSetChanAmbColor
    lwz     r0, 0x20(sp)
    addi    r4, sp, 0x14
    li      r3, 0x4
    stw     r0, 0x14(sp)
    bl      GXSetChanMatColor
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x24(sp)
    addi    r4, sp, 0x10
    li      r3, 0x5
    stw     r0, 0x10(sp)
    bl      GXSetChanAmbColor
    lwz     r0, 0x20(sp)
    addi    r4, sp, 0xc
    li      r3, 0x5
    stw     r0, 0xc(sp)
    bl      GXSetChanMatColor
    bl      GXInvalidateTexAll
    lwz     r4, R13Off_m0x72f8(r13)
    li      r30, 0x0
    lis     r3, __GXDefaultTexRegionCallback@ha
    stw     r30, 0x2c8(r4)
    addi    r3, r3, __GXDefaultTexRegionCallback@l
    lwz     r4, R13Off_m0x72f8(r13)
    stw     r30, 0x2cc(r4)
    bl      GXSetTexRegionCallback
    lis     r3, __GXDefaultTlutRegionCallback@ha
    addi    r3, r3, __GXDefaultTlutRegionCallback@l
    bl      GXSetTlutRegionCallback
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0x2
    li      r5, 0x2
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x3
    li      r4, 0x3
    li      r5, 0x3
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x4
    li      r4, 0x4
    li      r5, 0x4
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x5
    li      r4, 0x5
    li      r5, 0x5
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x6
    li      r4, 0x6
    li      r5, 0x6
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x7
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x8
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x9
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xa
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xb
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xc
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xd
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xe
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xf
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x3
    bl      GXSetTevOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x11
    li      r5, 0x0
    bl      GXSetZTexture
    b       branch_0x8035b3dc

branch_0x8035b3dc:
    b       branch_0x8035b3e0

branch_0x8035b3e0:
    b       branch_0x8035b3e4

branch_0x8035b3e4:
    mr      r3, r30
    li      r4, 0x6
    bl      GXSetTevKColorSel
    mr      r3, r30
    li      r4, 0x0
    bl      GXSetTevKAlphaSel
    mr      r3, r30
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    addi    r30, r30, 0x1
    cmplwi  r30, 0x10
    blt+    branch_0x8035b3e4
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r3, 0x2
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r3, 0x3
    li      r4, 0x2
    li      r5, 0x2
    li      r6, 0x2
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r30, 0x0
    b       branch_0x8035b480

branch_0x8035b480:
    b       branch_0x8035b484

branch_0x8035b484:
    b       branch_0x8035b488

branch_0x8035b488:
    mr      r3, r30
    bl      GXSetTevDirect
    addi    r30, r30, 0x1
    cmplwi  r30, 0x10
    blt+    branch_0x8035b488
    li      r3, 0x0
    bl      GXSetNumIndStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    lfs     f2, 0xb34(r2)
    addi    r4, sp, 0x8
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    fmr     f4, f2
    stw     r0, 0x8(sp)
    lfs     f1, 0xb38(r2)
    lfs     f3, 0xb3c(r2)
    bl      GXSetFog
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetFogRangeAdj
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x0
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    bl      GXSetDither
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetPixelFmt
    li      r3, 0x1
    li      r4, 0x1
    bl      GXSetFieldMask
    lhz     r0, 0x8(r31)
    lhz     r3, 0x10(r31)
    slwi    r0, r0, 1
    cmpw    r3, r0
    bne-    branch_0x8035b59c
    li      r4, 0x1
    b       branch_0x8035b5a0

branch_0x8035b59c:
    li      r4, 0x0
branch_0x8035b5a0:
    lbz     r3, 0x18(r31)
    bl      GXSetFieldMode
    lhz     r5, 0x4(r31)
    li      r3, 0x0
    lhz     r6, 0x6(r31)
    li      r4, 0x0
    bl      GXSetDispCopySrc
    lhz     r3, 0x4(r31)
    lhz     r4, 0x6(r31)
    bl      GXSetDispCopyDst
    lhz     r4, 0x8(r31)
    lis     r3, 0x4330
    lhz     r0, 0x6(r31)
    stw     r4, 0x64(sp)
    lfd     f2, 0xb40(r2)
    stw     r0, 0x6c(sp)
    stw     r3, 0x60(sp)
    stw     r3, 0x68(sp)
    lfd     f1, 0x60(sp)
    lfd     f0, 0x68(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f1, f1, f0
    bl      GXSetDispCopyYScale
    li      r3, 0x3
    bl      GXSetCopyClamp
    lbz     r3, 0x19(r31)
    addi    r4, r31, 0x1a
    addi    r6, r31, 0x32
    li      r5, 0x1
    bl      GXSetCopyFilter
    li      r3, 0x0
    bl      GXSetDispCopyGamma
    li      r3, 0x0
    bl      GXSetDispCopyFrame2Field
    bl      GXClearBoundingBox
    li      r3, 0x1
    bl      GXPokeColorUpdate
    li      r3, 0x1
    bl      GXPokeAlphaUpdate
    li      r3, 0x0
    bl      GXPokeDither
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0xf
    bl      GXPokeBlendMode
    li      r3, 0x7
    li      r4, 0x0
    bl      GXPokeAlphaMode
    li      r3, 0x1
    bl      GXPokeAlphaRead
    li      r3, 0x0
    li      r4, 0x0
    bl      GXPokeDstAlpha
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x1
    bl      GXPokeZMode
    li      r3, 0x23
    li      r4, 0x16
    bl      GXSetGPMetric
    bl      GXClearGPMetric
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr

