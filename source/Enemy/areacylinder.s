
.globl __dt__20TAreaCylinderManagerFv
__dt__20TAreaCylinderManagerFv: # 0x80107828
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r27, 0x54(sp)
    mr.     r31, r3
    addi    r27, r4, 0x0
    beq-    branch_0x80107904
    lis     r3, 0x803c
    subi    r3, r3, 0x38a0
    addic.  r0, r31, 0x10
    stw     r3, 0x0(r31)
    beq-    branch_0x801078d4
    addi    r3, sp, 0x4c
    addi    r4, r31, 0x18
    bl      __ct__Q37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorFPQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x44
    stw     r0, 0x48(sp)
    lwz     r4, 0x18(r31)
    bl      __ct__Q37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorFPQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__6TNode_
    lwz     r0, 0x44(sp)
    addi    r30, sp, 0x30
    addi    r29, sp, 0x28
    stw     r0, 0x40(sp)
    addi    r28, sp, 0x24
    b       branch_0x801078b0

branch_0x80107890:
    lwz     r0, 0x40(sp)
    addi    r5, r30, 0x0
    addi    r3, sp, 0x2c
    stw     r0, 0x30(sp)
    addi    r4, r31, 0x10
    bl      erase__Q27JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__FQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iterator
    lwz     r0, 0x2c(sp)
    stw     r0, 0x40(sp)
branch_0x801078b0:
    lwz     r5, 0x48(sp)
    mr      r3, r28
    lwz     r0, 0x40(sp)
    mr      r4, r29
    stw     r5, 0x28(sp)
    stw     r0, 0x24(sp)
    bl      __eq__7JGadgetFQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x80107890
branch_0x801078d4:
    cmplwi  r31, 0x0
    beq-    branch_0x801078f4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801078f4:
    extsh.  r0, r27
    ble-    branch_0x80107904
    mr      r3, r31
    bl      __dl__FPv
branch_0x80107904:
    mr      r3, r31
    lmw     r27, 0x54(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __eq__7JGadgetFQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iterator
__eq__7JGadgetFQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iterator: # 0x8010791c
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl erase__Q27JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__FQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iterator
erase__Q27JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__FQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iterator: # 0x80107934
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__Q37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorFPQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__6TNode_
__ct__Q37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorFPQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__6TNode_: # 0x801079a0
    stw     r4, 0x0(r3)
    blr


.globl perform__20TAreaCylinderManagerFUlPQ26JDrama9TGraphics
perform__20TAreaCylinderManagerFUlPQ26JDrama9TGraphics: # 0x801079a8
    blr


.globl getCylinderContains__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_
getCylinderContains__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_: # 0x801079ac
    stwu    sp, -0x58(sp)
    addi    r0, r3, 0x18
    lwz     r5, 0x18(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4c(sp)
    stw     r5, 0x50(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x38(sp)
    b       branch_0x80107a54

branch_0x801079d0:
    lwz     r3, 0x50(sp)
    lfs     f2, 0x4(r4)
    lwz     r3, 0x8(r3)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f2, f1
    blt-    branch_0x801079f8
    lfs     f0, 0x20(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x80107a00
branch_0x801079f8:
    li      r5, 0x0
    b       branch_0x80107a3c

branch_0x80107a00:
    lfs     f3, 0x0(r4)
    lfs     f2, 0x10(r3)
    lfs     f1, 0x8(r4)
    fsubs   f2, f3, f2
    lfs     f0, 0x18(r3)
    lfs     f3, 0x1c(r3)
    fsubs   f1, f1, f0
    fmuls   f2, f2, f2
    fmuls   f0, f3, f3
    fmuls   f1, f1, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    mfcr    r5
    extrwi  r5, r5, 1, 2
branch_0x80107a3c:
    cmpwi   r5, 0x0
    beq-    branch_0x80107a48
    b       branch_0x80107a6c

branch_0x80107a48:
    lwz     r3, 0x50(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x50(sp)
branch_0x80107a54:
    lwz     r3, 0x50(sp)
    stw     r3, 0x34(sp)
    lwz     r3, 0x34(sp)
    cmplw   r3, r0
    bne+    branch_0x801079d0
    li      r3, 0x0
branch_0x80107a6c:
    addi    sp, sp, 0x58
    blr


.globl contain__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_
contain__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_: # 0x80107a74
    stwu    sp, -0x50(sp)
    addi    r0, r3, 0x18
    lwz     r5, 0x18(r3)
    stw     r0, 0x44(sp)
    lwz     r0, 0x44(sp)
    stw     r5, 0x48(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x30(sp)
    b       branch_0x80107b20

branch_0x80107a98:
    lwz     r3, 0x48(sp)
    lfs     f2, 0x4(r4)
    lwz     r3, 0x8(r3)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f2, f1
    blt-    branch_0x80107ac0
    lfs     f0, 0x20(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x80107ac8
branch_0x80107ac0:
    li      r3, 0x0
    b       branch_0x80107b04

branch_0x80107ac8:
    lfs     f3, 0x0(r4)
    lfs     f2, 0x10(r3)
    lfs     f1, 0x8(r4)
    fsubs   f2, f3, f2
    lfs     f0, 0x18(r3)
    lfs     f3, 0x1c(r3)
    fsubs   f1, f1, f0
    fmuls   f2, f2, f2
    fmuls   f0, f3, f3
    fmuls   f1, f1, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    mfcr    r3
    extrwi  r3, r3, 1, 2
branch_0x80107b04:
    cmpwi   r3, 0x0
    beq-    branch_0x80107b14
    li      r3, 0x1
    b       branch_0x80107b38

branch_0x80107b14:
    lwz     r3, 0x48(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x48(sp)
branch_0x80107b20:
    lwz     r3, 0x48(sp)
    stw     r3, 0x2c(sp)
    lwz     r3, 0x2c(sp)
    cmplw   r3, r0
    bne+    branch_0x80107a98
    li      r3, 0x0
branch_0x80107b38:
    addi    sp, sp, 0x50
    blr


.globl insert__Q27JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__FQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorRCP13TAreaCylinder
insert__Q27JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__FQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorRCP13TAreaCylinder: # 0x80107b40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x80107b88
    li      r3, 0x0
    b       branch_0x80107ba4

branch_0x80107b88:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x80107ba4
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x80107ba4:
    cmplwi  r3, 0x0
    bne-    branch_0x80107bbc
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80107bd8

branch_0x80107bbc:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80107bd8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl perform__13TAreaCylinderFUlPQ26JDrama9TGraphics
perform__13TAreaCylinderFUlPQ26JDrama9TGraphics: # 0x80107bf8
    blr


.globl load__13TAreaCylinderFR20JSUMemoryInputStream
load__13TAreaCylinderFR20JSUMemoryInputStream: # 0x80107bfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x94(sp)
    stw     r28, 0x90(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
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
    addi    r4, sp, 0x78
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x7c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r29, sp, 0x80
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
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
    addi    r4, r29, 0x0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x1c(r30)
    mr      r3, r31
    lfs     f1, -0x5570(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x20(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(r30)
    bl      readString__14JSUInputStreamFv
    addi    r3, r31, 0x0
    addi    r4, sp, 0x6c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r29, 0x6c(sp)
    li      r28, 0x0
    b       branch_0x80107d14

branch_0x80107cf8:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x68
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    addi    r28, r28, 0x1
branch_0x80107d14:
    cmpw    r28, r29
    blt+    branch_0x80107cf8
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    lwz     r29, -0x70b0(r13)
    mr      r28, r3
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r4, r3, 0x0
    bne-    branch_0x80107dd4
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80107dd0
    lis     r3, 0x803e
    stw     r29, 0x64(sp)
    addi    r0, r3, 0x20f0
    stw     r0, 0x0(r29)
    mr      r3, r28
    stw     r28, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r29)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r29)
    li      r5, 0x0
    lis     r3, 0x803c
    sth     r5, 0xc(r29)
    subi    r0, r3, 0x38a0
    lwz     r6, 0x64(sp)
    stw     r0, 0x0(r6)
    addi    r0, r6, 0x18
    mr      r4, r6
    lbz     r3, 0x54(sp)
    stb     r3, 0x10(r6)
    stw     r5, 0x14(r6)
    stw     r0, 0x18(r6)
    stw     r0, 0x1c(r6)
    lwz     r3, -0x70b0(r13)
    bl      registerAreaCylinderManager__10TConductorFP20TAreaCylinderManager
branch_0x80107dd0:
    mr      r4, r29
branch_0x80107dd4:
    addi    r0, r4, 0x18
    stw     r30, 0x60(sp)
    addi    r5, sp, 0x4c
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x48
    addi    r4, r4, 0x10
    lwz     r0, 0x50(sp)
    addi    r6, sp, 0x60
    stw     r0, 0x4c(sp)
    bl      insert__Q27JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__FQ37JGadget64TList_P13TAreaCylinder_Q27JGadget28TAllocator_P13TAreaCylinder__8iteratorRCP13TAreaCylinder
    addi    r3, r31, 0x0
    addi    r4, sp, 0x5c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x5c(sp)
    lis     r0, 0x4330
    lfd     f2, -0x5568(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x556c(rtoc)
    stw     r3, 0x8c(sp)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x24(r30)
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl __ct__13TAreaCylinderFPCc
__ct__13TAreaCylinderFPCc: # 0x80107e58
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lis     r3, 0x803c
    sth     r0, 0xc(r31)
    subi    r0, r3, 0x387c
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    lfs     f0, -0x5560(rtoc)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x14(r31)
    stfs    f0, 0x10(r31)
    stfs    f0, 0x1c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__13TAreaCylinderFv
__dt__13TAreaCylinderFv: # 0x80107ed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80107f2c
    lis     r3, 0x803c
    subi    r0, r3, 0x387c
    stw     r0, 0x0(r30)
    beq-    branch_0x80107f1c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80107f1c:
    extsh.  r0, r31
    ble-    branch_0x80107f2c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80107f2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

